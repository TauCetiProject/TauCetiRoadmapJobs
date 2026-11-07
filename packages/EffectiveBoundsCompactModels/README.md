# Roadmap: compact models, Part II: explicit uniform bounds

**Summary.** Make the compact-model and degree-sensitive field bounds of EffectiveBoundsPartII numerically uniform. The base roadmap supplies small equations realizing a number field as a component of a rational Jacobian-open model, with an exact coefficient bound and an unspecified eventual constant. This continuation proves that Q = 65536 suffices, retains the sharper coefficient exponent 40 log n, and establishes the ordinary unweighted estimate Nₙ(H) ≤ n^(Qn(log n)³) H^(Q(log n)³) for every n ≥ Q and real H ≥ 1. The logarithmic parameter, exact coefficient box and component multiplicity remain visible throughout (Couveignes, Theorems 1–2, pp. 487–488, COUVEIGNES20 line 20 and line 35; the numerical refinement is proved in Layers 0–2).

## Scope and ownership

EffectiveBoundsPartII EB.0–EB.5 already owns the general arithmetic compact-model argument: canonical measure and discriminant covolume; simultaneous first-half minima and the product-span argument; short independent integers; integral parameter tuples, full first jets and value descent; bounded integral evaluation, saturated kernels, transpose images, the indexed Gram identity and relation covolume; truncated relations, the full gradient block and common minor; Jacobian-open models and the exact Proposition 2 bound; the least central-binomial parameter, coefficient boxes, their floor/cardinality formulas, field-component classes, isolated-point bounds and the unspecified-constant field count. This continuation imports those sections. It owns the explicit threshold and constants, the resulting uniform model theorem, and the resulting real-cutoff field estimate. The finite-surjection target below differs from EB.5/components-to-classes by fixing the same numerical parameter and coefficient height for every field in a real discriminant sublevel.

Completed EffectiveBounds Layers 1–2 owns the elementary discriminant and Hermite infrastructure. GenericDoublePointInterpolation §§0.1, 0.3, 1.3–1.4 and 5.1–5.3 owns bounded-polynomial coordinates, the coefficient metric, first jets, generic interpolation and universal minors. GeometryOfNumbersAndQuadraticArithmetic §§0.1.2, 0.3.3, 1.1, 1.2.7 and 1.5.21 owns the generic Gram, orthogonal-covolume and successive-minimum results. SchemeAndStackFoundations §§0.9 and 5.12 owns generic Jacobian-localization étaleness and intersection theory. These constructions are not new targets here.

Mathlib and Tau Ceti already provide the native discriminants, houses, root discriminants, mixed embeddings, bounded polynomial submodules, evaluation, linear kernels and dual maps, quotient localizations, intrinsic Gram covolumes, finite-index ratios and fixed-ambient Hermite finiteness. Their exact declarations are in the supplier contracts. The few real-body definitions in Suggested.lean only spell out native predicates and subtypes needed to state the two numerical headline theorems. They do not replace the base roadmap's general carriers.

The elementary field-class quotient is an EffectiveBoundsPartII EB.5 interface. The later ArithmeticStatisticsPartIV §3.1 develops its signed strict-cutoff and weighted adapters; those adapters do not supply this continuation. A model describes a rational field component, not an integral presentation of its ring of integers, generators for the whole relation ideal, or a computational enumeration procedure.

## Conventions

K is an arbitrary-universe field with its native number-field structure, O = 𝓞 K, n = [K:ℚ] ≥ 1, δ = `NumberField.rootDiscr` K = |disc K|^(1/n) ≥ 1, and signature (r₁,s) with n = r₁+2s. Every embedding τ:K→ℂ fixes ℚ. The native house is the maximum of embedding moduli. A full rationally independent integral family need not be an integral basis: in ℚ(i), (1,2i) has houses (1,2)≤δ²=4 and integral index 2 (COUVEIGNES20 line 94 and line 161).

Write r(n) for the base roadmap's least positive r satisfying n(r+1)≤choose(2r,r). When a total natural function is wanted put r(0)=1. With d=r, set M=choose(2r,r), ℓ=M−n. For other d use M=choose(d+r,d). Natural subtraction is interpreted as a rank only after proving M≥n. The retained relation indices in the supplier are zero-based i<ℓ+1−n, so ℓ−i≥n (COUVEIGNES20 line 323 and line 409).

The base roadmap's exact coefficient bound is

    H₀(n,r,d,δ) = ℓ^(ℓ/(2n)) √M (n²d(r+1))^d δ^(2d).

The fraction ℓ/(2n) and powers with nonintegral exponent are real; δ^(2d) has integral exponent. The admissible range r≥1,d≥5,M≥n(r+1) gives n,ℓ,M>0. Natural logarithms are used; n≥65536 implies log n>0. Coefficient height is the maximum absolute coefficient, without a logarithm. Zero polynomials have total degree 0, and coefficients outside support are 0. The exact degree cutoff and all boxes are inclusive (Proposition 2, p.495, COUVEIGNES20 line 354).

The Minkowski supremum gauge uses canonical measure 2ˢ times product measure; the real pairing doubles the complex contribution. Scaling each complex coordinate by √2 transports both this metric and its supremum body. For ℚ(i), canonical unit-body area and integer covolume are 2π and 2, versus product values π and 1. In coefficient space monomials are orthonormal, so 1+x has squared norm 2. Covolumes in a proper subspace are intrinsic, with rank-zero value 1 (COUVEIGNES20 line 94, line 127 and line 255).

