# Roadmap: Lefschetz pencils and vanishing cycles, Part II: curves over the same field through rational points

**Summary.** This roadmap proves that a smooth rational point of a scheme over an arbitrary field
`k` lies on a curve defined over `k` itself which meets a prescribed dense open set. Precisely
(§2.4, `exists_same_field_curve`): if `Y` is a `k`-scheme, `y ∈ Y(k)` a rational point with an open
neighbourhood `V` smooth over `k`, and `U ⊆ Y` an open set with `U ∩ V` dense in `V`, then there are
an affine curve `C` over `k`, smooth of relative dimension one and geometrically integral, a point
`c ∈ C(k)` and a `k`-morphism `g : C → Y` with `g(c) = y` and `g⁻¹(U)` nonempty and dense in `C`.
The point `y` may lie outside `U`, the good open `g⁻¹(U)` need not contain any rational point, and
nothing is assumed of `Y` away from `V`. Over `k = 𝔽_q` both marked residue fields are `𝔽_q`, so a
lisse sheaf on `Y` has the same Frobenius at `c` and at `y`, with no passage to a power of
Frobenius. The proof is elementary and local. Layer 1 builds the Kronecker substitution
`X_i ↦ T^(B^i)` (`polynomialGraph`), proves that a base `B` exceeding every exponent preserves
every coefficient (`polynomialGraph_coeff`), and deduces that the graph
`a_B : 𝔸¹_k → 𝔸^m_k` through the origin meets the complement of any given hypersurface
(`exists_avoiding_graph`). Layer 2 takes an étale chart `π : V → 𝔸^m_k` at `y`, encloses the
boundary `V ∖ U` in a hypersurface `V(h)` of `𝔸^m_k`, pulls the graph `a_B` back along `π`, and keeps
the connected component through the marked point (`exists_marked_etale_curve`). This supplies the
curve step in the proofs of Kisin–Zhou, *Independence of ℓ for Frobenius conjugacy classes attached
to abelian varieties*, Corollary 5.2.7 and Proposition 5.3.5 (arXiv:2103.09945v2, pp. 52–54), at
the generality of a smooth chart of finite type over an arbitrary field.

