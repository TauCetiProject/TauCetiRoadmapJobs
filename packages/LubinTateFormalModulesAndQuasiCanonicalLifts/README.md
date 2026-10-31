# Roadmap: lubin–tate formal modules and quasi-canonical lifts

**Summary.** This roadmap builds the theory of one-dimensional formal modules over the integers of
local fields, starting from Mathlib's one-dimensional `FormalGroup`, the formal-group algebra of
BordismFormalGroups §F1 and the formal Lie groups and `p`-divisible groups of
FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1. It equips a commutative formal group law with a
coefficient-ring action, constructs the Lubin–Tate formal module of a uniformizer by Lubin–Tate
interpolation, computes its torsion, Tate module and division fields, and compares its Galois
character with the arithmetic local Artin map of Tau Ceti and ClassFieldTheory. It then proves the
finite-height deformation theorem for formal `O_K`-modules with a specified coefficient ring,
Honda's functional-equation theory over unramified bases and its supersingular elliptic
specialization, the integral lattice-quotient construction of quasi-canonical lifts with their
marked fields of moduli (the ring class fields of Gross and Yu), and the explicit tame and
anticyclotomic towers of Burungale–Kobayashi–Ota with the formal traces between them. The end
theorems are the Lubin–Tate existence and uniqueness theorem, the degree and norm group of the
Lubin–Tate division fields, the representability of marked finite-height deformations, the
Lubin–Tate structure of the formal group of a supersingular elliptic curve with scalar Frobenius,
the classification and fields of moduli of quasi-canonical lifts, and the trace-compatible
comparison of the two BKO towers.

The formal-module foundations of Layer 0 hold over an arbitrary commutative coefficient ring, and
the Lubin–Tate construction of Layer 1 over any discrete valuation ring with finite residue field
(either characteristic, complete or not). The torsion, Tate-module and reciprocity results of
Layer 2 are stated for nonarchimedean local fields of characteristic zero, that is, finite
extensions of `ℚ_p`. For the CM construction the coefficient field `F₀` and the CM field `F` are
distinguished; the quadratic results cover ramified and unramified `F/F₀`, including residue
characteristic two. Only the BKO layers impose `p ≥ 5` and `Φ/ℚ_p` unramified quadratic.

## Scope and ownership

**Owned here.** The coefficient-ring action on a commutative formal group law with its tangent
condition, and the `O_K`-height (§0.1); the `O`-module structure, Galois action and elliptic
comparisons on evaluated formal points (§0.2); convergence of the normalized logarithm on maximal
ideals of finite extensions of `ℚ_p` (§0.3); number-field models of finite extensions of `ℚ_p`
carrying Tau Ceti's elliptic formal-point homomorphism (§0.4). Lubin–Tate series and polynomials,
the interpolation lemma, the Lubin–Tate formal module and its coordinate independence (Layer 1).
Finite-height torsion and the `π`-adic Tate module of a formal `O_K`-module, the Lubin–Tate division
fields, character, its comparison with the arithmetic Artin map and the change-of-uniformizer twist
(Layer 2). Marked deformations of formal `O_K`-modules over a specified coefficient ring, their
coefficient algebra, cocycles, rigidity, tangent space and universal deformation (Layer 3). Honda
type operators, functional-equation integrality and the unramified and supersingular elliptic
Lubin–Tate comparisons (Layer 4). Tate lattices, integral lattice quotients of formal modules with
their Frobenius-twisted markings, homomorphisms and descent (Layer 5). Canonical and quasi-canonical
lifts, their marked and unmarked classification, quadratic orders and fields of moduli (Layer 6).
Quadratic ring-class degrees, the uniformizer property of the quasi-canonical modulus, the BKO
primed tower, the ramified Honda boundary example and neighbouring lattices (Layer 7). The BKO
character data, cyclotomic and anticyclotomic directions, fixed fields and generator comparisons
(Layer 8). Formal traces, tame descent and the trace-compatible tower square (Layer 9).

**Taken from other owners, not restated.**

- Homomorphisms, isomorphisms and strict isomorphisms of one-dimensional formal group laws, the
  formal inverse series, base change, evaluated points on complete Hausdorff linearly topologized
  algebras, the normalized logarithm and exponential over `ℚ`-algebras with their uniqueness,
  base-change and coordinate-change comparisons, the height of a formal group over a field of
  characteristic `p`, the Lazard ring and the symmetric two-cocycle lemma: BordismFormalGroups
  §F1. The universal deformation ring `W(k)[[u₁,…,u_(h−1)]]` of a height-`h` formal group over a
  perfect field `k`: BordismFormalGroups §F5. Section 3.6 differs by the coefficient action of
  `O_K`, an arbitrary residue field and an arbitrary specified coefficient ring.
- Formal Lie groups `FormalLieGroup` of any dimension with `FormalLieGroup.Hom`,
  `FormalLieGroup.End`, `FormalLieGroup.Points` and the dimension-one comparison
  `FormalLieGroup.ofFormalGroup`; the equivalence `BarsottiTate.equivFormalLieGroup` between
  `p`-divisible formal Lie groups and connected `p`-divisible groups; the `ℤ_p`-Tate module
  `BarsottiTate.tateModule`; schematic closure `schematicClosure_flat`; quotients
  `BarsottiTate.quotientFiniteFlatSubgroup` by finite flat subgroups over a complete discrete
  valuation ring; relative Frobenius and Verschiebung `frobeniusHom`, `verschiebungHom` and finite
  Dieudonné theory `dieudonneEquivalenceFinite`: FiniteFlatGroupsAndIntegralPadicHodgeTheory
  §§R07.1.1, R07.1.8, R07.1.12–R07.1.13, R07.1.20–R07.1.20a, R07.2.6–R07.2.8. Sections 2.1–2.2
  differ by working `π`-adically with the `O_K`-action; §5.2 differs by constructing the quotient
  as a formal `O₀`-module with an explicit integral coordinate and a Frobenius-twisted marking.
- The elliptic formal group law and its base change (`WeierstrassCurve.formalGroup`,
  `WeierstrassCurve.map_formalGroup`), its adic point group `WeierstrassCurve.FormalGroupPoint`
  and the formal-point homomorphisms `WeierstrassCurve.formalPointHom` and
  `WeierstrassCurve.formalPointHomAdicCompletion` with its injectivity and range: already in Tau
  Ceti. The elliptic formal logarithm, exponential and their convergence on maximal ideals:
  EllipticCurves Layer 1. Frobenius on elliptic curves over finite fields and the Hasse bound:
  EllipticCurves Layer 3.
- Finite locally free group schemes, finite quotients, elliptic isogenies and quotients, formal
  completion at the zero section, universal elliptic deformations, elliptic `p`-divisible groups
  and Serre–Tate theory: ModularCurves §§0B, 0C, 2B, 7C, 7D, 7E, 7F.
- The arithmetic local Artin map `TauCeti.ClassFieldTheory.artinMap` with its finite restrictions
  and norm subgroups: already in Tau Ceti; local existence and the local class-field
  correspondence: ClassFieldTheory Layers 6–8. No Lubin–Tate construction of reciprocity is made
  here; Layer 2 compares the Lubin–Tate character with the existing map.
- Finite extensions of local fields, the unit filtration `TauCeti.unitFiltration`, Teichmüller
  lifts and the logarithm isomorphism `U(K,i) ≃ 𝓂[K]^i` for `(p−1)i > e`: LocalFieldsRamification
  Layers 0–1 and Tau Ceti.

## Conventions

- `K` is a nonarchimedean local field with integers `O = O_K`, uniformizer `π`, maximal ideal
  `𝔪_K` and residue field `k_K` of cardinality `q`. In Layer 1, `O` may be any discrete valuation
  ring with finite residue field of cardinality `q` and `π` any irreducible element; in Layers 0
  and 2–9, `K` has characteristic zero, so `K/ℚ_p` is finite with ramification index `e` and
  residue degree `f`.
- A formal `A`-module over an `A`-algebra `R` is a commutative one-dimensional Mathlib
  `FormalGroup R` together with an action `a ↦ [a]` of `A` by endomorphisms whose linear
  coefficient is the structure map `A → R`. Its `O_K`-height `h` is read off `[π]` over a field;
  the underlying `p`-height is `h[K:ℚ_p]`.
- A coordinate change `X ↦ uX + ⋯` is strict when `u = 1`. A marked deformation carries an
  isomorphism of its special fibre with a given residual module, and marked isomorphisms preserve
  that whole isomorphism. Strictness and marking are different conditions.
- Formal logarithms have zero constant term and linear coefficient one. They converge on maximal
  ideals of finite extensions of `ℚ_p`; their exponentials are inverse only on a sufficiently deep
  ideal, and torsion lies in the kernel of the logarithm.
- Separable closures and embeddings are fixed before fields are formed. The local Artin map is
  arithmetically normalized: a uniformizer maps to a lift of arithmetic Frobenius. Thus
  `χ_π(Art_K(π^r u)) = u⁻¹` for `u ∈ O_K^×`, and replacing `π` by `uπ` multiplies `χ` by the
  unramified character sending arithmetic Frobenius to `u`.
- The deformation coefficient ring `B` is specified together with its residue field; no Cohen ring
  of an imperfect field is chosen implicitly. For the CM problem with finite `k_F`, `B = O_(F^ur)`
  with `F^ur` the maximal unramified subextension of `F/F₀`.
- For a lattice `L ⊃ T` with `[L:T] = q₀^N` the lattice quotient is marked to the `q₀^N`-Frobenius
  twist of the special fibre; multiplication by `π_F` compares markings when the exponent changes
  by the residue degree.
- For quadratic `F/F₀`, `O_s = O₀ + ϖ₀^s O_F` uses the uniformizer `ϖ₀` of the smaller field.
  Fields of moduli are smallest fields containing `F` over which the marked deformation is
  defined.
- In the BKO layers `p ≥ 5`, `Φ/ℚ_p` is unramified quadratic with integers `O = O_Φ`, and
  `π = −p`. The field `Φ_n` is generated by `π^(n+1)`-torsion; `Ψ′_s` is the level-`s`
  quasi-canonical field. A `π`-adic Tate generator `(v_n)` satisfies `[−p]v_(n+1) = v_n`, and the
  `p`-adic generator is `w_n = [(−1)^n]v_n`.
- Polynomial iterates are written `f^{∘m}`, with `f^{∘0} = X`; in Lean this is
  `(f.comp)^[m] Polynomial.X`.

## Exact supplier contracts

### From Mathlib

- `FormalGroup` (one-dimensional formal group law: zero constant term, linear terms `X` and `Y`,
  associativity; no commutativity and no inverse field), `FormalGroup.IsComm`, `FormalGroup.map`
  and `FormalGroup.Point`, in `Mathlib/RingTheory/FormalGroup/Basic.lean`. `FormalGroup.Point`
  consists of power series with nilpotent constant coefficient; it is not a group of
  maximal-ideal-valued points of a valued field.
- `PowerSeries.subst`, `MvPowerSeries.subst` and `PowerSeries.HasSubst`: substitution, defined to
  be zero when the substituted series fails `PowerSeries.HasSubst`; every statement here substitutes only
  series with zero constant term.
- `PowerSeries.substInv`, `PowerSeries.substInvOfIsUnit`, `PowerSeries.subst_substInv_left` and
  `PowerSeries.subst_substInv_right`: the two-sided substitution inverse of a series with zero
  constant term and invertible linear coefficient.
- `PowerSeries.eval₂Hom` and `PowerSeries.comp_eval₂`: evaluation at an element with
  `PowerSeries.HasEval` in a complete separated linearly topologized ring, and its compatibility
  with continuous ring maps.
- `PowerSeries.exists_isWeierstrassFactorization` and
  `PowerSeries.IsWeierstrassFactorizationAt.algEquivQuotient`: Weierstrass preparation over an
  adically complete local ring for a series with nonzero reduction, and the identification of the
  power-series quotient with the polynomial quotient.
- `IsNonarchimedeanLocalField`, `Valuation.integer` (notation `𝒪[K]`), `IsLocalRing.ResidueField`
  (notation `𝓀[K]`), `IsDiscreteValuationRing`, `IsLocalRing.residue`, `Polynomial.Monic`,
  `PowerSeries.map`, `AlgebraicClosure`, `IntermediateField.adjoin`, `Field.absoluteGaloisGroup`,
  `Field.absoluteGaloisGroupAbelianization` (`TopologicalAbelianization` of the absolute Galois
  group), `IsKrasner` and `IsKrasner.krasner`, `spectralNorm`, `WittVector`, `GaloisField`,
  `WeierstrassCurve.map`, `WeierstrassCurve.Δ`, `WeierstrassCurve.Affine.Point`,
  `IsDedekindDomain.HeightOneSpectrum.adicCompletion` and
  `IsDedekindDomain.HeightOneSpectrum.adicCompletionIntegers`.

### From Tau Ceti

- `WeierstrassCurve.formalGroup`, `WeierstrassCurve.isComm_formalGroup` and
  `WeierstrassCurve.map_formalGroup` (`TauCeti/AlgebraicGeometry/EllipticCurve/FormalGroup/Basic.lean`):
  the elliptic formal group law in the parameter `z = −x/y`, its commutativity and base change.
- `WeierstrassCurve.FormalGroupPoint` (`…/FormalGroup/AdicPoint.lean`): parameters in an adic ideal
  with evaluated elliptic addition, inverse and `AddCommGroup` structure.
- `WeierstrassCurve.formalPointHom` (`…/FormalGroup/Point/Hom.lean`), an injective homomorphism into
  affine points under an explicit auxiliary-point hypothesis; and
  `WeierstrassCurve.formalPointHomAdicCompletion`,
  `WeierstrassCurve.formalPointHomAdicCompletion_injective` (`…/Point/AdicCompletion.lean`) and
  `WeierstrassCurve.range_formalPointHomAdicCompletion` (`…/Point/Range.lean`): for a curve over the
  integers of the completion of a Dedekind domain at a height-one prime, elliptic over the
  completed fraction field, the unconditional injective formal-point homomorphism and its range,
  the kernel of reduction.
- `TauCeti.ClassFieldTheory.artinMap` (`TauCeti/NumberTheory/ClassFieldTheory/Local/ArtinMap.lean`):
  the arithmetic local Artin map `Kˣ →* Field.absoluteGaloisGroupAbelianization K` of a
  nonarchimedean local field, with `TauCeti.ClassFieldTheory.artinMap_restrict` (finite
  restrictions are the finite local Artin maps), `TauCeti.ClassFieldTheory.exists_artinMap_mem_iff`
  (preimages of open subgroups are norm subgroups), `TauCeti.ClassFieldTheory.artinMap_norm` and
  `TauCeti.ClassFieldTheory.artinMap_congr` (norm functoriality and naturality in the field).
- `TauCeti.unitFiltration` (`TauCeti/NumberTheory/LocalField/UnitFiltration/Basic.lean`):
  `U(K,i) ⊂ Kˣ`, the image of `O_K^×` for `i = 0` and `1 + 𝔪_K^i` for `i ≥ 1`.
- `TauCeti.teichmuller` (`TauCeti/RingTheory/Henselian/Teichmuller.lean`) and
  `TauCeti.GlobalNumberFields.weakApproximation_denseRange`
  (`TauCeti/NumberTheory/NumberField/Global/Approximation/Weak.lean`).

### From TauCetiRoadmap.BordismFormalGroups

§F1 supplies the formal-group homomorphisms, isomorphisms and strict isomorphisms on Mathlib's
carrier (with composition, the additive group structure of `Hom(F,G)`, inverse laws and base
change), the formal inverse series, the evaluated point carrier on complete Hausdorff linearly
topologized algebras at topologically nilpotent elements with continuous functoriality, the
normalized logarithm and exponential over a `ℚ`-algebra with the property that every additive
series along `F` is a scalar multiple of the logarithm, the integer multiplication series
`[n]_F`, the height over a field of characteristic `p` with its coordinate independence, and the
Lazard ring with the symmetric additive two-cocycle lemma. These are assumed with the hypotheses
stated there. §F5 supplies the universal deformation ring of a height-`h` formal group over a
perfect field; §3.6 here specializes to it when `O_K = ℤ_p`, `k` is perfect and `B = W(k)`.

