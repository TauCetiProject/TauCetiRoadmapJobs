# Roadmap: elliptic curves, part ii — legendre interfaces

**Summary.** This Part II is the import index for the Legendre continuation of EllipticCurves: it organizes the equations, rational normalization, split readings of two-descent, character-conductor comparisons, finite-field two-primary torsion and trace formulas supplied by EllipticLegendreCharacterInterfaces LG.0–LG.5. EllipticCurves supplies the general point group, local reduction, twists and descent. The endpoints are normalization of every rational full-two-torsion curve by a scalar Legendre model, units at every good odd prime, divisibility of odd primitive character conductors by the actual elliptic conductor, an embedded ℤ/2ℤ × ℤ/4ℤ, an exact two-adic point count, an explicit order-four point, and symmetric-cubic trace zero. The six layers below specify the complete imported contracts, including their hypotheses, APIs and discriminating examples.

## Scope and ownership

EllipticCurves stops at the general theory needed here: Layers 2–3 own torsion and finite-field Frobenius theory; Layer 4 owns minimal equations and local reduction; Layer 5 owns twists; Layer 6 owns the generic two-descent map. The native coefficient carrier, affine group, one-root Chinese remainder equivalence, descent homomorphism and doubling-kernel theorem, point count and integer trace are already in the library and are consumed by their exact declarations below.

EllipticLegendreCharacterInterfaces LG.0–LG.5 is the single owner of all 37 equation-specific targets indexed here. This roadmap owns their import boundary and introduces no duplicate definition or theorem. LG.0 owns the ordinary and scaled coefficient models, their invariants, labelled parameters, split and rational full-two-torsion normalization, the three root points, native twist identity and two-torsion exhaustion. LG.1 owns the valuation, good-prime, support and conductor comparisons. LG.2 owns the ordered split-algebra and squareclass equivalences and the root, nonroot, product, evaluation, unit-reading and halving interfaces. LG.3 owns the subgroup theorem and the minus-one point, doubling, exact order, descent obstruction, absence of order eight and exact count. LG.4 owns the corrected point and its doubling, order and descent exports. LG.5 owns the symmetric trace-zero theorem and the equation-specific twist specialization. The layers are readings of these contracts, not a second construction plan.

ModularCurves §§4C, 9E owns the universal smooth Legendre family, its rigidifier, the parameter-line S₃ action and coarse j-line. The labelled tuple used here differs by retaining six root-ordering labels and the scalar attached to each ordering; it makes no assertion that the six normalized curves are rationally isomorphic. ClassicalArithmeticCompletion §1.51 owns primitive quadratic characters of rational squareclasses. NeronModelsAndSemistableAbelianVarieties §§5.3a, 5.3g owns actual elliptic conductors, independence of the auxiliary prime and the reduction-type comparison. Generic finite-field twist comparison belongs to EllipticCurves Layer 5 through the exact contract below; only its Legendre specialization is consumed here. Global progression arguments, character nontriviality, large-exponent assumptions and analytic estimates belong to ErdosProgressionPowers Layer 2. Its §2.1 extends rational normalization to arbitrary fields of characteristic different from two and the prime-field subgroup theorem to all odd finite fields; neither extension is a target of this index.

The acceptance file, `Suggested.lean`, has no owned headline statements because this scope has no owned declarations. In particular, it introduces none of the coefficient constructors or API names promised by the supplier. All APIs and Checks below are mathematical prose describing imports.

## Conventions

Let R be any commutative ring in the equation and coefficient identities. Let K be a field with 2 ≠ 0, d ≠ 0 and λ ≠ 0,1 whenever ellipticity, nonsingular points, descent or torsion is asserted. Write Lλ for the native coefficient tuple (0,−(1+λ),0,λ,0) and Ld,λ for (0,−d(1+λ),0,d²λ,0). Their equations are y² = x(x−1)(x−λ) and y² = x(x−d)(x−dλ). Coefficient identities include singular parameters and characteristic two. Over a ring, native ellipticity means that the discriminant is a unit, not merely nonzero; no field criterion is transferred to an arbitrary ring.

Points belong to the native nonsingular affine point group, including O as its zero. The ordered roots are (0,d,dλ); a triple means K × (K × K), with that order. For a ≠ 0, [a] is its class in Kˣ/(Kˣ)². A field square may be zero; a unit squareclass never has representative zero. The finite-field quadratic character χ has values in ℤ, with χ(0)=0 and χ(a)=1 or −1 for nonzero squares or nonsquares. The projective point count includes every affine equation solution and O; comparison with the native point-group cardinality requires ellipticity. The trace is the integer a_q = q+1−#L(k); the good Euler polynomial is 1−a_q T+qT².

The native quadratic twist has parameters (t,n) and discriminant D=t²−4n. The literal scalar-d model uses (0,−d/4) over a field with 2 ≠ 0. A scalar twist need not be isomorphic over K to the ordinary Legendre equation. The six parameters are a Fin 6-labelled tuple, with repetitions retained. Rational v_p is the additive valuation on nonzero rational arguments. Good reduction of a rational curve means good reduction of a minimal equation over ℚ_p. Its conductor M is the actual ramification conductor, and N is the primitive conductor of a rational squareclass character, including N=1. No discriminant, displayed equation or algorithmic exponent substitutes for M.

**Checks.**

- At d=2, λ=1/2 over ℚ, the coefficients are (0,−3,0,2,0) and Δ=64. The native twist parameters (0,−1/2) give D=2; (0,−2) give D=8 and Δ=262144. This distinguishes literal coefficients from a squareclass alone.
- At d=1, λ=−1 over 𝔽₅, the ordered roots are (0,1,4), the projective count is 8 and a₅=6−8=−2. Omitting O gives 7, and reversing the trace convention gives 2.
- Over ℚ, zero is a square but has no unit squareclass; 4 has trivial squareclass and 2 does not. In the zero ring every coefficient is zero and 0=1 is a unit, so the native discriminant-unit predicate holds; this is outside every field-based nonsingularity assertion here.

## Exact supplier contracts

### From Mathlib

