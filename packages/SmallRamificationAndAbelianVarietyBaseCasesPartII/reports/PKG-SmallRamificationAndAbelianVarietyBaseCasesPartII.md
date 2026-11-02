# Package report: SmallRamificationAndAbelianVarietyBaseCasesPartII

Created `packages/SmallRamificationAndAbelianVarietyBaseCasesPartII/README.md`, `Suggested.lean`, `metadata.toml` and `sources.toml`, and normalized only the top-level gaps list in `design/plan.json`. All 24 design items, 28 API facts, 15 original definition Checks and the worked examples are represented. The K3 invariant and projective-space formula are imports in §§4.1 and 4.3, not duplicate targets. Additional negative controls are in the README.

## Inputs and scope

The separate `design/review.json` and the reports directory contained no review artifact, and `sources.toml` did not exist at intake. The accepted review embedded in `design/plan.json` was read and its non-blocking corrections were preserved: the elliptic local-model test, the p=3 divided-Frobenius witness, Galois-fixed matrix lifts, and the higher-torsion induction through printed p. 8. No mathematical redesign was performed. A scratch worklist and a per-node skeleton were saved before prose expansion.

The content checkout was main `86e155cac97365a2b24380c270383cd1d01628be`. Its actual manifest and both dependency checkouts agree on Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, rather than the design’s older baseline. The main-branch LocalGaloisGroups, LocalFieldsRamification and PerfectoidSpaces roadmaps supplied the prose shape; metadata matches LocalFieldsRamification.

## Headline theorems listed before writing Suggested.lean

| Headline | Acceptance-test status |
| --- | --- |
| Higher-weight killed-p torsion ramification and strict normalized different, §§1.7–1.8 | Not statable at the pins: Fontaine–Laffaille category and its crystalline torsion realization are missing. |
| Ordered finite seven-primary crystalline filtration, §2.7 | Not statable at the pins: the local torsion crystalline essential-image carrier is missing. |
| Ordered rational seven-adic crystalline filtration in weights [0,3], §2.8 | Not statable at the pins: the crystalline predicate and its Hodge–Tate weight interval are missing. |
| Low odd étale cohomology vanishing and full scalar Tate action in degree two, §3.1 | Not statable at the pins: geometric rational étale cohomology with its Galois action is missing. |
| Off-diagonal Hodge vanishing through total degree three, §3.2 | Stated: `TauCetiRoadmap.SmallRamificationAndAbelianVarietyBaseCasesPartII.lowDegreeHodgeVanishing`. |
| Geometric K3 bad-Witt-prime obstruction, §4.2 | Not statable at the pins under the ownership contract: the shared K3 predicate is a supplier declaration, not a pinned declaration; it is not duplicated locally. |

The concrete definitions `hasWittGoodReductionAt` and `hasEverywhereWittGoodReduction` are precisely those needed by the stated headline. They use native scheme pullbacks, Witt vectors, their fraction field, and an actual isomorphism commuting with the generic-fibre projections. There are no data placeholders, extra API theorems, examples or option overrides in the Lean file. In particular the formerly proposed character-step/API prototype is not used as a substitute for a missing crystalline headline.

## Corrections and unsupported claims

- Replaced obsolete supplier labels with sections actually present on main or the supplied open heads. The K3 supplier now uses a proper intrinsic predicate and proves projectivity, so the old description of projectivity as a defining field was corrected without narrowing the endpoint.
- Corrected the generic pure-character-line Check to a field: distinct characters over ℤ/25 need not have invertible differences. Also required four distinct characters for the reversed-order nonsplit-extension Check, and supplied an explicit nonabelian order-42 representation.
- Made the generic all-m ramification refinement explicit. R07.6.3 supplies only the 1/e-loss inequality; letting m decrease to c does not remove that loss. The strict theorem retains the refinement as a supplier gap.
- The first Lean elaboration lacked an automatic `Algebra ℚ K` instance for the Witt fraction field. The model predicate now quantifies the unique unital rational ring map as part of its real witnesses. This changes no mathematical good-reduction condition and requires no admitted data.
- The older claim that no scheme Hodge carrier was available is false at the actual pins. Native differentials, exterior powers and Zariski cohomology suffice to state the full Hodge-vanishing headline. The definition has no finite-dimensionality loophole: its conclusion is `Subsingleton`.
- Full crystalline, torsion-period and geometric étale statements remain in the README; the report and Lean docstring identify their missing carriers. No strengthened degree-four Hodge vanishing, semisimplicity-from-purity claim, Witt-model descent or local-to-global model converse is asserted.
- Seven supplier gaps are synchronized between the README and the permitted plan field: witt-proper-smooth-comparison, fl-acris-truncation, fl-local-weight-ext, pm-remove-inverse-e, finite-torsion-kernel-dictionary, root-discriminant-seven, completed-unramified-inertia. The source evaluation needed for rd<7 is a supplier theorem, not a discharged numerical certificate here.