### From TauCetiRoadmap.FiniteFlatGroupsAndIntegralPadicHodgeTheory

§R07.1.12 supplies `FormalLieGroup`, `FormalLieGroup.Hom`, `FormalLieGroup.End`,
`FormalLieGroup.Points` (points in the radical of an ideal of definition, with convergent
addition) and `FormalLieGroup.ofFormalGroup`. §R07.1.13 supplies
`BarsottiTate.equivFormalLieGroup` over a complete noetherian local ring with residue
characteristic `p`. §R07.1.8 supplies `BarsottiTate.tateModule`, free of rank the height over
`ℤ_p` with continuous Galois action, over a henselian local domain with fraction field of
characteristic zero. §R07.1.20 supplies `schematicClosure_flat` over a Dedekind base and
§R07.1.20a supplies `BarsottiTate.quotientFiniteFlatSubgroup`, with the exact sequence
`0 → T_p(G) → T_p(G/H) → H(K̄) → 0`, over a complete discrete valuation ring of mixed
characteristic. §R07.1.1 supplies `frobeniusHom` and `verschiebungHom` with `V∘F = [p] = F∘V`;
§§R07.2.6–R07.2.8 supply the contravariant finite Dieudonné module and
`dieudonneEquivalenceFinite`. Variances are those of the supplier.

### From TauCetiRoadmap.EllipticCurves

Layer 1 supplies isogenies, the dual isogeny, the invariant differential and the four elliptic
formal-group milestones: the law, the logarithm and exponential over a `ℚ`-algebra, convergence on
the maximal ideal of a complete valued field, and the identification with the kernel of reduction.
Layer 3 supplies the Frobenius endomorphism of an elliptic curve over a finite field, its
characteristic polynomial `T² − a_q T + q` with `#E(𝔽_q) = q + 1 − a_q`, and positivity and
multiplicativity of the isogeny degree.

### From TauCetiRoadmap.ModularCurves

§0B (finite locally free commutative group schemes and Cartier duality), §0C (finite quotients and
torsors), §2B (isogenies and quotients of elliptic curves by finite locally free subgroups), §7C
(formal completion at the zero section, with coordinate changes `X ↦ uX + ⋯`), §7D (universal
marked deformations of an elliptic curve over an algebraically closed field of characteristic `p`,
over `W(k)[[T]]`), §7E (the elliptic `p`-divisible group, PD-1 to PD-5) and §7F (the Serre–Tate
equivalence ST-1 and ST-2). The elliptic comparisons of §§3.7 and 5.5 are stated on the domains of
these theorems.

### From TauCetiRoadmap.ClassFieldTheory

Layers 6–7: finite local reciprocity, the absolute local Artin map with its arithmetic
normalization, unramified coordinate, norm functoriality and naturality (implemented in Tau Ceti as
`TauCeti.ClassFieldTheory.artinMap`). Layer 8: the local norm subgroups and the class-field
correspondence, including `localAbelianExistence` for finite extensions of `ℚ_p`, used to identify
fields of moduli and fixed fields by their norm groups.

### From TauCetiRoadmap.LocalFieldsRamification

Layer 0: finite extensions of local fields with their integers, residue fields, uniformizers and
normalized valuations, and finite Galois fixed fields. Layer 1: the unit filtration, the
Teichmüller section, the structure of `Kˣ` and of `O_K^×`, and the logarithm isomorphism
`U(K,i) ≃ (𝔪_K^i, +)` with inverse `exp` when `(p − 1)i > e`. Layer 2: unramified extensions,
arithmetic Frobenius and the completed maximal unramified extension.

## How to read the build

Layer 0 adds the coefficient action to the existing formal-group carrier, the module structure on
evaluated points, analytic logarithms and number-field models of local fields. Layer 1 constructs
the Lubin–Tate formal module of an admissible series by interpolation. Layer 2 computes its torsion
and Tate module, the division fields and the character, and compares the character with the
arithmetic Artin map. Layer 3 is the deformation theory of formal `O_K`-modules of finite height.
Layer 4 is Honda's theory over unramified bases and the supersingular elliptic comparison. Layer 5
builds integral lattice quotients of formal modules and their homomorphisms. Layer 6 constructs
canonical and quasi-canonical lifts and their fields of moduli; Layer 7 computes the quadratic
degrees, the uniformizer property and the BKO primed tower. Layer 8 builds the BKO tame and
anticyclotomic towers and Layer 9 the formal traces between them. Layers 3–4 depend only on Layers
0–2, and Layer 5 on Layers 0, 2 and 3; Layers 6–9 depend on their predecessors as listed in each
layer's dependencies.

The companion `Suggested.lean` states the headline theorems that are statable against the pinned
libraries, with the two predicates `IsLubinTateSeries` and `IsLubinTatePolynomial` of §1.1: the
Lubin–Tate theorem `exists_formalGroup_of_isLubinTateSeries` (§1.3) and the interpolation of
homomorphisms `existsUnique_lubinTate_intertwiner` (§1.2), the division-field degree
`finrank_adjoin_primitive_lubinTate_root` (§2.3), the norm-group comparison with Tau Ceti's Artin
map `artinMap_fixes_lubinTate_roots_iff` (§2.5), and the Lubin–Tate structure of the supersingular
elliptic formal group `exists_lubinTate_endomorphism_formalGroup` (§4.4). Its module docstring lists
the headline theorems that need carriers absent at the pins.

## Layer 0: Formal modules, points and analytic logarithms

This layer extends the native commutative formal group law by a coefficient-ring action, puts the
module structure on the evaluated points of BordismFormalGroups §F1 and
FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.12, proves convergence of the normalized
logarithm on maximal ideals, and realizes finite extensions of `ℚ_p` as completions of number
fields so that Tau Ceti's elliptic formal-point homomorphism applies to them.

### 0.1 One-dimensional formal modules

Let `A` be a commutative ring and `R` a commutative `A`-algebra. Define a formal `A`-module over
`R` as a commutative `FormalGroup R` `F` together with a map `a ↦ [a]_F` from `A` to the
endomorphisms of `F` (in the sense of BordismFormalGroups §F1) that is a unital ring homomorphism
for the formal addition and composition, and whose linear coefficient is the image of `a` in `R`.
A homomorphism of formal `A`-modules is a formal-group homomorphism commuting with every `[a]`.
When `A = O_K` and `R = k` is a field over `k_K`, the height of `F` is the integer `h` such that the
first nonzero coefficient of `[π]_F` is that of `X^(q^h)`, and is infinite when `[π]_F = 0`; the
height of a module over a local ring is the height of its special fibre. Over a field the first
nonzero term of `[π]_F` sits in a `q`-power degree, because differentiating the homomorphism
equation forces a `p`-power and commuting with `[ζ]` for the residue units `ζ ∈ k_K^×` forces a
power of `q` (VZ07, Definition 1.1, pp.57–58; Lemma 2.1 and Definition 2.2, pp.59–60).

API:

- A commutative formal group law, an action map into its endomorphisms and the tangent identity
  determine a formal module; two formal modules are equal when their laws and all action series
  agree.
- Base change along an `A`-algebra map `R → R′` maps the law and every action series, and is
  compatible with identities and composites.
- Restriction of scalars along a ring map `A → A′` turns a formal `A′`-module into a formal
  `A`-module with the same law.
- Conjugating the law and all action series by an isomorphism of formal group laws gives an
  isomorphic formal module; height is unchanged.
- For a finite extension `F/F₀` of local fields of degree `n`, a formal `O_F`-module of
  `O_F`-height `h` has `O_(F₀)`-height `nh`; in particular its `p`-height is `h[F:ℚ_p]`.
- Over a `ℚ`-algebra, the normalized logarithm `ℓ_F` of BordismFormalGroups §F1 satisfies
  `ℓ_F ∘ [a]_F = a·ℓ_F`, and for a homomorphism `φ : F → G` with linear coefficient `c`,
  `ℓ_G ∘ φ = c·ℓ_F`; both follow from the uniqueness of additive series along `F`.

**Checks.**

- The multiplicative formal group `X + Y + XY` over `𝔽_p` with `[a] = (1+X)^a − 1` (binomial
  series, `a ∈ ℤ_p`) has `[p] = X^p` and height one; a definition reading height off the linear
  coefficient would give infinity, since that coefficient is `p = 0`.
- The additive formal group over `𝔽_p` with `[a] = aX` has `[p] = 0` and infinite height.
- A Lubin–Tate `O_F`-module for quadratic `F/F₀` restricted to `O_(F₀)` has height two, not one.
- Take `A = R = ℚ(i)` with the identity structure map and the additive law. The unital action
  `[a](X) = ā X` (complex conjugation) satisfies every ring identity but has linear coefficient
  `−i ≠ i` at `a = i`, so it is not a formal `A`-module for this structure map; the tangent
  condition is not implied by the other axioms.
- Over `𝔽_p`, the series `X + X^p` is a strict automorphism of the additive formal group commuting
  with the `𝔽_p`-action, and it is not the identity: strictness does not identify an isomorphism
  with `X`.

*Needs:* Mathlib `FormalGroup`, `FormalGroup.IsComm`, `FormalGroup.map`; BordismFormalGroups §F1
(homomorphisms, base change, logarithm, height).

### 0.2 The module of adic points

Let `R` be a complete Hausdorff linearly topologized commutative `A`-algebra and `I` an ideal of
topologically nilpotent elements, and let `F` be a formal `A`-module over `R`. On the evaluated
point group `F(I)` of BordismFormalGroups §F1 (equivalently `FormalLieGroup.Points` of
FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.12 in dimension one) define the `A`-module
structure by evaluating `[a]_F`, and prove the module axioms by continuity of substitution. A
continuous coefficient map `R → R′` carrying `I` into `I′` induces an `A`-linear point map. For a
finite extension `L/K` the module `F(𝔪_L)` is defined, and `F(𝔪_(K̄))` is the union of the
`F(𝔪_L)` over finite subextensions `L` of a fixed algebraic closure, with the induced action of the
absolute Galois group; no evaluation on the incomplete field `K̄` is used (LT65, §1, p.383,
formulas (12)–(13) and the following paragraph).

API:

- Two points are equal exactly when their parameters are equal.
- A continuous coefficient map carrying the ideals into one another induces a continuous
  `A`-linear map of point modules, compatible with composites; an isomorphism of formal modules
  induces an isomorphism of point modules.
- For a Weierstrass curve `W`, the identity on parameters is an `A`-linear isomorphism between
  the point module of `WeierstrassCurve.formalGroup` and `WeierstrassCurve.FormalGroupPoint`,
  respecting addition and inverse.
- Galois automorphisms fixing the coefficients act continuously and `A`-linearly on `F(𝔪_(K̄))`,
  and the inclusions `F(𝔪_L) ⊂ F(𝔪_(L′))` are Galois equivariant.
- For a curve over the integers of a height-one adic completion of a Dedekind domain, the
  composite of the parameter isomorphism with `WeierstrassCurve.formalPointHomAdicCompletion` is
  injective with range given by `WeierstrassCurve.range_formalPointHomAdicCompletion`, exactly in
  that presentation.

**Checks.**

- `F(0)` is the zero module.
- For the multiplicative group `x +_F y = x + y + xy`; over `ℤ_p` with `x = y = p` this is
  `2p + p²`, not `2p`.
- For prime `p` and `R = ℤ_p`, Mathlib's `FormalGroup.Point` with no power-series variables has
  only the zero parameter, because `ℤ_p` is reduced and the constant must be nilpotent, whereas
  the evaluated additive group `𝔾_a(pℤ_p)` contains the nonzero parameter `p`: the two point
  constructions are different.
- For a finite extension `K ⊂ L`, the inclusion `F(𝔪_K) → F(𝔪_L)` commutes with every `[a]` and
  with every coordinate isomorphism defined over `O_K`.
- In a Dedekind adic-completion presentation, the composite map sends the zero parameter to the
  identity point, matching `WeierstrassCurve.formalPointHomAdicCompletion` at zero.

*Needs:* §0.1; BordismFormalGroups §F1 (point carrier); FiniteFlatGroupsAndIntegralPadicHodgeTheory
§R07.1.12 (`FormalLieGroup.Points`); Mathlib `PowerSeries.eval₂Hom`, `PowerSeries.comp_eval₂`; Tau
Ceti `WeierstrassCurve.FormalGroupPoint`, `WeierstrassCurve.map_formalGroup`,
`WeierstrassCurve.formalPointHomAdicCompletion`,
`WeierstrassCurve.formalPointHomAdicCompletion_injective`,
`WeierstrassCurve.range_formalPointHomAdicCompletion`; LocalFieldsRamification Layer 0.

### 0.3 Convergence of the formal logarithm

Let `K/ℚ_p` be finite and `F` a commutative formal group law over `O_K`. Prove that its normalized
logarithm `ℓ_F ∈ X·K[[X]]` converges on `𝔪_L` for every finite extension `L/K` and defines a
homomorphism `F(𝔪_L) → (L, +)`; that there is `r ≥ 1` such that `ℓ_F` and its formal inverse are
mutually inverse analytic isomorphisms between `F(𝔪_L^r)` and `𝔪_L^r`; and that the evaluated
logarithm commutes with field embeddings, coordinate isomorphisms over `O_K` and the formal traces
of §9.1. The kernel of `ℓ_F` on `F(𝔪_L)` contains the torsion, so no injectivity on `F(𝔪_L)` is
asserted. A proof route: the invariant differential has integral coefficients, so the coefficient
of `X^n` in `ℓ_F` has valuation at least `−v_L(n)`, and `n·v_L(x) − v_L(n) → ∞` for `x ∈ 𝔪_L`; on a
deep ideal the same estimates, or a contraction argument, give the inverse (H70, §1, pp.216–219;
LT65, §1, p.383).

**Checks.**

- For the multiplicative group, `ℓ(x) = log(1 + x)` agrees with the logarithm of
  LocalFieldsRamification Layer 1 on `U(K,i)` for `(p−1)i > e`.
- For `x = ζ_p − 1 ∈ 𝔪_(ℚ_p(ζ_p))`, `ℓ(x) = log ζ_p = 0` although `x ≠ 0`.
- For the additive group the logarithm is `X`, and `r = 1` works.

*Needs:* §0.2; BordismFormalGroups §F1 (logarithm and exponential); LocalFieldsRamification Layers
0–1.

### 0.4 Number-field models of local fields and the elliptic point map

Let `L₁ ⊂ L₂ ⊂ ⋯ ⊂ L_r` be finite extensions of `ℚ_p` inside a fixed algebraic closure. Prove that
there are number fields `E₁ ⊂ E₂ ⊂ ⋯ ⊂ E_r` and height-one primes `𝔭_i` of their rings of integers,
with `𝔭_(i+1)` above `𝔭_i`, and continuous field isomorphisms
`IsDedekindDomain.HeightOneSpectrum.adicCompletion E_i 𝔭_i ≃ L_i` compatible with the inclusions.
Transport along these isomorphisms the integer rings, maximal ideals, a Weierstrass curve `W` over
`O_(L_r)` that is elliptic over `L_r`, its formal group law and logarithm, and the formal-point
homomorphism `WeierstrassCurve.formalPointHomAdicCompletion`, compatibly with the inclusions
`L_i ⊂ L_(i+1)`. A proof route: realize `L₁ = ℚ_p(α₁)` by approximating the minimal polynomial of
`α₁` by a rational polynomial and applying Krasner's lemma, so that `E₁ = ℚ(α₁′)` is dense in `L₁`;
inductively, approximate the minimal polynomial of a generator of `L_(i+1)/L_i` by a polynomial
over the dense subfield `E_i` and apply Krasner's lemma again; weak approximation chooses the
approximations.

API:

- The isomorphisms carry `IsDedekindDomain.HeightOneSpectrum.adicCompletionIntegers` onto `O_(L_i)` and its maximal ideal onto
  `𝔪_(L_i)`, and are compatible with the inclusions.
- The transported curve has transported discriminant, and its formal group law is the transport of
  `WeierstrassCurve.formalGroup` by `WeierstrassCurve.map_formalGroup`.
- On points of §0.2, the transported formal-point homomorphism is injective with range the kernel
  of reduction of the transported model, and commutes with the inclusions and with the Galois
  actions of the towers.

**Checks.**