Use `WeierstrassCurve`, `WeierstrassCurve.b₂`, `WeierstrassCurve.b₄`, `WeierstrassCurve.b₆`, `WeierstrassCurve.b₈`, `WeierstrassCurve.c₄`, `WeierstrassCurve.Δ`, `WeierstrassCurve.IsElliptic` and `WeierstrassCurve.j` in `Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean`. The carrier contains five coefficients with no smoothness field; the ellipticity class asserts that Δ is a unit. The native j-invariant requires that class. Use `WeierstrassCurve.Affine.Equation` and `WeierstrassCurve.Affine.equation_iff` in `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Basic.lean`, and `WeierstrassCurve.VariableChange` for admissible changes of variables. Use the existing affine point group, not the set of all pairs satisfying the equation on a singular model. For normalization use `WeierstrassCurve.toCharNeTwoNF` in `Mathlib/AlgebraicGeometry/EllipticCurve/NormalForms.lean` and `WeierstrassCurve.variableChange_j` in `Mathlib/AlgebraicGeometry/EllipticCurve/VariableChange.lean`. For the finite group argument use `AddCommGroup.equiv_directSum_zmod_of_finite` in `Mathlib/GroupTheory/FiniteAbelian/Basic.lean`. The character-count input is `quadraticChar` and `quadraticChar_card_sqrts` in `Mathlib/NumberTheory/LegendreSymbol/QuadraticChar/Basic.lean`, together with `legendreSym.at_neg_one` in `Mathlib/NumberTheory/LegendreSymbol/Basic.lean` and `legendreSym.at_two` in `Mathlib/NumberTheory/LegendreSymbol/QuadraticReciprocity.lean`; the square-root count requires odd characteristic.

### From Tau Ceti

Use `WeierstrassCurve.quadraticTwistOf` in `TauCeti/AlgebraicGeometry/EllipticCurve/QuadraticTwist/Basic.lean`. For a₁=a₃=0 its coefficients are (0,Da₂,0,D²a₄,D³a₆). This polynomial construction exists over commutative rings; its elliptic interpretation requires D a unit.

Use `WeierstrassCurve.Affine.A`, `WeierstrassCurve.Affine.M`, `WeierstrassCurve.Affine.equivProdA'`, `WeierstrassCurve.Affine.equivProdA'_apply`, `WeierstrassCurve.Affine.μ`, `WeierstrassCurve.Affine.μ_apply`, `WeierstrassCurve.Affine.μX_of_eval_f_ne_zero`, `WeierstrassCurve.Affine.μX_of_eval_f_eq_zero`, `WeierstrassCurve.Affine.ker_μ_eq` and `WeierstrassCurve.Affine.normM_μ₀_eq_one` in `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/XSubT.lean`. The cubic algebra is the native adjoining-root algebra; M is its unit quotient by squares. The descent homomorphism has domain the multiplicative transport of the native point group and kernel the transported doubling range. Its elliptic characteristic-not-two normal-form and decidable-equality binders must be carried where required. The one-root equivalence is an input to the ordered three-root adapter. At a root the native representative includes the cubic cofactor; the norm theorem includes both branches.

Use `WeierstrassCurve.pointCount`, `WeierstrassCurve.pointCount_def`, `WeierstrassCurve.pointCount_eq_card_point`, `WeierstrassCurve.frobeniusTrace` and `WeierstrassCurve.frobeniusTrace_def` in `TauCeti/AlgebraicGeometry/EllipticCurve/PointCount.lean`. The count is the natural cardinality of affine solutions plus one; the point-group comparison carries finiteness and ellipticity. Trace requires a finite base field and takes values in ℤ. Use `WeierstrassCurve.Affine.finite_point` in `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FinitePoint.lean`, `WeierstrassCurve.Affine.card_ker_nsmul_two` in `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/TwoTorsion.lean`, and the additive transport `WeierstrassCurve.Affine.Point.addEquivVariableChange` in `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/Point/VariableChange.lean`. The two-torsion cardinality theorem counts roots plus O in elliptic normal form; the additive transport, rather than its underlying bare equivalence, preserves doubling.

### From TauCetiRoadmap.EllipticLegendreCharacterInterfaces

Consume LG.0, “Legendre equations and root orderings”, through all eleven targets: legendre-model, scaled-legendre-model, legendre-parameters, legendre-invariants, scaled-invariants, parameters-from-root-orderings, split-normalization, full-two-torsion-normalization, legendre-two-torsion, scaled-legendre-twist-identity and legendre-two-torsion-exhausts. Consume LG.1, “Good reduction and character conductors”, through its five targets: legendre-j-valuation, good-prime-units, legendre-good-model, character-odd-support and character-conductor-divides. Their complete mathematical contract is Layers 0–1 below.

Consume LG.2, “Split-cubic readings of the native descent map”, through split-cubic-crt, split-squareclass-equivalence, descent-off-roots, descent-at-root, descent-product, halving-square-criterion, split-cubic-evaluation and split-squareclass-unit-reading. Consume LG.3, “Two-primary torsion over prime fields”, through two-by-four-subgroup, minus-one-order-four, minus-one-no-order-eight, minus-one-point-count, minus-one-double, minus-one-order and minus-one-first-descent. Consume LG.4, “Explicit order-four points in the twist by two”, through twist-halving-point, twist-halving-double, twist-halving-order and twist-halving-descent. Consume LG.5, “Trace and downstream interfaces”, through symmetric-cubic-trace-zero and twist-euler-factor-specialization. Layers 2–5 fix these contracts without introducing a second descent, count or twist.

### From TauCetiRoadmap.EllipticCurves

Layers 2–3 supply point-group torsion, finiteness over finite fields and the finite-field Frobenius framework. Layer 4 supplies minimal local models and reduction predicates. Layer 5 supplies the general quadratic twist; Layer 6 supplies descent. A scaled good minimal equation can have Δ-valuation 12 while retaining the same good curve, so all curve-level assertions must minimize before applying reduction predicates.

What EllipticCurves must provide (gap:legendre-rational-local-units): For every rational elliptic Weierstrass curve and prime p, identify curve-level good reduction through a minimal model over ℚ_p, prove that good reduction makes j p-integral, and identify zero rational valuations with nonzero residue classes of ℤ_p units so that an integral unit-discriminant Legendre equation has good reduction. This is the precise rational-local interface required from Layer 4 by Layer 1.

What EllipticCurves must provide (gap:finite-field-native-twist-trace): For every finite field k of odd characteristic, elliptic Weierstrass curve W over k and nonzero d in k, prove that the native twist W.quadraticTwistOf 0 (−d/4) has Frobenius trace quadraticChar(d) times the trace of W and good Euler polynomial 1−quadraticChar(d)·a_k(W)·T+#k·T², including square d. This belongs to Layer 5 and supplies the generic input used by the Legendre specialization in Layer 5 below.

