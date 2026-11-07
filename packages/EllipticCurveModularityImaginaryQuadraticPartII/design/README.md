# Roadmap: modularity of elliptic curves over imaginary quadratic fields, Part II: all CM fields

**Summary.** Every elliptic curve over every CM number field is modular, with the same automorphic
conclusion as the parent roadmap EllipticCurveModularityImaginaryQuadratic: a weight-zero isobaric
representation of `GL₂(𝔸_K)` with trivial central character realizing `H¹(E_K̄, Q̄_ℓ)` for every
coefficient prime and coefficient isomorphism, full Weil–Deligne compatibility at every finite
place away from the coefficient prime, agreement of every finite local factor, the expected complex
parameters and `L(E/K, s) = L(π_E, s − 1/2)`. The parent proves this for imaginary quadratic `K` by a
geometric prime switch: a family of cyclic covers connects a quadratic twist `B_t` of `E` to an
auxiliary elliptic curve `A_t` through congruences at `p`, `3`, `p` over `F = K(μ₃ₚ)`. Over an
arbitrary CM field two things change. First, `ζ₅ ∉ K` no longer forces `ζ₅ ∉ F`, so the auxiliary
curve is made modular over `K` before the cyclotomic base change (Layers 1–2). Second, when
`ζ₅ ∈ K` the residual image `SL₂(𝔽₅)` of `A_t[5]` is exactly the configuration excluded from the
Caraiani–Newton lifting theorem; it is recovered by a lifting theorem at `p = 5` that keeps one
*protected* place, where residual inertia is a nontrivial unipotent and the lift is unipotently
ramified (Layers 3–6), together with a degeneration of the cover family that produces such a place
on `A_t` (Layer 7). The endpoints are **Theorem 2.5** (all CM fields with `ζ₅ ∉ K`, using only the
published lifting theorems imported through the parent), **Theorem 6.2** (the protected lifting
theorem at five, for an arbitrary representation) and **Theorem 8.1** (all CM fields).

## Scope and ownership

**Where the parent stops.** EllipticCurveModularityImaginaryQuadratic ends at
`imaginary_quadratic_modularity` (§8.6). Its section *Downstream consumers and boundaries* places
other CM fields outside its scope and records the field `ℚ(ζ₁₅ + ζ₁₅⁻¹, i)`, over which `ζ₅ ∉ K` but
`ζ₅ ∈ K(ζ₃)`. In the parent the imaginary-quadratic hypothesis enters through the ramification
proof `cyclotomic_switch_field` of `ζ₅ ∉ F` (§5.1) and through the specialized statements of
§§8.2–8.6. Its Layers 1–4, Layer 6 and §§7.2–7.4 are stated over arbitrary number fields; its
§0.3 outputs, §5.2 `potentiallySemistableCM` and §5.3 `cm_modularity` are stated over arbitrary CM
fields. This roadmap starts exactly there.

**Owned here.**

- Layer 1: CM-ness of every intermediate field of a cyclotomic extension of a CM field, and the
  descent of decomposed genericity and cyclotomic absolute irreducibility along a finite extension
  of number fields.
- Layer 2: the auxiliary curve made modular over `K` before base change when `ζ₅ ∉ K`; the three
  lifts, the descent along `F/K` and the removal of the twist over an arbitrary CM field; the full
  local comparison and the CM branch over an arbitrary CM field; the endpoint for `ζ₅ ∉ K`.
  Theorems 2.2–2.4 are the parent's §§8.3–8.6 over an arbitrary CM base; the parent states them for
  imaginary quadratic `K` only, and their proofs are applied here, not repeated.
- Layer 3: the adjoint representation of `SL₂` and the detection of the exceptional class of
  `H¹(SL₂(𝔽₅), ad⁰)` by an order-five unipotent subgroup; protected local residual data, their
  unipotent-inertia deformation condition, its tangent line and its dual.
- Layer 4: the vanishing on protected places of the exceptional global classes, Taylor–Wiles primes
  at `p = 5` for residual image `SL₂(𝔽₅)` with a protected place, and the relative presentation in
  which protected places are not framed.
- Layers 5–6: Hecke-valued Galois representations at Iwahori level on the protected places, the
  prepared lifting theorem and the general Steinberg-protected lifting theorem over CM fields at
  `p = 5`. Theorem 5.3 is CrystallineLocalGlobalCompatibilityCM §§9.7 and 9.9 with the protected
  places added to the Iwahori places; Theorem 6.1 is the preparation of its §9.11 with the
  protected places kept split.
- Layer 7: the width-three multiplicative degeneration of `A_t`, the auxiliary-prime local opens,
  the switch at five with retained auxiliary places (the parent's §0.3 `switch_five` with finitely
  many further retained places), and the modular auxiliary curve over a CM field containing `μ₅`.
- Layer 8: the headline over every CM field.

**Imported, never re-planned.** The parent supplies the cover family, its degenerations, integral
monodromy, character systems and congruences (Layers 1–4), Serre's large-prime theorem (§5.1),
`potentiallySemistableCM` (§5.2), `cm_modularity` (§5.3), the independent seed, `switch_five` and
`modular_elliptic_all_coefficients` (§0.3), the local opens (Layer 6), the simultaneous
specialization (§§7.1–7.4), the change of coefficient prime and automorphic local types (§8.1)
and the local and CM arguments of §§8.5–8.6. CrystallineLocalGlobalCompatibilityCM supplies the
integral local–global compatibility, non-neat `PGL₂` complexes, prepared patching and the solvable
preparation (§§7.5, 8.1–8.7, 9.1–9.11). The deformation-theoretic, automorphic and arithmetic
carriers come from the suppliers listed below.

**Outside this roadmap.** Totally real fields (they use the totally real lifting theorems and are a
separate roadmap); number fields that are neither CM nor totally real; abelian varieties of
`GL₂`-type; the exceptional modular-curve analysis of Caraiani–Newton §7
(ModularityAndLanglandsExtensions §2.30); height-density statements (ModularityAndLanglandsExtensions
§2.29).

**Lean.** `Suggested.lean` states no theorem, and its module docstring says why. The headline
theorems are Theorem 2.5 (modularity over CM fields not containing `ζ₅`), Theorem 6.2 (the
protected lifting theorem at five) and Theorem 8.1 (modularity over every CM field), and none is
statable against the pinned Mathlib and Tau Ceti. Theorems 2.5 and 8.1 need automorphic
representations of `GL₂(𝔸_K)` over a number field `K` with their attached `ℓ`-adic Galois
representations `r_ι(π)`, local Langlands parameters and `L`-functions; Theorem 6.2 needs these and,
in addition, potentially semistable `5`-adic representations of local Galois groups with their
labelled Hodge–Tate weights. Neither pinned library has any of these carriers. The field-theoretic,
finite-group and local statements of Layers 1 and 3 are ingredients of the proofs, not headlines,
and are specified here as mathematics with their Checks.

**Status of the sources.** Layers 3–7 follow CaptainSude26, an unrefereed pseudonymous manuscript;
Layer 2 follows LeHung26, a discussion draft; the parent follows OpenAI26. Theorem 2.5 uses as
lifting inputs only Caraiani–Newton's Theorems 5.2 and 6.1, through the parent's §§5.2–5.3.
Theorem 8.1 uses Layers 3–7 only for fields containing `ζ₅`. The local and finite-group statements
of Layer 3 are proved by explicit computations recorded in their Checks.

## Conventions

- `K` is a CM number field: a totally imaginary quadratic extension of its maximal totally real
  subfield `K⁺`, in Mathlib's sense `NumberField.IsCMField`; `c` is complex conjugation and `v^c` the
  conjugate of a finite place `v`. `E/K` is an elliptic curve `y² = h(x)` with separable cubic `h`.
- The parent's notation is kept: `p > 100` is the prime of the parent's §7.2 (general number-field
  form), `n = 3p`, `F = K(μ_n)`, `U ⊂ 𝔸¹_K` is `switchParameterOpen`, `B_t: h(t)y² = h(x)`,
  `C_m(t)` the cyclic covers, `w` the reflection, `A_t = Pic⁰(C₃(t)/⟨w⟩)`, `V_θ` the character
  systems, `η, ψ` characters of orders `3, p` and `χ = ηψ`. A *switch parameter* is a
  `t ∈ U(K)` produced by the parent's §7.4 `simultaneous_specialization` for a finite set of places
  containing those above `3p`, lying in the opens of the parent's §6.5 `local_type_opens` at every
  place above `3p`.
- Cohomological normalization as in the parent: `H¹` is étale `H¹`, its determinant is `ε_ℓ⁻¹`,
  `HT(ε_ℓ) = −1`, Frobenius in compatible systems is geometric and `rec^T(π_v) = rec(π_v ⊗ |det|^(−1/2))`.
  The residual representation of `H¹(A)` is the dual of `A[ℓ]`; dualizing inverts both eigenvalue
  ratios, so decomposed genericity (AutomorphicGaloisRepresentationsPartII AG2.7,
  `IsDecomposedGeneric`) and absolute irreducibility pass between the two.
- *Modular* has the parent's meaning: for geometrically non-CM `E`, a cuspidal regular algebraic
  weight-zero `π` of `PGL₂(𝔸_K)` (a cuspidal `π` of `GL₂(𝔸_K)` with trivial central character) with
  `r_ι(π) ≅ H¹(E_K̄, Q̄_ℓ)` for one, hence every, `(ℓ, ι)`; for geometrically CM `E`, the induction or
  isobaric sum of its Hecke characters as in Theorem 2.4.
- Local computations away from the coefficient prime `p` use the coefficient-`p` tame quotient
  `ℤ_p(1) ⋊ Ẑ` of `G_{F_v}` (LocalGaloisDeformationRings §2.6), with a topological generator `τ` of
  inertia and an *arithmetic* Frobenius lift `φ`, related by `φτφ⁻¹ = τ^(q_v)`. Witness: for
  `q_v = 11` and `U = [[1,1],[0,1]]` over `𝔽₅`, `U¹¹ = U`, so a scalar residual Frobenius is
  compatible with residual inertia `U` exactly because `11 ≡ 1 mod 5`; for `q_v = 7` one needs
  `ρ̄(φ)Uρ̄(φ)⁻¹ = U⁷ = [[1,2],[0,1]]`, which a scalar cannot achieve, whereas the geometric Frobenius
  `φ⁻¹` would conjugate `U` to `U³`, since `7⁻¹ ≡ 3 mod 5`.
- `ad⁰` is the space of trace-zero `2×2` matrices with the conjugation action, basis
  `e = E₁₂`, `h = diag(1, −1)`, `f = E₂₁`. For `U = 1 + e` and `D = Ad(U)`:
  `D(e) = e`, `D(h) = h − 2e`, `D(f) = f + h − e`. The trace form `⟨X, Y⟩ = tr(XY)` has Gram matrix
  `[[0,0,1],[0,2,0],[1,0,0]]` in this basis, of determinant `−2`; it identifies `ad⁰` with its dual in
  every odd characteristic and is degenerate in characteristic two.
- For a `G_F`-module `M` over a field of characteristic `p`, `M(1) = M ⊗ μ_p`. When `μ_p ⊂ F`, a choice
  of primitive `ζ_p` identifies `M(1) ≅ M`. Unramified classes are
  `H¹_ur(F_v, N) = ker(H¹(F_v, N) → H¹(I_v, N)) = H¹(G_{F_v}/I_v, N^(I_v))`.
- Relative dual Selmer groups follow GlobalGaloisDeformations §3.6: for a framing set `T ⊆ S`
  containing the places above `p`, the dual group imposes `L_v^⊥` at `v ∈ S ∖ T` and **no** condition
  at `v ∈ T`.
- The condition "every element of `ρ(I_v)` has characteristic polynomial `(X − 1)²`" is the
  *unipotent-inertia condition*; CaptainSude26 calls it the Steinberg condition. At a protected place
  it is the minimally ramified condition (Theorem 3.4). It is distinct from the Steinberg lifts of
  LocalGaloisDeformationRings §2.5, which are defined for trivial residual data.
- `Iw_v ⊂ PGL₂(O_{F_v})` is the Iwahori subgroup of matrices upper triangular modulo `ϖ_v`. `O` is the
  ring of integers of a finite extension of `ℚ₅` (of `ℚ_p` in Layer 3) with uniformizer `ϖ` and
  residue field `k`; `CNL_O` is the category of complete Noetherian local `O`-algebras with residue
  field `k`.

## Exact supplier contracts

### From Mathlib

Pin `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`.

- `NumberField.IsCMField` (`Mathlib/NumberTheory/NumberField/CMField.lean`): a characteristic-zero
  field that is totally complex and quadratic over `maximalRealSubfield`. With it
  `NumberField.IsCMField.complexConj` and `NumberField.IsCMField.isConj_complexConj` (it induces
  complex conjugation through every complex embedding), `NumberField.IsCMField.ofCMExtension` (a
  totally complex quadratic extension of a totally real field is CM),
  `NumberField.IsCMField.of_isAbelianGalois` and `IsCyclotomicExtension.Rat.isCMField`. The file has no statement about composita or subfields
  of CM fields; Theorem 1.1 supplies the one needed.
- `IsCyclotomicExtension` (`Mathlib/NumberTheory/Cyclotomic/Basic.lean`) and `IsPrimitiveRoot`.
- `NumberField.isTotallyComplex_of_algebra`
  (`Mathlib/NumberTheory/NumberField/InfinitePlace/TotallyRealComplex.lean`): an extension of a
  totally complex field is totally complex.
