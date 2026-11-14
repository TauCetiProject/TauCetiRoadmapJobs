# Roadmap: virtual fundamental classes, part II: integral and non-separated Chow theory of Deligne–Mumford stacks and virtual classes over general bases

**Summary.** This is the second part of VirtualFundamentalClass. That roadmap builds Vistoli's
rational Chow groups of *separated* Deligne–Mumford stacks, the Behrend–Fantechi intrinsic normal
cone and obstruction theories, and the virtual fundamental class of a separated stack *with the
resolution property*, with pullback and functoriality over *smooth* bases. This part starts from
its sections and from the scheme intersection theory of SchemeAndStackFoundations Layer 5, and
widens them in three directions. First, it builds the integral Chow groups `A_i(ℳ)` of
Deligne–Mumford stacks of finite type over an arbitrary field with no separatedness assumed,
with their degrees, integral operations (flat pullback, proper representable pushforward,
localisation, exterior products and refined Gysin maps with algebraic-space sources), and,
through the finite cover by a scheme that every such stack has, the rational pushforward along
every proper morphism, Gysin maps acting on stacks, homotopy invariance and Chern classes
(Layers 1–4). It
identifies `A_i(ℳ) ⊗ ℚ` with VirtualFundamentalClass's group for separated `ℳ`, and the integral
groups of algebraic spaces with those of the Stacks Project. Second, it proves the comparisons:
the intersection ring of a smooth stack with Poincaré duality for bivariant classes, the
isomorphism `p_* : A_*(ℳ)_ℚ ≅ A_*(M)_ℚ` for a moduli space `M` that is an algebraic space, the
ring structure of the Edidin–Graham comparison for Deligne–Mumford quotient stacks, and the
degree `∫[𝒢_x] = [κ(x) : k]/|Aut(x̄)|` of a closed point (Layer 5). Third, it removes the
resolution property and separatedness from the virtual class (any stack whose obstruction
theory has one global resolution), proves the relative obstruction class and the relative
characterisation of obstruction theories, the no-obstruction and obstruction-bundle formulas
over any base of pure dimension, invariance of the canonical rational equivalence along
relative tangent directions on ambients that need be neither smooth nor reduced,
regular-immersion pullback and functoriality over bases of pure dimension, deformation
invariance of virtual counts in families over a curve, and the perfect relative obstruction
theory `(Rπ_* F^*T_X)^∨ → L_{M/𝔅}` of every relative space of maps from a family of prestable
curves over a pure-dimensional algebraic stack to a smooth quasi-projective variety, with its
global resolutions and virtual dimension `b + δ + dim X · (1 − g)` for a target of pure
dimension (Layers 6–9).

## Scope and ownership

This roadmap owns:

- proper covers of Deligne–Mumford stacks, their existence (a finite cover by a scheme) and
  proper coverings of integral ones, function fields, the generic stabiliser order `e(𝒱)` and
  Vistoli's rational degree of a separated dominant morphism of integral stacks, for stacks that
  need not be separated (Layer 1);
- the integral cycle groups, orders of rational functions, rational equivalence and integral
  Chow groups `A_i(ℳ)` of such stacks, the cycle of a closed substack, and the comparisons with
  the scheme groups of Tau Ceti, with the Chow groups of algebraic spaces of the Stacks Project
  and with the rational groups of VirtualFundamentalClass §2.1 (Layer 2);
- integral flat pullback, integral pushforward along proper representable morphisms, the
  integral push–pull formula and localisation sequence, integral exterior products, and integral
  refined Gysin maps of regular local immersions with algebraic-space sources (Layer 3);
- on all such stacks: rational pushforward along every proper morphism, the action of Gysin maps
  of regular local immersions and of flat pullback on Chow groups of stacks, homotopy invariance
  for vector bundles, Chern classes, and their agreement with VirtualFundamentalClass §§2.2–2.5
  on separated stacks (Layer 4);
- the intersection product on smooth stacks and Poincaré duality for the bivariant groups of a
  smooth separated stack with separated sources; the comparison with moduli spaces that are
  algebraic spaces; the compatibility of the Edidin–Graham comparison with products; and the
  closed formula for the degree of a closed point (Layer 5);
- the comparison bundle of two global resolutions, the virtual class of a stack, separated or
  not, whose obstruction theory has a global resolution, and the relative no-obstruction and
  obstruction-bundle formulas over a base of pure dimension (Layer 6);
- the relative obstruction class of square-zero extensions over an algebraic stack and the
  relative characterisations of obstruction theories (Layer 7);
- the canonical rational equivalence on an arbitrary ambient algebraic stack locally of finite
  type, with its invariance along relative tangent directions, regular-immersion pullback and
  functoriality of virtual classes over bases of pure dimension, and deformation invariance of
  virtual counts (Layer 8);
- derived pushforward and Grothendieck duality along prestable families over Deligne–Mumford
  stacks, the Kodaira–Spencer morphism, the perfect relative obstruction theory of every relative
  space of maps from a family of prestable curves to a smooth quasi-projective variety, its global
  resolutions and its virtual dimension (Layer 9).

Imported, not restated:

- **VirtualFundamentalClass** owns the Behrend–Fantechi construction: stack dimension (§§0.2–0.3);
  cones and normal cones, with the normal cones of local immersions of
  gap:normal-cones-of-local-immersions, and the smooth-ambient tangent actions (§§1.4–1.6);
  Vistoli's rational Chow groups of separated Deligne–Mumford stacks with the degree of proper
  zero-cycles, proper pushforward, flat
  pullback, localisation, exterior products, homotopy invariance, Chern classes, refined Gysin
  maps, bivariant groups, the canonical rational equivalence with its compatibilities and its
  invariance under the restricted tangent action of Kresch's Theorem 3.1, the plane example in
  which a transverse translation moves it, and the cap action with the projection formula
  (§§2.1–2.5); the relative cotangent complex of a morphism of algebraic stacks and absolute
  square-zero lifting (§§3.1–3.5); cone stacks and `h¹/h⁰` (§§4.1–4.5); the absolute and relative
  intrinsic normal sheaf and cone, the relative cone presented on charts by normal cones and the
  relative tangent action (§§5.1–5.5, 9.1); obstruction theories, their absolute
  closed-immersion and lifting characterisations, perfectness and global resolutions (§§6.1–6.6);
  the virtual class of a separated stack with the resolution property, its independence, formulas
  and virtual degree (§§7.1–7.7); compatible obstruction theories, pullback and functoriality over
  smooth bases (§§8.1–8.5); and the relative class over a pure-dimensional algebraic stack, its flat
  base change (§9.3), regular base change and the no-obstruction and obstruction-bundle formulas
  over smooth bases (§9.4), relative functoriality under the hypotheses of Behrend–Fantechi
  Proposition 7.5 for separated stacks with the resolution property (§9.5) and pullback from smooth
  stacks (§9.6). Each item of this roadmap that touches one of these sections states, in one
  clause, which hypothesis of that section it removes.
- **SchemeAndStackFoundations** owns algebraic spaces, stacks in groupoids, algebraic and
  Deligne–Mumford stacks, inertia, the underlying topological space, separated and proper stacks,
  quotient stacks, quasi-coherent modules on stacks, coarse moduli spaces and the Keel–Mori theorem
  (§§1.3, 1.9–1.10, 1.18–1.23), the vanishing of higher quasi-coherent cohomology on affine schemes
  and its agreement in the Zariski, étale and fppf topologies (§§2.6, 2.10), used in 6.1 to split
  extensions on affine charts, derived categories of quasi-coherent complexes, the upper shriek
  functor and relative dualising complexes (§§2.18–2.20), Riemann–Roch on curves (§3.3), the
  lifting criterion and torsors of lifts for smooth morphisms (§4.1), and the intersection theory of
  schemes (§§5.1–5.6). Every stack-level statement here restricts on schemes to those sections and
  is not restated for schemes.
- **StableReductionPartII** §5.15 owns the Edidin–Graham comparison of groups
  `A_{i−g}([X/G])_ℚ ≅ A^G_i(X) ⊗ ℚ` for a Deligne–Mumford quotient stack, with its compatibility
  with Chern classes and proper pushforward; 5.3 here adds only its compatibility with products.
- **EquivariantIntersectionTheory** §§2.1–2.2 owns equivariant Chow groups and the equivariant
  product; **StableReduction** Layers 2–3 own coherent cohomology of curve families, the relative
  dualising sheaf, relative ampleness and prestable families; **EnhancedDerivedSheaves** §0.3, E1.4
  and E1.8 own derived functors on ringed sites; **DerivedModuleAlgebra** §§0.7, 0.12 and 0.25 own
  the cotangent complex of ring maps and square-zero lifting for ring maps.
- **AlgebraicGromovWittenTheory** owns the prestable-curve stack, the stack of stable maps, its
  properness and its virtual class. Layer 9 states the obstruction theory of a relative space of
  maps for every base and every smooth quasi-projective target; it builds no moduli stack.

Not part of this roadmap: Chow groups of Artin stacks in the sense of Kresch and the virtual class
without a global resolution (kresch1999 Theorem 6.2.1), virtual pullbacks, torus and cosection
localisation, virtual structure sheaves, reduced, logarithmic and symmetric obstruction theories,
general bivariant groups with non-separated test objects (the bivariant groups here are those of
VirtualFundamentalClass §2.5; on non-separated stacks only the Gysin, flat-pullback and Chern
operations of Layer 4 act), residual gerbes (zero-cycles are indexed by the integral closed
substacks supported at closed points, 5.4), and the symplectic virtual classes of
GromovWittenTheory and ImplicitAtlases.

## Conventions

1. **Base field and stacks.** `k` is an arbitrary field; no perfectness, characteristic or
   algebraic closedness is assumed except where a statement names it. A *stack* is a stack in
   groupoids `ℳ` over the big fppf site of schemes (SchemeAndStackFoundations §1.18) with a
   1-morphism to `Spec k` such that `ℳ` is Deligne–Mumford (`IsDeligneMumford`, §1.19), its
   diagonal is representable by schemes, quasi-compact and separated, and `ℳ → Spec k` is of finite
   type (§1.20). This is the class of vistoli1989 (7.14) (lines 2109–2112), whose "representable"
   means representable by schemes (lines 2064–2066), with the finite-type convention of its §3
   (lines 887–888). *Separated* means that the diagonal is proper (`IsSeparatedStack`), as in
   VirtualFundamentalClass. Schemes of finite type over `k` and quasi-separated algebraic spaces of
   finite type over `k` are stacks; the diagonal of an algebraic space is representable by schemes
   by definition (SchemeAndStackFoundations §1.3; Tau Ceti's `TauCeti.AlgebraicGeometry.Spaces.IsAlgebraicSpace`).
   Witnesses: `B(S₃)` is a stack with generic stabiliser order `6`; `Bℤ`, for the constant group
   `ℤ` acting trivially on `Spec k`, has diagonal with fibre `ℤ`, which is not quasi-compact, and is
   not a stack in this sense; the algebraic space `𝔸¹/ℤ` of characteristic `0`
   (SchemeAndStackFoundations §1.9, Checks) is of finite type and not quasi-separated, and is not one
   either; the line `L` with a doubled origin is a stack that is not separated.

   Every example with `μ₂` acting by `x ↦ −x`, and every example with `Bμ₂`, assumes
   `char k ≠ 2`, where `μ₂ ≅ ℤ/2` is étale. In characteristic `2` the stabiliser `μ₂` of the origin
   of `[𝔸¹/μ₂]` is not reduced, and neither `[𝔸¹/μ₂]` nor `Bμ₂` is Deligne–Mumford; tests in
   characteristic `2` use constant groups instead.

2. **Words.** These are VirtualFundamentalClass's words. A *local immersion* is a representable,
   unramified morphism of finite type (kresch1999b lines 232–234); it is a *regular local immersion
   of codimension `d`* if, étale locally on source and target, it is a regular closed immersion of
   codimension `d`. Vistoli calls these local embeddings and regular local embeddings (vistoli1989
   (1.19)–(1.20), lines 485–505). A *local embedding* is a chart pair: an étale morphism `U → X` from
   an affine scheme with a closed immersion of `U` into a smooth affine scheme (behrend-fantechi1997
   Definition 3.7, lines 906–915; VirtualFundamentalClass §§3.4, 5.1). "Representable" without
   qualification means representable by algebraic spaces (SchemeAndStackFoundations §1.19).

3. **Proper covers.** A *proper cover* of a stack `ℳ` is a scheme `X` of finite type over `k` with a
   proper surjective morphism `X → ℳ` (1.1). Every stack has one, indeed a finite one (1.1, from
   rydh2015 Theorem B, lines 81–85), so a proper cover is never a hypothesis here: it is the tool
   through which rational pushforward along non-representable proper morphisms, the action of Gysin
   maps and Chern classes on Chow groups of stacks, homotopy invariance on stacks, and everything
   built on them are constructed and proved. Vistoli's standing hypothesis (vistoli1989 lines
   887–890) and the condition that behrend-fantechi1997 allows in place of separatedness for the
   virtual class (lines 1261–1262) therefore hold for every stack of Convention 1. Witnesses: the
   line with a doubled origin is its own proper cover; the stack `B_{𝔸¹}G` of 1.1, not separated
   and with inertia that is not finite, has the finite étale cover of degree `2` by that line.

4. **Grading and coefficients.** Cycles and Chow groups are graded by dimension, `Z_i`, `A_i`, with
   dimension that of VirtualFundamentalClass §0.2. `A_i(ℳ)_ℚ := A_i(ℳ) ⊗_ℤ ℚ`; for separated `ℳ`
   this is VirtualFundamentalClass's `A_i(ℳ)_ℚ` (2.3), so every rational statement below is a
   statement about that roadmap's groups. On a smooth stack of pure dimension `n`,
   `A^c := A_{n−c}`, and the two gradings are not mixed on a singular stack. A statement is integral
   exactly when it is in Layers 2–3: cycles, rational equivalence, flat pullback, pushforward along
   proper representable morphisms, push–pull for representable morphisms, localisation, exterior
   products and Gysin maps with algebraic-space sources. Non-representable pushforward, Gysin maps
   and Chern classes acting on stacks, homotopy invariance on stacks, products on stacks, the
   comparisons and virtual classes are rational. Witness: `A_0([𝔸¹/μ₂]) ≅ ℤ/2` while
   `A_0([𝔸¹/μ₂])_ℚ = 0 = A_0(𝔸¹)_ℚ` (2.2, 5.2), so the moduli-space comparison is false integrally.

5. **Degrees and stabilisers.** For an integral stack `𝒱`, `e(𝒱)` is the order of the automorphism
   group of a geometric point over the generic point of `|𝒱|`, equivalently the generic degree of
   the inertia `I_𝒱 → 𝒱` (vistoli1989 line 422). The degree of a separated dominant morphism of
   integral stacks is Vistoli's rational degree (1.3), with
   `deg(ℱ/𝒢) = (e(𝒢)/e(ℱ)) · [k(ℱ) : k(𝒢)]` and `[E : K] := 0` for an infinite extension.
   Witness: for a finite étale group `G` of degree `|G|` over `k`, `deg(BG/Spec k) = 1/|G|` and
   `deg(Spec k/BG) = |G|`, and the composite `Spec k → BG → Spec k` has degree `|G| · (1/|G|) = 1`.

6. **Obstruction theories.** Complexes are cohomologically graded. An obstruction theory is
   VirtualFundamentalClass's: `E` in the derived category of the small étale site with `Hⁱ(E) = 0`
   for `i > 0` and `H⁰(E)`, `H^{−1}(E)` coherent (§4.4), and a morphism `φ : E → L_{X/𝔜}` into the
   full relative cotangent complex of §3.3 with `H⁰(φ)` an isomorphism and `H^{−1}(φ)` surjective
   (§§6.1, 9.2). It is perfect if `E` has perfect amplitude `[−1, 0]` (§6.4). A global resolution is
   an isomorphism `[F^{−1} → F^0] ≅ E` in the derived category with `F^i` locally free of finite
   rank, not a morphism of complexes (§§3.2, 6.5). For it, `F_i` is the vector bundle with sheaf of
   sections `(F^{−i})^∨`, `𝔈 := h¹/h⁰(E^∨) ≅ [F_1/F_0]` (§4.5), `rk E := rk F^0 − rk F^{−1}`,
   `Ob := H¹(E^∨)`, and the virtual dimension over a base of pure dimension `d` is `d + rk E`. No
   truncated cotangent complex is defined: every obstruction theory of this roadmap is a morphism
   into the full complex, built there directly (9.3). Witness for this: a morphism from a perfect
   complex of amplitude `[−1, 0]` into a complex concentrated in degree `−2` need not vanish
   globally, since on an elliptic curve `C`, `Hom(O_C[1], O_C[2]) = H¹(C, O_C) ≅ k`; so a morphism
   into `τ^{≥−1}L` is not in general the truncation of a morphism into `L`. Witness for the
   dualisation: on `ℙ¹` over `k`, `E = [O(1) --0--> Ω_{ℙ¹}]` with the identity in degree `0` has
   `rk E = 0`, `Ob = O(−1)` and virtual class of degree `−1` (6.2).

7. **Relative setting.** In Layers 6–8, `𝔜` is an algebraic stack (SchemeAndStackFoundations §1.19),
   locally of finite type and quasi-separated over `k`, of pure dimension `d` (VirtualFundamentalClass
   §0.2), where `d` may be negative; `f : X → 𝔜` is of Deligne–Mumford type (its relative diagonal is
   unramified, behrend-fantechi1997 lines 1645–1651); `X` is a stack in the sense of 1, separated or
   not; and `φ : E → L_{X/𝔜}` is a perfect relative obstruction theory of constant rank `r`. The
   absolute case is `𝔜 = Spec k`, `d = 0`. Witness: `Spec k → B𝔾_m` is of Deligne–Mumford type and
   smooth of relative dimension `1`, and with `E = Ω_{pt/B𝔾_m}` the virtual dimension is
   `−1 + 1 = 0`.

8. **Names.** Proposed declarations live in the homes VirtualFundamentalClass fixes
   (`TauCeti/AlgebraicGeometry/Chow/` for Chow groups of stacks,
   `TauCeti/AlgebraicGeometry/ObstructionTheory/` and `TauCeti/AlgebraicGeometry/VirtualFundamentalClass/`
   for the rest). This README sets proposed names in italics; every backticked Lean name is a
   declaration of Mathlib or Tau Ceti at the pins, or of a supplier roadmap, named below.

## Exact supplier contracts

### From Mathlib

- `AlgebraicGeometry.AlgebraicCycle` and `AlgebraicGeometry.AlgebraicCycle.map`
  (`Mathlib/AlgebraicGeometry/AlgebraicCycle/Basic.lean`): cycles on a scheme as locally finitely
  supported functions, and pushforward along a quasi-compact morphism with prescribed weights. Used
  through Tau Ceti's Chow API in 2.3.
- `AlgebraicGeometry.Scheme.ord` (`Mathlib/AlgebraicGeometry/OrderOfVanishing.lean`): the order of an
  element of the function field of an integral locally Noetherian scheme at a point. Its value is
  `0` at points of coheight different from `1` and for the zero function; 2.2 evaluates it only on
  nonzero functions at points of coheight one.
- `AlgebraicGeometry.IsClosedImmersion`, `AlgebraicGeometry.Flat`, `AlgebraicGeometry.Etale`,
  `AlgebraicGeometry.Smooth` and `AlgebraicGeometry.IsProper` (`Mathlib/AlgebraicGeometry/Morphisms/`):
  the scheme morphism properties to which SchemeAndStackFoundations §§1.19–1.20 reduce those of
  representable morphisms.

The pin has no algebraic stacks, no Chow groups of stacks and no cotangent complex of a stack.

### From Tau Ceti

- `TauCeti.AlgebraicGeometry.Chow.cyclesOfDimension`, `TauCeti.AlgebraicGeometry.Chow.RatEquiv`,
  `TauCeti.AlgebraicGeometry.Chow.ChowGroup`, `TauCeti.AlgebraicGeometry.Chow.cycleClass` and
  `TauCeti.AlgebraicGeometry.Chow.ChowGroup.equivIntOfUnique`
  (`TauCeti/AlgebraicGeometry/Chow/Basic.lean`), and
  `TauCeti.AlgebraicGeometry.Chow.ChowGroup.pushforward`
  (`TauCeti/AlgebraicGeometry/Chow/ClosedImmersion.lean`): cycles of a locally Noetherian scheme
  graded by the dimension of the closure, rational equivalence by locally finite families, Chow
  groups, the class map, `CH_0` of a one-point scheme, and pushforward along closed immersions. On
  a scheme of finite type over `k` the families are finite. 2.3 identifies the stack groups of a
  scheme with these.
- `TauCeti.AlgebraicGeometry.SchPseudofunctor` (`TauCeti/AlgebraicGeometry/Stack/Basic.lean`) and
  `TauCeti.AlgebraicGeometry.Spaces.IsAlgebraicSpace` (`TauCeti/AlgebraicGeometry/AlgebraicSpace/Basic.lean`):
  the carriers under SchemeAndStackFoundations §§1.3 and 1.18. `IsAlgebraicSpace` asks for a diagonal
  representable by schemes and an étale atlas; it does not include quasi-separatedness, which
  Convention 1 adds.
- `TauCeti.AlgebraicGeometry.PrestableFamily` (`TauCeti/AlgebraicGeometry/Curves/Prestable.lean`):
  proper, geometrically connected, at-worst-nodal relative curves; it is stable under base change
  and syntomic of relative dimension one. The genus is not part of it.
