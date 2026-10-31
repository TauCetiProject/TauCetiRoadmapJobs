# Roadmap: mapping class groups and canonical representations of surface groups

**Summary.** A representation `ρ : π₁(Σ_{g,n}) → GL_r(ℂ)` of the fundamental group of an oriented
genus-`g` surface with `n` punctures is *MCG-finite* (a *canonical representation*) when its actual
conjugacy class has finite orbit under the mapping class group. This roadmap builds the theory that
proves Landesman and Litt's theorem: an MCG-finite representation of rank `r` with `r² < g + 1` has
finite image, with no semisimplicity hypothesis. It starts from punctured surfaces, pure mapping
class groups, point-pushing and the Birman exact sequence (Layer 0), group-cohomological and
deformation-theoretic tools for arbitrary discrete groups (Layer 1), and étale-versal families of
pointed curves (Layer 2). It realizes an irreducible MCG-finite representation as the fibre of a
projective and then of a linear local system on a versal family (Layers 3–4), and it develops the
Hodge theory of unitary local systems on families of punctured curves, ending in the rank bound for
sub-local systems of `R¹π°_* V` and its Artinian vanishing form (Layer 5). From these it proves the
higher Prym rank bound and the Putman–Wieland property for groups of order `< g²` (Layer 6),
rigidity, integrality and finiteness in the unitary case (Layer 7), the semisimple case by
nonabelian Hodge theory and a constancy argument (Layer 8), and the general case by induction on the
socle filtration, with the free-group, Nielsen-tuple, isomonodromy and fibral corollaries
(Layer 9). The arithmetic layers deduce finite monodromy for low-rank arithmetic representations of
the geometric étale fundamental group of the generic pointed curve over `ℚ`, its Hodge-theoretic
characterisation, and the non-liftability of residual surjections onto `GL_r(𝔽_p)` (Layers 10–11).
Layer 12 constructs the examples that show which hypotheses and ranges are needed.

The end theorems are: the finiteness theorem (Layer 9, `mcgFinite_finite_image`), its free-group
form (`freeGroup_finite_image`), the Putman–Wieland theorem for small groups
(`putmanWieland_of_card_lt`, Layer 6), the sub-local-system rank bound (Layer 5), arithmetic finite
monodromy on the generic curve and its four-way characterisation (Layer 10), and residual
non-liftability (Layer 11).

## Scope and ownership

**This roadmap owns** the theory of MCG-finite representations of surface and free groups and its
applications: the finiteness predicate and its closure properties, the projective and linear
realization of irreducible MCG-finite representations on étale-versal families, the relative
unitary decomposition over Artinian coefficients, higher Prym representations and the
Putman–Wieland property, rigidity and integrality of fibre-irreducible low-rank local systems on
versal families, the semisimple and general finiteness theorems, the free-group, Nielsen-tuple,
characteristic-quotient, isomonodromy and finite-total-image corollaries, arithmetic finiteness on
the generic curve and its Hodge characterisation, residual non-liftability, non-density of
arithmetic representations, and the examples of Layer 12.

It also owns the following foundational targets, which no roadmap on main or earlier in the merge
order states:

- surfaces with punctures and boundary, their pure mapping class groups, the action of Dehn twists
  on homology, point-pushing, the Birman exact sequence, capping, the finiteness of the
  abelianization of mapping class groups in genus at least two, Nielsen generation of `Aut(F_N)`,
  and quasi-unipotence of multitwists in finite-index subgroups (Layers 0, 7 and 9);
- Teichmüller uniformization of the analytic moduli stack of pointed curves in the whole hyperbolic
  range `2g − 2 + n > 0`, the finite-index image of fundamental groups under dominant morphisms, and
  boundary monodromy of good compactifications of versal total spaces (Layers 2 and 7);
- the transgression term of the five-term exact sequence for arbitrary discrete groups, the lifting
  obstruction of a projective representation through a finite central isogeny, deformations of
  representations of discrete groups over Artinian `ℂ`-algebras with the constancy criterion,
  representation schemes of finitely presented groups with fixed determinant and their quotients,
  Jordan's theorem on finite linear groups and two-generation of `GL_r(𝔽_p)` (Layer 1);
- polarizable complex variations of Hodge structure on complex manifolds with the notions of
  geometric origin and integral PVHS, parabolic semistability of Deligne extensions,
  isomonodromic deformations and their semistability, the mixed Hodge structure on `H¹` of unitary
  local systems in families with the theorem of the fixed part, the derivative of the period map,
  Mochizuki's deformation of local systems to variations, cohomological rigidity, integrality of
  rigid local systems, and the unitarity theorem for low-rank variations on analytically general
  curves (Layer 5).

**It leaves to named roadmaps:**

- compact surfaces with boundary, their classification, the full, rel-boundary and
  orientation-preserving mapping class groups, Dehn twists, change of coordinates, the action on
  `H₁` and Lickorish generation: SurfaceTopology Layers 8–9;
- Teichmüller space of closed surfaces of genus `≥ 2`, the mapping-class action and the
  Dehn–Nielsen–Baer theorem for closed surfaces: TeichmullerGeometry T2, T3 and T6. Layer 2's
  uniformization differs in covering punctured surfaces and the analytic moduli stack;
- the algebraic moduli stack `M̄_{g,n}`, its open substack `M_{g,n}`, the forgetful morphism, the
  boundary normal-crossings structure and the level covers: SchemeAndStackFoundations §4.15;
- the analytic stable pointed chart groupoid, its universal curve and the Orbifolds adapter:
  ComplexCurveModuli D5–D8;
- the Ehresmann fibration theorem for proper holomorphic submersions, the relative Betti local
  systems, Deligne's regular-singular theory with the canonical logarithmic extension and residue
  normalization, Riemann existence and the Artin comparison: ComplexComparisonPartII §§C5.2, C5.6,
  C6.0–C6.3;
- arithmetic representations of geometric étale fundamental groups, exactness of the étale
  sequence of the universal punctured curve with its moduli outer action, Artin neighbourhoods as
  `K(π, 1)` spaces with their cohomology comparisons, density of topological fundamental groups of
  curves, and versal families of `φ`-covers: InverseGaloisAndArithmeticFundamentalGroups §§IG.1.4,
  IG.3.1 and IG.5.4;
- reductive quotients of affine varieties and the closed-tuple criterion for complete
  reducibility: ArithmeticGaloisRepresentations §1.11;
- deformation functors and universal deformation rings of profinite groups satisfying Mazur's
  condition `Φ_p`: LocalGaloisDeformationRings §§F.1–F.2; generic fibres and valued points of
  complete local rings: DeformationAndDerivedPatchingAlgebra §§4.2 and 4.4;
- SNC compactification of smooth quasi-projective schemes: ResolutionOfSingularitiesCharacteristicZero
  §6.2, consumed through AlgebraicModuliForArithmeticGeometry §9.5;
- local coefficients, relative homology, cup and cap products, Poincaré duality and the
  intersection pairing, transfer for finite covers and the homotopy sequence of a fibration:
  AlgebraicTopology Stages 1, 2, 5, 6 and 8; universal covers and deck groups:
  Completed/UniversalCovers; group cohomology of a `K(π, 1)`: ClassifyingSpaces Stage 4;
- pure, mixed and polarized Hodge structures as linear algebra: Completed/HodgeStructures;
  Hermitian holomorphic bundles, Dolbeault cohomology and Serre duality: ComplexKahlerGeometry K4–K5;
- the finite-group character theory and Schur's lemma: RepresentationTheory/CharacterTheory
  Layer 2; factor sets and Schur multipliers of finite groups:
  RepresentationTheory/InductionRestriction Layer 7.

The five-term sequence with transgression for profinite groups and closed normal subgroups is
ProfiniteCohomology Layer 5, and the Hochschild–Serre spectral sequence for profinite groups is
NoncommutativeAndEquivariantIwasawa §F.3; Layer 1's §1.1 differs in treating arbitrary discrete
groups, such as surface groups and mapping class groups, which are not profinite.
The inflation–restriction sequence in all positive degrees, projective representations of arbitrary
monoids with their factor sets and linearizing central extensions, the socle, unitary semisimplicity
and the degree-square identity are pinned Tau Ceti declarations (*Exact supplier contracts*). That a
finite-image representation of a geometric étale fundamental group is arithmetic is recorded by
InverseGaloisAndArithmeticFundamentalGroups §IG.1.4 as a check on its definition; Layer 10 states it
as a theorem because the characterisation uses it.

The source's open questions (Questions 10.1.1, 10.1.3, 10.1.5, 10.2.3, 10.2.6 and 10.3.1) and its
Conjecture 10.2.8 are not targets of this roadmap.

## Conventions

- `Σ_g` is a closed oriented connected surface of genus `g`; `Σ_{g,n}` is `Σ_g` minus `n`
  points; `Σ_{g,b,p}` is `Σ_g` minus `b` open discs and `p` further points, so it has `b`
  boundary circles and `p` punctures. The hyperbolic range is `2g − 2 + n > 0` (respectively
  `2g − 2 + b + p > 0`).
- `Mod(Σ)` is the group of isotopy classes of orientation-preserving homeomorphisms fixing the
  boundary pointwise, which may permute punctures; `PMod(Σ)` is the subgroup fixing each puncture.
  `PMod(g, n) = PMod(Σ_{g,n})`, and `PMod(g, b, p)` fixes boundary circles pointwise and punctures
  individually. A base point counts as an extra puncture: `PMod(g, n + 1)` acts on
  `π₁(Σ_{g,n}, x)` by automorphisms, and `PMod(g, n)` acts by outer automorphisms.
- Fundamental groups use Mathlib's `FundamentalGroup`, whose product `p * q` traverses `q` first
  (`FundamentalGroup.mul_def`). Point-pushing along `α` acts on based loops by `γ ↦ α * γ * α⁻¹`.
  The standard presentation is `π₁(Σ_{g,n}) = ⟨a₁, b₁, …, a_g, b_g, c₁, …, c_n | ∏ᵢ [aᵢ, bᵢ] ∏ⱼ cⱼ⟩`
  with `[x, y] = x y x⁻¹ y⁻¹`; it is `surfaceGroup g n` of the Lean file, and `cⱼ` is
  `peripheralLoop j`.
- A representation is a homomorphism to `GL_r(ℂ) = Matrix.GeneralLinearGroup (Fin r) ℂ`; rank zero
  is allowed and `GL₀(ℂ)` is trivial. Conjugacy means actual `GL_r(ℂ)`-conjugacy of homomorphisms,
  never equality of semisimplifications; a character variety is used only for semisimple points.
- A representation is *unitary* when its image has compact closure, equivalently when it preserves
  a positive definite Hermitian form. For `GL_r` the adjoint representation is the trace-zero Lie
  algebra, of rank `r² − 1` for `r ≥ 1`; for `PGL_r` it is the adjoint representation on `pgl_r`.
- Local systems are Tau Ceti's `TauCeti.LocalCoefficientSystem` (functors from the fundamental
  groupoid), with monodromy `TauCeti.LocalCoefficientSystem.monodromyRepresentation`. On cohomology
  a homeomorphism acts by inverse pullback, so actions on `H¹` and on `H₁` are contragredient.
- Open-surface cohomology `H¹(Σ_{g',n'}, ℂ)` and compact-surface homology `H₁(Σ_{g'}, ℂ)` are
  different spaces. The `σ`-isotypic component of a representation `V` of a finite group is the
  image of `σ ⊗ Hom_H(σ, V)` under evaluation, not the multiplicity space `Hom_H(σ, V)`.
- A *punctured étale-versal family* (Layer 2) has classifying map to `M_{g,n}` dominant **and
  étale**. All family statements assume the hyperbolic range.
- Fundamental groups of complex varieties and Deligne–Mumford stacks are those of the analytic
  space or analytic stack. Over a field `K` of characteristic zero, `π₁^ét` is the étale fundamental
  group and `Γ_K` the absolute Galois group.
- An isomorphism `ℚ̄_ℓ ≅ ℂ` is an abstract field isomorphism; it is never assumed continuous.
- Local monodromy of a canonical logarithmic extension along a positive loop is conjugate to
  `exp(−2πi Res)` (ComplexComparisonPartII §C5.6). The canonical extension uses residue eigenvalues
  with real parts in `[0, 1)`.
- *Integral* means `G(ℂ)`-conjugate into `G(O_K)` for a number field `K`, for `G = GL_r` or
  `PGL_r` as group schemes over `ℤ`. *Integral PVHS* is read in the `O_K` sense of Layer 5: a local
  system of finite free `O_K`-modules all of whose complex conjugates underlie polarizable complex
  variations of Hodge structure.

## Exact supplier contracts

### From Mathlib

- `FundamentalGroup` with `FundamentalGroup.mul_def` (`p * q = q.trans p`), `IsCoveringMap` and
  path lifting; the fundamental-group conventions of every layer are checked against
  `FundamentalGroup.mul_def`.
- `FreeGroup`, `FreeGroup.lift` (`Mathlib/GroupTheory/FreeGroup/Basic.lean`): the free group and
  the equivalence between generator assignments and homomorphisms, used for the Nielsen-tuple
  dictionary of Layer 9. `PresentedGroup` (`Mathlib/GroupTheory/PresentedGroup.lean`): the carrier
  of `surfaceGroup`. `MulAut` and `Subgroup.relIndex` (`Mathlib/GroupTheory/Index.lean`).
- `Matrix.GeneralLinearGroup` (`Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean`),
  including rank zero; Mathlib's projective linear group `PGL`.
- `Representation.IsIrreducible` (`Mathlib/RepresentationTheory/Irreducible.lean`), the simple
  group-algebra-module notion; `isotypicComponent` (`Mathlib/RingTheory/SimpleModule/Isotypic.lean`),
  the sum of submodules isomorphic to a given simple module, specialized to the group algebra of the
  deck group in Layer 6; `Representation.ind` (`Mathlib/RepresentationTheory/Induced.lean`),
  induction along a group homomorphism, used in Layer 7.
- `groupCohomology.H1InfRes_exact`
  (`Mathlib/RepresentationTheory/Homological/GroupCohomology/Functoriality.lean`): exactness of
  `H¹(G/S, A^S) → H¹(G, A) → H¹(S, A)`. It does not contain the transgression term, which Layer 1
  constructs.

### From Tau Ceti

- `TauCeti.LocalCoefficientSystem`, `TauCeti.LocalCoefficientSystem.monodromyRepresentation` and
  `TauCeti.LocalCoefficientSystem.pullback` (`TauCeti/AlgebraicTopology/LocalCoefficient.lean`):
  local systems as functors on the fundamental groupoid, monodromy on the actual fibre with the
  library path convention, and pullback along continuous maps compatible with monodromy. No second
  local-system carrier is introduced.
- `TauCeti.IsAspherical` (`TauCeti/AlgebraicTopology/EilenbergMacLane/Basic.lean`): vanishing of
  the higher homotopy groups, the form in which Layer 0 states asphericity of surfaces.
- `TauCeti.socle` and `TauCeti.isSemisimpleModule_socle` (`TauCeti/RingTheory/SimpleModule/Socle.lean`):
  the socle as the supremum of simple submodules, and its semisimplicity.
- `TauCeti.ContRepresentation.IsUnitary.isSemisimpleRepresentation`
  (`TauCeti/RepresentationTheory/Continuous/InvariantComplement.lean`): a finite-dimensional unitary
  representation of an arbitrary group is semisimple.
- `TauCeti.sum_characterDegree_sq_eq_card` (`TauCeti/RepresentationTheory/CharacterTable/Table.lean`):
  for a finite group over an algebraically closed field of characteristic prime to its order, the
  squares of the irreducible degrees sum to the order.
- `TauCeti.groupCohomology.infRes_exact` and `TauCeti.groupCohomology.mono_infRes_f`
  (`TauCeti/RepresentationTheory/Homological/GroupCohomology/InflationRestriction.lean`): exactness
  of inflation–restriction in degree `n + 1` and injectivity of inflation when `Hⁱ(S, A) = 0` for
  `0 < i ≤ n`, for an arbitrary group and normal subgroup.
- `TauCeti.IsProjectiveRep`, `TauCeti.IsProjectiveRep.toPGL`,
  `TauCeti.IsProjectiveRep.cohomologyClass`, `TauCeti.IsProjectiveRep.cohomologyClass_eq_zero_iff`
  and `TauCeti.isProjectiveRepEquivExtensionHom` (`TauCeti/RepresentationTheory/ProjectiveRepresentation/`),
  with `MonoidHom.exists_isProjectiveRep_toPGL_eq`: projective representations of an arbitrary
  group as normalized lifts with factor sets, their homomorphisms to `PGL`, every homomorphism to
  `PGL` arising this way, the class in `H²(G, kˣ)` vanishing exactly when the lift is a rescaled
  homomorphism, and the bijection with linear representations of the central extension of the
  factor set. These carry no finite-isogeny or fibre-prescribed refinement; Layer 1 adds it.

### From TauCetiRoadmap.SurfaceTopology

Layer 8 (compact surfaces with boundary, their classification, `Surface.genus`) and Layer 9
(`MappingClassGroupRel`, `MappingClassGroupPlus`, `dehnTwist`, `change_of_coordinates`,
`MappingClassGroupFull.actH₁`, Lickorish generation `dehnTwists_generate`). Layer 0 assumes these
for compact surfaces with boundary, homeomorphisms and isotopies fixing the boundary pointwise,
and adds punctures and marked points on top of them; that layer excludes punctures, point-pushing
and the Birman sequence, which are Layer 0 targets here.

### From TauCetiRoadmap.TeichmullerGeometry

T2 (the marked deformation atlas and the dimension `3g − 3`), T3 (the mapping-class action and the
proper étale moduli groupoid) and T6 (asphericity of closed surfaces of genus `≥ 2`,
Dehn–Nielsen–Baer, finite point stabilizers), for closed surfaces of genus `g ≥ 2`. Layer 2 uses
them as the closed case of its punctured uniformization theorem.

### From TauCetiRoadmap.SchemeAndStackFoundations

§4.15: `StableCurves.Mbar` with `Mbar.smooth` (the open substack `M_{g,n}` of smooth families),
`Mbar.forget` (forgetting the last marking and its identification with the universal curve),
`Mbar_smooth` (smoothness of relative dimension `3g − 3 + n` and the normal-crossings boundary),
`Mbar_algebraic_proper_DM`, `level_structure_cover` and `level_structure_cover_representable`
(finite étale level covers of `M_{g,n}[1/m]`, algebraic spaces for `m ≥ 3`, quasi-projective over
`ℂ` by the projectivity of their normalized compactification). §2.2: `leray_spectral_sequence`.
Assumed for all `2g − 2 + n > 0`.

### From TauCetiRoadmap.ComplexCurveModuli

D0.4 (finite-type uniformization of stable punctured components by complete finite-area hyperbolic
metrics), D0.5 (properness of the diffeomorphism action and finiteness of automorphism groups of
stable marked curves), D5 (the countable stable pointed chart groupoid), D7 (the universal curve and
its Morita comparison with the `(g, n + 1)` groupoid) and D8 (the Orbifolds adapter). Layer 2 uses
these as the analytic moduli stack `M_{g,n}^an` and its universal curve.

### From TauCetiRoadmap.ComplexComparisonPartII

§C5.2: `ehresmannFibration` (a proper surjective holomorphic submersion is a smooth fibre bundle,
with pullback compatibility) and `relativeBettiLocalSystem`. §C5.6: `RegularSingular`,
`CanonicalLogExtension` with `CanonicalLogExtension.residueSpectrum`,
`CanonicalLogExtension.monodromy` (local monodromy conjugate to `exp(−2πi Res)`) and
`CanonicalLogExtension.uniqueness`, and `deligneRiemannHilbert`. §C6.0: `complexAlgebraicTopology`;
§C6.1: `topologicalCoefficientComparison` (finite coefficient rings); §C6.2: `riemannExistence`;
§C6.3: `artinComparison`.

What ComplexComparisonPartII must provide (gap:local-system-direct-images): extend §C6.1's
dictionary between `TauCeti.LocalCoefficientSystem` and locally constant sheaves to coefficients in
`ℂ` and in finite-dimensional commutative `ℂ`-algebras, and for a smooth fibre bundle `f : T → S`
of manifolds and a locally constant sheaf `V` of finite free `A`-modules on `T` prove that
`R^q f_* V` is locally constant with stalk `H^q(f⁻¹(s), V)`, equal to the group cohomology of the
fibre group when the fibre is a `K(π, 1)`, together with the projection formula
`R^q f_*(V ⊗ f^*W) ≅ R^q f_* V ⊗ W` for a local system `W` on `S`.

### From TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups

§IG.1.4: `IsArithmeticRepresentation` with its conjugation, base-extension and lift-independence
API, and *Exactness in families and the moduli outer action* (the étale sequence
`1 → π₁^ét(C_x̄) → π₁^ét(𝓒_{g,n}) → π₁^ét(𝓜_{g,n}) → 1`, geometric and arithmetic, with compatible
outer actions and the profinite completion of the surface group as fibre group). §IG.3.1:
*Riemann existence for punctured curves*, *Finitely many covers of bounded degree*, *Artin
neighbourhoods are `K(π, 1)`* (`ArtinNeighborhood` with `ArtinNeighborhood.point`,
`ArtinNeighborhood.tower`, `ArtinNeighborhood.aspherical` and the comparison chain
`H^i(π₁(U(ℂ)), A) → H^i(U(ℂ), A) → H^i_ét(U, A)` for finite abelian `A`), and *Topological
fundamental groups of curves are dense*. §IG.5.4: *General-genus Hurwitz comparison* and *Versal
families with specified topological monodromy* (`VersalPhiFamily.chart`, `VersalPhiFamily.cover`,
`VersalPhiFamily.monodromy`, `VersalPhiFamily.withSection`).

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

§1.11, *Reductive quotients over fields and DVRs* (finite generation, the affine universal property,
closed-orbit classification) and *Complete reducibility and closed tuples* (over an algebraically
closed field the simultaneous conjugation orbit of a tuple in `G(k)ⁿ` is closed exactly when the
Zariski closure of the generated subgroup is completely reducible; for `GL(V)` complete
reducibility is semisimplicity).

### From TauCetiRoadmap.LocalGaloisDeformationRings and TauCetiRoadmap.DeformationAndDerivedPatchingAlgebra

LocalGaloisDeformationRings §§F.1.1–F.1.7 (lifting and deformation functors of an arbitrary
profinite group, with fixed determinant) and §§F.2.1, F.2.3, F.2.5, F.2.9 (Mazur's condition
`Φ_p`, universal lifting and deformation rings, fixed-determinant rings).
DeformationAndDerivedPatchingAlgebra §4.2 (algebraic and valued integral points) and §4.4 (generic
fibres and punctured spectra). Used only in Layer 11's conditional statement.

### From TauCetiRoadmap.AlgebraicModuliForArithmeticGeometry and TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero

AlgebraicModuliForArithmeticGeometry §9.5 (`sncCompactification_open`,
`sncCompactification_boundary`, `sncCompactification_projective`), consuming
ResolutionOfSingularitiesCharacteristicZero §6.2 `sncCompactification`: a smooth projective
compactification with strict SNC boundary of a smooth quasi-projective variety in characteristic
zero, retaining the open subset.

### From TauCetiRoadmap.AlgebraicTopology, Completed/UniversalCovers and TauCetiRoadmap.ClassifyingSpaces