- `LieAlgebra.SpecialLinear.sl` (`Mathlib/Algebra/Lie/Classical.lean`): trace-zero matrices, as the
  kernel of the trace. It carries no group action; §3.1 adds the conjugation representation.
- `Rep.ofDistribMulAction` (`Mathlib/RepresentationTheory/Rep/Basic.lean`): the representation of a
  monoid acting distributively and compatibly with scalars.
- `groupCohomology` and `groupCohomology.map`
  (`Mathlib/RepresentationTheory/Homological/GroupCohomology/Functoriality.lean`): the map
  `Hⁿ(H, A) → Hⁿ(G, B)` induced by `f : G →* H` and a morphism `res f A ⟶ B`; restriction to a
  subgroup is the case of its inclusion and the identity morphism.
- `Rep.FiniteCyclicGroup.groupCohomologyIsoOdd`
  (`Mathlib/RepresentationTheory/Homological/GroupCohomology/FiniteCyclic.lean`): for a finite
  commutative group generated by `g`, odd-degree cohomology is `ker N / im(ρ(g) − 1)`.
- `Matrix.SpecialLinearGroup` (`SL(2, ZMod 5)`) and `Matrix.SL2.commutator_eq_top`
  (`Mathlib/LinearAlgebra/Matrix/SpecialLinearGroup.lean`): perfectness of `SL₂(k)` for `#k ≥ 4`.

### From Tau Ceti

Pin `2fd255d997f47c0b5d834ee416c7015d55444ce5`.

- `TauCeti.ClassFieldTheory.eulerCharacteristic_mixed`
  (`TauCeti/NumberTheory/ClassFieldTheory/Local/EulerCharacteristic/Theorem.lean`): for a finite
  extension `F` of `ℚ_ℓ` and a finite smooth discrete `ZMod n`-module `A`,
  `#H¹ = #H⁰ · #H² · ℓ^([F:ℚ_ℓ]·v_ℓ(#A))`; for `#A` prime to `ℓ` the last factor is `1`.
- `TauCeti.ClassFieldTheory.tateDualityPairing_perfect_mixed`
  (`TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/Perfect.lean`): the local Tate pairing between
  `Hⁱ` of the Tate dual and `Hʲ`, `i + j = 2`, is perfect for finite smooth discrete modules.

### From TauCetiRoadmap.EllipticCurveModularityImaginaryQuadratic

- §0.2 `fixed_pairing_twist`, `fixed_pairing_twist_rational`: the twisted fixed-pairing curve
  `Y_ρ̄` and its identification with an open of `ℙ¹` after preparation.
- §0.3 `solvable_preparation`, `hilbert_local_selection`, `seed_modular`, `switch_five`,
  `modular_elliptic_all_coefficients` with its components `automorphic_unique`,
  `automorphic_all_primes`, `automorphic_wd` and `automorphic_potentially_multiplicative_ordinary`,
  and `auxiliary_local_types`; all over an arbitrary CM field.
- §1.1 `switchParameterOpen`, §1.3 `cyclicCover` and the reflection, §2.1 `boundary_regular_model`,
  §2.2 `compactTypeModel` and `compact_type_jacobian`, §2.3 `nodalModel`.
- §4.1 `characterSystem`, `character_system_properties`; §4.2 `cubic_character_elliptic`,
  `auxiliaryEllipticCurve`, `trivial_character_twist`; §4.4 `prime_switch_congruences`.
- §5.1 `nonCM_elliptic_large_residual_primes`; §5.2 `potentiallySemistableCM` (over any CM field, with
  its `p = 5` projective-field clause); §5.3 `cm_modularity` (over any CM field not containing `ζ₅`).
- §6.1 `finite_torsion_locally_constant`, §6.3 `local_reduction_constancy`, §6.5 `local_type_opens`,
  §6.6 `character_local_types`.
- §7.1 `switchCoefficient` and `character_regular_word`; §7.2 the general number-field prime
  choice; §7.4 `simultaneous_specialization`, including the inclusion of the geometric monodromy in
  the specialized image of `G_D` and the non-CM conclusion.
- §8.1 `character_automorphy_change_prime`, `character_automorphic_local_type`; §8.3 the lifting
  table; §8.4 the twist identity `B_t ⊗ χ_(h(t)) ≅ E` on `H¹`; §8.5 `complexInfinityParameter` and the
  local-factor arguments of `elliptic_full_local_comparison`; §8.6 the argument of
  `cm_elliptic_realization`.

### From TauCetiRoadmap.CrystallineLocalGlobalCompatibilityCM

§7.5 (local–global compatibility at `p` through deformation rings, CN Theorem 4.2.15); §§8.2–8.5
(two-system patching data, propagation of automorphic components and support); §8.6 (Galois
representations for `PGL₂` over CM fields, including the non-neat to neat comparison); §8.7
(perfectness at non-neat level when `ζ_p ∈ F`); §9.1 (the prepared data (1)–(15)); §9.4 (prepared
level and unitary parabolics); §9.5 (the problems `𝒮_χ`); §9.6 (patching complexes, CN Lemma 5.6.4);
§9.7 and §9.9 (Hecke-valued representations satisfy `𝒮_χ` and `𝒮_{χ,Q}`); §9.8 (Taylor–Wiles
problems); §9.10 (prepared lifting and the weight-zero rational comparison `q₀ = l₀ = [F⁺:ℚ]`);
§9.11 (solvable preparation). Clause (15) of §9.1 enters the prepared lifting proof of CN only
through Taylor–Wiles selection (CN23 line 4404); Layer 4 replaces that step.

### From other roadmaps

- **PotentialAutomorphyInfrastructure** §2.1 (`genericity_normal_closure_restriction`), §2.3
  (`soluble_base_change_and_descent`, over CM or totally real fields, with all-place local
  compatibility), §2.5 (`auxiliary_cm_extension_prescriptions`, CM refinement of prescribed
  completions).
- **AutomorphicGaloisRepresentationsPartII** AG2.0 (algebraic characters and reciprocity), AG2.5
  (local comparison away from the coefficient prime), AG2.7 (`IsDecomposedGenericPrime`,
  `IsDecomposedGeneric`).
- **AutomorphicGaloisRepresentations** §3.13 (geometric characters and algebraic Hecke characters),
  used by the CM branch.
- **AbelianSchemesAndArithmeticModuli** A6 (endomorphism actions on realizations), used by the CM
  branch.
- **PotentialModularityAndCompatibleSystems** §§2.12–2.16 (Frobenius primes, avoidance, prescribed
  completions).
- **GL2ModularityLifting** §1.7 (`cht_soluble_prescribed_completions`, CHT Lemma 4.1.2).
- **GL2AutomorphicRepresentationsAndTransfer** R16.3.2 (Steinberg parameters), R17.4.16 (quadratic
  automorphic induction).
- **GlobalGaloisDeformations** §3.4 (framed global rings, `n²|T| − 1` frame variables), §3.6
  (relative tangent space and dual Selmer group with framing set `T`), §3.7 (presentations),
  §5.1 (Taylor–Wiles data), §5.5 (`Δ_Q`-structure), §5.6 (shared Chebotarev selection).
- **LocalGaloisDeformationRings** §1.10 (fixed determinant), §2.3 (minimally ramified lifts), §2.6
  (the `q`-tame group), §2.8 (the minimally ramified ring), §2.15 (character-type rings), §2.16
  (Taylor–Wiles tangent dimension), §2.21 (unipotent lifts of regular unipotent residual monodromy are
  minimal), §3.14, §§4.14–4.15 and §6.6 (Barsotti–Tate and ordinary rings at `p`).
- **DeformationAndDerivedPatchingAlgebra** §§8.1–8.5 (simultaneous patching).
- **ArithmeticGaloisDuality** R02.2 (inflation–restriction, Hochschild–Serre), R02.4.2 (the local Tate
  pairing and the counting proof that unramified classes are exact annihilators).
- **ArithmeticGaloisRepresentations** §4.3 (subgroups of `PSL₂`, perfectness), §6.3 (the Tate curve:
  `E_q[ℓ^n]` unramified iff `ℓ^n | v(q)`, unipotent inertia, `WD ≅ Sp(2)`), §7.7 (restriction to a
  subgroup containing a Sylow subgroup is injective on `H¹`; `H¹(SL₂(𝔽₅), ad⁰)` is one-dimensional;
  change of coefficient field).
- **FaltingsFinitenessAndIsogenyTheorems** R28.6.2–R28.6.3 (semisimplicity and the Tate Hom
  comparison for elliptic curves; absolute irreducibility of `H¹` of a non-CM curve over every finite
  extension).
- **NeronModelsAndSemistableAbelianVarieties** §3.1 (toric rank), §3.12 (full level forces
  semistability), §5.1 (Néron–Ogg–Shafarevich).
- **EllipticCurves** Layer 4 (reduction types, minimal discriminants, the Tate curve with
  `v(Δ) = v(q)` and `j(q) = 1/q + 744 + ⋯`) and Layer 5 (quadratic twists).
- **ClassFieldTheory** Layer 5 (local duality and Euler characteristic) and Layer 11 (global
  reciprocity, used to turn a quadratic Galois character into a Hecke character).
- **SchemeAndStackFoundations** §§4.13 and 4.18 (regular models and nodal families), used by §7.1.
- **Chebotarev** Layer 10 (density), through GlobalGaloisDeformations §5.6.

### Supplier obligations

What AutomorphicGaloisRepresentationsPartII must provide (gap:acc-torsion-inertial-comparison): a
statement in its Layer AG2.5 of ACC Theorem 3.1.1, the torsion local–global compatibility for
`GL_m` at Iwahori places away from `p`. The setting is that of ACC23 §3.1 (lines 2309–2345): a CM
field `F` containing an imaginary quadratic field, with every `p`-adic place of `F⁺` split in `F`; a
good level `K`; a finite conjugation-stable set `S` of finite places containing those above `p`,
with the conditions there on residue characteristics outside `S`; a subset `R ⊆ S` of places prime
to `p`, each with residue characteristic split in an imaginary quadratic subfield, such that
`Iw_{v,1} ⊆ K_v ⊆ Iw_v` for `v ∈ R` and `K_v = GL_m(O_{F_v})` for `v ∈ R^c ∖ R`; and a non-Eisenstein
maximal ideal `𝔪`. The statement gives an integer `N` depending only on `m` and `[F:ℚ]`, an ideal
`I_R` with `I_R^N = 0` in the localized Hecke algebra generated together with the torus operators
`t_{v,i}(σ)` at `R`, and a continuous representation of `G_{F, S ∖ (R^c ∖ R)}` over the quotient
whose Frobenius characteristic polynomials outside `S ∖ (R^c ∖ R)` are the Hecke polynomials `P_v`
and whose characteristic polynomial at every `σ ∈ W_{F_v}`, `v ∈ R`, is the torus polynomial
`P_{v,σ}` (ACC23, Theorem 3.1.1, lines 2346–2355). Theorem 5.3 needs it with `m = 2`.
PotentialAutomorphyInfrastructure and CrystallineLocalGlobalCompatibilityCM §9.7 (and §9.9 through it)
consume the same statement as AG2.5, whose text states characteristic-zero comparisons only.

## How to read the build

Layer 1 adds two lemmas the libraries lack: CM-ness of the fields between a CM field and its
cyclotomic extensions, and descent of the residual hypotheses of the lifting theorems along finite
extensions. Layer 2 runs the parent's switch over an arbitrary CM field: given an automorphic seed
for `V_η` over `F`, the three lifts and the descent give `E`; when `ζ₅ ∉ K` the seed comes from the
parent's residual criterion over `K` followed by base change, which proves Theorem 2.5. Layers 3–6
build the lifting theorem at five with a protected place: the finite-group and local computations
(Layer 3), the global Galois cohomology and Taylor–Wiles primes (Layer 4), the Hecke algebras and
prepared patching (Layer 5) and the solvable preparation and descent (Layer 6). Layer 7 produces a
protected place on the auxiliary curve from a width-three degeneration of the cover family, retains
it through the switch at five and proves the auxiliary curve modular when `μ₅ ⊂ K`. Layer 8 combines
Layers 2 and 7 into the headline. Layers 1–2 are independent of Layers 3–7.

## Layer 1: Cyclotomic CM fields and descent of residual hypotheses

### 1.1 Intermediate fields of a cyclotomic extension of a CM field

Prove: let `K` be a CM number field, `S` a set of positive integers and `L/K` a finite extension
with `IsCyclotomicExtension S K L`. Then every intermediate field `K ⊆ E ⊆ L` is a CM field; in
particular `L` is CM. The route: `L` is the composite of `K` with a cyclotomic field `ℚ(μ_m)` inside
`L`, which is CM or `ℚ` (`IsCyclotomicExtension.Rat.isCMField`); a composite of CM fields is CM,
because each complex embedding induces the same complex conjugation on the composite (MilneCM,
Proposition 1.4 and Corollary 1.5, p. 10). For `E` between `K` and `L`: `E` is totally complex
because it contains `K` (`NumberField.isTotallyComplex_of_algebra`). The Galois closure `L̃` of `L`
over `ℚ` is CM (MilneCM, Corollary 1.5), and its complex conjugation `ι` is central in `Gal(L̃/ℚ)`:
for an embedding `φ : L̃ → ℂ` and `σ ∈ Gal(L̃/ℚ)`, `φ ∘ σ` is again an embedding, so
`φ ∘ σισ⁻¹ = conj ∘ φ = φ ∘ ι` (`NumberField.IsCMField.isConj_complexConj`) and `σισ⁻¹ = ι` because `φ`
is injective (MilneCM, Proposition 1.4(b) and the uniqueness of complex conjugation noted after it,
p. 10, lines 273–290). Hence `ι` normalizes `Gal(L̃/E)` and preserves `E`; its fixed field in `E` is
totally real and `E` is quadratic over it, so `NumberField.IsCMField.ofCMExtension` applies. This is
the fact used when descending along `F/K` through intermediate fields (LeHung26, Lemma 5.1, p. 9).