The Jacobian has equation rows and variable columns. For (x−a,y−b) its determinant is 1; interchanging equations gives −1 and the same principal open. A_E denotes the rational quotient by the actual equations with this determinant inverted. It can be zero. A specified integral tuple κ satisfies the model condition when the equations vanish, J(κ)≠0, and its coordinates generate K over ℚ. This gives a surjection A_E→K carrying variables to κ (COUVEIGNES20 line 348 and line 354).

Nₙ(H) counts exact-degree-n fields up to rational algebra isomorphism with |disc|≤H. H is real and no automorphism or embedding weights enter. Counting representatives uses finite intermediate fields in the fixed native algebraic closure of ℚ; every abstract number field has such a representative. For F≥0, the natural floor B=⌊F⌋₊ is used before counting integral coefficients. At F=5/2 there are exactly five choices −2,−1,0,1,2. Natural cardinality is interpreted together with Hermite finiteness, rather than its junk value 0 on infinite types (COUVEIGNES20 line 35 and line 425).

## Exact supplier contracts

### From Mathlib

- `NumberField.rootDiscr`, `NumberField.discr_eq_basisMatrix_det_sq`, `NumberField.mixedEmbedding.covolume_integerLattice` and `NumberField.finite_of_discr_bdd`, in `Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean`: root discriminant; the canonical integral-basis embeddings determinant squared; the product-measure covolume 2^(−s)√|disc K|; and Hermite finiteness of finite-dimensional intermediate fields in a fixed characteristic-zero ambient field with inclusive integral absolute-discriminant cutoff. The last applies with cutoff ⌊H⌋₊.
- `NumberField.mixedEmbedding.mixedSpace`, in `Mathlib/NumberTheory/NumberField/CanonicalEmbedding/Basic.lean`, has the real/complex product coordinates, product measure and supremum norm. It does not install the doubled complex metric. `NumberField.house`, `NumberField.house_mul_le` and `NumberField.one_le_house_of_isIntegral`, in `Mathlib/NumberTheory/NumberField/House.lean`, use all embeddings; the last requires a nonzero integral element.
- `MvPolynomial.restrictTotalDegree` and `MvPolynomial.mem_restrictTotalDegree`, in `Mathlib/RingTheory/MvPolynomial/Basic.lean`; `MvPolynomial.aeval`, in `Mathlib/Algebra/MvPolynomial/Eval.lean`; and `MvPolynomial.pderiv`, in `Mathlib/Algebra/MvPolynomial/PDeriv.lean`. These give the native bounded polynomials, algebra evaluation and formal derivatives used in the signatures.
- `Module.Dual` and `LinearMap.dualMap`, in `Mathlib/LinearAlgebra/Dual/Defs.lean`, and `LinearMap.ker` are the base argument's dual and kernel constructions. `MvPolynomial.eq_zero_of_eval_zero_at_prod_finset`, in `Mathlib/Combinatorics/Nullstellensatz.lean`, is used there over ℂ, a domain, with every coordinate degree strictly below the grid cardinality.
- `ZLattice.covolume_div_covolume_eq_relIndex'`, in `Mathlib/Algebra/Module/ZLattice/Covolume.lean`, applies to two discrete full lattices in a common finite-dimensional real inner-product space with its Borel structure and an inclusion. The common space for the base transpose calculation is W⊥.
- `NumberField.RingOfIntegers`, `IntermediateField`, `AlgebraicClosure`, `Ideal.Quotient`, `Localization.Away`, `Algebra.adjoin`, `Matrix.det`, `Quotient` and `Nat.card` supply the signature carriers directly. The native quotient and localization permit the zero algebra.

### From Tau Ceti

`ZLattice.covolume_sq_eq_det_gram`, in `TauCeti/Algebra/Module/ZLattice/Covolume.lean`, computes intrinsic covolume squared from an actual integral basis of a discrete full lattice in a finite-dimensional real inner-product space. `NumberField.ncard_setOf_finiteDimensional_abs_discr_le_le`, in `TauCeti/NumberTheory/EffectiveBounds/HermiteCount/Basic.lean`, supplies the baseline count of fixed-ambient finite intermediate fields with inclusive natural discriminant cutoff. The numerical estimate below uses the compact-model route instead of extracting another primitive-element estimate.

### From TauCetiRoadmap.EffectiveBoundsPartII

Consume EB.0/measure-normalization and EB.0/discriminant-covolume for the two metric normalizations; EB.0/half-small-integers, EB.0/product-span and EB.0/short-integers for the short rational basis of integers. Their API includes simultaneous independent witnesses and the strict dimension threshold; it does not label those witnesses an integral basis. The product-span theorem applies to arbitrary finite field extensions, including inseparable ones.

Consume EB.1/parameterized-generators, EB.1/bounded-parameter-choice and EB.1/value-surjectivity for the signed integral parameter sums, the inclusive box 0≤uᵢⱼ≤dn(r+1), and the surjectivity of bounded rational evaluation. The embeddings change has complex coefficients. Full jets include values and gradients; rational surjectivity does not imply integral surjectivity. Consume EB.2/relation-lattice, EB.2/dual-image, EB.2/gram-discriminant-identity, EB.2/evaluation-height and EB.2/relation-covolume-bound for the saturated integer kernel and its indexed identity

    q² covol(L)² = covol(D)² = det(BBᵀ) = det(AA*)/|disc K|.