AlgebraicTopology Stage 1 (van Kampen), Stage 2 (relative singular chains and local coefficient
systems), Stage 5 (bundles, covers and transfer for finite covers), Stage 6 (cup and cap products,
Poincaré duality and the intersection pairing of closed oriented manifolds), Stage 8 (relative
homotopy and the homotopy sequence of a fibration). Completed/UniversalCovers: based universal
covers, deck groups and the covering classification. ClassifyingSpaces Stage 4, item 17: group
cohomology of `π` agrees with cohomology of a `K(π, 1)` with local coefficients.

### From Completed/HodgeStructures and TauCetiRoadmap.ComplexKahlerGeometry

Completed/HodgeStructures: pure, polarized and mixed Hodge structures, used fibrewise in Layer 5.
ComplexKahlerGeometry K4–K5: holomorphic bundles, Hermitian metrics, Dolbeault cohomology and
Serre duality on compact curves.

### From TauCetiRoadmap.RepresentationTheory

CharacterTheory Layer 2 (Wedderburn decomposition, irreducible indexing and Schur's lemma for
finite groups) and InductionRestriction Layer 7 (factor sets and Schur multipliers of finite
groups).

## How to read the build

Layer 0 sets up punctured surfaces and their pure mapping class groups, with point-pushing, the
Birman sequence, capping and the finite abelianization of mapping class groups; it defines the
Lean carriers `surfaceGroup` and `pureMappingClassAut`. Layer 1 supplies the group theory used
throughout: the five-term sequence with transgression, lifting through finite central isogenies,
Artinian deformations with the constancy criterion, representation schemes and Jordan's theorem.
Layer 2 defines MCG-finiteness and étale-versal families and identifies their fundamental groups
with mapping class groups through Teichmüller uniformization. Layers 3 and 4 realize an irreducible
MCG-finite representation projectively and then linearly on a versal family and decompose Artinian
deformations of fibre-unitary local systems. Layer 5 is the Hodge theory: variations of Hodge
structure, isomonodromy, the mixed Hodge structure on the cohomology of unitary local systems, the
rank bound and its Artinian vanishing form, nonabelian Hodge theory, rigidity and integrality.
Layer 6 deduces the higher Prym rank bound and the Putman–Wieland theorem; Layer 7 the unitary
case; Layer 8 the semisimple case; Layer 9 the general theorem and its corollaries. Layers 10 and 11
are arithmetic, and Layer 12 collects the examples. Layers 2–4 do not use Layer 5, and Layer 5 uses
Layer 4 only in its Artinian vanishing theorem.

## Layer 0: surfaces with punctures, pure mapping class groups and point-pushing

This layer extends the compact-surface theory of SurfaceTopology to punctures and marked points.
It fixes the standard presentation of surface groups, the pure mapping class groups and their
actions on fundamental groups, the action of Dehn twists on homology, point-pushing with the Birman
exact sequence, capping, and the finiteness of the abelianization of mapping class groups in genus
at least two.

### 0.1 Punctured surfaces and the standard presentation

For `g, b, p ≥ 0` let `Σ_{g,b,p}` be SurfaceTopology Layer 8's compact connected oriented surface of
genus `g` with `b` boundary circles, minus `p` interior points, and `Σ_{g,n} = Σ_{g,0,n}`.
Define `surfaceRelator g n` as the word `∏ᵢ [aᵢ, bᵢ] · ∏ⱼ cⱼ` in the free group on
`Fin g ⊕ Fin g ⊕ Fin n`, `surfaceGroup g n` as the presented group
`⟨a₁, b₁, …, a_g, b_g, c₁, …, c_n | ∏ᵢ [aᵢ, bᵢ] ∏ⱼ cⱼ⟩`, and `peripheralLoop j` as the image of
`cⱼ`.

Prove the standard presentation theorem: for a base point `x` of `Σ_{g,b,p}` there are based loops
`aᵢ, bᵢ, cⱼ` (`j ≤ b + p`) such that the induced homomorphism `surfaceGroup g (b + p) → π₁(Σ_{g,b,p}, x)`
is an isomorphism and `cⱼ` is freely homotopic to the positively oriented boundary of a small
neighbourhood of the `j`-th puncture or boundary circle. For `b + p ≥ 1` the group is free on
`a₁, …, b_g, c₁, …, c_{b+p−1}`, of rank `2g + b + p − 1`. The closed case is the cell structure with
one 2-cell attached along `∏ [aᵢ, bᵢ]` and van Kampen (Hatcher, §1.2, printed p. 51); removing a
point of the 2-cell and collapsing gives the punctured case, and a collar retraction identifies a
boundary circle with a puncture (Landesman–Litt 2022, proof of Lemma 7.5.1, LL22 line 2048; Landesman–Litt,
proof of Lemma 7.2.5, LL24 line 1500). *Needs:* SurfaceTopology Layer 8; AlgebraicTopology Stage 1;
Mathlib `PresentedGroup`, `FreeGroup`, `FundamentalGroup`.

- For `n = 0`, `surfaceGroup g 0` is the closed surface group; for `n ≥ 1` the homomorphism from
  the free group on `a₁, …, b_g, c₁, …, c_{n−1}` sending generators to generators is an
  isomorphism, the last peripheral loop being `c_n = (∏ [aᵢ, bᵢ] c₁ ⋯ c_{n−1})⁻¹`.
- The abelianization of `surfaceGroup g n` is free abelian of rank `2g` for `n = 0` and
  `2g + n − 1` for `n ≥ 1`; the classes of the peripheral loops sum to zero.
- Changing the chosen loops changes the isomorphism by an automorphism sending each `cⱼ` to a
  conjugate of `cⱼ`.

**Checks.**

- `(g, n) = (0, 0)`, `(0, 1)`: the group is trivial (the relator is empty, respectively `c₁`); a
  presentation that dropped the relator would give `ℤ` for `(0, 1)`.
- `(g, n) = (1, 0)`: the group is `⟨a, b | aba⁻¹b⁻¹⟩ ≅ ℤ²`, abelian; `(1, 1)` is free of rank two
  with `c₁ = [a, b]⁻¹`.
- `(g, n) = (0, 3)`: free of rank two on `c₁, c₂` with `c₁c₂c₃ = 1`; its abelianization has rank
  `2 = 2g + n − 1`, not `3`.

### 0.2 Pure mapping class groups and their actions on surface groups

Define `PMod(g, b, p)` as the group of isotopy classes of orientation-preserving homeomorphisms of
the compact surface `Σ_{g,b}` that fix the boundary pointwise and fix each of `p` marked interior
points, with isotopies through such homeomorphisms; it is SurfaceTopology's
`MappingClassGroupPlus` of `Σ_{g,b}` relative to the marked points. Write `Mod(g, b, p)` for the
group allowing permutations of the marked points, which contains `PMod(g, b, p)` with index `p!`.
Marking a base point `x` as an extra point, a class in `PMod(g, b, p + 1)` acts on
`π₁(Σ_{g,b,p}, x)` by functoriality; this based action factors through isotopy because isotopies fix
`x`, and `PMod(g, b, p)` acts by outer automorphisms.

Define `pureMappingClassAut g n` as the subgroup of `MulAut (surfaceGroup g n)` of automorphisms
sending each `peripheralLoop j` to a conjugate of itself. Prove that under the standard presentation
of §0.1 the image of `PMod(g, b, p + 1)` in `Aut(π₁(Σ_{g,b,p}, x))` lies in
`pureMappingClassAut g (b + p)`: an orientation-preserving homeomorphism fixing the `j`-th puncture
or boundary circle maps a small positively oriented loop around it to another such loop, which is
freely homotopic to `cⱼ`. By the Dehn–Nielsen–Baer theorem the image is the whole of this subgroup
for `b + p ≥ 1` in the hyperbolic range, and the orientation-preserving part of it for `b + p = 0`
(Farb–Margalit, §8.2); only the containment is used in this roadmap. *Needs:* §0.1;
SurfaceTopology Layer 9; Mathlib `MulAut`.

- `pureMappingClassAut g n` contains every inner automorphism, and for `n = 0` it is the whole
  automorphism group.
- It is a subgroup: closure under products and inverses follows from the conjugation formula, and
  the proof is part of the definition in the Lean file.
- For `n ≥ 1` no element sends some `cⱼ` to a conjugate of `cⱼ⁻¹`, since the abelianization class
  of `cⱼ` for `j < n` is a basis vector.

**Checks.**

- `(g, n) = (0, 3)`: `PMod(0, 3)` is trivial and `PMod(0, 4)` is the point-pushing group `F₂`
  (§0.5), acting on `π₁(Σ_{0,3})` by inner automorphisms; the automorphism `c₁ ↦ c₂, c₂ ↦ c₁` lies
  in `Mod(0, 3)`'s outer image but not in `pureMappingClassAut 0 3`.
- `(g, n) = (1, 0)`: `pureMappingClassAut 1 0 = Aut(ℤ²) = GL₂(ℤ)`, containing the
  orientation-reversing class `a ↦ b, b ↦ a` of determinant `−1`.
- The automorphism of `surfaceGroup 0 2 ≅ ℤ` sending `c₁` to `c₁⁻¹` is not in
  `pureMappingClassAut 0 2`: in `ℤ` the element `c₁` is conjugate only to itself.

### 0.3 Dehn twists and their action on homology

For an oriented simple closed curve `β` in the interior of `Σ_{g,b,p}` avoiding the marked points,
let `T_β` be SurfaceTopology's `dehnTwist`, supported in an annular neighbourhood oriented by the
surface. Prove that for every `x ∈ H₁(Σ_{g,b,p}; ℤ)` and `k ∈ ℤ`,

`T_β^k(x) = x + k · î(x, β) · [β]`,

where `î` is the algebraic intersection number; consequently a multitwist `∏ T_{βᵢ}^{mᵢ}` about
pairwise disjoint curves acts by `x ↦ x + Σ mᵢ î(x, βᵢ)[βᵢ]` and is unipotent
(Farb–Margalit, Proposition 6.3). Prove also that on a closed surface of genus `g ≥ 1`, or on one with
a single puncture or boundary circle, a nonzero class of `H₁(Σ; ℤ)` is represented by an oriented
simple closed curve if and only if it is primitive, and a simple closed curve is nonseparating
exactly when its class is nonzero (Farb–Margalit, Proposition 6.2). *Needs:* §0.1; SurfaceTopology
Layer 9 (`dehnTwist`, `change_of_coordinates`, `MappingClassGroupFull.actH₁`); AlgebraicTopology
Stage 6 (intersection pairing).

**Checks.**

- On the torus with `î(a, b) = 1` and ordered basis `(a, b)`, `T_b` has matrix `[[1, 0], [1, 1]]`
  and `T_a` has matrix `[[1, −1], [0, 1]]`; the opposite twist convention would swap the signs.
- A separating curve on a closed surface has class zero, so its twist acts trivially on `H₁`.
- `(2, 0) ∈ H₁(T²; ℤ)` is not primitive and is not represented by a simple closed curve, while
  `(2, 3)` is.

### 0.4 Asphericity, centres and the evaluation fibration

Prove that `Σ_{g,b,p}`, when it is not a sphere, is aspherical (`TauCeti.IsAspherical`), so it is a
`K(π₁, 1)` and its fundamental group is torsion-free; that for `χ(Σ_{g,b,p}) = 2 − 2g − b − p < 0`
the centralizer of every nontrivial element of `π₁` is infinite cyclic, so the centre is trivial; and
that for an interior point `x` the evaluation map `Homeo⁺(Σ, ∂Σ) → int Σ`, `φ ↦ φ(x)`, with the
compact-open topology, is a locally trivial fibre bundle with fibre the homeomorphisms also fixing
`x` (Farb–Margalit, Theorem 1.2 and §4.2; Hatcher, Example 1B.2 and Example 1B.14). The closed
genus-`≥ 2` case of asphericity is TeichmullerGeometry T6; a surface with boundary or punctures
deformation retracts onto a finite graph. *Needs:* §0.1; TeichmullerGeometry T6;
Completed/UniversalCovers; AlgebraicTopology Stage 8; Tau Ceti `TauCeti.IsAspherical`.

**Checks.**

- The disc and the plane are aspherical although `χ > 0`; the sphere is excluded since
  `π₂(S²) = ℤ`.
- The torus has centre `ℤ²`; the hypothesis `χ < 0` is necessary for a trivial centre.
- For the once-punctured torus, a free group of rank two, the centralizer of `a` is `⟨a⟩`.

### 0.5 Point-pushing and the Birman exact sequence

For an interior point `x` and a loop `α` at `x`, extend the motion of `x` along `α` to an isotopy
fixing the boundary and the other marked points, and let `Push(α)` be the class of its end map in
`PMod(Σ, x)`. Prove that `Push : π₁(Σ, x) → PMod(Σ, x)` is a well-defined homomorphism (the
connecting map of the evaluation fibration of §0.4), that `Push(α)` acts on `π₁(Σ, x)` by
`γ ↦ α * γ * α⁻¹` in Mathlib's convention, and that for `χ(Σ) < 0` the sequence

`1 → π₁(Σ, x) → PMod(Σ, x) → PMod(Σ) → 1`

(`Push`, then forgetting `x`) is exact (Farb–Margalit, Theorem 4.6). Injectivity uses the trivial
centre of §0.4. For a simple loop `α`, `Push(α) = T_a T_b⁻¹` with `a, b` the left and right
push-offs (Farb–Margalit, Fact 4.7). In particular for `2g − 2 + n > 0`,
`1 → π₁(Σ_{g,n}, x) → PMod(g, n + 1) → PMod(g, n) → 1`. *Needs:* §§0.2–0.4; AlgebraicTopology
Stage 8; Mathlib `FundamentalGroup.mul_def`.

**Checks.**

- `(g, n) = (0, 3)`: the sequence is `1 → F₂ → PMod(0, 4) → 1 → 1`, so `PMod(0, 4) ≅ F₂`.
- On the torus `Push` is trivial (`π₁` is abelian and translations give the isotopies), so the
  injectivity statement needs `χ < 0`.
- On a closed genus-two surface, pushing a nonseparating simple loop gives a nontrivial mapping
  class acting trivially on `H₁(Σ₂)`.

### 0.6 Capping boundary circles

Prove that replacing each boundary circle of `Σ_{g,b,p}` by a puncture induces a surjection
`PMod(g, b, p) → PMod(g, 0, b + p)` whose kernel is generated by the Dehn twists about the `b`
boundary-parallel curves, a central free abelian group of rank `b` when `2g − 2 + b + p > 0`
(Farb–Margalit, Theorem 3.18 and Proposition 3.19; Landesman–Litt, proof of Lemma 7.2.5). A
boundary twist acts trivially on `π₁(Σ_{g,b,p}, v₀)` for `v₀` outside its collar, so the based
actions of `PMod(g, b, p + 1)` and of its image in `PMod(g, 0, b + p + 1)` on the fundamental group
have the same image. *Needs:* §§0.2, 0.5.

**Checks.**

- For `b = 0` the map is the identity.
- For the torus with one boundary circle the kernel is generated by the boundary twist and the
  quotient is `PMod(1, 0, 1) ≅ SL₂(ℤ)`.
- The boundary twist of `Σ_{g,1,0}` is nontrivial in `PMod(g, 1, 0)` but trivial in
  `Aut(π₁(Σ_{g,1,0}, v₀))`.

### 0.7 Finite abelianization in genus at least two

Prove that for a connected oriented surface of genus `g` with `r` boundary circles and `n`
punctures, the first homology `H₁(PMod; ℤ)` of its pure mapping class group (fixing boundary
pointwise and each puncture) is `ℤ/10` for `g = 2` and `0` for `g ≥ 3`, for all `r, n ≥ 0`; for
`g = 1` it is `ℤ/12` if `r = 0` and `ℤ^r` if `r ≥ 1` (Korkmaz, Theorem 5.1, Kor02 line 357). In
particular every homomorphism from `PMod` to `ℂ^×` has finite image of order dividing `10` when
`g ≥ 2`. The route is Gervais's presentation and the lantern relation, which express the twist about
a nonseparating curve through twists about curves of the same type. *Needs:* §§0.3, 0.6;
SurfaceTopology Layer 9 (Lickorish generation, change of coordinates).

**Checks.**

- `g = 1, r = 1`: the abelianization is `ℤ`, generated by a nonseparating twist; a character
  sending it to `2` has infinite image, so genus `≥ 2` is needed for finiteness.
- `g = 1, r = 0`: `SL₂(ℤ)^ab ≅ ℤ/12`.
- `g = 2`: the abelianization `ℤ/10` is nonzero, so the statement is finiteness, not perfectness.

### Examples

- On `Σ_{2,1}` the based action of `PMod(2, 2)` contains the point-pushing copy of the free group of
  rank four, acting on `surfaceGroup 2 1` by inner automorphisms (§0.5), inside
  `pureMappingClassAut 2 1` (§0.2).
- On the torus, `T_a` and `T_b` act on `H₁` by the two elementary matrices of §0.3 and generate
  `SL₂(ℤ)`, the image of `PMod(1, 0)`.

### Dependencies

SurfaceTopology Layers 8–9; TeichmullerGeometry T6; AlgebraicTopology Stages 1, 6 and 8;
Completed/UniversalCovers; Mathlib `PresentedGroup`, `FreeGroup`, `MulAut`, `FundamentalGroup`;
Tau Ceti `TauCeti.IsAspherical`.

## Layer 1: group cohomology, central isogenies, Artinian deformations and representation schemes

This layer states, for arbitrary discrete groups, the cohomological and deformation-theoretic tools
the lifting and constancy arguments use: the Hochschild–Serre sequence in low degrees with the
transgression, the obstruction to lifting a projective representation through a finite central
isogeny with a prescribed restriction, deformations over Artinian `ℂ`-algebras with the constancy
criterion of Landesman–Litt, representation schemes with fixed determinant and their reductive
quotients, and Jordan's theorem.

### 1.1 The Hochschild–Serre sequence in low degrees

Let `1 → N → G → Q → 1` be an extension of groups and `M` a `G`-module. Prove that there is a
spectral sequence `E₂^{p,q} = H^p(Q, H^q(N, M)) ⇒ H^{p+q}(G, M)`, natural in the extension and in
`M` (Hochschild–Serre, Chapter I, §7, Proposition 7, printed p. 117), and deduce:

- the five-term exact sequence
  `0 → H¹(Q, M^N) → H¹(G, M) → H¹(N, M)^Q → H²(Q, M^N) → H²(G, M)`, whose third map is the
  transgression `tg` (Hochschild–Serre, Chapter III, §4, Theorem 2 with `m = 1`, printed p. 129);
- the degree-two filtration: writing `F¹H²(G, M)` for the kernel of restriction to `N`, there is a
  natural map `F¹H²(G, M) → H¹(Q, H¹(N, M))` whose kernel is the image of inflation from
  `H²(Q, M^N)`;
- for a trivial `G`-module `μ`, a homomorphism `χ : N → μ` invariant under conjugation by `G`
  extends to `G` if and only if `tg(χ) = 0` in `H²(Q, μ)`.

Exactness of inflation–restriction in every positive degree is pinned
(`TauCeti.groupCohomology.infRes_exact`, `groupCohomology.H1InfRes_exact`); the transgression, its
exactness and the degree-two filtration are the targets here; the profinite five-term sequence of
ProfiniteCohomology Layer 5 is the same statement for profinite groups and closed normal subgroups,
and does not apply to infinite discrete groups. *Needs:* Mathlib group cohomology of `Rep`; Tau Ceti
`TauCeti.groupCohomology.infRes_exact`.

**Checks.**

- `N = G`: then `Q = 1`, `H²(Q, −) = 0` and the sequence gives `H¹(G, M) ≅ H¹(G, M)`; for `N = 1`
  inflation `H¹(Q, M) → H¹(G, M)` is an isomorphism.
- `G = ℤ/4`, `N = 2ℤ/4`, `μ = ℤ/2` trivial: the nonzero character of `N` is invariant but does not
  extend, since every homomorphism `ℤ/4 → ℤ/2` kills `2`; its transgression is the nonzero class of
  the extension `0 → ℤ/2 → ℤ/4 → ℤ/2 → 0` in `H²(ℤ/2, ℤ/2) = ℤ/2`.
- `G = ℤ/2 × ℤ/2`, `N = ℤ/2 × 0`: the nonzero character of `N` extends by the projection and its
  transgression vanishes, distinguishing the split from the nonsplit extension of the previous check.

### 1.2 Lifting through a finite central isogeny with prescribed restriction

For `r ≥ 1` and a finite subgroup `D ⊂ ℂ^×`, let `G_D = {A ∈ GL_r(ℂ) | det A ∈ D}`. The projection
`G_D → PGL_r(ℂ)` is surjective with finite cyclic central kernel `μ_D = {ζ ∈ ℂ^× | ζ^r ∈ D}`
(scalar matrices). Prove, for an arbitrary group `G` and a homomorphism `q : G → PGL_r(ℂ)`:

- there is a class `o_D(q) ∈ H²(G, μ_D)` (trivial action), natural under pullback, which vanishes
  exactly when `q` lifts to a homomorphism `G → G_D`; its image in `H²(G, ℂ^×)` is
  `TauCeti.IsProjectiveRep.cohomologyClass` of a normalized lift of `q`;
- two lifts differ by multiplication by a unique homomorphism `G → μ_D`;
- let `N ⊴ G` and let `ρ_N : N → G_D` lift `q|_N` and satisfy `A ρ_N(n) A⁻¹ = ρ_N(γ n γ⁻¹)` for
  every `γ ∈ G`, every lift `A ∈ G_D` of `q(γ)` and every `n ∈ N`. If `o_D(q) = 0` and `ρ̃` is any
  lift of `q`, then `ρ̃|_N = χ · ρ_N` for a unique `G`-invariant `χ : N → μ_D`, and some lift of `q`
  restricts to `ρ_N` on `N` if and only if `tg(χ) = 0` in `H²(G/N, μ_D)` (§1.1).

The class is that of the central extension `1 → μ_D → q^*G_D → G → 1`; the pinned
`TauCeti.IsProjectiveRep`, `TauCeti.IsProjectiveRep.toPGL`, `MonoidHom.exists_isProjectiveRep_toPGL_eq`
and `TauCeti.IsProjectiveRep.cohomologyClass_eq_zero_iff` supply the passage between homomorphisms
to `PGL_r` and lifts with factor sets, and the vanishing criterion with `ℂ^×` coefficients
(Landesman–Litt, proof of Proposition 2.3.4, pp. 16–18). *Needs:* §1.1; Tau Ceti
`TauCeti.IsProjectiveRep`, `TauCeti.IsProjectiveRep.cohomologyClass_eq_zero_iff`,
`TauCeti.isProjectiveRepEquivExtensionHom`; RepresentationTheory/InductionRestriction Layer 7 for
the finite-group case.

**Checks.**

- `r = 1`: `PGL₁` is trivial, `μ_D = D`, `o_D = 0` and the lifts are the homomorphisms `G → D`.
- `G = ℤ/2 × ℤ/2` with `q` the Klein-four subgroup of `PGL₂(ℂ)` (images of `diag(1, −1)` and
  `[[0, 1], [1, 0]]`): any two lifts anticommute, so no lift exists for any `D` and `o_D(q) ≠ 0`;
  pulled back along `Q₈ → ℤ/2 × ℤ/2`, the class vanishes (the standard representation of `Q₈` in
  `SL₂(ℂ)` lifts it), as naturality requires.
