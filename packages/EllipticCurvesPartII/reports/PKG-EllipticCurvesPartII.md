# PKG-EllipticCurvesPartII

The package preserves the accepted import-only design: zero owned nodes and all 37 imports from EllipticLegendreCharacterInterfaces LG.0–LG.5. `packages/EllipticCurvesPartII/README.md` expands those imports into six layers, eight definition contracts, all 33 API facts, all 27 original definition Checks, all seven source endpoints and their worked examples. It contains no new ownership assignment or API declarations. `packages/EllipticCurvesPartII/Suggested.lean` consequently has an empty namespace and no admitted examples or substitute propositions. The dependency check passes.

The input `packages/EllipticCurvesPartII/design/review.json` does not exist, and the input reports directory was empty. The accepted review is embedded in `packages/EllipticCurvesPartII/design/plan.json`; it confirms the import-only scope and source correction. I read that review and the canonical owner's complete design. Its non-blocking obligations are preserved through precise contracts rather than reported as completed theory. A generated skeleton and the worklist were saved in scratch before writing the prose.

## Headline inventory established before writing Lean

There are **zero owned headline theorems**, because the accepted plan has `nodes = []`. Thus there are zero owned headlines marked stated and zero owned headlines marked not statable. No owned, statable theorem has been silently omitted. The eight imported mathematical summits below explain what the index supplies to a reader; none is assigned a fresh Lean name here. Stating supplier theorems under an alias would contradict both the accepted design and the duplication rule.

| Imported headline | Exact owner | Signature assessment at the pins | Acceptance treatment |
| --- | --- | --- | --- |
| Full rational two-torsion normalization and six labelled parameters | EllipticLegendreCharacterInterfaces LG.0/full-two-torsion-normalization, parameters-from-root-orderings | Statable with native curves, changes of variables, point kernels and a simple coefficient constructor | Supplier-owned; no duplicate statement |
| Units at every good odd prime | LG.1/good-prime-units | Local models and valuations exist; the rational-local transport is a supplier gap, not a new opaque good-reduction predicate | Supplier-owned; contract retained |
| Odd primitive character conductor divides actual elliptic conductor | LG.1/character-conductor-divides | Not statable on the intended supplier interfaces at these pins: rational squareclass-character and all-prime elliptic-conductor declarations are missing | Named in module docstring; no free predicate or conductor surrogate |
| Embedded ℤ/2ℤ × ℤ/4ℤ for a square parameter at p≡3 mod 4 | LG.3/two-by-four-subgroup | Statable with native points, finite cyclic groups and a simple coefficient constructor | Supplier-owned; no duplicate statement |
| Exact two-adic order three of the minus-one point count at p≡5 mod 8 | LG.3/minus-one-point-count | Statable with native pointCount and a simple coefficient constructor | Supplier-owned; no duplicate statement |
| Corrected scale-two point, its double, exact order and descent class | LG.4/twist-halving-point, twist-halving-double, twist-halving-order, twist-halving-descent | Coordinates, double and order are statable on native points; the intended ordered split-squareclass equivalence is an unconstructed supplier interface | Missing ordered equivalence named in module docstring; no ad hoc encoding |
| Symmetric-cubic count p+1 and trace zero | LG.5/symmetric-cubic-trace-zero | Statable on native models, counts and traces | Supplier-owned; no duplicate statement |
| Legendre twist trace and good Euler polynomial | LG.5/twist-euler-factor-specialization | Statable on native models, counts and traces; the generic theorem is a supplier gap | Supplier-owned; no duplicate statement |

The module docstring explicitly distinguishes ownership from missing carriers. Empty ownership is not falsely described as inability to state the finite-field results. It explains why a file of small native arithmetic examples from the historical design is not an acceptance test for an import-only roadmap. No Tau Ceti imports are needed in the delivered empty acceptance namespace.

## Corrections and unsupported claims