*Needs:* Mathlib `NumberField.IsCMField`, `NumberField.IsCMField.ofCMExtension`,
`NumberField.IsCMField.complexConj`, `NumberField.IsCMField.isConj_complexConj`,
`IsCyclotomicExtension`, `IsCyclotomicExtension.Rat.isCMField`,
`NumberField.isTotallyComplex_of_algebra`.

**Checks.**

- For `K = ℚ(i)` and `L = ℚ(ζ₂₀)`, `Gal(L/K) ≅ (ℤ/5)ˣ` is cyclic of order four; the intermediate
  fields are `ℚ(i)`, `ℚ(i, √5)` and `ℚ(ζ₂₀)`, and the middle one is CM with maximal real subfield
  `ℚ(√5)`.
- The subfield `ℚ(√5)` of `ℚ(ζ₂₀)` is totally real, not CM: the statement concerns fields containing
  `K`, and fails for arbitrary subfields of `L`.
- For `S = {1, 2}` the extension is trivial, `L = K`, and the statement reduces to `K` being CM.
- For `K = ℚ(√−3)` and `S = {4}`, `L = ℚ(ζ₁₂)` is abelian over `ℚ`, and the conclusion agrees with
  `NumberField.IsCMField.of_isAbelianGalois`.

### 1.2 Descent of residual hypotheses along a finite extension

Let `K ⊆ F` be number fields with `F/K` finite, `k` a finite field of characteristic `ℓ` and
`r̄ : G_K → GL_n(k)` continuous. Prove: (a) if a rational prime `q` is a decomposed-generic prime for
`r̄|G_F` in the sense of AutomorphicGaloisRepresentationsPartII AG2.7, then `q` is a
decomposed-generic prime for `r̄`; in particular `r̄|G_F` decomposed generic implies `r̄` decomposed
generic; (b) if `r̄|G_{F(ζ_ℓ)}` is absolutely irreducible then so is `r̄|G_{K(ζ_ℓ)}`. For (a): `q` is
completely split in `F`, hence in `K`; for `v | q` in `K` and `w | v` in `F` one has `F_w = K_v = ℚ_q`,
so the decomposition groups coincide, `r̄|G_{K_v} = (r̄|G_F)|G_{F_w}` is unramified with the same
Frobenius eigenvalues and `q_v = q_w = q`. Part (b) holds because `G_{F(ζ_ℓ)} ⊆ G_{K(ζ_ℓ)}`.
(LeHung26, §4.4, last sentences of "All conjugates", lines 318–321.)

*Needs:* AutomorphicGaloisRepresentationsPartII AG2.7 (`IsDecomposedGenericPrime`,
`decomposedGenericPrime_local`); ArithmeticGaloisRepresentations Layer 1 (decomposition groups).

**Checks.**

- For `K = F = ℚ` the statement is the identity.
- The converse fails: the trivial representation `1 ⊕ 1` over `𝔽₃` is decomposed generic over `ℚ`
  with witness `2` (ratio `1 ≠ 2 ≡ 2⁻¹ mod 3`), but over `ℚ(ζ₃)` every completely split prime is
  `≡ 1 mod 3`, so the ratio `1` equals `q` modulo three and no witness exists.
- A prime that is split in `K` but not completely split in `F` is not a witness for `r̄|G_F`; the
  descent uses complete splitting in the larger field.

### Examples

Let `K₆₀ ⊂ ℚ(ζ₆₀)` be the fixed field of `{1, 29} ⊂ (ℤ/60)ˣ`, that is `ℚ(ζ₁₅ + ζ₁₅⁻¹, i)`: `a ≡ ±1 mod 15`
and `a ≡ 1 mod 4` force `a ∈ {1, 29}`. It has degree eight and is CM, being abelian over `ℚ` and
containing `i`. It does not contain `ζ₅`, since `29 ≢ 1 mod 5`. Since also `29 ≢ 1 mod 3`, the fixed
group of `K₆₀(ζ₃)` is trivial, so `K₆₀(ζ₃) = ℚ(ζ₆₀) ∋ ζ₅`, and `ζ₅ ∈ K₆₀(μ₃ₚ)` for every `p`
(LeHung26, Remark 4.2, line 352). Over `K₆₀` the parent's order (seed over `F`) is unavailable, while
Theorem 2.1 applies.

### Dependencies

Mathlib's CM-field and cyclotomic API; AutomorphicGaloisRepresentationsPartII AG2.7.

## Layer 2: The switch over an arbitrary CM field

### 2.1 The auxiliary curve made modular before base change

Let `K` be a CM field with `ζ₅ ∉ K`, `E/K` geometrically non-CM, and `t ∈ U(K)` a switch parameter
(Conventions). Prove: (a) the residual representation of `H¹(A_t)` modulo five is decomposed generic
over `K` and absolutely irreducible on `G_{K(ζ₅)}`, and `A_t` is geometrically non-CM; (b) `A_t` is
modular over `K`: there is a cuspidal weight-zero `π_A` of `PGL₂(𝔸_K)` realizing `H¹(A_t)` at every
`(ℓ, ι)`; (c) `F/K` is finite abelian, `F` is CM, and the base change `π_{A,F}` is a cuspidal
weight-zero representation of `PGL₂(𝔸_F)` with `r_ι(π_{A,F}) ≅ V_η` under the parent's identification
`V_η ≅ H¹(A_t)|G_F`. No assertion `ζ₅ ∉ F` is made or used.

For (a), the parent's §7.4(1) for the pair `(3, 5)` gives absolute irreducibility on `G_{F(ζ₅)}` and
decomposed genericity over `F` of the residual `V_η`, and §7.4(3) gives non-CM; transport to `H¹(A_t)`
by §4.2 and descend to `K` by Theorem 1.2. For (b), apply the parent's §5.3 `cm_modularity` over
`L = K` with `ℓ = 5`, then §0.3 `modular_elliptic_all_coefficients`. For (c), `F` is CM by
Theorem 1.1, `H¹(A_t)|G_F` is absolutely irreducible because `A_t` is non-CM, and
PotentialAutomorphyInfrastructure §2.3(1) gives the cuspidal base change with
`r_ι(π_{A,F}) ≅ H¹(A_t)|G_F`. (LeHung26, §4.5(1), line 336, and §4.6, lines 342–355; CN23,
Theorem 6.1, line 4513.)

*Needs:* Theorems 1.1, 1.2; EllipticCurveModularityImaginaryQuadratic §§4.2, 5.3, 7.4, 0.3
(`modular_elliptic_all_coefficients`); PotentialAutomorphyInfrastructure §2.3;
FaltingsFinitenessAndIsogenyTheorems R28.6.2–R28.6.3.

**Checks.**

- Over `K₆₀` (Layer 1 Examples), `ζ₅ ∉ K₆₀` while `ζ₅ ∈ F`, so `cm_modularity` applies over `K₆₀` and
  not over `F`.
- For imaginary quadratic `K` the hypotheses hold and `ζ₅ ∉ F` also holds by the parent's §5.1, so
  the parent's order and this one give the same `π_{A,F}` by strong multiplicity one.
- If `A_t` had CM, its base change could be non-cuspidal (PotentialAutomorphyInfrastructure §2.3,
  second Check); the non-CM conclusion of §7.4(3) is what makes `π_{A,F}` cuspidal.

### 2.2 Three lifts, descent and removal of the twist over a CM field

Let `K` be a CM field (`ζ₅ ∈ K` allowed), `E/K` geometrically non-CM and `t ∈ U(K)` a switch
parameter. Suppose one member of `V_η` is realized by a cuspidal weight-zero representation `π_η` of
`PGL₂(𝔸_F)`. Prove that `E` is modular over `K`: there is a cuspidal weight-zero `π_E` of
`PGL₂(𝔸_K)` with `r_ι(π_E) ≅ H¹(E_K̄, Q̄_ℓ)` for one `(ℓ, ι)`.

The route is the parent's §8.3 table, applied over `F`, which is CM by Theorem 1.1. Change the
coefficient prime of `π_η` to `p` (§8.1 `character_automorphy_change_prime`). Lift
`V_η → V_χ` at `p`, `V_χ → V_ψ` at `3` and `V_ψ → V₁` at `p` with §5.2 `potentiallySemistableCM`,
changing the coefficient prime after each row. Determinant, weights, finite ramification and
potential semistability come from §4.1; the residual isomorphisms from §4.4; residual absolute
irreducibility on `G_{F(ζ_ℓ)}` and decomposed genericity over `F` from §7.4(1)–(2); the local
alternatives at every place above `ℓ` from §6.6 and §8.1 `character_automorphic_local_type`. The
lifting primes are `3` and `p > 100`, so the five-adic projective-field clause of §5.2 never applies.
This gives a cuspidal weight-zero realization of `V₁ = H¹(B_t)|G_F`. Since `B_t` is a quadratic twist
of the non-CM `E`, `H¹(B_t)|G_F` is absolutely irreducible, and PotentialAutomorphyInfrastructure
§2.3(2) descends it along the soluble CM extension `F/K` to `π_B` realizing `H¹(B_t)`. Finally
`H¹(E) ≅ H¹(B_t) ⊗ χ_(h(t))` (the parent's §8.4), and `π_E = π_B ⊗ (χ_(h(t)) ∘ Art_K⁻¹)` has trivial
central character since `χ_(h(t))² = 1`. (LeHung26, §4.3, line 292, the table of §4.6, lines 344–351,
and Lemma 5.1, line 357; CaptainSude26, Proposition 6.2, line 634; OpenAI26, Proposition 9.3 and
Lemma 9.4, pp. 26–27.)

*Needs:* Theorem 1.1; EllipticCurveModularityImaginaryQuadratic §§4.1, 4.4, 5.2, 6.6, 7.4, 8.1, 8.3,
8.4; PotentialAutomorphyInfrastructure §2.3; FaltingsFinitenessAndIsogenyTheorems
R28.6.2–R28.6.3; EllipticCurves Layer 5; ClassFieldTheory Layer 11.

**Checks.**

- The middle lift is at `3` with residual input from the order-`p` characters (§7.4 pair `(p, 3)`);
  replacing it by a lift at `5` would require the five-adic projective-field clause, which can fail
  when `ζ₅ ∈ F`.
- If `h(t)` is a square in `K`, `χ_(h(t))` is trivial and `π_E = π_B`; twisting twice by
  `χ_(h(t))` returns `π_B`.
- At a quadratic step of the descent the two descents differ by the quadratic character of the step;
  PotentialAutomorphyInfrastructure §2.3(2) selects the one realizing `H¹(B_t)` itself.

### 2.3 All coefficient primes, local factors and complex parameters over a CM field

Let `K` be a CM field and `E/K` geometrically non-CM and modular. Prove: the realizing `π_E` is
unique up to isomorphism, has trivial central character and realizes `H¹(E_K̄, Q̄_ℓ)` for every
`(ℓ, ι)`; for every finite `v ∤ ℓ`,
`ι WD(H¹(E_K̄, Q̄_ℓ)|G_{K_v})^(F-ss) ≅ rec^T(π_{E,v})`, including the monodromy operator; every finite
local factor agrees with that of `E`, including at places above `ℓ`; at each of the `[K⁺:ℚ]` complex
places the archimedean parameter of `π_E` is the parent's `complexInfinityParameter`
`z ↦ diag(z/|z|, conj(z)/|z|)`; and `L(E/K, s) = L(π_E, s − 1/2)`. The first assertions are the
parent's §0.3 `modular_elliptic_all_coefficients` over the CM field `K`; the factors at `v | ℓ`, the
complex parameter and the `L`-function identity follow by the arguments of the parent's §8.5, which
use only the realization and the local reduction type. (OpenAI26, §9.4, pp. 27–28; CN23, Lemma 6.1.3,
line 4545.)

*Needs:* EllipticCurveModularityImaginaryQuadratic §0.3 (`modular_elliptic_all_coefficients`), §8.5
(`complexInfinityParameter` and the local-factor arguments); GL2AutomorphicRepresentationsAndTransfer
R16.3.2.

**Checks.**

- At a split multiplicative place the local factor has degree one and `N` has rank one; at a
  potentially good place with nontrivial inertia the factor is `1`; at a good place it has degree two.
  Weil semisimplification alone cannot distinguish the first two.
- For `K = ℚ(ζ₈)` there are two complex places, and each carries the same parameter; at `z = i` it is
  `diag(i, −i)`, of trace zero and determinant one.
- At a good place with `q = 4`, `a = 4` the cohomological polynomial is `T² − 4T + 4` and the unitary
  Satake roots are both `1`, fixing the direction of the shift `s − 1/2`.

### 2.4 Curves with complex multiplication over a CM field

Let `K` be a CM field and `E/K` geometrically CM by the imaginary quadratic field `M`. Prove: the
endomorphisms are defined over `KM`; `H¹(E)|G_{KM}` is the sum of the realizations of two algebraic
Hecke characters `θ, θ'` of `KM`; if `M ⊆ K` then `E` is realized by the isobaric sum `θ ⊞ θ'` over
`K`, which is not cuspidal; if `M ⊄ K` then `E` is realized by the quadratic automorphic induction
`AI_{KM/K}(θ)`, which is cuspidal because `θ` and its conjugate have different infinity types. In both
cases the central character is trivial in the unitary normalization, the representation has weight
zero, its local parameters agree with those of `E` at every finite place, and
`L(E/K, s) = L(π_E, s − 1/2)`. The argument is the parent's §8.6 over the CM base `K`. (OpenAI26, §9.4,
pp. 27–28; LeHung26, §5, lines 364–366; CaptainSude26, proof of Theorem 1.1, lines 676–683.)