### From TauCetiRoadmap.ClassicalArithmeticCompletion

Section 1.51 supplies the primitive quadratic character of every nonzero rational squareclass u, its exact conductor N, odd-prime support characterized by odd v_p(u), squarefreeness of the odd part of N, and conductor 1 for the squareclass of 1. In particular u=−1,2,−2,3 gives conductors 4,8,8,12. This is the character construction consumed in Layer 1, including the trivial case.

### From TauCetiRoadmap.NeronModelsAndSemistableAbelianVarieties

Sections 5.3a and 5.3g supply the actual conductor of an elliptic curve: local Artin exponents are independent of the chosen coefficient prime ℓ different from the residue characteristic; the global ideal is the product of the local prime powers. Over ℚ take its positive generator M. At every prime p, p divides M exactly when the curve has bad reduction, and the exponent is one at multiplicative reduction. A good prime contributes zero, including p=2,3; the curve y²=x³−x contributes exponent five at 2 and zero at every odd prime. These contracts, together with minimal reduction from EllipticCurves Layer 4, supply the conductor bridge in Layer 1.

### From TauCetiRoadmap.ModularCurves

Sections 4C and 9E supply the moduli interpretation and parameter-line transformations used to identify the boundary of the root-ordering discussion. No moduli construction is a prerequisite of the elementary six-ratio calculation.

## How to read the build

Layer k reads the supplier layer LG.k, so the order preserves its direction of supply. Layer 0 fixes coefficients, root labels and normalization. Layer 1 uses local reduction and the primitive-character and actual-conductor suppliers for rational arithmetic. Layer 2 reads native descent in ordered split coordinates. Layers 3 and 4 independently use Layers 0 and 2 for finite-field two-primary torsion and the explicit conic witness. Layer 5 uses Layer 0 and finite character sums for trace zero, and the general twist comparison for the Euler polynomial. A route listed in a subsection identifies its inputs; it does not impose unrelated layers on another proof.

## Layer 0: equations, root orderings and rational normalization

### 0.1 The ordinary coefficient model and its invariants

The ordinary-model contract is Lλ=(0,−(1+λ),0,λ,0) as a native Weierstrass curve over every commutative ring R. Its factored affine equation, discriminant Δ=16λ²(1−λ)² and c₄=16(λ²−λ+1) are polynomial identities, valid at singular parameters. Over a field with 2 ≠ 0 it is elliptic exactly when λ ≠ 0,1; then j=256(λ²−λ+1)³/(λ²(1−λ)²). These are the legendre-model and legendre-invariants contracts of LG.0 (BS20, §6, equation (17), p. 367; BS20 line 512; the invariant identities are direct native coefficient calculations).

Its required API is:

- For every x,y∈R, the native affine equation holds if and only if y²=x(x−1)(x−λ).
- For every unital ring homomorphism R → S, mapping all five coefficients sends Lλ to the model at the image of λ.
- For λ,μ∈R, equality of the coefficient models is equivalent to λ=μ, as seen in the fourth coefficient.
- The first and third coefficients vanish, supplying the native characteristic-not-two normal-form condition; this coefficient condition alone asserts no characteristic restriction.

**Checks.**

- At λ=−1 over ℚ, a₂=0 and a₄=−1, yielding y²=x³−x rather than its opposite sign; Δ=64 and j=1728.
- At λ=2 over ℚ, Δ=64 and c₄=48, giving j=1728; a missing factor 16 fails these values.
- At λ=1/2 over ℚ, Δ=1 and c₄=12, again giving j=1728. The fractional parameter distinguishes rational coefficient arithmetic from integer truncation.
- At λ=0 and 1 over ℚ, Δ=0, so the native field ellipticity condition fails. In characteristic two Δ=0 for every λ; distinct-looking parameter expressions do not establish smoothness.

*Needs:* Mathlib's native coefficients, affine equation, invariants and discriminant-unit predicate; EllipticLegendreCharacterInterfaces LG.0, the ordinary-model and invariant contracts.

### 0.2 The scalar model and the literal native twist

The scaled-model contract is Ld,λ=(0,−d(1+λ),0,d²λ,0) over every commutative ring. Its equation is y²=x(x−d)(x−dλ), Δ=16d⁶λ²(1−λ)² and c₄=16d²(λ²−λ+1). Over a field with 2 ≠ 0, ellipticity is equivalent to d ≠ 0 and λ ≠ 0,1. On these models j agrees with that of Lλ. Over such a field the literal identity with the native twist uses (t,n)=(0,−d/4), including d=0 as a coefficient identity. These are LG.0's scaled-legendre-model, scaled-invariants and scaled-legendre-twist-identity contracts (BS20, §6, proof of Lemma 6.6, p. 371, BS20 line 703; arbitrary d and the invariants follow by coefficient algebra).

Its required API is:

- For every x,y∈R, the affine equation is equivalent to y²=x(x−d)(x−dλ).
- Setting d=1 gives exactly Lλ, including all singular parameters.
- Every ring homomorphism maps the scalar and parameter together, giving the scaled model at their images.
- In a field with 2 ≠ 0, comparison with the native twist at (0,−d/4) gives equality of all five coefficients, not only of j-invariants.

**Checks.**

- At d=1, λ=1/2 over ℚ the coefficients agree with the ordinary model and Δ=1.
- At d=2, λ=1/2, (a₂,a₄,Δ)=(−3,2,64); the power d⁶ is essential. The parameters (0,−2) instead give scalar 8 and Δ=262144.
- At d=0 all five coefficients and Δ vanish. For d=2, λ=0 or 1 the discriminant also vanishes; none gives an elliptic field model.

*Needs:* §0.1; native quadratic twist and its coefficient formulas; EllipticLegendreCharacterInterfaces LG.0, the three scaled-model contracts.

### 0.3 Six labels and their root-ordering meaning

For λ in a field define the labelled expressions, as an imported LG.0 contract, in the order λ, 1/λ, 1−λ, 1/(1−λ), λ/(λ−1), (λ−1)/λ. They are total field expressions; their interpretation as elliptic parameters requires λ ≠ 0,1. If e₀,e₁,e₂ are pairwise distinct and λ=(e₂−e₀)/(e₁−e₀), the ratios for orders (012),(021),(102),(120),(210),(201) are exactly those entries. Their scalar differences are respectively d, dλ, −d, d(λ−1), d(1−λ), −dλ, with d=e₁−e₀. Only nonzero differences are cancelled. These are the legendre-parameters and parameters-from-root-orderings contracts (BS20, proof of Lemma 6.2, p. 368, BS20 line 544).