- `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.FixedRank.vectorBundleDegree`
  (`TauCeti/AlgebraicGeometry/VectorBundle/Degree.lean`): `deg E := χ(E) − r · χ(O)` for a bundle of
  rank `r` on a proper scheme of dimension at most one over `k`, used fibrewise in 9.5.

### From TauCetiRoadmap.VirtualFundamentalClass

- §§0.2–0.3: dimension and pure dimension of algebraic stacks locally of finite type over `k`,
  independent of the atlas, with `dim [U/G] = dim U − dim G`.
- §§1.4–1.6: cones, abelian cones and vector bundles over stacks, normal cones of representable
  closed immersions with flat base change, and the action of `T_M|_X` on `C_{X/M}` for a smooth
  ambient `M`.
- §2.1: the rational groups `A_i(ℳ)_ℚ` of a separated stack, generated by integral closed
  substacks with Vistoli's degree factors, and the degree of proper zero-cycles with the generic
  stabiliser weight; §2.2: proper pushforward, flat pullback, localisation and
  exterior products on them; §2.3: homotopy invariance, the zero-section Gysin inverse and Chern
  classes; §2.4: refined Gysin maps of representable regular local immersions; §2.5: rational
  bivariant groups for morphisms of relative Deligne–Mumford type to algebraic stacks, acting
  after base change to separated test stacks whose pullbacks are separated, the flat and
  regular-local-immersion orientations, the canonical rational equivalence with its compatibility with smooth base change and smooth refinement
  (behrend-fantechi1997 Propositions 3.3–3.4), its invariance under the restricted tangent action
  `T_{Y′}|_{X′}` of kresch1999b Theorem 3.1, the plane example in which a transverse translation
  moves it, and the cap action with the projection formula.
- §§3.1–3.5: derived operations on the small étale site of a stack, perfect complexes and global
  two-term resolutions, the relative cotangent complex `L_{X/𝔜}` of a morphism of algebraic stacks
  locally of finite type with its transitivity triangles and flat base change, vanishing in positive
  degrees and coherence in degrees `0, −1` for morphisms of Deligne–Mumford type, its local
  presentation, and absolute square-zero lifting.
- §§4.1–4.5: cone stacks, `h¹/h⁰`, the abelian cone stack `h¹/h⁰(E^∨)` of a complex with the
  condition of §4.4, the presentation `h¹/h⁰(E^∨) ≅ [F_1/F_0]` of a global resolution functorial up to
  specified 2-isomorphism, and the closed-immersion criterion.
- §§5.1–5.5 and 9.1: the absolute and relative intrinsic normal sheaf and cone; the relative cone
  presented on charts by normal cones and the relative tangent action, with comparison under
  refinement (§9.1); for `𝔜` of pure dimension `d`, `𝔠_{X/𝔜}` is pure of dimension `d`.
- §§6.1–6.6: obstruction theories, the obstruction cone, the absolute lifting criterion,
  perfectness, global resolutions, pullback of relative theories under cartesian base change.
- §§7.1–7.7: the resolved cone `C(F•) := 𝔠_X ×_𝔈 F_1`, the class `0^!_{F_1}[C(F•)]` of a separated
  stack with the resolution property, its independence (§7.3), its public construction (§7.4), its
  formulas (§§7.5–7.6) and its degree (§7.7).
- §§8.1–8.5: compatibility data over a local complete intersection morphism, smooth and
  regular-immersion pullback between smooth bases, functoriality and coherence.
- §§9.2–9.6: the relative virtual class `[X/𝔜, E]^vir ∈ A_{d + rk E}(X)_ℚ` for separated `X` with the
  resolution property, flat base change, regular base change and formulas over smooth bases,
  relative functoriality and pullback from smooth stacks.

What VirtualFundamentalClass §2.1 must provide (gap:closed-substacks-of-stacks). Its cycles are
sums of integral closed substacks; this roadmap uses the same substacks on stacks that are not
separated, and needs them with: closed substacks of a stack `ℳ` as representable closed immersions
taken up to equivalence over `ℳ`, equivalently, for an étale presentation `R ⇉ U`, the closed
subschemes `Z ⊆ U` with `s^{−1}Z = t^{−1}Z` (vistoli1989 (1.5), lines 232–244); reduced, irreducible
and integral closed substacks (vistoli1989 (1.6), lines 245–250); for every closed subset of
`|ℳ|` (SchemeAndStackFoundations §1.20 `Stacks.points`) a unique reduced closed substack with that
support, so that integral closed substacks correspond bijectively to irreducible closed subsets;
base change of closed substacks; and the image of an integral closed substack under a proper
morphism or a flat morphism (vistoli1989 (1.7), lines 254–269). None of this depends on separatedness.

What VirtualFundamentalClass §1.5 must provide (gap:normal-cones-of-local-immersions). Its §1.5
forms the normal cones of representable closed immersions; its §2.4 and this roadmap's 3.5, 4.2,
8.1 and 8.3 use the normal cone of a local immersion that need not be a closed immersion, such as
`Spec k → BG` or the diagonal `BG → BG × BG` (5.1) for a finite étale `G` with `|G| > 1`. Needed: for
a local immersion `X → Y` of algebraic stacks locally of finite type over `k`, the normal cone
`C_{X/Y}`, obtained by descent from charts `U → V` that are closed immersions of schemes, with
`V → Y` and `U → X` smooth and surjective and `U → X ×_Y V` étale (kresch1999b Lemma 2.2 and the
paragraph after it, lines 218–237; vistoli1989 Lemma 1.19 and lines 508–526), equal to §1.5's cone
when `X → Y` is a closed immersion; for a morphism `Y′ → Y` and `X′ := X ×_Y Y′`, a closed embedding
`C_{X′/Y′} ⊆ C_{X/Y} ×_X X′`, an isomorphism when `Y′ → Y` is flat (vistoli1989 lines 529–535); the
closed embedding of `C_{X/Y}` in the normal sheaf; and, for a regular local immersion of codimension
`d`, the equality of `C_{X/Y}` with the normal bundle `N_{X/Y}`, a vector bundle of rank `d`
(vistoli1989 lines 527–528; kresch1999b lines 236–237). On the diagonal of `BG` the cone is the zero
bundle over `BG`: over the atlas `Spec k → BG × BG` the diagonal becomes the finite étale `G → Spec k`,
and the chart `U = V = G`, with `U → BG ×_{BG×BG} V = G ×_k G` the diagonal of `G` (open and closed, `G`
being étale and separated), has `U → V` the identity, so the cone has rank equal to the codimension
`0`; a construction for closed immersions alone does not reach it, as the diagonal is not one.

### From TauCetiRoadmap.SchemeAndStackFoundations

- §1.3 (algebraic spaces and their diagonals), §1.9 (separation and properness of algebraic
  spaces), §1.10 (the small étale site of an algebraic space), §1.18 (stacks in groupoids,
  `StackInGroupoids`, 2-fibre products), §1.19 (`IsRepresentableBySpaces`, `RepresentableProperty`,
  `IsAlgebraicStack`, `IsDeligneMumford`), §1.20 (`inertia`, `automorphismGroup`,
  `setoid_criterion`, `SmoothLocal`, `Stacks.points`, `IsSeparatedStack`, `IsProperStack`,
  `stack_presentation`), §1.21 (`actionQuotient`, `quotientStack_algebraic`), §1.22 (quasi-coherent
  modules on stacks and their description on a presentation), §1.23 (`IsCoarseModuliSpace`,
  `keel_mori`: an algebraic stack with finite inertia has a coarse space `π : ℳ → M` with `π` proper
  and quasi-finite, bijective on geometric points).
- §2.6 (`serre_affineness_criterion`, whose direction from affineness gives `H^q(X, F) = 0` for every
  `q > 0` and every quasi-coherent `F` on an affine scheme `X`) and §2.10
  (`quasiCoherent_topology_comparison`: for quasi-coherent `F`,
  `H^q(X_Zar, F) = H^q(X_ét, F^a) = H^q(X_fppf, F^a)`), used in 6.1 to split, on each affine étale
  chart, an extension of a finite locally free module by a quasi-coherent one.
- §2.18 (derived categories of quasi-coherent complexes on schemes), §2.19 (the right adjoint
  `a_f` of `Rf_*`, `pushforwardRightAdjoint_adj`, `globalDuality`, the upper shriek functor and its
  local complete intersection formula), §2.20 (relative dualising complexes of flat finitely
  presented morphisms and their base change).
- §3.3 (degrees of vector bundles and Riemann–Roch on proper curves), §4.1 (thickenings, formal
  smoothness, the lifting criterion and torsors of lifts for smooth morphisms).
- §§5.1–5.6: Chow groups of schemes locally of finite type over `k`, proper pushforward, flat
  pullback, `localization_exact`, `chow_affine_bundle`, the first Chern class, projective bundles
  and Chern classes with the splitting principle, normal cones, `deformationToNormalCone`, refined
  Gysin maps of regular immersions that need not be closed with `excess_intersection` and
  `gysin_self_intersection`, exterior products, and the intersection product on smooth schemes
  that need not be separated.

### From TauCetiRoadmap.EquivariantIntersectionTheory

Conventions 1, 4 and 5 (smooth affine `G` over `k`, quasi-projective `X` with a `G`-linearised
ample invertible sheaf, dimension and codimension gradings); §2.1 (`A^G_i(X) := A_{i+l−g}(X ×^G U)`
through Totaro's approximation, independent of `(V, U)`); §2.2 (operations and, for smooth `X`,
the equivariant intersection product, defined through the products on the mixed spaces).

### From TauCetiRoadmap.StableReductionPartII

§5.15, the Edidin–Graham comparison: for a smooth affine group `G` of dimension `g` over `k` acting
properly on a quasi-projective `X` with a `G`-linearised ample invertible sheaf, with `[X/G]`
Deligne–Mumford, flat pullback along the mixed spaces `X ×^G U → [X/G]` gives isomorphisms
`A_{i−g}([X/G])_ℚ ≅ A^G_i(X) ⊗ ℚ` for every `i`, from VirtualFundamentalClass §2.1's groups,
compatible with Chern classes of equivariant vector bundles and with proper pushforward.

### From TauCetiRoadmap.StableReduction

Layer 2 (coherent pushforward along proper morphisms over locally Noetherian bases, cohomology and
base change, the relative dualising sheaf of a proper flat nodal family and its base change,
relative ampleness and its openness) and Layer 3 (prestable families, their base change and
fibres).

### From TauCetiRoadmap.EnhancedDerivedSheaves

§0.3 (derived tensor and internal Hom on ringed sites), E1.4 (the pullback–pushforward adjunction
and change of coefficients), E1.8 (quasi-coherent derived sheaves and base change), through the
stack sites of VirtualFundamentalClass §3.1.

### From TauCetiRoadmap.DerivedModuleAlgebra

§0.7 (`τ_{≥−1}L_{B/A}` of a surjection `A → B = A/I` is `I/I²[1]`), §0.12 (for smooth `B/A`,
`L_{B/A} ≃ Ω_{B/A}[0]`), §0.25 (the obstruction in `Ext¹_B(L_{B/A}, J)` to lifting an `A`-map
`B → T` along a square-zero extension `T′ → T` of `A`-algebras, and the torsor of lifts).

## How to read the build

Layers 1–4 are the Chow lane. Layer 1 supplies proper covers, function fields, generic stabiliser
orders and degrees on stacks that need not be separated; Layer 2 the integral cycle and Chow
groups and their three comparisons; Layer 3 the operations that exist integrally; Layer 4, built
on proper covers, the rational operations on all stacks, and their agreement with
VirtualFundamentalClass on separated stacks. Layer 5 uses Layers 1–4 for the products and
comparisons. Layer 6 uses Layer 4 and VirtualFundamentalClass Layers 3–4, 6–7 and 9 to define the
virtual class without the resolution property and to prove the relative formulas. Layer 7 is
independent of the Chow lane: it needs only VirtualFundamentalClass Layers 3–5 and §9.1,
DerivedModuleAlgebra §§0.7 and 0.25 and SchemeAndStackFoundations §4.1. Layer 8 combines Layers 2–6
and VirtualFundamentalClass §2.5 for base change, functoriality and deformation invariance over
bases of pure dimension, and Layer 9 combines Layers 6–7 with StableReduction and
SchemeAndStackFoundations duality for spaces of maps from curves; its virtual class is Layer 6's.
Each target's *Needs:* line lists what its statement and its route use, item by item.

## Layer 1: proper covers, function fields and degrees

Throughout, `ℳ`, `ℱ`, `𝒢`, `𝒱` are stacks in the sense of Convention 1, and closed, reduced and
integral closed substacks are those of VirtualFundamentalClass §2.1
(gap:closed-substacks-of-stacks).

### 1.1 Proper covers

Define *ProperCover* `ℳ`: a scheme `X` of finite type over `k` with a proper surjective morphism
`X → ℳ`; it is representable because the diagonal of `ℳ` is, and properness is
SchemeAndStackFoundations §1.20's `IsProperStack`. For integral `ℳ`, a *proper covering* is a
proper cover with `X` integral and `X → ℳ` generically finite (vistoli1989 Lemma 1.10 and (1.11),
lines 299–328). Prove:

- every stack `ℳ` has a finite, finitely presented and surjective morphism `Z → ℳ` from a scheme
  `Z`, of finite type over `k`, that is étale over a dense open substack of `ℳ`; in particular every
  stack has a proper cover (rydh2015 Theorem B, lines 81–85, whose hypotheses, quasi-compactness
  and a quasi-compact separated diagonal, are part of Convention 1; for Noetherian Deligne–Mumford
  stacks the statement is attributed there, lines 86–87, to Laumon and Moret-Bailly; kresch1999b
  Remark 2.6, lines 307–315);
- every stack with a separated morphism of finite type to a Noetherian scheme has a proper cover
  that can be taken generically finite with `X` quasi-projective over that scheme; in particular
  every separated stack has one (deligne-mumford1969 Theorem 4.12, lines 1012–1019; vistoli1989
  lines 582–584);
- every integral `ℳ` has a proper covering: the reduced structure on an irreducible component of
  `Z` that dominates `ℳ` is one (vistoli1989 Lemma 1.10, lines 299–327, gives one from any proper
  cover);
- proper covers pass to closed substacks, to open substacks, along morphisms `𝒩 → ℳ`
  representable by schemes (the base change `X ×_ℳ 𝒩` is a scheme proper and surjective over `𝒩`),
  to vector bundles over `ℳ`, to products `ℳ ×_k ℳ′`, and from a stack `ℳ′` to `ℳ` along a proper
  surjective representable `ℳ′ → ℳ`.

*Needs:* gap:closed-substacks-of-stacks; SchemeAndStackFoundations §§1.19–1.20 (`IsProperStack`,
`RepresentableProperty`, `Stacks.points`); VirtualFundamentalClass §0.2.

**API.**

- A proper cover of `ℳ` restricts to a proper cover of every closed or open substack and of every
  stack representable by schemes over `ℳ`, and composes with a proper representable surjection onto
  `ℳ`.
- For integral `ℳ` there is a proper covering, and any two proper coverings
  `Y, Y′ → ℳ` are dominated by an integral closed subscheme of `Y ×_ℳ Y′` surjecting onto both
  (vistoli1989 lines 1610–1613).

**Checks.**

- For a finite étale group `G` of degree `|G|` over `k`, `Spec k → BG` is finite étale of degree
  `|G|`, hence a proper covering of `BG`. A definition asking for a birational cover would exclude
  it: for `|G| > 1`, `BG` has no open substack that is a scheme.
- The identity of the line `L` with a doubled origin is a proper cover; `L` is not separated, so
  separatedness is sufficient for a proper cover and not necessary. No separated scheme `Z` has a
  proper surjection onto `L`: for a discrete valuation ring `R` mapping to a component of `Z` that
  dominates `L`, with closed point over `0₁` and generic point over `t ≠ 0`, the image in `L` of
  `Spec R` has a second extension through the other chart, with closed point `0₂`, which the
  valuative criterion would lift to a second extension of the same generic point in the separated `Z`.
- Base change along a morphism that is not representable by schemes does not preserve proper
  covers: the base change of `id : Spec k → Spec k` along `BG → Spec k` is `id : BG → BG`, proper and
  surjective, whose source is not a scheme when `|G| > 1`.
- A proper cover need not be separated, and a non-separated stack with inertia that is not finite
  still has a finite one. Let `G` be the étale group scheme over `𝔸¹` obtained from the constant
  `ℤ/2` by deleting the non-identity point over `0`, so its fibres are `ℤ/2` over `t ≠ 0` and trivial
  over `0`. The classifying stack `B_{𝔸¹}G` is a stack (its diagonal has fibres twisted forms of
  `G`, separated and quasi-compact) and is not separated. The two charts `Q = 𝔸¹ ⊔ 𝔸¹ → L` of the
  line with a doubled origin form a `G_L`-torsor, `G` exchanging the copies over `t ≠ 0`
  (`Q ×_L Q = Q ⊔ Q|_{t≠0} ≅ Q ×_{𝔸¹} G`), so they define `L → B_{𝔸¹}G`, whose base change along the
  atlas `𝔸¹ → B_{𝔸¹}G` is `Q → 𝔸¹`. Hence `L → B_{𝔸¹}G` is finite étale of degree
  `2 = (e(B_{𝔸¹}G)/e(L)) · [k(t) : k(t)]` (1.3), a proper cover. No separated scheme `X` is one: the
  torsor `P := X ×_{BG} 𝔸¹ → X` would be finite étale (proper over `𝔸¹` and étale over the separated
  `X`), of degree `2` over points above `t ≠ 0` and `1` over points above `0`, while a component of
  `X` dominating `𝔸¹` meets both fibres; so a definition asking for a separated `X` would exclude
  this stack.

### 1.2 Function fields and the generic stabiliser

For an integral `𝒱`, define *functionField* `k(𝒱)` as the colimit, over nonempty open substacks
`𝒰 ⊆ 𝒱`, of the rings of morphisms `𝒰 → 𝔸¹` (vistoli1989 (1.14), lines 347–353), and
*genericStabiliserOrder* `e(𝒱)` as the order of the automorphism group (SchemeAndStackFoundations
§1.20 `automorphismGroup`) of a geometric point over the generic point of `|𝒱|`. Prove that `k(𝒱)` is
a field finitely generated over `k`; that for an étale `U → 𝒱` from an integral scheme, `k(𝒱) → k(U)`
is a finite separable extension identifying `k(𝒱)` with the rational functions on `U` whose two
pullbacks to `U ×_𝒱 U` agree; that `trdeg_k k(𝒱) = dim 𝒱`; that there is a dense open `𝒰 ⊆ 𝒱` over which
the inertia `I_𝒱 → 𝒱` is finite étale of constant degree `e(𝒱)` (vistoli1989 Lemma 1.13 (i), lines
337–338, and line 422); and that `e(𝒱) = 1` if and only if `𝒱` has a dense open substack that is an
algebraic space (vistoli1989 lines 424–425; SchemeAndStackFoundations `setoid_criterion`).
*Needs:* gap:closed-substacks-of-stacks; SchemeAndStackFoundations §1.20 (`inertia`,
`automorphismGroup`, `setoid_criterion`); VirtualFundamentalClass §0.2.

**API.**

- A dominant morphism `f : ℱ → 𝒢` of integral stacks induces a field homomorphism `f^* : k(𝒢) → k(ℱ)`,
  functorial in `f`; an open immersion induces an isomorphism.
- For a finite étale group `G` acting on an integral scheme `X`, `k([X/G]) = k(X)^G` (vistoli1989
  lines 351–353).
- `e(𝒱)` is the sum of the degrees `deg(ℐ/𝒱)` of 1.3 over the irreducible components `ℐ` of
  `(I_𝒱)_red` that dominate `𝒱` (each with its reduced, integral structure; `I_𝒱 → 𝒱` is
  representable and separated), and `e` is unchanged by passing to a dense open substack.

**Checks.**

- For a finite étale group `G`, `k(BG) = k` and `e(BG) = |G|`; for `G = S₃` constant, `e = 6`.
- For `[𝔸¹/μ₂]`, `e = 1` and `k([𝔸¹/μ₂]) = k(x)^{μ₂} = k(x²)`, while its closed substack `Bμ₂` at the
  origin has `e = 2`; a definition taking the largest stabiliser would give `2` for `[𝔸¹/μ₂]`.
- For `B_{𝔸¹}G` of 1.1, `e = 2` although the stabiliser at the closed point `0` is trivial: the
  generic stabiliser can be larger than a special one when the inertia is quasi-finite and not
  finite.
- The inertia formula counts degrees, not components. For `G = ℤ/2` constant, `I_{BG} = BG ⊔ BG`,
  and `1 + 1 = 2 = e(BG)`. For `G = S₃` constant, `I_{BG}` is the disjoint union of the `B Z(c)` over
  the conjugacy classes, of degrees `[S₃ : Z(c)] = 1, 3, 2`, with sum `6`. Over `k = ℚ`,
  `I_{Bμ₃} = Bμ₃ ⊔ (Spec ℚ(ζ₃) ×_ℚ Bμ₃)`, two components of degrees `1` and
  `(3/3) · [ℚ(ζ₃) : ℚ] = 2`, with sum `3 = e(Bμ₃)`, while the number of components is `2`. On
  `[𝔸¹/μ₂]` the component of `I` carrying the non-identity element lies over the origin and does not
  dominate, and the sum is `1 = e`.