- For `L₁ = ℚ_p`, one may take `E₁ = ℚ` and `𝔭₁ = (p)`.
- For odd `p` and `L = ℚ_p(√u)` unramified quadratic with `u` a non-square unit, `E = ℚ(√u′)` for
  an integer `u′ ≡ u mod p` is inert at `p` and has completion `L`; an integer `u′` that is a nonzero
  square modulo `p` splits `p`, and both completions are `ℚ_p`, not `L`.
- Krasner's lemma needs the approximation to be closer than the distances between conjugates: for
  `L = ℚ_2(√−1)`, the polynomial `X² + 1 + 2` has root field `ℚ_2(√−3)`, which is unramified and
  different from `L`.

*Needs:* §0.2; Mathlib `IsKrasner.krasner`, `IsDedekindDomain.HeightOneSpectrum.adicCompletion`;
Tau Ceti `TauCeti.GlobalNumberFields.weakApproximation_denseRange`,
`WeierstrassCurve.formalPointHomAdicCompletion`, `WeierstrassCurve.range_formalPointHomAdicCompletion`;
LocalFieldsRamification Layer 0.

### Examples

The multiplicative formal `ℤ_p`-module has points `1 + 𝔪_L` and logarithm `log(1 + x)`; the
additive module has points `𝔪_L` with `[a]x = ax`; the formal group of an elliptic curve over `ℤ_p`
with its `ℤ_p`-action has point module the kernel of reduction (§§0.2, 0.4).

### Dependencies

Mathlib `FormalGroup`, power-series substitution and evaluation; Tau Ceti's elliptic formal group
and formal-point homomorphisms and weak approximation; BordismFormalGroups §F1;
FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.12; LocalFieldsRamification Layers 0–1.

## Layer 1: The Lubin–Tate construction

Throughout this layer `O` is a discrete valuation ring with finite residue field of cardinality
`q`, and `π ∈ O` is irreducible. Completeness of `O` and the characteristic of its fraction field
play no role: the construction is a coefficient induction whose error terms are divisible by `π`.

### 1.1 Lubin–Tate series and polynomials

Define `IsLubinTateSeries π q f` for `f ∈ O[[X]]`: the constant coefficient of `f` is zero, its
linear coefficient is `π`, and its image in `k[[X]]` under reduction modulo the maximal ideal is
`X^q`. Define `IsLubinTatePolynomial π q f` for `f ∈ O[X]`: `f` is monic of degree `q`, with
constant coefficient zero, linear coefficient `π` and reduction `X^q`. The standard example is
`πX + X^q` (LT65, §1, p.380, condition (1)). These definitions are made over any local ring; the
theorems use them with `q` the residue cardinality.

API:

- A Lubin–Tate polynomial, viewed as a power series, is a Lubin–Tate series.
- `πX + X^q` is a Lubin–Tate polynomial whenever `q ≥ 2`.
- The predicates depend only on the coefficients, and are preserved by a ring isomorphism carrying
  `π` to `π′` and inducing a bijection of residue fields; changing the uniformizer is a different
  operation from changing coordinates for the same `π`.
- A Lubin–Tate series has zero constant term, so it is admissible for substitution.

**Checks.**

- For `O = ℤ_p` and `π = p`, `(1 + X)^p − 1` is a Lubin–Tate polynomial: its constant term is `0`,
  its linear coefficient is `p`, and it reduces to `X^p`.
- `πX` alone is not a Lubin–Tate series: its reduction is `0`, not `X^q`.
- Over `O = W(𝔽_(p²))`, `−pX + X^(p²)` is a Lubin–Tate polynomial for `−p` and not for `p`
  (its linear coefficient is `−p`), and `pX + X^p` is not one for `q = p²`: its reduction is
  `X^p`.
- `πX + X^q + X^(q+1)` is a Lubin–Tate series for no `π`: its reduction `X^q + X^(q+1)` is not
  `X^q`; it is also not a Lubin–Tate polynomial, being of degree `q + 1`.

*Needs:* Mathlib `PowerSeries.map`, `IsLocalRing.residue`, `Polynomial.Monic`.

### 1.2 Lubin–Tate interpolation

Let `f, g` be Lubin–Tate series for the same `π` and `q` the residue cardinality, and let
`a₁, …, a_n ∈ O`. Prove that there is a unique `H ∈ O[[X₁,…,X_n]]` with linear part `Σ a_i X_i` and
`f(H(X₁,…,X_n)) = H(g(X₁),…,g(X_n))`, and that it is also the unique such series with coefficients
in the fraction field of `O`. The arity-one case is `existsUnique_lubinTate_intertwiner`: for every
`a ∈ O` there is a unique `φ ∈ O[[X]]` with zero constant term, linear coefficient `a` and
`f ∘ φ = φ ∘ g` (LT65, Lemma 1 and the remarks after it, pp.381–382). A proof route: solve degree by
degree; in degree `r ≥ 2` the error is divisible by `π`, because `f` and `g` reduce to the `q`-power
map and every residue `b` satisfies `b^q = b`, and it is corrected by dividing by `π − π^r`, which is
`π` times a unit. Uniqueness over the fraction field follows from `π − π^r ≠ 0`.

**Checks.**

- For `a = 1` and `f = g`, the unique solution is `φ = X`; for `a = 0` it is `φ = 0`.
- For `O = ℤ_p`, `f = (1 + X)^p − 1` and `g = pX + X^p`, the solution with `a = 1` is not `X`,
  since `f ≠ g`; its coefficient of `X²` is determined by `f(φ) = φ(g)` and is integral.
- Over `O = W(𝔽_(p²))` the series `g = pX + X^p` has the coefficient shape of a Lubin–Tate series
  for `q = p`, but `p` is not the residue cardinality. For `a` the Teichmüller lift of
  `ā ∈ 𝔽_(p²) ∖ 𝔽_p` no `φ = aX + ⋯` with `g ∘ φ = φ ∘ g` exists: reducing gives
  `φ̄(X)^p = φ̄(X^p)`, whose `X^p` coefficients are `ā^p ≠ ā`. The cardinality hypothesis is
  essential.

*Needs:* §1.1.

### 1.3 The Lubin–Tate formal module

For a Lubin–Tate series `f`, interpolation with linear forms `X + Y` and `aX` gives a series
`F_f(X,Y)` and series `[a]_f`. Prove that `F_f` is a commutative formal group law over `O`, that
`a ↦ [a]_f` makes it a formal `O`-module with `[π]_f = f`, that its special fibre has `O`-height
one, and that `F_f` is the unique formal group law over `O` of which `f` is an endomorphism
(`exists_formalGroup_of_isLubinTateSeries`). Consequently a commutative formal group law over `O`
with an endomorphism that is a Lubin–Tate series is the Lubin–Tate module of that series in its own
coordinate (LT65, Theorem 1 and the paragraph following it, pp.382–383). A proof route: both sides
of associativity, commutativity, additivity and multiplicativity of the action solve the same
interpolation problem, so they agree by uniqueness.

API:

- `[π]_f = f`, `[1]_f = X` and `[0]_f = 0`, and the linear coefficient of `[a]_f` is `a`.
- The series `f` determines the law and the whole action.
- A commutative formal group law over `O` carrying an endomorphism with linear coefficient `π` and
  reduction `X^q` is equal to `F_f` for that endomorphism `f`.
- Transport along an isomorphism of the coefficient data commutes with the construction; base
  change along `O → R` maps the law and action, and the uniqueness applies whenever the image
  data again satisfy the hypotheses.
- The `O`-height of `F_f` is one; for `O = O_K` with `K/ℚ_p` finite its `p`-height is `[K:ℚ_p]`.

**Checks.**

- For `f = (1 + X)^p − 1` over `ℤ_p`, `F_f = X + Y + XY` is the multiplicative group.
- For `f = πX + X^q`, `[π]_f = πX + X^q`, not the scalar multiplication series `πX`.
- For `O = W(𝔽_(p²))` and `π = −p`, the module has `O`-height one and `ℤ_p`-height two.
- The additive law `X + Y` over `O` admits no Lubin–Tate endomorphism: every endomorphism of the
  additive law over a ring of characteristic zero is linear, so its reduction cannot be `X^q`.

*Needs:* §§1.1–1.2; §0.1.

### 1.4 Coordinate independence

For Lubin–Tate series `f, g` for the same `π`, the arity-one interpolation with `a = 1` gives a
strict `O`-linear isomorphism `[1]_(f,g) : F_g → F_f`. Prove that it is the unique strict
isomorphism commuting with the actions, that `[1]_(f,g) ∘ [1]_(g,h) = [1]_(f,h)`, and that it
identifies torsion, Tate modules, characters and division fields of §§2.1–2.4 and commutes with
base change (LT65, Theorem 1, equations (8)–(11), pp.382–383). Its reduction need not be the
identity, so it is not a marked isomorphism in the sense of §3.1.

**Checks.**

- `[1]_(f,f) = X`.
- For `f = πX + X^q` and `g = πX + X^q + πX²`, write `[1]_(f,g) = X + cX² + ⋯`. Comparing `X²`
  coefficients of `f ∘ φ = φ ∘ g` gives `c(π − π²) = π`, so `c = (1 − π)⁻¹`: the comparison is
  strict, integral and not `X`.
- Interpolation with `a = u` a unit gives the non-strict isomorphism `[u]_(f,g)`, with linear
  coefficient `u`.

*Needs:* §1.3; §0.2.

### Examples

Over `ℤ_p` with `π = p`, the series `(1 + X)^p − 1` gives `𝔾_m`, and every other Lubin–Tate series
for `p` gives a strictly isomorphic module. Over `W(𝔽_(p²))` with `π = −p`, `−pX + X^(p²)` gives the
height-one module used in the BKO layers.

### Dependencies

§0.1 (formal modules); Mathlib power-series substitution.

## Layer 2: Torsion, Tate modules and the Artin comparison

Throughout this layer `K/ℚ_p` is finite (a nonarchimedean local field of characteristic zero),
`O = O_K`, and Lubin–Tate series are taken for a uniformizer `π` and `q = #k_K`. Torsion is computed
by Weierstrass preparation; the Lubin–Tate character is compared with Tau Ceti's arithmetic Artin
map.

### 2.1 Finite-height torsion

Let `R` be a complete noetherian local `O_K`-algebra with residue field of characteristic `p`, and
`G` a formal `O_K`-module over `R` whose special fibre has finite `O_K`-height `h`. Prove that for
`m ≥ 1` the quotient `R[[X]]/([π^m]_G)` is free of rank `q^(hm)` over `R` with basis
`1, X, …, X^(q^(hm)−1)`, that the formal law makes `G[π^m] = Spf R[[X]]/([π^m]_G)` a finite locally
free commutative group scheme of rank `q^(hm)` with `O_K/π^m`-action, that
`0 → G[π^m] → G[π^(m+n)] → G[π^n] → 0` (second map `[π^m]`) is exact, and that the `p`-power levels
`G[p^r] = G[π^(er)]` are the levels of the connected `p`-divisible group attached to `G` by
`BarsottiTate.equivFormalLieGroup`, of height `h[K:ℚ_p]`. Coefficient base change and coordinate
isomorphisms identify these group schemes (VZ07, Definition 2.2 and the height discussion,
pp.60–61; Y95, §3, p.295). A proof route: the reduction of `[π^m]_G` has first nonzero term in
degree `q^(hm)`, so Weierstrass preparation applies and
`PowerSeries.IsWeierstrassFactorizationAt.algEquivQuotient` gives the basis.

**Checks.**

- At `m = 0` the quotient is `R[[X]]/(X) = R`, the trivial group of rank one.
- For the multiplicative module over `ℤ_p` and `m = 1`, `ℤ_p[[X]]/((1+X)^p − 1)` is free of rank
  `p = q^(1·1)` with `h = 1`.
- For `O_K = W(𝔽_(p²))`, `π = −p` and the Lubin–Tate module, `G[π]` has rank `p²`, and the same
  group viewed as `ℤ_p`-module torsion has `p`-height `2`: the ranks are `q^(hm)` at `π`-level `m`
  and `p^(h[K:ℚ_p]r)` at `p`-level `r`.
- For the additive module over `𝔽_p` (infinite height) `[π] = 0`, so `R[[X]]/([π])` is not finite:
  the finite-height hypothesis is needed.

*Needs:* §0.1; Mathlib `PowerSeries.exists_isWeierstrassFactorization`,
`PowerSeries.IsWeierstrassFactorizationAt.algEquivQuotient`; FiniteFlatGroupsAndIntegralPadicHodgeTheory
§§R07.1.12–R07.1.13 (`BarsottiTate.equivFormalLieGroup`); ModularCurves §0B.

### 2.2 The π-adic Tate module

Let `L/K` be finite and `G` a formal `O_K`-module over `O_L` of `O_K`-height `h`. Define
`T_π G = lim_m G[π^m](L̄)` with transition maps `[π]`, inside the point modules of §0.2. Prove that
`T_π G` is free of rank `h` over `O_K`, that `T_π G/π^m T_π G ≅ G[π^m](L̄)`, that the absolute
Galois group of `L` acts continuously and `O_K`-linearly, that `(T_π G ⊗ K)/T_π G ≅ G[π^∞](L̄)`, and
that the underlying `ℤ_p`-module of `T_π G` is `BarsottiTate.tateModule` of the associated
`p`-divisible group, of rank `h[K:ℚ_p]` (Y95, §3, p.295; LT65, Theorem 2 and the discussion before
it, pp.383–384). A proof route: in characteristic zero the levels are étale and `[π]` is surjective
on geometric points, so the elementary divisor theorem gives `G[π^m](L̄) ≅ (O_K/π^m)^h`; compatible
bases lift along the surjective transitions, and `p = π^e·unit` compares the cofinal systems.

**Checks.**

- For the multiplicative module over `ℤ_p`, `T_p G = ℤ_p(1)` with the cyclotomic action.
- For a Lubin–Tate module over `O_K`, `T_π G` has `O_K`-rank one and `ℤ_p`-rank `[K:ℚ_p]`.
- The direct limit `G[π^∞](L̄)` is divisible torsion and not free; a definition by direct limit
  fails the freeness statement.

*Needs:* §§2.1, 0.2; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.8
(`BarsottiTate.tateModule`).

### 2.3 Lubin–Tate division fields

Let `f` be a Lubin–Tate series over `O_K` and `m ≥ 1`. Prove that the points of `F_f[π^m](K̄)` not
killed by `π^(m−1)` are exactly the generators of the free rank-one `O_K/π^m`-module
`F_f[π^m](K̄)`; that for any such `t`, `K(t) = K(F_f[π^m])` is totally ramified of degree
`(q − 1)q^(m−1)` with uniformizer `t`; that `σ ↦ a` with `σ(t) = [a]_f(t)` is an isomorphism
`Gal(K(t)/K) ≅ (O_K/π^m)^×`; and that generators can be chosen with `[π]_f t_(m+1) = t_m`. For a
Lubin–Tate polynomial `f` the torsion `F_f[π^m](K̄)` is the set of roots of `f^{∘m}` in `K̄`, and the
degree and splitting statements are `finrank_adjoin_primitive_lubinTate_root`: if `t ∈ K̄` is a root
of `f^{∘m}` but not of `f^{∘(m−1)}`, then `[K(t):K] = (q − 1)q^(m−1)` and every root of `f^{∘m}`
lies in `K(t)` (LT65, Theorem 2 and its proof, pp.383–384). A proof route: for `πX + X^q` the root
`t₁` satisfies the Eisenstein polynomial `X^(q−1) + π`, so it is a uniformizer of `K(t₁)`; given a
uniformizer `t_m`, the polynomial `X^q + πX − t_m` is Eisenstein over `O_(K(t_m))` and a root
`t_(m+1)` is again a uniformizer with `[π]_f t_(m+1) = t_m`; the torsion action embeds the Galois
group in `(O_K/π^m)^×`, which is an equality by the degree; other `f` follow by §1.4.

**Checks.**

- For `m = 1` the degree is `q − 1`; for `K = ℚ_2`, `π = 2`, `f = 2X + X²`, the root `t = −2` lies in
  `ℚ_2`, matching `q − 1 = 1`, and at `m = 2` the roots of `f(X) = −2` satisfy the Eisenstein
  polynomial `X² + 2X + 2`, of degree `2 = (2 − 1)·2`.
