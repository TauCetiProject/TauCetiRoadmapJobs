# Roadmap: hodge classes for the jacquet–langlands correspondence

**Summary.** This roadmap constructs a rational Hodge class that realises the Jacquet–Langlands
correspondence between the cohomology of two quaternionic Shimura varieties attached to one
cuspidal representation of `GL₂(𝔸_F)`, following Ichino and Prasanna (IP23). From a
four-dimensional Hermitian space it builds the exterior-square construction, a conjugate-linear
Hodge-star operator `L` on `⋀²U` with `L∘L = vol`, which turns `⋀²U` into a rank-three
skew-Hermitian space over a quaternion algebra and yields the exceptional isomorphism
`PGU_E(U) ≃ PGU_B(⋀²U)°`. It then restricts explicit harmonic Kudla–Millson Schwartz forms along
the block decomposition `U = B₁ ⊥ B₂`, proves that one global theta class pairs nontrivially with
every archimedean sign vector, identifies the Hecke eigenspace containing that class as purely of
Hodge type `(d,d)`, and descends a complex invertible correspondence to a rational one by a
determinant argument. The end theorems are: the existence of an `L`-rational Hodge class
`ξ₀ ∈ V₁ ⊗_L V₂(d)` inducing an isomorphism of `L`-Hodge structures `V₁ ≃ V₂` between the
quaternionic multiplicity realizations (IP23, Theorem 3.2(i) and Theorem 12.4(i)); the same class
chosen fixed in every `ℓ`-adic realization under the degree-`2d` Kottwitz hypothesis, giving
`G_{F_Σ}`-equivariant isomorphisms for all `ℓ` at once (Theorem 3.2(ii), Theorem 12.4(ii)); and
the weight-two rational correspondence on `H^{2d}(X₁ × X₂, ℚ)(d)` (Theorem 1).

## Scope and ownership

This roadmap owns: the Hermitian exterior construction and its block restrictions (Layers 1–2);
the explicit local torus, weight and signature computations of the exceptional maps (Layer 3);
the harmonic Schwartz forms on real quadratic spaces of even signature, their polynomial Fock
description and their restriction formulas (Layer 4); the specified Shimura diagram, its component
torus and component character class (Layer 5); the quaternionic theta lifts of IP23 §§9–10 and the
simultaneous nonvanishing theorem (Layers 6–7); the Hodge-type and degree analysis of the theta
Hecke eigenspace (Layer 8); the degree-`2d` Galois analysis (Layer 9); and the rational descent and
end theorems (Layer 10). It also owns the realizations of the cohomology of compact Shimura
varieties with automorphic coefficient systems, their pullbacks and normalized traces (§§0.2–0.3),
the Hodge-type criterion for coefficient cohomology of compact unitary similitude Shimura varieties
(§8.6) and the local fact that de Rham additive characters are unramified (§9.3); no earlier
roadmap states these, and they are needed here first.

It leaves the following to the named roadmaps and does not state them again.

- Pure Hodge structures, Tate twists, tensor products, duals and internal Hom are Tau Ceti's
  `TauCeti.Hodge` library (`TauCeti/Geometry/Hodge/`), specified by `Completed/HodgeStructures`.
  The compatible-realization category `M_k^L` and the subspace `HT(V)` of simultaneous Hodge and
  Tate classes are MotivesAndAlgebraicCycles §7.15; rational Hodge classes are its §7.1; Weil
  cohomology, Künneth, Poincaré duality and the correspondence action `c_*(α) = pr₂,*(cl(c) ∪ pr₁*α)`
  are its §§2.2–2.3, with Betti and étale realizations in §§2.6–2.7.
- Exterior powers, the determinant pairing `exteriorPower.pairingDual`, the wedge pairing
  `exteriorPower.wedgePairing` and the bilinear Hodge star `exteriorPower.hodgeStar` are Mathlib's.
  The operator `L` of §1.3 is the conjugate-linear analogue in degree `(2,2)`: for `σ = id` and a
  symmetric bijective form it is the inverse of `exteriorPower.hodgeStar`, and §1.4 then specialises
  to the degree-`(2,2)` case of the identity `Δ • ⋆(⋆x) = (−1)^{kl} x` that the module documentation of
  `Mathlib/LinearAlgebra/ExteriorPower/HodgeStar.lean` states without proof. The determinant action on the top exterior
  power is Tau Ceti's `exteriorPower.map_top_eq_det_smul`.
- Quaternion algebras, their norm-rescaling isomorphisms `TauCeti.QuaternionAlgebra.normMulEquiv`
  and `TauCeti.QuaternionAlgebra.rescaleJEquiv`, the common-slot tensor isomorphism
  `TauCeti.QuaternionAlgebra.tensorAlgEquivTensorMatrix` and the Brauer identity
  `TauCeti.BrauerGroup.quaternionClass_mul` are Tau Ceti's. Hilbert 90 is Mathlib's
  `groupCohomology.H1ofAutOnUnitsUnique`. Global Brauer invariants and their sum are ClassFieldTheory
  Layer 10; reciprocity is its Layers 6–8 and 11; quadratic norm symbols are its §5.4.
- General spin and Clifford theory stay in OrthogonalSpinGroups, which excludes Hermitian and
  unitary groups; the complex exceptional isomorphism `Spin₆ ≃ SL₄` is
  RepresentationTheory/SpinRepresentations Layer 6. The exceptional maps here carry the additional
  Hermitian, volume, multiplier and quaternionic data and do not restate a spin theory.
- Traceless tensors and the trace maps are RepresentationTheory/SchurWeyl Layer 9
  (`harmonicTensors`); positive-definite harmonic polynomials are
  GeometryOfNumbersAndQuadraticArithmetic §4.3. Section 4.1 is the symmetric part of the former for
  a complexified real form of arbitrary signature, with an undivided pairing.
- The oscillator representation, its Schrödinger models, local theta modules, Howe duality, the
  quaternionic similitude dual pairs with their splittings and the Harris–Kudla comparison
  (IP23 Appendix A), the real discrete-series theta lifts of IP23 §7.2, the unramified quaternionic
  lift of IP23 Lemma 9.4, the similitude theta correspondence of IP23 Lemma 9.3, global theta lifts,
  the Rallis inner product formula and nonvanishing criterion, the global see-saw and the toric theta
  pairing are MetaplecticAutomorphicForms §§0.15–0.17, 3.7, 3.9, 3.16, 3.23–3.36, 3.38, 5.6, 6.4,
  6.10–6.15 and 6.22.
- Vogan–Zuckerman modules, their relative Lie algebra cohomology and its Hermitian Hodge
  decomposition are AutomorphicFormsOnReductiveGroups §§5.2 and 5.4; fields of rationality and
  descent are its §5.7; explicit `GL₂(ℝ)` modules are its §2.6. Local systems, Betti complexes,
  Hecke actions, level pullbacks and traces and the automorphic comparison of locally symmetric
  spaces are ArithmeticLocallySymmetricSpaces §§ALS.1.1–ALS.1.2, ALS.1.8, ALS.3.3, ALS.3.6 and
  ALS.5b.1–ALS.5b.4. The spectral decomposition of a compact quotient is AutomorphicSpectralTheory
  §4.7.
- Global Jacquet–Langlands, strong multiplicity one, cohomological rationality, Hilbert algebraic
  weights, base change, the adjoint lift and quadratic automorphic induction are
  GL2AutomorphicRepresentationsAndTransfer §§R16.4.4, R16.4.5, R16.6.3, R17.3.1, R17.3.7, R17.3.8,
  R17.4.2, R17.4.13 and R17.4.16.
- Canonical models, reflex norms, finite-level reciprocity, functoriality in the datum and
  zero-dimensional Shimura varieties are ShimuraVarieties §§4.2, 4.3, 4.9, 6.7, 8.1, 8.5 and 8.6.
  Variations of Hodge structure, the rational Hodge structures of SV4 and Kostant representatives are
  ShimuraData §§3.1, 3.3, 3.10 and 4.3.
- Weak approximation, ray class groups, finite ideles and Hecke characters are GlobalNumberFields
  Layers 1, 2, 4, 6, 9 and 10. Dual groups and `L`-groups are ReductiveGroupsPartII §§RG2.5.1–RG2.5.2,
  with the unitary similitude dual group of EndoscopicTransferAndUnitaryTraceComparison §1.8.
  Algebraic group quotients and identity components are ReductiveGroups Layers 3 and 6.
- Proper and smooth base change are EtaleCohomologyFoundations §§F.2.1–F.2.2 and F.3; Artin's
  comparison for constructible coefficients is ComplexComparisonPartII C6. De Rham representations
  and the de Rham comparison for proper smooth varieties are PadicHodgeTheory §§3.3 and 8.1; Tate's
  computation of `H¹(G_K, ℂ_p)` is PadicPeriodRings §1.4; the unramified and Bloch–Kato finite local
  conditions are SelmerIwasawaCohomology §§2.7 and 4.9.

This roadmap does not assert that `ξ₀` is algebraic or absolutely Hodge, and it does not prove
Kottwitz's conjecture: the all-`ℓ` statement is conditional on the explicit hypothesis of §9.2.

## Conventions

Fix a totally real number field `F` of degree `n`, with real places `Σ_∞`, and quaternion algebras
`B₁, B₂` over `F` split at exactly the same subset `Σ ⊂ Σ_∞`. Put `d = |Σ|` and assume `d < n`:
some real place ramifies in both algebras. `F_Σ` is the fixed field of `{γ ∈ Gal(ℚ̄/ℚ) : γΣ = Σ}`,
the reflex field of every Shimura datum below; for `Σ = ∅` it is `ℚ`.

`π` is a cuspidal automorphic representation of `GL₂(𝔸_F)` with trivial central character and even
weights `k = (k_v)_{v∈Σ_∞}`, all `k_v ≥ 2`, admitting Jacquet–Langlands transfers `π₁, π₂` to
`B₁^×, B₂^×`. The coefficient field is `L = ℚ(π)`; it contains `ℚ(k)`, the fixed field of the
permutations of `k`. Unitary normalization `r = 0` is used: the coefficient representation is
`τ_k = ⊗_v Nrd_v^{(2−k_v)/2} Sym^{k_v−2}(τ_v)` and the local system is attached to its dual.
An `L`-Hodge structure is a rational Hodge structure with an action of `L` by Hodge endomorphisms;
complexification keeps every embedding of `L`. The Tate twist `(m)` changes Hodge type by
`(−m,−m)` and weight by `−2m`, the convention of `TauCeti.Hodge.HodgeStructureOn.tateTwist`.

Hermitian forms are conjugate-linear in the first variable. For a quadratic extension `E/F` with
nontrivial automorphism `σ`, a right quaternionic module has `⟨xβ, yγ⟩ = β*⟨x,y⟩γ`, where `*` is the
main involution. In the Hermitian exterior construction the basis of `⋀²U` is ordered
`e₁₂, e₁₃, e₁₄, e₂₃, e₂₄, e₃₄` and the top trivialization is normalized by `d_U(e₁∧e₂∧e₃∧e₄) = −1`;
these fix the signs of `L`. At split real places the coordinate calculations use the explicit local
basis of IP23 §6.3, and a change of orientation is transported, not dropped.

For the distinct-algebra case the product class `[B₁] + [B₂]` is represented by a division
quaternion algebra `B`, split at every real place. A CM quadratic `E/F` embedded in both `B_i` is
fixed, `B_i = E ⊕ Ej_i` with `j_i² = J_i ∈ F^×`, and `U = B₁ ⊥ B₂` with its mixed summand
`W = B₁ ⊗_E B₂` of `B`-rank two and diagonal summand `W₀` of `B`-rank one. The group
`(B₁^× × B₂^×)/{(t,t⁻¹)}` uses the anti-diagonal scalar quotient. The exterior map squares the
similitude multiplier; its kernel `μ₂` is scheme-theoretic, and an isogeny of algebraic groups is
never taken to be surjective on `F`-points.

Theta integrals use the convention `θ(f) = ∫ Θ(g,h) f(h) dh`, linear in the automorphic input.
MetaplecticAutomorphicForms §5.6 integrates the complex conjugate of its input, so its lift of
`f̄` is used. Locally `θ(τ)` is attached to the maximal `τ^∨`-isotypic quotient of the oscillator,
as in MetaplecticAutomorphicForms §3.35. In particular the source `τ_v` above `Σ` is
antiholomorphic of weight `−k_v−1`, and the product in the see-saw has the dual holomorphic weight
`k_v+1`.

`H_N^+ = {h ∈ B^×(𝔸_F) : Nrd(h) ∈ N(𝔸_E^×)}` is the norm-support subgroup and `H_∞^+` imposes only
positivity of `Nrd` at real places; finite local norm obstructions distinguish them. The index-two
statement used for extension by zero is for `𝔸_F^×/(F^× N(𝔸_E^×))`. Normalized traces go to the
actual image of a finite map of Shimura varieties and are extended by zero; compact averages have
volume one.

Harmonic coefficients are the kernel of trace contraction on symmetric tensors; the symmetric
bilinear pairing on `Sym^ℓ` sums over all permutations without a factorial denominator, so the
isotropic vector in a restriction formula is `e^ℓ/ℓ!`. The archimedean additive character is
`ψ(x) = exp(2πix)`. The real Schwartz forms assume the signature `(p,q)` has `p, q` even. The
algebraic Fock space is the polynomial-times-Gaussian subspace, not all Schwartz functions.

Galois conventions are those of ArithmeticGaloisRepresentations: Frobenius elements are arithmetic
unless named geometric, the cyclotomic character `ε_ℓ` has Hodge–Tate weight `+1`, and `ℚ_ℓ(m)` is
`ε_ℓ^m`.

## Exact supplier contracts

### From Mathlib

- Exterior powers `⋀[R]^n M`, `exteriorPower.ιMulti`, `exteriorPower.map` and
  `exteriorPower.map_apply_ιMulti` (`Mathlib/LinearAlgebra/ExteriorPower/Basic.lean`); the
  determinant pairing `exteriorPower.pairingDual` with `exteriorPower.pairingDual_ιMulti_ιMulti`
  (`Mathlib/LinearAlgebra/ExteriorPower/Pairing.lean`); the wedge product `exteriorPower.wedge`, the scalar pairing
  `exteriorPower.wedgePairing` and its perfectness instance `exteriorPower.instIsPerfPairWedgePairing`
  for finite free modules (`Mathlib/LinearAlgebra/ExteriorPower/WedgePairing.lean`); the induced bilinear form
  `LinearMap.BilinForm.exteriorPower` (`Mathlib/LinearAlgebra/ExteriorPower/BilinForm.lean`); and the bilinear Hodge
  star `exteriorPower.hodgeStar` (`Mathlib/LinearAlgebra/ExteriorPower/HodgeStar.lean`). The wedge pairing needs a
  trivialization of the top power and `k + l = finrank`; the Hodge star needs a bijective bilinear
  form. Neither accepts a conjugate-linear form: that is the content of §§1.3–1.4.
- Semilinear maps `M →ₛₗ[σ] N`, `LinearMap.det`, `Module.Basis`, `Matrix.det`, `Module.Dual`.
- `QuaternionAlgebra` (`ℍ[R,c₁,c₂,c₃]`) and its basis lemmas.
- `MvPolynomial.funext` (`Mathlib/Algebra/MvPolynomial/Funext.lean`): over an infinite integral
  domain two polynomials agreeing at every point are equal. It is the nonvanishing input of §10.6.
- `groupCohomology.H1ofAutOnUnitsUnique` (`Mathlib/RepresentationTheory/Homological/GroupCohomology/Hilbert90.lean`): Hilbert 90 for a
  finite Galois extension, used in §1.8.
- `SchwartzMap`, the Gaussian integrals and `Complex.Gamma`, used in Layer 4 and §7.5.

### From Tau Ceti

- `TauCeti.Hodge.HodgeStructureOn` (`TauCeti/Geometry/Hodge/Structure.lean`): a pure Hodge structure
  on a complex space with conjugation, filtration `F` opposed to its conjugate in the given weight.
  `TauCeti.Hodge.HodgeStructureOn.tateTwist` (`TauCeti/Geometry/Hodge/Tate/Twist.lean`) shifts `F` by `m` and the weight
  by `−2m`; the internal Hom structure `TauCeti.Hodge.HodgeStructureOn.internalHom`
  (`TauCeti/Geometry/Hodge/InternalHom/Basic.lean`) has weight `n₂ − n₁`; the tensor product is in
  `TauCeti/Geometry/Hodge/TensorProduct/Basic.lean`. The carrier has no coefficient action; the `L`-action of an
  `L`-Hodge structure is extra data commuting with `F`.
- `exteriorPower.map_top_eq_det_smul` and `exteriorPower.topEquiv`
  (`TauCeti/LinearAlgebra/ExteriorPower/Basic.lean`): an endomorphism of a free module of rank `n`
  acts on `⋀ⁿ` by its determinant, and a basis trivializes the top power.
- `TauCeti.QuaternionAlgebra.normMulEquiv` and `TauCeti.QuaternionAlgebra.rescaleJEquiv`
  (`TauCeti/Algebra/Quaternion/SymbolEquiv.lean`): `ℍ[R,a,N(z)b] ≃ₐ ℍ[R,a,b]` for a unit `z` of the
  quadratic algebra `R[√a]`, sending `j` to `(x + y i) j`, and its scalar special case.
- `TauCeti.QuaternionAlgebra.tensorAlgEquivTensorMatrix`
  (`TauCeti/Algebra/Quaternion/TensorProduct.lean`) and `TauCeti.BrauerGroup.quaternionClass_mul`
  (`TauCeti/Algebra/Quaternion/BrauerClass.lean`): the common-slot identity
  `[(a,bc)] = [(a,b)]·[(a,c)]`.
- `TauCeti.symPowerRep`, the symmetric-power representations used for `τ_k`.

### From TauCetiRoadmap.MotivesAndAlgebraicCycles

§7.15: the category `M_k^L` of compatible realizations (an `L`-Hodge structure `V_B`, for every `ℓ`
a continuous `G_k`-module `V_ℓ` and a comparison `i_ℓ : V_B ⊗ ℚ_ℓ ≃ V_ℓ`) and the subspace `HT(V)` of
classes of type `(0,0)` whose image is `G_k`-invariant for every `ℓ`, with functoriality and the
scalar-extension map `HT(V) ⊗_L L′ → HT(V ⊗_L L′)` (not asserted to be bijective). §7.1: rational
Hodge classes as inverse images of the Hodge pieces. §§2.2–2.3: Weil cohomology with Künneth,
Poincaré duality, pushforward along projections and the correspondence action. §§2.6–2.7: Betti and
étale realizations with their comparison after forgetting the Galois action.

### From TauCetiRoadmap.ArithmeticLocallySymmetricSpaces

§ALS.1.1 local systems from coefficient modules; §ALS.1.2 Betti complexes; §ALS.1.8 pullback along
level maps; §ALS.3.3 the Hecke action; §ALS.3.6 trace along level maps; §ALS.5b.1 the de Rham and
relative Lie algebra comparison; §ALS.5b.4 the automorphic comparison map `ι_𝒜`, Hecke-equivariant
and compatible with level maps, an isomorphism under `FrankeInput`.

What ArithmeticLocallySymmetricSpaces must provide (gap:compact-matsushima): for `G` anisotropic
modulo its centre, prove `FrankeInput(G, K, V)` unconditionally, so that `ι_𝒜` gives the
Hecke-equivariant Matsushima decomposition `H^*(X_K, V) ≃ ⊕_π m(π) H^*(𝔪_G, K_∞; π_∞ ⊗ V) ⊗ π_f^K`
over the discrete spectrum, compatible with level maps, by the compact-quotient spectral
decomposition instead of Eisenstein series (IP23, §2.2.2, p. 16).

### From TauCetiRoadmap.ComplexKahlerGeometry

§K6.1: Hodge decomposition of compact Kähler manifolds with its functoriality; §K6.0: the twisted
Kähler identities for bundle-valued forms.

What ComplexKahlerGeometry must provide (gap:vhs-hodge-decomposition): for a compact Kähler manifold
`X` and a polarized real variation of Hodge structure `𝕍` of weight `w` on `X`, a pure Hodge
structure of weight `k + w` on `H^k(X, 𝕍)`, functorial for morphisms of variations and pullback along
holomorphic maps, compatible with cup products into `H^*(X, 𝕍 ⊗ 𝕍′)` and with the trace on top
degree (the Hodge decomposition of IP23, §11.3, p. 85).

### From TauCetiRoadmap.ShimuraVarieties

