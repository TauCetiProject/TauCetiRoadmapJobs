# Roadmap: inverse Galois theory and arithmetic fundamental groups, Part II: homological stability for Hurwitz spaces

**Summary.** This roadmap proves the homological stability theorem of Ellenberg, Venkatesh and
Westerland for Hurwitz spaces of branched covers of the disc with monodromy in a nonsplitting
conjugacy class `c` of a finite group `G`, and its arithmetic consequence, a bound on the étale
Betti numbers of Hurwitz schemes over `𝔽̄_q` that is uniform in the number of branch points. It
starts where
[InverseGaloisAndArithmeticFundamentalGroups](../InverseGaloisAndArithmeticFundamentalGroups/README.md)
stops: that roadmap builds the Hurwitz braid action, the braid-orbit monoid and the extraction of
class elements (its Layer IG.3), configuration spaces, the marked and unmarked topological Hurwitz
spaces, the arithmetic Hurwitz schemes and the comparison between complex and finite-field
cohomology for each fixed number `n` of branch points (its Layer IG.5), and it asserts no
homological stability. Here the connected components of all Hurwitz spaces are assembled into a
graded noncommutative algebra `R = k[S]` over a field `k` in which `|G|` is invertible; a central
element `U` of `R`, the sum over `g ∈ c` of the constant blocks `(g, …, g)` of length a multiple
of the order of `g`, stabilizes `R` itself (Layer 0). A Koszul-like complex `K(M)` attached to
every graded `R`-module controls the stability of `U` on `M` by two homology groups (Layer 1).
The arc complex of the punctured disc, highly connected by Hatcher–Wahl, resolves each Hurwitz
space (Layer 2), and the resulting spectral sequence has the K-complexes of the homology of
smaller Hurwitz spaces as rows (Layer 3). An induction on the homological degree proves that
`U` induces isomorphisms `H_p(Hur_n; k) → H_p(Hur_(n+deg U); k)` for `n > A p + B`, with
`A, B` independent of `k`, for marked, full-monodromy and unmarked Hurwitz spaces (Layer 4).
Finite cell models of configuration spaces then bound every Betti number by `C^(i+1)`, and the
fixed-degree comparisons of the parent roadmap transport this bound to the étale cohomology of
the Hurwitz schemes `Hn^c_{G,n}` over `𝔽̄_q` (Layer 5).

The end theorems are `hurwitz_homological_stability` (EVW Theorem 6.1 and Corollary 6.2),
`uniform_betti_bound` (EVW Proposition 2.5 with the topological part of Proposition 7.8) and the
uniform étale Betti bound (EVW Proposition 7.8). The companion [Suggested.lean](Suggested.lean),
in the namespace `TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroupsPartII`, states the
first two against the pinned Mathlib and Tau Ceti, in the braid-group-homology form of Layer 0,
together with the definitions they need; the étale bound is not statable there, because the
Hurwitz schemes are not available at the pins.

## Scope and ownership

This roadmap owns:

- the nonsplitting property of a conjugacy class and its basic example, the involution class of a
  group of order `2s` with `s` odd (Layer 0);
- the Hurwitz representation of `TauCeti.BraidGroup n` on the fibres of the marked and unmarked
  Hurwitz covers, the block inclusion of braid groups, the gluing maps, the identification of
  Hurwitz homology with braid-group homology with permutation coefficients, the component ring,
  the central stabilization sum and its stability on components (Layer 0);
- graded support degrees, central torsion and its defects, the change-of-rings estimates, graded
  Nakayama with support control, the K-complex, its generator homotopies, and the theorem that low
  K-homology controls stabilization, all for the component ring (Layer 1);
- the identification of the boundary-fixed mapping class group of the marked disc with
  `TauCeti.BraidGroup n`, the based arc complex of the punctured disc, its truncated braid-coset
  model, the arc stabilizers and the connectivity of the arc complex (Layer 2);
- the graded homology modules of Hurwitz spaces, the Borel arc resolution, the identification of
  its rows with K-complexes, the arc spectral sequence and its low-degree edge sequence
  (Layer 3);
- the inductive degree bound and homological stability for marked, full-monodromy and unmarked
  Hurwitz spaces, and the homology of the simultaneous-conjugation quotient (Layer 4);
- the finite cell models of the four Hurwitz variants, the uniform field Betti bound and the
  uniform étale Betti bound (Layer 5).

It does not own, and consumes by name:

- branch tuples, the Hurwitz braid action, the braid-orbit monoid and the extraction of an element
  of a single class: InverseGaloisAndArithmeticFundamentalGroups §IG.3.2 (*Branch tuples and Nielsen
  classes*, *The Hurwitz braid action*, *The braid-orbit monoid*, *Extracting an element of a single
  class*). Suggested.lean restates the Hurwitz action on the pinned braid group as
  `hurwitzAction`, because a roadmap module cannot be imported; it is the same action
  `(a, b) ↦ (a b a⁻¹, a)`, and the README target is the parent's;
- configuration spaces, their braid groups and asphericity, the marked topological Hurwitz spaces
  `Hur_{G,n}`, `Hur^c_{G,n}`, `CHur_{G,n}`, `CHur^c_{G,n}` and the forgetting of the boundary
  marking with its stabilizers `C_G(H)`: §§IG.5.1–IG.5.2 of the same roadmap;
- the arithmetic Hurwitz schemes, their complex comparison, the fixed-degree mod-`ℓ` comparison and
  the coefficient towers: §IG.5.3 (*Arithmetic Hurwitz stacks and schemes*, *Analytic and
  topological Hurwitz comparison*) and §IG.5.5 (*Fixed-degree Hurwitz mod-`ℓ` comparison*,
  *Coefficient towers and rational Betti dimensions*);
- plane configurations versus disc configurations and the half-twist convention: ReductiveGroups
  Layer 11A; the finite Salvetti complex of a finite reflection arrangement and its comparison with
  the complement: ReductiveGroups Layer 11B. The type-A poset model and its coarsening are therefore
  not built here; Layer 5 specializes the ReductiveGroups model to `W = S_n` and lifts it to
  Hurwitz covers;
- homology of a `K(G, 1)` with local coefficients as group homology: ClassifyingSpaces Stage 4,
  items 16–17;
- singular homology, cellular homology, the Künneth theorem over a field, finite covers, transfer,
  Cartan–Leray and coinvariants, the Serre spectral sequence, relative simplicial approximation,
  Hurewicz and Whitehead: AlgebraicTopology Stages 2, 4, 5 and 8;
- collars, tubular neighbourhoods and diffeomorphism groups of compact manifolds relative to the
  boundary: GeometricTopology Layers 1 and 3;
- surfaces with punctures, their mapping class groups and the evaluation fibration of the
  homeomorphism group: MordellLawrenceVenkatesh §§5.1, 5.7, 5.9, 5.17;
- graded and DG modules over an algebra, balanced tensor products, derived tensor products and
  their resolutions: DGAInfinity Layers 0, 1 and 5;
- group homology, representations, monoid algebras, graded objects and spectral-sequence pages:
  Mathlib.

A stabilization map that commutes with Frobenius, and limits of Cohen–Lenstra type over `𝔽_q(t)`
for fixed `q`, do not follow from the results here: the operator `U` is a sum of gluing maps of
topological spaces and is not algebraic, and the comparisons of Layer IG.5 are for one `n` at a
time.

## Conventions

- `G` is a finite group, `c` is a single conjugacy class of `G` (in Lean, `c : ConjClasses G`),
  and `d` is the common order of the elements of `c`. A *permitted field* is a field `k` in which
  `|G|` is invertible, that is `(Fintype.card G : k) ≠ 0`. In Suggested.lean `G` and `k` live in
  `Type`, because Mathlib's `groupHomology` takes the group, the coefficient ring and the module in
  one universe; every finite group is isomorphic to one in `Type`.
- Tuples are functions `Fin n → G`. The classical braid generators `σ_1, …, σ_(n−1)` are
  `TauCeti.BraidGroup.sigma i` for `i = 0, …, n − 2`. The positive Hurwitz move at positions
  `(i, i + 1)` replaces `(a, b)` by `(a b a⁻¹, a)`; its inverse replaces `(a, b)` by `(b, b⁻¹ a b)`.
  This is the convention of InverseGaloisAndArithmeticFundamentalGroups §IG.3.2 and of EVW (1.3.2)
  (EVW16 line 102). Exponents mean `g^h = h⁻¹ g h` (EVW16 line 341). Permutations compose from right
  to left and the ordered product of a tuple is `g_1 g_2 ⋯ g_n`, the boundary monodromy.
- `Hur_n` is the marked Hurwitz space `Hur^c_{G,n}` of §IG.5.2, with fibre `c^n` over the base
  configuration, including non-generating tuples and every boundary product; `CHur_n` is its
  full-monodromy subspace `CHur^c_{G,n}`, with fibre the tuples in `c^n` that generate `G`. No
  product-one condition is imposed. `X/G` is the quotient by simultaneous conjugation, which
  forgets the boundary marking. In Lean the fibre is `HurwitzFibre c false n` for `Hur_n`,
  `HurwitzFibre c true n` for `CHur_n`, and `UnmarkedFibre c full n` for the quotients.
- Gradings. The *internal* grading is the number `n` of branch points and is nonnegative; the
  homological degree of a complex is a separate index. The internal shift is `M[q]_n = M_(n−q)`,
  zero for `n < q` (EVW16 line 347). For a graded module `V`, `deg V` is the largest `n` with
  `V_n ≠ 0`, `deg 0 = −∞` and `deg V = +∞` for unbounded support; a bound `deg V ≤ b` means
  `V_n = 0` for every `n > b`. Internal shifts carry no Koszul signs.
- Constants. `D ≥ 1` is admissible when it satisfies §0.8; `a = D d` is the degree of `U_D`. Fix
  `A1 ≥ max(1, a, deg R[U], deg R/UR)` uniformly over all permitted fields, `A2 = A1 + a` and
  `A0 = 5 A1 + A2`. The lower bounds `A1 ≥ 1` and `A1 ≥ a` enlarge the constants (4.5.3) of EVW;
  see *Notes on the sources*.
- `Tor_i^R(N, M)` takes a graded right `R`-module `N` and a graded left `R`-module `M`; balanced
  tensor products over `R` are noncommutative. The augmentation `R → k` kills `R_+ = ⊕_(n>0) R_n`,
  and `H_i^aug(M) = Tor_i^R(k, M)`.
- The arc complex of the `n`-punctured disc has `q`-simplices only for `0 ≤ q < n`, and its
  augmentation is a point in degree `−1`. `K(M)` has every homological degree `q ≥ 0`. The arc
  spectral sequence is not augmented: its zeroth column on `E²` is `coker(K_2 → K_1)`, not
  `H_1(K)`.
- `U` acts on homology as a `k`-linear sum of gluing maps; no single map of spaces and no algebraic
  morphism induces it.

## Exact supplier contracts

### From Mathlib

- `IsConj`, `ConjClasses`, `ConjClasses.mem_carrier_iff_mk_eq`, `ConjClasses.mk_eq_mk_iff_isConj`
  (`Mathlib/Algebra/Group/Conj.lean`): conjugacy and conjugacy classes, with `c.carrier` the set of
  elements of the class.
- `Subgroup.closure`, `MonoidHom.map_closure`, `Subgroup.map_top_of_surjective`
  (`Mathlib/Algebra/Group/Subgroup/`): generated subgroups and their images.
- `Sylow.isPretransitive_of_finite`, `IsPGroup.exists_le_sylow`, `Sylow.card_eq_multiplicity`
  (`Mathlib/GroupTheory/Sylow.lean`): Sylow conjugacy, containment of `p`-subgroups in Sylow
  subgroups and the order of a Sylow subgroup, used in §0.2.
- `MonoidAlgebra`, `MonoidAlgebra.single`, `MonoidAlgebra.mapDomainLinearMap`,
  `MonoidAlgebra.lhom_ext'` (`Mathlib/Algebra/MonoidAlgebra/`): the component ring is the monoid
  algebra of the braid-orbit monoid, and the permutation modules `k[X]` are monoid algebras of
  sets.
- `Rep`, `Rep.ofMulAction`, `Rep.res`, `Rep.ofHom`, `Representation.ofMulAction`,
  `groupHomology`, `groupHomology.map` (`Mathlib/RepresentationTheory/`): representations, the
  permutation representation of an action, restriction along a homomorphism and group homology,
  functorial in a homomorphism `f : G →* H` together with a morphism `A ⟶ Rep.res f B`. Group
  homology is defined by inhomogeneous chains and is universe-monomorphic.
- `CategoryTheory.GradedObject` (`Mathlib/CategoryTheory/GradedObject.lean`): the carrier of
  internally graded families.
- `CategoryTheory.SpectralSequence` (`Mathlib/Algebra/Homology/SpectralSequence/Basic.lean`):
  pages and differentials only; it carries no convergence statement, which every use below proves
  separately.
- `CategoryTheory.Functor.leftDerived` (`Mathlib/CategoryTheory/Abelian/LeftDerived.lean`): left
  derived functors in an abelian category with enough projectives, compared with the graded `Tor`
  of DGAInfinity.