Here q=[L⊥ℤ:D]≥1, B uses an actual integral basis, and all covolumes use intrinsic coefficient measure. The generic Euclidean Gram, primitive-complement and finite-index inputs remain with the base roadmap's suppliers.

Consume EB.3/independent-short-relations, EB.3/truncate-relations, EB.3/gradient-surjectivity, EB.3/one-full-gradient-block and EB.3/common-jacobian-minor for ℓ independent ordered relations, the retained k=ℓ+1−n, codimension n−1, and one selection of r equations with a determinant nonzero at all embeddings. Consume EB.4/jacobian-open and EB.4/explicit-small-model for the rational Jacobian-open algebra and its field component, with the exact H₀ above for every r≥1,d≥5,M≥n(r+1). The map has source A_E and target K. Its variable images are the constructed integral tuple.

Consume EB.5/central-binomial-choice for the least parameter and exact Catalan ratio; EB.5/bounded-equation-systems and EB.5/coefficient-box for Box(r,d,B), with exact cardinality (2B+1)^(r choose(d+r,d)) and the real-height floor equivalence; and EB.5/components-to-classes for the component-to-isomorphism-class surjection and the dʳ multiplicity bound. Zero equations and arbitrary r are included. The unspecified constants of EB.5/asymptotic-small-model and EB.5/discriminant-count-bound are replaced here by explicit sufficient constants, using the preceding exact bounds.

What EffectiveBoundsPartII must provide (gap:bounded-field-class-interface): Provide the native quotient of finite-dimensional intermediate fields in an algebraic closure of ℚ by rational algebra isomorphism, with invariant degree and absolute discriminant, inclusive real sublevels, Hermite finiteness, and compatibility of residue-field component classes with these sublevels.

This belongs to EB.5/components-to-classes and EB.5/discriminant-count-bound. Its elementary quotient is needed before the statistical adapters of later roadmaps. Suggested.lean specializes the literal native subtype and setoid so that this missing supplier interface does not prevent stating the numerical endpoint.

### From TauCetiRoadmap.SchemeAndStackFoundations

§0.9, `jacobian_etale_algebra`, gives étale finite-presentation for the localization of r equations in r variables at the Jacobian determinant; the field-base finite-dimensional specialization is used by the base compact-model theorem. Over a general ring the Jacobian condition alone does not imply finiteness. §5.12 gives Bézout degree and proper local intersection multiplicities.

What SchemeAndStackFoundations must provide (gap:isolated-intersection-lengths): Over an algebraically closed characteristic-zero field, for r≥1 positive-degree homogeneous forms in projective r-space, the isolated common points are finite and the sum of their local intersection lengths is at most the product of their degrees, even when other components have positive dimension.

The local-length bound supplies the arbitrary-dimensional isolated-point input to the component count. Nonzero constants have empty zero locus; a zero equation makes the Jacobian determinant zero. Those cases are handled before positive-degree homogenization. This contract imports generic intersection theory rather than adding it to this continuation.

## How to read the build

Layer 0 fixes a numerical threshold for the least parameter and bounds the exact H₀. Layer 1 applies the base roadmap's model theorem with those parameters. Layer 2 uses its coefficient boxes and component surjection at a common real discriminant cutoff and absorbs every constant into 65536. The two headline theorems are `uniformModel` and `fieldCount`. The general construction is an input throughout; the Worked examples retain the discriminating arithmetic and geometric tests of that input.

## Layer 0: Effective central-binomial and height estimates

### 0.1 A numerical threshold for the least parameter

For every integer n≥65536, put L=log n and r=r(n). Prove

    5 ≤ r ≤ 3L,   n(r+1) ≤ M < 4n(r+1) ≤ 16nL,
    ℓ/(2n) ≤ 8L,   log M ≤ 3L,   log ℓ ≤ 3L,
    log(r(r+1)) ≤ 2L.

These fix the base roadmap's eventual inequalities at one stated threshold (Couveignes §4, equation (1), pp.495–496, COUVEIGNES20 line 409; explicit constants are the refinement here).

One route uses Cₜ=choose(2t,t)/(t+1). Its exact ratio is Cₜ₊₁/Cₜ=(4t+2)/(t+2), at least 2 for t≥1 and strictly below 4. Thus Cₜ≥2^(t−1). Taking t=ceil(log n/log 2)+1 gives r≤t≤3L. Minimality at r−1 gives M<4n(r+1); n>14 forces r≥5 because C₄=14. The remaining inequalities follow with L≥16 log 2. This imports the least parameter rather than defining another one.

**Checks.**

- At n=65536, r=12: choose(22,11)=705432<786432, while M=2704156≥851968. Also 12≤3 log n≈33.271065.
- At that threshold M=2704156<3407872=4n(r+1), log M≈14.810300<33.271065, and ℓ/(2n)≈20.131073<8 log n≈88.722839.
- r(1)=1 exceeds 3 log 1=0; the numerical threshold is necessary for the logarithmic assertion. r(2)=2 and r(3)=3 distinguish the least parameter from an arbitrary capacity witness.