- Over `ℝ`, let `ℤ/4` act on `Spec ℂ` through `ℤ/4 → ℤ/2 = Gal(ℂ/ℝ)`. The gerbe
  `𝒢 = [Spec ℂ/(ℤ/4)]` is integral with `k(𝒢) = ℂ^{ℤ/4} = ℝ` and `e(𝒢) = 2`, the order of the kernel;
  a definition by the order of the acting group gives `4`.

### 1.3 The degree of a dominant morphism

For a separated dominant morphism `f : ℱ → 𝒢` of integral stacks, define *stackDegree*
`deg(ℱ/𝒢) ∈ ℚ_{≥0}` (vistoli1989 (1.15), lines 365–376): if `f` is representable, it is
`deg(ℱ ×_𝒢 V/V)` for an étale `V → 𝒢` from an integral scheme, the generic rank of the pushforward of
the structure sheaf when `ℱ ×_𝒢 V → V` is generically finite and `0` otherwise (vistoli1989 lines
356–361); in general it is `deg(U/𝒢)/deg(U/ℱ)` for an étale `U → ℱ` from an integral affine scheme.
Prove:

- the definition does not depend on `V` or `U`, and `deg(ℱ/ℋ) = deg(ℱ/𝒢) · deg(𝒢/ℋ)` for composable
  separated dominant morphisms (vistoli1989 Lemma 1.16, lines 379–416);
- `deg(ℱ/𝒢) = (e(𝒢)/e(ℱ)) · [k(ℱ) : k(𝒢)]`, with `[E : K] := 0` for an infinite extension (vistoli1989
  Proposition 1.17, lines 426–452);
- `deg(ℱ/𝒢) > 0` if and only if `dim ℱ = dim 𝒢`, and `deg(ℱ/𝒢) ∈ ℤ` when `f` is representable;
- invariance under dominant base change: for a dominant morphism `𝒢′ → 𝒢` of integral stacks with
  `ℱ ×_𝒢 𝒢′` integral, `deg(ℱ ×_𝒢 𝒢′/𝒢′) = deg(ℱ/𝒢)` (vistoli1989 lines 363–364 for schemes).

No separatedness of `ℱ` or `𝒢` is assumed. *Needs:* 1.2; SchemeAndStackFoundations §1.20.

**API.**

- `deg(𝒱/𝒱) = 1`, and `deg` of a separated étale morphism from an integral scheme `U` to `𝒱` is
  `e(𝒱) · [k(U) : k(𝒱)]`. Such a morphism is dominant, being open, and it is separated whenever `U` is
  (for instance `U` affine): the composite `U → U ×_𝒱 U → U × U` is a closed immersion and the second
  map, a base change of the diagonal of `𝒱`, is separated, so the first, the diagonal of `U → 𝒱`, is a
  closed immersion.
- For a proper representable `f` and integral `𝒱 ⊆ ℱ`, `deg(𝒱/f(𝒱))` is the integer used by 3.2.

**Checks.**

- `deg(BG/Spec k) = 1/|G|` and `deg(Spec k/BG) = |G|` (vistoli1989 lines 372–376); by the formula,
  `1/|G| = (1/|G|)·[k : k]` and `|G| = (|G|/1)·[k : k]`. The definition `deg = [k(ℱ) : k(𝒢)]` without
  the stabiliser ratio gives `deg(Spec k/BG) = 1`, contradicting the representable degree `|G|`, the
  rank of `Spec k ×_{BG} Spec k = G` over `Spec k`.
- `𝔸¹ → Spec k` has degree `0`, since `[k(t) : k] = ∞`, matching the vanishing of pushforward when
  the dimension drops.
- For the coarse map `[𝔸¹/μ₂] → 𝔸¹`, `x ↦ y = x²`, the degree is `(1/1)·[k(x²) : k(x²)] = 1`, and the
  restriction `Bμ₂ → {0}` has degree `(1/2)·[k : k] = 1/2`.
- In characteristic `p`, let `ℤ/p` act on `Spec k[x, y]` by `y ↦ y + x`, with invariant ring
  `k[x, z]`, `z = y^p − x^{p−1}y`. The integral substack `𝒱 = [V(x)/(ℤ/p)] ≅ 𝔸¹_y × B(ℤ/p)` maps onto
  `{x = 0} = Spec k[z]` with `z = y^p`, and its degree is `(1/p)·[k(y) : k(y^p)] = (1/p)·p = 1`,
  computed directly as `deg(Spec k[y]/Spec k[y^p])/deg(Spec k[y]/𝒱) = p/p = 1`.
- In characteristic `p`, the Frobenius `𝔸¹ → 𝔸¹`, `t ↦ t^p`, is representable of degree
  `[k(t) : k(t^p)] = p`, an integer, purely inseparable.
- Separatedness is asked of the morphism, not of the stacks. A chart `𝔸¹ → L` of the line `L` with a
  doubled origin is an open immersion, hence separated, of degree `1 = e(L) · [k(t) : k(t)]`, although
  `L` is not separated. The étale surjection `L → 𝔸¹` is not separated (the two origins are not
  separated over `𝔸¹`), so `deg(L/𝔸¹)` is outside the definition and the API formula, which would
  return `1`, does not apply to it.

### Examples

- `BG` for a finite étale `G`: one point, `e = |G|`, `deg(BG/Spec k) = 1/|G|`.
- `[𝔸¹/μ₂]` and its coarse map `x ↦ x²`: trivial generic stabiliser, stabiliser `μ₂` at the origin.
- The `ℤ/p`-quotient of 1.3 in characteristic `p`, where the function field of the image of an
  integral substack is not perfect.
- `B_{𝔸¹}G` of 1.1: a non-separated stack whose inertia is not finite, with the finite étale cover
  `L → B_{𝔸¹}G` of degree `2`.

### Dependencies

gap:closed-substacks-of-stacks; SchemeAndStackFoundations §§1.19–1.20; VirtualFundamentalClass §0.2;
deligne-mumford1969 Theorem 4.12 and rydh2015 Theorem B for 1.1. Within the layer, 1.1 and 1.2
precede 1.3.

## Layer 2: integral cycles and Chow groups

### 2.1 Cycles and the cycle of a closed substack

Define *Cycles* `Z_i(ℳ)`, the free abelian group on the integral closed substacks of `ℳ` of
dimension `i` (vistoli1989 (3.1), lines 891–894; gillet1984 §4), equivalently on the irreducible
closed subsets of `|ℳ|` of dimension `i`, with `Z_*(ℳ) := ⊕_i Z_i(ℳ)`. For a closed substack `𝒵`,
define *cycleOfSubstack* `[𝒵] := Σ m_𝒱[𝒱]`, over the irreducible components `𝒱` of `𝒵`, where `m_𝒱` is
the length of the local ring of `𝒵 ×_ℳ U` at the generic point of a component of `𝒱 ×_ℳ U` for any étale
`U → ℳ` from a scheme meeting `𝒱` (vistoli1989 (3.5), lines 967–971). Prove that `m_𝒱` does not depend
on `U` or on the component (stacks-chow-spaces Lemma 4.3, line 169, and Lemma 10.3, line 516, for
étale invariance of lengths), and étale descent of cycles: for an étale surjection `U → ℳ` from a
scheme, pullback `Z_i(ℳ) → Z_i(U)`, `[𝒱] ↦ [𝒱 ×_ℳ U]`, is injective with image the cycles whose two
pullbacks to `U ×_ℳ U` agree (vistoli1989 lines 953–957). No separatedness is assumed, and no
proper cover is used. *Needs:* gap:closed-substacks-of-stacks; VirtualFundamentalClass §0.2; Tau Ceti
`TauCeti.AlgebraicGeometry.Chow.cyclesOfDimension`.

**API.**

- `[𝒱] = 1·[𝒱]` for integral `𝒱`; `[𝒵] = [𝒵_red]` exactly when `𝒵` is generically reduced along every
  component.
- For a scheme of finite type over `k`, the descended cycle of a closed subscheme is its usual
  cycle.

**Checks.**

- `Z_0(BG) = ℤ·[BG]` for a finite étale `G`, and `Z_i(∅) = 0` for every `i`.
- `[[V(x²)/μ₂]] = 2·[Bμ₂]` in `Z_0([𝔸¹/μ₂])`, since `k[x]/(x²)` has length `2`; a definition by the reduced
  support gives `1`.
- For a scheme `X` of finite type over `k`, `Z_i(X)` is Tau Ceti's `cyclesOfDimension X i`: the
  integral closed subschemes of dimension `i` are those whose generic points have height `i`, and the
  locally finite sums there are finite because `X` is quasi-compact.

### 2.2 Rational equivalence and the Chow groups

Let `𝒱` be integral of dimension `i + 1`, `𝒲 ⊆ 𝒱` integral of dimension `i`, and `φ ∈ k(𝒱)^×`. Define
*ordAlong* `ord_𝒲(φ) := ord_w(φ|_U)` for an étale `U → 𝒱` from an integral scheme meeting `𝒲`, where `w`
is the generic point of a component of `𝒲 ×_𝒱 U` (a point of coheight one) and `ord` is
`AlgebraicGeometry.Scheme.ord`; `div(φ) := Σ_𝒲 ord_𝒲(φ)[𝒲]`; *ratEquivalences*
`W_i(ℳ) := ⊕_𝒱 k(𝒱)^×` over integral closed substacks of dimension `i + 1`; the boundary
`∂ : W_i(ℳ) → Z_i(ℳ)`, `(𝒱, φ) ↦ div(φ)` pushed into `ℳ`; and *stackChowGroup*
`A_i(ℳ) := Z_i(ℳ)/∂W_i(ℳ)` with `A_*(ℳ) := ⊕_i A_i(ℳ)` and `A_i(ℳ)_ℚ := A_i(ℳ) ⊗ ℚ` (vistoli1989
(3.2)–(3.4), lines 901–966; gillet1984 §4). Prove that `ord_𝒲(φ)` does not depend on the choices
(stacks-chow-spaces Lemma 13.2, line 667; vistoli1989 Lemma 3.3, lines 940–948), is additive in `φ`,
and is nonzero for finitely many `𝒲`; equivalently `∂` is the morphism of étale sheaves
`W_* → Z_*` of vistoli1989 lines 953–959 on global sections. No separatedness is assumed, and no
proper cover is used. *Needs:* 1.2, 2.1; Mathlib `AlgebraicGeometry.Scheme.ord`.

**API.**

- The class map `Z_i(ℳ) → A_i(ℳ)` is surjective with kernel `∂W_i(ℳ)`.
- `A_i(ℳ) = 0` for `i < 0` and for `i > dim ℳ`; `A_{dim ℳ}(ℳ)` is free on the irreducible components of
  dimension `dim ℳ`.
- `A_i(ℳ ⊔ ℳ′) = A_i(ℳ) ⊕ A_i(ℳ′)`, and an equivalence of stacks induces an isomorphism.

**Checks.**

- `A_0(BG) = ℤ` and `A_i(BG) = 0` for `i ≠ 0`; `W_{−1}(BG) = k(BG)^× = k^×` is nonzero (for `k = ℚ` the
  element `2` is not the identity), and its boundary lies in `Z_{−1}(BG) = 0`.
- `A_0([𝔸¹/μ₂]) ≅ ℤ/2`, generated by `[Bμ₂]`. Every rational function is `g(y)` with `y = x²`, and
  `ord_{Bμ₂}(y) = ord_0(x²) = 2`, so the coefficient of `[Bμ₂]` in every principal divisor is even and
  `div(y) = 2·[Bμ₂]`. Every other closed point `W` lies over a monic irreducible `P(y) ≠ y`; since
  `P(0) ≠ 0` and `char k ≠ 2`, `k[x]/P(x²)` is reduced, so `div(P(y)) = [W]` and `[W] = 0`. Hence
  `A_0([𝔸¹/μ₂])_ℚ = 0`.
- Over `k = ℚ`, the closed point `W = [V(x⁴ + 1)/μ₂]` lies over `y² + 1 = 0` and has `div(y² + 1) = [W]`,
  with coefficient `0` at the origin; an argument using only the linear polynomials `y − a` would miss
  it.

### 2.3 Comparisons with schemes, algebraic spaces and the separated rational groups

Prove:

- for a scheme `X` of finite type over `k`, `Z_i(X) = cyclesOfDimension X i`, `∂W_i(X) = RatEquiv X i`
  and `A_i(X) ≅ ChowGroup X i` compatibly with the class maps (Tau Ceti `Chow/Basic.lean`;
  SchemeAndStackFoundations §5.1; stacks-chow Definition 19.1, line 1356);
- for a quasi-separated algebraic space `X` of finite type over `k`, `Z_i(X)` and `A_i(X)` are the
  groups of cycles and the Chow group `CH_i(X)` of stacks-chow-spaces Definitions 3.1 and 15.1 (lines
  126–133 and 797–810), in its Situation 2.1 (lines 57–61) with `B = S = Spec k` and `δ = 0`;
- for a separated stack `ℳ`, `A_i(ℳ) ⊗ ℚ` is canonically VirtualFundamentalClass §2.1's `A_i(ℳ)_ℚ`,
  compatibly with the cycle classes of integral closed substacks.

The compatibility of the operations is 4.4. *Needs:* 2.2; Tau Ceti
`TauCeti.AlgebraicGeometry.Chow.cyclesOfDimension`, `TauCeti.AlgebraicGeometry.Chow.RatEquiv`,
`TauCeti.AlgebraicGeometry.Chow.ChowGroup`, `TauCeti.AlgebraicGeometry.Chow.cycleClass`;
SchemeAndStackFoundations §5.1; VirtualFundamentalClass §2.1.

**Checks.**

- `A_0(Spec k) = ℤ`, matching `TauCeti.AlgebraicGeometry.Chow.ChowGroup.equivIntOfUnique`.
- For the line `L` with a doubled origin, `A_0(L) ≅ ℤ`, generated by `[0₁]`: `div(t) = [0₁] + [0₂]`, every
  other closed point is the divisor of its minimal polynomial, so `A_0(L) = ℤ² / ℤ·(1, 1)`. The same
  group arises from Tau Ceti's scheme groups, whereas `A_0(𝔸¹) = 0`.
- For the separated `[𝔸¹/μ₂]`, `A_0 ⊗ ℚ = 0` agrees with VirtualFundamentalClass's rational group, in
  which `[Bμ₂]` has degree `1/2` under the coarse map and `2·[Bμ₂] = div(y)`; the integral torsion
  `ℤ/2` is invisible there.

### Examples

- `A_*(BG) = ℤ` in degree `0`; `A_*([𝔸¹/μ₂]) = ℤ/2 ⊕ ℤ` in degrees `0, 1`.
- `A_*(L)` for the line with a doubled origin: `ℤ` in degrees `0` and `1`.

### Dependencies

Layer 1; gap:closed-substacks-of-stacks; Tau Ceti `Chow/Basic.lean`; Mathlib
`AlgebraicGeometry.Scheme.ord`; SchemeAndStackFoundations §5.1; VirtualFundamentalClass §2.1. Within
the layer, 2.1 → 2.2 → 2.3.

## Layer 3: integral operations

### 3.1 Flat pullback

A morphism `f : ℱ → 𝒢` is flat of relative dimension `d` if for étale atlases `V → 𝒢` and
`U → ℱ ×_𝒢 V` the composite `U → V` is flat with fibres of pure dimension `d` (`SmoothLocal`,
SchemeAndStackFoundations §1.20). Define *flatPullback* `f^* : Z_i(𝒢) → Z_{i+d}(ℱ)` by
`f^*[𝒱] := [𝒱 ×_𝒢 ℱ]` (vistoli1989 (3.6)(i), lines 974–979). Prove that it carries `∂W_i(𝒢)` into
`∂W_{i+d}(ℱ)`, through the pullback of rational equivalences built on atlases (vistoli1989 (3.7),
lines 989–997, and lines 1012–1025), and so induces `f^* : A_i(𝒢) → A_{i+d}(ℱ)`. This extends
VirtualFundamentalClass §2.2's flat pullback from rational to integral coefficients and drops
separatedness. *Needs:* Layer 2; SchemeAndStackFoundations §§1.20, 5.2.

**API.**

- For `f` flat of relative dimension `d` and `g : 𝒢 → ℋ` flat of relative dimension `e`, `g ∘ f` is
  flat of relative dimension `d + e` and `(g ∘ f)^* = f^* ∘ g^*` on cycles and on Chow groups;
  `id^* = id`.
- For an open immersion `j : 𝒰 → ℳ`, flat of relative dimension `0`, `j^*[𝒱] = [𝒱 ∩ 𝒰]` is restriction
  of cycles, zero on cycles supported off `𝒰`; it is the second map of the localisation sequence of
  3.3.
- For every closed substack `𝒵 ⊆ 𝒢`, integral or not, `f^*[𝒵] = [𝒵 ×_𝒢 ℱ]` with the cycles of closed
  substacks of 2.1.
- For an étale surjection `U → ℳ` from a scheme, flat pullback on cycles is the descent injection of
  2.1, and on schemes flat pullback is SchemeAndStackFoundations §5.2's.

**Checks.**

- For `π : Spec k → BG` (étale, relative dimension `0`), `π^*[BG] = [Spec k]`, so `π^*` is the identity
  `ℤ → ℤ` on `A_0`; a definition multiplying by the degree gives `|G|`.
- For `pr : 𝔸¹ × ℳ → ℳ`, `pr^*[𝒱] = [𝔸¹ × 𝒱]` in dimension `dim 𝒱 + 1`.
- The coarse map `[𝔸¹/μ₂] → 𝔸¹` is flat of relative dimension `0` (its composite with the étale atlas
  `𝔸¹_x` is `x ↦ x²`), and pulls `[0]` back to `[[V(x²)/μ₂]] = 2·[Bμ₂]`, not `[Bμ₂]`: the scheme-theoretic
  fibre is not reduced.

### 3.2 Pushforward along proper representable morphisms

For `f : ℱ → 𝒢` proper and representable, define *properPushforward*
`f_*[𝒱] := deg(𝒱/f(𝒱))[f(𝒱)]`, with `f(𝒱)` the image (gap:closed-substacks-of-stacks) and the integral
degree of 1.3, which is `0` when `dim f(𝒱) < dim 𝒱` (vistoli1989 (3.6)(ii), lines 980–984). Prove that it
carries `∂W_i(ℱ)` into `∂W_i(𝒢)`, so that `f_* : A_i(ℱ) → A_i(𝒢)` is defined: for an integral `𝒱 ⊆ ℱ`
of dimension `i + 1` and `φ ∈ k(𝒱)^×`,

    f_* div(φ) = (e(f(𝒱))/e(𝒱)) · div(N(φ))   if dim f(𝒱) = dim 𝒱,
    f_* div(φ) = 0                             if dim f(𝒱) < dim 𝒱,

with `N` the norm of the finite extension `k(𝒱)/k(f(𝒱))` (vistoli1989 (3.7), lines 989–1011, where
the pushforward of rational equivalences is formed on étale atlases; there the generic degree is
`deg(𝒱/f(𝒱))` of 1.3, which exceeds `[k(𝒱) : k(f(𝒱))]` by the factor `e(f(𝒱))/e(𝒱)`). The factor is
an integer because a representable `f` embeds the automorphism group of a geometric generic point
of `𝒱` into that of its image. The construction is integral and uses no proper cover. This extends
VirtualFundamentalClass §2.2's proper pushforward, for representable morphisms, to integral
coefficients and to stacks that are not separated. *Needs:* 1.2–1.3, Layer 2;
SchemeAndStackFoundations §5.2; Mathlib `AlgebraicGeometry.AlgebraicCycle.map`.

**API.**

- For proper representable `f : ℱ → 𝒢` and `g : 𝒢 → ℋ`, `(g ∘ f)_* = g_* ∘ f_*` on cycles and on Chow
  groups, and `id_* = id`.
- For a closed immersion `i : 𝒵 → ℳ`, `i_*[𝒱] = [𝒱]` identifies `Z_*(𝒵)` with the cycles of `ℳ`
  supported on `𝒵`; it is the first map of the localisation sequence of 3.3.
- `f_*[𝒱]` is `0` exactly when `dim f(𝒱) < dim 𝒱`, and otherwise a positive integer multiple of
  `[f(𝒱)]`.
- On schemes, `f_*` is SchemeAndStackFoundations §5.2's proper pushforward, with the weights
  `[k(V) : k(f(V))]` of Mathlib `AlgebraicGeometry.AlgebraicCycle.map`.

**Checks.**

- For `π : Spec k → BG`, finite étale of degree `|G|`, `π_*[Spec k] = |G|·[BG]` and `π_*π^* = |G|` on
  `A_0(BG) = ℤ`.
- For a nontrivial finite étale `G` there is no homomorphism `c : A_0(BG) → A_0(Spec k) = ℤ` extending
  this pushforward functorially to `BG → Spec k`: functoriality for `Spec k → BG → Spec k`, the
  identity, would give `|G| · c([BG]) = 1`. For `G` trivial, `BG = Spec k` and the identity is the
  pushforward, with `1 · 1 = 1`.
- The stabiliser factor in the divisor formula is needed. For a finite étale `G` with `|G| > 1` and
  `f : 𝔸¹ → 𝔸¹ × BG` (the identity times `Spec k → BG`), finite étale of degree `|G|`, and `φ = t`:
  `f_* div(t) = f_*[0] = |G|·[0 × BG]`, while `k(𝔸¹ × BG) = k(t) = k(𝔸¹)`, so `N(t) = t` and
  `div(N(t)) = [0 × BG]`; the factor `e(𝔸¹ × BG)/e(𝔸¹) = |G|` restores the equality, and the norm alone
  is off by it.
