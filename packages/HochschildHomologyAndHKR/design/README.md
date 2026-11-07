# Roadmap: Hochschild homology and the Hochschild–Kostant–Rosenberg theorem

**Summary.** Build the classical, ungraded Hochschild theory of an associative unital algebra
`A` over a commutative ring `k`, with coefficients in an arbitrary `A`-bimodule `M`, on Mathlib's
homological-complex carriers, and prove the cohomological Hochschild–Kostant–Rosenberg theorem.
The chain complex `C_•(A,M)` and the cochain complex `C^•(A,M)` are built as the alternating
(co)face complexes of a simplicial and a cosimplicial `k`-module, so that Mathlib's Dold–Kan
normalisation gives the normalisation theorem over every `k`. The low degrees are identified
(`HH_0 = M/[A,M]`, `HH^0 = M^A`, `HH^1 = Der/Inn`, `HH_1(R,R) = Ω¹_{R/k}` for commutative `R`,
and `HH²` as the classes of `k`-split square-zero extensions); for `k`-projective `A` the bar
resolution identifies `HH^n(A,M)` with Mathlib's `Ext^n` over the enveloping algebra
`Aᵉ = A ⊗_k Aᵐᵒᵖ` and `HH_n(A,M)` with `Tor_n^{Aᵉ}(M,A)`. The cup product makes `HH^•(A,A)` a
graded `k`-algebra, equal up to sign to the Yoneda algebra. An explicit sign dictionary
identifies these complexes with the Hochschild cochains and chains of DGAInfinity Layer 8 for
`A` in degree zero; through it Gerstenhaber's homotopy formula gives graded commutativity, and
the antisymmetrisation map of RefinedTraceMethods §1.9 acts on the classical complex. The end
theorems are: for `R` smooth and projective over an arbitrary commutative ring `k`, the map
`D₁ ∧ ⋯ ∧ D_n ↦ [D₁ ∪ ⋯ ∪ D_n]` is an isomorphism of graded `R`-algebras
`⋀^•_R Der_k(R) ≅ HH^•(R,R)`, equal to the duality isomorphism
`HH^n(R,R) ≅ Hom_R(Ω^n_{R/k}, R)`; the determinant cocycle `⟨D₁,…,D_n⟩` represents `n!` times
this class, so the normalised HKR map `(1/n!)⟨…⟩`, defined when `n!` is invertible in `k`,
realises the isomorphism; and for polynomial algebras over every `k` the Koszul resolution gives both
`HH_•` and `HH^•` with explicit bases, independently of any smoothness input.

## Scope and ownership

This roadmap owns:

- the ungraded Hochschild simplicial module, cosimplicial module, chain complex `C_•(A,M)`,
  cochain complex `C^•(A,M)`, Hochschild homology and cohomology with arbitrary bimodule
  coefficients, their functoriality in `M` and in `A`, and the long exact sequences in `M`
  (Layer 1); the `R`-linear structure of these complexes for a commutative algebra `R` (§1.5);
- the normalised chain and cochain complexes and the normalisation theorem over every
  commutative `k` (Layer 2);
- the low-degree identifications, bimodule derivations and inner derivations, the twisted
  square-zero extension of a 2-cochain and the classification of `k`-split square-zero
  extensions by `HH²` (Layer 3);
- the bar resolution over `Aᵉ`, the identification of `HH^n` with Mathlib's `Ext` and the
  construction of `Tor` over `Aᵉ` with `HH_n ≅ Tor_n` (Layer 4);
- the cup product on `C^•(A,A)`, the Leibniz rule, the graded algebra `HH^•(A,A)`, the
  computation of Yoneda products from cocycles on projective resolutions and the comparison of the
  cup product with the Yoneda product (Layer 5);
- the comparison, with an explicit sign dictionary, between the ungraded complexes and the
  Hochschild cochains and chains of DGAInfinity Layer 8 for an algebra in degree zero, the
  resulting Gerstenhaber homotopy formula and graded commutativity of `HH^•(A,A)`, and the
  description of the antisymmetrisation and projection maps of RefinedTraceMethods §1.9 on the
  classical complex (Layer 6);
- the duality between cochains and chains of a commutative algebra, the duality lemma for
  complexes of projective modules with projective homology, exterior powers of finite projective
  modules and their duals, polyvector fields `T^n_{R/k} = ⋀^n_R Der_k(R)`, the determinant cocycle,
  the unnormalised and normalised HKR maps, the canonical HKR map and the cohomological HKR
  theorem (Layer 7);
- the polynomial case through the Koszul bimodule resolution (Layer 8).

It leaves to other roadmaps, by section:

- **DGAInfinity** Layers 0–1: the signed graded multilinear calculus, suspension, brace
  operations with their Koszul signs, and DG algebras. Layer 8: Hochschild chains and cochains of
  DG and `A∞` algebras and categories, their normalised versions for strict units, the cup
  product, braces, the Gerstenhaber bracket, the Hochschild differential `[m,−]`, invariance
  under quasi-equivalence and Morita equivalence, and the deformation reading of `HH²` and `HH³`
  for formal deformations. This roadmap imports the bracket and the braces through §6.1 and plans
  none of them again.
- **KTheoryFiniteLocalFields** §4.0 (Cyclic homology foundations): the derived Hochschild chains of
  ordinary algebras built on DGAInfinity Layer 8, the cyclic structure, cyclic, negative cyclic
  and periodic homology, the SBI sequence and the smooth HKR comparison
  `HH_n(A/k) ≅ Ω^n_{A/k}` in homology.
- **RefinedTraceMethods** §1.9: the antisymmetrisation `ε_n : Ω^n_{A/k} → HH_n(A/k)`, the
  projection `π_n`, the identity `π_n ε_n = n!`, the multiplicativity of `ε` and the isomorphism
  `ε₁`; the identity `B ∘ ε_n = ε_{n+1} ∘ d` with Connes' operator. §1.10: the derived HKR
  filtration and Hochschild homology over non-flat bases.
- **DerivedModuleAlgebra** §0.K.1: the Koszul complex of a finite sequence in a commutative ring
  and its acyclicity for weakly regular sequences.
- **DerivedDeRhamCohomology** Layer 2: the algebraic de Rham complex, its wedge product and
  differential. No statement here uses the de Rham differential.
- **NoncommutativeGeometry** N1: scalar-valued and continuous cyclic cochains of complex
  algebras. **BanachAlgebras** Layer 6: bounded Hochschild cohomology of Banach algebras and
  Banach square-zero extensions. **LanglandsParameterStacks** §1.17: the map from
  `H¹(L^∨)` to `HH²` and the action of Hochschild cohomology on self-Ext of complexes.
  **ZigzagPreprojective** Layer 7: bigraded Hochschild cohomology of zigzag and Ginzburg DG
  algebras.

Topological Hochschild homology, the HKR filtration on derived Hochschild homology, Kontsevich
formality, deformation quantisation and the Schouten–Nijenhuis bracket are not part of this
roadmap.

Already in the pinned libraries, and cited rather than planned: Mathlib's `Derivation` (for
commutative algebras), `KaehlerDifferential` with `KaehlerDifferential.linearMapEquivDerivation`,
`ExteriorAlgebra.exteriorPower` with `exteriorPower.pairingDual` and its bijectivity for finite
free modules, `Algebra.Smooth`, `Abelian.Ext` with its computation from projective resolutions,
`Functor.leftDerived`, the Dold–Kan normalisation of simplicial objects, `TrivSqZeroExt`;
Tau Ceti's `TauCeti.BalancedTensorProduct`, the Kronecker map and universal coefficient sequence
(`TauCeti.ChainComplex.kronecker`), `TauCeti.derivationLieAlgebra` with
`TauCeti.innerDerivation`, and the suspended Hochschild cochains of positive arity of an `A∞`
algebra: the brace `TauCeti.ReducedTensorWords.brace` and the Gerstenhaber bracket
`TauCeti.ReducedTensorWords.gerstenhaberBracket` with their pre-Lie, antisymmetry and Jacobi
identities, the Hochschild differential `TauCeti.AInfinityAlgebra.hochschildDifferential` with
its Leibniz rule for the bracket, the cochain complex
`TauCeti.AInfinityAlgebra.PositiveHochschild.complex`, its cohomology
`TauCeti.AInfinityAlgebra.PositiveHochschild.Cohomology` with the bracket
`TauCeti.AInfinityAlgebra.PositiveHochschild.cohomologyBracket`, and the normalised cochains
`TauCeti.AInfinityAlgebra.PositiveHochschild.normalizedCochains` for a strict unit. The pin does
not include cochains of arity zero (so neither `HH⁰` nor the quotient of the derivations by the
inner ones), the cup product and the multiple brace `m{F,G}`, or Hochschild chains; these are
imported from DGAInfinity Layer 8 by section, and Layer 6 compares both with the classical
complexes.

Variants kept here, each differing in one stated respect from an existing object:

- the ungraded complexes differ from DGAInfinity Layer 8's by allowing an arbitrary bimodule of
  coefficients and by living in Mathlib's `HomologicalComplex` of `ModuleCat k`, where `Ext`, `Tor`
  and the HKR comparison are stated;
- the normalisation theorem of Layer 2 is for ordinary algebras with arbitrary bimodule
  coefficients, where DGAInfinity Layer 8's is for strictly unital DG algebras with coefficients
  in the algebra;
- the `HH²` classification of §3.6 is for an arbitrary bimodule without a deformation parameter,
  where DGAInfinity Layer 8 reads `HH²(A,A)` as infinitesimal deformations and BanachAlgebras
  Layer 6 classifies bounded extensions of Banach algebras;
- the cup product of §5.1 is the ungraded product on the carrier of Layer 1; §6.1 proves that it
  is DGAInfinity Layer 8's brace expression up to an explicit sign;
- `HH_1(R,R) ≅ Ω¹_{R/k}` of §3.4 is for the classical complex of every commutative `R`, flat or
  not, where RefinedTraceMethods §1.9 states `ε₁` on derived Hochschild chains.

Generality. The ground ring `k` is an arbitrary commutative ring throughout. The identification
`HH^n ≅ Ext^n` and `HH_n ≅ Tor_n` is stated for `A` projective as a `k`-module, where the bar
complex is a projective resolution; the comparison with derived Hochschild chains is stated for
`k`-flat `A`. The cohomological HKR theorem is stated for `R` smooth over `k` in Mathlib's sense
(`Algebra.Smooth`: formally smooth and finitely presented) and projective as a `k`-module. Both
hypotheses are needed by the route: smoothness gives that `HH_•(R,R)` is finite projective, and
`k`-projectivity makes `C_•(R,R)` a complex of projective `R`-modules, which is what turns the
cohomology of `Hom_R(C_•(R,R), M)` into `Hom_R(HH_•(R,R), M)` (HKR62 Lemma 4.1 and Theorem 5.1,
whose standing hypothesis is a `K`-projective algebra). Smoothness does not imply
`k`-projectivity: `ℤ → ℤ[1/2]` is étale and `ℤ[1/2]` is not a projective `ℤ`-module (§7.6
Checks). The field case and the regular affine case over a perfect field are special cases. The
unnormalised determinant map `T^n → HH^n(R,R)` is `n!` times the canonical isomorphism, so it is
an isomorphism exactly when multiplication by `n!` is bijective on `T^n_{R/k}`, which fails for
`R = 𝔽₂[x,y]` and `n = 2`, and for `R = ℤ[x,y]` and `n = 2`; the theorem is therefore stated for the
canonical map, and the determinant map is identified as `n!` times it.

## Conventions

- **Rings and universes.** `k` is a commutative ring, `A` a ring with `Algebra k A`, and `R` a
  commutative ring with `Algebra k R`. The ring `k`, the algebras and all coefficient modules
  live in one universe `u`; complexes are objects of `ChainComplex (ModuleCat.{u} k) ℕ` and
  `CochainComplex (ModuleCat.{u} k) ℕ`.
- **Bimodules.** An `A`-bimodule is a `k`-module `M` with `Module A M`, `Module Aᵐᵒᵖ M`,
  `SMulCommClass A Aᵐᵒᵖ M`, `IsScalarTower k A M` and `IsScalarTower k Aᵐᵒᵖ M`; the right action is
  `m · a = op a • m`. This is the convention of `TauCeti.BalancedTensorProduct`. `A` is a
  bimodule over itself by left and right multiplication. For commutative `R`, an `R`-module `M`
  is the symmetric bimodule with `m · r = r m`.
- **Enveloping algebra.** `Aᵉ = A ⊗[k] Aᵐᵒᵖ`. A bimodule is a left `Aᵉ`-module through
  `TensorProduct.Algebra.module`, so `(a ⊗ op b) · m = a m b`, as in Ginz05 line 752. For `Tor`, a
  bimodule is a right `Aᵉ`-module by `m · (a ⊗ op b) = b m a`, as in Ginz05 lines 963–966.
- **Tensor powers.** `A^{⊗n}` is `⨂[k]^n A`. The chains are `C_n(A,M) = M ⊗[k] A^{⊗n}` and the
  cochains are `C^n(A,M) = MultilinearMap k (fun _ : Fin n ↦ A) M`, identified with
  `A^{⊗n} →ₗ[k] M` by `PiTensorProduct.lift`. `C_0(A,M) = M` and `C^0(A,M) = M`.
- **Hochschild boundary** (Ginz05 lines 973–976):
  `b(m ⊗ a₁ ⊗ ⋯ ⊗ a_n) = m a₁ ⊗ a₂ ⊗ ⋯ ⊗ a_n + Σ_{i=1}^{n−1} (−1)^i m ⊗ ⋯ ⊗ a_i a_{i+1} ⊗ ⋯ ⊗ a_n
  + (−1)^n a_n m ⊗ a₁ ⊗ ⋯ ⊗ a_{n−1}`.
  Witness: in degree one `b(m ⊗ a) = m a − a m`; for `A = M = Mat₂(k)`, `m = E₁₂`, `a = E₂₁` this is
  `E₁₁ − E₂₂ ≠ 0`, and for commutative `A = M` the degree-one boundary is zero.
- **Hochschild coboundary** (Ginz05 lines 1055–1062; the same formula as BanachAlgebras Layer 6):
  `δf(a₁,…,a_{n+1}) = a₁ f(a₂,…,a_{n+1}) + Σ_{i=1}^n (−1)^i f(…, a_i a_{i+1}, …)
  + (−1)^{n+1} f(a₁,…,a_n) a_{n+1}`.
  Witnesses: `δm(a) = a m − m a` on `C⁰ = M`, and `δf(a,b) = a f(b) − f(ab) + f(a) b` on `C¹`.
  Ginzburg's `ad m` of Ginz05 line 404 is `a ↦ m a − a m = −δm(a)`; inner derivations are the
  image of `δ` in either sign.
- **Cup product** (Ginz05 lines 1339–1341): `(f ∪ g)(a₁,…,a_{p+q}) = f(a₁,…,a_p) g(a_{p+1},…,a_{p+q})`
  for `f ∈ C^p(A,A)`, `g ∈ C^q(A,A)`. Witness: for the derivations `∂_x, ∂_y` of `k[x,y]`,
  `(∂_x ∪ ∂_y)(x,y) = 1` and `(∂_y ∪ ∂_x)(x,y) = 0`.
- **Gerstenhaber composition.** For `f ∈ C^p(A,A)` and `g ∈ C^q(A,A)`,
  `(f ∘ g)(a₁,…,a_{p+q−1}) = Σ_{i=1}^{p} (−1)^{(i−1)(q−1)} f(a₁,…,a_{i−1}, g(a_i,…,a_{i+q−1}), …)`
  (Ginz05 lines 1359–1363). It is not a new operation: §6.1 proves it is the transport of
  DGAInfinity's brace `F{G}`.
- **Suspension dictionary with DGAInfinity.** For `f ∈ C^n(A,A)`, its suspension `Θf` is the map
  `(sA)^{⊗n} → sA` with `Θf ∘ s^{⊗n} = s ∘ f`, the commuting square fixed by DGAInfinity's primary
  `A∞` convention; on degree-zero inputs `Θf(sa₁ ⊗ ⋯ ⊗ sa_n) = s f(a₁,…,a_n)` with no sign, and `Θf`
  has degree `n − 1`. With `m` the suspended multiplication, the Koszul tensor-map rule gives
  `Θ(δf) = (−1)^{n+1} [m, Θf]`, `Θ(f ∪ g) = (−1)^{p(q−1)} m{Θf, Θg}` and `Θ(f ∘ g) = Θf{Θg}`.
  Witnesses: for `x ∈ C⁰`, `[m, Θx](sa) = s(xa − ax) = −Θ(δx)(sa)`; for `f ∈ C¹`,
  `[m, Θf](sa ⊗ sb) = s(f(a) b + a f(b) − f(ab)) = Θ(δf)(sa ⊗ sb)`; for `f ∈ C¹` and `y ∈ C⁰`,
  `m{Θf, Θy}(sa) = −s(f(a) y) = −Θ(f ∪ y)(sa)`.
- **Normalisation.** `Ā = A ⧸ k·1` as a `k`-module. Normalised chains are the quotient by the
  span of chains with some `a_i = 1`; normalised cochains are those vanishing whenever some
  argument equals `1`.