1. **Pins.** The design's Mathlib 082e2d37 and Tau Ceti f7904748 are historical. The supplied manifest pins are Mathlib **6b7abb3c7686292736be2955bd3eb9ebf63b456a** and Tau Ceti **a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039**, confirmed against each checkout's HEAD. The content main is b41e47bc34e30def0db01d84cc92062ed72c6e68. Native names and hypotheses were reread at these pins.
2. **Conductor owner and locator.** ArithmeticGaloisRepresentations no longer states the old R01.3 elliptic-exponent node. Its Layer 3 points elliptic conductor ownership to NeronModelsAndSemistableAbelianVarieties. The actual exact contracts are now §§5.3a and 5.3g of that earlier roadmap: all-prime conductor assembly, auxiliary-prime independence, bad-prime support and multiplicative exponent one. These are mathematical inputs, not an algorithmic–Artin identification assumed without proof.
3. **Unavailable generic twist supplier.** `roadmaps show RankZeroOneBSD` reports `no roadmap RankZeroOneBSD on main or in an open roadmap pull request`. Its historical BSD.0 locator cannot be supported. The generic theorem is registered as gap:finite-field-native-twist-trace on EllipticCurves Layer 5, over every odd finite field, every elliptic native model and every nonzero scalar, including squares. The Legendre specialization remains an LG.5 import. No later RankZeroOneBSDPartII dependency is introduced.
4. **Rational-local interface.** The inherited EllipticCurves Layer 4 request is made explicit as gap:legendre-rational-local-units: minimal-model curve reduction, integral j, rational valuation versus ℤ_p units and unit-discriminant reduction. The main roadmap states the general local theory but not this full exact transport interface. No implementation is claimed for the gap.
5. **Ownership against later work.** MordellLawrenceVenkatesh §6.4 states an ordinary coefficient model over every commutative ring and its Δ and j, but it is a new roadmap later in the merge order. It cannot supply this package. The earlier accepted LG.0 owner already states that model with the required API, so the ordinary-model obligation flows from LG.0 to the cyclic-family consumer. This retains the accepted lower owner and adds no new alias target. No notion is moved from a later roadmap into an owned declaration here; the only overlapping later notion already has an earlier owner.
6. **Source coordinate.** The existing correction is retained and independently recomputed, not claimed as a newly discovered erratum: P=(2λ+4itv,8itv(t+iv)). For p=5,t=v=2,i=3 the printed pair gives 1≠4 in the equation; the corrected pair gives 4=4 and doubles to (1,0). The other i gives (3,4), with 1=1 and the same double. Locator: BS20, p. 371, proof of Lemma 6.6, BS20 lines 716–720.
7. **A draft example corrected during this pass.** A proposed 𝔽₇ half (2,1) at λ=4 failed membership: y²=1 but the cubic is 3. The delivered Check instead uses (3,1), with 1=1, double (1,0), and independent (0,0). No accepted source statement was changed by this correction.
8. **Native transport is additive.** The bare `WeierstrassCurve.Affine.Point.equivVariableChange` is an equivalence of types. The group transport needed by normalization is `WeierstrassCurve.Affine.Point.addEquivVariableChange`; the exact supplier contract cites this declaration and carries the field and decidable-equality assumptions.
9. **No unsupported closure claim.** Compilation of the import index does not certify the canonical owner's normalization or ordered CRT prototype. The conductor theorem is not forced through empty predicates. The four historical owner obligations remain mathematical work with their owners; an unavailable historical build is not asserted to describe this job's working toolchain.

Only the top-level `gaps` value of `packages/EllipticCurvesPartII/design/plan.json` changed. Structural comparison of every other JSON key with the saved input is equal. The new list contains exactly the two EllipticCurves gaps above; no conductor gap was added because the exact conductor statement now exists in its earlier owner.

## Duplication and ownership sweep

Read main-branch EllipticCurves, StableReduction and ComplexTori for upstream form and density. Read main ModularCurves §§4C, 9E and ClassicalArithmeticCompletion §1.51, and use their main versions rather than open progress revisions. The open-head search used the supplied roadmap index and object searches for Legendre coefficients and invariants, full rational two-torsion, halving, split cubic algebras, unit squareclasses, descent, two-by-four torsion, minus-one point counts, conductor support and twist traces. It covered the named open-roadmap heads and main through `roadmaps grep`, followed by `roadmaps show` for relevant new folders. The canonical owner's files were read at `packages/EllipticLegendreCharacterInterfaces/design/README.md` and its plan. The supplied board-package index and board designs were searched by these objects; the index contains no separate canonical-owner package under review.

Relevant open heads actually inspected include NeronModelsAndSemistableAbelianVarieties (3710abd), ArithmeticGaloisRepresentations (bef111d), MordellLawrenceVenkatesh (73dc3e8) and ErdosProgressionPowers. The new-folder status of the first three was checked with `roadmaps list`. The Erdos contract was checked at its supplied open head: §2.1 explicitly imports LG.0–LG.5 and retains wider arbitrary-field and all-odd-finite-field variants. None is imported backwards. The canonical owner has no main or open roadmap folder; its exact accepted board design is the supplied earlier merge-order entry, not a supposedly implemented library module.

All 37 imported targets were deleted as candidates for **new declarations in this alias**, preserving their supplier contracts instead. The per-statement audit below lists each one. More specifically, the ownership removals are:

- Generic Weierstrass carrier and invariants, affine equation and point group: Mathlib modules in the pin inventory below.
- Generic scalar twist, its discriminant scaling and j-invariance: Tau Ceti QuadraticTwist/Basic; no second twist.
- Generic cubic algebra, one-root CRT, corrected descent map, its homomorphism and doubling kernel: Tau Ceti MordellWeil/XSubT; no second descent or generic CRT.
- Generic norm-triviality of descent: native normM_μ₀_eq_one; the retained LG.2 product target differs by reading that theorem in the ordered split algebra.
- Native projective count, count/group comparison, integer trace, finite-point instance, root-count versus two-torsion comparison and additive variable-change transport: Tau Ceti modules below; no wrappers or repeated theorems.
- Generic finite abelian group structure: Mathlib AddCommGroup.equiv_directSum_zmod_of_finite; only its application belongs to LG.3.
- Universal Legendre moduli family, rigidifier and parameter-line action: ModularCurves §§4C, 9E; the concrete tuple differs by labelled roots and recomputed scalars.
- Primitive rational quadratic characters and their conductor support: ClassicalArithmeticCompletion §1.51; only the elliptic application belongs to LG.1.
- Actual elliptic conductor construction and local comparison: NeronModelsAndSemistableAbelianVarieties §§5.3a, 5.3g; no new conductor type or Ogg surrogate.
- Broader full-two-torsion normalization and odd-finite-field subgroup variants: ErdosProgressionPowers §2.1; no duplicate extension in this package.
- Historical anonymous Lean computations, 33 API declaration names and 27 Check declaration names: none is retained as acceptance-file padding. The mathematical APIs and examples remain in prose.