The tuple's required API is:

- Evaluation at each of the six labels gives the expression in the displayed order.
- If λ ≠ 0,1, each entry is different from 0 and 1.
- Under those hypotheses the products at label pairs (0,1), (2,3), (4,5) are one.
- Every field embedding preserves every labelled entry; labels are retained even when values coincide.

**Checks.**

- Over ℚ, λ=−1 gives (−1,−1,2,1/2,1/2,2), an image with three values and six labels; no injectivity in the label is asserted.
- At λ=2 the tuple is (2,1/2,−1,−1,2,1/2). Its reciprocal-pair products are each one despite repeated entries.
- At λ=1/2 the tuple is (1/2,2,1/2,2,−1,−1), with the same three reciprocal products. A six-element set would lose two different labelled positions here.
- At λ=3 the tuple is (3,1/3,−2,−1/2,3/2,2/3). Roots (0,1,3) give these six ratios and scalars (1,3,−1,2,−2,−3), fixing both permutation order and subtraction direction.
- With totalized division over ℚ, λ=0 gives (0,0,1,1,0,0) and λ=1 gives (1,1,0,0,0,0). These are not valid elliptic parameter families.

*Needs:* field arithmetic and §0.2; EllipticLegendreCharacterInterfaces LG.0, the labelled-tuple and root-ordering contracts. The moduli action supplies no rational isomorphism here.

### 0.4 Split-cubic and full rational two-torsion normalization

For a field K with 2 ≠ 0, let W have a₁=a₃=0 and cubic (X−e₀)(X−e₁)(X−e₂) with distinct K-rational roots. The substitution x_old=x_new+e₀, y_old=y_new gives an admissible native variable change to Ld,λ, where d=e₁−e₀ and λ=(e₂−e₀)/d. Thus d ≠ 0 and λ ≠ 0,1. This is the split-normalization contract; its scope is all such fields (BS20, §6, discussion after (17), p. 367, BS20 line 515; the explicit translation is coefficient algebra).

For an elliptic native curve F/ℚ whose rational doubling kernel has cardinality four, there exist a rational admissible variable change, a nonzero rational d and λ ≠ 0,1 carrying F to Ld,λ. This is the full-two-torsion-normalization contract, with its rational scope. One route completes the square, transports the point group, identifies the three nonzero two-torsion points with distinct roots, and applies the split normalization. Every root ordering gives §0.3's parameter and recomputed scalar. The conclusion is a rational isomorphism to the scaled equation; passage to the unscaled equation is a twist (BS20, p. 367, BS20 line 515).

**Checks.**

- Roots (3,5,9) give d=2, λ=3 and translated equation y²=x(x−2)(x−6); translating in the opposite direction gives the wrong roots.
- On y²=x³−x over ℚ the doubling kernel is O,(0,0),(1,0),(−1,0), of cardinality four, with d=1 and λ=−1. The exceptional j-value 1728 is allowed.
- Repeated roots (0,1,1) give λ=1 and Δ=0, outside normalization's separable elliptic conclusion.

*Needs:* §§0.2–0.3; native completion of the square, admissible variable changes and their point-group transport; EllipticLegendreCharacterInterfaces LG.0, split-normalization and full-two-torsion-normalization, including their root-count input from EllipticCurves Layer 2.

### 0.5 The three nonzero points killed by two

Under K a field, 2 ≠ 0, d ≠ 0 and λ ≠ 0,1, the imported tuple consists of the native nonsingular points (0,0),(d,0),(dλ,0), in that order. The legendre-two-torsion and legendre-two-torsion-exhausts contracts say that a point P satisfies 2P=O if and only if P is O or one of these three distinct points; consequently the kernel has cardinality four. In a normal form with 2 ≠ 0, a nonzero affine point killed by two has y=0; the cubic then gives this exact list (BS20, Lemmas 6.3, 6.5, pp. 368, 370, BS20 lines 552, 666).

Its required API is:

- Each label has precisely its displayed pair of coordinates, together with native nonsingularity.
- Doubling each of the three points gives O.
- The labelled tuple is injective and every entry differs from O.
- Every point killed by doubling lies in the four-element list, and conversely every listed point is killed by doubling.

**Checks.**

- Over ℚ, d=1, λ=−1 gives (0,0),(1,0),(−1,0), all different from O.
- At d=2, λ=1/2 the order is (0,0),(2,0),(1,0); a sorted-root convention would swap the last two labels.
- At d=1, λ=3 the three points each double to O and their sum is O, using the horizontal line y=0. Thus there are three nonzero entries and four points in the kernel, not three.

*Needs:* §§0.1–0.2 and native affine group and negation; EllipticLegendreCharacterInterfaces LG.0, the tuple and exhaustion contracts.

### Examples

The models at λ=−1,2,1/2 over ℚ all have j=1728 but discriminants 64,64,1. At λ=3, the six root orders have six different parameter values. These distinguish invariants of curves from literal coefficients and distinguish root-ordering labels from distinct values.

### Dependencies

Mathlib native equations, affine points, variable changes and invariants; Tau Ceti native twists and two-torsion/root comparison; EllipticCurves Layers 2, 5; EllipticLegendreCharacterInterfaces LG.0. No later layer is an input.

## Layer 1: good primes and primitive character conductors

### 1.1 The valuation alternatives

For an odd rational prime p and λ∈ℚ with λ ≠ 0,1, write a=v_p(λ) and b=v_p(1−λ). If a<0 then b=a and v_p(j)=2a; if a>0 then b=0 and v_p(j)=−2a; if b>0 then a=0 and v_p(j)=−2b. Each value is negative. Hence integral j implies a=b=0. This is the legendre-j-valuation contract. A route uses λ+(1−λ)=1 and the uniquely lowest-valuation term in λ²−λ+1; 256 is a p-unit even at p=3. When a=b=0 the numerator may vanish modulo p, so no assertion that j is a unit follows (BS20, Lemma 6.2(i), pp. 367–368, BS20 line 526; the three formulas are the direct invariant proof of that implication).

**Checks.**