§4.2 `TauCeti.Shimura.ReflexNorm`; §4.3 `TauCeti.Shimura.reciprocity_finite_action` (the action of
`r_h(s)` on `T(ℚ)∖T(𝔸_f)/K` factors through `art_E`); §4.9 `TauCeti.Shimura.ReflexNorm.map_full`
(reflex norms under a torus morphism); §6.7 `TauCeti.Shimura.abelian_canonical`; §8.1 the canonical
algebraic level tower over the reflex field; §8.5 `CanonicalModel.datum_map_defined_over_compositum`
(maps of canonical models for a datum morphism, defined over the reflex field of the source);
§8.6 `ZeroDimShimura.shimuraSet` and its canonical model. Its §8.7 identification of components
assumes a simply connected derived group and is not used: the derived group of §5.2 is not simply
connected.

### From TauCetiRoadmap.ShimuraData

§3.1 variations of Hodge structure and §3.3 rational polarized variations; §3.10 Kostant
representatives `kostantRepresentatives`; §4.3 `sv4_rationalHodge`: under SV4 every rational
representation of the Shimura group gives rational Hodge structures `(V, ρ∘h)`.

### From TauCetiRoadmap.AutomorphicFormsOnReductiveGroups

§2.6 explicit `GL₂(ℝ)` discrete-series modules `D_k`; §5.1 highest-weight characters and the
algebraicity conventions; §4.2 cuspidal occurrence (vacuous cusp
condition for anisotropic derived group); §5.2 relative Lie algebra cohomology with coefficients;
§5.4 `A_q(λ)`, its cohomology `Hom_{L∩K}(Λ^{i−R}(𝔩∩𝔭), ℂ)` and, for a Hermitian datum, the
bidegree formula `H^{p+R₊, p+R₋} ≃ Hom_{𝔩∩𝔨}(Λ^{2p}(𝔩∩𝔭), ℂ)`; §5.7 fields of rationality, models
and descent.

### From TauCetiRoadmap.AutomorphicSpectralTheory

§4.7 `compact_quotient_spectrum`: `L²` of a compact quotient is a discrete Hilbert sum of irreducible
unitary representations with finite multiplicities. §§0.25–0.26: the Bessel and Whittaker functions
used in the archimedean Whittaker coefficients of §7.5.

### From TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactors

AL.3, *Rankin–Selberg nonvanishing on the boundary*: for unitary cuspidal `π₁, π₂` over a number
field, the partial `L^S(s, π₁ × π₂)` has no zeros on `Re(s) ≥ 1`; used at `GL₁ × GL₁` in §6.1 and for
the adjoint lift in §8.1.

### From TauCetiRoadmap.AdelicAlgebraicGroups

§3.4: arithmetic quotients of anisotropic connected reductive groups are compact; used for the
exterior isometry group in §§6.4 and 7.1.

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

Conventions: Frobenius elements are arithmetic unless named geometric, and the cyclotomic character has
Hodge–Tate weight `+1`; Tate twists `tateTwist` of §1.2.

### From TauCetiRoadmap.GL2AutomorphicRepresentationsAndTransfer

§R16.1.8 finite Hecke characters with prescribed local components and its finite-quotient extension
criterion; §R17.3.1 global Jacquet–Langlands with `globalJL_local`, `globalJL_central`,
`globalJL_inverse`; §R17.3.5 quaternionic strong multiplicity one;
§R17.3.7 coefficient conjugation of global transfer; §R17.3.8 rational-model comparison; §R16.4.4
strong multiplicity one through agreeing unitary eigensystems off a finite set; §R16.4.5 the field
`ℚ(π)` and its finite-part rational model; §R16.6.3 Hilbert cohomological algebraic weights
`k_τ + 2m_τ = w`; §R17.4.2 cyclic base change; §R17.4.13 the adjoint lift `Ad(π) = Sym²π ⊗ ω_π⁻¹`;
§R17.4.16 quadratic automorphic induction, whose base change is `θ ⊞ θ^σ`.

What GL2AutomorphicRepresentationsAndTransfer must provide (gap:norm-subgroup-restriction): for a
quaternion algebra `B` over a totally real `F`, a CM extension `E/F` in `B` and the subgroups
`H_N^+ ⊂ H_∞^+ ⊂ B^×(𝔸_F)`, every irreducible unitary automorphic representation of `H_N^+` with
central character `ξ_E` is a constituent of the restriction of a cuspidal representation of
`B^×(𝔸_F)` whose Jacquet–Langlands transfer `σ` has base change `σ_E` to `GL₂(𝔸_E)` independent of
the choice, with restriction through `H_∞^+` compatible with the archimedean discrete-series signs
(IP23, §11.3, p. 86 and §12.2.4, pp. 96–97).

### From TauCetiRoadmap.MetaplecticAutomorphicForms