The canonical owner is appropriate for the remaining equation-specific contracts because it is earlier in the order and explicitly states them, including source corrections; neither a later cyclic-family consumer nor the progression application supplies them. There is no declaration in this package that can collide with another fully qualified declaration name.

### Pinned declaration inventory and definition boundaries

All paths below are relative to the content repository. Files were read at their manifest pins, not at a moving external branch.

| Native object | Exact file and line | Declaration or boundary read |
| --- | --- | --- |
| Five coefficients | `.lake/packages/mathlib/Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean:76` | WeierstrassCurve has exactly five coefficient fields, no ellipticity, nontriviality or field hypothesis |
| Invariants | Same file, lines 100, 104, 108, 112, 120, 131 | b₂,b₄,b₆,b₈,c₄,Δ; discriminant sign checked by Δ(L₋₁)=64 |
| Ellipticity and j | Same file, lines 366, 388 | IsElliptic means IsUnit Δ; j is inverse unit discriminant times c₄³; it does not mean merely Δ≠0 over an arbitrary ring |
| Affine equation | `.lake/packages/mathlib/Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Basic.lean:149`, line 156 | Equation and equation_iff; equation solutions alone need not be nonsingular |
| Completion of square | `.lake/packages/mathlib/Mathlib/AlgebraicGeometry/EllipticCurve/NormalForms.lean:166` | toCharNeTwoNF; its coefficient-normal-form class at line 107 does not itself assume characteristic different from two |
| j under variables | `.lake/packages/mathlib/Mathlib/AlgebraicGeometry/EllipticCurve/VariableChange.lean:246` | variableChange_j |
| Finite abelian structure | `.lake/packages/mathlib/Mathlib/GroupTheory/FiniteAbelian/Basic.lean:134` | AddCommGroup.equiv_directSum_zmod_of_finite, with commutativity and finiteness |
| Quadratic character and fibres | `.lake/packages/mathlib/Mathlib/NumberTheory/LegendreSymbol/QuadraticChar/Basic.lean:119`, line 213 | quadraticChar and quadraticChar_card_sqrts; odd characteristic in the fibre formula |
| Supplementary laws | `.lake/packages/mathlib/Mathlib/NumberTheory/LegendreSymbol/Basic.lean:274`; `QuadraticReciprocity.lean:60` in that directory | legendreSym.at_neg_one and legendreSym.at_two |
| Native twist | `.lake/packages/TauCeti/TauCeti/AlgebraicGeometry/EllipticCurve/QuadraticTwist/Basic.lean:169` | quadraticTwistOf, all five formulas with D=t²−4n; c₄ scaling at 229 and Δ scaling at 239 |
| Cubic algebra and CRT | `.lake/packages/TauCeti/TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/XSubT.lean:276`, lines 283, 297 | Affine.A, equivProdA', equivProdA'_apply; native ring equivalence at one root, not the proposed three-root K-algebra equivalence |
| Unit quotient and branches | Same file, lines 505, 548, 558, 566 | Affine.M, μX, μX_of_eval_f_eq_zero, μX_of_eval_f_ne_zero; quotient of units, not all elements |
| Group descent and kernel | Same file, lines 576, 794, 803, 961 | DecidableEq enters the point-group interface; μ, μ_apply, ker_μ_eq; field, elliptic normal form remain in scope |
| Norm condition | Same file, line 1023 | normM_μ₀_eq_one; not a missing generic norm theorem |
| Projective count and trace | `.lake/packages/TauCeti/TauCeti/AlgebraicGeometry/EllipticCurve/PointCount.lean:73`, lines 80, 86, 101, 109 | pointCount, pointCount_def, pointCount_eq_card_point, frobeniusTrace, frobeniusTrace_def; all solutions plus O, ellipticity for point comparison, finite field for trace |
| Finite point type | `.lake/packages/TauCeti/TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FinitePoint.lean:53` | Affine.finite_point |
| Two-torsion root count | `.lake/packages/TauCeti/TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/TwoTorsion.lean:57` | Affine.card_ker_nsmul_two; cardinality only, not an exported ordered basis |
| Additive point transport | `.lake/packages/TauCeti/TauCeti/AlgebraicGeometry/EllipticCurve/Affine/Point/VariableChange.lean:177` | Affine.Point.addEquivVariableChange, as opposed to the bare Equiv at 132 |

Object searches across both pinned libraries found no native ordinary or scaled Legendre constructor, ordered three-root squareclass equivalence, explicit conic-witness constructor or generic quadratic-twist Frobenius-trace theorem under another name. The searches included coefficient tuples and operators as well as proposed names. The intended rational squareclass-character and all-prime elliptic-conductor interfaces likewise have no pinned declaration; planned roadmap declarations were not mistaken for library APIs. The native norm theorem, now present, is explicitly consumed.

