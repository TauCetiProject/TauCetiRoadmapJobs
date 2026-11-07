# Roadmap: virtual fundamental classes

**Summary.** Build rational intersection theory on Deligne–Mumford stacks and, on top of it, the
Behrend–Fantechi virtual fundamental class. The input is the algebraic-stack layer of
SchemeAndStackFoundations (stacks in groupoids, Deligne–Mumford stacks, quotient stacks, coarse
moduli spaces) and its intersection theory on schemes (cycles, rational equivalence, proper
pushforward, flat pullback, normal cones, Chern classes and refined Gysin maps), together with the
abelian cones of AlgebraicVectorBundles and the module derived categories of Mathlib. Layers 1–5
construct, for a Deligne–Mumford stack `𝓜` of finite type over an arbitrary field `k`, the cycle
groups `Z_k(𝓜)`, the Chow groups `A_k(𝓜)` and `A_k(𝓜)_ℚ` in the sense of Gillet and Vistoli,
flat pullback, proper pushforward (integral along representable morphisms, rational in general),
Vistoli's Gysin homomorphisms for regular local embeddings and his bivariant classes, homotopy
invariance for vector bundles, Chern classes and the intersection product on smooth stacks.
Layer 6 proves the three comparisons: `p_* : A_k(𝓜)_ℚ ≅ A_k(M̄)_ℚ` for a coarse moduli space,
agreement with the Edidin–Graham equivariant Chow groups of a Deligne–Mumford quotient stack, and
the rational degree `∫_𝓜 : A_0(𝓜)_ℚ → ℚ` of a proper stack, with `∫[𝒱_x] = [κ(x) : k]/|Aut(x̄)|`.
Layers 7–10 build cone stacks, the stacks `h¹/h⁰(E^∨)`, the truncated relative cotangent complex
`τ^{≥−1}L_{M/𝔐}` of a morphism of Deligne–Mumford type from a Deligne–Mumford stack to an
algebraic stack of pure dimension, the relative intrinsic normal cone `C_{M/𝔐}`, obstruction
theories and the virtual class `[M]^vir ∈ A_vd(M)_ℚ` with its independence of the global
resolution and its basic properties (no obstructions, locally free obstructions, products,
pullback, functoriality). Layer 11 proves that the relative space of maps from a family of
prestable curves to a smooth quasi-projective variety carries the perfect relative obstruction
theory `(Rπ_* f^*T_X)^∨`, with global resolutions and virtual dimension
`χ(f^*T_X) + dim 𝔅`; for the stack of prestable `n`-pointed curves of genus `g` this is
`∫_β c₁(T_X) + (dim X − 3)(1 − g) + n`, the dimension of Gromov–Witten theory. The end theorems
are the coarse-space comparison, the degree of zero-cycles, the intrinsic normal cone of pure
dimension `dim 𝔐`, the equivalent characterisations of an obstruction theory, the
virtual fundamental class with its properties, and the obstruction theory of spaces of maps from
curves.

## Scope and ownership

This roadmap owns:

- integral closed substacks, the dimension of a Deligne–Mumford stack through étale charts, the
  function field and the generic stabiliser order `e(𝒱)` of an integral stack, and Vistoli's
  rational degree of a separated dominant morphism of integral stacks (Layer 1);
- the Gillet–Vistoli cycle groups, orders of rational functions along codimension-one integral
  substacks, rational equivalence and the integral and rational Chow groups of a Deligne–Mumford
  stack of finite type over a field, with their comparison with the scheme-level groups (Layer 2);
- flat pullback, integral pushforward along proper representable morphisms, rational pushforward
  along proper morphisms, the push–pull formula, the localisation sequence and the exterior
  product (Layer 3);
- local embeddings of Deligne–Mumford stacks, their normal cones and normal sheaves, Vistoli's
  Gysin homomorphisms for regular local embeddings, his canonical rational equivalence, and the
  bivariant classes with rational coefficients through which Gysin maps act on Chow groups of
  stacks (Layer 4);
- homotopy invariance for vector bundles on Deligne–Mumford stacks, Chern classes of vector
  bundles as bivariant classes, the self-intersection formula and the intersection product on
  smooth separated Deligne–Mumford stacks (Layer 5);
- the comparison with coarse moduli spaces, with the Edidin–Graham groups of a Deligne–Mumford
  quotient stack, and the degree of zero-cycles on a proper stack (Layer 6);
- cones and cone stacks over a Deligne–Mumford stack, the small étale site of a Deligne–Mumford
  stack with its structure sheaf and complexes of `O`-modules, Condition `(⋆)`, and the stacks
  `h¹/h⁰(E^∨)` (Layer 7);
- the truncated relative cotangent complex of a morphism of Deligne–Mumford type, the relative
  intrinsic normal sheaf and the relative intrinsic normal cone (Layer 8);
- obstruction theories in the sense of Behrend–Fantechi and their deformation-theoretic
  characterisation (Layer 9);
- virtual fundamental classes and their properties (Layer 10);
- the obstruction theory of relative spaces of maps from families of prestable curves to a smooth
  quasi-projective variety, with global resolutions and the virtual dimension (Layer 11).

Material taken from other owners:

- Stacks in groupoids, 2-fibre products, algebraic and Deligne–Mumford stacks, representable
  morphisms and their properties, the topological space `|𝓜|`, inertia, separated and proper
  morphisms of stacks, presentations, quotient stacks, quasi-coherent modules on stacks, coarse
  moduli spaces and the Keel–Mori theorem are SchemeAndStackFoundations §§1.18–1.23. The small
  étale site of an algebraic space is §1.10 there; Layer 7 here extends its construction to
  Deligne–Mumford stacks.
- Chow groups of schemes locally of finite type over a field, proper pushforward, flat pullback,
  the localisation sequence and homotopy invariance on schemes, normal cones and refined Gysin
  maps for regular immersions of schemes, Chern classes and the projective bundle theorem, and
  the intersection product on smooth schemes are SchemeAndStackFoundations §§5.1–5.6. Every
  stack-level construction here restricts to them on schemes, and the schemes-only statements are
  not repeated.
- Relative spectra of quasi-coherent algebras, the abelian cone `Spec Sym F` of a quasi-coherent
  module and the total space of a finite locally free sheaf, on schemes, are AlgebraicVectorBundles
  L1A, L2A and L2B.
- The cotangent complex of a ring map, its naive truncation and the affine obstruction class for
  square-zero lifts are DerivedModuleAlgebra §§0.7, 0.13 and 0.25; derived pullback and pushforward
  for morphisms of ringed sites and K-injective replacements are EnhancedDerivedSheaves §0.2 and
  E1.4.
- Coherent cohomology of proper curve families over schemes, cohomology and base change, the
  relative dualising sheaf of a nodal family, relative ampleness and prestable families are
  StableReduction Layers 2–3; relative dualising complexes and Serre duality over schemes are
  SchemeAndStackFoundations §2.20.
- Equivariant Chow groups `A^G_*(X)` by Totaro's approximation, their operations and the
  equivariant intersection product are EquivariantIntersectionTheory §§2.1–2.2.

Boundaries:

- Points of algebraic stacks beyond `|𝓜|`, stabiliser group spaces at a point and residual
  gerbes are not used. Zero-cycles are indexed by the integral closed substacks of dimension zero
  (Layer 6.3); their identification with residual gerbes belongs to the roadmap that owns
  residual gerbes and is a consumer of this one.
- Chow groups of Artin stacks in the sense of Kresch, the removal of the global-resolution
  hypothesis from the virtual class (Kresch 1999, Theorem 6.2.1) and the unconditional comparison
  with equivariant Chow groups (Kresch 1999, Theorem 2.1.12 (iii)) need Kresch's theory and are
  not part of this roadmap. Virtual classes are constructed here under the global-resolution
  hypothesis of Behrend–Fantechi, which Layer 11 verifies for spaces of maps from curves.
- The full (untruncated) cotangent complex of a morphism of schemes, algebraic spaces or
  algebraic stacks, and virtual structure sheaves, are not built. Only the truncation
  `τ^{≥−1}L_{M/𝔐}` of a morphism of Deligne–Mumford type enters the theory, and it is built here
  from local embeddings.
- The Artin stack of prestable curves, the moduli stack `M̄_{g,n}(X, β)` of stable maps, its
  properness, Gromov–Witten invariants and their axioms, torus localisation and cosection
  localisation of virtual classes are downstream consumers. Layer 11 is stated for an arbitrary
  base algebraic stack carrying a family of prestable curves.
- The symplectic and topological virtual classes (GromovWittenTheory, AnalyticStableMaps,
  ImplicitAtlases) are different objects; their comparison with the algebraic class is not part
  of this roadmap.

## Conventions

1. **Base field and stacks.** `k` is an arbitrary field; no characteristic, perfectness or
   algebraic closedness is assumed except on the statement that names it. Stacks, morphisms and
   2-morphisms are those of SchemeAndStackFoundations §§1.18–1.20 over the big fppf site of
   schemes in a fixed universe. A *DM stack over `k`* is a stack in groupoids with
   `IsDeligneMumford`, a morphism to `Spec k`, and of finite type over `Spec k` in the sense of
   SchemeAndStackFoundations §1.20 (locally of finite type through a smooth atlas, and
   quasi-compact). Morphisms of DM stacks over `k` are 1-morphisms over `Spec k`. Schemes and
   algebraic spaces of finite type over `k` are DM stacks over `k` through
   `IsDeligneMumford.ofSpace`. An *algebraic `k`-stack* is an algebraic stack locally of finite
   type over `k`; it has *pure dimension `m`* if `dim_x 𝔐 = m` at every point `x ∈ |𝔐|`
   (stacks-properties Definition 12.2, tag 0AFN, line 1404). Witness: `B𝔾_m` over `k` has pure dimension `−1`
   (stacks-properties Example 12.5, line 1421), so `m` can be negative.

2. **Representable morphisms.** "Representable" without qualification means representable by
   algebraic spaces (SchemeAndStackFoundations §1.19). A morphism `f : ℱ → 𝒢` is *representable by
   schemes* if `ℱ ×_𝒢 T` is a scheme for every scheme `T → 𝒢`. A *local embedding* is a morphism of
   DM stacks that is representable by schemes, unramified and of finite type; this is Vistoli's
   notion, whose "representable" means representable by schemes (vistoli1989 lines 206–208 and
   (1.19), line 485). Closed immersions, zero sections of vector bundles and diagonals of separated
   DM stacks are local embeddings.

3. **Proper covers.** A *proper cover* of a DM stack `𝓜` is a proper surjective morphism `X → 𝓜`
   from a scheme of finite type over `k`. Rational pushforward along non-representable morphisms
   and the action of bivariant classes on Chow groups of stacks are stated for stacks admitting a
   proper cover; separated DM stacks of finite type admit one (Layer 1.1). This is Vistoli's
   standing hypothesis (vistoli1989 lines 887–890).

4. **Grading and coefficients.** Cycles and Chow groups are graded by dimension: `Z_k`, `A_k`.
   On a smooth separated DM stack of pure dimension `n`, `A^p := A_{n−p}`; the two gradings are
   never mixed on a singular stack. `A_k(𝓜)_ℚ := A_k(𝓜) ⊗_ℤ ℚ`. A statement is integral exactly
   when its source proves it integrally: cycles, rational equivalence, flat pullback, pushforward
   along representable proper morphisms, the localisation sequence and Gysin maps with scheme
   targets are integral; pushforward along non-representable morphisms, degrees, bivariant classes
   acting on stacks, homotopy invariance on stacks, Chern classes on stacks, the coarse-space
   comparison and virtual classes are rational. Witness: `A_0([𝔸¹/μ₂]) ≅ ℤ/2` while
   `A_0([𝔸¹/μ₂])_ℚ = 0 = A_0(𝔸¹)_ℚ` (Layer 2.3, Checks), so the coarse-space comparison is false
   integrally.

5. **Degrees and stabilisers.** For an integral DM stack `𝒱`, `e(𝒱)` is the order of the
   automorphism group of a geometric point over the generic point of `|𝒱|`, equivalently the
   generic degree of the inertia `I_𝒱 → 𝒱` (vistoli1989 line 422). The degree of a separated
   dominant morphism of integral stacks is Vistoli's rational degree (Layer 1.5), with
   `deg(ℱ/𝒢) = (e(𝒢)/e(ℱ))·[k(ℱ) : k(𝒢)]` and `[E : K] = 0` for an infinite extension. Witness:
   `deg(BG/Spec k) = 1/|G|` and `deg(Spec k/BG) = |G|` for a finite constant group `G`, and the
   composite `Spec k → BG → Spec k` has degree `|G| · (1/|G|) = 1`.

6. **Cones.** For a quasi-coherent module `F`, `C(F) := Spec Sym F`, so that `C(F)(T) =
   Hom(F_T, O_T)`; this is AlgebraicVectorBundles' `linearSpec`. A vector bundle with sheaf of
   sections `E` is `C(E^∨)`, AlgebraicVectorBundles' `totalSpace E` (behrend-fantechi1997 lines
   229–236). The normal sheaf of a closed immersion with ideal `I` is the abelian cone
   `N = C(I/I²)`, and for a regular immersion it is the vector bundle with sheaf of sections
   `(I/I²)^∨`, as in SchemeAndStackFoundations §5.5. Witness: for the zero section of
   `totalSpace L` the normal bundle is `totalSpace L`, and on `ℙ¹` the cone `C(O(1))` is the
   total space of `O(−1)`, whose `c₁ ∩ [ℙ¹]` has degree `−1`.

7. **Complexes.** Complexes are cohomologically indexed. `E` *perfect of amplitude `[−1, 0]`*
   means étale-locally isomorphic in the derived category to `[E^{−1} → E^0]` with `E^i` locally
   free of finite rank (behrend-fantechi1997 lines 175–177). For such `E`, `rk E := rk E^0 − rk
   E^{−1}` (locally constant), `E^∨` sits in degrees `[0, 1]`, `E_i := C(E^{−i})` is the vector
   bundle with sheaf of sections `(E^{−i})^∨`, `h¹/h⁰(E^∨) ≅ [E_1/E_0]`, and the *obstruction
   sheaf* is `Ob := h¹(E^∨)`. The virtual dimension relative to a base of pure dimension `m` is
   `vd = m + rk E`. Witness: on `M = ℙ¹` over `𝔐 = Spec k`, `E = [O(1) --0--> Ω_{ℙ¹}]` with the
   projection to `Ω_{ℙ¹}` is a perfect obstruction theory with `rk E = 1 − 1 = 0`,
   `Ob = O(−1)` and `deg [ℙ¹]^vir = deg c₁(O(−1)) ∩ [ℙ¹] = −1` (Layer 10.4, Checks).

8. **Relative setting.** In Layers 8–11, `𝔐` is an algebraic `k`-stack of pure dimension `m` and
   `f : M → 𝔐` is a morphism of *Deligne–Mumford type*: its relative diagonal `M → M ×_𝔐 M` is
   unramified (behrend-fantechi1997 lines 1645–1651). The source `M` is a DM stack over `k` with
   affine diagonal; for virtual classes `M` is moreover separated, which implies affine diagonal
   (a separated DM stack has finite, hence affine, diagonal). The absolute case is `𝔐 = Spec k`,
   `m = 0`.

9. **Names.** Proposed Lean names live under the namespace TauCetiRoadmap.VirtualFundamentalClasses,
   in the sub-namespaces DMStack, StackChow, Gysin, Cone, ConeStack, Cotangent, ObstructionTheory,
   Virtual and MapsFromCurves; StackChow is distinct from SchemeAndStackFoundations' Chow. In the
   prose below objects are written mathematically.

## Exact supplier contracts

### From Mathlib

- `AlgebraicCycle` and `AlgebraicCycle.map` (`Mathlib/AlgebraicGeometry/AlgebraicCycle/Basic.lean`):
  cycles on a scheme as locally finitely supported functions `X → R`, and the pushforward along a
  quasi-compact morphism with residue-degree weights. Layer 2.4 compares the stack cycle groups
  of a scheme with these through SchemeAndStackFoundations §5.1.
- `AlgebraicGeometry.Scheme.ord` (`Mathlib/AlgebraicGeometry/OrderOfVanishing.lean`): the order of
  an element of the function field of a locally Noetherian integral scheme at a point; its junk
  value is `0` when the point does not have coheight `1` or the function is `0`. Layer 2.2
  evaluates it only at points of coheight one and on nonzero functions.
- `SheafOfModules` and its `Abelian` instance (`Mathlib/Algebra/Category/ModuleCat/Sheaf/Abelian.lean`):
  sheaves of modules over a sheaf of rings on a small site form an abelian category. `DerivedCategory`
  and `HasDerivedCategory` (`Mathlib/Algebra/Homology/DerivedCategory/Basic.lean`) give its derived
  category, the carrier of complexes on the small étale site in Layer 7.3.
- `Algebra.Extension.cotangentComplex`, `Algebra.Extension.toKaehler`,
  `Algebra.Extension.exact_cotangentComplex_toKaehler` and `Algebra.H1Cotangent`
  (`Mathlib/RingTheory/Extension/Cotangent/Basic.lean`): the naive cotangent complex
  `I/I² → Ω_P ⊗ S` of a presentation, its exactness at `Ω_S`, and `H¹`; Layer 8 compares the
  local presentations of `τ^{≥−1}L_{M/𝔐}` with it.
- `Algebra.FormallySmooth` (`Mathlib/RingTheory/Smooth/Basic.lean`), whose defining condition at
  the pin is that `Ω_{A/R}` is projective and `H¹(L_{A/R})` vanishes, with
  `Algebra.FormallySmooth.iff_split_injection` and `Algebra.FormallySmooth.iff_comp_surjective`
  (same file): the smoothness criteria behind the no-obstruction statement of Layer 10.4.
- `derivationToSquareZeroEquivLift` (`Mathlib/RingTheory/Derivation/ToSquareZero.lean`): lifts
  along a square-zero extension form a torsor under derivations; the affine torsor statement of
  Layer 9.
- `AlgebraicGeometry.Scheme.smallEtaleTopology` (`Mathlib/AlgebraicGeometry/Sites/Etale.lean`):
  the small étale site of a scheme, the model for Layer 7.3.
- `CategoryTheory.Limits.CategoricalPullback`
  (`Mathlib/CategoryTheory/Limits/Shapes/Pullback/Categorical/Basic.lean`): the carrier of the
  2-fibre products used throughout, through SchemeAndStackFoundations §1.18.

### From Tau Ceti

No Tau Ceti declaration is consumed directly. The Tau Ceti inputs of the scheme-level theory,
`TauCeti.AlgebraicGeometry.LineBundleClass` (`TauCeti/AlgebraicGeometry/LineBundle/Class.lean`)
and `CartierDivisor` (`TauCeti/AlgebraicGeometry/CartierDivisor/Basic.lean`), enter through
SchemeAndStackFoundations §§5.1 and 5.3.

### From TauCetiRoadmap.SchemeAndStackFoundations

- §0.7: the local dimension `topologicalKrullDimAt` and `dimension_theory_finiteType` (for `X`
  locally of finite type over `k`, `dim_x X = dim O_{X,x} + trdeg_k κ(x)`, the maximum of
  `trdeg_k κ(ξ)` over the generic points `ξ` of the components through `x`), for the dimension of a
  DM stack through étale charts in Layer 1.3.
- §1.1: `qcoh_fpqc_descent` (quasi-coherent modules and their morphisms descend along fpqc
  coverings, in particular along smooth and étale surjections), for the relative cotangent sheaf
  `Ω_{W/𝔐}` of Layer 8.1.
- §1.10: `smallEtale`, `structureSheaf` and `smallEtale_map` for algebraic spaces; Layer 7.3
  extends the same construction to DM stacks and restricts to it on algebraic spaces.
- §1.18: `Stacks.StackInGroupoids`, `twoFiberProduct` with its 2-universal property, and the
  site-level stackification `Stack.stackification`.
- §1.19: `IsRepresentableBySpaces`, `RepresentableProperty`, `IsAlgebraicStack`,
  `IsDeligneMumford` with `IsDeligneMumford.iff_unramified_diagonal` and `IsDeligneMumford.ofSpace`.
- §1.20: `inertia`, `automorphismGroup`, `SmoothLocal`, `IsSeparatedStack`, `Stacks.points` with
  its atlas independence and functoriality, finite type, `UniversallyClosedStack`,
  `IsProperStack`, and `stack_presentation`.
- §1.21: the generic quotient stack `Stack.quotient` of a groupoid in sheaves on a site, used for
  `[C/E]` and `h¹/h⁰`; `actionQuotient G X` and `quotientStack_algebraic`.
- §1.22: `Stacks.QCoh` with `QCoh.pullback` and `QCoh.presentationEquiv`.
- §1.23: `IsCoarseModuliSpace` and `keel_mori`.
- §2.9: `bigSheaf` over `bigStructureSheaf` (the module `F^a : T ↦ Γ(T, h^*F)` on the big site
  attached to a quasi-coherent `F`, a sheaf for the fppf topology, with carrier Mathlib's
  `SheafOfModules`), the module carrier of the big-site complexes `E_fl` and `E^∨` of Layer 7.3.
- §§2.6 and 2.10: `serre_affineness_criterion` (a quasi-coherent module on an affine scheme has no
  higher cohomology) and `quasiCoherent_topology_comparison` (Zariski, étale and fppf cohomology of a
  quasi-coherent module agree), for the étale-local comparison of global resolutions in Layer 10.1.
- §2.20: relative dualising complexes and Serre duality for flat proper morphisms of schemes, for
  the duality of Layer 11.2.
