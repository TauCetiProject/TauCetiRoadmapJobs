# Roadmap: smooth mod p representations of GL₂ over a local field

**Summary.** Build the finiteness theory and the local structure theory of smooth representations
of `GL₂(F)`, `F/ℚ_p` finite, on `p`-power torsion modules over the integers `𝒪_L` of a finite
extension `L/ℚ_p`. The first half develops finite presentation in the smooth category through the
augmented Iwasawa algebra `𝒪_L[H] ⊗_{𝒪_L[U]} 𝒪_L[[U]]`, proves Shotton's coherence theorem for
`GL₂(F)/ϖ^ℤ`, the `ℚ_p` finite-length criteria of Colmez–Dospinescu–Nizioł (finite type implies
finite presentation, finite cosocle implies finite length, finite length is detected by smooth
vectors in the dual), the finite length of admissible finitely presented representations for every
`F` (Hu, Vignéras), and Emerton's ordinary parts with their finite-error counit for `F ≠ ℚ_p`. The
second half, for `F` unramified of degree `f`, develops the tame Serre-weight coordinates, the
graded algebra of the pro-`p` Iwahori subgroup and its crossing quotient, the Diamond boxes and
their multiplicity-preserving first-order enlargements, and reaches the two endpoints of
Breuil–Herzig–Hu–Morra–Schraen: the local Gelfand–Kirillov bound `dim_{GL₂(F)} π ≤ f` under the
socle, first-thickening and Iwahori-socle multiplicity hypotheses, and an integral lattice whose
reduction is `Proj_{K/Z₁} σ / 𝔪_{K₁}²`, with commutative endomorphism ring and relatively projective
quotients.

## Scope and ownership

This roadmap owns:

- torsion admissibility for smooth `p`-power torsion representations of an arbitrary `p`-adic Lie
  group (§0.1), the augmented Iwasawa algebra (§0.2), finite presentation in the smooth category
  and its exact-sequence calculus (§§0.3–0.4, 0.7), coherence for amalgams of compact open
  subgroups and its consequence for `GL₂(F)/ϖ^ℤ` (§0.5), Hom base change for finitely generated
  group-algebra modules (§0.6), and the compact-induction obstruction space of Hu (§0.8);
- the `ℚ_p` finite-length criteria of Colmez–Dospinescu–Nizioł §1.4 (Layer 1);
- the category `𝒞` of admissible finitely presented torsion representations of `GL₂(F)`, Emerton's
  ordinary-parts adjunction for `GL₂(F)`, its values on ordinary constituents for `F ≠ ℚ_p`, and
  the finite-error counit with its Banach-lattice version (Layer 2);
- the labelled weight coordinates, the extension-graph map, the tame weight set `W(ρ̄)` for
  unramified `F` and the Diamond modules `D₀(ρ̄)`, `D₁(ρ̄)` (Layer 3);
- the Gelfand–Kirillov dimension of an admissible smooth representation, the central-regular-
  sequence dimension comparison, the explicit saturated valuation and graded algebra of the pro-`p`
  Iwahori subgroup, the crossing algebra, the truncations `W_{χ,n}` and the Iwahori dimension
  criterion (Layer 4);
- the finite-group and first-order extension calculus of `GL₂(𝔽_q)`, `K` and `I` used by
  Breuil–Herzig–Hu–Morra–Schraen, including projective lifts of finite group-algebra projectives over
  a complete discrete valuation ring (Layers 5–6), multiplicity one through the third Iwahori layer
  and the local dimension bound (Layer 7), and the Bockstein maps, the gluing lattice and its
  endomorphisms (Layers 8–9).

It leaves to other roadmaps, by section:

- the smooth category over a ring, smoothness, compact-open invariants, the smooth contragredient,
  change of coefficients, the Grothendieck property with injectives, and smooth and compact
  induction: SmoothRepresentationsOfLocalGroups, targets *is-smooth*, *smooth-rep-category*,
  *compact-open-invariants*, *admissible*, *finiteness-conditions*, *smooth-dual*,
  *coefficient-change* (SR.0.1–SR.0.4), SR.0d.1, and *smooth-induction*, *compact-induction*,
  *frobenius-reciprocity*, *induction-exactness* (SR.2.1). The smooth-dual criterion of §1.6 is
  stated on SR's smooth contragredient; Suggested.lean carries a local copy of the smoothness
  predicate (`IsSmoothRep`, every vector has open stabiliser) and of the span of the smooth vectors
  of the full linear dual (`smoothDualSpan`) only so that its statements elaborate;
- the `GL₂(ℚ_p)` torsion categories, their admissibility (the `GL₂(ℚ_p)` specialisation of §0.1),
  local finiteness, the dual category and projective envelopes: PadicLocalLanglandsForGL2Qp
  §§2.1–2.3; the classification of irreducible mod `p` representations of `GL₂(ℚ_p)`, the Hecke
  operator `T` on `I(σ_r)`, `End_G(I(σ_r)) ≅ k[T]` and freeness: §2.7; the failures for `F ≠ ℚ_p`
  (non-finite-presentation of supersingulars): §2.9; blocks, the Gabriel decomposition and
  projective envelopes: §§5.1, 5.3; the finite-residue fundamental characters and the
  coefficient-linear Pontryagin duality `DualitySupport.torsionDual`: §0.3; Schikhof duality and
  admissible Banach representations: §0.1;
- Serre weights of `GL₂(F)` for every local field, `I(σ) = c-Ind_{KZ}^G σ`, its Hecke algebra
  `k̄[T]` and freeness: FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.5.15;
- ordinary parts as `N(𝒪)`-invariants with the transfer Hecke action of the positive torus,
  followed by localisation, and their derived functors: PotentialAutomorphyInfrastructure §3.7
  (`LocalOrdinaryParts`); §2.1 here keeps Emerton's right adjoint on admissible representations
  of `GL₂(F)`, built on the same Hecke action;
- noetherianity of completed group algebras of compact `p`-adic analytic groups, their freeness
  over open subgroups, the filtered-to-graded transfer of noetherianity and Auslander regularity,
  `p`-valuations, saturation and ordered bases, the weighted graded algebra of a `p`-valued group,
  Auslander regularity and global dimension without `p`-torsion, Lazard's exterior cohomology of
  uniform groups, and the grade `j_R(M)` with canonical dimension `δ_R(M) = gldim R − j_R(M)` and
  its finite-index invariance: NoncommutativeAndEquivariantIwasawa §§0.3, 0.5, 0.7, 0.8, 0.10,
  0.11, 0.13 and F.1;
- the growth `dim_k V^{U_r} ≍ [U:U_r]^{δ/d}` of invariants along the power filtration of a uniform
  group: CompletedCohomologyPartII §5.8; the admissible Banach lattice presentation:
  CompletedCohomologyPartII F.1;
- regular-sequence ideals, complete intersections and Cohen–Macaulay quotients:
  DeformationAndDerivedPatchingAlgebra §3.4;
- the absolute local Artin map and its geometric normalisation `geometricArtinMap`:
  ClassFieldTheory Layer 7;
- finite-dimensional algebras, injective envelopes, socles, radicals and Krull–Schmidt:
  RepresentationTheory/QuiverRepresentations Layer 3 (on main);
- completed group algebras and their compact-module actions: Tau Ceti
  (`TauCeti.completedGroupAlgebra`, `TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean`
  and `.../Module.lean`); projective covers over finite-dimensional algebras: Tau Ceti
  (`TauCeti.exists_isProjectiveCover_of_finiteDimensional`,
  `TauCeti/Algebra/Module/ProjectiveCover/Existence.lean`).

No `p`-adic or mod `p` local Langlands correspondence for `GL₂(F)`, `F ≠ ℚ_p`, is asserted, and no
lower bound or equality for Gelfand–Kirillov dimension is part of this roadmap: the local theorem
of Layer 7 is an upper bound under explicit multiplicity hypotheses.

## Conventions

- `p` is a prime. `F/ℚ_p` is finite with integers `𝒪_F`, uniformiser `ϖ`, residue field `k_F`;
  `G = GL₂(F)`, `K = GL₂(𝒪_F)`, `Z` the centre, `B = TN` the upper Borel and `B̄` the lower Borel.
  `G′ = G/ϖ^ℤ` is the quotient by the subgroup generated by the scalar matrix `ϖ`, with the quotient
  topology; for `F = ℚ_p` this is `GL₂(ℚ_p)/p^ℤ`. In Suggested.lean it is `GL2ModScalar F ϖ`.
- `L/ℚ_p` is a second finite extension (coefficients), with integers `𝒪 = 𝒪_L`, maximal ideal
  `𝔪`, uniformiser `ϖ_L` and residue field `k`; `L` and `F` play different roles. In Layers 3–9 `k`
  is a finite field of characteristic `p` large enough to contain the images of all embeddings
  `k_F → k̄`.
- A representation is *smooth* if every vector has open stabiliser and, over `𝒪`, *torsion* if
  every vector is killed by a power of `p` (equivalently of `𝔪`). *Finite type* means finitely
  generated over the abstract group algebra (`Module.Finite` over `MonoidAlgebra`); *finite length*
  means finite length over the group algebra (`IsFiniteLength`), never over `𝒪`. A *finite
  `𝒪`-module* is a finitely generated one.
- For Layers 3–9, `F` is unramified of degree `f ≥ 1`, `q = p^f`, `J = ℤ/fZ` indexes the
  embeddings `σ_i = σ_0 ∘ Frob^i` of `k_F` into `k`, all indices are cyclic, and `K₁ = 1 + pM₂(𝒪_F)`,
  `I` the upper Iwahori, `I₁` its pro-`p` radical, `Z₁ = Z ∩ K₁`, `H = I/I₁` the residual torus.
  For a pro-`p` group `U`, `𝔪_U` is the augmentation ideal of `k[[U]]` and `V[𝔪_U^n]` the subspace
  killed by `𝔪_U^n`.
- Weights: `λ = ((a_i, b_i))_{i∈J}`, `r_i = a_i − b_i`, `F(λ) = ⊗_i (Sym^{r_i} k² ⊗ det^{b_i})^{(i)}`
  for `0 ≤ r_i ≤ p−1`, where `(i)` means the action through `σ_i`. `η_i = (1,0)` and `α_i = (1,−1)` in
  position `i`. Central weights `X⁰(T)` are the pairs `(c_i, c_i)`; the coordinate lattice
  `X*(T)/X⁰(T)` is `ℤ^J` with root sublattice `(2ℤ)^J`, and a root coordinate `ν = 2n` is lifted to
  the weight `((n_i, −n_i))`. Labelled finite-group weights are taken modulo `(p − π)X⁰(T)`, where
  `(πλ)_i = λ_{i−1}`. `λ` is *`N`-deep* when `N < r_i + 1 < p − N` for every `i`, that is
  `N ≤ r_i ≤ p − N − 2`.
- `χ_λ` is the character of `I` on the `I₁`-invariant line of `F(λ)`, and `χ^s` swaps its two
  diagonal entries. In characters `α_i(diag(a,d)) = σ_i(a/d)`.
- `V^∨` is the Pontryagin dual of a smooth torsion representation (PadicLocalLanglandsForGL2Qp §0.3)
  and, over `k`, the full linear dual with the topology of pointwise convergence; dual actions use
  `g ↦ (f ↦ f ∘ g⁻¹)`. `(−)_{K₁}` denotes coinvariants and `(−)^{K₁}` invariants.
- Endomorphism rings compose as functions, and `Hom(T_τ, T_σ)` is a right `End(T_τ)`-module by
  precomposition.
- Local class field theory: the fundamental character `ω_{f′} : I_F → k^×` is the reduction of the
  inverse of the local Artin map on inertia followed by the chosen embedding, where the Artin map
  sends a uniformiser to geometric Frobenius (`geometricArtinMap` of ClassFieldTheory Layer 7). For
  `f′ = 1` this is the reduction of the cyclotomic character on inertia.
- Prime bounds: the saturated Iwahori computations of Layer 4 and the extension calculus of
  Layers 5–7 assume `p > 3`; the multiplicity statement for `W_{χ,3}` in §5.1 assumes `p > 5`;
  the integral constructions of Layer 8 assume `p > 2`, `L/ℚ_p` unramified and `𝒪 = W(k)`. Every
  stronger depth or prime bound stated in a target is part of that target.
- Universes: all carriers live in one universe; the `ℚ_p` statements of Suggested.lean live in
  `Type`, where `ℚ_[p]` lives.

## Exact supplier contracts

### From Mathlib

- `Representation`, `Representation.asModule`, `Representation.stabilizer`
  (`Mathlib/RepresentationTheory/Basic.lean`, `.../Stabilizer.lean`): representations, their
  group-algebra module and vector stabilisers.
- `Representation.ind` and `Representation.IndV` (`Mathlib/RepresentationTheory/Induced.lean`):
  induction `A[G] ⊗_{A[U]} W` along `U.subtype`; for open `U` this is compact induction
  (SmoothRepresentationsOfLocalGroups *compact-induction* proves the comparison with the
  function model).
- `Representation.IntertwiningMap` with `ker`, and `Subrepresentation.toRepresentation`
  (`Mathlib/RepresentationTheory/Intertwining.lean`, `.../Subrepresentation.lean`).
- `Rep` (`Mathlib/RepresentationTheory/Rep/Basic.lean`): bundled representations, used for the
  finite-length modules `W_i` of a presentation.
- `IsFiniteLength`, `Module.length`, `IsSemisimpleModule`, `Module.Finite`,
  `Module.IsTorsion'`, `Module.Dual`, `Submodule.span`.
- `IsNonarchimedeanLocalField` with `𝒪[K]` and `𝓀[K]` (`Mathlib/NumberTheory/LocalField/Basic.lean`,
  `Mathlib/Topology/Algebra/Valued/ValuativeRel.lean`), the instance for `ℚ_[p]`
  (`Mathlib/NumberTheory/Padics/LocalField.lean`); `GL (Fin 2) F` with the topology of units of
  the matrix ring; quotient groups with the quotient topology
  (`Mathlib/Topology/Algebra/Group/Quotient.lean`); `Subgroup.normalClosure`; `OpenSubgroup`.
- `MvPolynomial`, `Ideal.span`, `Ideal.Quotient.mk`, `ringKrullDim`,
  `MvPolynomial.ringKrullDim_of_isNoetherianRing_of_finite`
  (`Mathlib/RingTheory/KrullDimension/Polynomial.lean`) and `RingTheory.Sequence.IsRegular`
  (`Mathlib/RingTheory/Regular/RegularSequence.lean`) for §4.5.

### From Tau Ceti

- `TauCeti.completedGroupAlgebra`, its projections to finite quotients, `of`, and the module
  structure `completedGroupAlgebraModule` on discrete modules with open stabilisers
  (`TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean`, `.../Module.lean`).
  Assumed: the inverse-limit description over open normal subgroups and the unique extension of a
  smooth action to the completed algebra.
- `TauCeti.exists_isProjectiveCover_of_finiteDimensional`
  (`TauCeti/Algebra/Module/ProjectiveCover/Existence.lean`): projective covers over a
  finite-dimensional algebra over a field, used for `P_σ = Proj_{GL₂(k_F)} σ`. It gives no
  integral lift and no cover in a pseudocompact category; those are §5.4 and §4.6 here.

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups

- SR.0.1–SR.0.4: *is-smooth*, *smooth-rep-category*, *smooth-rep-abelian*,
  *compact-open-invariants*, *admissible*, *finiteness-conditions*, *smooth-dual*,
  *coefficient-change*, *smooth-centre*. Assumed: the smooth category over a commutative ring is
  abelian, invariants under compact opens are a functor, the smooth contragredient is the smooth
  part of the algebraic dual with the inverse action.
- SR.0d.1: the smooth category is Grothendieck abelian with enough injectives; used for injective
  envelopes of smooth representations of compact groups in §§4.6 and 5.6.