No notions were moved down from later roadmaps. Every direct supplier is on main or earlier in the supplied order; the Enriques roadmap appears solely as a downstream consumer.

## Duplication and ownership sweep

Used the supplied `roadmaps grep` and `roadmaps show` index over main and 362 open pull requests at their heads, plus object searches of board packages and both pinned source trees. Searched by Witt models, Fontaine’s paper, low Hodge vanishing, truncated valuation rings, filtered period Hom, cyclotomic filtrations, crystalline weight intervals, root-discriminant thresholds, K3 canonical forms and projective-space differential cohomology. Open-head coverage used the supplied index; no independent pull-request discovery was performed. Existing-roadmap revisions were not consumed over main.

| Material excluded as a duplicate or retained only as an import | Exact owner consumed |
| --- | --- |
| A second general definition of scheme differential forms | Native `AlgebraicGeometry.Scheme.relativeDifferentials`, `SheafOfModules.exteriorPower`; K3SurfacesAndSymplecticBoundedness §1.1. |
| A second K3 predicate/projectivity bridge and K3 h²⁰ theorem | K3SurfacesAndSymplecticBoundedness §§1.1–1.4, 2.4; design item k3-hodge-number becomes the imported application §4.1. |
| New projective-space Hodge-cohomology construction/request to SchemeAndStackFoundations | CrystallineCohomology §CR.3.5 explicitly contains the formula; the design item remains as worked example §4.3. |
| General Fontaine–Laffaille categories, functors and lattice theory | FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.3.4–R07.3.17; only its exact period/local-Ext extensions are requested. |
| A new generic Pₘ definition or ramification criterion | FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.6.1a–R07.6.3; only the missing inverse-e refinement is a gap. |
| A new tame-conjugation theorem and different formulas | Main LocalFieldsRamification Layer 3, quotient embeddings and action formula, Hilbert different and towers; no gap for these already explicit statements. |
| A separate p-group fixed-vector theorem | Pinned `Representation.invariants_ne_bot_of_isPGroup` in `TauCeti/RepresentationTheory/Unipotent/PowerOrder.lean:158`; the normal-subgroup stability argument is the local proof step here. |
| A new stable-lattice construction | EtaleCohomologyFoundations §F.4.0, consumed through ArithmeticGaloisRepresentations §1.6. |
| General representation invariants, inverse images, dimensions, root discriminants and abstract Tate pieces | Pinned declarations and files recorded below and in Exact supplier contracts. |
| Geometric purity, characteristic-polynomial multiplicativity, spreading, and coherent base change | DeligneWeightsAndPurity §§0.8–0.9, 7.15; SchemeAndStackFoundations §§0.9, 0.11, 2.6. |

The remaining specialized constructions have no matching owner in these searches: the strict valuation truncation and its solution argument are the new higher-weight ramification proof, while the ordered seven-adic devissage and geometric Hodge endpoint extend the base roadmap in exactly its accepted Part II direction. No Lean declaration takes another roadmap’s fully qualified name.

## Pinned declaration audit

Paths in this table are relative to the dependency’s repository. The files were read at the actual manifest revisions above.