- `G = ℤ`, `N = 2ℤ`, `r = 1`, `q` trivial and `ρ_N(2) = −1`: a lift restricting to `ρ_N` is a
  homomorphism `ℤ → D` with `ρ̃(1)² = −1`. It exists for `D = μ₄` and not for `D = μ₂`, and
  correspondingly `tg(χ)` is the class of `−1` in `H²(ℤ/2, D) = D/D²`, zero for `μ₄` and nonzero
  for `μ₂`.

### 1.3 Artinian deformations and the constancy criterion

Let `Art` be the category of local Artinian `ℂ`-algebras with residue field `ℂ`. For a group `G`, a
representation `ρ_A : G → GL_r(A)` and a square-zero extension `0 → I → B → A → 0` in `Art`, a
deformation of `ρ_A` to `B` is a lift `ρ_B`, and two are equivalent when they are conjugate by a
matrix congruent to the identity modulo `I`. Prove:

- for `A[ε]/ε² → A`, the constant-determinant deformations of `ρ_A` up to equivalence form a set in
  natural bijection with `H¹(G, ad ρ_A)`, functorially in `G` (Landesman–Litt, Lemma 3.1.1, citing
  Mazur);
- for `1 → N → G → Q → 1` with `H⁰(Q, H¹(N, ad ρ|_N)) = 0`, every constant-determinant deformation
  of `ρ` to `A[ε]/ε²` restricts on `N` to the constant deformation (Landesman–Litt, Lemma 3.1.2,
  by §1.1);
- **the constancy criterion**: put `B_n = ℂ[t]/(t^{n+1})`, `R_n = B_{n−1}[ε]/ε²` and
  `d_n : B_n → R_n`, `f ↦ f + ε f′`. If for every `n` and every deformation `γ : G → GL_r(B_n)` of
  `ρ₀` with `γ|_N` constant one has `H⁰(Q, H¹(N, ad γ|_N)) = 0`, then every `ρ_∞ : G → GL_r(ℂ[[t]])`
  with `ρ_∞ ≡ ρ₀ (mod t)` and constant determinant has `ρ_∞|_N` conjugate over `ℂ[[t]]` to a
  constant representation (Landesman–Litt, Proposition 3.2.1, pp. 21–23). The conjugators are built
  as a convergent product of compatible corrections `id + C t^n / n`; a separate conjugator at each
  order without compatibility does not suffice.

*Needs:* §1.1; Mathlib `PowerSeries`, `Matrix.GeneralLinearGroup`.

**Checks.**

- `d_n` is injective: `f + ε f′ = 0` forces `f = 0` modulo `t^n` and then `f′ = 0`, so `f` is a
  constant multiple of `t^n` with vanishing derivative, hence zero.
- `r = 1`: `ad ρ₀ = 0`, so the hypothesis holds, and a constant-determinant `ρ_∞` of rank one is
  constant, as the criterion asserts.
- `G = N = ℤ`, `ρ₀` trivial of rank two, `ρ_∞(1) = [[1, t], [0, 1]]`: the determinant is constant,
  `H¹(ℤ, sl₂) = sl₂ ≠ 0` violates the hypothesis, and `ρ_∞` is not conjugate to a constant
  representation (the only constant lift of `ρ₀` is trivial), so the hypothesis cannot be dropped.

### 1.4 Representation schemes with fixed determinant and their quotients

For a finitely presented group `Γ = ⟨s₁, …, s_k | w₁, …, w_l⟩`, `r ≥ 1` and a character
`χ : Γ → ℂ^×`, define `R_r(Γ)_χ` as the closed subscheme of `GL_r^k` over `ℂ` cut out by
`w_j(A₁, …, A_k) = 1` and `det A_i = χ(s_i)`, with `GL_r` acting by simultaneous conjugation, and
`M_r(Γ)_χ = Spec O(R_r(Γ)_χ)^{GL_r}` with quotient map `π`. Prove:

- `R_r(Γ)_χ` represents `B ↦ {ρ : Γ → GL_r(B) | det ρ = χ}` on commutative `ℂ`-algebras, and a
  change of presentation gives a canonical equivariant isomorphism; a connected component `X` of
  `R_r(Γ)_χ` is a connected affine `ℂ`-scheme of finite type carrying the universal representation
  `Γ → GL_r(O(X))` of determinant `χ`;
- the `GL_r(ℂ)`-orbit of a `ℂ`-point is closed if and only if the representation is semisimple
  (ArithmeticGaloisRepresentations §1.11, *Complete reducibility and closed tuples*; Sikora,
  Theorem 30, Sik12 line 572), and each fibre of `π` over a `ℂ`-point contains exactly one closed
  orbit, that of the semisimplification;
- `π` is surjective, connected components of `R_r(Γ)_χ` are `GL_r`-stable, and `π` induces a
  bijection between connected components of `R_r(Γ)_χ` and of `M_r(Γ)_χ`: images of disjoint closed
  invariant subsets are disjoint and closed, and every fibre is connected because each orbit closure
  in it contains its unique closed orbit.

*Needs:* ArithmeticGaloisRepresentations §1.11 (*Reductive quotients over fields and DVRs*,
*Complete reducibility and closed tuples*); SchemeAndStackFoundations Layer 0; Mathlib
`AlgebraicGeometry.Scheme`.

**Checks.**

- `Γ = ℤ`, `r = 2`, `χ = 1`: the unipotent `[[1, 1], [0, 1]]` and the identity have the same image
  in `M_2(ℤ)_1`, only the identity has a closed orbit, and both lie in one connected component.
- `Γ` trivial: `R_r(Γ)_χ` is a point and so is `M_r(Γ)_χ`.
- `Γ = ℤ/2`, `r = 2`, `χ` trivial: an involution of determinant one is `±I`, so `R_2(Γ)_χ` has
  the two points `±I`, two components, and `M_2(Γ)_χ = R_2(Γ)_χ`, matching the bijection on
  components; for `χ` trivial and `r = 1` the scheme is the single point `1`, since fixing the
  determinant fixes a rank-one representation.

### 1.5 Jordan's theorem and two-generation of finite general linear groups

Prove Jordan's theorem: for every `r ≥ 1` there is `J(r)` such that every finite subgroup of
`GL_r(K)`, for a field `K` of characteristic zero, has an abelian normal subgroup of index at most
`J(r)` (Curtis–Reiner, Theorem 36.13). Put `m(r) = J(r)!`; then every finite subgroup of `GL_r(K)`
satisfies the identity `[x^{m(r)}, y^{m(r)}] = 1`. Prove also that `GL_r(𝔽_p)` is generated by two
elements for every prime `p` and every `r ≥ 2` (Waterhouse). *Needs:* RepresentationTheory/CharacterTheory
Layer 2; Mathlib `Matrix.GeneralLinearGroup`, `Subgroup.index`.

**Checks.**

- In `GL₂(𝔽_p)` put `u = [[1, 1], [0, 1]]`, `l = [[1, 0], [1, 1]]`. Then
  `u^m l^m = [[1 + m², m], [m, 1]]` and `l^m u^m = [[1, m], [m, 1 + m²]]`, which agree exactly when
  `p | m`; so `GL_r(𝔽_p)`, containing these as a block, violates the identity when `p ∤ m(r)`.
- The factorial matters: if the index `k` of the abelian subgroup does not divide the chosen
  exponent, `x^{exponent}` need not lie in it; `k ≤ J(r)` always divides `J(r)!`.
- `r = 1`: finite subgroups of `K^×` are cyclic, so `J(1) = 1` and the identity holds with `m = 1`.

### Examples

- For the extension `1 → π₁(Σ_{g,n}) → PMod(g, n + 1) → PMod(g, n) → 1` of §0.5 and `μ` finite,
  §1.1 gives the sequence used in Layer 4 to kill obstruction classes in two steps: first their
  image in `H¹(Q, H¹(N, μ))`, then the inflated class from `H²(Q, μ)`.
- For `Γ = π₁(Σ_{g,n})`, the component of `R_r(Γ)_χ` through a point is the connected finite-type
  parameter scheme of Layer 8's constancy lemma.

### Dependencies

Mathlib group cohomology, `Matrix.GeneralLinearGroup`, `PowerSeries`, `AlgebraicGeometry.Scheme`;
Tau Ceti `TauCeti.groupCohomology.infRes_exact`, `TauCeti.IsProjectiveRep` and its cohomology
class; ArithmeticGaloisRepresentations §1.11; RepresentationTheory/CharacterTheory Layer 2;
RepresentationTheory/InductionRestriction Layer 7; SchemeAndStackFoundations Layer 0.

## Layer 2: finite orbits and surface monodromy

This layer defines MCG-finiteness and punctured étale-versal families, identifies the orbifold
fundamental groups of the moduli stacks with pure mapping class groups through Teichmüller
uniformization, and proves that every local system on the total space of a versal family restricts
to an MCG-finite representation of a fibre.

### 2.1 MCG-finite representations

Define `HasFiniteConjugacyOrbitUnder H ρ`, for a group `G`, a subgroup `H` of `MulAut G` and
`ρ : G → GL_r(ℂ)`: there is a finite set `S` of homomorphisms such that for every `φ ∈ H` the
pullback `ρ ∘ φ` is `GL_r(ℂ)`-conjugate to some `σ ∈ S`. A representation `ρ` of `π₁(Σ_{g,n}, x)` is
*MCG-finite* when this holds for the image of the based action of `PMod(g, n + 1)` (§0.2); since
inner automorphisms change `ρ` only by conjugation, this is finiteness of the orbit of the actual
conjugacy class of `ρ` under the outer action of `PMod(g, n)`, and, as `PMod(g, n)` has index `n!`
in `Mod(g, n)`, under `Mod(g, n)` (Landesman–Litt, Definition 1.1.1, p. 2). No semisimplification is
taken. *Needs:* §0.2; Mathlib `MulAut`, `Matrix.GeneralLinearGroup`.

- `HasFiniteConjugacyOrbitUnder H ρ` holds if and only if the stabilizer in `H` of the conjugacy
  class of `ρ` has finite index in `H`.
- It depends only on the conjugacy class of `ρ`, and it passes to subgroups of `H` and to subgroups
  of finite index containing them in both directions.
- Precomposition with conjugation by `x` is conjugation of `ρ` by `ρ(x)`, so the predicate for `H`
  and for `H` together with the inner automorphisms agree.
- For an automorphism `ψ` of `G` normalizing `H`, `ρ` has the property exactly when `ρ ∘ ψ` has it.
- If `ρ` has the property then so do `det ∘ ρ` and every exterior power of `ρ`.

**Checks.**

- The trivial representation, including rank zero, has a one-element orbit.
- A representation with finite image of a finitely generated group has finite orbit: there are
  finitely many homomorphisms into its image, and finitely many conjugacy classes of embeddings.
- On a closed genus-two surface let `f : π₁ → ℂ` be the homomorphism with `f(a₁) = 1` and
  `f(b₁) = f(a₂) = f(b₂) = 0`. The unipotent representation `γ ↦ [[1, f(γ)], [0, 1]]` has conjugacy
  class determined by the line of `f`, and `Sp₄(ℤ)` moves this line to infinitely many lines, so
  the orbit is infinite although the semisimplification is trivial with a one-element orbit.

### 2.2 Punctured étale-versal families

For `2g − 2 + n > 0`, a *punctured étale-versal `(g, n)`-family* is a smooth proper morphism
`π : C → M` with geometrically connected genus-`g` fibres over a connected smooth complex variety
`M`, with `n` disjoint sections, whose classifying map `M → M_{g,n}` to the moduli stack of
SchemeAndStackFoundations §4.15 (`Mbar.smooth`) is dominant and étale; `C°` is the complement of
the sections and `π° : C° → M` (Landesman–Litt, Notation 1.10.1, pp. 10–11). The word *versal*
includes étaleness. *Needs:* SchemeAndStackFoundations §4.15.

- The fibre of `C°` over `m` is the pointed curve minus its section values.
- Connected dominant étale base change preserves the family and its ordered sections.
- A chosen marking of an analytic fibre identifies its fundamental group with `π₁(Σ_{g,n})`,
  compatibly with `TauCeti.LocalCoefficientSystem.monodromyRepresentation`.
- The universal pointed curve over a connected component of a level cover
  (`level_structure_cover`, `m ≥ 3`) is a punctured étale-versal family.

**Checks.**

- `(g, n) = (0, 3)`: `M_{0,3}` is a point, a versal family is the constant family `ℙ¹` with three
  sections over a finite set, and the punctured fibre group is free of rank two.
- A constant family over a point is not versal when `3g − 3 + n > 0`, since its classifying map is
  not dominant.
- A dominant but ramified classifying map, for instance a ramified double cover of a level chart,
  is excluded: versal includes étale.

### 2.3 Teichmüller uniformization of the pointed moduli stack

For `2g − 2 + n > 0`, prove that the Teichmüller space `T(g, n)` of marked complex structures on
`Σ_{g,n}` is a contractible complex manifold of dimension `3g − 3 + n`; that `PMod(g, n)` acts by
change of marking properly discontinuously with finite stabilizers, the automorphism groups of the
pointed curves; that the analytic moduli stack `M_{g,n}^an` is the orbifold quotient
`[T(g, n)/PMod(g, n)]`; and that the universal pointed curve over `T(g, n)` is topologically the
product `T(g, n) × Σ_g` with `n` constant sections. Hence `M_{g,n}^an` has contractible orbifold
universal cover and orbifold fundamental group `PMod(g, n)`, and changing the marking of the base
fibre changes this identification by an inner automorphism (Farb–Margalit, §10.6.3, as used in
Landesman–Litt, proof of Lemma 2.0.1, p. 12). For closed surfaces of genus `≥ 2` the marked atlas,
the dimension and the proper action are TeichmullerGeometry T2–T3; for punctured surfaces one route
uses ComplexCurveModuli D0.4's complete finite-area hyperbolic metrics, D0.5's properness and
Fenchel–Nielsen coordinates, which identify `T(g, n)` with `ℝ^{6g−6+2n}`. *Needs:* §0.2;
TeichmullerGeometry T2, T3, T6; ComplexCurveModuli D0.4, D0.5, D5; SchemeAndStackFoundations §4.15.

**Checks.**

- `(g, n) = (0, 4)`: `M_{0,4}` is the thrice-punctured line, a scheme without stabilizers, and the
  theorem gives `π₁ ≅ PMod(0, 4)`, free of rank two.
- `(g, n) = (1, 1)`: `T(1, 1)` is the upper half-plane and `PMod(1, 1) = SL₂(ℤ)` acts through
  `PSL₂(ℤ)` with `−1` acting trivially; the generic stabilizer `±1` is the elliptic involution, so
  the orbifold group is `SL₂(ℤ)`, not the group `PSL₂(ℤ)` of the coarse `j`-line.
- The statement concerns the stack: whenever stabilizers are nontrivial the coarse space has a
  different fundamental group.

### 2.4 Moduli and point-pushing comparison

For `2g − 2 + n > 0`, a base point `m ∈ M_{g,n}` and a lift `m′ ∈ M_{g,n+1}`, prove that there are
isomorphisms `π₁(M_{g,n}, m) ≅ PMod(g, n)` and `π₁(M_{g,n+1}, m′) ≅ PMod(g, n + 1)` under which the
homotopy sequence of the forgetful morphism `M_{g,n+1} → M_{g,n}` (identified with the universal
punctured curve by `Mbar.forget`) becomes the Birman exact sequence of §0.5; the fibre inclusion is
point-pushing and its conjugation action is the outer action. These are orbifold groups, not
fundamental groups of coarse spaces (Landesman–Litt, Lemma 2.0.1, p. 12, where the second group is
misprinted as `PMod(g, n)`). Changing the markings changes both vertical isomorphisms by the same
inner automorphism. *Needs:* §§0.5, 2.3; SchemeAndStackFoundations §4.15 (`Mbar.forget`); Tau Ceti
`TauCeti.LocalCoefficientSystem.monodromyRepresentation`.

**Checks.**

- `(g, n) = (0, 3)`: the forgetful map `M_{0,4} → M_{0,3}` is the thrice-punctured line over a
  point and the sequence is `π₁(Σ_{0,3}) ≅ PMod(0, 4) ≅ F₂` with `PMod(0, 3)` trivial.
- The kernel of `PMod(g, n + 1) → PMod(g, n)` is the `n`-punctured surface group, so the second
  group must be `PMod(g, n + 1)`: with `PMod(g, n)` the sequence would have the wrong kernel.

### 2.5 Dominant étale maps have finite-index image on fundamental groups

Prove that for a dominant étale morphism `f : X → Y` from a connected complex variety to a normal
irreducible complex variety, the image of `π₁(X) → π₁(Y)` has finite index. One route: over a dense
Zariski open `V ⊂ Y` the map `f⁻¹(V) → V` is finite étale (by Zariski's main theorem the complement
of `X` in the normalization of `Y` in its function field has image of smaller dimension), so the
image of `π₁(f⁻¹(V))` has finite index in `π₁(V)`, and `π₁(V) → π₁(Y)` is surjective because `Y` is
normal (Landesman–Litt, proof of Lemma 2.1.4, p. 13; Debarre, Lemma 4.19). For a dominant étale
map to `M_{g,n}` the same holds after pulling back to a level cover (§2.2). *Needs:*
ComplexComparisonPartII §§C6.0, C6.2 (`complexAlgebraicTopology`, `riemannExistence`);
SchemeAndStackFoundations §4.15.

**Checks.**

- An open immersion of a dense open into a smooth variety is surjective on `π₁`.
- The connected double cover `z ↦ z²` of `ℂ^×` has image of index two.
- Dominance is needed: the inclusion of a point has trivial image, of infinite index in
  `π₁(ℂ^×) = ℤ`.

### 2.6 Fundamental groups of versal families

For a punctured étale-versal family with `2g − 2 + n > 0` and compatible base points, prove that
`1 → π₁(C°_m) → π₁(C°) → π₁(M) → 1` is exact and that `π₁(M) → PMod(g, n)` has finite-index image;
hence the outer monodromy on the fibre group is the restriction of the mapping-class action
(Landesman–Litt, Lemmas 2.1.4–2.1.5, pp. 13–14). The family `C° → M` is a locally trivial fibre
bundle by ComplexComparisonPartII §C5.2 (`ehresmannFibration`), with horizontal lifts tangent to
the disjoint sections so that the trivializations preserve them; injectivity on the left holds
because the fibre inclusion factors through the universal punctured curve, where the fibre group
injects by §2.3 — no vanishing of `π₂(M)` is assumed. *Needs:* §§2.2–2.5; ComplexComparisonPartII
§C5.2; AlgebraicTopology Stage 8.

**Checks.**

- For the constant family over a point with `(g, n) = (0, 3)` the sequence is `1 → F₂ → F₂ → 1`.
- The finite-index statement needs dominance: a constant map from a point has trivial image, of
  infinite index in `PMod(g, n)` when `3g − 3 + n > 0`.

### 2.7 Fibral finite-orbit monodromy

Prove that the restriction to a fibre of every finite-dimensional complex local system on the total
space `C°` of a punctured étale-versal family is MCG-finite: conjugation by lifts of loops of `M`
supplies actual intertwiners for the finite-index image of `π₁(M)` in `PMod(g, n)`
(Landesman–Litt, Proposition 2.1.3, pp. 13–14). *Needs:* §§2.1, 2.6; Tau Ceti
`TauCeti.LocalCoefficientSystem`, `TauCeti.LocalCoefficientSystem.monodromyRepresentation`.

**Checks.**

- A local system pulled back from `M` restricts trivially to every fibre, a one-element orbit.
- For the universal punctured curve over a level chart this is §3.2 for the image
  of `π₁` of the total space in `PMod(g, n + 1)`.

### Examples

- The unipotent representation of §2.1 restricted from the closed genus-two surface is not the
  fibre of a local system on any versal family, by §2.7.
- Over `M_{0,4}`, the universal curve is a punctured étale-versal family whose total-space group
  `π₁(M_{0,5})` maps onto `PMod(0, 5)`.

### Dependencies

Layer 0; SchemeAndStackFoundations §4.15; TeichmullerGeometry T2, T3, T6; ComplexCurveModuli D0.4,
D0.5, D5; ComplexComparisonPartII §§C5.2, C6.0, C6.2; AlgebraicTopology Stage 8; Tau Ceti
`TauCeti.LocalCoefficientSystem`.

## Layer 3: projective realization

This layer proves the closure properties of MCG-finiteness, the point-pushing restriction theorem,
finiteness of MCG-finite characters in positive genus, and constructs the canonical projective
extension of an irreducible MCG-finite representation to the stabilizer of its class.

### 3.1 Closure properties

Prove that finite direct sums, tensor products and duals of MCG-finite representations are
MCG-finite, that every irreducible constituent of the semisimplification is MCG-finite, and that a
subrepresentation or quotient singled out functorially under all representation isomorphisms, in
particular the socle (`TauCeti.socle`) and its quotient, is MCG-finite. Arbitrary
non-characteristic subquotients of a nonsplit representation are not asserted to be MCG-finite
(Landesman–Litt, Proposition 2.1.1, p. 12, citing Lawrence–Litt, Lemma 2.2.1; §8.7, p. 44).
*Needs:* §2.1; Tau Ceti `TauCeti.socle`, `TauCeti.isSemisimpleModule_socle`.

**Checks.**

- The stabilizer of `ρ ⊕ σ` and of `ρ ⊗ σ` contains the intersection of the two finite-index
  stabilizers.
- In the abelianization unipotent example `U` on `H ⊕ ℂ` of §12.1, the quotient by a line
  `L ⊂ H` has conjugacy class determined by `L`, and `Sp_{2g}(ℤ)` moves a rational line to
  infinitely many lines: non-characteristic quotients need not be MCG-finite.
- The socle of `U` is `H`, a characteristic subrepresentation, and both it and the quotient `ℂ` are
  MCG-finite.

### 3.2 Point-pushing restriction

Prove that for `2g − 2 + n > 0`, a finite-index subgroup `Γ ⊂ PMod(g, n + 1)` containing the
point-pushing subgroup `π₁(Σ_{g,n})` and any representation `ρ : Γ → GL_r(ℂ)`, the restriction of
`ρ` to `π₁(Σ_{g,n})` is MCG-finite: for `γ ∈ Γ`, `n ↦ ρ(γ n γ⁻¹)` is conjugate to `ρ` by `ρ(γ)`
(Landesman–Litt, Proposition 2.1.2, p. 13). *Needs:* §§0.5, 2.1.

**Checks.**

- For `n = 0`, `Γ = PMod(g, 1)` and the symplectic representation on `H₁(Σ_g)` pulled back along
  the forgetful map, the restriction to the point-pushing subgroup is trivial.
- The intertwiner for `γ` is `ρ(γ)` itself, so the orbit under the image of `Γ` in `PMod(g, n)` is a
  single conjugacy class.

### 3.3 Rank-one finiteness

Prove that for `g ≥ 1` and `n ≥ 0` every MCG-finite character `π₁(Σ_{g,n}) → ℂ^×` has finite image;
in particular every positive-rank MCG-finite representation has finite determinant (Landesman–Litt,
Proposition 2.3.1 and Lemma 2.3.2, pp. 15–16). A character factors through `H₁`; for a
nonseparating curve `a` and a class `x` with `î(x, a) = 1`, a power `T_a^k` stabilizes the
character, and §0.3 gives `χ(a)^k = 1`; the standard generators are nonseparating, and for `n ≥ 2` a
puncture loop `cⱼ` is handled through a nonseparating curve in the class `a₁ + cⱼ`. *Needs:*
§§0.3, 2.1, 3.1.