- At p=3, λ=3 gives (a,b)=(1,0), j=21952/9 and v₃(j)=−2=−2a.
- At p=3, λ=1/3 gives (a,b)=(−1,−1), the same j=21952/9 and v₃(j)=−2=2a. At λ=−2, (a,b)=(0,1) and v₃(j)=−2=−2b.
- At λ=−1, p=3 the two parameter valuations are zero but j=1728 has valuation three. At p=2, λ=1/2 has (a,b)=(−1,−1) and v₂(j)=6, disproving the odd-prime formula without its hypothesis.

*Needs:* §0.1, additive rational valuation arithmetic; EllipticLegendreCharacterInterfaces LG.1, legendre-j-valuation.

### 1.2 Curve-level good reduction and the unit equation

Let F/ℚ be elliptic, have full rational two-torsion and be semistable away from 2, and let λ be any associated labelled parameter. At every odd prime of good reduction of F, v_p(λ)=v_p(1−λ)=0. This is good-prime-units. A route uses the local minimal model's integral j, j-invariance under normalization and twisting, and §1.1. Semistability is the standing source hypothesis; the valuation route itself uses only good reduction at the prime in question (BS20, Lemma 6.2(i), pp. 367–368, BS20 line 529).

Conversely, for any rational λ ≠ 0,1 and odd prime p where these two valuations vanish, the ordinary equation Lλ has integral coefficients over ℤ_p and unit discriminant, and its residue model has λ̄ ≠ 0,1 and good reduction. This is legendre-good-model; it concerns the ordinary equation. The rational-local contract identifies its units and minimal reduction (BS20, proof of Lemma 6.4, p. 368, BS20 line 560; Δ from §0.1).

**Checks.**

- For F:y²=x³−x, at p=3 the parameters −1,2,1/2 and all their complements have valuation zero; j has valuation three, which is sufficient.
- At λ=3, p=5, Δ=576≡1 mod 5 and λ̄=3 avoids 0,1. At p=3 the same Δ has valuation two and λ̄=0, so the unit hypothesis fails.
- A change of variables that replaces a good minimal model's Δ by p¹²Δ gives Δ-valuation 12 while the curve remains good. Applying a minimal-equation predicate to that displayed model would misclassify the curve.

*Needs:* §§0.1–0.4, §1.1; EllipticCurves Layer 4 and gap:legendre-rational-local-units; EllipticLegendreCharacterInterfaces LG.1, good-prime-units and legendre-good-model.

### 1.3 Odd support and actual-conductor divisibility

For F and λ as in §1.2 and ω∈{1,−1,2,−2}, let χ be the primitive character of the nonzero rational squareclass ωλ and N its conductor. Every odd prime dividing N is a bad prime of F; moreover the largest odd divisor of N divides the actual elliptic conductor M. These are character-odd-support and character-conductor-divides. ClassicalArithmeticCompletion §1.51 gives squarefree odd conductor with p in its support exactly when v_p(ωλ) is odd. At an odd good prime ω and λ are units, so that valuation is zero. NeronModelsAndSemistableAbelianVarieties §§5.3a, 5.3g identifies bad primes with support of M, and multiplicative primes with exponent one. Squarefreeness turns support containment into divisibility, allowing N=1 (BS20, Lemma 6.2(ii), pp. 367–368, BS20 lines 530, 543).

**Checks.**

- For λ=−1, ω=1,−1,2,−2 gives squareclasses −1,1,−2,2 and conductors 4,1,8,8; each odd part is 1. On y²=x³−x, M=32, and each divisibility is 1∣32.
- For λ=3 the conductors of 3,−3,6,−6 are 12,3,24,24, all with odd part 3. Confusing the full conductor with its odd part would give the wrong local condition at 2.
- The constant squareclass 1 has conductor 1 and empty odd support. Requiring a nontrivial character or nonempty odd support would reject this allowed case.

*Needs:* §1.2; ClassicalArithmeticCompletion §1.51; NeronModelsAndSemistableAbelianVarieties §§5.3a, 5.3g; EllipticLegendreCharacterInterfaces LG.1, the support and divisibility contracts. The general progression theorem supplies none of these hypotheses or conclusions.

### Examples

At p=3 the parameters 3 and 1/3 both force j-valuation −2, by different branches of §1.1. The parameter −1 instead has unit parameter factors and integral nonunit j. The characters of ±1 and ±2 provide the boundary case of trivial odd conductor independently of character triviality.

### Dependencies

Layer 0; rational valuation arithmetic; EllipticCurves Layer 4 and gap:legendre-rational-local-units; ClassicalArithmeticCompletion §1.51; NeronModelsAndSemistableAbelianVarieties §§5.3a, 5.3g; EllipticLegendreCharacterInterfaces LG.1. No torsion count or later analytic theorem is used.

## Layer 2: ordered readings of native two-descent

### 2.1 The split cubic algebra

For K a field, 2 ≠ 0, d ≠ 0 and λ ≠ 0,1, let A be the native cubic algebra for Ld,λ, namely K[X]/(X(X−d)(X−dλ)). The split-cubic-crt contract is the K-algebra equivalence A → K × (K × K) determined by evaluating in root order (0,d,dλ). Its inverse is interpolation modulo the cubic. One route composes the native one-root equivalence at 0 with polynomial Chinese remainder at d and dλ. The split-cubic-evaluation contract specifies its value on every polynomial class (BS20, split descent display preceding Lemma 6.5, p. 370, BS20 line 657; the equivalence is the algebraic adapter to that display).

Its required API is:

- The class of any polynomial h maps to (h(0),h(d),h(dλ)).
- Two classes agree if and only if their three evaluations agree.
- The native class of X maps to (0,d,dλ).
- A class is a unit if and only if its three evaluations are nonzero.

**Checks.**

- At d=1, λ=−1 over ℚ, X maps to (0,1,−1), while X+2 maps to (2,3,1), fixing the root order.
- At d=2, λ=1/2, X maps to (0,2,1); constants c map to (c,c,c). Swapping the last roots fails the first test here.
- X is not a unit because its first coordinate is zero; X+2 in the first example is a unit. At λ=1 the distinct-root hypothesis fails and evaluation cannot be an equivalence: the nonzero class X(X−1) modulo X(X−1)² has all evaluations zero.

*Needs:* §§0.2, 0.5; native cubic algebra and one-root equivalence; polynomial Chinese remainder; EllipticLegendreCharacterInterfaces LG.2, split-cubic-crt and split-cubic-evaluation.

### 2.2 Transport of unit squareclasses