| Declaration | File and line; content and boundary |
| --- | --- |
| `Representation` | Mathlib `Mathlib/RepresentationTheory/Basic.lean:48`: a monoid homomorphism into linear endomorphisms, not a continuity bundle. |
| `Representation.invariants`, `Representation.mem_invariants` | Mathlib `Mathlib/RepresentationTheory/Invariants.lean:73`, line 80: all-group-element fixed submodule and its membership equivalence. |
| `Submodule.comap` | Mathlib `Mathlib/Algebra/Module/Submodule/Map.lean:171`: semilinear inverse image, not an invariant quotient assertion. |
| `Module.finrank` | Mathlib `Mathlib/LinearAlgebra/Dimension/Finrank.lean:61`: natural-valued rank; requires finite-dimensionality to express a Hodge number. |
| `NumberField.rootDiscr`, `NumberField.rootDiscr_rat` | Mathlib `Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean:77`, line 83: normalized absolute discriminant, ℚ value one. |
| `WittVector` and DVR/completeness | Mathlib `Mathlib/RingTheory/WittVector/Defs.lean:52`, `DiscreteValuationRing.lean:148`, `Complete.lean:116`; perfect characteristic-p field hypotheses retained. |
| `WittVector.p_nonzero`, `FractionRing` | Mathlib `Mathlib/RingTheory/WittVector/Identities.lean:88`, `Mathlib/RingTheory/Localization/FractionRing.lean:729`; native fraction field, no invented period field. |
| `AlgebraicGeometry.IsProper` | Mathlib `Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:41`: `class IsProper : Prop extends IsSeparated f, UniversallyClosed f, LocallyOfFiniteType f`; quasi-compactness from `UniversallyClosed.lean:163`. It contains neither projectivity nor geometric connectedness. |
| `AlgebraicGeometry.Smooth` | Mathlib `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:59`: `class Smooth (f : X ⟶ Y) : Prop` uses smooth affine-local ring maps; no projectivity hypothesis. |
| `AlgebraicGeometry.Scheme.relativeDifferentials` | Tau Ceti `TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean:85`: sheafified relative differentials for the specified `X.Over (Spec R)` structure. |
| `SheafOfModules.exteriorPower` | Tau Ceti `TauCeti/Algebra/Category/ModuleCat/Sheaf/ExteriorPower.lean:49`: sheaf exterior-power functor, not exterior powers of global sections. |
| `TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology` | Tau Ceti `TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:61`: native Zariski cohomology of the underlying abelian sheaf; no finiteness built in. |
| `AlgebraicGeometry.Scheme.Modules.cohomologyBaseModule` | Tau Ceti `TauCeti/AlgebraicGeometry/Cohomology/Module/Base.lean:45`: restricts scalar action along the specified base morphism. |
| `Representation.invariants_ne_bot_of_isPGroup` | Tau Ceti `TauCeti/RepresentationTheory/Unipotent/PowerOrder.lean:158`: finite-dimensionality and exponential characteristic p are in scope. |
| `TauCeti.Hodge.tate_piece` | Tau Ceti `TauCeti/Geometry/Hodge/Tate/Basic.lean:111`: abstract Tate index m has nonzero piece at −m; no scheme comparison follows from it. |

Object searches for crystalline representations, Fontaine–Laffaille objects, geometric rational étale cohomology with action, and the shared K3 predicate found no corresponding pinned declaration. Hits for crystalline background in divided-power documentation and abstract Hodge structures were read as background, not mistaken for those carriers.

## Sources and locators

All three cited works were fetched through the sources service into its cache and are recorded under one key each in `sources.toml`; no source text was copied into the package. Fontaine93 was read in full (extraction lines 1–446, with the theorem/proof material at lines 93–414). The printed formulas on author pp. 3, 8, 9 and 12 were additionally inspected in rendered pages because OCR misses some displays: the strict theorem, strict cutoff, negative denominator, Hensel precision and strict final argument agree with the stated targets. Schroeer23 §5, especially lines 658–700, supplies the application locator; LMFDB32a3 lines 158–164, 262–277 and 494–517 supply the numerical curve data. The database is a public institutional mathematics service. No source is missing, waived or uncertified; no reference request remains. No source erratum was established.

The independent Witt models are exactly Fontaine’s Remark (a), not an inference from his speculation about descending good reduction. The geometric K3 invariant is imported from its roadmap owner; Schröer is cited for the application, not as a general K3 construction. No other work is independently cited through an unread indirect reference. No suspicious instruction in fetched material was executed.

## Adversarial mathematics pass

Each row records actual values or truth values. Finite enumeration also confirmed extension-step cardinalities (7,7,7,49) in the forward order and (1,1,1,7) in the reversed order, and the five-element kernel {0,5,10,15,20} over ℤ/25. These diagnostics are not substituted for the roadmap’s intended formal proofs or the supplier’s analytic inequalities. Every numbered item, every definition API fact, the defining conventions, and the mathematical worked-example identities have rows.

