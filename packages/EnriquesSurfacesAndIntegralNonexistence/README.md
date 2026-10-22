# Roadmap: Enriques surfaces and nonexistence over the integers

**Summary.** Build the arithmetic geometry of Enriques surfaces from their geometric definition and numerical intersection lattice through genus-one fibrations, canonical coverings and Picard descent. The main targets exclude nonexceptional Enriques surfaces over F₂ with constant full Picard scheme, and then flat proper families over Spec ℤ with geometric Enriques fibres. The route includes characteristic-two deformation theory and two separate classification obligations: an exhaustive fourteen-case rational-Jacobian classification and the exclusion of three additional Enriques configurations. These obligations are part of the specification of the proof, including every use of the eight-case residual table.

## Scope and ownership

This roadmap owns the arbitrary-field Enriques predicate, its geometric invariants, half-fibres and Enriques-specific two-sections, the characteristic-two type distinctions, conductrix and exceptionality, families and canonical coverings, and the Enriques applications of numerical descent. It owns the four-global-twist comparison, the Enriques-to-Jacobian comparison, the configuration exclusions, and the lifting and nonexistence theorems. Its statements concern actual schemes, algebraic spaces, line bundles and cohomology groups.

The following material has other owners and is used through their interfaces.

- **IntegralLattices**, including its completed Layers 1–5, owns integral lattices, duality, finite discriminant forms, root lattices and even overlattices. Its Layer 6, milestone 6A, owns indefinite unimodular classification. Only the geometric identification of Num(Y), the two particular Gram matrices, and their geometric applications belong here.
- **AlgebraicVectorBundles** owns invertible sheaves, tensor operations and relative Spec. The current Tau Ceti library already has `LineBundleClass`, `Scheme.CartierDivisor.toLineBundleClassHom`, the regular-curve `LineBundleClass.eulerDegreeHom` and `LineBundleClass.picZero`, and `rigidifiedPicardFunctor` for a scheme morphism with a section. These are the underlying objects for the relevant adapters; no second abstract Picard group, degree-zero group or rigidified functor is introduced. Surface Picard representability and the unpointed fppf sheaf are additional interfaces.
- **JacobianChallenge**, Layer D, owns the fppf Picard sheaf and Jacobian construction for smooth proper geometrically connected pointed curves. Its Layer E concerns abelian varieties. The generic curve of an Enriques fibration need not have a rational point; a quasielliptic generic curve is regular and nonsmooth. Their Picard and compactification adapters belong to **GenusOneFibrationsAndRationalEllipticSurfaces**, together with Kodaira fibres, regular minimal models and rational-elliptic classification.
- **LocalFieldsRamification**, Layers 1–2, owns local-field unit filtrations, power classes and unramified extensions. Here its Q₂ specialization is connected to the four units of ℤ[1/2] modulo squares and to canonical-cover twisting. Current Tau Ceti, newer than the Lean pin, already has the square-class group `TauCeti.SquareClassGroup`, the count `TauCeti.card_unitSquareClasses_padic_two` of the four unit square classes of ℚ₂, `Padic.not_isSquare_five`, and the unramified quadratic extension `TauCeti.UnramifiedQuadratic` of ℚ₂, defined by X²+X+1. The dyadic statements of Layer 3 are proved from these. The class-five model z²−z−1 used in Layer 3 defines the same extension: the discriminants 5 and −3 differ by −15, which is a square in ℚ₂ because −15≡1 mod 16.
- **SchemeAndStackFoundations**, **AlgebraicModuliForArithmeticGeometry**, **FiniteFlatGroupsAndIntegralPadicHodgeTheory** and **WeilConjectures** supply the general geometry, cohomology, finite-flat groups and trace formula specified below. The finite-flat contract rests on objects current Tau Ceti already has, newer than the Lean pin: Cartier duality of finite locally free commutative affine group schemes over a ring (`TauCeti.FiniteLocallyFreeCommAffineGroupSchemeCat.cartierDuality`), the roots-of-unity group schemes μ_n and the Frobenius kernel α_p of the additive group. No second construction of these is planned here. **NumericalPicardAndContractionDescent** owns general numerical local systems and contraction descent. **K3SurfacesAndSymplecticBoundedness** owns the shared geometric K3 predicate; **EverywhereGoodReductionAndLowDegreeHodgeNumbers** owns Fontaine's obstruction. These four are not yet roadmaps; their contracts are stated under Exact supplier contracts. **WeilConjectures**, Layer WC.7, owns the point count of surfaces with constant numerical Picard group; this roadmap supplies the Enriques invariants it needs and states the Enriques case (3.1).

The Enriques geometric invariants, primitive-nef linear-system theorem, nodal reflection reduction and integral-two-section theorem include the classical foundational arguments cited by Schröer and Martin–Mezzedimi–Veniani. These are mathematical proof targets here. Statements of older results in those papers identify the required input; they do not replace a proof of it. The coset-preserving reducibility result in Layer 1 is specified at the narrower strength used in Layer 6, rather than attributed as a verified universal form of Lang's theorem.

## Conventions

A geometric surface means a surface over an algebraically closed field. Otherwise the ground field is arbitrary, without an implicit perfectness or characteristic restriction. `IsEnriques(Y/k)` is imposed after algebraic closure on a smooth proper k-scheme of pure dimension two. Projectivity is a theorem. An Enriques family is a flat proper finitely presented algebraic space over its base, with geometric Enriques fibres; the source is not assumed to be a scheme. Smoothness follows from flatness, finite presentation and smooth geometric fibres.

Use Pic for the fppf relative Picard sheaf and its representing group object, Pic^τ for numerically trivial classes and Num = Pic/Pic^τ. Over a geometric field, `Num(Y)` is the free rank-ten group with its divisor intersection form. Distinguish constant Num, a split Picard extension and constant **full** Picard scheme `(ℤ¹⁰ ⊕ ℤ/2)_S`. A connected group scheme μ₂ or α₂ has length two in characteristic two even though it has one geometric point. All finite-flat torsors and their canonical-cover obstruction use fppf cohomology. Write `H²_et(S,G_m)` for the whole cohomological group in the affine descent hypothesis; no identification with an Azumaya subgroup is assumed for a general base.

A genus-one fibration has geometrically connected fibres and is relatively minimal; its generic fibre is geometrically integral of arithmetic genus one. It is elliptic when that generic curve is smooth and quasielliptic when it is regular but geometrically cuspidal. A full scheme fibre is `φ*([a])`. A half-fibre F includes its component multiplicities and satisfies `2F = φ*([a])`; it is not the reduced support. A two-section R is integral horizontal of degree two: `R·(2F)=2`, hence `R·F=1`. It can have square zero. For partner half-fibres `F·F′=1`, the two full fibre classes have intersection four. The lower bound four for distinct pencils always refers to full fibre classes.

Use the intersection sign convention `C² = −2` for a geometric rational nodal curve. The hyperbolic block is `U = [[0,1],[1,0]]`, and the rank-eight summand in `Num(Y) ≅ U ⊕ E₈(−1)` is negative definite. The native discriminant quadratic map is `x ↦ (x,x)/2` in ℚ/ℤ: full norm −2 gives zero; full norm −1 gives 1/2. Nondegeneracy is needed for finiteness of the discriminant group, not for the Gram-lattice constructor.

In fibre tables, E_n is a smooth elliptic curve over F₂ with n rational points, and Ĩ_n is a nonsplit semistable fibre. A type label records the geometric Kodaira symbol separately from the scheme multiplicity and from splitness over the residue field. Triples are considered up to automorphism of P¹ over F₂. Geometric Frobenius acts by q on untwisted divisor cohomology and by one after the Tate twist `(1)`; point counts use ℓ ≠ char(k).

The component intersection graph records vertices and total intersection numbers. It does not distinguish individual conjugate nodes or branches of a node. Thus descent of this graph is compatible with nonsplit I₁ or I₂ fibres; it does not turn Ĩ_n into I_n.

The API names below are intended for `TauCeti.Enriques`. In `Suggested.lean` the corresponding representative names live under `TauCetiRoadmap.EnriquesSurfacesAndIntegralNonexistence`. Its matrices and rational twist functions have real bodies on existing carriers. The geometric objects and theorems are specified here, including the definitions absent from the Lean signatures.

## Exact supplier contracts

### From Mathlib

Use Mathlib at `082e2d37e8b0463410cdb532e111cd43d5a66174` for the representative Lean signatures.

- `Pi.basisFun`, `Mathlib/LinearAlgebra/StdBasis.lean`, supplies the standard basis of a finite coordinate-function module. In Layer 6 use `Pi.basisFun ℚ (Fin 10)`.
- `bijective_algebraMap_int_of_finite_of_unramified`, `Mathlib/NumberTheory/NumberField/ExistsRamified.lean`, says that the integer algebra map into a finite unramified faithful ℤ-algebra that is a domain is bijective. The passage from a general finite étale ℤ-algebra to its domain factors, and then to the triviality of π₁(Spec ℤ), uses the scheme-theoretic decomposition contract below.
- `hensels_lemma`, `Mathlib/NumberTheory/Padics/Hensel.lean`, supplies a p-adic integral root under the strict inequality `‖F(a)‖ < ‖F′(a)‖²`, with the nearby-root uniqueness and derivative norm assertion. For an odd dyadic unit u with `u ≡ 1 mod 8`, use `F(X)=X²−u`, `a=1`: `‖F(1)‖ ≤ 1/8 < 1/4 = ‖F′(1)‖²`. The strict inequality matters at p=2.

### From Tau Ceti and its existing roadmaps

At Tau Ceti `f790474821cf4256814db967cb154e7af3d0c369`, use `TauCeti.IntegralLattice` in `TauCeti/LinearAlgebra/IntegralLattice/Basic.lean`: a full finitely generated ℤ-submodule of a rational vector space together with an integral symmetric bilinear form. Its `ofGramMatrix` takes a finite rational basis, an integer matrix and a proof of symmetry; `integralForm_ofGramMatrix_apply` computes its native carrier-basis pairing. The construction also permits degenerate forms. Its use here never supplies nondegeneracy by assumption.

`IntegralLattice.hyperbolicPlane` in `Examples.lean` fixes the U block. `IntegralLattice.d8PlusLattice` in `RootLattice/D8Plus/Basic.lean` supplies the positive spinor-glue E₈ model; negate its form for the Enriques comparison. `IntegralLattice.discriminantQuadraticMap` in `Discriminant/Quadratic.lean` has the half-norm convention fixed above. `IntegralLattice.evenIntermediateCarrierOrderIsoIsotropicSubgroup` in `Overlattice/Isotropic.lean` identifies even intermediate carriers with quadratic-isotropic subgroups of the native discriminant group. The associated determinant, index and discriminant-cardinality theory is consumed through that API.

The **IntegralLattices Layer 6, milestone 6A** (indefinite classification) contract is uniqueness of an indefinite even unimodular integral lattice at fixed signature. Its specialization at `(1,9)` supplies the isometry after the geometric perfectness and signature arguments. The definite analogue at rank sixteen is false and is not used. For current geometry use the native Cartier-divisor and line-bundle objects listed under Scope; their availability in a newer library does not assert availability at the earlier Lean pin.

The **AlgebraicVectorBundles** tensor and relative-Spec interface is used to form the rank-two algebra of a canonical covering. The **JacobianChallenge Layer D** contract supplies the pointed smooth relative Picard functor, with its base-change and restriction maps. The **LocalFieldsRamification Layer 1** unit and power-class interface and **Layer 2** unramified-extension interface are used at Q₂: valuation parity and the four odd residues modulo eight classify square classes; the class five has the étale model `ℤ₂[z]/(z²−z−1)`, whose discriminant is five and whose reduction is the irreducible separable polynomial `z²+z+1`.

### General geometric and cohomological suppliers

The layer identifiers here specify the mathematical interfaces consumed by the build.

- **SchemeAndStackFoundations, SF.0:** algebraic spaces and smooth, proper, finitely presented morphisms, base change, nilpotent thickenings of schemes, Henselian lifting of smooth points, and relative ampleness criteria. Finite étale ℤ-algebras decompose into connected regular domain factors so that the Mathlib unramified-domain theorem applies to each.
- **SchemeAndStackFoundations, SF.1:** coherent cohomology, base change, duality, tangent-sheaf cohomology and Frobenius/de Rham comparisons. The Enriques invariant computations remain here.
- **SchemeAndStackFoundations, SF.2:** the fppf Leray low-degree row, Kummer, the Cartier-dual Picard/torsor correspondence jointly with R07.1, cohomological `H²(G_m)`, its field Brauer interpretation, finite-field vanishing, and divisor cycle classes with base-change and Galois compatibility.
- **SchemeAndStackFoundations, SF.4:** smooth proper deformation functors, miniversal complete local W(k)-bases, tangent space H¹(Θ), obstruction space H²(Θ), formal smoothness when H²(Θ)=0, and the one-obstruction regularity criterion and additional W-flatness condition of DI21 Proposition 3.3 and Corollary 3.4, pp. 11–12. Also supply DI21 Theorem 6.1, pp. 20–22, with its exact-order-p canonical-bundle and differential hypotheses. That theorem is used for the exceptional classical branch, not the supersingular branch.
- **SchemeAndStackFoundations, SF.5:** effective Cartier divisors, adjunction, surface intersection, Hodge index including its positive-cone equality case, surface Riemann–Roch, numerical invariance of ampleness and intersection base change.
- **AlgebraicModuliForArithmeticGeometry, A0 surface-Picard extension:** for proper flat finitely presented algebraic-space families with geometrically connected fibres and universal `f_*O=O`, represent the fppf surface Picard functor by an algebraic space with base change. Include infinitesimal W₂ families and the Picard flatness criterion `b₁=2(h¹(O)−h²(O))`. The Enriques rank-two improvement to a representing scheme is a Layer 2 target. The pointed-curve and abelian Picard constructors alone do not meet this extension contract.
- **FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1:** rank-two finite flat group schemes with Oort–Tate parameters `ab=2`, Cartier duality, and the μ₂, ℤ/2 and α₂ fibres. Supply DI21 Proposition 4.2, pp. 15–16: the finite local group obstruction to lifting an α_{p^n} direct factor to W₂; Layer 8 uses α₂.
- **WeilConjectures, WC.7**, through its preceding cohomology and cycle-class layers: geometric Frobenius trace formula, Tate twists, duality and Galois-compatible divisor classes, and the point count of a smooth proper geometrically connected surface X over F_q with b₁=0, b₂=ρ and constant numerical local system, `#X(F_{q^r})=1+b₂q^r+q^{2r}` for r≥1 (`TauCeti.AlgebraicGeometry.WeilZeta.count_surface_of_constant_num`, after SCH23 Corollary 7.2). Layer 0 proves the Enriques-specific equalities b₁=0 and `ρ=b₂=10`; 3.1 substitutes them into that count.

For the SF.4 differential obstruction, the exact contract is this: over an algebraically closed field of characteristic two, let a smooth proper surface have a coherent quotient Ω¹→F invertible in codimension one, and put L=Hom(F,O). Its associated sequence has the form `0→L⊗ω→Ω¹→I L⁻¹→0` with I the ideal of a finite subscheme. Assume ω has exact order two, there is a semiample curve H with L·H>0, and L⊗ω is twice a Picard class. DI21 Theorem 6.1 gives the differential comparison and `h⁰(L)≤h⁰(L⊗ω)`; equality gives nonlifting to W₂. The one-obstruction regularity result is separate: nonlifting gives a regular miniversal ring of dimension h¹(Θ); W-flatness additionally requires formal lifting to characteristic zero, or the equivalent condition on the reduction in DI21 Corollary 3.4. Both requirements are retained in 8.4.

### Numerical descent, genus-one geometry and good reduction

The four roadmaps in this subsection, **NumericalPicardAndContractionDescent**, **GenusOneFibrationsAndRationalEllipticSurfaces**, **K3SurfacesAndSymplecticBoundedness** and **EverywhereGoodReductionAndLowDegreeHodgeNumbers**, do not exist yet. The contracts below state exactly what this roadmap uses from each; they are the specification those roadmaps must meet, and the layers that cite them cannot be built before they exist.

**NumericalPicardAndContractionDescent** supplies the numerical local system, projective contraction descent and the descent of multiplicity-labelled dual graphs (SCH23 §§1–3, pp. 4–11). In the local projectivity application a section splits the Picard lifting obstruction. Combined with constant Num and `2 Pic^τ=0`, this lifts a doubled ample numerical class over a Noetherian local base, without assuming `H²_et(R,G_m)=0`. For arbitrary affine bases the separate full cohomological Brauer-vanishing hypothesis in Layer 2 is retained. The relative ampleness and scheme criteria are Stacks Lemma 74.13.2, Tag 0D3D; the étale-neighbourhood construction is §68.11, Tag 0EMV; and the smooth-point lifting input is Lemma 15.13.3, Tag 0H74.

**GenusOneFibrationsAndRationalEllipticSurfaces** supplies genus-one and Kodaira objects, canonical-type linear systems, minimal regular surface models, the rationality criterion, restriction of line bundles to the generic fibre and its vertical kernel, and the vertical Picard-rank formula. It extends the pointed smooth-curve constructor to unpointed smooth genus-one curves and to regular nonsmooth quasielliptic curves with their regular compactifications. It supplies the local torsor comparison of SCH23 Proposition 8.1 and Corollaries 8.2–8.3, pp. 21–23, and the rational-Jacobian constant-Picard criterion of Theorem 9.4, pp. 26–27, with a proof on the actual intersection lattice. Tsen is used over algebraically closed constants only.

Its rational-elliptic classification contract is an exhaustive theorem for relatively minimal geometrically rational Jacobian elliptic surfaces over F₂ with constant Picard scheme and at most one rational semistable or smooth supersingular fibre. The rational-fibre triples are exactly among the fourteen candidates displayed in Layer 5. Equations exhibiting the candidates prove neither completeness nor their occurrence as Enriques torsors. Exhaustiveness requires a proof in addition to SCH23 Theorems 10.4–10.5, pp. 29–32; the three extra nonsplit cases must be included.

**K3SurfacesAndSymplecticBoundedness** supplies a single arbitrary-field geometric K3 predicate on native smooth proper surfaces, with projectivity and coherent-cohomology comparisons. **EverywhereGoodReductionAndLowDegreeHodgeNumbers** supplies Fontaine's Hodge obstruction: a smooth proper Q-scheme with smooth proper local scheme models at every prime has vanishing off-diagonal Hodge numbers in total degree at most three. The precise source is Fontaine preprint 91-02, Theorem 1 and Remark (a), printed p. 3, PDF p. 4. Layer 3 constructs projective local models, which meet this hypothesis. A geometric K3 fibre has `h²(O)=1`, so gives the contradiction. The obstruction is not invoked for an algebraic-space model without the scheme comparison.

## How to read the build

Layer 0 identifies the surface and its numerical lattice. Layer 1 develops the linear systems, local coverings and exceptional configurations. Layer 2 treats families and descent. Layer 3 proves numerical constancy and point counts before comparing canonical covers; its four-twist argument yields full Picard constancy over ℤ. Layer 4 compares Enriques fibrations with rational Jacobians, Layer 5 enumerates and reduces the possibilities, and Layers 6–7 perform the two lattice and incidence eliminations. Layer 8 combines the independent lifting obstruction with the finite-field and integral endpoints. The exhaustive rational-Jacobian theorem and the three additional configuration exclusions are separate proof obligations; every argument using the residual eight-case list depends on both. The arithmetic matrix and incidence calculations assert no geometric realizability.

## Layer 0: geometric Enriques surfaces and their numerical lattice

Separate the defining conjunction from the classification consequences. In particular neither Picard rank nor perfectness of the numerical pairing is a field in the surface definition.

<a id="topic-0-1"></a>

### 0.1 Geometric Enriques surfaces

k is an arbitrary field; Y/k is smooth and proper of pure dimension two. No Enriques hypothesis is assumed in defining the predicate. The Betti prime ℓ is different from char(k); the conjunction is imposed after algebraic closure.

For a field k and a smooth proper k-scheme Y of pure dimension two, IsEnriques(Y/k) means that Y over an algebraic closure has H⁰(O)=k̄, canonical line bundle numerically trivial and ℓ-adic second Betti number 10, for one (equivalently every) prime ℓ different from char(k). This is a geometric predicate on the existing surface, with no perfection or characteristic restriction.