*Needs:* EffectiveBoundsPartII EB.5/central-binomial-choice for the statement and route; native binomial identities, real logarithms and the positive-integer ceiling.

### 0.2 The explicit coefficient exponent

For n≥65536 and δ≥1, with the preceding r and d=r, prove H₀(n,r,r,δ)≤(nδ)^(40 log n). All bases are positive. This is a numerical bound on the exact Proposition 2 expression, without replacing its field discriminant by an order discriminant (Couveignes Proposition 2, p.495, COUVEIGNES20 line 354; §4, pp.495–496, line 421).

Writing L=log n, the logarithm of H₀ is at most 24L²+1.5L+12L²+6L log δ, hence at most 40L²+40L log δ. The terms come respectively from ℓ^(ℓ/(2n)), √M, (n²r(r+1))ʳ and δ^(2r). No division by log δ or log H is used.

**Checks.**

- At n=65536,δ=1, log H₀≈631.825287≤4919.838863≈40(log n)².
- At δ=2 the same values become approximately 648.460819 and 5227.328792; the actual δ exponent 24 is smaller than 40 log n≈443.614196.
- At n=1 the least parameter has r=d=1, outside d≥5; substituting it into a model theorem is forbidden even though elementary expressions can be evaluated.

*Needs:* §0.1 for the inequalities; EffectiveBoundsPartII EB.4/explicit-small-model for the exact expression's arithmetic interpretation; real-power and logarithm laws on positive reals.

### Examples

At n=0,1,2,3 the total parameter values are 1,1,2,3. The least positive capacity for n=2 is attained at choose(4,2)=6=2·3. At n=14 and 15 the values are 4 and 5, so the interpolation threshold is crossed there. At n=65536 the exact values in the Checks give an explicit instance of every numerical inequality.

### Dependencies

EffectiveBoundsPartII EB.4/explicit-small-model and EB.5/central-binomial-choice; Mathlib binomial coefficients, real logarithms and powers. No interpolation or lattice theorem is proved again in this layer.

## Layer 1: Explicit uniform compact models

### 1.1 The native model condition for the target signature

Define `IsCompactModel` K r E κ on a number field K, r integer polynomials E in Fin r variables, and a specified integral tuple κ. It means that every Eᵢ vanishes at κ, the matrix of evaluated partial derivatives has nonzero determinant, and `Algebra.adjoin` ℚ of the coordinate range is all of K. This is the literal native statement of the base roadmap's field-component conclusion, used to make the numerical theorem statable (Proposition 2, p.495, COUVEIGNES20 line 354).

Its API consists of the following properties of the specified tuple.

- Each equation evaluates to zero in K, via native `MvPolynomial.aeval`.
- The evaluated Jacobian is a nonzero field element, so all its embedding images are nonzero.
- The coordinates generate K as a rational algebra. Consequently evaluation extends uniquely to a surjection A_E→K carrying variables to κ. Conversely such a surjection with those specified integral images gives the condition: ℚ[κ] is a finite-dimensional domain and therefore a field, so inverting J(κ) cannot enlarge it.

**Checks.**

- In ℚ(i), E=x²+1 and κ=i have E(κ)=0, J(κ)=2i≠0, and generated degree 2.
- In ℚ(i), E=x and κ=0 have J=1 but generated degree 1, so the condition fails. Vanishing and Jacobian alone are insufficient.
- For E=x² and κ=0 in ℚ, J=0, so the condition fails although vanishing and generation hold. For E=2x−1 the surjection sends x to 1/2; it supplies no integral tuple.
- With r=0 the empty Jacobian is 1 and the empty equations vanish. Generation holds exactly for the rational degree-one field, while the uniform model theorem has r≥5.

*Needs:* Mathlib polynomial evaluation, derivatives, determinant, ring of integers and algebra adjoin for the definition; EffectiveBoundsPartII EB.4/jacobian-open and SchemeAndStackFoundations §0.9 for the interpretation as a field component.

### 1.2 Uniform logarithmic-size models

The headline `uniformModel` asserts that every number field K of degree n≥65536 admits the least r=r(n), d=r, r integer polynomials of degree≤r and an integral tuple satisfying `IsCompactModel`, with

    5 ≤ r ≤ 3 log n,   M ≤ 16n log n,
    |coeff(Eᵢ,a)| ≤ (nδ)^(40 log n).

Thus Q=65536 simultaneously bounds the threshold, variable count, degree, monomial count and exponent in the usual compact-model formulation. The stronger constants 3,16,40 are retained (Couveignes Theorem 1, p.487, COUVEIGNES20 line 20; exact model at line 354; numerical refinement in Layer 0).

Apply the base model theorem with r,d and M, then §0.2. Increasing the exponent from 40 to Q is valid because nδ≥1. The model remains a component statement over ℚ, including nonnormal fields; its integer equations need not present O.

**Checks.**

- At n=1 the least r is 1, and the degree-five interpolation hypothesis does not hold; n≥65536 excludes it.
- At n=65536, r=12, M=2704156 and the height logarithm at δ=1 is approximately 631.825287. All satisfy the stronger bounds before the exponent is enlarged to Q.
- At δ=1 the coefficient bound is n^(40 log n); at δ=2 its logarithm increases by 40(log n)(log 2). It is monotone in δ and has no singular normalization at δ=1.

