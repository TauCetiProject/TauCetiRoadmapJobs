# Roadmap: k-theory of curves and elliptic curves

**Summary.** Build the algebraic K-theory of a regular curve over a field in degrees zero to three, and
specialise it to an elliptic curve given by a Weierstrass equation. The roadmap starts from the
projective Weierstrass scheme and Tau Ceti's function-field theory of elliptic curves, and proves:
the zeroth K-group of an elliptic curve with a rational origin is `ℤ ⊕ ℤ ⊕ E(F)` as a group, with
the square-zero multiplication of rank–determinant coordinates; the localisation sequence of a
curve over all its closed points, with the tame symbol as its degree-two boundary; the special
first K-group, the two-column coniveau description of the third K-group and the Adams weights of
the K-groups of a curve; functoriality along isogenies, where pushforward after pullback is
multiplication by the class of `f_*O`, not by the degree; Harder's theorem and the complete
computation of the K-groups of an elliptic curve over a finite field, with
`#K_{2i}(E) = 1 − a_q q^i + q^{2i+1}`; minimal regular models over rings of `S`-integers of a
number field and the integral part of the second K-group with its vertical-residue description;
and finite-support certificates for sums of symbols, Bloch's correction and Bloch's classes `S_a`,
with transfer and Galois descent. Three worked examples close the roadmap: a certified symbol on
`y² = x(x+1)(x+16)`, a residue at a closed point of degree two, and an integrality failure at a
split multiplicative fibre.

## Scope and ownership

This roadmap owns the K-theory of a regular curve over a field in low degrees and its elliptic
specialisation. Concretely it owns: the comparison of the projective Weierstrass scheme with the
existing function-field theory of elliptic curves (charts, function field, rational points,
isogenies as finite morphisms); the computation of `K_0` of an elliptic curve and its ring
structure; the localisation sequence of a regular curve over all closed points in degrees zero
to three with its naturality and the identification of its boundaries; the curve invariant
`SK_1`, the two-column coniveau description of `K_3` and the weight components of curve
K-groups; the isogeny projection formula with the determinant obstruction; Harder's theorem and
the finite-field computation of the K-groups of a curve, with the elliptic orders and the twisted
Frobenius kernel; regular and minimal regular models of an elliptic curve over `O_{F,S}` and the
integral part of `K_2`; and symbol certificates, Bloch's classes, transfer and Galois descent for
the kernel of the tame symbol on `K_2` of the function field.

It also owns five arithmetic inputs over finite fields that no supplier states: Bass–Milnor–Serre
for coordinate rings of smooth affine curves over a finite field, Quillen's finite generation of the
K-groups of a smooth curve over a finite field, the exact reciprocity sequence
`K_2(F_q(X)) → ⊕_x k(x)^× → F_q^× → 0`, the finiteness of the tame kernel of a global function field
with order prime to `p`, and Geisser–Levine's comparison of Milnor and Quillen K-groups of a field of
characteristic `p` (§5.5). MotivicEtaleKTheory §3.4 uses two neighbouring statements, reciprocity
for the completions of a global function field and finiteness of the tame kernel of an affine curve,
as inputs to Tate's Galois-symbol theorem; §5.5 proves the tame-symbol forms on the projective curve
from the K-theory of the curve.

The libraries and other roadmaps supply the rest.
- **Mathlib** supplies Weierstrass curves (`WeierstrassCurve`, `WeierstrassCurve.IsElliptic`,
  `WeierstrassCurve.Affine.Point` with its group law, `Point.map`), the projective spectrum
  (`AlgebraicGeometry.Proj` with `Proj.awayι`), function fields of integral schemes
  (`Scheme.functionField`, `functionField_isFractionRing_of_isAffineOpen`), smooth, proper and
  geometrically integral morphisms, regular local rings, `CommRing.Pic`, finite-field Frobenius
  (`FiniteField.frobeniusAlgHom`) and the uniqueness of maps from a reduced scheme with dense
  open (`ext_of_isDominant_of_isSeparated`).
- **Tau Ceti** supplies the function-field theory of elliptic curves and of curves in general:
  places of a function field (`TauCeti.Place` with `ord`, `ResidueField`, `residueUnit`,
  `normResidue`, `degree`), divisors and principal divisors (`TauCeti.Divisor`,
  `Divisor.principal`, `Divisor.eval`), the degree splitting of the class group
  (`WeilDivisor.OrderSystem.classGroupAddEquivPicZeroProdInt`), the identification of the point
  group with degree-zero divisor classes (`WeierstrassCurve.Affine.pointEquivDegreeZeroDivisorClass`),
  the principal-divisor criterion for rational points (the additive point/class equivalence
  and `Divisor.divisorClass_eq_zero_iff`) and torsion functions
  (`exists_principal_zsmul_pointPlace_sub_infinity`), the function-field
  isogeny theory (`TauCeti.Isogeny` with `degree`, `ker`, `fieldPullback`,
  `pullbackDifferential`, `frobeniusIsogeny`), scheme Weil divisors and line-bundle classes
  (`SchemeWeilDivisor.classGroupToLineBundleClassHom`, `LineBundleClass`), the point count and
  Frobenius trace (`WeierstrassCurve.pointCount`, `WeierstrassCurve.frobeniusTrace`), Grothendieck
  groups (`TauCeti.ExactK0`, `TauCeti.AbelianK0`), the truncated Euler characteristic of a
  module sheaf (`Scheme.Modules.eulerCharBelow`) and local models over a DVR (`TauCeti.Model`).
  Since the pinned commit Tau Ceti has also implemented the projective Weierstrass scheme
  (`WeierstrassCurve.projModel` with `projModelOver`, `projModelZero`, `isProper_projModelOver`,
  `isIntegral_projModel`, `smoothOfRelativeDimension_one_projModelOver`, the chart rings
  `Projective.ChartRing` with `awayEquivChartRing`, and `projModelVariableChangeIso`), the
  scheme Weil-class/Picard equivalence `SchemeWeilDivisor.classGroupAddEquivLineBundleClass`,
  the genus-one bijection `SchemeWeilDivisor.degreeOneEquivPicZero`, the Hasse bound
  `WeierstrassCurve.hasse_bound` and the Tate module of an elliptic curve. These are cited, never
  restated.
- **ModularCurves** (Tau Ceti roadmap) owns the projective Weierstrass model `projModel W` over
  any ring (now implemented in Tau Ceti as `WeierstrassCurve.projModel`), its properness,
  smoothness when `W.IsElliptic`, its zero section, the points
  dictionary (Layer 1B), the scheme-theoretic group law (Layer 1D), the comparison of function
  fields `projModelFunctionFieldEquiv` (Layer 2A), isogenies and kernels as group schemes
  (Layers 2B–2C) and Picard duality with the theorem of the square (Layer 2D). This roadmap never
  constructs the Weierstrass scheme again.
- **EllipticCurves** (Tau Ceti roadmap) owns the equation-level theory: the function field with
  its places and divisors (Layer 0), Galois actions and base change (Layer 0.5), isogenies, the dual
  and `[m]` (Layer 1), torsion, the Weil pairing and the Tate module (Layer 2), and the Hasse bound
  with `a_q = q + 1 − #E(F_q)` (Layer 3).
- **AlgebraicCurves** (Tau Ceti roadmap) Layer 12 owns the dictionary between regular projective
  curves and function fields of transcendence degree one, with closed points and places.
- **JacobianChallenge** (Tau Ceti roadmap) owns the Picard group of a scheme as a group, the
  Weil–Cartier–line-bundle dictionary and the degree (Layer A), and coherent cohomology of
  proper curves with Riemann–Roch (Layer B).
- **StableReduction** (Tau Ceti roadmap) owns blow-ups and contraction of exceptional curves on
  arithmetic surfaces (Layer 4) and regular and minimal models over a discrete valuation ring
  (Layer 5). This roadmap adds only the passage to a ring of `S`-integers.
- **NeronModelsAndSemistableAbelianVarieties** §§1.8, 2.7, 6.5 owns the Néron model, its
  identification with the smooth locus of the minimal regular model, and the equivalence between
  good reduction and properness. These supply the comparisons with regular proper models.
- **SchemeAndStackFoundations** (Tau Ceti roadmap) §5.7 owns geometric `K_0` and `G_0`
  (`Chow.K0`, `Chow.G0`) with pullback, rank, determinant and Euler pushforward; §4.13 owns
  regularity of smooth schemes over a regular base; §5.11 owns the Weil bound
  `|#C(F_q) − (q + 1)| ≤ 2g√q` for a smooth projective geometrically irreducible curve over `F_q`.
- **SchemeKTheoryOperations** owns the K-theory of schemes: derived pullback, proper
  pushforward, base change and projection formulas (Layer 2), localisation with supports, DVR
  boundaries, curves and arithmetic surfaces (Layer 3), coniveau (Layer 4), homotopy invariance
  and the projective bundle theorem (Layer 5), Adams operations and weights (Layer 6) and the
  self-intersection formula (Layer 7).
- **GeneralAlgebraicKTheory** owns the Quillen K-groups of exact categories (Layer 2),
  filtered colimits of rings (§3.2), and the resolution, dévissage and Serre localisation
  theorems (Layer 4).
- **KTheoryLowDegrees** owns `K_1` of a ring with its determinant and `SK_1` (§8.1), the
  Bass–Milnor–Serre vanishing of `SK_1` for rings of `S`-integers of number fields (§11.1) and the
  rank–determinant ring isomorphism `K_0(X) ≅ ℤ ⋉ Pic(X)` for a regular curve with its class
  formulas (§12.2), with the
  projective-line change of basis (§12.3).
- **K2SymbolsBrauer** owns Milnor K-theory of finite fields and `K_2(F_q) = 0` (§§5.12, 6.16),
  the identification with Matsumoto's presentation and the graded map to Quillen K-theory
  (§§7.2, 8.2–8.3), the tame symbol with its Steinberg property, independence of the uniformiser,
  ramification formula, finite support and higher residues (§§9.2–9.4, 9.7, 9.11, 9.13), Milnor
  norms and the norm-residue formula (§§10.21, 10.27, 11.6), Weil reciprocity (§§10.29–10.30),
  Bass–Tate vanishing of `K_n^M` of a global function field for `n ≥ 3` (§10.33), the
  localisation boundary of a DVR (§11.1), the unramified subgroup (§12.1) and Tate's computation
  of `K_2(ℚ)` (§12.11).
- **K3BlochGroups** owns the indecomposable `K_3` of a field (Layer 2) and Suslin's exact
  sequence (§4.20). **GeneralAlgebraicKTheory** §13.8c holds Quillen's computation of the K-groups
  of finite fields, which **KTheoryFiniteLocalFields** consumes in its Layer 1; the latter owns
  restriction and transfer for finite fields (§1.5), the K-groups of their algebraic closure
  (§1.6) and the absence of `p`-torsion in `K_2` of a field of characteristic `p` (§3.4).
  **ArithmeticKTheory** owns rings of `S`-integers as localisations (§1.1), localisation for
  Dedekind domains and injectivity of `K_2(O_{F,S}) → K_2(F)` (§§2.1, 2.4), Quillen's
  finite-generation criterion for a Dedekind domain with finite Picard group (§3.2), and finite
  generation of the K-groups of rings of `S`-integers of number fields with finiteness of their
  positive even groups (§§3.2–3.4). It does not treat curves over finite fields; their finite
  generation is §5.5 here.
- **MotivicEtaleKTheory** owns the higher cycle complexes with their localisation and homotopy
  invariance over a field (§§4.1–4.3) and descent on smooth schemes (§4.7), motivic cohomology
  of fields with `K^M_n(F) ≅ H^n(F, ℤ(n))` (§4.4), Bloch–Gabber–Kato (§7.4), the homotopy coniveau
  tower and motivic spectral sequence of a smooth scheme over a perfect field (§§8.6–8.7), the
  rational comparison of weight components with motivic cohomology (§9.3), and the étale
  comparison and étale descent (§§10.1–10.3).
- **StableHomotopyKTheory** Layer 7 owns Moore-spectrum coefficients, the universal coefficient
  sequences and exact couples. **EtaleDualityAndPerverseSheaves** Layer 0 owns the trace and
  Kummer description of the étale cohomology of a smooth proper curve over an algebraically
  closed field. **WeightsInEtaleCohomology** R34.2 owns arithmetic Frobenius on Tate modules and
  geometric Frobenius on `H¹`. **ArithmeticGaloisDuality** owns the Hochschild–Serre spectral
  sequence with discrete coefficients (Layer R02.2) and with compact coefficients (Layer D7);
  **SelmerIwasawaCohomology** §2.7 identifies `H¹(Ẑ, M)` with `M/(F − 1)M`, and
  **ProfiniteCohomology** (Tau Ceti roadmap) owns `Hⁱ(Ẑ, −)` and `cd_ℓ Ẑ = 1`.

The regulators of the classes constructed here, and every statement about `L`-values, belong to
EllipticRegulators and SpecialValuesBirchTate; the p-adic regulators belong to
PadicHodgeRegulators.

## Conventions

- **Curves.** A curve over a field `F` is a separated integral scheme of finite type over `F` of
  dimension one. "Regular curve" means all local rings are regular; over a perfect field a
  regular curve is smooth, over an imperfect field it need not be (`y² = x^p − t` over `𝔽_p(t)`).
  Closed points `x` have residue fields `k(x)` finite over `F`, of degree `deg x = [k(x) : F]`.
  Every sum over points runs over **all** closed points, not only rational ones.
- **The Weierstrass scheme.** For `W : WeierstrassCurve F` with `W.IsElliptic`, `E_W` denotes
  Tau Ceti's `WeierstrassCurve.projModel W` (ModularCurves Layer 1A), the cubic `Y²Z + a₁XYZ + a₃YZ² = X³ + a₂X²Z + a₄XZ² + a₆Z³` in
  `ℙ²_F` with origin `O = [0 : 1 : 0]`. Its function field is identified with
  `W.toAffine.FunctionField` by ModularCurves' `projModelFunctionFieldEquiv`, its closed points
  with Tau Ceti's places `TauCeti.Place F W.toAffine.FunctionField` (AlgebraicCurves Layer 12),
  and its rational points with `W.toAffine.Point`, the origin with the point at infinity.
- **K-theory.** `K_n(X)` is the K-theory of perfect complexes of SchemeKTheoryOperations; on the
  regular schemes used here it agrees with Quillen K-theory of vector bundles and, through the
  Cartan equivalence (SchemeKTheoryOperations §2.6), with `G_n(X)`. `K_0(X)` is identified with
  SchemeAndStackFoundations' `Chow.K0 X` through the vector-bundle comparison of
  SchemeKTheoryOperations §2.5 (a curve over a field is quasi-projective, so it has the resolution
  property), compatibly with the Chern characters of §7.2. `K_1` of a field
  is its unit group by the determinant; `K_2` of a field is Milnor's `K_2` by Matsumoto's theorem,
  written multiplicatively with symbols `{f, g}`.
- **The tame symbol.** For a discrete valuation `v` with residue field `k_v`,
  `∂_v{f, g} = (−1)^{v(f)v(g)} · (f^{v(g)} / g^{v(f)})‾ ∈ k_v^×`, so that `∂_v{u, π} = ū` and
  `∂_v{π, u} = ū⁻¹` for a uniformiser `π` and a unit `u`. This is K2SymbolsBrauer's convention
  and Dokchitser–de Jeu–Zagier's (3.1); the symbol of Weibel's Lemma III.6.3 is its inverse. The
  degree-two boundary of the localisation sequence is `⊕_x ∂_x` when localisation is normalised
  left-linearly; with Weibel's right-linear normalisation it is the inverse. Inverting a map
  changes no kernel or image, so every exactness and certificate statement reads the same in both.
- **Residue units.** For a place `P` and `f` with `ord_P f = 0`, `TauCeti.Place.residueUnit` is the
  residue of `f` in `P.ResidueField^×`; the tame value at `P` takes values in that group, not in
  `F^×`. Its norm to `F` is `TauCeti.Place.normResidue`.
- **Frobenius.** Over `F_q`, `π` denotes the `q`-power Frobenius on points, `P ↦ Point.map
  (FiniteField.frobeniusAlgHom F_q L) P`, which is arithmetic Frobenius on torsion points. The
  Tate twist `M(i)` multiplies the arithmetic Frobenius action by `q^i`, so Frobenius acts on
  `E[ℓ^∞](i)` by `q^i π`. The trace is `a_q = q + 1 − #E(F_q)`, Tau Ceti's
  `WeierstrassCurve.frobeniusTrace`, and `π² − a_q π + q = 0`.
- **S-integers.** For a number field `F` and a finite set `S` of finite places, `O_{F,S}` is the
  ring of `S`-integers (ArithmeticKTheory §1.1). A model over `O_{F,S}` is an `O_{F,S}`-scheme with a
  fixed identification of its generic fibre with `E_W`; morphisms of models respect that marking.
- **Coefficients.** Rational statements are made in `K_n ⊗ ℚ`. Finite coefficients `ℤ/ℓ^ν` and
  divisible coefficients `ℚ_ℓ/ℤ_ℓ` are those of StableHomotopyKTheory Layer 7; integral,
  finite-coefficient and divisible-coefficient groups are never identified with one another or with
  completions.
- **Weibel's K-book** is cited by the numbering and the page numbers of the author-hosted combined
  draft of 29 August 2013, whose printed page `n` is page `n + 8` of the PDF.

## Exact supplier contracts

**From Mathlib.** `WeierstrassCurve`, `WeierstrassCurve.IsElliptic` (`Δ` a unit),
`WeierstrassCurve.Affine.Point` with its `AddCommGroup` structure and
`WeierstrassCurve.Affine.Point.map (f : F →ₐ[S] K) : (W⁄F).Point →+ (W⁄K).Point`;
`WeierstrassCurve.Affine.irreducible_polynomial` and `equation_iff_nonsingular`;
`WeierstrassCurve.Projective.Point.toAffineAddEquiv`; `AlgebraicGeometry.Proj`, `Proj.awayι`,
`Proj.isSeparated` and properness of `Proj` of a finitely generated graded algebra;
`Scheme.functionField` and `functionField_isFractionRing_of_isAffineOpen`; the morphism properties
`IsProper`, `Smooth`, `SmoothOfRelativeDimension`, `GeometricallyIntegral`, `IsIntegral`;
`IsRegularLocalRing`; `CommRing.Pic`; `FiniteField.frobeniusAlgHom` (`x ↦ x^q` as an `F_q`-algebra
map); `AddSubgroup.torsionBy`; `IsDedekindDomain.flat_iff_torsion_eq_bot`; and
`AlgebraicGeometry.ext_of_isDominant_of_isSeparated` (two maps from a reduced scheme to a separated
one that agree on a dense open subscheme are equal).

**From Tau Ceti.** `TauCeti.Place k K` is a normalised discrete valuation of `K` trivial on `k`;
`Place.ord`, `Place.ResidueField`, `Place.residueUnit (f) (hf : P.ord f = 0)`,
`Place.normResidue`, `Place.degree`, `Place.exists_eq_zpow_mul_unit` (factorisation through a
uniformiser) and `Place.finite_setOf_ord_ne_zero` (a function has finitely many zeros and poles);
`TauCeti.Divisor` with `Divisor.principal`, `Divisor.divisorClass_eq_zero_iff`,
`Divisor.ker_degreeClass_eq_picZero` and `Divisor.conorm`;
`WeilDivisor.OrderSystem.classGroupAddEquivPicZeroProdInt` (degree splitting of the class group of
an order system with a point of weight one); `WeierstrassCurve.Affine.pointEquivDegreeOnePlace`,
`pointEquivDegreeZeroDivisorClass` and its computation rule
`val_pointEquivDegreeZeroDivisorClass_some` (the point `(x, y)` goes to the class of `(P) − (O)`),
`exists_principal_zsmul_pointPlace_sub_infinity` (if `nP = 0` there is a function with divisor
`n(P) − n(O)`), `isIntegrallyClosed_coordinateRing` and
`isDedekindDomain_coordinateRing_of_isIntegrallyClosed`; `TauCeti.Isogeny` with `degree`, `ker`,
`card_ker_le_degree`, `fieldPullback`, `sum_ramificationIdx_mul_inertiaDeg_eq_degree`,
`isSeparable_iff_pullbackDifferential_ne_zero`, `pullbackDifferential_invariantDifferential` and
`frobeniusIsogeny`; `SchemeWeilDivisor.classGroupToLineBundleClassHom` with
`classGroupToLineBundleClass_injective` and `isUnit_toLineBundleClass`;
`AlgebraicGeometry.LineBundleClass` (a commutative monoid at the pinned commit);
`WeilDivisor.OrderSystem.ofScheme` and `Place.orderSystem`; `relativeDegree_ofPoint_of_section`;
`WeierstrassCurve.pointCount` and `WeierstrassCurve.frobeniusTrace`; `TauCeti.ExactK0`,
`TauCeti.AbelianK0` with `AbelianK0.lift`, `TauCeti.moduleResolutionEquiv`;
`Scheme.Modules.eulerCharBelow` with `eulerCharBelow_eq_add`; `TauCeti.Model` and
`TauCeti.genericFiberTowerIso`.

**From the current Tau Ceti library.** `WeierstrassCurve.projModel W` for `W` over any commutative
ring, as `Proj` of the homogeneous coordinate ring, with `projModelOver`, `projModelZero`
(`projModelZero_projModelOver`), `isProper_projModelOver`, `isIntegral_projModel` over an integral
domain (no ellipticity), `smoothOfRelativeDimension_one_projModelOver` for `W.IsElliptic`,
`awayι_projModelOver`, the chart rings `Projective.ChartRing W i` with
`Projective.awayEquivChartRing` and `chartRingBaseChangeEquiv`, and `projModelVariableChangeIso`;
`SchemeWeilDivisor.classGroupAddEquivLineBundleClass` in
`TauCeti.AlgebraicGeometry.WeilDivisor.Scheme.Picard`: the class group of
`WeilDivisor.OrderSystem.ofScheme X` is additively equivalent to
`Additive (LineBundleClass X)` for integral noetherian `X` with codimension-one DVR stalks and
`∀ y, coheight y ≤ 1`; and `SchemeWeilDivisor.degreeOneEquivPicZero` in
`TauCeti.AlgebraicGeometry.WeilDivisor.Scheme.GenusOne`: for a proper genus-one curve, a chosen
degree-one point and the base field integrally closed in its function field, degree-one points
are in bijection with `Pic⁰` by `x ↦ O(x − x₀)`, with the addition/linear-equivalence rule; `WeierstrassCurve.hasse_bound` and `frobeniusTrace_sq_le_four_mul_card`; and the Tate
module `free_tateModule`, `finrank_tateModule`. These postdate the pinned commit, so
`Suggested.lean` does not use them.

**From ModularCurves.** Layer 1A: `projModel W`, `projModelOver W`, `projModelZero W`,
`isProper_projModelOver`, `smoothOfRelativeDimension_one_projModelOver` (for `W.IsElliptic`),
`isIntegral_projModel`, and compatibility with base change. Layer 1B(1): over a field and for
`W.IsElliptic`, `projModelPointsEquiv` identifies sections of `projModelOver W` with
`W.toAffine.Point`, the zero section with the point at infinity; for `y² = x³` over `𝔽₅` the
projective cubic has six rational points and `W.toAffine.Point` five. Layer 1D(6): the scheme group
law agrees with Mathlib's on field-valued points. Layer 2A: `projModelFunctionFieldEquiv`. Layers 2B–2C:
the kernel of an isogeny as a finite locally free group scheme of rank the degree. Layer 2D: Picard
duality `φ^t = λ^{−1} ∘ Pic⁰(φ) ∘ λ` and the theorem of the square; with `[m]^∨ = [m]` (EllipticCurves
Layer 1) it gives `[m]^* = m` on `Pic⁰`.

**From EllipticCurves.** Layer 0.5: `P ↦ [(P) − (O)]` commutes with base change and Galois
action. Layer 1: `deg [m] = m²`, `E[m]` étale of order `m²` when `char F ∤ m`, the degree quadratic
form on `Hom(E', E)` and the geometric kernel of a separable isogeny with `deg` points. Layer 2:
`E[N] ≃+ (ℤ/N)²` over a separably closed field with `char ∤ N`, the Tate module `T_ℓE` free of
rank two with `V_ℓE / T_ℓE ≅ E[ℓ^∞]`, and the Tate twist. Layer 3: finiteness of `E(F_q)`,
`frobeniusTrace`, the Hasse bound `|a_q| ≤ 2√q` and `π² − [a_q]π + [q] = 0`.

**From AlgebraicCurves.** Layers 12A–12C: regular projective curves over `F` and function fields of
transcendence degree one are anti-equivalent, closed points corresponding to places with residue
degree `[k(x) : F]` (12A–12B, assembled in 12C); Layer 12C: a non-constant morphism of curves
corresponds to a function-field embedding; Layer 12D: scheme Weil divisors correspond to
function-field divisors with matching degrees and principal divisors.

**From JacobianChallenge.** Layer A: `Pic(X)` as a group, the dictionary between Cartier divisor
classes and `Pic(X)` on an integral scheme with `Cl(X) ≅ Pic(X)` on a smooth curve (the noetherian
form with codimension-one DVR stalks is the current Tau Ceti equivalence above), and the degree of
a line bundle on a proper curve. Layer B: for a proper curve over a field, `Hⁱ` of a coherent sheaf
is finite-dimensional and vanishes for `i ≥ 2`, the genus `g = dim H¹(O)` and Riemann–Roch
`χ(L) = deg L + 1 − g` when `H⁰(O) = F`. Layer D: the obstruction sequence relating `Pic(X_T)`,
the Picard functor and `H²(T, 𝔾_m)`, which a rational point splits.

**From StableReduction.** Layer 4: blow-ups with affine charts, exceptional curves of the first
kind on a regular surface, projective contraction of a vertical exceptional curve with a regular
contracted point (Stacks 54.16.9(1), tag 0C2N), and the universal property of a blow-down (Stacks
54.16.1, tag 0C5J). Layer 5: regular proper models of a smooth projective curve over a discrete
valuation ring, components `C_i` and multiplicities `m_i` of the special fibre with
`div(π) = Σ m_i C_i`, relative minimality as absence of exceptional curves of the first kind, and,
for positive genus, existence, uniqueness and the terminal property of the minimal regular model
(Stacks 55.8.4–55.8.6, 55.10.1–55.10.2).