- For `K = ℚ_p`, `π = p`, `f = (1 + X)^p − 1`, the roots of `f^{∘m}` are `ζ − 1` for `ζ^(p^m) = 1`,
  and the division field is `ℚ_p(ζ_(p^m))` of degree `(p − 1)p^(m−1)`.
- The index `m` counts `π`-torsion levels: the BKO field `Φ_n` of Layer 8 is the division field at
  `m = n + 1`, so `[Φ₀:Φ] = p² − 1`, not `1`.
- A root of `f^{∘m}` that is also a root of `f^{∘(m−1)}` generates a smaller field: `t = 0`
  generates `K`.

*Needs:* §§1.3, 1.4, 2.2; Mathlib `IntermediateField.adjoin`, `AlgebraicClosure`;
LocalFieldsRamification Layer 0.

### 2.4 The Lubin–Tate character

The Galois action on the rank-one `O_K`-module `T_π F_f` defines a continuous character
`χ_π : G_K → O_K^×` with `σ(t) = [χ_π(σ)]_f(t)` for every torsion point `t`. Prove that it factors
through `Gal(K_π/K)`, `K_π = ⋃_m K(F_f[π^m])`, where it is a topological isomorphism onto `O_K^×`;
that it does not depend on the choice of basis of `T_π F_f` or of the Lubin–Tate series for `π`
(through §1.4); and that its kernel is the subgroup fixing all torsion, whose fixed field is `K_π`
inside the chosen separable closure (LT65, Theorem 2, pp.383–384).

API:

- Two Galois elements have equal character values exactly when they act equally on every finite
  torsion level.
- For every `m` and every `t ∈ F_f[π^m](K̄)`, `σ(t) = [χ_π(σ)]_f(t)`.
- The comparison `[1]_(f,g)` of §1.4 intertwines the characters of `F_f` and `F_g`.
- Over a finite extension `L/K`, the character of the base-changed module is the restriction of
  `χ_π` to `G_L`.
- `Gal(K_π/K) ≅ O_K^×` as topological groups.
- Every coordinate isomorphism over `O_K` commuting with the actions gives the same character.

**Checks.**

- For `K = ℚ_p`, `π = p` and `f = (1 + X)^p − 1`, `χ_π` is the `p`-adic cyclotomic character.
- Modulo `π` the image is all of `k_K^×`, of order `q − 1`.
- Replacing a basis `v` of `T_π F_f` by `[u]v` with `u ∈ O_K^×` changes no character value.
- After adjoining `F_f[π^m]` the restricted image is `1 + π^m O_K`.

*Needs:* §§2.2, 2.3, 1.4.

### 2.5 Comparison with local reciprocity

Let `Art_K = TauCeti.ClassFieldTheory.artinMap K` be the arithmetic local Artin map. Prove that for
`x = π^r u` with `u ∈ O_K^×`, every lift `σ ∈ G_K` of `Art_K(x)` satisfies `χ_π(σ|_(K_π)) = u⁻¹`; in
particular `Art_K(π)` fixes `K_π`. Equivalently, for every `m ≥ 0` the norm group of
`K(F_f[π^m])/K` is `π^ℤ × U(K,m)`. For a Lubin–Tate polynomial `f` this norm-group statement is
`artinMap_fixes_lubinTate_roots_iff`: for `ϖ ∈ Kˣ` equal to `π` and `x ∈ Kˣ`, every lift of
`Art_K(x)` fixes every root of `f^{∘m}` if and only if `x ∈ ⟨ϖ⟩ · TauCeti.unitFiltration K m`
(LT65, §2, Theorem 3, its corollary and proof, pp.385–387). This compares the Lubin–Tate tower with
the existing reciprocity map and constructs no second one. A proof route: `π` is a norm from every
`K(t_m)` by the Eisenstein calculation of §2.3; the norm subgroups of Tau Ceti
(`TauCeti.ClassFieldTheory.exists_artinMap_mem_iff`) and the degree `(q − 1)q^(m−1)` identify the
norm group with `π^ℤ U(K,m)`; Lubin–Tate's uniformizer-comparison argument (LT65, Lemma 2) over the
completed maximal unramified extension, together with the unramified normalization of `Art_K`,
gives the inverse unit; continuity and density of `Kˣ` pass to the limit. The argument uses §1.2
directly and does not use §2.6.

**Checks.**

- For `K = ℚ_p`, `π = p` and `f = (1 + X)^p − 1`, the statement is the local Kronecker–Weber
  description: `ℚ_p(ζ_(p^m))` has norm group `p^ℤ × (1 + p^m ℤ_p)`, and `χ_cyc(Art(u)) = u⁻¹`, the
  normalization of ClassFieldTheory §2.6.
- At `m = 0` the right side is `π^ℤ × O_K^× = Kˣ` and the left side holds for every `x`, since the
  only root of `X` is `0`.
- With geometric normalization the unit formula would read `u` instead of `u⁻¹`; the norm-group
  statement is the same for both normalizations, so the unit formula is the discriminating test.
- `x = π²` fixes every Lubin–Tate tower for `π`, while for `π′ = uπ` with `u ≢ 1 mod π` the element
  `π` does not fix `K(F_(f′)[π′])` for a Lubin–Tate series `f′` for `π′`.

*Needs:* §§2.3, 2.4, 1.2; Tau Ceti `TauCeti.ClassFieldTheory.artinMap`,
`TauCeti.ClassFieldTheory.artinMap_restrict`, `TauCeti.ClassFieldTheory.exists_artinMap_mem_iff`,
`TauCeti.unitFiltration`; ClassFieldTheory Layers 6–8; LocalFieldsRamification Layers 1–2.

### 2.6 Change of uniformizer

Let `π′ = uπ` with `u ∈ O_K^×`. Prove that Lubin–Tate modules for `π` and `π′` become isomorphic
over the completion of the maximal unramified extension of `K`, by an isomorphism `θ` with
`θ^(Frob) = θ ∘ [u]` (Frobenius acting on coefficients), and that `χ_(π′) = χ_π · η_u`, where `η_u`
is the unramified character sending arithmetic Frobenius to `u`. The isomorphism need not descend
to `O_K`, and the two towers are different fields (LT65, §2, Lemma 2, Theorem 3 and its corollary,
pp.385–387). A proof route: solve the Frobenius-semilinear coefficient equations of Lemma 2; then
`χ_π(Art(u)) = u⁻¹`, `χ_π(Art(π)) = 1`, and `χ_(π′)(Art(π′)) = 1` determine the twist on inertia
and on a Frobenius lift.

**Checks.**

- For `u = −1` the twist `η_(−1)` sends Frobenius to `−1`.
- Evaluating at `Art(π′) = Art(u)Art(π)`: `χ_π(Art(π′)) = u⁻¹` and `η_u(Art(π′)) = u`, so
  `χ_(π′)(Art(π′)) = 1`, as §2.5 requires for `π′`.
- On units `v`, both `χ_π(Art(v))` and `χ_(π′)(Art(v))` equal `v⁻¹`, so `η_u` is trivial on
  inertia; twisting by `η_u⁻¹` instead would give `χ_(π′)(Art(π′)) = u⁻²`.

*Needs:* §§1.4, 2.5; LocalFieldsRamification Layers 0 and 2.

### Examples

For `K = ℚ_p` and `π = p` this layer recovers the cyclotomic tower and the cyclotomic character.
For `K = W(𝔽_(p²))[1/p]` and `π = −p`, the first division field has degree `p² − 1` and Galois group
`𝔽_(p²)^×`; the tower `K_π` has Galois group `O_K^×`.

### Dependencies

Layers 0–1; Tau Ceti's local Artin map and unit filtration; ClassFieldTheory Layers 6–8;
LocalFieldsRamification Layers 0–2; FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.1.8,
R07.1.12–R07.1.13; ModularCurves §0B.

## Layer 3: Marked deformations at finite height

Fix `K/ℚ_p` finite, a field `k` over `k_K`, a formal `O_K`-module `G₀` over `k` of finite height
`h ≥ 1`, and a complete noetherian local `O_K`-algebra `B` with residue field identified with `k`.
This layer proves lifting, rigidity and the `(h−1)`-dimensional tangent computation, and constructs
the universal deformation over `B[[t₁,…,t_(h−1)]]`. The residue field is not assumed algebraically
closed or perfect. For `O_K = ℤ_p`, perfect `k` and `B = W(k)` the result is the universal
Lubin–Tate deformation ring of BordismFormalGroups §F5.

### 3.1 Marked deformations

For a local artinian `B`-algebra `R` with residue field identified with `k`, define a deformation
of `G₀` over `R` as a formal `O_K`-module `G` over `R` together with an `O_K`-linear isomorphism
`ι : G ⊗_R k ≃ G₀`. A morphism of deformations is an isomorphism of formal `O_K`-modules over `R`
whose reduction is compatible with the two markings. Extend to complete noetherian local
`B`-algebras through compatible systems over the artinian quotients (LT66, §2, pp.51–52, and
Theorem 3.1, pp.56–57; Y95, §2, pp.294–295).

API:

- A law, an action and a special-fibre isomorphism determine a deformation; deformations are equal
  when law, action and marking agree.
- Local `B`-algebra maps induce base change of law and marking, compatible with identities and
  composites.
- The automorphism group of `G₀` acts on deformations by composing the marking, coherently.
- An integral coordinate isomorphism transports a deformation and its marking by its actual
  reduction.
- Over a complete base, deformations are equivalent to compatible systems over `R/𝔪_R^n`.

**Checks.**

- At height one the universal deformation has no parameters: every deformation over `R` is
  uniquely isomorphic to the base change of the one over `B`.
- Over `𝔽_p`, the multiplicative formal `ℤ_p`-module with the identity marking and the strict
  automorphism `[1 + p] = (1 + X)^(1+p) − 1` over `ℤ_p`: its reduction is `X + X^p + X^(p+1) ≠ X`,
  so it does not preserve the marking, although it is strict.
- For `k = 𝔽_(p²)`, a marking is an isomorphism defined over `𝔽_(p²)`; two lifts that become
  isomorphic only over `𝔽̄_p` are different objects of the functor over `B = W(𝔽_(p²))`.
- For ramified `F/F₀` with `O_K = O_(F₀)`, the base change `O_F[[t]]` of the height-two universal
  family over `O_(F₀^ur)` does not represent the functor on `O_F`-algebras over the smaller base;
  the coefficient ring is part of the problem.

*Needs:* §0.1; BordismFormalGroups §F1 (homomorphisms, base change).

### 3.2 The coefficient algebra of formal O-modules

Construct the graded `O_K`-algebra `Λ_O` representing formal `O_K`-module laws with fixed tangent
action in a coordinate: the quotient of the polynomial algebra on the coefficients of the law and
of all action series by the formal identities. Prove that `Λ_O` is a polynomial algebra over `O_K`
on one generator in each positive degree (grading by coefficient degree minus one), and that in
degree `q^j − 1` a generator can be chosen as the coefficient of `X^(q^j)` in `[π]`. Consequently
every formal `O_K`-module over `k` lifts to `B` (VZ07, Theorem 1.4 and proof, pp.58–59). This is
the `O_K`-analogue of the Lazard ring of BordismFormalGroups §F1; it differs by the action series
and by the distinguished `q`-power degrees. A proof route: compute the homogeneous relation module
in each degree from symmetric cocycles, separating `q`-power degrees from others by the factors
`a^n − a`, and use the logarithm over the fraction field to exclude torsion.

API:

- `O_K`-algebra maps `Λ_O → R` correspond to formal `O_K`-module laws over `R` in a coordinate,
  naturally in `R`.
- The universal law and action evaluate to the given coefficients; two maps agreeing on the
  universal coefficients are equal.
- In degree `q^j − 1` the `X^(q^j)`-coefficient of `[π]` generates the indecomposables.

**Checks.**

- The `XY` coefficient of the law has degree one.
- The `X^q` coefficient of `[π]` has degree `q − 1`.
- A residual law over `k` lifts to `B` by lifting the images of the polynomial generators, without
  assuming `k` algebraically closed.
- Different coordinate laws can give the same deformation class, so `Λ_O` is not the deformation
  ring of §3.6.

*Needs:* §0.1; BordismFormalGroups §F1 (Lazard ring, symmetric cocycle lemma).

### 3.3 Deformation cocycles

For a small extension `R′ → R` of local artinian `B`-algebras with kernel `I` annihilated by
`𝔪_(R′)`, define the `k`-vector space of cocycles of `G₀` with values in `I`: pairs consisting of a
symmetric correction `Δ(X,Y)` of the law and corrections `δ_a(X)` of every action series that
satisfy the linearized associativity, additivity and multiplicativity identities and leave every
linear coefficient fixed. A coordinate correction `ψ(X)` with zero constant term induces a
coboundary; its linear coefficient need not vanish. Define `H²_O(G₀; I)` as cocycles modulo
coboundaries (VZ07, §3, equations (3.1)–(3.7), p.62; LT66, §2, Propositions 2.4–2.6, pp.52–55).

API:

- Cocycles form a `k`-vector space; two cocycles with equal `Δ` and equal `δ_a` are equal.
- A coordinate correction induces the coupled law and action correction.
- A `k`-linear map `I → J` transports cocycles and coboundaries.
- Extracting `δ_π` detects the class through its low `q`-power coefficients.
- A change of residual coordinate transports the quotient isomorphically.

**Checks.**

- `I = 0` gives the zero space.
- The correction `ψ = iX` with `i ∈ I` is a coboundary: a marked infinitesimal coordinate change can
  have linear coefficient `1 + i`, and excluding it would make `H²_O` too large.
- A correction to the linear coefficient of `[a]` is rejected, since the tangent action is fixed.
- A correction `Δ` solving the linearized associativity alone need not extend to an action
  correction compatible with `[π]`: for ramified `O_K`, a bare formal-group cocycle does not give a
  formal-module cocycle.

*Needs:* §3.1.

### 3.4 Lifting and rigidity

Prove that for every small extension `R′ → R`, every deformation over `R` lifts to `R′`; that, once a
lift is fixed, isomorphism classes of lifts form a torsor under `H²_O(G₀; ker(R′ → R))`; and that a
homomorphism of formal `O_K`-modules of finite height over a local artinian base is determined by
its reduction, so a marked isomorphism, when it exists, is unique. These pass to complete local
bases by inverse limits (VZ07, Lemma 2.6, p.61, Proposition 3.2 and Lemma 3.3, pp.62–63; LT66,
Proposition 2.4 and its proof, pp.52–54). A proof route: lifts exist by §3.2; two lifts differ by a
cocycle and are isomorphic exactly when it is a coboundary; for rigidity, a correction killed by
the maximal ideal commutes with `[π]`, whose reduction has a nonzero term of degree `q^h`, which
forces it to vanish.

**Checks.**

- The zero homomorphism is determined by its reduction (it is the only lift of `0`).
- Over `R′ = k[ε]/(ε²) → k`, the lifts of `G₀` form a torsor under `H²_O(G₀; k)`, of dimension
  `h − 1` by §3.5.
- At infinite height rigidity fails: over `k[ε]/(ε²)` the additive formal `O_K`-module with
  `[a] = āX` has the endomorphism `εX^q` (it commutes with `[a]` because `ā^q = ā`), whose
  reduction is zero.

*Needs:* §§3.2, 3.3.

### 3.5 Finite-height tangent space

Prove that `H²_O(G₀; k)` has dimension `h − 1` over `k`; after a normalization of the reduced
`[π]`, the coefficients of `X^(q^i)` in `δ_π`, `1 ≤ i < h`, form a basis of its dual (VZ07,
Corollary 3.4, Lemma 3.5 and Proposition 3.6, pp.63–65; LT66, Proposition 2.6, pp.54–55). The
statement is over `k` itself. A proof route: normalize over a separable extension degree by degree
and compute on finite jets, where a class is a coboundary exactly when the remaining `δ_π` is a
series in `X^(q^h)`; descend the finite-dimensional linear equations to `k` jet by jet, using the
stabilization of their images (Mittag-Leffler) and rigidity for uniqueness, without interchanging
infinite products with field extensions.

**Checks.**

- At `h = 1` the dimension is `0`, not `1`.
- For the elliptic case `O_K = ℤ_p`, `h = 2`, the dimension is `1`, matching the one-parameter
  base of ModularCurves §7D.