| Layer | Title | What it delivers |
|---|---|---|
| [1](#layer-1-kronecker-substitution-and-graphs-avoiding-a-hypersurface) | Kronecker substitution and graphs avoiding a hypersurface | `polynomialGraph`, coefficient preservation, surjectivity, the avoiding graph |
| [2](#layer-2-marked-étale-curves-through-rational-points) | Marked étale curves through rational points | the boundary polynomial of an étale chart, the marked component of a graph pullback, the marked étale curve, the same-field curve |

```text
Mathlib + Tau Ceti → Layer 1 → Layer 2
SchemeAndStackFoundations §0.8 (etale_coordinates, 054L; rational_point_component, 04KV) ──→ Layer 2 §2.2, §2.4
```

The end theorems are `exists_marked_etale_curve` (§2.3) and `exists_same_field_curve` (§2.4); the
algebraic milestones are `polynomialGraph_coeff` (§1.2) and `exists_avoiding_graph` (§1.3).

## Scope and ownership

**Where the base roadmap stops.** LefschetzPencilsAndVanishingCycles constructs Lefschetz pencils
for sufficiently ample projective embeddings and descends them to finite fields. Its finite-field
descent theorem produces a good axis over some finite extension `𝔽_{q^r}`, and replaces Frobenius
by its `r`-th power: the open set of good axes need not have an `𝔽_q`-point. It does not produce a
curve over `𝔽_q` through a prescribed `𝔽_q`-point. This Part II supplies that curve, locally and
without any projectivity: it does not use pencils, and it does not supply a pencil, a projective
curve, or a curve through several prescribed points. The base roadmap is not a supplier of any
target here.

**This roadmap owns**

- the Kronecker substitution `polynomialGraph` with its normalisation API, coefficient
  preservation under a base exceeding every exponent, surjectivity for `m > 0`, and the avoiding
  graph (Layer 1);
- the boundary polynomial of an étale chart: a proper closed subset of an integral affine scheme
  étale over `𝔸^m_k` maps into a hypersurface (§2.1);
- the marked component of the pullback of a Kronecker graph along an étale chart, with its API and
  its compatibility with extension of the base field (§2.2), and the marked étale curve (§2.3);
- the same-field curve through a smooth rational point, including the zero-dimensional case and
  the residue-field identity at the marks (§2.4).

The Kronecker substitution is owned here because no pinned library or roadmap states it as a
map with a coefficient theorem: Mathlib's Noether normalisation (`Mathlib/RingTheory/NoetherNormalization.lean`)
uses the same base-`B` separation of exponents only through private lemmas about the different
substitution `X_i ↦ X_i + X_0^(r_i)`. The boundary polynomial (§2.1) is owned here because
SchemeAndStackFoundations §0.8 states étale coordinates without any statement about images of
closed subsets; the route of §2.1 is algebraic and needs no dimension theory.

**Owned elsewhere and consumed here.** Each object has one owner; this roadmap builds no second
carrier.

- *Étale coordinates at a smooth point*: SchemeAndStackFoundations §0.8, `etale_coordinates`
  (Stacks, Lemma 29.37.21 (054L)).
- *Connected smooth schemes with a rational point are geometrically integral*:
  SchemeAndStackFoundations §0.8, `rational_point_component` (Stacks, Lemmas 33.7.14 (04KV),
  33.25.4 (056T); Properties, Lemma 28.7.7 (033N)). The step "smooth and geometrically connected
  implies geometrically integral" is already Tau Ceti's instance
  `TauCeti.AlgebraicGeometry.Smooth.geometricallyIntegral`.
- *Polynomial evaluation, base-`B` digits, weights*: Mathlib `MvPolynomial.eval₂Hom`,
  `Nat.ofDigits_inj_of_len_eq`, `Nat.ofDigits_eq_sum_mapIdx`, `Nat.injOn_ofDigits`,
  `Finsupp.weight`.
- *Scheme morphism properties*: Mathlib `Etale`, `Smooth`, `SmoothOfRelativeDimension`,
  `GeometricallyIntegral`, `IsClosedImmersion`, and the facts listed in the supplier contracts.
- *Residue fields at sections*: Tau Ceti `TauCeti.AlgebraicGeometry.residueDegree_eq_one_of_section`
  and `TauCeti.AlgebraicGeometry.residueFieldMap_bijective_of_section` (module
  `TauCeti.AlgebraicGeometry.RationalPoint.Basic`).

**Not in this roadmap.** Lefschetz pencils and Bertini theorems over finite fields (Poonen,
*Bertini theorems over finite fields*, Theorem 3.3 and Corollary 3.4, p. 10, produce smooth
subvarieties of a smooth quasi-projective, respectively projective geometrically integral,
ambient variety through finitely many closed points, but do not make the subvariety meet a
prescribed dense open, and Corollary 3.4 needs a projective ambient variety which a smooth chart
of a stack does not provide); curves through singular points of local models; lifting rational
points to smooth atlases of algebraic stacks; lisse sheaves, their stalks and Frobenius
conjugacy classes; monodromy of universal hypersurface families; semistable potential maps.

## Conventions

1. `k` is a field unless a statement says "commutative ring". Schemes and morphisms are Mathlib's
   `Scheme` and its homs, in one universe `u`; `k : Type u`.
2. **Affine spaces.** `𝔸^m_k` is written `Spec k[X_0, …, X_{m-1}]` (Mathlib
   `MvPolynomial (Fin m) k`) and `𝔸¹_k` is `Spec k[T]` (`Polynomial k`); Mathlib's
   `AffineSpace.SpecIso` identifies these with `AffineSpace (Fin m) (Spec k)`. The structure
   morphisms are the spectra of the algebra maps from `k`. The origin of `𝔸^m_k` is the spectrum of
   `MvPolynomial.constantCoeff`, and the origin of `𝔸¹_k` the spectrum of
   `Polynomial.constantCoeff`.
3. **Indexing.** Variables are numbered `0, …, m − 1`. An exponent vector is `d : Fin m →₀ ℕ`. The
   base-`B` weight of `d` is `w_B(d) = Σ_i d_i B^i`, Mathlib's `Finsupp.weight (fun i ↦ B ^ i) d`.
   The bound "`B` exceeds every exponent of `h`" means `d_i < B` for every `d` in the support of `h`
   and every `i`: a bound on individual exponents, not on coefficients or on the number of terms.
4. **Rational points.** A `k`-point of a `k`-scheme `X → Spec k` is a section `Spec k → X`; it is
   not a closed point of arbitrary residue degree. "`π(y) = 0`" means that the composite of `y`
   and `π` is the origin.
5. **Curves.** A curve over `k` is a scheme `C` with a morphism `C → Spec k` smooth of relative
   dimension one (Mathlib `SmoothOfRelativeDimension 1`) and geometrically integral (Mathlib
   `GeometricallyIntegral`); the curves produced here are moreover affine, hence of finite type.
6. **Density.** "`U ∩ V` is dense in `V`" is density of the preimage of `U` under the open
   immersion `V → Y`. Nothing is required of the other irreducible components of `Y`.
7. Names: the suggested forms live in `TauCetiRoadmap.LefschetzPencilsAndVanishingCyclesPartII`.

## Exact supplier contracts

### From Mathlib

- `MvPolynomial.eval₂Hom`, `MvPolynomial.eval₂Hom_C`, `MvPolynomial.eval₂Hom_X'`,
  `MvPolynomial.eval₂Hom_monomial`, `MvPolynomial.comp_eval₂Hom`, `MvPolynomial.constantCoeff`,
  `Polynomial.constantCoeff` (`Mathlib/Algebra/MvPolynomial/Eval.lean`,
  `Mathlib/Algebra/MvPolynomial/Basic.lean`, `Mathlib/Algebra/Polynomial/Coeff.lean`).
- `Nat.ofDigits_inj_of_len_eq` (two digit lists of equal length with all digits `< b`, `1 < b`, and
  equal value are equal; `Mathlib/Data/Nat/Digits/Defs.lean`), `Nat.ofDigits_eq_sum_mapIdx` and
  `Nat.injOn_ofDigits` (`Mathlib/Data/Nat/Digits/Lemmas.lean`); `Finsupp.weight`
  (`Mathlib/Data/Finsupp/Weight.lean`).
- `AlgebraicGeometry.IsClosedImmersion.spec_of_surjective`: the spectrum of a surjective ring map
  is a closed immersion (`Mathlib/AlgebraicGeometry/Morphisms/ClosedImmersion.lean`).
- `AlgebraicGeometry.Etale.etale_isStableUnderBaseChange`,
  `AlgebraicGeometry.Etale.iff_smoothOfRelativeDimension_zero`
  (`Mathlib/AlgebraicGeometry/Morphisms/Etale.lean`); `AlgebraicGeometry.SmoothOfRelativeDimension`
  and the composition instance `AlgebraicGeometry.smoothOfRelativeDimension_comp`, which adds
  relative dimensions (`Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean`); the instance
  `AlgebraicGeometry.AffineSpace.smoothOfRelativeDimension` (`𝔸(n; S) → S` is smooth of relative
  dimension `Nat.card n`) and `AlgebraicGeometry.AffineSpace.SpecIso`
  (`Mathlib/AlgebraicGeometry/AffineSpace.lean`).
- `AlgebraicGeometry.Flat.generalizingMap`, `AlgebraicGeometry.isOpenMap_of_generalizingMap` and
  `AlgebraicGeometry.Scheme.Hom.isOpenMap`: a flat morphism locally of finite presentation is
  open (`Mathlib/AlgebraicGeometry/Morphisms/UniversallyOpen.lean`).
- `AlgebraicGeometry.GeometricallyIntegral`: for every field-valued point of the base the fibre
  product is integral (`Mathlib/AlgebraicGeometry/Geometrically/Integral.lean`). The definition
  quantifies over all fields `K` with a map `Spec K → Y`; it does not by itself include finite
  type or nonemptiness, which the targets here state separately.
- `Algebra.FormallyEtale.iff_exists_algEquiv_prod`: an étale algebra essentially of finite type
  over a field is a finite product of finite separable field extensions
  (`Mathlib/RingTheory/Etale/Field.lean`).
- `Ideal.under_ne_bot_of_algebraic_mem`: a nonzero element of an ideal of a domain that is
  algebraic over a subring forces a nonzero element of the ideal in that subring
  (`Mathlib/RingTheory/Ideal/GoingUp.lean`).
- `IsOpen.dense`, `IsOpenMap.denseRange_of_isPreirreducibleSpace` (`Mathlib/Topology/Irreducible.lean`);
  `TopologicalSpace.NoetherianSpace.finite_irreducibleComponents`, `isClosed_connectedComponent`.

### From Tau Ceti

- `TauCeti.AlgebraicGeometry.Smooth.geometricallyIntegral` (module
  `TauCeti.AlgebraicGeometry.Morphisms.Smooth.GeometricallyIntegral`): a smooth, geometrically
  connected morphism is geometrically integral.
- `TauCeti.AlgebraicGeometry.residueDegree_eq_one_of_section` and
  `TauCeti.AlgebraicGeometry.residueFieldMap_bijective_of_section` (module
  `TauCeti.AlgebraicGeometry.RationalPoint.Basic`): a point in the image of a section has residue
  degree one and bijective residue-field map.

### From TauCetiRoadmap.SchemeAndStackFoundations

- §0.8 `etale_coordinates`: a morphism `X → S` smooth at `x` admits, on an open neighbourhood of
  `x`, an étale `S`-morphism to `𝔸^d_S`. Assumed in the form of Stacks, Lemma 29.37.21 (054L): with
  `S` affine the neighbourhood can be taken affine. Used in §2.4 with `S = Spec k`.
- §0.8 `rational_point_component`: a connected scheme smooth over a field with a rational point is
  geometrically integral. Used in §2.2 for the marked component.

## How to read the build

Layer 1 is commutative algebra over an arbitrary commutative ring: it defines the Kronecker
substitution `polynomialGraph`, proves that a large base separates monomials so that coefficients
survive (`polynomialGraph_coeff`), proves surjectivity for `m > 0`, and assembles these into a
graph `𝔸¹ → 𝔸^m` that is a closed immersion and meets the complement of a given hypersurface
(`exists_avoiding_graph`). Layer 2 is geometry over a field: it encloses the boundary of a dense
open of an étale chart in a hypersurface (§2.1), forms the pullback of the avoiding graph along the
chart and keeps the component through the marked point (§2.2), proves that this is a marked curve
whose good open is nonempty and dense (§2.3), and reduces the general smooth rational point to a
chart; in the zero-dimensional case the curve is a constant map from `𝔸¹_k` (§2.4).

## Layer 1: Kronecker substitution and graphs avoiding a hypersurface

Throughout this layer `k` is a commutative ring and `m, B` are natural numbers.

### 1.1 The Kronecker substitution

Define `polynomialGraph k m B : k[X_0, …, X_{m-1}] →+* k[T]` as Mathlib's `MvPolynomial.eval₂Hom`
for the coefficient inclusion `Polynomial.C` and the values `X_i ↦ T^(B^i)`. Its spectrum is the
graph `a_B : 𝔸¹_k → 𝔸^m_k`, `T ↦ (T, T^B, T^(B²), …, T^(B^(m−1)))`. The definition is total: it
exists for `m = 0` and for `B = 0, 1`; the graph is a closed immersion only for `m > 0` (§1.3), and the curve construction uses `B ≥ 2`. Because indices
start at zero, the first coordinate is `T^(B^0) = T`. *Needs:* Mathlib `MvPolynomial.eval₂Hom`.

API:

- On constants it is the identity: `polynomialGraph k m B (C a) = C a`.
- The `i`-th variable maps to `T^(B^i)`.
- A monomial maps to a monomial: `a X^d ↦ C a · T^(w_B(d))`, with `w_B` the weight of Convention 3.
- It is a `k`-algebra map: composed with the coefficient inclusion it is `Polynomial.C`, so the
  spectrum of `polynomialGraph` is a morphism over `Spec k`.
- For `B ≥ 1` it preserves the origin: evaluating the image at `T = 0` equals evaluating the
  input at the origin, so `a_B(0) = 0`. For `B = 0` and `m ≥ 2` this fails, since then
  `X_1 ↦ T^0 = 1`.
- For `m = 1` it is the identification `k[X_0] ≅ k[T]`, `X_0 ↦ T`, for every `B` including `0`.
- It commutes with change of coefficients: for a ring map `k → K`, mapping coefficients and then
  substituting equals substituting and then mapping coefficients, with the same `m` and `B`.
- For `m ≥ 2` it is not injective: `X_1 − X_0^B` lies in its kernel. This polynomial has an
  exponent equal to `B`, so it does not contradict §1.2.

**Checks.**

- Over `𝔽_2`, `h = X_0² X_1 − X_0 X_1²` vanishes on each of the three `𝔽_2`-rational lines through
  the origin (`X_0 = 0`, `X_1 = 0`, `X_0 = X_1`), while at `B = 3` its image is `T⁵ − T⁷ = T⁵ + T⁷ ≠ 0`
  (weights `2 + 1·3 = 5` and `1 + 2·3 = 7`). A construction that chooses a rational straight line
  through the origin fails here.
- Over `𝔽_2`, `X_1 − X_0²` maps to `T² − T² = 0` at `B = 2` (the exponent `2` is not `< 2`, and the
  weights collide), and to `T³ − T² ≠ 0` at `B = 3`. A non-strict bound, or a claim of injectivity
  without a bound, fails here.
- For `m = 1`, `X_0 ↦ T` for every `B`, including `B = 0`. A definition numbering variables from
  one, or sending the first variable to `T^B`, gives `X_0 ↦ T^B` instead.
- For `m = 0` the source is `k`, and the map is `Polynomial.C`; over a field it is not surjective
  (`T` is not a constant). A definition supplying a first coordinate automatically would be
  surjective here.
- For `m = 2`, `B = 0`: `X_0 ↦ T` and `X_1 ↦ 1`, so the graph misses the origin; this is the
  negative control for the hypothesis `B ≥ 1` of origin preservation.

### 1.2 Coefficients survive bounded substitution

Prove `polynomialGraph_coeff`: let `h ∈ k[X_0, …, X_{m-1}]` with every exponent `d_i < B` for every
`d` in the support of `h`. Then for every exponent vector `e` with all `e_i < B`, the coefficient
of `T^(w_B(e))` in `polynomialGraph k m B h` equals the coefficient of `X^e` in `h`. In particular,
a nonzero `h` with this bound has nonzero image. No hypothesis on `k` is needed (no domain, no
characteristic), and none on `B`: for `B = 1` the bounds force `h` to be constant and `e = 0`, and the
statement is about the constant term; for `B = 0` and `m ≥ 1` the bounds force `h = 0` and admit no
`e`. The vector `e` need not lie in the support; both sides are then
zero. *Proof sketch.* Send an exponent vector to the list `(d_0, …, d_{m-1})` of length `m`;
`Nat.ofDigits_eq_sum_mapIdx` identifies its base-`B` value with `w_B(d)`, and
`Nat.ofDigits_inj_of_len_eq` (or `Nat.injOn_ofDigits`) gives injectivity of `w_B` on vectors with
entries `< B` when `B ≥ 2`. Expand `h` over its support with `MvPolynomial.eval₂Hom_monomial`;
distinct support monomials go to distinct powers of `T`, so extracting the coefficient of
`T^(w_B(e))` returns the coefficient of `X^e`. This is an identity of polynomials, not of functions
on `k`-points. *Needs:* §1.1; Mathlib `Nat.ofDigits_eq_sum_mapIdx`, `Nat.ofDigits_inj_of_len_eq`,
`MvPolynomial.eval₂Hom_monomial`, `Finsupp.weight`.

**Checks.**

- For `h = X_0² X_1 − X_0 X_1²` over `ℤ` and `B = 3`, the coefficient of `T⁵` is `1` (from `e = (2,1)`)
  and that of `T⁷` is `−1` (from `e = (1,2)`); the coefficient of `T⁶`, the weight of `e = (0,2)`, is
  `0`, matching the coefficient of `X_1²` in `h`.
- For `h = X_1 − X_0²` and `B = 2`, the hypothesis fails (`d_0 = 2`); the conclusion fails too: the
  coefficient of `T²` in the image is `0` while the coefficient of `X_1` (`e = (0,1)`, weight `2`)
  is `1`. This is the negative control for the strict bound.
- For `m = 0` the only exponent vector is empty, of weight `0`, and the statement says that the
  constant term of `C a` is `a`.
- Over the zero ring every polynomial is zero and both sides vanish; the statement does not
  assert nonvanishing without `h ≠ 0`.

### 1.3 Surjectivity and the avoiding graph

Prove that for `m > 0` the map `polynomialGraph k m B` is surjective for every `B` (including
`B = 0`) over any commutative ring: `Σ_j a_j T^j` is the image of `Σ_j a_j X_0^j`, since
constants are fixed and `X_0 ↦ T`. Hence, by `IsClosedImmersion.spec_of_surjective`, the graph
`a_B` is a closed immersion of schemes. *Needs:* §1.1; Mathlib `MvPolynomial.eval₂Hom_C`,
`MvPolynomial.eval₂Hom_X'`, `AlgebraicGeometry.IsClosedImmersion.spec_of_surjective`.

Prove `exists_avoiding_graph`: for `m > 0` and a nonzero `h ∈ k[X_0, …, X_{m-1}]` over a
commutative ring `k`, there is `B ≥ 2` exceeding every exponent in the support of `h` such that
`polynomialGraph k m B h ≠ 0` and `a_B` is a closed immersion. One choice is
`B = max(2, 1 + max{d_i : d ∈ supp h})`; by §1.2 every `B ≥ 2` exceeding all exponents works. Over a
field `k`, `a_B` passes through the origin and `a_B⁻¹(D(h)) = D(φ(h))` with `φ = polynomialGraph k m B`;
since `k[T]` is a domain, `D(φ(h))` contains the generic point, so it is a nonempty, hence dense,
open subset of `𝔸¹_k`. Nonemptiness does not need a rational value of `T` at which `h ∘ a_B` is
nonzero. The theorem avoids one given hypersurface; no graph avoids every proper closed subset
at once. *Proof sketch.* Pick `e` in the support of `h`, apply §1.2 at `e`, then surjectivity;
over a field use `IsOpen.dense`. *Needs:* §1.2; the surjectivity above; Mathlib `IsOpen.dense`.

**Checks.**

- Over `𝔽_q`, `h = T^q − T ∈ k[X_0]` (`m = 1`, so `φ` is the identity): `D(h) ⊆ 𝔸¹` is nonempty and
  dense, yet contains no `𝔽_q`-point. A version of the theorem asking for a rational point of
  `D(φ(h))` is false here.
- For `m = 1` and `h = X_0`, every `B ≥ 2` works and `a_B` is the identity of `𝔸¹`.
- For `m = 0` over a field the graph `Spec k[T] → Spec k` is not a closed immersion (it is not
  injective on points); this is why `m > 0` is a hypothesis.
- For `h = X_1 − X_0²` over `𝔽_2`, `B = 2` is excluded by the bound and indeed gives `φ(h) = 0`;
  `B = 3` gives `T³ − T²`, whose principal open is `𝔸¹ ∖ {0, 1}`.

### Examples

- The graph `T ↦ (T, T³)` in `𝔸²_{𝔽_2}` avoids `X_0² X_1 − X_0 X_1² = 0` generically although every
  rational line through the origin lies in it (§1.1, §1.3).
- `X_1 − X_0²` at `B = 2` versus `B = 3` (§1.2).

### Dependencies

Mathlib only: `MvPolynomial.eval₂Hom` and its evaluation lemmas, `Nat.ofDigits_inj_of_len_eq`,
`Nat.ofDigits_eq_sum_mapIdx`, `Finsupp.weight`, `IsClosedImmersion.spec_of_surjective`,
`IsOpen.dense`.

## Layer 2: marked étale curves through rational points

Throughout this layer `k` is a field. An *étale chart* is an integral affine scheme `V` with an
étale morphism `π : V → 𝔸^m_k`; `V` is a `k`-scheme through `π`, of finite type over `k` because an
étale morphism is locally of finite presentation and `V` is quasi-compact.

### 2.1 The boundary polynomial of an étale chart

Prove: for an étale chart `π : V → 𝔸^m_k` and a closed subset `Z ⊆ V` with `Z ≠ V`, there is a
nonzero `h ∈ k[X_0, …, X_{m-1}]` with `π(Z) ⊆ V(h)`. The polynomial `h` need not generate the ideal of
the closure of `π(Z)`. *Proof sketch.* Write `V = Spec A` with `A` a domain. The pullback
`π^* : k[X] → A` is injective: `π` is flat and locally of finite presentation, hence open
(`Flat.generalizingMap`, `isOpenMap_of_generalizingMap`), so its image is a nonempty open subset of
the irreducible `𝔸^m_k`, which lies in no `V(p)` with `p ≠ 0`. Localising at `k[X] ∖ {0}`, the
algebra `A ⊗ k(X)` is étale and of finite type over the field `k(X)`, hence a finite product of
finite separable extensions (`Algebra.FormallyEtale.iff_exists_algEquiv_prod`); so every element of
`A` is algebraic over `k[X]`. Since `Z ≠ V` and `A` is reduced, the ideal `I` of `Z` is nonzero;
`Ideal.under_ne_bot_of_algebraic_mem` gives `0 ≠ h ∈ k[X]` with `π^*(h) ∈ I`, and then `h` vanishes on
`π(Z)`. (A route through dimension theory — the closure of `π(Z)` has dimension `< m` — gives the
same conclusion.) *Needs:* Mathlib `AlgebraicGeometry.Flat.generalizingMap`,
`AlgebraicGeometry.isOpenMap_of_generalizingMap`, `Algebra.FormallyEtale.iff_exists_algEquiv_prod`,
`Ideal.under_ne_bot_of_algebraic_mem`.

**Checks.**

- For the identity chart of `𝔸²_k` and `Z = V(X_0 X_1)`, `h = X_0 X_1` works; so does any nonzero
  multiple, and `h` is not unique.
- For `m = 0` the chart is `Spec L` for a finite separable field extension `L/k`; the only proper
  closed subset is empty and `h = 1`.
- For `V = Spec k[x, x⁻¹]` with `π(x) = x` (an open immersion into `𝔸¹`) and `Z = {x = 1}`, the
  polynomial `h = X_0 − 1` works.
- *Negative control for étaleness.* The projection `𝔸²_k → 𝔸¹_k`, `(x_0, x_1) ↦ x_0`, is smooth of
  relative dimension one but not étale; for `Z = V(x_1)` the image `π(Z)` is all of `𝔸¹_k`, and no
  nonzero `h` vanishes on it. Here `A = k[x_0, x_1]` is not algebraic over `k[X_0]`.

### 2.2 The marked component of a graph pullback

Fix an étale chart `π : V → 𝔸^m_k` (any `m ≥ 0`), a point `y ∈ V(k)` with `π(y) = 0`, a dense open
`U ⊆ V`, a nonzero `h` with `π(V ∖ U) ⊆ V(h)` (§2.1), and `B ≥ 2` exceeding every exponent of `h`,
so that `φ(h) ≠ 0` for `φ = polynomialGraph k m B` (§1.2). Form the
fibre product of schemes

```text
W = V ×_{𝔸^m_k} 𝔸¹_k ──→ V
      │                 │ π
      ↓                 ↓
     𝔸¹_k ─────a_B────→ 𝔸^m_k
```

and the `k`-point `w = (y, 0)` of `W`. Define the *marked component* `C ⊆ W` as the connected
component of `W` containing `w`, with its open subscheme structure, and write `j : C → W` for the
inclusion, `g : C → V` and `q : C → 𝔸¹_k` for the restricted projections. This is a construction on
the fibre product, recorded here with its intended form: for fixed `(V, π, y, U, h, B)` it returns
`C` together with `j`, `g`, `q` and the lift `c` of `w`. Different charts, polynomials or bases may
give non-isomorphic curves. For `m = 0`, `a_B` is the structure morphism of `𝔸¹_k`, `V = Spec k`
(an integral étale `k`-scheme with a rational point), `W = C = 𝔸¹_k` and `g` is constant; the
construction needs no case distinction, and the closed immersion of §1.3 is not used. *Needs:*
§1.2, §2.1; SchemeAndStackFoundations §0.8
`rational_point_component`; Mathlib `TopologicalSpace.NoetherianSpace.finite_irreducibleComponents`,
`isClosed_connectedComponent`, `AlgebraicGeometry.Etale.etale_isStableUnderBaseChange`.

API (each a target of this subsection):

- `W` is affine, as a fibre product of affine schemes; `q_W : W → 𝔸¹_k` is étale by base change;
  `W` is of finite type over `k`, hence Noetherian.
- The marked component is open and closed in `W`: `W` is a Noetherian topological space, so it has
  finitely many irreducible components and its connected components are finite unions of them,
  hence open as well as closed. In particular `C` is affine (closed in affine `W`) and of finite
  type over `k`.
- The two projections restrict to `g = pr_V ∘ j` and `q = pr_𝔸¹ ∘ j`, with `π ∘ g = a_B ∘ q`; the two
  composites to `Spec k` agree, and are the structure morphism `s_C` of `C`.
- The section `w` factors uniquely through `j`, giving `c ∈ C(k)` with `g(c) = y`, `q(c) = 0` and
  `s_C ∘ c = id`.
- `q` is étale, and `s_C = (𝔸¹_k → Spec k) ∘ q` is smooth of relative dimension `0 + 1 = 1`
  (`Etale.iff_smoothOfRelativeDimension_zero`, `smoothOfRelativeDimension_comp`,
  `AffineSpace.smoothOfRelativeDimension`).
- `s_C` is geometrically integral, by `rational_point_component` applied to the connected smooth
  `k`-scheme `C` with its rational point `c`.
- The good open: `q⁻¹(D(φ(h))) ⊆ g⁻¹(U)`, where `φ = polynomialGraph k m B`; both are nonempty, and
  `g⁻¹(U)` is dense in `C`.
- For the identity chart (`V = 𝔸^m_k`, `π = id`) the fibre product is `𝔸¹_k`, `C = W`, `q` is an
  isomorphism and `g = a_B ∘ q`.
- Extension of the base field: for a field extension `K/k`, `C_K` is integral and connected and is
  the connected component of `W_K` containing `c_K`; its projections are the base changes of `g`
  and `q`, and `g_K⁻¹(U_K) = (g⁻¹(U))_K` is nonempty and dense. (Base change preserves open and
  closed immersions, and `C_K` is connected and nonempty because `s_C` is geometrically integral;
  the preimage of a nonempty open under the surjection `C_K → C` is nonempty.)

**Checks.**

- *Identity chart.* `V = 𝔸²_k`, `π = id`, `y = 0`, `U = V`, `h = 1`, `B = 2`: then `W = C = 𝔸¹`,
  `q = id`, `g(T) = (T, T²)`, `c = 0`, and both projection equations hold in the fibre product. A
  model with `g(T) = (T², T)` (coordinates in the wrong order) violates `π ∘ g = a_B ∘ q`.
- *Mark on the boundary.* Same chart, `U = D(X_0)`, `h = X_0`, `B = 2`: `c = 0 ∉ g⁻¹(U) = D(T)`, which
  is nonempty and dense. A construction that removes the boundary before choosing the component
  loses the mark.
- *Disconnected pullback.* Over `k = 𝔽_3`, let `V = Spec k[x, z, z⁻¹]` and
  `π(x, z) = (x, z² − 1 − 2x)`. The Jacobian determinant of `(x, z² − 1 − 2x)` in `(x, z)` is `2z`, a
  unit, so `π` is étale; `V` is integral; `y = (0, 1)` has `π(y) = (0, 0)`. Take `U = V`, `h = 1`,
  `B = 2`. Then `W = Spec k[T, z, z⁻¹]/(z² − (T + 1)²)` (from `T² = z² − 1 − 2T`). As `z` is a unit, so
  is `T + 1`, and the factors `z − (T + 1)`, `z + (T + 1)` generate the unit ideal (their difference
  `2(T + 1)` is a unit), so `W` is the disjoint union of two copies of `D(T + 1) ⊆ 𝔸¹`. At `T = 0`,
  `x = 0`, `z = 1`: the mark lies on the branch `z = T + 1`, not on `z = −(T + 1)` (where `z = −1 ≠ 1`).
  Taking all of `W`, or the other branch, fails although `V` is integral.
- *Graph through the origin.* Over `𝔽_2`, identity chart of `𝔸²`, `h = X_0² X_1 − X_0 X_1²`,
  `U = D(h)`, `B = 3`: `C = 𝔸¹`, `g(T) = (T, T³)`, `c = 0 ∉ g⁻¹(U) = D(T⁵ + T⁷)`.
- *Base change.* In the disconnected example, after `K = 𝔽_9` the marked component is the branch
  `z = T + 1` over `𝔽_9`, still connected, and `W_K` still has exactly two components. A model that
  kept a component which is connected but not geometrically connected (for instance `Spec 𝔽_9` over
  `𝔽_3`, which has no `𝔽_3`-point) would split after base change; the rational mark excludes this.

### 2.3 The marked étale curve

Prove `exists_marked_etale_curve`: let `V` be an integral affine scheme with an étale morphism
`π : V → 𝔸^m_k`, `m ≥ 0`, let `y ∈ V(k)` with `π(y) = 0`, and let `U ⊆ V` be a dense open. Then for some
`B ≥ 2` there are an affine scheme `C`, an étale `q : C → 𝔸¹_k`, a morphism `g : C → V` with
`π ∘ g = a_B ∘ q`, and `c ∈ C(k)` with `g(c) = y` and `q(c) = 0`, such that `C → Spec k` (through `q`)
is smooth of relative dimension one and geometrically integral, and `g⁻¹(U)` is nonempty and
dense. The point `y` may lie outside `U`; `g` need not be dominant (for `dim V > 1` it is not).
*Proof sketch.* Take the marked component of §2.2. For the good open: `q` is étale, hence open, and
`C` is nonempty, so `q(C)` is a nonempty open of the irreducible `𝔸¹_k` and meets the nonempty open
`D(φ(h))` (`IsOpenMap.denseRange_of_isPreirreducibleSpace`); thus `q⁻¹(D(φ(h))) ≠ ∅`. If `x ∈ C` had
`q(x) ∈ D(φ(h))` and `g(x) ∈ V ∖ U`, then `h(π(g(x))) = 0` because `π(V ∖ U) ⊆ V(h)`, while
`π(g(x)) = a_B(q(x))` and `h ∘ a_B = φ(h)` is nonzero at `q(x)`, a contradiction. So
`q⁻¹(D(φ(h))) ⊆ g⁻¹(U)`, and `g⁻¹(U)` is a nonempty open of the irreducible `C`, hence dense. *Needs:*
§1.2 `polynomialGraph_coeff`, §2.1, §2.2; Mathlib `AlgebraicGeometry.Scheme.Hom.isOpenMap`,
`IsOpenMap.denseRange_of_isPreirreducibleSpace`, `IsOpen.dense`.

**Checks.**

- For `U = V` the statement holds with `g⁻¹(U) = C`; for `U = D(X_0)` on the identity chart of `𝔸²`
  it holds with `g⁻¹(U) = D(T)` and `c ∉ g⁻¹(U)`.
- In the disconnected example of §2.2 the curve is the branch `z = T + 1 ≅ D(T + 1)`; the whole of
  `W` would satisfy every clause except geometric integrality, which detects the wrong choice.
- For `m = 0` and `V = Spec k`, `U = V`: the output is `C = 𝔸¹_k`, `q = id`, `g` constant, `c = 0`;
  `π ∘ g = a_B ∘ q` holds because both sides are the structure morphism of `𝔸¹_k`. A version of the
  theorem requiring `g` to be a closed immersion (as `a_B` is for `m > 0`) is false here.

### 2.4 The same-field curve through a smooth rational point

Prove `exists_same_field_curve`: let `f : Y → Spec k` be a scheme over a field `k`, `y` a section of
`f`, `V ⊆ Y` an open subset containing the image of `y` with `V → Spec k` smooth, and `U ⊆ Y` an open
subset with `U ∩ V` dense in `V`. Then there are an affine scheme `C` with `s_C : C → Spec k` smooth
of relative dimension one and geometrically integral, a morphism `g : C → Y` with `f ∘ g = s_C`, and
a section `c` of `s_C` with `g ∘ c = y`, such that `g⁻¹(U)` is nonempty and dense in `C`. Equivalently,
density may be asked only on the irreducible component of `V` through `y`, after shrinking `V`
into it. *Proof sketch.*

1. *Chart.* By SchemeAndStackFoundations §0.8 `etale_coordinates` (Stacks, Lemma 29.37.21 (054L)),
   shrink `V` to an affine open `V₀ ∋ y` with an étale `k`-morphism `π : V₀ → 𝔸^m_k`. Since `V₀` is
   smooth over `k` it is normal (Stacks, Lemma 33.25.4 (056T)), and as it is Noetherian it is a
   disjoint union of integral open subschemes (Properties, Lemma 28.7.7 (033N)); replace `V₀` by an
   affine open of the one through `y`. Compose `π` with the translation of `𝔸^m_k` by `−π(y)`,
   which is defined over `k` because `y` is rational. `U ∩ V₀` is dense in `V₀` since `V₀` is open in
   `V`.
2. *The curve.* Apply `exists_marked_etale_curve` to `(V₀, π, y, U ∩ V₀)` and compose `g` with the
   open immersion `V₀ → Y`; `f ∘ g` is the structure morphism of `C` because `π` is a `k`-morphism.
3. *Dimension zero.* If `m = 0`, then `V₀` is integral and étale over `k`, hence `Spec L` for a
   finite separable field extension `L/k` (`Algebra.FormallyEtale.iff_exists_algEquiv_prod`); the
   rational point gives a `k`-algebra map `L → k`, so `L = k` and `V₀` is the single point `y`, and
   density of `U ∩ V₀` forces `y ∈ U`. The curve of step 2 is then `C = 𝔸¹_k` with `g` the constant
   morphism through `y` and `g⁻¹(U) = C`. This is why the conclusion asks for a morphism and not an
   immersion.

*Needs:* §2.3; SchemeAndStackFoundations §0.8 `etale_coordinates`; Mathlib
`Algebra.FormallyEtale.iff_exists_algEquiv_prod`, `AffineSpace.smoothOfRelativeDimension`; Stacks
056T and 033N for the shrinking step.

**The marked residue fields.** In the situation of `exists_same_field_curve`, the residue fields
`κ(c)` and `κ(y)` are both `k` and the map `κ(y) → κ(c)` induced by `g` is the identity of `k`
(Tau Ceti `TauCeti.AlgebraicGeometry.residueDegree_eq_one_of_section` and
`TauCeti.AlgebraicGeometry.residueFieldMap_bijective_of_section`, applied to the sections `c` and
`y`). Over `k = 𝔽_q`, a geometric point over `c` maps to a geometric point over `y`,
and the geometric Frobenius of `𝔽_q` at `c` maps to that at `y`; no power `Frob_q^r` arises. Lisse
sheaves and their Frobenius classes belong to the consumers; this roadmap supplies the residue
degree one geometry. *Needs:* Tau Ceti `TauCeti.AlgebraicGeometry.RationalPoint.Basic`.

**Checks.**

- *A point.* `Y = Spec k`, `U = V = Y`: `m = 0`, and the output is `C = 𝔸¹_k` with the constant map and
  `c = 0`. A theorem demanding an immersion `C → Y` is false here.
- *Rational lines fail.* `Y = 𝔸²_{𝔽_2}`, `y = 0`, `U = D(X_0² X_1 − X_0 X_1²)`: the output is the graph
  `T ↦ (T, T³)` with good open `D(T⁵ + T⁷)`, while every `𝔽_2`-line through `0` misses `U`.
- *No rational point in the good open.* `Y = 𝔸¹_{𝔽_q}`, `y = 0`, `U = D(T^q − T)`: `C = 𝔸¹`, `g = id`,
  and `g⁻¹(U)` is nonempty and dense with no `𝔽_q`-point. A version requiring `g⁻¹(U)(k) ≠ ∅` is false.
- *Extraneous component.* `Y = 𝔸¹_k ⊔ 𝔸¹_k`, `y = 0` in the first copy, `U` the first copy, `V` the
  first copy: `U` is not dense in `Y`, but `U ∩ V` is dense in `V`, and the theorem applies.
- *Singular elsewhere.* `Y = Spec k[x, w]/(xw)`, `y = (1, 0)`, `V = D(x)`, `U = Y`: `Y` is singular at
  the origin, but only `V` is used.
- *Non-rational point (negative control).* `Y = Spec 𝔽_{q²}` over `𝔽_q` is smooth, but `Y(𝔽_q) = ∅`;
  a closed point of residue degree two is not a section, and no `𝔽_q`-point `c` of any `C` maps to it,
  since there is no `𝔽_q`-algebra map `𝔽_{q²} → 𝔽_q`.
- *Smoothness at `y` (negative control).* For `q` odd and `a ∈ 𝔽_q` a non-square, let
  `Y = Spec 𝔽_q[x, w]/(x² − a w²)`, `y = 0`, `U = Y ∖ {0}`. Over `𝔽_{q²}`, `Y` is two conjugate lines
  meeting at `0`, and `Y(𝔽_q) = {0}`. If `g : C → Y` is defined over `𝔽_q` with `C` geometrically
  integral and `g(c) = 0`, the image of `C_{𝔽̄_q}` is irreducible, hence lies in one line, and is
  stable under Frobenius, which swaps the lines; so it is `{0}` and `g⁻¹(U) = ∅`. The conclusion
  fails because `Y` is not smooth at `y`, although `U` is dense.

### Examples

- The `𝔽_3` disconnected pullback of §2.2, where the mark selects one of two branches.
- The cone `x² = a w²` over `𝔽_q` (§2.4), where the conclusion fails at a non-smooth rational point.
- The zero-dimensional chart `Y = Spec k` (§2.4), where the curve is a constant map.

### Dependencies

Layer 1; SchemeAndStackFoundations §0.8 (`etale_coordinates`, `rational_point_component`); Mathlib
étale, smooth, flat and geometrically integral morphisms, `Algebra.FormallyEtale.iff_exists_algEquiv_prod`,
`Ideal.under_ne_bot_of_algebraic_mem`; Tau Ceti `TauCeti.AlgebraicGeometry.Smooth.geometricallyIntegral`
and `TauCeti.AlgebraicGeometry.RationalPoint.Basic`.

## Downstream consumers

- The independence-of-ℓ argument of Kisin–Zhou, §§5.2–5.3: the proofs of Corollary 5.2.7 (pp. 52–53) and
  Proposition 5.3.5 (p. 54) of arXiv:2103.09945v2 apply a curve through a rational point of a smooth
  chart of an integral model of a Shimura variety, over the same finite field, meeting a dense
  stratum. Their citation of Poonen's Corollary 3.4 for this step requires a smooth projective
  geometrically integral ambient variety, which a smooth chart does not supply, and Poonen's
  statements do not make the curve meet a prescribed dense open; `exists_same_field_curve` gives
  the needed curve directly. Roadmaps formalising Shimura varieties and their local models consume
  it there; the singular local-model curve of Kisin–Zhou, Proposition 5.2.3, and the rational lift
  to a smooth atlas are theirs.
- Any argument transporting a statement about Frobenius at a rational point of a smooth variety over
  `𝔽_q` to a curve over the same `𝔽_q`, for instance Chebotarev-type density arguments on curves.

## Worked examples

1. **Rational lines fail, the Kronecker graph succeeds.** Over `𝔽_2`, `h = X_0² X_1 − X_0 X_1²`
   vanishes on all three rational lines through the origin of `𝔸²`. At `B = 3` the graph
   `T ↦ (T, T³)` pulls `h` back to `T⁵ + T⁷ ≠ 0`, so `a_3⁻¹(D(h)) = D(T⁵ + T⁷) = 𝔸¹ ∖ {0, 1}` over `𝔽_2`
   (its `𝔽_2`-points are empty, its `𝔽_4`-points are the two elements of `𝔽_4 ∖ 𝔽_2`).
2. **The mark chooses the branch.** In the `𝔽_3` chart `π(x, z) = (x, z² − 1 − 2x)` on
   `Spec 𝔽_3[x, z, z⁻¹]`, the pullback of `T ↦ (T, T²)` is `z² = (T + 1)²`, two disjoint copies of
   `D(T + 1)`; the marked point `(x, z) = (0, 1)` lies on `z = T + 1`, and the resulting curve is
   `C = D(T + 1) ⊆ 𝔸¹_{𝔽_3}` with `g(T) = (T, T + 1)` and `c = 0`.
3. **A cone where no curve exists.** Over `𝔽_3`, `a = 2` is a non-square, and
   `x² − 2w² = x² + w² = 0` defines two lines conjugate over `𝔽_9` (`x = ±i w`, `i² = −1`). Every
   `𝔽_3`-morphism from a geometrically integral curve sending a rational point to the origin is
   constant, so smoothness at `y` cannot be dropped from `exists_same_field_curve`.

## References

- [KisinZhou2024] M. Kisin and R. Zhou, *Independence of ℓ for Frobenius conjugacy classes attached
  to abelian varieties*, arXiv:2103.09945v2 (7 October 2024): Proposition 5.2.3 and Remark 5.2.4
  (p. 49), Corollary 5.2.7 and its proof (pp. 52–53), Proposition 5.3.5 and its proof (p. 54).
  Published in *Annals of Mathematics* 202 (2025), no. 3, DOI 10.4007/annals.2025.202.3.3; locators
  refer to arXiv v2.
- [Poonen2004] B. Poonen, *Bertini theorems over finite fields*, Annals of Mathematics 160 (2004),
  1099–1127; author's version <https://math.mit.edu/~poonen/papers/bertini.pdf>, Theorem 3.3 and
  Corollary 3.4, p. 10.
- [Stacks-Morphisms] The Stacks Project, Chapter 29 (Morphisms of Schemes), Lemma 29.37.21 (054L).
- [Stacks-Varieties] The Stacks Project, Chapter 33 (Varieties), Lemmas 33.7.14 (04KV), 33.25.4
  (056T) and 33.25.10 (0CDW).
- [Stacks-Properties] The Stacks Project, Chapter 28 (Properties of Schemes), Lemma 28.7.7 (033N).
- Mathlib: `Mathlib/Algebra/MvPolynomial/Eval.lean`, `Mathlib/Data/Nat/Digits/Defs.lean`,
  `Mathlib/Data/Nat/Digits/Lemmas.lean`, `Mathlib/Data/Finsupp/Weight.lean`,
  `Mathlib/AlgebraicGeometry/AffineSpace.lean`, `Mathlib/AlgebraicGeometry/Morphisms/Etale.lean`,
  `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean`,
  `Mathlib/AlgebraicGeometry/Morphisms/ClosedImmersion.lean`,
  `Mathlib/AlgebraicGeometry/Morphisms/UniversallyOpen.lean`,
  `Mathlib/AlgebraicGeometry/Geometrically/Integral.lean`, `Mathlib/RingTheory/Etale/Field.lean`,
  `Mathlib/RingTheory/Ideal/GoingUp.lean`, `Mathlib/Topology/Irreducible.lean`.
