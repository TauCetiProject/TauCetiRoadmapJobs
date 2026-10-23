# Roadmap: logic, definability, valued fields and motivic integration

**Summary.** Build the logical interfaces that turn arithmetic descriptions into transferable statements, integrals and counting estimates. Starting from native first-order semantics, valuation rings, polynomial functions and computability, construct quotient interpretations, valued-field elimination, local and motivic integration, and the full MRDP theorem. Develop analytic and exponential o-minimal geometry through Pila–Wilkie, block and semi-rational counting. The arithmetic endpoints include a universal definition of the integers in the rationals and the reduction of André–Oort for A_g, and of its abelian, Hodge-theoretic and mixed relatives, to explicitly stated functional-transcendence and Galois-orbit inputs.

## Scope and ownership

This roadmap owns definable quotient presentations and their semantic translation; the Denef–Pas adapters; definable local integration and its motivic lift; the polynomial syntax comparison, effective computation encoding and Diophantine definability results; general analytic/exponential definability and counting; and the Pila–Zannier reductions of Layer 7, which turn counting into special-subvariety and finiteness statements. The geometric and arithmetic inputs of those reductions are hypotheses of the Layer 7 theorems, with their exact content; this roadmap does not construct Shimura varieties, period domains or CM theory a second time.

The following are prerequisites and boundaries.