- **Commutative algebras.** For commutative `R` and an `R`-bimodule `M`, `C_•(R,M)` is a complex of
  `R`-modules through the left action on the coefficient factor and `C^•(R,M)` through the left
  action on values (§1.5). `Ω^n_{R/k}` is
  `⋀[R]^n Ω[R⁄k]` (Mathlib's `ExteriorAlgebra.exteriorPower` of `KaehlerDifferential`), with
  `dr = KaehlerDifferential.D k R r`. Polyvector fields are `T^n_{R/k} = ⋀[R]^n Der_k(R)` with
  `Der_k(R) = Derivation k R R`, so `T⁰ = R` and `T¹ = Der_k(R)`.
- **Determinant pairing.** The pairing of `⋀^n` of the dual with `⋀^n` is Mathlib's
  `exteriorPower.pairingDual`, `(f₁ ∧ ⋯ ∧ f_n)(v₁ ∧ ⋯ ∧ v_n) = det(f_j(v_i))`
  (`exteriorPower.pairingDual_ιMulti_ιMulti`). The determinant cocycle is
  `⟨D₁,…,D_n⟩(r₁,…,r_n) = det(D_j(r_i))`, with the same index convention. Witness on `k[x,y]`:
  `⟨∂_x, ∂_y⟩(x,y) = 1` and `⟨∂_x, ∂_y⟩(y,x) = −1`.
- **Antisymmetrisation and projection** are those of RefinedTraceMethods §1.9:
  `ε_n(r₀ dr₁ ∧ ⋯ ∧ dr_n) = [Σ_{σ∈S_n} sgn(σ) r₀ ⊗ r_{σ(1)} ⊗ ⋯ ⊗ r_{σ(n)}]` and
  `π_n(r₀ ⊗ ⋯ ⊗ r_n) = r₀ dr₁ ∧ ⋯ ∧ dr_n` (summing over `σ⁻¹` instead of `σ` gives the same chain).
  Witness on `k[x,y]`: `ε₂(dx ∧ dy) = [1 ⊗ x ⊗ y − 1 ⊗ y ⊗ x]` and `π₂ ε₂(dx ∧ dy) = 2 dx ∧ dy`.
- **Normalising factors.** Pairing `⟨D₁,…,D_n⟩` with `ε_n(dr₁ ∧ ⋯ ∧ dr_n)` gives
  `n! · det(D_j(r_i))`, and pairing `D₁ ∪ ⋯ ∪ D_n` gives `det(D_j(r_i))`. Witness on `k[x,y]`:
  `⟨∂_x, ∂_y⟩` pairs with `1 ⊗ x ⊗ y − 1 ⊗ y ⊗ x` to `1 − (−1) = 2`, and `∂_x ∪ ∂_y` pairs with it to
  `1 − 0 = 1`.
- **Smoothness** is Mathlib's `Algebra.Smooth` (`Algebra.FormallySmooth` together with
  `Algebra.FinitePresentation` as an algebra), which agrees with the definition of StacksSmooth
  Tag 00T2 by Tag 00TN. Finite presentation as an algebra does not make `R` finitely presented,
  or projective, as a `k`-module.

## Exact supplier contracts

### From Mathlib

- **Complexes and homology.** `HomologicalComplex`, `ChainComplex`, `CochainComplex`,
  `HomologicalComplex.homology`, `HomologicalComplex.homologyMap`, `HomotopyEquiv`, `QuasiIso`;
  the long exact homology sequence `CategoryTheory.ShortComplex.ShortExact.δ` with
  `CategoryTheory.ShortComplex.ShortExact.homology_exact₁`, `homology_exact₂` and
  `homology_exact₃` (`Mathlib/Algebra/Homology/HomologySequence.lean`).
- **Simplicial normalisation.** `CategoryTheory.SimplicialObject`,
  `CategoryTheory.CosimplicialObject`, `AlgebraicTopology.alternatingFaceMapComplex`,
  `AlgebraicTopology.alternatingCofaceMapComplex`, `AlgebraicTopology.normalizedMooreComplex`,
  `AlgebraicTopology.DoldKan.homotopyEquivNormalizedMooreComplexAlternatingFaceMapComplex`
  (the inclusion of the normalised Moore complex is a homotopy equivalence in any abelian
  category), `AlgebraicTopology.DoldKan.PInfty`, `AlgebraicTopology.DoldKan.QInfty`,
  `AlgebraicTopology.DoldKan.DegeneraciesVanish` and
  `AlgebraicTopology.DoldKan.degeneraciesVanish_iff_QInfty_f_comp`
  (`Mathlib/AlgebraicTopology/DoldKan/Degeneracies.lean`), and
  `CategoryTheory.SimplicialObject.Augmented.ExtraDegeneracy`. These hold in every abelian
  category; nothing about flatness of the terms is assumed.
- **Tensor algebra.** `TensorProduct`, `PiTensorProduct` with `PiTensorProduct.lift`,
  `TensorPower.mulEquiv`, `MultilinearMap`, `Algebra.TensorProduct`, `MulOpposite`,
  `TensorProduct.Algebra.module` (a `Module (A ⊗[R] B) M` from commuting actions; not an instance),
  `Module.Projective.tensorProduct` (`Mathlib/Algebra/Module/Projective.lean`: `M ⊗[R₀] N` is
  `R`-projective for `M` projective over `R` and `N` projective over `R₀`), `Module.Flat`.
- **Ext, Tor and derived functors.** `CategoryTheory.ProjectiveResolution`,
  `CategoryTheory.Abelian.Ext` with `CategoryTheory.Abelian.Ext.comp` (the Yoneda product), the
  instance `HasExt.{v} (ModuleCat.{v} R)` of `Mathlib/Algebra/Category/ModuleCat/Ext/HasExt.lean`
  (for `Small.{v} R`), `CategoryTheory.ProjectiveResolution.extMk`,
  `CategoryTheory.ProjectiveResolution.extMk_surjective` and
  `CategoryTheory.ProjectiveResolution.extMk_eq_zero_iff` (`Mathlib/CategoryTheory/Abelian/Projective/Ext.lean`:
  every class of `Ext X Y n` comes from a cocycle on a projective resolution, with the
  coboundaries identified), `CategoryTheory.Functor.leftDerived` with
  `CategoryTheory.ProjectiveResolution.isoLeftDerivedObj`, and the scoped instance
  `ModuleCat.Algebra.instLinear` making `ModuleCat S` linear over a commutative `S₀` with
  `Algebra S₀ S`. The group-cohomology identifications `groupCohomologyIsoExt` and the separately
  derived `Rep.Tor` are the template for §§4.4–4.5: Mathlib's monoidal `Tor` does not apply to a
  noncommutative `Aᵉ`.
- **Square-zero extensions.** `TrivSqZeroExt` for a bimodule (`Module R M`, `Module Rᵐᵒᵖ M`), with
  `TrivSqZeroExt.algebra'`, `TrivSqZeroExt.fstHom`, `TrivSqZeroExt.inl` and `TrivSqZeroExt.inr`;
  `Subalgebra.center`.
- **Differentials and derivations.** `Derivation` (which requires a commutative algebra),
  `KaehlerDifferential`, `KaehlerDifferential.D`, `KaehlerDifferential.span_range_derivation`,
  `KaehlerDifferential.linearMapEquivDerivation` (`(Ω[S⁄R] →ₗ[S] M) ≃ₗ[S] Derivation R S M`), the
  instance `Module.FinitePresentation S Ω[S⁄R]` for `Algebra.FinitePresentation R S`
  (`Mathlib/RingTheory/Extension/Cotangent/Basic.lean`), `MvPolynomial.pderiv`.
- **Smoothness.** `Algebra.FormallySmooth` (whose field
  `Algebra.FormallySmooth.projective_kaehlerDifferential` makes `Ω[A⁄R]` projective),
  `Algebra.Smooth` (formally smooth and finitely presented as an algebra, not as a module),
  `Algebra.Smooth.flat`, and the `Algebra.FormallySmooth` instance for `MvPolynomial`.
- **Exterior powers.** `ExteriorAlgebra.exteriorPower` (notation `⋀[R]^n M`),
  `exteriorPower.ιMulti`, `exteriorPower.map`, `exteriorPower.zeroEquiv`, `exteriorPower.oneEquiv`,
  `exteriorPower.alternatingMapLinearEquiv`, `exteriorPower.instFinite`, `exteriorPower.instFree`,
  `exteriorPower.pairingDual` with `exteriorPower.pairingDual_ιMulti_ιMulti`,
  `exteriorPower.bijective_pairingDual` (stated for `Module.Free` and `Module.Finite` only; the
  finite projective case is §7.3), `exteriorPower.subsingleton_of_span_eq_top_of_card_lt`, and
  `Matrix.det`. Mathlib has no `Module.Projective` instance for exterior powers.
- **Regular sequences.** `RingTheory.Sequence.IsWeaklyRegular`. Mathlib has no lemma that the
  differences of two copies of the variables of a polynomial ring form a regular sequence
  (§8.1).
- Mathlib has no Hochschild complex of an algebra, no derivation into a bimodule over a
  noncommutative algebra, no Koszul complex and no `Tor` over a noncommutative ring.

### From Tau Ceti

- `TauCeti.BalancedTensorProduct k A M N` (`TauCeti/LinearAlgebra/TensorProduct/Balanced/Basic.lean`):
  the tensor product of a right `A`-module and a left `A`-module over a noncommutative `A`, with
  `TauCeti.BalancedTensorProduct.tmul`, `TauCeti.BalancedTensorProduct.induction_on`,
  `TauCeti.BalancedTensorProduct.hom_ext`, `TauCeti.BalancedTensorProduct.lid`,
  `TauCeti.BalancedTensorProduct.rid` and `TauCeti.BalancedTensorProduct.outerFactors`
  (`(M ⊗[k] L) ⊗[A] (N ⊗[k] P) ≃ (M ⊗[A] N) ⊗[k] (L ⊗[k] P)`). It is an ordinary, underived
  tensor product.
- `TauCeti.ChainComplex.kronecker` (`TauCeti/Algebra/Homology/Kronecker.lean`): the Kronecker map
  `Hⁱ(Hom(X,Y)) → (Hᵢ(X) ⟶ Y)` for a chain complex in a `k`-linear abelian category, with
  `TauCeti.ChainComplex.kronecker_homologyπ`, `TauCeti.ChainComplex.kronecker_naturality` and
  `TauCeti.ChainComplex.kronecker_surjective_of_isSplitMono` (surjective when the cycles are a
  split subobject); `TauCeti.ChainComplex.extToHomology` and
  `TauCeti.ChainComplex.exact_extToHomology_kronecker`
  (`TauCeti/Algebra/Homology/UniversalCoefficient/Basic.lean`): the universal coefficient
  sequence `0 → Ext¹(H_j(X),Y) → Hⁱ(Hom(X,Y)) → (Hᵢ(X) ⟶ Y) → 0` in degree `i = j + 1`, under the
  hypotheses that the cycles `Z_i ⟶ X_i` and `Z_j ⟶ X_j` are split and `Z_j` is projective.
- `TauCeti.derivationLieAlgebra R A` (`TauCeti/Algebra/Lie/Derivation/Basic.lean`): derivations of
  a nonassociative algebra as a Lie subalgebra of `Module.End R A`, with
  `TauCeti.innerDerivation` (`z ↦ ⁅z, −⁆`, that is `a ↦ z a − a z`) and
  `TauCeti.derivationEquivDerivationLieAlgebra` (agreement with Mathlib's `Derivation R A A` for
  commutative `A`).
- `TauCeti.AInfinityAlgebra`, `TauCeti.AInfinity.IsSuspension`, `TauCeti.IsDGAlgebra` and
  `TauCeti.IsNonUnitalDGAlgebra.toAInfinityAlgebra` (`TauCeti/Algebra/Homology/AInfinity/`): the
  suspended bar convention of DGAInfinity, which fixes the sign of `Θ` in the conventions. The
  suspension sign of `TauCeti.AInfinity.IsSuspension` is `(−1)^{suspExp}` with
  `suspExp = Σ_i (n − 1 − i) d_i` for inputs of degrees `d_i` (`MultilinearMap.suspend` and
  `MultilinearMap.suspExp`, `TauCeti/LinearAlgebra/Graded/Shift.lean`), which is `0` on inputs of
  degree zero: `Θf(sa₁ ⊗ ⋯ ⊗ sa_n) = s f(a₁,…,a_n)` with no sign. The shifted grading
  `𝒜.grading.shift 1` places `sA` in degree `−1` (`TauCeti/Algebra/Module/GradedModule/Shift.lean`:
  the degree-`p` piece of the shift by `1` is the degree-`(p + 1)` piece); the suspension changes
  the grading, not the module.
- `TauCeti.ReducedTensorWords.brace` and `TauCeti.ReducedTensorWords.gerstenhaberBracket`
  (`TauCeti/LinearAlgebra/TensorCoalgebra/Brace.lean`): for a graded module `M`, its reduced tensor
  coalgebra `Tᶜ(M)` (`TauCeti.ReducedTensorWords`, words of positive length) and linear maps
  `F, G : Tᶜ(M) → M` of degrees `p` and `q`, the brace `F{G} = F ∘ D G`, where `D G`
  (`TauCeti.ReducedTensorWords.gradedCoderiv`) inserts `G` into every block of consecutive letters
  with the Koszul sign `(−1)^{q · (sum of the degrees of the letters before the block)}`, and the
  bracket `[F,G] = F{G} − (−1)^{pq} G{F}`; with the pre-Lie identity
  `F{G}{H} − (−1)^{qr} F{H}{G} = F{[G,H]}`
  (`TauCeti.ReducedTensorWords.brace_brace_sub_smul_brace_brace`), graded antisymmetry
  (`TauCeti.ReducedTensorWords.gerstenhaberBracket_swap`) and the graded Jacobi identity
  (`TauCeti.ReducedTensorWords.leibniz_gerstenhaberBracket`). These are the operations §6.1
  transports; nothing is assumed of them beyond their definitions.
- `TauCeti.AInfinityAlgebra.hochschildDifferential`
  (`TauCeti/Algebra/Homology/AInfinity/Algebra/Hochschild/Basic.lean`): for an `A∞` algebra `𝒜`
  with suspended Taylor map `m` and a cochain `F` of degree `q`, the Hochschild differential
  `[m, F] = m{F} − (−1)^q F{m}` (`TauCeti.AInfinityAlgebra.hochschildDifferential_eq_brace_sub`),
  squaring to zero, with the Leibniz rule `[m,[F,G]] = [[m,F],G] + (−1)^p [F,[m,G]]` for `F` of
  degree `p` (`TauCeti.AInfinityAlgebra.hochschildDifferential_gerstenhaberBracket`) and, for `ψ`
  of degree zero, the pre-Lie identity `m{ψ}{ψ} − m{ψ{ψ}} = [m,ψ]{ψ} + ψ{[m,ψ]} − [m, ψ{ψ}]`
  (`TauCeti.AInfinityAlgebra.brace_brace_sub_brace_brace_eq_hochschildDifferential`). All degrees
  are suspended degrees: an unsuspended map of arity `n` and internal degree `r` has degree
  `r + n − 1`.
- `TauCeti.AInfinityAlgebra.PositiveHochschild.cochains`,
  `TauCeti.AInfinityAlgebra.PositiveHochschild.complex`,
  `TauCeti.AInfinityAlgebra.PositiveHochschild.bracket`,
  `TauCeti.AInfinityAlgebra.PositiveHochschild.Cohomology`,
  `TauCeti.AInfinityAlgebra.PositiveHochschild.cohomologyBracket` and
  `TauCeti.AInfinityAlgebra.PositiveHochschild.normalizedCochains`
  (`TauCeti/Algebra/Homology/AInfinity/Algebra/Hochschild/Complex.lean`, `Cohomology.lean` and
  `Normalized.lean`): the homogeneous cochains of degree `p`, the `ℤ`-indexed cochain complex in
  `ModuleCat k` with differential `[m,−]`, the bracket of homogeneous cochains, the cohomology
  `Z^p/B^p` with the induced bracket (bilinear, graded antisymmetric, Jacobi), and the cochains
  vanishing on words containing a strict unit `e`. The complex has positive arities only: no
  arity-zero cochains, no cup product, no multiple brace, no chains.
- `CategoryTheory.ProjectiveResolution.extLinearEquiv` and
  `CategoryTheory.ProjectiveResolution.isoExt_hom_comp_homologyMap`
  (`TauCeti/Algebra/Homology/Ext/ProjectiveResolution.lean`): computing `Ext` from two resolutions
  related by a chain map over the identity.

### From TauCetiRoadmap.DGAInfinity

- Standing conventions and Layer 0: cohomological grading, the degree `−1` suspension `s`, the
  Koszul tensor-map rule `(f ⊗ g)(x ⊗ y) = (−1)^{|g||x|} f(x) ⊗ g(y)`, and the multiple brace
  `F{G,H}` with the exact Koszul sign for substituting operations after the first inputs.
  Assumed: Layer 0's single brace `F{G}` is the pinned `TauCeti.ReducedTensorWords.brace` (the
  same Koszul sign), the multiple brace obeys the same rule, and the brace relation
  `(F{G}){H} − F{G{H}} = F{G,H} + (−1)^{|G||H|} F{H,G}` holds; its antisymmetrisation in `(G,H)` is
  the pinned pre-Lie identity `TauCeti.ReducedTensorWords.brace_brace_sub_smul_brace_brace`.
- Layer 1: an ordinary `k`-algebra is a DG algebra concentrated in degree zero with zero
  differential.