## Adversarial mathematics pass

The following values were recomputed independently with rational arithmetic and finite prime-field addition. These checks detect conventions and false examples; they do not prove the general results. Each row records a separate defining object, theorem, identity or API law. Compound invariant rows give each component separately. Here O is the point-group identity, 1 is the trivial multiplicative squareclass, and e²=0 in the square-zero test ring.

### Conventions and supplier comparisons

| Statement | Instances tried and values on each side | Result | Change |
| --- | --- | --- | --- |
| Ring identities include characteristic two | Over 𝔽₂, 16λ²(1−λ)²=0=Δ for both λ=0,1 | Agreement | Field ellipticity kept separate |
| General rings need unit Δ | Over ℤ, d=1,λ=2 gives Δ=64≠0 but 64 is not a unit; over ℚ, 64 is a unit | Nonzero/unit distinction separates cases | No ring criterion using only nonzero |
| Zero ring and field exclusion | In the zero ring Δ=0=1 and 0·0=1, so native IsUnit Δ holds; Field's nontriviality would require 0≠1 | Native predicate and field assertion distinguished | Explicit convention Check |
| Square-zero base change | In 𝔽₅[e]/e², λ=2+e,d=1 gives a₂=2+4e,a₄=2+e, Δ=4+2e and c₄=3+3e on both coefficient and factored sides | Agreement, including nilpotents | Polynomial scope retained |
| Inseparable field embedding | 𝔽₃(T)→𝔽₃(S), T↦S³ gives Δ↦16S⁶(1−S³)², exactly Δ at λ=S³ | Agreement; no separability assumption needed for coefficient maps | No perfectness hypothesis added |
| Count includes O | L₋₁/𝔽₅ has 7 affine solutions and 7+1=8 projective points | Agreement | Singular-solution count distinguished from group count |
| Integer trace and Euler sign | On the same curve, 5+1−8=−2; polynomial 1+2T+5T² | Agreement; opposite convention gives +2 | Sign pinned |
| Cubic order and corrected root | d=2,λ=1/2 has roots (0,2,1), not (0,1,2); at λ=3 over 𝔽₅ the last root's derivative is 4≠0 | Labels and unit representative determined | No zero squareclass |
| Native twist parameters | d=2 gives 0²−4(−1/2)=2; replacing −1/2 by −2 gives 8 | Agreement with literal scaled model | Exact parameter contract |
| Rational unit/j bridge | λ=−1,p=3 gives v(λ)=v(1−λ)=0 and v(j)=3≥0, not 0 | Integrality, not j-unit | Gap states integral j only |
| Minimal-model reduction | Good minimal Δ of valuation 0 becomes valuation 12 after multiplying its discriminant by p¹², while j is unchanged | Curve good in both presentations | Minimize before reduction predicate |
| Actual conductor support | y²=x³−x has M=32=2⁵; f₂=5 and all odd f_p=0; a good local factor contributes exponent 0 and a multiplicative one 1 | Matches exact conductor supplier | Old AGR locator replaced |
| Primitive character boundary | u=1,−1,2,−2,3 gives N=1,4,8,8,12 and odd parts 1,1,1,1,3 | Agreement | Trivial character admitted |
| Generic twist supplier, squares included | Over 𝔽₅,λ=3, traces for d=1,2,4 are 2,−2,2; χ(d)·2 is respectively 2,−2,2 | Agreement | General supplier gap, no nonsquare-only shortcut |
| Finite abelian carrier | ℤ/4×ℤ/4 has order 16 and exponent 4; ℤ/2×ℤ/4 has order 8 and exponent 4; both have doubling kernel size 4 | No-order-eight alone insufficient | Root-divisibility obstruction retained |
| Nonabelian negative control | In S₃, (12)(23)=(123), while (23)(12)=(132) | Fails AddCommGroup carrier | No finite nonabelian group admitted in structure theorem |
| Empty/cardinality junk cases | A finite field has 1≠0, so q≥2; root tuples use Fin 3 and parameters Fin 6 with no out-of-range label; j is never evaluated at Δ=0 | q=1 and invalid labels have no witness; degenerate Δ=0 already computed | No totalized j or natural subtraction used for trace |

### Every imported target