**From SchemeKTheoryOperations.** §2.2 `Scheme.K.pullback` for every morphism; §2.3
`Scheme.G.pushforward` for proper maps of noetherian schemes and `Scheme.K.pushforward` for proper
perfect maps, with `Scheme.K.pushforward_affine` (for `Spec B → Spec A` finite with `B` perfect over
`A`, pushforward is restriction of scalars); §2.4 Tor-independent base change and the projection
formula `f_*(x · f^*y) = f_*x · y` in all degrees; §2.6 `Scheme.cartan_isEquiv_of_regular`; §3.3
localisation spectra with supports and their oriented boundaries; §3.5 coherent supports and
dévissage; §3.6 `dvrBoundary` with `dvrBoundary_unitLoopClass` and `dvrBoundary_uniformizer`; §3.7
the Dedekind and curve sequences, and on a regular arithmetic surface `𝓧` over a Dedekind ring the
sequence `⊕_v G(𝓧_v) → K(𝓧) → K(𝓧_U)` together with the comparison of the vertical boundary at the
generic point of a fibre component with the DVR boundary of its local ring; §4.5 `coniveauSS` with
`d₁` and `d₁ ∘ d₁ = 0`, identified for a one-dimensional scheme with curve localisation; §§5.1–5.2
homotopy invariance for regular schemes; §5.5 the projective bundle theorem with basis
`O, O(−1), …` and on `ℙ¹` the coordinates `(π_*a, σ^*a − π_*a)`; §6.8 Adams operations
`ψ^k` on `K_*(X)`, multiplicative and compatible with pullback; §6.9 rational and
finite-coefficient weight decompositions with their condition on `ℓ`; §6.11 the Gysin weight shift
`ψ^k j_* = k^c j_* ψ^k` for a closed immersion of pure codimension `c` with trivial conormal bundle;
§7.6 the self-intersection formula `i^*i_* = λ_{−1}(I/I²) ·` and `P^*P_* = 0` for a rational point
of a regular curve.

**From GeneralAlgebraicKTheory.** §2.4 `pi1QEquivExactK0`; §2.5 `KGroup` (`K_n(E) = π_{n+1} BQ(E)`)
and `KGroup.map`; §3.2 `KGroup.ofRing_colimit` (K-theory of rings commutes with filtered colimits);
§4.6 the resolution theorem; §4.8 dévissage; §4.14 Serre localisation, natural for exact functors of
Serre pairs.

**From KTheoryLowDegrees.** §8.1: the determinant `K_1(A) → A^×`, `SK_1(A) = ker det`, the natural
splitting `K_1(A) ≅ A^× × SK_1(A)` for commutative `A`, and `K_1(F) = F^×`. §11.1: `SK_1(O_{F,S}) = 0`
for a ring of `S`-integers of a number field (Bass–Milnor–Serre). §12.2: for a connected
regular noetherian scheme `X` of dimension at most one, rank and determinant give an additive
equivalence `K_0(X) ≃ ℤ × Pic(X)` with inverse `(n, L) ↦ (n − 1)[O] + [L]`, multiplicative for the
square-zero product `(rs, L^{⊗s} ⊗ M^{⊗r})`, with `[O_y] ↦ (0, O(y))` at a closed point `y`. §12.3: on `ℙ¹_F`, the
rank–Pic coordinates `(r, d)` and projective-bundle coordinates `(a, b)` are related by
`(r, d) = (a + b, −b)`.

**From K2SymbolsBrauer.** §§5.12, 6.16: `K^M_n(F_q) = 0` for `n ≥ 2` and `K_2(F_q) = 0`; §§7.2, 8.3:
the identification with Matsumoto's presentation; §8.2: the graded map `K^M_* → K_*`; §10.33:
Bass–Tate's `K^M_n(F) = 0` for `n ≥ 3` when `F` has transcendence degree one over a finite field.
§§9.2–9.4: the tame symbol in the convention above, its Steinberg and bimultiplicativity
properties and independence of the uniformiser; §9.7: the ramification formula `∂_w = (∂_v)^e`
along a valued extension; §§10.21, 10.27, 11.6: the norm-residue formula `∂_v ∘ N = ∏_{w | v}
N_{k_w / k_v} ∘ ∂_w` when the integral closure is finite (written additively there); §9.13:
finiteness of support; §§9.11, 9.15: the specialisation maps and higher Milnor residues; §11.1:
the localisation boundary of a DVR in both normalisations. §10.29: Weil reciprocity
`Σ_P N_{k(P)/F} ∂_P(x) = 0` for `x ∈ K^M_{n+1}` of a function field of one variable, and §10.30
the case `∏_x N_{k(x)/F} ∂_x{f, g} = 1` on a proper regular curve. §12.11:
`K_2(ℚ) ≅ ℤ/2 ⊕ ⊕_{p odd} 𝔽_p^×`; §12.1: the unramified subgroup.

**From K3BlochGroups.** §2.1 `K3ind` (the cokernel of `K^M_3 → K_3`); §2.2 the injectivity of
`K^M_3(F) → K_3(F)` for every field; §2.5 `dim K_3(F) ⊗ ℚ = r_2` for a number field; §4.20 Suslin's
exact sequence.