- Layer 8: the Hochschild cochains of such an algebra as coderivation components
  `(sA)^{⊗n} → sA` in all arities `n ≥ 0`, the cup product as the multiple brace `m{F,G}`, the
  Gerstenhaber bracket `[F,G] = F{G} − (−1)^{|F||G|} G{F}` and the Hochschild differential `[m, −]`
  on the full complex; and the Hochschild chains of the algebra (the cyclic bar construction with
  differential determined by `m`). Assumed: in arities `n ≥ 1` Layer 8's cochains, brace, bracket
  and differential are the pinned `TauCeti.AInfinityAlgebra.PositiveHochschild.cochains`,
  `TauCeti.ReducedTensorWords.brace`, `TauCeti.ReducedTensorWords.gerstenhaberBracket` and
  `TauCeti.AInfinityAlgebra.hochschildDifferential`, and the arity-zero cochains (elements of
  `sA`) extend them with the same Koszul signs; for an algebra in degree zero the chain
  differential is, termwise, the suspended classical boundary up to a sign depending only on the
  degree; §6.3 fixes the resulting signs.

### From TauCetiRoadmap.DerivedModuleAlgebra

- §0.K.1 (Koszul complex of a finite sequence): for a commutative ring `B` and `x = (x₁,…,x_m)`
  in `B`, the chain complex `K(x)` with `K(x)_j = ⋀^j B^m` and `d₁(v) = Σ x_i v_i`, `H₀(K(x)) = B/(x)`,
  functoriality in the sequence, and acyclicity in positive degrees when `x` is weakly regular, so
  that `K(x) → B/(x)` is a finite free resolution.

### From TauCetiRoadmap.KTheoryFiniteLocalFields

- §4.0 (Cyclic homology foundations): `HH_n(A/k)` for an ordinary `k`-algebra `A`, the homology
  of DGAInfinity Layer 8's Hochschild chains of `A` in degree zero over `k`; the checks
  `HH₀(A) = A/[A,A]`; and the smooth HKR comparison `HH_n(A/k) ≅ Ω^n_{A/k}` for smooth
  commutative `A`.

### From TauCetiRoadmap.RefinedTraceMethods

- §1.1 (The cyclic enhancement of supplied derived Hochschild chains): for an ordinary `k`-algebra
  `A` flat as a `k`-module, the derived Hochschild homology `HH_n(A/k)` of KTheoryFiniteLocalFields
  §4.0 is the homology of the cyclic bar complex `(C_•(A/k), b)`, the derived object being the
  totalisation of the cyclic bar construction; for non-flat `A` the two differ (`k = ℤ`, `A = 𝔽_p`).
- §1.9 (The antisymmetrisation map and the HKR projection): for commutative `A` flat over `k`, the
  antisymmetrisation `ε_n : Ω^n_{A/k} → HH_n(A/k)` and the projection `π_n`, with the formulas of
  the conventions, `π_n ∘ ε_n = n!`, multiplicativity of `ε` for the shuffle product, naturality
  in `k → A`, and `ε₁` an isomorphism inverse to `a₀ ⊗ a₁ ↦ a₀ da₁`.

### Gaps the named suppliers must provide

- **smooth-hkr-antisymmetrisation** (supplier RefinedTraceMethods, §1.9): the statement that for
  every commutative ring `k` and every smooth commutative `k`-algebra `A`, the antisymmetrisation
  `ε_n : Ω^n_{A/k} → HH_n(A/k)` is an isomorphism for every `n`, identifying it with the smooth HKR
  comparison of KTheoryFiniteLocalFields §4.0. §1.9 names the map and proves `π_n ε_n = n!` and
  the degree-one case; §4.0 asserts an isomorphism without naming the map. §§6.4 and 7.6 use the
  integral statement for `ε_n` itself.

## How to read the build

Layer 1 builds the two complexes from a simplicial and a cosimplicial `k`-module, with
functoriality, long exact sequences and the `R`-linear structure in the commutative case.
Layer 2 deduces the normalisation theorem from Mathlib's Dold–Kan normalisation. Layer 3
identifies the low degrees and classifies square-zero extensions. Layer 4 constructs the bar
resolution and identifies the theory with `Ext` and `Tor` over `Aᵉ` for `k`-projective `A`.
Layer 5 constructs the cup product, the graded algebra `HH^•(A,A)` and its comparison with the
Yoneda product. Layer 6 compares the cochain complex with the pinned positive-arity Hochschild complex of
Tau Ceti and DGAInfinity Layer 8, the chain complex with Layer 8's chains and, for flat
algebras, with the derived chains of KTheoryFiniteLocalFields §4.0 through RefinedTraceMethods
§1.1, proves Gerstenhaber's homotopy formula through the transported braces, and describes the
antisymmetrisation of RefinedTraceMethods §1.9 on the classical complex. Layer 7 proves the
duality lemma, extends the exterior-power pairing to finite projective modules, defines
polyvector fields and the HKR maps, and proves the cohomological HKR theorem. Layer 8 computes
the polynomial case from the Koszul resolution; it depends on Layers 1–5, §§6.2 and 6.4(a) and
§§7.1, 7.4 and 7.5, not on the smooth HKR input of §6.4(d) and §7.6.

## Layer 1: Hochschild complexes with bimodule coefficients

### 1.1 The Hochschild simplicial module and the chain complex

Define the Hochschild simplicial `k`-module `X(A,M)` of an algebra `A` and a bimodule `M` as the
simplicial object of `ModuleCat k` with `X_n = M ⊗[k] A^{⊗n}`, faces
`d₀(m ⊗ a₁ ⊗ ⋯ ⊗ a_n) = m a₁ ⊗ a₂ ⊗ ⋯ ⊗ a_n`, `d_i(m ⊗ ⋯) = m ⊗ ⋯ ⊗ a_i a_{i+1} ⊗ ⋯` for
`1 ≤ i ≤ n − 1`, `d_n(m ⊗ a₁ ⊗ ⋯ ⊗ a_n) = a_n m ⊗ a₁ ⊗ ⋯ ⊗ a_{n−1}`, and degeneracies
`s_j(m ⊗ a₁ ⊗ ⋯ ⊗ a_n) = m ⊗ a₁ ⊗ ⋯ ⊗ a_j ⊗ 1 ⊗ a_{j+1} ⊗ ⋯ ⊗ a_n` for `0 ≤ j ≤ n`. Define the
Hochschild chain complex `C_•(A,M)` as `AlgebraicTopology.alternatingFaceMapComplex` of
`X(A,M)` and Hochschild homology `HH_n(A,M)` as its homology in degree `n`. Prove the simplicial
identities, so that `X(A,M)` is a simplicial object, and prove that the differential of
`C_•(A,M)` is the Hochschild boundary `b` of the conventions (Ginz05 §5.1, lines 973–976; Loday98
§1.1; Weibel94 §9.1; CE56 Chapter IX).

*Needs:* Mathlib `CategoryTheory.SimplicialObject`, `AlgebraicTopology.alternatingFaceMapComplex`,
`HomologicalComplex.homology`, `PiTensorProduct`, `TensorPower.mulEquiv`.

- The term of `C_•(A,M)` in degree `n` is `M ⊗[k] A^{⊗n}`, and `C₀(A,M) = M`.
- Each face and degeneracy is given on pure tensors by the displayed formula.
- The differential on a pure tensor is `b(m ⊗ a₁ ⊗ ⋯ ⊗ a_n)` as in the conventions; in degree one
  it is `m ⊗ a ↦ m a − a m`.
- `b ∘ b = 0`, as for every alternating face complex.
- Every element of `HH_n(A,M)` is the class of a cycle, and two cycles have the same class exactly
  when their difference is a boundary.

**Checks.**

- For `A = M = k`, every `X_n` is `k` and every face is the identity, so `b_n` is multiplication by
  `Σ_{i=0}^{n} (−1)^i`, which is `1` for even `n ≥ 2` and `0` for odd `n`; hence `HH₀(k,k) = k` and
  `HH_n(k,k) = 0` for `n ≥ 1`. Omitting the last face `d_n` would make `b₁` the identity of `k` and
  `HH₀(k,k) = 0`.
- For `A = M = Mat₂(k)` with `k` nonzero, `b(E₁₂ ⊗ E₂₁) = E₁₁ − E₂₂ ≠ 0`. Using `m a_n` instead of
  `a_n m` in the last face would make the degree-one boundary `m ⊗ a ↦ m a − m a = 0` and give
  `HH₀(Mat₂(k)) = Mat₂(k)` instead of `k` (§3.1 Checks).
- For commutative `A = M`, the degree-one boundary vanishes, so every element of `A ⊗ A` is a
  cycle; with `A = k[x]`, the cycle `1 ⊗ x` is not a boundary (§3.4).

### 1.2 The Hochschild cosimplicial module and the cochain complex

Define the Hochschild cosimplicial `k`-module `Y(A,M)` as the cosimplicial object of `ModuleCat k`
with `Y^n = MultilinearMap k (fun _ : Fin n ↦ A) M`, cofaces `(δ⁰f)(a₁,…,a_{n+1}) = a₁ f(a₂,…,a_{n+1})`,
`(δ^i f)(a₁,…,a_{n+1}) = f(a₁,…,a_i a_{i+1},…,a_{n+1})` for `1 ≤ i ≤ n`,
`(δ^{n+1} f)(a₁,…,a_{n+1}) = f(a₁,…,a_n) a_{n+1}`, and codegeneracies
`(σ^j f)(a₁,…,a_n) = f(a₁,…,a_j, 1, a_{j+1},…,a_n)`. Define the Hochschild cochain complex
`C^•(A,M)` as `AlgebraicTopology.alternatingCofaceMapComplex` of `Y(A,M)` and Hochschild
cohomology `HH^n(A,M)` as its cohomology in degree `n`. Prove the cosimplicial identities and
that the differential is the coboundary `δ` of the conventions (Ginz05 §5.2, lines 1055–1062;
Loday98 §1.5; Weibel94 §9.1; CE56 Chapter IX).

*Needs:* Mathlib `CategoryTheory.CosimplicialObject`, `AlgebraicTopology.alternatingCofaceMapComplex`,
`MultilinearMap`, `PiTensorProduct.lift`.

- `C⁰(A,M) = M` (multilinear maps on the empty family), and `C^n(A,M) ≅ (A^{⊗n} →ₗ[k] M)` through
  `PiTensorProduct.lift`, compatibly with the differentials.
- The differential on `C⁰` is `m ↦ (a ↦ a m − m a)` and on `C¹` is
  `f ↦ ((a,b) ↦ a f(b) − f(ab) + f(a) b)`; in general it is the displayed `δ`.
- `δ ∘ δ = 0`.
- Cocycles and coboundaries of `C^•(A,M)` are the `k`-submodules `Z^n(A,M) = ker δ` and
  `B^n(A,M) = im δ`, with `B⁰ = 0`, and `HH^n(A,M) = Z^n/B^n`.

**Checks.**

- For `A = M = k`, `C^n = k` and `δ : C^n → C^{n+1}` is multiplication by `Σ_{i=0}^{n+1} (−1)^i`,
  which is `1` for odd `n` and `0` for even `n`; so `HH⁰(k,k) = k` and `HH^n(k,k) = 0` for `n ≥ 1`.
- `δ(δm)(a,b) = a(bm − mb) − (abm − mab) + (am − ma)b = 0` for every `m ∈ C⁰`. The variant that
  gives the last term the sign `−` instead of `(−1)^{n+1}` in degree one,
  `f ↦ a f(b) − f(ab) − f(a) b`, gives `δδm(a,b) = 2(mab − amb)`, which is `2E₁₂ ≠ 0` for
  `A = M = Mat₂(ℤ)`, `m = E₁₁`, `a = E₁₂`, `b = E₂₂` (there `mab = E₁₂` and `amb = 0`).
- For `A = M = Mat₂(k)`, `HH⁰ = Z⁰` is the set of scalar matrices (§3.2 Checks), while the
  variant that drops `δ⁰` would make every `m` a cocycle in degree zero.

### 1.3 Functoriality

Prove that `C_•(A,−)`, `C^•(A,−)`, `HH_n(A,−)` and `HH^n(A,−)` are functors on bimodule
homomorphisms, `k`-linear on morphisms, and that an algebra homomorphism `φ : A → B` and a
`B`-bimodule `N`, viewed as an `A`-bimodule `φ*N` through `φ`, give a chain map
`C_•(A, φ*N) → C_•(B, N)`, `n ⊗ a₁ ⊗ ⋯ ⊗ a_n ↦ n ⊗ φ(a₁) ⊗ ⋯ ⊗ φ(a_n)`, and a cochain map
`C^•(B, N) → C^•(A, φ*N)`, `f ↦ f ∘ (φ × ⋯ × φ)`; with identity and composition laws, and the two
functorialities commute (Loday98 §1.1; Weibel94 §9.1).

*Needs:* §§1.1–1.2; Mathlib `HomologicalComplex.homologyMap`.

### 1.4 Long exact sequences in the coefficients

Let `0 → M' → M → M'' → 0` be a short exact sequence of `A`-bimodules. If `A` is flat as a
`k`-module, or the sequence is split as a sequence of `k`-modules, prove that
`0 → C_•(A,M') → C_•(A,M) → C_•(A,M'') → 0` is a short exact sequence of complexes, and obtain the
natural long exact sequence `⋯ → HH_n(A,M') → HH_n(A,M) → HH_n(A,M'') → HH_{n−1}(A,M') → ⋯`. If `A`
is projective as a `k`-module, or the sequence is `k`-split, prove the same for `C^•(A,−)` and
obtain `⋯ → HH^n(A,M') → HH^n(A,M) → HH^n(A,M'') → HH^{n+1}(A,M') → ⋯` (Weibel94 §9.1; CE56
Chapter IX). The connecting maps are natural in morphisms of short exact sequences.

*Needs:* §1.3; Mathlib `CategoryTheory.ShortComplex.ShortExact.δ`,
`CategoryTheory.ShortComplex.ShortExact.homology_exact₁`, `homology_exact₂`, `homology_exact₃`,
`Module.Flat`, `Module.Projective`.

### 1.5 Commutative algebras

For a commutative `k`-algebra `R` and an `R`-bimodule `M`, give `C_•(R,M)` the structure of a
complex of `R`-modules through the left action on the coefficient factor,
`r · (m ⊗ a₁ ⊗ ⋯ ⊗ a_n) = (r m) ⊗ a₁ ⊗ ⋯ ⊗ a_n`, and `C^•(R,M)` through the left action on values,
`(r · f)(a₁,…,a_n) = r f(a₁,…,a_n)`; prove that `b` and `δ` are `R`-linear, so that `HH_n(R,M)` and
`HH^n(R,M)` are `R`-modules, and that restricting scalars along `k → R` recovers the complexes of
§§1.1–1.2 (Ginz05 lines 2161–2166 for the action of the centre).

*Needs:* §§1.1–1.3; Mathlib `ModuleCat.restrictScalars`.

- The `R`-linearity of `b` uses `(r m) a₁ = r (m a₁)` and `a_n (r m) = r (a_n m)`; the second needs
  `R` commutative.
- The `R`-structure on `HH^1(R,M)` restricted to derivations is the pointwise one, which for a
  symmetric `M` is the module structure of Mathlib's `Derivation k R M`.
- The structures are natural in `M` and compatible with the functoriality of §1.3 along
  homomorphisms of commutative algebras.

**Checks.**

- For `R = k[x]` and `M = R`, `HH₁(R,R)` is the free `R`-module on the class of `1 ⊗ x` (§3.4), so
  `x · [1 ⊗ x] = [x ⊗ x]` is nonzero. An action through the first algebra factor instead,
  `x · (r ⊗ s ⊗ t) = r ⊗ x s ⊗ t`, is not compatible with `b`: `b(1 ⊗ x ⊗ 1) = x ⊗ 1` while the
  same action applied to `b(1 ⊗ 1 ⊗ 1) = 1 ⊗ 1` gives `1 ⊗ x`, and `x ⊗ 1 − 1 ⊗ x ≠ 0` in
  `k[x] ⊗ k[x]` for nonzero `k`.
- For `R = k`, the `R`-structure is the `k`-structure and nothing new is added.
- For the noncommutative `A = Mat₂(k)` and `M = A`, left multiplication by `E₁₁` does not commute
  with `b`: `b(E₁₁ E₁₂ ⊗ E₂₁) = E₁₁ − E₂₂` while `E₁₁ b(E₁₂ ⊗ E₂₁) = E₁₁`, so the construction needs
  commutativity of the acting ring.

### Examples

The algebra `k` itself has `HH₀ = HH⁰ = k` and no higher groups. For the matrix algebra
`Mat₂(k)` the degree-one boundary `E₁₂ ⊗ E₂₁ ↦ E₁₁ − E₂₂` already shows the role of the
wrap-around face. For `k[x]` the degree-one chains are all cycles.

### Dependencies

Mathlib's simplicial objects, alternating (co)face complexes, tensor powers, multilinear maps and
homology sequences. No roadmap supplier is used in this layer.

## Layer 2: Normalisation

### 2.1 Normalised chains