- For `O_K = W(𝔽_(p²))` and the restriction to `ℤ_p` of a Lubin–Tate module (height two over
  `ℤ_p`), the `ℤ_p`-deformation space has dimension one while the `O_K`-deformation space has
  dimension zero.

*Needs:* §§3.4, 3.2.

### 3.6 The universal finite-height deformation

Prove that the deformation functor of §3.1 is represented on complete noetherian local
`B`-algebras by `B[[t₁,…,t_(h−1)]]` with a universal deformation: pullback gives a bijection, natural
in the base, between continuous local `B`-algebra maps and isomorphism classes of deformations,
and the marked comparison of each pullback is unique. Residue-field and coefficient extensions
induce specified comparison maps; the coordinates `t_i` are not canonical (LT66, Theorem 3.1 and
proof, pp.56–57, Proposition 3.3, pp.57–58; VZ07, Theorem 3.8 and proof, p.65; Y95, §2,
pp.294–295). A proof route: choose a lift over `B` and `h − 1` tangent directions from §3.5, build a
family over the truncations, and induct on artinian length using §§3.4–3.5.

**Checks.**

- At height one the representing ring is `B`.
- At height two there is exactly one parameter.
- For `O_K = ℤ_p`, `k` perfect and `B = W(k)` the representing ring is that of BordismFormalGroups
  §F5; for `k = 𝔽_p(t)` (imperfect) the theorem still applies with any specified `B`, and no Cohen
  ring is chosen.

*Needs:* §§3.4, 3.5.

### 3.7 Elliptic deformation comparison

For a supersingular elliptic curve `E₀` over an algebraically closed field `k` of characteristic `p`,
prove that formal completion at the zero section identifies the marked deformation functor of `E₀`
(ModularCurves §7D) with that of its connected height-two `p`-divisible group (ModularCurves §7F,
ST-1 and ST-2) and with the deformation functor of §3.1 for `O_K = ℤ_p`, `G₀ = Ê₀` and `B = W(k)`;
the representing rings `W(k)[[T]]` and `W(k)[[t₁]]` are isomorphic through this functor isomorphism.
Formal logarithms and completed endomorphisms commute with completion; a formal `O`-action on a
lift is not asserted to come from a global endomorphism (LT66, §3.5, pp.58–59). A proof route:
compose ModularCurves §§7C, 7F with `BarsottiTate.equivFormalLieGroup`, keeping the markings.

**Checks.**

- Both functors have one parameter, by §3.5 and ModularCurves §7D.
- An `O_F`-action on the formal group of a lift `E` (for instance the canonical lift of §6.1)
  extends to `E` only through elements of the global endomorphism ring of `E₀` (Serre–Tate), and
  that ring can meet `O_F` in `ℤ` alone: formal complex multiplication does not imply complex
  multiplication.
- The comparison identifies the parameters through the functor isomorphism, not by name: a
  coordinate change `t ↦ ut + ⋯` on one side is matched by the induced change on the other.

*Needs:* §§3.6, 2.1; ModularCurves §§7C, 7D, 7E, 7F; FiniteFlatGroupsAndIntegralPadicHodgeTheory
§R07.1.13; EllipticCurves Layer 1.

### Examples

For `G₀` the reduction of a Lubin–Tate module (height one) the deformation ring is `B`; for the
formal group of a supersingular elliptic curve over `𝔽̄_p` with `O_K = ℤ_p` it is `W(𝔽̄_p)[[t]]`;
for the restriction to `ℤ_p` of a height-one `W(𝔽_(p²))`-module it is `W(𝔽_(p²))[[t]]` over `ℤ_p`
but `W(𝔽_(p²))` as an `O_K`-module problem.

### Dependencies

§§0.1, 2.1; BordismFormalGroups §§F1, F5; ModularCurves §§7C–7F;
FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.13; EllipticCurves Layer 1.

## Layer 4: Honda theory and the elliptic comparisons

Honda's theory describes formal groups by the functional equation of their logarithm. The
Frobenius lift in the type operator is data, never suppressed notation. Over the unramified ring
`W(𝔽_(p²))` it identifies the explicit logarithm of the Lubin–Tate module for `±p`, and with the
recognition statement of §1.3 it shows that the formal group of a supersingular elliptic curve with
scalar Frobenius is a Lubin–Tate module. These results hold for every prime `p`.

### 4.1 Honda type operators

Let `O` be a complete discrete valuation ring of characteristic zero with fraction field `K` and
uniformizer `π`, let `q` be a power of `p`, and let `σ` be an endomorphism of `K` preserving `O` and
inducing the `q`-power map on the residue field (Honda's condition (F); `q` need not be the residue
cardinality). In the skew power-series ring `O_σ[[T]]` with `Ta = σ(a)T`, call
`u = π + Σ_(i≥1) c_i T^i` special. For `ℓ ∈ X·K[[X]]` put
`(u ⋆ ℓ)(X) = π ℓ(X) + Σ_(i≥1) c_i ℓ^(σ^i)(X^(q^i))`, where `ℓ^(σ^i)` applies `σ^i` to the coefficients;
`ℓ` is of type `u` when `u ⋆ ℓ ∈ π O[[X]]` (H70, §2, condition (F), special elements and type,
pp.220–223). Only finitely many terms contribute to each coefficient.

API:

- Each coefficient of `u ⋆ ℓ` is a finite sum of semilinearly twisted `q`-power terms.
- Two special elements with equal coefficients define the same operator and type predicate.
- Composition of operators realizes multiplication in `O_σ[[T]]`.
- A coefficient map intertwining the Frobenius lifts preserves types.
- `ℓ` has type `u` exactly when every coefficient of `u ⋆ ℓ` lies in `πO`.

**Checks.**

- Over `W(𝔽_(p²))` with `σ` the Frobenius lift and `q = p`, `σ² = 1`, so `T²` raises exponents to the
  `p²` power and acts trivially on coefficients.
- For `a` not fixed by `σ`, `T ⋆ (aX) = σ(a)X^q`, not `aX^q`.
- For `ℓ = Σ_(j≥0) (−p)^(−j) X^(p^(2j))` over `W(𝔽_(p²))`, `(p + T²) ⋆ ℓ = pX`: the coefficient of
  `X^(p^(2j))`, `j ≥ 1`, is `p(−p)^(−j) + (−p)^(−j+1) = 0`. Hence `ℓ` has type `p + T²`, and not type
  `p − T²`, for which the same coefficient is `2p(−p)^(−j)`, equal to `2/p ∉ pO` at `j = 2` for every
  prime `p`.
- A series with nonzero constant term is excluded: the infinite sum `Σ c_i ℓ^(σ^i)(X^(q^i))` would
  not be locally finite.

*Needs:* §0.1; BordismFormalGroups §F1 (logarithm over `ℚ`-algebras).

### 4.2 Honda's functional-equation integrality

Under (F), prove: a normalized logarithm `ℓ` of special type `u` defines an integral commutative
formal group law `ℓ⁻¹(ℓ(X) + ℓ(Y))`; two normalized logarithms of the same type have integral strict
comparison `ℓ₂⁻¹ ∘ ℓ₁`; for source type `u`, target type `v` and `C ∈ O`, the series
`ℓ_v⁻¹(C·ℓ_u)` is integral exactly when `vC = tu` for some `t ∈ O_σ[[T]]`. For `O` the integers of an
unramified extension of `ℚ_p`, `π = p`, `q = p` and `σ` the Frobenius lift (condition (F1)), prove
the converse: every formal group law over `O` has a type, and one of height `h` has a type
`p + Σ_(ν=1)^h b_ν T^ν` with `b_h` a unit (H70, Lemmas 2.3–2.4 and Theorems 2–3, pp.222–225;
Proposition 3.3, Theorem 4 and Proposition 3.5, pp.226–230). The converse is not used over ramified
coefficient rings (§7.5 shows why).

**Checks.**

- For the multiplicative group over `ℤ_p`, `ℓ = log(1 + X)` has type `p − T`:
  `p·log(1+X) − log(1+X^p) ∈ pℤ_p[[X]]`.
- The rational series `X + X²/p` is a logarithm over `ℚ_p` but of no special type over `ℤ_p`, and
  `ℓ⁻¹(ℓ(X) + ℓ(Y))` has nonintegral coefficient `−2/p` of `XY`: a logarithm alone does not give
  integrality.
- With `u = v` and `C = 1` the criterion holds with `t = 1`, giving the identity comparison.

*Needs:* §4.1; BordismFormalGroups §F1 (homomorphisms, strict isomorphisms).

### 4.3 The unramified Honda–Lubin–Tate comparison

Let `p` be prime, `O = W(𝔽_(p²))`, `q = p²` and `s ∈ {1, −1}`. Let `G` be a commutative formal group
law over `O` whose reduction satisfies `[sp]_Ḡ = X^q`, that is, its `q`-power Frobenius is `[sp]`.
Prove: (i) `[sp]_G` is a Lubin–Tate series for `sp`, so `G` carries a unique formal `O`-module
structure with `[sp] = [sp]_G`, and it is the Lubin–Tate module of §1.3 for `sp`; (ii) the
logarithm of `G` has type `p − sT²` for the Frobenius lift with `q = p`; (iii) `G` is strictly
isomorphic over `O` to the formal group with logarithm `ℓ_s = Σ_(j≥0) (sp)^(−j) X^(q^j)`, which is
itself a Lubin–Tate module for `sp` (H70, Lemma 4.2, p.231, Lemma 2.4 and Theorem 3, pp.223–225,
Proposition 3.3, pp.226–228; H68, Theorem 2, pp.204–205). Part (i) follows from §1.3, since
`[sp]_G` has linear coefficient `sp` and reduction `X^q`. For (ii), Honda's Lemma 4.2 applied to
`[sp]_G ≡ X^q mod p` gives `sp·ℓ_G − ℓ_G(X^q) ∈ pO[[X]]`, which is type `p − sT²` because `σ² = 1`
and `s² = 1`; `ℓ_s` has the same type, and §4.2 gives (iii). The strict isomorphism of (iii) need
not reduce to the identity, so it is not a marked isomorphism.

BKO21, Lemma 5.1(ii), p.956, pairs `a_(p²) = 2sp` with type `p + sT²` and parameter `−sp`; the
correct pairing is type `p − sT²` and parameter `sp`, since the parameter of a Lubin–Tate module
reduces to the `q`-power Frobenius. The case `a_p = 0` used in BKO21's local construction is
`s = −1`, type `p + T²` and parameter `−p`, on which the two readings agree.

**Checks.**

- For `s = −1` the type is `p + T²` and the parameter is `−p`; `ℓ_(−1) = Σ (−p)^(−j) X^(p^(2j))`
  satisfies `(p + T²) ⋆ ℓ_(−1) = pX` (§4.1).
- For `s = 1`, `ℓ₁ = Σ p^(−j) X^(p^(2j))` satisfies `p·ℓ₁ − ℓ₁(X^(p²)) = pX`, type `p − T²`.
- The sign is detected by `[sp]`: `−pX + X^(p²)` is a Lubin–Tate series for `−p` but not for `p`
  (§1.1), so the printed pairing "type `p + T²` with parameter `p`" fails for `s = 1`.

*Needs:* §§4.2, 1.3, 0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.1 (`frobeniusHom`)
and §R07.2.8 (`dieudonneEquivalenceFinite`) for the Dieudonné reading of scalar Frobenius.

### 4.4 The supersingular elliptic comparison

Let `p` be prime, `O = W(𝔽_(p²))` and `W` a Weierstrass curve over `O` with `Δ` a unit. If the
reduction `W̄` over `𝔽_(p²)` has `#W̄(𝔽_(p²)) = p² + 1 − 2sp` with `s ∈ {1, −1}`, prove that the
`p²`-power Frobenius of `W̄` equals `[sp]` and that `WeierstrassCurve.formalGroup W` has an
endomorphism which is a Lubin–Tate series for `sp`, namely `[sp]`
(`exists_lubinTate_endomorphism_formalGroup`); by §1.3 the elliptic formal group is the Lubin–Tate
`O`-module for `sp` in the parameter `z = −x/y`. In particular, for `E` over `ℤ_p` with good
reduction and `a_p(E) = 0`, `a_(p²) = a_p² − 2p = −2p`, so the formal group of `E ⊗ O` is a
Lubin–Tate module for `−p`. The comparison identifies logarithms (normalized by the invariant
differential), torsion and Tate modules, with the sign conventions of §8.5 (H70, Theorem 9 and its
proof, pp.240–241, which treats curves over `ℚ` by Lemma 4.2; H68, Corollary 4, p.212; BKO21, Lemma
5.1 and its application, pp.955–957). A proof route: the characteristic polynomial
`T² − a_q T + q = (T − sp)²` of EllipticCurves Layer 3 gives `(Frob_q − [sp])² = 0`, and the
endomorphism ring of `W̄` has no nonzero nilpotents by positivity of the degree, so
`Frob_q = [sp]`; its action on the parameter `z` is `z ↦ z^q`. No global complex multiplication of
`E` is inferred.

**Checks.**

- For `p = 2` and `y² + y = x³` over `ℤ_2` (`Δ = −27`, a unit), `#E(𝔽₂) = 3` so `a₂ = 0`, and
  `#E(𝔽₄) = 9 = 4 + 1 + 4`, so `s = −1`: the formal group over `W(𝔽₄)` is Lubin–Tate for `−2`.
- `s = 1` corresponds to `#W̄(𝔽_(p²)) = (p − 1)²` and parameter `p`; both values `±2p` are the
  extremes of the Hasse bound `|a_q| ≤ 2p`.
- For `E` over `𝔽_p` with `a_p = 0`, the `p`-power Frobenius satisfies `Frob_p² = −p` but is not a
  scalar; equality of traces does not give scalar Frobenius at level `p`, and the comparison is made
  over `𝔽_(p²)`.
- An ordinary reduction (`p ∤ a_q`) has `[p]_Ē` of height one, so no endomorphism of `Ê` reduces to
  `X^(p²)` with linear coefficient `±p`.

*Needs:* §§4.3, 1.3; Tau Ceti `WeierstrassCurve.formalGroup`, `WeierstrassCurve.map_formalGroup`;
Mathlib `WittVector`, `GaloisField`, `WeierstrassCurve.map`, `WeierstrassCurve.Affine.Point`;
EllipticCurves Layers 1 and 3; ModularCurves §§7C, 7E.

### Examples

Over `W(𝔽_(p²))` the Lubin–Tate module for `−p` has logarithm `Σ (−p)^(−j) X^(p^(2j))` and type
`p + T²`; the formal group of an elliptic curve over `ℤ_p` with `a_p = 0`, base changed to
`W(𝔽_(p²))`, is strictly isomorphic to it.

### Dependencies

§§0.1, 1.3; BordismFormalGroups §F1; EllipticCurves Layers 1 and 3; ModularCurves §§7C, 7E;
FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.1.1, R07.2.8; Tau Ceti's elliptic formal group.

## Layer 5: Lattice kernels and integral quotient isogenies

Let `F₀/ℚ_p` be finite with integers `O₀`, uniformizer `ϖ₀` and residue cardinality `q₀`, and let `G`
be a formal `O₀`-module of finite height over the integers `R` of a finite extension of `F₀`, with
`T = T_(ϖ₀) G` and `V = T ⊗ F₀` (§2.2). An embedded lattice above `T` is a finite subgroup of
torsion; this layer builds the integral quotient of `G` by it as a formal `O₀`-module with an
explicit coordinate, its Frobenius-twisted marking, its homomorphisms and its descent.

### 5.1 Tate lattices and finite kernels

Define an `O₀`-lattice in `V` as a finitely generated `O₀`-submodule spanning `V`. For `L ⊃ T` put
`C_L = L/T ⊂ V/T ≅ G[ϖ₀^∞](K̄)`. Prove that `L ↦ C_L` is a bijection between lattices containing `T`
and finite `O₀`-stable subgroups of geometric torsion, that a Galois element preserves `C_L`
setwise exactly when it preserves `L`, and that over the integers of any finite extension over which
`C_L` is setwise Galois stable, the schematic closure of `C_L` in a sufficiently large torsion level
of §2.1 is a finite flat `O₀`-stable subgroup scheme (Y95, §3, pp.295–296; G86, §5, p.324). The
closure is `schematicClosure_flat` of FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.20.