*Needs:* EllipticCurveModularityImaginaryQuadratic §8.6; AutomorphicGaloisRepresentations §3.13;
AutomorphicGaloisRepresentationsPartII AG2.0; AbelianSchemesAndArithmeticModuli A6;
GL2AutomorphicRepresentationsAndTransfer R17.4.16.

**Checks.**

- Over `K = ℚ(ζ₈) ⊇ ℚ(i)`, the curve `y² = x³ − x` has CM by `ℚ(i) ⊆ K` and uses the isobaric sum.
- Over the same `K`, `y² = x³ + 1` has CM by `ℚ(√−3) ⊄ ℚ(ζ₈)` and uses induction from `ℚ(ζ₂₄)`; the
  statement "every CM curve is noncuspidal over a CM field" is false.
- Geometric CM is a condition over `K̄`: `y² = x³ − x` over `ℚ(√−3)` has no `K`-rational CM but is
  geometrically CM and is treated here, by induction.

### 2.5 Modularity over CM fields not containing ζ₅

Prove: let `K` be a CM field with `ζ₅ ∉ K`. Then every elliptic curve `E/K` is modular, with all the
conclusions of Theorem 2.3 if `E` is geometrically non-CM and of Theorem 2.4 if it is geometrically CM.
For non-CM `E`, choose a switch parameter `t`; Theorem 2.1(c) supplies `π_η = π_{A,F}`, Theorem 2.2
gives modularity and Theorem 2.3 the remaining assertions. Its lifting inputs are the parent's §§5.2
and 5.3, that is CN23 Theorems 5.2 and 6.1. (LeHung26, Theorem 1.1, line 86, with the proof of §4.6,
line 342, and Lemma 5.1, line 357.)

*Needs:* Theorems 2.1, 2.2, 2.3, 2.4; EllipticCurveModularityImaginaryQuadratic §7.4.

**Checks.**

- For imaginary quadratic `K` this is the parent's `imaginary_quadratic_modularity`.
- `K = ℚ(ζ₅)` contains `ζ₅` and is excluded; Theorem 8.1 covers it.
- Over `K₆₀` the theorem applies although `ζ₅ ∈ K₆₀(μ₃ₚ)`.

### Examples

Over `K = ℚ(√−1, √2)`, a non-CM curve with reducible mod-`3` and mod-`5` images is still covered: the
auxiliary curve, not `E`, supplies the residual hypotheses at five, over `K`. Over `K₆₀` the seed is
modular over `K₆₀` and its base change to `F` is the starting point of the chain.

### Dependencies

Layer 1; EllipticCurveModularityImaginaryQuadratic Layers 1–8 as listed in the supplier contracts;
PotentialAutomorphyInfrastructure §2.3; FaltingsFinitenessAndIsogenyTheorems R28.6.2–R28.6.3;
GL2AutomorphicRepresentationsAndTransfer R16.3.2 and R17.4.16; AutomorphicGaloisRepresentations
§3.13; AutomorphicGaloisRepresentationsPartII AG2.0; AbelianSchemesAndArithmeticModuli A6;
EllipticCurves Layer 5; ClassFieldTheory Layer 11.

## Layer 3: Finite-group and local cohomology at a protected place

### 3.1 The adjoint representation of SL₂

Define the adjoint representation `ad⁰` of `SL(2, k)`, for a field `k`, as the representation on
the trace-zero matrices `LieAlgebra.SpecialLinear.sl (Fin 2) k` by `g · X = g X g⁻¹`, built with
`Rep.ofDistribMulAction`. (CaptainSude26, Lemma 3.1, line 187.)

- Conjugation by an element of `SL(2, k)` preserves trace zero, is `k`-linear and multiplicative in
  `g`; the action of `g` on `X` is the matrix product `g X g⁻¹`.
- The central element `−1` acts trivially, so the representation factors through `PSL₂(k)`.
- For `k` of odd characteristic the trace form `⟨X, Y⟩ = tr(XY)` is a nondegenerate invariant
  symmetric form, identifying the representation with its dual.
- A field embedding `k → k'` identifies the base change to `k'` of `ad⁰` over `k` with the
  restriction of `ad⁰` over `k'` along `SL(2, k) → SL(2, k')`.
- For `k` of odd characteristic the invariants vanish: a trace-zero matrix commuting with
  `U = [[1,1],[0,1]]` and its transpose is zero.

**Checks.**

- For `U = [[1,1],[0,1]]` the action on `e, h, f` is `e ↦ e`, `h ↦ h − 2e`, `f ↦ f + h − e`; left
  multiplication `X ↦ UX` is not the definition, since `Uf = f + E₁₁` has trace one.
- The identity and `−1` act as the identity; the action of `diag(2, 3) ∈ SL(2, 𝔽₅)` scales `e` by
  `2/3 = 4`, `f` by `3/2 = 4` and fixes `h`.
- In characteristic two the trace form has `⟨h, h⟩ = 2 = 0` and Gram determinant `−2 = 0`, so the
  self-duality API needs odd characteristic.
- Over `𝔽₅`, `(Ad(U) − 1)³ = 0` and `Ad(U)⁵ = 1`, while `(Ad(U) − 1)² ≠ 0` since it sends `f` to `−2e`.

### 3.2 The exceptional class of SL₂(𝔽₅) is detected by a unipotent subgroup

Prove: for `U = [[1,1],[0,1]] ∈ SL(2, 𝔽₅)` and its cyclic subgroup `⟨U⟩` of order five, restriction
`H¹(SL(2, 𝔽₅), ad⁰) → H¹(⟨U⟩, ad⁰)` is bijective, both groups being one-dimensional over `𝔽₅`,
and the target is spanned by the class corresponding to `f` under
`Rep.FiniteCyclicGroup.groupCohomologyIsoOdd`. The same holds after extending scalars to any field
`k ⊇ 𝔽₅`, and for every subgroup of order five of `SL(2, 𝔽₅)`, these being conjugate. Injectivity is
restriction to a Sylow subgroup of index `24`, invertible in `𝔽₅` (ArithmeticGaloisRepresentations
§7.7); the source is one-dimensional by ArithmeticGaloisRepresentations §7.7; for the target, the norm
`1 + D + ⋯ + D⁴` of `D = Ad(U)` is `5 + 10(D − 1) + 10(D − 1)²`, which vanishes in characteristic five,
so `H¹(⟨U⟩, ad⁰) = ad⁰ / (D − 1)ad⁰ = ad⁰ / (k e ⊕ k h)`, spanned by the class of `f`.
(CaptainSude26, Lemma 3.3, lines 231–241.)

*Needs:* §3.1; Mathlib `groupCohomology.map`, `Rep.FiniteCyclicGroup.groupCohomologyIsoOdd`;
ArithmeticGaloisRepresentations §7.7.

**Checks.**

- Over `𝔽₇` the same restriction is injective but not surjective: `H¹(SL(2, 𝔽₇), ad⁰) = 0` by
  ArithmeticGaloisRepresentations §7.7, while `H¹` of the order-seven unipotent subgroup is still
  one-dimensional. Bijectivity is special to five.
- Over `𝔽₃` the norm of `Ad(U)` is `(D − 1)²`, nonzero, and `ker N = k e ⊕ k h = (D − 1)ad⁰`, so
  `H¹(⟨U⟩, ad⁰) = 0`: an order-three unipotent detects nothing.
- Restriction to the order-three subgroup generated by `[[0,−1],[1,−1]]` is zero on `H¹`, since its
  order is invertible in `𝔽₅`; detection needs the Sylow-five subgroup.

### 3.3 Protected local residual data

Let `p` be an odd prime, `F_v` a finite extension of `ℚ_ℓ` with `ℓ ≠ p`, `k` a finite field of
characteristic `p` and `ρ̄ : G_{F_v} → GL₂(k)` continuous. Define `ρ̄` to be *protected* if `ρ̄(I_v)` is
nontrivial and consists of unipotent matrices. (CaptainSude26, Lemma 3.1, lines 177–183, and the
paragraph after Lemma 5.1, lines 533–536.)

- `ρ̄|I_v` is trivial on the kernel of `I_v → ℤ_p(1)` and factors through the coefficient-`p` tame
  quotient of LocalGaloisDeformationRings §2.6; `ρ̄(I_v)` is cyclic of order `p`, generated by
  `ρ̄(τ)`, and in a suitable basis `ρ̄(τ) = U = [[1,1],[0,1]]`.
- In that basis `ρ̄(φ)` is upper triangular with diagonal entries of ratio `q_v`, since
  `ρ̄(φ) U ρ̄(φ)⁻¹ = U^(q_v)`; if `q_v ≡ 1 mod p`, `ρ̄(φ) = a(1 + bE₁₂)`, and when `b ∈ 𝔽_p` a change of
  tame lift `φ ↦ φτ^x` makes `ρ̄(φ)` scalar.
- The condition is preserved by restriction to `F'_w/F_v` of ramification index prime to `p`, by
  unramified twists and by duality; it is destroyed when `p` divides the ramification index.

**Checks.**

- For a split Tate curve `E_q/F_v` with `p ∤ v(q)`, `E_q[p]` and its dual are protected:
  ArithmeticGaloisRepresentations §6.3 gives inertia acting by `[[1, v(q)·t_p(σ)],[0,1]]`.
- For `p | v(q)` the module `E_q[p]` is unramified, hence not protected; for
  `q = ϖ_v⁵` and `p = 5` this is the case.
- Over `𝔽₅` with `q_v = 11`, let inertia act through a tame quotient of order three, a generator
  mapping to `M = [[0, −1],[1, −1]]`, and let a Frobenius lift map to `Φ = [[4, 1],[0, 1]]`. Then
  `M³ = 1`, `ΦMΦ⁻¹ = [[4, 1],[4, 0]] = M⁻¹ = M¹¹`, as the tame relation requires since `11 ≡ 2 mod 3`,
  and `M` has characteristic polynomial `X² + X + 1`; inertia is nontrivial and not unipotent, so `ρ̄`
  is not protected. A diagonal model `diag(ζ₃, ζ₃⁻¹)` does not exist over `𝔽₅`, whose unit group has order
  four; it needs `𝔽₂₅`.
- After a base change of ramification index five, residual inertia becomes `U⁵ = 1`: protection is
  lost.

### 3.4 The unipotent-inertia condition at a protected place

Let `ρ̄` be protected, `ψ : G_{F_v} → O×` an unramified character lifting `det ρ̄`, `A ∈ CNL_O` and
`ρ_A : G_{F_v} → GL₂(A)` a lift of `ρ̄` with determinant `ψ`. Prove that the following are equivalent:
(i) `ρ_A(σ)` has characteristic polynomial `(X − 1)²` for every `σ ∈ I_v`; (ii)
`(ρ_A(τ) − 1)² = 0`; (iii) `ρ_A` is minimally ramified in the sense of LocalGaloisDeformationRings
§2.3. These lifts form a local deformation problem whose framed ring with determinant `ψ` is formally
smooth of relative dimension three, `R^{□,ψ,uni}_v ≅ O[[x₁, x₂, x₃]]`, and every such lift satisfies
`q_v (tr ρ_A(φ))² = (1 + q_v)² ψ(φ)`. The route: the kernel of `I_v → ℤ_p(1)` is a profinite group of
order prime to `p` on which `ρ̄` is trivial, so `ρ_A` maps it into the pro-`p` kernel of reduction and
hence trivially; thus `ρ_A|I_v` factors through `⟨τ⟩`.
By Cayley–Hamilton `N = ρ_A(τ) − 1` satisfies `N² = tr(N) N − det(N)`; a residually nonzero
off-diagonal entry is a unit, so (ii) forces `tr N = det N = 0` and conversely. In the basis
`(N e₂, e₂)`, `N = E₁₂`, and the relation `ρ_A(φ) N ρ_A(φ)⁻¹ = q_v N` forces
`ρ_A(φ) = [[q_v δ, z],[0, δ]]` with `δ² = ψ(φ)/q_v` and `δ` the unique square root lifting the residual
one. Residually this basis is `(e₁, e₂)`, in which `ρ̄(τ) = U`, so `z` lifts the upper-right entry `z̄`
of `ρ̄(φ)` in that basis. The free parameters are the entries `a ∈ 𝔪_A`, `b − 1 ∈ 𝔪_A` of
`N = [[a, b],[−a²/b, −a]]` and `z − [z̄] ∈ 𝔪_A`, with `[z̄] ∈ O` the Teichmüller lift; these are the
three coordinates `x₁, x₂, x₃`. (CaptainSude26, Lemma 3.1, lines 184–220.)

*Needs:* §3.3; LocalGaloisDeformationRings §§1.10, 2.3, 2.6, 2.8, 2.21.

**Checks.**

- Over `O[ζ₅]`, `ρ(τ) = [[ζ₅, 1],[0, ζ₅⁻¹]]` reduces to the protected `U` but has characteristic
  polynomial `(X − ζ₅)(X − ζ₅⁻¹) ≠ (X − 1)²`: residual protection does not imply the condition.
- For `q_v = 11`, `δ = 1` and `z = 0`, `ρ(φ) = diag(11, 1)` gives `11 · 12² = 1584 = 12² · 11`, the
  rank-two Steinberg Frobenius relation of LocalGaloisDeformationRings §2.5.