- Mathlib owns first-order languages, formulas, structures, realization, definability, compactness and ultraproducts. Use its native syntax throughout. A finite tagged encoding of several sorts is an adapter to that syntax.
- Mathlib owns `Poly`, `Dioph`, `Dioph.DiophFn`, Pell-based Diophantine exponentiation, `REPred` and the halting obstruction. The missing work here is the syntax comparison and full computation-to-polynomial argument.
- Mathlib owns `ValuationSubring`, its actual value group, `HenselianLocalRing`, fraction rings, prime fields and transcendence degree. A prime-divisor predicate adds the arithmetic dimension condition to those carriers.
- Tau Ceti's `TauCeti/RingTheory/Valuation/Coarsen.lean` owns convex-subgroup coarsening. Reuse `TauCeti.coarsenMapOfValueGroup` and `Valuation.coarsenByUnits`. The additional target is the Dittmann–Pop cut/localization comparison on arbitrary ordered value groups.
- Tau Ceti's `TauCeti/RingTheory/GrothendieckRing.lean` owns general ring completion of a semiring, including `Algebra.GrothendieckAddGroup.instCommRing`, `ofRingHom` and `liftRingHom`. The additional target is the residue-definable scissor semiring and its particular functorial maps.
- **TauCetiRoadmap.RealAlgebraicGeometry**, from [Layer 3: sign determination and semialgebraic descriptions](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/RealAlgebraicGeometry/README.md#layer-3-sign-determination-and-semialgebraic-descriptions) through [Layer 6: CAD and quantifier elimination](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/RealAlgebraicGeometry/README.md#layer-6-cad-and-quantifier-elimination), owns semialgebraic syntax, CAD, projection closure and the semialgebraic/ordered-field-definability dictionary over ℝ. Its elimination theorem is over ℝ; it does not supply elimination over every real closed field. This supplies the semialgebraic o-minimal reduct used here. General o-minimal expansions, analytic/exponential theorems, general definable dimension and triangulation belong here. The existing Tau Ceti semialgebraic formula/QE modules make their projection-closure hypothesis explicit; they do not by themselves establish projection closure.
- **TauCetiRoadmap.DifferentialGeometry**, [“Boundary and corners”](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DifferentialGeometry/README.md#boundary-and-corners) and item 5.5 in [Layer 5](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DifferentialGeometry/README.md#layer-5-integration-and-stokes-theorem), owns the abstract local-face boundary and immersion. This roadmap adds analytic and finite-definable chart certificates to that object. Its local-field analytic integration is a separate theory over a nonarchimedean field, with its own inverse/substitution and measure-gluing targets.
- **TauCetiRoadmap.AdicSpaces, Layer 1**, owns valuation spectra and their patch topology. The current Tau Ceti modules `TauCeti/AlgebraicGeometry/AdicSpace/ValuationSpectrum/Basic.lean` and `PatchPresentation.lean` provide `TauCeti.ValuationSpectrum.ofValuation`, `ofValuation_eq_of_isEquiv`, `basicOpen_one_right` and `isClopen_patchTopology_basicOpen`. The field-membership dictionary here adds their pullback comparison on native valuation subrings of a field.
- **TauCetiRoadmap.QuadraticFormInvariants**, Layer 2 (quaternion algebras, reduced norm and trace) and §6C items 9–12 (the closed Hilbert symbol in odd residue characteristic, the closed formula and the 8×8 table over ℚ₂), and **TauCetiRoadmap.GlobalQuadraticForms**, §§4.1–4.4 (vector weak approximation, the global square theorem, the quadratic Hasse norm theorem, Hilbert sign prescription), §5.5 (Hasse–Minkowski isotropy) and §6.1 (scalar representation at all finite and real places), own the quadratic-form theory used in Layer 4. This roadmap builds the definable trace images, the local trace ranges at division places and the prime-parameter formulas.
- Mathlib supplies schemes, affine opens, closed immersions, fibre products, smooth morphisms, finite-type presentations as quotients of polynomial rings and Kähler differentials with their exterior powers. **TauCetiRoadmap.SchemeAndStackFoundations** §0.7 supplies dimension theory of schemes of finite type over a field and §2.20 the identification of the relative dualising module of a smooth morphism with the top exterior power of its differentials. Global motivic integration on varieties uses closed embeddings of affine charts into affine space (§3.1).
- **TauCetiRoadmap.NeronModelsAndSemistableAbelianVarieties** supplies Néron models, isogeny functoriality (§2.5) and Grothendieck's pairing on component groups (§4.6). The point-count identity for the Néron models of dual abelian varieties over a local field with finite residue field, needed by the dual-volume comparison, is §2.10a here.
- **TauCetiRoadmap.MotivesAndAlgebraicCycles** §4.20 supplies K₀(Var_k), its compactly supported motivic measure χ^c into the triangulated Grothendieck ring of geometric motives and the image of 𝕃. The realization of the residue classes of Layer 3 in the localized target is §3.11 here; no equality of definable and geometric coefficient rings is assumed.
- **TauCetiRoadmap.DiophantineApproximationAndTranscendence** §§0.1–0.3 owns the rational height identity, the Mahler and absolute-height comparisons and bounded-degree Northcott. Its Layer 5 functional-transcendence results (differential-exponential Ax–Schanuel, §5.6) are different statements from the abelian, Shimura and Hodge theorems that appear as Layer 7 hypotheses. **TauCetiRoadmap.HeightsRationalPointsAndObstructions** §2.20 supplies the Brauer pairing on zero-cycles of arbitrary degree; the effective zero-cycle theorem for normic bundles of Colliot-Thélène–Van Geel is §4.29a here. Its §§5.1, 5.6 and 5.8 own Manin–Mumford and its uniform family version, including torsion cosets of positive dimension.
- **TauCetiRoadmap.ShimuraVarieties** §3.5a owns the o-minimality of R_an,exp with finite cell decomposition, definable dimension and the finite-atlas calculus in that structure; §3.5d owns the definable Chow theorem on smooth complex algebraic varieties; §3.6 owns the R_an,exp comparison between the arithmetic and the algebraic definable structures of a torsion-free arithmetic Hermitian quotient with fixed maximal compact, including the fact that R_an does not suffice at a cusp. This roadmap consumes §3.5a in §6.3 and §3.5d in §6.18, and keeps the general theory: arbitrary o-minimal expansions, R_an and R_exp separately, analytic cells, singular ambient varieties and Boolean combinations.
- Shimura-variety and Hodge-theoretic functional transcendence (special and weakly special subvarieties, definability of uniformizations on fundamental sets, hyperbolic and mixed Ax–Lindemann, Ax–Schanuel for variations of Hodge structure), Ax's theorem for subvarieties of abelian varieties, and the Galois-orbit and lift-height bounds for CM points are not proved here. Layer 7 states each of them, with its source, as a hypothesis of the theorems that use it.

## Conventions

Work with native `FirstOrder.Language` and native realization. Parameters are explicit finite tuples, and translating an interpretation retains their representatives. Definability always names its language, structure and parameter set. Interpretations use invariant graphs on definable quotients, without choosing definable representatives. A bi-interpretation includes both definable composite comparisons.

Compare valuations through their rings and actual ordered value groups. Only a specified discrete normalization uses `ord : K× → ℤ`. In a Denef–Pas formula an occurrence of `ord(f)` has a nonzero guard, or uses a stated totalization together with that guard. Angular components are chosen data. Write ℤ_(p) for the rational local ring and ℤ_p for its completion. A henselization is a separable algebraic initial valued extension, including valuations of arbitrary rank; it is not a completion.

For a field of finite absolute transcendence degree, Kronecker dimension is that degree plus one in characteristic zero, and that degree in positive characteristic. Write the codimension-one condition as `dim_Kr(Kv) + 1 = dim_Kr(K)`, so natural subtraction cannot turn the trivial valuation of a finite field into a divisor.

On a nonarchimedean local field F, normalize additive Haar measure by μ(O_F)=1, and let q=#k_F>1 and |π|=q⁻¹. Products use product Haar measure. A tensor r-gauge density, r>0, is |f|^(1/r). Intrinsic dimension is separate from ambient Haar dimension. Relative top forms use the determinant isomorphism in **base-first order**, π*η∧φ=ω. Signs disappear only after taking absolute values, not in the form identity.

For motivic integration fix a base field k of characteristic zero and the chosen coefficient presentation over k((t)). The coefficient ring is A=ℤ[L,L⁻¹,(1−L⁻ⁱ)⁻¹ : i>0]. Its evaluation parameter satisfies q>1. Definable subassignments are assignments on the declared field category; arbitrary field extensions need not preserve the truth of quantified formulas. Residue-field scissor objects, positive functions, signed functions and dimension-graded Functions are distinct objects. A direct image is additive and satisfies a projection formula; it is not generally a ring homomorphism.

Natural assignments and integer assignments remain separate. `Poly α` evaluates natural tuples in ℤ. Its comparison with `MvPolynomial α ℤ` retains signed coefficients. Finite witness compression fixes every input coordinate, even for infinite α. Computable reductions take explicit syntax and effective coefficient codes as input; a classically chosen inverse of an extensional polynomial map is not a syntax-extraction algorithm. General ring Diophantine sets use finite systems. A single sum-of-squares equation is justified over ℚ or ℤ, not over an arbitrary ring.

Fix one o-minimal expansion of the ordered real field at a time, allowing named real parameters. Restricted analytic symbols agree with their analytic representatives on the **closed** cube [−1,1]^n and are zero outside it. The real exponential is unrestricted. Finite definable atlases are mandatory. Charts map coordinate domains into the space; their mixed coordinate map is φ_j⁻¹∘φ_i. The abstract boundary remembers local faces.

The algebraic part X_alg is the union of connected positive-dimensional semialgebraic subsets of X, with real parameters. It is not asserted to be definable. Put dim∅=−∞; distinguish the frontier cl(X)∖X from the ambient topological boundary. For a reduced rational a/b with b>0, H(a/b)=max(|a|,b); tuple height is the maximum and H(())=1. An algebraic tuple's degree bound applies to each coordinate separately. Counting constants depend on the fixed family, degree bound and ε, never its varying parameter or T≥1.

## Exact supplier contracts

### From Mathlib

The pinned API is Mathlib `082e2d37e8b0463410cdb532e111cd43d5a66174` with Tau Ceti `f790474821cf4256814db967cb154e7af3d0c369`. The native-carrier statements in [Suggested.lean](Suggested.lean) use these APIs. The current Tau Ceti facilities identified under Scope and ownership are imports for the mathematical build; no declaration available only there is used to type a pinned signature.

For logic use `FirstOrder.Language`, `FirstOrder.Language.Formula`, `FirstOrder.Language.ring`, `Set.Definable` and `FirstOrder.Language.BoundedFormula.IsExistential`. The last predicate is the native quantifier-free/existential fragment. `FirstOrder.Language.Ultraproduct.«structure»`, `realize_formula_cast` and `sentence_realize` give the structure and Łoś transfer on `Filter.Product`. Interpretations, their quotient invariance and the existential-preservation/diagram theorem must still be proved here.

For finite hyperreals use `ArchimedeanClass.stdPart`, `stdPart_add`, `stdPart_mul` and `mk_sub_pos_iff`, with their finiteness hypotheses `0 ≤ ArchimedeanClass.mk x`. `Hyperreal.stdPart_coe` fixes the embedded real numbers. `Hyperreal.stdPart_omega = 0` is the total map's default at an infinite element and is not an approximation theorem. An arithmetic/hyperreal comparison must use the same ultrafilter.

For valued and finitely generated fields use `ValuationSubring`, `ValuationSubring.ValueGroup`, `HenselianLocalRing`, `IntermediateField.FG`, `Algebra.trdeg`, `Subfield.bot_eq_of_charZero`, `Subfield.bot_eq_of_zMod_algebra` and `IsFractionRing`. The value group has zero in the native multiplicative presentation; any additive comparison is named explicitly. Finite field generation does not mean finite generation as a ℤ-algebra.

For polynomial normal forms use `Poly.ext`, `Poly.proj`, `Poly.const`, `Poly.induction`, `Poly.map` and their evaluation rules, together with the native ring on `Poly`. Use `MvPolynomial.eval₂Hom`, `eval₂Hom_C`, `eval₂Hom_X'`, `induction_on`, `rename`, `rename_rename`, `eval_rename` and `exists_finset_rename`. `MvPolynomial.funext_set` requires an integral domain and infinite coordinate sets; use the image of ℕ in ℤ, with `Nat.cast_injective` and `Set.infinite_range_of_injective`. `Finset.toRight`, `Finset.mem_toRight`, `Fintype.equivFin`, `Function.extend` and `Function.Injective.extend_apply` give the finite witness enumeration without requiring finite inputs. `RingEquiv.ofBijective` supplies a classical inverse after bijectivity is proved.

`Dioph`, `Dioph.DiophFn` and `Dioph.pow_dioph` supply the existing Diophantine vocabulary and exponentiation. `REPred` uses the existing `Primcodable` encoding; `ComputablePred.halting_problem` supplies undecidability. `Nat.chineseRemainder`, `Nat.sum_four_squares` and `Nat.forall_exists_prime_gt_and_modEq` provide CRT, four squares and primes in coprime arithmetic progressions, with their actual hypotheses. None supplies the missing uniform native computation adapter by itself.

### From algebraic geometry and measure theory

For charts use `AlgebraicGeometry.IsAffineOpen`, `AlgebraicGeometry.IsClosedImmersion`, fibre products of schemes, `AlgebraicGeometry.Smooth` and `AlgebraicGeometry.QuasiCompact`; a finitely generated algebra over a field is a quotient of a polynomial ring in finitely many variables (`Algebra.FiniteType.iff_quotient_mvPolynomial''`), which gives a closed embedding of every affine chart into affine space. An affine variety need not be an open subset of affine space, so closed embeddings, not open ones, are used to globalize integrals. Relative differentials are `KaehlerDifferential` with `exteriorPower`. Haar measure on a local field and its products is `MeasureTheory.Measure.addHaar`, normalized by the measure of the ring of integers; countable gluing uses `MeasureTheory.Measure.sum` and `MeasureTheory.Measure.restrict`.

From [TauCetiRoadmap.SchemeAndStackFoundations, §0.7](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/SchemeAndStackFoundations/README.md#07-local-dimension-and-dimension-theory-of-schemes-of-finite-type-over-a-field), use `dim O_{X,x}+trdeg κ(x)=dim_x X` and the dimension theory of schemes of finite type over a field; from [§2.20](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/SchemeAndStackFoundations/README.md#220-relative-dualising-complexes-and-modules-serre-duality-curve-comparison), use the identification of the relative dualising module of a smooth morphism of relative dimension d with the d-th exterior power of its differentials. The analytic manifold structure on the F-points of a smooth F-variety uses the locally analytic inverse function theorem over a complete nonarchimedean field (Schneider, *p-Adic Lie Groups*, Proposition 6.4, p.42, and §7 for charts and atlases).

From [TauCetiRoadmap.NeronModelsAndSemistableAbelianVarieties](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md), use Néron models, their identity components and component groups, isogeny functoriality ([§2.5](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md#25-functoriality-under-isogeny)) and Grothendieck's pairing ([§4.6](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md#46-grothendiecks-pairing-on-component-groups)). Those sections are stated for semistable abelian varieties; the general prime-to-p extension, the identity-component count and the equality of component-group orders for dual abelian varieties over a local field with finite residue field are §2.10a here.

From [TauCetiRoadmap.MotivesAndAlgebraicCycles, §4.20](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/MotivesAndAlgebraicCycles/README.md#420-the-scissor-ring-and-motivic-measure), use `K₀Var k`, the ring structure on `TriangulatedK0` of the geometric motives `DM_gm(k,ℚ)` and the ring homomorphism χ^c:K₀Var k→TriangulatedK0(DM_gm(k,ℚ)), [X]↦[M^c(X)], with χ^c(𝕃)=[ℚ(1)]. That section inverts 1−𝕃^{−i} only in a designated localized target; §3.11 here constructs that target and the realization of residue classes into it.

From [TauCetiRoadmap.HeightsRationalPointsAndObstructions, §2.20](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md#220-brauer-pairing-on-zero-cycles), use the Brauer evaluation of zero-cycles of arbitrary degree on smooth projective varieties over a number field and its orthogonality to global Brauer classes. The effective symmetric-power theorem for the normic bundles of Colliot-Thélène–Van Geel, with its Brauer-group computation and the finiteness of obstructed parameter classes, is §4.29a here.

From [TauCetiRoadmap.QuadraticFormInvariants](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/QuadraticFormInvariants/README.md), use the quaternion algebra (a,b), its reduced norm and trace and the four-fold splitting criterion of Layer 2, and from §6C the Hilbert symbol with its closed formula in odd residue characteristic (item 9), the closed formula over ℚ₂ (item 10) and the 8×8 table on the basis {−1,2,5} of ℚ₂ˣ/ℚ₂ˣ² (item 12). From [TauCetiRoadmap.GlobalQuadraticForms](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/GlobalQuadraticForms/README.md), use vector weak approximation (§4.1), the global square theorem (§4.2), the quadratic Hasse norm theorem at finite, real and complex places (§4.3), Hilbert sign prescription (§4.4), Hasse–Minkowski isotropy (§5.5) and scalar representation at all finite and real places (§6.1). The rational norm-one witnesses of §4.21 come from §6.1 applied to the ternary form ⟨a,b,−ab⟩; the local trace ranges at division places, including the dyadic and real ones, are computed in §4.21.

The field-membership patch adapter uses **TauCetiRoadmap.AdicSpaces** Layer 1: for every a in the field, valuation-ring membership and nonmembership must be patch-clopen, invariant under equivalent valuations, and agree with the corresponding spectral inequalities. Coarsening uses the actual convex quotient; no integer-valued normalization is inserted.

### From counting and o-minimality

From [TauCetiRoadmap.DiophantineApproximationAndTranscendence](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md), use the rational height identity H(p/r)=max(|p|,r) for p/r in lowest terms with r>0 ([§0.1](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md#01-primitive-polynomials-and-coefficient-height)), the comparison 2^(−d)H(x)≤H_abs(x)^d≤√(d+1)·H(x) between the coefficient height of the minimal polynomial and the absolute multiplicative height of an algebraic number of degree d ([§0.2](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md#02-mahler-measure-house-and-absolute-height)), and bounded-degree Northcott `finite_setOf_absMulHeight₁_le` ([§0.3](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md#03-finiteness-and-size-estimates)). Keep the degree fixed when converting coefficient height to absolute multiplicative height. In the native absolute-height convention, the total multiplicative definition takes value 1 outside the algebraic domain, while the logarithmic height takes value 0; every counting application is restricted to algebraic coordinates.

From [TauCetiRoadmap.ShimuraVarieties, §3.5a](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ShimuraVarieties/README.md#35a-the-o-minimal-structure-r_anexp), use R_an,exp (the real exponential and every restricted analytic function, zero outside the closed cube), its o-minimality, finite cell decomposition, definable dimension with its product, projection and fibre laws, and its finite-atlas calculus; from [§3.5d](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ShimuraVarieties/README.md#35d-definable-chow), use the definable Chow theorem: a closed complex analytic subset of a smooth complex algebraic variety that is definable in an o-minimal expansion of R_an is algebraic. The comparison of the arithmetic and algebraic definable structures of a Hermitian arithmetic quotient is [§3.6](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ShimuraVarieties/README.md#36-definable-comparison-with-the-algebraic-target) there and is not restated here.

### Input hypotheses of Layer 7

The theorems of Layer 7 carry their geometric and arithmetic inputs as hypotheses, each a proposition about fixed objects, stated exactly in §§7.1, 7.5–7.8 with the source that proves it: the André–Oort input datum for A_g (definability on Siegel sets, the structure of weakly special subvarieties, hyperbolic Ax–Lindemann, the Galois-orbit lower bound and the lift-height bound), the product-locus input for A₁×A₁, the Ax-type property of images of subvarieties of a complex abelian variety, the Ax–Schanuel conclusion for a polarized variation of Hodge structure, and the mixed input datum of Gao. No Layer 7 theorem assumes its own conclusion: each uses Layer 6 counting to pass from its inputs to a finiteness or special-subvariety statement that the inputs do not contain. The roadmaps that prove the inputs consume Layer 6; they discharge the hypotheses (Downstream consumers).

## How to read the build

Layer 0 fixes semantic transport. Layer 1 provides the languages and valuation interfaces used by Layer 2 local integration and Layer 3 motivic integration. Layer 4 is the separate computation and arithmetic-definability branch; it begins with polynomial comparison and finite witnesses. Layer 5 connects normalized local coefficients to arithmetic consumers while preserving the distinction between finite computation and unrestricted decision problems. Layer 6 builds real definability and counting: o-minimal geometry, rough-function estimates for period maps, definable complex algebraicity, Pila–Wilkie, block, bounded-degree and semi-rational counting, the orbit-counting bridge and the torus lemma behind the abelian group-action application. Layer 7 combines Layer 6 with explicitly stated functional-transcendence and Galois-orbit inputs. Within each layer, subsections follow their prerequisites. The README is the mathematical specification; [Suggested.lean](Suggested.lean) contains only the definitions and milestones directly statable on the pinned carriers.

## Layer 0: interpretations and arithmetic transfer

Specify definable domains, kernels and symbol graphs before translating formulas. Semantic composition supplies the two comparisons in a bi-interpretation. Fraction presentations and arithmetic ultrapowers test that equality and quantifier witnesses are transported correctly.

<a id="ld0-interpretation"></a>

### 0.1 Interpretations on definable quotients

For languages L_A,L_B and nonempty native structures A,B, an interpretation I of B in A consists of a finite arity m, an A-parameter-definable D⊆A^m, a definable equivalence E on D, a bijection D/E≃B, and definable E-invariant pullbacks of every relation and function graph of L_B. Function graphs must be total on D and single valued modulo E. A finite tuple of parameters is part of the data. There is no definable choice of representatives requirement.

Use the existing definable-set predicate for D, the kernel and symbol graphs. Form the native setoid quotient and transport the B-structure along the supplied bijection. Translate terms by their graph formulas. Translate equality by E; relativize existential quantifiers to D and use kernel invariance for independence of representatives.

The basic interface must include:

- `interpretation.domain`: The finite-power domain and kernel are definable over the recorded parameters.
- `interpretation.translate`: Every L_B-formula has an E-invariant L_A-formula on representative tuples, with the same semantic truth value.
- `interpretation.function_total`: For each source function and representative input there exists an output in D unique modulo E.
- `interpretation.change_parameters`: Enlarging the named parameter tuple transports an interpretation without changing its quotient structure.

**Checks.**

- `interpretation.identity`: D=A, E=equality and identity symbol graphs recover the original native structure.
- `interpretation.fractions`: For an integral domain R, pairs (a,b) with b≠0 and relation ad=bc interpret Frac(R); (1,2) and (2,4) have the same class when 2≠0.
- `interpretation.nonfunctional`: The graph assigning both 0 and 1 to one input over a two-element equality quotient fails the function uniqueness axiom.
- `interpretation.residue`: A definable ideal I gives R/I by a quotient; no definable transversal is required.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §1, Theorems 1.1–1.2, pp.1–4; §5, Facts 5.2 and final proof, pp.16–18 (arXiv v2).)

*Needs:* Mathlib `FirstOrder.Language`; Mathlib `FirstOrder.Language.Formula`; Mathlib `Set.Definable`.

<a id="ld0-interpretation-semantics"></a>

### 0.2 Semantics and composition of interpretations

An interpretation I:B in A gives, for every finite tuple of B-elements and any representatives in D, equivalence between realization of a B-formula and realization of its translated A-formula. Composing interpretations C in B and B in A gives C in A; its parameter tuple includes representatives of the inner parameters and its domain, kernel and symbol formulas are obtained by translation. Identity interpretations act as identities up to definable quotient isomorphism.

Induct over native formulas: equality uses E; symbol atoms use their defining graphs; Boolean operations are native; quantified witnesses range over D and quotient surjectivity supplies representatives. For composition flatten the two finite tuples, translate the inner domain and equivalence, and apply the first semantic equivalence twice. No elimination of imaginaries is assumed.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §1, Theorems 1.1–1.2, pp.1–4; §5, Facts 5.2 and final proof, pp.16–18 (arXiv v2).)

*Needs:* [0.1 Interpretations on definable quotients](#ld0-interpretation); Mathlib `FirstOrder.Language.Formula`.

<a id="ld0-biinterpretation"></a>

### 0.3 Parametric bi-interpretations

A parametric bi-interpretation between A and B consists of interpretations in both directions and definable isomorphisms of each composite interpretation with the identity on its ambient structure, over the accumulated finite parameter tuples. Mutual interpretability without the two definable composite comparisons does not satisfy this definition.

Take the two interpretation records together with quotient-compatible definable graphs of the two composite isomorphisms. Transport each graph through the semantics theorem to formulate both comparison conditions in the appropriate ambient structure.

The basic interface must include:

- `biinterpretation.forward`: Extract the interpretation of B in A and its parameter tuple.
- `biinterpretation.comparison`: Extract definable graphs identifying both composite quotients with the original structures.
- `biinterpretation.symm`: Interchange the two interpretations and their comparison isomorphisms.
- `biinterpretation.trans`: Compose bi-interpretations using translated comparison graphs and accumulated parameters.

**Checks.**

- `biinterpretation.identity`: The identity quotient in each direction with identity comparison graphs is a bi-interpretation.
- `biinterpretation.finite_obstruction`: No finite structure can be bi-interpreted with the infinite ring of integers: every definable finite-power quotient of a finite structure is finite.
- `biinterpretation.parameter_transport`: Relabeling a finite tuple of named parameters gives isomorphic composite quotients.
- `biinterpretation.comparisons_required`: Providing two interpretations alone leaves the bi-interpretation record incomplete until both definable composite maps are supplied.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §1, Theorems 1.1–1.2, pp.1–4; §5, Facts 5.2 and final proof, pp.16–18 (arXiv v2).)

*Needs:* [0.1 Interpretations on definable quotients](#ld0-interpretation); [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics).

<a id="ld0-biinterpretation-transitivity"></a>

### 0.4 Transitivity of parametric bi-interpretability

Parametric bi-interpretability is symmetric and transitive. If A and B, and B and C, are bi-interpretable, then A and C are bi-interpretable over the finite tuple obtained by translating and concatenating their parameters.

Compose both forward and reverse quotient interpretations. Translate the middle composite comparison and compose with the outer comparison; do the same in the other ambient structure. This verifies the stronger definable-composite condition rather than merely two interpretations.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §1, Theorems 1.1–1.2, pp.1–4; §5, Facts 5.2 and final proof, pp.16–18 (arXiv v2).)

*Needs:* [0.3 Parametric bi-interpretations](#ld0-biinterpretation); [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics).

<a id="ld0-fraction-interpretation"></a>

### 0.5 Fraction fields as interpreted structures

For an integral domain R in the ring language, interpret its fraction field by D={(a,b)∈R²:b≠0}, equality (a,b)E(c,d) iff ad=bc, sum (ad+bc,bd), product (ac,bd), and integer constants (n,1). The quotient is canonically isomorphic to the native fraction field and the embedded copy of R has representatives (a,1).

Use the native fraction field universal property to identify the cross-multiplication quotient. The domain condition makes all displayed operations total, and cross multiplication proves compatibility and uniqueness modulo E.

The basic interface must include:

- `fraction_interpretation.quotient_equiv`: The quotient is ring-isomorphic to Frac(R), sending [(a,b)] to a/b.
- `fraction_interpretation.realize`: Translated ring formulas agree with realization in the native fraction field.
- `fraction_interpretation.numerator_embed`: The interpretation of r∈R is the class of (r,1).
- `fraction_interpretation.denominator_guard`: A representative is legal exactly when its denominator is nonzero.

**Checks.**

- `fraction_interpretation.Z_to_Q`: For R=ℤ the quotient is ℚ with the usual arithmetic.
- `fraction_interpretation.zero_denominator`: The pair (1,0) is excluded even though cross multiplication alone would not define a fraction.
- `fraction_interpretation.negative`: For R=ℤ, the class of (−1,2) plus that of (1,2) is zero; in a general domain the denominator requires 2≠0.
- `fraction_interpretation.field`: When R is already a field, [(a,b)] corresponds to ab⁻¹ in R.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §1, Theorems 1.1–1.2, pp.1–4; §5, Facts 5.2 and final proof, pp.16–18 (arXiv v2).)

*Needs:* [0.1 Interpretations on definable quotients](#ld0-interpretation); [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics); Mathlib `IsFractionRing`.

<a id="ld0-arithmetic-translation"></a>

### 0.6 Explicit arithmetic semantics bridges

For every supplied interpretation of an arithmetic ring or field, translate its fixed formula together with its named parameter tuple and exhibit the representative-domain guards. The resulting realization statement is equivalent in the interpreted and ambient structures. In particular this gives the fraction-field bridge and the residue-field bridge of Layer 1; it makes no assertion that ℤ is existentially definable in ℚ.

Instantiate the interpretation semantics theorem with the native ring language and the appropriate quotient isomorphism. Keep parameter representatives in the formula; any algorithmic transfer additionally needs an effective syntax translation, as in Layer 4.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §1, Theorems 1.1–1.2, pp.1–4; §5, Facts 5.2 and final proof, pp.16–18 (arXiv v2).)

*Needs:* [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics); [0.5 Fraction fields as interpreted structures](#ld0-fraction-interpretation).

<a id="ld0-arithmetic-ultrapower"></a>

### 0.7 A chosen nonstandard arithmetic extension

Fix a nonprincipal ultrafilter U on ℕ and form the already native ultrapower *ℕ=(U:Filter ℕ).Product(λ_,ℕ) in the arithmetic language. Equip it with the diagonal elementary embedding n↦[λ_,n] and distinguish H=[i↦i]. Then H exceeds every standard numeral. The choice of U is explicit and no computability of the extension is asserted.

U is a nonprincipal ultrafilter on ℕ. The arithmetic signature has +, ×, 0 and 1; order is definable by a positive additive difference. No ring structure on ℕ is assumed.

Apply native formula transfer to constant representative tuples to obtain elementarity of the diagonal. For each n, the indices i with i>n form a cofinite set, which belongs to the chosen nonprincipal U. Transfer order to show H>n.

The basic interface must include:

- `arithmetic_ultrapower.diagonal`: The diagonal map is elementary and injective in the fixed arithmetic language.
- `arithmetic_ultrapower.oversized_index`: For every n∈ℕ, the index class H exceeds diagonal(n).
- `arithmetic_ultrapower.formula_transfer`: A formula evaluated on representative sequences is true exactly on a U-large set.
- `arithmetic_ultrapower.standard_residue`: For m>0, a class has a unique standard remainder r<m modulo diagonal(m), by finite partition and ultrafilter maximality.

**Checks.**

- `arithmetic_ultrapower.numeral`: The diagonal image of 2+3 equals that of 5.
- `arithmetic_ultrapower.infinite`: H is not equal to the diagonal of any natural number.
- `arithmetic_ultrapower.finite_partition`: Modulo 2, the class of the index sequence has precisely one of the two standard remainders, determined by U.
- `arithmetic_ultrapower.principal`: A principal ultrafilter does not give an element larger than every standard n.

([Mathlib contributors, *Native ultraproduct structures and Łoś transfer*](https://github.com/leanprover-community/mathlib4/blob/082e2d37e8b0463410cdb532e111cd43d5a66174/Mathlib/ModelTheory/Ultraproducts.lean), Ultraproduct.realize_formula_cast and sentence_realize at the pinned commit.)

*Needs:* Mathlib `FirstOrder.Language.Ultraproduct.realize_formula_cast`; Mathlib `FirstOrder.Language.Ultraproduct.sentence_realize`; Mathlib `FirstOrder.Language.Ultraproduct.«structure»`.

<a id="ld0-standard-part-interface"></a>

### 0.8 Standard parts with explicit domains

On finite native hyperreals, the native standard part is the unique real infinitesimally close to the input, preserves addition and multiplication on that finite subring, and fixes embedded reals. The native total function has default values outside this domain: stdPart(omega)=0 does not make omega infinitesimally close to zero. For the chosen arithmetic ultrapower use standard remainders modulo each fixed positive integer instead. No global ring retraction *ℕ→ℕ is asserted; any comparison to native hyperreals requires a same-ultrafilter adapter.

Compare the chosen ultrapower convention to the native hyperreal construction only after choosing the same ultrafilter or an explicit comparison map. Use existing finite-domain standard-part laws, with finiteness hypotheses on both inputs; use finite partitions, rather than real completeness, for arithmetic residue shadows.

Every occurrence of a real standard part has a finiteness proof. An infinite arithmetic element is handled by finite quotients, and is never declared finite.

Prove an explicit same-ultrafilter realization before comparing the arithmetic ultrapower to the native hyperreal type. A different fixed nonprincipal ultrafilter does not supply a canonical identification. The existing standard-part laws apply only after this adapter and the finiteness condition are established.

([Mathlib contributors, *Native hyperreal and finite-domain standard part*](https://github.com/leanprover-community/mathlib4/blob/082e2d37e8b0463410cdb532e111cd43d5a66174/Mathlib/Analysis/Real/Hyperreal.lean), Mathlib/Algebra/Order/Ring/StandardPart.lean: stdPart_add, stdPart_mul and mk_sub_pos_iff; Hyperreal.stdPart_coe and stdPart_omega, at the pin.)

*Needs:* [0.7 A chosen nonstandard arithmetic extension](#ld0-arithmetic-ultrapower); Mathlib `ArchimedeanClass.stdPart`; Mathlib `Hyperreal.stdPart_coe`; Mathlib `Hyperreal.stdPart_omega`; Mathlib `ArchimedeanClass.stdPart_add`; Mathlib `ArchimedeanClass.stdPart_mul`; Mathlib `ArchimedeanClass.mk_sub_pos_iff`.

### Examples

In the fraction interpretation of ℤ, (1,2) and (2,4) give the same rational, and (1,0) is outside the domain. Translating an existential assertion must quantify over legal pairs modulo cross multiplication. In a nonprincipal ultrapower of ℕ, H=[i] is above every standard numeral, but for a fixed positive modulus it has exactly one standard remainder, selected by the ultrafilter’s finite partition property.

### Dependencies

Mathlib `FirstOrder.Language`; Mathlib `FirstOrder.Language.Formula`; Mathlib `Set.Definable`; Mathlib `IsFractionRing`; Mathlib `FirstOrder.Language.Ultraproduct.realize_formula_cast`; Mathlib `FirstOrder.Language.Ultraproduct.sentence_realize`; Mathlib `FirstOrder.Language.Ultraproduct.«structure»`; Mathlib `ArchimedeanClass.stdPart`; Mathlib `Hyperreal.stdPart_coe`; Mathlib `Hyperreal.stdPart_omega`; Mathlib `ArchimedeanClass.stdPart_add`; Mathlib `ArchimedeanClass.stdPart_mul`; Mathlib `ArchimedeanClass.mk_sub_pos_iff`.

## Layer 1: valued-field languages and prime divisors

Build the three-sorted adapter and its chosen angular components, then relative valued-field elimination and transfer. The arithmetic valuation branch uses finite transcendence degree and actual ordered groups, including higher-rank henselian extensions.

<a id="ld1-denef-pas-language"></a>

### 1.1 The Denef–Pas language

Use a tagged disjoint union of the valued-field, residue-field and value-group carriers to encode a three-sorted language in native first-order syntax. The first two sorts have ring language; the third has Presburger +,−,0,1,≤ and congruences modulo every positive integer. Cross-sort symbols are ord:VF×→VG and ac:VF→RF; a total ord on VF is allowed only with a specified value at 0 and every genuine valuation comparison guarded against 0. Quantifiers are relativized to their named sort. Coefficients and extra constants are recorded by a parameter diagram.

Tag each carrier and add sort predicates, with disjointness and exhaustiveness axioms. Totalize irrelevant symbol inputs by fixed tagged zeros, and guard every translated atom. Induct on sorted formulas to prove equivalence between sorted semantics and the tagged native semantics; changing the off-sort totalization leaves sorted truth unchanged.

The basic interface must include:

- `denef_pas_language.sort_realize`: A sorted quantifier ranges over exactly its tagged carrier in the native encoding.
- `denef_pas_language.ring_reduct`: VF and RF reducts agree with the native ring language on correctly sorted tuples.
- `denef_pas_language.zero_guard`: An atom ord(x)=γ used as a nonzero valuation assertion includes x≠0.
- `denef_pas_language.parameters`: Named coefficient maps and their residue interpretations are preserved by the syntax translation.

**Checks.**

- `denef_pas_language.mixed_sort`: The expression ac(ξ) for a residue-field variable ξ is rejected by the sorted syntax.
- `denef_pas_language.zero_order`: Changing the chosen total value ord(0) cannot change the truth of a guarded sorted formula.
- `denef_pas_language.congruence`: In the value sort, γ≡1 mod 2 holds at γ=3 and fails at γ=2.
- `denef_pas_language.residue_only`: A residue-field sentence translates to that ring sentence on RF, with no VF witnesses.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §2.1, Theorem 2.1.1 and Corollary 2.1.2, author pp.8–10 (Theorem p.9, Corollary p.10).)

*Needs:* Mathlib `FirstOrder.Language`; Mathlib `FirstOrder.Language.Formula`; Mathlib `FirstOrder.Language.ring`; [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics).

<a id="ld1-angular-component"></a>

### 1.2 Angular components and valued structures

A Denef–Pas valued structure consists of a nontrivially valued henselian field K, its native valuation subring O, residue field k, a chosen surjective additive normalization ord:K×→Γ with Γ≡ℤ in Presburger language, and a map ac:K→k satisfying ac(0)=0, ac(xy)=ac(x)ac(y), and ac(u)=res(u) for units u∈O. On nonzero inputs ac takes values in k×. This is additional structure, not a canonical map supplied by every valued field.

Compare O and its residue quotient to native ValuationSubring and IsLocalRing.ResidueField. Convert the native multiplicative valuation convention to the chosen additive normalization explicitly. For a discretely valued field with chosen uniformizer π, define ac(x)=res(π^(−ord x)x) for x≠0; verify its laws using the unit factor and set ac(0)=0.

The basic interface must include:

- `angular_component.unit`: On valuation-ring units, ac is exactly the native residue map.
- `angular_component.multiplicative`: ac(xy)=ac(x)ac(y), including zero inputs.
- `angular_component.uniformizer`: For the uniformizer-defined ac, ac(π)=1 and ac(π^n u)=res(u).
- `angular_component.change_uniformizer`: Replacing π by ε π multiplies the nonzero angular component by res(ε)^(−ord x); formulas cannot ignore this choice.

**Checks.**

- `angular_component.zero`: ac(0)=0, whereas ac(1)=1.
- `angular_component.Laurent`: In k((t)) with π=t, ac(t³(2+t))=2 when 2≠0 in k, and ord is 3.
- `angular_component.unit`: For every unit u of O, the new ac agrees with the native residue map.
- `angular_component.choice`: Choosing π′=ε π with res ε≠1 changes ac(π) to (res ε)⁻¹.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §2.1, Theorem 2.1.1 and Corollary 2.1.2, author pp.8–10 (Theorem p.9, Corollary p.10).)

*Needs:* [1.1 The Denef–Pas language](#ld1-denef-pas-language); Mathlib `ValuationSubring`; Mathlib `ValuationSubring.ValueGroup`; Mathlib `HenselianLocalRing`.

<a id="ld1-valued-field-qe"></a>

### 1.3 Relative elimination of valued-field quantifiers

Over henselian Denef–Pas structures of characteristic (0,0), every formula is equivalent, uniformly in such structures, to a finite disjunction of a residue-field formula in ac(f_i(x)) and RF variables, conjoined with a Presburger formula in ord(f_i(x)) and VG variables, with all zero cases separated. Here f_i are finitely many VF polynomials with the named coefficients. RF and VG quantifiers may remain. For a definable parameter base S, the corresponding relative form holds over its parameter diagram.

Prepare the finite polynomial family by induction on degree, refining cells prepared for the derivative family. Partition according to which Taylor terms have least valuation. A unique least term determines the order and angular component. If several least terms cancel, residue characteristic zero makes the relevant integer derivatives units; the henselian root lemma supplies a unique new centre in the prescribed order/angular-component ball. Prove that centre strongly definable using the lower-degree preparation, then recenter so that the linear Taylor term controls the remaining cell. Record each polynomial's angular component by an additional residue parameter. Relative elimination follows by applying this simultaneous preparation to one valued-field quantifier: the fibre's existence conditions are now RF/VG formulas. Separate f_i=0 from nonzero valuation atoms, distribute finite Boolean combinations, and retain RF/VG quantifiers. The parameter form follows by naming the parameter tuple and using its diagram.

The theorem does not assert elimination of residue-field quantifiers. No mixed-characteristic field ℚ_p satisfies the characteristic-(0,0) hypothesis. The parameter diagram preserves the chosen coefficient and angular-component data.

Cluckers–Loeser gives the precise relative elimination statement. The preparation and proof source is Pas 1989, Theorem 3.2, pp.142–143, with proof in §§3.6–3.8, pp.144–155, and Theorem 4.1 and proof, pp.155–157. Its hypotheses are in §2.4, p.140; the henselian root and definable-centre steps are Lemmas 3.5 and 3.7, pp.143–144 and 151–154. Pas uses a value group with ∞ for zero; the guarded presentation above must preserve that case when translating to the integer sort.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §2.1, Theorem 2.1.1 and Corollary 2.1.2, author pp.8–10 (Theorem p.9, Corollary p.10).)

*Needs:* [1.1 The Denef–Pas language](#ld1-denef-pas-language); [1.2 Angular components and valued structures](#ld1-angular-component).

<a id="ld1-ake-equichar-zero"></a>

### 1.4 Ax–Kochen–Ershov in the selected language

For the equicharacteristic-zero henselian ac-valued structures of valued-field-qe, elementary equivalence of their residue fields and of their Presburger value groups, compatibly with all named coefficient data, implies elementary equivalence of their Denef–Pas structures. The reduct conclusion is a source-scoped AKE principle; no assertion is made for arbitrary imperfect residue fields or for all mixed-characteristic henselian fields.

A sentence in the VF-quantifier-free normal form has only RF and VG truth data once its coefficient diagram is fixed. Apply the two elementary equivalences to each finite disjunct. State the coefficient-free special case separately from any relative version.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §2.1, Theorem 2.1.1 and Corollary 2.1.2, author pp.8–10 (Theorem p.9, Corollary p.10).)

*Needs:* [1.3 Relative elimination of valued-field quantifiers](#ld1-valued-field-qe); Mathlib `FirstOrder.Language.Ultraproduct.sentence_realize`.

<a id="ld1-almost-all-transfer"></a>

### 1.5 Finite-formula transfer for large residue characteristic

For a fixed sentence in the coefficient-free Denef–Pas language, its truth in sufficiently large residue-characteristic local fields is determined by the isomorphism class of the residue field, provided the two fields carry the stipulated ac and Presburger structures. There exists a bound N depending on that sentence; this gives the same truth for ℚ_p and ℤ/pℤ((t)) for all sufficiently large primes p. The assertion is eventual, with no claimed effective or uniform-in-all-formulas N.

Assume infinitely many counterexamples with residue characteristics tending to infinity. Choose a nonprincipal ultrafilter on them. The ultraproducts have characteristic (0,0), henselian valuation rings, compatible residue fields and Presburger groups. Apply AKE and native Łoś to contradict the differing fixed sentence. A contradiction to unbounded counterexamples produces an existential finite exceptional set; it does not supply its numerical elements.

The bound depends on a fixed sentence. Small residue characteristics remain excluded unless a separate proof treats them.

([Raf Cluckers and François Loeser, *Constructible exponential functions, motivic Fourier transform and transfer principle*](https://arxiv.org/pdf/math/0512022), §9.2, Proposition 9.2.1 and its proof, author pp.44–46; cf. the integral transfer in Theorem 9.2.4, p.46.)

*Needs:* [1.4 Ax–Kochen–Ershov in the selected language](#ld1-ake-equichar-zero); Mathlib `FirstOrder.Language.Ultraproduct.sentence_realize`; Mathlib `FirstOrder.Language.Ultraproduct.«structure»`.

<a id="ld1-kronecker-dimension"></a>

### 1.6 Kronecker dimension

For a field K of finite absolute transcendence degree, define dim_Kr K to be trdeg over its prime field plus 1 in characteristic zero, and that transcendence degree in positive characteristic. Use native transcendence degree and native prime subfield; do not introduce another finite-generation predicate.

Take the finite natural value of the native transcendence degree and add the characteristic offset. Field isomorphism and algebraic-extension invariance follow from native transcendence-basis comparisons.

The basic interface must include:

- `kronecker_dimension.char_zero`: In characteristic zero, dim_Kr K=trdeg_ℚ K+1.
- `kronecker_dimension.char_pos`: In characteristic p>0, dim_Kr K=trdeg_𝔽_p K.
- `kronecker_dimension.algebraic`: An algebraic extension of fields of finite absolute transcendence degree preserves dim_Kr.
- `kronecker_dimension.iso`: Field isomorphisms preserve Kronecker dimension.

**Checks.**

- `kronecker_dimension.finite`: Every finite field has dimension 0.
- `kronecker_dimension.global`: ℚ and 𝔽_p(t) both have dimension 1.
- `kronecker_dimension.offset`: ℚ(t) has dimension 2, whereas 𝔽_p(t) has dimension 1.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §1, p.1; Proposition 3.2(3), pp.6–7.)

*Needs:* Mathlib `Algebra.trdeg`; Mathlib `Subfield.bot_eq_of_charZero`; Mathlib `Subfield.bot_eq_of_zMod_algebra`.

<a id="ld1-constant-field-classification"></a>

### 1.7 Constants of finitely generated fields

Use the native relative algebraic closure of the prime subfield in K as its constant field. If K is finitely generated as a field over its prime field, that constant field is finite in positive characteristic and a number field in characteristic zero. Field finite generation also gives K as the fraction field of an integral domain finitely generated over the prime ring, after adjoining inverses of finitely many denominators. This does not say that K is finitely generated as a ℤ-algebra.

Choose a finite transcendence basis and a finite algebraic generating tuple; its algebraic constant subextension has finite degree over the prime field. Clear finitely many coefficients and denominators in generators and minimal polynomials. The resulting finite-type domain has fraction field K.

ℚ is field-finitely-generated but is not a finite-type ℤ-algebra. The constants in ℚ(√2)(t) are ℚ(√2), not merely ℚ.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §1, p.1; §3, Proposition 3.2 and its setup, pp.5–7.)

*Needs:* [1.6 Kronecker dimension](#ld1-kronecker-dimension); Mathlib `IntermediateField.FG`.

<a id="ld1-prime-divisor"></a>

### 1.8 Geometric and arithmetic prime divisors

For a finitely generated field K, a prime divisor is a nontrivial discrete valuation, considered up to valuation-ring equivalence, whose residue field κ has dim_Kr κ+1=dim_Kr K. It is geometric when char κ=char K and arithmetic otherwise. Discreteness is part of this predicate, while the separate residue-dimension criterion proves it from weaker input.

Bundle the native valuation subring and the nontriviality, discreteness and residue-dimension properties. Use the valuation ring as the invariant presentation; any normalized additive value map is comparison data, not part of divisor equality.

The basic interface must include:

- `prime_divisor.residue_dim`: The residue Kronecker dimension is exactly one smaller.
- `prime_divisor.equivalent`: Equivalent valuations determine the same divisor data on their common valuation ring.
- `prime_divisor.geometric`: Geometric is equality of field and residue characteristics.
- `prime_divisor.arithmetic`: Arithmetic is the complementary residue-characteristic drop for a divisor.

**Checks.**

- `prime_divisor.t_adic`: The t-adic valuation of 𝔽_p(t) is geometric.
- `prime_divisor.p_adic`: The p-adic valuation of ℚ is arithmetic.
- `prime_divisor.trivial`: The trivial valuation on K fails nontriviality and does not drop dimension.
- `prime_divisor.nondiscrete`: The valuation on 𝔽_p(t^(1/p^∞)) with value group ℤ[1/p] is not a prime divisor of a finitely generated field.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §1, p.2 before hypothesis (H_d).)

*Needs:* [1.6 Kronecker dimension](#ld1-kronecker-dimension); Mathlib `ValuationSubring`; Mathlib `ValuationSubring.ValueGroup`.

<a id="ld1-divisorial-discreteness"></a>

### 1.9 Residue dimension detects divisorial valuations

Let K be finitely generated over its prime field and v any valuation. If dim_Kr(Kv)+1=dim_Kr(K), then its valuation ring is a DVR and Kv is finitely generated over its prime field; hence v is a prime divisor. Discreteness, finite rank and residue finite generation are conclusions. Finite generation of K is essential.

The equality excludes the trivial valuation. In equal characteristic lift a residue transcendence basis to units; the prime field is trivially valued. Adjoin an element of positive value. Distinct powers have different values, so this element is transcendental over the lifted residue subfield. Dimension equality makes K finite over that one-variable rational subfield. In mixed characteristic with residue characteristic p, lift a residue transcendence basis. The restriction to ℚ is a multiple of v_p; reduction of polynomials with unit coefficients identifies the Gauss value group as ℤ·v(p) and its residue as a rational field over 𝔽_p. K is finite over this Gauss subfield. For a finite valued-field extension, choose elements of distinct value cosets and independent residue lifts; their products are linearly independent. Thus e·f≤[K:K₀], giving finite value-group index and finite residue degree. An ordered abelian group with a finite-index cyclic subgroup is cyclic: embed it in (1/e)ℤ by multiplying by the finite index. Convert a least positive generator into the native DVR criterion. The finite residue extension of a rational field is finitely generated.

No hypothesis assumes the value group is already cyclic. The infinite purely inseparable tower 𝔽_p(t^(1/p^∞)) shows why finite generation cannot be dropped.

Use dim_Kr(Kv)+1=dim_Kr(K), together with the finite-generation hypotheses, as the exact dimension equality. A formula using truncated natural subtraction alone accepts the trivial valuation of a finite field and is therefore unsuitable.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §1, p.2, Engler–Prestel Theorem 3.4.3 citation; direct finite-basis proof specified here.)

*Needs:* [1.6 Kronecker dimension](#ld1-kronecker-dimension); [1.8 Geometric and arithmetic prime divisors](#ld1-prime-divisor); Mathlib `ValuationSubring`.

<a id="ld1-valuation-dimension-drop"></a>

### 1.10 Kronecker dimension drops under valuation

For any field K of finite absolute transcendence degree and any nontrivial valuation v, dim_Kr(Kv)<dim_Kr K. This includes non-discrete valuations and fields that are not finitely generated. In characteristic (0,0), a henselian coefficient-field route is allowed only after its existence theorem is supplied; the direct residue-lift proof avoids that extra input.

In equal characteristic the prime field is trivially valued; lift any finite algebraically independent residue tuple to units. Its rational subfield is trivially valued, and an element of positive value is transcendental over it by the unique-smallest-value argument. In mixed characteristic the lifted residue tuple is algebraically independent over ℚ: divide any polynomial relation by a coefficient of least p-adic valuation and reduce to a nonzero polynomial over 𝔽_p. The characteristic offset supplies the strict inequality. Apply these finite-tuple inequalities to the finite absolute transcendence degrees. No completion, discreteness, or coefficient field is needed.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), Proposition 3.2(3), proof p.7 (arXiv v2).)

*Needs:* [1.6 Kronecker dimension](#ld1-kronecker-dimension); Mathlib `ValuationSubring`.

<a id="ld1-henselization"></a>

### 1.11 Henselizations with valuation embeddings

For a field F with a chosen valuation subring O, construct a chosen henselization F^h with a valuation-preserving embedding F→F^h, separable algebraic and immediate, initial among valuation-preserving embeddings into henselian valued extensions. Its residue field and value group identify with those of F. A completion is a different object and is not used as this construction.

Take the henselization O→O^h of the local ring O and put F^h=Frac(O^h). O^h is henselian, a filtered colimit of étale O-algebras with maximal ideal generated by that of O and the same residue field (Stacks, Lemma 10.155.1, tag 04GN); for a valuation ring, O⊂O^h is an extension of valuation rings inducing a bijection on value groups (Stacks, Lemma 15.125.6, tag 0ASK). Étale algebras over O have separable algebraic generic fibres, so F^h/F is separable algebraic. A local homomorphism from O to a henselian local ring factors uniquely through O^h (Stacks, Lemma 10.155.6, tag 04GS, applied with S=S^h), which is the initial valued-embedding property; the decomposition-field description (fixed field of the decomposition group of an extension of the valuation to F^sep) is an equivalent presentation and is not needed. No rank hypothesis enters.

The basic interface must include:

- `henselization.embed`: F embeds as a valued subfield of F^h.
- `henselization.immediate`: Residue field and actual value group are unchanged.
- `henselization.lift`: Every valued embedding from F into a henselian valued extension extends uniquely through F^h.
- `henselization.already_henselian`: If O is already henselian, its henselization is canonically isomorphic as a valued F-field.

**Checks.**

- `henselization.henselian_field`: A complete discretely valued field compares isomorphically with its henselization.
- `henselization.not_completion`: The henselization of ℚ at p is algebraic over ℚ, whereas ℚ_p is not algebraic over ℚ.
- `henselization.immediate`: Neither the residue field nor value group gains elements in F^h.
- `henselization.trivial`: For the trivial valuation, a field is already henselian and its henselization is itself.

Existence, separability, immediacy and the initial valued-embedding property hold at arbitrary rank by the cited lemmas; Dittmann–Pop invoke this theory without reproving it. A completion cannot discharge this target: it is not algebraic over F.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §2(b); Proposition 3.2 and Lemma 3.9, pp.5–7,11–12; [The Stacks project](https://stacks.math.columbia.edu/tag/0BSK), Lemmas 10.155.1 and 10.155.6 (tags 04GN, 04GS) and [Lemma 15.125.6](https://stacks.math.columbia.edu/tag/0ASK) (tag 0ASK).)

*Needs:* Mathlib `ValuationSubring`; Mathlib `ValuationSubring.ValueGroup`; Mathlib `HenselianLocalRing`.

<a id="ld1-patch-field-dictionary"></a>

### 1.12 Patch membership on valuation rings

Import the existing valuation-spectrum/patch-topology ownership in AdicSpaces. For valuation rings of a fixed field F, compare its patch topology with the field membership subbasis U_a={O:a∈O} and their complements. Finite conjunctions of membership and nonmembership are clopen. This is a dictionary into the existing spectrum, not a new valuation-spectrum construction.

Use Φ(O)=ofValuation(O.valuation). Native `ValuationSubring.valuation_le_one_iff` identifies Φ⁻¹(basicOpen(a,1)) with U_a. More generally Φ⁻¹(basicOpen(a,b)) is U_(a/b) for b≠0 and is empty for b=0. Thus these inverse images and their complements generate exactly the membership patch topology. Every valuation on a field has zero support; its native valuation subring and `Valuation.isEquiv_valuation_valuationSubring` give the inverse comparison on spectrum points. Equivalent valuations have the same subring, so this is independent of the representative. Pull back the existing patch-clopen basic opens to obtain the finite-conjunction assertion. In particular U_0 is the whole space, while a basic open with zero denominator is empty.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), §3C, p.11, opening paragraph.)

*Needs:* Mathlib `ValuationSubring`; [TauCetiRoadmap.AdicSpaces, layer 1 valuation spectra and continuous valuations](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/AdicSpaces/README.md#layer-1-valuation-spectra-and-continuous-valuations).

<a id="ld1-henselian-simple-generator"></a>

### 1.13 A simple-reduction generator in a henselization

If E/F is a finite subextension of the henselization for a fixed valuation w, choose an integral primitive element η for E/F whose monic minimal polynomial has η reducing to 1 at the distinguished prolongation and has simple root 1 in its reduction. The coefficient and simple-root conditions can be enforced by finitely many valuation-ring membership and unit conditions.

Pass to finite normal closure and track the finitely many primes above the chosen valuation prime. The henselization embedding selects a decomposition orbit. Use the finite-prime Chinese remainder construction to choose an element with residue 1 at the selected prime and 0 at the others, then arrange primitivity. The conjugate polynomial reduces as X^(n−1)(X−1) at the selected prime, so 1 is simple. Translate integral coefficients and derivative-unit conditions into a finite clopen neighborhood.

The required simple-reduction generator is stronger than an arbitrary primitive element. Apply Kuhlmann–Novacoski Theorem 1.2 to the valuation ring and the chosen finite subextension of the henselization, which lies in the absolute inertia field. In the proof's CRT construction take the residue generator to be 1, since this residue extension is trivial. Lemmas 3.2–3.3 identify the distinguished conjugate and force every other conjugate to reduce to 0; the distinct conjugates certify primitivity. This gives the stated reduction, including degree one. It uses no rank-one or discreteness assumption.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), Lemma 3.9(1), pp.11–12; [Franz-Viktor Kuhlmann and Josnei Novacoski, *Henselian elements*](https://www.fvkuhlmann.de/Henselt.pdf), Theorem 1.2, p.2; Definition 3.1 and Lemmas 3.2–3.3, pp.9–11; proof of Theorem 1.2, p.11.)

*Needs:* [1.11 Henselizations with valuation embeddings](#ld1-henselization); [1.12 Patch membership on valuation rings](#ld1-patch-field-dictionary).

<a id="ld1-henselian-embedding-open"></a>

### 1.14 Henselian embeddability is patch open

For a finite extension E/F, the set of valuations w of F for which E admits a valuation-compatible F-embedding into the chosen w-henselization is open in the patch topology. Near any such w, a monic primitive polynomial with an integral simple residue root gives a finite clopen neighborhood contained in that set.

Use henselian-simple-generator at a point w in the locus. Impose the finitely many coefficient-integrality, root-congruence and derivative-unit conditions. At every valuation in that clopen neighborhood, native HenselianLocalRing lifting gives a root in its henselization. Primitivity identifies an F-embedding of E.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), Lemma 3.9(1), pp.11–12.)

*Needs:* [1.13 A simple-reduction generator in a henselization](#ld1-henselian-simple-generator); [1.12 Patch membership on valuation rings](#ld1-patch-field-dictionary); [1.11 Henselizations with valuation embeddings](#ld1-henselization); Mathlib `HenselianLocalRing`.

<a id="ld1-coarsening-prime"></a>

### 1.15 Coarsening from an infinitely large coefficient

Let w:F×→Γ be an additive valuation, a_d∈F×, d=w(a_d)>0, and assume 0≤w(a_i) and Nw(a_i)<d for every positive integer N and each nonzero lower coefficient a_i. Put Δ={γ∈Γ: N|γ|<d for every N>0} and p={0}∪{x∈O_w∖{0}: d≤Nw(x) for some N>0}. Then Δ is convex, p is prime, a_d∈p and every nonzero lower coefficient a_i is outside p. The coarsening by Γ/Δ has ring (O_w)_p. Compare to the current native coarsening interface, retaining Γ rather than imposing rank one.

Closure and convexity of Δ follow by applying the bound with 2N to each summand; the domination hypotheses put lower coefficients in Δ and d outside it. For nonnegative values, membership outside Δ is the displayed existential cut. Valuation inequalities prove ideal closure, and if neither value crosses the cut then neither does their sum, proving primality. The quotient valuation ring equals localization at p: values in Δ become units, and the ordered quotient has nonnegative image exactly when a denominator outside p clears the original value. Reuse current coarsenByUnits rather than reconstructing it.

The basic interface must include:

- `coarsening_prime.prime`: The displayed existential valuation cut is prime; the distinguished coefficient lies in it and lower coefficients do not.
- `coarsening_prime.ring`: The coarsened valuation ring is O_w localized at that prime, using the actual value group.
- `coarsening_prime.inclusion`: O_w is contained in the coarser valuation ring; the inclusion points toward coarsening.
- `coarsening_prime.units`: Elements in the killed convex subgroup become units in the coarsened valuation ring.

**Checks.**

- `coarsening_prime.rank_two`: For lexicographic ℤ², quotienting the smaller convex subgroup yields the first-coordinate valuation.
- `coarsening_prime.direction`: The coarsened valuation ring contains the original ring; reversing this inclusion fails on a rank-two example.
- `coarsening_prime.zero_lower_coefficient`: A zero lower coefficient belongs to p, so the outside-p conclusion is restricted to nonzero lower coefficients.
- `coarsening_prime.infinitesimal_lower_value`: For lexicographic ℤ² with d=(1,0) and a lower coefficient of value (0,1), every positive multiple of the lower value is below d, and the lower coefficient becomes a unit after coarsening.

Only the cut, convex-subgroup identification and valuation-ring localization comparison are new here; the general quotient coarsening is the existing import identified under Scope and ownership. Prove the comparison without assuming the ordered group is archimedean or integer-valued.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), Proposition 3.10(a), p.13, and its prime-ideal construction.)

*Needs:* Mathlib `ValuationSubring`; Mathlib `ValuationSubring.ValueGroup`; [1.12 Patch membership on valuation rings](#ld1-patch-field-dictionary).

<a id="ld1-coarsening-henselian-inclusion"></a>

### 1.16 Henselizations under valuation coarsening

If w is finer than v on F, then under compatible choices inside a common separable closure, the v-henselization embeds as a valued F-subfield of the w-henselization. In particular the localization coarsening in Proposition 3.10 has the inclusion in this direction. The induced residual valuation must also be recorded when composing the places.

A henselian valuation remains henselian after coarsening, so the w-henselization with the coarsened valuation is a henselian valued v-extension. Apply the initial property of the v-henselization and use compatible extensions in the separable closure to identify the embedding with inclusion.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), Proposition 3.10(a), p.13.)

*Needs:* [1.11 Henselizations with valuation embeddings](#ld1-henselization); [1.15 Coarsening from an infinitely large coefficient](#ld1-coarsening-prime).

<a id="ld1-residue-interpretation"></a>

### 1.17 Residue fields of definable valuations

If the valuation ring O⊂K is definable in the field K over a finite tuple a, interpret its residue field using D=O and E(x,y) iff x−y belongs to the maximal ideal, where m={x∈O:x=0 or x⁻¹∉O}. Ring operation graphs are induced from O. Parameters remain a; residue representatives are not selected.

Use the field formula for nonunits to define m, then translate quotient equality as x−y∈m. The native residue map identifies the quotient with IsLocalRing.ResidueField O, and symbol graphs descend because m is an ideal.

The basic interface must include:

- `residue_interpretation.kernel`: Two integral elements have the same residue exactly when their difference is in m.
- `residue_interpretation.native_residue`: The interpreted quotient is ring-isomorphic to the native residue field.
- `residue_interpretation.translate`: A residue-field formula translates to a field formula on integral representatives.
- `residue_interpretation.parameters`: The ring-defining tuple remains explicit in the interpreted residue language.

**Checks.**

- `residue_interpretation.p_adic`: For the p-adic ring in ℚ, the interpreted residue field has p elements.
- `residue_interpretation.unit`: The unit 1 does not lie in the kernel ideal.
- `residue_interpretation.same_residue`: x and x+u have equal classes whenever u lies in m.
- `residue_interpretation.no_section`: The construction works without a definable field section of the residue map.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), Fact 5.2, pp.16–17.)

*Needs:* Mathlib `ValuationSubring`; [0.1 Interpretations on definable quotients](#ld0-interpretation); [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics).

<a id="ld1-composition-definability"></a>

### 1.18 Composite valuations are definable by translation

If O_v is definable in K and O_u is definable in the interpreted residue field Kv, then the composite valuation ring is {x∈O_v:res_v(x)∈O_u}. It is definable over the tuple for O_v together with chosen integral representatives of the tuple for O_u. Its residue is (Kv)u. This is a pullback of valuation rings, with the coarser ring O_v containing the composite ring.

Translate the residual ring-membership formula through residue-interpretation, keeping x∈O_v. Prove the pullback valuation property by splitting whether x is a unit of O_v; identify its ideal and residue quotient by composing residue maps.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), Fact 5.2, pp.16–17.)

*Needs:* [1.17 Residue fields of definable valuations](#ld1-residue-interpretation); [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics); Mathlib `ValuationSubring`.

<a id="ld1-maximal-geometric-flags"></a>

### 1.19 Full-rank geometric flags

Let K be finitely generated of characteristic zero and trdeg_ℚ K=e. A maximal chain of e geometric prime divisors gives a composite valuation with value group order-isomorphic to lexicographic ℤ^e and number-field final residue. Conversely construct such chains from a transcendence flag and prolongation to a finite extension. This family is named G_T here: the source W_T notation already denotes rank-one divisors and is not reused for the higher-rank composite.

Choose successive variable-adic places of a rational subfield and prolong them through the finite extension. Each step has finite residue extension and discrete value group. Iterate the residue-dimension criterion. The successive value-group extensions split as abelian groups because each quotient is ℤ; the order is the flag lexicographic order. Final transcendence degree zero and finite generation give a number field. Keep rank-one and composite flags as different families.

Call the composite family G_T and state its rank e; a length-e composite is not a member of the rank-one divisor family when e>1. In the avoidance step choose the nonzero residue-polynomial locus inside the torus (G_m)^e over the algebraic closure of the finite residue field. This supplies nonzero coordinates, hence roots of unity of order prime to the characteristic, before lifting (Dittmann–Pop §5, pp.16–17).

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), Proposition 5.1 proof, p.16; Fact 5.2, pp.16–17.)

*Needs:* [1.8 Geometric and arithmetic prime divisors](#ld1-prime-divisor); [1.9 Residue dimension detects divisorial valuations](#ld1-divisorial-discreteness); [1.18 Composite valuations are definable by translation](#ld1-composition-definability).

<a id="ld1-quadratic-root-fields"></a>

### 1.20 Auxiliary quadratic root fields

For the nonzero parameters in Dittmann–Pop Notations 4.1(3), choose actual root fields F(α), F(β) with α²−α=a_d/θ² and β²−β=τ²/a_d. Use their separable minimal-polynomial factors and finite coordinate bases. Each extension may be trivial. Translate first-order ring formulas in these fields into F-formulas by their finite multiplication tables; never use F[X]/(X²−X−c) as a field when that polynomial is reducible.

Separate degree one and degree two minimal polynomials. Represent elements in a basis and write equality and operations coordinatewise. For every quantified variable quantify its one or two coordinates. Transport each atomic formula by the multiplication table, then induct on formulas.

The basic interface must include:

- `quadratic_root_fields.root`: The selected root satisfies the specified Artin–Schreier-shaped quadratic equation.
- `quadratic_root_fields.degree`: The actual root extension has degree 1 or 2; reducibility is handled by the degree-one branch.
- `quadratic_root_fields.translate`: Coordinate translation preserves realization of every ring formula with transported parameters.
- `quadratic_root_fields.basis_change`: Changing the finite basis gives equivalent translated formulas through its linear coordinate map.

**Checks.**

- `quadratic_root_fields.split`: For c=0 the chosen root field of X²−X is F, while its quotient algebra is F×F in every characteristic. In characteristic two its roots 0 and 1 are still distinct and its derivative is 1.
- `quadratic_root_fields.nonsplit`: Over ℚ, a root of X²−X−1 gives a degree-two field.
- `quadratic_root_fields.denominator`: The construction rejects θ=0 or a_d=0 where the displayed coefficients are undefined.
- `quadratic_root_fields.semantics`: The translated assertion α²−α=c is true exactly because the chosen multiplication table satisfies its minimal polynomial.

([Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2), Notations 4.1(3)–(4), p.13; opening of §4.)

*Needs:* Mathlib `FirstOrder.Language.ring`; [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics).

### Examples

In a lexicographically ordered rank-two value group, d=(1,0) dominates every positive multiple of (0,1). Quotienting by the corresponding convex subgroup makes an element of value (0,1) a unit. The valuation ring grows under coarsening, and the coarser henselization embeds in the finer henselization. For k((t)), ac_t(t³(2+t))=2 when char k≠2; changing t to εt multiplies that angular component by res(ε)⁻³.

### Dependencies

Mathlib `FirstOrder.Language`; Mathlib `FirstOrder.Language.Formula`; Mathlib `FirstOrder.Language.ring`; [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics); Mathlib `ValuationSubring`; Mathlib `ValuationSubring.ValueGroup`; Mathlib `HenselianLocalRing`; Mathlib `FirstOrder.Language.Ultraproduct.sentence_realize`; Mathlib `FirstOrder.Language.Ultraproduct.«structure»`; Mathlib `Algebra.trdeg`; Mathlib `Subfield.bot_eq_of_charZero`; Mathlib `Subfield.bot_eq_of_zMod_algebra`; Mathlib `IntermediateField.FG`; [TauCetiRoadmap.AdicSpaces, layer 1 valuation spectra and continuous valuations](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/AdicSpaces/README.md#layer-1-valuation-spectra-and-continuous-valuations); [0.1 Interpretations on definable quotients](#ld0-interpretation).

## Layer 2: local constructible integration and geometric measure

Cell fibres and normalized Haar measure supply the local integral. Construct the analytic substitution and chart-gluing theory over the local field itself, then use differential forms to relate volumes to residue counts. Integrability remains a hypothesis throughout.

<a id="ld2-cells"></a>

### 2.1 Denef–Pas cells and presentations

Over a definable base S, a presented 0-cell has z=c(y), and a presented 1-cell has ord(z−c(y))=α(y) and ac(z−c(y))=ξ(y) with ξ(y)≠0. The presentation is a definable isomorphism over S to such a cell whose base C lies in S×RF^n×VG^r; auxiliary residue and integer variables are permitted. The center is VF-valued, α is VG-valued, and ξ is RF-valued. A cell is the underlying subassignment together with such a presentation, not just an interval or a ball without angular data.

Form the displayed definable graphs and fibres in the fixed language. The presentation records a definable inverse and the base projection; refinement transports a presentation rather than assuming a definable VF choice function.

The basic interface must include:

- `cells.zero_fibre`: A 0-cell fibre is one point, z=c(y).
- `cells.one_fibre`: A nonempty 1-cell fixes a nonzero angular component and one valuation of z−c(y).
- `cells.presentation`: The presentation and inverse are definable over S and commute with the VF coordinate projection.
- `cells.refine`: A definable partition of the auxiliary base pulls back to a compatible partition of the cell.

**Checks.**

- `cells.one_ball`: Over a local field with q residue elements, ord z=0 and ac z=1 has Haar measure q⁻¹.
- `cells.zero_cell`: The graph z=0 is a 0-cell and has zero one-dimensional Haar measure.
- `cells.zero_ac`: A putative 1-cell with ξ=0 is invalid; it must not model an annulus.
- `cells.auxiliary`: The units split into q−1 angular-component fibres after residue specialization, not into one fibre of volume q⁻¹.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §7.1, unnumbered 0-cell, 1-cell and presentation definitions, p.37; Remark 7.1.1.)

*Needs:* [1.1 The Denef–Pas language](#ld1-denef-pas-language); [1.2 Angular components and valued structures](#ld1-angular-component).

<a id="ld2-cell-decomposition"></a>

### 2.2 Cell decomposition and preparation

In the equicharacteristic-zero Denef–Pas setting, a definable subset of S×VF admits a finite partition into presented 0- and 1-cells. The partition can be chosen adapted to finitely many definable integer-valued functions and positive constructible functions: after the presentation, their relevant values factor through the auxiliary base. For the selected local-field specialization the same fixed formulas give cells for sufficiently large residue characteristic; no all-prime assertion is inferred.

Apply the relative valued-field preparation theorem to the finitely many polynomials in the quantifier-eliminated formulas. Record their orders and angular components in auxiliary variables, then partition by the finitely many zero/nonzero patterns. Use the factorization over the resulting base to prepare integer-valued and constructible functions, with the degree induction and henselian recentering specified in §1.3.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), Theorem 7.2.1 and proof, pp.37–39; [Johan Pas, *Uniform p-adic cell decomposition and local zeta functions*](https://gdz.sub.uni-goettingen.de/download/pdf/PPN243919689_0399/LOG_0010.pdf), Theorem 3.2, pp.142–143; proof in §§3.6–3.8, pp.144–155.)

*Needs:* [2.1 Denef–Pas cells and presentations](#ld2-cells); [1.3 Relative elimination of valued-field quantifiers](#ld1-valued-field-qe).

<a id="ld2-local-constructible-functions"></a>

### 2.3 Local constructible functions

For a fixed nonarchimedean local field F with residue cardinal q, use the ℚ-algebra generated by indicator functions of the chosen DP-definable sets, cardinalities of finite definable residue-field fibres, integer-valued definable functions α, and q^β for integer-valued definable β; allow the scalar denominators (1−q^(−i))⁻¹ for i>0. Definability refers to the specified coefficient and uniformizer data. Integrability is an extra property of a function, never built into this ring.

Evaluate the indicated generators as ordinary functions on local-field points and take the generated subalgebra. Comparison with specialization is by the values of each generator; no injectivity of a motivic realization is asserted.

The basic interface must include:

- `local_constructible_functions.indicator`: A fixed definable subset contributes its indicator function.
- `local_constructible_functions.pullback`: Composition with a definable map preserves the constructible algebra.
- `local_constructible_functions.specialize`: Motivic L^β and integer-function generators specialize to q^β and α.
- `local_constructible_functions.integrability`: Absolute integrability is a separate predicate, and need not hold for the constant function 1 on all of F.

**Checks.**

- `local_constructible_functions.ball`: The indicator of O_F is constructible and has integral 1 with the chosen normalization.
- `local_constructible_functions.unbounded`: The constant function 1 on F is constructible but not integrable.
- `local_constructible_functions.geometric`: The sum over n≥0 of q^(−n) equals (1−q⁻¹)⁻¹.
- `local_constructible_functions.empty`: The indicator of the empty definable set is zero.

([Raf Cluckers and François Loeser, *Constructible exponential functions, motivic Fourier transform and transfer principle*](https://arxiv.org/pdf/math/0512022), §9.1, specialization conventions, pp.40–42; Cluckers–Loeser 2008 §4.1 and §5.2.)

*Needs:* [2.1 Denef–Pas cells and presentations](#ld2-cells); [1.1 The Denef–Pas language](#ld1-denef-pas-language).

<a id="ld2-local-integration"></a>

### 2.4 Constructible local integration

Normalize additive Haar measure on F^m by vol(O_F^m)=1. For a chosen definable family X⊆S×F^m and a local constructible function φ on X, the integral s↦∫_{X_s}φ(s,x)dx is constructible on a specified definable parameter locus on which absolute integrability has been proved, in the source-scoped large-residue-characteristic family. The normalization for a 1-cell fibre ord(z−c)=a, ac(z−c)=ξ≠0 is q^(−a−1). Zero-dimensional sets are null for positive-dimensional Haar measure.

For a fixed uniform constructible presentation φ, extended by zero off X, also construct uniform constructible functions h and G on S and an N such that, for every allowed local field F of residue characteristic greater than N and every s∈S(F), h_F(s)=0 if and only if φ_F(s,−) is absolutely integrable, and G_F(s) is its integral whenever this condition holds. The value of G outside that locus is unspecified. Construct an everywhere fibre-integrable constructible replacement agreeing with φ on every integrable fibre. Clear the fixed rational coefficient denominators before applying the integral-coefficient motivic theorem, and divide the resulting integral by that nonzero constant. The full integrability locus is a zero locus of a constructible function; it need not be definable. Restriction to a certified definable integrability domain recovers the initial assertion.

Use finite cell preparation and integrate each 1-cell by q^(−a−1). Remove lower-dimensional contributions for Haar measure, while retaining them in zero-dimensional counting measures. Reduce the remaining value-group coordinates to Presburger summation of polynomial-exponential terms; a convergent geometric series produces precisely the inverted denominators. For the full locus and replacement, use residual parameterization and the Presburger zero-locus/interpolation argument of Cluckers–Gordon–Halupczok §4.5. Descend the residue parameters by finite sums of squares, whose vanishing means that every summand vanishes. Integrate the replacement motivically and specialize to obtain G. This additional interpolation step is not supplied by the specialization theorem alone.

For Presburger summation, use parametric rectilinearization to reduce fibres to Λ_s×ℕ^ℓ, with Λ_s finite, and functions to finite sums c_i(s)y^a_i q^(b_i·y), combining repeated exponent pairs first. On an unbounded coordinate, terms with b_ij≥0 obstruct absolute summability unless their combined coefficient function vanishes identically. Certify that vanishing by a constructible zero locus, and discard those terms to obtain the everywhere-summable replacement. Finite fibres are summed directly; on ℕ, differentiate the convergent geometric series to sum each y^a q^(by) with b<0. The finite bound on zeros needed for coefficient detection can be proved here for the fixed nonnegative integer powers by repeated Rolle arguments after factoring an exponential, with bound Σ_b(deg P_b+1)−1 for a nonzero Σ_b P_b(y)q^(by). This avoids making local integration depend on the o-minimality theorem of Layer 6. Rectilinearization with parameters is Cluckers' theorem: a ∅-definable Presburger set in G^(m+n) has a finite definable partition such that on each piece a definable family of linear bijections, indexed by the parameter, maps the fibre onto ℕ^ℓ×Λ_λ with Λ_λ bounded and ℓ fixed on the piece (Cluckers, *Presburger sets and p-minimal fields*, Theorem 3 and proof, pp.6–7 of arXiv:math/0206197; induction on the fibre dimension through Theorem 2).

**Negative control.** Let a,b,c range over the value-group integers and let φ(a,b,c;x)=ab−c on all of F. Products of integer-valued generators are constructible. The fibre is integrable exactly when c=ab, because the zero function is integrable and any nonzero constant on F is not. This multiplication graph is not Presburger-definable. Thus an API returning a definable set for every integrability locus would be false, even though h(a,b,c)=ab−c is a constructible zero-locus certificate.

Prove the full Presburger preparation/summation and interpolation arguments without inferring an effective residue bound. Local diffeomorphisms use the locally analytic inverse function theorem over F (Schneider, *p-Adic Lie Groups*, Proposition 6.4, p.42) and the determinant substitution of §2.5.

([Raf Cluckers and François Loeser, *Constructible exponential functions, motivic Fourier transform and transfer principle*](https://arxiv.org/pdf/math/0512022), Theorem 9.1.5, p.43, with §9.1 conventions, pp.40–42; Cluckers–Loeser 2008 §9.1, pp.49–53; [Raf Cluckers, Julia Gordon and Immanuel Halupczok, *Integrability of oscillatory functions on local fields: transfer principles*](https://rcluckers.perso.math.cnrs.fr/prints/CGH.pdf), Theorems 2.1.3–2.1.6 and proofs, pp.1554–1558, uniform-base versions §2.2, pp.1559–1560; Theorems 4.3.1–4.3.3, pp.1585–1586; proofs in §4.5, pp.1593–1595 and 1597; [Raf Cluckers, *Presburger sets and p-minimal fields*](https://arxiv.org/pdf/math/0206197), Theorems 2–3, pp.5–7.)

*Needs:* [2.2 Cell decomposition and preparation](#ld2-cell-decomposition); [2.3 Local constructible functions](#ld2-local-constructible-functions).

<a id="ld2-jacobian-change-variables"></a>

### 2.5 Jacobian change of variables

For a definable isomorphism f:X→Y between equal-dimensional local-field definable sets, restrict to definable analytic loci of full dimension where the derivative is invertible. For an absolutely integrable φ on Y, ∫_Y φ(y)dy=∫_X φ(f(x))|det Df(x)|dx with respect to the chosen coordinate-volume forms. Discarded lower-dimensional loci are null only for the matching positive-dimensional measure; lower-dimensional graded integration is kept separate.

Refine to analytic cells with constant order of the Jacobian and ball-to-ball mapping property. Apply the local analytic substitution theorem in each chart, then sum over the partition. Record the sign convention |det|=q^(−ord det). The local substitution theorem for a locally analytic isomorphism f of open subsets of Fⁿ is proved directly: by strict differentiability and the ultrametric inequality, on a small enough ball around x₀ the remainder f(x)−f(x₀)−Df(x₀)(x−x₀) is smaller than every value of Df(x₀) on the corresponding sphere, so f maps each smaller ball x₁+π^kO_Fⁿ onto f(x₁)+Df(x₀)(π^kO_Fⁿ) (Schneider, *p-Adic Lie Groups*, Proposition 6.4 and its proof, p.42); a linear map scales normalized Haar measure on Fⁿ by |det|, and summing over a partition into such balls gives the formula. Lower-dimensional loci are null by §2.8; generic real manifold theory does not supply these steps. CL Proposition 9.3.2 treats one valued-field coordinate and is not used for the higher-dimensional analytic theorem. Fix the determinant direction by x=πu as in the layer example.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), Theorem 7.5.3 and Corollary 7.5.4, pp.43–45; Proposition 9.3.2 (relative dimension one), pp.58–59; Theorem 12.1.1 (general motivic isomorphism), p.74.)

*Needs:* [2.2 Cell decomposition and preparation](#ld2-cell-decomposition); [2.4 Constructible local integration](#ld2-local-integration).

<a id="ld2-igusa-rationality"></a>

### 2.6 Igusa and local Poincaré rationality

For fixed integral polynomial data f in m variables over O_F, let Z_f(T)=∑_{k≥0}vol{x∈O_F^m:ord f(x)=k}T^k, omitting f(x)=0. For each F in the fixed sufficiently large-residue-characteristic family this is a rational function with coefficients in ℚ, arising from a uniform constructible coefficient algebra, with denominators products of 1−q^a T^b (a∈ℤ,b>0), after cancellation as necessary. Z_f(q^(−s)) is initially the usual Igusa integral for Re(s)>0. The normalized congruence Poincaré series A_f(T)=∑_{n≥0}q^(−mn)#\{x mod π^n:f(x)=0 mod π^n\}T^n is rational as well, with TZ_f(T)=1+(T−1)A_f(T). Singular zero loci and the identically zero polynomial are treated by this formal identity.

After cell preparation, orders and volumes are affine Presburger data, so sum the resulting geometric progressions with polynomial factors. Write a_n=vol{ord f≥n}; then vol{ord f=k}=a_k−a_(k+1), with a_0=1. Summing coefficientwise gives T Z=1+(T−1)A without assuming the zero locus has measure zero. State possible denominator factors separately from genuine poles: cancellation can remove a factor. The analytic integral and its meromorphic extension in s require the substitution T=q^(−s).

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), Theorem 14.4.1, p.80; Theorem 4.4.1, p.21; specialization Theorem 16.4.1, p.90; own coefficientwise tail identity.)

*Needs:* [2.4 Constructible local integration](#ld2-local-integration); [2.5 Jacobian change of variables](#ld2-jacobian-change-variables).

<a id="ld2-gauge-measure"></a>

### 2.7 Measures attached to gauge forms

Let F be a nonarchimedean local field, X a second-countable Hausdorff F-analytic manifold of pure dimension d, r≥1, and ω a section of (Ω_X^d)⊗r. In a chart write ω=f(x)(dx₁∧⋯∧dx_d)⊗r and assign density |f(x)|^(1/r) against normalized additive Haar measure. Glue these local measures by analytic substitution. When ω never vanishes call it an r-gauge form. For a geometrically reduced algebraic X, extend the measure on its smooth locus by zero across the singular locus when using the stated Yasuda-style measure.

In a chart construct the density-weighted measure. The determinant transformation of an r-fold top form exactly cancels the r-th root after substitution. Use measure gluing on a countable chart cover after the chart substitution theorem of §2.5; use a disjoint measurable refinement for uniqueness. For the singular extension, define zero on the complement of the smooth locus. Geometric reducedness gives the required full-dimensional smooth locus; null-set comparisons are §2.8. For an algebraic X, the F-points of its smooth locus form an F-analytic manifold: cover X by finitely many affine opens, embed each as a closed subvariety of affine space, and at each point choose coordinates whose differentials restrict to a basis of the cotangent space; the locally analytic inverse function theorem makes the projection a chart (Schneider, *p-Adic Lie Groups*, Proposition 6.4, p.42). Two such charts differ by a locally analytic isomorphism, so the measure of §2.7 does not depend on the affine cover, the closed embeddings or the coordinate choice, by `gauge_measure.pullback`.

The basic interface must include:

- `gauge_measure.chart_density`: The measure in a chart is |f|^(1/r) times normalized Haar measure.
- `gauge_measure.pullback`: An analytic isomorphism pulls the gauge measure back to the measure of its pulled-back form.
- `gauge_measure.unit_scale`: Multiplication by an analytic unit of norm one leaves the measure unchanged.
- `gauge_measure.power`: Replacing a 1-gauge form η by η⊗r leaves its measure unchanged.

**Checks.**

- `gauge_measure.affine`: For ω=dx₁∧⋯∧dx_d on O_F^d, the volume is 1.
- `gauge_measure.root_factor`: For ω=π²(dx)⊗2, the volume of O_F is q⁻¹, not q⁻².
- `gauge_measure.zero`: The zero section gives the zero measure; it is not a gauge form.
- `gauge_measure.unit`: A constant unit u with |u|=1 does not alter the normalized chart measure.

Glue chart measures over a countable disjoint measurable refinement of the chart cover (`MeasureTheory.Measure.sum` of restrictions). For a relative morphism X→Y, the relative top section lives on X. A local ordinary top form η has tensor degree one, so the reference tensor is η⊗r, not a second tensor power of an already r-fold form (GWZ mirror, Proposition 4.1 and Claim 4.2, p.20).

([Michael Groechenig, Dimitri Wyss and Paul Ziegler, *Geometric stabilisation via p-adic integration*](https://arxiv.org/pdf/1810.06739v2), §2.1, p.5; Proposition 2.1, p.6; [Michael Groechenig, Dimitri Wyss and Paul Ziegler, *Mirror symmetry for moduli spaces of Higgs bundles via p-adic integration*](https://arxiv.org/pdf/1707.06417v3), §4.1, pp.19–21 in arXiv v3; published pp.536–539.)

*Needs:* [2.5 Jacobian change of variables](#ld2-jacobian-change-variables); Mathlib `MeasureTheory.Measure.addHaar`; Mathlib `AlgebraicGeometry.IsAffineOpen`; Mathlib `Algebra.FiniteType.iff_quotient_mvPolynomial''`; Mathlib `AlgebraicGeometry.IsClosedImmersion`; Mathlib `AlgebraicGeometry.Smooth`; Mathlib `KaehlerDifferential`; [TauCetiRoadmap.SchemeAndStackFoundations, §2.20](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/SchemeAndStackFoundations/README.md#220-relative-dualising-complexes-and-modules-serre-duality-curve-comparison).

<a id="ld2-null-loci"></a>

### 2.8 Positive-codimension loci are null

For a geometrically reduced F-variety X with the measure from an r-fold top form on its smooth locus, a closed subvariety Y⊂X of positive codimension in every component has measure zero. Thus removing Y leaves the integral of an absolutely integrable function unchanged. No measure on a nonreduced thickening is inferred from this assertion.

Work on smooth affine charts. On each chart ball choose an analytic equation not identically zero there. Its zero set has Haar measure zero by the one-variable power-series zero theorem and induction/Fubini. Cover each positive-codimension locus by such local zero sets and use second countability. The singular part is assigned zero by the extension convention.

Prove the local analytic positive-codimension zero-locus nullity needed to discard nongeneric loci, then transport it through the countably glued chart measures. Ambient nullity is not an assertion of zero intrinsic volume.

([Michael Groechenig, Dimitri Wyss and Paul Ziegler, *Geometric stabilisation via p-adic integration*](https://arxiv.org/pdf/1810.06739v2), Proposition 2.1(a), p.6; GWZ mirror, Proposition 4.4, p.21 (published p.539).)

*Needs:* [2.7 Measures attached to gauge forms](#ld2-gauge-measure).

<a id="ld2-weil-volume"></a>

### 2.9 Weil volume and residue point counts

If X is smooth of pure relative dimension d over O_F and ω is an integral nowhere-vanishing top form (or an integral r-gauge form), then vol_ω(X(O_F))=#X(k_F)/q^d. Assume X is of finite type so the count is finite. Each residue fibre has analytic residue coordinates in (πO_F)^d, of normalized mass q^(−d). For non-global gauge forms, the canonical local unit-compatible measure gives the same formula.

Use smooth integral coordinates on each residue fibre and the formal implicit-function theorem. Integral gauge transition factors are units, so the fibre measure is q^(−d). Partition X(O_F) by its finitely many residue points and add the fibre measures. This concerns arbitrary smooth varieties, distinct from the adelic-group Tamagawa normalization.

The smooth lifting and local chart argument uses the stated finite-type integral model, reduction fibres and unit gauge; the analytic step is the inverse function theorem and measure gluing of §2.7.

([Michael Groechenig, Dimitri Wyss and Paul Ziegler, *Geometric stabilisation via p-adic integration*](https://arxiv.org/pdf/1810.06739v2), Theorem 1.4, p.3; §2.1, p.5.)

*Needs:* [2.7 Measures attached to gauge forms](#ld2-gauge-measure); [2.8 Positive-codimension loci are null](#ld2-null-loci).

<a id="ld2-finite-quotient-measure"></a>

### 2.10 Generically free finite quotients

Let Γ be a finite étale F-group acting generically freely on a smooth F-variety Y, and let Y→X=Y/Γ be the quotient. On the free locus, for a Γ(F)-invariant measurable A⊂Y(F) and an appropriate quotient r-fold form ω, the integral over its image is (1/#Γ(F)) times the integral over A with the pulled-back form. Apply this to the image, not automatically all X(F): nontrivial torsor fibres need not have rational lifts. Null branch loci are removed under the positive-codimension hypotheses.

On rationally lifted free fibres, the Γ(F)-action is simply transitive, so every fibre has exactly #Γ(F) points. Use local analytic substitution on the finite étale cover, sum its sheets, and divide by that fibre cardinality. Extend across null loci using null-loci.

Use the map from the upstairs smooth locus to the downstairs smooth locus. A split d-sheeted free cover contributes d copies upstairs, certifying division by #Γ(F). Restrict to the rationally lifted image rather than assuming every rational torsor is trivial (GWZ Proposition 2.1(b), p.6).

([Michael Groechenig, Dimitri Wyss and Paul Ziegler, *Geometric stabilisation via p-adic integration*](https://arxiv.org/pdf/1810.06739v2), Proposition 2.1(b), p.6.)

*Needs:* [2.7 Measures attached to gauge forms](#ld2-gauge-measure); [2.8 Positive-codimension loci are null](#ld2-null-loci).

<a id="ld2-dual-neron-counts"></a>

### 2.10a Néron point counts of dual abelian varieties

Let F be a nonarchimedean local field with finite residue field k of characteristic p and q elements. For an abelian variety A over F write 𝒜 for its Néron model over O_F, 𝒜° for the identity component, and Φ_A for the finite étale component group of the special fibre. Prove `dualNeronPointCount`:

- (a) every isogeny φ:A→B of degree prime to p extends to a homomorphism φ:𝒜→ℬ of Néron models, there is ψ:ℬ→𝒜 with ψ∘φ=[deg φ], and φ restricts to an étale isogeny 𝒜°→ℬ° of identity components;
- (b) #𝒜(k)=#𝒜°(k)·#Φ_A(k), and an étale isogeny of smooth connected commutative k-groups preserves the number of k-points;
- (c) #Φ_A(k)=#Φ_{A^∨}(k) for the dual abelian variety A^∨.

Hence, for dual abelian varieties A and B=A^∨ and an isogeny of degree prime to p, #𝒜(k)=#ℬ(k). No semistability hypothesis is made, and no claim that φ is finite flat on the whole Néron model.

For (a), extend φ and an isogeny φ′:B→A with φ′∘φ=[l], l=deg φ, by the Néron mapping property; since l is a unit in O_F, multiplication by l is étale on the smooth group 𝒜, so φ is unramified, hence étale, on identity components (Bosch–Lütkebohmert–Raynaud, *Néron Models*, §7.3, Proposition 6, p.180). For (b), the sequence 0→𝒜°_k→𝒜_k→Φ_A→0 and Lang's theorem H¹(k,𝒜°_k)=0 give the product formula; for an étale isogeny G→H with finite kernel K, the long exact sequence 0→K(k)→G(k)→H(k)→H¹(k,K)→H¹(k,G)=0 and #H¹(k,K)=#K(k) for a finite Galois module over a finite field (the cokernel and kernel of Frobenius−1 on a finite group have the same order) give #G(k)=#H(k). For (c), Grothendieck's pairing Φ_A×Φ_{A^∨}→ℚ/ℤ is perfect when k is finite (McCallum), and for a finite module Φ with an action of the cyclic group Gal(k′/k) through which Galois acts, #Φ^G=#(Φ/(σ−1)Φ), which dualizes to #Φ_A(k)=#Φ_{A^∨}(k) (Lorenzini, Proposition 4.3 and proof, pp.2032–2033).

The basic interface must include:

- `dual_neron_point_count.extend`: the prime-to-p isogeny extends, with an isogeny in the other direction composing to multiplication by its degree.
- `dual_neron_point_count.identity_component`: #𝒜°(k)=#ℬ°(k) for isogenous A,B with prime-to-p isogeny.
- `dual_neron_point_count.component_groups`: #Φ_A(k)=#Φ_{A^∨}(k).
- `dual_neron_point_count.total`: #𝒜(k)=#ℬ(k) for dual A,B.

**Checks.**

- `dual_neron_point_count.good_reduction`: For A with good reduction, Φ_A is trivial and #𝒜(k)=#𝒜_k(k), the point count of the reduction, which equals that of the dual reduction.
- `dual_neron_point_count.tate_curve`: For a Tate curve E with ord(Δ)=n split multiplicative, Φ_E(k)=ℤ/n, #𝒜°(k)=q−1 and #𝒜(k)=n(q−1); E is its own dual, so (c) is the identity n=n.
- `dual_neron_point_count.frobenius_orders`: For Φ=ℤ/3 with Frobenius acting by −1, Φ(k)=0 while Φ/(σ−1)Φ=ℤ/3/(2·ℤ/3)=0; the cyclic-group identity #Φ^G=#(Φ/(σ−1)Φ) is what (c) uses. For the noncyclic group S₃ acting on M=(𝔽₃)³/diagonal, M^G=0 while (M*)^G has order 3 (Lorenzini, Example 4.4), so cyclicity of the residue Galois group is essential.
- `dual_neron_point_count.wild_isogeny`: The hypothesis that p does not divide deg φ is needed for étaleness: a degree-p isogeny of an elliptic curve with good supersingular reduction reduces to a purely inseparable isogeny of the special fibre, which is not étale.

([Michael Groechenig, Dimitri Wyss and Paul Ziegler, *Geometric stabilisation via p-adic integration*](https://arxiv.org/pdf/1810.06739v2), proof of Proposition 2.2, p.6; Bosch–Lütkebohmert–Raynaud, *Néron Models*, §7.3, Proposition 6, p.180; [Dino Lorenzini, *Torsion and Tamagawa numbers*](https://aif.centre-mersenne.org/item/10.5802/aif.2664.pdf), Annales de l’Institut Fourier 61 (2011), Proposition 4.3 and proof, pp.2032–2033, citing McCallum for perfectness over finite residue fields.)

*Needs:* [TauCetiRoadmap.NeronModelsAndSemistableAbelianVarieties, §2.5](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md#25-functoriality-under-isogeny); [TauCetiRoadmap.NeronModelsAndSemistableAbelianVarieties, §4.6](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md#46-grothendiecks-pairing-on-component-groups).

<a id="ld2-dual-isogeny-volume"></a>

### 2.11 Dual abelian isogeny volume invariance

Let A and B be dual abelian varieties over a nonarchimedean local field F of residue characteristic p, and let φ:A→B be an isogeny whose degree is prime to p. For every ω∈H⁰(B,Ω_B^top), ∫_{A(F)}|φ*ω|=∫_{B(F)}|ω|. The zero form is allowed. The proof needs the identity-component and dual component-group comparison of §2.10a; it does not require declaring the entire Néron-model morphism finite flat.

Scale ω by an element of F so that it extends to a generator of the top differentials of ℬ; translation invariance makes its pole order constant on each component of the special fibre. The extension of φ is étale on identity components (§2.10a(a)), so φ*ω generates the top differentials of 𝒜. By Weil volume (§2.9) both integrals equal point counts of the special fibres divided by q^dim, and §2.10a gives #𝒜(k)=#ℬ(k).

([Michael Groechenig, Dimitri Wyss and Paul Ziegler, *Geometric stabilisation via p-adic integration*](https://arxiv.org/pdf/1810.06739v2), Proposition 2.2 and proof, p.6.)

*Needs:* [2.7 Measures attached to gauge forms](#ld2-gauge-measure); [2.9 Weil volume and residue point counts](#ld2-weil-volume); [2.10a Néron point counts of dual abelian varieties](#ld2-dual-neron-counts).

<a id="ld2-submersion-fubini"></a>

### 2.12 Fubini for relative top forms

For a submersion f:X→Y of F-analytic manifolds and r-gauge forms ω_X,ω_Y, there is a unique nowhere-vanishing relative r-fold top form θ on X satisfying f*ω_Y⊗θ=ω_X via det Ω_X≃f*det Ω_Y⊗det Ω_(X/Y). For every absolutely integrable α, ∫_X α dμ_(ω_X)=∫_Y(∫_(X_y) α dμ_(θ_y))dμ_(ω_Y). In the smooth algebraic case θ is algebraic. For a generically smooth map, apply this on its smooth locus and prove the omitted loci null.

Use the determinant exact sequence to divide the two nowhere-vanishing sections on X. In submersion coordinates this is the usual Fubini formula with densities. The r-th root is a positive real density; it does not require an analytic r-th root of a unit. Glue the local formula using absolute integrability and remove only loci justified null by the stated hypotheses.

In submersion coordinates the Fubini comparison is the product-measure Fubini theorem for Haar measure (`MeasureTheory.Measure.addHaar` on F^a×F^b), and the relative determinant line is the exterior-power exact sequence of Kähler differentials, with the relative section on the source. The sign convention is base-first: for a=xy it gives −dx/x. Absolute-value density then agrees with the source’s logarithmic measure.

([Michael Groechenig, Dimitri Wyss and Paul Ziegler, *Geometric stabilisation via p-adic integration*](https://arxiv.org/pdf/1810.06739v2), §2.2, equations (6)–(8), pp.6–7; [Michael Groechenig, Dimitri Wyss and Paul Ziegler, *Mirror symmetry for moduli spaces of Higgs bundles via p-adic integration*](https://arxiv.org/pdf/1707.06417v3), Proposition 4.1, Claim 4.2, Lemma 4.3, pp.20–21 (published pp.537–538).)

*Needs:* [2.7 Measures attached to gauge forms](#ld2-gauge-measure); [2.8 Positive-codimension loci are null](#ld2-null-loci); Mathlib `AlgebraicGeometry.IsClosedImmersion`; Mathlib `AlgebraicGeometry.Smooth`; Mathlib `KaehlerDifferential`; [TauCetiRoadmap.SchemeAndStackFoundations, §2.20](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/SchemeAndStackFoundations/README.md#220-relative-dualising-complexes-and-modules-serre-duality-curve-comparison).

### Examples

For fixed ac(x)=ξ≠0 and ord(x)=a, the ball has mass q⁻ᵃ⁻¹. Summing over q−1 nonzero ξ gives shell mass (1−q⁻¹)q⁻ᵃ. For x=πu, source volume of O is 1 and target volume of πO is q⁻¹, so the substitution factor is |π|. For ω=π²(dx)⊗² the density is |π²|^(1/2)=q⁻¹, rather than q⁻². In the product map a=xy with ω=dx∧dy and η=da, base-first order gives φ=−dx/x because da∧(−dx/x)=dx∧dy; the fibre measure is |dx/x|.

### Dependencies

[1.1 The Denef–Pas language](#ld1-denef-pas-language); [1.2 Angular components and valued structures](#ld1-angular-component); [1.3 Relative elimination of valued-field quantifiers](#ld1-valued-field-qe); Mathlib `AlgebraicGeometry.IsClosedImmersion`; Mathlib `MeasureTheory.Measure.addHaar`; [TauCetiRoadmap.SchemeAndStackFoundations, §2.20](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/SchemeAndStackFoundations/README.md#220-relative-dualising-complexes-and-modules-serre-duality-curve-comparison); [TauCetiRoadmap.NeronModelsAndSemistableAbelianVarieties, §§2.5 and 4.6](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md#25-functoriality-under-isogeny).

## Layer 3: motivic functions, integration and transfer

Fix the characteristic-zero coefficient field and build residue scissor objects, Presburger coefficients and dimension grades. The integration theorem specifies the pushforward laws, and specialization turns the formal L factors into actual local volumes after a fixed residue-characteristic threshold.

<a id="ld3-definable-subassignment"></a>

### 3.1 Definable subassignments

Fix a characteristic-zero base field k and named coefficients in k((t)). A definable subassignment of h[m,n,r] assigns to each extension field K/k the subset of K((t))^m×K^n×ℤ^r satisfying one fixed Denef–Pas formula with those coefficients. A map is specified by one uniformly definable graph that is a function in every K. This is a subassignment of point sets; it need not be a subfunctor under arbitrary field extensions because quantified formulas need not be extension invariant. Gluing along finite algebraic charts is a separate global construction.

Assign formula realizations for each extension K with the named ac_t and ord_t structures. Define morphisms by graph formulas with totality and uniqueness in every K. Boolean operations, fibre products and images are defined uniformly by formulas; these are categorical constructions of subassignments, without claiming functoriality in K. For globalization to subassignments of h_W with W=𝒳×X×ℤ^r (𝒳 a k((t))-variety, X a k-variety), cover W by finitely many affine opens U and choose closed embeddings ι:U↪𝔸^m_{k((t))}×𝔸^n_k×ℤ^r; then S∩h_U is a definable subassignment of h[m,n,r]. Two closed embeddings of the same U differ by the isomorphism of definable subassignments ι′∘ι⁻¹, whose graph and inverse graph are polynomial on the images, so every construction that is invariant under definable isomorphisms (CL Lemma 15.1.1, p.83) is independent of the embedding. Varieties are separated, so U∩U′ is affine; on overlaps both restrictions are computed in the embedding of U∩U′, and a finite definable partition of S subordinate to the cover, with additivity and extension by zero, glues the local data. Intrinsic K-dimension does not depend on the embedding. This replaces CL's assertion on p.83 that each affine open is isomorphic to an open subset of affine space, which fails in general.

The basic interface must include:

- `definable_subassignment.realize`: Evaluate the assigned set in any chosen extension K/k.
- `definable_subassignment.graph`: A morphism is a uniformly definable functional graph.
- `definable_subassignment.image`: The image is defined by existential quantification in the fixed language.
- `definable_subassignment.base_change`: A definable map S′→S induces a fibre-product pullback of subassignments over S.

**Checks.**

- `definable_subassignment.point`: h[0,0,0] assigns one point to every K.
- `definable_subassignment.sqrt`: The residue-field formula ∃y, y²=−1 changes truth between K=ℝ and K=ℂ, so its truth set is not a subfunctor on those field embeddings.
- `definable_subassignment.graph`: The VF graph z=x² is a morphism and evaluates to ordinary squaring.
- `definable_subassignment.sorts`: h[0,1,0](K)=K and h[0,0,1](K)=ℤ; their sorts are not interchangeable.

An affine elliptic curve, for instance y²=x³−x over k((t)), is not isomorphic to an open subset of 𝔸¹ (an open subset of 𝔸¹ has genus zero), so CL's open-coordinate reduction does not apply to it; its closed embedding in 𝔸² does (CL §15.1, p.83).

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §2.2–2.3, pp.10–11; global subassignments §2.4, pp.11–13; global volume-form gluing §15.1, pp.82–84.)

*Needs:* [1.1 The Denef–Pas language](#ld1-denef-pas-language); [1.3 Relative elimination of valued-field quantifiers](#ld1-valued-field-qe); Mathlib `AlgebraicGeometry.IsAffineOpen`; Mathlib `Algebra.FiniteType.iff_quotient_mvPolynomial''`; [TauCetiRoadmap.SchemeAndStackFoundations, §0.7](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/SchemeAndStackFoundations/README.md#07-local-dimension-and-dimension-theory-of-schemes-of-finite-type-over-a-field).

<a id="ld3-residue-grothendieck"></a>

### 3.2 Residue-field Grothendieck semirings

For S∈Def_k let RDef_S consist of definable maps Y→S with Y⊂S×RF^n for some finite n. Its Grothendieck semiring SK₀(RDef_S) is generated by definable isomorphism classes, with empty class zero, scissor relation [Y]=[Z]+[Y\Z], product by fibre product over S and unit [S]. Its additive group completion K₀(RDef_S) is a ring. Import the existing current Tau Ceti general Grothendieck completion and its universal property; construct only this particular definable scissor semiring. These are neither K₀(Var_k) nor a category of Chow motives.

Form the commutative semiring presentation of definable residue objects by isomorphism and scissor relations. Verify fibre product respects those relations. Reuse Algebra.GrothendieckAddGroup with the current TauCeti/RingTheory/GrothendieckRing.lean instCommRing, ofRingHom and liftRingHom. Pullback is multiplicative; direct image along residue-sort structure maps is additive with the projection formula, not generally a ring homomorphism.

The basic interface must include:

- `residue_grothendieck.scissor`: [Y]=[Z]+[Y\Z] for a definable subobject Z.
- `residue_grothendieck.pullback`: A map S′→S induces a semiring/ring pullback by fibre product.
- `residue_grothendieck.pushforward`: If S→T is a residue-sort object of RDef_T, composition induces additive direct image, satisfying f_!(a·f*b)=f_!(a)·b.
- `residue_grothendieck.completion`: Additive maps from the scissor semiring to an abelian group extend uniquely to K₀; positivity is not identified with an injective subset of the completion.

**Checks.**

- `residue_grothendieck.empty`: The empty object has class 0 and [S] is the multiplicative unit over S.
- `residue_grothendieck.line`: Over a point, [RF]=[RF×]+1, so the punctured line has class L−1 in the ring.
- `residue_grothendieck.two_points`: The map from two points to one point sends the unit to 2 under direct image; direct image is not unital or multiplicative.
- `residue_grothendieck.fibre_product`: The product of two residue objects specializes to the Cartesian fibre product count over each base point.

Construct the definable scissor semiring and its maps, and apply the existing general completion from Scope and ownership. Pullback is multiplicative; direct image is additive with the projection formula. The two-point map gives direct image 2 rather than a ring homomorphism (CL §5.1.2, p.28, and §5.6, p.30).

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §5.1.1–5.1.2, pp.26–28 (scissor semiring, completion and maps).)

*Needs:* [3.1 Definable subassignments](#ld3-definable-subassignment).

<a id="ld3-motivic-coefficient-ring"></a>

### 3.3 The motivic coefficient ring

Let A=ℤ[L,L⁻¹,(1−L^(−i))⁻¹:i∈ℕ, i>0], the iterated localization of ℤ[L] first at L, then at every 1−L^(−i) in that Laurent polynomial ring. For each real q>1 it has a specialization L↦q. A_+ consists of elements nonnegative under every such real specialization; order is pointwise under these specializations. This ring is the coefficient ring for Presburger summation and not an arbitrary completion or inversion of all polynomials.

Use native polynomial/Laurent polynomial localization with its universal property. Each generator of the multiplicative set specializes nonzero when q>1, giving the ring map. Define the positive subsemiring by all these inequalities.

The basic interface must include:

- `motivic_coefficient_ring.eval`: For q>1, evaluation is a ring homomorphism A→ℝ with L↦q.
- `motivic_coefficient_ring.denominator`: Evaluation of (1−L^(−i))⁻¹ is (1−q^(−i))⁻¹ for i>0.
- `motivic_coefficient_ring.positive`: a∈A_+ exactly when every real q>1 specialization is nonnegative.
- `motivic_coefficient_ring.localization`: A coefficient map extends iff it makes L and every required denominator invertible.

**Checks.**

- `motivic_coefficient_ring.geometric`: ∑_{n≥0}q^(−n)=eval_q((1−L⁻¹)⁻¹).
- `motivic_coefficient_ring.q_one`: q=1 is excluded because 1−L⁻¹ would specialize to zero.
- `motivic_coefficient_ring.not_positive`: L−2 is not in A_+, since its value is negative for 1<q<2.
- `motivic_coefficient_ring.L_positive`: L, L⁻¹ and 1−L⁻¹ are positive under every permitted specialization.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §4.1, pp.18–19; evaluation and positivity conventions, §4.2, pp.19–20.)

*Needs:* [3.2 Residue-field Grothendieck semirings](#ld3-residue-grothendieck).

<a id="ld3-presburger-functions"></a>

### 3.4 Presburger constructible functions

For a definable S, let P(S) be the A-algebra of functions generated by constants from A, definable integer-valued functions α:S→ℤ and exponentials L^β for definable β:S→ℤ. Let P_+(S) be its pointwise positive part under all q>1 evaluations. Let P⁰(S) be generated by indicators of definable subsets and L−1, with positive counterpart. The notation P⁰ does not mean all of P and is not obtained by inverting an indicator.

Generate the subalgebra of A-valued pointwise functions by the stated functions. Define the base-change and extension-by-zero maps on generators. Preparation partitions integer fibres into affine congruence cones; summing L^linear times polynomial functions yields the denominators already inverted in A.

The basic interface must include:

- `presburger_functions.pullback`: Pullback of α and L^β is composition with a definable map.
- `presburger_functions.indicator`: A definable subset contributes its indicator in P⁰ and hence P.
- `presburger_functions.sum`: On the integrable Presburger locus, fibre summation agrees under every q>1 evaluation with absolutely convergent integer summation.
- `presburger_functions.cone`: A nonnegative ray weighted by L^(−n) sums to (1−L⁻¹)⁻¹.

**Checks.**

- `presburger_functions.empty_sum`: Summing over an empty integer fibre gives 0.
- `presburger_functions.constant_ray`: The constant function 1 on ℕ is not summable under any q>1 evaluation.
- `presburger_functions.weighted_ray`: L^(−n) on n≥0 has sum (1−L⁻¹)⁻¹.
- `presburger_functions.congruence`: The weight L^(−n) on nonnegative even n sums to (1−L⁻²)⁻¹.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §4.2–4.5, pp.19–24; Theorem 4.4.1, p.21.)

*Needs:* [3.3 The motivic coefficient ring](#ld3-motivic-coefficient-ring); [3.1 Definable subassignments](#ld3-definable-subassignment).

<a id="ld3-constructible-motivic-functions"></a>

### 3.5 Constructible motivic functions

Define C(S)=K₀(RDef_S)⊗_(P⁰(S))P(S), with the map from P⁰ sending indicators to their definable residue classes and L−1 to the punctured residue line. Define C_+(S) by the corresponding semiring tensor product with SK₀ and P_+. Keep the canonical map C_+→C without assuming it injective. Pullback is a ring map; any pushforward is an additive partially defined operation constrained by integrability.

Construct the common P⁰-algebra structures, check indicator scissor relations, and form the semiring and ring tensor products. Use the tensor universal property for pullback and for the two elementary auxiliary-sort pushforwards, with their projection formula.

The basic interface must include:

- `constructible_motivic_functions.tensor_relation`: A common P⁰ generator acts identically from either tensor factor.
- `constructible_motivic_functions.pullback`: Definable pullback is a ring map respecting residue and Presburger generators.
- `constructible_motivic_functions.positive_map`: The canonical positive-to-ring map is used without an injectivity claim.
- `constructible_motivic_functions.residue_pushforward`: Projection along RF variables is additive class composition, with the projection formula; it is not multiplicative.

**Checks.**

- `constructible_motivic_functions.indicator`: An indicator taken from either tensor factor has the same class in C(S).
- `constructible_motivic_functions.line`: The residue affine-line class equals L and its punctured-line class equals L−1.
- `constructible_motivic_functions.two_points`: Pushing 1 from two residue points gives 2, so a ring-homomorphism pushforward definition is rejected.
- `constructible_motivic_functions.empty`: C(∅) has only the zero function class.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §5.2, pp.28–29; §5.3–5.8, pp.29–35.)

*Needs:* [3.2 Residue-field Grothendieck semirings](#ld3-residue-grothendieck); [3.4 Presburger constructible functions](#ld3-presburger-functions); [3.3 The motivic coefficient ring](#ld3-motivic-coefficient-ring).

<a id="ld3-dimension-graded-functions"></a>

### 3.6 Dimension-graded constructible Functions

For X∈Def_k let C^≤d(X) be the ideal generated by indicators of definable subassignments of VF-dimension ≤d, define C^d(X)=C^≤d(X)/C^≤d−1(X), and set the graded group of constructible Functions to ⊕_d C^d(X); define the positive and relative variants in the source semigroup sense. Relative dimension is measured fibrewise over the fixed base. A graph over a d-dimensional VF base has absolute dimension d and relative dimension zero over that base; it is zero in a larger ambient Haar grade, not in its own absolute grade.

Generate the filtration ideals by indicators of definable subassignments with the specified VF-dimension bound, then take their graded quotients. Define relative dimension on fibres and prove invariance under the specified definable isomorphisms using cell decomposition.

The basic interface must include:

- `dimension_graded_functions.grade`: A function supported in VF-dimension ≤d determines a degree-d Function.
- `dimension_graded_functions.lower_support`: Its degree-d class vanishes if its support has VF-dimension <d.
- `dimension_graded_functions.relative`: Relative grading uses fibre dimension over the declared base, not total dimension.
- `dimension_graded_functions.restriction`: Restriction respects support filtrations and hence the graded object.

**Checks.**

- `dimension_graded_functions.point`: A singleton has nonzero counting contribution in degree zero.
- `dimension_graded_functions.ambient_null`: The same singleton is zero in degree one; this does not erase its degree-zero class.
- `dimension_graded_functions.graph`: A graph over a d-dimensional base has relative dimension zero and total dimension d.
- `dimension_graded_functions.empty`: The empty-support class is zero in every degree.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §6.1–6.2, pp.35–36; §10.1, pp.59–60.)

*Needs:* [3.5 Constructible motivic functions](#ld3-constructible-motivic-functions); [2.2 Cell decomposition and preparation](#ld2-cell-decomposition).

<a id="ld3-motivic-pushforward"></a>

### 3.7 Cluckers–Loeser motivic pushforward

For a fixed base S∈Def_k there is a unique assignment of integrable graded positive Functions I_SC_+(X)⊂C_+(X), together with additive pushforwards f_! for every definable f:X→Y over S, satisfying CL Theorem 10.1.1 A0–A8: composition and integrability Fubini, disjoint additivity, projection formula, extension by zero, residue-field class pushforward, Presburger summation, one-cell volume L^(−α−1), and graph/Jacobian normalization. Extend to the group-valued integrable theory as in §13.2, with the relative extension in Theorem 14.1.1. Pushforwards are not ring homomorphisms.

First define one-dimensional VF integration by prepared cells, using the displayed volume and graph factors; prove independence of presentations through common refinements. Compare the two orders of integration on (0,0), (0,1), (1,0) and (1,1) bicells. In the ball-to-ball case use the Jacobian preparation theorem. This is the key two-variable Fubini step. Iterate coordinate projections and use Fubini to make the result independent of ordering. Factor a definable map as its graph inclusion followed by a projection, then verify A0–A8. Pass from positive to group-valued integrable Functions without asserting injectivity of positive classes.

The proof includes general graph factorization, bicell Fubini, independence of variable order and the signed integrability extension; CL §§11–14 gives this construction, and the uniqueness axioms alone do not prove existence. Integration of volume forms on varieties (CL §15.1, pp.82–84) uses the closed-embedding globalization of §3.1 in place of CL's open-coordinate charts, with Lemma 15.1.1 for embedding independence.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), Theorem 10.1.1, pp.59–60; construction §11, pp.61–73; signed extension §13.2, p.77; relative Theorem 14.1.1, p.78.)

*Needs:* [3.6 Dimension-graded constructible Functions](#ld3-dimension-graded-functions); [3.5 Constructible motivic functions](#ld3-constructible-motivic-functions); [3.4 Presburger constructible functions](#ld3-presburger-functions); [2.1 Denef–Pas cells and presentations](#ld2-cells); [2.5 Jacobian change of variables](#ld2-jacobian-change-variables).

<a id="ld3-motivic-change-variables"></a>

### 3.8 Motivic change of variables and Fubini

For a definable isomorphism f:X→Y of pure equal VF-dimension and an integrable graded Function φ on Y, its pullback weighted by L^(−ordjac f) is integrable and has the same integral over X as φ over Y. For composable definable maps, integrability and iterated pushforward satisfy the A0(c) Fubini equivalence. State relative and global variants with their fixed base and dimension conventions; lower-dimensional exceptional sets are removed only in the appropriate grade.

Apply graph factorization and the graph axiom to the isomorphism and its inverse. Use functoriality to compare the two projections from the graph, retaining the Jacobian grade. Apply A0(c) for the Fubini integrability equivalence.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), Theorem 12.1.1, p.74; relative Theorem 14.1.1 A0(c), p.78.)

*Needs:* [3.7 Cluckers–Loeser motivic pushforward](#ld3-motivic-pushforward); [3.6 Dimension-graded constructible Functions](#ld3-dimension-graded-functions); [2.5 Jacobian change of variables](#ld2-jacobian-change-variables).

<a id="ld3-specialization"></a>

### 3.9 Specialization to local-field integrals

Fix the source coefficient datum, formulas and uniformizer interpretations. For φ in the source relative motivic integrable class over a definable parameter base, some N makes every allowed local field K of residue characteristic >N satisfy (∫φ)_K=∫φ_K at every permitted parameter, with integrability. This is Theorem 9.1.5 for all allowed local fields. Theorem 9.1.6 additionally gives specialization compatibility with a fixed general definable pushforward over the characteristic-zero local-field class A_O. Specialization sends L to q_K and residue classes to fibre cardinalities. No computable N is asserted.

Define specialization on the two tensor factors and verify the common P⁰ relations. Cell-by-cell, the motivic annulus factor becomes q^(−α−1), the RF class becomes its fibre count, and the VG sum becomes the convergent integer sum. Exclude the finitely many residue characteristics needed by the chosen formula reductions and coefficients. Compare iterated coordinate pushforwards, using Fubini.

([Raf Cluckers and François Loeser, *Constructible exponential functions, motivic Fourier transform and transfer principle*](https://arxiv.org/pdf/math/0512022), Definition 9.1.1, p.40; Theorem 9.1.5, p.43; Theorem 9.1.6, p.44.)

*Needs:* [3.7 Cluckers–Loeser motivic pushforward](#ld3-motivic-pushforward); [3.5 Constructible motivic functions](#ld3-constructible-motivic-functions); [2.4 Constructible local integration](#ld2-local-integration).

<a id="ld3-integral-transfer"></a>

### 3.10 Transfer of integral identities

For a fixed compatible coefficient datum and fixed integrable constructible data φ,ψ in a definable parameter family, there exists N such that, for allowed local fields K₁,K₂ of residue characteristics >N with isomorphic residue fields compatibly with that datum, the identity φ_(K₁)(s)=ψ_(K₁)(s) for every s in its parameter domain holds iff the corresponding universal identity holds over K₂. Apply this to specialized motivic pushforwards. This is transfer of a universally quantified identity, not pointwise equality between unrelated VF parameter sets.

Express the obstruction to a universal identity as the nonvanishing of a fixed constructible specialization. Use the source transfer theorem for that constructible datum, then apply specialization compatibility to replace motivic pushforwards by local integrals. Track coefficient compatibility, all parameters and the union of exceptional-prime bounds. No bijection of VF parameter spaces is introduced.

([Raf Cluckers and François Loeser, *Constructible exponential functions, motivic Fourier transform and transfer principle*](https://arxiv.org/pdf/math/0512022), Theorem 9.2.4, p.46, with §9.1 conventions.)

*Needs:* [3.9 Specialization to local-field integrals](#ld3-specialization); [1.5 Finite-formula transfer for large residue characteristic](#ld1-almost-all-transfer).

<a id="ld3-geometric-realization-interface"></a>

### 3.11 Geometric realizations remain distinct

Let M_loc be the localization of TriangulatedK0(DM_gm(k,ℚ)) at the classes [ℚ(1)] and 1−[ℚ(−i)] for all i>0. Construct the realization `residueMotivicRealization`: SK₀(RDef_k)⊗_{ℕ[𝕃−1]}A₊→M_loc as the composite of the change of theory from the empty theory to algebraically closed fields (CL Proposition 16.1.1), the identification of K₀ of residue objects over algebraically closed fields with K₀(Var_k) by Chevalley constructibility (CL §16.2), the canonical map γ into K₀(Var_k)⊗_{ℤ[𝕃]}A (CL §16.3), and χ^c⊗A, which sends 𝕃 to [ℚ(1)] and each denominator 1−𝕃^(−i) to the invertible class 1−[ℚ(−i)]. Invertibility holds by construction of M_loc; no injectivity is asserted, and M_loc may be smaller than expected. There is no automatic equality between K₀(RDef), K₀(Var), Chow-motive Grothendieck rings and the coefficient ring C(S). No such realization is required for the point-count specialization theorem.

The composite respects definable isomorphisms, scissor relations and products because each factor does: theory change is a ring map, Chevalley constructibility identifies residue objects with constructible sets, and χ^c is a ring homomorphism with the scissor relation (MotivesAndAlgebraicCycles §4.20). The localization universal property extends it to the inverted classes. The realization of 𝔾_m is [ℚ(1)]−1 and of ℙ¹ is 1+[ℚ(1)]; an odd shift would introduce a sign, the even shift [2] in the Lefschetz object does not.

The general definable residue quotient is not declared identical to a variety class. A Lefschetz inversion is specified before its realization map is extended.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), Proposition 16.1.1, p.88; §16.2, p.88; §16.3, p.89.)

*Needs:* [3.2 Residue-field Grothendieck semirings](#ld3-residue-grothendieck); [3.5 Constructible motivic functions](#ld3-constructible-motivic-functions); [3.3 The motivic coefficient ring](#ld3-motivic-coefficient-ring); [TauCetiRoadmap.MotivesAndAlgebraicCycles, §4.20](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/MotivesAndAlgebraicCycles/README.md#420-the-scissor-ring-and-motivic-measure).

### Examples

The residue affine line specializes to q points. A one-cell of order a and one angular component specializes from L⁻ᵃ⁻¹ to q⁻ᵃ⁻¹. A singleton has zero class in the ambient one-dimensional grade but survives in its intrinsic zero-dimensional grade. The direct image of the constant 1 along a two-point map is 2: its square is 4, whereas the direct image of 1·1 remains 2.

### Dependencies

[1.1 The Denef–Pas language](#ld1-denef-pas-language); [1.3 Relative elimination of valued-field quantifiers](#ld1-valued-field-qe); [TauCetiRoadmap.SchemeAndStackFoundations, §0.7](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/SchemeAndStackFoundations/README.md#07-local-dimension-and-dimension-theory-of-schemes-of-finite-type-over-a-field); [2.2 Cell decomposition and preparation](#ld2-cell-decomposition); [2.1 Denef–Pas cells and presentations](#ld2-cells); [2.5 Jacobian change of variables](#ld2-jacobian-change-variables); [2.4 Constructible local integration](#ld2-local-integration); [1.5 Finite-formula transfer for large residue characteristic](#ld1-almost-all-transfer); [TauCetiRoadmap.MotivesAndAlgebraicCycles, §4.20](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/MotivesAndAlgebraicCycles/README.md#420-the-scissor-ring-and-motivic-measure).

## Layer 4: Diophantine normal forms and arithmetic definability

First compare native polynomial functions with integer polynomial syntax and compress only the existential witnesses. Effective coding and Diophantine exponentiation then give MRDP and integer undecidability. The rational branch uses quaternion trace images and semilocal rings to obtain universal integer predicates, with existential integer definability kept conditional.

<a id="ld4-to-dioph-poly"></a>

### 4.1 Integer polynomials as native polynomial functions

For every type α, construct the ring homomorphism Tα from MvPolynomial α ℤ to Poly α which sends each integer constant c to Poly.const(c) and each variable Xᵢ to Poly.proj(i). Its underlying function evaluates the polynomial on natural assignments after casting them to integers.

α and β are arbitrary types, possibly empty or infinite. Natural-number assignments are cast coordinatewise to integers. Additional hypotheses are stated explicitly.

Use the existing commutative ring on Poly α; the integer cast there is its constant constructor. Apply MvPolynomial.eval₂Hom to Int.castRingHom and Poly.proj. This supplies the ring-map laws without a second ring structure. The constant and variable API laws follow directly from eval₂Hom_C and eval₂Hom_X'. Evaluate pointwise using Poly.ext, const_apply and proj_apply; the key evaluation theorem identifies the map with the intended polynomial function. No second polynomial carrier is introduced.

The basic interface must include:

- `toDiophPoly_C`: Tα(C c) = Poly.const(c) for every integer c.
- `toDiophPoly_X`: Tα(Xᵢ) = Poly.proj(i).
- `toDiophPoly_apply`: For p and a natural assignment x, Tα(p)(x) = p evaluated at the integer casts of x.
- `toDiophPoly_add`: Tα(p+q)=Tα(p)+Tα(q).
- `toDiophPoly_mul`: Tα(pq)=Tα(p)Tα(q).
- `toDiophPoly_sub`: Tα(p−q)=Tα(p)−Tα(q), using integer subtraction.
- `toDiophPoly_ext`: If Tα(p) and Tα(q) agree at every natural assignment, they are equal as native Poly elements.

**Checks.**

- `constant_negative`: With no variables, the image of constant −3 evaluates to −3 on the unique assignment.
- `two_coordinates`: At (1,3), the image of X₀−2X₁ has value −5, not a truncated natural difference.
- `native_eval`: Evaluation agrees with native MvPolynomial.eval at every natural assignment cast to integers.
- `distinct_coordinates`: The images of X₀ and X₁ in two variables differ: assignment (0,1) distinguishes them.

The representative signature is `Diophantine.toDiophPoly` in Suggested.lean.

([Cameron Freer, *Hilbert10 polynomial bridge*](https://github.com/cameronfreer/hilbert10/blob/25b42fcd6c6c5af710c514638a6fcb4e22d00a30/Hilbert10/PolyBridge.lean), toDiophPoly and its evaluation lemmas; [Bjorn Poonen, *Undecidability in number theory*](https://math.mit.edu/~poonen/papers/h10_notices.pdf), Definition 1 and footnote 4, author-copy p.2.)

*Needs:* Mathlib `Poly`; Mathlib `Poly.proj`; Mathlib `Poly.const`; Mathlib `MvPolynomial.eval₂Hom`; Mathlib `Int.castRingHom`; Mathlib `MvPolynomial.eval₂Hom_C`; Mathlib `MvPolynomial.eval₂Hom_X'`; Mathlib `Poly.ext`; Mathlib `Poly.const_apply`; Mathlib `Poly.proj_apply`.

<a id="ld4-to-dioph-poly-eval"></a>

### 4.2 Evaluation on natural assignments

For p in MvPolynomial α ℤ and x:α→ℕ, Tα(p)(x) = eval(cast∘x,p), where cast is the natural embedding into ℤ.

α and β are arbitrary types, possibly empty or infinite. Natural-number assignments are cast coordinatewise to integers. Additional hypotheses are stated explicitly.

Induct on p by MvPolynomial.induction_on. The constant case uses the parent constant API law and Poly.const_apply. For addition use the ring-map law and Poly.add_apply. For multiplication by Xᵢ use the ring-map law, the parent variable API law, Poly.mul_apply and Poly.proj_apply. Each step matches native polynomial evaluation.

Negative coefficients and products give their integer values.

The representative signature is `Diophantine.toDiophPoly_apply` in Suggested.lean.

([Cameron Freer, *Hilbert10 polynomial bridge*](https://github.com/cameronfreer/hilbert10/blob/25b42fcd6c6c5af710c514638a6fcb4e22d00a30/Hilbert10/PolyBridge.lean), toDiophPoly and its evaluation lemmas; [Bjorn Poonen, *Undecidability in number theory*](https://math.mit.edu/~poonen/papers/h10_notices.pdf), Definition 1 and footnote 4, author-copy p.2.)

*Needs:* [4.1 Integer polynomials as native polynomial functions](#ld4-to-dioph-poly); Mathlib `MvPolynomial.induction_on`; Mathlib `Poly.const_apply`; Mathlib `Poly.proj_apply`; Mathlib `Poly.add_apply`; Mathlib `Poly.mul_apply`.

<a id="ld4-to-dioph-poly-surjective"></a>

### 4.3 Every native polynomial has integer polynomial syntax

The map Tα is surjective for every type α.

α and β are arbitrary types, possibly empty or infinite. Natural-number assignments are cast coordinatewise to integers. Additional hypotheses are stated explicitly.

Apply Poly.induction with the proposition that a preimage under Tα exists. Projection and constant cases use Xᵢ and C c and the separate comparison nodes. For subtraction and multiplication, take the corresponding operation on the two existing preimages. The ring-map laws prove the required equality. The induction is into a proposition, so it is permitted by native Poly.induction. This does not construct a computable extraction procedure from an extensional function.

No finite input-type hypothesis. No executable syntax recovery is claimed.

([Cameron Freer, *Hilbert10 polynomial bridge*](https://github.com/cameronfreer/hilbert10/blob/25b42fcd6c6c5af710c514638a6fcb4e22d00a30/Hilbert10/PolyBridge.lean), exists_mvPolynomial and its constructor induction; [Bjorn Poonen, *Undecidability in number theory*](https://math.mit.edu/~poonen/papers/h10_notices.pdf), Definition 1 and footnote 4, author-copy p.2.)

*Needs:* [4.1 Integer polynomials as native polynomial functions](#ld4-to-dioph-poly); Mathlib `Poly.induction`.

<a id="ld4-to-dioph-poly-injective"></a>

### 4.4 Polynomial identity from natural assignments

The map Tα is injective for every type α.

α and β are arbitrary types, possibly empty or infinite. Natural-number assignments are cast coordinatewise to integers. Additional hypotheses are stated explicitly.

Let Tα(p)=Tα(q). By to-dioph-poly-eval their evaluations agree on all tuples of natural numbers. For every variable use the subset of ℤ which is the image of the natural embedding. Nat.cast_injective and Set.infinite_range_of_injective prove each side of this Cartesian box is infinite. For a tuple in this box, choose a natural preimage in every coordinate and apply the assumed equality. MvPolynomial.funext_set over the integral domain ℤ now gives p=q. The empty index type is covered by the same statement.

X(X−1) is distinguished from zero by assignment 2, even though both vanish at 0 and 1.

([The Mathlib contributors, *Multivariate polynomial extensionality on infinite boxes*](https://github.com/leanprover-community/mathlib4/blob/082e2d37e8b0463410cdb532e111cd43d5a66174/Mathlib/Algebra/MvPolynomial/Funext.lean), funext_set, lines 51–74; [Bjorn Poonen, *Undecidability in number theory*](https://math.mit.edu/~poonen/papers/h10_notices.pdf), Definition 1 and footnote 4, author-copy p.2.)

*Needs:* [4.2 Evaluation on natural assignments](#ld4-to-dioph-poly-eval); Mathlib `MvPolynomial.funext_set`; Mathlib `Nat.cast_injective`; Mathlib `Set.infinite_range_of_injective`.

<a id="ld4-poly-mvpolynomial-equiv"></a>

### 4.5 Polynomial ring equivalence

For every α, bundle Tα as a ring equivalence Eα: MvPolynomial α ℤ ≃ Poly α. Its inverse sends a native polynomial function to the unique multivariate integer polynomial with the same values on every natural assignment. The inverse is classical and carries no computability assertion.

α and β are arbitrary types, possibly empty or infinite. Natural-number assignments are cast coordinatewise to integers. Additional hypotheses are stated explicitly.

Combine the separately proved injectivity and surjectivity into bijectivity. Apply RingEquiv.ofBijective. Record that the resulting forward ring map is exactly Tα. Its inverse laws and algebraic compatibility are inherited from the ring equivalence. Evaluate Eα(Eα⁻¹(f))=f and apply to-dioph-poly-eval to obtain the inverse evaluation law. Uniqueness follows from injectivity, not from a chosen syntactic representative.

The basic interface must include:

- `mvPolynomialEquiv_toRingHom`: The forward ring map of Eα is Tα.
- `mvPolynomialEquiv_symm_apply`: Evaluating Eα⁻¹(f) at the integer casts of x gives f(x).
- `mvPolynomialEquiv_symm_const`: Eα⁻¹(Poly.const(c))=C c for every integer c.
- `mvPolynomialEquiv_symm_proj`: Eα⁻¹(Poly.proj(i))=Xᵢ.
- `mvPolynomialEquiv_symm_add`: Eα⁻¹(f+g)=Eα⁻¹(f)+Eα⁻¹(g).
- `mvPolynomialEquiv_symm_mul`: Eα⁻¹(fg)=Eα⁻¹(f)Eα⁻¹(g).
- `mvPolynomialEquiv_left_inv`: Eα⁻¹(Eα(p))=p.
- `mvPolynomialEquiv_right_inv`: Eα(Eα⁻¹(f))=f.
- `mvPolynomialEquiv_rename`: For any map h:α→β, Eβ(rename(h,p))=Poly.map(h,Eα(p)); injectivity of h is not required.

**Checks.**

- `empty_inverse`: With no variables, E⁻¹(Poly.const(−7)) is C(−7).
- `product_inverse`: In two variables, E⁻¹(Poly.proj(0)·Poly.proj(1)) is X₀X₁.
- `inverse_native_eval`: For every native f and natural assignment x, eval(cast∘x,E⁻¹(f))=f(x).
- `boolean_grid_insufficient`: E(X₀(X₀−1)) is nonzero: its value at 2 is 2. Sampling only a Boolean grid is insufficient.

The representative signature is `Diophantine.polynomial_comparison` in Suggested.lean.

([Mario Carneiro and the Mathlib contributors, *Diophantine functions and Matiyasevic’s theorem: native Poly and Dioph*](https://github.com/leanprover-community/mathlib4/blob/082e2d37e8b0463410cdb532e111cd43d5a66174/Mathlib/NumberTheory/Dioph.lean), Poly, Poly.induction and the comparison its comments record as missing, lines 48–51,93,197–204; [Bjorn Poonen, *Undecidability in number theory*](https://math.mit.edu/~poonen/papers/h10_notices.pdf), Definition 1 and footnote 4, author-copy p.2.)

*Needs:* [4.1 Integer polynomials as native polynomial functions](#ld4-to-dioph-poly); [4.3 Every native polynomial has integer polynomial syntax](#ld4-to-dioph-poly-surjective); [4.4 Polynomial identity from natural assignments](#ld4-to-dioph-poly-injective); [4.2 Evaluation on natural assignments](#ld4-to-dioph-poly-eval); Mathlib `RingEquiv.ofBijective`.

<a id="ld4-poly-equiv-rename"></a>

### 4.6 Renaming compatibility

For any map h:α→β and polynomial p, Eβ(rename(h,p)) = Poly.map(h,Eα(p)). The map h can identify distinct variables.

α and β are arbitrary types, possibly empty or infinite. Natural-number assignments are cast coordinatewise to integers. Additional hypotheses are stated explicitly.

Compare values at every β-indexed natural assignment using Poly.ext. The equivalence’s forward map is T. Apply to-dioph-poly-eval on both sides, MvPolynomial.eval_rename on the left and Poly.map_apply on the right. Both values are eval(cast∘x∘h,p).

Collapsing both variables of X₀−X₁ to the same coordinate produces zero; this naturality identity does not assert injectivity of renaming.

([Mario Carneiro and the Mathlib contributors, *Diophantine functions and Matiyasevic’s theorem: native Poly and Dioph*](https://github.com/leanprover-community/mathlib4/blob/082e2d37e8b0463410cdb532e111cd43d5a66174/Mathlib/NumberTheory/Dioph.lean), Poly.map and map_apply, lines 226–234; [Bjorn Poonen, *Undecidability in number theory*](https://math.mit.edu/~poonen/papers/h10_notices.pdf), Definition 1 and footnote 4, author-copy p.2.)

*Needs:* [4.5 Polynomial ring equivalence](#ld4-poly-mvpolynomial-equiv); [4.2 Evaluation on natural assignments](#ld4-to-dioph-poly-eval); Mathlib `Poly.ext`; Mathlib `Poly.map_apply`; Mathlib `MvPolynomial.eval_rename`.

<a id="ld4-finite-right-support"></a>

### 4.7 Finite witness support with fixed inputs

For a commutative semiring R and p in MvPolynomial (α⊕β) R, there exist a finite subset t of β and q in MvPolynomial (α⊕t) R such that p=rename(idα⊕inclusion,q). Every input variable is left unchanged.

α and β are arbitrary types, possibly empty or infinite. Natural-number assignments are cast coordinatewise to integers. Additional hypotheses are stated explicitly.

Apply MvPolynomial.exists_finset_rename to p, obtaining a finite set s of sum variables and a polynomial r on s. Put t=Finset.toRight(s). Map each element of s to α⊕t: an input inl(a) goes to inl(a); a witness inr(b) goes to inr(b), with its membership in t supplied by Finset.mem_toRight. Rename r by this map to form q. The composite with idα⊕inclusion is the original inclusion of s, so MvPolynomial.rename_rename gives p=rename(idα⊕inclusion,q).

No domain or characteristic assumption on R. No finite input-type assumption. A polynomial involving only inputs admits t empty.

([Cameron Freer, *Compact only the right summand of a sum of polynomial variables*](https://github.com/leanprover-community/mathlib4/pull/42203), PR body, exists_finset_right_rename and proof route; [Bjorn Poonen, *Undecidability in number theory*](https://math.mit.edu/~poonen/papers/h10_notices.pdf), Definition 1 and footnote 4, author-copy p.2.)

*Needs:* Mathlib `MvPolynomial.exists_finset_rename`; Mathlib `Finset.toRight`; Mathlib `Finset.mem_toRight`; Mathlib `MvPolynomial.rename`; Mathlib `MvPolynomial.rename_rename`.

<a id="ld4-finite-right-rename"></a>

### 4.8 Finite witness enumeration

For a commutative semiring R and p in MvPolynomial (α⊕β) R, there exist m∈ℕ, an injective map h:Fin m→β, and q in MvPolynomial (α⊕Fin m) R with p=rename(idα⊕h,q).

α and β are arbitrary types, possibly empty or infinite. Natural-number assignments are cast coordinatewise to integers. Additional hypotheses are stated explicitly.

Apply finite-right-support to obtain t and its polynomial q₀. Choose e:t≃Fin(card t) using Fintype.equivFin. Set h=inclusion∘e⁻¹ and rename q₀ by idα⊕e. The chosen h is injective because e⁻¹ and subtype inclusion are injective. Use MvPolynomial.rename_rename and the inverse laws of e to verify the displayed identity.

If β is empty the witness block has size zero. Inputs are not silently permuted when witnesses are numbered.

([Cameron Freer, *Compact only the right summand of a sum of polynomial variables*](https://github.com/leanprover-community/mathlib4/pull/42203), PR body, exists_fin_right_rename and finite enumeration; [Bjorn Poonen, *Undecidability in number theory*](https://math.mit.edu/~poonen/papers/h10_notices.pdf), Definition 1 and footnote 4, author-copy p.2.)

*Needs:* [4.7 Finite witness support with fixed inputs](#ld4-finite-right-support); Mathlib `Fintype.equivFin`; Mathlib `MvPolynomial.rename_rename`.

<a id="ld4-right-rename-solutions"></a>

### 4.9 Preservation of existential natural roots

Let h:Fin m→β be injective, q∈ℤ[α⊕Fin m], and x:α→ℕ. There exists y:β→ℕ with rename(idα⊕h,q)(x,y)=0 if and only if there exists z:Fin m→ℕ with q(x,z)=0. All evaluations cast naturals into integers.

α and β are arbitrary types, possibly empty or infinite. Natural-number assignments are cast coordinatewise to integers. Additional hypotheses are stated explicitly.

Given y, restrict it to z=y∘h. MvPolynomial.eval_rename proves the evaluations agree. Given z, use Function.extend(h,z,0) as a β-assignment. Function.Injective.extend_apply gives y(h(j))=z(j), so the same evaluation identity gives a root of the renamed polynomial. The default zero supplies all unused witnesses, including when m=0. No surjectivity of h is needed.

For q(u,v)=u−v−1, collapsing both witnesses makes the equation unsatisfiable although q has natural roots; the injectivity hypothesis cannot be dropped.

([Cameron Freer, *Hilbert10 finite Diophantine normal form*](https://github.com/cameronfreer/hilbert10/blob/25b42fcd6c6c5af710c514638a6fcb4e22d00a30/Hilbert10/NormalForm.lean), dioph_iff_exists_fin_mvPolynomial, key equality and witness extension; [Bjorn Poonen, *Undecidability in number theory*](https://math.mit.edu/~poonen/papers/h10_notices.pdf), Definition 1 and footnote 4, author-copy p.2.)

*Needs:* Mathlib `MvPolynomial.eval_rename`; Mathlib `Function.extend`; Mathlib `Function.Injective.extend_apply`.

<a id="ld4-dioph-finite-mvpolynomial"></a>

### 4.10 Finite Diophantine normal form

For every type α and S⊆(α→ℕ), native Dioph(S) holds exactly when there are m∈ℕ and p∈MvPolynomial (α⊕Fin m) ℤ such that, for every input x, x∈S if and only if there exists y:Fin m→ℕ with eval(cast∘Sum.elim(x,y),p)=0. This holds without assuming α finite.

α and β are arbitrary types, possibly empty or infinite. Natural-number assignments are cast coordinatewise to integers. Additional hypotheses are stated explicitly.

Unpack native Dioph(S) as a polynomial function f on α⊕β and its existential-root characterization. Apply the inverse of poly-mvpolynomial-equiv to obtain integer polynomial syntax with exactly the same values. Apply finite-right-rename to that polynomial. Then right-rename-solutions replaces the arbitrary β-witness block by Fin m while fixing x; this proves the forward implication. For the reverse implication in universe zero use witness type Fin m and native polynomial T(p). Apply to-dioph-poly-eval. For an arbitrary input universe use the witness type ULift(Fin m) at that universe and rename p along idα⊕ULift.up before applying T. Lifting or lowering assignments gives the same existential condition by MvPolynomial.eval_rename. This is a mathematical existential normal form, not a computable procedure for recovering p or m from a proof of native Dioph. Computable encodings and the MRDP simulation remain separate work.

Even natural inputs are represented by X−2Y. A nonzero constant polynomial has no root, including with zero inputs and witnesses. The statement specializes both to finite tuples and to α=ℕ. Zero witness variables means a polynomial condition, not automatic truth.

The representative signature is `Diophantine.dioph_iff_exists_fin_mvPolynomial` in Suggested.lean.

([Cameron Freer, *Hilbert10 finite Diophantine normal form*](https://github.com/cameronfreer/hilbert10/blob/25b42fcd6c6c5af710c514638a6fcb4e22d00a30/Hilbert10/NormalForm.lean), dioph_iff_exists_fin_mvPolynomial and dioph_iff_exists_finite_mvPolynomial; [Bjorn Poonen, *Undecidability in number theory*](https://math.mit.edu/~poonen/papers/h10_notices.pdf), Definition 1 and footnote 4, author-copy p.2.)

*Needs:* [4.5 Polynomial ring equivalence](#ld4-poly-mvpolynomial-equiv); [4.2 Evaluation on natural assignments](#ld4-to-dioph-poly-eval); [4.8 Finite witness enumeration](#ld4-finite-right-rename); [4.9 Preservation of existential natural roots](#ld4-right-rename-solutions); Mathlib `Dioph`; Mathlib `MvPolynomial.eval_rename`.

<a id="ld4-effective-polynomial-coding"></a>

### 4.11 Effective polynomial and witness coding

Choose a primitive-recursive finite syntax for integer-coefficient polynomials in finitely many free and witness variables. Decode into MvPolynomial and prove evaluation agrees with a computable syntax evaluator on natural and integer assignments. Enumerate witness tuples by a native computable encoding of finite tuples. Any effective input carries its finite syntax explicitly. A bare native Poly is a function with a propositional polynomiality certificate, so neither its classical polynomial representative nor Poly.induction into Prop is a computable reification algorithm.

Encode constants, variables, addition and multiplication, and signed coefficients; prove decoding and evaluation by structural recursion. Enumerate finite witness tuples and dovetail across arities and steps. Prove each actual solution is eventually visited. An explicit finite code gives both its decoded MvPolynomial and, by toDiophPoly, its native Poly with the same values. Conversely the classical comparison gives existence of a representative for a bare Poly, with no computability assertion. Normalize by recursion only on supplied code; no algorithm takes arbitrary native functions as input.

The basic interface must include:

- `effective_polynomial_coding.decode_eval`: Decoded syntax and its computable evaluator have identical integer values.
- `effective_polynomial_coding.enumerate`: Every finite tuple occurs in the effective witness enumeration.
- `effective_polynomial_coding.normalize_code`: Given an explicit finite polynomial code, recursively normalize that code and preserve evaluation and free/witness variable order. A code representing a native Poly is supplied with an evaluation certificate; no computable map from arbitrary Poly is asserted.

**Checks.**

- `effective_polynomial_coding.negative`: The code for X−2 evaluates to −2 at zero, retaining signed coefficients.
- `effective_polynomial_coding.roles`: The code for free X−witness Y distinguishes the two variable blocks.
- `effective_polynomial_coding.empty`: An empty witness block is evaluated once; it is not interpreted as an empty search space.
- `effective_polynomial_coding.presentation_required`: A bare Poly with only its IsPoly proof supplies no executable constructor tree. The code-level algorithms require a supplied finite code; the classical comparison asserts representation existence only.

([Martin Davis, *Hilbert’s tenth problem is unsolvable*](https://www.math.umd.edu/~laskow/Pubs/713/Diophantine.pdf), §7, pp.260–261; §8, pp.262–264.)

*Needs:* [4.10 Finite Diophantine normal form](#ld4-dioph-finite-mvpolynomial); Mathlib `REPred`.

<a id="ld4-dioph-to-re"></a>

### 4.12 Diophantine sets are recursively enumerable

For each n and S⊆ℕ^n, native Dioph S implies native REPred (fun x => x∈S), using an effective encoding of Fin n→ℕ. The construction is uniform in a finite polynomial code and witness arity. The analogous finite-system result over ℤ holds with integer witnesses.

Dovetail the witness enumeration, evaluate the coded polynomial, and halt precisely on a zero. Prove termination iff a finite witness exists; the zero-witness case reduces to a computable equality.

([Martin Davis, *Hilbert’s tenth problem is unsolvable*](https://www.math.umd.edu/~laskow/Pubs/713/Diophantine.pdf), §7, witness-search argument p.264; §8, Definition 8.1 and Theorem 8.1, p.264; code enumeration §7, pp.260–261.)

*Needs:* [4.11 Effective polynomial and witness coding](#ld4-effective-polynomial-coding); Mathlib `REPred`; [4.10 Finite Diophantine normal form](#ld4-dioph-finite-mvpolynomial).

<a id="ld4-diophantine-sequence-coding"></a>

### 4.13 Diophantine sequence number theorem

There is a Diophantine relation Seq(i,u,a) on positive integers that is single-valued in a and codes every prescribed finite list: for every a₁,…,a_n>0 some u satisfies Seq(i,u,a_i) for 1≤i≤n. The zero-based natural version shifts indices and entries explicitly. Its finite-list surjectivity is sufficient; no unique code or total decoder on malformed codes is assumed.

Use the corrected positive pairing P(x,y)=T(x+y−2)+y and its polynomial inverse graph; keep the possible zero remainder represented by the positive modulus itself. The target relation may restrict to the legal decoding cases. Choose y larger than all desired positive entries and divisible by 1,…,n. The moduli 1+iy are pairwise coprime: any common prime divides i−j and hence y, a contradiction. Iterate native CRT, choose a positive x with the required remainders and put u=P(x,y). The remainder graph is a finite polynomial system with inequalities expressed by positive or natural slack variables; combine equations by sums of squares. Shift indices and entries explicitly for the zero-based natural interface. Factorial, binomial and AP-product representability is used in bounded-universal-closure, not needed for this elementary coding theorem.

([Martin Davis, *Hilbert’s tenth problem is unsolvable*](https://www.math.umd.edu/~laskow/Pubs/713/Diophantine.pdf), §1, Theorem 1.1 and Theorems 1.2–1.3 with complete CRT proof, pp.236–238; with the positive-domain pairing convention stated here.)

*Needs:* Mathlib `Nat.chineseRemainder`.

<a id="ld4-bounded-universal-closure"></a>

### 4.14 Bounded universal Diophantine closure

For a Diophantine predicate P(x,i) on natural tuples, the predicate ∀i<n, P(x,i) is Diophantine, uniformly in a finite representation of P. The polynomial witness block has fixed finite arity for that representation; a varying tuple of individual witnesses is compressed by the sequence number theorem. Include n=0 as the true predicate.

Bound the finitely many witnesses at a given input by one auxiliary integer and encode their list. Using native Dioph.pow_dioph, derive Davis Theorem 4.1: binomial coefficients from the large-base binomial expansion and remainder, factorials from the large-binomial floor estimate, and products of an arithmetic progression from their binomial congruence. Then apply Lemmas 5.1–5.2: one bound for all witnesses, factorial moduli 1+kt, CRT encoding, and divisibility by their product replace the bounded universal block. Keep this non-routine construction inside the key theorem; every step is explicit, so tracking codes through it gives the uniform effective form. Convert the resulting finite system to one polynomial over ℕ or ℤ by sums of squares, preserving the positive-to-natural shift.

([Martin Davis, *Hilbert’s tenth problem is unsolvable*](https://www.math.umd.edu/~laskow/Pubs/713/Diophantine.pdf), §4, Theorem 4.1 and Lemmas 4.1–4.7, pp.249–252; §5, Theorem 5.1 and Lemmas 5.1–5.2 with final reduction, pp.253–256.)

*Needs:* [4.13 Diophantine sequence number theorem](#ld4-diophantine-sequence-coding); Mathlib `Dioph.pow_dioph`.

<a id="ld4-recursive-computation-graphs"></a>

### 4.15 Diophantine computation graphs

Every partial recursive function on natural tuples has a Diophantine graph. For minimization, certify defined unequal previous values at all earlier indices and the equal values at the least successful index; divergence at an earlier index must not be silently accepted. For a semidecidable predicate, project the graph of a machine that halts precisely on its members.

Prove graph closure under initial functions and composition using the native Dioph closure operations. Encode a primitive-recursive run by one sequence code and enforce its transition relation with bounded universal closure. For minimization retain all earlier defined outputs and their inequality. Translate the source recursive presentation to native Partrec by its generating constructors.

Prove equivalence between the source’s positive recursive presentation and native Partrec, including a uniform code translation. Davis Theorem 6.1 concerns total positive-integer functions. A native partial computation trace must certify defined outputs and defined earlier values during minimization; an undefined earlier computation cannot be skipped.

([Martin Davis, *Hilbert’s tenth problem is unsolvable*](https://www.math.umd.edu/~laskow/Pubs/713/Diophantine.pdf), §6, Theorem 6.1 and proof, pp.257–260 (total positive-integer functions); §8, Theorem 8.1, p.264; the comparison with native partial recursion is part of this target.)

*Needs:* [4.13 Diophantine sequence number theorem](#ld4-diophantine-sequence-coding); [4.14 Bounded universal Diophantine closure](#ld4-bounded-universal-closure); Mathlib `REPred`; Mathlib `Dioph.pow_dioph`.

<a id="ld4-mrdp"></a>

### 4.16 Matiyasevich–Robinson–Davis–Putnam theorem

For every n and S⊆(Fin n→ℕ), native REPred membership is equivalent to native Dioph S, hence equivalent to a finite existential natural-root representation by one integer-coefficient multivariate polynomial. The forward construction is effective from a program code; the reverse construction is effective from a polynomial code. No rational-witness analogue is asserted.

Represent semidecision by the projected halting computation graph. Compress all finite witnesses into the native polynomial normal form. Use the witness search theorem for the converse. Track code transformations so that the undecidability reduction below is many-one computable.

The code-level comparison with native Partrec (§4.15) and the uniform bounded-universal translation (§4.14) are part of the proof. Existing Diophantine exponentiation and a classical polynomial inverse do not supply them. The Lean milestone `Diophantine.mrdp` uses native REPred on finite tuples, exactly as this statement requires.

The representative signature is `Diophantine.mrdp` in Suggested.lean.

([Martin Davis, *Hilbert’s tenth problem is unsolvable*](https://www.math.umd.edu/~laskow/Pubs/713/Diophantine.pdf), §8, Definition 8.1, Theorem 8.1 and proof, p.264, using Theorems 1.3, 5.1 and 6.1.)

*Needs:* [4.15 Diophantine computation graphs](#ld4-recursive-computation-graphs); [4.12 Diophantine sets are recursively enumerable](#ld4-dioph-to-re); [4.10 Finite Diophantine normal form](#ld4-dioph-finite-mvpolynomial).

<a id="ld4-h10-integers"></a>

### 4.17 Undecidability of Hilbert tenth over integers

There is no total computable decision procedure which, on every finite code for an integer-coefficient polynomial in any finite number of variables, decides whether it has a zero in ℤ. First obtain undecidability for natural witnesses from MRDP and the native halting problem. Effectively replace each natural witness by a sum of four integer squares to obtain the integer decision problem.

Choose a recursively enumerable undecidable native halting set. If polynomial solvability were decidable then its effective MRDP representation would decide that set. Substitute a sum of four squares for every natural variable; every natural value is attained by the native Nat.sum_four_squares theorem, and every such integer value is nonnegative. Keep signed coefficients and arbitrary finite arity in the code transformation.

([Martin Davis, *Hilbert’s tenth problem is unsolvable*](https://www.math.umd.edu/~laskow/Pubs/713/Diophantine.pdf), §7, Theorems 7.2–7.4, pp.261–262; §8, Theorem 8.1, p.264; positive/integer witness conversion is a separate four-square argument.)

*Needs:* [4.16 Matiyasevich–Robinson–Davis–Putnam theorem](#ld4-mrdp); Mathlib `ComputablePred.halting_problem`; Mathlib `Nat.sum_four_squares`; [4.11 Effective polynomial and witness coding](#ld4-effective-polynomial-coding).

<a id="ld4-ring-diophantine-sets"></a>

### 4.18 Diophantine sets over a commutative ring

For a commutative ring R and n∈ℕ, a set S⊆R^n is Diophantine over R when there are finite m,r and polynomials p₁,…,p_r∈R[X₁,…,X_n,Y₁,…,Y_m] such that x∈S iff some y∈R^m satisfies every p_j(x,y)=0. Coefficients are named parameters unless a coefficient subring is explicitly fixed. Finite systems are retained: the sums-of-squares conversion is only available over formally real fields or the specified integer/natural domains.

Use a finite tuple of witness variables and a finite tuple of equations. Prove intersection by concatenating witnesses. Prove finite union over domains by all pairwise products of equations, or over rings with only trivial idempotents by a selector. Over fields express nonzero f by fz=1; no such inverse certificate is assumed for a general domain. Prove comparison with existential ring formulas over fields and with native Dioph only on its natural-assignment domain.

The basic interface must include:

- `ring_diophantine_sets.project`: Projection appends a finite witness block.
- `ring_diophantine_sets.inter_union`: Intersection concatenates systems. Finite union is closed over domains using polynomial products, or over rings with no nontrivial idempotents using a selector; unrestricted-ring union is not asserted.
- `ring_diophantine_sets.pullback`: Polynomial substitution pulls Diophantine sets back.
- `ring_diophantine_sets.field_existential`: Over a field, existential ring formulas with parameters define precisely these finite-system sets.

**Checks.**

- `ring_diophantine_sets.complex_system`: Over ℂ, x²+y²=0 need not imply x=y=0, so it cannot replace that two-equation system.
- `ring_diophantine_sets.empty`: The equation 1=0 defines the empty set over a nonzero ring.
- `ring_diophantine_sets.zero_divisors`: In ℤ/6, a product equation can vanish with both factors nonzero; the domain-only union proof must not be applied.
- `ring_diophantine_sets.field_nonzero`: Over ℚ, ∃z,xz=1 defines precisely x≠0.

For unary subsets of ℚ, `rationalDiophantine` in Suggested.lean specializes this theory to a single equation with a finite witness block; `rationalIntegers` is the actual embedded integer set. Zero and −7 belong to that integer set, whereas 1/2 does not. The empty Diophantine set is witnessed by 1=0 with no witnesses; x≠0 by xy−1=0. These are checks of the specialization, not existential definitions of the integer set.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), §1, pp.73–75, and §3, pp.87–91.)

*Needs:* [0.6 Explicit arithmetic semantics bridges](#ld0-arithmetic-translation); [4.10 Finite Diophantine normal form](#ld4-dioph-finite-mvpolynomial).

<a id="ld4-diophantine-interpretation-transfer"></a>

### 4.19 Effective Diophantine undecidability transfer

Let A have an undecidable finite-system existential theory with a fixed effective coefficient presentation. If an effectively presented ring R has an effective Diophantine interpretation of A, including its domain, equality congruence, ring-operation graphs and computable translation of coefficients, then the finite-system existential theory of R is undecidable. In particular, if ℤ is Diophantine in ℚ then H10 over ℚ is undecidable. That antecedent is a hypothesis, not a theorem of this roadmap.

Translate each input equation using the domain and operation graphs, retaining quotient equality and coefficient codes. Prove both solvability directions by interpretation semantics. A hypothetical target decider composed with this computable translation decides the source problem. For the conditional integer predicate in ℚ, its complement also has an existential certificate: write t=m/n in coprime integer terms with n≠0,±1, witnessing coprimality by um+vn=1. This proves Observation 0 without assuming an unconditional existential integer definition.

The representative signature is `diophantine_integer_transfer (its conditional embedded-integer specialization)` in Suggested.lean.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), §1, Corollaries 3 and 3′, pp.74–75; §3, p.91.)

*Needs:* [4.18 Diophantine sets over a commutative ring](#ld4-ring-diophantine-sets); [4.17 Undecidability of Hilbert tenth over integers](#ld4-h10-integers); [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics).

<a id="ld4-quaternion-trace-sets"></a>

### 4.20 Quaternion trace and semilocal sets

For a,b∈ℚ× define S_ab={2x₁: ∃x₂,x₃,x₄∈ℚ, x₁²−ax₂²−bx₃²+abx₄²=1}, T_ab=S_ab+S_ab, and Δ_ab as the places of ℚ at which the quaternion algebra (a,b) is division. Treat the real place separately from rational primes. Define T_ab×={x∈ℚ×: x∈T_ab and x⁻¹∈T_ab}; inverses are guarded by nonzeroness.

Compare the displayed norm polynomial with the existing quaternion norm and trace API. Construct witnesses for the two summands and the inverse test. Use the imported local Hilbert symbol to define the finite ramification support, with the separate real-place flag.

The basic interface must include:

- `quaternion_trace_sets.trace_equations`: The trace-set predicate has the displayed norm-one existential representation.
- `quaternion_trace_sets.sum`: T membership is witnessed by two S elements.
- `quaternion_trace_sets.units`: A rational unit of T is tested by x and x⁻¹ membership.
- `quaternion_trace_sets.equiv`: Quaternion presentation changes preserving trace and norm preserve S and T.

**Checks.**

- `quaternion_trace_sets.one`: 2∈S_ab via x₁=1 and x₂=x₃=x₄=0.
- `quaternion_trace_sets.real_ramified`: For a,b<0 the real trace range is [−2,2], so the real condition cannot be dropped.
- `quaternion_trace_sets.split`: When the quaternion algebra is split at every place, T_ab=ℚ and Δ_ab is empty.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), §2, definitions and local facts preceding Proposition 6, pp.75–78.)

*Needs:* [4.18 Diophantine sets over a commutative ring](#ld4-ring-diophantine-sets); [TauCetiRoadmap.QuadraticFormInvariants, layer 2 quaternion algebras and the four fold splitting criterion](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/QuadraticFormInvariants/README.md#layer-2-quaternion-algebras-and-the-four-fold-splitting-criterion); [TauCetiRoadmap.QuadraticFormInvariants, 6c the hilbert symbol and the local hasse invariant](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/QuadraticFormInvariants/README.md#6c-the-hilbert-symbol-and-the-local-hasse-invariant).

<a id="ld4-semilocal-trace-description"></a>

### 4.21 Local trace and semilocal integrality theorem

For a,b∈ℚ×, T_ab equals the intersection of ℤ_(p) over finite p∈Δ_ab, further intersected with [−4,4]⊂ℚ if the real place ramifies. If a>0 or b>0 there is no real restriction. For a sum T_ab+T_cd with at least one of a,b,c,d positive, the sum is the intersection over the common finite ramification primes. Empty intersections mean ℚ.

At a finite division place compare S with the inverse image of the permitted finite-field trace set and compute that two copies cover the valuation ring, including the small primes explicitly. At the real place compute the trace interval, or all of ℝ when split. Use weak approximation to choose compatible summands and the imported local-global representation theorem to obtain rational norm-one witnesses. For the sum formula, prescribe p-integral decompositions at the union of supports; intersection primes are the only constraints.

In the dyadic trace calculation for a=6,b=15, the auxiliary triple (1,1,1) gives −6−15+90=69≡5 mod 8; (1,1,0) gives 3 mod 8 and does not supply that row (Koenigsmann Proposition 6 proof, p.78).

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), Proposition 6, pp.77–79; Remark 8(a), statement p.79 and proof pp.79–80.)

*Needs:* [4.20 Quaternion trace and semilocal sets](#ld4-quaternion-trace-sets); [TauCetiRoadmap.GlobalQuadraticForms, layer 4 global square norm and approximation lemmas](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/GlobalQuadraticForms/README.md#layer-4-global-square-norm-and-approximation-lemmas); [TauCetiRoadmap.GlobalQuadraticForms, layer 6 representation and isometry](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/GlobalQuadraticForms/README.md#layer-6-representation-and-isometry); [TauCetiRoadmap.QuadraticFormInvariants, 6c the hilbert symbol and the local hasse invariant](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/QuadraticFormInvariants/README.md#6c-the-hilbert-symbol-and-the-local-hasse-invariant).

<a id="ld4-prime-class-rings"></a>

### 4.22 Prime-class semilocal rings

For k∈{1,3,5,7}, let P^[k] be the odd primes congruent to k mod8, P(p) the primes where v_ℓ(p) is odd, and P^[k](p)=P(p)∩P^[k]. For p,q∈ℚ× put R³_p=T_(−1,−p)+T_(2,−p), R⁵_p=T_(−2,−p)+T_(2,−p), R⁷_p=T_(−1,−p)+T_(−2,p), and R¹_pq=T_(−2p,q)+T_(2p,q). If p∈k+8ℤ_(2), then R^k_p=∩_{ℓ∈P^[k](p)}ℤ_(ℓ) for k=3,5,7; otherwise an additional 2-integrality condition may occur. If p∈1+8ℤ_(2) and q∈3+8ℤ_(2), R¹_pq is the intersection over Δ_(−2p,q)∩Δ_(2p,q). Empty intersections are ℚ. All displayed rings have uniform existential definitions.

Define the finite prime sets and the four ring expressions exactly as displayed. Apply the local trace sum theorem and Hilbert symbol computations with exactly the stated congruence guards. Without those guards retain any extra dyadic condition; do not identify the ring with the odd-prime intersection. Keep the prime 2 and the real place outside the odd class partition.

The basic interface must include:

- `prime_class_rings.membership`: Each ring has its finite-prime intersection description under the displayed congruence guard, with any dyadic correction retained otherwise.
- `prime_class_rings.diophantine`: Each ring membership predicate is existential uniformly in its nonzero parameters.
- `prime_class_rings.empty_support`: Under the corresponding congruence guard, empty prime support gives ℚ.

**Checks.**

- `prime_class_rings.square`: For p=1 and q=3 the class-one common ramification support is empty and R¹_1,3=ℚ.
- `prime_class_rings.class`: R³_3=ℤ_(3), R⁵_5=ℤ_(5), and R⁷_7=ℤ_(7); each parameter satisfies its own congruence guard.
- `prime_class_rings.dyadic`: For p=5 the odd class-three support is empty but R³_5=ℤ_(2), demonstrating the necessary dyadic correction outside the class-three guard.

Keep the first quaternion entries in Definition 7 fixed: the class-five formula uses −2 and 2, and the class-seven formula uses −1 and −2. The altered entries in the proof of Proposition 10(b), p.81, are not alternative definitions.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), Definitions 7 and 9, pp.79–80; Proposition 10, pp.80–81.)

*Needs:* [4.20 Quaternion trace and semilocal sets](#ld4-quaternion-trace-sets); [4.21 Local trace and semilocal integrality theorem](#ld4-semilocal-trace-description).

<a id="ld4-diophantine-radicals"></a>

### 4.23 Diophantine semilocal radicals

For a,b,c∈ℚ× set I^c_ab=cℚ²T_ab×∩(1−ℚ²T_ab×), allowing the zero square, and J_ab=(I^a_ab+I^a_ab)∩(I^b_ab+I^b_ab). Put Δ′=Δ_ab∖{2,∞} when 2 ramifies and both v₂(a),v₂(b) are even, and Δ′=Δ_ab∖{∞} otherwise. Then J_ab=∩_{ℓ∈Δ′}ℓℤ_(ℓ), with empty intersection ℚ. If ∞ does not ramify, Δ′ is the full finite ramification set and is nonempty, this is the Jacobson radical of T_ab. For pairs (a,b),(c,d) with nonempty common finite ramification support, no common dyadic ramification, and at least one of a,b,c,d positive, J_ab+J_cd is the Jacobson radical of T_ab+T_cd. Empty support is handled separately: Jac(ℚ)={0}.

Translate T units into simultaneous membership of x and x⁻¹. Compute valuations of square-times-units and of 1 minus such elements; separate the odd and dyadic cases in Lemma 13. For sums of semilocal rings with nonempty common support, combine the two radical ideals by the source intersection formula.

The basic interface must include:

- `diophantine_radicals.nonempty_radical`: With nonempty support and the stated parity hypotheses the J formula is the Jacobson radical.
- `diophantine_radicals.existential`: The displayed I and J expressions use existential ring conditions.
- `diophantine_radicals.sum_radical`: Lemma 14 combines radicals after checking nonempty common support.
- `diophantine_radicals.empty`: The radical of the field ℚ is {0}; no empty-intersection formula changes it to ℚ.

**Checks.**

- `diophantine_radicals.singleton`: For R=ℤ_(3), Jac(R)=3ℤ_(3).
- `diophantine_radicals.two_primes`: For R=ℤ_(3)∩ℤ_(5), Jac(R)=3ℤ_(3)∩5ℤ_(5).
- `diophantine_radicals.field`: For R=ℚ, Jac(R)={0}, while the unguarded existential expression can be ℚ.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), Definition 12, pp.81–82; Lemma 13, pp.82–83; Lemma 14, p.83.)

*Needs:* [4.22 Prime-class semilocal rings](#ld4-prime-class-rings); [4.20 Quaternion trace and semilocal sets](#ld4-quaternion-trace-sets); [4.18 Diophantine sets over a commutative ring](#ld4-ring-diophantine-sets).

<a id="ld4-prime-parameter-families"></a>

### 4.24 Prime-covering Diophantine parameter families

For k=1,3,5,7 let Φ_k={p∈ℚ×:p>0, p∈k+8ℤ_(2), P(p)⊂P^[1]∪P^[k]}. Define Ψ={(p,q)∈Φ₁×Φ₃:p∈2(ℚ×)²(1+Jac(R³_q))}. Their membership and the relevant radical memberships are Diophantine over ℚ. For p∈Φ_k with k=3,5,7 the k-support is nonempty; for (p,q)∈Ψ the support P(p,q) is nonempty. Every odd rational prime is detected by a suitable family with singleton support, and the dyadic place has the separate fixed T-set test.

Use the source existential expressions for rational positivity and congruences, preserving nonzero square factors. Apply the Hilbert symbol parity computations to prove nonemptiness in each family. For the class-one case use the two-parameter construction in Proposition 16, including the prescribed local conditions at 2.

The basic interface must include:

- `prime_parameter_families.existential`: Each allowed parameter predicate has a fixed existential ring formula.
- `prime_parameter_families.support_nonempty`: Every allowed radical use has nonempty prime support.
- `prime_parameter_families.prime_cover`: For each odd prime a permitted parameter has support exactly that prime.

**Checks.**

- `prime_parameter_families.three`: p=3 is in Φ₃ and detects 3-integrality.
- `prime_parameter_families.negative`: p=−3 fails the positivity condition even though its odd prime divisor is 3.
- `prime_parameter_families.square`: A rational square cannot be a member of Φ₃, Φ₅ or Φ₇, by its 2-adic unit congruence.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), Corollary 15 and Proposition 16, pp.84–86.)

*Needs:* [4.23 Diophantine semilocal radicals](#ld4-diophantine-radicals); [4.22 Prime-class semilocal rings](#ld4-prime-class-rings); [4.21 Local trace and semilocal integrality theorem](#ld4-semilocal-trace-description); Mathlib `Nat.forall_exists_prime_gt_and_modEq`.

<a id="ld4-universal-integers"></a>

### 4.25 Universal definition of integers in rationals

There is a parameter-free universal first-order formula in the ring language defining ℤ⊂ℚ; equivalently ℚ∖ℤ is Diophantine over ℚ. For a nonempty finite S and R=∩_{ℓ∈S}ℤ_(ℓ), the source universal predicate R̃={x:¬∃y∈Jac(R),xy=1} equals ⋃_{ℓ∈S}ℤ_(ℓ), not R itself. Intersect its instances over Φ₃,Φ₅,Φ₇ and Ψ, together with the fixed dyadic integrality predicate, to recover ℤ.

For x≠0 compare x⁻¹∈Jac(R) with v_ℓ(x)<0 for all ℓ∈S; at x=0 the universal condition holds. Each integer passes every local integrality test. A noninteger has a negative valuation at some prime; choose a singleton-support parameter, or the dyadic test, that rejects it. All guards have existential descriptions, so their implications can be placed under universal quantifiers. Negate the resulting formula and combine equations using formal reality of ℚ.

The representative signature is `universal_integers and rational_nonintegers_diophantine` in Suggested.lean.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), Lemma 17, p.85, and Proposition 18, p.86; Theorem 1 and Corollary 2, pp.73–74.)

*Needs:* [4.24 Prime-covering Diophantine parameter families](#ld4-prime-parameter-families); [4.23 Diophantine semilocal radicals](#ld4-diophantine-radicals); [4.22 Prime-class semilocal rings](#ld4-prime-class-rings); [4.18 Diophantine sets over a commutative ring](#ld4-ring-diophantine-sets).

<a id="ld4-rational-mixed-theory-undecidable"></a>

### 4.26 Undecidable universal-existential rational theory

The universal-existential fragment of the parameter-free ring theory of ℚ is undecidable. This follows by restricting integer witnesses through the universal definition of ℤ in an MRDP instance; its dual fragment is also undecidable by negation and a hypothetical complete decision algorithm. This does not establish undecidability of the existential theory of ℚ.

Translate integer polynomial solvability as an existential rational tuple with universal integer-membership guards. Prenex the formula as existential-universal. A decision algorithm for universal-existential sentences decides its negation, hence the integer problem.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), Corollaries 3 and 3′, pp.74–75.)

*Needs:* [4.25 Universal definition of integers in rationals](#ld4-universal-integers); [4.17 Undecidability of Hilbert tenth over integers](#ld4-h10-integers); [0.6 Explicit arithmetic semantics bridges](#ld0-arithmetic-translation).

<a id="ld4-square-detection-unions"></a>

### 4.27 Square-detection unions of local rings

For p∈Φ₁ define S_p={x:∃q, (p,q)∈Ψ, q∈(R¹_pq)× and x∈R¹_pq}. Its membership is uniformly Diophantine and S_p=⋃_{ℓ∈P(p)}ℤ_(ℓ). For square p∈Φ₁ this union is empty. The parameter guard p∈Φ₁ is essential: this is not a formula for arbitrary nonzero rational p. The notation is S_p from Definition 19, not a one-parameter R¹_p.

Expand Ψ, the unit test and R membership into existential conditions. Use Lemma 20 to prove both containments and construct q for each selected odd-valuation prime, with the dyadic case separated as in the source.

The basic interface must include:

- `square_detection_unions.exists_formula`: S_p has a uniform existential ring definition.
- `square_detection_unions.square_empty`: For square p∈Φ₁ the set is empty.
- `square_detection_unions.nonsquare_union`: For p∈Φ₁, the set equals the union over its odd-valuation primes.

**Checks.**

- `square_detection_unions.square`: S_1 is empty.
- `square_detection_unions.prime`: S_17=ℤ_(17), since the prime 17 lies in Φ₁.
- `square_detection_unions.two_primes`: For p=17·41∈Φ₁, S_p=ℤ_(17)∪ℤ_(41), so 1/17 belongs; the intersection would reject it.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), Definition 19, p.86; Lemma 20, pp.86–87.)

*Needs:* [4.24 Prime-covering Diophantine parameter families](#ld4-prime-parameter-families); [4.22 Prime-class semilocal rings](#ld4-prime-class-rings); [4.18 Diophantine sets over a commutative ring](#ld4-ring-diophantine-sets); Mathlib `Nat.forall_exists_prime_gt_and_modEq`.

<a id="ld4-nonsquares-and-nonnorms"></a>

### 4.28 Diophantine nonsquares and quadratic nonnorms

The subsets ℚ∖ℚ² and {(x,y)∈(ℚ×)²: x is not a norm from ℚ(√y)} are Diophantine over ℚ, with the split case y square contributing no nonnorms. The prime-disjointness and empty-prime-class predicates used in the proof are Diophantine with the corrected multiplicative square-class parametrizations. For class 3, use {±1,±2}(ℚ×)² ∏_{k∈{1,5,7}}Φ′_kΦ′_k for P^[3](x)=∅, where Φ′_k is Φ_k∪{1}; do not use the erroneous union of two equal products.

Express disjoint finite prime supports by the radical criterion. Prove the nonsquare and empty-class tests by parity of valuations, retaining rational square factors and signs. Use the quadratic Hasse norm theorem and local norm/Hilbert symbol tests; include the real-place obstruction when appropriate.

For an odd prime ℓ≡3 mod 8, (2/ℓ)=−1 by the supplementary reciprocity law. For the class-three empty-support predicate, 35 requires both the class-five and class-seven factors, while squares and signed unit multiples require the square and {±1,±2} factors. Keep ℤ_(ℓ) for the rational ring in the norm formula (Koenigsmann Proposition 21(b),(d),(e), pp.88–90).

The representative signature is `rational_nonsquares_diophantine` in Suggested.lean.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), Proposition 21(a)–(e), pp.88–90.)

*Needs:* [4.27 Square-detection unions of local rings](#ld4-square-detection-unions); [4.24 Prime-covering Diophantine parameter families](#ld4-prime-parameter-families); [4.23 Diophantine semilocal radicals](#ld4-diophantine-radicals); [TauCetiRoadmap.GlobalQuadraticForms, layer 4 global square norm and approximation lemmas](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/GlobalQuadraticForms/README.md#layer-4-global-square-norm-and-approximation-lemmas); [4.18 Diophantine sets over a commutative ring](#ld4-ring-diophantine-sets); Mathlib `Nat.forall_exists_prime_gt_and_modEq`.

<a id="ld4-one-universal-variable"></a>

### 4.29 Integer definition with one universal variable

There exists an integer polynomial P(t,x,y₁,…,y_m) such that for t∈ℚ, t∈ℤ iff ∀x∈ℚ ∃y∈ℚ^m, P(t,x,y)=0. The single universally quantified variable is x; the witness arity m is fixed. Use S_x from Definition 19 for the class-one clause, and the corrected rational 2-local residue classes k+8ℤ_(2) in the source proof.

Use the Diophantine complements of the Φ_k guards and the S_x characterization to obtain one universal parameter. Combine finitely many rational polynomial conditions by a product for disjunction and sums of squares for conjunction.

The class-one clause uses the one-parameter S_p, not an undefined one-parameter R¹_p. The dyadic guards are k+8ℤ_(2); k+ℤ_(2) cannot distinguish odd residue classes (Koenigsmann Corollary 22, pp.90–91).

The representative signature is `one_universal_variable` in Suggested.lean.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), Corollary 22, pp.90–91.)

*Needs:* [4.27 Square-detection unions of local rings](#ld4-square-detection-unions); [4.28 Diophantine nonsquares and quadratic nonnorms](#ld4-nonsquares-and-nonnorms); [4.25 Universal definition of integers in rationals](#ld4-universal-integers); [4.18 Diophantine sets over a commutative ring](#ld4-ring-diophantine-sets).

<a id="ld4-normic-zero-cycles"></a>

### 4.29a Effective zero-cycles on normic bundles

Let k be a number field, p a prime, K/k a cyclic field extension of degree p, and P=QR∈k[x] separable of degree 2p with Q,R irreducible of degree p and without zero in K. Let U=U(K/k,P) be the smooth affine k-variety N_{K/k}(Ξ)=P(x)≠0. Prove `normicZeroCycles`:

- (a) U has a smooth projective model X with a morphism π:X→ℙ¹ extending (Ξ,x)↦x, whose generic fibre is the Severi–Brauer variety of dimension p−1 of the cyclic algebra (K/k,P(x)); the classes (K/k,Q(x)) and (K/k,R(x)) of Br k(x) lie in Br X, and Br X/Br k is cyclic of order p generated by (K/k,Q(x)).
- (b) If an adelic point (M_v)∈∏_v U(k_v) is orthogonal to (K/k,Q(x)), then U has a point over a field extension L/k of degree 2p+1; in particular Sym^(2p+1)U and Sym^(2p+1)X have k-points.
- (c) Suppose k contains a primitive p-th root of unity ζ, fix d∈k×, and for u∈k× let X_u be the model of (a) for K=k((du)^(1/p)), defined in a smooth projective family over k[u,1/u]. The set of u with X_u(𝔸_k)≠∅ and X_u(𝔸_k)^Br=∅ is a finite union of classes of k×/k×p.
- (d) For k containing ζ there exist d∈k×∖k×p and P=QR as above for K=k(d^(1/p)) such that X has points in every completion of k but no zero-cycle of degree 1, the obstruction coming from (d,Q(x))_ζ; consequently Sym^(2p+1)U has no k-point.

For (a), glue the two affine charts x and y=1/x of the norm equation, replace the fibres away from P=0 by Severi–Brauer varieties, and resolve and compactify; the residues of (K/k,Q(x)) at the closed points of ℙ¹ vanish on X because Q and R have no zero in K (CTV Proposition 2.2, pp.5–7). For (b), apply the fibration method for rational points on π: fibres over closed points have the Hasse principle (Severi–Brauer), every fibre over a closed point has a multiplicity-one component whose function field contains an abelian extension of the residue field, and d₀=2p is the total degree of the closed points with nonsmooth fibre; Harari's formal lemma, the implicit function theorem (to produce d=2p+1 distinct local points with equal Brauer values) and Salberger's device give a closed point of degree 2p+1 whose fibre has a rational point (CTV Theorem 3.1 and proof, pp.8–9; Corollary 3.2, p.10). For (c), outside a finite set of places the curve z^p=Q(x)R(x) has points and the algebra (u,Q(x))_ζ takes every value in ℤ/p on it when v(u)≢0 mod p, by the Weil bound for the smooth complete-intersection curves z₁^p=γQ, z₂^p=γ⁻¹R over large residue fields and Hensel's lemma (CTV Lemma 4.1, pp.14–15); so obstructed u have p-divisible valuations outside a finite set, a finite group of classes by finiteness of the class group and Dirichlet's unit theorem (CTV Proposition 4.2, pp.15–16). For (d), choose primes a,b≡1 mod (1−ζ)^(2p−1) with the stated nonresidue conditions by Chebotarev and class field theory, put d=ab, Q=x^p+c, R=ax^p+ac+1 with b∣ac+1, check local points at every place by Hensel's lemma, and evaluate (d,Q(x))_ζ on zero-cycles of degree one place by place (CTV Proposition 3.4 and proof, pp.10–14).

The basic interface must include:

- `normic_zero_cycles.brauer`: Br X/Br k is cyclic of order p, generated by (K/k,Q(x)).
- `normic_zero_cycles.effective`: orthogonality of one adelic point to (K/k,Q(x)) yields a point over an extension of degree exactly 2p+1.
- `normic_zero_cycles.symmetric_power_map`: a point over a degree-N extension gives a k-point of Sym^N U, and conversely a k-point of Sym^N U is an effective Galois-stable zero-cycle of degree N.
- `normic_zero_cycles.finite_classes`: the obstructed parameters form finitely many classes of k×/k×p.

**Checks.**

- `normic_zero_cycles.split_algebra`: If K/k is not a field (split étale algebra), X is k-birational to ℙ^p and Br X=Br k, so there is no obstruction (CTV Proposition 2.2(ii)).
- `normic_zero_cycles.degree_p_point`: U has a point over K itself, since over K the norm form splits and represents every nonzero value. Since gcd(p,2p+1)=1, a point of degree 2p+1 from (b) and this point of degree p give the zero-cycle of degree (2p+1)−2p=1; in the family of (d) no such cycle exists, so the obstruction is what removes the degree-(2p+1) point.
- `normic_zero_cycles.symmetric_power_count`: For N=1, Sym¹U=U; for N=2p+1 the effective cycle of a closed point of degree 2p+1 is one k-point of Sym^(2p+1)U.
- `normic_zero_cycles.orthogonality_needed`: In the family of (d), every completion has points but the Brauer evaluation of (d,Q(x))_ζ on degree-one zero-cycles never sums to zero, so (b) cannot hold without its orthogonality hypothesis.

([Jean-Louis Colliot-Thélène and Jan Van Geel, *Le complémentaire des puissances n-ièmes dans un corps de nombres est un ensemble diophantien*](https://arxiv.org/pdf/1401.0915), Proposition 2.2, pp.5–7; Theorem 3.1, pp.8–9; Corollary 3.2, p.10; Proposition 3.4, pp.10–14; Lemma 4.1, pp.14–15; Proposition 4.2, pp.15–16.)

*Needs:* [TauCetiRoadmap.HeightsRationalPointsAndObstructions, §2.16b](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md#216b-brauer-residues); [§2.17](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md#217-unramified-brauer-groups); [§2.20](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md#220-brauer-pairing-on-zero-cycles); [§2.21](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md#221-hararis-formal-lemma); [TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero, §6.2](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md#62-snccompactification); [TauCetiRoadmap.WeilConjectures, curve Riemann hypothesis](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/WeilConjectures/README.md#curve-rh-from-the-surface-bound); [TauCetiRoadmap.Chebotarev](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/Chebotarev/README.md); [TauCetiRoadmap.ClassFieldTheory](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ClassFieldTheory/README.md).

<a id="ld4-nonpowers"></a>

### 4.30 Nonpowers over a number field

For a number field k and integer r>1, k×∖k×r is Diophantine over k; equivalently it is a finite union of polynomial-system images on k-rational points. Zero is excluded by an inverse witness. For r=1 the set is empty, which is Diophantine separately. The prime-exponent reduction and the descent from a root-of-unity extension are part of the finite-dimensional interpretation.

Reduce r to prime factors and pass to a finite extension containing the needed roots of unity, recording norm/power and restriction-of-scalars comparisons (CTV p.16, citing Poonen and Várilly-Alvarado–Viray). For r=p, the sets N_v=k×∖(k×∩k_v×p) are Diophantine; D₁={u: Sym^(2p+1)U_u(k)≠∅} is Diophantine as the image of the k-points of the relative symmetric power over k[u,1/u]. Put D₂=D₁∪⋃_{v∈S}N_v. By §4.29a(b) its complement E lies in the obstructed set, which by §4.29a(c) is a finite union of k×p-classes, and by §4.29a(d) the class k×p lies in E. Hence D₃=E∖k×p is a finite union of classes, each Diophantine, and k×∖k×p=D₂∪D₃. Enforce x≠0 explicitly.

The effective zero-cycle theorem and the Brauer computations are §4.29a; a general Brauer pairing on zero-cycles by itself gives neither the degree bound 2p+1 nor the finiteness of obstructed classes.

([Jean-Louis Colliot-Thélène and Jan Van Geel, *Le complémentaire des puissances n-ièmes dans un corps de nombres est un ensemble diophantien*](https://arxiv.org/pdf/1401.0915), Theorem 4.3 and proof, pp.16–17.)

*Needs:* [4.18 Diophantine sets over a commutative ring](#ld4-ring-diophantine-sets); [4.29a Effective zero-cycles on normic bundles](#ld4-normic-zero-cycles).

<a id="ld4-existential-model-interfaces"></a>

### 4.31 Existential closure and model completeness

For a ring embedding M↪N, M is existentially closed in N if every existential ring formula with parameters from M true in N is true in M. A theory T is model complete when every embedding between models of T is elementary. Keep these distinct predicates and the native semantic notions of embedding and elementary embedding; Robinson’s test relates them for models of a theory.

Define relative existential closure using native BoundedFormula.IsExistential and parameters from the smaller structure; reuse that existing syntax fragment instead of defining another one. Define model completeness by all embeddings of models being elementary, then prove the existential test by the standard diagram/compactness argument.

The basic interface must include:

- `existential_model_interfaces.parameters`: Existential closure allows arbitrary parameters from the smaller model.
- `existential_model_interfaces.elementary`: An elementary embedding is existentially closed.
- `existential_model_interfaces.robinson`: T is model complete iff embeddings between its models are existentially closed.

**Checks.**

- `existential_model_interfaces.identity`: Every structure is existentially closed in itself.
- `existential_model_interfaces.rational_real`: ℚ is not existentially closed in ℝ: X²=2 acquires a root.
- `existential_model_interfaces.direction`: Existential closure only descends existential truths; it does not assert arbitrary elementary equivalence.

Prove the existential-preservation theorem by the native compactness/diagram argument, retaining all parameters from the smaller model. A new syntax for existential formulas is unnecessary.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), §4, preservation criterion before Proposition 23, p.91; Remark 24, p.92.)

*Needs:* [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics); Mathlib `FirstOrder.Language.BoundedFormula.IsExistential`.

<a id="ld4-rational-model-preservation"></a>

### 4.32 Rational-model preservation criteria

For K⊂L both models of Th(ℚ), let Z_K,Z_L be defined by a fixed universal integer formula. Then (a) Z_L∩K⊂Z_K; (b) Z_L∩K is integrally closed in K; (c) for every positive n, L^n∩K=K^n, so K is radically closed in L. Conditionally, if ℤ is Diophantine in ℚ, then (d) Z_L∩K=Z_K and K is relatively algebraically closed in L. More generally, ℤ has an existential definition in ℚ iff Z_K⊂Z_L for every such embedding. Finally Th(ℚ) is not model complete: model completeness would make every definable rational subset existential, contradicting the non-RE complement of an RE undecidable subset of the defined integer ring. No unconditional existential integer definition follows.

Use downward preservation of universal formulas for the first containment. Use monic-equation witnesses for integral closure and Diophantine nonpowers for radical closure. Apply the model-theoretic existential preservation theorem to the fixed universal formula, using the complete theory Th(ℚ). For non-model-completeness, take an RE nonrecursive set represented in interpreted arithmetic and use existential normal forms to derive the impossible RE complement.

For the conditional relative-algebraic-closure conclusion, formalize the monic-root decision predicate and its uniform MRDP translation from Koenigsmann Proposition 23(d). The diagram/preservation theorem is §4.31. Neither conclusion supplies an unconditional existential integer definition.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), §4, Proposition 23(a)–(d), pp.91–92; Remark 24, p.92.)

*Needs:* [4.31 Existential closure and model completeness](#ld4-existential-model-interfaces); [4.25 Universal definition of integers in rationals](#ld4-universal-integers); [4.30 Nonpowers over a number field](#ld4-nonpowers); [4.16 Matiyasevich–Robinson–Davis–Putnam theorem](#ld4-mrdp).

<a id="ld4-two-universal-integers"></a>

### 4.33 Two-universal-variable integer formula

For t∈ℚ, let u=(u₁,u₂,u₃,u₄), v=(v₂,v₃,v₄), A(u)=Σᵢuᵢ², B=a u₂²+b u₃²−ab u₄², and C=a v₂²+b v₃²−ab v₄². Put F=(a+A(u))(b+A(u))((u₁²−B−1)²+((t−2u₁)²−4C−4)²). Then t∈ℤ iff for every a,b∈ℚ there exist u∈ℚ⁴,v∈ℚ³ with F=0. This displayed polynomial has degree at most 8 in the seven existential coordinates and total degree 12 when a,b,t are also variables; no total-degree-8 claim is made.

For a,b>0 the two guard factors are nonzero, so F=0 gives two norm-one quaternion traces whose sum is t. Apply the semilocal trace description and intersect over the positive parameters to recover ℤ. If a≤0 or b≤0, four rational squares represent its negative after clearing a square denominator; choose the shared u tuple to make the corresponding guard factor zero. For positive a,b and integral t the trace-sum theorem supplies u and v. The highest existential degree is 8; the monomial a²b²u₄⁸ has coefficient 1, certifying total degree 12.

There are exactly two universally quantified and seven existentially quantified rational variables. Degenerate nonpositive parameters are discharged by a guard factor, never by assuming they are positive. The degree convention distinguishes existential-block degree from total degree.

([Jochen Koenigsmann, *Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf), Step 1 conclusion, p.79; introduction p.75.)

*Needs:* [4.21 Local trace and semilocal integrality theorem](#ld4-semilocal-trace-description); Mathlib `Nat.sum_four_squares`; [4.18 Diophantine sets over a commutative ring](#ld4-ring-diophantine-sets).

### Examples

The syntax X₀−2X₁ evaluates at (1,3) to −5. X(X−1) vanishes on {0,1} yet takes value 2 at 2, so injectivity of the syntax comparison uses an infinite box. The equation U−V−1 has natural root (1,0), and identifying the two witnesses removes every root. R³₃=ℤ_(3), while R³₅=ℤ_(2) outside its class-three congruence guard. For p=17·41, S_p is a union of the two local rings and contains 1/17. The universal predicate must therefore not be replaced by an intersection. The constant equation 1=0 has no roots, including with empty input and witness blocks.

### Dependencies

Mathlib `Poly`; Mathlib `Poly.proj`; Mathlib `Poly.const`; Mathlib `MvPolynomial.eval₂Hom`; Mathlib `Int.castRingHom`; Mathlib `MvPolynomial.eval₂Hom_C`; Mathlib `MvPolynomial.eval₂Hom_X'`; Mathlib `Poly.ext`; Mathlib `Poly.const_apply`; Mathlib `Poly.proj_apply`; Mathlib `MvPolynomial.induction_on`; Mathlib `Poly.add_apply`; Mathlib `Poly.mul_apply`; Mathlib `Poly.induction`; Mathlib `MvPolynomial.funext_set`; Mathlib `Nat.cast_injective`; Mathlib `Set.infinite_range_of_injective`; Mathlib `RingEquiv.ofBijective`; Mathlib `Poly.map_apply`; Mathlib `MvPolynomial.eval_rename`; Mathlib `MvPolynomial.exists_finset_rename`; Mathlib `Finset.toRight`; Mathlib `Finset.mem_toRight`; Mathlib `MvPolynomial.rename`; Mathlib `MvPolynomial.rename_rename`; Mathlib `Fintype.equivFin`; Mathlib `Function.extend`; Mathlib `Function.Injective.extend_apply`; Mathlib `Dioph`; Mathlib `REPred`; Mathlib `Nat.chineseRemainder`; Mathlib `Dioph.pow_dioph`; Mathlib `ComputablePred.halting_problem`; Mathlib `Nat.sum_four_squares`; [0.6 Explicit arithmetic semantics bridges](#ld0-arithmetic-translation); [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics); [TauCetiRoadmap.QuadraticFormInvariants, layer 2 quaternion algebras and the four fold splitting criterion](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/QuadraticFormInvariants/README.md#layer-2-quaternion-algebras-and-the-four-fold-splitting-criterion); [TauCetiRoadmap.QuadraticFormInvariants, 6c the hilbert symbol and the local hasse invariant](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/QuadraticFormInvariants/README.md#6c-the-hilbert-symbol-and-the-local-hasse-invariant); [TauCetiRoadmap.GlobalQuadraticForms, layer 4 global square norm and approximation lemmas](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/GlobalQuadraticForms/README.md#layer-4-global-square-norm-and-approximation-lemmas); [TauCetiRoadmap.GlobalQuadraticForms, layer 6 representation and isometry](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/GlobalQuadraticForms/README.md#layer-6-representation-and-isometry); Mathlib `Nat.forall_exists_prime_gt_and_modEq`; [TauCetiRoadmap.HeightsRationalPointsAndObstructions, §§2.16b–2.21](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md#layer-2-adelic-spaces-and-brauer-evaluation); [TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero, §6.2](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md#62-snccompactification); [TauCetiRoadmap.WeilConjectures, curve Riemann hypothesis](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/WeilConjectures/README.md#curve-rh-from-the-surface-bound); [TauCetiRoadmap.Chebotarev](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/Chebotarev/README.md); [TauCetiRoadmap.ClassFieldTheory](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ClassFieldTheory/README.md); Mathlib `FirstOrder.Language.BoundedFormula.IsExistential`.

## Layer 5: normalized local densities and arithmetic consumers

Normalize congruence counts before forming a generating series or naming a density. Uniform local identities transfer through fixed motivic data; global analytic conclusions remain the consumers’ responsibility.

<a id="ld5-congruence-density-series"></a>

### 5.1 Congruence counts and normalized local densities

For a fixed integral coefficient datum, a fixed Denef–Pas formula Φ(x,t,n) with x∈O_K^d, parameters t in its declared definable base, and n∈ℕ, define A_K,t,n as its measurable solution set, N_K,t,n as the finite count modulo π^n only when Φ is invariant under that reduction, and a_K,t,n=µ(A_K,t,n). In that invariant case a=q_K^(−dn)N. Define P_K,t(T)=Σ_n a_K,t,n T^n. A local density is a specified limit of a chosen normalization only when existence has been proved; it is not the raw count N.

Define the level sets and measure coefficients, then prove the reduction-fibre measure q^(−dn). Record reduction invariance as a separate hypothesis before using finite counts. Obtain rationality by motivic Presburger summation and specialization.

The basic interface must include:

- `congruence_density_series.count_measure`: For reduction-invariant Φ, normalized finite counts equal Haar volumes.
- `congruence_density_series.series`: The series records the displayed coefficients with its formal variable T.
- `congruence_density_series.base_change`: Allowed coefficient specializations preserve the defining formula after its fixed finite residue bound.
- `congruence_density_series.limit`: A density value is introduced only with a proved convergence statement.

**Checks.**

- `congruence_density_series.whole`: For all of O_K^d, N_n=q^(dn) and a_n=1.
- `congruence_density_series.one_ball`: For x∈πO_K in one variable, a_n=q^−1 for n≥1.
- `congruence_density_series.raw`: Raw counts of all of O_K grow with n and cannot be called a probability density.
- `congruence_density_series.level_zero`: At n=0 the reduction ring has one element; its use requires the formula’s level-zero interpretation.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §14.4, Theorem 14.4.1, pp.79–81; §16.4, pp.89–90.)

*Needs:* [1.1 The Denef–Pas language](#ld1-denef-pas-language); [2.6 Igusa and local Poincaré rationality](#ld2-igusa-rationality); [3.9 Specialization to local-field integrals](#ld3-specialization).

<a id="ld5-uniform-density-transfer"></a>

### 5.2 Uniform identities for local counting series

For the fixed formula and coefficients of congruence-density-series and fixed constructible relations between its rational generating functions, there is N such that the universally quantified relation in all allowed parameters holds over one local field of residue characteristic >N iff it holds over any other with compatibly isomorphic residue field. The same conclusion applies to specified convergent local-density formulas only after proving that their limits are represented by the fixed motivic data. No effective N or equality between unrelated valued-field parameters is asserted.

Represent each normalized counting coefficient or rational expression by the chosen motivic pushforward. Clear only the explicitly invertible denominators. Apply transfer to the resulting universal equality of constructible functions. For a limiting density first prove the limit expression is one of these fixed functions; transfer is not interchanged with an arbitrary limit.

([Raf Cluckers and François Loeser, *Constructible exponential functions, motivic Fourier transform and transfer principle*](https://arxiv.org/pdf/math/0512022), Theorem 9.2.4, p.46; §9.1, pp.40–44.)

*Needs:* [5.1 Congruence counts and normalized local densities](#ld5-congruence-density-series); [3.10 Transfer of integral identities](#ld3-integral-transfer).

<a id="ld5-zeta-density-consumer"></a>

### 5.3 Local zeta and arithmetic-statistics interface

Export the local rational function, normalized measure, parameter domain and finite exceptional-prime policy to arithmetic-statistics consumers. For a polynomial f and Re(s)>0 put T=q^(−s), compare the specialized generating function with ∫_{O_K^d}|f|^s, and only then identify the consumer’s local factor. Euler-product convergence, orbit stabilizers, global counting asymptotics and functional equations are additional consumer inputs, not consequences of local definability.

Match the generating-variable convention and Haar mass of O_K before substituting T. Derive the valuation-layer identity term by term in an absolute-convergence half-plane. Export the resulting formula with its poles and finite exceptional set.

([Raf Cluckers and François Loeser, *Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203), §14.4, pp.79–81, and §16.4, p.90.)

*Needs:* [5.1 Congruence counts and normalized local densities](#ld5-congruence-density-series); [2.6 Igusa and local Poincaré rationality](#ld2-igusa-rationality); [3.9 Specialization to local-field integrals](#ld3-specialization).

<a id="ld5-singular-fibre-example"></a>

### 5.4 Singular-fibre integral for the product map

For a nonarchimedean local field with residue size q and Haar mass µ(O)=1, the number of residue-field solutions of xy=0 is 2q−1. Over nonzero a∈m, the fibre of xy=a in O² is parametrized by |a|≤|x|≤1 with relative density |dx/x|, whose mass is (v(a)+1)(1−q^−1). Integrating this mass over a∈m∖{0} and multiplying by q² gives 2q−1. The singular fibre a=0 is not a smooth fibre endowed with that relative formula.

Count the two residue coordinate axes and subtract their shared origin. For v(a)=n≥1 split the annulus into shells v(x)=0,…,n, each with logarithmic mass 1−q^−1. Sum q²(1−q^−1)²Σ_{n≥1}(n+1)q^−n and evaluate the elementary series.

The representative signature is `product_zero_residue_count (the finite residue-field count)` in Suggested.lean.

([Michael Groechenig, Dimitri Wyss and Paul Ziegler, *Geometric stabilisation via p-adic integration*](https://arxiv.org/pdf/1810.06739v2), Example 2.4, p.7, equations (8)–(9).)

*Needs:* [2.12 Fubini for relative top forms](#ld2-submersion-fubini); [2.9 Weil volume and residue point counts](#ld2-weil-volume).

<a id="ld5-algorithmic-frontier"></a>

### 5.5 Certified algorithms and undecidability boundaries

For fixed K with effective finite residue rings and a reduction-invariant polynomial congruence formula, every finite-level count N_n is computable by exhaustive enumeration with a checkable witness trace. This coexists with undecidability of unrestricted integer polynomial solvability. A witness search semidecides positive solvability; a timeout is not a proof of absence. Rational H10 and other-field variants receive no unconditional verdict from this roadmap; each needs its own interpretation theorem and coefficient presentation.

Enumerate the finite residue domain and evaluate the fixed formula when its chosen finite presentation admits decidable evaluation. Prove the enumeration count equals the mathematical finite count. Separate this termination proof from the unbounded search problem to which MRDP applies.

([Martin Davis, *Hilbert’s tenth problem is unsolvable*](https://www.math.umd.edu/~laskow/Pubs/713/Diophantine.pdf), §7, Theorem 7.4, p.262; §8, Theorem 8.1, p.264; scope comparison with Koenigsmann Corollary 3, pp.74–75.)

*Needs:* [5.1 Congruence counts and normalized local densities](#ld5-congruence-density-series); [4.17 Undecidability of Hilbert tenth over integers](#ld4-h10-integers); [4.19 Effective Diophantine undecidability transfer](#ld4-diophantine-interpretation-transfer); [4.12 Diophantine sets are recursively enumerable](#ld4-dioph-to-re).

### Examples

For all of O^d at level n, the raw count is q^(dn) and its normalized measure is 1. For xy=0 over the residue field, the axes contribute q+q−1=2q−1. At v(a)=n≥1, the nonzero fibre xy=a has logarithmic mass (n+1)(1−q⁻¹). Its sum over a∈m∖{0}, multiplied by q², is q²(1−q⁻¹)²∑_{n≥1}(n+1)q⁻ⁿ=2q−1. This calculation uses only smooth nonzero fibres; it gives no relative smooth measure to the singular fibre itself.

### Dependencies

[1.1 The Denef–Pas language](#ld1-denef-pas-language); [2.6 Igusa and local Poincaré rationality](#ld2-igusa-rationality); [3.9 Specialization to local-field integrals](#ld3-specialization); [3.10 Transfer of integral identities](#ld3-integral-transfer); [2.12 Fubini for relative top forms](#ld2-submersion-fubini); [2.9 Weil volume and residue point counts](#ld2-weil-volume); [4.17 Undecidability of Hilbert tenth over integers](#ld4-h10-integers); [4.19 Effective Diophantine undecidability transfer](#ld4-diophantine-interpretation-transfer); [4.12 Diophantine sets are recursively enumerable](#ld4-dioph-to-re).

## Layer 6: o-minimal geometry and counting

This layer builds analytic/exponential definability, finite atlases, rough-function estimates for period maps, complex algebraicity, uniform rational, bounded-degree and semi-rational counting, the orbit-counting bridge and the torus lemma behind the abelian group-action application. It uses no functional-transcendence or Galois-orbit input; Layer 7 adds those as hypotheses. Real analytic cells used for algebraic unions are a selected-structure theorem, distinct from finite C^p cell decomposition in an arbitrary expansion.

<a id="ld6-o-minimal-expansion"></a>

### 6.1 O-minimal expansions of the real field

An expansion is a native first-order language L with an interpretation of the ordered-ring symbols on ℝ and its fixed L-structure. Definability means native Set.Definable with real parameters in that structure. It is o-minimal when every definable subset of ℝ is a finite union of points and intervals, allowing unbounded intervals and each endpoint convention. Boolean operations, projections, graphs and composition use the native definability API. Do not create a second general formula or definable-set calculus.

Use a named ordered-ring language map and its realization comparison. State the finite interval/point decomposition with parameters and transfer it to the set-theoretic family presentation.

The basic interface must include:

- `o_minimal_expansion.ordered_ring`: Every ordered-ring definable set is L-definable.
- `o_minimal_expansion.unary`: Every unary definable set has the stated finite decomposition.
- `o_minimal_expansion.reduct`: An ordered-field reduct of an o-minimal expansion is o-minimal.
- `o_minimal_expansion.parameters`: Adding named real parameters preserves o-minimality.

**Checks.**

- `o_minimal_expansion.interval`: An open interval and a singleton are definable, with their different endpoint behaviour.
- `o_minimal_expansion.integers`: An expansion defining ℤ⊂ℝ is not o-minimal.
- `o_minimal_expansion.finite`: The empty set is the empty finite union, and every finite real set is allowed.

([Lou van den Dries and Chris Miller, *Geometric categories and o-minimal structures*](https://people.math.osu.edu/miller.1987/newg.pdf), §2, pp.7–9; §4.1, p.12 (revised author copy).)

*Needs:* [0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics).

<a id="ld6-restricted-analytic-expansions"></a>

### 6.2 Restricted analytic and exponential expansions

A restricted analytic n-variable symbol denotes a real analytic function on a neighbourhood of [−1,1]^n, restricted to that cube and extended by zero outside it. R_alg is the ordered real field reduct, R_an adds all such symbols, R_exp adds the unrestricted real exponential, and R_an,exp combines them. R_an-definable sets are exactly the globally subanalytic sets under the standard compactifying coordinate map. The real exponential is unrestricted; unrestricted real sine is not included.

Interpret the function symbols on the real carrier with the specified zero extension. Compare the semialgebraic reduct with the current RealAlgebraicGeometry syntax and QE theorem rather than redefining it. State inclusion maps among the expansions and the globally subanalytic equivalence.

The basic interface must include:

- `restricted_analytic_expansions.restrict`: Each analytic neighbourhood germ supplies the stated total restricted function.
- `restricted_analytic_expansions.inclusions`: R_alg embeds as a reduct in each selected expansion, and R_an,R_exp in R_an,exp.
- `restricted_analytic_expansions.subanalytic`: R_an definability is globally subanalytic definability, not arbitrary local subanalyticity.

**Checks.**

- `restricted_analytic_expansions.cube_boundary`: The function agrees with its analytic representative on the closed cube.
- `restricted_analytic_expansions.outside`: Its specified extension is zero outside the cube, even if that extension is discontinuous at its boundary.
- `restricted_analytic_expansions.sine`: Restricted sine is allowed; unrestricted sine would define an infinite discrete zero set.
- `restricted_analytic_expansions.exp`: The unrestricted exponential belongs to R_exp and R_an,exp; it is not introduced as one restricted symbol.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), §1.1, pp.2–3; Appendix A, pp.19–21; van den Dries–Miller §2.5–2.7, pp.8–9.)

*Needs:* [6.1 O-minimal expansions of the real field](#ld6-o-minimal-expansion).

<a id="ld6-selected-o-minimality"></a>

### 6.3 O-minimality of the selected expansions

R_an, R_exp and R_an,exp are o-minimal, R_an-definable sets are exactly the globally subanalytic sets, and R_an,exp has analytic cell decomposition. No quantifier-elimination or effective decision assertion for R_exp or R_an,exp is included.

The o-minimality of R_an,exp, with finite cell decomposition and definable dimension, is [TauCetiRoadmap.ShimuraVarieties, §3.5a](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ShimuraVarieties/README.md#35a-the-o-minimal-structure-r_anexp) (van den Dries–Miller 1994). R_an and R_exp are reducts of R_an,exp, so their o-minimality follows from `o_minimal_expansion.reduct` of §6.1; R_alg is compared with the semialgebraic dictionary of RealAlgebraicGeometry. The identification of R_an-definable sets with globally subanalytic sets (subanalytic in the compactifying coordinates t↦t/√(1+t²)) is Gabrielov's complement theorem in van den Dries' formulation. Analytic cell decomposition for R_an and R_an,exp is stated by van den Dries–Miller §4.2, p.12, citing van den Dries–Macintyre–Marker and van den Dries–Miller 1994; it is used for the identity theorem on connected cells in §6.20. Finite C^p cells in a general expansion do not substitute for analytic cells.

**Gap.** The proofs of the globally subanalytic comparison and of analytic cell decomposition for R_an,exp are those of the cited original papers; this roadmap states the results as van den Dries–Miller §§2.5–2.7 and 4.2 do and does not reproduce the arguments.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), §1.1, pp.2–3; van den Dries–Miller §4.1 and §4.2, p.12; [TauCetiRoadmap.ShimuraVarieties, §3.5a](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ShimuraVarieties/README.md#35a-the-o-minimal-structure-r_anexp).)

*Needs:* [6.2 Restricted analytic and exponential expansions](#ld6-restricted-analytic-expansions); [6.1 O-minimal expansions of the real field](#ld6-o-minimal-expansion); [TauCetiRoadmap.ShimuraVarieties, §3.5a](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ShimuraVarieties/README.md#35a-the-o-minimal-structure-r_anexp).

<a id="ld6-o-minimal-cell-decomposition"></a>

### 6.4 O-minimal cell decomposition

In a fixed o-minimal expansion of ℝ, every finite family of definable subsets of ℝ^n admits a common finite cylindrical cell decomposition adapted to all of them. Cells are recursively points and intervals in dimension one, graphs of continuous definable functions over cells, and strips between continuous definable bounds with extended endpoints. For each finite p, refine to C^p cells and make finitely many definable functions C^p on cells. Analytic cell decomposition is a separate property and is not assumed for arbitrary o-minimal expansions.

Prove one-variable monotonicity and finite continuity partition from o-minimality. Induct on n, partitioning projections and the finite ordered boundary graphs into continuous branches; include unbounded strips. For C^p refinement, iterate the differentiability and bad-locus dimension-drop argument for the finite family of coordinate functions.

For R_an,exp this is [TauCetiRoadmap.ShimuraVarieties, §3.5a](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ShimuraVarieties/README.md#35a-the-o-minimal-structure-r_anexp); the statement here is for an arbitrary o-minimal expansion. Semialgebraic CAD is not a proof for analytic or exponential expansions.

**Gap.** Van den Dries–Miller §4 states these results and refers their proofs to van den Dries' monograph on tame topology (their reference [4]); the proof steps above follow that statement and the semialgebraic case, and the full argument for an arbitrary expansion is the monograph's.

([Lou van den Dries and Chris Miller, *Geometric categories and o-minimal structures*](https://people.math.osu.edu/miller.1987/newg.pdf), §4.2–4.3, pp.12–13; §4.8, p.14.)

*Needs:* [6.1 O-minimal expansions of the real field](#ld6-o-minimal-expansion); [6.3 O-minimality of the selected expansions](#ld6-selected-o-minimality).

<a id="ld6-definable-geometry"></a>

### 6.5 Definable dimension, choice and finite topology

For a fixed o-minimal expansion, dimension is the maximum dimension of a cell in an adapted finite decomposition, independent of decomposition, with dim∅=−∞. Definable images do not increase dimension, and dim(cl(X)∖X)<dim X for nonempty X. This frontier is distinct from the topological boundary. Each definable set has finitely many connected components, each definable and definably path connected, uniformly bounded in a definable family. Every definable surjection admits a definable section. A definable set with finitely many distinguished definable subsets admits a definable triangulation onto a union of open simplices of a finite complex, compatible with those subsets; it need not be a closed polyhedron.

Use cell dimensions and projection induction for the fibre dimension formula and decomposition independence. For a definable surjection f:X→Y, use definable choice in its graph to construct g:Y→X with f(g(y))=y; no injectivity of f is assumed. Join cells along definable paths and use a family decomposition for the uniform component bound. Carry out the triangulation induction on dimension and compatible strata.

For a line X⊂ℝ², cl(X)∖X is empty although its ambient topological boundary equals X. The constant surjection ℝ→{0} has a section but cannot have a left inverse. An open interval triangulates to open simplices; it is not identified with a compact closed simplex.

**Gap.** As in §6.4, the full proofs of the general dimension, component, choice and triangulation theorems are those of van den Dries' monograph cited by van den Dries–Miller. Definable choice gives a right inverse: for a surjection f, f(g(y))=y. The constant map from two points to one point has such a section and has no left inverse. This fixes the direction in van den Dries–Miller §4.5, p.13.

([Lou van den Dries and Chris Miller, *Geometric categories and o-minimal structures*](https://people.math.osu.edu/miller.1987/newg.pdf), Component and choice theorems 4.3–4.5, p.13; dimension 4.7, p.13; triangulation 4.10, p.13 (author revision).)

*Needs:* [6.4 O-minimal cell decomposition](#ld6-o-minimal-cell-decomposition).

<a id="ld6-finite-definable-atlas"></a>

### 6.6 Finite definable atlases and corners

An R-definable n-manifold with corners is a Hausdorff paracompact space with a finite atlas φ_i:U_i→X, where U_i is definable and relatively open in an orthant ℝ_≥0^k×ℝ^(n−k), the images are open and cover X, and every overlap and transition φ_j⁻¹∘φ_i is definable. Atlases are equivalent when their mixed transitions are definable. Subsets and maps are definable in these finite charts; a map is tested by its graph. Analytic regularity means transitions extend real analytically to ambient neighbourhoods, and uses the existing manifold-with-corners substrate.

Add a finite definability certificate to the existing topological/charted-space data. Prove equivalence of atlases by composing transitions and taking finite unions of chart graphs. Transport graph-definability through the mixed transitions.

The basic interface must include:

- `finite_definable_atlas.change_atlas`: Equivalent finite atlases give the same definable subsets and maps.
- `finite_definable_atlas.map_graph`: A map is definable exactly when its chart graphs are definable.
- `finite_definable_atlas.products`: Finite chart products define the product manifold with corners.
- `finite_definable_atlas.images_gluing`: Definable images, pullbacks and finite gluing are definable.

**Checks.**

- `finite_definable_atlas.line`: The usual one-chart atlas makes ℝ an R_alg-definable manifold.
- `finite_definable_atlas.quadrant`: The closed quadrant has its relative-open orthant charts; it is not ambient-open at its vertex.
- `finite_definable_atlas.infinite_atlas`: A countably infinite family of isolated point charts does not by itself give a finite definable atlas.
- `finite_definable_atlas.transition_direction`: For charts from coordinates to X the mixed map is φ_j⁻¹∘φ_i.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), Appendix A.1–A.2, pp.19–20.)

*Needs:* [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry); [6.2 Restricted analytic and exponential expansions](#ld6-restricted-analytic-expansions).

<a id="ld6-analytic-boundary-comparison"></a>

### 6.7 Definable analytic boundary comparison

Import DifferentialGeometry’s abstract boundary ∂̃X of pairs (x,local boundary face at x), of dimension n−1 for n>0, and its immersion i_X:∂̃X→X. Give it the analytic and finite-definable chart certificates induced by a finite analytic/definable corner atlas. At a point of depth k the fibre of i_X has k elements; it need not be injective. The interior is X∖i_X(∂̃X), not a new carrier for a collapsed topological boundary.

Restrict an orthant chart to each individual coordinate face and glue using the existing local-face transport. Show its transition maps are analytic/definable by restriction. Count local faces at each depth. Use finite chart image closure to prove definability of the boundary image and interior.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), Appendix A.1–A.3, pp.19–21; compare current DifferentialGeometry, Boundary and corners and Layer 5.5.)

*Needs:* [6.6 Finite definable atlases and corners](#ld6-finite-definable-atlas).

<a id="ld6-compact-analytic-corners"></a>

### 6.8 Restricted-analytic structure of compact corners

Every compact real analytic n-manifold with corners has a canonical R_an-definable structure compatible with its analytic atlas. Its abstract boundary immersion and interior inclusion are definable. Canonical means independent of the chosen finite refinement by relatively compact semianalytic charts whose transitions extend analytically over compact neighbourhoods; it does not mean that every analytic chart is globally restricted analytic.

Shrink analytic charts twice so their closures lie inside the domains of analytic extensions and select a finite subcover. On compact overlap pieces, the transition extensions are restricted analytic after affine rescaling. Refine into finitely many such pieces. Apply the same argument to mixed charts from any second shrinking to establish independence, and to the boundary-face restrictions.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), Proposition A.2, pp.20–21.)

*Needs:* [6.6 Finite definable atlases and corners](#ld6-finite-definable-atlas); [6.7 Definable analytic boundary comparison](#ld6-analytic-boundary-comparison); [6.2 Restricted analytic and exponential expansions](#ld6-restricted-analytic-expansions).

<a id="ld6-proper-definable-quotient"></a>

### 6.9 Definably proper equivalence-relation quotients

Let X⊂ℝ^n be locally closed and definable in the fixed o-minimal structure. Let E⊂X×X be a closed definable equivalence relation whose coordinate projections to X are definably proper. The quotient is a Hausdorff definable space Q and continuous definable quotient map q:X→Q, with q(x)=q(y) iff E(x,y), the quotient topology and factorization of continuous definable E-invariant maps. In particular, for a semialgebraic group G and compact semialgebraic subgroup M, G/M has its semialgebraic quotient and semialgebraic G-action. The compact-group case does not imply the general theorem.

Use the general quotient theorem in the category of locally closed definable spaces with the exact properness hypotheses. For G/M verify properness of the relation projections using compactness of M, then descend multiplication by the universal property.

**Gap.** The general quotient theorem for locally closed definable sets with definably proper projections is van den Dries' monograph, Chapter 10, (2.15), p.166, as cited by BKT; it is not restated here. BKT Lemma 2.1 proves the compact-group case G/M directly (two proofs, pp.7–8); no other target of this roadmap uses the general case.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), Lemma 2.1 and second proof, pp.7–8; cited quotient theorem (2.15) at p.166.)

*Needs:* [6.6 Finite definable atlases and corners](#ld6-finite-definable-atlas); [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry).

<a id="ld6-sector-cover"></a>

### 6.10 Definable exponential cover on bounded sectors

For fixed R>0 and c∈ℝ, the map z↦exp(2πiz) on 0<Re(z)<R, Im(z)>c is R_an,exp-definable, as are its finite products and restrictions to ordered-imaginary-part sectors. The sine and cosine factors have bounded real arguments, so they are restricted analytic after rescaling; exp(−2πIm(z)) uses the real exponential. If a holomorphic Ψ extends across a neighbourhood of a closed smaller polydisk, then Ψ composed with this cover is definable on a sector whose image lies in that smaller disk.

Write real and imaginary parts as exp(−2πy)cos(2πx) and exp(−2πy)sin(2πx). Use bounded x for restricted analytic trigonometric functions and the shrunken-disk extension for Ψ. Take finite products and definable restrictions.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), §4.2, Lemma 4.2, pp.13–14.)

*Needs:* [6.2 Restricted analytic and exponential expansions](#ld6-restricted-analytic-expansions); [6.3 O-minimality of the selected expansions](#ld6-selected-o-minimality); [6.6 Finite definable atlases and corners](#ld6-finite-definable-atlas).

<a id="ld6-rough-coefficient-ring"></a>

### 6.11 Analytic coefficient and Laurent polynomial rings

On each ordered sector Σ_n^R={0<x_i<R, y₁≥⋯≥y_n>c} with fixed R,c>0 and a fixed analytic polydisk neighbourhood, let O be restrictions of real analytic functions in the real and imaginary parts of q_i=exp(2πiz_i) extending across its closed smaller polydisk. Let A=O[x₁,…,x_n,y₁^±1,…,y_n^±1] as a ring of actual functions on that sector, quotienting polynomial expressions by equality of functions. Use total quotient/localization data only for denominators proved nowhere zero on the chosen sector; the coefficient ring is not silently assumed a field.

Take the image of the coefficient and Laurent polynomial evaluation homomorphism into real-valued functions. State restriction homomorphisms for smaller sectors and finite R enlargements within the coefficient analytic domains.

The basic interface must include:

- `rough_coefficient_ring.eval`: Finite Laurent expressions define actual functions.
- `rough_coefficient_ring.restriction`: Restricting a function commutes with ring operations.
- `rough_coefficient_ring.nowhere_zero`: A denominator gives a function quotient only on its checked nonvanishing domain.

**Checks.**

- `rough_coefficient_ring.inverse_y`: y_i⁻¹ is defined because y_i>c>0.
- `rough_coefficient_ring.coefficient`: A real analytic function of q and its conjugate is included after the stated shrinking.
- `rough_coefficient_ring.pole`: The expression 1/(x₁−1/2) is not an everywhere-defined quotient on a sector containing x₁=1/2.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), Definition 4.4, p.14, with a specified smaller polydisk.)

*Needs:* [6.10 Definable exponential cover on bounded sectors](#ld6-sector-cover).

<a id="ld6-rough-monomial"></a>

### 6.12 Rough monomial comparison

For an actual positive function h on a fixed ordered sector, RoughMonomial(h) means that some exponent vector s∈ℤ^n and constants 0<C₁≤C₂ satisfy C₁∏y_i^s_i≤h≤C₂∏y_i^s_i throughout the sector. For a signed nowhere-zero function use this condition on |h| and say so explicitly. Constants may depend on the sector width R and shrinking, but not on its point. Record a separate predicate for a family satisfying it for every finite R.

Define Laurent monomial evaluation for integer exponents on positive y coordinates. Package the two constants with pointwise inequalities; prove multiplication and reciprocal comparisons.

The basic interface must include:

- `rough_monomial.mul`: Products add exponent vectors and multiply bounding constants.
- `rough_monomial.inverse`: A reciprocal negates exponents and inverts the constants.
- `rough_monomial.restrict`: Restriction preserves the same exponent and constants.
- `rough_monomial.nonzero`: The lower bound implies nonvanishing everywhere.

**Checks.**

- `rough_monomial.monomial`: ∏y_i^s_i has constants C₁=C₂=1.
- `rough_monomial.zero`: The zero function is never roughly monomial.
- `rough_monomial.sum_cancellation`: Two signed rough monomials can cancel, so arbitrary sums are not closed.
- `rough_monomial.width`: A bound on Σ^1 does not by itself supply a bound on every Σ^R.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), Definition 4.4, p.14.)

*Needs:* [6.11 Analytic coefficient and Laurent polynomial rings](#ld6-rough-coefficient-ring).

<a id="ld6-rough-polynomial-localization"></a>

### 6.13 Corrected rough polynomial localization

Let S⊂A consist of those actual Laurent polynomial functions whose absolute values are roughly monomial. It is multiplicatively closed and consists of nowhere-zero functions. Define the rough polynomial ring as the image of S⁻¹A in functions on the sector: f=g/h with g∈A and h∈S. This is a repaired definition, scoped as a variant of BKT Definition 4.4. The broader printed class allowing an arbitrary roughly monomial rational function as denominator is not used as a ring.

Show that S contains 1 and is closed under multiplication by the two-sided comparison. Use the localization universal property and nonvanishing to map into the pointwise function ring. Check that clearing denominators reduces a comparison to one between a Laurent polynomial numerator and a monomial.

The basic interface must include:

- `rough_polynomial_localization.add_mul`: (g/h)+(g′/h′)=(gh′+g′h)/(hh′) and products remain in the class.
- `rough_polynomial_localization.embed`: Every g∈A is represented by g/1.
- `rough_polynomial_localization.restrict`: Sector restriction induces a localization map when its denominator bounds persist.
- `rough_polynomial_localization.clear`: Inequalities may be cleared using the two-sided positive denominator bound.

**Checks.**

- `rough_polynomial_localization.laurent`: Every Laurent monomial and its inverse belong.
- `rough_polynomial_localization.sum`: The sum of two checked localization fractions has denominator hh′∈S.
- `rough_polynomial_localization.arbitrary_denominator`: For c=(x−1/2)²+y⁻², k=(c+y⁻¹)/(c+2y⁻¹) is comparable to 1 but is not thereby a Laurent polynomial denominator.
- `rough_polynomial_localization.zero_denominator`: Zero is excluded from S even though it is in A.

The restriction to denominators in A is substantive. With c=(x−1/2)²+y⁻² and k=(c+y⁻¹)/(c+2y⁻¹), both k and 1/k are comparable to 1. In the broader class, 1/k and −1 are admitted but their sum y⁻¹/(c+y⁻¹) cannot be P/h with P a finite Laurent polynomial with the declared analytic q-coefficients and h roughly monomial: away from x=1/2 its required leading growth drops by one power of y, forcing polynomial leading coefficients to vanish on an open set and hence also at x=1/2, where that power is needed. Exponentially small q-terms cannot repair the discrepancy. Use the stated localization, with a separate consumer comparison, rather than asserting equality with the broader printed class.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), Definition 4.4, p.14; proof of Lemma 4.5, p.15.)

*Needs:* [6.11 Analytic coefficient and Laurent polynomial rings](#ld6-rough-coefficient-ring); [6.12 Rough monomial comparison](#ld6-rough-monomial).

<a id="ld6-sector-exponential-decay"></a>

### 6.14 Exponential decay against sector powers

For positive c₀, integer exponents s_i on the ordered tail y_i≥⋯≥y_n≥1, and ε>0, exp(−c₀y_i)∏_{j≥i} y_j^s_j<ε once y_i is sufficiently large; in particular this holds once y_n is sufficiently large. Constants are uniform on the stated tail. Analytic coefficients on a closed smaller polydisk have uniform bounds. This does not control an unbounded earlier variable y_j with j<i or turn the complement of y_n≫1 into a compact set.

Bound positive powers of subsequent coordinates by powers of y_i and discard negative powers using y_j≥1. Use elementary exponential domination of a single polynomial power. Use compactness of the smaller coefficient polydisk for uniform coefficient bounds.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), Lemma 4.10 proof, p.17.)

*Needs:* [6.11 Analytic coefficient and Laurent polynomial rings](#ld6-rough-coefficient-ring); [6.12 Rough monomial comparison](#ld6-rough-monomial).

<a id="ld6-rough-curve-test"></a>

### 6.15 Wider-sector rational curve test

For R>0 let Σ_n^R={z∈ℍⁿ: 0<x_i<R, y₁≥⋯≥y_n>1}, so that BKT's region is Σ_n=Σ_n^1. The coefficient functions of §6.11 are real analytic in the real and imaginary parts of q_i=e(z_i) on a neighbourhood of the closed polydisc |q_i|≤e^(−2π); they are 1-periodic in each x_i, so A=O[x,y,y⁻¹] is a ring of functions on {y_i>1} that restricts injectively to every Σ_n^R. Write S_R⊂A for the elements whose absolute value is roughly monomial on Σ_n^R (§6.12); the property depends on R. An admissible curve in Σ_n^R is a set Σ_n^R∩{α₁z₁+β₁=⋯=α_{n₀}z_{n₀}+β_{n₀}, z_j=ζ_j for j>n₀} with 1≤n₀≤n, α_i∈ℚ_{>0}, β_i∈ℝ and ζ_j∈ℍ.

Prove `roughCurveTest`: let f=P/h and g=Q/k with P,Q∈A and h,k∈⋂_R S_R, and suppose |g| is roughly monomial on every Σ_n^R. If for every R and every admissible curve τ⊂Σ_n^R there is C_τ with |f|≤C_τ|g| on τ, then for every R there is C_R with |f|≤C_R|g| on Σ_n^R. The constants C_τ may depend on the curve. For R=1 this is the conclusion of BKT Lemma 4.5; the hypothesis is required on every width.

1. Clearing. On Σ_n^R, |h|, |k| and |g| are within constant factors of Laurent monomials, so the claim is |P|≤C_R·y^s for one monomial y^s; multiplying by y^(−s)∈A reduces to: P∈A bounded on every admissible curve of every width is bounded on every Σ_n^R.
2. Removing q₁. Write P=Σ_j a_j x₁^(j₁)y₁^(j₂) with j₁≥0, the a_j analytic in q₁,q̄₁ and Laurent polynomial in the other coordinates. Replacing each a_j by its value at q₁=0 changes P by O(y₁^A e^(−2πy₁)) uniformly on Σ_n^R, because x₁<R, 1≤y_j≤y₁ for j≥2 and the coefficient functions are uniformly Lipschitz on the closed polydisc (§6.14). The error is bounded, so assume the a_j are independent of q₁; the expansion in x₁ and y₁^(±1) over the remaining coordinates is then unique.
3. Nonpositive y₁-powers. If some a_j with j₂>0 is nonzero, take the largest such j₂, fix (z₂,…,z_n) and x₁ where its coefficient polynomial in x₁ is nonzero, and let y₁→∞ along the admissible curve with n₀=1; |P| is unbounded, a contradiction. Hence j₂≤0 for all j, and |a_j|y₁^(j₂)≤|a_j|y₂^(j₂) on Σ_n^R. It suffices to bound |a_j|y₂^(j₂) on Σ_{n−1}^R in the ordered coordinates z₂,…,z_n.
4. Substitution. For integers m≥1 and c≥0 the map z′↦(mz₂+c,z′) sends Σ_{n−1}^{R′} into Σ_n^{mR′+c}, since 0<mx₂+c<mR′+c and my₂≥y₂, and sends each admissible curve of Σ_{n−1}^{R′} into an admissible curve of Σ_n^{mR′+c}: adjoin the relation 1·z₁+0=mz₂+c and rescale the other relations by m/α₂. So f_{m,c}(z′)=P(mz₂+c,z′)∈A_{n−1} is bounded on every admissible curve of every width, and the induction hypothesis — this statement for n−1 coordinates and all widths — bounds it on every Σ_{n−1}^{R′}. For m≥2 the substituted points leave Σ_n^1 even when R′=1, which is why every width is needed.
5. Finite differences. Let r be the largest j₁. The r-th forward difference in c of (mx₂+c)^(j₁) is r! when j₁=r and 0 when j₁<r, so F_m=(1/r!)Σ_{c=0}^{r}(−1)^(r−c)·binom(r,c)·f_{m,c}=Σ_{j₂}a_{(r,j₂)}m^(j₂)y₂^(j₂) is bounded on Σ_{n−1}^R. For K distinct values of m the matrix (m^(j₂)) is invertible, since a nonzero sum of K distinct real powers of m has at most K−1 positive zeros (Descartes' rule of signs). Hence each a_{(r,j₂)}y₂^(j₂) is a fixed combination of the F_m and is bounded.
6. Descent. Each term a_{(r,j₂)}x₁^r y₁^(j₂) is bounded on Σ_n^R by R^r|a_{(r,j₂)}|y₂^(j₂), so subtracting the terms with j₁=r preserves the curve hypothesis in every width and lowers r. For n=1 the admissible curve with n₀=1 is Σ_1^R itself.

The basic interface must include:

- `rough_curve_test.clear`: the reduction of step 1 to a Laurent polynomial and the constant monomial on each Σ_n^R.
- `rough_curve_test.substitute`: the substitution of step 4 maps admissible curves of width R′ to admissible curves of width mR′+c.
- `rough_curve_test.difference`: the r-th finite difference of step 5 isolates the top x₁-degree.
- `rough_curve_test.width_one`: the case R=1 of the conclusion.

**Checks.**

- `rough_curve_test.width_escape`: With R′=1, m=2 and c=0, the point z′ with x₂=3/4 is sent to x₁=3/2, outside Σ_n^1; a hypothesis confined to Σ_n^1 does not apply to f_{2,0} there.
- `rough_curve_test.width_dependent_denominator`: h=(x₁−2)²+y₁^(−2) satisfies 1≤h≤5 on Σ_1^1 but at x₁=2 equals y₁^(−2) on Σ_1^3, so h∈S_1∖S_3; denominators are required in S_R for every R.
- `rough_curve_test.positive_power`: P=y₁ on Σ_1^R is unbounded along its own admissible curve, so step 3 detects it; P=y₁⁻¹ is bounded by 1.
- `rough_curve_test.vandermonde`: For exponents {0,−1} and m∈{1,2}, the matrix [[1,1],[1,1/2]] has determinant −1/2≠0, so a₀ and a₋₁y₂⁻¹ are recovered from F₁ and F₂.

The Hodge-norm consumer applies this lemma with R=1 to f=h_z(e_i,e_j) and g=h_z(e_i) for a rational basis e adapted to the weight splitting (BKT §4.5, proof of Theorem 1.5, pp.17–18). It verifies the hypotheses on every width as follows; the Hodge objects are defined in that roadmap, so this verification is given downstream there. First, the Cattani–Kaplan–Schmid norm estimates hold uniformly for real parts in any bounded interval: translation z_j↦z_j+1 acts through the unipotent monodromy T_j=exp N_j, which preserves the relevant weight filtrations and is the identity on their graded pieces, so a width-R sector is a finite union of translates of width-one sectors on which the estimates of BKT Theorem 4.8 and Lemma 4.10 apply; hence the denominators B(γ·w_{K_i}^det) of BKT (4.2)–(4.5) lie in S_R for every R. Second, an admissible curve with α_i=p_i/q_i is the image of a punctured disc u↦(c_i u^(a_i)) with positive integers a_i, and the restriction of the variation to it has unipotent monodromy Σa_iN_i, so Schmid's one-variable theorem and the basis change at the end of BKT §4.5 give reducedness with a curve-dependent constant on each bounded interval of real parts. Width one is the case TauCetiRoadmap.ShimuraVarieties §3.5b.2 states for its ordered-sector estimates; the wider sectors are covered by the same translation argument.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), Definition 4.4, p.14; Lemma 4.5 and proof, p.15; Theorem 4.8, Lemma 4.10 and §4.5, pp.15–18.)

*Needs:* [6.13 Corrected rough polynomial localization](#ld6-rough-polynomial-localization); [6.12 Rough monomial comparison](#ld6-rough-monomial); [6.14 Exponential decay against sector powers](#ld6-sector-exponential-decay).

<a id="ld6-algebraic-definable-structure"></a>

### 6.16 Definable structure of complex algebraic varieties

A complex algebraic variety of finite type acquires its canonical R_alg-definable space structure by finite affine charts, identifying ℂ^n with ℝ^(2n). For smooth varieties this is a definable complex manifold; singular varieties retain a finite definable space atlas without a false manifold assertion. Morphisms are definable, and finite affine-cover refinements give the same structure.

Rewrite complex polynomial equations by their real and imaginary parts. Use finite affine covers and regular transition maps on their nonvanishing loci. Compare cover refinements by finite gluing.

The basic interface must include:

- `algebraic_definable_structure.affine`: An affine variety is the common zero locus of the real and imaginary polynomial equations.
- `algebraic_definable_structure.morphism`: Regular maps and their compositions are definable.
- `algebraic_definable_structure.smooth`: The manifold claim is restricted to the smooth locus.
- `algebraic_definable_structure.cover`: Changing a finite affine cover preserves definable subsets.

**Checks.**

- `algebraic_definable_structure.line`: The complex affine line gives ℝ².
- `algebraic_definable_structure.projective`: The two standard charts of ℙ¹ have definable inversion on their overlap.
- `algebraic_definable_structure.node`: A nodal curve is definable but is not declared a smooth manifold at its node.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), Theorem 4.13 context, p.18; Mok–Pila–Tsimerman §2.2, p.5.)

*Needs:* [6.6 Finite definable atlases and corners](#ld6-finite-definable-atlas); Mathlib `AlgebraicGeometry.IsAffineOpen`; Mathlib `Algebra.FiniteType.iff_quotient_mvPolynomial''`.

<a id="ld6-definable-remmert-stein"></a>

### 6.17 Definable Remmert–Stein closure

For a definable complex manifold M, a closed definable complex analytic subset E, and a definable closed complex analytic subset A of M∖E, the closure of A in M is complex analytic and definable. Definability supplies the tameness needed at E; without it the unrestricted closure assertion is false. Use the exact definable analytic-space version when the ambient is singular.

In the manifold case, by Peterzil–Starchenko Theorem 4.1 it suffices that dim_ℝ fr_U(A∩U)≤dim_ℝ(A∩U)−2 for every open U; working locally with A definable, Theorem 3.2 applied to each connected component M_i of the regular locus of A∩U gives M_i⊆E or dim_ℝ(cl(M_i)∩E)≤dim_ℝM_i−2, and the first alternative is excluded because A∩E=∅. For a singular quasi-projective ambient Y, write Y as a closed subvariety of an open subset W of projective space: W is a smooth definable complex manifold, E is closed analytic in W, and A is closed analytic in W∖E, so the manifold theorem in W gives the closure, which lies in Y because Y is closed in W. Mok–Pila–Tsimerman §2.2 states the application.

([Ya’acov Peterzil and Sergei Starchenko, *Complex analytic geometry and analytic-geometric categories*](https://math.haifa.ac.il/kobi/analytic.pdf), Theorem 3.2, p.10; Theorem 4.1, p.10; Theorem 4.4 and proof, p.12, author copy dated 22 July 2005; [Ngaiming Mok, Jonathan Pila and Jacob Tsimerman, *Ax–Schanuel for Shimura varieties*](https://arxiv.org/pdf/1711.02189), Theorem 2.1, §2.2, p.5.)

*Needs:* [6.16 Definable structure of complex algebraic varieties](#ld6-algebraic-definable-structure); [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry).

<a id="ld6-definable-chow"></a>

### 6.18 Definable complex analytic Chow theorem

If Y is a complex quasiprojective variety and A⊂Y is closed in Y, complex analytic and definable in the fixed o-minimal expansion (with the hypotheses of the chosen analytic-closure theorem), then A is algebraic. For a smooth Y and an expansion containing R_an this includes BKT Theorem 4.13. Boolean combinations of closed definable complex analytic sets are constructible algebraic. Closedness is relative to Y, not necessarily to a projective compactification.

For smooth Y this is [TauCetiRoadmap.ShimuraVarieties, §3.5d](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ShimuraVarieties/README.md#35d-definable-chow). For general quasi-projective Y, write Y as a closed subvariety of an open subset W of projective space; A is closed in Y, hence closed complex analytic and definable in the smooth variety W, so §3.5d makes A algebraic in W and therefore in Y. Boolean combinations follow by induction on the finite Boolean decomposition. Peterzil–Starchenko prove the affine case by definable Remmert–Stein (§6.17) for the closure in ℙⁿ followed by Chow's theorem (Corollary 4.5).

([Ya’acov Peterzil and Sergei Starchenko, *Complex analytic geometry and analytic-geometric categories*](https://math.haifa.ac.il/kobi/analytic.pdf), Corollary 4.5 and proof, p.12, for the affine case; [Ngaiming Mok, Jonathan Pila and Jacob Tsimerman, *Ax–Schanuel for Shimura varieties*](https://arxiv.org/pdf/1711.02189), Theorem 2.2 and Corollary 2.3, p.5; BKT Theorem 4.13, p.18.)

*Needs:* [6.17 Definable Remmert–Stein closure](#ld6-definable-remmert-stein); [6.16 Definable structure of complex algebraic varieties](#ld6-algebraic-definable-structure); [TauCetiRoadmap.ShimuraVarieties, §3.5d](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ShimuraVarieties/README.md#35d-definable-chow).

<a id="ld6-dense-extension"></a>

### 6.19 Definability of continuous dense extensions

Let U be a dense definable subset of a definable topological space X, and f:U→Y a definable map to a Hausdorff definable space. If a continuous extension f̄:X→Y exists, then it is unique and definable: its graph equals the closure of graph(f) in X×Y. This is an extension certificate, not an existence theorem. In finite charts the graph-closure calculation uses the actual relative topologies.

Continuity and density put every (x,f̄(x)) in the graph closure. At a point outside the graph, Hausdorff separation and continuity give a product neighbourhood disjoint from graph(f). Closure is first-order definable in finite coordinate charts, so the graph is definable.

([Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, *Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf), §1.1 definable topology and Appendix A.2, pp.2–3 and 20; elementary graph-closure argument.)

*Needs:* [6.6 Finite definable atlases and corners](#ld6-finite-definable-atlas); [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry).

<a id="ld6-countable-algebraic-union"></a>

### 6.20 Finite reduction of a definable algebraic union

Let A be a complex quasiprojective variety and (Vᵢ) a countable family of closed complex algebraic subvarieties. If X=⋃ᵢVᵢ is definable in R_an,exp, then X is a finite subunion. The proof uses finite real analytic cell decomposition for this selected structure; arbitrary o-minimal expansions are not silently assigned analytic cells. Closedness and algebraicity of the Vᵢ are retained.

Take a finite decomposition of X into connected real analytic cells in R_an,exp (§6.3), refining a finite affine cover of the ambient variety. On one such cell U, the relatively closed analytic sets U∩Vᵢ form a countable cover. Baire category gives one intersection with nonempty interior. Each polynomial vanishing on Vᵢ then vanishes on a nonempty open part of U and hence all of connected analytic U. Thus U lies in Vᵢ. Select one index for each of finitely many cells.

A countable union of points filling the rational numbers is not definable in an o-minimal real structure. The theorem does not assert that a general countable definable family has a finite subcover. Every polynomial identity is continued within one connected real analytic cell.

Use real analytic cells for R_an,exp and closed algebraic members. On one cell Baire gives an intersection with interior; polynomial identities continue on the connected analytic cell. Arbitrary o-minimal C^p decomposition is insufficient for this identity argument.

([Jonathan Pila and Jacob Tsimerman, *Ax-Lindemann for A_g*](https://annals.math.princeton.edu/wp-content/uploads/annals-v179-n2-p05-p.pdf), Lemma 7.7 and proof, p.678.)

*Needs:* [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry); [6.3 O-minimality of the selected expansions](#ld6-selected-o-minimality); [6.16 Definable structure of complex algebraic varieties](#ld6-algebraic-definable-structure).

<a id="ld6-algebraic-part"></a>

### 6.21 Algebraic part of a definable set

For X⊂ℝ^n define X_alg as the union of all connected positive-dimensional semialgebraic subsets of X; define X_trans=X∖X_alg. This algebraic part is a set, not a claim that the union is definable. Real parameters are permitted in the semialgebraic pieces. Positive dimension and containment in X are required.

Use the semialgebraic predicate and dimension from the current RealAlgebraicGeometry interface and the dimension comparison. Form the set-theoretic union; prove monotonicity and the effect of semialgebraic coordinate maps.

The basic interface must include:

- `algebraic_part.mono`: X⊂Y implies X_alg⊂Y_alg.
- `algebraic_part.positive_piece`: Every connected positive-dimensional semialgebraic subset of X is in X_alg.
- `algebraic_part.finite`: For finite X, X_alg=∅.
- `algebraic_part.semialgebraic`: A positive-dimensional connected semialgebraic component contributes itself; isolated points do not.

**Checks.**

- `algebraic_part.interval`: For X=(0,1), X_alg=X.
- `algebraic_part.isolated`: For X={0}, X_alg=∅.
- `algebraic_part.graph_exp`: The graph of real exp on an interval has no positive-dimensional semialgebraic arc.
- `algebraic_part.not_definable`: The algebraic part of the restricted x^y surface can have infinitely many components, so it is not given a definability instance.

([Jonathan Pila and Alex Wilkie, *The rational points of a definable set*](https://www.math.ens.psl.eu/~zchatzid/papiers/o-min-21/Pila-WIlkie.pdf), Definition 1.4 and §1, pp.592–594; Pila 2009 §3 examples, p.5.)

*Needs:* [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry).

<a id="ld6-counting-height-interface"></a>

### 6.22 Rational and algebraic counting height interface

For rational a/b in lowest terms with b>0 use H=max(|a|,b), and for a tuple use the maximum coordinate height, with H(())=1. Import absolute multiplicative Weil height and bounded-degree Northcott from DiophantineApproximationAndTranscendence §§0.2–0.3 for algebraic coordinates. Keep degree bounded separately in each coordinate; the field generated by all coordinates need not have that same degree. Relate polynomial coefficient heights to Weil height using the Mahler inequalities of DiophantineApproximationAndTranscendence §0.2 before transferring a counting estimate.

Use the rational height identity of DiophantineApproximationAndTranscendence §0.1 and the maximum over finitely many coordinates. Convert coefficient height ≤2^kH^k using the comparison of §0.2 there, keeping k fixed. Apply bounded-degree Northcott coordinatewise to make each counting set finite.

([Jonathan Pila and Alex Wilkie, *The rational points of a definable set*](https://www.math.ens.psl.eu/~zchatzid/papiers/o-min-21/Pila-WIlkie.pdf), §1, pp.591–593; Pila 2009 §5, pp.7–8.)

*Needs:* [TauCetiRoadmap.DiophantineApproximationAndTranscendence, §0.1](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md#01-primitive-polynomials-and-coefficient-height); [TauCetiRoadmap.DiophantineApproximationAndTranscendence, §0.2](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md#02-mahler-measure-house-and-absolute-height); [TauCetiRoadmap.DiophantineApproximationAndTranscendence, §0.3](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md#03-finiteness-and-size-estimates).

<a id="ld6-bounded-derivative-parametrization"></a>

### 6.23 Uniform bounded-derivative parametrization

For every finite r≥1 and definable family X⊂(0,1)^n×ℝ^m, there is N such that every nonempty fibre X_t is covered by at most N definable C^r maps from (0,1)^dim(X_t) into X_t, with every derivative of order ≤r bounded in absolute value by 1. Empty fibres use no charts. Maps on nonempty fibres may be repeated to use a common finite bound, and the zero-dimensional case is a finite set of constant maps from a singleton. This is a finite-order theorem; no uniform bound for all r is claimed.

Prove the one-variable derivative normalization by monotonicity and inverse changes of variable. Induct on dimension, normalizing the last-variable derivatives while retaining already bounded mixed derivatives; compare the two induction statements in §5. Cover any omitted lower-dimensional slices by the induction hypothesis. Rescale finitely many domain cubes to turn a fixed derivative bound into 1; obtain family uniformity by definable choice and saturation. In Corollary 4.4 replace the incorrect higher chain rule identity on p.607 by the full finite Faà di Bruno expansion. Induct on the last-coordinate derivative order: every product uses previously controlled composed derivatives and bounded derivatives of the one-variable reparametrization. This proves boundedness without the false single-product identity (the higher-chain-rule correction).

For higher derivatives use the complete finite Faà di Bruno expansion. With f(t)=t and ψ(t)=t², a formula retaining only f″(ψ)(ψ′)² gives 0, whereas (f∘ψ)″=2. Bounding every chain-rule term inductively repairs the normalization argument (PW Corollary 4.4 proof, p.607).

([Jonathan Pila and Alex Wilkie, *The rational points of a definable set*](https://www.math.ens.psl.eu/~zchatzid/papiers/o-min-21/Pila-WIlkie.pdf), Theorems 2.3 and 2.5, pp.597–599; proof §§3–5, pp.599–609; Corollaries 5.1–5.2, p.609.)

*Needs:* [6.4 O-minimal cell decomposition](#ld6-o-minimal-cell-decomposition); [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry).

<a id="ld6-determinant-hypersurface-cover"></a>

### 6.24 Determinant hypersurface covering theorem

For k<n and each degree d≥1 there are r(k,n,d), C>0 and η(k,n,d)>0 with η→0 as d→∞ such that the rational points of height ≤T in the image of a C^r map (0,1)^k→ℝ^n whose derivatives up to r are bounded by 1 lie on at most C T^η real algebraic hypersurfaces of degree ≤d, for every T≥1. Zero-dimensional images are handled separately. The family version combines a uniform finite number of such maps.

For 1≤k<n, put D=binomial(n+d,n), let b satisfy binomial(k+b,k)≤D<binomial(k+b+1,k), and take r=b+1. Let L_k(j)=binomial(k+j−1,k−1) and B=Σ_{j=0}^b jL_k(j)+(D−binomial(k+b,k))(b+1). Taylor expansion of the D evaluated monomials has determinant bounded by C₀ρ^B on a parameter cube of side ρ. Terms using more than L_k(j) independent degree-j Taylor monomials vanish; this gives the exponent B. Derivatives of these monomials are bounded in terms of k,n,d alone. Each finite point configuration has compact convex hull inside (0,1)^k, so Taylor expansion uses no extension across the boundary of the parameter domain.

For tuple height ≤T, a common denominator for one rational image point is at most T^n. Clearing each column by its common denominator to power d shows that a nonzero D-by-D determinant has absolute value at least T^(−ndD). Thus cubes of side cT^(−ndD/B), with c chosen from C₀, have all such minors zero. The monomial evaluation vectors of all rational image points from one cube span a proper subspace, giving one nonzero polynomial of degree ≤d for that whole cube. There are at most C T^η cubes, where η=nkdD/B and C depends only on k,n,d. Since D has order d^n and B has order d^(n(k+1)/k), η tends to zero for k<n. For k=0 the image is a singleton and one linear hypersurface suffices when n>0.

The source uses common projective denominator height before passing to maximum coordinate height. The bound H_projective≤H_tuple^n accounts for the factor n in η; no equality of those heights is assumed.

([Jonathan Pila, *Integer points on the dilation of a subanalytic surface*](https://people.maths.ox.ac.uk/pila/isurface.pdf), Lemma 3.1, author p.6; Proposition 4.2, p.8; Remark 4.5, p.9, in *Quarterly Journal of Mathematics* 55 (2004), 207–223; [Jonathan Pila and Alex Wilkie, *The rational points of a definable set*](https://www.math.ens.psl.eu/~zchatzid/papiers/o-min-21/Pila-WIlkie.pdf), Proposition 6.1 and Main Lemma 6.2, pp.610–611.)

*Needs:* [6.23 Uniform bounded-derivative parametrization](#ld6-bounded-derivative-parametrization); [6.22 Rational and algebraic counting height interface](#ld6-counting-height-interface).

<a id="ld6-pila-wilkie"></a>

### 6.25 Pila–Wilkie rational-point counting

For every definable family X⊂ℝ^n×ℝ^m and every ε>0 there is C(X,ε)>0 such that for every parameter t and every T≥1, #{x∈X_t∩ℚ^n:H(x)≤T, x∉(X_t)_alg}≤C T^ε. The stronger source form removes a definable family X_{t,ε}⊂(X_t)_alg instead. Constants may depend on the family and ε but not on t or T. No computable constant or logarithmic bound is claimed.

Reduce to bounded cubes by sign and reciprocal coordinate changes, preserving rational heights. Induct on fibre dimension. For lower-dimensional hypersurface intersections apply the induction hypothesis; choose the determinant exponent smaller than the desired ε after accounting for all finite projection choices. At regular points where the intersection retains full dimension, identify a local positive-dimensional semialgebraic piece, hence remove those points into X_alg. Union the finitely many exceptional families and track one constant uniform in the parameter.

([Jonathan Pila and Alex Wilkie, *The rational points of a definable set*](https://www.math.ens.psl.eu/~zchatzid/papiers/o-min-21/Pila-WIlkie.pdf), Theorems 1.8 and 1.10, pp.595–597; proof §7, pp.611–613.)

*Needs:* [6.21 Algebraic part of a definable set](#ld6-algebraic-part); [6.22 Rational and algebraic counting height interface](#ld6-counting-height-interface); [6.23 Uniform bounded-derivative parametrization](#ld6-bounded-derivative-parametrization); [6.24 Determinant hypersurface covering theorem](#ld6-determinant-hypersurface-cover); [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry).

<a id="ld6-definable-blocks"></a>

### 6.26 Definable semialgebraic blocks

A basic block of dimension d is a connected definable C¹-regular subset U of a semialgebraic C¹ locus A of the same dimension d, locally open in that locus; include a singleton at d=0. A block is a continuous semialgebraic image of a basic block, with the map defined on a semialgebraic set containing it. Families carry these conditions fibrewise. Blocks may be definable without being semialgebraic as entire sets. Positive-dimensional blocks contained in X lie in X_alg.

Package the ambient semialgebraic locus and regularity certificate. For positive dimension, cover a definable path by finitely many semialgebraic neighbourhoods and replace its pieces by semialgebraic paths. Push those paths through the continuous semialgebraic map to prove algebraic-part containment.

The basic interface must include:

- `definable_blocks.singleton`: Every point is a zero-dimensional basic block.
- `definable_blocks.image`: A continuous semialgebraic map sends a basic block to a block.
- `definable_blocks.positive`: A positive-dimensional block in X is contained in X_alg.
- `definable_blocks.family_union`: The union of positive-dimensional fibres of a block family is definable and contained in X_alg.

**Checks.**

- `definable_blocks.point`: A point is allowed but contributes nothing to X_alg.
- `definable_blocks.arc`: A connected open interval is a positive-dimensional basic block.
- `definable_blocks.exponential_image`: An arbitrary definable image, such as the graph of exp, need not be a block; the image map must be semialgebraic.
- `definable_blocks.nonsemialgebraic_domain`: A definable open subset of a semialgebraic manifold can be a basic block without being globally semialgebraic.

([Jonathan Pila, *On the algebraic points of a definable set*](https://people.maths.ox.ac.uk/pila/Algebraic.pdf), Definition 3.2 and Proposition 3.4, pp.5–6 (author copy); Selecta pp.157–158.)

*Needs:* [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry); [6.21 Algebraic part of a definable set](#ld6-algebraic-part).

<a id="ld6-block-counting"></a>

### 6.27 Uniform rational and integral block counting

For every definable family X and ε>0 there are finitely many basic block families contained fibrewise in X and C>0 such that all rational points of height ≤T in each fibre are covered by at most C T^ε of their blocks, uniformly for T≥1 and the family parameter. The same applies to integral points with maximum absolute coordinate ≤T. Under a continuous semialgebraic map from the family, the images are at most that many blocks; positive-dimensional image blocks lie in the algebraic part of the image, whereas zero-dimensional blocks are single points.

Retain the finitely many families of regular semialgebraic pieces in the PW dimension induction rather than only their union. Cover the rational points by the resulting O(T^ε) individual fibres. Use the block image definition and integral-to-rational height equality for the two consumer forms.

([Jonathan Pila, *On the algebraic points of a definable set*](https://people.maths.ox.ac.uk/pila/Algebraic.pdf), Theorem 3.5, p.6 (Selecta p.158); Masser–Zannier §3.2, pp.649–650.)

*Needs:* [6.26 Definable semialgebraic blocks](#ld6-definable-blocks); [6.25 Pila–Wilkie rational-point counting](#ld6-pila-wilkie); [6.24 Determinant hypersurface covering theorem](#ld6-determinant-hypersurface-cover).

<a id="ld6-bounded-degree-counting"></a>

### 6.28 Counting algebraic points of bounded degree

Fix k≥1, a definable family X and ε>0. The points x in each fibre whose real coordinates are algebraic of degree individually ≤k and absolute multiplicative Weil height ≤T are covered by at most C(X,k,ε)T^ε blocks. Consequently the number outside X_alg has that bound. Encode each coordinate by a nonzero coefficient vector (a₀,…,a_k) of length k+1 and polynomial Σ_{j=0}^k a_j t^j; the k-coefficient author-copy indexing is corrected explicitly.

Use the height comparison of DiophantineApproximationAndTranscendence §0.2 to find a coefficient vector of height ≤2^kT^k for every coordinate. Partition the nonzero coefficient space into semialgebraic strata with continuous ordered real-root branches; a polynomial of degree ≤k has at most k roots. Apply block counting in coefficient space with exponent smaller than ε/k and push blocks through these root branches. Use Northcott only after fixing the coordinatewise degree and height bounds.

([Jonathan Pila, *On the algebraic points of a definable set*](https://people.maths.ox.ac.uk/pila/Algebraic.pdf), Theorem 1.6, p.2; §5, Lemma 5.2 and Theorem 5.3, pp.7–8; Tsimerman §§6.2–6.3, pp.387–388.)

*Needs:* [6.27 Uniform rational and integral block counting](#ld6-block-counting); [6.22 Rational and algebraic counting height interface](#ld6-counting-height-interface); [6.26 Definable semialgebraic blocks](#ld6-definable-blocks); [TauCetiRoadmap.DiophantineApproximationAndTranscendence, §0.2](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md#02-mahler-measure-house-and-absolute-height).

<a id="ld6-semi-rational-counting"></a>

### 6.29 Semi-rational counting and marked projections

For a definable family F_t⊂ℝ^m×ℝ^n, fixed algebraic degree bound k and ε>0, there is C such that if Σ consists of points (y,z)∈F_t with degree/height bound k,T on y alone and #π₂Σ>C T^ε, there is a continuous definable β:[0,1]→F_t with π₁β semialgebraic and analytic on (0,1), π₂β nonconstant, and π₂β(0)∈π₂Σ. If the structure has analytic cell decomposition, β can be made analytic on (0,1). The conclusion does not state β(0)∈Σ after that analytic rescaling.

Separate isolated and nonisolated fibres over y. A nonisolated point supplies a definable path with y fixed. For isolated fibres use uniform finite fibre bounds and definable choice to split into finitely many graphs of continuous definable functions. Cover their algebraic y-coordinates by O(T^ε) blocks and use pigeonhole to choose two different z-values in one graph. Join them by a semialgebraic path in the base block. Rescale the first interval with nonconstant second projection; this preserves π₂β(0) but need not preserve y(0). For Theorem 7.1 isolate the zero-dimensional fibres by a quantified local-isolation formula. In adapted cells use dim C_y=dim C−dim π(C), not dim C−1 for an m-dimensional parameter block; the latter printed claim is the fibre-dimension correction.

The marked datum after analytic rescaling is π₂β(0), not the full β(0): the rescaled path starts at the left end of the first analytic piece on which π₂β is nonconstant, where π₂β still has its initial value but π₁β may have moved. Consumers therefore use the existential form, a point σ∈Σ with π₂σ=π₂β(0); §6.31 shows that this suffices for the abelian group-action application. In the isolation reduction use dim(C_y)=dim(C)−dim(π(C)); for C=(0,1)²×(0,1), the fibre dimension is 1, not dim(C)−1=2 (HP Theorem 7.1, p.23).

([Philipp Habegger and Jonathan Pila, *O-minimality and certain atypical intersections*](https://arxiv.org/pdf/1409.0771), Theorem 7.1, Corollary 7.2 and proof, pp.23–25.)

*Needs:* [6.28 Counting algebraic points of bounded degree](#ld6-bounded-degree-counting); [6.26 Definable semialgebraic blocks](#ld6-definable-blocks); [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry).

<a id="ld6-orbit-counting-bridge"></a>

### 6.30 Orbit growth versus definable counting

Let X⊆T×ℝ^n be a fixed definable family. Suppose independent arithmetic inputs associate to each special point s of complexity D_s a parameter t_s∈T and a finite set Σ_s⊆X_(t_s) of at least cD_s^δ distinct lifts, each with coordinatewise degree ≤k and height ≤CD_s^A, for fixed c,C,δ,A>0 and k. Neither the set of special parameters nor Σ_s is required to be definable. For ε with Aε<δ and D_s sufficiently large, at least one member of Σ_s lies in a positive-dimensional block of X_(t_s). Layer 7 turns such a block into a special subvariety through s under its stated inputs, with Galois transport back to s when the lift represents a conjugate.

Insert T=CD_s^A into the uniform block estimate and compare exponents. For large D_s the number of lifts exceeds the number of singleton blocks, so some lift lies in a positive-dimensional block. Identifying a geometric locus through that block is not part of this theorem.

([Jacob Tsimerman, *The André–Oort conjecture for A_g*](https://annals.math.princeton.edu/wp-content/uploads/annals-v187-n2-p02-p.pdf), §6.2–6.4, pp.387–388.)

*Needs:* [6.28 Counting algebraic points of bounded degree](#ld6-bounded-degree-counting); [6.27 Uniform rational and integral block counting](#ld6-block-counting).

<a id="ld6-ax-type-torus-lemma"></a>

### 6.31 Invariant Ax-type subsets of tori

Let Tⁿ=ℝⁿ/ℤⁿ with exp:ℝⁿ→Tⁿ, and for X⊆Tⁿ put X̃=exp⁻¹(X)∩[0,1]ⁿ; call X definable when X̃ is R_an-definable. Define `AxType X`: for every continuous semialgebraic y:[0,1]→X̃ that is real analytic on (0,1) there is a closed subgroup G⊆Tⁿ with exp(y([0,1]))⊆exp(y(0))+G⊆X. Prove `axTypeTorusLemma`: if X⊆Tⁿ is closed, definable and of Ax-type, and a subgroup Γ⊆GL_n(ℤ), free on two generators, satisfies γ(X)=X for all γ∈Γ, then either (1) X lies in a finite union of proper closed subgroups of Tⁿ, or (2) there are a nonempty open U⊆X and a closed connected infinite subgroup G⊆Tⁿ with U+G⊆X.

Choose c≥2 bounding the Euclidean operator norms of both generators and both inverses; then |γ|≤c^ℓ(γ) for the reduced word length ℓ, and at least 2^t elements have ℓ(γ)≤t. For x∈X̃ and γ∈Γ let y_γ=γx−a_γ∈X̃ with a_γ∈ℤⁿ; then H(a_γ)≤2n²H(γ). Apply §6.29 to the definable family Z_x={(γ,a,y)∈GL_n(ℝ)×ℝⁿ×X̃: γx−a=y}, parametrized by x∈X̃, with (γ,a) the rational coordinates and y the free coordinates, and ε=(log 2)/(2 log c). If two elements γ≠γ′ of height ≤T give the same y, exp(x) lies in the closed proper subgroup fixed by γ⁻¹γ′; there are finitely many such subgroups for the fixed T, and if they cover X we are in case (1). Otherwise, on the nonempty open complement V the y_γ are distinct, and their number exceeds c(Z,ε)T^ε for large T. §6.29 gives β(s)=(γ(s),a(s),y(s)) with γ(·),a(·) semialgebraic, y nonconstant and analytic on (0,1), and y(0)=y_{γ₀}=γ₀x−a₀ for some (γ₀,a₀,y(0))∈Σ with γ₀∈Γ; the rescaled γ(0) itself need not lie in Γ. Since x is fixed, y is semialgebraic, so Ax-type gives a closed subgroup G′, which may be taken connected and is infinite because exp∘y is nonconstant, with exp(y([0,1]))⊆exp(y(0))+G′⊆X. As exp(y(0))=γ₀·exp(x) and γ₀X=X, exp(x)+γ₀⁻¹G′⊆X. So every point of V lies in some E(G)={z∈V: z+G⊆X}, a closed subset of V; Tⁿ has countably many closed subgroups, and Baire's theorem in the locally compact space V gives one G with E(G) of nonempty interior, which is case (2).

The basic interface must include:

- `ax_type.coset`: a closed subgroup, and each of its cosets, is of Ax-type.
- `ax_type.finite`: a finite set is of Ax-type, with G trivial.
- `ax_type_torus_lemma.word_growth`: |γ|≤c^ℓ(γ) with c bounding both generators and both inverses.
- `ax_type_torus_lemma.existential_endpoint`: the existential endpoint of §6.29 is enough for the translation step.

**Checks.**

- `ax_type.subtorus`: X=T¹×{0}⊆T² is of Ax-type with G=X.
- `ax_type.curve`: X=exp{(t,t²): t∈[0,1]}⊆T² is not of Ax-type: along y(t)=(t,t²) the subgroup would contain a nonconstant arc through 0 and so a one-dimensional subtorus, which X does not contain.
- `ax_type.points`: a finite X is of Ax-type, since continuous paths in the finite set X̃ are constant.
- `ax_type_torus_lemma.inverse_bound`: for the generators γ₁=[[1,2],[0,1]] and γ₂=[[1,0],[2,1]] of a free subgroup of SL₂(ℤ), c must bound the inverses [[1,−2],[0,1]] and [[1,0],[−2,1]] as well; a bound on repeated γ₁ alone does not bound words containing γ₁⁻¹γ₂.

([Ziyang Gao and Philipp Habegger, *Heights in families of abelian varieties and the geometric Bogomolov conjecture*](https://arxiv.org/pdf/1801.05762v3), §5.1, definition of Ax-type and Lemma 5.2 with proof, pp.18–20; [Philipp Habegger and Jonathan Pila, *O-minimality and certain atypical intersections*](https://arxiv.org/pdf/1409.0771), Corollary 7.2 and proof, pp.23–26.)

*Needs:* [6.29 Semi-rational counting and marked projections](#ld6-semi-rational-counting); [6.2 Restricted analytic and exponential expansions](#ld6-restricted-analytic-expansions); [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry).

### Examples

For a line X⊂ℝ², cl(X)∖X=∅ although its ambient topological boundary is X. A singleton has empty algebraic part. In the quadrant, the abstract boundary has two distinct points over the vertex, so its immersion is not injective. The set [0,1]×{z₀} may contain many rational first coordinates but has only one second projection and cannot force a path with nonconstant second coordinate. If an orbit supplies cD^δ lifts of height at most CD^A, choose ε<δ/A; for large D their number exceeds the O(D^(Aε)) singleton blocks. With Σ={(0,0),(1,1/2)} and β(s)=(s,max(0,s−1/2)), restricting to (1/2,1) moves the initial point to (1/2,0)∉Σ, whose second projection 0 is still that of (0,0)∈Σ.

### Dependencies

[0.2 Semantics and composition of interpretations](#ld0-interpretation-semantics); Mathlib `AlgebraicGeometry.IsAffineOpen`; [TauCetiRoadmap.ShimuraVarieties, §3.5a](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ShimuraVarieties/README.md#35a-the-o-minimal-structure-r_anexp); [TauCetiRoadmap.ShimuraVarieties, §3.5d](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ShimuraVarieties/README.md#35d-definable-chow); [TauCetiRoadmap.DiophantineApproximationAndTranscendence, §§0.1–0.3](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md#layer-0-heights-and-approximation-exponents).

## Layer 7: Pila–Zannier reductions under explicit inputs

Each theorem here combines the counting of Layer 6 with geometric and arithmetic inputs from the theory of Shimura varieties, Hodge theory and complex multiplication. Each input is a named hypothesis with its exact content and the source that proves it; no theorem of this layer depends on a roadmap that consumes Layer 6. Discharging the hypotheses gives the unconditional theorems of Tsimerman, André, Gao–Habegger, Lawrence–Sawin and Gao.

<a id="ld7-andre-oort-input"></a>

### 7.1 The André–Oort input datum for A_g

Fix g≥1. Let ℋ_g⊂Sym_g(ℂ) be the Siegel space, Γ=Sp_{2g}(ℤ), A_g=Γ\ℋ_g the coarse moduli variety over ℂ with its quasi-projective structure and the R_alg-definable structure of §6.16, and π:ℋ_g→A_g the uniformization. Let 𝔉_g be the standard Siegel fundamental set and 𝔉̄_g its closure in ℋ_g. For a special point x write A_x for the CM abelian variety, R_x for the centre of End(A_x) and D(x)=|disc R_x|. Weakly special subvarieties are the images of X₁⁺×{y} for a Shimura subdatum (H,X_H) of the Siegel datum and a splitting (H^ad,X⁺)=(H₁,X₁⁺)×(H₂,X₂⁺); they are special when y is special (Pila–Tsimerman 2014, §2, p.663). Define `AgAndreOortInput g` as the conjunction of the following propositions about these fixed objects.

- (I-def) (a) The restriction of π to 𝔉̄_g is definable in R_an,exp (Peterzil–Starchenko's definability of restricted theta functions, as used in Tsimerman §6.3, p.388). (b) For every Shimura subdatum (G,X_G) of the Siegel datum there is a semialgebraic S_G⊆X_G⁺ with G(ℤ)⁺·S_G=X_G⁺ and π|S_G definable in R_an,exp (Pila–Tsimerman 2014, Theorem 4.4(1),(3), p.668).
- (I-ws) From Pila–Tsimerman 2014: (a) a weakly special subvariety is special if and only if it contains a special point (p.663, citing Moonen). (b) An irreducible algebraic S⊆ℋ_g is weakly special if and only if π(S) is algebraic (Ullmo–Yafaev; Lemma 2.1, p.663). (c) Every weakly special subvariety is G₀(ℝ)⁺·Z₀ for a semisimple ℚ-subgroup G₀ without compact ℚ-factors (Lemma 2.3, pp.663–664). (d) For irreducible V⊆A_g and each F in the class 𝒞 of Pila–Tsimerman §7, N(F) is reductive and only finitely many special N(F)_sh(ℝ)⁺-orbits occur; when N(F)_sh=G, the splitting map ψ identifies the special F-orbits in V with the special points of an auxiliary closed V′⊆A_g of smaller dimension (Lemmas 7.2–7.3, pp.674–675, and pp.676–677). (e) The union of the positive-dimensional weakly special subvarieties of V is a countable union of algebraic subvarieties and is R_an,exp-definable (Lemmas 7.5–7.6, p.677).
- (I-AL) For irreducible algebraic V⊆A_g and a connected irreducible semialgebraic W⊆π⁻¹(V) there is a weakly special S⊆V with W⊆π⁻¹(S) (hyperbolic Ax–Lindemann, semialgebraic form; Pila–Tsimerman 2014, Theorem 6.1, p.670).
- (I-orbit) There are b_g,c_g>0 with D(x)≤c_g·#(Gal(ℚ̄/ℚ)·x)^(b_g) for every special x (Tsimerman, Theorem 5.2, pp.385–386; Pila–Tsimerman 2014, Conjecture 7.1, p.673).
- (I-lift) There are k_g, a_g and C_g such that every special x has a preimage z∈𝔉̄_g whose real coordinates are algebraic of degree at most k_g with H(z)≤C_g·D(x)^(a_g) (Pila–Tsimerman 2013, Theorem 3.1, as used in Pila–Tsimerman 2014, Lemma 7.4, p.675, with k_g=2g; Tsimerman, §6.2, p.387).

The constants are ineffective, and nothing is computed from them.

The basic interface must include:

- `ag_andre_oort_input.bounded_discriminant`: by (I-lift) and bounded-degree Northcott, only finitely many special x have D(x)<B (Pila–Tsimerman 2014, Lemma 7.4, p.675).
- `ag_andre_oort_input.conjugate_lifts`: for V defined over a number field L and special x∈V, the Gal(ℚ̄/L)-conjugates of x lie on V, have the same D, and give at least (D(x)/c_g)^(1/b_g)/[L:ℚ] distinct points of π⁻¹(V)∩𝔉̄_g of coordinate degree at most k_g and height at most C_g·D(x)^(a_g).
- `ag_andre_oort_input.promote`: by (I-AL) and (I-ws)(a), a connected positive-dimensional semialgebraic subset of π⁻¹(V) through a lift of a special point x lies in π⁻¹ of a positive-dimensional special subvariety of V through x.

**Checks.**

- `ag_andre_oort_input.genus_one_lift`: For g=1 and the reduced form (a,b,c) of discriminant D=b²−4ac<0, |b|≤a≤c, the lift τ=(−b+√D)/(2a) has Re τ=−b/(2a) rational of height at most 2a≤|D| (as 3a²≤|D|), and Im τ=√|D|/(2a) has minimal polynomial dividing 4a²X²−|D|, of degree at most 2: so k₁=2=2g and a₁=1 suffice.
- `ag_andre_oort_input.genus_one_orbit`: For g=1, #(Gal·j(τ))=h(𝒪) for the order 𝒪 of discriminant D=disc R_x, and (I-orbit) is the Landau–Siegel bound h(𝒪)≫_ε|D|^(1/2−ε); any b₁>2 works, ineffectively.
- `ag_andre_oort_input.fundamental_set`: π itself is not definable in any o-minimal structure, since its fibre over a point is an infinite discrete Γ-orbit; definability is asserted only on S_G and 𝔉̄_g.
- `ag_andre_oort_input.special_point_clause`: In A₁ every point is a zero-dimensional weakly special subvariety but only CM points are special; the clause (I-ws)(a) is what turns the weakly special output of (I-AL) into a special subvariety.

*Needs:* [6.16 Definable structure of complex algebraic varieties](#ld6-algebraic-definable-structure); [6.22 Rational and algebraic counting height interface](#ld6-counting-height-interface); [TauCetiRoadmap.DiophantineApproximationAndTranscendence, §0.3](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md#03-finiteness-and-size-estimates).

<a id="ld7-finite-exceptional-cm"></a>

### 7.2 Finite exceptional CM points

Assume `AgAndreOortInput g`. For an algebraic V⊆A_g defined over a number field, only finitely many special points of V lie on no positive-dimensional special subvariety contained in V.

Fix a number field L of definition and work componentwise. Use Y⁰=π⁻¹(V)∩𝔉̄_g, definable by (I-def)(a), as the ambient counting family. For a special x avoiding the positive-dimensional special subvarieties of V, `ag_andre_oort_input.conjugate_lifts` gives a finite set Σ_x of at least (D(x)/c_g)^(1/b_g)/[L:ℚ] lifts of degree at most k_g and height at most C_g·D(x)^(a_g); Σ_x need not be definable. Avoidance persists under conjugation over L, since conjugates of special subvarieties of V are special subvarieties of V. If D(x) is large, §6.30 with §6.28 places some member of Σ_x in a positive-dimensional block, hence in a connected positive-dimensional semialgebraic subset of Y⁰; `ag_andre_oort_input.promote` gives a positive-dimensional special subvariety of V through that conjugate, and conjugating back contradicts avoidance. So D(x) is bounded, and `ag_andre_oort_input.bounded_discriminant` finishes. Neither the union of the special subvarieties of V nor its complement is assumed definable.

([Jonathan Pila and Jacob Tsimerman, *Ax-Lindemann for A_g*](https://annals.math.princeton.edu/wp-content/uploads/annals-v179-n2-p05-p.pdf), proof of Theorem 7.1, first paragraph, p.676; [Jacob Tsimerman, *The André–Oort conjecture for A_g*](https://annals.math.princeton.edu/wp-content/uploads/annals-v187-n2-p02-p.pdf), §§6.1–6.4, pp.387–388.)

*Needs:* [7.1 The André–Oort input datum for A_g](#ld7-andre-oort-input); [6.30 Orbit growth versus definable counting](#ld6-orbit-counting-bridge); [6.28 Counting algebraic points of bounded degree](#ld6-bounded-degree-counting).

<a id="ld7-special-family-induction"></a>

### 7.3 Finite special families and dimension induction

Assume `AgAndreOortInput g`. Every irreducible closed V⊆A_g contains only finitely many maximal special subvarieties.

Induct on dim V; it suffices to show that V is special when its special points are Zariski dense. By §7.2 all but finitely many special points of V lie on positive-dimensional special subvarieties of V, so it suffices to show that there are finitely many maximal positive-dimensional ones. Each is π(F(ℝ)⁺·y) for some F∈𝒞 by (I-ws)(c). If N(F)_sh≠G, (I-ws)(d) places these in finitely many special subvarieties meeting V properly, and induction applies. If N(F)_sh=G, (I-ws)(d) identifies them with the special points of V′ of smaller dimension, and induction gives finiteness. By (I-ws)(e) the union of the positive-dimensional weakly special subvarieties of V is a definable countable union of algebraic subvarieties, so §6.20 reduces it to finitely many F, and Zariski density of special points in each special subvariety places it in one of the finitely many corresponding special families. Definability of a countable union does not by itself make an arbitrary family finite; the algebraic-family and maximality inputs are used.

([Jonathan Pila and Jacob Tsimerman, *Ax-Lindemann for A_g*](https://annals.math.princeton.edu/wp-content/uploads/annals-v179-n2-p05-p.pdf), Theorem 7.1, p.673, and proof with Lemmas 7.2–7.7, pp.674–678; [Jacob Tsimerman, *The André–Oort conjecture for A_g*](https://annals.math.princeton.edu/wp-content/uploads/annals-v187-n2-p02-p.pdf), §6.5, p.388.)

*Needs:* [7.2 Finite exceptional CM points](#ld7-finite-exceptional-cm); [6.20 Finite reduction of a definable algebraic union](#ld6-countable-algebraic-union); [6.5 Definable dimension, choice and finite topology](#ld6-definable-geometry).

<a id="ld7-andre-oort-ag"></a>

### 7.4 André–Oort for A_g under its input datum

Assume `AgAndreOortInput g`. For every algebraic V⊆A_g the Zariski closure of the special points of V is a finite union of special subvarieties. Each input is a theorem: (I-def) is Pila–Tsimerman 2014 Theorem 4.4, (I-ws) is their §§2 and 7 with Moonen and Ullmo–Yafaev, (I-AL) is their Theorem 6.1, (I-orbit) is Tsimerman's Theorem 5.2 (via the averaged Colmez formula and isogeny estimates), and (I-lift) is Pila–Tsimerman 2013 Theorem 3.1. With them discharged this is Tsimerman's unconditional Theorem 1.3 for every g≥1. No statement for general or mixed Shimura varieties is made here.

Pass to the irreducible components of the Zariski closure of the special points; each has dense special points, so by §7.3 it is special. Zero-dimensional components are special points.

([Jacob Tsimerman, *The André–Oort conjecture for A_g*](https://annals.math.princeton.edu/wp-content/uploads/annals-v187-n2-p02-p.pdf), Theorem 1.3, p.380; Theorem 5.3, p.386; §6, pp.387–388.)

*Needs:* [7.3 Finite special families and dimension induction](#ld7-special-family-induction); [7.2 Finite exceptional CM points](#ld7-finite-exceptional-cm).

<a id="ld7-cm-pairs"></a>

### 7.5 CM-pair finiteness on a nonmodular curve

Let ι:A₁×A₁→A₂ send (E₁,E₂) to E₁×E₂ with the product principal polarization, and identify A₁×A₁ with ℂ² by (j₁,j₂). Define `ProductLocusInput` as the conjunction of: (P1) ι is a finite morphism of Shimura varieties onto a special surface, and every irreducible component of the preimage under ι of a special subvariety is special; (P2) the positive-dimensional proper special subvarieties of ℂ² are the lines {j₁=a} and {j₂=a} where a is a CM j-invariant and the modular curves Φ_N(j₁,j₂)=0, N≥1. Assume `AgAndreOortInput 2` and `ProductLocusInput`. Then for every irreducible algebraic curve C⊆ℂ² that is none of these special curves, only finitely many points of C have both coordinates CM j-invariants.

A point with both coordinates CM maps to a special point of the curve ι(C)⊆A₂. If C has infinitely many, §7.4 for g=2 makes ι(C) special; by (P1), C is a component of the preimage of ι(C) and so special, and (P2) contradicts the choice of C. In the Masser–Zannier application the curve f(y₁,y₂)=0 is absolutely irreducible, involves both variables and is not modular, which excludes every special alternative.

The basic interface must include:

- `product_locus_input.preimage`: components of ι-preimages of special subvarieties are special.
- `product_locus_input.special_curves`: the list of (P2).

**Checks.**

- `product_locus_input.diagonal`: Φ₁(j₁,j₂)=j₁−j₂, so the diagonal is the modular curve N=1 and carries the infinitely many CM pairs (j,j).
- `product_locus_input.cm_line`: {j₁=1728} is special, since 1728=j(i) is a CM value, and contains the infinitely many CM pairs (1728,j).
- `product_locus_input.noncm_line`: {j₁=1} contains no CM pair, since 1 is not a CM j-invariant (the integral CM values of class number one are 0, 1728, −3375, 8000, −32768, 54000, 287496, −884736, −12288000, 16581375, −884736000, −147197952000, −262537412640768000); it is not special.

([David Masser and Umberto Zannier, *Abelian varieties isogenous to no Jacobian*](https://annals.math.princeton.edu/wp-content/uploads/annals-v191-n2-p07-s.pdf), §3.2, p.648 (André's theorem as input); pp.649–650 (block consumer); [Jonathan Pila and Jacob Tsimerman, *Ax-Lindemann for A_g*](https://annals.math.princeton.edu/wp-content/uploads/annals-v179-n2-p05-p.pdf), p.673, recalling André's theorem for the product of two modular curves.)

*Needs:* [7.4 André–Oort for A_g under its input datum](#ld7-andre-oort-ag); [7.1 The André–Oort input datum for A_g](#ld7-andre-oort-input).

<a id="ld7-abelian-group-action"></a>

### 7.6 Invariant subvarieties of abelian varieties under monodromy

Let A be a complex abelian variety of dimension g≥1 with a real-analytic group isomorphism b:A(ℂ)→T^(2g), through which a group Γ⊆GL_{2g}(ℤ) acts continuously and faithfully on A(ℂ). Assume (I-Ax): for every Zariski closed Z⊆A, b(Z(ℂ)) is closed, definable in R_an and of Ax-type in the sense of §6.31 (Ax's theorem on analytic subgroups; Gao–Habegger p.19, citing Ax). Assume that Γ is of monodromy type (γ(B(ℂ))=B(ℂ) for every abelian subvariety B and every γ∈Γ), contains a free subgroup on two generators, and fixes no nonzero vector of ℤ^(2g). Then every irreducible closed Z⊆A with γ(Z(ℂ))=Z(ℂ) for all γ∈Γ is contained in a proper torsion coset or satisfies Z+B=Z for an abelian subvariety B of positive dimension.

Apply §6.31 to X=b(Z(ℂ)) and a free subgroup. In case (1), Baire gives one proper closed subgroup G₁ with X∩G₁ of nonempty interior in X; arc-connectedness of the smooth locus of Z^an and the identity theorem for the real-analytic integral relations defining G₁ give b(Z)⊆G₁, so Z⊆P+B for a proper abelian subvariety B, generated by sums of Z−Z. With a complementary abelian subvariety B′ and the monodromy-type hypothesis, γ(P)−P∈(B∩B′)(ℂ), so Q=[#(B∩B′)]P is fixed by Γ; the absence of Γ-invariant vectors makes Q, hence P, torsion. In case (2), Z−P=Z for P in the Zariski-dense b⁻¹(U), hence for P in the Zariski closure of b⁻¹(G), which is an abelian subvariety of positive dimension because G is connected and infinite. The differential-exponential Ax–Schanuel theorem for the exponential function is not a substitute for (I-Ax).

([Ziyang Gao and Philipp Habegger, *Heights in families of abelian varieties and the geometric Bogomolov conjecture*](https://arxiv.org/pdf/1801.05762v3), §5.1, Proposition 5.3 and proof, pp.20–22.)

*Needs:* [6.31 Invariant Ax-type subsets of tori](#ld6-ax-type-torus-lemma); [6.16 Definable structure of complex algebraic varieties](#ld6-algebraic-definable-structure).

<a id="ld7-period-codimension"></a>

### 7.7 Complex period codimension consequence

In Lawrence–Sawin's polarized integral Hodge–Deligne system on a smooth irreducible complex base X of positive dimension, let Φ_C from its universal cover X̃ take values in the monodromy flag variety G_mon/P, and let W⊆X^an×Ď be the image of X̃, where Ď=(G_mon/P)_ℂ. Assume (I-BT): for every algebraic V⊆X×Ď and every irreducible analytic component U of V∩W with codim U<codim V+codim W, the projection of U to X lies in a proper weak Mumford–Tate subvariety, and weak Mumford–Tate subvarieties are algebraic (Bakker–Tsimerman, Theorem 1.1, p.2, with Cattani–Deligne–Kaplan). If an algebraic Z⊆Ď has codimension at least dim X, then every irreducible component of Φ_C⁻¹(Z) projects into a proper algebraic subvariety of X. The p-adic comparison and formal-to-rigid transport of the subsequent theorem are not part of this statement.

Treat a zero-dimensional component separately. For a positive-dimensional component, let U be the component of W∩(X×Z) containing its image; then codim(W)=dim Ď and codim(X×Z)≥dim X, and dim U>0 gives codim U<dim X+dim Ď≤codim(X×Z)+codim W. Apply (I-BT) and project to the proper algebraic locus of X.

([Brian Lawrence and Will Sawin, *The Shafarevich conjecture for hypersurfaces in abelian varieties*](https://arxiv.org/pdf/2004.09046v5), §6.1, Lemma 6.3 and proof, pp.64–65; [Benjamin Bakker and Jacob Tsimerman, *The Ax–Schanuel conjecture for variations of Hodge structures*](https://arxiv.org/pdf/1712.05088), Theorem 1.1, p.2.)

*Needs:* [6.18 Definable complex analytic Chow theorem](#ld6-definable-chow).

<a id="ld7-mixed-andre-oort"></a>

### 7.8 Mixed André–Oort under its input datum

Let S=Γ\X⁺ be a connected mixed Shimura variety of abelian type (its pure part is of abelian type), with uniformization unif:X⁺→S. Define `MixedAndreOortInput S` as the conjunction of: (M-def) there is a fundamental set 𝔉 with unif|𝔉 definable in R_an,exp (Gao §10.1, p.33); (M-AL) maximal irreducible algebraic subsets of unif⁻¹(Y) are weakly special for every closed irreducible Y⊆S (mixed Ax–Lindemann, Gao Theorem 1.2, p.3), and a weakly special subvariety containing a special point is special; (M-red) if the positive-dimensional weakly special subvarieties of Y are Zariski dense in Y, then Y is special if and only if its image under the quotient by the associated normal subgroup is special (Gao Theorem 12.2, p.42); (M-orbit) if the pure lower bound (I-orbit) holds for the pure part of S, then #(Gal(ℚ̄/k)·x)≫H(x̃)^ε for special points x with lifts x̃∈𝔉 (Gao Theorem 13.3, p.48, and Remark 13.5, p.49); (M-lift) the heights of lifts of special points are polynomially bounded in the discriminant of the pure part and the order of the torsion part (Pila–Tsimerman 2013, Theorem 3.1, and Gao Remark 4.4, p.16). Assume `MixedAndreOortInput S` and (I-orbit) for the pure part of S. Then every closed irreducible Y⊆S with a Zariski-dense set of special points is special. With (I-orbit) from Tsimerman, this is unconditional for every mixed Shimura variety whose pure part is a Shimura subvariety of some A_g; the input is the pure orbit bound, not pure André–Oort.

Pass to a neat level and to the smallest mixed Shimura subvariety containing Y, so that Y is Hodge generic and defined over a number field k. By (M-red) assume that the positive-dimensional special subvarieties of Y are not Zariski dense. For a special point x outside them, (M-lift) and (M-orbit) give polynomially many conjugate lifts in unif⁻¹(Y)∩𝔉 of polynomially bounded height; Pila–Wilkie (§6.25) puts one in a positive-dimensional semialgebraic set, hence in a positive-dimensional maximal algebraic subset, which (M-AL) makes weakly special, and special because it contains a special point. So the heights of the remaining special points are bounded, Northcott makes them finitely many, and Zariski density forces Y special.

([Ziyang Gao, *Towards the André-Oort conjecture for mixed Shimura varieties: the Ax-Lindemann theorem and lower bounds for Galois orbits of special points*](https://arxiv.org/pdf/1310.1302v6), Theorem 13.6 and proof, pp.49–50; [Jacob Tsimerman, *The André–Oort conjecture for A_g*](https://annals.math.princeton.edu/wp-content/uploads/annals-v187-n2-p02-p.pdf), Introduction, p.380.)

*Needs:* [7.1 The André–Oort input datum for A_g](#ld7-andre-oort-input); [6.25 Pila–Wilkie rational-point counting](#ld6-pila-wilkie); [6.28 Counting algebraic points of bounded degree](#ld6-bounded-degree-counting); [TauCetiRoadmap.DiophantineApproximationAndTranscendence, §0.3](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md#03-finiteness-and-size-estimates).

### Examples

For g=1 the datum of §7.1 is classical: a CM point of discriminant D has the quadratic lift (−b+√D)/(2a) and Galois orbit of size h(𝒪). If an orbit supplies (D/c)^(1/b) lifts of height at most CD^a, any ε<1/(ab) makes their number exceed the O(D^(aε)) singleton blocks of §6.27 for large D. The diagonal j₁=j₂ and the line j₁=1728 carry infinitely many CM pairs; the line j₁=1 carries none.

### Dependencies

[6.16 Definable structure of complex algebraic varieties](#ld6-algebraic-definable-structure); [6.18 Definable complex analytic Chow theorem](#ld6-definable-chow); [6.20 Finite reduction of a definable algebraic union](#ld6-countable-algebraic-union); [6.25 Pila–Wilkie rational-point counting](#ld6-pila-wilkie); [6.28 Counting algebraic points of bounded degree](#ld6-bounded-degree-counting); [6.30 Orbit growth versus definable counting](#ld6-orbit-counting-bridge); [6.31 Invariant Ax-type subsets of tori](#ld6-ax-type-torus-lemma); [TauCetiRoadmap.DiophantineApproximationAndTranscendence, §0.3](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md#03-finiteness-and-size-estimates).

## Downstream consumers

Layer 5 exports the precise formula, coefficient domain, Haar normalization, rational generating-variable convention and finite exceptional-prime policy to local-density and arithmetic-statistics consumers. AnalyticNumberTheory consumes these local factors with its own global orbit, convergence and functional-equation inputs. The finite-level enumeration theorem exports checkable finite counts; it makes no inference from a search timeout.

Layer 6 exports o-minimal geometry and uniform rational, bounded-degree and semi-rational counting. HodgeStructuresPartII applies §6.15 with R=1 to the Hodge norms of a polarized degeneration after the width-R verification described there, and uses §§6.6, 6.10–6.14, 6.18 and 6.19 for definable period maps and Hodge loci.

Layer 7 states its inputs as hypotheses. A functional-transcendence roadmap for Shimura varieties that proves (I-def), (I-ws), (I-AL), the product-locus input and Gao's mixed inputs, together with the CM-orbit and lift-height bounds stated in the second part of ComplexMultiplicationAndExplicitReciprocity, discharges them downstream and obtains the unconditional theorems of §§7.4, 7.5 and 7.8. AbelianVarietiesIsogenousToNoJacobian consumes §7.5 and the bounded-degree counting of Layer 6; AbelianSchemesAndArithmeticModuliPartII consumes §§6.31 and 7.6 with Ax's theorem; the Lawrence–Sawin application consumes §7.7 with the Bakker–Tsimerman theorem. These applications do not strengthen the universal integer theorem into an existential definition in ℚ.

## References

Page numbers for author copies are the printed page numbers of the indicated PDF, unless a published page range is specified. Every target gives its local theorem/section/page locator above. The following list fixes the source identities and the design provenance; it does not replace those locators.

- Bjorn Poonen, [*Undecidability in number theory*](https://math.mit.edu/~poonen/papers/h10_notices.pdf). Author-hosted eight-page copy of the Notices AMS 55 (2008), no.3, 344–350 survey.
- Mario Carneiro and the Mathlib contributors, [*Diophantine functions and Matiyasevic’s theorem: native Poly and Dioph*](https://github.com/leanprover-community/mathlib4/blob/082e2d37e8b0463410cdb532e111cd43d5a66174/Mathlib/NumberTheory/Dioph.lean). Pinned source, Apache-2.0.
- Cameron Freer, [*Hilbert10 polynomial bridge*](https://github.com/cameronfreer/hilbert10/blob/25b42fcd6c6c5af710c514638a6fcb4e22d00a30/Hilbert10/PolyBridge.lean). Public independent formalization, commit 25b42fcd6c6c5af710c514638a6fcb4e22d00a30, Apache-2.0.
- Cameron Freer, [*Hilbert10 finite Diophantine normal form*](https://github.com/cameronfreer/hilbert10/blob/25b42fcd6c6c5af710c514638a6fcb4e22d00a30/Hilbert10/NormalForm.lean). Public independent formalization, same pinned commit, Apache-2.0.
- Cameron Freer, [*Compact only the right summand of a sum of polynomial variables*](https://github.com/leanprover-community/mathlib4/pull/42203). Independent design contribution in Mathlib pull request #42203, head fc45c15e7908c6f31b0b5efc447b8d8a5800d051.
- The Mathlib contributors, [*Multivariate polynomial extensionality on infinite boxes*](https://github.com/leanprover-community/mathlib4/blob/082e2d37e8b0463410cdb532e111cd43d5a66174/Mathlib/Algebra/MvPolynomial/Funext.lean). Pinned source, Apache-2.0.
- Raf Cluckers and François Loeser, [*Constructible motivic functions and motivic integration*](https://arxiv.org/pdf/math/0410203). arXiv:math/0410203v3, 29 May 2008; author pagination.
- Raf Cluckers and François Loeser, [*Constructible exponential functions, motivic Fourier transform and transfer principle*](https://arxiv.org/pdf/math/0512022). arXiv:math/0512022v1, 1 December 2005.
- Raf Cluckers, Julia Gordon and Immanuel Halupczok, [*Integrability of oscillatory functions on local fields: transfer principles*](https://rcluckers.perso.math.cnrs.fr/prints/CGH.pdf). Duke Mathematical Journal 163 (2014), 1549–1600; author-hosted published copy, journal pagination.
- Johan Pas, [*Cell decomposition and local zeta functions in a tower of unramified extensions of a p-adic field*](https://numdam.org/item/AST_1991__198-199-200__265_0.pdf). Astérisque 198–200 (1991), 265–271, Numdam scan.
- Johan Pas, [*Uniform p-adic cell decomposition and local zeta functions*](https://gdz.sub.uni-goettingen.de/download/pdf/PPN243919689_0399/LOG_0010.pdf). Journal für die reine und angewandte Mathematik 399 (1989), 137–172, GDZ scan.
- Philip Dittmann and Florian Pop, [*Characterizing finitely generated fields by a single field axiom*](https://arxiv.org/pdf/2012.01307v2). arXiv:2012.01307v2, 27 April 2023.
- Franz-Viktor Kuhlmann and Josnei Novacoski, with an appendix by Hagen Knaf, [*Henselian elements*](https://www.fvkuhlmann.de/Henselt.pdf). Author-hosted Henselt.pdf; author pagination.
- Jochen Koenigsmann, [*Defining Z in Q*](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p02-p.pdf). Annals of Mathematics 183 (2016), 73–93; version of record.
- Martin Davis, [*Hilbert’s tenth problem is unsolvable*](https://www.math.umd.edu/~laskow/Pubs/713/Diophantine.pdf). American Mathematical Monthly 80 (1973), 233–269; public scan.
- Jean-Louis Colliot-Thélène and Jan Van Geel, [*Le complémentaire des puissances n-ièmes dans un corps de nombres est un ensemble diophantien*](https://arxiv.org/pdf/1401.0915). arXiv:1401.0915v1.
- Bhargav Bhatt and Akhil Mathew, [*The arc-topology*](https://arxiv.org/pdf/1807.04725v4). arXiv:1807.04725v4.
- Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, [*Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArith.pdf). Author-hosted DefArith.pdf, 22 pages; scoped to this author copy.
- Benjamin Bakker, Bruno Klingler and Jacob Tsimerman, [*Erratum to Tame topology of arithmetic quotients and algebraicity of Hodge loci*](https://benjamin-bakker.github.io/DefArithErr.pdf). Author-hosted DefArithErr.pdf, 2023, three pages.
- Michael Groechenig, Dimitri Wyss and Paul Ziegler, [*Geometric stabilisation via p-adic integration*](https://arxiv.org/pdf/1810.06739v2). arXiv:1810.06739v2.
- Michael Groechenig, Dimitri Wyss and Paul Ziegler, [*Mirror symmetry for moduli spaces of Higgs bundles via p-adic integration*](https://arxiv.org/pdf/1707.06417v3). arXiv:1707.06417v3.
- Lou van den Dries and Chris Miller, [*Geometric categories and o-minimal structures*](https://people.math.osu.edu/miller.1987/newg.pdf). Revised author copy newg.pdf, forty-one pages; author pagination.
- Jonathan Pila and Alex Wilkie, [*The rational points of a definable set*](https://www.math.ens.psl.eu/~zchatzid/papiers/o-min-21/Pila-WIlkie.pdf). Duke Mathematical Journal 133 (2006), 591–616; public author scan.
- Jonathan Pila, [*Integer points on the dilation of a subanalytic surface*](https://people.maths.ox.ac.uk/pila/isurface.pdf). Quarterly Journal of Mathematics 55 (2004), 207–223; author copy dated 2003IX19, eighteen pages.
- Ya’acov Peterzil and Sergei Starchenko, [*Complex analytic geometry and analytic-geometric categories*](https://math.haifa.ac.il/kobi/analytic.pdf). Author copy dated 22 July 2005, thirty-two pages; Theorem 4.4 and Corollary 4.5, p.12.
- Jonathan Pila, [*On the algebraic points of a definable set*](https://people.maths.ox.ac.uk/pila/Algebraic.pdf). Author copy dated 20080627; Selecta Mathematica 15 (2009), 151–170; author and journal pagination distinguished.
- Philipp Habegger and Jonathan Pila, [*O-minimality and certain atypical intersections*](https://arxiv.org/pdf/1409.0771). arXiv:1409.0771v1.
- Jacob Tsimerman, [*The André–Oort conjecture for A_g*](https://annals.math.princeton.edu/wp-content/uploads/annals-v187-n2-p02-p.pdf). Annals of Mathematics 187 (2018), 379–390; version of record.
- David Masser and Umberto Zannier, [*Abelian varieties isogenous to no Jacobian*](https://annals.math.princeton.edu/wp-content/uploads/annals-v191-n2-p07-s.pdf). Annals of Mathematics 191 (2020), 635–674; version of record.
- Ziyang Gao and Philipp Habegger, [*Heights in families of abelian varieties and the geometric Bogomolov conjecture*](https://arxiv.org/pdf/1801.05762v3). arXiv:1801.05762v3.
- Brian Lawrence and Will Sawin, [*The Shafarevich conjecture for hypersurfaces in abelian varieties*](https://arxiv.org/pdf/2004.09046v5). arXiv:2004.09046v5.
- Benjamin Bakker and Jacob Tsimerman, [*The Ax–Schanuel conjecture for variations of Hodge structures*](https://arxiv.org/pdf/1712.05088). arXiv:1712.05088v1.
- Ngaiming Mok, Jonathan Pila and Jacob Tsimerman, [*Ax–Schanuel for Shimura varieties*](https://arxiv.org/pdf/1711.02189). arXiv:1711.02189v3.
- Sean Howe and Christian Klevdal, [*Admissible pairs and p-adic Hodge structures II: the bi-analytic Ax-Lindemann theorem*](https://arxiv.org/pdf/2308.11064v2). arXiv:2308.11064v2, 28 February 2025.
- Jonathan Pila and Jacob Tsimerman, [*Ax-Lindemann for A_g*](https://annals.math.princeton.edu/wp-content/uploads/annals-v179-n2-p05-p.pdf). Annals of Mathematics 179 (2014), 659–681; version of record.
- Ziyang Gao, [*Towards the André-Oort conjecture for mixed Shimura varieties: the Ax-Lindemann theorem and lower bounds for Galois orbits of special points*](https://arxiv.org/pdf/1310.1302v6). arXiv:1310.1302v6, 54 pages; author pagination.
- Raf Cluckers, [*Presburger sets and p-minimal fields*](https://arxiv.org/pdf/math/0206197). Journal of Symbolic Logic 68 (2003), 153–162; arXiv:math/0206197, author pagination.
- Dino Lorenzini, [*Torsion and Tamagawa numbers*](https://aif.centre-mersenne.org/item/10.5802/aif.2664.pdf). Annales de l’Institut Fourier 61 (2011), 1995–2037; published copy.
- Siegfried Bosch, Werner Lütkebohmert and Michel Raynaud, *Néron Models*, Ergebnisse der Mathematik und ihrer Grenzgebiete (3) 21, Springer, 1990.
- Peter Schneider, *p-Adic Lie Groups*, Grundlehren der mathematischen Wissenschaften 344, Springer, 2011.
- The Stacks project authors, [*The Stacks project*](https://stacks.math.columbia.edu), tags 04GN, 04GS (henselization) and 0ASK (henselization of valuation rings).
- Raf Cluckers, [*Addenda and corrigenda*](https://rcluckers.perso.math.cnrs.fr/prints/list-of-addenda.pdf). Author-hosted list dated 20 April 2026, four pages.
- Mathlib contributors, [*Native ultraproduct structures and Łoś transfer*](https://github.com/leanprover-community/mathlib4/blob/082e2d37e8b0463410cdb532e111cd43d5a66174/Mathlib/ModelTheory/Ultraproducts.lean). Pinned source.
- Mathlib contributors, [*Native hyperreal and finite-domain standard part*](https://github.com/leanprover-community/mathlib4/blob/082e2d37e8b0463410cdb532e111cd43d5a66174/Mathlib/Analysis/Real/Hyperreal.lean). Pinned source.
- Mathlib contributors, [*Native multiplicative heights*](https://github.com/leanprover-community/mathlib4/blob/082e2d37e8b0463410cdb532e111cd43d5a66174/Mathlib/NumberTheory/Height/NumberField.lean). Pinned source.