| Statement | Instances tried and computed values | Result | Change |
| --- | --- | --- | --- |
| LG.0/legendre-model | λ=−1: (a₂,a₄)=(0,−1), cubic at x=2 is 6=2³−2; λ=0 gives Δ=0 | Agreement | Import only |
| LG.0/scaled-legendre-model | d=2,λ=1/2: (a₂,a₄)=(−3,2), cubic at x=3 is 6=3·1·2 | Agreement | Import only |
| LG.0/legendre-parameters | λ=3 gives (3,1/3,−2,−1/2,3/2,2/3); λ=−1 gives (−1,−1,2,1/2,1/2,2) | Six labels, repetitions allowed | No six-distinct assertion |
| LG.0/legendre-invariants: Δ | λ=−1,2,1/2 gives coefficient Δ=64,64,1, equal to 16λ²(1−λ)² | Agreement | Import only |
| LG.0/legendre-invariants: c₄ | Same parameters give 48,48,12, equal to 16(λ²−λ+1) | Agreement | Import only |
| LG.0/legendre-invariants: ellipticity and j | Over ℚ, λ=0,1 gives Δ=0 and no ellipticity; λ=−1,2,1/2 gives j=48³/64,48³/64,12³/1=1728 | Both directions of field criterion witnessed | No j at singular model |
| LG.0/scaled-invariants | d=2,λ=1/2 gives Δ=64,c₄=48,j=1728; d=0 gives Δ=c₄=0; d=8 gives Δ=262144,c₄=768 | Scaling powers six and two verified | Nonzero d explicit |
| LG.0/parameters-from-root-orderings | Roots (0,1,3) in orders 012,021,102,120,210,201 give ratios 3,1/3,−2,−1/2,3/2,2/3 and scalars 1,3,−1,2,−2,−3 | Agreement with tuple and scalar order | No normalized-family action |
| LG.0/split-normalization | Roots 3,5,9, x_old=x+3: product becomes x(x−2)(x−6), d=2,λ=3 | Both polynomials x³−8x²+12x | Translation direction explicit |
| LG.0/full-two-torsion-normalization | y²=x³−x: doubling kernel O,(0,0),(1,0),(−1,0) has size 4; normalized coefficients are (0,0,0,−1,0) at d=1,λ=−1 | Agreement including j=1728 | Rational scope preserved |
| LG.0/legendre-two-torsion | d=2,λ=1/2 gives roots 0,2,1; all three y=0 satisfy 0=x(x−2)(x−1); each doubles to O | Native root points distinct | Import only |
| LG.0/scaled-legendre-twist-identity | d=2,λ=1/2,(t,n)=(0,−1/2): native coefficients (0,−3,0,2,0) match scaled coefficients; d=0 makes all zero | Literal equality | Wrong scalar 8 excluded |
| LG.0/legendre-two-torsion-exhausts | L₋₁/𝔽₅ orders: one order-one point, three order-two points, four order-four points; doubling kernel has 4=1+3 elements | Exhaustion in both directions | No omission of O |
| LG.1/legendre-j-valuation, a>0 | p=3,λ=3: (a,b)=(1,0), j=21952/9, v₃(j)=−2=−2a | Agreement | p odd explicit |
| LG.1/legendre-j-valuation, a<0 | p=3,λ=1/3: (a,b)=(−1,−1), v₃(j)=−2=2a | Agreement | Nonzero valuation arguments |
| LG.1/legendre-j-valuation, b>0 | p=3,λ=−2: (a,b)=(0,1), v₃(j)=−2=−2b | Agreement | Symmetric branch retained |
| LG.1/legendre-j-valuation, boundary | λ=−1,p=3: (a,b,v(j))=(0,0,3); λ=1/2,p=2: (−1,−1,6), whereas 2a=−2 | Odd-prime negative control | No p=2 generalization |
| LG.1/good-prime-units | λ=−1,2,1/2 at p=3: each parameter and complement valuation is 0; each j is 1728 with valuation 3 | Agreement for the good curve x³−x | Semistability recorded, local proof needs only good prime |
| LG.1/legendre-good-model | λ=3, Δ=576: at p=5, Δ≡1, λ̄=3 and 1−λ̄=3 are nonzero; at p=3, Δ≡0 and λ̄=0 | Positive and negative unit cases | Ordinary equation only |
| LG.1/character-odd-support | λ=3 gives N=12,3,24,24 for ω=1,−1,2,−2; odd support {3} in every case; λ=−1 gives empty odd support | Exact support computed | No nontriviality assertion |
| LG.1/character-conductor-divides | F:y²=x³−x,λ=−1: N=4,1,8,8, odd N=1 and M=32, hence 1∣32 four times | Agreement | Actual conductor supplier |
| LG.2/split-cubic-crt | d=1,λ=−1: X↦(0,1,−1), X+2↦(2,3,1); d=2,λ=1/2: X↦(0,2,1) | Ordered evaluation | Native algebra retained |
| LG.2/split-squareclass-equivalence | Over ℚ, classes of constants 1,4 map to (1,1,1); 2 maps to ([2],[2],[2])≠(1,1,1) | Both trivial and nontrivial classes | No collapse to identity |
| LG.2/descent-off-roots | L₋₁/𝔽₅, P=(2,4): differences 2,1,3 are nonzero; μ readings ([2],1,[3]); O↦(1,1,1) | Agreement | Source and target fixed |
| LG.2/descent-at-root | L₋₁/𝔽₅ representative triples at roots 0,1,4 are (4,4,1),(1,2,2),(4,3,2); class triples are (1,1,1),(1,[2],[2]),(1,[2],[2]) | All entries units, own-root derivative nonzero | No [0] |
| LG.2/descent-product | Off-root product 2·1·3=1=4² in 𝔽₅; root products 4·4·1=1,1·2·2=4,4·3·2=4; O product 1 | Every branch has trivial class | Native norm theorem reused |
| LG.2/halving-square-criterion | Over ℚ at (0,0), differences 0,−1,1 fail; over 𝔽₅ they are 0,4,1 and (2,4) is a half; at (1,0), 1,0,2 fail and no half exists | Both directions, root and nonroot controls | Field squares include 0 |
| LG.2/split-cubic-evaluation | At roots 0,1,−1, 1↦(1,1,1), X↦(0,1,−1), X+2↦(2,3,1) | Evaluations determine intended map | No arbitrary isomorphism |
| LG.2/split-squareclass-unit-reading | Same roots, unit X+2 maps to ([2],[3],1); constant 4 maps to (1,1,1); X has zero evaluation and no unit class | Correct quotient input | Unit-only domain |
| LG.3/two-by-four-subgroup | p=7,η=2: #=8, P=(3,1),2P=(1,0), T=(0,0), set {aT+bP:a<2,b<4} has size 8; p=11,η=2 gives #=16 | Explicit embedding and divisibility | Draft false half corrected |
| LG.3/minus-one-order-four | p=5,i=2,3 give H=(2,4),(3,3), equation values 1=1 and 4=4 | Two distinct chosen-root witnesses | Import only |
| LG.3/minus-one-double | Their doubles are both (0,0), not O | Exact coordinates | Nonzero denominator retained |
| LG.3/minus-one-order | For both witnesses, 2H=(0,0)≠O and 4H=O; orders are 4 | Exact order, not just annihilation | Import only |
| LG.3/minus-one-first-descent | First representatives 2,3 in 𝔽₅ have χ=−1,−1; root first classes all 1 | Nonsquare obstruction | No trivial-class assumption |
| LG.3/minus-one-no-order-eight | At p=5,13: order multiplicities 1,3,4 for orders 1,2,4; zero order-eight points; first class of each half is nonsquare | Agreement | All four halves covered |
| LG.3/minus-one-point-count | p=5,13,29,37: counts 8,8,40,40; v₂=3,3,3,3 and 16 divides none; p=3 gives 4 with v₂=2 | Exact two-part; negative congruence control | Z/4×Z/4 obstruction kept |
| LG.4/twist-halving-point | p=5,t=v=2,i=3: P=(4,3), y²=4=cubic; i=2: P=(3,4), y²=1=cubic; printed (4,4) gives 1≠4 | Corrected formula verified | Printed y rejected |
| LG.4/twist-halving-double | r,s=(4,2): numerator=denominator=1,slope=1; r,s=(4,3): numerator=1,denominator=3,slope=2; both doubles (1,0) | Denominators nonzero | General tangent factors stated |
| LG.4/twist-halving-order | Both corrected points have double (1,0)≠O and fourth multiple O; order 4 | Exact order | No order-two stand-in |
| LG.4/twist-halving-descent | Third differences 4−1=3 and 3−1=2 equal 4itv; both have χ=−1 | Correct representative and nontrivial examples | No square assumption |
| LG.5/symmetric-cubic-trace-zero | Every u≠0 at p=3,7,11 gives counts 4,8,12 and traces 0; p=7,u=2,x=1,6 gives χ(4)+χ(3)=1−1=0 | Agreement including p=3 | χ(0)=0 retained |
| LG.5/twist-euler-factor-specialization | p=5,λ=3,d=1,2,4: counts 4,8,4; traces 2,−2,2; Euler polynomials 1−2T+5T²,1+2T+5T²,1−2T+5T² | Square and nonsquare branches | General input routed to earlier base |