Define the normalised Hochschild chain complex `N_•(A,M)` as the quotient of `C_•(A,M)` by its
degenerate subcomplex `D_•`, where `D_n` is the sum of the images of the degeneracies
`s_j : X_{n−1} → X_n`. Prove that `D_•` is a subcomplex, that `D_n` is the kernel of
`M ⊗ A^{⊗n} → M ⊗ Ā^{⊗n}` (right exactness of the tensor product, no flatness), so that
`N_n(A,M) ≅ M ⊗[k] Ā^{⊗n}` with the differential induced by `b`, and that the quotient map
`C_•(A,M) → N_•(A,M)` is a homotopy equivalence of complexes of `k`-modules, for every commutative
ring `k` (Ginz05 §4.5, lines 894–931, for the reduced bar complex over a field; Loday98 §1.1 for
the normalised Hochschild complex). One route: by `AlgebraicTopology.DoldKan.degeneraciesVanish_iff_QInfty_f_comp`,
the image of `QInfty` is `D_•`, so the quotient is identified with the image of `PInfty`, which is
the normalised Moore complex; then apply
`AlgebraicTopology.DoldKan.homotopyEquivNormalizedMooreComplexAlternatingFaceMapComplex`.

*Needs:* §1.1; Mathlib `AlgebraicTopology.DoldKan.PInfty`, `AlgebraicTopology.DoldKan.QInfty`,
`AlgebraicTopology.DoldKan.degeneraciesVanish_iff_QInfty_f_comp`,
`AlgebraicTopology.DoldKan.homotopyEquivNormalizedMooreComplexAlternatingFaceMapComplex`,
`HomotopyEquiv`.

- `N₀(A,M) = M`, and the class of `m ⊗ a₁ ⊗ ⋯ ⊗ a_n` vanishes in `N_n` whenever some `a_i ∈ k·1`.
- The quotient map induces isomorphisms `HH_n(A,M) ≅ H_n(N_•(A,M))` for all `n`, natural in `M`.
- The homotopy inverse and the homotopy are natural in `M` and in `A`.

**Checks.**

- In degree one, `b(m ⊗ 1 ⊗ 1) = m ⊗ 1 − m ⊗ 1 + m ⊗ 1 = m ⊗ 1`, so the degenerate chain `m ⊗ 1` is a
  boundary, as the theorem requires.
- For `A = M = k`, `Ā = 0`, so `N_n = 0` for `n ≥ 1` and `N₀ = k`, in agreement with §1.1 Checks.
- The span of the tensors with `a₁ ∈ k·x` in `C₂(k[x],k[x])` is not a subcomplex:
  `b(1 ⊗ x ⊗ x) = 2x ⊗ x − 1 ⊗ x²` has a component `1 ⊗ x²` outside it. Only the unit gives a
  subcomplex.

### 2.2 Normalised cochains

Define the normalised Hochschild cochain complex `N^•(A,M)` as the subcomplex of `C^•(A,M)` of
cochains `f` with `f(a₁,…,a_n) = 0` whenever some `a_i = 1`, the intersection of the kernels of the
codegeneracies. Prove that it is a subcomplex, that `N^n(A,M) ≅ MultilinearMap k (fun _ ↦ Ā) M`,
and that the inclusion `N^•(A,M) → C^•(A,M)` is a homotopy equivalence for every commutative ring
`k` (Ginz05 §5.7, lines 1120–1128, over a field; Loday98 §1.1, §1.5). One route: apply §2.1's
argument to `Y(A,M)` viewed as a simplicial object of `(ModuleCat k)ᵒᵖ`, where the quotient by
degeneracies becomes the intersection of the kernels of the codegeneracies.

*Needs:* §1.2; the Mathlib declarations of §2.1; the abelian structure of the opposite category
(`Mathlib/CategoryTheory/Abelian/Opposite.lean`).

- `N⁰(A,M) = M`; a 1-cochain is normalised exactly when `f(1) = 0`.
- The inclusion induces `H^n(N^•(A,M)) ≅ HH^n(A,M)`, natural in `M`.
- Every class of `HH^n(A,M)` is represented by a normalised cocycle.

**Checks.**

- Every derivation `D` is normalised, since `D(1) = D(1·1) = 2D(1)`; the inner derivation `δm` is
  normalised since `δm(1) = m − m = 0`.
- For `g ∈ C¹(k[x],k[x])` with `g(1) = 1` and `g(x^j) = 0` for `j ≥ 1`, the coboundary `δg` has
  `δg(1,1) = 1`; it is a cocycle that is not normalised, and its class is that of `0 ∈ N²`.
- For `A = k`, `N^n = 0` for `n ≥ 1` and `N⁰ = M`, in agreement with §1.2 Checks.

### Examples

For `A = k[x]` the normalised complex replaces `k[x]^{⊗n}` by `(k[x]/k)^{⊗n}`; the cycle `1 ⊗ x`
survives as `1 ⊗ x̄`. Normalised 2-cocycles give square-zero extensions in which `(1,0)` is the
unit (§3.5).

### Dependencies

Layer 1; Mathlib's Dold–Kan normalisation. No roadmap supplier is used.

## Layer 3: Low degrees and square-zero extensions

### 3.1 Hochschild homology in degree zero

Prove that `HH₀(A,M) ≅ M/[A,M]`, where `[A,M]` is the `k`-span of the elements `a m − m a`,
naturally in `M` (Ginz05 lines 941–953; Loday98 §1.1).

*Needs:* §1.1.

**Checks.**

- `HH₀(Mat₂(k)) ≅ k`: the commutators `E_{ij} = [E_{ij}, E_{jj}]` (`i ≠ j`) and `E_{ii} − E_{jj}` span
  the trace-zero matrices over every commutative `k` (Ginz05 lines 1001–1030). The variant with
  `m a_n` in the last face of §1.1 would give `Mat₂(k)` here.
- For commutative `A` and symmetric `M`, `[A,M] = 0` and `HH₀(A,M) = M`.

### 3.2 Hochschild cohomology in degree zero

Prove that `HH⁰(A,M) ≅ M^A = {m ∈ M | a m = m a for all a}`, naturally in `M`, and that for `M = A`
this is the centre `Subalgebra.center k A` as a `k`-module (Ginz05 lines 1066–1069; Loday98 §1.5).

*Needs:* §1.2; Mathlib `Subalgebra.center`.

**Checks.**

- For `A = M = Mat₂(k)`, `HH⁰` is the set of scalar matrices `k·1`: `E₁₂` is not central since
  `E₁₁E₁₂ − E₁₂E₁₁ = E₁₂`.
- For commutative `A = M`, `HH⁰(A,A) = A`.

### 3.3 Derivations into a bimodule and HH¹

Define the `k`-submodule `Der_k(A,M)` of `A →ₗ[k] M` of bimodule derivations,
`D(ab) = a D(b) + D(a) b`, and the submodule `Inn(A,M)` of inner derivations `a ↦ a m − m a`.
Prove that `Der_k(A,M) = Z¹(A,M)`, `Inn(A,M) = B¹(A,M)`, `HH¹(A,M) ≅ Der_k(A,M)/Inn(A,M)`, and that
`0 → HH⁰(A,M) → M → Der_k(A,M) → HH¹(A,M) → 0` is exact, the map `M → Der_k(A,M)` being `m ↦ δm`
(Ginz05 §3.1, lines 398–411, and §5.4, lines 1075–1085; Weibel94 §9.2; CE56 Chapter IX).

*Needs:* §§1.2, 3.2; Mathlib `Derivation`, `TrivSqZeroExt`, `TrivSqZeroExt.fstHom`; Tau Ceti
`TauCeti.derivationLieAlgebra`, `TauCeti.innerDerivation`,
`TauCeti.derivationEquivDerivationLieAlgebra`.

- A `k`-linear `D : A → M` is a derivation if and only if `a ↦ (a, D a)` is a `k`-algebra
  homomorphism `A → TrivSqZeroExt A M` whose composite with `TrivSqZeroExt.fstHom` is the identity;
  every such section arises from a unique derivation.
- For commutative `R` and an `R`-module `M`, `Der_k(R,M)` is the image of Mathlib's
  `Derivation k R M`, as `k`-modules and as `R`-modules (§1.5).
- For `M = A`, `Der_k(A,A)` is the underlying submodule of `TauCeti.derivationLieAlgebra k A`, and
  `TauCeti.innerDerivation z = −δz`, so `Inn(A,A)` is its range.
- Derivations kill `k·1`, compose with bimodule maps, and pull back along algebra maps compatibly
  with §1.3.

**Checks.**

- For `A = M = k[x]`, `D ↦ D(x)` identifies `Der_k(A,A)` with `k[x]`, and `Inn = 0`, so
  `HH¹(k[x],k[x]) ≅ k[x]`, free of rank one on `∂_x`.
- For `A = M = Mat₂(k)`, every derivation is inner and `HH¹ = 0`; the derivation `δE₁₁` sends `E₁₂`
  to `E₁₂E₁₁ − E₁₁E₁₂ = −E₁₂`. The identity map of `k[x]` is not a derivation, since it sends `1` to
  `1 ≠ 0`.
- `TauCeti.innerDerivation E₁₁` sends `E₁₂` to `E₁₁E₁₂ − E₁₂E₁₁ = E₁₂ = −(δE₁₁)(E₁₂)`, pinning the
  sign between the two conventions.

### 3.4 Hochschild homology in degree one of a commutative algebra

For every commutative `k`-algebra `R`, flat or not, prove that `[r₀ ⊗ r₁] ↦ r₀ dr₁` is a well-defined
`R`-linear isomorphism `HH₁(R,R) ≅ Ω¹_{R/k}` with inverse `r dr′ ↦ [r ⊗ r′]` (Ginz05 §8.1,
lines 1914–1926; Loday98 §1.1). One route: the degree-one boundary is zero, `b(1 ⊗ a ⊗ c) =
a ⊗ c − 1 ⊗ ac + c ⊗ a` shows that `a ↦ [1 ⊗ a]` is a derivation into `HH₁`, and
`KaehlerDifferential.linearMapEquivDerivation` gives the inverse map.

*Needs:* §§1.1, 1.5; Mathlib `KaehlerDifferential`, `KaehlerDifferential.D`,
`KaehlerDifferential.linearMapEquivDerivation`, `KaehlerDifferential.span_range_derivation`.

**Checks.**

- For `R = k[x]/(x²)`, `Ω¹_{R/k} = R dx/(2x dx)`: over `𝔽₂` it is free of rank one over `R`
  (dimension `2`), over `ℚ` it is `ℚ dx` (dimension `1`); the theorem gives the same dimensions for
  `HH₁`.
- For `k = ℤ` and `R = 𝔽_p`, `Ω¹ = 0`, and the classical `HH₁(𝔽_p,𝔽_p)` vanishes: every `C_n` is
  `𝔽_p` and `b_n` is multiplication by `Σ_{i=0}^{n}(−1)^i`, so `b₂` is surjective onto `C₁`.
- For `R = k`, both sides vanish.

### 3.5 Twisted square-zero extensions

For `f ∈ C²(A,M)` define the twisted square-zero extension `A ⊕_f M`: the `k`-module `A × M` with
`(a,m)(a′,m′) = (aa′, a m′ + m a′ + f(a,a′))`. Prove that this product is associative if and only if
`δf = 0`; that for a cocycle `f` it is a unital `k`-algebra with unit `(1, −f(1,1))`; that the first
projection is a surjective `k`-algebra homomorphism whose kernel `0 × M` has square zero and
induces the given bimodule structure, with `k`-linear section `a ↦ (a,0)`; that `A ⊕₀ M` is
`TrivSqZeroExt A M`; and that for `g ∈ C¹(A,M)` the map `(a,m) ↦ (a, m + g(a))` is a `k`-algebra
isomorphism `A ⊕_f M ≅ A ⊕_{f − δg} M` over `A` and under `M` (Ginz05 §5.5, lines 1088–1106;
Weibel94 §9.3).

*Needs:* §§1.2, 2.2, 3.3; Mathlib `TrivSqZeroExt`, `TrivSqZeroExt.algebra'`,
`TrivSqZeroExt.fstHom`, `TrivSqZeroExt.inr`.

- The cocycle identity at `(1,1,a)` and `(a,1,1)` gives `f(1,a) = f(1,1) a` and `f(a,1) = a f(1,1)`,
  which is why `(1, −f(1,1))` is the unit; for normalised `f` the unit is `(1,0)` and the section
  `a ↦ (a,0)` is unital.
- The inclusion `m ↦ (0,m)` is a `k`-linear map with `(0,m)(0,m′) = 0`,
  `(a,m′′)(0,m) = (0, a m)` and `(0,m)(a,m′′) = (0, m a)`.
- The construction is functorial in bimodule maps `M → M′` (pushing `f` forward) and natural in
  algebra maps (pulling `f` back).

**Checks.**

- For `f = 0` the product `(a,m)(a′,m′) = (aa′, a m′ + m a′)` is that of `TrivSqZeroExt A M`.
- For `A = k[x]/(x²)`, `M = k` with `x` acting by `0` on both sides, and the 2-cochain with
  `f(x,x) = 1` and `f = 0` on the other pairs of basis elements `1, x`, the cocycle identity holds
  and `t = (x,0)` satisfies `t² = (0,1) ≠ 0` and `t³ = 0`, so `A ⊕_f M ≅ k[t]/(t³)`. An algebra
  section would send `x` to some `x + c t²` with square `t² ≠ 0`, so this extension does not split.
- For `A = k[x]`, `M = k` with `x` acting by `0`, and `f(x, x²) = 1`, `f = 0` on the other pairs of
  monomials, `δf(x,x,x) = 1`, and indeed `((x,0)(x,0))(x,0) = (x³,0)` while
  `(x,0)((x,0)(x,0)) = (x³,1)`: associativity fails exactly when the cocycle identity does.
- For the coboundary `f = δg` with `g(1) = 1`, `g(x^j) = 0` for `j ≥ 1` on `k[x]`, `f(1,1) = 1` and
  `(1,0)` is not a unit of `A ⊕_f A`: `(1,0)(x,0) = (x, f(1,x)) = (x, x)`.

### 3.6 HH² classifies split square-zero extensions

A `k`-split square-zero extension of `A` by `M` is a `k`-algebra `E` with a surjective `k`-algebra
homomorphism `p : E → A`, an injective `k`-linear `i : M → E` with range `ker p` and `i(m) i(m′) = 0`,
satisfying `e · i(m) = i(p(e) m)` and `i(m) · e = i(m p(e))`, which admits a `k`-linear section of
`p`. Prove: (a) for such an extension and a `k`-linear section `s`, the cochain
`f_s(a,a′) = i⁻¹(s(a) s(a′) − s(aa′))` is a 2-cocycle and `(a,m) ↦ s(a) + i(m)` is an isomorphism
`A ⊕_{f_s} M ≅ E` compatible with the projections and inclusions; (b) changing `s` changes `f_s` by
a coboundary; (c) `A ⊕_f M ≅ A ⊕_{f′} M` compatibly with projections and inclusions if and only
if `f − f′ ∈ B²(A,M)`; (d) the projection of `A ⊕_f M` has a `k`-algebra section if and only if
`[f] = 0` in `HH²(A,M)`. Hence `HH²(A,M)` is in bijection with the isomorphism classes of
`k`-split square-zero extensions of `A` by `M` inducing the given bimodule structure, the class
`0` corresponding to `TrivSqZeroExt A M` (Ginz05 §5.5, lines 1088–1111, and Remark 5.5.1;
Weibel94 §9.3).

*Needs:* §3.5; Mathlib `TrivSqZeroExt`, `TrivSqZeroExt.fstHom`.

**Checks.**

- For `k = ℤ`, `A = 𝔽₂` and `M = 𝔽₂`, every `C^n` is `𝔽₂` and `δ : C¹ → C²` is the identity, so
  `HH²(𝔽₂, 𝔽₂) = 0`; yet `ℤ/4 → 𝔽₂` is a square-zero extension by `2ℤ/4 ≅ 𝔽₂` with no ring section.
  It is not `ℤ`-split, so the `k`-splitting hypothesis cannot be dropped.
- `HH²(k, M) = 0` for every `k`-module `M` (the computation of §1.2 Checks with `M` in place of the
  coefficients `k`), and indeed
  `k[ε]/ε² → k` splits through the structure map.
- The extension `k[t]/(t³) → k[x]/(x²)` by `k·t²` is `k`-split and does not split as algebras
  (§3.5 Checks), so its class in `HH²(k[x]/(x²), k)` is nonzero.

### Examples

`HH₀(Mat_n(k)) ≅ k` through the trace; `HH⁰(Mat₂(k)) = k`; `HH¹(k[x]) ≅ k[x]`;
`HH₁(k[x]) ≅ k[x] dx`. The extension `k[t]/(t³) → k[x]/(x²)` represents a nonzero class of
`HH²(k[x]/(x²), k)`, and `k[ε]/ε² → k` splits because `HH²(k, k) = 0`.

### Dependencies

Layers 1–2; Mathlib's `TrivSqZeroExt`, Kähler differentials and centre; Tau Ceti's derivation Lie
algebra. No roadmap supplier is used. DGAInfinity Layer 8's reading of `HH²(A,A)` as first-order
deformations is the special case `M = A` over `k[ε]/ε²` and is not restated.

## Layer 4: The bar resolution, Ext and Tor

### 4.1 Bimodules as modules over the enveloping algebra

