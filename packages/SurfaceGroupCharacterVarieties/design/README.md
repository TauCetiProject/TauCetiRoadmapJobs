# Roadmap: surface group character varieties

**Summary.** This roadmap builds the interface between the mapping class groups of punctured
surfaces and the representation theory of their fundamental groups into real reductive groups.
It starts from the abstract group theory of outer automorphisms (the action of TeichmullerGeometry's
outer automorphism group `Out(Γ)` of an arbitrary group on conjugacy classes of homomorphisms
`Hom(Γ, H)/H`), completes the
punctured-surface mapping class group of MordellLawrenceVenkatesh Layer LV.5 by the comparison of
punctures with marked points, the permutation homomorphism, the pure mapping class group and the
pure Birman exact sequence, and constructs the outer action `Ψ : Mod_{g,n} → Out(π₁(Σ_{g,n}, x))`
with all its laws. It then builds the representation scheme `Hom(Γ, G)` of a finitely generated
group, the real reductive groups `G^ℝ` (open subgroups of the real points of a connected reductive
`ℝ`-group, with the bridge to real forms given by antiholomorphic involutions), the real
Kempf–Ness theory of minimal vectors, the six equivalent characterizations of reductive
representations, and the character variety `𝒳(Γ, G^ℝ) = Hom^red(Γ, G^ℝ)/G^ℝ` of a finitely
generated group `Γ`. The end theorems are:
`𝒳(Γ, G^ℝ)` is Hausdorff, locally compact and second countable and is homeomorphic to the space of
minimal vectors modulo a maximal compact subgroup; for complex groups it is homeomorphic to the
complex points of the affine quotient `Hom(Γ, G)//G`, which is the universal Hausdorff quotient of
`Hom(Γ, G(ℂ))/G(ℂ)`; and `Out(Γ)`, hence `Mod_{g,n}` through `Ψ`, acts on it by homeomorphisms,
compatibly with change of basepoint and with the action on conjugacy classes of all
representations.

## Scope and ownership

This roadmap owns:

- for an arbitrary group `Γ`, the identification `Inn(Γ) ≃* Γ ⧸ Z(Γ)` and the transport of
  TeichmullerGeometry §4.2's `Out(Γ)` along isomorphisms `Γ ≃* Γ'`, the set
  `Rep(Γ, H) = Hom(Γ, H)/H` of conjugacy classes of homomorphisms into a group `H`, and the left
  action `[φ]·[ρ] = [ρ ∘ φ⁻¹]` of `Out(Γ)` on it, together with the theorem that the action of
  `Aut(Γ)` on `Hom(Γ, H)` itself factors through `Out(Γ)` exactly when every homomorphism
  `Γ → H` has abelian image (Layer 1);
- the group `Mod^±(X)` of ambient isotopy classes of self-homeomorphisms of a topological space,
  which differs from TeichmullerGeometry §0.0h's `MappingClassGroupFull X` by requiring the
  level-preserving total map of an isotopy to be a homeomorphism, the relation that extends over
  punctures, together with its comparison homomorphism onto `MappingClassGroupFull X`; the
  extension theorem identifying homeomorphisms and isotopies of `Σ ∖ P` with those of `Σ` preserving
  the finite set `P`, the permutation homomorphism `Mod_{g,n} → Sym(P)` and its surjectivity, the
  pure mapping class group `PMod_{g,n}` of index `n!`, the homeomorphism of `Σ_g` with
  TeichmullerGeometry §0.0f's standard orientable model of genus `g`, which gives `Σ_g` its genus
  and orientability in that roadmap's sense, the presentation of `π₁(Σ_g ∖ P)` by the
  orientable surface group `S⁺(g, n)` for every `n ≥ 0`, the pure Birman exact sequence, and the
  change-of-model isomorphisms (Layer 2);
- the automorphism `f_δ` of `π₁(X, x)` induced by a homeomorphism and a path, its laws, the lemma
  that a homeomorphism isotopic to the identity induces an inner automorphism, the outer action
  `Ψ_x : Mod^±(X) → Out(π₁(X, x))` and its canonicity under change of basepoint, its
  identification for closed surfaces of genus at least one with TeichmullerGeometry §5.4's
  Dehn–Nielsen–Baer isomorphism and the description of the image of the orientation-preserving
  classes by the action on `H₂`, its comparison with the outer class of
  MordellLawrenceVenkatesh §5.9, the action of `Mod^±_{g,n}` on conjugacy classes of homomorphisms,
  defined as `Ψ_x` followed by Layer 1's action of `Out`, and its agreement with
  MordellLawrenceVenkatesh §5.9's action on finite coverings, its compatibility with basepoint change
  and with homomorphisms of the target group, the comparison of finite orbits under finite-index
  subgroups, and the non-descent theorem for the based action of the marked-point group `Mod(S*)` on
  homomorphisms (Layer 3);
- the representation scheme `Hom(Γ, G)` of a finitely generated group into an affine group scheme
  over a commutative ring, its topologies on real and complex points, and the surface-group
  instances (Layer 4);
- real reductive data, the real-form bridge from antiholomorphic involutions, Cartan-compatible
  realizations of the conjugation action, and the real Kempf–Ness theorem for linear actions of real
  reductive groups (Layer 5);
- reductive representations and the equivalence of the six conditions (adjoint semisimplicity over
  `ℝ` and over `ℂ`, reductive Zariski closure, `G`-complete reducibility, closed complex orbit,
  closed real orbit) (Layer 6);
- the character variety `𝒳(Γ, G^ℝ)` of a finitely generated group, its topology, the affine
  quotient `Hom(Γ, G)//G` over fields of characteristic zero and its complex comparison,
  functoriality, the action of `Out(Γ)` and of `Mod_{g,n}`, and the standard examples (Layer 7).

It leaves to named owners, which are consumed and never planned again:

- surfaces with boundary and punctures as topological data, `Mod(S)` (orientation-preserving,
  boundary fixed, punctures permuted) and its action, through `Out(π₁ S)`, on isomorphism classes of
  finite coverings, `[p] ↦ [f ∘ p]`, which on monodromy is precomposition with `(f⁻¹)_*`, the
  marked-point group `Mod(S*)`, `Forget`, the classification of compact surfaces by type
  `(g, b, n)`, the fundamental class and duality, the homology of a surface of given type,
  asphericity, trivial centre for `χ(S) < 0`, the evaluation fibration, Hamstrom's theorem, point
  pushing, the Birman exact sequence, capping, Dehn twists, the symplectic representation and the
  configuration fibration: MordellLawrenceVenkatesh §§5.1, 5.4–5.6, 5.9–5.12, 5.15–5.23;
- the mapping class group `Mod(F)` of a compact smooth surface, whose single owner it is:
  GeometricTopology Layer 1.7.2;
- Epstein's isotopy theorem for closed surfaces, the comparison of the boundaryless and half-plane
  models of a surface without boundary, polygon schemas, their realizations and the standard
  models, the classification of compact surfaces by these models and the genus and orientability
  predicates it defines, the topological mapping class group `MappingClassGroupFull`
  of a space (homeomorphisms modulo isotopy through embeddings), the outer automorphism group
  `OuterAut` of an arbitrary group, written `Out` here, with the normality of the inner
  automorphisms (`innerAut_normal`) and its comparison with `TauCeti.ContinuousOut`, the geometric
  group `Π = π₁ᵒᵖ` and its inversion equivalence, the attaching word of the polygon model, the
  Euler number, the uniformizing holonomy, the topological Dehn–Nielsen–Baer theorem
  `dehn_nielsen_baer` for closed orientable surfaces of genus at least one, the mapping class groups
  of the sphere and the torus, and the converse marked representation comparison:
  TeichmullerGeometry §§0.0d, 0.0e, 0.0f, 0.0h, 4.2–4.5, 5.4, 5.4a, 6.1;
- the presented surface groups `S±(g, m)` and the freeness of `S±(g, m)` for `m ≥ 1`:
  FreeGroupsAndLimitGroups §§6.1–6.2; van Kampen and the wedge of circles: AlgebraicTopology
  Stage 1; cellular homology and its comparison with singular homology: AlgebraicTopology Stage 4;
  the singular homology of a `K(G, 1)` CW complex as group homology: ClassifyingSpaces
  Stage 4;
- affine group schemes, their Lie algebras and adjoint representations, closed orbits in orbit
  closures, unipotent radicals, reductivity and characteristic-zero linear reductivity, Levi
  decompositions, parabolics and cocharacters, classification and split models: ReductiveGroups
  Layers 0, 1, 2, 3A, 5, 6, 7, 8, 9;
- the point topology on `X(R)` for a topological algebra `R` and Weil restriction:
  ReductiveGroupsPartII §§RG2.0.1, RG2.0a.2; the classical topology on complex points of a
  finite-type complex scheme: ComplexComparisonPartII §C-1.1;
- the affine quotient of an integral affine variety by a connected reductive group, the unique
  closed orbit in each fibre, `G`-complete reducibility of closed subgroups, the `GL(V)` comparison,
  the closed-tuple criterion and the cocharacter limit into the closed orbit:
  ArithmeticGaloisRepresentations §1.11, paragraphs **Reductive quotients over fields and DVRs**
  and **Complete reducibility and closed tuples**; scalar extension of semisimple representations
  over a perfect field: ArithmeticGaloisRepresentations §1.7;
- real points of linear algebraic groups as Lie groups, transpose-stable realizations, maximal
  compact subgroups, polar decomposition, and algebraic Cartan involutions:
  ArithmeticLocallySymmetricSpaces §§ALS.F.1, ALS.0.1;
- compact real forms, holomorphic representations of complexifications and the algebraicity of
  holomorphic extensions between compact-real-form pairs: LieGroups Layer 7;
  the Cartan decomposition: LieGroups Layer 9; Peter–Weyl: CompactGroups Layer 5;
- flat connections on a closed surface modulo gauge for compact `K` and their comparison with
  `Hom(π₁Σ, K)/K`: SymplecticGeometry/HamiltonianReduction R5, used here only as a Check.

The outer action of `Out(F_r)` on
exterior epimorphisms onto a finite group is InverseGaloisAndArithmeticFundamentalGroups §IG.3.2;
it is the case `Γ = F_r`, `H` finite, restricted to surjections, of Layer 1 here. The
mapping-class action of GroupActionsOnRiemannSurfaces §3.4 on classes of surface-kernel
epimorphisms, taken there from MordellLawrenceVenkatesh §5.9, is, through the quotient of the
punctured surface group onto the Fuchsian group of the signature, the restriction of §3.5's action
with `H` finite to the classes of epimorphisms of the prescribed peripheral orders and to the
subgroup preserving the cone-order colours.

Not owned and not planned here: the smooth model `Diff⁺(Σ, P)/smooth isotopy` of the punctured
mapping class group and the Dehn–Nielsen–Baer theorem for punctured surfaces, which extend
TeichmullerGeometry's closed theory and belong to a TeichmullerGeometry, Part II; Teichmüller space
and its mapping class action (TeichmullerGeometry Layers 1–3, 7–8); the nonabelian Hodge
correspondence, Higgs bundles, Hitchin and `Θ`-positive components; Goldman's symplectic form and
the tangent-space theory of character varieties; the Kirwan–Ness stratification of the null cone.

## Conventions

- **Fundamental groups and paths.** `π₁(X, x)` is Mathlib's `FundamentalGroup X x`. For paths
  `α : x ⟶ y` and `β : y ⟶ z`, `α ⬝ β` is `α.trans β` (first `α`); `ᾱ` is `α.symm`. The native
  product is `[α] * [β] = [β ⬝ α]` (`FundamentalGroup.mul_def`), so `MulAut.conj [u] [γ] =
  [u] * [γ] * [u]⁻¹` is the class of `ū ⬝ γ ⬝ u`. Mathlib's `fundamentalGroupMulEquivOfPath σ`, for
  `σ : x ⟶ x'`, sends `[γ]` to `[σ̄ ⬝ γ ⬝ σ]`; for a loop `σ` at `x` it is `MulAut.conj [σ]`.
  Witness: on the wedge of two circles with loops `a, b` at the wedge point, `[a] * [b]` is the class
  of `b ⬝ a`, and `MulAut.conj [a] [b]` is the class of `ā ⬝ b ⬝ a`; this is the convention of
  MordellLawrenceVenkatesh §5.19, where `Push(α)` acts by `γ ↦ α * γ * α⁻¹`.
- **Outer automorphisms.** `Inn(Γ)` is the range of `MulAut.conj : Γ →* MulAut Γ`, and `Out(Γ)` is
  TeichmullerGeometry §4.2's `OuterAut Γ = MulAut Γ ⧸ Inn(Γ)`, for every group `Γ`; the class of
  `φ ∈ MulAut Γ` is written `[φ]`.
- **Commutators and surface groups.** The presented surface group is FreeGroupsAndLimitGroups
  §6.1's `S⁺(g, m)`, with relator `[a₁, b₁] ⋯ [a_g, b_g] p₁ ⋯ p_m` and `[x, y] = x⁻¹ y⁻¹ x y`.
  TeichmullerGeometry §4.3 uses `[a, b] = a b a⁻¹ b⁻¹` in the geometric group `Π`; the substitution
  `x ↦ x⁻¹` exchanges the two commutators, so both relators define isomorphic groups and isomorphic
  representation schemes `{(A_i, B_i) : ∏ [A_i, B_i] = 1}`. Witness: for `g = 1` both read
  `A B = B A`; for `g = 2` the choice is detected as in TeichmullerGeometry §4.3's Check.
- **Actions.** Automorphisms of `ℤ²` are read as matrices acting on column vectors, the matrix `M`
  sending the `j`-th basis vector to the `j`-th column of `M`; this is the reading of
  `MulAut ℤ² = Out(ℤ²) = GL₂(ℤ)` everywhere below. `Aut(Γ)` acts on the left on `Hom(Γ, H)` by
  `φ · ρ = ρ ∘ φ⁻¹`. Witness: for `Γ = ℤ²`,
  `ρ` the first coordinate, `φ = [[1,1],[0,1]]`, `ψ = [[1,0],[1,1]]`: `(φψ)·ρ` is the first row of
  `(φψ)⁻¹ = [[1,−1],[−1,2]]`, namely `(1, −1)`, which equals `φ·(ψ·ρ)`, while `ψ·(φ·ρ)` is the first
  row of `(ψφ)⁻¹ = [[2,−1],[−1,1]]`, namely `(2, −1)`. The inner automorphism `c_γ = MulAut.conj γ`
  acts by `c_γ · ρ = MulAut.conj (ρ γ)⁻¹ ∘ ρ`.
- **Isotopy.** Two homeomorphisms `f, g` of a space `X` are isotopic when they are ambient isotopic
  in Tau Ceti's sense (`TauCeti.AmbientIsotopic`): some `TauCeti.AmbientIsotopy X`, a homotopy from
  the identity whose level-preserving total map `I × X → I × X` is a homeomorphism, has final map
  `g ∘ f⁻¹`. Isotopies of a surface with punctures never move the punctures, because the punctures
  are not points of the space. TeichmullerGeometry §0.0h's isotopy (`TauCeti.Isotopic`, homotopies
  through embeddings) is weaker in general and agrees with this one on compact connected manifolds
  without boundary (§2.1). MordellLawrenceVenkatesh §5.9's isotopies of `S = Σ_g ∖ P`, which
  §§5.17–5.19 there handle as paths in `Homeo⁺(S, ∂S)` with the compact-open topology, are
  homotopies through homeomorphisms (by the exponential law, `S` being locally compact Hausdorff),
  and on the boundaryless surface `S` these are exactly the ambient isotopies (§2.1).
- **Surfaces.** `Σ_g` is a closed connected oriented topological surface of genus `g`
  (MordellLawrenceVenkatesh §5.1 with empty boundary, the genus of MordellLawrenceVenkatesh §5.4); by
  §2.4 it is homeomorphic to TeichmullerGeometry §0.0f's model of `StandardSurface.orientable g 0`, so
  `Surface.IsOrientable Σ_g` and `Surface.genus Σ_g = g`. `P ⊂ Σ_g` is a finite set of `n` points,
  `Σ_{g,n} = Σ_g ∖ P`, `x ∈ Σ_{g,n}`. `Mod_{g,n}` is MordellLawrenceVenkatesh §5.9's `Mod(Σ_{g,n})`,
  the orientation-preserving homeomorphisms modulo isotopy, punctures permuted; `Mod^±_{g,n}`
  allows orientation reversal. The hypothesis `2g − 2 + n > 0` (`χ(Σ_{g,n}) < 0`) is stated where
  it is used.
- **Notation shared with suppliers.** `Ψ_x` is the outer action of §3.3; MordellLawrenceVenkatesh's
  `Ψ` (§§5.9, 5.22 there) is the symplectic representation, written here as the action on `H₁`.
  `Mod^±(X)` is the topological group of §2.1; TeichmullerGeometry §3.1's `Mod±(Σ) = π₀ Diff(Σ)` of
  a smooth closed surface is another carrier, which that section identifies with
  `MappingClassGroupFull Σ` through TeichmullerGeometry §0.0h, and so with `Mod^±(Σ)` by §2.1.
  Witness: on the torus both groups are `GL₂(ℤ)`, and the shear `(u, v) ↦ (u, u + v)` goes to
  `[[1,0],[1,1]]` under `Ψ_x` (§3.3) and under the action on `H₁`.
- **Real reductive data.** A real reductive datum `(𝐆, G^ℝ)` is a connected reductive group `𝐆`
  over `ℝ` (ReductiveGroups Layer 6) and an open subgroup `G^ℝ ⊆ 𝐆(ℝ)`; `G := 𝐆_ℂ`, `τ` is complex
  conjugation on `G(ℂ)`, `𝔤^ℝ = Lie(𝐆)` (a real Lie algebra), `𝔤 = 𝔤^ℝ ⊗_ℝ ℂ = Lie(G)`, and `Ad` is
  the adjoint representation. `G^ℝ` may be disconnected (`SO(p, q)`, `GL_n(ℝ)`) or the identity
  component (`PSL₂(ℝ) = PGL₂(ℝ)⁰`). A complex reductive group `H` enters as `𝐆 = Res_{ℂ/ℝ} H`
  (ReductiveGroupsPartII §RG2.0a.2), with `𝐆(ℝ) = H(ℂ)`. Witness: for `𝐆 = GL₂`, `G^ℝ = GL₂(ℝ)` has
  two components and `𝔤^ℝ = M₂(ℝ)`; for `𝐆 = Res_{ℂ/ℝ} GL₁`, `G^ℝ = ℂ^×` and `𝔤^ℝ = ℂ` is
  two-dimensional over `ℝ`.