*Needs:* §0.1 and §0.2 for the route; §1.1 for the signature; EffectiveBoundsPartII EB.4/explicit-small-model, with r≥1,d≥5,M≥n(r+1), for existence.

### Examples

The familiar small models x²+1 for ℚ(i) and x for ℚ satisfy the native component predicate directly, independently of the large-degree bound. The repeated-root model x² fails its Jacobian condition. The bound at n=65536 uses twelve variables and degree twelve; the coefficient count depends on 12·2704156 slots, without a monicity or nonsingularity filter on the whole box.

### Dependencies

Layer 0; EffectiveBoundsPartII EB.4/jacobian-open and EB.4/explicit-small-model; native polynomial and number-field carriers. The construction of the short integers, full jets and short relations is supplied in EB.0–EB.3.

## Layer 2: Explicit degree-sensitive field counts

### 2.1 Native class-count signatures

The signature abbreviation `EmbeddedField` is the literal subtype of `IntermediateField` ℚ (`AlgebraicClosure` ℚ) with a finite-dimensionality witness. The instance `embeddedFieldNumberField` gives each member its native `NumberField` structure, using that witness. Define `BoundedFields` n H by exact degree n and |disc|≤H. Define `fieldIsoSetoid` on this subtype by existence of a rational algebra equivalence, and define `numberFieldCount` n H as the natural cardinality of its quotient. This spells out Nₙ(H) for the acceptance test; the general invariant quotient and component-class interface is the supplier contract of EffectiveBoundsPartII EB.5 (Couveignes Theorem 2, p.488, COUVEIGNES20 line 35; unweighted components at line 425).

The API is as follows.

- A representative is a finite rational extension inside the algebraic closure. Infinite extensions are excluded even though their native finrank has the junk value 0.
- The number-field instance has the same scalar action and finite-dimensionality witness as the native intermediate field; its discriminant and degree are those used by Hermite finiteness.
- Membership in the bounded subtype means exactly degree n and inclusive absolute discriminant ≤H. Increasing H gives an inclusion of the corresponding classes.
- The isomorphism relation is reflexive, symmetric and transitive, and identifies two representatives exactly when their rational algebra structures are equivalent. Degree and discriminant are invariant under it.
- Hermite's theorem with integer cutoff ⌊H⌋₊ proves finiteness for H≥0; for H<0 the subtype is empty. The quotient cardinal is the ordinary unweighted count of abstract classes because each number field embeds in the algebraic closure.

**Checks.**

- For the representative carrier and instance, ℚ has degree 1 and discriminant 1, ℚ(i) has degree 2 and discriminant −4, and the whole algebraic closure has infinite dimension and is excluded. All three distinguish the finite-extension predicate from a bare intermediate field.
- For the bounded subtype, n=0 gives no representative; n=1,H=1 gives exactly ℚ; ℚ(i) is excluded at H=3 and included at H=4.
- For the setoid, the three conjugate subfields isomorphic to ℚ(∛2) are related; ℚ(√2) and ℚ(√3) are unrelated; ℚ(i) is related to itself. Literal equality of subfields fails the cubic test.
- For the count, N₀(1)=0, N₁(1)=1 and N₂(3)=1. In the last case only ℚ(√−3) occurs; inverse-automorphism weighting would give 1/2.
- The nonnormal cubic class has three embedded representatives and one automorphism, whereas ℚ(ζ₇)⁺ has one embedded representative and three automorphisms; both give one quotient class.

*Needs:* native intermediate fields, algebraic closure, finite-dimensionality, rational algebra equivalences, degree and discriminant for the signature; Mathlib `NumberField.finite_of_discr_bdd` for finiteness; EffectiveBoundsPartII EB.5/components-to-classes and its bounded-field-class-interface contract for compatibility with model components.

### 2.2 A common finite cover at a real discriminant cutoff

For n≥65536 and real H≥1, set r=d=r(n), M=choose(2r,r), F=(nH^(1/n))^(40 log n), and B=⌊F⌋₊. Prove that the finite disjoint union of field components of A_E, over E∈Box(r,r,B), restricted to residue degree n and |disc|≤H, maps onto the class quotient of §2.1. Its domain cardinality is at most (2B+1)^(rM)rʳ. The map sends (E,p) to the rational isomorphism class of A_E/p. Both its source and target use the same cutoff (Couveignes §4, p.496, COUVEIGNES20 line 425; explicit uniform height from §1.2).

For a field in the cutoff, δ≤H^(1/n). The uniform model theorem supplies equations in this one coefficient box and a surjection A_E→K. Its kernel gives a preimage of the field class. Apply the base roadmap's exact coefficient-box cardinality and component multiplicity before restricting. Several fields can share one tuple, and several components can yield one class.

**Checks.**

- E=x²−1 has two field components and one rational class. Domain cardinality 2 and image cardinality 1 distinguish surjectivity from injectivity.
- E=(x²−2)(x²−3) has two distinct quadratic classes attached to one tuple. A model-to-field rule choosing only one factor loses a class.
- For F=5/2, B=2 gives five coefficient values. Rounding to 3 would give seven; the exact common box uses the floor.
- For x² the Jacobian-open component set is empty; for (xy,x(y−1)), J=x and the common zero locus is x=0, so the component count is also 0. The whole zero locus is not assumed finite.