API:

- Lattices are equal when their subsets of `V` agree.
- For `T ⊂ L`, `L/T` gives the closed finite flat subgroup.
- An isomorphism of Tate modules transports lattices and kernels, compatibly with composites.
- Lattices above `T` correspond to finite `O₀`-stable geometric torsion subgroups.
- The setwise stabilizer of `C_L` in the Galois group equals that of `L`.

**Checks.**

- `L = T` gives the zero kernel.
- `L = ϖ₀^(−m) T` gives the whole `ϖ₀^m`-torsion.
- In rank two, an index-`q₀` lattice gives a line in `G[ϖ₀]`, of order `q₀`, not all of `G[ϖ₀]`, of
  order `q₀²`.
- A Galois element acting on a torsion line by a nontrivial residue scalar preserves the line
  setwise while moving its nonzero points: setwise stability is weaker than rationality of points.

*Needs:* §§2.1, 2.2; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.20
(`schematicClosure_flat`); ModularCurves §§0B, 0C.

### 5.2 Integral lattice quotients

For `L ⊃ T` and `R` the integers of a finite extension over which `C_L` is setwise stable, construct
a formal `O₀`-module `G_L` over `R` and an isogeny `g_L : G → G_L` of formal `O₀`-modules with kernel
exactly the finite flat subgroup of §5.1. Over a splitting extension, `g_L` is the normalized Serre
product `g_L(X) = Π_(c ∈ C_L) (X −_G c)`, a power series; if `#C_L = q₀^N` then `g_L` reduces to
`X^(q₀^N)` and `G_L` reduces to the `q₀^N`-Frobenius twist of the special fibre of `G`, which is its
marking (Y95, §3, pp.295–296; G86, §5, pp.324–325). The underlying `p`-divisible group of `G_L` is
`BarsottiTate.quotientFiniteFlatSubgroup` of FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.20a;
this target adds the formal `O₀`-module structure, the integral coordinate `g_L` and the marking. A
proof route: the factors are integral, so the product is integral and Galois invariant; Weierstrass
preparation of `g_L(X) − Z` over `R[[Z]]` gives a basis `1, X, …, X^(d−1)`, `d = #C_L`, over
`R[[g_L]]`, and a series invariant under translation by `C_L` has vanishing positive-degree
coefficients, by comparing values at the `d` distinct roots of the generic fibre; the invariant
series `g_L(G(X,Y))` and `g_L([a](X))` then factor through `g_L`, defining the quotient law and
action.

API:

- A homomorphism of formal `O₀`-modules killing `C_L` factors uniquely through `g_L`; factorizations
  are equal when their composites with `g_L` are.
- `L ⊂ M` induces `G_L → G_M`, and nested quotients agree with the canonical comparison.
- Coefficient extension commutes with the quotient and its marking.
- Transporting `G` and `L` by an isomorphism gives an isomorphic quotient; the Serre product
  coordinate changes by an integral coordinate isomorphism of the target.

**Checks.**

- For `L = T` the product is `X` and `G_L = G`.
- For `L = ϖ₀^(−m) T` the quotient is isomorphic to `G` through `[ϖ₀^m]`, and its marking is the
  `q₀^(hm)`-Frobenius twist recorded by the reduction of `[ϖ₀^m]`.
- A kernel of order `q₀^N` gives the twist `G₀^(q₀^N)`, which over a non-closed residue field is not
  identified with `G₀` without a comparison.
- For the multiplicative group, `X −_G c = (X − c)/(1 + c)`, so the Serre product
  `Π (X − c)/(1 + c)` differs from the monic product `Π (X − c)` by a unit.

*Needs:* §5.1; §0.2; Mathlib `PowerSeries.exists_isWeierstrassFactorization`,
`PowerSeries.IsWeierstrassFactorizationAt.algEquivQuotient`; FiniteFlatGroupsAndIntegralPadicHodgeTheory
§R07.1.20a; ModularCurves §0C.

### 5.3 Homomorphisms in the lattice isogeny class

For lattice quotients `G_(L₁)`, `G_(L₂)` of a fixed `G`, prove that conjugation by the `g_L`
identifies `Hom(G_(L₁), G_(L₂))` with `{a ∈ End(G) ⊗ F₀ : aL₁ ⊂ L₂}`, compatibly with composition,
scalars and coefficient extension; isomorphisms correspond to `aL₁ = L₂`, and `End(G_L)` is the
multiplier ring of `L` (Y95, §3, p.296). This concerns the known isogeny class; no full faithfulness
of Tate modules is used. A proof route: a homomorphism conjugates to a rational endomorphism
carrying `L₁` into `L₂`; conversely, clearing a denominator `b`, the lattice inclusion makes the
integral map kill the kernel needed for the factorization of §5.2.

**Checks.**

- The zero map corresponds to `a = 0`.
- For `L₁ = L₂ = T`, the statement is `End(G) = {a : aT ⊂ T}`.
- For `L₂ = ϖ₀^(−1) L₁`, multiplication by `ϖ₀^(−1)` is an isomorphism `G_(L₁) ≅ G_(L₂)`, inverse to
  the comparison induced by `[ϖ₀]`.

*Needs:* §5.2; §2.2.

### 5.4 Descent of lattice quotients

For `G` defined over the integers of `K` and a lattice `L ⊃ T`, prove that the normalized product
`g_L` and the quotient `G_L` descend to the integers of the fixed field of the setwise stabilizer of
`C_L`, equivalently of `L`; and that for a Lubin–Tate module with CM by `O_F`, a lift of
`Art_F(a)`, `a ∈ F^×`, carries `L` to `a⁻¹L` (Y95, §§3–4, pp.295–297; G86, §5, pp.324–325). Fields of
moduli of the marked quotient are the subject of §6.6.

**Checks.**

- Setwise stability controls descent: in the Lubin–Tate case at level one, a cyclic kernel of order
  `q₀` is defined over a field of degree `q₀ + 1` over `F` in the unramified quadratic case (§7.1),
  while its nonzero points generate a field of degree `q_F − 1`.
- For `a ∈ O_F^×` with `aL = L` the Galois action fixes the quotient.
- The inverse in `a⁻¹L` comes from `χ(Art(a)) = a⁻¹` (§2.5). The stabilizer condition is symmetric
  (`aL ∼ L` exactly when `a⁻¹L ∼ L`), so fields of definition do not see it; the action on marked
  classes does: for `L = L_1` in the unramified quadratic case and `a` of order `q₀ + 1` in
  `O_F^×/O_1^×`, the classes of `aL` and `a⁻¹L` differ as soon as `q₀ + 1 > 2`.

*Needs:* §§5.1, 5.2, 2.5.

### 5.5 Elliptic quotient comparison

If `G` is the formal completion of an elliptic curve over `R` and `C_L` is the completion of a finite
flat subgroup supported at the zero section of the special fibre, prove that the completion of the
elliptic quotient of ModularCurves §2B is canonically isomorphic to `G_L`, and that the completed
elliptic isogeny and `g_L` differ by this integral target coordinate; the induced maps on torsion,
Tate modules and logarithms agree (BKO21, §5, pp.957–959, for the use of this transport).

**Checks.**

- For the zero subgroup both sides are the identity.
- For the kernel of `[p]` both sides are `[p]` up to the target coordinate.
- A subgroup not supported at the zero section of the special fibre (an étale subgroup of an
  ordinary curve) is not a subgroup of the formal group, and the comparison does not apply.

*Needs:* §5.2; §3.7; ModularCurves §§2B, 7C; EllipticCurves Layer 1.

### Examples

For a Lubin–Tate `O_F`-module `H` restricted to `O₀`, the lattices `ϖ₀^(−s)O₀t + T` give the
quasi-canonical quotients of Layer 6; for the multiplicative group over `ℤ_p` the lattice
`p⁻¹ℤ_p(1)` gives the quotient by `μ_p`, isomorphic to `𝔾̂_m` through `[p]`.

### Dependencies

§§0.2, 2.1, 2.2, 2.5, 3.7; FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.1.20–R07.1.20a;
ModularCurves §§0B, 0C, 2B, 7C; EllipticCurves Layer 1.

## Layer 6: Canonical and quasi-canonical lifts

Let `F/F₀` be a finite extension of finite extensions of `ℚ_p`, with integers `O_F`, uniformizer
`π_F` and residue field `k_F`. This layer constructs the canonical lift with its CM action, its
lattice quotients (quasi-canonical lifts) with Frobenius markings, classifies them, and identifies
their fields of moduli by local class field theory.

### 6.1 The canonical lift

Let `H` be the Lubin–Tate `O_F`-module of `[π_F] = π_F X + X^(#k_F)`, restricted to `O₀ = O_(F₀)`.
Prove that `H` is a formal `O₀`-module of height `[F:F₀]` with CM by `O_F`, and that over a complete
unramified coefficient ring with specified residue embedding it is the unique marked lift of its
special fibre with its `O_F`-action: any two marked lifts with `O_F`-action are uniquely isomorphic
(G86, §2, Proposition 2.1, p.322; Y95, §4, pp.296–297). A proof route: the `O_F`-module deformation
problem has height one, so §3.6 gives no parameters.

API:

- The action of `O_F` has linear coefficient the given embedding.
- Two marked height-one `O_F`-lifts over the same coefficient ring are uniquely isomorphic.
- The lift and its `O_F`-action commute with coefficient extension.
- Transport by a residual `O_F`-linear isomorphism records the new marking.
- `T_(π_F) H` is free of rank one over `O_F` and of rank `[F:F₀]` over `O₀`.

**Checks.**

- A quadratic `F/F₀` gives `O₀`-height two.
- The endomorphism ring of `H` over `O_F` is `O_F` (level zero).
- Changing the residual CM embedding by the nontrivial automorphism of a quadratic `F` changes the
  marked problem: the conjugate lift is not isomorphic to `H` compatibly with both the marking and
  the given embedding.
- `H` and its marking are defined over `O_F` with residue field `k_F`, before any completion of the
  maximal unramified extension.

*Needs:* §§1.3, 3.6, 2.2.

### 6.2 Frobenius-marked quasi-canonical lifts

For an `O₀`-lattice `L` in `V = T ⊗ F₀ ≅ F` containing `T`, define `H_L` as the lattice quotient of
§5.2, with its marking to the `q₀^N`-Frobenius twist of the special fibre when `[L:T] = q₀^N`. Extend
to all lattices by multiplying by a power of `π_F` and comparing markings through
`[π_F] ≡ X^(#k_F)`; the invariant is the `π_F^ℤ`-class of `L` with its Frobenius-twist component.
Its endomorphism order is `O_L = {a ∈ F : aL ⊂ L}`. In the quadratic case a quasi-canonical lift of
level `s` is one with `O_L = O_s` (§6.4) (Y95, §4, pp.296–298; G86, §5, pp.324–325).

API:

- The quotient carries the rational CM action of `F` and the Frobenius marking.
- `O_L` embeds in `End(H_L)` with tangent the embedding of `F`, and equals it.
- `π_F`-homothetic lattices give coherently identified marked quotients in their twist components.
- Coefficient extension preserves the quotient, marking and order.
- Changing the coordinate of `H` transports the lattice and marking and gives the same moduli point.
- The same lattice class in the same twist component gives the same marked deformation class.

**Checks.**

- `L = T` gives the canonical lift.
- For quadratic `F` the level-one quotient has the proper order `O₀ + ϖ₀ O_F`.
- Multiplication by `π_F` shifts the Frobenius exponent by the residue degree `[k_F : k_(F₀)]`.
- A unit `a ∈ O_F^×` with `aL ≠ L` gives an isomorphic underlying quotient but a different marked
  deformation.

*Needs:* §§6.1, 5.2, 5.3.

### 6.3 Marked and unmarked classification

Prove that unmarked isomorphism classes of the `H_L` correspond to `F^×`-homothety classes of
lattices, equivalently to `O_F^×`-orbits of `π_F^ℤ`-classes; that within a common twist component two
marked lifts are isomorphic exactly when their `π_F^ℤ`-classes agree; and that the unmarked class is
determined by the order `O_L` together with the isomorphism class of `L` as `O_L`-module (Y95, §4,
Propositions 1–2 and proofs, p.297; corollary, p.298). A proof route: by §5.3 an isomorphism is
multiplication by some `a ∈ F^×`; its reduction is `[a]` on the marked fibre, which is the identity
only for `a = 1`, since the residual `O_F`-action is faithful.

**Checks.**

- For `L₁ = T` and `L₂ = uT`, `u ∈ O_F^×`, the classes coincide (`uT = T`).
- For `L₂ = aL₁` with `a ∉ π_F^ℤ O_(L₁)^×`, the unmarked lifts are isomorphic and the marked ones are
  not.
- Equality of orders alone does not classify lattices outside the quadratic case: for cubic `F/F₀`
  the order `O = O₀ + ϖ₀O_F` is not Gorenstein (`O_F/ϖ₀O_F` has length `3 ≠ 2·1`), so its trace dual
  `O^∨` has multiplier order `O` without being free over `O` (Y95, Proposition 4); in the quadratic
  case every proper lattice is free (§6.5).

*Needs:* §§6.2, 5.3, 3.4.

### 6.4 Quadratic orders

For quadratic `F/F₀` and `s ≥ 0` define `O_s = O₀ + ϖ₀^s O_F`. Prove that every `O₀`-order in `O_F` is
exactly one `O_s`, that the conductor of `O_s` is `ϖ₀^s O_F`, and that for `s ≥ 1`,
`O_s^× = O₀^×(1 + ϖ₀^s O_F)` (G86, §5, Proposition 5.3, p.325; Y95, §5, Proposition 4, p.300). A proof
route: with an integral basis `1, α` of `O_F`, an order containing `O₀` is `O₀ + ϖ₀^s O₀α`.

API:

- `x ∈ O_s` exactly when `x = a + ϖ₀^s b` with `a ∈ O₀`, `b ∈ O_F`.
- `O_s = O_t` exactly when `s = t`.
- `O₀`-orders in `O_F` correspond to natural numbers `s`.
- For `s ≥ 1` the unit group is `O₀^×(1 + ϖ₀^s O_F)`.
- An `F₀`-isomorphism of quadratic fields transports every `O_s`.

**Checks.**

- `O_0 = O_F` with conductor `O_F`.
- `O_1` is a proper suborder for every quadratic `F/F₀`.
- If `F/F₀` is ramified, `ϖ₀^s O_F` has `π_F`-valuation `2s`, not `s`.
- At `s = 0` the formula `O₀^×(1 + O_F)` is wrong: `1 + O_F` contains `0`.

*Needs:* §6.2; LocalFieldsRamification Layer 0.

### 6.5 Quadratic level classification

For quadratic `F/F₀`, prove that every proper `O_s`-lattice in `F` is free of rank one over `O_s`;
hence there is exactly one unmarked quasi-canonical class of each level `s`, and its marked classes
form a simply transitive `O_F^×/O_s^×`-set in each twist component. A representative is
`L_s = ϖ₀^(−s) O₀ t + T` for a generator `t` of `T`, with multiplier order `O_s` (Y95, §5,
Proposition 4, p.300; G86, §5, Proposition 5.3, p.325). A proof route: quadratic orders are
Gorenstein, and Yu's Proposition 4 applies; or normalize a lattice to contain `1` with minimal
valuation and compute in an integral basis.

**Checks.**

- Level zero is the canonical lift, with a single marked class in its component.
- For `L_s`, `a ∈ O_F` preserves `L_s` exactly when `a ∈ O_s`; at `s = 1`, `a = α` (a generator of
  `O_F` over `O₀`) does not.
- The marked classes of level `s ≥ 1` number `[O_F^× : O_s^×]`, which is `q₀^(s−1)(q₀ + 1)` or `q₀^s`
  (§7.1).

*Needs:* §§6.4, 6.3, 6.1.

### 6.6 The field of moduli of a marked quasi-canonical lift