- §3.3: degrees of locally free sheaves on proper curves, defined so that `χ(E) = deg E + r·χ(O)`.
- §4.1: thickenings and the lifting criterion for smooth morphisms of schemes, for Layer 11.4.
- §5.1: `Chow.cyclesOfDimension`, `Chow.RatEquiv`, `Chow.ChowGroup`, `Chow.cycleClass`, and the
  degree of zero-cycles on proper schemes.
- §5.2: proper pushforward, flat pullback, the push–pull formula `flatPullback_properPushforward`,
  `localization_exact` and `chow_affine_bundle` on schemes.
- §5.4: projective bundles, `Chow.chernClass`, the splitting principle and Whitney sum.
- §5.5: `normalCone`, `conormal`, `normalBundle` with `conormal_regular` and
  `normalCone_eq_normalBundle` for regular immersions, `Chow.IsRegularImmersion`, `Chow.gysin` with
  its compatibilities (`pushforward_compat`, `pullback_compat`, `excess_intersection`,
  `functoriality`, `gysin_self_intersection`), `homotopy_invariance`, and `Chow.externalProduct`.
- §5.6: `Chow.intersect` and `Chow.graphPullback` on smooth schemes.

### From TauCetiRoadmap.AlgebraicVectorBundles

- L0B: `isFiniteLocallyFree` and `FiniteLocallyFreeSheafOfRank`, the locally free sheaves of
  finite rank and their rank.
- L1A: `relativeSpec` with `relativeSpecUniversalProperty` and `relativeSpecBaseChangeIso`.
- L2A: `gradedSymmetricAlgebra`, `linearSpec` and `linearSpecBaseChangeIso` (abelian cones on
  schemes).
- L2B: `totalSpace`, `totalSpaceHomEquiv` and `totalSpaceBaseChangeIso` (vector bundles on
  schemes).

### From TauCetiRoadmap.DerivedModuleAlgebra

- §0.7: the naive truncation `τ_{≥−1}L_{B/A}` represented by `[J/J² → Ω_{P/A} ⊗_P B]` for a
  polynomial presentation, and `Algebra.CotangentComplex.homologyOneIso`.
- §0.13: for a regular quotient of a smooth algebra, the two-term complex computes `L_{B/A}`.
- §0.25: the obstruction to lifting an algebra map along a square-zero extension lies in
  `Ext¹(L_{B/A}, J)` and lifts form a torsor under `Ext⁰` (`Algebra.CotangentComplex.extensionObstruction`).

### From TauCetiRoadmap.EnhancedDerivedSheaves

- §0.2 and E1.2: K-injective and K-flat replacements on ringed sites.
- E1.4: derived pullback, derived pushforward and internal Hom for morphisms of ringed sites, with
  the adjunction between pullback and pushforward; used for the morphism of small étale sites of a
  representable morphism in Layer 11.2.

### From TauCetiRoadmap.StableReduction

- Layer 2: coherent pushforward `Rⁱf_*` for proper morphisms of locally Noetherian schemes,
  cohomology and base change, the relative dualising sheaf `ω_{X/S}` of a nodal (Gorenstein)
  family with its base-change isomorphisms, relative ampleness and the openness of fibrewise
  ampleness.
- Layer 3: `PrestableFamily` (proper flat at-worst-nodal curves of pure relative dimension one
  with geometrically connected fibres) and its pullback API, and arithmetic genus.

### From TauCetiRoadmap.EquivariantIntersectionTheory

- Conventions 1, 4 and 5 (smooth affine `G` over `k`, quasi-projective `X` with a `G`-linearised
  ample invertible sheaf) and §2.1: `A^G_i(X) = A_{i+l−g}(X ×^G U)` for a representation `V` of
  dimension `l` and a free open `U ⊆ V` with complement of large codimension, independent of
  `(V, U)`.
- §2.2: flat pullback, proper pushforward and, for smooth `X`, the equivariant intersection
  product, all computed on the mixed spaces `X ×^G U`.

## How to read the build

Layers 1–3 are the cycle theory: integral substacks, dimension and Vistoli's rational degree
(Layer 1), cycles, divisors of rational functions and Chow groups (Layer 2), flat pullback,
pushforward and exterior products (Layer 3). Layer 4 builds local embeddings, their normal cones,
Vistoli's Gysin homomorphisms with scheme targets, his canonical rational equivalence and the
bivariant classes that make Gysin maps act on Chow groups of stacks. Layer 5 proves homotopy
invariance, so that the Gysin map of a zero section is the inverse of flat pullback, and builds
Chern classes and intersection products. Layer 6 proves the three comparisons (coarse spaces,
quotient stacks, degrees of zero-cycles); it uses Layers 1–5 and is independent of Layers 7–11.
Layer 7 uses only 4.1 (cones) and 1.3 (for the dimension of a cone stack in 7.2) from Layers 1–6:
abelian hulls, cone stacks, the small étale site and `h¹/h⁰`. Layer 8 builds the truncated relative cotangent complex
and the relative intrinsic normal cone; its pure-dimensionality uses Layer 1.3. Layer 9 defines
obstruction theories. Layer 10 combines Layers 4–5 and 8–9 into the virtual class and its
properties. Layer 11 applies Layers 9–10 to spaces of maps from curves.

