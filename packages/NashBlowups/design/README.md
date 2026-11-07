# Roadmap: Nash blowups

**Summary.** For a reduced scheme `X` of finite type over a field `k`, pure of dimension `d` and
with dense smooth locus, the Nash blowup `ν : X* → X` replaces every point by the limits of the
tangent spaces at nearby smooth points. This roadmap constructs it intrinsically, as the reduced
closure of the smooth locus in the Grassmannian of locally free rank-`d` quotients of the sheaf of
differentials `Ω_{X/k}`, together with its universal rank-`d` quotient `ν*Ω_{X/k} → L` (the Nash
cotangent bundle), and builds the normalised Nash blowup `ν̄ : X̄* → X` and both iterations. It
proves the universal property, properness and the modification property, locality, compatibility
with field extensions, the description by the Gauss map of an embedded variety, and Nobile's theorem
that the Nash blowup is locally the blowup of an ideal (with the Jacobian ideal for a hypersurface).
The headline theorems are the intrinsic triviality criterion (`ν` is an isomorphism iff `Ω_{X/k}`
has a locally free quotient of rank `d`), Nobile's theorem in characteristic zero (`ν` is an
isomorphism iff `X` is smooth), the theorem of Duarte and Núñez-Betancourt for normal `X` over a
perfect field of characteristic `p`, the corresponding criteria for `ν̄`, and the principle by which
a singular `X` reappearing as an open subscheme of an iterate is never resolved — the form in which
the theorem of Castillo, Duarte, Leyton-Álvarez and Liendo (iterated Nash blowups fail to resolve
singularities in dimension at least four) is applied.

## Scope and ownership