- `IsCoveringMap` (`Mathlib/Topology/Covering/Basic.lean`), `FreeGroup`
  (`Mathlib/GroupTheory/FreeGroup/Basic.lean`), `Module.rank`.
- `AlgebraicGeometry.Scheme.EllAdicCohomology`
  (`Mathlib/AlgebraicGeometry/Sites/ElladicCohomology.lean`): pro-étale `ℤ_ℓ`-cohomology of a
  scheme; the étale bound of §5.3 uses the classical étale cohomology of the parent roadmap's
  suppliers, and this declaration is recorded only to say what the pins contain.

### From Tau Ceti

- `TauCeti.BraidGroup n`, the Artin–Tits group of type `A_(n−1)`, with `TauCeti.BraidGroup.sigma`,
  `TauCeti.BraidGroup.lift` and `TauCeti.BraidGroup.lift_sigma` (the presentation: a family
  satisfying far commutativity and the braid relation extends uniquely),
  `TauCeti.BraidGroup.sigma_mul_sigma_comm`, `TauCeti.BraidGroup.sigma_braid`,
  `TauCeti.BraidGroup.sigma_induction_on`, `TauCeti.BraidGroup.strand`,
  `TauCeti.BraidGroup.strandSucc`, `TauCeti.BraidGroup.permHom` and
  `TauCeti.BraidGroup.pureSubgroup`, all in the module
  `TauCeti.GroupTheory.SpecificGroups.Braid.Basic`. `BraidGroup 0` and `BraidGroup 1` are trivial.

### From TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups

- §IG.3.2, *The Hurwitz braid action* (`HurwitzAction.action`): the left action of `B_r` on `G^r`
  by positive moves, preserving the ordered product, the generated subgroup and the multiset of
  classes.
- §IG.3.2, *The braid-orbit monoid* (`BraidOrbitMonoid`): `c`-valued tuples of every length
  modulo braids, with concatenation; it contains the empty tuple and non-generating tuples, and a
  tuple of product one is central.
- §IG.3.2, *Extracting an element of a single class*: for `c` a single class generating `G` there
  is `N(G, c)` such that every generating tuple in `c^n`, `n ≥ N`, is braid equivalent to a tuple
  `(g, g_2, …, g_n)` for any prescribed `g ∈ c`, with `(g_2, …, g_n)` still generating.
- §IG.5.1, *Ordered and unordered configurations* and *Configurations and punctured-disc groups*:
  `Conf_n(𝔻)` is aspherical with fundamental group `TauCeti.BraidGroup n`, the adjacent exchanges
  corresponding to `TauCeti.BraidGroup.sigma`.
- §IG.5.2, *Marked topological Hurwitz spaces*: `Hur_{G,n} = Ẽ ×_{B_n} G^n` and its subcovers with
  fibres `c^n`, generating tuples, and generating tuples in `c^n`; §IG.5.2, *Forgetting the boundary
  marking*: `G` acts by simultaneous conjugation, the quotient forgets the boundary marking, and
  the stabilizer of a tuple with exact image `H` is `C_G(H)`.
- §IG.5.3, *Arithmetic Hurwitz stacks and schemes*: the tame Hurwitz schemes over `ℤ[1/|G|]`,
  including the variant with affine branch locus that is ramified or unramified at `∞`, which is
  EVW's `Hn_{G,n}`, and its class loci for rational classes; §IG.5.3, *Analytic and topological
  Hurwitz comparison*: for centreless `G` the complex points of `Hn^c_{G,n}` are `CHur^c_{G,n}/G`.
- §IG.5.5, *Fixed-degree Hurwitz mod-`ℓ` comparison*: for centreless `G`, a rational class `c`
  generating `G`, `q` prime to `|G|`, fixed `n` and a prime `ℓ > max(|G|, q, n)`, an isomorphism
  `H^i(Hn^c_{G,n}(ℂ), ℤ/ℓ) ≅ H^i_ét(Hn^c_{G,n} ⊗ 𝔽̄_q, ℤ/ℓ)` for every `i`; §IG.5.5, *Coefficient
  towers and rational Betti dimensions*: the same at every level `ℤ/ℓ^a`, compatibly, and the rank
  of finitely generated `ℤ_ℓ`-cohomology is at most the mod-`ℓ` dimension.

### From TauCetiRoadmap.ReductiveGroups

- Layer 11A: the based comparison of plane and disc configurations with `TauCeti.BraidGroup n`,
  with the positive half twist checked against the convention of §IG.3.2.
- Layer 11B: the finite face/chamber Salvetti model of a finite real reflection arrangement, its
  good open-star cover with contractible intersections, its quotient with one vertex and one
  one-cell per simple wall, and the based identification of the fundamental group of the quotient
  with the Artin group.

What ReductiveGroups must provide (gap:reductive-salvetti-homotopy-type): in Layer 11B, the full
`W`-equivariant homotopy equivalence between the Salvetti complex and the complexified complement
(not only its two-skeleton), and the cell count of the quotient complex, one cell of dimension
`|T|` for each subset `T` of the simple reflections.

### From TauCetiRoadmap.ClassifyingSpaces

- Stage 4, items 16–17: for a `K(G, 1)` CW complex the augmented cellular chains of its universal
  cover are a free resolution of `ℤ`, and the homology with local coefficients in a `G`-module `M`
  is Mathlib's `groupHomology` of `M`, naturally in both variables and compatibly with long exact
  sequences.

### From TauCetiRoadmap.AlgebraicTopology

- Stage 2: singular chains and homology with coefficients in a field; `H_0` is free on path
  components.
- Stage 4: CW complexes, cellular homology and its comparison with singular homology, and the
  realization `simplicialRealizationCW` of a simplicial set (item 7).
- Stage 5: the cross product and Künneth isomorphism over a field (item 1); finite covers, transfer,
  the Cartan–Leray spectral sequence and, when `|G|` is invertible, the identification of the
  homology of a quotient by a finite group with coinvariants (item 3); the Serre spectral sequence
  of a fibre bundle (item 5).
- Stage 8: relative simplicial approximation, Hurewicz and Whitehead theorems, CW approximation.

What AlgebraicTopology must provide (gap:algtop-semisimplicial-realization): in Stage 4, the thick
geometric realization of a semisimplicial space, its skeletal filtration, and the first-quadrant
homology spectral sequence `E¹_(q,p) = H_p(X_q; k) ⇒ H_(p+q)(‖X‖; k)` with `d¹` the alternating sum
of the face maps, including its naturality and finite-diagonal convergence.

What AlgebraicTopology must provide (gap:algtop-borel-construction): in Stage 5, the Borel
construction `EΓ ×_Γ X` of a discrete group acting on a space, functorial along a homomorphism
together with an equivariant map, the induced-space equivalence
`EΓ ×_Γ (Γ/Λ × Y) ≃ EΛ ×_Λ Y` for a subgroup `Λ`, and the associated bundle with fibre the
realization of a semisimplicial `Γ`-set.

What AlgebraicTopology must provide (gap:algtop-join-connectivity): in Stage 8, the connectivity of
a join of simplicial complexes, `conn(X * Y) ≥ conn X + conn Y + 2` including the empty
(`(−2)`-connected) and nonempty (`(−1)`-connected) boundary cases, and the criterion that a
simplicial complex is `m`-connected when every simplicial map from a triangulated `k`-sphere,
`k ≤ m`, extends over a triangulated disc.

### From TauCetiRoadmap.GeometricTopology

- Layer 1: collar and tubular neighbourhood theorems for smooth manifolds with boundary.
- Layer 3: the group `Diff(M, ∂M)` of a compact manifold with the `C^∞` topology, fixing the
  boundary pointwise, as a topological group.

What GeometricTopology must provide (gap:geomtop-arc-isotopy-extension): in Layer 1, smooth
isotopy extension for a finite system of disjoint properly embedded arcs in a compact surface,
relative to a closed subset of the boundary, together with cutting a surface along such a system.

What GeometricTopology must provide (gap:geomtop-marked-disc-diffeomorphisms): in Layer 3, the
closed subgroup of `Diff(D, ∂D)` preserving a finite set `P` of interior points setwise, and the
identification of its group of components with the topological mapping class group of
`(D, P)` relative to `∂D` of MordellLawrenceVenkatesh §5.9.

### From TauCetiRoadmap.MordellLawrenceVenkatesh

- §5.1 surfaces with boundary and punctures; §5.7 annular neighbourhoods and cutting; §5.9 the
  mapping class group `Mod(S)` of orientation-preserving homeomorphisms fixing `∂S` pointwise up to
  isotopy relative to `∂S`, which may permute the punctures, with `Mod(D²) = 1`; §5.17 the
  evaluation fibration `Homeo⁺(S, ∂S) → int(S)` with fibre the homeomorphisms fixing the marked
  point.

### From TauCetiRoadmap.DGAInfinity

- Layer 0: graded modules as graded objects and as internal direct sums, with shifts and direct
  sums.
- Layer 1: DG algebras from ordinary graded algebras with zero differential, right and left DG
  modules, the tensor product and the derived tensor target, extension of scalars.
- Layer 5: derived tensor products and semi-free resolutions.

What DGAInfinity must provide (gap:dga-internally-graded-modules): in Layer 1, for a connected
nonnegatively graded noncommutative algebra `R` over a field, the abelian categories of graded left
and right `R`-modules with an internal grading separate from the cohomological grading and without
Koszul signs, the balanced tensor product `N ⊗_R M` with the relation `n r ⊗ m = n ⊗ r m` and its
universal property, tensor evaluation on graded free modules `R[q]`, and the internal shift.

What DGAInfinity must provide (gap:dga-graded-tor-spectral-sequences): in Layer 5, for such `R`,
graded `Tor_i^R(N, M)` of a right and a left module computed by graded free resolutions, with long
exact sequences in either variable, its comparison with `CategoryTheory.Functor.leftDerived`, the
composite-functor spectral sequence `Tor_i^(R̄)(k, Tor_j^R(R̄, M)) ⇒ Tor_(i+j)^R(k, M)` for a
quotient `R → R̄ → k`, and the hyperhomology spectral sequence of a bounded-below complex of right
modules tensored with a left module, all preserving the internal grading and with finite-diagonal
convergence.

## How to read the build

Layer 0 is algebra on tuples: the nonsplitting property, the Hurwitz representation of the
braid group on the fibres, gluing, the identification of Hurwitz homology with braid-group
homology, the component ring `R` and the central sum `U`, and the stability of `U` on `R`. Layer
1 is graded homological algebra over `R`: from the finiteness of `R/UR` and `R[U]` it proves
that the K-complex of any graded `R`-module has linearly growing homology once its first two
homology groups are bounded, and that `U` is then an isomorphism in high degrees. Layer 2 is the
topology of the punctured disc: mapping classes, arcs, their combinatorial coset model, stabilizers
and connectivity. Layer 3 uses the arc complex to resolve each Hurwitz space and identifies the
rows of the resulting spectral sequence with K-complexes. Layer 4 runs the induction and proves
stability for all three kinds of Hurwitz spaces. Layer 5 bounds the number of cells of each
Hurwitz space and turns stability into uniform Betti bounds, topological and étale. Layers 1
and 2 are independent of each other; Layer 3 needs both.

## Layer 0: nonsplitting classes, the Hurwitz representation and the component ring

This layer fixes the algebra of `c`-valued tuples. Its Lean definitions make the stability
theorems of Layer 4 statable.

### 0.1 Nonsplitting classes

Define `IsNonsplitting c` for a conjugacy class `c` of a group `G`: `c` generates `G`, and for
every subgroup `H ≤ G` any two elements of `c ∩ H` are conjugate by an element of `H`. Because `c`
is a single class of `G`, the intersection `c ∩ H` is stable under conjugation by `H`, so the
second condition says exactly that `c ∩ H` is empty or a single conjugacy class of `H`
(EVW16 Definition 3.1, p. 12; EVW16 line 537). *Needs:* Mathlib `ConjClasses`, `Subgroup.closure`.

- `IsNonsplitting c` implies that `c` generates `G`.
- The pairwise-conjugacy formulation is equivalent to the empty-or-one-class formulation, given
  that `c` is a whole conjugacy class of `G`.
- If `c ∩ H` is nonempty and generates `H`, the class `c ∩ H` of `H` is nonsplitting in `H`.
- A group isomorphism carries a nonsplitting class to a nonsplitting class.

**Checks.**

- For the trivial group and `c = {1}` the property holds: `c` generates and every intersection is
  `{1}`.
- In `S₃` the transposition class is nonsplitting: the subgroups are `S₃`, `A₃`, the three groups
  of order two and the trivial group, with intersections `c`, `∅`, one transposition and `∅`.
- In `S₄` the transposition class is not nonsplitting: `H = ⟨(12), (34)⟩` is abelian and contains
  the two transpositions `(12)` and `(34)`, which are not conjugate in `H`. For this class the
  number of components of `Hur^c_{S₄,n}` grows at least linearly in `n` (EVW16 line 131).
- In `C₆` the class of the involution has the subgroup property but does not generate, so it is not
  nonsplitting; a definition without generation would accept it.
- In `A₄` one class of 3-cycles is nonsplitting: its intersection with each subgroup of order three
  is a single element, and it misses the Klein four-group.

### 0.2 The involution class of a group of order `2s`