- For `ℙ¹ → Spec k`, `f_*[P] = [κ(P) : k]·[Spec k]`, the residue degree of SchemeAndStackFoundations
  §5.2.

### 3.3 Push–pull and localisation

Prove the integral push–pull formula: for a 2-cartesian square with `f : ℱ → 𝒢` proper and
representable, `ψ : 𝒢′ → 𝒢` flat of relative dimension `d`, `f′ : ℱ′ → 𝒢′` and `ψ′ : ℱ′ → ℱ`,
`ψ^* f_* = f′_* ψ′^*` on cycles and on `A_*(ℱ)` (vistoli1989 Lemma 3.9 (i), lines 1049–1065). Prove the
localisation sequence: for a closed substack `i : 𝒵 → ℳ` with open complement `j : 𝒰 → ℳ`,
`A_i(𝒵) → A_i(ℳ) → A_i(𝒰) → 0` is exact, by closures of integral substacks of `𝒰` and of their rational
functions (stacks-chow-spaces Lemma 15.2, lines 813–818, for algebraic spaces; fulton1998
Proposition 1.8 for schemes). Both statements are integral and use no proper cover.
*Needs:* 3.1, 3.2; gap:closed-substacks-of-stacks.

**Checks.**

- Push–pull for `π : Spec k → BG` against itself: `Spec k ×_{BG} Spec k = G`, and both sides send
  `[Spec k]` to `|G|·[Spec k]`, the left through `π_*[Spec k] = |G|·[BG]` and the right through
  `[G] = Σ_z [Spec κ(z)]` over the closed points `z` of `G`, with `Σ_z [κ(z) : k] = |G|`.
- On `[𝔸¹/μ₂]` with `𝒵 = Bμ₂`, `A_0(Bμ₂) = ℤ → A_0([𝔸¹/μ₂]) = ℤ/2 → A_0([𝔾_m/μ₂]) = 0 → 0` is exact and
  the first map is surjective and not injective.
- The sequence is not exact on the left: for `ℳ = ℙ¹` and `𝒵` two `k`-points, `ℤ² → ℤ` has kernel
  `ℤ·(1, −1)`.

### 3.4 Exterior products

Define *exteriorProduct* `× : Z_i(ℱ) ⊗ Z_j(𝒢) → Z_{i+j}(ℱ ×_k 𝒢)` by `[𝒱] × [𝒲] := [𝒱 ×_k 𝒲]`, the cycle
of the closed substack (vistoli1989 lines 1706–1708; fulton1998 §1.10). Prove that it passes to
rational equivalence, giving `× : A_i(ℱ) ⊗ A_j(𝒢) → A_{i+j}(ℱ ×_k 𝒢)`. This is integral and uses no
proper cover. *Needs:* 3.1–3.3; SchemeAndStackFoundations §5.5.

**API.**

- The product is bilinear and associative, commutative up to the exchange isomorphism
  `ℱ ×_k 𝒢 ≅ 𝒢 ×_k ℱ`, and has unit `[Spec k]` under `Spec k ×_k 𝒢 = 𝒢`, on cycles and on Chow groups.
- For flat `f : ℱ′ → ℱ` and `g : 𝒢′ → 𝒢`, `(f × g)^*(α × β) = f^*α × g^*β`; for proper representable
  `f`, `g`, `(f × g)_*(α × β) = f_*α × g_*β`.
- On schemes of finite type over `k` the product is SchemeAndStackFoundations §5.5's exterior product.

**Checks.**

- For `K/k` separable of degree `2`, `[Spec K] × [Spec K] = [Spec(K ⊗_k K)]` is the sum of two points of
  degree `2`; for `K = k(a^{1/p})` purely inseparable of degree `p`, `K ⊗_k K` is local of length `p` and
  `[Spec K] × [Spec K] = p·[Spec K]`. Degrees over `k` multiply in both cases (`4 = 2 + 2`, `p² = p · p`);
  a definition by the reduced product gives `[Spec K]` in the second case.
- `[BG] × [BH] = [B(G × H)]` for finite étale `G`, `H`, not `|G||H|·[B(G × H)]`, which a definition
  weighting by the stabiliser order would give.
- `Z_*(∅) = 0` and `∅ ×_k 𝒢 = ∅`, so every product with a cycle on the empty stack is `0`; and
  `[Spec k] × [𝒲] = [𝒲]` under `Spec k ×_k 𝒢 = 𝒢`.

### 3.5 Refined Gysin maps with algebraic-space sources

Let `f : ℱ → 𝒢` be a regular local immersion of codimension `c` of algebraic stacks locally of finite
type over `k`, with normal bundle `N_{ℱ/𝒢}` (VirtualFundamentalClass §1.5,
gap:normal-cones-of-local-immersions), let `Y` be a quasi-separated
algebraic space of finite type over `k` with a morphism `Y → 𝒢`, and `X := ℱ ×_𝒢 Y`, an algebraic space
because `f` is representable. For an integral closed `T ⊆ Y` of dimension `i`, put `U := ℱ ×_𝒢 T`, with
the normal cone `C_{U/T}` of the local immersion `U → T` inside `N := N_{ℱ/𝒢}|_U`, and
`(ℱ · T) := s^*[C_{U/T}] ∈ A_{i−c}(U)`, where `s^*` is the inverse of the flat pullback
`A_{i−c}(U) → A_i(N)`, an isomorphism on algebraic spaces (stacks-chow-spaces Lemma 27.3, lines
1986–1990). Define *refinedGysin* `f^! : Z_i(Y) → A_{i−c}(X)` by `f^![T] := (U → X)_*(ℱ · T)`
(vistoli1989 (3.10), lines 1081–1100). Prove, integrally, that `f^!` passes to rational
equivalence, giving `f^! : A_i(Y) → A_{i−c}(X)` (vistoli1989 Theorem 3.11, lines 1101–1109), with the
compatibilities of the API below.

Route: vistoli1989 §§3–4 for schemes, which avoid blowing up a stack along a substack that is only
locally immersed and use the rational equivalence of its Lemma 3.16 (lines 1172–1174) on reduced
equidimensional schemes; Theorems 3.11–3.13 hold for representable regular local immersions of
algebraic stacks with the same proofs (behrend-fantechi1997 lines 1634–1641); the passage from schemes
to algebraic-space sources is étale descent of cycles and rational equivalences (2.1–2.2), the normal
cones and the classes `(ℱ · T)` being étale local on `Y`. This extends VirtualFundamentalClass §2.4's
refined Gysin maps, for algebraic-space sources, to integral coefficients. *Needs:* Layer 2, 3.1–3.3;
VirtualFundamentalClass §1.5; gap:normal-cones-of-local-immersions; SchemeAndStackFoundations §5.5.

**API.**

- For a morphism `q : Y′ → Y` of such algebraic spaces and the induced `p : X′ → X`, `f^! q_* = p_* f^!`
  for `q` proper and `f^! q^* = p^* f^!` for `q` flat (vistoli1989 Theorem 3.12, lines 1110–1117, and
  Lemma 3.20, lines 1206–1207); in particular `f^!` commutes with restriction to open subspaces of `Y`.
- For regular local immersions `f_j : ℱ_j → 𝒢_j` and morphisms `Y → 𝒢_1`, `Y → 𝒢_2`,
  `f_1^! f_2^! = f_2^! f_1^!` in the Chow group of the common fibre product (vistoli1989 Theorem 3.13,
  lines 1118–1123).
- For `Y` equidimensional, `f^![Y] = s^*[C_{X/Y}]` (vistoli1989 Lemma 3.19, lines 1197–1202).
- When `f` is a regular immersion of schemes and `Y` a scheme, `f^!` is SchemeAndStackFoundations §5.5's
  refined Gysin map.

**Checks.**

- For the zero section `s` of a vector bundle `E` of rank `r` over a scheme `M` and `Y = E`, `s^!` is the
  inverse of flat pullback; for `Y = M` mapped to `E` by `s`, `s^![M] = c_r(E) ∩ [M]`, not `[M]` (on `ℙ¹`
  with `E = O(−1)`, `−[pt]`).
- The origin `{0} → 𝔸¹` refined along `z ↦ z²` gives `f^![𝔸¹] = [Spec k[z]/(z²)] = 2·[pt]`, the
  SchemeAndStackFoundations §5.5 Check.
- For the codimension-`0` regular local immersion `Spec k → BG` (`G` finite étale) and `Y = Spec k`,
  `X = G` and `f^![Spec k] = [G] = Σ_z [Spec κ(z)]` over the closed points of `G`, whose pushforward to
  `Spec k` is `|G|·[Spec k]`, not `[Spec k]`.

### Examples

- `π : Spec k → BG`: `π_*π^* = |G|` on `A_0(BG)`, and `π^*π_* = |G|` on `A_0(Spec k)`.
- The coarse map of `[𝔸¹/μ₂]`: flat pullback of `[0]` is `2·[Bμ₂] = 0` in `A_0 = ℤ/2`.

### Dependencies

Layers 1–2; gap:closed-substacks-of-stacks; SchemeAndStackFoundations §§1.20, 5.2, 5.5;
VirtualFundamentalClass §1.5; gap:normal-cones-of-local-immersions; Mathlib
`AlgebraicGeometry.AlgebraicCycle.map`. Within the layer, 3.1 and 3.2 precede 3.3; 3.4 and 3.5 use
3.1–3.3.

## Layer 4: rational intersection theory on stacks

### 4.1 Pushforward along proper morphisms

For `f : ℱ → 𝒢` proper, define *rationalPushforward* `f_* : Z_i(ℱ)_ℚ → Z_i(𝒢)_ℚ` by the formula of 3.2
with Vistoli's rational degree (vistoli1989 (3.6)(iii), lines 985–987). Prove:

- for `f` proper and surjective, `f_*` is surjective on `Z_*(·)_ℚ`, and every cycle of `Z_*(𝒢)_ℚ`
  rationally equivalent to `0` is `f_*` of a cycle rationally equivalent to `0` (vistoli1989 Lemma 3.8,
  lines 1027–1044);
- `f_*` induces `f_* : A_i(ℱ)_ℚ → A_i(𝒢)_ℚ` (vistoli1989 (3.7), lines 989–997 and 1045–1048).

Route: Lemma 3.8 is applied to a proper cover of `ℱ` (1.1), which every stack has. This extends
VirtualFundamentalClass §2.2's proper pushforward from separated stacks to all stacks of
Convention 1. *Needs:* 1.1, 1.3, Layer 3.

**API.**

- For proper `f : ℱ → 𝒢` and `g : 𝒢 → ℋ`, `(g ∘ f)_* = g_* ∘ f_*` on `A_*(·)_ℚ`, and `f_*` is 3.2
  tensored with `ℚ` when `f` is representable.
- For proper `f : ℱ′ → ℱ` and `g : 𝒢′ → 𝒢`, representable or not, `(f × g)_*(α × β) = f_*α × g_*β` on
  `A_*(·)_ℚ`, with the exterior product of 3.4: for integral `𝒱`, `𝒲` with proper coverings `p : Y → 𝒱`,
  `p′ : Y′ → 𝒲`, `[𝒱] × [𝒲] = (deg(Y/𝒱) · deg(Y′/𝒲))^{−1} · (p × p′)_*([Y] × [Y′])` by 3.2 and 3.4 (the
  degrees are positive, `Y → 𝒱` being generically finite), and `f ∘ p`, `g ∘ p′` are proper and
  representable, so 3.4 and functoriality give the formula.
- Push–pull: for a 2-cartesian square with `f` proper and `ψ : 𝒢′ → 𝒢` flat, `ψ^* f_* = f′_* ψ′^*` on
  `A_*(ℱ)_ℚ` (vistoli1989 Lemma 3.9 (ii), lines 1066–1074).
- For integral `𝒱 ⊆ ℱ` and `φ ∈ k(𝒱)^×`, `f_* div(φ) = (e(f(𝒱))/e(𝒱)) · div(N(φ))` when
  `dim f(𝒱) = dim 𝒱` and `0` otherwise, now with a rational factor, as in 3.2.

**Checks.**

- `BG → Spec k` sends `[BG]` to `(1/|G|)·[Spec k]`; composing with `Spec k → BG` gives
  `|G| · (1/|G|) = 1`, as functoriality for the identity requires.
- For the coarse map `p : [𝔸¹/μ₂] → 𝔸¹`, `p_*(2·[Bμ₂]) = 2 · (1/2)·[0] = [0] = div(y)`, so `p_*` carries the
  relation `div(y) = 2·[Bμ₂]` upstairs to the relation `div(y) = [0]` downstairs.
- On the non-separated `L × B(ℤ/2)` (`L` the line with a doubled origin, `ℤ/2` constant), whose proper
  cover `L → L × B(ℤ/2)` is finite étale of degree `2`, the projection to `L` is proper and not representable, and sends
  `[0₁ × B(ℤ/2)]` to `(1/2)·[0₁]`; `A_0(L × B(ℤ/2))_ℚ ≅ ℚ` maps isomorphically onto `A_0(L)_ℚ ≅ ℚ`. This
  stack is outside VirtualFundamentalClass §2.2.

### 4.2 Gysin maps and flat pullback acting on stacks

Let `f : ℱ → 𝒢` be a regular local immersion of codimension `c` of algebraic stacks locally of finite
type over `k`, `𝒢′ → 𝒢` a morphism from a stack `𝒢′`, and `ℱ′ := ℱ ×_𝒢 𝒢′`. Define
*stackGysin* `f^! : A_i(𝒢′)_ℚ → A_{i−c}(ℱ′)_ℚ` by `f^![𝒱] := deg(Y/𝒱)^{−1} · r_*(f^![Y])` for an integral
`𝒱 ⊆ 𝒢′` with a proper covering `Y → 𝒱` (1.1), where `f^![Y]` is 3.5's class on the algebraic space
`ℱ ×_𝒢 Y` (an algebraic space because `f` is representable; it need not be a scheme) and
`r : ℱ ×_𝒢 Y → ℱ′` the induced proper representable morphism, extended linearly (vistoli1989 lines
1603–1620 and 1665–1670; behrend-fantechi1997 lines 1617–1643 for algebraic stacks). Prove that the
definition does not depend on the proper covering and passes to rational equivalence (vistoli1989
Lemma 5.3, lines 1621–1657). This extends the action of VirtualFundamentalClass §2.5's orientation
classes from separated test stacks to all test stacks of Convention 1. *Needs:* 1.1, 1.3, 3.5, 4.1;
VirtualFundamentalClass §§1.5, 2.5; gap:normal-cones-of-local-immersions.

**API.**

- `f^!` commutes with proper pushforward and with pullback along flat representable morphisms
  `𝒢″ → 𝒢′` (vistoli1989 Lemma 5.3, lines 1621–1657); in particular with restriction to open substacks.
- For `𝒢′` an algebraic space, `f^!` is 3.5 tensored with `ℚ`; for two regular local immersions
  `f_1`, `f_2`, `f_1^! f_2^! = f_2^! f_1^!`.
- `f^![𝒢] = [ℱ]` when `𝒢` is a stack, `𝒢′ = 𝒢`, and `𝒢` is equidimensional (vistoli1989 Lemma 5.5, lines
  1671–1704).
- The same construction with flat pullback of 3.1 in place of `f^!` recovers flat pullback, so flat
  pullback and Gysin maps of regular local immersions act compatibly on stacks.

**Checks.**

- For `f = id`, `f^!` is the identity.
- For the étale `π : Spec k → BG`, `π^![BG] = [Spec k]`, the flat pullback; the covering formula with
  `Y = Spec k`, `deg(Y/BG) = |G|` and `f^![Y] = [G]` gives `|G|^{−1}·|G|·[Spec k] = [Spec k]`, not
  `|G|·[Spec k]`.
- For the zero section `s : ℳ → E` of a vector bundle on a stack, `s^![E] = [ℳ]`.
- The fibre product `ℱ ×_𝒢 Y` need not be a scheme: over `ℝ`, the algebraic space `X` obtained from
  `𝔸¹_ℂ` by identifying `z` with `z̄` for `z ≠ 0` is étale over `𝔸¹_ℝ`, so `X → 𝔸¹_ℝ` is a regular local
  immersion of codimension `0`, and its base change along `id : 𝔸¹_ℝ → 𝔸¹_ℝ` is `X`. Its point over the
  origin has residue field `ℂ`, while every function on a neighbourhood of that point pulls back to a
  conjugation-invariant function on the chart `𝔸¹_ℂ` and so takes a real value at the origin; hence no
  affine open contains the point and `X` is not a scheme. 3.5 applies to it, with `f^![𝔸¹_ℝ] = [X]`.

### 4.3 Homotopy invariance and Chern classes

Let `ℳ` be a stack and `π : E → ℳ` a vector bundle of constant rank `r` with zero section
`s`. Prove that `π^* : A_i(ℳ)_ℚ → A_{i+r}(E)_ℚ` is an isomorphism with inverse `s^!` of 4.2. Route:
`s^!π^* = id` by the vector-bundle case of vistoli1989 Lemma 5.5 (lines 1673–1684); surjectivity from a
proper cover `X → ℳ`, the proper cover `E_X := E ×_ℳ X → E`, Lemma 3.8, homotopy invariance on schemes
(SchemeAndStackFoundations §5.2 `chow_affine_bundle`) and push–pull (4.1). For a vector bundle `E` on
`ℳ`, define *stackChernClass* `c_i(E)`, acting on `A_*(𝒢′)_ℚ` for every morphism `𝒢′ → ℳ` from a stack,
by the Chern classes of SchemeAndStackFoundations §5.4 on proper coverings of the integral
substacks of `𝒢′`, as in 4.2 (vistoli1989 lines 96–99 and 1570–1602; fulton1998 Chapter 3). Prove that
the operation is well defined; that `c_0 = 1`, `c_i(E) = 0` for `i > r`, the Whitney formula for short
exact sequences, additivity of `c_1` on tensor products of line bundles, commutation with proper
pushforward (projection formula), flat representable pullback and the Gysin maps of 4.2; and the
self-intersection formula `s^! s_* α = c_r(E) ∩ α` for `α ∈ A_*(ℳ)_ℚ` (fulton1998 Corollary 6.3;
SchemeAndStackFoundations `gysin_self_intersection` through a proper cover). This extends
VirtualFundamentalClass §2.3 from separated stacks to all stacks of Convention 1. *Needs:* 1.1,
4.1–4.2; SchemeAndStackFoundations §§5.2, 5.4–5.5.

**API.**

- For a surjection of vector bundles `q : E′ → E` with `q ∘ s′ = s`, `s′^! ∘ q^* = s^!` on `A_*(E)_ℚ`.
- For a closed subcone `C ⊆ E` of pure dimension `m`, `s^![C] ∈ A_{m−r}(ℳ)_ℚ`, and
  `s^![C ×_ℳ E′′] = s^![C]` after adding a summand `E′′` to `E`.
- Chern classes are unchanged by restriction to open substacks and multiplicative under products.

**Checks.**

- For the trivial line bundle over `BG`, `A_1(𝔸¹ × BG)_ℚ = ℚ·[𝔸¹ × BG]` and `s^![𝔸¹ × BG] = [BG]`.
- Restriction of cycles to the zero section is not the inverse of `π^*`: `s^! s_*[ℳ] = c_r(E) ∩ [ℳ]` lies
  in dimension `dim ℳ − r`; for `E = O(−1)` on `ℙ¹` it is `−[pt]`, while restriction would give `[ℙ¹]`.
- On `BG`, every vector bundle is a representation of `G`, and `c_i ∩ [BG] ∈ A_{−i}(BG)_ℚ = 0` for `i > 0`;
  rational Chern classes of `BG` vanish in positive degree, unlike the torsion equivariant class
  `c_1 = t ∈ A^1_{μ_n} = ℤ/n` of EquivariantIntersectionTheory.
- `c(O^n) = 1`, and for `E = L ⊕ L^∨` on a scheme, `c_1(E) = 0` and `c_2(E) = −c_1(L)²`.

### 4.4 Agreement with the separated theory

Prove that for separated stacks, under 2.3's identification `A_i(ℳ) ⊗ ℚ = A_i(ℳ)_ℚ`, the
rationalisations of flat pullback (3.1), proper representable pushforward (3.2), localisation (3.3),
exterior products (3.4) and refined Gysin maps (3.5), and the operations of 4.1–4.3, are those of
VirtualFundamentalClass §§2.2–2.5. Route: both theories are computed on integral closed substacks by
the same formulas with the same degrees, and both Gysin maps are characterised on equidimensional
sources by the normal-cone formula of vistoli1989 Lemma 3.19 together with compatibility with proper
pushforward. *Needs:* 2.3, Layer 3, 4.1–4.3; VirtualFundamentalClass §§2.1–2.5.

**Checks.**

- The fundamental class of `B(ℤ/2)` pushes forward to `(1/2)·[Spec k]` under both theories, the
  VirtualFundamentalClass §2.1 Check.
- The zero-section self-intersection of `O(1)` on `ℙ¹` is a point class under both theories, the
  Check in the Examples of VirtualFundamentalClass Layer 2.
- `A_0(Spec k)_ℚ = ℚ` in both theories, with `[Spec k] ↦ 1`.

### Examples

