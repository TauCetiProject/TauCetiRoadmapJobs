# Roadmap: modularity of elliptic curves over ℚ, Part II: effective residual comparisons

**Summary.** Modularity attaches a weight-two newform to every elliptic curve over ℚ. This continuation develops effective residual comparisons: removed-prime bounds, sharp rationality thresholds, exact-conductor comparison curves with rational two-torsion, and uniform irreducibility and rational-isogeny surjectivity. It builds the arithmetic comparisons on the general modular-form, elliptic-curve and modular-curve libraries.

## Scope and ownership

EllipticCurveModularity ends at rational elliptic modularity; this Part II owns the six comparison layers below. The parent theorem supplies modularity independently of the uniform image conclusions here. This direction is retained throughout.

The elliptic isogeny, duality, torsion, Weil pairing, local reduction, Tate-curve and twist theories belong to EllipticCurves Layers 1–5; global minimal equations belong to its Layer 4.5b. ModularForms Layers 3, 8 and 10 own old/new spaces, coefficient fields, integral coefficients and the characteristic-zero Sturm and dimension infrastructure. ModularCurves Layers 1A and 1D own the projective elliptic scheme and group law; StableReduction Layer 5 owns minimal regular proper models. JacobianChallenge Layers D–F own general Jacobians, abelian varieties and Abel–Jacobi maps. These constructions are consumed here rather than reconstructed.

General arithmetic representations, optimized modular lifts, modular Jacobians, Cartan isogenies, integral winding comparison and modular abelian rank zero belong to the earlier suppliers in the exact contracts below. The special five-level winding nonvanishing, formal immersion and j-integrality arguments are targets of Layer 6. The classification of rational cyclic isogeny degrees is consumed from its named supplier, with separate prime-degree and composite-degree locators. The sharp square-root thresholds here are denoted F♯, G♯, H♯ (sharpF, sharpG, sharpH); they differ from the numerical majorants without square roots.

The pinned torsion action, representation scalar extension, coefficient fields, ramification groups and finite locally free commutative affine group schemes are used directly through the declarations below. No second carriers for these objects are constructed here.

## Conventions

Fix the algebraic closure ℚ̄ of ℚ. Elliptic curves are over ℚ unless another field is specified. All residual representations act on geometric torsion. Arithmetic Frobenius at q has characteristic polynomial T²−a_q T+q; thus det(1−Frob_q T)=1−a_q T+qT². For y²=x³−x over 𝔽₅ there are 8 points, so a₅=−2 and the latter polynomial is 1+2T+5T².

- M and Δ denote the arithmetic conductor and minimal discriminant of E. The integer ord_q(Δ) is the valuation exponent; q ∥ M means exponent one.
- For N>0, μ(N)=[SL₂(ℤ):Γ₀(N)] and `μ(N)=N∏_{q|N}(1+1/q)`. The number g⁺(N) is the complex dimension of the trivial-character weight-two newspace on Γ₀(N), the trivial-character part of the Γ₁(N) newspace.
- N(E[ℓ]) is the Artin conductor away from ℓ, hence prime to ℓ. Serre weight is the weight of the optimized residual modular lift. The deletion level M₀ is M divided by the product of all q ∥ M with ℓ dividing ord_q(Δ), possibly including q=ℓ. It can differ from N(E[ℓ]); Layer 4 states the comparison hypotheses.
- A rational cyclic n-isogeny has Galois-stable geometric cyclic kernel of order n; no rational generator is required. Full rational two-torsion means all four geometric two-torsion points are rational. Non-CM means every geometric endomorphism is an integer scalar.
- A nonsplit Cartan is the multiplication group of the quadratic finite-field extension, in an arbitrary base-field basis; its normalizer contains it with index two. Containment is taken up to conjugacy.
- Mixed modular curves are smooth projective normalizations of the indicated fibre products. For r>0, p prime and gcd(r,p)=1, write `X₀⁺(rp²)=X₀(rp²)/w_{p²}`. Here p² is an exact divisor, and the involution retains the r-level.
- F♯, G♯, H♯ are real-valued at positive levels; division by 6 is real, square roots precede powers and comparisons with ℓ are strict. G♯ uses lcm(N,4).
- The modular differential is ω_f=2πi f(z)dz, and the winding path runs from 0 to i∞. If W(f)=i∫₀∞f(it)dt, its normalized period is 2πi W(f). This convention is used for every winding quotient and cotangent comparison below.

## Exact supplier contracts

### From Mathlib

Consume `Algebra.norm_eq_prod_embeddings` and `AlgHom.card` (RingTheory/Norm/Transitivity and FieldTheory/PrimitiveElement), with finite separable field-extension hypotheses; `RingOfIntegers` and ideal contraction express the prime-above-ℓ condition. Consume `Representation.IsIrreducible` (RepresentationTheory/Irreducible), which includes nontriviality as well as absence of proper invariant subspaces. `AddMonoidHom.toZModLinearMap` (Algebra/Module/ZMod) reads an additive map of ZMod modules as a linear map. `AddSubgroup.torsionBy` and its ZMod module (Algebra/Module/Torsion/Basic) are the torsion carriers, and `CongruenceSubgroup.Gamma0` supplies the index. The norm statement uses number fields, never arbitrary inseparable extensions.

### From Tau Ceti

Consume `WeierstrassCurve.torsionGaloisAction` and `WeierstrassCurve.torsionGaloisAction_apply_coe` (AlgebraicGeometry/EllipticCurve/Affine/Point/Galois): the action takes values in additive automorphisms and applies Galois to coordinates. Consume `Representation.baseChange` (RepresentationTheory/BaseChange) for absolute irreducibility. Consume `TauCeti.Isogeny`, its degree, kernel and base change, and `TauCeti.Isogeny.Hom` with its additive group and identity (AlgebraicGeometry/EllipticCurve/Isogeny/Basic, Degree, Kernel, BaseChange/Basic and Hom/Add).

Consume `TauCeti.cuspFormsNew` and `cuspFormCharSpace` (NumberTheory/ModularForms/Newforms/Basic and TrivialNebentypus) for `newDimension`. The coefficient-field construction and number-field theorem are `TauCeti.CoefficientField` (Newforms/Fields) and `TauCeti.numberField_CoefficientField` (Newforms/NumberField), for weight at least two. Local conductors use `Ideal.ramificationGroup` (RingTheory/Ideal/RamificationGroup), and finite-flat weight comparisons use `TauCeti.FiniteLocallyFreeCommAffineGroupSchemeCat` (AlgebraicGeometry/AffineGroupScheme/CartierDuality/FiniteLocallyFree); neither supplies an elliptic conductor or Serre-weight theorem by itself.

### From TauCetiRoadmap.EllipticCurves

Consume Layers 1–2's isogenies, quotient kernels, prime-to-degree torsion equivalence, two-dimensional geometric prime torsion and Weil pairing; Layer 4's reduction and Tate-curve descriptions; Layer 4.5b's global minimal equation over ℚ; Layer 5's quadratic twist action. Rational isogenies preserve the arithmetic conductor via the rational Tate-module comparison and the conductor contract.

### From TauCetiRoadmap.ModularForms

Consume Layer 3's old/new decomposition, Layer 8's integral Hecke algebra and coefficients with their coefficient-field conjugates, and Layer 10's congruence index, dimension and characteristic-zero Sturm comparison. The integral prime-power-ideal Sturm theorem needed in Layer 4 remains a target here; equality of complex forms alone is insufficient.

### From TauCetiRoadmap.ModularCurves, TauCetiRoadmap.StableReduction and TauCetiRoadmap.JacobianChallenge

Consume ModularCurves Layers 1A and 1D's projective elliptic scheme and group law, StableReduction Layer 5's minimal regular proper models, and JacobianChallenge Layers D–F's general Jacobian and Abel–Jacobi universal property. The modular Hecke and integral-model specializations are required by the contracts below.

### Required extensions of earlier suppliers

Each gap names the required mathematical input and the owning supplier; it asserts no unverified section identifier.

What EllipticCurveModularity must provide (gap:elliptic-modularity): Every elliptic curve E/ℚ is attached to a normalized weight-two trivial-character newform of exact arithmetic conductor, with equal traces at all good primes. Section: rational elliptic modularity (locator unavailable).

What SerreWeightAndLevelOptimisation must provide (gap:optimized-weight-two-lift): For prime ℓ≥5 and irreducible E[ℓ] of Serre weight 2 and prime-to-ℓ Artin conductor N, supply a primitive weight-two trivial-character newform of exact level N and a prime λ above ℓ whose residual representation is E[ℓ]. Section: exact level and weight optimization (locator unavailable).

What SerreWeightAndLevelOptimisation must provide (gap:deletion-level-lowering): For prime ℓ≥3 and irreducible E[ℓ], supply the weight-two trivial-character lift at the deletion level M₀ of Bennett–Siksek §2, equation (3), with good-prime and removed-multiplicative-prime trace congruences of Lemma 2.1. Section: elliptic deletion level (locator unavailable).

What ArithmeticGaloisRepresentations must provide (gap:conductor-and-weight): Supply arithmetic and residual Artin conductors and Serre weight for E/ℚ, the away-from-ℓ deletion formula for ℓ≥5, and the coefficient-prime weight-two reduction alternative for irreducible E[ℓ] when ℓ≥11. Section: elliptic local conductors and Serre weights (locator unavailable).