**Checks.**

- `g = 1, n = 0`: a character of `ℤ²` with finite orbit under `SL₂(ℤ)` is torsion, by the two
  transvections.
- Genus zero is excluded: on `Σ_{0,3}` the pure mapping class group is trivial, so the character
  with `c₁ ↦ 2`, `c₂ ↦ 1/2` is MCG-finite with infinite image.

### 3.4 The canonical projective extension

Let `2g − 2 + n > 0`, `N = π₁(Σ_{g,n})` the point-pushing subgroup of `PMod(g, n + 1)`, and
`ρ : N → GL_r(ℂ)`, `r ≥ 1`, irreducible and MCG-finite. Let `Γ ⊂ PMod(g, n)` be the finite-index
stabilizer of the class of `ρ` and `Γ̃` its preimage in `PMod(g, n + 1)`. For `γ ∈ Γ̃` choose an
actual intertwiner `A_γ ∈ GL_r(ℂ)` from `ρ` to `ρ ∘ conj_γ`; by Schur's lemma it is unique up to a
scalar, so `γ ↦ [A_γ]` is a homomorphism `ρ̂ : Γ̃ → PGL_r(ℂ)` restricting to `Pρ` on `N`.
Uniqueness holds among extensions whose values are classes of actual intertwiners, not among
arbitrary `PGL_r` extensions (Landesman–Litt, Lemma 2.2.2, pp. 14–15, with the uniqueness clause
corrected as in the authors' erratum). On the total space of a finite étale scheme cover of
`M_{g,n}` with `π₁`-image in `Γ`, `ρ̂` defines a projective local system restricting on the based
fibre to `Pρ` (Landesman–Litt, Lemma 2.2.3, p. 15). *Needs:* §§2.1, 2.4; Mathlib
`Representation.IsIrreducible`; Tau Ceti `TauCeti.IsProjectiveRep.toPGL`;
SchemeAndStackFoundations §4.15 (`level_structure_cover`).

- On `N` the extension is `Pρ`, and for `n ∈ N` its value is `[ρ(n)]`.
- The value on `γ` is the class of any actual intertwiner; rescaling the intertwiners does not
  change `ρ̂`.
- For `γ ∈ Γ̃` and `η ∈ N`, `ρ̂(γ) Pρ(η) ρ̂(γ)⁻¹ = Pρ(γ η γ⁻¹)`.
- Restriction to a smaller stabilizer agrees with pulling back the extension.

**Checks.**

- At rank one `PGL₁` is trivial and so is the extension.
- For the two-dimensional irreducible representation of `Q₈` and `G = Q₈ × C₂`, the projective
  image is the Klein four-group, its own centralizer in `PGL₂(ℂ)`, so the `C₂` factor may be sent to
  any element of it: arbitrary projective extensions of `Pρ` are not unique, while actual
  intertwiners for the trivial `C₂`-action are scalar.
- If `Pρ` has trivial centralizer in `PGL_r(ℂ)`, for instance for irreducible `ρ` with Zariski-dense
  image in `SL_r`, every `PGL_r` extension restricting to `Pρ` coincides with `ρ̂`.

### Examples

- For a finite-image irreducible `ρ`, `ρ̂` factors through the finite group of automorphisms of the
  cover defined by `ker ρ` up to the stabilizer.
- On `Σ_{1,1}`, a character with values in `μ_N` is MCG-finite by §2.1 and torsion by §3.3.

### Dependencies

Layers 0–2; Mathlib `Representation.IsIrreducible`; Tau Ceti `TauCeti.socle`,
`TauCeti.isSemisimpleModule_socle`, `TauCeti.IsProjectiveRep.toPGL`; SchemeAndStackFoundations
§4.15.

## Layer 4: linear lifting and relative structure

This layer kills finite cohomological obstructions by pointed dominant étale refinement, lifts the
projective extension to an actual representation with the fibre prescribed, realizes irreducible
MCG-finite representations on versal families, proves the normal-restriction lemma for arbitrary
groups, and decomposes Artinian local systems whose fibre restriction is a constant deformation of
a unitary one.

### 4.1 Pointed étale killing of finite obstruction classes

Let `M` be a smooth connected complex variety, `m ∈ M`, `μ` a finite abelian group with trivial
action, `i > 0` and `α ∈ H^i(π₁(M, m), μ)`. Prove that there are a smooth connected complex variety
`M′`, a point `m′` and a dominant étale map `f : (M′, m′) → (M, m)` with `f^*α = 0` in
`H^i(π₁(M′, m′), μ)`; `f` need not be finite or surjective, but its image contains `m`
(Landesman–Litt, Lemma 2.3.3, p. 16, in the pointed form of the authors' erratum). Map `α` to
`H^i_ét(M, μ)`; a positive-degree class of a sheaf on a site restricts to zero on some covering, so
it vanishes on a pointed étale neighbourhood of `m`, whose component through the base point is
dominant because `M` is irreducible; refine to an Artin neighbourhood of the base point, a
`K(π, 1)`, on which group, singular and étale cohomology with coefficients in `μ` agree. *Needs:*
InverseGaloisAndArithmeticFundamentalGroups §IG.3.1 (*Artin neighbourhoods are `K(π, 1)`*, with its
comparison chain); ComplexComparisonPartII §C6.3 (`artinComparison`); SchemeAndStackFoundations
§§2.1–2.2.

**Checks.**

- `M = 𝔾_m`, `i = 1`, `μ = ℤ/2`, `α` the nontrivial class: the squaring map pointed at `1` is finite
  étale and kills `α`.
- The base point must survive: a neighbourhood of the generic point need not contain `m`, and the
  fibre over `m` carries the prescribed representation of §4.2.

### 4.2 Fibre-prescribed linear lifting

Let `g ≥ 1`, let `ρ` be an irreducible MCG-finite representation of rank `r ≥ 1` with finite
determinant `D = det ρ(N)` (§3.3), and let `ρ̂` be its projective extension realized on a versal
family (§3.4). Prove that after a connected pointed dominant étale base change `ρ̂` lifts to an
actual representation of the total-space group into `G_D` (§1.2) whose restriction to the based
fibre is `ρ` itself, not `ρ ⊗ χ` for a finite character `χ` (Landesman–Litt, Proposition 2.3.4,
pp. 16–18, and Corollary 2.3.5, p. 18). The obstruction `o_D(ρ̂)` restricts to zero on the fibre
group; by §1.1 first kill its image in `H¹(Q, H¹(N, μ_D))`, after making the finite module constant
by a finite étale cover, and only then kill the resulting inflated class in `H²(Q, μ_D)`; finally
the mismatch character `χ` of §1.2 is invariant, and killing its transgression lets one twist the
lift to restrict to `ρ`. Every killing uses the pointed §4.1. *Needs:* §§1.1, 1.2, 3.3, 3.4, 4.1;
Mathlib `groupCohomology.H1InfRes_exact`.

**Checks.**

- `r = 1`: the projective extension is trivial and the lift is the finite character extended to
  the total space after killing its transgression.
- The restriction to the based fibre is `ρ`, not a twist `ρ ⊗ χ` by a finite character.

### 4.3 Linear versal realization

Prove that every irreducible MCG-finite representation of `π₁(Σ_{g,n})` of rank `r ≥ 1`, with
`g ≥ 1` and `2g − 2 + n > 0`, is the fibre restriction of a finite-determinant local system on a
punctured étale-versal family with smooth quasi-projective base, and that every further connected
pointed dominant étale restriction preserves this realization (Landesman–Litt, Corollary 2.3.5,
p. 18). *Needs:* §§2.2, 4.2; SchemeAndStackFoundations §4.15.

**Checks.**

- For finite-image irreducible `ρ` the realization can be taken on the finite cover of a
  level-chart universal family defined by `ker ρ`.
- The determinant of the realization has finite order, as §4.4 requires.

### 4.4 Irreducible normal restriction

For an arbitrary group `G`, a normal subgroup `N` and `ρ : G → GL_r(ℂ)` with finite determinant
whose restriction to `N` is irreducible, prove: if `ρ(N)` is finite then `ρ(G)` is finite, and if
`ρ|_N` is unitary then `ρ` is unitary. No finiteness of `G` or of `G/N` is assumed (Landesman–Litt,
Lemma 2.4.1, p. 19). For the first part, the kernel of the conjugation action of `G` on the finite
group `ρ(N)` has finite index and centralizes an irreducible representation, hence acts by scalars,
which finite determinant bounds; for the second, an `N`-invariant positive Hermitian form is unique
up to a positive scalar, `G` transports it to a multiple, and finite determinant forces the multiple
to be one. *Needs:* Mathlib `Representation.IsIrreducible`; Tau Ceti
`TauCeti.ContRepresentation.IsUnitary.isSemisimpleRepresentation`.

**Checks.**

- The finite-determinant hypothesis is needed in both parts: for `G = N × ℤ` and
  `ρ(n, k) = 2^k σ(n)` with `σ` irreducible, unitary and of finite image, `ρ|_N` is finite,
  unitary and irreducible while `ρ` has infinite non-unitary image.
- `N = G`: both statements are tautologies.
- The first part uses only Schur's lemma and the finite-index kernel of the conjugation action, not
  Burnside's theorem on groups of finite exponent.

### 4.5 The relative unitary decomposition over Artinian coefficients

Let `A ∈ Art` and `V` a local system of finite free `A`-modules on the total space of a punctured
étale-versal family with `g ≥ 1`, whose restriction to a chosen fibre is isomorphic over `A` to
`U ⊗_ℂ A` with `U` unitary. Prove that after connected dominant étale base change
`V ≅ ⊕ᵢ Uᵢ ⊗_ℂ π°^* Wᵢ`, where the `Uᵢ` are unitary complex local systems on the total space with
finite-order determinant and pairwise nonisomorphic irreducible fibre restrictions and
`Wᵢ = π°_* Hom(Uᵢ, V)` are local systems of finite free `A`-modules on `M` (Landesman–Litt,
Lemma 2.4.2, pp. 19–20, with `g ≥ 1` as in the authors' erratum). This is a fibre-constant
decomposition, not a unitary reduction modulo `m_A`. Extend the irreducible constituents of `U` by
§4.3, make them unitary on the total space by §4.4, and use Schur's lemma and fibrewise evaluation
for the freeness of `Wᵢ` and the isomorphism. *Needs:* §§4.3, 4.4; Tau Ceti
`TauCeti.LocalCoefficientSystem`, `TauCeti.LocalCoefficientSystem.pullback`,
`TauCeti.ContRepresentation.IsUnitary.isSemisimpleRepresentation`; ComplexComparisonPartII §C6.1
(*gap:local-system-direct-images* for `π°_*` of local systems of `A`-modules).

- The sum of the evaluation maps `Uᵢ ⊗ π°^* Wᵢ → V` is an isomorphism, and `Wᵢ` carries its actual
  induced `A`-monodromy.
- The decomposition commutes with further dominant étale pullback and with change of Artinian
  coefficients.
- On the fibre, `V|_{C°} ≅ ⊕ᵢ Uᵢ|_{C°} ⊗ (Wᵢ)_m` with the `Uᵢ|_{C°}` irreducible and pairwise
  nonisomorphic.

**Checks.**

- `A = ℂ` and `V` unitary on the total space with irreducible fibre restriction: one summand,
  `U₁ = V` and `W₁` trivial of rank one.
- `V = 0`: the index set is empty and the evaluation map is the unique isomorphism `0 → 0`.
- `V = π°^* W` with `W` a nonconstant rank-one `A`-local system on `M`: `W₁ = W`, not a constant
  multiplicity module; and for `A = ℂ[ε]/ε²` a non-constant first-order deformation of a unitary
  fibre admits no decomposition with constant fibres, so the fibre hypothesis cannot be weakened to
  unitarity modulo `m_A`.

### Examples

- For `ρ` the character of §3.3 of order `N`, §4.3 realizes it on the `μ_N`-cover of a level-chart
  family obtained by extracting an `N`-th root along the total space.
- For a finite étale Galois `H`-cover `f : X° → C°`, §4.5 with `A = ℂ` decomposes `f_* ℂ` as
  `⊕_σ U_σ ⊗ π°^* W_σ`, the decomposition used in Layer 6.

### Dependencies

Layers 1–3; InverseGaloisAndArithmeticFundamentalGroups §IG.3.1; ComplexComparisonPartII §§C6.1,
C6.3; SchemeAndStackFoundations §§2.1–2.2, 4.15; Mathlib `Representation.IsIrreducible`,
`groupCohomology.H1InfRes_exact`; Tau Ceti `TauCeti.LocalCoefficientSystem`,
`TauCeti.ContRepresentation.IsUnitary.isSemisimpleRepresentation`.

## Layer 5: Hodge theory of local systems on families of punctured curves

This layer states the Hodge-theoretic results the finiteness theorem rests on: polarizable complex
variations of Hodge structure and the notions of geometric origin and integral PVHS, semistability
of parabolic Deligne extensions, isomonodromic deformations and their semistability, the mixed
Hodge structure on the cohomology of unitary local systems in families, the derivative of its
period map, the rank bound for sub-local systems and its Artinian vanishing form, nonabelian Hodge
theory, cohomological rigidity, integrality of rigid local systems, and unitarity of low-rank
variations on analytically general curves. Throughout, `π : C → M` is a punctured étale-versal
`(g, n)`-family (§2.2), `D ⊂ C` the union of the sections and `π° : C° → M`.

### 5.1 Polarizable complex variations of Hodge structure

On a complex manifold `X`, a *complex variation of Hodge structure* is a `C^∞` complex vector
bundle `𝒱 = ⊕_{p,q} 𝒱^{p,q}` with a flat connection `D` satisfying Griffiths transversality
`D(𝒱^{p,q}) ⊂ A^{1,0}(𝒱^{p,q}) ⊕ A^{0,1}(𝒱^{p,q}) ⊕ A^{1,0}(𝒱^{p−1,q+1}) ⊕ A^{0,1}(𝒱^{p+1,q−1})`; a
*polarization* is a flat Hermitian form `ψ` for which the `𝒱^{p,q}` are orthogonal and `(−1)^p ψ`
is positive definite on `𝒱^{p,q}`. A local system *underlies* a polarizable complex variation
(complex PVHS) when it is `ker D` for one (Landesman–Litt 2022, Definition 4.1.1, p. 26). A local
system on a smooth complex variety `X` is *of geometric origin* when on a dense Zariski open
`U ⊂ X` it is a subquotient of `R^i f_* ℂ` for a smooth proper morphism `f : Y → U` and some
`i ≥ 0` (Landesman–Litt, p. 45; Landesman–Litt 2022, p. 3, with direct summands, equivalent by
semisimplicity). For a number field `K`, an *integral PVHS* is a local system `V` of finite free
`O_K`-modules such that `V ⊗_{O_K, ι} ℂ` underlies a complex PVHS for every embedding
`ι : O_K → ℂ` (the reading of Landesman–Litt, Corollary 9.1.4(4) fixed by Landesman–Litt 2022,
Theorem 1.2.5). A representation into `G(ℂ)`, for `G = GL_r` or `PGL_r` over `ℤ`, is *integral*
when it is conjugate into `G(O_K)` for some number field `K` (Landesman–Litt, Definition 8.3.1).
*Needs:* Completed/HodgeStructures (polarized Hodge structures fibrewise); ComplexKahlerGeometry K4;
ComplexComparisonPartII §C5.2 (`relativeBettiLocalSystem`).

- The local system underlying a complex PVHS on a smooth quasi-projective curve is semisimple, and
  decomposes canonically as `⊕ᵢ Lᵢ ⊗ Wᵢ` with the `Lᵢ` pairwise nonisomorphic irreducible local
  systems underlying complex PVHS and the `Wᵢ` polarized Hodge structures (Landesman–Litt 2022,
  Proposition 4.1.4(1)–(2)).
- A unitary local system underlies a complex PVHS concentrated in one bidegree, with the invariant
  positive Hermitian form as polarization; conversely a variation in one bidegree is unitary.
- Complex PVHS are stable under pullback, tensor product, dual and direct sum, and under
  conjugation of coefficients by an automorphism of `ℂ` when the local system has a model over a
  number field whose conjugates all underlie variations.
- A local system with finite monodromy is of geometric origin, as a summand of the push-forward of
  the constant sheaf along the finite étale cover it defines; a local system of geometric origin
  underlies an integral PVHS (Landesman–Litt 2022, proof of Corollary 1.2.7).

**Checks.**

- A rank-one complex PVHS has a single bidegree and is therefore unitary.
- On a closed curve of genus `≥ 2` the uniformizing representation underlies a rank-two complex PVHS
  of infinite monodromy (Landesman–Litt 2022, Remark 1.2.6); it is not integral, so the integrality
  condition is not automatic.
- A non-real character of finite order `ℤ/3 → ℂ^×` is an integral PVHS over `ℤ[ζ₃]` but preserves
  no rank-one `ℤ`-lattice; a reading of "integral" as an invariant `ℤ`-lattice would exclude this
  finite-image system.

### 5.2 Parabolic Deligne extensions and semistability

For a flat bundle `(E, ∇)` with regular singularities on a smooth projective curve `C` along a
reduced divisor `D`, let `(E⋆, ∇)` be the canonical logarithmic extension of ComplexComparisonPartII
§C5.6 (`CanonicalLogExtension`, residue eigenvalues with real parts in `[0, 1)`; Deligne 1970,
Remarques 5.5(i)) with the parabolic
structure given by the residues (Landesman–Litt 2022, §3.3); parabolic degree and parabolic
semistability are those of Landesman–Litt, §5.2.1, p. 30. Prove:

- for a unitary local system on `C ∖ D` the parabolic Deligne extension is parabolically polystable
  of parabolic degree zero (Mehta–Seshadri, Theorem 4.1; Simpson 1990, Theorem 5; Landesman–Litt,
  Remark 5.2.2);
- for a complex PVHS on `C ∖ D` the parabolic Deligne extension has parabolic degree zero and the
  associated parabolic Higgs bundle is parabolically polystable of degree zero (Landesman–Litt 2022,
  Proposition 4.1.4(3)–(5));
- if the parabolic Deligne extension of a complex PVHS on a hyperbolic pointed curve is
  parabolically semistable, its monodromy is unitary (Landesman–Litt 2022, Lemma 7.1.1, p. 49).

*Needs:* §5.1; ComplexComparisonPartII §C5.6 (`CanonicalLogExtension`,
`CanonicalLogExtension.residueSpectrum`); ComplexKahlerGeometry K4–K5.

**Checks.**

- The trivial rank-one system has Deligne extension `O_C` with all weights zero, parabolic degree
  zero, and is semistable.
- On `ℙ¹ ∖ {0, ∞}` the unitary character with monodromy `exp(−2πi a)` around `0`, `0 < a < 1`,
  has canonical extension of degree `−1` (minus the sum of the residues) with residues `a` at `0`
  and `1 − a` at `∞`, so parabolic degree `−1 + a + (1 − a) = 0`; a convention attaching weights
  `−a` would give a nonzero parabolic degree.
- The uniformizing PVHS of §5.1 has Hodge line of positive degree `g − 1` in its Deligne extension,
  which destabilizes it, consistent with the third item since its monodromy is not unitary.

### 5.3 Isomonodromic deformations and their semistability

For a hyperbolic pointed curve `(C, x₁, …, x_n)` and a flat bundle `(E, ∇)` with regular
singularities at the `xᵢ`, the *isomonodromic deformation* over the universal cover `T(g, n)` of
`M_{g,n}^an` (§2.3) is the unique flat bundle with regular singularities along the sections of the
universal curve extending the local system of `(E, ∇)|_{C∖{xᵢ}}` and restricting to `(E, ∇)` on the
central fibre; its restriction to another fibre is an isomonodromic deformation to a nearby curve
(Landesman–Litt 2022, Definitions 3.4.3–3.4.4, p. 22). Prove that if `rk E < 2√(g + 1)` then for
every parabolic structure refined by the one of `∇`, the isomonodromic deformation to an
analytically general nearby curve is parabolically semistable (Landesman–Litt 2022, Theorem 6.1.1
and Corollary 6.1.2, pp. 34–35). Its main input is the parabolic Clifford bound: for a
parabolically semistable `E⋆` on a genus-`g` curve and a subbundle `U ⊂ Ê₀` with
`c = rk E − rk U` and `δ = h⁰(Ê₀) − h⁰(U)`, slope `> 2g − 2 + n` forces `rk E > gc − δ` and slope
`= 2g − 2 + n` forces `rk E ≥ gc − δ` (Landesman–Litt 2022, Proposition 6.3.6; Landesman–Litt,
Proposition 5.2.4). Here *analytically general* means off a nowhere dense closed analytic subset,
and *analytically very general* off a locally countable union of such subsets (Landesman–Litt
2022, Definition 1.2.3, p. 2). *Needs:* §§2.3, 5.2; ComplexComparisonPartII §C5.6.

**Checks.**

- A unitary flat bundle has semistable parabolic Deligne extension on every curve (§5.2), so its
  isomonodromic deformations are semistable in every rank.
- The bound cannot be dropped: Landesman–Litt 2022, Theorem 1.3.2, gives, for `g ≥ 2`, flat bundles
  with semisimple monodromy on the fibres of `M_{g,1} → M_g` whose isomonodromic deformations are
  never semistable.
- For `g = 0` the bound `rk E < 2` allows only rank one, where semistability is automatic.

### 5.4 The mixed Hodge structure on the cohomology of a unitary local system

Let `V` be a unitary local system on `C°` with a real structure `V_ℝ` (an orthogonal local system with
`V ≅ V_ℝ ⊗ ℂ`; `V ⊕ V^∨` always has one). Prove that `R¹π°_* V_ℝ` underlies an admissible
graded-polarizable real variation of mixed Hodge structure on `M` with weights in `[1, 2]`,
`W₁ = R¹π_* j_* V_ℝ`, and Hodge filtration
`F¹ = im(π_*(E ⊗ Ω¹_{C/M}(log D)) → R¹π°_* V ⊗ O_M)`, where `(E, ∇)` is the canonical logarithmic
extension and `R¹π°_* V ⊗ O_M ≅ R¹π_*(E → E ⊗ Ω¹_{C/M}(log D))`; and that
`H_V = R¹π°_* V ⊗ O_M` splits as `H^{1,0} ⊕ H^{0,1} ⊕ H^{1,1}` with `H^{i,j}_V = H^{j,i}_{V^∨}`
(Landesman–Litt, Theorem 4.1.1 and Lemma 4.1.2, pp. 24–25; Timmerscheidt, Theorem 7.1;
Schnell, Theorem 21.1, Sch19 line 1493). Prove the theorem of the fixed part: for an admissible
graded-polarizable real variation `W` on a smooth quasi-projective variety, `H⁰(X, W)` carries a
real mixed Hodge structure making `H⁰(X, W) ⊗ ℝ → W` a morphism of variations
(Steenbrink–Zucker, 4.19; Peters–Steenbrink, Theorem 14.52); and its variant: if `L` is an
irreducible complex local system with `Hom(L, W_ℂ) ≠ 0`, then `L̃` (`L` if it has a real structure,
`L ⊕ L̄` otherwise) underlies a polarizable real variation and there is a nonzero map of variations
`Q ⊗ L̃ → W` from a nonzero constant real mixed Hodge structure `Q` (Landesman–Litt,
Proposition 4.2.2, p. 26). *Needs:* §§5.1–5.2; ComplexComparisonPartII §§C5.2, C5.6;
Completed/HodgeStructures (mixed Hodge structures); gap:local-system-direct-images.

**Checks.**

- For `V` trivial of rank one and `n = 0`, `R¹π_* ℝ` is the weight-one variation of the family,
  pure, with `H^{1,1} = 0`.
- For `V` trivial and `n ≥ 2`, `W₂/W₁` has rank `n − 1`, generated by the residues at the
  punctures, of type `(1, 1)`.
- For a nontrivial unitary character with nontrivial local monodromy at every puncture,
  `j_* V = j_! V` and the weight filtration has `W₁ = W₂`.

### 5.5 The derivative of the period map

In the setting of §5.4 over a contractible base, let `P : B → Gr(rk F¹, rk H)` be the period map of
`F¹ ⊂ H` and `∇̄ : F¹ → (H/F¹) ⊗ Ω¹_B` the map induced by the Gauss–Manin connection. Prove that at
`b ∈ B`, with `C = C_b`, `E = E|_C` and Serre duality, the dual of the derivative is the composite
`H⁰(E ⊗ ω_C(D)) ⊗ H⁰(E^∨ ⊗ ω_C) → H⁰(E ⊗ E^∨ ⊗ ω_C^{⊗2}(D)) → H⁰(ω_C^{⊗2}(D)) → Ω¹_{B,b}` of
multiplication, the trace and the codifferential of the classifying map, and that it is adjoint to
`∇̄_b` (Landesman–Litt, Theorem 5.1.6, p. 29, proved in Appendix A). Prove the rank lemma: for a
semistable parabolic bundle `E⋆` of parabolic degree zero and nonzero `v ∈ H⁰(E ⊗ ω_C(D))`, if
`u ↦ tr(v ⊗ u)` has rank `ρ` on `H⁰(E^∨ ⊗ ω_C)`, then `rk E ≥ g − ρ` (Landesman–Litt,
Proposition 5.2.3, p. 31, by §5.3's parabolic Clifford bound with `c = 1`, `δ = ρ`). *Needs:*
§§5.2–5.4; ComplexKahlerGeometry K5 (Serre duality); ComplexCurveModuli D3.4 (Kodaira–Spencer map).

**Checks.**

- For `V` trivial of rank one and `n = 0` this is the classical identification of the derivative
  of the period map of curves with the multiplication `H⁰(ω) ⊗ H⁰(ω) → H⁰(ω^{⊗2})`.
- For `g = 0` the rank lemma is empty, `g − ρ ≤ 0`.
- For `E = O_C` and `v` a nonzero holomorphic differential on a non-hyperelliptic curve of genus
  `g ≥ 3`, multiplication by `v` on `H⁰(ω_C)` is injective of rank `g`, consistent with
  `rk E = 1 ≥ g − g`.

### 5.6 The rank bound for sub-local systems

Prove that for a punctured étale-versal family and a unitary local system `V` on `C°`, every
nonzero sub-local system of `R¹π°_* V` has rank at least `2g − 2 rk V` (Landesman–Litt,
Theorem 1.7.1, p. 6, proved in §6.1, pp. 32–33). A nonzero irreducible sub-local system `L`
underlies a variation by §5.4, and after possibly replacing `V` and `L` by their complex conjugates
there is a nonzero `v ∈ L_m ∩ F¹H_m` with `∇̄_m(v)` of rank at most `rk L / 2`
(Landesman–Litt, Lemma 6.1.1); §5.5 then gives `rk V ≥ g − rk L / 2`. In particular
`H⁰(M, R¹π°_* V) = 0` when `g > rk V`. *Needs:* §§2.2, 5.2, 5.4, 5.5;
gap:local-system-direct-images.

**Checks.**

- For `g ≤ rk V` the bound `2g − 2 rk V ≤ 0` is empty.
- For `g = 3` and `V` trivial of rank one, every nonzero sub-local system of `R¹π°_* ℂ` has rank at
  least `4`; for `n = 0` the whole `R¹π_* ℂ` has rank `6` and the symplectic monodromy is
  irreducible, consistent with the bound.
- The bound concerns sub-local systems, not subquotients: for `n ≥ 2` the trivial quotient
  `W₂/W₁` of rank `n − 1` can have rank below `2g − 2`.

### 5.7 Artinian vanishing

Prove that for a punctured étale-versal family, a point `m` with fibre `C°_m`, `A ∈ Art` and a
local system `V` of finite free `A`-modules on `C°` such that `V|_{C°_m} ≅ V₀ ⊗ A` with `V₀` unitary
and `rk_A V < g`, one has `H⁰(M, R¹π°_* V) = 0` (Landesman–Litt, Theorem 6.2.1, p. 34). After
dominant base change §4.5 writes `V ≅ ⊕ Uᵢ ⊗ π°^* Wᵢ`; the `m_A`-adic filtration reduces to
`A = ℂ`, and a nonzero section of `R¹π°_* U ⊗ W` gives a map `W^∨ → R¹π°_* U`, so §5.6 forces
`rk W + 2 rk U ≥ 2g`, hence `rk U · rk W ≥ g`. *Needs:* §§4.5, 5.6;
gap:local-system-direct-images.

**Checks.**

- For `A = ℂ` and `V` unitary this is the case `g > rk V` of §5.6.
- `V = 0` has rank zero and `H⁰ = 0`.
- The fibre hypothesis is needed: for `V = π°^* W` with `W` a nontrivial local system on `M` the
  fibre restriction is trivial, hence unitary, and `R¹π°_* V = R¹π°_* ℂ ⊗ W`; the conclusion
  is then §5.6 for `ℂ`, which needs `g > rk W`.

### 5.8 Nonabelian Hodge theory: deformation to variations and rigid systems

Let `X` be a smooth projective variety, `Z ⊂ X` a strict normal crossings divisor and
`X° = X ∖ Z`. Prove that every representation `ρ : π₁(X°) → GL_r(ℂ)` with finite determinant lies in
the same connected component of the representation scheme `R_r(π₁(X°))_{det ρ}` (§1.4) as a
representation underlying a complex PVHS (Landesman–Litt, Theorem 4.3.1, p. 27; Mochizuki,
Theorem 10.5, Moc06 line 4707): one route deforms `ρ` to its semisimplification, takes a tame
pure imaginary harmonic bundle, flows its Higgs field by `t → 0` in the Betti quotient, and lifts
the limit to the same component by §1.4. Prove also that a semisimple `ρ` with finite determinant and
`H¹(X°, ad ρ) = 0` itself underlies a complex PVHS (Landesman–Litt, Lemma 4.3.2, p. 27; Mochizuki,
Lemma 10.13, Moc06 line 4821). *Needs:* §§1.4, 5.1; ComplexComparisonPartII §C5.6;
ComplexKahlerGeometry K4–K5; ArithmeticGaloisRepresentations §1.11.

**Checks.**

- A unitary `ρ` already underlies a complex PVHS (§5.1), and the deformation may be constant.
- For `X°` a curve of genus `≥ 2` and `ρ` the uniformizing representation lifted to `SL₂`, `ρ`
  underlies a PVHS and is rigid in the sense of the second statement only if `H¹(X°, ad ρ) = 0`,
  which fails since `dim H¹(ad ρ) = 6g − 6`: the second statement does not apply, the first does.
- In rank one the deformation within fixed determinant is constant, since the representation
  scheme with fixed determinant is a point.

### 5.9 Cohomological rigidity and rigidity on versal families

For `X°` as in §5.8, a reductive group `G` over `ℂ` and `ρ : π₁(X°) → G(ℂ)` with quasi-unipotent
local monodromy at infinity, `ρ` is *cohomologically rigid* if `H¹(X, j_{!*} ad ρ) = 0` and *strongly
cohomologically rigid* if `H¹(X°, ad ρ) = 0`; the first notion is defined only under
quasi-unipotent local monodromy (Landesman–Litt, Definitions 8.1.1 and 8.1.4, pp. 38–39; Klevdal–
Patrikis, Definition 1.1). Prove that strong rigidity implies rigidity once local monodromy is
quasi-unipotent (Landesman–Litt, Lemma 8.1.3, p. 39), and that both are preserved by conjugating
the coefficients by an automorphism of `ℂ`. Prove: for a punctured étale-versal family and a
`GL_r` (respectively `PGL_r`) local system `V` on `C°` with `r < √(g + 1)` whose restriction to a
fibre is (respectively is the projectivization of) an irreducible unitary local system, `V` is
strongly cohomologically rigid (Landesman–Litt, Proposition 8.2.1, p. 39): by the Leray sequence it
suffices that `H⁰(M, R¹π°_* ad V) = 0`, which is §5.7 with `A = ℂ` since `rk ad V = r² − 1 < g`, and
`π°_* ad V = 0` by Schur's lemma. *Needs:* §§2.2, 5.7; SchemeAndStackFoundations §2.2
(`leray_spectral_sequence`); gap:local-system-direct-images.

**Checks.**

- `r = 1`: `ad V = 0` and every rank-one system is strongly rigid, while the `PGL₁` statement is
  empty.
- The order of steps matters: rigidity in the sense of `j_{!*}` is meaningful only after
  quasi-unipotence of local monodromy is known (Layer 7).
- For `V` with reducible fibre restriction, `π°_* ad V ≠ 0` (the fibre has nonscalar
  endomorphisms), and the proof gives nothing.

### 5.10 Integrality of rigid local systems

Prove: let `X°` be a connected smooth quasi-projective complex variety, `G` a split connected
reductive group over `ℤ`, and `ρ : π₁(X°) → G(ℂ)` `G`-irreducible and `G`-cohomologically rigid,
with quasi-unipotent local monodromy and finite image in the maximal abelian quotient of `G`; then
the identity component of the Zariski closure of the image is semisimple and `ρ` is
`G(ℂ)`-conjugate into `G(O_L)` for a number field `L` (Klevdal–Patrikis, Theorem 1.2, KP20 line 62;
Esnault–Groechenig, Theorem 1.1, for `G = GL_n`). One route, that of Esnault–Groechenig and
Klevdal–Patrikis, spreads `ρ` out over a ring of `S`-integers, specializes to finite fields and
checks integrality at each place of `S` through Drinfeld and Lafforgue's companion
`λ`-adic systems; the function-field inputs of that route are part of this target. *Needs:* §5.9;
ArithmeticGaloisRepresentations §1.11; SchemeAndStackFoundations Layer 0.

**Checks.**

- `G = GL₁`: a rank-one system with finite determinant has finite image and is integral over a
  cyclotomic ring.
- For `G = PGL_r` the abelianization condition is vacuous, since `PGL_r` has trivial maximal abelian
  quotient.
- The hypotheses cannot all be dropped: on `𝔾_m` the character with monodromy `2` is
  `GL₁`-irreducible and rigid (the derived Lie algebra of `GL₁` is zero) but violates both
  quasi-unipotence and the finite-abelianization condition, and it is not integral since `1/2` is
  not an algebraic integer.

### 5.11 Unitarity of low-rank variations on analytically general curves

Prove: for an `n`-pointed hyperbolic curve of genus `g` and a flat bundle `(E, ∇)` with regular
singularities and `rk E < 2√(g + 1)`, if an isomonodromic deformation of `(E, ∇)` to an analytically
general nearby curve underlies a complex PVHS, then `(E, ∇)` has unitary monodromy (Landesman–Litt
2022, Theorem 1.2.12, pp. 4–5, by §§5.2–5.3). Prove that a representation `Γ → GL_m(O_K)` which is
unitary at every complex embedding of `K` has finite image, since its image is discrete in a
compact group (Landesman–Litt 2022, Lemma 7.2.1, p. 51). Deduce: on an analytically very general
hyperbolic pointed curve of genus `g`, an `O_K`-local system with infinite monodromy all of whose
complex conjugates underlie complex PVHS has rank at least `2√(g + 1)` (Landesman–Litt 2022,
Theorem 1.2.5, p. 3), and a local system of geometric origin with infinite monodromy has dimension at
least `2√(g + 1)` (Landesman–Litt 2022, Corollary 1.2.7, p. 3). *Needs:* §§2.3, 5.1–5.3.

**Checks.**

- A unitary flat bundle satisfies the conclusion trivially; the content is for non-unitary
  variations.
- Unitarity at one embedding is not enough: the Salem polynomial `x⁴ − x³ − x² − x + 1` has two
  real roots `λ ≈ 1.722`, `λ⁻¹` and two roots on the unit circle (with `y = x + 1/x` it becomes
  `y² − y − 3 = 0`, whose roots are about `2.30` and `−1.30`); the character `ℤ → O_K^×`, `1 ↦ λ`,
  for `K = ℚ(λ)` is integral, unitary at the two complex embeddings and of infinite image, and is not
  unitary at the real embeddings.
- `g = 0`: the bound `2√1 = 2` forces rank one, where variations are unitary.

### Examples

- For the universal curve over a level cover of `M_{g,1}` and `V` trivial of rank one, §5.6 says
  that `R¹π_* ℂ`, the standard symplectic local system of rank `2g`, has no nonzero sub-local
  system of rank below `2g − 2`.
- For `ρ` an irreducible unitary MCG-finite representation of rank `r` with `r² < g + 1`, realized
  on a versal family by §4.3, §5.9 makes the realization strongly rigid, §5.8 makes every
  `Aut(ℂ)`-conjugate a PVHS, and §5.11 makes it unitary: the chain of Layer 7.

### Dependencies

Layers 1–2 and 4; ComplexComparisonPartII §§C5.2, C5.6 and gap:local-system-direct-images;
Completed/HodgeStructures; ComplexKahlerGeometry K4–K5; ComplexCurveModuli D3.4;
ArithmeticGaloisRepresentations §1.11; SchemeAndStackFoundations §2.2.

## Layer 6: higher Prym representations and the Putman–Wieland property

This layer defines the action of the stabilizer of a finite quotient of a surface group on the
cohomology of the open cover and the homology of the compactified cover, proves the higher Prym
rank bound from Layer 5, and deduces the Putman–Wieland property for groups all of whose
irreducible representations have dimension `< g`, in particular for groups of order `< g²`.

### 6.1 Higher Prym actions

Let `φ : π₁(Σ_{g,b,p}, v₀) → H` be a surjection onto a finite group, `K = ker φ`, and
`Σ_{g′,b′,p′} → Σ_{g,b,p}` the corresponding Galois cover with compactification `Σ_{g′}`. Let
`Γ ⊂ PMod(g, b, p + 1)` be the finite-index subgroup of classes `γ` with `φ ∘ γ = c_h ∘ φ` for some
`h ∈ H` (preservation of `φ` up to conjugacy in `H`). Then `Γ` preserves `K` and acts on
`H¹(Σ_{g′,b′,p′}, ℂ) = Hom(K, ℂ)` by inverse pullback, on `H₁(Σ_{g′,b′,p′}, ℂ) = K^{ab} ⊗ ℂ`, and, by
filling the punctures and boundary of the cover, on `V_K = H₁(Σ_{g′}, ℂ)`, the higher Prym
representation; it normalizes the deck action of `H` up to inner automorphisms, so it preserves the
`σ`-isotypic subspaces `σ ⊗ Hom_H(σ, −)` of each (Landesman–Litt, Notation 7.1.1, p. 35). In the
algebraic presentation of §0.2, define `prymStabilizer φ` for `φ : surfaceGroup g n → H` as the
elements of `pureMappingClassAut g n` with `φ ∘ γ = c_h ∘ φ` for some `h`, and
`compactPrymCohomology φ` as the subspace of `Hom(ker φ, ℂ)` of homomorphisms vanishing on every
element of `ker φ` conjugate in the surface group to a power of a peripheral loop; it is
`H¹(Σ_{g′}, ℂ)`, since those elements are exactly the powers of the loops around the punctures of the
cover. The image of `Γ` in `Aut(π₁)` lies in `prymStabilizer φ` for `n = b + p` (§§0.2, 0.6).
*Needs:* §§0.1–0.6; AlgebraicTopology Stages 2, 5 and 6; Mathlib `isotypicComponent`; Tau Ceti
`TauCeti.LocalCoefficientSystem`.

- Restricting to a finite-index `Γ′ ⊂ Γ` preserves all actions and isotypic subspaces.
- The isotypic subspace is the image of `σ ⊗ Hom_H(σ, V)` under evaluation, not the multiplicity
  space alone.
- Open-to-compact homology and compact-to-open cohomology maps are equivariant for the chosen
  actions; compact Poincaré duality identifies `H¹(Σ_{g′}, ℂ)` with `H₁(Σ_{g′}, ℂ)` equivariantly
  for orientation-preserving classes, carrying the `σ`-component of one to the `σ`-component of
  the other after dualizing `σ` to `σ^∨`.
- `compactPrymCohomology φ` is a `ℂ`-subspace of `Hom(ker φ, ℂ)` stable under `prymStabilizer φ`.

**Checks.**

- `H = 1`: `V_K = H₁(Σ_g, ℂ)` has dimension `2g`, and for `b = p = 0` the action of `PMod(g, 1)`
  is the symplectic action of `Mod(g)` pulled back along the forgetful map.
- The identity cover of the thrice-punctured sphere has open `H¹` of dimension two and compact
  `H₁` of dimension zero, so the two carriers must differ.
- If `V = σ ⊕ σ`, its `σ`-isotypic subspace has dimension `2 dim σ` while `Hom_H(σ, V)` has
  dimension two.

### 6.2 The Putman–Wieland property

For a finite group `H` and `g, b, p ≥ 0`, `PW(H, g, b, p)` asserts that for every surjection
`φ : π₁(Σ_{g,b,p}, v₀) → H` every nonzero vector of `V_K` has infinite orbit under `Γ`
(Landesman–Litt, Definition 7.1.2, p. 35). Prove that it is equivalent to `V_K^{Γ′} = 0` for every
`φ` and every finite-index `Γ′ ⊂ Γ`, that it holds vacuously when no surjection exists, and that
the `ℚ` and `ℂ` formulations agree by base change of the fixed-vector equations (Landesman–Litt,
Remark 7.1.4). *Needs:* §6.1.

**Checks.**

- If every compactified cover has genus zero, `V_K = 0` and the property holds.
- A single nonzero vector fixed by a finite-index `Γ′` gives a finite `Γ`-orbit and refutes the
  property.
- The property can fail: Marković's counterexample in genus two (Landesman–Litt, Remark 7.1.5).

### 6.3 Replacing boundary circles by punctures

Prove that shrinking boundary circles to punctures gives a `Γ′`-equivariant isomorphism
`H¹(Σ_{g′,b′,p′}, ℂ)_σ ≅ H¹(Σ_{g′,0,b′+p′}, ℂ)_σ` of covers of the same genus `g′`, and that for a
finite-index `Γ′ ⊂ Γ` its image `Γ″` in `PMod(g, 0, b + p + 1)` has finite index and the same
invariant subspaces (Landesman–Litt, Lemma 7.2.5, p. 36, where the target cover is printed with genus
`g`). Boundary twists act trivially on cohomology by §0.6. *Needs:* §§0.6, 6.1; AlgebraicTopology
Stage 2.

**Checks.**

- For `b = 0` the reduction is the identity.
- Both sides have genus `g′`; a target of genus `g` would have the wrong first Betti number.

### 6.4 Cover cohomology and family monodromy

For `b = 0`, `n = p` and `g ≥ 1`, prove: after dominant étale refinement of a versal family of
`φ`-covers `X° → C° → M` (InverseGaloisAndArithmeticFundamentalGroups §IG.5.4,
`VersalPhiFamily.chart`, `VersalPhiFamily.cover`, `VersalPhiFamily.monodromy`,
`VersalPhiFamily.withSection`), `f_* ℂ ≅ ⊕_σ U_σ ⊗ π°^* W_σ` with `U_σ` unitary of finite image and
rank `dim σ` and `W_σ` constant, by §4.5 with `A = ℂ` and §4.4; the action of `π₁(M)` on the stalk of
`R¹π°_* U_σ ⊗ W_σ` is identified with the action of its image in `Γ` on `H¹(Σ_{g′,0,p′}, ℂ)_σ`, with
the deck and dual conventions of §6.1; compact `H¹` injects equivariantly into open `H¹`, and
compact Poincaré duality transfers subspace bounds to compact `H₁` (Landesman–Litt, proof of
Theorem 7.2.1, pp. 37–38). Refining to a finite étale cover of the base with `π₁`-image in a given
finite-index `Γ′` makes the comparison `Γ′`-equivariant. *Needs:* §§4.4, 4.5, 6.1;
InverseGaloisAndArithmeticFundamentalGroups §IG.5.4; AlgebraicTopology Stage 6;
gap:local-system-direct-images.

**Checks.**

- `H = 1`: `f_* ℂ = ℂ`, and the identification is `R¹π°_* ℂ` with the open-surface `H¹`.
- Without refining to `Γ′`, only the action of the image of `π₁(M)` is controlled, which is why the
  base is refined to a finite étale cover with image in `Γ′`.

### 6.5 The higher Prym rank bound

Prove that for every finite quotient `φ` of `π₁(Σ_{g,b,p})`, every irreducible complex
`H`-module `σ` and every finite-index `Γ′ ⊂ Γ`, every nonzero `Γ′`-stable subspace of the
`σ`-isotypic component of `H¹(Σ_{g′,b′,p′}, ℂ)` has dimension at least `2g − 2 dim σ`, and the same
holds for the `σ`-isotypic component of `H₁(Σ_{g′}, ℂ)`. Nothing is asserted for subquotients of the
open cohomology, which need not be semisimple (Landesman–Litt, Theorem 7.2.1 and Remark 7.2.2,
p. 36). For `g ≤ 1` the bound is not positive; otherwise reduce to `b = 0` by §6.3, refine by §6.4,
and apply §5.6 to `U_σ`. *Needs:* §§5.6, 6.3, 6.4.

**Checks.**

- `g = 3`, `dim σ = 1`: every nonzero invariant subspace has dimension at least `4`.
- `H = 1`, `σ` trivial, `b = p = 0`: every nonzero `Γ′`-stable subspace of `H₁(Σ_g, ℂ)` has
  dimension at least `2g − 2`; the whole space has dimension `2g` and finite-index subgroups of
  `Sp_{2g}(ℤ)` act irreducibly, consistent with the bound.
- For `p ≥ 2` the trivial quotient of open `H¹` coming from the punctures has dimension `p − 1`,
  which may be below `2g − 2`: the restriction to subrepresentations is necessary.

### 6.6 Putman–Wieland for groups of small degree

Prove that if every irreducible complex representation of a finite group `H` has dimension `< g`,
then `PW(H, g, b, p)` holds for all `b, p ≥ 0`: a fixed vector of a finite-index `Γ′` projects to a
nonzero fixed line in some isotypic component, contradicting `2g − 2 dim σ ≥ 2` (Landesman–Litt,
Corollary 7.2.3, p. 36). *Needs:* §§6.2, 6.5; RepresentationTheory/CharacterTheory Layer 2.

**Checks.**

- For abelian `H` the hypothesis is `g ≥ 2`.
- For `H = S₃`, which has an irreducible of dimension two, the hypothesis requires `g ≥ 3`.

### 6.7 Putman–Wieland for groups of small order

Prove that for a finite group `H` with `#H < g²`, `PW(H, g, b, p)` holds for all `b, p ≥ 0`, since
`#H = Σ_σ (dim σ)²` forces `dim σ < g` (Landesman–Litt, Corollary 7.2.4 and Theorem 1.4.1, pp. 4
and 36; `TauCeti.sum_characterDegree_sq_eq_card`). In the algebraic form of the Lean file,
`putmanWieland_of_card_lt`: for all `g, n ≥ 0`, a finite group `H` with `#H < g²`, a surjection
`φ : surfaceGroup g n → H`, a subgroup `Γ′ ≤ prymStabilizer φ` of finite relative index and an
element of `compactPrymCohomology φ` fixed by `Γ′`, that element is zero. It follows from the
topological form: the image of `Γ` lies in `prymStabilizer φ` (§6.1), so `Γ′ ∩ Γ` has finite index
in `Γ`, and orientation-preserving Poincaré duality turns a fixed class into a fixed vector of
`V_K`. *Needs:* §§6.1, 6.6; Tau Ceti `TauCeti.sum_characterDegree_sq_eq_card`; AlgebraicTopology
Stage 6.

**Checks.**

- For cyclic `H` and `g ≥ 2`, §6.6 gives the property even when `#H ≥ g²`.
- `H = 1`, `g = 2`: `#H = 1 < 4` and the statement says no nonzero class of `H¹(Σ₂, ℂ)` is fixed by
  a finite-index subgroup of the automorphism group; the strict inequality is not extended to
  `#H = g²`.
- `g = 0` or `1`: `#H < g²` has no solution and the statement is vacuous.

### 6.8 Infinite orbits on small isotypic components

Prove that for an irreducible `H`-module `σ` with `dim σ < g`, every nonzero vector of the
`σ`-isotypic component of `H₁(Σ_{g′}, ℂ)` has infinite `Γ`-orbit, with no condition on the other
irreducibles of `H` (Landesman–Litt, Theorem 1.4.2, p. 5). *Needs:* §6.5.

**Checks.**

- For cyclic `H` and `g ≥ 2` every isotypic component satisfies the criterion, whatever `#H`.
- The hypothesis is `dim σ < g`: at `dim σ = g` the bound `2g − 2 dim σ = 0` gives nothing.

### Examples

- `H = ℤ/2`, `g ≥ 2`: no nonzero class in `H₁` of a connected double cover has finite orbit, by
  §6.7 since `2 < g²`.
- For the trivial cover (`H = 1`) and `g ≥ 2`, §6.7 recovers the absence of finite orbits of
  `Sp_{2g}(ℤ)` on nonzero vectors of `ℂ^{2g}`.

### Dependencies

Layers 0, 4 and 5; InverseGaloisAndArithmeticFundamentalGroups §IG.5.4; AlgebraicTopology Stages 2,
5 and 6; RepresentationTheory/CharacterTheory Layer 2; Mathlib `isotypicComponent`; Tau Ceti
`TauCeti.sum_characterDegree_sq_eq_card`; gap:local-system-direct-images.

## Layer 7: unitary rigidity, integrality and the unitary case

This layer proves quasi-unipotence of multitwists in finite-index subgroups of mapping class groups
and of boundary monodromy on good compactifications of versal total spaces, deduces projective and
linear integrality of irreducible unitary MCG-finite representations of low rank, unitarity of all
their Galois conjugates, and finite image in the unitary case.

### 7.1 Quasi-unipotence of multitwists in finite-index subgroups

Prove: let `S` be a connected oriented surface of finite type and genus `g ≥ 3`, `Γ ⊂ Mod(S)` of
finite index and `r ≥ 1`. There is `k = k(Γ, r) ≥ 1` such that for every `ρ : Γ → GL_r(ℂ)` and every
multitwist `μ ∈ Γ` about pairwise disjoint simple closed curves, `ρ(μ)^k` is unipotent
(Aramayona–Souto, Proposition 2.4 and Lemma 2.5, pp. 10–11; Landesman–Litt, Proposition 8.3.2,
p. 40). Since the twists commute it suffices to treat `T_γ^m ∈ Γ`. Cutting along `γ`, some
complementary component `Z` has genus `≥ 2` and a boundary circle `η` with `ι(T_η) = T_γ` under the
inclusion homomorphism. Induce `ρ ∘ ι` from the finite-index preimage of `Γ` to `PMod(Z)`
(`Representation.ind`); `ρ ∘ ι` is a direct summand of the restriction of the induced
representation (the identity double coset in Mackey's formula). `T_η` is central in `PMod(Z)`, so
its generalized eigenspaces are `PMod(Z)`-stable and the determinant on each is a character of
`PMod(Z)`, of order dividing `10` by §0.7; hence the eigenvalues of `ρ(T_γ^m)` are roots of unity
of bounded order. *Needs:* §§0.3, 0.6, 0.7; SurfaceTopology Layer 9 (`change_of_coordinates`);
Mathlib `Representation.ind`.

**Checks.**

- Under the symplectic representation of `Mod(Σ_g)`, `g ≥ 3`, every Dehn twist maps to a
  transvection (§0.3), which is unipotent: `k = 1` there.
- The genus bound is needed: `PMod(0, 4)` is free of rank two on two Dehn twists, and the
  character sending one of them to `2` is not quasi-unipotent.
- The restriction of an induced representation contains `ρ` as a summand but need not be a sum of
  copies of `ρ`: for `A₃ ⊂ S₃` and `ρ` a nontrivial character `ω`, the restriction of the induced
  representation is `ω ⊕ ω²`.

### 7.2 Boundary monodromy of versal total spaces

Let `C° → M_{g,n+1}` be finite étale with `C°` a scheme (for instance the universal punctured curve
over a level cover). Prove that there is a smooth projective compactification `C̄` with strict SNC
boundary, an isomorphism over `C°`, such that a small meridian around the generic point of every
boundary component, exceptional ones included, maps in `π₁(M_{g,n+1}) = PMod(g, n + 1)` to a
conjugate of a multitwist about pairwise disjoint simple closed curves with nonnegative exponents.
Construct `C̄` by blowing up boundary strata of `M̄_{g,n+1}` to a strict normal crossings
compactification `M̄′`, normalizing in the function field of `C°`, and taking a log resolution that
is an isomorphism over `C°` (Landesman–Litt, proof of Lemma 8.3.3, p. 40, with the compactification
paragraph replaced as in the authors' erratum, LL-P04 line 2848). The monodromy around a
boundary divisor of `M̄_{g,n+1}` is the Dehn twist about the vanishing cycle of the node, and the
inertia of the exceptional divisor over a boundary stratum is generated by the multitwist about the
curves of its dual graph (Li–Litt–Salter–Srinivasan, Lemma 2.1.1, LLSS20 line 321, stated for
`M̄_g`; the pointed case is the same local computation at a normal-crossings stratum); a meridian of a
component of `C̄ ∖ C°` maps to a product of nonnegative powers of the meridians of the components of
`M̄′ ∖ M_{g,n+1}` through its image. *Needs:* §§0.3, 2.4; SchemeAndStackFoundations §4.15
(`Mbar_smooth`, `Mbar_algebraic_proper_DM`); AlgebraicModuliForArithmeticGeometry §9.5;
ResolutionOfSingularitiesCharacteristicZero §6.2.

**Checks.**

- For finite-image local systems quasi-unipotence holds on every compactification, independently
  of this theorem.
- Normalization alone need not give a smooth space with SNC boundary; the exceptional components of
  the log resolution are covered because their meridians are again products of the commuting
  node-smoothing twists.
- The smoothing `xy = t` of a node has local monodromy a single Dehn twist about the vanishing
  cycle, a unipotent transvection on `H₁` by §0.3.

### 7.3 Quasi-unipotent boundary monodromy

Prove: for `g ≥ 3`, a local system on `C°` as in §7.2 whose monodromy is induced from a
representation of a finite-index subgroup of `PMod(g, n + 1)` has quasi-unipotent local monodromy
along `C̄ ∖ C°`; the same holds for a projective local system with values in `PGL_r(ℂ)`, tested
through its faithful adjoint representation `Ad ∘ ρ̂` (Landesman–Litt, Lemma 8.3.3, p. 40). Apply
§7.1 to the multitwists of §7.2, and use that commuting quasi-unipotent matrices have
quasi-unipotent product. *Needs:* §§3.4, 7.1, 7.2.

**Checks.**

- For finite-image `ρ` every local monodromy has finite order.
- For `PGL_r`, quasi-unipotence of `Ad ∘ ρ̂(μ)` gives quasi-unipotence of `ρ̂(μ)` since `Ad` is
  faithful on `PGL_r`.

### 7.4 Projective integrality

Prove: for `g ≥ 3` and an irreducible unitary MCG-finite representation `ρ` of `π₁(Σ_{g,n})` of rank
`r ≥ 1` with `r² < g + 1`, the projectivization `Pρ` is integral, that is `PGL_r(ℂ)`-conjugate into
`PGL_r(O_K)` for a number field `K` (Landesman–Litt, Lemma 8.3.3, p. 40). Realize `Pρ` on the total
space of a finite étale level chart (§3.4); it is strongly cohomologically rigid by §5.9 since
`r² − 1 < g`, has quasi-unipotent local monodromy by §7.3, hence is cohomologically rigid by §5.9,
in this order; it is `PGL_r`-irreducible because its fibre restriction is irreducible, and `PGL_r`
has trivial abelianization; apply §5.10. *Needs:* §§3.4, 5.9, 5.10, 7.3.

**Checks.**

- `r = 1`: the statement is empty since `PGL₁` is trivial.
- Cohomological rigidity is deduced only after quasi-unipotence of local monodromy is known,
  since it is not defined before.

### 7.5 Linear integrality

Prove that under the hypotheses of §7.4, `ρ` itself is conjugate into `GL_r(O_L)` for a finite
extension `L` of the projective coefficient field (Landesman–Litt, Lemma 8.3.4, pp. 40–41). With
`D = det ρ` finite (§3.3), the map `G_D → PGL_r` is finite (§1.2); for each of finitely many
generators the actual matrix lies in the finite fibre over its integral projective image, hence in
`G_D(O_L)` after a finite extension, and the same for inverses, so the matrices lie in `GL_r(O_L)`
and not merely in `M_r(O_L)`. *Needs:* §§1.2, 3.3, 7.4.

**Checks.**

- `r = 1`: `ρ` is a finite-order character, integral over a cyclotomic ring of integers.
- The values lie in `GL_r(O_L)`, not only in `M_r(O_L)`: the inverses are integral by the same
  finite-fibre argument.

### 7.6 Unitarity of all conjugates

Prove: for `g ≥ 3` and an irreducible unitary MCG-finite `ρ` of rank `r` with `r² < g + 1`, integral
over a number field `K` by §7.5, every embedding `τ : K → ℂ` gives a unitary conjugate `ρ ⊗_τ ℂ`
(Landesman–Litt, proof of Proposition 8.4.1, p. 41). Realize `ρ` on a punctured versal family with
finite determinant (§4.3); the total representation `ρ′` is irreducible and strongly rigid (§5.9).
For `σ ∈ Aut(ℂ)` with `σ ∘ ι = τ`, `ρ′ ⊗_σ ℂ` is irreducible, strongly rigid and of finite determinant,
hence underlies a complex PVHS on the total space (§5.8); restrictions to nearby fibres are
isomonodromic deformations of one another, so every fibre restriction is unitary by §5.11 since
`r < 2√(g + 1)`; parallel transport identifies
the fibre representation with `ρ ⊗_τ ℂ`. *Needs:* §§4.3, 4.4, 5.8, 5.9, 5.11, 7.5.

**Checks.**

- For the identity embedding the conclusion is the hypothesis.
- A complex PVHS on a single curve is not enough: §5.11 needs a variation on the total space of the
  versal family, so that its isomonodromic deformations to nearby curves are variations.

### 7.7 Finiteness in the unitary case

Prove that every unitary MCG-finite representation of `π₁(Σ_{g,n})` of rank `r` with `r² < g + 1`
has finite image, for all `g, n ≥ 0` (Landesman–Litt, Proposition 8.4.1, p. 41). Split it into
irreducibles (`TauCeti.ContRepresentation.IsUnitary.isSemisimpleRepresentation`, §3.1); for `g < 3`
the bound gives `r ≤ 1` (and `r = 0` for `g = 0`), handled by §3.3; for `g ≥ 3` use §7.5, §7.6 and
§5.11's finiteness criterion for representations into `GL_r(O_L)` unitary at every embedding.
*Needs:* §§3.1, 3.3, 5.11, 7.5, 7.6; Tau Ceti
`TauCeti.ContRepresentation.IsUnitary.isSemisimpleRepresentation`.

**Checks.**

- On `Σ_{0,3}` the unitary character `c₁ ↦ e^{2πiθ}`, `c₂ ↦ e^{−2πiθ}` with `θ` irrational is
  MCG-finite (the pure mapping class group acts by inner automorphisms, §0.5) with infinite image,
  which is why `g = 0` allows only rank zero.
- Unitarity at one embedding does not suffice: the Salem character of §5.11 is integral, unitary at
  some embeddings and of infinite image.

### Examples

- For `g = 3`, `r = 1` is the only positive rank in range; the unitary case reduces to §3.3.
- For `g = 8`, ranks `r ≤ 2` are in range (`4 < 9`); a unitary irreducible MCG-finite representation
  of rank two is integral by §7.5, unitary at all conjugates by §7.6 and finite by §7.7.

### Dependencies

Layers 0–5; SurfaceTopology Layer 9; SchemeAndStackFoundations §4.15;
AlgebraicModuliForArithmeticGeometry §9.5; ResolutionOfSingularitiesCharacteristicZero §6.2;
Mathlib `Representation.ind`; Tau Ceti
`TauCeti.ContRepresentation.IsUnitary.isSemisimpleRepresentation`.

## Layer 8: constancy and the semisimple case

This layer applies the constancy criterion of §1.3 to fibre-unitary formal families, proves that a
connected algebraic family of fixed-determinant representations with one unitary fibre restriction
has conjugate fibre restrictions, and deduces finiteness for semisimple MCG-finite representations
of low rank by nonabelian Hodge theory.

### 8.1 Formal fibral constancy

Prove: for a punctured étale-versal family, a base point `c ∈ C°` over `m` and
`ρ_∞ : π₁(C°, c) → GL_r(ℂ[[t]])` with constant determinant, `r ≥ 1` and `r² < g + 1`, if
`ρ₀ = ρ_∞ mod t` restricts to a unitary representation of `π₁(C°_m, c)`, then `ρ_∞|_{π₁(C°_m, c)}` is
conjugate over `ℂ[[t]]` to a constant representation (Landesman–Litt, Lemma 8.5.1, p. 42). Apply the
constancy criterion of §1.3 to `1 → π₁(C°_m) → π₁(C°) → π₁(M) → 1` (§2.6): for a deformation `γ`
over `B_n` with constant fibre restriction, `ad γ` has rank `r² − 1 < g` and its fibre restriction is
the constant deformation of the unitary `ad ρ₀`, so `H⁰(M, R¹π°_* ad γ) = 0` by §5.7. *Needs:* §§1.3,
2.6, 5.7.

**Checks.**

- If `ρ_∞` is conjugate to `ρ₀ ⊗ ℂ[[t]]` the conclusion holds trivially.
- The rank bound enters only through `rk ad γ = r² − 1 < g`; for `r² − 1 ≥ g` nothing is
  concluded.

### 8.2 Connected algebraic fibral constancy

Prove: let `X` be a connected `ℂ`-scheme of finite type and `ρ : π₁(C°, c) → GL_r(O(X))` a
representation whose determinant is a fixed character, with `r ≥ 1` and `r² < g + 1`. If its
specialization at one closed point `y` restricts to a unitary representation of `π₁(C°_m, c)`, then
the restrictions at all closed points are `GL_r(ℂ)`-conjugate (Landesman–Litt, Lemma 8.5.2,
pp. 42–43). Reduce to a smooth connected curve through `y` by chains of reduced curves and
normalization; complete at `y` and apply §8.1 to get conjugacy on a dense open; the orbit of the
unitary, hence semisimple, fibre restriction is closed in the representation scheme (§1.4), so the
whole curve maps into it; propagate across intersecting components. This is a statement about
representations, not about maps to a character variety. *Needs:* §§1.4, 8.1.

**Checks.**

- `X` a point: the statement is empty.
- Closedness of the orbit is essential: `t ↦ [[1, t], [0, 1]]` is conjugate to `[[1, 1], [0, 1]]`
  for `t ≠ 0` and equals `I` at `t = 0`, so conjugacy on a dense open does not extend across a point
  whose orbit is not closed.
- Formal constancy is essential too: the same family of representations of `ℤ` has the unitary
  specialization `I` at `0` with closed orbit, yet its other specializations are not conjugate to
  it, because `H¹(ℤ, sl₂) ≠ 0` and §8.1 does not apply.

### 8.3 Finiteness in the semisimple case

Prove that every semisimple MCG-finite representation `π₁(Σ_{g,n}) → GL_r(ℂ)` with `r² < g + 1` has
finite image, without assuming unitarity (Landesman–Litt, Theorem 8.5.3, p. 43). Reduce to
irreducible `ρ` (§3.1) of rank `r ≥ 1`; realize it as the fibre of a finite-determinant local system
`V` with determinant `χ` on a versal family (§4.3). By §5.8 there is `V₀` underlying a complex PVHS
in the same connected component `X` of the representation scheme `R_r(π₁(C°))_χ` (§1.4); `X` carries
the universal representation over `O(X)` with determinant `χ`. The fibre restriction of `V₀` is
unitary (§5.11, as `r < 2√(g + 1)`) and MCG-finite (§2.7), hence finite (§7.7), and by §8.2 the fibre
restriction of `V`, that is `ρ`, is conjugate to it. The connected family of actual representations
required by §8.2 is the component `X` itself, which is how the gap in the source's argument is
closed. *Needs:* §§1.4, 2.7, 3.1, 4.3, 5.8, 5.11, 7.7, 8.2.

**Checks.**

- For unitary `ρ` the deformation may be taken constant and the theorem is §7.7.
- Outside the range the statement fails: the special dihedral representations of genus-one
  punctured surfaces (§12.5) are semisimple of rank two with infinite image, and
  `r² = 4 ≥ g + 1 = 2`.

### Examples

- For `g = 3` and `r = 1`, §8.3 is §3.3; for `g = 8` and `r = 2` it is the first case beyond
  characters.
- The family `t ↦ diag(t, t⁻¹)` of representations of `ℤ` into `SL₂` has non-conjugate semisimple
  specializations at `t = 1` and `t = 2`; it is not a family over a versal family with unitary
  fibre, so §8.2 does not apply.

### Dependencies

Layers 1–5 and 7.

## Layer 9: the general finiteness theorem and its corollaries

This layer removes the semisimplicity hypothesis by induction on the socle filtration, using the
higher Prym rank bound to split extensions, and deduces the fibral, isomonodromy, free-group,
Nielsen-tuple, characteristic-quotient and total-image corollaries.

### 9.1 Characteristic socle transport

Prove that for an MCG-finite finite-dimensional complex representation of a surface group, its
socle (`TauCeti.socle` of the group-algebra module) and the quotient by it are MCG-finite; iterating
gives a finite characteristic socle filtration with semisimple graded pieces (Landesman–Litt, §8.7,
p. 44). Transport the supremum of simple submodules along each intertwiner by the universal
property of the socle; finite dimension makes the filtration finite. *Needs:* §3.1; Tau Ceti
`TauCeti.socle`, `TauCeti.isSemisimpleModule_socle`.

**Checks.**

- For semisimple `ρ` the socle filtration has length one.
- For the abelianization unipotent example of §12.1 the socle is `H` and the quotient is the
  trivial line, both MCG-finite.

### 9.2 Splitting of low-rank extensions

Prove: let `ρ` be MCG-finite of rank `r` with `r² < g + 1`, with a characteristic subrepresentation
`V₁` such that `V₁` and `V₂ = V/V₁` are semisimple with finite image. Then the extension splits and
`ρ` has finite image (Landesman–Litt, Lemma 8.6.1, p. 44). With `a = dim V₁`, `b = dim V₂`,
`ab ≤ r²/4 < (g + 1)/4`. Trivialize `V₁ ⊕ V₂` on a finite Galois cover with group `H`; the
restricted extension class is an `H`-equivariant map from `H₁` of the open cover to `Hom(V₂, V₁)`.
Choose a finite-index subgroup stabilizing the actual conjugacy class of `ρ`, the cover and the
labels of the constituents: stabilizing only the constituents of `Hom(V₂, V₁)` does not suffice.
Each isotypic piece of the image is a stable subspace of dimension `≤ ab` in an isotypic component
labelled by `σ` with `dim σ ≤ ab`, and `2g − 2 dim σ > ab` contradicts §6.5 unless it is zero. The
extension is then trivial on the cover, so `ρ` has finite image and splits by averaging. *Needs:*
§§2.1, 6.1, 6.5; RepresentationTheory/CharacterTheory Layer 2.

**Checks.**

- A nonzero unipotent extension of trivial representations with infinite image is excluded by the
  MCG-finite hypothesis, not by semisimplicity of the graded pieces; with the stabilizer of the
  constituents alone, the unipotent representation of §2.1 would refute the argument.
- For `a = b = 1` the bound reads `2g − 2 > 1`, true for `g ≥ 2`, and `r = 2` requires `g ≥ 4`.

### 9.3 Finiteness of canonical representations

Prove the main theorem: for all `g, n, r ≥ 0`, an MCG-finite representation
`ρ : π₁(Σ_{g,n}) → GL_r(ℂ)` with `r² < g + 1` has finite image; no semisimplicity is assumed
(Landesman–Litt, Theorem 1.2.1, p. 3, proved in §8.7, p. 44). For `g = 0` the bound forces `r = 0`.
Induct on the length of the socle filtration (§9.1): the socle and the quotient have finite image by
§8.3 and induction, and §9.2 splits the extension. In the algebraic form of the Lean file,
`mcgFinite_finite_image`: for `ρ : surfaceGroup g n → GL_r(ℂ)` with
`HasFiniteConjugacyOrbitUnder (pureMappingClassAut g n) ρ` and `r² < g + 1`, the image is finite;
it follows because the image of the based action of `PMod(g, n + 1)` lies in
`pureMappingClassAut g n` (§0.2), so a finite orbit under the latter is a finite orbit under the
former. *Needs:* §§0.2, 8.3, 9.1, 9.2, 3.3.

**Checks.**

- The bound is strict: `r² < g + 1`, not `r² ≤ g + 1`; at `g = 3` it allows `r = 1` only.
- At `g = 1` it allows `r = 1`, and the genus-one rank-two examples of §12.5 show that `r = 2`
  fails there.
- The abelianization unipotent representation of rank `2g + 1` of §12.1 is MCG-finite with infinite
  image, so no bound better than linear in `g` holds without semisimplicity.

### 9.4 Finite fibral monodromy

Prove that for a local system of rank `r` with `r² < g + 1` on the total space of a punctured
étale-versal family of genus `g`, its restriction to every fibre has finite image, with no
semisimplicity of the total representation (Landesman–Litt, Corollary 1.3.1, p. 4). Combine §2.7
with §9.3 and use parallel transport between fibres. *Needs:* §§2.7, 9.3.

**Checks.**

- A local system pulled back from the base has trivial fibre restrictions.
- For `g = 3`, rank one: a character of `π₁(C°)` restricts to a finite-order character of each
  fibre, by §3.3 already.

### 9.5 Algebraic isomonodromic deformations

For an `n`-pointed curve `(C, D)` with `2g − 2 + n > 0` and an algebraic logarithmic connection
`(E, ∇)` with poles along `D` and monodromy `ρ`, a universal algebraic isomonodromic deformation is an
algebraic isomonodromic deformation over a variety dominant and étale over `M_{g,n}` whose analytic
germ is the universal analytic one over Teichmüller space (Cousin–Heu, §2.4). Prove: if `∇` is mild
(for instance the canonical extension, with residue eigenvalues of real parts in `[0, 1)`), and `ρ`
is semisimple when `r > 2`, a universal algebraic isomonodromic deformation exists exactly when the
orbit of the class of `ρ` under the mapping class group is finite (Cousin–Heu, Theorem A, p. 4).
Deduce: for semisimple regular-singular `(E, ∇)` of rank `r ≥ 1` with `r² < g + 1` and residue
eigenvalues with real parts in `[0, 1)`, an algebraic universal isomonodromic deformation exists if
and only if the monodromy is finite (Landesman–Litt, Corollary 1.2.3, p. 4). *Needs:* §§2.3, 5.3,
9.3; ComplexComparisonPartII §C5.6 (`CanonicalLogExtension`, `deligneRiemannHilbert`);
SchemeAndStackFoundations §4.15.

**Checks.**

- A flat bundle with finite monodromy has an algebraic universal isomonodromic deformation over a
  finite étale cover of the moduli stack: the easy direction.
- The residue condition says the connection is the canonical extension, which is mild; other
  connections are first gauge-transformed birationally.
- The statement is in the hyperbolic range `2g − 2 + n > 0`, which Cousin–Heu's theorem requires;
  the unpointed torus is not covered.

### 9.6 Nielsen generation of `Aut(F_N)`

Prove that for `N ≥ 1` and the free group on the ordered basis `x₁, …, x_N`, `Aut(F_N)` is generated
by the cyclic shift `xᵢ ↦ xᵢ₊₁` (indices mod `N`), the transposition of `x₁` and `x₂` (`N ≥ 2`), the
inversion `x₁ ↦ x₁⁻¹` and the transvection `x₁ ↦ x₁x₂` (`N ≥ 2`), each fixing the other basis
elements (Nielsen 1924; Magnus–Karrass–Solitar, Theorem 3.2, p. 131, as cited in Landesman–Litt,
Remark 1.6.3). Under `FreeGroup.lift`, precomposition with these is the operation `c`, `τ`, `ε` or
`d` on `N`-tuples of group elements, and inner automorphisms act by simultaneous conjugation. The
route is Nielsen reduction of a basis. *Needs:* Mathlib `FreeGroup`, `FreeGroup.lift`.

**Checks.**

- For `N = 2` the abelianized images are `[[0, 1], [1, 0]]` (the shift and the transposition
  coincide), `diag(−1, 1)` and `[[1, 0], [1, 1]]`; they generate `GL₂(ℤ)`, as surjectivity of
  `Aut(F₂) → GL₂(ℤ)` requires.
- `N = 1`: `Aut(ℤ) = {±1}` is generated by the inversion; the cyclic shift is the identity.
- `N = 2`, values in `GL₃(ℂ)`: the transvection sends the pair `(I + E₁₃, I + E₂₃)` to
  `(I + E₁₃ + E₂₃, I + E₂₃)`, which is conjugate to the original by the matrix fixing `e₂, e₃` and
  sending `e₁` to `e₁ + e₂`, an instance of the fixed conjugacy class of §12.1.

### 9.7 Finiteness for free groups

Prove: for `N = 2g` or `N = 2g + 1` and `ρ : F_N → GL_r(ℂ)` whose conjugacy class has finite orbit
under `Out(F_N)`, if `r² < g + 1` then `ρ` has finite image (Landesman–Litt, Corollary 1.6.1, p. 5).
Identify `F_N` with `π₁(Σ_{g,1})` for even `N` and with `π₁(Σ_{g,2})` for odd `N` (§0.1) and restrict
the action to the pure mapping class group; apply §9.3. This is `freeGroup_finite_image`, with
`Aut(F_N)` in place of `Out(F_N)` since inner automorphisms act by conjugation. Finite orbit under
the mapping class group is not claimed to imply finite orbit under `Out(F_N)`. *Needs:* §§0.1, 0.2,
9.3; Mathlib `FreeGroup`, `Matrix.GeneralLinearGroup`.

**Checks.**

- `N = 0` or `1`: then `g = 0` and the bound forces `r = 0`.
- For odd `N = 2g + 1` the surface is `Σ_{g,2}`, whose fundamental group is free of rank `2g + 1`.
- The rank-`(N + 1)` representation of §12.1 for `F_N` is `Out`-fixed with infinite image, so
  finiteness fails in rank `N + 1`.

### 9.8 The Nielsen-tuple criterion

Prove: for `N ≥ 2` with `N = 2g` or `2g + 1` and invertible matrices `A₁, …, A_N ∈ GL_r(ℂ)`, if the
tuples obtained by repeatedly applying the cyclic shift, the swap of the first two entries, the
inversion of `A₁` and the replacement of `A₁` by `A₁A₂` meet only finitely many simultaneous
conjugacy classes, and `r² < g + 1`, then the `Aᵢ` generate a finite group (Landesman–Litt,
Remark 1.6.3, pp. 5–6). Each operation permutes the finite set of reached classes, so the set is
closed under inverses as well; by §9.6 it is an `Aut(F_N)`-orbit, and §9.7 applies. *Needs:* §§9.6,
9.7; Mathlib `FreeGroup.lift`.

**Checks.**

- `N = 2`, `r = 1`: roots of unity satisfy the hypothesis, and for `λ` of infinite order the
  operation `d` sends `(λ, μ)` to `(λμ, μ)` and with `τ` produces infinitely many pairs.
- Forward closure suffices: each operation is a bijection on conjugacy classes, and a bijection
  of a finite set onto itself has its inverse among its powers.

### 9.9 Characteristic quotients

Prove that for a quotient `G` of `F_N` (`N = 2g` or `2g + 1`) by a characteristic subgroup, a rank-`r`
representation of `G` with finite `Out(G)`-orbit has finite image when `r² < g + 1`, and likewise for
a quotient of a surface group by a subgroup characteristic for the mapping-class action (Landesman–
Litt, Remark 1.6.5, p. 6). Pull back along the quotient map: automorphisms descend, and pullback
preserves conjugacy and the image. *Needs:* §§9.3, 9.7.

**Checks.**

- `G = F_N^{ab} = ℤ^N` with `Out(G) = GL_N(ℤ)`: the conclusion recovers finiteness of
  `GL_N(ℤ)`-finite characters of `ℤ^N`.
- The quotient must be characteristic so that automorphisms of `F_N` descend to `G`.

### 9.10 Finite total image

Prove: for a finite-index `Γ ⊂ PMod(g, n + 1)` containing the point-pushing subgroup and a
representation of `Γ` of rank `r` with `r² < g + 1`, finite determinant and irreducible restriction
to the point-pushing subgroup, the image of `Γ` is finite (Landesman–Litt, Remark 10.1.7, p. 51), by
§3.2, §9.3 and §4.4. *Needs:* §§3.2, 4.4, 9.3.

**Checks.**

- The trivial representation of `Γ` has finite image.
- The finite-determinant and irreducibility hypotheses are those of §4.4, through which finiteness
  passes from the surface group to `Γ`.

### Examples

- For `g = 15`, every MCG-finite representation of rank `r ≤ 3` of `π₁(Σ_{15,n})` has finite image,
  since `9 < 16`; rank four would need `g ≥ 16`.
- For `F₆ = π₁(Σ_{3,1})`, an `Out(F₆)`-finite character is torsion by §9.7 with `g = 3`, `r = 1`.

### Dependencies

Layers 0–8; RepresentationTheory/CharacterTheory Layer 2; ComplexComparisonPartII §C5.6;
SchemeAndStackFoundations §4.15; Mathlib `FreeGroup`, `FreeGroup.lift`; Tau Ceti `TauCeti.socle`,
`TauCeti.isSemisimpleModule_socle`.

## Layer 10: arithmetic representations of the generic pointed curve

Throughout this layer `K` is a finitely generated field of characteristic zero, `(C, x₁, …, x_n)` a
smooth geometrically connected `n`-pointed curve of genus `g` over `K` with `2g − 2 + n > 0`, whose
moduli map `Spec K → M_{g,n,ℚ}` factors through the generic point, `C°_K̄ = C_K̄ ∖ {x₁, …, x_n}`, and
`ℓ` a prime. Arithmetic representations are those of
InverseGaloisAndArithmeticFundamentalGroups §IG.1.4 (`IsArithmeticRepresentation`).

### 10.1 Orbit comparison on the generic curve

Prove: every continuous arithmetic representation `ρ : π₁^ét(C°_K̄) → GL_r(ℚ̄_ℓ)` becomes MCG-finite
after choosing an embedding `K → ℂ`, restricting to the dense topological surface group
`π₁(C°(ℂ))` and transporting coefficients by an abstract field isomorphism `ℚ̄_ℓ ≅ ℂ`
(Landesman–Litt, proof of Theorem 9.1.2, pp. 46–47). Compare the arithmetic sequence of the curve
over `K` with that of the universal punctured curve over `M_{g,n,ℚ}` (§IG.1.4, *Exactness in families
and the moduli outer action*); since the moduli map is generic, `Γ_K` has open image in
`π₁^ét(M_{g,n,ℚ})`, so the orbit of the class of `ρ` under `π₁^ét(M_{g,n,ℚ̄})` is finite, and by
Riemann existence and §2.4 so is its orbit under the topological `PMod(g, n)`. MCG-finiteness is a
statement about finitely many conjugacy classes, so it survives the abstract coefficient isomorphism,
which is not assumed continuous. *Needs:* §§2.4, 2.1; InverseGaloisAndArithmeticFundamentalGroups
§§IG.1.4, IG.3.1; ComplexComparisonPartII §C6.2 (`riemannExistence`).

**Checks.**

- For finite-image `ρ` the comparison is immediate.
- `Γ_K` acts through the outer action on the geometric group, in which the topological surface
  group is dense (§IG.3.1), so a finite Galois orbit restricts to a finite mapping-class orbit.

### 10.2 Arithmetic finite monodromy

Prove that every continuous arithmetic `ρ : π₁^ét(C°_K̄) → GL_r(ℚ̄_ℓ)` with `r² < g + 1` has finite
image (Landesman–Litt, Theorem 9.1.2, p. 45). By §10.1 and §9.3 its restriction to the topological
surface group has finite image; a finite subset of `GL_r(ℚ̄_ℓ)` is closed in the `ℓ`-adic topology,
so by continuity and density (§IG.3.1, *Topological fundamental groups of curves are dense*) the
whole image is that finite set. *Needs:* §§9.3, 10.1; InverseGaloisAndArithmeticFundamentalGroups
§IG.3.1.

**Checks.**

- `r = 1`, `g ≥ 1`: a continuous arithmetic character of the geometric group has finite order.
- Genericity is essential: if a pointed curve admits a nonconstant map to a modular curve carrying
  the punctured curve into the open modular curve, the pulled-back Tate module is an arithmetic
  rank-two representation of infinite image, so for `g ≥ 4` (where `4 < g + 1`) such a curve is
  never generic.

### 10.3 Finite monodromy is arithmetic

Prove that for a smooth geometrically connected curve over `K`, every continuous geometric `ℓ`-adic
representation with finite image is arithmetic: the geometric group is topologically finitely
generated (§IG.3.1, *Finitely many covers of bounded degree*), so there are finitely many
homomorphisms to a given finite group and finitely many classes in the orbit (Landesman–Litt,
Corollary 9.1.4, implication (1) ⇒ (2), pp. 45–46). §IG.1.4 records the same fact as a check on
its definition; it is stated here as the theorem §10.4 uses. *Needs:*
InverseGaloisAndArithmeticFundamentalGroups §§IG.1.4, IG.3.1.

**Checks.**

- The trivial representation is arithmetic.
- Finite image is sufficient but not necessary: Tate modules of abelian schemes are arithmetic of
  infinite image.

### 10.4 Geometric and Hodge characterisations

Prove that for a continuous `ρ : π₁^ét(C°_K̄) → GL_r(ℚ̄_ℓ)` with `r² < g + 1` the following are
equivalent: (1) `ρ` has finite image; (2) `ρ` is arithmetic; (3) for every embedding `K → ℂ` and every
field isomorphism `ℚ̄_ℓ ≅ ℂ` the complex local system on the punctured Riemann surface is of geometric
origin; (4) for every such choice it underlies an integral PVHS in the `O_K` sense of §5.1
(Landesman–Litt, Corollary 9.1.4, pp. 45–46). (1) ⇔ (2) is §§10.2–10.3; (1) ⇒ (3) because a finite
local system is a summand of a push-forward of the constant sheaf; (3) ⇒ (4) is §5.1; (4) ⇒ (1):
choose the embedding at an analytically very general point, possible because the points over the
generic point of `M_{g,n,ℚ}` form a comeagre set and so does the very general locus, and apply §5.11
(Landesman–Litt 2022, Theorem 1.2.5; the source cites Corollary 1.2.7 at this step), using
`r < 2√(g + 1)`. *Needs:* §§5.1, 5.11, 10.2, 10.3; InverseGaloisAndArithmeticFundamentalGroups
§IG.1.4.

**Checks.**

- A non-real character of finite order satisfies (4) in the `O_K` sense though it has no invariant
  rank-one `ℤ`-lattice; under a `ℤ`-lattice reading (1) ⇒ (4) would fail.
- The quantifiers in (3) and (4) range over all embeddings and all coefficient isomorphisms.

### 10.5 The wider Hodge range

Prove that conditions (1), (3) and (4) of §10.4 are equivalent whenever `r < 2√(g + 1)`;
arithmeticity is not part of this wider equivalence (Landesman–Litt, Corollary 9.1.4, final
assertion, p. 46). The implications (1) ⇒ (3) ⇒ (4) hold in every rank and (4) ⇒ (1) uses only
`r < 2√(g + 1)` in §5.11. *Needs:* §§5.1, 5.11, 10.4.

**Checks.**

- Arithmeticity is excluded in this range: only the relative Fontaine–Mazur conjecture would extend
  it to semisimple `ρ` with `r < 2√(g + 1)` (Landesman–Litt, Remark 9.1.5).
- For `g = 3` the wider range allows `r ≤ 3` (`3 < 4`), while §10.4 allows only `r = 1`.

### Examples

- For `g = 8`, every arithmetic representation of rank at most two of the geometric fundamental
  group of the generic curve of genus `8` has finite image (§10.2), and for rank at most five
  (`5 < 2·3 = 6`) geometric origin is equivalent to finite image (§10.5).
- For `g = 0` the hypothesis of §10.2 forces `r = 0`.

### Dependencies

Layers 2, 5 and 9; InverseGaloisAndArithmeticFundamentalGroups §§IG.1.4, IG.3.1;
ComplexComparisonPartII §C6.2.

## Layer 11: residual lifts and non-density

This layer defines arithmetic lifts of residual representations, proves that surjections onto
`GL_r(𝔽_p)` of the geometric fundamental group of the generic curve have no arithmetic lifts for
`1 < r < √(g + 1)` and `p` prime to Jordan's constant, constructs such surjections for every `p`,
proves non-density of finite-image representations in character varieties, and records the
conditional non-flatness of deformation rings.

### 11.1 Residual arithmetic lifts

For a residual representation `ρ̄ : π₁^ét(C°_K̄) → GL_r(𝔽_p)`, an *arithmetic lift* is a finite
extension `E/ℚ_p`, an `O_E`-lattice `L` of rank `r` and a continuous arithmetic representation on
`L ⊗ E` preserving `L`, whose reduction is isomorphic to `ρ̄` after an embedding of residue fields
and scalar extension; ramified `E` are allowed. A *residual geometric-origin realization* is the
reduction of a stable lattice in a characteristic-zero representation of geometric origin, with
coefficients in `W(F)[1/p]` for a finite field `F` (Landesman–Litt, Definition 9.2.1, pp. 47–48).
Prove that a representation of geometric origin is arithmetic: the family is defined over a finite
extension `K′` of `K`, `Γ_{K′}` permutes the isomorphism classes of subquotients of the cohomology
sheaf, and these are finitely many because that sheaf is semisimple on the geometric group (§5.1,
semisimplicity of variations, transported by density from the topological group). *Needs:* §5.1;
InverseGaloisAndArithmeticFundamentalGroups §§IG.1.4, IG.3.1.

- Reduction of the chosen stable lattice, after the specified residue extension, is isomorphic to
  `ρ̄`.
- A finite coefficient extension of a lift is a lift with the induced reduction comparison.
- A residual geometric-origin realization gives an arithmetic lift, by the geometric-origin
  statement above.

**Checks.**

- The trivial residual representation has the trivial `ℤ_p`-lattice lift.
- Lifting generator matrices arbitrarily to `O_E` is not a lift unless all relations hold and the
  resulting homomorphism is continuous.
- A lift over a ramified finite extension with residue field `𝔽_p` is admitted, and agrees with
  ordinary scalar-extended reduction.

### 11.2 The Jordan obstruction

Prove that for `r ≥ 2` and every prime `p` not dividing `m(r) = J(r)!` (§1.5), no finite subgroup of
`GL_r(O_E)`, for a finite extension `E/ℚ_p`, reduces onto a subgroup of `GL_r(k_E)` conjugate to
`GL_r(𝔽_p)` (Landesman–Litt, proof of Corollary 9.2.2, p. 48; Landesman–Litt 2022, proof of
Lemma 7.5.1, p. 54): the identity `[x^{m(r)}, y^{m(r)}] = 1` holds in the finite subgroup, survives
reduction and quotients, and fails for the opposite unipotent blocks of §1.5. *Needs:* §1.5.

**Checks.**

- The `2 × 2` computation of §1.5: `[u^m, l^m] = 1` exactly when `p | m`.
- For primes dividing `m(r)` no conclusion is drawn.

### 11.3 Residual non-liftability

Prove that for the generic pointed curve, `1 < r < √(g + 1)`, `p ∤ m(r)` and `ρ̄` a surjection of
`π₁^ét(C°_K̄)` onto `GL_r(𝔽_p)`, `ρ̄` has no arithmetic lift, and hence no residual geometric-origin
realization (Landesman–Litt, Corollary 9.2.2, p. 48): an arithmetic lift has finite image by §10.2,
contradicting §11.2. *Needs:* §§10.2, 11.1, 11.2.

**Checks.**

- `r = 1` is excluded: `GL₁(𝔽_p)` is cyclic and the Jordan identity holds there.
- For `p | m(r)` nothing is claimed.

### 11.4 Surjective residual representations

Prove that for every prime `p` and `r ≥ 2`, the geometric fundamental group of a smooth
characteristic-zero curve with `n ≥ 1` and `2g + n − 1 ≥ 2`, or with `n = 0` and `g ≥ 2`, has a
continuous surjection onto `GL_r(𝔽_p)`; on the generic curve with `1 < r < √(g + 1)` these have no
arithmetic lift when `p ∤ m(r)` (Landesman–Litt, Example 9.2.3, pp. 48–49, with non-liftability
restricted to such `p` as in the authors' erratum). For `n ≥ 1` the geometric group is free
profinite of rank `2g + n − 1` (the profinite completion of §0.1's free group, by §IG.3.1); for
`n = 0`, sending every `bᵢ` to `1` gives a free profinite quotient on `a₁, …, a_g`; map two free
generators to a generating pair of `GL_r(𝔽_p)` (§1.5). *Needs:* §§0.1, 1.5, 11.3;
InverseGaloisAndArithmeticFundamentalGroups §IG.3.1.

**Checks.**

- `n ≥ 1`: the geometric group is free profinite on `2g + n − 1` generators.
- `n = 0`: the quotient sending every `bᵢ` to `1` respects the relation `∏ [aᵢ, bᵢ] = 1`.

### 11.5 Non-density of finite-image representations

Prove that for `2g − 2 + n > 0` and `r ≥ 2` the semisimple representations of `π₁(Σ_{g,n})` with
finite image lie in a proper closed subset of the character variety `M_r(π₁(Σ_{g,n}))`; consequently,
on the generic curve in the range `1 < r < √(g + 1)`, arithmetic representations are not Zariski
dense (Landesman–Litt 2022, Lemma 7.5.1, pp. 53–54; Landesman–Litt, Remark 9.1.3, p. 45). The Jordan
identity of §1.5 cuts out a closed conjugation-invariant subset of the representation scheme, whose
image in the quotient is closed (§1.4); it is proper because a free quotient on two generators sends
them to the opposite unipotents of §1.5, whose semisimplification in a two-dimensional irreducible
block still violates the identity. *Needs:* §§1.4, 1.5, 10.2.

**Checks.**

- `r = 1`: torsion characters are dense in the character torus, so `r ≥ 2` is needed.
- The unpointed torus is excluded: its group is abelian and finite-image representations are
  dense.

### 11.6 Conditional non-flatness of deformation rings

Let `K′/K` be finite, `Π = π₁^ét(C°_{K′})` and `ρ̄_Π : Π → GL_r(F)` a continuous absolutely irreducible
representation whose restriction to `π₁^ét(C°_K̄)` is a surjection onto `GL_r(𝔽_p)` as in §11.3. Prove:
for every continuous quotient `Π → Π′` satisfying Mazur's condition `Φ_p` through which `ρ̄_Π`
factors, the universal deformation ring `R` of `ρ̄_Π` on `Π′` satisfies `R[1/p] = 0`; hence `R` is
not flat and not formally smooth over `W(F)` (Landesman–Litt, Remarks 9.2.5–9.2.6, p. 49, in the
form left by the authors' erratum). A nonzero `R[1/p]` has a point over a finite extension of
`W(F)[1/p]`, which gives a lift of `ρ̄_Π` whose restriction to the geometric group is arithmetic,
contradicting §11.3. No failure of the complete-intersection property follows: `ℤ_p[[x]]/(p)` is a
non-flat complete intersection. *Needs:* §11.3; LocalGaloisDeformationRings §§F.1.1–F.1.7, F.2.1,
F.2.5; DeformationAndDerivedPatchingAlgebra §§4.2, 4.4.

**Checks.**

- `ℤ_p[[x]]/(p)` is a complete intersection and not flat over `ℤ_p`, so non-flatness does not
  contradict the complete-intersection property.
- The statement is conditional on the extension `ρ̄_Π` to an arithmetic group; the geometric
  surjection alone does not specify it.

### Examples

- For `g = 8`, `r = 2` and every `p ∤ m(2)`, the generic curve of genus `8` with one marked point
  has geometric surjections onto `GL₂(𝔽_p)` without arithmetic lifts.
- For `r = 2` the identity `[x^{m(2)}, y^{m(2)}] = 1` is violated in `GL₂(𝔽_p)` by `u` and `l`
  whenever `p ∤ m(2)`.

### Dependencies

Layers 0, 1, 5 and 10; InverseGaloisAndArithmeticFundamentalGroups §§IG.1.4, IG.3.1;
LocalGaloisDeformationRings §F; DeformationAndDerivedPatchingAlgebra §§4.2, 4.4.

## Layer 12: examples and range checks

This layer constructs the examples that show which hypotheses and ranges the theorems need: the
abelianization unipotent representations, Morita's extensions, the augmentation-ideal extension,
the rank-two classifications in genus one and in genus at least two, large-rank semisimple examples,
small free-group examples and rigid local systems on punctured spheres.

### 12.1 Abelianization unipotent representations

For `G` a free group `F_N` or a closed genus-`g` surface group, let `H = G^{ab} ⊗ ℂ` and
`a : G → H` the abelianization map. Define `U_G(γ)(v, t) = (v + t a(γ), t)` on `H ⊕ ℂ`. Prove that
`U_G` is a unipotent representation of rank `dim H + 1` (`N + 1`, respectively `2g + 1`), that its
actual conjugacy class is fixed by every automorphism of `G` (conjugation by the block-diagonal
action of the automorphism on `H ⊕ ℂ` implements precomposition, and inner automorphisms act
trivially on `H`), and that for `H ≠ 0` it has infinite image and is a nonsplit extension of trivial
representations, an invariant complement to `H` forcing `a = 0` (Landesman–Litt, Example 10.1.6(3),
p. 51, and Remark 10.2.7, pp. 52–53). *Needs:* §§0.1, 2.1.

- The action is `(v, t) ↦ (v + t a(γ), t)`; the representation law is additivity of `a`.
- The block-diagonal action of an automorphism `α` conjugates `U_G` to `U_G ∘ α`.
- The extension splits exactly when `a = 0`.

**Checks.**

- For the two basis elements of `F₂` the matrices are `I₃ + E₁₃` and `I₃ + E₂₃`.
- For `F₀` the representation is the trivial one-dimensional representation.
- For `F₁ = ℤ` the generator acts by `[[1, 1], [0, 1]]`, of infinite order with a non-split invariant
  line, though its semisimplification is trivial.

### 12.2 Morita's primitive class

Prove that for a closed surface of genus `g ≥ 3` with `H = H₁(Σ_g, ℚ)` and the symplectic inclusion
`H → ∧³H`, `ω ∧ −` with `ω` the symplectic class, there is a nonzero class in `H¹(Mod_g, ∧³H/H)`,
hence a non-split extension `0 → ∧³H/H → W → ℚ → 0` and a nontrivial deformation of the split
representation (Landesman–Litt, Example 10.1.6(1), p. 50; Morita 1993). The route is Morita's
extension of the Johnson homomorphism to a crossed homomorphism on the whole mapping class group.
*Needs:* §§0.2–0.3, 1.1.

**Checks.**

- At `g = 2`, `H → ∧³H` is an isomorphism (`dim ∧³H = 4 = dim H`), so the quotient is zero and
  carries no nonzero class; the genus bound is needed.
- Scaling a cocycle by `t` gives a family of extensions whose special fibre `t = 0` is split.

### 12.3 The augmentation-ideal extension

Let `I` be the augmentation ideal of `ℚ[π₁(Σ_{g,n−1}, x)]`, with the based action of `PMod(g, n)`.
Prove that for `n ≥ 1` and `2g − 2 + (n − 1) > 0` the sequence `0 → I²/I³ → I/I³ → I/I² → 0` of
`PMod(g, n)`-representations does not split (Landesman–Litt, Example 10.1.6(2), p. 51). The
point-pushing subgroup (§0.5) acts trivially on `I/I²` and on `I²/I³`, and `α` acts on `I/I³` by
`x ↦ x + [α − 1, x]`; an equivariant splitting would force `[α − 1, x] ∈ I³` for all `α` and `x ∈ I`,
which fails because the commutator `I/I² × I/I² → I²/I³` is nonzero for a nonabelian surface group.
*Needs:* §§0.1, 0.5.

**Checks.**

- `(g, n) = (1, 1)`: the group is `ℤ²`, the completed group algebra is commutative, and the truncated
  logarithm gives an `Aut(ℤ²)`-equivariant splitting; this case is excluded by `2g − 3 + n > 0`.
- The terms are `I²/I³` and `I/I²`, not the untruncated augmentation ideal.
- For `n − 1 ≥ 1` the graded pieces are `H` and `H ⊗ H`, and `[a, b] = a ⊗ b − b ⊗ a ≠ 0` for
  independent `a, b`.

### 12.4 Morita's pointed extension

Prove that for `g ≥ 2`, `H¹(Mod_{g,*}; H₁(Σ_g; ℤ))` is infinite cyclic, generated by the class of
Morita's crossed homomorphism `f`, whose image under restriction to the point-pushing subgroup is
`2 − 2g` times the generator of `Hom(π₁(Σ_g), H₁(Σ_g))^{Mod_g} ≅ ℤ` given by the intersection pairing
(Morita 1989, Proposition 6.4, p. 804, Mor89 line 886). Over `ℚ` the corresponding non-split
extension `0 → H₁(Σ_g, ℚ) → W → ℚ → 0` restricts on the point-pushing subgroup, after rescaling by
`1/(2 − 2g)`, to the representation `U` of §12.1 (Landesman–Litt, Example 10.1.6(3), p. 51). The
surface example §12.1 does not depend on this global extension. *Needs:* §§0.5, 1.1, 12.1.

**Checks.**

- The normalization factor `2 − 2g` is nonzero for `g ≥ 2`, so the rational rescaling exists; the
  integral class itself restricts to a non-primitive multiple.
- The integral class and its rational restriction are distinct objects: the former generates a
  group isomorphic to `ℤ`, the latter is defined only after inverting `2g − 2`.

### 12.5 Rank two in genus one

Prove that for `g = 1` and `n ≥ 1` there are semisimple MCG-finite representations of `π₁(Σ_{1,n})`
into `SL₂(ℂ)` with infinite special-dihedral image, and non-split reducible MCG-finite
representations of rank two with infinite image (Landesman–Litt, Remark 10.2.1, p. 52;
Biswas–Gupta–Mj–Whang, Theorem B; Cousin–Heu, Theorem B, p. 6). For instance on `π₁(Σ_{1,1})`, free
on `a, b`, send `a ↦ diag(λ, λ⁻¹)` and `b ↦ [[0, 1], [−1, 0]]` with `λ` not a root of unity: the
image lies in the infinite dihedral group, the fundamental group of the complement of the curve `a`
is generated by `a` and `b a b⁻¹`, which map to `diag(λ, λ⁻¹)` and `diag(λ⁻¹, λ)`, so the restriction
there is diagonal, and the representation is irreducible with infinite image; Cousin–Heu's `ρ_{μ,c}` give the
non-split examples. *Needs:* §2.1.

**Checks.**

- In `ρ_{μ,c}` some `cᵢ ≠ 0` since `Σ cᵢ = 1`, so `ρ(γᵢ)` is a nontrivial unipotent: the image is
  infinite and the representation reducible and non-split.
- Rank two in genus one has `r² = 4 ≥ g + 1 = 2`, outside §9.3.
- These are representations of punctured tori; the closed torus group is abelian and has no
  irreducible representation of rank two.

### 12.6 Rank two in genus at least two

Prove that for `g ≥ 2` and every `n ≥ 0`, every MCG-finite representation `π₁(Σ_{g,n}) → GL₂(ℂ)` has
finite image (Landesman–Litt, Remark 10.2.2, p. 52). Reducible ones are sums of finite characters by
Cousin–Heu, Theorem B. For irreducible `ρ`, the determinant is a finite character (§3.3) with a
finite-order square root `χ` (the abelianization is free abelian); `ρ ⊗ χ⁻¹` lands in `SL₂(ℂ)` and is
MCG-finite on the finite-index stabilizer of `χ`, hence finite by Biswas–Gupta–Mj–Whang, Theorem A.
For `g = 2, 3` this goes beyond §9.3, which needs `r² < g + 1`. *Needs:* §§2.1, 3.1, 3.3.

**Checks.**

- `r = 2` and `g = 2, 3`: `r² ≥ g + 1`, outside §9.3, so the statement is a genuine improvement there.
- `g = 1`: false by §12.5.
- The square root exists because a character of a free abelian group into `ℂ^×` has square roots of
  finite order when it has finite order.

### 12.7 Large-rank semisimple examples

Prove that for every `g ≥ 2` there is a semisimple MCG-finite representation of `π₁(Σ_g)` with
infinite image, of rank growing exponentially in `g` (Landesman–Litt, Example 10.2.4, p. 52). One
route: for an odd prime `p ≫ 0` the integral quantum `SO(3)` representation `ρ_p` of the pointed
mapping class group `PMod(g, 1)` restricts on the point-pushing subgroup to a projective
representation whose image contains a nonabelian free group (Koberda–Santharoubane, Corollaries 4.3
and 4.4; Biswas–Koberda–Mj–Santharoubane, Theorem 5.1); composing with a faithful representation of
`PGL` gives an MCG-finite representation by §3.2, and its semisimplification is MCG-finite by §3.1
and still of infinite image, because a nonabelian free group has no finite-index subgroup mapping
injectively into a unipotent group. The quantum representations and the free-subgroup statement are
part of this target. *Needs:* §§0.5, 3.1, 3.2.

**Checks.**

- Semisimplification can destroy infinite image in general (the unipotent example of §12.1 becomes
  trivial); here it does not, because of the free subgroup.
- The rank is exponential in `g`, far above the range `r² < g + 1` of §9.3, so there is no
  contradiction.

### 12.8 Small free groups

Prove that for `F₁ = ℤ` a character of infinite order has infinite image and an `Out(F₁)`-orbit of
size two, and that for `F₂` the representation of §12.5 on `π₁(Σ_{1,1}) = F₂` is semisimple of infinite
image with finite `Out(F₂)`-orbit, since `Out(F₂)` contains the orientation-preserving mapping class
group of `Σ_{1,1}` with index two (Landesman–Litt, Remark 10.2.7, pp. 52–53; Farb–Margalit, §8.2).
*Needs:* §§2.1, 12.5; Mathlib `FreeGroup`.

**Checks.**

- `Out(ℤ) = {±1}`, and inversion sends the character `λ` to `λ⁻¹`, a different class unless
  `λ = ±1`.
- For `F₁` and `r = 1` the theorem of §9.7 needs `1 < g + 1` with `N = 1 = 2g + 1`, so `g = 0`, and
  `r = 1` is outside its range.

### 12.9 Rigid local systems on punctured spheres

Prove that a physically rigid irreducible local system on `ℙ¹ ∖ {x₁, …, x_n}`, one determined up to
global conjugacy by its ordered local conjugacy classes, is MCG-finite: pure mapping classes preserve
each local class, so the orbit is a single class (Landesman–Litt, Example 10.2.5, p. 52; Katz,
Rigid Local Systems). Every rank-one local system is physically rigid, so for `n ≥ 3` a character
with a local monodromy of infinite order is an infinite-image example. *Needs:* §§0.1, 2.1.

**Checks.**

- `n = 3`: `PMod(0, 3)` is trivial and every representation is MCG-finite.
- On `Σ_{0,4}` the character `c₁ ↦ 2, c₂ ↦ 1/2, c₃ ↦ 1, c₄ ↦ 1` is determined by its local
  monodromies, hence MCG-finite, with infinite image.

### Dependencies

Layers 0–3, 5 and 9; Mathlib `FreeGroup`.

## Downstream consumers

- **MordellLawrenceVenkatesh** uses Layer 0 (punctured surfaces, Dehn twists and their action on
  homology, point-pushing, the Birman sequence and capping) for its monodromy theorem.
- Roadmaps on mapping class groups and finite covers of moduli spaces use Layer 6's higher Prym
  rank bound and the Putman–Wieland theorem for small groups.
- Roadmaps on rigid local systems and variations of Hodge structure use Layer 5's rank bound,
  Artinian vanishing and rigidity on versal families, and Layer 1's representation schemes.

## Worked examples

- **The unipotent example against the main theorem.** On a closed surface of genus `g`, the
  representation `U` of §12.1 has rank `2g + 1`, is fixed by the mapping class group and has infinite
  image. The main theorem §9.3 needs `(2g + 1)² < g + 1`, which never holds, so there is no
  contradiction; the socle of `U` is `H` and the quotient `ℂ` (§9.1), and the extension does not
  split, the situation §9.2 excludes in low rank.
- **Putman–Wieland for double covers of a genus-two surface.** For `g = 2` and `H = ℤ/2`, `#H = 2 < 4`,
  so §6.7 applies: for a connected double cover `Σ₃ → Σ₂`, no nonzero class of `H₁(Σ₃, ℂ)` has finite
  orbit under the stabilizer `Γ ⊂ PMod(2, 1)`. The isotypic decomposition is
  `H₁(Σ₃) = H₁(Σ₃)^{triv} ⊕ H₁(Σ₃)^{sgn}` of dimensions `4` and `2`, and §6.5 requires every nonzero
  stable subspace of either to have dimension at least `2·2 − 2 = 2`, which both dimensions satisfy.
- **The genus-eight rank-two chain.** For `g = 8` and an irreducible unitary MCG-finite `ρ` of rank
  two (`4 < 9`): §4.3 realizes `ρ` on a versal family; §5.9 makes the realization strongly rigid since
  `r² − 1 = 3 < 8`; §7.2–§7.3 give quasi-unipotent boundary monodromy; §7.4–§7.5 make `ρ` integral;
  §7.6 makes every conjugate unitary since `2 < 2√9 = 6`; §7.7 gives finite image.
- **Nielsen tuples in rank one.** For `N = 2`, `g = 1`, `r = 1` (`1 < 2`), a pair `(λ, μ)` of nonzero
  complex numbers satisfies the finiteness hypothesis of §9.8 exactly when both are roots of unity:
  `d`, `τ` and `ε` generate all `(λ^a μ^b, λ^c μ^d)` with `[[a, b], [c, d]] ∈ GL₂(ℤ)`, finitely many only for
  torsion values, in agreement with §9.7.

## Corrections to the sources

- Landesman–Litt, Lemma 2.0.1, p. 12: the second fundamental group is `PMod(g, n + 1)`, not
  `PMod(g, n)`; the kernel of `PMod(g, n + 1) → PMod(g, n)` is the `n`-punctured surface group (§2.4).
- Landesman–Litt, Lemma 2.2.2, pp. 14–15: the projective extension is unique only among extensions
  whose values are classes of actual intertwiners; the `Q₈ × C₂` check of §3.4 shows arbitrary
  extensions are not unique. The authors' erratum deletes the uniqueness clause.
- Landesman–Litt, Proposition 2.3.4, pp. 16–18: the obstruction is first killed in
  `H¹(Q, H¹(N, μ))` and only then as an inflated class from `H²(Q, μ)`, after a second application
  of the killing lemma; the killing lemma is used in the pointed form of §4.1, so the based fibre
  survives (the authors' erratum gives the pointed form).
- Landesman–Litt, Lemma 2.4.2, pp. 19–20: the hypothesis `g ≥ 1` is needed, since the proof uses
  Corollary 2.3.5 (§4.5; the authors' erratum adds it).
- Landesman–Litt, Lemma 7.2.5, p. 36: the boundary-replaced cover has genus `g′`, not `g` (§6.3).
- Landesman–Litt, Theorem 8.5.3, p. 43: Lemma 8.5.2 needs a connected finite-type family of actual
  fixed-determinant representations; §8.3 takes the connected component of the representation scheme
  containing the nonabelian Hodge deformation (§§1.4, 5.8).
- Landesman–Litt, Lemma 8.6.1, p. 44: the finite-index subgroup must stabilize the actual class of
  `ρ` and the covering data, not only the constituents of `Hom(ρ₂, ρ₁)` (§9.2).
- Landesman–Litt, Corollary 9.1.4, pp. 45–46: "integral PVHS" is read in the `O_K` sense of §5.1,
  and the step (4) ⇒ (1) uses Landesman–Litt 2022, Theorem 1.2.5 (§10.4).
- Landesman–Litt, Example 9.2.3, pp. 48–49: surjections exist for every `p`, non-liftability only for
  `p ∤ m(r)` (§11.4; the authors' erratum restricts it).
- Landesman–Litt, Remarks 9.2.5–9.2.6, p. 49: non-flatness does not imply failure of the
  complete-intersection property (§11.6; the authors' erratum deletes the inference).
- Landesman–Litt, Example 10.1.6(2), p. 51: the augmentation sequence splits for `(g, n) = (1, 1)`;
  it is non-split exactly in the range `2g − 3 + n > 0` proved in §12.3.
- Landesman–Litt, Proposition 8.2.1 and Lemma 8.3.3, pp. 39–40: Proposition 8.2.1 gives strong
  rigidity only; rigidity follows after quasi-unipotence of local monodromy (§§5.9, 7.4; the authors'
  erratum fixes the order), and the compactification needs a log resolution after normalization
  (§7.2).
- Landesman–Litt, Remark 10.2.2, p. 52: the argument shows finiteness of rank-two MCG-finite
  representations for every `g ≥ 2`, not only `g = 2, 3` (§12.6).
- Aramayona–Souto, proof of Lemma 2.5, p. 11: the restriction of the induced representation contains
  `ρ` as a direct summand; it is not a sum of copies of `ρ` (§7.1, with the `A₃ ⊂ S₃` check).
- Landesman–Litt 2022, Lemma 7.5.1, p. 53, and Cousin–Heu, Theorem A: the statements need a
  nonabelian fundamental group, respectively the hyperbolic range; §§11.5 and 9.5 state them there.

## References

- **LL24** A. Landesman, D. Litt, *Canonical representations of surface groups*, Annals of
  Mathematics 199 (2024); [arXiv:2205.15352v4](https://arxiv.org/abs/2205.15352v4). Page numbers are
  those of the arXiv version.
- **LL-P04** A. Landesman, D. Litt, author-adopted erratum P04 for *Canonical representations of
  surface groups*, [author page](https://www.daniellitt.com/published-paper-reviews.html); only the
  authors' erratum entries are used, not the reviews on the same page.
- **LL22** A. Landesman, D. Litt, *Geometric local systems on very general curves and isomonodromy*;
  [arXiv:2202.00039v2](https://arxiv.org/abs/2202.00039v2).
- **KP20** C. Klevdal, S. Patrikis, *G-rigid local systems are integral*;
  [arXiv:2009.07350v2](https://arxiv.org/abs/2009.07350v2).
- **EG18** H. Esnault, M. Groechenig, *Cohomologically rigid local systems and integrality*, Selecta
  Math. 24 (2018); [arXiv:1711.06436](https://arxiv.org/abs/1711.06436).
- **CH19** G. Cousin, V. Heu, *Algebraic isomonodromic deformations and the mapping class group*;
  [arXiv:1612.05779v4](https://arxiv.org/abs/1612.05779v4).
- **AS16** J. Aramayona, J. Souto, *Rigidity phenomena in the mapping class group*, Handbook of
  Teichmüller theory VI; [author copy](https://www.math.univ-toulouse.fr/~jaramayo/rigidity-survey.pdf).
- **LLSS20** W. Li, D. Litt, N. Salter, P. Srinivasan, *Surface bundles and the section conjecture*;
  [arXiv:2010.07331v1](https://arxiv.org/abs/2010.07331v1).
- **Moc06** T. Mochizuki, *Kobayashi–Hitchin correspondence for tame harmonic bundles and an
  application*, Astérisque 309 (2006); [arXiv:math/0411300](https://arxiv.org/abs/math/0411300).
- **Sim90** C. Simpson, *Harmonic bundles on noncompact curves*, J. Amer. Math. Soc. 3 (1990),
  713–770.
- **MS80** V. B. Mehta, C. S. Seshadri, *Moduli of vector bundles on curves with parabolic
  structures*, Math. Ann. 248 (1980), 205–239.
- **Tim87** K. Timmerscheidt, *Mixed Hodge theory for unitary local systems*, J. Reine Angew. Math.
  379 (1987), 152–171.
- **SZ85** J. Steenbrink, S. Zucker, *Variation of mixed Hodge structure I*, Invent. Math. 80 (1985),
  489–542.
- **PS08** C. Peters, J. Steenbrink, *Mixed Hodge Structures*, Ergebnisse 52, Springer (2008).
- **Sch19** C. Schnell, *An overview of Morihiko Saito's theory of mixed Hodge modules*;
  [arXiv:1405.3096v1](https://arxiv.org/abs/1405.3096v1).
- **Del70** P. Deligne, *Équations différentielles à points singuliers réguliers*, Lecture Notes in
  Math. 163, Springer (1970).
- **FM12** B. Farb, D. Margalit, *A Primer on Mapping Class Groups*, Princeton (2012).
- **Kor02** M. Korkmaz, *Low-dimensional homology groups of mapping class groups: a survey*;
  [arXiv:math/0307111](https://arxiv.org/abs/math/0307111).
- **Hat02** A. Hatcher, *Algebraic Topology*, Cambridge (2002);
  [author copy](https://pi.math.cornell.edu/~hatcher/AT/AT.pdf).
- **HS53** G. Hochschild, J.-P. Serre, *Cohomology of group extensions*, Trans. Amer. Math. Soc. 74
  (1953), 110–134.
- **Deb01** O. Debarre, *Higher-Dimensional Algebraic Geometry*, Universitext, Springer (2001).
- **Sik12** A. Sikora, *Character varieties*, Trans. Amer. Math. Soc. 364 (2012);
  [arXiv:0902.2589](https://arxiv.org/abs/0902.2589).
- **CR62** C. W. Curtis, I. Reiner, *Representation Theory of Finite Groups and Associative Algebras*,
  Interscience (1962).
- **Wat89** W. C. Waterhouse, *Two generators for the general linear groups over finite fields*,
  Linear and Multilinear Algebra 24 (1989), 227–230.
- **Nie24** J. Nielsen, *Die Isomorphismengruppe der freien Gruppen*, Math. Ann. 91 (1924), 169–209.
- **MKS04** W. Magnus, A. Karrass, D. Solitar, *Combinatorial Group Theory*, second edition, Dover
  (2004).
- **Mor89** S. Morita, *Families of Jacobian manifolds and characteristic classes of surface bundles
  I*, Ann. Inst. Fourier 39 (1989), 777–810.
- **Mor93** S. Morita, *The extension of Johnson's homomorphism from the Torelli group to the mapping
  class group*, Invent. Math. 111 (1993), 197–224.
- **BGMW17** I. Biswas, S. Gupta, M. Mj, J. P. Whang, *Surface group representations in `SL₂(ℂ)` with
  finite mapping class orbits*; [arXiv:1707.00071v4](https://arxiv.org/abs/1707.00071v4).
- **KS16** T. Koberda, R. Santharoubane, *Quotients of surface groups and homology of finite covers
  via quantum representations*, Invent. Math. 206 (2016);
  [arXiv:1510.00677](https://arxiv.org/abs/1510.00677).
- **BKMS18** I. Biswas, T. Koberda, M. Mj, R. Santharoubane, *Representations of surface groups with
  finite mapping class group orbits*, New York J. Math. 24 (2018);
  [arXiv:1702.03622](https://arxiv.org/abs/1702.03622).
- **LL19** B. Lawrence, D. Litt, *Representations of surface groups with universally finite mapping
  class group orbit*; [arXiv:1907.03941v3](https://arxiv.org/abs/1907.03941v3).
- **Kat96** N. M. Katz, *Rigid Local Systems*, Annals of Mathematics Studies 139, Princeton (1996).
