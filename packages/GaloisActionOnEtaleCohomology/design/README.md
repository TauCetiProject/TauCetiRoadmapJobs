# Roadmap: the Galois action on étale cohomology of geometric fibres

**Summary.** For a field `k` and a scheme `X/k`, and for a complete non-archimedean field `K` and a rigid `K`-space `X`, the étale cohomology of the geometric fibre carries an action of the absolute Galois group. Every arithmetic roadmap that writes `H^i(X_C, ℤ_ℓ(j))` "with its Galois action" uses this action, and most leave it implicit. This roadmap constructs the action explicitly, as `ρ(σ) = c_σ ∘ σ_X^*`, and supplies the rules that make it usable. It starts from Mathlib's absolute Galois group, spectral norm and uniform completion, the analytic étale sites of AdicEtaleGeometry, the analytic sheaf theory of ClassicalAdicEtaleCohomology and the scheme sheaf theory of SchemeAndStackFoundations and EtaleCohomologyFoundations. Its end theorems are:

- the identification of `G_K` with the continuous `K`-automorphisms of the completed algebraic closure `C`, for every complete non-archimedean `K` in every characteristic;
- the action itself, as a left action by `Λ`-linear automorphisms, on étale and pro-étale cohomology, with its functoriality (pullbacks, sheaf maps, connecting maps, cup products, restriction to open subgroups, change of algebraic closure);
- discreteness, the dictionary between higher direct images to the base point and Galois modules, the Hochschild–Serre spectral sequence with its `E_2` term identified, and agreement with the scheme-side adic action and Frobenius conventions;
- the `ℓ`-adic and rational groups as continuous representations;
- equivariant twisting, the equivariant comparison for proper schemes, and the passage from finiteness to finitely generated and finite-dimensional continuous representations.

## Scope and ownership

This roadmap owns:

- the extension of Galois automorphisms to `C` for an arbitrary complete non-archimedean field `K`, any characteristic and any value group, with the density of the separable closure in `C` (Layer 0). PadicPeriodRings §1.1 is the special case `K/ℚ_p` finite, and PadicPeriodRings §2 the complete discretely valued mixed-characteristic case with perfect residue field; both are recovered as Checks;
- the action of the automorphisms of a cover `Y → X` on `H^i(Y, p^{-1}M)` for analytic étale, analytic pro-étale and scheme étale sites (§1.1). The Galois action is the instance `Y = X_C`; the finite-group actions in the Hochschild–Serre statements of ClassicalAdicEtaleCohomology §1.3 and SchemeAndStackFoundations §2.15 are the instance of a finite Galois cover;
- the rigid action and the scheme action with their functoriality (§§1.2–1.4);
- discreteness, the dictionary and the identification of the Hochschild–Serre `E_2` term, in both settings (Layer 2);
- the `ℓ`-adic and rational cohomology of the geometric fibre of a rigid space as a continuous representation, in naive and derived form (Layer 3);
- equivariant twisting, the equivariant comparison for proper schemes, and the packaging of finiteness as representations (Layer 4).

It imports and does not plan again:

- **AdicEtaleGeometry** layer A1: the étale and pro-étale sites of analytic adic spaces with their base-change functoriality (*etale-site*), geometric points and fibre functors (*etale-site-and-geometric-points*), strongly sheafy rings (*strongly-sheafy-huber-pair*), the descent of qcqs étale spaces along a separable algebraic extension of the base field and the pro-finite-étale object `X_{K^sep}` (A1.14, *etale-descent-along-algebraic-extension* and *proetale-field-extension-slice*).
- **AdicSpacesPartII** §R0.6 (morphisms locally of finite type), §R0.7 (*fibre-products-existence*), §R1.1 (*rigid-analytic-space*), §R1.2 (*scheme-fibre-product-analytification*); **AdicSpacesPartIV** layer R4 (*proetale-site-functoriality*).
- **ClassicalAdicEtaleCohomology** §1.1 (module sheaves, `RΓ`, `R^q f_*`, and the equivalence of sheaves on `Spa(K, 𝒪_K)_ét` with discrete `G_K`-modules), §1.3 (Leray, Hochschild–Serre for finite and pro-finite-étale covers, the étale/pro-étale comparison, the qcqs pro-étale colimit formula), §1.4 (`μ_n`, twists), §1.5 (tilde-limits, the colimit theorem for cohomology and the stalk formula along strict localisations), §7.1 (extensions of geometric field pairs), §8.2 (proper algebraic comparison), §8.4 (vanishing above twice the dimension for proper maps), §9.7 (finiteness for smooth proper rigid spaces and the smooth proper trace), §11.1 (finiteness for qcqs spaces locally algebraically of finite type).
- **SchemeAndStackFoundations** §1.10 (functoriality of small étale sites), §2.1 (cohomology pullback along morphisms of sites, higher direct images), §2.2 (Leray), §2.15 (sheaves on a field as discrete Galois modules, cohomology and limits, Hochschild–Serre for Galois covers); **EtaleCohomologyFoundations** §F.0.3 (finite Tate twists), §F.0.4 (topological invariance), §F.1 (finite-coefficient cohomology and cup products on schemes), §F.2.1 (proper base change), §F.3 (finiteness for proper schemes), §F.4.0 (`ContinuousRep`), §F.4.6 (the continuous action on scheme adic cohomology with descent data), §F.10.2 (the Frobenius bridge).
- **ProfiniteCohomology** Layer 0 (discrete modules), Layer 1 (the canonical carrier on `TopRep`), Layer 10 (continuous cohomology in all degrees); **EnhancedDerivedSheaves** §0.3 (`ClassicalDerived.tensorHom`, `ClassicalDerived.inverseLimits`) and §0.4 (`ClassicalDerived.functorCoherence`); **DerivedModuleAlgebra** §1.T.1 (towers, `lim¹`, Milnor sequences).
- **ArithmeticGaloisRepresentations** §1.1 (continuous representations) and §1.2 (Tate twists of representations).
- **AInfCohomology** §AI.3.1 (`AInf.primitive_mod_p_comparison`: finiteness of `𝔽_p`-cohomology of smooth proper rigid spaces over a complete algebraically closed extension of `ℚ_p`).
- **PadicDifferentialEquationsAndRigidCohomology** §RD.0.33 (the completion of an algebraically closed non-archimedean field is algebraically closed, in every characteristic).

Statements of the target scope that this roadmap does not plan, by owner:

- The construction of the scheme-side continuous action on `ℓ`-adic realizations with descent data, and its compatibility with the six operations, is EtaleCohomologyFoundations §F.4.6; this roadmap proves that its finite levels are the explicit action (§2.6).
- The finiteness of `𝔽_p`-cohomology of singular proper rigid spaces over an algebraically closed extension of `ℚ_p` is PadicHodgeTheory §2.7, which this roadmap does not supply; that roadmap applies the packaging theorem of §4.3 to it.
- Poincaré duality, the `p`-adic trace and the quasi-unipotence of inertia are statements about the action `ρ` made by their own roadmaps (ClassicalAdicEtaleCohomologyPartII, and the weight and nearby-cycle consumers).

## Conventions