Under §2.1's hypotheses, the split-squareclass-equivalence contract is the multiplicative equivalence from the native quotient Aˣ/(Aˣ)² to three copies of Kˣ/(Kˣ)² induced by the ordered algebra equivalence. Its source and target consist of unit classes. The split-squareclass-unit-reading contract specifies the image of every native unit class. Transporting units through evaluation and quotienting the square subgroups gives one route (BS20, p. 370, BS20 line 658; the quotient equivalence is the adapter for the displayed target).

Its required API is:

- Every unit class is read as the three classes of its nonzero root evaluations.
- The trivial class maps to (1,1,1).
- A class is trivial if and only if all three readings are trivial.
- The reading preserves multiplication and has an inverse; a homomorphism without this inverse does not suffice for the halving criterion.

**Checks.**

- At d=1, λ=−1 over ℚ the class of 1 maps to (1,1,1).
- At d=1, λ=2 the constant 4 maps to three trivial squareclasses, since 4=2².
- At d=1, λ=1/2 the constant 2 maps to ([2],[2],[2]), which is not (1,1,1) over ℚ. Collapsing every unit to the identity would fail this test.

*Needs:* §2.1; native unit quotient and quotient-group transport; EllipticLegendreCharacterInterfaces LG.2, split-squareclass-equivalence and split-squareclass-unit-reading.

### 2.3 Nonroot and root readings

Let P=(x,y) be a native affine point on Ld,λ under §2.1's hypotheses. If x avoids 0,d,dλ, the split reading of native μ(P) is ([x],[x−d],[x−dλ]); all representatives are nonzero. At O the reading is (1,1,1). At the three nonzero two-torsion points the readings are, in order:

- At (0,0): ([d²λ],[−d],[−dλ]).
- At (d,0): ([d],[d²(1−λ)],[d(1−λ)]).
- At (dλ,0): ([dλ],[d(λ−1)],[d²λ(λ−1)]).

These are descent-off-roots and descent-at-root. The native corrected representative at a root r evaluates to f′(r) at r and r−s at each other root s. It never evaluates a zero unit representative. The product of the three readings is 1 for every P, including O and the roots; this descent-product contract is the native norm theorem transported through §2.1, with products of representatives y² off roots and f′(r)² at roots (BS20, p. 370, BS20 lines 659–667).

**Checks.**

- At d=1, λ=−1 over 𝔽₅, the root tuples have classes (1,1,1), (1,[2],[2]), (1,[2],[2]); their representative products are 1,4,4, all nonzero squares.
- At the nonroot point (2,4) on the same curve, the differences are (2,1,3) and their product is 6≡1=4². The first class is nontrivial; the product condition alone does not imply all classes are trivial.
- At d=2, λ=3 over 𝔽₅, the root (1,0) has representatives (1,4,4), all squares. Over a field containing i²=−1 with λ=2t² and 1−λ=2v², its general representatives are ((2t)²,(2iv)²,(4itv)²); the derivative entry replaces the zero third difference.

*Needs:* §§0.5, 2.1–2.2; native μ and both representative branches, and the native norm theorem; EllipticLegendreCharacterInterfaces LG.2, descent-off-roots, descent-at-root and descent-product.

### 2.4 The halving criterion, including roots

Under §2.1's hypotheses, a native affine point P=(x,y) is twice a native K-point if and only if x, x−d and x−dλ are all squares in K. This halving-square-criterion includes the two-torsion points. Away from roots, use the native doubling-kernel theorem and §2.3. At a root, one field difference is zero and hence square, while the corrected unit component is the product of the other two nonzero differences. Triviality of all three unit classes is equivalent to the stated field-square condition. No squareclass of zero is formed (BS20, proof of Lemma 6.3, p. 368, BS20 line 554; root compatibility uses the p. 370 descent discussion).

**Checks.**

- On L₋₁ over ℚ, (0,0) has differences (0,−1,1). Since −1 is not a rational square, it is not a double.
- Over 𝔽₅ those differences are (0,4,1), all squares; (2,4) doubles to (0,0), giving the converse direction a witness.
- Over 𝔽₅, (1,0) has differences (1,0,2); 2 is a nonsquare and it has no half. The point (2,4) has differences (2,1,3), so it too has no half despite its trivial product class.

*Needs:* §§2.2–2.3; native doubling-kernel theorem; EllipticLegendreCharacterInterfaces LG.2, halving-square-criterion. No assertion concerns an arbitrary triple unrelated to a curve point.

### Examples

At λ=−1 over 𝔽₅, the three two-torsion readings distinguish the unique nonzero two-divisible root. The nonroot point (2,4) has a nontrivial first class even though its norm class is trivial. Over ℚ the same root (0,0) has no half, showing that ground-field squares, rather than geometric squares, govern the criterion.

### Dependencies

Layer 0; native cubic algebra, one-root Chinese remainder, unit squareclasses, corrected descent, norm and doubling kernel; EllipticLegendreCharacterInterfaces LG.2. Layer 1 and progression hypotheses are not prerequisites.

## Layer 3: two-primary torsion over prime fields

### 3.1 A subgroup of order eight

For a prime p≡3 mod 4 and η∈𝔽_p with η ≠ 0,1,−1, the native group L_(η²)(𝔽_p) contains an additive subgroup isomorphic to ℤ/2ℤ × ℤ/4ℤ; in particular 8 divides its projective point count. This is two-by-four-subgroup. A route applies §2.4 to (1,0) if 1−η² is square, and otherwise to (η²,0), since −1 and 1−η² are then nonsquares and η²−1 is square. A half P has exact order four. A nonzero two-torsion point T different from 2P complements its cyclic subgroup, giving the injective map (a,b) ↦ aT+bP from ℤ/2ℤ × ℤ/4ℤ into the native point group. Ellipticity justifies the count comparison (BS20, Lemma 6.3, p. 368, BS20 lines 547–557).

**Checks.**

- At p=7, η=2, λ=4, the count is 8; one half is (3,1) with double (1,0). Together with (0,0) it generates eight distinct points.
- At p=11, η=2 the count is 16, still divisible by 8; the conclusion is subgroup existence, not exact valuation three.
- For p=3 there is no η outside {0,1,−1}. At η=0 or ±1 over any odd prime field the discriminant is zero, excluding the singular cases before using a group-cardinality theorem.

*Needs:* §§0.5, 2.4; finite-field quadratic-character dichotomy, native finite points and count comparison; EllipticLegendreCharacterInterfaces LG.3, two-by-four-subgroup.

### 3.2 The minus-one half and its exports