- The first-order lift with `ρ(τ) = (1 + εf)U` has trace `2 + ε` and violates (i); the lift with
  `ρ(τ) = (1 + εh)U` has trace `2` and determinant `1` and satisfies it.
- For `k = 𝔽₂₅`, `q_v = 11`, `ρ̄(τ) = U` and `ρ̄(φ) = 1 + ζE₁₂` with `ζ ∈ 𝔽₂₅ ∖ 𝔽₅`, `ρ̄(φ)` commutes
  with `U = U¹¹`, so `ρ̄` is protected and `z̄ = ζ ≠ 0`. No change of tame lift removes it: `φ ↦ φτ^x`
  replaces `ζ` by `ζ + x` with `x ∈ 𝔽₅`. The third coordinate is `z − [ζ]`; the coordinate `z` itself
  is a unit on every lift.

### 3.5 The tangent line and its dual

Let `ρ̄` be protected, `M = ad⁰ρ̄` over `k`, and `L_v ⊆ H¹(F_v, M)` the image of the tangent space of the
framed ring of §3.4. Prove: (a) `L_v = H¹_ur(F_v, M)` and `dim_k L_v = h⁰(F_v, M)`, which is `1` if
`q_v ≡ 1 mod p` and `0` otherwise; (b) under the local Tate pairing between `H¹(F_v, M)` and
`H¹(F_v, M(1))` (via the trace form), the annihilator `L_v^⊥` is `H¹_ur(F_v, M(1))`; (c) if
`μ_p ⊂ F_v`, then `h⁰ = h² = 1`, `h¹ = 2`, and under `M(1) ≅ M` the line `L_v` is its own annihilator;
(d) if `p ≥ 5`, `ρ̄(τ) = U` and `ρ̄(φ) = 1`, recording cocycle values on `(τ, φ)`,
`H¹(F_v, M) = k[(f, 0)] ⊕ k[(0, e)]` and `L_v = k[(0, e)]`. For (a): unramified first-order lifts keep
`ρ̄|I_v` and so satisfy §3.4(i), giving `H¹_ur ⊆ L_v`; the framed ring of §3.4 has tangent dimension
three, so `dim L_v = 3 − (3 − h⁰) = h⁰`; and `dim H¹_ur = dim (M^(I_v))_φ = h⁰`. For (b): cup products of
unramified classes are inflated from `H²(Ẑ, −) = 0`, and the orders
`#H¹(M) = #H⁰(M) · #H⁰(M(1))` (`TauCeti.ClassFieldTheory.eulerCharacteristic_mixed`,
`TauCeti.ClassFieldTheory.tateDualityPairing_perfect_mixed`) and `#H¹_ur(N) = #H⁰(N)` show the two
orthogonal subgroups are complementary; this is the counting argument of ArithmeticGaloisDuality
R02.4.2 without its hypothesis that `M` be unramified. (CaptainSude26, Lemmas 3.1–3.2, lines 187–226.)

*Needs:* §§3.1, 3.4; LocalGaloisDeformationRings §2.8; Tau Ceti
`TauCeti.ClassFieldTheory.eulerCharacteristic_mixed`,
`TauCeti.ClassFieldTheory.tateDualityPairing_perfect_mixed`; ArithmeticGaloisDuality R02.4.2;
ClassFieldTheory Layer 5.

**Checks.**

- With `μ₅ ⊂ F_v`: `M^(I_v) = k e`, so `h⁰ = 1`, `h² = h⁰(M(1)) = 1`, and the Euler characteristic gives
  `h¹ = 2`. Without `μ₅`, for `q_v ≡ 2 mod 5`, `φ` scales `e` by `2`, so `h⁰ = 0` and `L_v = 0`.
- In (d) the relation `φτφ⁻¹ = τ^(q_v)` forces `(D − 1)c(φ) = 0` because `1 + D + ⋯ + D^(q_v − 1) = 1`
  when `5 | q_v − 1`; so `c(φ) ∈ k e`, `c(τ)` is free modulo `(D − 1)M = k e ⊕ k h`, and
  `dim H¹ = 4 − 2 = 2`.
- The ramified class `(f, 0)` is not in `L_v` (trace condition of §3.4(i)) and pairs nontrivially with
  `(0, e)`: a nonzero class with nonzero restriction to inertia fails the dual condition.

### Examples

For a split Tate curve over `ℚ₁₁` with `v(q) = 1` and `p = 5`, residual inertia is `U`, residual
Frobenius is `[[1, b],[0,1]]` with `b ∈ 𝔽₅`, the unipotent-inertia ring is smooth of relative
dimension three, `H¹(ℚ₁₁, ad⁰ρ̄)` is two-dimensional and the unramified line is self-annihilating.

### Dependencies

Mathlib group cohomology and `LieAlgebra.SpecialLinear.sl`; Tau Ceti local duality and Euler
characteristic; ArithmeticGaloisRepresentations §§6.3, 7.7; ArithmeticGaloisDuality R02.4.2;
LocalGaloisDeformationRings §§1.10, 2.3, 2.6, 2.8, 2.21; ClassFieldTheory Layer 5.

## Layer 4: Global Galois cohomology at five with a protected place

### 4.1 Exceptional classes ramify at protected places

Let `F` be a number field with `μ₅ ⊂ F`, `k` a finite field of characteristic five, `ρ̄ : G_F → GL₂(k)`
continuous with image conjugate in `GL₂(k̄)` to `SL₂(𝔽₅)`, `M = ad⁰ρ̄`, `L` the field cut out by `ρ̄`,
`C_N = F(μ_(5^N))`, and `v ∤ 5` a place at which `ρ̄|G_{F_v}` is protected. Prove: a class
`κ ∈ H¹(G_F, M)` whose restriction to `G_{LC_N}` vanishes for some `N ≥ 1` and whose restriction to
`G_{F_v}` is unramified is zero. Consequently, for a finite set `S` and any subspace of
`H¹(G_{F,S}, M(1))` whose classes satisfy the dual condition `L_v^⊥` of §3.5 at `v`, restriction to
`G_{LC_N}` is injective. The route: `L ∩ C_N = F` because `SL₂(𝔽₅)` is perfect and `C_N/F` abelian;
inflation–restriction identifies the kernel of restriction to `G_{LC_N}` with
`H¹(Gal(LC_N/F), M) ≅ H¹(SL₂(𝔽₅), ad⁰ ⊗ k)`, the `Gal(C_N/F)`-part contributing `Hom(−, M^(SL₂)) = 0`;
`C_N/F` is unramified at `v`, so `I_v` maps onto an order-five subgroup of `SL₂(𝔽₅) × {1}`; by §3.2 a
nonzero class restricts nontrivially to it, and inflation to `I_v` is injective, so `κ|G_{F_v}` would
be ramified. (CaptainSude26, Lemma 3.3, lines 227–241.)

*Needs:* §§3.2, 3.3, 3.5; ArithmeticGaloisDuality R02.2; ArithmeticGaloisRepresentations §4.3
(perfectness via Mathlib `Matrix.SL2.commutator_eq_top`).

**Checks.**

- Without a protected place the statement fails: the inflation of a nonzero class of
  `H¹(SL₂(𝔽₅), ad⁰)` vanishes on `G_L` and is unramified wherever `ρ̄` is.
- At a place where `ρ̄(I_v)` has order two, every class of `H¹(SL₂(𝔽₅), ad⁰)` restricts to zero on
  `ρ̄(I_v)`, so such a place protects nothing.
- For `ρ̄` with image `SL₂(𝔽₇)` and `μ₇ ⊂ F`, `H¹(SL₂(𝔽₇), ad⁰) = 0` and the conclusion holds with no
  protected place.

### 4.2 Taylor–Wiles primes with a protected place

Keep the setting of §4.1, let `S` be a finite set of finite places containing the places above five
and the ramification of `ρ̄`, written `S = T ⊔ P` with `T` containing the places above five and `P` a
nonempty set of places at which `ρ̄` is protected. Put
`H_Q = ker(H¹(G_{F,S∪Q}, M(1)) → ⊕_{v∈P} H¹(F_v, M(1))/L_v^⊥ ⊕ ⊕_{w∈Q} H¹(F_w, M(1)))`. Prove: for every
`N ≥ 1`, every `r ≥ dim H_∅` and every finite set `B` of places there is a Taylor–Wiles datum `Q_N` of
level `N` in the sense of GlobalGaloisDeformations §5.1, of exactly `r` places of degree one over `ℚ`
outside `S ∪ B`, with `H_{Q_N} = 0`; each rational prime below `Q_N` is unramified in `F` and splits in
every imaginary quadratic subfield of `F`. The route: by §4.1 a nonzero `κ ∈ H_∅` restricts to a
nonzero homomorphism on `G_{LC_N}` whose image spans `M`, because `ad⁰` is absolutely irreducible under
`SL₂(𝔽₅)`; take `σ ∈ G_{C_N}` with `ρ̄(σ) = diag(2, 3)` (possible since `L ∩ C_N = F`), whose
coinvariants `M/(Ad ρ̄(σ) − 1)M` are the diagonal line, and multiply `σ` by an element of `G_{LC_N}` to
make the image of `κ` there nonzero; this is a detecting class, the class of `diag(2, 3)` is a padding
class, and GlobalGaloisDeformations §5.6 selects the primes. A class of `H_{Q_N}` is locally trivial,
hence unramified, at `Q_N`, so lies in `H_∅` and is killed by the selected evaluations.
(CaptainSude26, Lemma 3.4, lines 242–263; replaces AKT23, Lemma A.5, line 3979, and
CrystallineLocalGlobalCompatibilityCM §9.3 in this case.)

*Needs:* §4.1; GlobalGaloisDeformations §§3.6, 5.1, 5.6; Chebotarev Layer 10.

**Checks.**

- `diag(2, 3)` lies in `SL₂(𝔽₅)` (`6 ≡ 1`), has distinct eigenvalues and acts on `e, f` by `4` and on
  `h` by `1`, so its coinvariants on `ad⁰` are one-dimensional.
- If a protected place were put into the framing set `T`, its dual condition would disappear from `H_Q`;
  the inflated exceptional class takes values at a Taylor–Wiles Frobenius `g` of order prime to five
  that are coboundaries on `⟨g⟩`, so it is locally trivial at every Taylor–Wiles prime and `H_Q` never
  vanishes.
- For `H_∅ = 0` the padding class still yields exactly `r` primes; the size is independent of `N`.

### 4.3 The relative presentation with unframed protected places

Let `F` be a CM field with `μ₅ ⊂ F`, `d = [F⁺:ℚ]`, `ρ̄` and `S = T ⊔ P` as in §4.2 with `t = |T|`, and `𝒮`
a fixed-determinant (`ε₅⁻¹`) global deformation problem with arbitrary local conditions `R_v` at
`v ∈ T` and the unipotent-inertia condition of §3.4 at `v ∈ P`. For `Q_N` from §4.2 with `|Q_N| = r` and
the augmented problem `𝒮_{Q_N}` unrestricted at `Q_N`, prove that the `T`-framed ring `R^{□T}_{𝒮_{Q_N}}`
is a quotient of `R^loc_T[[x₁, …, x_g]]` with `R^loc_T = ⊗̂_{v∈T} R_v` and `g = r − 3d − 1 + t`,
independent of `N`. The protected places have no factor in `R^loc_T`. In the formula of
GlobalGaloisDeformations §3.6 the global invariants vanish, each complex place contributes `−3`, each
Taylor–Wiles place `dim L_w − h⁰ = 1` (LocalGaloisDeformationRings §2.16), each protected place
`dim L_v − h⁰ = 0` (§3.5(a)), and the dual group vanishes (§4.2); the surjection is
GlobalGaloisDeformations §3.7, whose tangent-generator part needs no liftability at `P`.
(CaptainSude26, proof of Theorem 4.2, lines 416–444.)

*Needs:* §§3.4, 3.5, 4.2; GlobalGaloisDeformations §§3.4, 3.6, 3.7, 5.1; LocalGaloisDeformationRings
§2.16.

**Checks.**

- For `d = 1`, `t = 1`, `r = 3` the count is `g = 0`, agreeing with CrystallineLocalGlobalCompatibilityCM
  §9.3's count with `|S| = 1`.
- For `d = 2`, `t = 3`, `r = 10` and local rings of relative dimension `3` away from five and
  `3 + [F_v:ℚ₅]` above five, `dim R^loc_T = 1 + 9 + 4 = 14`, `g = 6`, `dim R^loc_T[[x]] = 20 = r + 4t − d`,
  and the framing algebra with `Z₅^r` has dimension `1 + (4t − 1) + r = 22 = r + 4t`: the deficit is
  `d`, as for `PGL₂` over a CM field.
- Framing the protected places instead would add `|P|` generators and three local dimensions per
  place, leaving the deficit `d` unchanged, but loses the dual condition of §4.2 (second Check there).

### Examples

For a CM field `F ⊇ ℚ(ζ₅)` prepared as in Layer 6 and one protected place above a prime
`q ≡ 1 mod 5`, the inflation of the nonzero class of `H¹(SL₂(𝔽₅), ad⁰)` is ramified at the protected place,
so it is excluded from the dual Selmer group before any Taylor–Wiles prime is chosen.

### Dependencies

Layer 3; ArithmeticGaloisDuality R02.2; ArithmeticGaloisRepresentations §4.3; GlobalGaloisDeformations
§§3.4, 3.6, 3.7, 5.1, 5.6; LocalGaloisDeformationRings §2.16; Chebotarev Layer 10.