What ArithmeticGaloisRepresentations must provide (gap:oddness-and-finite-images): For odd prime ℓ, supply the determinant −1 and eigenvalues 1,−1 of complex conjugation on E[ℓ], the absolute-irreducibility consequence of irreducibility, and the subgroup classification and inertia-order bounds used in Lemos Theorem 2.3. Section: odd two-dimensional residual images (locator unavailable).

What AutomorphicGaloisRepresentations must provide (gap:newform-residual-and-conductor): For primitive weight-two trivial-character newforms supply coefficient-prime residual representations and arithmetic-Frobenius polynomial T²−c_q T+q at q∤Nℓ, together with arithmetic conductor Nᵈ for its associated modular abelian variety, where d is the coefficient-field degree (in particular conductor N when d=1). Section: classical newform representations (locator unavailable).

What DeligneWeightsAndPurity must provide (gap:coefficient-bound): For a normalized weight-two newform of level N and prime q∤N, every complex embedding of c_q has absolute value at most 2√q. Section: weight-two Hecke eigenvalue bounds (locator unavailable).

What ModularCurvesPartII must provide (gap:modular-curves-and-jacobians): Supply smooth projective normalizations of modular fibre products and their j maps and Jacobians, with pull-push Hecke correspondences and the quotient attached to a primitive rational weight-two newform. Section: arithmetic modular curves and modular Jacobians (locator unavailable).

What ModularCurvesPartII must provide (gap:chen-isogeny): For r>0, p prime and gcd(r,p)=1, supply the prime-to-p Hecke-equivariant correspondence between the split and nonsplit mixed Jacobians, its induced isogeny between p-new quotients, and the identification of the split curve with X₀(rp²)/w at the exact divisor p². Section: split and nonsplit Cartan correspondences (locator unavailable).

What ModularSymbolsPadicLFunctions must provide (gap:integral-winding-comparison): Supply the integral Hecke-annihilator quotient of a full-new modular Jacobian, its optimal quotient and cotangent lattice comparison on semistable integral models, with period pairing integrating ω_f=2πi f(z)dz along the oriented path 0 to i∞. Section: integral winding quotients and cotangents (locator unavailable).

What EulerSystemsAndKolyvaginSystems must provide (gap:modular-rank-zero): For a primitive weight-two newform f with L(f,1)≠0, the associated modular abelian variety A_f over ℚ has A_f(ℚ) finite, in every coefficient-field degree. Section: modular abelian rank zero (locator unavailable).

What EisensteinIdealAndRationalTorsion must provide (gap:cyclic-isogeny-degrees): A rational cyclic isogeny on E/ℚ has degree in {1,…,19,21,25,27,37,43,67,163}; the prime-degree non-CM possibilities are {2,3,5,7,11,13,17,37}. Section: rational cyclic isogeny classification (locator unavailable).

What NeronModelsAndSemistableAbelianVarieties must provide (gap:neron-torsion-specialization): For the Néron model of an abelian variety over a complete mixed-characteristic DVR of residue characteristic q and absolute ramification index e<q−1, reduction is injective on the full torsion subgroup of rational points. Section: torsion specialization (locator unavailable).