Let `k_F` be finite and `B = O_(F^ur)`, and fix a universal deformation of the special fibre over
`B[[t₁,…,t_(n−1)]]`, `n = [F:F₀]` (§3.6). For a quasi-canonical lift `H_L` let `m_L` be its marked
modulus. Prove that the smallest field containing `F` over which this marked deformation is defined
is `M_L = F(m_L)`, the class field of `π_F^ℤ O_L^× ⊂ F^×` under the arithmetic Artin map; the
statement does not depend on the universal coordinate. After completion of the maximal unramified
extension it gives Gross's formulation. It does not assert minimality among fields not containing
`F` (Y95, §4, Theorem 1 and proof, p.297; G86, §5, Proposition 5.3, pp.325–326). A proof route: a lift
of `Art_F(a)` sends `m_L` to `m_(a⁻¹L)` (§5.4), which equals `m_L` exactly when `a ∈ π_F^ℤ O_L^×` by
§6.3; ClassFieldTheory Layer 8 identifies the field, and representability descends the marked
module.

**Checks.**

- For the canonical lift (`O_L = O_F`) the field is `F`.
- For quadratic level `s ≥ 1` the field depends only on `O_s` and `π_F`.
- Forgetting the marking changes the answer: for quadratic level `s ≥ 1` all `Gal(M_s/F)`-conjugates
  of `H_(L_s)` are isomorphic as unmarked modules (§6.3), whereas the marked moduli `m_(aL_s)`,
  `a ∈ O_F^×/O_s^×`, are pairwise distinct; a field of definition of an unmarked model need not
  contain `M_s`.

*Needs:* §§6.3, 5.4, 2.5, 3.6; ClassFieldTheory Layer 8.

### Examples

For quadratic unramified `F/F₀` the level-one lifts are `q₀ + 1` marked classes permuted simply
transitively by `Gal(M_1/F)`; for ramified `F/F₀` there are `q₀`.

### Dependencies

§§1.3, 2.2, 2.5, 3.4, 3.6, 5.2–5.4; ClassFieldTheory Layer 8; LocalFieldsRamification Layer 0.

## Layer 7: Quadratic degrees, the primed tower and boundary tests

This layer computes the quadratic marked field degrees for unramified and ramified `F/F₀`, proves
that the positive-level modulus is a uniformizer, specializes to the BKO primed tower, gives the
ramified example showing that §4.3 needs an unramified base, and computes neighbouring lattices.

### 7.1 Quadratic ring-class degrees

Let `F/F₀` be quadratic, `q₀ = #k_(F₀)`, `π_F` fixed and `s ≥ 1`, and let `M_s` be the field of §6.6
for level `s`. Prove that `M_s/F` is totally ramified with norm group `π_F^ℤ O_s^×`, that
`Gal(M_s/F) ≅ O_F^×/O_s^× ≅ (O_F/ϖ₀^s O_F)^×/(O₀/ϖ₀^s O₀)^×`, and that
`[M_s : F] = q₀^(s−1)(q₀ + 1)` when `F/F₀` is unramified and `q₀^s` when it is ramified; `M_0 = F`
separately. Residue characteristic two is included (G86, Proposition 5.3(2), p.325; Y95, §4,
Theorem 1, p.297). A proof route: the unit formula of §6.4 and local reciprocity; count units in
`O_F/ϖ₀^s O_F`, of order `(q₀² − 1)q₀^(2s−2)` when unramified and `(q₀ − 1)q₀^(2s−1)` when ramified,
and divide by `(q₀ − 1)q₀^(s−1)`.

**Checks.**

- At `s = 1` the degree is `q₀ + 1` (unramified) and `q₀` (ramified).
- At `s = 2`, unramified: `(q₀² − 1)q₀²/((q₀ − 1)q₀) = (q₀ + 1)q₀ = q₀^(2−1)(q₀ + 1)`.
- For `F₀ = ℚ₂` and `F = ℚ₂(√−1)` (ramified) the level-one degree is `2`; for `F = ℚ₂(√−3)`
  (unramified) it is `3`.
- The positive-level formula at `s = 0` would give `(q₀ + 1)/q₀`, not an integer; level zero is
  `M_0 = F`.

*Needs:* §§6.6, 6.4, 6.5; LocalFieldsRamification Layer 1; ClassFieldTheory Layer 8.

### 7.2 The quasi-canonical modulus is a uniformizer

In the quadratic case let `B = O_(F^ur)` and fix a universal height-two deformation over `B[[t]]`
(§3.6). Prove that for every quasi-canonical lift of level `s ≥ 1` its marked modulus `t_s` is a
uniformizer of `M_s`: with `v_F(π_F) = 1`, `v_F(t_s) = 1/[M_s : F]`, that is,
`1/(q₀^(s−1)(q₀ + 1))` when unramified and `1/q₀^s` when ramified (G86, Proposition 5.3(3) and its
proof, pp.325–326; Y95, Theorem 2′ and its `n = 2` case, pp.301–302, with proof in §§9–10,
pp.305–309). A proof route: factor the level-`s` quotient into `s` quotients of degree `q₀` and follow
the Newton polygons of the `ϖ₀`-series through them; a change of universal coordinate has unit
linear term and constant term in `𝔪_B`, and `v_F(t_s) < v_F(𝔪_B)` for `s ≥ 1`, so the valuation is
independent of the coordinate.

**Checks.**

- For BKO (`F = Φ`, `F₀ = ℚ_p`, unramified) at `s = 1`, `v_Φ(t₁) = 1/(p + 1)`.
- At `s = 0` the canonical lift has modulus in `𝔪_B`, of valuation at least `1`; no reciprocal-degree
  formula is asserted there.
- In the ramified case at `s = 1`, `v_F(t₁) = 1/q₀`.

*Needs:* §§7.1, 3.6, 5.2.

### 7.3 The BKO quasi-canonical fields

Let `p ≥ 5`, `Φ/ℚ_p` unramified quadratic, `O = O_Φ`, `π = −p`, `κ = χ_π` and `H` the canonical lift.
For a generator `t` of `T_π H` and `s ≥ 1` put `L_s = p^(−s)ℤ_p t + T`, `H_s = H_(L_s)` and
`O_s = ℤ_p + p^s O`, and let `Ψ′_s` be the field of moduli of §6.6. Prove that `Ψ′_s` is the fixed
field of `κ⁻¹(ℤ_p^×(1 + p^s O))`, equivalently the class field of `(−p)^ℤ ℤ_p^×(1 + p^s O)`, of degree
`p^(s−1)(p + 1)` over `Φ`; that `End(H_s) = O_s`; that `Ψ′_s` does not depend on `t`; and that
`Ψ′_s ⊂ Ψ′_(s+1)`. Put `Ψ′_0 = Φ` (BKO21, §5.0.2, pp.958–959; G86, Proposition 5.3, p.325; Y95, §4,
Theorem 1, p.297).

API:

- `Ψ′_s` is a subfield of the fixed separable closure, with fixing subgroup
  `κ⁻¹(ℤ_p^×(1 + p^s O))`.
- Replacing `t` by `ut`, `u ∈ O^×`, leaves `Ψ′_s` unchanged.
- `s ≤ r` gives `Ψ′_s ⊂ Ψ′_r`, compatible with restriction.
- Integral coefficient extension preserves the marked modulus and the order `O_s`.
- Transport of the coordinate of `H` and of its Tate lattice preserves the marked class and its
  field.

**Checks.**

- `[Ψ′_1 : Φ] = p + 1`, equal to `6` at `p = 5`.
- `[Ψ′_2 : Ψ′_1] = p`.
- `Ψ′_0 = Φ` has degree one, not `p^(−1)(p + 1)`.
- The first cyclic kernel is defined over `Ψ′_1` while its nonzero points are not rational there:
  they generate the first division field, of degree `p² − 1 > p + 1`.

*Needs:* §§7.1, 6.2, 6.5, 2.4.

### 7.4 The infinite primed tower

For `Ψ′_∞ = ⋃_s Ψ′_s`, prove that `κ` induces `Gal(Ψ′_∞/Φ) ≅ O^×/ℤ_p^×`, and that Teichmüller lifts and
the logarithm of LocalFieldsRamification Layer 1 identify this group with `μ_(p+1) × ℤ_p`; the tame
factor is canonical as the prime-to-`p` torsion, while an isomorphism with `ℤ/(p+1) × ℤ_p` needs a
generator and a basis of the minus line (BKO21, §5.0.2, pp.958–959). A proof route:
`⋂_(s≥1) O_s^× = ℤ_p^×`, `O^× = μ_(p²−1) × (1 + pO)`, `ℤ_p^× = μ_(p−1) × (1 + pℤ_p)`, and `pO/pℤ_p` is free
of rank one.

**Checks.**

- The torsion subgroup has order `(p² − 1)/(p − 1) = p + 1`, not `p² − 1`.
- The group is not `ℤ_p` alone: its tame part survives.
- At `p = 5` the finite quotients `Gal(Ψ′_s/Φ)` have orders `6, 30, 150` for `s = 1, 2, 3`.

*Needs:* §§7.3, 2.4; LocalFieldsRamification Layer 1.

### 7.5 A ramified boundary example for Honda's comparison

Prove that the unramified hypothesis of §4.3 cannot be dropped: over `O_(Ψ′_1)`, which is totally
ramified of degree `p + 1` over `O`, the level-one quasi-canonical lift `H_1` has special fibre with
`q`-power Frobenius `[−p]` and height two, but its endomorphism ring over any finite extension is
`ℤ_p + pO`, not `O`; hence it is not isomorphic over any finite extension to a Lubin–Tate
`O`-module, although `[−p]_(H_1)` reduces to the `p²`-power Frobenius modulo the maximal ideal of
`O_(Ψ′_1)` (G86, §5, Proposition 5.3, p.325; Y95, §§3–4, pp.295–298). A proof route: the canonical law for
`−p` has coefficients in `ℤ_p`, the level-one product reduces to the relative `p`-Frobenius, §5.3
computes the endomorphism ring, and an isomorphism to a Lubin–Tate `O`-module would transport the
action of `O`.

**Checks.**

- `[O_(Ψ′_1) : O] = p + 1`, and `v_(Ψ′_1)(−p) = p + 1 > 1`, so `−p` is not a uniformizer there.
- The endomorphism ring `ℤ_p + pO` has index `p` in `O`.
- The reduction of `[−p]_(H_1)` modulo the maximal ideal of `O_(Ψ′_1)` is `X^(p²)`, so the residual
  hypothesis of §4.3 holds; what fails is that `O_(Ψ′_1)` is ramified over `O` and `−p` is not a
  uniformizer there, so neither §1.3 nor condition (F1) applies, and the conclusion of §4.3 is false
  for `H_1`.

*Needs:* §§4.3, 7.3, 5.3.

### 7.6 Neighbouring lattices

In the BKO setting, the `p + 1` lattices containing a rank-two `ℤ_p`-lattice `L` with index `p` give
the neighbouring quotient isogenies. Prove that at level `s ≥ 1` one neighbour has level `s − 1` up
to `Φ^×`-homothety and `p` have level `s + 1`; that at level zero all `p + 1` have level one; that the
stabilizer of the level-`s` class acts transitively on the `p` outward neighbours; and that
`O^×/ℤ_p^×(1 + pO)`, of order `p + 1`, acts simply transitively on the neighbours of the canonical
lattice (BKO21, §§5.0.1–5.0.2, pp.957–959; G86, §5, p.325). The Hecke and local-point recurrences
built from these isogenies belong to the downstream roadmap AnticyclotomicLocalUnits.

**Checks.**

- At `s = 0` there is no level `−1` neighbour.
- The lines of `p⁻¹L/L ≅ 𝔽_p²` number `p + 1`.
- At `s ≥ 1` the inward neighbour of `L_s` is `p⁻¹L_(s−1) = p^(−s)ℤ_p t + p⁻¹T`: its line in
  `p⁻¹L_s/L_s` is the image of `p⁻¹T`, of order `p`, and the other `p` lines are permuted by
  `(1 + p^s O)/(1 + p^(s+1) O)`, of order `p²`, through its quotient of order `p`.

*Needs:* §§6.5, 5.2, 7.3.

### Examples

At `p = 5`: `[Ψ′_1:Φ] = 6`, `[Ψ′_2:Φ] = 30`; the six level-one lifts are permuted simply
transitively by `Gal(Ψ′_1/Φ)`; the canonical lattice has six neighbours, all of level one.

### Dependencies

§§2.4, 3.6, 4.3, 5.2, 5.3, 6.2–6.6; LocalFieldsRamification Layer 1; ClassFieldTheory Layer 8.

## Layer 8: The BKO tame and anticyclotomic towers

Throughout this layer `p ≥ 5`, `Φ/ℚ_p` is unramified quadratic with integers `O`, `π = −p`, and `H`
is the Lubin–Tate `O`-module for `π` (§§1.3, 6.1). This layer builds the character data, the two
principal-unit eigendirections, the fixed fields `Θ_n` and `Ψ_n`, and the comparisons with the primed
tower of §7.3.

### 8.1 Character data

Define `Φ_n = Φ(H[π^(n+1)])` for `n ≥ 0`, `Φ_(−1) = Φ` and `Φ_∞ = ⋃_n Φ_n`, inside the fixed separable
closure. Prove that the restriction of the character of §2.4 is an isomorphism
`κ : Gal(Φ_∞/Φ) ≅ O^×`; with `Δ = κ⁻¹(μ_(p²−1))` and `Γ = κ⁻¹(1 + pO)`, that restriction
`Δ → Gal(Φ₀/Φ)` is an isomorphism and `Gal(Φ_∞/Φ) = Δ × Γ` canonically; and define `ω = κ|_Δ`, the
Teichmüller character with values in `O^×` (BKO21, §2, pp.947–948; LT65, Theorem 2, pp.383–384).

API:

- `Φ_n` is the finite subfield generated by the `π^(n+1)`-torsion.
- `κ` is a continuous isomorphism onto `O^×`, induced by `T_π H`.
- Multiplication gives `Δ × Γ ≅ Gal(Φ_∞/Φ)`.
- `ω` takes values in `μ_(p²−1) ⊂ O^×`.
- Data are equal when the actions agree on all finite torsion levels.
- Isomorphisms of the coefficient data and of separable closures transport fields and characters;
  coordinate changes for the same `π` and changes of Tate basis give the same fields.

**Checks.**

- `[Φ₀ : Φ] = p² − 1`, not `p + 1`.
- `[Φ₁ : Φ] = (p² − 1)p²`.
- `Δ` has order `p² − 1`, and `Γ ≅ 1 + pO ≅ ℤ_p²` has no nontrivial torsion.
- For a Teichmüller unit `ζ`, `ω` of a lift of `Art_Φ(ζ)` is `ζ⁻¹` (§2.5).

*Needs:* §§2.3, 2.4, 2.5; LocalFieldsRamification Layer 1.

### 8.2 Cyclotomic and anticyclotomic directions

Let `c` be the nontrivial automorphism of `Φ/ℚ_p`. Prove that conjugation by a lift of `c` acts on
`κ`-values by `c` and preserves `Γ`; that under the logarithm `1 + pO ≅ pO` of LocalFieldsRamification
Layer 1 (valid since `(p−1)·1 > 1`), the images `G⁺` and `G⁻` of `(1+c)/2` and `(1−c)/2` satisfy
`Γ = G⁺ × G⁻`, `κ(G⁺) = 1 + pℤ_p` and `κ(G⁻) = {u ∈ 1 + pO : N_(Φ/ℚ_p)(u) = 1}`, each free of rank one
over `ℤ_p`; the factors are canonical, while isomorphisms with `ℤ_p` need a basis (BKO21, §2,
pp.947–948; LT65, §1, Theorem 1, pp.382–383). A proof route: `−p ∈ ℚ_p`, so coefficient conjugation
of `H` composed with the same-`π` comparison of §1.4 gives `cκ(σ) = κ(c̃σc̃⁻¹)`; `log ∘ N = Tr ∘ log`
identifies the minus line with the trace-zero line.

API:

- `G⁺` and `G⁻` are closed subgroups of `Γ`, and multiplication `G⁺ × G⁻ → Γ` is a topological
  isomorphism.
- A principal-unit `κ`-value lies in `κ(G⁻)` exactly when its norm to `ℚ_p` is one.
- The factors are determined by the conjugation equations and are transported by coefficient
  isomorphisms.
- Changing a `ℤ_p`-basis of a line rescales only the coordinate.

**Checks.**