## Layer 5: Hecke algebras and patching with a protected place

### 5.1 Protected prepared data

Define a *protected prepared datum* to consist of a CM field `F` with `μ₅ ⊂ F`, an isomorphism
`ι : Q̄₅ ≅ ℂ`, finite sets of finite places `S = S₅ ⊔ R ⊔ P` with `S₅` the places above five,
`S₅ = S₅^cr ⊔ S₅^st`, `R ∪ P` prime to five, `P` nonempty and `P^c ∩ S = ∅`, and a cuspidal regular
algebraic weight-zero `π` of `PGL₂(𝔸_F)`, such that: (i) every rational prime below `S` or ramified in
`F` splits in an imaginary quadratic subfield of `F`; (ii) for each `v ∈ S₅`, with `v̄` the place of `F⁺`
below it, there is a five-adic `v̄' ≠ v̄` with `Σ_{w̄ ≠ v̄, v̄'} [F⁺_w̄ : ℚ₅] > [F⁺:ℚ]/2`, and the residue
field of `v̄` is larger than `𝔽₅`; (iii) `π_v` is unramified for `v ∉ R ∪ P ∪ S₅^st` and
`π_v^(Iw_v) ≠ 0` for `v ∈ R ∪ P ∪ S₅^st`; (iv) for `v ∈ S₅^st`, `π` is `ι`-ordinary of weight zero at `v`
and `r_ι(π)|G_{F_v}` is non-crystalline ordinary; (v) `ρ̄ = r̄_ι(π)` has image conjugate to `SL₂(𝔽₅)`
and is decomposed generic; (vi) `ρ̄|G_{F_v}` is trivial for `v ∈ S₅ ∪ R`; (vii) `ρ̄|G_{F_v}` is protected
for `v ∈ P`. (CaptainSude26, §4, lines 264–289; CN23, §5.6, lines 4226–4260.)

- The level `K^P = ∏ K_v ⊂ PGL₂(Ô_F)` is `PGL₂(O_{F_v})` outside `R ∪ P ∪ S₅^st` and `Iw_v` on
  `R ∪ P ∪ S₅^st`; it has no pro-`v` Iwahori auxiliary places.
- The framing set is `T = S₅ ⊔ R`; the unitary parabolics at five and the maximal ideal `𝔪` are those of
  CrystallineLocalGlobalCompatibilityCM §9.4 for the partition of `S₅`.
- The localized complexes at `K^P` are perfect by CrystallineLocalGlobalCompatibilityCM §8.7, since
  `ζ₅ ∈ F`, `ρ̄` is absolutely irreducible and the coefficients are trivial modulo `ϖ`.
- Forgetting `P` into the Iwahori places gives the data (1)–(14) of CrystallineLocalGlobalCompatibilityCM
  §9.1 except clause (14) at `P`, together with `ζ₅ ∈ F` and `S = S₅ ∪ R ∪ P` in place of clauses
  (10)–(11); clause (15) fails, by (v).

**Checks.**

- `P = ∅` is excluded: with image `SL₂(𝔽₅)` and `ζ₅ ∈ F` that is exactly the configuration excluded by
  clause (15) of CrystallineLocalGlobalCompatibilityCM §9.1.
- A place `v ∈ P` with `v^c ∈ R` violates `P^c ∩ S = ∅`.
- With `[F⁺:ℚ] = 8` and five-adic local degrees `(1, 1, 6)` of `F⁺`, condition (ii) holds at the two
  places of degree one (complementary sum `6 > 4`) and fails at the place of degree six (complementary
  sums `1`), so the datum is not prepared; with degrees `(1, 1, 1, 1, 1, 1, 1, 1)` the complementary
  sum is `6 > 4` everywhere.
- A residue field `𝔽₅` above five violates (ii) even when `ρ̄` is trivial there.

### 5.2 The protected deformation problems

For a protected prepared datum, a tuple `χ = (χ_v)_{v∈R}` of characters `k_v× → O×` trivial modulo `ϖ`
and a Taylor–Wiles datum `Q` from §4.2, define `𝒮^P_χ` as the problem `𝒮_χ` of
CrystallineLocalGlobalCompatibilityCM §9.5 on `S₅ ∪ R` (fixed-determinant Barsotti–Tate rings at
`S₅^cr`, the ordinary rings `R^△_v` at `S₅^st`, the character-type rings `R^{ε₅⁻¹, χ_v}_v` at `R`) together
with the unipotent-inertia condition of §3.4 at every `v ∈ P`, framed at `T = S₅ ⊔ R`; and `𝒮^P_{χ,Q}`
by adding the unrestricted fixed-determinant rings at `Q` with the `O[Δ_Q]`-structure of
GlobalGaloisDeformations §5.5. (CaptainSude26, §4, lines 285–289; CN23, §5.6, line 4361.)

- `𝒮^P_χ` and `𝒮^P_1` have the same reduction modulo `ϖ`, because each `χ_v ≡ 1 mod ϖ` and the protected
  condition does not depend on `χ`.
- Killing the augmentation ideal of `O[Δ_Q]` recovers `𝒮^P_χ` from `𝒮^P_{χ,Q}`.
- Its `T`-framed rings have the presentation of §4.3 over `R^loc_χ = ⊗̂_{v∈T} R_{v,χ}`, of dimension
  `1 + 3t + 2d`.
- The coefficient module on `K^P` is `O(χ⁻¹)` at `R` and trivial at `P`.

**Checks.**

- For `Q = ∅` the augmented problem is `𝒮^P_χ`; for `χ = 1` the coefficient module is trivial.
- The Steinberg lifts of LocalGaloisDeformationRings §2.5 are defined for trivial residual data and do
  not apply at `P`, where `ρ̄` is protected; the condition used is §3.4's.
- For `d = 1`, `S₅` one place of local degree `2` and `R = ∅`, `dim R^loc_χ = 1 + 3 + 2 = 6`: the
  protected places add nothing to the local base.

### 5.3 Hecke-valued representations satisfy the protected problems

For a protected prepared datum, every `χ` and every Taylor–Wiles datum `Q` of §4.2, prove: there are
`N ≥ 1` depending only on `[F:ℚ]`, ideals `J_{χ,Q}` with `J_{χ,Q}^N = 0` and surjective `O[Δ_Q]`-algebra
maps `R_{𝒮^P_{χ,Q}} → T_{χ,Q}/J_{χ,Q}`, where `T_{χ,Q}` is the derived Hecke image of
CrystallineLocalGlobalCompatibilityCM §9.9 at the level `K^P(Q)`, matching the characteristic
polynomials of Frobenius at `v ∉ S ∪ Q` with `P_v(X)`, compatible with reduction modulo `ϖ` from `χ` to
`1` and with augmentation from `Q` to `∅` as in ACC23, §6.4.1. The route is the construction of
CrystallineLocalGlobalCompatibilityCM §§9.7 and 9.9 with `R ∪ P` in the role of the Iwahori places
`R` on the automorphic side. At `v ∈ P` the level is `Iw_v` with trivial coefficient character, so
every torus operator of a unit acts as `1` and the inertial comparison gives the characteristic
polynomial `(X − 1)²` for every `σ ∈ I_v` on the neat-level Hecke algebra; it descends through the
non-neat comparison of CrystallineLocalGlobalCompatibilityCM §8.6 and the finitely many nilpotent ideals,
coefficient by coefficient, and by §3.4 the representation then satisfies the unipotent-inertia
condition over the possibly nonreduced quotient. The complex conjugate places `P^c` are hyperspecial,
so the representation is unramified there. (CaptainSude26, Lemma 4.1, lines 291–408; CN23,
Propositions 5.6.2–5.6.3, lines 4334–4390; ACC23, Theorem 3.1.1, line 2346.)

*Needs:* §§3.4, 5.1, 5.2; CrystallineLocalGlobalCompatibilityCM §§8.6, 9.4, 9.6, 9.7, 9.9;
`gap:acc-torsion-inertial-comparison` (AutomorphicGaloisRepresentationsPartII AG2.5).

**Checks.**

- At full Iwahori level with trivial character the torus polynomial at `v ∈ P` is `(X − 1)²`; with the
  coefficient character `χ_v⁻¹(a/d)` of the `R` places it would be `(X − χ_v(u))(X − χ_v(u)⁻¹)`, which is
  not the protected condition.
- At level `Iw_{v,1}` (pro-`v` Iwahori) the torus operators act through `k_v×` and the polynomial is not
  forced to be `(X − 1)²`; the full Iwahori level at `P` is part of the datum.
- For `Q = ∅` the maps are those of the first construction, with `Δ_∅ = 1`.

### 5.4 The prepared protected lifting theorem

For a protected prepared datum, let `ρ : G_F → GL₂(Q̄₅)` be continuous with `ρ̄ ≅ r̄_ι(π)`,
`det ρ = ε₅⁻¹`, unramified outside `S`, every element of `ρ(I_v)` of characteristic polynomial `(X − 1)²`
for `v ∈ R ∪ P`, Barsotti–Tate at `S₅^cr` and ordinary there exactly where `r_ι(π)` is, and a
non-crystalline extension of `ε₅⁻¹` by the trivial character at `S₅^st`. Prove that `ρ ≅ r_ι(Π)` for a
cuspidal regular algebraic weight-zero `Π` of `PGL₂(𝔸_F)`. The route is the patching proof of
CrystallineLocalGlobalCompatibilityCM §9.10 with three changes: framing at `T = S₅ ⊔ R` with the
protected conditions imposed in the global problems, Taylor–Wiles data from §4.2 and presentations from
§4.3, and Hecke maps from §5.3. Patch the two systems `χ = 1` and `χ` with `χ_v² ≠ 1` (possible since
`q_v ≡ 1 mod 5` at `R`) by DeformationAndDerivedPatchingAlgebra §§8.1–8.5 with the perfect complexes of
CrystallineLocalGlobalCompatibilityCM §9.6 at `K^P`. The dimensions `dim R_∞ = r + 4t − d` and
`dim S_∞ = r + 4t` give deficit `d = l₀`. The components at five are those of LocalGaloisDeformationRings
§§4.14–4.15 and 6.6, those at `R` those of §2.15; there are no component labels at `P`. Propagation of
automorphic support is CrystallineLocalGlobalCompatibilityCM §§8.2–8.5, and the weight-zero rational
comparison of §9.10 turns the support point into `Π`. (CaptainSude26, Theorem 4.2 and proof,
lines 410–498; CN23, Proposition 5.6.1, line 4261.)

*Needs:* §§4.2, 4.3, 5.1, 5.2, 5.3; CrystallineLocalGlobalCompatibilityCM §§7.5, 8.2–8.5, 9.6, 9.10;
DeformationAndDerivedPatchingAlgebra §§8.1–8.5; LocalGaloisDeformationRings §§2.15, 3.14, 4.14–4.15,
6.6; GlobalGaloisDeformations §3.4.

**Checks.**

- If `ρ` had inertia at `v ∈ P` acting through `ζ₅^(±1)` (first Check of §3.4) it would not define a point
  of the patched problem, although `ρ̄` is protected.
- Source and target lie on matching components at five: ordinary or nonordinary at `S₅^cr`,
  non-crystalline ordinary at `S₅^st`; a supersingular target with an ordinary source is excluded.
- With `d = 1` the deficit is one, matching `l₀ = 1` for `PGL₂` over an imaginary quadratic field.

### Examples

A protected prepared datum arises from two elliptic curves over a prepared CM field containing `μ₅`
with isomorphic mod-five representations of image `SL₂(𝔽₅)`, the modular one supplying `π`, both
semistable at `S`, split multiplicative at a place `v ∈ P` with five not dividing `v(Δ)`, and good at
`v^c` (Layer 7).

### Dependencies

Layers 3–4; CrystallineLocalGlobalCompatibilityCM §§7.5, 8.2–8.7, 9.1, 9.4–9.10;
DeformationAndDerivedPatchingAlgebra §§8.1–8.5; GlobalGaloisDeformations §§3.4, 5.5;
LocalGaloisDeformationRings §§2.15, 3.14, 4.14–4.15, 6.6; AutomorphicGaloisRepresentationsPartII
AG2.5 through `gap:acc-torsion-inertial-comparison`.

## Layer 6: The Steinberg-protected lifting theorem

### 6.1 Solvable preparation keeping the protected places

Let `F` be a CM field with `ζ₅ ∈ F`, `ρ : G_F → GL₂(Q̄₅)` and `π` satisfying conditions (1)–(3) and (5) of
CN23 Theorem 5.2 at `p = 5` with `ρ̄(G_F)` conjugate to `SL₂(𝔽₅)`, and `P` a nonempty finite set of places
`v ∤ 5` such that, for every `v ∈ P`: `ρ̄|G_{F_v}` is protected; every element of `ρ(I_v)` has
characteristic polynomial `(X − 1)²`; `π_v^(Iw_v) ≠ 0`; and `ρ`, `π` are unramified at `v^c`. Prove: there
is a finite solvable Galois CM extension `F'/F`, linearly disjoint over `F` from the field cut out by
`ρ̄`, in which every place of `P ∪ P^c` splits completely, such that `F'`, `S' = S'₅ ⊔ R' ⊔ P'` with `P'`
the places above `P`, the base change `π_{F'}` and `ρ|G_{F'}` satisfy §5.1 and the hypotheses of §5.4.
The route is the preparation of CrystallineLocalGlobalCompatibilityCM §9.11 (choice of test places,
prescribed completions over `F⁺` through GL2ModularityLifting §1.7 and PotentialAutomorphyInfrastructure
§2.5, the three imaginary quadratic composita, the degree inflation at five), whose construction does
not use clause (15), with trivial prescribed completions at the places of `F⁺` below `P`; these places
split over `F⁺` because `v^c ≠ v`. Since `ζ₅ ∈ F` no auxiliary smooth places are added. Linear
disjointness and perfectness of `SL₂(𝔽₅)` preserve `ρ̄(G_{F'}) = ρ̄(G_F)`; decomposed genericity is
preserved by PotentialAutomorphyInfrastructure §2.1 or a split witness; the local components at
`P'` are those at `P`, so protection, unipotent inertia and Iwahori vectors persist, and `P'^c` lies
outside `S'`. (CN23, end of the proof of Theorem 5.2, lines 4433–4509; CaptainSude26, proof of
Proposition 5.2, lines 543–603.)