Layers 1, 4.1 and 7.3 can start at once. Layer 4.4 (Vistoli's rational equivalence) is the
longest single target and is needed only for 4.3's rational-equivalence statement, for the
regular-immersion case of 10.6 and for 10.7.

## Layer 1: integral substacks, dimension and degrees

Throughout, `𝓜`, `ℱ`, `𝒢` are DM stacks over `k` (Convention 1).

### 1.1 Proper covers

Prove that a separated DM stack `𝓜` over `k` admits a proper cover `g : X → 𝓜` which is moreover
generically finite, with `X` quasi-projective over `k` (deligne-mumford1969 Theorem 4.12, line
1012; vistoli1989 lines 582–584). Prove that if `𝓜` is integral, a proper cover can be chosen
with `X` integral and `X → 𝓜` generically finite (vistoli1989 Lemma 1.10, line 299), and that the
composite of a proper cover with a proper representable surjection, and the base change of a
proper cover along a morphism of DM stacks, are proper covers. *Needs:* SchemeAndStackFoundations
§1.20 (`IsProperStack`, `IsSeparatedStack`, `Stacks.points`), §1.19.

**Checks.**

- For a finite constant group `G`, `Spec k → BG` is finite étale of degree `|G|`, hence a proper
  cover of `BG`; a definition requiring the cover to be birational would exclude it, since `BG`
  has no open substack that is a scheme when `G ≠ 1`.
- The identity of a scheme of finite type is a proper cover, including for the non-separated line
  with a doubled origin, so separatedness is sufficient and not necessary.
- Non-example: over `𝔸¹_k` let `G → 𝔸¹` be the group scheme obtained by doubling the origin of the
  trivial group scheme, so that its fibre over `0` is `ℤ/2` and over `t ≠ 0` is trivial. `BG` is a
  DM stack with quasi-finite non-finite inertia. A proper `X → BG` from a scheme pulls the
  universal torsor back to a `G_X`-torsor `P → X` that is proper over `𝔸¹`, hence separated over
  `X`; but the unit section of `G` is not closed, so no `G`-torsor over a scheme meeting the fibre
  over `0` is separated. Hence `BG` has no proper cover, and the hypothesis of Convention 3 is not
  automatic.

### 1.2 Closed substacks and integral substacks

Define a closed substack of `𝓜` as a morphism `i : 𝒵 → 𝓜` that is representable by closed
immersions (`RepresentableProperty` with the property "closed immersion of algebraic spaces"),
taken up to equivalence over `𝓜` (stacks-properties Definition 9.9, tag 04YM, line 853; vistoli1989
(1.5), line 232). Prove:

- for a presentation `[U/R] → 𝓜` with `U` a scheme étale over `𝓜`, closed substacks of `𝓜`
  correspond bijectively to closed subschemes `Z ⊆ U` with `s⁻¹(Z) = t⁻¹(Z)` (stacks-properties
  Lemma 9.11, tag 0507, line 872);
- `|i|` is a homeomorphism onto a closed subset of `|𝓜|` (Lemma 9.6, tag 0H20, line 798);
- for every closed subset `T ⊆ |𝓜|` there is a unique reduced closed substack with underlying set
  `T`, the reduced induced closed substack (Lemma 10.1, tag 0509, line 1073, and Lemma 10.2, tag
  050A, line 1092), and a morphism from a reduced stack factors through a closed substack iff it
  does so on underlying sets (Lemma 10.3, tag 050B, line 1100);
- `|𝓜|` is a Noetherian topological space.

Define `𝒵` to be *integral* if it is reduced and `|𝒵|` is irreducible (vistoli1989 (1.6), lines
245–250). Prove that `𝒵 ↦ |𝒵|` is a bijection from integral closed substacks of `𝓜` to irreducible
closed subsets of `|𝓜|`, and that every closed substack has finitely many irreducible components,
each the support of an integral closed substack. API:

- the intersection and the reduced union of two closed substacks, through the correspondence with
  invariant closed subschemes of `U`;
- base change: for `g : 𝒩 → 𝓜` and a closed substack `𝒵 ⊆ 𝓜`, `𝒵 ×_𝓜 𝒩 → 𝒩` is a closed
  substack with underlying set `|g|⁻¹|𝒵|`;
- the image of an integral closed substack `𝒱 ⊆ ℱ` under a proper morphism `f : ℱ → 𝒢` is the
  reduced induced closed substack on `|f|(|𝒱|)`, which is closed and irreducible, hence integral
  (vistoli1989 (1.7), line 254);
- for a scheme `X`, closed substacks are closed subschemes and integral closed substacks are
  integral closed subschemes.

*Needs:* SchemeAndStackFoundations §§1.19–1.20 (`RepresentableProperty`, `Stacks.points`,
`stack_presentation`).

**Checks.**

- In `BG` over an algebraically closed field, with `G` finite constant, `|BG|` is a point and the
  only nonempty closed substack is `BG`. The morphism `Spec k → BG` has closed image in `|BG|` but
  is not a closed substack: `Spec k ×_BG Spec k = G` is not a closed subscheme of `Spec k` when
  `G ≠ 1`. A definition of closed substack by closed image would accept it.
- For `μ₂` acting on `𝔸¹ = Spec k[x]` by `x ↦ −x` (`char k ≠ 2`), closed substacks of `[𝔸¹/μ₂]` are
  the `μ₂`-stable closed subschemes of `𝔸¹`: `V(x² − 1)` is one and is integral (one orbit), while
  `V(x − 1)` is not stable and defines none.
- The closed substack `[V(x²)/μ₂]` of `[𝔸¹/μ₂]` is not reduced; its reduction is
  `[V(x)/μ₂] = Bμ₂`, and both have the same one-point underlying set.

### 1.3 Dimension

Define, for `x ∈ |𝓜|`, `dim_x 𝓜 := dim_u U` for any étale morphism `U → 𝓜` from a scheme and any
`u ∈ U` over `x`, and `dim 𝓜 := sup_x dim_x 𝓜`. Prove independence of `(U, u)`; this is the
general dimension of an algebraic stack at a point, `dim_u U − dim_{e(u)} R_u`, specialised to an
étale presentation, for which the fibre `R_u` is étale over `κ(u)` and has dimension `0`
(stacks-properties Lemma 12.1, tag 0AFM, line 1374; Definitions 12.2–12.3, tags 0AFN and 0AFP,
lines 1404–1417). Define *pure dimension `n`*. Prove:

- for an integral `𝒱` of finite type over `k`, `dim 𝒱 = dim U` for any étale `U → 𝒱` from a
  nonempty integral scheme, and `dim 𝒱 = trdeg_k k(𝒱)` (with 1.4);
- for a closed substack, `dim 𝒵 ≤ dim 𝓜`; an integral closed substack of an integral `𝒱` with the
  same dimension is `𝒱`;
- for a flat morphism `f : ℱ → 𝒢` of relative dimension `d` (every fibre over a field-valued point
  of `𝒢` is a DM stack of pure dimension `d` or empty), `dim_x ℱ = dim_{f(x)} 𝒢 + d`;
- for a finite étale group `G` acting on `X`, `dim [X/G] = dim X`.

*Needs:* 1.2; SchemeAndStackFoundations §§1.19–1.20; Mathlib's dimension of schemes
(`topologicalKrullDim`) as used in SchemeAndStackFoundations §0.7.

**Checks.**

- `dim BG = 0` for a finite étale group `G`, and `dim [𝔸¹/μ₂] = 1`.
- For a smooth presentation the correction term matters: `Spec k` with the smooth atlas
  `𝔸¹ → Spec k` gives `dim_u 𝔸¹ = 1` and `dim R_u = 1`, so `dim = 0`; the uncorrected definition
  `dim_u U` would give `1`. For étale atlases the correction is `0`.
- `B𝔾_m` is algebraic and not DM; its dimension is `−1`. DM stacks of finite type over `k` have
  dimension `≥ 0` or are empty, so negative values occur only for the base `𝔐` of Layers 8–11.

### 1.4 Function fields and the generic stabiliser

For an integral `𝒱`, define its function field `k(𝒱)` as the colimit, over nonempty open
substacks `𝒰 ⊆ 𝒱`, of the rings of morphisms `𝒰 → 𝔸¹` (vistoli1989 (1.14), line 347). Prove that
it is a field, finitely generated over `k`, and that for an étale `U → 𝒱` from an integral scheme,
`k(𝒱) → k(U)` is a finite separable extension identifying `k(𝒱)` with the rational functions on
`U` whose two pullbacks to `U ×_𝒱 U` agree; for a finite étale `G` acting on an integral `X`,
`k([X/G]) = k(X)^G` (vistoli1989 lines 351–353). A dominant morphism `f : ℱ → 𝒢` of integral stacks
induces `f^* : k(𝒢) → k(ℱ)`.

Define `e(𝒱)` as the order of the automorphism group of a geometric point over the generic point
of `|𝒱|`. Prove that there is a dense open `𝒰 ⊆ 𝒱` over which the inertia `I_𝒱 → 𝒱` is finite
étale of constant degree `e(𝒱)`, so that `e(𝒱) = deg(I_𝒱/𝒱)` (vistoli1989 (1.13), line 337, and
line 422), and that `e(𝒱) = 1` iff `𝒱` has a dense open substack that is an algebraic space
(vistoli1989 lines 424–425; SchemeAndStackFoundations `setoid_criterion`). *Needs:* 1.2, 1.3;
SchemeAndStackFoundations §1.20 (`inertia`, `automorphismGroup`, `setoid_criterion`).

**Checks.**

- `e(BG) = |G|` for `G` finite constant; `k(BG) = k`.
- `e([𝔸¹/μ₂]) = 1` and `k([𝔸¹/μ₂]) = k(x)^{μ₂} = k(x²)`, while the closed substack `Bμ₂` has
  `e = 2`; the generic stabiliser is not the largest stabiliser.
- Non-neutral gerbe: over `ℝ`, let `ℤ/4` act on `Spec ℂ` through `ℤ/4 → ℤ/2 = Gal(ℂ/ℝ)`. Then
  `𝒱 = [Spec ℂ/(ℤ/4)]` is integral with `k(𝒱) = ℂ^{ℤ/4} = ℝ` and `e(𝒱) = 2`, the order of the
  kernel. A definition of `e` as the order of the acting group would give `4`.

### 1.5 The degree of a dominant morphism

For a separated dominant morphism `f : ℱ → 𝒢` of integral DM stacks over `k`, define
`deg(ℱ/𝒢) ∈ ℚ_{≥0}` as follows (vistoli1989 (1.15), lines 365–370). If `f` is representable, it is
`deg(ℱ ×_𝒢 V / V)` for an étale `V → 𝒢` from an integral scheme, the generic rank of the pushforward
of the structure sheaf when `ℱ ×_𝒢 V → V` is generically finite, and `0` otherwise. In general it
is `deg(U/𝒢)/deg(U/ℱ)` for an étale `U → ℱ` from an integral scheme. Prove:

- the definition is independent of choices and multiplicative,
  `deg(ℱ/ℋ) = deg(ℱ/𝒢) · deg(𝒢/ℋ)` (vistoli1989 (1.16), line 379);
- `deg(ℱ/𝒢) = (e(𝒢)/e(ℱ)) · [k(ℱ) : k(𝒢)]`, with `[E : K] = 0` when `E/K` is infinite (vistoli1989
  (1.17), line 428);
- `deg(ℱ/𝒢) > 0` iff `dim ℱ = dim 𝒢`, and for `f` representable `deg(ℱ/𝒢) ∈ ℤ`;
- invariance under dominant base change: for a dominant morphism `𝒢' → 𝒢` of integral stacks with
  `ℱ ×_𝒢 𝒢'` integral, `deg(ℱ ×_𝒢 𝒢'/𝒢') = deg(ℱ/𝒢)` (vistoli1989 lines 363–364 for schemes,
  extended by 1.17).

*Needs:* 1.4; SchemeAndStackFoundations §1.20.

**Checks.**

- `deg(BG/Spec k) = 1/|G|` and `deg(Spec k/BG) = |G|` for `G` finite constant (vistoli1989 lines
  372–376); by 1.17, `1/|G| = (1/|G|)·[k : k]` and `|G| = (|G|/1)·[k : k]`. The definition
  `deg = [k(ℱ) : k(𝒢)]` without the stabiliser ratio gives `1` in both cases and violates
  multiplicativity for `Spec k → BG → Spec k` together with the representable degree `|G|`.
- `𝔸¹ → Spec k` has degree `0`, since `[k(t) : k] = ∞`.
- For the coarse map `[𝔸¹/μ₂] → 𝔸¹`, `x ↦ x²`, the degree is `(1/1)·[k(x²) : k(x²)] = 1`, and
  `Bμ₂ → {0}` has degree `1/2`.
- Characteristic `p`: let `ℤ/p` act on `Spec k[x, y]` by `y ↦ y + x`, with invariant ring
  `k[x, z]`, `z = y^p − x^{p−1}y`. On `𝒱 = [V(x)/(ℤ/p)] ≅ 𝔸¹_y × B(ℤ/p)`, mapping to `{x = 0} ≅
  Spec k[z]` with `z = y^p`, the degree is `(1/p)·[k(y) : k(y^p)] = (1/p)·p = 1`, computed directly
  as `deg(Spec k[y]/Spec k[y^p]) / deg(Spec k[y]/𝒱) = p/p = 1`. The inseparable factor is not `1`.

### Examples

- `BG` for a finite constant `G`: one point, `e = |G|`, `deg(BG/Spec k) = 1/|G|`.
- `[𝔸¹/μ₂]` with coarse map `x ↦ x²`: generic stabiliser trivial, stabiliser `μ₂` at the origin.
- The `ℤ/p`-quotient of 1.5 in characteristic `p`, where the function field of the image of a
  closed substack is not perfect.

### Dependencies

SchemeAndStackFoundations §§1.18–1.20; deligne-mumford1969 Theorem 4.12 for 1.1. Within the layer,
1.2 → 1.3 → 1.4 → 1.5; 1.1 needs only 1.2.

## Layer 2: cycles, rational equivalence and Chow groups

### 2.1 Cycles and the cycle of a closed substack

Define `Z_k(𝓜)` as the free abelian group on the integral closed substacks of `𝓜` of dimension `k`
(vistoli1989 (3.1), line 892; Gillet's definition, gillet1984 §4), equivalently on the irreducible
closed subsets of `|𝓜|` of dimension `k` (1.2); `Z_*(𝓜) := ⊕_k Z_k(𝓜)` and `Z_k(𝓜)_ℚ := Z_k(𝓜) ⊗ ℚ`.
For a closed substack `𝒵`, define its cycle `[𝒵] := Σ m_𝒱 [𝒱]`, the sum over the irreducible
components `𝒱` of `𝒵`, where `m_𝒱` is the length of the local ring of `𝒵 ×_𝓜 U` at the generic point
of an irreducible component of `𝒱 ×_𝓜 U`, for any étale `U → 𝓜` from a scheme meeting `𝒱`
(vistoli1989 (3.5), lines 967–971). Write `[𝒵]_k` for its dimension-`k` part. Prove:

- `m_𝒱` does not depend on `U` or on the component, because étale morphisms preserve lengths at
  generic points (stacks-chow-spaces Lemma 4.3, tag 0EE3, line 169, and Lemma 10.3, tag 0EPY,
  line 516);
- étale descent of cycles: for an étale surjective `U → 𝓜` from a scheme, pullback
  `Z_k(𝓜) → Z_k(U)`, `[𝒱] ↦ [𝒱 ×_𝓜 U]`, is injective with image the cycles whose two pullbacks
  to `Z_k(U ×_𝓜 U)` agree (vistoli1989 lines 953–957, citing gillet1984 Lemmas 4.2–4.3);
- `[𝒵] = [𝒵_red]` iff `𝒵` is generically reduced along each component, and `[𝒱] = 1·[𝒱]` for
  integral `𝒱`.

*Needs:* 1.2, 1.3; Mathlib `AlgebraicCycle`; SchemeAndStackFoundations §5.1.

**Checks.**

- `Z_0(BG) = ℤ·[BG]` and `Z_k(∅) = 0` for every `k`.
- `[[V(x²)/μ₂]] = 2·[Bμ₂]` in `Z_0([𝔸¹/μ₂])`: the length of `k[x]/(x²)` at its point is `2`.
  A definition by the reduced support gives `1`.
- For a scheme `X` of finite type over `k`, `Z_k(X)` is `Chow.cyclesOfDimension k X k` of
  SchemeAndStackFoundations §5.1, the locally finite sums there being finite since `X` is
  quasi-compact.

### 2.2 Orders of rational functions and principal divisors

Let `𝒱` be integral of dimension `k + 1`, `𝒲 ⊆ 𝒱` an integral closed substack of dimension `k`,
and `φ ∈ k(𝒱)^×`. Define `ord_𝒲(φ) := ord_w(φ|_U)` for an étale `U → 𝒱` from an integral scheme
meeting `𝒲`, `w` the generic point of an irreducible component of `𝒲 ×_𝒱 U` (a point of coheight
one), and `ord` the order of vanishing of Mathlib's `AlgebraicGeometry.Scheme.ord`. Prove that it
does not depend on the choices (stacks-chow-spaces Lemma 13.2, tag 0EQ2, line 667; vistoli1989
Lemma 3.3, lines 940–948), that `ord_𝒲(φψ) = ord_𝒲(φ) + ord_𝒲(ψ)`, and that only finitely many
`𝒲` have `ord_𝒲(φ) ≠ 0`. Define `div(φ) := Σ_𝒲 ord_𝒲(φ)[𝒲] ∈ Z_k(𝒱)`, the group
`W_k(𝓜) := ⊕_𝒱 k(𝒱)^×` over integral closed substacks `𝒱` of dimension `k + 1`, and
`∂ : W_k(𝓜) → Z_k(𝓜)` sending `(𝒱, φ)` to the pushforward of `div(φ)` along `𝒱 ⊆ 𝓜` (vistoli1989
(3.2), lines 901–911, and lines 958–959). *Needs:* 1.4, 2.1; Mathlib `AlgebraicGeometry.Scheme.ord`.

**Checks.**

- On `[𝔸¹/μ₂]`, `φ = x²` is a rational function and `div(φ) = 2·[Bμ₂]`, computed on the atlas
  `𝔸¹` as `ord_0(x²) = 2`; on the coarse line `𝔸¹_y`, `y = x²`, `div(y) = [0]`. The function `x` is
  not `μ₂`-invariant and is not a rational function on the stack.
- On `BG`, `W_k(BG) = 0` for every `k` (there is no integral closed substack of dimension `≥ 1`),
  so no rational equivalence exists.
- For `φ` a unit on a dense open containing the generic point of `𝒲`, `ord_𝒲(φ) = 0`; the junk
  value of `ord` at points of coheight `≠ 1` is never used.

### 2.3 Chow groups

Define `R_k(𝓜) := ∂(W_k(𝓜)) ⊆ Z_k(𝓜)`, the Chow group `A_k(𝓜) := Z_k(𝓜)/R_k(𝓜)`, `A_*(𝓜) := ⊕_k
A_k(𝓜)` and `A_k(𝓜)_ℚ := A_k(𝓜) ⊗ ℚ` (vistoli1989 (3.4), lines 960–966). API: the class map
`Z_k(𝓜) → A_k(𝓜)`, surjective; `A_k(𝓜) = 0` for `k > dim 𝓜` and `k < 0`; `A_{dim 𝓜}(𝓜)` is free on the
irreducible components of dimension `dim 𝓜`; `A_k(∐ 𝓜_i) = ⊕ A_k(𝓜_i)` for a finite family; an
equivalence of stacks induces an isomorphism. *Needs:* 2.1, 2.2.

**Checks.**

- `A_0(BG) = ℤ` and `A_k(BG) = 0` for `k ≠ 0`. These are Vistoli's groups; the Edidin–Graham
  groups of `BG` are different in negative degrees (Layer 6.2).
- `A_0([𝔸¹/μ₂]) ≅ ℤ/2`, generated by `[Bμ₂]`: every invariant rational function is `g(x²)`, and
  `ord_{Bμ₂}(g(x²)) = 2·ord_0(g)` is even, while `div(x² − a) = [V(x² − a)/μ₂]` for `a ≠ 0` makes
  every other closed point `0` and `div(x²) = 2·[Bμ₂]`. Hence `A_0([𝔸¹/μ₂])_ℚ = 0`.
- For a scheme `X` of finite type over `k`, `A_k(X) = Chow.ChowGroup k X k`, compatibly with
  `Chow.cycleClass` (2.4).

### 2.4 Comparison with schemes and algebraic spaces

Prove that for a scheme `X` of finite type over `k`, `Z_k(X) = Chow.cyclesOfDimension k X k`,
`R_k(X) = Chow.RatEquiv k X k` and `A_k(X) ≅ Chow.ChowGroup k X k` compatibly with the class maps
(SchemeAndStackFoundations §5.1; stacks-chow Lemma 19.3, tag 02RX, line 1395). Prove that for an
algebraic space `X` of finite type over `k`, `Z_k(X)`, `R_k(X)` and `A_k(X)` are the groups of cycles,
rational equivalences and Chow groups of stacks-chow-spaces Definitions 3.1 and 15.1 (tags 0EDZ
and 0EQ6, lines 126 and 797) with `δ = dim`. *Needs:* 2.3; SchemeAndStackFoundations §5.1.

**Checks.**

- `A_0(Spec k) = ℤ`, matching SchemeAndStackFoundations' `CH₀(Spec κ) ≃ ℤ`.
- `A_0(𝔸¹) = 0` and `A_1(𝔸¹) = ℤ`.
- For the non-separated line with a doubled origin, `A_0 ≅ ℤ`, generated by either origin, both
  as a scheme and as a stack.

### Examples

- `A_*(BG) = ℤ` in degree `0`; `A_*([𝔸¹/μ₂]) = ℤ/2 ⊕ ℤ` in degrees `0, 1`.
- `A_*(X)` for a scheme of finite type over `k` is SchemeAndStackFoundations' Chow group.

### Dependencies

Layer 1 (1.2–1.4); SchemeAndStackFoundations §5.1; Mathlib `AlgebraicCycle`,
`AlgebraicGeometry.Scheme.ord`. Within the layer, 2.1 → 2.2 → 2.3 → 2.4.

## Layer 3: flat pullback, proper pushforward and exterior products

### 3.1 Flat pullback

For `f : ℱ → 𝒢` flat of relative dimension `d` (1.3), define `f^* : Z_k(𝒢) → Z_{k+d}(ℱ)` by
`f^*[𝒱] := [𝒱 ×_𝒢 ℱ]` (vistoli1989 (3.6)(i), line 974). Prove that it maps `R_k(𝒢)` into
`R_{k+d}(ℱ)` (vistoli1989 (3.7), line 989, with the pullback of rational equivalences built on
atlases, lines 1012–1025), hence induces `f^* : A_k(𝒢) → A_{k+d}(ℱ)`; that `(g ∘ f)^* = f^* ∘ g^*`
and `id^* = id`; and that on schemes it is SchemeAndStackFoundations §5.2's flat pullback. For an
open substack `j : 𝓤 ⊆ 𝓜`, `j^*` is restriction. *Needs:* Layer 2; SchemeAndStackFoundations §5.2.

**Checks.**

- For `π : Spec k → BG`, étale of relative dimension `0`, `π^*[BG] = [Spec k]`, so
  `π^* : A_0(BG) = ℤ → A_0(Spec k) = ℤ` is the identity on generators; a definition multiplying by
  the degree gives `|G|`.
- For `pr : 𝔸¹ × 𝓜 → 𝓜`, `pr^*[𝒱] = [𝔸¹ × 𝒱]` in dimension `dim 𝒱 + 1`.
- For the coarse map `[𝔸¹/μ₂] → 𝔸¹`, which is flat of relative dimension `0`, the pullback of
  `[0]` is `[[V(x²)/μ₂]] = 2·[Bμ₂]`, not `[Bμ₂]`: the scheme-theoretic fibre is not reduced.

### 3.2 Pushforward along proper representable morphisms

For `f : ℱ → 𝒢` proper and representable, define `f_* : Z_k(ℱ) → Z_k(𝒢)` by
`f_*[𝒱] := deg(𝒱/f(𝒱))[f(𝒱)]`, with `f(𝒱)` the image of 1.2 and the degree of 1.5, which is an
integer and is `0` when `dim f(𝒱) < dim 𝒱` (vistoli1989 (3.6)(ii), line 980). Prove that it maps
rational equivalences to rational equivalences (vistoli1989 (3.7), line 989, through the norm on
`W_*`, lines 998–1011), that `(g ∘ f)_* = g_* ∘ f_*`, and that on schemes it is Mathlib's
`AlgebraicCycle.map` with residue-degree weights, as in SchemeAndStackFoundations §5.2.
*Needs:* 1.5, Layer 2; SchemeAndStackFoundations §5.2; Mathlib `AlgebraicCycle.map`.

**Checks.**

- For `π : Spec k → BG`, finite étale of degree `|G|`, `π_*[Spec k] = |G|·[BG]`, and
  `π_* π^* = |G|` on `A_0(BG)`.
- A closed immersion `i : 𝒵 → 𝓜` gives `i_*[𝒱] = [𝒱]`.
- For `ℙ¹ → Spec k` (a representable morphism of schemes), `f_*[P] = [κ(P) : k][Spec k]`, the
  SchemeAndStackFoundations §5.2 Check.

### 3.3 Rational pushforward along proper morphisms

For `f : ℱ → 𝒢` proper, with `ℱ` admitting a proper cover, define `f_* : Z_k(ℱ)_ℚ → Z_k(𝒢)_ℚ` by
the formula of 3.2 with Vistoli's rational degree (vistoli1989 (3.6)(iii), line 985). Prove:

- for `f` proper surjective, `f_*` is surjective on `Z_*(·)_ℚ` and every cycle of `Z_*(𝒢)_ℚ`
  rationally equivalent to `0` is `f_*` of a cycle rationally equivalent to `0` (vistoli1989
  Lemma 3.8, line 1027);
- `f_*` maps rational equivalences to rational equivalences and induces
  `f_* : A_k(ℱ)_ℚ → A_k(𝒢)_ℚ` (vistoli1989 (3.7), lines 989–997 and 1045–1048);
- `(g ∘ f)_* = g_* ∘ f_*`, by multiplicativity of degrees (1.5);
- for `f` representable it is 3.2 tensored with `ℚ`.

*Needs:* 1.1, 1.5, 3.1, 3.2.

**Checks.**

- `BG → Spec k` sends `[BG]` to `(1/|G|)·[Spec k]`; composing with `Spec k → BG`, `|G|·(1/|G|) = 1`,
  as functoriality for the identity of `Spec k` requires.
- For the coarse map `p : [𝔸¹/μ₂] → 𝔸¹`, `p_*(2·[Bμ₂]) = 2·(1/2)·[0] = [0] = div(y)`, so
  `p_*` carries the relation `div(x²) = 2·[Bμ₂]` to `div(y) = [0]`.
- There is no integral pushforward for `BG → Spec k`: an integer-valued pushforward compatible with
  `π_*` of 3.2 would need `|G|·c = 1`.

### 3.4 Push–pull and localisation

Prove the push–pull formula: for a 2-cartesian square with `f : ℱ → 𝒢` proper, `φ : 𝒢' → 𝒢` flat of
relative dimension `d` and base changes `f' : ℱ' → 𝒢'`, `φ' : ℱ' → ℱ`, `φ^* f_* = f'_* φ'^*` on
`A_*(ℱ)` when `f` is representable and on `A_*(ℱ)_ℚ` in general (vistoli1989 Lemma 3.9, line
1049). Prove the localisation sequence: for a closed substack `i : 𝒵 → 𝓜` with complement
`j : 𝓤 → 𝓜`, the sequence `A_k(𝒵) → A_k(𝓜) → A_k(𝓤) → 0` is exact, integrally and rationally, by
taking closures of integral substacks of `𝓤` and of their rational functions (stacks-chow Lemma
19.3, tag 02RX, line 1395, and stacks-chow-spaces Lemma 15.2, tag 0EQ7, line 813, for schemes and
algebraic spaces; the proof uses only 1.2 and Layer 2). *Needs:* 3.1–3.3.

**Checks.**

- Push–pull for `π : Spec k → BG` against itself: the square has `Spec k ×_BG Spec k = G`, and
  both sides send `[Spec k]` to `|G|·[Spec k]`.
- Localisation on `[𝔸¹/μ₂]` with `𝒵 = Bμ₂`: `A_0(Bμ₂) = ℤ → A_0([𝔸¹/μ₂]) = ℤ/2 → A_0([𝔾_m/μ₂]) = 0`
  is exact, and the first map is not injective.
- The sequence is not exact on the left: for `𝓜 = ℙ¹` and `𝒵` two `k`-points, `ℤ² → ℤ` is not
  injective.

### 3.5 Exterior products

Define `× : Z_k(ℱ) ⊗ Z_l(𝒢) → Z_{k+l}(ℱ ×_k 𝒢)` by `[𝒱] × [𝒲] := [𝒱 ×_k 𝒲]`, the cycle of the
closed substack (vistoli1989 line 1707, citing Fulton §1.10; fulton1998 §1.10). Prove that it
passes to rational equivalence, is associative and commutative up to the swap, has unit
`[Spec k]`, and commutes with flat pullback and proper pushforward on each factor; on schemes it
is `Chow.externalProduct` of SchemeAndStackFoundations §5.5. *Needs:* 3.1–3.3;
SchemeAndStackFoundations §5.5.

**Checks.**

- For `K/k` separable of degree `2`, `[Spec K] × [Spec K] = [Spec(K ⊗_k K)]` is the sum of two
  points; for `K = k(a^{1/p})` purely inseparable of degree `p`, `K ⊗_k K` is local of length `p`
  and `[Spec K] × [Spec K] = p·[Spec K]`. Degrees over `k` multiply in both cases (`4 = 2 + 2`,
  `p² = p·p`); a definition by the reduced product gives `[Spec K]` in the second case.
- `[BG] × [BH] = [B(G × H)]` for finite constant groups.

### Examples

- `π : Spec k → BG`: `π_*π^* = |G|` on `A_0(BG)`, and `π^*π_* = |G|` on `A_0(Spec k)` by push–pull
  through `Spec k ×_BG Spec k = G`, a disjoint union of `|G|` copies of `Spec k`.
- The coarse map of `[𝔸¹/μ₂]`: `p_*` is the zero map `ℤ/2 → 0` integrally and an isomorphism
  `0 → 0` rationally in degree `0`.

### Dependencies

Layers 1–2; SchemeAndStackFoundations §§5.2, 5.5; Mathlib `AlgebraicCycle.map`. Within the layer,
3.1 and 3.2 → 3.3 → 3.4, 3.5.

## Layer 4: local embeddings, normal cones and Gysin homomorphisms

### 4.1 Cones over a DM stack

Let `S = ⊕_{i ≥ 0} S_i` be a quasi-coherent graded `O_𝓜`-algebra (an object of
`Stacks.QCoh 𝓜` with a graded algebra structure) such that `O_𝓜 → S_0` is an isomorphism, `S_1` is
coherent and `S` is generated by `S_1` (behrend-fantechi1997 lines 181–190; vistoli1989 lines
470–477). Define the cone `C(S) → 𝓜` as the stack whose objects over a scheme `T` are pairs of an
object `t ∈ 𝓜(T)` and an `O_T`-algebra map `t^*S → O_T`. Prove that `C(S) → 𝓜` is representable by
schemes and affine, with `C(S) ×_𝓜 T` the relative spectrum of `t^*S` of AlgebraicVectorBundles L1A
for every scheme `T → 𝓜`; that it carries a vertex section `0 : 𝓜 → C(S)` and an action of the
multiplicative monoid `𝔸¹` given by the grading (behrend-fantechi1997 lines 198–225); and that
cones descend along étale covers (vistoli1989 lines 480–484). Define morphisms of cones (induced by
graded algebra maps), closed subcones, fibre products of cones, the abelian cone `C(F) := C(Sym F)`
of a coherent `F` (AlgebraicVectorBundles `linearSpec` on schemes) and the vector bundle
`C(E^∨)` of a locally free `E` of finite rank (AlgebraicVectorBundles `totalSpace`). Prove that
`C(F)` represents `T ↦ Hom(F_T, O_T)` and is a commutative group stack over `𝓜`
(behrend-fantechi1997 lines 229–236), and that cones commute with base change along any
`𝒩 → 𝓜` (vistoli1989 lines 476–477). *Needs:* SchemeAndStackFoundations §1.22 (`Stacks.QCoh`,
`QCoh.pullback`); AlgebraicVectorBundles L1A (`relativeSpec`, `relativeSpecBaseChangeIso`), L2A
(`linearSpec`), L2B (`totalSpace`, `totalSpaceHomEquiv`).

**Checks.**

- `C(O_𝓜)` is the trivial line bundle `𝔸¹ × 𝓜`, and `C(0) = 𝓜` with the vertex an isomorphism.
- Over `Spec k`, `Spec k[x, y]/(xy)` with `x, y` in degree `1` is a cone that is not abelian; its
  abelian hull (7.1) is `𝔸²`.
- For the zero section of `totalSpace L` on a scheme, the cone `C(L^∨)` is `totalSpace L`, not
  `totalSpace L^∨`: on `ℙ¹`, `C(O(1))` is the total space of `O(−1)`, whose zero section has
  self-intersection of degree `−1` (5.2).

### 4.2 Local embeddings and normal cones

Prove that a morphism `f : ℱ → 𝒢` of DM stacks that is representable by schemes and of finite type
is unramified iff there are étale surjections `U → ℱ`, `V → 𝒢` from schemes and a closed immersion
`U → V` compatible with `f` (vistoli1989 Lemma 1.19, line 485). Call such `f` a *local embedding*
(Convention 2) and *regular of codimension `d`* if `U → V` can be chosen a regular immersion of
codimension `d` (vistoli1989 (1.20), line 503). Define the normal cone `C_{ℱ/𝒢}` by étale descent of
the normal cones `C_{U/V}` of SchemeAndStackFoundations' `normalCone` along the two projections
(vistoli1989 lines 508–526), the normal sheaf `N_{ℱ/𝒢} := C(I/I²)`, the abelian hull of `C_{ℱ/𝒢}`,
glued likewise (behrend-fantechi1997 lines 252–264), and, for regular `f`, the normal bundle
`N_{ℱ/𝒢} = C_{ℱ/𝒢}`. Prove:

- independence of the atlases and the embedding;
- for a 2-cartesian square with base change `f' : ℱ' → 𝒢'` of `f` along `q : 𝒢' → 𝒢`, `f'` is a
  local embedding and there is a natural closed embedding `C_{ℱ'/𝒢'} → C_{ℱ/𝒢} ×_ℱ ℱ'`
  (vistoli1989 lines 529–535), an isomorphism when `q` is flat (vistoli1989 Lemma 3.14, line
  1126);
- if `𝒢` has pure dimension `n` then `C_{ℱ/𝒢}` has pure dimension `n` (fulton1998 Appendix B.6.6,
  through an atlas; behrend-fantechi1997 line 998);
- the same definitions apply to a morphism `v : 𝔐' → 𝔐` of algebraic `k`-stacks that is representable
  by schemes, unramified and of finite type, with smooth atlases in place of étale ones: `v` is a
  regular local embedding of codimension `d` if its base change to a smooth atlas of `𝔐` is one, and
  its normal bundle descends along the atlas; the base change of `v` along a morphism from a DM stack
  is a local embedding of DM stacks (behrend-fantechi1997 lines 1617–1641);
- examples: the zero section of a vector bundle `E` is a regular local embedding with normal bundle
  `E`; the diagonal of a smooth separated DM stack of pure dimension `d` is a regular local
  embedding of codimension `d` (vistoli1989 lines 506–507); the graph `ℱ → ℱ × 𝒢` of a morphism to a
  smooth separated `𝒢` of pure dimension `n` is a regular local embedding of codimension `n`
  (vistoli1989 lines 1710–1711).

*Needs:* 1.2, 1.3, 4.1; SchemeAndStackFoundations §5.5 (`normalCone`, `conormal`,
`normalBundle`, `Chow.IsRegularImmersion`).

**Checks.**

- The diagonal of `BG`, `G` finite étale, is finite étale with fibres `G`: a local embedding,
  regular of codimension `0`, with zero normal bundle, matching `dim BG = 0`. It is not a closed
  immersion when `G ≠ 1`, so a definition of local embedding by closed immersions would exclude
  it.
- `Bμ₂ → [𝔸¹/μ₂]` is a regular closed immersion of codimension `1` whose normal bundle is the line
  on which `μ₂` acts by the sign character; its pullback to the atlas `{0} → 𝔸¹` is the trivial
  line.
- For `Spec k[x, y]/(x, y)² ⊆ 𝔸²`, the normal cone has dimension `2` while the normal sheaf
  `C(I/I²)` has a fibre `𝔸³` over the point, so cone and normal sheaf differ off regular
  embeddings.

### 4.3 Gysin homomorphisms with scheme targets

Let `f : ℱ → 𝒢` be a regular local embedding of codimension `d`, `Y` a scheme of finite type over
`k` with a morphism `Y → 𝒢`, and `X := ℱ ×_𝒢 Y`, a scheme because `f` is representable by schemes.
For an integral closed subscheme `T ⊆ Y` of dimension `k`, put `U := ℱ ×_𝒢 T`, a local embedding of
schemes `U → T` with normal cone `C_{U/T} ⊆ N := N_{ℱ/𝒢}|_U`, and define the intersection class
`(ℱ · T) := s^*[C_{U/T}] ∈ A_{k−d}(U)`, where `s^*` is the inverse of flat pullback along `N → U`
(SchemeAndStackFoundations §5.2 `chow_affine_bundle`). Define
`f^! : Z_k(Y) → A_{k−d}(X)` by `f^![T] := (U → X)_*(ℱ · T)` (vistoli1989 (3.10), lines 1081–1100).
Prove:

- `f^!` passes to rational equivalence, giving `f^! : A_k(Y) → A_{k−d}(X)` (vistoli1989 (3.11),
  line 1101);
- for a 2-cartesian square over a morphism `q : Y' → Y` of schemes, `f^! q_* = p_* f^!` for `q`
  proper and `f^! q^* = p^* f^!` for `q` flat (vistoli1989 (3.12), line 1110, and Lemma 3.20, line
  1206);
- two Gysin homomorphisms commute: for regular local embeddings `f_i : ℱ_i → 𝒢_i` and morphisms
  `Y → 𝒢_1`, `Y → 𝒢_2`, `f_1^! f_2^! = f_2^! f_1^!` with values in the Chow group of the common
  fibre product (vistoli1989 (3.13), line 1118);
- for `T` equidimensional, `f^![T] = s^*[C_{U/T}]` (vistoli1989 Lemma 3.19, line 1197);
- when `f` is a regular closed immersion of schemes, `f^!` is SchemeAndStackFoundations'
  `Chow.gysin f (Y → 𝒢)`.

All statements are integral. The proofs follow vistoli1989 §3 (lines 1124–1276) and §4 (lines
1277–1545), which avoid blowing up a stack along a substack that is only locally embedded; they
reduce to an integral `Y` before using 4.4 (vistoli1989 lines 1218–1222 and 1244–1246), so its
hypothesis that the ambient scheme be reduced of pure dimension holds there.
*Needs:* 4.2, 4.4, Layer 3; SchemeAndStackFoundations §§5.2, 5.5 (`chow_affine_bundle`,
`Chow.gysin`, `pushforward_compat`, `pullback_compat`).

**Checks.**

- For the zero section `s` of a vector bundle `E` over a scheme `𝓜` and `Y = E`, `s^!` is the
  inverse `s^*` of flat pullback; for `Y = 𝓜` mapping to `E` by `s`, `s^![𝓜] = c_r(E) ∩ [𝓜]`
  (self-intersection), not `[𝓜]`.
- `f^!` along the regular embedding `{0} → 𝔸¹` applied to `[𝔸¹]` through the map `z ↦ z²` gives
  `2·[pt]` in `A_0(Spec k[z]/(z²))`, matching SchemeAndStackFoundations'
  `gysin_open_independent_double_cover`.
- For the codimension-`0` regular local embedding `Spec k → BG` (`G` finite étale) and
  `Y = Spec k → BG`, `X = G` and `f^![Spec k] = [G]`, the sum of its `|G|` points, whose pushforward
  to `Spec k` is `|G|·[Spec k]`, not `[Spec k]`.

### 4.4 Vistoli's canonical rational equivalence

In a 2-cartesian square of DM stacks with `Y` reduced of pure dimension, `i : X → Y` a local
embedding, `v : Y' → Y` a regular local embedding with normal bundle `N`, base changes
`j : X' → Y'`, `u : X' → X`, and `C := C_{X/Y}`, construct the canonical rational equivalence
`β(Y', X) ∈ W_*(N ×_Y C)` with `∂β(Y', X) = [C_{u^*C/C}] − [ρ^*C_{X'/Y'}]`, where `ρ : j^*N → Y'`
(vistoli1989 Lemma 3.16, line 1172, and Lemma 4.6, line 1458, for `Y` a reduced equidimensional
scheme, lines 1451–1452; behrend-fantechi1997 lines 811–825). The construction blows up `Y` along
the product of the ideals of `X` and `Y'` and normalises (vistoli1989 lines 1465–1470), which is
where reducedness enters; both conditions on `Y` are étale-local and pass to schemes smooth of
constant relative dimension over `Y`. Prove that `β` commutes with smooth base change on `Y`
(behrend-fantechi1997 Proposition 3.3, line 834), hence is defined for `Y` a DM stack by étale
descent of rational equivalences (vistoli1989 lines 953–957);
that it is compatible with replacing `i` by a factorisation through a smooth morphism of
Deligne–Mumford type (Proposition 3.4, line 884); and that it is invariant under the action of
`j^*N ×_Y T_Y` when `Y` is smooth (Proposition 3.5, line 889). Once the Gysin maps of 4.3 and 4.5 are
available, prove the consequence `v^![C] = [C_{X'/Y'}]` in `A_*(u^*C)` (behrend-fantechi1997 lines
828–833). *Needs:* 4.2, Layer 2; SchemeAndStackFoundations §5.5 (`deformationToNormalCone`,
`specialization`); for the consequence, 4.3 and 4.5.

**Checks.**

- For `X = Y` (so `C = Y` is the zero cone), `C_{u^*C/C} = C_{Y'/Y} = N` and `ρ^*C_{X'/Y'} = j^*N = N`,
  so `∂β = [N] − [N] = 0`. The element itself is `0`: the ideal of `X` is zero, so the product of
  the ideals of `X` and `Y'` is zero, the blow-up in the construction is empty and `β` is the
  pushforward of an element of `W_*(∅)` (vistoli1989 lines 1466–1470 and 1482–1488).
- For `Y' = Y` and `v` the identity (codimension `0`, `N = Y'`), `u^*C = C`, `C_{C/C}` is `C`,
  `X' = X`, and `∂β = [C] − [C] = 0`; again `β = 0`, now because the ideal of `Y'` is zero.
- For `v = i` a regular closed immersion of codimension `d` with normal bundle `N` (so `Y' = X`,
  `X' = X`, `C = N`): `C_{X'/Y'}` is the zero section `X ⊆ N`, and the consequence reads
  `v^![N] = s_*[X]` in `A_{dim X}(N)`. Both sides have `s^!`-image `c_d(N) ∩ [X]` (excess intersection
  on the left, self-intersection on the right, 5.2), as homotopy invariance (5.1) requires. The identity
  holds in `A_*`, not on cycles: for `Y = 𝔸²`, `X = {xy = 0}` and `Y' = {x = 0}`, `u^*C ≅ Y' × 𝔸¹`,
  `v^![C]` is the fibre over the origin (the component `{x = 0}` of `X` contributes
  `c_1(N_{Y'/Y}) = 0` by excess) and `[C_{X'/Y'}]` is the zero section; both are `0` in
  `A_1(Y' × 𝔸¹) = A_1(𝔸²) = 0`.
- Reducedness of `Y` is used: for `Y = 𝔸¹ × Spec k[ε]/(ε²)` (coordinate `t`) and `X` the origin,
  `I = (t, ε)` has `I^n/I^{n+1}` spanned by `t^n, t^{n−1}ε`, so `C_{X/Y} = Spec k[T, E]/(E²)` and
  `[C_{X/Y}] = 2·[𝔸¹]`, while the normalisation of a blow-up only sees `Y_red = 𝔸¹`, where the cone
  of the origin is `𝔸¹` with multiplicity `1`.

### 4.5 Bivariant classes and Gysin maps on stacks

With rational coefficients, define for a morphism `F → G` of DM stacks representable by schemes
the bivariant groups `A^p(F → G)`: an element assigns to every morphism `Y → G` from a scheme a
homomorphism `A_k(Y)_ℚ → A_{k−p}(F ×_G Y)_ℚ` commuting with proper pushforward, flat pullback and
the Gysin homomorphisms of regular local embeddings of 4.3 (vistoli1989 (5.1), lines 1550–1569).
Define product, proper pushforward and pullback (lines 1573–1593), the subgroup `C^*(F → G)` of
classes commuting with all bivariant classes (lines 1594–1599), and the orientation class `[f]` of
a flat or regular local embedding `f`, which lies in `C^*` (lines 1600–1602). Prove that a
bivariant class `α ∈ A^p(F → G)` acts on `A_*(G')_ℚ` for every morphism `G' → G` from a DM stack
admitting a proper cover, by `α[𝒢'] := deg(Y/𝒢')^{−1} · r_*(α[Y])` for a generically finite proper
cover `Y → 𝒢'` of an integral `𝒢'` (lines 1603–1620), that this action passes to rational
equivalence and commutes with proper pushforward and flat representable pullback (vistoli1989
Lemma 5.3, line 1621). Define the Gysin map of a regular local embedding `f` on stacks,
`f^! η := [f] η ∈ A_*(ℱ ×_𝒢 𝒢')_ℚ` (lines 1665–1670), and prove `f^![𝒢] = [ℱ]` for `𝒢`
equidimensional (vistoli1989 Lemma 5.5, line 1671). Extend the definitions to a morphism `F → G` of
algebraic `k`-stacks representable by schemes, the class acting on Chow groups of DM stacks over
`G`: this gives the Gysin map `v^!` of a regular local embedding `v : 𝔐' → 𝔐` of algebraic stacks
(4.2) and flat pullback along a flat `v`, as orientation classes acting on `A_*(𝒢')_ℚ` for DM stacks
`𝒢' → 𝔐` with a proper cover, with the compatibilities above (behrend-fantechi1997 lines 1617–1643).
For a local complete intersection morphism `v` that factors as a regular local embedding followed
by a smooth morphism, `v^!` is the composite of the two orientation classes and does not depend on
the factorisation. *Needs:* 1.1, 1.5, 3.3, 4.3; stacks-chow
Definition 33.1 (tag 0B76, line 2952) for the scheme-level bivariant formalism.

**Checks.**

- For `f = id`, `[id]` acts as the identity.
- For a finite étale `π : Spec k → BG`, `[π]` acting on `A_0(BG)_ℚ = ℚ` sends `[BG]` to `[Spec k]`,
  the flat pullback; it is not `|G|·[Spec k]`.
- For the zero section `s : 𝓜 → E` of a vector bundle, `s^![E] = [𝓜]` (Lemma 5.5), and
  `s^!(π^*α) = α` for all `α` (5.1).

### Examples

- Codimension-`0` regular local embeddings that are not immersions: diagonals of `BG` and finite
  étale maps.
- The zero section of a vector bundle on a DM stack, the case used for virtual classes.

### Dependencies

Layers 1–3; SchemeAndStackFoundations §§5.2, 5.5; AlgebraicVectorBundles L1A, L2A, L2B;
SchemeAndStackFoundations §1.22. Within the layer, 4.1 → 4.2 → 4.4 (construction of `β`) → 4.3 →
4.5 → 4.4 (consequence `v^![C] = [C_{X'/Y'}]`).

## Layer 5: vector bundles, Chern classes and intersection products

### 5.1 Homotopy invariance

Let `𝓜` admit a proper cover and let `π : E → 𝓜` be a vector bundle of constant rank `r` with zero
section `s`. Prove that flat pullback `π^* : A_k(𝓜)_ℚ → A_{k+r}(E)_ℚ` is an isomorphism with inverse
the Gysin map `s^!` of 4.5. Route: `s^! π^* = id` by vistoli1989 Lemma 5.5 (lines 1673–1684, the
vector-bundle case of the proof); surjectivity of `π^*` from a proper cover `X → 𝓜`, the induced
proper surjection `E_X → E`, vistoli1989 Lemma 3.8 (line 1027), homotopy invariance on schemes
(SchemeAndStackFoundations §5.2 `chow_affine_bundle`; stacks-chow Lemma 32.2, tag 0B74, line 2769)
and push–pull (3.4). Consequences: for a closed subcone `C ⊆ E` of pure dimension `c`,
`s^![C] ∈ A_{c−r}(𝓜)_ℚ`; for a surjection of vector bundles `q : E' → E` with
`q ∘ s' = s`, `s'^! q^* = s^!`. *Needs:* 1.1, 3.1–3.4, 4.5; SchemeAndStackFoundations §5.2.

**Checks.**

- For the trivial line bundle over `BG`, `A_1(𝔸¹ × BG)_ℚ = ℚ·[𝔸¹ × BG]` and `s^![𝔸¹ × BG] = [BG]`.
- Restriction of cycles to the zero section, `[V] ↦ [V ∩ s(𝓜)]`, is not the inverse of `π^*`: it
  sends `s_*[𝓜]` to `[𝓜]` in dimension `dim 𝓜`, while `s^! s_*[𝓜] = c_r(E) ∩ [𝓜]` lies in dimension
  `dim 𝓜 − r`; for `E = O(−1)` on `ℙ¹` this is `−[pt]`. For `r = 0`, `π = id = s^!`.
- For `q : E ⊕ F → E` the projection and `C ⊆ E`, `s'^![q^{−1}C] = s^![C]`, so the class of a cone
  does not change when the ambient bundle is enlarged by a summand.

### 5.2 Chern classes

For a vector bundle `E` of constant rank `r` on `𝓜`, define `c_i(E) ∈ C^i(𝓜 → 𝓜)` (rational
coefficients) by `c_i(E) ∩ y := c_i(E|_Y) ∩ y` for `Y → 𝓜` from a scheme, with SchemeAndStackFoundations'
`Chow.chernClass` (vistoli1989 lines 1570–1593 for the formalism; stacks-chow §37, line 44 of its
contents, for schemes). Prove that this is a bivariant class commuting with all bivariant classes,
hence acts on `A_*(𝒢')_ℚ` for every `𝒢' → 𝓜` from a stack with a proper cover; that `c_0 = 1`,
`c_i = 0` for `i > r`, Whitney sum `c(E) = c(E')c(E'')` for a short exact sequence, `c_1` is additive
on tensor products of line bundles, and Chern classes commute with flat pullback and proper
pushforward (projection formula). Prove the self-intersection formula: for the zero section `s` of
`E`, `s^! s_* α = c_r(E) ∩ α` for `α ∈ A_*(𝓜)_ℚ` (fulton1998 Corollary 6.3; SchemeAndStackFoundations
`gysin_self_intersection` on schemes, through a proper cover). *Needs:* 4.5, 5.1;
SchemeAndStackFoundations §5.4 (`Chow.chernClass`, the splitting principle), §5.5
(`gysin_self_intersection`, `commutes_with_c1`).

**Checks.**

- On `ℙ¹` (a scheme), `deg(c_1(O(−1)) ∩ [ℙ¹]) = −1`, and the zero section of the total space of
  `O(−1)` has self-intersection `−[pt]`.
- On `BG`, every vector bundle is a representation `ρ` of `G` and `c_i(ρ) ∩ [BG] ∈ A_{−i}(BG)_ℚ = 0`
  for `i > 0`; rational Chern classes of `BG` vanish in positive degree, unlike the
  Edidin–Graham classes `c_1(χ) = t` of `Bμ_n` with torsion coefficients.
- `c(O^n) = 1`; for `E = L ⊕ L^∨` on a scheme, `c_1(E) = 0` and `c_2(E) = −c_1(L)²`.

### 5.3 Intersection products on smooth stacks

For a smooth separated DM stack `𝒢` of pure dimension `n`, a morphism `f : ℱ → 𝒢`, and classes
`x ∈ A_k(ℱ')_ℚ`, `y ∈ A_l(𝒢')_ℚ` on stacks over `ℱ` and `𝒢`, define `x ·_f y := γ^!(x × y) ∈
A_{k+l−n}(ℱ' ×_𝒢 𝒢')_ℚ` with `γ` the graph of `f` (vistoli1989 lines 1705–1718). Prove the formal
properties of fulton1998 Proposition 8.1.1 as stated there; in particular `A^*(𝒢)_ℚ := A_{n−*}(𝒢)_ℚ`
is a commutative graded ring with unit `[𝒢]`, flat pullback between smooth stacks is a ring map, and
the projection formula holds for proper representable `f`. Prove that for a smooth separated `𝒢`
and a representable `g : T → 𝒢`, `C^*(T → 𝒢) = A^*(T → 𝒢)` and evaluation on `[𝒢]` is an
isomorphism `A^*(T → 𝒢) ≅ A_*(T)_ℚ` (vistoli1989 (5.6), line 1719). On smooth schemes the product is
SchemeAndStackFoundations' `Chow.intersect`. *Needs:* 3.5, 4.2, 4.5, 5.2; SchemeAndStackFoundations
§5.6.

**Checks.**

- `A^*(BG)_ℚ = ℚ` in degree `0`.
- On `[ℙ¹/μ₂]` (`x ↦ −x`, char `k ≠ 2`), with `𝒫 = Bμ₂` the stacky point at `0`, `[𝒫]·[𝒫] = 0` in
  `A_{−1} = 0`, while `[𝒫]·[𝓜] = [𝒫]`, and `∫([𝒫]·[𝓜]) = 1/2` (6.3).
- For `ℙ¹`, `[pt]·[pt] = 0` and `[ℙ¹]` is the unit, matching SchemeAndStackFoundations
  `test_pn_ring`.

### Examples

- Homotopy invariance on `BG × 𝔸^r`: `A_r(BG × 𝔸^r)_ℚ = ℚ`.
- The localised top Chern class `s^![C]` of a cone `C` in a vector bundle, the operation that
  defines virtual classes.

### Dependencies

Layers 1–4; SchemeAndStackFoundations §§5.2, 5.4–5.6. Within the layer, 5.1 → 5.2 → 5.3.

## Layer 6: comparisons

### 6.1 Coarse moduli spaces

Let `𝓜` be a DM stack over `k` admitting a proper cover, and `p : 𝓜 → M̄` a proper morphism to an
algebraic space of finite type over `k` that induces a bijection between isomorphism classes of
`𝓜(Spec Ω)` and `M̄(Spec Ω)` for every algebraically closed field `Ω` — a moduli space in the sense
of Gillet and Vistoli, with an algebraic space in place of a scheme (vistoli1989 (2.1), line 542).
Prove:

- `𝒱 ↦ p(𝒱)` is a dimension-preserving bijection from integral closed substacks of `𝓜` to integral
  closed subspaces of `M̄`, with inverse `N ↦ (N ×_{M̄} 𝓜)_red` (vistoli1989 (2.3), line 566, and the
  proof of (6.1), lines 1766–1770);
- for integral `𝒱`, `k(p(𝒱)) ⊆ k(𝒱)` is purely inseparable (vistoli1989 (2.4), line 571), hence
  `deg(𝒱/p(𝒱)) = [k(𝒱) : k(p(𝒱))]/e(𝒱)`, a power of the characteristic exponent divided by `e(𝒱)`,
  and `deg(𝒱/p(𝒱)) = 1/e(𝒱)` whenever `k(p(𝒱))` is perfect (vistoli1989 (2.5), line 578; (1.17));
- `p_* : A_k(𝓜)_ℚ → A_k(M̄)_ℚ` is an isomorphism for every `k`, with `p_*[𝒱] = deg(𝒱/p(𝒱))[p(𝒱)]`
  (vistoli1989 (6.1)(i), line 1758);
- for a separated DM stack `𝓜` over `k` with coarse moduli space `p : 𝓜 → M̄` from `keel_mori`
  (SchemeAndStackFoundations §1.23; keel-mori1997 Corollary 1.3, line 28), `p` satisfies the
  hypotheses, so `A_*(𝓜)_ℚ ≅ A_*(M̄)_ℚ`; with Layer 2.4 the right side is the rational Chow group of
  the algebraic space `M̄` (stacks-chow-spaces Definition 15.1).

*Needs:* 1.1, 1.2, 1.4, 1.5, 3.3, 2.4; SchemeAndStackFoundations §1.23 (`IsCoarseModuliSpace`,
`keel_mori`).

**Checks.**

- `BG → Spec k` for `G` finite constant: `p_*[BG] = (1/|G|)·[Spec k]` and `A_0(BG)_ℚ = ℚ ≅ ℚ`.
- `[𝔸¹/μ₂] → 𝔸¹`: integrally `p_* : ℤ/2 → 0` in degree `0` is not injective, rationally both sides
  vanish; `p_*[Bμ₂] = (1/2)[0]`.
- Characteristic `p`, the `ℤ/p`-quotient of 1.5: `p_*[𝒱] = 1·[p(𝒱)]` although `e(𝒱) = p`; the
  formula `1/e(𝒱)` fails because `k(p(𝒱)) = k(y^p)` is not perfect.
- In characteristic `0` every `k(p(𝒱))` contains `ℚ`, hence is perfect, so `deg(𝒱/p(𝒱)) = 1/e(𝒱)`
  for all `𝒱`.

### 6.2 Deligne–Mumford quotient stacks

Let `G` be a smooth affine group scheme of dimension `g` over `k` acting on a quasi-projective
`k`-scheme `X` with a `G`-linearised ample invertible sheaf (EquivariantIntersectionTheory,
Conventions 1 and 5), such that `[X/G]` is a separated DM stack (the action is proper and the
stabiliser group schemes are finite and unramified). Prove that for every `i` there is an
isomorphism `A^G_i(X) ⊗ ℚ ≅ A_{i−g}([X/G])_ℚ`, where the left side is EquivariantIntersectionTheory
§2.1's equivariant Chow group, compatible with flat pullback and with proper pushforward along
`G`-equivariant morphisms of such `X` (edidin-graham1998 Proposition 10, line 770, and the
homotopy-property route described at lines 765–768). For `X` smooth, prove that it is an
isomorphism of graded rings `A^*_G(X)_ℚ ≅ A^*([X/G])_ℚ` between the equivariant product of
EquivariantIntersectionTheory §2.2 and the product of 5.3 (edidin-graham1998 Proposition 11, line
790). Route: for a representation `V` of dimension `l` with a free open `U ⊆ V` whose complement has
codimension `> dim X − i`, the mixed space `X ×^G U` is the open substack `[(X × U)/G]` of the rank-`l`
vector bundle `[(X × V)/G] → [X/G]`; the complement `[(X × (V ∖ U))/G]` has dimension
`< i − g + l`, so localisation (3.4) and homotopy invariance (5.1) give
`A_{i−g}([X/G])_ℚ ≅ A_{i−g+l}([(X × V)/G])_ℚ ≅ A_{i+l−g}(X ×^G U)_ℚ = A^G_i(X)_ℚ`. No quasi-projective
coarse moduli space is assumed. *Needs:* 3.4, 5.1, 5.3; EquivariantIntersectionTheory §§2.1–2.2;
SchemeAndStackFoundations §1.21 (`actionQuotient`, `quotientStack_algebraic`).

**Checks.**

- `G` trivial: `A^G_i(X) = A_i(X)` and `[X/G] = X`, so the isomorphism is the identity with `g = 0`.
- `G = μ_n` (`n` invertible in `k`) acting trivially on `X = Spec k`: `A^*_{μ_n} = ℤ[t]/(n t)`
  (EquivariantIntersectionTheory §2.3), so `A^{μ_n}_i ⊗ ℚ = ℚ` for `i = 0` and `0` otherwise, matching
  `A_0(Bμ_n)_ℚ = ℚ`; integrally the equivariant group has `ℤ/n` in every negative degree, which the
  rational statement discards.
- `G = 𝔾_m` acting on `X = 𝔸² ∖ 0` with weights `(1, 1)`: `[X/G] = ℙ¹` and
  `A^{𝔾_m}_2(X) = A_1(ℙ¹) = ℤ`, so the shift is `i − g = 2 − 1 = 1`; a statement without the shift
  `g` would compare with `A_2(ℙ¹) = 0`.
- `G = 𝔾_m` acting on `𝔸¹` with weight `1` is excluded: the stabiliser at `0` is `𝔾_m`, not finite,
  and `[𝔸¹/𝔾_m]` is not DM.

### 6.3 Degrees of zero-cycles

Let `𝓜` be a DM stack proper over `k`. Define `∫_𝓜 : A_0(𝓜)_ℚ → ℚ` as the rational pushforward
(3.3) along the structure morphism followed by `A_0(Spec k)_ℚ = ℚ`. For a closed point `x ∈ |𝓜|`,
let `𝒱_x` be the reduced induced closed substack on `{x}`, `κ(x) := k(𝒱_x)` and `Aut(x̄)` the
automorphism group of a geometric point over `x`, so that `e(𝒱_x) = |Aut(x̄)|`. Prove:

- `κ(x)` is a finite extension of `k` and `∫_𝓜 [𝒱_x] = [κ(x) : k]/|Aut(x̄)|` (vistoli1989 (1.17),
  line 428, applied to `𝒱_x → Spec k`, and lines 372–376);
- the `ℚ`-linear map `Z_0(𝓜)_ℚ → ℚ` with these values vanishes on `R_0(𝓜)_ℚ`, induces `∫_𝓜`, and
  agrees on proper schemes with the degree of zero-cycles of SchemeAndStackFoundations
  §5.1 (stacks-chow Definition 41.1, tag 0AZ1, line 3936);
- `∫_𝒩 ∘ f_* = ∫_𝓜` for a morphism `f : 𝓜 → 𝒩` of proper DM stacks (vistoli1989 (3.6)–(3.7),
  lines 974–997), and `∫_𝓜 = ∫_{M̄} ∘ p_*` for the coarse moduli space of 6.1.

*Needs:* 1.4, 1.5, 3.3, 6.1; SchemeAndStackFoundations §§1.20, 5.1.

**Checks.**

- `∫_{BG}[BG] = 1/|G|` for `G` finite constant.
- `𝓜 = Spec K` for `K/k` finite: `∫[Spec K] = [K : k]`, including `p` for `K = k(a^{1/p})`.
- Non-neutral gerbe of 1.4 over `ℝ`: `∫[𝒱] = [ℝ : ℝ]/2 = 1/2`, and directly
  `deg(Spec ℂ/Spec ℝ)/deg(Spec ℂ/𝒱) = 2/4 = 1/2`. The definition `[κ(x) : k]/|acting group|` gives
  `1/4`.
- On `[ℙ¹/μ₂]` (`x ↦ −x`, char `k ≠ 2`), the stacky point `𝒫` at `0` and the orbit `𝒪 = {±1}`
  satisfy `div(x²/(x² − 1)) = 2·[𝒫] − [𝒪]` (order `2` at `0` and `−1` at `±1` on the atlas, `0` at
  `∞`), so `2·[𝒫] = [𝒪]` in `A_0`;
  `∫(2·[𝒫]) = 2 · (1/2) = 1 = ∫[𝒪]`, consistent with vanishing on `R_0`.

### Examples

- On `[ℙ¹/μ₂]` the two stacky points have degree `1/2`, a free orbit over a `k`-point has degree
  `1`, and `∫ : A_0([ℙ¹/μ₂])_ℚ → ℚ` is an isomorphism, matching `A_0(ℙ¹)_ℚ = ℚ` under 6.1.
- The comparison of 6.2 for `μ_n` and `𝔾_m` actions, read off from EquivariantIntersectionTheory
  §2.3.

### Dependencies

Layers 1–3 and 5; SchemeAndStackFoundations §§1.21, 1.23, 5.1; EquivariantIntersectionTheory
§§2.1–2.2. Within the layer, 6.1 → 6.3; 6.2 is independent of 6.1.

## Layer 7: cone stacks and stacks of the form h¹/h⁰

In this layer `X` is a DM stack over `k`.

### 7.1 Abelian hulls, exact sequences and E-cones

For a cone `C = C(S)` of 4.1, define its abelian hull `A(C) := C(S_1)`, the closed embedding
`C ⊆ A(C)`, and the abelianisation functor on morphisms (behrend-fantechi1997 lines 237–243). Prove:

- a morphism of cones is a closed immersion iff its abelianisation is;
- a cone is a vector bundle iff it is smooth over `X` (behrend-fantechi1997 Lemma 1.1, line 244);
- morphisms of abelian cones are morphisms of group stacks over `X`.

Define a short exact sequence of cones `0 → E → C → D → 0` with `E` a vector bundle
(behrend-fantechi1997 Definition 1.2, line 268); prove that a short exact sequence of coherent
sheaves `0 → F' → F → E → 0` with `E` locally free gives an exact sequence `0 → C(E) → C(F) →
C(F') → 0` and conversely (remark at lines 272–276), and that a smooth surjective morphism of cones
`C → D` with kernel `E := C ×_D 0` gives an exact sequence (Lemma 1.3, line 277). Define, for a
vector bundle `E` with a morphism of cones `d : E → C`, the notion of an `E`-cone (`C` stable under
the action of `E` on `A(C)`), morphisms of vector bundle cones and homotopies between them
(behrend-fantechi1997 lines 294–311), and prove Proposition 1.4 (line 323): for an
`𝔸¹`-equivariant smooth surjection `φ : C → D` of algebraic `X`-spaces with sections and
`𝔸¹`-actions and `E := C ×_{D,0} X`, `C` is an `E`-cone iff `D` is a cone, and `C` is abelian (a
vector bundle) iff `D` is. *Needs:* 4.1; AlgebraicVectorBundles L2A.

**Checks.**

- `Spec k[x, y]/(xy) ⊆ 𝔸²` over `Spec k`: abelian hull `𝔸²`, a closed subcone that is not a vector
  bundle (not smooth at the vertex).
- Over `𝔽_p`, `Spec 𝔽_p[t]/(t^p)` with `t` in degree `1` is a cone whose abelian hull is `𝔸¹`; it is
  not smooth, so not a vector bundle, although it is a group scheme (`α_p`), so "abelian" cannot be
  defined as "group scheme over `X`".
- The sequence `0 → O → O ⊕ O → O → 0` gives `0 → 𝔸¹ → 𝔸² → 𝔸¹ → 0`; for `F' = 0`, `F = E` the
  sequence `0 → C(E) → C(E) → X → 0` has `D` the zero cone.

### 7.2 Cone stacks

Define an algebraic stack with an `𝔸¹`-action over `X`: an algebraic `X`-stack `𝒞` with a section
`0`, a morphism `γ : 𝔸¹ × 𝒞 → 𝒞` and 2-isomorphisms `θ₁ : id ⇒ γ ∘ (1, id)`,
`θ₀ : 0 ⇒ γ ∘ (0, id)`, `θ_γ : γ ∘ (m × id) ⇒ γ ∘ (id × γ)` satisfying the coherence conditions of
a pseudo-action of the multiplicative monoid `𝔸¹` (associativity of `θ_γ` on `𝔸¹ × 𝔸¹ × 𝔸¹ × 𝒞`,
compatibility of `θ_γ` with `θ₁` and with `θ₀`); `𝔸¹`-equivariant morphisms and `𝔸¹`-equivariant
2-isomorphisms (behrend-fantechi1997 Definition 1.5, line 349, and lines 379–415). For an `E`-cone
`C`, define `[C/E]` by SchemeAndStackFoundations' `Stack.quotient` of the action groupoid, whose
objects over `T` are an `E`-torsor `P` with an equivariant `P → C` (lines 416–426); morphisms of
vector bundle cones induce `𝔸¹`-equivariant morphisms and homotopies induce 2-isomorphisms. Prove
Lemma 1.6 (line 432: every `𝔸¹`-equivariant 2-isomorphism comes from a unique homotopy) and
Proposition 1.7 (line 442: a cartesian morphism `(E, C) → (F, D)` with `F × C → D` surjective
induces an isomorphism). Define a cone stack as an algebraic `X`-stack with `𝔸¹`-action admitting,
étale-locally on `X`, a smooth surjective `𝔸¹`-equivariant morphism from a cone (a local
presentation), so that `𝒞 ≅ [C/E]` with `E = C ×_{𝒞,0} X` (Definition 1.8, line 450, and lines
459–461); abelian cone stacks and vector bundle stacks (Definition 1.9, line 482); the abelian hull
(Proposition 1.10, line 487); `E`-cone stacks and their actions (Definition 1.11, line 492);
short exact sequences of cone stacks and their local description (Definition 1.12, line 505;
Proposition 1.13, line 515). Define the dimension of a cone stack through a local presentation,
`dim 𝒞 := dim C − rk E` (stacks-properties Definition 12.2), and pure dimension. Prove: for a
vector bundle stack `ℰ ≅ [E_1/E_0]` with a global presentation and a closed subcone stack
`𝒞 ⊆ ℰ` of pure dimension `c`, the fibre product `C := 𝒞 ×_ℰ E_1` is a closed subcone of `E_1`,
stable under `E_0`, of pure dimension `c + rk E_0` (behrend-fantechi1997 lines 1289–1298).
*Needs:* 7.1, 1.3; SchemeAndStackFoundations §§1.19–1.21 (`IsAlgebraicStack`, `Stack.quotient`).

**Checks.**

- For a vector bundle `E`, the classifying stack `BE = [X/E]` is a vector bundle stack of dimension
  `dim X − rk E`, with local presentation the zero cone `X` (behrend-fantechi1997 lines 478–481).
- `[𝔸¹/𝔾_a]` with translation over `Spec k` is isomorphic to `Spec k` (Proposition 1.7), while
  `[𝔸¹/𝔾_a]` with the trivial action is `𝔸¹ × B𝔾_a`, of dimension `0`, not a point.
- For the vector bundle cones `(0, 𝔸¹)` and `(𝔸¹, 0)` over `Spec k`, with quotients `𝔸¹` and
  `B𝔾_a`, the only morphism is `0`, and the homotopies from `0` to `0` are the linear maps
  `k_a : x ↦ a·x`, `a ∈ k`. By Lemma 1.6 they are exactly the `𝔸¹`-equivariant 2-automorphisms of
  the zero morphism `𝔸¹ → B𝔾_a`; the 2-automorphism `x ↦ x²` of the underlying morphism of stacks
  is not `𝔸¹`-equivariant, so the equivariance condition is not vacuous.

### 7.3 The small étale site and complexes

Define the small étale site `X_ét`: objects are schemes `U` with an étale morphism `u : U → X`,
morphisms are pairs `(a, α)` of a morphism `a : U → U'` and a 2-isomorphism `α : u' ∘ a ⇒ u`, and
coverings are jointly surjective families (behrend-fantechi1997 lines 171–174), with structure
sheaf `O_X(U) := Γ(U, O_U)`. Prove that for an algebraic space `X` it is equivalent, as a ringed
site, to SchemeAndStackFoundations §1.10's `smallEtale X` with `structureSheaf X` restricted to
schemes, and that for an étale `U → X` the localisation `X_ét/U` is `U_ét`. Define the abelian
category of `O_X`-modules as Mathlib's `SheafOfModules O_X`, quasi-coherent and coherent modules
(étale-locally quasi-coherent, resp. coherent), and prove that quasi-coherent `O_X`-modules on
`X_ét` are equivalent to SchemeAndStackFoundations' `Stacks.QCoh X`, through
`QCoh.presentationEquiv` for an étale presentation. Define `D(O_X)` as Mathlib's `DerivedCategory`
of `SheafOfModules O_X`, `D_coh(O_X)`, and:

- Condition `(⋆)` for `E ∈ D(O_X)`: `h^i(E) = 0` for `i > 0`, and `h^0(E)`, `h^{−1}(E)` coherent
  (behrend-fantechi1997 Definition 2.3, line 670);
- `E` perfect of amplitude `[−1, 0]` (Convention 7) and its rank;
- a global resolution of `E`: a complex `[F^{−1} → F^0]` of locally free sheaves of finite rank
  with an isomorphism to `E` in `D(O_X)` (Definition 5.2, line 1282);
- the big fppf site `X_fl` of schemes over `X` with structure sheaf `O_fl`, the morphism of ringed
  topoi `v : X_fl → X_ét`, the derived pullback `E_fl := Lv^*E` and the dual
  `E^∨ := RHom(E_fl, O_fl)` (behrend-fantechi1997 lines 642–669).

Prove that `E` satisfying `(⋆)` admits, étale-locally, a representative `[E^{−1} → E^0]` with `E^0`
free of finite rank and `E^{−1}` coherent (the reduction at lines 679–683), and that perfect objects
of amplitude `[−1, 0]` satisfy `(⋆)`. *Needs:* SchemeAndStackFoundations §§1.10, 1.19, 1.22, 2.9;
EnhancedDerivedSheaves §0.2 and E1.4; Mathlib `SheafOfModules`, `DerivedCategory`,
`AlgebraicGeometry.Scheme.smallEtaleTopology`.

**Checks.**

- For `X = BG`, `G` finite constant over `k`, coherent `O_X`-modules on `X_ét` are finite-dimensional
  `k`-representations of `G`, matching SchemeAndStackFoundations' `test_BG_representations`.
- `O_X[1]` is perfect of amplitude `[−1, 0]` with rank `−1`. `O_X[2]` satisfies `(⋆)` but is not
  perfect of amplitude `[−1, 0]`, and its `h¹/h⁰` (7.4) is trivial because only `τ^{≥−1}` matters
  (behrend-fantechi1997 line 669). `O_X[−1]` violates `(⋆)` since `h¹ ≠ 0`.
- On `Spec k[ε]/(ε²)`, the complex `k[0]` (the residue field) satisfies `(⋆)` and is not perfect of
  any finite amplitude.

### 7.4 The stacks h¹/h⁰

For a homomorphism `d : E⁰ → E¹` of abelian sheaves on a site, define `h¹/h⁰(E^•) := [E¹/E⁰]`, the
Picard stack whose objects over `U` are an `E⁰`-torsor `P` with an `E⁰`-equivariant `P → E¹|_U`, by
SchemeAndStackFoundations' `Stack.quotient` (behrend-fantechi1997 lines 535–544); a morphism of
complexes induces an additive morphism and a homotopy a 2-isomorphism (lines 545–573). Prove
Proposition 2.1 (line 574: a quasi-isomorphism induces an isomorphism of Picard stacks) and Lemma
2.2 (line 635: morphisms in the derived category are determined by their `h¹/h⁰`, and the
automorphisms of the zero morphism are `Hom^{−1}`). For an arbitrary complex put
`h¹/h⁰(E^•) := h¹/h⁰([C⁰ → Z¹])` (lines 603–608) and, for `E ∈ D(O_X)` satisfying `(⋆)`,
`h¹/h⁰(E^∨) := h¹/h⁰` of a complex representing `E^∨` on `X_fl`, well defined up to equivalence by
Proposition 2.1 (lines 609–628). Prove Proposition 2.4 (line 674): `h¹/h⁰(E^∨)` is an abelian cone
stack over `X`, equal to `[C(E^{−1})/C(E^0)]` for every local presentation `[E^{−1} → E^0]` with `E^0`
locally free, hence independent of the presentation, and a vector bundle stack when `E` is perfect
of amplitude `[−1, 0]`; in that case `h¹/h⁰(E^∨) ≅ [E_1/E_0]` with `E_i = C(E^{−i})`. *Needs:* 7.2,
7.3; SchemeAndStackFoundations §1.21 (`Stack.quotient`).

**Checks.**

- Over `Spec k`, `E = [O --id--> O]` is acyclic and `h¹/h⁰(E^∨) = [𝔸¹/𝔾_a]` (translation) is a
  point; for the zero differential `h¹/h⁰(E^∨) = 𝔸¹ × B𝔾_a`.
- `E = O[1]` (degree `−1`) gives `h¹/h⁰(E^∨) = C(O) = 𝔸¹`, a sheaf; `E = O[0]` gives `B𝔾_a`, a gerbe
  (examples at lines 631–634).
- `E = Ω_X[0]` for `X` smooth gives `B T_X`, the classifying stack of the tangent bundle, and
  `E = [I/I² → Ω_W|_U]` for a closed immersion `U ⊆ W` into a smooth scheme gives `[N_{U/W}/T_W|_U]`.

### 7.5 Morphisms between stacks h¹/h⁰

For `φ : E → F` in `D(O_X)` between objects satisfying `(⋆)`, let `φ^∨ : h¹/h⁰(F^∨) →
h¹/h⁰(E^∨)` be the induced morphism. Prove:

- `φ^∨` is a morphism of abelian cone stacks; it is representable iff `h^0(φ)` is surjective
  (behrend-fantechi1997 Proposition 2.5, line 695);
- `φ^∨` is a closed immersion iff `h^0(φ)` is an isomorphism and `h^{−1}(φ)` is surjective, and an
  isomorphism iff `h^0(φ)` and `h^{−1}(φ)` are isomorphisms (Proposition 2.6, line 725);
- for a distinguished triangle `E → F → G → E[1]` with `E`, `F` satisfying `(⋆)` and `G` perfect of
  amplitude `[−1, 0]`, `h¹/h⁰(G^∨) → h¹/h⁰(F^∨) → h¹/h⁰(E^∨)` is a short exact sequence of abelian
  cone stacks (Proposition 2.7, line 733).

*Needs:* 7.4.

**Checks.**

- Over `Spec k`, for `E = O[0]`, `F = [O --0--> O]` and `φ` the inclusion in degree `0`: `h^0(φ)` is
  an isomorphism and `h^{−1}(φ) : 0 → O` is not surjective, and `φ^∨ : 𝔸¹ × B𝔾_a → B𝔾_a` is the
  projection, not a closed immersion. For the projection `ψ : F → E`, `h^{−1}(ψ) : O → 0` is
  surjective and `ψ^∨ : B𝔾_a → 𝔸¹ × B𝔾_a` is the zero section, a closed immersion.
- For `E = O[1] → F = 0`, `h^0` is `0 → 0` (surjective) and `φ^∨ : Spec k → 𝔸¹` is representable;
  for `E = 0 → F = O[0]`, `h^0(φ) : 0 → O` is not surjective and `φ^∨ : B𝔾_a → Spec k` is not
  representable.
- The triangle `O → O ⊕ O → O → O[1]` (split, `G = O[0]`) gives `B𝔾_a → B𝔾_a² → B𝔾_a`, exact.

### Examples

- `BT_X = h¹/h⁰(Ω_X^∨)` for smooth `X`, the intrinsic normal sheaf of a smooth stack (8.4).
- `[C(E^{−1})/C(E^0)]` for a two-term complex, the local form of every `h¹/h⁰(E^∨)`.

### Dependencies

Layer 4.1; SchemeAndStackFoundations §§1.10, 1.19–1.22, 2.9; AlgebraicVectorBundles L2A, L2B;
EnhancedDerivedSheaves §0.2, E1.4; Mathlib `SheafOfModules`, `DerivedCategory`. Within the layer,
7.1 → 7.2 → 7.4 → 7.5 and 7.3 → 7.4.

## Layer 8: the truncated relative cotangent complex and the intrinsic normal cone

Throughout, `𝔐` is an algebraic `k`-stack of pure dimension `m` and `f : M → 𝔐` is a morphism of
Deligne–Mumford type from a DM stack `M` over `k` with affine diagonal (Convention 8).

### 8.1 Relative local embeddings

For a smooth morphism `w : W → 𝔐` from an algebraic space, define the relative cotangent sheaf
`Ω_{W/𝔐}` by descent of `Ω_{W_V/V}` along `W_V := W ×_𝔐 V → W` for a smooth atlas `V → 𝔐`; prove it
is locally free of rank the relative dimension, independent of `V`, and compatible with base change;
let `T_{W/𝔐}` be the vector bundle `C(Ω_{W/𝔐})`. Define a relative local embedding of `M` over `𝔐`
as a pair `(U, W)`: an affine scheme `U` with an étale `U → M`, an algebraic space `W` with a smooth
morphism `W → 𝔐`, and a local embedding (unramified morphism of finite type) `U → W` over `𝔐`,
together with the 2-isomorphism of the two composites `U → 𝔐` (behrend-fantechi1997 Definition 3.7,
line 906, and lines 1654–1655). Define morphisms of relative local embeddings (an étale
`M`-morphism `U' → U` and a smooth `𝔐`-morphism `W' → W` compatible with the embeddings; lines
918–927) and the product `(U' ×_M U, W' ×_𝔐 W)` (lines 930–933), which is a relative local embedding
because `M → 𝔐` has unramified diagonal and `M` has affine diagonal. Prove that every point of `M`
lies in the image of a relative local embedding with `U → W` a closed immersion into an affine
scheme (take a lift of `U → 𝔐` to a smooth atlas étale-locally on `U`, and embed `U` in an affine
space over it). For a relative local embedding with conormal sheaf `C_{U/W}` (the degree-one part of
the normal cone of 4.2), define the two-term complex `K_{U,W} := [C_{U/W} → Ω_{W/𝔐}|_U]` of coherent
`O_U`-modules in degrees `−1, 0`, with differential induced by `d`, and the morphism of complexes
induced by a morphism of relative local embeddings (behrend-fantechi1997 lines 952–959). Prove that
it is a quasi-isomorphism, and that composition of morphisms of local embeddings gives composition
of these morphisms of complexes. *Needs:* 4.2; SchemeAndStackFoundations §§1.1, 1.19–1.20.

**Checks.**

- For `M = BG → 𝔐 = Spec k` with `G` finite constant, `(Spec k, Spec k)` is a relative local
  embedding and `K = 0`; the product with itself is `(G, Spec k)`, with `G → Spec k` unramified and
  not an immersion, and again `K = 0`.
- For `M = Spec k[x]/(x²) ⊆ W = 𝔸¹`, `K = [(x²)/(x⁴) → k[x]/(x²)·dx]` with `x² ↦ 2x dx`; in
  characteristic `2` the differential is `0`, matching DerivedModuleAlgebra §0.13's Check.
- For `M = 𝔐` and `f = id`, `(U, U)` with `W = U` gives `K = [0 → Ω_{U/𝔐}] = 0`, since `U → 𝔐` is
  étale.

### 8.2 The truncated relative cotangent complex

Choose a finite cover of `M` by relative local embeddings `(U_i, W_i)`; for each finite sequence
`i_0, …, i_p` the product relative local embedding `(U_{i_0…i_p}, W_{i_0…i_p})` has `U_{i_0…i_p}`
affine and `j : U_{i_0…i_p} → M` affine and étale. Define `τ^{≥−1}L_{M/𝔐} ∈ D(O_M)` as the total
complex of the Čech double complex `p ↦ ⊕ j_* K_{U_{i_0…i_p}, W_{i_0…i_p}}` with the alternating sum
of the morphisms of 8.1 induced by the projections, the transition maps forming a strict
cosimplicial object. Prove:

- its restriction to each `U_i` is canonically isomorphic in `D(O_{U_i})` to `K_{U_i, W_i}`;
- independence of the cover and the embeddings: a refinement induces a quasi-isomorphism, and the
  resulting isomorphism in `D(O_M)` is independent of the refinement;
- `τ^{≥−1}L_{M/𝔐}` satisfies `(⋆)`, has cohomology only in degrees `−1` and `0`, and
  `h^0 = Ω_{M/𝔐}`, the sheaf of relative differentials glued from `Ω_{U/𝔐}` (behrend-fantechi1997
  lines 1649–1651);
- for `𝔐` an algebraic space and `M = Spec B` affine over an affine `𝔐 = Spec A`, `τ^{≥−1}L_{M/𝔐}`
  is the sheaf associated with DerivedModuleAlgebra §0.7's truncation `τ_{≥−1}L_{B/A}`, and on a
  presentation it is Mathlib's `Algebra.Extension.cotangentComplex` (stacks-cotangent Lemma 22.4,
  tag 08V2, line 1724, for the agreement of `τ^{≥−1}L` with the naive cotangent complex on ringed
  topoi).

This object is the truncation of the cotangent complex of `f` restricted to the small étale site
of `M` (behrend-fantechi1997 lines 940–946, citing Illusie; olsson2007 Theorem 8.1, line 1130, for
the full complex on the lisse-étale site); its identification with Olsson's object is not part of
this roadmap. *Needs:* 8.1, 7.3; DerivedModuleAlgebra §0.7; Mathlib
`Algebra.Extension.cotangentComplex`, `Algebra.H1Cotangent`.

**Checks.**

- `M → 𝔐` étale: `τ^{≥−1}L_{M/𝔐} = 0`. `M → 𝔐` smooth: `τ^{≥−1}L_{M/𝔐} = Ω_{M/𝔐}[0]`.
- `M = Spec A`, `A = k[x]/(x²)`, over `Spec k`, through `W = 𝔸¹`: `I/I² = (x²)/(x⁴)` has `k`-basis
  `x², x³`, and `d` sends `x² ↦ 2x dx`, `x³ ↦ 2x² dx = 0` in `A·dx`. For `char k ≠ 2`,
  `h^{−1} = k·x³ ≅ k` and `h^0 = A dx/(x dx) ≅ k`; in characteristic `2`, `d = 0` and
  `h^{−1} ≅ h^0 ≅ A`. A definition by Kähler differentials alone loses `h^{−1}`.
- `M = Spec A`, `A = k[x, y]/(x, y)²`, through `W = 𝔸²`: `I/I² = (x, y)²/(x, y)⁴` has length `7`,
  `Ω_W ⊗ A` has length `6`, and the image of `d` is spanned by `2x dx`, `y dx + x dy`, `2y dy`; for
  `char k ≠ 2`, `h^0` has length `3` and `h^{−1}` length `4`. The class in `h^{−2}` of the full
  cotangent complex (DerivedModuleAlgebra §0.7, Checks) is not seen by `τ^{≥−1}L`.

### 8.3 Functoriality, base change, products and transitivity

Prove:

- functoriality: a 2-commutative square `M' → M` over `𝔐' → 𝔐` of morphisms of Deligne–Mumford type
  induces `u^*τ^{≥−1}L_{M/𝔐} → τ^{≥−1}L_{M'/𝔐'}`, built from compatible relative local embeddings,
  with identity and composition laws; it is an isomorphism when the square is 2-cartesian and
  either `f` or `𝔐' → 𝔐` is flat (olsson2007 Theorem 8.1 (ii), line 1136);
- products: for `M → 𝔐` and `M' → 𝔐'`, `τ^{≥−1}L_{M×M'/𝔐×𝔐'} ≅ pr^*τ^{≥−1}L_{M/𝔐} ⊕
  pr'^*τ^{≥−1}L_{M'/𝔐'}` (behrend-fantechi1997 Proposition 5.7, line 1366, and line 1373);
- local complete intersections: if the relative local embeddings can be chosen regular (`M → 𝔐` a
  local complete intersection morphism), `τ^{≥−1}L_{M/𝔐}` is perfect of amplitude `[−1, 0]`;
- transitivity: for morphisms of Deligne–Mumford type `M' → M → 𝔐` with `u : M' → M` a local
  complete intersection, there is a distinguished triangle
  `u^*τ^{≥−1}L_{M/𝔐} → τ^{≥−1}L_{M'/𝔐} → τ^{≥−1}L_{M'/M} → u^*τ^{≥−1}L_{M/𝔐}[1]`
  (behrend-fantechi1997 lines 1045–1050; stacks-cotangent Lemma 18.8, tag 08SZ, line 1543, for the
  untruncated triangle on a site), the truncation being exact because `h^{−2}(τ^{≥−1}L_{M'/M}) = 0`.

*Needs:* 8.2, 7.3.

**Checks.**

- Flatness is needed: `M = Spec k[x, y]/(xy) → 𝔐 = 𝔸¹`, `(x, y) ↦ x`, is not flat, and its base
  change to the origin is `M' = Spec k[y]`, smooth over `Spec k` with `h^{−1}(τ^{≥−1}L_{M'/k}) = 0`.
  Through `W = 𝔸²` over `𝔸¹`, `τ^{≥−1}L_{M/𝔐} = [A --x·dy--> A dy]`, whose derived pullback to `M'`
  is `[k[y] --0--> k[y] dy]` with `h^{−1} = k[y] ≠ 0`, so the functoriality map is not an
  isomorphism. For the flat `t ↦ t² : 𝔸¹ → 𝔸¹` (char `k ≠ 2`), base change to the origin is an
  isomorphism: both sides are `[A --2t--> A]`, `A = k[t]/(t²)`, with `h^{−1} ≅ h^0 ≅ k`.
- Products: for `M = M' = Spec k[x]/(x²)` over `Spec k`, the product `Spec k[x, y]/(x², y²)` has
  `h^0` free of rank `2` over `k[x,y]/(x², y²)` modulo `(2x dx, 2y dy)`, the sum of the two factors.
- Transitivity for the origin `u : Spec k → 𝔸¹` over `Spec k`: `u^*τ^{≥−1}L_{𝔸¹/k} = k`,
  `τ^{≥−1}L_{pt/k} = 0` and `τ^{≥−1}L_{pt/𝔸¹} = (I/I²)[1] = k[1]`, giving the distinguished triangle
  `k → 0 → k[1] --id--> k[1]`.

### 8.4 The relative intrinsic normal sheaf

Define `N_{M/𝔐} := h¹/h⁰((τ^{≥−1}L_{M/𝔐})^∨)`, an abelian cone stack over `M` by 7.4
(behrend-fantechi1997 Definition 3.6, line 902, and line 1652). Prove that for every relative local
embedding `(U, W)` the quasi-isomorphism of 8.2 gives an isomorphism of abelian cone stacks
`[N_{U/W}/T_{W/𝔐}|_U] ≅ N_{M/𝔐}|_U`, where `T_{W/𝔐}|_U` acts on the normal sheaf `N_{U/W}` through
`T_{W/𝔐}|_U → N_{U/W}` (lines 943–951), compatibly with morphisms of relative local embeddings (lines
952–962). Prove that `N_{M/𝔐}` is a vector bundle stack iff `τ^{≥−1}L_{M/𝔐}` is perfect of
amplitude `[−1, 0]`: "if" is 7.4 (behrend-fantechi1997 Proposition 2.4, line 674); for "only if",
the presentation `C(I/I²) → N_{M/𝔐}|_U` of a relative local embedding `(U, W)` with ideal `I` is a
`T_{W/𝔐}|_U`-torsor and the vector bundle stack `N_{M/𝔐}|_U` is smooth over `U`, so `C(I/I²)` is
smooth over `U`, hence a vector bundle (7.1; Lemma 1.1, line 244), so `I/I²` is locally free (lines 237–239) and `[I/I² → Ω_{W/𝔐}|_U]` is a
complex of vector bundles. In particular `N_{M/𝔐}` is a vector bundle stack when `M → 𝔐` is a
local complete intersection morphism (8.3); the converse fails over a non-reduced base (Checks).
Prove that `N_{M/𝔐} = B T_{M/𝔐}` when `M → 𝔐` is smooth. *Needs:* 7.1, 7.4, 8.2, 8.3.

**Checks.**

- `M → 𝔐` étale: `N_{M/𝔐} = M` (the zero cone stack).
- `M` smooth over `Spec k` of dimension `n`: `N_M = B T_M`, of dimension `n − n = 0`.
- `M = Spec k[x, y]/(x, y)² ⊆ 𝔸²`: `N_M = [C(I/I²)/T_{𝔸²}|_M]` has a fibre `[𝔸³/𝔸²]` over the point,
  of dimension `1`; `I/I²` needs `3` generators over `A = k[x, y]/(x, y)²` but has length `7`,
  not `3 · length(A) = 9`, so it is not free, `τ^{≥−1}L_M` is not perfect and `N_M` is not a vector
  bundle stack.
- A vector bundle stack without a local complete intersection: for the closed point
  `f : M = Spec k → 𝔐 = Spec k[ε]/(ε²)` (pure dimension `0`), `(Spec k, Spec k[ε]/(ε²))` is a
  relative local embedding with `I/I² = (ε) ≅ k` and `Ω_{W/𝔐} = 0`, so `τ^{≥−1}L_{M/𝔐} = k[1]` is
  perfect and `N_{M/𝔐} = C(k) = 𝔸¹` is a vector bundle; but `C_{M/𝔐} = Spec k[t]/(t²)` is not a
  vector bundle stack, so `f` is not a local complete intersection (8.5).

### 8.5 The relative intrinsic normal cone

Prove that for a relative local embedding `(U, W)` the normal cone `C_{U/W}` is a
`T_{W/𝔐}|_U`-cone (behrend-fantechi1997 Lemma 3.2, line 774, in its relative form through
`W ×_𝔐 W`), and that for a smooth morphism `W' → W` of Deligne–Mumford type over `𝔐` and a
compatible local embedding `U → W'`, the sequence `T_{W'/W}|_U → C_{U/W'} → C_{U/W}` is exact
(Proposition 3.1, line 762), so that `(C_{U/W} ⊆ N_{U/W})|_{U'}` is the quotient of
`(C_{U'/W'} ⊆ N_{U'/W'})` by `T_{W'/W}` (Lemma 3.8, line 969). Deduce that there is a unique closed
subcone stack `C_{M/𝔐} ⊆ N_{M/𝔐}` with `C_{M/𝔐}|_U = [C_{U/W}/T_{W/𝔐}|_U]` for every relative local
embedding (Corollary 3.9, line 972; Definition 3.10, line 983), the relative intrinsic normal cone.
Prove:

- `C_{M/𝔐}` has pure dimension `m` and abelian hull `N_{M/𝔐}` (Theorem 3.11, line 985, relative
  form line 1656), since `C_{U/W}` has pure dimension `dim W` (4.2) and `C_{U/W} → [C_{U/W}/T_{W/𝔐}|_U]`
  is smooth of relative dimension `dim W − m`;
- for a closed immersion `U → W` of locally Noetherian schemes with ideal `I`, the normal cone
  `C_{U/W}` is a vector bundle over `U` iff the immersion is regular: "if" is
  SchemeAndStackFoundations §5.5 (`conormal_regular`, `normalCone_eq_normalBundle`); for "only
  if", a vector bundle `C_{U/W} = Spec ⊕ I^n/I^{n+1}` is its own abelian hull with `I/I²` locally
  free (behrend-fantechi1997 lines 237–239), so `Sym(I/I²) → ⊕ I^n/I^{n+1}` is an isomorphism, `I` is quasi-regular
  (stacks-divisors Lemma 21.4, tag 063H) and hence regular (Lemma 22.3, tag 063L);
- `M → 𝔐` is a local complete intersection iff `C_{M/𝔐}` is a vector bundle stack, and then
  `C_{M/𝔐} = N_{M/𝔐}`; for smooth `M → 𝔐`, `C_{M/𝔐} = N_{M/𝔐} = B T_{M/𝔐}` (Proposition 3.12,
  line 1010). For "if": for a relative local embedding `(U, W)`, `C_{U/W}` is a
  `T_{W/𝔐}|_U`-torsor over the vector bundle stack `C_{M/𝔐}|_U`, which is smooth over `U`, so
  `C_{U/W}` is smooth over `U`, hence a vector bundle (Lemma 1.1, line 244), and `U → W` is regular
  by the previous item. The equality `C_{M/𝔐} = N_{M/𝔐}` alone does not imply a local complete
  intersection, although Proposition 3.12 lists it as a third equivalent condition (Checks);
- products: `C_{M×M'/𝔐×𝔐'} = C_{M/𝔐} × C_{M'/𝔐'}` (Proposition 3.13, line 1024);
- base change: for a 2-commutative square `M' → M` over `v : 𝔐' → 𝔐` with `𝔐'` of pure dimension, `v`
  of finite unramified diagonal and `M`, `M'` separated, there is a natural morphism
  `C_{M'/𝔐'} → C_{M/𝔐} ×_𝔐 𝔐'`, a closed immersion when the square is 2-cartesian and an
  isomorphism when moreover `v` is flat (Proposition 7.1, line 1676);
- pullback along a smooth morphism: for `u : M' → M` smooth of Deligne–Mumford type, the sequence
  `B T_{M'/M} → C_{M'/𝔐} → u^*C_{M/𝔐}` is a short exact sequence of cone stacks
  (Proposition 3.14, line 1040, for local complete intersection morphisms; the smooth case is the
  one used in 10.7).

*Needs:* 4.2, 7.1, 7.2, 8.4; 1.3; SchemeAndStackFoundations §5.5 (`conormal_regular`,
`normalCone_eq_normalBundle`).

**Checks.**

- `M = Spec k[x]/(x²) ⊆ 𝔸¹`: `C_{U/W} = M × 𝔸¹` (the normal bundle of the regular embedding), of
  dimension `1 = dim 𝔸¹`, and `C_M = [M × 𝔸¹/T_{𝔸¹}|_M]` has dimension `0`; here `C_M = N_M`, a
  vector bundle stack.
- `M = Spec k[x, y]/(x, y)²`: `C_M` has dimension `0` and `N_M` dimension `1` (8.4), so `C_M ≠ N_M`;
  since a local complete intersection has `C_M = N_M`, the fat point is not one.
- `C = N` without a local complete intersection: for `M = Spec k[x, y]/(x², xy) ⊆ 𝔸²` (a line with
  an embedded point) over `Spec k`, the ideal `I = x·(x, y)` is isomorphic to `J = (x, y)` as a
  `k[x, y]`-module with `I^n = x^n J^n`, so `Sym(I) → ⊕ I^n` is identified with
  `Sym(J) = k[x, y, T_1, T_2]/(y T_1 − x T_2) → ⊕ J^n`, a surjection of three-dimensional domains,
  hence an isomorphism; tensoring with `k[x, y]/I` gives `Sym(I/I²) ≅ ⊕ I^n/I^{n+1}`, so
  `C_{M/𝔸²} = N_{M/𝔸²}` and `C_M = N_M`. But `M` is not a local complete intersection: `x` is killed
  by `(x, y)`, so the local ring at the origin has depth `0` and dimension `1` and is not
  Cohen–Macaulay; correspondingly `I/I²` has rank `1` along the line and needs `2` generators at
  the origin, so `C_M = N_M` is not a vector bundle stack.
- Relative pure dimension with `m < 0`: for `M = Spec k → 𝔐 = B𝔾_m`, which is smooth of relative
  dimension `1` and representable, `C_{M/𝔐} = B T_{M/𝔐} = B𝔾_a` has dimension `0 − 1 = −1 = m`.
- The scheme-level criterion on the closed point `Spec k → Spec k[ε]/(ε²)`: `I = (ε)` has
  `⊕ I^n/I^{n+1} = k[t]/(t²)`, which is not a vector bundle over `Spec k`, and the immersion is not
  regular, since `ε` is a zero-divisor; for `Spec k[x]/(x²) ⊆ 𝔸¹` the cone `M × 𝔸¹` is a line
  bundle and `x²` is a nonzerodivisor.

### Examples

- Smooth `M → 𝔐`: `τ^{≥−1}L = Ω_{M/𝔐}`, `C = N = B T_{M/𝔐}`.
- The fat point `Spec k[x, y]/(x, y)²`, where cone and normal sheaf differ.

### Dependencies

Layers 1, 4 and 7; DerivedModuleAlgebra §0.7; Mathlib `Algebra.Extension.cotangentComplex`;
SchemeAndStackFoundations §§1.1, 1.19–1.20. Within the layer, 8.1 → 8.2 → 8.3 → 8.4 → 8.5.

## Layer 9: obstruction theories

The setting of Layer 8 is in force.

### 9.1 Square-zero extensions and the obstruction class

A square-zero extension over `𝔐` is a closed immersion `T → T̄` of affine schemes over `𝔐` whose
ideal `J` satisfies `J² = 0`. For a morphism `g : T → M` over `𝔐`, an extension is a morphism
`ḡ : T̄ → M` over `𝔐` with a 2-isomorphism `ḡ|_T ≅ g` compatible with the given 2-isomorphisms to
`𝔐`; since `f` has unramified diagonal, extensions form a set, and a sheaf `Ext(g, T̄)` on `T_ét`.
Construct the obstruction class `ω(g) ∈ Ext¹(g^*τ^{≥−1}L_{M/𝔐}, J)` as the class of the morphisms
`h^♯ : g^*C_{U/W} → J` of the local extensions `h : T̄ → W` of `T → U → W` over `𝔐`, which exist on
the affine pieces because `W → 𝔐` is smooth and are well defined up to homotopy (behrend-fantechi1997
lines 1067–1078 and the proof of Proposition 4.1, lines 1097–1121). Prove that an extension exists
iff `ω(g) = 0`, and that the extensions then form a torsor under `Hom(g^*Ω_{M/𝔐}, J)`
(behrend-fantechi1997 lines 1075–1078; DerivedModuleAlgebra §0.25 and Mathlib
`derivationToSquareZeroEquivLift` on affine pieces). Define the morphism of cone stacks
`ob(g) : C(J) → g^*N_{M/𝔐}` induced by `ω(g)` and the vertex morphism `0(g)`, and prove that
`Ext(g, T̄)` is isomorphic to the sheaf of `𝔸¹`-equivariant 2-isomorphisms from `ob(g)` to `0(g)`
(Proposition 4.1, line 1091), that `Aut(0(g)) ≅ Hom(g^*Ω_{M/𝔐}, J)` (Proposition 4.2, line 1122), and
hence that the 2-isomorphisms form a pseudo-torsor (Corollary 4.3, line 1132). *Needs:* 7.5, 8.2,
8.4; DerivedModuleAlgebra §0.25; Mathlib `derivationToSquareZeroEquivLift`.

**Checks.**

- `M → 𝔐` smooth: `ω(g) ∈ Ext¹(g^*Ω_{M/𝔐}, J) = 0` because `T` is affine and `Ω` locally free, and
  extensions exist and form a torsor under `Hom(g^*Ω_{M/𝔐}, J)`.
- `M = Spec k[x]/(x²)` over `Spec k`, `T = Spec k`, `T̄ = Spec k[ε]/(ε²)`, `g` the point: extensions
  are `x ↦ aε`, `a ∈ k`, a torsor under `Hom(Ω_M ⊗ k, k) = k`, and the obstruction vanishes; for
  `T = Spec k[ε]/(ε²)`, `T̄ = Spec k[ε]/(ε³)` and `g` given by `x ↦ ε`, every candidate lift
  `x ↦ ε + aε²` has square `ε² ≠ 0`, so no extension exists and `ω(g) ≠ 0`, in every
  characteristic.
- `M → 𝔐` étale: `τ^{≥−1}L = 0`, so extensions exist uniquely, the infinitesimal lifting property of
  étale morphisms.

### 9.2 Obstruction theories

Define a (relative) obstruction theory for `M` over `𝔐` as an object `E ∈ D(O_M)` satisfying `(⋆)`
with a morphism `φ : E → τ^{≥−1}L_{M/𝔐}` such that `h^0(φ)` is an isomorphism and `h^{−1}(φ)` is
surjective (behrend-fantechi1997 Definition 4.4, line 1139; relative form, line 1657). It is
perfect if `E` is perfect of amplitude `[−1, 0]` (Definition 5.1, line 1259). For a perfect
obstruction theory define the rank `rk E` (locally constant), the virtual dimension
`vd := m + rk E` (lines 1268–1273 and 1665–1666), the obstruction sheaf `Ob := h¹(E^∨)`, the vector
bundle stack `ℰ := h¹/h⁰(E^∨)`, and the obstruction cone `φ^∨(C_{M/𝔐}) ⊆ ℰ` (lines 1143–1149).
*Needs:* 7.3, 7.5, 8.2.

**Checks.**

- `φ = id` on `τ^{≥−1}L_{M/𝔐}` is an obstruction theory; it is perfect iff `N_{M/𝔐}` is a vector
  bundle stack (8.4), in particular when `M → 𝔐` is a local complete intersection
  (behrend-fantechi1997 line 1321), and then `vd = m + rk τ^{≥−1}L`, which is `dim M` when `M` has
  pure dimension (e.g. for a hypersurface in `𝔸^n` over `Spec k`, `vd = n − 1`). Perfectness does
  not force a local complete intersection: for the closed point `Spec k → Spec k[ε]/(ε²)`,
  `τ^{≥−1}L = k[1]` is perfect (8.4, Checks), with `vd = 0 + (0 − 1) = −1 ≠ 0 = dim M`.
- `E = 0 → τ^{≥−1}L_{M/𝔐}` is an obstruction theory iff `M → 𝔐` is étale.
- For `M = ℙ¹` over `Spec k`, `E = [O(1) --0--> Ω_{ℙ¹}]` with the identity on degree `0` is a perfect
  obstruction theory with `rk E = 0`, `vd = 0` and `Ob = O(−1)`; replacing `O(1)` by `0` gives `Ω`
  itself with `vd = 1`.

### 9.3 The characterisations of obstruction theories

Prove that for `E` satisfying `(⋆)` and `φ : E → τ^{≥−1}L_{M/𝔐}` the following are equivalent
(behrend-fantechi1997 Theorem 4.5, line 1162; relative form, line 1657):

1. `φ` is an obstruction theory;
2. `φ^∨ : N_{M/𝔐} → h¹/h⁰(E^∨)` is a closed immersion of cone stacks;
3. for every square-zero extension `T → T̄` over `𝔐` with ideal `J` and every `g : T → M` over `𝔐`,
   the image `φ^*ω(g) ∈ Ext¹(g^*E, J)` vanishes iff `g` extends to `T̄`, and if it vanishes the
   extensions form a torsor under `Ext⁰(g^*E, J) = Hom(g^*h^0(E), J)`;
4. for every such `(T, T̄, g)`, `Ext(g, T̄)` is isomorphic to the sheaf of `𝔸¹`-equivariant
   isomorphisms from `φ^∨ ∘ ob(g)` to the vertex `C(J) → g^*h¹/h⁰(E^∨)`.

Route: (1) ⇔ (2) by 7.5; (2) ⇒ (4) by 9.1; (4) ⇒ (3) by Lemma 2.2 of 7.4; (3) ⇒ (1) by the
argument with trivial square-zero extensions `A ⊕ M` for `h^0` and with `T = M ⊆ T̄ ⊆ W` for
`h^{−1}` (lines 1175–1201). *Needs:* 7.5, 9.1, 9.2.

**Checks.**

- The surjectivity of `h^{−1}(φ)` is needed. Let `char k = 2` and `M = Spec A`, `A = k[x]/(x²)`, so
  that `τ^{≥−1}L_M = [A --0--> A dx]` (8.2). For `E = τ^{≥−1}L_M` and `φ = (0, id)`, `h^0(φ)` is an
  isomorphism and `h^{−1}(φ) = 0` is not surjective. Condition (3) fails for `T = M`,
  `T̄ = Spec k[x]/(x³)`, `J = (x²)/(x³)` and `g = id`: `φ^*ω(g)` factors through `φ^{−1} = 0`, so it
  vanishes, while `g` has no extension because `(x + a x²)² = x² ≠ 0` in `k[x]/(x³)` for every `a`.
- For `M` smooth over `𝔐`, `φ : Ω_{M/𝔐}[0] → τ^{≥−1}L_{M/𝔐}` is the identity, `N = B T_{M/𝔐}` and
  `φ^∨` is the identity of `B T_{M/𝔐}`, a closed immersion.
- An obstruction theory need not be a quasi-isomorphism: for `M = ℙ¹`, `E = [O(1) --0--> Ω_{ℙ¹}]`
  satisfies (1) with `h^{−1}(E) = O(1) ≠ 0 = h^{−1}(τ^{≥−1}L_{ℙ¹})`, and
  `φ^∨ : B T_{ℙ¹} → [C(O(1))/T_{ℙ¹}] = C(O(1)) × B T_{ℙ¹}` is the zero section: a closed immersion
  that is not an isomorphism.

### 9.4 The basic example

Let `X = Y ×_W V` with `V`, `W` smooth DM stacks over `k`, `i : Y → W` a regular local embedding
with normal bundle `N_{Y/W}`, `j : X → V`, `g : X → Y`. Prove that
`E := [g^*N_{Y/W}^∨ → j^*Ω_V]` (degrees `−1, 0`) with its natural morphism to `τ^{≥−1}L_X` is a
perfect obstruction theory for `X` over `Spec k` (behrend-fantechi1997 lines 1503–1519). In
particular, for the zero locus `X = Z(s)` of a section `s` of a vector bundle `V → W` of rank `r`
over a smooth `W` of pure dimension `n`, `E = [V^∨|_X → Ω_W|_X]` is a perfect obstruction theory of
virtual dimension `n − r`. *Needs:* 9.2, 9.3, 4.2.

**Checks.**

- `W = 𝔸¹`, `V = O`, `s = x²`: `X = Spec k[x]/(x²)`, `E = [O_X --2x dx--> O_X dx]` is
  `τ^{≥−1}L_X` itself, perfect, `vd = 0`.
- `s = 0` on `W = 𝔸¹`: `X = 𝔸¹`, `E = [O --0--> Ω_{𝔸¹}]`, `vd = 0`, `Ob = O`.
- `s` regular: `X → W` is a regular embedding and `E ≅ τ^{≥−1}L_X`.

### Examples

- Zero loci of sections of vector bundles on smooth stacks, the model for all local computations.
- `M = ℙ¹`, `E = [O(1) --0--> Ω_{ℙ¹}]`, an obstruction theory of virtual dimension `0`.

### Dependencies

Layers 7–8; DerivedModuleAlgebra §0.25; Mathlib `derivationToSquareZeroEquivLift`. Within the
layer, 9.1 → 9.2 → 9.3 → 9.4.

## Layer 10: virtual fundamental classes

In this layer `M` is moreover separated, so that it admits a proper cover (1.1) and has affine
diagonal, and `φ : E → τ^{≥−1}L_{M/𝔐}` is a perfect obstruction theory of constant rank `r`.

### 10.1 Global resolutions

Let `F^• = [F^{−1} → F^0]` and `H^• = [H^{−1} → H^0]` be global resolutions of `E` (7.3), with
`F_i := C(F^{−i})`, `H_i := C(H^{−i})` and the presentations `F_1 → 𝔈` and `H_1 → 𝔈` of
`𝔈 := h¹/h⁰(E^∨)` given by 7.4, which are an `F_0`-torsor and an `H_0`-torsor. Prove that the fibre
product `K_1 := F_1 ×_𝔈 H_1` is a vector bundle over `M` and that the projections `α : K_1 → F_1`
and `α' : K_1 → H_1` are surjective morphisms of vector bundles with kernels `H_0` and `F_0`,
hence smooth. Route: the statement is étale-local on `M`. On an affine `U` étale over `M` the
isomorphism `H^• ≅ F^•` in `D(O_U)` is represented by a morphism of complexes `ψ`, necessarily a
quasi-isomorphism, because `H^•` is a
bounded complex of projective modules and quasi-coherent sheaves have no higher étale cohomology
on `U` (SchemeAndStackFoundations §2.10 `quasiCoherent_topology_comparison` with §2.6). There
`K^0 := H^0 ⊕ F^0` and `K^{−1} := F^{−1} ×_{F^0} K^0 ≅ F^{−1} ⊕ H^0`, with `K^0 → F^0` given by
`(ψ^0, id)`, form a two-term complex of vector bundles receiving `F^•` and `H^•` by degreewise
split monomorphisms, split for `H^{−1} → F^{−1} ⊕ H^0` because the mapping cone of `ψ` is an exact
complex of vector bundles (behrend-fantechi1997 proof of Proposition 5.3, lines 1303–1312), and
`C(K^{−1})` is `K_1|_U` with `α`, `α'` the duals of these monomorphisms. Since `K_1` is defined on
all of `M`, no morphism of complexes `H^• → F^•` on `M` is needed; the source assumes one, and on
a stack the isomorphism in `D(O_M)` need not be one (Checks). *Needs:* 7.1, 7.3, 7.4;
SchemeAndStackFoundations §§2.6, 2.10.

**Checks.**

- Two global resolutions of `E = 0`: `F^• = [0 → 0]` and `H^• = [O --id--> O]`. Then `𝔈 = M`,
  `K_1 = M ×_M (𝔸¹ × M) = 𝔸¹ × M`, `α : 𝔸¹ × M → M` has kernel `H_0 = 𝔸¹ × M`, and `α' = id` has
  kernel `F_0 = 0`.
- For `E = Ω_M[0]` with `M` smooth of dimension `n`, `F^• = [0 → Ω_M]` and `H^• = [G → Ω_M ⊕ G]` (`G`
  locally free of rank `g`, mapping identically onto the second summand) are global resolutions:
  `F_1 = M`, so `K_1 ≅ H_0`, the total space of `T_M ⊕ G^∨`, of rank `n + g`, and `α'` is the
  projection onto `H_1 = C(G)` with kernel `F_0 = T_M`; the ranks agree,
  `rk F_1 + rk H_0 = 0 + (n + g) = g + n = rk H_1 + rk F_0`.
- The comparison need not be a morphism of complexes: on `M = ℙ¹` over `Spec k`, the perfect
  obstruction theory `E = [O(−4) --0--> Ω_{ℙ¹}]` (projection to `Ω_{ℙ¹}`; 10.4 with `a = −4`) has
  `Hom_{D(O_M)}(E, E) = k ⊕ k ⊕ Ext¹(Ω_{ℙ¹}, O(−4))` with `Ext¹(Ω_{ℙ¹}, O(−4)) = H¹(ℙ¹, O(−2)) ≅ k`,
  while morphisms of complexes `E → E` are pairs of scalars and homotopies lie in
  `Hom(Ω_{ℙ¹}, O(−4)) = H⁰(ℙ¹, O(−2)) = 0`. For `0 ≠ ξ` in the `Ext¹`, `1 + ξ` is an automorphism of
  `(E, φ)` (it commutes with the projection, since `Hom(O(−4)[1], Ω_{ℙ¹}) = 0`) that no morphism of
  complexes represents; taking `F^• = H^• = E` with the identifications `id` and `1 + ξ`, the fibre
  product `K_1` is still defined.

### 10.2 The virtual fundamental class

For a global resolution `F^• = [F^{−1} → F^0]` of `E`, put `F_i := C(F^{−i})`, so that
`h¹/h⁰(E^∨) ≅ [F_1/F_0]` (7.4), and let `C(F^•) := C_{M/𝔐} ×_{h¹/h⁰(E^∨)} F_1`, a closed subcone of
`F_1` of pure dimension `m + rk F^0` by 7.2 and 8.5 (behrend-fantechi1997 Definition 5.2, line 1282,
and lines 1286–1298; relative form, lines 1664–1667). Define the virtual fundamental class
`[M, E]^vir := 0_{F_1}^![C(F^•)] ∈ A_{vd}(M)_ℚ`, `vd = m + rk F^0 − rk F^{−1} = m + r`, with
`0_{F_1}^!` the Gysin map of the zero section (5.1). *Needs:* 5.1, 7.2, 7.4, 8.5, 9.2.

**Checks.**

- `M` smooth over `𝔐` and `E = Ω_{M/𝔐}[0]` with `F^• = [0 → Ω_{M/𝔐}]`: `F_1 = M`, `C_{M/𝔐} = B T_{M/𝔐}
  = h¹/h⁰(E^∨)`, `C(F^•) = M`, and `[M, E]^vir = [M] ∈ A_{dim M}`, with `dim M = m + rk Ω_{M/𝔐}`.
- `M = ℙ¹`, `E = [O(1) --0--> Ω_{ℙ¹}]` over `Spec k`: `F_1 = C(O(1))`, the total space of `O(−1)`,
  `C(F^•)` is its zero section, and `[ℙ¹, E]^vir = 0^!0_*[ℙ¹] = c_1(O(−1)) ∩ [ℙ¹]`, of degree `−1`.
  With `F_1` taken as the total space of `O(1)` (the wrong dualisation) the degree would be `+1`.
- If `vd < 0` then `[M, E]^vir = 0`, since `A_{vd}(M) = 0`.

### 10.3 Independence of the global resolution

Prove that `[M, E]^vir` does not depend on the global resolution: for two global resolutions
`F^•`, `H^•` and the comparison `α : K_1 → F_1`, `α' : K_1 → H_1` of 10.1 (smooth surjective), the
cones `C(F^•)` and `C(H^•)` have the same inverse image `C_{M/𝔐} ×_{h¹/h⁰(E^∨)} K_1` in `K_1`, and
`0_{F_1}^! = 0_{K_1}^! ∘ α^*`, `0_{H_1}^! = 0_{K_1}^! ∘ α'^*` (behrend-fantechi1997 Proposition 5.3,
line 1299, and lines 1313–1320; 5.1), so both resolutions give
`0_{K_1}^![C_{M/𝔐} ×_{h¹/h⁰(E^∨)} K_1]`. It depends only on the isomorphism class of `(E, φ)`.
*Needs:* 10.1, 10.2, 5.1.

**Checks.**

- The two resolutions of `E = 0` of 10.1 give `0_M^![M] = [M]` and `0_{𝔸¹×M}^![𝔸¹ × M] = [M]`.
- Replacing `F^•` by `F^• ⊕ [G --id--> G]` replaces `F_1` by `F_1 × G_1` and `C(F^•)` by
  `C(F^•) × G_1`, and `0^!_{F_1 × G_1}[C(F^•) × G_1] = 0^!_{F_1}[C(F^•)]` by 5.1: the class does not
  change.

### 10.4 No obstructions and locally free obstructions

Prove (behrend-fantechi1997 Propositions 5.5, 5.6 and 7.3, lines 1353, 1357 and 1702):

- if `Ob = 0` (equivalently `h^{−1}(E) = 0` and `h^0(E)` locally free), then `M → 𝔐` is smooth,
  `vd` is its relative dimension plus `m`, and `[M, E]^vir = [M]`;
- if `M → 𝔐` is smooth, then `Ob` is locally free of rank `s = dim M − vd` and
  `[M, E]^vir = c_s(Ob) ∩ [M]`, because `C(F^•)` is the subbundle `im(F_0 → F_1)` with quotient `Ob`
  and `0_{F_1}^![K] = c_s(F_1/K) ∩ [M]` for a subbundle `K ⊆ F_1` (5.1, 5.2).

The smoothness criterion uses Mathlib's `Algebra.FormallySmooth` on the local presentations of 8.2.
*Needs:* 10.2, 10.3, 5.2, 8.2; Mathlib `Algebra.FormallySmooth`,
`Algebra.FormallySmooth.iff_split_injection`.

**Checks.**

- `M = ℙ¹`, `E = [O(a) --0--> Ω_{ℙ¹}]`: `Ob = O(−a)`, `s = 1`, `deg [ℙ¹, E]^vir = −a`; for `a = 0`,
  `Ob = O` and the class is `c_1(O) ∩ [ℙ¹] = 0`, although `M` is smooth of dimension `1 > vd = 0`.
- `M = Spec k`, `E = [O^s → 0]`: `Ob = O^s`, `vd = −s`, and `c_s(O^s) ∩ [pt] ∈ A_{−s} = 0`.
- Smoothness of `M` is needed for the second item: for `M = Spec A`, `A = k[x]/(x²)`, and
  `E = τ^{≥−1}L_M = [A --2x--> A dx]` (char `k ≠ 2`), `Ob = A/(x)` is not locally free, and
  `[M, E]^vir = [M] = 2·[pt]`, the class of a regular zero locus (9.4).

### 10.5 Products

Prove that for perfect obstruction theories `E` for `M/𝔐` and `E'` for `M'/𝔐'` with global
resolutions, `E ⊞ E'` is a perfect obstruction theory for `M × M'` over `𝔐 × 𝔐'` with a global
resolution, and `[M × M', E ⊞ E']^vir = [M, E]^vir × [M', E']^vir` in
`A_{m + m' + r + r'}(M × M')_ℚ` (behrend-fantechi1997 Propositions 5.7 and 7.4, lines 1366 and 1713).
*Needs:* 3.5, 8.3, 8.5, 10.2.

**Checks.**

- `M' = Spec k`, `E' = 0`: the product formula is the identity.
- `M = M' = ℙ¹` with `E = E' = [O(1) --0--> Ω]`: `deg [ℙ¹ × ℙ¹]^vir = (−1)·(−1) = 1`.

### 10.6 Pullback

Consider a 2-cartesian square `M' → M` over `v : 𝔐' → 𝔐` with `𝔐'` of pure dimension `m'`, `v` with
finite unramified diagonal, and `M`, `M'` separated. Prove that `u^*E` with the induced morphism is a
perfect obstruction theory for `M'/𝔐'` with a global resolution, and that
`v^![M, E]^vir = [M', u^*E]^vir` when `v` is flat (then `v^! = v^*`) and when `v` is a regular local
embedding and `𝔐` is reduced (behrend-fantechi1997 Proposition 7.2, line 1682, stated there for
`𝔐`, `𝔐'` smooth of constant dimension, line 1668). Route: in the flat case
`C_{M'/𝔐'} = v^*C_{M/𝔐}` (8.5) and `v^!` commutes with `0^!`; in the regular case Vistoli's rational
equivalence (4.4), applied on the relative local embeddings `(U, W)` of 8.1 and descended along
`T_{W/𝔐}|_U` as in behrend-fantechi1997 Lemma 5.9 (line 1397), gives `v^![C(F^•)] = [C(u^*F^•)]`
(lines 1690–1699). The regular case uses 4.4 on `W`, which is smooth over `𝔐` and so, when `𝔐` is
reduced, is reduced and of pure dimension on each connected component; this is the only use of
the smoothness of `𝔐` and `𝔐'` in the source's proof.
*Needs:* 4.4, 4.5, 8.1, 8.3, 8.5, 10.2.

**Checks.**

- `v` an open immersion: the class restricts.
- `v : Spec k → 𝔸¹` the origin, `M = 𝔸¹ × Y → 𝔐 = 𝔸¹` the projection with `Y` smooth and
  `E = Ω_{M/𝔐}`: `[M]^vir = [M]`, `M' = Y`, and `v^![𝔸¹ × Y] = [Y] = [Y]^vir`.
- Over the non-reduced `𝔐 = Spec k[ε]/(ε²)` the flat case still applies (`C_{M'/𝔐'} = v^*C_{M/𝔐}`
  by 8.5, with no condition on `𝔐`), while the regular case is not covered: every `W` smooth over
  `𝔐` is non-reduced, and 4.4 does not construct `β` there.

### 10.7 Functoriality

For a 2-cartesian square `X' → X` over `v : Z' → Z`, of stacks over `𝔐` with finite unramified
diagonal over `𝔐`, with `v` a local complete intersection morphism, and perfect obstruction theories
`E` for `X/𝔐`, `F` for `X'/𝔐` with global resolutions, define a compatibility datum as a morphism of
distinguished triangles from `u^*E → F → g^*τ^{≥−1}L_{Z'/Z}` to the transitivity triangle of 8.3
(behrend-fantechi1997 Definition 5.8, line 1381; relative form, lines 1721–1733). Here `v^!` is the Gysin map of the local complete intersection morphism `v` (4.5): flat pullback
when `v` is smooth, and when `Z'`, `Z` are smooth over `𝔐` the composite of the Gysin map of the
graph `Z' → Z' ×_𝔐 Z`, a regular local embedding, with flat pullback along the projection to `Z`
(behrend-fantechi1997 lines 1489–1498). Prove that compatible obstruction theories satisfy
`v^![X, E]^vir = [X', F]^vir` when `v` is smooth, or when `𝔐` is reduced and `Z'` and `Z` are
smooth over `𝔐` (Proposition 5.10, line 1428; Proposition 7.5, line 1734, whose base is smooth of
constant dimension, line 1668), using in the second case the rational equivalence of
behrend-fantechi1997 Lemma 5.9 (line 1397), descended from 4.4 applied on `Z ×_𝔐 W` for the
relative local embeddings `(U, W)` of `X` over `𝔐`; `Z ×_𝔐 W` is smooth over `𝔐`, hence reduced and
of pure dimension on each connected component when `𝔐` is reduced. The smooth case uses no
hypothesis on `𝔐`.
*Needs:* 4.4, 5.1, 7.5, 8.3, 8.5, 10.2, 10.6.

**Checks.**

- `v = id`: compatibility forces `F ≅ u^*E` and the statement is trivial.
- `Z' = Z × 𝔸¹ → Z` the projection, `X' = X × 𝔸¹`, `F = E ⊞ Ω_{𝔸¹}`: `v^* [X, E]^vir =
  [X, E]^vir × [𝔸¹] = [X', F]^vir`, matching 10.5.

### 10.8 Virtual counts

For `M` proper over `k`, define the virtual degree `∫_M α ∩ [M, E]^vir ∈ ℚ` for a class `α` of
degree `vd` (a product of Chern classes of vector bundles on `M`), and, when `vd = 0`, the virtual
count `∫_M [M, E]^vir ∈ ℚ` (6.3). Prove deformation invariance: let `𝔐` be reduced, `B` a smooth
connected curve over `k`, and `M → 𝔐 × B` a morphism of Deligne–Mumford type with `M` proper over
`B` and a perfect obstruction theory over `𝔐 × B` with a global resolution; then
`b ↦ ∫_{M_b} [M_b, E_b]^vir` is constant on `B(k)`, where `M_b` is the fibre with the pulled-back
theory of 10.6. Route: `[M_b, E_b]^vir = i_b^![M, E]^vir` by the regular case of 10.6 for the
regular local embedding `𝔐 × {b} → 𝔐 × B`, whose target is reduced because it is smooth over the
reduced `𝔐`; `i_b^!` commutes with pushforward to `B`, and the pushforward of `[M, E]^vir` to
`A_1(B)_ℚ = ℚ·[B]` restricts to the same multiple of `[b]` for every `b`.
*Needs:* 6.3, 10.2, 10.6; 3.3, 4.5.

**Checks.**

- `M = Z(s)` for a regular section `s` of `V` on a smooth proper `W` with `vd = 0`: the virtual count
  is the number of points of `Z(s)` counted with multiplicity, `∫ c_r(V) ∩ [W]`; for `W = ℙ¹`,
  `V = O(2)`, `s = x² + y²` over `ℂ`, it is `2`.
- `M = BG` over `Spec k` with `E = 0`: `vd = 0` and the virtual count is `1/|G|`.

### Examples

- `[ℙ¹, [O(a) --0--> Ω]]^vir = −a·[pt]`.
- Zero loci of sections: the virtual class is the localised top Chern class `0^![C_{Z/W}]`, the
  refined Gysin class `i^![V]` of SchemeAndStackFoundations §5.5 on schemes.

### Dependencies

Layers 4–9; SchemeAndStackFoundations §§2.6, 2.10. Within the layer, 10.1 → 10.2 → 10.3 → 10.4,
10.5, 10.6 → 10.7, 10.8.

## Layer 11: obstruction theories of spaces of maps from curves

### 11.1 The setting

Let `𝔅` be an algebraic `k`-stack of pure dimension `b`, and `π_𝔅 : 𝒞 → 𝔅` a representable morphism
whose base change to every scheme `T → 𝔅` is a prestable family in the sense of StableReduction
Layer 3 (`PrestableFamily`: proper, flat, at worst nodal, of pure relative dimension one, with
geometrically connected fibres). Let `X` be a smooth quasi-projective `k`-scheme, `M` a separated
DM stack over `k`, `f : M → 𝔅` of Deligne–Mumford type, `π : 𝒞_M := 𝒞 ×_𝔅 M → M` the base change and
`F : 𝒞_M → X` a morphism. Say that `(M, F)` is *a relative space of maps from `𝒞` to `X`* if for every
square-zero extension `T → T̄` over `𝔅` (9.1) and every `g : T → M` over `𝔅`, restriction is a
bijection from the extensions of `g` to `T̄` onto the extensions of `F ∘ 𝒞_g : 𝒞_T → X` to `𝒞_{T̄}`.
Every open substack of the stack of morphisms `Mor_𝔅(𝒞, X)`, when that stack is a DM stack, is such
a space (behrend1997 line 135 and Proposition 4, line 139); the hypothesis ties `M` to the moduli
problem, and without it the statement of 11.4 is false (Checks). *Needs:* 9.1; StableReduction
Layer 3 (`PrestableFamily`); SchemeAndStackFoundations §1.19.

**Checks.**

- `X = Spec k`: `(M, F)` is a relative space of maps iff `M → 𝔅` is formally étale, hence étale
  (`f` is of finite type and of Deligne–Mumford type).
- `𝔅 = Spec k`, `𝒞 = C` a fixed smooth projective curve and `M` an open subscheme of the scheme of
  morphisms `Mor(C, X)`: this is the setting of behrend-fantechi1997 Proposition 6.2 (line 1602).
- Without the hypothesis the conclusion of 11.4 fails: for `𝔅 = Spec k`, `C = ℙ¹`, `X = ℙ¹` and `M` a
  single point `Spec k` carrying the identity map `F = id : ℙ¹ → ℙ¹`, `h^0(E) = H⁰(ℙ¹, T_{ℙ¹})^∨ ≅ k³`
  while `h^0(τ^{≥−1}L_{M/k}) = 0`.

### 11.2 Derived pushforward and duality along prestable families

Construct the morphism of ringed sites `π : (𝒞_M)_ét → M_ét` of the representable morphism `π`,
`(U → M) ↦ 𝒞_U`, as SchemeAndStackFoundations §1.10's `smallEtale_map` does for algebraic spaces,
and the derived functors `Lπ^*` and `Rπ_*` with their adjunction (EnhancedDerivedSheaves E1.4).
Prove that for a locally free `V` of finite rank on `𝒞_M`, `Rπ_*V` is perfect of amplitude
`[0, 1]` and commutes with base change along `M' → M` (StableReduction Layer 2, cohomology and base
change, on étale charts of `M`). Construct the relative dualising sheaf `ω_π`, invertible, by étale
descent of StableReduction Layer 2's `ω_{𝒞_U/U}` along its base-change isomorphisms, the trace
`R¹π_*ω_π → O_M`, and prove Serre duality `(Rπ_*V)^∨ ≅ Rπ_*(V^∨ ⊗ ω_π)[1]` and the adjunction
`Rπ_* ⊣ π^!` with `π^! = Lπ^*(−) ⊗ ω_π[1]` on `D(O_M)`, compatible with base change
(SchemeAndStackFoundations §2.20 on étale charts; behrend-fantechi1997 lines 1539–1545). *Needs:*
7.3; SchemeAndStackFoundations §§1.10, 2.20; StableReduction Layer 2; EnhancedDerivedSheaves E1.4.

**Checks.**

- `V = O` on a family of genus-`g` prestable curves: `R⁰π_*O = O_M` and `R¹π_*O` is locally free of
  rank `g`; duality identifies `R¹π_*ω_π` with `O_M` through the trace.
- For a single smooth curve `C` of genus `g` over `k` and `V = L` of degree `d`, the Euler
  characteristic of `Rπ_*L` is `d + 1 − g`, and for `V = ω_C` it is `g − 1`.
- On a nodal fibre `ω_π` restricts to each component `E` with degree
  `2 g(Ẽ) − 2 + #(branches above nodes on E)` (StableReduction Layer 2), not `2 g(Ẽ) − 2`.

### 11.3 The Kodaira–Spencer morphism

The stack `𝒞_M` is a DM stack with affine diagonal (it is representable and separated over `M`),
and `𝒞_M → 𝒞` is of Deligne–Mumford type. Construct `e : F^*Ω_X → τ^{≥−1}L_{𝒞_M/𝒞}` from relative
local embeddings of `𝒞_M` over `𝒞` of graph form `U' → W' × X`, with `W'` smooth over `𝒞` and the
second component `F|_{U'}`: the pullback of `Ω_X` along the projection to `X` maps to the degree-`0`
term `Ω_{W'×X/𝒞}|_{U'}`, compatibly with morphisms of such embeddings, and the maps glue on the
Čech model of 8.2. Compose with the flat base-change isomorphism
`τ^{≥−1}L_{𝒞_M/𝒞} ≅ π^*τ^{≥−1}L_{M/𝔅}` (8.3, since `π_𝔅` is flat and the square is 2-cartesian), and define
`φ : E := (Rπ_* F^*T_X)^∨ ≅ Rπ_*(F^*Ω_X ⊗ ω_π)[1] → τ^{≥−1}L_{M/𝔅}` as the adjoint of
`e ⊗ ω_π[1] : F^*Ω_X ⊗ ω_π[1] → π^*τ^{≥−1}L_{M/𝔅} ⊗ ω_π[1] = π^!τ^{≥−1}L_{M/𝔅}` (behrend-fantechi1997
lines 1583–1599; behrend1997 lines 148–153, the relative form). *Needs:* 8.3, 11.2.

**Checks.**

- `X = Spec k`: `E = 0` and `φ = 0`.
- `𝔅 = Spec k`, `M = Mor(C, X)`: at a point `[F]`, `h^0(φ)` is dual to the tangent map
  `H⁰(C, F^*T_X) → T_{[F]}Mor(C, X)`, which is the classical isomorphism.
- The composite `F^*Ω_X → π^*Ω_{M/𝔅}` on `h^0` is the differential of `F` in the direction of the
  base; for `M → 𝔅` étale and `X = Spec k` it is `0 → 0`.

### 11.4 The obstruction theory

Prove: if `(M, F)` is a relative space of maps from `𝒞` to `X` (11.1), then
`φ : (Rπ_* F^*T_X)^∨ → τ^{≥−1}L_{M/𝔅}` is a perfect relative obstruction theory for `M` over `𝔅`,
with obstruction sheaf `Ob = R¹π_* F^*T_X` (behrend-fantechi1997 Proposition 6.2, line 1602, for
`𝔅 = Spec k`; behrend1997 lines 148–153 for the relative form). Route: criterion (3) of 9.3. For a
square-zero extension `T → T̄` over `𝔅` with ideal `J` and `g : T → M`, extensions of
`F_T : 𝒞_T → X` to `𝒞_{T̄}` are obstructed by a class in `Ext¹(F_T^*Ω_X, π^*J)` and form a torsor under
`Hom(F_T^*Ω_X, π^*J)` (SchemeAndStackFoundations §4.1 for smooth targets; DerivedModuleAlgebra §0.25
on affine pieces); duality (11.2) identifies `Ext^i_{𝒞_T}(F_T^*Ω_X, π^*J)` with
`Ext^{i−1}_T(g^*E, J)` (behrend-fantechi1997 lines 1609–1614) compatibly with `φ^*ω(g)`; the
hypothesis of 11.1 transports these to extensions of `g`. *Needs:* 9.3, 11.1–11.3;
SchemeAndStackFoundations §4.1; DerivedModuleAlgebra §0.25.

**Checks.**

- `X = Spec k`: `E = 0` is an obstruction theory exactly when `M → 𝔅` is étale, which is the
  hypothesis of 11.1 in this case.
- `𝔅 = Spec k`, `C = ℙ¹`, `X = ℙ^r`, maps of degree `d`: `H¹(ℙ¹, F^*T_{ℙ^r}) = 0` by the Euler
  sequence, so `Ob = 0` and `M` is smooth of dimension `(r + 1)d + r` (10.4).
- `𝔅 = Spec k`, `C` an elliptic curve and `X = C`: for `F` an isomorphism, `F^*T_X = O_C`,
  `h^0(E)^∨ = H⁰(C, O) = k` and `Ob = H¹(C, O) ≅ k`, while `Mor(C, C)` near `F` is the
  one-dimensional smooth family of translates: `vd = 0`, `M` smooth of dimension `1`, and
  `[M]^vir = c_1(Ob) ∩ [M] = 0` since `Ob` is trivial on the family of translates.

### 11.5 Global resolutions

Prove: if there is an invertible sheaf on `𝒞_M` that is ample on the fibres of `π`, then for every
locally free `V` of finite rank on `𝒞_M`, `Rπ_*V` is isomorphic to a two-term complex
`[R¹π_*H → R¹π_*G]` of locally free sheaves, built from `G := π^*π_*(V ⊗ L^{⊗N}) ⊗ L^{⊗−N}` and the
kernel `H` of `G → V` for `N` large (behrend1997 Proposition 5, line 165, using that `M` is
quasi-compact and that the fibres are reduced curves, so `H⁰(C_t, L^{⊗−N}) = 0`); hence the
obstruction theory of 11.4 has a global resolution, and `[M]^vir` is defined (10.2). *Needs:* 11.2,
10.1; StableReduction Layer 2 (relative ampleness, cohomology and base change).

**Checks.**

- `V = O`, a single smooth curve over `k`: the construction gives `Rπ_*O ≅ [H¹(C, H) → H¹(C, G)]`
  with Euler characteristic `1 − g`.
- Reducedness is used: on a non-reduced curve such as a double line, `H⁰(L^{⊗−N})` need not vanish
  for ample `L`; prestable families have reduced fibres.

### 11.6 Rank and virtual dimension

Prove that on the open and closed substack of `M` where the fibres of `π` have arithmetic genus `g`
and `deg F^*T_X = δ` on fibres, `rk E = χ(C_t, F_t^*T_X) = δ + dim X · (1 − g)`, by Riemann–Roch on
proper curves (SchemeAndStackFoundations §3.3, with `χ(O_{C_t}) = 1 − g` from StableReduction
Layer 2), so that `vd = b + δ + dim X · (1 − g)` (behrend1997 lines 157–161 and 193–197; li-tian1998
Theorem 4.3 (1), line 1586). For `δ = ∫_β c_1(T_X)` and `b = 3g − 3 + n`, the dimension of the stack
of prestable `n`-pointed curves of genus `g` (behrend1997 Proposition 2, line 99),
`vd = ∫_β c_1(T_X) + (dim X − 3)(1 − g) + n`. *Needs:* 11.4, 11.5; SchemeAndStackFoundations §3.3;
StableReduction Layer 2.

**Checks.**

- `X = ℙ^r`, `g = 0`, `β = d` lines, `b = n − 3`: `vd = (r + 1)d + r + n − 3`, which for `r = 2`,
  `d = 1`, `n = 0` is `2`, the dimension of the space of lines in `ℙ²`.
- `X` a Calabi–Yau threefold (`c_1(T_X) = 0`, `dim X = 3`): `vd = n` for every `g` and `β`, so
  `vd = 0` for `n = 0`.
- `X = Spec k`: `vd = b`.

### Examples

- The space of morphisms from a fixed curve to a smooth projective variety, with the obstruction
  theory of behrend-fantechi1997 Proposition 6.2.
- Over the stack of prestable curves, an open substack of the relative space of maps whose points
  are stable maps carries the Gromov–Witten obstruction theory of Behrend.

### Dependencies

Layers 8–10; StableReduction Layers 2–3; SchemeAndStackFoundations §§1.10, 2.20, 3.3, 4.1;
EnhancedDerivedSheaves E1.4; DerivedModuleAlgebra §0.25. Within the layer, 11.1 → 11.2 → 11.3 →
11.4 → 11.5 → 11.6.

## Downstream consumers

- MotivicStructuresInModuliOfCurves uses rational Chow groups of the Deligne–Mumford stacks
  `M̄_{g,n}`, the Gysin pullbacks and intersection products on them and the rational degree of
  zero-cycles; it consumes Layers 2–6 here (2.3, 4.5, 5.3, 6.3).
- A roadmap on the stacks of stable maps and algebraic Gromov–Witten invariants: the Artin stack
  `𝔐_{g,n}` of prestable curves (behrend1997 Proposition 2), the proper DM stack `M̄_{g,n}(X, β)`
  (behrend-manin1996 Theorem 3.14, line 1018; fulton-pandharipande1997 Theorem 1, line 581), its
  virtual class from Layers 10–11, the Gromov–Witten axioms (behrend1997 Theorem 6, line 198;
  li-tian1998 Theorem 4.3, line 1585) and the quintic invariants `N_{g,d}` of
  chang-guo-li2021 (Remark 0.2, lines 165–174), all consumers of Layers 10–11.
- Torus localisation of virtual classes (graber-pandharipande1999 Proposition 1, line 222) and
  cosection localisation (kiem-li2013 Theorem 1.1, line 21) consume Layers 8–10.
- A roadmap on residual gerbes identifies the integral zero-dimensional substacks `𝒱_x` of 6.3 with
  residual gerbes and `κ(x)` with the residue field of the point.
- A roadmap on Kresch's Chow groups of Artin stacks consumes Layers 2–5 as the groups `A°_*` of
  kresch1999 Theorem 2.1.12 (line 213) and proves the comparison (ii) of that theorem.
- A roadmap on the full cotangent complex of morphisms of algebraic stacks compares its truncation
  with 8.2 (olsson2007 Theorem 8.1).

## References

- [vistoli1989] A. Vistoli, *Intersection theory on algebraic stacks and on their moduli spaces*,
  Invent. Math. 97 (1989), 613–670. §1 degrees and local embeddings, §2 moduli spaces, §3 Chow
  groups and Gysin homomorphisms, §4 the rational equivalence, §5 bivariant classes, §6 (6.1).
- [behrend-fantechi1997] K. Behrend, B. Fantechi, *The intrinsic normal cone*, Invent. Math. 128
  (1997), 45–88; arXiv alg-geom/9601010. §§1–7.
- [behrend1997] K. Behrend, *Gromov–Witten invariants in algebraic geometry*, Invent. Math. 127
  (1997), 601–617; arXiv alg-geom/9601011. Propositions 2, 4, 5, the dimension count, Theorem 6.
- [edidin-graham1998] D. Edidin, W. Graham, *Equivariant intersection theory*, Invent. Math. 131
  (1998), 595–634; arXiv alg-geom/9603008. Propositions 10–11.
- [deligne-mumford1969] P. Deligne, D. Mumford, *The irreducibility of the space of curves of given
  genus*, Publ. Math. IHÉS 36 (1969), 75–109. Theorem 4.12.
- [keel-mori1997] S. Keel, S. Mori, *Quotients by groupoids*, Ann. of Math. 145 (1997), 193–213;
  arXiv alg-geom/9508012. Theorem 1.1, Corollary 1.3.
- [kresch1999] A. Kresch, *Cycle groups for Artin stacks*, Invent. Math. 138 (1999), 495–536;
  arXiv math/9810166. Theorems 2.1.12 and 6.2.1 (boundaries).
- [li-tian1998] J. Li, G. Tian, *Virtual moduli cycles and Gromov–Witten invariants of algebraic
  varieties*, J. Amer. Math. Soc. 11 (1998), 119–174; arXiv alg-geom/9602007. Theorem 4.3.
- [olsson2007] M. Olsson, *Sheaves on Artin stacks*, J. reine angew. Math. 603 (2007), 55–112.
  Theorem 8.1.
- [gillet1984] H. Gillet, *Intersection theory on algebraic stacks and Q-varieties*, J. Pure Appl.
  Algebra 34 (1984), 193–240. §4 (cited by its locator).
- [fulton1998] W. Fulton, *Intersection Theory*, 2nd ed., Springer, 1998. §1.10, Corollary 6.3,
  Proposition 8.1.1, Appendix B.6.6 (cited by their locators).
- [stacks-chow] The Stacks Project, *Chow Homology and Chern Classes*, tag 02P3: Lemma 19.3 (02RX),
  Lemma 32.2 (0B74), Definition 33.1 (0B76), Definition 41.1 (0AZ1).
- [stacks-chow-spaces] The Stacks Project, *Chow Groups of Spaces*, tag 0EDQ: Definitions 3.1
  (0EDZ), 15.1 (0EQ6); Lemmas 4.3 (0EE3), 10.3 (0EPY), 13.2 (0EQ2), 15.2 (0EQ7).
- [stacks-properties] The Stacks Project, *Properties of Algebraic Stacks*, tag 04XA: Definition 9.9
  (04YM), Lemmas 9.6 (0H20), 9.11 (0507), 10.1–10.3 (0509, 050A, 050B), Lemma 12.1 (0AFM),
  Definitions 12.2–12.3 (0AFN, 0AFP), Example 12.5 (0AFR).
- [stacks-cotangent] The Stacks Project, *The Cotangent Complex*, tag 08P5: Lemma 18.8 (08SZ),
  Lemma 22.4 (08V2).
- [stacks-divisors] The Stacks Project, *Divisors*, tag 01WO: Lemma 21.4 (063H), Lemma 22.3
  (063L).
- [behrend-manin1996] K. Behrend, Yu. Manin, *Stacks of stable maps and Gromov–Witten invariants*,
  Duke Math. J. 85 (1996), 1–60; arXiv alg-geom/9506023. Theorem 3.14 (consumer).
- [fulton-pandharipande1997] W. Fulton, R. Pandharipande, *Notes on stable maps and quantum
  cohomology*, Proc. Sympos. Pure Math. 62 (1997); arXiv alg-geom/9608011. Theorem 1 (consumer).
- [graber-pandharipande1999] T. Graber, R. Pandharipande, *Localization of virtual classes*, Invent.
  Math. 135 (1999), 487–518; arXiv alg-geom/9708001. Proposition 1 (consumer).
- [kiem-li2013] Y.-H. Kiem, J. Li, *Localizing virtual cycles by cosections*, J. Amer. Math. Soc. 26
  (2013), 1025–1050; arXiv 1007.3085. Theorem 1.1 (consumer).
- [chang-guo-li2021] H.-L. Chang, S. Guo, J. Li, *Polynomial structure of Gromov–Witten potential
  of quintic 3-folds*, Ann. of Math. 194 (2021), 585–645; arXiv 1809.11058 (consumer).