For every field K with 2 ≠ 0 and i²=−1, the minus-one-order-four contract supplies the native point H=(i,1−i) on L₋₁. Its double is (0,0), its exact order is four, and its first split descent class is [i]. These are also the minus-one-double, minus-one-order and minus-one-first-descent contracts. Membership is (1−i)²=−2i=i(i−1)(i+1). The tangent denominator 2(1−i) is nonzero because i=1 would force 2=0. Native doubling and §0.5 give the exact order (BS20, proof of Lemma 6.5, p. 370, BS20 line 668).

Its required API is:

- The coordinates are precisely (i,1−i), retaining the chosen square root i.
- Its double is the native affine point (0,0), rather than O.
- Its additive order is exactly four.
- Its first ordered split reading under native μ is [i]; the point is off all three roots, so the nonroot formula applies.

**Checks.**

- Over 𝔽₅, i=2 gives H=(2,4), and y²=1=x³−x.
- The other choice i=3 gives H=(3,3), and y²=4=x³−x; the choice is part of the coordinates.
- Both points double to (0,0), so 2H ≠ O and 4H=O. Their first representatives 2 and 3 are both nonsquares, ruling out the zero point or an arbitrary two-torsion substitute.

*Needs:* §§0.1, 0.5, 2.3; native tangent doubling; EllipticLegendreCharacterInterfaces LG.3, the point and its three exports.

### 3.3 Absence of order eight and exact count

