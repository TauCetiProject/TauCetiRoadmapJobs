# Roadmap: points of algebraic stacks, stabilisers and residual gerbes

**Summary.** This roadmap develops the local structure of an algebraic stack at a point, in the
conventions of the Stacks Project. It starts from the algebraic stacks, inertia stacks, underlying
topological spaces, quotient stacks and quasi-coherent modules of SchemeAndStackFoundations
§§1.18–1.22 and from the site-level gerbes of AlgebraicModuliForArithmeticGeometry §4.1. It builds
monomorphisms, immersions and closed substacks with their quasi-coherent ideals and reduced induced
structures (Layer 0); finite type points and the automorphism group algebraic space `G_x` of a
field-valued point (Layer 1); gerbes as morphisms of algebraic stacks, with the classifying-stack,
flatness, smoothness, inertia and universal-homeomorphism theorems and the dense open gerbe of a
reduced stack with quasi-compact inertia (Layer 2); reduced one-point stacks, their rigidity and the
residual gerbe `𝒵_x` with its characterisation, uniqueness, regularity and functoriality (Layer 3);
the existence of residual gerbes at finite type points, on stacks with a flat locally quasi-finite
presentation, on gerbes, on stacks with quasi-compact inertia and on locally Noetherian stacks, with
the closed-immersion criterion at closed points (Layer 4); decent stacks, the residue field `κ(x)`,
the algebraicity of points on stacks with quasi-compact diagonal and the fppf image of a
representative (Layer 5); the presentation of `𝒵_x` by a representative and its identification
with `BG_x` (Layer 6); and the infinitesimal neighbourhoods, the normal space `N_x` and its
comparison with the tangent space at a closed rational point (Layer 7). The end theorems are the
characterisation of finite type points (1.1, 4.1), the existence of residual gerbes (4.2–4.4), the
residual gerbe as a gerbe over its residue field with `𝒵_x ×_{κ(x)} k ≃ BG_x` (5.3, 6.2, 6.3), the
identification `𝒵_x ≃ BG_x` at every rational point of a stack over a field (6.4), the
closed-immersion criterion at closed points (4.5), and the exact sequence
`0 → T_{BG_x} → T_{𝒳,x} → N_x → 0`, so that `T_{𝒳,x} ≅ N_x` exactly when `G_x` is smooth (7.3).

## Scope and ownership

**This roadmap owns** the following, each at the generality of the Stacks Project:

- properties of algebraic stacks defined by smooth-local properties of schemes, for reducedness and
  regularity (0.1); monomorphisms of algebraic stacks and their characterisation by full
  faithfulness and by the diagonal (0.2); open, closed and locally closed immersions and substacks
  and their description on a presentation (0.3); the correspondence between closed substacks and
  quasi-coherent ideals, and the infinitesimal neighbourhoods of a closed substack (0.4); the
  reduced induced closed substack and the reduction (0.5);
- finite type points (1.1), closed and field-valued points (1.2), the automorphism group algebraic
  space of a field-valued point and the morphisms inducing isomorphisms on it (1.3), and the
  criteria for it to be a scheme (1.4);
- gerbes as morphisms of algebraic stacks (Stacks, Morphisms of Stacks, Section 101.28) and the
  dense open gerbe (Proposition 101.29.1) (Layer 2);
- reduced one-point stacks and residual gerbes (Stacks, Properties of Stacks, Section 100.11;
  Morphisms of Stacks, Sections 101.18, 101.31 and 101.51) (Layers 3–4);
- decent algebraic stacks, the residue field of a point, the algebraicity of points on stacks with
  quasi-compact diagonal (Rydh 2011, Appendix B) and the fppf image of a representative (Layer 5);
- the presentation of a residual gerbe by a representative, its base change to `BG_x`, neutrality
  and rational points (Layer 6);
- the infinitesimal neighbourhoods of a closed point, the normal space `N_x`, and the comparison map
  from the tangent space to the normal space (Layer 7).

No other roadmap states any of these objects.
SchemeAndStackFoundations stops at the topological space `|𝒳|`, inertia, `SmoothLocal` morphism
properties, locally Noetherian and separated stacks, presentations and quotient stacks (§§1.19–1.22);
AlgebraicModuliForArithmeticGeometry states gerbes only on a site (§4.1) and uses closed substacks of
Deligne–Mumford stacks without defining them (§5.4). Residual spaces of algebraic spaces (Stacks,
Decent Spaces, Definition 68.13.6) are the residual gerbes of 3.3 on algebraic spaces (3.4); they
have no second carrier.

**Imported, not restated.**

- SchemeAndStackFoundations §§1.18–1.22: stacks in groupoids and 2-fibre products, representable
  morphisms, algebraic and Deligne–Mumford stacks, inertia and `automorphismGroup`, `SmoothLocal`
  and `QuasiCompactStack`, `Stacks.points` with its topology, locally Noetherian and separated
  stacks, smooth presentations, quotient stacks `[U/R]`, `[X/G]` and `BG`, and quasi-coherent
  modules with their description on a presentation (giving `QCoh(BG)` as comodules, Convention 9);
  §§1.7–1.9, 1.13–1.15 and 1.17 for algebraic spaces, group spaces, groupoids, stabilizers, torsors
  and Artin's bootstrap; §1.23's moduli functor for the base of a gerbe; §4.12 generic flatness;
  §4.13 regular schemes.
- AlgebraicModuliForArithmeticGeometry §4.1: the gerbe predicates `IsGerbe` and `relativeGerbe` on a
  site with base change, composition and descent. A gerbe of algebraic stacks (2.1) is the fppf
  instance of `relativeGerbe`. Bands, banded gerbes and their `H²` classification and rigidification
  stay in that roadmap's Layers 4–5.
- AlgebraicModuliForArithmeticGeometry §§8.1 and 8.3: framed deformation groupoids, the deformation
  functor of a point, the stabiliser action on deformations and the framed tangent exact sequence.
  The tangent space `T_{𝒳,x}` of Layer 7 is that deformation functor on the dual numbers; this
  roadmap owns only the normal space and the comparison map.
- ReductiveGroups Layer 1 with Tau Ceti's `TauCeti.Comodule`: finite-dimensional representations of
  affine group schemes over a field as comodules.

**Left to other roadmaps.** The Luna étale slice theorems of Alper–Hall–Rydh (Theorems 1.1 and 1.2)
use the vocabulary of Layer 7 and appear here only in Checks. Banded gerbes, their classification
and rigidification belong to AlgebraicModuliForArithmeticGeometry Layers 4–5. Coarse spaces,
Keel–Mori and tame stacks belong to SchemeAndStackFoundations §1.23 and appear here only in Checks.
Dimension theory of stacks is not used: the normal space is finite-dimensional because the ideal of
a closed point is coherent.

## Conventions

1. **Stacks.** Algebraic stacks are those of SchemeAndStackFoundations §1.19: stacks in groupoids
   on `Scheme.{u}` for the fppf topology with diagonal representable by algebraic spaces and a
   smooth surjective morphism from a scheme. The Lean carrier is §1.18's stack in groupoids: Tau
   Ceti's `TauCeti.AlgebraicGeometry.SchPseudofunctor` with groupoid fibres and Mathlib's
   `CategoryTheory.Pseudofunctor.IsStack` for `AlgebraicGeometry.Scheme.fppfTopology`. Algebraic
   spaces are Tau Ceti's `TauCeti.AlgebraicGeometry.Spaces.IsAlgebraicSpace`, viewed as stacks in
   setoids. Notions are absolute unless a base is named, as in Stacks, Definition 101.4.2 (5)–(8);
   a stack over a scheme `S` is a stack with a 1-morphism to `S`. "Isomorphic" means equivalent and
   "fibre product" means the 2-fibre product of §1.18.
2. **Points.** `|𝒳|` is §1.20's `Stacks.points 𝒳` and `|f|` its functoriality. A field-valued point
   `x : Spec K → 𝒳` is an object of the fibre over `Spec K`; it is a *representative* of its class
   in `|𝒳|`.
3. **Morphism properties.** For `f` representable by algebraic spaces and `P` a property of
   morphisms of algebraic spaces stable under base change and fppf local on the target, "`f` has
   `P`" is §1.19's `RepresentableProperty P f`. For arbitrary `f`, flat, locally of finite
   presentation, locally of finite type and smooth are §1.20's `SmoothLocal`, surjective means `|f|`
   surjective and quasi-compact is §1.20's `QuasiCompactStack`. "The inertia `I_𝒳 → 𝒳` is
   quasi-compact" and "the diagonal is quasi-compact" are `RepresentableProperty` of §1.9's
   `QuasiCompactSpace` for these representable morphisms. DM, quasi-DM and quasi-separated morphisms
   and stacks are those of Stacks, Definitions 101.4.1–101.4.2 (the diagonal is unramified, locally
   quasi-finite, quasi-compact and quasi-separated); separated is §1.20's `IsSeparatedStack`.
4. **Substacks.** A substack of `𝒳` is strictly full: for every scheme `T` a full subgroupoid of
   `𝒳(T)` closed under isomorphism and pullback. Two substacks are equal when they have the same
   objects; every uniqueness statement for substacks is equality in this sense. Witness: for
   `𝒳 = Spec k ⊔ Spec k`, the two open substacks `Spec k ⊔ ∅` and `∅ ⊔ Spec k` are equivalent
   stacks and different substacks.
5. **Automorphism groups and their action.** For `x : Spec k → 𝒳`,
   `G_x := Isom_𝒳(x, x) = Spec k ×_{x,𝒳} I_𝒳`, a group algebraic space over `k` whose `T`-points
   are the automorphisms of `x|_T`, with multiplication `g·h = g ∘ h`. `G_x(k)` acts on the left on
   framed deformations by `g·(τ, α) := (τ, α ∘ g⁻¹)`, where `α : x → τ|_k`.
   AlgebraicModuliForArithmeticGeometry §8.3 (`FramedDeformation`) reframes by `g` through
   `α ↦ α ∘ g`, a right action; the left action used here is its inverse, `g ↦ (τ, α ∘ g⁻¹)`.
   Functions transform contragrediently. Witness: on `[𝔸¹/𝔾_m]` with `λ·t = λt`, at `x = 0` with
   `G_x = 𝔾_m`, the coordinate function `t` has weight `−1`, the conormal line `I/I² = k·t` has
   weight `−1`, and both `N_x` and `T_{𝒳,x}` are the weight-one character; with the right action
   `(τ, α ∘ g)` the tangent line would have weight `−1` and the comparison 7.3 would not be
   equivariant.
6. **Infinitesimal neighbourhoods.** For a closed substack `𝒵 ⊆ 𝒳` with quasi-coherent ideal `ℐ`,
   the `n`-th infinitesimal neighbourhood `𝒳^{[n]}_𝒵` is cut out by `ℐ^{n+1}`, so that
   `𝒳^{[0]}_𝒵 = 𝒵`. Witness: for `𝒳 = 𝔸¹_k` and `𝒵` the origin, `𝒳^{[1]}_𝒵 = Spec k[t]/(t²)`, of
   length 2.
7. **Residue field.** For a point `x` of a decent stack whose residual gerbe exists, `κ(x)` is the
   field with `Spec κ(x) ≅` the one-point base of the gerbe `𝒵_x` (5.3); every representative
   `Spec k → 𝒳` of `x` gives a field homomorphism `κ(x) → k`. Witness: for `𝒳 = 𝔸¹_ℚ` and `x` the
   point `t² + 1 = 0`, `κ(x) = ℚ(i)`, and the representative `t ↦ i` over `ℂ` gives the inclusion
   `ℚ(i) ⊂ ℂ`.
8. **Dual numbers and tangent spaces.** `k[ε] := k[ε]/(ε²)`. For `𝒳` over a locally Noetherian
   scheme `S` and `k` of finite type over `S`, `T_{𝒳,x}` is the value at `k[ε]` of
   AlgebraicModuliForArithmeticGeometry §8.1's `deformationFunctorOfPoint`: framed deformations
   `(τ : Spec k[ε] → 𝒳, α : x ≅ τ|_k)` up to isomorphism compatible with `α`.
9. **Representations.** For `G` affine of finite type over a field `k`, `Rep(G)` is the category of
   comodules over `O(G)` (Tau Ceti `TauCeti.Comodule`, ReductiveGroups Layer 1), and
   `QCoh(BG) ≃ Rep(G)` by pullback along `Spec k → BG`: SchemeAndStackFoundations §1.22's
   *QCoh.presentationEquiv* for the presentation `BG = [Spec k/G]` (groupoid `G ⇉ Spec k`, both
   maps the structure map) identifies `QCoh(BG)` with `k`-vector spaces `V` with descent data, an
   `O(G)`-linear automorphism of `V ⊗_k O(G)` satisfying the cocycle condition, and such descent
   data are exactly the `O(G)`-comodule structures `V → V ⊗_k O(G)` on `V` (the supplier's Check
   `test_BG_representations` records this instance). The dual of a finite-dimensional
   representation carries the contragredient action.
10. **Names.** Proposed declarations live in the namespace `TauCeti.AlgebraicGeometry.Stacks`; this
   README sets proposed names in italics.

## Exact supplier contracts

### From Mathlib

The pin is `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`; every declaration below was read there.

- `CategoryTheory.Pseudofunctor.IsStack` (`Mathlib/CategoryTheory/Sites/Descent/IsStack.lean:49`):
  effective descent for a pseudofunctor on a site; with groupoid fibres it is the stack condition of
  §1.18. It does not impose groupoid fibres or any algebraicity.
- `AlgebraicGeometry.Scheme.fppfTopology` (`Mathlib/AlgebraicGeometry/Sites/Fpqc.lean:54`): the fppf
  topology on `Scheme.{u}`.
- `AlgebraicGeometry.Scheme.residueField` (`Mathlib/AlgebraicGeometry/ResidueField.lean:45`): the
  residue field of a scheme point, which 3.3 identifies with the residual gerbe of a scheme.
- `AlgebraicGeometry.IsClosedImmersion` (`Mathlib/AlgebraicGeometry/Morphisms/ClosedImmersion.lean:44`),
  `AlgebraicGeometry.Flat` (`Morphisms/Flat.lean:42`), `AlgebraicGeometry.LocallyOfFiniteType`
  (`Morphisms/FiniteType.lean:42`), `AlgebraicGeometry.LocallyOfFinitePresentation`
  (`Morphisms/FinitePresentation.lean:46`), `AlgebraicGeometry.Smooth` (`Morphisms/Smooth.lean:59`)
  and `AlgebraicGeometry.LocallyQuasiFinite` (`Morphisms/QuasiFinite.lean:72`): the scheme morphism
  classes from which the properties of Convention 3 are built.
- `AlgebraicGeometry.IsReduced` (`Mathlib/AlgebraicGeometry/Properties.lean:68`) and
  `AlgebraicGeometry.IsLocallyNoetherian` (`Mathlib/AlgebraicGeometry/Noetherian.lean:54`): the
  scheme properties transferred to stacks in 0.1.
- `AlgebraicGeometry.Scheme.IdealSheafData.vanishingIdeal`
  (`Mathlib/AlgebraicGeometry/IdealSheaf/Basic.lean:564`), `AlgebraicGeometry.Scheme.IdealSheafData.subscheme`
  and `AlgebraicGeometry.Scheme.IdealSheafData.subschemeι` (`IdealSheaf/Subscheme.lean:453, 470`): the
  reduced induced closed subscheme on a closed subset, the scheme case of 0.5, and the closed
  subscheme of an ideal sheaf, the scheme case of 0.4.
- `AlgebraicGeometry.LocallyOfFiniteType.jacobsonSpace` (`Morphisms/FiniteType.lean:112`) with
  `JacobsonSpace` (`Mathlib/Topology/JacobsonSpace.lean:70`): a scheme locally of finite type over a
  Jacobson base is Jacobson; it gives the scheme Checks of 1.1–1.2.
- `AlgebraicGeometry.LocallyOfFinitePresentation.iff_locallyOfFiniteType`
  (`Mathlib/AlgebraicGeometry/Noetherian.lean:271`): over a locally Noetherian target a morphism
  of schemes is locally of finite presentation iff it is locally of finite type. With the
  square-independence of SchemeAndStackFoundations §1.8's `Spaces.EtaleLocal` (an étale cover of
  the spectrum of a field is locally Noetherian) it gives the case used in 3.2, 4.1 and 4.2: a
  morphism of algebraic spaces locally of finite type over a disjoint union of spectra of fields is
  locally of finite presentation.