Construct the equivalence between `A`-bimodules (with the conventions above) and `ModuleCat Aᵉ`,
`Aᵉ = A ⊗[k] Aᵐᵒᵖ`, through `TensorProduct.Algebra.module`, `(a ⊗ op b) · m = a m b`; the bimodule `A`
as an object of `ModuleCat Aᵉ`; and the right `Aᵉ`-module structure on a bimodule,
`m · (a ⊗ op b) = b m a`, used for balanced tensor products (Ginz05 §4.2, lines 751–752, and §5.1,
lines 934–947).

*Needs:* Mathlib `Algebra.TensorProduct`, `MulOpposite`, `TensorProduct.Algebra.module`,
`ModuleCat`; Tau Ceti `TauCeti.BalancedTensorProduct`.

- Bimodule homomorphisms are exactly `Aᵉ`-linear maps, and the equivalence is `k`-linear.
- The left and right `Aᵉ`-structures on a bimodule commute with the `k`-structure, and for the
  bimodule `Aᵉ` itself they are left and right multiplication up to the swap `(Aᵉ)ᵐᵒᵖ ≅ Aᵉ`.
- `M ⊗_{Aᵉ} A ≅ M/[A,M]` through `m ⊗ a ↦ [m a]`.

**Checks.**

- For `A = Mat₂(k)` and `M = A`, `(E₁₂ ⊗ op E₂₁) · E₂₂ = E₁₂ E₂₂ E₂₁ = E₁₁`, while the opposite
  ordering `a m b` read as `b m a` would give `E₂₁ E₂₂ E₁₂ = 0`.
- For commutative `R`, `Rᵉ = R ⊗ R` and the multiplication map `R ⊗ R → R` is `Rᵉ`-linear.
- For `A = k`, `Aᵉ = k` and bimodules are `k`-modules with equal left and right actions.

### 4.2 The bar resolution

Define the bar complex `B_•(A)`, `B_n(A) = A ⊗[k] A^{⊗n} ⊗[k] A` with the outer `Aᵉ`-action and
`b′(a₀ ⊗ ⋯ ⊗ a_{n+1}) = Σ_{i=0}^{n} (−1)^i a₀ ⊗ ⋯ ⊗ a_i a_{i+1} ⊗ ⋯ ⊗ a_{n+1}`, as the alternating face
complex of the two-sided bar simplicial `Aᵉ`-module, augmented to `A` by multiplication. Prove that
after forgetting to `k`-modules the augmented complex has the contracting homotopy
`h(a₀ ⊗ ⋯ ⊗ a_{n+1}) = 1 ⊗ a₀ ⊗ ⋯ ⊗ a_{n+1}` (an extra degeneracy), so the augmentation is a
quasi-isomorphism of complexes of `Aᵉ`-modules over every `k`; that `B_n(A) ≅ Aᵉ ⊗[k] A^{⊗n}` as
`Aᵉ`-modules; and that if `A` is projective as a `k`-module, each `B_n(A)` is a projective
`Aᵉ`-module and `B_•(A)` is a projective resolution of `A` in `ModuleCat Aᵉ` (Ginz05 §4.2,
lines 747–782; HKR62 lines 414–447; Weibel94 §9.1; Loday98 §1.1).

*Needs:* §4.1; Mathlib `CategoryTheory.SimplicialObject.Augmented.ExtraDegeneracy`,
`CategoryTheory.ProjectiveResolution`, `Module.Projective.tensorProduct`, `TensorPower.mulEquiv`.

- `A^{⊗n}` is a projective `k`-module when `A` is, by induction with `TensorPower.mulEquiv` and
  `Module.Projective.tensorProduct`; likewise flat when `A` is flat.
- `μ ∘ h = id` on `A`, `b′ ∘ h + h ∘ μ = id` on `B₀(A)`, and `b′ ∘ h + h ∘ b′ = id` on `B_n(A)` for `n ≥ 1`.
- `B_•(A)` is natural in algebra homomorphisms, and the homotopy `h` is right `A`-linear.

**Checks.**

- In degree two, `(h b′ + b′ h)(a₁ ⊗ a₂) = 1 ⊗ a₁a₂ + a₁ ⊗ a₂ − 1 ⊗ a₁a₂ = a₁ ⊗ a₂` (Ginz05
  lines 774–782).
- For `A = k`, `B_n(k) = k` with `b′_n` multiplication by `Σ_{i=0}^{n}(−1)^i`, and the augmented
  complex `⋯ → k → k → k → k → 0` is exact.
- The homotopy `h` is not left `A`-linear: for `A = k[x]`, `h(x · (1 ⊗ 1)) = 1 ⊗ x ⊗ 1` while
  `x · h(1 ⊗ 1) = x ⊗ 1 ⊗ 1`; contractibility holds over `k`, not over `Aᵉ`.

### 4.3 Cochains as bimodule homomorphisms out of the bar resolution

Prove that `φ ↦ (a₁,…,a_n) ↦ φ(1 ⊗ a₁ ⊗ ⋯ ⊗ a_n ⊗ 1)` is an isomorphism of cochain complexes
`Hom_{Aᵉ}(B_•(A), M) ≅ C^•(A,M)` over every `k`, natural in `M` (Ginz05 §5.2, lines 1033–1062;
HKR62 lines 284–298). The differential of the left side is precomposition with `b′`, as in
`ChainComplex.linearYonedaObj`; no sign is introduced.

*Needs:* §§1.2, 4.2; Mathlib `ChainComplex.linearYonedaObj`.

### 4.4 Hochschild cohomology as Ext

For `A` projective as a `k`-module, prove that `HH^n(A,M) ≅ Ext^n_{Aᵉ}(A,M)` as `k`-modules,
naturally in `M`, where `Ext` is `CategoryTheory.Abelian.Ext` in `ModuleCat Aᵉ`; the isomorphism
sends the class of a cocycle `f` to `ProjectiveResolution.extMk` of the corresponding
homomorphism `B_n(A) → M`. In degree zero it is `M^A ≅ Hom_{Aᵉ}(A,M)` and in degree one it sends a
derivation `D` to the class of `a₀ ⊗ a₁ ⊗ a₂ ↦ a₀ D(a₁) a₂` (Ginz05 §5.2, lines 984–988; HKR62 lines
337–351; Weibel94 §9.1; CE56 Chapter IX).

*Needs:* §§4.2–4.3; Mathlib `CategoryTheory.Abelian.Ext`,
`CategoryTheory.ProjectiveResolution.extMk`, `CategoryTheory.ProjectiveResolution.extMk_surjective`,
`CategoryTheory.ProjectiveResolution.extMk_eq_zero_iff`, the instance `HasExt.{u}` on
`ModuleCat.{u}`, `ModuleCat.Algebra.instLinear`; Tau Ceti
`CategoryTheory.ProjectiveResolution.extLinearEquiv`.

### 4.5 Tor over the enveloping algebra and Hochschild homology

Define, for a bimodule `M`, the functor `M ⊗_{Aᵉ} − : ModuleCat Aᵉ ⥤ ModuleCat k`,
`N ↦ TauCeti.BalancedTensorProduct k Aᵉ M N` with the right structure of §4.1, and
`Tor_n^{Aᵉ}(M, −)` as its `CategoryTheory.Functor.leftDerived` functors, as Mathlib does for
`Rep.Tor`. Prove that `M ⊗_{Aᵉ} B_n(A) ≅ M ⊗[k] A^{⊗n}` through
`m ⊗ (a₀ ⊗ a₁ ⊗ ⋯ ⊗ a_n ⊗ a_{n+1}) ↦ a_{n+1} m a₀ ⊗ a₁ ⊗ ⋯ ⊗ a_n`, compatibly with `b`, and that for
`A` projective as a `k`-module `HH_n(A,M) ≅ Tor_n^{Aᵉ}(M,A)`, naturally in `M` (Ginz05 §5.1,
lines 944–976; Weibel94 §9.1; Loday98 §1.1).

*Needs:* §§1.1, 4.1–4.2; Mathlib `CategoryTheory.Functor.leftDerived`,
`CategoryTheory.ProjectiveResolution.isoLeftDerivedObj`; Tau Ceti
`TauCeti.BalancedTensorProduct`, `TauCeti.BalancedTensorProduct.outerFactors`,
`TauCeti.BalancedTensorProduct.rid`.

- `Tor_0^{Aᵉ}(M,N) ≅ M ⊗_{Aᵉ} N`, naturally in `N`.
- `Tor_n^{Aᵉ}(M,P) = 0` for projective `P` and `n ≥ 1`.
- `Tor_n^{Aᵉ}(M,N)` is computed by any projective resolution of `N`, and is functorial in `M`.

**Checks.**

- `Tor_0^{Aᵉ}(M,A) ≅ M/[A,M]`, matching §3.1; for `A = M = Mat₂(k)` it is `k`.
- For `A = k`, `Aᵉ = k`, `Tor_0(M,k) = M` and `Tor_n(M,k) = 0` for `n ≥ 1`, as for `HH_n(k,M)`.
- `Tor_n^{Aᵉ}(M, Aᵉ) = 0` for `n ≥ 1` and `Tor_0^{Aᵉ}(M,Aᵉ) ≅ M`.
- The left structure `m · (a ⊗ op b) = a m b` is not a right `Aᵉ`-structure: for `A = M = Mat₂(k)`,
  applying `E₁₂ ⊗ 1` and then `E₂₁ ⊗ 1` to `m = 1` gives `E₂₁E₁₂ = E₂₂`, while the product
  `(E₁₂ ⊗ 1)(E₂₁ ⊗ 1) = E₁₁ ⊗ 1` gives `E₁₁`.

### Examples

For `A = k[x]` (free over `k`) the bar resolution is a free resolution of `k[x]` over
`k[x] ⊗ k[x]`, and §8.2's Koszul resolution is a smaller one; comparing them computes `HH^•` and
`HH_•` (§8.4).

### Dependencies

Layers 1–3; Mathlib `Ext`, projective resolutions, left derived functors; Tau Ceti balanced tensor
products. No roadmap supplier is used.

## Layer 5: The cup product

### 5.1 The cup product of cochains

Define the cup product `∪ : C^p(A,A) × C^q(A,A) → C^{p+q}(A,A)`,
`(f ∪ g)(a₁,…,a_{p+q}) = f(a₁,…,a_p) g(a_{p+1},…,a_{p+q})`, as a `k`-bilinear map (Ginz05 §6.6,
lines 1335–1341; HKR62 lines 479–484, where it is the product induced by the diagonal of the bar
resolution; Loday98 §1.5; Ger63 §7).

*Needs:* §1.2; Mathlib `MultilinearMap`.

- The cup product is associative, `k`-bilinear, and has unit `1 ∈ A = C⁰(A,A)`.
- In degrees `(0,q)` and `(p,0)`, `x ∪ g = (a ↦ x g(a))` and `f ∪ y = (a ↦ f(a) y)`; in degree `(0,0)`
  it is the multiplication of `A`.
- Normalised cochains are closed under `∪`.
- For commutative `R`, `x ∪ g` is the `R`-module structure of §1.5, so `∪` is `R`-bilinear.
- It is natural for algebra isomorphisms.

**Checks.**

- For `k[x,y]`, `(∂_x ∪ ∂_y)(x,y) = 1` and `(∂_y ∪ ∂_x)(x,y) = 0`: the cup product is not commutative
  on cochains, even up to sign.
- `1 ∪ f = f = f ∪ 1`. The variant that multiplies in the other order, `g(a_{p+1},…) f(a₁,…)`, is
  associative (it is the cup product of `Aᵒᵖ`) but breaks the Leibniz rule of §5.2: for
  `A = Mat₂(k)`, `x = E₁₁ ∈ C⁰` and `g = id ∈ C¹`, the defect
  `g(b)ax − g(b)xa + g(a)bx − g(a)xb` at `(a,b) = (E₂₁, E₁₂)` is `E₁₁ − E₂₂ ≠ 0`.
- For `D = ∂_x` on `k[x]`, `(D ∪ D)(x,x) = 1`, so `D ∪ D ≠ 0` as a cochain, although its class is
  zero (§6.2 Checks).

### 5.2 The Leibniz rule and the cohomology algebra

Prove `δ(f ∪ g) = δf ∪ g + (−1)^p f ∪ δg` for `f ∈ C^p(A,A)`, so cocycles are closed under `∪` and
`Z ∪ B ⊆ B`, `B ∪ Z ⊆ B`; deduce an associative unital `k`-bilinear product on
`HH^•(A,A) = ⊕_n HH^n(A,A)` making it a graded `k`-algebra with `HH⁰(A,A) = Z(A)` as degree-zero
part; for commutative `R` it is a graded `R`-algebra (Ginz05 lines 1342–1350; Loday98 §1.5;
Ger63 §7).

*Needs:* §§1.2, 3.2, 5.1; Mathlib `GradedMonoid.GMonoid`, `DirectSum`.

- Witnesses: for `f, g ∈ C¹`, `δ(f ∪ g)(a,b,c) = a f(b) g(c) − f(ab) g(c) + f(a) g(bc) − f(a) g(b) c`,
  which equals `(δf ∪ g − f ∪ δg)(a,b,c)`; for `x ∈ C⁰`, `δ(x ∪ g) = δx ∪ g + x ∪ δg`.
- The product on `HH^•` is natural for algebra isomorphisms and, for commutative `R`, `R`-bilinear.

### 5.3 Yoneda products computed on projective resolutions

In an abelian category with enough projectives and `HasExt`, let `P` be a projective resolution
of `X` and `Q` one of `Y`, let `f : P_p → Y` and `g : Q_q → Z` be cocycles, and let
`f̃ = (f̃_i : P_{i+p} → Q_i)` be a family with `ε_Q ∘ f̃₀ = f` and `d^Q ∘ f̃_{i+1} = f̃_i ∘ d^P`
(such a family exists, and any two are homotopic, by the comparison theorem). Prove that
`Abelian.Ext.comp (P.extMk f) (Q.extMk g) = s(p,q) · P.extMk (f̃_q ≫ g)`, where `s(p,q) ∈ {±1}` is a
sign depending only on `p` and `q`, fixed by Mathlib's shift conventions for `Abelian.Ext`, with
`s(p,0) = 1` (CE56 Chapter XI; HKR62 lines 425–431 for the products on `Ext`). The case `q = 0` is
`CategoryTheory.ProjectiveResolution.extMk_comp_mk₀`.

*Needs:* Mathlib `CategoryTheory.Abelian.Ext.comp`, `CategoryTheory.ProjectiveResolution.extMk`,
`CategoryTheory.ProjectiveResolution.extMk_comp_mk₀`; Tau Ceti
`CategoryTheory.ProjectiveResolution.isoExt_hom_comp_homologyMap`.

### 5.4 The cup product is the Yoneda product

For `A` projective as a `k`-module and cocycles `f ∈ Z^p(A,A)`, `g ∈ Z^q(A,A)`, prove that the
isomorphism `θ` of §4.4 satisfies
`θ_{p+q}[f ∪ g] = (−1)^{pq} s(p,q) · Abelian.Ext.comp (θ_p[f]) (θ_q[g])` with the sign `s` of §5.3.
One route: the family `f̃_i(a₀ ⊗ a₁ ⊗ ⋯ ⊗ a_{p+i+1}) = (−1)^{pi} a₀ f(a₁,…,a_p) ⊗ a_{p+1} ⊗ ⋯ ⊗ a_{p+i+1}`
lifts `f` along the bar resolution with strict commutation, and `f̃_q` followed by `g` is
`(−1)^{pq} f ∪ g` (Ginz05 lines 1348–1350; HKR62 lines 479–484; CE56 Chapter XI).

*Needs:* §§4.4, 5.2, 5.3.

**Checks.**

- Without the factor `(−1)^{pi}` the squares commute only up to `(−1)^p`: for `p = 1` and a derivation
  `f`, the unsigned maps satisfy `f̃₀ ∘ b′ = −b′ ∘ f̃₁` on `a₀ ⊗ a₁ ⊗ a₂ ⊗ a₃`, both sides being
  `±(a₀ f(a₁) a₂ ⊗ a₃ − a₀ f(a₁) ⊗ a₂ a₃)`, the cocycle condition `δf = 0` cancelling the other terms.
- For `q = 0`, `g` is the class of a central element `y` and the identity reads
  `θ_p[f ∪ y] = Ext.comp (θ_p[f]) (mk₀ (· y))`, the case of
  `CategoryTheory.ProjectiveResolution.extMk_comp_mk₀`.
- In degree `(0,0)` both sides are composition in `Z(A) = End_{Aᵉ}(A)`: `θ₀[x ∪ y] = mk₀(· xy)` is
  `mk₀(· x)` followed by `mk₀(· y)`, as `Ext.comp` of degree-zero classes is composition.

### Examples

For `A = k[x,y]` the cocycles `∂_x ∪ ∂_y` and `∂_y ∪ ∂_x` are different but their classes are
negatives of each other (§6.2). For `A = Mat₂(k)` the cohomology algebra is `k` in degree zero.

### Dependencies

Layers 1–4; Mathlib graded monoids, direct sums and `Ext` composition; Tau Ceti's comparison of
resolutions. No roadmap supplier is used.

## Layer 6: Comparison with the graded and derived carriers

### 6.1 Cochains of an algebra in degree zero