- Homotopy invariance on `BG × 𝔸^r`: `A_r(BG × 𝔸^r)_ℚ = ℚ`.
- The localised top Chern class `s^![C]` of a cone `C` in a vector bundle on a stack,
  the operation that defines virtual classes in Layer 6.

### Dependencies

Layers 1–3; SchemeAndStackFoundations §§5.2, 5.4–5.5; VirtualFundamentalClass §§1.5, 2.1–2.5;
gap:normal-cones-of-local-immersions. Within the layer, 4.1 → 4.2 → 4.3 → 4.4.

## Layer 5: intersection rings, moduli spaces, quotients and points

### 5.1 Intersection products on smooth stacks

Let `ℳ` be a stack smooth over `k` of pure dimension `n`. Its diagonal `Δ : ℳ → ℳ × ℳ` is a
regular local immersion of codimension `n` (vistoli1989 lines 506–507). Define *intersectionProduct*
`x · y := Δ^!(x × y) ∈ A_{i+j−n}(ℳ)_ℚ` for `x ∈ A_i(ℳ)_ℚ`, `y ∈ A_j(ℳ)_ℚ`, with the exterior product of 3.4
and the Gysin map of 4.2, and more generally, for `f : ℱ → 𝒢` with `𝒢` smooth of pure dimension `n` and
stacks `ℱ′ → ℱ`, `𝒢′ → 𝒢`, `x ·_f y := γ_f^!(x × y) ∈ A_{i+j−n}(ℱ′ ×_𝒢 𝒢′)_ℚ` with
`γ_f : ℱ → ℱ × 𝒢` the graph (vistoli1989 lines 1705–1718). Prove the formal properties of fulton1998
Proposition 8.1.1, as vistoli1989 lines 1717–1718 asserts for stacks: `A^*(ℳ)_ℚ := ⊕_c A_{n−c}(ℳ)_ℚ` is a
commutative, associative graded `ℚ`-algebra with unit `[ℳ]`; for a flat representable morphism
`g : ℳ′ → ℳ` of smooth stacks, `g^*` is a ring homomorphism; for any morphism
`g : ℳ′ → ℳ` of smooth stacks, with `g^*x := [ℳ′] ·_g x`, the projection formula
`g_*(g^*x · y) = x · g_*y` holds when `g` is proper, with the pushforward of 4.1 (route:
`x · g_*y = Δ^!((id × g)_*(x × y)) = g_*Δ^!(x × y)`, with `Δ^!(x × y)` formed on
`ℳ ×_{ℳ×ℳ} (ℳ × ℳ′) = ℳ′`, by the exterior-product bullet of 4.1 and the commutation of 4.2's Gysin
maps with proper pushforward, and `Δ^!(x × y) = g^*x · y` as in fulton1998 Proposition 8.1.1); and
on smooth schemes the product is SchemeAndStackFoundations §5.6's intersection product tensored with
`ℚ`. For a smooth separated stack
`ℳ` of pure dimension and a representable `t : T → ℳ` with `T` separated (equivalently `t` separated,
as `ℳ` is separated), prove Poincaré duality for the bivariant groups
of VirtualFundamentalClass §2.5: every class of `A^*(T → ℳ)` commutes with all bivariant classes, and
evaluation `α ↦ α[ℳ]` is an isomorphism `A^*(T → ℳ) ≅ A_*(T)_ℚ` (vistoli1989 Proposition 5.6, lines
1719–1750). Separatedness of `T` is forced by the groups used: VirtualFundamentalClass §2.5's
bivariant classes act only after base change to separated test stacks whose pullbacks are separated,
and the evaluation tests on `id_ℳ`, whose pullback is `T`; vistoli1989 Proposition 5.6 has no such
restriction because its bivariant groups are tested on all schemes. This states for all smooth
stacks of Convention 1, with no separatedness, the product that
VirtualFundamentalClass §2.4's Gysin maps define on separated stacks. *Needs:* 3.4, 4.1–4.3;
SchemeAndStackFoundations §5.6; VirtualFundamentalClass §2.5.

**API.**

- `c_1(L) ∩ x = (c_1(L) ∩ [ℳ]) · x` for a line bundle `L` on `ℳ`.
- For a regular local immersion `i : 𝒵 → ℳ` of smooth stacks, `i^! = i^*` is the graph pullback, a ring
  homomorphism.
- The subgroup of `A^*(T → ℳ)` of classes commuting with all bivariant classes (vistoli1989 lines
  1594–1599) is closed under product, proper pushforward and pullback.

**Checks.**

- `A^*(BG)_ℚ = ℚ`, concentrated in degree `0`.
- The projection formula for a proper morphism that is not representable: for `g : BG → Spec k`
  (`G` finite étale, `|G| > 1`), `x = [Spec k]` and `y = [BG]`, `g^*x = [BG]`, and
  `g^*x · y = Δ^![BG × BG] = [BG]` by 4.2, so `g_*(g^*x · y) = (1/|G|)·[Spec k]`, which is
  `x · g_*y = [Spec k] · (1/|G|)·[Spec k]`. A product weighted by the degree
  `deg(BG/BG × BG) = |G|²/|G| = |G|` of the finite étale diagonal, `[BG] · [BG] = |G|·[BG]`, would give
  the left side `[Spec k]` and break the formula.
- On `[ℙ¹/μ₂]` (`x ↦ −x`), with `𝒫 = Bμ₂` the stacky point at `0`, `A^1 = A_0 ⊗ ℚ = ℚ·[𝒫]`,
  `[𝒫] · [𝒫] ∈ A_{−1} = 0` and `[𝒫] · [ℳ] = [𝒫]`; a product that ignored the stabiliser would still give
  these values, so the stabiliser enters only through `∫` (5.4).
- On the line `L` with a doubled origin, `[0₁] · [L] = [0₁]`, the SchemeAndStackFoundations §5.6 Check,
  computed there through the extended Gysin map of the non-closed diagonal.
- `A^*(ℙ^n)_ℚ = ℚ[h]/(h^{n+1})`.
- Poincaré duality needs `T` separated: `t : L → 𝔸¹` from the line with a doubled origin is
  representable and étale, but the pullback of the test morphism `id_{𝔸¹}` along `t` is `L`, which is
  not separated, so the bivariant classes of VirtualFundamentalClass §2.5 do not act on it and
  `α[𝔸¹]` is not defined; for the separated `T = 𝔸¹ ⊔ 𝔸¹ → 𝔸¹` (the two charts), evaluation gives
  `A^*(T → 𝔸¹) ≅ A_*(𝔸¹ ⊔ 𝔸¹)_ℚ`, which is `ℚ²` in dimension `1` and `0` in dimension `0`.

### 5.2 Moduli spaces

Let `ℳ` be a stack and let `p : ℳ → M` be a proper morphism to a quasi-separated algebraic space
of finite type over `k` inducing, for every algebraically closed field `Ω`, a bijection between
isomorphism classes of `ℳ(Spec Ω)` and `M(Spec Ω)`: a *moduliSpace* in the sense of vistoli1989 (2.1)
(lines 542–545), there with `M` a scheme. Prove:

- `𝒱 ↦ p(𝒱)` is a dimension-preserving bijection from integral closed substacks of `ℳ` to integral closed
  subspaces of `M`, with inverse `N ↦ (N ×_M ℳ)_red` (vistoli1989 Lemma 2.3, lines 566–568, and the proof
  of (6.1), lines 1766–1770);
- for integral `𝒱`, `k(p(𝒱)) ⊆ k(𝒱)` is purely inseparable (vistoli1989 Proposition 2.4, lines 571–577),
  so `deg(𝒱/p(𝒱)) = [k(𝒱) : k(p(𝒱))]/e(𝒱)`, which is `1/e(𝒱)` when `k(p(𝒱))` is perfect (vistoli1989
  Corollary 2.5, lines 578–579);
- `p_* : A_i(ℳ)_ℚ → A_i(M)_ℚ` is an isomorphism for every `i`, the right side being 2.3's group of the
  algebraic space (vistoli1989 (6.1)(i), lines 1758–1776);
- a separated stack with its coarse space from `keel_mori` (SchemeAndStackFoundations §1.23;
  keel-mori1997 Corollary 1.3, line 28) satisfies these hypotheses, `M` being a separated algebraic
  space; vistoli1989 lines 546–560 compare moduli spaces with coarse spaces up to universal
  homeomorphism.

*Needs:* 1.1–1.3, 2.3, 4.1; SchemeAndStackFoundations §1.23; gap:closed-substacks-of-stacks.

**API.**

- For a morphism of algebraic spaces `M′ → M`, `M′` is a moduli space for `ℳ ×_M M′` (vistoli1989 Lemma 2.2,
  lines 561–563).
- `ℳ` is irreducible, or connected, exactly when `M` is (vistoli1989 Lemma 2.3, lines 566–568).

**Checks.**

- `BG → Spec k` for a finite étale `G`: `p_*[BG] = (1/|G|)·[Spec k]` and `A_0(BG)_ℚ = ℚ ≅ ℚ`.
- `[𝔸¹/μ₂] → 𝔸¹`: integrally `p_* : ℤ/2 → 0` in degree `0`, and in fact `p_*[Bμ₂] = (1/2)·[0]` is not an
  integral cycle; rationally both sides vanish in degree `0`.
- In characteristic `p`, the `ℤ/p`-quotient of 1.3: `p_*[𝒱] = 1·[p(𝒱)]` although `e(𝒱) = p`; the value
  `1/e(𝒱)` is wrong because `k(p(𝒱)) = k(y^p)` is not perfect.
- In characteristic `0` every `k(p(𝒱))` is perfect, so `deg(𝒱/p(𝒱)) = 1/e(𝒱)` for every `𝒱`.

### 5.3 Products on Deligne–Mumford quotient stacks

Let `G` be a smooth affine group of dimension `g` over `k` acting on a smooth quasi-projective `k`-scheme
`X` of pure dimension `n` with a `G`-linearised ample invertible sheaf (EquivariantIntersectionTheory
Conventions 1 and 5), properly and with finite reduced stabilisers, so that `[X/G]` is a smooth separated
stack of pure dimension `n − g` (edidin-graham1998 lines 758–759). Prove that the isomorphism
`A^G_i(X) ⊗ ℚ ≅ A_{i−g}([X/G])_ℚ` of StableReductionPartII §5.15, read in the codimension grading as
`A^c_G(X) ⊗ ℚ ≅ A^c([X/G])_ℚ`, is an isomorphism of graded rings from the equivariant product of
EquivariantIntersectionTheory §2.2 to the product of 5.1 (edidin-graham1998 Proposition 11, lines
790–798, under its assumption of a quasi-projective moduli scheme, which is not made here). Route: in
codimension below the codimension of `V ∖ U`, the comparison is flat pullback along the smooth
representable morphism `X ×^G U → [X/G]` from the mixed space, a scheme, and both products are computed
there; flat representable pullback between smooth stacks is a ring homomorphism (5.1). The equivariant
groups are integral and the stack groups rational; the integral torsion of the left side is lost.
*Needs:* 5.1; StableReductionPartII §5.15; EquivariantIntersectionTheory §§2.1–2.2.

**Checks.**

- `G` trivial: `A^G_*(X) = A_*(X)`, `[X/G] = X`, and the ring isomorphism is the identity.
- `G = μ_n` (`n` invertible in `k`) acting trivially on `Spec k`: `A^*_{μ_n} = ℤ[t]/(nt)` has `ℤ/n` in every
  positive codimension, and `A^*_{μ_n} ⊗ ℚ = ℚ = A^*(Bμ_n)_ℚ`.
- `G = 𝔾_m` acting on `X = 𝔸² ∖ 0` with weights `(1, 2)` (`char k ≠ 2`): `[X/G] = ℙ(1, 2)`, and
  `A^*_{𝔾_m}(X) = ℤ[t]/(2t²)`, the localisation sequence killing the class `(1·t)(2·t)` of the origin.
  Rationally this is `ℚ[t]/(t²)`, with `t` sent to `c_1(O(1)) ∩ [ℙ(1, 2)] = [Bμ₂]`, the zero locus of the
  weight-one coordinate, and `t · t = 0` in `A^2(ℙ(1, 2))_ℚ = 0`.
- `𝔾_m` acting on `𝔸¹` with weight `1` is excluded: the stabiliser at `0` is `𝔾_m`, and `[𝔸¹/𝔾_m]` is not
  Deligne–Mumford.

### 5.4 Degrees of points

Let `ℳ` be proper over `k`, hence separated. The degree `∫_ℳ : A_0(ℳ)_ℚ → ℚ` is VirtualFundamentalClass
§2.1's degree of proper zero-cycles, which under 2.3 and 4.4 is the pushforward of 4.1 along
`ℳ → Spec k` followed by `A_0(Spec k)_ℚ = ℚ`; it is not defined again here. What this section adds is
the closed formula for the degree of a closed point over an arbitrary field, with the residue degree
`[κ(x) : k]` beside the stabiliser order, its agreement with the degree of zero-cycles on proper
algebraic spaces, and its computation on a moduli space. For a closed point `x ∈ |ℳ|` let `𝒢_x` be the
integral closed substack with `|𝒢_x| = {x}` (gap:closed-substacks-of-stacks), `κ(x) := k(𝒢_x)` its
function field, and `Aut(x̄)` the automorphism group of a geometric point over `x`, so that
`e(𝒢_x) = |Aut(x̄)|`. Prove:

- `κ(x)` is finite over `k` and `∫_ℳ [𝒢_x] = [κ(x) : k]/|Aut(x̄)|` (vistoli1989 Proposition 1.17, lines
  426–452, applied to `𝒢_x → Spec k`, and lines 372–376);
- on proper schemes and proper algebraic spaces `∫` is the degree of zero-cycles
  (SchemeAndStackFoundations §5.2; stacks-chow-spaces Definition 32.1, line 2224);
- `∫_ℳ = ∫_M ∘ p_*` for a moduli space `p : ℳ → M` as in 5.2, `M` being then proper over `k`;
  consequently the virtual degree of VirtualFundamentalClass §7.7 is `∫_M p_*[X, φ]^vir`, computed on
  a moduli space.

*Needs:* 1.2–1.3, 2.3, 4.1, 4.4, 5.2; gap:closed-substacks-of-stacks; SchemeAndStackFoundations §§1.20,
5.2; VirtualFundamentalClass §§2.1–2.2, 7.7.

**API.**

- `∫_ℳ` is `ℚ`-linear, additive over disjoint unions, and zero on the empty stack.
- `∫_𝒩 ∘ f_* = ∫_ℳ` for a morphism `f : ℳ → 𝒩` of proper stacks, by functoriality of
  VirtualFundamentalClass §2.2's pushforward (vistoli1989 (3.6)–(3.7), lines 974–997); for a proper
  representable `f` it already holds on the integral groups of 3.2.

**Checks.**

- `∫_{BG}[BG] = 1/|G|` for a finite étale `G`.
- `ℳ = Spec K` for a finite extension `K/k`: `∫[Spec K] = [K : k]`, including `p` for `K = k(a^{1/p})`.
- For the gerbe `𝒢 = [Spec ℂ/(ℤ/4)]` over `ℝ` of 1.2, which has no real point (the extension
  `0 → ℤ/2 → ℤ/4 → Gal(ℂ/ℝ) → 0` does not split), `∫[𝒢] = [ℝ : ℝ]/2 = 1/2`, and directly
  `deg(Spec ℂ/Spec ℝ)/deg(Spec ℂ/𝒢) = 2/4 = 1/2`. Dividing by the order of the acting group gives `1/4`.
- On `[ℙ¹/μ₂]` (`x ↦ −x`, coordinate `t = x/y`), `div(t²/(t² − 1)) = 2·[𝒫] − [𝒪]` with `𝒪 = {±1}` the free
  orbit (order `2` at `0`, `−1` at `±1` and `0` at `∞` on the atlas), and `∫(2·[𝒫]) = 2 · (1/2) = 1 = ∫[𝒪]`,
  as vanishing on rational equivalences requires; the two stacky points `0` and `∞` each have degree
  `1/2`.

### Examples

- `ℙ(1, 2)`: `A^*_ℚ = ℚ[t]/(t²)` with `∫ t = 1/2` and `∫ 2t = 1`, the latter the class of the point with
  trivial stabiliser cut out by the weight-two coordinate.
- The degree map `∫ : A_0([ℙ¹/μ₂])_ℚ → ℚ` is an isomorphism, matching `A_0(ℙ¹)_ℚ = ℚ` under 5.2.

### Dependencies

Layers 1–4; gap:closed-substacks-of-stacks; SchemeAndStackFoundations §§1.20, 1.23, 5.2, 5.6;
EquivariantIntersectionTheory §§2.1–2.2; StableReductionPartII §5.15; VirtualFundamentalClass
§§2.1–2.2, 2.5, 7.7. Within the layer, 5.1 precedes 5.3, and 5.2 precedes 5.4.

## Layer 6: virtual classes without the resolution property

The relative setting of Convention 7 is in force: `𝔜` of pure dimension `d`, `X → 𝔜` of
Deligne–Mumford type, `X` a stack that need not be separated, and `φ : E → L_{X/𝔜}` a perfect relative obstruction
theory of constant rank `r` (VirtualFundamentalClass §§6.4, 9.2) with `𝔈 := h¹/h⁰(E^∨)` and the
relative intrinsic normal cone `𝔠_{X/𝔜} ⊆ 𝔈` of pure dimension `d` (VirtualFundamentalClass §9.1).

### 6.1 The comparison bundle of two global resolutions

Let `F•` and `H•` be global resolutions of `E`, with the presentations `F_1 → 𝔈` and `H_1 → 𝔈` of
VirtualFundamentalClass §4.5, an `F_0`-torsor and an `H_0`-torsor. Define *resolutionComparison*
`P := F_1 ×_𝔈 H_1`. Prove that `P` is represented by a vector bundle on `X` of rank
`rk F_1 + rk H_0 = rk H_1 + rk F_0`, that the projections `α : P → F_1` and `α′ : P → H_1` are surjective
morphisms of vector bundles with kernels `H_0` and `F_0`, hence smooth, and that `P` is the extension
`0 → H_0 → P → F_1 → 0` of sheaves of `O_X`-modules obtained by pulling the `H_0`-torsor `H_1 → 𝔈` back
along `F_1 → 𝔈`, split on every affine étale chart. Route: `𝔈` is a strictly commutative Picard stack
and the presentations are additive (VirtualFundamentalClass §§4.3–4.5), so the 2-fibre product is a
sheaf of `O`-modules; an extension of a finite locally free module by a quasi-coherent one splits on
affine schemes because quasi-coherent sheaves have no higher fppf cohomology there
(SchemeAndStackFoundations §§2.6, 2.10). No morphism of complexes between `F•` and `H•` is used:
behrend-fantechi1997 Proposition 5.3 (lines 1299–1320) assumes, at lines 1303–1305, that both
resolutions map to `E` by morphisms of complexes, which an isomorphism in the derived category need not
provide. *Needs:* VirtualFundamentalClass §§3.2, 4.3–4.5, 6.5; SchemeAndStackFoundations §§2.6, 2.10.

**API.**

- `C(F•) ×_{F_1} P = 𝔠_{X/𝔜} ×_𝔈 P = C(H•) ×_{H_1} P` as closed subcones of `P`.
- The construction is compatible with pullback along morphisms `X′ → X` and with direct sums of
  resolutions.

**Checks.**

- The two resolutions `F• = [0 → 0]` and `H• = [O --id--> O]` of `E = 0`: `𝔈 = X`, `P = X ×_X 𝔸¹_X = 𝔸¹_X`
  of rank `1 = 0 + 1 = 1 + 0`, `α` has kernel `H_0 = 𝔸¹_X`, and `α′ = id` has kernel `F_0 = 0`.
- On `ℙ¹` over `k`, `E = [O(−4) --0--> Ω_{ℙ¹}]` with the projection to `Ω_{ℙ¹}` is a perfect obstruction
  theory. `Hom(E, E) = k ⊕ k ⊕ Ext¹(Ω_{ℙ¹}, O(−4))` with `Ext¹(Ω_{ℙ¹}, O(−4)) = H¹(ℙ¹, O(−2)) ≅ k`, while
  morphisms of complexes `E → E` are pairs of scalars and homotopies lie in `H⁰(ℙ¹, O(−2)) = 0`; for
  `0 ≠ ξ` in the `Ext¹`, the automorphism `1 + ξ` of `(E, φ)` is represented by no morphism of complexes.
  With `F• = H• = E` identified by `id` and `1 + ξ`, `P` is the total space of the nonsplit extension of
  `O(4)` by `O(2)`, which is `O(3) ⊕ O(3)`, not `O(4) ⊕ O(2)`: the extension is not split globally.
- For `H• = F• ⊕ [G --id--> G]`, `P ≅ F_1 ⊕ G_1 ⊕ F_0` with `G_1` the bundle of `G^∨`, of rank
  `rk F_1 + rk H_0`, `H_0 = F_0 ⊕ G_1`.

### 6.2 The virtual class on stacks that need not be separated