**From GeneralAlgebraicKTheory and KTheoryFiniteLocalFields.** GeneralAlgebraicKTheory §13.8c
(`finiteFieldKGroups`, Quillen's computation, consumed by KTheoryFiniteLocalFields Layer 1):
`K_{2i}(F_q) = 0` and `K_{2i−1}(F_q) ≅ ℤ/(q^i − 1)` for `i ≥ 1`. KTheoryFiniteLocalFields §1.5:
restriction and transfer for finite fields; §1.6: `K_{2i−1}(F̄_p) ≅ ⊕_{ℓ ≠ p} ℚ_ℓ/ℤ_ℓ(i)`; §3.4:
`K_2(F)[p] = 0` for every field `F` of characteristic `p`.

**From ArithmeticKTheory.** §1.1: `O_{F,S}` as a localisation of `O_F`, and the principal-open
description after inverting finitely many primes using the torsion class group. §§2.1, 2.4: the
localisation sequence of a Dedekind domain and injectivity of `K_2(O_{F,S}) → K_2(F)`. §3.2:
Quillen's criterion, for every Dedekind domain `R` with fraction field `K`: if `Pic(R)` is finite
and every `H_q(Aut_R(P); St(P ⊗ K))` is finitely generated, then every `K_n(R)` is finitely
generated. §§3.2–3.4: finite generation of `K_n(O_{F,S})` and finiteness of its positive even
groups for a number field `F`. ArithmeticKTheory does not treat curves over finite fields.

**From MotivicEtaleKTheory.** §§4.1–4.3: the cycle complexes, their localisation for schemes of
finite type over a field and their homotopy invariance for separated equidimensional ones; §4.7:
Zariski and Nisnevich descent on smooth schemes; §4.4: `K^M_n(F) ≅ H^n(F, ℤ(n))` and
`H^i(F, ℤ(j)) = 0` for `i > j`, hence also with `ℚ` coefficients. §7.4: Bloch–Gabber–Kato
`K^M_n(F)/p ≅ Ω^n_{F, log}` for a field of characteristic `p`. §§8.6–8.7: the homotopy coniveau
tower of a smooth scheme over a perfect field, its motivic spectral sequence, the comparison of its
exact couples under change of coefficients, and Adams operations on the tower; §9.3:
`K_m(X)_ℚ^{(j)} ≅ H^{2j−m}(X, ℚ(j))` for smooth quasi-projective `X` over a perfect field. These
smooth perfect-field comparisons do not supply the regular, possibly non-smooth case: §4.5 adds
that extension. For arbitrary fields in §§4.6 and
5.5, use filtered colimits of finitely generated extensions of the perfect prime field and
then of smooth affine models; cycle complexes commute with these limits because cycles and
relations have finite presentation, and K-theory commutes with filtered ring colimits
(GeneralAlgebraicKTheory §3.2). §§10.1–10.3: the Beilinson–Lichtenbaum comparison with étale
cohomology and étale descent for finite coefficients prime to the characteristic.

**From DeligneWeightsAndPurity.** DWP.1 §§1.4, 1.6–1.7: the Weil bound for every smooth
projective geometrically connected curve over a finite field in every extension degree; the
base-point-free curve/Jacobian `H¹` comparison; the `2g` Frobenius roots of the Jacobian, of
absolute value `√q`, paired by `α ↦ q/α` by DWP.0 §0.2(iii) because their characteristic
polynomial has integer coefficients. These are used only for closed-point degrees and
cohomology descent, independently of later purity results. The elliptic specialisation continues
to use EllipticCurves' Hasse bound.

**From StableHomotopyKTheory, EtaleDualityAndPerverseSheaves, WeightsInEtaleCohomology,
ArithmeticGaloisDuality, SelmerIwasawaCohomology and ProfiniteCohomology.** StableHomotopyKTheory §7.1–7.4 and §7.8:
Moore spectra, `0 → K_n ⊗ ℤ/m → K_n(ℤ/m) → K_{n−1}[m] → 0` and its `ℚ_ℓ/ℤ_ℓ` colimit; §§7.25–7.29
exact couples and convergence. EtaleDualityAndPerverseSheaves §0.3 `curveTrace` and
`curveH1Duality` for a smooth proper curve `X̄` over an algebraically closed field:
`H¹(X̄, μ_n) = J(X̄)[n]` by Kummer theory and `H²(X̄, μ_n) ≅ ℤ/n` by the trace; §0.5 the global
pairings. WeightsInEtaleCohomology R34.2: arithmetic Frobenius `π` on `T_ℓ E` has characteristic
polynomial `X² − a_q X + q`; geometric Frobenius on `H¹` is its contragredient.
ArithmeticGaloisDuality R02.2: the Hochschild–Serre spectral sequence with discrete coefficients;
Layer D7: its form with compact coefficients. SelmerIwasawaCohomology §2.7: `H¹(Ẑ, M) = M/(F − 1)M`
by evaluation at the generator. ProfiniteCohomology Layers 10–11 and its `Ẑ` worked example:
`H²(Ẑ, M) = 0` for divisible or torsion `M`, and `cd_ℓ Ẑ = 1`.

## How to read the build

Layer 1 fixes the elliptic curve as a scheme and compares every scheme-theoretic notion used later
(charts, function field, points, isogenies) with the existing function-field theory. Layer 2
computes `K_0` of a curve and of an elliptic curve. Layer 3 is the localisation sequence of a regular
curve in degrees zero to three, the identification of its boundaries and its naturality. Layer 4
extracts `SK_1`, the coniveau description of `K_3` and the Adams weights. Layer 5 develops
functoriality along isogenies and the projective line, then proves Harder's theorem and the
complete finite-field computation. Layer 6 builds regular and minimal regular models over
`O_{F,S}` and the integral part of `K_2`. Layer 7 constructs symbol classes in the kernel of the tame
symbol by finite certificates, Bloch's classes, transfer and Galois descent. Layer 8 works three
examples that test the whole interface.

Assembled, the roadmap provides, for every elliptic curve `E` over a field: `K_0, …, K_3` of `E`, of
its function field and of its residue fields from the one K-theory functor of
SchemeKTheoryOperations; the computation of `K_0(E)` (§2.7); localisation and coniveau (§§3.1–3.2,
4.3–4.4); functoriality (§§5.1–5.3); the rational symbol interface (§§7.2, 7.7–7.9); and, over a
number field, the arithmetic-integral symbol interface (§§6.8, 6.10, 7.3). No statement asserts
finite generation of, or an explicit abstract-group classification of, any K-group of an elliptic
curve over a number field; over a finite field the classification is complete (§5.11).

The Lean signatures in `Suggested.lean` state what the pinned libraries can already express: the
tame value at a Tau Ceti place, symbol candidates and certificates, the reciprocity and Bloch
correction theorems on the function field of a Weierstrass curve, the twisted Frobenius kernel
with the order of the even K-groups over a finite field (`card_twistedFrobeniusKernel`), and marked
regular proper models over a Dedekind domain with their morphisms and minimality. Statements whose
carriers are scheme K-groups, or that need the genus of a curve over a Dedekind base, are stated in
the prose below.
## Layer 1: The Weierstrass curve as a scheme

Every K-group in this roadmap is a K-group of the scheme `E_W`, while every explicit computation
(divisors, residues, isogeny degrees, torsion functions) is carried out with Tau Ceti's
function-field theory of `W`. This layer fixes the dictionary between the two. It constructs
nothing that ModularCurves constructs: the scheme, its structure morphism, zero section,
properness and smoothness are ModularCurves Layer 1A.

### 1.1 The Weierstrass scheme over a field and its charts

Let `W` be a Weierstrass curve over a field `F` with `W.IsElliptic`. Write `E_W` for Tau Ceti's
`WeierstrassCurve.projModel W` (ModularCurves Layer 1A), the closed subscheme of `ℙ²_F` cut out by the
homogeneous cubic `G = Y²Z + a₁XYZ + a₃YZ² − X³ − a₂X²Z − a₄XZ² − a₆Z³`, that is `Proj` of the graded
quotient `F[X, Y, Z]/(G)`, with structure morphism `projModelOver W` and zero section
`O = projModelZero W`, the point `[0 : 1 : 0]`. The notation `E_W` throughout refers to this
supplied scheme; it introduces no new scheme carrier.

Prove the chart description that the rest of the roadmap uses. The standard opens are
`D₊(Z)` and `D₊(Y)`; Tau Ceti identifies the ring of each chart with `Projective.ChartRing W i`, the
quotient of `F[X, Y, Z]` by `G` and `Xᵢ − 1` (`awayEquivChartRing`). Prove `EllipticScheme.charts`: for
`Xᵢ = Z` this ring is Mathlib's `W.toAffine.CoordinateRing`, so `D₊(Z)` is isomorphic over `F` to
`Spec W.toAffine.CoordinateRing` through `Proj.awayι` (dehomogenisation at `Z`), and `D₊(Y)` is the
affine scheme of the dehomogenisation at `Y`. Prove `EllipticScheme.cover`:
`D₊(Z) ∪ D₊(Y) = E_W`, because a point with `Y = Z = 0` on the cubic has `X³ = 0`, hence `X = 0`,
which no point of `ℙ²` satisfies. Prove `EllipticScheme.zeroSection_mem`: under the two-chart comparison, the supplied zero section
is the closed point in `D₊(Y) − D₊(Z)` with residue field `F`
(Poonen, *Rational points on varieties*, §5.7.6, display (5.7.29), PDF p. 158). *Needs:* ModularCurves Layer 1A; Mathlib `Proj`,
`Proj.awayι`, `WeierstrassCurve.IsElliptic`.

**Checks.**
- `charts_cover`: `D₊(Z) ∪ D₊(Y) = E_W`; a definition using `D₊(Z)` alone misses the origin.
- `affine_chart_equation`: `D₊(Z) ≅ Spec W.toAffine.CoordinateRing` over `F`, so the affine
  function-field theory applies to the generic point.
- `section_disjoint`: the zero section lies in `D₊(Y)` and not in `D₊(Z)`, at the closed point
  `[0 : 1 : 0]` with residue field `F`.
- `rational_points_count`: for `y² = x³ − x` over `𝔽₅`, `E_W(𝔽₅)` has 8 elements and the group is
  `ℤ/4 × ℤ/2`.
- `singular_cubic`: for `y² = x³` over `𝔽₅` (discriminant zero) the projective cubic has six
  `𝔽₅`-points while `W.toAffine.Point` has five, and the cubic is not smooth at `[0 : 0 : 1]`; a
  version that drops `W.IsElliptic`, or uses only nonsingular points, does not see this.

### 1.2 Smoothness, properness and geometric integrality

Prove `EllipticScheme.geometricallyIntegral` for every Weierstrass curve `W` over `F` (ellipticity
is not needed): `E_W` is geometrically integral over `F` of dimension one, with `H⁰(E_W, O) = F` and
`dim_F H¹(E_W, O) = 1`. Integrality over every extension field follows from Tau Ceti's
`isIntegral_projModel` and the compatibility of the charts with base change
(`chartRingBaseChangeEquiv`); the content added here is geometric integrality as a property of the
morphism, the dimension and the cohomology. The cubic `G` is irreducible over every extension field `K`: it is not
divisible by `Z`, since `G(X, Y, 0) = −X³`, and its dehomogenisation is irreducible, since a factor of
`y`-degree zero divides the leading coefficient `1`, and a factor of `y`-degree one would give
`g ∈ K[x]` with `g² + a₁xg + a₃g` of degree three, impossible because that degree is either
`2 deg g ≥ 4` or at most two (Mathlib's `WeierstrassCurve.Affine.irreducible_polynomial`). A plane
curve cut out by an irreducible form is a curve (Stacks, Lemma 53.9.2, tag 0BYC); applied over
`F̄` it gives geometric integrality, and a plane curve of degree three has `H⁰ = F` and genus
`(3 − 1)(3 − 2)/2 = 1` (Stacks, Lemma 53.9.3, tag 0BYD). Consequently `Scheme.functionField E_W` is a
field (Mathlib's instance needs `IsIntegral`). *Needs:* §1.1; JacobianChallenge Layer B; Mathlib
`GeometricallyIntegral`, `IsIntegral`, `Scheme.functionField`.

**Checks.**
- `eulerChar_structureSheaf`: `χ(E_W, O) = 1 − 1 = 0`.
- `functionField_isField`: `Scheme.functionField E_W` is a field.
- `singular_cubic_integral`: `y² = x³` is geometrically integral but not smooth, so integrality
  does not imply smoothness.

### 1.3 Regularity in the form the divisor API uses

Prove `EllipticScheme.isRegular`: if `W.IsElliptic`, then `E_W` is noetherian, every stalk is a
regular local ring, every point has coheight at most one, and the stalk at every codimension-one
point is a discrete valuation ring. These are exactly the hypotheses `[IsIntegral X]`,
`[IsNoetherian X]`, `[∀ y : CodimensionOnePoint X, IsDiscreteValuationRing (stalk y)]` and
`∀ y, coheight y ≤ 1` of Tau Ceti's `SchemeWeilDivisor.toInvertibleSheaf` and
`classGroupToLineBundleClassHom`. The proof: smooth over a field implies regular local rings
(SchemeAndStackFoundations §4.13, `IsRegular.of_smooth`); a
one-dimensional regular local ring is a discrete valuation ring; `Proj` of a finitely generated
graded `F`-algebra is noetherian (Stacks, Lemma 29.15.6, tag 01T6, for the finite-type scheme;
Lemma 10.140.3 for smooth algebras over a field; Lemma 10.119.7, tag 00PD, for dimension-one
regular local rings). *Needs:* §§1.1–1.2; Mathlib
`IsRegularLocalRing`; Tau Ceti `SchemeWeilDivisor.classGroupToLineBundleClassHom`.

**Checks.**
- `classGroupToLineBundleClass_applies`: Tau Ceti's `classGroupToLineBundleClassHom` applies to
  `E_W`.
- `closedPoint_dvr`: every closed point's local ring is a discrete valuation ring.
- `regular_not_smooth`: over `𝔽_p(t)` the regular curve `y² = x^p − t` is not smooth, so the
  hypothesis package is regularity, not smoothness.

### 1.4 The function field and closed points

Prove `EllipticScheme.closedPointEquivPlace_compat`: compose the supplied closed-point/place
correspondence with the supplied function-field comparison, and identify its valuations and residue
maps with Tau Ceti's Weierstrass-place API. This differs from the general curve correspondence by
fixing the actual `F`-algebra map on the affine chart: for each closed point `x`, transport of
`ord_x` is `P.ord`, its residue-field isomorphism intertwines reduction of local units with
`P.residueUnit`, and `[k(x) : F] = P.degree`. At the origin it gives `Place.infinity W`; at rational
points it agrees with `pointEquivDegreeOnePlace` (AlgebraicCurves Layers 12A–12C and ModularCurves
Layer 2A; Stacks, Theorem 53.2.6, tag 0BY1). This is what turns every statement of Layer 3 about the K-theory of the function field into a
statement about the existing function-field API. `W.toAffine.CoordinateRing` is a Dedekind domain
for elliptic `W` by Tau Ceti's `isIntegrallyClosed_coordinateRing` and
`isDedekindDomain_coordinateRing_of_isIntegrallyClosed`; it is derived, not assumed. *Needs:*
§§1.1–1.2; ModularCurves Layer 2A; AlgebraicCurves Layers 12A–12C; Tau Ceti
`pointEquivDegreeOnePlace`.

**Checks.**
- `functionFieldEquiv_algEquiv`: the transported closed-point correspondence uses the supplied
  `projModelFunctionFieldEquiv` as an `F`-algebra map, and intertwines orders and residue maps;
  an arbitrary abstract field isomorphism would not suffice.
- `origin_infinity`: the origin corresponds to the place at infinity, of degree one
  (`TauCeti.Place.degree_infinity`).
- `nonrational_closed_point`: on `y² = x³ + 1` over `ℚ`, the closed point `x² + 2x + 4 = 0, y = 3`
  has residue field `ℚ(√−3)` and corresponds to a place of degree two, not to a point of
  `W.toAffine.Point`.

### 1.5 Rational points and the group law

Prove `EllipticScheme.pointsDivisor_compat`: the supplied field-valued points equivalence and
group law commute with the Weierstrass-place and divisor-class identifications of Tau Ceti.
Precisely, a section corresponding to `P : W.toAffine.Point` gives the degree-one place
`pointEquivDegreeOnePlace P`, and its divisor difference from the zero section gives
`pointEquivDegreeZeroDivisorClass P`. Also show the same diagram after the supplied projective
and Jacobian coordinate changes (`Projective.Point.toAffineAddEquiv`,
`Jacobian.Point.toAffineAddEquiv`). The target adds these diagrams, rather than another
points equivalence or group law (Weibel, *K-book*, Example I.5.16, pp. 58–59, for the divisor
interpretation; Tau Ceti's computation rule `val_pointEquivDegreeZeroDivisorClass_some`).
*Needs:* §§1.1, 1.4; ModularCurves Layers 1B, 1D; Tau Ceti's two point/place/class equivalences.

**Checks.**
- `pointsEquiv_count`: for `y² = x³ − x` over `𝔽₅` both sides have eight elements and the group is
  `ℤ/4 × ℤ/2`.
- `pointsEquiv_zero_some`: the zero section corresponds to `Point.zero` and `[x : y : 1]` to
  `Point.some x y h`.
- `pointsEquiv_needs_elliptic`: for `y² = x³` over `𝔽₅` the cubic has six `𝔽₅`-points and
  `W.toAffine.Point` five, so the ellipticity hypothesis cannot be dropped.

### 1.6 Isogenies as finite morphisms, and the zero morphism

Tau Ceti's isogeny theory is a theory of function fields: `TauCeti.Isogeny` is an embedding of
function fields with a degree, a separability condition, a kernel of rational points and a pullback
of differentials. Prove `Isogeny.toSchemeHom`: by the anti-equivalence between regular projective
curves and function fields (AlgebraicCurves Layer 12C; Stacks, Theorem 53.2.6, tag 0BY1), a non-zero
isogeny `φ : E' → E` corresponds to a finite morphism of schemes `E_{W'} → E_W` sending `O` to `O`,
contravariantly. Prove that under this correspondence:
- the degree of the morphism (its generic rank) is `TauCeti.Isogeny.degree`
  (`Isogeny.toSchemeHom_degree`);
- the morphism is separable exactly when the pinned isogeny is, which by
  `isSeparable_iff_pullbackDifferential_ne_zero` is the non-vanishing of the pullback of the
  invariant differential, and the invariant differential pulls back by
  `pullbackDifferential_invariantDifferential` (`Isogeny.toSchemeHom_separable`);
- the `F`-points of the scheme-theoretic kernel form `TauCeti.Isogeny.ker`, with
  `card_ker_le_degree`; the kernel group scheme, of rank the degree, is ModularCurves Layers 2B–2C's
  (`Isogeny.toSchemeHom_ker`);
- scheme pullback of divisors is `TauCeti.Divisor.conorm` along the function-field embedding, and
  `Σ_{x ↦ y} e_x f_x = deg φ` is `sum_ramificationIdx_mul_inertiaDeg_eq_degree`
  (`Isogeny.toSchemeHom_pullback_divisor`).

The zero morphism, the constant map to `O`, is a morphism of schemes outside this correspondence,
because it induces no embedding of function fields. Define it separately as `zeroHom`, and prove
`zeroHom_pullback_lineBundle`: it pulls every line bundle back to the trivial one; divisor pullback
along it is defined only for divisors whose support avoids `O`, where it is zero. *Needs:* §1.4;
AlgebraicCurves Layer 12C; ModularCurves Layers 2B–2C; Tau Ceti `TauCeti.Isogeny`,
`TauCeti.Divisor.conorm`.

**Checks.**
- `toSchemeHom_id`: the identity isogeny gives the identity morphism, of degree one.
- `toSchemeHom_mulBy`: multiplication by `m` with `char F ∤ m` gives a finite étale morphism of degree
  `m²`.
- `zeroHom_not_finite`: the zero morphism is not finite and is not in the image of `toSchemeHom`;
  `[0]^*L ≅ O` for every line bundle `L`.
- `zeroHom_origin`: every point maps to the origin; a constant map to a nonzero point fails this
  Check even though it also trivialises line bundles.
- `zeroHom_composition`: composing on either side with an origin-preserving isogeny is again
  `zeroHom`; the identity morphism fails this Check for a nonconstant isogeny.

### Examples

For `y² = x³ − x` over `𝔽₅` the scheme has eight rational points forming `ℤ/4 × ℤ/2`, the origin is
the only point on `Z = 0`, and the two charts cover. For `y² = x³` over `𝔽₅` the projective cubic has
six rational points, one of them the singular point `(0, 0)` which `W.toAffine.Point` omits.
On `y² = x³ + 1` over `ℚ` the closed point cut out by `x² + 2x + 4` and `y = 3` has degree two.

### Dependencies

ModularCurves Layers 1A, 1B, 1D, 2A, 2B; AlgebraicCurves Layer 12; JacobianChallenge Layer B;
Mathlib's Weierstrass, projective-spectrum and function-field APIs; Tau Ceti's places, divisors,
point–divisor-class equivalence and function-field isogenies.
## Layer 2: K₀ of a curve and of an elliptic curve

The zeroth K-group of a regular curve is determined by rank and determinant; for an elliptic curve
with a rational origin the determinant splits by degree and the point group. This layer assembles
that computation, fixes its ring structure, and records what the rational origin is used for.

### 2.1 Rank and determinant on K₀ of a curve

For a connected, separated, regular noetherian scheme `X` of dimension one, rank and determinant
give an isomorphism `rank ⊕ det : K_0(X) ≅ ℤ ⊕ Pic(X)` (Weibel, *K-book*, Proposition II.8.2.1,
p. 146, which also gives `SK_0(X) = 0`). This is KTheoryLowDegrees §12.2 (`regularCurve_rankDetEquiv`),
consumed here together with its class formulas, which the rest of the roadmap cites as
`K0Curve.class_lineBundle`, `K0Curve.class_structureSheaf` and `K0Curve.class_skyscraper`:
`[L] ↦ (1, L)` for a line bundle `L`, in particular `[O_X] ↦ (1, O_X)`, and the skyscraper `O_x` at a
closed point `x` maps to `(0, O(x))`, from the exact sequence `0 → O(−x) → O → O_x → 0`. Prove
`K0Curve.rankDet_natural`: the isomorphism is natural for pullback along a morphism of such curves,
in particular along a finite morphism; KTheoryLowDegrees §12.2 supplies the compatibility with
localisation, that is with open immersions, and with extension of the base field. Separatedness matters: Weibel's Example II.8.2.4 is a regular
non-separated scheme with `K_0 ≠ G_0`. *Needs:* KTheoryLowDegrees §12.2; SchemeAndStackFoundations
§5.7; §1.3.

**Checks.**
- `class_point_rank_zero`: a skyscraper at a closed point has rank zero and determinant `O(x)`.
- `class_structureSheaf`: `[O_X] = (1, O_X)`, the unit.
- `skyscraper_degree`: on `ℙ¹_ℚ` the skyscraper at `V(t² + 1)` has determinant of degree two.

### 2.2 The Euler characteristic and the pushforward to the base

Let `X` be a curve proper over `F` that is separated and regular. Define
`eulerChar : K_0(X) → ℤ` by `χ(M) = dim_F H⁰(X, M) − dim_F H¹(X, M)` on coherent sheaves; prove
`eulerChar_additive` (additivity on short exact sequences) and that it factors through
`K_0(X) ≅ G_0(X)`. In Tau Ceti terms, `χ` is `Scheme.Modules.eulerCharBelow` at `n = 2`, which is the
Euler characteristic once `Hⁱ` is finite-dimensional and `H²` vanishes (JacobianChallenge Layer B);
its additivity is `eulerCharBelow_eq_add` under those hypotheses, and the induced map out of `G_0` is
`TauCeti.AbelianK0.lift`. Write `pushforwardToBase : K_0(X) → K_0(F) = ℤ` for SchemeAndStackFoundations' `Chow.kPushforward`
along the structure morphism, `p_*[M] = Σ (−1)^i [R^i p_* M]` (Weibel, *K-book*, II.8.2.3, p. 147;
SchemeKTheoryOperations §2.3), and prove `pushforwardToBase_eq_eulerChar`. Riemann–Roch
`riemannRoch : χ(L) = deg L + χ(O_X)` is JacobianChallenge Layer B's, with degree from
Layer A; it becomes `deg L + 1 − g` when `H⁰(O_X) = F` and `g = dim_F H¹(O_X)` (Stacks, Lemma 53.5.2, tag 0BS6); it is consumed here, in the form the Checks use. A rational point has degree one (Tau Ceti's
`relativeDegree_ofPoint_of_section`). *Needs:* §2.1; JacobianChallenge Layers A–B;
SchemeKTheoryOperations §§2.3, 2.6; Tau Ceti `eulerCharBelow`, `AbelianK0.lift`.

**Checks.**
- `point_degree_one`: a rational point `x` has `χ(O_x) = 1 = deg O(x)`.
- `structure_sheaf_elliptic`: on an elliptic curve `χ(O_E) = 0`, so `p_*[O_E] = 0`.
- `additive`: `χ` is additive on short exact sequences of coherent sheaves.
- `factors_through_K0`: `χ` factors through `K_0(X)`.
- `degree_ne_eulerChar_P1`: on `ℙ¹_F`, `χ(O(n)) = n + 1` while `deg O(n) = n`, so `χ` is not the degree.
- `nonrational_point_degree`: on `ℙ¹_ℚ` the closed point `V(t² + 1)` has `deg O(x) = 2 = χ(O_x)`.
- `constant_extension_RR`: view `ℙ¹_{𝔽₄}` as a regular proper integral curve over `𝔽₂`. Then
  `χ(O) = 2`, `g = 0`, and `deg O = 0`; the unrestricted formula `deg L + 1 − g` would give one.

### 2.3 Line bundles and divisor classes

For an integral, separated, noetherian regular curve `X/F`, prove
`classGroupEquivPic_functionField`: the supplied scheme Weil-class/Picard equivalence commutes
with the supplied scheme/function-field divisor comparison on every divisor supported at closed
points of `X`. The new assertion fixes the composite, including its sign and its restriction to
an open curve: `D ↦ O_X(D)` corresponds to the same, rather than the negative, function-field
divisor class. For proper `X` all places occur; otherwise only places with a centre in `X`
occur. On a proper curve the degree of the resulting line bundle is
`Σ_x n_x [k(x) : F]` (Weibel, *K-book*, Proposition I.5.15, p. 58).
*Needs:* §§1.3–1.4; the current Tau Ceti equivalence in the supplier contracts;
JacobianChallenge Layer A; AlgebraicCurves Layer 12D.

**Checks.**
- `classGroupEquivPic_bijective`: the composite of the two supplied equivalences is additive and bijective, and its
  closed-point classes are `O(x)`, not `O(−x)`.
- `origin_degree_one`: `O_{E_W}(O)` has degree one.
- `open_curve_places`: on `𝔸¹_F`, the point at infinity of `F(t)/F` is absent; `Cl(𝔸¹_F) = 0`
  while the full proper-model class group is `Cl(ℙ¹_F) = ℤ`.
- `principal_trivial`: a principal divisor maps to the trivial class (Tau Ceti's
  `toLineBundleClass_principalDivisor`).

### 2.4 The Picard group of an elliptic curve

Prove `picardDecomposition`: on an elliptic curve with rational origin `O` the degree splits
`Pic(E_W) ≅ ℤ ⊕ Pic⁰(E_W)`, and `Pic⁰(E_W)` is canonically `W.toAffine.Point`, the class of a point
`P` corresponding to the class of `(P) − (O)`. The function-field form is proved in Tau Ceti:
`classGroupAddEquivPicZeroProdInt` splits the class group of an order system with a weight-one
rational point by degree, and `pointEquivDegreeZeroDivisorClass` identifies the point group with
the degree-zero divisor classes of `W.toAffine.FunctionField`, with computation rule
`val_pointEquivDegreeZeroDivisorClass_some`; together, after exchanging factors, they give `Cl(F(W)/F) ≅ ℤ × W.toAffine.Point`.
This target adds the commutative diagram identifying the group-valued Weierstrass
point/class equivalence with the scheme genus-one bijection `degreeOneEquivPicZero`; it does not
reconstruct either supplied equivalence. The degree-first splitting then follows through §2.3 (Weibel, *K-book*,
Example I.5.16, pp. 58–59, over an algebraically closed field). The splitting depends on the chosen
origin. Without a point of degree one the degree map need not be onto: its image is `iℤ` with `i`
the index, an abstract splitting `Pic ≅ Pic⁰ ⊕ ℤ` still exists but its `ℤ`-component is not the
degree; for the conic `x² + y² + z² = 0` over `ℝ` the image is `2ℤ`. *Needs:* §§2.1, 2.3; Tau Ceti
`classGroupAddEquivPicZeroProdInt`, `pointEquivDegreeZeroDivisorClass`,
`Divisor.ker_degreeClass_eq_picZero`, `Place.degree_infinity`.

**Checks.**
- `picardDecomposition_point`: the class of `O(P)` has coordinates `(1, P)`.
- `picardDecomposition_origin`: `O(O)` has coordinates `(1, O)`, so `n ↦ n[O(O)]` is the splitting.
- `conic_degree_index_two`: on the real conic `x² + y² + z² = 0` the degree has image `2ℤ`.

### 2.5 Descent of line-bundle classes

Let `X` be a proper geometrically integral curve over `F`, `F^s` a separable closure and
`G = Gal(F^s/F)`. Prove `lineBundleDescent_injective`: `Pic(X) → Pic(X_{F^s})^G` is injective; and
`lineBundleDescent_of_rationalPoint`: it is an isomorphism when `X(F)` is non-empty (Poonen,
*Rational points on varieties*, Exercise 6.10, PDF p. 217; the cokernel embeds into
`ker(Br F → Br X)`, Corollary 6.7.8, PDF p. 209). For `E_W` with its rational origin prove it
directly: an invariant class `c` of degree `d` satisfies
`c − d[O(O)] ∈ Pic⁰(E_{F^s})^G ≅ E(F^s)^G = E(F)`, because `P ↦ [(P) − (O)]` is Galois-equivariant
(EllipticCurves Layer 0.5), and degrees are preserved. Use the separable closure, not an algebraic
closure: over an imperfect field `Pic⁰(E_{F̄})^{Aut(F̄/F)}` can contain classes coming from
`E(F^{perf}) ⊋ E(F)`. The general relative statement belongs to ModularCurves Layer 2D; this target is
its pointed field-valued specialisation, the case `T = Spec F` of JacobianChallenge Layer D's
obstruction sequence written with Galois invariants. *Needs:* §2.4; EllipticCurves Layer 0.5;
ModularCurves Layer 2D; JacobianChallenge Layer D.

**Checks.**
- `descent_elliptic`: for `E_W` with origin, `Pic(E_W) ≅ Pic(E_{F^s})^G`.
- `conic_not_descended`: for the conic `x² + y² + z² = 0` over `ℝ`, the degree-one class on
  `C_ℂ ≅ ℙ¹_ℂ` is `Gal(ℂ/ℝ)`-invariant but not in the image of `Pic(C)` (Poonen, Exercise 2.12,
  PDF p. 68).
- `descent_injective_degree`: two line bundles on `E_W` that become isomorphic over `F^s` are
  isomorphic.

### 2.6 The ring structure

For `X` as in §2.1, KTheoryLowDegrees §12.2 makes `rank ⊕ det` a ring isomorphism when
`ℤ ⊕ Pic(X)` carries the product `(a₁, L₁)·(a₂, L₂) = (a₁a₂, L₁^{a₂} ⊗ L₂^{a₁})`, written additively
`(a₁a₂, a₂L₁ + a₁L₂)`: the square-zero extension `ℤ ⊕ M` of `ℤ` by the `ℤ`-module `M = Pic(X)`
(Mathlib's `TrivSqZeroExt ℤ M`), so `K̃_0(X) = Pic(X)` is an ideal of square zero. This rests on
`rank(E ⊗ E') = rank E · rank E'` and `det(E ⊗ E') = det(E)^{rank E'} ⊗ det(E')^{rank E}` (Weibel,
*K-book*, II.8.1, p. 145). Prove `rankDet_ringEquiv` for `E_W`: in coordinates
`(r, d, P) ∈ ℤ ⊕ ℤ ⊕ E(F)` (rank, degree of the determinant, point), the product is
`(r₁, d₁, P₁)·(r₂, d₂, P₂) = (r₁r₂, r₁d₂ + r₂d₁, r₁P₂ + r₂P₁)` with unit `(1, 0, O)`; this is not the
product ring. *Needs:* §§2.1, 2.4; KTheoryLowDegrees §12.2.

**Checks.**
- `skyscraper_product_zero`: `[O_x]·[O_y] = 0` for closed points `x, y`.
- `lineBundle_minus_one_sq`: `([L] − 1)² = 0` for every line bundle `L`.
- `not_product_ring`: `(0, 1, O)² = 0`, whereas with componentwise multiplication on the two integer coordinates
  the degree coordinate would instead square to one. No ring structure on `E(F)` is assumed.

### 2.7 K₀ of an elliptic curve

Prove `K0Elliptic.addEquiv`: for an elliptic curve `E = E_W` over `F` with its rational origin,
`K_0(E) ≅ ℤ ⊕ ℤ ⊕ E(F)` as abelian groups, a class going to its rank, the degree `d` of its
determinant, and the point `P` with `det ≅ O(P + (d − 1)O)`. It is an isomorphism of groups that
depends on the origin; the multiplication induced by the tensor product is that of §2.6, not the
product ring. Because the origin is rational, every Galois-invariant line-bundle class over a
separable closure descends (§2.5), so the identification commutes with base change and Galois
action. Over an algebraically closed field this recovers `ℤ ⊕ ℤ ⊕ J(X̄)` (Weibel, *K-book*,
Theorem VI.6.4, p. 503, case `n = 0`). This roadmap owns the combination; KTheoryLowDegrees §12.2
supplies only the rank–determinant ring isomorphism of a regular curve. *Needs:* §§2.1, 2.4–2.6.

**Checks.**
- `K0Elliptic_F5`: for `y² = x³ − x` over `𝔽₅`, `K_0(E) ≅ ℤ² ⊕ ℤ/4 ⊕ ℤ/2`.
- `K0Elliptic_not_product`: `(0, 1, O)² = 0` in `K_0(E)`.
- `K0Elliptic_skyscraper`: the skyscraper at a rational point `P` has coordinates `(0, 1, P)`, and at
  the origin `(0, 1, O)`.

### Examples

On `ℙ¹_ℚ`, `K_0 ≅ ℤ ⊕ ℤ` by rank and degree, the skyscraper at `V(t² + 1)` is `(0, 2)` and `χ(O(n)) = n + 1`.
For `y² = x³ − x` over `𝔽₅`, `K_0 ≅ ℤ² ⊕ ℤ/4 ⊕ ℤ/2`, and the difference `[O_P] − [O_Q]` of two
skyscrapers at rational points is `(0, 0, P − Q)`, a class of finite order.

### Dependencies

Layer 1; KTheoryLowDegrees §12.2; JacobianChallenge Layers A–B; AlgebraicCurves Layer 12D;
SchemeAndStackFoundations §5.7; SchemeKTheoryOperations §§2.3, 2.6; EllipticCurves Layer 0.5;
ModularCurves Layer 2D; Tau Ceti's divisor-class and line-bundle APIs.
## Layer 3: The localisation sequence of a curve

The localisation sequence of a regular curve links the K-theory of the curve, of its function field
and of all its residue fields. This layer states it in degrees zero to three over all closed points,
identifies each boundary map, proves its naturality for open immersions and finite maps, and draws
the two injectivity consequences for `K_2` that later layers use.

### 3.1 The sequence over all closed points

Let `X` be a regular, separated, integral curve over a field `F` with function field `F(X)`. Prove
`curveLocalisation`: there is a long exact sequence
```text
K₃(X) → K₃(F(X)) → ⊕ₓ K₂(k(x)) → K₂(X) → K₂(F(X))
      → ⊕ₓ k(x)^× → K₁(X) → F(X)^× → ⊕ₓ ℤ → K₀(X) → ℤ → 0,
```
where `x` runs over all closed points, the maps into the sums are the residues, the maps out of them
are the transfers `(i_x)_*`, and the last map is the generic rank `K_0(X) → K_0(F(X)) = ℤ`, onto
because `[O_X] ↦ 1` (Weibel, *K-book*, V.6.12, p. 416). The sequence is SchemeKTheoryOperations
§3.7's localisation sequence of a one-dimensional noetherian scheme, from the sum over its closed
points through `G(X)` to K-theory of the function field, read through the Cartan equivalence
`K(X) ≃ G(X)` for regular `X` (SchemeKTheoryOperations §2.6); that sequence comes from Quillen's
localisation for the Serre subcategory `M_0(X)` of coherent sheaves of finite length, with
`M(X)/M_0(X) ≅ M(F(X))` (GeneralAlgebraicKTheory §4.14), and dévissage
`K(M_0(X)) ≃ ⊕_x K(k(x))` (GeneralAlgebraicKTheory §4.8; SchemeKTheoryOperations §3.5). The target
here is its form for a regular curve in degrees zero to three, with the terms and the tail
identified. It is not obtained by gluing affine sequences, which do not glue. The
sum runs over all closed points: restricting to rational points breaks exactness. *Needs:* §§1.4,
2.1; GeneralAlgebraicKTheory Layers 2 and 4; SchemeKTheoryOperations §§2.6, 3.5, 3.7;
KTheoryLowDegrees §8.1.

**Checks.**
- `curveLocalisation_exact`: the sequence is exact at every displayed term.
- `curveLocalisation_all_points`: on `ℙ¹_ℚ`, `(t² + 1)/(t² + 2)` has trivial divisor at every
  rational point and is not constant; only the closed points `V(t² + 1)`, `V(t² + 2)` see it.
- `curveLocalisation_tail`: the bottom row is the divisor sequence
  `F(X)^× → Div(X) → Pic(X) → 0` direct-summed with the rank `K_0(X) → ℤ`.
- `curveLocalisation_not_degree`: replacing the generic rank by `a ↦ deg(det a)` breaks exactness:
  on `ℙ¹_ℚ`, `[O_X]` has degree zero and is not in the image of the sum over closed points.

### 3.2 The degree-two boundary is the tame symbol

Let `x` be a closed point with valuation `v_x` on `F(X)`. Prove `curveBoundary_two_eq_tame`: with
localisation normalised left-linearly, the `x`-component of `K_2(F(X)) → ⊕_x k(x)^×` is
K2SymbolsBrauer's tame symbol `∂_x{f, g} = (−1)^{v(f)v(g)} · (f^{v(g)}/g^{v(f)})‾`, so
`∂_x{u, π} = ū` and `∂_x{π, u} = ū⁻¹` for a uniformiser `π` and a unit `u`. With Weibel's right-linear
normalisation, in which Quillen's boundary satisfies `∂{π, u} = ū`, the boundary is the inverse of
`∂_x` (Weibel, *K-book*, V.6.6, p. 409, and Lemma III.6.3, p. 234). The comparison for a single
discrete valuation ring, in both normalisations, is K2SymbolsBrauer §11.1 (localisation boundary);
this target specialises it to the local ring of `X` at each closed point through
SchemeKTheoryOperations §§3.6–3.7, which identify the `x`-component of the curve boundary with the
boundary of `O_{X,x}`. The residue field may be larger than `F`, and the symbol lands in
`k(x)^×`. The Steinberg relation and independence of the uniformiser come from K2SymbolsBrauer
§§9.3–9.4. *Needs:* §3.1; K2SymbolsBrauer §§9.2–9.4, 11.1; SchemeKTheoryOperations §§3.6–3.7.

**Checks.**
- `boundary_unit_uniformizer`: `∂_x{u, π} = ū` and `∂_x{π, u} = ū⁻¹`.
- `boundary_inverse_kbook`: on `{π, u}` the boundary gives `ū⁻¹`, the inverse of the K-book value.
- `boundary_residue_field`: on `ℙ¹_ℚ` at `x = V(t² + 1)`, where `t² + 1` is a uniformiser and `t` a
  unit, `∂_x{t, t² + 1} = t̄ = i ∈ ℚ(i)^×`, a value outside `ℚ^×`, and `∂_x{t² + 1, t} = −i`.
- `boundary_normalisation_exactness`: the kernel and image of the boundary are the same in both
  normalisations.

### 3.3 The divisor boundary and the generic rank

Prove `curveBoundary_one_eq_div`: the boundary `K_1(F(X)) = F(X)^× → ⊕_x K_0(k(x)) = ⊕_x ℤ` is the
divisor `f ↦ Σ_x ord_x(f) · [x]`: SchemeKTheoryOperations §3.7 identifies the codimension-one
component of the boundary with the length order, which at the discrete valuation ring of a closed
point of the regular curve is `ord_x`, the boundary of a parameter `s` being `[R/sR] = [k(x)]`
(Weibel, *K-book*, V.6.6, p. 409, through V.6.1.2). Prove
`curveTransfer_zero`: the transfer `⊕_x ℤ → K_0(X)` sends `[x]` to `[O_x]`, which is `(0, O(x))` in
rank–determinant coordinates (§2.1); and `curveGenericRank`: the last map `K_0(X) → ℤ` is the generic
rank and is onto. So the tail of the sequence is the divisor sequence direct-summed with the rank.
*Needs:* §§2.1, 3.1; KTheoryLowDegrees §8.1; SchemeKTheoryOperations §3.7.

**Checks.**
- `div_t2_plus_1`: on `ℙ¹_ℚ`, `t² + 1 ↦ [x] − 2[∞]` with `k(x) = ℚ(i)`.
- `genericRank_structureSheaf`: `[O_X] ↦ 1`.
- `degree_not_last_map`: `a ↦ deg(det a)` in place of the rank breaks exactness at `K_0(X)`.

### 3.4 Naturality for open immersions

Let `Z` be a finite set of closed points and `j : U = X − Z → X` the inclusion. Prove
`curveLocalisation_restrict`: restriction gives a morphism from the sequence of `X` to that of `U`;
the function-field terms are equal, the residue term of `U` is the sub-sum over the closed points of
`U`, the map between residue terms is the projection killing the terms at `Z`, and `j^*` is the map on
the K-groups of the curves. The functor `j^* : M(X) → M(U)` is exact, preserves finite length, and
induces the identity of `M(X)/M_0(X) = M(F(X)) = M(U)/M_0(U)`; Quillen localisation is natural for
such exact functors (GeneralAlgebraicKTheory §4.14). Consequently a class whose residues vanish
outside `U` can be computed on `U`. *Needs:* §3.1; GeneralAlgebraicKTheory §4.14;
SchemeKTheoryOperations §2.2.

**Checks.**
- `restrict_commutes`: the diagram of the sequences for `X` and `U` commutes.
- `restrict_residue_projection`: the residue map of `U` is that of `X` followed by projection away
  from `Z`.
- `restrict_empty`: for `Z = ∅` the morphism is the identity.

### 3.5 Naturality for finite pullback

Let `φ : X → Y` be a finite morphism of regular integral curves over `F`, hence flat. Prove
`curveLocalisation_pullback`: pullback gives a morphism of localisation sequences whose component
`⊕_y K_n(k(y)) → ⊕_x K_n(k(x))` is `Σ_{x ↦ y} e(x/y) · (k(y) → k(x))_*`; in degree two,
`∂_x{φ^*a, φ^*b} = ∂_y{a, b}^{e(x/y)}` read in `k(x)^×` for `a, b ∈ F(Y)^×`. Flat pullback preserves
torsion sheaves (SchemeKTheoryOperations §2.2), dévissage of `O_X/m_y O_X` gives `Σ_x e_x [k(x)]`, and
the degree-two formula is K2SymbolsBrauer §9.7's ramification formula (Weibel, *K-book*, Remark
III.6.3.1, p. 234). On divisors this is Tau Ceti's `Divisor.conorm`. *Needs:* §§3.1–3.2;
K2SymbolsBrauer §9.7; SchemeKTheoryOperations §2.2; Tau Ceti `Divisor.conorm`.

**Checks.**
- `pullback_square_map`: for `φ : ℙ¹_ℚ → ℙ¹_ℚ`, `s ↦ t = s²`, with `x = (s = 0)` over `y = (t = 0)`
  and `e = 2`, and `u ∈ ℚ^×`: `∂_y{u, t} = u` and `∂_x{u, s²} = u²`.
- `pullback_identity`: `φ = id` gives the identity.
- `pullback_degree_zero`: in degree zero the component sends `[y]` to `Σ_{x ↦ y} e(x/y)[x]`, and
  `Σ_{x ↦ y} e(x/y)[k(x) : k(y)] = deg φ`.

### 3.6 Naturality for finite transfer

For a finite morphism `φ : X → Y` of regular integral curves, prove `curveLocalisation_transfer`:
the transfers `N_{F(X)/F(Y)}` and `φ_* = N_{X/Y}` form a morphism of localisation sequences whose
component on residue terms is `⊕_y Σ_{x ↦ y} N_{k(x)/k(y)}`; in particular
`∂_y(N a) = ∏_{x ↦ y} N_{k(x)/k(y)}(∂_x a)` for `a ∈ K_2(F(X))`. Finite pushforward gives a map of
coherent localisation sequences with its residue terms (SchemeKTheoryOperations §3.7): direct image
along a finite map is exact on coherent and on torsion sheaves, and the functors `M(X) → M(Y)`,
`M_0(X) → M_0(Y)` are compatible (Weibel, *K-book*, V.6.6.3–6.6.4, p. 410, in the Dedekind case,
applied at each local ring). The target is its form for regular curves, with the residue component
and the degree-two formula, which is K2SymbolsBrauer's norm-residue formula (§§10.27, 11.6).
*Needs:* §3.1; GeneralAlgebraicKTheory §4.14; SchemeKTheoryOperations §§2.3, 3.7; K2SymbolsBrauer
§§10.27, 11.6.

**Checks.**
- `transfer_identity`: for `φ = id`, `N` is the identity.
- `transfer_degree_one`: in degree one the residue-term map is the norm `N_{k(x)/k(y)}`.
- `transfer_projection`: `N ∘ φ^* = deg φ` on `K_*(F(Y))`.

### 3.7 K₂ of a curve over a number field, rationally

Let `X` be a regular integral curve over a number field `k`. Prove `K2_curve_injective_rat`:
`K_2(X) ⊗ ℚ → K_2(k(X)) ⊗ ℚ` is injective. By exactness at `K_2(X)` the kernel of
`K_2(X) → K_2(k(X))` is the image of `⊕_x K_2(k(x))`, which is torsion: each `k(x)` is a number field,
`K_2` of a number field `L` is the filtered colimit of the finite groups `K_2(O_{L,S})`
(GeneralAlgebraicKTheory §3.2; ArithmeticKTheory §3.4), and `⊗ ℚ` is exact. The statement applies at
every closed point, not only rational ones, and needs no common exponent. Exactness says only that
the kernel of the tame symbol on `K_2(k(X))` is the image of `K_2(X)`; identifying it with `K_2(X)` is
this theorem after `⊗ ℚ`, not a definition (Weibel, *K-book*, V.6.12, p. 416). *Needs:* §3.1;
GeneralAlgebraicKTheory §3.2; ArithmeticKTheory §§2.1, 2.4, 3.4.

**Checks.**
- `K2_injective_rat_statement`: the map is injective after `⊗ ℚ`.
- `K2_kernel_torsion`: the kernel of `K_2(X) → K_2(k(X))` is torsion, being a quotient of a sum of
  `K_2` of number fields.
- `K2_integral_not_claimed`: identifying `ker ∂` with `K_2(X)` integrally would assert an injectivity
  that is not proved; the theorem is stated only rationally.

### 3.8 K₂ of a curve over a finite field, integrally

Let `X` be a regular integral curve over `F_q`. Prove `K2_curve_injective_finite`:
`0 → K_2(X) → K_2(F_q(X)) → ⊕_x k(x)^×` is exact, so `K_2(X)` is the kernel of the tame symbol. Every
`k(x)` is finite and `K_2` of a finite field vanishes (K2SymbolsBrauer §§5.12, 6.16; Weibel, *K-book*,
VI.6, opening, p. 502). *Needs:* §3.1; K2SymbolsBrauer §§5.12, 6.16.

**Checks.**
- `K2_finite_exact`: `0 → K_2(X) → K_2(F_q(X)) → ⊕_x k(x)^×` is exact.
- `K2_P1_finite`: for `X = ℙ¹_{F_q}`, `K_2(X) = K_2(F_q)² = 0`, so the tame symbol on `K_2(F_q(t))` is
  injective (Weibel, *K-book*, Example III.6.7.1, p. 239).
- `K2_finite_residue_zero`: the residue term `⊕_x K_2(k(x))` vanishes, which is exactly what makes
  the integral statement hold.

### Examples

On `ℙ¹_ℚ`: `div(t² + 1) = [x] − 2[∞]` with `k(x) = ℚ(i)`; the tame symbol of `{t, t² + 1}` at `x` is
`i`; the function `(t² + 1)/(t² + 2)` is invisible at rational points. On `ℙ¹_{F_q}` the tame symbol
on `K_2(F_q(t))` is injective with image the kernel of the norm to `F_q^×`.

### Dependencies

Layers 1–2; GeneralAlgebraicKTheory Layers 2 and 4 and §3.2; SchemeKTheoryOperations §§2.2–2.6,
3.5–3.7; KTheoryLowDegrees §8.1; K2SymbolsBrauer §§5.12, 6.16, 9.2–9.7, 10.27, 11.1, 11.6;
ArithmeticKTheory §§2.1, 2.4, 3.4; Tau Ceti
`Divisor.conorm`.
## Layer 4: K₁, SK₁, coniveau and weights

The localisation sequence splits into short exact pieces. In degree one it isolates the curve
invariant `SK_1`; in degree three it gives the two-column coniveau description of `K_3`; and the
Adams operations separate the field's contribution from the geometry of the curve.

### 4.1 K₁ and SK₁ of a proper curve

Let `X` be an integral regular curve, proper over `F`, with `H⁰(X, O_X) = F`. Prove `curveK1Image`:
the image of `K_1(X)` in `K_1(F(X)) = F(X)^×` is `F^×`. The composite factors through the determinant
`K_1(X) → Γ(X, O_X)^× = F^×` (naturality of `det`, KTheoryLowDegrees §8.1), and pullback along
`π : X → Spec F` makes `F^×` a subgroup of the image. Define
```text
curveSK1 X := ker (K₁(X) → K₁(F(X))).
```
Prove `curveSK1_eq_range_pushforward`: `SK_1(X)` is the image of `⊕_x (i_x)_* : ⊕_x k(x)^× → K_1(X)`,
and `curveSK1_eq_coker`: it is isomorphic to the cokernel of the tame symbol
`∂ : K_2(F(X)) → ⊕_x k(x)^×`, compatibly with the maps from `⊕_x k(x)^×` (exactness of §3.1). Prove
`curveSK1_split`: `π^*` splits `K_1(X) = π^*K_1(F) ⊕ SK_1(X)`, because `π^*` followed by restriction to
the generic point is the inclusion `F^× ⊂ F(X)^×`; and `curveSK1_norm`:
`π_*((i_x)_* u) = N_{k(x)/F}(u)` for `u ∈ k(x)^×` (Weibel, *K-book*, V.6.12.1, proof, p. 417). Prove
`curveSK1_affine_eq_stableSK1`: for an affine regular integral curve `Spec R`, the same kernel is the
stable `SK_1(R) = ker(det)`, since `R^× → F(X)^×` is injective (Weibel, *K-book*, V.6.8, proof,
p. 412). For proper `X` the invariant can be non-zero even when a covering by affine opens has
vanishing stable `SK_1`, as the projective-line check shows. There is no assertion that every affine
regular curve over an arbitrary field has vanishing stable `SK_1`. Regularity
is used for `K = G` in the localisation sequence, not for the image statement. *Needs:* §§1.2, 3.1;
KTheoryLowDegrees §8.1; SchemeKTheoryOperations §§2.2–2.3, 5.5.

**Checks.**
- `curveSK1_projectiveLine`: `SK_1(ℙ¹_F) = ∞_*(F^×) ≅ F^×` and `K_1(ℙ¹_F) ≅ F^× ⊕ F^×` (Weibel,
  *K-book*, V.6.13.2, p. 417).
- `curveSK1_affine_line`: for `𝔸¹_F = Spec F[t]`, `ker(K_1(F[t]) → F(t)^×) = SK_1(F[t]) = 0` by
  homotopy invariance.
- `curveSK1_not_local`: `ℙ¹_F = Spec F[t] ∪ Spec F[t⁻¹]` with `SK_1` of both charts zero, yet
  `SK_1(ℙ¹_F) ≅ F^× ≠ 0` for `F ≠ 𝔽₂`.
- `curveSK1_eq_coker_test`: for `ℙ¹_F`, `coker(∂ : K_2(F(t)) → ⊕_x k(x)^×) ≅ k(∞)^× = F^×`, and the
  isomorphism sends the class of `u ∈ k(∞)^×` to `∞_*(u)`.

### 4.2 The rational base-point splitting

Let `X` be as in §4.1 and `P ∈ X(F)` a rational point with closed immersion `P : Spec F → X`. Prove
`basePoint_pushforward`: `π_* ∘ P_* = id` on `K_*(F)` and `π_* ∘ (i_x)_* = N_{k(x)/F}` on `K_1(k(x))`;
hence `basePoint_split`: `P_* : F^× → SK_1(X)` is a section of `π_*|_{SK_1(X)}` and
`K_1(X) = π^*F^× ⊕ P_*F^× ⊕ V(X)` with `V(X) = ker(π_*|_{SK_1(X)})`. Prove `basePoint_pullback_zero`:
`P^* ∘ (i_x)_* = 0` for every closed point `x`, so `P^* : K_1(X) → K_1(F)` is the identity on
`π^*F^×` and zero on `SK_1(X)`. For `x ≠ P` the fibre product `Spec F ×_X Spec k(x)` is empty
(Tor-independent base change, SchemeKTheoryOperations §2.4); for `x = P` the self-intersection
formula gives `P^*P_*(u) = λ_{−1}(N^∨)·u = (1 − 1)·u = 0`, the conormal line being trivial
(SchemeKTheoryOperations §7.6; Weibel, *K-book*, V.6.12.1, proof, p. 417). The points `P` and `i_x` are
proper and perfect because `X` is regular. *Needs:* §4.1; SchemeKTheoryOperations §§2.3–2.4, 7.6.

**Checks.**
- `basePoint_P1`: for `X = ℙ¹_F` and `P = ∞`, `V(ℙ¹_F) = 0` and `K_1(ℙ¹_F) = π^*F^× ⊕ ∞_*F^×`.
- `basePoint_pullback_SK1`: `P^*` restricted to `SK_1(X)` is zero.
- `basePoint_norm_nonrational`: on `ℙ¹_ℚ`, for `x = V(t² + 1)` and `u = i`, `π_*(i_x)_* u = N(i) = 1`.

### 4.3 The two-column coniveau spectral sequence

For a regular integral curve `X` over `F`, prove `curveConiveau`: the coniveau spectral sequence of
SchemeKTheoryOperations §4.5 has `E_1^{0,−n} = K_n(F(X))`, `E_1^{1,−n−1} = ⊕_x K_n(k(x))` and
`d_1 = ∂`, the residue map of §3.1; there are no other columns, so `E_2 = E_∞`. With the coniveau
filtration `F¹K_n(X) := im(⊕_x (i_x)_* : ⊕_x K_n(k(x)) → K_n(X))`, `F⁰ = K_n(X)`, `F² = 0`, prove for
every `n ≥ 0` the short exact sequence
```text
0 → coker(∂_{n+1} : K_{n+1}(F(X)) → ⊕ₓ Kₙ(k(x))) → Kₙ(X) → ker(∂ₙ : Kₙ(F(X)) → ⊕ₓ K_{n−1}(k(x))) → 0
```
with `K_{−1}(k(x)) = 0` when `n = 0`; its maps are those of the localisation sequence (Weibel, *K-book*, V.9.5 and (9.5.1), p. 437, and
V.9, opening, p. 435). The left term is in general non-zero: if `X` is proper with a rational point
`P`, then `π_*P_* = id` makes `P_* : K_n(F) → F¹K_n(X)` injective; it may vanish: for `𝔸¹_F`,
`K_n(𝔸¹_F) = K_n(F)` (homotopy invariance) injects into `K_n(F(t))` (Weibel, *K-book*, V.6.7.1,
p. 411), so `F¹K_n(𝔸¹_F) = 0`. API: `coniveauPage`, `coniveauFiltration`, `coniveau_eq_localisation`,
`coniveauFiltration_left_eq_coker`, `coniveau_gr0_eq_ker`, `coniveau_degenerate`. *Needs:* §3.1;
SchemeKTheoryOperations §§2.3, 4.5, 5.1–5.2.

**Checks.**
- `two_columns`: for `X = Spec F` (dimension zero) there is one column and `F¹ = 0`; for a curve
  only the columns `p = 0, 1` can be non-zero; individual entries can vanish.
- `left_term_projectiveLine`: `F¹K_3(ℙ¹_F) = ∞_*K_3(F) ≅ K_3(F)` and `ker ∂_3 = K_3(F)`; for `F = ℚ`
  both are `ℤ/48` and `K_3(ℙ¹_ℚ) ≅ (ℤ/48)²`.
- `left_term_affine_line`: `F¹K_3(𝔸¹_F) = 0`.
- `agrees_with_localisation`: `⊕_x K_n(k(x)) → F¹K_n(X) ⊂ K_n(X)` is `⊕_x (i_x)_*`.

### 4.4 The third K-group of a curve

Prove `curveK3_extension`: for a regular integral curve `X` over `F`, `K_3(X)` sits in the exact sequence
```text
0 → coker(∂₄ : K₄(F(X)) → ⊕ₓ K₃(k(x))) → K₃(X) → ker(∂₃ : K₃(F(X)) → ⊕ₓ K₂(k(x))) → 0,
```
the case `n = 3` of §4.3, with the maps of the localisation sequence (Weibel, *K-book*, V.6.12, p. 416;
VI.6.8, proof, p. 505, for the notation). Both ends are needed: the kernel alone is the associated
graded piece `K_3(X)/F¹`, not the group, and the extension carries the content. The quotient `K_3^ind(F(X)) = coker(K^M_3 → K_3)` (K3BlochGroups §2.1) is compared
with this sequence rationally by the weight-two projection of §4.6. No integral map from that
quotient into `K_3(X)` is asserted. *Needs:* §4.3; K3BlochGroups §§2.1,
4.20.

**Checks.**
- `K3_37a1_contains`: for `E = 37a1` over `ℚ` (origin rational), `K_3(E)` contains
  `π^*K_3(ℚ) ⊕ O_*K_3(ℚ) ≅ (ℤ/48)²`, so `K_3(E)` is not the image of `K_3^ind` of the base field.
- `K3_kernel_not_group`: `K_3(E) → ker ∂_3` is not injective for `E = 37a1`, since
  `F¹K_3(E) ⊇ O_*K_3(ℚ) ≅ ℤ/48`.
- `K3_P1`: `K_3(ℙ¹_ℚ) ≅ K_3(ℚ)²`, with `F¹ = ∞_*K_3(ℚ)` and quotient `ker ∂_3 = K_3(ℚ)`.

### 4.5 Adams weights of the K-theory of a curve

Let `X` be a regular curve over `F`. The Adams operations `ψ^k` of SchemeKTheoryOperations §6.8 act on
`K_n(X)`. Define `weightComponent n j := K_n(X)_ℚ^{(j)} = {a : ψ^k a = k^j a for all k}`. Prove
`weightComponent_iSup_eq_top`: `K_n(X)_ℚ = ⊕_{0 ≤ j ≤ n+1} K_n(X)_ℚ^{(j)}`, with `weightProjector` the
rational idempotents built from finitely many `ψ^k` (SchemeKTheoryOperations §6.9); and
`weightComponent_motivic`: `K_n(X)_ℚ^{(j)} ≅ H^{2j−n}(X, ℚ(j))`, where for a regular curve
that is not smooth over `F` the right side means `CH^j(X,n) ⊗ ℚ`, using the cycle-complex
cohomology of MotivicEtaleKTheory §§4.1–4.3. This is a regular-scheme extension of §9.3's smooth
perfect-field comparison, not an application outside that supplier's hypotheses.

Construct `regularCurveMotivicTower` for every regular curve over any field by forming the
simplicial spectra of perfect complexes on `X × Δ^m` with supports meeting all faces in
codimension at least `j`. Import the support spectra, Cartan equivalence and homotopy invariance
from SchemeKTheoryOperations §§2.6, 3.3, 5.1, the cycle complexes and localisation from
MotivicEtaleKTheory §§4.1–4.3, and exact couples from StableHomotopyKTheory Layer 7. Prove the
regular-curve adapter `regularCurveMotivicTower_layers`: the successive cofibres identify with
the corresponding cycle complexes through the support-category cycle-class map; use the
termwise `K = G` comparison, so smoothness over `F` is not assumed. Prove
`regularCurveMotivicTower_converges` and `regularCurveMotivicTower_adams`: it abuts to `K(X)`
and `ψ^k` acts on weight `j` by `k^j`. These are the curve specialisations of Levine,
*K-theory and motivic cohomology of schemes, I*, §3.2, Lemma 3.3 and Proposition 3.5,
pp. 12–14, Theorem 12.12 and proof, pp. 58–59, and Theorem 14.7 and proof, pp. 73–74.
The differentials have torsion image because their source and target weights differ;
rational degeneration, the finite filtration and the Adams projectors give
`weightComponent_motivic` and `weightComponent_iSup_eq_top`. Compatibility with MotivicEtaleKTheory §§8.6, 9.3 on
smooth curves is `regularCurveMotivicTower_smoothComparison`, via the same support and
cycle-class maps. The bound is `0 ≤ j ≤ n+1`, by Levine, Theorem 14.7(3),(5), p. 73;
in cycle notation `CH^j(X,n) = 0` when `j > dim(X × Δ^n) = n+1`.
For `K_0` the decomposition is integral: `K_0(X) = ℤ·1 ⊕ ker(rank)` with
weights `0, 1`, since `ψ^k[L] = [L^{⊗k}]` and products of rank-zero classes vanish on a curve. For `K_1`,
`π^*F^×` has weight one and `SK_1(X)` weight two, rationally, the latter by the Gysin weight shift
`ψ^k ∘ (i_x)_* = k · (i_x)_* ∘ ψ^k` for codimension one (SchemeKTheoryOperations §6.11). Prove
`weightComponent_finiteCoeff`: with coefficients `ℤ/ℓ^ν`, the eigenspaces are defined when `ℓ` is prime to
`char F` and the eigenvalues `k^j`, `0 ≤ j ≤ n + 1`, are pairwise distinct modulo `ℓ` for some `k` prime
to `ℓ`, the condition of SchemeKTheoryOperations §6.9; and `weightComponent_pullback`: pullback
`f^*` maps `K_n(Y)_ℚ^{(j)}` into `K_n(X)_ℚ^{(j)}`, in particular along base change `F ⊂ F'`. In general
the projectors have denominators: `K_0(ℙ²)` has no integral eigen-decomposition. *Needs:* §§2.1, 4.1,
4.4; SchemeKTheoryOperations §§2.6, 3.3, 5.1, 6.8–6.11;
MotivicEtaleKTheory §§4.1–4.3, 8.6, 9.3; StableHomotopyKTheory Layer 7.

**Checks.**
- `regularTower_P1`: on `ℙ¹_F`, the cycle layers give the two summands with the weight shift
  of the hyperplane class; in degree zero they are exactly rank and degree.
- `regularTower_imperfect_field`: in characteristic two, for `F = 𝔽₂(t)`, the regular curve
  `Spec(F[x,y]/((y−x)²−t))` becomes non-reduced over `F(√t)`. Its tower and rational
  comparison are still required over `F`; a smoothness prerequisite would wrongly exclude it.
- `regularTower_not_coniveau`: for an elliptic curve, the motivic tower has the weight-two
  `SK_1` layer, although the codimension-of-points coniveau sequence of §4.3 has only two
  columns. The two filtrations are compared through their maps, not identified by their names.
- `K0_curve_weights`: for `ℙ¹_F`, `ψ^k(1 − [O(−1)]) = k(1 − [O(−1)])`, so
  `K_0(ℙ¹_F) = ℤ·1 ⊕ ℤ·(1 − [O(−1)])` with weights `0, 1`.
- `K0_P2_not_integral`: in `K_0(ℙ²_F) = ℤ[z]/(z³)`, `z = 1 − [O(−1)]`, the weight-one eigenvector is
  `z + z²/2 ∉ K_0(ℙ²_F)`, and `ℤ·1 ⊕ ℤ(2z + z²) ⊕ ℤ·z²` has index two (Weibel, *K-book*, II.8.6, p. 149).
- `K1_curve_weights`: for `ℙ¹_F`, `ψ^k` acts by `k` on `π^*F^×` and by `k²` on `∞_*F^× ⊂ K_1(ℙ¹_F)`.
- `weight_zero_field`: for `X = Spec F` and `n ≥ 1`, `K_n(F)_ℚ^{(0)} = 0` and `K_1(F)_ℚ = K_1(F)_ℚ^{(1)}`.

### 4.6 The indecomposable K₃ is the weight-two part

Prove `K3ind_eq_weight_two`: for every field `L`, `K_3(L)_ℚ = K_3(L)_ℚ^{(2)} ⊕ K_3(L)_ℚ^{(3)}`, the
image of `K^M_3(L)_ℚ` is `K_3(L)_ℚ^{(3)}`, and hence `K_3^ind(L)_ℚ ≅ K_3(L)_ℚ^{(2)}`. Weights `j ≥ 4`
vanish because `2j − 3 > j` and `H^i(L, ℚ(j)) = 0` for `i > j` (MotivicEtaleKTheory §4.4); weight one is
`H^{−1}(L, ℚ(1)) = 0`; weight zero vanishes in positive degree. Products of weight-one classes have
weight three since `ψ^k` is multiplicative, so the image of `K^M_3(L)_ℚ` lies in weight three, and equals
it by `H³(L, ℤ(3)) ≅ K^M_3(L)` (MotivicEtaleKTheory §4.4) and §9.3 (Weibel, *K-book*, VI.4.3, edge map,
p. 481). For a regular curve `X` over `F` prove `K3_curve_weights`: pullback maps `K_3^ind(F)_ℚ` into
`K_3(X)_ℚ^{(2)}`, and `F¹K_3(X)_ℚ` has weights three and four, the Gysin shift of the weights two and
three of the residue fields. This separates the base field's indecomposable contribution from the
geometry of the curve. Rational coefficients are essential to the claimed Adams eigenspace splitting: integral
eigenvalues do not supply integral projectors. The map `K^M_3(L) → K_3(L)` itself is
injective (Weibel, *K-book*, Proposition VI.4.3.2, p. 482); the weaker bound that its kernel
is killed by two does not exhibit a nonzero kernel. The integral indecomposable quotient
is supplied by K3BlochGroups §2.1. *Needs:* §4.5; K3BlochGroups §§2.1–2.2, 2.5;
MotivicEtaleKTheory §§4.4, 9.3; SchemeKTheoryOperations §§6.8, 6.11.

**Checks.**
- `K3ind_Q`: `K_3^ind(ℚ)_ℚ = 0 = K_3(ℚ)_ℚ^{(2)}`, consistent with `K_3(ℚ) ≅ ℤ/48`.
- `K3ind_rank`: for a number field `L` with `r_2` complex places, `dim K_3(L)_ℚ^{(2)} = r_2`
  (K3BlochGroups §2.5).
- `K3_curve_F1_weights`: on `ℙ¹_F`, `∞_*K_3(F)_ℚ` lies in weights three and four, not two.

### Examples

For `ℙ¹_F`: `K_1 = F^× ⊕ F^×`, `SK_1 = ∞_*F^×`, `V(ℙ¹_F) = 0`, `K_3 ≅ K_3(F)²` with `F¹ = ∞_*K_3(F)`, and
the weights of `K_0` are `0, 1` with basis `1, 1 − [O(−1)]`. For `E = 37a1`, `K_3(E)` contains
`(ℤ/48)²` from the base field and the origin.

### Dependencies

Layers 2–3; KTheoryLowDegrees §8.1; SchemeKTheoryOperations §§2.2–2.4, 4.5, 5.1–5.5, 6.8–6.11, 7.6;
K3BlochGroups §§2.1–2.5, 4.20; MotivicEtaleKTheory §§4.1–4.4, 8.6, 9.3.
## Layer 5: Functoriality, isogenies and curves over finite fields

This layer makes K-theory of curves functorial along the maps of Layer 1, computes the effect of an
isogeny, treats the projective line as the first worked case, and then computes the K-groups of a
curve over a finite field completely: Harder's finiteness theorem, the geometric curve as a Galois
module, Frobenius descent, and the elliptic groups with their orders.

### 5.1 Pullback and pushforward for curves

K-theory of noetherian schemes is contravariant for every morphism, by derived pullback of perfect
complexes (SchemeKTheoryOperations §2.2, `Scheme.K.pullback`), and covariant for proper morphisms of
finite Tor-dimension, by derived pushforward (§2.3, `Scheme.K.pushforward`); G-theory is covariant for
every proper morphism (`Scheme.G.pushforward`) (Weibel, *K-book*, V.3.11, p. 395, with the published
correction inserting "pseudocoherent" in the definition of the flasque model). Record the
specialisations the roadmap uses as `KPullback`, `KPushforward`, `KPullback_comp`,
`KPushforward_comp` and `KPushforward_baseChange` (flat, more generally Tor-independent, base change,
§2.4). Prove `KPushforward_eq_transfer`: for a finite flat morphism the pushforward is the transfer
attached to the module structure, by `Scheme.K.pushforward_affine` on each affine restriction
`Spec B → Spec A` with `B` finite locally free over `A`, in every degree (Weibel, *K-book*, V.3.3.2,
p. 386). Prove `isogeny_finiteFlat`: for a non-zero isogeny `f : E' → E`, the scheme morphism of §1.6
is finite and flat of locally free rank `deg f` (a finite dominant morphism of regular curves is
flat, and its generic rank is the function-field degree), hence proper and perfect; its K-pullback is
induced by `Lf^*` and its K-pushforward by `Rf_* = f_*`, which on affine pieces is restriction of
scalars and agrees with the classical finite-flat transfer in every non-negative degree. The constant
map to the origin is excluded. Pushforward along the structure morphism of a proper curve is the
Euler characteristic in degree zero (§2.2). *Needs:* §§1.6, 2.2; SchemeKTheoryOperations §§2.2–2.4;
GeneralAlgebraicKTheory §4.14.

**Checks.**
- `pushforward_structure_morphism_P1`: for `π : ℙ¹_F → Spec F`, `π_*[O(n)] = n + 1` in `K_0(F) = ℤ`; in
  particular `π_*[O(−1)] = 0`.
- `pushforward_structure_morphism_elliptic`: for an elliptic curve with origin `O`, `π_*[O_E] = 0` and
  `π_*[O_E(O)] = 1`, agreeing with Tau Ceti's `eulerCharBelow`.
- `finite_field_extension_transfer`: for `Spec L → Spec F` with `L/F` finite, `f_* : K_1(L) → K_1(F)` is
  `N_{L/F}` and `f^*` is the inclusion.
- `pullback_generic_point`: for the generic point `j : Spec F(X) → X` (neither proper nor of finite
  type), `j^* : K_1(X) → F(X)^×` is the map of §4.1.
- `open_immersion_not_proper`: for `j : 𝔸¹_F → ℙ¹_F`, `j_*O` is quasi-coherent and not coherent, so
  sheaf direct image gives no map `G_0(𝔸¹_F) → G_0(ℙ¹_F)`.
- `isogeny_identity`: the identity isogeny gives identity maps in every degree.

### 5.2 The projection formula and isogenies

For a proper morphism `f` of noetherian schemes the projection formula
`f_*(x · f^*y) = f_*(x) · y` holds for `x ∈ G_*(X)`, `y ∈ K_*(Y)`, and for `x ∈ K_*(X)` when `f` has
finite Tor-dimension (SchemeKTheoryOperations §2.4; Weibel, *K-book*, V.3.12, p. 395). Prove
`isogeny_pushPull`: taking `x = 1`, for an isogeny `f`, `f_* f^*(y) = [f_*O_{E'}] · y` on `K_*(E)`. The
class `[f_*O_{E'}]` has rank `deg f` but is **not** `deg f · 1` in integral K-theory in general:
whether it is is decided by its determinant, a degree-zero line bundle (§5.3). *Needs:* §5.1;
SchemeKTheoryOperations §2.4.

**Checks.**
- `pushPull_class`: `f_*f^* = [f_*O_{E'}] ·` on `K_*(E)`.
- `pushPull_rank`: `rank [f_*O_{E'}] = deg f`.
- `pushPull_not_degree`: for a separable isogeny of degree two in characteristic not two,
  `f_*f^*(1) ≠ 2 · 1` in `K_0(E)` (§5.3).

### 5.3 The class of `f_*O` and the determinant obstruction

Let `f : E' → E` be a non-zero isogeny of elliptic curves over `F` of degree `d`. Prove
`pushforwardStructureSheaf_class`: `f_*O_{E'}` is locally free of rank `d` and
`L_f := det(f_*O_{E'}) ∈ Pic⁰(E)`. The rank is the function-field degree (Tau Ceti's
`TauCeti.Isogeny.degree` through §1.6); `deg L_f = χ(f_*O_{E'}) − d · χ(O_E) = 0 − 0`. Write `P_f ∈ E(F)` for
the point of `L_f` (§2.4). Prove `isogeny_rankDet_action`: in the coordinates of §2.7,
`[f_*O_{E'}] = (d, 0, P_f)` and, by the square-zero product of §2.6,
```text
f_* f^* (r, e, P) = (d r, d e, d P + r P_f).
```
So `f_*f^* = d` on `K_0(E)` if and only if `L_f ≅ O_E`, and then `f_*f^* = d` on every `K_n(E)`. Then
prove three cases.
- `pushforward_det_sq_trivial`: if `f` is separable, `L_f^{⊗2} ≅ O_E`: for `f` finite étale the trace
  pairing `f_*O ⊗ f_*O → O` is perfect, so `f_*O ≅ (f_*O)^∨` and `det^{⊗2}` is trivial. Hence
  `[f_*O_{E'}] = d · 1` in `K_0(E) ⊗ ℚ` and `f_*f^* = d` on `K_*(E) ⊗ ℚ`.
- `pushforward_det_mulBy_odd`: if `f = [m]` with `m` odd and `char F ∤ m`, then `L_{[m]} ≅ O_E`, so
  `[[m]_*O_E] = m²` in `K_0(E)` and `[m]_*[m]^* = m²` on `K_*(E)`. The fibre square
  `E ×_{[m], E, [m]} E ≅ E × E[m]` gives `[m]^*[m]_*O_E ≅ O_E^{m²}` by flat base change, so
  `[m]^*L_{[m]}` is trivial; `[m]^*` acts on `Pic⁰` as multiplication by `m` (theorem of the square,
  ModularCurves Layer 2D, with `[m]^∨ = [m]` from EllipticCurves Layer 1), so `L_{[m]}` is `m`-torsion, and with the separable case it is also
  2-torsion; `m` odd forces triviality.
- `pushforward_det_degree_two`: if `char F ≠ 2` and `f` is separable of degree two, then
  `f_*O_{E'} = O_E ⊕ L` with `L = ker(½ Tr)`, `h⁰(L) = h⁰(E', O) − h⁰(E, O) = 0`, so `L ≇ O_E` and
  `L_f = L` is a non-trivial 2-torsion line bundle: `[f_*O_{E'}] ≠ 2` in `K_0(E)` and
  `f_*f^*(1) ≠ 2 · 1`.

(Weibel, *K-book*, V.3.12, p. 395, with `x = 1`.) *Needs:* §§1.6, 2.4–2.7, 5.1–5.2; ModularCurves
Layer 2D; EllipticCurves Layer 1; Tau Ceti `TauCeti.Isogeny.degree`.

**Checks.**
- `pushforward_class_detects`: evaluating on `[O_E] = (1, 0, O)` gives `(d, 0, P_f)`; the point component
  detects a non-trivial determinant.
- `mulBy_three`: for `[3]` on any `E` over `ℚ`, `[3]_*[3]^* = 9` on `K_*(E)`.
- `two_isogeny_x3_minus_x`: for `E : y² = x³ − x` over `ℚ` and its 2-isogeny to `y² = x³ + 4x`,
  `[f_*O_E] = (2, 0, P_f)` with `P_f ≠ O`, so `f_*f^*(1) ≠ 2` in `K_0`.
- `separable_rational`: for every separable isogeny `f_*f^* = deg f` on `K_*(E) ⊗ ℚ`.

### 5.4 The projective line

SchemeKTheoryOperations §5.5 supplies the projective-bundle equivalence for `ℙ¹_F`, written
`projectiveLine_K` below: with `π : ℙ¹_F → Spec F` and the section `σ` at infinity,
`(a, b) ↦ π^*a + [O(−1)] · π^*b` is an isomorphism `K_n(F) ⊕ K_n(F) ≅ K_n(ℙ¹_F)` in every degree, with
inverse `x ↦ (π_*x, σ^*x − π_*x)`, and in `K_0` the coordinates are `(χ(x), rank(x) − χ(x))`:
`[O(m)] = (m + 1, −m)`, `[O] = (1, 0)`, `[O(−1)] = (0, 1)`, `[O_∞] = (1, −1)` (Weibel, *K-book*, II.8.5,
p. 149, in degree zero over a quasi-compact base; V.1.5, p. 369, over a quasi-projective base;
V.6.13.2, p. 417, for a regular noetherian base). The comparison with the rank–Pic basis is
KTheoryLowDegrees §12.3: `(r, d) = (a + b, −b)`. Prove `projectiveLine_finiteField`: over `F = F_q`,
by Quillen's computation (GeneralAlgebraicKTheory §13.8c), `K_{2i}(ℙ¹) = 0` and
`K_{2i−1}(ℙ¹) ≅ (ℤ/(q^i − 1))²` for `i ≥ 1`. For an elliptic curve the odd groups have the same shape
(§5.11), but the even ones are twisted elliptic torsion; the vanishing of the even groups of `ℙ¹`
does not transfer to `E`. Prove `elliptic_K0_generated_iff`: `K_0(E)` is generated by `[O_E]` and
`[O_E(−O)]` over `K_0(F)` if and only if `E(F) = 0`. *Needs:* §5.1; SchemeKTheoryOperations §5.5; KTheoryLowDegrees §12.3;
GeneralAlgebraicKTheory §13.8c.

**Checks.**
- `projectiveLine_basis`: `[O] = (1, 0)`, `[O(−1)] = (0, 1)` and `[O_∞] = (1, −1)`.
- `projectiveLine_F2`: over `𝔽₂`, `K_1(ℙ¹) = 0`, `K_2(ℙ¹) = 0` and `K_3(ℙ¹) ≅ (ℤ/3)²`.
- `elliptic_K0_generated_iff`: for `37a1` over `𝔽₂`, `E(𝔽₂) ≅ ℤ/5`, so `K_0(E)` is not generated by
  `[O_E], [O_E(−O)]`; for `y² + y = x³ + x + 1` over `𝔽₂`, `E(𝔽₂) = 0` but `#K_2(E) = 5 ≠ 1 = #K_2(ℙ¹)`.
- `projectiveLine_SK1`: `SK_1(ℙ¹_F) = ∞_*F^×`.

### 5.5 Arithmetic inputs over a finite field

Five arithmetic theorems and a degree-one zero-cycle construction enter the finite-field computation. Let `X` be a
smooth projective geometrically connected curve over `F_q`, `q = p^r`, with function field `F`.

Prove `closedPoints_coprimeDegrees`: there are closed points of two coprime degrees. More
precisely, there is a closed point of every sufficiently large degree: Möbius inversion of
`#X(F_{q^n}) = Σ_{d∣n} d · #X_closed_degree_d`, together with the curve Weil bound
`|#X(F_{q^n}) − (q^n + 1)| ≤ 2g q^{n/2}`, makes the degree-`n` count positive for all sufficiently
large `n`; choose two consecutive such degrees. The bound is SchemeAndStackFoundations §5.11
applied to the base change of `X` to `F_{q^n}`, equally DeligneWeightsAndPurity DWP.1 §1.6; the
genus-one Hasse bound alone does not cover a curve of higher genus. Define
`degreeOneZeroCycle` to be a chosen finite integral zero-cycle `z = Σ n_x[x]` with
`Σ n_x[k(x):F_q] = 1`, obtained by Bézout from those degrees; its coefficients may be negative.
Prove `zeroCycle_splitting`: `Σ n_x N_{k(x)/F_q} i_x^*` retracts structure pullback on every
`K_n(F_q)`, since restriction followed by transfer is multiplication by `[k(x):F_q]`.
In degree one, `u ↦ Σ n_x(i_x)_* res_x(u)` is a section of `π_*` into `SK_1(X)`, by the projection
formula and `Σ n_x deg x = 1`. This supplies the base-point-free splitting needed below
(Weibel, *K-book*, VI.6.5–6.7, pp. 504–505, together with the finite-transfer formula V.6.6.4, p. 410).
API: `degreeOneZeroCycle_degree`, `degreeOneZeroCycle_of_point`, `zeroCycle_splitting`,
`zeroCycle_SK1_section`.

**Checks for the zero-cycle.**
- On `ℙ¹` the rational origin is a one-term degree-one cycle, and the retraction is its pullback.
- For points of degrees two and three, `z = [x₃] − [x₂]` has degree one; the induced composite is
  `3 − 2 = 1`. Requiring effective coefficients would lose this construction.
- A single degree-two point gives composite multiplication by two, so cannot replace `z`.
- The zero cycle with all coefficients zero has degree zero and is rejected.

`BMS_functionField`: if `R` is the coordinate ring of a smooth affine curve over a finite field, then
`SK_1(R) = 0` (Bass–Milnor–Serre; Weibel, *K-book*, Variant III.2.5.1, p. 195). Hence for an affine
open `U = Spec R` of `X`, `K_1(R) = R^×`. The proof is the Mennicke-symbol argument of Bass–Milnor–Serre
for Dedekind rings of arithmetic type, which covers rings of `S`-integers of global function fields
with `S` non-empty; KTheoryLowDegrees §11.1 proves the number-field case, and this target is the
function-field case of the same argument.

`curveFiniteGeneration`: if `R` is the coordinate ring of a smooth affine curve over a finite field,
then `K_n(R)` is finitely generated for every `n ≥ 0`; consequently `K_n(X)` is finitely generated
for every smooth projective curve `X` over `F_q` (Quillen; Weibel, *K-book*, Theorem IV.6.9 and the
paragraph before it, p. 325, used in the proof of Theorem VI.6.1, p. 502). The proof applies
ArithmeticKTheory §3.2's finiteness criterion, which holds for every Dedekind domain. Its first
hypothesis holds: `Pic(R)` is the quotient of `Pic(X)` by the classes of the finitely many deleted
closed points, and `Pic(X)` is an extension of a subgroup of `ℤ` by the finite group `Pic⁰(X)`,
while the deleted points have positive degree, so `Pic(R)` is finite. Its second hypothesis, finite
generation of `H_q(Aut_R(P); St(P ⊗ F))` for every finitely generated projective `R`-module `P` of
positive rank and every `q ≥ 0`, is the function-field input of this target: Quillen's argument,
written up by Grayson, through Harder's reduction theory for `S`-arithmetic groups over global
function fields (Grayson, *Finite generation of K-groups of a curve over a finite field (after
Daniel Quillen)*, Lecture Notes in Math. 966, 1982, pp. 69–90; Harder, Invent. Math. 42, 1977).
ArithmeticKTheory §3.2 verifies that hypothesis only for rings of integers of number fields. For
`X`, choose a closed point `x₀`: in the localisation sequence
`K_n(k(x₀)) → K_n(X) → K_n(X − x₀)` the left group is finitely generated (finite for `n ≥ 1` by
GeneralAlgebraicKTheory §13.8c, and `ℤ` for `n = 0`) and the right one finitely generated, so
`K_n(X)` is finitely generated. Finite generation is not
finiteness: `K_1(F_q[t, t⁻¹]) ≅ F_q^× × ℤ`.

`reciprocitySequence_exact`: the sequence
`K_2(F) → ⊕_x k(x)^× → F_q^× → 0`, whose second map is `⊕_x N_{k(x)/F_q}`, is exact. Weil reciprocity
(K2SymbolsBrauer §10.30) gives only that the composite vanishes, hence a surjection
`coker ∂ → F_q^×`. For injectivity: `SK_1(X) ≅ coker ∂` (§4.1); for any closed point `x₀`, the
localisation sequence for `X ⊃ X − x₀` and `BMS_functionField` give
`SK_1(X) ⊆ (i_{x₀})_* k(x₀)^×`, so `|coker ∂|` divides `q^{deg x₀} − 1`; two closed points of coprime
degree, which every such curve has, give `|coker ∂| ≤ q − 1`. With a rational point `P`, directly:
`SK_1(X) = P_*F_q^× ≅ F_q^×` (§4.2). This corrects the K-book, whose VI.6 opening attributes the
exactness to Weil reciprocity alone (p. 502). Consequently `K_1(X) ≅ F_q^× ⊕ F_q^×` and `V(X) = 0`.

`tameKernel_finite`: the tame kernel `K_2(X) = ker(∂ : K_2(F) → ⊕_x k(x)^×)` is finite of order prime
to `p`. Proof: `K_2(X)` is finitely generated (`curveFiniteGeneration`); `K_2(F)` has no `p`-torsion (KTheoryFiniteLocalFields §3.4; Weibel,
*K-book*, Theorem III.6.7, p. 238); `K_2(F)` is `p`-divisible, since `K_2(F)/p ≅ Ω²_{F, log}` by
Bloch–Gabber–Kato (MotivicEtaleKTheory §7.4) and `Ω²_F = 0` because `[F : F^p] = p`; so `K_2(F)` is
uniquely `p`-divisible, the residue groups `k(x)^×` are finite of order prime to `p`, and the kernel of a
map between uniquely `p`-divisible groups is uniquely `p`-divisible. A finitely generated uniquely
`p`-divisible group is finite of order prime to `p`. The K-book's opening of VI.6 cites Bass–Tate's
III.7.2(a) for this, which states only the vanishing of `K^M_n(F)` for `n ≥ 3`.

`geisserLevine`: for a field `k` of characteristic `p` and `n ≥ 0`: (a) `K^M_n(k)/p^ν ≅ K_n(k; ℤ/p^ν)` for
every `ν > 0`; (b) `K_n(k)` has no `p`-torsion; (c) the kernel and cokernel of `K^M_n(k) → K_n(k)` are
uniquely `p`-divisible (Weibel, *K-book*, Theorem VI.4.7, p. 485, after Geisser–Levine, Invent. Math.
139 (2000)). Proof: Geisser and Levine's computation of motivic cohomology of `k` with `ℤ/p^ν`
coefficients, concentrated in degree `n` and equal there to `K^M_n(k)/p^ν` by the
logarithmic-differential description of Bloch–Gabber–Kato (MotivicEtaleKTheory §7.4), makes the
motivic spectral sequence with `ℤ/p^ν` coefficients (MotivicEtaleKTheory §8.6) collapse with edge
isomorphisms, giving (a); the surjection `K^M_n(k) → K_n(k; ℤ/p)` factors through `K_n(k)/p`, so the
universal coefficient sequence (StableHomotopyKTheory §7.4) gives (b); the five lemma on
multiplication by `p` gives (c). For a field that is not finitely generated,
`geisserLevine_filteredColimit` extends the result along the filtered system of its finitely
generated subfields. For each such subfield use its smooth affine models over `𝔽_p`, then
their dense opens; this applies MotivicEtaleKTheory §8.6 over a perfect base without assuming the target field
is perfect. The finite-presentation argument for cycles and symbols and
GeneralAlgebraicKTheory §3.2 identify all three comparison maps in the colimit.

*Needs:* §§3.1, 3.8, 4.1–4.2; KTheoryLowDegrees §11.1; K2SymbolsBrauer §§10.30, 10.33;
KTheoryFiniteLocalFields §3.4; ArithmeticKTheory §3.2; GeneralAlgebraicKTheory §§3.2, 13.8c;
MotivicEtaleKTheory §§7.4, 8.6; StableHomotopyKTheory §7.4; SchemeAndStackFoundations §5.11;
DeligneWeightsAndPurity DWP.1 §§1.6–1.7.

**Checks.**
- `BMS_affine_line`: `SK_1(F_q[t]) = 0`, and for `R = F_q[t, t⁻¹]`, `K_1(R) = R^× ≅ F_q^× × ℤ`.
- `reciprocity_P1_F2`: over `𝔽₂`, `⊕_x k(x)^× → 𝔽₂^× = 1` is the zero map onto the trivial group, and
  the image of `∂` is everything.
- `reciprocity_needs_exactness`: the vanishing of the normed composite alone does not give
  `K_1(X) ≅ F_q^× ⊕ F_q^×`; the coprime-degree argument does.
- `tameKernel_P1`: for `X = ℙ¹_{F_q}`, the tame kernel is `0`.
- `geisserLevine_degree_three_function_field`: for a global function field `F`, `K^M_3(F) = 0`
  (K2SymbolsBrauer §10.33), so `K_3(F)` is uniquely `p`-divisible.

### 5.6 Harder's theorem

Prove `harder`: for a smooth projective geometrically connected curve `X` over `F_q` of characteristic
`p` and every `n ≥ 1`, `K_n(X)` is finite of order prime to `p` (Weibel, *K-book*, Harder's Theorem VI.6.1
and proof, p. 502). For `n = 1`: `K_1(X) ≅ F_q^× ⊕ F_q^×` (§5.5). For `n = 2`: `K_2(X)` is the tame kernel
(§3.8), finite of order prime to `p` (§5.5). For `n ≥ 3`: Bass–Tate gives `K^M_n(F) = 0` (K2SymbolsBrauer
§10.33), so by Geisser–Levine (c) `K_n(F)` and `K_{n+1}(F)` are uniquely `p`-divisible; the
residue groups `K_n(k(x))`, `K_{n−1}(k(x))` are finite of order prime to `p` (GeneralAlgebraicKTheory
§13.8c); the five-term segment
`K_{n+1}(F) → ⊕_x K_n(k(x)) → K_n(X) → K_n(F) → ⊕_x K_{n−1}(k(x))` and the five lemma for
multiplication by `p` make `K_n(X)` uniquely `p`-divisible. The first term must be kept: a four-term
argument does not give injectivity. Finally `K_n(X)` is finitely generated (`curveFiniteGeneration`
of §5.5: Quillen's theorem for the affine complement of a closed point and localisation with a
finite residue field), and a finitely generated abelian group with bijective
multiplication by `p` has rank zero and no `p`-torsion. Every closed residue field is finite, including at
non-rational points. The conclusion is stronger than finite generation and is a statement about curves;
it does not assume Parshin's conjecture in higher dimension. For an elliptic curve with its rational
origin this is `harder_elliptic`. *Needs:* §§3.1, 3.8, 4.1, 5.5; K2SymbolsBrauer §10.33;
GeneralAlgebraicKTheory §13.8c.

**Checks.**
- `harder_finiteness_1`: properness cannot be removed: `F_q[t, t⁻¹]` has `K_1 ≅ F_q^× × ℤ`, infinite.
- `harder_finiteness_2`: finite generation alone does not exclude `p`-torsion; Geisser–Levine and localisation
  supply that step.
- `harder_P1`: for `ℙ¹_{F_q}`, `K_n = K_n(F_q)²`, finite of order prime to `p` for `n ≥ 1`.

### 5.7 The geometric curve as a Galois module

Let `X̄ = X ×_{F_q} F̄_q`, `G = Gal(F̄_q/F_q)`, `J` the Jacobian of `X` (for an elliptic curve with its
origin, `J = E`), and `D = ⊕_{ℓ ≠ p} ℚ_ℓ/ℤ_ℓ`, so that `μ_{p'}(F̄_q) ≅ D(1)`. Prove
`geometricK_galoisModule`: for `i ≥ 1`, as `G`-modules,
```text
K_{2i−1}(X̄) ≅ D(i) ⊕ D(i),    K_{2i}(X̄) ≅ J(F̄_q)[1/p](i),
```
where `D(i)` has arithmetic Frobenius `q^i` and the prime-to-`p` torsion of `J`, on which arithmetic
Frobenius acts by `π`, acquires the extra twist `q^i π` (Weibel, *K-book*, Theorem VI.6.4, p. 503). For
`ℓ ≠ p` the divisible-coefficient groups are distinct objects:
`K_{2i}(X̄; ℚ_ℓ/ℤ_ℓ) ≅ (ℚ_ℓ/ℤ_ℓ(i))²` and `K_{2i−1}(X̄; ℚ_ℓ/ℤ_ℓ) ≅ J(F̄_q)[ℓ^∞](i − 1)`: degree `2i − 1`
with coefficients carries twist `i − 1`, integral degree `2i` carries twist `i`. Proof: write `X̄` as the
limit of the curves over `F_{q^ν}` and use filtered colimits (GeneralAlgebraicKTheory §3.2); by
Harder every positive geometric K-group is torsion with no `p`-part (§5.6); the universal coefficient
sequences (StableHomotopyKTheory §§7.4, 7.8) and the motivic spectral sequence with its étale
comparison (MotivicEtaleKTheory §§8.6, 10.1–10.3) reduce the computation to `Hⁱ(X̄, ℚ_ℓ/ℤ_ℓ(j))`, `i = 0, 1, 2`,
which are `ℚ_ℓ/ℤ_ℓ(j)`, `J(F̄_q)[ℓ^∞](j − 1)` by Kummer theory, and `ℚ_ℓ/ℤ_ℓ(j − 1)` by the trace
(EtaleDualityAndPerverseSheaves §0.3); the spectral sequence degenerates and the two even coefficient
terms split by the field summand and the `e`-invariant (Weibel, *K-book*, Example VI.6.3, p. 503). A
two-piece associated graded does not by itself determine the group or its `G`-action. The coefficient
table in the K-book has a missing bar: the comparison uses `K_{n−1}(X̄)`, not `K_{n−1}(X)` (at `n = 2`,
`X = ℙ¹/𝔽₂`, integral `K_1(X) = 0` while `K_2(X̄; ℚ_ℓ/ℤ_ℓ)` has two non-zero divisible summands). The
source's `μ(i)` means `ℚ/ℤ[1/p](i)`, the roots of unity with the twist, not one further twist. *Needs:*
§5.6; GeneralAlgebraicKTheory §3.2; KTheoryFiniteLocalFields §1.6; MotivicEtaleKTheory §§8.6, 9.3,
10.1–10.3;
EtaleDualityAndPerverseSheaves §0.3; StableHomotopyKTheory §§7.4, 7.8.

**Checks.**
- `geometricK1`: `K_1(X̄) ≅ F̄_q^× ⊕ F̄_q^×` with arithmetic Frobenius acting by `q`.
- `geometricK2_elliptic`: `K_2(Ē)` is the prime-to-`p` torsion of `E(F̄_q)` with the additional first
  twist.
- `geometric_twist_shift`: the coefficient group in degree `2i − 1` has twist `i − 1`, integral `K_{2i}`
  has twist `i`.

### 5.8 Twisted cohomology descent

For every smooth projective geometrically connected curve `X/F_q`, with Jacobian `J` of
dimension `g`, `ℓ ≠ p` and `j ≥ 2`, prove `cohomologyDescent`: the natural maps give
`H^r(X, ℚ_ℓ/ℤ_ℓ(j)) ≅ H^r(X̄, ℚ_ℓ/ℤ_ℓ(j))^G ≅ H^{r+1}(X, ℤ_ℓ(j))` for `r ≥ 0`, and these groups vanish for
`r ≥ 3`. The geometric groups `H⁰, H¹, H²` are `ℚ_ℓ/ℤ_ℓ(j)`, `J(F̄_q)[ℓ^∞](j − 1)` and
`ℚ_ℓ/ℤ_ℓ(j − 1)`. If the eigenvalues of `π` on `V_ℓJ` are `α₁,…,α_{2g}`, then
`|α_s| = √q` and their multiset is stable under `α ↦ q/α` (DeligneWeightsAndPurity DWP.1
§§1.4, 1.6–1.7, with DWP.0 §0.2(iii)). Arithmetic Frobenius on twisted cohomology has eigenvalues `q^j` in degree zero,
`q^j/α_s`, equivalently the multiset `q^{j−1}α_s`, in degree one, and `q^{j−1}` in degree two.
Thus `F − 1` is invertible on the rational spaces and surjective on the divisible groups.
For an elliptic curve this specialises to the roots of `T² − a_qT + q`.
For `j ≥ 2` no eigenvalue is one; the continuous Hochschild–Serre
sequence (ArithmeticGaloisDuality R02.2 for the discrete coefficients `ℚ_ℓ/ℤ_ℓ(j)`, Layer D7 for
`ℤ_ℓ(j)`) with `cd_ℓ Ẑ = 1` (ProfiniteCohomology Layer 11) and `H¹(Ẑ, M) = M/(F − 1)M`
(SelmerIwasawaCohomology §2.7) gives the invariants, and the coefficient triangle
`ℤ_ℓ(j) → ℚ_ℓ(j) → ℚ_ℓ/ℤ_ℓ(j)` gives the degree shift (Weibel, *K-book*, VI.6.5–6.6, p. 504). The
restriction `j ≥ 2` is essential: the K-book's paragraph before Example VI.6.5 asserts
`H^*(X, ℚ_ℓ(i)) = H^*(X̄, ℚ_ℓ(i))^G` for every `i`, which fails for `i = 0`, where
`H¹(Spec F_q, ℚ_ℓ) = ℚ_ℓ`. *Needs:* §5.7; DeligneWeightsAndPurity DWP.0 §0.2 and DWP.1 §§1.4, 1.6–1.7;
EtaleDualityAndPerverseSheaves §§0.3, 0.5; ArithmeticGaloisDuality R02.2 and Layer D7;
ProfiniteCohomology Layers 10–11; SelmerIwasawaCohomology §2.7.

**Checks.**
- `descent_twist_zero_fails`: at `j = 0`, `H¹(Spec F_q, ℚ_ℓ) = ℚ_ℓ`, so the unrestricted invariants
  identity is false.
- `descent_H1_twist`: `H¹(Ē, ℚ_ℓ/ℤ_ℓ(j))` carries elliptic torsion with twist `j − 1`.
- `descent_j2_invertible`: for `j = 2` all three rational operators `F − 1` are invertible.
- `descent_genus_zero`: for `ℙ¹`, `J = 0`, so the middle geometric cohomology group vanishes;
  for genus two it has four rational Frobenius eigenvalues. The proof must cover both.

### 5.9 Descent of positive K-groups

Prove `positiveK_descent`: for every `n > 0` the base-change map `K_n(X) → K_n(X̄)^G` is an
isomorphism (Weibel, *K-book*, Theorem VI.6.7 and proof, p. 505). It is a calculation for curves, made
through the divisible-coefficient comparison and Harder's theorem, not a claim of unrestricted integral
Galois descent for scheme K-theory. By §5.6 compute `K_n(X)` one prime `ℓ ≠ p` at a time as
`K_{n+1}(X; ℚ_ℓ/ℤ_ℓ)` by universal coefficients; the curve's motivic spectral sequence with the descent of
§5.8 in weights `j ≥ 2` identifies the geometric base-change map with taking invariants and has no
surviving differentials; the `e`-invariant splitting handles the two odd summands. Treat `n = 1`
separately by the exact reciprocity sequence and the degree-one zero-cycle splitting of §5.5, which covers the
weight-one boundary without applying §5.8 outside its range. Assemble the primary parts using finite
support. The resulting map is the base-change map of K-theory, not an arbitrary additive equivalence.
*Needs:* §§4.1–4.2, 5.5–5.8; MotivicEtaleKTheory §§8.6, 10.1–10.3; StableHomotopyKTheory §§7.4, 7.8.

**Checks.**
- `descent_K1`: for `n = 1` the map identifies both copies of `F_q^×` inside the two geometric
  root-of-unity copies.
- `descent_K0_infinite`: `K_0(E) ≅ ℤ² ⊕ E(F_q)` is not finite; the finiteness statements are for
  `n > 0`, and in degree zero the base-change map is the isomorphism of §2.5 onto
  `ℤ² ⊕ E(F̄_q)^G = ℤ² ⊕ E(F_q)`.
- `descent_extension`: base change to `F_{q^r}` replaces the arithmetic generator `σ` by `σ^r`.

### 5.10 The twisted Frobenius kernel

Let `k` be a finite field with `q` elements and characteristic `p`, `W` an elliptic Weierstrass curve
over `k`, `L/k` a field extension and `i ≥ 0`. The following subgroup definition also makes sense
for the nonsingular point group of any Weierstrass equation; its interpretation as an elliptic
K-group requires `W.IsElliptic`. Define
```text
twistedFrobeniusKernel W L i := { P ∈ (W⁄L).Point | (∃ m > 0, gcd(m, p) = 1, m • P = 0) ∧ q^i • π(P) = P },
```
where `π = Point.map (FiniteField.frobeniusAlgHom k L)` is the `q`-power map on points, as an
`AddSubgroup` of Mathlib's point group. It is closed under addition (product of coprime annihilators)
and negation, and the Frobenius condition is preserved because `π` is additive. For `L = F̄_q` it is the
`G`-fixed subgroup of the prime-to-`p` torsion with the extra `i`-th twist, `E(F̄_q)[1/p](i)^G`
(Weibel, *K-book*, VI.6.4 and VI.6.7, pp. 503–505, with the twist convention of Definition VI.1.7).
Nothing about Tate modules, K-groups or scheme models is defined again. API:
`mem_twistedFrobeniusKernel` (membership is exactly the two conditions), `zero_mem_twistedFrobeniusKernel`,
`baseChange_mem_twistedFrobeniusKernel_iff` (for a `k`-rational point killed by an integer prime to `p`,
its image lies in `B_i` if and only if `(q^i − 1) • P = 0`), `map_mem_twistedFrobeniusKernel` (a
`k`-algebra map `L → M` maps `B_i(W, L)` into `B_i(W, M)` through `Point.map`, which commutes with the
`q`-power map; for an isomorphism this is an additive equivalence `equiv_twistedFrobeniusKernel` with
that underlying map), and `eq_zero_of_mem_twistedFrobeniusKernel_of_char_smul` (if `p • P = 0` and
`P ∈ B_i` then `P = 0`, since the additive order of `P` divides both `p` and an integer prime to `p`). *Needs:* Mathlib `WeierstrassCurve.Affine.Point`,
`Point.map`, `FiniteField.frobeniusAlgHom`, `AddSubgroup.torsionBy`; EllipticCurves Layers 1–2;
WeightsInEtaleCohomology R34.2.

**Checks.**
- `test_twistedKernel_origin`: `0 ∈ B_i` for every `i ≥ 0`, including `i = 0`.
- `test_twistedKernel_rational_two_torsion`: on `y² = x³ − x` over `𝔽₃`, the point `(0, 0)` has order two
  and lies in `B₁(W, 𝔽₃)`, since `q − 1 = 2`.
- `test_twistedKernel_excludes_characteristic_torsion`: on `y² + xy = x³ + 1` over `𝔽₂`, the rational
  point `(0, 1)` has order two and is not in `B₀(W, 𝔽₂)`, although Frobenius fixes it.
- `test_twistedKernel_F2_card_five`: for `y² + y = x³ + x + 1` over `𝔽₂`, `#B₁(W, F̄₂) = 5` while
  `#B₀(W, F̄₂) = 1`; omitting the twist gives the wrong group.
- `test_twistedKernel_F2_trace_sign`: for `y² + y = x³ + x` over `𝔽₂`, `#E(𝔽₂) = 5`, `a = −2` and
  `#B₁(W, F̄₂) = 13`, against `a = 2` and order five for the previous curve.

### 5.11 The K-groups of a curve over a finite field

Prove `finiteFieldK_odd`: for a smooth projective geometrically connected curve `X` over `F_q` and
`i ≥ 1`, `K_{2i−1}(X) ≅ K_{2i−1}(F_q) ⊕ K_{2i−1}(F_q) ≅ (ℤ/(q^i − 1))²` as abelian groups; in degree one,
`K_1(X) ≅ F_q^× ⊕ F_q^×`. One summand is split by the structure morphism and a chosen degree-one zero-cycle
(a rational origin suffices for an elliptic curve), the other by the `e`-invariant; cyclic generators are not canonical (§§5.7, 5.9;
GeneralAlgebraicKTheory §13.8c; Weibel, *K-book*, Theorem VI.6.7, p. 505). Prove `finiteFieldK_even`:
`K_{2i}(X) ≅ ⊕_{ℓ ≠ p} J(F̄_q)_ℓ(i)^G`, and for an elliptic curve `E` with origin,
`K_{2i}(E) ≅ twistedFrobeniusKernel W F̄_q i = ⊕_{ℓ ≠ p} ker(1 − q^i π : E[ℓ^∞] → E[ℓ^∞])`. Each primary
term is canonically `coker(1 − q^i π : T_ℓE → T_ℓE)`: `1 − q^i π` is invertible on `V_ℓE` because
`|q^i α| = q^{i + 1/2} > 1`, and the snake lemma on `0 → T_ℓE → V_ℓE → E[ℓ^∞] → 0` gives the
cokernel-to-kernel isomorphism (an invariant-lattice kernel is zero here and is not the group). Only
finitely many primes contribute: use a direct sum. Prove `finiteFieldK_orders`, whose even half is the Lean statement `card_twistedFrobeniusKernel`
(`Nat.card (twistedFrobeniusKernel W (AlgebraicClosure k) i) = 1 − a_q q^i + q^{2i+1}` for `i ≥ 1`): with
`a_q = q + 1 − #E(F_q)` (Tau Ceti's `frobeniusTrace`),
```text
#K_{2i−1}(E) = (q^i − 1)²,     #K_{2i}(E) = D_i := 1 − a_q q^i + q^{2i+1}   (i ≥ 1).
```
`D_i = deg(1 − [q^i]π) = (1 − q^iα)(1 − q^iβ) > 0` by the quadratic degree form and
`π² − [a_q]π + [q] = 0` (EllipticCurves Layers 1 and 3); `D_i ≡ 1 mod p`; the differential of
`1 − [q^i]π` is the identity, so the isogeny is separable and its geometric kernel, of order `D_i` and
prime to `p`, is exactly `B_i`. A cardinality does not determine the invariant factors of the even
group. Finally `ellipticFiniteField_summary` collects these: every positive K-group of `E/F_q` is finite
of order prime to `p`, `K_1 ≅ (F_q^×)²`, `SK_1(E) ≅ F_q^×`, the odd groups are two copies of those of
`F_q`, and the even groups are twisted Galois invariants of elliptic torsion; this does not follow from
the K-theory of `F_q` alone. *Needs:* §§2.7, 5.5–5.10; GeneralAlgebraicKTheory §13.8c; EllipticCurves
Layers 1–3; WeightsInEtaleCohomology R34.2; Tau Ceti `frobeniusTrace`, `TauCeti.Isogeny.frobeniusIsogeny`.

**Checks.**
- `odd_F2`: for every elliptic `E/𝔽₂`, `K_1(E) = 0` and `K_3(E) ≅ (ℤ/3)²`.
- `odd_F3`: for every elliptic `E/𝔽₃`, `K_1(E) ≅ (ℤ/2)²`, independent of `#E(𝔽₃)`.
- `even_operator`: for `i = 1` the operator is `1 − qπ`, not `1 − π` and not `1 − q²π`.
- `orders_37a1_F2`: for `y² + y = x³ − x` over `𝔽₂` (`a = −2`): `K_0(E) ≅ ℤ² ⊕ ℤ/5`, `K_1(E) = 0`,
  `#K_2(E) = 13`, `K_3(E) ≅ (ℤ/3)²`, `#K_4(E) = 41`.
- `orders_F2_a2`: for `y² + y = x³ + x + 1` over `𝔽₂` (`#E = 1`, `a = 2`): `#K_2 = 5`, `#K_4 = 25`; `K_4 ≅ ℤ/25`
  is not inferred from the order.
- `orders_F3`: for `y² = x³ − x` over `𝔽₃` (`#E = 4`, `a = 0`): `#K_2(E) = 28`.
- `orders_mod_p`: `D_i ≡ 1 mod p`, an independent check that the characteristic is excluded.

### Examples

Over `𝔽₂` the curve `37a1`, `y² + y = x³ − x`, has `E(𝔽₂) ≅ ℤ/5`, `a = −2`, `K_1 = 0`, `#K_2 = 13`,
`K_3 ≅ (ℤ/3)²`, `#K_4 = 41`; the curve `y² + y = x³ + x + 1` has `E(𝔽₂) = 0`, `a = 2`, `#K_2 = 5`,
`#K_4 = 25`; `ℙ¹_{𝔽₂}` has `K_2 = 0` and `K_3 ≅ (ℤ/3)²`. For `[3]` on any elliptic curve over `ℚ`,
`[3]_*[3]^* = 9`; for the 2-isogeny from `y² = x³ − x` to `y² = x³ + 4x`, `f_*f^*(1) = (2, 0, P_f)` with
`P_f ≠ O`.

### Dependencies

Layers 1–4; SchemeKTheoryOperations §§2.2–2.4, 5.5; GeneralAlgebraicKTheory §§3.2, 4.14;
SchemeAndStackFoundations §5.11;
KTheoryLowDegrees §§11.1, 12.3; K2SymbolsBrauer §§10.30, 10.33; GeneralAlgebraicKTheory §13.8c;
KTheoryFiniteLocalFields §§1.6, 3.4; ArithmeticKTheory §3.2; MotivicEtaleKTheory §§7.4, 8.6–8.7,
9.3, 10.1–10.3; StableHomotopyKTheory §§7.4, 7.8; SelmerIwasawaCohomology §2.7;
EtaleDualityAndPerverseSheaves §§0.3, 0.5; WeightsInEtaleCohomology R34.2; ArithmeticGaloisDuality
R02.2 and Layer D7; DeligneWeightsAndPurity DWP.0 §0.2 and DWP.1 §§1.4, 1.6–1.7; ProfiniteCohomology
Layers 10–11; ModularCurves Layer 2D; EllipticCurves Layers 1–3.
## Layer 6: Regular models over S-integers and the integral part

Over a number field the K-theory of `E` is compared with that of a regular arithmetic surface. This
layer builds regular proper models over a ring of `S`-integers, proves existence and uniqueness of the
minimal one by reduction to StableReduction's local theory over discrete valuation rings, defines the
integral part of `K_2(E) ⊗ ℚ`, proves it independent of the model, and describes it by vertical
residues.

Throughout, `F` is a number field, `S` a finite set of finite places, `O = O_{F,S}`, and `E = E_W` an
elliptic curve over `F`.

### 6.1 Regular proper models

Define `RegularProperModel O F C toField` for a curve with fixed structure morphism
`toField : C → Spec F` (here `C = E`): a scheme `𝓔` with a proper flat
morphism `𝓔 → Spec O`, all of whose local rings are regular, together with an isomorphism
`genericIso : 𝓔 ×_O F ≅ C` **over `F`**, expressed by
`genericIso.hom ≫ toField = pullback.snd`; an absolute scheme isomorphism alone is insufficient.
The bundling, the marked morphisms and the outgoing-minimality predicate make sense for any
commutative ring `O`, field `F` with an `O`-algebra structure, and scheme `C → Spec F`; the
uniqueness of marked morphisms in §6.3 needs only that `O` is Dedekind with fraction field `F`.
The existence, minimality, uniqueness and localisation results of §§6.2–6.7 use only that `O` is
an excellent Dedekind domain with torsion class group; they are stated for `O_{F,S}` and hold, with
the same proofs, over the ring of functions regular outside a non-empty finite set of places of a
global function field. The integral part of §§6.8–6.10 is stated over number fields.
The curve here is the scheme of Layer 1 (Conrad, *Minimal models for elliptic curves*, Definition 3.1, p. 6, over a discrete
valuation ring; Scholl, *Integral elements in K-theory*, 1.1.1–1.1.2, p. 3, for projective regular models
over rings of `S`-integers). Regularity is required at every point, including the closed points of the
fibres, while the fibres themselves may be singular, reducible and non-reduced. For a closed point `v` of
`Spec O` the fibre `𝓔_v = 𝓔 ×_O k(v)` is a proper curve over `k(v)` with irreducible components `C_i` and
multiplicities `m_i`, and `div(π_v) = Σ m_i C_i`; these come from StableReduction Layer 5 over the local
ring `O_(v)` (Stacks, Lemma 55.9.1, tag 0C5Z). API: `RegularProperModel.isRegular`,
`RegularProperModel.fibre`, `RegularProperModel.components`, `RegularProperModel.multiplicity`
(`m_i` is the length of `O_{𝓔_v}` at the generic point of `C_i`, equal to `ord_{C_i}(π_v)`),
`RegularProperModel.div_uniformiser`. Two natural candidates are compared, not excluded by fiat. Prove
`weierstrassModel_regular_iff`: the projective Weierstrass model of an equation minimal at `v` is regular
over `v` if and only if the minimal regular model has irreducible fibre at `v` (Conrad, Corollary 4.7 and
proof, p. 12; this covers Kodaira types `I_0`, `I_1`, `II`). The comparison Checks below use the
Néron-model supplier contract: smoothness alone does not give a regular proper model.
*Needs:* §1.2; ArithmeticKTheory §1.1; StableReduction Layer 5; ModularCurves Layer 1A over `O`;
NeronModelsAndSemistableAbelianVarieties §§1.8, 2.7, 6.5.

**Checks.**
- `genericIso_over_field`: with `O = F = ℚ(s)`, composing a marking with the absolute scheme
  automorphism induced by `s ↦ s + 1` fails the required equality over the fixed `Spec F`.
  The identity marking passes, and `genericFibreInclusion ≫ toBase` equals the fixed structure
  map of `C` followed by `Spec(F) → Spec(O)`; this equality is a proved Lean example.
- `weierstrass_37a1_regular`: for `y² + y = x³ − x` over `ℤ` (`Δ = 37`, type `I_1` at 37), the fibre at 37
  is singular only at `(5, 18)` and `F(5, 18) = 222 ≢ 0 mod 37²`, so the projective Weierstrass model is a
  regular proper model.
- `weierstrass_11a1_not_regular`: for `y² + y = x³ − x² − 10x − 20` (type `I_5` at 11), `F(5, 5) = 0` and
  both partial derivatives are divisible by 11 at `(5, 5)`, so `F ∈ (11, x − 5, y − 5)²` and the
  Weierstrass model is not regular.
- `nonminimal_not_regular`: `y² = x³ − 81x`, the rescaling of `y² = x³ − x` by `u = 3`, has good reduction
  at 3, but its Weierstrass model is not regular at `(3, x, y)`.
- `neron_good_reduction_proper`: over `ℤ[1/37]` the Néron model of `37a1` is its smooth proper
  Weierstrass model, a regular proper model.
- `neron_bad_reduction_not_proper`: over `ℤ` the fibre at 37 of the Néron model of `37a1` is the smooth
  locus of the nodal cubic, a non-split torus since `a_37 = −1`, and is not proper.

### 6.2 Existence of a regular proper model

Prove `exists_regularProperModel`: `E` has a regular proper flat model over `O_{F,S}`, obtained by
resolving the singularities of the projective Weierstrass model `W_O` of an integral equation; the
resolution is an isomorphism over the regular locus of `W_O`, in particular over the primes where the
equation has unit discriminant. `W_O` is integral, two-dimensional, proper, flat and of finite type over
the excellent Dedekind domain `O_{F,S}` (ModularCurves Layer 1A over `O`), so it has a resolution of
singularities `X → W_O` by Lipman's theorem (Stacks, introduction to Resolution of Surfaces, tag 0ADX,
with Theorem 54.14.5, tag 0BGP); `X` is regular and proper over `O`, and flat because it is integral and
dominates `Spec O`. Preservation of the regular locus follows by taking normalization and the
normalized blow-ups supported at singular points in the proof of Stacks, Theorem 54.14.5,
tag 0BGP; Lemma 55.8.3, tag 0C2U, supplies the local existence statement. A normal surface can still have singular points that must be resolved. Over each localisation `O_(v)` a minimal regular model exists and is unique in genus one
(StableReduction Layer 5; Stacks, Lemma 55.10.1, tag 0C6B; Conrad, Theorem 3.10, p. 8). *Needs:* §6.1;
StableReduction Layers 4–5; ModularCurves Layer 1A.

**Checks.**
- `resolution_37a1_identity`: for `37a1` over `ℤ` the resolution is the identity.
- `resolution_good_primes`: the resolution changes nothing over the primes of good reduction of an
  integral equation with unit discriminant there.
- `resolution_11a1_nontrivial`: for `11a1` over `ℤ` the resolution is not an isomorphism over 11.
- `normal_not_regular`: the surface `xy = z²` over a field of characteristic different from two is
  normal and singular at its vertex; resolution cannot preserve the entire normal locus.

### 6.3 Model morphisms and minimality

A model morphism `f : X → Y` between regular proper models of the fixed marked curve `E` is an
`O`-morphism inducing the identity of `E`: it respects the structure maps and `i_X ≫ f = i_Y` for the
generic-fibre embeddings `i_X = genericFibreInclusion`. Define `RegularProperModel.Hom` with `Hom.hom`,
`Hom.hom_toBase`, `Hom.generic`, `Hom.id`, `Hom.comp`,
`Hom.id_hom`, `Hom.comp_hom` and `RegularProperModel.category`; prove `Hom.ext` (equal underlying scheme
maps give equal model maps) and `Hom.subsingleton`: between two models there is at most one model
morphism, by Mathlib's `ext_of_isDominant_of_isSeparated`, since `X` is reduced (regular), its generic
fibre is dense (flatness) and `Y` is separated over `O` (proper). Define `RegularProperModel.IsMinimal M`:
every model morphism `M → N` is an isomorphism on total schemes (Conrad, Definition 3.8 and Example 3.9,
p. 8: the marking is part of the object). Prove `isMinimal_iff` and `IsMinimal.of_iso`. Local relative
minimality of `M` means that for every closed point `v` of `Spec O`, `M ×_O O_(v)` has no exceptional curve
of the first kind in the sense of StableReduction Layers 4–5 (Stacks, Definition 55.8.4, tag 0C2V). Prove
`toLocalModel`: localising at `v` and forgetting regularity and properness gives Tau Ceti's
`TauCeti.Model O_(v) F E`, with the same marking; `toLocalModelHom` sends a model morphism to a
`TauCeti.Model.Hom` by base change, its generic-fibre equality using `TauCeti.genericFiberTowerIso`; and
`toLocalModel_totalIso` identifies the total scheme of `toLocalModel M v` with `M ×_O O_(v)`. Regularity and
properness are kept as separately verified properties; no second local model carrier is introduced.
*Needs:* §6.1; StableReduction Layers 4–5; Mathlib `ext_of_isDominant_of_isSeparated`; Tau Ceti
`TauCeti.Model`, `genericFiberTowerIso`.

**Checks.**
- `modelHom_identity`: `Hom.id M` respects both triangles; every marked endomorphism is this map.
- `modelHom_involution_rejected`: the nontrivial elliptic involution extends to the model of
  `37a1`, but fails `Hom.generic` with fixed marking, although it is an automorphism over `ℤ`.
- `modelHom_blowdown_direction`: the blow-down from a point blow-up is a marked morphism to
  the original model; an inverse morphism would make the blow-down an isomorphism and cannot exist.
- `smooth_37a1_minimal`: the model `y²z + yz² = x³ − xz²` over `ℤ[1/37]` is smooth, proper and minimal:
  `Δ = 37` is a unit and its fibres are smooth genus-one curves.
- `nodal_37a1_minimal`: the same model over `ℤ` is regular and minimal although its fibre at 37 is nodal
  (type `I_1`, irreducible, no exceptional curve).
- `point_blowup_not_minimal`: blowing up the rational point `(0, 0)` of the fibre at 2 of the smooth model
  gives a regular proper flat model with the same marking that is not minimal: its blow-down has
  exceptional fibre `ℙ¹_{𝔽₂}` and is not an isomorphism.

### 6.4 Regular models linked by blow-ups

Prove `regularModels_linked`: for regular proper flat models `𝓔₁, 𝓔₂` of `E` over `O_{F,S}` there is a
regular proper model `X` with model morphisms `X → 𝓔₁` and `X → 𝓔₂`, each a composite of blow-ups in closed
points (Stacks, Lemma 54.17.2, tag 0C5S, with base `Spec O`). The models are integral, regular of dimension
two, proper over the noetherian `Spec O` and `O`-birational; each blow-up is again regular and proper, and
flat because integral and dominant. *Needs:* §6.1; StableReduction Layer 4.

**Checks.**
- `linked_minimal_trivial`: for two minimal regular models the chain is trivial (§6.7).
- `linked_blowup`: for `𝓔₂` the blow-up of `𝓔₁` in a closed point, `X = 𝓔₂` with the blow-down and the
  identity.
- `linked_marking`: the morphisms `X → 𝓔_i` respect the generic-fibre marking.

### 6.5 Existence of a locally minimal model

Prove `exists_locallyMinimal`: there is a projective regular proper flat `O_{F,S}`-model `M` of `E` such
that `M ×_O O_(v)` is relatively minimal for every closed point `v`, obtained from a projective regular
proper model by finitely many contractions of vertical exceptional curves of the first kind, each fixing
the marked generic fibre. Start from the projective model of §6.2. The non-smooth locus is closed and
misses the generic point, so only finitely many primes have non-smooth fibres and they have finitely many
components; in a smooth fibre a component is the divisor of a uniformiser locally, with trivial normal
sheaf, so it is not exceptional. A local exceptional component is the same closed Cartier curve on the
global surface, since localisation at its prime preserves the local rings along it and its normal sheaf.
Contract it by StableReduction Layer 4's projective curve-on-surface contraction (Stacks, Lemma
54.16.9(1), tag 0C2N): the contracted point has a regular two-dimensional local ring, the map is an
isomorphism elsewhere, and the target is projective, regular, integral, with generic fibre `E`, and flat
because its local rings are torsion-free `O`-modules (Mathlib's `IsDedekindDomain.flat_iff_torsion_eq_bot`).
Each contraction removes one component over the fixed finite set of primes; induct on that count (Stacks,
Lemma 55.8.5, tag 0CD9, and Proposition 55.8.6, tag 0C2W, in the local case). Exceptional curves are
effective Cartier divisors isomorphic to `ℙ¹` over their field of constants with normal sheaf `O(−1)`, not
merely rational components with a guessed self-intersection. *Needs:* §§6.2–6.3; StableReduction Layers
4–5.

**Checks.**
- `locallyMinimal_smooth`: a smooth proper elliptic model is already an output, with no contraction.
- `locallyMinimal_blowup`: a point blow-up of such a model requires one contraction; regularity of the
  initial model does not end the algorithm.
- `locallyMinimal_finite`: only finitely many bad primes are touched; no infinite gluing of separately
  chosen local models occurs.

### 6.6 The terminal property and the local criterion

Prove `locallyMinimal_terminal`: if `M` is a regular proper `O_{F,S}`-model of `E` whose localisation at
every closed point is relatively minimal, then for every regular proper model `X` of the marked `E` there is
exactly one model morphism `X → M`; hence `M` is terminal and minimal. By §6.4 take a common regular model
`Z` with `Z → X` a finite sequence of closed-point blow-ups and a model morphism `Z → M`. For the last
blow-up `Z → X'`, its exceptional curve lies over one prime `v`; `M_(v)` is terminal among local regular
models (StableReduction Layer 5; Stacks, Lemma 55.10.2, tag 0C9Z), so `Z → M` contracts that curve to a
point, and by the universal property of the blow-down (StableReduction Layer 4; Stacks, Lemma 54.16.1, tag
0C5J) it factors uniquely through `X'`, over `O` and with the marking. Repeat; uniqueness is §6.3. The first
sentence of the proof of Stacks 55.10.2 reverses the arrow: the morphism produced goes from the arbitrary
regular model to the minimal one. Prove `minimality_local_criterion`: for a regular proper model `M` the
following are equivalent: (i) `M.IsMinimal`; (ii) every localisation `M ×_O O_(v)` is relatively minimal;
(iii) every regular proper model of the marked `E` has exactly one model morphism to `M`. (ii) ⇒ (iii) ⇒ (i)
by the first part and uniqueness; given (i), the locally minimal `L` of §6.5 receives a model morphism
`M → L`, an isomorphism by (i), so `M_(v) ≅ L_(v)` is relatively minimal. In particular a minimal regular
proper model exists (Conrad, Definition 3.8, Theorem 3.10 and Remark 3.11, p. 8, over a discrete valuation
ring). Positive genus is essential: for genus zero the corresponding statement fails (Stacks, Example
55.10.3). *Needs:* §§6.3–6.5; StableReduction Layers 4–5.

**Checks.**
- `terminal_blowdown`: the terminal morphism from a point blow-up of `M` is the blow-down.
- `terminal_identity`: for `X = M` the unique endomorphism is the identity.
- `criterion_37a1`: the smooth and the nodal `37a1` models of §6.3 satisfy (i)–(iii); the point blow-up
  fails (i) and (ii).

### 6.7 Uniqueness and inversion of primes

Prove `minimal_unique`: for minimal regular proper `O_{F,S}`-models `M, N` of the marked `E` there is a
unique `O`-isomorphism `M ≅ N` inducing the identity on `E`, and every model morphism `M → N` is it; its
localisation agrees with the unique marked isomorphism over each `O_(v)` (Stacks, Lemma 55.10.1, tag 0C6B).
Uniqueness is among identity-marked isomorphisms: unmarked schemes can have more automorphisms. Prove
`minimal_localisation`: for `S ⊆ S'` finite, `M ×_{O_{F,S}} O_{F,S'}` is the minimal model over
`O_{F,S'}`, canonically and with identity marking, and the comparisons for `S ⊆ S' ⊆ S''` compose. Using the
finite class group, choose for each `v ∈ S' − S` an `h_v ≥ 1` and `a_v` with `v^{h_v} = (a_v)` and put
`a = ∏ a_v`; then `O_{F,S'} = O_{F,S}[1/a]` (ArithmeticKTheory §1.1), so base change is the principal open
`D(a)`, which preserves properness, flatness and regularity; at every retained prime the local model is
unchanged, and §6.6 applies over `O_{F,S'}` (Conrad, Remark 3.11, p. 8). Only inversion of primes in the
same number field is asserted; arbitrary ramified extensions of the base can change regularity and
minimality. *Needs:* §6.6; ArithmeticKTheory §1.1; Mathlib `ext_of_isDominant_of_isSeparated`.

**Checks.**
- `unique_resolution_choice`: changing the starting resolution gives canonically isomorphic minimal models.
- `unique_involution_not_marked`: the `37a1` model has the involution `(x, y) ↦ (x, −y − 1)`, which is not an
  identity-marked isomorphism.
- `localisation_37`: inverting 37 in the nodal `37a1` model gives the smooth minimal model of §6.3; for
  `S = S'` the comparison is the identity.

### 6.8 The integral part and model independence

Let `𝓔` be a regular proper flat model of `E` over `O_F` and `j : E → 𝓔` the inclusion of the generic fibre.
Define
```text
integralPart E   := im(j^* : K₂(𝓔) ⊗ ℚ → K₂(E) ⊗ ℚ),
integralPartS E S := im(K₂(𝓔_S) ⊗ ℚ → K₂(E) ⊗ ℚ),   𝓔_S = 𝓔 ×_{O_F} O_{F,S},
```
`ℚ`-subspaces of `K_2(E) ⊗ ℚ` (Scholl, 1.1.2, p. 3, and Theorem 1.1.6(iii), p. 4). Prove
`integralPart_le_integralPartS` and `integralPartS_mono`: `K_2(E)_{ℤ,ℚ} ⊆ K_2(E)^S_{ℤ,ℚ} ⊆ K_2(E)^{S'}_{ℤ,ℚ}` for
`S ⊆ S'`, by functoriality of pullback along open immersions (SchemeKTheoryOperations §2.2); the
inclusions can be equalities (§6.9) and can be strict, since an unramified class need not be integral
(Dokchitser–de Jeu–Zagier, §3, p. 5, and Theorem 8.3, p. 23). Prove `integralPart_le_unramified`: the image
of the integral part in `K_2(F(E)) ⊗ ℚ` lies in the unramified subspace, the kernel of all tame symbols at
closed points of `E` (K2SymbolsBrauer §12.1). Neither space is asserted finite-dimensional or to contain a
lattice of full rank; the integral subgroup `im(K_2(𝓔) → K_2(E))` is a different object, whose finite
generation is Bass's conjecture.

Prove `integralPart_model_independent`: for regular proper flat models `𝓔, 𝓔'` over `O_{F,S}`,
`im(K_n(𝓔) → K_n(E)) = im(K_n(𝓔') → K_n(E))` for every `n`, integrally and rationally. Reduce by §6.4 to a
model morphism `π : 𝓔' → 𝓔`. Then `j = π ∘ j'` gives `im j^* ⊆ im j'^*`; conversely for
`a ∈ K_n(𝓔') = G_n(𝓔')`, `π_*a ∈ G_n(𝓔) = K_n(𝓔)` (Cartan, SchemeKTheoryOperations §2.6) and
`j^*π_*a = j'^*a` by flat base change along `j`, `π` being an isomorphism over `E` (§2.4) (Scholl, 1.3.3,
p. 8). No blow-up formula is used. This argument uses regularity of both total schemes for the Cartan
isomorphisms. Scholl, Remark 1.1.7, p. 4, warns that the analogous model-independence assertion for
`K'` of arbitrary non-regular proper flat models is false in general; it does not give an elliptic-curve
counterexample here.
*Needs:* §§3.7, 6.1–6.4; SchemeKTheoryOperations §§2.2, 2.4, 2.6, 3.7; K2SymbolsBrauer §12.1.

**Checks.**
- `contained_in_S_variant`: `K_2(E)_{ℤ,ℚ} ⊆ K_2(E)^S_{ℤ,ℚ}` for every `S`.
- `good_prime_changes_nothing`: for `37a1` (good reduction at 2), `K_2(E)^{{2}}_{ℤ,ℚ} = K_2(E)_{ℤ,ℚ}`;
  integrally `K_2(𝓔) → K_2(𝓔[1/2])` is onto because `K_1(𝓔_2) = (𝔽₂^×)² = 0` (§6.9).
- `unramified_not_integral`: for `C : y² + (x + 12)y + x³ = 0` over `ℚ` (conductor 390, split
  multiplicative `I_6` at 2) and `M = {y²/x³, 1 − x/4}`, which has trivial tame symbol at every closed point,
  no non-zero multiple of `M` is integral (Dokchitser–de Jeu–Zagier, Theorem 8.3(2), p. 23, with
  `m(x) = x − 4`, `p = 2`; §6.10).
- `all_primes_inverted`: if `S` is the set of all finite primes (`O_{F,S} = F`, allowed by Scholl 1.1.1), the
  `S`-integral variant is all of `K_2(E) ⊗ ℚ`.
- `model_independence_Cartan`: on the regular models both Cartan maps are isomorphisms; on a
  non-regular model the proof cannot replace `G_n` by `K_n` without an additional theorem (Scholl,
  Remark 1.1.7).

### 6.9 Good primes impose no condition

Let `v` be a finite prime at which `E` has good reduction, and `𝓔` a regular proper model smooth over `v`
(the minimal one, by §6.8 any choice gives the same images). Prove `goodPrime_no_condition`:
`G_1(𝓔_v) = K_1(𝓔_v) ≅ k(v)^× ⊕ k(v)^×` is finite (§5.11), hence
`K_2(E)^S_{ℤ,ℚ} = K_2(E)^{S ∪ {v}}_{ℤ,ℚ}` for every `S` not containing `v`. The localisation sequence
`K_2(𝓔_S) → K_2(𝓔_{S ∪ {v}}) → G_1(𝓔_v)` (SchemeKTheoryOperations §3.7) has finite cokernel term, so the
first map is onto after `⊗ ℚ` (Scholl, Proposition 1.3.6 and proof, p. 9; Weibel, *K-book*, VI.6, opening,
p. 502). Consequently only the finitely many primes of bad reduction can distinguish the integral part from
the unramified part. *Needs:* §§5.11, 6.8; SchemeKTheoryOperations §3.7.

**Checks.**
- `goodPrime_37a1_two`: for `37a1` and `v = 2`, `K_2(𝓔) → K_2(𝓔[1/2])` is onto since `K_1(𝓔_2) = 0`.
- `goodPrime_finite_K1`: `K_1` of a good fibre over `𝔽_q` has order `(q − 1)²`.
- `goodPrime_bad_fibre_differs`: at a split multiplicative prime `K_1'` of the fibre has rank one, so the
  argument does not apply there (Young, Theorem 3.3, p. 41).

### 6.10 The vertical-residue description

Let `𝓔` be a regular proper flat model of `E` over `O_F`. For each finite prime `v` and each irreducible
component `C` of `𝓔_v`, let `∂_C : K_2(F(E)) → k(C)^×` be the tame symbol of the discrete valuation
`ord_C`, whose value on `π_v` is the multiplicity `m_C`. Prove `integralPart_iff_vertical`: for
`α ∈ K_2(E) ⊗ ℚ`, viewed in `K_2(F(E)) ⊗ ℚ` (§3.7), `α ∈ K_2(E)_{ℤ,ℚ}` if and only if `∂_C(α) = 0` in
`k(C)^× ⊗ ℚ` for every vertical `C`; at primes of good reduction the condition holds automatically, so it
is a finite set of conditions. For an integral class `β ∈ K_2(E)`, if every vertical tame
value of its generic restriction is one, then some positive integer multiple of `β` lies in
`im(K_2(𝓔) → K_2(E))` (Dokchitser–de Jeu–Zagier, (3.5)–(3.6), p. 6, and Remark 3.8; Scholl,
introduction, (0.1), p. 1). Proof: localisation for `𝓔 ⊃ 𝓔_U` and the colimit over dense opens of the base
give the exact `K_2(𝓔) → K_2(E) → ⊕_v G_1(𝓔_v)` (SchemeKTheoryOperations §3.7); coniveau on the
one-dimensional fibre (SchemeKTheoryOperations §4.5; Weibel, *K-book*, V.9.5, p. 437) shows that the kernel
of `G_1(𝓔_v) → ⊕_C K_1(k(C))` is a quotient of `⊕_{x ∈ 𝓔_v closed} K_1(k(x))`, a torsion group (finite
residue fields, GeneralAlgebraicKTheory §13.8c); the composite `K_2(E) → G_1(𝓔_v) → k(C)^×` is `∂_C^{±1}`
by the vertical boundary comparison of SchemeKTheoryOperations §3.7 and the normalisation of §3.2. Hence
after `⊗ ℚ` the class is in the image exactly when every `∂_C(α)` is torsion. *Needs:* §§3.2, 3.7, 6.8–6.9;
SchemeKTheoryOperations §§3.7, 4.5; K2SymbolsBrauer §§9.2, 11.1; GeneralAlgebraicKTheory §13.8c.

**Checks.**
- `vertical_iff`: a class lies in `K_2(E)_{ℤ,ℚ}` exactly when every vertical residue is torsion.
- `vertical_DJZ_witness`: for `C : y² + (x + 12)y + x³ = 0` over `ℚ` and `M = {y²/x³, 1 − x/4}`, some
  component `D` of the fibre at 2 of the regular model has `∂_D(M)` of infinite order
  (Dokchitser–de Jeu–Zagier, proof of Theorem 8.3(2)).
- `vertical_good_primes`: only the finitely many bad primes give conditions.

### Examples

`37a1` over `ℤ`: the Weierstrass model is regular and minimal, its fibre at 37 nodal; over `ℤ[1/37]` it is
smooth; blowing up `(0, 0)` in the fibre at 2 gives a non-minimal regular model whose blow-down is the
terminal map; inverting 2 imposes no integrality condition. `11a1`: the Weierstrass model is not regular at
`(11, x − 5, y − 5)`. The curve `y² + (x + 12)y + x³ = 0` carries an unramified class that is not integral.

### Dependencies

Layers 1, 3 and 5; StableReduction Layers 4–5; ModularCurves Layer 1A; ArithmeticKTheory §1.1;
SchemeKTheoryOperations §§2.2–2.6, 3.7, 4.5; K2SymbolsBrauer §§9.2, 11.1, 12.1; GeneralAlgebraicKTheory §13.8c;
Tau Ceti `TauCeti.Model`, `genericFiberTowerIso`; Mathlib `ext_of_isDominant_of_isSeparated`,
`IsDedekindDomain.flat_iff_torsion_eq_bot`.
## Layer 7: Symbol certificates and Bloch's classes

Explicit elements of `K_2` of a curve are written as finite sums of symbols in `K_2` of its function field
whose tame symbols vanish at every closed point. This layer makes that condition finitely checkable,
proves the reciprocity that makes one point free, constructs Bloch's classes from torsion points, and
moves classes along constant-field extensions. The regulators of these classes belong to
EllipticRegulators.

Throughout, `k` is a field and `K/k` a function field of one variable with `IsFunctionField k K` (for
an elliptic curve, `K = W.toAffine.FunctionField`); its places are Tau Ceti's `TauCeti.Place k K`, which
correspond to the closed points of the regular projective model (§1.4).

### 7.1 The tame value at a place, and symbol candidates

For a place `P` and `f, g ∈ K^×`, the function `f^{ord_P g} / g^{ord_P f}` has order zero at `P`. Define
```text
tameValue P f g := (−1)^{ord_P f · ord_P g} · residueUnit_P (f^{ord_P g} / g^{ord_P f})  ∈ P.ResidueField^×,
```
K2SymbolsBrauer's tame symbol at the valuation of `P` evaluated on `{f, g}` (Dokchitser–de Jeu–Zagier,
(3.1), p. 4; Weibel, *K-book*, Lemma III.6.3, p. 234, has the inverse convention). Prove
`tameValue_eq_leading`: for a uniformiser `t` at `P` with `f = t^a u`, `g = t^b w` (Tau Ceti's
`Place.exists_eq_zpow_mul_unit`), `tameValue P f g = (−1)^{ab} · ū^b · w̄^{−a}`; in particular the value
does not depend on `t`. Prove `tameValue_of_ord_eq_zero`: if `ord_P f = ord_P g = 0` then
`tameValue P f g = 1`; and the Steinberg properties `tameValue_mul_left`, `tameValue_mul_right`
(bimultiplicativity), `tameValue_swap` (`tameValue P g f = (tameValue P f g)⁻¹`) and
`tameValue_one_sub` (`tameValue P f (1 − f) = 1` for `f ≠ 0, 1`), which are the properties of K2SymbolsBrauer §§9.2–9.4 for
this valuation.

A symbol candidate is a finitely supported function `α : K^× × K^× →₀ ℤ`, read as the formal sum
`Σ n_{(f,g)} {f, g}`. Define `SymbolCandidate.tame P α := ∏ tameValue P f g ^ n_{(f,g)}`, multiplicative
in `α`, and `SymbolCandidate.toK2 α := Σ n_{(f,g)} {f, g} ∈ K_2(K)` through Matsumoto's presentation
(K2SymbolsBrauer §§7.2, 8.3). Prove `SymbolCandidate.tame_toK2`: `tame P α` is the tame symbol at `P` of
`toK2 α`. *Needs:* §3.2; K2SymbolsBrauer §§7.2, 8.3, 9.2–9.4; Tau Ceti `TauCeti.Place.ord`, `residueUnit`,
`exists_eq_zpow_mul_unit`.

**Checks.**
- `tameValue_unit_uniformizer`: for a uniformiser `t` and `ord_P u = 0`, `tameValue P u t = ū` and
  `tameValue P t u = ū⁻¹`; when `ū = 2` in characteristic zero these are `2` and `1/2`.
- `tameValue_minus_one`: `tameValue P (−1) f = (−1)^{ord_P f}`, so `{−1, f}` sees only the parity of orders.
- `tameValue_units`: `tameValue P f g = 1` when both are units at `P`.
- `tameValue_self`: `tameValue P f f = (−1)^{ord_P f}`, which a version without the sign would get wrong at
  a simple zero.

The candidate representation has its own Checks, separate from those of a single tame symbol.

**Checks.**
- `candidate_zero`: the zero finitely supported function has empty support, maps to zero in
  `K_2(K)`, and has tame value one at every place.
- `candidate_integer_coefficients`: for `α = [(f,g)] − [(f,h)]`, the tame value is
  `tameValue P f g / tameValue P f h`; a two-term proved Lean example fixes subtraction.
- `candidate_formal_not_quotient`: for `f ≠ 0, 1`, the formal candidate `[(f,1−f)]` is nonzero
  (its coefficient is one), but its `toK2` image is zero and every tame value is one. The
  candidate carrier therefore must precede the Steinberg quotient.

### 7.2 Certificates

A certificate for a candidate `α` consists of: (i) a named finite set `S` of places; (ii) for every place
`P ∉ S` and every `(f, g)` in the support of `α`, a proof that `ord_P f = ord_P g = 0`; (iii) for every
`P ∈ S`, a uniformiser `t_P` with the orders and leading units of the functions involved; (iv) for every
`P ∈ S`, a proof that `tame P α = 1` **in** `P.ResidueField^×`, computed from (iii) by `tameValue_eq_leading`.
Define `SymbolCertificate α` with fields `support`, `unit_outside`, `uniformizer` (with
`ord_P (uniformizer P) = 1` on the support) and `tame_eq_one`. Prove `tame_eq_one_everywhere`: a certified
candidate has `tame P α = 1` at every place; `nonempty_iff`: `α` has a certificate if and only if
`tame P α = 1` for all `P`, the union of the zeros and poles of the functions involved being an admissible
`S` (finite by Tau Ceti's `Place.finite_setOf_ord_ne_zero`); and `sound`: `toK2 α` lies in the kernel of the
tame symbol, hence in the image of `K_2(X)` for the regular projective model `X` (§3.1), and over a number
field defines a class in `K_2(X) ⊗ ℚ` (§3.7) (Dokchitser–de Jeu–Zagier, §4, opening, p. 7). The condition in
(iv) is triviality in the residue field, not triviality of its norm to `k`; at a place of degree larger than
one these differ. Triviality is the same condition in K2SymbolsBrauer's convention and in the K-book's, but
recorded values must name the convention. *Needs:* §§3.1, 3.7, 7.1; K2SymbolsBrauer §§9.2, 9.13; Tau Ceti
`Place.finite_setOf_ord_ne_zero`, `Divisor.principal`.

**Checks.**
- `SymbolCertificate.empty`: the zero candidate has a certificate with empty support.
- `certificate_11a3`: on `y² + y = x³ − x²` over `ℚ` (`11a3`), `{x, y} + {−1, x}` has a certificate with
  support `{(0, 0), (0, −1), (1, 0), O}`: the tame values of `{x, y}` there are `−1, −1, 1, 1` and those of
  `{−1, x}` are `−1, −1, 1, 1`; `{x, y}` alone has none.
- `norm_only_not_certificate`: on `y² = x³ + 1` over `ℚ` (`36a1`), `{x − 1, −1}` has tame value `−1` in
  `ℚ(√2)` at the degree-two place `x = 1` and value one elsewhere; every normed value is one, but there is
  no certificate. A definition that tests norms would accept it.
- `certificate_convention_invariant`: `tame P α = 1` in K2SymbolsBrauer's convention if and only if the
  K-book's value at `P` is one.
- `nonempty_iff_test`: on `11a3`, the candidate `5{x, y} + Σ_P {f_P, tame_P{x, y}}` over the four non-zero
  rational torsion points, with `div f_P = 5(P) − 5(O)` (§7.5), has a certificate and every tame
  value on the union of the supports equals one.

### 7.3 Integral certificates

Let `k` be a number field, `X` a regular proper flat model of `E` over `O_k` (§6.1). An integral certificate
for `α` consists of a certificate (§7.2), a named finite set `S'` of maximal ideals of `O_k` with a proof
that for every `p ∉ S'` the fibre `X_p` is smooth and irreducible and every function involved has order zero
along `X_p`, and for every `p ∈ S'` the list of irreducible components `D` of `X_p` with the orders of the
functions along `D`, their leading units in `k(D)`, and a proof that the tame value of `α` at the generic
point of `D` is one in `k(D)^×`. Define `IntegralCertificate` with `primes`, and prove
`IntegralCertificate.sound`: an integrally certified candidate is killed by every codimension-one tame
symbol of `X`, so its class lies in the integral part `K_2(E)_{ℤ,ℚ}` (§6.10; Dokchitser–de Jeu–Zagier,
Remark 3.8, p. 6). Outside `S'` the vertical condition holds because every function is a unit at the generic
point of the fibre. Rationally, vertical conditions can fail non-trivially only at primes of split
multiplicative reduction, where `K_1'` of the fibre has rank one; elsewhere it is torsion (Young,
*K_2 and L-series of elliptic curves over real quadratic fields*, Theorem 3.3, p. 41). *Needs:* §§6.1,
6.10, 7.2.

**Checks.**
- `integral_certificate_11a3`: on `11a3` the minimal Weierstrass model over `ℤ` is regular (type `I_1` at 11,
  good elsewhere), and `{x, y} + {−1, x}` has an integral certificate with `S' = {11}`: `x` and `y` have order
  zero along the irreducible fibre at 11.
- `unramified_not_integral_DGJK`: for `u = 1/3`, `α = {v, w} + {−1, h}` on `y² = x(x + 1)(x + u²)` has a
  certificate and no non-zero multiple has an integral certificate (§8.3).
- `integral_of_constant`: `{c, d}` with `c, d ∈ O_k^×` has an integral certificate with horizontal
  support `S = ∅` and `S'` containing the bad primes of the chosen model; every vertical value is one.
  Taking `S' = ∅` is allowed only when all fibres meet the smoothness and irreducibility condition.

### 7.4 Reciprocity and the last rational point

Prove `tame_last_point`: if `tame P α = 1` at every place `P` other than one place `P₀` of degree one, then
`tame P₀ α = 1`; more generally, if `tame P α = 1` for all `P ≠ P₀`, then
`N_{k(P₀)/k}(tame P₀ α) = 1`, which does not force `tame P₀ α = 1` when `deg P₀ > 1`. The input is Weil
reciprocity `∏_P N_{k(P)/k}(tame P α) = 1` for the residue-field norms (K2SymbolsBrauer §10.30; Weibel,
*K-book*, Weil Reciprocity Formula V.6.12.1, p. 416, proof p. 417), with the multiplicativity of `tame` in
the candidate; at a degree-one place the norm is the identity. The product over geometric points, with all
embeddings of each `k(P)`, is the same identity; a product taking one value per closed point is not
(Dokchitser–de Jeu–Zagier, proof of Lemma 4.2, p. 8). *Needs:* §7.2; K2SymbolsBrauer §10.30; Tau Ceti
`Place.normResidue`, `Place.finiteDimensional_residueField`.

**Checks.**
- `last_point_11a3`: in the certificate for `{x, y} + {−1, x}` on `11a3`, the value at `O` follows from the
  other three.
- `last_point_degree_two`: on `36a1`, `{x − 1, −1}` has value `−1` (norm one) at the degree-two place
  `x = 1` and value one elsewhere, so the degree-one hypothesis is needed.
- `normed_product_36a1`: on `36a1`, `{y − 3, x}` has tame values `1/2` at `(2, 3)`, `1/x₀` at the place
  `x² + 2x + 4 = 0, y = 3` (norm `1/4`), `−2` at `(0, 1)`, `−4` at `(0, −1)` and `1` at `O`; the normed
  product is `(1/2)(1/4)(−2)(−4)(1) = 1`, while the product with `x₀` read as `−1 + √−3` is `−1 − √−3`.

### 7.5 Principal divisors on rational torsion

Let `W` be elliptic over `k`. Define `blochRho`: for `C ≥ 1` prime to `char k`, if the full
geometric `C`-torsion is rational, choose `ρ` with
`div ρ = (C² − 1)(O) − Σ_{0 ≠ a ∈ E[C]} (a)`. This is the full-torsion aggregate needed for
§7.7, beyond the supplied function for one torsion point. The divisor has degree zero and its
point sum is zero: pair `a` and `−a`; the remaining subgroup is trivial for odd `C` and is
`(ℤ/2)²`, whose sum is zero, for even `C`. Apply the supplied principal-divisor criterion.
The named API is `divisor_blochRho`, `blochRho_unique_up_to_constant`, and the base-change
compatibility `blochRho_baseChange` modulo a constant. The functions `f_T` used below are those
of `exists_principal_zsmul_pointPlace_sub_infinity`; their scheme-divisor interpretation is
`torsionFunction_divisor_compat`, through §1.4 and §2.3. Non-rational torsion is handled over a
finite extension (§7.8). This is the divisor construction for the correction in Young,
Lemma 3.1, pp. 37–38, specialised to full prime-to-characteristic torsion. *Needs:* §2.4;
EllipticCurves Layer 2; the point/divisor and torsion-function supplier contracts.

**Checks.**
- `torsionFunctions_11a3`: on `11a3` the functions with divisor `5(P) − 5(O)` at the four non-zero rational
  torsion points are `x² + xy + y`, `−x² + (y + 1)x + (y + 1)`, `−2x² + (y + 3)x − 1` and `2x² + (y − 2)x + 1`;
  for instance the norm of the first to `ℚ(x)` is `−x⁵`.
- `blochRho_characteristic_two`: on the ordinary elliptic curve `y² + xy = x³ + 1` over `𝔽₂`,
  the geometric points of `E[2]` form `ℤ/2`, with nonzero point `(0, 1)`. They do not form
  `(ℤ/2)²`, and their sum is nonzero; thus the full-torsion formula requires `char k ∤ C`.
- `blochRho_C1`: when `C = 1`, the prescribed divisor is zero, so any nonzero constant
  is a choice of `ρ`; its divisor remains zero after a field extension.
- `blochRho_C2`: on `y² = x³ − x` over `ℚ` with `C = 2`, `ρ = 1/y` has divisor
  `3(O) − ((0, 0)) − ((1, 0)) − ((−1, 0))` and `f_{(0,0)} = x`.
- `principal_sum_nonzero`: on `y² = x³ − x` over `ℚ`, `((0, 0)) − (O)` is not principal, since `(0, 0) ≠ O`.

### 7.6 Bloch's correction

Let `E` be an elliptic curve over `k`, `T` a finite subgroup of `E(k)` and `C ≥ 1` with `C · T = 0`. Let
`f, g ∈ k(E)^×` have divisors supported on `T`. For each non-zero `P ∈ T` let `f_P` have divisor
`C(P) − C(O)` (§7.5) and `c_P = tame P {f, g} ∈ k^×`, `P` being rational. Prove `blochCorrection`: the
candidate `C{f, g} + Σ_{0 ≠ P ∈ T} {f_P, c_P}` has tame value one at every place. This is the
algebraic extension of Young, Lemma 3.1, pp. 37–38: there the coefficient is `#T` over a totally
real number field; here any positive annihilator `C` works over any field by the following
valuation and Weil-reciprocity argument. Outside `T` all functions are units; at a non-zero `P ∈ T`,
`tame P {f_P, c} = c^{−C}`, so the value is `c_P^C · c_P^{−C} = 1`; at `O`, `tame O {f_P, c} = c^C` and the
value is one by §7.4, all places of `T` having degree one. Equivalently, the tame symbol of `{f, g}` lies in
`Div(E) ⊗ k^×`; its image in `Pic(E) ⊗ k^×` is `(O) ⊗ ∏ c_x + Σ (x − O) ⊗ c_x`, the first term vanishing by
Weil reciprocity and the second killed by `C`, and the exact sequence
`k(E)^× ⊗ k^× → Div(E) ⊗ k^× → Pic(E) ⊗ k^× → 0` supplies the correction. This tensor description is an alternative derivation of the
explicit valuation calculation above. *Needs:* §§7.2, 7.4–7.5.

**Checks.**
- `blochCorrection_11a3`: on `11a3` with `T = E(ℚ)_tors` (order five), `f = x`, `g = y`, `C = 5`: the tame
  values of `{x, y}` at the four non-zero points are `−1, −1, 1, 1`, and `5{x, y} + Σ {f_P, c_P}` has tame
  value one at all points of `T` and at `O`.
- `blochCorrection_needs_C`: without the factor `C` the statement fails (§7.7, `blochClass_C2_needs_factor`).
- `blochCorrection_sign`: `tame P {f_P, c} = c^{−C}` at `P` and `c^{C}` at `O` in K2SymbolsBrauer's
  convention.

### 7.7 Bloch's classes S_a and their normalisation

Let `C ≥ 1` be prime to `char k` and let `E/k` have its full geometric `C`-torsion rational,
so `E[C] ≅ (ℤ/C)²` and, for `C ≥ 3`, `μ_C ⊂ k`; over `ℚ`
only `C ≤ 2` occurs, and classes over `ℚ` come from §7.9. Let `K_2^T(E)` be the kernel of the tame symbol on
`K_2(k(E))` and `Q_E` the subgroup generated by torsion and the symbols `{c, d}` with `c, d ∈ k^×`. Define the choice-dependent lift
`blochClassLift a ∈ K_2^T(E) ⊗ ℤ[1/C]` for `0 ≠ a ∈ E[C]` as `1/C` times the class of
`A_a = C{ρ, f_a} + Σ {f_i, c_i}`, the correction of §7.6 for `(ρ, f_a)`. Define the canonical class
`blochClass a` in `(K_2^T(E)/Q_E) ⊗ ℤ[1/C]` as its image. Here `Q_E` means the subgroup of
`K_2^T(E)` generated by its torsion and by constant symbols, which are unramified. Prove `blochClass_wellDefined`: `S_a` is independent of the choices of `ρ` and
`f_a` (each fixed up to a constant) and of the correction, modulo `Q_E`; when `K_2(k)` is torsion (a number
field) it is well defined modulo torsion. For this well-definedness target, use the following tensor-exactness argument: two corrections
differ by an element of the image of
`k(E)^× ⊗ k^×` in the kernel of the tame symbol, which is the image of `ker(div ⊗ id)`, generated by
`k^× ⊗ k^×` together with lifts of `Tor(Pic(E), k^×)`. Explicit generators of the latter
have the form `{h, ζ}`, where `div h = nD` and `ζ^n = 1`, and are themselves killed by `n`;
thus the image is indeed contained in constants plus torsion, rather than merely having a
torsion quotient by constants; changing `ρ` or `f_a` by constants changes `C{ρ, f_a}` by symbols
`{c, h}`, absorbed the same way. Only `C{ρ, f_a}` is guaranteed to be correctable by §7.6, so division by `C` is made only
after obtaining an unramified class. The construction combines §7.6 (Young, Lemma 3.1,
pp. 37–38) with the tensor argument just given.

The primary-source comparison is with Bloch, *Algebraic K-Theory and Zeta Functions of
Elliptic Curves*, ICM Helsinki 1978, vol. 2 (1980), p. 514, the unnumbered construction
immediately after the localisation sequence. In characteristic zero, with `N = C`, that
construction takes an integral corrected element
`S_a^ICM = C{ρ, f_a} + Σ_i {h_i, d_i} ∈ K_2^T(E)`; in the paper's multiplicative notation,
the coefficient `C` is the exponent on `{ρ, f_a}`. Its `ρ` and `f_a` have exactly the
divisors of §§7.5–7.6. There is no division by `C` in that displayed construction.
Writing `π_C : K_2^T(E) → (K_2^T(E)/Q_E) ⊗ ℤ[1/C]` for quotient followed by localisation,
the comparison target `blochClass_eq_Bloch` is therefore

```text
C · blochClass a = π_C(S_a^ICM),     or equivalently
blochClass a = (1/C) · π_C(S_a^ICM).
```

With the same correction, `C · blochClassLift a = S_a^ICM ⊗ 1`; with another correction,
the equality is in the quotient displayed above. Bloch's page asserts existence in the
tame kernel and independence of the regulator from the correction. The quotient by
constants and torsion, its choice-independence proof, and the extension to positive
characteristic prime to `C` are supplied by the algebraic argument above. The name `S_a`
in this roadmap denotes the divided class `blochClass a`.

The ICM display does not specify a valuation formula for its tame map. The comparison
uses its kernel, which is unchanged on inverting every tame value. More explicitly, take
`h_P = f_P`, `d_P = tame P {ρ, f_a}` in this roadmap's convention. Then
`tame P {f_P, d_P} = d_P^{−C}`, cancelling `d_P^C`; at `O` use §7.4.
If the inverse tame convention is used, the same correction is unramified and its
constants `d_P` are the inverses of the raw tame values in that convention. Thus neither
reversing the entries in the correction nor negating the entire class is part of the
comparison. This fixes the orientation without attributing an unstated convention to Bloch.

The classes are not claimed to be linearly independent; Dokchitser–de Jeu–Zagier,
Proposition 4.3(1), p. 8, gives relations among the related three-point classes. API:
`blochClassLift`, `blochClass`, `blochClass_wellDefined`, `blochClass_change_function`,
`blochClass_change_correction`, `blochClass_eq_Bloch`. *Needs:* §§2.4, 7.2, 7.5–7.6.

**Checks.**
- `blochClass_C2_needs_factor`: on `y² = x³ − x` over `ℚ`, `C = 2`, `a = (0, 0)`: `{1/y, x}` has tame values
  `(−1, 1, −1, 1)` at `((0, 0), (1, 0), (−1, 0), O)`, its image in `Pic(E) ⊗ ℚ^×` is `(1, 0) ⊗ (−1) ≠ 0`, so it
  cannot be corrected by symbols `{h, c}` with `c ∈ ℚ^×`; `2{1/y, x}` can.
  For the nonzero tensor assertion, `(1,0)` is not twice a rational point: the doubling
  formula would require a rational root of `z⁴−4z³+2z²+4z+1`, whose only possible
  rational roots `±1` both give `4`. Apply the sign homomorphism `ℚ^× → ℤ/2` to the
  tensor factor; the image is the nonzero class of `(1,0)` in `E(ℚ)/2E(ℚ)`.
- `blochClass_not_independent`: for three rational points `P₁, P₂, P₃` with pairwise torsion differences,
  the symbols `S₁, S₂, S₃` of Dokchitser–de Jeu–Zagier's Construction 4.1 span a subgroup of rank at most
  one of `K_2^T` modulo torsion.
- `divisor_blochRho_C2`: for `C = 2` on `y² = x³ − x`, `div(1/y) = 3(O) − ((0, 0)) − ((1, 0)) − ((−1, 0))`.
- `blochClass_wellDefined_test`: replacing `f_a` by `c f_a`, `c ∈ k^×`, changes `C S_a` by an element of the
  subgroup generated by torsion and `{k^×, k^×}`.
- `blochClass_C1`: there is no nonzero `a ∈ E[1]`, so the class family is empty; this
  does not introduce a class indexed by the origin or divide by zero.
- `blochClass_normalisation_two_terms`: for distinct formal symbols `s, t`, put
  `A = 3[s] + [t]` in the rational-coefficient extension of §7.1's candidate carrier.
  The coefficients of `(1/3)A` at `s, t` are `1, 1/3`, while those of `A` are `3, 1`.
  These are checks before the Steinberg quotient; they do not assume an actual corrected
  K-class is nonzero. They distinguish the divided convention from the ICM convention.
- `blochClass_correction_orientation`: locally, if `ord_P h = 3`, `ord_P c = 0` and
  the residue of `c` is `2` in characteristic zero, then `{h, c}` has tame value `1/8`
  and `{c, h}` has value `8`. A raw symbol of tame value `2` contributes `8` after
  multiplication by `C = 3`, so the correction in the first order gives `1`; the
  reversed order gives `64`. This is a local computation, not a claim that full
  rational `E[3]` exists over `ℚ`.
- `blochClass_C2_integral_comparison`: in the first Check, one may take
  `A_a = 2{1/y, x} + {x, −1} + {x + 1, −1}`. Its tame values are all one:
  at `(0,0)` and `(−1,0)` the correction values are `(−1)^{−2} = 1`, at `(1,0)`
  they are one, and at `O` they are `(−1)^2 = 1`. Thus this is an integral
  ICM representative and `blochClassLift a = A_a/2` for these choices. Division
  takes place in the tame kernel tensor product, even though `{1/y,x}` alone
  cannot be corrected integrally as the first Check shows.

### 7.8 Transfer along a constant-field extension

Let `L/k` be finite, `E_L = E ×_k L`, and `N : K_2(L(E)) → K_2(k(E))` the transfer of the field extension
`L(E)/k(E)`, of degree `[L : k]` because `E` is geometrically integral. Prove `transfer_tame`: for every place
`P` of `k(E)`, `tame P (N β) = ∏_{Q | P} N_{k(Q)/k(P)}(tame Q β)` (K2SymbolsBrauer's norm-residue
formula, §§10.21, 10.27, at `P` and the places of `L(E)` above it, which are the closed points of `E_L` above `P`). Hence `N`
maps `K_2^T(E_L)` to `K_2^T(E)`, a certificate for `β` over `L` yields one for `N β` over `k` with residues
computed by the norms, `N ∘ res = [L : k]`, and `N{f, c} = {N f, c}` for `c ∈ k^×` (Weibel, *K-book*, Remark
V.6.6.3–6.6.4, p. 410, for compatibility of transfer with localisation;
III.6.3.1, p. 234, for restriction). *Needs:* §§3.6, 7.2; K2SymbolsBrauer §§10.21, 10.27.

**Checks.**
- `transfer_x3_minus_2x`: for `E : y² = x³ − 2x` over `ℚ`, `L = ℚ(√2)` and `β = {x − √2, y}`,
  `N β = {x² − 2, y}`. At the degree-two place `Q₂ = {x² = 2, y = 0}`, with `x₀` the class of `x`,
  `tame Q₂ (N β) = 1/x₀ = x₀/2`; above it lie `(√2, 0)` and `(−√2, 0)`, where `tame β` is `1/4` and `−2√2`, and
  transporting the second along `√2 ↦ −x₀` gives the product `(1/4)(2x₀) = x₀/2`.
- `transfer_res`: `N ∘ res = [L : k]` on `K_2(k(E))`.
- `transfer_identity`: for `L = k`, `N` is the identity.

### 7.9 Galois descent

Let `L/k` be finite Galois with group `G`. Prove `galoisDescent`: restriction `res : K_2^T(E) → K_2^T(E_L)^G`
satisfies `N ∘ res = [L : k]` and `res ∘ N = Σ_{σ ∈ G} σ` (Weibel, *K-book*, Exercise IV.6.13, p. 327; the
first by the projection formula); hence its kernel and cokernel are killed by `[L : k]`, and
`res ⊗ ℚ : K_2^T(E) ⊗ ℚ ≅ (K_2^T(E_L) ⊗ ℚ)^G` with inverse `N/[L : k]` (Dokchitser–de Jeu–Zagier, Remark
4.14, p. 11). Both maps preserve the kernels of the tame symbols (§7.8). A `G`-invariant certified class
over `L`, for instance a `G`-stable combination of the `S_a`, descends rationally to `N(β)/[L : k]`.
Integrally the statement holds only up to `[L : k]`-torsion. Descent does not give integrality: a descended
class need not lie in the integral part, which is the separate vertical condition of §6.10. *Needs:* §7.8;
K2SymbolsBrauer §§10.21, 10.27; §7.3.

**Checks.**
- `descent_rational_iso`: `res ⊗ ℚ` is an isomorphism onto the `G`-invariants.
- `descent_not_integral`: the DGJK class with `u = 1/3` is defined over `ℚ`, hence invariant under any base
  change, and no non-zero multiple is integral (§8.3).
- `descent_trivial_group`: for `L = k` the statement is trivial, `res` and `N` being the identity.

### Examples

On `11a3`, `y² + y = x³ − x²`, the rational torsion has order five, `{x, y}` has tame values `−1, −1, 1, 1` at
`(0, 0), (0, −1), (1, 0), O`, and `{x, y} + {−1, x}` is certified and integrally certified with `S' = {11}`.
On `36a1` the symbols `{x − 1, −1}` and `{y − 3, x}` show the difference between residue-field values and
their norms. On `y² = x³ − x` with `C = 2`, `{1/y, x}` is not correctable while `2{1/y, x}` is.

### Dependencies

Layers 2, 3 and 6; K2SymbolsBrauer §§7.2, 9.2–9.4, 10.21, 10.27, 10.30; Tau Ceti places, residue units, divisors and the elliptic
point–divisor-class equivalence.
## Layer 8: Worked examples

Three computations exercise the whole interface: a certificate on a curve with large rational torsion
whose class is not constant, a residue at a closed point of degree two, and an integrality failure at a
split multiplicative fibre. Each is a target: its numbers are part of the statement and are what a
formalisation must reproduce.

### 8.1 A certified symbol on y² = x(x+1)(x+16)

Let `E₄ : y² = x(x + 1)(x + 16)` over `ℚ` (conductor 15, torsion `ℤ/4 × ℤ/2`), the member `u = 4` of the
family `E_u : y² = x(x + 1)(x + u²)`, and put
```text
v = (x + 16)/y,   w = (4 − x v)/(4 + x v) = (4(x + 1) − y)/(4(x + 1) + y),   h = (4(x + 1) + y)/(x + 4),
α = {v, w} + {−1, h}.
```
Prove `example_certificate_E4`: the divisors are
```text
(v) = ((−16, 0)) − ((0, 0)) − ((−1, 0)) + (O),
(w) = ((−4, −12)) + ((4, 20)) − ((−4, 12)) − ((4, −20)),
(h) = ((−1, 0)) + ((4, −20)) − ((−4, −12)) − (O),
```
and `α` has a certificate with support `S = {O, (0, 0), (−1, 0), (−16, 0), (4, 20), (4, −20), (−4, 12),
(−4, −12)}`: the tame values of `{v, w}` there are `−1, 1, −1, 1, 1, −1, 1, −1` and those of `{−1, h}` the
same, so every tame value of `α` is one (Dummigan–Golyshev–de Jeu–Kerr, *The 2-part of the Bloch–Kato
conjecture, and indivisibility results, for K₂ of some elliptic curves*, arXiv:2605.11100v1, Proposition
10.2(1) and proof, pp. 29–30, for general `u`). The divisors of `v` and `w` have no common point, so the
values are read off from `w(P) = 1` at `(−16, 0)` and `(0, 0)`, `w(P) = −1` at `(−1, 0)` and at `O`, and
`v(P) = ∓1` at the four points of `(w)`; the value at `O` also follows from the other seven by §7.4. Prove
`example_E4_not_constant`: `α` is not in the image of `K_2(ℚ)`. The specialisations at `P = (0, 0)` and
`Q = (−16, 0)`, defined on the kernel of the tame symbol at those places by K2SymbolsBrauer §9.11's
higher Milnor residues, agree on constants, but `h(P) = w(P) = 1` gives `0` at `P`, while `h(Q) = 5`,
`w(Q) = 1` give `{−1, 5}` at `Q` (Dummigan–Golyshev–de Jeu–Kerr, Section 10 after Remark 10.3 and Table
10.4, p. 31), and `{−1, 5} ≠ 0` in `K_2(ℚ)` because its tame symbol at 5 is `−1 ∈ 𝔽₅^×` (K2SymbolsBrauer
§12.11). That `α` has infinite order is a regulator statement of EllipticRegulators. *Needs:* §§7.2, 7.4;
K2SymbolsBrauer §§9.11, 12.11.

**Checks.**
- `E4_tame_values`: all eight tame values of `α` equal one.
- `E4_specialisation_Q`: `i_Q^*(α) = {−1, 1 + u} = {−1, 5}`, and the tame symbol of `{−1, 5}` at 5 is `−1`.
- `E4_divisor_degrees`: each of `(v)`, `(w)`, `(h)` has degree zero. Exhaustiveness additionally
  follows by factoring their numerator and denominator zero loci in the coordinate ring and checking
  the order at `O`; degree zero alone would permit omitted pairs of a zero and a pole.

### 8.2 A residue at a closed point of degree two

On `E : y² = x³ + 1` over `ℚ` (`36a1`), prove `example_degree_two_residue`: `{y − 3, x}` is supported on
`(2, 3)`, the closed point `Z = {x² + 2x + 4 = 0, y = 3}` of degree two with residue field
`ℚ(x₀) = ℚ(√−3)`, `(0, 1)`, `(0, −1)` and `O`; `div(y − 3) = ((2, 3)) + Z − 3(O)` and
`div(x) = ((0, 1)) + ((0, −1)) − 2(O)`; its tame values are `1/2`, `1/x₀ = −x₀/4 − 1/2`, `−2`, `−4` and `1`;
`N_{ℚ(x₀)/ℚ}(1/x₀) = 1/4` and the normed product is `(1/2)(1/4)(−2)(−4)(1) = 1` (K2SymbolsBrauer §10.30), while
the product of the values with `x₀` read as `−1 + √−3` is `−1 − √−3 ≠ 1`. Moreover `{x − 1, −1}` has tame
value `−1` (norm one) at the degree-two point `{x = 1, y² = 2}` and value one elsewhere, so it is not in the
kernel of the tame symbol although every normed value is one (Weibel, *K-book*, III.6.5.3, p. 236, for the
norms). *Needs:* §§7.2, 7.4; K2SymbolsBrauer §10.30; Tau Ceti `Place.normResidue`.

**Checks.**
- `degree_two_values`: the five tame values listed.
- `degree_two_normed`: the normed product is one and the unnormed product is not.
- `degree_two_not_kernel`: `{x − 1, −1}` is not in the kernel of the tame symbol.

### 8.3 Integrality at a split multiplicative fibre

Prove `example_bad_fibre`. (a) On `11a3`, `y² + y = x³ − x²` (minimal discriminant `−11`, type `I_1`, split
multiplicative at 11, good elsewhere), the minimal Weierstrass model over `ℤ` is regular and proper, every
fibre is irreducible, and `x, y` have order zero along every fibre; hence `{x, y} + {−1, x}` has an integral
certificate with `S' = {11}` (§7.3). (b) For `u = 1/3` and `E : y² = x(x + 1)(x + 1/9)` (type `I_4`, split
multiplicative at 3), `α = {v, w} + {−1, h}` with the functions of §8.1 for this `u` has a certificate, but
on the model `3(V² − Z²)(W² − Z²) + 4VWZ² = 0` (the equation `(V² − Z²)(W² − Z²) + 4uVWZ² = 0` with
denominators cleared, `v = V/Z`, `w = W/Z`) the local ring at the generic point `η` of the component `V = 0`
of the fibre at 3 is a discrete valuation ring with uniformiser 3: from `4vw = −3(v² − 1)(w² − 1)` with `w`
and `(v² − 1)(w² − 1)` units at `η`, `v` is 3 times a unit. So `ord_η v = 1`, `ord_η w = 0`, and the vertical
tame value of `{v, w}` is the class of `1/w`, of infinite order in `𝔽₃(w)^×`; that of `{−1, h}` is `±1`. A
regular proper model can be chosen to map to this projective model and to be an isomorphism over
the regular point `η`, so no non-zero multiple of
`α` is integral (Dummigan–Golyshev–de Jeu–Kerr, proof of Proposition 10.2(2), pp. 30–31). Only split
multiplicative primes can produce such a failure rationally: at good, additive and non-split fibres `K_1'`
of the fibre is torsion, so vertical conditions hold after multiplying by an integer (Young, Theorem 3.3,
p. 41). *Needs:* §§6.10, 7.3; §6.1.

**Checks.**
- `bad_fibre_11a3`: (a) holds with `S' = {11}`.
- `bad_fibre_u_third`: the vertical tame value of `m α` at `η` is not one for any `m ≠ 0`.
- `bad_fibre_4u_integer`: when `4u` is an integer, for instance `u = 4`, `2α` is integral, so the failure in
  (b) comes from the denominator of `4u` (Dummigan–Golyshev–de Jeu–Kerr, Proposition 10.2(2)).

### Examples

The three targets of this layer are the examples.

### Dependencies

Layers 6–7; K2SymbolsBrauer §§9.2, 9.11, 10.30, 12.1, 12.11.

## Downstream consumers

- **EllipticRegulators** computes the Deligne regulator of the classes of Layer 7 and of the integral part
  of Layer 6 (the divisor formula, Bloch's classes and the Beilinson statement for elliptic curves); it
  uses the scheme of Layer 1, functoriality of Layer 5 and `divisor_blochRho`. Its input
  `S_a` is the divided class of §7.7; the integral ICM class maps to `C S_a`.
- **SpecialValuesBirchTate** states the higher special-value conjectures for elliptic curves in terms of
  `K_2(E)_{ℤ,ℚ}` (§6.8) and the finite-field orders of §5.11.
- **PadicHodgeRegulators** uses the functoriality of Layer 5 for the elliptic and higher-weight
  p-adic regulators.

## References

- Marc Levine, *K-theory and motivic cohomology of schemes, I*, author draft, December 2001,
  [author PDF](https://www.esaga.uni-due.de/f/marc.levine/publ/KthyMotI12.01.pdf):
  §3.2, Lemma 3.3 and Proposition 3.5 (pp. 12–14), Proposition 6.8 (pp. 19–20),
  Theorem 12.12 (pp. 58–59) and Theorem 14.7 (pp. 73–74).

- C. A. Weibel, *The K-book: an introduction to algebraic K-theory*, Graduate Studies in Mathematics 145,
  AMS, 2013; author-hosted combined draft of 29 August 2013,
  [Kbook.pdf](https://sites.math.rutgers.edu/~weibel/Kbook/Kbook.pdf) (page `n` is PDF page `n + 8`), and
  its chapter files `Kbook.III.pdf`, `Kbook.V.pdf`, `Kbook.VI.pdf` at the same address. Results used:
  I.5.14–5.16; II.8.1, II.8.2.1, II.8.2.3–8.2.4, II.8.5–8.6; III.2.5.1; III.6.3, III.6.3.1, III.6.5.3,
  III.6.7, III.6.7.1, III.7.2; IV.6.9, Exercise IV.6.13; V.1.5, V.3.3.2, V.3.11–3.12, V.6.6, V.6.6.3–6.6.4,
  V.6.7.1, V.6.8, V.6.12–6.12.1, V.6.13.2, V.9.5; VI.1.7, VI.4.3, VI.4.7, VI.6.1–6.8.
- S. Bloch, *Algebraic K-Theory and Zeta Functions of Elliptic Curves*, Proceedings of the
  International Congress of Mathematicians, Helsinki 1978, vol. 2, Helsinki, 1980, pp. 511–515,
  [IMU proceedings](https://www.mathunion.org/fileadmin/ICM/Proceedings/ICM1978.2/ICM1978.2.ocr.pdf#page=10):
  p. 514, the unnumbered corrected-symbol construction after the localisation sequence
  and the following torsion-point specialisation (one-based PDF page 10). The comparison
  in §7.7 records the integral convention of this paper and the divided convention here.
- M. A. Young, *K₂ and L-series of elliptic curves over real quadratic fields*, PhD thesis, Durham, 1995,
  [Durham E-Theses 5114](https://etheses.durham.ac.uk/id/eprint/5114/1/5114_2567.PDF): Lemma 3.1 (p. 37),
  Theorem 3.3 (p. 41).
- T. Dokchitser, R. de Jeu, D. Zagier, *Numerical verification of Beilinson's conjecture for K₂ of
  hyperelliptic curves*, Compositio Math. 142 (2006), 339–373,
  [arXiv:math/0405040v2](https://arxiv.org/abs/math/0405040): (3.1), (3.5)–(3.6), Remark 3.8, Construction 4.1,
  Lemma 4.2, Proposition 4.3, Remark 4.14, Theorem 8.3.
- N. Dummigan, V. Golyshev, R. de Jeu, M. Kerr, *The 2-part of the Bloch–Kato conjecture, and
  indivisibility results, for K₂ of some elliptic curves*,
  [arXiv:2605.11100v1](https://arxiv.org/abs/2605.11100): Proposition 2.2, Proposition 10.2, Remark 10.3,
  Table 10.4. In the proof of Proposition 2.2(1) the discriminant of `y² = x(x + 1)(x + u²)` is
  `16u⁴(u² − 1)²`, not `16u⁴(u² − 1)⁴`.
- A. J. Scholl, *Integral elements in K-theory and products of modular curves*, in *The arithmetic and
  geometry of algebraic cycles* (Banff 1998), NATO Sci. Ser. C 548 (2000), 467–489; author's preprint
  [k1.pdf](https://www.dpmms.cam.ac.uk/~ajs1005/preprints/k1.pdf): introduction (0.1), 1.1.1–1.1.7, 1.3.3,
  1.3.6.
- B. Conrad, *Minimal models for elliptic curves*, notes, 2015,
  [minimalmodel.pdf](https://math.stanford.edu/~conrad/papers/minimalmodel.pdf): Definitions 3.1, 3.8,
  Example 3.9, Theorem 3.10, Remark 3.11, Corollary 4.7, Example 5.3.
- The Stacks project, Chapter 53 (Algebraic Curves): tags 0BY1, 0BY3, 0BYC, 0BYD, 0BS6; Chapter 54
  ([Resolution of Surfaces](https://stacks.math.columbia.edu/download/resolve.pdf)): tags 0ADX, 0BGP, 0C2N,
  0C5J, 0C5S; Chapter 55 ([Semistable Reduction](https://stacks.math.columbia.edu/download/models.pdf)): tags
  0C2U, 0C2V, 0CD9, 0C2W, 0C5Z, 0C6B, 0C9Z, Example 55.10.3.
- B. Poonen, *Rational points on varieties*, Graduate Studies in Mathematics 186, AMS, 2017; author's draft
  [Qpoints.pdf](https://math.mit.edu/~poonen/papers/Qpoints.pdf): §5.7.6 and (5.7.29), Corollary 6.7.8,
  Exercises 2.12 and 6.10.
- H. Bass, J. Milnor, J.-P. Serre, *Solution of the congruence subgroup problem for SL_n (n ≥ 3) and Sp_{2n}
  (n ≥ 2)*, Publ. Math. IHÉS 33 (1967), 59–137 (Numdam).
- T. Geisser, M. Levine, *The K-theory of fields in characteristic p*, Invent. Math. 139 (2000), 459–493, as
  stated in Weibel, *K-book*, Theorem VI.4.7.
- G. Harder, *Die Kohomologie S-arithmetischer Gruppen über Funktionenkörpern*, Invent. Math. 42 (1977),
  135–175, as stated in Weibel, *K-book*, Theorem VI.6.1.
- D. Grayson, *Finite generation of K-groups of a curve over a finite field (after Daniel Quillen)*,
  in *Algebraic K-theory, Part I* (Oberwolfach, 1980), Lecture Notes in Math. 966, Springer, 1982,
  pp. 69–90, as stated in Weibel, *K-book*, Theorem IV.6.9 and the paragraph before it, p. 325.