§§0.15–0.17 Schrödinger models; §2.5 Weil operators on generators; §3.3c quaternionic type-I oscillator and doubling inputs; §3.7 Howe duality; §3.9
persistence and stable range; §3.16 nonarchimedean conservation relations; §3.23
`quaternionSimilitudeEmbedding` (the dual pair `GU(V)° × B^×` with norm-image multipliers); §3.24
`quaternionSplitting` (`s_v` with `s_v(zg) = ξ_{E,v}(z)^m s_v(g)` and product one on rational points);
§§3.25–3.28 doubled and sharp splittings and the quaternionic see-saw; §3.32a the Periods-I splitting
comparison for `V = B₁ ⊗_E B₂`; §3.33 the Harris–Kudla
comparison `V† = Ve` for split `B`; §3.34 `similitudeTheta_howe`; §3.35 `theta_realDiscreteSeries`
(`θ(π)|G° = A_{q₁}(k−2,0,0)` on `SO(4,2)°`, the compact lift of highest weight `(k−2,0,0)` and the
vanishing opposite compact lift, in the maximal `π`-isotypic convention, dual to IP23's labels);
§3.36 `theta_quaternionUnramified`; §3.38 `theta_gl2Gso4`; §5.6 `globalThetaLift` (with conjugated
input); §6.4 `siegelWeil_anisotropic`; §§6.10–6.12 doubling Schwartz map, standard doubling factors,
`localDoublingZeta` and `thetaPairing_factorization` for orthogonal, symplectic, unitary and
metaplectic data; §6.13 `rallis_innerProduct`; §6.14 `globalTheta_nonvanishing`; §6.15
`globalTheta_seeSaw`; §6.22 `toricTheta_pairingComparison`.

What MetaplecticAutomorphicForms must provide (gap:quaternionic-doubling-residue): extend §§6.4,
6.10a–6.12 to the doubled anisotropic rank-three skew-Hermitian space over a division quaternion
algebra, with the normalized induced family `I_v(s)` of Levi character `|Nrd(a)|^{s+5/2}`, the
normalized intertwining operator `(b_v(s)/a_v(s)) M_v(s)`, the local doubling integrals and the
residue of the global doubling integral at `s = 3/2` related to the theta pairing by the
second-term Siegel–Weil identity (IP23, §9.5, Lemmas 9.6–9.8, pp. 61–64).

What MetaplecticAutomorphicForms must provide (gap:quaternionic-shimizu-lift): the global similitude
theta lift from `B^×` to `GU(B₁ ⊗_E B₂)° ≃ (B₁^× × B₂^×)/F^×` of an irreducible unitary cuspidal
`σ̄` is `π̄_{B₁} ⊠ π̄_{B₂}` for the Jacquet–Langlands transfers of the transfer `π` of `σ`, and zero
when either transfer is missing (IP23, proof of Lemma 9.2, p. 58).

### From TauCetiRoadmap.GeometryOfNumbersAndQuadraticArithmetic

§4.3 `polynomial_fischer_decomposition` and the positive-definite harmonic decomposition, of which
§4.1 is the arbitrary-signature symmetric-tensor form.

### From TauCetiRoadmap.ClassFieldTheory

Layers 6–8 local reciprocity, the local Artin map, units in inertia and local norm subgroups;
Layer 10 (`brauerSupport`, `sumLocalInv`, `sumLocalInv_eq_zero`, `eq_zero_of_localInv_eq_zero`,
`exists_br_of_sum_eq_zero`); Layer 11 (`globalArtinMap`); §5.4 quadratic norm symbols
(`localArtinMap_quadratic_eq_nontrivial_iff_not_norm`).

What ClassFieldTheory must provide (gap:quaternion-ramification-classification): quaternion algebras
over a number field are classified by their ramification sets, every finite set of non-complex places
of even cardinality occurs, an element of order two in `Br(F)` is the class of a unique quaternion
algebra, and a quadratic extension `E/F` embeds in `B` exactly when no place ramified in `B` splits
in `E` (IP23, §12.2.1, p. 94).

### From TauCetiRoadmap.GlobalNumberFields

Layer 1 `GlobalNumberFields.weakApproximation_denseRange`; Layer 2 `finite_rayClassGroup`; Layer 4
the finite-idele description of the class group; Layer 6 `IdeleClassGroup`; Layer 9 `HeckeCharacter`,
`HeckeCharacter.IsFiniteOrder` and local components; Layer 10 `HeckeCharacter.infinityType` and
algebraic Hecke characters.

### From TauCetiRoadmap.ReductiveGroups, ReductiveGroupsPartII and EndoscopicTransferAndUnitaryTraceComparison

ReductiveGroups Layer 3 (closed subgroups, quotients, identity components) and Layer 6 (central
isogenies). ReductiveGroupsPartII §RG2.5.1 (dual group with Galois action) and §RG2.5.2 (the
`L`-group and its functoriality). EndoscopicTransferAndUnitaryTraceComparison §1.8: the dual group
`GL₄(ℂ) × ℂ^×` of a unitary similitude group with its Galois action.

### From TauCetiRoadmap.RepresentationTheory (SchurWeyl, SpinRepresentations)

SchurWeyl Layer 9: the trace maps and `harmonicTensors`. SpinRepresentations Layer 6: `Spin₆ ≃ SL₄`
over `ℂ`.

### From TauCetiRoadmap.EtaleCohomologyFoundations and ComplexComparisonPartII

EtaleCohomologyFoundations §F.2.1 proper base change, §F.2.2 smooth base change and §F.3 finiteness
and generic acyclicity. ComplexComparisonPartII C6 `artinComparison` for constructible coefficients
and Betti local systems.

### From TauCetiRoadmap.PadicHodgeTheory, PadicPeriodRings and SelmerIwasawaCohomology

PadicHodgeTheory §3.3 (Fontaine's functors; `D_dR` exact on de Rham objects, preserving tensors,
duals and determinants), §4.4 (Sen's operator and differential de Rham realizations) and §8.1 (`H^i_et(X_{K̄}, ℚ_p)` of a proper smooth `X/K` is de Rham with
`D_dR = H^i_dR(X/K)`). PadicPeriodRings §1.4 (`H¹(G_K, ℂ_p)` is spanned by `log χ`).
SelmerIwasawaCohomology §2.7 the unramified condition and §4.9 `blochKatoCondition` with
`H¹_f(K, ℚ_p) = H¹_ur(K, ℚ_p)`.

What PadicHodgeTheory must provide (gap:derham-local-system-cohomology): for a proper smooth variety
`X` over a finite extension `K` of `ℚ_p` and a de Rham `ℚ_p`-local system `𝕃` on `X`, the
`G_K`-representation `H^i_et(X_{K̄}, 𝕃)` is de Rham, and a `ℚ_p`-local system on a geometrically
connected smooth `K`-variety that is de Rham at one classical point is de Rham, and every subquotient of
a de Rham representation is de Rham (the de Rham input of IP23, Remark 11.10, p. 90).

## How to read the build

Layer 0 fixes the target: the realizations of compact Shimura cohomology with automorphic
coefficients, the reduction to a division algebra `B = B₁·B₂`, the quaternionic multiplicity
realizations `V₁, V₂` with their archimedean sign lines, and the correspondence operator that turns a
tensor in `V₁ ⊗ V₂(d)` into a map. Layer 1 builds the conjugate-linear exterior operator on `⋀²U`,
the quaternion algebra `(E, vol)` and the exceptional isogeny and isomorphism; Layer 2 restricts
them to the block subgroup of `U = B₁ ⊥ B₂` and assembles the group diagram. Layer 3 localizes the
diagram (signatures, torus maps, the weight lattice) and records the relative Lie algebra
cohomology of the archimedean theta modules. Layer 4 builds the harmonic Schwartz forms and proves
their restriction formulas; Layer 5 turns the group diagram into a diagram of Shimura data with its
coefficient systems and component character. Layer 6 proves the quaternionic theta identities and
near-equivalence rigidity, Layer 7 the simultaneous nonvanishing of the restricted theta class for
all archimedean signs. Layer 8 shows that the rational Hecke eigenspace containing the theta class
is purely of type `(d,d)`; Layer 9, under the degree-`2d` Kottwitz hypothesis, that its Galois
action after twist `(d)` is trivial. Layer 10 builds the realization-compatible restriction map,
proves complex invertibility, puts the component parameter in the Galois-invariant subspace and
descends to a rational Hodge class. The unconditional Hodge theorem §10.7 does not depend on Layer 9;
only §10.8 does. Every target's `*Needs:*` line lists what its statement and its stated route use,
item by item; a different proof is not tied to an unrelated layer.

## Layer 0: quaternionic realizations and the correspondence target

The target is fixed at the level of multiplicity realizations, so that the tensor, trace and
coefficient conventions have one meaning throughout. The division hypothesis enters only after the
equal-algebra case is separated.

### 0.1 Jacquet–Langlands Hodge data

Define the *Jacquet–Langlands Hodge data* to consist of: a totally real field `F` of degree `n`;
quaternion algebras `B₁, B₂` over `F` split at exactly the same set `Σ` of real places, with
`d = |Σ| < n`; a cuspidal automorphic representation `π` of `GL₂(𝔸_F)` with trivial central
character and even weights `k_v ≥ 2` at every real place; its Jacquet–Langlands transfers `π_i` to
`B_i^×(𝔸_F)` (GL2AutomorphicRepresentationsAndTransfer §R17.3.1); the coefficient field `L = ℚ(π)`
(§R16.4.5), which contains `ℚ(k)`; the unitary-normalized coefficient representation
`τ_k = ⊗_v Nrd_v^{(2−k_v)/2} Sym^{k_v−2}(τ_v)` of `Res_{F/ℚ} B_i^×` with its `ℚ(k)`-structure,
unique up to homothety; and the reflex field `F_Σ`. When `d = 0` the Shimura varieties are finite
sets, the cocharacter is trivial and the canonical model is the constant one over `ℚ`; Deligne's
condition excluding compact `ℚ`-factors of the adjoint group is not imposed in that case
(IP23, §§2.1, 3.1–3.2, pp. 14–19; Theorem 3.2, p. 20, whose hypothesis is `d < n`).

- The local system is attached to the dual `τ_k^∨`; since every `k_v` is even the exponents
  `(2−k_v)/2` are integers.
- The reflex field is the fixed field of the stabilizer of `Σ` in `Gal(ℚ̄/ℚ)`; for `Σ = ∅` it is `ℚ`.
- `L` acts on the realizations by Hodge endomorphisms of the underlying rational structure; the
  conjugate `π^γ`, `γ ∈ Aut(ℂ)`, has weights permuted by `γ` (§R17.3.7), and `L` is totally real
  because `π` is self-dual.

**Checks.**

- If every `k_v = 2`, then `τ_k` is the trivial representation and the coefficient systems are
  constant.
- For `Σ = ∅`, `d = 0` is accepted and the Shimura varieties are finite sets; `d = n` is rejected,
  since `Theorem 3.2` requires a real place ramified in both algebras.
- A weight `k_v = 3` is rejected: with trivial central character all weights are even (IP23,
  Remark 3.1, p. 18), and the exponent `(2−3)/2` is not an integer.

*Needs:* GL2AutomorphicRepresentationsAndTransfer §§R16.4.5, R17.3.1, R17.3.7; Tau Ceti
`TauCeti.symPowerRep`; Tau Ceti `TauCeti.Hodge.HodgeStructureOn`.

### 0.2 Coefficient systems and realizations of compact Shimura cohomology

Let `(G, X)` be a Shimura datum of abelian type whose Shimura varieties are compact, with reflex
field `E = E(G,X) ⊂ ℂ`, and let `ρ : G → GL(V)` be a finite-dimensional representation over a number
field `L ⊂ ℂ` that factors through `G/Z_s`, where `Z_s` is the largest subtorus of the centre that is
split over `ℝ` but has no subtorus split over `ℚ`. Construct, for every sufficiently small compact
open `K ⊂ G(𝔸_f)`:

- the local system `𝕍` of `L`-vector spaces on `Sh_K(ℂ)` attached to `ρ`
  (ArithmeticLocallySymmetricSpaces §ALS.1.1), underlying a polarizable variation of Hodge structure
  (ShimuraData §§3.1, 3.3, 4.3), and the pure `L`-Hodge structure on `H^i(Sh_K(ℂ), 𝕍)`
  (gap:vhs-hodge-decomposition);
- for every prime `ℓ`, the étale sheaf `𝕍_ℓ` of `L ⊗ ℚ_ℓ`-modules on the canonical model of
  `Sh_K` over `E`, obtained from a `K`-stable lattice through the canonical tower of
  ShimuraVarieties §8.1;
- the Hecke-equivariant comparison `H^i(Sh_K(ℂ), 𝕍) ⊗_ℚ ℚ_ℓ ≃ H^i_et(Sh_K ⊗_E ℚ̄, 𝕍_ℓ)`
  (ComplexComparisonPartII C6), so that `H^i(Sh_K, 𝕍)` with its `ℓ`-adic realizations is an object
  of `M_E^L` (MotivesAndAlgebraicCycles §7.15) on which the Hecke algebra `H(G(𝔸_f), K)` acts by
  morphisms;
- for an irreducible cohomological `Π`, the isotypic part
  `H^i(Sh, 𝕍)_Π = Hom_{H(G(𝔸_f),K)}(Π_f^K, H^i(Sh_K, 𝕍))`, independent of `K` small, with the
  Matsushima description `H^i(Sh_K(ℂ), 𝕍_ℂ)_Π ≃ ⊕_{π_f^K ≃ Π_f^K} m(π) H^i(𝔤, K_∞; π_∞ ⊗ V_ℂ)`
  (gap:compact-matsushima).

(IP23, §2.2.2, pp. 16–17, including the comparison (2.1).) *Proof route:* the étale realizations are
unramified outside a finite set by spreading out a smooth proper model of the canonical model and
the lisse sheaf, with proper and smooth base change; they are de Rham at places above `ℓ` because
`𝕍_ℓ` is de Rham at a special point, where reciprocity (ShimuraVarieties §4.3) gives a locally
algebraic abelian representation (PadicHodgeTheory §3.3), so the de Rham input of
gap:derham-local-system-cohomology applies.

- The construction is functorial in `ρ`, compatible with tensor products and duals, and with
  extension of coefficients `L ⊂ L′`.
- Hecke correspondences act by morphisms of `M_E^L`; the isotypic parts are compatible with
  level changes and independent of the level.
- The `ℓ`-adic realizations are unramified outside a finite set of places of `E` and de Rham at the
  places above `ℓ`.
- Poincaré duality pairs `H^i(Sh_K, 𝕍)` with `H^{2D−i}(Sh_K, 𝕍^∨)(D)`, `D = dim Sh_K`, compatibly in
  all realizations.

**Checks.**

- For the trivial representation the realizations are the singular and étale cohomology of the
  canonical model, the object `Hⁱ(X)` of MotivesAndAlgebraicCycles §§2.6–2.7.
- For `G = Res_{F/ℚ}B^×` with `B` totally definite, `Sh_K` is a finite set: `H^0` is the space of
  `L`-valued functions on it, of Hodge type `(0,0)`, and `H^i = 0` for `i > 0`.
- The isotypic part is a multiplicity space, not the whole `Π`-isotypic summand: for
  `dim Π_f^K = r` the summand of `H^i` is `r` copies of it.
- Replacing `ρ` by its dual exchanges degrees `i` and `2D − i` under Poincaré duality, with the twist
  `(D)`.

*Needs:* ArithmeticLocallySymmetricSpaces §§ALS.1.1–ALS.1.2, ALS.3.3, ALS.5b.4 and
gap:compact-matsushima; ShimuraData §§3.1, 3.3, 4.3; ComplexKahlerGeometry §K6.1 and
gap:vhs-hodge-decomposition; ShimuraVarieties §§4.3, 6.7, 8.1; ComplexComparisonPartII C6;
EtaleCohomologyFoundations §§F.2.1–F.2.2, F.3; PadicHodgeTheory §§3.3, 8.1 and
gap:derham-local-system-cohomology; MotivesAndAlgebraicCycles §7.15.

### 0.3 Pullback and normalized trace along morphisms of Shimura data

Let `f : (G, X₁) → (H, X₂)` be a morphism of Shimura data with the same reflex field `E`, and `ρ` a
representation of `H` as in §0.2, viewed on `G` through `f`. Construct the pullback
`f^* : H^i(Sh_H, 𝕍) → H^i(Sh_G, 𝕍)` in Betti and `ℓ`-adic realizations as a morphism of `M_E^L`
(ShimuraVarieties §8.5; ArithmeticLocallySymmetricSpaces §ALS.1.8). If `G → H` is surjective with
central kernel `Z` and `G(𝔸) → H(𝔸)` is surjective, prove that `f^*` identifies the
`Π_H`-isotypic part with the `Π_G`-isotypic part for the corresponding automorphic representations on
which `Z` acts trivially. If `G → H` has central kernel but is not surjective on adelic points,
construct the pushforward `f_*`: for small `K₁, K₂` the map `Sh_{G,K₁} → Sh_{H,K₂}` is finite étale onto
a union of components, and `f_*` is the trace onto the image extended by zero, multiplied by
`vol(K₁)/vol(K₂)` (IP23, §2.2.3, pp. 16–17, and Remark 2.2, p. 17).

- `f^*` and `f_*` commute with Hecke operators away from the levels and with every comparison
  isomorphism.
- The normalized `f_*` does not depend on the levels `K₁, K₂`.
- Pullback and normalized trace are functorial for composable morphisms of data.

**Checks.**

- For a level change `K₁ ⊂ K₂` inside one group, `f_*∘f^*` is multiplication by
  `[K₂ : K₁]·vol(K₁)/vol(K₂) = 1`.
- A component of `Sh_{H,K₂}` outside the image receives zero under `f_*`; the trace is not an
  isomorphism induced by a covering.
- Shrinking `K₁` to a normal subgroup `K₁′` of index `m` multiplies the raw trace by `m` and the
  volume factor by `1/m`, so the normalized `f_*` is unchanged.

*Needs:* §0.2; ShimuraVarieties §8.5; ArithmeticLocallySymmetricSpaces §§ALS.1.8, ALS.3.6;
MotivesAndAlgebraicCycles §7.15.

### 0.4 The division-algebra reduction

For Jacquet–Langlands Hodge data, if `B₁ ≃ B₂` the identity of the multiplicity realization,
read through Poincaré duality, is the required class. Otherwise prove that `[B₁] + [B₂] ∈ Br(F)` is
the class of a quaternion division algebra `B`, ramified exactly at the finite places where exactly
one `B_i` ramifies and split at every real place, because `B₁` and `B₂` have the same real
ramification (IP23, §4.1, pp. 20–21; §10.1, p. 65; §12.2.1, p. 94). The theta construction of
Layers 6–10 is used only in this second case.

**Checks.**

- For `B₁ = B₂` the diagonal correspondence is used; division is not imposed on the zero class.
- For `F` real quadratic, `Σ = {∞₁}`, `B₁` ramified at `{∞₂, 𝔭}` and `B₂` at `{∞₂, 𝔮}` with
  `𝔭 ≠ 𝔮`, the algebra `B` is ramified exactly at `{𝔭, 𝔮}`.
- If `B₁` and `B₂` had different real ramification, `B` would ramify at a real place; equal `Σ`
  excludes this.

*Needs:* §0.1; ClassFieldTheory Layer 10 and gap:quaternion-ramification-classification;
MotivesAndAlgebraicCycles §2.3.

### 0.5 Quaternionic multiplicity realizations

For Jacquet–Langlands Hodge data let `V_i` be the `L`-rational `π_i`-multiplicity space
`Hom_{H_ℚ(G_{B_i}(𝔸_f),K)}((π_{i,f})^K(L), H^*(Sh_{B_i,K}, 𝕍_k(L)))` of §0.2, for `K` small, with its
`ℓ`-adic realizations. Prove that it is independent of `K`, concentrated in cohomological degree `d`
(IP23 prints `2d` on p. 19; the Shimura variety has dimension `d` and each split place contributes
degree one), of `L`-dimension `2^d`, pure of weight `d`, an object of `M_{F_Σ}^L`, and self-dual:
the coefficient pairing and Poincaré duality give `V_i ≃ V_i^∨(−d)` (IP23, §3.2, pp. 18–19; §12.3,
p. 98). The `L`-model of `(π_{i,f})^K` is supplied by GL2AutomorphicRepresentationsAndTransfer
§R17.3.8.

**Checks.**

- For `d = 1`, `V_i` is a rank-two `L`-space in `H¹`.
- For `d = 0`, `V_i` is a rank-one space in `H⁰` of type `(0,0)`.
- The rank is `2^d`, not `2^n`: compact factors contribute degree zero and a one-dimensional
  relative Lie algebra cohomology.

*Needs:* §§0.1–0.3; GL2AutomorphicRepresentationsAndTransfer §§R16.4.5, R17.3.1, R17.3.5, R17.3.8;
AutomorphicFormsOnReductiveGroups §§2.6, 5.4; Tau Ceti `TauCeti.Hodge.HodgeStructureOn.tateTwist`.

### 0.6 Archimedean sign lines

Prove that `V_i ⊗_ℚ ℂ` decomposes, along each embedding of `L`, into `2^d` lines indexed by signs
`ε ∈ {±1}^Σ`. At `v ∈ Σ` the two cochain contributions have relative Lie algebra bidegrees `(1,0)` and
`(0,1)` and actual Hodge types `(k_v/2, 1−k_v/2)` and `(1−k_v/2, k_v/2)`; outside `Σ` the degree-zero
line has type `(0,0)`. The line of `ε` has type the sum over `v ∈ Σ`. Poincaré duality pairs the line
of `ε` with that of `−ε`. Equal total types can occur with multiplicity, so the full sign indexing is
kept (IP23, §3.3, p. 19; Proposition 12.3, p. 98).

**Checks.**

- For `d = 2` and both split weights equal to `2`, the four lines have types `(2,0), (1,1), (1,1),
  (0,2)`: the type-`(1,1)` space is two-dimensional, and a nonzero pairing on one line does not
  give an isomorphism.
- For split weights `2` and `4` the types are `(3,−1), (2,0), (0,2), (−1,3)`: no line has type
  `(1,1)`.
- For `d = 1` and weight `k_v` the two types `(k_v/2, 1−k_v/2)` and its reverse have total weight one;
  in the classical normalization they are `(k_v−1, 0)` and `(0, k_v−1)`.

*Needs:* §0.5; AutomorphicFormsOnReductiveGroups §§2.6, 5.4.

### 0.7 The cohomological correspondence operator

Prove that Poincaré duality and `V₁ ≃ V₁^∨(−d)` give an `L`-linear identification
`V₁ ⊗_L V₂(d) ≃ Hom_L(V₁, V₂)` in `M_{F_Σ}^L`, and that on geometric cohomology it sends `ξ` to
`x ↦ p₂,*(ξ ∪ p₁^* x)`, using the coefficient pairing (MotivesAndAlgebraicCycles §2.3). Under this
identification a rational tensor of type `(0,0)` is a morphism of `L`-Hodge structures, and an element
of `HT(V₁ ⊗_L V₂(d))` gives `G_{F_Σ}`-equivariant maps `V₁ ⊗ ℚ_ℓ → V₂ ⊗ ℚ_ℓ` for every `ℓ` at once
(IP23, §1.1, pp. 4–5; §3.3, pp. 19–20; §12.3, p. 98). No statement that Hodge classes are algebraic
is used.

**Checks.**

- For `B₁ = B₂` and `ξ` the class of the diagonal, the operator is the identity of `V₁`.
- `V₁ ⊗ V₂(d)` has weight `d + d − 2d = 0`, the weight of `Hom(V₁, V₂)`.
- A class in `HT` for one prime `ℓ` only does not give equivariance at the other primes.

*Needs:* §0.5; MotivesAndAlgebraicCycles §§2.2–2.3, 7.1, 7.15; Tau Ceti
`TauCeti.Hodge.HodgeStructureOn.internalHom` and `TauCeti.Hodge.HodgeStructureOn.tateTwist`.

### Examples

For `F` real quadratic, `Σ = {∞₁}`, `B₁` ramified at `{∞₂, 𝔭}`, `B₂` at `{∞₂, 𝔮}` and `π` of parallel
weight two with `ℚ(π) = ℚ`, the realizations `V₁, V₂` are rank-two `ℚ`-Hodge structures of weight one
in `H¹` of two Shimura curves over `F`, `B` is ramified at `{𝔭, 𝔮}`, and the target is a class in
`H²(X₁ × X₂, ℚ)(1)` of type `(0,0)` acting as an isomorphism `V₁ ≃ V₂`.

### Dependencies

GL2AutomorphicRepresentationsAndTransfer §§R16.4.5, R17.3.1, R17.3.5, R17.3.7, R17.3.8;
MotivesAndAlgebraicCycles §§2.2–2.3, 2.6–2.7, 7.1, 7.15; ArithmeticLocallySymmetricSpaces §§ALS.1.1–
ALS.1.2, ALS.1.8, ALS.3.3, ALS.3.6, ALS.5b.4; ShimuraData §§3.1, 3.3, 4.3; ShimuraVarieties §§4.3, 6.7,
8.1, 8.5; ComplexKahlerGeometry §K6.1; ComplexComparisonPartII C6; EtaleCohomologyFoundations §§F.2.1–
F.2.2, F.3; PadicHodgeTheory §§3.3, 8.1; ClassFieldTheory Layer 10; AutomorphicFormsOnReductiveGroups
§§2.6, 5.4; Tau Ceti `TauCeti.Hodge`.

## Layer 1: the Hermitian exterior construction

The volume and its inverse-norm rescaling law determine the quaternion symbol. The wedge pairing
gives an intrinsic conjugate-linear operator on `⋀²U`; basis computations test it without replacing
Mathlib's exterior-power carrier. Its square and skew identities are exactly the relations needed for
the right quaternionic action.

Throughout, `E` is a field with a ring endomorphism `σ`, `U` a finite-dimensional `E`-space and
`H : U →ₛₗ[σ] U →ₗ[E] E` a sesquilinear form, conjugate-linear in the first variable. `H` is
*Hermitian* if `H y x = σ (H x y)`; for nonzero Hermitian `H` this forces `σ² = id`, and `F` denotes
the fixed field. In the applications `E/F` is a quadratic extension of number fields or of local
fields, or the split étale algebra `F × F` at a split place.

### 1.1 Hermitian volume

For `dim_E U = n` and a trivialization `d_U : ⋀ⁿU ≃ E`, the form `H` induces the Hermitian form
`h(v₁∧…∧v_n, w₁∧…∧w_n) = det[H(v_i, w_j)]` on `⋀ⁿU`. Define `vol(H, d_U) = h(w, w)` for the vector `w`
with `d_U(w) = 1` (IP23, Definition 5.2, p. 28). For any basis `b` of `U`,
`vol(H, d_U) = det[H(b_i, b_j)] / (σ(c)·c)` with `c = d_U(b₁ ∧ … ∧ b_n)`.

- The diagonal formula: if `H` is diagonal in `b` with entries `a_i ∈ F`, then
  `vol = (∏ a_i)/N(c)`.
- Rescaling: `vol(H, α d_U) = N(α)⁻¹ vol(H, d_U)` for `α ∈ E^×` (IP23, p. 28).
- The volume lies in `F`; it is nonzero exactly when `H` is nondegenerate, and then its class in
  `F^×/N(E^×)` is the discriminant class of `H`.

**Checks.**

- For `H = diag(1,1,1,1)` and `d_U(e₁∧e₂∧e₃∧e₄) = −1`, the volume is `1`.
- For `H = diag(1, −J₁, 1, −J₂)` and the same `d_U`, the volume is `J₁J₂`.
- Scaling `d_U` by `2` divides the volume by `4`; for `diag(1, 2, 1, −5)` it changes from `−10` to
  `−5/2`, not to `−40`.
- A degenerate Hermitian form has volume `0`.

*Needs:* Mathlib `exteriorPower.pairingDual`, `exteriorPower.ιMulti`, `Matrix.det`; Tau Ceti
`exteriorPower.topEquiv`.

### 1.2 The determinant norm identity

For `H` nondegenerate Hermitian of dimension `n` and `g ∈ GU_E(U)` with multiplier `ν(g) ∈ F^×`,
prove `N_{E/F}(det g) = ν(g)^n`, and that the induced Hermitian form on `⋀^rU` is a similitude for
`⋀^r g` with multiplier `ν(g)^r` (IP23, Proposition 5.1, pp. 25–26, with (5.1)–(5.3)).

**Checks.**

- For a scalar `α ∈ E^×`, `ν = N(α)` and both sides equal `N(α)^n`.
- For `n = 4` and a non-scalar similitude of a non-diagonal Hermitian form over `ℚ(i)`,
  `N(det g) = ν⁴`.
- `det g` itself need not equal `ν^{n/2}`; only its norm is determined.

*Needs:* §1.1; Tau Ceti `exteriorPower.map_top_eq_det_smul`; Mathlib `exteriorPower.map`.

### 1.3 The exterior operator

For `dim_E U = 4`, a sesquilinear `H` and `d_U : ⋀⁴U ≃ E`, the predicate `IsExteriorStar` says that a
`σ`-semilinear `L : ⋀²U → ⋀²U` satisfies `d_U(L(u₁∧u₂) ∧ y) = det[H(u_i, ·)](y)` for all `u₁, u₂` and
`y ∈ ⋀²U`, the left side being Mathlib's `exteriorPower.wedgePairing` and the right side
`exteriorPower.pairingDual` applied to `H u₁ ∧ H u₂`. Prove `existsUnique_isExteriorStar`: exactly one
such `L` exists, for every sesquilinear `H` (IP23, §5.2, pp. 27–28: `L = ψ⁻¹ ∘ ι ∘ ∧²φ`). The
construction regards the conjugate-linear map `φ : U → U^∨` as a linear map on the conjugate module
before taking `⋀²`, and uses that the wedge pairing is perfect.

- `L` is additive and `σ`-semilinear.
- For an orthogonal basis with `H = diag(a₁,…,a₄)` and `d_U(e₁₂₃₄) = −1`, `L` sends
  `e₁₂, e₁₃, e₁₄, e₂₃, e₂₄, e₃₄` to `−a₁a₂e₃₄, a₁a₃e₂₄, −a₁a₄e₂₃, −a₂a₃e₁₄, a₂a₄e₁₃, −a₃a₄e₁₂`
  (IP23, p. 29).
- Replacing `d_U` by `α d_U` replaces `L` by `α⁻¹ L` (IP23, p. 28).
- For `σ = id` and a symmetric bijective bilinear form, `L` is the inverse of
  `exteriorPower.hodgeStar` in degrees `(2,2)`.

**Checks.**

- For all `a_i = 1`: `L(e₁₂) = −e₃₄` and `L(e₁₃) = e₂₄`.
- For `E = F(i)` with `σ(i) = −i`: `L(e₁₂ i) = −L(e₁₂) i`, so `L` is not `E`-linear.
- Replacing `d_U` by `−d_U` negates `L` and leaves `L∘L` unchanged.
- The six basis images, recomputed from the defining identity with the signs of `e_K ∧ e_J` in
  `⋀⁴`, agree with the list above.

*Needs:* §1.1; Mathlib `exteriorPower.wedgePairing`, `exteriorPower.instIsPerfPairWedgePairing`,
`exteriorPower.pairingDual`, `exteriorPower.ιMulti`.

### 1.4 The square of the exterior operator

Prove `IsExteriorStar.comp_self`: if `H` is Hermitian and `L` satisfies `IsExteriorStar`, then
`L (L x) = vol(H, d_U)·x` for every `x ∈ ⋀²U`, with the volume computed in any basis as in §1.1
(IP23, Proposition 5.3, pp. 28–29). Nondegeneracy of `H` is not needed; the volume is zero exactly
for degenerate `H`. For a diagonal form with `d_U(e₁₂₃₄) = −1`, every `L∘L` coefficient is
`a₁a₂a₃a₄`.

**Checks.**

- For `diag(1, −J₁, 1, −J₂)` the square is `J₁J₂`.
- For random non-diagonal Hermitian `4 × 4` matrices over `ℚ(i)` and random `d_U`, `L∘L` equals the
  volume on all six basis vectors and on non-real multiples of them.
- For `σ = id` and a non-symmetric bilinear form the identity fails: the Hermitian hypothesis is
  necessary.

*Needs:* §§1.1, 1.3.

### 1.5 Exterior skew-pairing identities

Choose a trace-zero `i ∈ E^×` and put `b = i·h₂`, the skew-Hermitian `E`-valued form from the induced
Hermitian form `h₂` on `⋀²U`. For `L` of §1.3 with `J = vol(H, d_U)`, prove `b(Lx, y) = b(Ly, x)` and
`σ(b(Lx, Ly)) = −J·b(x, y)`; the second follows from the first and `L∘L = J` (IP23, Lemma 5.4 and
Remark 5.5, pp. 29–30).

**Checks.**

- The first identity is symmetric in `x, y`; for the two-dimensional analogue of §2.1 it is
  antisymmetric.
- For a random non-diagonal Hermitian form over `ℚ(i)` with volume `J = −164/5`, both identities
  hold exactly on twenty random pairs of vectors.
- For the plane of §2.1 with `H = diag(a₁, a₂)`: `b(L₁e₁, e₂) = −i a₁a₂ = −b(L₁e₂, e₁)`.

*Needs:* §1.4.

### 1.6 The quaternionic exterior space

Put `B = E ⊕ Ej` with `j² = J = vol(H, d_U)`, `αj = jσ(α)` and main involution `*`. On `⋀²U` define
the right action `x·j = Lx`; it makes `⋀²U` a right `B`-module of rank three. With `b` of §1.5 put
`⟨x, y⟩ = b(x, y) − J⁻¹ j b(Lx, y)`; prove that it is a nondegenerate `B`-skew-Hermitian form when
`H` is nondegenerate (IP23, (5.6), p. 30; §5.2, pp. 26–31). For `d′_U = α d_U` one has `L′ = α⁻¹L`,
`J′ = J/N(α)` and `j′ = jα⁻¹ = σ(α)⁻¹j`; the algebra isomorphism is
`TauCeti.QuaternionAlgebra.normMulEquiv` with `z = σ(α)⁻¹`, and the action and the form are
transported along it. The algebra `B` is an existing quaternion algebra; this target supplies its
action and form.

- The right action of `j` on `⋀²U` is `L`.
- The `E`-component of `⟨x, y⟩` is `b(x, y)` and its `j`-component is `−J⁻¹ b(Lx, y)`, in the
  displayed multiplication order.
- Changing `d_U` by `α` gives an isometry after `TauCeti.QuaternionAlgebra.normMulEquiv`.

**Checks.**

- The `E`-dimension `6` becomes `B`-rank `3`.
- `⟨xβ, yγ⟩ = β*⟨x, y⟩γ` for `β, γ ∈ B`, `⟨y, x⟩ = −⟨x, y⟩*`, and `x·(βγ) = (x·β)·γ`: all three
  hold exactly for random vectors and quaternions over `ℚ(i)`.
- The zero vector pairs to zero with every `y`; nondegeneracy says it is the only such vector.
- Writing the `j`-term as `−J⁻¹ b(Lx, y) j` instead breaks sesquilinearity in `y`.

*Needs:* §§1.4–1.5; Mathlib `QuaternionAlgebra`; Tau Ceti `TauCeti.QuaternionAlgebra.normMulEquiv`,
`TauCeti.QuaternionAlgebra.rescaleJEquiv`.

### 1.7 The exceptional exterior isogeny

Let `GSU_E(U) = {g ∈ GU_E(U) : det_E g = ν(g)²}`. Prove that `g ↦ ⋀²g` is an isogeny of algebraic
`F`-groups `GSU_E(U) → GU_B(⋀²U)°` with scheme-theoretic kernel `μ₂` and multiplier `ν(g)²` on the
target (IP23, Proposition 5.6, pp. 30–31). The point-level identity is
`IsExteriorStar.map_similitude`: for every `E`-linear automorphism `g` with
`H(gx, gy) = ν·H(x, y)`, `L ∘ ⋀²g = (ν²/det g)·(⋀²g ∘ L)`, for every sesquilinear `H` (IP23, (5.10),
from (5.7)–(5.9)). *Proof route:* compute the kernel on geometric points and the differential, and
use connectedness and equal dimension sixteen in characteristic zero; over `F̄` this is the
identification `Spin₆ ≃ SL₄` of RepresentationTheory/SpinRepresentations Layer 6.

**Checks.**

- For a scalar `t ∈ F^×`, `ν = t²`, `det = t⁴ = ν²`, `⋀²t = t²` and the target multiplier is `t⁴`.
- For random similitudes of non-diagonal Hermitian forms over `ℚ(i)`, the factor `ν²/det g` makes the
  identity hold, while its conjugate `σ(ν²/det g)` does not.
- `⋀²g = id` for `g = −1`, which lies in `GSU`; the kernel is not trivial.

*Needs:* §§1.2, 1.3, 1.6; Tau Ceti `exteriorPower.map_top_eq_det_smul`; ReductiveGroups Layers 3, 6;
RepresentationTheory/SpinRepresentations Layer 6.

### 1.8 The exceptional projective isomorphism

Prove that the exterior construction induces an isomorphism of algebraic `F`-groups
`PGU_E(U) ≃ PGU_B(⋀²U)°`: for `g ∈ GU_E(U)` choose `β ∈ E^×` with `β/σ(β) = ν(g)²/det g` (Hilbert 90,
using `N(ν²/det g) = 1` from §1.2) and send `x` to `(⋀²g)(x)β` modulo `F^×`. The class is independent
of `β` and of the representative of `g` modulo `E^×`, and agrees with §1.7 on `GSU` (IP23,
Proposition 5.7 and Remarks 5.8–5.9, p. 31). The isomorphism is descended as algebraic groups; no
surjectivity of the isogeny on `F`-points is inferred.

**Checks.**

- Replacing `β` by `βt`, `t ∈ F^×`, has no projective effect.
- Replacing `g` by `gα`, `α ∈ E^×`, multiplies `ν²/det g` by `(σ(α)/α)²`; the choice `βα⁻²` gives
  the same class.
- On `GSU_E(U)` one may take `β = 1`, recovering §1.7.

*Needs:* §§1.2, 1.7; Mathlib `groupCohomology.H1ofAutOnUnitsUnique`; ReductiveGroups Layers 3, 6.

### Examples

For `U = B₁ ⊥ B₂` with `E`-basis `(1, j₁, 1, j₂)`, `H = diag(1, −J₁, 1, −J₂)` and `d_U(e₁₂₃₄) = −1`:
`vol = J₁J₂`; `L(e₁₂) = J₁e₃₄`, `L(e₃₄) = J₂e₁₂`, so `L` exchanges the two diagonal lines and
`L²(e₁₂) = J₁J₂e₁₂`; on the mixed vectors `e₁₃, e₂₃, e₁₄, e₂₄` the images are
`e₂₄, J₁e₁₄, J₂e₂₃, J₁J₂e₁₃`.

### Dependencies

Mathlib `exteriorPower` (Basic, Pairing, WedgePairing, BilinForm, HodgeStar), `QuaternionAlgebra`,
`groupCohomology.H1ofAutOnUnitsUnique`; Tau Ceti `exteriorPower.map_top_eq_det_smul`,
`exteriorPower.topEquiv`, `TauCeti.QuaternionAlgebra.normMulEquiv`,
`TauCeti.QuaternionAlgebra.rescaleJEquiv`; ReductiveGroups Layers 3, 6;
RepresentationTheory/SpinRepresentations Layer 6.

## Layer 2: block restrictions of the exceptional maps

The mixed and diagonal wedge summands connect the exceptional map to the product of the two
original quaternion groups. Kernels, multipliers and quotient directions are matched before the
diagram is used on adelic points.

### 2.1 Quaternionic Hermitian planes

For a quadratic `E/F` embedded in `B_i`, write `B_i = E ⊕ Ej_i` with `j_i² = J_i ∈ F^×`, and regard
`U_i = B_i` as a right `E`-plane with `H_i(a + j_i b, c + j_i d) = σ(a)c − J_i σ(b)d`. Define the
action of `(β, α) ∈ B_i^× × E^×` by `x ↦ βxα⁻¹`. Prove that it identifies `GU_E(U_i)` with
`(B_i^× × E^×)/diag(F^×)`, with multiplier `Nrd(β)/N(α)` and `E`-determinant `Nrd(β)α⁻²`. For a
general orthogonal plane `diag(a₁, a₂)` with top trivialization one, the plane operator `L₁` defined
like §1.3 through the alternating pairing `U_i × U_i → ⋀²U_i` has `L₁e₁ = −a₁e₂`, `L₁e₂ = a₂e₁` and
`L₁² = −a₁a₂` (IP23, §4.1, pp. 20–21; Lemma 5.12 and (5.14)–(5.15), p. 33; §5.3.1, pp. 35–36).

- The action of `(β, α)` has multiplier `Nrd(β)/N(α)`.
- Its `E`-determinant is `Nrd(β)α⁻²`.
- The action is trivial exactly for `(β, α) = (t, t)` with `t ∈ F^×`.

**Checks.**

- For `(β, α) = (t, t)` the action is the identity and the determinant is `1`.
- For `β = 1` the multiplier is `N(α)⁻¹`, not `N(α)`.
- For `diag(1, −J_i)` the plane square is `L₁² = J_i`, whereas the volume of that plane is `−J_i`.
- For `β = (1 + 2i) + j·i`, `α = 2 − i` over `F = ℚ`, `E = ℚ(i)`, `J = −3`: `Nrd(β) = 5 + 3 = 8`, the
  multiplier is `8/5` and the determinant `24/25 + 32i/25`, matching `Nrd(β)/N(α)` and
  `Nrd(β)α⁻²`.

*Needs:* §1.1; Mathlib `QuaternionAlgebra`; Tau Ceti `TauCeti.QuaternionAlgebra.rescaleJEquiv`.

### 2.2 The two-plane exterior decomposition

For `U = U₁ ⊥ U₂` with `dim_E U_i = 2`, decompose `⋀²U = W ⊕ W₀` with `W = U₁ ⊗_E U₂` embedded by
`u₁ ⊗ u₂ ↦ u₁ ∧ u₂` and `W₀ = ⋀²U₁ ⊕ ⋀²U₂`. Prove that `L` preserves both summands, that they have
`B`-ranks two and one, and that the decomposition is orthogonal for the form of §1.6; the block group
of equal-multiplier pairs acts compatibly (IP23, (5.11) and Proposition 5.10, p. 32).

- The mixed inclusion sends `u₁ ⊗ u₂` to `u₁ ∧ u₂` in that order.
- `W` has `B`-rank two and `W₀` has `B`-rank one.
- Forgetting the `B`-action, the splitting is the exterior-power decomposition of a direct sum.

**Checks.**

- The `E`-dimensions are four and two, summing to six.
- Interchanging `u₁` and `u₂` changes the sign of the mixed wedge.
- The line `⋀²U₁` alone is not `L`-stable: `L` exchanges `⋀²U₁` and `⋀²U₂`.

*Needs:* §§1.6, 2.1; Mathlib `exteriorPower.map`.

### 2.3 The block exterior isogeny

Let `H = GSU_E(U) ∩ G(U_E(U₁) × U_E(U₂))`, where `G(·)` means equal similitude multipliers. Prove that
the exterior isogeny of §1.7 restricts to a central isogeny `H → G(U_B(W) × U_B(W₀))°` with kernel
`μ₂`, between connected groups of dimension eight (IP23, Proposition 5.10, (5.12), p. 32).

**Checks.**

- The target is the identity component of the equal-multiplier subgroup.
- `g = −1` lies in `H` and maps to the identity.
- Both groups have dimension eight: `5 + 5 − 1 − 1` for two `GU(2)` factors with equal multipliers
  and `det g = ν²` (only the norm-one part of `det g/ν²` is a new condition, since
  `N(det g) = ν⁴` by §1.2), and `7 + 2 − 1` for `(B₁^× × B₂^×)/F^×` and `E^×` with equal
  multipliers.

*Needs:* §§1.7, 2.2.

### 2.4 The projective block isomorphism

Prove that the exceptional projective map of §1.8 restricts to
`G(U_E(U₁) × U_E(U₂))/E^× ≃ G(U_B(W) × U_B(W₀))°/F^×`. For `U_i = B_i` and
`g = ([b₁, α₁], [b₂, α₂])` with equal multipliers, its image is `[[b₁, b₂], Nrd(b₁)α₁⁻¹α₂]`, which
equals the expression with `det(g₁)α₁α₂`; the quotient of `B₁^× × B₂^×` uses `t ↦ (t, t⁻¹)` (IP23,
Proposition 5.11, (5.13), p. 32; §5.3.1, pp. 35–36).

**Checks.**

- `det(g₁)α₁α₂ = Nrd(b₁)α₁⁻²α₁α₂ = Nrd(b₁)α₁⁻¹α₂`.
- `(t, t⁻¹)` acts trivially on `W = B₁ ⊗_E B₂`; `(t, t)` acts by `t²`.
- Changing the central representative of `g` by `α ∈ E^×` does not change the image class.

*Needs:* §§1.8, 2.1, 2.3.

### 2.5 The quaternionic block groups

Prove `GU_B(W)° ≃ (B₁^× × B₂^×)/{(t, t⁻¹)}` with multiplier `Nrd(b₁)Nrd(b₂)`, and `GU_B(W₀)° ≃ E^×`
with multiplier `N_{E/F}`; the full rank-one group has a second component normalizing `E` (IP23,
§5.3.1, pp. 32–34; Proposition 5.13, p. 34). The rank-one block is a `B`-unitary group; the `E`-label
of the rotated diagram on p. 22 of IP23 is read as `U_B`.

**Checks.**

- An element of the normalizer component outside `E^×` is not in the identity component.
- `(b₁, b₂) = (t, t⁻¹)` has multiplier `t²·t⁻² = 1` and acts trivially.
- On `W₀` the element `α ∈ E^×` has multiplier `N(α)`, not `α²`.

*Needs:* §§2.1, 2.2, 2.4.

### 2.6 The explicit quaternion tensor model

For `U = B₁ ⊥ B₂` with ordered `E`-basis `(1, j₁, 1, j₂)`, prove that `H = diag(1, −J₁, 1, −J₂)`,
`J = J₁J₂`, that `L` sends `(e₁₃, e₂₃, e₁₄, e₂₄)` to `(e₂₄, J₁e₁₄, J₂e₂₃, J₁J₂e₁₃)`, that the
`E`-Hermitian form on `W` is `diag(1, −J₁, −J₂, J₁J₂)`, and that `[B] = [B₁] + [B₂]`; this identifies
the exterior block with the quaternion tensor model used for periods (IP23, Example 5.14,
pp. 36–37). The Brauer identity is `TauCeti.BrauerGroup.quaternionClass_mul` with the common slot
`u = i²`, through `TauCeti.QuaternionAlgebra.tensorAlgEquivTensorMatrix`.

**Checks.**

- The `4 × 4` semilinear matrix on `W` squares to `J₁J₂`.
- `(u, J₁J₂) = (u, J₁)·(u, J₂)` in `Br(F)`, the common-slot identity.
- With `d_U(e₁₂₃₄) = +1` instead of `−1` every image changes sign, while the square is unchanged.

*Needs:* §§1.4, 2.5; Tau Ceti `TauCeti.BrauerGroup.quaternionClass_mul`,
`TauCeti.QuaternionAlgebra.tensorAlgEquivTensorMatrix`.

### 2.7 The three-plus-one restriction

For `U = U₃ ⊥ U₄` of dimensions three and one, put `W = U₃ ⊗_E U₄`, embedded as the mixed wedge
summand. Prove that the `B`-action identifies `⋀²U` with `W ⊗_E B`, that the skew form extends the
`E`-skew form on `W`, and that the exceptional map restricts to
`G(U_E(U₃) × U_E(U₄))/E^× ≃ GU_E(W)/F^×` (IP23, (5.16), p. 37; Proposition 5.15, p. 38).

**Checks.**

- `W` has `E`-dimension three and `W ⊗_E B` has `B`-rank three.
- `W` and `Wj` are complementary: `Wj = ⋀²U₃`.
- The summand is `U₃ ⊗ U₄`, not `⋀²U₃`.

*Needs:* §§1.6, 1.8.

### 2.8 The exceptional group diagram

For `U = B₁ ⊥ B₂` put `Ũ = GU_E(U)`, `H̃ = G(U_E(B₁) × U_E(B₂))`, `G̃ = GU_B(⋀²U)°` and
`H̃_B = G(U_B(W) × U_B(W₀))°`. Construct the inclusions `H̃ → Ũ`, `H̃_B → G̃`, the central quotients
`Ũ/E^×`, `G̃/F^×` and the projective isomorphisms of §§1.8 and 2.4; with §2.5 write
`H̃_B = {(g, α) ∈ G × E^× : ν(g) = N(α)}` where `G = (B₁^× × B₂^×)/{(t, t⁻¹)}`. Prove that the diagram
commutes as algebraic `F`-groups, and after `Res_{F/ℚ}` and localization (IP23, §4.1, pp. 20–22;
Propositions 5.7 and 5.11, pp. 31–32). Every arrow carries its kernel and the component of its source.

- Block inclusion followed by projectivization equals the exceptional projective map followed by the
  quaternionic block inclusion.
- `H̃_B` is exactly the fibre product `ν(g) = N(α)`.
- All arrows commute with `Res_{F/ℚ}` and with extension to local fields.

**Checks.**

- The `E`-side quotient kills `E^×` and the `B`-side quotient kills `F^×`.
- The scalar `(t, t)` in `B₁^× × B₂^×` is not the kernel defining `G`; `(t, t⁻¹)` is.
- Both composites applied to `([b₁, α₁], [b₂, α₂])` give `[[b₁, b₂], Nrd(b₁)α₁⁻¹α₂]`.

*Needs:* §§2.4, 2.5; ReductiveGroups Layer 3.

### Examples

For `F = ℚ`, `E = ℚ(i)`, `J₁ = −2`, `J₂ = 5`: `H = diag(1, 2, 1, −5)`, `vol = J₁J₂ = −10`,
`B = (−1, −10)`, and on `W` the operator `L` has matrix entries `1, −2, 5, −10` in the order of §2.6.

### Dependencies

Layer 1; Mathlib `QuaternionAlgebra`, `exteriorPower.map`; Tau Ceti
`TauCeti.QuaternionAlgebra.rescaleJEquiv`, `TauCeti.BrauerGroup.quaternionClass_mul`,
`TauCeti.QuaternionAlgebra.tensorAlgEquivTensorMatrix`; ReductiveGroups Layer 3.

## Layer 3: local models, weights and cohomological theta modules

Localizing the explicit model fixes the real signatures, compact tori and character lattice.
Archimedean cohomology is relative Lie algebra cohomology at this stage; its indices acquire their
Hodge interpretation in Layer 8.

### 3.1 Local quadratic models

Localize the exterior construction at a characteristic-zero local field, allowing `E` quadratic
étale. When `B` splits, MetaplecticAutomorphicForms §3.33 supplies the transfer `X ↦ X† = Xe` along
a primitive idempotent `e`, from skew-Hermitian `B`-spaces of rank `m` to quadratic `F`-spaces of
dimension `2m`, with `GU_B(X)° ≃ GSO(X†)` and compatible splittings. Prove that for the exterior space
the real signatures are `(4,2)` above `Σ` and `(0,6)` elsewhere, for `W` they are `(2,2)` and
`(0,4)`, and for `W₀` they are `(2,0)` and `(0,2)` (IP23, §6.1, p. 38; §6.3, pp. 42–44; §10.3, p. 66).

**Checks.**

- The real exterior model above `Σ` has four positive and two negative directions.
- The signatures of `W` and `W₀` add to that of the exterior space at every real place.
- At a place outside `Σ` the quadratic space is definite, so its orthogonal group is compact.

*Needs:* §2.6; MetaplecticAutomorphicForms §3.33.

### 3.2 The split exceptional torus map

For the split local model, parametrize the unitary maximal torus by `(t₁, t₂, ν) ∈ E^× × E^× × F^×`,
with central `z` represented by `(z, z, N(z))`, and the quadratic torus by
`(s₁, s₂, α) ∈ F^× × F^× × E^×` modulo its centre `(z, z, z)`, `z ∈ F^×`. Prove that the exceptional
map is `(t₁, t₂, ν) ↦ (N(t₁t₂), νN(t₁), νt₁σ(t₂))` modulo that centre (IP23, Lemma 6.1, p. 41).

**Checks.**

- The central element `(z, z, N(z))` maps to `(N(z)², N(z)², N(z)²)`, a central quadratic element.
- `t₁ = t₂ = 1` gives `(1, ν, ν)`: the similitude enters the last two coordinates only.
- Replacing `t₂` by `σ(t₂)` changes the third coordinate, so the conjugation is not cosmetic.

*Needs:* §§1.8, 3.1.

### 3.3 The real exceptional torus map

For the real maximal compact tori write `z_i = y_i²` with `z_i, y_i ∈ ℂ¹`. Prove that in projective
coordinates the map sends `(diag(z₁, z₂, z₃, z₄), r)` to
`(y₁y₃/(y₂y₄), y₁y₄/(y₂y₃), y₁y₂/(y₃y₄), r²)` modulo the real scalar centre; changing any square root
changes the triple by a common sign (IP23, Lemma 6.2, p. 44).

**Checks.**

- Replacing `y₁` by `−y₁` negates all three coordinates, a central sign.
- The radial coordinate is squared, as the multiplier is in §1.7.
- `y = (1, 1, 1, −1)`, a square root of the identity, gives `(−1, −1, −1)`, central;
  `y = (1, 1, i, i)` gives `(1, 1, −1)`, not central.

*Needs:* §§1.7, 3.1.

### 3.4 The exceptional weight map

Define the map on character lattices `{(l₁, l₂, l₃) ∈ ℤ³ : l₁ + l₂ + l₃ even} → {k ∈ ℤ⁴ : Σ k_i = 0}`,
`(l₁, l₂, l₃) ↦ ((l₁+l₂+l₃)/2, (−l₁−l₂+l₃)/2, (l₁−l₂−l₃)/2, (−l₁+l₂−l₃)/2)`, the pullback of
characters along §3.3, and prove that `(k₁, k₂, k₃, k₄) ↦ (k₁+k₃, k₁+k₄, k₁+k₂)` is its inverse
(IP23, Corollary 6.3, p. 45).

- The image has zero coordinate sum.
- The two formulas are mutually inverse bijections of the two integral lattices.
- For `l = (k−2, 0, 0)`, `k` even, the image in torus order is
  `((k−2)/2, −(k−2)/2, (k−2)/2, −(k−2)/2)`; reordering the coordinates as `(1, 3, 2, 4)` gives the
  Borel-dominant weight `((k−2)/2, (k−2)/2, −(k−2)/2, −(k−2)/2)` of IP23 §11.3.

**Checks.**

- `(2, 0, 0) ↦ (1, −1, 1, −1)` and `(0, 0, 2) ↦ (1, 1, −1, −1)`.
- `(1, 0, 0)` has odd sum and would give `(1/2, −1/2, 1/2, −1/2)`: it is outside the domain, and
  integer division on all of `ℤ³` is not the definition.
- The two maps compose to the identity on every lattice point with coordinates in `[−4, 4]`.
- The exponent of `y₁` in `t₁^{l₁}t₂^{l₂}t₃^{l₃}` of §3.3 is `l₁ + l₂ + l₃`, twice the first
  coordinate, as `z₁ = y₁²` requires.

*Needs:* §3.3.

### 3.5 Cohomology of the archimedean theta modules

For even `k ≥ 2`, MetaplecticAutomorphicForms §3.35 identifies the real theta lift of the
holomorphic discrete series of weight `k + 1` of `SL₂(ℝ)` to `O(4,2)` with `A_{q₁}(k−2, 0, 0)` on
`SO(4,2)°` (lowest `K`-type `(k, 0, 0)`), the lift of its dual with the holomorphic `A_{q₀}`, and the
compact lift to `O(0,6)` with the representation of highest weight `(k−2, 0, 0)`, the opposite compact
lift being zero; IP23 labels its inputs by the dual. Prove that the relative Lie algebra cohomology of
`A_{q₁}(k−2, 0, 0)` with the harmonic coefficient of degree `k − 2` is one-dimensional in bidegrees
`(1,1)` and `(3,3)`, two-dimensional in `(2,2)` and zero elsewhere (IP23, §§7.2.1–7.2.2, pp. 47–48),
by the Hermitian bidegree formula of AutomorphicFormsOnReductiveGroups §5.4 with
`(R₊, R₋) = (1, 1)` and Levi `𝔰𝔬(2) ⊕ 𝔰𝔬(2,2)`, whose compact dual has Poincaré polynomial
`1 + 2t² + t⁴`.

**Checks.**

- At `k = 2` the coefficient is trivial and the cohomology is still nonzero in degree two, with
  middle dimension two.
- The total dimension is four, the Euler characteristic of `ℙ¹ × ℙ¹`.
- The holomorphic module `A_{q₀}` has cohomology in a single bidegree, so it cannot contribute to
  bidegree `(1,1)`.

*Needs:* §3.4; MetaplecticAutomorphicForms §3.35; AutomorphicFormsOnReductiveGroups §§5.2, 5.4.

### Examples

For `k = 4`: `l = (2, 0, 0)` gives the torus weight `(1, −1, 1, −1)` and the Borel-dominant weight
`(1, 1, −1, −1)`; the theta module `A_{q₁}(2, 0, 0)` has lowest `K`-type `(4, 0, 0)` and cohomology
dimensions `1, 2, 1` in bidegrees `(1,1), (2,2), (3,3)`.

### Dependencies

Layers 1–2; MetaplecticAutomorphicForms §§3.33, 3.35; AutomorphicFormsOnReductiveGroups §§5.2, 5.4.

## Layer 4: harmonic Schwartz forms

The harmonic coefficient carrier, its pairing and the Fock normalization precede the global
coefficient comparison. The restriction computations test orientation, factorial and
negative-signature signs directly; both are needed because the real places contain compact and
noncompact factors.

Throughout, `V` is a real quadratic space of signature `(p, q)`, `m = p + q`, with orthonormal basis
`e₁, …, e_m` (`⟨e_i, e_i⟩ = +1` for `i ≤ p`, `−1` otherwise), and `p, q` are even (IP23, §8.1,
p. 48).

### 4.1 Harmonic symmetric tensors

Define `ℋ^ℓV` as the kernel of the contraction `S^ℓV → S^{ℓ−2}V` on `S^ℓV = Sym^ℓV ⊗ ℂ`,
`v₁⋯v_ℓ ↦ Σ_{i<j} ⟨v_i, v_j⟩ v₁⋯v̂_i⋯v̂_j⋯v_ℓ`, zero for `ℓ < 2`. Equip `S^ℓV` with the bilinear
pairing `⟨v₁⋯v_ℓ, w₁⋯w_ℓ⟩ = Σ_{s∈𝔖_ℓ} ∏_i ⟨v_i, w_{s(i)}⟩`, with no division by `ℓ!`, and let
`S^ℓV → ℋ^ℓV` be the orthogonal projection (IP23, §8.2, pp. 49–50, (8.1)). This is the symmetric
part of the traceless tensors `harmonicTensors` of RepresentationTheory/SchurWeyl Layer 9 for the
complexified form; for `q = 0` it is the space of harmonic polynomials of
GeometryOfNumbersAndQuadraticArithmetic §4.3.

- The contraction sends `v²` to `⟨v, v⟩` and is zero in degrees zero and one.
- The projection is the identity on `ℋ^ℓV` and kills its orthogonal complement, the image of
  multiplication by the quadratic element `Σ ⟨e_i, e_i⟩ e_i²`.
- For an isotropic `e`, `e^ℓ ∈ ℋ^ℓV` and `⟨e^ℓ, w^ℓ⟩ = ℓ!⟨e, w⟩^ℓ`.
- For `r = m/2 ≥ 2`, `ℋ^ℓV` is irreducible of highest weight `(ℓ, 0, …, 0)` with highest weight vector
  `(e₁ + ie₂)^ℓ`.

**Checks.**

- `ℋ⁰V = ℂ` with the identity projection, and `ℋ¹V = V_ℂ` with the original bilinear form.
- In degree two, `⟨v², w²⟩ = 2⟨v, w⟩²`; the divided-power convention would give `⟨v, w⟩²`.
- For `V = ℝ²` positive definite, `ℋ²V` is spanned by `e₁² − e₂²` and `e₁e₂`, of dimension two, and
  `(e₁ + ie₂)²` lies in it while `e₁²` does not.

*Needs:* RepresentationTheory/SchurWeyl Layer 9; AutomorphicFormsOnReductiveGroups §5.1.

### 4.2 The polynomial Fock comparison

For `ψ(x) = exp(2πix)`, let `S(V)` be the polynomial-times-Gaussian subspace of the Schrödinger
model (MetaplecticAutomorphicForms §§0.15–0.17), with `φ₀(x) = exp(−π Σ x_i²)`. Prove that there is a
`𝔤 × 𝔤′`-equivariant isomorphism `ι : S(V) ≃ ℂ[z₁, …, z_m]` with `ι(φ₀) = 1` such that, for a positive
coordinate `α ≤ p`, `x_α − (2π)⁻¹∂_α` corresponds to multiplication by `(2πi)⁻¹z_α` and
`x_α + (2π)⁻¹∂_α` to `2i ∂/∂z_α`, and for a negative coordinate `μ > p` the corresponding operators are
`−(2πi)⁻¹z_μ` and `−2i ∂/∂z_μ` (IP23, §8.3 and (8.2), pp. 50–51). The comparison concerns the algebraic
Gaussian subspace, not all Schwartz functions.

**Checks.**

- `(x_α + (2π)⁻¹∂_α)φ₀ = 0`, matching `2i ∂/∂z_α (1) = 0`.
- For `w = x₁ + ix₂` with both coordinates positive, `(x₁ + ix₂ − (2π)⁻¹(∂₁ + i∂₂))^N φ₀ = 2^N w^N φ₀`,
  so `ι(w^N φ₀) = (z₁ + iz₂)^N/(4πi)^N`; with both coordinates negative the same vector maps to
  `(−1)^N (z₁ + iz₂)^N/(4πi)^N`.
- A single coordinate is not isotropic: `ι⁻¹(z₁²) = (2πi)²(4x₁² − π⁻¹)φ₀`, not a multiple of
  `x₁²φ₀`; and a Schwartz function outside the Gaussian subspace has no polynomial preimage.

*Needs:* §4.1; MetaplecticAutomorphicForms §§0.15–0.17, 2.5.

### 4.3 Harmonic Schwartz forms

Let `ℓ ≥ 0`. For `p > 0` define `φ_{q,ℓ} ∈ ℂ[z] ⊗ ⋀^q𝔭^* ⊗ S^ℓV` by
`φ_{q,ℓ} = (4πi)^{−(q+ℓ)} Σ_{α∈{1..p}^q} Σ_{β∈{1..p}^ℓ} z_α z_β ⊗ ω_α ⊗ e_β`, with
`ω_α = ω_{α₁,p+1} ∧ ⋯ ∧ ω_{α_q,p+q}`, and `φ′_{q,ℓ}` its image under the harmonic projection. For
`p = 0` define `φ_ℓ = (4πi)^{−ℓ} Σ_{β∈{1..m}^ℓ} z_β ⊗ e_β` and its harmonic projection `φ′_ℓ`. Prove
that `φ′_{q,ℓ}` is `K`-invariant, closed for the relative Lie algebra differential and of weight
`ℓ + m/2` for `K′ = U(1) ⊂ SL₂(ℝ)`, and that `φ′_ℓ` is `G`-invariant of weight `−ℓ − m/2` (IP23, §8.4,
pp. 51–52). The first formula carries the factor `2^{−q/2}` relative to Funke–Millson.

- `dφ′_{q,ℓ} = 0`.
- The `K′`-character is `ℓ + m/2` for `p ≥ 1` and `−ℓ − m/2` for `p = 0`.
- The coefficient lies in `ℋ^ℓV`, and before projection `φ_{q,ℓ}` differs from `φ′_{q,ℓ}` by trace
  terms.

**Checks.**

- For `ℓ = 0` the projection is the identity and the coefficient is a scalar.
- For `p = 0` and `ℓ = 0`, `φ′₀ = φ₀` with `K′`-weight `−m/2`; for `(0, 6)` this is `−3`.
- For `(p, q) = (4, 2)` and `ℓ = 0` the form has degree two and weight three, matching the
  antiholomorphic discrete series of weight `−3`, the case `k = 2` of §3.5.
- The compact formula with `p = 0` is not the empty-sum case of the first formula: that sum is zero.

*Needs:* §§4.1–4.2; AutomorphicFormsOnReductiveGroups §5.2.

### 4.4 The harmonic restriction map

In the six-dimensional model of §3.1 take `V′ = span(e₁, e₂, e₅, e₆)` and `V₀ = span(e₃, e₄)`. Prove that
the composite `ℋ^ℓ(V′ ⊕ V₀) ⊂ S^ℓ(V′ ⊕ V₀) → S^ℓV′ → ℋ^ℓV′` is an `O(V′)`-equivariant retraction of
the harmonic inclusion, and that with `r` the symmetric restriction and `P` the harmonic projections,
`P_{V′} ∘ r = res ∘ P_{V′⊕V₀}` on `S^ℓ(V′ ⊕ V₀)`; raw restriction need not preserve harmonic tensors
(IP23, §8.5, (8.3), pp. 52–54).

**Checks.**

- A harmonic tensor supported in `V′` is fixed by the composite.
- `e₃² − e₄²` is harmonic in `V′ ⊕ V₀` and restricts to zero.
- For `ℓ = 2` and positive `V′` directions, `r(e₁e₃) = 0` while `r(e₁²) = e₁²` is not harmonic; its
  projection is `e₁² − (e₁² + e₂² − e₅² − e₆²)/4`, with the sign of the trace element read from the
  signature.

*Needs:* §§3.1, 4.1.

### 4.5 The noncompact Schwartz restriction formula

For signature `(4, 2)`, normalize `ω₁₅ ∧ ω₂₅ ∧ ω₁₆ ∧ ω₂₆ ↦ 1`, put
`ω^ε = (ω₁₅ + εiω₂₅) ∧ (ω₁₆ + εiω₂₆)` and `v^ε = (e₁ + εie₂)^ℓ/ℓ!` for `ε = ±1`. Prove that contracting
the restricted `φ′_{2,ℓ}` against `ω^ε` by the wedge pairing and against `v^ε` by the coefficient
pairing gives the Schwartz function `(x₁ + εix₂)^{ℓ+2} φ₀(x)` (IP23, Proposition 8.1, pp. 54–55).

**Checks.**

- For `ℓ = 0` the result is the quadratic `(x₁ + εix₂)²φ₀`, not the Gaussian.
- The factor `1/ℓ!` in `v^ε` cancels the `ℓ!` of the undivided pairing; with the divided pairing the
  result would carry an extra `1/ℓ!`.
- The two partial sums are `Σ_α z_α(ω_α ∧ ω^ε) = (z₁ + εiz₂)²` and `Σ_β z_β⟨e_β, v^ε⟩ = (z₁ + εiz₂)^ℓ`;
  in the first, `α = (1,1)` contributes `+1` and `α = (2,2)` contributes `−1` under the normalization
  `ω₁₅ ∧ ω₂₅ ∧ ω₁₆ ∧ ω₂₆ ↦ 1`, so the orientation is visible in the cross term `2εi z₁z₂`.

*Needs:* §§4.2–4.4.

### 4.6 The compact Schwartz restriction formula

For signature `(0, 6)`, with the same `V′` and `v^ε = (e₁ + εie₂)^ℓ/ℓ!`, prove that contracting the
restricted `φ′_ℓ` against `v^ε` gives `(−1)^ℓ (x₁ + εix₂)^ℓ φ₀(x)` (IP23, Proposition 8.2, p. 55). The
application has `ℓ = k_v − 2` even; the formula keeps the sign for every `ℓ`.

**Checks.**

- For `ℓ = 1` the result is `−(x₁ + εix₂)φ₀`; for `ℓ = 0` it is `φ₀`.
- The sign is the negative-coordinate sign of §4.2 raised to the power `ℓ`.
- The exponent is `ℓ`, not `ℓ + 2`: there is no differential-form factor in the compact case.

*Needs:* §§4.2–4.4.

### Examples

For `k_v = 4` at a split place: `ℓ = 2` and the restricted noncompact contraction is
`(x₁ ± ix₂)⁴φ₀`; at a compact place it is `(x₁ ± ix₂)²φ₀`. These are the archimedean vectors of §7.5.

### Dependencies

Layer 3; RepresentationTheory/SchurWeyl Layer 9; GeometryOfNumbersAndQuadraticArithmetic §4.3;
MetaplecticAutomorphicForms §§0.15–0.17, 2.5; AutomorphicFormsOnReductiveGroups §§5.1–5.2.

## Layer 5: Shimura data, coefficients and component characters

The group diagram becomes a diagram of specified Shimura data. The torus map constructs the component
character by pullback, without asserting a bijection of component sets. The rational coefficient
comparison connects the harmonic and quaternionic coefficient systems.

### 5.1 The Shimura diagram

Apply `Res_{F/ℚ}` to the diagram of §2.8. At `v ∈ Σ` take `h_U(z) = diag(z, z, z̄, z̄)` in the unitary
realization and `h_i(z) = diag(z, z̄)` on the block planes; outside `Σ` take the trivial cocharacter.
On the quaternionic exterior realization take `h_B(z) = diag(z², zz̄, zz̄)` in the basis of IP23. Prove
that the projective isomorphisms identify these data, that the block arrows are morphisms of Shimura
data, and that all data have reflex field `F_Σ` (IP23, §4.2, p. 23; §12.2.2, pp. 94–95). The Deligne
axioms are asserted for `d > 0`; for `d = 0` the construction is on finite Shimura sets with trivial
cocharacter and constant models (§0.1). Canonical models exist by ShimuraVarieties §6.7 and the arrows
give maps of canonical models over `F_Σ` by §8.5.

- Every datum of the diagram has reflex field `F_Σ`, with compatible base changes.
- The real cocharacters agree after the exceptional projective isomorphism.
- Compatible compact opens give maps of canonical models over `F_Σ`, agreeing with the double-quotient
  maps over `ℂ`.

**Checks.**

- At a real place outside `Σ` every `h` is trivial.
- The quaternionic product has complex dimension `2d` and the unitary variety `4d`.
- Replacing `z²` by `z` in `h_B` breaks compatibility with the exterior representation.

*Needs:* §§0.1, 2.8; ShimuraVarieties §§6.7, 8.5; ShimuraData §4.3.

### 5.2 The component torus

For `H̃_B` of §2.8, prove that its derived group is `(B₁¹ × B₂¹)/μ₂` and that its abelian quotient is
`T = {([t₁, t₂], α) : t₁t₂ = N(α)}`, with `(t₁, t₂)` modulo `(t, t⁻¹)`, the quotient map sending
`([b₁, b₂], α)` to `([Nrd b₁, Nrd b₂], α)`. Its centre `Z = {([t, 1], α) : t² = N(α)}` maps to `T` by
`([t, 1], α) ↦ ([t², 1], α) = ([t, t], α)`. The morphism of Shimura data to the zero-dimensional torus
datum of `T` (ShimuraVarieties §8.6) gives, by §8.5, a map `Sh_{H̃_B} → Sh_T` over `F_Σ`, used to
pull back functions on components (IP23, §4.3, pp. 23–24). No bijection of component sets is asserted:
the derived group is not simply connected, so ShimuraVarieties §8.7 does not apply.

- The two representatives `[t², 1]` and `[t, t]` agree modulo the anti-diagonal.
- The map to `T` is a morphism of Shimura data over `F_Σ`.
- The torus cocharacter factors through `j : Res_{F/ℚ}𝔾_m → T`, `j(s) = ([s, s], s)`, with components
  `zz̄` at `Σ` and `1` elsewhere.

**Checks.**

- If `N(α) = t²` then `([t, t], α)` satisfies `t₁t₂ = N(α)`.
- The kernel of `Z → T` is generated by `([−1, 1], 1)`.
- The derived group is not simply connected, so several component classes may lie over one torus
  class; no bijection is part of the API.

*Needs:* §§2.5, 5.1; ShimuraVarieties §§8.5, 8.6.

### 5.3 The component character class

Let `η` be a finite-order Hecke character of `𝔸_E^×/E^×𝔸_F^×` with trivial archimedean components. On
`T` put `η_T([t₁, t₂], α) = η((t₁t₂)⁻¹α) = η(α)`. The locally constant function `η_T` on `Sh_T`,
for a level on which `η` is trivial, pulls back to `c_η ∈ H⁰(Sh_{H̃_B}, ℚ(η))` (IP23, §4.3,
pp. 23–24; §10.4, pp. 68–69). The full idele-class character is used: the argument `(t₁t₂)⁻¹α` need
not have norm one, so a character defined only on `𝔸_E¹` cannot be evaluated there.

- On `([t, 1], α) ∈ Z` the value is `η(t⁻¹α) = η(α)`.
- Pullback along smaller levels preserves `c_η`.
- `c_η` has coefficients in `ℚ(η)`, and `Gal(ℚ̄/F_Σ)` acts on it through its permutation of
  components (ShimuraVarieties §4.3), fixing the coefficients.

**Checks.**

- For `η = 1` the class is the constant function `1`.
- `η_T(j(s)) = η(s⁻¹) = 1` for every `s ∈ 𝔸_F^×`.
- The value does not depend on the representative of `[t₁, t₂]`: `(t₁s, t₂s⁻¹)` gives the same
  product `t₁t₂`.

*Needs:* §5.2; ShimuraVarieties §§4.3, 8.6; GlobalNumberFields Layer 9.

### 5.4 Rational harmonic coefficients

Put `ℓ_v = k_v − 2`. Prove that the harmonic representation `ℋ^{ℓ_v}` of the real quadratic model
extends to the connected similitude group by `ν^{−ℓ_v/2}`, algebraic with trivial centre because
`ℓ_v` is even; that its pullback through the exceptional maps is the representation of the unitary
group of highest weight `((k_v−2)/2, (k_v−2)/2, −(k_v−2)/2, −(k_v−2)/2)` in the Borel order of IP23
§11.3 (§3.4 with the reordering `(1, 3, 2, 4)`); that the global coefficient has a `ℚ(k)`-form unique up
to homothety; and that its restriction to the block subgroup has a rational equivariant projection to
`τ_k^∨ ⊠ τ_k^∨` (IP23, §11.3, pp. 83–85; Proposition 12.2 and §12.2.3, pp. 95–96). The projection is
normalized by the harmonic inclusion and pairing of §4.1.

**Checks.**

- For `k_v = 2` all coefficients are trivial.
- For odd `ℓ` the twist `ν^{−ℓ/2}` is not an algebraic character, and the centre would act
  nontrivially.
- For `k_v = 4` the unitary highest weight is `(1, 1, −1, −1)`, the image of `(2, 0, 0)` under §3.4.

*Needs:* §§3.4, 4.1, 5.1; AutomorphicFormsOnReductiveGroups §5.7; ShimuraData §4.3.

### Examples

For `η` of order three on `𝔸_E^×/E^×𝔸_F^×` and a level on which `η` is trivial, `c_η` is constant on
each fibre of `Sh_{H̃_B} → Sh_T`, equal to the value of `η_T` at the image point, a cube root of unity;
its coefficient field is `ℚ(ζ₃)`. The Galois action on `Sh_T` is through the reflex norm, whose finite
image lies in `j(𝔸_{F,f}^×)`, where `η_T` is trivial (§10.5).

### Dependencies

Layers 0, 2–4; ShimuraVarieties §§4.3, 6.7, 8.5, 8.6; ShimuraData §4.3; AutomorphicFormsOnReductiveGroups
§5.7; GlobalNumberFields Layer 9.

## Layer 6: quaternionic theta transfer and near equivalence

The two lower-rank lifts identify the scalar periods. The rank-three backward lift constrains every
nearly equivalent automorphic representation. Its doubled residue is kept separate from the
positive-range Rallis inner product formula.

Throughout this layer `F` is a number field, `B` a division quaternion algebra over `F` split at every
archimedean place, `E/F` a quadratic extension embedded in `B`, and the dual pairs, splittings and
global theta lifts are those of MetaplecticAutomorphicForms §§3.23–3.28 and 5.6, in the convention
`θ(f) = ∫ Θ f` of the Conventions.

### 6.1 Toric theta lifting and automorphic induction

Let `V = B` with the skew-Hermitian form `⟨x, y⟩ = x*κiy`, so that `GU(V)° ≃ E^×`, and let `η` be a
character of `𝔸_E^×/E^×` such that `η_v` does not factor through `N_{E_v/F_v}` at any place where
`B_v` is ramified. The theta lift `θ(η)`, defined on the norm-image subgroup and extended by zero
using `[𝔸^× : F^×N(𝔸_E^×)] = 2`, equals `π(η)_B`, the transfer to `B^×(𝔸)` of the automorphic
induction `π(η)` (IP23, §9.2, pp. 56–57; Lemma 9.1, p. 57). *Proof route:* at almost all places the
lift is the unramified induction, so strong multiplicity one identifies every constituent; nonvanishing
reduces to the theta lift of `χ = η|_{𝔸_E¹}` from `U(1)` to the rank-two skew-Hermitian space, where
`L(1, χ) ≠ 0` and the Rallis inner product formula reduce it to local nonvanishing, given by the stable
range at split places and by the conservation relation at ramified places.

**Checks.**

- A character factoring through the norm at a place where `B` ramifies is excluded: the local lift to
  the ramified quaternionic space vanishes.
- For `χ = 1` the factor `L(s, χ)` has a pole at `s = 1` and the argument does not apply; the
  hypothesis forces `χ_v ≠ 1` at every ramified place.
- The central character of `π(η)` is `η|_{𝔸^×} ξ_E`; for `η` trivial on `𝔸^×` it is `ξ_E`.

*Needs:* GL2AutomorphicRepresentationsAndTransfer §§R16.4.4, R17.3.1, R17.4.16;
MetaplecticAutomorphicForms §§3.9, 3.16, 3.23, 3.24, 5.6, 6.13, 6.14; AutomorphicLFunctionsAndLocalFactors
AL.3 (Rankin–Selberg nonvanishing on the boundary, at `GL₁ × GL₁`); §0.4.

### 6.2 Quaternionic product theta lifting

Let `B = B₁·B₂` in the Brauer group, `V = B₁ ⊗_E B₂` the two-dimensional skew-Hermitian `B`-space with
`GU(V)° ≃ (B₁^× × B₂^×)/F^×`, and `σ_i` irreducible unitary cuspidal representations of `B_i^×(𝔸)` with
the same central character, with transfers `π_i` to `GL₂(𝔸)`. Prove that `θ(σ₁ ⊠ σ₂) = 0` if `π₁ ≠ π₂`,
and that if `π₁ = π₂` it is the transfer of `π_i` to `B^×(𝔸)`, which exists (IP23, §9.3, pp. 57–58;
Lemma 9.2, p. 58). *Proof route:* the see-saw identity pairs `θ(σ₁ ⊠ σ₂)` with `f′ ∈ σ̄` against
`σ₁ ⊠ σ₂` paired with the lift of `σ̄` to `GU(V)°`, which is the quaternionic Shimizu lift
`π̄_{B₁} ⊠ π̄_{B₂}` (gap:quaternionic-shimizu-lift); the local splittings are those of
MetaplecticAutomorphicForms §§3.28 and 3.32a.

**Checks.**

- If the two cuspidal transfers differ, every theta period vanishes.
- `(t, t⁻¹)` acts trivially on `V`, so `σ₁ ⊠ σ₂` descends to `GU(V)°` only with equal central characters.
- For `B₁ = B₂` the algebra `B` splits and the statement is the classical `GO(4)` Shimizu lift.

*Needs:* §2.6; GL2AutomorphicRepresentationsAndTransfer §§R16.4.4, R17.3.1;
MetaplecticAutomorphicForms §§3.23, 3.24, 3.28, 3.32a, 3.38, 5.6, 6.15 and
gap:quaternionic-shimizu-lift.

### 6.3 The backward-lift doubling point

In the anisotropic rank-three setting of §6.5, let `I_v(s)` be the degenerate principal series of the
doubled unitary group with Siegel character `|Nrd(a)|^{s+5/2}`, `a_v(s) = ζ_v(2s)ζ_v(2s−2)ζ_v(2s−4)`,
`b_v(s) = ζ_v(2s+1)ζ_v(2s+3)ζ_v(2s+5)`, and `M_v*(s) = (b_v(s)/a_v(s)) M_v(s) : I_v(s) → I_v(−s)`. Prove
that `M_v*(s)` is holomorphic for `Re s ≥ 0` with image `R(W_v) ⊂ I_v(−3/2)` at `s = 3/2`, that for each
`v` there exist a holomorphic section and vectors for which the local doubling integral `Z_v(s)` is
holomorphic and nonzero at `3/2`, and that for normalized unramified data the global doubling integral
is
`L^S(s+1/2, ad τ × ξ_E) ζ^S(s+3/2) ζ^S(s+1/2) ζ^S(s−1/2) / (ζ^S(2s+1) ζ^S(2s+3) ζ^S(2s+5))` times
`∏_{v∈S} Z_v(s)`, so that suitable data give a nonzero simple residue at `s = 3/2` (IP23, §9.5,
Lemma 9.7, p. 63; (9.3) and Lemma 9.8, pp. 63–64). No holomorphy for all data is asserted.

**Checks.**

- The quotient `b_v/a_v` at `s = 3/2` is `ζ_v(4)ζ_v(6)ζ_v(8)/(ζ_v(3)ζ_v(1)ζ_v(−1))`, finite for
  nonarchimedean `v`.
- At `s = 3/2` the global factor contains `ζ^S(s−1/2) = ζ^S(1)`, the source of the simple pole.
- The positive-range Rallis value formula of MetaplecticAutomorphicForms §6.13 is not used at this
  residue.

*Needs:* §3.1; MetaplecticAutomorphicForms §§3.3c, 3.7, 6.10–6.11 and
gap:quaternionic-doubling-residue.

### 6.4 Nonvanishing of the backward lift

Let `X` be the rank-three skew-Hermitian `B`-space of §1.6 with `U(X)` anisotropic over `F`,
`G = GU_B(X)°` and `H_N^+ = {h ∈ B^×(𝔸) : Nrd(h) ∈ N(𝔸_E^×)}`. Let `τ` be an irreducible unitary
automorphic representation of `H_N^+` whose lift `Π = θ(τ)` to `G` is nonzero and cuspidal. If `Π′` is
an irreducible unitary automorphic representation of `G` with `Π′_v ≃ Π_v` for almost all `v`, then the
backward lift `θ(Π̄′)` to `H_N^+` is nonzero (IP23, Lemma 9.6 and §9.5, pp. 61–64). *Proof route:*
factor the doubling integral (§6.3), choose local data with nonzero holomorphic local integrals, apply
the second-term Siegel–Weil identity at `s = 3/2` (gap:quaternionic-doubling-residue) and unfold the
residue into the inner product of two backward theta lifts.

**Checks.**

- Near equivalence is agreement at almost all places, not at one place.
- `θ(Π̄′)` uses the conjugated input; the unconjugated lift is the lift of `Π′^∨`.
- Anisotropy is used for convergence and to identify the residue; it holds when `d < n`, because a
  compact real localization excludes an `F`-split torus.

*Needs:* §6.3; MetaplecticAutomorphicForms §§5.6, 6.4, 6.12 and gap:quaternionic-doubling-residue;
AdelicAlgebraicGroups §3.4.

### 6.5 Near-equivalence rigidity of theta lifts

Under the hypotheses of §6.4, prove that every irreducible unitary automorphic `Π′` of `G` nearly
equivalent to `θ(τ)` is `θ(τ′)` for an irreducible automorphic representation `τ′` of `H_N^+` nearly
equivalent to `τ`; one takes `τ′` to be the complex conjugate of `θ(Π̄′)` (IP23, Proposition 9.5,
p. 61; §9.5.4, p. 64). The statement concerns these rank-three anisotropic lifts, not strong
multiplicity one for all of `G`.

**Checks.**

- The candidate is the conjugate of `θ(Π̄′)`, not `θ(Π̄′)` itself.
- Local Howe duality (MetaplecticAutomorphicForms §§3.7, 3.34) gives irreducibility of `θ(Π̄′)` and
  `θ(Π̄′)_v ≃ τ̄_v` at almost all `v`.
- The unramified parameters are recovered by MetaplecticAutomorphicForms §3.36:
  `θ(τ_v)` is the constituent of the induced representation from
  `(χ₁χ₂⁻¹ξ_E) ⊗ |·| ⊗ (χ₂|·|^{−1/2})∘N` for `τ_v` a constituent of `Ind(χ₁ ⊗ χ₂)`.

*Needs:* §6.4; MetaplecticAutomorphicForms §§3.7, 3.34, 3.36; GL2AutomorphicRepresentationsAndTransfer
§R16.4.4.

### Examples

For `F` real quadratic and `d = 1`, the rank-three space has signature `(4,2)` at the split place and
`(0,6)` at the other, so `U(X)` is anisotropic and every automorphic form on `G` is cuspidal; the
toric lift of §6.1 with `η` non-norm at the two ramified places of `B` is the `B^×` transfer of a
dihedral form of central character `ξ_E`.

### Dependencies

Layers 0–3; MetaplecticAutomorphicForms §§3.3c, 3.7, 3.9, 3.16, 3.23–3.28, 3.32a, 3.34, 3.36, 3.38, 5.6,
6.4, 6.10–6.15; GL2AutomorphicRepresentationsAndTransfer §§R16.4.4, R17.3.1, R17.4.16;
AutomorphicLFunctionsAndLocalFactors AL.3; AdelicAlgebraicGroups §3.4.

## Layer 7: simultaneous nonvanishing of restricted theta classes

The same finite data, character and auxiliary representation work for every archimedean sign. The
finite support-place argument puts the scalar theta form on the norm subgroup; an adelic translation
then makes its product with the toric lift nonzero before spectral projection.

### 7.1 Global theta data

In the distinct-algebra case of §0.4 choose a CM quadratic `E ⊂ B_i`, write `B_i = E ⊕ Ej_i`, and take
the spaces and groups of §2.8. Define the *global theta data* to consist of: `H = B^×`, the subgroups
`H_N^+ = {h : Nrd(h) ∈ N(𝔸_E^×)}` and `H_∞^+ = {h : Nrd(h_v) > 0 at every real v}`; at `v ∈ Σ` the
Schwartz form `φ′_{2,ℓ_v}` of §4.3 and at real `v ∉ Σ` the form `φ′_{ℓ_v}`, `ℓ_v = k_v − 2`, with a
pure-tensor finite Schwartz vector; and an irreducible unitary automorphic `τ` of `H_N^+` with central
character `ξ_E`, of antiholomorphic minimal type of weight `k_v + 1` at `Σ` and holomorphic type
outside `Σ` (IP23, §§10.1–10.3, pp. 65–68; §12.2.4, p. 96). The exterior isometry group is
`F`-anisotropic because some real localization is `O(0,6)`, so its adelic quotient modulo the centre is
compact (AdelicAlgebraicGroups §3.4) and every automorphic form on it is cuspidal
(AutomorphicFormsOnReductiveGroups §4.2).

- At `Σ` the source type is the antiholomorphic discrete series of weight `−k_v − 1`; outside `Σ` the
  holomorphic one of weight `k_v + 1`.
- `H_N^+ ⊂ H_∞^+`, and the inclusion is strict in general.
- The total form degree is `2d` and the coefficient is the `ℚ(k)`-rational harmonic system of §5.4.

**Checks.**

- For real quadratic `F` and `d = 1`, the global form has degree two.
- For `d = 0` every archimedean factor is the compact Schwartz form.
- Positive real reduced norms do not imply membership in `N(𝔸_E^×)`: a finite place where `E` is
  inert and `Nrd(h_v)` has odd valuation excludes `h` from `H_N^+`.

*Needs:* §§0.4, 2.8, 3.5, 4.3, 5.4; MetaplecticAutomorphicForms §§3.23, 3.24; AdelicAlgebraicGroups §3.4;
AutomorphicFormsOnReductiveGroups §4.2.

### 7.2 The theta cohomology class

For global theta data and a minimal-type vector `φ ∈ τ`, lifting the tensor-valued Schwartz form gives
a closed `2d`-form `θ(φ)` on the quaternionic exterior Shimura variety with the coefficient of §5.4.
The central transformation of the splitting, `s_v(zg) = ξ_{E,v}(z)^m s_v(g)` with `m = 3`
(MetaplecticAutomorphicForms §3.24; IP23, Proposition A.1, p. 101), cancels the central character
`ξ_E` of `τ`, so the form has trivial central character. Define the class `ξ_τ` as its cohomology class
(IP23, §10.4, pp. 68–69). It is linear in `φ` and in the Schwartz vector; MetaplecticAutomorphicForms
§5.6 is applied to `φ̄`.

- The theta integral has a closed tensor-valued representative.
- Every smooth finite adelic input defines the class at a sufficiently small level, compatibly with
  pullback.
- The class is linear in the Schwartz vector and in the automorphic vector.

**Checks.**

- A zero Schwartz or automorphic vector gives the zero class.
- For `d = 1` the representative has degree two.
- `ξ_E^3 = ξ_E` cancels the source central character `ξ_E`; the resulting class has trivial central
  character, not `ξ_E`.

*Needs:* §§4.3, 5.4, 7.1; MetaplecticAutomorphicForms §§3.24, 5.6.

### 7.3 Central projection and normalized descent

Restrict `ξ_τ` to `H̃_B`. For the centre `Z = {(z, α) : z² = N(α)}` use `p(z, α) = z⁻¹α ∈ E¹` and project
by `∫ ξ_τ(zg)(η∘p)(z) dz` over the compact quotient `Z(G̃)(𝔸)Z(F)∖Z(𝔸)` of volume one; multiply the
resulting form by `c_η` of §5.3. For `g ∈ G(𝔸)^+` choose `α_g` with `N(α_g) = ν(g)` and evaluate at
`(g, α_g)` times `η(α_g)`; this is independent of `α_g`. Descend by the normalized trace of §0.3, extend
by zero off `G(F)G(𝔸)^+` and average over a compact open with volume one (IP23, §10.4, pp. 68–70;
Remark 2.2, p. 17).

- The projected form transforms under the centre by `(η∘p)⁻¹`.
- The product `ξ_η(g, α_g)η(α_g)` does not depend on `α_g`.
- Normalized trace and average are compatible with level change; traces go to the actual image,
  extended by zero.

**Checks.**

- For `η = 1` this is projection to central invariants.
- A `K`-invariant form is unchanged by averaging over `K` with volume one.
- On an adelic component without a norm lift the unextended formula is not evaluated; the value there
  is zero by extension.

*Needs:* §§0.3, 2.8, 5.3, 7.2; MetaplecticAutomorphicForms §6.15.

### 7.4 The restricted theta see-saw

For the projected and descended form and the vectors `f₁^ε ⊠ f₂^ε` of §7.10, prove that pairing against
their coefficient and differential factors equals the scalar theta integral of IP23 Lemma 10.2, and
that the compatible-splitting see-saw rewrites it as the triple-product integral over `H_N^+` of
`θ_{φ^ε}(f^ε)·θ_{φ₀}(η)·φ`, with the central quotients and measures of IP23 §10.4 and absolute
convergence from compactness and cuspidality (IP23, Lemma 10.2, p. 71; (10.7), p. 72).

**Checks.**

- All signs `ε` use the same finite Schwartz data.
- The see-saw is equation (10.7), p. 72; equation (10.8) is a later `K`-type identity.
- Fubini is applied only after convergence and matching central quotients are established.

*Needs:* §§4.5, 4.6, 7.3; MetaplecticAutomorphicForms §§3.28, 6.15.

### 7.5 The simultaneous sign theta vectors

For each `ε ∈ {±1}^{Σ_∞}` take the archimedean Schwartz factor `(x₁ + ε_v ix₂)^{k_v} φ₀` above `Σ` and
`(x₁ + ε_v ix₂)^{k_v−2} φ₀` elsewhere (IP23, (10.4)). Prove that finite Schwartz data can be chosen once
so that `θ_{φ^ε}(f^ε)` is nonzero for every `ε`, lies in `π_B`, and has minimal weights `+k_v` at `Σ` and
`−k_v` elsewhere; its archimedean Whittaker coefficient is nonzero and independent of `ε` because the
exponents are even, so the `f^ε` can be rescaled to give one nonzero automorphic form (IP23, Lemma 10.3
and (10.9)–(10.12), pp. 73–76).

**Checks.**

- A different finite Schwartz function for each sign is not allowed.
- The archimedean exponents `k_v` and `k_v − 2` are even, so the sign `ε_v^{k_v}` is `+1`.
- At `k_v = 2` the factor outside `Σ` is the Gaussian itself.

*Needs:* §§4.5, 4.6, 6.2, 7.1; AutomorphicSpectralTheory §§0.25–0.26.

### 7.6 Moving theta support to the norm subgroup

Assume a finite place `v₀` at which `E/F` is ramified, `B₁` and `B₂` are split, and the level is
hyperspecial. Prove that the restriction to `H_N^+` of the common sign theta form of §7.5 is nonzero
after a translation by an element of the block group fixing the hyperspecial vectors: a unit at `v₀`
outside the local norm group exchanges the two norm-support cosets (IP23, Lemma 10.4, pp. 75–76).

**Checks.**

- The ramification of `E` at `v₀` is used: at an unramified place every unit is a norm.
- The hyperspecial condition at `v₀` keeps the finite vectors fixed by the translation.
- The two cosets are those of `F^×N(𝔸_E^×)` in `𝔸^×`, of index two.

*Needs:* §§2.5, 7.5; ClassFieldTheory §5.4 and Layer 8.

### 7.7 The auxiliary finite-order character

Prove that there is a character `η` of `𝔸_E^×/E^×` with `η|_{𝔸^×} = 1`, `η_v = 1` at every real place,
and `η_v` not factoring through the norm at every place where `B` ramifies; it has finite order (IP23,
Lemma 10.5, p. 76). *Proof route:* by Hilbert 90, `x ↦ x/σ(x)` identifies `E^×/F^×` with `E¹`; choose
characters `χ_v` of `E_v¹` with `χ_v² ≠ 1` at the ramified places, extend their product from the
compact image of `∏_{v∈S} E_v¹` to `𝔸_E¹/E¹` by the extension criterion of
GL2AutomorphicRepresentationsAndTransfer §R16.1.8, and put `η(x) = χ(x/σ(x))`. Continuity gives an open
subgroup of the finite ideles on which `η` is trivial, and finiteness of the resulting quotient gives
finite order.

- `η` is trivial on `𝔸^×` and on `E^×`.
- At every place ramified in `B`, `η_v` does not factor through `N_{E_v/F_v}`.
- The automorphic induction of `η` has central character `ξ_E`.

**Checks.**

- At every real place `η_v` is trivial.
- If `χ_v` has order two then `η_v|_{E_v¹} = χ_v²` is trivial and `η_v` factors through the norm; this
  choice is rejected.
- For `x ∈ 𝔸^×`, `x/σ(x) = 1` and `η(x) = 1`.

*Needs:* §7.1; GL2AutomorphicRepresentationsAndTransfer §R16.1.8; GlobalNumberFields Layer 9; Mathlib
`groupCohomology.H1ofAutOnUnitsUnique`.

### 7.8 The auxiliary toric theta vector

For `η` of §7.7, prove that there is finite Schwartz data `φ₀` with archimedean Gaussian factors,
`φ₀,v(0) = 1`, such that `θ_{φ₀}(η)` is nonzero on `H_N^+`, with real weights `+1` at `v ∈ Σ` and `−1`
elsewhere (IP23, Lemma 10.6 and (10.12), pp. 76–77).

**Checks.**

- At each real place the Gaussian value at zero is exactly one.
- The weights `±1` are those of the rank-one Gaussian under §4.3 with `m = 2`.
- By §6.1 the lift is the `B^×` transfer of `π(η)`, so it is nonzero as an automorphic representation;
  the content is a nonzero vector with the stated archimedean types.

*Needs:* §§4.2, 6.1, 7.7.

### 7.9 The minimal triple-product type

Prove that if the pointwise product `θ_{φ^ε}(f^ε)·θ_{φ₀}(η)` is nonzero, then at each real place it
generates the minimal discrete-series type of weight `k_v + 1`, holomorphic at `Σ` and antiholomorphic
outside `Σ`; its contragredient is the type required of `τ` in §7.1 (IP23, Lemma 10.7, p. 77).

**Checks.**

- At `Σ` the weights add: `k_v + 1`, not `k_v − 1`.
- Outside `Σ` the factors have weights `−k_v` (§7.5) and `−1` (§7.8), summing to `−(k_v + 1)`: the
  antiholomorphic type of weight `k_v + 1`.
- The tensor product of two holomorphic discrete series contains the holomorphic discrete series of
  the summed weight as its minimal `K`-type component (AutomorphicFormsOnReductiveGroups §2.6).

*Needs:* §§7.5, 7.8; AutomorphicFormsOnReductiveGroups §2.6.

### 7.10 Simultaneous nonvanishing of the restriction

Let `f₁^ε ⊠ f₂^ε ∈ π_{B₁} ⊠ π_{B₂}` have weights `±k_v` (opposite on the two factors) at `v ∈ Σ` and
`±(k_v − 2)` outside `Σ`, the same finite components for all `ε`, and be fixed by a compact open `K`.
Assume the place `v₀` of §7.6 exists. Prove that there is one choice of `τ`, `φ`, `η` and Schwartz data
for which the descended theta class pairs nontrivially with every one of the `2^n` sign vectors `f^ε`
(IP23, Proposition 10.1, pp. 70–71; Lemma 10.8 and §10.9, pp. 77–78). *Proof route:* translate to a
common connected real quotient; the two nonzero real-analytic restrictions have nonzero product;
project it on the compact quotient onto a nonzero irreducible summand (AutomorphicSpectralTheory §4.7),
take `τ` its contragredient and a vector with nonzero period, and use §7.5 for all `ε` at once.

**Checks.**

- "For every sign there exist separate data" is weaker and is not this statement.
- For `d = 1` there are two signs at the split place and the statement gives two nonzero pairings for
  one class.
- The hypothesis at `v₀` is part of the statement; §10.2 shows that a suitable `E` exists.

*Needs:* §§7.4, 7.6, 7.9; MetaplecticAutomorphicForms §6.15; AutomorphicSpectralTheory §4.7.

### Examples

For `F` real quadratic, `Σ = {∞₁}` and `k = (2, 2)`: the archimedean factors are `(x₁ ± ix₂)²φ₀` at
`∞₁` and `φ₀` at `∞₂`; there are four sign vectors, and §7.10 gives one class pairing nontrivially with
all four.

### Dependencies

Layers 0–6; MetaplecticAutomorphicForms §§3.23, 3.24, 3.28, 5.6, 6.15; AutomorphicSpectralTheory §§0.25–0.26,
4.7; AdelicAlgebraicGroups §3.4; AutomorphicFormsOnReductiveGroups §§2.6, 4.2; ClassFieldTheory §5.4 and
Layer 8; GL2AutomorphicRepresentationsAndTransfer §R16.1.8; GlobalNumberFields Layer 9.

## Layer 8: the unitary eigenspace and its Hodge type

The rational Hecke space contains every coefficient conjugate of the theta eigenspace. Degree selection
isolates the `q₁` contribution at each split place, and the coefficient-normalized Hodge calculation
proves actual type `(d,d)` rather than inferring it from relative cochain bidegrees.

In this layer `G = GU(V)` for the four-dimensional Hermitian `E`-space `V = B₁ ⊥ B₂`, with
`G_v ≃ GU(2,2)` at `v ∈ Σ` and `GU(4)` at real `v ∉ Σ`, `G′ = U(V)`, and `Π = θ(τ)` is the theta lift of
§7.10, transported to `G̃ = Res_{F/ℚ} G` and to the quaternionic exterior group by §2.8 (IP23, §11.3,
pp. 83–85).

### 8.1 The unramified parameter of the theta lift

Choose an irreducible unitary cuspidal `σ` of `GL₂(𝔸_F)` with central character `ξ_E` such that `τ` is
a constituent of the restriction of the `B^×` transfer of `σ` (gap:norm-subgroup-restriction), and let
`σ_E` be its base change to `GL₂(𝔸_E)` (GL2AutomorphicRepresentationsAndTransfer §R17.4.2), independent of
the choice. Prove that for almost all `v`, `Π′_v` (the restriction to `G′`) is the unramified constituent
of the induced representation from `η_v|·|_{E_v}^{1/2} ⊗ η_v|·|_{E_v}^{−1/2}`, where
`σ_{E,v} = Ind(η_v ⊗ η_v⁻¹)`; that is, `Π` has the formal parameter `ψ = σ_E ⊠ Sym¹` (IP23, proof of
Proposition 11.4, pp. 85–86, using Lemmas 6.1 and 9.4). Prove moreover that if `σ_E` is cuspidal it is
conjugate-orthogonal, in the sense that the partial Asai `L`-function `L^S(s, σ_E, As⁺)` has a pole at
`s = 1`, and that otherwise `σ_E = χ ⊞ χ⁻¹` for a character `χ` of `𝔸_E^×/E^×` trivial on `𝔸^×` with
`χ² ≠ 1` (IP23, (11.1) and Lemma 11.1, pp. 79–80). *Proof route:* at unramified places
`As⁺(BC(σ_v)) = Sym²σ_v ⊕ (∧²σ_v ⊗ ξ_{E,v})`, so `L^S(s, σ_E, As⁺) = L^S(s, Sym²σ) ζ_F^S(s)`; the
partial `L^S(s, Sym²σ)` is holomorphic and nonzero at `s = 1` by the adjoint lift and boundary
nonvanishing; in the dihedral case `σ` is the induction of `χ` with `χ^σ ≠ χ`.

**Checks.**

- The base change need not be cuspidal: for `σ = π(χ)` induced from `E` it is `χ ⊞ χ^σ`.
- `τ` itself is a representation of a subgroup and has no `GL₂` transfer; the parameter is read from `σ`.
- `σ` here has central character `ξ_E` and is distinct from the representation `π` of §0.1, which has
  trivial central character.

*Needs:* §§3.2, 6.5, 7.10; GL2AutomorphicRepresentationsAndTransfer §§R17.3.1, R17.4.2, R17.4.13,
R17.4.16 and gap:norm-subgroup-restriction; MetaplecticAutomorphicForms §3.36;
AutomorphicLFunctionsAndLocalFactors AL.3 (Rankin–Selberg nonvanishing on the boundary).

### 8.2 The three cohomological modules of `U(2,2)`

For even `k ≥ 2` let `λ = (k/2 − 1, k/2 − 1, −k/2 + 1, −k/2 + 1)`. Prove that the θ-stable parabolics
`q₀, q₁, q₂` of `U(2,2)` attached to the Weyl representatives `1, (23), (13)(24)` give modules
`A_{q_i}(w_i⁻¹λ)` whose relative Lie algebra cohomology with the dual coefficient is one-dimensional in
`(4,0)` for `q₀`; one-, two- and one-dimensional in `(1,1), (2,2), (3,3)` for `q₁`; one-dimensional in
`(0,4)` for `q₂`; and zero in every other bidegree (IP23, §11.2, pp. 81–83; Proposition 11.2, p. 83). The
computation is the Hermitian bidegree formula of AutomorphicFormsOnReductiveGroups §5.4 applied to
each parabolic.

**Checks.**

- At `k = 2` the three cohomological supports remain distinct.
- For `q₁` the total dimension is `4 = 1 + 2 + 1`, the Poincaré polynomial of `ℙ¹ × ℙ¹`.
- Only `q₁` has cohomology in total degree two.

*Needs:* AutomorphicFormsOnReductiveGroups §§5.2, 5.4.

### 8.3 The negative-similitude involution

Prove that the real similitude `δ` exchanging the two signature blocks of `U(2,2)`, of multiplier `−1`,
interchanges `q₀` and `q₂` and preserves `q₁`; hence passing from the unitary group to the real
similitude group does not create another degree-two type (IP23, Lemma 11.3, p. 83).

**Checks.**

- `δ` exchanges the bidegrees `(4,0)` and `(0,4)`.
- The unique degree-two constituent remains `q₁`.
- `δ²` is a scalar, so `δ` acts on the set `{q₀, q₁, q₂}` by an involution.

*Needs:* §8.2; §5.1.

### 8.4 The rational theta Hecke space

For `S` large and `K` small, let `I` be the kernel of the away-from-`S` Hecke algebra acting on
`Π_f^K`. Define the theta Hecke space as the `ℚ(k)`-subspace
`H^{2d}(Sh_{G̃_B, K}, Ṽ_ρ)[I]` of the cohomology with the coefficient of §5.4, and prove that its
complexification is the sum over the distinct conjugates `Π^γ` of the eigenspaces
`H^{2d}(Sh, Ṽ_{ρ,ℂ})[Π^γ]`, each with the Matsushima description of §0.2 over representations nearly
equivalent to `Π^γ` (IP23, §4.4, pp. 24–25; §11.3, pp. 83–86; proof of Theorem 12.4, p. 99).

- After extension to `ℂ` the rational Hecke kernel decomposes into the distinct conjugate eigenspaces.
- Level pullbacks and normalized traces preserve the theta Hecke space.
- The class `ξ_τ` of §7.2 lies in its complexification, its away-from-`S` eigenvalues being those of
  `Π`.

**Checks.**

- If the Hecke eigencharacter of `Π` is rational, the conjugate orbit has size one.
- A single complex eigenspace with nonrational eigencharacter is not a `ℚ(k)`-subspace.
- A Hecke ideal with no matching eigencharacter gives the zero space.

*Needs:* §§0.2, 5.4, 7.2; ArithmeticLocallySymmetricSpaces §ALS.3.3; AutomorphicFormsOnReductiveGroups
§5.7; GL2AutomorphicRepresentationsAndTransfer §§R16.4.5, R17.3.7.

### 8.5 Degree selection in the theta eigenspace

Prove that `H^{2d}(Sh_K, V_k)[Π^S] = H^{d,d}(Sh_K, V_k)[Π^S]` in relative cochain bidegree: each
`v ∈ Σ` contributes degree two through `q₁` and each real place outside `Σ` degree zero (IP23,
Proposition 11.4 and (11.2), pp. 85–86). *Proof route* (IP23, Remark 11.5, p. 87): by §6.5 every `π`
with `π_v ≃ Π_v` for almost all `v` is a theta lift `θ(τ′)`; at `v ∈ Σ` the archimedean component is a
theta lift of a discrete series of weight `k_v + 1` (MetaplecticAutomorphicForms §3.35, with §8.3), hence
one of `A_{q₀}, A_{q₁}, A_{q₂}`; each split place has degree at least two, so total degree `2d` forces
degree two, that is `q₁` in bidegree `(1,1)`, at every split place. This is a statement about relative
cochain bidegrees; the actual Hodge types are §8.7.

**Checks.**

- The middle-degree `q₁` cohomology in local degree four cannot enter total degree `2d`.
- For `d = 1` the eigenspace is `H^{1,1}` at the split place tensored with `H⁰` at the compact one.
- The route does not use a global classification of automorphic representations of `U(2,2)`-forms.

*Needs:* §§0.2, 6.5, 8.2, 8.3, 8.4; MetaplecticAutomorphicForms §3.35; ArithmeticLocallySymmetricSpaces
§ALS.5b.4 and gap:compact-matsushima.

### 8.6 Hodge types of the coefficient-cohomology summands

For the compact unitary similitude Shimura varieties of this layer and the coefficient `ρ_{v,k}` of
trivial central character, prove that the Hodge decomposition of §0.2 is compatible with the Matsushima
decomposition, and that the part of `H^{p,q}(𝔤′_v, K′_v; π′_v ⊗ ρ′_{v,k})` of fibre bidegree
`(k′ − p, m + p − k′)` can be nonzero only if the centre `Z = {(α, α⁻¹)} ⊂ U(2) × U(2)` acts on the
`K`-type of highest weight `w(Λ + ρ) − ρ` by `λ μ^{−k′}` for some Kostant representative `w` of length
`p`; here `μ(t_α) = α²` is the action on `𝔭⁺`, `λ` the highest character of `Z` in `ρ′_{v,k}`, and
`m = 2k_v − 4` the total fibre weight in the classical normalization. The resulting Hodge type of the
summand is `(p, q) + (k′ − p, m + p − k′)` (the criterion as applied in IP23, proof of Proposition 11.6,
pp. 87–88). Kostant representatives are those of ShimuraData §3.10.

**Checks.**

- For `(p, q) = (1, 1)` and `w⁻¹ = (23)`, `τ_Z(t_α) = α⁻²`, so `k′ = k_v − 1` and the type is
  `(k_v − 1, k_v − 1)`.
- For `(p, q) = (0, 4)` and `w = 1`, `τ_Z(t_α) = α^{2k_v−4}`, so `k′ = 0` and the type is `(0, 2k_v)`.
- A summand in cohomological degree `p + q` has total weight `p + q + m`: `2k_v − 2` for `(1,1)` and
  `2k_v + 2` for `(3,3)`.

*Needs:* §0.2; ShimuraData §§3.1, 3.10, 4.3; AutomorphicFormsOnReductiveGroups §5.4.

### 8.7 Coefficient and cochain Hodge weights

For the `U(2,2)` coefficient at even `k ≥ 2`, prove that the six Kostant contributions at cochain
positions `(0,4), (1,1), (2,2), (2,2), (3,3), (4,0)` have untwisted Hodge types
`(0, 2k), (k−1, k−1), (k, k), (k, k), (k+1, k+1), (2k, 0)`, and that after the unitary normalization
twist `(2−k, 2−k)` the cochain `(1,1)` term has type `(1,1)` for every `k` (IP23, Proposition 11.6,
pp. 87–90).

**Checks.**

- For `k = 4` the cochain `(1,1)` term has type `(3,3)` before the shift and `(1,1)` after it.
- The two middle rows are distinct cochain contributions of the same type `(k, k)`.
- After the shift the extreme rows have types `(2−k, k+2)` and `(k+2, 2−k)`, of total weight four.

*Needs:* §§8.2, 8.5, 8.6; Tau Ceti `TauCeti.Hodge.HodgeStructureOn.tateTwist`.

### 8.8 Purity of the theta Hecke space

Prove that `H^{2d}(Sh_K, V_k)[Π^S]` on the unitary Shimura variety, and its counterpart on the
quaternionic exterior variety, is purely of Hodge type `(d, d)`, that the same holds for every
coefficient conjugate, and hence that after twist `(d)` the whole `ℚ(k)`-rational theta Hecke space of
§8.4 has type `(0,0)` (IP23, Proposition 11.6 and Corollary 11.7, pp. 87–90; proof of Theorem 12.4,
p. 99).

**Checks.**

- Purity is proved on the whole rational Hecke space used in §10.6, not only on one complex eigenspace.
- Compact places contribute type `(0,0)` and each split place type `(1,1)`.
- For `d = 2` the space is of type `(2,2)`, so every rational vector of the twisted space is a Hodge
  class.

*Needs:* §§0.3, 8.4, 8.7; Tau Ceti `TauCeti.Hodge.HodgeStructureOn.tateTwist`.

### Examples

For `d = 1` and `k = 2` the theta eigenspace lies in `H²` of a four-dimensional unitary Shimura variety;
its `q₁` part in cochain bidegree `(1,1)` has Hodge type `(1,1)`, and the shift `(2−k, 2−k)` is trivial.

### Dependencies

Layers 0–7; AutomorphicFormsOnReductiveGroups §§5.2, 5.4, 5.7; ShimuraData §§3.1, 3.10, 4.3;
ArithmeticLocallySymmetricSpaces §§ALS.3.3, ALS.5b.4; MetaplecticAutomorphicForms §§3.35, 3.36;
GL2AutomorphicRepresentationsAndTransfer §§R16.4.5, R17.3.1, R17.3.7, R17.4.2, R17.4.13, R17.4.16;
AutomorphicLFunctionsAndLocalFactors AL.3.

## Layer 9: the conditional Galois calculation

The Kottwitz prediction is stated degree by degree, and only degree `2d` is used. Integer Tate twists
replace formal half-powers before any `ℓ`-adic object is introduced, and a geometric argument upgrades
trivial semisimplification to triviality.

### 9.1 The Kottwitz representation

For the unitary similitude group of §8 the dual group is `GL₄(ℂ) × ℂ^×`, with the nontrivial element of
`Gal(E/F)` acting by `θ̂(g, ν) = (θ₄(g), ν·det g)` (EndoscopicTransferAndUnitaryTraceComparison §1.8;
ReductiveGroupsPartII §RG2.5.2). Define `r` as the contragredient of `⋀²ℂ⁴` with `ν` acting by scalars,
extended to the `L`-group by the unique automorphism `A` with `r(θ̂(g)) ∘ A = A ∘ r(g)` fixing a highest
weight vector; and for `Res_{F/ℚ}` define `r₀ = r^{⊗Σ}` on `V₀ = V^{⊗d}`, extended to `Ĝ₀ ⋊ Γ_{F_Σ}` by
permuting tensor factors with the prescribed local intertwiners. `r₀` is the irreducible representation
of extreme weight `−μ` for the Shimura cocharacter `μ` (IP23, §11.5, pp. 91–93).

- The central coordinate `ν` acts on `V` by `ν⁻¹`.
- `Γ_{F_Σ}` permutes the factors indexed by `Σ`, with the local intertwiners `A`.
- The extreme weight is `−μ`.

**Checks.**

- For `d = 1`, `V₀ = V` has dimension six.
- For `d = 0`, `r₀` is the trivial line.
- Interchanging two one-dimensional extreme-weight factors acts by `+1`: the tensor factors are
  not graded and no Koszul sign enters.
- `r` is `(⋀²std ⊗ ν)^∨`, not `⋀²std`; on the centre `ν` they differ by `ν ↦ ν⁻¹`.

*Needs:* §5.1; ReductiveGroupsPartII §§RG2.5.1–RG2.5.2; EndoscopicTransferAndUnitaryTraceComparison §1.8;
Mathlib `exteriorPower.map`.

### 9.2 The degree-`2d` Kottwitz hypothesis and its lowest line

For `ψ = (σ_E ⊠ Sym¹, 1)` of §8.1, Kottwitz's conjecture for the unitary similitude Shimura variety
predicts that the semisimplification of `H^i_et(Sh_{G̃,K} ⊗ ℚ̄, 𝕍_{k,ℓ})[Π^S]` is a subrepresentation of
copies of the `ℓ`-adic realization of the piece of weight `i − 4d` of `r₀ ∘ ψ₀ ⊗ |·|^{−2d}`, graded by the
diagonal torus of `SL₂` (IP23, §11.5, pp. 91–93). Prove that the lowest piece, of weight `−2d`, is
`(V^{−2})^{⊗d}` with `V^{−2} = |·|^{−1}`, so that its `ℓ`-adic realization is the character `ℚ_ℓ(−d)` of
`Γ_{F_Σ}` (IP23, §11.5, p. 93, the computation behind Proposition 11.9). *Proof route:* with
`W = W₁ ⊕ W₋₁`, `W_{±1} = ρ_E ⊗ |·|^{∓1/2}`, the lowest piece is `⋀²W₋₁ ⊗ |·|^{−2}`, which involves only the
determinant of the two-dimensional part; that determinant is the character attached by class field
theory (ClassFieldTheory Layer 11) to the central character of `σ_E`, which is `ξ_E ∘ N = 1`; the
normalization of `A` by the highest weight vector leaves no quadratic character on the extreme line
(§8.1 supplies the conjugate-orthogonal sign). Define the *degree-`2d` Kottwitz hypothesis* `K_{2d}(Π)`:
for every prime `ℓ`, the semisimplification of the `Γ_{F_Σ}`-representation on
`H^{2d}_et(Sh_{G̃,K} ⊗ ℚ̄, 𝕍_{k,ℓ})[Π^S]` is isomorphic to a subrepresentation of a finite sum of copies of
`ℚ_ℓ(−d)`. It is the degree-`2d` case of the prediction, and it says that the semisimplification of
`H^{2d}_et(…)[Π^S](d)` is trivial (IP23, Proposition 11.9, p. 90).

- In the notation of the proof, `V² = |·|^{−3}`, `V⁰ = |·|^{−2} ⊕ Sym²(ρ)|·|^{−2}` with `ρ` the
  two-dimensional parameter of `σ`, and `V^{−2} = |·|^{−1}`; only `V^{−2}` enters degree `2d`.
- `(V^{−2})^{⊗d} ⊗ |·|^d` is trivial, including its permutation action.
- Kottwitz's conjecture in every degree implies `K_{2d}(Π)`; only degree `2d` is used.

**Checks.**

- An alternating Euler-characteristic identity is not the hypothesis: `K_{2d}(Π)` is a statement about
  the representation in one degree.
- Without the twist `(d)` the prediction is `ℚ_ℓ(−d)`, not the trivial character.
- For `d = 1` the lowest line is one-dimensional inside the six-dimensional `V`.
- The determinant enters through `⋀²W₋₁`, so the half-integral twists `|·|^{1/2}` of the two basis
  vectors combine to the integral twist `|·|`.

*Needs:* §§8.1, 9.1; ClassFieldTheory Layer 11; GlobalNumberFields Layer 10.

### 9.3 De Rham additive characters are unramified

Let `K` be a finite extension of `ℚ_ℓ` and `c : G_K → ℚ_ℓ` a continuous homomorphism. Prove that the
extension of `ℚ_ℓ` by `ℚ_ℓ` defined by `c` is de Rham if and only if `c` is unramified; equivalently
`H¹_g(K, ℚ_ℓ) = H¹_f(K, ℚ_ℓ) = Hom(K^×/𝒪_K^×, ℚ_ℓ)` under local reciprocity (IP23, Remark 11.10, p. 90). For a finite place `v ∤ ℓ` of a number field every continuous
`c : G_{k_v} → ℚ_ℓ` is unramified, since `𝒪_v^×` has no nonzero continuous `ℚ_ℓ`-valued homomorphism.
*Proof route:* a de Rham extension is Hodge–Tate, so the class of `c` dies in `H¹(G_K, ℂ_ℓ)`, which is
spanned by `log χ` (PadicPeriodRings §1.4); by Sen's theory the restriction of `c` to inertia then has
finite image, hence is zero.

**Checks.**

- The cyclotomic logarithm `log χ` is ramified and its extension is not de Rham: the hypothesis cannot
  be dropped.
- The unramified homomorphism `Frob ↦ 1` defines a crystalline, hence de Rham, extension.
- At `v ∤ ℓ` the statement is about all of `H¹`, not only `H¹_f`.

*Needs:* PadicPeriodRings §1.4; PadicHodgeTheory §§3.3, 4.4; SelmerIwasawaCohomology §§2.7, 4.9;
ClassFieldTheory Layers 6–8.

### 9.4 Triviality of geometric unipotent extensions

Let `k` be a number field, `ℓ` a prime and `W` a finite-dimensional `ℚ_ℓ`-representation of `G_k`,
unramified outside finitely many places and de Rham at the places above `ℓ`. Prove that if the
semisimplification of `W` is trivial then `W` is trivial (IP23, Remark 11.10, p. 90). *Proof route:* by
§9.3 a class in `H¹(k, ℚ_ℓ)` that is unramified almost everywhere and de Rham above `ℓ` is unramified
everywhere, so it factors through `𝔸_k^×/k^× k_∞^× 𝒪̂^×`, the finite class group; hence `H¹_g(k, ℚ_ℓ) = 0`.
Induct on the length of `W`, using that subquotients of de Rham representations are de Rham.

**Checks.**

- Without the de Rham hypothesis the cyclotomic logarithm gives a nontrivial unipotent extension of
  `ℚ_ℓ` by `ℚ_ℓ`.
- For `k = ℚ` the class group is trivial and the argument is that `ℚ_ℓ`-valued characters of `G_ℚ` are
  ramified somewhere.
- The statement is false for `ℤ_ℓ`-lattices modulo `ℓ`: a nontrivial unramified extension of `𝔽_ℓ` by
  `𝔽_ℓ` exists when the class number is divisible by `ℓ`.

*Needs:* §9.3; ClassFieldTheory Layer 11; GlobalNumberFields Layers 2, 4; PadicHodgeTheory §3.3 and
gap:derham-local-system-cohomology.

### 9.5 Conditional trivial Galois action

Assume `K_{2d}(Π)`. Prove that for every `ℓ` the full `Γ_{F_Σ}`-representation on
`H^{2d}_et(Sh_{G̃,K} ⊗ ℚ̄, 𝕍_{k,ℓ})[Π^S](d)` is trivial, and that the same holds on the quaternionic
exterior variety and for every coefficient-conjugate summand of §8.4 (IP23, Proposition 11.8 and
Remark 11.10, p. 90; proof of Theorem 12.4, p. 99). *Proof route:* the representation is a subquotient
of geometric cohomology, unramified almost everywhere and de Rham above `ℓ` (§0.2); apply §9.4, then
transport along the central-isogeny comparisons of §0.3.

**Checks.**

- Trivial semisimplification is not substituted for triviality of the representation.
- One hypothesis covers every `ℓ`; no prime-by-prime choice of data enters.
- The twist `(d)` is the integral Tate twist of §0.2.

*Needs:* §§0.2, 0.3, 8.4, 9.2, 9.4.

### Examples

For `d = 1`: `V² = ℚ_ℓ(−3)`, `V⁰ = ℚ_ℓ(−2) ⊕ Sym²(ρ)(−2)` and `V^{−2} = ℚ_ℓ(−1)` correspond to the
cohomology of the four-dimensional unitary variety in degrees `6, 4, 2` (IP23, p. 93), and `K_{2}(Π)`
predicts that `H²[Π^S](1)` has trivial semisimplification.

### Dependencies

Layers 0, 5, 8; ReductiveGroupsPartII §§RG2.5.1–RG2.5.2; EndoscopicTransferAndUnitaryTraceComparison §1.8;
ClassFieldTheory Layers 6–8, 11; GlobalNumberFields Layers 2, 4, 10; PadicPeriodRings §1.4;
PadicHodgeTheory §3.3; SelmerIwasawaCohomology §§2.7, 4.9.

## Layer 10: rational descent and the main theorems

The restriction construction is compatible with every realization and depends bilinearly on a theta
class and a component parameter. Complex invertibility makes a determinant polynomial nonzero;
reciprocity puts the special component character in the invariant rational parameter space, where two
successive rational choices keep the determinant nonzero.

### 10.1 The auxiliary Hilbert representation

Prove that the representation `τ` produced by §7.10 comes from a cohomological cuspidal representation
of `GL₂(𝔸_F)` attached to a holomorphic Hilbert modular form of weights `k_v + 1` and odd algebraic norm
weight `w`, with finite central character `ξ_E`: after the unitary norm twist and Jacquet–Langlands
transfer to `B^×`, its restriction first to `H_∞^+` and then to `H_N^+` contains `τ`, antiholomorphic
above `Σ` and holomorphic outside `Σ` (IP23, §12.2.4, pp. 96–97; §10.2, pp. 65–66). The algebraic weight
convention is GL2AutomorphicRepresentationsAndTransfer §R16.6.3, with `k_τ + 2m_τ = w`.

- The weights `k_v + 1` are odd and admit a common odd `w`.
- After unitary normalization a constituent of the restriction to `H_N^+` is the `τ` of §7.1.
- Coefficient conjugation permutes the weights and gives the conjugate auxiliary systems.

**Checks.**

- If `k_v = 2` the auxiliary weight is three.
- The norm twist changes the algebraic normalization `w` and leaves the unitary discrete-series signs
  unchanged.
- Restriction to positive real norms does not impose the finite idele norm condition; the two
  restrictions are distinct steps.

*Needs:* §7.10; GL2AutomorphicRepresentationsAndTransfer §§R16.4.5, R16.6.3, R17.3.1 and
gap:norm-subgroup-restriction.

### 10.2 The common CM field with a support place

For distinct `B₁, B₂`, prove that there are a finite place `v₀` outside the ramification of `B₁, B₂` and
any given finite set, and a CM quadratic `E/F` ramified at `v₀` and nonsplit at every finite place
ramified in either `B_i`; then `E` embeds in both `B_i`, and small levels can be chosen hyperspecial at
`v₀` while keeping the given finite vectors (IP23, §12.2.1, p. 94; Proposition 10.1, p. 70; proof of
Proposition 12.3, p. 98). *Proof route:* choose `E = F(√δ)` with `δ` negative at every real place, of
odd valuation at `v₀` and a nonsquare unit or uniformizer class at the ramified places, by weak
approximation; apply the embedding criterion.

**Checks.**

- Ramification of `E` at `v₀` is compatible with split `B_i` there and with unramified hyperspecial
  vectors.
- `δ` negative at every real place makes `E` totally imaginary, hence CM.
- A place where `E` splits and `B_i` ramifies would prevent the embedding; the construction excludes it.

*Needs:* §0.4; GlobalNumberFields Layer 1; ClassFieldTheory Layer 10 and
gap:quaternion-ramification-classification; ClassFieldTheory §5.4.

### 10.3 The realization-compatible restriction map

For a level on the exterior variety and a component parameter `c ∈ H⁰(Sh_{H̃_B}, ℚ)`, construct
`Res_c : H^{2d}(Sh_{G̃_B}, Ṽ)(d) → V₁ ⊗_L V₂(d) ≃ Hom_L(V₁, V₂)` as the composite of: pullback to the block
subgroup (§0.3); the rational harmonic coefficient projection (§5.4); multiplication by `c`; the
normalized central trace to the projective quaternionic block group and the level average (§§0.3, 7.3);
pullback from `G` to `B₁^× × B₂^×`; the `L`-rational `π₁ ⊠ π₂` projector; and contraction with chosen
`L`-rational finite vectors (IP23, §§12.2.5–12.2.11, pp. 96–98; proof of Theorem 12.4, p. 99). Prove that
it is `ℚ(k)`-linear in the source and `ℚ`-linear in `c`, with values in the `L`-structure, and that for
`Gal(ℚ̄/F_Σ)`-invariant `c` it is a morphism in every realization over `F_Σ`.

- For `c = c_η` its value on `ξ_τ(d)` is the correspondence constructed analytically in Layer 7.
- `(x, c) ↦ Res_c(x)` is bilinear over `ℚ(k)` after extending the parameter space.
- For invariant `c` the Betti map commutes with every `ℓ`-adic comparison and `Gal(ℚ̄/F_Σ)`-action.

**Checks.**

- For `c = 0` the correspondence is zero.
- In the equal-algebra case the diagonal gives the identity of `V₁` (§0.4).
- Trace to a component outside the image of `Sh_{H̃_B}` contributes zero; it is not an isomorphism
  induced by a surjective covering.

*Needs:* §§0.3, 0.7, 5.3, 5.4, 7.3; MotivesAndAlgebraicCycles §§2.3, 7.15.

### 10.4 Invertibility of the theta correspondence

Prove that there are auxiliary data `(E, τ̃, φ, φ̃, η, K, K₁, K₂, v₁, v₂)` for which
`Res_{c_η}(ξ_τ(d)) : V₁ ⊗ ℂ → V₂ ⊗ ℂ` is an isomorphism; in the sign bases of §0.6 it has a nonzero entry
on each matching pair of lines and no other entries, so its rank is `2^d` (IP23, Proposition 12.3,
p. 98). *Proof route:* §10.2 supplies `E` and `v₀`; Matsushima reduces to relative Lie algebra
cohomology; §7.10 gives the nonzero pairings for every sign; opposite-sign Poincaré duality makes the
operator diagonal.

**Checks.**

- For `d = 1` both diagonal entries are nonzero.
- A single nonzero matrix coefficient would not give an isomorphism.
- The coefficient pairing and the restriction fix the individual signs: off-diagonal entries vanish by
  the `K′`-weights.

*Needs:* §§0.6, 7.10, 10.2, 10.3; ArithmeticLocallySymmetricSpaces §ALS.5b.4 and gap:compact-matsushima.

### 10.5 Galois-invariant component parameters

At a fixed level let `W_ℚ = H⁰(Sh_{H̃_B}, ℚ)^{Gal(ℚ̄/F_Σ)}` for the permutation action on components.
Prove that `c_η ∈ W_ℚ ⊗ ℚ(η)` for `η` of §7.7 (IP23, §4.3, pp. 23–24; proof of Theorem 12.4, p. 99,
with the invariant subspace in place of all rational component classes). *Proof route:* the torus
cocharacter of §5.2 factors through `j : Res_{F/ℚ}𝔾_m → T`, `j(s) = ([s, s], s)`, with reflex field
`F_Σ`; by reflex-norm functoriality (ShimuraVarieties §4.9) the finite reciprocity image lies in
`j(𝔸_{F,f}^×)`; since `η_T(j(s)) = η(s⁻¹) = 1`, reciprocity (§4.3) fixes `η_T`, and pullback along the
map of §5.2 (§8.5) is equivariant; invariants of a finite permutation representation commute with
extension of scalars.

**Checks.**

- The component action need not be trivial; only `c_η` is shown to be fixed.
- `W_ℚ` has the `ℚ`-basis of sums over Galois orbits of components, not individual component classes.
- For `η = 1`, `c_η = 1` lies in `W_ℚ`.

*Needs:* §§5.2, 5.3, 7.7; ShimuraVarieties §§4.2, 4.3, 4.9, 8.5, 8.6.

### 10.6 Rational determinant descent

Let `ℋ` be the theta Hecke space of §8.4, a `ℚ(k)`-space, and `W_ℚ` the space of §10.5, with the finite
data of §10.3 fixed. Prove: the determinant of `Res_c(x)` in `L`-bases of `V₁, V₂` is a polynomial with
coefficients in `L` in the coordinates of `x ∈ ℋ` and `c ∈ W_ℚ`, homogeneous of degree `2^d` in each set;
§10.4 and `c_η ∈ W_ℚ ⊗ ℂ` give a complex point where it is nonzero; hence there are `x ∈ ℋ` and
`c ∈ W_ℚ` at which it is nonzero (IP23, proof of Theorem 12.4, p. 99). *Proof route:* expand the finitely
many `L`-coefficients over a `ℚ(k)`-basis of their span and choose a nonzero coordinate polynomial;
`MvPolynomial.funext` over the infinite field `ℚ(k)` gives `x`, leaving a nonzero polynomial in `c`;
repeat with a `ℚ`-basis to choose `c`. The resulting tensor `ξ₀ = Res_c(x)` has coefficients in `L`, is a
Hodge class by §8.8, and is invertible.

**Checks.**

- Averaging cannot replace the determinant: the Galois average of the invertible `1 × 1` matrix `(i)`
  over `ℚ(i)/ℚ` is `0`.
- The argument needs only that `ℚ(k)` and `ℚ` are infinite; the determinant need not have rational
  coefficients.
- If `d = 0` the determinant is linear in each set of coordinates and the argument reduces to choosing
  one nonzero rational value.

*Needs:* §§8.4, 8.8, 10.3, 10.4, 10.5; Mathlib `MvPolynomial.funext`.

### 10.7 Hodge classes for Jacquet–Langlands

For Jacquet–Langlands Hodge data, prove that there is a class `ξ₀ ∈ V₁ ⊗_L V₂(d)` of Hodge type `(0,0)`
whose correspondence operator (§0.7) is an isomorphism of `L`-Hodge structures `V₁ ≃ V₂` (IP23,
Theorem 12.4(i), pp. 98–99; Theorem 3.2(i), p. 20). The theorem is unconditional; it does not assert that
`ξ₀` is algebraic or absolutely Hodge. *Proof route:* the equal-algebra case is §0.4; otherwise use the
Hodge part of §10.6 and §0.7. For `d = 0` the realizations are rank-one pure of type `(0,0)` and every
nonzero `L`-linear map between them is a Hodge isomorphism. Layer 9 is not used.

**Checks.**

- For `d = 0` the statement is an isomorphism of rank-one weight-zero realizations.
- The class has type `(0,0)` after the twist `(d)`; equal total weights alone would not suffice
  (§0.6).
- The class is `L`-rational: the only enlargement of coefficients is the `π₁ ⊠ π₂` projection, with
  `L ⊃ ℚ(k)`.

*Needs:* §§0.4, 0.7, 10.6; MotivesAndAlgebraicCycles §7.1.

### 10.8 Conditional Hodge–Tate correspondence

Assume `K_{2d}(Π)` (§9.2) for the theta lifts of the construction. Prove that `ξ₀` of §10.7 can be chosen
in `HT(V₁ ⊗_L V₂(d))` (MotivesAndAlgebraicCycles §7.15): a rational Hodge class whose image is
`Gal(ℚ̄/F_Σ)`-fixed in every `ℓ`-adic realization, so that the induced isomorphisms
`V₁ ⊗ ℚ_ℓ ≃ V₂ ⊗ ℚ_ℓ` are `Gal(ℚ̄/F_Σ)`-equivariant for all `ℓ` simultaneously (IP23, §12.1, pp. 93–94;
Theorem 12.4(ii), pp. 98–99; Theorem 3.2(ii), p. 20). `HT` is the compatible-realization notion, not
the local `p`-adic Hodge–Tate condition. *Proof route:* the same rational data as §10.6 with `c ∈ W_ℚ`;
the realization-compatible map of §10.3 and the triviality of §9.5.

**Checks.**

- One class works for every `ℓ`; no `ℓ`-dependent choice of `ξ₀` is allowed.
- A class fixed for one `ℓ` only does not give equivariance at the others.
- Without `K_{2d}(Π)` the statement is not asserted.

*Needs:* §§9.5, 10.3, 10.6, 10.7; MotivesAndAlgebraicCycles §7.15.

### 10.9 The rational weight-two correspondence

When every `k_v = 2` and `ℚ(π) = ℚ`, prove that the coefficient systems are constant and that the class
of §10.7 is represented by a Hodge class `ξ ∈ H^{2d}(X₁ × X₂, ℚ)_{π₁⊠π₂}` for suitable levels such that
`x ↦ p₂,*(ξ(d) ∪ p₁^* x)` is an isomorphism of `ℚ`-Hodge structures `H^d(X₁, ℚ)_{π₁} ≃ H^d(X₂, ℚ)_{π₂}`;
under `K_{2d}(Π)`, `ξ(d)` is `Gal(ℚ̄/F_Σ)`-invariant in every `ℓ`-adic realization and the induced maps
are `Gal(ℚ̄/F_Σ)`-isomorphisms (IP23, Theorem 1(i)–(ii) and (1.4)–(1.5), p. 5). The finite-level
representation factors are kept when passing from multiplicity spaces to isotypic parts.

**Checks.**

- For real quadratic `F` and `d = 1`, the class lies in `H²(X₁ × X₂, ℚ)(1)` and acts on `H¹`.
- Every harmonic degree `ℓ_v = k_v − 2` is zero, so the Schwartz forms are the Kudla–Millson forms
  with trivial coefficients.
- The isotypic part at level `K` is `V_i ⊗ (π_{i,f})^K`; the correspondence is the tensor of §10.7 with
  the identity on the finite factor.

*Needs:* §§0.7, 10.7, 10.8; MotivesAndAlgebraicCycles §§2.2–2.3, 2.6–2.7.

### Examples

For `F` real quadratic, `d = 1`, parallel weight two and `ℚ(π) = ℚ`: `V₁, V₂` are rank-two `ℚ`-Hodge
structures of type `(1,0) + (0,1)`, `ℋ` is the `ℚ`-space `H²(Sh, ℚ)[I]` of type `(1,1)`, and §10.6 picks
`x ∈ ℋ` and an invariant component sum `c` with `det Res_c(x) ≠ 0` on the `2 × 2` matrix.

### Dependencies

Layers 0–9; MotivesAndAlgebraicCycles §§2.2–2.3, 2.6–2.7, 7.1, 7.15; ShimuraVarieties §§4.2, 4.3, 4.9, 8.5,
8.6; GL2AutomorphicRepresentationsAndTransfer §§R16.4.5, R16.6.3, R17.3.1; GlobalNumberFields Layer 1;
ClassFieldTheory Layer 10 and §5.4; ArithmeticLocallySymmetricSpaces §ALS.5b.4; Mathlib
`MvPolynomial.funext`.

## Downstream consumers

The Hermitian exterior construction of Layers 1–2 and the operator `L` of `IsExteriorStar` are general
inputs for any treatment of `U(2,2)`-type exceptional isomorphisms and quaternionic theta pairs. The
realization targets §§0.2–0.3 serve roadmaps on the cohomology of compact Shimura varieties with
coefficients, in particular HilbertModularVarietiesAndShimuraCurves for quaternionic varieties with an
arbitrary split set `Σ` and AutomorphicBundles for coefficient realizations; the Hodge-type criterion of
§8.6 and the local statement of §9.3 serve the same directions. The end theorems §§10.7–10.9 are the
input for questions about algebraicity of the Jacquet–Langlands class and period relations between
quaternionic forms.

## Worked examples

**The normalized Hodge calculation.** The six Kostant contributions of §8.7, in the classical and the
unitary normalization:

| Relative cochain position | Geometric type, fibre weight `2k−4` | Type after shift `(2−k, 2−k)` |
| --- | --- | --- |
| `(0,4)` | `(0, 2k)` | `(2−k, k+2)` |
| `(1,1)` | `(k−1, k−1)` | `(1,1)` |
| `(2,2)`, first | `(k, k)` | `(2,2)` |
| `(2,2)`, second | `(k, k)` | `(2,2)` |
| `(3,3)` | `(k+1, k+1)` | `(3,3)` |
| `(4,0)` | `(2k, 0)` | `(k+2, 2−k)` |

For `k = 4` the degree-two term is `(3,3)` before the shift and `(1,1)` after it, which excludes
identifying cochain indices with Hodge types before the coefficient shift. In total degree `2d` each
`v ∈ Σ` has local degree at least two, so exactly two, and compact places have degree zero; every
coefficient-conjugate summand of §8.4 is of type `(d,d)`.

**Component reciprocity.** At a fixed level the Galois action on components is a finite permutation
action, so `W_ℚ` has the basis of orbit sums and `W_ℚ ⊗ ℚ(η)` is the invariant subspace of
`H⁰ ⊗ ℚ(η)`. The torus cocharacter factors through `j(s) = ([s, s], s)`, the reciprocity image lies in
`j(𝔸_{F,f}^×)`, and `η_T(j(s)) = 1`; so `c_η` is fixed although other component functions can move.

**Rational descent.** With bases, `Res_c(x)` is a `2^d × 2^d` matrix with `L`-entries bilinear in the
coordinates of `x` and `c`; its determinant is nonzero at the complex point `(ξ_τ, c_η)`. Choosing `x`
over `ℚ(k)` and then `c` over `ℚ` by polynomial nonvanishing keeps it nonzero; averaging an invertible
matrix would not.

## Notes on the source

The statements above use the following readings of IP23 (published version), each checked against the
surrounding argument.

- §2.1, p. 14: an `L`-Hodge structure is read as a rational Hodge structure with `L`-action, since
  complex conjugation does not preserve a nonreal embedding of `L`; in the application `L` is totally
  real.
- §3.2, p. 19: the multiplicity realization is concentrated in degree `d`; the page prints `2d`.
- The rotated diagram, p. 22: the rank-one group on the quaternionic side is `U_B`, as in §2.5.
- §4.3, p. 24: the component set is not identified with the torus Shimura variety; only the morphism to
  the torus datum and pullback of its functions are used (§§5.2–5.3), since the derived group is not
  simply connected.
- §4.3, p. 24: the character is the full idele-class character `η` of `𝔸_E^×/E^×𝔸^×`, evaluated on
  general ideles (§5.3).
- Proposition A.1(i), p. 101: both denominator values of the cocycle quotient use the local section
  `s_v`.
- Proof of Proposition 11.6, p. 88: the `(1,1)` row has untwisted type `(k−1, k−1)`; the displayed pair
  lacks a closing delimiter.
- Proof of Theorem 12.4, p. 99: the component parameter is taken in the Galois-invariant subspace
  `W_ℚ` (§10.5), since reciprocity can permute components.

## References

- [IP23] Atsushi Ichino and Kartik Prasanna, *Hodge classes and the Jacquet–Langlands
  correspondence*, Forum of Mathematics, Pi 11 (2023), e22, pp. 1–135,
  [doi:10.1017/fmp.2023.20](https://doi.org/10.1017/fmp.2023.20). Locators are to the printed pages
  of the published, open-access version; the arXiv version 1806.10563v2 has different page numbers.