Prove: if `|G| = 2s` with `s` odd, the elements of order two form one conjugacy class `c`, and if
`c` generates `G` then `c` is nonsplitting (EVW16 Lemma 3.2, p. 12; EVW16 line 544). *Proof
sketch.* The Sylow 2-subgroups have order two and are conjugate, so their nonidentity elements form
the unique class of involutions; a subgroup `H` containing an involution has order `2s'` with `s'`
odd, and the same argument in `H` shows `c ∩ H` is one class of `H`. *Needs:* §0.1; Mathlib
`Sylow.isPretransitive_of_finite`, `IsPGroup.exists_le_sylow`, `Sylow.card_eq_multiplicity`.

**Checks.**

- `S₃` and every dihedral group of order `2s` with `s` odd satisfy both hypotheses.
- `C₆` has order `2 · 3` and a unique involution, which does not generate: generation is not a
  consequence of the order condition.
- In `S₄`, of order `24`, the involutions form two classes, and the order hypothesis fails.

### 0.3 The Hurwitz representation of the braid group

Define the positive move `hurwitzMoveFun i` on `Fin n → G`, replacing the entries at the positions
`TauCeti.BraidGroup.strand i` and `TauCeti.BraidGroup.strandSucc i` by `(a b a⁻¹, a)`, its inverse
`hurwitzMoveInvFun i`, and the permutation `hurwitzMove i`. Prove the far commutativity
`hurwitzMove_comm` and the braid relation `hurwitzMove_braid`, and define `hurwitzAction n G` as the
homomorphism `TauCeti.BraidGroup n →* Equiv.Perm (Fin n → G)` given by `TauCeti.BraidGroup.lift`.
This is the action of §IG.3.2 on the pinned braid group. Define the fibre `HurwitzFibre c full n`
of tuples with entries in `c`, generating `G` when `full` holds (fields `HurwitzFibre.tuple`,
`HurwitzFibre.mem`, `HurwitzFibre.gen`), with the braid action
`HurwitzFibre.instMulAction`; the simultaneous conjugation `conjFibre h`, the relation
`conjSetoid`, and the unmarked fibre `UnmarkedFibre c full n`, its quotient, with the induced action
`UnmarkedFibre.instMulAction` and class map `UnmarkedFibre.mk` (EVW16 Definition 2.2 and §2.4,
pp. 9–11; EVW16 lines 399–416). *Needs:* Tau Ceti `TauCeti.BraidGroup.lift`,
`TauCeti.BraidGroup.sigma_induction_on`; Mathlib `ConjClasses`, `Subgroup.closure`; §IG.3.2 *The
Hurwitz braid action*.

- The generator `σ_i` acts by the `i`-th move (`hurwitzAction_sigma`).
- A property of tuples preserved by every move is preserved by every braid (`hurwitzAction_iff`),
  and a map of tuples that intertwines each move with the image of `σ_i` under a homomorphism of
  braid groups intertwines every braid (`hurwitzAction_comm`).
- A move preserves the condition that all entries lie in `c` (`hurwitzMoveFun_mem_iff`) and the
  generated subgroup (`closure_range_hurwitzMoveFun`); hence every braid preserves the fibre
  conditions (`hurwitzFibre_prop_iff`), and the action on fibres is computed on tuples
  (`HurwitzFibre.smul_tuple`).
- A conjugacy class is closed under conjugation (`conj_mem_carrier`); moves commute with
  simultaneous conjugation (`hurwitzMoveFun_conj`), so the braid action commutes with it
  (`smul_conjFibre`) and descends to classes, where it is computed on representatives
  (`unmarked_smul_mk`).
- The ordered product of a tuple is invariant under the braid action, not only up to conjugacy.

**Checks.**

- For `a = (12)` and `b = (23)` in `S₃` the move gives `((13), (12))`, not the plain swap
  `((23), (12))`; both tuples have product `(123)`.
- For `G = S₃`, `c` the transpositions and `n = 2`, the fibre `c²` has nine points and five braid
  orbits: the three constant pairs are fixed, and the six others form two orbits of size three,
  with boundary products `(123)` and `(132)`. The fibre `HurwitzFibre c true 2` has six points,
  since the constant pairs generate only a group of order two.
- In the same case the unmarked fibre has two points: the constant pairs form one conjugation
  orbit, and the six non-constant pairs another, on which `S₃` acts freely because
  `C_{S₃}(S₃) = 1`.
- At `n = 0` the fibre is the empty tuple; `HurwitzFibre c true 0` is empty unless `G` is trivial,
  because the empty tuple generates the trivial subgroup.
- For `G = C₂` with its nontrivial class every fibre `c^n` is a single point fixed by every braid,
  so the Hurwitz space is `Conf_n` itself.

### 0.4 The block inclusion and gluing

Define the block inclusion `shiftHom m n : TauCeti.BraidGroup n →* TauCeti.BraidGroup (m + n)`
sending `σ_i` to `σ_(m+i)` (`shiftHom_sigma`), and prove that concatenation with a fixed prefix of
length `m` is equivariant along it (`hurwitzAction_shift`). Define `glue c full m g`, which
prepends the constant block `(g, …, g)` of length `m` to a fibre point; it preserves the class
condition and generation, is equivariant along the block inclusion (`glue_smul`), and satisfies
`glue g (h s h⁻¹) = h · glue (h⁻¹ g h) s · h⁻¹` (`glue_conjFibre`). Geometrically, for a fixed
point `t ∈ c^m` the map `Hur_n → Hur_(m+n)` induced on Borel constructions by
`(shiftHom m n, t ++ −)` glues the cover with monodromy `t` to the left; the general gluing
`Hur_m × Hur_n → Hur_(m+n)` from the block inclusion `B_m × B_n → B_(m+n)` and concatenation is
associative and unital up to coherent homotopy and equivariant for simultaneous conjugation
(EVW16 §2.6, pp. 11–12; EVW16 line 509). *Needs:* §0.3; Tau Ceti `TauCeti.BraidGroup.lift`;
§IG.5.2 *Marked topological Hurwitz spaces*; AlgebraicTopology Stage 5 (gap:algtop-borel-construction)
for the gluing of spaces.

- The glued tuple has boundary product `∂t · ∂s`, in this order, and generated subgroup
  `⟨⟨t⟩, ⟨s⟩⟩`.
- The two three-fold gluings are homotopic, hence equal on homology; the empty tuple is a unit up
  to homotopy.
- Gluing commutes with simultaneous conjugation of both inputs.

**Checks.**

- Gluing the empty tuple on the left is the identity on tuples, and `shiftHom 0 n` is the identity
  of `B_n`.
- For `m = 1`, `shiftHom 1 2` sends the generator of `B_2` to `σ_2` of `B_3`, not `σ_1`: the block
  sits on the last strands.
- Gluing a tuple generating a proper subgroup `H` with an element outside `H` leaves the stratum of
  exact image `H`, so gluing does not preserve exact-image strata.

### 0.5 Hurwitz homology as braid-group homology

Prove: for every `B_n`-set `X`, the covering space `Ẽ ×_{B_n} X → Conf_n` associated with `X` has
`H_p(Ẽ ×_{B_n} X; k) ≅ H_p(B_n; k[X])` (Mathlib `groupHomology` of `Rep.ofMulAction k (B_n) X`),
naturally in `X`; for a homomorphism `f : B_n → B_m` and an `f`-equivariant map `X → Y` the induced
map of Borel constructions corresponds to `groupHomology.map`. Applied to the fibres of §0.3 this
identifies `H_p(Hur_n; k)`, `H_p(CHur_n; k)`, `H_p(Hur_n/G; k)` and `H_p(CHur_n/G; k)` with braid-group
homology with coefficients in `k[HurwitzFibre c false n]`, `k[HurwitzFibre c true n]` and
`k[UnmarkedFibre c full n]`; the quotient `Hur_n/G` is the covering space with fibre
`c^n/G`, because the conjugation action on the fibre commutes with the braid action. Applied to
`glue` it identifies the gluing of a component with `groupHomology.map (shiftHom m n)` of the map
of permutation modules (EVW16 §2.2, p. 10, Borel construction; EVW16 line 426). *Proof sketch.*
`Conf_n` is a `K(B_n, 1)` (§IG.5.1); the homology of a covering space is the homology of the base
with coefficients in the permutation local system of the fibre (AlgebraicTopology Stage 5, item 3),
which for a `K(B_n, 1)` is group homology with coefficients in `k[X]` (ClassifyingSpaces Stage 4,
item 17, after CW approximation, AlgebraicTopology Stage 8). *Needs:* §0.3, §0.4; §IG.5.1,
§IG.5.2; ClassifyingSpaces Stage 4; AlgebraicTopology Stages 5 and 8; Mathlib `groupHomology`,
`groupHomology.map`.

**Checks.**

- For `G` trivial the fibre is a point and the statement is `H_p(Conf_n; k) ≅ H_p(B_n; k)`.
- In degree zero, `H_0(B_n; k[X])` is the free vector space on the orbits `X/B_n`, matching
  `H_0` of the covering space as the free vector space on its components: for `S₃`, its
  transpositions and `n = 2` it has dimension five.
- For a free transitive `B_n`-set `X = B_n` the covering space is the universal cover, and
  `H_p(B_n; k[B_n])` vanishes for `p > 0`.

### 0.6 The component ring

Define `R` as Mathlib's `MonoidAlgebra k S` of the braid-orbit monoid `S = ⊔_n c^n/B_n` of
§IG.3.2, graded by length, `R_n = k[c^n/B_n]`, with the augmentation `R → R_0 = k`, the conjugation
action of `G` and the grading by boundary product. Write `r_g` for the basis element of the
one-term tuple `(g)`. Then `R` is generated by the `r_g`, `g ∈ c`, subject to
`r_g r_h = r_(g h g⁻¹) r_g`, and gluing identifies `R` with `⊕_n H_0(Hur_n; k)` as graded algebras
(EVW16 §3.3, p. 13; EVW16 lines 561–569). *Needs:* §IG.3.2 *The braid-orbit monoid*, *The Hurwitz
braid action*; §0.4, §0.5; Mathlib `MonoidAlgebra`, `MonoidAlgebra.single`; DGAInfinity Layer 0
for the graded algebra structure.

- The braid orbits form a homogeneous basis of `R`.
- A family of elements of a `k`-algebra satisfying the Hurwitz relations extends uniquely to an
  algebra map from `R`.
- The relation `r_g r_h = r_(g h g⁻¹) r_g` holds; equivalently `r_h r_(h⁻¹ g h) = r_g r_h`.
- The augmentation sends the empty tuple to `1` and every basis element of positive degree to `0`.
- The basis element of a tuple of boundary product one is central.
- The identification with `H_0` respects degree, products, conjugation and boundary grading.

**Checks.**

- `R_0 = k`, spanned by the empty tuple, also when `CHur_0` is empty.
- In `S₃` with transpositions, `r_(12) r_(23)` and `r_(23) r_(12)` have boundary products `(123)` and
  `(132)` and are different: `R` is not commutative.
- For `G` trivial and `c = {1}`, `R = k[t]` with `t` of degree one.
- For `S₃` with transpositions, `dim R_2 = 5`, the number of braid orbits on `c²`.
- The one-term tuple `(g)`, `g ≠ 1`, is a basis element of degree one; no product-one quotient is
  taken.

### 0.7 The central stabilization sum and the stabilization operators

For `D ≥ 1` put `U_D = Σ_(g ∈ c) r_g^(D d)`. Each block `r_g^(D d)` has boundary product `g^(D d) = 1`
and is central, so `U_D` is a central element of degree `a = D d`, fixed by simultaneous
conjugation, with boundary product one; no normalizing scalar is used (EVW16 Lemma 3.5, p. 14;
EVW16 line 623). On braid-group homology `U` is induced by the morphism of representations
`markedStabilizer k c full m n`, the sum over `g ∈ c` of `glueRepHom k c full m n g`, the gluing
of `(g, …, g)` of length `m` along `shiftHom m n`; on the unmarked fibres it is
`unmarkedStabilizer k c full m n`, sending the class of `s` to `unmarkedGlueSum`, the sum over `g`
of the classes of `glue g s`. *Needs:* §0.4, §0.5, §0.6; Mathlib `Rep.ofHom`,
`MonoidAlgebra.mapDomainLinearMap`.

- `U_D` commutes with every element of `R`, and the `G`-action fixes it.
- `U_D` is homogeneous of degree `D d` and boundary product one.
- A graded left `R`-linear map intertwines `U_D` on its source and target, and scalar extension of
  the field carries `U_D` to the same integral sum.
- The glue sum does not depend on the representative of a class: it is invariant under
  simultaneous conjugation of the input (`unmarkedGlueSum_conj`, `unmarkedGlueSum_eq_of_mk_eq`),
  and it is equivariant along the block inclusion (`unmarkedGlueSum_smul`). Hence
  `unmarkedStabilizer` is a morphism of representations, and it is the map induced by
  `markedStabilizer` on coinvariants of simultaneous conjugation.

**Checks.**

- For `G = C₂` and `c = {s}`, `d = 2` and `U_D = r_s^(2D)`, which is nonzero.
- For `S₃` with transpositions and `D = 1`, `U_1 = r_(12)² + r_(13)² + r_(23)²` has degree two; the
  product of the three blocks would have degree six.