| Statement | Instances tried | Values on the two sides or boundary | Result and change |
| --- | --- | --- | --- |
| §0.1 local and everywhere Witt models | ℙ⁰,ℙ¹; y²=x³−x at 3 and 2; identity isomorphism | Models exist for ℙⁿ at every p; Δ=64≡1 mod 3, v₂(Δ_min)=6 and j=1728; local truth values (true,false), everywhere false; identity preserves true | Sound; specify an isomorphism over the fraction field and retain p=2 |
| §0.2 geometric realization and spreading | Point, ℙ¹, two points; q=2 | H⁰ dimensions 1,1,2; positive groups of points zero; H²(ℙ¹) eigenvalue 2, dual 1/2; HT weights −1,+1; comparison fixed piece i=1 has dimension 1 | Sound; independent spreading avoids descent of a Witt model; comparison/inertia domain gaps explicit |
| §1.1 valuation truncation, filtration and Frobenius | p=3,r=1,E=ℚ₃ and E=ℚ₃(π), π²=−3; K̄ | A(ℚ₃)=𝔽₃, Fil¹=0; v(π)=1/2 survives, v(3)=1 dies; π³/(−3)=π versus π³/3=−π; values 1/n (n≥3) give infinitely many independent surviving classes | Sound; ambient category cannot require finite length; strict cutoff retained |
| §1.2 solution spaces and polynomial solutions | d=0; rank-one weights 0 and 1 at p=3 | Empty tuple count 1; x³=x has 3 roots in ℚ₃; x³=−3x has 1 root over ℚ₃ and 3 over ℚ₃(π); 1+1=2 is not a root of x³=x since 8≠2 | Sound; exact solutions carry transported, not coordinatewise, addition |
| §1.3 unique lifting | p=3,r=1,e=2; zero object; π and −π | Required n>1, first integer 2; exact-to-truncated cardinalities 1→1 or 3→3; v(π−(−π))=1/2, so strict quotient distinguishes the two roots | Sound; strict Hensel precision retained; finite descent covers noncomplete algebraic E |
| §1.4 period-to-truncation comparison | Zero, weight-zero unit, weight-one unit at p=3 | Both sides have dimensions 0,1,1 and cardinalities 1,3,3 over K̄; π class has φ₁(π)=π; zero comparison would have image count 1 instead of 3 | Sound conditional on the exact period-presentation supplier gap; contravariant direction retained |
| §1.5 solution count iff splitting-field containment | d=0; rank-one weight one at p=3 | L=K gives 1=3⁰ for every E; ℚ₃ has 1<3 solutions, ℚ₃(π) and every field containing it have 3=3¹; containment true iff equality true | Sound; Galois-fixed coefficient lifts in W(k) justify descent before taking invariants |
| §1.6 approximate embedding implication | L=K; p=3,r=1,m=2,L=ℚ₃(π),E=ℚ₃ | Identity field embedding exists; cutoff 1+r/(p−1)=3/2<2; no x∈ℤ₃ has x²+3≡0 mod 9 (units give valuation 0, multiples of 3 give valuation 1), so no approximate map exists in the negative example | Sound; an embedding is implied, not a lift of the chosen approximate map |
| §1.7 shifted-upper and strict different bounds | Unramified field; tame ℚ₃(ζ₃); p=7,r=3; p=2 | Different 0; tame shifted u=1, Serre upper 0, normalized different 1/2; bounds 3/2 and 1/2 at seven; no integer 0<r<1 at two | Sound; explicitly require the all-m refinement, since infimum of u<m+1/e gives only u≤c+1/e |
| §1.8 crystalline lattice subquotients | Zero; ℤ/3(1); ℤ/9(1) | Different 0; ℚ₃(ζ₃) has 1/2<3/2; ℚ₃(ζ₉) has discriminant exponent 9 and degree 6, hence normalized different 9/6=3/2 | Sound; ℤ/9(1) is a negative control for extending the strict killed-p bound |
| §2.1 finite global crystalline category | Zero; ℤ/49; 𝔽₇(i) for i=0,…,4 | Orders 1,49,7; weights 0,1,2,3 admitted, weight 4 excluded; 7·1 in ℤ/49 is nonzero, so this is not only an 𝔽₇-category | Sound; ambient extension membership requires the middle-term local condition |
| §2.2 character steps over general R | Trivial group; zero module/ring; S₃ permutation module; field pure χ²-line | Trivial group: stepᵢ(N)=U; zero: every term 0; S₃ on ℚ³: invariants dimension 1 and top dimension 3; pure χ² with distinct powers: dimensions (U₄,…,U₀)=(0,0,1,1,1) | Sound; field hypothesis added to the pure-line Check, not to the general definition |
| §2.2 nonsplit-extension order witness | G=C₇⋊C₆ with twt⁻¹=w⁶; ρ(t)=diag(6,1), ρ(w)=[[1,1],[0,1]]; χ(t)=3 | Conjugation off-diagonal becomes 6; wild fixes exactly the subline, tame multiplies it by 6, so invariants=0; forward steps dimensions (1,1,1,2), reversed (0,0,0,1) | Corrected generic Check to four distinct characters; no global existence assertion for the exceptional extension |
| §2.2 zero-divisor negative control | R=ℤ/25, C₅ generator χ=ρ=6 | χ⁰,…,χ³=(1,6,11,16), all distinct; ρ−χ³=−10 and its kernel is {0,5,10,15,20}; step₃(0) has 5 elements instead of the predicted 1 | Original unrestricted pure-line Check false; repaired to fields and retained this negative control |
| §2.3 trivial crystalline endpoints | 0→ℤ/7→ℤ/49→ℤ/7→0; zero middle object | Action on each term is identity; order of a generator in the middle is 49, while every element of the split product has order at most 7; kernel field ℚ has degree 1 and rd 1 | Sound; trivial action does not imply splitting of the underlying groups |
| §2.4 simple-object classification | Degree 6n′≤287; wild n′=7n″; tame generator 3 | 42·6=252≤287, 42·7=294>287; Sylow count divides n″≤6 and is 1 mod 7, hence 1; 6n″≤10 forces n″=1; character scalars 1,3,2,6 versus excluded next scalar 4 | Sound conditional on root-discriminant-seven gap; normal-subgroup invariants use the pinned p-group theorem |
| §2.5 oriented extension splitting | a=1,2,3; unramified relative extension | Exponents 41+6a=47,53,59; root discriminants approximately 8.82480,11.65288,15.38727; unramified exponent 35 gives 5.06114<5.72; degree 42 contradicts 8 or the threshold 36 in precisely the stated cases | Sound; exception quotient 1/sub χ³, not its reversal; approximations here are diagnostics, not analytic-bound proofs |
| §2.6 no-trivial-quotient decomposition | ℤ/49(1), 𝔽₇(1)⊕𝔽₇(2), χ³-by-trivial extension | First has 49 elements in g₁ and 1 in each other eigensubmodule; second has 7·7=49 elements in the direct sum and g₀=0; exceptional extension has a trivial quotient of order 7 | Sound; arbitrary 7-power induction and removal of global unramified twist retained |
| §2.7 finite filtration exhaustiveness | Zero; ℤ/49(i); nonsplit distinct χ³-by-trivial extension | Zero terms all 0; pure i-th term has all 49 elements exactly for k≤i; extension dimensions (0,1,1,1,2) from index 4 to 0 | Sound; records the ordered filtration rather than semisimplification |
| §2.8 rational filtration | Zero; ℚ₇(1)⊕ℚ₇(2); inverse-limit units | Dimensions (0,0,1,2,2); all reductions of 1 mod 7ⁿ equal 1 mod 7ⁿ⁻¹; choices 0 mod 7 and 1 mod 49 are incompatible since 1 mod 7≠0 | Sound; compactness is applied to compatible finite solution systems |
| §3.1 low étale cohomology and scalar degree two | q=2,m=1,2,3; pure Jordan block | Candidate grades have absolute values 1,1/2,1/4,1/8; dual weights require 2^(−1/2),1/2,2^(−3/2); only m=2,i=1 matches. A Jordan block with eigenvalue 2 has characteristic polynomial (T−2)² but nonzero off-diagonal entry 1 | Sound; the one surviving grade, not purity alone, yields full scalar action |
| §3.2 off-diagonal Hodge vanishing | All i+j≤3; empty scheme; ℙ¹; ℙ² | Eight off-diagonal pairs give 0; total degree 0 has no such pair; empty groups are singleton; h¹¹(ℙ¹)=1 and h²²(ℙ²)=1, so diagonal and degree-four checks do not contradict the theorem | Stated in Lean with every smooth/proper, model, degree and off-diagonal binder retained |
| §3.3 integral-model corollaries | Spec ℤ; ℙ¹_ℤ; elliptic curve at 3 versus 2 | h⁰⁰=1; h¹¹=1 with all low off-diagonal values 0; Δ mod 3=1 but v₂(Δ_min)=6 | Sound; local witnesses imply the endpoint without a globalization converse |
| §4.1 imported K3 Hodge invariant | Geometric trivial canonical line; rescaling by 2; abelian surface | K3 H⁰(Ω²) has dimension 1 before and after field extension; rescaling leaves dimension 1; abelian surface has (h²⁰,h¹(O))=(1,2), K3 has (1,0) | Supplier calculation imported from §§1.4,2.4; no duplicate theorem |
| §4.2 K3 obstruction | Bidegree (2,0); empty scheme; smooth quartic | 2≠0 and 2+0=2≤3; vanishing would give 0 versus K3 value 1; empty has 0 and fails geometric integrality; quartic K3 has 1 | Sound; no good-prime exclusion or requirement p≠2 |
| §4.3 imported projective-space computation | n=0,1,2; i>n | Diagonal dimensions (1), (1,1), (1,1,1); all off-diagonal entries 0; for i>n every exterior form sheaf and every cohomology group is 0 | Supplier formula imported from CrystallineCohomology CR.3.5; no second construction |
| §0.1 existential characterization | ℙ⁰ and bad prime two of the elliptic example | true↔true for ℙ⁰; false↔false for the elliptic curve at two | Sound; retained as prose API, not a Lean acceptance declaration |
| §0.1 ℤₚ-model constructor | Elliptic curve at three | 64 mod 3=1; smooth proper model true, Witt property true | Sound; retained as prose API, not a Lean acceptance declaration |
| §0.1 isomorphism transport | Identity on ℙ¹ | Generic-fibre map id composed with id is id; property true on each side | Sound; retained as prose API, not a Lean acceptance declaration |
| §0.1 integral-model specialization | ℙ¹_ℤ at p=2,3 | Base changes are ℙ¹ over the two Witt rings; both model predicates true | Sound; retained as prose API, not a Lean acceptance declaration |
| §0.1 projection to each prime | Everywhere model of ℙ⁰ | Universal property true; its p=2 and p=3 instances each true | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.1 quotient kernel | p=3,r=1,E=ℚ₃(π) | v(π)=1/2 gives nonzero class; v(π²)=1 gives zero class; kernel exactly v>1/2 | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.1 representative equality iff | π versus −π and π versus π+3 | Difference valuations 1/2 and 1; equality truth values false and true on both sides | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.1 filtration images and vanishing above r | Same tame quadratic field | π has 1/2≥1/3, hence lies in Fil¹; Fil²=0, with π still nonzero in A | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.1 divided Frobenius | π²=−3 | π³/(−3)=π, whereas π³/3=−π; 2π is nonzero in A | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.1 embedding functoriality | Identity and ℚ₃→ℚ₃(π) | 1 maps to 1 and 0 to 0 in both composites; source Fil¹=0 maps into target Fil¹ | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.1 factorization modulo p | p=3,π²=−3 | [3]=0, [1]≠0, so the kernel contains (3) but not the unit ideal | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.2 filtered-morphism constructor | Weight-one unit object at p=3 | e↦π satisfies value 1/2≥1/3 and φ₁(π)=π; e↦1 has value 0<1/3 and fails | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.2 basis extensionality | Two maps from the rank-one object | Images π and π agree: maps equal; images π and −π differ by nonzero 2π: maps unequal | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.2 field-embedding functoriality | ℚ₃→ℚ₃(π) | J source count 1, target count 3; source zero maps to zero, identity on target preserves all 3 | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.2 contravariant precomposition | Zero→weight-one object; identity on the latter | Map on solutions has direction 3→1, while identity is 3→3 | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.2 auxiliary-solution equations | x=π and x=1 at p=3 | π³=−3π; 1³=1≠−3, giving membership true and false | Sound; retained as prose API, not a Lean acceptance declaration |
| §1.2 period compatibility | Weight-one rank-one object | Period and truncated solution dimensions both 1, cardinalities both 3; zero map image count 1 fails | Sound; retained as prose API, not a Lean acceptance declaration |
| §2.1 object constructor | Trivial ℤ/49 | Finite cardinality 49, continuous finite trivial action, weight 0 and no ramification: all conditions true | Sound; retained as prose API, not a Lean acceptance declaration |
| §2.1 full Hom category | Trivial ℤ/49→ℤ/7 | Exactly 7 group homomorphisms; maps 1↦1 and 1↦2 are distinct and both equivariant | Sound; retained as prose API, not a Lean acceptance declaration |
| §2.1 subquotient closure | 7ℤ/49⊂ℤ/49 | Subobject order 7, quotient order 7, both weight 0; middle order 49 | Sound; retained as prose API, not a Lean acceptance declaration |
| §2.1 sums and zero | Zero and two trivial order-seven modules | Cardinalities 1 and 7·7=49, all weight 0; adding zero preserves order 7 | Sound; retained as prose API, not a Lean acceptance declaration |
| §2.1 lattice reductions | T=ℤ₇(1), n=1,2 | Quotient cardinalities 7 and 49 and inertia scalar χ modulo 7 and 49 respectively | Sound; retained as prose API, not a Lean acceptance declaration |
| §2.2 congruence membership | Pure χ-line over 𝔽₇, χ(t)=3 | For i=1, 3u−3u=0 for all 7 elements; for i=0, 2u=0 only for u=0 | Sound; retained as prose API, not a Lean acceptance declaration |
| §2.2 monotonicity and map compatibility | N=0⊂top on that line; zero equivariant map | step₀(0) has 1 element, step₀(top) has 7; zero map sends both to the target zero element | Sound; retained as prose API, not a Lean acceptance declaration |
| §2.2 stable containment | S₃ permutation action on ℚ³ | For N=0, step₀ dimension 1 contains dimension 0; N=ℚe₁ fails stability because (12)e₁=e₂ and e₂∉N | Sound; retained as prose API, not a Lean acceptance declaration |
| §2.2 quotient eigenspace and invariants | S₃ permutation module, N=ℚ(1,1,1), χ=1 | Quotient has dimension 2 and invariant dimension 0; step₀(N)=N, so step₀(N)/N also dimension 0 | Sound; retained as prose API, not a Lean acceptance declaration |
| §2.2 four-term recursion | Pure χ²-line with four distinct characters over a field | Terms from index 4 to 0 have dimensions 0,0,1,1,1, so each recursive step gives the stated term | Sound; retained as prose API, not a Lean acceptance declaration |
| §2.2 equivariant-isomorphism transport | Basis change by 2 on a rational character line | Inverse basis change is 1/2; all zero/full terms remain dimensions 0/1 and composites have scalar 1 | Sound; retained as prose API, not a Lean acceptance declaration |
| Conventions: universe and structure map | A small rational scheme; an unspecified base morphism | Same small X over different bases has different relative differential sheaves; the explicit f supplies exactly one ℚ-base structure; no unrestricted Type u quantifier is present | Sound; chosen universe recorded, f retained mechanically |
| Conventions: total valuation and denominator domain | p=2,3; v(0); equal-characteristic 𝔽₃((t)) | p−1=1,2; positive ranges empty and {1}; v(0)=+∞; in equal characteristic v(3)=+∞≠1 | Sound; p>1 and mixed characteristic exclude division by zero and the equal-characteristic wrong model |
| Conventions: ramification normalization | Tame quadratic ℚ₃(ζ₃) | e=2,d=1, normalized d/e=1/2, shifted u=1, lower displacement 1/2; u−ι=1/2 | Sound; unramified d=0 handled separately |
| Conventions and suppliers: Hodge–Tate/Frobenius signs | Point and ℙ¹, q=2; abstract Tate index −1 | Point eigenvalue 1 and weight 0; H² eigenvalue 2, dual 1/2; abstract Hodge index −(−1)=1; χ⁰⊕χ¹ has eigenvalues 1,1/2 and weights 0,−2 | Sound; same witness repeated in the geometric, purity and Tate supplier contracts |
| Conventions: no spurious q=1 comparison | q=1 versus q=2 | At q=1, 1^(−m/2)=1^(−i)=1 for every m,i; at q=2 equality forces m=2i | Sound; actual finite fields have q≥2 |
| Conventions: stable-lattice compactness | ℤ acting on ℚ₇ by n↦7ⁿ versus compact Galois image | 7ℤ₇ is a proper subset of ℤ₇ and 7⁻¹ℤ₇ is larger, so no nonzero lattice is fixed by this unbounded action; compact image supplies the lattice in the cited theorem | Sound; compactness is not dropped from the supplier domain |
| Root-discriminant gap and worked degree example | Totally complex fields; n=12,b=17/4 | Lower-bound substitution exp(0.577+log(8·3.14159)−1.25−68/(12·3.14159²))≈7.22116>7; degree multiples 6≤10 leave 6 only | Sound as a supplier requirement; I₁<5/4 and the exact real inequalities remain an unproved export, not a numerical proof |
| Different tower and tame-conjugation worked example | a=1,2,3 and b≡a mod 6 with 0<b≤a | b=a for a=1,2,3; tame conjugation gives scalars 3,2 for b=1,2 versus inverse scalars 5,4; tower d=7·5+6(a+1)=41+6a; at a=1,2 global exponent 47,53, degree and inertia 42, residue degree 1 | Sound; no residue-degree factor or tame index omitted |
| Unramified-twist worked example | Rank-one χⁱλ with λ unramified | Inertia ratio λ is 1; the finite global ratio has kernel field of degree 1 by Minkowski, hence scalar λ(g)=1 for every g | Sound; local inertia alone does not force λ(Frob)=1 |
| Purity and characteristic-polynomial worked example | Two-dimensional Jordan block with diagonal 1/2 | Characteristic polynomial (T−1/2)², eigenvalue absolute values both 1/2; off-diagonal 1≠0 prevents scalar action | Sound; scalarity is obtained from the unique full grade, not the spectrum |
| Simple-module normal-p-subgroup input | C₇ unipotent matrix on 𝔽₇²; normality and simplicity | (w−1)²=0; fixed subspace dimension 1>0; when this space is stable and the module simple its dimension must equal the full dimension | Sound; the fixed-vector theorem is pinned, normality supplies stability |
| Scheme and cohomology supplier boundaries | Empty scheme, two points, square-zero ℚ[ε]/ε² | Empty has all cohomology 0; two points have H⁰ dimension 2; the square-zero algebra has nilpotent ε≠0 with ε²=0 and is not smooth over ℚ | Sound; smoothness excludes this nonreduced test object; no connectedness hypothesis invented |
| §1.2 Frobenius-matrix column convention | p=3, weights (0,1), matrix rows (1,1),(0,1), θ³+3θ+3=0 | At (1,θ), first sides 1=1 and second sides θ³=−3(1+θ); v(θ)=1/3. Transposition instead forces 1=1+θ, false since θ≠0. | Sound; added a two-coordinate witness distinguishing the transpose. |