*Needs:* §1.2 and §2.1; EffectiveBoundsPartII EB.5/bounded-equation-systems, EB.5/coefficient-box and EB.5/components-to-classes; SchemeAndStackFoundations §5.12 and its isolated-intersection-lengths contract for the arbitrary-dimensional component bound.

### 2.3 The degree-sensitive count

The headline `fieldCount` proves, for every integer n≥65536 and real H≥1,

    Nₙ(H) ≤ n^(65536 n (log n)³) H^(65536 (log n)³).

The same constant is uniform in both variables, with inclusive cutoff and no weights (Couveignes Theorem 2, p.488, COUVEIGNES20 line 35; counting argument at line 425; explicit refinement here).

Let L=log n. Retain §2.2's exact finite bound. From §0.1, rM≤48nL² and log(rʳ)≤3L². Since F≥1 and B≤F,

    log(2B+1) ≤ log 3 + 40L² + (40L/n)log H.

The logarithm of the finite bound is at most 2000nL⁴+1920L³log H, hence at most 65536nL⁴+65536L³log H. Exponentiating gives exactly the displayed n-power and H-power. The inequality 48nL² log 3+3L²≤80nL⁴ uses n≥65536, so the constant 2000 includes the finite-box overhead.

**Checks.**

- At H=1 the H-factor is 1 and log H=0; the calculation contains no division by log H.
- At n=65536,H=1, the logarithm of the exact coefficient/component bound is approximately 159670633916.582, below 2000n(log n)⁴≈1982858398366.559; the final logarithmic bound is larger still.
- At n=65536,H=2, the added log F term is (40 log n/65536)log 2≈0.004692, while the H-exponent is 65536(log n)³. The discriminant exponent has no extra factor n.
- n=1 lies outside the threshold, and N₁(1)=1. Small-degree tests do not assert that the least parameter satisfies r≥5.

*Needs:* §2.2 for the finite bound and §0.1 for the numerical estimates; Mathlib real powers and logarithms. Hermite finiteness and the native quotient are specified in §2.1.

### Examples

At r=1,d=1,B=2, the imported coefficient box has 25 tuples. A single tuple can yield two quadratic classes or two copies of the rational class, so the covering argument counts all components before taking the quotient. At H=1 the entire logarithmic calculation retains a positive n-base and a unit H-factor. The examples below test the imported geometry without claiming that every small-degree example lies in the large-degree theorem's range.

### Dependencies

Layers 0–1; EffectiveBoundsPartII EB.5 coefficient boxes and field components; SchemeAndStackFoundations §5.12 with the explicit isolated-length contract; native Hermite finiteness and the bounded class quotient. No asymptotic counting or weighted statistical theorem is a supplier.

## Downstream consumers

ArithmeticStatisticsPartIV §3.1 can adapt the field-class interface to signed strict cutoffs, predicates and automorphism weights. ArithmeticStatisticsPartV §3.28 can use the explicit model height and the fixed degree-sensitive count. These are downstream uses; their broader statistical carriers do not enter the proof. Applications needing only exact compact models consume EffectiveBoundsPartII EB.4 directly, while applications requiring numerical uniformity use this continuation.

## Worked examples

These tests evaluate the imported contracts and their conventions. The general constructions and API remain owned by the supplier sections in Scope and ownership. Small examples outside r≥1,d≥5,M≥n(r+1) test the underlying algebraic definition, not the uniform existence theorem.

### Canonical Minkowski measure

These evaluate EffectiveBoundsPartII EB.0/measure-normalization (§2, p. 489; COUVEIGNES20 line 94).

- For ℚ the interval [−1,1] has canonical measure 2, agreeing with product measure; a complex factor must not be inserted.
- For one complex place the unit disk has product area π and canonical area 2π; using the product measure would lose the factor 2.
- For signature (2,0) the unit square has area 4=2²; a strict lower comparison with 2ⁿ would fail.

### Discriminant covolume

These evaluate EffectiveBoundsPartII EB.0/discriminant-covolume (§2, pp. 489–490; COUVEIGNES20 line 127).

- For ℚ, disc=1 and both covolumes equal 1.
- For ℚ(i), |disc|=4 and s=1 give product covolume 1 and canonical covolume 2; the unscaled answer is wrong.
- For ℚ(√5), disc=5 and s=0 give both covolumes √5; an extra factor 2 is wrong.

### Short first-half integers

These evaluate EffectiveBoundsPartII EB.0/half-small-integers (§2, p. 490; COUVEIGNES20 line 140).

- For ℚ the witness 1 has house 1 and product 1=δ^(1/2).
- For ℚ(i), the witnesses 1,i have houses (1,1), product 1≤2 and m=2; the inequality is inclusive.
- For n=3 and n=4 the first-half indices are respectively {0,1} and {0,1,2}; their final ordered-root exponents are 3/4 and 1. A shifted index would admit an unjustified larger witness.

### Products of a large subspace

These evaluate EffectiveBoundsPartII EB.0/product-span (§2, p. 490, product argument (general field-extension form); COUVEIGNES20 line 150).