Define *virtualClass* `[X/𝔜, E]^vir := 0^!_{F_1}[C(F•)] ∈ A_{d+r}(X)_ℚ` for a global resolution `F•`, with
`C(F•) := 𝔠_{X/𝔜} ×_𝔈 F_1` a closed subcone of `F_1`, of pure dimension `d + rk F_0` over each open and
closed substack of `X` on which `rk F_0` is constant, and `0^!` the
zero-section Gysin map of 4.3 (behrend-fantechi1997 Definition 5.2, lines 1282–1298, and lines
1664–1667). Prove that it does not depend on `F•`: for a second resolution `H•` and `P` of 6.1,
`0^!_{F_1} = 0^!_P ∘ α^*` and `0^!_{H_1} = 0^!_P ∘ α′^*` (4.3), and both pullbacks of the cones are the same
cone in `P`. Prove that it depends only on the isomorphism class of `(E, φ)` and is invariant under
equivalence of `X` over `𝔜`; that for `𝔜 = Spec k` it is the absolute class; and that when `X` is separated
with the resolution property it is the class of VirtualFundamentalClass §§7.4 and 9.2 under 4.4. This
removes the resolution property from VirtualFundamentalClass §7.3, and removes separatedness: every
stack has a proper cover (1.1), the condition behrend-fantechi1997 allows in place of separatedness
(lines 1261–1262). *Needs:* 4.3–4.4, 6.1; VirtualFundamentalClass
§§7.1–7.4, 9.1–9.2.

**API.**

- Evaluation of the class on any supplied global resolution, as the definition, so that downstream
  computations choose the resolution.
- Transport along equivalences of `X` over `𝔜` and along isomorphisms of `(E, φ)`.
- For a closed immersion `X → X̃` over `𝔜`, the pushforward of the class lies in `A_{d+r}(X̃)_ℚ`, and for an open
  substack `𝒰 ⊆ X` the class restricts to the class of `(𝒰, E|_𝒰)`.

**Checks.**

- `X` smooth over `𝔜` with `E = Ω_{X/𝔜}` and `F• = [0 → Ω_{X/𝔜}]`: `F_1 = X`, `𝔠_{X/𝔜} = 𝔈 = B T_{X/𝔜}`,
  `C(F•) = X`, and the class is `[X]`, of dimension `d + rk Ω_{X/𝔜}`.
- `X = ℙ¹` over `Spec k` with `E = [O(1) --0--> Ω_{ℙ¹}]`: `F_1` is the total space of `O(−1)`, `C(F•)` its zero
  section, and the class is `c_1(O(−1)) ∩ [ℙ¹]`, of degree `−1`; the dual convention, `F_1` the total space
  of `O(1)`, gives `+1`.
- For the theory of 6.1 on `ℙ¹`, `0^!_{F_1}[C(F•)] = c_1(O(4)) ∩ [ℙ¹]`, of degree `4`; through `P`, the cone is
  the subbundle `O(2) ⊆ O(3) ⊕ O(3)` and `0^!_P` of it is `c_1(O(3)^{⊕2}/O(2)) ∩ [ℙ¹] = c_1(O(4)) ∩ [ℙ¹]`,
  again of degree `4`.
- On the non-separated line `L` with a doubled origin, let `𝓛_n` be the line bundle glued by `t^n` on the
  overlap. `E = [𝓛_n^∨ --0--> Ω_L]` is a perfect obstruction theory of rank `0` with `Ob = 𝓛_n`, and
  `[L, E]^vir = c_1(𝓛_n) ∩ [L] = n·[0₂]`, nonzero in `A_0(L)_ℚ = ℚ` for `n ≠ 0`; VirtualFundamentalClass,
  whose stacks are separated, has no such class.
- If `d + r < 0` the class is `0`, since `A_{d+r}(X) = 0`.

### 6.3 Relative formulas over a base of pure dimension

Assume moreover that `H⁰(E)` is locally free. Prove: if `H^{−1}(E) = 0`, then `X → 𝔜` is smooth and
`[X/𝔜, E]^vir = [X]`; if `X → 𝔜` is smooth, then `Ob = H¹(E^∨)` is locally free, and with `s := rk Ob`, a
locally constant function on `X`,

    [X/𝔜, E]^vir = Σ_s c_s(Ob|_{X_s}) ∩ [X_s]

over the open and closed substacks `X_s ⊆ X` on which `Ob` has rank `s`; when `X` has pure dimension,
`s = dim X − d − r` is constant and the class is `c_s(Ob) ∩ [X]` (behrend-fantechi1997 Proposition 7.3,
lines 1702–1711, whose exponent is the rank of `h¹(E^∨)`, line 1710, in the setting of lines
1645–1651, whose base is of pure dimension; Propositions 5.5–5.6, lines 1353–1365, for the absolute
case). Route: in the first case `L_{X/𝔜}` has `H^{−1} = 0` and `H⁰`
locally free, so `X → 𝔜` is smooth, `𝔠_{X/𝔜} = 𝔈 = B T_{X/𝔜}` and `C(F•) = F_1`; in the second,
`𝔠_{X/𝔜} = B T_{X/𝔜}`, `C(F•)` is the subbundle `im(F_0 → F_1)` with quotient `Ob`, and
`0^!_{F_1}[K] = c_s(F_1/K) ∩ [X]` for a subbundle `K` of corank `s` (4.3), applied on each `X_s`. Neither
uses smoothness of `𝔜`. This extends VirtualFundamentalClass §9.4's formulas from smooth bases to bases
of pure dimension and to stacks that need not be separated. *Needs:* 4.3, 6.2; VirtualFundamentalClass §§3.3, 9.1.

**Checks.**

- Over the non-reduced `𝔜 = Spec k[ε]/(ε²)` (pure dimension `0`), `X = 𝔜` with `E = 0`: the first formula
  gives `[𝔜] = 2·[pt]`, the class with multiplicity; a base-smoothness hypothesis would exclude it.
- Over the node `𝔜 = Spec k[a, b]/(ab)` (reduced, pure dimension `1`), `X = 𝔜 × ℙ¹` with
  `E = [O(1) --0--> Ω_{X/𝔜}]` (with `O(1)` pulled back from `ℙ¹`): `Ob = O(−1)`, `s = 1`, and the class is
  `−[𝔜 × pt]`, which pushes forward to `−([ℓ_a] + [ℓ_b])` on `𝔜`, `ℓ_a`, `ℓ_b` the two branches.
- `Spec k → B𝔾_m` with `E = Ω_{pt/B𝔾_m}`: smooth of relative dimension `1`, `H^{−1}(E) = 0`, and the class
  is `[pt] ∈ A_0`, of dimension `−1 + 1 = 0`.
- Smoothness of `X → 𝔜` is needed in the second formula even when `H⁰(E)` and `Ob` are locally free: in
  characteristic `p`, for `X = Spec A`, `A = k[x]/(x^p)`, over `Spec k` and `E = L_X = [A --0--> A dx]`
  (`d(x^p) = 0`), `H⁰(E) = A dx` and `Ob = A` are free, `s = rk Ob = 1` while `dim X − d − r = 0`, and the
  class is `[X] = p·[pt]` (VirtualFundamentalClass §7.6), not `c_1(Ob) ∩ [X] = 0`.
- The exponent is the rank of `Ob`, not `dim X − d − r`, when `X` is not of pure dimension: for
  `X = pt ⊔ 𝔸¹` over `Spec k` with `E = 0` on `pt` and `E = [O --0--> Ω_{𝔸¹}]` on `𝔸¹` (rank `0` on both),
  `Ob` is `0` on `pt` and `O` on `𝔸¹`, so `s = 0` on `pt` and `s = 1` on `𝔸¹`, and the class is
  `c_0(0) ∩ [pt] + c_1(O) ∩ [𝔸¹] = [pt]`, as the first formula gives on `pt`; the single exponent
  `dim X − d − r = 1` would give `c_1(Ob) ∩ [X] = 0`.

### Examples

- Zero loci of sections of vector bundles on smooth stacks, with
  `E = [V^∨|_X → Ω_W|_X]`: the class pushes forward to `c_r(V) ∩ [W]`.
- The two resolutions of 6.1 on `ℙ¹`, which give the same class through `P`.

### Dependencies

Layer 4 for the Chow operations; VirtualFundamentalClass §§3.2–3.3, 4.3–4.5, 6.4–6.5, 7.1–7.4,
9.1–9.2; SchemeAndStackFoundations §§2.6, 2.10. Within the layer, 6.1 → 6.2 → 6.3.

## Layer 7: relative obstruction classes and characterisations

In this layer `f : X → 𝔜` is a morphism of Deligne–Mumford type from a Deligne–Mumford stack locally of
finite type over `k` to an algebraic stack locally of finite type over `k`; no dimension, cover or
separatedness hypothesis is needed.

### 7.1 The relative obstruction class

A square-zero extension over `𝔜` is a closed immersion `T → T̄` of schemes with ideal `J`, `J² = 0`, with a
morphism `T̄ → 𝔜`. For `g : T → X` with a 2-isomorphism `f ∘ g ≅ (T → T̄ → 𝔜)`, an extension is
`ḡ : T̄ → X` with 2-isomorphisms `ḡ|_T ≅ g` and `f ∘ ḡ ≅ (T̄ → 𝔜)` compatible with the given one. Define
*relativeObstructionClass* `ω(g) ∈ Ext¹(g^*L_{X/𝔜}, J)` as the composite
`g^*L_{X/𝔜} → L_{T/𝔜} → L_{T/T̄} → τ^{≥−1}L_{T/T̄} = J[1]` of the functoriality and transitivity maps of
VirtualFundamentalClass §3.3 with DerivedModuleAlgebra §0.7 (behrend-fantechi1997 lines 1067–1078, with
`L_{X/𝔜}` in place of `L_X`). Prove that extensions have no nontrivial automorphisms, because `f` is of
Deligne–Mumford type, so they form a sheaf `Ext(g, T̄)` on `T_ét`; that `g` extends if and only if
`ω(g) = 0`; and that the extensions then form a torsor under `Hom(g^*Ω_{X/𝔜}, J)`. Route: for affine `T̄`
factoring through a smooth atlas `V → 𝔜`, DerivedModuleAlgebra §0.25 on affine charts of `X ×_𝔜 V`, with
`L_{X×_𝔜V/V} = L_{X/𝔜}|` by flat base change (VirtualFundamentalClass §3.3); in general, `T̄ ×_𝔜 V → T̄`
has sections étale locally, and the local obstructions and torsors glue to the class `ω(g)` through its
image in `H⁰(T, ℰxt¹(g^*L_{X/𝔜}, J))` and the class in `H¹(T, ℋom(g^*Ω_{X/𝔜}, J))` of the torsor of local
lifts. This is the relative form of VirtualFundamentalClass §3.5. *Needs:* VirtualFundamentalClass
§§3.1, 3.3, 3.5; DerivedModuleAlgebra §§0.7, 0.25; SchemeAndStackFoundations §4.1.

**API.**

- `ω(g)` is functorial for morphisms of square-zero extensions over `𝔜` and for étale localisation on `T`.
- For `𝔜 = Spec k` it is the absolute obstruction class of VirtualFundamentalClass §3.5.

**Checks.**

- `X → 𝔜` smooth and `T` affine: `ω(g) ∈ Ext¹(g^*Ω_{X/𝔜}, J) = 0`, and extensions exist and form a torsor
  under `Hom(g^*Ω_{X/𝔜}, J)` (SchemeAndStackFoundations §4.1).
- `X → 𝔜` étale: `L_{X/𝔜} = 0`, so extensions exist and are unique.
- `Spec k → B𝔾_m`: for `T` affine, an extension is a trivialisation of the line bundle on `T̄` extending
  the given one on `T`; these exist and form a torsor under `ker(O_{T̄}^× → O_T^×) = 1 + J ≅ J`, which is
  `Hom(g^*Ω_{pt/B𝔾_m}, J)` with `Ω_{pt/B𝔾_m} = O`. A relative obstruction class computed with `L_X` in
  place of `L_{X/𝔜}` would give the zero group, since `Ω_{pt/k} = 0`.
- For `X = Spec k[x]/(x²)` over `𝔜 = Spec k`, `T = Spec k[ε]/(ε²) → T̄ = Spec k[ε]/(ε³)` and `g : x ↦ ε`, every
  candidate `x ↦ ε + aε²` has square `ε² ≠ 0`, so no extension exists and `ω(g) ≠ 0`, in every
  characteristic.

### 7.2 Relative characterisations of obstruction theories

Let `E` satisfy the condition of VirtualFundamentalClass §4.4 and `φ : E → L_{X/𝔜}`. Prove that the
following are equivalent (behrend-fantechi1997 Theorem 4.5, lines 1162–1171, and its relative form,
lines 1657–1663):

1. `H⁰(φ)` is an isomorphism and `H^{−1}(φ)` is surjective;
2. `φ^∨ : 𝔑_{X/𝔜} → h¹/h⁰(E^∨)` is a closed immersion of cone stacks;
3. for every square-zero extension `T → T̄` over `𝔜` with ideal `J` and every `g : T → X` over `𝔜`, the image
   `φ^*ω(g) ∈ Ext¹(g^*E, J)` of 7.1's class vanishes exactly when `g` extends to `T̄` over `𝔜`, and the
   extensions then form a torsor under `Hom(g^*H⁰(E), J)`.

Condition 3 for affine `T̄` alone already implies condition 1, so the three conditions are also
equivalent to condition 3 restricted to affine `T̄`, which is the form 9.3 verifies. Route: (1) ⇔ (2)
by VirtualFundamentalClass §4.5 applied to `L_{X/𝔜}`; (1) ⇒ (3) for every `T̄` because the cone `C` of
`φ` has `Hⁱ(C) = 0` for `i ≥ −1`, so that `Ext¹(g^*C, J) = Hom(g^*C, J) = 0` and `φ^*` is injective on
`Ext¹` and bijective on `Hom`; (3) for affine `T̄` ⇒ (1) by the trivial square-zero extensions
`Spec(A ⊕ M)` of affine `T = Spec A` over `𝔜` for `H⁰`, and for `H^{−1}` by the affine extension `T̄` of
an affine chart of `X` inside an affine scheme smooth over an affine atlas of `𝔜`
(behrend-fantechi1997 lines 1172–1201, which use only these affine extensions; its Proposition 6.2,
lines 1605–1614, likewise checks condition 3 on affine `T`). This extends VirtualFundamentalClass
§§6.1 and 6.3 from `𝔜 = Spec k` to an algebraic stack `𝔜`. *Needs:* 7.1; VirtualFundamentalClass
§§4.4–4.5, 5.1, 9.1.

**Checks.**

- Surjectivity of `H^{−1}(φ)` is needed. Let `char k = 2` and `X = Spec A`, `A = k[x]/(x²)`, over
  `𝔜 = Spec k`, so that `L_X = [A --0--> A dx]`. For `E = L_X` and `φ = (0, id)`, `H⁰(φ)` is an
  isomorphism and `H^{−1}(φ) = 0` is not surjective; condition 3 fails for `T = X`,
  `T̄ = Spec k[x]/(x³)`, `J = (x²)/(x³)` and `g = id`, since `φ^*ω(g) = 0` while `(x + ax²)² = x² ≠ 0` in
  `k[x]/(x³)` for every `a`.
- For `X` smooth over `𝔜`, `φ = id : Ω_{X/𝔜} → L_{X/𝔜}` satisfies all three, with `𝔑_{X/𝔜} = B T_{X/𝔜}`.
- An obstruction theory need not be an isomorphism: for `X = ℙ¹` over `Spec k`, `E = [O(1) --0--> Ω_{ℙ¹}]`
  satisfies 1 with `H^{−1}(E) = O(1) ≠ 0 = H^{−1}(L_{ℙ¹})`, and `φ^∨` is the zero section of
  `C(O(1)) × B T_{ℙ¹}`, a closed immersion that is not an isomorphism.
- `Spec k → B𝔾_m` with `E = Ω_{pt/B𝔾_m} = O` and `φ = id`: condition 3 is the torsor of 7.1's third Check.

### Examples

- The relative theory `j^*L_{V/W} → L_{X/Y}` of a cartesian square of smooth stacks
  (VirtualFundamentalClass §9.6), checked through 7.2's condition 3.
- Spaces of maps from curves (Layer 9), whose obstruction theory is verified through condition 3.

### Dependencies

VirtualFundamentalClass §§3.1, 3.3, 3.5, 4.4–4.5, 5.1, 9.1; DerivedModuleAlgebra §§0.7, 0.25;
SchemeAndStackFoundations §4.1. Within the layer, 7.1 → 7.2.

## Layer 8: base change and deformation invariance over bases of pure dimension

### 8.1 The canonical rational equivalence along relative tangent directions

Let `Y` be an algebraic stack locally of finite type over `k`, neither reducedness nor pure dimension
being assumed (cycles and rational equivalences on `Y` and its cones formed on smooth charts and
descended, kresch1999b lines 192–204 and Remark 2.5, lines 250–256), `i : X → Y` a local immersion,
`v : Y′ → Y` a regular local immersion with normal bundle `N`, `X′ := X ×_Y Y′` with `j : X′ → Y′`,
`u : X′ → X`, and `C := C_{X/Y}`. Prove:

- the canonical rational equivalence `β(Y′, X) ∈ W_*(N ×_Y C)`, on `N ×_Y C = j^*N ×_{X′} u^*C`, with
  `∂β(Y′, X) = [C_{u^*C/C}] − [j^*N ×_{X′} C_{X′/Y′}]`, is defined for this ambient. Here `C_{u^*C/C}` is
  the normal cone of `u^*C = C ×_X X′` in `C`; `C_{X′/Y′}` is a closed subcone of `u^*C`, because étale
  locally the ideal of `X′` in `Y′` is the image of the ideal of `X` in `Y`; and `j^*N ×_{X′} C_{X′/Y′}`
  is the normal cone of `j^*N` in `N`, as `N → Y′` is flat. `β(Y′, X)` is `−ω` for the rational
  equivalence `ω` built in the proof of kresch1999b Proposition 2.3 (statement lines 242–243,
  construction lines 259–304, with the boundary of the opposite sign at line 304) from the double
  deformation space `M°_X Y ×_Y M°_{Y′}Y → ℙ¹ × ℙ¹` and the intersection of its two `P`-divisors:
  kresch1999b Corollary 1.10 (lines 182–190), stated for a variety, is applied to each irreducible
  component of the double deformation space that dominates `ℙ¹ × ℙ¹`, with its reduced structure, and
  the results are summed with the multiplicities of these components, so that no reducedness of `Y` is
  used and its multiplicities enter `β`; on a smooth ambient it is the rational equivalence to which
  VirtualFundamentalClass §2.5 applies kresch1999b Theorem 3.1 (lines 334–336 name the rational
  equivalence of this proof),
  and on a reduced equidimensional scheme vistoli1989 Lemmas 3.16 and 4.6 (lines 1172–1174 and
  1451–1470) give one with the same boundary by normalising a blow-up;