- **Cartan-compatible realization.** A closed embedding `𝐆 ⊆ GL_N` over `ℝ` with `G^ℝ`
  transpose-stable (ArithmeticLocallySymmetricSpaces §ALS.F.1); `K = G^ℝ ∩ O(N)`,
  `𝔨 = 𝔤^ℝ ∩ 𝔰𝔬(N)`, `𝔭 = 𝔤^ℝ ∩ Sym_N(ℝ)`; `U = G(ℂ) ∩ U(N)`, `i𝔲 = 𝔭 ⊕ i𝔨` the hermitian part of
  `𝔤`. The inner product on `M_N(ℝ)` is `⟨A, B⟩ = tr(A Bᵀ)`, with its hermitian extension to `M_N(ℂ)`.
  Witness: for `SL₂(ℝ)`, `K = SO(2)` and `𝔭` is the traceless symmetric matrices; the conjugation
  orbit of `A = [[1,1],[0,1]]` has `‖diag(t, t⁻¹) A diag(t, t⁻¹)⁻¹‖² = 2 + t⁴`, which tends to the norm
  `2` of the identity, a point of the closure outside the orbit.
- **Topologies.** `Hom(Γ, G^ℝ)` and `Hom(Γ, G(ℂ))` carry the topology of pointwise convergence,
  the subspace topology of the product `(G^ℝ)^Γ`; it equals the point topology of Tau Ceti's
  `TauCeti.PointTopology.topology` on the real or complex points of the representation scheme and,
  over `ℂ`, the classical topology of ComplexComparisonPartII §C-1.1.
- **Universes.** Groups and spaces live in one universe; `Hom(Γ, G)` is a scheme in the universe of
  the coefficient ring.

## Exact supplier contracts

### From Mathlib

`FundamentalGroup`, `FundamentalGroup.mul_def`, `FundamentalGroup.map`, `FundamentalGroup.mapOfEq`,
`FundamentalGroup.fundamentalGroupMulEquivOfPath` (conjugation by the class of a path, read as in
the Conventions), `FundamentalGroupoidFunctor.homotopicMapsNatIso` (a homotopy `H : f ≃ g` gives a
natural transformation whose component at `x` is the class of the track `t ↦ H(t, x)`), `Path`,
`Path.Homotopic`, `Homeomorph`, `ContinuousMap.Homotopy`, `ContinuousMap.compactOpen`, `MulAut`,
`MulAut.conj` (`conj g h = g * h * g⁻¹`), `MulAut.congr`, `QuotientGroup`,
`QuotientGroup.quotientKerEquivRange` (`G ⧸ ker φ ≃* range φ`), `QuotientGroup.congr` (an
isomorphism carrying one normal subgroup onto another descends to the quotients), `Subgroup.center`,
`MonoidHom.range`, `Subgroup.fg_of_index_ne_zero` (Schreier's lemma: a finite-index subgroup of a
finitely generated group is finitely generated), `ConjAct`, `ConjClasses`, `MulAction.orbitRel`,
`Matrix.GeneralLinearGroup`, `Matrix.orthogonalGroup`, `Matrix.unitaryGroup`, `PresentedGroup`,
`FreeGroup`, `FreeGroup.lift`, `groupHomology` (the homology of the inhomogeneous chains of a
representation), `groupHomology.map` (functoriality in the group and the module),
`Representation.IsSemisimpleRepresentation` (every subrepresentation has a complement),
`IsSemisimpleModule`, `ProperSMul`, `t2Space_quotient_mulAction_of_properSMul` (the orbit space of a
proper action is Hausdorff), `IsProperMap`, `IsCompact`, `IsConnected`, `IsPreconnected`,
`Directed`, `T2Space`. Assumed: these exist at the pin with the stated meaning; no outer
automorphism group, mapping class group, representation scheme or character variety exists in
Mathlib.

### From Tau Ceti

`TauCeti.AmbientIsotopy` (a homotopy from the identity whose total level-preserving map is a
homeomorphism), `TauCeti.AmbientIsotopy.trans`, `TauCeti.AmbientIsotopy.symm`,
`TauCeti.AmbientIsotopy.finalHomeomorph`, `TauCeti.AmbientIsotopy.conj` and
`TauCeti.AmbientIsotopy.finalHomeomorph_conj` (conjugating an ambient isotopy by a homeomorphism
`h` conjugates its final map by `h`), `TauCeti.AmbientIsotopic` and
`TauCeti.AmbientIsotopic.setoid`; `TauCeti.Isotopic` (homotopic through embeddings);
`TauCeti.AmbientIsotopic.isotopic` (ambient isotopic maps, the first an embedding, are isotopic);
`TauCeti.isotopic_iff_ambientIsotopic` (for a compact connected Hausdorff space `Y` charted on a
finite-dimensional real normed space and a homeomorphism `f₀ : X ≃ₜ Y`, a map `X → Y` is isotopic
to `f₀` exactly when it is ambient isotopic to it); `Continuous.isOpenEmbedding_of_injective`
(invariance of domain: a continuous injection between topological manifolds without boundary,
charted on finite-dimensional real normed spaces of the same dimension, is an open embedding);
`TauCeti.ConnectedCoveringSpace.monodromyEquivalence` (over a path-connected, locally path-connected,
semilocally simply connected base, monodromy is an equivalence from connected covering spaces to
fibrewise transitive actions of the fundamental groupoid) and
`TauCeti.FundamentalGroupoidAction.basepointMulAction` (the action of `π₁(X, x₀)` on the value of
such an action at `x₀`); `TauCeti.isPreconnected_iInter_of_directed` (in a
Hausdorff space, the intersection of a nonempty family of compact preconnected sets directed by
reverse inclusion is preconnected); `TauCeti.PointTopology.topology` (the point topology on
`A →ₐ[k] R`, the initial topology of the evaluations) and
`TauCeti.PointTopology.instTopologicalSpaceWithConv`; `TauCeti.Coalgebra.IsLinearlyReductive` and
`TauCeti.Comodule.Hom.fixedMap_surjective_of_isLinearlyReductive` (a surjective comodule map over a
linearly reductive coalgebra is surjective on invariants, without finiteness);
`ContRepresentation.IsUnitary.isSemisimpleRepresentation` (a finite-dimensional unitary
continuous representation of any group is semisimple). Assumed: these declarations have the
signatures displayed in their files at the pin.

### From TauCetiRoadmap.MordellLawrenceVenkatesh

§5.1 (surfaces `Σ ∖ P` with boundary charts and orientation as data), §5.4 (a closed connected
orientable surface is a connected sum of a sphere with `g` tori for a unique `g`, its genus, and two
surfaces are homeomorphic by an orientation-preserving homeomorphism exactly when they have the same
type `(g, b, n)`), §5.5 (the fundamental class `[S] ∈ H₂(S, ∂S; ℤ)` of a compact oriented surface,
Lefschetz duality by cap product with `[S]`, and the intersection form `î` on `H₁(S; ℤ)`, which for
`∂S = ∅` is `î(u, v) = ⟨D⁻¹u ∪ D⁻¹v, [S]⟩` with `D : H¹(S; ℤ) ≅ H₁(S; ℤ)` the duality isomorphism:
alternating, perfect for `∂S = ∅`, invariant under orientation-preserving homeomorphisms, and equal
on transverse oriented simple closed curves to the signed count of intersection points), §5.6 (for
a surface of type `(g, b, n)` with `b + n = 0`, `H₁(S; ℤ) ≅ ℤ^{2g}`), §5.9 (`Mod(S)`, `Mod(S*)`,
`Forget`, and the action of `Mod(S)`, through `Out(π₁ S)`, on isomorphism classes of finite
coverings, `[p] ↦ [f ∘ p]`, which on monodromy is precomposition with the outer automorphism
`(f⁻¹)_*`), §5.15 (asphericity), §5.16 (trivial centre for `χ < 0`), §5.17 (the evaluation
fibration of `Homeo⁺(S, ∂S)` with the compact-open topology, equivalently isotopy extension for
moving one interior point of a surface with punctures), §5.19 (`Push : π₁(S, x) →* Mod(S*)`, acting
on `π₁(S, x)` by `MulAut.conj`, with `Forget(Push α) = 1`), §5.20 (the Birman exact sequence for
`χ(S) < 0`), §5.22 (for `g ≥ 1` the symplectic representation `Mod(S_g) → Sp(2g, ℤ)` is
surjective), §5.23 (for a closed surface of genus `g ≥ 1`, the once-punctured surface group is free
on `2g` classes with the puncture loop conjugate to the product of commutators). Used: the isotopies
of §5.9 on `S = Σ_g ∖ P`, which §§5.17–5.19 handle as paths in `Homeo⁺(S, ∂S)` with the compact-open
topology, are homotopies through homeomorphisms; by §2.1 these are exactly the ambient isotopies of
the boundaryless surface `S`, so `Mod(S)` is the same group whether §5.9's isotopies are read as
such paths or as ambient isotopies. Assumed: the surfaces of §5.1 include `Σ_g ∖ P` with empty
boundary.

### From TauCetiRoadmap.TeichmullerGeometry

§0.0e (a surface without boundary charted on the half-plane model `𝓡∂ 2` is read as one charted on
the boundaryless model `𝓡 2`, and conversely), §0.0f (the realization `schemaRealization w` of a
polygon schema, the quotient of the closed unit disc whose boundary arcs are glued by the letters of
`w`, with the cell structure of one open disc, one open edge per class of sides and one vertex per
vertex class on which `StandardSurface.eulerChar_model` is counted; the standard surfaces
`StandardSurface.orientable g b` and `StandardSurface.nonorientable k b` with their canonical words
and models `StandardSurface.model`, every model being a compact connected Hausdorff surface,
orientable exactly in the orientable family (`StandardSurface.isSurface_model`); homeomorphic models
are equal (`StandardSurface.homeomorph_unique`); every compact connected surface is homeomorphic to
exactly one model (`classification_of_surfaces`); orientability `Surface.IsOrientable` is invariant
under homeomorphisms, and the genus `Surface.genus M`, the genus of the standard model homeomorphic
to `M`, is constant on homeomorphism classes by its definition), §0.0h (`isotopicToIdSubgroup M`,
the homeomorphisms of a topological space `M` isotopic to the identity through embeddings in the
sense of `TauCeti.Isotopic`, a normal subgroup, and `MappingClassGroupFull M`, the quotient group),
§4.2 (`OuterAut G := MulAut G ⧸ (MulAut.conj : G →* MulAut G).range` for every group `G`, with
`innerAut_normal`, the quotient map surjective with kernel the inner automorphisms, and
`OuterAut G = MulAut G` for abelian `G`; the geometric group `Π = π₁ᵒᵖ`, `ι : Π ≃* π₁`, and the induced
identification `OuterAut Π ≃* OuterAut π₁`), §4.3 (the attaching word of the polygon model, its
first-traverse relator `∏ [aᵢ, bᵢ]` with `[a, b] = a b a⁻¹ b⁻¹`, and the comparison with the native
reading of the same word in `π₁`), §§4.4–4.5 (the Euler number and the uniformizing holonomy,
discrete, faithful and cocompact, unique up to `PSL₂(ℝ)`-conjugacy), §5.4 (`dehn_nielsen_baer`: for
a compact connected orientable surface `S` without boundary, of genus at least one, and `x₀ ∈ S`, an
isomorphism `MappingClassGroupFull S ≃* OuterAut (FundamentalGroup S x₀)` sending the class of a
homeomorphism `f` fixing `x₀` to the outer class of `FundamentalGroup.mapOfEq f`), §5.4a
(`mcg_sphere_full`: the mapping class group of `S²` has two elements, the class of a reflection
being the nontrivial one; `mcg_torus_full`: `A ↦ [torusLinearHomeomorph A]` is an isomorphism of
`GL₂(ℤ)` onto the mapping class group of `T²`, inverse to the action on `π₁(T², 0) = ℤ²`), §6.1 (the
inverse of the holonomy on marked equivalence classes).

### From TauCetiRoadmap.GeometricTopology