Regard an ordinary `k`-algebra `A` as a DG algebra concentrated in degree zero with zero
differential (DGAInfinity Layer 1): the grading with `A` in degree `0` and the zero differential
satisfy `TauCeti.IsNonUnitalDGAlgebra`, and `𝒜 = TauCeti.IsNonUnitalDGAlgebra.toAInfinityAlgebra`
is the `A∞` algebra with `m₂(a,b) = ab` and all other operations zero, whose suspended Taylor map
`m` is `sa ⊗ sb ↦ s(ab)` (no sign: `TauCeti.AInfinity.IsSuspension` on degree-zero inputs).
Prove that for every `n ≥ 1` the suspension `Θ` of the conventions, `Θf ∘ s^{⊗n} = s ∘ f`, is a
`k`-linear isomorphism from `C^n(A,A)` onto
`TauCeti.AInfinityAlgebra.PositiveHochschild.cochains 𝒜 (n − 1)`: a homogeneous map of degree
`n − 1` out of the reduced tensor coalgebra on `sA`, with `sA` in degree `−1`, is supported on the
words of length `n`, so the cochains of degree `n − 1` are exactly the arity-`n` cochains, and
`Θf` is `f` itself on the length-`n` summand of `TauCeti.ReducedTensorWords k A` and `0` on the
others. Prove that for `f ∈ C^p(A,A)` and `g ∈ C^q(A,A)` with `p, q ≥ 1`:
`Θ(δf) = (−1)^{p+1} · TauCeti.AInfinityAlgebra.hochschildDifferential 𝒜 (p − 1) (Θf)`;
`Θ(f ∘ g) = TauCeti.ReducedTensorWords.brace (Θf) (Θg) (q − 1)` with `f ∘ g` the Gerstenhaber
composition of the conventions (the brace inserts `Θg`, of degree `q − 1`, after `i − 1` letters
of degree `−1` with the Koszul sign `(−1)^{(q−1)(i−1)}`, which is Ginzburg's sign); and
`Θ{f,g} = TauCeti.ReducedTensorWords.gerstenhaberBracket (p − 1) (q − 1) (Θf) (Θg)` with
`{f,g} = f ∘ g − (−1)^{(p−1)(q−1)} g ∘ f`. Prove the remaining clauses of the dictionary against
DGAInfinity Layer 8, which extends the pinned cochains by the arity-zero cochains `C⁰ = A` and
carries the cup product as the multiple brace: `Θ(δx) = −[m, Θx]` for `x ∈ C⁰`; `Θ(f ∘ y) = Θf{Θy}`
and `Θ{f,y} = [Θf, Θy]` for `y ∈ C⁰` by the same brace rule; and
`Θ(f ∪ g) = (−1)^{p(q−1)} m{Θf, Θg}` for all `p, q ≥ 0`. Consequently `Θ` identifies `HH^n(A,A)`
for `n ≥ 2` with `TauCeti.AInfinityAlgebra.PositiveHochschild.Cohomology 𝒜 (n − 1)` and
transports `TauCeti.AInfinityAlgebra.PositiveHochschild.cohomologyBracket` to an operation
`{−,−} : HH^p(A,A) × HH^q(A,A) → HH^{p+q−1}(A,A)` for `p, q ≥ 2`, graded antisymmetric and
satisfying the graded Jacobi identity for the degrees `p − 1`, `q − 1`
(`TauCeti.AInfinityAlgebra.PositiveHochschild.cohomologyBracket_swap`,
`TauCeti.AInfinityAlgebra.PositiveHochschild.leibniz_cohomologyBracket`); in degree `0` the pinned
cohomology is `Z¹(A,A) = Der_k(A)`, there being no arity-zero cochain to quotient by, and the
extension of `{−,−}` to the degrees involving `HH¹` and `HH⁰` is the transport of Layer 8's
bracket on the full complex, which identifies `HH^n(A,A)` with Layer 8's Hochschild cohomology of
`A` in Gerstenhaber degree `n − 1` for every `n ≥ 0` (Ginz05 §6.6, lines 1351–1375; Ger63 §7; the
sign dictionary follows from DGAInfinity's Koszul tensor-map rule and suspension square).

*Needs:* §§1.2, 5.1; Tau Ceti `TauCeti.AInfinity.IsSuspension`, `TauCeti.IsDGAlgebra`,
`TauCeti.IsNonUnitalDGAlgebra.toAInfinityAlgebra`, `TauCeti.ReducedTensorWords.brace`,
`TauCeti.ReducedTensorWords.gerstenhaberBracket`,
`TauCeti.AInfinityAlgebra.hochschildDifferential` with
`TauCeti.AInfinityAlgebra.hochschildDifferential_eq_brace_sub`,
`TauCeti.AInfinityAlgebra.PositiveHochschild.cochains`,
`TauCeti.AInfinityAlgebra.PositiveHochschild.complex`,
`TauCeti.AInfinityAlgebra.PositiveHochschild.Cohomology`,
`TauCeti.AInfinityAlgebra.PositiveHochschild.cohomologyBracket`; DGAInfinity Layer 0 (the
multiple brace and its Koszul sign); DGAInfinity Layer 1 (an algebra as a DG algebra in degree
zero); DGAInfinity Layer 8 (the arity-zero cochains, the cup product as `m{−,−}`, the bracket on
the full complex).

- On degree-zero inputs `Θf(sa₁ ⊗ ⋯ ⊗ sa_n) = s f(a₁,…,a_n)`; `Θ` is natural for algebra
  isomorphisms.
- On `C¹`, `{f,g} = f ∘ g − g ∘ f` is the commutator of linear maps, so `{−,−}` on `HH¹(A,A)` is the
  bracket of `Der_k(A,A)/Inn(A,A)` inherited from `TauCeti.derivationLieAlgebra`; on the pinned
  complex it is the bracket of `TauCeti.AInfinityAlgebra.PositiveHochschild.Cohomology 𝒜 0 = Der_k(A)`
  before the quotient by inner derivations.
- The Hochschild cohomology of Layer 8 for `A` is concentrated in Gerstenhaber degrees `≥ −1`, the
  degree `−1` part being `HH⁰(A,A) = Z(A)`; the pinned positive-arity complex sees the degrees
  `≥ 0` and misses the arity-zero cochains, so its degree-`0` cohomology is `Der_k(A)` rather than
  `HH¹(A,A)`, and its cohomology in degree `n − 1 ≥ 1` is `HH^n(A,A)`.

**Checks.**

- `n = 0` (arity zero, DGAInfinity Layer 8 only): for `x ∈ C⁰`,
  `[m, Θx](sa) = m(sx, sa) − m(sa, sx) = s(xa − ax)`, the second sign coming from moving `Θx`
  (degree `−1`) past `sa` (degree `−1`); and `Θ(δx)(sa) = s(ax − xa)`, so the sign is
  `(−1)^{0+1} = −1`.
- `n = 1` (at the pin, `TauCeti.AInfinityAlgebra.hochschildDifferential_eq_brace_sub` with
  `q = 0`): `m{Θf}(sa ⊗ sb) = s(f(a) b + a f(b))` (no sign: `Θf` has degree `0`),
  `Θf{m}(sa ⊗ sb) = s f(ab)`, so `[m, Θf](sa ⊗ sb) = s(f(a) b + a f(b) − f(ab)) = Θ(δf)(sa ⊗ sb)`,
  sign `+1`; a dictionary with a uniform sign would fail one of the two cases `n = 0`, `n = 1`.
- `n = 2` (at the pin, `q = 1`): `m{Θf}(sa ⊗ sb ⊗ sc) = s(f(a,b) c − a f(b,c))` (the sign of moving
  `Θf`, of degree `1`, past `sa`), `Θf{m}(sa ⊗ sb ⊗ sc) = s(f(ab, c) − f(a, bc))` (the sign of moving
  `m` past `sa`), and `[m, Θf] = m{Θf} + Θf{m}`, so
  `[m, Θf](sa ⊗ sb ⊗ sc) = s(f(a,b) c − a f(b,c) + f(ab,c) − f(a,bc)) = −Θ(δf)(sa ⊗ sb ⊗ sc)`, sign
  `(−1)^{2+1} = −1`; the model `m{F} − F{m}` without the `(−1)^q` would give
  `s(f(a,b) c − a f(b,c) − f(ab,c) + f(a,bc))`: for `f(a,b) = a` on `k[x]` this is `s(a + ac − 2ab)`
  while `δf(a,b,c) = a − ac`, and at `(x,x,x)` the model equals `+Θ(δf)` but at `(x,1,x)` it equals
  `−Θ(δf)`, so it is not `±Θ(δf)` when `2 ≠ 0` in `k`.
- `(p,q) = (1,0)` (arity zero, Layer 8 only): `m{Θf, Θy}(sa) = −s(f(a) y)`, the sign of moving `Θy`
  past `sa`, so `Θ(f ∪ y) = −m{Θf, Θy} = (−1)^{1·(0−1)} m{Θf,Θy}`; at `(p,q) = (1,1)` the sign is `+1`.

### 6.2 Gerstenhaber's homotopy formula and graded commutativity

Prove that for `f ∈ C^p(A,A)` and `g ∈ C^q(A,A)`,
`g ∪ f − (−1)^{pq} f ∪ g = δf ∘ g + (−1)^q (δ(f ∘ g) − f ∘ δg)`, and deduce that the cup product on
`HH^•(A,A)` is graded commutative, `[g] ∪ [f] = (−1)^{pq} [f] ∪ [g]` (Ger63 §7; Ginz05
Proposition 6.6.4, line 1379; Loday98 §1.5). One route transports the brace relation of DGAInfinity Layer 0
through §6.1: with `D = [m, −]`, the relation gives
`(DF){G} + (−1)^{|F|} F{DG} − D(F{G}) = m{F,G} + (−1)^{|F||G|} m{G,F}`, which §6.1's dictionary turns
into the displayed identity. The multiple brace `m{F,G}` is not at the pin, so this step is
Layer 0's; what the pin supplies is `[m, F] = m{F} − (−1)^{|F|} F{m}`
(`TauCeti.AInfinityAlgebra.hochschildDifferential_eq_brace_sub`), the pre-Lie identity
`TauCeti.ReducedTensorWords.brace_brace_sub_smul_brace_brace` (the antisymmetric part of the
brace relation, in which the multiple braces cancel), and the Leibniz rule
`D[F,G] = [DF,G] + (−1)^{|F|} [F,DG]`
(`TauCeti.AInfinityAlgebra.hochschildDifferential_gerstenhaberBracket`), which is the
antisymmetrisation of the displayed identity in `(f,g)` and the reason the bracket of §6.1
descends to cohomology. The identity printed as Ginz05 (6.6.3), line 1368, does not hold with the
coboundary of Ginz05 line 1058 (see the Checks); the form above is the one used.

*Needs:* §§5.2, 6.1; DGAInfinity Layer 0 (the brace relation with the multiple brace);
DGAInfinity Layer 8 (the cup product as `m{−,−}` and the arity-zero cochains); Tau Ceti
`TauCeti.AInfinityAlgebra.hochschildDifferential_eq_brace_sub`,
`TauCeti.AInfinityAlgebra.hochschildDifferential_gerstenhaberBracket`,
`TauCeti.ReducedTensorWords.brace_brace_sub_smul_brace_brace`.

**Checks.**

- `(p,q) = (1,1)` computed directly: `f ∘ δg + δf ∘ g − δ(f ∘ g) = f ∪ g + g ∪ f`, all other terms
  cancelling. For derivations `f = g = ∂` of `k[x]` this reads `2(∂ ∪ ∂) = −δ(∂²)`, and indeed
  `−δ(∂²)(a,b) = 2∂a ∂b`; Ginz05 (6.6.3) would give `δ(∂²) = −2∂a∂b` instead.
- `(p,q) = (1,0)` with `g = y ∈ A`: both sides equal `a ↦ y f(a) − f(a) y`; `(p,q) = (0,1)` with `f = x`:
  both sides equal `a ↦ x g(a) − g(a) x`; `(p,q) = (2,0)`: both sides equal
  `(a,b) ↦ y f(a,b) − f(a,b) y`, the other terms on the right cancelling in pairs.
- On `k[x,y]`, `∂_x ∪ ∂_y + ∂_y ∪ ∂_x = −δ(∂_x ∂_y)`, so `[∂_x ∪ ∂_y] = −[∂_y ∪ ∂_x]` although the
  cochains differ (§5.1 Checks). On `k[x]`, `∂ ∪ ∂ = −δ(∂^{[2]})` with `∂^{[2]}(x^j) = C(j,2) x^{j−2}`,
  defined over every `k`: at `(x,x)`, `−δ(∂^{[2]})(x,x) = −(0 − 1 + 0) = 1 = (∂ ∪ ∂)(x,x)`.
- Antisymmetrisation: adding `(−1)^{pq}` times the identity with `f` and `g` exchanged cancels the
  cup products and leaves `δ{f,g} = {f, δg} − (−1)^q {δf, g}`, using
  `(−1)^{pq+p+q} = −(−1)^{(p−1)(q−1)}`; under §6.1 this is the pinned Leibniz rule
  `[m,[F,G]] = [[m,F],G] + (−1)^{|F|} [F,[m,G]]` at `|F| = p − 1`, `|G| = q − 1`, since
  `Θ(δ{f,g}) = (−1)^{p+q} D[Θf,Θg]`, `DΘf = (−1)^{p+1} Θ(δf)` and `DΘg = (−1)^{q+1} Θ(δg)`. A
  wrong sign on the `(−1)^q` of the displayed identity would contradict the pinned rule.

### 6.3 Chains of a flat algebra

Prove that there are signs `ν_n ∈ {±1}` with `ν₀ = 1` such that
`a₀ ⊗ a₁ ⊗ ⋯ ⊗ a_n ↦ ν_n a₀ ⊗ sa₁ ⊗ ⋯ ⊗ sa_n` is an isomorphism of complexes from `C_•(A,A)`
(homological degree `n` placed in cohomological degree `−n`) to the Hochschild chains of
DGAInfinity Layer 8 of `A` in degree zero; the signs are determined by Layer 8's chain differential
through the Koszul rule. For `A` flat as a `k`-module, RefinedTraceMethods §1.1 identifies the
homology of the cyclic bar complex with the derived Hochschild homology `HH_n(A/k)` of
KTheoryFiniteLocalFields §4.0 (the derived object is the totalisation of the cyclic bar
construction of a `k`-flat algebra), so `HH_n(A,A) ≅ HH_n(A/k)`, naturally in `A`; under this
isomorphism the check `HH₀(A) = A/[A,A]` of §4.0 is §3.1 (Loday98 §1.1; the identification of the
underlying modules is that of Ginz05 §5.1, lines 963–976).

*Needs:* §1.1; DGAInfinity Layer 8 (Hochschild chains); KTheoryFiniteLocalFields §4.0 (Cyclic
homology foundations, the derived `HH_n(A/k)`); RefinedTraceMethods §1.1 (the cyclic enhancement
of supplied derived Hochschild chains: for `k`-flat `A`, `HH(A/k)` is the homology of
`(C_•(A/k), b)`); Mathlib `ComplexShape.embeddingDownNat` (the embedding `n ↦ −n` of
`ComplexShape.down ℕ` into `ComplexShape.up ℤ`) with `HomologicalComplex.extend`.

**Checks.**

- For `A = k` both complexes have `k` in every degree and differentials alternating between `0`
  and an isomorphism; the comparison is the identity up to the signs `ν_n`.
- For `k = ℤ` and `A = 𝔽_p`, which is not flat, the classical `HH₂(𝔽_p,𝔽_p) = 0` (§3.4 Checks), while
  the derived `HH₂(𝔽_p/ℤ) = 𝔽_p` (RefinedTraceMethods §§1.1 and 1.10): the flatness hypothesis is
  needed for the second identification.
- For `A = Mat₂(k)` the degree-one boundaries correspond: `b(E₁₂ ⊗ E₂₁) = E₁₁ − E₂₂` is sent to
  `ν₀(E₁₁ − E₂₂)`, so `ν₁` is the sign of Layer 8's degree-one differential on `a₀ ⊗ sa₁`.

### 6.4 Antisymmetrisation and projection on the classical complex

For a commutative `k`-algebra `R`, prove: (a) the classical antisymmetrisation
`ε^cl_n : Ω^n_{R/k} → HH_n(R,R)`, `r₀ dr₁ ∧ ⋯ ∧ dr_n ↦ [Σ_{σ∈S_n} sgn(σ) r₀ ⊗ r_{σ(1)} ⊗ ⋯ ⊗ r_{σ(n)}]`, is a
well-defined natural `R`-linear map, and, if `R` is flat over `k`, §6.3 carries it to `ν_n ε_n` of
RefinedTraceMethods §1.9; (b) the classical projection `π^cl_n : HH_n(R,R) → Ω^n_{R/k}`,
`[r₀ ⊗ ⋯ ⊗ r_n] ↦ r₀ dr₁ ∧ ⋯ ∧ dr_n`, is well-defined and, if `R` is flat over `k`, corresponds to
`ν_n π_n`; (c) `π^cl_n ∘ ε^cl_n = n! · id`, and `ε^cl₁` is the inverse of the isomorphism of §3.4;
(d) if `R` is smooth over `k` (hence flat, `Algebra.Smooth.flat`), `ε^cl_n` is an isomorphism for
every `n`. Flatness enters only through the comparison with the derived chains: the
antisymmetrised chain is a cycle (the inner terms of `b` cancel in the pairs `σ, σ ∘ (i i+1)` and
the first term of `σ` cancels the last term of its cyclic shift) and `π^cl_n ∘ b = 0` by the Leibniz
rule of `d`, for every commutative `R` (Ginz05 §9.2, lines 2142–2156; AV20 lines 237–243; Loday98
§1.3 and §3.4, Theorem 3.4.4; Weibel94 §9.4).

*Needs:* §§1.5, 3.4; §6.3 and RefinedTraceMethods §1.9 (the antisymmetrisation map and the HKR
projection) for the comparison clauses of (a) and (b); gap smooth-hkr-antisymmetrisation (for
(d)); Mathlib `Algebra.Smooth.flat`.

**Checks.**

- For `R = k[x,y]`, `ε^cl₂(dx ∧ dy) = [1 ⊗ x ⊗ y − 1 ⊗ y ⊗ x]` and `π^cl₂ ε^cl₂(dx ∧ dy) = 2 dx ∧ dy`;
  over `𝔽₂` the composite is zero while `ε^cl₂(dx ∧ dy) ≠ 0` (it pairs to `1` with `∂_x ∪ ∂_y`).
- For `R = k[x]/(x²)` with `k` a nonzero field, `R` is flat but not smooth, `Ω²_{R/k} = 0` while
  `HH₂(R,R) ≠ 0`, so `ε^cl₂` is not surjective and (d) needs smoothness.
- `ε^cl₀` is the identity of `R = HH₀(R,R)`.
- For `k = ℤ` and `R = 𝔽_p`, which is not flat: `Ω^n_{𝔽_p/ℤ} = 0` for `n ≥ 1` and the classical
  complex is `𝔽_p` in every degree with `b_n = 1` for even `n ≥ 2` and `0` for odd `n`, so
  `HH_n(𝔽_p,𝔽_p) = 0` for `n ≥ 1`; (a)–(c) hold with both sides zero, while the derived
  `HH₂(𝔽_p/ℤ) = 𝔽_p` is not `HH₂(𝔽_p,𝔽_p)`: the comparison clauses need flatness, (a)–(c) do not.

### Examples

For `A = k` the comparison of §6.3 is the identity up to sign. For `k[x,y]` the homotopy formula
explains why `∂_x ∪ ∂_y` and `−∂_y ∪ ∂_x` are cohomologous although different, and the
antisymmetrised chain `1 ⊗ x ⊗ y − 1 ⊗ y ⊗ x` represents `ε(dx ∧ dy)`.

### Dependencies

Layers 1–5; the pinned Tau Ceti braces, Gerstenhaber bracket, Hochschild differential and
positive-arity Hochschild complex (`TauCeti.ReducedTensorWords.brace`,
`TauCeti.AInfinityAlgebra.hochschildDifferential`,
`TauCeti.AInfinityAlgebra.PositiveHochschild.complex`); DGAInfinity Layers 0, 1 and 8;
KTheoryFiniteLocalFields §4.0; RefinedTraceMethods §§1.1 and 1.9; the gap
smooth-hkr-antisymmetrisation, used only in §6.4(d).

## Layer 7: Polyvector fields and the cohomological HKR theorem

### 7.1 Duality between cochains and chains of a commutative algebra

For a commutative `k`-algebra `R` and an `R`-module `M`, viewed as a symmetric bimodule, prove that
`f ↦ (r₀ ⊗ r₁ ⊗ ⋯ ⊗ r_n ↦ r₀ f(r₁,…,r_n))` is an isomorphism of cochain complexes of `R`-modules
`C^•(R,M) ≅ Hom_R(C_•(R,R), M)` (the right side being `ChainComplex.linearYonedaObj` in
`ModuleCat R`, whose differential is precomposition with `b`), natural in `M`. Define the
evaluation pairing `h_n : HH^n(R,M) → Hom_R(HH_n(R,R), M)` as this isomorphism followed by
`TauCeti.ChainComplex.kronecker` (HKR62 §4, lines 284–298 and 352–364).

*Needs:* §§1.1, 1.2, 1.5; Mathlib `ChainComplex.linearYonedaObj`; Tau Ceti
`TauCeti.ChainComplex.kronecker`, `TauCeti.ChainComplex.kronecker_homologyπ`,
`TauCeti.ChainComplex.kronecker_naturality`.

- On cocycles and cycles, `h_n[f]([Σ r₀ ⊗ r₁ ⊗ ⋯ ⊗ r_n]) = Σ r₀ f(r₁,…,r_n)`.
- `h₀` is the identity of `M = Hom_R(R,M)`, and under §3.3 and §3.4, `h₁(D)(r₀ dr₁) = r₀ D(r₁)`, the
  isomorphism `Der_k(R,M) ≅ Hom_R(Ω¹_{R/k}, M)` of `KaehlerDifferential.linearMapEquivDerivation`.
- `h_n` is natural in `M` and `R`-linear.

**Checks.**

- The chain-level identification uses that `M` is symmetric: for `R = k[x]` and the bimodule `k` on
  which `x` acts by `1` on the left and `0` on the right, `δm(x) = x·m − m·x = m ≠ 0` for `m ≠ 0`,
  while every degree-one chain of `C_•(R,R)` is a cycle, so the cochain `r ↦ r·m` has zero image
  under the transpose of `b`.
- For `R = k[x]` and `M = R`, `h₁(∂_x)([1 ⊗ x]) = 1`.
- For `R = k`, both sides vanish in positive degrees and `h₀` is the identity of `M`.

### 7.2 Complexes of projective modules with projective homology

Let `X` be a chain complex of projective `R`-modules indexed by `ℕ` and `n ∈ ℕ` with `H_i(X)`
projective for every `i < n`. Prove that for every `R`-module `M` and every `i ≤ n`, the Kronecker
map `H^i(Hom_R(X, M)) → Hom_R(H_i(X), M)` is bijective; in particular it is bijective in every
degree when all `H_i(X)` are projective (HKR62 Lemma 4.1, lines 301–330; AV20 Proposition 1.2,
lines 70–74). One route: inductively, the cycles `Z_i` are projective direct summands of `X_i` and
the boundaries `B_i` are projective direct summands of `Z_i` for `i < n`; then the universal
coefficient sequence of Tau Ceti applies, and `Ext¹(H_{i−1}(X), M) = 0` by
`CategoryTheory.Abelian.Ext.eq_zero_of_projective`.

*Needs:* Tau Ceti `TauCeti.ChainComplex.kronecker`,
`TauCeti.ChainComplex.kronecker_surjective_of_isSplitMono`, `TauCeti.ChainComplex.extToHomology`,
`TauCeti.ChainComplex.exact_extToHomology_kronecker`; Mathlib
`CategoryTheory.Abelian.Ext.eq_zero_of_projective`, `Module.Projective`.

**Checks.**

- Over `R = ℤ`, the complex `ℤ --2--> ℤ` in degrees `1, 0` has `H₀ = ℤ/2`, not projective, and
  `H¹(Hom(X,ℤ)) = ℤ/2` while `Hom(H₁(X), ℤ) = 0`: the Kronecker map fails to be injective in degree
  `1`, so the hypothesis on `H₀` is needed.
- In degree `0` the Kronecker map is always bijective, `H⁰(Hom(X,M)) = Hom(X₀/B₀, M)`.
- For the acyclic complex `R --id--> R`, both sides vanish in all degrees.

### 7.3 Exterior powers of finite projective modules

For a finite projective `R`-module `P` and every `n`, prove that `⋀[R]^n P` is finite projective and
that `exteriorPower.pairingDual R P n : ⋀[R]^n (Module.Dual R P) → Module.Dual R (⋀[R]^n P)` is
bijective (HKR62 lines 531–535). One route: choose a finite free `F` with `i : P → F`, `p : F → P`,
`p ∘ i = id`; `exteriorPower.map` makes `⋀^n P` a retract of the free module `⋀^n F`, and the
naturality squares `pairingDual_F ∘ ⋀^n(p^*) = (⋀^n p)^* ∘ pairingDual_P` and
`pairingDual_P ∘ ⋀^n(i^*) = (⋀^n i)^* ∘ pairingDual_F` make `pairingDual_P` a retract of the bijection
`exteriorPower.bijective_pairingDual` for `F`.

*Needs:* Mathlib `exteriorPower.map`, `exteriorPower.instFinite`, `exteriorPower.instFree`,
`exteriorPower.pairingDual`, `exteriorPower.pairingDual_ιMulti_ιMulti`,
`exteriorPower.bijective_pairingDual`, `Module.Projective`, `Module.Finite`.

**Checks.**

- For `P = R²`, `(e₁* ∧ e₂*)(e₁ ∧ e₂) = det(e_j*(e_i)) = 1`.
- For `P = 0`, `⋀⁰ = R` with pairing the identity and `⋀^n = 0` for `n ≥ 1`.
- Finiteness is needed for surjectivity: for the free module `P = R^{(ℕ)}` over a field `R`,
  the alternating form on `⋀² P` with value `1` on every `e_{2i} ∧ e_{2i+1}` and `0` on the other
  basis wedges has infinite rank and is not a finite sum of `f ∧ g`.

### 7.4 Polyvector fields

Define the polyvector fields `T^n_{R/k} = ⋀[R]^n Der_k(R)` and `T^•_{R/k}` as the exterior algebra
over `R` of `Der_k(R) = Derivation k R R`, graded by `n` (Ginz05 §6.1, lines 1130–1140; HKR62
Theorem 5.2, line 548; Mat86 §25). Define the `R`-linear map
`τ_n : T^n_{R/k} → Hom_R(Ω^n_{R/k}, R)`,
`D₁ ∧ ⋯ ∧ D_n ↦ (r₀ dr₁ ∧ ⋯ ∧ dr_n ↦ r₀ det(D_j(r_i)))`, as `exteriorPower.pairingDual` composed
with `⋀^n` of the inverse of `KaehlerDifferential.linearMapEquivDerivation`.

*Needs:* Mathlib `ExteriorAlgebra.exteriorPower`, `Derivation`, `Derivation.instModule`,
`exteriorPower.zeroEquiv`, `exteriorPower.oneEquiv`, `exteriorPower.pairingDual`,
`KaehlerDifferential.linearMapEquivDerivation`, `exteriorPower.subsingleton_of_span_eq_top_of_card_lt`,
`Module.FinitePresentation`, `Algebra.FormallySmooth.projective_kaehlerDifferential`; §7.3.

- `T⁰_{R/k} ≅ R` and `T¹_{R/k} ≅ Der_k(R)`; the wedge product of the exterior algebra is
  graded commutative and strictly alternating.
- `τ₀` is the identity of `R`, `τ₁` is `KaehlerDifferential.linearMapEquivDerivation` inverted.
- If `Ω¹_{R/k}` is finite projective, in particular if `R` is smooth over `k` (finite presentation
  of `Ω¹` from `Algebra.FinitePresentation`, projectivity from
  `Algebra.FormallySmooth.projective_kaehlerDifferential`), then `τ_n` is an isomorphism for every
  `n` (§7.3).
- If `Ω¹_{R/k}` is generated by `d` elements, `Hom_R(Ω^n_{R/k}, M) = 0` for `n > d`.

**Checks.**

- For `R = k[x,y]`, `T²` is free of rank one on `∂_x ∧ ∂_y`, and `τ₂(∂_x ∧ ∂_y)(dx ∧ dy) = 1`.
- Over `𝔽₂[x]`, `∂_x ∧ ∂_x = 0` in `T²`; a signed-coinvariant model of `⋀²` would leave a nonzero
  element of order two.
- For `K = 𝔽₂(u)` and the inseparable field `R = K[a]/(a² − u)`, every `D(a)` is allowed since
  `D(a² − u) = 2a D(a) = 0`, so `Der_K(R) = R·∂` with `∂a = 1` and `T² = 0`.

### 7.5 The determinant cocycle and the HKR maps

For `D₁,…,D_n ∈ Der_k(R)` define the determinant cochain `⟨D₁,…,D_n⟩ ∈ C^n(R,R)`,
`(r₁,…,r_n) ↦ det(D_j(r_i))`. Prove that it is `R`-multilinear and alternating in the `D_j`, so
that it defines the unnormalised HKR map `T^n_{R/k} → C^n(R,R)`; that it is a derivation in each
`r_i` and therefore a normalised Hochschild cocycle; that `⟨D⟩ = D` for `n = 1` and `⟨⟩ = 1` for
`n = 0`; that `⟨D₁,…,D_n⟩ = Σ_{σ∈S_n} sgn(σ) D_{σ(1)} ∪ ⋯ ∪ D_{σ(n)}`; and that if `Ω¹_{R/k}` is finite
projective, the unnormalised map is injective. When `n!` is invertible in `k`, define the
normalised HKR map `Φ^n_HKR = (1/n!)⟨…⟩` (Ginz05 §9.2, lines 2101–2156; HKR62 lines 509–521; AV20
lines 237–243).

*Needs:* §§1.2, 2.2, 5.1, 6.2, 7.4; Mathlib `Matrix.det`, `Derivation`.

- Evaluation: for `R` flat over `k`, `h_n[⟨D₁,…,D_n⟩](ε^cl_n(r₀ dr₁ ∧ ⋯ ∧ dr_n)) = n! r₀ det(D_j(r_i))`,
  and `h_n[D₁ ∪ ⋯ ∪ D_n](ε^cl_n(r₀ dr₁ ∧ ⋯ ∧ dr_n)) = r₀ det(D_j(r_i))` (§§6.4, 7.1).
- A cochain that is a derivation in each argument is a Hochschild cocycle for commutative `R`;
  at `n = 2`, `δf(a,b,c) = a f(b,c) − f(ab,c) + f(a,bc) − f(a,b) c = 0` after expanding the two middle
  terms.
- For every commutative `R`, `[⟨D₁,…,D_n⟩] = n! · [D₁ ∪ ⋯ ∪ D_n]` in `HH^n(R,R)`: by graded
  commutativity (§6.2) adjacent degree-one classes anticommute, so
  `[D_{σ(1)} ∪ ⋯ ∪ D_{σ(n)}] = sgn(σ) [D₁ ∪ ⋯ ∪ D_n]`.
- The unnormalised map is natural for isomorphisms of `k`-algebras.

**Checks.**

- On `k[x,y]`, `⟨∂_x, ∂_y⟩(x,y) = 1` and `⟨∂_x, ∂_y⟩(y,x) = −1`; the product cochain `∂_x ∪ ∂_y` takes
  the values `1` and `0`, and is not alternating in the derivations: `(∂_x ∪ ∂_x)(x,x) = 1` while
  `⟨∂_x, ∂_x⟩ = 0`.
- On `𝔽₂[x,y]`, `⟨∂_x, ∂_y⟩ = δ(∂_x ∂_y)`: `δ(D₁D₂)(a,b) = −(D₁a D₂b + D₂a D₁b)`, which in
  characteristic two is `det(D_j(r_i))`; the cocycle is nonzero but its class is zero.
- For `n = 1` the map is `D ↦ D`, and its class is the class of §3.3.

### 7.6 The cohomological HKR theorem

Let `k` be a commutative ring and `R` a commutative `k`-algebra with `Algebra.Smooth k R` and
`Module.Projective k R`. Prove:

1. for every `R`-module `M` and every `n`, the evaluation pairing `h_n` of §7.1 is an isomorphism,
   and with `ε^cl_n` it gives a natural `R`-linear isomorphism `HH^n(R,M) ≅ Hom_R(Ω^n_{R/k}, M)`;
2. the map `Ψ_n : T^n_{R/k} → HH^n(R,R)`, `D₁ ∧ ⋯ ∧ D_n ↦ [D₁ ∪ ⋯ ∪ D_n]`, is well defined and is an
   `R`-linear isomorphism, equal to the composite of `τ_n` (§7.4) with the inverse of (1); the maps
   `Ψ_n` together form an isomorphism of graded `R`-algebras `(T^•_{R/k}, ∧) ≅ (HH^•(R,R), ∪)`;
3. `[⟨D₁,…,D_n⟩] = n! · Ψ_n(D₁ ∧ ⋯ ∧ D_n)` for all derivations;
4. if `n!` is invertible in `k`, `[Φ^n_HKR(ξ)] = Ψ_n(ξ)` for every `ξ ∈ T^n_{R/k}`, so the normalised
   HKR map induces an isomorphism `T^n_{R/k} ≅ HH^n(R,R)`; if `ℚ ⊆ k`, these maps form the algebra
   isomorphism of (2);
5. if `Ω¹_{R/k}` is generated by `d` elements, `HH^n(R,M) = 0` for every `n > d`.

(HKR62 Theorem 5.1, line 522, Lemma 4.1, line 301, the product formula of line 495, and the
deduction of lines 528–546 leading to Theorem 5.2, line 548; Loday98 §3.4, Theorem 3.4.4;
Weibel94 §9.4, Theorem 9.4.7; AV20 Proposition 1.2, line 70; Ginz05 Theorem 9.1.3, line 2086.)
One route: `C_n(R,R) = R ⊗_k R^{⊗n}` is a projective `R`-module (§4.2 and
`Module.Projective.tensorProduct`); `HH_n(R,R) ≅ Ω^n_{R/k}` through `ε^cl_n` (§6.4(d)) is finite
projective (§7.3); §7.2 makes `h_n` bijective; §7.4 identifies `Hom_R(Ω^n, R)` with `T^n`; the
evaluation formulas of §7.5 identify the composite with `Ψ_n` and give (3); multiplicativity of
`Ψ` is associativity of `∪`; (5) follows from §7.4.

*Needs:* §§1.5, 4.2, 5.2, 6.4, 7.1–7.5; gap smooth-hkr-antisymmetrisation (through §6.4(d));
Mathlib `Algebra.Smooth`, `Algebra.Smooth.flat`, `Module.Projective.tensorProduct`,
`Module.FinitePresentation`, `Algebra.FormallySmooth.projective_kaehlerDifferential`.

**Checks.**

- For `k` a field and `R` smooth of finite type, `Module.Projective k R` holds automatically and the
  theorem is Ginz05 Theorem 9.1.3 and, for `k` perfect, HKR62 Theorem 5.2.
- For `R = 𝔽₂[x,y]`, `Ψ₂(∂_x ∧ ∂_y) = [∂_x ∪ ∂_y]` is nonzero (it pairs to `1` with
  `ε^cl₂(dx ∧ dy) = [1 ⊗ x ⊗ y − 1 ⊗ y ⊗ x]`), while `[⟨∂_x, ∂_y⟩] = 2Ψ₂(∂_x ∧ ∂_y) = 0`: the unnormalised
  determinant map is not an isomorphism on cohomology when `n! = 0` in `k`.
- `ℤ → ℤ[1/2]` is étale, so `Algebra.Smooth` holds, but `ℤ[1/2]` is not a projective `ℤ`-module (its
  element `1` is divisible by every power of `2`, which no nonzero element of a free `ℤ`-module is, and
  projective `ℤ`-modules are free): smoothness does not imply
  `k`-projectivity. Here the conclusion holds anyway: `ℤ[1/2] ⊗ ℤ[1/2] = ℤ[1/2]`, every `C^n` is
  `ℤ[1/2]`, `HH^n = 0` for `n ≥ 1`, and `Der = 0`.
- For the inseparable `R = 𝔽₂(u)[a]/(a² − u)` over `𝔽₂(u)`, which is not smooth, `T² = 0` (§7.4
  Checks) while the two-periodic resolution with differentials `a ⊗ 1 − 1 ⊗ a` and
  `a ⊗ 1 + 1 ⊗ a` gives `HH²(R,R) ≅ R/(2a) = R ≠ 0`; HKR62 lines 569–582 give the corresponding
  non-strictly-alternating class in `Tor₂`. Smoothness cannot be dropped.
- For `R = k[x]`, `HH¹ ≅ R·∂`, `HH² = 0`, and `[∂ ∪ ∂] = 0` (§6.2 Checks), as the alternation of `Ψ`
  requires.

### Examples

For `R = k[x,y]` over any `k`, `HH²(R,R)` is free of rank one on `[∂_x ∪ ∂_y]`, the class of the
determinant cocycle is twice it, and `HH^n(R,R) = 0` for `n ≥ 3`. For `R = k[x, x⁻¹]` (smooth and
free over `k`), `HH¹(R,R) = R·x∂_x` and `HH^n = 0` for `n ≥ 2`.

### Dependencies

Layers 1–6; Tau Ceti's Kronecker map and universal coefficient sequence; Mathlib's exterior
powers, Kähler differentials and smoothness; through §6.4(d), the gap
smooth-hkr-antisymmetrisation on RefinedTraceMethods §1.9.

## Layer 8: Polynomial algebras through the Koszul resolution

### 8.1 The diagonal of a polynomial algebra

For `R = MvPolynomial (Fin m) k` over any commutative `k`, prove that the elements
`t_i = X_i ⊗ 1 − 1 ⊗ X_i` of `Rᵉ = R ⊗[k] R` form a weakly regular sequence and generate the kernel of
the multiplication map `Rᵉ → R` (HKR62 lines 268–279; Ginz05 Lemma 9.3.1, line 2187). One route:
`Rᵉ ≅ MvPolynomial (Fin m) R` with the second copy of the variables replaced by `Y_i = 1 ⊗ X_i − X_i ⊗ 1`,
in which the multiplication map is evaluation at `Y = 0` and the variables form a regular sequence.

*Needs:* Mathlib `MvPolynomial`, `Algebra.TensorProduct`, `RingTheory.Sequence.IsWeaklyRegular`.

**Checks.**

- `m = 0`: the empty sequence, `Rᵉ = k`, and the kernel is `0`.
- `m = 1`: `t = X ⊗ 1 − 1 ⊗ X` is a nonzerodivisor of `k[X] ⊗ k[X] ≅ k[X,Y]` for nonzero `k`.
- For `R = k[x]/(x²)`, `t = x ⊗ 1 − 1 ⊗ x` is a zero divisor: `t (x ⊗ 1 + 1 ⊗ x) = x² ⊗ 1 − 1 ⊗ x² = 0`
  with `x ⊗ 1 + 1 ⊗ x ≠ 0`.

### 8.2 The Koszul bimodule resolution

Construct the Koszul bimodule resolution `K(R)` of `R = MvPolynomial (Fin m) k`: the Koszul complex
of DerivedModuleAlgebra §0.K.1 of the sequence `(t₁,…,t_m)` in `Rᵉ`, augmented to `R` by
multiplication. Prove that it is a projective resolution of `R` in `ModuleCat Rᵉ` of length `m` with
`K_j = ⋀^j (Rᵉ)^m` free of rank `C(m,j)`, for every commutative `k`, and that `R ⊗_{Rᵉ} K(R)` and
`Hom_{Rᵉ}(K(R), R)` have zero differential (HKR62 lines 268–279, the Koszul resolution in the proof
of Theorem 3.1; Ginz05 §9.3, lines 2187–2197).

*Needs:* §§4.1, 8.1; DerivedModuleAlgebra §0.K.1 (Koszul complex of a finite sequence);
Mathlib `CategoryTheory.ProjectiveResolution`.

- `d(e_i) = t_i` and `d(e_i ∧ e_j) = t_i e_j − t_j e_i`, the sign of §0.K.1's degree `−1` derivation.
- `Tor_j^{Rᵉ}(R,R) ≅ ⋀^j R^m` and `Ext^j_{Rᵉ}(R,R) ≅ ⋀^j (R^m)^*` as `R`-modules.
- The construction is natural in the ground ring `k`.

**Checks.**

- `m = 1`: `0 → Rᵉ --t--> Rᵉ → R → 0` is exact.
- `m = 0`: `K = k` in degree zero, augmented by the identity.
- The same complex for `k[x]/(x²)` is not exact in degree one, by §8.1's zero divisor.

### 8.3 Comparison with the bar resolution

Construct the chain map `ι : K(R) → B_•(R)` over the identity of `R`,
`ι_j(e_{i₁} ∧ ⋯ ∧ e_{i_j}) = Σ_{σ∈S_j} sgn(σ) 1 ⊗ X_{i_{σ(1)}} ⊗ ⋯ ⊗ X_{i_{σ(j)}} ⊗ 1`, and prove that it is a
homotopy equivalence of projective resolutions (Ginz05 §9.2, lines 2142–2150, for the alternation
map; HKR62 lines 448–466 for the shuffle product on the bar resolution).

*Needs:* §§4.2, 8.2; Mathlib `CategoryTheory.ProjectiveResolution`; Tau Ceti
`CategoryTheory.ProjectiveResolution.isoExt_hom_comp_homologyMap`.

- `ι` commutes with the augmentations and with the differentials; `R ⊗_{Rᵉ} ι` sends `e_I` to the
  antisymmetrised chain `Σ sgn(σ) 1 ⊗ X_{i_{σ(1)}} ⊗ ⋯ ⊗ X_{i_{σ(j)}}`.
- `ι` has a homotopy inverse `ρ : B_•(R) → K(R)` over the identity, unique up to homotopy.
- `ι` is natural in the ground ring.

**Checks.**

- `j = 1`: `b′(ι(e_i)) = b′(1 ⊗ X_i ⊗ 1) = X_i ⊗ 1 − 1 ⊗ X_i = ι(d e_i)`.
- `j = 2`: `b′(1 ⊗ X₁ ⊗ X₂ ⊗ 1 − 1 ⊗ X₂ ⊗ X₁ ⊗ 1) = X₁ ⊗ X₂ ⊗ 1 + 1 ⊗ X₁ ⊗ X₂ − X₂ ⊗ X₁ ⊗ 1 − 1 ⊗ X₂ ⊗ X₁`,
  which is `t₁ · (1 ⊗ X₂ ⊗ 1) − t₂ · (1 ⊗ X₁ ⊗ 1) = ι(d(e₁ ∧ e₂))`; the map without the sign of `σ` is
  not a chain map.
- `m = 0`: `ι` is the identity of `k`.

### 8.4 Hochschild homology and cohomology of polynomial algebras

For `R = MvPolynomial (Fin m) k` over any commutative `k`, prove that `HH_n(R,R)` is a free
`R`-module with basis the classes `ε^cl_n(dX_I) = [Σ_{σ} sgn(σ) 1 ⊗ X_{i_{σ(1)}} ⊗ ⋯ ⊗ X_{i_{σ(n)}}]` for
`I = {i₁ < ⋯ < i_n} ⊆ {1,…,m}`; that `HH^n(R,R)` is a free `R`-module with basis the classes
`[∂_{i₁} ∪ ⋯ ∪ ∂_{i_n}]`, `∂_i = MvPolynomial.pderiv i`; that the two bases are dual under `h_n`; and
that `HH_n(R,R) = HH^n(R,R) = 0` for `n > m`. Consequently `ε^cl_n` is an isomorphism, and
`D₁ ∧ ⋯ ∧ D_n ↦ [D₁ ∪ ⋯ ∪ D_n]` is a well-defined isomorphism `T^n_{R/k} ≅ HH^n(R,R)` (the map `Ψ_n` of
§7.6), for polynomial algebras over every `k`, without the gap used in §6.4(d) (HKR62 lines
268–279, the Koszul-resolution computation inside the proof of Theorem 3.1, which uses only the
regular sequence of §8.1 and not the Noetherian and regularity hypotheses of the theorem's
statement at line 210; Ginz05 Lemma 9.3.1, line 2187, for a regular sequence in a commutative
`k`-algebra; Loday98 §3.2, symmetric algebras over any `k`; Weibel94 §9.4).

*Needs:* §§4.4, 4.5, 6.2, 6.4(a), 7.1, 7.4, 7.5, 8.2, 8.3; Mathlib `MvPolynomial.pderiv`,
`CategoryTheory.ProjectiveResolution.isoLeftDerivedObj`; Tau Ceti
`CategoryTheory.ProjectiveResolution.isoExt_hom_comp_homologyMap`.

### 8.5 The top degree and the Jacobian determinant

For `R = MvPolynomial (Fin m) k`, `g ∈ R` and `r₁,…,r_m ∈ R`, prove that
`⟨g∂₁, ∂₂, …, ∂_m⟩(r₁,…,r_m) = g · det(∂_j r_i)`, the Jacobian determinant, that its class is
`m! · g · [∂₁ ∪ ⋯ ∪ ∂_m]`, that `HH^m(R,R)` is free of rank one on `[∂₁ ∪ ⋯ ∪ ∂_m]`, and that when `m!` is
invertible in `k`, `Φ^m_HKR(g ∂₁ ∧ ⋯ ∧ ∂_m)(r₁,…,r_m) = (g/m!) det(∂_j r_i)` with class
`g · [∂₁ ∪ ⋯ ∪ ∂_m]`. The determinant formula is the evaluation of the determinant cocycle of §7.5
at the derivations `g∂₁, ∂₂, …, ∂_m`, its class identity is that of §7.5 with the product formula
of HKR62 line 495, and the rank-one statement is the top degree of §8.4 (Ginz05 §9.2, lines
2142–2156; HKR62 Theorem 5.2, line 548, is the case of a perfect field `k`).

*Needs:* §§7.5, 8.4.

**Checks.**

- `m = 2`, `r₁ = X₁²`, `r₂ = X₂`: `det(∂_j r_i) = 2X₁`, so the normalised value is `g X₁` when `2` is
  invertible.
- `m = 1`: `⟨g∂⟩ = g∂` and its class is `g[∂]`, with no factorial.
- `m = 2` over `𝔽₂`: the Jacobian cocycle `⟨∂₁, ∂₂⟩ = δ(∂₁∂₂)` is a nonzero coboundary, while
  `[∂₁ ∪ ∂₂]` generates `HH²`.

### Examples

For `R = k[X]`: `K(R)` is `Rᵉ --t--> Rᵉ`, `HH₀ = HH⁰ = R`, `HH₁ = R·[1 ⊗ X]`, `HH¹ = R·[∂]`, and all higher
groups vanish, over every `k`. For `R = k[X₁,X₂,X₃]`, `HH³(R,R)` is free on `[∂₁ ∪ ∂₂ ∪ ∂₃]` and the
Jacobian cocycle of `(X₁, X₂, X₃)` represents `6` times it.

### Dependencies

Layers 1–7 (§6.4(a) for the antisymmetrisation map, not §6.4(d)); DerivedModuleAlgebra §0.K.1;
Mathlib's polynomial rings and regular sequences.

## Downstream consumers

No roadmap later in the merge order imports this one. The roadmaps that use Hochschild theory
are earlier and import DGAInfinity Layer 8 directly: KTheoryFiniteLocalFields §4.0 and
RefinedTraceMethods §§1.9–1.10 (homological HKR and cyclic theory), LanglandsParameterStacks
§1.17 (the Hochschild action on self-Ext), ZigzagPreprojective Layer 7 (bigraded Hochschild
cohomology and `A∞` deformations), NoncommutativeGeometry N1 and BanachAlgebras Layer 6 (scalar and
bounded variants). The comparison of Layer 6 lets each of them read its statements on the classical
complex of this roadmap. A later roadmap on Gerstenhaber algebras, the Schouten–Nijenhuis bracket,
Kontsevich formality and deformation quantisation of polynomial algebras would build on Layers 6–8;
such a roadmap is outside this one.

## Worked examples

- **The cohomology of `k[x,y]` in characteristic two.** Over `𝔽₂`, `Ψ₂(∂_x ∧ ∂_y) = [∂_x ∪ ∂_y]`
  generates `HH²(𝔽₂[x,y])`, the antisymmetrised chain `c = 1 ⊗ x ⊗ y − 1 ⊗ y ⊗ x` generates
  `HH₂`, and `h₂[∂_x ∪ ∂_y](c) = 1`. The determinant cocycle satisfies `⟨∂_x, ∂_y⟩(x,y) = 1` and
  `⟨∂_x, ∂_y⟩ = δ(∂_x∂_y)`, consistent with `h₂[⟨∂_x,∂_y⟩](c) = 2 = 0`.
- **A non-split extension.** `k[t]/(t³) → k[x]/(x²)` is the twisted square-zero extension of the
  2-cocycle `f(x,x) = 1` with coefficients in `k`; no algebra section exists, so the class is
  nonzero in `HH²(k[x]/(x²), k)`.
- **Matrices.** `Mat₂(k)` has `HH₀ ≅ k` (trace), `HH⁰ = k`, and every derivation inner.

## References

- **HKR62**: Gerhard Hochschild, Bertram Kostant and Alex Rosenberg, *Differential forms on regular
  affine algebras*, Transactions of the American Mathematical Society 102 (1962), 383–408,
  DOI 10.1090/S0002-9947-1962-0142598-8. Theorem 3.1 (line 210) and the Koszul computation inside
  its proof (lines 268–279), Lemma 4.1 (line 301), the bar
  resolution and its products (lines 410–495), Theorem 5.1 (line 522), Theorem 5.2 (line 548), the
  characteristic-two example (lines 569–582).
- **Ginz05**: Victor Ginzburg, *Lectures on noncommutative geometry*, arXiv:math/0506603 (2005).
  §3.1 (derivations), §§4.2–4.5 (bar and reduced bar complexes), §§5.1–5.7 (Hochschild homology and
  cohomology, low degrees, extensions, reduced cochains), §6.6 (cup product, Gerstenhaber
  composition and bracket, Proposition 6.6.4), §8.1 (Kähler differentials and `HH₁`), §9 (the HKR
  theorem, Theorem 9.1.3, the maps of §9.2, Lemma 9.3.1).
- **AV20**: Benjamin Antieau and Gabriele Vezzosi, *A remark on the Hochschild–Kostant–Rosenberg
  theorem in characteristic p*, arXiv:1710.06039v1; Annali della Scuola Normale Superiore di Pisa
  (2020). Proposition 1.2 (line 70) and the factorial remark (lines 237–243).
- **StacksSmooth**: The Stacks Project Authors, *The Stacks Project*, Commutative Algebra, Section
  Smooth ring maps, Tags 00T2 and 00TN.
- **Loday98**: Jean-Louis Loday, *Cyclic Homology*, 2nd ed., Grundlehren der mathematischen
  Wissenschaften 301, Springer (1998). §§1.1, 1.3, 1.5, 3.2, 3.4 (Theorem 3.4.4).
- **Weibel94**: Charles A. Weibel, *An Introduction to Homological Algebra*, Cambridge Studies in
  Advanced Mathematics 38, Cambridge University Press (1994). §§9.1–9.4 (Theorem 9.4.7).
- **CE56**: Henri Cartan and Samuel Eilenberg, *Homological Algebra*, Princeton Mathematical
  Series 19, Princeton University Press (1956). Chapters IX and XI.
- **Ger63**: Murray Gerstenhaber, *The cohomology structure of an associative ring*, Annals of
  Mathematics 78 (1963), 267–288. §7.
- **Mat86**: Hideyuki Matsumura, *Commutative Ring Theory*, Cambridge Studies in Advanced
  Mathematics 8, Cambridge University Press (1986). §25.