- `β(Y′, X)` commutes with smooth base change `Y_1 → Y` (kresch1999b Proposition 2.1, lines 205–207, and
  lines 202–204: the formation of the rational equivalence commutes with smooth pullback) and with
  smooth factorisations `X → Ỹ → Y`, `Ỹ → Y` smooth of Deligne–Mumford type: under the
  `T_{Ỹ/Y}`-bundle `α : C_{X/Ỹ} → C`, `α^*β(Y′, X) = β(Ỹ ×_Y Y′, X)` (behrend-fantechi1997 Proposition 3.4,
  lines 884–888, for Vistoli's construction on a smooth `Y`);
- *relative invariance*: if `p : Y → 𝔅` is smooth of Deligne–Mumford type to an algebraic stack locally
  of finite type over `k` and `Y′ = Y ×_𝔅 𝔅′` for a regular local immersion `𝔅′ → 𝔅`, then `β(Y′, X)` is
  invariant under the action of `T_{Y/𝔅}|_{X′}` on `N ×_Y C` through the `T_{Y/𝔅}`-action on `C`
  (VirtualFundamentalClass §§1.6, 9.1), and so descends to `j^*N ×_{X′} u^*[C/T_{Y/𝔅}|_X]`;
- for a regular local immersion `Y′ → Y` of stacks smooth of Deligne–Mumford type over an algebraic
  stack `𝔐` locally of finite type over `k`, `β(Y′, X)` is invariant under `T_{Y′/𝔐}|_{X′}`, acting
  through `T_{Y′/𝔐} → T_{Y/𝔐}|_{Y′}`.

Route: compatibility with smooth factorisations follows from compatibility with smooth base change,
because the double deformation space of `(X → Ỹ, Ỹ ×_Y Y′ → Ỹ)` is the base change of that of
`(X → Y, Y′ → Y)` along `M°_X Ỹ → M°_X Y`, which is smooth (étale locally `Ỹ = Y × 𝔸^n` with `X` inside
`Y × 0`, where `M°_X Ỹ = M°_X Y × 𝔸^n`), compatibly with both `P`-divisors. For the third
statement, the two projections `p_1, p_2 : Y ×_𝔅 Y → Y` are smooth of Deligne–Mumford type and pull `Y′`
back to the same closed substack `(Y ×_𝔅 Y) ×_𝔅 𝔅′`, because `Y′` comes from `𝔅`; compatibility with smooth factorisations, applied to `(i, i) : X → Y ×_𝔅 Y` (a local immersion, as the relative diagonal of
`p` is unramified) through `p_1` and through `p_2`, gives `p_1^*β = p_2^*β`, and under
`C_{X/Y×_𝔅Y} = i^*T_{Y/𝔅} ×_X C` these two pullbacks are the projection and the action
(behrend-fantechi1997 lines 781–809 and the proof of Proposition 3.5, lines 894–897, whose two inverse
images of `Y′` in `Y × Y` differ). For the fourth statement, generators `f_1, …, f_c` of the ideal of `Y′`
étale locally have differentials independent in `Ω_{Y/𝔐}` along `Y′`, so `(f_1, …, f_c) : Y → 𝔸^c × 𝔐` is
smooth along `Y′`, `Y′` is pulled back from `{0} × 𝔐`, and the third statement applies over
`𝔅 = 𝔸^c × 𝔐` with `T_{Y/𝔅}|_{Y′} = T_{Y′/𝔐}`. For `𝔐 = Spec k` this is kresch1999b Theorem 3.1 (lines
334–343), owned by VirtualFundamentalClass §2.5, whose statement prints the acting bundle as `T_{Y′}` in
its own notation while its proof (lines 390–405) translates along the regularly embedded smooth stack.
No step uses reducedness or pure dimension of `Y`, `𝔅` or `𝔐`. This extends VirtualFundamentalClass
§2.5's invariance from smooth ambients over `k` to relative tangent directions, on ambients that need
be neither smooth nor reduced. *Needs:* VirtualFundamentalClass §§1.5–1.6, 2.5, 9.1;
gap:normal-cones-of-local-immersions; Layer 2; SchemeAndStackFoundations §5.5.

**Checks.**

- The plane example of VirtualFundamentalClass §2.5: `Y = 𝔸²`, `X` the origin, `Y′ = {y = 0}`, `N ×_Y C = 𝔸³`
  with coordinates `ν` on `N` and `ξ, η` on `C = T_0𝔸²`, `∂β = [ν = 0] − [η = 0]` and `β = c·ν/η`. Over
  `𝔅 = 𝔸¹` through `p = y`, `Y′ = p^{−1}(0)`, `T_{Y/𝔅}` is the `x`-direction acting by `ξ ↦ ξ + a`, which fixes
  `c·ν/η`. Through `p = x`, `Y′` is not pulled back from `𝔅`, `T_{Y/𝔅}` is the `y`-direction acting by
  `η ↦ η + b`, and `c·ν/(η + b) ≠ c·ν/η`.
- A singular base: for the node `𝔐 = Spec k[a, b]/(ab)`, `W = 𝔐 × 𝔸¹` and the regular local
  immersion `𝔐′ = V(a + b) → 𝔐` (`a + b` is a nonzerodivisor, `𝔐′ = Spec k[a]/(a²)`), `W` is not smooth over
  `k` while `T_{W/𝔐} = O_W`; both projections of `W ×_𝔐 W = 𝔐 × 𝔸²` pull `W′ = 𝔐′ × 𝔸¹` back to `𝔐′ × 𝔸²`, so
  the relative invariance applies to `W′ ⊆ W`.
- A non-reduced ambient keeps its multiplicities: for `Y = 𝔸¹ × Spec k[ε]/(ε²)` (coordinate `t`), `X` the
  origin and `Y′ = {t = 0} = Spec k[ε]/(ε²)` (`t` is a nonzerodivisor), `I = (t, ε)` has `I^n/I^{n+1}`
  spanned by `t^n, t^{n−1}ε`, so `C = Spec k[T, E]/(E²)` with `[C] = 2·[T-line]`; `X′ = X`, `N` is the trivial
  line with coordinate `ν`, `C_{u^*C/C} = {ν = 0} × C` and `j^*N ×_{X′} C_{X′/Y′} = 𝔸¹_ν × Spec k[E]/(E²)`, so
  `∂β = 2·[ν = 0] − 2·[T = 0]` on the plane `(N ×_Y C)_red = 𝔸²_{ν,T}` and `β = 2·(ν/T)`, twice the
  rational equivalence `ν/T` of `Y_red = 𝔸¹`. A construction that only sees `Y_red`, as the
  normalisation of a blow-up does, gives `[ν = 0] − [T = 0]`, which is not the boundary required for `Y`.
- Degenerate cases: for `p` étale, `T_{Y/𝔅} = 0` and the statement is empty; for `𝔅′ = 𝔅`, `Y′ = Y`, the
  ideal of `Y′` is zero and `β = 0`.

### 8.2 Regular-immersion pullback over a base of pure dimension

Let `v : 𝔜′ → 𝔜` be a regular local immersion of codimension `c` of algebraic stacks of pure dimensions
`d` and `d − c`, and `X′ := X ×_𝔜 𝔜′` with `u : X′ → X`, a stack in the sense of Convention 1 because `u`
is a representable local immersion. No reducedness of `𝔜` is assumed. Prove that `u^*E` is a perfect
relative obstruction theory for `X′/𝔜′` with a global resolution (VirtualFundamentalClass §6.4) and
that `v^![X/𝔜, E]^vir = [X′/𝔜′, u^*E]^vir` in `A_{d−c+r}(X′)_ℚ`, with `v^!` the Gysin map of 4.2 (behrend-fantechi1997 Proposition 7.2 (2), lines
1682–1699, stated for smooth bases at lines 1668–1670). Route: take a relative local embedding of `X`
(Convention 2 and VirtualFundamentalClass §9.1), that is, an étale morphism `U → X` from an affine scheme
and a closed immersion `U → W` over `𝔜` into a scheme `W` smooth over an atlas of `𝔜`, so that `W → 𝔜` is
smooth and representable, hence of Deligne–Mumford type; put `W′ := W ×_𝔜 𝔜′`, a regular local immersion
into `W` of codimension `c`, and `U′ := U ×_W W′ = U ×_X X′`, an étale chart of `X′`. Then `β(W′, U)` of 8.1,
for the closed immersion `U → W`, is defined and invariant under `T_{W/𝔜}|_{U′}` by 8.1's relative
invariance over `𝔅 = 𝔜`, because `W′` is pulled back from `𝔜`; so it descends to the relative cone stacks,
glues over the relative local embeddings and pulls back to `F_1`, giving
`v^![C(F•)] = [C(u^*F•)]` (behrend-fantechi1997 lines 1690–1699 and Lemma 5.9, line 1397); then apply
`0^!_{F_1}` and 4.3. This extends VirtualFundamentalClass §9.4's regular base change from smooth bases to
bases of pure dimension, reduced or not, and from separated stacks with the resolution property to
all stacks of Convention 1 whose theory has a global resolution.
*Needs:* 4.2–4.3, 6.2, 8.1; VirtualFundamentalClass §§6.4, 9.1, 9.3.

**Checks.**

- `v` an open immersion: the class restricts to the open substack.
- `v : {0} → 𝔸¹`, `X = 𝔸¹ × Z → 𝔜 = 𝔸¹` the projection with `Z` smooth and `E = Ω_{X/𝔜}`: the class is `[X]`,
  `X′ = Z`, and `v^![𝔸¹ × Z] = [Z] = [Z]^vir`.
- Over the node `𝔜 = Spec k[a, b]/(ab)` with `𝔜′ = V(a + b) = Spec k[a]/(a²)` and `X = 𝔜 × ℙ¹`,
  `E = [O(1) --0--> Ω_{X/𝔜}]` (6.3): `v^!(−[𝔜 × pt]) = −[𝔜′ × pt] = −2·[pt × pt]`, and directly
  `[X′/𝔜′, u^*E]^vir = c_1(O(−1)) ∩ [𝔜′ × ℙ¹] = −2·[pt × pt]`; the base is reduced and not smooth.
- A non-reduced base: for `𝔜 = 𝔸¹ × Spec k[ε]/(ε²)` (pure dimension `1`), `𝔜′ = {t = 0} = Spec k[ε]/(ε²)`
  (`t` is a nonzerodivisor, so `v` is regular of codimension `1`), `X = 𝔜` and `E = 0`: the class is
  `[X/𝔜, 0]^vir = [𝔜] = 2·[𝔸¹]` (6.3), `v^!(2·[𝔸¹]) = 2·[pt]`, and directly `[X′/𝔜′, 0]^vir = [𝔜′] = 2·[pt]`,
  the length of `k[ε]/(ε²)`. A theory that replaced `𝔜` by `𝔜_red` would give `[pt]` on the right.

### 8.3 Functoriality over bases of pure dimension

Let `u : X′ → X` be the base change of a local complete intersection morphism `v : Z′ → Z` of algebraic stacks
over `𝔜` with finite unramified diagonal over `𝔜`, with `g : X′ → Z′` and `h : X → Z`, `X` and `X′`
stacks in the sense of Convention 1, and `E`, `F` perfect obstruction theories for `X/𝔜`, `X′/𝔜` with
global resolutions that are compatible over `v` in the sense of VirtualFundamentalClass §§8.1 and 9.5 (behrend-fantechi1997 lines
1721–1733). With `𝔈 := h¹/h⁰(E^∨)`, `𝔉 := h¹/h⁰(F^∨)` and `𝔑_{Z′/Z} := h¹/h⁰(L_{Z′/Z}^∨)`, the compatibility
datum gives the exact sequence of vector-bundle stacks `g^*𝔑_{Z′/Z} → 𝔉 → u^*𝔈`
(VirtualFundamentalClass §8.1; behrend-fantechi1997 lines 1389–1392), and `q : 𝔉 → u^*𝔈` denotes its
second map. Prove
`v^![X/𝔜, E]^vir = [X′/𝔜, F]^vir` (behrend-fantechi1997 Proposition 7.5, lines 1734–1739) when `v` is smooth,
and when `Z′`, `Z` are smooth over `𝔜`, in both cases over any `𝔜` of pure dimension; here `v^!` is flat
pullback along `u` in the first case (3.1), and in the second the composite of flat pullback along the
projection `Z′_0 ×_𝔜 X → X` with the Gysin map of the graph `Z′_0 → Z′_0 ×_𝔜 Z` of `v|_{Z′_0}`, a regular
local immersion (3.1, 4.2), for a quasi-compact open substack `Z′_0 ⊆ Z′` containing the image of `X′`;
prove that this composite does not depend on `Z′_0`. Both maps are taken on each of the finitely many
open and closed substacks of `Z′_0` on which the relative dimensions of `Z′` at `z′` and of `Z` at `v(z′)`
over `𝔜` are constant; on `X′` their difference is `rk F − rk E`.

Route for `Z′_0`: it exists because `X′` is quasi-compact and `|Z′|` has a basis of quasi-compact opens.
`Z′_0 ×_𝔜 X` is a stack of Convention 1, which `Z′ ×_𝔜 X` need not be (fifth Check). It is locally of
finite type over `k`, being smooth over `X`, and quasi-compact, as `Z′_0 ×_k X` is quasi-compact and
`Z′_0 ×_𝔜 X → Z′_0 ×_k X` is a base change of the quasi-compact diagonal of `𝔜` (Convention 7). It is
Deligne–Mumford with diagonal representable by schemes, quasi-compact and separated, because that
diagonal factors through a base change of the finite unramified diagonal of `Z′` over `𝔜` and a base
change of the diagonal of `X`. Two choices of `Z′_0` contain their intersection, which is quasi-compact because
`Z′` is quasi-separated (its diagonal factors through the finite diagonal over `𝔜` and a base change of
the diagonal of `𝔜`). For `Z′_0 ⊆ Z′_1` the two composites agree: flat pullback is compatible with
restriction to the open `Z′_0 ×_𝔜 X` (3.1), the Gysin maps of 4.2 commute with restriction to open
substacks, and the graph of `v|_{Z′_0}` is the restriction of that of `v|_{Z′_1}` over `Z′_0 ×_𝔜 Z`, with
fibre product `X′` in both cases.

Route for the equality: in the first case `g^*𝔑_{Z′/Z} = B T_{X′/X}`, and
`B T_{X′/X} → 𝔠_{X′/𝔜} → u^*𝔠_{X/𝔜}` is a short exact sequence of cone stacks (VirtualFundamentalClass
§5.5 and behrend-fantechi1997 Proposition 3.14, lines 1040–1044, over `Spec k`; over `𝔜` on the charts of VirtualFundamentalClass §9.1, on which `u` is
étale locally a projection `X × 𝔸^n → X`). So `𝔠_{X′/𝔜}` is a torsor over `u^*𝔠_{X/𝔜}` under `B T_{X′/X}`,
the kernel of `q`, and `𝔠_{X′/𝔜} = 𝔉 ×_{u^*𝔈} u^*𝔠_{X/𝔜}` (behrend-fantechi1997 lines 1456–1460), so the
class is computed through a comparison bundle `F_1 ×_{u^*𝔈} u^*E_1` as in 6.1; in the second, the
rational equivalence of behrend-fantechi1997 Lemma 5.9 (line 1397) is formed, on a chart `X → Z ×_𝔜 W`
as in the API below, in the ambient `Z′_0 ×_𝔜 Z ×_𝔜 W` of the graph of `v|_{Z′_0}` (the normal bundles and
normal cones along `X′` of the API are the same for `Z′` and for `Z′_0`), with the invariance of 8.1's
fourth statement for `T_{Z′/𝔜} ⊕ T_{W/𝔜}`, and carried into `N × 𝔉` by the comparison of the API below, so that only the
compatibility over `v` is used. No compatibility datum over the graph is used: one would need a lift of
`g^*Ω_{Z′/𝔜} → g^*L_{Z′/Z}` to `F`, whose obstruction lies in `Ext¹(g^*Ω_{Z′/𝔜}, u^*E)` and is killed only
in `Ext¹(g^*Ω_{Z′/𝔜}, u^*L_{X/𝔜})`. This extends VirtualFundamentalClass §9.5, which states both cases
under the hypotheses of behrend-fantechi1997 Proposition 7.5 for separated stacks with the resolution
property, to stacks that need not be separated. *Needs:* 3.1, 4.2–4.3, 6.1–6.2, 8.1–8.2;
VirtualFundamentalClass §§1.6, 5.5, 8.1, 9.1, 9.5; gap:normal-cones-of-local-immersions.

**API.**

- The comparison of the second case. On a chart where `X → Z ×_𝔜 W` is a local immersion with `W` smooth
  over an atlas of `𝔜`, put `C := C_{X/Z ×_𝔜 W}` and `N := g^*v^*T_{Z/𝔜}`, the normal bundle of the graph
  `Z′ → Z′ ×_𝔜 Z` pulled back to `X′`, and let `T_{Z′/𝔜} ⊕ T_{W/𝔜}` act trivially on `N` and on `u^*C`
  through `dv : T_{Z′/𝔜} → v^*T_{Z/𝔜}` and the tangent actions of VirtualFundamentalClass §§1.6, 9.1. Then
  the compatibility datum over `v` gives an isomorphism of cone stacks over `X′`

      [u^*C/(T_{Z′/𝔜} ⊕ T_{W/𝔜})] ≅ 𝔉 ×_{u^*𝔈} u^*𝔠_{X/𝔜}

  over the identity of `u^*𝔠_{X/𝔜} = [u^*C/(v^*T_{Z/𝔜} ⊕ T_{W/𝔜})]`, equivariant for
  `g^*𝔑_{Z′/Z} = [v^*T_{Z/𝔜}/T_{Z′/𝔜}]` acting through the exact sequence `g^*𝔑_{Z′/Z} → 𝔉 → u^*𝔈` of
  VirtualFundamentalClass §8.1, and carrying the closed substack
  `[C_{X′/Z′ ×_𝔜 W}/(T_{Z′/𝔜} ⊕ T_{W/𝔜})] = 𝔠_{X′/𝔜}` to its image under `𝔠_{X′/𝔜} → 𝔉`; these
  isomorphisms agree on overlaps of charts (behrend-fantechi1997 Lemma 5.9, lines 1416–1421, for
  `𝔜 = Spec k`, `Z′`, `Z` smooth and `v` regular). Through it the rational equivalence of 8.1 descends to
  `N × 𝔉` with boundary `[q^*C_{u^*𝔠_{X/𝔜}/(Z′ ×_𝔜 𝔠_{X/𝔜})}] − [N × 𝔠_{X′/𝔜}]`. Here
  `u^*𝔠_{X/𝔜} = Z′ ×_Z 𝔠_{X/𝔜}` is embedded in `Z′ ×_𝔜 𝔠_{X/𝔜}` by the base change of the graph of `v`, so
  that its normal cone lies in `N × u^*𝔠_{X/𝔜} ⊆ N × u^*𝔈`, and `q^*` is the inverse image along
  `id_N × q`. After pulling back to the global resolutions as in 8.2 the zero-section Gysin maps of the
  two terms are `v^![X/𝔜, E]^vir` and `[X′/𝔜, F]^vir`.

**Checks.**

- `v = id_Z` with `F = E`: both sides are `[X/𝔜, E]^vir`.
- `v : 𝔸¹ × Z → Z` the projection, `X′ = 𝔸¹ × X`, `F = E ⊞ Ω_{𝔸¹}`: `v^![X]^vir = [𝔸¹] × [X]^vir`, of dimension one
  more. For `X = Z = 𝔜 = Spec k` and `E = 0`, `𝔠_{X′/𝔜} = B T_{𝔸¹}` has dimension `1 − 1 = 0` over
  `u^*𝔠_{X/𝔜} = 𝔸¹` of dimension `1`, the relative dimension `−1` of a `B T_{𝔸¹}`-torsor; a torsor under the
  vector bundle `T_{𝔸¹}` would have dimension `2`.
- Two successive smooth pullbacks `Z′′ → Z′ → Z` with compatible theories give the class of the composite.
- The comparison of the API in two degenerate cases. For `Z = 𝔜` and `v : Z′ → 𝔜` smooth, `N = 0`,
  `T_{Z′/𝔜}` acts trivially on `u^*C`, and the left side is `u^*𝔠_{X/𝔜} × B T_{Z′/𝔜}`, matching
  `g^*𝔑_{Z′/𝔜} = B T_{Z′/𝔜}` in `B T_{Z′/𝔜} → 𝔉 → u^*𝔈`. For `𝔜 = Spec k` and `v : {0} → 𝔸¹`, `T_{Z′} = 0` and
  `[u^*C/T_W] → u^*𝔠_X` has fibre `[T_{𝔸¹}/0] = 𝔸¹`, the normal bundle `𝔑_{0/𝔸¹}`, while `N` is a second,
  separate copy of the trivial line: behrend-fantechi1997 Lemma 5.9 with `Y = 𝔸¹`, `Y′ = {0}`, `M = W`.
- A source `Z′` that is not quasi-compact: `𝔜 = Spec k`, `Z = pt ⊔ pt`, `Z′ = pt ⊔ ⊔_ℕ pt` with `v` étale
  sending the first point of `Z′` to the first point of `Z` and every other point to the second, `X` the
  first point of `Z` with `E = 0`, so that `X′ = pt` with `F = 0` (`L_{Z′/Z} = 0`). Here `Z′ ×_𝔜 X = Z′` is not
  quasi-compact, so it is not a stack of Convention 1 and the composite cannot be formed on it. For `Z′_0`
  the first point, flat pullback gives `[pt]` and the graph, open and closed of codimension `0`, keeps it:
  `v^![pt] = [pt] = [X′/𝔜, F]^vir`. For `Z′_0` the first point with finitely many others, flat pullback gives
  the sum of their classes, the graph meets `Z′_0 ×_𝔜 X` only over the first point, and the result is again
  `[pt]`, as is flat pullback along `u = id_pt` in the first case.

### 8.4 Deformation invariance of virtual counts

Let `B` be a smooth connected separated curve over `k`, `𝔐` an algebraic stack of pure dimension `m`,
reduced or not (`𝔐 = Spec k` allowed), `X → 𝔐 × B` of Deligne–Mumford type with `X` proper over `B`, and `E` a perfect
relative obstruction theory for `X/𝔐 × B` of rank `r` with a global resolution and `m + r = 0`. For a
closed point `b ∈ B`, let `X_b := X ×_B {b}` with the pulled-back theory over `𝔐 × {b} = 𝔐_{κ(b)}`. Prove that
`deg_{κ(b)}[X_b/𝔐_{κ(b)}]^vir ∈ ℚ` does not depend on `b`. Route: `{b} → B` is a regular immersion of
codimension one, hence so is its flat base change `η_b : 𝔐 × {b} → 𝔐 × B`, and 8.2 for `η_b` (bases of pure
dimensions `m + 1` and `m`) gives `[X_b]^vir = η_b^![X]^vir`, with `η_b^!` the Gysin map of 4.2 and
`[X]^vir ∈ A_1(X)_ℚ`; pushing forward to `B` (4.1) gives `n·[B] ∈ A_1(B)_ℚ = ℚ·[B]`, and compatibility of
`η_b^!` with proper pushforward (4.2) gives `deg_{κ(b)}[X_b]^vir = n` (li-tian1998 Theorem 4.2, lines
1472–1474, whose proof, lines 1486–1552, reduces it by conservation of number to the identity
`η^![M_{X_T/T}]^vir = [M_{X_t}]^vir` (lines 1501–1503), and lines 1565–1566, which draw its
componentwise form `[V_t]^vir = η_t^![V]^vir` from that proof; fulton1998 Proposition 10.2). The
`k`-degree is `n·[κ(b) : k]`. *Needs:* 4.1–4.2, 5.4, 6.2, 8.2.

**Checks.**

- Zeros of a section (`char k ≠ 2`): on `P = ℙ¹ × B` over `B = 𝔸¹_b`, `V = O(2)` and `s = x² − b y²`, with
  `E = [V^∨|_X → Ω_{P/B}|_X]` on `X = Z(s)` (rank `1 − 1 = 0`, `𝔐 = Spec k`): for `b ≠ 0` a square, two simple
  zeros; for `b` not a square, one closed point of degree `2` over `κ(b)`; for `b = 0`, one double zero. The
  count is `2` in every case.
- Properness over `B` is needed: for `X = {xb = 1} ⊆ 𝔸¹ × B` over `B = 𝔸¹` with `E = L_{X/B} = 0`, the count is
  `1` for `b ≠ 0` and `0` for `b = 0`.
- Without `m + r = 0` the fibre classes lie in `A_{m+r}(X_b)` and have no degree: for `X = ℙ¹ × B` with
  `E = Ω_{X/B}`, `m + r = 1` and the fibre class is `[ℙ¹]`.

### Examples

- Families of zero loci of sections, whose counts are top Chern numbers of the fibres.
- Relative spaces of maps over `𝔐 × B` (Layer 9) with a target deformed over `B`.

### Dependencies

Layers 2–6; VirtualFundamentalClass §§1.5–1.6, 2.5, 5.5, 6.4, 8.1, 9.1, 9.3, 9.5;
gap:normal-cones-of-local-immersions; SchemeAndStackFoundations §5.5. Within the layer,
8.1 → 8.2 → 8.3, and 8.2 → 8.4.

## Layer 9: obstruction theories of spaces of maps from curves

### 9.1 Relative spaces of maps

Let `𝔅` be an algebraic stack of pure dimension `b`, locally of finite type over `k`, and `𝒞 → 𝔅` a
representable morphism (Convention 2) that is a prestable family étale locally on the base: for every
scheme `T → 𝔅` there is an étale covering `{T_i → T}` such that each `𝒞_{T_i} := 𝒞 ×_𝔅 T_i` is a scheme and
`𝒞_{T_i} → T_i` is a prestable family (`TauCeti.AlgebraicGeometry.PrestableFamily`, a class on morphisms of
schemes; StableReduction Layer 3). The étale-local form, rather than representability by schemes, is
what 9.2–9.4 use, since they work on étale charts of `M`; it contains the case of `𝒞 → 𝔅`
representable by schemes. Let `X` be a smooth
quasi-projective `k`-scheme, `M` a stack (Convention 1) with a morphism `M → 𝔅` of Deligne–Mumford type,
`π : 𝒞_M := 𝒞 ×_𝔅 M → M` the base change and `F : 𝒞_M → X` a morphism. Define *RelativeSpaceOfMaps*:
`(M, F)` is a relative space of maps from `𝒞` to `X` if for every square-zero extension `T → T̄` over `𝔅`
(7.1) with `T̄` affine and every `g : T → M` over `𝔅`, restriction is a bijection from the extensions of
`g` to `T̄` onto the extensions of `F ∘ 𝒞_g : 𝒞_T → X` to `𝒞_{T̄}`. Every open substack of a stack of
morphisms `Mor_𝔅(𝒞, X)` that is a stack in the sense of Convention 1 is one, by its universal property, and
the stack of stable maps is such an open substack over the prestable-curve stack (behrend1997
Proposition 4, lines 139–141). *Needs:* 7.1; Tau Ceti `TauCeti.AlgebraicGeometry.PrestableFamily`;
StableReduction Layer 3; SchemeAndStackFoundations §1.19.

**API.**

- The condition is stable under restriction to open substacks of `M` and under étale morphisms `M′ → M`.
- For `𝔅 = Spec k` and a fixed curve `C`, an open subscheme of the scheme of morphisms `Mor(C, X)` with its
  universal map satisfies it.

**Checks.**

- `X = Spec k`: `(M, F)` is a relative space of maps if and only if `M → 𝔅` is formally étale, hence étale,
  `M → 𝔅` being of finite type and of Deligne–Mumford type.
- `𝔅 = Spec k`, `C = ℙ¹`, `X = ℙ^r`: the open subscheme of `ℙ^{(r+1)(d+1)−1}` of `(r + 1)`-tuples of degree-`d`
  forms without common zero, up to scalars, with its universal map, is one.
- A single point `M = Spec k` with `F = id : ℙ¹ → ℙ¹` over `𝔅 = Spec k` is not one: the first-order
  deformations of `id` form `H⁰(ℙ¹, T_{ℙ¹}) ≅ k³`, while `M` has none.

### 9.2 Derived pushforward and duality along prestable families

In the setting of 9.1, construct the morphism of ringed sites `π : (𝒞_M)_ét → M_ét`, `(U → M) ↦ 𝒞_U`,
with `Lπ^* ⊣ Rπ_*` (EnhancedDerivedSheaves E1.4, through VirtualFundamentalClass §3.1). Prove that for a
locally free `V` of finite rank on `𝒞_M`, `Rπ_*V` is perfect of amplitude `[0, 1]` and commutes with base
change along every `M′ → M` (StableReduction Layer 2, cohomology and base change, on étale charts of `M`).
Construct the relative dualising sheaf `ω_π`, invertible, by étale descent of StableReduction Layer 2's
dualising sheaves of the charts along their base-change isomorphisms, with its trace `R¹π_*ω_π → O_M`.
Define *prestableUpperShriek* `π^! := Lπ^*(−) ⊗ ω_π[1]`. Prove: the projection formula
`Rπ_*(Lπ^*K ⊗ A) ≅ K ⊗ Rπ_*A` for complexes with quasi-coherent cohomology; the trace
`tr : Rπ_*(ω_π[1]) → O_M`, through `R¹π_*ω_π → O_M`; Grothendieck duality
`Rπ_*RHom(L, π^!K) ≅ RHom(Rπ_*L, K)` for `L` with quasi-coherent cohomology and `K` with quasi-coherent
cohomology bounded below, induced by `tr`, compatibly with étale base change on `M`, hence the adjunction
`Hom(Rπ_*L, K) ≅ Hom(L, π^!K)` on these; and Serre duality `(Rπ_*V)^∨ ≅ Rπ_*(V^∨ ⊗ ω_π)[1]` for `V` locally
free, compatible with base change. Route: on an affine étale chart `U → M`, `𝒞_U → U` is a flat proper
morphism of Noetherian schemes with Gorenstein fibres of dimension one, and SchemeAndStackFoundations
§2.19 (`pushforwardRightAdjoint_adj`, `globalDuality`, `upperShriek_proper`, `upperShriek_lci`) and §2.20
give these statements there, the charts being chosen fine enough that `𝒞_U` is a scheme (9.1); the
chart isomorphisms agree on overlaps by flat base change and glue as isomorphisms of objects of
`D(O_M)`. The duality is not used for the unbounded complex `L_{M/𝔅}`: 9.3
builds its morphism into `L_{M/𝔅}` from the projection formula and `tr`, which are defined for every complex,
and uses the adjunction only against the bounded complexes `J[1]` of square-zero extensions.
*Needs:* VirtualFundamentalClass §3.1; StableReduction Layer 2; SchemeAndStackFoundations §§1.10,
2.18–2.20; EnhancedDerivedSheaves §0.3, E1.4, E1.8.

**API.**

- `Rπ_*` and `π^!` commute with étale base change on `M`, and `π^!O_M = ω_π[1]`.
- For a prestable family of arithmetic genus `g`, `R⁰π_*O = O_M`, `R¹π_*O` is locally free of rank `g`, and
  the trace identifies `R¹π_*ω_π` with `O_M`.

**Checks.**

- For a single smooth curve `C` of genus `g` over `k` and `V = L` of degree `e`, `χ(Rπ_*L) = e + 1 − g`, and for
  `V = ω_C`, `χ = g − 1`.
- On a nodal fibre, `ω_π` restricts to a component `E` with degree `2g(Ẽ) − 2 + #(branches above nodes on E)`
  (StableReduction Layer 2), not `2g(Ẽ) − 2`.
- For `𝒞_M = C × M` with `C` fixed, `Rπ_*(pr^*V) = RΓ(C, V) ⊗ O_M` and duality is Serre duality on `C`
  tensored with `O_M`.

### 9.3 The Kodaira–Spencer morphism and the obstruction theory

Define *kodairaSpencer* `e : F^*Ω_X → π^*L_{M/𝔅}` as the composite of the functoriality map
`F^*L_X → L_{𝒞_M}`, the transitivity map `L_{𝒞_M} → L_{𝒞_M/𝒞}` and the flat base-change isomorphism
`L_{𝒞_M/𝒞} ≅ π^*L_{M/𝔅}` (VirtualFundamentalClass §3.3; `𝒞 → 𝔅` is flat and the square is 2-cartesian), with
`L_X = Ω_X[0]` (DerivedModuleAlgebra §0.12). Define *mapsObstructionTheory*
`φ : E := (Rπ_*F^*T_X)^∨ ≅ Rπ_*(F^*Ω_X ⊗ ω_π)[1] → L_{M/𝔅}` as the composite of `Rπ_*(e ⊗ ω_π[1])`, the
projection formula `Rπ_*(π^*L_{M/𝔅} ⊗ ω_π[1]) ≅ L_{M/𝔅} ⊗ Rπ_*(ω_π[1])` and `id ⊗ tr` (9.2), which is the
adjoint of `e ⊗ ω_π[1] : F^*Ω_X ⊗ ω_π[1] → π^!L_{M/𝔅}` wherever the adjunction applies
(behrend-fantechi1997 lines 1583–1599; behrend1997 lines 148–153 for the relative form). Prove: if `(M, F)` is a relative space of maps, `φ` is a perfect
relative obstruction theory for `M/𝔅`, with obstruction sheaf `Ob = R¹π_*F^*T_X` (behrend-fantechi1997
Proposition 6.2, lines 1602–1614, for `𝔅 = Spec k` and a fixed curve). Route: condition 3 of 7.2 for
affine `T̄`, which suffices by 7.2. For a
square-zero extension `T → T̄` over `𝔅` with `T̄` affine and `g : T → M`, the extensions of
`F_T : 𝒞_T → X` to `𝒞_{T̄}` are obstructed by a class in `Ext¹_{𝒞_T}(F_T^*Ω_X, π^*J)` and form a torsor
under `Hom(F_T^*Ω_X, π^*J)` (SchemeAndStackFoundations §4.1 for the smooth `X` on affine étale charts of
the algebraic space `𝒞_{T̄}`, the local obstructions and torsors glued as in 7.1); the projection formula and
base change (9.2) identify `Ext^i_{𝒞_T}(F_T^*Ω_X, π^*J) = H^i(𝒞_T, F_T^*T_X ⊗ π^*J)` with
`H^i(T, Rπ_*(F_T^*T_X) ⊗ J) = Ext^i_T(g^*E, J)` in the same degree, the right side over `O_T` (where
behrend-fantechi1997 line 1609 writes `O_C`), compatibly with `φ^*ω(g)`; the hypothesis of 9.1 transports
these to extensions of `g`. This states for every base `𝔅` of pure dimension, every smooth quasi-projective
target and every field the obstruction theory of AlgebraicGromovWittenTheory §4.1. *Needs:* 7.1–7.2,
9.1–9.2; VirtualFundamentalClass §§3.3, 6.4, 9.2; DerivedModuleAlgebra §0.12; SchemeAndStackFoundations
§4.1.

**API.**

- For `𝔅 = Spec k` and a fixed curve `C`, at a point `[F]` of `M`, `H⁰(φ)` is dual to the tangent map
  `H⁰(C, F^*T_X) → T_{[F]}M`.
- `e` and `φ` commute with base change along `M′ → M` with the pulled-back family and map.

**Checks.**

- `X = Spec k`: `E = 0` and `φ = 0`, an obstruction theory exactly when `M → 𝔅` is étale, which is 9.1's
  condition in this case.
- `𝔅 = Spec k`, `C = ℙ¹`, `X = ℙ^r`, maps of degree `d`: the Euler sequence
  `0 → O → O(d)^{r+1} → F^*T_{ℙ^r} → 0` gives `H¹(ℙ¹, F^*T_{ℙ^r}) = 0`, so `Ob = 0` and `M` is smooth of dimension
  `χ = (r + 1)(d + 1) − 1 = (r + 1)d + r` (6.3), the dimension of the open subscheme of 9.1.
- `𝔅 = Spec k`, `C` an elliptic curve and `X = C`, near an isomorphism `F`: `F^*T_X = O`, so `H⁰(E)^∨ = k` and
  `Ob = H¹(C, O) ⊗ O_M` is trivial on the one-dimensional family of translates; the virtual dimension is
  `0`, `M` is smooth of dimension `1`, and the class is `c_1(Ob) ∩ [M] = 0` (6.3).

### 9.4 Global resolutions

Prove: if `𝒞_M` carries an invertible sheaf `L` ample on the fibres of `π`, then for every locally free `V`
of finite rank on `𝒞_M`, `Rπ_*V` is isomorphic to a two-term complex
`[R¹π_*H → R¹π_*G]` of locally free sheaves in degrees `0, 1`, built from
`G := π^*π_*(V ⊗ L^{⊗N}) ⊗ L^{⊗−N}` and the kernel `H` of `G → V` for `N` large (one `N` serves for all
of `M`, which is quasi-compact by Convention 1; behrend1997 Proposition 5, lines 165–187, using that `H⁰(C_t, L^{⊗−N}) = 0` on every fibre because the fibres are reduced connected
curves on which `L` has positive degree on every component); hence the obstruction theory of 9.3 has the
global resolution `[(R¹π_*G)^∨ → (R¹π_*H)^∨]` for `V = F^*T_X`, and `[M/𝔅, E]^vir` is defined (6.2).
*Needs:* 6.2, 9.2–9.3; StableReduction Layer 2.

**Checks.**

- `V = O` on a single smooth curve of genus `g` over `k`: the construction gives
  `RΓ(C, O) ≅ [H¹(C, H) → H¹(C, G)]` with Euler characteristic `1 − g`.
- Reduced fibres are what make `H⁰(C_t, L^{⊗−N}) = 0` hold: on the square-zero thickening `C′` of `ℙ¹` with
  `O_{C′} = O_{ℙ¹} ⊕ k_p` (an embedded point at `p`) and `L` the pullback of `O(1)`, `L^{⊗−N} = O(−N) ⊕ k_p` has
  `H⁰ = k` for every `N > 0`, and the construction fails; prestable fibres are reduced.
- Ampleness on the fibres is needed: for `𝒞_M = C × M` with `C` of genus `g ≥ 1` and `L = O`, which is not
  ample, `H⁰(C_t, L^{⊗−N}) = k` for every `N`; for `V = O` the construction gives `G = O`, `H = 0` and
  `[R¹π_*H → R¹π_*G] = [0 → R¹π_*O]`, which misses `H⁰(Rπ_*O) = O_M` because `π_*G ≠ 0`.

### 9.5 Rank and virtual dimension

Prove that on the open and closed substack of `M` where the fibres of `π` have arithmetic genus `g`,
`F^*T_X` has fibre degree `δ` (`TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.FixedRank.vectorBundleDegree`)
and `F^*T_X` has rank `ℓ` (each `C_t` is connected, so `F_t` lands in one connected component of `X`,
of dimension `ℓ`), `rk E = χ(C_t, F_t^*T_X) = δ + ℓ · (1 − g)`, by Riemann–Roch on proper curves
(SchemeAndStackFoundations §3.3, with `χ(O_{C_t}) = 1 − g` from StableReduction Layer 2), so that the
virtual dimension there is `b + δ + ℓ · (1 − g)`; when `X` has pure dimension, `ℓ = dim X` everywhere
and the virtual dimension is `b + δ + dim X · (1 − g)` (behrend1997 lines 157–161 and 193–197;
li-tian1998 Theorem 4.3 (1), lines 1585–1586). For `X` of pure dimension, `𝔅` the stack of prestable
`n`-pointed curves of genus `g`, of dimension `3g − 3 + n`, and `δ = c_1(T_X) · β`, this is
`(1 − g)(dim X − 3) + n + c_1(T_X) · β`, the virtual dimension of AlgebraicGromovWittenTheory §4.3.
*Needs:* 9.3–9.4; SchemeAndStackFoundations §3.3; StableReduction Layer 2; Tau Ceti `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.FixedRank.vectorBundleDegree`.

**Checks.**

- `X = ℙ^r`, `g = 0`, degree `d`, `b = n − 3`: the virtual dimension is `(r + 1)d + r + n − 3`, which for
  `r = 2`, `d = 1`, `n = 0` is `2`, the dimension of the space of lines in `ℙ²`.
- `X` with `c_1(T_X) = 0` and of pure dimension `3`: the virtual dimension is `n` for every `g` and `β`.
- `X = Spec k`: `δ = 0`, `dim X = 0`, and the virtual dimension is `b`.
- The rank is that of `F^*T_X`, not `dim X`, when `X` is not of pure dimension: for `X = Spec k ⊔ ℙ¹`,
  `𝔅 = Spec k`, `C = ℙ¹` and `F` constant onto the point `Spec k`, `F^*T_X = 0`, so `ℓ = 0`, `δ = 0` and
  `rk E = χ(0) = 0 = δ + ℓ · (1 − 0)`, while `δ + dim X · (1 − g) = 1`.

### Examples

- The space of morphisms from a fixed curve to a smooth projective variety, with the obstruction theory of
  behrend-fantechi1997 Proposition 6.2.
- Over the stack of prestable curves, an open substack of a relative space of maps whose points are stable
  maps carries Behrend's Gromov–Witten obstruction theory.

### Dependencies

Layers 6–7; StableReduction Layers 2–3; SchemeAndStackFoundations §§1.10, 1.19, 2.18–2.20, 3.3, 4.1;
EnhancedDerivedSheaves §0.3, E1.4, E1.8; DerivedModuleAlgebra §0.12; VirtualFundamentalClass §§3.1, 3.3,
6.4, 9.2; Tau Ceti `TauCeti.AlgebraicGeometry.PrestableFamily`,
`TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.FixedRank.vectorBundleDegree`. Within the layer,
9.1 → 9.2 → 9.3 → 9.4 → 9.5.

## Downstream consumers

- **AlgebraicGromovWittenTheory**: its §§4.1–4.3 (the stable-map obstruction theory, its global
  resolution and its virtual dimension) are the case of 9.3–9.5 with `𝔅` the prestable-curve stack and a
  smooth projective target over an algebraically closed field of characteristic zero; 6.2 removes the use
  of the resolution property in its §4.2; 8.4 gives deformation invariance of its invariants; 5.4 computes
  its degrees on coarse spaces.

## References

- [vistoli1989] A. Vistoli, *Intersection theory on algebraic stacks and on their moduli spaces*, Invent.
  Math. 97 (1989), 613–670, [doi:10.1007/BF01388892](https://doi.org/10.1007/BF01388892); read in the GDZ
  scan, cited by paragraph number and line.
- [behrend-fantechi1997] K. Behrend, B. Fantechi, *The intrinsic normal cone*, Invent. Math. 128 (1997),
  45–88, [arXiv:alg-geom/9601010](https://arxiv.org/abs/alg-geom/9601010); cited in the arXiv v1 numbering,
  as in VirtualFundamentalClass.
- [kresch1999b] A. Kresch, *Canonical rational equivalence of intersections of divisors*, Invent. Math. 136
  (1999), 483–496, [arXiv:alg-geom/9710011](https://arxiv.org/abs/alg-geom/9710011).
- [behrend1997] K. Behrend, *Gromov–Witten invariants in algebraic geometry*, Invent. Math. 127 (1997),
  601–617, [arXiv:alg-geom/9601011](https://arxiv.org/abs/alg-geom/9601011).
- [li-tian1998] J. Li, G. Tian, *Virtual moduli cycles and Gromov–Witten invariants of algebraic
  varieties*, J. Amer. Math. Soc. 11 (1998), 119–174, [arXiv:alg-geom/9602007](https://arxiv.org/abs/alg-geom/9602007).
- [keel-mori1997] S. Keel, S. Mori, *Quotients by groupoids*, Ann. of Math. 145 (1997), 193–213,
  [arXiv:alg-geom/9508012](https://arxiv.org/abs/alg-geom/9508012).
- [edidin-graham1998] D. Edidin, W. Graham, *Equivariant intersection theory*, Invent. Math. 131 (1998),
  595–634, [arXiv:alg-geom/9603008](https://arxiv.org/abs/alg-geom/9603008).
- [kresch1999] A. Kresch, *Cycle groups for Artin stacks*, Invent. Math. 138 (1999), 495–536,
  [arXiv:math/9810166](https://arxiv.org/abs/math/9810166).
- [deligne-mumford1969] P. Deligne, D. Mumford, *The irreducibility of the space of curves of given genus*,
  Publ. Math. IHÉS 36 (1969), 75–109, [Numdam](https://www.numdam.org/item/PMIHES_1969__36__75_0/).
- [rydh2015] D. Rydh, *Noetherian approximation of algebraic spaces and stacks*, J. Algebra 422 (2015),
  105–147, [arXiv:0904.0227](https://arxiv.org/abs/0904.0227); read in the arXiv v4 numbering.
- [stacks-chow] The Stacks Project, *Chow homology and Chern classes*, [Tag 02P3](https://stacks.math.columbia.edu/tag/02P3).
- [stacks-chow-spaces] The Stacks Project, *Chow groups of spaces*, [Tag 0EDQ](https://stacks.math.columbia.edu/tag/0EDQ).
- [gillet1984] H. Gillet, *Intersection theory on algebraic stacks and Q-varieties*, J. Pure Appl. Algebra 34
  (1984), [doi:10.1016/0022-4049(84)90036-7](https://doi.org/10.1016/0022-4049(84)90036-7); cited by
  locator.
- [fulton1998] W. Fulton, *Intersection theory*, 2nd ed., Springer, 1998,
  [doi:10.1007/978-1-4612-1700-8](https://doi.org/10.1007/978-1-4612-1700-8); cited by locator.