### Every definition API law

All 33 API items are retained as prose. Rows here refine the target rows with the discriminating law, including iff directions and map normalizations.

| API law | Instances tried and values on each side | Result | Change |
| --- | --- | --- | --- |
| Ordinary equation characterization | λ=−1 over 𝔽₅: (2,4) gives y²=1=cubic; (2,0) gives 0≠1 | Both satisfaction and failure agree with equation predicate | Names converted to prose |
| Ordinary coefficient map | ℤ→𝔽₅,λ=3: (a₂,a₄)=(−4,3) maps to (1,3), equal to coefficients at λ̄=3 | Agreement | No duplicate map declaration |
| Ordinary equality iff parameter equality | Over ℚ, λ=2,μ=2 gives equal a₄=2; λ=2,μ=3 gives a₄ 2≠3; in zero ring both parameters equal | Both directions witnessed | No model-level loss of parameter |
| Ordinary normal form | λ=0,−1,2 all give a₁=a₃=0; in characteristic 2 the same zeros hold while Δ=0 | Coefficient class separated from ellipticity | No characteristic hidden in name |
| Scaled equation characterization | d=2,λ=3 over 𝔽₅: (4,3) gives 4=4, while (4,4) gives 1≠4 | Both directions agree | Corrected point retained |
| Scale one | λ=1/2: d=1 gives (a₂,a₄)=(−3/2,1/2) on both sides | Literal equality | No j-only replacement |
| Scaled coefficient map | ℤ→𝔽₅,d=2,λ=3: (−8,12) maps to (2,2), equal to scaled residue coefficients | Agreement | Both parameters mapped |
| Scaled native twist | d=2,λ=1/2 gives (0,−3,0,2,0) on each side at (0,−1/2); (0,−2) instead gives (0,−12,0,32,0) | Correct and wrong models separated | Literal D fixed |
| Six evaluations | λ=3: entries 3,1/3,−2,−1/2,3/2,2/3 | Every label computed | No set quotient |
| Valid parameters | Same six entries avoid 0,1; λ=0 gives (0,0,1,1,0,0), and λ=1 gives (1,1,0,0,0,0) | Positive and negative cases | Denominator exclusions explicit |
| Reciprocal pairs | At λ=3: 3·1/3=1, (−2)(−1/2)=1, (3/2)(2/3)=1 | All three products 1 | Label pairing fixed |
| Field-embedding tuple map | ℚ→ℝ at λ=3 preserves those six rational values; inseparable T↦S³ sends each ratio to the same ratio at S³ | Evaluation equality | No separability restriction |
| Root-point coordinates | d=2,λ=1/2: points (0,0),(2,0),(1,0) | All three labels fixed | Sorted roots rejected |
| Root-point doubling | All three y=0 points double to O, using inverses equal to themselves | 2T=O in each case | Nonzero points, not O entries |
| Root-point injectivity | x-coordinates 0,2,1 pairwise unequal over ℚ; at λ=1 last two become equal 2=2 | Required exclusion separates failure | d,λ restrictions explicit |
| Root-point horizontal sum | d=1,λ=3 over ℚ: (0,0)+(1,0)=(3,0), then (3,0)+(3,0)=O | All three sum to O | Distinct roots retained |
| Root-point exhaustion | L₋₁/𝔽₅: 4 doubled-to-O points, exactly O plus 3 roots; 4 other points do not double to O | Both inclusion directions witnessed | O counted separately |
| CRT polynomial class evaluation | At roots 0,1,−1, X+2 evaluates to 2,3,1 | Formula determines ordered map | No bare unmarked isomorphism |
| CRT equality iff readings equal | At λ=−1, f=X(X−1)(X+1) evaluates to (0,0,0) and has class 0; X has (0,1,−1) and nonzero class | Both directions and non-equality | Distinct-root hypothesis kept |
| CRT root | d=2,λ=1/2: X↦(0,2,1) | Agreement | Root order explicit |
| CRT unit iff all readings nonzero | At roots 0,1,−1: X+2 has (2,3,1), all nonzero, inverse readings (1/2,1/3,1); X has (0,1,−1) and is not unit | Both directions witnessed | No class of nonunit |
| Squareclass unit reading | Unit X+2 over ℚ gives ([2],[3],1) at 0,1,−1 | Correct classes | Nonzero evaluations only |
| Squareclass identity | Class of 1 maps to (1,1,1) | Agreement | Native quotient preserved |
| Squareclass triviality iff | Constant 4=2² gives three identities; constant 2 gives three nonidentities over ℚ | Both directions witnessed | Wrong trivial map excluded |
| Squareclass multiplication | Constants 2 and 8 both have class [2]; product 16 has class 1; every coordinate gives [2]·[2]=1 | Agreement with multiplication and inverse | Equivalence retained |
| Minus-one coordinates | i=2,3 in 𝔽₅ gives (2,4),(3,3), not a single choice-independent point | Explicit marked values | Choice carried |
| Minus-one double | Both doubles (0,0)≠O | Agreement | Point-group identity distinguished |
| Minus-one exact order | For both, order=4; 2H≠O and 4H=O | Agreement | Exactness retained |
| Minus-one first descent | At i=2,3, first representatives 2,3 are nonsquares; [i] is nonidentity in each case | Agreement | No zero-map stand-in |
| Conic coordinates | t=v=2,i=3,λ=3: x=2λ+4itv=4,y=8itv(t+iv)=3 mod 5 | Agreement | Printed pair fails |
| Conic double | (4,3) and (3,4) both double to (1,0) | Agreement | Denominator values 1,3 nonzero |
| Conic exact order | Each has additive order 4, not 1 or 2 | Agreement | Order and point linked |
| Conic third descent | Representatives 3,2 equal x−2λ and 4itv | Agreement | Nontrivial classes allowed |
| Conic field extension | The inclusion 𝔽₅→𝔽₅(S) preserves first tuple coordinates (4,3), double (1,0) and third difference 3; changing i changes coordinates to (3,4) | Functorial equality with chosen i | No unmarked choice-independence |