- Every element of `1 + pℤ_p` lies in `κ(G⁺)`.
- For trace-zero `z ∈ pO`, `exp(z) ∈ κ(G⁻)`.
- `G⁺ ∩ G⁻ = 1`, using that `2` is invertible for odd `p`.
- A principal unit whose logarithm has nonzero trace, such as `1 + p`, is not in `κ(G⁻)`.

*Needs:* §8.1; §1.4; LocalFieldsRamification Layer 1; ClassFieldTheory Layer 7 (naturality of the
Artin map, Tau Ceti `TauCeti.ClassFieldTheory.artinMap_congr`).

### 8.3 The fixed fields Θ_n and Ψ_n

For `n ≥ 0` define `Θ_n = Φ_n^Δ` and `Ψ_n = Θ_n^(G⁺)` (fixed fields of the images of `Δ` and `ΔG⁺`).
Prove that `[Θ_n : Φ] = p^(2n)` and `[Ψ_n : Φ] = p^n`, that `Θ₀ = Ψ₀ = Φ`, that the inclusions are
induced from those of the `Φ_n`, that `Gal(Ψ_∞/Φ) ≅ G⁻` for `Ψ_∞ = Φ_∞^(ΔG⁺)`, and that `Ψ_∞/ℚ_p` is
Galois with group `G⁻ ⋊ C₂`, `C₂` acting by inversion; `Ψ_∞` is the maximal subextension of `Φ_∞`
that is pro-`p` over `Φ` and dihedral over `ℚ_p` (BKO21, §2, pp.947–948; §5, pp.955–959). A proof
route: at finite level `κ` gives `O^×/(1 + p^(n+1)O)`; removing the Teichmüller factor leaves
`pO/p^(n+1)O`, and the plus/minus splitting gives the degrees; for a lift `j` of `c`, `j²` lies in the
torsion-free `G⁻`, commutes with `j` and is inverted by it, so `j² = 1`.

API:

- `Θ_n` and `Ψ_n` are subfields of `Φ_n`, with `Gal(Ψ_n/Φ)` the finite minus quotient, compatibly in
  `n`.
- Closed fixing subgroups determine the finite and infinite fields.
- Increasing `n` gives compatible inclusions and restriction maps.
- Coordinate changes for the same `π` and changes of Tate basis give the same fields.

**Checks.**

- `Θ₀ = Ψ₀ = Φ`, although `[Φ₀ : Φ] = p² − 1`.
- `[Θ₁ : Φ] = p²` and `[Ψ₁ : Φ] = p`.
- `Gal(Ψ_n/Φ)` is cyclic of order `p^n`.
- The group `ℤ_p ⋊ C₂` of `Ψ_∞/ℚ_p` is not pro-`p`; its subgroup over `Φ` is.

*Needs:* §§8.1, 8.2; ClassFieldTheory Layer 8.

### 8.4 Field and generator comparisons

Prove: for compatible generators `v_n` of `H[π^(n+1)]`, `Φ_n = Φ(v_n)`, and changing the Tate basis
does not change `Φ_n`, `Θ_n` or `Ψ_n`. With `Δ′ = Δ/μ_(p−1)`, the tame subgroup of `Gal(Ψ′_∞/Φ)` of
order `p + 1`: `Ψ_n = (Ψ′_(n+1))^(Δ′)` for `n ≥ 0` and `(Ψ′_∞)^(Δ′) = Ψ_∞`; for `s ≥ 1`,
`Ψ′_s ∩ Ψ_s = Ψ_(s−1)`, `Ψ′_s Ψ_s = Ψ′_(s+1)`, and restriction identifies `Gal(Ψ′_(s+1)/Ψ′_s)` with
`Gal(Ψ_s/Ψ_(s−1))`; the marked modulus `t_s` of §7.2 generates `Ψ′_s` over `Φ` (BKO21, §2, p.947;
§5.0.2, pp.958–959; Y95, §4, Theorem 1, p.297). A proof route: the fixing subgroup of `Ψ′_(n+1)` is
`κ⁻¹(ℤ_p^×(1 + p^(n+1)O))`; adding the tame subgroup gives `κ⁻¹(μ_(p²−1)(1 + pℤ_p)(1 + p^(n+1)O))`,
the subgroup of `Ψ_n`.

**Checks.**

- The level shift is `n + 1`: `(Ψ′_n)^(Δ′) = Ψ_(n−1)` for `n ≥ 1`, and `(Ψ′_1)^(Δ′) = Φ`.
- Degrees at `s = 1`: `[Ψ′_1 Ψ_1 : Φ] = (p + 1)p/1 = [Ψ′_2 : Φ]`, and the rectangle uses `Ψ₀ = Φ`.
- At `p = 5` the primed degrees `1, 6, 30` and the tame-fixed degrees `1, 5, 25` exhibit the shift.
- The modulus `t_s` and a primitive torsion point generate different fields: `Φ(t₁) = Ψ′_1` of
  degree `p + 1`, while `Φ(v₀) = Φ₀` has degree `p² − 1`.

*Needs:* §§8.3, 7.4, 7.3, 7.2, 2.3.

### 8.5 π-adic and p-adic generators

For a Tate generator `(v_n)` with `[−p]v_(n+1) = v_n` and `v_n` of exact order `p^(n+1)`, define
`w_n = [(−1)^n]v_n`. Prove that `[p]w_(n+1) = w_n`, so `(w_n)` is a `p`-adic Tate generator; that
`(v_n) ↦ (w_n)` is `O`-linear, Galois equivariant, invertible and preserves every division field;
that under an elliptic formal isomorphism `Ê ≅ H` (§4.4) it gives the comparison with
`BarsottiTate.tateModule` with `w₀ = v₀`; that at a fixed index `n` the logarithm and finite formal
traces commute with `j_n = [(−1)^n]`; and that when source and target carry indices `n` and `m`,
`Tr ∘ j_n = [(−1)^(n+m)] ∘ j_m ∘ Tr` (BKO21, §2, footnote 2, p.948; §5, pp.956–959).

**Checks.**

- `[p]w_(n+1) = [p][(−1)^(n+1)]v_(n+1) = [(−1)^n][−p]v_(n+1) = [(−1)^n]v_n = w_n`.
- If `[p]w_(n+1) = w_n` then `[−p]w_(n+1) = −w_n`, while `[−p]v_(n+1) = v_n`; at `n = 0` the outputs
  are `[−1]w₀` and `w₀`.
- The sign is the formal `[−1]_H`, not the negation of the parameter: for a formal group whose
  inverse series is `−X + 2X² + ⋯` the two differ in degree two.
- For adjacent indices `m = n + 1` the conjugated trace acquires one factor `[−1]`.

*Needs:* §§2.2, 4.4, 8.1, 0.3; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.8.

### Examples

At `p = 5`: `[Φ₀:Φ] = 24`, `[Θ₁:Φ] = 25`, `[Ψ₁:Φ] = 5`, `[Ψ′_1:Φ] = 6`, and `Ψ₁ = (Ψ′_2)^(Δ′)` with
`[Ψ′_2 : Ψ₁] = 6`.

### Dependencies

§§1.4, 2.3–2.5, 4.4, 7.2–7.4, 0.3; LocalFieldsRamification Layer 1; ClassFieldTheory Layers 7–8;
FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.8.

## Layer 9: Formal traces and compatible tower maps

### 9.1 Finite formal traces

Let `G` be a formal `O₀`-module over `O_K` and `L/K` finite separable. Define the formal trace
`Tr^G_(L/K) : G(𝔪_L) → G(𝔪_K)` as the formal sum of `σ(x)` over the `K`-embeddings `σ` of `L` into a
finite Galois closure `N`, computed in `G(𝔪_N)`. Prove that the sum is Galois invariant, lies in
`G(𝔪_K)` and does not depend on `N`; that `Tr^G` is `O₀`-linear, natural for formal homomorphisms
defined over `O_K`, transitive in towers and compatible with coordinate isomorphisms and
isomorphisms of the coefficient field; that it commutes with base change along a finite Galois
extension linearly disjoint from `L`; and that `ℓ_G(Tr^G x) = Tr_(L/K)(ℓ_G(x))` (§0.3) (BKO21, §4,
pp.954–955; §5.0.2, pp.958–959; LT65, §1, p.383).

API:

- Maps agreeing on every conjugate point have the same trace value.
- The trace along a tower is the composite of the two traces.
- Formal homomorphisms over `O_K` commute with traces; coordinate isomorphisms intertwine them.
- For a linearly disjoint finite Galois extension of the coefficients, trace commutes with the
  induced inclusion of points.
- The logarithm carries the formal trace to the field trace.

**Checks.**

- `Tr^G_(K/K) = id`.
- For `x ∈ G(𝔪_K)`, `Tr^G_(L/K)(x) = [[L:K]]_G x`.
- For the multiplicative group, `1 + Tr^G(x) = N_(L/K)(1 + x)`, which differs from `1 + Tr_(L/K)(x)`
  in general (for `L = ℚ_p(√p)`, `x = √p`: `N(1 + √p) = 1 − p` while `1 + Tr(√p) = 1`).
- For the additive group the formal trace is the field trace.

*Needs:* §§0.2, 0.3; LocalFieldsRamification Layer 0.

### 9.2 Tame descent on formal points

For `s ≥ 0` in the BKO setting define `D_s = Tr^H_(Ψ′_(s+1)/Ψ_s) : H(𝔪_(Ψ′_(s+1))) → H(𝔪_(Ψ_s))`, a
formal sum over `Δ′` of order `p + 1`, using `Ψ_s = (Ψ′_(s+1))^(Δ′)` (§8.4). Prove that `D_s` is
`O`-linear, compatible with coordinate isomorphisms and with the elliptic comparison of §4.4,
independent of any enumeration of `Δ′`, equal to `[p + 1]_H` on points defined over `Ψ_s`, and
surjective, with section `[(p+1)⁻¹]_H` followed by inclusion (BKO21, §5.0.2, pp.958–959).

API:

- `D_s` is determined by the action of `Δ′` on the source points.
- Composing the inclusion of `H(𝔪_(Ψ_s))` with `[(p+1)⁻¹]_H` gives a right inverse.
- Isomorphisms of the field rectangle, coordinate isomorphisms for the same `π` and the elliptic
  comparison intertwine `D_s`.
- Linearly disjoint finite coefficient extension commutes with `D_s`.

**Checks.**

- `D₀` is the trace of `Ψ′_1/Φ`, of degree `p + 1`.
- For `x` over `Ψ_s`, `D_s(x) = [p + 1]x`; `p + 1` is a unit in `O` because `p ∤ p + 1`.
- `D_s(0) = 0`.
- The normalized projector `[(p+1)⁻¹] ∘ D_s` fixes points over `Ψ_s`, while `D_s` multiplies them by
  `p + 1`; the two maps are different.

*Needs:* §§9.1, 8.4, 4.4.

### 9.3 The trace-compatible square

For `s ≥ 0` and `x ∈ H(𝔪_(Ψ′_(s+2)))`, prove
`Tr^H_(Ψ_(s+1)/Ψ_s)(D_(s+1) x) = D_s(Tr^H_(Ψ′_(s+2)/Ψ′_(s+1)) x)`, the same identity after the
logarithm and after an elliptic formal isomorphism defined over the coefficients, and that `D`
carries trace-compatible systems in the primed tower to trace-compatible systems in the unprimed
tower. With alternating-sign coordinates attached to different levels, the traces carry exactly the
correction of §8.5. The statement concerns supplied point systems; it does not assert the existence
of a nonzero norm-compatible system (BKO21, §5.0.2, pp.958–959). A proof route: both sides are the
formal trace from `Ψ′_(s+2)` to `Ψ_s`, by transitivity through `Ψ_(s+1)` and through `Ψ′_(s+1)`.

**Checks.**

- At `s = 0` the square involves `Ψ′_2`, `Ψ′_1`, `Ψ₁` and `Φ`, all defined.
- Degrees: `[Ψ′_2 : Ψ₁][Ψ₁ : Φ] = (p + 1)p = [Ψ′_2 : Ψ′_1][Ψ′_1 : Φ]`.
- With sign labels `n` and `n + 1` on the two ends, commuting the trace past `j_n` without the factor
  `[−1]` gives the wrong sign on the image of `w_(n+1)`.

*Needs:* §§9.1, 9.2, 8.4, 8.5, 5.5, 3.6.

### Examples

At `s = 0`, `p = 5`: `D₀` sums over six conjugates from `Ψ′_1` down to `Φ`, and the square compares the
traces `Ψ′_2 → Ψ₁ → Φ` and `Ψ′_2 → Ψ′_1 → Φ`, of total degree `30`.

### Dependencies

§§0.2, 0.3, 3.6, 4.4, 5.5, 8.4, 8.5; LocalFieldsRamification Layer 0.

## Downstream consumers

- **AnticyclotomicLocalUnits** (the ColemanPowerSeries, Part II direction) uses Layers 0–2 for formal
  `O`-modules, logarithms, torsion, Tate modules, `κ` and the Artin comparison; §0.4 for the
  number-field realization of `Φ` and its finite extensions carrying the elliptic formal-point
  homomorphism; Layer 4 for the unramified Honda and elliptic comparisons; Layers 5–8 for lattice
  quotients, quasi-canonical fields, neighbouring lattices and the tame and anticyclotomic towers;
  Layer 9 for formal traces and tame descent. It owns local-unit decompositions, distinguished local
  points and their recurrences.
- **GrossZagierAndArithmeticHeights** §7.2 uses the quasi-canonical lifts, their classification and
  the quadratic degrees of Layers 6–7.
- **FunctionFieldArithmetic** §4.1 uses Layers 0–2 and adds the equal-characteristic torsion and
  reciprocity on the carriers of Layers 0–1.
- **EndoscopicTransferAndUnitaryTraceComparison** (Layer 12) and **VectorBundlesAndIsocrystals**
  (VB3, the Lubin–Tate universal cover) use the formal `O_E`-modules, torsion and finite-height
  deformation spaces of Layers 0–3 for their geometric towers.
- **NonordinaryCMSpecialValues** uses §§2.2–2.4 (Tate module, division fields, character) and
  §§4.3–4.4 (the unramified and elliptic comparisons); **ComplexMultiplicationAndExplicitReciprocityPartII**
  uses the character and its Artin comparison of §§2.4–2.5.

## References

- **LT65.** Jonathan Lubin and John Tate, *Formal complex multiplication in local fields*, Annals of
  Mathematics 81 (1965), 380–387, DOI 10.2307/1970622.
- **LT66.** Jonathan Lubin and John Tate, *Formal moduli for one-parameter formal Lie groups*,
  Bulletin de la Société Mathématique de France 94 (1966), 49–59.
  [Numdam](https://www.numdam.org/item/10.24033/bsmf.1633.pdf).
- **H70.** Taira Honda, *On the theory of commutative formal groups*, Journal of the Mathematical
  Society of Japan 22 (1970), 213–246.
  [J-STAGE](https://www.jstage.jst.go.jp/article/jmath1948/22/2/22_2_213/_pdf).
- **H68.** Taira Honda, *Formal groups and zeta-functions*, Osaka Journal of Mathematics 5 (1968),
  199–213. [OUKA](https://ir.library.osaka-u.ac.jp/repo/ouka/all/8997/ojm05_02_05.pdf).
- **G86.** Benedict H. Gross, *On canonical and quasi-canonical liftings*, Inventiones Mathematicae
  84 (1986), 321–326. [GDZ](https://gdz.sub.uni-goettingen.de/download/pdf/PPN356556735_0084/LOG_0018.pdf).
- **Y95.** Jiu-Kang Yu, *On the moduli of quasi-canonical liftings*, Compositio Mathematica 96
  (1995), 293–321. [Numdam](https://www.numdam.org/article/CM_1995__96_3_293_0.pdf).
- **BKO21.** Ashay A. Burungale, Shinichi Kobayashi and Kazuto Ota, *Rubin's conjecture on local
  units in the anticyclotomic tower at inert primes*, Annals of Mathematics 194 (2021), 943–966,
  DOI 10.4007/annals.2021.194.3.8. [CaltechAUTHORS](https://authors.library.caltech.edu/records/8svwt-jn031).
- **VZ07.** Eva Viehmann and Konstantin Ziegler, *Formal moduli of formal O_K-modules*, Astérisque
  312 (2007), 57–66. [Numdam](https://www.numdam.org/item/AST_2007__312__R1_0.pdf).