Layer 1.7.2 (for a compact connected smooth surface `F`, the mapping class group `Mod(F)` of
diffeomorphisms fixing `∂F` pointwise modulo isotopies fixing `∂F` pointwise, the single owner of the
mapping class groups of compact surfaces; for closed `F` it is identified with
`MappingClassGroupFull F` by TeichmullerGeometry §0.0h's forgetful isomorphism).

### From TauCetiRoadmap.FreeGroupsAndLimitGroups

§6.1 (`S±(g, m)` as `PresentedGroup` with peripheral elements `p_j`, `SurfaceGroup.lift`), §6.2
(`S±(g, m)` free of rank `1 − χ` on `a₁, b₁, …, a_g, b_g, p₁, …, p_{m−1}` for `m ≥ 1`; closed surface
groups with `χ ≤ 0` not free).

### From TauCetiRoadmap.AlgebraicTopology

Stage 1 item 4 (based van Kampen for two path-connected opens with path-connected intersection
containing the basepoint, and its presentation corollaries), item 5 (the fundamental group of a
wedge of circles is free on the circles). Stage 4 item 2 (the cellular differential, its matrix
entries as degrees of attaching maps, naturality for cellular maps) and item 3 (the comparison of
cellular with singular homology, natural on homology for cellular maps, with oriented cell
generators negated by reversing the cell orientation).

### From TauCetiRoadmap.ClassifyingSpaces

Stage 4 item 17 (for a `K(G, 1)` CW complex, its singular homology with integer coefficients is
Mathlib's `groupHomology` of the trivial module, naturally in `G`), with Stage 3 items 11 and 15
(a homomorphism of fundamental groups of `K(G, 1)` CW complexes is induced by a pointed map, unique up
to pointed homotopy, functorially). Assumed: the identification of item 17 is compatible with the
maps of item 11.

### From TauCetiRoadmap.ReductiveGroups

Layer 0 (affine group schemes as commutative Hopf algebras and their functors of points), Layer 1
(representations as comodules), Layer 2 (`Lie(G)`, the adjoint representation, Lie algebras of
closed subgroups, characteristic-zero smoothness), Layer 3A (orbits are open in their closures,
3A.2; every orbit closure contains a closed orbit, 3A.4), Layer 5 (unipotent groups, the unipotent
radical, fixed vectors of unipotent groups), Layer 6 (reductive groups, centre of multiplicative
type, characteristic-zero equivalence of reductivity and linear reductivity), Layer 7 (parabolic
subgroups, Levi decompositions, cocharacter parabolics `P_λ`, `L_λ`, the limit map `c_λ`), Layer 8
(every connected reductive group over an algebraically closed field is split, Chevalley existence),
Layer 9 (pinned split models over `ℤ`).

What ReductiveGroups must provide (gap:borel-tits): the Borel–Tits theorem, that for a closed
unipotent subgroup `U` of a connected reductive group `G` over an algebraically closed field there is
a parabolic subgroup `P` of `G` with `U ⊆ R_u(P)` and `N_G(U) ⊆ P`. Supplier section: Layer 7.

### From TauCetiRoadmap.ReductiveGroupsPartII

§RG2.0.1 (the point topology on `Hom_k(A, R)`, embeddings and closed embeddings given by finite
presentations, local compactness for finite-type `A` and locally compact Hausdorff `R`), §RG2.0a.2
(Weil restriction of affine group schemes, `Res_{k'/k}(G')(R) ≅ G'(k' ⊗_k R)`).

### From TauCetiRoadmap.ComplexComparisonPartII

§C-1.1 (`complexSchemeAnalytification`: the underlying space of `X^an` is `X(ℂ)` with the classical
topology, the zero-locus subspace topology on affine charts; closed subschemes and fibre products go
to closed subspaces and products; separated `X` has Hausdorff `X^an`; morphisms induce continuous
maps).

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

§1.7, **Semisimplicity over a perfect field** (for `k` perfect and any extension `k'/k`, a
finite-dimensional semisimple representation of any monoid stays semisimple over `k'`). §1.11,
**Reductive quotients over fields and DVRs** (for a connected reductive `G` acting on an integral
affine variety `X` over a field, `X//G = Spec O(X)^G` is of finite type with the universal property
for invariant morphisms; over an algebraically closed field the quotient map is surjective on
points, each fibre contains a unique closed orbit, two points have the same image exactly when their
orbit closures meet, invariant closed subsets have closed images). §1.11, **Complete reducibility
and closed tuples** (`IsGCompletelyReducible` for closed subgroups of a connected reductive `G` over
an algebraically closed field; for `G = GL(V)` it is semisimplicity of `V`; a tuple in `G(k)^m` has
closed simultaneous-conjugation orbit exactly when the Zariski closure of the generated subgroup is
`G`-completely reducible; projection to a Levi of a minimal parabolic is a cocharacter limit lying in
the unique closed orbit of the orbit closure).

What ArithmeticGaloisRepresentations must provide (gap:gcr-reductive-identity-component): a proof
that a `G`-completely reducible closed subgroup `H` of a connected reductive group `G` over an
algebraically closed field has reductive identity component `H⁰` (BateMartinRohrle2005 line 263,
attributed there to Serre). Supplier section: §1.11, **Complete reducibility and closed tuples**. A
route: gap:borel-tits places `H ⊆ N_G(R_u(H⁰))` in a parabolic `P` with `R_u(H⁰) ⊆ R_u(P)`;
complete reducibility puts `H` in a Levi subgroup `L` of `P`, and `L ∩ R_u(P) = 1` forces
`R_u(H⁰) = 1`.

### From TauCetiRoadmap.ArithmeticLocallySymmetricSpaces

§ALS.F.1 (for a reductive `ℝ`-group `H ⊆ GL_N`, `H(ℝ)` is a real Lie group with finitely many
components and Lie algebra `Lie(H)`; some conjugate of `H` is transpose-stable; then
`K = H(ℝ) ∩ O(N)` is maximal compact, `H(ℝ) = K · (H(ℝ) ∩ exp Sym_N(ℝ))`, compact subgroups lie in
conjugates of `K`). §ALS.0.1 (`IsCartanInvolution`, existence and conjugacy by real points).

### From TauCetiRoadmap.RepresentationTheory/LieGroups

Layer 7, **Real forms and global descent** (a connected complex Lie group `H(ℂ)`, `H` connected
affine reductive over `ℂ`, has a compact real form; every compact real form of it is connected, and
any two are conjugate), **Representations and holomorphic descent** (restriction is an equivalence
between finite-dimensional holomorphic representations of the complexification and continuous
representations of the compact form), and **Compact-real-form pairs and algebraic morphisms** (for
a compact real form `ι : K → G(ℂ)` of a connected affine reductive `G` over `ℂ`, `G(ℂ)` is the
universal complexification of `K`, and for compact real forms `K ⊆ G(ℂ)`, `K' ⊆ G'(ℂ)` the unique
holomorphic extension `G(ℂ) → G'(ℂ)` of a continuous homomorphism `K → K'` is a regular algebraic
homomorphism `G → G'`). Layer 9 (the Cartan decomposition
`K × 𝔭 → G`, `(k, X) ↦ k exp X`, a diffeomorphism for a real reductive group with Cartan
involution).

### From TauCetiRoadmap.RepresentationTheory/CompactGroups

Layer 5 (Peter–Weyl: matrix coefficients of irreducible representations span a dense subalgebra of
`C(K)` and are orthogonal).

### From TauCetiRoadmap.SymplecticGeometry/HamiltonianReduction

R5 (for compact `K` and a principal `K`-bundle `P` over a closed oriented surface, smooth flat
connections modulo gauge are homeomorphic to the locus of `Hom(π₁Σ, K)/K` of topological type `P`).
Used only in a Check.

## How to read the build

Layer 1 is pure group theory: inner automorphisms and the transport of TeichmullerGeometry's
`Out(Γ)` along isomorphisms, conjugacy classes of homomorphisms, and the outer action on them. Layer
2 completes the punctured-surface mapping class group of MordellLawrenceVenkatesh: the group of
isotopy classes for any space, punctures versus marked points, the permutation map and the pure
group, the standard model of a closed surface, presentations of punctured surface groups, the pure
Birman sequence and changes of model. Layer 3 constructs the automorphisms `f_δ` and the outer
action `Ψ`, identifies it on closed surfaces with TeichmullerGeometry's Dehn–Nielsen–Baer
isomorphism, compares it with MordellLawrenceVenkatesh, defines the action of `Mod^±_{g,n}` on
conjugacy classes of representations as `Ψ` followed by Layer 1's action, and compares it with
MordellLawrenceVenkatesh's action on finite coverings. Layer 4 builds the
representation scheme and its topologies. Layer 5 fixes real reductive data, proves the real-form
bridge, realizes the conjugation action compatibly with a Cartan involution and proves the real
Kempf–Ness theorem. Layer 6 proves the six-way characterization of reductive representations. Layer
7 defines the character variety, proves its topological properties and the complex comparison with
the affine quotient, and makes `Out(Γ)` and `Mod_{g,n}` act. Layers 1–3 and Layers 4–6 are
independent; Layer 7 uses both. Every `*Needs:*` line lists what a target's statement and route use,
item by item.

## Layer 1: Outer automorphisms and conjugacy classes of homomorphisms

### 1.1 Inner automorphisms and the transport of outer automorphisms

For an arbitrary group `Γ`, `Out(Γ)` is TeichmullerGeometry §4.2's `OuterAut Γ`, the quotient of
`MulAut Γ` by the normal subgroup `Inn(Γ)` (Conventions). Prove that the kernel of
`MulAut.conj : Γ →* MulAut Γ` is the centre `Z(Γ)`, so that `MulAut.conj` induces an isomorphism
`Γ ⧸ Z(Γ) ≃* Inn(Γ)`. Prove that an isomorphism `e : Γ ≃* Γ'` induces `Out(Γ) ≃* Out(Γ')`,
`[φ] ↦ [e ∘ φ ∘ e⁻¹]`, by descending `MulAut.congr e`; that this is functorial in `e`, the identity
inducing the identity and `e' ∘ e` the composite of the induced maps; and that an inner
automorphism `e = MulAut.conj g` of `Γ` induces the identity of `Out(Γ)` (FarbMargalit2012, Ch. 8,
§8.1, where `Out(π₁ S)` is the target of the mapping class group).

*Proof sketch.* `MulAut.conj g` is the identity exactly when `g` commutes with every element of `Γ`,
and `QuotientGroup.quotientKerEquivRange` gives the isomorphism. `MulAut.congr e` sends
`MulAut.conj g` to `MulAut.conj (e g)`, so it carries `Inn(Γ)` onto `Inn(Γ')` and descends by
`QuotientGroup.congr`. For `e = MulAut.conj g`,
`e ∘ φ ∘ e⁻¹ = φ ∘ MulAut.conj (φ⁻¹(g) g⁻¹)`, which has the class of `φ`.

**Checks.**

- `Γ = Q₈`: `Z(Q₈) = {±1}` and `Inn(Q₈) ≅ Q₈/{±1}` is the Klein four-group, of order `4`; a statement
  `Inn(Γ) ≅ Γ` would give `8`, and with `|MulAut Q₈| = 24` the quotient has TeichmullerGeometry
  §4.2's value `|Out(Q₈)| = 6`.
- `Γ = ℤ`: `Z(ℤ) = ℤ` and `Inn(ℤ)` is trivial; `Γ = S₃`: `Z(S₃) = 1` and `Inn(S₃) ≅ S₃` has order `6`.
- An inner `e` acts trivially on `Out` but not on `MulAut`: for `Γ = Q₈` and `e = MulAut.conj i`,
  `MulAut.congr e` is conjugation in `MulAut Q₈ ≅ S₄` by a nontrivial element of the Klein
  four-group `Inn(Q₈)`, nontrivial because `S₄` has trivial centre, and trivial on
  `Out(Q₈) ≅ S₄/V₄ ≅ S₃`.
- An outer `e` need not act trivially: for `Γ = Γ' = ℤ²` and `e = diag(1, −1)`, the induced
  automorphism of `Out(ℤ²) = GL₂(ℤ)` is conjugation by `diag(1, −1)`, which sends `[[1,1],[0,1]]` to
  `[[1,−1],[0,1]]`.

*Needs:* TeichmullerGeometry §4.2; Mathlib `MulAut`, `MulAut.conj`, `MulAut.congr`,
`Subgroup.center`, `QuotientGroup.quotientKerEquivRange`, `QuotientGroup.congr`.

### 1.2 Conjugacy classes of homomorphisms

For groups `Γ` and `H` define `Rep(Γ, H)` as the quotient of `Γ →* H` by the orbit relation of
`ConjAct H` acting by postcomposition: `ρ ∼ ρ'` when `ρ' = MulAut.conj h ∘ ρ` for some `h ∈ H`
(LandesmanLitt2024 line 42, conjugacy classes of representations).

The quotient has the following API.

- Two homomorphisms have the same class exactly when they are conjugate by an element of `H`.
- A homomorphism `β : H →* H'` induces `Rep(Γ, H) → Rep(Γ, H')`, `[ρ] ↦ [β ∘ ρ]`, functorially.
- A homomorphism `α : Γ' →* Γ` induces `Rep(Γ, H) → Rep(Γ', H)`, `[ρ] ↦ [ρ ∘ α]`, contravariantly
  functorially.
- For commutative `H` the quotient map `Hom(Γ, H) → Rep(Γ, H)` is a bijection.
- `Rep(ℤ, H)` is in bijection with Mathlib's `ConjClasses H` through `[ρ] ↦ [ρ 1]`.

**Checks.**

- `Rep(ℤ, S₃)` has three elements (the conjugacy classes of `S₃`) while `Hom(ℤ, S₃)` has six; a
  definition without the quotient would count six.
- `Rep(Γ, 1)` is a single point for every `Γ`, including the trivial group.
- `Rep(ℤ/2, GL₂(ℂ))` has three elements, the classes of `diag(1, 1)`, `diag(1, −1)`, `diag(−1, −1)`:
  an involution is diagonalizable and determined up to conjugacy by its eigenvalue multiset, while
  `Hom(ℤ/2, GL₂(ℂ))` is infinite.

*Needs:* Mathlib `ConjAct`, `MulAction.orbitRel`, `MulAut.conj`, `ConjClasses`.

### 1.3 The outer action on conjugacy classes

Prove that `φ · ρ = ρ ∘ φ⁻¹` is a left action of `MulAut Γ` on `Γ →* H` commuting with conjugation
in `H`, that it descends to `Rep(Γ, H)`, and that inner automorphisms act trivially on classes:
`MulAut.conj γ · ρ = MulAut.conj (ρ γ)⁻¹ ∘ ρ`. Hence `Out(Γ)` acts on `Rep(Γ, H)` by
`[φ] · [ρ] = [ρ ∘ φ⁻¹]`, naturally in `H` and compatibly with the isomorphisms of §1.1 in `Γ`. Prove
the non-descent theorem: the action of `Inn(Γ)` on `Γ →* H` is trivial if and only if every
homomorphism `Γ → H` has commutative image; in particular for nonabelian `H` and any `Γ` admitting a
homomorphism to `H` with nonabelian image, the action of `MulAut Γ` on `Γ →* H` does not factor
through `Out(Γ)` (LandesmanLitt2024 lines 41–50, Definition 1.1.1 and the paragraph after it).

*Proof sketch.* The action law is `(φψ)⁻¹ = ψ⁻¹ φ⁻¹`. For the inner case,
`ρ(γ⁻¹ δ γ) = ρ(γ)⁻¹ ρ(δ) ρ(γ)`. The class action is well defined because the two actions commute.
For non-descent, `MulAut.conj γ · ρ = ρ` holds for all `γ` exactly when each `ρ(γ)` centralizes
`ρ(Γ)`.

**Checks.**

- The Conventions witness on `ℤ²` distinguishes the left action from the right action `ρ ∘ φ`.
- For `Γ = H = F₂` free on `a, b` and `ρ = id`, `MulAut.conj a · id = MulAut.conj a⁻¹ ≠ id`, while its
  class is the class of `id`.
- For commutative `H` every homomorphism has commutative image and `Inn(Γ)` acts trivially on
  `Γ →* H`, so the action of `Out(Γ)` on `Hom(Γ, H)` is defined; this is the case of the action on
  `H¹` with constant coefficients.

*Needs:* §1.1; §1.2; TeichmullerGeometry §4.2.

### Examples

- `Out(ℤ) = ℤ/2` acts on `Rep(ℤ, H) = ConjClasses H` by `[h] ↦ [h⁻¹]`; for `H = S₃` it fixes all three
  classes, for `H = ℤ/3` it swaps the two generators.

### Dependencies

Mathlib's automorphism, quotient and conjugation API; TeichmullerGeometry §4.2. Layer 1 supplies
Layers 3 and 7.

## Layer 2: Punctured surfaces, marked points and the pure mapping class group

### 2.1 Isotopy classes of homeomorphisms of a space

For a topological space `X` define `Homeo₀(X)` as the set of final homeomorphisms of the ambient
isotopies of `X` (`TauCeti.AmbientIsotopy.finalHomeomorph`) and prove that it is a normal subgroup
of `X ≃ₜ X`: closure under composition and inverses is `TauCeti.AmbientIsotopy.trans` and `symm`,
and normality is `TauCeti.AmbientIsotopy.conj` with `TauCeti.AmbientIsotopy.finalHomeomorph_conj`.
Define `Mod^±(X) := (X ≃ₜ X) ⧸ Homeo₀(X)`; two homeomorphisms have the same class exactly when they
are ambient isotopic, and isotopy is a congruence for composition. It differs from
TeichmullerGeometry §0.0h's `MappingClassGroupFull X` by requiring the level-preserving total map of
an isotopy to be a homeomorphism, the relation that extends over punctures (§2.2). For locally
compact Hausdorff `X`, give `X ≃ₜ X` the topology induced by `f ↦ (f, f⁻¹)` into `C(X, X) × C(X, X)`
with the compact-open topology; prove that it is a group topology and that `Homeo₀(X)` is the path
component of the identity (FarbMargalit2012, Ch. 1, §1.4).

*Proof sketch.* A path `t ↦ f_t` in this topology uncurries, by the exponential law for locally
compact `X`, to continuous maps `(t, x) ↦ f_t(x)` and `(t, x) ↦ f_t⁻¹(x)`, which are the total map of
an ambient isotopy and its inverse; conversely an ambient isotopy curries to such a path.

The group of isotopy classes has the following API.

- `Homeo₀(X)` is a normal subgroup, and `Mod^±(X)` is a group whose multiplication is induced by
  composition.
- A homeomorphism `e : X ≃ₜ Y` induces `Mod^±(X) ≃* Mod^±(Y)`, `[f] ↦ [e f e⁻¹]`, using
  Tau Ceti's transport of ambient isotopies.
- For compact Hausdorff `X`, every homotopy through homeomorphisms starting at the identity is an
  ambient isotopy, because its total map is a continuous bijection from a compact space to a
  Hausdorff space.
- For locally compact Hausdorff `X`, `Homeo₀(X)` is the identity path component of `X ≃ₜ X`.
- The identity of `X ≃ₜ X` induces a surjective homomorphism `Mod^±(X) → MappingClassGroupFull X`,
  because the final map of an ambient isotopy is isotopic to the identity through embeddings
  (`TauCeti.AmbientIsotopic.isotopic`); it is an isomorphism when `X` is compact, connected,
  Hausdorff and charted on a finite-dimensional real normed space
  (`TauCeti.isotopic_iff_ambientIsotopic`), in particular for a closed surface `Σ_g`, whose atlas
  with empty boundary is read on the boundaryless model by TeichmullerGeometry §0.0e; composed with
  TeichmullerGeometry §0.0h's forgetful isomorphism, it identifies `Mod^±(Σ_g)` with
  GeometricTopology Layer 1.7.2's `Mod(F)` for a smooth structure `F` on `Σ_g` (one exists by
  TeichmullerGeometry §0.0e), the owner of the mapping class groups of compact surfaces.
- For a topological manifold `X` without boundary, charted on a finite-dimensional real normed
  space, every homotopy `I × X → X` through homeomorphisms starting at the identity is an ambient
  isotopy: extended by its end maps to `ℝ × X`, its level-preserving total map is a continuous
  bijection of `ℝ × X`, a manifold without boundary charted on a space of one more dimension, onto
  itself, hence open by invariance of domain (`Continuous.isOpenEmbedding_of_injective`).
- For an oriented surface, the orientation-preserving homeomorphisms contain `Homeo₀(X)` and
  their image `Mod(X)` has index at most two in `Mod^±(X)`.

**Checks.**

- `Mod^±(ℝ)` has two elements: a homeomorphism of `ℝ` is monotone, monotonicity type is constant
  along an ambient isotopy, and every increasing homeomorphism is joined to the identity by the
  straight-line isotopy `(1 − t) x + t f(x)`.
- On the discrete two-point space the swap is not in `Homeo₀`: the slices of an ambient isotopy
  depend continuously on `t` in a discrete set of maps, so `Mod^±` has two elements; for a one-point
  space `Mod^±` is trivial.
- `Mod^±(S¹)` has two elements: rotations are joined to the identity, and reflection reverses the
  degree, which is constant along a homotopy.

*Needs:* Tau Ceti `TauCeti.AmbientIsotopy`, `TauCeti.AmbientIsotopy.trans`,
`TauCeti.AmbientIsotopy.symm`, `TauCeti.AmbientIsotopy.conj`,
`TauCeti.AmbientIsotopy.finalHomeomorph_conj`, `TauCeti.AmbientIsotopic.setoid`,
`TauCeti.Isotopic`, `TauCeti.AmbientIsotopic.isotopic`, `TauCeti.isotopic_iff_ambientIsotopic`,
`Continuous.isOpenEmbedding_of_injective`; TeichmullerGeometry §0.0e; TeichmullerGeometry §0.0h;
GeometricTopology Layer 1.7.2; Mathlib `ContinuousMap.compactOpen`, `Homeomorph`, `QuotientGroup`.

### 2.2 Punctures and marked points

Prove the extension theorem. Let `Σ` be a compact Hausdorff space and `P ⊆ Σ` a finite set such that
every `p ∈ P` has a neighbourhood basis of compact sets `U` with `U ∖ {p}` nonempty and connected
(true for interior points of a surface, with closed disc neighbourhoods). Then restriction is a
group isomorphism from `Homeo(Σ, P) = {h ∈ Σ ≃ₜ Σ : h(P) = P}` to `(Σ ∖ P) ≃ₜ (Σ ∖ P)`; every ambient
isotopy of `Σ ∖ P` extends uniquely to an ambient isotopy of `Σ` fixing `P` pointwise; hence
`Mod^±(Σ ∖ P)` is isomorphic to `Homeo(Σ, P)` modulo ambient isotopies of `Σ` fixing `P` pointwise.
For `Σ = Σ_g` oriented, orientation is preserved by the extension, so `Mod_{g,n}` of
MordellLawrenceVenkatesh §5.9, whose isotopies (paths in the group `Homeo⁺(Σ_{g,n})` of
MordellLawrenceVenkatesh §5.17) are the ambient isotopies of the boundaryless surface `Σ_{g,n}` by
§2.1, is the orientation-preserving
subgroup of `Mod^±(Σ_{g,n})` and is isomorphic to `Homeo⁺(Σ_g, P)` modulo isotopy fixing `P`
pointwise (FarbMargalit2012, Ch. 2, §2.1).

*Proof sketch.* Fix `p ∈ P` and let `𝒰` be the members `U` of the given basis with `U ∩ P = {p}`,
again a neighbourhood basis of `p`. The closures in `Σ` of the connected sets `h(U ∖ {p})`,
`U ∈ 𝒰`, form a family of nonempty compact connected sets directed by reverse inclusion; its
intersection is nonempty by compactness and preconnected
(`TauCeti.isPreconnected_iInter_of_directed`). It lies in `P`: a point `h(y)` with `y ∈ Σ ∖ P` has
the open neighbourhood `h(Σ ∖ (P ∪ U))`, disjoint from `h(U ∖ {p})`, for any `U ∈ 𝒰` not containing
`y`. Hence it is a single point `q`, and setting `h̄(p) = q` gives a continuous extension, since
every neighbourhood of `q` contains a member of the family; `h⁻¹` gives its inverse, and density of
`Σ ∖ P` gives uniqueness. For an ambient isotopy the same argument, applied to the closures of the
images of `I × (U ∖ {p})` under the level-preserving total map, gives a nonempty preconnected subset
of `I × P` meeting every slice `{t} × Σ`, hence equal to `I × {q}`, and `q = p` because the isotopy
starts at the identity.

**Checks.**

- `Σ = S²`, `P = {N, S}`: `Σ ∖ P` is the cylinder `S¹ × ℝ`, and the end-swapping map
  `(θ, s) ↦ (−θ, −s)` extends to the rotation by `π` about an equatorial axis, which exchanges `N`
  and `S`; so `Mod_{0,2}` has two elements and `PMod_{0,2}` is trivial.
- The hypothesis is needed: for `Σ = S¹` and `P` two points, `Σ ∖ P` is two open arcs, and the map
  that is the identity on one arc and reverses the other sends the two ends at `p` to ends at `p` and
  at `q`, so it has no continuous extension; the punctured neighbourhoods of `p` are disconnected.
- With `P` empty the theorem is the identity of `Mod^±(Σ)`.

*Needs:* §2.1; MordellLawrenceVenkatesh §5.1; MordellLawrenceVenkatesh §5.9; MordellLawrenceVenkatesh
§5.17; Tau Ceti `TauCeti.isPreconnected_iInter_of_directed`; Mathlib `IsCompact`, `IsConnected`,
`IsPreconnected`, `Directed`, `T2Space`.

### 2.3 The permutation homomorphism and the pure mapping class group

Prove that for every `g, n ≥ 0` the action on punctures, through §2.2's extension, is a well-defined
homomorphism `σ : Mod_{g,n} → Sym(P)` and is surjective. Define `PMod_{g,n}` as its kernel; it has
index `n!` (LandesmanLitt2024 line 474; FarbMargalit2012, Ch. 4, §4.2).

*Proof sketch.* Well-definedness: the extension of an ambient isotopy fixes `P` pointwise. A
transposition `(p q)` is realized by moving `q` to an auxiliary point `r`, then `p` to `q`, then `r`
to `p`, each move by isotopy extension for one moving point on the surface punctured at the other
points (MordellLawrenceVenkatesh §5.17), along a path in `Σ_g` minus a finite set, which is
connected. The index is the order of `Sym(P)`.

**Checks.**

- `n = 0`: `PMod_{g,0} = Mod_{g,0}` and the index is `1 = 0!`; `n = 1`: index `1`.
- `(g, n) = (0, 3)`: `Mod_{0,3} ≅ S₃` and `PMod_{0,3}` is trivial (MordellLawrenceVenkatesh §5.9),
  consistent with index `6 = 3!`; identifying `Mod_{0,3}` with `PMod_{0,3}` would contradict the index.
- `(g, n) = (0, 2)`: by §2.2's Check `Mod_{0,2}` has order two and `PMod_{0,2}` is trivial, index
  `2 = 2!`.

*Needs:* §2.2; MordellLawrenceVenkatesh §5.9; MordellLawrenceVenkatesh §5.17.

### 2.4 The standard model and presentations of punctured surface groups

Prove that for every `g ≥ 0` the closed surface `Σ_g`, with its half-plane atlas of empty boundary,
is homeomorphic to TeichmullerGeometry §0.0f's model `StandardSurface.model` of
`StandardSurface.orientable g 0`, the realization `schemaRealization` of the canonical word (`a a⁻¹`
for `g = 0`, the handle blocks `aᵢ bᵢ aᵢ⁻¹ bᵢ⁻¹`, `1 ≤ i ≤ g`, for `g ≥ 1`); hence `Σ_g` satisfies
`Surface.IsOrientable` and `Surface.genus Σ_g = g`, so that the genus of MordellLawrenceVenkatesh
§5.4 and the genus of TeichmullerGeometry §0.0f agree on `Σ_g` (FarbMargalit2012, Ch. 1, §1.1,
Theorem 1.1).

*Proof sketch.* By `classification_of_surfaces` (TeichmullerGeometry §0.0f), `Σ_g` is homeomorphic to
one standard model `S`. Give the realization of a word of length `m` the cell structure with one open
disc, one open edge per class of sides and one vertex per vertex class, the images of the cells of the
closed disc whose boundary circle is cut into the `m` arcs (the cell structure on which §0.0f counts
`StandardSurface.eulerChar_model`). The cellular boundary of the disc is the sum of the letters of the
word with their exponents (AlgebraicTopology Stage 4 item 2): a hole block `cⱼ hⱼ cⱼ⁻¹` contributes its
free side `hⱼ` once and a crosscap block `aᵢ aᵢ` contributes `2aᵢ`, so `H₂(S; ℤ) = 0` unless
`S = orientable g' 0`; for `orientable g' 0` the boundary vanishes, `H₂(S; ℤ) = ℤ` and
`H₁(S; ℤ) = ℤ^{2g'}` (the `2g'` edges for `g' ≥ 1` share one vertex; for `g' = 0` the edge `a` joins
two vertices). AlgebraicTopology Stage 4 item 3 identifies these groups with singular homology. On the
other side, `H₂(Σ_g; ℤ) = ℤ[Σ_g]` by duality with `∂Σ_g = ∅` (MordellLawrenceVenkatesh §5.5) and
`H₁(Σ_g; ℤ) ≅ ℤ^{2g}` (MordellLawrenceVenkatesh §5.6). Singular homology is invariant under
homeomorphisms, so `S = orientable g 0`. The model is orientable (`StandardSurface.isSurface_model`)
and orientability is invariant under homeomorphisms (§0.0f); `Surface.genus` is constant on
homeomorphism classes by its definition, and on `orientable g 0` it is `g`, the only standard model
homeomorphic to it being itself (`StandardSurface.homeomorph_unique`).

**Checks.**

- Torus, `g = 1`: the word `a b a⁻¹ b⁻¹` has one vertex class and zero boundary map, so `H₂ = ℤ` and
  `H₁ = ℤ²`, the homology of `Σ_1`; hence `Surface.genus Σ_1 = 1`.
- The Klein bottle `nonorientable 2 0`, word `a a b b`, has boundary map `2a + 2b`, so `H₂ = 0` and
  `H₁ = ℤ ⊕ ℤ/2`. It has the Euler characteristic `0` of the torus and no boundary, so a comparison by
  Euler characteristic and boundary count alone would not exclude it; `H₂(Σ_1; ℤ) = ℤ` does.
- Genus two: comparing only the rank of `H₁` would accept `nonorientable 5 0`, with
  `H₁ = ℤ⁴ ⊕ ℤ/2`, as a model of `Σ_2`; its `H₂ = 0` excludes it, and `orientable 2 0` is the model,
  with `Surface.genus Σ_2 = 2`.
- Sphere, `g = 0`: the word `a a⁻¹` has two vertex classes, boundary maps `d₁(a) = v₁ − v₀ ≠ 0` and
  `d₂ = a − a = 0`, so `H₁ = 0` and `H₂ = ℤ`, and `Surface.genus Σ_0 = 0`; the projective plane `a a`
  has `d₂ = 2` and `H₂ = 0` (AlgebraicTopology Stage 4 item 3's Check), and is excluded.

*Needs:* TeichmullerGeometry §0.0e; TeichmullerGeometry §0.0f; AlgebraicTopology Stage 4 item 2;
AlgebraicTopology Stage 4 item 3; MordellLawrenceVenkatesh §5.1; MordellLawrenceVenkatesh §5.5;
MordellLawrenceVenkatesh §5.6.

Prove that for every `g, n ≥ 0` and every enumeration `p₁, …, p_n` of `P` there is an isomorphism
`S⁺(g, n) ≃* π₁(Σ_g ∖ P, x)` (FreeGroupsAndLimitGroups §6.1) carrying each peripheral generator `p_j`
to the class of a based loop around the `j`-th puncture, a based conjugate of a small loop
bounding a once-punctured disc, all `n` loops taken with the orientation induced from `Σ_g`. For
`n ≥ 1`, `π₁(Σ_{g,n}, x)` is free of rank `2g + n − 1` (FreeGroupsAndLimitGroups §6.2)
(FarbMargalit2012, Ch. 1, §1.1).

*Proof sketch.* By the comparison above, and moving the points of `P` one at a time by isotopy
extension along paths that avoid the other points (MordellLawrenceVenkatesh §5.17), `(Σ_g, P)` is
homeomorphic to the realization of the canonical word with `n` points in the open disc. For `n = 0`
apply AlgebraicTopology Stage 1 item 4 to a neighbourhood of the one-skeleton and the open disc and
Stage 1 item 5 to the one-skeleton; the native reading of the attaching word is compared with the
relator of `S⁺(g, 0)` as in TeichmullerGeometry §4.3 and the Conventions. For `n ≥ 1` the punctured
model deformation retracts onto a wedge of `2g + n − 1` circles, and the boundary of the disc reads
the relator with the puncture loops; MordellLawrenceVenkatesh §5.23 is the case `g ≥ 1`, `n = 1`.

**Checks.**

- `(g, n) = (1, 0)`: `S⁺(1, 0) ≅ ℤ²`, the fundamental group of the torus.
- `(g, n) = (0, 3)`: `S⁺(0, 3)` is free on `p₁, p₂` with `p₃ = (p₁ p₂)⁻¹`, and the three puncture
  loops are pairwise non-conjugate.
- `(g, n) = (0, 0)` and `(0, 1)`: the sphere and the disc have trivial fundamental group; dropping the
  peripheral generators would present `π₁(Σ_{1,1})` as `ℤ²` instead of the free group `F₂`.

*Needs:* the comparison of `Σ_g` with the standard model above; MordellLawrenceVenkatesh §5.17;
MordellLawrenceVenkatesh §5.23; FreeGroupsAndLimitGroups §6.1; FreeGroupsAndLimitGroups §6.2;
AlgebraicTopology Stage 1 item 4; AlgebraicTopology Stage 1 item 5; TeichmullerGeometry §0.0f;
TeichmullerGeometry §4.3.

### 2.5 The pure Birman exact sequence

Prove that for `2g − 2 + n > 0` and `x ∈ Σ_g ∖ P` the sequence
`1 → π₁(Σ_{g,n}, x) → PMod(Σ_g, P ∪ {x}) → PMod(Σ_g, P) → 1` is exact, the first map being
MordellLawrenceVenkatesh §5.19's `Push` and the second the forgetful map (LandesmanLitt2024 lines
503–515, the sequence as used downstream; FarbMargalit2012, Ch. 4, §4.2).

*Proof sketch.* §2.2, applied to `P ∪ {x}`, identifies MordellLawrenceVenkatesh §5.9's `Mod(S*)` for
`S = Σ_{g,n}` marked at `x` with the classes of `Mod(Σ_g ∖ (P ∪ {x}))` fixing the puncture `x`, and
`PMod(Σ_g, P ∪ {x})` with the preimage of `PMod(Σ_g, P)` under `Forget`. Restrict the Birman exact
sequence of MordellLawrenceVenkatesh §5.20 to this preimage: point pushing fixes `P` pointwise, and a
lift under `Forget` of a pure class induces the same permutation of `P`.

**Checks.**

- `(g, n) = (0, 3)`: `PMod_{0,3}` is trivial, so `π₁(Σ_{0,3}) ≅ F₂ ≅ PMod_{0,4}`.
- `(g, n) = (1, 1)`: `1 → F₂ → PMod_{1,2} → SL₂(ℤ) → 1`, with `PMod_{1,1} = Mod_{1,1} ≅ SL₂(ℤ)`
  (FarbMargalit2012, Ch. 2, §2.2).
- The hypothesis is needed: for the torus (`(g, n) = (1, 0)`) `Push` is trivial
  (MordellLawrenceVenkatesh §5.19), and for the annulus (`(g, n) = (0, 2)`) `π₁ = ℤ` while
  `PMod_{0,3}` is trivial, so injectivity fails in both.

*Needs:* §2.2; §2.3; MordellLawrenceVenkatesh §5.9; MordellLawrenceVenkatesh §5.19;
MordellLawrenceVenkatesh §5.20.

### 2.6 Changes of model

Prove that a homeomorphism of pairs `e : (Σ_g, P) → (Σ'_g, P')` preserving orientation induces
`Mod_{g,n}(Σ_g, P) ≃* Mod_{g,n}(Σ'_g, P')`, `[f] ↦ [e f e⁻¹]`, intertwining the permutation
homomorphisms through `e|_P`; that isotopic `e` induce the same isomorphism; and that any two choices
of `e` induce isomorphisms differing by an inner automorphism. Any two pairs `(Σ_g, P)` with
`|P| = n` are related by such an `e`: `Σ_g ∖ P` and `Σ'_g ∖ P'` are surfaces of the same type
`(g, 0, n)`, so an orientation-preserving homeomorphism joins them (MordellLawrenceVenkatesh §5.4),
and it extends over the punctures by the argument of §2.2 (FarbMargalit2012, Ch. 2, §2.1).

**Checks.**

- For `e` the identity the induced isomorphism is the identity.
- For `e ∈ Homeo⁺(Σ_g, P)` itself the induced automorphism is conjugation by `[e]`, inner and in
  general nontrivial (for `Mod_{0,3} ≅ S₃` and `e` a transposition of punctures it is conjugation by a
  transposition).
- An orientation-reversing `e` induces an automorphism of `Mod_{g,n}` that need not be inner: for
  `Mod_{1,0} ≅ SL₂(ℤ)` and `e = diag(1, −1)` it is conjugation by `diag(1, −1)`, an outer automorphism
  of `SL₂(ℤ)`.

*Needs:* §2.1; §2.2; §2.3; MordellLawrenceVenkatesh §5.4.

### Examples

- `Mod_{0,0}` and `Mod_{0,1}` are trivial (FarbMargalit2012, Ch. 2, §2.2), `Mod_{0,2} ≅ ℤ/2` (§2.2's
  Check), `Mod_{0,3} ≅ S₃` with `PMod_{0,3}` trivial (MordellLawrenceVenkatesh §5.9),
  `Mod_{1,0} ≅ SL₂(ℤ)` (TeichmullerGeometry §5.4a, `mcg_torus_full` restricted to the
  orientation-preserving subgroup, read through §2.1); the pure Birman sequence for `(0, 3)` makes
  `PMod_{0,4}` free of rank two.

### Dependencies

Tau Ceti's isotopies, ambient isotopies, invariance of domain and directed intersections of
continua; MordellLawrenceVenkatesh §§5.1, 5.4, 5.5, 5.6, 5.9, 5.17, 5.19, 5.20, 5.23;
FreeGroupsAndLimitGroups §§6.1–6.2; AlgebraicTopology Stages 1 and 4; TeichmullerGeometry §§0.0e,
0.0f, 0.0h, 4.3, 5.4a; GeometricTopology Layer 1.7.2. Layer 2 supplies Layers 3, 4 and 7.

## Layer 3: The outer action of the mapping class group

### 3.1 The automorphism induced by a homeomorphism and a path

For a space `X`, a homeomorphism `f` and a path `δ : x ⟶ f(x)`, define `f_δ : π₁(X, x) ≃* π₁(X, x)`
as `FundamentalGroup.map f x` followed by the inverse of `fundamentalGroupMulEquivOfPath δ`; it
sends `[γ]` to `[δ ⬝ (f ∘ γ) ⬝ δ̄]` (FarbMargalit2012, Ch. 8, §8.1).

The induced automorphism has the following API.

- Evaluation: `f_δ [γ] = [δ ⬝ (f ∘ γ) ⬝ δ̄]`.
- Change of path: for a second path `δ' : x ⟶ f(x)`, `f_{δ'} = MulAut.conj [δ ⬝ δ̄'] ∘ f_δ`, where
  `δ ⬝ δ̄'` is a loop at `x`.
- Composition: for homeomorphisms `f, g` and paths `δ : x ⟶ f(x)`, `ε : x ⟶ g(x)`,
  `(f ∘ g)_{δ ⬝ (f ∘ ε)} = f_δ ∘ g_ε`.
- Inverse: `(f⁻¹)_{rev(f⁻¹ ∘ δ)} = (f_δ)⁻¹`, where `rev(f⁻¹ ∘ δ) : x ⟶ f⁻¹(x)`.
- Identity: `id_{const} = 1`, and for a loop `σ` at `x`, `id_σ = MulAut.conj [σ]⁻¹`.
- Homeomorphisms fixing `x` with the constant path give the based homomorphism to `MulAut(π₁(X, x))`.

**Checks.**

- Convention witness: for `f = id` and `δ` a loop `σ`, `f_δ [γ] = [σ ⬝ γ ⬝ σ̄] = MulAut.conj [σ]⁻¹ [γ]`;
  the change-of-path law with `δ = const`, `δ' = σ` gives `MulAut.conj [σ̄]`, the same map; the
  opposite reading of `fundamentalGroupMulEquivOfPath` would give `MulAut.conj [σ]`.
- On `S¹ ⊂ ℂ` with `x = 1`, complex conjugation fixes `x` and acts by `−1` on `π₁ ≅ ℤ` with the
  constant path; the rotation by `π` with the arc `δ` from `1` to `−1` acts by `+1`.
- Without a path no automorphism of `π₁(X, x)` is defined when `f(x) ≠ x`: `FundamentalGroup.map f x`
  lands in `π₁(X, f x)`.

*Needs:* Mathlib `FundamentalGroup.map`, `FundamentalGroup.fundamentalGroupMulEquivOfPath`,
`FundamentalGroup.mul_def`, `MulAut.conj`.

### 3.2 Homotopy invariance and the inner-automorphism lemma

Prove that if `H : f ≃ g` is a homotopy between homeomorphisms with track `η(t) = H(t, x)` from `f(x)`
to `g(x)`, then `g_{δ ⬝ η} = f_δ`. Consequently, if `f ∈ Homeo₀(X)` with an ambient isotopy whose
track of `x` is `η : x ⟶ f(x)`, then for every `δ : x ⟶ f(x)`, `f_δ = MulAut.conj [η ⬝ δ̄]`, an inner
automorphism (FarbMargalit2012, Ch. 8, §8.1; the based form of MordellLawrenceVenkatesh §5.19).

*Proof sketch.* `FundamentalGroupoidFunctor.homotopicMapsNatIso` gives `[f ∘ γ] ⬝ [η] = [η] ⬝ [g ∘ γ]` for
loops `γ` at `x`. With `f = id`, `f_η = 1`, and the change-of-path law of §3.1 gives the formula.

**Checks.**

- Point pushing: for the isotopy pushing `x` once around a loop `α`, `f(x) = x`, `η = α`, and
  `f_{const} = MulAut.conj [α]`, which is MordellLawrenceVenkatesh §5.19's `γ ↦ α * γ * α⁻¹`.
- On the torus a translation isotopy induces the identity, as every inner automorphism of `ℤ²` is
  trivial.
- The hyperelliptic involution of a genus-two surface fixes a Weierstrass point `x` and acts by `−1`
  on the abelianization; `−1` is not induced by an inner automorphism, so the involution is not
  isotopic to the identity.

*Needs:* §3.1; §2.1; MordellLawrenceVenkatesh §5.19; Mathlib
`FundamentalGroupoidFunctor.homotopicMapsNatIso`, `ContinuousMap.Homotopy`.

### 3.3 The homomorphism Ψ and change of basepoint

For a path-connected space `X` and `x ∈ X`, define `Ψ_x : Mod^±(X) → Out(π₁(X, x))`,
`[f] ↦ [f_δ]` for any path `δ : x ⟶ f(x)`. Prove that it is well defined (by §3.1's change-of-path
law and §3.2) and a homomorphism (by §3.1's composition law). Prove that for `x'` and `σ : x ⟶ x'` the
isomorphism `Out(π₁(X, x)) ≃* Out(π₁(X, x'))` induced by `fundamentalGroupMulEquivOfPath σ` does not
depend on `σ` and carries `Ψ_x` to `Ψ_{x'}`. For `X = Σ_{g,n}` restrict to `Mod_{g,n}` and prove
that `Ψ_x[f]` is the outer class of `f_*` through which MordellLawrenceVenkatesh §5.9 lets
`Mod(Σ_{g,n})` act on finite coverings: the outer automorphism `(f⁻¹)_*` by which that section
precomposes monodromies is `Ψ_x[f]⁻¹`. On the stabilizer `Mod(S*)` of `x` (MordellLawrenceVenkatesh
§5.9) the based homomorphism `[f] ↦ f_{const}` to `MulAut(π₁(S, x))` lifts `Ψ_x`; by
MordellLawrenceVenkatesh §5.19, `Push(α)` acts by `MulAut.conj [α]`, which is `f_{const}` for its end
map by §3.2 (FarbMargalit2012, Ch. 8, §8.1; LandesmanLitt2024 lines 41–42).

**Checks.**

- `X = S¹`: `Mod^±(S¹)` has two elements (§2.1) and `Ψ` is an isomorphism onto `Out(ℤ) = ℤ/2`.
- `X = T²`: the shear `(u, v) ↦ (u, u + v)` fixes the base point, sends `(1, 0)` to `(1, 1)` and
  `(0, 1)` to `(0, 1)`, and so maps to `[[1,0],[1,1]]` in `Out(ℤ²) = GL₂(ℤ)` (columns, as in the
  Conventions); its transpose `[[1,1],[0,1]]` is a different element, the image of the shear
  `(u, v) ↦ (u + v, v)`.
- `Ψ` is not injective in general: for `X = [0, 1]`, `π₁` is trivial while the flip `t ↦ 1 − t` is not
  isotopic to the identity (an ambient isotopy moves each endpoint continuously within `{0, 1}`), so
  `Mod^±([0, 1])` has two elements.

*Needs:* §1.1; §2.1; §3.1; §3.2; TeichmullerGeometry §4.2; MordellLawrenceVenkatesh §5.9;
MordellLawrenceVenkatesh §5.19.

### 3.4 Closed surfaces: the Dehn–Nielsen–Baer isomorphism and the action on `H₂`

Prove that for a closed connected oriented surface `Σ = Σ_g` of genus `g ≥ 1` and `x ∈ Σ`, `Ψ_x`
corresponds, under §2.1's isomorphism `Mod^±(Σ) ≃* MappingClassGroupFull Σ`, to TeichmullerGeometry
§5.4's `dehn_nielsen_baer`, hence is an isomorphism `Mod^±(Σ) ≃* Out(π₁(Σ, x))`; for `g = 0` it is the
map from the group of order two (TeichmullerGeometry §5.4a, `mcg_sphere_full`) to the trivial group.
For genus `g ≥ 1`, prove that `Out(π₁(Σ, x))` acts on `H₂(π₁(Σ, x); ℤ)`, Mathlib's `groupHomology` of
the trivial module `ℤ` in degree two, through `groupHomology.map`, inner automorphisms acting
trivially; that `H₂(π₁(Σ, x); ℤ) ≅ H₂(Σ; ℤ) ≅ ℤ`, because `Σ` is aspherical; and that `Ψ_x` maps
`Mod(Σ)` onto the subgroup of index two acting trivially on `H₂(π₁(Σ, x); ℤ)`. This subgroup,
transported along TeichmullerGeometry §4.2's `ι : Π ≃* π₁`, is the group that TeichmullerGeometry
§5.4 writes `Out⁺(Π)`, the image of the orientation-preserving classes; its description by the
action on `H₂` is stated here. For `g = 0`,
`Out(π₁(Σ, x))` is trivial and so is the image of `Mod(Σ)`, of index one (FarbMargalit2012, Ch. 8,
§8.1, Theorem 8.1).

*Proof sketch.* For the comparison, `Surface.IsOrientable Σ_g` and `Surface.genus Σ_g = g ≥ 1`
(§2.4) are the hypotheses of `dehn_nielsen_baer`; TeichmullerGeometry §0.0e exchanges the
boundaryless atlas of `Σ_g` (used in §2.1) and its half-plane atlas with empty boundary (in which
§5.4 there is stated). Every class of `Mod^±(Σ)` has a representative `f` fixing `x`, the point
`f(x)` being moved back to `x` by isotopy extension along a path (MordellLawrenceVenkatesh §5.17),
and both `Ψ_x` (§3.3, with the constant path) and
`dehn_nielsen_baer` send its class to the outer class of `FundamentalGroup.mapOfEq f`. For `g ≥ 1`,
`Σ` is aspherical (MordellLawrenceVenkatesh §5.15) and is homeomorphic (§2.4) to the realization of
the canonical word, a finite CW complex with one vertex, `2g` edges and one open disc (§2.4's cell
structure, TeichmullerGeometry §0.0f), so its singular homology is the group homology of `π₁(Σ, x)`,
naturally (ClassifyingSpaces Stage 4 item 17). Hence `Ψ_x[f]` acts on `H₂(π₁(Σ, x); ℤ)` as `f` acts on
`H₂(Σ; ℤ) = ℤ[Σ]`, by the sign `ε_f = ±1` with `f_*[Σ] = ε_f [Σ]`. Naturality of cup and cap products
gives `î(f_* u, f_* v) = ε_f î(u, v)` for `u, v ∈ H₁(Σ; ℤ)` and the intersection form `î` of
MordellLawrenceVenkatesh §5.5: writing `u = a ∩ [Σ]` and `v = b ∩ [Σ]`, the projection formula gives
`f_* u = ε_f (f⁻¹)^* a ∩ [Σ]`, so
`î(f_* u, f_* v) = ε_f² ⟨a ∪ b, (f⁻¹)_*[Σ]⟩ = ε_f î(u, v)`. If `f` preserves the orientation, `î` is
invariant under `f` (§5.5), and it is nonzero, being perfect (§5.5) on
`H₁(Σ; ℤ) ≅ ℤ^{2g} ≠ 0` (MordellLawrenceVenkatesh §5.6); hence `ε_f = 1`. If `f` reverses it,
`ε_f = −1`, since `f = (f ∘ r) ∘ r` with `f ∘ r` orientation-preserving (§2.1, index two), where `r`
corresponds, under §2.4's homeomorphism of `Σ` with the realization of the canonical word, to the map
induced by `z ↦ e^{2πi/g} z̄` on the closed unit disc. This map sends the point of parameter `t` on the
arc in position `j` to the point of parameter `1 − t` on the arc in position `3 − j` modulo `4g`, so it
respects the side gluing of the word `a₁ b₁ a₁⁻¹ b₁⁻¹ ⋯ a_g b_g a_g⁻¹ b_g⁻¹`: the glued pair
`(4i, t) ∼ (4i + 2, 1 − t)` goes to `(4j + 3, 1 − t) ∼ (4j + 1, t)` with `j ≡ −i` modulo `g`, and the
pair `(4i + 1, t) ∼ (4i + 3, 1 − t)` to `(4j + 2, 1 − t) ∼ (4j, t)`. It is cellular and maps the open
disc to itself by a reflection, so it acts by `−1` on cellular `H₂`, hence on singular `H₂`
(AlgebraicTopology Stage 4 items 2–3). An inner automorphism `MulAut.conj [α]` is `f_{const}` for
the push of `x` around `α` (§3.2), which is isotopic to the identity (MordellLawrenceVenkatesh
§5.19), so it acts trivially. Since `r` acts by `−1`, the action of `Out` is onto `{±1}`; an outer class acting by `+1` is `Ψ_x[f]`
for some `f`, `Ψ_x` being onto, and that `f` cannot reverse orientation.

**Checks.**

- Torus: `Ψ` is the isomorphism `Mod^±(T²) ≅ GL₂(ℤ)` on the action on `H₁ = ℤ²`, the inverse of
  TeichmullerGeometry §5.4a's `mcg_torus_full` read through §2.1; `A ∈ GL₂(ℤ)` acts on
  `H₂(ℤ²; ℤ) = Λ²ℤ² ≅ ℤ` by `det A`, so the image of `Mod(T²)` is `SL₂(ℤ)`, of index two. The sign
  agrees with the intersection form: `î(Au, Av) = det(A) î(u, v)`, so the shear `[[1,0],[1,1]]` has
  `ε = 1` and the reflection `diag(1, −1)` has `ε = −1`.
- Sphere: `Out(1)` is trivial while `Mod^±(S²)` has two elements (the antipodal map has degree `−1`,
  an isotopy invariant; TeichmullerGeometry §5.4a); so `Ψ_x` is an isomorphism for `g ≥ 1` and not
  injective for `g = 0`. Here `H₂(π₁(S², x); ℤ) = H₂(1; ℤ) = 0` while `H₂(S²; ℤ) = ℤ`, and `î = 0` on
  `H₁(S²; ℤ) = 0`: the sphere is not aspherical and the sign argument has no nonzero form to use,
  which is why the `H₂` clause is stated for `g ≥ 1`.
- Genus two: the hyperelliptic class maps to the outer class acting by `−1` on the abelianization
  (the genus-two example of TeichmullerGeometry Layer 5).

*Needs:* §2.1; §2.4; §3.2; §3.3; TeichmullerGeometry §0.0e; TeichmullerGeometry §0.0f;
TeichmullerGeometry §0.0h; TeichmullerGeometry §4.2; TeichmullerGeometry §5.4;
TeichmullerGeometry §5.4a; MordellLawrenceVenkatesh §5.1; MordellLawrenceVenkatesh §5.5;
MordellLawrenceVenkatesh §5.6; MordellLawrenceVenkatesh §5.15; MordellLawrenceVenkatesh §5.17;
MordellLawrenceVenkatesh §5.19; AlgebraicTopology Stage 4 items 2–3; ClassifyingSpaces Stage 3 item
11; ClassifyingSpaces Stage 4 item 17; Mathlib `groupHomology`, `groupHomology.map`,
`FundamentalGroup.mapOfEq`.

### 3.5 The mapping class action on conjugacy classes of representations

For every group `H`, define the action of `Mod^±_{g,n}` on `Rep(π₁(Σ_{g,n}, x), H)` as `Ψ_x`
(§3.3) followed by §1.3's action of `Out`, `[f] · [ρ] = [ρ ∘ Ψ_x[f]⁻¹]`. Prove that for
`H = Sym(d)`, on the classes of transitive homomorphisms and on `Mod_{g,n}`, it is
MordellLawrenceVenkatesh §5.9's action `[p] ↦ [f ∘ p]` on isomorphism classes of connected
coverings of degree `d`, under the monodromy correspondence
(`TauCeti.ConnectedCoveringSpace.monodromyEquivalence`, read at `x` through
`TauCeti.FundamentalGroupoidAction.basepointMulAction`, a fibre being identified with
`{1, …, d}` up to `Sym(d)`). Prove that the action is compatible with the basepoint isomorphisms of §3.3
and with homomorphisms `H → H'`; that for a subgroup `M ≤ Mod^±_{g,n}` of finite index (in particular
`PMod_{g,n}`, index `n!` in `Mod_{g,n}`, §2.3) an orbit is finite under `M` exactly when it is finite
under `Mod^±_{g,n}`. Prove the non-descent theorem: let `2g − 2 + n > 0`, `S = Σ_{g,n}` marked at
`x`, and `Mod(S*)` the group of classes fixing `x` with `Forget : Mod(S*) → Mod_{g,n}`
(MordellLawrenceVenkatesh §5.9). The based action `[f] · ρ = ρ ∘ (f_{const})⁻¹` of `Mod(S*)` on
`Hom(π₁(S, x), H)`, given by §3.3's based homomorphism and §1.3, makes the quotient map
`Hom(π₁(S, x), H) → Rep(π₁(S, x), H)` equivariant for `Mod(S*)` acting on `Rep(π₁(S, x), H)`
through `Forget`; and it factors through `Forget` if and only if every homomorphism `π₁(S, x) → H`
has commutative image (LandesmanLitt2024 lines 41–50, Definition 1.1.1 and the remark after it that
`Mod_{g,n}` does not naturally act on the representation variety; lines 473–475 for `PMod_{g,n}` of
index `n!`).

*Proof sketch.* Coverings: the fibre of `f ∘ p` over `x` is the fibre of `p` over `f⁻¹(x)`, and a
loop `γ` at `x` lifts through `f ∘ p` as `f⁻¹ ∘ γ` lifts through `p`; so the monodromy of `f ∘ p`
is that of `p` at `f⁻¹(x)` precomposed with `FundamentalGroup.map f⁻¹`. Transport along a path
`δ' : x ⟶ f⁻¹(x)` conjugates it, by the bijection of fibres that `δ'` induces, into
`ρ_p ∘ (f⁻¹)_{δ'}` (§3.1), whose class is `[ρ_p ∘ Ψ_x[f]⁻¹]`. Equivariance: `Ψ_x[Forget f]` is the
class of `f_{const}`, the constant path joining `x` to `f(x) = x` (§3.3). Non-descent: the kernel of
`Forget` is `Push(π₁(S, x))` for `χ(S) < 0` (MordellLawrenceVenkatesh §5.20), and `Push(α)` acts by
`ρ ↦ ρ ∘ (MulAut.conj [α])⁻¹ = MulAut.conj (ρ [α])⁻¹ ∘ ρ` (§1.3; MordellLawrenceVenkatesh §5.19),
which fixes `ρ` for every `α` exactly when `ρ(π₁(S, x))` is commutative.

**Checks.**

- The trivial representation and every class with finite image have finite orbit: the orbit of `[ρ]`
  with finite image `F` lies in the finite set of classes of homomorphisms from the finitely
  generated `π₁` onto subgroups of `F`.
- On a closed genus-two surface, `ρ(γ) = [[1, f(γ)],[0, 1]] ∈ GL₂(ℂ)` with `f(a₁) = 1` and
  `f(b₁) = f(a₂) = f(b₂) = 0` has infinite orbit: classes of such `ρ` correspond to lines `ℂ f` in
  `H¹(Σ₂; ℂ)`, and `Mod_{2,0}` moves the primitive class `f` through infinitely many lines
  (MordellLawrenceVenkatesh §5.22).
- For commutative `H` the action on `Hom(π₁, H) = Hom(H₁(Σ_{g,n}), H)` is the action through
  `H₁`, and the based action of `Mod(S*)` factors through `Forget`, consistently with §1.3.
- Non-descent on `(g, n) = (0, 3)`, `π₁ = F₂ = ⟨a, b⟩`, `H = S₃`: for the surjection `ρ` with
  `ρ(a) = (1 2)`, `ρ(b) = (2 3)`, `Push(a) · ρ` sends `b` to `(1 2)(2 3)(1 2) = (1 3) ≠ (2 3)`, so a
  class in the kernel of `Forget` moves `ρ`.
- The theorem is about the based action, not about lifts of sets: as an action on sets, the action
  of `Mod_{g,n}` on `Rep(π₁, H)` always lifts along `Hom(π₁, H) → Rep(π₁, H)`, because the fibres
  over one orbit are conjugation orbits `H · ρ`, pairwise in bijection through `ρ ↦ ρ ∘ φ⁻¹`, and
  transporting one fibre along chosen bijections gives an equivariant action. For `(0, 3)` and
  `H = S₃` this lifts the action on the `11` classes of `Rep(F₂, S₃)` (Burnside's count
  `(36 + 3 · 4 + 2 · 9)/6`) to the `36` points of `Hom(F₂, S₃)`; a statement that no lift exists
  would be false.
- Agreement with MordellLawrenceVenkatesh §5.9's action on coverings, which fixes the direction of
  the definition: on the torus, for the shear
  `f` with `Ψ[f] = M = [[1,0],[1,1]]` (§3.3) and the triple cover `p` with monodromy
  `ρ(u, v) = v mod 3`, the cover `f ∘ p` has subgroup `M(ker ρ) = {(a, b) : b ≡ a mod 3}`, the kernel
  of `ρ ∘ M⁻¹ : (a, b) ↦ b − a mod 3`, as the formula `[ρ ∘ Ψ[f]⁻¹]` predicts; the right action
  `ρ ∘ M : (a, b) ↦ a + b mod 3` has kernel `{b ≡ −a mod 3}`, a different cover.

*Needs:* §1.3; §2.3; §3.1; §3.3; MordellLawrenceVenkatesh §5.9; MordellLawrenceVenkatesh §5.19;
MordellLawrenceVenkatesh §5.20; MordellLawrenceVenkatesh §5.22; Tau Ceti
`TauCeti.ConnectedCoveringSpace.monodromyEquivalence`,
`TauCeti.FundamentalGroupoidAction.basepointMulAction`; Mathlib `FundamentalGroup.map`.

### Examples

- `Ψ` for `(g, n) = (0, 3)`: `Mod_{0,3} ≅ S₃` acts on `F₂ = ⟨p₁, p₂⟩` with `p₃ = (p₁p₂)⁻¹` by permuting
  the three peripheral conjugacy classes; the transposition of the first two punctures maps to the
  outer class of `p₁ ↦ p₂`, `p₂ ↦ p₂⁻¹ p₁ p₂`.

### Dependencies

Layers 1 and 2; Mathlib's fundamental group and groupoid and `groupHomology`; Tau Ceti's
classification of connected coverings by monodromy; MordellLawrenceVenkatesh §§5.1, 5.5, 5.6, 5.9,
5.15, 5.17, 5.19, 5.20, 5.22; TeichmullerGeometry §§0.0e, 0.0f, 0.0h, 4.2, 5.4, 5.4a;
AlgebraicTopology Stage 4; ClassifyingSpaces Stages 3–4. Layer 3 supplies Layer 7.

## Layer 4: Representation schemes

### 4.1 The representation scheme of a finitely generated group

Let `k` be a commutative ring, `G` an affine group scheme over `k` with coordinate Hopf algebra `A`
(ReductiveGroups Layer 0), and `Γ` a group with a finite generating family `s : S → Γ`. Construct the
representation scheme `Hom(Γ, G)`: the functor `R ↦ Hom(Γ, G(R))` on commutative `k`-algebras, with
`G(R)` the convolution group of points, is represented by the quotient of `A^{⊗S}` by the ideal
generated by `w^*(a) − ε(a)` for `a ∈ A` and `w` in the kernel `N` of `FreeGroup S → Γ`, where `w^*`
is the coproduct-word map of `w`. Prove that the representing algebra does not depend on `s` up to
unique isomorphism, is of finite type when `A` is, and is functorial (contravariantly in `Γ`,
covariantly in `G`), commutes with base change `k → k'`, and that conjugation by `G` is an action by
scheme automorphisms (Sikora2012 line 584, `Hom(Γ, G)` a closed subset of `Hom(F, G)`;
BCGGO2024 lines 2706–2708).

The representation scheme has the following API.

- Points: `Hom(Γ, G)(R) = Hom(Γ, G(R))`, naturally in `R`.
- Generators: evaluation on `s` is a closed immersion `Hom(Γ, G) → G^S`, equivariant for
  conjugation; for `Γ = FreeGroup S` it is an isomorphism.
- Surjections `Γ' ↠ Γ` induce closed immersions `Hom(Γ, G) → Hom(Γ', G)`.
- For a closed embedding `G ⊆ GL_N`, `ρ ↦ (ρ(s_i), ρ(s_i)⁻¹)_i` is a closed equivariant immersion into
  the affine space `(M_N × M_N)^S` with `G` acting by simultaneous conjugation.
- Base change: `Hom(Γ, G)_{k'} = Hom(Γ, G_{k'})`.

**Checks.**

- `Γ = ℤ`: `Hom(ℤ, G) = G`; `Γ = F_m`: `Hom = G^m`; `Γ` trivial: `Hom = Spec k`.
- `Γ = ℤ/2`, `G = 𝔾_m` over `𝔽₂`: `Hom = Spec 𝔽₂[t]/(t² − 1) = Spec 𝔽₂[t]/((t − 1)²)` is a nonreduced
  point; a definition by points over a field alone would see only `t = 1` and lose the nilpotent.
- `Γ = ℤ²`, `G = GL_n`: the points are pairs of commuting invertible matrices; omitting the relator
  `[a, b]` would give `GL_n × GL_n`.

*Needs:* ReductiveGroups Layer 0; Mathlib `FreeGroup`, `FreeGroup.lift`, `PresentedGroup`.

### 4.2 Real and complex points and their topologies

Prove that for `k = ℂ` and `G` of finite type, the point topology (`TauCeti.PointTopology.topology`,
ReductiveGroupsPartII §RG2.0.1) on `Hom(Γ, G)(ℂ) = Hom(Γ, G(ℂ))` equals the classical topology of
ComplexComparisonPartII §C-1.1 and the topology of pointwise convergence; `Hom(Γ, G(ℂ))` is closed in
`G(ℂ)^S`, Hausdorff and locally compact. For a real reductive datum `(𝐆, G^ℝ)`, prove that
`Hom(Γ, 𝐆(ℝ)) = Hom(Γ, 𝐆)(ℝ)` is the fixed set of complex conjugation on `Hom(Γ, 𝐆)(ℂ)`, that
`Hom(Γ, G^ℝ)` is an open and closed subset of it, and that `G^ℝ` acts continuously by conjugation
(BCGGO2024 lines 2706–2708).

**Checks.**

- `Hom(ℤ, GL₁(ℝ)) = ℝ^×` has two components and `Hom(ℤ, GL₁(ℝ)⁰) = ℝ_{>0}` is one of them.
- `Hom(ℤ/2, SO(2)) = {±1}` is discrete, while `Hom(ℤ, SO(2)) = SO(2)` is a circle.
- For `Γ = F₂`, the pointwise topology on `Hom(F₂, G(ℂ))` is the product topology of `G(ℂ)²`; a
  discrete topology on `Hom` would make every orbit closed.

*Needs:* §4.1; ReductiveGroupsPartII §RG2.0.1; ComplexComparisonPartII §C-1.1; Tau Ceti
`TauCeti.PointTopology.topology`.

### 4.3 Surface groups

Prove that, through §2.4, `Hom(π₁(Σ_g, x), G)` is isomorphic, equivariantly for conjugation, to the
closed subscheme `{(A_i, B_i) ∈ G^{2g} : ∏_i [A_i, B_i] = 1}` of `G^{2g}`, and that for `n ≥ 1`,
`Hom(π₁(Σ_{g,n}, x), G) ≅ G^{2g+n−1}`, with the peripheral evaluations `ρ ↦ ρ(p_j)` given by the
relator (BCGGO2024 lines 2706–2708; FreeGroupsAndLimitGroups §§6.1–6.2).

**Checks.**

- `g = 1`, `n = 0`: the commuting variety; for `G = GL₁` it is `𝔾_m²`.
- `(g, n) = (0, 3)`: `G²`, with `ρ(p₃) = (ρ(p₁)ρ(p₂))⁻¹`.
- `(g, n) = (0, 0)`: a point; `(g, n) = (1, 1)`: `G²`, not the commuting variety.

*Needs:* §2.4; §4.1; FreeGroupsAndLimitGroups §6.1; FreeGroupsAndLimitGroups §6.2.

### Examples

- `Hom(F₂, SL₂)` is `SL₂ × SL₂`, of dimension six; `Hom(π₁(Σ₂), SL₂)` is the fibre over `1` of the
  commutator-product map `SL₂⁴ → SL₂`.

### Dependencies

ReductiveGroups Layer 0; ReductiveGroupsPartII §RG2.0.1; ComplexComparisonPartII §C-1.1; Layer 2
§2.4. Layer 4 supplies Layers 6 and 7.

## Layer 5: Real reductive groups and minimal vectors

### 5.1 Real reductive data

Define a real reductive datum as in the Conventions: a connected reductive `ℝ`-group `𝐆` and an open
subgroup `G^ℝ ⊆ 𝐆(ℝ)`. Record that `G^ℝ` is a real Lie group with finitely many components and Lie
algebra `𝔤^ℝ` (ArithmeticLocallySymmetricSpaces §ALS.F.1), that complex reductive groups are the
case `𝐆 = Res_{ℂ/ℝ} H` (ReductiveGroupsPartII §RG2.0a.2), and that `Ad : G^ℝ → GL(𝔤^ℝ)` is the
restriction of the algebraic adjoint representation (ReductiveGroups Layer 2) (BCGGO2024 lines
466–472; Knapp2002, Ch. VI, §§1–2).

The datum has the following API.

- `G^ℝ` contains the identity component of `𝐆(ℝ)` and has finite index in `𝐆(ℝ)`.
- For `𝐆 = Res_{ℂ/ℝ} H`, `G^ℝ = H(ℂ)` and `𝔤^ℝ` is `Lie(H)` regarded as a real Lie algebra.
- A morphism of `ℝ`-groups mapping `G^ℝ` into `G'^ℝ` is a morphism of data.

**Checks.**

- `𝐆 = SO(p, q)`, `p, q ≥ 1`: `𝐆(ℝ)` has two components, and both `𝐆(ℝ)` and its identity
  component are data; `𝐆 = PGL₂`: `PSL₂(ℝ) = PGL₂(ℝ)⁰` is a datum, the group of BCGGO2024's
  Example 8.2.
- `𝐆 = Res_{ℂ/ℝ} GL_n`: `G^ℝ = GL_n(ℂ)`, `dim_ℝ 𝔤^ℝ = 2n²`.
- Non-examples: the universal cover of `SL₂(ℝ)` is not an open subgroup of the real points of any
  linear algebraic group (it has no faithful finite-dimensional representation), and the additive
  group `ℝ = 𝔾_a(ℝ)` is excluded because `𝔾_a` is unipotent, not reductive.

*Needs:* ReductiveGroups Layer 2; ReductiveGroups Layer 6; ArithmeticLocallySymmetricSpaces
§ALS.F.1; ReductiveGroupsPartII §RG2.0a.2.

### 5.2 Real forms given by antiholomorphic involutions

Prove the real-form bridge. Let `H` be a connected reductive group over `ℂ` and `τ` an
antiholomorphic involution of the complex Lie group `H(ℂ)`. There is a connected reductive `ℝ`-group
`𝐆_τ` with an isomorphism `(𝐆_τ)_ℂ ≅ H` under which complex conjugation is `τ`, unique up to unique
isomorphism; in particular `H(ℂ)^τ = 𝐆_τ(ℝ)`, possibly disconnected. Conversely the complex
conjugation of every `ℝ`-structure on `H` is an antiholomorphic involution. A holomorphic involution
`σ` commuting with `τ` with `στ` a compact real form is a Cartan involution for `τ` in the sense of
BCGGO2024; it restricts to an algebraic Cartan involution of `𝐆_τ` in the sense of
ArithmeticLocallySymmetricSpaces §ALS.0.1, with fixed group `𝐆_τ(ℝ)^σ` maximal compact
(BCGGO2024 lines 466–481; Knapp2002, Ch. VI, §§1–2).

*Proof sketch.* `H` is split (ReductiveGroups Layer 8), so `H ≅ (G₀)_ℂ` for a split model `G₀` over
`ℤ` (ReductiveGroups Layer 9), whose conjugation `τ₀` is antiholomorphic. `α = τ ∘ τ₀` is a
holomorphic group automorphism of `H(ℂ)`, and it is algebraic: for a compact real form `K` of `H(ℂ)`
(LieGroups Layer 7, **Real forms and global descent**), `α(K)` is again a compact real form, since
`dα` is a complex-linear Lie algebra automorphism; by LieGroups Layer 7, **Compact-real-form pairs
and algebraic morphisms**, the holomorphic extension of `α|_K : K → α(K)` is a regular algebraic
endomorphism of `H`, and it equals `α` because `H(ℂ)` is the universal complexification of `K`, so
holomorphic homomorphisms out of `H(ℂ)` that agree on `K` are equal. The same argument for `α⁻¹`
makes `α` an algebraic automorphism, and `τ = α ∘ τ₀` because `τ₀` is an involution. Then
`f ↦ conj ∘ f ∘ τ` is an antilinear involution of the Hopf algebra `O(H)`, and Galois descent for
`ℂ/ℝ` (the fixed vectors
of an antilinear involution of a complex vector space form a real form of it) gives
`O(𝐆_τ) = O(H)^τ`.

**Checks.**

- `H = GL_n`, `τ(g) = ḡ`: `𝐆_τ = GL_n` over `ℝ` and `H(ℂ)^τ = GL_n(ℝ)`; `τ(g) = (ḡᵀ)⁻¹`: the compact
  form `U(n)`.
- `H = GL₂`, `τ(g) = J ḡ J⁻¹` with `J = [[0, −1],[1, 0]]`: the fixed points are the matrices
  `[[a, −b̄],[b, ā]]`, the group `ℍ^×` of nonzero quaternions, a non-split real form.
- Non-example: the holomorphic involution `g ↦ (gᵀ)⁻¹` of `GL_n(ℂ)` has fixed group `O_n(ℂ)`, a
  complex subgroup, not a real form.

*Needs:* ReductiveGroups Layer 8; ReductiveGroups Layer 9; LieGroups Layer 7, **Real forms and
global descent**; LieGroups Layer 7, **Compact-real-form pairs and algebraic morphisms**;
ArithmeticLocallySymmetricSpaces §ALS.0.1.

### 5.3 Cartan-compatible realizations of the conjugation action

Prove that every real reductive datum admits a closed embedding `𝐆 ⊆ GL_N` over `ℝ` with `G^ℝ`
transpose-stable (ArithmeticLocallySymmetricSpaces §ALS.F.1), and that for it `G^ℝ = K exp(𝔭)` with
`K = G^ℝ ∩ O(N)` and `𝔭 = 𝔤^ℝ ∩ Sym_N(ℝ)`, and `G(ℂ) = U exp(i𝔲)` with `U = G(ℂ) ∩ U(N)` and
`i𝔲 = 𝔭 ⊕ i𝔨`, both decompositions unique. Prove that `U` and `i𝔲` are stable under complex
conjugation and that `i𝔲 ∩ 𝔤^ℝ = 𝔭`. For a finite set `S`, the conjugation action of `G^ℝ` (of
`G(ℂ)`) on `V = (M_N × M_N)^S` over `ℝ` (over `ℂ`) with the inner product `Σ tr(A_i B_iᵀ)` (its
hermitian extension) satisfies the hypothesis of a real reductive linear group in the sense of
BohmLafuente2021 lines 52–62: the image is closed, `K` (`U`) acts orthogonally (unitarily) and `𝔭`
(`i𝔲`) acts by symmetric (hermitian) endomorphisms.

*Proof sketch.* If `exp(S) ∈ 𝐆(ℝ)` with `S` symmetric, then `exp(tS) ∈ 𝐆(ℝ)` for all real `t`: in an
eigenbasis of `S` the defining polynomials of `𝐆` evaluated on `exp(tS)` are exponential polynomials
in `t` with real exponents vanishing at all integers, hence identically. Combined with
ArithmeticLocallySymmetricSpaces §ALS.F.1's polar decomposition this gives `G^ℝ = K exp(𝔭)`; the
complex case applies the same to `Res_{ℂ/ℝ} G` (LieGroups Layer 9). For `X ∈ 𝔭`, `ad X` is symmetric
for the trace form.

**Checks.**

- `SL₂(ℝ)`: `K = SO(2)`, `𝔭` the traceless symmetric matrices, `U = SU(2)`; the minimal vectors of
  `M₂(ℝ)` under conjugation are the normal matrices (BohmLafuente2021 line 193).
- `GL₁(ℝ)` acting on `ℝ` by `λ · v = λv`: `𝔭 = ℝ` and only `0` minimizes the norm on its orbit.
- The embedding of `SL₂(ℝ)` conjugated by `[[1,1],[0,1]]` is not transpose-stable: it carries `SO(2)`
  to a subgroup not contained in `O(2)`, and the norm is not `K`-invariant.

*Needs:* §5.1; ArithmeticLocallySymmetricSpaces §ALS.F.1; LieGroups Layer 9; ReductiveGroupsPartII
§RG2.0a.2.

### 5.4 The real Kempf–Ness theorem

Let `G ⊆ GL(V)` be a closed subgroup of a real finite-dimensional inner product space with
`G = K exp(𝔭)`, `K = G ∩ O(V)`, `𝔭 = 𝔤 ∩ Sym(V)`. Prove: (i) the set
`M = {v : ⟨A v, v⟩ = 0 for all A ∈ 𝔭}` of minimal vectors is a closed cone and is exactly the set of
`v` with `‖v‖ ≤ ‖g v‖` for all `g ∈ G`; (ii) an orbit `G v` is closed if and only if it meets `M`, and
then `G v ∩ M = K w` for any `w ∈ G v ∩ M`; (iii) if `G v` is not closed there is `α ∈ 𝔭` such that
`lim_{t→∞} exp(tα) v` exists and lies outside `G v`; (iv) the closure of every orbit contains exactly
one closed orbit, and it contains the norm minimizers of that closure; (v) for a maximal abelian
`𝔱 ⊆ 𝔭` and `T = exp(𝔱)`, `G = K T K`, and any two disjoint closed `T`-invariant subsets of `V` are
separated by a continuous `T`-invariant function `V → [0, 1]` (BohmLafuente2021 Theorem 1.1, lines
77–88; Lemma 5.1, line 417; Corollary 5.5, line 445; Lemma 6.3, line 518; Corollary 6.4, line 562;
Lemma 6.5, line 568; Corollary A.2, line 1050; §4 of RichardsonSlodowy1990).

*Proof sketch.* Along `t ↦ exp(tA) v` with `A ∈ 𝔭` the squared norm is
`Σ e^{2tλ_i} ‖v_i‖²` in an eigenbasis of `A`, convex with derivative `2⟨A v, v⟩` at `0`; this gives (i)
with `G = K exp(𝔭)`. For an abelian `T` the orbits are coordinate tori and closed orbits are separated
by explicit monomial invariants, which gives (v) after the `K T K` decomposition (proved from the
conjugacy of maximal abelian subalgebras of `𝔭` under `K`). A non-closed orbit has a closed invariant
subset of its closure disjoint from it; separating it from the `T`-orbits of `K v` and using
compactness of `K` produces `α` in (iii). Convexity then shows that a minimal vector cannot have a
non-closed orbit, which is (ii), and the same separation gives the uniqueness in (iv).

**Checks.**

- `ℝ_{>0}` on `ℝ²` by `λ · (x, y) = (λx, λ⁻¹y)`: `M = {|x| = |y|}`, the hyperbola branches and `0` are
  the closed orbits, and the four half-axes are non-closed orbits with `0` in their closure
  (BohmLafuente2021 lines 172–176).
- `SL_n(ℝ)` on `M_n(ℝ)` by conjugation: an orbit is closed exactly when the matrix is diagonalizable
  over `ℂ`, and `[[1,1],[0,1]]` has the closed orbit of the identity in its closure
  (BohmLafuente2021 lines 179–193).
- `ℝ_{>0}` acting on `ℝ` by scaling: `𝔭 = ℝ` and `M = {0}`; every nonzero orbit is a half-line, not
  closed, with `α = −1` giving `lim exp(−t) v = 0` as in (iii), and `{0}` is the unique closed orbit
  in each orbit closure as in (iv). For compact `G` (`𝔭 = 0`) instead `M = V` and every orbit is
  closed.

*Needs:* Mathlib inner product spaces, `Matrix.orthogonalGroup`, compactness; LieGroups Layer 9.

### Examples

- For `SL₂(ℝ)` acting on pairs `(A, B)` of matrices by simultaneous conjugation, a pair of commuting
  normal matrices is minimal, and the pair `([[1,1],[0,1]], 1)` is not.

### Dependencies

ReductiveGroups Layers 2, 6, 8, 9; ReductiveGroupsPartII §RG2.0a.2; ArithmeticLocallySymmetricSpaces
§§ALS.F.1, ALS.0.1; LieGroups Layers 7 and 9. Layer 5 supplies Layers 6 and 7.

## Layer 6: Reductive representations

### 6.1 Reductive representations

For a real reductive datum `(𝐆, G^ℝ)` and a group `Γ`, call `ρ : Γ → G^ℝ` reductive when
`Ad ∘ ρ : Γ → GL(𝔤^ℝ)` is semisimple, `Representation.IsSemisimpleRepresentation` over `ℝ`
(BCGGO2024 lines 2708–2711). Write `Hom^red(Γ, G^ℝ)`.

The predicate has the following API.

- Reductivity depends only on the subgroup `ρ(Γ)`: the `Γ`-stable subspaces of `𝔤^ℝ` are the
  `ρ(Γ)`-stable ones.
- `Hom^red(Γ, G^ℝ)` is stable under conjugation by `G^ℝ` and under precomposition with automorphisms
  of `Γ`, and more generally under precomposition with surjections `Γ' ↠ Γ`.

**Checks.**

- The trivial representation is reductive: `Ad ∘ ρ` is trivial, hence semisimple.
- `Γ = ℤ`, `G^ℝ = SL₂(ℝ)`, `ρ(1) = [[1,1],[0,1]]`: `Ad ∘ ρ` is a nontrivial unipotent automorphism of
  `𝔰𝔩₂(ℝ)`, not semisimple, so `ρ` is not reductive.
- For a torus every representation is reductive, `Ad` being trivial. For `Γ = ℤ`,
  `G^ℝ = GL₂(ℝ)` and `ρ(1) = diag(2, 3)`, `Ad ∘ ρ` has eigenvalues `1, 1, 2/3, 3/2` on `M₂(ℝ)` with an
  eigenbasis of matrix units, so `ρ` is reductive.

*Needs:* Mathlib `Representation.IsSemisimpleRepresentation`; §5.1.

### 6.2 Scalar extension

Prove that for every field extension `k'/k` and every finite-dimensional representation `V` of a
monoid over `k`, if `V ⊗_k k'` is semisimple then `V` is semisimple, and that the converse holds for
perfect `k` (ArithmeticGaloisRepresentations §1.7). Hence `Ad ∘ ρ` is semisimple on `𝔤^ℝ` if and only
if it is semisimple on `𝔤` (Sikora2012 lines 262–266, complete reducibility as semisimplicity of the
representation). Deduce that for `𝐆 = Res_{ℂ/ℝ} H` and `ρ : Γ → H(ℂ)`, the representation `Ad ∘ ρ`
on `Lie(H)` regarded as a real vector space is semisimple over `ℝ` if and only if the complex
representation `Ad ∘ ρ` on `Lie(H)` is semisimple.

*Proof sketch.* Let `B` be the image of the monoid algebra in `End_k(V)`; `V` is semisimple exactly
when `B` is a semisimple algebra. The image over `k'` is `B ⊗_k k'`, and `rad(B) ⊗_k k'` is a nilpotent
ideal of it, so semisimplicity of `B ⊗_k k'` forces `rad(B) = 0`. For the Weil restriction, a complex
representation `W` regarded over `ℝ` satisfies `W_ℝ ⊗_ℝ ℂ ≅ W ⊕ W̄` by `w ⊗ z ↦ (z w, z̄ w)`, with `W̄`
the complex conjugate representation, whose subrepresentations are those of `W`; so `W_ℝ` is
semisimple exactly when `W` is, by the two directions above with `k = ℝ` perfect.

**Checks.**

- `ℤ` acting on `ℝ²` by the rotation `[[0, −1],[1, 0]]` is irreducible over `ℝ` and splits into two
  characters over `ℂ`; both are semisimple.
- `ℤ` acting on `ℝ²` by `[[1,1],[0,1]]` is not semisimple over `ℝ` nor over `ℂ`.
- The perfectness hypothesis in the converse is needed: for `k = 𝔽_p(s)` and `k' = k(s^{1/p})` the
  example of ArithmeticGaloisRepresentations §1.7 is simple over `k` and not semisimple over `k'`.
- Weil restriction: for `H = GL₂`, `Γ = ℤ` and `ρ(1) = [[1,1],[0,1]]`, `Ad ∘ ρ` is a nontrivial
  unipotent on `𝔤𝔩₂(ℂ)` and on its underlying `ℝ⁸`, semisimple on neither; for `ρ(1) = diag(2, 3)` it
  is diagonalizable with real eigenvalues `1, 1, 2/3, 3/2` on `𝔤𝔩₂(ℂ)`, each of multiplicity two on
  `ℝ⁸`, semisimple on both.

*Needs:* ArithmeticGaloisRepresentations §1.7; §5.1; Mathlib `IsSemisimpleModule`.

### 6.3 Adjoint semisimplicity and reductive Zariski closure

Prove that for a connected reductive group `G` over an algebraically closed field of characteristic
zero and a closed subgroup `Z`, the adjoint representation of `Z` on `𝔤` is semisimple if and only if
`Z⁰` is reductive; applied to the Zariski closure `Z` of `ρ(Γ)` in `G`, `Ad ∘ ρ` is semisimple on `𝔤`
if and only if `Z⁰` is reductive (BateMartinRohrle2005 line 263; Sikora2012 line 228,
Proposition 8, completely reducible subgroups as those with linearly reductive closure).

*Proof sketch.* A subspace is `ρ(Γ)`-stable exactly when it is `Z`-stable, its stabilizer being
closed. If `Z⁰` is reductive then `Z` is linearly reductive in characteristic zero (ReductiveGroups
Layer 6 for `Z⁰`, then averaging over the finite group `Z/Z⁰`), so `𝔤` is semisimple. Conversely if
`𝔤` is a semisimple `Z`-module, the unipotent radical `R_u(Z⁰)`, normal in `Z`, has nonzero fixed
vectors on each simple summand (ReductiveGroups Layer 5), hence acts trivially; so
`R_u(Z⁰) ⊆ ker(Ad) = Z(G)`, which is of multiplicative type (ReductiveGroups Layer 6) and contains no
nontrivial unipotent subgroup.

**Checks.**

- `Z` a torus: reductive, and `𝔤` splits into weight spaces.
- `Z` the upper unipotent subgroup of `SL₂`: `Ad` acts by a nontrivial unipotent on `𝔰𝔩₂`, not
  semisimple, and `Z⁰ = Z` is not reductive.
- `Z = N(T)` in `SL₂` (disconnected, `Z⁰ = T`): reductive identity component and `𝔤` semisimple; a
  definition requiring `Z` connected would reject it.

*Needs:* ReductiveGroups Layer 2; ReductiveGroups Layer 5; ReductiveGroups Layer 6.

### 6.4 Complete reducibility

Prove that for `G` as in §6.3 and a closed subgroup `Z` topologically generated by finitely many
elements `z₁, …, z_m` (`Z` is the Zariski closure of the subgroup they generate), `Z` is
`G`-completely reducible (ArithmeticGaloisRepresentations §1.11, `IsGCompletelyReducible`) if and only
if `Z⁰` is reductive (BateMartinRohrle2005 line 263 and Lemma 2.6, line 267; Theorem 3.46, line 861;
Sikora2012 line 228, Proposition 8). The implication from complete reducibility to reductivity of
`Z⁰` holds for every closed subgroup `Z` (gap:gcr-reductive-identity-component). The Zariski closure of
the image of a finitely generated group is topologically generated by the images of its generators,
which is the case §6.7 uses.

*Proof sketch.* If `Z⁰` is reductive, `𝔤` is a semisimple `Z`-module (§6.3) and every subgroup is
separable in characteristic zero (ReductiveGroups Layer 2), so the argument of BateMartinRohrle2005
Theorem 3.46 applies to the tuple `(z₁, …, z_m)`: if `Z` were not `G`-completely reducible, this
tuple would have a non-closed orbit in `G^m` (ArithmeticGaloisRepresentations §1.11), a cocharacter
limit into the closed orbit would lower the dimension of the centralizer, while its adjoint image is
`GL(𝔤)`-conjugate to that of `Z` by the `GL(𝔤)` case of the same criterion, which preserves the
dimension of the fixed space; a contradiction. The finitely many generators are what makes the tuple
exist. Conversely a `G`-completely reducible `Z` has reductive identity component by
gap:gcr-reductive-identity-component, whose route uses gap:borel-tits.

**Checks.**

- A subgroup not contained in any proper parabolic is `G`-completely reducible, hence has reductive
  identity component: for `SL₂` an irreducible finite subgroup such as the binary dihedral group.
- The Borel subgroup `B` of `SL₂` lies in the parabolic `B` with no Levi containing it, and
  `R_u(B) ≠ 1`; its centralizer is the centre `{±1}`, so a criterion "centralizer finite modulo the
  centre" would wrongly accept it.
- For `G = GL(V)`, complete reducibility of `Z` is semisimplicity of `V`
  (ArithmeticGaloisRepresentations §1.11), and `Z⁰` reductive gives semisimplicity in characteristic
  zero.
- `Z = N(T)` in `SL₂` over `ℂ` is topologically generated by `diag(2, 1/2)` and `[[0,−1],[1,0]]`: the
  first generates an infinite subgroup of the one-dimensional torus `T`, dense in it, and the second
  lies in `N(T) ∖ T`. The tuple of these two elements has closed orbit, `Z⁰ = T` is reductive, and `Z`
  fixes no line of `ℂ²` (`T` fixes only the two coordinate lines, which the second generator
  exchanges), so it lies in no Borel subgroup and is `SL₂`-completely reducible; a statement
  requiring `Z` connected would exclude it.

*Needs:* §6.3; ArithmeticGaloisRepresentations §1.11; ReductiveGroups Layer 2; ReductiveGroups
Layer 3A; ReductiveGroups Layer 7; gap:gcr-reductive-identity-component; gap:borel-tits.

### 6.5 Closed complex orbits

Prove that for a finitely generated `Γ`, a connected reductive `G` over `ℂ` and `ρ ∈ Hom(Γ, G(ℂ))`,
the following are equivalent: the Zariski closure of `ρ(Γ)` is `G`-completely reducible; the
`G`-orbit of `ρ` in `Hom(Γ, G)` is Zariski closed; the `G(ℂ)`-orbit of `ρ` is closed in the classical
topology (Sikora2012 lines 572–586, Theorem 30; BateMartinRohrle2005 Corollary 3.7, line 510;
Richardson1988 Theorem 3.6).

*Proof sketch.* `Hom(Γ, G)` is closed and invariant in `G^S` (§4.1), so orbit closures in it are orbit
closures in `G^S`; the first two conditions are equivalent by ArithmeticGaloisRepresentations §1.11's
closed-tuple criterion. A Zariski-closed set is classically closed. Conversely the closure of the orbit
contains a closed orbit reached by a cocharacter limit (ArithmeticGaloisRepresentations §1.11), and
`t ↦ λ(t) · ρ` extends to a morphism from `𝔸¹`, continuous in the classical topology
(ComplexComparisonPartII §C-1.1); a classically closed orbit therefore meets the closed orbit and
equals it.

**Checks.**

- `Γ = ℤ`, `G = GL_n`: the orbit of `ρ(1) = g` is the conjugacy class of `g`, closed exactly when `g` is
  semisimple; for `g = [[1,1],[0,1]]` the identity lies in its classical closure.
- A representation with values in a torus has closed orbit.
- `Γ = F₂`, `G = SL₂`, `ρ(a) = diag(2, 1/2)`, `ρ(b) = [[1,1],[0,1]]`: the image is Zariski dense in the
  Borel subgroup, and conjugation by `diag(t, t⁻¹)` with `t → 0` tends to `(diag(2, 1/2), 1)`, outside
  the orbit.

*Needs:* §4.1; §4.2; ArithmeticGaloisRepresentations §1.11; ComplexComparisonPartII §C-1.1;
ReductiveGroups Layer 3A.

### 6.6 Closed real orbits

Prove that for a real reductive datum `(𝐆, G^ℝ)`, a finitely generated `Γ` and `ρ ∈ Hom(Γ, G^ℝ)`, the
`G^ℝ`-orbit of `ρ` is closed in `Hom(Γ, G^ℝ)` if and only if the `G(ℂ)`-orbit of `ρ` is closed in
`Hom(Γ, G(ℂ))` (§7 of RichardsonSlodowy1990).

*Proof sketch.* Realize the conjugation action on `V = (M_N × M_N)^S` as in §5.3. If `G^ℝ ρ` is
closed, its norm minimizer `w` is a real minimal vector (§5.4); for hermitian `Z = X + iY ∈ i𝔲` with
`X ∈ 𝔭`, `Y ∈ 𝔨`, `Re⟨Z w, w⟩ = ⟨X w, w⟩ = 0` because `⟨Y w, w⟩ = 0` for skew `Y` and real `w`; so `w`
is minimal for `G(ℂ)` and `G(ℂ)ρ = G(ℂ)w` is closed by §5.4 applied to `G(ℂ)`. Conversely, if
`G(ℂ)ρ` is closed, pick `g₀` with `g₀ρ` minimal for `G(ℂ)`; complex conjugation `τ` preserves the
norm, `U` and `i𝔲`, so `τ(g₀)ρ` is minimal too. Write `τ(g₀)g₀⁻¹ = u exp(Z)` with `u ∈ U`,
`Z ∈ i𝔲`. The function `t ↦ log‖exp(tZ) g₀ ρ‖` is convex and takes its minimum at `t = 0` and
`t = 1`, hence at `t = 1/2`; uniqueness of polar decomposition gives `τ(U exp(Z/2) g₀) =
U exp(Z/2) g₀`, so this coset contains `exp(Y)` with `Y ∈ i𝔲 ∩ 𝔤^ℝ = 𝔭`. Then `exp(Y) ρ ∈ G^ℝ ρ` is a
real minimal vector and `G^ℝ ρ` is closed by §5.4.

**Checks.**

- `Γ = ℤ`, `G^ℝ = SL₂(ℝ)`: the rotation `[[0, −1],[1, 0]]` has closed real and complex orbits; the
  matrix `[[1,1],[0,1]]` has neither.
- `G^ℝ = ℝ^×` acting on `Hom(ℤ, ℝ^×) = ℝ^×` by trivial conjugation: every orbit is a point, closed
  over `ℝ` and over `ℂ`.
- The real orbit of `diag(2, 1/2) ∈ SL₂(ℝ)` is closed although `diag(2, 1/2)` is not in the compact
  `K`; a criterion by compactness of the image would reject it.

*Needs:* §5.3; §5.4; §6.5; §4.2.

### 6.7 The six characterizations

Prove that for a real reductive datum `(𝐆, G^ℝ)`, a finitely generated `Γ` and `ρ : Γ → G^ℝ`, the
following are equivalent: (a) `ρ` is reductive; (b) `Ad ∘ ρ` is semisimple on `𝔤`; (c) the Zariski
closure `Z` of `ρ(Γ)` in `G` has reductive identity component; (d) `Z` is `G`-completely reducible;
(e) the `G`-orbit of `ρ` in `Hom(Γ, G)` is Zariski closed; (f) the `G^ℝ`-orbit of `ρ` in
`Hom(Γ, G^ℝ)` is closed (BCGGO2024 lines 2708–2713; Sikora2012 line 228 and lines 572–586;
§7 of RichardsonSlodowy1990). Derive: a representation with values in a compact subgroup is reductive;
a representation whose image is Zariski dense in a reductive subgroup is reductive; a `G`-irreducible
representation (image in no proper parabolic) is reductive; for reductive `ρ`, `ρ` is `G`-irreducible
if and only if its centralizer is finite modulo the centre (BateMartinRohrle2005 Proposition 2.13,
line 379; Sikora2012 lines 363–364, Corollary 17); and for `G^ℝ = GL_r(ℝ)` or `GL_r(ℂ)`, `ρ` is
reductive if and only if the defining representation on `ℂ^r` is semisimple.

*Proof sketch.* (a) ⇔ (b) is §6.2, (b) ⇔ (c) is §6.3, (c) ⇔ (d) is §6.4 for `Z` topologically
generated by the `ρ(s)`, `s` in a finite generating set of `Γ`, (d) ⇔ (e) and the
classical closedness are §6.5, and (e) ⇔ (f) is §6.6. A compact image preserves an inner product on
`𝔤^ℝ`, so `Ad ∘ ρ` is unitary and semisimple. The `GL_r(ℝ)` case is the `GL(V)` clause of
ArithmeticGaloisRepresentations §1.11 with (d); for `GL_r(ℂ)`, `G = (Res_{ℂ/ℝ} GL_r)_ℂ ≅ GL_r × GL_r`
and complete reducibility in a product is complete reducibility of both projections
(BateMartinRohrle2005 Lemma 2.12(i), line 355), the second projection being the complex conjugate
of `ρ`.

**Checks.**

- `Γ = π₁(Σ₂)` with `ρ(a₁) = [[1,1],[0,1]]` and the other generators trivial into `SL₂(ℝ)`: the relator
  holds, the orbit closure contains the trivial representation, and all six conditions fail.
- The Borel-dense representation of §6.5's Check has centralizer equal to the centre and is not
  reductive, so the finite-centralizer criterion needs the reductivity hypothesis.
- Compact `G^ℝ = SO(n)`: every representation is reductive and every orbit is closed.

*Needs:* §6.1; §6.2; §6.3; §6.4; §6.5; §6.6; Tau Ceti
`ContRepresentation.IsUnitary.isSemisimpleRepresentation`; ArithmeticGaloisRepresentations
§1.11; ReductiveGroupsPartII §RG2.0a.2.

### Examples

- `Γ = ℤ`: `ρ(1) = g` is reductive exactly when `g` is semisimple (`Ad(g)` semisimple forces the
  unipotent part of `g` into the centre, which has no unipotent elements).
- `Γ = π₁(Σ_g)`, `g ≥ 2`, `G^ℝ = PSL₂(ℝ)`: the uniformizing holonomy (TeichmullerGeometry §4.5) has
  Zariski-dense image and is reductive.

### Dependencies

Layers 4 and 5; ReductiveGroups Layers 2, 3A, 5, 6, 7; ArithmeticGaloisRepresentations §§1.7, 1.11;
ComplexComparisonPartII §C-1.1. Layer 6 supplies Layer 7.

## Layer 7: Character varieties

### 7.1 The character variety and its topology

For a real reductive datum `(𝐆, G^ℝ)` and a finitely generated group `Γ`, define
`𝒳(Γ, G^ℝ) := Hom^red(Γ, G^ℝ)/G^ℝ` with the quotient topology of the subspace topology on
`Hom^red(Γ, G^ℝ)` (BCGGO2024 lines 2712–2713, Definition 8.1). Prove that, in a Cartan-compatible
realization (§5.3), the inclusion of `M ∩ Hom(Γ, G^ℝ)` induces a homeomorphism
`(M ∩ Hom(Γ, G^ℝ))/K ≅ 𝒳(Γ, G^ℝ)`; hence `𝒳(Γ, G^ℝ)` is Hausdorff, locally compact and second
countable. Prove that every `G^ℝ`-orbit closure in `Hom(Γ, G^ℝ)` contains exactly one closed orbit,
which gives a map of sets `Hom(Γ, G^ℝ) → 𝒳(Γ, G^ℝ)` extending the quotient map
(§§4 and 9 of RichardsonSlodowy1990; BohmLafuente2021 Theorem 1.1).

*Proof sketch.* By §6.7, `Hom^red` is the set of points with closed orbit, and by §5.4 each closed
orbit meets `M` in one `K`-orbit, so the map from `(M ∩ Hom)/K` is a continuous bijection. For its
inverse, let `v_n → v` in `Hom^red`, `w_n ∈ G^ℝ v_n ∩ M` (bounded by `‖v_n‖`) and `w` a limit point.
If `G^ℝ w ≠ G^ℝ v`, separate these closed orbits by a `T`-invariant function `f` (§5.4 (v)) and
write `w_n = g_n v_n` with `g_n = k_n t_n k'_n` (`G^ℝ = K T K`); along a subsequence `k_n → k`,
`k'_n → k'`, and `f(k'_n v_n) = f(t_n k'_n v_n) = f(k_n⁻¹ w_n)` tends both to `f(k' v) = 0` and to
`f(k⁻¹ w) = 1`. `K` is compact, so its action on the closed set `M ∩ Hom` is proper, and the orbit
space is Hausdorff (`t2Space_quotient_mulAction_of_properSMul`), locally compact and second
countable.

The character variety has the following API.

- The quotient map from `Hom^red` is continuous, open and `G^ℝ`-invariant.
- Every continuous `G^ℝ`-invariant map from `Hom^red(Γ, G^ℝ)` to a topological space factors uniquely
  through `𝒳(Γ, G^ℝ)`.
- `𝒳(Γ, G^ℝ) ≅ (M ∩ Hom(Γ, G^ℝ))/K`, and two realizations give homeomorphic identifications.
- Every orbit closure contains exactly one closed orbit, of minimal norm.

**Checks.**

- Compact `G^ℝ` (`𝐆(ℝ)` compact, for example `SO(n)` or `U(n)`): every vector is minimal, so
  `𝒳(Γ, G^ℝ) = Hom(Γ, G^ℝ)/G^ℝ`, a compact Hausdorff space; for a closed oriented surface and
  connected `G^ℝ` its points of each topological type are SymplecticGeometry/HamiltonianReduction
  R5's flat connections modulo gauge.
- `G^ℝ = 𝐆(ℝ)` a torus: conjugation is trivial and `𝒳(Γ, G^ℝ) = Hom(Γ^{ab}, G^ℝ)`; for
  `Γ = π₁(Σ_g)` and `G^ℝ = U(1)` it is the torus `U(1)^{2g}`.
- `Γ = ℤ`, `G^ℝ = SL₂(ℝ)`: `𝒳(ℤ, SL₂(ℝ))` is the set of semisimple conjugacy classes; the classes of
  `[[1,1],[0,1]]` and `1` are distinct in `Hom/G^ℝ` but only `1` is a point of `𝒳`, so the naive orbit
  space `Hom(ℤ, SL₂(ℝ))/SL₂(ℝ)` is not Hausdorff while `𝒳` is.
- Finite generation is needed: for `Γ` free of countably infinite rank and `G^ℝ = GL₁(ℝ) = ℝ^×`,
  `Ad` is trivial, so every representation is reductive and conjugation is trivial, and the quotient
  is `(ℝ^×)^ℕ` with the product topology, which is not locally compact (a basic open set restricts
  finitely many coordinates, and its closure projects onto the non-compact `ℝ^×` in every other
  one); for `Γ` free of rank `m` the same computation gives the locally compact `(ℝ^×)^m`, and the
  realization `V = (M_N × M_N)^S` of §5.3 needs the finite generating set `S`.

*Needs:* §5.3; §5.4; §6.7; Mathlib `ProperSMul`, `t2Space_quotient_mulAction_of_properSMul`,
`IsProperMap`.

### 7.2 The affine quotient and the complex comparison

For a field `k` of characteristic zero, a connected reductive `G` over `k` and a finitely generated
`Γ`, define `Hom(Γ, G)//G := Spec O(Hom(Γ, G))^G` with the invariant quotient map. Prove that
`O(G^S)^G → O(Hom(Γ, G))^G` is surjective, so `Hom(Γ, G)//G` is a closed subscheme of the affine
quotient `G^S//G` of ArithmeticGaloisRepresentations §1.11 and is of finite type with the universal
property for invariant morphisms; over an algebraically closed field its points are the closed
orbits, and two points have the same image exactly when their orbit closures meet (Sikora2012 lines
823–837, §11). For `k = ℂ`, prove that the inclusion of the reductive locus induces a homeomorphism
`𝒳(Γ, G(ℂ)) ≅ (Hom(Γ, G)//G)(ℂ)` for the classical topology, and that the quotient map
`Hom(Γ, G(ℂ)) → (Hom(Γ, G)//G)(ℂ)` is the universal Hausdorff quotient of `Hom(Γ, G(ℂ))/G(ℂ)`:
every continuous `G(ℂ)`-invariant map to a Hausdorff space factors uniquely and continuously through
it.

*Proof sketch.* Surjectivity on invariants is `TauCeti.Comodule.Hom.fixedMap_surjective_of_isLinearlyReductive`,
with linear reductivity from ReductiveGroups Layer 6. The fibre statements restrict from `G^S`
because `Hom(Γ, G)` is closed and invariant. For the comparison, realize `Hom(Γ, G(ℂ))` in `V` as in
§5.3 and use the homogeneous generators of `ℂ[V]^G`: on the cone of minimal vectors the quotient map
is proper (a sequence of minimal vectors with bounded invariants and norms tending to infinity
rescales to a unit minimal vector in the null cone, whose orbit closure contains `0`), surjective
(each fibre contains a closed orbit, which contains a minimal vector) and injective modulo `U` (§5.4
(ii) and uniqueness of the closed orbit in a fibre). A proper continuous bijection
`(M ∩ Hom)/U → (Hom//G)(ℂ)` is a homeomorphism, and §7.1 identifies its source with `𝒳`. The quotient
map is a topological quotient map, because its restriction to the minimal vectors is proper and
surjective; and a continuous invariant map to a Hausdorff space is constant on each fibre, since
every point of a fibre has the closed orbit in its closure, so it factors continuously.

**Checks.**

- `Γ = ℤ`, `G = GL_n`: `Hom//G = 𝔸^{n−1} × 𝔾_m` by the characteristic polynomial, and
  `𝒳(ℤ, GL_n(ℂ))` is the set of semisimple classes, matching ArithmeticGaloisRepresentations §1.11's
  `Conj_{GL_n}`.
- `Γ = F₂`, `G = SL₂`: `(Hom//G)(ℂ) ≅ ℂ³` through `(tr ρ(a), tr ρ(b), tr ρ(ab))` (Sikora2012 lines
  844–845, Example 48).
- Characteristic zero is needed for the surjectivity on invariants: over `𝔽₂` the invariants of a
  closed invariant subscheme need not lift, as in ArithmeticGaloisRepresentations §1.11's `C₂` Check.

*Needs:* §4.1; §4.2; §5.3; §5.4; §6.7; §7.1; ArithmeticGaloisRepresentations §1.11; ReductiveGroups
Layer 6; Tau Ceti `TauCeti.Coalgebra.IsLinearlyReductive`,
`TauCeti.Comodule.Hom.fixedMap_surjective_of_isLinearlyReductive`; ComplexComparisonPartII §C-1.1.

### 7.3 Functoriality

Prove that for finitely generated groups `Γ`, `Γ'`, a homomorphism of real reductive data
`φ : (𝐆, G^ℝ) → (𝐆', G'^ℝ)` maps reductive representations to reductive representations and induces
a continuous map `𝒳(Γ, G^ℝ) → 𝒳(Γ, G'^ℝ)`; that a surjection `Γ' ↠ Γ` induces a closed embedding
`𝒳(Γ, G^ℝ) → 𝒳(Γ', G^ℝ)`; and that the restriction to a finite-index subgroup `Γ' ≤ Γ`, finitely
generated by Schreier's lemma, maps reductive representations to reductive representations and
induces a continuous map `𝒳(Γ, G^ℝ) → 𝒳(Γ', G^ℝ)` (Sikora2012 line 268, Corollary 9).

*Proof sketch.* By §6.7 (c), the image of a reductive group under a morphism of algebraic groups is
reductive. For a finite-index `Γ'`, the Zariski closure of `ρ(Γ')` has finite index in that of
`ρ(Γ)` and the same identity component.

**Checks.**

- The inclusion `SO(2) ⊆ SL₂(ℝ)` maps `𝒳(Γ, SO(2))` into `𝒳(Γ, SL₂(ℝ))`.
- Restriction to an arbitrary subgroup is not functorial: for `Γ = F₂` and a Zariski-dense
  `ρ : F₂ → SL₂(ℝ)` with `ρ(a) = [[1,1],[0,1]]`, the restriction to `⟨a⟩ ≅ ℤ` is not reductive.
- `Γ = ℤ/2 ↞ ℤ`: `𝒳(ℤ/2, G^ℝ)` is the closed subset of `𝒳(ℤ, G^ℝ)` of classes of semisimple elements of
  order dividing two.

*Needs:* §6.7; §7.1; Mathlib `Subgroup.fg_of_index_ne_zero`.

### 7.4 The outer action and the mapping class action

Prove that for a finitely generated group `Γ`, `Out(Γ)` acts on `𝒳(Γ, G^ℝ)` by homeomorphisms,
`[φ] · [ρ] = [ρ ∘ φ⁻¹]`, and that this is the restriction of §1.3's action on `Rep(Γ, G^ℝ)`. For
`Γ = π₁(Σ_{g,n}, x)`, prove that a path `σ : x ⟶ x'` induces a homeomorphism
`𝒳(π₁(Σ_{g,n}, x'), G^ℝ) ≅ 𝒳(π₁(Σ_{g,n}, x), G^ℝ)` independent of `σ`, so that `𝒳(Σ_{g,n}, G^ℝ)` is
well defined, and that `Mod^±_{g,n}` acts on it by homeomorphisms through `Ψ_x` (§3.3), compatibly
with these identifications and with §3.5's action on all conjugacy classes (BCGGO2024 lines
2712–2713; LandesmanLitt2024 lines 47–50).

*Proof sketch.* Precomposition with `φ⁻¹` is continuous for the pointwise topology, commutes with
conjugation and preserves reductivity (§6.1); inner automorphisms act trivially on classes (§1.3).
Two choices of `σ` differ by an inner automorphism.

**Checks.**

- For `G^ℝ = GL_r(ℂ)` the action on `𝒳` is the action of §3.5 on semisimple classes
  (LandesmanLitt2024 lines 47–50); the infinite orbit of §3.5's unipotent example lies outside `𝒳`,
  while its semisimplification is the trivial point, fixed by `Mod`.
- `Γ = ℤ`: `Out(ℤ)` acts on `𝒳(ℤ, G^ℝ)` by `[g] ↦ [g⁻¹]`; on `𝒳(ℤ, SO(2)) = SO(2)` it is complex
  conjugation, with fixed points `±1`.
- `g ≥ 2`, `G^ℝ = PSL₂(ℝ)`: the classes of discrete faithful representations of Euler number
  `2 − 2g` form a subset `Fuch` of `𝒳(π₁(Σ_g), PSL₂(ℝ))` in bijection with `Teich(Σ_g)` through
  TeichmullerGeometry §§4.5 and 6.1 (via `ι` of TeichmullerGeometry §4.2), equivariantly for
  `Mod_{g,0}`; the reflection-conjugate classes have Euler number `2g − 2` and correspond to the
  conjugate surface (BCGGO2024 lines 2714–2726, Example 8.2).

*Needs:* §1.3; §3.3; §3.5; §6.1; §7.1; TeichmullerGeometry §4.2; TeichmullerGeometry §4.5;
TeichmullerGeometry §6.1.

### 7.5 Examples and comparisons

The following computed examples pin the definitions of Layer 7 against small groups, each with its
value (Sikora2012 lines 844–845, Example 48).

**Checks.**

- `𝒳(Γ, G^ℝ)` for `Γ` trivial is a point; for `Γ = F_m` and compact `G^ℝ` it is `(G^ℝ)^m/G^ℝ`.
- `𝒳(ℤ, GL₁(ℝ)) = ℝ^×` (two points of `π₀`), `𝒳(ℤ, PSL₂(ℝ))` is the set of elliptic and hyperbolic
  classes together with the identity, with the parabolic classes absent.
- `𝒳(π₁(Σ₁), GL₁(ℂ)) = (ℂ^×)²` and `𝒳(π₁(Σ_{0,3}), SL₂(ℂ)) ≅ ℂ³` (§7.2).

*Needs:* §7.1; §7.2; §7.4.

### Examples

- The Fuchsian locus of §7.4 for genus two; the character variety `𝒳(F₂, SL₂(ℂ)) ≅ ℂ³` with
  `Out(F₂) ≅ GL₂(ℤ)` acting by polynomial automorphisms preserving
  `x² + y² + z² − xyz − 2 = tr ρ([a, b])`.

### Dependencies

Layers 1–6; ArithmeticGaloisRepresentations §1.11; ReductiveGroups Layer 6; ComplexComparisonPartII
§C-1.1; TeichmullerGeometry §§4.2, 4.5, 6.1; Tau Ceti's linearly reductive comodules; Mathlib's proper
actions.

## Downstream consumers

- MappingClassGroupsAndCanonicalRepresentations: the formula `[f] · [ρ] = [ρ ∘ Ψ_x[f]⁻¹]` for the
  action of `Mod_{g,n}` on conjugacy classes and the equivalence of `PMod` and `Mod` finiteness
  (§3.5), the pure group and the pure Birman sequence (§§2.3, 2.5), the free basis of
  `π₁(Σ_{g,n})` (§2.4), and semisimple classes as points of `𝒳(π₁, GL_r(ℂ))` and of `Hom//GL_r`
  (§§7.2, 7.4).
- A nonabelian Hodge and higher Teichmüller roadmap (real forms, `G^ℝ`-Higgs bundles, Fuchsian and
  Hitchin loci) and a Goldman symplectic form roadmap consume §§5.1–5.2 and Layers 6–7 for general
  finitely generated `Γ`; GeometricTopology, Part II (Culler–Shalen theory on `𝒳(π₁ M, SL₂(ℂ))`)
  consumes §§4.1 and 7.2.

## References

- **LandesmanLitt2024.** A. Landesman, D. Litt, *Canonical representations of surface groups*, Ann.
  of Math. 199 (2024); arXiv:2205.15352v4.
- **BCGGO2024.** S. Bradlow, B. Collier, O. García-Prada, P. Gothen, A. Oliveira, *A general Cayley
  correspondence and higher Teichmüller spaces*, Ann. of Math. 200 (2024); arXiv:2101.09377v2.
- **Sikora2012.** A. S. Sikora, *Character varieties*, Trans. Amer. Math. Soc. 364 (2012), 5173–5208;
  arXiv:0902.2589v3.
- **BateMartinRohrle2005.** M. Bate, B. Martin, G. Röhrle, *A geometric approach to complete
  reducibility*, Invent. Math. 161 (2005), 177–218; arXiv:math/0408109v2.
- **BohmLafuente2021.** C. Böhm, R. A. Lafuente, *Real geometric invariant theory*, in *Differential
  Geometry in the Large*, LMS Lecture Note Ser. 463 (2021); arXiv:1701.00643v3.
- **Richardson1988.** R. W. Richardson, *Conjugacy classes of n-tuples in Lie algebras and algebraic
  groups*, Duke Math. J. 57 (1988), 1–35 (cited by its locator).
- **RichardsonSlodowy1990.** R. W. Richardson, P. J. Slodowy, *Minimum vectors for real reductive
  algebraic groups*, J. London Math. Soc. (2) 42 (1990), 409–429 (cited by its locator).
- **FarbMargalit2012.** B. Farb, D. Margalit, *A Primer on Mapping Class Groups*, Princeton (2012)
  (cited by its locator).
- **Knapp2002.** A. W. Knapp, *Lie Groups Beyond an Introduction*, 2nd ed., Birkhäuser (2002) (cited by
  its locator).
- **Goldman1984.** W. M. Goldman, *The symplectic nature of fundamental groups of surfaces*, Adv. Math.
  54 (1984), 200–225 (background for `Hom(π, G)/G`; cited by its locator).