### Exhaustive finite regressions and cross-checks

The independently computed prime-field regression set used primes 3,5,7,11,13,17,19,23,29,31,37,41, every nonzero d and every λ outside {0,1}. It compared actual doubling images with the three-square criterion at **182,976 affine points**, including root branches. It compared actual point-count traces with χ(d) times the ordinary trace in **5,720 cases**, including every square scalar. At primes 3 mod 4 it constructed **76 eight-element subgroups** from an order-four point and an independent root point, and checked **88 symmetric-cubic counts** over all nonzero u. It checked **256 conic tuples** (every eligible t,v,i at these primes) for equation membership, double (2λ,0), exact order four and third difference 4itv. Minus-one counts and orders were computed separately at 5,13,29,37. The invariant formulas were also compared over 49 integer pairs (d,λ), including zero, and in the square-zero ring above.

The same root order (0,d,dλ), twist discriminant D=d, O-inclusive point count and trace sign were recomputed across Layers 0,2,3,4,5 and their supplier contracts. Layer 1 uses the same coefficients and discriminant to check local units. No full character, conductor, local model or arbitrary-field theorem is inferred from these finite computations. S₃, q=1, zero ring, singular parameters, nonminimal equations and characteristic two were used as carrier or hypothesis negative controls, not smuggled into the elliptic finite-field statements. There are no denominators left without an explicit nonzero hypothesis, and no equality of sets is justified solely by one inclusion.