- For `G` trivial, `U_D = t^D` in `k[t]`.
- `U_(2D)` is not `U_D²`: the square has the mixed terms `r_g^(Dd) r_h^(Dd)`, `g ≠ h`, already for
  `S₃` with transpositions.
- The degree of `U_D` is `D d`, not `|c| D d`.

### 0.8 Stability on components

Prove: if `c` is nonsplitting, there are `D ≥ 1` and `N ≥ 0`, depending only on `(G, c)`, such that
`U_D : R_n → R_(n+Dd)` is an isomorphism for every `n ≥ N` and every permitted field. In particular
`R[U_D]` and `R/U_D R` have finite degree, bounded independently of the field. `D` may be chosen
simultaneously for all subgroups `H` with `c ∩ H` nonempty and generating `H`, and every positive
multiple of an admissible `D` is admissible after enlarging `N` (EVW16 Lemma 3.5, p. 14, using
Proposition 3.4, p. 13; EVW16 lines 574–685). *Proof sketch.* Let `S_n(H)` be the braid orbits of
tuples in `c^n` generating exactly `H`. If it is nonempty, `c ∩ H` generates `H` and is one class of
`H` by nonsplitting, so the extraction of §IG.3.2 applies in `H` and multiplication by
`r_g^d`, `g ∈ c ∩ H`, maps `S_n(H)` onto `S_(n+d)(H)` for large `n`. Surjections between finite sets
whose cardinalities eventually stabilize along each residue class modulo `d` are eventually
bijections; the ratios of two such maps are permutations of bounded finite sets, and a common
exponent `D` makes all the maps `r_g^(Dd)` agree on each `S_n(H)`. Filter `R` by the order of the
exact image; `U_D` is triangular, and on the graded piece of exact image `H` it acts as
`|c ∩ H|` times a bijection, and `|c ∩ H|` divides `|H|`, hence `|G|`, and is a unit. Descend on the
order. Thresholds and exponents are chosen before the field. *Needs:* §0.1, §0.6, §0.7;
§IG.3.2 *Extracting an element of a single class*.

**Checks.**

- For `G` trivial one can take `D = 1` and `N = 0`; `R/UR = k` has degree `0`, while the
  constant `A1` is still at least `1`.
- For `S₄` with transpositions no `D` works: `dim R_n` grows with `n`.
- For `G = S₃`: on the exact-image stratum of a group `H` of order two, `c ∩ H` has one element and
  the diagonal coefficient of `U_D` is `1`, not `|c| = 3`.

### Examples

- `G = S₃`, `c` the transpositions, `D = 1`: `R_2` has dimension five, `U_1` lies in `R_2`, and
  `U_1 : R_n → R_(n+2)` is an isomorphism for large `n`.
- `G` trivial: `R = k[t]`, `U = t^D`, and the stabilization operators of §0.7 are the
  stabilization maps `H_p(B_n; k) → H_p(B_(n+D); k)` adding `D` strands on the left.

### Dependencies

InverseGaloisAndArithmeticFundamentalGroups §§IG.3.2, IG.5.1, IG.5.2; ClassifyingSpaces Stage 4;
AlgebraicTopology Stages 5, 8; DGAInfinity Layer 0; Tau Ceti `TauCeti.BraidGroup`; Mathlib group
homology, representations and monoid algebras.

## Layer 1: graded K-complexes and homological degree bounds

Throughout, `(G, c)` is nonsplitting, `D` is admissible, `U = U_D`, `a = D d`, and `R̄ = R/UR`.
The layer shows that `R` behaves as if it had cohomological dimension one (EVW16 §4, p. 15).

### 1.1 Support degree and internal shift

Use graded left and right `R`-modules with an internal nonnegative grading, morphisms of internal
degree zero, `deg` as in the conventions, and the shift `M[q]`; a homogeneous map of degree `a` is a
degree-zero map `M[a] → N` (EVW16 §1.11, p. 8; EVW16 lines 342–349). Homological complexes keep a
separate chain index. *Needs:* Mathlib `CategoryTheory.GradedObject`; DGAInfinity Layers 0–1
(gap:dga-internally-graded-modules).

- `deg V ≤ b` holds exactly when every piece above `b` is zero.
- For `n ≥ q` the `n`-th piece of `M[q]` is `M_(n−q)`, and it is zero below `q`.
- A nonzero module of finite degree `b` has `deg M[q] = b + q`; the zero module stays zero.
- In an exact sequence `A → B → C`, `deg B ≤ max(deg A, deg C)`; a finite direct sum has the
  maximum of the degrees.
- Shift is an exact functor on degree-zero morphisms.

**Checks.**

- The zero module satisfies `deg ≤ b` for every `b`, including negative `b`.
- `k` concentrated in degree `0` has `k[2]` concentrated in internal degree `2`, whatever its chain
  degree.
- The degree-zero piece of `k[1]` is zero; computing `M_(0−1)` with natural-number subtraction
  would wrongly give `M_0 = k`.
- `R = k[t]` has unbounded support, so `deg R = +∞`.

### 1.2 Central torsion and stability defects

For a graded left `R`-module `M` let `M[U] = ker(U : M → M)`, in the source grading, and `M/UM` in
the target grading; put `A(M) = max(deg M[U], deg M/UM)` and
`δ(M) = max(deg Tor_0^R(R̄, M), deg Tor_1^R(R̄, M))` (EVW16 (4.5.1)–(4.5.3), p. 18;
EVW16 lines 815–827). Finite `A(M)` is the meaning of eventual `U`-stability. *Needs:* §0.7,
§0.8, §1.1; DGAInfinity Layers 1, 5 (gap:dga-graded-tor-spectral-sequences).

- `R̄ ⊗_R M` is naturally `M/UM`, compatibly with the left `R̄`-action.
- `M[U]_n` is the kernel of `U : M_n → M_(n+a)`.
- `H_0^aug(M) = k ⊗_R M = M/R_+ M`.
- For finite `b ≥ A(M)`, `U : M_n → M_(n+a)` is bijective for every `n > b`; the kernel and the
  cokernel conditions can be tested separately, the cokernel in target degree `n + a`.
- Torsion, quotient and `Tor` are natural in `M` and in extension of the field.

**Checks.**

- For `R = k[t]`, `U = t` and `M = R`: the kernel is zero and `R/UR = k` in degree `0`, so
  `A(R) = 0`, while `A1 ≥ 1` by convention.
- For `R = k[t]`, `U = t` and `M = k` in degree `0`: `M[U] = M/UM = k`, and
  `Tor_1^R(k, k) = k[1]`.
- Replacing `M` by `M[q]` shifts the torsion and cokernel degrees by `q`.
- The injective map `t : k[t] → k[t]` has a nonzero cokernel: the kernel alone does not detect
  stability.

### 1.3 Change of rings for the central quotient

Construct, for every graded left `R`-module `M`, a first-quadrant spectral sequence
`E²_(i,j) = Tor_i^(R̄)(k, Tor_j^R(R̄, M)) ⇒ Tor_(i+j)^R(k, M)` preserving the internal grading; the
inner `Tor` is a left `R̄`-module, and commutativity of `R` is not used (EVW16 (4.3.1), p. 17;
EVW16 line 782). *Proof sketch.* `R̄ ⊗_R −` takes graded free `R`-modules to graded free
`R̄`-modules, so the composite-functor spectral sequence applies; each total degree has finitely
many bidegrees. *Needs:* §1.2; DGAInfinity Layer 5 (gap:dga-graded-tor-spectral-sequences).

**Checks.**

- For `M = R` the inner higher `Tor` vanishes and the sequence returns `Tor_i^(R̄)(k, R̄)`, which is
  `k` for `i = 0` and zero otherwise.
- In total degree zero the abutment is `k ⊗_R M`, not `R̄ ⊗_R M`.
- The low-degree exact segment
  `Tor_2^(R̄)(k, R̄ ⊗_R M) → k ⊗_(R̄) Tor_1^R(R̄, M) → Tor_1^R(k, M)` holds.

### 1.4 A balanced tensor estimate

Prove: for a graded right `R`-module `N` and a graded left `R`-module `M`,
`deg(N ⊗_R M) ≤ deg N + deg H_0^aug(M)` whenever the right side is finite; the same holds over `R̄`
(EVW16 Lemma 4.4, p. 17; EVW16 line 785). *Proof sketch.* Filter a bounded `N` from its top degree;
the top piece is a sum of shifted copies of `k`, and right exactness of the balanced tensor product
reduces to `N = k`. *Needs:* §1.1, §1.2; DGAInfinity Layer 1 (gap:dga-internally-graded-modules).

**Checks.**

- `N = k` gives equality with the augmentation coinvariants.
- No flatness of `N` is assumed.

### 1.5 `Tor` over the central quotient

Prove: for a graded left `R̄`-module `V`, `deg Tor_i^(R̄)(k, V) ≤ i deg R̄ + deg V` for every `i ≥ 0`,
and in particular `≤ i A1 + deg V` (EVW16 Lemma 4.5, p. 17; EVW16 line 800). *Proof sketch.* A
graded free right resolution of `k` over `R̄` can be chosen with `i`-th term generated in degrees
`≤ i deg R̄`; tensor with `V` and apply §1.4. *Needs:* §1.4, §1.2; DGAInfinity Layer 5.

**Checks.**

- For `R̄ = k` every positive `Tor` vanishes.
- For `R = k[t]`, `U = t`: `R̄ = k`, and the bound is the degree of `V`.

### 1.6 Central torsion is bounded by quotient `Tor`

Prove: for every graded left `R`-module `M`, `A(M) ≤ δ(M) + A1`; more precisely there is a sequence
`R[U] ⊗_R M → M[U] → Tor_1^R(R̄, M)`, exact in the middle, whose first map has degree zero and whose
second map has degree `a` (EVW16 Lemma 4.6 and (4.6.3), p. 18; EVW16 lines 828–864). *Proof
sketch.* Factor `U : M → M` through `UR ⊗_R M`, tensor the sequences `R[U] → R → UR` and
`UR → R → R̄` with `M`, and apply §1.4 with `deg H_0^aug(M) ≤ deg M/UM ≤ δ(M)`. *Needs:* §1.2,
§1.4; DGAInfinity Layer 5.

**Checks.**

- The tensor factor is `R[U] ⊗_R M`, with `R[U]` the right module; `M ⊗_R R[U]` is not defined for a
  left module `M`.
- For `R = k[t]`, `U = t`, `M = k`: `R[U] = 0`, `M[U] = k` in degree `0`, and the second map, of
  degree `a = 1`, sends it isomorphically onto `Tor_1^R(R̄, M) = k[1]`; `A(M) = 0 ≤ δ(M) + A1 = 2`.

### 1.7 Higher quotient `Tor`

Prove: `deg Tor_i^R(R̄, M) ≤ δ(M) + A1 i` for every `i ≥ 0` (EVW16 Lemma 4.7, p. 19;
EVW16 lines 866–898). *Proof sketch.* `R[U]` is a right `R̄`-module; resolve it by graded free right
`R̄`-modules `Q_j` generated in degrees `≤ (j + 1) A1`, and splice with `R[U] → R → R → R̄` into the
homogeneous complex `P_0 = R`, `P_1 = R[a]`, `P_j = Q_(j−2)[a]` for `j ≥ 2`. The hyperhomology
spectral sequence of `P ⊗_R M` bounds `Tor_b^R(R̄, M)`, `b ≥ 2`, by the pieces
`(b − u − 1) A1 + a + deg Tor_u^R(R̄, M)`, `0 ≤ u ≤ b − 2`, and `a ≤ A1` with induction gives
`δ(M) + b A1`. *Needs:* §1.2, §1.5; DGAInfinity Layer 5 (gap:dga-graded-tor-spectral-sequences).

**Checks.**

- `i = 0, 1` are the definition of `δ(M)`.
- Without the shifts `[a]` the map `U` in the splice is not of degree zero.

### 1.8 Graded Nakayama with support control

Prove: for a graded left `R̄`-module `V` with `deg(k ⊗_(R̄) V)` finite,
`deg V ≤ deg(k ⊗_(R̄) V) + deg R̄`; in particular `k ⊗_(R̄) V = 0` implies `V = 0` (EVW16 Lemma 4.8,
p. 19; EVW16 line 899). *Proof sketch.* Lift a homogeneous basis of the coinvariants; the quotient
by the submodule they generate has zero coinvariants, and its lowest nonzero degree would survive in
the coinvariants. *Needs:* §1.1, §1.2; DGAInfinity Layer 1.

**Checks.**

- Over `R̄` the augmentation ideal is nilpotent, because `deg R̄` is finite, so the statement holds
  for every graded `R̄`-module. Over `R` itself, of infinite degree, the lower bound on the grading
  is needed: `k[t, t⁻¹]`, with `t` of degree one, has zero coinvariants over `k[t]` and is nonzero.
  The vanishing statement over `R` used in §1.18 is for nonnegatively graded modules.
- For `V = R̄` the bound is `deg R̄ ≤ 0 + deg R̄`.
- For `V = k[q]` the coinvariants are `k[q]` and the bound `q ≤ q + deg R̄` holds.

### 1.9 Low augmentation `Tor` controls the defect