*Needs:* §§3.3, 5.1; CrystallineLocalGlobalCompatibilityCM §9.11; GL2ModularityLifting §1.7;
PotentialAutomorphyInfrastructure §§2.1, 2.3, 2.5; PotentialModularityAndCompatibleSystems §§2.12–2.16.

**Checks.**

- A ramified prescribed completion of index five at a place of `P` would make residual inertia
  `U⁵ = 1`; the preparation keeps every place above `P` split.
- If `v` and `v^c` were both ramified for `ρ`, every CM extension has isomorphic completions above `v` and
  `v^c` (complex conjugation of `F'` exchanges them), so `P'^c ∩ S' = ∅` could not be reached by
  preparation; the hypothesis at `v^c` is necessary for this route.
- For `F = ℚ(ζ₅)`, which has no imaginary quadratic subfield, the imaginary quadratic composita are
  required to reach condition (i) of §5.1.

### 6.2 Potentially Barsotti–Tate lifting at five with a protected place

Let `F` be a CM field, `ι : Q̄₅ ≅ ℂ` and `ρ : G_F → GL₂(Q̄₅)` continuous, satisfying conditions (1), (2), (3)
and (5) of CN23 Theorem 5.2 at `p = 5`: `ρ` unramified almost everywhere with `det ρ = ε₅⁻¹`;
potentially semistable at every `v | 5` with all labelled weights `{0, 1}`; `ρ̄` decomposed generic and
`ρ̄|G_{F(ζ₅)}` absolutely irreducible; and a cuspidal regular algebraic weight-zero `π` of `PGL₂(𝔸_F)`
with `r̄_ι(π) ≅ ρ̄`, matching potential ordinarity and `N(rec(π_v)) = 0` at the potentially crystalline
places above five and `ι`-ordinary with non-potentially-crystalline `r_ι(π)` at the others. Suppose
either that clause (4) holds (if the projective image of `ρ̄(G_{F(ζ₅)})` is `PSL₂(𝔽₅)`, the field cut out
by the projective image of `ρ̄` does not contain `ζ₅`), or that there is a nonempty finite set `P` of
places `v ∤ 5` such that for every `v ∈ P`: `ρ̄(I_v)` is nontrivial and unipotent; every element of
`ρ(I_v)` has characteristic polynomial `(X − 1)²`; `π_v` has nonzero Iwahori-fixed vectors; and `ρ` and
`π` are unramified at `v^c`. Prove that `ρ ≅ r_ι(Π)` for a cuspidal regular algebraic weight-zero `Π` of
`PGL₂(𝔸_F)`. If (4) holds this is the parent's §5.2 `potentiallySemistableCM`. Suppose (4) fails. Then
`ζ₅ ∈ F`: for `ζ₅ ∉ F` the determinant `ε̄₅⁻¹` has order two or four on `G_F`, and the argument of CN23
Lemma 6.1.4, which uses only the determinant, gives (4). With `ζ₅ ∈ F` the determinant is trivial, the
image lies in `SL₂(k)` with projective image conjugate to `PSL₂(𝔽₅)`, and a subgroup of `SL₂(𝔽₅)`
surjecting onto `PSL₂(𝔽₅)` is all of it, so `ρ̄(G_F)` is conjugate to `SL₂(𝔽₅)`. Apply §6.1, then §5.4
over `F'`, then PotentialAutomorphyInfrastructure §2.3(2) to descend, `ρ|G_{F'}` being absolutely
irreducible. (CaptainSude26, §4 and Theorem 4.2,
lines 264–498; CN23, Theorem 5.2, lines 3849–3872, and Lemma 6.1.4, line 4562.)

*Needs:* §§5.4, 6.1; EllipticCurveModularityImaginaryQuadratic §5.2; PotentialAutomorphyInfrastructure
§2.3.

**Checks.**

- If `ζ₅ ∉ F` and `det ρ̄ = ε̄₅⁻¹` has order two, an element of determinant `−1` times `2` (a square root
  of `−1 = 4` in `𝔽₅`) has determinant `(−1)·4 = 1`, so the projective images of `G_F` and `G_{F(ζ₅)}` are
  both `PSL₂(𝔽₅)`; the two projective kernels then differ by the index `[F(ζ₅):F] = 2`, the projective
  field does not contain `ζ₅`, (4) holds and `P` is not needed.
- For imaginary quadratic `F`, `ζ₅ ∉ F` since `[ℚ(ζ₅):ℚ] = 4`; the theorem reduces to the parent's §5.2.
- A protected place of a split Tate curve with `5 | v(Δ)` does not exist: such a place has unramified
  residual representation and fails the first condition at `P`.

### Examples

For a CM field `F ∋ ζ₅` and the `H¹` of an elliptic curve with residual image `SL₂(𝔽₅)`, split
multiplicative at a place `v` with `5 ∤ v(Δ_min)` and good at `v^c`, the theorem applies with `P = {v}`
whenever a residually isomorphic modular curve with matching reduction at five and at `v`, `v^c` is
available.

### Dependencies

Layer 5; CrystallineLocalGlobalCompatibilityCM §9.11; EllipticCurveModularityImaginaryQuadratic §5.2;
GL2ModularityLifting §1.7; PotentialAutomorphyInfrastructure §§2.1, 2.3, 2.5;
PotentialModularityAndCompatibleSystems §§2.12–2.16.

## Layer 7: The protected auxiliary elliptic curve

### 7.1 The width-three multiplicative degeneration

Let `k` be a number field, `E/k: y² = h(x)`, `p > 3` prime, `n = 3p`, and `R_*` a point of exact order
`2n` of the parameter cover with `[n]R_* = a/2` nonzero two-torsion, as in the parent's §2.1. Prove:
(a) for `t ∈ U(k)` the image of the `k`-point `(O, 1)` of `C₃(t)` is a `k`-point of
`D_t = C₃(t)/⟨w⟩`, so `D_t ≅ A_t` over `k`; (b) in the nodal model of the parent's §2.3 at `R_*` for
`m = 3`, the reflection `w` fixes exactly one of the three nodes, acting by `−1` on both branches there,
and exchanges the other two; (c) the quotient of the regular model by `w` has an `A₁` singularity
`uv = s²` at the image of the fixed node and an ordinary node of thickness one at the image of the
exchanged pair, its components are rational, and after resolving the `A₁` point the fiber is a cycle of
three rational curves: `D` and `A` have semistable reduction of type `I₃` in the smoothing parameter
`s`; (d) `1/j(A_t)` has a zero of exact order three in `s`, and over a field containing the data of (b)
the Tate parameter is `c s³ h(s)` with `c ≠ 0` and `h(0) = 1`. For (b): on the elliptic component
`E' → E`, an étale cyclic triple cover, the lifts of `[−1]` are `Q ↦ −Q + c₀` with `c₀ ∈ ker(E' → E)`;
the fiber over the two-torsion point is a coset `P₀ + ker`, and `2(P₀ + jT') = c₀` has exactly one
solution `j ∈ ℤ/3` because two is invertible modulo three. For (d), the total thickness `2 + 1 = 3`
equals `v(q)` per unit of `v(s)`; `R_*` is not two-torsion, so `x` is étale there and the `t`-parameter
is a unit multiple of `s`. (CaptainSude26, Lemma 5.1, lines 503–532.)

*Needs:* EllipticCurveModularityImaginaryQuadratic §§1.3, 2.1, 2.3, 4.2; EllipticCurves Layer 4;
SchemeAndStackFoundations §§4.13, 4.18.

**Checks.**

- An involution of a three-element set fixes one or three points; three fixed nodes would make the
  quotient two rational curves meeting in three points, of arithmetic genus two, contradicting genus
  one. Exactly one fixed node is forced.
- The total thickness after resolution is `1 + 1 + 1 = 3`, equal to the thickness `2 + 1` before it;
  the type is `I₃`, not the `I₂` read from the two quotient nodes alone.
- For `p = 101`, `R_*` has order `606` and `[303]R_* = a/2`; `x` is unramified at `R_*` since `606 ≠ 2`.

### 7.2 Local opens at an auxiliary prime