- For K=k and V=K, the product span has dimension 1 and 2dim V=2>1.
- For K=ℚ(i) and V=ℚ·1, the dimensions are 1 and 2 and the product span has dimension 1; replacing > by ≥ fails.
- For an inseparable extension k(t^(1/p))/k of degree p and V=K, the product span is K since 1·a=a; separability is unnecessary.
- A finite-dimensional algebra cannot replace the field: in k[ε]/(ε³), V=(ε,ε²) has dimension 2>3/2 while its product span is (ε²), of dimension 1.

### Short independent algebraic integers

These evaluate EffectiveBoundsPartII EB.0/short-integers (Proposition 1, p. 490; COUVEIGNES20 line 161).

- For ℚ, α=(1) has house 1=δ².
- For ℚ(i), (1,2i) has houses (1,2)≤4, and its integral span has index 2. The conclusion must not call it an integral basis.
- The zero family in ℚ(i) has houses 0≤4 but rank 0 instead of 2; the independence condition excludes it.

### Integral parameter tuples

These evaluate EffectiveBoundsPartII EB.1/parameterized-generators (§3, pp. 491–492; COUVEIGNES20 line 207).

- All-zero parameters give all-zero κ.
- A column with a single coefficient 1 and all others 0 returns that αᵢ.
- A single −1 coefficient returns −αᵢ, so signed parameters are not truncated.

### Bounded full-jet parameters

These evaluate EffectiveBoundsPartII EB.1/bounded-parameter-choice (§3, pp. 491–492; COUVEIGNES20 line 242).

- For n=r=1,d=5, B=10, α=1 and u=0 give the point 0; the jets of 1,x form the 2 by 2 identity and |κ|=0≤10.
- At two identical supports in A¹, the value rows agree and the four-row jet map has rank at most 2; distinctness is necessary.
- A degree-B nonzero polynomial ∏ₜ₌₀^(B−1)(T−t) vanishes on the B-point grid but has value B! at B; the grid must have B+1 points.

### Degree-bounded evaluation surjectivity

These evaluate EffectiveBoundsPartII EB.1/value-surjectivity (§3, pp. 492–493; COUVEIGNES20 line 249).

- For ℚ(i), κ=2i, evaluation of a+bx is a+2bi, so rational rank is 2; the integral image has index 2. Rational surjectivity does not imply integral surjectivity.
- For κ=0 in ℚ(i), bounded evaluation has rank 1<2 and κ generates only ℚ; arbitrary tuples do not satisfy the theorem.
- At the single rational point 0, a+bx has jet (a,b), and its value kernel bx has all possible gradients b.

### Integral bounded evaluation

These evaluate EffectiveBoundsPartII EB.2/relation-lattice (§3, p. 493; COUVEIGNES20 line 269).

- At d=0 evaluation sends the sole coefficient c to c·1.
- At κ=0 only the constant coefficient contributes.
- For r=1,d=2,κ=2, the coefficient vector of x² evaluates to 4, not 2.

### Saturated relation lattice

These evaluate EffectiveBoundsPartII EB.2/relation-lattice (§3, p. 493; COUVEIGNES20 line 255).

- For κ=0,d≥1, the vector of x₁ is a relation.
- The vector of the constant polynomial 1 is never a relation.
- If i²=−1 in K and κ=2i, x²+4 is a relation but x²+1 is not.

### Transpose evaluation image

These evaluate EffectiveBoundsPartII EB.2/dual-image (§3, p. 493; COUVEIGNES20 line 269).

- For K=ℚ,κ=2,d=1, D=ℤ(1,2) and annihilates ℤ(−2,1).
- For K=ℚ(i),κ=2i,d=1, in the integral basis (1,i), D=ℤ(1,0)+ℤ(0,2), L=0 and [L⊥ℤ:D]=2.
- For K=ℚ,d=0, D is the full one-coordinate integer lattice.

### Finite-index discriminant identity

These evaluate EffectiveBoundsPartII EB.2/gram-discriminant-identity (§3, p. 493; COUVEIGNES20 line 277).

- For ℚ, κ=2,d=1, B=(1,2), det(BBᵀ)=5 and both primitive covolumes are √5, with q=1.
- For ℚ(i), κ=2i,d=1, q=2 and L=0 give q²covol(L)²=4=det(BBᵀ)=16/4. Omitting q gives 1≠4.
- The empty Gram determinant and rank-zero intrinsic covolume are 1; ambient plane volume of the zero lattice is 0 and cannot be used.

### Relation covolume bound

These evaluate EffectiveBoundsPartII EB.2/relation-covolume-bound (§3, pp. 493–494; COUVEIGNES20 line 291).

- For ℚ, κ=2,d=1, relation covolume is √5; the coarse C=2,D₀=8 give √5≤√8.
- For ℚ(i), κ=2i,d=1, C=32,D₀=2048 give the stronger upper bound 2048/2=1024 while covol(L)=1. The discriminant denominator is positive.
- At the zero tuple, a constant monomial has value 1; bounding every monomial by a coordinate bound 0 would fail. Here n²d(r+1)δ²≥1.

### Truncated short relations

These evaluate EffectiveBoundsPartII EB.3/independent-short-relations (§3, p. 494; COUVEIGNES20 line 323).