Prove: for every graded left `R`-module `M`,
`δ(M) ≤ max(deg H_0^aug(M), deg H_1^aug(M)) + 4 A1` (EVW16 Lemma 4.9 and (4.9.1)–(4.9.4), p. 20;
EVW16 lines 909–927). *Proof sketch.* `deg R̄ ⊗_R M ≤ deg H_0^aug(M) + deg R̄` by §1.4; the
low-degree segment of §1.3 and §1.8 bound `Tor_1^R(R̄, M)` by `deg R̄` plus the larger of
`deg H_1^aug(M)` and `deg Tor_2^(R̄)(k, R̄ ⊗_R M) ≤ 3 deg R̄ + deg H_0^aug(M)`. *Needs:* §1.3,
§1.4, §1.5, §1.8.

**Checks.**

- For `R = k[t]`, `U = t`, `M = k`: `δ(M) = 1`, and the bound is `1 + 4 A1 ≥ 5`.
- For `M = R`: `δ(R) = deg R̄`, and `H_0^aug(R) = k`, `H_1^aug(R) = 0`.

### 1.10 A general `Tor` bound

Prove: for a graded right `R`-module `N` and a graded left `R`-module `M`,
`deg Tor_i^R(N, M) ≤ deg N + max(deg H_0^aug(M), deg H_1^aug(M)) + A1 i + 4 A1` for all `i ≥ 0`
(EVW16 Proposition 4.10, p. 20; EVW16 lines 928–945). *Proof sketch.* Reduce to `N = k` by
filtering; in §1.3 a term of total degree `i = a' + b` has degree at most
`a' deg R̄ + b A1 + δ(M)` by §1.5 and §1.7, and §1.9 bounds `δ(M)`. *Needs:* §1.3, §1.5,
§1.7, §1.9; DGAInfinity Layer 5.

**Checks.**

- No commutativity of `R` and no finite global dimension is used.
- For `R = k[t]`, `M = N = k`: `Tor_1 = k[1]` has degree `1 ≤ 0 + 1 + A1 + 4 A1`.

### 1.11 The K-complex

Define, for a graded left `R`-module `M`, the homological complex `K(M)` with
`K(M)_q = k[c^q] ⊗_k M[q]`, `q ≥ 0`, and differential
`(g_0, …, g_q) ⊗ m ↦ Σ_i (−1)^i (g_0, …, ĝ_i, …, g_q) ⊗ r(g_i^(g_(i+1) ⋯ g_q)) m`, the empty suffix
product being `1`; `k[c^q]` sits in internal degree zero (EVW16 §4.1 and (4.1.1), p. 16;
EVW16 lines 726–740). *Needs:* §0.6, §1.1; Mathlib `TensorProduct`; DGAInfinity Layer 1.

- The `n`-th internal piece in chain degree `q` is `k[c^q] ⊗ M_(n−q)`, zero for `n < q`.
- The differential preserves the internal grading and lowers the chain degree by one; adjacent
  deletions cancel by the relation of §0.6, so `d² = 0`.
- Degree-zero `R`-linear maps induce chain maps, functorially.
- `K(R)` carries the right regular action of `R` on its coefficient factor, with free right terms,
  and `K(M) ≅ K(R) ⊗_R M` naturally.

**Checks.**

- `d((g) ⊗ m) = r_g m`.
- `d((g, h) ⊗ m) = (h) ⊗ r(h⁻¹ g h) m − (g) ⊗ r_h m`, and `d²` gives
  `(r_h r_(h⁻¹ g h) − r_g r_h) m = 0`.
- For `M = k` through the augmentation every differential is zero and `H_q K(k) = k[c^q][q]`.
- For `n < q` the internal `n`-th piece of `K(M)_q` is zero although `K(M)_q` is defined.
- The suffix conjugation is `h⁻¹ g h`. With `h g h⁻¹` the square of the differential on `(g, h) ⊗ m`
  would be `(r_h r_(h g h⁻¹) − r_g r_h) m`, whose two terms have boundary products `h² g h⁻¹` and
  `g h`; these differ, so the terms lie in different braid orbits and do not cancel, whenever `g`
  does not commute with `h²`, for instance for `g = (123)` and `h = (134)` in `A₄`. For a class of
  involutions, such as the transpositions of `S₃`, the two conventions coincide and this example
  does not distinguish them.

### 1.12 Right linearity and the tensor comparison

Prove: the right action on `K(R)_q` commutes with the differential, and evaluation of the balanced
tensor product gives a natural isomorphism of complexes `K(R) ⊗_R M ≅ K(M)`, compatible with
internal shifts and with the action of `U` (EVW16 §4.1, p. 16, and proof of Proposition 4.13,
p. 21). *Proof sketch.* The differential acts by left multiplications on the `R` factor.
*Needs:* §1.11; DGAInfinity Layer 1.

**Checks.**

- On `(g) ⊗ 1` the two sides give `r_g` and `r_g · 1`.
- The generator homotopies of §1.13 are not right `R`-linear; the comparison concerns only the
  differential.

### 1.13 Null-homotopies of right multiplication by generators

Construct, for `g ∈ c`, the `k`-linear map `S_g` on the basis of `K(R)`: for a tuple `w` of length `q`
and a basis element `s` of `R` with boundary product `b`,
`S_g(w; s) = (g^((∂w · b)⁻¹), w; s)`; it raises chain degree and internal degree by one and
satisfies `d S_g + S_g d = ` right multiplication by `r_g` (EVW16 proof of Lemma 4.11, p. 21;
EVW16 lines 953–958). *Needs:* §1.11, §1.12; §IG.3.2 *The braid-orbit monoid*.

- The prefix depends only on the braid orbit of `s`, since the boundary product is braid invariant.
- `S_g` has homological degree `+1` and internal degree `+1`.
- Right multiplication by `r_g` induces zero on `H_*(K(R))`.

**Checks.**

- `S_g(∅; 1) = ((g); 1)` and `d S_g(∅; 1) = (∅; r_g)`.
- On `(∅; s)` with boundary product `b` the prefix is `b g b⁻¹`, and `r_(b g b⁻¹) s = s r_g`; for
  `s = r_h` this is the relation `r_h r_g = r_(h g h⁻¹) r_h`.
- For `G` trivial, `S_g` prefixes `1`, and the identity says that multiplication by `t` is
  null-homotopic in every chain degree.
- With the constant prefix `g` in place of `b g b⁻¹` the identity fails as soon as `b` does not
  commute with `g`.

### 1.14 The positive ideal kills regular K-homology

Prove: for every `q ≥ 0` the right `R`-module `H_q(K(R))` is annihilated by `R_+`; in particular `U`
acts by zero on it (EVW16 Lemma 4.11, p. 21). *Needs:* §1.13, §0.7, §1.12.

**Checks.**

- The annihilation is on homology; multiplication by `r_g` is not zero on chains.
- For `R = k[t]`, `H_0(K(R)) = k`, killed by `t`.

### 1.15 Regular K-homology has linear support

Prove: `deg H_q(K(R)) ≤ A2 + q` for every `q ≥ 0` (EVW16 Proposition 4.12, p. 21;
EVW16 lines 959–978). *Proof sketch.* `U` is an isomorphism on `K(R)_q` in source degrees
`> A1 + q`, hence on cycles; cycles are generated in degrees `≤ A1 + a + q`, and §1.14 turns
generation into a support bound. *Needs:* §0.8, §1.2, §1.14, §1.12.

**Checks.**

- For `R = k[t]` (`G` trivial, `U = t`) the differential `K(R)_(q+1) → K(R)_q` is multiplication by
  `t` for `q` even and zero for `q` odd, so `H_q K(R) = k` in internal degree `q` for `q` even and
  `H_q K(R) = 0` for `q` odd; `deg H_q K(R) = q ≤ A2 + q`.
- The complex `K(R)` is not bounded, since `q` is unbounded; only each homology group is.

### 1.16 Universal coefficients for the K-complex

Construct the first-quadrant spectral sequence `E²_(i,j) = Tor_i^R(H_j(K(R)), M) ⇒ H_(i+j)(K(M))`,
preserving the internal grading, and prove
`deg H_q(K(M)) ≤ max(deg H_0^aug(M), deg H_1^aug(M)) + A1 q + 4 A1 + A2` (EVW16 Proposition 4.13,
p. 21, with the positive slope of the conventions; EVW16 lines 979–988). *Proof sketch.* Apply the
hyperhomology spectral sequence to the right-free complex `K(R)` and a free resolution of `M`; on
the diagonal `i + j = q`, §1.10 and §1.15 give
`max(deg H_0^aug, deg H_1^aug) + (A2 + j) + A1 i + 4 A1`, and `j + A1 i ≤ A1 q` because `A1 ≥ 1`.
*Needs:* §1.12, §1.15, §1.10; DGAInfinity Layer 5; Mathlib `CategoryTheory.SpectralSequence`.

**Checks.**

- For `M = R` the higher `Tor` vanishes and the sequence degenerates to `H_j K(R)`.
- For `G` trivial, `R = k[t]`, `U = t`, `M = k`: `H_q K(k) = k[q]` has degree `q`, and
  `A1 ≥ 1` allows it.
- With `A1 = A(R) = 0` and `A2 = 1` in that example, the bound would be `1 + 0 + 0 + 1 = 2` for
  every `q`, but `H_3 K(k)` has degree `3`.

### 1.17 Low K-homology controls augmentation `Tor`

Prove: there are a natural isomorphism `H_0^aug(M) ≅ H_0(K(M))` and a natural surjection
`H_1(K(M)) → H_1^aug(M)`, preserving the internal grading; so `deg H_i^aug(M) ≤ deg H_i(K(M))` for
`i = 0, 1` (EVW16 (4.14.1), p. 22; EVW16 lines 1007–1035). *Proof sketch.* Factor
`K(M)_1 → M` as `k[c] ⊗ M[1] → R_+ ⊗_R M → M`; the first map is surjective, kills the image of
`K(M)_2` by the relation of §0.6, and the kernel of the second is `Tor_1^R(k, M)`. *Needs:*
§1.11, §1.2; DGAInfinity Layer 5.

**Checks.**

- For `M = k`: `H_1(K(k)) = k[c][1]` maps onto `Tor_1^R(k, k)`, which for `G` trivial is `k[1]`.
- Only the degrees `0` and `1` compare: for `G` trivial and `M = k`, `H_2(K(k)) = k[2]` while
  `Tor_2^(k[t])(k, k) = 0`, since `k[t]` has global dimension one.

### 1.18 Higher K-homology from two low degrees

Prove: if `h_i = deg H_i(K(M))` is finite for `i = 0, 1`, then `h_q ≤ max(h_0, h_1) + A0 q` for
every `q > 1` (EVW16 Theorem 4.2 and (4.2.1), p. 16, with the enlarged constants; proof EVW16 §4.14,
p. 22). *Proof sketch.* Insert §1.17 in §1.16 and use `A1 q + 4 A1 + A2 ≤ (5 A1 + A2) q` for
`q ≥ 2`. If both low groups vanish, the coinvariants vanish and the graded Nakayama lemma over `R`
gives `M = 0`. *Needs:* §1.16, §1.17, §1.2.

**Checks.**

- For `R = k[t]`, `M = k`: `h_0 = 0`, `h_1 = 1`, `h_q = q ≤ 1 + A0 q`.
- The cases `q = 0, 1` are the hypotheses, not conclusions.

### 1.19 Stabilization from low K-homology

Prove: if `b ≥ max(deg H_0(K(M)), deg H_1(K(M)))` is a finite nonnegative integer, then
`U : M_n → M_(n+a)` is an isomorphism for every `n ≥ b + A0`; for `M = R` such a `b` exists. The
constants depend only on `(G, c)` and `D`, not on the permitted field (EVW16 Theorem 4.2, p. 16, and
§4.14, p. 22). *Proof sketch.* §1.6, §1.9 and §1.17 give `A(M) ≤ b + 5 A1 < b + A0`, since
`a ≥ 1`. *Needs:* §1.6, §1.9, §1.17, §1.15, §1.2.

**Checks.**

- The range is in the source degree `n`, not `n + a`.
- For `M = R` and `G` trivial, `b = 0` works and `t : R_n → R_(n+1)` is an isomorphism for all `n`.

### Examples

- `G` trivial: `R = k[t]`, `U = t`, `A(R) = 0`, `A1 = 1`, `A2 = 2`, `A0 = 7`. For `M = k`,
  `H_q K(k) = k[q]` and §1.18 gives `q ≤ 1 + 7 q`.
- `G = C₂`, `c = {s}`, `D = 1`: `R = k[r_s]`, `U = r_s²`, `R̄ = k[r_s]/(r_s²)` of degree one,
  `A1 = max(1, 2, deg R[U], deg R̄) = 2`, `A2 = 4`, `A0 = 14`.

### Dependencies

Layer 0; DGAInfinity Layers 0, 1, 5; Mathlib `CategoryTheory.GradedObject`,
`CategoryTheory.SpectralSequence`, `CategoryTheory.Functor.leftDerived`.

## Layer 2: the truncated arc resolution

`D` is a closed oriented smooth disc with a boundary base point `∗` and a set `P` of `n` interior
points.

### 2.1 The braid group as the mapping class group of the marked disc