**This roadmap owns** the Nash modification of a quasi-coherent sheaf of finite type along a dense
open on which it is locally free (§1.2, after Oneto–Zatini as presented in Nobile's notes), its
universal property and its Plücker form; the Nash blowup of a `k`-scheme, its Nash cotangent bundle,
its iterates and the predicate that the iteration resolves `X`; the normalised Nash blowup, its
iterates and the corresponding predicate; the Gauss-map description, the blowup description and the
hypersurface case; the smoothness criteria (Layers 4 and 5) together with the commutative algebra
they need and that no other roadmap plans in this generality: the Lie derivative on the Kähler
differentials of an arbitrary algebra over a field, in every characteristic, stability of
annihilators, Seidenberg's lemma on derivation-stable ideals, coordinates from a free quotient of
the differentials, the `p`-monomial operators and the freeness of the Frobenius pushforward of a
normal local ring; and the interface statements of Layer 0 on Tau Ceti's sheaf of relative
differentials (the comparison map, base change, closed immersions, the rank on the smooth locus),
on Grassmannians along a surjection, on cotangent spaces at points with separable residue field and
on smoothness at closed points.

**Supplied elsewhere and cited.** The Grassmannian of locally free rank-`r` quotients of a
quasi-coherent sheaf of finite type, its universal quotient, classifying maps, base change, properness
over an affine base and the Plücker closed immersion are AlgebraicModuliForArithmeticGeometry §1.3
(`coherentGrassmannian`, `plucker`); the normalisation of a reduced scheme (as the scheme case of the
normalisation of a locally Noetherian Deligne–Mumford stack), its universal property, its finiteness
over a Nagata base and the flat base change of scheme-theoretic images are
AlgebraicModuliForArithmeticGeometry §5.4. Dimension theory of schemes of finite type over a field is
SchemeAndStackFoundations §0.7; descent of smoothness along field extensions §0.11; depth and
`bijective_of_depth` §0.17; universal homeomorphisms §0.23; normal schemes and their codimension-one
stalks §0.30; modifications with witness §4.11; regular schemes, `regularLocus_eq_smoothLocus` over a
perfect field and Serre's normality criterion §4.13. The converse of Kunz's theorem
(`isRegular_of_frobenius_flat`) is EnhancedDerivedSheaves §E1.6. The theory of `p`-bases of fields
(a family is a `p`-basis exactly when its differentials form a basis of `Ω¹`) is
DerivedDeRhamCohomology §0.23. The Lie derivative on the one-forms of a field over a subfield of
characteristic zero is DiophantineApproximationAndTranscendence §5.6 (`lieDerivativeOneForm`, the unique
operator of `exists_lieDerivativeOneForm`); §4.2 differs in constructing it for an arbitrary `k`-algebra in
every characteristic, through `J/J²`, because §4.4 applies it to local rings, and it agrees with that
operator on fields of characteristic zero. The sheaf `Ω_{X/R}` of a scheme over a ring, its universal
derivation, quasi-coherence, finite presentation, restriction to open subschemes, finite local freeness and rank
on smooth schemes, pure dimension, the blowup of a scheme along an ideal sheaf with its universal
property, exterior powers of sheaves of modules and the reduced-source factorisation through a
vanishing ideal are in the pinned Tau Ceti; the smooth locus, relative normalisation, scheme-theoretic
images, the module Grassmannian functor and Kähler differentials of algebras are in the pinned Mathlib.

**Not in this roadmap.** The combinatorial description of Nash blowups of toric varieties by
logarithmic Jacobian ideals and the existence of the normal toric varieties of dimension `d ≥ 4` that
reappear in their own (second) normalised Nash blowup belong to a toric roadmap that consumes Layers 2,
3, 6 and 7; Nash blowups of higher order (the Grassmannian of quotients of the sheaves of principal
parts) and the surface theory of normalised Nash transformations (Hironaka, Spivakovsky) are a Part II
built on Layers 1, 2 and 6; the comparison of the Nash blowup with the blowup of the Fitting ideal
`Fitt_d(Ω_{X/k})`, which is an isomorphism only when the pulled-back differentials have projective
dimension at most one, belongs to that Part II. Nash blowups over a base other than a field are not
planned.

## Conventions

- `k` is a field and `X` a `k`-scheme, `X → Spec k` locally of finite type, in one universe. The
  **standing hypotheses** (the *Setting*) are: `X` reduced, `X → Spec k` separated and of finite type,
  `X` pure of dimension `d` (Tau Ceti's `TauCeti.IsPureDimensional d`), and the smooth locus `X_sm`
  (Mathlib's `Scheme.Hom.smoothLocus` of `X → Spec k`) dense in `X`. Theorem §1.1 shows the last
  condition is geometric reducedness, and that over a perfect field it follows from reducedness.
- `Ω_{X/k}` is Tau Ceti's `AlgebraicGeometry.Scheme.relativeDifferentials` of `X` over `Spec k`.
- **Grassmannians parametrise quotients.** `Gr_r(F) → X` represents locally free rank-`r` quotients
  `h*F → Q` modulo isomorphism of the target, as in Mathlib's `Module.Grassmannian` and
  AlgebraicModuliForArithmeticGeometry §1.3. A `d`-dimensional tangent space `T_x ⊆ kⁿ` of an
  embedded variety is the quotient `(kⁿ)* = ⊕ k·dx_i → Ω_{X/k} ⊗ κ(x)`, not the subspace `T_x` and
  not the conormal subspace. Witness: for the line `y = 2x` in `𝔸²`, the tangent line spanned by
  `(1, 2)` is the quotient with `dx ↦ 1`, `dy ↦ 2`, homogeneous coordinates `[1 : 2]` on `Gr_1(k²) = ℙ¹`;
  the conormal convention would give `[2 : −1]`.
- **Smooth locus of dimension `d`.** `X_sm^{(d)} ⊆ X_sm` is the open subscheme of smooth points at which
  `Ω_{X/k}` has rank `d` (§0.3); it equals `X_sm` when `X` is pure of dimension `d`. Using it makes the
  Nash blowup a total construction, so that the iterates are defined without carrying proofs.
- **Reduced closures** are Mathlib's scheme-theoretic image `Scheme.Hom.image` of a morphism from a
  reduced scheme, which is reduced with support the closure of the image.
- **Open subschemes isomorphic to `X`** means isomorphic over `k`.
- "Smooth" means smooth over `k`; "singular" means not smooth over `k`; "regular" refers to local rings.
- Names in italics are this roadmap's proposed declaration names; names in code are declarations of
  the pinned libraries or of other roadmaps.

## Exact supplier contracts

### From Mathlib

- `AlgebraicGeometry.Scheme.Hom.smoothLocus` (`Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean`), with
  `Scheme.Hom.isOpen_smoothLocus`, `Scheme.Hom.smoothLocus_eq_top_iff`,
  `Scheme.Hom.preimage_smoothLocus_eq` and `Scheme.Hom.dense_smoothLocus_of_perfectField` (a reduced
  scheme locally of finite presentation over a perfect field has dense smooth locus). The smooth locus
  is the set of points whose stalk map is formally smooth; it says nothing about relative dimension.
- `AlgebraicGeometry.GeometricallyReduced` (`Mathlib/AlgebraicGeometry/Geometrically/Reduced.lean`):
  every base change to a field is reduced.
- `AlgebraicGeometry.Scheme.Hom.image`, `Scheme.Hom.imageι`, `Scheme.Hom.toImage`
  (`Mathlib/AlgebraicGeometry/IdealSheaf/Subscheme.lean`), `Scheme.Hom.ker` and `Scheme.Hom.support_ker`
  (the support of the kernel of a quasi-compact morphism is the closure of its image;
  `Mathlib/AlgebraicGeometry/IdealSheaf/Basic.lean`); `IsClosedImmersion.lift` and
  `isIso_of_isClosedImmersion_of_surjective` (a surjective closed immersion into a reduced scheme is an
  isomorphism; `Mathlib/AlgebraicGeometry/Morphisms/ClosedImmersion.lean`);
  `ext_of_isDominant_of_isSeparated` (morphisms from a reduced scheme into a separated one agreeing
  after a dominant map are equal; `Mathlib/AlgebraicGeometry/Morphisms/Separated.lean`).
- `AlgebraicGeometry.Scheme.Hom.normalization` and `Scheme.Hom.normalizationPullback` with its
  instance that the comparison is an isomorphism along a smooth base change
  (`Mathlib/AlgebraicGeometry/Normalization.lean`).
- `LocallyOfFiniteType.jacobsonSpace` (`Mathlib/AlgebraicGeometry/Morphisms/FiniteType.lean`) and
  `nonempty_inter_closedPoints` (`Mathlib/Topology/JacobsonSpace.lean`): a nonempty locally closed
  subset of a Jacobson space contains a closed point.
- `AlgebraicGeometry.tfae_universallyInjective`
  (`Mathlib/AlgebraicGeometry/Morphisms/UniversallyInjective.lean`): injective with purely inseparable
  residue field extensions is universally injective.
- `Module.Grassmannian` (`Mathlib/RingTheory/Grassmannian.lean`, quotient convention).
- `KaehlerDifferential.tensorKaehlerEquiv` (`Mathlib/RingTheory/Kaehler/TensorProduct.lean`),
  `KaehlerDifferential.mapBaseChange_surjective` and
  `KaehlerDifferential.exact_kerCotangentToTensor_mapBaseChange` (`Mathlib/RingTheory/Kaehler/Basic.lean`),
  `retractionKerCotangentToTensorEquivSection` (`Mathlib/RingTheory/Smooth/Kaehler.lean`), `Derivation`,
  `Algebra.FormallyEtale` with `Algebra.FormallyEtale.of_isSeparable` (`Mathlib/RingTheory/Etale/Field.lean`), `IsRegularLocalRing`, `IsRegularRing`
  (`Mathlib/RingTheory/RegularLocalRing/Defs.lean`), `frobenius`, `IsIntegrallyClosed`,
  `IsDiscreteValuationRing`, `PerfectField`, `PerfectClosure`, `IsPurelyInseparable`.

### From Tau Ceti

- `AlgebraicGeometry.Scheme.relativeDifferentials` with `Scheme.relativeDifferentialsHomEquiv`
  (`TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean`): for `X` over `Spec R`, the
  sheafification of `U ↦ Ω[Γ(X, U)⁄R]` with its universal property among `R`-derivations.
  `TauCeti.AlgebraicGeometry.isQuasicoherent_relativeDifferentials` and
  `isFinitePresentation_relativeDifferentials` (`…/Differentials/Quasicoherent.lean`);
  `TauCeti.AlgebraicGeometry.relativeDifferentialsRestrictIso` (restriction along an open immersion over
  `Spec R`; `…/Differentials/Restriction.lean`); `TauCeti.AlgebraicGeometry.isFiniteLocallyFree_relativeDifferentials`
  (smooth over `Spec R`; `…/Differentials/LocallyFree.lean`);
  `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.rank_relativeDifferentials_apply` (rank `n` on a
  scheme smooth of relative dimension `n`; `…/Differentials/Rank.lean`). The base is the affine scheme
  `Spec R`; nothing is assumed about a general base.
- `TauCeti.AlgebraicGeometry.smoothOfRelativeDimension_iff_ringKrullDim_stalk_eq`
  (`TauCeti/AlgebraicGeometry/Morphisms/Smooth/RelativeDimension.lean`): over a field, smooth of relative
  dimension `n` iff smooth with `n`-dimensional local rings at closed points.
- `TauCeti.AlgebraicGeometry.isRegularLocalRing_stalk_of_smooth`
  (`TauCeti/AlgebraicGeometry/Morphisms/Smooth/Regular.lean`).
- `AlgebraicGeometry.Scheme.Hom.smooth_smoothLocus_ι_comp` and
  `Scheme.Hom.preimage_smoothLocus_le_smoothLocus_pullback_snd`
  (`TauCeti/AlgebraicGeometry/Morphisms/Smooth/Locus.lean`): the smooth locus is smooth and its preimage
  under a base change lies in the smooth locus of the base change (an inclusion, not an equality).
- `TauCeti.IsPureDimensional` (`TauCeti/Topology/PureDimension.lean`; every irreducible component has
  the given Krull dimension; the empty space is pure of every dimension) and
  `TauCeti.AlgebraicGeometry.isPureDimensional_pullback_Spec_map_iff_of_field`
  (`TauCeti/AlgebraicGeometry/Scheme/KrullDimension.lean`).
- `AlgebraicGeometry.Scheme.IdealSheafData.vanishingIdeal_le_ker_of_range_subset`
  (`TauCeti/AlgebraicGeometry/IdealSheaf/VanishingIdeal.lean`): a morphism from a reduced scheme with
  image in a closed set kills its vanishing ideal.
- `AlgebraicGeometry.Scheme.IdealSheafData.blowup`, `blowupToBase`, `blowupLift`, `blowup_hom_ext`,
  `isIso_blowupToBase_iff` (the blowup map is an isomorphism iff the ideal is effective Cartier) and
  `isProper_blowupToBase` (`TauCeti/AlgebraicGeometry/Blowup/`).
- `SheafOfModules.exteriorPower` (`TauCeti/Algebra/Category/ModuleCat/Sheaf/ExteriorPower/Basic.lean`).

### From TauCetiRoadmap.AlgebraicModuliForArithmeticGeometry

- §1.3 `coherentGrassmannian`: for a quasi-coherent `E` of finite type on any `S` and `r ≥ 0`, the scheme
  `Gr_r(E) → S` with universal locally free rank-`r` quotient, unique classifying maps, the base change
  identification `Gr_r(f*E) ≅ Gr_r(E) ×_S T` with its quotient, `Gr_1(E) ≅ P(E)`, and properness over
  `Spec R` for `E` the sheaf of a finite `R`-module. Properness over a general `S` follows because
  properness is local on the target. `plucker`: the closed immersion `Gr_r(E) → P(∧^r E)` over `S`,
  natural in the quotient, pulling `O(1)` back to `det Q`.
- §5.4 `ArithmeticModuli.DMNormalization.stack` and `ArithmeticModuli.DMNormalization.finite`: for a
  scheme `X` with locally finitely many irreducible components, the normalisation `X^ν → X` agrees with
  Mathlib's `Scheme.Hom.normalization` of the inclusion of the generic points; it is normal, integral,
  an isomorphism when `X` is normal, compatible with smooth base change (in particular open immersions),
  lifts uniquely the morphisms from normal schemes that map generic points of irreducible components to
  generic points of irreducible components, and is finite for `X` of finite type over a Nagata scheme
  (for instance `Spec k`). §5.4 `ArithmeticModuli.DMSchematicClosure.stack`: for scheme morphisms it is
  `Scheme.Hom.image`, and the image of a quasi-compact morphism commutes with flat base change.

### From TauCetiRoadmap.SchemeAndStackFoundations

- §0.7 `dimension_theory_finiteType` and `topologicalKrullDimAt_eq_stalk`: for `X` locally of finite type
  over `k`, `dim O_{X,x} + trdeg_k κ(x) = dim_x X`, and `dim_x X` is the maximum of `trdeg_k κ(ξ)` over
  the generic points `ξ` of components through `x`.
- §0.11 `field_extension_descent`: smoothness of `X → Spec k` descends from `X_{k'}`.
- §0.17 `bijective_of_depth`: a linear map `M → N` with `M` finite is bijective if at every prime it is
  bijective or `depth M_p ≥ 2` and `p` is not associated to `N`.
- §0.23 `universalHomeomorphism_criteria`: integral, universally injective and surjective morphisms are
  universal homeomorphisms.
- §0.30 `IsNormalScheme`, `IsNormalScheme.isDiscreteValuationRing_stalk` (codimension-one stalks of a
  locally Noetherian normal scheme are discrete valuation rings).
- §4.11 `IsModification` and *IsModification.Witness* (proper, an isomorphism over a dense open whose
  preimage is dense).
- §4.13 `regularLocus_eq_smoothLocus` (finite type over a perfect field), *IsRegular.isNormal*,
  `serre_normality_criterion` (normal iff `(R_1)` and `(S_2)`).

### From TauCetiRoadmap.EnhancedDerivedSheaves

- §E1.6 `isRegular_of_frobenius_flat`: a Noetherian `𝔽_p`-algebra with flat absolute Frobenius is regular.

### From TauCetiRoadmap.DerivedDeRhamCohomology

- §0.23: for a field `K` of characteristic `p`, a family is a `p`-basis (its `p`-monomials with exponents
  `< p` form a `K^p`-basis) exactly when its differentials form a `K`-basis of `Ω¹_{K/𝔽_p}`. The forward
  half, for a finite family, is `DerivedDeRham.pBasis_kaehler_basis` (with the predicate
  `DerivedDeRham.IsPBasis`); the converse half, from a basis of differentials to a `p`-basis, is stated in
  the prose of §0.23 and is the half §5.3 uses.

### From TauCetiRoadmap.DiophantineApproximationAndTranscendence

- §5.6, the algebraic Cartan and Lie-derivative adapter (`exists_lieDerivativeOneForm`,
  `lieDerivativeOneForm`): for fields `C ⊆ F` with `C` of characteristic zero and a `C`-derivation `D` of
  `F`, there is a unique `C`-linear `L_D : Ω[F⁄C] → Ω[F⁄C]` with `L_D(a·db) = D(a)·db + a·d(Db)`. Only the
  agreement bullet of §4.2 uses it.

No gap is recorded: every input above is stated by its owner.

## How to read the build

Layer 0 adds the interface statements the construction needs on top of Tau Ceti's sheaf of
differentials, AlgebraicModuliForArithmeticGeometry's Grassmannian and the regularity results of
SchemeAndStackFoundations. Layer 1 proves the setting lemma and constructs, once and for all, the Nash
modification of a sheaf of finite type along a dense open where it is locally free, with its universal
property, Plücker form, locality and flat base change. Layer 2 specialises it to `Ω_{X/k}`: the Nash
blowup, its modification property, its universal property, the triviality criterion, locality, field
base change and the iteration. Layer 3 gives the embedded (Gauss map) and blowup descriptions. Layers 4
and 5 prove the smoothness criteria, in characteristic zero and for normal schemes over perfect fields
of characteristic `p`; both start from §4.1. Layer 6 builds the normalised Nash blowup and its
isomorphism criteria, and Layer 7 the iterations and the never-resolves principle. Layers 4 and 5 are
independent of Layers 3, 6 and 7.

## Layer 0: interfaces with the pinned libraries

### 0.1 The comparison map of differentials

Define *relativeDifferentials.pullbackMap*: for a commutative ring `R`, schemes `X`, `Y` over `Spec R`
and a morphism `f : X → Y` over `Spec R`, the `O_X`-linear map `c_f : f*Ω_{Y/R} → Ω_{X/R}` adjoint to the
`R`-derivation `O_Y → f_*Ω_{X/R}`, `h ↦ d(f*h)` (stacksNormalization, Morphisms Lemma 29.33.8, tag 01UV,
line 2900). Construct it from `Scheme.relativeDifferentialsHomEquiv` applied to the pushforward
derivation and the pullback–pushforward adjunction.

- Characterisation: `c_f(f*(dh)) = d(f*h)` for every local section `h` of `O_Y`, and `c_f` is the unique
  `O_X`-linear map with this property.
- Functoriality: `c_{id} = id`, and for `g : Y → Z` over `Spec R`, `c_{g∘f} = c_f ∘ f*(c_g)` under the
  pullback composition isomorphism.
- For an open immersion `f`, `c_f` is an isomorphism and agrees with Tau Ceti's
  `relativeDifferentialsRestrictIso` under the identification of pullback with restriction.
- On affine schemes `Spec B → Spec A` over `Spec R` it is the sheaf of the Kähler map
  `B ⊗_A Ω[A⁄R] → Ω[B⁄R]`.

**Checks.**

- For `f : 𝔸¹ → 𝔸²`, `t ↦ (t², t³)` over `k`, `c_f(dx) = 2t dt` and `c_f(dy) = 3t² dt`; in characteristic
  two `c_f(dx) = 0` and `c_f(dy) = t² dt`, so a definition ignoring the characteristic (formal derivative
  over `ℤ`) is excluded.
- For the identity of `𝔸¹`, `c_{id}(dx) = dx`; the zero map, which is also `O_X`-linear, is excluded by the
  characterising property `c_f(f*(dh)) = d(f*h)`.
- For the closed point `Spec k → 𝔸¹`, `c_f : k·dx → Ω_{k/k} = 0` is surjective and not injective: `c_f` is
  not an isomorphism in general.

*Needs:* Tau Ceti `AlgebraicGeometry.Scheme.relativeDifferentials`, `Scheme.relativeDifferentialsHomEquiv`,
`relativeDifferentialsRestrictIso`; Mathlib `AlgebraicGeometry.Scheme.Modules.pullback`.

### 0.2 Base change and closed immersions

Prove *relativeDifferentials.baseChangeIso*: for ring maps `R → R'`, a scheme `X` over `Spec R` and
`X' = X ×_{Spec R} Spec R'` with projection `g'`, the map `c_{g'} : g'*Ω_{X/R} → Ω_{X'/R'}` (§0.1 for the
square over `Spec R' → Spec R`) is an isomorphism (stacksNormalization, Morphisms Lemma 29.33.10, tag
01V0, line 2926). On affine charts it is Mathlib's `KaehlerDifferential.tensorKaehlerEquiv`.

Prove *relativeDifferentials.pullbackMap_surjective_of_isClosedImmersion*: for a closed immersion
`i : Z → X` over `Spec R`, `c_i : i*Ω_{X/R} → Ω_{Z/R}` is surjective (stacksNormalization, Morphisms
Lemma 29.33.15, tag 01UZ, line 2953). On affine charts it is
`KaehlerDifferential.mapBaseChange_surjective`.

*Needs:* §0.1; Mathlib `KaehlerDifferential.tensorKaehlerEquiv`, `KaehlerDifferential.mapBaseChange_surjective`.

### 0.3 The smooth locus of dimension d

Define *smoothLocusOfDim*: for `X` locally of finite type over a field `k` and `d ∈ ℕ`, the open
subscheme `X_sm^{(d)}` of points `x ∈ X_sm` with `dim_{κ(x)} Ω_{X/k} ⊗ κ(x) = d`. It is open because
`Ω_{X/k}` is finite locally free on the smooth locus (Tau Ceti `isFiniteLocallyFree_relativeDifferentials`
applied to `Scheme.Hom.smooth_smoothLocus_ι_comp` and `relativeDifferentialsRestrictIso`), so its rank
is locally constant there.

- `Ω_{X/k}` restricted to `X_sm^{(d)}` is finite locally free of rank `d`.
- `X_sm^{(d)} → Spec k` is smooth of relative dimension `d`, and `X_sm = ⨆_d X_sm^{(d)}` (disjoint).
- For `x ∈ X_sm`, the rank of `Ω_{X/k}` at `x` is `dim_x X` (stacksAlgebra, Lemma 10.140.3, tag 00TT,
  (1) ⇒ (3), line 17618); hence `X_sm^{(d)} = X_sm` when `X` is pure of dimension `d`. Route: on an open
  of `X_sm` smooth of relative dimension `n`, Tau Ceti's `smoothOfRelativeDimension_iff_ringKrullDim_stalk_eq`
  gives `n`-dimensional local rings at closed points, SchemeAndStackFoundations §0.7 converts this to
  `dim_x X = n`, and `FiniteLocallyFreeSheaf.rank_relativeDifferentials_apply` gives rank `n`.
- Compatible with open immersions: `(V)_sm^{(d)} = V ∩ X_sm^{(d)}` for `V ⊆ X` open.

**Checks.**

- For `X = 𝔸²_k ⊔ 𝔸¹_k`, `X_sm^{(2)} = 𝔸²`, `X_sm^{(1)} = 𝔸¹`, `X_sm^{(0)} = ∅`, while `X_sm = X`: the
  dimension is not forgotten.
- For the cusp `y² = x³` over `ℚ`, `X_sm^{(1)}` is the complement of the origin and `X_sm^{(0)} = ∅`.
- For `Spec k[ε]/(ε²)`, `Ω = k[ε]dε/(2ε dε)` has rank `1` at the point but the smooth locus is empty, so
  `X_sm^{(1)} = ∅`: rank alone does not define the locus.

*Needs:* Mathlib `Scheme.Hom.smoothLocus`; Tau Ceti `isFiniteLocallyFree_relativeDifferentials`,
`FiniteLocallyFreeSheaf.rank_relativeDifferentials_apply`, `smoothOfRelativeDimension_iff_ringKrullDim_stalk_eq`,
`Scheme.Hom.smooth_smoothLocus_ι_comp`, `relativeDifferentialsRestrictIso`; SchemeAndStackFoundations §0.7.

### 0.4 Grassmannians along a surjection

Prove *coherentGrassmannian.mapOfSurjective*: for quasi-coherent sheaves of finite type `E'`, `E` on a
scheme `S`, a surjection `p : E' → E` with kernel `K`, and `r ≥ 0`, there is a closed immersion
`Gr_r(E) → Gr_r(E')` over `S` whose functor of points sends a quotient `h*E → Q` to `h*E' → h*E → Q`,
and whose image represents the quotients `h*E' → Q` killing the image of `h*K`; the universal quotient of
`Gr_r(E')` restricts to the universal quotient of `Gr_r(E)` composed with `p` (alperModuli, proof of
Theorem 1.4.5, lines 2985–3007, printed pp. 61–62, applied to the Grassmannian as the Quot scheme over
`ℙ⁰`, Remark 1.1.4(1), line 2283). The closed subscheme is the zero locus of the composite
`h*K → h*E' → Q` into a locally free sheaf, cut out locally by the coordinate functionals of `Q` applied
to the local sections of `h*K`.

- The construction commutes with base change along `S' → S` and with composition of surjections.
- For `E' = O_S^n`, `Gr_r(O_S^n) ≅ S ×_ℤ Gr(r, n)` (AlgebraicModuliForArithmeticGeometry §1.3 base change),
  so a surjection `O_S^n → E` embeds `Gr_r(E)` in `S × Gr(r, n)`.

*Needs:* AlgebraicModuliForArithmeticGeometry §1.3 (`coherentGrassmannian`); Mathlib `IsClosedImmersion`.

### 0.5 Cotangent spaces at points with separable residue field

Prove *cotangentSpaceEquivKaehler*: for a field `k` and a local `k`-algebra `(R, m, κ)`, not necessarily
Noetherian, whose residue field is finite separable over `k`, the map `m/m² → κ ⊗_R Ω_{R/k}`, `a ↦ 1 ⊗ da`,
is a `κ`-linear isomorphism (stacksAlgebra, Lemma 10.140.4, tag 00TU, line 17647, for injectivity: it is
stated for Noetherian `R`, but its proof, lines 17654–17671, replaces `R` by `R/m²` and lifts `κ` into it,
and uses the Noetherian hypothesis nowhere; the exact sequence in the proof of Lemma 10.140.5, tag 00TV,
lines 17676–17678, with `Ω_{κ/k} = 0`, for surjectivity). Route: `κ` is formally étale over `k`
(`Algebra.FormallyEtale.of_isSeparable`), so `R/m² → κ` has a `k`-algebra section; Mathlib's
`retractionKerCotangentToTensorEquivSection` (for any surjective algebra map, no finiteness hypothesis)
turns it into a retraction of `m/m² → κ ⊗ Ω_{R/k}`; surjectivity is
`KaehlerDifferential.exact_kerCotangentToTensor_mapBaseChange` and holds whenever `Ω_{κ/k} = 0`.

**Checks.**

- For `R = k[x]_{(x)}` the map sends the class of `x` to `dx`, a basis on both sides.
- For `R = k` both sides are zero.
- For `k = 𝔽_p(t)` and `R = k[x]_{(x^p − t)}`, `κ = k(t^{1/p})` is inseparable and the class of
  `x^p − t ≠ 0` in `m/m²` maps to `d(x^p − t) = 0`: separability is needed for injectivity.
- For the non-Noetherian `R = k[x_1, x_2, …]` localised at `(x_1, x_2, …)`, `m/m²` has basis the classes of
  the `x_i` and `κ ⊗ Ω_{R/k}` has basis the `1 ⊗ dx_i`, and the map is `x_i ↦ dx_i`: an isomorphism of
  infinite-dimensional `k`-spaces, so a statement requiring `R` Noetherian would be needlessly narrow.

*Needs:* Mathlib `retractionKerCotangentToTensorEquivSection`,
`KaehlerDifferential.exact_kerCotangentToTensor_mapBaseChange`, `Algebra.FormallyEtale.of_isSeparable`.

### 0.6 Smoothness at closed points over a perfect field

Prove *smooth_iff_isRegularLocalRing_closedPoints*: for `X` locally of finite type over a perfect field
`k`, `X → Spec k` is smooth iff `O_{X,x}` is a regular local ring for every closed point `x`
(stacksVarieties, Lemma 33.25.8, tag 0B8X, line 2130, for reduced `X`; a scheme regular at its closed
points is reduced there). Route: by SchemeAndStackFoundations §4.13 `regularLocus_eq_smoothLocus` the
regular locus is the open smooth locus; its complement is closed, and if nonempty it contains a closed
point (`LocallyOfFiniteType.jacobsonSpace`, `nonempty_inter_closedPoints`).

**Checks.**

- The cusp over a perfect field is not smooth: its local ring at the origin has embedding dimension
  `2 > 1`.
- `𝔸ⁿ_k` is smooth and all its local rings at closed points are regular.
- Over `k = 𝔽_p(t)`, `Spec k(t^{1/p})` is regular (a field) but not smooth: the perfectness hypothesis is
  needed.

*Needs:* SchemeAndStackFoundations §4.13 (`regularLocus_eq_smoothLocus`); Mathlib
`LocallyOfFiniteType.jacobsonSpace`, `nonempty_inter_closedPoints`, `IsRegularLocalRing`.

### Examples

For `𝔸¹ → 𝔸²`, `t ↦ (t², t³)`, the comparison map of §0.1 is `dx ↦ 2t dt`, `dy ↦ 3t² dt`. The
surjection `O² → Ω_{X/k}` for the cusp `X = V(y² − x³) ⊆ 𝔸²` embeds `Gr_1(Ω_{X/k})` in `X × ℙ¹` (§0.4),
with fibre `ℙ¹` over the origin and a single point elsewhere.

### Dependencies

Tau Ceti's sheaf of differentials and smooth-locus files; Mathlib's Kähler differentials; AlgebraicModuliForArithmeticGeometry
§1.3; SchemeAndStackFoundations §§0.7, 4.13.

## Layer 1: the setting and the Nash modification of a sheaf

### 1.1 The setting

Prove *setting*: let `X` be a reduced scheme locally of finite type over a field `k`.

1. `X_sm` is dense in `X` iff `X` is geometrically reduced over `k` (stacksVarieties, Lemma 33.25.7, tag
   056V, line 2112).
2. Over a perfect field every reduced `X` has dense smooth locus (Mathlib
   `Scheme.Hom.dense_smoothLocus_of_perfectField`).
3. If `X_sm` is dense, it contains every generic point of an irreducible component of `X`, and it meets
   every irreducible component in a dense open subset.
4. If moreover `X` is pure of dimension `d`, then `X_sm = X_sm^{(d)}` and `Ω_{X/k}` restricted to `X_sm` is
   finite locally free of rank `d` (§0.3).

Route for (1). If `X_sm` is dense, every base change `(X_sm)_{k'}` is smooth over `k'`, hence has regular
local rings (Tau Ceti `isRegularLocalRing_stalk_of_smooth`) and is reduced; so `X` is geometrically
reduced at its generic points (stacksVarieties, Lemma 33.25.4, tag 056T, line 2084), and a reduced scheme
geometrically reduced at its generic points is geometrically reduced (stacksVarieties, Lemma 33.6.8(3),
tag 04KS, line 296). Conversely let `k'` be the perfect closure of `k`. The projection `p : X_{k'} → X` is
a universal homeomorphism (SchemeAndStackFoundations §0.23, with universal injectivity from
`tfae_universallyInjective`, as `k'/k` is purely inseparable); `X_{k'}` is reduced, so its smooth locus
`W'` is dense (2), `W' = p⁻¹(W)` for the open `W = p(W')`, and `W` is smooth over `k` by
SchemeAndStackFoundations §0.11, so `W ⊆ X_sm` is dense.

**Checks.**

- Over `k = 𝔽_p(t)`, `X = Spec k[y]/(y^p − t)` is reduced (a field) and not geometrically reduced; its smooth
  locus is empty, so it is excluded by the Setting.
- `Spec k[ε]/(ε²)` is not reduced and is excluded; its reduction `Spec k` satisfies the Setting with `d = 0`.
- `X = 𝔸²_k ⊔ 𝔸¹_k` is reduced with dense smooth locus but not pure-dimensional; `X_sm ≠ X_sm^{(2)}`, so
  (4) needs pure dimension.

*Needs:* §0.3; Mathlib `Scheme.Hom.smoothLocus`, `Scheme.Hom.dense_smoothLocus_of_perfectField`,
`GeometricallyReduced`, `PerfectClosure`, `tfae_universallyInjective`; Tau Ceti
`isRegularLocalRing_stalk_of_smooth`; SchemeAndStackFoundations §§0.11, 0.23.

### 1.2 The Nash modification of a sheaf

Define *nashModification*: let `X` be a scheme, `F` a quasi-coherent `O_X`-module of finite type, `r ∈ ℕ`,
and `U ⊆ X` an open such that `F|_U` is finite locally free of rank `r`. Let `π : Gr_r(F) → X` be
AlgebraicModuliForArithmeticGeometry's `coherentGrassmannian` and `σ_U : U → Gr_r(F)` the classifying map of
the identity quotient of `F|_U`. Then `N(X, F, r, U)` is the scheme-theoretic image `σ_U.image`, with
`π_N : N → X` the restriction of `π` (nashModificationNotes2024, Section 3, lines 216–225;
gonzalezSprinberg1982, §1.1, lines 85–90). The construction needs only these data; the statements below
assume in addition that `X` is reduced and locally Noetherian and that `U` is dense.

- `N → Gr_r(F)` is a closed immersion, `N` is reduced, and its support is the closure of `σ_U(U)`
  (`Scheme.Hom.support_ker`; `σ_U` is quasi-compact because `X` is locally Noetherian).
- `π_N` restricts to an isomorphism `π_N⁻¹(U) → U`, and `π_N⁻¹(U)` is dense in `N`.
- Independence of the open: for a dense open `U' ⊆ U`, `N(X, F, r, U') = N(X, F, r, U)` as closed
  subschemes of `Gr_r(F)`.
- The universal quotient restricts to a locally free rank-`r` quotient `π_N*F → L_F`, which over
  `π_N⁻¹(U) ≅ U` is the identity quotient of `F|_U`.
- `π_N` is proper (closed in the proper `Gr_r(F) → X`).

**Checks.**

- If `F` is finite locally free of rank `r` on all of `X`, then `σ_X` is a section with closed image and
  `N(X, F, r, U) ≅ X` for every dense `U`.
- On `X = Spec k[x]` with `F = O ⊕ O/(x)`, `r = 1`, `U = D(x)`: the fibre of `Gr_1(F)` over the origin is
  `ℙ¹`, but `N ≅ X` with `L_F = O` the quotient by the torsion summand; a definition taking the whole
  Grassmannian, or its fibre over the origin, is excluded.
- On `X = 𝔸²_k` with `F` the ideal sheaf of the origin, `r = 1`, `U = 𝔸² ∖ {0}`: `N` is the blowup of the
  origin, with exceptional fibre `ℙ¹`, so `N ≠ X` although `F` is torsion-free.

*Needs:* AlgebraicModuliForArithmeticGeometry §1.3 (`coherentGrassmannian`); Mathlib `Scheme.Hom.image`,
`Scheme.Hom.support_ker`, `Scheme.Hom.toImage`.

### 1.3 Universal property

Prove *nashModification.lift*: in the situation of §1.2, let `h : Z → X` be a morphism from a reduced
scheme `Z` with `h⁻¹(U)` dense in `Z`, and `h*F → M` a locally free quotient of rank `r`. Then there is a
unique `q : Z → N(X, F, r, U)` with `π_N ∘ q = h` and `q*(π_N*F → L_F) = (h*F → M)` as quotients.
Moreover the quotient `M` is unique: any two locally free rank-`r` quotients of `h*F` coincide, because
both are the identity quotient over `h⁻¹(U)`, where `h*F` is locally free of rank `r`, and quotients of a
locally free sheaf onto a locally free sheaf of the same rank are isomorphisms (nashModificationNotes2024,
Section 3, lines 226–229, and Section 2, lines 153–162, where the density hypothesis is implicit;
gonzalezSprinberg1982, §1.2, lines 94–98, for proper birational `h`). Route: the classifying map
`Z → Gr_r(F)` agrees with `σ_U` on `h⁻¹(U)`, so its image lies in the closure of `σ_U(U)`; Tau Ceti's
`vanishingIdeal_le_ker_of_range_subset` and Mathlib's `IsClosedImmersion.lift` factor it through `N`;
uniqueness is `ext_of_isDominant_of_isSeparated`.

**Checks.**

- For the identity of `X` (with `U` dense and `F|_X` locally free), `q` is the inverse of `π_N`.
- In the second Check of §1.2, `Z = Spec k` mapping to the origin with the quotient
  `F ⊗ k = k² → k`, `(a, b) ↦ b`, does not factor through `N`: here `h⁻¹(U) = ∅` is not dense, so the
  density hypothesis cannot be dropped.
- For `X` smooth over `k`, `F = Ω_{X/k}` and `h : Bl_p X → X` the blowup of a closed point, the pulled-back
  identity quotient gives `q = h`, a morphism to `N = X` that is not an isomorphism: the universal
  property characterises `N` as a terminal object, not every `Z` with a quotient.

*Needs:* §1.2; Tau Ceti `vanishingIdeal_le_ker_of_range_subset`; Mathlib `IsClosedImmersion.lift`,
`ext_of_isDominant_of_isSeparated`; AlgebraicModuliForArithmeticGeometry §1.3.

### 1.4 The Plücker form

Prove *nashModification.pluckerIso*: in the situation of §1.2, `∧^r F|_U` is invertible and the Plücker
closed immersion of AlgebraicModuliForArithmeticGeometry §1.3 restricts to an isomorphism over `X`
`N(X, F, r, U) ≅ N(X, ∧^r F, 1, U)` carrying `∧^r L_F` to `L_{∧^r F}` (gonzalezSprinberg1982, §1.3,
lines 99–104; nashModificationNotes2024, Section 3, line 230). Route: `plucker ∘ σ_U` classifies
`∧^r` of the identity quotient, which is the identity quotient of `∧^r F|_U`; a closed immersion maps the
closure of `σ_U(U)` onto the closure of its image, and both sides are reduced.

*Needs:* §§1.2, 1.3; AlgebraicModuliForArithmeticGeometry §1.3 (`plucker`); Tau Ceti `SheafOfModules.exteriorPower`.

### 1.5 Locality and flat base change

Prove *nashModification.restrict*: for an open `V ⊆ X`, `N(V, F|_V, r, U ∩ V) ≅ π_N⁻¹(V)` over `V`.

Prove *nashModification.baseChange*: for a flat morphism `g : X' → X` from a reduced locally Noetherian
scheme such that `g⁻¹(U)` is dense in `X'`, `N(X', g*F, r, g⁻¹(U)) ≅ N(X, F, r, U) ×_X X'` over `X'`,
compatibly with the universal quotients (stacksNormalization, Morphisms Lemma 29.26.16, tag 081I, line
2198, for the scheme-theoretic image; AlgebraicModuliForArithmeticGeometry §1.3 for
`Gr_r(g*F) = Gr_r(F) ×_X X'`). In particular the right side is reduced.

**Checks.**

- For `V ⊆ U`, `π_N⁻¹(V) ≅ V`.
- For `g` the inclusion of `U`, both sides are `U`.
- For the closed immersion `g : {0} → 𝔸²` in the third Check of §1.2 (not flat, and `g⁻¹(U) = ∅`), the
  fibre product is the exceptional `ℙ¹` while `N({0}, k², 1, ∅)` is empty: flatness and density are needed.

*Needs:* §1.2; AlgebraicModuliForArithmeticGeometry §§1.3, 5.4 (`ArithmeticModuli.DMSchematicClosure.stack`).

### Examples

For the ideal sheaf `I` of the origin in `𝔸²`, `N(𝔸², I, 1, 𝔸² ∖ 0)` is the blowup of the origin; for
`O ⊕ O/(x)` on `𝔸¹` it is `𝔸¹` itself. For `X` smooth and `F = Ω_{X/k}` it is `X`.

### Dependencies

Layer 0; AlgebraicModuliForArithmeticGeometry §§1.3, 5.4; SchemeAndStackFoundations §§0.11, 0.23; Mathlib
scheme-theoretic images and smooth loci; Tau Ceti vanishing ideals.

## Layer 2: the Nash blowup

### 2.1 Definition

Define *nashBlowup*: for `X` locally of finite type over `k` and `d ∈ ℕ`, `X* = N(X, Ω_{X/k}, d, X_sm^{(d)})`
(§1.2, with `Ω_{X/k}` finite locally free of rank `d` on `X_sm^{(d)}` by §0.3), with *nashBlowupHom*
`ν = π_N : X* → X` and the **Nash cotangent
bundle** *nashCotangent* `ν*Ω_{X/k} → L` (gonzalezSprinberg1982, §1.1–1.2, lines 79–98;
duarteNunezBetancourt2020, Definition 2.1, line 127; castilloDuarteLeytonLiendo2026, Introduction, lines
13–21). The construction `σ.image` is defined for every `X`; the hypotheses enter only the theorems. `X*` is
a `k`-scheme through `ν`.

- `ν⁻¹(X_sm^{(d)}) → X_sm^{(d)}` is an isomorphism and `L` is the identity quotient there.
- `L` is locally free of rank `d`, and `ν*Ω_{X/k} → L` is surjective.
- For `X` in the Setting, `X_sm^{(d)} = X_sm` (§1.1).

**Checks.**

- For `X` smooth of relative dimension `d`, `ν` is an isomorphism and `L = Ω_{X/k}`.
- For the cusp `X = V(y² − x³) ⊆ 𝔸²` over a field of characteristic `0` or `≥ 5`, `X* ≅ 𝔸¹` with `ν(t) = (t², t³)`
  (the normalisation): the tangent quotients `[1 : 3t/2]` tend to `[1 : 0]`. Here
  `ν*Ω_{X/k} ≅ k[t]·dx ⊕ k[t]/(t³)` with `L = k[t]·dx` the quotient by the torsion summand of length three.
- For the node `xy = 0`, in every characteristic, the two branches have tangent quotients `[1 : 0]` and
  `[0 : 1]` (near a point of `y = 0` with `x ≠ 0`, `x` is a unit and the relation `y·dx + x·dy = 0` gives
  `dy = 0`; symmetrically `dx = 0` on `x = 0`), so `X* = 𝔸¹ ⊔ 𝔸¹` separates them; a construction using only
  the reduced fibre of `Ω` over the origin (a single `ℙ¹`) is excluded.
- For `d = 0` and `X = Spec k`, `X* = X`.

*Needs:* §§0.3, 1.1, 1.2; Tau Ceti `AlgebraicGeometry.Scheme.relativeDifferentials`,
`isFinitePresentation_relativeDifferentials`.

### 2.2 Properness and the modification property

Prove *nashBlowupHom_isProper* and *nashBlowupHom_isModification*: for `X` in the Setting, `ν` factors as a
closed immersion `X* → P(∧^d Ω_{X/k})` (§1.4) followed by the projection, so `ν` is proper; `ν` is an
isomorphism over `X_sm`, `ν⁻¹(X_sm)` is dense in `X*`, and `ν` is a modification with witness `X_sm` in the
sense of SchemeAndStackFoundations §4.11 (nashModificationNotes2024, Section 2, lines 152–155;
gonzalezSprinberg1982, §1.2, line 94). On every irreducible component `ν` is birational onto a component of
`X`.

**Checks.**

- For the cusp in characteristic `0`, `ν` is finite and birational but not an isomorphism.
- For the surface `y² = x²z` over a field of characteristic `≠ 2` (nobile1975, Example 4, lines 314–324),
  `ν⁻¹(0) ≅ ℙ¹`: `ν` is proper but not finite.
- For `X` smooth the witness is `X` itself and `ν` is the identity.

*Needs:* §§1.2, 1.4, 2.1; SchemeAndStackFoundations §4.11; AlgebraicModuliForArithmeticGeometry §1.3.

### 2.3 The setting is preserved

Prove *nashBlowup_setting*: for `X` in the Setting, `X*` is reduced, separated and of finite type over `k`,
pure of dimension `d`, and its smooth locus contains `ν⁻¹(X_sm)`, hence is dense. Route: reducedness and
separatedness from §1.2; finite type since `Gr_d(Ω_{X/k}) → X` is of finite type; the irreducible components
of `X*` are the closures of those of `ν⁻¹(X_sm) ≅ X_sm`, of dimension `d` by SchemeAndStackFoundations §0.7
(dimension equals the transcendence degree of the function field).

**Checks.**

- For the cusp in characteristic `0`, `X* ≅ 𝔸¹` satisfies the Setting with `d = 1`.
- For the cusp in characteristic `2`, `X* ≅ X` is again the cusp, with dense smooth locus.
- For `X = 𝔸²_k ⊔ 𝔸¹_k` with `d = 2` (not in the Setting), `X* = 𝔸²`: the component of the wrong
  dimension is discarded, so pure dimension is needed for `ν` to be surjective.

*Needs:* §§0.3, 1.2, 2.1, 2.2; SchemeAndStackFoundations §0.7; Tau Ceti `TauCeti.IsPureDimensional`.

### 2.4 Universal property

Prove *nashBlowup.lift*: for `X` in the Setting, a reduced scheme `Z`, a morphism `h : Z → X` with
`h⁻¹(X_sm)` dense in `Z`, and a locally free quotient `h*Ω_{X/k} → M` of rank `d`, there is a unique
`q : Z → X*` with `ν ∘ q = h` and `q*L = M` as quotients of `h*Ω_{X/k}`, and `M` is the only such quotient
(nashModificationNotes2024, Section 2, lines 153–162, Teissier's formulation; §1.3). Consequently
`(X*, ν, L)` is unique up to unique isomorphism over `X` among the triples with this property.

Prove *nashBlowup.isIso_lift_iff*: for a surjective `π : X₁ → X` with `X₁` reduced, `π⁻¹(X_sm)` dense and a
locally free rank-`d` quotient of `π*Ω_{X/k}`, the lift `X₁ → X*` is an isomorphism iff the classifying map
`X₁ → Gr_d(Ω_{X/k})` is a closed immersion. Surjectivity is needed: for `X = 𝔸¹ ⊔ 𝔸¹` and `X₁` one of the two
lines, the classifying map is a closed immersion and the lift is not an isomorphism.

**Checks.**

- For `X = 𝔸²` and `π : Bl_0 𝔸² → 𝔸²` with the pulled-back identity quotient, `π` is projective and birational
  with a quotient, yet `X* = 𝔸²` and the lift is `π`, not an isomorphism; its classifying map is not a closed
  immersion. A projective birational morphism with a quotient is not in general the Nash blowup.
- For the cusp in characteristic `0`, the normalisation `𝔸¹ → X` with `M = k[t]·dx` is the Nash blowup and its
  classifying map is the closed immersion `t ↦ (t², t³, [1 : 3t/2])`.
- `Z = Spec k` mapping to the cusp point with any quotient has `h⁻¹(X_sm) = ∅` and is excluded.

*Needs:* §§1.3, 2.1; Mathlib `IsClosedImmersion`.

### 2.5 When the Nash blowup is trivial

Prove *nashBlowupHom_isIso_iff*: for `X` in the Setting, `ν` is an isomorphism iff `Ω_{X/k}` admits a locally
free quotient of rank `d`. Route: if `ν` is an isomorphism, transport `L`; conversely the quotient gives a
section `s : X → Gr_d(Ω_{X/k})` with closed image (`Gr_d` is separated over `X`) agreeing with `σ` on `X_sm`,
so `X* = s(X)` and `ν ∘ s = id` (nashModificationNotes2024, Section 2, lines 170–171;
duarteNunezBetancourt2020, Lemma 2.4, lines 152–182, for one direction).

Corollary *nashBlowupHom_isIso_of_smooth*: if `X` is smooth then `ν` is an isomorphism (§0.3).

**Checks.**

- Cusp in characteristic `2`: `Ω_{X/k} = (k[x,y]dx ⊕ k[x,y]dy)/(x² dx)` (as `2y = 0` and `3x² = x²`), and
  `dx ↦ 0`, `dy ↦ 1` is a locally free quotient, so `ν` is an isomorphism (nobile1975, Example 1, line 136).
- Cusp in characteristic `3`: the relation is `2y dy`, and `dx ↦ 1`, `dy ↦ 0` is a free quotient
  (nobile1975, Example 2, line 140, with `q = 3`).
- Cusp in characteristic `0`: a free quotient `dx ↦ a`, `dy ↦ b` with `−3x²a + 2yb = 0` would need, in
  `k[[t², t³]]`, `b = (3t/2)a` with `a` or `b` a unit, impossible as `t ∉ k[[t², t³]]`; so `ν` is not an
  isomorphism.

*Needs:* §§2.1, 2.2, 2.4, 0.3; AlgebraicModuliForArithmeticGeometry §1.3.

### 2.6 Locality and field base change

Prove *nashBlowup.restrict*: for `X` in the Setting and an open `V ⊆ X`, `V* ≅ ν⁻¹(V)` over `V`, compatibly
with `L` (§1.5 and §0.1 for open immersions). Nash blowups glue and are computed on an affine cover
(nobile1975, Introduction, lines 42–44).

Prove *nashBlowup.baseChange*: for a field extension `k'/k` and `X` in the Setting, `X_{k'}` is in the
Setting (geometrically reduced by §1.1; pure of dimension `d` by
`isPureDimensional_pullback_Spec_map_iff_of_field`; separated and of finite type by base change), and
`(X*)_{k'} ≅ (X_{k'})*` over `X_{k'}`, compatibly with the Nash cotangent bundles. Route: `Ω` commutes with
base change (§0.2), `(X_sm)_{k'} ⊆ (X_{k'})_sm` (`preimage_smoothLocus_le_smoothLocus_pullback_snd`) with `Ω` of
rank `d` there, and it is dense because `X_{k'} → X` is flat, so the generic points of `X_{k'}` map to generic
points of `X`, which lie in `X_sm` (§1.1); then §1.5 with the independence of the open (§1.2) applies.

**Checks.**

- For `X` the cusp over `ℚ` and `k' = ℚ(i)`, both sides are `𝔸¹_{ℚ(i)}`.
- For `V = X_sm`, `V* = V`.
- For `k = 𝔽_p(t)` and `X = Spec k[y]/(y^p − t)` (not in the Setting), `X_{k'}` for `k' = k(t^{1/p})` is
  non-reduced: the Setting hypothesis is what makes base change stay inside the construction's domain.

*Needs:* §§0.1, 0.2, 1.1, 1.2, 1.5, 2.1; Tau Ceti `isPureDimensional_pullback_Spec_map_iff_of_field`,
`preimage_smoothLocus_le_smoothLocus_pullback_snd`.

### 2.7 The Nash iteration

Define *nashIterate*: `X^{(0)} = X` and `X^{(i+1)} = (X^{(i)})*` (with the same `d`), with the composite maps
`X^{(i)} → X` (nobile1975, proof of Theorem 2, lines 202–203). Define *NashIterationResolves* `X d` as
`∃ i, X^{(i)} → Spec k is smooth`. By §2.3 every iterate of `X` in the Setting is in the Setting.

**Checks.**

- If `X` is smooth then `X^{(i)} ≅ X` for all `i` (§2.5), and the iteration resolves `X` with `i = 0`.
- The cusp in characteristic `0` is resolved with `i = 1`.
- The cusp in characteristic `2` has `X^{(i)} ≅ X` for all `i` (§2.5), so the iteration does not resolve it:
  the predicate depends on the characteristic.

*Needs:* §§2.1, 2.3, 2.5.

### Examples

The cusp `y² = x³`: in characteristic `0` or `≥ 5`, `X* = 𝔸¹` with `ν*Ω = L ⊕ k[t]/(t³)`; in characteristics
`2` and `3`, `X* ≅ X`. The node, in every characteristic: `X* = 𝔸¹ ⊔ 𝔸¹`. The Whitney-type surface `y² = x²z`
in characteristic `≠ 2`: `ν⁻¹(0) ≅ ℙ¹` (nobile1975, Example 4).

### Dependencies

Layers 0 and 1; SchemeAndStackFoundations §§0.7, 4.11; AlgebraicModuliForArithmeticGeometry §1.3; Tau Ceti pure
dimension and smooth locus.

## Layer 3: embedded and blowup descriptions

### 3.1 The Gauss map

Prove *nashBlowup_eq_closure_graph_gaussMap*: let `X` be in the Setting and a closed subscheme of an open
`W ⊆ 𝔸ⁿ_k`. The surjection `O_X^n = Ω_{𝔸ⁿ/k}|_X → Ω_{X/k}` (§0.2) restricted to `X_sm` is classified by the
**Gauss map** `Φ : X_sm → Gr_d(kⁿ)`, `x ↦` the quotient `(kⁿ)* → Ω_{X/k} ⊗ κ(x)` whose dual is `T_x X`
(Conventions). Then `X*` is isomorphic over `X` to the scheme-theoretic image of `(id, Φ) : X_sm → X ×_k Gr_d(kⁿ)`,
and the isomorphism carries `L` to the pullback of the universal quotient of `Gr_d(kⁿ)` (nobile1975,
Introduction, lines 29–44; castilloDuarteLeytonLiendo2026, Introduction, lines 13–21; gonzalezSprinberg1982,
§1.4, lines 105–112). Route: §0.4 embeds `Gr_d(Ω_{X/k})` in `X × Gr_d(kⁿ)` compatibly with the classifying
maps, and a closed immersion preserves reduced closures. Independence of the embedding is automatic.

**Checks.**

- For the line `y = 2x` in `𝔸²`, `Φ` is constant with value `[1 : 2]` (the convention witness).
- For the cusp, `Φ(t) = [1 : 3t/2]` on `X_sm` and the closure of the graph is `{(t², t³, [1 : 3t/2])} ≅ 𝔸¹`.
- For `X = 𝔸ⁿ` itself, `Φ` is the constant map to the single point of `Gr_n(kⁿ)` and the closure is `X`.

*Needs:* §§0.2, 0.4, 1.2, 2.1; AlgebraicModuliForArithmeticGeometry §1.3.

### 3.2 The Nash blowup as a blowup

Prove *nashBlowup_iso_blowup*: let `X` be in the Setting, `I` an ideal sheaf on `X` and `φ : ∧^d Ω_{X/k} → I`
a surjection that is an isomorphism over `X_sm`. Then `X*` is isomorphic over `X` to the blowup `Bl_I X`
(Tau Ceti `IdealSheafData.blowup`), and `I·O_{X*} ≅ ∧^d L` (nobile1975, Theorem 1, line 105;
nashModificationNotes2024, Section 3, lines 243–247). Route: by §1.4, `X*` is `N(X, ∧^d Ω_{X/k}, 1, X_sm)`.
On `Bl_I X` (reduced, as the Rees algebra of a reduced ring is reduced, with `ν_I⁻¹(X_sm)` dense since the
exceptional divisor is effective Cartier) the composite `ν_I*∧^dΩ → ν_I*I → I·O` is an invertible quotient,
so §1.3 gives `Bl_I X → X*`. On `X*` the map `ν*∧^dΩ → I·O_{X*}` kills the kernel of `ν*∧^dΩ → ∧^d L`
(it vanishes on the dense open `ν⁻¹(X_sm)` and `O_{X*}` is reduced), giving an isomorphism `∧^d L ≅ I·O_{X*}`,
so `I·O_{X*}` is effective Cartier and `blowupLift` gives `X* → Bl_I X`. The composites are identities by the
uniqueness parts (`blowup_hom_ext`, §1.3).

Prove *exists_nashBlowup_blowupPresentation*: every point of `X` has an affine open neighbourhood `V = Spec A`
with an ideal `I ⊆ A` containing a nonzerodivisor and a surjection `∧^d Ω_{A/k} → I` that is an isomorphism
over `V_sm`. Route: `∧^dΩ ⊗ Q(A)` is free of rank one over the total ring of fractions `Q(A)`, a product of the
function fields; choose a basis, clear the finitely many denominators of the images of generators by a
nonzerodivisor.

**Checks.**

- For `X = 𝔸¹` and `φ : O·dx → I = (x)`, `dx ↦ x`, the hypotheses hold (`O ≅ (x)`), `I` is invertible and
  `Bl_I X = X = X*`.
- For the cusp in characteristic `0`, `I = (y, x²)` (§3.3) and `Bl_I X = 𝔸¹`; in characteristic `2`, `I = (x²)`
  is principal, generated by a nonzerodivisor, and `Bl_I X = X` (`isIso_blowupToBase_iff`).
- For `I = 0` and `φ = 0`, `φ` is surjective onto `I` but not an isomorphism over `X_sm`, and `Bl_0 X = ∅ ≠ X*`:
  the isomorphism hypothesis cannot be dropped.

*Needs:* §§1.3, 1.4, 2.1; Tau Ceti `IdealSheafData.blowup`, `blowupToBase`, `blowupLift`, `blowup_hom_ext`,
`isIso_blowupToBase_iff`, `SheafOfModules.exteriorPower`.

### 3.3 Hypersurfaces

Prove *nashBlowup_hypersurface*: let `f ∈ k[x_1, …, x_n]` with `X = V(f) ⊆ 𝔸ⁿ_k` reduced, pure of dimension
`n − 1`, with dense smooth locus, and let `J_f ⊆ O_X` be the image of the ideal `(∂f/∂x_1, …, ∂f/∂x_n)`. Then
`X* ≅ Bl_{J_f} X` over `X` (nobile1975, Remark 2, lines 129–133; Examples 1 and 2, lines 136–141). Route: the
map `∧^{n−1} Ω_{X/k} → O_X`, `ω ↦ (df ∧ ω)/(dx_1 ∧ … ∧ dx_n)`, sends
`dx_1 ∧ … ∧ dx_j^ ∧ … ∧ dx_n ↦ (−1)^{j−1} ∂f/∂x_j`, is well defined because `df ∧ df = 0`, has image `J_f`,
and is an isomorphism over `X_sm` (a surjection of invertible sheaves there); apply §3.2.

**Checks.**

- Cusp `y² − x³`: `J_f = (2y, 3x²)`, which is `(y, x²)` in characteristic `0` or `≥ 5` (not invertible at the
  origin, `ν` not an isomorphism), `(x²)` in characteristic `2` and `(y)` in characteristic `3` (principal,
  `ν` an isomorphism).
- Node `xy`: `J_f = (y, x)` is the maximal ideal of the origin and `Bl_{J_f} X = 𝔸¹ ⊔ 𝔸¹`.
- The curve `x^p − y^q` in characteristic `p` with `q` prime to `p` (castilloDuarteLeytonLiendo2026, lines
  33–35): `J_f = (q y^{q−1})` is principal, so `ν` is an isomorphism although the curve is singular.

*Needs:* §§3.2, 0.2; Tau Ceti `IdealSheafData.blowup`.

### Examples

The cusp in all characteristics through the Jacobian ideal; the node; `x^p = y^q` in characteristic `p`.

### Dependencies

Layers 0–2; Tau Ceti blowups; AlgebraicModuliForArithmeticGeometry §1.3.

## Layer 4: characteristic zero

### 4.1 Coordinates from a free quotient

Prove *exists_coordinates_of_kaehler_surjection*: let `k` be a field, `(R, m, κ)` a local `k`-algebra and
`q : Ω_{R/k} → R^d` a surjection. Then there are `x_1, …, x_d ∈ R` and `k`-derivations `∂_1, …, ∂_d : R → R`
with `∂_i(x_j) = δ_ij`, such that `Ω_{R/k} = (⊕_j R·dx_j) ⊕ ker q`; if `κ` is finite separable over `k`, the
`x_j` can be chosen in `m` (nashModificationNotes2024, Section 2, lines 194–197, and Section 5, lines
484–501; duarteNunezBetancourt2020, proof of Theorem 3.10, lines 263–268). Route: the `q(dr)` generate `R^d`,
so by Nakayama some `q(dx_j)` reduce to a basis of `κ^d` and are a basis of `R^d`; let `∂_i` be the `i`-th
coordinate of `q ∘ d` in that basis. For `κ` finite separable, `m/m² → κ ⊗ Ω_{R/k}` is onto (§0.5), so the `x_j`
may be taken in `m`.

**Checks.**

- For `R = k[x, y]_{(x,y)}` and `q` the identity of `Ω = R dx ⊕ R dy`, `x_1 = x`, `x_2 = y` and `∂_i = ∂/∂x_i`.
- For the cusp in characteristic `3` at the origin, `q(dx) = 1`, `q(dy) = 0`: `x_1 = x`, `∂_1 = ∂/∂x` (well
  defined since `∂(y² − x³) = 0`), and `ker q = R·dy/(y·dy)` is torsion.
- For `d = 0`, there are no coordinates and `ker q = Ω_{R/k}`.

*Needs:* §0.5; Mathlib `Derivation`, `KaehlerDifferential`.

### 4.2 The Lie derivative and stable annihilators

Define *Derivation.lieDerivative*: for a `k`-algebra `R` and a `k`-derivation `∂ : R → R`, the additive map
`L_∂ : Ω_{R/k} → Ω_{R/k}` with `L_∂(a·db) = ∂(a)·db + a·d(∂b)`. Construct it on `Ω_{R/k} ≅ J/J²`,
`J = ker(R ⊗_k R → R)` (stacksAlgebra, Lemma 10.131.13, tag 00RW, line 15590), as the map induced by the
derivation `∂ ⊗ 1 + 1 ⊗ ∂` of `R ⊗_k R`, which preserves `J` and `J²`.

- `L_∂(a·ω) = ∂(a)·ω + a·L_∂(ω)` and `L_∂ ∘ d = d ∘ ∂`.
- `L_{∂ + ∂'} = L_∂ + L_{∂'}` and `L_{c∂} = c·L_∂` for `c ∈ k`.
- **Stable annihilators.** If `N ⊆ Ω_{R/k}` is an `R`-submodule with `L_∂(N) ⊆ N`, then `Ann_R(Ω_{R/k}/N)` is
  `∂`-stable: for `a` in it and every `ω`, `∂(a)·ω = L_∂(aω) − a·L_∂(ω) ∈ N` (the computation pattern of
  hamann2003, proof of Lemma 0.1, lines 61–64).
- In the situation of §4.1, `L_{∂_i}(dx_j) = d(δ_ij) = 0`, so `N = ⊕_j R·dx_j` is `L_{∂_i}`-stable.
- Agreement on fields: if `R` is a field and `k` has characteristic zero, `L_∂` equals
  DiophantineApproximationAndTranscendence's `lieDerivativeOneForm ∂` (§5.6). Both are `k`-linear
  (`L_∂(c·ω) = ∂(c)·ω + c·L_∂(ω) = c·L_∂(ω)` for `c ∈ k`, as `∂` kills `k`) and satisfy the same rule on
  `a·db`, and `exists_lieDerivativeOneForm` asserts uniqueness of such an operator.

**Checks.**

- For `R = k[x]` and `∂ = d/dx`, `L_∂(x·dx) = dx`, and `L_∂(dx) = 0`.
- For `∂ = 0`, `L_∂ = 0`; for `∂ = x·d/dx` on `k[x]`, `L_∂(dx) = d(x) = dx ≠ 0`, which excludes the model
  `a·db ↦ ∂(a)·db` that differentiates coefficients only.
- On `R = k[x]/(x²)` in characteristic `≠ 2`, `Ω_{R/k} = R·dx/(x·dx)`; for the derivation with `∂(x) = x`,
  `L_∂(dx) = dx` and `L_∂(x·dx) = x·dx + x·dx = 0` in `Ω_{R/k}`, so `L_∂` respects the relation, as the
  construction through `J/J²` guarantees.

*Needs:* Mathlib `KaehlerDifferential`, `Derivation`, `Algebra.TensorProduct`; for the agreement bullet only,
DiophantineApproximationAndTranscendence §5.6 (`exists_lieDerivativeOneForm`).

### 4.3 Seidenberg's lemma

Prove *Derivation.isStable_of_mem_minimalPrimes*: in a Noetherian ring `R` containing `ℚ`, every minimal
prime over an ideal stable under a derivation `∂` is `∂`-stable (hamann2003, Lemma 0.1, line 56). Route:
the radical `J` of a `∂`-stable ideal is `∂`-stable (from `a^n ∈ I` one derives `(∂a)^{2n−1} ∈ I` by repeated
differentiation, dividing by integers); a minimal prime `P` over `J` is `(J : x)` for some `x ∉ J`; for `y ∈ P`,
`x²∂(y) ∈ J`, so `x∂(y) ∈ J` and `∂(y) ∈ P` (hamann2003, lines 58–64).

**Checks.**

- In `ℚ[x]` with `∂ = d/dx`, the stable ideal `(x²)` has minimal prime `(x)`, which is not `∂`-stable: but
  `(x²)` is not `∂`-stable (`∂(x²) = 2x`); the only `∂`-stable ideals are `0` and `ℚ[x]`.
- In `ℚ[x, y]` with `∂ = ∂/∂x`, the stable ideal `(y²)` has stable minimal prime `(y)`.
- In `𝔽_p[x]` with `∂ = d/dx`, `(x^p)` is stable while its minimal prime `(x)` is not: the hypothesis
  `ℚ ⊆ R` is needed.

*Needs:* Mathlib `Ideal.minimalPrimes`, `Ideal.radical`, `Derivation`.

### 4.4 A free quotient of the differentials forces smoothness

Prove *smooth_of_kaehler_surjection_charZero*: let `k` have characteristic zero and `X` be reduced, locally of
finite type over `k` and pure of dimension `d`. If `Ω_{X/k}` admits a locally free quotient of rank `d`, then
`X` is smooth over `k` (nashModificationNotes2024, Proposition 2.3, lines 179–199, over an algebraically
closed field with a proof through completions; the route below avoids completions). Route, at a point `x` with
`R = O_{X,x}`:

1. §4.1 gives `x_j`, `∂_i` and `Ω_{R/k} = (⊕ R dx_j) ⊕ T`, `T = ker q`.
2. `T_P = 0` at every minimal prime `P`: `R_P` is the local ring at a generic point, which lies in `X_sm`
   (§1.1, `k` perfect), where `Ω` is free of rank `d` (§0.3), and `q_P` is a surjection between free modules of
   rank `d`.
3. `M = Ω_{R/k}/(⊕ R dx_j) ≅ T` and `Ann_R(M)` is `∂_i`-stable for every `i` (§4.2).
4. If `M ≠ 0`, a minimal prime `P` over `Ann_R(M)` is `∂_i`-stable (§4.3). Its contraction to `k[X_1, …, X_d]`
   (via `X_j ↦ x_j`) is stable under all `∂/∂X_i`, hence zero (a nonzero element of least degree would have a
   nonzero derivative of smaller degree in it, or be a nonzero constant). So `trdeg_k κ(P) ≥ d`, the closure of
   `P` has dimension `≥ d` (SchemeAndStackFoundations §0.7), and `P` is a minimal prime of `R` (pure dimension
   `d`), contradicting `M_P = T_P = 0` (2). Hence `T = 0` and `Ω_{R/k}` is free of rank `d`.
5. At a closed point, `κ` is finite separable over `k`, so `dim_κ m/m² = d = dim R` (§0.5,
   SchemeAndStackFoundations §0.7) and `R` is regular; §0.6 concludes.

**Checks.**

- For `X` smooth, the hypothesis holds with the identity quotient and the conclusion is trivial.
- For the cusp over `ℚ`, `Ω_{X/k}` has no locally free rank-one quotient (§2.5), consistently.
- Over `𝔽_2` the cusp has a free rank-one quotient (§2.5) and is singular: the characteristic hypothesis is
  needed; the proof fails at step 4, where `(x^p)` is `∂`-stable with non-stable minimal prime (§4.3).

*Needs:* §§0.3, 0.5, 0.6, 1.1, 4.1, 4.2, 4.3; SchemeAndStackFoundations §0.7; Mathlib `IsRegularLocalRing`.

### 4.5 Nobile's theorem

Prove *nashBlowupHom_isIso_iff_smooth_charZero*: for `k` of characteristic zero and `X` in the Setting, `ν` is
an isomorphism iff `X` is smooth over `k` (nobile1975, Theorem 2, line 143, over an algebraically closed field;
nashModificationNotes2024, Theorem 2.1, line 143; duarteNunezBetancourt2020, Theorem 2.3, line 136). Route:
§2.5 and §4.4. No algebraic closedness is assumed.

**Checks.**

- The cusp over `ℚ` is singular and `ν` is not an isomorphism (§2.5).
- The node in characteristic `0` is singular and `X* = 𝔸¹ ⊔ 𝔸¹ ≠ X`.
- In characteristic `2` the cusp is singular with `ν` an isomorphism: the statement is false without the
  characteristic hypothesis (nobile1975, line 60; duarteNunezBetancourt2020, lines 140–141).

*Needs:* §§2.5, 4.4.

### Examples

For the cusp over `ℚ` at the origin, `Ω = (R dx ⊕ R dy)/(2y dy − 3x² dx)` has torsion element `2dy − 3t dx`
(after pulling back to `k[t]`) killed by `t³`, and no free quotient of rank one.

### Dependencies

Layers 0–2; SchemeAndStackFoundations §0.7; DiophantineApproximationAndTranscendence §5.6 (the agreement
bullet of §4.2).

## Layer 5: normal varieties in positive characteristic

### 5.1 Frobenius finiteness

Prove *frobenius_finite_of_essFiniteType*: for a perfect field `k` of characteristic `p` and a `k`-algebra `R`
essentially of finite type, the absolute Frobenius `F : R → R` is finite; for `R` a domain, `F_*R ≅ R^{1/p}`
(nashModificationNotes2024, Section 5, lines 418–420). Route: if `R` is generated by `a_1, …, a_n` over
`k = k^p`, the monomials `a^α`, `0 ≤ α_i < p`, generate `R` over `R^p`; for a localization `S⁻¹R`,
`s⁻¹ = s^{p−1}/s^p`.

**Checks.**

- For `R = k[t]`, `F_*R` is free on `1, t, …, t^{p−1}`.
- For `R = k`, `F` is an isomorphism (perfect field).
- For `k = 𝔽_p(t)` imperfect, `R = k(s)` with `s` transcendental is finite over `R^p = k^p(s^p)` of degree `p²`,
  not `p`: the count of generators uses `k^p = k`.

*Needs:* Mathlib `frobenius`, `Algebra.FiniteType`, `Module.Finite`.

### 5.2 The p-monomial operators

Prove *exists_pMonomialOperators*: let `R` be a local `k`-algebra of characteristic `p`, `x_1, …, x_d ∈ m` and
`∂_1, …, ∂_d` `k`-derivations with `∂_i(x_j) = δ_ij`. For `α ∈ A = {0, …, p−1}^d` put
`∂^{(α)} = (α!)⁻¹ ∂_1^{α_1} ∘ ⋯ ∘ ∂_d^{α_d}` (`α!` is a unit since `α_i < p`). Then `∂^{(α)}(x^β) = binom(β, α)·x^{β−α}`
for `α ≤ β` and `0` otherwise, the matrix `(∂^{(α)}(x^β))_{α,β ∈ A}` is unitriangular modulo `m`, and with its inverse
`(c_{γα})` the operators `φ_γ = Σ_α c_{γα}∂^{(α)}` are `R^p`-linear and satisfy `φ_γ(x^β) = δ_{γβ}`
(duarteNunezBetancourt2020, proof of Theorem 3.10, lines 271–283; nashModificationNotes2024, lines 394–407).
`R^p`-linearity: every derivation satisfies `∂(r^p f) = r^p ∂f`.

**Checks.**

- For `d = 1`, `p = 2`, `R = k[x]_{(x)}`: `φ_0 = id − x·∂` and `φ_1 = ∂`, so `φ_0(1) = 1`, `φ_0(x) = 0`,
  `φ_1(1) = 0`, `φ_1(x) = 1`.
- For `d = 0`, `A = {∅}` and `φ_∅ = id`.
- For the cusp in characteristic `3` with `x_1 = x`, `∂ = ∂/∂x`: the operators exist, `φ` separates
  `1, x, x²`, but `y = t³` is not in the `R^3`-span of `1, x, x²`, so the operators alone do not give freeness
  (§5.4 needs normality).

*Needs:* §4.1; Mathlib `Derivation`, `Matrix`.

### 5.3 The generic Frobenius basis

Prove *frobeniusBasis_functionField*: let `k` be perfect of characteristic `p`, `K` a field finitely generated over
`k` with `dim_K Ω_{K/k} = d`, and `x_1, …, x_d ∈ K` with `dx_1, …, dx_d` a basis of `Ω_{K/k}`. Then the monomials
`x^α`, `α ∈ A`, form a `K^p`-basis of `K`, so `[K : K^p] = p^d`. Route: `Ω_{K/𝔽_p} → Ω_{K/k}` is an isomorphism
because `dc = d((c^{1/p})^p) = 0` for `c ∈ k`; so `dx_1, …, dx_d` is a `K`-basis of `Ω¹_{K/𝔽_p}`, and
`x_1, …, x_d` is a `p`-basis by the converse half of DerivedDeRhamCohomology §0.23 (from a basis of
differentials to a `p`-basis).

**Checks.**

- `K = k(t)`: the basis is `1, t, …, t^{p−1}`.
- `d = 0`, `K` finite over `k`: `K = K^p` (a finite extension of a perfect field is perfect).
- `K = k(t)` with the element `t^p` (whose differential is `0`) is not a `p`-basis: the differentials must form
  a basis.

*Needs:* DerivedDeRhamCohomology §0.23; Mathlib `KaehlerDifferential`, `frobenius`.

### 5.4 Freeness of the Frobenius pushforward

Prove *frobeniusPushforward_free_of_kaehler_surjection*: let `k` be perfect of characteristic `p`, `X` normal, of
finite type over `k`, pure of dimension `d`, `x` a closed point, `R = O_{X,x}`, and `q : Ω_{R/k} → R^d` a
surjection. With `x_j ∈ m`, `∂_i` from §4.1, the `R`-linear map `ψ : ⊕_{α ∈ A} R e_α → F_*R`, `e_α ↦ x^α`
(that is, `Σ r_α e_α ↦ Σ r_α^p x^α`), is an isomorphism; hence the Frobenius of `R` is flat and `R` is regular
(duarteNunezBetancourt2020, proof of Theorem 3.10, lines 284–305; nashModificationNotes2024, Section 5, lines
408–439). Route:

1. `ψ` is injective: `φ_γ` (§5.2) applied to `Σ r_α^p x^α` returns `r_γ^p`, and `R` is reduced.
2. At the zero prime, `ψ ⊗ K` is bijective by §5.3 applied to `K = Frac R`, where `dx_1, …, dx_d` is a basis of
   `Ω_{K/k}` (generic smoothness, §1.1 and §0.3).
3. At a height-one prime `Q`, `R_Q` is a discrete valuation ring (SchemeAndStackFoundations §0.30), `F_*R_Q` is
   finite (§5.1) and torsion-free, hence free of rank `p^d` (step 2), and `R_Q → F_*R_Q` splits (its cokernel is
   torsion-free because `R_Q` is integrally closed). With a splitting `σ_Q`, the map
   `ρ_Q(f) = Σ_γ σ_Q(φ_γ(f)) e_γ` is a surjection of free modules of rank `p^d` with `ρ_Q ∘ ψ_Q = id`, so `ψ_Q` is
   bijective.
4. At primes of height `≥ 2`, `depth R_Q ≥ 2` (Serre's criterion, SchemeAndStackFoundations §4.13) and `0` is the
   only associated prime of the torsion-free `F_*R`; SchemeAndStackFoundations §0.17 `bijective_of_depth` gives
   bijectivity of `ψ`.
5. `F_*R` free implies Frobenius flat, and EnhancedDerivedSheaves §E1.6 `isRegular_of_frobenius_flat` gives `R`
   regular.

**Checks.**

- For `R = k[x_1, …, x_d]_{m}`, `ψ` is the standard identification of `F_*R` with the free module on `x^α`.
- For the cusp in characteristic `3` (not normal), `ψ` is injective but not surjective (`t³ ∉` image), so
  normality is needed in step 3.
- For `d = 0`, `R = k` and `ψ : R → F_*R` is the identity under `k^p = k`.

*Needs:* §§0.3, 1.1, 4.1, 5.1, 5.2, 5.3; SchemeAndStackFoundations §§0.17, 0.30, 4.13; EnhancedDerivedSheaves §E1.6.

### 5.5 The theorem of Duarte and Núñez-Betancourt

Prove *nashBlowupHom_isIso_iff_smooth_of_normal*: for a perfect field `k` of characteristic `p > 0` and `X` normal
in the Setting, `ν` is an isomorphism iff `X` is smooth over `k` (duarteNunezBetancourt2020, Theorem 3.10, line 256,
over an algebraically closed field; nashModificationNotes2024, Theorem 5.1, line 362, where "singular" should read
"nonsingular"). Route: §2.5 gives the quotient, §5.4 regularity at closed points, §0.6 smoothness.

**Checks.**

- Over the imperfect field `k = 𝔽_p(t)`, `p > 2`, the curve `x^p + y² + t = 0` is regular, hence normal, at the point
  `(y, x^p + t)` and not smooth there (stacksAlgebra, Example 10.140.8, tag 00TY, lines 17720–17726), while
  `Ω = (R dx ⊕ R dy)/(2y dy)` has the free quotient `dx ↦ 1`, `dy ↦ 0`; so `ν` is an isomorphism: the theorem is
  false over imperfect fields.
- The cusp in characteristic `2` or `3` is singular with `ν` an isomorphism; it is not normal.
- The quadric cone `z² = xy` (normal) in characteristic `p ≠ 2` has Jacobian ideal `(x, y, z)`, not invertible, so
  `ν` is not an isomorphism, consistently.

*Needs:* §§0.6, 2.5, 5.4.

### Examples

The imperfect-field curve `x^p + y² + t = 0` over `𝔽_p(t)`; the cusp in small characteristic; the quadric cone.

### Dependencies

Layers 0–2 and §4.1; SchemeAndStackFoundations §§0.17, 0.30, 4.13; EnhancedDerivedSheaves §E1.6;
DerivedDeRhamCohomology §0.23.

## Layer 6: the normalised Nash blowup

### 6.1 Definition and basic properties

Define *normalizedNashBlowup*: `X̄* = (X*)^ν`, the normalisation of `X*` in the sense of
AlgebraicModuliForArithmeticGeometry §5.4, with `η : X̄* → X*` and `ν̄ = ν ∘ η` (castilloDuarteLeytonLiendo2026,
lines 20–21; gonzalezSprinberg1982, Introduction, lines 60–69; stacksNormalization, Definition 29.55.1, tag 035N,
line 6498, and Lemma 29.55.3, tag 035P, line 6521). For `X` in the Setting:

- `η` is finite (`ArithmeticModuli.DMNormalization.finite`, `X*` being of finite type over `Spec k`), surjective,
  birational on components, and an isomorphism over the normal locus of `X*`, in particular over `ν⁻¹(X_sm)`;
- `X̄*` is normal, separated and of finite type over `k`, pure of dimension `d`, with dense smooth locus, so it is in
  the Setting;
- `ν̄` is proper, an isomorphism over `X_sm`, and `ν̄⁻¹(X_sm)` is dense.

**Checks.**

- For the cusp in characteristic `0`, `X̄* = X* = 𝔸¹`.
- For the cusp in characteristic `2`, `X* ≅ X` and `X̄* = 𝔸¹`: the normalised Nash blowup resolves it in one step
  while the Nash iteration never does (§2.7).
- For the node `xy = 0`, in every characteristic, `X* = 𝔸¹ ⊔ 𝔸¹` is already normal and `η` is the identity; a
  definition normalising `X` instead of `X*` would give the same scheme here but differs for the surface
  `y² = x²z` in characteristic `≠ 2`, whose normalisation is finite over `X` while `X̄* = X*` has a `ℙ¹` over
  the origin (nobile1975, Example 4). In characteristic `2` the Jacobian ideal of that surface is the
  principal ideal `(x²)` on an integral surface, so `X* = X` (§3.3) and the two definitions agree there.

*Needs:* §§2.1–2.3; AlgebraicModuliForArithmeticGeometry §5.4; SchemeAndStackFoundations §0.30.

### 6.2 Universal property

Prove *normalizedNashBlowup.lift*: for `X` in the Setting, a locally Noetherian normal scheme `Z`, a morphism
`h : Z → X` sending
generic points of irreducible components of `Z` to generic points of irreducible components of `X`, and a locally
free rank-`d` quotient `h*Ω_{X/k} → M`, there is a unique `Z → X̄*` over `X` compatible with the quotients
(stacksNormalization, Lemma 29.55.5(4), tag 035Q, line 6570; §2.4). Route: §2.4 gives `q : Z → X*`, which maps
generic points of `Z` into `ν⁻¹(X_sm) ≅ X_sm` and hence to generic points of `X*`; the normalisation's universal
property (AlgebraicModuliForArithmeticGeometry §5.4) lifts `q`. The hypothesis on generic points makes
`h⁻¹(X_sm)` dense, as `Z` has locally finitely many irreducible components.

**Checks.**

- For `Z = X̄*` itself the lift is the identity.
- For the cusp in characteristic `2` and `Z = 𝔸¹` (normalisation) with `M` the pullback of the free quotient
  `dx ↦ 0`, `dy ↦ 1`, the lift is the isomorphism `𝔸¹ ≅ X̄*`.
- A closed point `Spec k → X_sm` does not map a generic point to a generic point; it still factors (through the
  isomorphism over `X_sm`) but is outside the hypotheses, which are those of the normalisation.

*Needs:* §§2.4, 6.1; AlgebraicModuliForArithmeticGeometry §5.4.

### 6.3 Locality and separable base change

Prove *normalizedNashBlowup.restrict*: for `V ⊆ X` open, `V̄* ≅ ν̄⁻¹(V)` over `V` (§2.6 and normalisation commuting
with open immersions, AlgebraicModuliForArithmeticGeometry §5.4).

Prove *normalizedNashBlowup.baseChange*: for a finite separable extension `k'/k`, `(X̄*)_{k'} ≅ (X_{k'})̄*` over
`X_{k'}`. Route: §2.6, `Spec k' → Spec k` is smooth, and the base change of the inclusion of generic points of `X*`
is the inclusion of generic points of `(X*)_{k'}` because `κ(ξ) ⊗_k k'` is a finite product of fields; Mathlib's
`normalizationPullback` is an isomorphism along smooth maps.

**Checks.**

- For `V = X_sm`, `V̄* = V`.
- For the cusp over `ℚ` and `k' = ℚ(i)`, both sides are `𝔸¹_{ℚ(i)}`.
- For `k = 𝔽_p(t)`, `p > 2`, the regular curve `C : x^p + y² + t = 0` has `C̄* = C* = C`, but over the inseparable
  `k' = k(t^{1/p})`, `C_{k'}` is the non-normal curve `(x + t^{1/p})^p + y² = 0` with `(C_{k'})̄* = 𝔸¹ ≠ C_{k'}`:
  separability is needed.

*Needs:* §§2.6, 6.1; AlgebraicModuliForArithmeticGeometry §5.4; Mathlib `Scheme.Hom.normalizationPullback`.

### 6.4 Isomorphism criteria

Prove *normalizedNashBlowupHom_isIso_iff*: for `X` in the Setting, `ν̄` is an isomorphism iff `X` is normal and `ν`
is an isomorphism (nashModificationNotes2024, Section 6, lines 515–517; stacksNormalization, Lemma 29.55.9, tag
0H7D, line 6636). Route: if `ν̄` is an isomorphism, `s = η ∘ ν̄⁻¹` is a section of `ν`, a closed immersion (`ν` is
separated) whose image contains the dense `ν⁻¹(X_sm)`, so `s` is a surjective closed immersion into the reduced `X*`
and `ν` is an isomorphism (`isIso_of_isClosedImmersion_of_surjective`); `X ≅ X̄*` is normal. Conversely, if `X` is
normal and `ν` is an isomorphism, `X*` is normal and `η` is an isomorphism (AlgebraicModuliForArithmeticGeometry §5.4).

Corollaries: in characteristic zero (§4.5), and over a perfect field of characteristic `p` (§5.5), `ν̄` is an
isomorphism iff `X` is smooth over `k`.

**Checks.**

- For the cusp in characteristic `2`, `ν` is an isomorphism, `X` is not normal, and `ν̄` is not an isomorphism.
- For `X` smooth, both are isomorphisms.
- Over `𝔽_p(t)`, `p > 2`, the regular curve `x^p + y² + t = 0` has `ν̄` an isomorphism without being smooth: the
  perfectness hypothesis of the corollary is needed.

*Needs:* §§2.5, 4.5, 5.5, 6.1; Mathlib `isIso_of_isClosedImmersion_of_surjective`; AlgebraicModuliForArithmeticGeometry §5.4.

### Examples

The cusp in characteristic `2`: `X* ≅ X`, `X̄* = 𝔸¹`. The regular non-smooth curve over `𝔽_p(t)`: `ν` and `ν̄` are
isomorphisms.

### Dependencies

Layers 2, 4, 5; AlgebraicModuliForArithmeticGeometry §5.4; Mathlib relative normalisation.

## Layer 7: iteration and the never-resolves principle

### 7.1 The normalised iteration

Define *normalizedNashIterate*: `Y_0 = X`, `Y_{i+1} = (Y_i)̄*`, and *NormalizedNashIterationResolves* `X d` as
`∃ i, Y_i → Spec k is smooth` (castilloDuarteLeytonLiendo2026, Introduction, lines 28–32 and 52–55). By §6.1 every
`Y_i` with `i ≥ 1` is normal and in the Setting.

Prove *nashIterate_of_smooth* and *normalizedNashIterate_of_smooth*: if `X` is smooth then `X^{(i)} ≅ X ≅ Y_i` over
`X` for all `i` (§§2.5, 6.4).

**Checks.**

- The cusp in characteristic `0`: `Y_1 = 𝔸¹`, resolved at `i = 1`.
- The cusp in characteristic `2`: `Y_1 = 𝔸¹` is smooth, while every `X^{(i)} ≅ X`.
- For `i = 0`, `Y_0 = X` whether or not `X` is normal.

*Needs:* §§2.7, 6.1, 6.4.

### 7.2 Open subschemes propagate

Prove *iterate_openSubscheme*: for `Y` in the Setting, an open `U ⊆ Y` and a `k`-isomorphism `U ≅ Z`, the `i`-th
Nash iterate of `Y` contains an open subscheme `k`-isomorphic to the `i`-th Nash iterate of `Z`, for every `i`; the
same holds for the normalised iterates. Consequently, if `Y_m` contains an open subscheme `k`-isomorphic to `X` for
some `m ≥ 1`, then `Y_{m+i}` contains an open subscheme isomorphic to `Y_i` for all `i`, and `Y_{jm}` contains one
isomorphic to `X` for all `j ≥ 1`; likewise for the `X^{(i)}`. Route: §2.6 and §6.3 (locality), and the transport of
Nash blowups along `k`-isomorphisms (§2.4 uniqueness).

**Checks.**

- For `U = Y`, the statement is the identity.
- For the cusp in characteristic `2`, `X^{(1)} ≅ X`, and the conclusion `X^{(j)} ⊇ X` holds for all `j`.
- For `U = Y_sm`, the iterates of `U` are `U` itself, consistent with `ν⁻¹(Y_sm) ≅ Y_sm`.

*Needs:* §§2.4, 2.6, 6.3, 7.1.

### 7.3 The never-resolves principle

Prove *not_normalizedNashIterationResolves_of_openSubscheme*: let `X` be in the Setting and singular, and suppose
that for some `m ≥ 1` the iterate `Y_m` contains an open subscheme `k`-isomorphic to `X`. Then no `Y_i` is smooth over
`k`. The same holds for the Nash iteration with `X^{(m)}` (castilloDuarteLeytonLiendo2026, Theorem, lines 58–67,
"Consequently …"). Route: if `Y_i` were smooth, `Y_n ≅ Y_i` for `n ≥ i` (§7.1); choose `j` with `jm ≥ i`; `Y_{jm}`
contains an open subscheme isomorphic to the singular `X` (§7.2), and an open subscheme of a smooth scheme is smooth.

In the form in which the theorem of Castillo, Duarte, Leyton-Álvarez and Liendo is applied: a normal singular `X` in the
Setting whose first or second normalised Nash blowup contains an open subscheme `k`-isomorphic to `X` is not resolved by
the normalised Nash iteration; if its Nash blowup contains such an open subscheme, it is not resolved by the Nash
iteration. The existence of such toric `X` in every dimension `d ≥ 4` is the consumer's theorem.

**Checks.**

- With `m = 0` the hypothesis holds for every `X` (`Y_0 = X`) and the conclusion fails for the cusp in characteristic `0`
  (`Y_1` smooth): `m ≥ 1` is needed.
- For `X` smooth the hypothesis of singularity fails, and indeed `Y_0` is smooth.
- The cusp in characteristic `2` with `m = 1` for the Nash iteration (`X^{(1)} ≅ X`): no `X^{(i)}` is smooth, matching §2.7;
  its normalised iteration is resolved, matching §7.1, since `Y_1 = 𝔸¹` contains no open subscheme isomorphic to the cusp.

*Needs:* §§7.1, 7.2.

### Examples

The cusp in characteristic `2` is the smallest instance of §7.3 for the Nash iteration. The instances for the normalised
iteration in dimension `d ≥ 4` are the toric varieties of castilloDuarteLeytonLiendo2026 (statement only here).

### Dependencies

Layers 2 and 6.

## Downstream consumers

A toric roadmap computing Nash blowups of normal toric varieties through logarithmic Jacobian ideals
(castilloDuarteLeytonLiendo2026, Section 1; nashModificationNotes2024, Section 6) consumes §1.2, §§2.1–2.6, §3.2,
Layer 6 and §7.3, and proves the existence of the dimension-four examples. A Part II on higher-order Nash blowups and on
the normalised Nash transformation of surfaces consumes §§1.2–1.5, Layer 2 and Layer 6. Roadmaps on polar varieties and
Whitney conditions consume the Nash cotangent bundle of §2.1 and the Gauss map of §3.1. ResolutionOfSingularitiesCharacteristicZero
is earlier in the merge order and is not a consumer.

## References

- Augusto Nobile; [Some properties of the Nash blowing-up](https://msp.org/pjm/1975/60-1/pjm-v60-n1-p24-s.pdf); Pacific J.
  Math. 60 (1975), 297–305 (`nobile1975`).
- Augusto Nobile; [Notes on Nash modification](https://arxiv.org/abs/2404.09102v1); arXiv:2404.09102v1 (`nashModificationNotes2024`).
- Daniel Duarte, Luis Núñez-Betancourt; [Nash blowups in prime characteristic](https://arxiv.org/abs/2001.10491v2);
  arXiv:2001.10491v2, Rev. Mat. Iberoam. 38 (2022) (`duarteNunezBetancourt2020`).
- Federico Castillo, Daniel Duarte, Maximiliano Leyton-Álvarez, Alvaro Liendo; [Nash blowup fails to resolve singularities in
  dimensions four and higher](https://arxiv.org/abs/2409.19767v3); arXiv:2409.19767v3, Ann. of Math. 203 (2026)
  (`castilloDuarteLeytonLiendo2026`).
- Gerardo González-Sprinberg; [Résolution de Nash des points doubles rationnels](https://www.numdam.org/item/AIF_1982__32_2_111_0.pdf);
  Ann. Inst. Fourier 32 (1982), 111–178 (`gonzalezSprinberg1982`).
- Eloise Hamann; [A question about differential ideals](https://arxiv.org/abs/math/0311006v1); arXiv:math/0311006v1 (`hamann2003`).
- Jarod Alper; [Stacks and Moduli](https://sites.math.washington.edu/~jarod/moduli-versions/moduli-8-19-24.pdf); version of
  19 August 2024 (`alperModuli`).
- The Stacks Project Authors; [Morphisms of Schemes](https://stacks.math.columbia.edu/tag/01QL) (`stacksNormalization`),
  [Varieties](https://stacks.math.columbia.edu/tag/056V) (`stacksVarieties`), [Commutative Algebra](https://stacks.math.columbia.edu/tag/00TT)
  (`stacksAlgebra`).
- Background, cited by locator: Hironaka, *On Nash blowing-up* (1983); Spivakovsky, *Sandwiched singularities and
  desingularization of surfaces by normalized Nash transformations*, Ann. of Math. 131 (1990); Semple, Proc. London Math.
  Soc. (3) 4 (1954); Teissier, *Variétés polaires II*, LNM 961 (1982); Grothendieck–Dieudonné, EGA I (1971), §9.7.