Keep the setting of §7.1 with `k = K` a number field. Prove: there is a finite set `Σ₀` of rational
primes such that for every rational prime `q ∉ Σ₀` with `q ≥ 7`, `q ≠ p`, split completely in the field
of definition of the data of §7.1(b) and in the normal closure of `K`, and every place `v` of `K` above
`q`: (a) there is a nonempty open `Ω_v ⊂ U(K_v)` such that for `t ∈ Ω_v` the curve `A_t` has split
multiplicative reduction at `v` with `v(Δ_min(A_t)) = 3k_v`, for a fixed integer `k_v` prime to five;
(b) for every other place `v' ≠ v` of `K` above `q` there is a nonempty open `Ω_v' ⊂ U(K_v')` on which
`A_t` has good reduction at `v'`. For (a): spread the `I₃` model and `s` over the ring of integers with
`Σ₀` inverted, so that the node and branch data, the thicknesses, good reduction of `E` and the unit
leading coefficient of `1/j` persist; at `v` the Tate parameter is `c s³ h(s)` with `c` a unit; choose
`v(s) = k_v` large with `5 ∤ k_v`. For (b): near the compact-type boundary point `O` the Jacobian family
is an abelian scheme with fiber `E³` (the parent's §2.2); by the parent's §6.1 the `d`-torsion is locally
constant for an odd `d ≠ q`, hence unramified, so nearby fibers are semistable
(NeronModelsAndSemistableAbelianVarieties §3.12); by the parent's §6.3 their toric rank is that of `E³`,
namely zero, so they have good reduction, and so does the isogeny factor `A_t`; the parent's §6.5
pulls the neighborhood back to the `t`-line. (CaptainSude26, Lemma 5.1, lines 520–532.)

*Needs:* §7.1; EllipticCurveModularityImaginaryQuadratic §§2.2, 6.1, 6.3, 6.5;
NeronModelsAndSemistableAbelianVarieties §§3.1, 3.12, 5.1; EllipticCurves Layer 4.

**Checks.**

- `v(s) = 5` gives `v(Δ_min) = 15`, divisible by five: the residual inertia is trivial and the place is
  not protected; `v(s) = 1` or `7` give `3` or `21`.
- Every place of `K` above `q`, including `v^c`, is constrained; a single selected place would leave
  `v^c` possibly bad, violating the hypothesis at `v^c` of §6.2.
- `q = 5` is excluded: a split multiplicative place above five is not prime to the coefficient prime.

### 7.3 Split Tate curves give protected places

Let `K_v` be a finite extension of `ℚ_ℓ` with `ℓ ≠ 5` and `μ₅ ⊂ K_v`, and `A/K_v` split multiplicative with
`5 ∤ v(Δ_min(A))`. Prove: `A[5]` and the residual representation of `H¹(A)` are protected (§3.3);
residual Frobenius has both diagonal entries `1`, and a change of tame lift makes it trivial; every
element of the image of `I_v` on `H¹(A_K̄, Q̄₅)` has characteristic polynomial `(X − 1)²`; and if `A` is
the localization of a modular non-CM curve with realizing `π`, then `π_v` is the Steinberg
representation, which has nonzero Iwahori-fixed vectors. If instead `5 | v(Δ_min(A))`, `A[5]` is
unramified. The Tate-curve description is ArithmeticGaloisRepresentations §6.3 with `v(Δ_min) = v(q)`
(EllipticCurves Layer 4); the automorphic statement is the parent's §0.3 `automorphic_wd`, the full
Weil–Deligne parameter being `Sp(2)`. (CaptainSude26, paragraph after Lemma 5.1, lines 533–536.)

*Needs:* §3.3; ArithmeticGaloisRepresentations §6.3; EllipticCurves Layer 4;
EllipticCurveModularityImaginaryQuadratic §0.3; GL2AutomorphicRepresentationsAndTransfer R16.3.2.

**Checks.**

- For `v(q) = 3` the residual inertia is `[[1, 3],[0, 1]]`, a nontrivial unipotent; for `v(q) = 15` it is
  trivial.
- A non-split multiplicative curve is the unramified quadratic twist of a split one: its residual
  Frobenius has diagonal entries `−1`, its residual inertia is unchanged, so it is still protected, and
  its automorphic component is the twist of Steinberg by the unramified quadratic character, which also
  has Iwahori-fixed vectors.
- Good reduction gives unramified `A[5]`, never protected.

### 7.4 The switch at five with retained auxiliary places

Let `F` be a CM field, `ρ̄ : G_F → GL₂(𝔽₅)` continuous with `det ρ̄ = ε̄₅` and decomposed generic, a
partition `S₅^st ⊔ S₅^ord ⊔ S₅^ss` of the places above five, a finite Galois `F_avoid/F`, a finite set `Σ`
of finite places of `F` not above `2, 3, 5`, and nonempty opens `Ω_w ⊂ Y_ρ̄(F_w)` for `w ∈ Σ`, where
`Y_ρ̄` is the fixed-pairing twist of the parent's §0.2. Prove: there are a finite solvable Galois CM
extension `L/F` with `L ∩ F_avoid = F` in which every place of `Σ` splits completely, and a non-CM modular
elliptic curve `A'/L`, such that `A'[5] ≅ ρ̄|G_L` symplectically, `A'` has split multiplicative, good
ordinary or good supersingular reduction at every place above `S₅^st`, `S₅^ord`, `S₅^ss` respectively,
`ρ̄|G_L` is decomposed generic, and for every `w ∈ Σ` and `w' | w` the point of
`Y_ρ̄(L_{w'}) = Y_ρ̄(F_w)` given by `A'` lies in `Ω_w`. This is the parent's §0.3 `switch_five` with the
places `Σ`: in the solvable preparation add trivial prescribed completions at the places of `F⁺` below
`Σ` (GL2ModularityLifting §1.7, PotentialAutomorphyInfrastructure §2.5), and in the Hilbert selection
add the opens `Ω_w` (the parent's §0.3 `hilbert_local_selection`, which allows finitely many nonempty
opens); `Σ` avoids the mandatory conditions at `2, 3, 5`. Modularity is the parent's §0.3
`seed_modular`, and the Tate places above `2` and `3` force `A'` to be non-CM. (CaptainSude26,
Proposition 5.2 and proof, lines 538–603; CN23, Proposition 6.1.5, line 4574; CHT08, Lemma 4.1.2.)

*Needs:* EllipticCurveModularityImaginaryQuadratic §0.2 (`fixed_pairing_twist`,
`fixed_pairing_twist_rational`) and §0.3 (`solvable_preparation`, `hilbert_local_selection`,
`seed_modular`, `switch_five`); GL2ModularityLifting §1.7; PotentialAutomorphyInfrastructure §2.5.

**Checks.**

- For `Σ = ∅` the statement is `switch_five`.
- A place of `Σ` above `2` would conflict with the mandatory Tate condition there; `Σ` avoids `2, 3, 5`.
- Splitting completely at `w ∈ Σ` keeps `L_{w'} = F_w`, so `Ω_w` is meaningful at every `w' | w`; an
  unramified quadratic completion would replace `F_w` by its quadratic extension and change the local
  opens.

### 7.5 The modular auxiliary curve over a CM field containing μ₅

Let `K` be a CM field with `μ₅ ⊂ K` and `E/K` geometrically non-CM, with `p` from the parent's §7.2, and
`q`, `v` as in §7.2 with `q` also prime to the bad reduction of `E`. Prove: there is a switch parameter
`t ∈ U(K)` lying, in addition, in the opens of §7.2 at the places above `q`; for every such `t`: (a) the
mod-five representation of `A_t` has image conjugate to `SL₂(𝔽₅)` over `K` and is decomposed generic;
(b) `H¹(A_t)` is protected at `v` and unramified at `v^c`; (c) `A_t` is modular over `K`. For (a): in the
parent's §7.4 the specialized image of `G_D` contains the geometric monodromy, which for `(m, ℓ) = (3, 5)`
contains the opposite transvections `[[1, ±3],[0,1]]` and `[[1, 0],[±3, 1]]` (the parent's §7.1 with
coefficient `3`); they generate `SL₂(𝔽₅)`, and `det = ε̄₅` is trivial on `G_K`; genericity descends from
`F` by Theorem 1.2. Part (b) is §7.3. For (c): apply §7.4 to `ρ̄ = A_t[5]` with the partition given by the
potential reduction types of `A_t` above five, `F_avoid` containing the field cut out by `ρ̄`, and `Σ` the
places above `q` with the split-multiplicative opens at the places above `v` and the good-reduction
opens at the others, all nonempty because `A_t` supplies points. Over the resulting `L`, Theorem 6.2
applies to `H¹(A_t)|G_L`, `π_{A'}` and `P` the places above `v`: clause (4) fails, the protected
conditions hold by §7.3 and §7.4, the five-adic matching holds by the parent's §0.3
`auxiliary_local_types`. Descend along `L/K` by PotentialAutomorphyInfrastructure §2.3(2); the result is
cuspidal because `A_t` is non-CM. (CaptainSude26, Proposition 2.3(3)–(4), lines 120–125, and
Corollary 5.3, line 604.)

*Needs:* §§7.2, 7.3, 7.4, 6.2; Theorem 1.2; EllipticCurveModularityImaginaryQuadratic §§6.5, 7.1, 7.2,
7.4, 0.3 (`auxiliary_local_types`, `modular_elliptic_all_coefficients`); PotentialAutomorphyInfrastructure
§2.3.

**Checks.**

- The subgroup of `SL₂(𝔽₅)` generated by `[[1,3],[0,1]]` and `[[1,0],[3,1]]` has order `120`; a single
  transvection generates a group of order five, whose image would not be `SL₂(𝔽₅)`.
- Over `K = ℚ(ζ₅)`, `det A_t[5] = ε̄₅` is trivial on `G_K`, so the image is inside `SL₂(𝔽₅)` and equals it;
  over a field without `ζ₅` the same monodromy gives an image containing `SL₂(𝔽₅)` with nontrivial
  determinant, and Theorem 2.1 applies instead.
- An image of `SL₂(𝔽₅)` excludes CM: the image of a CM curve has an abelian subgroup of index at most
  two, while `SL₂(𝔽₅)` is perfect of order `120`.

### Examples

For `K = ℚ(ζ₅)` and `E: y² = x³ + x + 1`, choose `p > 100` from the parent's §7.2, a prime `q ≡ 1 mod 5`
outside `Σ₀`, a place `v | q` and `t` in all the opens; `A_t` is split multiplicative at `v` with
`v(Δ_min) = 3k_v`, good at the other three places above `q`, and the switch at five produces `A'` over a
solvable CM extension, after which Theorem 6.2 and descent make `A_t` modular over `ℚ(ζ₅)`.

### Dependencies

Layers 1 and 6; EllipticCurveModularityImaginaryQuadratic §§0.2, 0.3, 1.3, 2.1–2.3, 4.2, 6.1, 6.3, 6.5,
7.1, 7.2, 7.4; NeronModelsAndSemistableAbelianVarieties §§3.1, 3.12, 5.1; ArithmeticGaloisRepresentations
§6.3; EllipticCurves Layer 4; SchemeAndStackFoundations §§4.13, 4.18; GL2ModularityLifting §1.7;
PotentialAutomorphyInfrastructure §§2.3, 2.5; GL2AutomorphicRepresentationsAndTransfer R16.3.2.

## Layer 8: Every elliptic curve over every CM field

### 8.1 The headline

Prove: for every CM number field `K` and every elliptic curve `E/K` there is an isobaric automorphic
representation `π_E` of `GL₂(𝔸_K)`, of weight zero and trivial central character, realizing
`H¹(E_K̄, Q̄_ℓ)` for every `ℓ` and every `ι`, with full Frobenius-semisimple Weil–Deligne compatibility
`ι WD(H¹|G_{K_v})^(F-ss) ≅ rec^T(π_{E,v})` at every finite `v ∤ ℓ`, agreement of every finite local factor,
archimedean parameter `complexInfinityParameter` at every complex place, and
`L(E/K, s) = L(π_E, s − 1/2)`. It is cuspidal if `E` is geometrically non-CM; otherwise it is the
quadratic automorphic induction or the isobaric sum of Theorem 2.4. For geometrically CM `E` use
Theorem 2.4. For non-CM `E`: if `ζ₅ ∉ K`, Theorem 2.5; if `ζ₅ ∈ K`, take `t` from §7.5, base change
`π_{A_t}` to `F = K(μ₃ₚ)` by PotentialAutomorphyInfrastructure §2.3(1) to realize `V_η` as in
Theorem 2.1(c), apply Theorem 2.2 and then Theorem 2.3. (CaptainSude26, Theorem 1.1, line 26, with its
proof, line 671; LeHung26, Remark 1.3.1, line 125.)

*Needs:* Theorems 2.1–2.5 and 7.5; PotentialAutomorphyInfrastructure §2.3.

**Checks.**

- `K = ℚ(ζ₅)` contains `ζ₅` and its only quadratic subfield `ℚ(√5)` is real; only the second branch
  applies, and the prepared field condition (i) of §5.1 is reached only after the imaginary quadratic
  composita of §6.1.
- For `K₆₀`, the first branch applies; the second branch over `K₆₀(μ₅) = ℚ(ζ₆₀)` followed by descent along
  the abelian extension `ℚ(ζ₆₀)/K₆₀` gives the same `π_E` by strong multiplicity one.
- For imaginary quadratic `K` the statement is the parent's `imaginary_quadratic_modularity`.

### Examples

Every elliptic curve over `ℚ(ζ₅)`, over `ℚ(ζ₁₅)`, over `ℚ(ζ₂₀)` and over `K₆₀` is modular. The first
three contain `ζ₅` and use Layer 7, including for curves whose own mod-three and mod-five images are
reducible. The biquadratic field `ℚ(√−1, √5)` does not contain `ζ₅` (its Galois group over `ℚ` is
`(ℤ/2)²`, while `ℚ(ζ₅)/ℚ` is cyclic of degree four), so it is covered by Theorem 2.5.

### Dependencies

Layers 2 and 7; PotentialAutomorphyInfrastructure §2.3.

## Downstream consumers

No roadmap cites these outputs. They are designed for: modularity over all totally real and all CM
fields together with the totally real roadmap built on the same parent; the elliptic inputs of
ModularityAndLanglandsExtensions §2.29, whose residual criterion over CM fields can then drop the
hypothesis `ζ₅ ∉ F` by Theorem 6.2 and Theorem 8.1; and arithmetic applications needing the entire
`L(E/K, s)` over CM fields, in the way BianchiModularForms uses `imaginary_quadratic_modularity`. The
lifting theorem 6.2 is stated for an arbitrary representation and serves any consumer of
CrystallineLocalGlobalCompatibilityCM §9.12 meeting residual image `SL₂(𝔽₅)` over a field containing `ζ₅`.

## References

All statements are in our own words; locators are lines of the line-numbered texts of the fixed
versions below, with printed pages where given.

- **LeHung26.** Bao V. Le Hung, *A geometric prime switch for elliptic curves over totally real and CM
  fields* (discussion draft), Hexagon preprint 2610.00156v1, 7 October 2026, CC BY 4.0. Theorem 1.1,
  p. 2 (line 86); Remark 1.3.1 (line 125); §4.1–§4.6, pp. 7–9 (lines 272–355); Remark 4.2 (line 352);
  Lemma 5.1, p. 9 (line 357). Unrefereed.
- **CaptainSude26.** CaptainSude (pseudonymous), *Every elliptic curve over a CM number field is
  modular*, GitHub release v1.0.0, 7 October 2026, 15 pages. Theorem 1.1, p. 1 (line 26);
  Proposition 2.3, p. 3 (line 120); Lemmas 3.1–3.4, pp. 4–6 (lines 177–263); §4 setting, pp. 6–7
  (lines 264–289); Lemma 4.1, p. 6 (line 291); Theorem 4.2, p. 9 (line 410); Lemma 5.1, p. 10
  (line 503); Proposition 5.2, p. 11 (line 538); Corollary 5.3, p. 12 (line 604); Proposition 6.2, p. 13
  (line 634). Unrefereed; no licence is stated, so it is cited by locator only.
- **OpenAI26.** OpenAI, *Modularity of elliptic curves over imaginary quadratic fields*, 4 October 2026,
  revision `adc7f1241b42e322a6451854ab7e4b4c146bf78a`. Proposition 9.3 and Lemma 9.4, pp. 26–27; §9.4,
  pp. 27–28. The parent's source.
- **CN23.** Ana Caraiani and James Newton, *On the modularity of elliptic curves over imaginary quadratic
  fields*, arXiv:2301.10509v3. Theorem 5.2, pp. 73–74 (line 3849); §5.6 data (lines 4226–4260);
  Proposition 5.6.1 (line 4261); Propositions 5.6.2–5.6.3 (lines 4334–4390); the use of
  Taylor–Wiles primes (line 4404); end of the proof of Theorem 5.2 (lines 4433–4509); Theorem 6.1, p. 87
  (line 4513); Lemma 6.1.3, p. 88 (line 4545); Lemma 6.1.4, p. 88 (line 4562); Proposition 6.1.5,
  pp. 88–89 (line 4574).
- **AKT23.** Patrick B. Allen, Chandrashekhar Khare and Jack A. Thorne, *Modularity of `GL₂(𝔽_p)`-representations
  over CM fields*, arXiv:1910.12986v2. Lemma A.5, p. 86 (line 3979), replaced in this case by Lemma 4.2's
  route.
- **ACC23.** P. B. Allen et al., *Potential automorphy over CM fields*, arXiv:1812.09999v2. §3.1 setting,
  pp. 57–58 (lines 2309–2345); Theorem 3.1.1, p. 58 (line 2346); §6.4.1 (patching data); §6.5.12 (auxiliary imaginary quadratic fields, line 7163);
  Proposition 6.5.13.
- **CHT08.** Laurent Clozel, Michael Harris and Richard Taylor, *Automorphy for some l-adic lifts of
  automorphic mod l Galois representations*, Publ. Math. IHÉS 108 (2008). Lemma 4.1.2, p. 116.
- **MilneCM.** J. S. Milne, *Complex Multiplication*, course notes, version of 14 July 2020. Proposition 1.4
  with the uniqueness of complex conjugation noted after it, and Corollary 1.5, p. 10 (lines 273–295).