Prove: there are compatible isomorphisms
`π_0 Diff⁺(D, P; ∂D) ≅ Mod(D, P) ≅ TauCeti.BraidGroup n ≅ π_1(Conf_n)`, where `Mod(D, P)` is the
group of isotopy classes relative to `∂D` of orientation-preserving homeomorphisms fixing `∂D`
pointwise and preserving `P` setwise (MordellLawrenceVenkatesh §5.9). The generator `σ_i`
corresponds to the positive half twist exchanging the `i`-th and `(i+1)`-st points (EVW16 §2.1,
p. 8; EVW16 lines 354–368). *Proof sketch.* The evaluation map `Homeo⁺(D, ∂D) → Conf_n(int D)`
at `P` is a locally trivial bundle with fibre the homeomorphisms preserving `P` (the argument of
MordellLawrenceVenkatesh §5.17 with `n` points), and `Homeo⁺(D, ∂D)` is contractible by the
Alexander trick; the homotopy sequence identifies `π_1(Conf_n)` with `Mod(D, P)`. Compare with the
generators of §IG.5.1 and ReductiveGroups Layer 11A, and with the smooth group through GeometricTopology
Layer 3. *Needs:* Tau Ceti `TauCeti.BraidGroup`; §IG.5.1; MordellLawrenceVenkatesh §§5.9, 5.17;
ReductiveGroups Layer 11A; GeometricTopology Layer 3 (gap:geomtop-marked-disc-diffeomorphisms).

**Checks.**

- `n = 0, 1`: all three groups are trivial (`Mod(D²) = 1`).
- `n = 2`: `B_2 ≅ ℤ`, generated by the half twist, whose square is the Dehn twist about a curve
  around both points, a pure mapping class.
- The pure mapping classes are `TauCeti.BraidGroup.pureSubgroup n`, the kernel of
  `TauCeti.BraidGroup.permHom`; a full twist is not a half twist.

### 2.2 The based arc complex

Define the arc complex: a vertex is the isotopy class, relative to `∗` and `P`, of a smooth embedded
arc from `∗` to a point of `P` whose interior avoids `∂D` and `P` and whose initial vector is not
tangent to `∂D`; a `q`-simplex is a set of `q + 1` classes with simultaneous representatives
meeting only at `∗`, with distinct tangent directions there and distinct endpoints in `P`. Order a
simplex by the counterclockwise order of its tangent directions at `∗`; faces delete arcs
(EVW16 §5.5, p. 25; EVW16 lines 1139–1159; HW10 Proposition 7.2, p. 35, where the complex is
`A(S; Δ_0, Λ_n)`). *Needs:* §2.1; GeometricTopology Layer 1
(gap:geomtop-arc-isotopy-extension); AlgebraicTopology Stage 4.

- Relative isotopic arcs give the same vertex.
- A finite set of vertices spans a simplex exactly when it has simultaneous representatives as
  stated, with distinct endpoints.
- The `i`-th face deletes the `i`-th arc in the counterclockwise order; the order of a simplex does
  not depend on the representatives.
- There are no `q`-simplices for `q ≥ n`.
- `Diff⁺(D, P; ∂D)` acts simplicially, preserving the order, and the action factors through
  `TauCeti.BraidGroup n` by §2.1.

**Checks.**

- `n = 0`: no vertices; the realization is empty.
- `n = 1`: one vertex up to isotopy and no edges.
- Two arcs ending at the same point of `P` never span an edge, even with disjoint interiors.
- With other points present, arcs to a fixed point need not be isotopic: the vertices are not the
  finite set `P`.
- Pairwise disjointness of representatives chosen separately does not give a simplex; simultaneous
  representatives are required.

### 2.3 The truncated braid-coset model

Define, for `0 ≤ q < n`, the subgroup `L_(n,q) ≤ B_n` generated by the classical generators
`σ_(q+2), …, σ_(n−1)` (native indices `q + 1, …, n − 2`), trivial when the range is empty; put
`A(n)_q = B_n/L_(n,q)`, left cosets with `B_n` acting on the left, for `q < n`, and `A(n)_q = ∅` for
`q ≥ n`; faces `∂_i(b L_q) = b s_(q,i) L_(q−1)` with `s_(q,i) = σ_(i+1) ⋯ σ_q`, `s_(q,q) = 1`, for
`0 ≤ i ≤ q`, and the augmentation `A(n)_0 → pt` (EVW16 §5.2, p. 23; EVW16 lines 1062–1069, with the
truncation of *Notes on the sources*). The shifted-strand inclusion `B_(n−q−1) → B_n`,
`σ_j ↦ σ_(j+q+1)`, is injective with image `L_(n,q)`. *Proof sketch for injectivity.* Place the
`m = n − q − 1` moving points in a smaller disc and keep the first `q + 1` points outside; lift a
null-homotopy in `Conf_n` to the finite cover that records which `m` points form the moving block,
forget the other block, and shrink the small disc; for `m = 0, 1` both groups are trivial.
*Needs:* Tau Ceti `TauCeti.BraidGroup.sigma`; Mathlib `Subgroup.closure`; §IG.5.1; AlgebraicTopology
Stage 5 (gap:algtop-borel-construction).

- `L_(n,q)` is the closure of the native generators with index at least `q + 1`.
- For `q < n` the shifted inclusion `B_(n−q−1) → B_n` is injective with image `L_(n,q)`.
- `A(n)_q` is a transitive `B_n`-set for `q < n` and empty above.
- Faces are right multiplication by `s_(q,i)` followed by passage to the larger subgroup.
- Left multiplication commutes with the faces and the augmentation.

**Checks.**

- `A(0)_q = ∅` for every `q`.
- `A(1)_0` is a point and `A(1)_1 = ∅`, although `B_1` is trivial and `B_1/L_(1,1)` would be a point.
- For `n ≥ 1`, `L_(n,n−1)` is trivial and `A(n)_(n−1) = B_n`.
- For `n = 3`, `q = 0` the subgroup is generated by the classical `σ_2` (native index `1`), not by
  `σ_1`.

### 2.4 The coset faces are semisimplicial

Prove: the faces are independent of the representative and `B_n`-equivariant, and
`∂_i ∂_j = ∂_(j−1) ∂_i` for `0 ≤ i < j ≤ q`; with the augmentation, `A(n)` is an augmented
semisimplicial `B_n`-set of dimension `n − 1` for `n ≥ 1` (EVW16 Proposition 5.3 and the vertex
description, pp. 23–24; EVW16 lines 1070–1095). *Proof sketch.* `L_q` commutes with `σ_j` for
`j ≤ q` and lies in `L_(q−1)`; for `j = q` use `s_(q,i) = s_(q−1,i) σ_q` with `σ_q ∈ L_(q−2)`; for
`j < q` move `σ_j` through the increasing products by the braid relations. *Needs:* §2.3; Tau Ceti
`TauCeti.BraidGroup.sigma_mul_sigma_comm`, `TauCeti.BraidGroup.sigma_braid`.

**Checks.**

- For `q = 1` the two faces of `b L_1` are `b σ_1 L_0` and `b L_0`, in this order.
- The vertices of `b L_q` are `b L_0, b σ_1 L_0, b σ_2 σ_1 L_0, …, b σ_q ⋯ σ_1 L_0`.
- No degeneracies are asserted.

### 2.5 Arc stabilizers and the coset identification

Prove: for `0 ≤ q < n`, `B_n` acts transitively on the `q`-simplices of the arc complex, the
stabilizer of the standard simplex of straight arcs from `∗` to the first `q + 1` points is
`L_(n,q)`, and `b L_q ↦ b · v_q` is an equivariant isomorphism of augmented semisimplicial sets from
`A(n)` to the arc complex (EVW16 Proposition 5.6 and (5.6.1), pp. 25–27; EVW16 lines 1160–1251).
*Proof sketch.* Straighten two simplices near `∗`, match endpoints using the surjection onto `S_n`,
and retract arcs inside disjoint tubular neighbourhoods. For the stabilizer, isotope a mapping class
fixing the arc classes to one fixing the arcs pointwise, one arc at a time: the obstruction to
removing intersections of an isotopy with the arcs already fixed lies in `π_2` of the punctured disc
relative to an arc, which vanishes. The complement of a neighbourhood of `v_q` is a disc with
`n − q − 1` points, whose mapping classes are the shifted braid group. Deleting the `i`-th arc of
`v_q` is `s_(q,i) · v_(q−1)`. *Needs:* §2.1, §2.2, §2.3, §2.4; GeometricTopology Layers 1, 3
(gap:geomtop-arc-isotopy-extension, gap:geomtop-marked-disc-diffeomorphisms); MordellLawrenceVenkatesh
§5.7.

**Checks.**

- `n = 2`, `q = 1`: the standard edge has trivial stabilizer, and the edges of the arc complex form
  one free `B_2`-orbit.
- A mapping class that fixes each arc class need not fix the arcs pointwise before the isotopy; the
  simultaneous straightening is a step of the proof.
- The face identification `∂_i(v_q) = s_(q,i) v_(q−1)` holds with right multiplication; with left
  multiplication the faces would not commute with the `B_n`-action.

### 2.6 Connectivity of the arc complex

Prove: for `n ≥ 1` the realization of the arc complex, and hence of `A(n)`, is `(n − 2)`-connected;
for `n = 1` this means nonempty and for `n = 2` path connected (EVW16 Proposition 5.6, p. 25; HW10
Lemma 7.1, p. 34, and Proposition 7.2, p. 35; HW10 lines 1631–1667; HW10 Definition 3.4, p. 16).
*Proof sketch.* The larger complex in which several arcs may end at the same point is contractible
by the surgery argument (HW10 Lemma 7.1). Extend a simplicial map of a `k`-sphere, `k ≤ n − 2`,
over a disc in the larger complex; remove bad simplices of maximal dimension, those whose arcs hit
each endpoint at least twice, by replacing their stars with joins: the link maps to a join of arc
complexes of the cut surfaces, which is `(n − p − 2)`-connected by induction. *Needs:* §2.2,
§2.5; AlgebraicTopology Stage 4, Stage 8 (gap:algtop-join-connectivity).

**Checks.**

- `n = 1`: one vertex, nonempty, as required.
- `n = 2`: the arc complex is a connected graph.
- `n = 0`: the complex is empty, and no connectivity is claimed.
- Without distinct endpoints the complex is contractible, but its simplices of dimension `≥ n`
  would spoil the coset model.

### Examples

- `n = 2`: the generator ranges defining `L_(2,0)` and `L_(2,1)` are empty, so
  `A(2)_0 = A(2)_1 = B_2 ≅ ℤ`; the faces of the edge `b` are `b σ_1` and `b`, so `|A(2)|` is the real
  line, contractible and in particular `0`-connected.
- `n = 3`, `q = 0`: `A(3)_0 = B_3/⟨σ_2⟩`, the vertices of the arc complex; their stabilizer is the
  braid group of the two points other than the endpoint.

### Dependencies

Tau Ceti `TauCeti.BraidGroup`; §IG.5.1; ReductiveGroups Layer 11A; MordellLawrenceVenkatesh §§5.7,
5.9, 5.17; GeometricTopology Layers 1, 3; AlgebraicTopology Stages 4, 5, 8. Independent of Layer 1.

## Layer 3: the arc spectral sequence for Hurwitz homology

### 3.1 Graded homology modules of Hurwitz spaces

Define `M_p = ⊕_(n ≥ 0) H_p(Hur_n; k)`, graded by `n`, with the left `R`-action given by gluing a
component on the left (EVW16 (5.0.2), p. 23; EVW16 line 1043). In braid-group homology a basis
element of `R_m` represented by `t` acts by `groupHomology.map (shiftHom m n)` of gluing `t`
(§0.5). *Needs:* §0.4, §0.5, §0.6, §1.1; AlgebraicTopology Stages 2, 5.

- `(M_p)_n = H_p(Hur_n; k)`.
- `M_0` is the regular left `R`-module.
- Simultaneous conjugation acts on `M_p` with `g(r m) = (g r)(g m)`, so `U` acts equivariantly.
- Extension of the field induces the natural comparison, compatibly with grading and action.

**Checks.**

- `(M_0)_0 = k` and `(M_p)_0 = 0` for `p > 0`, since `Hur_0` is a point.
- In degree zero the action is the multiplication of `R`.
- Restricting to full-monodromy tuples changes `M_0`: for nontrivial `G` its degree-zero piece is
  zero, not `k`.
- `p` is the homological degree and `n` the internal degree; they are never combined.

### 3.2 The Borel arc resolution

Construct, for each `n`, the semisimplicial space `X(n)_q = EB_n ×_(B_n) (A(n)_q × c^n)` and its
thick realization `X(n)`, augmented to `Hur_n`; the augmentation is a bundle with fibre `|A(n)|`, and
for `n ≥ 2` it induces isomorphisms `H_t(X(n); k) → H_t(Hur_n; k)` for `t < n − 2` (EVW16 §5.3,
p. 24; EVW16 lines 1099–1111). *Proof sketch.* Realization commutes with the Borel construction;
apply §2.6 and the Serre spectral sequence of the bundle. *Needs:* §2.4, §2.6; §IG.5.2;
AlgebraicTopology Stage 4 (gap:algtop-semisimplicial-realization), Stage 5
(gap:algtop-borel-construction), Stage 8.