- SR.2.1: *smooth-induction* (unnormalised, right translation), *compact-induction* (with the
  identification of `c-Ind_U^G` with Mathlib's induction for open `U`), *frobenius-reciprocity*,
  *induction-exactness*, *mackey-filtration*. Used for `c-Ind`, `Ind_{B̄}^G` and Frobenius
  reciprocity throughout.

### From TauCetiRoadmap.PadicLocalLanglandsForGL2Qp

- §0.1: Schikhof duality and admissible unitary Banach representations; used in §2.6 here.
- §0.3: `DualitySupport.torsionDual` with exactness, biduality and contragredient action; the
  finite-residue fundamental characters of every level with Frobenius powers and norm
  compatibility; used in §§0.1, 1.6, 3.4 and 4.1 here.
- §§2.1–2.3: the `GL₂(ℚ_p)` torsion categories with central character, local finiteness, the dual
  category `C_{G,ζ}(𝒪)` and its projective envelopes.
- §2.7: `SerreWeight`, `compactInduction`, `heckeOperatorT`, `endEquivPolynomial`,
  `compactInduction_free` for `F = ℚ_p`; the classification of absolutely irreducible smooth
  representations of `GL₂(ℚ_p)` with central character; their admissibility and finite
  presentation; Galois descent of irreducibles.
- §2.9: supersingular representations of `GL₂(F)`, `F ≠ ℚ_p`, are not finitely presented.
- §5.1: blocks with fixed central character and finite block support of finite-length objects
  (used by §1.4); §5.3: projective envelopes.
- What PadicLocalLanglandsForGL2Qp must provide (gap:ext1-finite-length-into-compact-induction):
  for `G′ = GL₂(ℚ_p)/p^ℤ`, a smooth finite-length `k[G′]`-representation `π` and a Serre weight
  `σ`, the space `Ext¹_{G′}(π, I(σ))` is finite-dimensional over `k`, for every prime `p`
  including `p = 2, 3` (Dotto–Emerton–Gee, Lemma 4.2.1, proves it for `p ≥ 5`), in §2.7.

### From TauCetiRoadmap.FiniteFlatGroupsAndIntegralPadicHodgeTheory

- R07.5.15: Serre weights `σ` of `GL₂(F)` as irreducible smooth `k̄[KZ]`-modules with central
  character, `I(σ) = c-Ind_{KZ}^G σ`, `End_G(I(σ)) ≅ k̄[T]` with `T` supported on
  `KZ diag(1,ϖ)^{±1} KZ`, freeness of `I(σ)` over `k̄[T]`, and the Barthel–Livné classification of
  the quotients `I(σ)/(T − λ)`, `λ ≠ 0`.
- What FiniteFlatGroupsAndIntegralPadicHodgeTheory must provide (gap:barthel-livne-finite-codimension):
  for a Serre weight `σ` of `GL₂(F)` and a nonzero `G`-subrepresentation `π′ ⊆ I(σ)`, the
  `I₁`-invariants `(π′)^{I₁}` have finite codimension in `I(σ)^{I₁}` (Barthel–Livné, Proposition
  18), in R07.5.15.

### From TauCetiRoadmap.PotentialAutomorphyInfrastructure

- §3.7 `LocalOrdinaryParts`: `N(𝒪)`-invariants with the transfer Hecke action
  `t·v = Σ_{n ∈ N(𝒪)/tN(𝒪)t⁻¹} n t v` of the positive torus monoid, its localisation, functoriality
  and derived version. Used for `GL₂` at a single place, with `N₀ = N(𝒪_F)` and `T⁺` the monoid
  contracting `N₀`.

### From TauCetiRoadmap.NoncommutativeAndEquivariantIwasawa

- §F.1: left and right noetherianity of `𝒪[[U]]` and `k[[U]]` for compact `p`-adic analytic `U`;
  the canonical topology on finite modules; `iwasawaGrade`, the coefficient shift, the finite-index
  grade comparison, and canonical dimension `gldim(R) − j_R(M)` with value `−∞` on the zero module.
- §0.3: completed group algebras are free of finite rank over the completed algebra of an open
  subgroup, on both sides.
- §0.5: complete filtrations with noetherian graded ring lift noetherianity, domain, global
  dimension and (under the closure condition) Auslander regularity with `j_R(M) = j_{gr R}(gr M)`.
- §§0.7–0.8: `p`-valuations, finite rank, saturation and ordered bases; the weighted graded algebra
  `gr_ω 𝒪[[G]] ≅ gr 𝒪 ⊗_{𝔽_p[P]} U(gr G)` for a finite-rank `p`-valued `G` with ordered basis.
- §§0.10–0.11: Auslander regularity and global dimension `d` of `k[[G]]` for compact analytic `G`
  of dimension `d` without `p`-torsion.
- §0.13: `H*(U, 𝔽_p) ≅ ∧* H¹(U, 𝔽_p)` for uniform `U`, with `dim H¹ = d`.

### From TauCetiRoadmap.CompletedCohomologyPartII

- §5.8: for torsion-free uniform `U` of dimension `d > 0`, a nonzero finite `k[[U]]`-module `M` of
  canonical dimension `δ` and `V = M^∨`, `dim_k V^{U^{p^r}}` lies between positive constants times
  `[U : U^{p^r}]^{δ/d}`.
- F.1: the lattice presentation of admissible unitary Banach representations (finite residual
  invariants exactly when the Schikhof dual is finite over `𝒪[[K]]`), and independence of the
  stable lattice.

### From TauCetiRoadmap.DeformationAndDerivedPatchingAlgebra

- §3.4: regular-sequence ideals, complete intersections, and the fact that complete intersections
  are Cohen–Macaulay; used for the crossing algebra of §4.5.

### From TauCetiRoadmap.ClassFieldTheory

- Layer 7: the absolute local Artin map, `geometricArtinMap` defined by inversion, and the
  restriction to inertia; used for the tame parameter of §3.4.

### From TauCetiRoadmap.RepresentationTheory.QuiverRepresentations

- Layer 3: finite-dimensional algebras, Jacobson radical, socle and radical series, injective
  envelopes and projective covers, Krull–Schmidt, and duality between left and right modules; used
  for `GL₂(k_F)`-modules and for the finite-dimensional algebras `k[[K/Z₁]]/𝔪_{K₁}²` and
  `k[[I/Z₁]]/𝔪_{I₁}^n`.

## How to read the build

Layer 0 sets up the finiteness notions for smooth torsion representations of a `p`-adic Lie group
and proves coherence for `GL₂(F)/ϖ^ℤ`. Layer 1 specialises to `F = ℚ_p` and proves the three
finite-length criteria, using the `GL₂(ℚ_p)` classification. Layer 2 treats admissible finitely
presented representations for every `F`, and for `F ≠ ℚ_p` approximates them by inductions of
their ordinary parts. Layers 3–9 assume `F` unramified. Layer 3 fixes the weight coordinates, the
tame weight set and the Diamond modules. Layer 4 defines Gelfand–Kirillov dimension, computes the
graded algebra of the pro-`p` Iwahori subgroup and proves the Iwahori dimension criterion.
Layers 5 and 6 compute finite and first-order extensions and build the multiplicity-preserving
enlargements of Diamond boxes. Layer 7 proves multiplicity one through the third Iwahori layer and
the local dimension bound. Layers 8 and 9 build the gluing lattice from a projective cover of the
finite group, identify its reduction with the first-order projective truncation, and compute
its endomorphisms. Layers 0–2 and Layers 3–9 are independent except for §0.6, used in §9.1;
inside Layers 3–9 the Gelfand–Kirillov chain (Layers 4, 6, 7) and the lattice chain (Layers 8–9)
share Layers 3 and 5.

## Layer 0: Smooth finiteness and augmented Iwasawa algebras

Throughout this layer `H` is a `p`-adic Lie group (in the applications `G`, `G′`, `SL₂(F)` or the
subgroup `G₀ = {g ∈ G : det g ∈ 𝒪_F^×}`), and representations are `𝒪`-linear.

### 0.1 Torsion admissibility

Define `IsTorsionAdmissible p ρ` for a representation `ρ` of a topological group on an `𝒪`-module
`V`: for every compact open subgroup `U` and every `j ≥ 0`, the submodule `V^U[p^j]` of vectors
fixed by `U` and killed by `p^j` has finite length over `𝒪`. Since `p` and `ϖ_L^e` generate the
same ideal, this is Colmez–Dospinescu–Nizioł's condition that every `V^U[𝔪^j]` has finite length
(CDN23, §1.1.2, p. 10). Call a smooth torsion `V` *locally admissible* when every cyclic
subrepresentation `𝒪[H]v` is torsion-admissible. The notion differs from SmoothRepresentationsOfLocalGroups
*admissible*, which asks `V^U` to be finitely generated: the divisible module `L/𝒪` with trivial
action is torsion-admissible and not admissible in that sense. For `H = GL₂(ℚ_p)` with fixed
central character it is the admissibility of PadicLocalLanglandsForGL2Qp §2.1. *Needs:* Mathlib
`IsFiniteLength`, `OpenSubgroup`; SmoothRepresentationsOfLocalGroups *is-smooth*,
*compact-open-invariants*.

API:

- If `p^a` kills `V`, then `V` is torsion-admissible exactly when every `V^U` is a finitely
  generated `𝒪`-module, that is, when `V` is admissible over `𝒪/p^a` in the sense of
  SmoothRepresentationsOfLocalGroups *admissible* (CDN23, §1.1.2, p. 10).
- It suffices to test `U` in one neighbourhood basis of compact open subgroups, since
  `V^{U′}[p^j] ⊆ V^{U}[p^j]` for `U ⊆ U′` and `𝒪` is noetherian.
- Torsion admissibility passes to subrepresentations (invariants of a subrepresentation are a
  submodule) and to finite direct sums; for `H` a `p`-adic Lie group it passes to quotients of
  smooth torsion representations, because the Pontryagin dual of a quotient is a submodule of the
  dual, which is finite over the noetherian `𝒪[[U]]` by the next statement.
- For compact `H` and smooth torsion `V`, `V` is torsion-admissible exactly when its Pontryagin dual
  `V^∨` is a finitely generated `𝒪[[U]]`-module for one (equivalently every) compact open `U`
  (topological Nakayama applied to `V^∨/𝔪`, with `(V^∨/𝔪)^∨ = V[𝔪]`; the `GL₂(ℚ_p)` case is
  PadicLocalLanglandsForGL2Qp §2.3).
- Local admissibility can be checked on cyclic subrepresentations, and a finite sum of locally
  admissible subrepresentations is locally admissible.

**Checks.**

- For `H` trivial, `L/𝒪` is torsion-admissible: `(L/𝒪)[p^j]` has length `j·e` over `𝒪`, although
  `L/𝒪` is not a finite `𝒪`-module. A definition requiring finite length of all of `V^U` would
  reject it.
- An infinite direct sum of copies of `k` with trivial action is not torsion-admissible: already
  `V^H[p]` has infinite length.
- Every finite-length `𝒪`-module with a smooth action is torsion-admissible and locally
  admissible; in particular the zero representation is.
- For `H = GL₂(ℚ_p)` and `V = c-Ind_{KZ}^G σ` over `k`, `V^{I₁}` is infinite-dimensional, so `V` is
  not torsion-admissible, while the Steinberg representation (infinite-dimensional) is.

### 0.2 The augmented Iwasawa algebra

For a compact open subgroup `U ⊆ H` put `𝒪⟨H⟩ = 𝒪[H] ⊗_{𝒪[U]} 𝒪[[U]]`, a left `𝒪[H]`-module. Prove
that it carries a unique associative `𝒪`-algebra structure for which `𝒪[H] → 𝒪⟨H⟩` and
`𝒪[[U]] → 𝒪⟨H⟩` are algebra maps; that for another compact open `U′` there is a canonical
algebra isomorphism compatible with both maps; and that the `𝒪[H]`-action on a smooth torsion
representation extends uniquely to an `𝒪⟨H⟩`-module structure, functorially (SHOTTON20,
Proposition 3.2 (Kohlhaase) and Lemma 3.5; CDN23, §1.1.1, p. 10). Multiplication is the crossed
product given by coset representatives of `H/U`, not the componentwise product of the tensor
factors. Prove that `𝒪⟨H⟩` is flat as a right `𝒪[[U]]`-module (SHOTTON20, Lemma 3.3). *Needs:*
Tau Ceti `TauCeti.completedGroupAlgebra` and `completedGroupAlgebraModule`;
NoncommutativeAndEquivariantIwasawa §0.3; SmoothRepresentationsOfLocalGroups *is-smooth*.

API:

- For compact `H` (take `U = H`) the algebra is `𝒪[[H]]`.
- The comparison isomorphisms for `U, U′, U″` satisfy the cocycle identity, so `𝒪⟨H⟩` is
  independent of `U` up to unique isomorphism.
- An `H`-equivariant `𝒪`-linear map between smooth torsion representations is `𝒪⟨H⟩`-linear for
  the extended structures, and every `𝒪⟨H⟩`-module on which `𝒪[[U]]` acts through finite
  quotients on each vector arises this way.
- As a right `𝒪[[U]]`-module `𝒪⟨H⟩` is free on a set of coset representatives of `H/U`.

**Checks.**

- For `H = {1}` the algebra is `𝒪`, and the extended action on a torsion module is its given scalar
  action.
- For discrete `H` and `U = {1}`, `𝒪⟨H⟩ = 𝒪[H]`, including its noncommutative multiplication when
  `H` is nonabelian (for instance `S₃`); a componentwise multiplication on `𝒪[H] ⊗ 𝒪` would be
  commutative there.
- For `H = ℚ_p` and `U = ℤ_p`, `𝒪⟨H⟩ = 𝒪[ℚ_p] ⊗_{𝒪[ℤ_p]} 𝒪[[ℤ_p]]` is a free right
  `𝒪[[ℤ_p]] ≅ 𝒪[[T]]`-module on representatives of `ℚ_p/ℤ_p`. On the smooth representation
  `k[ℚ_p/ℤ_p]`, where `ℤ_p` fixes every coset, the extended action of `𝒪[[ℤ_p]]` factors through the
  augmentation and `T = [1] − 1` acts by zero.

### 0.3 Finite presentation in the smooth category

Define `IsFinitelyPresented ρ` for a representation `ρ` of a topological group `H` over a
commutative ring `A`: there are compact open subgroups `U₁, U₂`, smooth representations `W₁, W₂` of
`U₁, U₂` on `A`-modules of finite length, and an exact sequence of `A[H]`-modules
`c-Ind_{U₁}^H W₁ → c-Ind_{U₂}^H W₂ → V → 0` (CDN23, §1.1.2, p. 10; SHOTTON20, Definition 2.3). It
is not finite presentation over the abstract group algebra `A[H]`. Finite type is
`Module.Finite` over `MonoidAlgebra A H`. Prove, for smooth torsion `V` over `𝒪`: `V` is of finite
type exactly when it is a quotient of one `c-Ind_U^H W` with `W` of finite length, exactly when it
is a finitely generated `𝒪⟨H⟩`-module; and `V` is finitely presented exactly when it is a finitely
presented `𝒪⟨H⟩`-module (SHOTTON20, Lemmas 2.4 and 3.6, Proposition 3.8; CDN23, §1.1.2, p. 10).
*Needs:* §0.2; SmoothRepresentationsOfLocalGroups *compact-induction*; Mathlib
`Representation.ind`; NoncommutativeAndEquivariantIwasawa §F.1 (noetherianity of `𝒪[[U]]`).

API:

- `c-Ind_U^H W ≅ 𝒪⟨H⟩ ⊗_{𝒪[[U]]} W` for a smooth finite-length `W`; since `𝒪[[U]]` is noetherian,
  `W` is finitely presented over it, so `c-Ind_U^H W` is finitely presented over `𝒪⟨H⟩`.
- A finitely presented representation is smooth and torsion (a quotient of a compact induction of
  a smooth finite-length module).
- For an open subgroup `H′ ⊆ H` of finite index, `V` is of finite type, respectively finitely
  presented, exactly when its restriction to `H′` is (SHOTTON20, Lemma 2.8; CDN23, Remarque
  1.4(ii)).

**Checks.**

- For `H = {1}`, a torsion `𝒪`-module is finitely presented in this sense exactly when it has
  finite length: the compact inductions are finite-length modules and `𝒪` is noetherian. An
  infinite direct sum of copies of `k` is not.
- For `W` of finite length, `c-Ind_U^H W` is finitely presented, by the sequence
  `0 → c-Ind_U^H W → c-Ind_U^H W → 0`.
- The zero representation is finitely presented, with `W₁ = W₂ = 0`.
- For `H = ℚ_p` over `k`, the representation `k[ℚ_p/ℤ_p] = c-Ind_{ℤ_p}^{ℚ_p} k` is finitely
  presented, but it is not finitely presented over the abstract group algebra `k[ℚ_p]`: the
  augmentation kernel of `k[ℚ_p] → k[ℚ_p/ℤ_p]` is generated by `[x] − 1`, `x ∈ ℤ_p`, and is not
  finitely generated, `ℤ_p` not being finitely generated as an abstract group.

### 0.4 Exact-sequence and finite-index calculus

Let `0 → V₁ → V₂ → V₃ → 0` be an exact sequence of smooth torsion representations of `H`. Prove:
finite type is stable under extensions and quotients; if `V₁, V₃` are finitely presented then so
is `V₂`; if `V₂` is finitely presented and `V₁` of finite type then `V₃` is finitely presented;
if `V₂` is of finite type and `V₃` finitely presented then `V₁` is of finite type (CDN23,
Proposition 1.2, p. 11; SHOTTON20, Lemmas 2.6–2.7). With the finite-index statement of §0.3, the
same holds after restriction to a finite-index open subgroup. *Needs:* §0.3;
SmoothRepresentationsOfLocalGroups *induction-exactness*, *mackey-filtration*.

**Checks.**

- A subrepresentation of a finitely presented representation need not be finitely presented:
  for `H = G′` and `F ≠ ℚ_p`, a supersingular irreducible quotient of `c-Ind_{KZ}^{G} σ` is not
  finitely presented (PadicLocalLanglandsForGL2Qp §2.9), so its kernel, a subrepresentation of the
  finitely presented `c-Ind_{KZ}^{G} σ`, is not even of finite type, by the third assertion above.
- For `0 → c-Ind_U^H W → c-Ind_U^H W ⊕ c-Ind_U^H W → c-Ind_U^H W → 0` all three terms are finitely
  presented, as the second assertion requires.

### 0.5 Coherence for amalgams of compact open groups

Let `H` be a `p`-adic Lie group which is an amalgam `U₁ *_{U₀} U₂` of two compact open subgroups
over their intersection. Prove that `𝒪⟨H⟩ ≅ 𝒪[[U₁]] *_{𝒪[[U₀]]} 𝒪[[U₂]]`, and that this amalgam is
left coherent: the completed group algebras are noetherian (hence coherent), and each is free over
`𝒪[[U₀]]`, so Åberg's theorem on amalgams of coherent rings over a noetherian ring applies
(SHOTTON20, Propositions 4.1–4.3, Corollary 4.4). Hence the finitely presented smooth torsion
representations of `H` form an abelian subcategory: kernels and cokernels of maps between them are
finitely presented (SHOTTON20, Theorem 4.5; CDN23, Proposition 1.3, p. 11). By Ihara's theorem
`SL₂(F) = SL₂(𝒪_F) *_{I∩SL₂} SL₂(𝒪_F)^α` and `G₀ = K *_I K^α` with `α = diag(1, ϖ)`; since `G₀` has
finite index in `G′`, the finite-index calculus gives the headline statement.

Prove `isFinitelyPresented_ker`: for `F/ℚ_p` finite with uniformiser `ϖ` and `L/ℚ_p` finite with
the same residue characteristic, the kernel of an intertwining map between finitely presented
`𝒪_L`-representations of `G′ = GL₂(F)/ϖ^ℤ` is finitely presented (SHOTTON20, Theorem 5.1 and
Corollary 5.2; CDN23, Proposition 1.3 and Remarque 1.4). The conclusion is coherence, not
noetherianity: `𝒪⟨G′⟩` is not noetherian. *Needs:* §§0.2–0.4; NoncommutativeAndEquivariantIwasawa
§F.1 (noetherianity of `𝒪[[U]]`) and §0.3 (freeness over open subgroups); the amalgam
decomposition from Serre's *Arbres, amalgames, SL₂*, Chapter II, cited by SHOTTON20, §5.

**Checks.**

- For `H` compact (a degenerate amalgam with `U₁ = U₀`), `𝒪⟨H⟩ = 𝒪[[H]]` is noetherian, and
  coherence is the familiar statement for finitely generated modules.
- For `G′` the cokernel statement is formal (§0.4); the content is the kernel: for `σ` a Serre
  weight and `T` the Hecke operator, the kernel of `T : c-Ind_{KZ}^{G} σ → c-Ind_{KZ}^{G} σ` is zero
  (freeness over `k[T]`), finitely presented as required.
- Shotton's statement for `G` itself is restricted to locally `Z`-finite representations
  (SHOTTON20, Corollary 5.2). Every smooth representation of `G′` is locally `Z`-finite, because
  `Z/(Z ∩ K)ϖ^ℤ` is finite; this is why the headline is stated on `G′`. The hypothesis that `ϖ` is a
  uniformiser matters: for `ϖ = 0` the defining set is empty and the quotient is `G`, where
  `c-Ind_K^G k` is finitely presented but not `Z`-finite.

### 0.6 Hom base change and residue fields of irreducibles

Let `k` be a field, `L′/k` a field extension, `V` a finitely generated `k[H]`-module and `W` any
`k[H]`-module. Prove that the natural map `Hom_H(V,W) ⊗_k L′ → Hom_H(V ⊗ L′, W ⊗ L′)` is an
isomorphism (CDN23, Lemme 1.6, p. 12). For `k` finite and an admissible irreducible smooth `k[H]`-
module `π`, prove that `End_H(π)` is a finite field `k′`, that `π` is absolutely irreducible as a
`k′`-representation, and that `π ⊗_k k̄` is the direct sum over the embeddings `k′ → k̄` of pairwise
nonisomorphic absolutely irreducible representations (CDN23, Lemme 1.7, p. 12). This is the general
form of the Galois descent used for `GL₂(ℚ_p)` in PadicLocalLanglandsForGL2Qp §2.7. *Needs:*
Mathlib `Module.Finite`; §0.1.

**Checks.**

- Finite generation of `V` is needed: for `V = ⊕_{n∈ℕ} k` with trivial `H` and `W = k`, the map is
  `(∏ k) ⊗ L′ → ∏ L′`, not surjective for `L′/k` infinite.
- Admissibility is needed: CDN23, Remarque 1.8 records irreducible smooth representations of
  `GL₂(ℚ_{p³})` over `k` for which the conclusions fail.
- For `H` trivial and `π = k`, `End = k` and `π ⊗ k̄` is one copy of `k̄`.

### 0.7 The five-term criterion

Let `F/ℚ_p` be finite. In an exact sequence `A → B → C → D → E` of smooth torsion representations
of `G′`, if `A, B, D, E` are finitely presented then so is `C` (CDN23, Lemme 2.9, p. 27; the number
2.10 in that passage labels a display). *Needs:* §§0.4–0.5.

**Checks.**

- With `A = B = 0`, the statement says that a kernel of a map between finitely presented `D → E`
  is finitely presented, which is §0.5.
- With `D = E = 0` it says that a cokernel of `A → B` is finitely presented, which is §0.4.

### 0.8 The compact-induction obstruction space

Let `F/ℚ_p` be finite and `W` a finite-dimensional smooth `k[KZ]`-module with central character. For
a `G`-equivariant surjection `q : c-Ind_{KZ}^G W → V` put `P⁺ = {(a b; 0 1) : a ∈ 𝒪_F ∖ {0}, b ∈ 𝒪_F}`,
`w = (0 1; ϖ 0)`, let `I⁺(W)` be the span of the standard functions `[g, v]` with `g ∈ P⁺`,
`v ∈ W`, and `I⁻(W) = w I⁺(W)`. Define `Δ(W,V) = q(I⁺(W)) ∩ q(I⁻(W)) ⊆ V` (HU12, §3.1.1, p. 17;
§3.3, p. 30). Prove that `c-Ind_{KZ}^G W = I⁺(W) ⊕ I⁻(W)` as `IZ`-modules, that `Δ(W,V)` is stable
under `IZ` and `w`, and that it is nonzero when `V ≠ 0` (VIGNERAS11, §5, Propositions 9–10).
*Needs:* SmoothRepresentationsOfLocalGroups *compact-induction*; §0.3.

API:

- `v ∈ Δ(W,V)` exactly when `v` has a preimage under `q` supported in `P⁺KZ` and one supported in
  `wP⁺KZ`.
- `Δ(W,V)` contains `V^{I₁}` when `W` generates `V` (VIGNERAS11, §5, Proposition 9).
- A `G`-map `V → V′` compatible with the presentations restricts to `Δ(W,V) → Δ(W,V′)`, compatibly
  with identities and composition.

**Checks.**

- For `q` the identity of `c-Ind_{KZ}^G W`, `Δ = 0` by the two-cell decomposition.
- For `W = k` trivial and `q` the augmentation onto the trivial line, both cell images are `k`, so
  `Δ = k`.
- The functor is not right exact: the augmentation above has `Δ(source) = 0` and
  `Δ(target) = k`, so the induced map is not surjective.

### Examples

- For `H = SL₂(ℚ_p)` and `σ = Sym^r k²`, `c-Ind_K^H σ` is finitely presented and the kernel of any
  endomorphism of it is finitely presented (§0.5).
- For `G′ = GL₂(ℚ_p)/p^ℤ` and `σ` trivial, the augmentation `c-Ind_{KZ}^G k → k` has kernel the
  representation generated by `[1,1] − [α,1]`; it is finitely presented by §0.5, and the obstruction
  space of the augmentation is `k` (§0.8).

### Dependencies

Mathlib representations, induction and finite length; Tau Ceti completed group algebras;
SmoothRepresentationsOfLocalGroups SR.0.1–SR.0.4 and SR.2.1; NoncommutativeAndEquivariantIwasawa
§§0.3 and F.1; PadicLocalLanglandsForGL2Qp §§2.3 and 2.9 for Checks.

## Layer 1: Finite-length criteria over ℚ_p

Throughout, `F = ℚ_p`, `G′ = GL₂(ℚ_p)/p^ℤ`, `k` is a finite field of characteristic `p`, and a
Serre weight `σ` is extended to `KZ` by letting `p` act trivially, so that
`I(σ) = c-Ind_{KZ}^G σ = c-Ind_K^{G′} σ` (CDN23, §1.4.2, p. 16). Representations are smooth
`k[G′]`-modules.

### 1.1 Proper quotients of Serre-weight compact inductions

Prove that every nonzero proper quotient of `I(σ)` has finite length (CDN23, Proposition 1.17,
p. 16). Route: for the kernel `π′ ≠ 0`, Barthel–Livné give finite codimension of `(π′)^{I₁}` in
`I(σ)^{I₁}`, so some nonzero `P(T)` sends the generator supported on `KZ` into `π′`; the quotient
then factors through `I(σ)/P(T)I(σ)`, which has finite length by the `ℚ_p` classification
(Barthel–Livné, Breuil). Coefficients are descended from `k̄` to `k` with §0.6. *Needs:*
FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.5.15 (the operator `T`, freeness, and
gap:barthel-livne-finite-codimension); PadicLocalLanglandsForGL2Qp §2.7; §0.6.

**Checks.**

- `I(σ)` itself has infinite length: it is free of infinite rank over `k[T]`, and the quotients
  `I(σ)/(T − λ)I(σ)` for distinct `λ ∈ k̄` give infinitely many distinct constituents after
  extending scalars.
- For `σ` trivial and `P = T − 1`, `I(σ)/(T − 1)` has length two, with Steinberg subrepresentation
  and trivial quotient (PadicLocalLanglandsForGL2Qp §2.7).
- `F = ℚ_p` is essential: for `F ≠ ℚ_p` the quotient `I(σ)/T I(σ)` has infinite length
  (PadicLocalLanglandsForGL2Qp §2.9), and CDN23, Remarque 1.18 records only Emerton's conjecture
  that admissible nonzero quotients have finite length.

### 1.2 A filtration by Serre-weight inductions

Prove, for every finite `F/ℚ_p` and `G′ = GL₂(F)/ϖ^ℤ`, that a smooth `k[G′]`-module is of finite
type exactly when it has a finite filtration whose graded pieces are quotients of Serre-weight
inductions `I(σ_i)` (CDN23, Proposition 1.19, p. 17). Route: the `K`-span `W` of finitely many
generators is finite-dimensional, `c-Ind_K^{G′} W → V` is onto, and a composition series of `W`
induces the filtration. *Needs:* §0.3; FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.5.15;
SmoothRepresentationsOfLocalGroups *induction-exactness*.

**Checks.**

- The zero module has the empty filtration.
- For `V = I(σ)` the filtration has one step.
- For `V` irreducible, any such filtration has exactly one nonzero graded piece, and `V` is a
  quotient of some `I(σ)` with `σ ⊆ V|_K` (Frobenius reciprocity).

### 1.3 Finite type implies finite presentation

Prove `isFinitelyPresented_of_finite`: every smooth `k[G′]`-module of finite type is finitely
presented (CDN23, Proposition 1.20, p. 17). Route: each graded piece of the filtration of §1.2 is
either `I(σ_i)`, finitely presented by §0.3, or a proper quotient, of finite length by §1.1 and
then finitely presented because irreducible smooth representations of `GL₂(ℚ_p)` are finitely
presented (PadicLocalLanglandsForGL2Qp §2.7); conclude by extension stability (§0.4). *Needs:*
§§0.3–0.4, 1.1–1.2; PadicLocalLanglandsForGL2Qp §2.7.

**Checks.**

- The statement fails for `F ≠ ℚ_p`: an irreducible supersingular representation of `G′` is of
  finite type but not finitely presented (PadicLocalLanglandsForGL2Qp §2.9).
- The coefficients are a field: the theorem is stated for `k[G′]`-modules; an `𝒪`-torsion version
  follows by dévissage along `ϖ_L` using §0.4.

### 1.4 Central characters and finite Ext support

Prove that every irreducible smooth `k[G′]`-module has a central character with values in `k`
(CDN23, Lemme 1.22, p. 17): the pro-`p` part `1 + pℤ_p` of the centre `ℤ_p^×` of `G′` acts
trivially, and `x^{p−1} = 1` for a generator `x` of `𝔽_p^×` splits over `𝔽_p ⊆ k`. Prove that for
a finite-length smooth `k[G]`-module `π` with central character and every irreducible smooth `π′`
with central character, `Ext¹_G(π, π′)` is finite-dimensional, and nonzero for only finitely many
isomorphism classes of `π′` (CDN23, Lemme 1.23, p. 18). Route: reduce to `π` irreducible, extend
scalars to `k̄` by §0.6, separate central characters, and use the finite Ext computation inside a
block. *Needs:* §0.6; PadicLocalLanglandsForGL2Qp §§2.7 and 5.1.

**Checks.**

- The central character is `k`-valued, not merely over an extension: for `p = 3` the centre of `G′`
  acts through `𝔽_3^× = {±1}`, and `−1` acts by `±1 ∈ k`.
- A smooth representation of infinite length need not have a central character: `I(σ) ⊕ I(σ) ⊗ δ`
  for a nontrivial character `δ` of `ℤ_p^×/(1 + pℤ_p)` composed with the determinant, at `p > 3`.
- For `π = π′` the trivial character, `Ext¹_G(1, 1) = Hom(G, k)` is finite-dimensional.

### 1.5 Finite cosocle implies finite length

Prove `isFiniteLength_of_bounded_semisimple_quotients`: let `V` be a smooth `k[G′]`-module of
finite type whose semisimple quotients have bounded length (equivalently, whose cosocle is
semisimple of finite length); then `V` has finite length (CDN23, Théorème 1.21, p. 17). The
converse is immediate. Route: take the filtration of §1.2 with top piece a quotient of `I(σ₁)`;
this map is not an isomorphism because the cosocle of `I(σ₁)` has infinite length, so the top
piece has finite length by §1.1; the long exact sequence for `Hom_G(−, π′)` and §1.4 show that the
next step again has finite cosocle; induct. *Needs:* §§1.1, 1.2, 1.4.

**Checks.**

- For `V = I(σ)` the hypothesis fails: over the finite field `k`, the quotients `I(σ)/(P(T))` for
  infinitely many irreducible `P ∈ k[T]` are pairwise nonisomorphic and contain irreducible
  quotients, so semisimple quotients of unbounded length exist.
- For `V = I(σ)/(T − 1)` with `σ` trivial the cosocle is the trivial character, so `N = 1`, and
  `V` has length two; a bound by the number of irreducible quotients up to isomorphism alone would
  not suffice for `V = π ⊕ π`, whose semisimple quotients have length up to two although it has one
  irreducible quotient up to isomorphism.
- The bounded-length formulation is equivalent to the cosocle formulation: a bound `N` forces the
  radical to be the intersection of finitely many maximal subrepresentations, so `V/rad V` is
  semisimple of length at most `N`; conversely every semisimple quotient factors through
  `V/rad V`.

### 1.6 Finite length is detected by the smooth dual

Prove `isFiniteLength_iff_finite_smoothDualSpan`: a smooth `k[G′]`-module `V` of finite type has
finite length exactly when the smooth vectors of its full linear dual `V* = Hom_k(V, k)` (the smooth
contragredient of SmoothRepresentationsOfLocalGroups *smooth-dual*; their span is `smoothDualSpan`)
span a finite-dimensional space
(CDN23, Théorème 1.24, p. 18). Prove also that a smooth `V` of finite type and infinite length has a
nonzero map `V → I(σ)` for some Serre weight `σ` (CDN23, Lemme 1.25, p. 18).

Route. Finite length implies finite dimension: by dévissage reduce to `V` irreducible, where the
smooth dual vanishes unless `V` is finite-dimensional (KOHLHAASE17, Proposition 3.9 and
Remark 3.10; the dual of an admissible `V` is finite over the noetherian `k[[U]]`, its smooth part is
a finitely generated submodule fixed by an open subgroup). For the converse, Lemme 1.25 is proved by
induction along the filtration of §1.2: a nonzero map from the infinite-length subobject into
`I(σ)` gives an infinite-dimensional, `k[T]`-torsion-free Hom space, and the connecting map into
`Ext¹(π/π₁, I(σ))` cannot be injective when that Ext is finite-dimensional
(gap:ext1-finite-length-into-compact-induction; DEG, Lemma 4.2.1, for `p ≥ 5`; CDN23, footnote 19,
for the central character). Then a finite-dimensional space of smooth vectors in `V*` is closed,
the finitely supported functionals are dense in `I(σ)^∨`, so the dual map `I(σ)^∨ → V^∨` has
finite-dimensional image, giving a nonzero finite-dimensional subrepresentation of `I(σ)`, which
does not exist. *Needs:* §§1.2, 1.3, 1.5; SmoothRepresentationsOfLocalGroups *smooth-dual*;
PadicLocalLanglandsForGL2Qp §§0.3, 2.7 (and its gap); NoncommutativeAndEquivariantIwasawa §F.1.

**Checks.**

- For `V` the trivial character, `V* = k` is smooth: dimension one, finite length one.
- For `V` the Steinberg representation (irreducible, infinite-dimensional), no nonzero functional
  is smooth, so the smooth dual is zero; the full dual is uncountable-dimensional.
- For `V = I(σ)`, every functional supported on finitely many cosets is smooth, so the smooth dual
  is infinite-dimensional, matching infinite length.
- The finite-type hypothesis is needed: an infinite direct sum of Steinberg representations has
  zero smooth dual and infinite length.

### Examples

- `V = I(σ)/(T − 1)` for `σ` trivial has length two, a one-dimensional smooth dual, and cosocle the
  trivial character; all three theorems apply.
- `V = I(σ)` is finitely presented (§1.3), has infinite length, infinite cosocle and
  infinite-dimensional smooth dual.

### Dependencies

Layer 0; PadicLocalLanglandsForGL2Qp §§0.3, 2.7, 2.9, 5.1 (with
gap:ext1-finite-length-into-compact-induction); FiniteFlatGroupsAndIntegralPadicHodgeTheory
R07.5.15 (with gap:barthel-livne-finite-codimension); SmoothRepresentationsOfLocalGroups
*smooth-dual*, *induction-exactness*; NoncommutativeAndEquivariantIwasawa §F.1.

## Layer 2: Admissible finite presentation and ordinary parts

`F/ℚ_p` is finite, `G = GL₂(F)`, `T` the diagonal torus, `N₀ = N(𝒪_F)` and `T⁺ ⊆ T` the monoid of
`t` with `t N₀ t⁻¹ ⊆ N₀`. Representations are smooth torsion `𝒪`-representations.

### 2.1 Ordinary parts for GL₂(F)

On torsion-admissible representations define Emerton's ordinary part `Ord_B(V)` as the subspace of
locally `Z_T`-finite vectors in `Hom_{𝒪[T⁺]}(𝒪[T], V^{N₀})`, where `T⁺` acts on `V^{N₀}` by the
transfer Hecke operators `t·v = Σ_{n ∈ N₀/tN₀t⁻¹} n t v` of PotentialAutomorphyInfrastructure §3.7
(EMERTON1, Definitions 3.1.3 and 3.1.7–3.1.9). Prove that it is independent of the choice of the
contracting compact open subgroup, left exact, preserves torsion admissibility, and is right
adjoint to unnormalised smooth parabolic induction from the lower Borel: for admissible smooth
`U` of `T` and `V` of `G`, `Hom_G(Ind_{B̄}^G U, V) ≅ Hom_T(U, Ord_B V)` naturally (EMERTON1,
Theorem 4.4.6; CDN23, §1.5.2, p. 20). No modulus character is inserted. *Needs:*
PotentialAutomorphyInfrastructure §3.7; SmoothRepresentationsOfLocalGroups *smooth-induction*,
*frobenius-reciprocity*; §0.1.

API:

- The unit `U → Ord_B Ind_{B̄}^G U` is an isomorphism for admissible `U` (EMERTON1, Lemma 2.3.4 and
  Proposition 4.3.4, cited in CDN23, Proposition 1.30(a)).
- The counit `ι_V : Ind_{B̄}^G Ord_B(V) → V` is natural in `V`, `Ord_B(ker ι_V) = 0`, and the image
  `V^{ord}` of `ι_V` has `Ord_B(V^{ord}) = Ord_B(V)` (CDN23, §1.5.2, p. 20).
- Ord_B commutes with finite extension of the coefficient field, and so do its derived functors
  (CDN23, proof of Lemme 1.31).

**Checks.**

- For distinct smooth characters `χ₁, χ₂` of `F^×`, `Ind_B^G(χ₁ ⊗ χ₂) ≅ Ind_{B̄}^G(χ₂ ⊗ χ₁)` by
  conjugation with `w`, so `Ord_B(Ind_B^G(χ₁ ⊗ χ₂)) = χ₂ ⊗ χ₁`: inducing from the upper Borel in the
  adjunction would give the Weyl-conjugate character.
- `Ord_B(0) = 0` and its counit is zero.
- For `V = χ ∘ det` over `k`, `V^{N₀} = k` and a strictly contracting `t` acts by
  `[N₀ : tN₀t⁻¹]·χ(det t) = q^m χ(det t) = 0`, so `Ord_B(χ ∘ det) = 0` for every `F`; a definition
  with the naive action `v ↦ tv` would give `χ ⊗ χ`.

### 2.2 Ordinary parts on ordinary constituents away from ℚ_p

Assume `F ≠ ℚ_p`. Prove: for admissible `U`, `Ord_B(Ind_{B̄}^G U) ≅ U` and
`R¹Ord_B(Ind_{B̄}^G U) = 0`; for a smooth character `χ`, `Ord_B(St ⊗ χ∘det) ≅ χ ⊗ χ` and
`R¹Ord_B(St ⊗ χ∘det) = 0`; and `Ord_B(χ∘det) = R¹Ord_B(χ∘det) = 0` (CDN23, Proposition 1.30,
pp. 20–21). Here `R¹Ord_B` is the derived functor on locally admissible representations. Route:
Hauseux proves that the cohomological `H¹Ord_B(Ind_{B̄}^G U)` vanishes when `F ≠ ℚ_p` (HAUSEUX,
Corollaire 4.2.4(ii)); prove the natural injection `R¹Ord_B → H¹Ord_B` on locally admissible
representations, built from the δ-functor of continuous `N₀`-cohomology followed by the
localisation of PotentialAutomorphyInfrastructure §3.7 (EMERTON2, Remark 3.7.3); the Steinberg and
character statements follow from the sequence `0 → χ∘det → Ind_{B̄}^G(χ⊗χ) → St⊗χ∘det → 0` and
Emerton's computation (EMERTON2, Theorem 4.2.12, cited in CDN23, Proposition 1.30(b)). *Needs:*
§2.1; PotentialAutomorphyInfrastructure §3.7 (derived version); SmoothRepresentationsOfLocalGroups
SR.0d.1.

**Checks.**

- The hypothesis `F ≠ ℚ_p` is needed: for `F = ℚ_p`, `H¹Ord_B(Ind_{B̄}^G U) ≅ ⊕_α U^α ⊗ (ω⁻¹∘α)` is
  nonzero (HAUSEUX, Corollaire 4.2.4(i)).
- The three statements are consistent with left exactness: applying `Ord_B` to
  `0 → χ∘det → Ind_{B̄}^G(χ⊗χ) → St⊗χ∘det → 0` gives `0 → 0 → χ⊗χ → Ord_B(St⊗χ∘det) → R¹Ord_B(χ∘det) = 0`.
- Over `ℚ_p`, `R¹Ord_B(1) ≠ 0` (EMERTON2, Theorem 4.2.12), so the same sequence no longer
  determines `Ord_B(St)`; the vanishing of `R¹Ord_B` on characters is what fails.

### 2.3 Finite obstruction and admissible length

Let `k` be a finite field of characteristic `p`, `V` a smooth `k[G]`-module of finite type with
central character, and `W ⊆ V` a finite-dimensional `KZ`-stable generating subspace. Prove that the
kernel of `c-Ind_{KZ}^G W → V` is finitely generated exactly when the obstruction space `Δ(W,V)` of
§0.8 is finite-dimensional; that this property does not depend on `W`; and that if `σ` is an
irreducible `KZ`-weight and `V` a nonzero admissible proper quotient of `c-Ind_{KZ}^G σ` with
`Δ(σ,V)` finite-dimensional, then `V` has finite length (HU12, Théorème 4.3, Proposition 4.4 and
Lemme 4.5, pp. 33–36; Proposition 3.30 and Corollaire 3.31, pp. 30–31; VIGNERAS11, §5,
Proposition 8 for torsion coefficients). In the proof of HU12 Proposition 4.4 the first displayed
intersection is between the positive and the negative cell, as in the next display and in
Lemme 4.5. Route for the last clause: an irreducible subrepresentation has nonzero obstruction
(§0.8), which injects, while the quotient obstruction is a quotient, so `dim Δ` drops strictly;
admissibility passes to quotients (§0.1). *Needs:* §§0.1, 0.4, 0.6, 0.8.

**Checks.**

- Properness and admissibility are needed: `c-Ind_{KZ}^G σ` has `Δ = 0` and infinite length.
- For `V` the trivial character and `W = k`, `Δ = k` is one-dimensional, and the kernel of the
  augmentation is generated by one element, as the criterion predicts.

### 2.4 Admissible finitely presented representations

Define `𝒞_𝒪(G)` as the full subcategory of smooth torsion `𝒪[G]`-representations that are
torsion-admissible (§0.1) and finitely presented (§0.3). Prove `isFiniteLength_of_admissible_of_finitelyPresented`:
every object of `𝒞_𝒪(G)` has finite length, for every finite `F/ℚ_p` (CDN23, Théorème 1.26(i),
p. 19). Prove `isFinitelyPresented_subrepresentation_of_admissible`: subrepresentations of objects
of `𝒞_𝒪(G)` are finitely presented, hence in `𝒞_𝒪(G)`; with §0.4 and §0.1, `𝒞_𝒪(G)` is closed
under subobjects, quotients and extensions (CDN23, Théorème 1.26(ii)). For `F = ℚ_p`, `𝒞_𝒪(G)` is the
category of finite-length smooth torsion representations, since irreducibles are admissible and
finitely presented (PadicLocalLanglandsForGL2Qp §2.7). For `F ≠ ℚ_p`, every object killed by `𝔪`
has, after a finite extension of `k`, only characters, twists of Steinberg and principal series as
constituents (CDN23, Lemme 1.29, p. 20). Route: reduce modulo `ϖ_L` (finite presentation bounds the
exponent), extend scalars so that a generating `KZ`-module has a central-character composition
series, apply §2.3 to the graded pieces (VIGNERAS11, §5, Proposition 8 and Théorème 7), and for
`F ≠ ℚ_p` exclude supersingular constituents by PadicLocalLanglandsForGL2Qp §2.9 and the
Barthel–Livné classification (FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.5.15). *Needs:*
§§0.1, 0.3, 0.4, 0.6, 2.3; PadicLocalLanglandsForGL2Qp §§2.7, 2.9;
FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.5.15.

API:

- Every object of `𝒞_𝒪(G)` has finite length (`isFiniteLength_of_admissible_of_finitelyPresented`).
- Subobjects, quotients and extensions of objects of `𝒞_𝒪(G)` lie in `𝒞_𝒪(G)`
  (`isFinitelyPresented_subrepresentation_of_admissible` for subobjects).
- For `F = ℚ_p`, `𝒞_𝒪(G)` is the full subcategory of finite-length smooth torsion representations.

**Checks.**

- Every smooth character `χ ∘ det` with values in `k^×` lies in `𝒞`: it is admissible, and finitely
  presented as a quotient of `c-Ind_{KZ}^G χ` by a finitely generated kernel (§2.3 with `Δ = k`).
- The Steinberg representation over `k` lies in `𝒞` and is infinite-dimensional: finite length is
  over `k[G]`.
- For `F ≠ ℚ_p` a supersingular irreducible representation over `k̄` with central character is
  admissible and not in `𝒞` (PadicLocalLanglandsForGL2Qp §2.9); `c-Ind_{KZ}^G σ` is finitely
  presented and not in `𝒞`, being non-admissible.

### 2.5 Exactness of ordinary parts and the finite-error counit

Assume `F ≠ ℚ_p`. Prove that `Ord_B` is exact on `𝒞_𝒪(G)` with values finite `𝒪`-modules; that an
object with `Ord_B(V) = 0` is a finite `𝒪`-module; and that for every `V` in `𝒞_𝒪(G)` the kernel and
cokernel of the counit `ι_V : Ind_{B̄}^G Ord_B(V) → V` are finite `𝒪`-modules (CDN23, Lemmes
1.31–1.32 and Proposition 1.33, p. 21). Route: `R¹Ord_B` vanishes on the constituents of §2.4 by
§2.2; an object with zero ordinary part has only character constituents; apply `Ord_B` to the
counit. *Needs:* §§2.1, 2.2, 2.4.

**Checks.**

- Finiteness over `𝒪` is stronger than finite length: for `V = Ind_{B̄}^G(χ₁⊗χ₂)` the counit is an
  isomorphism and `V` is infinite-dimensional, while `Ord_B(V) = χ₁ ⊗ χ₂` is one-dimensional.
- For `V = χ ∘ det`, `Ord_B(V) = 0`, the counit is `0 → V` and its cokernel `V` is one-dimensional.
- For `V = St ⊗ χ∘det`, `Ord_B(V) = χ ⊗ χ`, and the counit `Ind_{B̄}^G(χ⊗χ) → St ⊗ χ∘det` is onto
  with kernel `χ ∘ det`, finite over `𝒪`.

### 2.6 An induced approximation of an admissible Banach lattice

Assume `F ≠ ℚ_p`. Let `Π` be an admissible unitary `L`-Banach representation of `G`
(PadicLocalLanglandsForGL2Qp §0.1) and `Θ` a `G`-stable open bounded lattice with
`Θ/ϖ_LΘ ∈ 𝒞_𝒪(G)`. Prove that there is a continuous representation `σ` of `T` on a finite
`𝒪`-module and a continuous `G`-map `Ind_{B̄}^G σ → Θ` with kernel and cokernel finite over `𝒪`, the
induction being continuous induction of the compact coefficient module (CDN23, Corollaire 1.34,
p. 21). Route: apply §2.5 to `Θ/ϖ_L^nΘ`; exactness gives
`Ord_B(Θ/ϖ_L^{n+1}Θ) ⊗ 𝒪/ϖ_L^n = Ord_B(Θ/ϖ_L^nΘ)`, so the inverse limit `σ` is finite over `𝒪` by
Nakayama, and the counits pass to the limit with bounded error. Define continuous induction of a
compact `𝒪[T]`-module as the inverse limit of the smooth inductions of its finite quotients.
*Needs:* §2.5; CompletedCohomologyPartII F.1; PadicLocalLanglandsForGL2Qp §0.1;
SmoothRepresentationsOfLocalGroups *smooth-induction*.

**Checks.**

- For `Π = Ind_{B̄}^G(χ)` continuous induction of a unitary character with `Θ` the induced lattice,
  `σ = χ` and the map is an isomorphism.
- For `Π` the trivial representation `L` with `Θ = 𝒪`, `σ = 0` and the cokernel is `𝒪`, finite.

### Examples

- For `F = ℚ_{p²}` and `V` the reduction of a unitary principal series, `V` lies in `𝒞`, has length at
  most two and `Ord_B(V)` is its inducing character.
- For `F ≠ ℚ_p` the representation `V = St ⊗ χ∘det ⊕ χ′ ∘ det` has `Ord_B(V) = χ ⊗ χ`; the counit has
  kernel `χ∘det` and cokernel `χ′∘det`.

### Dependencies

Layer 0; PotentialAutomorphyInfrastructure §3.7; SmoothRepresentationsOfLocalGroups SR.0d.1 and
SR.2.1; PadicLocalLanglandsForGL2Qp §§0.1, 2.7, 2.9; FiniteFlatGroupsAndIntegralPadicHodgeTheory
R07.5.15; CompletedCohomologyPartII F.1.

## Layer 3: Tame weights and extension coordinates

From here on `F/ℚ_p` is unramified of degree `f`, with the conventions on weights, depth and
indices fixed above. Serre weights of `GL₂(k_F)` are the irreducible `k[GL₂(k_F)]`-modules,
inflated to `K` and extended to `KZ` as in FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.5.15.

### 3.1 Regular weights and depth

Define, for `λ = ((a_i,b_i))` with `0 ≤ r_i ≤ p−1`, the labelled Serre weight
`F(λ) = ⊗_i (Sym^{r_i} k² ⊗ det^{b_i})^{(i)}`; every Serre weight is of this form, uniquely modulo
`(p − π)X⁰(T)` (BHHMS23, §2.1–2.2, pp. 11–14; BP12, Lemma 3.4 for the tensor-product form). Call `λ`
*regular* when `0 ≤ r_i ≤ p−2` for all `i`, and `N`-deep when `N < r_i + 1 < p − N` for all `i`
(BHHMS23, §2.4, pp. 15–17). *Needs:* FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.5.15;
RepresentationTheory/QuiverRepresentations Layer 3.

API:

- For an integer `N ≥ 0`, `λ` is `N`-deep exactly when `N ≤ r_i ≤ p − N − 2` for all `i`; in
  particular `N`-deep weights exist only when `p ≥ 2N + 2`.
- Adding a central weight `(c_i, c_i)` preserves every `r_i` and the depth, and twists `F(λ)` by
  `det^{Σ c_i p^i}`.
- In the coordinate lattice `ℤ^J`, `η_i` has coordinate `e_i` and `α_i` has coordinate `2e_i`.

**Checks.**

- For `p = 17` and all `r_i = 3`, `λ` is `3`-deep: `3 < 4 < 14`.
- For `p = 17`, `r_0 = 2` prevents `3`-depth whatever the other `r_i` are: `3 < 3` fails.
- `((5,0))` and `((8,3))` have the same depth (`r = 5`), and `F((8,3)) = F((5,0)) ⊗ det³` is a
  different labelled weight; the strict inequalities are on `r_i + 1`, so `r_i = p−N−2` is allowed
  and `r_i = p−N−1` is not.

### 3.2 The extension-graph coordinate map

For regular `λ` let `Λ_W^λ = {ω ∈ ℤ^J : 0 ≤ r_i + ω_i ≤ p−2 for all i}` (the range in which the
translated weight stays regular). Write `ω_i = 2n_i + δ_i` with `δ_i ∈ {0,1}` (Euclidean division,
also for negative `ω_i`) and define `t_λ(ω)`, modulo `(p − π)X⁰(T)`, by its `i`-th pair:
`(a_i + n_i + δ_i, b_i − n_i)` when `δ_{i+1} = 0`, and `(b_i − 1 − n_i, a_i + n_i + δ_i − p + 1)`
when `δ_{i+1} = 1` (BHHMS23, equation (14), p. 16; Lemma 2.4.6 and Remark 2.4.7, p. 17). The parity
at `i+1` selects the branch at `i`. Let `Σ = {Σ_{i∈A} η_i : A ⊆ J}`, and call two lattice points
adjacent when they differ by `±η_i` for one `i`. *Needs:* §3.1.

API:

- `t_λ(0) = λ`.
- For a root coordinate `ν = 2n` with lift `((n_i, −n_i))`, `t_{λ + lift(ν)}(ω) = t_λ(ω + ν)`.
- Adjacency is symmetric, irreflexive, and changes exactly one coordinate by one.

**Checks.**

- `f = 1`, `p = 17`, `λ = (5,0)`, `ω = −1`: `n = −1`, `δ = 1`, second branch, `t_λ(ω) = (0, −11)`,
  so `F(t_λ(ω)) = Sym^{11} ⊗ det^{−11} = Sym^{11} ⊗ det^5`, the second constituent `Sym^{p−1−r} ⊗ det^r`
  of the principal series of §5.3.
- `f = 1`, `p = 17`, `λ = (5,0)`, `ω = 1`: `n = 0`, `δ = 1`, `t_λ(ω) = (−1, −10)`, so
  `F = Sym^9 ⊗ det^6 = Sym^{p−3−r} ⊗ det^{r+1}`, the other Ext-neighbour of `Sym^5`.
- `f = 2`, `p = 17`, `λ = ((5,0),(6,0))`, `ω = (1,0)`: `δ = (1,0)`; at `i = 0` the branch is read from
  `δ_1 = 0`, giving `(6,0)`, and at `i = 1` from `δ_0 = 1`, giving `(−1,−10)`; reading the parity at
  `i` instead would give `((−1,−10),(6,0))`, a different weight.
- `0` and `2η_0` are not adjacent; `0` and `−η_0` are.

### 3.3 Change of origin and extensions between regular weights

For `ω ∈ Λ_W^μ` and a lift `λ` of `t_μ(ω)`, let `w_ω ∈ {±1}^J` have `i`-th sign `(−1)^{ω_{i+1}}`.
Prove `t_λ(ω′) = t_μ(w_ω^{-1}ω′ + ω)` on the corresponding domains, so that change of origin
preserves adjacency; and that for `ω, ω′ ∈ Λ_W^μ`, `dim_k Ext¹_{GL₂(k_F)}(F(t_μ(ω)), F(t_μ(ω′)))` is
`1` when `ω, ω′` are adjacent and `0` otherwise (BHHMS23, Lemmas 2.4.4 and 2.4.6, Remark 2.4.7,
p. 17; BP12, Corollary 5.6, pp. 37–38). *Needs:* §3.2; RepresentationTheory/QuiverRepresentations
Layer 3.

**Checks.**

- The Ext group is for the finite group `GL₂(k_F)`, not for `K` or `I`: for `f ≥ 2` and regular `σ`,
  `Ext¹_{GL₂(k_F)}(σ,σ) = 0`, consistent with `0` not being adjacent to itself, while
  `Ext¹_{K/Z₁}(σ,σ)` is computed in §5.6.
- For `f = 1`, `p = 17`, `μ = (5,0)`: `Ext¹(Sym^5, Sym^9 ⊗ det^6)` and `Ext¹(Sym^5, Sym^{11} ⊗ det^5)` are
  one-dimensional (`ω′ = ±1`), and `Ext¹(Sym^5, F(t_μ(2)))` vanishes.

### 3.4 Tame Galois weights

Let `ρ̄ : G_F → GL₂(k)` be tame. For `s = (s_i) ∈ S₂^J` let `r` be the order of `s_0 s_{f−1} ⋯ s_1`,
`f′ = rf`, and fix an extension of the chosen embedding to the unramified extension of degree `r`;
let `ω_{f′} : I_F → k^×` be the fundamental character of the Conventions. Extend `s_i`, `ν_i`
periodically, put `a_j = s_1^{−1} ⋯ s_j^{−1}(ν_j)` (empty product at `j = 0`), and let `τ(s,ν)` be
the sum of the two characters `ω_{f′}^{Σ_{j=0}^{f′−1} p^j a_{j,c}}`, `c = 1, 2`, of inertia. If
`ρ̄|_{I_F} ≅ τ(s,μ)` with `μ − η` 1-deep, define `W(ρ̄) = {F(t_{μ−η}(sω)) : ω ∈ Σ}` (BHHMS23,
Definition 2.3.1, pp. 13–14; Proposition 2.4.2, p. 16). Prove that `W(ρ̄)` does not depend on the
inertial presentation `(s, μ)`, and that it is the set of Buzzard–Diamond–Jarvis weights of `ρ̄`
(the obvious weights, identified in BHHMS23, proof of Proposition 2.4.2).
The definition is for tame `ρ̄` only. *Needs:* §3.2; PadicLocalLanglandsForGL2Qp §0.3
(fundamental characters); ClassFieldTheory Layer 7 (`geometricArtinMap`).

API:

- `σ ∈ W(ρ̄)` exactly when `σ = F(t_{μ−η}(sω))` for some `ω ∈ Σ`.
- Equivalent inertial presentations give the same set.
- `W(ρ̄)` is nonempty with at most `2^f` elements (one for each `ω ∈ Σ`).
- The `c`-th character of `τ(s,ν)` has exponent `Σ_j p^j (s_1^{−1}⋯s_j^{−1} ν_j)_c` modulo
  `p^{f′} − 1`; no `η` is added to the input `ν`.

**Checks.**

- `f = 1`, `s = 1`, `μ − η = (5,0)`, `p = 17`: `W(ρ̄) = {F(5,0), F(−1,−10)} = {Sym^5, Sym^9 ⊗ det^6}`, the
  weights of `ρ̄|_I = ω^6 ⊕ 1` (Serre's recipe gives `Sym^r` and `Sym^{p−3−r} ⊗ det^{r+1}` for
  `ω^{r+1} ⊕ 1`).
- The empty subset gives `F(μ − η) ∈ W(ρ̄)`, so `W(ρ̄)` is never empty.
- For `f = 1`, `s = 1`, `ν = (a,b)`, `τ = ω_1^a ⊕ ω_1^b` with `ω_1` the reduction of the cyclotomic
  character on inertia; with the arithmetic Artin normalisation `ω_1` would be replaced by its
  inverse and `W(ρ̄)` by the weights of the dual.
- For `f = 1` replacing `s = −1` by `s = +1` changes `t_{μ−η}(s η_0)` from `t(−η_0)` to `t(η_0)`, a
  different weight.

### 3.5 The finite Diamond socle modules

For a finite set `𝒟` of pairwise nonisomorphic Serre weights define `D₀(𝒟)` as the largest
submodule of the injective envelope `Inj_{GL₂(k_F)}(⊕_{σ∈𝒟} σ)` in which each `σ ∈ 𝒟` occurs with
multiplicity one. Prove that it has socle `⊕_{𝒟} σ` and decomposes as `⊕_{σ∈𝒟} D_{0,σ}(𝒟)` with
`soc D_{0,σ} = σ` (BP12, Proposition 13.1 and Corollary 13.2, pp. 75–76; BHHMS23, §6.3, p. 63,
§6.4, pp. 72–73). For tame `ρ̄` with `μ − η` 1-deep put `D₀(ρ̄) = D₀(W(ρ̄))` and
`D₁(ρ̄) = D₀(ρ̄)^{I₁}`, an `I`-representation inflated from `H`. Only these finite modules are
used; no choice of the normaliser action of a full diagram is made. *Needs:* §3.4;
RepresentationTheory/QuiverRepresentations Layer 3; SmoothRepresentationsOfLocalGroups
*compact-open-invariants*.

API:

- Every finite `GL₂(k_F)`-module with socle `⊕_𝒟 σ` in which each `σ ∈ 𝒟` occurs once embeds into
  `D₀(𝒟)`, compatibly with a chosen socle embedding.
- `D₀(𝒟) = ⊕_𝒟 D_{0,σ}(𝒟)` with `soc D_{0,σ}(𝒟) = σ`.
- `D₁(ρ̄)` is the `I₁`-invariant subspace of `D₀(ρ̄)`, a semisimple `H`-module.

**Checks.**

- `D₀(∅) = 0` and `D₁` of it is zero.
- If `𝒟` is the set of all Serre weights, `D₀(𝒟) = ⊕_𝒟 σ`: any extra constituent would repeat a
  member of `𝒟`.
- `I₁` acts trivially on `D₁(ρ̄)`, while the characters of `H` on it are those of the `I₁`-invariant
  lines of the constituents, so `D₁(ρ̄)` is not a trivial `I`-module in general.

### Examples

- `f = 1`, `p = 17`, `ρ̄|_I = ω^6 ⊕ 1`: `W(ρ̄) = {Sym^5, Sym^9 ⊗ det^6}`; `D₀(ρ̄)` is the sum of the two
  largest multiplicity-free extensions with these socles inside their injective envelopes.
- For `f = 2`, `W(ρ̄)` is the image of the four points `Σ = {0, η_0, η_1, η_0 + η_1}`.

### Dependencies

FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.5.15; PadicLocalLanglandsForGL2Qp §0.3;
ClassFieldTheory Layer 7; RepresentationTheory/QuiverRepresentations Layer 3;
SmoothRepresentationsOfLocalGroups *compact-open-invariants*.

## Layer 4: Iwahori filtrations and Gelfand–Kirillov dimension

`k` is a finite field of characteristic `p`. In §§4.3–4.7, `p > 3`, `F` is unramified of degree
`f`, `P = I₁ ∩ SL₂(F)`, which maps isomorphically onto `I₁/Z₁` (for `p > 2` the determinant on `I₁`
has a square root in `1 + p𝒪_F`, so `I₁ = Z₁ × P`), `A = k[[P]]` and `𝔪 = 𝔪_P`.

### 4.1 Gelfand–Kirillov dimension of an admissible representation

For a `p`-adic Lie group `G` and an admissible smooth `k[G]`-module `V ≠ 0`, choose a compact open
subgroup `U` without `p`-torsion; its Pontryagin dual `V^∨` is a finitely generated
`k[[U]]`-module (§0.1), and define `dim_G V = δ_{k[[U]]}(V^∨) = dim U − j_{k[[U]]}(V^∨)` with the
grade and canonical dimension of NoncommutativeAndEquivariantIwasawa §F.1; put `dim_G 0 = −∞`
(BHHMS23, §5.1, pp. 46–47, equation (36)). Prove that `dim_G V` does not depend on `U`, by the
finite-index grade comparison of NoncommutativeAndEquivariantIwasawa §F.1. For `U` uniform,
`dim_G V` is the exponent of growth of `dim_k V^{U^{p^r}}` against `[U : U^{p^r}]^{1/dim U}`, by
CompletedCohomologyPartII §5.8. *Needs:* NoncommutativeAndEquivariantIwasawa §§F.1, 0.10–0.11;
CompletedCohomologyPartII §5.8; PadicLocalLanglandsForGL2Qp §0.3 (Pontryagin duality); §0.1.

API:

- Restriction to an open subgroup preserves `dim_G V`.
- `0 ≤ dim_G V ≤ dim G` for `V ≠ 0`, with `dim_G V = 0` exactly when `V` is finite-dimensional.
- Gelfand–Kirillov dimension is monotone on subrepresentations and quotients and equals the maximum
  over the two ends of a short exact sequence (Auslander regularity, NoncommutativeAndEquivariantIwasawa
  §§0.10–0.11).

**Checks.**

- The zero representation has dimension `−∞`, distinct from the value `0` of a nonzero
  finite-dimensional representation; a convention `dim 0 = 0` would break the exact-sequence
  formula on `0 → V → V → 0`.
- For the trivial line, `V^∨ = k` has grade `dim U` over `k[[U]]`, so `dim_G k = 0`.
- For `G = ℤ_p^d` and `V = C^∞(ℤ_p^d, k)`, `V^∨ = k[[ℤ_p^d]]` is free of rank one, grade `0`,
  dimension `d`; the growth `dim V^{p^rℤ_p^d} = p^{rd}` agrees.
- `c-Ind_{KZ}^G σ` is not admissible, so it has no Gelfand–Kirillov dimension in this sense.

### 4.2 Quotient and central-regular-sequence comparisons

Prove: if a closed normal analytic subgroup `N` of `G` acts trivially on admissible `V`, then
`dim_G V = dim_{G/N} V` (BHHMS23, Lemma 5.1.2, p. 47). Let `U` be compact analytic without
`p`-torsion, `R = k[[U]]` with its `𝔪`-adic filtration and `gr R` Auslander regular; let
`z₁, …, z_r ∈ gr R` be a homogeneous central regular sequence generating `𝔍` with `gr R/𝔍` a
commutative polynomial ring in `dim U − r` variables. If `𝔍` annihilates `gr M` for a finitely
generated `R`-module `M` with good filtration, then `dim U − j_R(M)` is the Krull dimension of the
support of `gr M` over `gr R/𝔍` (BHHMS23, Lemma 5.1.3, pp. 47–48). Route: the filtered grade
equality of NoncommutativeAndEquivariantIwasawa §0.5, and for the central regular sequence the
change-of-rings spectral sequence, which shifts grade by `r` exactly as the dimension drops by `r`.
*Needs:* §4.1; NoncommutativeAndEquivariantIwasawa §§0.5, F.1; Mathlib `ringKrullDim`.

**Checks.**

- The commutative support formula is not applied to the noncommutative `gr R` itself: for
  `gr R = U(𝔥)`, the Heisenberg enveloping algebra of §4.4 with `f = 1`, `e` and `f` do not commute,
  and the formula is applied only to modules killed by the central `h`, over `k[e,f]`.
- For `U = ℤ_p^d` and `𝔍 = 0`, the statement is the commutative equality
  `d − j(M) = dim Supp(gr M)`; for `M = k` it gives `0`.

### 4.3 The nonuniform pro-p Iwahori valuation

On `g = ((1 + pa, b), (pc, 1 + pd)) ∈ P` define `ω(g) = min{1 + v_p(a), 1/2 + v_p(b), 1/2 + v_p(c), 1 + v_p(d)}`.
Prove that `ω` is a saturated `p`-valuation of finite rank `3f` in the sense of
NoncommutativeAndEquivariantIwasawa §0.7, and that the logarithm identifies `P` with the lattice
`𝒪_F ⊗_{ℤ_p} {((pa, b), (pc, −pa)) : a, b, c ∈ ℤ_p}`, on which `ω` becomes the corresponding
weighted valuation, with `e, f` of degree `1/2` and `h` of degree `1` (BHHMS23, §5.3, pp. 50–51;
Lemma 5.3.1 and proof, pp. 51–52). `P` is not uniform. *Needs:* NoncommutativeAndEquivariantIwasawa
§0.7; §3.1.

API:

- `ω(g^p) = ω(g) + 1` and `ω(1) = ∞`.
- `ω([g,h]) ≥ ω(g) + ω(h)`, and the ordered products of `exp` of the basis vectors `p a_i h_i`,
  `b_i e_i`, `p c_i f_i` (over a `ℤ_p`-basis of `𝒪_F`) form an ordered basis.
- Conjugation by `H` preserves `ω` and acts on the three directions by `α_i`, `α_i^{-1}` and `1`.

**Checks.**

- The upper unipotent matrix with entry `1` has `ω = 1/2`; the lower unipotent with entry `p` has
  `ω = 1/2`.
- `diag(1+p, (1+p)^{-1})` has `ω = 1` (`v_p(a) = 0`, and `(1+p)^{−1} = 1 + p d` with `v_p(d) = 0`).
- The identity has `ω = ∞`, not `0`.
- The commutator estimate is sharp: for `u = (1 1; 0 1)` and `l = (1 0; p 1)`, both of value
  `1/2`, the commutator `ulu⁻¹l⁻¹` is congruent to `diag(1+p, 1−p)` modulo terms of higher value and
  has value `1 = 1/2 + 1/2`; this is the bracket `[e, f] = h` of §4.4.

### 4.4 The graded pro-p Iwahori algebra

Prove that in `A` one has `gh − 1 ≡ (g−1) + (h−1)` and `g^{−1} − 1 ≡ −(g−1)` modulo `𝔪²`, that
`g^p − 1 ∈ 𝔪^p`, and that for the Lazard valuation `w` induced by `ω`, `𝔪^{2j} = {x : w(x) ≥ j}` for
`j ∈ (1/2)ℕ`. After doubling degrees, `gr_𝔪 A ≅ ⊗_{i∈J} U_k(𝔥_i)`, where `𝔥_i` has basis
`e_i, f_i, h_i` in degrees `1, 1, 2` with only nonzero bracket `[e_i, f_i] = h_i`; `H` acts on
`e_i, f_i, h_i` by `α_i, α_i^{−1}, 1`. This ring is Auslander regular, the `h_i` form a central
regular sequence, and the quotient by them is the polynomial ring `k[e_i, f_i : i ∈ J]` (BHHMS23,
Lemma 5.3.2 and Proposition 5.3.3, pp. 52–53; equations (42)–(43) and Theorem 5.3.4(i),
pp. 53–54). Route: the weighted graded algebra of NoncommutativeAndEquivariantIwasawa §0.8 for the
saturated `p`-valued group `(P, ω)`, reduced modulo `p`, with the brackets computed after splitting
`𝒪_F ⊗ k = ∏_J k`; PBW and §0.5 give Auslander regularity. *Needs:* §4.3;
NoncommutativeAndEquivariantIwasawa §§0.5, 0.8.

**Checks.**

- The full graded ring is noncommutative: `[e_i, f_i] = h_i ≠ 0` in degree two.
- Degree counts: `gr¹` has dimension `2f` and `gr²` has dimension `f(2f+1) + f = 2f² + 2f` (ordered
  quadratic monomials in the `e, f` plus the `h_i`).
- For `f = 1`, the `H`-weights in degree two are `α², α^{−2}` (for `e²`, `f²`) and `1` (for `ef`,
  `h`); in particular the trivial-weight part of `gr²` is spanned by `h` and `ef`.

### 4.5 The crossing algebra

For a field `k` and a finite set `J` define `C_J(k) = k[X_i, Y_i : i ∈ J]/(X_iY_i : i ∈ J)`. Prove
that its Krull dimension is `|J|`, that it is a complete intersection and Cohen–Macaulay, and that
the two-sided ideal `𝔍_P` of `gr_𝔪 A` generated by the `h_i` and the `e_i f_i` has quotient
`C_J(k)`, `H`-equivariantly, all generators of `𝔍_P` having degree two and trivial `H`-weight
(BHHMS23, Theorem 5.3.4(ii), p. 54). *Needs:* Mathlib `MvPolynomial`, `Ideal.span`,
`Ideal.Quotient.mk`, `ringKrullDim`, `MvPolynomial.ringKrullDim_of_isNoetherianRing_of_finite`,
`RingTheory.Sequence.IsRegular`; DeformationAndDerivedPatchingAlgebra §3.4; §4.4.

API:

- The quotient map `k[X_i, Y_i] → C_J(k)` is surjective and kills each `X_iY_i`.
- `gr_𝔪 A / 𝔍_P ≅ C_J(k)` compatibly with the `H`-actions (`e_i ↦ X_i`, `f_i ↦ Y_i`).
- `ringKrullDim C_J(k) = |J|`: the sequence `(X_iY_i)_i` is regular in the polynomial ring of
  dimension `2|J|`, and the minimal primes are the `|J|`-variable coordinate ideals
  `(Z_i : i ∈ J)` with `Z_i ∈ {X_i, Y_i}`.

**Checks.**

- `J = ∅`: `C_∅(k) = k`, of dimension `0`.
- `|J| = 1`: `k[X,Y]/(XY)` has `X, Y ≠ 0`, `XY = 0`, and dimension `1`, not `2`.
- For `i ≠ j`, `X_iY_j ≠ 0` in `C_J(k)`: only matching indices are killed.

### 4.6 Truncated projective Iwahori modules

For a compact `p`-adic analytic group `U` define the projective envelope `Proj_U(τ)` of a smooth
irreducible `τ` in the category of pseudocompact `k[[U]]`-modules as the Pontryagin dual of the
injective envelope of `τ^∨` in the smooth category (SmoothRepresentationsOfLocalGroups SR.0d.1).
For a smooth character `χ : I → k^×` trivial on `Z₁` and `n ≥ 1` put
`W_{χ,n} = Proj_{I/Z₁}(χ)/𝔪_{I₁}^n Proj_{I/Z₁}(χ)`. Prove that `Proj_{I/Z₁}(χ) = χ ⊗ k[[I₁/Z₁]]`, with
`I₁` acting by left multiplication and `H` by conjugation, so that
`W_{χ,n} = χ ⊗ k[[I₁/Z₁]]/𝔪^n` is finite-dimensional with simple cosocle `χ` (BHHMS23, equation
(45) and the following paragraph, p. 56). For `n = 2, 3` these are radical quotients of the
projective envelope, not socle truncations. *Needs:* Tau Ceti `TauCeti.completedGroupAlgebra`;
SmoothRepresentationsOfLocalGroups SR.0d.1; PadicLocalLanglandsForGL2Qp §0.3; §4.4.

API:

- `W_{χ,1} = χ`, compatibly with the projection from the envelope.
- For `m ≤ n` there is a surjection `W_{χ,n} → W_{χ,m}` with kernel `𝔪^m W_{χ,n}`.
- `dim W_{χ,2} = 1 + 2f` and `dim W_{χ,3} = 1 + 4f + 2f²`.

**Checks.**

- `W_{χ,1}` is the character `χ`, not the whole envelope.
- For `f = 1`, `dim W_{χ,2} = 3` and `dim W_{χ,3} = 7`; omitting the central generator `h` would
  give `6`.
- The `𝔪_{I₁}`-action factors through `I₁/Z₁`, and the `H`-characters of `W_{χ,2}` are `χ`,
  `χα_i`, `χα_i^{−1}`.

### 4.7 A multiplicity criterion for Gelfand–Kirillov dimension

Assume `p > 3` and let `V` be an admissible smooth `k`-representation of `I/Z₁`. Suppose that for
each character `χ` with `Hom_I(χ, V) ≠ 0`, precomposition with `W_{χ,3} → χ` is an isomorphism
`Hom_I(χ, V) ≅ Hom_I(W_{χ,3}, V)`. Then `𝔍_P` annihilates `gr_𝔪(V^∨)` and
`dim_I V = dim_{I/Z₁} V ≤ f` (BHHMS23, Corollary 5.3.5, pp. 54–55). Route: dually, the hypothesis
kills the trivial-weight part of `gr²` on the degree-zero generators of `gr(V^∨)`; `h_i` is
central, so `h_i gr(V^∨) = 0`, and modulo the `h_i` the algebra is commutative, so the `e_if_i` kill
everything; then §4.2 and §4.5 give the bound. *Needs:* §§4.2, 4.5, 4.6.

**Checks.**

- Only an upper bound is claimed: for `V` finite-dimensional the hypothesis can hold and
  `dim = 0 < f`.
- For `V = C^∞(I/Z₁, k)` with right translation (Gelfand–Kirillov dimension `3f`), the hypothesis
  fails at `χ = 1`: `Hom_I(W_{1,3}, V) ≅ Hom_k(W_{1,3}, k)` is `7`-dimensional for `f = 1`, while
  `Hom_I(1, V)` is one-dimensional.

### Examples

- For `f = 1`, `gr A = U(𝔥)` with `𝔥` the Heisenberg algebra and `gr A/𝔍_P = k[X,Y]/(XY)`, of
  dimension one: an admissible `V` satisfying §4.7 has `dim_I V ≤ 1`.
- For `G = ℤ_p` and `V = C^∞(ℤ_p, k)`, `dim = 1`; for `V = k`, `dim = 0`.

### Dependencies

Layer 0 (§0.1); NoncommutativeAndEquivariantIwasawa §§0.5, 0.7, 0.8, 0.10–0.11, F.1;
CompletedCohomologyPartII §5.8; SmoothRepresentationsOfLocalGroups SR.0d.1; Tau Ceti completed
group algebras; DeformationAndDerivedPatchingAlgebra §3.4; Mathlib commutative algebra; Layer 3
(§3.1).

## Layer 5: Finite and first-order extension modules

`p > 3`, `F` unramified of degree `f`, `Γ = GL₂(k_F)`, `P_σ = Proj_Γ σ` (Tau Ceti
`TauCeti.exists_isProjectiveCover_of_finiteDimensional`) and `Inj_Γ σ` its injective envelope.

### 5.1 Iwahori character extensions and truncation embeddings

Prove: `Ext¹_{I/Z₁}(χ, χ′)` is nonzero exactly when `χ′ = χα_i` or `χα_i^{−1}` for some `i`, and is
then one-dimensional; write `E_{χ′,χ}` for the nonsplit extension `0 → χ′ → E → χ → 0`. It is
`K₁`-trivial (factors through `I/K₁`) exactly when `χ′ = χα_i`. Every nonzero map
`W_{χ′,2} → W_{χ,3}` for such `χ′` is injective (BHHMS23, Lemmas 6.1.1–6.1.2, p. 56; equation (44),
p. 55). For `p > 5`, every `χ′ ≠ χ` occurs at most once in `W_{χ,3}`. The bound `p > 5` is needed:
the printed statement assumes `p > 3`, but for `p = 5`, `f = 1` the root character `α` has order four,
`α² = α^{−2} ≠ 1`, and the independent degree-two vectors `e²`, `f²` both have weight `α²`, so `χα²`
occurs twice. *Needs:* §§4.4, 4.6; SmoothRepresentationsOfLocalGroups *compact-open-invariants*.

**Checks.**

- The `p = 5`, `f = 1` collision just described: multiplicity two for `χα²` in `W_{χ,3}`.
- `Ext¹_{I/Z₁}(χ, χ)` vanishes: the degree-one part of `gr A` has weights `α_i^{±1} ≠ 1` (as `p > 3`).
- Orientation: torus conjugation multiplies the upper unipotent direction `e_i` by `α_i` and the
  lower direction `f_i` by `α_i^{−1}`. The extension through `e_i` is `E_{χα_i,χ}` and factors through
  `I/K₁ = B(k_F)`; the extension through `f_i` is `E_{χα_i^{−1},χ}`, on which the elements
  `(1 0; pc 1) ∈ K₁` act nontrivially. Swapping the two would make the wrong extension `K₁`-trivial.

### 5.2 Finite Borel injectives and their conjugates

Let `B(k_F) = T(k_F)N(k_F)`. For a character `χ` of `T(k_F)` let `I_χ = Ind_{T(k_F)}^{B(k_F)} χ`, the
injective envelope of `χ` for `B(k_F)`. Prove that its socle and cosocle are `χ`, every other
constituent is `χα_0^{−j}`, `0 < j < q−1`, once; that for `j = Σ j_i p^i` the unique submodule with
cosocle `χα_0^{−j}` has constituents `χα_0^{−ℓ}` with `0 ≤ ℓ_i ≤ j_i` (digitwise); and the
corresponding statements for `J_χ`, the inflation to `I` conjugated by `w = (0 1; p 0)`, which has
socle and cosocle `χ^s` and other constituents `χ^s α_0^{j}` with the same digit order (BHHMS23,
Lemma 6.1.3 and Corollary 6.1.4, pp. 57–58). *Needs:* RepresentationTheory/QuiverRepresentations
Layer 3; SmoothRepresentationsOfLocalGroups *smooth-induction*; §3.1.

API:

- `I_χ` has dimension `q`, with socle and cosocle `χ`.
- For `0 < j < q−1`, the submodule with cosocle `χα_0^{−j}` has dimension `∏_i (j_i + 1)`.
- Conjugation by `w` replaces `χ` by `χ^s` and the exponents of `α_0` by their negatives.

**Checks.**

- `f = 1`, `0 < j < p−1`: the submodule has length `j + 1`.
- `p = 7`, `f = 2`, `j = 1 + 2p`: length `(1+1)(2+1) = 6`, not `j + 1 = 16`.
- `χ` occurs twice in `I_χ` (socle and cosocle), so `I_χ` is not multiplicity-free; `J_χ` does not
  factor through `B(k_F)` in general, although `I_χ` does.

### 5.3 Finite principal series and finite injective hulls

Prove: for `0 < r_i < p−1`, `Ind_I^K χ_λ^s` is multiplicity-free with constituents `F(t_λ(−η_A))`,
`A ⊆ J`, where `η_A = Σ_{i∈A} η_i`; for `0 < r_i < p−2`, the distinct constituents of `Inj_Γ F(λ)` are
the `F(t_λ(Σ a_i η_i))`, `a_i ∈ {−1, 0, 1}`; and for such a constituent `σ_a` there is a unique
submodule `I(F(λ), σ_a)` of `Inj_Γ F(λ)` with cosocle `σ_a` in which `F(λ)` occurs once; it is
multiplicity-free with constituents `σ_b`, `b_i ∈ {0, a_i}`, and length `2^{#{i : a_i ≠ 0}}`
(BHHMS23, Lemma 6.2.1, pp. 58–59; BP12, Corollary 3.12, p. 26). *Needs:* §§3.3, 5.2;
RepresentationTheory/QuiverRepresentations Layer 3; Tau Ceti
`TauCeti.exists_isProjectiveCover_of_finiteDimensional`.

API:

- `I(σ, τ)` has simple socle `σ`, simple cosocle `τ`, and `[I(σ,τ) : σ] = 1`.
- Within `Inj_Γ σ`, the submodule with these endpoint and multiplicity properties is unique.
- For `τ = σ_a` its constituents are the `σ_b` with `b_i ∈ {0, a_i}`, each once.

**Checks.**

- `I(σ, σ) = σ`.
- If exactly one `a_i` is nonzero, `I(σ, σ_a)` is the nonsplit extension of length two.
- If two `a_i` are nonzero, `I(σ, σ_a)` has length four with two incomparable middle constituents,
  not a uniserial chain of length three. The whole of `Inj_Γ σ` is not multiplicity-free.

### 5.4 Projective lifts over a complete discrete valuation ring

Let `Γ` be a finite group, `𝒪` a complete discrete valuation ring with residue field `k` and
fraction field `L`. Prove: every finitely generated projective `k[Γ]`-module `P` lifts to a
finitely generated projective `𝒪[Γ]`-module `P̃` with `P̃/ϖ_LP̃ ≅ P`, unique up to isomorphism (lift
the idempotents of `End(P)` along the complete ideal `ϖ_L`); for every finite `𝒪[Γ]`-module `M`,
`Hom_{𝒪[Γ]}(P̃, M) ⊗_𝒪 k ≅ Hom_{k[Γ]}(P, M/ϖ_LM)`; and if `L` splits `Γ`, then for every irreducible
`L[Γ]`-module `V` with a stable lattice, `[P̃_σ[1/p] : V] = [V̄ : σ]` (Brauer reciprocity) (SERRE-LRFG,
Part III, Chapters 14–15; BHHMS23, last paragraph of the proof of Lemma 4.1.2, p. 27). This is general
algebra for finite groups, owned here because no supplier plans it; QuiverRepresentations Layer 3
supplies the field case. *Needs:* RepresentationTheory/QuiverRepresentations Layer 3; Mathlib
idempotents (`OrthogonalIdempotents`, `Mathlib/RingTheory/Idempotents.lean`).

API:

- `P̃_σ` is indecomposable with `P̃_σ/ϖ_L = P_σ`, and `P̃_{σ ⊕ τ} = P̃_σ ⊕ P̃_τ`.
- `rank_𝒪 P̃ = dim_k P`.
- Lifting commutes with finite unramified extension of `𝒪`.

**Checks.**

- For `Γ` of order prime to `p`, `P = σ` and `P̃` is the unique lattice lifting `σ`.
- For `Γ = ℤ/p` and `σ = k`, `P_σ = k[ℤ/p]`, `P̃_σ = 𝒪[ℤ/p]`, and `P̃_σ[1/p]` contains each of the `p`
  characters of `ℤ/p` (over `L ∋ μ_p`) once, matching `[χ̄ : k] = 1` for each character.
- Over a field (`𝒪 = k`, not a discrete valuation ring) no lift to characteristic zero exists; the
  completeness of `𝒪` is used to lift idempotents.

### 5.5 Adjoint tensor and finite projective weight structure

Let `A_i = sl₂(k)` with `Γ` acting through `σ_i`. Prove: for 2-deep `λ`,
`A_i ⊗ F(λ) ≅ F(λ − α_i) ⊕ F(λ) ⊕ F(λ + α_i)`, and the same decomposition holds for the algebraic
highest-weight modules before restriction; for 3-deep `λ` and `σ = F(λ)`,
`A_i ⊗ P_σ ≅ P_{F(λ−α_i)} ⊕ P_σ ⊕ P_{F(λ+α_i)}`, and tensoring `σ → soc P_σ` and `cosoc P_σ → σ` with
`A_i` gives the full socle and cosocle of this tensor; `[P_σ : σ] = 2^f` and
`[P_{F(λ±α_i)} : σ] = 0`; and after a finite unramified extension splitting `Γ`, `P̃_σ[1/p]` is the
sum of exactly `2^f` pairwise nonisomorphic absolutely irreducible representations (LMS22,
Proposition 3.3, pp. 7–8, read with LMS22-CORR, item (2); BHHMS23, last paragraph of the proof of
Lemma 4.1.2, p. 27; Lemma 6.3.7, p. 63; BP12, Lemmas 3.4–3.5, pp. 20–21, and Lemma 3.8,
pp. 22–23). LMS22 Proposition 3.3(2) as printed identifies every translated summand with a
projective cover; the corrected statement uses the translated module `R_{μ+ν}`, which is the
projective cover when the shifted weight is not a character, and the 3-deep hypothesis excludes
characters. *Needs:* §§3.1, 5.3, 5.4; Tau Ceti
`TauCeti.exists_isProjectiveCover_of_finiteDimensional`.

**Checks.**

- `dim(A_i ⊗ P_σ) = 3 dim P_σ`, and its cosocle is the three shifted weights, not three copies of
  `σ`.
- For `f = 1`, `[P_σ : σ] = 2` and `P̃_σ[1/p]` has two distinct constituents: multiplicity-freeness of
  the rational lift does not make `P_σ` multiplicity-free.
- The 2-deep clause means `2 ≤ r_i ≤ p−4`; at `r_i = p−3` the weight `λ + α_i` has `r_i + 2 = p−1` and
  is not regular, and no decomposition is asserted there; at `r_i = 1` the weight `λ − α_i` has
  `r_i − 2 < 0` and is not a weight at all.

### 5.6 First-order Serre-weight hulls

Let `A₁ = k[[K/Z₁]]/𝔪_{K₁}²` (finite-dimensional). For a smooth irreducible `σ`, the injective
envelope `Inj_{K/Z₁} σ` (SmoothRepresentationsOfLocalGroups SR.0d.1) has
`Inj_{K/Z₁}σ[𝔪_{K₁}²] = Inj_{A₁} σ`, finite-dimensional, with `K₁`-invariants `Inj_Γ σ` and quotient
embedded in `Inj_Γ σ ⊗ H¹(K₁/Z₁, k)`, where `H¹(K₁/Z₁, k) ≅ ⊕_i A_i^*` (NoncommutativeAndEquivariantIwasawa
§0.13 for `K₁/Z₁` uniform of dimension `3f`). Prove (for `p > 3`): for 2-deep `σ` and
`τ ∈ JH(Inj_{A₁} σ)`, a submodule `V ⊆ Inj_{A₁} σ` with `cosoc V = τ` and `[V : σ] = 1` is unique and
multiplicity-free; if `τ ∈ JH(Inj_Γ σ)` then `K₁` acts trivially on `V` and `V = I(σ, τ)`. Dually,
for 2-deep `τ` a quotient of `Proj_{A₁} τ` with simple socle `σ` and `[V : τ] = 1` is unique; a quotient
`Q` of `Proj_{A₁} τ` with `[Q : τ] = 1` whose socle constituents lie in `JH(P_τ)` is multiplicity-free
and `K₁`-trivial. For distinct regular `σ, σ′`, inflation identifies `Ext¹_Γ(σ,σ′)`,
`Ext¹_{K/Z₁}(σ,σ′)` and `Ext¹_{A₁}(σ,σ′)`; `Ext¹_{K/Z₁}(σ,σ) = 0` for regular `σ` when `f ≥ 2`, and
for `f = 1` when `0 ≤ r ≤ p−3` (HW22, Lemma 2.10, p. 12; Theorem 2.23 and Corollaries 2.25–2.26,
p. 17; Theorem 2.30 and Corollary 2.31, p. 20). *Needs:* §§3.3, 5.3; Tau Ceti
`TauCeti.completedGroupAlgebra`; SmoothRepresentationsOfLocalGroups SR.0d.1;
NoncommutativeAndEquivariantIwasawa §0.13; RepresentationTheory/QuiverRepresentations Layer 3.

**Checks.**

- The 2-deep condition means `2 ≤ r_i ≤ p−4`; uniqueness is for submodules of the fixed hull with
  `[V:σ] = 1`, not for arbitrary `K`-extensions with prescribed constituents.
- `dim_k H¹(K₁/Z₁, k) = 3f`: `K₁/Z₁` is uniform of dimension `3f` (as `p > 2`), and
  `dim Inj_{A₁} σ ≤ (1 + 3f) dim Inj_Γ σ`.
- For `f = 1` and `r = p−2`, the self-extension clause is excluded, since the bound `r ≤ p−3` fails.

### Examples

- `f = 1`, `p = 17`, `σ = Sym^5`: `Inj_Γ σ` has distinct constituents `Sym^5`, `Sym^9 ⊗ det^6` and
  `Sym^{11} ⊗ det^5` (labels `a ∈ {−1, 0, 1}`), and `I(σ, Sym^9 ⊗ det^6)` is the nonsplit extension of
  length two.
- `f = 1`: `A_0 ⊗ Sym^r ≅ Sym^{r−2} ⊗ det ⊕ Sym^r ⊕ Sym^{r+2} ⊗ det^{−1}` for `2 ≤ r ≤ p−4`.

### Dependencies

Layers 3–4; RepresentationTheory/QuiverRepresentations Layer 3; Tau Ceti projective covers and
completed group algebras; SmoothRepresentationsOfLocalGroups SR.0d.1 and SR.2.1;
NoncommutativeAndEquivariantIwasawa §0.13; Mathlib idempotents.

## Layer 6: Diamond boxes and multiplicity-preserving enlargements

`p > 3`, `F` unramified of degree `f`, `K`-representations are smooth and factor through `K/Z₁`;
`σ_a = F(t_λ(Σ_i ε_i a_i η_i))` for a sign vector `ε` and `a ∈ ℕ^J`.

### 6.1 Rectangular multiplicity-free K-modules

Let `ε_i ∈ {±1}`, `B_i ≥ 0` and `d_i = (1 + ε_{i−1})/2` (cyclic indices). Assume `B_i ≡ 1 − d_i`
modulo 2, `B_i ≤ r_i ≤ p − 2 − d_i` when `ε_i = −1`, and `B_i ≤ p − 2 − r_i ≤ p − 2 − d_i` when
`ε_i = +1`. Prove that there is a multiplicity-free `K/Z₁`-module `V(λ, ε, B)` with constituents
`σ_a`, `0 ≤ a_i ≤ B_i`, such that the unique submodule with cosocle `σ_a` has exactly the
constituents `σ_b`, `0 ≤ b_i ≤ a_i`, and with socle `F(λ)` (BHHMS23, Proposition 6.2.2, pp. 59–60;
HU10, Lemma 2.13(i), pp. 14–15, numbered Lemma 2.12(i) in the journal version cited by BHHMS).
The target is existence with this structure, not uniqueness of modules with these constituents.
Route: for all signs negative, induce the digit-ordered submodule of `J_χ` (§5.2) with digit bounds
`(B_i − 1)/2` and identify the box by the principal-series labels; for `f ≥ 2` the covering
relations are the nonsplit edges given by Hu's lemma on `Ind_I^K E_j(χ)`, for `f = 1` by the
two-character Frobenius-reciprocity argument; mixed signs follow by change of origin (§3.3), the
shift `d_i` moving the parity condition to the predecessor index. *Needs:* §§3.3, 5.2, 5.3.

API:

- `JH(V)` is the box `{σ_a : 0 ≤ a_i ≤ B_i}`, each with multiplicity one, and
  `length V = ∏_i (B_i + 1)`.
- The submodule generated under the cosocle constituent `σ_a` has exactly the coordinatewise lower
  interval `b ≤ a`.
- `soc_K V = F(λ)`, the constituent `a = 0`.

**Checks.**

- All `ε_i = −1` and all `B_i = 1`: `d_i = 0`, the parity condition holds, `V` has length `2^f` and is
  the principal series `Ind_I^K χ_λ^s` of §5.3.
- `f = 2`, `ε = (+1, −1)`: `d_0 = (1 + ε_1)/2 = 0` and `d_1 = (1 + ε_0)/2 = 1`, so `B_0` must be odd and
  `B_1` even; using `ε_i` instead of `ε_{i−1}` would reverse them.
- A constituent with coordinate `a = (1, 2)` generates a lower interval of length `(1+1)(2+1) = 6`,
  when the bounds allow `B ≥ (1,2)`.

### 6.2 K₁-invariance and the box torsion filtration

Prove: if a finite-dimensional smooth `K`-module `V` has `soc_K V = F(λ)` with `2 < r_i < p−3`,
`[V : F(λ)] = 1`, and every constituent of `V` occurs in `Inj_Γ F(λ)`, then `K₁` acts trivially on
`V`. For `V(λ, ε, B)`, keep the predecessor parity condition and assume `3 + 2⌊B_i/2⌋ ≤ r_i ≤ p−4`
when `ε_i = −1` and `3 ≤ r_i ≤ p − 4 − 2⌊B_i/2⌋` when `ε_i = +1`; then for
`0 ≤ n − 1 ≤ Σ_i ⌊B_i/2⌋`, `V[𝔪_{K₁}^n]` has cosocle `⊕ σ_a` over the `a` with `0 ≤ a_i ≤ B_i`,
each `a_i` odd or equal to `B_i`, and `Σ_i ⌊a_i/2⌋ = n − 1`, and it is the union of the
corresponding lower intervals (BHHMS23, Lemma 6.2.3 and Proposition 6.2.4, pp. 60–61). *Needs:*
§§5.6, 6.1; RepresentationTheory/QuiverRepresentations Layer 3; SmoothRepresentationsOfLocalGroups
*compact-open-invariants*.

**Checks.**

- The `K₁`-depth is counted by `Σ ⌊a_i/2⌋`, not by the box rank `Σ a_i`: for `f = 1`, `B = 3`, the
  constituents `a = 0, 1` are `K₁`-invariant and `a = 2, 3` are in the second layer.
- `n = 1` gives `V[𝔪_{K₁}] = V^{K₁}`, the lower interval below the constituents with
  `⌊a_i/2⌋ = 0` for all `i`, that is `a_i ≤ 1`.
- The filtration is not a direct sum decomposition: `V(λ, ε, B)` is indecomposable with simple socle.

### 6.3 Cosocles and Ext control after Iwahori induction

Write `χ = χ_λ`. Prove: for `χ′ = χα_i^{−1}`, `Ind_I^K E_{χ′,χ}` and `Ind_I^K χ` have the same cosocle;
for `χ′ = χα_i` and `0 < r_j < p−3`, `Ind_I^K E_{χ′,χ}` is multiplicity-free; for `2 < r_j < p−3`,
`Ind_I^K W_{χ,2}` is multiplicity-free; and under these bounds, with `σ_χ = F(λ)`, the image of the
nonzero map `P_{σ_χ} → Ind_I^K E_{χα_i,χ}` (unique up to scalar) has constituents the intersection
of the two Jordan–Hölder sets, and for every quotient `Q` of this induced extension with
`[Q : σ_χ] = 0`, `Ext¹_K(τ, σ_χ) = 0` for all `τ ∈ JH(Q)` (BHHMS23, Lemmas 6.3.1 and 6.3.3–6.3.5,
pp. 61–63). *Needs:* §§5.1, 5.3, 6.1; RepresentationTheory/QuiverRepresentations Layer 3;
SmoothRepresentationsOfLocalGroups *frobenius-reciprocity*.

**Checks.**

- The two root directions behave differently: for `χ′ = χα_i^{−1}` the cosocle does not grow, for
  `χ′ = χα_i` the induced module is multiplicity-free of length `2^{f+1}`.
- For `f = 1`, `Ind_I^K χ` has length two (§5.3), and `Ind_I^K E_{χα,χ}` has length four.

### 6.4 The Diamond boxes `D_{λ,ε}`

For 1-deep `λ` and `ε ∈ {−1, 0, 1}^J let `J_ε = {i : ε_i ≠ 0}` and
`D_{λ,ε} = I(F(λ), F(t_λ(Σ_i ε_i η_i)))` (§5.3). Prove that its constituents are
`F(t_λ(Σ_{i∈A} ε_i η_i))`, `A ⊆ J_ε`, with the Boolean lower-interval submodule order; it has length
`2^{|J_ε|}`, socle `F(λ)` and cosocle `F(t_λ(Σ ε_i η_i))`; `D_{λ,−𝟙} = Ind_I^K χ_λ^s`; and for 2-deep
semisimple `ρ̄` each `D_{0,σ}(ρ̄)` of §3.5 is of this form with all `ε_i = ±1` (BHHMS23, equation (48)
and Remark 6.3.6, p. 63). *Needs:* §§3.5, 5.3.

API:

- `JH(D_{λ,ε})` is the labelled Boolean box of subsets of `J_ε`.
- `soc D_{λ,ε} = F(λ)` and `cosoc D_{λ,ε} = F(t_λ(Σ ε_i η_i))`.
- `D_{λ,−𝟙} ≅ Ind_I^K χ_λ^s`.

**Checks.**

- `ε = 0`: `D_{λ,0} = F(λ)`, length one.
- Exactly one nonzero sign: the nonsplit extension of length two.
- Two nonzero signs: four constituents and two incomparable middle submodules, not a chain.

### 6.5 Tensoring Diamond boxes by an adjoint factor

Prove, for `2 < r_i < p−4`: `D_{λ,ε} ⊗ F(α_j)` (with `F(α_j) = A_j`) is multiplicity-free with
constituents `F(t_λ(2uη_j + Σ_{i∈A} ε_i η_i))`, `u ∈ {−1,0,1}`, `A ⊆ J_ε`; its socle has the three
labels `2uη_j` and its cosocle the three labels `2uη_j + Σ ε_i η_i`. If `λ` is 4-deep and `ε_j ≠ 0`,
it has an increasing three-step filtration with graded pieces `D_{λ+ε_jα_j, ε}`, `D_{λ,ε}`,
`D_{λ−ε_jα_j, ε}`, the first embedding having cokernel with socle `F(λ) ⊕ F(t_λ(−2ε_jη_j))`; if
`ε_j = 0` the tensor product is the direct sum of the three root shifts. If `λ` is 5-deep, every pair
of adjacent constituents occurs, in one orientation, as a nonsplit length-two subquotient
(BHHMS23, Lemmas 6.3.7–6.3.9 and Proposition 6.3.10, pp. 63–68). Route: §5.5 for a single weight;
the explicit length-two computation of Lemma 6.3.9 (three successive nonsplit length-two layers with
labels `(2ε, 3ε)`, `(0, ε)`, `(−2ε, −ε)` along `η_j`); glue across the Boolean box. *Needs:* §§3.3, 5.5,
6.3, 6.4; RepresentationTheory/QuiverRepresentations Layer 3.

**Checks.**

- The filtration is not split: the extensions between successive graded pieces are nonsplit.
- `ε = 0`: `F(λ) ⊗ A_j = F(λ − α_j) ⊕ F(λ) ⊕ F(λ + α_j)`, which is §5.5.
- Dimension: `dim(D_{λ,ε} ⊗ A_j) = 3 dim D_{λ,ε}`, and the constituent count is `3 · 2^{|J_ε|}`.

### 6.6 The maximal first-order enlargement of a Diamond box

Assume `λ` 7-deep and `ε ∈ {±1}^J`. Put `𝒲_{−ε} = {F(t_λ(−Σ_{i∈A} ε_i η_i)) : A ⊆ J}` and let `W` be the
largest submodule of `Inj_{K/Z₁} F(λ)[𝔪_{K₁}²]` with `[W : τ] = δ_{F(λ),τ}` for `τ ∈ 𝒲_{−ε}`. Prove
that `W` is multiplicity-free, `W^{K₁} = D_{λ,ε}`, and
`0 → D_{λ,ε} → W → ⊕_i D_{λ+ε_iα_i, ε} → 0` is exact; its cosocle has the labels
`2ε_jη_j + Σ ε_i η_i`, one for each `j`; and the unique submodule with cosocle `σ_a` consists of the
constituents `σ_b` of `W` with `0 ≤ b_i ≤ a_i` (BHHMS23, Theorem 6.3.11, pp. 68–69). Route: sums of
submodules preserving the protected multiplicities preserve them, giving `W`; `W/D` embeds into
`D ⊗ H¹(K₁/Z₁, k)` and the adjoint filtration of §6.5 selects the allowed shifted boxes. *Needs:*
§§3.5, 5.6, 6.2, 6.5; NoncommutativeAndEquivariantIwasawa §0.13; SmoothRepresentationsOfLocalGroups
SR.0d.1.

API:

- Every submodule of `Inj_{K/Z₁}F(λ)[𝔪_{K₁}²]` preserving the protected multiplicities lies in `W`.
- `W^{K₁} = D_{λ,ε}` and `𝔪_{K₁}² W = 0`.
- `W/D_{λ,ε} ≅ ⊕_i D_{λ+ε_iα_i, ε}`.

**Checks.**

- `f = 1`: `W` has length four, `D` of length two and the single shifted box of length two.
- An opposite neighbour `F(t_λ(−ε_jη_j))` does not occur in `W`: it is protected.
- `W ≠ W^{K₁}` for every `f ≥ 1`: replacing the first-order truncation by its invariants loses the
  quotient, and the quotient by `D` is a sum of shifted boxes while `W` itself is indecomposable.

### 6.7 Multiplicity-preserving enlargement of a tame socle

Let `ρ̄` be tame with `μ − η` 8-deep, and `τ = ⊕_{σ∈W(ρ̄)} σ^{m_σ}`, `m_σ ≥ 1`. Prove that the largest
submodule `V ⊆ Inj_{K/Z₁} τ [𝔪_{K₁}²]` preserving these multiplicities splits as `⊕ V_σ^{m_σ}`, that
distinct `V_σ` have disjoint Jordan–Hölder sets, that for `σ = F(λ)` with its signed box
`V_σ^{K₁} = D_{0,σ}(ρ̄)` and the constituents of `V_σ` are the `σ_a` with `a_i ≥ 0` and
`Σ ⌊a_i/2⌋ ≤ 1` inside the box support (`a_i ≤ 3`), with the lower-interval order; hence
`V^{K₁} = ⊕ D_{0,σ}(ρ̄)^{m_σ}` (BHHMS23, Corollaries 6.3.13 and 6.3.15, pp. 69–71). *Needs:* §§3.4,
3.5, 6.6.

**Checks.**

- The multiplicities `m_σ` are carried by the invariants; no multiplicity-one assumption on the
  socle is made.
- For `f = 1`, `W(ρ̄)` has two weights `σ₁, σ₂`, and `V_{σ₁}`, `V_{σ₂}` have disjoint constituents, each
  of length four.

### Examples

- `f = 1`, `p = 17`, `λ = (8,0)`, `ε = −1`: `D_{λ,−1} = Ind_I^K χ_λ^s` has constituents `Sym^8` and
  `Sym^8 ⊗ det^8`, and `W` adds the shifted box `D_{λ−α,−1}`.
- `f = 2`, `ε = (+1,+1)`: `D_{λ,ε}` has four constituents indexed by `A ⊆ {0,1}`, and `W/D` is the sum
  of two shifted boxes of length four each.

### Dependencies

Layers 3 and 5; NoncommutativeAndEquivariantIwasawa §0.13; SmoothRepresentationsOfLocalGroups
SR.0d.1, *compact-open-invariants*, *frobenius-reciprocity*; RepresentationTheory/QuiverRepresentations
Layer 3.

## Layer 7: Multiplicity one and the local dimension bound

`p > 3`, `F` unramified of degree `f`, `k` large enough; `π` is an admissible smooth
`k`-representation of `G = GL₂(F)`.

### 7.1 Connected semisimple Iwahori character sets

Call a semisimple smooth `I`-representation `V` *connected* when for all distinct characters
`χ, χ″` occurring in `V` with `χ″` in `soc_I W_{χ,3}`, there is a character `χ′` occurring in `V` with
`Ext¹_{I/Z₁}(χ, χ′) ≠ 0` and `Ext¹_{I/Z₁}(χ′, χ″) ≠ 0` (BHHMS23, Definition 6.4.2, p. 72; Lemma 6.4.3,
pp. 72–73). The condition depends only on the set of characters occurring, and asks for a middle
character on every length-two extension path inside `W_{χ,3}`; it is not graph connectedness.
*Needs:* §§4.6, 5.1.

API:

- Two semisimple representations with the same set of characters are connected or not together.
- For each qualifying pair `(χ, χ″)` a connected `V` contains a middle character `χ′` with both Ext
  groups nonzero.
- Twisting all characters by one smooth character preserves connectedness.

**Checks.**

- A single character, with any multiplicity, is connected (no distinct pairs).
- `f = 1`, `p = 17`: `{1, α²}` is not connected, since `α² ∈ soc W_{1,3}` and the middle character `α`
  is absent; `{1, α, α²}` is connected.
- Doubling every multiplicity preserves connectedness; a set of characters pairwise far apart
  (no `χ″ ∈ soc W_{χ,3}`) is connected although its extension graph is disconnected.

### 7.2 Vanishing on an induced Loewy-three socle

Let `χ = χ_λ` with `2 < r_i < p−3`. Suppose a finite-length smooth `I`-module `W` has socle and cosocle
`χ`, `soc W ⊊ rad W`, and `rad W / soc W` semisimple. For every nonzero quotient `Q` of `Ind_I^K W`
with `[Q : F(λ)] = 1`, the adjunction map `W → Q|_I` vanishes on `soc W = χ` (BHHMS23,
Proposition 6.4.1, pp. 71–72). Route: if the socle survived, pass to a quotient with irreducible
`K`-socle `F(λ)` inside its finite injective hull, split the middle layer into positive and negative
root extensions, and use §6.3 to produce two copies of `F(λ)`. *Needs:* §§5.1, 6.2, 6.3.

**Checks.**

- Loewy length three is used: for `W = χ` (Loewy length one) the adjunction map `χ → (Ind_I^K χ)|_I`
  is nonzero on `χ`.
- The numerical bounds: for `f = 1`, `p = 17`, `r = 8` satisfies `2 < r < p − 3 = 14`; for `p = 7` only
  `r = 3` is allowed, and for `p ≤ 5` the statement is empty.

### 7.3 Connectedness of tame Diamond invariants

For tame `ρ̄` with `μ − η` 6-deep, prove that `D₁(ρ̄)` is connected; hence so is every semisimple
`I`-representation with the same characters (BHHMS23, Lemma 6.4.3, pp. 72–73, in the tame case).
Route: `JH(D₀(ρ̄))` is the signed box `−1 ≤ a_i ≤ 2`; a two-step difference cannot use one embedding
twice without leaving the box; for distinct embeddings switch one coordinate at a time, the
intermediate principal series still meeting `W(ρ̄)`. *Needs:* §§3.3, 3.5, 6.4, 7.1.

**Checks.**

- Consistency with §7.6: connectedness is a hypothesis of §7.5, and §7.3 discharges it for every
  `π` with `JH(π^{I₁}) = JH(D₁(ρ̄))`, which is hypothesis (iii) of §7.6; the depth `6` here is
  weaker than the depth `8` there.
- Only tame `ρ̄` is treated; no statement is made for wild nonsplit `ρ̄`.

### 7.4 No new maps from the second Iwahori radical layer

Assume `π[𝔪_{K₁}²]` embeds into `⊕_{σ∈S} D̃_σ^{m_σ}`, `m_σ ≥ 1`, with `soc_K D̃_σ = σ`, that
`D̃ = ⊕_S D̃_σ` is multiplicity-free, and that every constituent `τ` of `D̃` has `χ_τ ≠ χ_τ^s`
(equivalently `1 < dim_k τ < q`). For every `χ = χ_λ` occurring in `π^{I₁}` with `2 < r_i < p−3`,
the quotient `W_{χ,2} → χ` induces `Hom_I(χ, π) ≅ Hom_I(W_{χ,2}, π)`; and for every `χ′` in `π^{I₁}`
with `Ext¹_{I/Z₁}(χ, χ′) ≠ 0` there is no embedding `E_{χ′,χ} → π` (BHHMS23, conditions (a)–(b),
p. 73; Lemma 6.4.4 and Corollary 6.4.5, pp. 74–75). The action of `w = (0 1; p 0)`, which normalises
`I₁` and exchanges the root directions, is used; the statement is about `G`-representations, not
arbitrary `K`-modules. *Needs:* §§4.6, 6.3.

**Checks.**

- `w` normalises `I₁` and exchanges the root directions: for `g = (a b; pc d)`,
  `w g w⁻¹ = (d c; pb a)`, so the upper entry `b` and the lower entry `pc` are swapped.
- The hypothesis `χ_τ ≠ χ_τ^s` excludes the one-dimensional and the `q`-dimensional weights, for
  which `χ_τ = χ_τ^s`.

### 7.5 Multiplicity one through the third Iwahori layer

Under the hypotheses of §7.4, assume also that `π^{I₁}` is connected (§7.1). Then for `χ = χ_λ` in
`π^{I₁}` with `2 < r_i < p−3`, `W_{χ,3} → χ` induces `Hom_I(χ, π) ≅ Hom_I(W_{χ,3}, π)` (BHHMS23,
Proposition 6.4.6, p. 75). Route: connectedness and the embeddings `W_{χ′,2} → W_{χ,3}` of §5.1 force
a map to vanish on the bottom characters other than `χ`; the rest lies in `π[𝔪_{K₁}²]`, and the
induced `K`-image contradicts §7.2 unless the map factors through `χ`. The genericity
`2 < r_i < p−3` forces `p ≥ 7`, so the `p = 5` collision of §5.1 does not enter. *Needs:* §§5.1, 7.1,
7.2, 7.4.

**Checks.**

- The bound `p ≥ 7`: `2 < r_i < p−3` has a solution only when `p − 3 > 3`.
- Without connectedness the statement is not claimed: for `f = 1`, `p = 17`, a `π` whose
  `π^{I₁}` has exactly the characters `{1, α²}` is not connected (§7.1), and §7.5 does not apply.

### 7.6 The local Gelfand–Kirillov bound

Assume `p > 3`, `F/ℚ_p` unramified of degree `f`, `ρ̄ : G_F → GL₂(k)` tame with `ρ̄|_{I_F} ≅ τ(s, μ)`
and `μ − η` 8-deep, and `π` an admissible smooth `k`-representation of `GL₂(F)` with a central
character such that (i) `JH(soc_K π) = W(ρ̄)` as sets; (ii) `[π[𝔪_{K₁}²] : σ] = [soc_K π : σ]` for every
`σ ∈ W(ρ̄)`; (iii) `JH(π^{I₁}) = JH(D₁(ρ̄))` as sets. Then `dim_{GL₂(F)} π ≤ f` (BHHMS23, Theorem 6.4.7,
p. 76, and Theorem 1.4, pp. 5–6). Route: the central character is trivial on the pro-`p` group `Z₁`;
(i)–(ii) embed `π[𝔪_{K₁}²]` into the enlargement of §6.7, which satisfies the hypotheses of §7.4;
(iii) and §7.3 give connectedness; §7.5 and §4.7 give `dim_I π ≤ f`, and §4.1 transfers it to
`GL₂(F)`. The conclusion is an upper bound; equality is not part of this roadmap. *Needs:* §§4.1, 4.7,
6.7, 7.3, 7.5.

**Checks.**

- Only `≤ f` is asserted. BHHMS23, Theorem 1.10, proves `dim = f` for the global representations
  considered there, with further input; hypotheses (i)–(iii) are not claimed to imply equality.
- `f = 1`: the bound reads `dim_{GL₂(ℚ_p)} π ≤ 1`, the Gelfand–Kirillov dimension of an irreducible
  supersingular or principal series representation of `GL₂(ℚ_p)`.
- The central character hypothesis is used: it makes `Z₁` act trivially, so that `π` is a
  representation of `I/Z₁` as §4.7 requires.

### Examples

- For `f = 1` and `ρ̄ = ind(ω₂^{r+1})` irreducible with `r` generic,
  `W(ρ̄) = {Sym^r, Sym^{p−1−r} ⊗ det^r}`, which is the `K`-socle of the supersingular representation
  `Π(r, 0, 1)` of PadicLocalLanglandsForGL2Qp §2.7; so (i) holds for it, and `dim Π(r,0,1) = 1 ≤ f`.
- For `f = 2` the bound reads `dim_{GL₂(ℚ_{p²})} π ≤ 2`, while `dim GL₂(ℚ_{p²}) = 8`.

### Dependencies

Layers 3–6.

## Layer 8: Bockstein maps and projective-cover lattices

`p > 2` (and `p > 3` where Layer 5 is used), `F` unramified of degree `f`, `L/ℚ_p` unramified with
`𝒪 = W(k)`, `Γ = GL₂(k_F)`, `P_σ = Proj_Γ σ` and `P̃_σ` its projective lift (§5.4).

### 8.1 The infinitesimal action and the coinvariant Bockstein sequence

Let `V°` be a `K/Z₁`-stable finite free `𝒪`-lattice in a continuous finite-dimensional
`L`-representation, with `K₁` acting trivially on `V°/p`. For `x ∈ sl₂(k_F)` and `v ∈ V°/p`, choose
lifts `x̃ ∈ sl₂(𝒪_F)`, `ṽ ∈ V°` and put `β_{V°}(x ⊗ v) = p^{−1}(ρ(exp(p x̃))ṽ − ṽ) mod p`. Prove that this is
a well-defined `K`-equivariant `k`-linear map `sl₂(k_F) ⊗_{𝔽_p} (V°/p) → V°/p`, and that
`sl₂(k_F) ⊗ (V°/p) → V°/p → (V°/p²)_{K₁} → V°/p → 0`, with second map multiplication by `p`, is exact
(BHHMS23, §7.1 and Lemma 7.1.1, pp. 76–77). The sequence uses coinvariants `(−)_{K₁}`. *Needs:*
NoncommutativeAndEquivariantIwasawa §0.13 (`exp(p·)` identifies `sl₂(𝒪_F)/p` with the Frattini
quotient of `K₁/Z₁`); SmoothRepresentationsOfLocalGroups *coefficient-change*; Mathlib
`Representation`.

API:

- `β_{V°}` is independent of both lifts and is `K`-equivariant.
- For a lattice `T` with trivial `K₁`-action, `β_{V° ⊗ T} = β_{V°} ⊗ id_{T/p}`.
- For `sl₂(𝒪_F) ⊗_{ℤ_p} 𝒪` with the adjoint action, `β(x ⊗ y) = [x, y]`.

**Checks.**

- If `K₁` acts trivially on `V°`, `β = 0` and the sequence reduces to `0 → V°/p → V°/p² → V°/p → 0`.
- Adjoint lattice: `β(e ⊗ f) = h` with `e` upper, `f` lower, `h = diag(1,−1)`; a sign error in the
  exponential would give `−h`.
- Adjoint lattice: `β(h ⊗ e) = 2e`, not `−2e` or `0`.

### 8.2 Bockstein exactness for preimage lattices

With `V°` as in §8.1, `W ⊆ V°/p` a `K`-submodule and `V₁°` its preimage in `V°`, prove that
`sl₂(k_F) ⊗_{𝔽_p} W → V°/p → (V₁°/p²V°)_{K₁} → W → 0` is exact, compatibly with the sequence of §8.1 via the
inclusions (BHHMS23, Lemma 7.1.4, pp. 78–79). *Needs:* §8.1.

**Checks.**

- The middle term is `V₁°/p²V°`, not `V₁°/p²V₁°`: for `W = 0`, `V₁° = pV°` and `V₁°/p²V° = pV°/p²V° ≅ V°/p`,
  the sequence reads `0 → V°/p → V°/p → 0`, whereas `pV°/p²·pV°` would have twice the length.
- For `W = V°/p` it is the sequence of §8.1.

### 8.3 The adjoint contraction automorphism

For a 2-deep weight `λ = (a,b)` of `GL₂/k` with `r = a − b`, let `L(λ)` be the algebraic
highest-weight module and `v_λ` a highest-weight vector. Fix `d_λ : L(λ) → sl₂(k) ⊗ L(λ)` with
`d_λ(v_λ) = 2e ⊗ f v_λ + r h ⊗ v_λ`, and `ψ_λ = ([−,−] ⊗ id) ∘ (id ⊗ d_λ)` on `sl₂ ⊗ L(λ)`. Prove that on the
summands `L(λ+α)`, `L(λ)`, `L(λ−α)` of §5.5 it acts by `−2r`, `4`, `2(r+2)`, hence is invertible. For a
Serre weight `σ = F(λ)` with every component 2-deep, choose nonzero `d_{σ,i}` in each embedding
component; their sum `d_σ` gives an invertible `Ψ = ([−,−] ⊗ id) ∘ (id ⊗ d_σ)` on `sl₂(k_F) ⊗_{𝔽_p} σ`
(BHHMS23, Lemma 7.2.1 and Proposition 7.2.2, pp. 79–81). *Needs:* §§3.1, 5.5.

API:

- `d_λ` is determined by the displayed value on `v_λ` and `GL₂`-equivariance.
- `ψ_λ` has eigenvalues `−2r`, `4`, `2(r+2)` on the plus, middle and minus summands.
- After splitting `sl₂(k_F) ⊗ k = ⊕_i A_i`, `Ψ` is a sum of nonzero multiples of `ψ_{λ_i}` tensored with
  identities.

**Checks.**

- `p = 11`, `r = 3`: eigenvalues `−6 ≡ 5`, `4`, `10`, all nonzero in `𝔽_11`.
- `r = 0`: the plus eigenvalue `−2r` vanishes, so invertibility fails at that boundary.
- `r = p−2`: the minus eigenvalue `2(r+2) = 2p` vanishes.
- Rescaling one `d_{σ,i}` by a nonzero scalar keeps `Ψ` invertible; setting it to zero makes `Ψ` zero
  on the `i`-th summand.

### 8.4 The projective-cover gluing lattice

For 3-deep `σ = F(λ)` put `R₁ = P̃_σ` and `R₂ = sl₂(𝒪_F) ⊗_{ℤ_p} P̃_σ = ⊕_i R_{2,i}`. Fix the
decompositions `R_{2,i}/p ≅ P_σ ⊕ P_{F(λ−α_i)} ⊕ P_{F(λ+α_i)}` of §5.5 with inclusions
`ι_i : P_σ → R_{2,i}/p`, let `ι = (ι_i)_i`, `R₂′` the preimage of `ι(P_σ)` in `R₂`, and
`R = {(x₁, x₂) ∈ R₁ ⊕ R₂ : x₂ mod p = ι(x₁ mod p)}`. Prove that `R` is a `K`-stable full `𝒪`-lattice in
`(1 ⊕ sl₂(F)) ⊗_{ℚ_p} P̃_σ[1/p]`, and that the partial fibre products `L_j`, imposing the condition only
for `i ≤ j` (with `L_{−1} = R₁`), satisfy `L_{f−1} = R` (BHHMS23, §7.3, equations (56)–(57),
pp. 81–83; introduction, equation (7), p. 8). *Needs:* §§5.4, 5.5, 8.2, 8.3; Tau Ceti
`TauCeti.exists_isProjectiveCover_of_finiteDimensional`.

API:

- `(x₁, x₂) ∈ R` exactly when every component of `x₂ mod p` equals `ι_i(x₁ mod p)`.
- `p(R₁ ⊕ R₂) ⊆ R ⊆ R₁ ⊕ R₂`, so `R[1/p] = (R₁ ⊕ R₂)[1/p]`.
- `L_j = L_{j−1} ×_{P_σ} R′_{2,j}` and `L_{f−1} ≅ R`.

**Checks.**

- `f = 1`: `R` is the set of pairs with `x₂ mod p = ι_0(x₁ mod p)`, the first partial fibre product.
- `f = 2`: the compatibility is one diagonal copy of `P_σ`: components `ι_0(u)`, `ι_1(v)` with `u ≠ v`
  cannot both match the same `x₁`.
- `rank_𝒪 R = (1 + 3f) dim_k P_σ`; the reduction condition changes the index, not the rank.
- With no adjoint component, `L_{−1} = P̃_σ`.

### 8.5 Coinvariants and reduction of the gluing lattice

With the data of §8.4, prove that `(R₂′/pR₂′)_{K₁} ≅ P_σ`, the induced map `R₂′/p → ι(P_σ)` being this
quotient; that there is a `K`-equivariant exact sequence `0 → R₂/pR₂ → R/pR → P_σ → 0` whose right
map induces `(R/pR)_{K₁} ≅ P_σ`; and that tensoring `σ → P_σ` with `sl₂(k_F)` identifies its image with
the socle of `sl₂(k_F) ⊗ P_σ`, dually for the cosocle (BHHMS23, Proposition 7.3.1, Lemma 7.3.2 and
Theorem 7.3.3, pp. 82–84). Both isomorphisms are statements about coinvariants. *Needs:* §§5.5,
8.2–8.4.

**Checks.**

- `dim_k (R/pR) = dim R₂/pR₂ + dim P_σ = (3f + 1) dim P_σ`.
- `(R/pR)_{K₁} = P_σ` is the largest `K₁`-trivial quotient; the `K₁`-invariants of `R/pR` contain
  `R₂/pR₂`-classes and are not `P_σ`.

### 8.6 The first radical truncation of a projective cover

For 3-deep `σ`, prove that `cosoc_K(R/pR) = σ` and `R/pR ≅ Proj_{K/Z₁}(σ)/𝔪_{K₁}² Proj_{K/Z₁}(σ)` as
`K`-representations, so `dim_k (R/pR) = (3f+1) dim_k P_σ`; in the notation of the introduction this is
`L_{f−1}/pL_{f−1}` (BHHMS23, Corollary 7.3.4, p. 84; Theorem 1.7, p. 8). The cover is the
pseudocompact `K/Z₁`-cover of §4.6, not a `K₁/Z₁`-cover; three subscripts in the printed proof of
Corollary 7.3.4 read `K₁/Z₁` where the `K/Z₁` cover of the statement is meant. Route: §8.5 and
Nakayama give simple cosocle and a surjection from the truncated cover; both outer terms of §8.5
are `K₁`-trivial, so `𝔪_{K₁}²` kills `R/pR`; compare dimensions using `dim H¹(K₁/Z₁, k) = 3f`.
*Needs:* §§4.6, 5.6, 8.4, 8.5; NoncommutativeAndEquivariantIwasawa §0.13.

**Checks.**

- `dim Proj_{A₁} σ = (1 + 3f) dim P_σ` from the filtration of §5.6, matching `rank_𝒪 R`.
- `f = 1`, `p = 11`, `σ = Sym^5`: `dim (R/pR) = 4 dim P_σ`.
- A `K₁/Z₁`-cover of the trivial module has dimension `1 + 3f` after truncation and does not carry
  the `Γ`-structure: it is not `R/pR`.

### Examples

- `f = 1`: `R ⊂ P̃_σ ⊕ (sl₂(ℤ_p) ⊗ P̃_σ)` is cut out by one congruence, and `R/pR` is an extension of
  `P_σ` by `sl₂(𝔽_p) ⊗ P_σ`.
- For the adjoint lattice, the Bockstein map is the Lie bracket (§8.1), and `Ψ` of §8.3 is the
  contraction with `d_σ`.

### Dependencies

Layers 3–5; NoncommutativeAndEquivariantIwasawa §0.13; SmoothRepresentationsOfLocalGroups
*coefficient-change*; Tau Ceti projective covers.

## Layer 9: Endomorphisms and relative projectivity

Same setting as Layer 8; `T_σ = R_σ/pR_σ ≅ Proj_{K/Z₁}σ/𝔪_{K₁}²` (§8.6), a module over the
finite-dimensional algebra `A₁ = k[[K/Z₁]]/𝔪_{K₁}²`.

### 9.1 Endomorphisms of the first projective truncation

For `σ = F(λ)` with `2 < r_i < p−4` for all `i`, prove that `End_K(Proj_{K/Z₁}σ/𝔪_{K₁}²)` is commutative
(BHHMS23, Proposition 7.4.1, pp. 84–85), of `k`-dimension `2^f(f+1)` (from its proof). Route: after a
finite unramified extension, `R[1/p]` is a sum of `2^f(f+1)` pairwise distinct absolutely irreducible
`K`-representations (§5.5 for `P̃_σ[1/p]`, tensored with the trivial and the `f` adjoint factors), so
`End(R)` is commutative and torsion-free of rank `2^f(f+1)`; `[R/pR : σ] = 2^f(f+1)` equals
`dim End_K(R/pR)`, so reduction of endomorphisms is surjective. Finite extension of scalars preserves
the dimension and detects commutativity (§0.6). *Needs:* §§0.6, 5.4, 5.5, 8.4, 8.6.

**Checks.**

- `f = 1`: `dim End = 2 · 2 = 4`, and
  `[R/pR : σ] = [P_σ : σ] + ([P_σ : σ] + [P_{F(λ−α)} : σ] + [P_{F(λ+α)} : σ]) = 2 + (2 + 0 + 0) = 4`,
  the shifted covers not containing `σ` (§5.5).
- Commutativity in characteristic zero alone is insufficient; the dimension count gives the
  surjectivity that transfers it to the reduction.
- The bounds `2 < r_i < p−4` force `p ≥ 8`, that is `p ≥ 11`.

### 9.2 Cyclic Hom modules between projective truncations

Assume `5 < r_i < p−7`. For every Serre weight `τ` in `JH(T_σ)`, prove that `Hom_K(T_τ, T_σ)` is cyclic as a
right `End_K(T_τ)`-module under precomposition (BHHMS23, Lemma 7.4.2, p. 85). Route: the unique
multiplicity-free quotient of `T_σ` with socle `τ` and `σ` once (§5.6, dual form) gives a map from `T_τ`
by projectivity in `A₁`-modules, whose cokernel has no `τ`; then every map factors through it by
precomposition. *Needs:* §§5.6, 8.6, 9.1.

**Checks.**

- `τ = σ`: `Hom_K(T_σ, T_σ) = End_K(T_σ)` is cyclic, generated by the identity.
- The module structure is precomposition on the source; as a left `End_K(T_σ)`-module by
  postcomposition the statement is different and not claimed.
- The bounds force `p ≥ 15`, that is `p ≥ 17`.

### 9.3 Relative projectivity of all quotients

Assume `5 < r_i < p−7`. For every quotient `Q` of `T_σ` and every subquotient `Q′` of `Q`, prove that
precomposition with `T_σ → Q` gives `Hom_K(Q, Q′) ≅ Hom_K(T_σ, Q′)`; and if `cosoc_K Q′ ≅ σ` there is a
`K`-equivariant surjection `Q → Q′`. Equivalently `Q` is projective in the smallest abelian
subcategory of `A₁`-modules containing all subquotients of `Q` (BHHMS23, Proposition 7.4.3 and
Remark 7.4.4, pp. 85–86). Route: for each constituent `τ`, `Hom(T_τ, Q)` is cyclic over the
commutative `End(T_τ)` (§§9.1–9.2), so every map into a subquotient kills `ker(T_σ → Q)`. *Needs:*
§§8.6, 9.1, 9.2.

**Checks.**

- `Q = T_σ`: the statement is the projectivity of `T_σ` among `A₁`-modules.
- `Q = σ`: `Hom(σ, σ) = k = Hom(T_σ, σ)`, the isomorphism holds, and the subcategory is semisimple.
- Projectivity is relative: a proper quotient `Q` of `T_σ` with two constituents is not projective
  among all `A₁`-modules, since its projective cover is `T_σ`.

### Examples

- For `f = 1`, `T_σ` has dimension `4 dim P_σ`, `End_K(T_σ)` is a commutative local `k`-algebra of
  dimension four, and every quotient of `T_σ` is projective relative to its own subquotients.
- The quotient `σ` of `T_σ` has `Hom(σ, Q′) = Hom(T_σ, Q′)` for its only subquotients `0` and `σ`.

### Dependencies

Layers 0 (§0.6), 5 and 8.

## Downstream consumers

- LocalGaloisDeformationRings, Part II: the weight coordinates, the extension-graph map and the tame
  weight set of §§3.1–3.4 for the Serre-weight side of local deformation rings of `GL₂` over
  unramified `F`.
- Roadmaps on mod `p` cohomology and patching for `GL₂` over unramified fields: the local dimension
  bound of §7.6, the gluing lattice and its truncation (§§8.4–8.6) and relative projectivity
  (§9.3).
- Roadmaps on `p`-adic cohomology of the Drinfeld and Lubin–Tate towers: the finite-presentation
  calculus and coherence of Layer 0, the `ℚ_p` criteria of Layer 1 and the category `𝒞` with its
  ordinary approximation (Layer 2).

## Worked examples

- **The trivial weight over `ℚ_p`.** `σ = k`, `I(σ) = c-Ind_{KZ}^G k`. It is finitely presented
  (§0.3) and of infinite length; `I(σ)/(T−1)` has length two (Steinberg sub, trivial quotient),
  finite cosocle, one-dimensional smooth dual, and lies in `𝒞` (§2.4); its obstruction space for the
  presentation by `σ` is finite-dimensional (§2.3).
- **Coherence in action.** For `G′ = GL₂(F)/ϖ^ℤ`, `F` arbitrary, the kernel of the augmentation
  `c-Ind_{KZ}^G k → k` is finitely presented (§0.5), whereas for `F ≠ ℚ_p` the kernel of a surjection
  `c-Ind_{KZ}^G σ → π` onto a supersingular `π` is not even of finite type (§0.4).
- **Ordinary approximation.** For `F = ℚ_{p²}` and `V = St ⊗ χ∘det`, `Ord_B(V) = χ ⊗ χ` and the counit
  `Ind_{B̄}^G(χ⊗χ) → V` is onto with kernel `χ∘det` (§§2.2, 2.5).
- **Weights for `f = 1`, `p = 17`.** `λ = (5,0)`: `t_λ(1) = (−1,−10)`, `t_λ(−1) = (0,−11)`;
  `W(ρ̄) = {Sym^5, Sym^9 ⊗ det^6}` for `ρ̄|_I = ω^6 ⊕ 1` (§§3.2, 3.4).
- **The Iwahori algebra for `f = 1`.** `gr k[[I₁/Z₁]] = U(𝔥)` with `[e,f] = h`;
  `dim W_{χ,2} = 3`, `dim W_{χ,3} = 7`; `gr/𝔍_P = k[X,Y]/(XY)` of dimension one (§§4.4–4.6), giving
  the bound `dim ≤ 1` of §4.7.
- **The gluing lattice for `f = 1`.** `rank R = 4 dim P_σ`, `R/pR ≅ Proj_{K/Z₁}σ/𝔪_{K₁}²`,
  `End_K(R/pR)` commutative of dimension four (§§8.4–9.1).

## References

- **BHHMS23** — Christophe Breuil, Florian Herzig, Yongquan Hu, Stefano Morra, Benjamin Schraen,
  *Gelfand–Kirillov dimension and mod p cohomology for GL₂*, Invent. Math. 234 (2023), 1–128;
  locators use arXiv:2009.03127v7.
- **CDN23** — Pierre Colmez, Gabriel Dospinescu, Wiesława Nizioł, *Factorisation de la cohomologie
  étale p-adique de la tour de Drinfeld*, Forum Math. Pi 11 (2023), e16; published text.
- **SHOTTON20** — Jack Shotton, *The category of finitely presented smooth mod p representations of
  GL₂(F)*, Doc. Math. 25 (2020), 143–157; locators use arXiv:1710.06003v3.
- **BP12** — Christophe Breuil, Vytautas Paškūnas, *Towards a modulo p Langlands correspondence for
  GL₂*, Mem. Amer. Math. Soc. 216 (2012), no. 1016; locators use the author copy.
- **EMERTON1** — Matthew Emerton, *Ordinary parts of admissible representations of p-adic reductive
  groups I. Definition and first properties*, Astérisque 331 (2010), 355–402; author copy.
- **EMERTON2** — Matthew Emerton, *Ordinary parts of admissible representations of p-adic reductive
  groups II. Derived functors*, Astérisque 331 (2010), 403–459; author copy.
- **HAUSEUX** — Julien Hauseux, *Extensions entre séries principales p-adiques et modulo p de G(F)*,
  J. Inst. Math. Jussieu 15 (2016); locators use arXiv:1307.1818v3.
- **DEG** — Andrea Dotto, Matthew Emerton, Toby Gee, *Localization of smooth p-power torsion
  representations of GL₂(ℚ_p)*; author copy (assumes `p ≥ 5`).
- **HW22** — Yongquan Hu, Haoran Wang, *On the mod p cohomology for GL₂: the non-semisimple case*;
  locators use arXiv:2009.09640v4.
- **VIGNERAS11** — Marie-France Vignéras, *Le foncteur de Colmez pour GL(2,F)*, Arithmetic Geometry and
  Automorphic Forms, ALM 19 (2011), 531–557; locators use arXiv:0909.4003v1 (§5, Propositions 7–11 and
  Théorème 7), whose numbering differs from the published Propositions 5.5–5.8.
- **HU12** — Yongquan Hu, *Diagrammes canoniques et représentations modulo p de GL₂(F)*, J. Inst.
  Math. Jussieu 11 (2012), 67–118; locators use arXiv:0904.3991v3.
- **KOHLHAASE17** — Jan Kohlhaase, *Smooth duality in natural characteristic*, Adv. Math. 317 (2017),
  1–49; author copy.
- **HU10** — Yongquan Hu, *Sur quelques représentations supersingulières de `GL₂(ℚ_{p^f})`*, J. Algebra
  324 (2010), 1577–1615; locators use arXiv:0909.0527v3.
- **LMS22** — Daniel Le, Stefano Morra, Benjamin Schraen, *Multiplicity one at full congruence
  level*, J. Inst. Math. Jussieu 21 (2022), 637–658; author copy.
- **LMS22-CORR** — Daniel Le, Stefano Morra, Benjamin Schraen, *Corrigé for Multiplicity one at full
  congruence level*; author copy, item (2).
- **SERRE-LRFG** — Jean-Pierre Serre, *Linear Representations of Finite Groups*, Graduate Texts in
  Mathematics 42, Springer (1977), Part III, Chapters 14–15.