Use smoothness and properness on the native scheme map; request cohomology, numerical triviality and ℓ-independence from the indicated suppliers. Prove closure-independent formulation before exporting it. ([SCH23](#ref-sch23), §4, p. 12)

The interface consists of the following declarations.

- `IsEnriques`: The geometric conjunction on a smooth proper surface, using native base change and Betti groups.

- `IsEnriques.baseChange`: For any field extension K/k, the property of Y is equivalent to that of Y_K.

- `IsEnriques.iso`: A k-isomorphism transports IsEnriques in both directions.

- `IsEnriques.projective`: A proper geometric Enriques surface is projective; prove this rather than assuming a polarization in the definition.

- `isEnriques_iff`: The predicate is equivalent to the geometric connectedness, numerical-canonical-triviality and b₂=10 conjunction, with ℓ≠char(k).

**Checks.**

- `test_enriques_extension`: Extending a classical Enriques surface from an arbitrary k to k̄ preserves the property.

- `test_k3_not_enriques`: A K3 surface with b₂=22 fails this condition despite numerically trivial canonical class.

- `test_abelian_not_enriques`: An abelian surface has b₂=6 and fails this condition.

*Needs:* SchemeAndStackFoundations, SF.0; SchemeAndStackFoundations, SF.1; SchemeAndStackFoundations, SF.2; WeilConjectures, WC.7.

<a id="topic-0-2"></a>

### 0.2 Numerically trivial Picard group of an Enriques surface

k is algebraically closed; Y/k is a geometric Enriques surface.

For geometric Enriques Y, Pic^τ(Y) has scheme length two. Its geometric rational-point group is generated by the class of ω_Y; scheme length is not replaced by the number of rational points.

Apply the Enriques classification input; compare the finite subgroup with the numerical Picard quotient. The connected cases have one geometric point and still length two. ([SCH23](#ref-sch23), §4, p. 12)

**Checks.**

- μ₂ and α₂ in characteristic two each have length two and one geometric point.

*Needs:* [0.1](#topic-0-1); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1.

<a id="topic-0-3"></a>

### 0.3 Enriques numerical and cohomological invariants

k is algebraically closed; Y/k is a geometric Enriques surface.

For geometric Enriques Y, Num(Y) is free of rank ten, b₁=b₃=0 and b₂=ρ=10. The dimensions h¹(O_Y) and h²(O_Y) agree and are at most one.

Use Picard finiteness, coherent duality and the geometric Enriques classification; request the cycle-class rank comparison and ℓ-independent Betti package. These are geometric invariants, not data assumed in a surface record. ([SCH23](#ref-sch23), §4, p. 12)

*Needs:* [0.1](#topic-0-1); [0.2](#topic-0-2); SchemeAndStackFoundations, SF.1; SchemeAndStackFoundations, SF.2; WeilConjectures, WC.7.

<a id="topic-0-4"></a>

### 0.4 The Enriques numerical lattice

k is algebraically closed; Y/k is a geometric Enriques surface.

The intersection pairing on geometric Num(Y) is even, unimodular and has signature (1,9). As an integral lattice it is isometric to U⊕E₈(−1), where U has off-diagonal entries one and diagonal entries zero.

Descend divisor intersection through Pic^τ and prove freeness, evenness, integral perfectness and Hodge-index signature on Num(Y). The identification with U ⊕ E₈(−1) then follows from the classification contract under Exact supplier contracts. In particular perfectness is a geometric theorem, not a consequence of the rank alone. ([SCH23](#ref-sch23), §4, p. 12)

*Needs:* [0.3](#topic-0-3); SchemeAndStackFoundations, SF.5; IntegralLattices, Layer 6, milestone 6A (indefinite classification); `TauCeti.IntegralLattice`; `TauCeti.IntegralLattice.hyperbolicPlane`; `TauCeti.IntegralLattice.d8PlusLattice`.

### Examples

Over an algebraically closed field of characteristic two, the schemes μ₂ and α₂ each have coordinate algebra of dimension two and only one geometric point. Thus the Picard-length conclusion is compatible with a connected Picard scheme. Replacing length by the number of geometric points would incorrectly exclude ordinary and supersingular Enriques surfaces.

For the intersection convention, let e,f be the U basis. Then e²=f²=0, e·f=1 and (e+f)²=2. A rational nodal curve instead has square −2. These computations fix both the sign of the root-lattice summand and the distinction between a primitive isotropic half-fibre and a positive-square divisor. The signature comparison uses an indefinite rank-ten lattice, so the definite rank-sixteen counterexamples to uniqueness of even unimodular lattices are irrelevant.

### Dependencies

Surface intersection, duality and Riemann–Roch from SF.1 and SF.5; Enriques geometric invariant arguments; the rank-two group interface R07.1; and the indefinite lattice classification contract under Exact supplier contracts.

## Layer 1: half-fibres, canonical coverings and exceptionality

Construct the objects on the surface and prove the linear-system and exceptional-fibration results before using partner fibrations. Keep square-zero two-sections alongside rational two-sections.

<a id="topic-1-1"></a>

### 1.1 Half-fibre

k is any field; Y/k is geometrically Enriques and φ:Y→P¹_k is a genus-one fibration. A stated half-fibre lies over a k-rational point.

For a genus-one fibration φ:Y→P¹_k on an Enriques surface, a half-fibre is an effective Cartier divisor F on Y together with a k-rational base point a and equality 2F=φ*([a]) as divisors. F retains its component multiplicities; it is not defined as the reduced support.

Use the supplier fibre divisor and effective Cartier operations. Over k̄ obtain half-fibres from the multiplicity-two theorem; construct base change on the equality. ([SCH23](#ref-sch23), §4, p. 12)

The interface consists of the following declarations.

- `HalfFibre`: Data (F,a) with F effective Cartier, a rational, and 2F the scheme fibre.

- `HalfFibre.baseChange`: Extend F and a along any field extension, preserving twice-the-divisor equality.

- `HalfFibre.square`: Its intersection square is zero.

- `HalfFibre.intersection_fibre`: D·φ*([a])=2(D·F) for every Cartier divisor D.

- `HalfFibre.ext`: Two half-fibre data for the same fibration are equal when their effective Cartier divisors and rational base points agree; equality witnesses do not affect the data.

- `HalfFibre.twice_eq_fibre`: Twice the half-fibre divisor is exactly the pulled-back rational-point divisor.

**Checks.**

- `test_double_fibre`: A scheme fibre 2F gives a half-fibre with the original multiplicities in F.

- `test_half_not_reduction`: For additive fibres with component multiplicity greater than one, the reduced support cannot replace F.

- `test_half_extension`: For a field extension the base-changed equality remains 2F_K=φ_K*([a_K]).

*Needs:* [0.1](#topic-0-1); SchemeAndStackFoundations, SF.5.

<a id="topic-1-2"></a>

### 1.2 (−2)-curve and two-section on an Enriques surface

k is any field; Y/k is geometrically Enriques and φ:Y→P¹_k is a genus-one fibration. A stated half-fibre lies over a k-rational point.

A geometric (−2)-curve is an integral curve of square −2 on an Enriques surface; adjunction makes it smooth rational. Over k the term means a curve whose geometric base change is such a curve. A two-section is an integral horizontal curve R with degree two over the fibration base, equivalently R·(full fibre)=2 or R·F=1. It can have square zero, so it need not be rational.

Use adjunction for K numerically zero to prove the rationality assertion. Relate degree to the full Cartier fibre and then to its half-fibre. Keep geometric integrality in the k-form. ([SCH23](#ref-sch23), Proposition 4.1, p. 12; Proposition 4.4(ii), p. 13; Theorem 5.6(iii), p. 17)

The interface consists of the following declarations.

- `IsMinusTwoCurve`: Geometric integrality and geometric self-intersection −2 on an Enriques surface.

- `IsTwoSection`: Integral curve with degree two over P¹; equivalent to intersection two with a full fibre.

- `twoSection_half_degree`: A two-section meets a half-fibre with degree one.

- `minusTwoCurve_baseChange`: The geometric curve condition is preserved and reflected by field extension.

- `isTwoSection_iff_intersection`: For an integral horizontal curve, degree two is equivalent to full-fibre intersection two, and to half-fibre intersection one when a half-fibre is given.

**Checks.**

- `test_square_minus_two`: An integral geometric square −2 curve is a smooth P¹ by adjunction.

- `test_square_zero_two_section`: An integral half-fibre of a partner fibration is a two-section with square zero; the rational-curve predicate rejects it.

- `test_half_degree`: Degree two against 2F means degree one against F, not degree two against F.

- `test_minus_two_geometric_integrality`: A k-curve whose base change to k̄ is the union of two conjugate (−2)-curves meeting transversally in one point is integral over k and has square −2−2+2=−2, but it is not geometrically integral, so it is not a (−2)-curve over k; a definition that checks integrality only over k would accept it.

- `test_four_section`: An integral horizontal curve R with R·F=2 has R·(2F)=4, so it is a four-section and fails `IsTwoSection`; a definition that tests R·F≥1 instead of R·(2F)=2 would accept it.

*Needs:* [0.1](#topic-0-1); [1.1](#topic-1-1); SchemeAndStackFoundations, SF.5.

<a id="topic-1-3"></a>

### 1.3 Curves of canonical type on an Enriques surface induce genus-one fibrations

k is algebraically closed; Y/k is a geometric Enriques surface.

An indecomposable effective curve of canonical type on a geometric Enriques surface determines a unique genus-one fibration, up to base isomorphism, in which it is either a full fibre or a half-fibre.

Import the generic canonical-type condition and negative-semidefinite intersection kernel. Prove the Enriques linear-system theorem, including possible doubling and uniqueness, from the Enriques surface prerequisites. This is the geometry behind every later graph-generated fibration. ([SCH23](#ref-sch23), §4, p. 12, sentence before Proposition 4.1 (Bombieri–Mumford 1977; Cossec–Dolgachev 1989, Chapter III); §4, p. 12; used in the proofs of Propositions 11.2–14.1, pp. 34–49; [MMV22](#ref-mmv22), §2.1, Lemmas 2.1–2.4, pp. 3–4)

*Needs:* [0.1](#topic-0-1); [1.1](#topic-1-1); SchemeAndStackFoundations, SF.5.

<a id="topic-1-4"></a>

### 1.4 Nef primitive isotropic half-fibres

k is algebraically closed; Y/k is a geometric Enriques surface. D is nonzero and effective.

A nonzero effective divisor D on a geometric Enriques surface is a half-fibre of a genus-one fibration if and only if D is nef, its class in Num(Y) is primitive, and D²=0.

Use the Enriques linear-system theorem for a nef primitive isotropic divisor to construct the pencil |2D|. Conversely a half-fibre has square zero, is nef and primitive. MMV22 quotes this criterion from the Enriques-surface literature without proof; a complete proof is part of this target. ([MMV22](#ref-mmv22), §2.1, Lemma 2.1, p. 3)

*Needs:* [1.1](#topic-1-1); [1.3](#topic-1-3); SchemeAndStackFoundations, SF.5.

<a id="topic-1-5"></a>

### 1.5 Nef reduction by nodal reflections

k is algebraically closed; Y/k is a geometric Enriques surface. D is an effective divisor with nonnegative square.

If D is effective with D²≥0 on a geometric Enriques surface, there are a nef divisor D′ and nonnegative integers a_i with D linearly equivalent to D′+Σa_iR_i for (−2)-curves R_i. The nef representative in the nodal Weyl orbit is unique and D′²=D².

Reflect in a nodal class with negative intersection, extracting a nonnegative effective nodal multiple. Use termination of the reflection process and uniqueness of the nef representative in the nodal Weyl orbit, not only the abstract signature. MMV22 quotes the result without proof; a complete proof is part of this target. ([MMV22](#ref-mmv22), §2.1, Lemma 2.3, p. 4)

*Needs:* [0.4](#topic-0-4); [1.2](#topic-1-2); SchemeAndStackFoundations, SF.5.

<a id="topic-1-6"></a>

### 1.6 Existence of genus-one fibrations

k is algebraically closed; Y/k is a geometric Enriques surface.

Every Enriques surface over an algebraically closed field has a genus-one fibration to P¹.

Use the numerical U⊕E₈(−1) lattice to find an effective nef primitive isotropic class by Riemann–Roch and reflections; apply the half-fibre linear-system theorem. The reflection/effectivity theorem is a separate geometric proof obligation, not a consequence of abstract lattice isometry alone. ([SCH23](#ref-sch23), Proposition 4.1, p. 12; [MMV22](#ref-mmv22), §2.1, Lemmas 2.1–2.4, pp. 3–4)

*Needs:* [0.4](#topic-0-4); [1.3](#topic-1-3); [1.4](#topic-1-4); [1.5](#topic-1-5); SchemeAndStackFoundations, SF.5.

<a id="topic-1-7"></a>

### 1.7 Double fibres

k is algebraically closed; Y/k is a geometric Enriques surface.

Each geometric Enriques genus-one fibration has a multiple fibre; every such scheme fibre has multiplicity exactly two.

Apply the Enriques genus-one canonical-bundle and linear-system theory. Multiplicity refers to the gcd of the scheme fibre coefficients; the underlying indecomposable divisor may be nonreduced. ([SCH23](#ref-sch23), Proposition 4.1, p. 12)

*Needs:* [1.6](#topic-1-6); [1.1](#topic-1-1).

<a id="topic-1-8"></a>

### 1.8 Integral two-sections

k is algebraically closed; Y/k is a geometric Enriques surface.

A geometric Enriques genus-one fibration admits an integral two-section of square −2 or zero; it can be chosen as a (−2)-curve or as a half-fibre of another fibration.

Use the general existence assertion of SCH23 Proposition 4.1: the integral degree-two curve can be chosen rational or as a partner half-fibre. Prove the required classical Enriques linear-system and reducibility result. It does not follow from the narrower, generic-Pic⁰-order-two contract, which is used only for Layer 6 coset preservation. ([SCH23](#ref-sch23), Proposition 4.1, p. 12; [MMV22](#ref-mmv22), §2.1, Lemmas 2.1–2.4, pp. 3–4)

*Needs:* [0.4](#topic-0-4); [1.2](#topic-1-2); [1.3](#topic-1-3); [1.4](#topic-1-4); [1.5](#topic-1-5).

<a id="topic-1-9"></a>

### 1.9 Classical Enriques criteria

k is algebraically closed; Y/k is a geometric Enriques surface.

For geometric Enriques Y, the following conditions are equivalent: ω_Y has exact order two; H¹(O_Y)=0; some genus-one fibration has no wild fibre; some genus-one fibration has two distinct multiple fibres.

Use Pic^τ length two and the Enriques canonical bundle formula. Prove both existential implications rather than replacing them with universal claims; the universal consequence is the next target. ([SCH23](#ref-sch23), Proposition 4.2, p. 12)

*Needs:* [0.2](#topic-0-2); [1.7](#topic-1-7).

<a id="topic-1-10"></a>

### 1.10 Tame double fibres and canonical bundle

k is algebraically closed; Y/k is a geometric Enriques surface. The canonical-bundle formula assumes ω_Y has exact order two.

When the classical criteria hold, every genus-one fibration has precisely two tame double fibres 2F₁ and 2F₂, and ω_Y≅O(F₁−F₂). Every geometric Enriques surface in characteristic other than two satisfies these criteria.

Apply the genus-one canonical bundle formula to the two tame multiplicities and compare Pic^τ points with ω_Y. Separate the characteristic-not-two assertion from the characteristic-two ordinary case. ([SCH23](#ref-sch23), Proposition 4.2, p. 12)

*Needs:* [1.9](#topic-1-9); [1.1](#topic-1-1).

<a id="topic-1-11"></a>

### 1.11 Characteristic-two tame half-fibre types

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two. φ is a genus-one fibration with two distinct double fibres.

In characteristic two, if an Enriques genus-one fibration has two distinct double fibres, each half-fibre is ordinary smooth elliptic or singular additive. A supersingular smooth elliptic or semistable half-fibre is excluded.

Use the normal bundle of a tame half-fibre: it is a nontrivial line bundle of order two in its Pic⁰. Compare the ordinary, supersingular and multiplicative Pic⁰ group schemes. ([SCH23](#ref-sch23), Lemma 4.3, pp. 12–13)

*Needs:* [1.10](#topic-1-10); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1.

<a id="topic-1-12"></a>

### 1.12 Ordinary Enriques surfaces

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two.

For a geometric Enriques surface in characteristic two, the ordinary type is defined by Pic^τ≅μ₂. Its canonical-cover group is (Z/2), its étale fundamental group is Z/2, and its canonical bundle is trivial. The type condition and these consequences are kept separate.

Classify finite group schemes of length two over the algebraically closed field. Identify the Cartier dual and then prove the fundamental-group and canonical-bundle consequences from the canonical cover theorem. ([SCH23](#ref-sch23), §4, p. 13)

The interface consists of the following declarations.

- `OrdinaryType`: The Pic^τ-isomorphism condition μ₂ in characteristic two.

- `ordinary_dual`: The Cartier dual of its Pic^τ is (Z/2).

- `ordinary_baseChange`: The geometric type is invariant under field extension.

**Checks.**

- `test_ordinary_pic`: For geometric Pic^τ=μ₂, the predicate holds.

- `test_ordinary_other`: The other two length-two group schemes fail the ordinary predicate.

- `test_ordinary_dual`: Dualizing μ₂ gives (Z/2); swapping Pic^τ with its dual fails this test except for α₂.

*Needs:* [0.2](#topic-0-2); [1.9](#topic-1-9); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1.

<a id="topic-1-13"></a>

### 1.13 Classical Enriques surfaces

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two.

For a geometric Enriques surface in characteristic two, the classical type is defined by Pic^τ≅(Z/2). Its canonical-cover group is μ₂, its étale fundamental group is trivial, and its canonical bundle is of exact order two. The type condition and these consequences are kept separate.

Classify finite group schemes of length two over the algebraically closed field. Identify the Cartier dual and then prove the fundamental-group and canonical-bundle consequences from the canonical cover theorem. ([SCH23](#ref-sch23), §4, p. 13)

The interface consists of the following declarations.

- `ClassicalType`: The Pic^τ-isomorphism condition (Z/2) in characteristic two.

- `classical_dual`: The Cartier dual of its Pic^τ is μ₂.

- `classical_baseChange`: The geometric type is invariant under field extension.

**Checks.**

- `test_classical_pic`: For geometric Pic^τ=(Z/2), the predicate holds.

- `test_classical_other`: The other two length-two group schemes fail the classical predicate.

- `test_classical_dual`: Dualizing (Z/2) gives μ₂; swapping Pic^τ with its dual fails this test except for α₂.

*Needs:* [0.2](#topic-0-2); [1.9](#topic-1-9); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1.

<a id="topic-1-14"></a>

### 1.14 Supersingular Enriques surfaces

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two.

For a geometric Enriques surface in characteristic two, the supersingular type is defined by Pic^τ≅α₂. Its canonical-cover group is α₂, its étale fundamental group is trivial, and its canonical bundle is trivial. The type condition and these consequences are kept separate.

Classify finite group schemes of length two over the algebraically closed field. Identify the Cartier dual and then prove the fundamental-group and canonical-bundle consequences from the canonical cover theorem. ([SCH23](#ref-sch23), §4, p. 13)

The interface consists of the following declarations.

- `SupersingularType`: The Pic^τ-isomorphism condition α₂ in characteristic two.

- `supersingular_dual`: The Cartier dual of its Pic^τ is α₂.

- `supersingular_baseChange`: The geometric type is invariant under field extension.

**Checks.**

- `test_supersingular_pic`: For geometric Pic^τ=α₂, the predicate holds.

- `test_supersingular_other`: The other two length-two group schemes fail the supersingular predicate.

- `test_supersingular_dual`: The Cartier dual of α₂ is α₂, whereas neither the dual of μ₂ nor the dual of ℤ/2 is α₂. This check complements the distinct ordinary and classical duality checks.

*Needs:* [0.2](#topic-0-2); [1.9](#topic-1-9); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1.

<a id="topic-1-15"></a>

### 1.15 K3-like canonical covering

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two. Y is classical or supersingular, so its canonical-cover group is local. The normalization is taken on the integral canonical torsor.

For classical or supersingular geometric Enriques Y in characteristic two, its K3-like cover is the nontrivial torsor X→Y under (Pic^τ)^D corresponding to Pic^τ↪Pic. The map is finite flat of degree two and a universal homeomorphism. This term does not assert that X is a smooth K3 surface.

Use the Picard–torsor correspondence for finite flat Cartier duals. Nontriviality follows from the nonzero inclusion; the local group makes the map radicial. Verify integrality and Cohen–Macaulay/Gorenstein properties before normalization. ([SCH23](#ref-sch23), §4, p. 13)

The interface consists of the following declarations.

- `K3LikeCover`: The canonical local torsor attached to Pic^τ↪Pic.

- `K3LikeCover.baseChange`: The torsor and its canonical Picard section commute with field extension.

- `K3LikeCover.degree`: It is finite flat of rank two.

- `K3LikeCover.radicial`: Its finite flat morphism is a universal homeomorphism.

**Checks.**

- `test_classical_cover_group`: Classical Pic^τ=Z/2 gives a μ₂-cover, not an étale Z/2-cover.

- `test_supersingular_cover_group`: Supersingular Pic^τ=α₂ gives an α₂-cover.

- `test_ordinary_not_local`: The ordinary canonical cover is étale and is excluded from the K3-like local construction.

*Needs:* [1.13](#topic-1-13); [1.14](#topic-1-14); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1; SchemeAndStackFoundations, SF.2.

<a id="topic-1-16"></a>

### 1.16 Cohomology of the K3-like cover

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two. Y is classical or supersingular, so its canonical-cover group is local. The normalization is taken on the integral canonical torsor.

The local K3-like cover X has h⁰(O_X)=h²(O_X)=1 and h¹(O_X)=0, trivial dualizing sheaf, and a nonempty singular locus.

Compute the pushforward rank-two algebra and its Euler characteristic; use Gorenstein duality to obtain the cohomology. Prove singularity for the classical/supersingular types, while keeping the ordinary étale case outside the statement. ([SCH23](#ref-sch23), §4, p. 13)

*Needs:* [1.15](#topic-1-15); SchemeAndStackFoundations, SF.1.

<a id="topic-1-17"></a>

### 1.17 Conductrix and exceptionality

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two. Y is classical or supersingular, so its canonical-cover group is local. The normalization is taken on the integral canonical torsor.

Normalize the integral K3-like cover X to X′. The map X′→Y is finite flat purely inseparable of degree two, and the conductor ideal of X′→X is O_X′(−R′) with R′ the pullback of an effective Cartier divisor C on Y. C is the conductrix and 2C the biconductrix. A simply connected characteristic-two Enriques surface is exceptional exactly when H¹(O_{2C}) is nonzero; ordinary surfaces are nonexceptional by this convention.

Apply ESB Lemma 2.3 to the two finite flat degree-two algebras, then verify that normalization meets its hypotheses. Uniqueness of the descended conductor divisor gives C. Define exceptionality by the cohomology of the actual doubled Cartier subscheme. ([SCH23](#ref-sch23), §4, p. 13; [ESB21](#ref-esb21), §2, conductor construction and Lemma 2.3, pp. 4–5)

The interface consists of the following declarations.

- `Conductrix`: The unique effective Cartier divisor whose pullback is the normalization conductor divisor.

- `conductrix_normalization`: The conductor ideal is the pullback of O_Y(−C).

- `Biconductrix`: The effective divisor 2C with its Cartier scheme structure.

- `IsExceptional`: Simply connected characteristic-two Enriques and H¹(O_{2C})≠0; false for ordinary type.

- `conductrix_unique`: Equality of the pulled-back normalization conductor ideals implies equality of the effective conductrix divisors by faithful flatness.

- `biconductrix_eq_twice`: The Cartier biconductrix divisor is twice the conductrix, including its scheme multiplicities.

**Checks.**

- `test_biconductrix_empty`: C=0 gives the empty biconductrix and H¹=0, hence nonexceptional.

- `test_biconductrix_not_reduction`: Replacing O_{2C} by O_{C_red} changes the invariant and is not accepted.

- `test_ordinary_nonexceptional`: An ordinary Enriques surface is never exceptional under this convention.

*Needs:* [1.15](#topic-1-15); [1.16](#topic-1-16); SchemeAndStackFoundations, SF.0; SchemeAndStackFoundations, SF.1.

<a id="topic-1-18"></a>

### 1.18 Special double-fibre characterization of exceptionality

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two.

In characteristic two a geometric Enriques surface is exceptional if and only if it has a genus-one fibration with a rational (−2)-curve two-section and a double fibre whose indecomposable divisor has type IV*, III* or II*.

Use ESB Theorem 4.2, including both directions: classify the conductrix possibilities to construct a special fibration; conversely use the conductrix foliation and intersections in the special double fibre. The conductrix classification on which that proof rests is part of this target. ([ESB21](#ref-esb21), §4, Theorem 4.2 and proof, pp. 13–14)

*Needs:* [1.17](#topic-1-17); [1.2](#topic-1-2); [1.3](#topic-1-3).

<a id="topic-1-19"></a>

### 1.19 Nonexceptional quasielliptic restriction

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two. Y is nonexceptional; the quasielliptic assertion assumes φ quasielliptic, and the multiple-special assertion assumes a rational (−2)-curve two-section.

On a nonexceptional geometric Enriques surface in characteristic two, a quasielliptic fibration cannot have a simple III* or II* fibre.

Take the contrapositive of ESB Proposition 3.16, whose proof on pp. 12–13 uses the quasielliptic conductrix and fibre classification. Match affine E₇/E₈ with III*/II* and retain simplicity; the quasielliptic conductrix and fibre classification used there are part of this target. ([SCH23](#ref-sch23), Proposition 4.4(i), p. 13; [ESB21](#ref-esb21), §1, Theorems 1.1–1.3, pp. 1–3; [ESB21](#ref-esb21), §3, Proposition 3.16 and proof, pp. 12–13)

**Checks.**

- Multiple III*/II* fibres are not excluded by this statement.

*Needs:* [1.17](#topic-1-17).

<a id="topic-1-20"></a>

### 1.20 Nonexceptional multiple exceptional-type restriction

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two. Y is nonexceptional; the quasielliptic assertion assumes φ quasielliptic, and the multiple-special assertion assumes a rational (−2)-curve two-section.

On a nonexceptional geometric Enriques surface in characteristic two, a multiple IV*, III* or II* fibre cannot occur in a fibration that has a (−2)-curve as a two-section.

Apply the contrapositive of ESB Theorem 1.1(3), matching its special bisection definition with the integral two-section degree. A square-zero two-section does not make a fibration special. ([SCH23](#ref-sch23), Proposition 4.4(ii), p. 13; [ESB21](#ref-esb21), §1, Theorems 1.1–1.3, pp. 1–3)

*Needs:* [1.17](#topic-1-17); [1.2](#topic-1-2); [1.18](#topic-1-18).

<a id="topic-1-21"></a>

### 1.21 The extra-special affine E₈ type

k is algebraically closed; Y/k is a geometric Enriques surface.

An extra-special geometric Enriques surface of affine E₈ type has the dual intersection graph of ALL its (−2)-curves isomorphic to the ten-vertex tree T₂,₃,₇: one trivalent vertex and arms of edge lengths 1,2,6, every edge intersection one. A contained subgraph alone does not define the predicate. This is the unique extra-special type needed for the half-fibre partner exception.

Use the actual collection of geometric (−2)-curves and intersection numbers from Layer 1, rather than an arbitrary graph supplied as surface data. Define graph isomorphism to the finite explicit tree; prove isomorphism and algebraically closed field-extension invariance. Its characteristic-two-only and unique-fibration properties are the separate general-partner contract. ([MMV22](#ref-mmv22), §1, Definition 1.1, p. 1, first ten-vertex diagram)

The interface consists of the following declarations.

- `IsExtraSpecialE8`: The entire dual intersection graph of geometric (−2)-curves is the ten-vertex T₂,₃,₇ tree.

- `extraSpecialE8_iso`: A geometric surface isomorphism preserves and reflects the predicate.

- `extraSpecialE8_curve_count`: There are exactly ten (−2)-curves.

- `extraSpecialE8_no_cycle`: The entire curve graph has no cycle, so no I_n cycle can be realized by its (−2)-curves.

**Checks.**

- `test_extra_e8_tree`: An entire ten-curve graph with arm lengths 1,2,6 satisfies the graph characterization.

- `test_extra_e8_subgraph`: A T₂,₃,₇ subgraph together with an additional (−2)-curve fails the entire-graph condition.

- `test_extra_e8_cycle`: A dual graph with a cycle fails the tree-isomorphism condition.

*Needs:* [1.2](#topic-1-2); SchemeAndStackFoundations, SF.5.

<a id="topic-1-22"></a>

### 1.22 Extra-special E₈ surfaces are exceptional

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two. The entire (−2)-curve graph is T₂,₃,₇.

A geometric extra-special Enriques surface of affine E₈ type is exceptional in characteristic two.

The whole-graph condition in particular gives the contained T₂,₃,₇ configuration. Apply ESB Corollary 4.3. No claim that every contained graph determines the entire extra-special predicate is needed. ([ESB21](#ref-esb21), §4, Corollary 4.3 and proof, p. 14)

*Needs:* [1.21](#topic-1-21); [1.17](#topic-1-17); [1.18](#topic-1-18).

<a id="topic-1-23"></a>

### 1.23 Every half-fibre has a partner (Cossec–Dolgachev)

k is algebraically closed; Y/k is a geometric Enriques surface.

For an Enriques surface over any algebraically closed field, every half-fibre F has another half-fibre F′ with F·F′=1 unless the surface is extra-special of affine E₈ type. Such extra-special surfaces occur only in characteristic two and have just one genus-one fibration.

Use the extension theorem stated in MMV22 Theorem 1.2, together with its unique-fibration and characteristic-two exception in Remark 1.5. The foundational proof is Cossec–Dolgachev III.3.4.1, or the corresponding Cossec–Dolgachev–Liedtke Theorem 6.1.10. A proof here follows that argument or proves the extension theorem independently; MMV22 states the theorem without proof. ([SCH23](#ref-sch23), proof of Proposition 4.4(iii), p. 13, citing Cossec–Dolgachev 1989, Theorem 3.4.1; [MMV22](#ref-mmv22), §1, Theorem 1.2 and Remarks 1.4–1.5, pp. 1–2)

*Needs:* [1.1](#topic-1-1); [0.4](#topic-0-4); [1.21](#topic-1-21).

<a id="topic-1-24"></a>

### 1.24 Partner genus-one fibration

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two. Y is nonexceptional; φ is any genus-one fibration.

For each genus-one fibration on a nonexceptional geometric characteristic-two Enriques surface there is another with intersection of full fibre classes equal to four.

By [1.22](#topic-1-22), nonexceptionality excludes the affine E₈ exception in the characteristic-independent half-fibre partner theorem. Apply that theorem and double both half-fibre classes to obtain full-fibre intersection four. ([SCH23](#ref-sch23), Proposition 4.4(iii), p. 13; [ESB21](#ref-esb21), §1, Theorems 1.1–1.3, pp. 1–3)

*Needs:* [1.23](#topic-1-23); [1.17](#topic-1-17); [1.1](#topic-1-1); [1.22](#topic-1-22).

<a id="topic-1-25"></a>

### 1.25 Intersection of distinct genus-one fibrations

k is algebraically closed; Y/k is a geometric Enriques surface. The two fibrations are distinct up to base isomorphism.

If F and F′ are half-fibres of distinct genus-one fibrations on a geometric Enriques surface, then F·F′≥1 and (2F)·(2F′)≥4. Equality of the full-fibre intersection to four is equivalent to F·F′=1.

Nef isotropic classes lie in the same closed positive cone. If their intersection is zero, the signature-(1,9) form makes them proportional; primitivity makes their numerical classes equal. Pic^τ is killed by two, so 2F and 2F′ are linearly equivalent and define the same genus-one pencil, a contradiction. Integral intersection then is at least one. ([MMV22](#ref-mmv22), §2.1, Lemma 2.1, p. 3; [SCH23](#ref-sch23), proof of Proposition 13.2, p. 47, last displayed inequality)

*Needs:* [0.4](#topic-0-4); [0.2](#topic-0-2); [1.4](#topic-1-4); SchemeAndStackFoundations, SF.5.

<a id="topic-1-26"></a>

### 1.26 Enriques reducibility theorem (as used)

Let k be algebraically closed, let Y/k be classical Enriques, and let φ be a genus-one fibration whose generic degree-zero Picard group has order two. Given an integral two-section T and the nonzero class N in that group, prove that N ⊗ O(T_K) has a representative arising from an integral two-section R̃ with R̃² equal to zero or −2, allowing only vertical or half-fibre adjustments that preserve this generic class.

Prove this coset-preserving reducibility assertion directly, or derive it from the full hypotheses of Lang (1983), Theorem 4.1. SCH23 uses that theorem on pp. 42–43, but the present statement is the exact required application, not an attribution of a broader assertion about every degree-two divisor class. Both possible self-intersections and the nontrivial quotient class must survive the reduction. The geometric statement has no finite-field descent assumption; descent is applied separately in Layer 6. ([SCH23](#ref-sch23), proofs of Propositions 12.2 (p. 42) and 12.3 (p. 43))

**Checks.**

- Both square-zero and square−2 branches survive the construction; preserving the nontrivial coset must be checked explicitly.

*Needs:* [0.4](#topic-0-4); [1.2](#topic-1-2); [1.3](#topic-1-3).

### Examples

If F·F′=1 for two half-fibres, then (2F)·(2F′)=4. A claimed full-fibre lower bound of one would mix these two normalizations. A horizontal integral curve R with R·F=1 has degree R·(2F)=2 over the base even if R²=0; the degree condition does not force R to be a nodal rational curve.

Over a nonclosed field, a smooth proper geometrically rational curve may be a nonsplit conic. Its geometric genus and self-intersection do not by themselves produce a rational point. The degree-one line-bundle argument in Layer 2 is what makes the descended nodal curves P¹ in that arithmetic setting.

For classical surfaces in characteristic two, Pic^τ=ℤ/2 and its Cartier dual μ₂ produces a local canonical covering. For ordinary surfaces the two groups are reversed: Pic^τ=μ₂ and the dual ℤ/2-cover is étale. For supersingular surfaces the self-dual α₂ gives the local case. Thus the singular K3-like cover in this layer is not an alternative name for the smooth K3 cover in Layer 3.

### Dependencies

Layer 0; genus-one linear systems, Kodaira geometry and generic restriction from the genus-one supplier; SF.1, SF.5 and R07.1. The general partner theorem includes the foundational linear-system input cited in MMV22; the local characteristic-two restrictions use ESB21. The precise generic-coset assertion in 1.26 requires its own proof or an exact older-source derivation.

## Layer 2: families, Picard descent and canonical torsors

Work with the full algebraic-space family contract. Cover existence, cover twisting and descent of numerical line-bundle classes have different hypotheses, which are kept separate.

<a id="topic-2-1"></a>

### 2.1 Family of Enriques surfaces

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques.

An Enriques family over a scheme S is an algebraic space f:Y→S which is flat, proper and finitely presented, with every geometric fibre a geometric Enriques surface. Its isomorphisms and pullbacks form the fppf stack M_Enr. Over an affine S=Spec R this is the integral-family contract; representability by a scheme is a consequence only under additional hypotheses.

Use the general algebraic-space and fppf descent suppliers. Flat finite presentation and smooth geometric fibres imply f is smooth. Check descent of the geometric Enriques condition and the isomorphism groupoid. ([SCH23](#ref-sch23), §5, p. 14)

The interface consists of the following declarations.

- `EnriquesFamily`: A flat proper finitely presented algebraic-space morphism with geometric Enriques fibres.

- `EnriquesFamily.baseChange`: Pull back the space, structure map and geometric fibre proofs along any S′→S.

- `EnriquesFamily.iso`: An isomorphism over S gives an isomorphism of families; compose and invert these.

- `EnriquesFamily.smooth`: Every Enriques family is smooth from flat finite presentation and geometric smoothness.

**Checks.**

- `test_family_field`: Over a field the geometric fibre condition agrees with IsEnriques on a proper smooth surface.

- `test_family_basechange_mod4`: A Z-family restricts to a Z/4-family and then to its characteristic-two geometric fibre.

- `test_family_no_scheme_assumption`: A constructor that demands projectivity or scheme representability cannot express the stipulated algebraic-space family contract.

*Needs:* [0.1](#topic-0-1); SchemeAndStackFoundations, SF.0; SchemeAndStackFoundations, SF.1; SchemeAndStackFoundations, SF.2.

<a id="topic-2-2"></a>

### 2.2 Relative Picard representability

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques.

For any Enriques family over S=Spec R, the fppf relative Picard algebraic space is representable by a scheme over S.

Request the general proper-flat surface Picard algebraic-space representability and base change from A0-extension; its abelian/degree-zero Picard statements alone do not supply this case. The finite rank-two Pic^τ and étale numerical components give the Enriques-specific scheme representability of SCH23 Proposition 5.3. JacobianChallenge Layer D only covers pointed smooth curves and is not a surface representability supplier. ([SCH23](#ref-sch23), Proposition 5.3, p. 14)

*Needs:* [2.1](#topic-2-1); [0.2](#topic-0-2); AlgebraicModuliForArithmeticGeometry, A0 surface-Picard extension.

<a id="topic-2-3"></a>

### 2.3 Relative numerical invariants

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques.

For an Enriques family, relative Pic^τ is an open finite locally free subgroup of rank two, and its numerical quotient Num is étale locally isomorphic to Z¹⁰. Both commute with base change.

Apply fibrewise length and numerical rank from Layer 0, relative Picard base change and the numerical Picard supplier. Verify openness and flat rank globally, not only on geometric points. ([SCH23](#ref-sch23), Proposition 5.3, p. 14)

*Needs:* [2.2](#topic-2-2); [0.2](#topic-0-2); [0.3](#topic-0-3); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1.

<a id="topic-2-4"></a>

### 2.4 Family of canonical coverings

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques.

Put P=Pic^τ(Y/S) and G=P^D for an Enriques family. Via the finite-flat Picard–torsor correspondence, P↪Pic(Y/S) defines a distinguished section χ in H⁰(S,R¹f_*G_Y). A canonical covering family is a G_Y-torsor over Y whose fppf cohomology class maps to χ. It is defined independently of a chosen global lift.

Use the supplier finite flat Cartier duality and fppf cohomology. Construct χ from the actual inclusion, with pullback compatibility, then characterize its lifts by the Leray edge map. ([SCH23](#ref-sch23), §5, pp. 14–15)

The interface consists of the following declarations.

- `CanonicalCoverFamily`: A G_Y-torsor with specified equality of its edge image to χ.

- `canonicalSection_baseChange`: χ and its Cartier-dual group pull back compatibly.

- `canonicalFamily_baseChange`: Base change a canonical torsor to a canonical torsor.

- `canonicalFamily_iso`: Isomorphisms are equivariant torsor isomorphisms over Y preserving the edge condition.

**Checks.**

- `test_canonical_local_fibre`: For classical characteristic-two Pic^τ, the fibre group is μ₂ in the fppf topology.

- `test_canonical_ordinary_fibre`: For ordinary characteristic-two Pic^τ, the fibre group is the étale Z/2.

- `test_noncanonical_torsor`: The trivial torsor has zero edge class and does not represent the nonzero inclusion P↪Pic.

*Needs:* [2.3](#topic-2-3); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1; SchemeAndStackFoundations, SF.2.

<a id="topic-2-5"></a>

### 2.5 Canonical-cover obstruction

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques.

With G=P^D, fppf cohomology has the exact row 0→H¹(S,G)→H¹(Y,G_Y)→H⁰(S,R¹f_*G_Y)→H²(S,G)→H²(Y,G_Y). The image of χ in H²(S,G) vanishes exactly when a canonical covering family exists.

First prove O_S→f_*O_Y universally an isomorphism and hence f_*G_Y=G. Apply the Leray low-degree sequence in the fppf topology; étale cohomology alone cannot express the α₂ or characteristic-two μ₂ case. ([SCH23](#ref-sch23), §5 equation(2), pp. 14–15)

*Needs:* [2.4](#topic-2-4); SchemeAndStackFoundations, SF.2.

<a id="topic-2-6"></a>

### 2.6 Injective pullback criterion for a canonical cover

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. Pullback H²_fppf(S,G)→H²_fppf(Y,G_Y) is injective.

If pullback H²_fppf(S,G)→H²_fppf(Y,G_Y) is injective, an Enriques family has a canonical covering family.

Exactness puts the obstruction in the kernel of pullback. Injectivity kills it, and exactness of the edge sequence supplies a torsor lift. ([SCH23](#ref-sch23), Proposition 5.4, p. 15)

*Needs:* [2.5](#topic-2-5).

<a id="topic-2-7"></a>

### 2.7 Section criterion for a canonical cover

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. f has an S-section.

An Enriques family with an S-section has a canonical covering family.

Pullback along the section is a retraction of f* on H²_fppf. Use the injective-pullback criterion. ([SCH23](#ref-sch23), Proposition 5.4, p. 15)

*Needs:* [2.6](#topic-2-6).

<a id="topic-2-8"></a>

### 2.8 Étale Picard torsion criterion for a canonical cover

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. P=Pic^τ(Y/S) is étale and Pic(S)=0.

If Pic^τ is étale and Pic(S)=0, an Enriques family has a canonical covering family.

Over the connected components, the étale rank-two P is constant Z/2 and generated by the fibrewise canonical line bundle. Descend ω² from S; Pic(S)=0 trivializes that line bundle. Construct the rank-two algebra O_Y⊕ω_Y^{-1}, using the dual of the chosen multiplication isomorphism so products have the correct tensor type. Apply the generic relative Spec/vector-bundle interfaces. ([SCH23](#ref-sch23), Proposition 5.4, p. 15)

**Checks.**

- The multiplication uses ω^{-2}→O; an ω²→O map has the wrong type here.

*Needs:* [2.4](#topic-2-4); [1.10](#topic-1-10); SchemeAndStackFoundations, SF.0.

<a id="topic-2-9"></a>

### 2.9 Twisting of canonical coverings

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. A canonical covering family exists.

Whenever a canonical covering family exists, its equivariant isomorphism classes form a principal homogeneous space under H¹_fppf(S,G), by twisting with pullbacks of base torsors.

Injectivity of the first map in the edge row gives freeness; equality of the two edge images puts their difference in its image and gives transitivity. Construct the contracted product and prove action/identity/inverse laws. ([SCH23](#ref-sch23), Proposition 5.4, p. 15)

*Needs:* [2.5](#topic-2-5); [2.4](#topic-2-4).

<a id="topic-2-10"></a>

### 2.10 Constant and split Picard schemes

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques.

Constant numerical Picard means Num≅(Z¹⁰)_S. Constant full Picard means Pic(Y/S)≅(Z¹⁰⊕Z/2)_S as a group scheme. A split Picard extension means only that 0→Pic^τ→Pic→Num→0 admits a homomorphic section. These are predicates invariant under isomorphism; numerical constancy and splitness do not by themselves force constant full Picard.

Use the actual relative Picard extension, and define each condition on it. Prove the implications of full constancy and isolate the extra étale-Pic^τ condition needed for the converse. ([SCH23](#ref-sch23), §5, p. 15)

The interface consists of the following declarations.

- `ConstantNum`: An isomorphism Num≅(Z¹⁰)_S exists.

- `ConstantPicard`: An isomorphism Pic≅(Z¹⁰⊕Z/2)_S exists.

- `SplitPicard`: The relative Picard quotient has a group-scheme section.

- `constantPicard_implies`: Full constancy implies numerical constancy, étale Pic^τ and splitness.

- `constantPicard_iff_split_etale_constantNum`: Constant full Picard is equivalent to constant Num, split extension and Pic^τ≅(Z/2)_S; splitness alone is insufficient.

**Checks.**

- `test_constant_full`: The group scheme (Z¹⁰⊕Z/2)_S satisfies all three predicates.

- `test_constant_num_local_tau`: The split extension (Z¹⁰⊕α₂)_k in characteristic two has constant Num and is split, but fails constant full Picard.

- `test_constant_num_mu_tau`: The split extension (Z¹⁰⊕μ₂)_k in characteristic two also fails constant full Picard.

*Needs:* [2.3](#topic-2-3).

<a id="topic-2-11"></a>

### 2.11 Canonical covers with constant Picard

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec R, full Picard is constant and Pic(R)=0. H²_ét(S,G_m)=0 is required only when this cover classification is combined with the subsequent descent targets.

If Pic(Y/R) is constant full Picard and Pic(R)=0, canonical covering families exist and their classes are a torsor under R×/(R×)². In the simultaneous descent package also assume H²_ét(Spec R,G_m)=0.

Full constancy makes P étale Z/2 with G=μ₂. Use the étale-Picard criterion, the twisting action, and fppf Kummer with Pic(R)=0. This part does not need the stronger Brauer vanishing; that hypothesis belongs to numerical-class descent below. ([SCH23](#ref-sch23), Theorem 5.6, pp. 16–18)

*Needs:* [2.10](#topic-2-10); [2.8](#topic-2-8); [2.9](#topic-2-9); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1.

<a id="topic-2-12"></a>

### 2.12 Canonical bundle order

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec R, full Picard is constant and R→k is any field map; no Brauer or Pic(R) vanishing is needed for this conclusion.

Under full Picard constancy, for every field map R→k the canonical line bundle of Y_k has exact order two.

Base change P to the constant étale group of order two. The generator of its geometric points is ω; descend the assertion and rule out triviality. ([SCH23](#ref-sch23), Theorem 5.6, pp. 16–18)

*Needs:* [2.10](#topic-2-10); [0.2](#topic-0-2); [2.3](#topic-2-3).

<a id="topic-2-13"></a>

### 2.13 Descent of numerical classes

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec R, Pic(R)=0 and H²_ét(S,G_m)=0; full relative Picard is constant. R→k is any field-valued point.

For an Enriques family over R with constant full Picard, Pic(R)=0 and H²_ét(Spec R,G_m)=0, each geometric numerical class on a field fibre Y_k is represented by a k-line bundle. Its class in Pic(Y_k) is unique modulo tensoring with ω_Yk.

Use the Picard Leray edge sequence over R to lift sections of the full relative Picard to line bundles; the stated H² kills its obstruction. Restrict to k and compare the kernel Pic^τ(k)=⟨ω⟩. Azumaya Brauer vanishing alone is not substituted for the full cohomological group on arbitrary affine R. ([SCH23](#ref-sch23), Theorem 5.6, pp. 16–18)

**Checks.**

- Retain full H²_ét(G_m)=0 on a nonregular R.

*Needs:* [2.10](#topic-2-10); [2.12](#topic-2-12); SchemeAndStackFoundations, SF.2.

<a id="topic-2-14"></a>

### 2.14 Descent of (-2)-curves

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec R, Pic(R)=0 and H²_ét(S,G_m)=0; full relative Picard is constant. R→k is any field-valued point.

With the hypotheses of numerical-line-bundle descent, every geometric (−2)-curve on Y_k descends to a k-curve isomorphic to P¹_k.

Lift its numerical class to a line bundle. Use Riemann–Roch and the uniqueness of the effective geometric (−2)-representative to descend the divisor. Perfectness of the Enriques lattice gives a line bundle of degree one on the descended genus-zero curve, splitting its conic form. ([SCH23](#ref-sch23), Theorem 5.6, pp. 16–18)

*Needs:* [2.13](#topic-2-13); [1.2](#topic-1-2); [0.4](#topic-0-4); SchemeAndStackFoundations, SF.5.

<a id="topic-2-15"></a>

### 2.15 Descent of genus-one fibrations

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec R, Pic(R)=0 and H²_ét(S,G_m)=0; full relative Picard is constant. R→k is any field-valued point.

With the same constant-full-Picard, Pic(R)=0 and cohomological-Brauer-zero hypotheses, each geometric genus-one fibration descends to a fibration Y_k→P¹_k, up to base isomorphism.

Descend its half-fibre class and the effective divisor through Riemann–Roch. Descend the pencil to a genus-zero base; the half-fibre yields a degree-one point/divisor on the base and identifies it with P¹ rather than a nonsplit conic. Descend the structure map by the linear system and verify its generic fibre. ([SCH23](#ref-sch23), Theorem 5.6, pp. 16–18)

*Needs:* [2.13](#topic-2-13); [1.1](#topic-1-1); [1.3](#topic-1-3); SchemeAndStackFoundations, SF.5.

<a id="topic-2-16"></a>

### 2.16 Rational tame double fibres

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec R, Pic(R)=0 and H²_ét(S,G_m)=0; full relative Picard is constant. R→k is any field-valued point.

Every descended fibration in that descent package has precisely two tame double fibres, and both base points are k-rational.

The canonical bundle has order two, so the geometric classical formula gives exactly two tame fibres. The separately descended effective half-fibres force their base points to be rational, rather than only their sum being Galois invariant. ([SCH23](#ref-sch23), Theorem 5.6, pp. 16–18)

*Needs:* [2.12](#topic-2-12); [2.15](#topic-2-15); [1.10](#topic-1-10); [2.13](#topic-2-13).

<a id="topic-2-17"></a>

### 2.17 Existence over the residue field

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec R, Pic(R)=0 and H²_ét(S,G_m)=0; full relative Picard is constant. R→k is any field-valued point.

Every field fibre of the descent package has a genus-one fibration to P¹_k.

Choose a geometric fibration using Layer 1 and descend it with Layer 2. This conclusion uses the full Picard hypotheses, not numerical constancy alone. ([SCH23](#ref-sch23), Theorem 5.6, pp. 16–18)

*Needs:* [1.6](#topic-1-6); [2.15](#topic-2-15).

<a id="topic-2-18"></a>

### 2.18 Finite-field specialization of Picard descent

k is finite; Y/k is Enriques with constant full Picard.

For an Enriques surface over a finite field with constant full Picard, the numerical-class, (−2)-curve, genus-one-fibration and tame-double-fibre descent conclusions of Layer 2 apply over that field.

Pic(k)=0 and H²_ét(k,G_m)=0: use the finite-field Brauer vanishing input (Wedderburn together with the field cohomological Brauer identification). Specialize the descent package with R=k. These general finite-field cohomology interfaces belong to SF.2, not a new Enriques definition. ([SCH23](#ref-sch23), §3, Proposition 3.1 proof, p. 11; Theorem 5.6, pp. 16–18)

*Needs:* [2.13](#topic-2-13); [2.14](#topic-2-14); [2.15](#topic-2-15); [2.16](#topic-2-16); SchemeAndStackFoundations, SF.2.

<a id="topic-2-19"></a>

### 2.19 Split genus-one fibre graphs over finite fields

Y/F_q is geometrically Enriques and Num is constant. φ:Y→P¹_{F_q} is any genus-one fibration.

For an Enriques Y/F_q with constant Num and a genus-one fibration to P¹, geometric-to-residue dual graphs of all fibres are isomorphic with intersection labels. Every geometrically reducible fibre lies over an F_q-rational point; its smooth rational components are P¹_{F_q}. This applies to elliptic and quasielliptic fibrations.

Apply the general numerical contraction and graph-descent supplier to φ. Over a finite field purely inseparable residue extensions are trivial. Smooth rational geometric components descend to conics, and finite-field Brauer vanishing splits them. For an irreducible singular rational component assert only normalization P¹, not smoothness of the component. ([SCH23](#ref-sch23), Theorem 2.1, pp. 8–9; Proposition 3.1, pp. 10–11)

*Needs:* [2.10](#topic-2-10); [1.2](#topic-1-2); SchemeAndStackFoundations, SF.5; SchemeAndStackFoundations, SF.2.

<a id="topic-2-20"></a>

### 2.20 No I₀* fibre over F₂ with constant Num

Y/F₂ is Enriques with constant Num; φ is elliptic or quasielliptic.

An Enriques surface over F₂ with constant Num has no geometric I₀* fibre in any genus-one fibration.

Fibre descent puts this reducible fibre over a rational base point with central component P¹_{F₂}. The four distinct outer components attach at four distinct rational points of the central component. P¹(F₂) has only three points. ([SCH23](#ref-sch23), Proposition 3.2 and proof, p. 11)

*Needs:* [2.19](#topic-2-19); SchemeAndStackFoundations, SF.5.

### Examples

For a rank-two algebra O_Y ⊕ ω_Y⁻¹, a trivialization t:ω_Y²≃O_Y gives multiplication on the odd summand through (t∨)⁻¹:ω_Y⁻²→O_Y. Tensor powers have opposite signs here: using t directly would have the wrong domain. Multiplying this map by a unit changes the cover while preserving the underlying rank-two module.

The low-degree sequence is

```text
0 → H¹(S,G) → H¹(Y,G_Y) → H⁰(S,R¹f_*G_Y)
  → H²(S,G) → H²(Y,G_Y).
```

The middle class is the specified character χ:G∨→Pic(Y/S), namely the inclusion Pic^τ→Pic. A section of f makes the final pullback injective; hence the obstruction of χ vanishes. This is a cover-existence argument. The separate hypothesis H²_et(S,G_m)=0 in numerical line-bundle descent concerns a different coefficient group.

For a hypothetical I₀* fibre over F₂, each of its four outer smooth rational components must attach at a different rational point on the central P¹. Since P¹(F₂) has three elements, this configuration cannot occur. Counting geometric points over F̄₂ would miss the contradiction. For an irreducible nodal or cuspidal rational fibre it is its normalization that is P¹, not the singular fibre itself.

### Dependencies

Layers 0–1; SF.0–SF.2 and SF.5; the A0 surface-Picard extension; R07.1; and numerical and labelled-graph descent. The finite-field specialization proves Pic and cohomological Brauer vanishing directly over the residue field and does not assume an integral model.

## Layer 3: point counts, dyadic twists and integral Picard constancy

The finite-field count needs only constant Num. It supplies local sections before full Picard constancy is known. Compare two actual canonical coverings over Q₂ and then choose a globally permitted twist.

<a id="topic-3-1"></a>

### 3.1 Finite-field Enriques point count from Num

Y/F_q is geometrically Enriques and Num is constant. r is a positive integer; no integral family or constant full Picard hypothesis is required.

If Y/F_q is Enriques with constant Num, then #Y(F_{q^r})=1+10q^r+q^{2r} for every r≥1. In particular a constant-Num Y/F₂ has 25 rational points.

This is the Enriques case of the constant-Num surface count of WeilConjectures WC.7 (`count_surface_of_constant_num`), which applies to a smooth proper geometrically connected surface with b₁=0, b₂=ρ and constant numerical local system. Geometric connectedness is part of 0.1, and 0.3 gives b₁=0 and b₂=ρ=10; substituting b₂=10 gives the formula, which is not re-proved here. Inside WC.7 the divisor classes over F_q come from the finite-cokernel descent of numerical classes (SCH23 Lemma 1.1, pp. 5–6), the cycle class map identifies Num(Ȳ)⊗Q_ℓ with H²(Ȳ,Q_ℓ(1)) because ρ=b₂, and constancy of Num makes geometric Frobenius act on H² by q; odd cohomology vanishes and H⁰, H⁴ contribute 1 and q^{2r}. ([SCH23](#ref-sch23), Corollary 7.3, p. 21, for the Enriques case; Proposition 7.1, pp. 20–21, and Corollary 7.2, p. 21, for the general count; Lemma 1.1, pp. 5–6)

*Needs:* [0.1](#topic-0-1); [0.3](#topic-0-3); [2.10](#topic-2-10); WeilConjectures, WC.7 (`count_surface_of_constant_num`).

<a id="topic-3-2"></a>

### 3.2 Numerical constancy over the integers

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec Z.

For an Enriques family over Z, Num is constant of rank ten, and over F_p its fibre has 1+10p+p² points; in particular the F₂ fibre has 25 points.

Apply finite étale decomposition over ℤ and bijective_algebraMap_int_of_finite_of_unramified to prove that every connected finite étale ℤ-algebra is ℤ. The SF.0 finite-étale/fundamental-group adapter then trivializes the action on the rank-ten numerical local system. For each finite residue field, double numerical sections into relative Picard and use finite-field cohomological Brauer vanishing to obtain an ample line bundle on the fibre. This gives its projective scheme model before applying the Num-only trace calculation of 3.1. It does not assume full Picard constancy or the later local-projectivity theorem. ([SCH23](#ref-sch23), Proposition 5.5, author pp. 15–16; Corollary 7.3, p. 21)

*Needs:* [2.3](#topic-2-3); [0.3](#topic-0-3); WeilConjectures, WC.7; Mathlib `bijective_algebraMap_int_of_finite_of_unramified`; SchemeAndStackFoundations, SF.0; [3.1](#topic-3-1).

<a id="topic-3-3"></a>

### 3.3 Local projectivity of Enriques families

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec R with R Noetherian local; f has an R-section and constant Num. The Z_p application starts from a Z-family and obtains its section by the Num-only finite-field point count and smooth Henselian lifting. No vanishing of H²(R,G_m) is assumed.

An Enriques family over a Noetherian local ring R with a section and constant Num is a projective R-scheme. For a family over Z, its base change to Z_p has this property at every prime p.

With Pic^τ killed by two, double a numerical section into relative Picard. The section splits the Brauer edge obstruction, so it lifts to a line bundle. Lift an ample geometric closed-fibre numerical class and use numerical invariance of ampleness. Apply the algebraic-space spreading result in its geometric-fibre form (Stacks 0D3D); a neighbourhood containing the closed point of a local base is the whole base. Properness and an ample sheaf give projective scheme representability. For Z_p lift a nonempty F_p point by smooth Henselian lifting. The point count is [3.2](#topic-3-2), independent of full Picard constancy. This projectivity statement does not need the μ₂ branch. ([SCH23](#ref-sch23), Proposition 5.5 and proof, pp. 15–16, of which this local-projectivity statement is an addition proved with the listed Stacks lemmas; [Stacks](#ref-stacks), Lemma 74.13.2, tag 0D3D; Lemma 99.11.4, section tag 0D24; [Stacks](#ref-stacks), Lemma 68.11.4, section tag 0EMV; Lemma 15.13.3, tag 0H74)

*Needs:* [3.2](#topic-3-2); [2.7](#topic-2-7); SchemeAndStackFoundations, SF.0; SchemeAndStackFoundations, SF.2; SchemeAndStackFoundations, SF.5.

<a id="topic-3-4"></a>

### 3.4 Canonical cover over Z₂ before Picard constancy

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec Z. The hypothetical branch P=Pic^τ(Y/Z)≅μ₂ is assumed; G=P^D≅Z/2.

In the hypothetical Pic^τ=μ₂ branch of an Enriques family over Z, there is a canonical finite étale Z/2-cover over Z₂.

Numerical constancy gives 25 F₂-points, and smooth Henselian lifting gives a Z₂-section. The section criterion produces the canonical torsor; Cartier duality makes its group étale Z/2. No full-Picard theorem or finite-field endpoint is invoked. ([SCH23](#ref-sch23), Proposition 5.5, pp. 15–16; Corollary 7.3, p. 21; Proposition 5.4(ii), p. 15; [Stacks](#ref-stacks), Lemma 68.11.4, section tag 0EMV; Lemma 15.13.3, tag 0H74)

*Needs:* [3.2](#topic-3-2); [2.7](#topic-2-7); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1.

<a id="topic-3-5"></a>

### 3.5 Canonical-cover twists supported at two

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec Z. The hypothetical branch P=Pic^τ(Y/Z)≅μ₂ is assumed; G=P^D≅Z/2.

For a canonical Z/2-cover X of an Enriques family on Spec Z[1/2] in the Pic^τ=μ₂ branch, twisting by the base torsors s²=u for u=1,−1,2,−2 produces canonical finite étale covers. These four torsors are all the classes in H¹(Z[1/2],Z/2).

On Z[1/2], identify Z/2 with μ₂ and apply the fppf Kummer sequence. The localization is a PID with Pic=0, and its units are ±2^n. Reducing n modulo two gives exactly 1,−1,2,−2. These global units are elementary localization arithmetic, not an input from LocalFieldsRamification. Use Layer 2 canonical twisting to apply those four base torsors to the chosen cover; the result stays canonical and finite étale. ([SCH23](#ref-sch23), Proposition 5.4 twisting action; explicit construction supplementing Proposition 5.5)

The interface consists of the following declarations.

- `fourGlobalCanonicalTwists`: For a canonical Z/2-cover on Z[1/2], the four contracted-product covers for units 1,−1,2,−2.

- `fourGlobalCanonicalTwists_group`: The twisting law is multiplication of unit square classes; the unit-one twist is isomorphic to the original cover.

- `fourGlobalCanonicalTwists_exhaustive`: Every base Z/2-torsor on Z[1/2] has precisely one of the four unit square classes.

- `fourGlobalCanonicalTwists_canonical`: Each twisted cover has the same canonical Picard edge class after every base change.

**Checks.**

- `test_four_twists_identity`: The unit-one twist is canonically equivalent to twisting by the trivial base torsor.

- `test_four_twists_composition`: Two unit-two twists compose to unit-four, a trivial square class, and recover the original cover.

- `test_four_twists_no_five`: The equation s²=5 does not define a base torsor over Z[1/2], because 5 is not a unit.

- `test_four_twists_finite_etale`: Every chosen s²=u cover is finite étale of rank two over Z[1/2]; these equations are not used for an étale Z/2-cover on Z₂.

*Needs:* [2.9](#topic-2-9); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1; SchemeAndStackFoundations, SF.2.

<a id="topic-3-6"></a>

### 3.6 Dyadic representatives

e,a,b lie in {0,1}; dyadic representatives live in Q× and are embedded in Q₂×. Global twists are units of Z[1/2]. No surface is assumed.

For e,a,b∈{0,1}, dyadicRepresentative(e,a,b)=(−1)^e2^a5^b∈Q×. After embedding in Q₂ these eight numbers represent distinct square classes, and every nonzero dyadic number has a unique represented class.

Specialize the existing local-field unit filtration to Q₂: valuation parity gives a, odd units modulo eight give e,b. For units congruent to one modulo eight, apply the existing strong Hensel theorem to the square equation. Unramified quadratic class five has the étale integral equation z²−z−1. ([SCH23](#ref-sch23), Proposition 5.5, pp. 15–16, for the canonical-cover application; the explicit four-twist comparison is the strengthened argument specified in this layer.)

The interface consists of the following declarations.

- `dyadicRepresentative`: The explicit rational number (−1)^e2^a5^b, with each exponent Fin 2.

- `dyadicRepresentative_nonzero`: Each representative is nonzero.

- `dyadicRepresentative_decomposition`: The representative is globalTwist(e,a) times 5^b.

- `dyadic_square_classes`: For x∈Q₂× there is a unique triple (e,a,b) for which x/representative(e,a,b) is a square.

**Checks.**

- `test_dyadic_minus_one`: Representative(1,0,0)=−1.

- `test_dyadic_two`: Representative(0,1,0)=2.

- `test_dyadic_five`: Representative(0,0,1)=5.

- `test_dyadic_mixed`: Representative(1,1,1)=−10.

*Needs:* LocalFieldsRamification, Layer 1; LocalFieldsRamification, Layer 2; Mathlib `hensels_lemma`.

<a id="topic-3-7"></a>

### 3.7 Global twist

e,a,b lie in {0,1}; dyadic representatives live in Q× and are embedded in Q₂×. Global twists are units of Z[1/2]. No surface is assumed.

Define globalTwist(e,a)=(−1)^e2^a in Q, regarded as a unit of Z[1/2]. Multiplication of a difference representative by this same global twist removes its ramified factors: representative(e,a,b)·globalTwist(e,a)=5^b(2^a)². Thus only classes one and five remain locally.

The sign and factor two each have exponent zero or one. Their squares disappear in Q₂×/(Q₂×)². Use the canonical torsor-twisting API over Z[1/2] and the étale local twist for class five; retain a Q₂-isomorphism of the resulting covers before gluing local good-reduction models. ([SCH23](#ref-sch23), Proposition 5.5, pp. 15–16; the global-to-dyadic matching is the additional comparison specified here.)

The interface consists of the following declarations.

- `globalTwist`: The rational number (−1)^e2^a with e,a∈Fin 2.

- `globalTwist_nonzero`: Each of the four rational twists is nonzero.

- `globalTwist_removes_ramified_part`: Representative(e,a,b)·globalTwist(e,a)=5^b(2^a)².

**Checks.**

- `test_global_one`: globalTwist(0,0)=1.

- `test_global_sign`: globalTwist(1,0)=−1.

- `test_global_two`: globalTwist(0,1)=2 and globalTwist(1,1)=−2.

*Needs:* [3.6](#topic-3-6); [3.5](#topic-3-5).

<a id="topic-3-8"></a>

### 3.8 Dyadic difference class of canonical covers

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec Z. The hypothetical branch P=Pic^τ(Y/Z)≅μ₂ is assumed; G=P^D≅Z/2.

Two canonical Z/2-covers over the same Q₂-fibre differ uniquely by a class in Q₂×/Q₂×²; this applies to a Z[1/2]-cover and the generic fibre of a Z₂-cover.

Apply canonical twisting over Q₂. Identify Z/2 with μ₂ only after inverting two, then use Kummer over the field. Do not identify finite étale Z/2-torsors over Z₂ with μ₂ Kummer torsors there. ([SCH23](#ref-sch23), Proposition 5.4, p. 15; the comparison required by Proposition 5.5, pp. 15–16)

*Needs:* [2.9](#topic-2-9); [3.4](#topic-3-4); [3.5](#topic-3-5); LocalFieldsRamification, Layer 1.

<a id="topic-3-9"></a>

### 3.9 Removing the ramified part of the difference

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec Z. The hypothetical branch P=Pic^τ(Y/Z)≅μ₂ is assumed; G=P^D≅Z/2.

Write the difference class c uniquely as (−1)^e·2^a·5^b with e,a,b∈{0,1}. Exactly one u among 1,−1,2,−2 has cu in {1,5}, namely u=(−1)^e2^a. The global u-twist and the local twist by the unramified 5-class have isomorphic Q₂-fibres.

Import dyadic unit/square classification from LocalFieldsRamification Layers 1–2 and native strong Hensel. The polynomial z²−z−1 over Z₂ is finite étale and has discriminant five, modelling the nontrivial unramified class. Multiplication of the exponent triples modulo two removes e,a and retains b; twist the local cover by that étale model when b=1. ([SCH23](#ref-sch23), Proposition 5.5, pp. 15–16; the explicit global-to-dyadic comparison is the additional target specified here)

*Needs:* [3.8](#topic-3-8); LocalFieldsRamification, Layer 1; LocalFieldsRamification, Layer 2; Mathlib `hensels_lemma`.

<a id="topic-3-10"></a>

### 3.10 Étale canonical covers are K3 surfaces

k is algebraically closed; Y/k is a geometric Enriques surface. The canonical Cartier-dual group is étale of rank two; X→Y is the canonical nontrivial torsor.

If the canonical Cartier-dual group of a geometric Enriques surface is étale of rank two, its canonical torsor is a connected smooth K3 surface. This applies to ordinary surfaces in characteristic two and to Enriques surfaces in other characteristics.

The canonical inclusion is nonzero, so the étale double torsor is connected. Étaleness gives smoothness, pullback trivializes ω and Euler characteristic doubles to two; coherent duality gives H¹(O)=0. Use the shared K3 definition from K3SurfacesAndSymplecticBoundedness, including its proper/projective bridge. Do not rename the singular K3-like local covers as K3 surfaces. ([SCH23](#ref-sch23), §4, p. 13, and Proposition 5.5, pp. 15–16, using the canonical-cover theorem.)

*Needs:* [2.4](#topic-2-4); [0.2](#topic-0-2); [1.10](#topic-1-10); [1.12](#topic-1-12); SchemeAndStackFoundations, SF.1.

<a id="topic-3-11"></a>

### 3.11 Canonical-cover compatibility at two

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec Z. The hypothetical branch P=Pic^τ(Y/Z)≅μ₂ is assumed; G=P^D≅Z/2.

In the Pic^τ=μ₂ branch over Z, one of the four Z[1/2]-twists of a canonical cover has a geometric K3 generic fibre over Q and smooth proper projective scheme models over Z_p for every prime p.

Construct a canonical cover over Z[1/2], where P is étale and Pic of the base is zero. Choose the Z₂-cover independently. Over Q₂ remove the ramified difference by the global u-twist and the unramified local 5-twist. At odd p base change the twisted global étale cover; at two use the corrected Z₂-cover. Each base is a projective scheme by local-projectivity and its finite étale cover is projective and smooth. The Q_p generic models agree with the chosen global Q-cover; the Q₂-isomorphism is part of this comparison. The resulting everywhere-good-reduction K3 surface is what 3.13 feeds to Fontaine's theorem (h²,⁰ would vanish, against the K3 value one). ([SCH23](#ref-sch23), Proposition 5.5 proof, p. 16; [Fontaine](#ref-fontaine), Theorem 1 and Remark (a), printed p. 3 (PDF p. 4))

*Needs:* [3.5](#topic-3-5); [3.4](#topic-3-4); [3.8](#topic-3-8); [3.9](#topic-3-9); [3.3](#topic-3-3); [3.10](#topic-3-10); [3.6](#topic-3-6); [3.7](#topic-3-7).

<a id="topic-3-12"></a>

### 3.12 Splitting of Z/2-extensions of a constant lattice over Spec Z

S is connected and every finite étale Z/2-torsor on S is trivial. The extension is a commutative group-scheme extension of the constant free group (Zⁿ)_S by (Z/2)_S.

Over a connected base S with every finite étale Z/2-torsor trivial, any commutative group-scheme extension of (Zⁿ)_S by (Z/2)_S splits. Over Z this applies to the Enriques Picard extension once P is the étale branch.

Above each numerical basis vector the fibre is a finite étale Z/2-torsor. Choose its S-section and extend the chosen lifts additively from the free lattice; commutativity makes this a group-scheme splitting. Apply trivial finite étale covers of Spec Z. ([SCH23](#ref-sch23), proof of Proposition 5.5, p. 16 (sequence (4)))

*Needs:* [2.10](#topic-2-10); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1; Mathlib `bijective_algebraMap_int_of_finite_of_unramified`; SchemeAndStackFoundations, SF.0.

<a id="topic-3-13"></a>

### 3.13 Constant Picard scheme over Z

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec Z.

Every Enriques family over Z has constant full Picard scheme (Z¹⁰⊕Z/2)_Z.

Start with Num constancy, then Oort–Tate rank-two classification over Z gives P=μ₂ or Z/2. The four-twist K3 good-reduction argument and the imported Fontaine obstruction exclude μ₂. In the remaining étale branch split the extension by lifting all numerical basis vectors through trivial étale torsors. This order avoids circularity with descent and F₂ nonexistence. ([SCH23](#ref-sch23), Proposition 5.5, pp. 15–16)

*Needs:* [3.2](#topic-3-2); [3.11](#topic-3-11); [3.12](#topic-3-12); FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1.

### Examples

Under constant Num over F_q, the divisor classes span H²(1), so geometric Frobenius has trace 10q on H², and the trace formula gives 1+10q+q². At q=2 this is 25. Over F₄ it is 57, not 25 or 29. No assertion of constant full Picard scheme is needed to obtain these numbers.

The eight representatives of Q₂×/Q₂×² are obtained from the four odd unit classes 1,−1,5,−5 and their multiples by 2. The four globally permitted twists are 1,−1,2,−2: 5 is a local comparison class, not a unit of ℤ[1/2]. If the difference class of two actual Q₂-covers is c=(−1)^e2^a5^b and the global twist is u=(−1)^e2^a, then cu=5^b(2^a)², as in 3.9. Thus the remaining class is either trivial or unramified. For example, c=−10 and u=−2 give cu=20=5·2². If c=2, then u=2 gives 4, a square. The polynomial z²−z−1 defines the étale unramified quadratic ℤ₂-algebra in the class five, even though adjoining √5 by the Kummer equation x²−5 is not an étale integral presentation at 2.

To justify the unit square criterion, Hensel at a=1 for x²−u requires v₂(u−1)≥3. The derivative has norm 1/2, so the strict comparison is 1/8<1/4. A unit congruent to five modulo eight fails this criterion and represents the nontrivial unramified class. These statements are specific to Q₂, not arbitrary ramified dyadic fields.

### Dependencies

Layers 0–2; WeilConjectures WC.7; finite étale decomposition over ℤ; LocalFieldsRamification Layers 1–2 and Mathlib Hensel; the shared K3 predicate; and Fontaine’s good-reduction obstruction. Only after the four-twist contradiction is the remaining étale Pic^τ combined with the split étale-lattice extension to prove constant full Picard over ℤ.

## Layer 4: Enriques fibrations and their rational Jacobians

The Jacobian construction includes both kinds of genus-one fibration. The subsequent residue-field fibre comparisons and constant-Picard theorem in this layer concern elliptic fibrations on a constant-full-Picard Enriques surface over F₂.

<a id="topic-4-1"></a>

### 4.1 Jacobian of an Enriques genus-one fibration

k is any field; Y/k is geometrically Enriques and φ:Y→P¹_k is a genus-one fibration, elliptic or quasielliptic. The shared genus-one supplier provides generic Pic⁰, its regular compactification when necessary, and the relatively minimal regular surface model.

Given an Enriques genus-one fibration φ:Y→P¹_k, its Jacobian is the generic Pic⁰ curve in the elliptic case and the regular compactification of that group curve in the quasielliptic case, extended by the supplier relatively minimal regular surface model J→P¹. It has its canonical zero-section. This construction is an Enriques adapter to the shared genus-one Jacobian construction.

Import generic Pic⁰ and its minimal regular model from the genus-one supplier, including the unpointed genus-one torsor and regular nonsmooth quasielliptic cases. JacobianChallenge supplies shared relative-Picard sheaf foundations and the smooth pointed constructor where a point has been obtained, not a general quasielliptic surface Jacobian. ([SCH23](#ref-sch23), §6, p. 19)

The interface consists of the following declarations.

- `enriquesJacobian`: Specialize the shared Jacobian minimal regular model to an Enriques genus-one fibration.

- `enriquesJacobian_zero`: The generic identity extends to the zero-section of the minimal model.

- `enriquesJacobian_generic`: Its generic fibre identifies with Pic⁰ or its regular compactification, according to elliptic/quasielliptic type.

- `enriquesJacobian_iso`: Isomorphic fibrations induce the supplier Jacobian isomorphism.

**Checks.**

- `test_jacobian_elliptic`: For a smooth generic genus-one curve, the generic Jacobian is its Pic⁰ elliptic curve.

- `test_jacobian_quasielliptic`: For the quasielliptic case retain the regular compactification, rather than calling the group curve smooth elliptic.

- `test_jacobian_multiplicity`: The Jacobian has a section, so it does not inherit a torsor fibre multiplicity two as a Jacobian scheme fibre.

*Needs:* [0.1](#topic-0-1); SchemeAndStackFoundations, SF.0.

<a id="topic-4-2"></a>

### 4.2 Rationality of the Enriques Jacobian

k is any field; Y/k is geometrically Enriques and φ:Y→P¹_k is a genus-one fibration, elliptic or quasielliptic. The shared genus-one supplier provides generic Pic⁰, its regular compactification when necessary, and the relatively minimal regular surface model.

The relatively minimal regular Jacobian surface of any Enriques genus-one fibration is geometrically rational.

Over k̄ restrict to the open base with simple fibres and identify the torsor/Jacobian there by the local genus-one theory. Transfer R¹φ_*O and compute the Enriques Euler characteristic contribution to obtain χ(O_J)=1. Apply the supplier rational genus-one surface criterion. The assertion includes quasielliptic Jacobians. ([SCH23](#ref-sch23), Proposition 6.2, p. 19)

*Needs:* [4.1](#topic-4-1); [0.3](#topic-0-3); SchemeAndStackFoundations, SF.1.

<a id="topic-4-3"></a>

### 4.3 Matching geometric Kodaira types

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. φ:Y→P¹_{F₂} is an elliptic fibration, and J→P¹_{F₂} is its relatively minimal regular Jacobian with zero-section.

For an elliptic fibration on a constant-full-Picard Enriques surface over F₂, the torsor and its Jacobian have the same geometric Kodaira type at every closed base point after removing the torsor scheme multiplicity.

Pass to the strict Henselization with algebraically closed residue field and invoke corrected Liu–Lorenzini–Raynaud 6.6 through the genus-one supplier. Keep the multiplicity integer outside the type label. ([SCH23](#ref-sch23), Proposition 9.2, p. 24)

*Needs:* [4.1](#topic-4-1); [2.10](#topic-2-10); [2.16](#topic-2-16).

<a id="topic-4-4"></a>

### 4.4 Simple-fibre identification

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. φ:Y→P¹_{F₂} is an elliptic fibration, and J→P¹_{F₂} is its relatively minimal regular Jacobian with zero-section.

At a simple fibre of that elliptic fibration, the Jacobian fibre and Enriques fibre are isomorphic over the residue field.

Find a point of the smooth locus of the whole scheme fibre. For tree additive types choose a multiplicity-one terminal component; for I_n cycles remove at most two intersection points from a split P¹; for type IV remove its single triple-intersection point. Treat nonsplit I₁/I₂ by their normalization/conductor descriptions. Do not use the regular locus of the reduction when the scheme fibre has thicker components. Lift that smooth point over the Henselian local base, trivialize the generic torsor and invoke uniqueness of the minimal regular model. This supplies the residue-field isomorphism, not only equal geometric type. ([SCH23](#ref-sch23), Proposition 9.2, p. 24)

**Checks.**

- The smooth-point argument covers I_n cycles and type IV, neither of which has a terminal dual-graph vertex.

*Needs:* [4.3](#topic-4-3); [2.14](#topic-2-14); SchemeAndStackFoundations, SF.0.

<a id="topic-4-5"></a>

### 4.5 Nonrational fibres

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. φ:Y→P¹_{F₂} is an elliptic fibration, and J→P¹_{F₂} is its relatively minimal regular Jacobian with zero-section.

Each geometric Jacobian fibre above a non-F₂-rational closed point is irreducible.

Apply numerical contraction descent to the Enriques surface: a reducible geometric fibre would force a purely inseparable residue extension of F₂ and hence a rational base point. Transfer component counts via Kodaira matching. ([SCH23](#ref-sch23), Proposition 9.3, p. 25)

*Needs:* [4.3](#topic-4-3); [2.10](#topic-2-10); [2.19](#topic-2-19).

<a id="topic-4-6"></a>

### 4.6 Excluded I₀*

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. φ:Y→P¹_{F₂} is an elliptic fibration, and J→P¹_{F₂} is its relatively minimal regular Jacobian with zero-section.

No geometric Jacobian fibre in this setting has type I₀*.

[2.20](#topic-2-20) excludes the Enriques I₀* fibre for either kind of genus-one fibration. For this elliptic Jacobian adapter, transfer geometric Kodaira symbols by [4.3](#topic-4-3). ([SCH23](#ref-sch23), Proposition 9.3, p. 25)

*Needs:* [4.3](#topic-4-3); [2.14](#topic-2-14); [2.20](#topic-2-20).

<a id="topic-4-7"></a>

### 4.7 Semistable graph descent

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. φ:Y→P¹_{F₂} is an elliptic fibration, and J→P¹_{F₂} is its relatively minimal regular Jacobian with zero-section.

For each semistable Jacobian fibre, base change to an algebraic closure induces an isomorphism on the dual graph over its residue field.

Use the constant numerical Enriques local system and the supplier graph descent. Combine simple-fibre isomorphism with the fact that semistable fibres are simple under the tame double-fibre restrictions. ([SCH23](#ref-sch23), Proposition 9.3, p. 25)

*Needs:* [4.4](#topic-4-4); [1.11](#topic-1-11); [2.16](#topic-2-16); [2.19](#topic-2-19).

<a id="topic-4-8"></a>

### 4.8 At most one semistable or supersingular rational fibre

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. φ:Y→P¹_{F₂} is an elliptic fibration, and J→P¹_{F₂} is its relatively minimal regular Jacobian with zero-section.

Among the three F₂-rational base points, at most one Jacobian fibre is semistable or smooth supersingular.

The Enriques fibration has two rational tame double fibres, whose half-fibres are ordinary or additive. For smooth multiple reduction use the genus-one supplier Corollary 8.3 isomorphism, not just the Kodaira symbol I₀, to transfer ordinarity. Simple fibres use the fibre isomorphism. ([SCH23](#ref-sch23), Proposition 9.3, p. 25)

*Needs:* [1.11](#topic-1-11); [2.16](#topic-2-16); [4.4](#topic-4-4).

<a id="topic-4-9"></a>

### 4.9 Descent of all Mordell–Weil sections

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. φ:Y→P¹_{F₂} is an elliptic fibration, and J→P¹_{F₂} is its relatively minimal regular Jacobian with zero-section.

Every geometric Mordell–Weil section of the Jacobian of a constant-full-Picard Enriques elliptic fibration over F₂ is defined over F₂. Thus MW(J/P¹)=MW(J_F̄₂/P¹_F̄₂) under base change.

Over F̄₂(t), Tsen kills the Brauer obstruction to Picard points being line bundles. Restriction from geometric Pic(Y) to the generic curve is surjective; subtract degree/2 times a descended two-section R to obtain the Galois-equivariant surjection to Pic⁰, hence MW. Constant full Picard makes this quotient action trivial; Galois-fixed points of J(F̄₂(t)) descend to J(F₂(t)). Br(F₂(t)) is not claimed zero, and the square-zero two-section case is retained. ([SCH23](#ref-sch23), Proposition 9.3, p. 25)

**Checks.**

- Tsen is used over F̄₂(t) only; no line-bundle descent over F₂(t) is inferred from it.

*Needs:* [1.8](#topic-1-8); [2.13](#topic-2-13); [2.15](#topic-2-15); [4.1](#topic-4-1); JacobianChallenge, Layer D; [2.18](#topic-2-18).

<a id="topic-4-10"></a>

### 4.10 Fibre counts of the Jacobian match the Enriques surface

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. φ:Y→P¹_{F₂} is an elliptic fibration, and J→P¹_{F₂} is its relatively minimal regular Jacobian with zero-section.

At each a∈P¹(F₂), the point-count quantity n_a attached to the Jacobian equals #Y_a(F₂). Summing the three values gives 25.

At simple fibres use the actual fibre isomorphism. At smooth multiple reduction use the local torsor-reduction isomorphism from Corollary 8.3. For additive multiple fibres use the supplier singular-fibre count and the descended graph; nilpotent thickening does not change rational points. Sum over the rational base and use the Num-only surface count. ([SCH23](#ref-sch23), §9, p. 26)

Write n_a for the number of F₂-points of the fibre over a∈P¹(F₂). The formulas used in the enumeration are

| Residue-field fibre | n_a |
| --- | --- |
| smooth E_n | n |
| split semistable I_r | 2r |
| nonsplit semistable Ĩ_r, r=1 or 2 | 2r+2 |
| labelled additive fibre with r geometric components | 2r+1 |

The simple-fibre isomorphism supplies the equality for simple smooth or semistable fibres; the additive and multiple-fibre assertions require their own local comparison. Nilpotent thickening of a multiple fibre does not change its rational points. Summing over the three rational base points gives 25. These are counts over F₂, not a claim about every finite residue field.

*Needs:* [4.4](#topic-4-4); [4.8](#topic-4-8); [3.1](#topic-3-1).

<a id="topic-4-11"></a>

### 4.11 Constant Picard of the Jacobian

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. φ:Y→P¹_{F₂} is an elliptic fibration, and J→P¹_{F₂} is its relatively minimal regular Jacobian with zero-section.

The Jacobian of an elliptic fibration on a constant-full-Picard Enriques surface over F₂ has constant Picard scheme.

Verify the supplier rational-Jacobian criterion: irreducibility at nonrational points, no I₀*, split semistable graphs, at most one semistable/supersingular rational fibre, full Mordell–Weil descent and fibre-count sum 25. Its graph proof must use the unimodular pairing argument for affine D-types, direct IV triangle argument and multiplicity-labelled E₇/E₈ terminal vertices. Apply the criterion to the geometrically rational J. ([SCH23](#ref-sch23), Theorem 9.1, p. 24)

*Needs:* [4.2](#topic-4-2); [4.5](#topic-4-5); [4.6](#topic-4-6); [4.7](#topic-4-7); [4.8](#topic-4-8); [4.9](#topic-4-9); [4.10](#topic-4-10).

### Examples

For a reducible split semistable fibre I_r over F₂, its r rational components contribute 3r points before identifying r nodes, giving 2r. For the nonsplit I₁ and I₂ possibilities the point counts are respectively 4 and 6. A labelled additive fibre with r rational components contributes 2r+1. In particular I₁* has r=6 and contributes 13; adding a smooth E₄ and split I₄ gives 13+4+8=25.

A two-section may be a square-zero genus-one curve. Consequently the restriction map used for Mordell–Weil descent must accept all integral two-sections. It cannot be replaced by an argument requiring a rational nodal bisection. The geometric generic restriction argument uses Br(F̄₂(t))=0 by Tsen; Br(F₂(t)) is not asserted to vanish.

For a simple fibre isomorphism, a rational point on a singular component must lie in the smooth locus of the whole fibre, not merely in the component’s own smooth locus. A split I_r cycle has no terminal component, and a type IV fibre also requires the conductor argument. Their comparison is included explicitly rather than inferred from a terminal-component argument.

### Dependencies

Layers 1–3; unpointed and quasielliptic Picard adapters, minimal regular Jacobian models, local torsor comparison, rationality and constant-Picard criteria from the genus-one supplier; numerical descent, intersection theory and geometric Tsen. The residue-field comparisons use the full-Picard hypotheses in 4.3–4.11.

## Layer 5: fibre configurations and the first exclusions

The elliptic enumeration uses the rational-Jacobian completeness theorem; the quasielliptic enumeration is an independent component-count argument. The later eight-case reduction also needs the three additional Enriques exclusions.

<a id="topic-5-1"></a>

### 5.1 Elliptic configurations on constant-Picard Enriques surfaces

Let Y/F₂ have constant full Picard scheme and let φ be an elliptic genus-one fibration on it. Assuming the rational-Jacobian completeness theorem under Exact supplier contracts, prove that its three rational-fibre types occur in the fourteen-entry list below. Nonexceptionality and the three Enriques exclusions are not assumptions of this enumeration. In the final three entries the additive fibre and E₄ are multiple and the nonsplit semistable fibre is simple. These are necessary possibilities, without an assertion that any is realized by an Enriques surface.

Apply Layer 4 rationality, constant Picard, point counts and the at-most-one semistable-or-supersingular restriction to the rational-Jacobian classification. Transfer types and residue-field smooth curves through the local comparison. Proving completeness is a separate supplier obligation; listing fourteen model equations alone does not discharge it. ([SCH23](#ref-sch23), Proposition 11.1 and table (12), pp. 32–33 (the proposition begins on p. 32, the table is on p. 33); proof pp. 33–34)

The elliptic triples, with the fibre symbols understood as above, are:

| Additive or largest fibre | Second rational fibre | Third rational fibre |
| --- | --- | --- |
| II* | E4 | I1 |
| II* | E2 | Ĩ1 |
| III* | E4 | I2 |
| III* | E2 | Ĩ2 |
| III* | E4 | E4 |
| IV* | E3 | IV |
| IV* | E5 | III |
| I4* | E4 | E2 |
| I1* | E4 | I4 |
| I1* | E5 | IV |
| I8 | E4 | III |
| I2* | E4 | Ĩ2 |
| I3* | E4 | Ĩ1 |
| IV* | E4 | Ĩ2 |

*Needs:* [4.11](#topic-4-11); [4.3](#topic-4-3); [4.4](#topic-4-4); [4.8](#topic-4-8); [4.10](#topic-4-10).

<a id="topic-5-2"></a>

### 5.2 Quasielliptic component sum

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. φ is quasielliptic; all geometric reducible fibres lie over the three rational points and are split as in [2.19](#topic-2-19).

For a quasielliptic fibration on a constant-full-Picard Enriques surface over F₂, r₀+r₁+r_∞=11. The possible symbols with at most nine components are II, III, I₂*, III*, II*, I₄*, with counts 1,2,7,8,9,9.

Use the supplier 2-torsion generic Pic⁰ and the vertical Picard rank formula ρ=2+Σ(r_a−1). Numerical contraction descent confines reducible fibres to rational points. Exclude I₀* by the rational-point argument and larger I_{2n}* by the component bound. ([SCH23](#ref-sch23), Proposition 11.1 proof, p. 33)

*Needs:* [0.3](#topic-0-3); [2.10](#topic-2-10); [3.1](#topic-3-1); [2.20](#topic-2-20); [2.19](#topic-2-19).

<a id="topic-5-3"></a>

### 5.3 Quasielliptic configurations

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. φ is quasielliptic; all geometric reducible fibres lie over the three rational points and are split as in [2.19](#topic-2-19).

The rational-fibre type triple of a quasielliptic fibration in that setting is one of II*+II+II, III*+III+II, I₄*+II+II or I₂*+III+III, up to permutation of the rational base points.

Enumerate component counts adding to eleven from the six permitted symbols, using the genus-one supplier quasielliptic classification. Keep the two different symbols with nine components as separate cases. This component-count argument does not certify the elliptic candidate list. ([SCH23](#ref-sch23), Proposition 11.1, p. 33)

The weighted component count gives the following four triples. Each entry includes all three rational fibres.

| First fibre | Second fibre | Third fibre |
| --- | --- | --- |
| II* | II | II |
| III* | III | II |
| I₄* | II | II |
| I₂* | III | III |

Here the component counts of II, III, I₂*, III*, II* and I₄* are respectively 1,2,7,8,9,9. The sum is eleven. For example 7+2+2=11 gives the last row; replacing one III by II gives ten and fails the rank calculation. This arithmetic does not identify scheme multiplicities.

*Needs:* [5.2](#topic-5-2).

<a id="topic-5-4"></a>

### 5.4 Forced multiple fibres

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. The fourteen-case elliptic list is exhaustive (rational-Jacobian completeness). Quasielliptic possibilities use the independent four-case enumeration.

For a nonexceptional constant-full-Picard Enriques Y/F₂, every IV, IV*, II* or I₁* fibre is multiple, assuming the fourteen-case elliptic classification is exhaustive.

In every relevant elliptic candidate a different fibre is semistable or supersingular and hence cannot be one of the two tame multiple fibres. The added IV* case still forces IV* and E₄ multiple. In the quasielliptic II* case use the simple-fibre exceptionality restriction. ([SCH23](#ref-sch23), Proposition 11.1(i), p. 33)

*Needs:* [5.1](#topic-5-1); [5.3](#topic-5-3); [1.11](#topic-1-11); [2.16](#topic-2-16); [1.19](#topic-1-19).

<a id="topic-5-5"></a>

### 5.5 Simple III* preliminary restriction

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. The fourteen-case elliptic list is exhaustive (rational-Jacobian completeness). Quasielliptic possibilities use the independent four-case enumeration.

A simple III* fibre on a nonexceptional constant-full-Picard Enriques Y/F₂ forces an elliptic fibration with rational-fibre configuration III*+E₄+E₄, subject to classification completeness.

Exclude quasielliptic simplicity by Layer 1. In the other two III* elliptic candidates the semistable fibre is simple, forcing III* to be multiple; only the two ordinary smooth fibres remain. ([SCH23](#ref-sch23), Proposition 11.1(ii), p. 33)

*Needs:* [5.1](#topic-5-1); [5.3](#topic-5-3); [1.19](#topic-1-19); [1.11](#topic-1-11); [2.16](#topic-2-16).

<a id="topic-5-6"></a>

### 5.6 Excluded rational two-section for exceptional-type half-fibres

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. The specified IV*, III* or II* fibre is multiple; no classification-completeness hypothesis is needed for this local exceptional-fibration restriction.

For a multiple IV*, III* or II* fibre on such Y, no (−2)-curve R has intersection one with its indecomposable divisor.

Since the full fibre is twice the indecomposable divisor, this intersection makes R a rational two-section. Apply the nonexceptional multiple-special restriction. ([SCH23](#ref-sch23), Proposition 11.1(iii), p. 33)

*Needs:* [1.20](#topic-1-20); [1.2](#topic-1-2); [1.1](#topic-1-1).

<a id="topic-5-7"></a>

### 5.7 Three additional configuration exclusions

For a nonexceptional Enriques surface Y/F₂ with constant full Picard scheme, prove that no genus-one fibration has rational-fibre triple I₂* + E₄ + Ĩ₂, I₃* + E₄ + Ĩ₁, or IV* + E₄ + Ĩ₂.

This is a new proof target extending the treatment of SCH23 Proposition 11.1 and §§11–15, pp. 33–49. Exclude all three Enriques realizations using their multiple additive and E₄ fibres, simple nonsplit fibre, numerical lattice and partner half-fibres. Give a complete incidence argument for every branch, and justify each new fibration by the canonical-type theorem. For IV* + E₄ + Ĩ₂ the other half-fibre is smooth ordinary; the four-rational-points argument using a III or IV half-fibre in the other IV* cases does not apply. The model classification and the eight-case conclusion cannot serve as premises for this exclusion. ([SCH23](#ref-sch23), Proposition 11.1 and table (12), pp. 32–34; IV* argument in Proposition 11.3, p. 37; Theorem 15.1, p. 49. The three-case exclusion is an additional proof obligation, not a theorem proved at these locators.)

**Checks.**

- A proof must exclude three Enriques realizations; it cannot infer nonexistence solely from a Jacobian model list.

*Needs:* [5.1](#topic-5-1); [1.24](#topic-1-24); [2.15](#topic-2-15); [5.6](#topic-5-6).

<a id="topic-5-8"></a>

### 5.8 Partner fibration over F₂

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. φ is any genus-one fibration; no candidate classification is needed for existence or descent of its partner.

Each genus-one fibration on a nonexceptional constant-full-Picard Enriques Y/F₂ has a partner fibration defined over F₂ with full fibre-class intersection four.

Apply the geometric nonexceptional partner theorem over F̄₂, then descend the fibration using the full-Picard descent package. Intersection is preserved by base change, so the degree remains four over F₂. ([SCH23](#ref-sch23), Proposition 11.4, p. 38)

*Needs:* [1.24](#topic-1-24); [2.15](#topic-2-15); [2.18](#topic-2-18).

<a id="topic-5-9"></a>

### 5.9 Elimination of I₈

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

On a nonexceptional constant-full-Picard Enriques Y/F₂ there is no genus-one fibre of type I₈, once the fourteen-case classification and omitted-case exclusions are supplied.

Use the partner half-fibre and the degree-one incidence with a III half-fibre to force the partner configuration III+E₄+I₈. Enumerate the additional components and their nonnegative incidences. The two remaining incidence choices generate canonical-type I₃ or I₇ curves, hence fibrations outside the candidate table after both classification proofs. The nonexceptional hypothesis supplies the partner omitted in the printed statement. ([SCH23](#ref-sch23), Proposition 11.2, pp. 34–35)

*Needs:* [5.1](#topic-5-1); [5.3](#topic-5-3); [5.7](#topic-5-7); [1.24](#topic-1-24); [1.3](#topic-1-3); [2.16](#topic-2-16).

<a id="topic-5-10"></a>

### 5.10 Elimination of II*

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

No genus-one fibration on such a nonexceptional constant-full-Picard Y/F₂ has a II* fibre, after both classification proofs.

It must be multiple. A partner half-fibre meets its unique multiplicity-one component once, leaving the E₈ subgraph vertical. A II* partner fibre is multiple; its additional component meets a component of multiplicity at least two, contradicting half-fibre intersection one. ([SCH23](#ref-sch23), Proposition 11.3, p. 35; proof pp. 36–38 (II* case and multiple I₄* case p. 36, IV* case p. 37, IV case pp. 37–38))

*Needs:* [5.4](#topic-5-4); [5.7](#topic-5-7); [1.24](#topic-1-24); [1.3](#topic-1-3).

<a id="topic-5-11"></a>

### 5.11 No multiple I₄*

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

No genus-one fibration on such Y has a multiple I₄* fibre, after both classification proofs.

The partner half-fibre leaves D₈ vertical. With II* excluded, the additional partner component must complete another I₄*. Intersection at most two forces it disjoint from the original terminal component, producing an I₀* canonical-type curve. This contradicts the I₀* exclusion. ([SCH23](#ref-sch23), Proposition 11.3, p. 35; proof pp. 36–38 (II* case and multiple I₄* case p. 36, IV* case p. 37, IV case pp. 37–38))

*Needs:* [5.10](#topic-5-10); [5.7](#topic-5-7); [1.24](#topic-1-24); [1.3](#topic-1-3); [2.20](#topic-2-20).

<a id="topic-5-12"></a>

### 5.12 Elimination of IV*

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

No genus-one fibration on such Y has a IV* fibre, after classification completeness and the separate IV*+E₄+Ĩ₂ exclusion.

Work on the printed IV*+E₃+IV or IV*+E₅+III branch only. A partner leaves E₆ vertical; a IV* completion contradicts intersection one, and a simple III* completion has two ordinary half-fibres. Enumerate intersections with the other III/IV half-fibre, reject an I₈ curve, then force four distinct rational points on a descended P¹. The smooth ordinary other-half-fibre case is handled by [5.7](#topic-5-7), not by this four-point argument. ([SCH23](#ref-sch23), Proposition 11.3, p. 35; proof pp. 36–38 (II* case and multiple I₄* case p. 36, IV* case p. 37, IV case pp. 37–38))

*Needs:* [5.4](#topic-5-4); [5.5](#topic-5-5); [5.10](#topic-5-10); [5.9](#topic-5-9); [5.7](#topic-5-7); [1.24](#topic-1-24); [2.14](#topic-2-14); [2.16](#topic-2-16); [1.3](#topic-1-3).

<a id="topic-5-13"></a>

### 5.13 Elimination of IV

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

No genus-one fibration on such Y has a IV fibre, after both classification proofs.

In the IV+I₁*+E₅ branch choose the partner half-fibre, with both additive fibres multiple. The remaining D₅ and A₂ vertical subgraphs either lie in different partner fibres, forcing two simple fibres, or in the same one. Include the missing same-fibre branch: after II*, IV* and I₈ are excluded, its simple I₄* completion places an A₂ on components of weights two and one. Intersection at least three contradicts the bound two. This uses the I₁* indecomposable fibre in the first intersection inequality, correcting the printed base-point slip. ([SCH23](#ref-sch23), Proposition 11.3, p. 35; proof pp. 36–38 (II* case and multiple I₄* case p. 36, IV* case p. 37, IV case pp. 37–38))

*Needs:* [5.10](#topic-5-10); [5.12](#topic-5-12); [5.9](#topic-5-9); [5.11](#topic-5-11); [5.7](#topic-5-7); [1.24](#topic-1-24); [1.3](#topic-1-3); [2.16](#topic-2-16).

<a id="topic-5-14"></a>

### 5.14 The eight residual configurations

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

Once classification completeness and [5.7](#topic-5-7) hold, only eight rational-fibre configurations remain: elliptic I₄*+E₄+E₂, III*+E₄+I₂, III*+E₂+Ĩ₂, III*+E₄+E₄, I₁*+E₄+I₄; quasielliptic I₄*+II+II, III*+III+II, I₂*+III+III.

Remove I₈, II*, IV*, IV and the three extra candidates from the fourteen-plus-four list. Prior to the omitted-case proof, retain all three extra configurations alongside the printed eight; never publish an unconditional eight-case reduction. ([SCH23](#ref-sch23), Proposition 11.4, p. 38)

After completeness and the three additional exclusions, and after the other exclusions in this layer, the list is

| Kind | Three rational fibres |
| --- | --- |
| elliptic | I₄* + E₄ + E₂ |
| elliptic | III* + E₄ + I₂ |
| elliptic | III* + E₂ + Ĩ₂ |
| elliptic | III* + E₄ + E₄ |
| elliptic | I₁* + E₄ + I₄ |
| quasielliptic | I₄* + II + II |
| quasielliptic | III* + III + II |
| quasielliptic | I₂* + III + III |

This is a conditional consequence of both classification proofs. Neither this table nor the finite-field nonexistence target is evidence for the missing three exclusions.

*Needs:* [5.1](#topic-5-1); [5.3](#topic-5-3); [5.7](#topic-5-7); [5.9](#topic-5-9); [5.10](#topic-5-10); [5.12](#topic-5-12); [5.13](#topic-5-13).

<a id="topic-5-15"></a>

### 5.15 Multiplicity restrictions in the residual table

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

Within the residual table after both classification proofs I₁* fibres are multiple, whereas I₄*, semistable I_n and nonsplit I₂ fibres are simple.

Use forced I₁* multiplicity, the multiple-I₄* exclusion and the tame characteristic-two half-fibre restrictions. Keep type and scheme multiplicity as separate data. ([SCH23](#ref-sch23), Proposition 11.4, p. 38)

*Needs:* [5.14](#topic-5-14); [5.4](#topic-5-4); [5.11](#topic-5-11); [1.11](#topic-1-11); [2.16](#topic-2-16).

### Examples

The proposed extra triple I₂*+E₄+Ĩ₂ satisfies the point count: 15+4+6=25. Likewise I₃*+E₄+Ĩ₁ gives 17+4+4=25, and IV*+E₄+Ĩ₂ gives 15+4+6=25. Thus point counts cannot remove these cases. Their exclusions must use Enriques geometry.

For the printed IV* cases the other multiple fibre has type III or IV. A central rational component is forced to contain four distinct rational points. In IV*+E₄+Ĩ₂ the other half-fibre is ordinary smooth; it supplies no such rational component. This case belongs to 5.7 and cannot be discarded by the same argument.

In the IV exclusion, put the relevant D₅ and A₂ divisors in the same partner I₄* fibre as one of the branches. The labels at the shared edge have multiplicities two and one. The resulting intersection is at least three, while the partner half-fibre condition gives two. The contradiction uses these weighted divisors; forgetting their coefficients would give a different calculation.

### Dependencies

Layers 1–4; the exhaustive fourteen-case rational-Jacobian classification; quasielliptic component/rank theory; canonical-type reconstruction; and the separate three-configuration exclusion 5.7. The no-I₈, no-IV*, residual and later elimination arguments carry both classification prerequisites. The local prohibition on rational special two-sections does not require the classification.

## Layer 6: ten-curve lattices and the I₄* exclusion

First do the two exact lattice calculations over ℚ. Apply them geometrically with the specified curve incidences, then prove the first ten-curve exclusion and the independent opposite-tip argument before proving the second exclusion. This order avoids using the completed I₄* exclusion inside its own proof.

<a id="topic-6-1"></a>

### 6.1 The two integral Gram models

The two explicit integer matrices have indices Fin 10 and are realized on the standard rational coordinate basis. No surface or geometric realization is assumed.

Define firstGram=N₁ and secondGram=N₂ on Fin 10 with the two ordered bases in [6.2](#topic-6-2) and [6.3](#topic-6-3). Construct firstLattice and secondLattice with IntegralLattice.ofGramMatrix and Pi.basisFun over Q, retaining its full Z-carrier. The matrices are symmetric and even, have determinant −4, and induce their displayed entries on the native carrier basis.

Enter the revised integer matrices rather than a new abstract lattice record. Their D₈ chain has edges (C₁,C₂),…,(C₅,C₆),(C₆,C₇),(C₆,C₈). N₁ adds R²=−2, R·C₄=R·F=1; N₂ has the orthogonal U block F′·F=1. Invoke native Gram constructor and basis-pairing theorem. Exact rational elimination verifies both inverses against (14),(16), determinant −4 and rank eight modulo two. The latter with determinant absolute value four proves Smith factors 1⁸,2,2. Verify the dual norm coefficients and the fifteen incidence cosets with the native half-norm convention. ([SCH23](#ref-sch23), §12, matrices (14), (16), author pp. 41–44)

The interface consists of the following declarations.

- `firstGram`: N₁ in basis (C₁,…,C₈,R,F), with the explicit entries stated above.

- `secondGram`: N₂ in basis (C₁,…,C₈,F′,F), D₈(−1)⊕U.

- `firstLattice`: The native IntegralLattice.ofGramMatrix of N₁ on Q¹⁰.

- `secondLattice`: The native IntegralLattice.ofGramMatrix of N₂ on Q¹⁰.

- `firstGram_symmetric`: firstGram.IsSymm.

- `secondGram_symmetric`: secondGram.IsSymm.

- `firstGram_determinant`: det N₁=−4.

- `secondGram_determinant`: det N₂=−4.

- `firstLattice_even`: The native firstLattice.IsEven condition holds.

- `secondLattice_even`: The native secondLattice.IsEven condition holds.

- `firstLattice_basis_pairing`: The native carrier basis pairing is firstGram i j.

- `secondLattice_basis_pairing`: The native carrier basis pairing is secondGram i j.

**Checks.**

- `test_first_r_c4`: firstGram 8 3=1.

- `test_first_r_f`: firstGram 8 9=1.

- `test_first_f_square`: firstGram 9 9=0.

- `test_second_u`: secondGram 8 8=0 and secondGram 8 9=1.

- `test_second_orthogonal`: secondGram 8 3=0: it does not have the R-to-C₄ edge of N₁.

- `test_second_fork`: secondGram 5 6=secondGram 5 7=1.

The complete matrices can be specified sparsely without suppressing entries. In the order C₁,…,C₈, use diagonal −2 and off-diagonal +1 exactly at

```text
(1,2), (2,3), (3,4), (4,5), (5,6), (6,7), (6,8)
```

and their transposes. All other entries of the eight-by-eight block are zero. For N₁ append R,F with R²=−2, F²=0, R·C₄=R·F=1 and all other new entries zero. For N₂ append F′,F with F′²=F²=0, F′·F=1 and both orthogonal to the eight-by-eight block. The Lean indices are zero-based, so C₄ has index 3 and R or F′ has index 8.

In addition to the six entry Checks above, check the native lattices separately: the carrier-basis pair at indices (8,3) is one for the first and zero for the second; the last basis vector has square zero in both; and the two off-diagonal fork entries (5,6) and (5,7) are one. For both matrices compute determinant −4 and rank eight modulo two, whence the Smith factors are eight ones and two twos. The rational inverse has denominator two, not four. These checks distinguish the full integral carrier from the ambient rational space and distinguish N₁ from the orthogonal-sum model N₂.

*Needs:* `TauCeti.IntegralLattice.ofGramMatrix`; `TauCeti.IntegralLattice.integralForm_ofGramMatrix_apply`; Mathlib `Pi.basisFun`.

<a id="topic-6-2"></a>

### 6.2 First ten-curve lattice discriminant

Let Y/k be geometric Enriques. Assume a simple I₄* fibre C₀+C₁+2(C₂+⋯+C₆)+C₇+C₈, with affine D₈ edges and a (−2)-curve R meeting only C₄ once, with simple normal crossings. Choose a half-fibre F of this pencil. The subgroup S generated by (C₁,…,C₈,R,F) has Gram matrix N₁ from 6.1. It has determinant −4, invariant factors 1⁸,2,2 and index two in unimodular Num(Y). The vector discriminant class has full norm −1 and the two spinor classes full norm −2; their native half-norm values are 1/2,0,0 modulo ℤ.

Construct the integral Gram lattice using the native ofGramMatrix, compute determinant, inverse and Smith data exactly, and compare the chosen geometric classes with that basis. Use the native discriminant cardinality and index-square formula for the embedding in Num(Y). Translate full norm modulo 2Z to the built half-norm modulo Z; do not define another discriminant form. ([SCH23](#ref-sch23), §12 matrix(14), pp. 41–42)

**Checks.**

- N₁^{-1} must match all entries of revised matrix (14); negative full norm −2 has native q=0.

Fix C₀=2F−C₁−2(C₂+⋯+C₆)−C₇−C₈. The full squared norms in the dual basis are

```text
(C₁*)²=−1, (C₇*)²=(C₈*)²=−2,
(R*)²=0, (F*)²=−2,
C₈*·R*=0, C₈*·F*=2, R*·F*=1.
```

The class of C₁* is the anisotropic vector class: its native q-value is (−1)/2≡1/2 modulo ℤ. The two spinor classes have full norm −2 and q-value −1≡0. Only the latter can generate an even index-two intermediate lattice. A test that compares q directly with the full norm would incorrectly call all three classes isotropic.

*Needs:* [0.4](#topic-0-4); `TauCeti.IntegralLattice.discriminantQuadraticMap`; `TauCeti.IntegralLattice.evenIntermediateCarrierOrderIsoIsotropicSubgroup`; [6.1](#topic-6-1).

<a id="topic-6-3"></a>

### 6.3 Second ten-curve lattice discriminant

Let Y/k be geometric Enriques with affine D₈ curves C₀,…,C₈ and a further (−2)-curve R such that R·C₀=2, R·C₂=1 and the other intersections with C_i vanish, with simple normal crossings away from R,C₀. Assume the canonical-type divisors obtained by replacing C₀ with R and by keeping C₀ give simple I₄* fibres of two pencils with half-fibres F′,F satisfying F·F′=1. The subgroup S generated by (C₁,…,C₈,F′,F) has Gram matrix N₂ from 6.1, namely D₈(−1)⊕U. Its determinant is −4, its invariant factors are 1⁸,2,2 and Num(Y)/S has order two. Its three nonzero discriminant classes are one anisotropic vector class and two isotropic spinor classes.

Use the native Gram lattice, exact inverse (16), Smith/cardinality and even-overlattice classification. Determine the two allowed index-two even extensions. The generic degree part is split off separately and is not included in this order-two quotient. ([SCH23](#ref-sch23), §12 matrix(16), p. 43)

*Needs:* [0.4](#topic-0-4); [6.2](#topic-6-2); `TauCeti.IntegralLattice.discriminantQuadraticMap`; [6.1](#topic-6-1).

<a id="topic-6-4"></a>

### 6.4 Generic degree-zero Picard quotient

k is algebraically closed; Y/k is a geometric Enriques surface carrying the first or second ten-curve configuration of 6.2 or 6.3, with its genus-one fibration and ordered classes. For the generic Pic⁰ quotient and its splitting, Y is classical, so its canonical line bundle is a difference of half-fibres and restricts trivially.

For either ten-curve setting, let T be the two-section R in the first case or the integral half-fibre F′ in the second. The map L↦(L−(L·F)T)|_{Y_K} induces Num(Y)/⟨C₁,…,C₈,T,F⟩≅Pic⁰(Y_K), of order two. Restriction splits Pic(Y_K)=Pic⁰(Y_K)⊕Z[T_K], with degree image 2Z.

Import surjectivity of restriction on the regular surface and its vertical-divisor kernel from the genus-one supplier. The canonical class is a difference of half-fibres and restricts trivially, so the map descends through Num. Prove kernel exactly S and use T to remove the degree component. The second case source prints Pic in place of Pic⁰; retaining the infinite degree factor would invalidate the index-two assertion. ([SCH23](#ref-sch23), Proposition 12.3 proof, p. 43)

*Needs:* [1.10](#topic-1-10); [6.2](#topic-6-2); [6.3](#topic-6-3); [4.1](#topic-4-1).

<a id="topic-6-5"></a>

### 6.5 Two-section of square zero or minus two

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

The nonzero class of the order-two generic Pic⁰ quotient is represented by an integral two-section R̃ with R̃²=0 or −2 and Num(Y)=S+ZR̃, defined over F₂ in the two configurations.

Twist the chosen degree-two line bundle by the nontrivial Pic⁰ class, use Riemann–Roch on the genus-one generic curve and close its divisor in Y. Apply geometric degree-two reducibility while preserving that quotient class, then descend the resulting curve/fibration. Neither R̃≅P¹ nor R̃²=−2 is assumed. ([SCH23](#ref-sch23), Proposition 12.2 proof, pp. 41–42)

*Needs:* [6.4](#topic-6-4); [1.26](#topic-1-26); [2.14](#topic-2-14); [2.15](#topic-2-15); [2.16](#topic-2-16); [2.18](#topic-2-18).

<a id="topic-6-6"></a>

### 6.6 Incidences of the generating two-section

k is algebraically closed; Y/k is a geometric Enriques surface carrying the first or second ten-curve configuration of 6.2 or 6.3, with its ordered classes; the degree-zero restriction map uses its integral two-section T. For [6.6](#topic-6-6) and [6.7](#topic-6-7), R̃ represents the nonzero even-overlattice coset and has square zero or −2, as specified.

For the generating two-section R̃ in either ten-curve setting, precisely two of (R̃·C₀,…,R̃·C₈) are one and all others zero. The pairs are {0,8},{1,7} for one spinor class and {0,7},{1,8} for the other. In the first setting independent terminal swaps preserve S and allow {0,8}; in the second only the {7,8} swap is used, leaving {0,8} and {1,8}.

Enumerate all fifteen nonnegative incidence vectors of weighted degree two for the affine D₈ fibre. Map each through the revised inverse Gram matrix into S*/S; the zero and vector classes are excluded by generation and evenness. Check the actions of the terminal swaps on the actual basis, using C₀=2F−C₁−2Σ_{i=2}^6 C_i−C₇−C₈. A congruence R̃≡C₈* alone does not select the required incidence pair. Perform the finite enumeration and symmetry reduction explicitly before using the square calculation. ([SCH23](#ref-sch23), proof of Proposition 12.2, p. 42; proof of Proposition 12.3, pp. 43–44)

Let a_i=R̃·C_i. Since the affine D₈ fibre is simple, its weighted incidence equation is a₀+a₁+2(a₂+⋯+a₆)+a₇+a₈=2. Its fifteen solutions consist of five single interior hits, four double terminal hits, and six pairs of distinct terminal hits. The spinor-class test leaves the four pairs

```text
{0,8}, {1,7};     {0,7}, {1,8}.
```

The semicolon separates the two spinor classes. In N₁ the terminal swaps allow the representative {0,8}. In N₂ preserve the marked F′ incidence: swapping the right tips reduces to {0,8} or {1,8}, and both branches are retained. An unmarked affine-graph reversal is not automatically an isometry preserving that marked divisor.

*Needs:* [6.2](#topic-6-2); [6.3](#topic-6-3).

<a id="topic-6-7"></a>

### 6.7 Square-zero two-section calculation

k is algebraically closed; Y/k is a geometric Enriques surface carrying the first or second ten-curve configuration of 6.2 or 6.3, with its ordered classes; the degree-zero restriction map uses its integral two-section T. For [6.6](#topic-6-6) and [6.7](#topic-6-7), R̃ represents the nonzero even-overlattice coset and has square zero or −2, as specified.

After the first-setting symmetry reduction, a square-zero generating two-section has class C₈*+nR*+F* with n=R̃·R≥0. The revised inverse matrix gives its square 2n, hence n=0 and R̃ is disjoint from R.

Use the normalized incidences to express the vector in the dual basis. Expand its square with entries C₈*²=F*²=−2, R*²=C₈*·R*=0, C₈*·F*=2, R*·F*=1. Then nonnegative intersection zero gives disjoint support. ([SCH23](#ref-sch23), Proposition 12.2 proof, p. 42)

**Checks.**

- This calculation is made only after the symmetry normalization, not from the spinor congruence alone.

For R̃=C₈*+nR*+F*, the displayed pairings give

```text
R̃² = −2 + n²·0 − 2 + 2(0+2+n) = 2n.
```

For the square-zero two-section this implies n=0, so R̃ and R are disjoint. The vanishing of (R*)² is essential; confusing R* with R would introduce an erroneous quadratic term. No identity is inferred by treating a dual basis as an orthogonal basis.

*Needs:* [6.6](#topic-6-6); [6.2](#topic-6-2).

<a id="topic-6-8"></a>

### 6.8 First forbidden ten-curve configuration

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

No nonexceptional constant-full-Picard Enriques Y/F₂ has ten (−2)-curves C₀,…,C₈,R with affine D₈ incidence and R meeting only C₄ once, all intersections simple normal crossings, after both classification proofs.

Use the first lattice and generic Pic⁰ quotient to choose the generating two-section. In square −2 its normalized incidences create an I₈ canonical-type curve, already excluded. In square zero the dual-basis calculation gives R̃·R=0, producing a simple III* partner fibration. An integral half-fibre of the original I₄* fibration has exactly two smooth rational points in either residual I₄* configuration. The two multiple partner half-fibres consume those points while the degree-one intersection with R gives a third, a contradiction. Check distinctness and smoothness of these intersections. ([SCH23](#ref-sch23), Proposition 12.2 and dual graph (13), p. 41; proof pp. 41–42)

*Needs:* [6.2](#topic-6-2); [6.4](#topic-6-4); [6.5](#topic-6-5); [6.6](#topic-6-6); [6.7](#topic-6-7); [5.9](#topic-5-9); [5.14](#topic-5-14); [5.8](#topic-5-8); [1.3](#topic-1-3); [2.16](#topic-2-16); [2.14](#topic-2-14); [1.25](#topic-1-25).

<a id="topic-6-9"></a>

### 6.9 The independent opposite-tip argument

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

Under the residual table after both classification proofs and [6.8](#topic-6-8), an I₄* fibration cannot have a partner half-fibre F with F·C₀=F·C₈=1 and all other F·C_i=0.

The vertical chain C₁+⋯+C₇ can complete only to I₄* or III*. In the I₄* case the extra end components force an I₀* canonical-type curve by the full-fibre intersection-four bound. In the III* case its new middle component meets C₄ once and the same bound makes it disjoint from C₀ and C₈, giving the first forbidden ten-curve graph. This branch uses neither [6.10](#topic-6-10) nor the completed no-I₄* theorem. ([SCH23](#ref-sch23), §12, proof of Proposition 12.1, opposite-terminal branch, author p. 40)

*Needs:* [5.14](#topic-5-14); [5.15](#topic-5-15); [5.8](#topic-5-8); [6.8](#topic-6-8); [1.3](#topic-1-3); [2.20](#topic-2-20).

<a id="topic-6-10"></a>

### 6.10 Second forbidden ten-curve configuration

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

No such Y has affine D₈ curves C₀,…,C₈ and another (−2)-curve R with R·C₀=2, R·C₂=1 and all other R·C_i=0. Require simple normal crossings away from the pair R,C₀; impose only intersection length two on that pair.

The two I₄* subconfigurations give fibrations with fibre intersection four and half-fibres F,F′ meeting once. Use the second lattice, generic Pic⁰ quotient and reducibility to get the two-section. Enumerate spinor incidences. Square −2 creates I₈. Square zero is excluded by the incidence branch in the I₄* proof having F·C₀=F·C₈=1; that branch uses only the first ten-curve exclusion and no invocation of this second exclusion. Extract this branch as an independent lemma to avoid circularity. ([SCH23](#ref-sch23), Proposition 12.3 and dual graph (15), p. 42; proof pp. 43–44)

For the remaining incidence pair {1,8}, relabel the unmarked original affine D₈ fibre by exchanging C₀ and C₁ before applying 6.9 to the square-zero two-section as a partner half-fibre. This uses the geometric lemma for the original pencil, not an assertion that the relabelling preserves the marked F′ in the second lattice.

*Needs:* [6.3](#topic-6-3); [6.4](#topic-6-4); [6.5](#topic-6-5); [6.6](#topic-6-6); [6.8](#topic-6-8); [5.9](#topic-5-9); [5.14](#topic-5-14); [5.8](#topic-5-8); [1.3](#topic-1-3); [6.9](#topic-6-9); [1.25](#topic-1-25).

<a id="topic-6-11"></a>

### 6.11 Six I₄* half-fibre incidence cases

The affine D₈ graph is numbered C₀,…,C₈, with weights (1,1,2,2,2,2,2,1,1). The nonnegative integer incidence vector has weighted sum two. This finite arithmetic enumeration makes no geometric-existence claim.

For a simple I₄* fibre with weights (1,1,2,2,2,2,2,1,1), a partner half-fibre of full-fibre degree two has fifteen nonnegative incidence vectors in six graph-symmetry orbits: a single one at C₂,C₃ or C₄; ones at {C₀,C₁} or {C₀,C₈}; or a two at C₀.

Enumerate weighted-degree-two nonnegative integral vectors. Act by swaps of the two fork tips and reversal of the D̃₈ chain, an order-eight group. Verify every vector lies in exactly one of the six representative orbits; this is arithmetic and does not assert realizability of the vectors. ([SCH23](#ref-sch23), Proposition 12.1 proof, pp. 38–40)

The representative Lean milestone `i4Star_incidence_count` counts all fifteen solutions on `Fin 9 → Fin 3`. Since every weight is at least one and the total is two, each entry is automatically in {0,1,2}. This bound makes the finite carrier equivalent to the nonnegative integer enumeration; the six symmetry orbits are the stronger geometric interface specified above.

*Needs:* finite nonnegative integer vectors, weighted sums and graph permutations.

<a id="topic-6-12"></a>

### 6.12 Elimination of I₄*

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

No genus-one fibration on a nonexceptional constant-full-Picard Enriques Y/F₂ has an I₄* fibre, after both classification proofs.

The fibre is simple. Use the six incidence orbits: middle C₄ creates I₈; C₃ creates an I₄ contradiction or too-large intersection; C₂ completions give I₈/I₄ or the first ten-curve graph; fork-tip pair creates I₀*; opposite-tip pair reduces to the first forbidden graph; a double terminal incidence reduces to the second forbidden graph. Separate the opposite-tip square-zero branch before invoking the second ten-curve exclusion. Every generated canonical-type curve is converted to a fibration through Layer 1 and compared with the residual list after both classification proofs. ([SCH23](#ref-sch23), Proposition 12.1, p. 38; proof pp. 38–40 (it uses Propositions 12.2 and 12.3, pp. 41–44))

*Needs:* [6.11](#topic-6-11); [6.8](#topic-6-8); [6.10](#topic-6-10); [5.9](#topic-5-9); [5.14](#topic-5-14); [5.15](#topic-5-15); [5.8](#topic-5-8); [1.3](#topic-1-3); [6.9](#topic-6-9); [2.20](#topic-2-20).

### Examples

On U, a basis vector is isotropic, but its sum with the other basis vector has square two. Thus the second Gram matrix really contains a hyperbolic plane and is indefinite. In the first matrix the added R meets C₄; setting this entry to zero would change the inverse and invalidate the dual-coordinate square calculation.

The native discriminant map sends full norm −1 to 1/2 and full norm −2 to zero in ℚ/ℤ. Its target has no chosen rational representative; −1 and zero represent the same class there. This is the normalization used when passing from a geometric unimodular index-two overlattice to one of the two spinor classes.

For the I₄* incidence equation, the five interior single-hit vectors form orbits represented by C₂,C₃,C₄, of sizes two, two and one. Distinct terminal pairs split into the two same-fork pairs and four opposite-fork pairs; double terminal hits form an orbit of size four. Hence the six orbit sizes are 2,2,1,2,4,4, totaling fifteen. This computation concerns possible intersection numbers; a fibration realizing each vector is a further geometric assertion.

### Dependencies

Layers 0–5, including both classification proofs where the residual list or no-I₈ is used; generic restriction and the narrow coset-preserving degree-two theorem; native lattice, discriminant and even-overlattice interfaces; canonical-type reconstruction and labelled graph descent. The first forbidden graph precedes the independent opposite-tip argument, which precedes the second forbidden graph and the completed I₄* exclusion.

## Layer 7: III* exclusions and restricted fibrations

Exclude multiple III* before simple III*. The final restricted-configuration theorem is an arbitrary-characteristic geometric statement and uses the characteristic-independent partner theorem.

<a id="topic-7-1"></a>

### 7.1 Elimination of multiple III*

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

No genus-one fibration on a nonexceptional constant-full-Picard Enriques Y/F₂ has a multiple III* fibre, after both classification proofs.

A partner half-fibre intersects its sole chosen weight-one terminal component, leaving E₇ vertical; the partner has another III* fibre. The new terminal component creates an I₂* canonical-type curve with two III half-fibres. Use the first forbidden ten-curve graph to eliminate degree-one incidences with one III pair, forcing the remaining curve vertical for the partner. The partner III* is then multiple and the half-fibre intersection one equals two, a contradiction. ([SCH23](#ref-sch23), Proposition 13.1, pp. 44–45)

*Needs:* [5.14](#topic-5-14); [5.8](#topic-5-8); [6.8](#topic-6-8); [1.3](#topic-1-3); [5.5](#topic-5-5).

<a id="topic-7-2"></a>

### 7.2 Four simple III* half-fibre cases

The affine E₇ graph has the numbering of SCH23 figure (17), weights (1,2,2,3,4,3,2,1), and nonnegative integer incidence vector of weighted sum two.

For a simple III* fibre numbered as in (17) with weights (1,2,2,3,4,3,2,1), a partner half-fibre of degree two has six nonnegative incidence vectors in four symmetry orbits: one at C₂; ones at C₀,C₇; one at C₁; or two at C₀.

Enumerate the six degree-two vectors and identify them under the graph reversal C₀↔C₇, C₁↔C₆, C₃↔C₅. Record the fixed C₂ case independently from the C₁/C₆ orbit. ([SCH23](#ref-sch23), Proposition 13.2 proof, pp. 45–47)

The representative Lean milestone `iiiStar_incidence_count` counts these six solutions on `Fin 8 → Fin 3`; the bound on entries follows from positivity of the displayed weights. The four-orbit assertion additionally records the indicated affine-graph involution.

*Needs:* finite nonnegative integer vectors, weighted sums and graph permutations.

<a id="topic-7-3"></a>

### 7.3 Elimination of simple III*

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

No genus-one fibration on such Y has a simple III* fibre, after both classification proofs.

In the C₂ branch the completion contributes intersection at least eight to a pair with bound four. The opposite terminal branch produces the first forbidden ten-curve graph. In the C₁ branch rule out I₄* and III* completions, leaving I₂*; degree-one extra incidence creates I₆ and degree-zero forces another forbidden graph. For the double-terminal branch the new terminal curve forms a III pair and a further I₂* fibration. Track which fibres are simple or multiple and use the already proved multiple-III* exclusion; the final constructed simple III* fibre has intersection two with a distinct fibration, below the minimum four. Import the distinct-fibration lower bound with full versus half-fibre normalization. ([SCH23](#ref-sch23), Proposition 13.2, pp. 45–47)

*Needs:* [7.2](#topic-7-2); [7.1](#topic-7-1); [6.12](#topic-6-12); [6.8](#topic-6-8); [5.14](#topic-5-14); [5.15](#topic-5-15); [5.8](#topic-5-8); [1.3](#topic-1-3); [5.5](#topic-5-5); [1.25](#topic-1-25).

<a id="topic-7-4"></a>

### 7.4 Final two-configuration impossibility

k is algebraically closed; Y/k is a geometric Enriques surface. Y is classical. Every genus-one fibration has one of the two stated reducible-fibre configurations, including the stated multiple-fibre conditions. No characteristic-two or finite-field hypothesis is imposed.

Over any algebraically closed field of any characteristic, no classical Enriques surface has every genus-one fibration restricted to reducible-fibre configurations I₁*+I₄ with I₁* multiple, or I₂*+III+III with exactly two multiple fibres.

In characteristic two the exceptional-fibration characterization excludes exceptionality because neither allowed configuration contains a special double IV*, III* or II*. Then the general partner theorem applies. Outside characteristic two its extra-special affine E₈ exception cannot occur. No characteristic-two proposition is invoked universally. For an I₁* fibration the partner completion either contradicts half-fibre intersection one or yields a IV* canonical-type curve. Then exclude a multiple I₂* by an I₀* completion. Finally all I₂* fibres are simple and both III fibres multiple; the horizontal components of two partner III fibres together with those of the original pair produce an I₄ canonical-type curve, outside the allowed global restrictions. ([SCH23](#ref-sch23), Proposition 14.1, pp. 47–49; [ESB21](#ref-esb21), §1, Theorems 1.1–1.3, pp. 1–3)

*Needs:* [1.23](#topic-1-23); [1.17](#topic-1-17); [1.3](#topic-1-3); [1.10](#topic-1-10); [1.18](#topic-1-18); [1.21](#topic-1-21).

### Examples

For the III* weights (1,2,2,3,4,3,2,1), the weighted-degree-two solutions are the three single hits at C₁,C₂,C₆, the two double hits at C₀,C₇, and the terminal pair {C₀,C₇}. Reversal pairs C₁ with C₆ and C₀ with C₇ while fixing C₂ and the terminal-pair vector, giving four orbits of sizes 2,1,2,1.

If a newly constructed pencil has full-fibre intersection two with another distinct pencil, it contradicts the lower bound four. This final contradiction uses full fibres on both sides; replacing one by its half-fibre would lose a factor of two. In the no-multiple-III* argument a multiple partner component instead yields the incompatible half-fibre equality 1=2.

### Dependencies

Layers 0–6, both classification proofs, the first ten-curve exclusion, the completed no-I₄* theorem, and the characteristic-independent partner theorem. The restricted geometric endpoint uses no claim that every algebraically closed ground field has characteristic two.

## Layer 8: lifting and the two nonexistence theorems

Compute tangent cohomology and prove supersingular nonlifting separately. The differential obstruction applies only in the exceptional classical branch. The final finite-field theorem also needs the configuration proofs of Layers 5–7.

<a id="topic-8-1"></a>

### 8.1 Tangent cohomology of Enriques surfaces

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two.

For geometric Enriques Y in characteristic two, (h⁰(Θ_Y),h¹(Θ_Y),h²(Θ_Y)) is (1,12,1) if Y is exceptional or supersingular, and (0,10,0) otherwise.

Classical vector fields are characterized by ESB Proposition 2.8(6); the ordinary and supersingular values of h⁰(Θ_Y), which DI21 Proposition 7.1 quotes from the literature, are part of this target. Serre duality identifies h⁰ and h². Riemann–Roch gives χ(Θ_Y)=−10, so h¹=10+2h⁰. The printed +10 is a sign typo, not the value used here. ([DI21](#ref-di21), §7, Proposition 7.1 and proof, p. 23; [ESB21](#ref-esb21), §2, Proposition 2.8(6) and proof, pp. 6–7)

*Needs:* [0.3](#topic-0-3); [1.17](#topic-1-17); [1.12](#topic-1-12); [1.14](#topic-1-14); SchemeAndStackFoundations, SF.1; SchemeAndStackFoundations, SF.5.

<a id="topic-8-2"></a>

### 8.2 Supersingular Enriques surfaces do not lift to W₂

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two. Pic⁰(Y/k)=Pic^τ(Y/k)≅α₂.

A supersingular geometric Enriques surface over an algebraically closed field of characteristic two has no flat proper W₂(k)-lift.

Use b₁=0 and h¹(O_Y)=h²(O_Y) in DI Theorem 4.3 to get the relative Picard flatness condition. Pic⁰_red=0, so a W₂-lift would induce a finite flat lift of α₂. The generic finite-flat group nonlifting result DI Proposition 4.2 belongs to R07.1; its Hopf-algebra obstruction contradicts such a lift. ([DI21](#ref-di21), §4, Proposition 4.2 and Theorem 4.3, pp. 15–17; Theorem 7.2 proof, p. 24)

*Needs:* [1.14](#topic-1-14); [0.3](#topic-0-3); [2.3](#topic-2-3); AlgebraicModuliForArithmeticGeometry, A0 surface-Picard extension; FiniteFlatGroupsAndIntegralPadicHodgeTheory, R07.1; SchemeAndStackFoundations, SF.4.

<a id="topic-8-3"></a>

### 8.3 Characteristic-two Enriques lifting criterion

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two.

For an Enriques surface over an algebraically closed field k of characteristic two, a flat proper W₂(k)-lift exists exactly when the surface is neither exceptional nor supersingular.

For supersingular Y use [8.2](#topic-8-2): Pic⁰=α₂ gives a finite-flat group obstruction. This branch cannot use DI Theorem 6.1, which requires the canonical bundle to have exact order two. For exceptional classical Y set L=ω_Y(2C). ESB supplies the differential/conductrix sequence; DI Theorem 6.1 applies using ω of exact order two, positivity of C and the two equal section dimensions. Import the general Frobenius/de Rham nonlifting criterion from SF.4. Otherwise [8.1](#topic-8-1) gives h²(Θ)=0; formal smooth deformation over W(k) supplies a W₂-lift. These are the three branches of DI Theorem 7.2. ([SCH23](#ref-sch23), Theorem 5.2, p. 14; [DI21](#ref-di21), §7, Proposition 7.1 and Theorem 7.2, pp. 23–24; §6, Theorem 6.1, pp. 20–22)

*Needs:* [1.17](#topic-1-17); [1.13](#topic-1-13); [1.14](#topic-1-14); SchemeAndStackFoundations, SF.4; SchemeAndStackFoundations, SF.1; [8.1](#topic-8-1); [8.2](#topic-8-2).

<a id="topic-8-4"></a>

### 8.4 Miniversal Enriques deformation ring

k is algebraically closed; Y/k is a geometric Enriques surface. Characteristic k is two.

For that geometric characteristic-two Enriques surface, its miniversal complete local W(k)-deformation ring A is regular and W(k)-flat with dimension 11 or 12. Dimension 12, absolute ramification index at least two, exceptionality-or-supersingularity, and nonexistence of a W₂-lift are equivalent.

Use DI21 Proposition 7.1, Theorem 7.2 and Proposition 3.3. The nonexceptional nonsupersingular case has unobstructed ring W[[T₁,…,T₁₀]]. In the other case tangent dimension twelve, obstruction dimension one and nonlifting give a regular one-equation base. Also retain the Enriques characteristic-zero formal-lifting assertion in the full deformation theorem: the defining relation is not associated to 2, so the regular base is W-flat. DI21 Corollary 3.4 identifies this condition with singular reduction modulo 2. Tangent dimensions and nonlifting alone do not imply W-flatness. ([SCH23](#ref-sch23), Theorem 5.2, p. 14; [DI21](#ref-di21), §7, Proposition 7.1 and Theorem 7.2, pp. 23–24; §6, Theorem 6.1, pp. 20–22; [DI21](#ref-di21), §3, Proposition 3.3 and Corollary 3.4, pp. 11–12)

*Needs:* [8.3](#topic-8-3); SchemeAndStackFoundations, SF.4; [8.1](#topic-8-1).

<a id="topic-8-5"></a>

### 8.5 Exceptional fibres do not lift modulo four

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec(Z/4Z); its geometric characteristic-two special fibre is assumed exceptional for contradiction.

No Enriques family over Z/4Z has an exceptional geometric special fibre.

Extend the residue field to F̄₂ and the nilpotent base to W₂(F̄₂). A nilpotent algebraic-space thickening of a scheme is a scheme, so this gives the flat proper scheme lift excluded by the geometric W₂ criterion. This step retains the algebraic-space family scope. ([SCH23](#ref-sch23), Theorem 5.2, p. 14; [DI21](#ref-di21), §7, Theorem 7.2, pp. 23–24)

*Needs:* [2.1](#topic-2-1); [8.3](#topic-8-3); SchemeAndStackFoundations, SF.0.

<a id="topic-8-6"></a>

### 8.6 No nonexceptional constant-Picard Enriques surface over F₂

Y/F₂ is an Enriques surface with constant full relative Picard group scheme (Z¹⁰⊕Z/2)_{F₂}. Its geometric base change is nonexceptional. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

There is no Enriques surface over F₂ that is both nonexceptional and has constant full Picard scheme.

Descend a genus-one fibration and every geometric one. Numerical contraction descent makes nonrational geometric fibres irreducible and the tame descent makes them simple. Require the exhaustive fourteen-plus-four classification and all three omitted exclusions before using the residual table. Exclude I₄* and both multiple and simple III*. For the classical base change to F̄₂, every fibration then has the two configurations excluded by the arbitrary-characteristic restricted-configurations theorem. This proves the desired contradiction only when both classification proofs are supplied. ([SCH23](#ref-sch23), §15 and Theorem 15.1 with its proof, p. 49)

*Needs:* [2.17](#topic-2-17); [5.1](#topic-5-1); [5.3](#topic-5-3); [5.7](#topic-5-7); [5.14](#topic-5-14); [6.12](#topic-6-12); [7.1](#topic-7-1); [7.3](#topic-7-3); [7.4](#topic-7-4); [2.12](#topic-2-12); [2.18](#topic-2-18).

<a id="topic-8-7"></a>

### 8.7 No Enriques surface over the integers

f:Y→S is a flat proper finitely presented algebraic-space Enriques family, with every geometric fibre Enriques. S=Spec Z, assumed for contradiction. Assume the fourteen-case rational-Jacobian completeness theorem and the three additional Enriques exclusions in [5.7](#topic-5-7).

There is no flat proper finitely presented algebraic-space family over Spec Z with geometric Enriques fibres; equivalently the groupoid M_Enr(Z) is empty.

Assume such a family. Layer 3 proves constant full Picard over ℤ. Its F₂ fibre inherits that constancy, and its ℤ/4 restriction makes the geometric fibre nonexceptional by the lifting obstruction. Apply the finite-field theorem. Both the exhaustive rational-Jacobian classification and the three additional Enriques exclusions are required in this proof; neither follows from the integral covering argument. ([SCH23](#ref-sch23), Theorem 5.1, p. 14; §15, proof of Theorem 15.1, p. 49)

*Needs:* [2.1](#topic-2-1); [3.13](#topic-3-13); [8.5](#topic-8-5); [8.6](#topic-8-6).

### Examples

The tangent-cohomology triples (h⁰(Θ),h¹(Θ),h²(Θ)) are (0,10,0) in the unobstructed case and (1,12,1) in the exceptional or supersingular case. In both cases h⁰−h¹+h²=−10. A sign +10 for χ(Θ) is incompatible with both triples.

The formally smooth base W(k)[[t₁,…,t₁₀]] has absolute Krull dimension eleven. In the exceptional or supersingular case the miniversal base has dimension twelve and ramification index at least two. Tangent and obstruction dimensions alone do not prove that this base is regular: the one-equation and flatness criterion is an additional input. A supersingular canonical bundle is trivial, so the differential theorem requiring exact order two cannot prove its nonlifting; its α₂ Picard obstruction is used instead.

A hypothetical Enriques algebraic space over ℤ/4, after base change to W₂(F̄₂), is a nilpotent thickening of a scheme and hence is a scheme. Thus the geometric nonlifting result applies. The final passage from ℤ to F₂ uses this obstruction and full-Picard constancy; it still depends on both classification proofs in the finite-field endpoint.

### Dependencies

Layers 0–7; SF.1 and SF.4 deformation theory, including the exact DI21 differential hypotheses; the A0 flat surface-Picard contract and R07.1 α₂ nonlifting; nilpotent scheme thickenings; and both classification proofs. The integral theorem uses the four-twist and full-Picard result of Layer 3, rather than assuming full Picard constancy at the start.

## Downstream consumers

**WeilConjectures**, Layer WC.7, takes the Enriques invariants of Layer 0 (b₁=0 and ρ=b₂=10, on the predicate of 0.1) for its count of surfaces with constant numerical Picard group. Any later work on Enriques surfaces over arbitrary fields, for instance over the reals, should use the predicate of 0.1 and the canonical coverings of Layers 1–2 rather than define its own. The finite-field configuration theorems supply the characteristic-two arithmetic endpoint for the integral theorem. The numerical-descent adapters, canonical-cover comparison and Enriques deformation statements can also be used separately, with their stated hypotheses. None of the lattice or incidence computations asserts that a candidate configuration is realized geometrically.

## References

Page numbers below refer to the indicated author manuscripts. They are not silently transferred to published pagination.

<a id="ref-sch23"></a>

- **SCH23.** Stefan Schröer, *There is no Enriques surface over the integers*, author manuscript, revision 19 July 2022, [author PDF](https://www.math.uni-duesseldorf.de/~schroeer/publications_pdf/EnriquesOverIntegers_Juli2022.pdf), 52 PDF pages, mathematical text pp. 1–49. The relevant locators appear at each target. The fourteen-case classification and the three additional exclusions go beyond what this source proves; see 5.1 and 5.7.

<a id="ref-esb21"></a>

- **ESB21.** Torsten Ekedahl and Nicholas I. Shepherd-Barron, *On exceptional Enriques surfaces*, [arXiv:math/0405510v2](https://arxiv.org/abs/math/0405510v2), 26 August 2021, 19 pages. Use §2 for canonical coverings and conductrices, §3 for fibre restrictions, Theorem 4.2 and Corollary 4.3 for exceptionality and distinguished configurations.

<a id="ref-di21"></a>

- **DI21.** Stefan Schröer, *The Deligne–Illusie theorem and exceptional Enriques surfaces*, author manuscript, 4 January 2021, [author PDF](https://www.math.uni-duesseldorf.de/~schroeer/publications_pdf/DeligneIllusie_2021.pdf), 34 PDF pages; published in *European Journal of Mathematics* 7 (2021), 489–525. Use the manuscript page numbers for Proposition 3.3, Corollary 3.4, Proposition 4.2, Theorem 6.1, Proposition 7.1 and Theorem 7.2.

<a id="ref-mmv22"></a>

- **MMV22.** Gebhard Martin, Giacomo Mezzedimi and Davide Cesare Veniani, *On extra-special Enriques surfaces*, [arXiv:2201.05481v1](https://arxiv.org/abs/2201.05481v1), submitted 14 January 2022, manuscript dated 17 January 2022, nine pages. Theorem 1.2 and Remark 1.5, pp. 1–2, identify the general partner theorem and its unique-fibration exception. The older proofs they cite are part of the targets that use them.

<a id="ref-fontaine"></a>

- **Fontaine.** Jean-Marc Fontaine, *Schémas propres et lisses sur ℤ*, preprint 91-02, [author scan](https://www.imo.universite-paris-saclay.fr/~fontaine/Zschemas.pdf). Theorem 1 and Remark (a), printed p. 3, PDF p. 4, give the low-degree Hodge obstruction with smooth proper local models. The journal article is *Proceedings of the Indo-French Conference on Geometry*, 1993, pp. 43–56; these journal pages are not the scan’s locators.

<a id="ref-stacks"></a>

- **Stacks Project.** [Tag 0D24, §99.11](https://stacks.math.columbia.edu/tag/0D24), Lemmas 99.11.3–99.11.4 and Proposition 99.11.8, for relative Picard descent, a section splitting the obstruction, and algebraic-space representability. [Tag 0D3D, Lemma 74.13.2](https://stacks.math.columbia.edu/tag/0D3D), for openness of relative ampleness; [Tag 0EMV, §68.11](https://stacks.math.columbia.edu/tag/0EMV), especially Lemma 68.11.4, for étale neighbourhoods at residue-field points; [Tag 0H74, Lemma 15.13.3](https://stacks.math.columbia.edu/tag/0H74), for smooth lifting over a Henselian pair. Tags are stable locators; section numbers are those read on 14 October 2026.