- `X(n)_q` is the Borel construction of `A(n)_q × c^n`.
- The augmentation forgets the simplex and realizes to `X(n) → Hur_n`, with fibre `|A(n)|`.
- The skeletal filtration has pieces only for `0 ≤ q < n`.

**Checks.**

- For `q ≥ n` the term is empty.
- `n = 1`: `|A(1)|` is a point and the augmentation is a homotopy equivalence, although the general
  range `t < −1` is empty.
- `n = 0`: the realization is empty while `Hur_0` is a point; no equivalence holds.

### 3.3 Rows are K-complexes

Prove: for `0 ≤ q < n`, `X(n)_q ≃ EB_n ×_(L_q) c^n ≃ c^(q+1) × Hur_(n−q−1)`, so
`H_p(X(n)_q; k) ≅ (K(M_p)_(q+1))_n`; under these identifications the face of `b L_q ↦ b s_(q,i) L_(q−1)`
acts on tuples by `s_(q,i)⁻¹`, removing `g_i` from the first `q + 1` entries and prefixing
`g_i^(g_(i+1) ⋯ g_q)` to the rest, so the alternating face sum is the differential of §1.11 (EVW16
§§5.3–5.4 and Lemma 5.4, pp. 24–25; EVW16 lines 1105–1134). *Proof sketch.* Induce from `L_q`; the
tail subgroup fixes the first `q + 1` entries and acts on the others by the Hurwitz action; the face
`(e, g) ↦ (e s_(q,i), s_(q,i)⁻¹ g)` is freely homotopic to `(e, g) ↦ (e, s_(q,i)⁻¹ g)`. *Needs:*
§3.2, §2.3, §2.5, §3.1, §1.11; §IG.3.2 *The Hurwitz braid action*; AlgebraicTopology
Stage 5.

**Checks.**

- At `q = 0` the term is `k[c] ⊗ H_p(Hur_(n−1))`, not `H_p(Hur_n)`.
- For `q = 1` the two faces send `(g_0, g_1; x)` to `(g_1; g_0^(g_1), x)` and `(g_0; g_1, x)`, matching
  `d((g_0, g_1) ⊗ m) = (g_1) ⊗ r(g_0^(g_1)) m − (g_0) ⊗ r(g_1) m`.
- Using `s_(q,i)` instead of its inverse on tuples gives the conjugation `g_i^((g_(i+1) ⋯ g_q)⁻¹)`,
  which does not match §1.11.

### 3.4 The arc spectral sequence

Construct, from the skeletal filtration of `X(n)`, a first-quadrant homological spectral sequence
`E¹_(q,p) = H_p(X(n)_q; k) = (K(M_p)_(q+1))_n`, zero for `q ≥ n`, with `d¹` the alternating face map
and `d^r` of bidegree `(−r, r − 1)`, converging to `H_(p+q)(X(n); k)`, which is `H_(p+q)(Hur_n; k)`
for `p + q < n − 2`. For `q > 0`, `E²_(q,p) = (H_(q+1) K(M_p))_n`, and
`E²_(0,p) = coker(K(M_p)_2 → K(M_p)_1)_n` (EVW16 Proposition 5.1, p. 23; EVW16 lines 1049–1052).
*Needs:* §3.2, §3.3, §1.11; Mathlib `CategoryTheory.SpectralSequence`; AlgebraicTopology
Stage 4 (gap:algtop-semisimplicial-realization), Stage 5.

- The `E¹` page, `d¹` and the bidegrees of the higher differentials are as stated.
- Row homology is `H_(q+1) K` for `q > 0`; for `q = 0` it is the cokernel.
- The augmentation gives an edge map `E²_(0,p) → (M_p)_n` induced by `K_1 → K_0`.
- Field extension and simultaneous conjugation act compatibly on pages and filtrations.

**Checks.**

- At `q = 0` the `E¹` term is `k[c] ⊗ H_p(Hur_(n−1))`, and `d¹` from `q = 1` has the two terms of
  §3.3.
- For `G` trivial, `M = R = k[t]` and `n = 1`: `coker(K_2 → K_1)` in degree one is `k`, while
  `H_1 K(R)` in degree one is zero.
- A term of total degree `n − 2` is defined, but its abutment is not identified with
  `H_(n−2)(Hur_n)`.
- `E¹` vanishes for `q ≥ n`, because `K_(q+1)` starts in internal degree `q + 1`.

### 3.5 The edge sequence of low K-homology

Prove: for all `p, n` there is an exact sequence
`0 → (H_1 K(M_p))_n → E²_(0,p) → (M_p)_n → (H_0 K(M_p))_n → 0`, whose middle map is the edge map of
§3.4 (EVW16 proof of Theorem 6.1, p. 28; EVW16 lines 1279–1306). *Proof sketch.* Chain algebra
gives the kernel and cokernel of `coker(K_2 → K_1) → K_0`; §3.3 identifies `K_1 → K_0` with the
augmentation; no differential leaves column zero. *Needs:* §3.4, §1.11, §1.17.

**Checks.**

- For `M_0 = R` and `G` trivial the sequence is `0 → 0 → k → k → 0 → 0` in internal degree one.
- The edge map is neither injective nor surjective in general before the higher rows are bounded.

### Examples

- `G` trivial, `p = 0`: `E¹_(q,0) = (K(R)_(q+1))_n = k` for `q < n`, the realization `X(n)` computes
  `H_*(B_n; k)` in degrees `< n − 2`, and the zeroth column is `k` in each degree `n ≥ 1`.

### Dependencies

Layers 0, 1, 2; §IG.5.2; AlgebraicTopology Stages 2, 4, 5, 8; Mathlib
`CategoryTheory.SpectralSequence`.

## Layer 4: linear stability for marked, full-monodromy and unmarked Hurwitz spaces

### 4.1 The inductive degree bound

Prove: for all `p, q ≥ 0`, `deg H_q(K(M_p)) ≤ A2 + A0 (3p + q)`, with constants independent of the
permitted field; for `p > 0` moreover `deg H_0 K(M_p), deg H_1 K(M_p) ≤ A2 + 3 A0 p` (EVW16 proof of
Theorem 6.1, pp. 27–29; EVW16 lines 1267–1309). *Proof sketch.* Induct on `p`. For `p = 0`,
`M_0 = R` and §1.15 applies, as `A0 ≥ 1`. For `p = P > 0` and `n > A2 + 3 A0 P`, the induction
hypothesis kills the terms `E²_(j,P+1−j)`, `j ≥ 2`, of degree `≤ A2 + A0(3P + 4 − 2j)`, and the terms
`E²_(j,P−j)`, `j ≥ 1`, of degree `≤ A2 + A0(3P + 1 − 2j)`; as `A2 ≥ 2` and `A0 ≥ 7`, also `P < n − 2`.
So `E²_(0,P) → (M_P)_n` is an isomorphism and §3.5 kills both low K-groups; §1.18 gives
`q ≥ 2`. *Needs:* §1.15, §1.18, §3.4, §3.5, §3.1, §1.2.

**Checks.**

- For `G` trivial and `p = 0` the bound reads `deg H_q K(R) ≤ 2 + 7 q`, while the true value is `q`
  for `q` even and `−∞` for `q` odd (§1.15).
- Incoming differentials start at `j = 2` on `E²`; treating column zero as `H_1(K)` would break the
  argument.

### 4.2 Marked homological stability

Prove: for a finite group `G` and a nonsplitting class `c`, with `U = U_D` and `a = D d`, there are
`A, B ≥ 0` depending only on `(G, c)` such that for every permitted field `k` and all `p, n ≥ 0`
with `n > A p + B`, `U : H_p(Hur_n; k) → H_p(Hur_(n+a); k)` is an isomorphism; one can take
`A = 3 A0` and `B = A2 + A0 + 2` (EVW16 Theorem 6.1 and (6.1.1), p. 27; EVW16 lines 1256–1261).
*Proof sketch.* §4.1 gives `b = A2 + 3 A0 p` in §1.19. *Needs:* §4.1, §1.19, §0.7, §3.1.

**Checks.**

- For `G` trivial this is stability for `H_p(B_n; k)` under adding `D` strands, with the classical
  range of Arnold well inside `n > A p + B`.
- No single branch insertion of degree one is claimed to stabilize.
- Fields in which `|G|` vanishes and integral coefficients are excluded: Lemma 3.5 of EVW inverts
  `|c ∩ H|`.

### 4.3 Full-monodromy stability

Prove: with `D` chosen simultaneously for all subgroups generated by their intersection with `c`,
and `A, B` enlarged depending only on `(G, c)`, `U` restricts to isomorphisms
`H_p(CHur_n; k) → H_p(CHur_(n+a); k)` for `n > A p + B`. On the stratum of exact image `H` the
diagonal part of `U` is `U_H = Σ_(g ∈ c ∩ H) r_g^(D d)`, with coefficient one (EVW16 Theorem 6.1,
(6.1.2) and (6.1.6), pp. 27–29; EVW16 lines 1262–1337, with the correction of *Notes on the
sources*). *Proof sketch.* Decompose `Hur_n` by exact image; `U` maps the `H`-stratum to strata of
supergroups, its diagonal block is `U_H` for `(H, c ∩ H)`, which is nonsplitting, and induction on
`|H|` with §4.2 for each subgroup gives injectivity and surjectivity on the full stratum. *Needs:*
§4.2, §0.8, §0.1, §0.4; §IG.5.2.

**Checks.**

- For `G` trivial full monodromy is all monodromy, including `n = 0`.
- For nontrivial `G`, `CHur_0` is empty and its homology is zero in every degree.
- For `S₃` with transpositions and `H` of order two, the surviving coefficient of `U_H` is `1`;
  the factor `|c|/|c ∩ H| = 3` does not occur.

### 4.4 Homology of the simultaneous-conjugation quotient

Prove: for `X = Hur_n` or `CHur_n` and a permitted field, `X//G → X/G` induces isomorphisms on
homology and `H_p(X/G; k) ≅ H_p(X; k)_G`. The stabilizer of a point of exact image `H` is `C_G(H)`,
and on `CHur_n` it is `Z(G)` (EVW16 proof of Corollary 6.2, p. 29; EVW16 lines 1347–1360). *Proof
sketch.* Group the exact-image strata into conjugacy classes of subgroups; on each block the Borel
comparison has fibre `BC_G(H)`, acyclic over `k`, and the Cartan–Leray sequence collapses to
coinvariants. In braid-group homology this is `H_p(B_n; k[X/G]) ≅ H_p(B_n; k[X])_G`, as coinvariants
of a finite group of invertible order are exact. *Needs:* §IG.5.2 *Forgetting the boundary
marking*; AlgebraicTopology Stages 2, 5; §0.5.

**Checks.**

- For `G = C₂` conjugation is trivial and the quotient map is the identity.
- In `S₃` the constant tuple `((12), (12))` has stabilizer of order two; the action on `Hur_n` is not
  free.
- The invertibility of `|G|` is needed: for `C₂` acting antipodally on `S²` and `k = 𝔽₂`,
  `H_1(ℝP²; 𝔽₂) = 𝔽₂` while `H_1(S²; 𝔽₂)_(C₂) = 0`.

### 4.5 Unmarked homological stability

Prove: for a nonsplitting class `c` and every permitted field, `U` induces isomorphisms
`H_p(Hur_n/G; k) → H_p(Hur_(n+a)/G; k)` and `H_p(CHur_n/G; k) → H_p(CHur_(n+a)/G; k)` for
`n > A p + B`, with the constants of §§4.2–4.3. EVW state this for centreless `G`, the case in
which `CHur^c_{G,n}/G` is the complex Hurwitz scheme of §5.3; the argument does not use
centrelessness (EVW16 Corollary 6.2, p. 29; EVW16 lines 1341–1346). *Proof sketch.* `U` is fixed
by conjugation and gluing is equivariant, so the isomorphisms of §§4.2–4.3 are isomorphisms of
`k[G]`-modules; take coinvariants and apply §4.4.

In Lean, §4.2, §4.3 and §4.5 together are `hurwitz_homological_stability`: there are `m > 0`
with `g^m = 1` for `g ∈ c` and `A, B` such that for every field `k` with
`(Fintype.card G : k) ≠ 0`, every `full`, `p` and `n > A p + B`, both
`groupHomology.map (shiftHom m n) (markedStabilizer k c full m n) p` and
`groupHomology.map (shiftHom m n) (unmarkedStabilizer k c full m n) p` are bijective. *Needs:*
§4.2, §4.3, §4.4, §0.7, §0.4.

**Checks.**

- The averaging is applied to the isomorphism of `k[G]`-modules, not to a stabilization map of
  quotient spaces, which does not exist.
- For `G = S₃`, `c` the transpositions and `n = 2`, `H_0(Hur_2/G)` has dimension two and
  `H_0(Hur_2)` dimension five; the coinvariants of the five orbits under conjugation are two.

### Examples

- `G = C₂`, `c = {s}`: `Hur_n = Conf_n`, `U` adds `2D` strands, and the theorem is the stability of
  `H_p(B_n; k)` along `n ↦ n + 2D`.
- `G = S₃`, `c` the transpositions: the marked, full-monodromy and unmarked homologies of the spaces
  of `S₃`-covers branched at `n` points stabilize along `n ↦ n + 2D`.