## Elaboration and binder audit

Ran the required `lake env lean <Suggested.lean>` command from the content checkout, with the argument resolving to `packages/SmallRamificationAndAbelianVarietyBaseCasesPartII/Suggested.lean`. All three imported Tau Ceti object files were present, so no targeted module build was needed. The final file elaborates with exit code 0 and exactly **1** warning: ``warning: declaration uses `sorry` `` at line 60, column 8. There are **0** errors and **0** other messages. The earlier missing-instance diagnostic was repaired before this final successful outcome.

A separate scratch file contained the final source followed by `#check @name` for each of its three declarations and was elaborated once. It also exited 0 with the same single sorry warning. The elaborated types retain: the scheme X and explicit ℚ-structure map in both definitions; p and `[Fact p.Prime]` in the local predicate; and `[Smooth f]`, `[IsProper f]`, the everywhere model hypothesis, i,j, i≠j and i+j≤3 in the headline. No section variable silently disappeared. No binder changes were required after this mechanical audit. The README expressly states that the model predicates themselves apply to arbitrary rational schemes, with smoothness and properness imposed by their theorem.

## Dependency check

Ran the prescribed depcheck with this README, name SmallRamificationAndAbelianVarietyBaseCasesPartII, the supplied merge order and `--movable`. Output:

```text
depcheck: 51 roadmaps, 589 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line was emitted. Cross-roadmap resolution reported no missing roadmap citations and no missing Lean names; its outside-TauCetiRoadmap name scan reported unavailable pins in that tool environment, so the pinned-source audit and successful Lean elaboration above supply that part of the check. The custom own-identifier check finds only the three declarations actually present in Suggested.lean.

Only the top-level gaps list changes in the accepted plan: all other parsed fields and their original serialized text were preserved. The package does not edit the content checkout, merge order, toolchain or manifest pins.