## Sources and legal access

The input had no manifest. The source service fetched the publisher's open PDF under the single lifetime key BS20, with SHA-256 3920a7524a37870942fe3591ac858db23cb604f4331bccd2a6dc5f11a1671fbf and status certified. `packages/EllipticCurvesPartII/sources.toml` records authors, title, year, DOI, exact published locators, legal URL, publisher-open class, fetch provenance and cited layers. Only that work is cited as mathematical literature; roadmap and library inputs are identified separately by exact section or module.

The legal source extraction was read at BS20 lines 447–465, 512–557, 560–575, 655–672 and 697–735, with the publisher page markers. In particular the local symmetric model is at line 462, equation (17) at 513, Lemma 6.2 at 526, its six ratios at 544–545, Lemma 6.3 at 547, the native descent display's mathematical target at 657–662, Lemma 6.5 at 663–672, and the corrected point's source at 716–720. Coefficient identities, ordered CRT adapters and the valuation alternative proof are explicitly marked as deductions, not misattributed quotations. No source text was copied into the package or report.

The first service call did not classify the publisher host and created a missing-source entry. The retry explicitly identified the verified publisher-open class, fetched the PDF and certified it. The resolved missing entry was cleared; there is no outstanding reference request. `sources check packages/EllipticCurvesPartII/sources.toml` returned `0 problem(s)`. No suspicious instruction was found in the mathematical source or design text, and no external text was treated as authority to change files or run code.

## Elaboration and binder audit

Ran the prescribed `lake env lean` on the absolute package acceptance filename from the content repository. Exit status **0**, **0 sorry warnings**, **0 other warnings**, **0 errors**, and empty stdout/stderr. The final acceptance file contains one import, one module docstring and the required empty namespace. It contains no definition, instance, opaque, theorem, set_option or example. The delivered acceptance file needs no Tau Ceti object files. The separate native-name audit required targeted builds of `TauCeti.AlgebraicGeometry.EllipticCurve.MordellWeil.TwoTorsion` and `TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FinitePoint`; both were built individually, never with a bare library build. The first targeted build also compiled its NormalForms prerequisite. Both supplemental builds completed without warnings. Their output was:

```text
✔ [2094/2095] Built TauCeti.AlgebraicGeometry.EllipticCurve.NormalForms (2.0s)
✔ [2095/2095] Built TauCeti.AlgebraicGeometry.EllipticCurve.MordellWeil.TwoTorsion (1.8s)
Build completed successfully (2095 jobs).
✔ [2028/2028] Built TauCeti.AlgebraicGeometry.EllipticCurve.Affine.FinitePoint (741ms)
Build completed successfully (2028 jobs).
```

Generated the required scratch binder audit from the full owned-declaration inventory. There are **0 declarations**, hence **0 #check @name statements**; its import-only scratch file was elaborated once successfully from the content repository. There is no dropped hypothesis to compare and no binder change was needed. Separately, all 38 backticked native declarations in the README were checked against the pin, with their elaborated signatures inspected in a scratch library check. Its first attempt required the missing TwoTorsion object file; the subsequent attempt identified a missing explicit import, with diagnostic body ``error(lean.unknownIdentifier): Unknown constant `WeierstrassCurve.Affine.finite_point` `` (the machine-specific location prefix is omitted). The native definition exists at the pin; adding its individual module import and building that module resolves the scratch-check context. These supplemental diagnostics do not come from the delivered acceptance file. This confirmed the ring/field, ellipticity, normal-form, finite-base and decidable-equality conditions; the delivered acceptance namespace adds none of those carriers.

One scratch invocation was initially launched from the board instead of the content directory and returned this message verbatim:

```text
error: no default toolchain configured. run `elan default stable` to install & configure the latest Lean 4 stable release.
```

It was rerun from the required content directory and succeeded. No toolchain or manifest was changed and the suggested toolchain command in the error was not executed. This error was not produced by the delivered acceptance file's prescribed invocation.

## Citation, identifier and dependency checks

The resolver reports no unresolved cross-roadmap citation or Lean name. Its final note says `Lean names outside TauCetiRoadmap were not checked: no pinned Lake packages on this host.` This reflects the resolver's board-root context, not absence of the supplied libraries: their pin files and actual declarations were checked independently as above. All eight historical unresolved proposed names were converted to supplier prose, not padded into Lean. A direct scan confirms every one of the 37 accepted import identifiers occurs in the supplier inventory and every target's mathematics appears in a layer. All eight definition contracts have at least three Checks and the 33 API facts remain present.

The prescribed dependency check used the package README, roadmap name, supplied ORDER.txt and `--movable`. Output:

```text
depcheck: 48 roadmaps, 531 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line for this roadmap. EllipticLegendreCharacterInterfaces precedes this roadmap. The later ErdosProgressionPowers and MordellLawrenceVenkatesh appear only as consumers or ownership boundaries, never in a Needs line or supplier subsection. Neither RankZeroOneBSD nor its later Part II is a supplier. No merge-order or tooling file was edited.