### Dependencies

Layers 0–3; §IG.5.2; AlgebraicTopology Stages 2, 5.

## Layer 5: finite cell models and uniform Betti numbers

### 5.1 Finite cell models of Hurwitz spaces

Construct, for `n ≥ 2`, a finite CW complex `Z_n ≃ Conf_n` with one `q`-cell for each `q`-element
subset of the simple reflections `{s_1, …, s_(n−1)}` of `S_n`, `2^(n−1)` cells in all; `Z_0, Z_1` are
points. Pull back each of the four Hurwitz covers along the homotopy equivalence and lift cells:
each Hurwitz variant with `n` branch points is homotopy equivalent to a CW complex with at most
`(2|G|)^n` cells (EVW16 Proposition 2.5, p. 11; EVW16 lines 501–505; CD95 Theorem 1.4.1, p. 5, and
Corollary 2.2.3, p. 9; CD95 lines 181, 334). *Proof sketch.* Specialize the Salvetti complex of
ReductiveGroups Layer 11B to the braid arrangement of `S_n`, whose complement modulo `S_n` is
`Conf_n(ℂ) ≃ Conf_n(𝔻)` (ReductiveGroups Layer 11A); its quotient has one cell per subset of simple
reflections. A covering of degree `≤ |G|^n` lifts each cell to at most `|G|^n` cells. *Needs:*
ReductiveGroups Layers 11A, 11B (gap:reductive-salvetti-homotopy-type); §§IG.5.1, IG.5.2;
AlgebraicTopology Stages 4, 5.

- For `n ≥ 1` the `q`-cells of `Z_n` are indexed by the `q`-element subsets of `{1, …, n − 1}`.
- `Z_n` is homotopy equivalent to `Conf_n`, compatibly with the identification of the fundamental
  group with `TauCeti.BraidGroup n`.
- Pullback along the equivalence gives homotopy-equivalent finite covers with one lifted cell per
  sheet over each cell.
- Each of `Hur_n`, `CHur_n`, `Hur_n/G`, `CHur_n/G` has a CW model with at most `(2|G|)^n` cells.

**Checks.**

- `Z_2` has one vertex and one edge and is a circle, matching `Conf_2 ≃ S¹`.
- `Z_3` has one 0-cell, two 1-cells and one 2-cell, attached along the relation
  `x y x = y x y` of `B_3`.
- For nontrivial `G`, `CHur_0` is empty and has no cells; a model with a forced base point would be
  wrong.
- A `d`-sheeted cover lifts each open cell to `d` cells; omitting the sheet factor would give the
  bound `2^n` for `Hur_n`.

### 5.2 The uniform field Betti bound

Prove: for a nonsplitting class `c` of a finite group `G` there is `C`, depending only on `(G, c)`,
such that for every permitted field `k` and all `i, n ≥ 0`, each of `H_i(Hur_n; k)`,
`H_i(CHur_n; k)`, `H_i(Hur_n/G; k)`, `H_i(CHur_n/G; k)` has dimension at most `C^(i+1)`; one can take
`C = (2|G|)^(A + B + a + 1)` (EVW16 Proposition 2.5, p. 11, and proof of Proposition 7.8, p. 35;
EVW16 lines 1596–1602). This is `uniform_betti_bound` in Lean, with the four spaces given by
`HurwitzFibre c full n` and `UnmarkedFibre c full n`. *Proof sketch.* Every Betti number with `n`
branch points is at most `(2|G|)^n` by §5.1. If `n > A i + B`, invert stabilizations of degree
`a` along the residue class of `n` modulo `a` down to some `m ≤ A i + B + a`; every inverted map has
source degree above the threshold. Then `(2|G|)^m ≤ C^(i+1)`. *Needs:* §5.1, §4.2, §4.3,
§4.5, §0.5.

**Checks.**

- For `G` trivial, `dim H_i(B_n; k) ≤ C^(i+1)` for all `n`, consistent with `H_i(B_n; k)` being
  independent of `n` for `n ≥ 2i`.
- The reduction keeps the residue class of `n` modulo `a`; stabilization by one branch point is not
  available.
- For `i = 0` and `S₃` with transpositions, `dim H_0(Hur_n; k)` is the number of braid orbits on
  `c^n`, bounded independently of `n` by §0.8, whereas for `S₄` with transpositions it is
  unbounded and no `C` exists.

### 5.3 The uniform étale Betti bound

Prove: let `G` be finite and centreless, `c` a rational conjugacy class, generating `G` and
nonsplitting, `q` a prime power prime to `|G|`, and `Hn^c_{G,n}` the Hurwitz scheme over
`ℤ[1/|G|]` of tame `G`-covers of `ℙ¹` branched at `n` points of `𝔸¹` and possibly at `∞`, with
inertia in `c` (§IG.5.3). There is `C = C(G, c)` such that for every `i, n ≥ 0` and every prime
`ℓ > max(|G|, q, n)`,
`dim_(ℚ_ℓ) H^i_ét(Hn^c_{G,n} ⊗ 𝔽̄_q, ℚ_ℓ) ≤ C^(i+1)` and
`dim_(𝔽_ℓ) H^i_ét(Hn^c_{G,n} ⊗ 𝔽̄_q, 𝔽_ℓ) ≤ C^(i+1)`
(EVW16 Proposition 7.8 and (7.8.1), p. 34; EVW16 lines 1578–1606; Remark 7.9, p. 35).
*Proof sketch.* For the given `n`, §IG.5.5 identifies the mod-`ℓ` étale cohomology with
`H^i(Hn^c_{G,n}(ℂ), 𝔽_ℓ)`, and §IG.5.3 identifies `Hn^c_{G,n}(ℂ)` with `CHur_n/G`; its mod-`ℓ`
cohomology has the dimension of its mod-`ℓ` homology, a finite complex being given by §5.1, and
§5.2 with `k = 𝔽_ℓ` (permitted, as `ℓ > |G|`) bounds it. The coefficient towers of §IG.5.5 bound
the `ℚ_ℓ`-dimension by the `𝔽_ℓ`-dimension. Only the comparison at the given `n` is used; no
comparison at `n + a` and no Frobenius-equivariant stabilization is needed. *Needs:* §5.2, §4.5;
§IG.5.3 *Arithmetic Hurwitz stacks and schemes*, *Analytic and topological Hurwitz comparison*;
§IG.5.5 *Fixed-degree Hurwitz mod-`ℓ` comparison*, *Coefficient towers and rational Betti
dimensions*.

**Checks.**

- The prime `ℓ` depends on `n`; a comparison between the degrees `n` and `n + a` through the fixed-degree
  isomorphisms would need `ℓ > max(|G|, q, n + a)`.
- The rank inequality can be strict: `H¹(ℝP², 𝔽₂) = 𝔽₂` while `H¹(ℝP², ℚ) = 0`; the bound is an upper
  bound only.
- Rationality of `c` is needed for the class locus over `ℤ[1/|G|]` (§IG.5.3); the topological
  stability theorems do not use it.
- If `c` does not generate `G`, `Hn^c_{G,n}` is empty and the bound is trivial (EVW16 Remark 7.9).

### Examples

- `G = S₃`, `c` the transpositions, `q` odd and prime to `3`: the étale Betti numbers of the Hurwitz
  schemes of connected `S₃`-covers of `𝔸¹` with `n` branch points are bounded by `C^(i+1)`
  uniformly in `n`; `S₃ = C₃ ⋊ C₂` is the case `A = C₃` of the groups `A ⋊ C₂` used by EVW for the
  `3`-parts of class groups of quadratic function fields.

### Dependencies

Layers 0–4; ReductiveGroups Layers 11A, 11B; §§IG.5.1–IG.5.3, IG.5.5; AlgebraicTopology
Stages 4, 5.

## Notes on the sources

The theorem and equation numbers of EVW16 agree in the arXiv version and the published article; the
following statements of the source are corrected where they are used.

- EVW16 Definition 2.2 (p. 9; EVW16 lines 395–413): the description of the fibres lists the
  generating tuples of `c^n` and of `G^n` in the wrong order, and calls `Sur(π, G)` a subset of
  `Hom^c(π, G)`. The fibre of `CHur_{G,n}` is the set of generating tuples in `G^n`, that of
  `CHur^c_{G,n}` the generating tuples in `c^n`, and only `Sur^c(π, G)` lies in `Hom^c(π, G)`. The
  parent's §IG.5.2 uses the corrected fibres.
- EVW16 proof of Lemma 4.6 (p. 18; EVW16 line 852): the tensor product before (4.6.3) is written
  `M ⊗_R R[U]`; it is `R[U] ⊗_R M`, as in (4.6.3), since `M` is only a left module.
- EVW16 §5.2 (p. 23; EVW16 lines 1062–1067): `A_q = B_n/L_q` is stated for all `q`; it holds for
  `0 ≤ q < n`, and `A_q = ∅` for `q ≥ n`, since a `q`-simplex needs `q + 1` distinct endpoints. For
  `n = 1` the formula would give a point `A_1 = B_1/L_1`.
- EVW16 (6.1.6) (p. 29; EVW16 line 1325): the diagonal of `U` on the stratum of exact image `Q` is
  `U_Q` itself, not `|c|/|c ∩ Q| · U_Q`; summands with `g ∉ Q` leave the stratum, and each
  summand with `g ∈ Q` occurs once. The induction is unaffected.
- EVW16 Proposition 4.13 and (4.5.3) (pp. 18, 21; EVW16 lines 825–827, 979–988): the bound replaces
  `(q − i) + A1 i` by `A1 q`, which needs `A1 ≥ 1`, while (4.5.3) allows `A1 = A(R) = 0`. For `G`
  trivial, `R = k[t]`, `U = t`, `M = k`: `A(R) = 0`, `A2 = 1`, the stated bound is `2` for every `q`,
  but `H_3 K(k) = k[3]`. The constants of the conventions, with `A1 ≥ max(1, a, A(R))`, repair it;
  Theorem 4.2 and Theorem 6.1 hold with them.
- EVW16 proof of Lemma 4.7 (p. 19; EVW16 lines 872–885): the spliced resolution is displayed with
  `P_0 = P_1 = R`, but multiplication by `U` has degree `a`; the homogeneous complex is `P_0 = R`,
  `P_1 = R[a]`, `P_j = Q_(j−2)[a]`, and `A1 ≥ a` absorbs the shift in the induction.
- EVW16 (7.8.3) (p. 35; EVW16 line 1599): the stabilization is written from `n` to `n + D`; it goes
  from `n` to `n + D d = n + deg U`, and the fixed-degree comparison at both ends needs
  `ℓ > max(|G|, q, n + deg U)`. §5.3 avoids this comparison.

## Downstream consumers

- ArithmeticStatisticsPartVIII §5.19 is conditional on the uniform Betti hypothesis (HS) for
  EVW's Hurwitz schemes `Hn^c_{G,n}` with `G` centreless and `c` a rational nonsplitting class
  generating `G`, for coefficient primes `ℓ > max(|G|, q, n)`; §5.3 proves that hypothesis.

## Worked examples

- *The trivial group.* `G = {1}`, `c = {1}`: fibres are points, `Hur_n = Conf_n`, `R = k[t]`,
  `U = t^D`, the K-complex of `R` (for `D = 1`) has `H_q = k` in degree `q` for even `q` and no odd
  homology, `A(R) = 0`, `A1 = 1`, and
  §4.2 is the homological stability of braid groups. The same example shows that EVW's
  Proposition 4.13 needs `A1 ≥ 1` (§1.16).
- *`S₃` and its transpositions.* `c` is nonsplitting (§0.2). For `n = 2` there are nine tuples,
  five braid orbits (three constant, two of size three with boundary products `(123)` and `(132)`),
  six generating tuples in two orbits, and two classes under conjugation. `U_1 = Σ_t r_t²` has degree
  two, and `U_1 : R_n → R_(n+2)` is eventually an isomorphism.
- *`S₄` and its transpositions.* Not nonsplitting; `dim H_0(Hur_n; k)` grows with `n` and no stability
  of components holds (§0.1, §0.8).

## References

- [EVW16] J. S. Ellenberg, A. Venkatesh, C. Westerland, *Homological stability for Hurwitz spaces
  and the Cohen–Lenstra conjecture over function fields*, Ann. of Math. 183 (2016), 729–786;
  [arXiv:0912.0325v4](https://arxiv.org/abs/0912.0325v4). Locators give the theorem number, the
  page of the arXiv version and its line in the cached text.
- [HW10] A. Hatcher, N. Wahl, *Stabilization for mapping class groups of 3-manifolds*, Duke Math.
  J. 155 (2010), 205–269; [arXiv:0709.2173v4](https://arxiv.org/abs/0709.2173v4), §7, Lemma 7.1 and
  Proposition 7.2, and Definition 3.4.
- [CD95] R. Charney, M. W. Davis, *Finite `K(π, 1)`s for Artin groups*, in *Prospects in Topology*,
  Ann. of Math. Stud. 138 (1995), 110–124;
  [author's copy](https://people.math.osu.edu/davis.12/finitekpi1.pdf), §1.2, Theorem 1.4.1,
  Lemma 2.2.1, Corollary 2.2.3.