- `retractionKerCotangentToTensorEquivSection` (`Mathlib/RingTheory/Smooth/Kaehler.lean:324`): for a
  surjection `P → A` of `R`-algebras with kernel `I`, `P`-linear retractions of
  `I/I² → A ⊗_P Ω[P/R]` correspond to `R`-algebra sections of `P/I² → A`; no smoothness of `P` is
  assumed. With `Algebra.FormallySmooth.exists_lift` (`Mathlib/RingTheory/Smooth/Basic.lean:125`,
  lifting along nilpotent ideals for formally smooth `A`) it gives the split injectivity used in 7.3.
  Mathlib's `Algebra.FormallySmooth.iff_split_injection` (same file, line 290) assumes `P` formally
  smooth and does not apply to the chart of 7.3.

### From Tau Ceti

The pin is `2fd255d997f47c0b5d834ee416c7015d55444ce5`.

- `TauCeti.AlgebraicGeometry.SchPseudofunctor` (`TauCeti/AlgebraicGeometry/Stack/Basic.lean:37`): the
  type of `Cat`-valued pseudofunctors on `Scheme.{u}ᵒᵖ`, the carrier of stacks. It carries no stack
  condition.
- `TauCeti.AlgebraicGeometry.SchemePresheaf`, `TauCeti.AlgebraicGeometry.Spaces.RepresentableDiagonal`,
  `TauCeti.AlgebraicGeometry.Spaces.EtaleAtlas` and `TauCeti.AlgebraicGeometry.Spaces.IsAlgebraicSpace`
  (`TauCeti/AlgebraicGeometry/AlgebraicSpace/Basic.lean:68, 74, 113, 195`): algebraic spaces, with
  no separation axiom.
- `TauCeti.Comodule` (`TauCeti/Algebra/Coalgebra/Comodule/Basic.lean:50`) and `TauCeti.ComoduleCat`
  (`TauCeti/Algebra/Coalgebra/Comodule/Cat.lean:50`): comodules over a coalgebra, the carrier of
  representations in 7.2.
- `TauCeti.linearlyReductiveAffineGroupSchemeProperty`
  (`TauCeti/AlgebraicGeometry/AffineGroupScheme/LinearlyReductive.lean:60`): used only in the Checks
  of 7.4 that mention linear reductivity.

### From TauCetiRoadmap.SchemeAndStackFoundations

- §1.7 (`points`, `opensEquiv`) and §1.8 (`Spaces.EtaleLocal`, fibre products of spaces): points
  and open subspaces of algebraic spaces, and étale-local properties of morphisms of spaces.
- §1.9 (`IsSeparatedSpace`, `QuasiSeparatedSpace`, `QuasiCompactSpace`, `IsProperSpace`): separation
  and quasi-compactness of morphisms of spaces.
- §1.13 (`Groups.GroupSpace`), §1.14 (`Groupoid`, `Groupoid.restrict`, `stabilizer`, `stabilizerAt`),
  §1.15 (`Groups.IsTorsor`), §1.17 (`artinBootstrap`): group spaces, groupoids with their
  restriction and stabilizers, torsors, and Artin's bootstrap theorem.
- §1.18 (`Stacks.StackInGroupoids`, `twoFiberProduct`, `Stack.stackification`): the carrier and
  2-fibre products.
- §1.19 (`IsRepresentableBySpaces`, `RepresentableProperty`, `IsAlgebraicStack`,
  `IsDeligneMumford`, `IsDeligneMumford.iff_unramified_diagonal`): representable morphisms with
  their properties, algebraic and Deligne–Mumford stacks (with an étale atlas).
- §1.20 (`inertia`, `inertia.representable`, `automorphismGroup`, `setoid_criterion`, `SmoothLocal`,
  `SmoothLocal.atlas_independent`, `Stacks.points` with `.map`, `.pullbackSurjective`,
  `.atlasOpenSurjective`, `.ofSpace`, `QuasiCompactStack`, `IsSeparatedStack`, the locally Noetherian
  stacks, `stack_presentation`): everything of Convention 2–3.
- §1.21 (`Stack.quotient`, `quotientStack`, `quotientStack.π`, `actionQuotient`,
  `actionQuotient.torsorEquiv`, `quotientStack_algebraic`): quotient stacks of groupoids and of
  actions, with `BG = [S/G]` for the trivial action and `[U/R]` algebraic for flat locally finitely
  presented groupoids.
- §1.22 (`Stacks.QCoh`, *QCoh.presentationEquiv*): quasi-coherent modules and their description on
  a presentation `[U/R]` as modules on `U` with descent data along `R` (Stacks, Proposition
  96.14.3). Applied to `BG = [Spec k/G]` for affine `G` over a field it gives `QCoh(BG)` as
  `O(G)`-comodules (Convention 9); the supplier's Check `test_BG_representations` is that instance.
- §1.23 (`moduliFunctor`, `toModuliSheaf`): the fppf sheafification of isomorphism classes, the base
  of a gerbe in 2.1.
- §4.12 (`generic_flatness`) and §4.13 (`IsRegular`, *IsRegular.of_smooth*): generic flatness over an
  integral base and regular schemes.

What SchemeAndStackFoundations must provide (gap:stack-morphism-permanence): §1.20 must prove, for
its `SmoothLocal` properties flat, locally of finite presentation, locally of finite type and smooth,
for surjectivity and for `QuasiCompactStack`, stability under composition and base change, descent
along a surjective, flat, locally finitely presented base change, agreement with
`RepresentableProperty` for morphisms representable by algebraic spaces, the implications smooth ⇒
locally of finite presentation ⇒ locally of finite type, the cancellation laws for local finite type
and local finite presentation, and that a surjective, flat, locally finitely presented morphism is
fppf-locally essentially surjective (Stacks, Properties of Stacks, Lemmas 100.3.1–100.3.3 and
100.5.2–100.5.5; Morphisms of Stacks, Lemmas 101.7.3–101.7.7, 101.7.10, 101.17.2–101.17.8,
101.25.2–101.25.5, 101.27.2–101.27.14, 101.27.16 and 101.33.2–101.33.5).

What SchemeAndStackFoundations must provide (gap:flat-lfp-open): §1.20 must prove that for a flat,
locally finitely presented morphism `f` of algebraic stacks the map `|f|` is open, so that such
morphisms are universally open (Stacks, Morphisms of Stacks, Lemma 101.27.15).