The conductor and optimized-lift contracts use Kraus §3.1, Theorems 3–4, pp. 1144–1146 and BS §2, Theorem 3 and Lemma 2.1, p. 359. The modular-Jacobian and Chen contracts use Lemos §3, Lemma 3.2 and Theorem 3.3, p. 9. The integral winding and arbitrary-dimensional rank-zero contracts use DarmonMerel Proposition 7.1, pp. 18–20, including its normalized differential on p. 19. The cyclic-degree contract uses Mazur Theorem 1, pp. 129–130 for prime degrees and Kenku pp. 199–201 for composite degrees. The Néron specialization contract is the torsion-injection input of [DarmonMerel](#references), §8, pp. 22–23. These are requirements of the owners, not locally assumed theorem declarations.

## How to read the build

Layer 1 fixes dimensions and thresholds. Layer 2 bounds a residual characteristic at a deleted prime. Layer 3 forces rational coefficients and realizes them at the exact conductor. Layer 4 adds full rational two-torsion, with separate local level/weight comparisons. Layer 5 derives uniform irreducibility from rational cyclic-degree exclusions. Layer 6 proves rational-isogeny surjectivity using Cartan geometry and finite j-value image bounds. All target dependencies are stated within these layers or in the exact supplier contracts.

## Layer 1: Thresholds and sharp newspace dimensions

Kraus's comparison theorems are effective because their thresholds are explicit functions of a level. Two numbers attached to a positive integer N enter: the index μ(N) of Γ₀(N) in SL₂(ℤ), which is N times the product of 1 + 1/q over the primes q dividing N, and the dimension g⁺(N) of the space of weight-two newforms on Γ₀(N) with trivial character. The threshold F controls rationality of a newform, G controls a congruence modulo 4, and H is their maximum. All three are real numbers and are used in strict inequalities ℓ > F♯(N), ℓ > G♯(N), ℓ > H♯(N). The division by 6 is a real division and the square root is taken before the power; the level in G is lcm(N, 4).

Martin's theorem bounds g⁺(N) by (N + 1)/12 and says exactly when equality holds. It is what turns a bound in terms of the degree of a coefficient field into a bound in terms of the level alone.


### 1.1 Kraus's rationality threshold F♯

For N ≥ 1, with μ(N) = [SL₂(ℤ) : Γ₀(N)] and g⁺(N) the complex dimension of the weight-two newspace of Γ₀(N) with trivial character, F♯(N) = (√(μ(N)/6) + 1)^(2g⁺(N)), a real number. ([Kraus](#references), §3.1, equation (7), p. 1143).

*Needs:* the native Γ₀ index and newspace; the dimension comparison below.

A proof route uses the native congruence index and the trivial-character newspace dimension. The formula is evaluated after embedding these nonnegative numbers into ℝ. The exponent is twice the actual dimension, including the dimension-zero case.

### 1.2 Kraus's two-torsion threshold G♯

For N ≥ 1, G♯(N) = (√(μ(lcm(N, 4))/6) + 1)², a real number; the level is lcm(N, 4), not 4N and not the radical of N. ([Kraus](#references), §3.1, equation (8), p. 1144).

*Needs:* the native Γ₀ index and least common multiples.

First form L=lcm(N,4), then evaluate its congruence index. This distinguishes the threshold from a formula using 4N: N=4 must give L=4. Levels 1 and 2 also have L=4.

### 1.3 Kraus's comparison threshold H♯

For N ≥ 1, H♯(N) = max(F♯(N), G♯(N)). ([Kraus](#references), §3.1, equation (9), p. 1144).

*Needs:* the preceding two thresholds.

The maximum combines two independent requirements. Its order API must identify ℓ>H♯(N) with the conjunction ℓ>F♯(N) and ℓ>G♯(N). At N=11 the second threshold is larger, so retaining only F loses the two-torsion conclusion.

### 1.4 Martin's sharp weight-two newspace bound

For every N ≥ 1, 12·g⁺(N) ≤ N + 1, with equality exactly when N = 35 or N is a prime congruent to 11 modulo 12. ([Martin](#references), Theorem 2, p. 3; §4, Lemmas 16–22 and its proof, pp. 14–16 (v1)).

*Needs:* the arithmetic local factors below; ModularForms Layers 3 and 10.

Identify the arithmetic dimension expression with the native trivial-character newspace before applying its bound. The proof uses the prime-power local factors, the old/new decomposition and convolution inversion, then Martin’s separate estimates and finite exceptional checks. Numerical verification of the formula alone does not identify the modular space.


### 1.5 Martin’s prime-power correction table

Define localTerms(p,e) in Q^5, ordered (s,v∞,v2,v3,m), with e=0 giving (1,1,1,1,1). For a prime p and e≥1: s is 1−1/p for e=1, 1−1/p−1/p² for e=2, and (1−1/p)(1−1/p²) for e≥3. v∞ is 0 for odd e, p−2 for e=2, and p^(e/2−2)(p−1)² for even e≥4. For v2, at p=2 the values for e=1,2,3 are −1,−1,1 and thereafter 0; at odd p≡1 mod4 they are 0,−1 and thereafter 0; at odd p≡3 mod4 they are −2,1 and thereafter 0. For v3, at p=3 the values for e=1,2,3 are −1,−1,1 and thereafter 0; at p≡1 mod3 they are 0,−1 and thereafter 0; at p≡2 mod3 they are −2,1 and thereafter 0. m=−1 for e=1 and 0 for e≥2. For nonprime p and e>0 set the whole vector to zero. These are one finite table, not new factorization or modular-form carriers. ([Martin](#references), Definitions 1A–1D and the Möbius term of Theorem 1, p.2).

The API supplies the following facts.

- For every p, localTerms(p,0)=(1,1,1,1,1).
- For p not prime and e>0, localTerms(p,e) is the zero vector.
- For p prime and e>0 every coordinate is the corresponding entry of the displayed prime-power table.

**Checks.**

- localTerms(0,0)=(1,1,1,1,1).
- localTerms(2,2)=(1/4,0,−1,1,0).
- localTerms(3,2)=(5/9,1,1,−1,0).
- localTerms(2,3)=(3/8,0,1,0,0).


### 1.6 The weight-two arithmetic dimension expression

For N>0 let (S,I,A,B,M) be the coordinatewise product of localTerms(p,N.factorization(p)) over p in N.primeFactors. Define martinValue(N)=N S/12−I/2−A/4−B/3+M in Q. Set martinValue(0)=0 only as a total-function convention. The equality with an actual modular-form dimension is a separate comparison theorem. In particular this definition does not use a freely supplied dimension or an assumed newspace. ([Martin](#references), Theorem 1 at k=2 and Definitions 1A–1F, p.2).

The API supplies the following facts.

- martinValue(0)=0, a junk-level convention only.
- martinValue(1)=0.
- For N>0, martinValue is the displayed five-product expression with the native factorization of N.

**Checks.**

- martinValue(1)=0.
- martinValue(11)=1.
- martinValue(35)=3.
- martinValue(30)=1.


### 1.7 Kraus’s coefficient-rationality threshold

For N>0 put I(N)=[SL2(Z):Gamma0(N)] using the native subgroup index, and g(N)=finrank_C(cuspFormsNew(N,2)∩cuspFormCharSpace(2,1)). Define sharpF(N)=(sqrt(I(N)/6)+1)^(2g(N)). ([Kraus](#references), §3.1, equation (7), p.1143).

The API supplies the following facts.

- sharpF is the displayed expression in the native index and newspace dimension.
- For positive N, 1≤sharpF(N).
- If the actual g(N)=0 then sharpF(N)=1.

**Checks.**

- sharpF(1)=1.
- sharpF(11)=3+2 sqrt(2).
- sharpF(35)=(1+sqrt(8))^6.


### 1.8 Kraus’s two-torsion threshold

For N>0 define sharpG(N)=(sqrt(I(lcm(N,4))/6)+1)^2, where I is the native Gamma0 index. The lcm is essential and is not replaced by 4N. ([Kraus](#references), §3.1, equation (8), p.1144).

The API supplies the following facts.

- sharpG is the displayed least-common-multiple expression.
- For positive N, 1≤sharpG(N).
- If 4 divides N, sharpG(N)=(sqrt(I(N)/6)+1)^2.

**Checks.**

- sharpG(1)=4.
- sharpG(4)=4, whereas replacing lcm(4,4) by 16 would give 9.
- sharpG(11)=13+4 sqrt(3).


### 1.9 Kraus’s full-two-torsion comparison threshold

For N>0 define sharpH(N)=max(sharpF(N),sharpG(N)). ([Kraus](#references), §3.1, equation (9), p.1144).

The API supplies the following facts.

- For N>0, sharpH(N)=max(sharpF(N),sharpG(N)).
- sharpF(N)≤sharpH(N).
- sharpG(N)≤sharpH(N).
- For real ell, sharpH(N)<ell iff sharpF(N)<ell and sharpG(N)<ell.

**Checks.**

- sharpH(1)=4.
- sharpH(4)=4.
- sharpH(11)=13+4 sqrt(3).


### 1.10 Native dimension comparison and threshold comparison

The definitions `localTerms`, `martinValue` and `newDimension` give the arithmetic table, its five-product expression and the actual trivial-character newspace. Prove `dimension_comparison` identifying the latter two (Martin, Theorem 1, p. 2), then `martin_bound` including the equality characterization (Theorem 2, p. 3). The prime factors in martinValue are actual primes; at N=1 all products are empty products equal to one, so the value is 0.

Prove F♯(N)≤F_K(N), G♯(N)≤G_K(N), hence H♯(N)≤H_K(N), for N>0, where F_K=(μ(N)/6+1)^(2g⁺(N)), G_K=(μ(lcm(N,4))/6+1)² and H_K=max(F_K,G_K). For μ(N)≥6 this follows from √x≤x at x≥1. The remaining levels N=1,2,3 have g⁺=0; also μ(lcm(N,4))≥6 for every positive N. The sharp realization targets remain stronger than realization under the majorants (Kraus, equations (7)–(9), pp. 1143–1144).

**Checks.**

- At N=11, μ=12, g⁺=1, F♯=3+2√2, G♯=H♯=13+4√3, whereas F_K=9 and G_K=H_K=169; thus H♯<169.
- At N=1, μ/6=1/6<1 but g⁺=0, so both F values are 1; blindly applying √x≤x would reverse the comparison.
- At N=4, μ(lcm(4,4))=6 and G♯=4; replacing the lcm by 4N gives μ(16)=24 and the wrong value 9.

### Examples

At N=11 and 35, 12g⁺ is respectively 12 and 36, equal to N+1. At N=30, 12g⁺=12<31. At N=1 the dimension is zero and equality fails. These distinguish the sharp equality criterion from the upper bound alone.

### Dependencies

Mathlib congruence index; Tau Ceti newspaces and trivial character; ModularForms Layers 3, 8 and 10. No realized elliptic comparison is used to define a threshold.

## Layer 2: Removed-prime exponent bounds

Let E[ℓ] be irreducible. When ℓ divides the exponent of a prime p ∥ M, p ≠ ℓ, in the minimal discriminant, p leaves the level: the residual representation E[ℓ] comes from a newform f of level M₀ prime to p, and the Frobenius comparison at p reads p + 1 ≡ ±c_p modulo a prime λ above ℓ. The algebraic integer p + 1 ∓ c_p is nonzero, because every conjugate of c_p has absolute value at most 2√p < p + 1, and it lies in λ, so ℓ divides its norm. The norm is at most (√p + 1)^(2d) with d the degree of the coefficient field of f, and d ≤ g⁺(M₀) ≤ (M₀ + 1)/12. This gives the bound of the layer. The level M₀ is the deletion level: M divided by the primes q ∥ M with ℓ | ord_q(Δ), where ord_q is the exponent of q. A factor ℓ can remain in M₀: it does when E has additive reduction at ℓ, and when ℓ ∥ M with ℓ ∤ ord_ℓ(Δ). So M₀ is in general not the prime-to-ℓ conductor of E[ℓ].


### 2.1 The norm bound behind a congruence

Let K be a number field of degree d, λ a prime of its ring of integers above the rational prime ℓ, and x a nonzero element of λ whose image under every embedding K → ℂ has absolute value at most B. Then ℓ ≤ |Norm(K/ℚ)(x)| ≤ B^d. ([BS](#references), §2, proof of Lemma 2.2, p. 359; general consequence of the cited Mathlib product formula).

*Needs:* Mathlib norm product and embedding count; ring-of-integers ideal norm divisibility.

Read x as an algebraic integer in the prime λ of O_K. Divisibility of its nonzero integral norm gives the lower bound. For the upper bound, multiply the absolute-value estimates over all d embeddings into ℂ. `Algebra.norm_eq_prod_embeddings` provides the product, and `AlgHom.card` provides exactly d factors for a finite separable extension. Since x≠0, its image under every embedding is nonzero; thus B>0 suffices, with no B≥1 assumption.

### 2.2 The removed-prime exponent bound

Let E/ℚ have conductor M and minimal discriminant Δ, let ℓ ≥ 3 be a prime with E[ℓ] irreducible, and let M₀ be M divided by the primes q with q ∥ M and ℓ | ord_q(Δ). If p ≠ ℓ is a prime with p ∥ M and ℓ | ord_p(Δ), then ℓ ≤ (√p + 1)^((M₀+1)/6). ([BS](#references), §2, Lemmas 2.1–2.2 and proof, p. 359).

*Needs:* Layer 1; the norm target; deletion-level-lowering and coefficient-bound contracts.

Level lowering at p yields p+1≡±c_p modulo λ. All conjugates satisfy |c_p|≤2√p, so p+1∓c_p is nonzero and its norm has absolute value at most (√p+1)^(2d). Bound d by g⁺(M₀), apply Layer 1, and compare positive real powers. The deleted-prime condition and p≠ℓ are needed before the unramified Frobenius comparison.


The native headline is `norm_bound`. Its prime ideal I is nonzero and prime, contracts to (ℓ) in ℤ, and contains a nonzero algebraic integer x. The bound quantifies over every complex embedding of its number field, with no B≥1 requirement beyond what these hypotheses force.

**Checks.**

- For K=ℚ, ℓ=5, I=(5), x=5 and B=5, both inequalities read 5≤5≤5.
- At a removed prime p=2, the positive gap is 3−2√2; it is about 0.1716, so the norm element cannot vanish even at the smallest prime.
- For x=0 the lower bound would say ℓ≤0; for the unit ideal the prime-above-ℓ condition fails. Both exclusions matter.

### Examples

At deletion level 11, the exponent is (11+1)/6=2. For p=2 the bound is ℓ≤3+2√2≈5.828, excluding primes ℓ≥7 under its hypotheses. A coefficient-prime factor can remain in M₀ at additive reduction, whereas N(E[ℓ]) is always prime to ℓ.

### Dependencies

Layer 1; norm divisibility and the all-embedding eigenvalue bound; the deletion-level-lowering contract. The removed-prime Frobenius comparison always assumes p≠ℓ.

## Layer 3: Rationality and exact-conductor realization

Kraus's first theorem starts from E[ℓ], irreducible, of Serre weight 2 and of prime-to-ℓ Artin conductor N, with ℓ ≥ 5. Modularity, with the optimisation of level and weight, gives a newform f of weight two and level exactly N with trivial character whose residual representation at a prime λ above ℓ is E[ℓ]. If some coefficient c_q with q ≤ μ(N)/6 and q ∤ N were not an integer, then c_q minus the integer it is congruent to modulo λ (the trace of Frobenius of E at q, or ±(q + 1) if E has multiplicative reduction at q) would be a nonzero element of λ of norm at most (√q + 1)^(2d) ≤ F♯(N), against ℓ > F♯(N). So the coefficients at the primes up to μ(N)/6 are integers; the recurrences for the coefficients and the Sturm bound in characteristic zero then make f equal to all its conjugates, and f is rational. A rational newform of level N gives an elliptic curve of conductor exactly N with the same residual representation.


### 3.1 Rationality from finitely many prime coefficients

If a normalized newform f of weight two, level N and trivial character has c_q ∈ ℤ for every prime q ≤ μ(N)/6, then every Fourier coefficient of f is in ℤ. ([Kraus](#references), §3.2, Lemma 1 and proof, pp. 1144–1145).

*Needs:* ModularForms Layers 3, 8 and 10.

A proof route applies Galois conjugation at the same primitive level and trivial character. The Hecke recurrences extend equality at the tested primes to equality of the coefficients through the Sturm bound. The characteristic-zero Sturm theorem then identifies f with every conjugate. All coefficients are algebraic integers, so rationality makes them integers.

### 3.2 Integrality of the small prime coefficients above F♯(N)

Let ℓ ≥ 5 be prime, E/ℚ with E[ℓ] irreducible of Serre weight 2 and prime-to-ℓ conductor N, and f a normalized newform of weight two, level N and trivial character whose residual representation at a prime above ℓ is E[ℓ]. If ℓ > F♯(N), then c_q ∈ ℤ for every prime q ≤ μ(N)/6. ([Kraus](#references), §3.2, proof of Theorem 3, p. 1145).

*Needs:* Layer 1; Layer 2 norm target; optimized-weight-two-lift and coefficient-bound contracts.

Choose a nonintegral prime coefficient below the bound if f is not rational. At a good prime its congruent integer is the trace of E; at a removed multiplicative prime it is ±(q+1). The coefficient difference is a nonzero element of λ. Its conjugate norm is bounded by F♯(N), contradicting ℓ>F♯(N). Keep the coefficient prime, exact primitive level and weight-two lift in this argument; abstract residual modularity does not specify them.

### 3.3 Kraus's rational comparison theorem

For E/ℚ and a prime ℓ ≥ 5 with E[ℓ] irreducible of Serre weight 2 and prime-to-ℓ conductor N, if ℓ > F♯(N) there is an elliptic curve F/ℚ of conductor exactly N with F[ℓ] ≅ E[ℓ]. ([Kraus](#references), §3.1, Theorem 3, p. 1144).

*Needs:* the preceding rationality targets; modular-curves-and-jacobians and newform-residual-and-conductor contracts; elliptic-modularity contract.

Combine the optimized weight-two lift, the preceding rationality argument and the elliptic realization of a rational newform. Modularity of E is the parent input. The conclusion is an isomorphism of residual representations, rather than just a congruence at a chosen finite list of primes.


**Checks.**

- At N=1 there are no weight-two cusp forms; the lift hypotheses are inconsistent, so realization makes no assertion about a nonexistent form.
- For level 11 the rational normalized newform has first coefficients 1,−2,−1,2; integral prime coefficients and the recurrences agree, whereas rationality alone without algebraic integrality would not imply integrality.
- At a good prime q, use the integer a_q(E); at a removed multiplicative prime use ±(q+1). The latter need not lie in the Hasse interval for a good-reduction trace.

### Examples

For level 11 the rationality threshold is 3+2√2≈5.828. The conclusion applies at a prime ℓ≥7 satisfying irreducibility, weight two and exact residual conductor 11; it does not require ℓ to exceed the larger majorant 9.

### Dependencies

Layers 1–2; modularity and optimized weight-two lifts; ModularForms conjugation and Sturm comparison; modular-Jacobian realization and exact arithmetic conductor. None of these inputs is inferred from the realization conclusion.

## Layer 4: Full rational two-torsion realization

If E has full rational two-torsion, the comparison curve C of the preceding layer need not have it, but its point counts show a trace of it. For ℓ > G♯(N) and a prime q ∤ 2N with q ≤ μ(lcm(N, 4))/6, the traces of E and of C at q are congruent modulo ℓ and differ by less than ℓ, so they are equal, and #C(𝔽_q) = #E(𝔽_q) is divisible by 4 (bad reduction of E at such a prime is excluded by the same inequality). A congruence criterion of Sturm type modulo 4, at level lcm(N, 4), extends the divisibility from these finitely many primes to every prime q ∤ 2N. By Chebotarev's theorem the condition constrains the action of Galois on C[4], and it follows that C, or the quotient of C by its rational point of order two, has full rational two-torsion. The isogeny has degree 1 or 2, so it changes neither the conductor nor the representation on ℓ-torsion.

The theorems of this layer and the preceding one are stated at the residual conductor N(E[ℓ]). The removed-prime bound is stated at the deletion level M₀. The two levels agree under a condition on the reduction of E at ℓ, and an application that uses both must check it.


### 4.1 Finite recognition of point counts modulo four

For a (modular) elliptic curve C/ℚ of conductor N, 4 divides #C(𝔽_q) for every prime q ∤ 2N as soon as it does so for every such prime q ≤ μ(lcm(N, 4))/6. ([Kraus](#references), Appendix II (§8), Proposition 2 and Corollary, pp. 1158–1159).

*Needs:* the integral prime-power-ideal Sturm target and local filters below; ModularForms Layer 8.

The equivalent contrapositive gives a witness below μ(lcm(N,4))/6 whenever divisibility fails. Apply the integral prime-power-ideal Sturm theorem to filtered coefficients of the newform and the odd Eisenstein series. A Sturm equality theorem over ℂ is insufficient for this congruence modulo four.

### 4.2 Transfer of the point counts to the comparison curve

Let ℓ ≥ 5 be prime, E/ℚ with full rational 2-torsion and E[ℓ] irreducible of Serre weight 2 and prime-to-ℓ conductor N, and C/ℚ of conductor exactly N with C[ℓ] ≅ E[ℓ]. If ℓ > G♯(N), then 4 divides #C(𝔽_q) for the primes q ∤ 2N. ([Kraus](#references), §3.3, equations (10)–(11) and trace comparison, p. 1146).

*Needs:* Layer 3 rational comparison; the preceding finite-recognition target; Layer 1 G♯.

Argue from a small witness supplied by the preceding criterion. If E has bad reduction there, the removed-prime congruence and the Hasse estimate contradict ℓ>G♯(N). Otherwise both curves have good reduction: their congruent integer traces differ by less than ℓ and hence are equal. Full two-torsion then forces the point count to be divisible by four. This argument proves the all-primes divisibility conclusion; good reduction and trace equality are intermediate facts at the tested primes.

### 4.3 Repair of rational two-torsion by a two-isogeny

If C/ℚ has 4 | #C(𝔽_q) at every odd prime of good reduction, there is an isogeny C → F over ℚ of degree 1 or 2 onto a curve with full rational 2-torsion; it preserves the conductor and, for odd ℓ, the representation on ℓ-torsion. ([Kraus](#references), §3.3, final two-isogeny paragraph, p. 1146).

*Needs:* Chebotarev on C[4]; the rational-two-point and matrix/quotient selection below; EllipticCurves Layers 1–2; conductor-and-weight contract.

A proof route uses Chebotarev on C[4]. It first supplies a rational point P of order two. If C already has full two-torsion, use the identity. Otherwise the quotient C/⟨P⟩ has full rational two-torsion. The degree is two, so prime-to-degree torsion equivalence transports every odd-ℓ representation; rational isogenies preserve the conductor.

### 4.4 Kraus's full two-torsion realization

If E/ℚ has full rational 2-torsion, ℓ ≥ 5 is prime, E[ℓ] is irreducible of Serre weight 2 and prime-to-ℓ conductor N, and ℓ > H♯(N), then there is an elliptic curve F/ℚ of conductor exactly N with full rational 2-torsion and F[ℓ] ≅ E[ℓ]. ([Kraus](#references), §3.1, Theorem 4, p. 1144; §3.3, pp. 1145–1146).

*Needs:* Layer 3; trace transfer and two-isogeny repair; Layer 1 H♯.

First use ℓ>F♯(N) to obtain C of conductor N. Then use ℓ>G♯(N) to transfer the mod-four point-count condition and apply the isogeny repair. The maximum H supplies both strict inequalities. Full two-torsion is a condition on E as well as on the chosen F.

### 4.5 From the deletion level to the residual conductor

Kraus's theorems are stated at the prime-to-ℓ conductor N(E[ℓ]) and Serre weight 2; an application at the deletion level M₀ needs N(E[ℓ]) = M₀ and weight 2 as separate facts. ([BS](#references), §2, Theorems 3–4, pp. 359–360; application adapter with separate local-conductor and weight hypotheses).

*Needs:* conductor-and-weight and optimized-weight-two-lift contracts; EllipticCurves Layer 4.

A proof route uses the away-from-ℓ conductor formula first. For ℓ≥5, the adapter gives M₀=N(E[ℓ]) if E has good reduction at ℓ, or multiplicative reduction there with ℓ|ord_ℓ(Δ). For ℓ≥11 and the irreducible representation in Kraus's comparison, the specified local weight-two theorem supplies this reduction alternative. For ℓ=5 or 7, retain it as an explicit hypothesis. An additive prime ℓ can remain in M₀ even though N(E[ℓ]) is prime to ℓ.


### 4.6 Kraus’s local coefficient filters

For a commutative ring R, p,e∈N and a∈R, define the pair krausLocalFilters(p,e,a)=(V,V′) in R[X]². For p=2,e=0 use (1−aX+2X²,1); for p=2,e=1 use (1−aX,1); for p=2,e≥2 use (1,1). For p≠2,e=0 use (1,1); for p≠2,e=1 use (1,1−(p+1−a)X); for p≠2,e≥2 use (1,1−(p+1)X+pX²). At prime p with e=v_p(N), X acts as R_p:h(z)↦h(pz), so X² acts as R_(p²). ([Kraus](#references), Appendix II, §8.1, p.1160).

The API supplies the following facts.

- The three p=2 rows are the displayed e=0, e=1 and e≥2 pairs.
- For p≠2 the e=0, e=1 and e≥2 rows are the displayed pairs.
- Both filters have constant coefficient one.
- Mapping coefficients along a commutative-ring homomorphism sends the filters of a to the filters of its image.

**Checks.**

- Over Z, krausLocalFilters(2,0,3)=(1−3X+2X²,1).
- Over Z, krausLocalFilters(2,2,0)=(1,1).
- Over Z, krausLocalFilters(3,1,−1)=(1,1−5X).
- Over Z, krausLocalFilters(3,2,0)=(1,1−4X+3X²).


### 4.7 Integral congruence and two-isogeny inputs

Prove the integral prime-power-ideal Sturm theorem at weight two: for positive level L, a number field K, a nonzero prime ideal P of its integers and m≥1, two forms in the same integral q-expansion lattice whose coefficients agree modulo Pᵐ through μ(L)/6 agree modulo Pᵐ at every coefficient. The lattice and level of the filtered forms must be supplied before applying this theorem (Kraus, Appendix II, Proposition 1, pp. 1157–1158). For the point-count criterion use the filtered newform and odd Eisenstein series, retaining both bad-prime conditions in Kraus Proposition 2, pp. 1158–1159.

Prove the finite matrix selection used in the two-isogeny repair: for a subgroup of GL₂(ℤ/4), if every element has det(1−g)=0, fixes 2e₁, and some element has odd upper-right entry, all lower-left entries vanish. Chebotarev on C[4] first gives a rational point of order two; the matrix conclusion identifies the two-torsion of its quotient. The repair uses this selection, prime-to-degree torsion equivalence and conductor invariance. Its inputs do not include the full-two realization that it is used to prove (Kraus §3.3, p. 1146).

**Checks.**

- For an identity matrix mod 4, det(1−g)=0 and both off-diagonal entries are zero. The subgroup generated by [[1,1],[0,1]] has the same determinant condition and fixes 2e₁; the conclusion is lower-left zero, not upper-right zero.
- At N=11, G♯=13+4√3≈19.928. The largest eligible prime q∤22 at most μ(44)/6=12 is 7; the gap of two good-reduction traces is at most 4√7≈10.583, strictly below G♯.
- The identity isogeny has degree 1 and preserves all torsion; a degree-2 isogeny preserves ℓ-torsion for odd ℓ, with no claim of invariance at ℓ=2.
- At good reduction at ℓ the deletion level loses no coefficient-prime factor. At multiplicative reduction with ℓ dividing ord_ℓ(Δ), it loses its exponent-one factor. Additive reduction retains a positive exponent in M₀, so the prime-to-ℓ conductor cannot equal it.

### Examples

For a curve already having full rational two-torsion the repair selects the identity. Otherwise it selects the quotient by its rational two-point. Combining F♯ and G♯ uses their maximum, and at level 11 H♯ is G♯ rather than F♯.

### Dependencies

Layers 1–3; the integral congruence theorem, the six-branch local filters, Chebotarev on C[4], EllipticCurves Layers 1–2, and the conductor-and-weight contract. The full-two realization follows the repair in the supply direction.

## Layer 5: Uniform two-torsion irreducibility

A reducible E[ℓ] has an invariant line, which is a Galois-stable cyclic subgroup of order ℓ; its points need not be rational. With a rational point of order two, the sum of the two subgroups is a stable cyclic subgroup of order 2ℓ. With full rational two-torsion, a stable cyclic subgroup of order 4 exists on the quotient of E by one of the points of order two (the kernel of the composite E/T → E → E/T′ for two distinct rational subgroups T, T′ of order 2), and with the transported line it gives a cyclic subgroup of order 4ℓ. The degrees of rational cyclic isogenies of elliptic curves over ℚ are known: they are the integers from 1 to 19 and 21, 25, 27, 37, 43, 67, 163. No 2ℓ with ℓ ≥ 11 and no 4ℓ with ℓ ≥ 5 is among them, which gives the two irreducibility statements. They hold for every curve with the stated two-torsion, with or without complex multiplication. A curve with a cyclic 14-isogeny shows that ℓ ≥ 11 cannot be lowered to ℓ ≥ 7 in the statement with one point of order two.


### 5.1 No cyclic isogenies of degree 2ℓ or 4ℓ

No elliptic curve over ℚ has a rational cyclic isogeny of degree 2ℓ for a prime ℓ ≥ 11, or of degree 4ℓ for a prime ℓ ≥ 5. ([BS](#references), §3, irreducibility applications in Lemmas 3.3 and 3.5, pp. 361–363; the composite-degree exclusions are imported from the separate Mazur–Kenku node).

*Needs:* cyclic-isogeny-degrees contract.

A proof route uses the full Mazur–Kenku degree classification {1,…,19,21,25,27,37,43,67,163}. No degree 2ℓ for ℓ≥11 or 4ℓ for ℓ≥5 occurs. The prime-degree theorem by itself does not exclude these composite degrees; the composite-degree supplier contract is required.

### 5.2 From two-torsion and an invariant line to a cyclic isogeny

Let ℓ be an odd prime and E/ℚ have a Galois-stable subgroup of order ℓ. If E has a rational point of order 2, it has a rational cyclic isogeny of degree 2ℓ; if E has full rational 2-torsion, a curve isogenous to E over ℚ has a rational cyclic isogeny of degree 4ℓ. ([BS](#references), §3, Lemmas 3.3 and 3.5, pp. 361–363; derived coprime-kernel and dual-isogeny argument, not a separately stated source lemma).

*Needs:* EllipticCurves Layers 1–2; coprime cyclic kernels and dual isogenies.

For one rational two-torsion point, take the sum of its kernel and the odd-ℓ stable line: coprime cyclic kernels give a cyclic kernel of order 2ℓ. For full two-torsion, use distinct rational subgroups T,T′ of order two. The composite E/T→E→E/T′ has cyclic kernel of order four; transport the stable ℓ-line and combine the coprime kernels. This second curve is isogenous to E, rather than necessarily E itself.

### 5.3 Irreducibility with full rational two-torsion

If E/ℚ has full rational 2-torsion and ℓ ≥ 5 is prime, then E[ℓ] is irreducible, and absolutely irreducible. ([BS](#references), §3, Lemma 3.3 proof, p. 362; absolute irreducibility uses the separately imported oddness lemma).

*Needs:* the preceding two targets; oddness-and-finite-images contract.

A reducible E[ℓ] would give the stable line used in the preceding construction, hence a forbidden 4ℓ-isogeny on an isogenous curve. Irreducibility is uniform in E. For the absolute upgrade use oddness of the elliptic representation and the oddness contract below; irreducibility of an arbitrary finite-field representation would not suffice.

### 5.4 Irreducibility with a rational point of order two

If E/ℚ has a rational point of order 2 and ℓ ≥ 11 is prime, then E[ℓ] is irreducible, and absolutely irreducible. ([BS](#references), §3, Lemma 3.5 proof, p. 363; absolute irreducibility uses the separately imported oddness lemma).

*Needs:* the cyclic 2ℓ exclusion and kernel construction; oddness-and-finite-images contract.

A reducible E[ℓ] gives a forbidden 2ℓ-isogeny on E. Upgrade to absolute irreducibility by the same oddness lemma. The lower bound cannot be replaced by ℓ≥7: a rational cyclic 14-isogeny supplies a counterexample with a rational point of order two.


### 5.5 Native torsion and rationality predicates

Use `GeometricTorsion` for the subgroup killed by n on E(ℚ̄), with `torsionModule` its natural ZMod n module. The definition `torsionRepresentation` reads the pinned additive Galois action as a linear map via AddMonoidHom.toZModLinearMap; its value at σ and P is exactly the pinned action at σ and P. Its API preserves the identity and composition laws and the coordinate-action comparison, without choosing a basis. Scalar extension is Representation.baseChange, and irreducibility is Representation.IsIrreducible.

**Checks.**

- At n=1 the geometric torsion is the zero group; at n=2 in characteristic zero it has four elements, distinguishing it from the rational subgroup.
- At n=0 the killed-by-zero subgroup is all geometric points; no rank-two or finite-torsion theorem is asserted there.
- The identity Galois element fixes P, and στ acts as σ after τ on coordinates; for rational coordinates each action fixes P. This excludes an inverted composition convention.

Define `FullRationalTwo` by cardinality four of the rational killed-by-two subgroup, and `RationalTwo` by a nonzero rational point killed by two. Their API identifies the first with rationality of all geometric two-torsion, implies the second, and transports both under rational isomorphism (EllipticCurves Layer 2; BS Lemmas 3.3 and 3.5, pp. 361–363).

**Checks.**

- On y²=x³−x, the three rational nonzero two-points are (−1,0),(0,0),(1,0); the rational two-torsion cardinality is 4, so both predicates hold.
- On y²=x³−2x, only (0,0) is a nonzero rational two-point; the cardinality is 2, so RationalTwo holds and FullRationalTwo fails.
- On y²=x³+x+1 the cubic has no rational root (neither 1 nor −1 is a root); the cardinality is 1, so both predicates fail. Counting the identity as the required nonzero point would give a false positive.

Prove `full_two_irreducible` in the complete range ℓ≥5, and `rational_two_irreducible` for ℓ≥11, each including absolute irreducibility via scalar extension to the algebraic closure of 𝔽_ℓ. The ℓ=5 case of the former is the cyclic-degree-20 exclusion; absolute irreducibility uses oddness, with complex conjugation eigenvalues 1,−1 distinct for these primes (BS §3, Lemmas 3.3 and 3.5 for the original ranges; Kenku pp. 199–201 and the dual-kernel argument for the extension).

### Examples

For ℓ=5, 4ℓ=20 is excluded by the cyclic-degree list; for ℓ=7, 4ℓ=28 is also excluded. For ℓ=3, 4ℓ=12 is allowed, so the exclusion proof does not extend to all odd primes. For one rational two-point, 2·7=14 is allowed and gives the sharp negative control; 2·11=22 is excluded.

### Dependencies

EllipticCurves Layers 1–2; cyclic-isogeny-degrees and oddness-and-finite-images contracts. The line must be Galois-stable, not pointwise fixed, and the cyclic degree-4 construction lives on an isogenous curve.

## Layer 6: Rational-isogeny uniformity

Lemos's theorem is Serre's uniformity statement for the curves that have a rational cyclic isogeny. Let E have no complex multiplication and a rational cyclic isogeny of prime degree r, and let p > 37. If the representation on E[p] is not surjective, its image lies in the normalizer of a nonsplit Cartan subgroup: the Borel case is excluded by Mazur's theorem, the exceptional images by Serre's bound on inertia, and the split Cartan case by the theorem of Bilu, Parent and Rebolledo. For r in {11, 17, 37} the curve has one of six explicit j-invariants. For r in {2, 3, 5, 7, 13} the curve gives a rational point on the curve X₀(r) ×ₓ₍₁₎ Xₙₛ⁺(p); a quotient of its Jacobian with finitely many rational points and a formal immersion at the cusps show that j(E) has no prime other than p in its denominator, and the local behaviour at p of a nonsplit Cartan image shows that p is not in the denominator either. So j(E) is an integer, and on the genus-zero curve X₀(r) the integral values of j are finitely many, explicit numbers. Surjectivity for p > 37 at each of the finitely many j-invariants, which depends only on j because quadratic twisting preserves it, completes the proof.

The curve X₀⁺(rp²) of the argument is the quotient of X₀(rp²) by the Atkin–Lehner involution at the exact divisor p², which keeps the level structure at r; it is not the quotient by the full-level involution.


### 6.1 Potential good reduction under a nonsplit Cartan image

If p ≥ 5 is prime and the image of the Galois representation on E[p] lies in the normalizer of a nonsplit Cartan subgroup, then E has potentially good reduction at p and at every prime q ≢ ±1 mod p. ([Lemos](#references), §2, Proposition 2.2 and proof, pp. 4–5 (v2)).

*Needs:* EllipticCurves Layer 4 Tate-curve action; oddness-and-finite-images contract.

A proof route uses the quadratic-twist Tate description at a potentially multiplicative prime. Squaring elements of the normalizer places them in the nonsplit Cartan. Its eigenvalue structure forces the square of the local cyclotomic character to be trivial. At q=p this contradicts p≥5; at q≠p it forces q≡±1 modulo p. This uses local torsion at residue characteristic possibly different from p.

### 6.2 The Cartan correspondence and Chen's isogeny

For r ∈ {1, 2, 3, 5, 7, 13} and a prime p outside {2,3,5,7,13}, the correspondence through X₀(r) ×ₓ₍₁₎ X(p)/(Nsp ∩ Nns) maps the Jacobian of `X₀(rp²)/w_{p²}` to the Jacobian of X₀(r) ×ₓ₍₁₎ Xₙₛ⁺(p), commutes with the Hecke operators T_n for n prime to p, and vanishes on the p-old part. Chen's theorem that the induced map on the p-new quotient is an isogeny is a separate imported prerequisite. ([Lemos](#references), §3, correspondence and Lemma 3.2, p. 9; Theorem 3.3, p. 9 (v2), for the separate isogeny input).

*Needs:* modular-curves-and-jacobians and chen-isogeny contracts; the genus-zero computation for X₀(r).

Construct the pull-push map through the normalized correspondence and identify the split quotient with `X₀(rp²)/w_{p²}`. The equality Nns B⁺=Nns B⁻=GL₂(𝔽ₚ) sends old divisors to old divisors, and X₀(r) has genus zero. For the induced map on the p-new quotient to be an isogeny, import Chen’s separate theorem through the modular-curve continuation. The old-part calculation and prime-to-p Hecke commutation are necessary but do not prove it.

### 6.3 The winding quotient of rank zero

For r ∈ {2, 3, 5, 7, 13} and a prime p outside that set, the Jacobian of X₀(r) ×ₓ₍₁₎ Xₙₛ⁺(p) has a nonzero optimal quotient A over ℚ with A(ℚ) finite, whose kernel is stable under T_n for n prime to p. ([Lemos](#references), §3, Theorem 3.4 and proof sketch, p. 10 (v2)).

*Needs:* the preceding correspondence; integral-winding-comparison and modular-rank-zero contracts; five-level winding nonvanishing below.

A proof route uses Chen’s prime-to-p Hecke-equivariant isogeny to transfer the winding construction to the mixed Jacobian. Project the winding class to the full-new part, quotient by its integral Hecke annihilator, prove the quotient nonzero, and apply rank-zero results to every surviving modular abelian factor. The modular rank-zero contract applies in arbitrary dimension; an elliptic rank-zero theorem alone does not supply it. For r=5,7,13 require the winding boundary/nonvanishing argument in addition to the Darmon–Merel r=2,3 cases.

### 6.4 Formal immersion at a cusp, and the torsion image of a rational point

For r ∈ {2, 3, 5, 7, 13}, prime p outside {2, 3, 5, 7, 13} and prime q ≡ ±1 mod p, let A be the specified optimal winding quotient of the preceding target, K = ℚ(ζₚ)⁺, and ∞ a cusp defined over K. The Abel–Jacobi map P ↦ [(P) − (∞)], followed by projection to A, extends from the smooth locus of the canonical integral model of the normalized mixed curve X₀(r) ×ₓ₍₁₎ Xₙₛ⁺(p) over the localization of the integers of K at a prime above q to the Néron model of A, and is a formal immersion at ∞ in characteristic q. For the same r and A and any prime p outside {2, 3, 5, 7, 13}, the image in A(K) of each ℚ-rational point of the mixed curve is torsion. ([DarmonMerel](#references), §8, Lemmas 8.2–8.3, pp. 22–23 (author copy); Lemos §3 conclusion, p. 10 (v2), for the extended range).

*Needs:* the specified winding quotient; integral-winding-comparison and neron-torsion-specialization contracts; characteristic-q degeneracy below.

The quotient A is the winding quotient with its integral Hecke and cotangent properties, not an arbitrary rank-zero quotient. Work at a prime of the integers of K above q, on the smooth integral locus, and compare completed local rings at the cusp. The needed coefficient-support/degeneracy lemma is in characteristic q with q∤rp and q>3. For the point-torsion assertion, Manin–Drinfeld makes a multiple of the cusp difference descend to A(ℚ); finiteness of A(ℚ) then proves torsion in A(K). Both statements use p outside {2,3,5,7,13}; p≥11 and q≥2p−1>13 imply q∤rp and q>3.

### 6.5 Integrality of j away from p

For r ∈ {2, 3, 5, 7, 13}, a prime p outside {2,3,5,7,13}, and E/ℚ with a rational cyclic r-isogeny whose mod-p image lies in the normalizer of a nonsplit Cartan subgroup, j(E) ∈ ℤ[1/p]. ([Lemos](#references), Theorem 1.4, p. 3; §3 conclusion, p. 10 (v2)).

*Needs:* the preceding formal immersion and torsion targets; neron-torsion-specialization contract.

A denominator prime q≠p makes the noncuspidal point meet a cusp. Its residue field forces q≡±1 modulo p. The point image is torsion and specializes to zero; full torsion injection over the unramified local field, with e=1<q−1, kills it. Formal immersion then identifies the point section with the cusp section, a contradiction. Use the smooth integral model, the specified winding quotient and the Néron specialization contract below.

### 6.6 Integrality of j

For r ∈ {2, 3, 5, 7, 13}, a prime p outside that set, and E/ℚ with a rational cyclic r-isogeny and mod-p image contained in a nonsplit Cartan normalizer, j(E) is an integer. For a non-CM E and p>37, a proper image supplies the containment by the subgroup-classification target below. ([Lemos](#references), §2, Proposition 2.1, p. 4; Theorem 2.3, p. 6 (v2)).

*Needs:* denominator exclusion and potential good reduction; subgroup classification only for the proper-image corollary.

The denominator target removes every prime except p; potential good reduction at p removes the last one. Containment suffices without a non-CM hypothesis. The non-CM proper-image corollary additionally uses p>37 and the subgroup-classification target.

### 6.7 Integral j-values at the five genus-zero levels

For r ∈ {2, 3, 5, 7, 13} there is a coordinate t on X₀(r) with j = f_r(t)/t, where f₂ = (t+16)³, f₃ = (t+27)(t+3)³, f₅ = (t²+10t+5)³, f₇ = (t²+5t+1)³(t²+13t+49), f₁₃ = (t⁴+7t³+20t²+19t+1)³(t²+5t+13); a noncuspidal rational point with j ∈ ℤ has t a nonzero integer dividing f_r(0). ([Lemos](#references), §2, numerator table and integral-parameter proof, pp. 6–7 (v2)).

*Needs:* the modular-curve contract; the numerator and finite-set definitions below; the integral-parameter theorem below.

A proof route uses the modular j-map in the specified coordinate; a generic genus-zero parametrization does not determine these polynomials. If t=a/b in lowest terms and f_r(t)/t is integral, monicity forces b=1, and then t divides f_r(0). Evaluate both positive and negative divisors and identify equal j-values. The coordinate/j-map theorem and the rational-point models belong to the modular-curve contract below; arithmetic evaluation alone does not prove that every value is modular.

### 6.8 A proper image for p > 37 is of nonsplit Cartan type

For E/ℚ without complex multiplication and a prime p > 37, if the representation on E[p] is not surjective onto GL₂(𝔽ₚ), its image lies in the normalizer of a nonsplit Cartan subgroup. ([Lemos](#references), §2, Theorem 2.3, p. 6 (v2)).

*Needs:* cyclic-isogeny-degrees contract; oddness-and-finite-images contract; BPR split-Cartan exclusion.

Exclude the Borel case by the non-CM prime-isogeny list, the exceptional projective cases by Serre’s quantitative inertia argument, and the split Cartan case by Bilu–Parent–Rebolledo. Use the finite-image contract below for the subgroup classification. The split Cartan input includes the quantitative large-prime estimates and the finite-prime rational-point exclusions, rather than just an assertion that a proper image has familiar types.

### 6.9 Surjectivity is a property of the j-invariant

For a prime p ≥ 5, two elliptic curves over ℚ that are quadratic twists of one another have surjective mod-p representations simultaneously. ([Lemos](#references), §2, proof of Theorem 1.1, p. 5 (v2); universal quadratic-twist statement is the derived group argument).

*Needs:* EllipticCurves Layer 5; perfectness of SL₂(𝔽ₚ) for p≥5.

Write the twist representation as χ⊗ρ for a quadratic character χ. For p≥5 use the group structure of GL₂(𝔽ₚ), including its SL₂ subgroup, to show that multiplication by these scalar signs preserves surjectivity in both directions. Curves with the same non-CM j-invariant are quadratic twists. Neither the CM j-values 0,1728 nor the unused p=3 case is needed for the final theorem.

### 6.10 Surjectivity at the finitely many rational j-values

For each j-value without complex multiplication among the rational noncuspidal points of X₀(11), X₀(17), X₀(37), namely −11·131³, −11², −17²·101³/2, −17·373³/2¹⁷, −7·137³·2083³, −7·11³, and each one among the integral j-values of the five genus-zero levels, every E/ℚ with that j-invariant has surjective mod-p representation for every prime p > 37. ([Lemos](#references), §2, proof of Theorem 1.1 and finite j-lists, pp. 5–7 (v2); with a uniform exceptional-prime bound required).

*Needs:* the genus-zero finite sets and the rational-point j-tables; quadratic-twist invariance; uniform exceptional-prime bounds.

A proof route uses exact rational-point tables for X₀(11), X₀(17), X₀(37) and the signed-divisor sets from the five genus-zero levels. Exclude the CM values using geometric endomorphism determinations. For each remaining j, prove an upper bound for every exceptional prime on an explicit curve model, using local, isogeny and subgroup arguments to exclude every exception above 37. A finite set of Frobenius computations or a finite sample of primes does not prove the all-p statement.

### 6.11 Lemos's theorem

If E/ℚ has no complex multiplication over an algebraic closure and has a rational cyclic isogeny of degree greater than 1, then the representation of the absolute Galois group of ℚ on E[p] is surjective onto GL₂(𝔽ₚ) for every prime p > 37. ([Lemos](#references), Theorem 1.1, p. 2; §2 proof, pp. 5–7 (v2)).

*Needs:* all preceding Layer 6 targets; cyclic-isogeny-degrees contract.

A nontrivial cyclic isogeny yields a rational prime-degree isogeny. The non-CM degree list reduces r to {2,3,5,7,11,13,17,37}. For r=11,17,37 use the finite rational j-table. For r=2,3,5,7,13 a proper image forces integral j, reducing to the finite signed-divisor table. The uniform image bounds and quadratic-twist invariance then contradict the assumed failure for any p>37.


### 6.12 The five genus-zero j-numerators

Define lemosNumerator(r) in Z[X] by the five formulas: r=2:(X+16)³; r=3:(X+27)(X+3)³; r=5:(X²+10X+5)³; r=7:(X²+5X+1)³(X²+13X+49); r=13:(X⁴+7X³+20X²+19X+1)³(X²+5X+13). At every other r set it to zero. ([Lemos](#references), §2, j-map table, p.6).

The API supplies the following facts.

- For the five levels the polynomial is exactly the displayed formula.
- For r∈{2,3,5,7,13}, lemosNumerator(r) is monic of degree r+1.
- The five constant terms are 4096,729,125,49,13 respectively.
- Outside {2,3,5,7,13}, lemosNumerator(r)=0.

**Checks.**

- lemosNumerator(2)(0)=4096.
- lemosNumerator(7) has degree 8 and constant term 49.
- lemosNumerator(13) has degree 14 and constant term 13.
- lemosNumerator(11)=0: the genus-one level does not use a genus-zero formula.


### 6.13 The finite integral j-candidate sets

Define lemosIntegralJ(r) as the finite set of integers lemosNumerator(r)(t)/t for all signed nonzero divisors t of the polynomial’s constant term; use the exact integer quotient, and the empty set outside the five levels. ([Lemos](#references), §2, five finite sets, p.7).

The API supplies the following facts.

- j belongs iff r∈{2,3,5,7,13} and there is a nonzero signed divisor t of the constant term with j equal to the exact quotient f(t)/t.
- For r outside {2,3,5,7,13}, lemosIntegralJ(r) is empty.
- The cardinalities at 2,3,5,7,13 are 25,13,8,6,4.

**Checks.**

- lemosIntegralJ(2) has 25 elements and contains 0 and 1728.
- lemosIntegralJ(5) has 8 elements and contains 64.
- lemosIntegralJ(13)={−64·9·4079³,576,4096·27·19,4096·27·19·991³}.
- lemosIntegralJ(11) is empty; its separate finite j-table is used instead.


### 6.14 Exact-divisor, period and integral geometric comparisons

The Atkin–Lehner construction is required for every r>0 and prime p with gcd(r,p)=1: p² is then an exact divisor of rp². Construct the corresponding involution on the curve and on the weight-two newspace, and identify its invariant differentials with those on the quotient. For general positive coprime r,p the Chen correspondence sends p-old to p-old, so its factorization is between p-new quotients; vanishing into the full nonsplit Jacobian additionally uses genus zero of X₀(r). The genus-zero factorization includes r=1 as well as r∈{2,3,5,7,13} (Lemos Lemma 3.2 and Theorem 3.3, p. 9). *Needs:* chen-isogeny contract and ModularForms old/new theory.

Define the winding class by integration along the geodesic from 0 to i∞, in the rational homology of the quotient with the specified cusp boundary. Prove that its full-new projection is nonzero for all five levels and p outside the five-prime set, and that the integral Hecke annihilator yields the nonzero optimal mixed quotient of the winding target. Include the nonzero cuspidal boundary of order p and the Hecke/cotangent comparison transferring from the full-new quotient; an arbitrary rank-zero quotient does not have this property (Lemos Theorem 3.4 and proof, p. 10; DarmonMerel Propositions 7.1–7.2, pp. 18–21). Its API identifies the annihilator, the quotient map from the mixed Jacobian, its prime-to-p Hecke action and its integral cotangent lattice.

**Checks.**

- At r=5,p=5, p²=25 is not an exact divisor of 125 because gcd(25,5)=5; the involution with this label is excluded. At r=5,p=11, gcd(121,5)=1 and the level is 605.
- At r=11,p=17 the old source includes the nonzero J₀(11); the pull-push on its pullback is a positive-degree multiple of the nonsplit pullback, so old-image vanishing is not asserted. At r=1 the base Jacobian has dimension 0 and old images vanish.
- On one q-expansion term f(z)=exp(2πiz), W(f)=i/(2π) and integration of 2πi f(z)dz from 0 to i∞ is −1. Reversing the path gives +1; omitting 2πi gives i/(2π). The term tests normalization, without being called a cusp form of weight two.
- For the two-term function f(z)=exp(2πiz)+2exp(4πiz), W(f)=i/π and the normalized period is −2. A coefficient-weighted integral must divide the second term by its frequency.
- For f(z)=exp(2πiz)−2exp(4πiz), W(f)=0 and the normalized period is 0 despite f being nonzero. Nonvanishing of a winding component needs a theorem, not pointwise nonvanishing of its test function.

Prove the normalized period comparison ⟨f,e⟩=2πi W(f), where W(f)=i∫₀∞ f(it)dt and the pairing integrates ω_f=2πi f(z)dz. This determines the scalar in every winding comparison and its integral-lattice use ([DarmonMerel](#references), §7, pp. 19–20, differential and pairing).

Prove the characteristic-q coefficient-support statement: for r∈{2,3,5,7,13}, p outside this set, q prime with q≡±1 mod p, and f a weight-two differential on the smooth mixed special fibre over 𝔽_q in the integral cotangent comparison, if its q-expansion coefficients a_n(f) vanish for every n prime to p, then f=0. The proof descends a differential supported on multiples of p to level r, whose weight-two space is zero. The integral model, cusp coordinate and coefficient convention are those of the winding comparison (DarmonMerel Lemma 8.2, pp. 22–23; Lemos §3, p. 10). *Needs:* modular-curves-and-jacobians and integral-winding-comparison contracts; old/new degeneracy; genus zero of X₀(r).

Deduce the exact cotangent statement: let R be the localization of the integers of K at a prime above q, k its residue field, C the specified smooth integral curve, s its cusp section, and u:C→𝒜 the extension of P↦[(P)−(∞)] into the Néron model of the specified winding quotient. Pullback from the cotangent space of 𝒜ₖ at zero to that of Cₖ at sₖ is surjective. Equivalently the induced map of completed local rings is surjective. If the cotangent image were zero, prime-to-p Hecke stability would force all a_n with (n,p)=1 to vanish, contradicting the coefficient-support statement for a nonzero cotangent vector.

**Checks.**

- At p=11, the first prime q≡±1 mod p is 23; q≥21>13. At p=17 it is 67; q≥33>13. Thus q∤rp for all five r.
- For p outside the five-prime set, p≥11; the excluded values p=2,3,5,7,13 are not silently covered by the argument q>13.
- The zero quotient has zero cotangent map and cannot surject onto the one-dimensional cusp cotangent. A nonzero rank-zero quotient also needs the specified Hecke-lattice comparison; rank zero alone supplies no differential.

### 6.15 Integral parameters and native rational-isogeny predicates

For each monic f∈ℤ[T] of degree at least two and nonzero t∈ℚ, prove that f(t)/t∈ℤ implies t∈ℤ and t divides f(0). Apply this to the five modular numerators and the actual modular coordinate to obtain the finite integral-j characterization in both directions (Lemos §2, pp. 6–7).

**Checks.**

- For f=(T+16)³ and t=−16, f(t)/t=0 and −16 divides 4096. For t=8 the quotient is 1728.
- For f=T+1 and t=1/2, f(t)/t=3 is integral but t is not; degree at least two is necessary. For t=0 the expression has no modular interpretation, regardless of total division conventions.
- At r=13 the positive divisor t=1 gives 4096·27·19; t=−1 gives 576. Both signs are required for the full finite set.

The native predicate `NonCM` says every member of TauCeti.Isogeny.Hom over ℚ̄ is an integer scalar. Its API compares geometric endomorphisms with the usual CM condition, preserves rational isomorphism, and distinguishes endomorphisms over ℚ from those over ℚ̄ (Mazur, introduction and §7; Lemos Theorem 1.1).

**Checks.**

- For j=1728, the automorphism (x,y)↦(−x,iy) over ℚ̄ is not an integer scalar; NonCM fails even though this automorphism is not over ℚ.
- For j=0 the order-three automorphism using a primitive cube root also makes NonCM fail.
- The curve y²+y=x³−x²−10x−20 has j=−2¹²·31³/11⁵, which is nonintegral; CM j-values are algebraic integers, so NonCM holds. The identity and all integer multiples remain allowed endomorphisms.

Define `HasCyclicIsogeny` using an actual rational isogeny with specified degree and cyclic kernel after base change to ℚ̄. Its API is invariant under rational isomorphism, identifies the stable cyclic-kernel description and passes from any nontrivial cyclic degree to a prime divisor (EllipticCurves Layers 1–2; Lemos Theorem 1.1).

**Checks.**

- The identity has degree 1 and trivial cyclic kernel; HasCyclicIsogeny at 1 holds, but the surjectivity theorem excludes it by n>1.
- Quotient by a rational subgroup of order 2 gives degree 2 and cyclic kernel of cardinality 2, whether or not other two-points are rational.
- Multiplication by 2 has degree 4 and geometric kernel (ℤ/2)², so that isogeny fails the cyclic-kernel condition. Degree alone would admit it for every E.

State `lemos_surjectivity` on the pinned torsion Galois action. Its target is the full additive automorphism group of geometric p-torsion, canonically the full linear automorphism group since additive maps of exponent-p groups are 𝔽ₚ-linear. The rank-two torsion theorem identifies this group with GL₂(𝔽ₚ) in any basis; no basis is part of the headline signature.

### Examples

The integral-j target includes p=11 and p=17 without any non-CM hypothesis under nonsplit containment. The proper-image-to-containment implication and the final surjectivity target retain p>37 and geometric non-CM. The final theorem excludes degree 1, CM j-values, and prime p=37: none is covered by a generalization of its displayed inequalities.

### Dependencies

Layer 5; the elliptic Tate-curve and twist theories; modular-curves-and-jacobians, chen-isogeny, integral-winding-comparison, modular-rank-zero and neron-torsion-specialization contracts. The split-Cartan exclusion is the mathematical rational-point theorem of BPR Theorem 1.1, not a procedure for computing points. The final finite-j step requires a bound on every exceptional prime, as a theorem for each non-CM j in the lists; finite samples of Frobenius traces do not supply it.

## Downstream consumers

ErdosProgressionPowers §1.1 uses removed-prime bounds, exact-conductor realization with full rational two-torsion and uniform irreducibility. Rational-isogeny applications use the surjectivity theorem for every prime above 37. The sharp thresholds strengthen the numerical-majorant versions: at level 11 the full-two threshold is 13+4√3 instead of 169.

## References

Page numbers below refer to the displayed editions. The theorem, section and page locators at each target specify the portion supplying its statement or argument.

- **BS:** Michael A. Bennett and Samir Siksek, [A conjecture of Erdős, supersingular primes and short character sums](https://annals.math.princeton.edu/wp-content/uploads/annals-v191-n2-p02-s.pdf), *Annals of Mathematics* 191 (2020), 355–392. The effective comparison inputs are in §2, pp. 358–360; the two-torsion applications are in §3, pp. 361–364.
- **Kraus:** Alain Kraus, [Majorations effectives pour l'équation de Fermat généralisée](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/FEF2CCCEC964C8D0AAD3EE8F40875A4D/S0008414X00034258a.pdf/majorations-effectives-pour-l-equation-de-fermat-generalisee.pdf), *Canadian Journal of Mathematics* 49 (1997), 1139–1161. Use §3.1–3.3, pp. 1142–1146, and Appendix II, §8, pp. 1158–1160.
- **Martin:** Greg Martin, [Dimensions of the spaces of cusp forms and newforms on Γ₀(N) and Γ₁(N)](https://arxiv.org/pdf/math/0306128), arXiv math/0306128v1 (6 June 2003). Use Theorems 1–2 and Definitions 1A–1F, pp. 2–3, and §4, pp. 14–16. The journal version is *Journal of Number Theory* 112 (2005), 298–331; the locators here use the preprint pagination.
- **Mazur:** Barry Mazur, with an appendix by Dorian Goldfeld, [Rational isogenies of prime degree](https://www.math.columbia.edu/~goldfeld/Mazur-Goldfeld1978.pdf), *Inventiones mathematicae* 44 (1978), 129–162. Use Theorem 1 and the introduction table, pp. 129–130, and §7, pp. 153–155. The composite-degree classification is the separate Mazur–Kenku import identified in Layer 5.
- **Lemos:** Pedro Lemos, [Serre's uniformity conjecture for elliptic curves with rational cyclic isogenies](https://arxiv.org/pdf/1702.01985v2), arXiv:1702.01985v2 (8 March 2017). The locators use this version's pp. 1–11: Theorems 1.1–1.4, §2 and §3. The journal version is *Transactions of the American Mathematical Society* 371 (2019), 137–146.
- **DarmonMerel:** Henri Darmon and Loïc Merel, [Winding quotients and some variants of Fermat's Last Theorem](https://perso.imj-prg.fr/loic-merel/wp-content/uploads/merel-pub/winding.pdf), author copy dated 5 January 2001. Use §§6–8, especially Propositions 7.1–7.2, pp. 18–21, and Lemmas 8.2–8.3, pp. 22–23. The journal version is *Journal für die reine und angewandte Mathematik* 490 (1997), 81–100; the locators here use the author-copy pagination. The original r=2,3 argument is combined with the explicit five-level extension in Lemos §3.

- **Kenku:** M. A. Kenku, *On the number of Q-isomorphism classes of elliptic curves in each Q-isogeny class*, Journal of Number Theory 15 (1982), 199–202, [DOI](https://doi.org/10.1016/0022-314X(82)90025-7). Use pp. 199–201 for composite cyclic degrees; this citation is uncertified.
- **BPR:** Yuri Bilu, Pierre Parent and Marusia Rebolledo, [Rational points on X₀⁺(pʳ)](https://arxiv.org/abs/1104.4641), Theorem 1.1, pp. 1–2, preprint numbering: all rational points are cusps or CM for p≥11, p≠13, r>1.