- For n=1,r=1,d=5, M=6,ℓ=5,k=5; discard 0 equations and retain full codimension 0.
- For n=2,r=1,d=5, M=6,ℓ=4,k=3; the last retained index is 2 and ℓ−2=2=n. Retaining the next relation would lose the bound.
- At n=3,r=2,d=5, M=21,ℓ=18,k=16 and codimension 2=n−1; retaining only r=2 equations would give codimension 16 instead.

### A full-rank gradient block

These evaluate EffectiveBoundsPartII EB.3/one-full-gradient-block (§3, p. 494, cotangent-space argument; COUVEIGNES20 line 342).

- For two one-dimensional blocks and U={(z,z)}, codimension is 1 and both projections have rank 1.
- For U=ℂ×{0}, codimension is 1 and the projection ranks are (1,0); dimension alone gives one full block, not every block.
- For U=0 in two one-dimensional blocks, codimension 2=n and neither block is full; allowing codimension n is false.

### A common nonzero Jacobian minor

These evaluate EffectiveBoundsPartII EB.3/common-jacobian-minor (§3, pp. 494–495; COUVEIGNES20 line 348).

- For E=x²+4 and κ=2i, J=4i; its embedding values are 4i and −4i, both nonzero for the same equation.
- For E=x² and κ=0, J=0 at every embedding; a vanishing relation alone does not suffice.
- For E=(x−a,y−b), J=1; reversing the rows gives −1, with unchanged nonvanishing.

### Jacobian-open arithmetic models

These evaluate EffectiveBoundsPartII EB.4/jacobian-open (§3, Proposition 2, p. 495; COUVEIGNES20 line 354).

- For r=1,E=x², J=2x and A_E is the zero algebra; the repeated root contributes no component.
- For E=x²−1, A_E≃ℚ×ℚ as ℚ-algebras, with two components.
- For r=2,E=(xy,x(y−1)), V(E) is a line but its Jacobian-open algebra is zero; the whole zero locus need not be zero-dimensional.

### Explicit compact model bound

These evaluate EffectiveBoundsPartII EB.4/explicit-small-model (Proposition 2, p. 495; COUVEIGNES20 line 354).

- For ℚ, r=1,d=5, E=x,κ=0 has coefficient height 1, J=1, and H₀=5^(5/2)√6·2⁵>1.
- For ℚ(i), r=1,d=5, E=x²+1,κ=i gives degree 2≤5 and J=2i≠0; the target is a rational field component.
- The equations (xy,x(y−1)) have a line of zeros and J=x, identically zero on the line; they cannot model a nonempty field component.

### Least central-binomial parameter

These evaluate EffectiveBoundsPartII EB.5/central-binomial-choice (§4, p. 495; COUVEIGNES20 line 385).

- r(1)=1, which lies outside d≥5.
- r(2)=2: choose(4,2)=6=2·3.
- r(3)=3: at r=2 the capacity is 6<9; at r=3 it is 20≥12.

### Finite equation coefficient boxes

These evaluate EffectiveBoundsPartII EB.5/bounded-equation-systems (§4, p. 496; COUVEIGNES20 line 425).

- With B=0 the unique tuple has every equation zero.
- For r=1,d=0,B=1 the box has exactly three elements: −1,0,1.
- For r=1,d=1,B=2, 2x−2 belongs to the box but 3x does not.

### Exact coefficient enumeration

These evaluate EffectiveBoundsPartII EB.5/coefficient-box (§4, p. 496; COUVEIGNES20 line 425).

- For r=1,d=0,B=1, M=1 and the exact count is 3; 2B loses zero.
- For r=1,d=1,B=2, M=2 and the exact count is 5²=25.
- For r=0 the unique empty tuple gives cardinality 1=(2B+1)⁰, including B=d=0.

### Bounded field classes and isomorphism classes of model components

These evaluate EffectiveBoundsPartII EB.5/components-to-classes (§4, p. 496, multiple-field-component observation; COUVEIGNES20 line 425).

- For E=x² the component domain and its image are empty.
- For E=x²−1 the domain has two components but its class image is the singleton [ℚ].
- For E=(x²−2)(x²−3), the class image consists of the two distinct classes [ℚ(√2)] and [ℚ(√3)].

### Isolated-component Bézout bound

These evaluate EffectiveBoundsPartII EB.5/components-to-classes (§4, p. 496, intersection-number argument; COUVEIGNES20 line 425).

- For x²−1 in one variable, there are two geometric points and two rational factors, exactly dʳ=2.
- For x²+1 there are two geometric points but one rational factor; the component count need not equal the geometric-point count.
- For (xy,x(y−1)), the common zero set is x=0 and J=x, so the Jacobian-open part has 0 components≤2².
- For a zero equation the determinant has a zero row; for a nonzero constant equation the quotient is zero. Both give 0 components, including d=0.

## References

- Jean-Marc Couveignes, *Enumerating number fields*, Annals of Mathematics 192 (2020), 487–497, DOI 10.4007/annals.2020.192.2.4, published version. [Publisher PDF](https://annals.math.princeton.edu/wp-content/uploads/annals-v192-n2-p04-s.pdf). COUVEIGNES20 line 94 (§2, pp.489–490), line 169 (§3, pp.491–495), line 381 (§4, pp.495–496). Proposition 1 is at line 161, Proposition 2 at line 354, Theorem 1 at line 20 and Theorem 2 at line 35. The explicit constants 65536 and 40 are derived in this continuation.