What SchemeAndStackFoundations must provide (gap:inertia-of-presentations): §1.20 must prove that the
inertia `I_𝒳 → 𝒳` and the relative inertia `I_{𝒳/𝒴} → 𝒳` are locally of finite type, and that for a
presentation `[U/R] ≃ 𝒳` the stabilizer `G → U` of the groupoid (§1.14's `stabilizer`) is the
pullback `U ×_𝒳 I_𝒳` (Stacks, Morphisms of Stacks, Lemmas 101.5.1 and 101.5.7).

What SchemeAndStackFoundations must provide (gap:stack-separation-axioms): §1.20 must define DM,
quasi-DM and quasi-separated morphisms of algebraic stacks, and quasi-DM and quasi-separated algebraic
stacks, by the diagonal (Stacks, Morphisms of Stacks, Definitions 101.4.1–101.4.2), a DM stack being
§1.19's `IsDeligneMumford` through `IsDeligneMumford.iff_unramified_diagonal`, and prove separated ⇒
quasi-separated, DM ⇒ quasi-DM and representable by algebraic spaces ⇒ DM for morphisms, stability
under base change and composition, the permanence Lemma 101.4.11 and the comparison of the diagonal
with the inertia, Lemma 101.6.1 (Lemmas 101.4.3, 101.4.4, 101.4.10).

What SchemeAndStackFoundations must provide (gap:quasi-dm-flat-presentation): §1.19 must prove that an
algebraic stack is quasi-DM iff it admits a surjective, flat, locally finitely presented, locally
quasi-finite morphism from a scheme (Stacks, Morphisms of Stacks, Theorem 101.21.3), alongside its
`IsDeligneMumford.iff_unramified_diagonal`.

What SchemeAndStackFoundations must provide (gap:flat-groupoid-quotients): §1.21 must prove that for a
groupoid `(U, R, s, t, c)` in algebraic spaces (not only a groupoid scheme, for which §1.21 states
`quotientStack_algebraic`) with `s, t` flat and locally of finite presentation, `[U/R]` is algebraic
(Stacks, Criteria for Representability, Theorem 97.17.2) and the projection `U → [U/R]` is surjective,
flat and locally of finite presentation (Lemma 97.17.1), that `[B/G]` is algebraic iff `G → B` is flat and locally of finite
presentation (Lemma 97.18.3) and is then a gerbe over `B` (Groupoids in Spaces, Lemmas 78.27.1–78.27.2),
that the canonical `[U/R] → 𝒳` attached to a morphism `U → 𝒳` with `R = U ×_𝒳 U` is fully faithful and
is an equivalence when `U → 𝒳` is surjective, flat and locally of finite presentation (Algebraic
Stacks, Lemma 94.16.1, Remark 94.16.3), and that restricting a groupoid along `U' → U` gives a fully
faithful `[U'/R'] → [U/R]` (Groupoids in Spaces, Lemma 78.25.1).

What SchemeAndStackFoundations must provide (gap:decent-algebraic-spaces): §1.7 must define decent
algebraic spaces (Stacks, Decent Spaces, Definition 68.6.1) and prove that quasi-separated and locally
separated spaces are decent (Section 68.6 and Lemma 68.15.2), that every point of a decent space is
represented by a monomorphism from the spectrum of a field (Lemma 68.11.1), that decent spaces are
sober (Proposition 68.12.4), the specialisation Lemma 68.7.2 and the stratification Lemma 68.8.3.

What SchemeAndStackFoundations must provide (gap:quasi-separated-space-schematic-locus): §1.9 must
prove that a quasi-separated algebraic space has a dense open subspace which is a scheme (Stacks,
Properties of Spaces, Proposition 66.13.3).

What SchemeAndStackFoundations must provide (gap:reduced-scheme-residue-field-factorisation): §1.7
must prove that a morphism of schemes `Y → X` with `Y` reduced and image contained in `{x}` factors
through `Spec κ(x) → X`, and that for `X` locally Noetherian and a set `E` of points of `X` without
nontrivial specialisations among them a morphism from a reduced scheme with image in `E` factors
through `⊔_{x ∈ E} Spec κ(x)` (Stacks, Morphisms, Lemmas 29.59.1–29.59.2,
stacks-morphisms-schemes lines 7102–7125).

What SchemeAndStackFoundations must provide (gap:group-spaces-over-fields): §1.13 must prove that a
group algebraic space over a field which is locally quasi-finite, quasi-separated or locally
separated is a scheme (Stacks, Spaces over Fields, Lemma 72.10.8; More on Groupoids in Spaces, Lemma
79.9.4 and Proposition 79.10.3).

What SchemeAndStackFoundations must provide (gap:quasi-finite-over-fields): §1.8 must prove that a
morphism of algebraic spaces to a disjoint union of spectra of fields which factors as a
monomorphism followed by a locally quasi-finite morphism is locally quasi-finite (Stacks, Spaces over
Fields, Lemma 72.10.9).

What SchemeAndStackFoundations must provide (gap:isomorphism-fpqc-local-spaces): §1.2 must prove that
being an isomorphism is fpqc local on the target for morphisms of algebraic spaces, in particular
that a morphism of algebraic spaces over `Spec k` whose base change along a field extension `k'/k`
is an isomorphism is an isomorphism (Stacks, Descent on Spaces, Lemma 74.11.15).

What SchemeAndStackFoundations must provide (gap:generic-flatness-spaces): §4.12 must extend
`generic_flatness` to a quasi-compact morphism of algebraic spaces locally of finite type over a
reduced algebraic space, giving a dense open of the base over which it is flat and locally of finite
presentation (Stacks, Morphisms of Spaces, Proposition 67.32.1; Morphisms, Proposition 29.28.2).

What SchemeAndStackFoundations must provide (gap:reduced-regular-smooth-local): §4.13 must prove that
reducedness and regularity of schemes are local in the smooth topology and descend along flat
surjective, respectively flat surjective locally finitely presented, morphisms, for schemes and for
algebraic spaces (Stacks, Descent, Lemmas 35.18.1, 35.18.4, 35.19.1–35.19.2; Descent on Spaces,
Lemmas 74.9.2, 74.9.4), and that a smooth algebraic space over a field is regular (Spaces over Fields,
Lemma 72.16.1).

### From TauCetiRoadmap.AlgebraicModuliForArithmeticGeometry

- §4.1: `IsGerbe`, `IsGerbe.equivalence_iff`, `relativeGerbe`, `relativePullback`,
  `relativeComposition` and `relativeDescent` on a site `(C, J)` with groupoid fibres. Layer 2 takes
  `(C, J) = (Scheme.{u}, fppf)`. Nothing about bands is assumed.
- §8.1: `deformationGroupoid`, `deformationFunctorOfPoint` and `stabiliserActionOnDeformations`, for
  `𝒳` fibred in groupoids over a locally Noetherian `S` and `k` of finite type over `S`, with the
  change-of-residue-field API; and §8.3's `framedDeformation_twoFibre` and
  `framedTangent_exactSequence` (framed tangent spaces of a 2-fibre product, and smooth
  representable morphisms are smooth on framed deformations).

What AlgebraicModuliForArithmeticGeometry must provide (gap:algebraic-stacks-satisfy-rs): §8.1 must
prove that an algebraic stack over a locally Noetherian base satisfies the Rim–Schlessinger condition
(Stacks, Artin's Axioms, Lemma 98.5.2), so that its framed tangent spaces are `k`-vector spaces, and
that for a finite separable extension `k'/k` the framed tangent space at the induced `k'`-point is
the base change to `k'` of the tangent space at the `k`-point (Artin's Axioms, Section 98.8); its
deformation-category clause and change-of-residue-field API state these without a target.

### From TauCetiRoadmap.ReductiveGroups

Layer 1 (representations of affine group schemes of finite type over a field as comodules, and the
finite-dimensional comodule category), Layer 2 (the Lie algebra `Lie(G)` and the smoothness
criterion `dim Lie(G) = dim G`), Layer 3 (quotients `G/H` by closed subgroups) and Layer 3A (orbits of
algebraic actions). Nothing about reductivity is assumed.

## How to read the build

Layer 0 builds the substack vocabulary on SchemeAndStackFoundations' stacks: smooth-local properties,
monomorphisms, immersions with their presentation description, closed substacks of quasi-coherent
ideals with their infinitesimal neighbourhoods, and the reduced induced structure. Layer 1 defines
finite type points and the automorphism group algebraic space `G_x`. Layer 2 builds gerbes of
algebraic stacks on AlgebraicModuliForArithmeticGeometry §4.1 and proves their geometric theory up
to the dense open gerbe. Layer 3 defines the residual gerbe through reduced one-point stacks and
proves its properties; Layer 4 proves its existence in each case the Stacks Project treats, and the
closed-immersion criterion. Layer 5 adds decency, which is exactly what makes the base of a residual
gerbe the spectrum of a field. Layer 6 computes residual gerbes from representatives and identifies
them with classifying stacks at rational points. Layer 7 uses Layers 0, 4 and 6 at a closed rational
point to define the normal space and compare it with the tangent space. Layers 0–3 are linear;
Layers 4 and 5 both use 3; Layer 6 uses 4 and 5; Layer 7 uses 0.4, 4.5 and 6.4.

## Layer 0: monomorphisms, immersions and reduced substacks

### 0.1 Reduced and regular algebraic stacks

Let `P` be a property of schemes which is local in the smooth topology. Say that an algebraic stack
`𝒳` *has `P`* (*Stacks.HasSmoothLocalProperty*) if some scheme `U` with a smooth surjective
`U → 𝒳` has `P`. Prove that this is equivalent to: every scheme smooth over `𝒳` has `P`; some, and
every, algebraic space smooth over `𝒳` (surjective in the first case) has `P`; for `𝒳` a scheme or
an algebraic space it is `P` of `𝒳` (stacks-04XE lines 625–653, Lemma 100.7.1, Definition 100.7.2).
Apply it to `P` = reduced (Mathlib `AlgebraicGeometry.IsReduced`), regular (SchemeAndStackFoundations
§4.13 `IsRegular`) and locally Noetherian, which are smooth local (stacks-04XE lines 654–665,
Remark 100.7.3). *Needs:* SchemeAndStackFoundations §1.19 (`IsAlgebraicStack`, smooth atlas), §1.20
(locally Noetherian stacks, `SmoothLocal`), §4.13; Mathlib `AlgebraicGeometry.IsReduced`,
`AlgebraicGeometry.IsLocallyNoetherian`; gap:reduced-regular-smooth-local.

The API consists of the following facts.

- The definition does not depend on the atlas: if one smooth surjective `U → 𝒳` from a scheme has
  `P`, every smooth `V → 𝒳` from a scheme has `P`.
- If `𝒳` has `P` and `𝒴 → 𝒳` is smooth, then `𝒴` has `P`; if `𝒴 → 𝒳` is smooth and surjective and
  `𝒴` has `P`, then `𝒳` has `P`.
- For `P` locally Noetherian the notion is SchemeAndStackFoundations §1.20's locally Noetherian
  stack; for a scheme it is Mathlib's `IsReduced`, `IsLocallyNoetherian` and §4.13's `IsRegular`.
- A regular algebraic stack is reduced and locally Noetherian.
- Open substacks (0.3) of a stack with `P` have `P`.

**Checks.**

- `B(ℤ/2)` over a field `k` is reduced and regular: its smooth atlas `Spec k` is regular.
- `[Spec k[t]/(t²) / 𝔾_m]`, with `t` of weight one, is not reduced: its smooth atlas
  `Spec k[t]/(t²)` is not reduced.
- Over `𝔽_p`, `Bμ_p` is regular, while the flat locally finitely presented morphism
  `μ_p → Spec 𝔽_p → Bμ_p` has the nonreduced source `μ_p = Spec 𝔽_p[λ]/((λ − 1)^p)`. A definition
  testing every flat locally finitely presented scheme over `𝒳` would declare `Bμ_p` nonreduced; the
  smooth atlas `𝔾_m → Bμ_p` (the quotient `𝔾_m → 𝔾_m/μ_p ≅ 𝔾_m`) is what is tested.
- `𝔸¹_k` is regular as an algebraic stack iff it is regular as a scheme, and `Spec k[x,y]/(xy)` is
  reduced and not regular in both senses.

### 0.2 Monomorphisms

Define a *monomorphism* (*Stacks.IsMonomorphism*) of algebraic stacks as a morphism `f : 𝒳 → 𝒴`
representable by algebraic spaces whose base change `T ×_𝒴 𝒳 → T` along every morphism from a scheme
is a monomorphism of algebraic spaces, that is `RepresentableProperty` for monomorphisms (stacks-04XE
line 707, Definition 100.8.1). Prove that the following are equivalent: `f` is a monomorphism; `f` is
fully faithful on fibre categories; the diagonal `Δ_f : 𝒳 → 𝒳 ×_𝒴 𝒳` is an equivalence; for some
algebraic space `W` and surjective, flat, locally finitely presented `W → 𝒴`, the 2-fibre product
`W ×_𝒴 𝒳` is an algebraic space and `W ×_𝒴 𝒳 → W` is a monomorphism (stacks-04XE lines 718–744,
Lemma 100.8.4). Prove the rigidity of monomorphisms into a field: a monomorphism `T → Spec k` from a
nonempty algebraic space is an isomorphism (Morphisms of Spaces, Lemma 67.10.8, used at stacks-06ML
line 1204). For the proof take an étale atlas `W → T` with `W` a nonempty affine scheme; since
`T ×_k T = T`, the relation `W ×_T W` equals `W ×_k W`, so `W → Spec k` is étale by fpqc descent of
étaleness along `W → Spec k`, and `T` is the quotient of `W` by the full relation `W ×_k W`, which is
`Spec k`. *Needs:* SchemeAndStackFoundations §1.18 (`twoFiberProduct`), §1.19
(`IsRepresentableBySpaces`, `RepresentableProperty`), §1.8 (`Spaces.EtaleLocal`); gap:stack-morphism-permanence
(descent along `W → 𝒴`); for the last clause of the API gap:stack-separation-axioms.

The API consists of the following facts.

- Base change and composition: if `𝒵 → 𝒴` is a monomorphism then so is `𝒵 ×_𝒴 𝒳 → 𝒳`; a composite of
  monomorphisms is a monomorphism; equivalences are monomorphisms (stacks-04XE lines 711–717,
  Lemmas 100.8.2–100.8.3).
- A monomorphism is injective on points: `|f|` is injective (stacks-04XE lines 745–752, Lemma 100.8.5).
- For `𝒳 → 𝒳' → 𝒴` with `𝒳 → 𝒳'` a monomorphism, the square formed by the diagonals
  `𝒳 → 𝒳 ×_𝒴 𝒳` and `𝒳' → 𝒳' ×_𝒴 𝒳'` is 2-cartesian (stacks-04XE lines 753–762, Lemma 100.8.6).
- For a monomorphism `f`, `I_𝒳 = I_𝒴 ×_𝒴 𝒳` (stacks-06RD lines 591–608, Lemma 101.5.6); hence
  `G_x = G_{f∘x}` for every field-valued point `x` of `𝒳`.
- A monomorphism is separated and DM (stacks-06RD lines 445–451, Lemma 101.4.15).

**Checks.**

- For a nontrivial group scheme `G` flat and locally of finite presentation over `k`, `Spec k → BG`
  is not a monomorphism: `Spec k ×_{BG} Spec k = G ≠ Spec k`, so its diagonal is not an
  equivalence (alper-moduli lines 6955–6957).
- The open immersion `𝔾_m → 𝔸¹` is a monomorphism; `Spec ℂ → Spec ℝ` is injective on points and is
  not a monomorphism, since `Spec ℂ ×_ℝ Spec ℂ` has two points.
- The rigidity statement needs the target to be a field: `Spec k → Spec k[ε]` is a monomorphism from
  a nonempty scheme and not an isomorphism.
- For `X = U/G` of stacks-06ML lines 1238–1256 (Example 100.11.6), with `U = Spec(ℚ̄ ⊗_ℚ ℚ̄)` and
  `G = Gal(ℚ̄/ℚ)` discrete acting freely and transitively on the points of `U` through the second
  factor, `X` is an algebraic space over `Spec ℚ̄` through the first factor and every residue field
  of `U` is `ℚ̄`. The point `x : Spec ℚ̄ → U → X`, through the multiplication `ℚ̄ ⊗_ℚ ℚ̄ → ℚ̄`, is a
  section of `X → Spec ℚ̄`, hence a monomorphism between one-point spaces, and it is not an
  isomorphism (`U ×_X Spec ℚ̄ = G × Spec ℚ̄` is discrete, `U` is not); one-point source and target do
  not make a monomorphism an isomorphism (compare 3.2). There is no morphism `Spec ℚ → X` at all: it
  would give a ring map `ℚ̄ → ℚ`.

### 0.3 Immersions and substacks

Define open immersions, closed immersions and immersions of algebraic stacks as morphisms
representable by algebraic spaces with `RepresentableProperty` for open immersions, closed
immersions and immersions of algebraic spaces, and open, closed and locally closed *substacks*
(Convention 4) as substacks `𝒳' ⊆ 𝒳` that are algebraic stacks with the inclusion an open immersion,
a closed immersion, an immersion (stacks-04XE lines 765–776 and 853–859, Definitions 100.9.1 and
100.9.9) (*Stacks.IsImmersion*, *Stacks.IsClosedImmersion*, *Stacks.IsOpenImmersion*,
*Stacks.ClosedSubstack*). Prove:

- base change, composition, and fppf-locality on the target: `f` is an (open, closed) immersion iff
  `W ×_𝒴 𝒳 → W` is one for some surjective, flat, locally finitely presented `W → 𝒴` from an
  algebraic space (stacks-04XE lines 780–795, Lemmas 100.9.2–100.9.4);
- an immersion is a monomorphism, and `|i|` is a homeomorphism onto a locally closed subset, closed
  or open for closed or open immersions (stacks-04XE lines 796–801, Lemmas 100.9.5–100.9.6; the source
  omits the proof of the second, which follows from the presentation description below and the
  quotient topology of SchemeAndStackFoundations §1.20);
- every immersion factors uniquely as an equivalence onto a locally closed substack followed by its
  inclusion (stacks-04XE lines 865–868, Lemma 100.9.10; the essential image of a fully faithful
  functor closed under isomorphism);
- for a presentation `𝒳 = [U/R]` by a smooth groupoid in algebraic spaces, `𝒵 ↦ U ×_𝒳 𝒵` is a
  bijection from locally closed (closed, open) substacks of `𝒳` to `R`-invariant locally closed
  (closed, open) subspaces of `U`, with inverse `Z ↦ [Z/R_Z]`; a morphism `𝒴 → 𝒳` factors through
  `𝒵` iff `𝒴 ×_𝒳 U → U` factors through `U ×_𝒳 𝒵` (stacks-04XE lines 804–851 and 872–888,
  Lemmas 100.9.7, 100.9.8, 100.9.11);
- `𝒰 ↦ |𝒰|` is an inclusion-preserving bijection from open substacks of `𝒳` to open subsets of
  `|𝒳|` (stacks-04XE lines 889–894, Lemma 100.9.12), agreeing with SchemeAndStackFoundations §1.7's
  `opensEquiv` on algebraic spaces.

*Needs:* 0.2; SchemeAndStackFoundations §1.19 (`RepresentableProperty`), §1.20 (`Stacks.points`,
`stack_presentation`), §1.14 (`Groupoid.restrict`), §1.7 (`opensEquiv`); gap:flat-groupoid-quotients
(restriction of a groupoid gives a fully faithful functor of quotients);
gap:stack-morphism-permanence.

**Checks.**

- `B𝔾_m = [{0}/𝔾_m] → [𝔸¹/𝔾_m]` is a closed immersion with image the closed point, and its
  complement is the open substack `[𝔾_m/𝔾_m] = Spec k`; under the presentation correspondence they
  are the `𝔾_m`-invariant subschemes `{0}` and `𝔾_m` of `𝔸¹`.
- The generic point `Spec k(t) → 𝔸¹_k` is a monomorphism and not an immersion: `{η}` is not locally
  closed in `𝔸¹_k`, since its complement, the set of closed points, is not closed.
- Uniqueness in the factorisation is equality of substacks: for `𝒳 = Spec k ⊔ Spec k`, the open
  immersion of `Spec k` onto the first copy factors through the substack `Spec k ⊔ ∅` and not
  through the equivalent substack `∅ ⊔ Spec k`.
- For `𝒳` an algebraic space, the open substacks are the open subspaces of SchemeAndStackFoundations
  §1.7, under `opensEquiv`.

### 0.4 Closed substacks, quasi-coherent ideals and infinitesimal neighbourhoods

Prove that `𝒵 ↦ ℐ_𝒵 := ker(O_𝒳 → i_* O_𝒵)` and `ℐ ↦ V(ℐ)` are inverse inclusion-reversing
bijections between closed substacks of `𝒳` and quasi-coherent ideals `ℐ ⊆ O_𝒳` in
SchemeAndStackFoundations §1.22's `Stacks.QCoh 𝒳` (*Stacks.closedSubstackEquivIdeal*). A morphism
`x : T → 𝒳` from a scheme factors through `V(ℐ)` iff the image of `x^* ℐ → O_T` is zero, and for every
morphism `f : 𝒴 → 𝒳` of algebraic stacks `V(ℐ) ×_𝒳 𝒴 = V(ℐ·O_𝒴)`, where `ℐ·O_𝒴` is the image of
`f^* ℐ → O_𝒴`. For the proof combine the presentation correspondence of 0.3 for a smooth atlas
`U → 𝒳` from a scheme (closed substacks are `R`-invariant closed subspaces of `U`) with the
description of quasi-coherent modules on `[U/R]` as modules on `U` with descent data (stacks-04XE
lines 872–888, Lemma 100.9.11; stacks-sheaves-on-stacks lines 953–955, Proposition 96.14.3) and the
scheme case, Mathlib's `AlgebraicGeometry.Scheme.IdealSheafData.subscheme` and `subschemeι`.

Define, for a closed substack `𝒵` with ideal `ℐ`, the *`n`-th infinitesimal neighbourhood*
`𝒳^{[n]}_𝒵 := V(ℐ^{n+1})` (*Stacks.infinitesimalNeighbourhood*) (ahr2020 lines 248–252, §1.5).

*Needs:* 0.3; SchemeAndStackFoundations §1.20 (`stack_presentation`), §1.22 (`Stacks.QCoh`,
*QCoh.presentationEquiv*); Mathlib `AlgebraicGeometry.Scheme.IdealSheafData.subscheme`,
`AlgebraicGeometry.Scheme.IdealSheafData.subschemeι`.

The API consists of the following facts.

- `𝒳^{[0]}_𝒵 = 𝒵`, and `𝒳^{[n]}_𝒵 ⊆ 𝒳^{[n+1]}_𝒵` are closed immersions whose ideal
  `ℐ^{n+1}/ℐ^{n+2}` squares to zero; `|𝒳^{[n]}_𝒵| = |𝒵|` for every `n`.
- For every `f : 𝒴 → 𝒳`, `𝒳^{[n]}_𝒵 ×_𝒳 𝒴 = 𝒴^{[n]}_{𝒵 ×_𝒳 𝒴}`.
- A morphism `T → 𝒳` from a scheme with `(x^* ℐ · O_T)^{n+1} = 0` factors through `𝒳^{[n]}_𝒵`.
- For `𝒳` a scheme and `𝒵` the closed subscheme of an ideal sheaf, `𝒳^{[n]}_𝒵` is the closed
  subscheme of the `(n+1)`-st power ideal.

**Checks.**

- For `𝒳 = 𝔸¹_k` and `𝒵` the origin, `𝒳^{[n]}_𝒵 = Spec k[t]/(t^{n+1})`, of length `n + 1`; an
  indexing by `ℐ^n` would give length `n` and `𝒳^{[0]} = 𝒳`.
- For `𝒳 = Spec k[ε]` and `𝒵` its reduced point, `ℐ = (ε)` and `ℐ² = 0`, so `𝒳^{[n]}_𝒵 = 𝒳` for every
  `n ≥ 1` while `𝒳^{[0]}_𝒵 = Spec k`.
- For `B𝔾_m ⊆ [𝔸¹/𝔾_m]`, `𝒳^{[n]} = [Spec k[t]/(t^{n+1}) / 𝔾_m]`, computed on the atlas `𝔸¹` through
  the presentation correspondence.
- The ideal of `V(ℐ)` is `ℐ` again: for `ℐ = (t²) ⊆ k[t]` the closed subscheme `Spec k[t]/(t²)` has
  ideal `(t²)`, not its radical `(t)`; a correspondence through supports only would lose it.

### 0.5 The reduced induced closed substack

Prove that for every closed subset `T ⊆ |𝒳|` there is a unique reduced closed substack `𝒵 ⊆ 𝒳` with
`|𝒵| = T` (stacks-04XE lines 1073–1091, Lemma 100.10.1). Define the *reduced induced closed
substack* on `T` and the *reduction* `𝒳_red` (*Stacks.reducedInduced*, *Stacks.reduction*), and for a
locally closed `T` the reduced induced locally closed substack, the reduced closed substack of the
open substack `|𝒳| ∖ (T̄ ∖ T)` (stacks-04XE lines 1107–1125, Definition 100.10.4, Remark 100.10.5).
For the proof, take a smooth presentation `[U/R]` with `U` a scheme, the closed subset `T' ⊆ |U|`
over `T` (which is `R`-invariant by the quotient description of `|𝒳|`), and the reduced induced
closed subscheme `Z ⊆ U` (Mathlib's `vanishingIdeal`); the two pullbacks of `Z` to `R` are reduced
closed subspaces with the same points, hence equal, which is checked on an étale atlas of `R`; then
apply 0.3. *Needs:* 0.1, 0.3; SchemeAndStackFoundations §1.20 (`Stacks.points`,
`stack_presentation`); Mathlib `AlgebraicGeometry.Scheme.IdealSheafData.vanishingIdeal`;
gap:reduced-regular-smooth-local; gap:stack-morphism-permanence.

The API consists of the following facts.

- A closed substack `𝒳' ⊆ 𝒳` of a reduced `𝒳` with `|𝒳'| = |𝒳|` is `𝒳` (stacks-04XE lines 1092–1099,
  Lemma 100.10.2).
- For `𝒴` reduced and `𝒵 ⊆ 𝒳` closed, `f : 𝒴 → 𝒳` factors through `𝒵` iff `|f|(|𝒴|) ⊆ |𝒵|`
  (stacks-04XE lines 1100–1106, Lemma 100.10.3).
- `𝒳_red → 𝒳` is a closed immersion which is a homeomorphism on points.
- Closed and locally closed substacks of a locally Noetherian stack, in particular `𝒳_red`, are
  locally Noetherian, an immersion being locally of finite type (stacks-06RD lines 1484–1500, Lemmas
  101.17.4–101.17.5).
- For a scheme, the reduced induced closed substack is the closed subscheme of Mathlib's
  `vanishingIdeal`.

**Checks.**

- `(Spec k[ε])_red = Spec k`, and `[Spec k[t]/(t²) / 𝔾_m]_red = B𝔾_m`.
- Reducedness is what makes the structure unique: `Spec k` and `Spec k[t]/(t²)` are closed substacks
  of `𝔸¹_k` with the same support `{0}`, and only the first is reduced.
- The factorisation criterion needs a reduced source: `Spec k[ε] → 𝔸¹_k`, `t ↦ ε`, has image the
  origin and does not factor through the reduced origin `Spec k`.
- On `[𝔸¹/𝔾_m]`, the reduced induced closed substack on the closed point is `B𝔾_m`, and on the open
  point (locally closed) it is `Spec k`.

### Examples

On `𝒳 = [𝔸¹/𝔾_m]` over a field `k`: the closed point `0` and the open point `1`; the closed
substack `B𝔾_m` with ideal `(t)` and neighbourhoods `[Spec k[t]/(t^{n+1}) / 𝔾_m]`; the open substack
`Spec k`. On `Bμ_p` over `𝔽_p`: reduced and regular although `μ_p` is not reduced.

### Dependencies

SchemeAndStackFoundations §§1.7–1.8, 1.14, 1.18–1.20, 1.22, 4.13; Mathlib
`AlgebraicGeometry.IsReduced`, `AlgebraicGeometry.IsLocallyNoetherian`,
`AlgebraicGeometry.Scheme.IdealSheafData.vanishingIdeal`, `.subscheme`, `.subschemeι`;
gap:stack-morphism-permanence, gap:stack-separation-axioms, gap:flat-groupoid-quotients,
gap:reduced-regular-smooth-local.

## Layer 1: points of finite type and automorphism groups

### 1.1 Finite type points

Define a *finite type point* (*Stacks.IsFiniteTypePoint*) of `𝒳` as a point of `|𝒳|` represented by
some morphism `Spec k → 𝒳` locally of finite type, and `𝒳_ft-pts ⊆ |𝒳|` as their set (stacks-06RD
lines 1545–1548 and 1567–1569, Definition 101.18.2). Prove that `x` is a finite type point iff there
are a scheme `U`, a closed point `u ∈ U` and a smooth `φ : U → 𝒳` with `φ(u) = x`, and that
`𝒳_ft-pts` is the union of the images of the closed points of all affine schemes smooth over `𝒳`
(stacks-06RD lines 1549–1578, Lemmas 101.18.1 and 101.18.3). *Needs:* SchemeAndStackFoundations
§1.20 (`SmoothLocal`, `Stacks.points`); Mathlib `AlgebraicGeometry.LocallyOfFiniteType`;
gap:stack-morphism-permanence (composition, base change and cancellation of local finite type; smooth
morphisms are locally of finite type).

The API consists of the following facts.

- A morphism locally of finite type carries finite type points to finite type points; if it is
  moreover surjective, `f(𝒳_ft-pts) = 𝒴_ft-pts` (stacks-06RD lines 1579–1592, Lemmas
  101.18.4–101.18.5).
- Every nonempty locally closed `T ⊆ |𝒳|` contains a finite type point, so `𝒳_ft-pts ∩ T` is dense in
  every closed `T` (stacks-06RD lines 1593–1601, Lemma 101.18.6); the proof uses the reduced induced
  locally closed substack of 0.5.
- If `x` is a finite type point, every representative which is locally of finite type is one; the
  property is attached to the point.

**Checks.**

- The generic point of `Spec ℤ_(p)` is a finite type point, since `Spec ℚ → Spec ℤ_(p)` is of finite
  type (`ℚ = ℤ_(p)[1/p]`), and it is not closed (alper-moduli lines 6983–6984).
- On `[𝔸¹/𝔾_m]` over `k`, the open point `1` is a finite type point and is not closed
  (alper-moduli lines 6985–6987).
- The generic point of `𝔸¹_k` is not a finite type point: `k(t)` is not a finitely generated
  `k[t]`-algebra. A definition with "flat" in place of "locally of finite type" would accept it,
  `Spec k(t) → 𝔸¹_k` being flat.
- For a scheme `X` locally of finite type over a field, the finite type points are the closed points
  (Mathlib `AlgebraicGeometry.LocallyOfFiniteType.jacobsonSpace`).

### 1.2 Closed points and field-valued points

Prove that every closed point of `|𝒳|` is a finite type point (Lemma 101.18.6 applied to the closed
subset `{x}`; stacks-06RD lines 1593–1601). Define, for a field `k`, the map
`π₀ 𝒳(Spec k) → |𝒳|` (*Stacks.pointOfObject*) sending the isomorphism class of an object over
`Spec k` to the point it represents (stacks-04XE lines 399–423, Definition 100.4.2 and the discussion
after it). *Needs:* 1.1; SchemeAndStackFoundations §1.18, §1.20 (`Stacks.points`, `Stacks.points.map`).

The API consists of the following facts.

- The map is natural in `𝒳` and compatible with field extensions `k ⊆ k'`: the square formed by
  pullback `π₀ 𝒳(Spec k) → π₀ 𝒳(Spec k')` and the two maps to `|𝒳|` commutes.
- A point lies in the image iff it has a representative defined over `k`.
- Two objects over `k` have the same image iff they become isomorphic over some extension of `k`.

**Checks.**

- For `𝒳 = B(ℤ/2)` over `ℝ`, `π₀ 𝒳(Spec ℝ)` has two elements, the trivial torsor and `Spec ℂ`
  (SchemeAndStackFoundations §1.21's `test_real_points`), and both map to the single point of `|𝒳|`:
  the map is not injective.
- For `𝒳 = 𝔸¹_ℝ`, the image of `π₀ 𝒳(Spec ℝ) = ℝ` misses the closed point `t² + 1 = 0`, which has no
  real representative: the map is not surjective.
- For `X` a scheme locally of finite type over an algebraically closed `k`, the `k`-morphisms
  `Spec k → X` map bijectively onto the closed points. The map from all morphisms `Spec k → X` is
  larger: a field embedding `ℂ(t) → ℂ` gives a morphism `Spec ℂ → 𝔸¹_ℂ` onto the generic point, so
  statements about rational points of a stack over `k` use morphisms over `Spec k`.

### 1.3 The automorphism group algebraic space

Define, for `x : Spec k → 𝒳`, the *automorphism group algebraic space*
`G_x := Isom_𝒳(x, x) = Spec k ×_{x,𝒳} I_𝒳` over `Spec k` (*Stacks.automorphismGroupSpace*): the
sheaf SchemeAndStackFoundations §1.20's `automorphismGroup x` on schemes over `Spec k`, which is an
algebraic space by `inertia.representable` and a group object by the group law of the inertia
(stacks-06RD lines 1667–1674, Section 101.19; lines 497–543, Remark 101.5.2 and Definition 101.5.3),
hence a `Groups.GroupSpace` over `Spec k` (§1.13). Define for a property `P` of algebraic spaces over
fields invariant under ground-field extension "the automorphism group of `𝒳` at `x` has `P`", and for
`f : 𝒳 → 𝒴` "`f` induces an isomorphism of automorphism groups at `x`"
(*Stacks.InducesIsoOnAutomorphismGroups*) (stacks-06RD lines 1698–1706 and 1721–1725, Remarks 101.19.3
and 101.19.5). *Needs:* SchemeAndStackFoundations §1.20 (`inertia`, `inertia.representable`,
`automorphismGroup`), §1.13 (`Groups.GroupSpace`), §1.14 (`stabilizer`, `stabilizerAt`); 0.2;
gap:inertia-of-presentations (stabilizer of a presentation); gap:isomorphism-fpqc-local-spaces
(descent of isomorphisms of algebraic spaces along field extensions).

The API consists of the following facts.

- For a field extension `k ⊆ k'` and `x' : Spec k' → Spec k → 𝒳`, `G_{x'} = G_x ×_{Spec k} Spec k'` as
  group spaces (stacks-06RD lines 1672–1674).
- For `P` invariant under ground-field extension, `G_x` has `P` for one representative of a point iff
  for all of them (stacks-06RD lines 1690–1697, Lemma 101.19.2; the source omits the proof, which is
  the base-change formula applied to a common extension of two representatives).
- `G_x → G_{f∘x}` is an isomorphism for one representative iff for all (stacks-06RD lines 1707–1720,
  Lemma 101.19.4).
- For a presentation `[U/R] → 𝒳` and `u : Spec k → U` over `x`, `G_x` is §1.14's `stabilizerAt u` of
  the groupoid (stacks-06RD lines 609–618, Lemma 101.5.7).
- For `x₁, x₂ : T → 𝒳`, `Isom_𝒳(x₁, x₂)` is a pseudo-torsor under `Isom_𝒳(x₂, x₂)` (stacks-06RD lines
  544–564, Lemma 101.5.4).
- For a monomorphism `f`, `G_x → G_{f∘x}` is an isomorphism (0.2).

**Checks.**

- For `G` flat and locally of finite presentation over `k` and `x` the trivial torsor of `BG`,
  `G_x = G`; for an algebraic space every `G_x` is trivial.
- On `[𝔸¹/𝔾_m]`, `G_0 = 𝔾_m` and `G_1` is trivial.
- On `Bμ_p` over `𝔽_p`, `G_x = μ_p` is nonreduced with `μ_p(𝔽̄_p)` trivial: a definition through the
  abstract group of automorphisms over an algebraically closed field would see no stabiliser.
- "`G_x(k)` is trivial" is not invariant under extension: on `B(μ_3)` over `ℚ`, `μ_3(ℚ) = 1` and
  `μ_3(ℚ(ζ_3)) = ℤ/3`, so this property of a representative is not a property of the point.

### 1.4 When the automorphism group is a scheme

Prove that `G_x` is a scheme if the diagonal of `𝒳` is quasi-separated or locally separated, or `𝒳`
is quasi-DM, or `I_𝒳 → 𝒳` is quasi-separated, locally separated or locally quasi-finite (stacks-06RD
lines 1675–1689, Lemma 101.19.1). For the proof, the first three cases reduce to the last three by the
comparison of diagonal and inertia; in the quasi-separated and locally separated cases `G_x` is a
decent group algebraic space over a field, hence separated and a scheme; in the locally quasi-finite
case it is locally quasi-finite over a field, hence a scheme. *Needs:* 1.3;
gap:stack-separation-axioms (Lemma 101.6.1); gap:group-spaces-over-fields.

**Checks.**

- For the non-separated group algebraic space `G = 𝔸¹_k/ℤ` over a field of characteristic zero
  (SchemeAndStackFoundations §1.12), `BG` has `G_x = G`, which is not a scheme; its inertia is not
  quasi-separated, so a hypothesis is needed.
- On a Deligne–Mumford stack `G_x` is an étale group scheme over `k`, and it need not be finite:
  the inertia is unramified (Lemma 101.6.1), so `G_x → Spec k` is unramified, `G_x` is a scheme
  (a DM stack is quasi-DM) and an unramified scheme over a field is étale; `G_x` is finite when
  moreover `I_𝒳 → 𝒳` is quasi-compact, for instance when the diagonal is. For the constant group `ℤ`
  over `k`, `Bℤ` is Deligne–Mumford (its atlas `Spec k` is étale, `ℤ_k → Spec k` being étale) with
  `G_x = ℤ_k = ⊔_ℤ Spec k`, étale and not quasi-compact, while `B(ℤ/2)` has the finite étale
  `G_x = (ℤ/2)_k`.
- On `B𝔾_m`, whose diagonal is affine, `G_x = 𝔾_m` is a scheme although `B𝔾_m` is not quasi-DM.

### Examples

On `[𝔸¹/𝔾_m]`: finite type points `0` (closed) and `1` (open), `G_0 = 𝔾_m`, `G_1 = 1`. On
`B(ℤ/2)_ℝ`: two real objects over one point, each with `G_x = ℤ/2`.

### Dependencies

Layer 0; SchemeAndStackFoundations §§1.12–1.14, 1.18, 1.20–1.21; Mathlib
`AlgebraicGeometry.LocallyOfFiniteType`, `AlgebraicGeometry.LocallyOfFiniteType.jacobsonSpace`;
gap:stack-morphism-permanence, gap:stack-separation-axioms, gap:inertia-of-presentations,
gap:isomorphism-fpqc-local-spaces, gap:group-spaces-over-fields.

## Layer 2: gerbes over algebraic stacks

### 2.1 Gerbes over an algebraic stack and the base of a gerbe

Say that a morphism `p : 𝒳 → 𝒴` of algebraic stacks makes `𝒳` a *gerbe over* `𝒴`
(*Stacks.IsGerbeOver*) when AlgebraicModuliForArithmeticGeometry §4.1's `relativeGerbe` holds for `p`
on `(Scheme.{u}, fppf)`: every object of `𝒴` lifts fppf-locally to `𝒳` up to isomorphism, and every
isomorphism between images of two objects of `𝒳` lifts fppf-locally. Say that `𝒳` *is a gerbe*
(*Stacks.IsGerbe*) when it is a gerbe over some algebraic space (stacks-06QB lines 2613–2617,
Definition 101.28.1). Prove that if `𝒳` is a gerbe, the fppf sheafification of
`T ↦ Ob 𝒳(T)/≅`, SchemeAndStackFoundations §1.23's `toModuliSheaf` of `moduliFunctor 𝒳`, is an
algebraic space `𝒳^♭`, the *base* of `𝒳` (*Stacks.gerbeBase*), and `𝒳 → 𝒳^♭` makes `𝒳` a gerbe over
it (stacks-06QB lines 2624–2640, Lemma 101.28.2). *Needs:* AlgebraicModuliForArithmeticGeometry §4.1
(`relativeGerbe`, `IsGerbe.equivalence_iff`); SchemeAndStackFoundations §1.18, §1.23
(`moduliFunctor`, `toModuliSheaf`); gap:stack-morphism-permanence (for the descent clause).

The API consists of the following facts.

- Base change: if `𝒳 → 𝒴` is a gerbe, so is `𝒳 ×_𝒴 𝒴' → 𝒴'` (stacks-06QB lines 2641–2651, Lemma
  101.28.3; `relativePullback`).
- Composition: gerbes over gerbes are gerbes (stacks-06QB lines 2652–2654, Lemma 101.28.4;
  `relativeComposition`).
- Descent: if `𝒴' → 𝒴` is surjective, flat and locally of finite presentation and `𝒳 ×_𝒴 𝒴' → 𝒴'`
  is a gerbe, so is `𝒳 → 𝒴` (stacks-06QB lines 2655–2663, Lemma 101.28.5; `relativeDescent` with
  gap:stack-morphism-permanence for local essential surjectivity of such `𝒴' → 𝒴`).
- Uniqueness of the base: any gerbe `𝒳 → X` over an algebraic space is identified with
  `𝒳 → 𝒳^♭` by a unique isomorphism `𝒳^♭ ≅ X` under `𝒳`, and every morphism from `𝒳` to an algebraic
  space factors uniquely through `𝒳^♭`.
- Being a gerbe over `𝒴` is invariant under equivalences of `𝒳` and `𝒴`.

**Checks.**

- For `G` flat and locally of finite presentation over `k`, `BG → Spec k` is a gerbe with base
  `Spec k`; every algebraic space `X` is a gerbe over itself with base `X`.
- `[𝔸¹/𝔾_m] → Spec k` is not a gerbe: the objects `0` and `1` over `k̄` are not fppf-locally
  isomorphic.
- For `G ≠ 1`, `Spec k → BG` is surjective and is not a gerbe: the automorphisms of the trivial
  torsor do not lift fppf-locally to `Spec k`, whose objects have only identity automorphisms.

### 2.2 Gerbes with a section are classifying stacks

Prove that for `π : 𝒳 → U` a gerbe over an algebraic space with a section `x : U → 𝒳` and
`G := Isom_𝒳(x, x) = U ×_{x,𝒳} I_𝒳`, the canonical morphism `[U/G] → 𝒳` from the quotient by the
trivial action, sending the trivial torsor to `x`, is an equivalence; `G → U` is flat and locally of
finite presentation; and `x : U → 𝒳` is surjective, flat and locally of finite presentation
(stacks-06QB lines 2664–2695, Lemma 101.28.6) (*Stacks.IsGerbeOver.classifyingEquiv*). For the proof,
`R = U ×_{x,𝒳,x} U` factors through the diagonal of `U` and equals `G`; the canonical
`[U/R] → 𝒳` is fully faithful and, by the lifting property of a gerbe, essentially surjective.
*Needs:* 2.1; SchemeAndStackFoundations §1.20 (`inertia`), §1.21 (`Stack.quotient`, `actionQuotient`,
`actionQuotient.torsorEquiv`); gap:flat-groupoid-quotients (Lemmas 94.16.1, 97.17.1, 97.18.3).

**Checks.**

- For `𝒳 = BG` over `U` with `x` the trivial torsor, `Isom(x, x) = G` and the equivalence is the
  identity of `BG`.
- The gerbe hypothesis is needed: `[𝔸¹/𝔾_m] → Spec k` with the section `1` has `Isom(1, 1)` trivial,
  and `[Spec k / 1] = Spec k` is not equivalent to `[𝔸¹/𝔾_m]`.
- The group is the automorphism group of the given section, not an abstract group: for `G = S₃` over
  `ℝ` and a section `P` of `BG` given by a nontrivial torsor, `Isom(P, P)` is the inner form of `S₃`
  twisted by `P`, and the equivalence is `B(Isom(P, P)) ≃ BS₃` sending the trivial torsor to `P`
  (SchemeAndStackFoundations §1.16's twisting bijection).

### 2.3 Fppf-local structure, flatness and smoothness

Prove that `𝒳 → 𝒴` is a gerbe iff there are an algebraic space `U`, a group algebraic space `G` flat
and locally of finite presentation over `U` and a surjective, flat, locally finitely presented
`U → 𝒴` with `𝒳 ×_𝒴 U ≅ [U/G]` over `U` (stacks-06QB lines 2696–2712, Lemma 101.28.7); that a gerbe
is surjective, flat and locally of finite presentation (stacks-06QB lines 2713–2721, Lemma 101.28.8);
that for `X → Y` smooth and `G` flat and locally of finite presentation over `Y` acting on `X` over
`Y`, `[X/G] → Y` is smooth, even when `G` is not smooth; and that a gerbe is smooth (stacks-06RD lines
3335–3357, Lemmas 101.33.7–101.33.8). *Needs:* 2.1, 2.2; SchemeAndStackFoundations §1.21
(`quotientStack_algebraic`); gap:flat-groupoid-quotients (`[U/G]` is a gerbe over `U`, Lemmas
78.27.1–78.27.2); gap:stack-morphism-permanence (descent of smoothness, flatness and local finite
presentation).

**Checks.**

- `Bμ_p → Spec 𝔽_p` is smooth although `μ_p` is not, while `Spec 𝔽_p → Bμ_p` is flat and locally of
  finite presentation and not smooth.
- `B𝔾_m → Spec ℤ` is a gerbe; its base change to `Spec 𝔽_p` is `B𝔾_{m,𝔽_p} → Spec 𝔽_p`.
- Flatness does not characterise gerbes: `Spec k → B𝔾_m` is surjective, flat and locally of finite
  presentation and is not a gerbe (2.1).

### 2.4 The inertia criterion

Prove that an algebraic stack `𝒳` is a gerbe iff `I_𝒳 → 𝒳` is flat and locally of finite
presentation (stacks-06QB lines 2722–2774, Proposition 101.28.9), and that for a gerbe `f : 𝒳 → 𝒴`
the relative inertia `I_{𝒳/𝒴} → 𝒳` is flat and locally of finite presentation, the diagonal
`𝒳 → 𝒳 ×_𝒴 𝒳` is surjective, flat and locally of finite presentation, and so are the induced
`T₁ ×_𝒳 T₂ → T₁ ×_𝒴 T₂` and `Isom_𝒳(x₁, x₂) → Isom_𝒴(f∘x₁, f∘x₂)` (stacks-06QB lines 2775–2820, Lemma
101.28.10). For the converse of the proposition, choose a smooth presentation `[U/R]`, let `G` be the
stabilizer of the groupoid (flat and locally of finite presentation as a base change of the
inertia), form `R/G` by the free action of `G` on `R` (an algebraic space by `artinBootstrap`), and
show that `𝒳 → U/(R/G)` is a gerbe over an algebraic space. *Needs:* 2.1–2.3; SchemeAndStackFoundations
§1.14 (`stabilizer`), §1.17 (`artinBootstrap`), §1.20 (`stack_presentation`, `inertia`,
`setoid_criterion`); gap:inertia-of-presentations (the stabilizer of the presentation is a base change
of the inertia); gap:flat-groupoid-quotients; gap:stack-morphism-permanence.

**Checks.**

- `[𝔸¹/𝔾_m]` is not a gerbe: its inertia has fibre `𝔾_m` over `0` and is trivial over `1`, hence is
  not flat.
- `Bμ_p` over `𝔽_p` is a gerbe: its inertia is a form of `μ_p`, flat and finitely presented.
- For a free action of a flat locally finitely presented `G` on `X`, `I_{[X/G]}` is trivial, so
  `[X/G]` is a gerbe over itself and an algebraic space (SchemeAndStackFoundations §1.20's
  `setoid_criterion`).

### 2.5 The diagonal criterion and universal homeomorphisms

Prove that `f : 𝒳 → 𝒴` makes `𝒳` a gerbe over `𝒴` iff `f` and `Δ_f` are surjective, flat and locally
of finite presentation (stacks-06QB lines 2821–2843, Proposition 101.28.11); that a gerbe is a
universal homeomorphism, that is `|𝒳 ×_𝒴 𝒴'| → |𝒴'|` is a homeomorphism for every `𝒴' → 𝒴`
(stacks-06QB lines 2862–2875, Lemma 101.28.13); and that if `𝒳` is a gerbe over `𝒴` and `Δ_𝒳` is
quasi-compact then so is `Δ_𝒴` (stacks-06QB lines 2876–2890, Lemma 101.28.14). *Needs:* 2.1–2.4;
SchemeAndStackFoundations §1.20 (`Stacks.points`, `Stacks.points.pullbackSurjective`);
gap:flat-lfp-open (openness of flat locally finitely presented morphisms);
gap:stack-morphism-permanence (descent of quasi-compactness).

**Checks.**

- `Spec k → B𝔾_m` is surjective, flat and locally of finite presentation, and its diagonal is the
  unit section `Spec k → 𝔾_m`, which is not flat; it is not a gerbe.
- `Spec k → Spec k[ε]` is a universal homeomorphism and not a gerbe (it is not flat): the converse of
  Lemma 101.28.13 fails. `Bμ_p → Spec 𝔽_p` is a gerbe and a universal homeomorphism.
- Quasi-compactness of the diagonal does not go up: for the constant group `ℤ` over `k`,
  `Bℤ → Spec k` is a gerbe, `Spec k` has quasi-compact diagonal and `Bℤ` does not, its diagonal
  pulling back to `ℤ_k = ⊔_ℤ Spec k`.

### 2.6 The dense open gerbe

Prove that a reduced algebraic stack `𝒳` with `I_𝒳 → 𝒳` quasi-compact has a dense open substack which
is a gerbe, namely the largest open substack over which `I_𝒳 → 𝒳` is flat and locally of finite
presentation (stacks-06QB lines 2919–2938, Proposition 101.29.1) (*Stacks.denseOpenGerbe*). For the
proof take a presentation `[U/R]`; the stabilizer `G → U` is quasi-compact and locally of finite type;
the largest open `W ⊆ U` over which `G` is flat and locally of finite presentation is dense by generic
flatness and `R`-invariant because `s^*G ≅ t^*G` over `R`; its open substack has flat locally finitely
presented inertia, and 2.4 applies. *Needs:* 0.3 (open substacks), 0.5, 2.4;
SchemeAndStackFoundations §1.20 (`stack_presentation`); gap:generic-flatness-spaces;
gap:inertia-of-presentations (Lemmas 101.5.1, 101.5.7); gap:stack-morphism-permanence.

**Checks.**

- On `[𝔸¹/𝔾_m]` the dense open gerbe is the open point `[𝔾_m/𝔾_m] = Spec k`, and it is the largest.
- On `[Spec k[x₀, x₁, …]/𝔾_m]` with `t·xᵢ = t^{pⁱ} xᵢ` (stacks-06QB lines 2943–2953, Example 101.29.2)
  the dense open gerbe is the stratum `x₀ ≠ 0`, with trivial stabilisers; the remaining strata are
  gerbes with groups `μ_{pⁱ}` and `𝔾_m`.
- Reducedness is needed: on `[Spec k[ε]/𝔾_m]` with `ε` of weight one the stabilizer over the atlas is
  `Spec k[ε][λ^{±1}]/((λ − 1)ε)`, which is not flat over `k[ε]` (`λ − 1` kills `ε` and is not in `εB`);
  the only dense open substack is the whole stack, which is not a gerbe, while its reduction `B𝔾_m`
  is.

### Examples

`BG → Spec k` for flat locally finitely presented `G`, including `Bμ_p`; `B𝔾_m → Spec ℤ`; the open
point of `[𝔸¹/𝔾_m]` as its dense open gerbe.

### Dependencies

Layers 0–1; AlgebraicModuliForArithmeticGeometry §4.1; SchemeAndStackFoundations §§1.14, 1.16–1.18,
1.20–1.21, 1.23; gap:stack-morphism-permanence, gap:flat-lfp-open, gap:inertia-of-presentations,
gap:flat-groupoid-quotients, gap:generic-flatness-spaces.

## Layer 3: reduced one-point stacks and residual gerbes

### 3.1 Reduced one-point stacks

Prove, for an algebraic stack `𝒵`: if some `Spec k → 𝒵` with `k` a field is surjective and flat, then
every `Spec k' → 𝒵` with `k'` a field is surjective and flat (stacks-06ML lines 1135–1148, Lemma
100.11.1); `𝒵` is reduced with `|𝒵|` a singleton iff there is a surjective flat `Spec k → 𝒵`, iff
there is one which is moreover locally of finite type (stacks-06ML lines 1149–1175, Lemma 100.11.2);
`𝒵` is reduced, locally Noetherian with `|𝒵|` a singleton iff there is a surjective, flat, locally
finitely presented `Spec k → 𝒵` (stacks-06ML lines 1178–1198, Lemma 100.11.3)
(*Stacks.IsReducedSingleton*, *Stacks.IsReducedNoetherianSingleton*). For the proof, the generic
point of a reduced atlas gives a flat point; an atlas pulled back to a flat point is smooth over a
field, hence regular; a closed point of an affine atlas gives a point locally of finite type, of
finite presentation when the atlas is locally Noetherian. *Needs:* 0.1; SchemeAndStackFoundations
§1.19, §1.20 (`Stacks.points.pullbackSurjective`); gap:stack-morphism-permanence;
gap:reduced-regular-smooth-local.

**Checks.**

- `Bμ_p` over `𝔽_p` and `B𝔾_m` over `k` are reduced, locally Noetherian and one-point:
  `Spec k → BG` is surjective, flat and locally of finite presentation for `G` flat and locally of
  finite presentation.
- `Spec k[ε]` has one point and is not reduced; `Spec k → Spec k[ε]` is surjective and not flat.
- For `X = U/G` of stacks-06ML lines 1238–1256 (0.2), `X` is reduced with one point and is not
  locally Noetherian; `Spec ℚ̄ → X` is surjective, flat and locally of finite type and not locally of
  finite presentation, so the two lemmas do not collapse: `Spec ℚ̄ → U` is a closed immersion whose
  ideal, generated by the `a ⊗ 1 − 1 ⊗ a`, is not finitely generated (the point is not open in the
  profinite space `|U|`), and it is flat because every local ring of `U` is the field `ℚ̄`.

### 3.2 Rigidity of monomorphisms

Prove that if `𝒵' → 𝒵` is a monomorphism and `𝒵` has a surjective, flat, locally finitely presented
`Spec k → 𝒵`, then either `𝒵'` is empty or `𝒵' → 𝒵` is an equivalence (stacks-06ML lines 1199–1213,
Lemma 100.11.4); and that a reduced one-point `𝒵` contains a unique substack `𝒵'` (Convention 4)
which is a reduced, locally Noetherian one-point algebraic stack, with `𝒵' → 𝒵` a monomorphism, and
for every surjective, flat `Spec k → 𝒵` locally of finite type, `𝒵' ≃ [Spec k/R]` with
`R = Spec k ×_𝒵 Spec k` (stacks-06ML lines 1214–1237, Lemma 100.11.5)
(*Stacks.reducedNoetherianSingletonCore*). For the first, the pullback of `𝒵'` to `Spec k` is a
nonempty algebraic space with a monomorphism to `Spec k`, hence `Spec k` by 0.2, and every object of
`𝒵` is fppf-locally a pullback of the point. *Needs:* 0.2, 3.1; SchemeAndStackFoundations §1.21
(`quotientStack_algebraic`), §1.8 (`Spaces.EtaleLocal`); Mathlib
`AlgebraicGeometry.LocallyOfFinitePresentation.iff_locallyOfFiniteType` (a morphism of algebraic
spaces locally of finite type into the spectrum of a field is locally of finite presentation);
gap:flat-groupoid-quotients; gap:stack-morphism-permanence (fppf-local essential surjectivity of
`Spec k → 𝒵`).

**Checks.**

- For `X = U/G` of Example 100.11.6 (0.2), `Spec ℚ̄ → X` is a monomorphism from a nonempty stack which
  is not an equivalence; `X` is reduced one-point but not locally Noetherian, and its locally
  Noetherian core is `Spec ℚ̄ = [Spec ℚ̄/R]` with `R = Spec ℚ̄ ×_X Spec ℚ̄ = Spec ℚ̄`, a proper substack
  (stacks-06ML lines 1238–1256). The first lemma does not apply to `X`: no surjective flat
  `Spec k → X` is locally of finite presentation, `X` not being locally Noetherian (3.1).
- The monomorphism hypothesis is needed: `Spec k → BG` is nonempty, `BG` has the flat finitely
  presented point `Spec k`, and `Spec k → BG` is not an equivalence for `G ≠ 1`.
- For `𝒵 = BG` with `G` flat and locally of finite presentation over `k`, the core is `BG` itself, and
  for `𝒵 = Spec k` it is `Spec k`.

### 3.3 Residual gerbes

Prove that for `x ∈ |𝒳|` the following are equivalent: there is a monomorphism `𝒵 → 𝒳` from an
algebraic stack with `|𝒵|` a singleton mapping to `x`; there is one with `𝒵` reduced; there are a
monomorphism `f : 𝒵 → 𝒳` and a surjective flat `z : Spec k → 𝒵` with `f(z) = x`; and that then there
is a unique substack `𝒵_x ⊆ 𝒳` which is a reduced, locally Noetherian algebraic stack with `|𝒵_x|` a
singleton mapping to `x` (stacks-06ML lines 1260–1286, Lemma 100.11.7). Define: the *residual gerbe
of `𝒳` at `x` exists* (*Stacks.ResidualGerbeExists*) when these conditions hold, and the *residual
gerbe* `𝒵_x` (*Stacks.residualGerbe*) is that substack (stacks-06ML lines 1288–1297, Definition
100.11.8). *Needs:* 0.2, 0.5, 3.1, 3.2; SchemeAndStackFoundations §1.18.

The API consists of the following facts.

- `𝒵_x → 𝒳` is a monomorphism with image `{x}`, and there is a surjective, flat, locally finitely
  presented `Spec k → 𝒵_x` (stacks-06ML lines 1300–1303).
- Existence and the substack depend only on `x ∈ |𝒳|`, and an equivalence `𝒳 ≃ 𝒳'` carries `𝒵_x` to
  a substack equivalent to `𝒵_{x'}`.
- For an open substack `𝒰 ∋ x`, the residual gerbe of `𝒰` at `x` exists iff that of `𝒳` does, and
  they are the same substack.

**Checks.**

- For a scheme `X` and `x ∈ X`, `𝒵_x = Spec κ(x)` with Mathlib's `Scheme.residueField`
  (stacks-06ML lines 1306–1308, Example 100.11.9).
- On `[𝔸¹/𝔾_m]`, `𝒵_0 = B𝔾_m` (the closed substack `[{0}/𝔾_m]`) and `𝒵_1 = Spec k`; on `BG` over
  `k`, `𝒵 = BG`.
- `Spec k → BG` with `G ≠ 1` has one-point image and is not the residual gerbe: it is not a
  monomorphism.
- At the point of `Spec k[ε]` the residual gerbe is `Spec k`, not `Spec k[ε]`: the definition
  requires reducedness.

### 3.4 Properties of residual gerbes

Prove, when `𝒵_x` exists: `𝒵_x` is regular (stacks-06ML lines 1312–1319, Lemma 100.11.10); every
field-valued point of `𝒳` in the class `x` factors through `𝒵_x` (stacks-06ML lines 1320–1327, Lemma
100.11.11); every monomorphism `𝒵 → 𝒳` from a reduced, locally Noetherian one-point stack with image
`x` factors through an equivalence onto `𝒵_x` (stacks-06ML lines 1328–1337, Lemma 100.11.12); if `𝒳`
is DM, quasi-DM, separated or quasi-separated, so is `𝒵_x` (stacks-06RD lines 452–456, Lemma
101.4.16); `𝒵_x` is a gerbe over a reduced, locally Noetherian algebraic space `𝒵_x^♭` with one point,
its base (stacks-06QB lines 2846–2861, Lemma 101.28.12); and if `π : 𝒳 → 𝒴` is a gerbe and `𝒵_{π(x)}`
exists, then `𝒵_x = 𝒵_{π(x)} ×_𝒴 𝒳` (stacks-06RD lines 4831–4839, Lemma 101.51.1). For an algebraic
space `X`, `𝒵_x` is an algebraic space, the residual space of `X` at `x` (stacks-06ML lines 1308–1310;
stacks-decent-spaces lines 1500–1540, Lemma 68.13.5 and Definition 68.13.6). *Needs:* 0.1, 0.2, 2.1,
2.3, 2.4, 2.5, 3.1–3.3; SchemeAndStackFoundations §1.20 (`inertia`); gap:stack-separation-axioms;
gap:stack-morphism-permanence; gap:reduced-regular-smooth-local.

**Checks.**

- Regularity holds even at singular points: at the origin of `Spec k[x, y]/(xy)` the residual gerbe is
  `Spec k`, which is regular.
- The base need not be the spectrum of a field: for `X = Spec ℚ(t)/ℤ`, with `ℤ` acting freely by
  `t ↦ t + 1`, the residual gerbe is `X` itself, a reduced locally Noetherian one-point algebraic space which is not
  the spectrum of a field (an étale cover of `Spec F` by `Spec ℚ(t)` would make
  `ℤ × Spec ℚ(t) = Spec(ℚ(t) ⊗_F ℚ(t))` finite over `Spec ℚ(t)`). Layer 5 adds the decency that makes
  the base a field.
- For `𝒳 = [𝔸¹/𝔾_m]`, `𝒵_0 = B𝔾_m` is a gerbe over `𝒵_0^♭ = Spec k`.
- The pullback formula needs a gerbe: for the non-gerbe `[𝔸¹/𝔾_m] → Spec k` and `y` the point of
  `Spec k`, `𝒵_y ×_{Spec k} [𝔸¹/𝔾_m]` is the whole stack, not the residual gerbe at `0` or `1`.

### 3.5 Functoriality

Prove that a morphism `f : 𝒳 → 𝒴` with `f(x) = y`, where `𝒵_x` and `𝒵_y` exist, restricts to a
morphism `𝒵_x → 𝒵_y` with a 2-commutative square (stacks-06ML lines 1338–1351, Lemma 100.11.13)
(*Stacks.residualGerbeMap*); and that if for one representative `Spec k → 𝒳` of `x` the morphism
`Spec k ×_𝒳 Spec k → Spec k ×_𝒴 Spec k` is an isomorphism, then `𝒵_x → 𝒵_y` is an isomorphism
(stacks-06ML lines 1352–1368, Lemma 100.11.14). *Needs:* 3.2–3.4; gap:flat-groupoid-quotients (the
canonical `[U/R] → 𝒳` is fully faithful).

**Checks.**

- For `Spec k → BG` with `G ≠ 1`, the induced `𝒵_x = Spec k → 𝒵_y = BG` is not an isomorphism, and
  indeed `Spec k ×_{Spec k} Spec k = Spec k` differs from `Spec k ×_{BG} Spec k = G`.
- For an open immersion `𝒰 → 𝒳` the induced map of residual gerbes is an isomorphism.
- For `BG → Spec k` the induced `BG → Spec k` is not an isomorphism, and the criterion fails:
  `Spec k ×_{BG} Spec k = G`.

### Examples

Residual gerbes of `[𝔸¹/𝔾_m]` (`B𝔾_m` and `Spec k`), of a scheme (`Spec κ(x)`), of `BG`, and of the
non-decent one-point spaces `U/G` and `Spec ℚ(t)/ℤ`.

### Dependencies

Layers 0–2; SchemeAndStackFoundations §§1.8, 1.18–1.21; Mathlib
`AlgebraicGeometry.LocallyOfFinitePresentation.iff_locallyOfFiniteType`;
gap:stack-morphism-permanence, gap:stack-separation-axioms, gap:flat-groupoid-quotients,
gap:reduced-regular-smooth-local.

## Layer 4: existence of residual gerbes

### 4.1 Finite type points

Prove that for `x ∈ |𝒳|` the following are equivalent: `x` is a finite type point; there are an
algebraic stack `𝒵` with `|𝒵|` a singleton and a morphism `𝒵 → 𝒳` locally of finite type with image
`{x}`; the residual gerbe `𝒵_x` exists and `𝒵_x → 𝒳` is locally of finite type (stacks-06RD lines
1609–1665, Lemma 101.18.7). Moreover, for a smooth `U → 𝒳` from an affine scheme and a closed point
`u ∈ U` over `x`, with `u = Spec κ(u)`, `𝒵_x ≃ [u/(u ×_𝒳 u)]` and `u → 𝒵_x` is surjective, flat and
locally of finite presentation. For the proof, the projections of `u ×_𝒳 u` to `u` are locally of
finite type over a field, hence flat and locally of finite presentation; the quotient is algebraic
(SchemeAndStackFoundations §1.21's `quotientStack_algebraic`), maps fully faithfully to `𝒳`, and is
the residual gerbe by 3.4; local finite type descends along the fppf covering of `𝒵_x ×_𝒳 U` by
`u ×_𝒳 U`. *Needs:* 1.1, 3.2–3.4; SchemeAndStackFoundations §1.21, §1.8 (`Spaces.EtaleLocal`);
Mathlib `AlgebraicGeometry.LocallyOfFinitePresentation.iff_locallyOfFiniteType` (local finite type
over a field implies local finite presentation); gap:flat-groupoid-quotients;
gap:stack-morphism-permanence (descent of local finite type).

**Checks.**

- On `[𝔸¹/𝔾_m]`, `𝒵_1 = Spec k → [𝔸¹/𝔾_m]` is an open immersion, locally of finite type.
- Existence alone does not give a finite type point: at the generic point of `𝔸¹_k` the residual
  gerbe `Spec k(t)` exists and `Spec k(t) → 𝔸¹_k` is not locally of finite type.
- At the generic point of `Spec ℤ_(p)`, a finite type point, `𝒵 = Spec ℚ → Spec ℤ_(p)` is of finite
  type.

### 4.2 Flat locally quasi-finite presentations

Prove that if there are a scheme `U` and a surjective, flat, locally finitely presented, locally
quasi-finite `U → 𝒳`, then the residual gerbe of `𝒳` exists at every point: with
`U' = ⊔_{u ↦ x} Spec κ(u)` and `R' = U' ×_𝒳 U'`, the projections `R' → U'` are flat, locally of
finite presentation and locally quasi-finite, `[U'/R']` is algebraic, maps to `𝒳` by a monomorphism
with image `{x}`, and is reduced and locally Noetherian (stacks-06RD lines 3061–3095, the proof of
Lemma 101.31.2). Deduce existence of residual gerbes on algebraic spaces (residual spaces;
stacks-decent-spaces lines 1500–1531, Lemma 68.13.5), on Deligne–Mumford stacks (the étale atlas of
SchemeAndStackFoundations §1.19's `IsDeligneMumford`), and on quasi-DM stacks (stacks-06RD lines
3059–3060, Lemma 101.31.2, through Theorem 101.21.3). *Needs:* 0.2, 3.3, 3.4;
SchemeAndStackFoundations §1.19 (`IsDeligneMumford`), §1.21 (`quotientStack_algebraic`), §1.8
(`Spaces.EtaleLocal`); Mathlib `AlgebraicGeometry.LocallyOfFinitePresentation.iff_locallyOfFiniteType`
(the projections of `R'` are locally of finite type over `U'`, hence locally of finite
presentation); gap:quasi-dm-flat-presentation; gap:flat-groupoid-quotients;
gap:quasi-finite-over-fields (the projections of `R'` are locally quasi-finite);
gap:stack-morphism-permanence.

**Checks.**

- `B(ℤ/2)` over a field is Deligne–Mumford and its residual gerbe is `B(ℤ/2)`.
- `Bμ_p` over `𝔽_p` is quasi-DM and not DM: the atlas `Spec 𝔽_p → Bμ_p` is flat, finitely presented
  and quasi-finite, and the residual gerbe is `Bμ_p`.
- On the algebraic space `𝔸¹_ℚ/ℤ` (SchemeAndStackFoundations §1.12) residual spaces exist at every
  point, and at the generic point the residual space is not the spectrum of a field (§1.7's
  `points.test_no_residue_field`).
- `B𝔾_m` is not quasi-DM, and its residual gerbe exists by 4.3: the hypothesis is sufficient, not
  necessary.

### 4.3 Gerbes and stacks with quasi-compact inertia

Prove that if `𝒳` is a gerbe, the residual gerbe exists at every `x`, namely
`𝒵_x = (𝒳 ×_{𝒳^♭} 𝒵^♭_x)_red` for the residual space `𝒵^♭_x` of the base at the image of `x`
(stacks-06QB lines 2893–2904, Lemma 101.28.15); and that if `I_𝒳 → 𝒳` is quasi-compact, the residual
gerbe exists at every `x`, namely the residual gerbe at `x` of the dense open gerbe (2.6) of the
reduced closure of `x` (stacks-06RD lines 3048–3056, Lemma 101.31.1). *Needs:* 0.5, 2.1, 2.3, 2.5,
2.6, 3.3, 4.2; gap:stack-morphism-permanence (a stack locally of finite type over a locally Noetherian
one is locally Noetherian; base change of quasi-compact morphisms).

**Checks.**

- `[𝔸¹/𝔾_m]` has quasi-compact inertia; `𝒵_0 = B𝔾_m` and `𝒵_1 = Spec k`, the latter being the dense
  open gerbe of the closure `|𝒳|` of `1`.
- For the constant group `ℤ` over `k`, `Bℤ` has inertia which is not quasi-compact and is a gerbe, so
  its residual gerbe `Bℤ` exists by the first statement.
- On `B G` for the non-separated group space `G = 𝔸¹_k/ℤ` in characteristic zero the inertia is
  quasi-compact and not quasi-separated; both statements give `𝒵 = BG`.

### 4.4 Locally Noetherian stacks

Prove that if `𝒳` is locally Noetherian the residual gerbe exists at every point (stacks-06RD lines
3096–3129, Lemma 101.31.3). For the proof, replace `𝒳` by the open substack image of an affine
Noetherian smooth chart `U` (0.3), choose `u` over `x` whose closure meets the fibre `E` of `x` only in
`u`, and show that `R' = u ×_𝒳 u` is the closed subscheme of `u ×_𝒳 U` over the reduced closure of
`u`, so that its projections are flat and locally of finite presentation and `[u/R']` is the residual
gerbe. *Needs:* 0.3, 3.3, 3.4; SchemeAndStackFoundations §1.20 (`stack_presentation`), §1.21;
gap:flat-groupoid-quotients; gap:stack-morphism-permanence.

**Checks.**

- `Spec ℚ(t)/ℤ` is locally Noetherian and its residual gerbe at its point is the space itself.
- `[Spec k[x₀, x₁, …]/𝔾_m]` of 2.6 is not locally Noetherian, and its residual gerbes exist by 4.3.
- On `X = U/G` of Example 100.11.6 (0.2), which is not locally Noetherian, the residual gerbe exists
  by 4.1 (the point is a finite type point, `Spec ℚ̄ → X` being locally of finite type) and is
  `Spec ℚ̄`.

### 4.5 Closed points

Prove that for `𝒳` locally Noetherian and `x ∈ |𝒳|`, `x` is a closed point iff `𝒵_x → 𝒳` is a closed
immersion, and then `𝒵_x` is the reduced induced closed substack on `{x}` and `𝒵_x → 𝒳` is locally of
finite type (stacks-06RD lines 4870–4878, Lemma 101.51.4; Remark 101.51.3, lines 4866–4869).
*Needs:* 0.3, 0.5, 1.2, 3.3, 4.1, 4.4; gap:stack-morphism-permanence.

**Checks.**

- On `[𝔸¹/𝔾_m]`, `𝒵_0 = B𝔾_m → 𝒳` is a closed immersion and `𝒵_1 = Spec k → 𝒳` is an open immersion
  which is not closed.
- For a discrete valuation ring `R`, the residual gerbe at the closed point is the closed immersion
  `Spec(R/𝔪) → Spec R`, and at the generic point the open immersion `Spec K → Spec R`.
- The locally Noetherian hypothesis is needed: on `X = U/G` of Example 100.11.6 the unique point is
  closed and `𝒵_x = Spec ℚ̄ → X` is a monomorphism which is not a closed immersion; otherwise it would
  be a closed substack of the reduced `X` with all its points, hence `X` (0.5), whereas
  `Spec ℚ̄ → X` is not an isomorphism (0.2).

### Examples

`[𝔸¹/𝔾_m]` (closed point `0` with closed residual gerbe `B𝔾_m`, open point `1` with open residual
gerbe `Spec k`); `Bμ_p` (quasi-DM); `Bℤ` (a gerbe without quasi-compact inertia); `Spec ℚ(t)/ℤ`
(locally Noetherian, not decent).

### Dependencies

Layers 0–3; SchemeAndStackFoundations §§1.8, 1.12, 1.19–1.21; Mathlib
`AlgebraicGeometry.LocallyOfFinitePresentation.iff_locallyOfFiniteType`;
gap:quasi-dm-flat-presentation, gap:flat-groupoid-quotients, gap:quasi-finite-over-fields,
gap:stack-morphism-permanence.

## Layer 5: decent stacks and the residue field

### 5.1 Decent algebraic stacks

Say that `x ∈ |𝒳|` is *quasi-compact* when some, equivalently every, representative `Spec k → 𝒳` is
quasi-compact (stacks-04XE lines 1453–1461, Lemma 100.14.1), and that `𝒳` is *decent*
(*Stacks.IsDecent*) when every point is quasi-compact (stacks-06RD lines 4686–4691, Definition
101.48.1). Prove that a stack with quasi-compact diagonal, in particular a quasi-separated one, is
decent (stacks-06RD lines 4692–4698, Lemma 101.48.2); that if `f : 𝒳 → 𝒴` is representable by
algebraic spaces and quasi-separated (for example a monomorphism or an immersion) and `𝒴` is decent,
then `𝒳` is decent (lines 4699–4721, Lemma 101.48.3); that if `f` is quasi-compact and surjective and
`𝒳` is decent then `𝒴` is decent (lines 4722–4731, Lemma 101.48.4); and that the base of a decent
gerbe is decent (lines 4732–4735, Lemma 101.48.5). *Needs:* 0.2, 0.3, 2.5;
SchemeAndStackFoundations §1.20 (`QuasiCompactStack`); gap:stack-morphism-permanence;
gap:stack-separation-axioms; gap:decent-algebraic-spaces (for an algebraic space this is decency of
Decent Spaces, Definition 68.6.1, stacks-decent-spaces lines 567–573).

**Checks.**

- `𝔸¹_ℚ/ℤ` is not decent (stacks-decent-spaces lines 587–589, Example 68.6.2).
- `B𝔾_m` has affine diagonal and is decent.
- `Spec ℚ(t)/ℤ` is not decent: its point `Spec ℚ(t) → X` has `Spec ℚ(t) ×_X Spec ℚ(t) = ⊔_ℤ Spec ℚ(t)`,
  which is not quasi-compact. Likewise `X = U/G` of Example 100.11.6 is not decent, the group being
  infinite.

### 5.2 Factorisation through the residual gerbe

Prove that for `f : 𝒴 → 𝒳` and `x ∈ |𝒳|` with `𝒳` decent or locally Noetherian, `I_𝒳 → 𝒳`
quasi-compact, `|f|(|𝒴|) ⊆ {x}` and `𝒴` reduced, `f` factors through `𝒵_x` (stacks-06RD lines
4842–4865, Lemma 101.51.2); the case of algebraic spaces, through the residual space, is part of the
statement (stacks-decent-spaces lines 1565–1601, Lemmas 68.13.9–68.13.10). For the proof, factor
through the reduced closure of `x` (0.5), pass to its dense open gerbe (2.6), which contains `x`,
reduce to the base algebraic space by 3.4's pullback formula, and apply the space case. *Needs:* 0.5,
2.5, 2.6, 3.4, 4.3, 4.4, 5.1; gap:decent-algebraic-spaces (Lemmas 68.7.2, 68.8.3, 68.11.1 in the
space case); gap:reduced-scheme-residue-field-factorisation (the scheme case).

**Checks.**

- The hypothesis is the singleton `{x}`, not its closure: the identity of `𝔸¹_k` has image the closure
  of the generic point and does not factor through `Spec k(t)`.
- A nonreduced source does not factor: `Spec k[ε] → 𝔸¹_k`, `t ↦ ε`, has image the origin and does not
  factor through `Spec k`.
- Neither decent nor locally Noetherian: for an infinite profinite group `G`, `Y = Spec` of the
  locally constant functions `G → k` and `X = Y/Γ` with `Γ = G` discrete, the projection `Y → X` has
  image one point, `Y` is reduced, and `Y → X` factors through no `Spec K → X`
  (stacks-decent-spaces lines 1604–1616, Example 68.13.11).

### 5.3 The residue field

Prove that if `𝒳` is decent and the residual gerbe `𝒵_x` exists, its base `𝒵_x^♭` (3.4) is isomorphic
to the spectrum of a field `κ(x)`, unique up to unique isomorphism, so that `𝒵_x` is a gerbe over
`Spec κ(x)`; define `κ(x)`, the *residue field* of `x` (*Stacks.residueField*). For the proof,
`𝒵_x → 𝒳` is a monomorphism, hence separated (0.2), so `𝒵_x` is decent (5.1) and so is its base;
a decent reduced locally Noetherian one-point algebraic space is the spectrum of a field
(stacks-decent-spaces lines 1542–1552, Lemma 68.13.7, with Lemma 68.11.1). Sources: alper-moduli
lines 6962–6965 and 16528–16537 (Proposition 7.4.39, for Noetherian stacks); rydh2011 lines 1268–1277
(Theorem B.2, for quasi-compact diagonal). *Needs:* 2.1, 2.5, 3.4, 5.1; Mathlib
`AlgebraicGeometry.Scheme.residueField`; gap:decent-algebraic-spaces.

The API consists of the following facts.

- Every representative `Spec k → 𝒳` of `x` induces a field homomorphism `κ(x) → k`, through
  `Spec k → 𝒵_x → Spec κ(x)` (3.4).
- For decent `𝒳`, `𝒴` and `f : 𝒳 → 𝒴` with residual gerbes at `x` and `f(x)`, 3.5 gives
  `κ(f(x)) → κ(x)`, functorially.
- For a scheme, `κ(x)` is Mathlib's `Scheme.residueField x`; for a decent algebraic space it is the
  residue field of Decent Spaces, Definition 68.11.2 (stacks-decent-spaces lines 1225–1227).
- The residual gerbe of a quasi-separated stack, of a locally Noetherian decent stack, or of a decent
  stack at a finite type point is a gerbe over `Spec κ(x)` (with 4.1, 4.3).

**Checks.**

- Decency cannot be replaced by local Noetherianity: `Spec ℚ(t)/ℤ` is locally Noetherian, its
  residual gerbe is itself, and its base is not the spectrum of a field (3.4).
- For `𝒳 = 𝔸¹_ℚ` and `x` the point `t² + 1 = 0`, `κ(x) = ℚ(i)`.
- For `𝒳 = [Spec ℂ / (ℤ/4)]` over `ℝ`, with `ℤ/4` acting through `ℤ/4 → ℤ/2 = Gal(ℂ/ℝ)`, `|𝒳|` is
  one point, the base is `Spec ℂ/(ℤ/4) = Spec ℝ`, so `κ = ℝ`, and `𝒳` has no object over `ℝ`: such an
  object would lift the class of `Spec ℂ` in `H¹(ℝ, ℤ/2)` to `H¹(ℝ, ℤ/4) = Hom(ℤ/2, ℤ/4)`, whose two
  elements both reduce to zero.

### 5.4 Algebraicity of points with quasi-compact diagonal

Prove that if `𝒳` has quasi-compact diagonal and `ξ ∈ |𝒳|`, there is a quasi-compact immersion
`𝒵 → 𝒳` with `ξ ∈ |𝒵|` such that `I_𝒵 → 𝒵` is flat and locally of finite presentation and `𝒵` is a
gerbe over an integral affine scheme `Z` whose generic point is the image of `ξ`; then
`𝒵_ξ = 𝒵 ×_Z Spec κ(ξ)` and `𝒵_ξ → 𝒳` is quasi-affine (rydh2011 lines 1268–1305, Theorem B.2)
(*Stacks.algebraicityOfPoints*). The proof route here replaces Rydh's generic flatness theorem B.1 by
the dense open gerbe: replace `𝒳` by the reduced closure of `ξ` (its diagonal and inertia remain
quasi-compact), take the dense open gerbe of 2.6, which contains `ξ` since `ξ` is a generic point of
the irreducible closure; its base has quasi-compact diagonal by 2.5, so it is a quasi-separated
algebraic space and has a dense open affine subscheme through the image of `ξ`; restrict to it.
*Needs:* 0.3, 0.5, 2.5, 2.6, 3.4, 5.1, 5.3; gap:quasi-separated-space-schematic-locus (dense open
subscheme of a quasi-separated space); gap:stack-morphism-permanence.

**Checks.**

- On `[𝔸¹/𝔾_m]`, at `0` one may take `𝒵 = B𝔾_m` over `Z = Spec k`, and at `1` the open `𝒵 = Spec k`.
- At the generic point of `𝔸¹_k`, `𝒵 = 𝔸¹_k = Z` and `𝒵_ξ = Spec k(t) → 𝔸¹_k` is affine, hence
  quasi-affine, and is not an immersion.
- The hypothesis is needed: `𝔸¹_ℚ/ℤ` has non-quasi-compact diagonal and its generic point has a
  residual space which is not the spectrum of a field, so it is not a gerbe over a field.

### 5.5 Representatives and the fppf image

Define the *fppf image* of a field-valued point `x : Spec k → 𝒳` (*Stacks.fppfImage*): the substack of
objects which are fppf-locally isomorphic to pullbacks of `x`. Prove that for `𝒳` decent and `x` a
representative of a point whose residual gerbe exists, `Spec k → 𝒵_x` is surjective and flat, and it
is locally of finite presentation iff `k` is finite over `κ(x)`; in that case the fppf image of `x`
is `𝒵_x`, and when `k` is not finite over `κ(x)`, `Spec k → 𝒵_x` is not an fppf epimorphism and the
fppf image of `x` is not `𝒵_x`. For the proof, flatness is 3.1; local finite presentation of
`Spec k → 𝒵_x` is equivalent to that of `Spec k → Spec κ(x)`, that is to `k` being a finitely generated
`κ(x)`-algebra, which by Zariski's lemma (Mathlib `finite_of_finite_type_of_isJacobsonRing`) means
finite; an fppf covering of `Spec κ(x)` through `Spec k` would give a field homomorphism from `k` to
a residue field finite over `κ(x)`. Sources: rydh2011 lines 1236–1245, on the dependence of the
epi–mono factorisation of Laumon–Moret-Bailly on the representative; stacks-06ML lines 1293–1297
(footnote to Definition 100.11.8); lmb2000, Chapter 11, Définition 11.2 (cited by locator only).
*Needs:* 3.1, 3.3, 3.4, 5.3; Mathlib `finite_of_finite_type_of_isJacobsonRing`;
gap:stack-morphism-permanence.

**Checks.**

- For `𝒳 = Spec κ` and `x : Spec κ(t) → 𝒳`, the morphism is flat and surjective and not locally of
  finite presentation, and no fppf covering of `Spec κ` factors through `Spec κ(t)`.
- For `𝒳 = Spec κ` and a finite extension `k/κ`, the fppf image of `Spec k → Spec κ` is `Spec κ`.
- For `𝒳 = BG_k` and the representatives over `k` and over an algebraic closure `k̄`, the first has
  fppf image `BG_k` and the second does not when `k̄/k` is infinite; the two representatives of the
  same point have different epi–mono images, the phenomenon of rydh2011 lines 1239–1245.

### Examples

Residue fields: `ℚ(i)` at `t² + 1 = 0` on `𝔸¹_ℚ`; `ℝ` for the non-neutral `[Spec ℂ/(ℤ/4)]`; none for
the non-decent `Spec ℚ(t)/ℤ`. Algebraicity at both points of `[𝔸¹/𝔾_m]`.

### Dependencies

Layers 0–4; Mathlib `AlgebraicGeometry.Scheme.residueField`, `finite_of_finite_type_of_isJacobsonRing`;
gap:decent-algebraic-spaces, gap:quasi-separated-space-schematic-locus,
gap:reduced-scheme-residue-field-factorisation, gap:stack-morphism-permanence,
gap:stack-separation-axioms.

## Layer 6: residual gerbes at representatives and rational points

### 6.1 The presentation by a representative

Define, for a field-valued point `x : Spec k → 𝒳`, the groupoid `R_x := Spec k ×_{x,𝒳,x} Spec k` over
`Spec k` with its two projections (*Stacks.representativeGroupoid*). Prove that if `x` is locally of
finite type (so that `x` represents a finite type point), the projections `R_x → Spec k` are flat and
locally of finite presentation, `Spec k → 𝒵_x` is surjective, flat and locally of finite presentation,
`Spec k ×_{𝒵_x} Spec k = R_x`, and `𝒵_x ≃ [Spec k / R_x]` (stacks-06RD lines 1617–1665, proof of Lemma
101.18.7; stacks-06ML lines 1214–1237 and 1364–1368, proofs of Lemmas 100.11.5 and 100.11.14).
*Needs:* 0.2, 3.2, 3.4, 4.1; SchemeAndStackFoundations §1.14 (`stabilizer`), §1.21;
gap:flat-groupoid-quotients.

The API consists of the following facts.

- `G_x` is the stabilizer of `R_x`, the pullback of `R_x → Spec k ×_S Spec k` along the diagonal of
  `Spec k`.
- `R_x` depends on `x` only through `𝒵_x`: for the monomorphism `𝒵_x → 𝒳`, fibre products over `𝒵_x`
  and over `𝒳` agree (0.2).
- For decent `𝒳`, `R_x → Spec(k ⊗_{κ(x)} k)` is surjective, flat and locally of finite presentation
  (stacks-06QB lines 2775–2820, Lemma 101.28.10 (3), applied to `𝒵_x → Spec κ(x)`).

**Checks.**

- For `𝒳 = BG_k` and the trivial torsor, `R_x = G` with equal projections, and `[Spec k/G] = BG`.
- For `𝒳 = Spec κ` and `k/κ` finite Galois with group `Γ`, `R_x = Spec(k ⊗_κ k) = Γ × Spec k`, its
  projections differ, `G_x` is trivial and `[Spec k/R_x] = Spec κ`.
- On `[𝔸¹/𝔾_m]` with the representative `0`, `R_x = 𝔾_m` and `𝒵_0 = B𝔾_m`.

### 6.2 Base change of the residual gerbe to a representative

Prove that for every representative `x : Spec k → 𝒳` of a point whose residual gerbe exists, with
base `𝒵_x^♭`, there is a canonical equivalence `𝒵_x ×_{𝒵_x^♭} Spec k ≃ BG_x` over `Spec k` sending
the object `(x, id)` to the trivial torsor; when `𝒳` is decent this reads
`𝒵_x ×_{Spec κ(x)} Spec k ≃ BG_x` (alper-moduli lines 16541–16549, Exercise 7.4.40 (1), for
Noetherian stacks) (*Stacks.residualGerbeBaseChange*). For the proof, the base change is a gerbe over
`Spec k` (2.1) with the section `(x, id)`, and its automorphism group at that section is `G_x`
because `𝒵_x^♭` and `Spec k` are sheaves; apply 2.2. *Needs:* 2.1, 2.2, 3.4, 5.3;
SchemeAndStackFoundations §1.20 (`inertia`).

**Checks.**

- For the non-neutral `[Spec ℂ/(ℤ/4)]` over `ℝ` and its representative over `ℂ`,
  `𝒵 ×_ℝ ℂ ≃ B(ℤ/2)_ℂ`.
- Base change over the base is not the fibre over the stack: for `𝒳 = BG_k` and the trivial torsor,
  `𝒵_x ×_{Spec k} Spec k = BG`, while `𝒵_x ×_𝒳 Spec k = Spec k ×_{BG} Spec k = G`.
- For `𝒳 = Spec κ` and a finite `k/κ`, `𝒵_x ×_κ k = Spec k = B1`.

### 6.3 Neutral residual gerbes and `BG_x`

Prove that the canonical morphism `BG_x → 𝒵_x` attached to a representative `x : Spec k → 𝒳` (6.2
followed by the projection) is an equivalence iff `Spec k → 𝒵_x^♭` is an isomorphism, which for decent
`𝒳` means that `κ(x) → k` is an isomorphism; then `R_x = G_x` and `𝒵_x ≃ BG_x = [Spec k/G_x]`. Call
`𝒵_x` *neutral* (*Stacks.ResidualGerbe.IsNeutral*) when the gerbe `𝒵_x → 𝒵_x^♭` has a section. If some
representative has `Spec k → 𝒵_x^♭` an isomorphism, `𝒵_x` is neutral. For decent `𝒳`, where
`𝒵_x^♭ = Spec κ(x)` (5.3), the converse holds: `𝒵_x` is neutral iff it has an object over
`Spec κ(x)`, iff some representative `x : Spec k → 𝒳` has `κ(x) → k` an isomorphism, iff `𝒵_x ≃ BG_x`
for a representative defined over `κ(x)` (stacks-06QB lines 2664–2695; alper-moduli lines 6998–6999
and 16539–16540). For the converse, a section `s : Spec κ(x) → 𝒵_x` composed with the monomorphism
`𝒵_x → 𝒳` is a representative over `κ(x)` whose composite to the base is the identity. Without
decency the converse fails, the base not being a scheme (Checks). *Needs:* 2.1–2.3, 3.4, 5.3, 6.1,
6.2; gap:stack-morphism-permanence (fppf descent of isomorphisms along `𝒵_x → 𝒵_x^♭`).

**Checks.**

- `[Spec ℂ/(ℤ/4)]` over `ℝ` is not neutral, and for its representative over `ℂ` the morphism
  `B(ℤ/2)_ℂ → 𝒵` is not an equivalence, `Spec ℂ → Spec ℝ` not being an isomorphism.
- `B(ℤ/2)` over `ℝ` is neutral, and at the trivial torsor `𝒵 ≃ B(ℤ/2)_ℝ`.
- On `𝔸¹_ℚ` at `t² + 1 = 0`, the representative over `ℚ(i)` gives the equivalence
  `B1 = Spec ℚ(i) ≃ 𝒵_x`, and the representative over `ℂ` does not.
- The converse needs decency: for the non-decent `X = Spec ℚ(t)/ℤ` of 3.4, the residual gerbe is `X`
  with base `X^♭ = X`, so the identity is a section and `X` is neutral; but no representative
  `Spec k → X` is an isomorphism onto the base, `X` not being a scheme (3.4). Neutrality defined by
  representatives would declare `X` non-neutral.

### 6.4 Rational points of stacks over a field

Prove that if `𝒳` is an algebraic stack with a morphism `p : 𝒳 → Spec k`, `x ∈ 𝒳(k)` satisfies
`p ∘ x = id`, and the residual gerbe at `x` exists, then `Spec k → 𝒵_x^♭` is an isomorphism and
`𝒵_x ≃ BG_x`; if `𝒳` is locally of finite type over `k`, the residual gerbe exists and `𝒵_x ≃ BG_x`,
and if moreover `x` is a closed point, `BG_x → 𝒳` is a closed immersion (alper-moduli lines 6998–6999
and 7017–7024, Proposition 4.5.16 (2), which assumes `𝒳` of finite type and `G_x` smooth and affine;
ahr2020 lines 476–478) (*Stacks.residualGerbe_rationalPoint*). For the proof, `𝒵_x → Spec k` factors
through the base (2.1), so `Spec k → 𝒵_x^♭ → Spec k` is the identity; a section of `𝒵_x^♭ → Spec k`
is a monomorphism, and 3.2 makes it an isomorphism. Neither smoothness nor affineness of `G_x` nor
algebraic closedness of `k` is used. *Needs:* 0.2, 2.1, 3.2, 3.4, 4.1, 4.5, 6.3;
gap:stack-morphism-permanence (cancellation of local finite type for the section `x`).

**Checks.**

- For `k` algebraically closed, `𝒳` locally of finite type over `k` and `x ∈ 𝒳(k)`, `𝒵_x ≃ BG_x`, and
  `BG_x → 𝒳` is a closed immersion when `x` is closed.
- The smoothness assumption of the source is not needed: for `𝒳 = Bμ_p` over `𝔽_p(t)` and the
  trivial torsor, `𝒵_x = Bμ_p = BG_x` with `G_x = μ_p` not smooth.
- The section condition is needed: for `𝒳 = Spec κ` and `x : Spec k → 𝒳` with `k/κ` finite and
  nontrivial, `𝒵_x = Spec κ` while `BG_x = Spec k`.

### Examples

`B(ℤ/2)_ℝ` (neutral), `[Spec ℂ/(ℤ/4)]_ℝ` (non-neutral, with `𝒵 ×_ℝ ℂ ≃ B(ℤ/2)_ℂ`), and the rational
points `0` and `1` of `[𝔸¹/𝔾_m]` with `𝒵_0 = B𝔾_m` and `𝒵_1 = B1 = Spec k`.

### Dependencies

Layers 2–5; SchemeAndStackFoundations §§1.14, 1.20–1.21; gap:flat-groupoid-quotients,
gap:stack-morphism-permanence.

## Layer 7: infinitesimal neighbourhoods, normal and tangent spaces

Throughout 7.2–7.4, `k` is a field, `𝒳` is an algebraic stack locally of finite type over `k`,
`x ∈ 𝒳(k)` is a closed point with `p ∘ x = id`, `G_x` is affine, and `i : BG_x ≃ 𝒵_x → 𝒳` is the
closed immersion of 6.4 with quasi-coherent ideal `ℐ` (0.4).

### 7.1 Infinitesimal neighbourhoods of a closed point

For `𝒳` locally Noetherian and `x` a closed point, define `𝒳^{[n]}_x := 𝒳^{[n]}_{𝒵_x}`, the `n`-th
infinitesimal neighbourhood of `x` (ahr2020 lines 248–252, §1.5) (*Stacks.pointNeighbourhood*).
*Needs:* 0.4, 3.4, 4.5.

The API consists of the following facts.

- `𝒳^{[0]}_x = 𝒵_x`, each `𝒳^{[n]}_x → 𝒳^{[n+1]}_x` is a first-order thickening, and
  `|𝒳^{[n]}_x| = {x}`.
- A morphism `Spec A → 𝒳` from a local Artinian ring with closed point in the class `x` and
  `𝔪_A^{n+1} = 0` factors through `𝒳^{[n]}_x`: its closed point factors through `𝒵_x` (3.4), so the
  ideal `ℐ·A` lies in `𝔪_A`.
- For a scheme `X` with closed point `x`, `X^{[n]}_x = Spec O_{X,x}/𝔪_x^{n+1}`.

**Checks.**

- On `[𝔸¹/𝔾_m]` at `0`, `𝒳^{[n]}_0 = [Spec k[t]/(t^{n+1})/𝔾_m]`.
- On `𝔸²_k` at the origin, `𝒳^{[1]}_0 = Spec k[x, y]/(x, y)²`, of length 3.
- On `BG`, `𝒳^{[n]} = BG` for every `n`, the ideal being zero.

### 7.2 The normal space

Define the *normal space* `N_x := (i^* ℐ)^∨` (*Stacks.normalSpace*): the coherent sheaf
`i^* ℐ = ℐ/ℐ²` on `BG_x` is a finite-dimensional representation of `G_x` under
`QCoh(BG_x) ≃ Rep(G_x)` (Convention 9: SchemeAndStackFoundations §1.22's *QCoh.presentationEquiv* for
the presentation `BG_x = [Spec k/G_x]`, whose descent data along `G_x ⇉ Spec k` are the
`O(G_x)`-comodule structures), and `N_x` is its contragredient (ahr2020 lines 39–43 and 477–480).
*Needs:* 0.4, 4.5, 6.4; SchemeAndStackFoundations §1.22 (`Stacks.QCoh`, *QCoh.presentationEquiv*);
Tau Ceti `TauCeti.Comodule`; ReductiveGroups Layer 1.

The API consists of the following facts.

- The underlying vector space is `(ℐ/ℐ² ⊗ k(x))^∨ = (x^*(ℐ/ℐ²))^∨`, finite-dimensional because `𝒳` is
  locally Noetherian and `ℐ` coherent.
- For a scheme `X` with rational closed point `x`, `N_x = (𝔪_x/𝔪_x²)^∨`, the Zariski tangent space.
- For a smooth `(U, u) → (𝒳, x)` with `u ∈ U(k)` and `W = U ×_𝒳 𝒵_x ⊆ U` with ideal `J`,
  `N_x = (J/J² ⊗ k(u))^∨` as vector spaces.
- Formation of `N_x` commutes with field extensions `k ⊆ k'` and with restriction to open substacks
  containing `x`.

**Checks.**

- On `[𝔸¹/𝔾_m]` at `0`, `ℐ/ℐ² = k·t` has weight `−1` and `N_0` is the weight-one character
  (Convention 5).
- On `BG`, `N_x = 0`.
- On `[𝔸ⁿ/GLₙ]` at `0`, `ℐ/ℐ²` is the span of the coordinate functions, the dual of the standard
  representation, and `N_0` is the standard representation `kⁿ`.
- On `𝔸²_k` at the origin, `N_0 = k²` with trivial action.

### 7.3 The tangent space and the comparison map

`T_{𝒳,x}` is AlgebraicModuliForArithmeticGeometry §8.1's `deformationFunctorOfPoint` at `k[ε]`
(Convention 8), a `k`-vector space by gap:algebraic-stacks-satisfy-rs, with the action of `G_x(k)` of
`stabiliserActionOnDeformations` in the normalisation of Convention 5, the inverse of the reframing
`α ↦ α ∘ g` of AlgebraicModuliForArithmeticGeometry §8.3 (ahr2020 lines 480–483;
alper-moduli lines 6859–6881 and 6948–6951, Definition 4.5.7 and Exercise 4.5.11). Construct the
*comparison map* `θ_x : T_{𝒳,x} → N_x` (*Stacks.tangentToNormal*): a framed deformation `(τ, α)`
factors through `𝒳^{[1]}_x` (7.1); `τ^* ℐ → O_{k[ε]}` lands in `εk ≅ k` and kills `τ^* ℐ²`, giving,
through `α`, a linear form on `x^*(ℐ/ℐ²)`. Prove that `θ_x` is `k`-linear, `G_x(k)`-equivariant and
surjective, with kernel the image of `T_{BG_x}` under `i`; that `T_{BG_x} = 0` iff `G_x` is smooth;
hence `θ_x` is an isomorphism iff `G_x` is smooth (ahr2020 lines 482–484 state the isomorphism for
smooth `G_x`) (*Stacks.tangentToNormal_bijective_iff*). For the proof, after a finite separable
extension of `k` (both sides commute with it) choose a smooth `(U, u) → (𝒳, x)` with `u ∈ U(k)`, and
put `W = U ×_𝒳 BG_x` and `U_x = U ×_𝒳 Spec k`. Since `BG_x → Spec k` is smooth for every flat
`G_x` (2.3) and `W → BG_x` is smooth, `W` is smooth over `k`, so on an affine neighbourhood `Spec P` of `u` with `W = Spec P/J` the map
`J/J² → (P/J) ⊗_P Ω[P/k]` is split injective (a section of `P/J² → P/J` exists by
`Algebra.FormallySmooth.exists_lift`, and `retractionKerCotangentToTensorEquivSection` turns it into a
retraction; `U` itself need not be smooth over `k`); hence `J/J² ⊗ k(u) → 𝔪_u/𝔪_u²` is injective and
`T_{U,u} → N_x` is surjective with kernel `T_{W,u}`. Smoothness of `U → 𝒳` makes `T_{U,u} → T_{𝒳,x}` surjective with kernel the image of
`T_{U_x,u}` (AlgebraicModuliForArithmeticGeometry §8.3's `framedDeformation_twoFibre` and
`framedTangent_exactSequence`), and `U_x → W` is the base change of `Spec k → BG_x`, so
`T_{W,u}/T_{U_x,u} ≅ T_{BG_x}`. Embedding `G_x` in some `GLₙ`, `BG_x = [(GLₙ/G_x)/GLₙ]` gives
`dim T_{BG_x} = dim Lie(G_x) − dim G_x`, which vanishes iff `G_x` is smooth (ReductiveGroups Layers
2–3). *Needs:* 0.4, 2.3, 4.5, 6.4, 7.1, 7.2; AlgebraicModuliForArithmeticGeometry §§8.1, 8.3;
ReductiveGroups Layers 2–3; Mathlib `retractionKerCotangentToTensorEquivSection`,
`Algebra.FormallySmooth.exists_lift`; gap:algebraic-stacks-satisfy-rs.

**Checks.**

- On `[𝔸¹/𝔾_m]` at `0`, `T_{𝒳,0} = T_{𝔸¹,0}` (the orbit map of `0` is constant) is the weight-one
  character and `θ_0` is an isomorphism onto `N_0`.
- On `Bμ_p` over `𝔽_p`, `N_x = 0` while `T_{𝒳,x} ≅ k`: the framed deformations are the `μ_p`-torsors
  over `k[ε]` trivial over `k`, the kernel `{1 + aε}` of `k[ε]^×/(k[ε]^×)^p → k^×/(k^×)^p`;
  `μ_p` is not smooth and `θ_x` is not injective.
- At the cusp `Spec k[x, y]/(y² − x³)`, with trivial `G_x`, `T` and `N` are both 2-dimensional and
  `θ` is the identity of `(𝔪/𝔪²)^∨`; smoothness of `𝒳` is not required.
- With the right action `(τ, α ∘ g)` the tangent line of `[𝔸¹/𝔾_m]` at `0` would have weight `−1` and
  `θ_0` would not be equivariant (Convention 5).

### 7.4 Quotient stacks

Prove that for a smooth affine group scheme `G` over `k` acting on a scheme `V` locally of finite type
over `k`, and `x ∈ V(k)` whose orbit `G·x` (the reduced image of the orbit map) is closed in `V`, the
image of `x` is a closed point of `[V/G]`, `G_x` is the stabiliser `Stab_G(x)`, `𝒵_x = [G·x/G]`, and
`N_x ≅ T_{V,x}/T_{G·x,x}` as `G_x`-representations (ahr2020 lines 484–486). For the proof apply the
chart computation of 7.3 to the smooth atlas `V → [V/G]`, for which `W = G·x`. *Needs:* 0.3, 4.5, 6.4,
7.2, 7.3; SchemeAndStackFoundations §1.21 (`actionQuotient`); ReductiveGroups Layer 3A (orbits).

**Checks.**

- For `GLₙ` acting on `𝔸ⁿ` and `x = 0`, the orbit is `{0}` and `N_0 = T_{𝔸ⁿ,0} = kⁿ`.
- For `𝔾_m` acting on `𝔸¹` and `x = 1`, the orbit `𝔾_m` is not closed and the image of `1` is not a
  closed point of `[𝔸¹/𝔾_m]`: the closed-orbit hypothesis is needed.
- In characteristic different from 2, for `SL₂` acting on binary quadratic forms and `x = uv`, the
  orbit is the closed quadric of forms of discriminant `1`, of dimension 2; the stabiliser is the
  diagonal torus (an element exchanging `u` and `v` sends `uv` to `−uv`); and `N_x` is the
  one-dimensional trivial representation, identified with `k` by the differential of the invariant
  discriminant, which is nonzero at `x`.
- Luna vocabulary: for `k` algebraically closed, `𝒳` quasi-separated with affine stabilisers and
  `x` smooth with linearly reductive `G_x` (Tau Ceti `TauCeti.linearlyReductiveAffineGroupSchemeProperty`),
  the slice theorem (ahr2020 lines 55–60, Theorem 1.2) compares `𝒳` étale-locally with `[N_x/G_x]`;
  for `𝒳 = [𝔸ⁿ/GLₙ]` and `x = 0` the comparison is the identity.

### Examples

`[𝔸¹/𝔾_m]` at `0`: `𝒳^{[n]}_0 = [Spec k[t]/(t^{n+1})/𝔾_m]`, `N_0 = T_{𝒳,0}` of weight one. `Bμ_p`:
`N = 0`, `T = k`. `[𝔸ⁿ/GLₙ]` at `0`: `N_0 = kⁿ`.

### Dependencies

Layers 0, 2, 4, 6; AlgebraicModuliForArithmeticGeometry §§8.1, 8.3; ReductiveGroups Layers 1–3A;
SchemeAndStackFoundations §§1.21–1.22; Mathlib `retractionKerCotangentToTensorEquivSection`,
`Algebra.FormallySmooth.exists_lift`; Tau Ceti
`TauCeti.Comodule`, `TauCeti.linearlyReductiveAffineGroupSchemeProperty`;
gap:algebraic-stacks-satisfy-rs.

## Downstream consumers

- **LanglandsParameterStacks**: the Checks of its §1.16 speak of the structure sheaf of the residual
  gerbe at a parameter; they use 3.3, 4.5 and 6.4.
- **FunctionFieldArithmeticPartII**: its requirement gap:zero-dimensional-dm-residual-gerbes (the
  reduction of a finite type Deligne–Mumford stack over an algebraically closed field with finite
  discrete `|𝒳|` is the disjoint union of its residual gerbes, each the classifying stack of a finite
  constant group) is the worked example below, from 0.3, 0.5, 1.4, 4.5 and 6.4, which adds the
  quasi-compact diagonal hypothesis that `Bℤ` shows to be necessary.
- **MotivicStructuresInModuliOfCurves**: stabilisers of quotient stacks and residual gerbes at
  points of moduli of curves, through 1.3, 6.4 and 7.4.
- **VirtualFundamentalClasses**: residual gerbes as the zero-dimensional integral substacks of a
  Deligne–Mumford stack, with their residue fields and automorphism groups, for the degree of the
  zero-cycle of a closed point, through 1.3, 4.2, 4.5 and 5.3.
- **EquivariantIntersectionTheory** and **GroupSchemesOverABase**: stabilisers and `BG_x` at closed
  points of quotient stacks, through 1.3, 6.4 and 7.4.
- A roadmap on the étale slice theorems of Alper–Hall–Rydh: Layer 7 is its vocabulary.

## Worked examples

**Zero-dimensional Deligne–Mumford stacks.** Let `K` be algebraically closed and `𝒳` a
Deligne–Mumford stack of finite type over `K` with quasi-compact diagonal and `|𝒳|` finite and
discrete. Every point is open
and closed, so `𝒳_red` is the disjoint union of the reduced induced closed substacks on the points
(0.3, 0.5). Each is reduced, locally Noetherian and one-point, hence the residual gerbe `𝒵_x` (3.3,
4.5). A closed point of a stack of finite type over `K` has a representative over `K` (its finite type
representative has residue field finite over `K`), so `𝒵_x ≃ BG_x` (6.4), and `G_x` is finite étale
over `K` (1.4; unramified, and quasi-compact because the diagonal is), hence constant. Thus
`𝒳_red ≃ ⊔_x BG_x` with finite groups `G_x`. The diagonal hypothesis is needed: `Bℤ` over `K` is
Deligne–Mumford, of finite type and one-point, and `G_x = ℤ` is not finite.

**The stack `[𝔸¹/𝔾_m]`.** Points `0` (closed, finite type) and `1` (open, finite type);
`G_0 = 𝔾_m`, `G_1 = 1`; `𝒵_0 = B𝔾_m` closed with ideal `(t)`, `𝒵_1 = Spec k` open; the dense open
gerbe is `Spec k`; `κ = k` at both points; `𝒳^{[n]}_0 = [Spec k[t]/(t^{n+1})/𝔾_m]`;
`N_0 = T_{𝒳,0}` is the weight-one character.

**A non-neutral residual gerbe.** `𝒳 = [Spec ℂ/(ℤ/4)]` over `ℝ` is its own residual gerbe, a gerbe
over `Spec ℝ` with no real object, with `𝒳 ×_ℝ ℂ ≃ B(ℤ/2)_ℂ` at the representative `Spec ℂ`.

## References

- [stacks-04XE], [stacks-06ML] The Stacks Project Authors, *The Stacks Project*, Properties of
  Algebraic Stacks (Chapter 100): Sections 100.3–100.11 and 100.14.
- [stacks-06QB], [stacks-06RD] The Stacks Project Authors, *The Stacks Project*, Morphisms of
  Algebraic Stacks (Chapter 101): Sections 101.4–101.5, 101.18–101.19, 101.28–101.29, 101.31, 101.33,
  101.48 and 101.51.
- [stacks-decent-spaces] The Stacks Project Authors, *The Stacks Project*, Decent Algebraic Spaces
  (Chapter 68): Sections 68.6, 68.11 and 68.13.
- [stacks-morphisms-schemes] The Stacks Project Authors, *The Stacks Project*, Morphisms of Schemes
  (Chapter 29): Section 29.59.
- [stacks-criteria] The Stacks Project Authors, *The Stacks Project*, Criteria for Representability
  (Chapter 97): Sections 97.17–97.18.
- [stacks-sheaves-on-stacks] The Stacks Project Authors, *The Stacks Project*, Sheaves on Algebraic
  Stacks (Chapter 96): Section 96.14.
- [ahr2020] J. Alper, J. Hall, D. Rydh, *A Luna étale slice theorem for algebraic stacks*, Ann. of
  Math. 191 (2020), read as arXiv:1504.06467v3: Theorems 1.1–1.2, §1.5, §3.1.
- [alper-moduli] J. Alper, *Stacks and Moduli*, author's draft of 5 January 2026: §§4.5.2–4.5.3
  (Definitions 4.5.7, 4.5.12–4.5.13, Propositions 4.5.10, 4.5.16), §7.4.5 (Proposition 7.4.39,
  Exercises 7.4.40–7.4.42).
- [rydh2011] D. Rydh, *Étale dévissage, descent and pushouts of stacks*, J. Algebra 331 (2011), read
  as arXiv:1005.2171v2: Appendix B, Theorems B.1–B.2.
- [lmb2000] G. Laumon, L. Moret-Bailly, *Champs algébriques*, Springer 2000: Chapter 11, cited by
  locator only.
- [olsson2016] M. Olsson, *Algebraic Spaces and Stacks*, AMS 2016: Chapter 11, background only, cited
  by locator.