For every prime p≡5 mod 8, L₋₁(𝔽_p) has no point of exact order eight, and its projective point count is divisible by 8 and not by 16, equivalently v₂(#L₋₁(𝔽_p))=3. These are minus-one-no-order-eight and minus-one-point-count. In §2.3's root readings, −1 is square and 2 nonsquare, so only (0,0) among the nonzero two-torsion points is two-divisible. Its four halves are translates of §3.2's H by the doubling kernel. All have first class [i], since the first root classes are trivial; i^((p−1)/2)=−1 because (p−1)/4 is odd. Thus none has a half. The finite abelian two-primary group has two cyclic factors, exponent at most four, and at least one order-four factor. Two order-four factors would make every two-torsion point divisible, contradicting the root test. Its type is therefore ℤ/2ℤ × ℤ/4ℤ, proving the exact count (BS20, Lemma 6.5 and proof, p. 370, BS20 lines 663–672).

**Checks.**

- At p=5,13,29,37 the counts are 8,8,40,40. Each has v₂=3, whereas its full odd part may be 1 or 5.
- At p=5 the group has eight points and exponent four; it has no order-eight element. The group ℤ/4ℤ × ℤ/4ℤ also has no order-eight element but has cardinality sixteen, so the root-divisibility test is essential to the exact-count argument.
- At p=3 the count is 4 and v₂=2; this lies outside p≡5 mod 8. The root exclusions and prime congruence cannot be dropped.

*Needs:* §§0.5, 2.3–2.4, 3.2; finite abelian group structure and native finite point/count comparison; EllipticLegendreCharacterInterfaces LG.3, the no-order-eight and exact-count contracts. The subgroup theorem §3.1 has a different prime congruence and is not an input here.

### Examples

At p=7 the square-parameter model λ=4 gives an actual eight-element subgroup. At p=5 the minus-one model gives a group of order eight without an order-eight element. At p=29 its odd part grows to five while its two-primary part remains of order eight.

### Dependencies

Layers 0 and 2; native finite point/count comparison; finite abelian group structure and supplementary quadratic-character laws; EllipticLegendreCharacterInterfaces LG.3. No rational semistability or progression assumption enters these prime-field contracts.

## Layer 4: the corrected scale-two order-four witness

### 4.1 The native point and its full API

Let K be any field with 2 ≠ 0, and let t,v,i∈K satisfy t ≠ 0, v ≠ 0, i²=−1 and 2t²+2v²=1. Put λ=2t². The twist-halving-point contract is the native point P=(2λ+4itv,8itv(t+iv)) on L2,λ. The hypotheses imply λ ≠ 0,1 and nonzero y. Set r=2t and s=2iv; then r²−s²=2, 2λ=r² and rs=4itv. The three root differences are r(r+s), s(r+s), rs and y=rs(r+s); their product equals y². If r+s=0 then 2=0, so none of the tangent factors vanishes. This local algebraic contract uses no progression hypotheses (BS20, proof of Lemma 6.6, p. 371, BS20 lines 716–720; the y-coordinate here is the corrected one).

Its required API is:

- The coordinates are exactly (4t²+4itv,8itv(t+iv)).
- Doubling gives the native nonzero two-torsion point (2λ,0).
- The additive order of P is exactly four.
- Its third split reading under native μ is [4itv], which is a unit class because all four factors are nonzero.
- Every field embedding sends P to the point at the images of t,v,i, preserving the chosen square root and the root order.

**Checks.**

- Over 𝔽₅ with t=v=2 and i=3, λ=3 and P=(4,3). Both sides of y²=x(x−2)(x−1) are 4.
- With the same t,v and i=2, P=(3,4); both sides of that equation are 1. The change in i changes the actual native point.
- In the first case the double is (1,0)=(2λ,0), different from O, and 4P=O.
- The printed pair (4,4) at the first tuple gives y²=1 and cubic value 4, so it is off the curve. The corrected y-coordinate is essential.

*Needs:* §§0.2, 0.5; native affine equation and nonsingularity; EllipticLegendreCharacterInterfaces LG.4, twist-halving-point. The defining coordinate identities themselves need no descent.

### 4.2 Doubling, exact order and third descent class

Under precisely §4.1's hypotheses, the twist-halving-double, twist-halving-order and twist-halving-descent contracts give 2P=(2λ,0), additive order four and third class [4itv]. A route writes a₂=−(2r²−s²) and a₄=r²(r²−s²). The tangent numerator is 2rs(r+s)² and denominator 2rs(r+s), so the slope is r+s. The native formulas give x(2P)=(r+s)²−a₂−2(r²+rs)=r² and y(2P)=0. The nonzero two-torsion double proves exact order, and x(P)−2λ=rs reads the descent class without changing its representative (BS20, p. 371, BS20 lines 718–720; denominator-checked identities for the corrected point).

**Checks.**

- At the first 𝔽₅ tuple, r=4,s=2,r+s=1. The numerator and denominator are both 1, so the slope is 1 and 2P=(1,0).
- At the second tuple, r=4,s=3,r+s=2. The numerator is 1 and denominator 3, so the slope is 2 and 2P=(1,0).
- The third representatives are respectively 4−1=3 and 3−1=2. Both are nonsquares in 𝔽₅, so the contract does not imply a trivial third class or further halving.

*Needs:* §4.1 and §0.5 for doubling and order; §2.3 for the descent reading; native tangent formula; EllipticLegendreCharacterInterfaces LG.4, the three exports. No large-exponent or trace-comparison input is needed.

### Examples

The two choices of i at t=v=2 over 𝔽₅ give points (4,3) and (3,4), each of exact order four with the same double. Their third descent representatives are 3 and 2. These are local conic witnesses, independent of any rational progression producing t and v.

### Dependencies

Layer 0 for the scaled model and root points; Layer 2 for the descent-coordinate export; native doubling formulas; EllipticLegendreCharacterInterfaces LG.4. Layer 3's exact point-count theorem is not used to construct or double this point.

## Layer 5: symmetric trace zero and twist specialization

### 5.1 The symmetric cubic

For every prime p≡3 mod 4 and u∈𝔽_p with u ≠ 0, the symmetric model y²=x(x−u)(x+u)=x³−u²x is Lu,−1 and is elliptic. Its projective count is p+1 and its native Frobenius trace is zero. This is symmetric-cubic-trace-zero. A route counts the fibre over x as 1+χ(x³−u²x), pairs x and −x, and uses χ(−1)=−1. The x=0 character term is zero; adding O to the affine count p yields p+1. The argument is a finite character sum, without a distribution theorem or global progression assumption (BS20, proof of Lemma 5.2, p. 366, BS20 lines 462–465; the direct counting route isolates the local fact).

**Checks.**

- At p=3 and every nonzero u the count is 4 and trace 0; at p=7 and every nonzero u the count is 8 and trace 0; at p=11 the corresponding values are 12 and 0.
- At p=7,u=2, the terms at x=1 and x=6 are χ(4)=1 and χ(3)=−1, giving sum zero. The x=0 term is χ(0)=0, fixing the sign and zero convention.
- At p=5,u=1 the count is 8 and the trace is −2; the prime congruence matters. At u=0 the cubic is singular, so a count alone does not provide the native elliptic group comparison.

*Needs:* §0.2 and its discriminant; native point count and integer trace; finite-field square-root counts and quadratic character; EllipticLegendreCharacterInterfaces LG.5, symmetric-cubic-trace-zero. Neither Layer 3 nor the generic twist comparison is a prerequisite of this route.

### 5.2 Legendre trace and the good Euler polynomial

For every odd prime p, d∈𝔽_p with d ≠ 0 and λ∈𝔽_p with λ ≠ 0,1, the twist-euler-factor-specialization contract gives a_p(Ld,λ)=χ(d)a_p(Lλ) and the good Euler polynomial 1−χ(d)a_p(Lλ)T+pT². At p≡5 mod 8 and d=2 the trace changes sign; for square d it agrees. The native coefficient identity uses (0,−d/4). The general comparison comes from EllipticCurves Layer 5 through gap:finite-field-native-twist-trace; the Legendre identification uses §0.2. All nonzero scalar classes, including squares, are included (BS20, proof of Lemma 6.6, p. 371, BS20 lines 703–707).

**Checks.**

- At p=5, λ=3, the ordinary and scalar-two counts are 4 and 8, so their traces are 2 and −2. The Euler polynomials are 1−2T+5T² and 1+2T+5T².
- At the same p and λ, d=4 is square and the count remains 4, trace 2; a rule that flips the sign for every nontrivial scalar would fail.
- At p=7,u=2, §5.1's symmetric count gives trace 0; multiplying it by χ(2)=1 or χ(3)=−1 still gives 0. At d=0 the model is singular and the good Euler polynomial contract does not apply.

*Needs:* §0.2 and ellipticity from Layer 0; EllipticCurves Layer 5 and gap:finite-field-native-twist-trace; native trace and quadratic character; EllipticLegendreCharacterInterfaces LG.5, twist-euler-factor-specialization. No rational bad-prime factor or global L-function identity is asserted.

### Examples

The scale-two model at p=5, λ=3 has exactly the coordinates used in Layer 4 and count eight; its trace −2 agrees with the sign change from the ordinary model's trace 2. The symmetric model at p=7,u=2 instead has trace zero, so either scalar character preserves the vanishing.

### Dependencies

Layer 0; native finite-field count and integer trace; quadratic-character fibre counts; EllipticLegendreCharacterInterfaces LG.5. Only §5.2 uses EllipticCurves Layer 5 and its generic twist-trace gap. Layers 1, 3 and 4 are consumers of related interfaces, not inputs to §5.1.

## Downstream consumers

ErdosProgressionPowers Layer 2, especially §2.1 and its “Required Legendre-character interfaces” contract, consumes LG.0–LG.5 for the partition of rational parameters by squareclasses, good-prime specialization, exact two-primary obstructions and the corrected conic witness. Its character nontriviality and progression bounds require its own global hypotheses. The moduli and cyclic-family theories of ModularCurves §§4C, 9E and MordellLawrenceVenkatesh §6.4 use the ordinary Legendre equation; the native coefficient model and the equation-level interfaces flow from the earlier LG.0 owner.

## References

**BS20.** Michael A. Bennett and Samir Siksek, *A conjecture of Erdős, supersingular primes and short character sums*, Annals of Mathematics 191 (2020), 355–392, [DOI 10.4007/annals.2020.191.2.2](https://annals.math.princeton.edu/2020/191-2/p02). The [publisher version](https://annals.math.princeton.edu/wp-content/uploads/annals-v191-n2-p02-s.pdf) fixes the numbering: §5, proof of Lemma 5.2, p. 366 (BS20 line 462); §6, equation (17), p. 367 (BS20 line 513); Lemma 6.2 and its proof, pp. 367–368 (BS20 lines 526, 542); Lemma 6.3, p. 368 (BS20 line 547); the split descent display and Lemma 6.5, p. 370 (BS20 lines 657, 663); the local witness and twist calculation in the proof of Lemma 6.6, p. 371 (BS20 lines 703, 716). The point in Layer 4 uses y=8itv(t+iv); the negative-control Check at (4,4) distinguishes it from the printed coordinate at BS20 line 718. The generalizations and coefficient or quotient adapters are stated explicitly above as deductions, rather than attributed as verbatim source theorems.