- `K` is a field complete for a nontrivial non-archimedean absolute value `|·|` of rank one, of any characteristic and with any value group: a Mathlib `NontriviallyNormedField` with `CompleteSpace K` and `IsUltrametricDist K`. `𝒪_K` is its closed unit ball. Archimedean and trivially valued fields are excluded.
- `K̄` is Mathlib's `AlgebraicClosure K` with the spectral norm, `spectralNorm.normedField K K̄`; by `spectralNorm_unique` this is the unique power-multiplicative extension of `|·|`. `K^sep` is Mathlib's `SeparableClosure K ⊆ K̄`. `C` is `UniformSpace.Completion K̄`, with closed unit ball `𝒪_C` and maximal ideal `𝔪_C`.
- `G_K` is Mathlib's `Field.absoluteGaloisGroup K = K̄ ≃ₐ[K] K̄` with the Krull topology. Restriction to `K^sep` is a topological isomorphism onto `Gal(K^sep/K)`, because `K̄/K^sep` is purely inseparable. For a finite extension `L ⊆ K̄` of `K`, `G_L ⊆ G_K` is the open subgroup fixing `L`; `L` is complete and `K̄` is an algebraic closure of `L` with the same norm, so `C` is also the completed algebraic closure of `L`.
- A rigid `K`-space is an adic space locally of finite type over `Spa(K, 𝒪_K)` (huber1994, §§1–3; AdicSpacesPartII §R0.6; Tate's rigid spaces correspond by §R1.1, *rigid-analytic-space*). It is locally strongly noetherian, hence locally noetherian and locally strongly sheafy (AdicEtaleGeometry A1.1). For a complete extension `L` of `K` inside `C` (a finite `L ⊆ K̄`, or `L = C`) write `X_L := X ×_{Spa(K,𝒪_K)} Spa(L, 𝒪_L)` (AdicSpacesPartII §R0.7, *fibre-products-existence*, case (a)), `pr_L : X_L → X`, and `ℱ_L := pr_L^{-1} ℱ`, the inverse image of abelian sheaves (never the module pullback `𝒪_{X_L} ⊗ pr_L^{-1}(−)`).
- Sheaves of `Λ`-modules on `X_ét`, `RΓ`, `R^q f_*` and `D⁺(X_ét, Λ)` are those of ClassicalAdicEtaleCohomology §1.1, for an arbitrary ring `Λ`. Torsion and invertibility hypotheses appear only where a statement needs them. On schemes the corresponding objects are those of SchemeAndStackFoundations §§2.1–2.2.
- **Direction of the action.** For `σ ∈ G_K` let `σ̂ : C → C` be its continuous extension (§0.2) and `σ_X := id_X × Spa(σ̂) : X_C → X_C`. `Spa` is contravariant, so `(στ)_X = τ_X ∘ σ_X`: `σ ↦ σ_X` is a right action on `X_C`. Pullback is contravariant again, so `ρ(σ) := c_σ ∘ σ_X^*` is a left action on cohomology. The Galois action on the stalk of a sheaf on `Spa(K, 𝒪_K)_ét` at the geometric point `ξ_C : Spa(C, 𝒪_C) → Spa(K, 𝒪_K)` is the rule of stacks03N1, Tag 03QW (line 3966): `σ` sends an étale neighbourhood `(V, v̄)` to `(V, v̄ ∘ Spa(σ̂))`. This is the only left action that the automorphisms `Spa(σ̂)` induce. Witness: on `H⁰(Spa(C, 𝒪_C), μ_n) = μ_n(C)` and on the stalk `(μ_n)_{ξ_C} = μ_n(C)`, `σ` acts by `ζ ↦ σ(ζ)` (stacks03N1, Example 59.3, line 4241). For `K = ℚ_p`, `ℓ ≠ p` and an arithmetic Frobenius lift `φ`, `ρ(φ)` sends `ζ ∈ μ_ℓ(C)` to `ζ^p`.
- **Twists.** For `n` invertible in `K` and a `ℤ/n`-algebra `Λ`, `Λ(j)` is the twist of ClassicalAdicEtaleCohomology §1.4 (on schemes, EtaleCohomologyFoundations §F.0.3), for all `j ∈ ℤ`. On representations, `ℤ_ℓ(j)` is the Tate twist of ArithmeticGaloisRepresentations §1.2, with `σ` acting on `ℤ_ℓ(1) = lim μ_{ℓ^n}(K̄)` by `ζ ↦ σ(ζ)`. An arithmetic Frobenius lift acts on `ℤ_ℓ(1)` by `q`, the cardinality of the residue field, and a geometric Frobenius by `q⁻¹` (Tau Ceti `TauCeti.IsArithFrobeniusLift.coe_localCyclotomicCharacter`, for a local field and `ℓ` prime to the residue characteristic). This is the normalisation of EtaleCohomologyFoundations §§F.0.3, F.10.2 and F.4.6.
- **Adic coefficients.** `ℓ` is a prime. Twists `ℤ/ℓ^n(j)` with `j ≠ 0` require `ℓ` invertible in `K`; when `ℓ = char K` only `j = 0` occurs. When `char K = 0`, `ℓ` may equal the residue characteristic.
- **Schemes.** `k` is an arbitrary field, `k̄ = AlgebraicClosure k`, `k^sep = SeparableClosure k ⊆ k̄`, and `G_k = Field.absoluteGaloisGroup k` acts on `k^sep` by restriction. For a `k`-scheme `X`, `X_{k^sep} := X ×_k Spec k^sep` and `X_{k̄} := X ×_k Spec k̄`.
- Cohomological indexing: `H^i(M[r]) = H^{i+r}(M)`.
- Complexes of sheaves are written `M`, `N` (and `P` on a pro-étale site); the letters `K`, `L` denote fields only.

## Exact supplier contracts

### From Mathlib

- `Field.absoluteGaloisGroup` (`Mathlib/FieldTheory/AbsoluteGaloisGroup.lean`, line 42), `K̄ ≃ₐ[K] K̄` with its Krull topology and topological group structure, and `Field.absoluteGaloisGroup.mapOfAlgebra`. `IntermediateField.fixingSubgroup_isOpen` (`Mathlib/FieldTheory/KrullTopology.lean`, line 170): fixing subgroups of finite-dimensional intermediate fields are open.
- `spectralNorm`, `spectralNorm.normedField`, `spectralNorm_unique` and `spectralNorm_eq_of_equiv` (`Mathlib/Analysis/Normed/Unbundled/SpectralNorm.lean`, lines 381, 755, 699, 451). The last says that every `K`-automorphism of an algebraic extension is an isometry for the spectral norm; it carries no continuity or completeness statement.
- `UniformSpace.Completion`, `UniformSpace.Completion.map`, `map_id`, `map_comp`, `map_unique`, `ext` (`Mathlib/Topology/UniformSpace/Completion.lean`, lines 496, 506, 491, 414) and the field structure `UniformSpace.Completion.instField` (`Mathlib/Topology/Algebra/UniformField.lean`, line 148).
- `IsAlgClosed.of_denseRange` (`Mathlib/Analysis/Normed/Field/Dense.lean`, line 46). Its hypotheses include `CharZero`: it gives algebraic closedness of `C` in characteristic zero only. `IsAlgClosed.of_exists_root` and the continuity of roots `Polynomial.exists_roots_norm_sub_lt_of_norm_coeff_sub_lt` (`Mathlib/Analysis/Normed/Field/Approximation.lean`) are used for the density of `K^sep`.
- `SeparableClosure` (`Mathlib/FieldTheory/IsSepClosed.lean`, line 348), `AlgebraicClosure`, `IsSepClosed`, `IsPurelyInseparable`.
- `TopRep` (`Mathlib/RepresentationTheory/Continuous/TopRep.lean`, line 31): a topological module with a `ContRepresentation`, equivalent to `Action (TopModuleCat k) G` by `TopRepEquivActionTop`. `continuousSMul_iff_stabilizer_isOpen` (`Mathlib/Topology/Algebra/MulAction.lean`, line 299).
- `AlgebraicGeometry.Scheme.smallEtaleTopology` (`Mathlib/AlgebraicGeometry/Sites/Etale.lean`, line 50) and `CategoryTheory.Sheaf.H` with `Sheaf.H.map` (`Mathlib/CategoryTheory/Sites/SheafCohomology/Basic.lean`, lines 57, 112). Mathlib's `Scheme.EllAdicCohomology` is pro-étale `ℤ_ℓ`-cohomology of schemes with no Galois action and is not used.

### From Tau Ceti

- `TauCeti.continuousLocalCyclotomicCharacter` (`TauCeti/FieldTheory/Galois/AbsoluteGaloisGroup/Cyclotomic/Character.lean`, line 54) and `TauCeti.IsArithFrobeniusLift.coe_localCyclotomicCharacter` (`TauCeti/NumberTheory/LocalField/Unramified/Inertia/Cyclotomic.lean`, line 61): the cyclotomic character of an arithmetic Frobenius lift of a local field is the residue cardinality, for `p` prime to the residue characteristic. `TauCeti.PadicTateTwist` (`TauCeti/RingTheory/RootsOfUnity/PadicTateTwist.lean`, line 88). Tau Ceti has no étale site of adic spaces and no Galois action on cohomology at the pin.

### From TauCetiRoadmap.AdicEtaleGeometry, AdicSpacesPartII and AdicSpacesPartIV

- AdicEtaleGeometry A1.6 (*etale-site*): `AdicSpace.smallEtale X`, its topology, and for `g : X′ → X` the continuous finite-limit-preserving base change `AdicSpace.smallEtale.map`, `AdicSpace.etaleSheafPullback`, `AdicSpace.etaleSheafPushforward` and the coherence `AdicSpace.smallEtale.mapComp`; A1.7 (*etale-site-and-geometric-points*): `AdicSpace.GeometricPoint`, its fibre functor and the stalk comparison `(g^{-1}F)_{ξ′} ≅ F_{g∘ξ′}`; A1.1 (*strongly-sheafy-huber-pair*); A1.14 (*etale-descent-along-algebraic-extension*): for qcqs `X` locally of finite type over `Spa(K, K⁺)` and `L/K` separable algebraic with finite subextensions `L_i`, base change is an equivalence `2-colim_i (X_{L_i})_{ét,qcqs} ≃ (X_{L̂})_{ét,qcqs}`; A1.14 (*proetale-field-extension-slice*): `X_L = lim_i X_{L_i}` is a pro-finite-étale object of `X_proét`.
- AdicSpacesPartII §R0.7 (*fibre-products-existence*), §R1.1 (*rigid-analytic-space*), §R1.2 (*scheme-fibre-product-analytification*: `Y ×_S R` for a scheme `Y` locally of finite type over `S` and a locally ringed map `R → S` from an adic space, with its universal property).
- AdicSpacesPartIV R4 (*proetale-site-functoriality*): base change of pro-étale sites for morphisms of locally noetherian analytic adic spaces, with `ν_Y ∘ f_proét ≅ f_ét ∘ ν_X` and composition.

### From TauCetiRoadmap.ClassicalAdicEtaleCohomology

- §1.1: `Sh(X_ét, Λ)`, `RΓ(U, −)`, `R^q g_*`, `D⁺`, the restriction and exactness statements, and for `X = Spa(K, 𝒪_K)` the equivalence `F ↦ F_ξ` with discrete `Λ[G_K]`-modules and `H^n(Spa(K, 𝒪_K), F) ≅ H^n_cont(G_K, F_ξ)`. The action on `F_ξ` is the one fixed in Conventions.
- §1.3: Leray spectral sequences for composites; the Hochschild–Serre spectral sequence (a) for finite étale Galois covers and (b) for pro-finite-étale `G`-torsors of qcqs objects, with `E_2 = H^p_cont(G, H^q(Ṽ, F))` under (★), which holds for `F = ν^*F′`; the colimit formula `colim_j H^i(U_j, F) ≅ H^i(U, ν^*F)` for qcqs pro-étale `U = lim U_j`; the unit `F ≅ Rν_*ν^*F` (so `H^i(X_ét, F) ≅ H^i(X_proét, ν^*F)`).
- §1.4: `μ_n` for `n` invertible, `Λ(r)`, `F(r)`, `g^{-1}(F(r)) ≅ (g^{-1}F)(r)`, `(μ_n)_ξ = μ_n(C)`, and the Kummer sequence.
- §1.5: colimit-presented tilde-limits and their base change along qcqs morphisms locally of weakly finite type; the colimit theorem `colim_i H^n(X_i, F_i) ≅ H^n(X, F)` for a tilde-limit whose étale topos is the limit of the finite-stage topoi, for all abelian sheaves and bounded-below complexes; the stalk formula `(R^q g_*F)_ξ ≅ colim_{(V,v̄) ∈ N(ξ)} H^q(V ×_X X′, F)` for arbitrary `g`.
- §7.1: every morphism of adic spaces `Spa(C′, C′⁺) → Spa(C, C⁺)` is `Spa` of a unique extension of geometric field pairs.
- §8.2: Huber's comparison (Theorem 3.7.2): for an adic space `R`, a scheme `S`, a locally ringed `R → S` and a proper `S`-morphism `f` of schemes locally of finite type, `φ_Y^* R⁺f_* ≅ R⁺f^ad_* φ_X^*` on torsion `D⁺`, natural in the data.
- §8.4: for proper `f` of locally noetherian analytic adic spaces with `dim.tr f ≤ d` and every `ℤ/n`-module sheaf, `n > 0`, `R^q f_* F = 0` for `q > 2d`.
- §9.7: for an algebraically closed complete rank-one `C`, a proper smooth rigid `X/C` and a finite locally constant `ℤ/n`-sheaf with `n` invertible in `𝒪_C`, `H^i(X, L)` is finite; and the trace `t_X : H^{2d}(X_C, ℤ/n(d)) → ℤ/n` for smooth proper `X/K` of pure dimension `d`.
- §11.1: for `C` separably closed and complete, a qcqs `X` locally algebraically of finite type over `Spa(C, 𝒪_C)` (Huber's Proposition 6.1.1), a noetherian `B` killed by `n` prime to the residue characteristic and a constructible `B`-sheaf `F`, every `H^q(X, F)` is finitely generated over `B`.

### From TauCetiRoadmap.SchemeAndStackFoundations and EtaleCohomologyFoundations

- SchemeAndStackFoundations §1.10 (`smallEtale_map` with continuity, finite limits, `smallEtale_map_id`, `smallEtale_map_comp`, specialised to schemes by *smallEtale_ofScheme*); §2.1 (`Sheaf.H.pullback` with `pullback_id`, `pullback_comp`, `pullback_δ`, `pullback_naturality`; `Sheaf.higherDirectImage` with `higherDirectImage_iso_sheafify`); §2.2 (`leray_spectral_sequence`); §2.15 (`etale_galois_comparison`, `etale_cohomology_limits`, `hochschildSerre_galois_covering`); §0.23a (`universalHomeomorphismEtaleEquivalence`).
- EtaleCohomologyFoundations §F.0.3 (`VanishingCycles.etaleTateTwists`), §F.0.4 (topological invariance of cohomology), §F.1 (`VanishingCycles.finiteCoefficientCohomology`, including cup products), §F.2.1 (`VanishingCycles.properBaseChange`), §F.3 (`VanishingCycles.etaleFiniteness`), §F.4.0 (`ContinuousRep`), §F.4.6 (`VanishingCycles.adicFunctoriality`), §F.10.2 (`VanishingCycles.frobeniusCohomology`).

### From the remaining suppliers

- ProfiniteCohomology Layer 0 (stabilisers of discrete modules are open; the dictionary between discrete modules and `TopRep` objects), Layer 1 (`continuousCohomology` on `TopRep`, restriction and inflation), Layer 10 (`H^n(G, M)` in all degrees for profinite `G` and discrete `M`).
- EnhancedDerivedSheaves §0.3 (`ClassicalDerived.tensorHom`, `ClassicalDerived.inverseLimits`) and §0.4 (`ClassicalDerived.functorCoherence`); DerivedModuleAlgebra §1.T.1 (`lim`, `lim¹`, Mittag–Leffler vanishing and the Milnor sequence).
- ArithmeticGaloisRepresentations §1.1 (continuous representations on `ContinuousRep`) and §1.2 (*TateTwist.zlOne*, `tateTwist`, identified with `TauCeti.PadicTateTwist`).
- AInfCohomology §AI.3.1 (`AInf.primitive_mod_p_comparison`): for `X` proper smooth over a complete algebraically closed extension `C` of `ℚ_p` and an `𝔽_p`-local system `L`, `H^i_ét(X, L)` is finite-dimensional and vanishes for `i > 2 dim X`.
- PadicDifferentialEquationsAndRigidCohomology §RD.0.33: the completion of an algebraic closure of a complete non-archimedean field is algebraically closed, in every characteristic.
- PadicPeriodRings §1.1 (`completedGaloisAction` on `ℂ_p`) and §2 (*PadicFieldCompletion*): used only in Checks.

### Gaps against named suppliers

- `proper-rigid-finiteness` (ClassicalAdicEtaleCohomology §9.7): for an algebraically closed complete rank-one field `C`, a proper rigid `C`-space `X` that need not be smooth, and `n` invertible in `𝒪_C`, every `H^i(X, ℤ/n)` is finite. §9.7 states this for smooth proper `X` only; §11.1 proves finiteness for qcqs spaces that are locally algebraically of finite type over `C` (Huber's Proposition 6.1.1), so the gap is the proper spaces without such a presentation. Needed by §4.4(d).

## How to read the build

Layer 0 is field theory close to Mathlib: the completed algebraic closure, the extension of Galois automorphisms and the automorphisms of the geometric point. Layer 1 first constructs, for any automorphism `a` of a space `Y` over `X`, the induced automorphism of `H^i(Y, p^{-1}M)`, and then specialises it to `X_C → X` and to `X_{k^sep} → X`, with functoriality. Layer 2 proves that the action is discrete, identifies it with the module structure of higher direct images to the base point, and identifies the Hochschild–Serre `E_2` term; it also compares with the scheme-side adic action. Layer 3 passes to `ℓ`-adic and rational coefficients and proves continuity. Layer 4 proves twisting, the comparison with proper schemes, and the passage from finiteness to representations.

## Layer 0: The Galois group and the completed algebraic closure

### 0.1 The completed algebraic closure

Equip `K̄` with the spectral norm `spectralNorm.normedField K K̄`; it extends `|·|` (`spectralNorm_extends`) and is the unique power-multiplicative `K`-algebra norm on `K̄` (`spectralNorm_unique`). Define `C := UniformSpace.Completion K̄`, a complete non-archimedean field, with `𝒪_C = {|x| ≤ 1}` and `𝔪_C = {|x| < 1}`. Prove:

- `K^sep` is dense in `C`. For `a ∈ K̄` with `a^{p^e} = b ∈ K^sep`, the separable polynomials `X^{p^e} − tX − b` with `t ∈ K^×`, `|t| → 0`, have roots tending to `a` by the continuity of roots; hence `K^sep` is dense in `K̄` and in `C`. In characteristic zero `K^sep = K̄`. (dejongvanderput1996, §3.6, line 1477, where `C` is introduced as the completion of `K^sep`.)
- `C` is algebraically closed (PadicDifferentialEquationsAndRigidCohomology §RD.0.33; in characteristic zero Mathlib `IsAlgClosed.of_denseRange`). Consequently `(C, 𝒪_C)` is a geometric field pair in the sense of ClassicalAdicEtaleCohomology §7.1, and the structure map `ξ_C : Spa(C, 𝒪_C) → Spa(K, 𝒪_K)` is an `AdicSpace.GeometricPoint` (AdicEtaleGeometry A1.7).
- `Spa(C, 𝒪_C) ∼ lim_L Spa(L, 𝒪_L)` over the finite subextensions `L` of `K^sep/K`, as a colimit-presented tilde-limit (ClassicalAdicEtaleCohomology §1.5 (2)): `colim_L 𝒪_L = 𝒪_{K^sep}`, its completion is `𝒪_C`, and finite-stage detection holds because `𝒪_L ∩ ϖ^n 𝒪_{K^sep} = ϖ^n 𝒪_L` for a pseudouniformiser `ϖ ∈ K`.

**Checks.**

- For `K = ℚ_p`, `C` is Mathlib's `PadicComplex p` up to the `ℚ_p`-isomorphism `AlgebraicClosure ℚ_p ≅ PadicAlgCl p`, an isometry by the uniqueness of the spectral norm; algebraic closedness is `PadicComplex.isAlgClosed`.
- For `K = 𝔽_p((t))`, `K^sep ≠ K̄` (the root of `X^p − t` is not separable), `K̄` is not complete, and `C` is algebraically closed although `IsAlgClosed.of_denseRange` does not apply (`CharZero` fails); the root `t^{1/p}` is the limit of roots of `X^p − sX − t` as `s → 0`.
- If `K` is algebraically closed then `K̄ = K = C` and `ξ_C` is the identity. A definition taking `C := K̄` without completing gives an incomplete field for `K = ℚ_p` (`[K̄ : K]` infinite), on which `Spa` is not the geometric point of AdicEtaleGeometry A1.7.
- For `K = ℚ_p` the norm `|·|_p` on `K̄ = ℚ_p(√p, …)` gives `|√p| = p^{-1/2}`; a norm extending `|·|` that is not power-multiplicative (for instance `|a + b√p| = max(|a|, |b|)` on `ℚ_p(√p)`, which gives `|√p| = 1`) is excluded by uniqueness.

*Needs:* Mathlib `spectralNorm.normedField`, `spectralNorm_extends`, `spectralNorm_unique`, `UniformSpace.Completion`, `SeparableClosure`, `Polynomial.exists_roots_norm_sub_lt_of_norm_coeff_sub_lt`, `IsAlgClosed.of_denseRange`; PadicDifferentialEquationsAndRigidCohomology §RD.0.33; ClassicalAdicEtaleCohomology §§1.5, 7.1; AdicEtaleGeometry A1.7.

### 0.2 Galois automorphisms extend to C

For `σ ∈ G_K`, `σ` is an isometry of `K̄` (`spectralNorm_eq_of_equiv`), hence uniformly continuous; define `σ̂ := UniformSpace.Completion.map σ : C → C`. Prove (dejongvanderput1996, §3.6, page 36, line 1479):

- `σ̂` is a continuous `K`-algebra automorphism of `C`, isometric, and the unique continuous map `C → C` extending `σ` (`UniformSpace.Completion.map_unique`); it preserves `𝒪_C` and `𝔪_C`.
- `(στ)^ = σ̂ ∘ τ̂` and `1̂ = id` (`map_comp`, `map_id`).
- `σ ↦ σ̂` is a group isomorphism from `G_K` onto the group `Aut_cont(C/K)` of continuous `K`-algebra automorphisms of `C`. Injectivity is restriction to `K̄`. For surjectivity, a continuous `K`-algebra endomorphism `τ` of `C` sends `K̄` into `K̄` (each `a ∈ K̄` goes to a root of its minimal polynomial), restricts to an element `σ` of `G_K` (a `K`-endomorphism of an algebraic extension is surjective), and `τ = σ̂` by density.
- The action map `G_K × C → C`, `(σ, x) ↦ σ̂(x)`, is jointly continuous for the Krull topology: for `x ∈ C`, `ε > 0` and `σ₀`, choose `a ∈ K̄` with `|x − a| < ε`; on the open coset `σ₀ · Fix(K(a))` (`IntermediateField.fixingSubgroup_isOpen`) and for `|y − x| < ε`, `|σ̂(y) − σ̂₀(x)| < ε` by the isometry.
- For a finite extension `L ⊆ K̄` of `K`, the extension of `σ ∈ G_L` computed over `L` is the extension computed over `K` (both are the unique continuous extension).
- For a second algebraic closure `K̄′` with completion `C′` and a `K`-isomorphism `τ : K̄ → K̄′`, `τ` is isometric (uniqueness of the spectral norm), `τ̂ : C → C′` is an isometric isomorphism, and `τ̂ ∘ σ̂ ∘ τ̂⁻¹ = (τστ⁻¹)^` for `σ ∈ G_K`.

**Checks.**

- `σ = 1` extends to `id_C`; every `σ̂` fixes the image of `K`.
- For `K = ℚ_3` and `σ` with `σ(√3) = −√3`, `σ̂` is not the identity although it is isometric; restricted to `ℚ_3(√3)` it is the nontrivial automorphism.
- For finite `K/ℚ_p` inside `PadicAlgCl p`, `σ̂` is PadicPeriodRings §1.1's `completedGaloisAction`, transported along the isometry `AlgebraicClosure K ≅ PadicAlgCl p` of §0.1; joint continuity recovers `completedGaloisAction_continuous`.
- `ℂ_p` has discontinuous field automorphisms (as an abstract field it is isomorphic to `ℂ`); they are not in `Aut_cont(ℂ_p/ℚ_p)`, and the surjectivity statement fails without the continuity requirement.
- For `K = 𝔽_p((t))` and `σ ∈ G_K`, `σ̂` fixes `t^{1/p}` (the only `p`-th root of `t`), so `σ̂` is determined by `σ|_{K^sep}`.

*Needs:* §0.1; Mathlib `Field.absoluteGaloisGroup`, `spectralNorm_eq_of_equiv`, `spectralNorm_unique`, `UniformSpace.Completion.map`, `UniformSpace.Completion.map_unique`, `UniformSpace.Completion.map_comp`, `UniformSpace.Completion.map_id`, `IntermediateField.fixingSubgroup_isOpen`.

### 0.3 Automorphisms of the geometric point

Prove that every morphism of adic spaces `a : Spa(C, 𝒪_C) → Spa(C, 𝒪_C)` with `ξ_C ∘ a = ξ_C` equals `Spa(σ̂)` for a unique `σ ∈ G_K`, and that `σ ↦ Spa(σ̂)` is an anti-isomorphism from `G_K` onto the group of such automorphisms: `Spa((στ)^) = Spa(τ̂) ∘ Spa(σ̂)`. The morphism `a` is `Spa` of a unique continuous `K`-algebra endomorphism of `C` (ClassicalAdicEtaleCohomology §7.1), which is some `σ̂` by §0.2 (dejongvanderput1996, §3.6, line 1479). For an étale neighbourhood `(V, v̄)` of `ξ_C` in `Spa(K, 𝒪_K)_ét`, `V = Spa(L, 𝒪_L)` for a finite separable `L/K` and `v̄` corresponds to a `K`-embedding `L → K^sep ⊆ C`; precomposition with `Spa(σ̂)` corresponds to postcomposition of the embedding with `σ`. This is the action on stalks fixed in Conventions.

**Checks.**

- For `L = K(√a)` quadratic, `Hom_K(L, C)` has two elements and the nontrivial class of `G_K/G_L` swaps them.
- For `L/K` cyclic of degree three with generator `g` and an embedding `τ₀`, the element `σ` restricting to `g` sends `τ₀` to `g ∘ τ₀`; the opposite convention would send it to `g⁻¹ ∘ τ₀`, which differs, and composing in that convention gives a right action.
- For `K = C`, the only automorphism of `ξ_C` over `Spa(K, 𝒪_K)` is the identity.

*Needs:* §§0.1–0.2; ClassicalAdicEtaleCohomology §7.1; AdicEtaleGeometry A1.7.

### Examples

For `K = ℚ_2`, `σ ∈ G_K` with `σ(i) = −i` and `σ(√2) = √2`: `σ̂` acts on `μ_4(C) = {±1, ±i}` by complex conjugation, and on `Hom_{ℚ_2}(ℚ_2(i), C)` by the swap. For `K = 𝔽_2((t))` and the Artin–Schreier extension `L = K(α)`, `α² + α = t⁻¹`, the nontrivial element of `Gal(L/K)` is `α ↦ α + 1`, and its extension to `C` fixes `t^{1/2}`.

### Dependencies

Mathlib field theory, spectral norm and uniform completion; PadicDifferentialEquationsAndRigidCohomology §RD.0.33; ClassicalAdicEtaleCohomology §§1.5, 7.1; AdicEtaleGeometry A1.7.

## Layer 1: The action on cohomology

### 1.1 Automorphisms of a cover act on cohomology

Work in one of the following settings, with the étale site written `Y_τ`: (a) locally strongly sheafy analytic adic spaces with their étale sites (AdicEtaleGeometry A1.6, ClassicalAdicEtaleCohomology §1.1); (b) locally noetherian analytic adic spaces with their pro-étale sites (AdicSpacesPartIV R4, *proetale-site-functoriality*; ClassicalAdicEtaleCohomology §1.1); (c) schemes with their small étale sites (SchemeAndStackFoundations §§1.10, 2.1). Let `p : Y → X` be a morphism, `a : Y → Y` an automorphism with `p ∘ a = p`, `Λ` a ring and `M ∈ D⁺(X_τ, Λ)`. Define `c_a : a^{-1} p^{-1} M ≅ p^{-1} M` as the composite of the coherence isomorphism `a^{-1} p^{-1} ≅ (p ∘ a)^{-1}` (AdicEtaleGeometry A1.6 `AdicSpace.smallEtale.mapComp`; AdicSpacesPartIV R4; SchemeAndStackFoundations §1.10 `smallEtale_map_comp`) with the identity `(p ∘ a)^{-1} = p^{-1}`. Define the induced automorphism `a^♮ := H^i(c_a) ∘ a^* : H^i(Y, p^{-1}M) → H^i(Y, p^{-1}M)`, where `a^* : H^i(Y, W) → H^i(Y, a^{-1}W)`, for `W ∈ D⁺(Y_τ, Λ)`, is the cohomology pullback along the morphism of sites of `a` (SchemeAndStackFoundations §2.1 `Sheaf.H.pullback`; on analytic sites the unit `W → Ra_* a^{-1} W` of ClassicalAdicEtaleCohomology §1.1 composed with `RΓ ∘ Ra_* ≅ RΓ` of §1.3). The same formula defines `a^♮` on `RΓ(Y, p^{-1}M)` and on `H^i(U ×_X Y, p^{-1}M)` for every `U` étale over `X`. (dejongvanderput1996, §3.6, lines 1481–1488.)

- **Composition.** `(a ∘ b)^♮ = b^♮ ∘ a^♮` and `id^♮ = id`: the coherence isomorphisms satisfy the cocycle identity `c_{a∘b} = c_b ∘ b^{-1}(c_a)` under `(a ∘ b)^{-1} ≅ b^{-1} a^{-1}`, and `(a ∘ b)^* = b^* ∘ a^*` (`Sheaf.H.pullback_comp`).
- **Degree zero.** For a sheaf of sets `ℱ = h_V` represented by `V` étale over `X`, `H⁰(Y, p^{-1}h_V) = Hom_X(Y, V)` and `a^♮(s) = s ∘ a`. For a sheaf `ℱ` of `Λ`-modules, `a^♮` on `H⁰` is `Λ`-linear and natural in `ℱ`.
- **Linearity and naturality.** `a^♮` is `Λ`-linear and natural in `M` for morphisms in `D⁺(X_τ, Λ)`; it commutes with the connecting maps of distinguished triangles in `D⁺(X_τ, Λ)` (`Sheaf.H.pullback_δ`); it commutes with change of coefficients along `Λ → Λ′`.
- **Base change of the cover.** For `g : X′ → X` with `Y′ := Y ×_X X′` and `a′ := a × id`, `a′^♮ ∘ g_Y^* = g_Y^* ∘ a^♮` on `H^i(Y, p^{-1}M) → H^i(Y′, p′^{-1} g^{-1} M)`.
- **Cup products.** With the cup product `H^i(Y, p^{-1}M) ⊗_Λ H^j(Y, p^{-1}N) → H^{i+j}(Y, p^{-1}(M ⊗^L_Λ N))` induced by the derived tensor of EnhancedDerivedSheaves §0.3 (`ClassicalDerived.tensorHom`) and the lax monoidal structure of `RΓ` from §0.4 (`ClassicalDerived.functorCoherence`) — on schemes the cup product of EtaleCohomologyFoundations §F.1 — `a^♮(x ∪ y) = a^♮(x) ∪ a^♮(y)`, because inverse image is monoidal and `c_a` is compatible with the tensor isomorphism `p^{-1}(M ⊗ N) ≅ p^{-1}M ⊗ p^{-1}N`.
- **Finite Galois covers.** For a finite étale Galois cover `p : U → X` with group `G` (settings (a), (c)), `g ↦ (g^{-1})^♮` is the left `G`-action on `H^q(U, p^{-1}F)` whose group cohomology is the `E_2` term of ClassicalAdicEtaleCohomology §1.3 (a) and SchemeAndStackFoundations §2.15.

**Checks.**

- For `X = Spa(K, 𝒪_K)`, `Y = Spa(C, 𝒪_C)`, `a = Spa(σ̂)` and `ℱ = μ_n = h_V` with `V = Spa(K[T]/(T^n − 1))` (`n` invertible in `K`), `Hom_X(Y, V) = μ_n(C)` and `a^♮(ζ) = σ(ζ)`: the degree-zero formula computes the convention witness. Replacing `a^♮` by `(a^{-1})^♮` gives `ζ ↦ σ⁻¹(ζ)`.
- For `X` a point, `Y = X ⊔ X` and `a` the swap, `H⁰(Y, ℤ) = ℤ²` and `a^♮` swaps the coordinates; for `a = id`, `a^♮ = id`.
- For `Y = ∅` every cohomology group is zero and `a^♮` is the unique map.
- The composition law reverses the order: for `X = Spa(K, 𝒪_K)` and `Y = Spa(L ⊗_K C)` with `L/K` Galois with group `S₃` (for `K = ℚ_2`, the splitting field of `T³ − 2`, in which `ζ_3` generates the unramified quadratic subextension), let `σ, τ ∈ G_K` restrict to an element `s` of order two and an element `r` of order three of `Gal(L/K)`, and let `a = Spa(id_L ⊗ σ̂)`, `b = Spa(id_L ⊗ τ̂)`. On `H⁰(Y, ℤ) = ℤ^{Gal(L/K)}` the rule of §1.2 gives `a^♮(δ_g) = δ_{sg}` and `b^♮(δ_g) = δ_{rg}`, so `(a ∘ b)^♮ = b^♮ ∘ a^♮` sends `δ_1` to `δ_{rs}`, whereas the wrong order `a^♮ ∘ b^♮` sends it to `δ_{sr} ≠ δ_{rs}`; this agrees with `a ∘ b = σ_Y ∘ τ_Y = (τσ)_Y` and `ρ(τσ)(δ_1) = δ_{rs}`. A cyclic extension does not separate the two orders, since its Galois group is abelian.

*Needs:* AdicEtaleGeometry A1.6 (`AdicSpace.smallEtale.map`, `AdicSpace.etaleSheafPullback`, `AdicSpace.smallEtale.mapComp`); AdicSpacesPartIV R4 (*proetale-site-functoriality*); ClassicalAdicEtaleCohomology §§1.1, 1.3; SchemeAndStackFoundations §§1.10, 2.1 (`Sheaf.H.pullback`, `pullback_comp`, `pullback_δ`, `pullback_naturality`); EnhancedDerivedSheaves §§0.3–0.4 (`ClassicalDerived.tensorHom`, `ClassicalDerived.functorCoherence`); EtaleCohomologyFoundations §F.1.

### 1.2 The rigid action

Let `X` be a rigid `K`-space. For `σ ∈ G_K` define `σ_X := id_X × Spa(σ̂) : X_C → X_C`, the morphism induced by the universal property of `X_C = X ×_{Spa(K,𝒪_K)} Spa(C, 𝒪_C)` from `pr_C` and `Spa(σ̂) ∘ q` (`q : X_C → Spa(C, 𝒪_C)` the second projection). Prove (dejongvanderput1996, §3.6, lines 1481–1488):

- `pr_C ∘ σ_X = pr_C`, `(στ)_X = τ_X ∘ σ_X`, `1_X = id`; hence `σ_X` is an automorphism of `X_C` over `X` with inverse `(σ⁻¹)_X`.
- `q ∘ σ_X = Spa(σ̂) ∘ q`; if `X ≠ ∅` and `σ ≠ 1`, `σ_X` is not a morphism over `Spa(C, 𝒪_C)` (on global sections `C → 𝒪(X_C)` is injective, and `q ∘ σ_X = q` would force `σ̂ = id`).
- For `M ∈ D⁺(X_ét, Λ)` define `ρ(σ) := (σ_X)^♮` on `H^i(X_C, M_C)` and on `RΓ(X_C, M_C)` (§1.1 with `p = pr_C`). Then `ρ(στ) = ρ(σ) ρ(τ)`, `ρ(1) = id`, and each `ρ(σ)` is `Λ`-linear: `ρ` is a left action of `G_K` by `Λ`-linear automorphisms.
- The same definition on the pro-étale site (§1.1 (b)) gives a left action on `H^i(X_{C,proét}, pr_C^{-1} P)` for `P ∈ D⁺(X_proét, Λ)`, and the identification `H^i(X_{C,ét}, M_C) ≅ H^i(X_{C,proét}, ν^* M_C)` of ClassicalAdicEtaleCohomology §1.3 (i) is `ρ`-equivariant (AdicSpacesPartIV R4: `ν ∘ f_proét ≅ f_ét ∘ ν`).

**Checks.**

- For `X = Spa(K, 𝒪_K)` and `ℱ = μ_n` with `n` invertible in `K`, `H⁰(X_C, μ_n) = μ_n(C)` and `ρ(σ)(ζ) = σ(ζ)` (§1.1, first Check).
- For `X = Spa(L, 𝒪_L)` with `L/K` finite separable, `X_C = ⊔_{τ ∈ Hom_K(L, C)} Spa(C, 𝒪_C)`, `σ_X` maps the component `τ` to the component `σ⁻¹ ∘ τ`, and `ρ(σ)` maps the indicator of `τ` to the indicator of `σ ∘ τ` on `H⁰(X_C, ℤ) = ℤ^{Hom_K(L, C)}`. This is the left regular representation on `ℤ[G_K/G_L]`; the assignment `σ ↦ ρ(σ⁻¹)` reverses products and is not a homomorphism when `L/K` is Galois with group `S₃`.
- For `K = C`, `G_K` is trivial and `ρ` is the identity; for `X = ∅` all groups vanish.
- With the module pullback `𝒪_{X_C} ⊗ pr^{-1}ℱ` in place of `pr^{-1}ℱ`, `X = Spa(K, 𝒪_K)` and `ℱ = 𝒪_{X_ét}` would give `H⁰ = C`, whereas the definition here gives `H⁰(X_C, pr^{-1}𝒪_{X_ét}) = K^sep` (the stalk of `𝒪_{X_ét}` at `ξ_C`), a discrete `G_K`-module.

*Needs:* §§0.2, 1.1; AdicSpacesPartII §R0.7 (*fibre-products-existence*); AdicEtaleGeometry A1.6; AdicSpacesPartIV R4 (*proetale-site-functoriality*); ClassicalAdicEtaleCohomology §§1.1, 1.3.

### 1.3 Functoriality of the rigid action

Let `X` be a rigid `K`-space, `Λ` a ring and `M, N ∈ D⁺(X_ét, Λ)`. Prove that the following maps commute with `ρ(σ)` for every `σ ∈ G_K` (dejongvanderput1996, §3.6; zavyalov2025, §5.4, line 3798, for the use of these compatibilities):

- (a) pullback `g_C^* : H^i(X_C, M_C) → H^i(X′_C, (g^{-1}M)_C)` along a morphism `g : X′ → X` of rigid `K`-spaces, `g_C := g × id`;
- (b) the map induced by a morphism `M → N` in `D⁺(X_ét, Λ)`, in particular by a morphism of sheaves;
- (c) the connecting map `H^i(X_C, ℱ″_C) → H^{i+1}(X_C, ℱ′_C)` of a short exact sequence `0 → ℱ′ → ℱ → ℱ″ → 0` of sheaves of `Λ`-modules on `X_ét` (`pr_C^{-1}` is exact);
- (d) the cup product `H^i(X_C, M_C) ⊗_Λ H^j(X_C, N_C) → H^{i+j}(X_C, (M ⊗^L_Λ N)_C)`;
- (e) restriction: for a finite extension `L ⊆ K̄` of `K` (not necessarily separable), `(X_L)_C = X_C` canonically, `(ℱ_L)_C = ℱ_C`, and the action of `G_L` on `H^i((X_L)_C, ℱ_C)` defined over `L` is the restriction of `ρ` to `G_L`;
- (f) change of algebraic closure: for `τ : K̄ → K̄′` as in §0.2, `id_X × Spa(τ̂⁻¹) : X_C → X_{C′}` induces an isomorphism `H^i(X_{C′}, M_{C′}) → H^i(X_C, M_C)` that intertwines `ρ′(τστ⁻¹)` with `ρ(σ)`.

All six follow from §1.1: (a) is base change of the cover, (b)–(d) are naturality, connecting maps and cup products, (e) holds because for `σ ∈ G_L` the two definitions of `σ_X` coincide (§0.2), and (f) because `(id × Spa τ̂⁻¹) ∘ σ_X = (τστ⁻¹)_X ∘ (id × Spa τ̂⁻¹)`.

**Checks.**

- In (f), if `K̄′ = K̄` and `τ ∈ G_K`, then `id_X × Spa(τ̂⁻¹) = (τ⁻¹)_X`, so the isomorphism is `ρ(τ⁻¹) = ρ(τ)⁻¹` (up to the identification) and the statement reduces to `ρ(τ)⁻¹ ρ(τστ⁻¹) ρ(τ) = ρ(σ)`; with `ρ(τ)` in its place the statement would read `ρ(σ) = ρ(τ²στ⁻²)`, which fails for non-commuting `σ, τ`.
- For (c), the Kummer sequence `0 → μ_n → 𝔾_m → 𝔾_m → 0` on `X = Spa(K, 𝒪_K)` (ClassicalAdicEtaleCohomology §1.4, `n` invertible in `K`) pulls back to `0 → μ_n(C) → (K^sep)^× → (K^sep)^× → 0` on `H⁰(X_C, −)`, a sequence of discrete `G_K`-modules (`H⁰(X_C, pr^{-1}𝔾_m)` is the stalk `(K^sep)^×`), and its `G_K`-cohomology recovers the Kummer isomorphism `K^×/K^{×n} ≅ H¹(G_K, μ_n(C))`. Working with `𝔾_{m,X_C}` instead (global sections `C^×`) gives a module that is not discrete.
- For (e) with `L/K` purely inseparable of degree `p` (`K = 𝔽_p((t))`, `L = K(t^{1/p})`), `G_L = G_K` and the two actions agree.

*Needs:* §§0.2, 1.1, 1.2; EnhancedDerivedSheaves §§0.3–0.4; ClassicalAdicEtaleCohomology §§1.1, 1.4.

### 1.4 The scheme action

Let `X` be a scheme over a field `k`. For `σ ∈ G_k` let `σ_X := id_X × Spec(σ|_{k^sep}) : X_{k^sep} → X_{k^sep}` and, for `M ∈ D⁺(X_ét, Λ)`, `ρ(σ) := (σ_X)^♮` on `H^i(X_{k^sep}, M)` (§1.1 (c) with `p` the projection; milneLEC §12, page 81, and §17, page 114; sga4half, Arcata). Prove:

- `(στ)_X = τ_X ∘ σ_X`, so `ρ` is a left action by `Λ`-linear automorphisms; the analogues of §1.3 (a)–(f) hold, with rigid spaces replaced by `k`-schemes, `K̄` by `k^sep` and the cup product of EtaleCohomologyFoundations §F.1.
- The same construction on `X_{k̄}`, with `σ_X = id_X × Spec(σ)`, gives an action for which the pullback `H^i(X_{k^sep}, M) → H^i(X_{k̄}, M)` is a `G_k`-equivariant isomorphism (`X_{k̄} → X_{k^sep}` is a universal homeomorphism; SchemeAndStackFoundations §0.23a, EtaleCohomologyFoundations §F.0.4).
- For a field extension `k ⊆ k′` with compatible separable closures, the pullback along `X_{k′^sep} → X_{k^sep}` is equivariant for `G_{k′} → G_k`.

**Checks.**

- For `X = Spec k`, `H⁰(X_{k^sep}, μ_n) = μ_n(k^sep)` with `ρ(σ)(ζ) = σ(ζ)` for `n` invertible in `k`; for `k = ℝ` and `n = 4`, complex conjugation sends `i` to `−i`.
- For `k = 𝔽_q`, `X = Spec k` and `ℱ = μ_{ℓ^n}` with `ℓ ∤ q`, the arithmetic Frobenius `x ↦ x^q` acts on `H⁰(X_{k^sep}, μ_{ℓ^n})` by `ζ ↦ ζ^q`.
- For `X = Spec k′` with `k′/k` finite separable, `H⁰(X_{k^sep}, ℤ) = ℤ^{Hom_k(k′, k^sep)}` with `ρ(σ)` sending the indicator of `τ` to that of `σ ∘ τ` (stacks03N1, Tag 03QW, line 3969).

*Needs:* §1.1; SchemeAndStackFoundations §§0.23a, 1.10, 2.1; EtaleCohomologyFoundations §§F.0.4, F.1; Mathlib `SeparableClosure`, `AlgebraicClosure`.

### Examples

For `X = ℙ¹_K` and `n` invertible in `K`, `H²(X_C, μ_n) ≅ ℤ/n` by the first Chern class of `𝒪(1)`, which is defined over `K`; `ρ` is trivial on it. Hence `H²(X_C, ℤ/n) ≅ ℤ/n(−1)`, on which an arithmetic Frobenius lift of a local field with residue field `𝔽_q` (`n` prime to `q`) acts by `q⁻¹`.

### Dependencies

Layer 0; AdicEtaleGeometry A1.6; AdicSpacesPartII §R0.7; AdicSpacesPartIV R4; ClassicalAdicEtaleCohomology §§1.1, 1.3, 1.4; SchemeAndStackFoundations §§0.23a, 1.10, 2.1; EtaleCohomologyFoundations §§F.0.4, F.1; EnhancedDerivedSheaves §§0.3–0.4.

## Layer 2: Discreteness, the dictionary and Hochschild–Serre

### 2.1 Finite levels and discreteness for rigid spaces

Let `X` be a quasi-compact quasi-separated rigid `K`-space, `Λ` a ring and `M ∈ D⁺(X_ét, Λ)` (in particular any abelian sheaf, with no torsion hypothesis). Let `L` run over the finite subextensions of `K^sep/K`, ordered by inclusion. For `σ ∈ G_K` write `σ_{X,L} := id_X × Spa(σ|_L) : X_{σL} → X_L` and `σ_L^♮ := H^i(c) ∘ σ_{X,L}^* : H^i(X_L, M_L) → H^i(X_{σL}, M_{σL})`. Prove (dejongvanderput1996, Corollary 3.7.5 and its proof, page 39, lines 1594–1605; huber1996, §2.4, Corollary 2.4.6):

- the pullbacks along `X_C → X_L` induce an isomorphism `colim_L H^i(X_L, M_L) → H^i(X_C, M_C)` for every `i`;
- `ρ(σ) ∘ pr_{C/L}^* = pr_{C/σL}^* ∘ σ_L^♮`, so the isomorphism intertwines `ρ` with the action on the colimit given by the `σ_L^♮`;
- `G_L` fixes the image of `H^i(X_L, M_L)`, since `σ_{X,L} = id` for `σ ∈ G_L`;
- consequently every element of `H^i(X_C, M_C)` has open stabiliser, `H^i(X_C, M_C)` with the discrete topology is a discrete `G_K`-module (`continuousSMul_iff_stabilizer_isOpen`), and `H^i(X_C, M_C) = ⋃_L H^i(X_C, M_C)^{G_L}`.

The isomorphism is the colimit theorem of ClassicalAdicEtaleCohomology §1.5 for the system `(X_L)_L` with final object `X`: `X_C ∼ lim_L X_L` is the base change of `Spa(C, 𝒪_C) ∼ lim_L Spa(L, 𝒪_L)` (§0.1) along the qcqs morphism `X → Spa(K, 𝒪_K)` (ClassicalAdicEtaleCohomology §1.5 (b)), and its qcqs étale site is the 2-colimit of those of the `X_L` (AdicEtaleGeometry A1.14, *etale-descent-along-algebraic-extension*, with `L = K^sep` and `L̂ = C`).

**Checks.**

- For `X = Spa(K, 𝒪_K)` and `ℱ` a sheaf on `X_ét`, `colim_L ℱ(Spa(L, 𝒪_L)) = ℱ_{ξ_C}` and the statement is the description of the stalk as a discrete module (ClassicalAdicEtaleCohomology §1.1).
- Quasi-compactness is needed: for `K = ℚ_p`, `ℓ ≠ p`, `X = ⊔_{m ≥ 1} Spa(K, 𝒪_K)` and `ℱ` equal to `μ_{ℓ^m}` on the `m`-th component, `H⁰(X_C, ℱ_C) = ∏_m μ_{ℓ^m}(C)`, and a compatible system of primitive roots has stabiliser `ker(χ_ℓ)`, which is not open because `ℚ_p(μ_{ℓ^∞})/ℚ_p` is infinite; this element lies in no `H⁰(X_L, ℱ_L)`.
- For `ℱ = 𝒪_{X_ét}` as an abelian sheaf on `X = Spa(K, 𝒪_K)`, the colimit is `K^sep`; the statement does not compute `H⁰(X_C, 𝒪_{X_C}) = C`, which is not a discrete `G_K`-module.
- For `K = 𝔽_p((t))` the index set consists of the finite separable subextensions only; this suffices because `C` is the completion of `K^sep` (§0.1), and AdicEtaleGeometry A1.14 is stated for separable algebraic extensions.

*Needs:* §§0.1–0.2, 1.1–1.2; ClassicalAdicEtaleCohomology §1.5 (colimit theorem, base change of colimit-presented tilde-limits); AdicEtaleGeometry A1.14 (*etale-descent-along-algebraic-extension*); Mathlib `continuousSMul_iff_stabilizer_isOpen`; ProfiniteCohomology Layer 0.

### 2.2 Finite levels and discreteness for schemes

Let `X` be a quasi-compact quasi-separated scheme over `k` and `M ∈ D⁺(X_ét, Λ)`. Prove that `colim_L H^i(X_L, M) → H^i(X_{k^sep}, M)` is an isomorphism over the finite subextensions `L` of `k^sep/k`, compatibly with `ρ` as in §2.1, that `G_L` fixes the image of `H^i(X_L, M)`, and that `H^i(X_{k^sep}, M)` is a discrete `G_k`-module (stacks03N1, Theorem 53.1, Tag 03Q9, line 3733, and its proof; milneLEC §12, page 81). The isomorphism is SchemeAndStackFoundations §2.15 (`etale_cohomology_limits`) for `X_{k^sep} = lim_L X_L` with affine transition maps; the case of bounded-below complexes follows by the convergent hypercohomology spectral sequence.

**Checks.**

- `X = Spec k` and `M = ℱ`: `H⁰(X_{k^sep}, ℱ) = ℱ_{k^sep}` and higher groups vanish (SchemeAndStackFoundations §2.15, `limits_test_separable_closure`).
- For `X = ⊔_{m ≥ 1} Spec ℚ` (not quasi-compact) and `ℱ = μ_{ℓ^m}` on the `m`-th component, the compatible system of roots has non-open stabiliser `ker χ_ℓ`.

*Needs:* §§1.1, 1.4; SchemeAndStackFoundations §2.15 (`etale_cohomology_limits`); ProfiniteCohomology Layer 0.

### 2.3 The dictionary for rigid spaces

Let `f : X → Spa(K, 𝒪_K)` be a quasi-compact quasi-separated rigid `K`-space, `Λ` a ring and `M ∈ D⁺(X_ét, Λ)`. Under the equivalence of ClassicalAdicEtaleCohomology §1.1 between sheaves of `Λ`-modules on `Spa(K, 𝒪_K)_ét` and discrete `Λ[G_K]`-modules (stalk at `ξ_C`, with the action fixed in Conventions), prove that `R^i f_* M` corresponds to `(H^i(X_C, M_C), ρ)`: there is an isomorphism `(R^i f_* M)_{ξ_C} ≅ H^i(X_C, M_C)` of `Λ[G_K]`-modules, natural in `M` and compatible with connecting maps (dejongvanderput1996, Theorem 3.7.3, page 38, lines 1571–1587; zavyalov2025, §5.4, page 78, line 3798, citing huber1996, Proposition 2.3.10).

Route: by the stalk formula of ClassicalAdicEtaleCohomology §1.5, `(R^i f_* M)_{ξ_C} = colim_{(V, v̄)} H^i(V ×_{Spa K} X, M)`; the étale neighbourhoods `(Spa(L, 𝒪_L), v̄)` with `L ⊆ K^sep` finite are cofinal (§0.3), so the stalk is `colim_L H^i(X_L, M_L)`; the stalk action of `σ` (§0.3) is the system `σ_L^♮`; and §2.1 identifies this with `(H^i(X_C, M_C), ρ)`.

Deduce:

- For `ℱ, 𝒢 ∈ D⁺(X_ét, Λ)` and `i, j`, the map `Hom(R^i f_* ℱ, R^j f_* 𝒢) → Hom_{Λ[G_K]}(H^i(X_C, ℱ_C), H^j(X_C, 𝒢_C))` sending a sheaf morphism to its stalk at `ξ_C` is a bijection; in particular every morphism of sheaves on `Spa(K, 𝒪_K)_ét` between higher direct images induces a `ρ`-equivariant map, and every `ρ`-equivariant map arises from a unique such morphism.
- A morphism `R^i f_* ℱ → Λ` to the constant sheaf induces a `G_K`-invariant linear form `H^i(X_C, ℱ_C) → Λ`.
- For `g : X′ → X` over `Spa(K, 𝒪_K)`, the base-change morphism `R^i f_* M → R^i f′_* g^{-1} M` corresponds to `g_C^*`.

**Checks.**

- For `X = Spa(L, 𝒪_L)` with `L/K` finite separable and `M = ℤ`, `R⁰f_*ℤ = f_*ℤ` corresponds to `ℤ[G_K/G_L]` with the left regular action, matching §1.2's computation of `H⁰(X_C, ℤ)`.
- The trace `t_X : H^{2d}(X_C, ℤ/n(d)) → ℤ/n` of ClassicalAdicEtaleCohomology §9.7 (`n` invertible in `K`, `X` smooth proper of pure dimension `d`) comes from a morphism `R^{2d} f_* ℤ/n(d) → ℤ/n`, so `t_X ∘ ρ(σ) = t_X`. For `X = ℙ¹_K`, `t_X(c₁(𝒪(1))) = 1` and `c₁(𝒪(1))` is `ρ`-invariant, consistent with the equivariance. The mod-`p` trace of zavyalov2025, Theorem 5.4.2 and Remark 5.4.1 (line 3800), is a statement of the same kind.
- Convention test: for `X = Spa(K, 𝒪_K)` and `M = μ_n`, both sides are `μ_n(C)` with `ζ ↦ σ(ζ)`; the inverse convention on stalks (`v̄ ↦ v̄ ∘ Spa(σ̂⁻¹)`) is a right action and is not a `Λ[G_K]`-module structure for nonabelian `G_K/G_L`.

*Needs:* §§0.3, 2.1; ClassicalAdicEtaleCohomology §§1.1 (equivalence over `Spa(K, 𝒪_K)`), 1.5 (stalk formula), 9.7 (for the Check).

### 2.4 The dictionary for schemes

Let `f : X → Spec k` be quasi-compact quasi-separated and `M ∈ D⁺(X_ét, Λ)`. Under SchemeAndStackFoundations §2.15 (`etale_galois_comparison`: the stalk functor at `Spec k^sep → Spec k`, with the action of stacks03N1, Tag 03QW), prove that `R^i f_* M` corresponds to `(H^i(X_{k^sep}, M), ρ)`, with the same consequences as in §2.3 (stacks03N1, Theorem 53.1, Tag 03Q9, line 3733; Section 56, Tag 03QW, line 3963; Section 59, Tag 03QQ, line 4216). The route is SchemeAndStackFoundations §2.1 (`higherDirectImage_iso_sheafify`: the stalk is the colimit over étale neighbourhoods `Spec L`) followed by §2.2.

**Checks.**

- `X = Spec k′` with `k′/k` finite separable: `R⁰f_*ℤ ↦ ℤ[G_k/G_{k′}]`.
- For `k = ℝ` and `X = Spec ℂ`, `R⁰f_*μ_4 ↦ μ_4(ℂ)^{Hom_ℝ(ℂ,ℂ)} = μ_4(ℂ)²`, with complex conjugation acting by the swap composed with `ζ ↦ ζ̄` in each coordinate.

*Needs:* §§1.4, 2.2; SchemeAndStackFoundations §§2.1, 2.15.

### 2.5 The Hochschild–Serre spectral sequence

Let `X` be a quasi-compact quasi-separated rigid `K`-space (resp. a quasi-compact quasi-separated scheme over `k`) and `ℱ` a sheaf of `Λ`-modules on `X_ét`. Prove that the Leray spectral sequence of `f : X → Spa(K, 𝒪_K)` (resp. `Spec k`) has, after the identifications `H^p(Spa(K, 𝒪_K), 𝒢) ≅ H^p_cont(G_K, 𝒢_{ξ_C})` of ClassicalAdicEtaleCohomology §1.1 (resp. SchemeAndStackFoundations §2.15) and §2.3 (resp. §2.4), the form

    E_2^{p,q} = H^p_cont(G_K, (H^q(X_C, ℱ_C), ρ)) ⇒ H^{p+q}(X, ℱ),

natural in `ℱ`, with continuous cohomology of the discrete module of §2.1 in the sense of ProfiniteCohomology Layer 10; and that the edge map `H^n(X, ℱ) → H^n(X_C, ℱ_C)^{G_K}` is `pr_C^*` (dejongvanderput1996, Corollary 3.7.5, page 39; serreGC1997, Chapter I, §2). For rigid `X`, prove that this spectral sequence agrees from `E_2` on with the spectral sequence of ClassicalAdicEtaleCohomology §1.3 (b) for the pro-finite-étale `G_K`-torsor `X_{K^sep} = lim_L X_L → X` (AdicEtaleGeometry A1.14, *proetale-field-extension-slice*), under `H^q(X_{K^sep}, ν^*ℱ) ≅ colim_L H^q(X_L, ℱ_L) ≅ H^q(X_C, ℱ_C)` (ClassicalAdicEtaleCohomology §1.3 colimit formula and §2.1); in particular the `G_K`-module structure on `H^q(X_{K^sep}, ν^*ℱ)` given by the torsor is `ρ`.

**Checks.**

- For `X = Spa(K, 𝒪_K)` the spectral sequence collapses to `H^p(Spa(K, 𝒪_K), ℱ) = H^p_cont(G_K, ℱ_{ξ_C})`.
- For `X = Spa(L, 𝒪_L)` with `L/K` finite separable, `E_2^{p,q} = H^p(G_K, Ind_{G_L}^{G_K} H^q(Spa(C), −))` is concentrated in `q = 0` and Shapiro's lemma gives `H^p(G_L, ℱ_{ξ_C})`.
- Direction test: for `K = ℚ_2` and `ℱ = μ_5`, `H²(Spa(ℚ_2, ℤ_2), μ_5) ≅ Br(ℚ_2)[5] ≅ ℤ/5` (Kummer), and `E_2^{2,0} = H²(G_{ℚ_2}, μ_5(C))` with `ζ ↦ σ(ζ)` is `ℤ/5` by local duality. With the module `ζ ↦ σ⁻¹(ζ)`, which is `ℤ/5(−1)`, local duality gives `H²(G_{ℚ_2}, ℤ/5(−1)) ≅ H⁰(G_{ℚ_2}, ℤ/5(2))^∨ = 0`, because `2² = 4 ≢ 1 (mod 5)`.

*Needs:* §§2.1–2.4; ClassicalAdicEtaleCohomology §§1.1, 1.3; SchemeAndStackFoundations §§2.2, 2.15 (`leray_spectral_sequence`, `etale_galois_comparison`, `hochschildSerre_galois_covering`); AdicEtaleGeometry A1.14; ProfiniteCohomology Layers 0, 1, 10.

### 2.6 Agreement with the scheme adic action and the Frobenius normalisation

Let `X` be a locally Noetherian scheme over `k`, `ℓ` a prime invertible in `k`, and `(M_n)_n` coefficient descent data over `k` in the normalised adic-system category of EtaleCohomologyFoundations §F.4.1, so that each `M_n ∈ D^b_ctf(X_ét, ℤ/ℓ^n)`. Prove that the finite level `H^i(X_{k^sep}, M_n)` of the continuous `G_k`-action of EtaleCohomologyFoundations §F.4.6 is `ρ` of §1.4, compatibly with the reductions `M_{n+1} → M_n`. For `k` finite of cardinality `q`, prove that `ρ(φ)`, for `φ` the arithmetic Frobenius `x ↦ x^q`, is the inverse of the geometric Frobenius action of EtaleCohomologyFoundations §F.10.2 on `H^i(X_{k̄}, M_n)` (with its coefficient identification), transported along the equivariant isomorphism of §1.4. Route: `F_{X/k} × id = F_{X_{k̄}} ∘ φ_X⁻¹`, where `F_{X_{k̄}}` is the absolute `q`-power Frobenius of `X_{k̄}`, which acts as the identity on cohomology with its canonical coefficient identification (EtaleCohomologyFoundations §F.0.4) (sga4half, Arcata and Rapport; milneLEC §17, page 114).

**Checks.**

- `X = Spec 𝔽_q`, `M_n = μ_{ℓ^n}`: `ρ(φ)` multiplies the Tate coordinate by `q`; the §F.10.2 geometric Frobenius multiplies it by `q⁻¹`; the composite is the identity (EtaleCohomologyFoundations §F.10.2 Checks).
- On the finite constant sheaf of a geometric point both actions are trivial.
- For `X = ℙ¹_{𝔽_q}` and `M_n = ℤ/ℓ^n`, `H²(X_{k̄}, ℤ/ℓ^n) ≅ ℤ/ℓ^n(−1)`: `ρ(φ)` acts by `q⁻¹` and geometric Frobenius by `q`, agreeing with the §F.10.2b Check that `H²_c(𝔸¹, ℚ_ℓ) = ℚ_ℓ(−1)` has geometric trace `q`.

*Needs:* §1.4; EtaleCohomologyFoundations §§F.0.4, F.4.1, F.4.6, F.10.2.

### Examples

For `K = ℚ_p`, `ℓ ≠ p`, `X = Spa(K⟨T, T⁻¹⟩)` the closed unit circle and `ℱ = μ_ℓ`, the class of `T` under the Kummer map lies in `H¹(X, μ_ℓ)`, and its image in `H¹(X_C, μ_ℓ)` is `ρ`-invariant, consistent with the edge map of §2.5 landing in invariants.

### Dependencies

Layers 0–1; ClassicalAdicEtaleCohomology §§1.1, 1.3, 1.5, 9.7; AdicEtaleGeometry A1.14; SchemeAndStackFoundations §§2.1, 2.2, 2.15; EtaleCohomologyFoundations §§F.0.4, F.4.1, F.4.6, F.10.2; ProfiniteCohomology Layers 0, 1, 10.

## Layer 3: Adic and rational coefficients

### 3.1 The ℓ-adic cohomology groups of the geometric fibre

Let `X` be a rigid `K`-space, `ℓ` a prime and `j ∈ ℤ`, with `j = 0` if `ℓ = char K`. Let `T_j = (ℤ/ℓ^n(j))_{n ≥ 1}` be the tower of sheaves on `X_ét` with the reduction transition maps (ClassicalAdicEtaleCohomology §1.4 (iii); for `j = 0` the constant tower). Define (hansenzavyalov2023, proof of Theorem 3.3.2, page 39, line 1706; milneLEC §19, page 123):

- the naive group `H^i(X_C, ℤ_ℓ(j)) := lim_n H^i(X_C, ℤ/ℓ^n(j))`, with the inverse-limit topology of the discrete groups `H^i(X_C, ℤ/ℓ^n(j))`, the `ℤ_ℓ`-module structure through the quotients `ℤ/ℓ^n`, and the action `lim_n ρ`;
- the continuous group `H^i_cont(X_C, ℤ_ℓ(j)) := H^i(X_C, Rlim_n (T_j)_C) = H^i(Rlim_n RΓ(X_C, ℤ/ℓ^n(j)))` (EnhancedDerivedSheaves §0.3 `ClassicalDerived.inverseLimits`; derived global sections commute with derived limits), with the action `(σ_X)^♮` of §1.1 applied to `Rlim_n (T_j)_C` and the isomorphisms `σ_X^{-1} Rlim_n (T_j)_C ≅ Rlim_n σ_X^{-1}(T_j)_C ≅ Rlim_n (T_j)_C` (`σ_X^{-1}` is an equivalence of topoi, so commutes with derived limits; the second map is `Rlim` of the levelwise `c_σ`).

Prove the following.

- `lim_n ρ` and the action on `H^i_cont` are left actions by `ℤ_ℓ`-linear automorphisms.
- The Milnor sequence `0 → lim¹_n H^{i−1}(X_C, ℤ/ℓ^n(j)) → H^i_cont(X_C, ℤ_ℓ(j)) → H^i(X_C, ℤ_ℓ(j)) → 0` (DerivedModuleAlgebra §1.T.1) is exact and `G_K`-equivariant; the two groups agree when the system `H^{i−1}(X_C, ℤ/ℓ^n(j))` is Mittag–Leffler, in particular when its terms are finite.
- Derived reduction: `RΓ_cont(X_C, ℤ_ℓ(j)) ⊗^L_{ℤ_ℓ} ℤ/ℓ^m ≅ RΓ(X_C, ℤ/ℓ^m(j))` equivariantly, giving the equivariant short exact sequences `0 → H^i_cont/ℓ^m → H^i(X_C, ℤ/ℓ^m(j)) → H^{i+1}_cont[ℓ^m] → 0`.
- For `K ⊇ ℚ_p`, `ℓ = p` and `X` locally noetherian, `H^i_cont(X_C, ℤ_p(j)) ≅ H^i(X_{C,proét}, Ẑ_p(j))` with `Ẑ_p = lim_r ν^*ℤ/p^r` of ClassicalAdicEtaleCohomology §1.3, `ρ`-equivariantly for the pro-étale action of §1.2.
- For a finite extension `L ⊆ K̄`, the groups for `X_L` are those for `X` with the restricted action (§1.3 (e)).

**Checks.**

- `X = Spa(K, 𝒪_K)`, `ℓ` invertible in `K`, `j = 1`: `H⁰(X_C, ℤ_ℓ(1)) = lim μ_{ℓ^n}(C) = ℤ_ℓ(1)` along the `ℓ`-th power maps `μ_{ℓ^{n+1}} → μ_{ℓ^n}`, free of rank one, with `σ` acting through the cyclotomic character.
- `X = ∅`: all groups vanish. For `X = ⊔_{m ≥ 1} Spa(K, 𝒪_K)` the naive `H⁰(X_C, ℤ_ℓ) = ∏_m ℤ_ℓ` carries the inverse-limit topology of the discrete groups `H⁰(X_C, ℤ/ℓ^n) = ∏_m ℤ/ℓ^n`, for which the kernels `ℓ^n ∏_m ℤ_ℓ` of the projections form a base of open subgroups: this is the `ℓ`-adic topology, strictly finer than the product topology (every product-open subgroup contains some `∏_{m > M} ℤ_ℓ`, which `ℓ ∏_m ℤ_ℓ` does not), and it is not compact, because `∏_m ℤ_ℓ / ℓ ∏_m ℤ_ℓ = ∏_m ℤ/ℓ` is an infinite discrete quotient. The group is not finitely generated, so its inverse-limit topology is not the topology of a finitely generated `ℤ_ℓ`-module.
- The Milnor term is not zero in general: the tower of groups `⋯ → ℤ → ℤ → ℤ` with multiplication-by-`ℓ` maps has `lim = 0` and `lim¹ = ℤ_ℓ/ℤ ≠ 0`, so the naive and continuous groups are distinct constructions; for towers of finite groups (the case of §4.3) `lim¹ = 0`.
- For `ℓ = char K = p` and `X` the closed unit disc, `H¹(X_C, ℤ/p) = C⟨T⟩/{g^p − g}` (Artin–Schreier) is defined and infinite; no twist `ℤ/p(1)` is defined.

*Needs:* §§1.1–1.3; ClassicalAdicEtaleCohomology §§1.3, 1.4; EnhancedDerivedSheaves §0.3 (`ClassicalDerived.inverseLimits`); DerivedModuleAlgebra §1.T.1.

### 3.2 Continuity of the ℓ-adic action

With the notation of §3.1 and `X` quasi-compact quasi-separated, prove (serreGC1997, Chapter I, §2; dejongvanderput1996, Corollary 3.7.5, page 39):

- the action map `G_K × H^i(X_C, ℤ_ℓ(j)) → H^i(X_C, ℤ_ℓ(j))` is jointly continuous: each component `G_K × lim_m H^i_m → H^i_n` factors through the continuous action on the discrete module `H^i(X_C, ℤ/ℓ^n(j))` of §2.1;
- `H^i(X_C, ℤ_ℓ(j))` with this topology and action is an object of Mathlib's `TopRep ℤ_ℓ G_K` (a topological additive group with `ContinuousSMul ℤ_ℓ` and a `ContRepresentation`), hence a coefficient object for ProfiniteCohomology Layer 1's continuous cohomology;
- if `H^i(X_C, ℤ_ℓ(j))` is finite free over `ℤ_ℓ` and its inverse-limit topology is the `ℓ`-adic topology (both hold when the finite levels are finite and the group is torsion free, §4.3), it is a `ContinuousRep G_K ℤ_ℓ` in the sense of EtaleCohomologyFoundations §F.4.0 and ArithmeticGaloisRepresentations §1.1;
- pullbacks, sheaf maps, connecting maps of short exact sequences of towers and cup products (§1.3) are continuous equivariant maps in the limit.

**Checks.**

- For `X = Spa(K, 𝒪_K)` and `j = 1`, the action on `ℤ_ℓ(1)` is the continuous cyclotomic character `TauCeti.continuousLocalCyclotomicCharacter ℓ K`.
- The `ℤ_ℓ^×`-action on `ℚ_ℓ` with the discrete topology has continuous operators but is not jointly continuous (EtaleCohomologyFoundations §F.4.0 Check): joint continuity is the content of the first bullet, not a consequence of the continuity of each `ρ(σ)`.
- Quasi-compactness is used: for `K = ℚ_p`, `ℓ ≠ p` and `X = ⊔_{m ≥ 1} Spa(L_m, 𝒪_{L_m})` with `L_m = K(μ_{ℓ^m})`, the element of `H⁰(X_C, ℤ/ℓ)` equal to the indicator of one point over each `m` has stabiliser `G_{K(μ_{ℓ^∞})}`, which is not open, so the finite level is not a discrete `G_K`-module and the first bullet's argument does not apply.

*Needs:* §§2.1, 3.1; Mathlib `TopRep`; ProfiniteCohomology Layers 0–1; EtaleCohomologyFoundations §F.4.0 (`ContinuousRep`); ArithmeticGaloisRepresentations §1.1.

### 3.3 Rational coefficients

For a `ℤ_ℓ`-module `A` with a continuous action as in §3.2, define `A ⊗ ℚ_ℓ` with the topology in which the image of `A` is an open subgroup carrying its quotient topology, and define `H^i(X_C, ℚ_ℓ(j)) := H^i(X_C, ℤ_ℓ(j)) ⊗_{ℤ_ℓ} ℚ_ℓ` with the induced action (hansenzavyalov2023, line 1706). Prove that this is a topological `ℚ_ℓ`-vector space with jointly continuous `G_K`-action (an object of `TopRep ℚ_ℓ G_K`); that when `H^i(X_C, ℤ_ℓ(j))` is finitely generated, `H^i(X_C, ℚ_ℓ(j))` is finite-dimensional with its unique Hausdorff vector-space topology and is a `ContinuousRep G_K ℚ_ℓ`; and that the construction is functorial for the maps of §3.2.

**Checks.**

- `ℤ_ℓ/ℓ ⊗ ℚ_ℓ = 0`; `ℤ_ℓ(1) ⊗ ℚ_ℓ = ℚ_ℓ(1)`, a one-dimensional representation with character `χ_ℓ`.
- For `A = ∏_ℕ ℤ_ℓ`, `A ⊗ ℚ_ℓ` (bounded sequences up to scaling) is a proper subspace of `∏_ℕ ℚ_ℓ`; the definition is the tensor product, not the product of rationalisations.
- With the inductive-limit topology on `⋃_n ℓ^{−n}A` replaced by the discrete topology, the action of `ℤ_ℓ` on `ℚ_ℓ` is not jointly continuous.

*Needs:* §§3.1–3.2; Mathlib `TopRep`; EtaleCohomologyFoundations §F.4.0.

### Examples

For `X` the closed unit disc over `K` and `ℓ` invertible in `𝒪_K`, `H^i(X_C, ℤ_ℓ) = ℤ_ℓ` in degree zero with trivial action and vanishes in positive degree; for `ℓ = p` the residue characteristic and `char K = 0`, `H¹(X_C, ℤ/p)` is infinite and `H¹(X_C, ℤ_p)` is not finitely generated, while the action is still continuous.

### Dependencies

Layers 1–2; ClassicalAdicEtaleCohomology §§1.3, 1.4; EnhancedDerivedSheaves §0.3; DerivedModuleAlgebra §1.T.1; ProfiniteCohomology Layers 0–1; EtaleCohomologyFoundations §F.4.0; ArithmeticGaloisRepresentations §1.1.

## Layer 4: Twists, comparison and finiteness

### 4.1 Equivariant twisting

Let `X` be a rigid `K`-space, `n` invertible in `K`, `Λ` a `ℤ/n`-algebra, `ℱ` a sheaf of `Λ`-modules on `X_ét` and `j ∈ ℤ`. Let `Λ(j)(C) := Λ ⊗_{ℤ/n} μ_n(C)^{⊗j}` (dual powers for `j < 0`), a free `Λ`-module of rank one with `σ` acting by `ζ ↦ σ(ζ)` on `μ_n(C)`. Prove (stacks03N1, Example 59.3, line 4241; zavyalov2025, §5.4, line 3800):

- on `X_C`, the inclusion of global sections induces a canonical isomorphism of sheaves `(μ_n(C))_{X_C} ≅ μ_{n,X_C} = (μ_n)_C`, where the left side is the constant sheaf; it intertwines `c_σ` with `σ` acting on `μ_n(C)`. No primitive root of unity is chosen.
- the resulting isomorphism `H^i(X_C, ℱ(j)_C) ≅ H^i(X_C, ℱ_C) ⊗_Λ Λ(j)(C)` (cup product with the constant sheaf, which is finite free of rank one) is `G_K`-equivariant, with `ρ ⊗ (ζ ↦ σ(ζ))` on the right;
- for `ℓ` invertible in `K`, the limit isomorphisms `H^i(X_C, ℤ_ℓ(j)) ≅ H^i(X_C, ℤ_ℓ) ⊗_{ℤ_ℓ} ℤ_ℓ(j)`, the same for `H^i_cont`, and `H^i(X_C, ℚ_ℓ(j)) ≅ H^i(X_C, ℚ_ℓ) ⊗_{ℚ_ℓ} ℚ_ℓ(j)` are `G_K`-equivariant, where `ℤ_ℓ(j)` is the Tate twist of ArithmeticGaloisRepresentations §1.2 (*TateTwist.zlOne*, identified with `TauCeti.PadicTateTwist ℓ K̄`, using `μ_{ℓ^m}(K̄) = μ_{ℓ^m}(C)` for `ℓ` invertible in `K`);
- the same statements on schemes, with `C` replaced by `k^sep` and the twists of EtaleCohomologyFoundations §F.0.3;
- convention: an arithmetic Frobenius lift of a local field `K` with residue field `𝔽_q`, `ℓ ∤ q`, acts on `H⁰(X_C, ℤ_ℓ(1)) = ℤ_ℓ(1)` for `X = Spa(K, 𝒪_K)` by `q` (`TauCeti.IsArithFrobeniusLift.coe_localCyclotomicCharacter`), and a geometric Frobenius by `q⁻¹`, matching EtaleCohomologyFoundations §F.4.6.

**Checks.**

- Replacing a primitive `ζ ∈ μ_p(C)` by `ζ^u` multiplies the coordinate of a fixed element of `𝔽_p(1)` by `u⁻¹` (EtaleCohomologyFoundations §F.0.3); the canonical isomorphism of the first bullet involves no such choice.
- For `X = ℙ¹_K`, `H²(X_C, ℤ/n(1)) ≅ ℤ/n` with trivial action (first Chern class of `𝒪(1)`) and `H²(X_C, ℤ/n) ≅ ℤ/n(−1)`; the twisting isomorphism with `j = 1` identifies the first with the second tensored with `μ_n(C)`.
- For `j = 0` the isomorphism is the identity; for `n = 1` all groups vanish.
- For an elliptic curve `E/K` and `n` invertible in `K`, `H¹(E_C, μ_n) ≅ E[n](K̄)` has determinant the mod-`n` cyclotomic character `χ_n` (Weil pairing), so `H¹(E_C, ℤ/n) ≅ H¹(E_C, μ_n) ⊗ μ_n^{⊗(−1)}` has determinant `χ_n · χ_n^{−2} = χ_n^{−1}`. Twisting in the wrong direction (`⊗ μ_n` instead of `⊗ μ_n^{⊗(−1)}`) would give `χ_n³`; for `n = 7` and `K = ℚ_2` the two values at an arithmetic Frobenius lift are `2^{−1} ≡ 4` and `2³ ≡ 1 (mod 7)`.

*Needs:* §§1.2–1.4, 3.1–3.3; ClassicalAdicEtaleCohomology §1.4; EtaleCohomologyFoundations §§F.0.3, F.4.6; ArithmeticGaloisRepresentations §1.2; Tau Ceti `TauCeti.PadicTateTwist`, `TauCeti.IsArithFrobeniusLift.coe_localCyclotomicCharacter`.

### 4.2 Equivariant comparison for proper schemes

Let `Y` be a proper `K`-scheme, `f : Y → Spec K` its structure map, `Λ` a torsion ring and `M ∈ D⁺(Y_ét, Λ)`. Apply Huber's comparison (ClassicalAdicEtaleCohomology §8.2) to the locally ringed morphism `R := Spa(C, 𝒪_C) → S := Spec K`: since `Y ×_{Spec K} Spa(C, 𝒪_C) = (Y^an)_C` (AdicSpacesPartII §R1.2, *scheme-fibre-product-analytification*, applied twice) and `Spa(C, 𝒪_C)_ét` has global sections equal to the stalk at the geometric point `Spec C → Spec K`, it gives

    H^i(Y_{K^sep}, M) ≅ (R^i f_* M)_{Spec C} ≅ H^i((Y^an)_C, M^an),

the first isomorphism being §2.4 (with `C ⊇ K^sep`). Prove that this composite is `G_K`-equivariant for the scheme action of §1.4 on the left and `ρ` on the right: Huber's base-change transformation is natural in the adic space `R` over `S`, and `Spa(σ̂)` is an automorphism of `R` over `S = Spec K` inducing `σ_{Y^an}` on `(Y^an)_C` (§1.2) and the stalk action of §0.3 on `(R^i f_* M)_{Spec C}`. Prove also that it factors through `H^i(Y_C, M)`, with `G_K` acting by `(id_Y × Spec σ̂)^♮` (§1.1): `H^i(Y_{K̄}, M) → H^i(Y_C, M)` is an equivariant isomorphism by proper base change for `Spec C → Spec K̄` (EtaleCohomologyFoundations §F.2.1; milneLEC §17, page 114), and `H^i(Y_C, M) ≅ H^i((Y^an)_C, M^an)` is §8.2 for `Spa(C, 𝒪_C) → Spec C`. (berkovich1993, Theorem 7.1.1, page 128, line 4584, and Corollary 7.5.4, page 150, line 5339; huber1996, §3.8; milneLEC §21, page 130.)

**Checks.**

- `Y = Spec L` with `L/K` finite separable: all groups are `Λ^{Hom_K(L, K̄)}` in degree zero, with the left regular action of §1.2.
- For `Y` a smooth proper geometrically connected curve and `n` invertible in `K`, the groups `H¹(−, μ_n)` are `J(K̄)[n] = J(C)[n] = Pic⁰((Y^an)_C)[n]` by Kummer theory on each side (SchemeAndStackFoundations §2.16, `curve_Gm_cohomology`; ClassicalAdicEtaleCohomology §1.4) and rigid GAGA, with `G_K` acting on points; for an elliptic curve the determinant is `χ_n` on each side.
- `Y = ℙ¹_K` and `M = ℤ/n`: the three groups `H²` are `ℤ/n(−1)`, and an arithmetic Frobenius lift of a local field with residue field `𝔽_q`, `n` prime to `q`, acts by `q⁻¹` on each; `p`-torsion coefficients with `char K = 0` are included, as §8.2 imposes no condition on the torsion.
- `Y = ∅`: all groups vanish.

*Needs:* §§0.3, 1.1, 1.2, 1.4, 2.4; EtaleCohomologyFoundations §F.2.1; ClassicalAdicEtaleCohomology §8.2; AdicSpacesPartII §R1.2.

### 4.3 From finiteness to representations

Let `X` be a quasi-compact quasi-separated rigid `K`-space, `ℓ` a prime, `j ∈ ℤ` (with `j = 0` if `ℓ = char K`) and `i ≥ 0`. Prove (hansenzavyalov2023, proof of Theorem 3.3.2, page 39, lines 1706–1709):

- (a) if `H^i(X_C, ℤ/ℓ)` is finite, then every `H^i(X_C, ℤ/ℓ^n(j))` is finite: dévissage along `0 → ℤ/ℓ^{n−1}(j) → ℤ/ℓ^n(j) → ℤ/ℓ(j) → 0`, with `ℤ/ℓ(j)_C ≅ ℤ/ℓ_C` as sheaves of groups (§4.1);
- (b) if `H^{i−1}(X_C, ℤ/ℓ)` and `H^i(X_C, ℤ/ℓ)` are finite, then `H^i_cont(X_C, ℤ_ℓ(j)) = H^i(X_C, ℤ_ℓ(j))` (Mittag–Leffler), it is a finitely generated `ℤ_ℓ`-module whose inverse-limit topology is the `ℓ`-adic topology (it is profinite, and for `H := H^i(X_C, ℤ_ℓ(j))` the quotient `H/ℓH ⊆ H^i(X_C, ℤ/ℓ(j))` is finite by the derived reduction of §3.1, so topological Nakayama applies);
- (c) under (b), the torsion-free quotient of `H^i(X_C, ℤ_ℓ(j))` is a `ContinuousRep G_K ℤ_ℓ` and `H^i(X_C, ℚ_ℓ(j))` is a finite-dimensional `ContinuousRep G_K ℚ_ℓ` (EtaleCohomologyFoundations §F.4.0; ArithmeticGaloisRepresentations §1.1);
- (d) if `H^q(X_C, ℤ/ℓ) = 0` for `q > N`, then `H^q(X_C, ℤ/ℓ^n(j))`, `H^q(X_C, ℤ_ℓ(j))` and `H^q(X_C, ℚ_ℓ(j))` vanish for `q > N`, and `H^q_cont(X_C, ℤ_ℓ(j))` vanishes for `q > N + 1`, and for `q = N + 1` as well when `H^N(X_C, ℤ/ℓ)` is finite (the Milnor term `lim¹_n H^N(X_C, ℤ/ℓ^n(j))` then vanishes).

**Checks.**

- `X = Spa(K, 𝒪_K)`: `H⁰ = ℤ_ℓ(j)`, a free rank-one representation, and higher groups vanish.
- A finitely generated group with torsion: for `char K = 0`, `ℓ = 2` and `X` the analytification of an Enriques surface over `K`, `H²(X_C, ℤ_2)` has torsion subgroup `ℤ/2`, so it is not a finite projective `ℤ_2`-module and not a `ContinuousRep`; this is why (c) passes to the torsion-free quotient and to `ℚ_ℓ`.
- In (d), the continuous group in degree `N + 1` is `lim¹_n H^N(X_C, ℤ/ℓ^n(j))`, which can be nonzero for an infinite non-Mittag–Leffler tower; the finiteness hypothesis in degree `N` is what removes it.
- For `X` the open unit disc and `ℓ = p` the residue characteristic, the hypothesis of (a) fails, and `H¹(X_C, ℤ_p)` is not finitely generated.

*Needs:* §§3.1–3.3, 4.1; DerivedModuleAlgebra §1.T.1; EtaleCohomologyFoundations §F.4.0; ArithmeticGaloisRepresentations §1.1.

### 4.4 Finiteness instances

Let `X` be a rigid `K`-space of dimension `d` and `ℓ` a prime. Prove that the hypotheses of §4.3 (a)–(d), with `N = 2d`, hold in the following cases; hence `H^i(X_C, ℤ/ℓ^n(j))` is finite, `H^i(X_C, ℤ_ℓ(j))` finitely generated and `H^i(X_C, ℚ_ℓ(j))` a finite-dimensional continuous `G_K`-representation, vanishing for `i > 2d`:

- (a) `X` smooth proper and `ℓ` invertible in `𝒪_K`: finiteness is ClassicalAdicEtaleCohomology §9.7 (berkovich1993, Corollary 7.4.4, page 143, line 5110); vanishing above `2d` is ClassicalAdicEtaleCohomology §8.4 (huber1996, Corollary 2.8.3, as attested by hansenzavyalov2023, line 1708);
- (b) `X` smooth proper, `char K = 0` and `ℓ = p` the residue characteristic: AInfCohomology §AI.3.1 (`AInf.primitive_mod_p_comparison`) for `X_C` over the complete algebraically closed extension `C` of `ℚ_p` (scholze2013, Theorem 5.1, page 28, line 1279);
- (c) `X = Y^an` for a proper `K`-scheme `Y` and `ℓ` invertible in `K` (including `ℓ = p` when `char K = 0`): §4.2 and EtaleCohomologyFoundations §F.3 (`VanishingCycles.etaleFiniteness`) for `Y_{K̄}` (milneLEC §19, page 123);
- (d) `X` proper and `ℓ` invertible in `𝒪_K`: when `X_C` is locally algebraically of finite type over `Spa(C, 𝒪_C)`, finiteness is ClassicalAdicEtaleCohomology §11.1 (Huber's Proposition 6.1.1, applied to the constant sheaf `ℤ/ℓ`, constructible, with `B = ℤ/ℓ`); for the remaining proper `X`, finiteness is `gap:proper-rigid-finiteness`; vanishing from ClassicalAdicEtaleCohomology §8.4.

**Checks.**

- `X = ℙ^d_K`: `H^{2m}(X_C, ℤ_ℓ) = ℤ_ℓ(−m)` for `0 ≤ m ≤ d` and the odd groups vanish, consistent with the bound `2d`.
- For `ℓ = char K = p`, `ℓ` is not invertible in `K` and no case applies; the groups are defined (§3.1) and no finiteness is claimed here.
- The quasi-unipotence of inertia on these groups (hansenzavyalov2023, Theorems 3.3.1 and 3.3.2, line 1684) is a statement about `ρ` that is not claimed here.
- For the closed unit disc (not proper) and `ℓ = p`, `char K = 0`, finiteness fails in degree one; properness is used in every case.

*Needs:* §§4.2–4.3; ClassicalAdicEtaleCohomology §§8.4, 9.7, 11.1; AInfCohomology §AI.3.1; EtaleCohomologyFoundations §F.3; `gap:proper-rigid-finiteness`.

### Examples

For an elliptic curve `E` over `K = ℚ_p` with good reduction and `ℓ ≠ p`, case (c) gives `H¹(E^an_C, ℚ_ℓ(1)) ≅ V_ℓ(E)`, two-dimensional, on which an arithmetic Frobenius lift acts with determinant `p` (case (c), §4.1 and the Weil pairing). For `ℓ = p`, cases (b) and (c) both apply and give `H¹(E^an_C, ℚ_p)`, two-dimensional with determinant `χ_p⁻¹`.

### Dependencies

Layers 1–3; ClassicalAdicEtaleCohomology §§1.4, 8.2, 8.4, 9.7, 11.1; EtaleCohomologyFoundations §§F.0.3, F.2.1, F.3, F.4.0, F.4.6; AdicSpacesPartII §R1.2; AInfCohomology §AI.3.1; ArithmeticGaloisRepresentations §§1.1–1.2; DerivedModuleAlgebra §1.T.1; `gap:proper-rigid-finiteness`.

## Downstream consumers

- PadicHodgeTheory §2.7 and Layer 8: the continuous `G_K`-structure on `H^i(X_C, ℤ_p)` and its rationalisation (§§3.1–3.3, 4.3), applied with its singular proper finiteness through §4.3.
- WeightsInEtaleCohomology §§1.7–1.8 and Layer 2: rational adic cohomology of geometric fibres with its continuous Galois action, twists and Frobenius normalisation (§§1.4, 2.6, 3.2–3.3, 4.1).
- CohomologyComparisons and CstConjectureForDaggerVarieties: the Galois action on `p`-adic étale cohomology in the comparison isomorphisms (§§2.3, 3.1, 4.2).
- PadicHodgeTheoryPartII and CohomologyComparisonsPartII: as for their base roadmaps.
- ClassicalAdicEtaleCohomologyPartII §§5.3–5.9 and §7.5: the meaning of "Galois-equivariant" in mod-`p`, `ℤ_p` and `ℚ_p` Poincaré duality and in field-extension invariance (§2.3, with §§3.1 and 4.1 for the integral and twisted forms).
- BunGAndNewtonStrata and ProetaleCohomologyOfPAdicCurvesAndTowers: the action on `H^i(X_C, −)` of spaces defined over a finite extension of `ℚ_p` (§§1.2, 1.3 (e)).
- GaloisSectionsPadicPeriodMaps, EllipticCurveModularityPartII and AbelianSurfacesModularity: continuous Galois representations on the cohomology of geometric fibres, through WeightsInEtaleCohomology and ArithmeticGaloisRepresentations.

## Worked examples

- **The point.** For `X = Spa(K, 𝒪_K)`: `X_C = Spa(C, 𝒪_C)`, `ρ` on `H⁰(X_C, ℱ_C) = ℱ_{ξ_C}` is the stalk action, higher groups vanish, and the Hochschild–Serre spectral sequence is the identity on `H^p_cont(G_K, ℱ_{ξ_C})`.
- **The Tate twist.** For `K = ℚ_p`, `ℓ ≠ p` and `φ` an arithmetic Frobenius lift, `ρ(φ)` acts on `H⁰(X_C, ℤ_ℓ(1)) = ℤ_ℓ(1)` by `p`, and on `H²(ℙ¹_C, ℤ_ℓ) = ℤ_ℓ(−1)` by `p⁻¹`.
- **A permutation module.** For `X = Spa(L, 𝒪_L)` with `L/K` Galois with group `S₃`, `H⁰(X_C, ℚ_ℓ)` is the regular representation of `S₃` inflated to `G_K`; its character takes the value `6` at the identity and `0` elsewhere.

## References

- dejongvanderput1996 — A. J. de Jong, M. van der Put, *Étale cohomology of rigid analytic spaces*, Doc. Math. 1 (1996): §3.6 (page 36), Theorem 3.7.3 (page 38), Corollary 3.7.5 (page 39).
- huber1996 — R. Huber, *Étale Cohomology of Rigid Analytic Varieties and Adic Spaces* (1996): Proposition 2.3.10, §2.4 (Corollary 2.4.6), Corollary 2.8.3, §3.8, Proposition 6.1.1 (as restated by ClassicalAdicEtaleCohomology §11.1).
- huber1994 — R. Huber, *A generalization of formal schemes and rigid analytic varieties*, Math. Z. 217 (1994), §§1–3.
- berkovich1993 — V. G. Berkovich, *Étale cohomology for non-Archimedean analytic spaces*, Publ. Math. IHÉS 78 (1993): Theorem 7.1.1 (page 128), Corollary 7.4.4 (page 143), Corollary 7.5.4 (page 150).
- scholze2013 — P. Scholze, *p-adic Hodge theory for rigid-analytic varieties*, Forum Math. Pi 1 (2013): Theorem 5.1 (page 28 of arXiv v2).
- zavyalov2025 — B. Zavyalov, *Mod-p Poincaré duality in p-adic analytic geometry*, Ann. of Math. 201 (2025): §5.4, Remark 5.4.1, Theorem 5.4.2 (page 78 of arXiv v3).
- hansenzavyalov2023 — D. Hansen, B. Zavyalov, *Arithmetic properties of ℓ-adic étale cohomology and nearby cycles of rigid-analytic spaces* (arXiv v2): Theorems 3.3.1–3.3.2 (page 39).
- milneLEC — J. S. Milne, *Lectures on Étale Cohomology*, v2.21 (2013): §12 (page 81), §17 (page 114), §19 (page 123), §21 (page 130).
- stacks03N1 — The Stacks Project, *Étale Cohomology*: Theorem 53.1 (Tag 03Q9), §56 (Tag 03QW), §59 (Tag 03QQ, Example 59.3).
- sga4half — P. Deligne et al., *Cohomologie étale (SGA 4½)*, LNM 569: Arcata, Rapport.
- serreGC1997 — J.-P. Serre, *Galois Cohomology*, Chapter I, §2.
