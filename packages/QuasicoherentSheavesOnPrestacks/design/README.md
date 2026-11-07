# Roadmap: quasi-coherent sheaves on prestacks

**Summary.** A prestack is a functor from test rings to spaces, and a quasi-coherent sheaf on it is a compatible family of modules over all its affine points: the ∞-category `QCoh(X)` is the limit of the module ∞-categories `Mod_A` over the points `Spec A → X`, the right Kan extension of `A ↦ Mod_A` along the Yoneda embedding (SAG Definition 6.2.2.1; GR-I Chapter I.3, §1.1). This roadmap builds that theory once, for three ∞-categories of test rings linked by comparison functors — ordinary commutative rings, animated commutative rings and connective commutative algebra objects of `D(ℤ)` — and proves that the classical and animated theories are restrictions of the last. From EnhancedDerivedSheaves it takes the enhanced derived categories `D∞(R)`, presentable and symmetric monoidal ∞-categories, modules over algebras, animated rings and descendable descent; from SchemeAndStackFoundations it takes schemes, stacks in groupoids, quotient stacks, abelian quasi-coherent modules on stacks and the triangulated category `DQCoh` of a scheme. It supplies the coherent module-category functor and the module theory of connective algebras (t-structure, flatness, perfect and almost perfect modules), flat hyperdescent for module categories over arbitrary connective test rings with no finiteness or descendability hypothesis, invariance of `QCoh` under fpqc (hyper)sheafification and Čech descent, pushforward along affine morphisms with base change and the projection formula, the identification of `QCoh` of the functor of points of every Mathlib scheme with its quasi-coherent derived sheaves, the t-structure and the perfect, dualizable, invertible and almost perfect objects, quotients by group prestacks and by discrete groups, classical quotient stacks with their hearts, and compact generation: qcqs schemes, perfect stacks with their permanence properties, quotient stacks in characteristic zero and the failure of compactness of the structure sheaf in positive characteristic. The main sources are Lurie's *Spectral Algebraic Geometry* (§§6.2–6.3, 9.1 and Appendix D.6) and *Higher Algebra* (§§4.5–4.8, 7.1–7.2), Gaitsgory–Rozenblyum's *A study in derived algebraic geometry* I, Chapter I.3, Ben-Zvi–Francis–Nadler §3, and the Stacks Project.

## Scope and ownership

This roadmap owns the functor-of-points theory of quasi-coherent sheaves for the three ℤ-linear contexts of test rings fixed in Conventions. No other roadmap defines the limit of module categories over the affine points of a prestack in this generality. The local versions in PrismaticCohomologyPartII §4.0 (classical test rings), LanglandsParameterStacks §1.7 (animated test rings) and HabiroCohomologyFoundations §1.27 (the right Kan extension to prestacks and the lattice quotient) are special cases of 2.2–2.3, 3.2–3.3, 4.2 and 7.3; Downstream consumers records which sections each one uses. It owns:

- Layer 1: the coherent functor `A ↦ Mod_A` from connective commutative algebras of `D(ℤ)` to presentably symmetric monoidal stable ∞-categories; the t-structure, homotopy groups, flatness and faithful flatness of modules over a connective algebra; perfect, almost perfect and locally free modules; and the statements about limits of module categories that the later layers use (limits of right adjointable diagrams, dualizable objects in limits, the Beck–Chevalley descent criterion). EnhancedDerivedSheaves states the module ∞-category, extension of scalars and the categorical base-change formula of a single algebra (E5:abstract.2, E5:presentability.2) and the modules of a single animated ring (E5:animation.4); it states neither the coherent functor nor these module-theoretic properties nor the limit statements, and this roadmap is their first consumer.
- Layer 2: prestacks and their ∞-categories of points; `QCoh`, its pullback functors, evaluations and structure sheaf; its formal properties (limits, stability, colimits, pointwise tensor product, presentability for small colimits of affines); invariance under change of test rings; and classical prestacks attached to Mathlib schemes and to SchemeAndStackFoundations §1.18 stacks in groupoids.
- Layer 3: the fpqc topology on test rings, flat hyperdescent for module categories over every connective test ring, and its consequences for `QCoh`: invariance under fpqc hypersheafification, Čech descent along fpqc surjections, Zariski gluing and presentability.
- Layer 4: affine morphisms of prestacks and their pushforward, with the projection formula and base change.
- Layer 5: the comparison of `QCoh` of the functor of points of a Mathlib scheme with its quasi-coherent derived sheaves, Zariski descent for the latter, and pushforward along morphisms of qcqs schemes and along flat morphisms representable by qcqs schemes.
- Layer 6: the t-structure on `QCoh(X)`, its behaviour on stacks with a flat affine atlas and affine diagonal, and the perfect, dualizable, invertible, locally free and almost perfect objects.
- Layer 7: group prestacks, their actions and realizations, quotients by discrete groups as homotopy fixed points, and classical quotient stacks with their hearts and bounded-below derived categories.
- Layer 8: compact generation for qcqs schemes, perfect stacks, their permanence properties, quotient stacks in characteristic zero and the failure of compactness of the structure sheaf in positive characteristic.

Stated by the suppliers and used unchanged:

- **EnhancedDerivedSheaves.** The enhanced derived category `D∞(O)` of a ringed site with its homotopy-category, tensor, pullback and pushforward comparisons (E1.3–E1.4); `QuasicoherentDerived`, `quasicoherentDerived_affine` and `PerfectDerived` on qcqs schemes and the affine tensor comparison (E1.8, E1.8.DMA.1); hypercovers, Cartesian derived systems and hypercover descent, sheaves of spaces (E2.6–E2.7); Kan extensions, adjoint functor theorem, presentable limits, compact generation and coherent mates (E3.1–E3.4); symmetric monoidal ∞-categories, algebras and modules, Barr–Beck–Lurie (E5:abstract.1–5); presentability, `PrL`, `PrR`, limits in them, the tensor product of presentable categories and coherent group actions (E5:presentability.1–4); descendable algebras and module descent (E5:descent); animated rings, the functor θ and animated modules (E5:animation.1, .3, .4); and the agreement of these descriptions (E5).
- **SchemeAndStackFoundations.** Abelian fpqc descent of quasi-coherent modules (§1.1); group spaces and actions (§1.13); stacks in groupoids, stackification and 2-fibre products (§1.18); quotient stacks and classifying stacks (§1.21); abelian quasi-coherent modules on stacks with the presentation equivalence (§1.22); `DQCoh` with its affine equivalence, restriction, derived tensor, pullback, total direct image, projection formula, perfect generator and Tor-independent base change, and pseudo-coherent complexes (§2.18).
- **DerivedModuleAlgebra.** The module derived tensor product (§0.2) and the predicates `DerivedDeRham.IsPerfect`, `IsPseudoCoherent` and `HasTorAmplitude` for complexes over a ring (§1.E.0).
- **ReductiveGroups.** Faithful representations of affine group schemes of finite type over a field (Layer 1) and linear reductivity of reductive groups in characteristic zero (Layer 6).
- **HigherToposTheory.** The general results of Lurie's *Higher Topos Theory* and of *Higher Algebra* Chapter 1 that the proof routes here invoke: nerves of categories fibred in groupoids and Joyal's characterization of Kan complexes (L2.1–L2.2), presheaves as free cocompletions (L6.3), groupoid objects (L6.8), the universal property of localizations (L7.6), the derived ∞-category of an abelian category with its universal property (L9.4), t-structures generated by colimit-closed subcategories (L9.6), ∞-topoi and the statement of Giraud's theorem (L10.1), descent and effective groupoid objects in ∞-topoi (L10.3) and hypercompleteness of truncated objects (L11.3).

Not part of this roadmap:

- Quasi-coherent sheaves on spectral prestacks, functors on connective `E∞`-rings over the sphere spectrum. The definitions of Layer 2 apply verbatim once the module functor of 1.2 is available on `CAlg(Sp)^cn`; that requires the t-structure on `Sp` and the comparison of `Mod_A(D(ℤ))` with module spectra, which no supplier states. That context is a Part II of this roadmap, and this roadmap stops at the three ℤ-linear contexts.
- Derived schemes, spectral Deligne–Mumford stacks and spectral algebraic spaces; base change along non-affine morphisms representable by derived schemes (SAG Proposition 6.3.4.1 in full); the lisse-étale `D_qc` of algebraic stacks and the compact generation theorems stated for it (HR-perf Theorems A and B); ind-coherent sheaves and Tannaka duality (SAG Chapters 9–10 beyond §9.1).

## Conventions

**Higher categories.** "∞-category" means a quasicategory in Mathlib's sense (`SSet.Quasicategory`), "space" a Kan complex, and all limits, colimits, Kan extensions and adjunctions are those of EnhancedDerivedSheaves E0 and E3, characterized by mapping spaces. An equivalence of ∞-categories is a categorical equivalence, never only an equivalence of homotopy categories. Every functor between stable ∞-categories named here is exact, and every tensor product, pullback, pushforward, limit and colimit is the ∞-categorical one.

**Universes.** Fix a universe u. Test rings are u-small. `S` is the ∞-category of u-small spaces and `Ŝ` that of spaces in the universe u+1; `Ĉat∞` is the ∞-category of locally (u+1)-small ∞-categories. Prestacks take values in `Ŝ`, so that every small colimit of corepresentable functors is a prestack, and `QCoh(X)` is an object of `CAlg(Ĉat∞)`. "Presentable" means u-presentable in the sense of EnhancedDerivedSheaves E0.8 (`IsPresentable`): accessible for some regular cardinal, with all u-small colimits. Universe changes are the explicit comparison functors of EnhancedDerivedSheaves E0.5 and E0.8.

**Test rings.** The three ∞-categories of test rings are:

- `CRing`, the nerve of Mathlib's `CommRingCat` of u-small commutative rings (the classical context);
- `AnRing`, the ∞-category `AnimAlg_ℤ` of animated commutative rings of EnhancedDerivedSheaves E5:animation.1 (the animated context);
- `CAlg^cn`, the ∞-category `CAlg(D(ℤ)_{≥0})` of commutative algebra objects of the connective part of `D∞(ℤ)`, the target of θ in EnhancedDerivedSheaves E5:animation.4 (the `E∞` context over ℤ).

They are linked by `ι : CRing → AnRing`, the inclusion of discrete animated rings (EnhancedDerivedSheaves `animatedDiscrete`, with left adjoint `animatedPiZero`), and `θ : AnRing → CAlg^cn` (EnhancedDerivedSheaves `animatedToCAlg` for `R = ℤ`). Over a base ring containing ℚ the analogue of θ is an equivalence (`animatedToCAlg_equiv_of_rational` of that section); over ℤ it is not an equivalence (Check of 1.1). `T` denotes any of the three; a test ring is an object of `T`, and `T^op` is the ∞-category of affines.

**Indexing.** Modules over test rings use homological indexing: for a module M with underlying object of `D∞(ℤ)`, `π_n M = H^{−n}(M)`, and `M[1]` is the suspension, Mathlib's cochain shift by one (cohomological degree −1). M is connective if `π_n M = 0` for `n < 0` and n-truncated if `π_m M = 0` for `m > n`. Witness: `M = 𝔽_p ⊗ᴸ_ℤ 𝔽_p` has `π₀ M = π₁ M = 𝔽_p` and no other homotopy, that is cohomology `𝔽_p` in Mathlib degrees 0 and −1; it is connective and not 0-truncated.

**Flatness.** A module M over a test ring A is flat if `π₀M` is flat over `π₀A` (Mathlib `Module.Flat`) and `π_n A ⊗_{π₀A} π₀M → π_n M` is an isomorphism for every n; it is faithfully flat if moreover `π₀M` is faithfully flat over `π₀A` (Mathlib `Module.FaithfullyFlat`). A map of test rings is (faithfully) flat if its target is a (faithfully) flat module (HA Definition 7.2.2.10, p. 1240). Witness: `ℤ → ℤ[x]` is faithfully flat; `ℤ → ℚ` is flat and not faithfully flat; `ℤ → 𝔽_p` is not flat; and `𝔽_p → 𝔽_p ⊗ᴸ_ℤ 𝔽_p`, along either factor, is not flat, since `π₁` of the source is 0 while `π₁` of the target is `𝔽_p`. For discrete A and M the definition is Mathlib's (HA Remark 7.2.2.12).

**Covers.** A finite family `{A → B_i}` of maps of test rings is an fpqc cover if `A → ∏_i B_i` is faithfully flat (SAG Remark D.6.1.1, p. 2174). Witness: the empty family covers exactly the zero ring, and `{ℤ → ℤ[1/2], ℤ → ℤ[1/3]}` covers ℤ.

**Variance and base change.** Prestacks are covariant functors `T → Ŝ`; `Spec A` is the functor corepresented by A, and a point of X is a pair (A, η) with `η ∈ X(A)`, equivalently `η : Spec A → X`. Pullback `f^*` is contravariant in f and pushforward `f_*` is its right adjoint. For a pullback square with `f : Y → X`, `g : X′ → X`, `f′ : Y′ → X′` and `g′ : Y′ → Y`, the Beck–Chevalley map is the mate `g^* f_* → f′_* g′^*` of the identification `f′^* g^* ≃ g′^* f^*` (EnhancedDerivedSheaves `coherentMate`). Witness: in the classical context the square of `Spec 𝔽_p → Spec ℤ ← Spec 𝔽_p` has fibre product `Spec 𝔽_p`; for `F = 𝔽_p` the source of the Beck–Chevalley map is `𝔽_p ⊗ᴸ_ℤ 𝔽_p`, with `π₁ = 𝔽_p`, and its target is `𝔽_p`, so the map is not an equivalence. In `AnRing` the fibre product is `Spec(𝔽_p ⊗ᴸ_ℤ 𝔽_p)` and both sides are `𝔽_p ⊗ᴸ_ℤ 𝔽_p`.

**Notation.**

| Symbol | Meaning |
| --- | --- |
| `CRing, AnRing, CAlg^cn, T` | the three ∞-categories of test rings, and any one of them |
| `ι, θ` | the comparison functors `CRing → AnRing → CAlg^cn` |
| `Mod_A, Mod_A^cn` | the module ∞-category of a test ring and its connective part |
| `PreStk_T = Fun(T, Ŝ)` | prestacks on T |
| `Pts(X)` | the ∞-category of points of a prestack, a left fibration over T |
| `QCoh(X), O_X, η^*` | quasi-coherent sheaves, the structure sheaf, evaluation at a point |
| `u_!` | left Kan extension of prestacks along a comparison functor u |
| `Perf(X), APerf(X)` | perfect and almost perfect objects of `QCoh(X)` |
| `h_X` | the classical prestack of a Mathlib scheme X |
| `X^♮` | the classical prestack of a SchemeAndStackFoundations stack in groupoids |
| `|G^{×•} × X|` | the realization of an action, the colimit of its bar construction |

**Sources and locators.** SAG is Lurie's *Spectral Algebraic Geometry* (author PDF of February 2018; PDF page equals printed page). HA is Lurie's *Higher Algebra* (author PDF of 18 September 2017; PDF page equals printed page). HTT is Lurie's *Higher Topos Theory* (author PDF of 9 April 2017; PDF pages run 18 ahead of the printed pages, and locators give PDF pages). GR-I is Gaitsgory–Rozenblyum, volume I, published version as posted by the authors; locators give printed pages, which are PDF pages minus 37. BZFN, HNR and HR-perf are cited from their arXiv versions with arXiv page numbers. Stacks locators give the chapter, the result number and the tag. Full references are at the end.

## Exact supplier contracts

### From Mathlib

- `SSet.Quasicategory` (Mathlib/AlgebraicTopology/Quasicategory/Basic.lean:41), the inner-horn filling class; `SSet.KanComplex` (Mathlib/AlgebraicTopology/SimplicialSet/KanComplex.lean:40), an abbreviation for fibrancy; `CategoryTheory.nerve` (Mathlib/AlgebraicTopology/SimplicialSet/Nerve.lean:37), whose quasicategory instance is at Mathlib/AlgebraicTopology/Quasicategory/Nerve.lean:32. Mathlib has no Kan-complex instance for the nerve of a groupoid; 2.5 states it.
- `CommRingCat`, `AlgebraicGeometry.Scheme`, `AlgebraicGeometry.Spec` (Mathlib/AlgebraicGeometry/Scheme.lean:466) and the functor `AlgebraicGeometry.Scheme.Spec` (same file, line 494): the classical test rings and the schemes whose functors of points 2.5 and Layer 5 use.
- `AlgebraicGeometry.Scheme.fpqcPrecoverage` (Mathlib/AlgebraicGeometry/Sites/Fpqc.lean:61) and `AlgebraicGeometry.Scheme.fpqcTopology` (same file, line 76): quasi-compact jointly surjective families of flat morphisms of schemes, and the topology they generate. 3.1 compares the fpqc covers of rings with these on affine schemes; nothing here uses the topology on all schemes.
- `Module.Flat` (Mathlib/RingTheory/Flat/Basic.lean:114) and `Module.FaithfullyFlat` (Mathlib/RingTheory/Flat/FaithfullyFlat/Basic.lean:64): the conditions on `π₀` in the flatness convention.
- `DerivedCategory` (Mathlib/Algebra/Homology/DerivedCategory/Basic.lean:87), its cohomological t-structure `DerivedCategory.TStructure.t` (Mathlib/Algebra/Homology/DerivedCategory/TStructure.lean:33), and `ModuleCat`: the homotopy categories against which 2.3 and Layer 5 compare.
- `CategoryTheory.Pseudofunctor.IsStack` (Mathlib/CategoryTheory/Sites/Descent/IsStack.lean:49), `CategoryTheory.Pseudofunctor.DescentData` (Mathlib/CategoryTheory/Sites/Descent/DescentData.lean:59) and `CategoryTheory.Pseudofunctor.CoGrothendieck` (Mathlib/CategoryTheory/Bicategory/Grothendieck.lean:235): the stacks of SchemeAndStackFoundations §1.18 are pseudofunctors satisfying the first, and 2.5 forms the second construction of their restriction to affines.
- `groupCohomology` (Mathlib/RepresentationTheory/Homological/GroupCohomology/Basic.lean:183): the group cohomology computed in the Checks of 2.2, 7.3 and 8.4.

### From Tau Ceti

No Tau Ceti declaration is consumed directly; the dg-categorical and sheaf-of-modules declarations that the enhancement of `D∞` rests on enter through EnhancedDerivedSheaves.

### From TauCetiRoadmap.EnhancedDerivedSheaves

- E0.3–E0.8: functor ∞-categories, `fullEnhancedSubcategory`, limits and colimits, stability, `Cat∞` and spaces, space-valued straightening over small bases, coCartesian sections as limits, and `IsPresentable`. Straightening identifies functors `T → Ŝ` with left fibrations over T, which is how 2.1 forms `Pts(X)`.
- E1.3: `enhancedDerived` with `enhancedDerived.homotopyCategory` (the homotopy category of `D∞(R)` is Mathlib's `DerivedCategory (ModuleCat R)`) and `enhancedDerived_isPresentable`. E1.4: `derivedTensor`, `enhancedPullback`, `enhancedPushforward` and `enhancedPullback_comp`. Assumed: for the ringed site of a scheme these are the enhanced lifts of SchemeAndStackFoundations §2.18's derived tensor, derived pullback and total direct image.
- E1.8: `QuasicoherentDerived`, `quasicoherentDerived_affine` (for `X = Spec R`, `Dqc(X) ≃ D∞(R)` as ∞-categories, unbounded complexes included) and `PerfectDerived`, for qcqs schemes; E1.8.DMA.1: `derivedTensor_affine`.
- E2.6–E2.7: `Hypercover`, `cartesianDerivedSystem`, `hypercoverPullback_unit` (the unit `K → Rf_* f^* K` is an equivalence for every hypercover of every topos), `hypercoverDescent_boundedBelow` (descent of uniformly bounded below Cartesian systems on every topos), `spaceSheaves`, `hypercompleteSpaceSheaves` and `spacePostnikovTower`.
- E2:towers.1: `derivedTowerLimit`, the coherent derived limit of a tower.
- E3.1–E3.4: `leftKanExtension_restrict_trivialFibration` and its dual for right Kan extensions along full inclusions, `representable_iff_preservesLimits`, `adjointFunctorTheorem`, `accessibleLocalization`, `presentable_limit_restricted`, `exact_preservesColimits_iff_coproducts`, `rightAdjoint_preservesCoproducts_iff`, `coherentMate` and `beckChevalley`.
- E5:abstract.1–5: symmetric monoidal ∞-categories, `operadicAlgebras`, `commutativeAlgebras`, `leftModuleObjects`, `moduleObjects` (the symmetric monoidal `Mod_A(C)` of a commutative algebra A in a presentably symmetric monoidal C, with unit A), `extensionScalars`, `derivedFamily`, `derivedTensor_symmetricMonoidal`, `stableMonoidal_homotopyCategory`, `idemCompletion` and `barrBeckLurie`. Assumed of `moduleObjects`: it is presentable, stable when C is, and its tensor product preserves colimits in each variable.
- E5:presentability.1–4: `compactObjects`, `IsCompactlyGenerated`, the Ind-completion with `indCompactComparison` (the compact objects of `Ind(C)` are C for a small idempotent-complete C with finite colimits), `PrL`, `PrR`, `presentable_limit`, `presentable_limit_right`, `spectra`, `presentableTensor`, `categoricalModuleBaseChange` (`M ⊗_C RMod_A(C) ≃ RMod_A(M)` for a presentable C-module M), `CoherentActionData` and `homotopyFixedPoints`.
- E5:descent: `IsDescendable` and `moduleDescent` (for descendable `A → B`, `Mod_A(C) ≃ lim_Δ Mod_{B^{⊗_A(•+1)}}(C)`, symmetric monoidally), and `descendableCover_zariski` (a finite Zariski cover is descendable).
- E5:spectra-comparison: `eilenbergMacLane` and `moduleSpectra_equiv_derived`, used only to compare the classical context with module spectra in a Check.
- E5:animation.1, .3 and .4: `animatedAlgebras`, `animatedDiscrete`, `animatedPiZero`, `animatedPushout` (derived pushouts, with `π_*` the Tor groups on discrete inputs), `animationExtension`, `tot_filteredColimit_of_bounded` (stabilization of `π_k` of a totalization of uniformly bounded-below cosimplicial objects of `D∞(R)` at a finite stage), `animatedToCAlg` (θ, which preserves colimits), `animatedModules` (`Mod_B = Mod_{θB}(D(ℤ))`), `animatedModules_discrete` (`Mod_B ≃ D∞(B)` for discrete B) and `animatedModules_baseChange` (extension of scalars along `A → B` is `− ⊗ᴸ_A B`).
- E5: `enhancement_compatibility`, the agreement of the units and tensor products of `D∞(R)`, `Mod_R(D∞(ℤ))` and `Mod_{HR}(Sp)`.

### From TauCetiRoadmap.SchemeAndStackFoundations

- §1.1: `Descent.qcohPseudofunctor` and `qcoh_fpqc_descent` (quasi-coherent modules form a stack for Mathlib's `fpqcTopology`); 3.2 compares its affine case with hearts.
- §1.13: `GroupSpace`, `Action` and `Action.constantEquiv`, the group spaces and actions of 7.1's classical instances.
- §1.18: `StackInGroupoids` (a pseudofunctor on schemes, groupoid-valued and an fppf stack), its Yoneda equivalence `Hom(h_T, X) ≃ X(T)`, `isFiberedInGroupoids`, `Stack.stackification` and `twoFiberProduct`. 2.5 turns these into classical prestacks.
- §1.21: `quotientStack`, `actionQuotient` (`[X/G]`, whose objects over T are `G_T`-torsors with equivariant maps to X) and the classifying stack `BG`.
- §1.22: `Stacks.QCoh` (abelian quasi-coherent modules on a stack in groupoids, equivalently compatible families of quasi-coherent modules over all T-points), `QCoh.pullback` and `QCoh.presentationEquiv` (for `X = [U/R]`, quasi-coherent modules on U with descent data); its Check `test_BG_representations` identifies `QCoh(BG)` with `O(G)`-comodules for an affine group scheme over a field.
- §2.18: `Coherent.DQCoh` (complexes with quasi-coherent cohomology in Mathlib's `DerivedCategory X.Modules`), `Coherent.DQCoh.affineEquiv`, `DQCoh.restrict`, `DQCoh.tStructure`, `derivedTensor`, `derivedPullback`, `totalDirectImage` with `totalDirectImage_mem_DQCoh` and `totalDirectImage_coproduct`, `projectionFormula`, `perfect_generator` (for qcqs X, `DQCoh X` is generated by a single perfect complex and compactly generated by perfect complexes), `torIndependent_baseChange`, and `PseudoCoherence.IsPseudoCoherentComplex`.

### From TauCetiRoadmap.HigherToposTheory

- L2.1: nerves of categories cofibred in groupoids are left fibrations (HTT Proposition 2.1.1.3), used in its dual form for fibred groupoids in 2.5.
- L2.2: a simplicial set is a Kan complex exactly when it is an ∞-category whose homotopy category is a groupoid (HTT Proposition 1.2.5.1); in 2.5 the nerve of each groupoid `X(Spec R)` is a Kan complex.
- L6.3: presheaf ∞-categories are free cocompletions (HTT Theorem 5.1.5.6), so right Kan extensions along the Yoneda embedding carry colimits to limits (2.3, 3.1).
- L6.8: groupoid objects of an ∞-category (HTT Definition 6.1.2.7), the carrier of group prestacks and actions in 7.1.
- L7.6: the universal property of accessible localizations of presentable ∞-categories (HTT Proposition 5.5.4.20), used for sheafification in 3.1.
- L9.4: the derived ∞-category of an abelian category and the universal property of `D⁻(A)` (HA Theorem 1.3.3.2), used in dual form for `D⁺` in 7.4.
- L9.6: t-structures generated by presentable subcategories closed under colimits and extensions (HA Proposition 1.4.4.11), used in 1.3 and 6.2.
- L10.1: ∞-topoi (HTT Definition 6.1.0.4; a presheaf ∞-category is one, the localization being the identity) and the statement of Giraud's theorem (HTT Theorem 6.1.0.6, `HTT.6.1.0.6/stmt`), whose axiom (iv) is the effectivity of groupoid objects.
- L10.3: an ∞-topos satisfies descent and hence the Giraud axioms (HTT Propositions 6.1.3.10 and 6.1.3.19, the parts `HTT.6.1.0.6/1⇒2` and `HTT.6.1.0.6/2⇒3`); in particular groupoid objects in the presheaf ∞-topos `PreStk_T` are effective (7.1).
- L11.3: truncated objects of an ∞-topos are hypercomplete (HTT Lemma 6.5.2.9), used in 3.2.

Assumed: these are statements about quasicategories in Mathlib's sense, compatible with the generic foundations that EnhancedDerivedSheaves E0 takes from BordismFormalGroups F6.5.

### From TauCetiRoadmap.DerivedModuleAlgebra

- §0.2: `DerivedDeRham.derivedTensor`, the module derived tensor product on `D(R)` through K-flat models.
- §1.E.0: `DerivedDeRham.IsPerfect` (bounded complex of finite projective modules), `IsPseudoCoherent` (bounded-above complex of finite free modules) and `HasTorAmplitude`, with their invariance, closure and base-change API. 1.4 identifies these with perfect, almost perfect and finite-Tor-amplitude modules over a discrete test ring.

### From TauCetiRoadmap.ReductiveGroups

- Layer 1, embedding theorem: an affine group scheme of finite type over a field has a faithful finite-dimensional representation, a closed immersion into `GL_n`.
- Layer 6: over a field of characteristic zero a smooth connected affine group is reductive exactly when it is linearly reductive; in particular finite-dimensional representations of `GL_n` are completely reducible.

What ReductiveGroups must provide (gap:chevalley-quasiprojective-quotient): for a field k, an affine group scheme H of finite type over k and a closed immersion `H → GL_n`, the fppf quotient sheaf `GL_n/H` is represented by a quasi-projective k-scheme admitting a `GL_n`-equivariant immersion into the projectivization of a finite-dimensional representation of `GL_n`, so that `O(1)` is a `GL_n`-linearized ample line bundle (Chevalley's theorem, used in the proof of BZFN Corollary 3.22, BZFN line 1205). The supplying section is Layer 3, "subgroups, quotients, components", which treats the fppf quotient `G/H` and records representability as a theorem with hypotheses but does not state this one; 8.4 uses it.

## How to read the build

Layer 1 assembles the higher algebra of module categories that every later layer uses: the coherent functor `A ↦ Mod_A`, the module theory of connective algebras, and three statements about limits of ∞-categories. Layer 2 defines prestacks, points and `QCoh` and proves everything formal: limits, colimits, the tensor product, change of test rings, and the classical prestacks of schemes and stacks. Layer 3 proves flat hyperdescent for module categories and deduces fpqc descent for `QCoh`. Layer 4 needs Layers 1–3 and treats affine morphisms. Layer 5 compares with the quasi-coherent derived sheaves of Mathlib schemes, using Layers 2–4 and the suppliers' scheme theory. Layer 6 treats the t-structure and finiteness conditions, using Layers 1–3 and, for schemes, Layer 5. Layer 7 treats quotients, using Layers 2, 3 and 6 and, for classical quotient stacks, Layer 5. Layer 8 treats compact generation, using the limit statements of Layer 1 and Layers 3–7. Within each layer the subsections are in build order.

| Layer | Construction | Principal outputs |
| --- | --- | --- |
| 1 | Module categories of test rings | `A ↦ Mod_A` as a functor to presentably symmetric monoidal stable ∞-categories; t-structure, flatness, perfect and almost perfect modules; adjointable limits; dualizable objects in limits; the descent criterion |
| 2 | Prestacks and `QCoh` | `QCoh(Spec A) ≃ Mod_A`; colimits to limits; stability, colimits, pointwise tensor; `QCoh(u_!X) ≃ QCoh(X)`; classical prestacks of schemes and stacks |
| 3 | Flat descent | flat hyperdescent for `Mod_A`; `QCoh` inverts fpqc-local equivalences; Čech descent; Zariski gluing; presentability |
| 4 | Affine morphisms | pointwise pushforward, projection formula, base change |
| 5 | Schemes | `QCoh(h_X) ≃ Dqc(X)` for every scheme; Zariski descent of `Dqc`; schematic pushforward |
| 6 | t-structure and finiteness | the t-structure and its atlas description; `Perf` = dualizable; invertible and locally free objects; `APerf` |
| 7 | Quotients | `QCoh` of realizations and fpqc quotients; `QCoh(X/Γ) ≃ QCoh(X)^{hΓ}`; hearts and `D⁺` of classical quotient stacks |
| 8 | Compact generation | qcqs schemes; perfect stacks; permanence; characteristic-zero quotients; non-compact structure sheaves in characteristic p |

## Layer 1: Module categories of test rings

This layer assembles the higher algebra of module categories that every later layer uses. Throughout, `D(ℤ)` is EnhancedDerivedSheaves' `D∞(ℤ)` with its symmetric monoidal structure `derivedTensor_symmetricMonoidal`, a presentably symmetric monoidal stable ∞-category whose tensor product preserves colimits in each variable, with the standard t-structure (cohomology in Mathlib's degrees ≤ 0 is the connective part).

### 1.1 Test rings and their comparison functors

Take the three ∞-categories of test rings `CRing`, `AnRing`, `CAlg^cn` and the functors `ι : CRing → AnRing` and `θ : AnRing → CAlg^cn` of the Conventions. For a test ring A write `π_n A` for `π_n` of its underlying object of `D(ℤ)` (for an animated ring, of the underlying object of θA); `π₀A` is an ordinary commutative ring, `π_*A` a graded-commutative ring and each `π_n A` a `π₀A`-module. A test ring is discrete when `π_n A = 0` for `n ≠ 0` (SAG Definition 6.2.2.1 and Remark 6.2.2.2, pp. 490–491, for the role of connective test rings; HA Proposition 7.1.3.18, p. 1219, for discrete commutative algebras as ordinary rings).

The API consists of the following facts.

- θ and θι preserve homotopy groups: `π_*(θB) = π_*(B)` and `θι(R)` is discrete with `π₀ = R`.
- θ preserves small colimits, in particular pushouts and finite products; it is the colimit-preserving extension of the inclusion of polynomial rings (`animationExtension`).
- ι is fully faithful with left adjoint `π₀` (`animatedDiscrete`, `animatedPiZero`), so it preserves limits; it does not preserve pushouts.
- For discrete A, B, C the pushout `B ⊗_A C` in `AnRing` or `CAlg^cn` has `π_n = Tor_n^A(B, C)` (`animatedPushout`); the pushout in `CRing` is the ordinary tensor product, and the two agree exactly when the positive Tor groups vanish, for instance when B or C is flat over A.
- In each of the three ∞-categories the zero ring is a final object and ℤ (respectively ιℤ, θιℤ) an initial object, and a finite product of test rings is computed by the product of underlying objects.

**Checks.**

- `𝔽_p ⊗_ℤ 𝔽_p` computed in `AnRing` has `π₀ = π₁ = 𝔽_p` and no other homotopy, and θ carries it to the pushout in `CAlg^cn`, with the same homotopy; the pushout in `CRing` is `𝔽_p`, with no `π₁`, so ι does not preserve this pushout.
- Degenerate case: the zero ring is final in all three categories, `θι(0) = 0` and `π_*(0) = 0`; a definition of "test ring" excluding the zero ring would make the empty family of 3.1 cover nothing.
- θ is not an equivalence: it sends the animated polynomial ring `ℤ[x]`, which corepresents the underlying space, to a discrete object, whereas the free object of `CAlg^cn` on `ℤ[0]` has the summand `(ℤ ⊗ᴸ ℤ)_{hΣ₂}`, whose `π₁ = H₁(BΣ₂; ℤ) = ℤ/2` is nonzero.

*Needs:* EnhancedDerivedSheaves E5:animation.1 (`animatedAlgebras`, `animatedDiscrete`, `animatedPiZero`, `animatedPushout`, `animationExtension`), E5:animation.4 (`animatedToCAlg`), E5:abstract.2 (`commutativeAlgebras`); Mathlib `CommRingCat`.

### 1.2 The module-category functor

Construct the functor `Mod : CAlg^cn → CAlg(PrL_st)` sending a connective commutative algebra A of `D(ℤ)` to the presentably symmetric monoidal stable ∞-category `Mod_A = Mod_A(D(ℤ))` of `moduleObjects`, with unit A, and a map `f : A → B` to extension of scalars `f^* = B ⊗_A − : Mod_A → Mod_B` (`extensionScalars`), as a functor of ∞-categories with all higher coherences. Restricting along θ and θι gives the module functors of `AnRing` and `CRing`; their values are `animatedModules` and `D∞(R)` (HA Theorem 4.5.3.1 and Remark 4.5.3.2, p. 601; HA Corollary 4.8.5.21, p. 754; SAG Definition 6.2.2.1, pp. 490–491).

The API consists of the following facts.

- For `f : A → B`, `f^*` is symmetric monoidal and preserves small colimits; its right adjoint `f_*`, restriction of scalars, preserves small limits and colimits and is conservative, and the projection formula `f_*(f^*M ⊗_B N) ≃ M ⊗_A f_*N` holds for `M ∈ Mod_A`, `N ∈ Mod_B`.
- Base change: for a pushout square of `CAlg^cn` with `B′ = B ⊗_A A′`, the square of extension functors is right adjointable, that is `A′ ⊗_A f_*N ≃ f′_*(B′ ⊗_B N)` for `N ∈ Mod_B`; and `Mod_{B′} ≃ Mod_B ⊗_{Mod_A} Mod_{A′}` in `PrL` (`categoricalModuleBaseChange`; HA Theorem 4.8.4.6, p. 737).
- Products: `Mod_{A × B} ≃ Mod_A × Mod_B`, symmetric monoidally, and `Mod_0` is the zero category.
- Classical values: for `R ∈ CRing`, `Mod_{θιR} ≃ D∞(R)` symmetric monoidally and naturally in R, with extension of scalars along `R → S` corresponding to the derived base change `S ⊗ᴸ_R −` (`animatedModules_discrete`, `animatedModules_baseChange`, `enhancement_compatibility`); for `B ∈ AnRing`, `Mod_{θB}` is `animatedModules B`.

*Proof route.* HA Theorem 4.5.3.1 applies to `D(ℤ)` because it admits geometric realizations and its tensor product preserves them in each variable: the fibration of pairs (A, M) over commutative algebras is coCartesian with symmetric monoidal fibres. Classify it by the supplied straightening, or by `derivedFamily` over the small ∞-categories obtained after fixing a universe, to obtain a functor to symmetric monoidal ∞-categories; its values are presentable and stable and its transitions preserve colimits (`moduleObjects`, `extensionScalars`), so it lands in `CAlg(PrL_st)`. The projection formula holds for `M = A` and both sides preserve colimits in M, and A generates `Mod_A` under colimits and shifts. Base change is checked on underlying objects of `D(ℤ)`, where both sides are `A′ ⊗_A N`. Products follow from the idempotents of `A × B`.

**Checks.**

- `Mod_ℤ = D∞(ℤ)` with unit `ℤ[0]`, and `Mod_0 = 0`, the zero ring having only the zero module.
- For the pushout square of `ℤ → 𝔽_p` with itself in `CAlg^cn`, so `B′ = 𝔽_p ⊗ᴸ_ℤ 𝔽_p`, both sides of the base-change map at `N = 𝔽_p` are `𝔽_p ⊗ᴸ_ℤ 𝔽_p`, with `π₁ = 𝔽_p`. Replacing `B′` by the ordinary tensor product `𝔽_p` gives `𝔽_p` on the right, so the square of ordinary rings is not right adjointable.
- Projection formula for `f : R → R[t]`, `M = R[1]`, `N = R[t]`: both sides are the R-module `R[t][1]`, free of infinite rank in degree one; an underived or unshifted formula fails the degree.
- The transition of the classical functor along `ℤ → ℤ/p` sends `ℤ/p` to `ℤ/p ⊗ᴸ_ℤ ℤ/p`, with `π₀ = π₁ = ℤ/p`; the underived extension of scalars would give only `ℤ/p`.

*Needs:* 1.1; EnhancedDerivedSheaves E5:abstract.2 (`moduleObjects`, `extensionScalars`, `commutativeAlgebras`), E5:abstract.3 (`derivedFamily`), E5:abstract.4 (`derivedTensor_symmetricMonoidal`), E5:presentability.2 (`PrL`, `presentableTensor`, `categoricalModuleBaseChange`), E5:animation.4 (`animatedModules`, `animatedModules_discrete`, `animatedModules_baseChange`), E5 (`enhancement_compatibility`), E0.7 (the supplied straightening).

### 1.3 Connective modules: the t-structure and flatness

For `A ∈ CAlg^cn`, define `Mod_A^cn` (respectively `Mod_{A,≤0}`) as the full subcategory of modules whose underlying object of `D(ℤ)` is connective (respectively has `π_n = 0` for `n > 0`), and `π_n M` as `π_n` of the underlying object. Define flat and faithfully flat modules and maps as in the Conventions (HA Definition 7.2.2.10, p. 1240). Prove that `(Mod_A^cn, Mod_{A,≤0})` is an accessible t-structure on `Mod_A`, left and right complete, with both halves closed under small products and filtered colimits, that `Mod_A^cn` is the smallest full subcategory containing A and closed under small colimits, and that `π₀` identifies the heart with the nerve of `ModuleCat (π₀A)`; and that for a flat A-module N and every M, `π_n(M ⊗_A N) ≅ π_n M ⊗_{π₀A} π₀N` (HA Proposition 7.1.1.13, p. 1202; HA Proposition 7.2.2.13, p. 1240; HA Theorem 7.2.2.15, pp. 1240–1241).

*Proof route.* HA states these results for connective `E₁`-rings in `Sp`. For a commutative algebra A of `D(ℤ)_{≥0}` the same arguments apply to `Mod_A(D(ℤ))`: they use that `Mod_A` is presentable and stable with compact generator A, that the forgetful functor to `D(ℤ)` is conservative, t-exact by definition and preserves limits and colimits, the t-structure generated by a set of objects (HA Proposition 1.4.4.11, p. 160, a statement about any presentable stable ∞-category; HigherToposTheory L9.6), and the Künneth spectral sequence of the bar construction computing `π_*(M ⊗_A N)` from `Tor^{π_*A}` (HA Proposition 7.2.1.19, p. 1236). Left completeness of `D(ℤ)`, in which countable products are exact, transfers along the conservative limit-preserving forgetful functor.

The API consists of the following facts.

- Extension of scalars is right t-exact and restriction of scalars is t-exact.
- A flat module is connective, and extension of scalars along a flat map is t-exact; along a faithfully flat map it is moreover conservative on all of `Mod_A`, since `π_n(B ⊗_A M) = π₀B ⊗_{π₀A} π_n M` and `π₀B` is faithfully flat over `π₀A`.
- Flat and faithfully flat maps are stable under composition and under base change along arbitrary maps of `CAlg^cn`; ι and θ preserve and reflect them.
- Lazard: a connective A-module is flat exactly when it is a filtered colimit of finite free A-modules.
- For discrete `A = θιR` and discrete M, flatness is Mathlib's `Module.Flat` (HA Remark 7.2.2.12).

**Checks.**

- The heart of `Mod_{𝔽_p ⊗ᴸ_ℤ 𝔽_p}` is `ModuleCat 𝔽_p`, since `π₀ = 𝔽_p`, although `Mod_{𝔽_p ⊗ᴸ_ℤ 𝔽_p}` is not `D∞(𝔽_p)`: its unit has `π₁ = 𝔽_p`.
- `ℤ → ℤ[1/p] × ℤ_p` is faithfully flat: both factors are flat (a localization, and the torsion-free ℤ-module `ℤ_p`), and every prime of ℤ lies under a prime of a factor (`(p)` under `pℤ_p`, the others under primes of `ℤ[1/p]`).
- `ℤ → ℚ` is flat but not faithfully flat: `ℚ ⊗ᴸ_ℤ ℤ/p = 0`, so extension of scalars is not conservative.
- Extension of scalars along the non-flat `ℤ → 𝔽_p` is not t-exact: it carries the discrete `𝔽_p` to `𝔽_p ⊗ᴸ_ℤ 𝔽_p`, which is not discrete.

*Needs:* 1.2; EnhancedDerivedSheaves E5:abstract.2 (`moduleObjects`), E1.3 (`enhancedDerived`, the standard t-structure of `D∞(ℤ)`), E3.2 (`accessibleLocalization`); HigherToposTheory L9.6 (HA Proposition 1.4.4.11); Mathlib `Module.Flat`, `Module.FaithfullyFlat`, `DerivedCategory.TStructure.t`.

### 1.4 Perfect, almost perfect and locally free modules

For `A ∈ CAlg^cn`, define a module to be perfect if it lies in the smallest stable full subcategory of `Mod_A` containing A and closed under retracts (HA Definition 7.2.4.1, p. 1260; BZFN Definition 3.1, p. 17); almost perfect if it lies in `Mod_{A,≥k}` for some k and is almost compact there, that is `Map(M, −)` commutes with filtered colimits on `τ_{≤n} Mod_{A,≥k}` for every n (HA Definition 7.2.4.10, p. 1265); and locally free of finite rank if it is a direct summand of `A^n` for some n, equivalently flat and almost perfect (SAG Definition 2.9.1.1 and Remark 2.9.1.2, p. 277).

The API consists of the following facts.

- `Mod_A` is compactly generated by A, and the perfect, compact and dualizable objects of `Mod_A` coincide (HA Propositions 7.2.4.2 and 7.2.4.4, pp. 1261–1263; SAG proof of Proposition 6.2.6.2, p. 497).
- Almost perfect modules form a stable subcategory closed under retracts and containing the perfect ones; a connective almost perfect module is the geometric realization of a simplicial module that is finite free in each degree; if `π₀A` is coherent and each `π_nA` is finitely presented over `π₀A`, a module is almost perfect exactly when it is bounded below and each `π_m M` is finitely presented over `π₀A` (HA Propositions 7.2.4.11 and 7.2.4.17, pp. 1265–1268).
- A connective module is a dualizable object of `Mod_A^cn` exactly when it is locally free of finite rank (SAG Proposition 2.9.1.5, p. 278).
- n-connectivity, flatness, perfectness, almost perfectness and local freeness of finite rank are stable under base change along every map of `CAlg^cn` (SAG Proposition 6.2.5.2, pp. 494–495); their locality for the fpqc topology is 6.1.
- For `A = θιR` discrete, under `Mod_A ≃ D∞(R)` and `enhancedDerived.homotopyCategory`: perfect modules are those satisfying `DerivedDeRham.IsPerfect`, almost perfect modules those satisfying `IsPseudoCoherent`, and Tor amplitude is `HasTorAmplitude` (DerivedModuleAlgebra §1.E.0).

**Checks.**

- `ℤ ⊕ ℤ[3]` is perfect over ℤ and dualizable, with dual `ℤ ⊕ ℤ[−3]`; ℚ and `⊕_ℕ ℤ` are not perfect: the identity of `⊕_ℕ ℤ` does not factor through a finite subsum.
- Over `A = k[ε]/(ε²)` for a field k, `M = k` is almost perfect (A is Noetherian and `π₀M` is finitely presented) but not perfect: `Tor_i^A(k, k) = k` for every `i ≥ 0`, whereas a perfect module has bounded Tor amplitude.
- Over `A = k[x₁, x₂, …]`, the quotient `k = A/(x₁, x₂, …)` is not almost perfect: `π₀` of a connective almost perfect module is finitely presented, and the maximal ideal is not finitely generated.
- `ℤ/p` over ℤ is connective and perfect but not locally free: its dual `ℤ/p[−1]` is not connective, so it is not dualizable in `Mod_ℤ^cn`.
- n-truncatedness is not stable under base change: `𝔽_p` over ℤ is 0-truncated, and its base change to `𝔽_p` is `𝔽_p ⊗ᴸ_ℤ 𝔽_p`, with `π₁ ≠ 0`.

*Needs:* 1.3; EnhancedDerivedSheaves E5:presentability.1 (`compactObjects`, `IsCompactlyGenerated`), E5:abstract.4 (`idemCompletion`), E1.3 (`enhancedDerived.homotopyCategory`); DerivedModuleAlgebra §1.E.0 (`DerivedDeRham.IsPerfect`, `IsPseudoCoherent`, `HasTorAmplitude`).

### 1.5 Limits of module categories

Prove three statements about limits of ∞-categories, used for diagrams of module categories in Layers 3, 4 and 6.

- **Adjointable limits.** Let `F : χ → χ′` be a natural transformation of diagrams `K → Ĉat∞` indexed by an ∞-category K, such that every component `F_k` has a right adjoint `G_k` and every naturality square is right adjointable. Then `lim F` has a right adjoint computed componentwise, and every projection square is right adjointable (HA Corollary 4.7.4.18, p. 699, in the form used in the proof of SAG Proposition 6.3.4.1, p. 506).
- **Dualizable and invertible objects.** For a diagram of symmetric monoidal ∞-categories with limit C, an object of C is dualizable exactly when each of its images is dualizable, and invertible exactly when each image is invertible (HA Proposition 4.6.1.11, p. 620).
- **Descent criterion.** For an augmented cosimplicial ∞-category `C^{−1} → C^•` whose squares satisfy the Beck–Chevalley condition (each coface square is right adjointable), the functor `C^{−1} → lim C^•` is an equivalence exactly when `C^{−1} → C⁰` is comonadic: conservative, and preserving totalizations of cosimplicial objects split after applying it (HA Theorem 4.7.5.2 and Corollary 4.7.5.3, pp. 704–705, in dual form; HA Proposition 5.2.2.36, p. 835).

*Proof route.* The first two are limit arguments on coCartesian sections: adjoints, mates and duality data are defined by finitely many coherent maps and units, and a limit of such data is such data (EnhancedDerivedSheaves `presentable_limit_right` for limits along right adjoints, `coherentMate`). The third reduces, through the comparison with comodules over the comonad of `C^{−1} → C⁰`, to the comonadic form of `barrBeckLurie`, obtained by passing to opposite ∞-categories.

**Checks.**

- The empty diagram has limit the terminal ∞-category, the zero category; its unique object is dualizable and invertible, and the componentwise right adjoint is the identity.
- In `D∞(ℤ) × D∞(ℤ)`, the pair (ℤ, ℚ) is not dualizable, since ℚ is not perfect; the pair (ℤ, ℤ[1]) is invertible.
- Adjointability is a hypothesis, not a consequence: the square of extension functors of the ordinary pushout `𝔽_p = 𝔽_p ⊗_ℤ 𝔽_p` (1.2) is not right adjointable, and over a diagram containing it the right adjoint of the limit, which exists by `adjointFunctorTheorem`, is not computed componentwise.
- Compactness is not detected componentwise, unlike dualizability: on the constant prestack `B(ℤ/p) × Spec 𝔽_p` the unit is componentwise compact and dualizable, and not compact (8.5).

*Needs:* 1.2; EnhancedDerivedSheaves E5:presentability.2 (`presentable_limit`, `presentable_limit_right`), E3.2 (`adjointFunctorTheorem`), E3.4 (`coherentMate`, `beckChevalley`), E5:abstract.5 (`barrBeckLurie`), E0.7 (coCartesian sections as limits).

### Examples

- For `R = ℤ` the classical module functor sends `ℤ → ℤ/p` to derived reduction, and the base change of 1.2 for the square of `ℤ → 𝔽_p` with itself holds in `CAlg^cn`, with both sides `𝔽_p ⊗ᴸ_ℤ 𝔽_p`.
- Over `A = k[ε]/(ε²)` the residue field is almost perfect, not perfect, and its base change along the flat map `A → A[t]` is `k[t]`, again almost perfect and not perfect.

### Dependencies

EnhancedDerivedSheaves E0.7, E1.3, E3.2, E3.4, E5:abstract.2–5, E5:presentability.1–2, E5:animation.1 and .4, E5; DerivedModuleAlgebra §1.E.0; Mathlib (`CommRingCat`, `Module.Flat`, `Module.FaithfullyFlat`, `DerivedCategory.TStructure.t`).

## Layer 2: Prestacks and quasi-coherent sheaves

This layer defines prestacks and their quasi-coherent sheaves for each of the three ∞-categories of test rings and proves everything that follows from the definition alone: affine values, limits, stability, colimits, the pointwise tensor product, presentability for small colimits of affines, invariance under change of test rings, and the classical prestacks of schemes and stacks in groupoids.

### 2.1 Prestacks and their points

Define `PreStk_T = Fun(T, Ŝ)`, the ∞-category of prestacks on T, and `Spec : T^op → PreStk_T`, `Spec A = Map_T(A, −)`, the Yoneda embedding. For a prestack X, define its ∞-category of points `Pts(X)` as the left fibration over T classified by X under the supplied straightening; an object is a pair (A, η) with `η ∈ X(A)`, equivalently a map `η : Spec A → X` (SAG Notation 6.2.2.3 and Remark 6.2.2.7, pp. 491–492).

The API consists of the following facts.

- Spec is fully faithful, and `Map(Spec A, X) ≃ X(A)` naturally in A and X.
- Small limits and colimits in `PreStk_T` are computed pointwise; the empty prestack ∅ is initial and `Spec ℤ` (the image of the initial test ring) is final.
- Every prestack is the colimit of the diagram `Pts(X)^op → PreStk_T`, `(A, η) ↦ Spec A`.
- Fibre products of affines are affines: `Spec B ×_{Spec A} Spec C ≃ Spec(B ⊗_A C)`, with the pushout of T, which is derived in `AnRing` and `CAlg^cn` and ordinary in `CRing` (1.1).
- A map `f : Y → X` induces `Pts(f) : Pts(Y) → Pts(X)` over T, and a space K defines the constant prestack with value K, the colimit over K of the final prestack.

**Checks.**

- `Pts(Spec A)` has the initial object `(A, id)`; a definition of points through ordinary fibred categories would lose the higher homotopy of `X(A)`, which for the constant prestack `BΓ` of a group Γ is `π₁ = Γ`.
- `Spec 0` is not the empty prestack: its value at the zero ring is a point; the two become equivalent after fpqc sheafification (3.3), where the empty family covers 0.
- In `CRing`, `Spec 𝔽_p ×_{Spec ℤ} Spec 𝔽_p = Spec 𝔽_p`, while in `AnRing` the same fibre product is `Spec(𝔽_p ⊗ᴸ_ℤ 𝔽_p)`, a different affine.

*Needs:* 1.1; EnhancedDerivedSheaves E0.3–E0.5 (functor ∞-categories, the supplied Yoneda embedding and space-valued straightening, with the universe comparisons of E0.5).

### 2.2 The ∞-category of quasi-coherent sheaves

Define `QCoh : PreStk_T^op → CAlg(Ĉat∞)` as the right Kan extension along `Spec` of `Spec A ↦ Mod_A` (1.2), taken in symmetric monoidal ∞-categories; equivalently `QCoh(X) = lim_{(A,η) ∈ Pts(X)} Mod_A`, the ∞-category of sections of the pullback to `Pts(X)` of the coCartesian fibration of 1.2 that carry every arrow to a coCartesian arrow. Define the evaluation `η^* : QCoh(X) → Mod_A` at a point, the pullback `f^* : QCoh(X) → QCoh(Y)` along `f : Y → X` (restriction along `Pts(f)`), and the structure sheaf `O_X`, the unit of `QCoh(X)` (SAG Definition 6.2.2.1, pp. 490–491; SAG §6.2.6 and Notation 6.2.6.1, pp. 496–497; GR-I Chapter I.3, §1.1, p. 143).

The API consists of the following facts.

- `QCoh(Spec A) ≃ Mod_A`, symmetric monoidally and naturally in A, by evaluation at the initial point (SAG Remark 6.2.2.5, p. 491).
- Pullback is functorial with coherent identifications `(f g)^* ≃ g^* f^*` and `id^* ≃ id`, and `η^*` is the pullback along `η : Spec A → X` followed by the affine identification.
- An object F amounts to modules `F(η) = η^*F ∈ Mod_A` with equivalences `B ⊗_A F(η) ≃ F(φη)` for `φ : A → B`, coherently; `η^* O_X = A` for every point (SAG Remark 6.2.2.7 and Notation 6.2.6.1).
- Mapping spaces are limits: `Map(F, G) ≃ lim_{(A,η)} Map_{Mod_A}(F(η), G(η))`.
- The forgetful functor `CAlg(Ĉat∞) → Ĉat∞` preserves limits, so the underlying ∞-category of `QCoh(X)` is the limit of the underlying ∞-categories.

**Checks.**

- `QCoh(∅)` is the limit over the empty ∞-category, the terminal ∞-category: the zero category. A colimit formula would give the empty ∞-category, which has no zero object and is not stable.
- `QCoh(Spec ℤ) = D∞(ℤ)` in each of the three contexts, and so is `QCoh` of the final prestack.
- `QCoh(Spec A ⊔ Spec B) ≃ Mod_A × Mod_B ≃ Mod_{A × B}` (1.2, products).
- For the constant prestack `X = BΓ × Spec k` with `Γ = ℤ/2` and `k = 𝔽₂`, `QCoh(X) ≃ Fun(BΓ, Mod_k)` and `π₀ Map(O_X, O_X[1]) = H¹(ℤ/2; 𝔽₂) = 𝔽₂` (Mathlib `groupCohomology`), while the pullback of this class to the point `Spec k → X` lies in `Ext¹_k(k, k) = 0`: the value at one atlas point does not determine maps.

*Needs:* 1.2; 2.1; EnhancedDerivedSheaves E3.1 (right Kan extension along a full inclusion, dual of `leftKanExtension_restrict_trivialFibration`), E0.7 (coCartesian sections as limits), E5:abstract.1–2 (symmetric monoidal ∞-categories and their limits); Mathlib `groupCohomology`.

### 2.3 Formal properties

Prove: QCoh carries small colimits of prestacks to limits; every `QCoh(X)` is stable and admits small colimits, computed pointwise; every pullback `f^*` preserves small colimits, hence is exact, and is symmetric monoidal; the tensor product is computed pointwise, `(F ⊗ G)(η) ≃ F(η) ⊗_A G(η)`, and preserves small colimits in each variable; a map, or an object, is an equivalence, or zero, exactly when every evaluation is; and if X is a u-small colimit of affines in `PreStk_T`, then `QCoh(X)` is presentable. In the classical context, the homotopy category of `QCoh(Spec R)` is Mathlib's `DerivedCategory (ModuleCat R)` with its shift and distinguished triangles, and the tensor product descends to the derived tensor product (SAG Proposition 6.2.3.4, pp. 492–493; SAG §6.2.6, pp. 496–497; GR-I Chapter I.3, §§1.1 and 3.2, pp. 143–145 and 159).

*Proof route.* The right Kan extension along the Yoneda embedding of a functor into an ∞-category with limits carries colimits of prestacks to limits, by the universal property of presheaf ∞-categories as free cocompletions (HigherToposTheory L6.3, HTT Theorem 5.1.5.6; SAG Lemma 6.2.1.12, p. 488). Stable ∞-categories with small colimits and colimit-preserving functors are closed under limits in `Ĉat∞`, and so are presentable ones along u-small diagrams (`presentable_limit`); the values `Mod_A` are presentable and stable and the transitions preserve colimits (1.2). The homotopy-category statement is `enhancedDerived.homotopyCategory` with `stableMonoidal_homotopyCategory`, through 1.2's classical values.

**Checks.**

- On `Spec ℤ`, `ℤ/p ⊗ ℤ/p` has `π₀ = π₁ = ℤ/p`, the derived tensor product; the tensor product of `QCoh` is not the ordinary one on hearts.
- Joint conservativity uses all points: on `BΓ × Spec 𝔽₂` with `Γ = ℤ/2`, the nonzero class of 2.2 is a map `O → O[1]` whose evaluation at the atlas point is zero.
- `QCoh(BΓ × Spec k) = Fun(BΓ, Mod_k)` is presentable, BΓ being a small colimit of the final prestack; for a large colimit presentability is not asserted.
- In the classical context `Hom(ℤ/p, ℤ/p[1])` in the homotopy category of `QCoh(Spec ℤ)` is `Ext¹_ℤ(ℤ/p, ℤ/p) = ℤ/p`, as in Mathlib's `DerivedCategory (ModuleCat ℤ)`.

*Needs:* 2.2; 1.2; HigherToposTheory L6.3 (free cocompletion); EnhancedDerivedSheaves E0.5 (the supplied Yoneda embedding), E5:presentability.2 (`presentable_limit`, `PrL`), E1.3 (`enhancedDerived.homotopyCategory`), E5:abstract.4 (`stableMonoidal_homotopyCategory`), E5 (`enhancement_compatibility`); Mathlib `DerivedCategory`.

### 2.4 Change of test rings

Let u be one of `ι : CRing → AnRing`, `θ : AnRing → CAlg^cn` or `θι`, so that the module functor of the source is that of the target restricted along u (1.2). Let `u_! : PreStk_T → PreStk_{T′}` be the left Kan extension along `Spec ∘ u`. Prove that `u_!` preserves small colimits, that `u_! Spec A ≃ Spec u(A)`, and that there is an equivalence `QCoh(u_! X) ≃ QCoh(X)` of symmetric monoidal ∞-categories, natural in X and compatible with pullback and evaluation. Every formal statement about classical prestacks is therefore the restriction of the corresponding statement in a later context (SAG Remark 6.2.2.2, p. 491; GR-I Chapter I.3, §1.2, pp. 145–146).

*Proof route.* Write X as the colimit of its points (2.1); `u_!` preserves colimits and representables, so `u_! X` is the colimit of the `Spec u(A)`, and by 2.3 `QCoh(u_! X) ≃ lim Mod_{u(A)} = lim Mod_A = QCoh(X)`.

The API consists of the following facts.

- `u_!` is left adjoint to restriction `u^*`, `(u^* Y)(A) = Y(u(A))`.
- `u_!` preserves colimits, hence the empty and the final prestack, but not fibre products: `ι_!` of the classical fibre product `Spec 𝔽_p ×_{Spec ℤ} Spec 𝔽_p = Spec 𝔽_p` is `Spec 𝔽_p`, whereas the fibre product of the images is `Spec(𝔽_p ⊗ᴸ_ℤ 𝔽_p)`.

**Checks.**

- `u_! Spec R ≃ Spec u(R)` by Yoneda, and `u_! ∅ = ∅`.
- Restriction does not preserve `QCoh`: for `Y = Spec(𝔽_p ⊗ᴸ_ℤ 𝔽_p)` in `AnRing`, ι being right adjoint to `π₀` gives `ι^* Y = Spec 𝔽_p`, with `QCoh = D∞(𝔽_p)`, whereas the unit of `QCoh(Y)` has `π₁ = 𝔽_p`.
- For the classical constant prestack `BΓ × Spec 𝔽₂`, the image under `ι_!` is the animated constant prestack, and both have `QCoh = Fun(BΓ, D∞(𝔽₂))`.

*Needs:* 2.3; 1.1; 1.2; EnhancedDerivedSheaves E3.1 (left Kan extensions, the supplied absolute Kan extensions).

### 2.5 Classical prestacks of schemes and stacks in groupoids

For a Mathlib scheme X define its classical prestack `h_X : CRing → Ŝ`, `R ↦ Hom(Spec R, X)`, a discrete space. For a stack in groupoids X of SchemeAndStackFoundations §1.18 define `X^♮ : CRing → Ŝ` as follows: restrict the pseudofunctor X to affine schemes, form its Grothendieck construction over the opposite of `CommRingCat` (Mathlib `CategoryTheory.Pseudofunctor.CoGrothendieck`), which is fibred in groupoids (§1.18 `isFiberedInGroupoids`), take the nerve, which is a right fibration over the nerve of affine schemes (HTT Proposition 2.1.1.3, PDF p. 75, in its dual form), and straighten it. Then `X^♮(R)` is equivalent to the nerve of the groupoid `X(Spec R)`, a Kan complex (HTT Proposition 1.2.5.1, PDF p. 53). Strong transformations of stacks give maps of prestacks and modifications give homotopies.

The API consists of the following facts.

- `h` is a fully faithful functor from Mathlib schemes to classical prestacks, and `h_{Spec R} = Spec R`. A morphism of schemes is determined by, and glued from, its restrictions to an affine open cover of the source, and morphisms between affine schemes are ring maps.
- `(−)^♮` carries the stack in groupoids of a scheme (§1.18 `StackInGroupoids.ofSheaf`) to `h_X`, and 2-fibre products (§1.18 `twoFiberProduct`) to fibre products of prestacks, the nerve of a 2-fibre product of groupoids being the homotopy fibre product of nerves.
- `(−)^♮` carries the fppf stackification of a prestack in groupoids (§1.18 `Stack.stackification`) to the fppf sheafification of the corresponding 1-truncated prestack: both are left adjoint to the inclusion of fppf stacks among 1-truncated objects, by the 2-categorical universal property of §1.18 and the compatibility of sheafification with truncation (EnhancedDerivedSheaves E2.7, `spaceSheaves`).

**Checks.**

- `h_{Spec R} = Spec R`; for a nonreduced scheme, restricting `h_X` to fields would not be faithful: the identity of `Spec k[ε]` and the map killing ε agree on every field point.
- For `G = ℤ/2` over ℤ, `(BG)^♮(ℝ)` has two components, the trivial torsor and `Spec ℂ` (the real-points Check of SchemeAndStackFoundations §1.21), and `π₁` at the trivial torsor is `(ℤ/2)(ℝ) = ℤ/2`; over `R = ℝ × ℝ` it is `(ℤ/2)²`, the locally constant functions.
- Replacing each groupoid by its set of isomorphism classes loses `π₁`: on a strictly henselian local ring R the resulting functor of `BG` is a point, whereas `(BG)^♮(R)` has `π₁ = G(R) ≠ 0`.

*Needs:* 2.1; SchemeAndStackFoundations §1.18 (`StackInGroupoids`, `isFiberedInGroupoids`, `Stack.stackification`, `twoFiberProduct`), §1.21 (its real-points Check); Mathlib `CategoryTheory.Pseudofunctor.CoGrothendieck`, `CategoryTheory.nerve`, `SSet.KanComplex`, `AlgebraicGeometry.Scheme`, `AlgebraicGeometry.Spec`; EnhancedDerivedSheaves E0.5 (the supplied straightening), E2.7 (`spaceSheaves`); HigherToposTheory L2.1–L2.2 (HTT Propositions 2.1.1.3 and 1.2.5.1).

### Examples

- For a discrete group Γ and a field k, `QCoh(BΓ × Spec k) ≃ Fun(BΓ, Mod_k)` is the derived ∞-category of k-linear Γ-representations, its unit has `π₀ Map(O, O[i]) = Hⁱ(Γ; k)`, and every evaluation is the forgetful functor to `Mod_k`.
- `QCoh(Spec ℤ ⊔ Spec ℤ) = D∞(ℤ) × D∞(ℤ)`, and `QCoh(∅)` is the zero category.

### Dependencies

Layer 1; EnhancedDerivedSheaves E0.3–E0.7, E1.3, E2.7, E3.1, E5:abstract.1–4, E5:presentability.2, E5; SchemeAndStackFoundations §§1.18, 1.21; HigherToposTheory L2.1–L2.2, L6.3; Mathlib (nerves, Kan complexes, the Grothendieck construction of pseudofunctors, schemes, `DerivedCategory`, `groupCohomology`).

## Layer 3: Flat descent

This layer proves that module categories satisfy descent for flat hypercovers of arbitrary connective test rings, with no finiteness, countability or descendability hypothesis, and deduces fpqc descent for `QCoh`. EnhancedDerivedSheaves E5:descent proves descent for descendable maps; faithfully flat maps need not be descendable, and the route here does not pass through descendability.

### 3.1 The fpqc topology and flat hypercovers

Define the fpqc topology on `T^op` by the covers of the Conventions, and a flat hypercover of a test ring A as an augmented cosemisimplicial test ring `A → A_•` whose latching maps `L_n(A_•) → A_n` are faithfully flat (SAG Remark D.6.1.1 and Definition D.6.1.4, pp. 2173–2174). The Čech nerve `B^{⊗_A(•+1)}` of a faithfully flat `A → B`, formed with the pushouts of T, is a flat hypercover. Define fpqc sheaves and hypercomplete fpqc sheaves in `PreStk_T` as the functors that carry finite products of test rings to products and satisfy descent for Čech nerves, respectively for all flat hypercovers, and the (hyper)sheafification `L : PreStk_T → Shv_fpqc` as the left adjoint of the inclusion, given by the accessible localization of EnhancedDerivedSheaves E2.7 in the universe u+1, in which the ∞-category of test rings is small. Zariski, étale and fppf covers (finite families of open immersions, étale maps or flat maps of finite presentation, jointly faithfully flat) are fpqc covers.

The API consists of the following facts.

- fpqc covers are stable under base change and composition, and so are flat hypercovers; ι and θ carry fpqc covers to fpqc covers and Čech nerves of faithfully flat maps to Čech nerves, since for a flat map the ordinary and derived pushouts agree (1.1).
- In `CRing`, a finite family `{R → S_i}` is an fpqc cover exactly when `{Spec S_i → Spec R}` is a covering family of Mathlib's `AlgebraicGeometry.Scheme.fpqcPrecoverage`; on affine schemes the quasi-compactness condition is automatic.
- `L` is left exact and preserves colimits; a map of prestacks is an fpqc-local equivalence when L inverts it.
- Universal property: a limit-preserving functor from `PreStk_T^op` to an ∞-category with small limits inverts every fpqc-local equivalence of hypersheafification exactly when its restriction to `T^op` is a hypercomplete fpqc sheaf, and similarly for sheafification and sheaves (SAG Proposition 1.3.1.7, p. 117; through HigherToposTheory L6.3 and L7.6, the free cocompletion and the universal property of localizations).

**Checks.**

- The empty family covers exactly the zero ring.
- `{ℤ → ℤ[1/2], ℤ → ℤ[1/3]}` and `ℤ → ℤ[1/p] × ℤ_p` are fpqc covers; `ℝ → ℂ` is a finite étale cover.
- `ℤ → 𝔽_p` is not a cover (not flat), and `ℤ → ℚ` is not (flat, not faithfully flat).

*Needs:* 1.1; 1.3; 2.1; EnhancedDerivedSheaves E2.7 (`spaceSheaves`, `hypercompleteSpaceSheaves`), E3.2 (`accessibleLocalization`), E0.5 (the supplied Yoneda embedding); HigherToposTheory L6.3, L7.6; Mathlib `AlgebraicGeometry.Scheme.fpqcPrecoverage`, `Module.FaithfullyFlat`.

### 3.2 Flat hyperdescent for module categories

Prove: for every `A ∈ CAlg^cn` and every flat hypercover `A → A_•`, the functors `Mod_A^cn → lim_{[n] ∈ Δ_s} Mod^cn_{A_n}` and `Mod_A → lim_{[n] ∈ Δ_s} Mod_{A_n}`, given by extension of scalars, are equivalences, the second one of symmetric monoidal ∞-categories. Equivalently, `Mod : CAlg^cn → CAlg(Ĉat∞)` is a hypercomplete fpqc sheaf. In particular, for every A-module M the map `M → lim_n M ⊗_A A_n` is an equivalence. Through θ and θι the same holds for `AnRing` and `CRing`, and for every faithfully flat map, Čech descent `Mod_A ≃ lim_Δ Mod_{B^{⊗_A(•+1)}}` holds (SAG Theorem D.6.3.1 and Corollaries D.6.3.3–D.6.3.4, pp. 2177–2178; SAG Propositions D.6.1.3 and D.6.2.3, pp. 2174–2177; GR-I Chapter I.3, Theorem 1.3.4 and Corollary 1.3.5, pp. 146–147).

*Proof route.* (1) For a faithfully flat `A → B`, extension of scalars is conservative and t-exact (1.3). (2) Fix `n ≥ 0`. The cosimplicial ∞-category `τ_{≤n} Mod^cn_{A_•}` of the Čech nerve satisfies the Beck–Chevalley condition by 1.2's base change. A totalization of uniformly n-truncated modules is computed in each homotopy group by a finite partial totalization (`tot_filteredColimit_of_bounded`), a finite limit, which the exact and t-exact `B ⊗_A −` preserves; with (1) this makes `B ⊗_A −` comonadic, and the descent criterion of 1.5 gives Čech descent for `A ↦ τ_{≤n} Mod^cn_A`. (3) This functor takes values in (n+1)-categories, whose cores and mapping spaces are truncated, so Čech descent implies hyperdescent (HTT Lemma 6.5.2.9, PDF p. 687, truncated objects of an ∞-topos are hypercomplete). (4) Left completeness (1.3) gives `Mod^cn_A ≃ lim_n τ_{≤n} Mod^cn_A`, and along injective maps of `Δ_s` the transitions of a flat hypercover are flat, hence commute with the truncations, so `A ↦ Mod^cn_A` is a hypercomplete sheaf. (5) Right completeness and stability give `Mod_A ≃ lim(⋯ → Mod^cn_A →Ω Mod^cn_A)`, the stabilization of EnhancedDerivedSheaves `spectra`; the flat transitions are left exact on connective modules and commute with Ω, and limits commute with limits. (6) The comparison is a symmetric monoidal functor that is an equivalence of underlying ∞-categories, hence an equivalence in `CAlg(Ĉat∞)`.

The API consists of the following facts.

- Descendable maps: for a descendable faithfully flat `A → B` in the classical context the equivalence agrees with EnhancedDerivedSheaves `moduleDescent`.
- Hearts: on hearts, Čech descent along a faithfully flat map of ordinary rings is the effectivity of descent data for ordinary modules, the affine case of SchemeAndStackFoundations §1.1 `qcoh_fpqc_descent`.
- `Mod` carries finite products of test rings to products (1.2), so with the theorem it is a hypercomplete `CAlg(Ĉat∞)`-valued fpqc sheaf on `T^op` in each of the three contexts.

**Checks.**

- For the identity `A → A` the Čech nerve is constant and the totalization is `Mod_A`.
- For `(f, g) = A`, the Zariski cover `A → A[1/f] × A[1/g]` gives `Mod_A ≃ Mod_{A_f} ×_{Mod_{A_{fg}}} Mod_{A_g}`; a two-term complex on each chart with a gluing equivalence on the overlap descends, differential included.
- `ℤ → ℤ[1/p] × ℤ_p` recovers `D∞(ℤ)`. Its Čech nerve does not stop at the fracture square: `ℤ_p ⊗_ℤ ℤ_p` is not `ℤ_p`, being rationally `ℚ_p ⊗_ℚ ℚ_p`. The exact sequence `0 → ℤ → ℤ[1/p] ⊕ ℤ_p → ℚ_p → 0` puts ℤ in the thick tensor ideal generated by the target, so this cover is also descendable and the equivalence agrees there with `moduleDescent`.
- `ℤ → 𝔽_p` is not a cover and descent fails: the nonzero ℚ is sent to `ℚ ⊗ᴸ_ℤ 𝔽_p = 0`.
- `𝔽_p → 𝔽_p[ε]/(ε²)` is faithfully flat (free of rank two), and descent recovers `Mod_{𝔽_p}`; the reduction `𝔽_p[ε]/(ε²) → 𝔽_p` is not flat and is not a cover.
- A finite Zariski cover is descendable (`descendableCover_zariski`), and the two descent equivalences coincide on it.

*Needs:* 1.2; 1.3; 1.5; 3.1; EnhancedDerivedSheaves E5:animation.3 (`tot_filteredColimit_of_bounded`), E5:abstract.5 (`barrBeckLurie`), E5:presentability.2 (`spectra`), E5:descent (`moduleDescent`, `descendableCover_zariski`), E2.7 (`hypercompleteSpaceSheaves`); SchemeAndStackFoundations §1.1 (`qcoh_fpqc_descent`); HigherToposTheory L11.3 (HTT Lemma 6.5.2.9).

### 3.3 Invariance under sheafification and Čech descent

Prove, in each context: (a) if a map of prestacks `f : Y → X` becomes an equivalence after fpqc hypersheafification, then `f^* : QCoh(X) → QCoh(Y)` is an equivalence; in particular `QCoh(L X) ≃ QCoh(X)` for the sheafification and the hypersheafification; (b) the restriction of `QCoh` to hypercomplete fpqc sheaves carries small colimits of sheaves to limits; (c) for an fpqc surjection `U → X`, that is a map whose base change to every affine point is refined by an fpqc cover, `QCoh(X) ≃ lim_{[n]∈Δ} QCoh(U_n)` for the Čech nerve `U_•` of `U → X`; (d) consequently `QCoh` satisfies descent for fppf, étale and Zariski covers (SAG Proposition 6.2.3.1 and Remarks 6.2.3.2–6.2.3.3, p. 492; GR-I Chapter I.3, Corollaries 1.3.7, 1.3.8 and 1.3.11, p. 147).

*Proof route.* `QCoh` preserves limits (2.3) and its restriction to representables is `Mod`, a hypercomplete fpqc sheaf (3.2); by the universal property of 3.1 it inverts fpqc-local equivalences of hypersheafification. (c) holds because `|U_•| → X` is an fpqc-local equivalence.

**Checks.**

- `∅ → Spec 0` and `Spec A ⊔ Spec B → Spec(A × B)` are fpqc-local equivalences, and indeed `QCoh(Spec 0) = 0 = QCoh(∅)` and `Mod_{A×B} ≃ Mod_A × Mod_B`.
- `Spec 𝔽_p → Spec ℤ` is not an fpqc surjection, and the Čech totalization is not `D∞(ℤ)`: it kills ℚ.
- For a finite group Γ, the constant prestack `BΓ × Spec k` and the classical stack of Γ-torsors over k-algebras have the same sheafification, and the same `QCoh`, `Fun(BΓ, Mod_k)`; the class of 2.2's Check survives in both.

*Needs:* 2.3; 3.1; 3.2; EnhancedDerivedSheaves E2.7 (`hypercompleteSpaceSheaves`).

### 3.4 Zariski gluing and presentability

Prove: (a) for a Mathlib scheme X, `QCoh(h_X) ≃ lim_{U} QCoh(Spec O(U))`, the limit over the poset of affine opens U of X with restrictions, and for a hypercover `U_• → X` of the Zariski topos by disjoint unions of affine opens, `QCoh(h_X) ≃ lim_Δ QCoh(h_{U_•})`; (b) if the sheafification `L X` lies in the smallest full subcategory of hypercomplete fpqc sheaves containing the representables and closed under u-small colimits, then `QCoh(X)` is presentable (GR-I Chapter I.3, Proposition 1.4.4, p. 149; SAG Proposition 6.2.3.4(3), p. 493).

*Proof route.* (a) `h_X` is the Zariski sheafification of the colimit of the `h_U` over affine opens, and of `|h_{U_•}|`; apply 3.3. (b) `QCoh^{−1}` of presentable categories is closed under colimits of sheaves by 3.3(b) and `presentable_limit`, and contains the representables.

**Checks.**

- For `ℙ¹_k`, `QCoh(h_{ℙ¹}) ≃ D∞(k[t]) ×_{D∞(k[t,t⁻¹])} D∞(k[t⁻¹])`, and `π₀ Map(O, O(−2)[1])` is the cokernel of `k[t] ⊕ k[t⁻¹] → k[t, t⁻¹]`, `(a, b) ↦ a − t⁻²b` read through the transition of `O(−2)`, which is k, spanned by `t⁻¹`; it restricts to zero on both charts.
- For `X = ⨿_ℕ Spec ℤ`, `QCoh(h_X) ≃ ∏_ℕ D∞(ℤ)`, presentable although X is not quasi-compact.
- For the empty scheme the limit is empty-indexed and `QCoh = 0`.

*Needs:* 2.5; 3.3; EnhancedDerivedSheaves E5:presentability.2 (`presentable_limit`).

### Examples

- `ℤ → ℤ[1/p] × ℤ_p` exhibits `D∞(ℤ)` as the totalization of the module ∞-categories of its Čech nerve, whose first terms are `D∞(ℤ[1/p])`, `D∞(ℤ_p)` and the module ∞-categories of `ℚ_p` and `ℤ_p ⊗_ℤ ℤ_p`.
- `QCoh` of the classifying stack of a finite group over a field, as a stack of torsors or as the constant prestack, is `Fun(BΓ, Mod_k)`.

### Dependencies

Layers 1 and 2; EnhancedDerivedSheaves E0.5, E2.7, E3.2, E5:abstract.5, E5:animation.3, E5:presentability.2, E5:descent; SchemeAndStackFoundations §1.1; HigherToposTheory L6.3, L7.6, L11.3; Mathlib (`AlgebraicGeometry.Scheme.fpqcPrecoverage`, `Module.FaithfullyFlat`).

## Layer 4: Pushforward along affine morphisms

### 4.1 Affine morphisms of prestacks

Define a map `f : Y → X` of prestacks on T to be affine if for every point `Spec A → X` the fibre product `Y ×_X Spec A` is affine, `Spec f_η` for a test ring `f_η` under A; it is flat affine if moreover each `A → f_η` is flat (SAG §6.3.2 for relative representability). In the classical context the fibre products are those of `PreStk_CRing`, computed with ordinary tensor products.

The API consists of the following facts.

- Affine morphisms are stable under composition and base change, and contain the maps between affines and the equivalences; affine morphisms to `Spec A` are the maps `Spec B → Spec A`.
- For f affine, `Y ≃ colim_{(A,η)} Spec f_η` over `Pts(X)^op`, by universality of colimits in `PreStk_T`.

**Checks.**

- `id_X` and every `Spec B → Spec A` are affine.
- The classical `h_{𝔸² ∖ 0} → h_{𝔸²}` is not affine: its base change along the identity of `𝔸²` is not affine.
- For a nontrivial affine group scheme G over k, `Spec k → BG` is affine with fibre G, whereas `BG → Spec k` is not: its fibre is BG, whose value at the discrete test ring `O(G)` has `π₁ = G(O(G)) ∋ id ≠ 1` at the trivial torsor, while the values of an affine at discrete test rings are discrete. For `G = 1` both maps are the identity of `Spec k`, which is affine.

*Needs:* 2.1.

### 4.2 Pushforward, projection formula and base change

Let `f : Y → X` be affine, and in the classical context flat affine. Prove: `f^*` has a right adjoint `f_*` computed pointwise, `(f_* F)(η) = (restriction of scalars along A → f_η)(F(Y_η))`; `f_*` preserves small colimits; the projection formula `f_*(f^*M ⊗ N) ≃ M ⊗ f_*N` holds; and for every pullback square of prestacks in the same context, with `g : X′ → X` arbitrary, the Beck–Chevalley map `g^* f_* → f′_* g′^*` is an equivalence (SAG Proposition 6.3.4.1 and Corollary 6.3.4.3, pp. 505–506; GR-I Chapter I.3, Proposition 2.2.2, p. 153).

*Proof route.* Write X as the colimit of its points and Y as in 4.1, so `QCoh(X) ≃ lim Mod_A` and `QCoh(Y) ≃ lim Mod_{f_η}` (2.3). For a transition `A → A′` the square of extension functors is a pushout square of test rings (in the classical context because `A′ ⊗_A f_η` is the derived pushout, f being flat), hence right adjointable by 1.2; apply the adjointable-limit statement of 1.5. The projection formula and base change reduce to points, where they are 1.2.

**Checks.**

- For `f = id` the pushforward, the adjunction and the projection formula are identities.
- For `f : Spec R[t] → Spec R`, `f_* O = R[t]` as an R-module, free of infinite rank, not of rank one; its base change to `R′` is `R′[t]`.
- For the classical, non-flat `f = g : Spec 𝔽_p → Spec ℤ`, base change fails (Conventions witness), and the pointwise formula is wrong: it would give `𝔽_p` at the point `Spec 𝔽_p → Spec ℤ`, whereas the pullback of `f_* 𝔽_p` there is `𝔽_p ⊗ᴸ_ℤ 𝔽_p`. In `AnRing` the same square satisfies base change.
- Projection formula with `M = R[1]` and `N = B` for `Spec B → Spec R`: both sides are the R-module `B[1]`.

*Needs:* 1.2; 1.5; 2.3; 4.1.

### Examples

- The structure map of `𝔸¹_R` pushes `O` forward to the free R-module `R[t]`, and base change along `R → R′` gives `R′[t]` in every context.
- For a finite locally free `Spec B → Spec A`, `f_*` sends perfect modules to perfect modules, and the projection formula identifies `f_* f^* M` with `M ⊗_A B`.

### Dependencies

Layers 1–3.

## Layer 5: Schemes

This layer identifies `QCoh` of the classical prestack of a Mathlib scheme with its quasi-coherent derived sheaves in the enhancement of EnhancedDerivedSheaves, with no quasi-compactness or quasi-separatedness hypothesis, and transports pushforward, the projection formula and base change.

### 5.1 The affine comparison, natural in the ring

For `R ∈ CRing`, let `Φ_R : QCoh(Spec R) ≃ Mod_{θιR} ≃ D∞(R) ≃ Dqc(Spec R)` be the composite of 2.2, 1.2 and `quasicoherentDerived_affine`. Prove that `Φ_R` is a symmetric monoidal equivalence and is natural in R: for `φ : R → S`, `Φ_S ∘ φ^*` is identified with derived pullback `L(Spec φ)^* ∘ Φ_R` (`enhancedPullback`), coherently in composable maps; on homotopy categories `Φ_R` is SchemeAndStackFoundations §2.18's `Coherent.DQCoh.affineEquiv`, and it carries the tensor product to `derivedTensor` (`derivedTensor_affine`) (Stacks, Derived Categories of Schemes, Lemma 36.3.5, tag 06Z0; SAG Proposition 2.2.3.3, p. 202, and Remark 6.2.2.5, p. 491).

*Proof route.* The functor `M ↦ M~` from complexes of R-modules to complexes of `O_{Spec R}`-modules is exact, carries K-flat complexes to K-flat complexes compatibly with tensor products, and commutes with base change, `(S ⊗_R M)~ ≅ (Spec φ)^* M~` on K-flat M, by ordinary natural isomorphisms. Localizing this ordinary natural transformation of families of categories at quasi-isomorphisms (`derivedFamily`) gives a coherent natural transformation from `R ↦ D∞(R)` to `R ↦ Dqc(Spec R)`, which is `quasicoherentDerived_affine` objectwise.

**Checks.**

- `O_{Spec R} ↦ R[0]`, and on `Spec ℤ`, `(ℤ/2)[0] ↦ (ℤ/2)~`, supported at `(2)`.
- For `φ : ℤ → 𝔽_p`, the image of `ℤ/p` is the derived pullback, with cohomology `𝔽_p` in degrees 0 and −1; the underived pullback has no degree −1 term.
- `(ℤ/2)~ ⊗ᴸ (ℤ/2)~` has cohomology `(ℤ/2)~` in degrees 0 and −1, matching `ℤ/2 ⊗ᴸ_ℤ ℤ/2` in `Mod_ℤ`.

*Needs:* 1.2; 2.2; EnhancedDerivedSheaves E1.8 (`quasicoherentDerived_affine`), E1.8.DMA.1 (`derivedTensor_affine`), E1.4 (`enhancedPullback`), E5:abstract.3 (`derivedFamily`); SchemeAndStackFoundations §2.18 (`Coherent.DQCoh.affineEquiv`, `derivedTensor`, `derivedPullback`).

### 5.2 Zariski descent for quasi-coherent derived sheaves

For any Mathlib scheme X define `Dqc(X)` as the full subcategory (`fullEnhancedSubcategory`) of `D∞(O_X)`, the enhanced derived category of the Zariski ringed site of X, on the objects whose image in Mathlib's `DerivedCategory X.Modules` lies in SchemeAndStackFoundations §2.18's `Coherent.DQCoh X`; for qcqs X it is EnhancedDerivedSheaves' `QuasicoherentDerived`. Prove that for every hypercover `U_• → X` of the Zariski topos in which each `U_n` is a disjoint union of affine opens, restriction gives a symmetric monoidal equivalence `Dqc(X) ≃ lim_{[n]∈Δ} Dqc(U_n)`, and that `Dqc` of a disjoint union is the product (Stacks, Derived Categories of Schemes, Lemmas 36.3.2 and 36.3.3, tags 0A0J and 08D3).

*Proof route.* Full faithfulness, for all of `D∞(O_X)`, is `hypercoverPullback_unit`, after identifying Cartesian systems on the simplicial topos `X/U_•` (`cartesianDerivedSystem`) with the coherent limit of the `D∞(O_{U_n})` through `derivedFamily` over `NΔ` and coCartesian sections. For essential surjectivity, truncate a Cartesian system with quasi-coherent cohomology, `τ^{≥−m} K_•`, which stays Cartesian since restriction to opens is t-exact; descend each truncation by `hypercoverDescent_boundedBelow`; form the derived limit `K` of the descended tower (`derivedTowerLimit`). Restriction to an affine open commutes with the derived limit, and on an affine U, `K_U ≃ Rlim τ^{≥−m} K_U` for every complex with quasi-coherent cohomology (Stacks Lemma 36.3.3, tag 08D3), while the cohomology sheaves of K are the quasi-coherent limits of an eventually constant system (Lemma 36.3.2, tag 0A0J); so K lies in `Dqc(X)` and restricts to the given system.

**Checks.**

- For `ℙ¹_k` with its two standard charts, the gluing of `O(−2)[1]` and the class of 3.4's Check, spanned by `t⁻¹`, are recovered from the charts and the overlap.
- For `X = ⨿_ℕ ℙ¹_k`, which has no finite affine cover, the hypercover by all affine opens of the components gives `Dqc(X) ≃ ∏_ℕ Dqc(ℙ¹_k)`.
- The quasi-coherence hypothesis is used: for the generic point `j : U → X` of the spectrum of a discrete valuation ring, `j_! O_U[0]` is not in `Dqc(X)` (SchemeAndStackFoundations §2.18 Check), and the derived-limit step of the route does not apply to it.

*Needs:* EnhancedDerivedSheaves E0.3 (`fullEnhancedSubcategory`), E1.3 (`enhancedDerived`), E2.6 (`Hypercover`, `cartesianDerivedSystem`, `hypercoverPullback_unit`, `hypercoverDescent_boundedBelow`), E2:towers.1 (`derivedTowerLimit`), E5:abstract.3 (`derivedFamily`), E1.8 (`QuasicoherentDerived`); SchemeAndStackFoundations §2.18 (`Coherent.DQCoh`, `DQCoh.restrict`); Mathlib `DerivedCategory`.

### 5.3 Quasi-coherent sheaves on schemes

Prove: for every Mathlib scheme X there is a symmetric monoidal equivalence `Φ_X : QCoh(h_X) ≃ Dqc(X)`, natural in X for pullback, which for `X = Spec R` is `Φ_R` of 5.1, carries the pointwise tensor product to `derivedTensor`, induces on homotopy categories an equivalence with `Coherent.DQCoh X` compatible with shifts and distinguished triangles, and for an open cover of X is compatible with the Zariski gluing of 3.4 and 5.2. For qcqs X, `Dqc(X)` is `QuasicoherentDerived(X)` (SAG Proposition 6.2.4.1, p. 493, with Corollaries 2.1.2.3 and 2.2.6.2, pp. 193–194 and 208, for ordinary schemes; GR-I Chapter I.3, Proposition 1.4.4, p. 149).

*Proof route.* Choose a hypercover `U_• → X` by disjoint unions of affine opens. Then `QCoh(h_X) ≃ lim QCoh(h_{U_•})` (3.4), `QCoh(h_{U_n}) ≃ ∏ Mod_{O(V)}` over the affine components V (2.3), `≃ ∏ Dqc(V)` (5.1, naturally), `≃ Dqc(U_n)`, and `lim Dqc(U_•) ≃ Dqc(X)` (5.2). Two hypercovers have a common refinement, and both sides are compatible with refinement, which gives independence and naturality.

**Checks.**

- `O_X ↦ O_X[0]`.
- For `ℙ¹_k`, `π₀ Map(O, O(−2)[1]) = H¹(ℙ¹, O(−2)) = k` on both sides.
- `⊕_ℕ O` on `Spec ℤ` lies on both sides and is not perfect (6.3); `j_! O_U[0]` for the generic point of a discrete valuation ring is not in the image.
- For `X = ⨿_ℕ Spec ℤ`, both sides are `∏_ℕ D∞(ℤ)`; the comparison needs no quasi-compactness.

*Needs:* 2.5; 3.4; 5.1; 5.2; EnhancedDerivedSheaves E1.3 (`enhancedDerived.homotopyCategory`), E1.4 (`derivedTensor`), E1.8 (`QuasicoherentDerived`); SchemeAndStackFoundations §2.18 (`Coherent.DQCoh`, `derivedTensor`).

### 5.4 Pushforward along schematic morphisms

Prove, in the classical context: (a) for a quasi-compact quasi-separated morphism of schemes `f : Y → X`, under 5.3 the right adjoint `f_*` of `f^*` is the enhanced total direct image (`enhancedPushforward`, on homotopy categories SchemeAndStackFoundations §2.18 `totalDirectImage`); it preserves small colimits, satisfies the projection formula, and satisfies base change along `g : X′ → X` whenever the square is Tor-independent, in particular for g flat; (b) for a map `f : Y → X` of classical prestacks representable by qcqs schemes and flat, meaning that every base change `Y_η → Spec R` along a point is a flat qcqs morphism of schemes, `f^*` has a right adjoint `f_*` computed pointwise by (a), preserving small colimits, satisfying the projection formula and base change along every map of classical prestacks (Stacks, Derived Categories of Schemes, Lemmas 36.4.5, 36.22.1 and 36.22.5, tags 08DZ, 08EU and 08IB; SAG Proposition 6.3.4.1 and Corollary 6.3.4.3, pp. 505–506).

*Proof route.* (a) transports SchemeAndStackFoundations §2.18 (`totalDirectImage_mem_DQCoh`, `totalDirectImage_coproduct`, `projectionFormula`, `torIndependent_baseChange`) through 5.3; preservation of coproducts and exactness give preservation of colimits (`exact_preservesColimits_iff_coproducts`), and an isomorphism of homotopy categories is an equivalence. (b) is the route of 4.2 with (a) in place of 1.2: flatness of `Y_η` over R makes every square `Y_{η′} → Y_η` over `Spec R′ → Spec R` Tor-independent.

**Checks.**

- For `f : ℙ¹_k → Spec k`, `f_* O(−2) = k[−1]`, cohomology k in degree 1.
- For the closed point `Spec 𝔽_p → Spec ℤ` and the same g, the square is not Tor-independent and base change fails, as in the Conventions witness.
- For `f : ℙ¹_ℤ → Spec ℤ` and the flat `g : Spec ℚ → Spec ℤ`, base change gives `f_* O(−2) ⊗_ℤ ℚ = ℚ[−1]`.

*Needs:* 4.2; 5.3; EnhancedDerivedSheaves E1.4 (`enhancedPushforward`), E3.3 (`exact_preservesColimits_iff_coproducts`); SchemeAndStackFoundations §2.18 (`totalDirectImage`, `totalDirectImage_mem_DQCoh`, `totalDirectImage_coproduct`, `projectionFormula`, `torIndependent_baseChange`).

### Examples

- `QCoh(h_{ℙ¹_k})` is the fibre product of three module ∞-categories, and its homotopy category is SchemeAndStackFoundations' `DQCoh ℙ¹_k`, in which `Hom(O, O(−2)[1]) = k`.
- For an infinite disjoint union of affine schemes, `QCoh` and `Dqc` are the product of the module ∞-categories.

### Dependencies

Layers 2–4; EnhancedDerivedSheaves E0.3, E1.3, E1.4, E1.8, E1.8.DMA.1, E2.6, E2:towers.1, E3.3, E5:abstract.3; SchemeAndStackFoundations §2.18; Mathlib `DerivedCategory`.

## Layer 6: The t-structure, perfect and almost perfect objects

### 6.1 Pointwise properties

Define, for a property P of pairs (A, M) of a test ring and a module that is stable under base change, an object F of `QCoh(X)` to have P if every `F(η)` has P (SAG Definition 6.2.5.3, p. 495). Apply this to connectivity, flatness, perfectness, almost perfectness and local freeness of finite rank (1.4), obtaining the full subcategories `QCoh(X)^cn`, `Perf(X)`, `APerf(X)` and `Vect(X)`.

The API consists of the following facts.

- Pullback preserves each of these subcategories; on `Spec A` they are the corresponding subcategories of `Mod_A` (SAG Remark 6.2.5.4 and Example 6.2.5.5, p. 495).
- These properties are local for the fpqc topology: if `A → B` is faithfully flat and `B ⊗_A M` has P, so does M (SAG Proposition 2.8.4.2, p. 275; for perfect and almost perfect modules through the descent of 3.2). Hence for an fpqc-local equivalence `f : Y → X`, F has P exactly when `f^* F` does (SAG Remark 6.2.5.6, p. 495).
- `QCoh(X)^cn` contains `O_X`, is closed under small colimits, extensions and tensor products, and is a symmetric monoidal ∞-category (SAG Example 6.2.5.7, p. 495).

**Checks.**

- n-truncatedness is not a pointwise property in this sense: it is not stable under base change (1.4), so it does not define a subcategory of `QCoh(X)` by this recipe.
- On `Spec ℤ`, `⊕_ℕ O` is connective and flat but not perfect, and `ℤ[x]` regarded as a module over `ℤ` is flat, not perfect.
- On `BΓ × Spec k`, an object is perfect exactly when its underlying k-module is perfect, whatever the Γ-action.

*Needs:* 1.4; 2.3; 3.2.

### 6.2 The t-structure

Prove: (a) if `QCoh(X)` is presentable (2.3, 3.4), then `QCoh(X)^cn` is presentable and generates an accessible t-structure with `QCoh(X)_{≥0} = QCoh(X)^cn`; pullbacks are right t-exact; on `Spec A` it is the t-structure of 1.3 (SAG Remark 6.2.5.8, pp. 495–496; GR-I Chapter I.3, §1.5.1, p. 149). (b) Call X geometric if it is a hypercomplete fpqc sheaf with affine diagonal admitting a faithfully flat map `p : Spec A → X`, that is a flat affine map (4.1; p is affine because the diagonal is) that is an fpqc surjection (3.3). For geometric X: F is connective, respectively coconnective, exactly when `p^* F` is; the t-structure is compatible with filtered colimits and is left and right complete; and the heart is the category of descent data of discrete `π₀A`-modules along `p`. In the classical context the same holds when the diagonal is quasi-affine instead of affine, and for `X = Y^♮` with Y a stack of SchemeAndStackFoundations §1.18 with flat affine atlas and affine diagonal, the heart is §1.22's `Stacks.QCoh(Y)` (SAG Proposition 9.1.3.1 and Corollary 9.1.3.2, pp. 733–734; GR-I Chapter I.3, Proposition 1.5.4, p. 150).

*Proof route.* (a) is the t-structure generated by a presentable subcategory closed under colimits and extensions (HA Proposition 1.4.4.11, p. 160). (b) By 3.3, `QCoh(X) ≃ lim_{Δ_s} Mod_{A_n}` for the Čech nerve of p, whose terms are affine by the affine diagonal and whose injective transitions are flat, hence t-exact (1.3); the t-structure of the limit is computed levelwise and inherits completeness and compatibility with filtered colimits from the `Mod_{A_n}`. Its heart is the limit of the hearts, the descent data, which for classical stacks is §1.22's presentation equivalence. In the classical quasi-affine case the terms are quasi-affine schemes, handled by 5.3 and §2.18's `DQCoh.tStructure`.

**Checks.**

- On `Spec A` the heart is `ModuleCat (π₀A)`, and for `A = 𝔽_p ⊗ᴸ_ℤ 𝔽_p` it is `ModuleCat 𝔽_p`.
- Coconnectivity is not pointwise even on an affine (SAG Warning 6.2.5.9, p. 496): `𝔽_p` on `Spec ℤ` lies in `QCoh_{≤0}`, while its pullback along `Spec 𝔽_p → Spec ℤ` is `𝔽_p ⊗ᴸ_ℤ 𝔽_p`, with `π₁ ≠ 0`.
- For `G_m` over ℤ, the heart of `QCoh(BG_m)` is the category of ℤ-graded abelian groups, the comodules over `ℤ[t, t⁻¹]`.
- For `Γ = ℤ/2` and k = `𝔽₂`, the heart of `QCoh(BΓ × Spec k)` is the category of `k[Γ]`-modules, and `Ext¹` of the unit there is `𝔽₂`.

*Needs:* 1.3; 2.3; 3.3; 3.4; 5.3 (classical quasi-affine case); SchemeAndStackFoundations §1.22 (`Stacks.QCoh`, `QCoh.presentationEquiv`), §2.18 (`DQCoh.tStructure`); HigherToposTheory L9.6 (HA Proposition 1.4.4.11).

### 6.3 Perfect, dualizable, invertible and locally free objects

Prove, for every prestack X: an object of `QCoh(X)` is perfect exactly when it is dualizable, and invertible exactly when every evaluation is invertible; a connective object is dualizable in `QCoh(X)^cn` exactly when it is locally free of finite rank; `X ↦ Perf(X)` is the right Kan extension of `A ↦ Perf(A)` and satisfies fpqc hyperdescent; and for a qcqs scheme X, under 5.3, `Perf(h_X)` is EnhancedDerivedSheaves' `PerfectDerived(X)` (SAG Propositions 6.2.6.2 and 6.2.6.3, p. 497; HA Proposition 4.6.1.11, p. 620; GR-I Chapter I.3, Corollaries 3.6.4–3.6.5, p. 163).

*Proof route.* Dualizable and invertible objects of a limit are those with dualizable or invertible images (1.5), and in `Mod_A` dualizable means perfect (1.4); connective dualizability uses SAG Proposition 2.9.1.5 (1.4). Descent is 3.3 restricted to the full subcategories of 6.1. For schemes, a complex locally represented by bounded complexes of finite projective modules is perfect on every affine, and conversely by `DerivedDeRham.IsPerfect` on affine opens.

**Checks.**

- `ℤ ⊕ ℤ[3]` on `Spec ℤ` is perfect and dualizable; ℚ is neither.
- `O[1]` is invertible and not a line bundle in degree zero; `O ⊕ O` over a nonzero field is dualizable and not invertible.
- `ℤ/p` on `Spec ℤ` is connective and perfect but not locally free.
- On `B(ℤ/p) × Spec 𝔽_p`, `O` is dualizable, as every evaluation is, though not compact (8.5).

*Needs:* 1.4; 1.5; 3.3; 5.3; 6.1; EnhancedDerivedSheaves E1.8 (`PerfectDerived`); DerivedModuleAlgebra §1.E.0 (`DerivedDeRham.IsPerfect`).

### 6.4 Almost perfect objects

Prove: `APerf(X)` is a stable subcategory closed under retracts containing `Perf(X)`; in the classical context it consists of the objects whose evaluations satisfy `IsPseudoCoherent`, and for a scheme X, under 5.3, of the objects of `Dqc(X)` satisfying SchemeAndStackFoundations §2.18's `PseudoCoherence.IsPseudoCoherentComplex`; on a Noetherian scheme these are the objects of `D⁻_coh`; and on a geometric X (6.2) an object F is almost perfect exactly when, for every n, `Map(F, −)` commutes with filtered colimits on `QCoh(X)_{≤n}` (SAG Proposition 9.1.5.1, p. 736; HA Propositions 7.2.4.11 and 7.2.4.17, pp. 1265–1268; Stacks, Derived Categories of Schemes, Lemma 36.10.3, tag 08E8).

*Proof route.* The first two statements are 1.4 pointwise, with 6.1. For schemes, pseudo-coherence is local and agrees on affines with `IsPseudoCoherent` (§2.18's `isPseudoCoherentComplex_affine_iff`). The criterion on geometric stacks reduces through the Čech nerve of p to the affine case, where it is the definition of almost compactness, using that flat pullback is t-exact.

**Checks.**

- On `Spec k[ε]/(ε²)`, the residue field k is almost perfect and not perfect.
- On `Spec ℤ`, `⊕_ℕ O` is not almost perfect: `π₀` is not finitely generated.
- On `Spec k[x₁, x₂, …]` the residue field at the origin is not almost perfect; on the Noetherian `Spec ℤ`, `ℤ/p` is almost perfect, being in `D⁻_coh`.

*Needs:* 1.4; 5.3; 6.1; 6.2; SchemeAndStackFoundations §2.18 (`PseudoCoherence.IsPseudoCoherentComplex`); DerivedModuleAlgebra §1.E.0 (`IsPseudoCoherent`).

### Examples

- On `Spec ℤ`, the t-structure is the standard one, `Perf` is the perfect complexes, `APerf` is `D⁻_coh`, and `𝔽_p` lies in the heart although its pullback to `Spec 𝔽_p` does not.
- On `BG_m` over ℤ the heart is graded abelian groups, the perfect objects are the graded perfect complexes with finitely many nonzero weights, and the invertible objects are the shifts of the characters.

### Dependencies

Layers 1–5; SchemeAndStackFoundations §§1.22, 2.18; DerivedModuleAlgebra §1.E.0; EnhancedDerivedSheaves E1.8; HigherToposTheory L9.6.

## Layer 7: Quotients and equivariant sheaves

### 7.1 Group prestacks, actions and realizations

Define a group prestack as a groupoid object `G_•` of `PreStk_T` (HTT Definition 6.1.2.7, PDF p. 559) whose object of objects `G_0` is final, with underlying prestack `G = G_1`; an action of G on a prestack X as a groupoid object `(G^{×n} × X)_{n}` with object of objects X, together with a map to `G_•` restricting to the projections; its realization `|G^{×•} × X|` as the colimit in `PreStk_T` of the underlying simplicial object; and the quotient `[X/G]` as the fpqc hypersheafification of the realization (3.1). `BG = [∗/G]`. A discrete group Γ gives the constant group prestack Γ; in the classical context a group space over a scheme S acting on an S-scheme X (SchemeAndStackFoundations §1.13, `GroupSpace` and `Action`) gives a group prestack and an action through `h` (2.5).

The API consists of the following facts.

- Groupoid objects in `PreStk_T` are effective, prestacks forming a presheaf ∞-topos (HTT Theorem 6.1.0.6, PDF pp. 547–548, through Propositions 6.1.3.10 and 6.1.3.19, PDF pp. 566–567 and 573–574): `X ×_{|G^{×•} × X|} X ≃ G × X`, the action and projection maps.
- If G is affine over the final prestack and X is affine, then `[X/G]` has affine diagonal; if moreover each value of G at a point is flat, `X → [X/G]` is an fpqc surjection, so `[X/G]` is geometric in the sense of 6.2 when X is affine.
- `[X/1] ≃ X`, and for G acting on itself by translation the realization is final.

**Checks.**

- For the trivial group the bar construction is constant and `[X/1] = X`.
- For G acting on itself by left translation, `|G^{×•} × G|` is the final prestack; a quotient formed by taking `π₀` of each value would instead give the orbit set, which agrees here but not for `BG = [∗/G]`, whose values have `π₁ = G(A)`.
- For a discrete group Γ the realization of its action on the final prestack is the constant prestack BΓ.

*Needs:* 2.1; 2.5; 3.1; SchemeAndStackFoundations §1.13 (`GroupSpace`, `Action`); HigherToposTheory L6.8 (HTT Definition 6.1.2.7), L10.1 (HTT Theorem 6.1.0.6, `HTT.6.1.0.6/stmt`) and L10.3 (HTT Propositions 6.1.3.10 and 6.1.3.19).

### 7.2 Quasi-coherent sheaves on realizations and quotients

Prove: for every action of a group prestack G on a prestack X, in every context, `QCoh(|G^{×•} × X|) ≃ lim_{[n] ∈ Δ} QCoh(G^{×n} × X)`, symmetric monoidally, the ∞-category of coherently G-equivariant objects of `QCoh(X)`; pullback along `X → |G^{×•} × X|` is the forgetful functor; and `QCoh([X/G]) ≃ QCoh(|G^{×•} × X|)` with no hypothesis on G (SAG Proposition 6.2.3.1, p. 492; GR-I Chapter I.3, Corollaries 1.3.8 and 1.3.11, p. 147).

*Proof route.* The first statement is 2.3 applied to the colimit defining the realization; the second is 3.3(a).

**Checks.**

- `QCoh([X/1]) = QCoh(X)`, and for G acting on itself `QCoh([G/G]) = QCoh(∗) = D∞(ℤ)`, the cosimplicial diagram being the Čech nerve of `G → ∗`.
- For `G = ℤ/2` over `𝔽₂`, `π₀ Map(O, O[1])` on `BG` is `H¹(ℤ/2; 𝔽₂) = 𝔽₂`, while the ordinary invariants of the atlas module `𝔽₂` see only `H⁰`.
- For `G = G_m` over ℤ the totalization is the ∞-category of comodules over `ℤ[t, t⁻¹]` in `D∞(ℤ)`, with heart the ℤ-graded abelian groups (6.2).

*Needs:* 2.3; 3.3; 7.1.

### 7.3 Quotients by discrete groups

Let Γ be a u-small discrete group acting on a prestack X, that is a functor `BΓ → PreStk_T` with value X, and let `X/Γ` be its colimit. Prove that `QCoh(X/Γ) ≃ QCoh(X)^{hΓ}`, the limit of the induced action `BΓ → CAlg(Ĉat∞)` on `QCoh(X)`, which for finite Γ is EnhancedDerivedSheaves' `homotopyFixedPoints`; that `X/Γ` is the realization of the action of the constant group prestack Γ (7.1); and that `QCoh([X/Γ]) ≃ QCoh(X/Γ)`. No finiteness of Γ and no covering property of `X → X/Γ` is assumed; the lattice `Γ = ℤ^d` acting on an affine through ring automorphisms is the case of the last Check (GR-I Chapter I.3, Corollary 1.3.8, p. 147).

*Proof route.* 2.3 applied to the colimit over BΓ, and 3.3(a).

**Checks.**

- For the trivial group, `QCoh(X/1) = QCoh(X)`.
- For Γ = ℤ acting trivially on `Spec C`, `QCoh(Spec C/ℤ) = Fun(Bℤ, D∞(C))`, complexes with an automorphism, and `π₀ Map(O, O[1]) = H¹(ℤ; C) = C`; the coarse quotient `Spec C` has `π₀ Map(O, O[1]) = 0`. For `C = ℚ[x^{±1}]` this is the class `ℚ[x^{±1}]` that a coarse quotient loses.
- For `Γ = ℤ^d` acting on `Spec C` through ring automorphisms, `QCoh(Spec C/ℤ^d) ≃ D∞(C)^{hℤ^d}`; for `d = 0` this is `D∞(C)`, with no fixed-point factor.

*Needs:* 2.3; 3.3; 7.1; EnhancedDerivedSheaves E5:presentability.3 (`homotopyFixedPoints`, `CoherentActionData`); Mathlib `groupCohomology`.

### 7.4 Classical quotient stacks

Let k be a commutative ring, G a flat affine group scheme over k, regarded as a group space over `Spec k` (SchemeAndStackFoundations §1.13), acting on a k-scheme X, and let `[X/G]` be SchemeAndStackFoundations §1.21's `actionQuotient`, an fppf stack in groupoids. Prove, in the classical context: (a) `[X/G]^♮` is the fppf sheafification of the realization `|h_G^{×•} × h_X|`, so `QCoh([X/G]^♮) ≃ lim_{[n]∈Δ} Dqc(G^n × X)` (2.5, 7.2, 5.3); (b) the t-structure of 6.2, computed levelwise along the flat face maps of the bar construction, has heart SchemeAndStackFoundations §1.22's `Stacks.QCoh([X/G])`, the G-equivariant quasi-coherent `O_X`-modules (`QCoh.presentationEquiv`; Stacks, Sheaves on Algebraic Stacks, Definition 96.11.1 and Proposition 96.14.3, tags 06WG and 06WT); (c) for `X = Spec k` the heart is the category of comodules over the flat Hopf algebra `O(G)`; (d) if `[X/G]` is quasi-compact with affine diagonal, for instance X affine, the t-exact functor `D⁺(QCoh([X/G])^♥) → QCoh([X/G])^+` extending the inclusion of the heart is an equivalence (GR-I Chapter I.3, Proposition 2.4.3 and Lemma 2.4.5, p. 156; SAG Corollary 10.4.6.8, p. 930; HNR Theorem C.1, p. 16, for the lisse-étale analogue).

*Proof route.* (a) uses 2.5's comparison of stackification with sheafification. (b) and (c): the face maps `G^n × X → G^{n−1} × X` are flat, so pullback along them is t-exact and the heart of the limit is the limit of the hearts, the descent data of quasi-coherent modules, which is §1.22's presentation equivalence. (d): the functor exists by the dual of HA Theorem 1.3.3.2 (p. 97), the heart being Grothendieck abelian with enough injectives and the t-structure right complete; for an affine flat atlas `f : Spec A → [X/G]`, which is affine because the diagonal is, every heart object embeds into `f_* I` for an injective A-module I, and `Hom(F′, f_* I[n]) = Hom(f^* F′, I[n]) = 0` for `n > 0` and F′ in the heart, f being flat; GR-I Lemma 2.4.5 then gives the equivalence on bounded-below objects.

**Checks.**

- For the trivial group, `[X/1] = X` and (a) is 5.3.
- For `G = G_m` over ℤ and `X = Spec ℤ`, the heart is ℤ-graded abelian groups.
- For `G = ℤ/p` over `𝔽_p` and `X = Spec 𝔽_p`, `Ext^i` of the unit in the heart is `Hⁱ(ℤ/p; 𝔽_p) = 𝔽_p` for every `i ≥ 0`, and (d) identifies it with `π₀ Map(O, O[i])` in `QCoh(BG)`.
- The comparison is not asserted on unbounded objects: for `G = G_a` over `𝔽_p`, `D(QCoh(BG)^♥)` is not left complete (SAG Warning 10.4.6.9, p. 930), while `QCoh(BG)` is (6.2).

*Needs:* 2.5; 5.3; 6.2; 7.2; SchemeAndStackFoundations §1.13 (`GroupSpace`), §1.21 (`actionQuotient`, `BG`), §1.22 (`Stacks.QCoh`, `QCoh.presentationEquiv`); EnhancedDerivedSheaves E1.3 (`enhancedDerived` for the Grothendieck abelian heart); HigherToposTheory L9.4 (HA Theorem 1.3.3.2).

### Examples

- `QCoh(BG_m)` over ℤ is the ∞-category of `ℤ[t, t⁻¹]`-comodules in `D∞(ℤ)`, equivalently ℤ-graded objects of `D∞(ℤ)`; its heart is ℤ-graded abelian groups and its bounded-below part is the bounded-below derived category of graded abelian groups.
- For `Γ = ℤ^d` acting on `Spec C` by `σ_a(x^m) = q^{⟨a,m⟩} x^m`, `QCoh(Spec C/ℤ^d) ≃ D∞(C)^{hℤ^d}`, and at `q = 1` the stabilizer `ℤ^d` contributes `H¹(ℤ^d; C) = C^d` to `π₀ Map(O, O[1])`.

### Dependencies

Layers 2, 3, 5 and 6; SchemeAndStackFoundations §§1.13, 1.21, 1.22; EnhancedDerivedSheaves E1.3, E5:presentability.3; HigherToposTheory L6.8, L9.4, L10.1, L10.3; Mathlib `groupCohomology`.

## Layer 8: Compact generation and perfect stacks

### 8.1 Qcqs schemes

Prove: for a qcqs scheme X, `QCoh(h_X)` is compactly generated by a single perfect object, and its compact, perfect and dualizable objects coincide (SchemeAndStackFoundations §2.18 `perfect_generator`; Stacks, Derived Categories of Schemes, Theorem 36.15.3 and Proposition 36.17.1, tags 09IS and 09M1; SAG Proposition 9.6.1.1, p. 807).

*Proof route.* Transport `perfect_generator` through 5.3: the homotopy-category generator detects zero objects, and perfect objects are compact. Conversely compact objects of `DQCoh X` are perfect (Stacks 09M1). Perfect equals dualizable by 6.3.

**Checks.**

- For `X = Spec A`, the generator is `O` and compact = perfect is 1.4.
- For `ℙ¹_k`, `O ⊕ O(−1)` generates: an object with no maps from any shift of `O` or `O(−1)` is zero.
- Quasi-compactness is needed: for `X = ⨿_ℕ Spec ℤ`, `QCoh(h_X) = ∏_ℕ D∞(ℤ)` is compactly generated, but `O` is dualizable and not compact, since `Hom(O, ⊕_i O_i) = ∏_i ℤ ≠ ⊕_i ℤ` for the unit `O_i` of the i-th factor.

*Needs:* 5.3; 6.3; SchemeAndStackFoundations §2.18 (`perfect_generator`); EnhancedDerivedSheaves E5:presentability.1 (`compactObjects`, `IsCompactlyGenerated`).

### 8.2 Perfect stacks

Define a prestack X to be perfect if it has affine diagonal and `QCoh(X)` is presentable and equivalent to `Ind(Perf(X))` through the inclusion of `Perf(X)` (BZFN Definition 3.2, p. 17). Prove that X with affine diagonal is perfect exactly when `QCoh(X)` is compactly generated and its compact and dualizable objects coincide (BZFN Proposition 3.9, p. 20), and that for perfect X the unit `O_X` is compact, so that global sections `Map(O_X, −)` commute with colimits.

The API consists of the following facts.

- Perfectness depends only on `QCoh(X)` and the diagonal; it is invariant under fpqc-local equivalences between prestacks with affine diagonal (3.3).
- On a perfect stack, the compact objects are `Perf(X)`, which is idempotent complete and generates.

**Checks.**

- `Spec A` is perfect in every context.
- `BG_m` over any ring is perfect: `QCoh(BG_m)` is the graded objects, generated by the characters, whose mapping functor is a weight space and commutes with colimits; a graded object is dualizable exactly when it is perfect in each weight and zero in all but finitely many weights, exactly the compact objects.
- `⨿_ℕ Spec ℤ` has affine diagonal and compactly generated `QCoh` but is not perfect (8.1's Check): the definition must ask compact = dualizable.

*Needs:* 2.3; 3.3; 6.3; EnhancedDerivedSheaves E5:presentability.1 (the supplied Ind-completion, `compactObjects`, `IsCompactlyGenerated`), E5:abstract.4 (`idemCompletion`).

### 8.3 Permanence of perfectness

Prove the following (BZFN Lemma 3.20, Propositions 3.21 and 3.24, and Corollary 3.23, pp. 23–25).

- (a) If `f : Y → X` is affine and X is perfect, then Y is perfect; in the classical context f is assumed flat affine (4.1).
- (b) In the classical context, let `f : Y → X` be flat and representable by qcqs schemes in the sense of 5.4(b), with X perfect, and let `{L_i}_{i∈I}` be a set of invertible objects of `QCoh(Y)` whose restrictions to every base change `Y_η` along a point of X are invertible modules forming an ample family on the scheme `Y_η` (Stacks, Morphisms of Schemes, Definition 29.12.1, tag 0FXR: `Y_η` is quasi-compact and every point of it lies in the non-vanishing locus of a global section of a positive tensor power of some `L_i`, that locus being affine). Then Y is perfect. A single invertible object whose restriction to every `Y_η` is ample is the case of a one-element I, the case 8.4 uses.
- (c) In the animated and `E∞` contexts, for every morphism `p : X → Y` between perfect stacks, the base change `X ×_Y Spec A` along every point `Spec A → Y` is perfect. In the classical context the same holds for every morphism p representable by qcqs schemes with affine diagonal, meaning that every such base change is (the classical prestack of) a qcqs scheme with affine diagonal, with no flatness of p and no perfectness of X or Y assumed; affine morphisms are of this kind.
- (d) In the animated and `E∞` contexts, for perfect `X₁` and `X₂` over a prestack Y with affine diagonal, `X₁ ×_Y X₂` is perfect; for Y final this says that `X₁ × X₂` is perfect. In the classical context, if `X₂` is perfect and `X₁ → Y` is flat affine, or is flat and representable by qcqs schemes with a set of invertible objects on `X₁` as in (b), then `X₁ ×_Y X₂` is perfect, for every map `X₂ → Y`.

*Proof route.* (a) and (b): Y has affine diagonal, since `Y → Y ×_X Y` is affine (in (b) each `Y_η` has affine diagonal, Stacks, Morphisms of Schemes, Lemma 29.12.2, tag 0FXS) and `Y ×_X Y → Y × Y` is a base change of the diagonal of X. `f_*` preserves colimits and satisfies the projection formula (4.2, 5.4(b)), so `f^*` preserves compact objects (`rightAdjoint_preservesCoproducts_iff`); hence `O_Y = f^*O_X` is compact and every dualizable object of `QCoh(Y)` is compact. In case (a) let the family be `{O_Y}`. For compact M on X, `i ∈ I` and `n ≥ 0`, the object `f^*M ⊗ L_i^{⊗−n}` is dualizable, M being dualizable because X is perfect, and so compact. These objects generate: if N admits no nonzero map from any of their shifts, adjunction gives `Map(M, f_*(L_i^{⊗n} ⊗ N)[k]) = 0` for all compact M and all k, so `f_*(L_i^{⊗n} ⊗ N) = 0` because X is compactly generated; by the pointwise formula for `f_*`, `RΓ(Y_η, L_i^{⊗n} ⊗ N) = 0` on every base change `Y_η`, which forces `N|_{Y_η} = 0`, in case (a) because restriction of scalars is conservative, in case (b) by Stacks, Derived Categories of Schemes, Lemma 36.16.1 (tag 0BQR) with 5.3, whose proof uses of the ample invertible module only that the scheme is quasi-compact with affine diagonal and that each point lies in the affine non-vanishing locus of a global section of a positive power, and so applies verbatim to an ample family (the generation step of BZFN Proposition 3.21); and every point of Y factors through some `Y_η`. Let `C₀` be the smallest stable subcategory closed under retracts containing these generators; it consists of compact dualizable objects, dualizable objects being the perfect ones (6.3). The induced functor `Ind(C₀) → QCoh(Y)` is fully faithful, and its image is closed under colimits and contains the generators, hence is everything (the right adjoint of its inclusion exists by `adjointFunctorTheorem`, and the cofibre of its counit admits no map from the generators). So the compact objects of `QCoh(Y)` are those of `Ind(C₀)`, namely `C₀` (`indCompactComparison`; Neeman's theorem, BZFN §3.1.2, p. 20), all dualizable, and 8.2 applies. This route never pulls back along a projection `Y_η → Y`, which in the classical context need not be flat (4.2); BZFN's proof of the second half of Lemma 3.20 does.

(c): in the animated and `E∞` contexts, `X ×_Y Spec A → X` is the base change of the point, affine because Y has affine diagonal, so the base change is perfect by (a) (BZFN Corollary 3.23). In the classical context the base change is a qcqs scheme with affine diagonal, perfect by 8.1 with 8.2.

(d): in the animated and `E∞` contexts, `X₁ ×_Y X₂ → X₁ × X₂` is a base change of the diagonal of Y, hence affine, so by (a) it suffices that `X₁ × X₂` is perfect (BZFN Proposition 3.24). For a point `U = Spec A → X₁`, the map `q_U : U × X₂ → X₂` is affine, so `U × X₂` is perfect by (a) and its unit is compact (8.2); hence the pushforward along `U × X₂ → U` preserves colimits and satisfies the projection formula, the squares of these pushforwards over maps of points of `X₁` are right adjointable (4.2 for the affine maps between the `U × X₂`), and the projection `π₁ : X₁ × X₂ → X₁` has a pushforward computed pointwise and preserving colimits (1.5, as in 4.2). Then the unit of `X₁ × X₂` is `π₁^*O_{X₁}`, compact; the objects `π₁^*M₁ ⊗ π₂^*M₂` for compact `M_i` are dualizable, hence compact; and they generate: if N admits no nonzero map from their shifts, then `π_{1*}(π₂^*M₂^∨ ⊗ N) = 0` for each compact `M₂` because `X₁` is compactly generated, so at every point U of `X₁`, `Map(M₂, q_{U*}(N|_{U × X₂})[k]) = 0` for all k, whence `q_{U*}(N|_{U × X₂}) = 0` because `X₂` is compactly generated, and `N|_{U × X₂} = 0` because `q_{U*}` is computed pointwise by restriction of scalars (4.2); so N = 0. Compact objects are dualizable by the Ind argument of (a). In the classical context, `X₁ ×_Y X₂ → X₂` is a base change of `X₁ → Y`, and its base change along a point of `X₂` is that of `X₁ → Y` along the composite point; so it is flat affine, respectively flat and representable by qcqs schemes with the pulled-back family, and (a), respectively (b), applies over the perfect `X₂`.

**Checks.**

- The identity of a perfect stack and `Spec B → Spec A` are affine and preserve perfectness.
- In the animated and `E∞` contexts, (d) with Y final makes `BG_m × BG_m = B(G_m²)` over ℤ perfect, generated by the characters of `G_m²`.
- Flatness is used in the classical context: for the closed point `Spec 𝔽_p → Spec ℤ`, base change of affine maps along it is not computed by the classical fibre product (4.2), and the route of (a) does not apply to non-flat classical maps. For the same reason the classical clause of (c) is not stated for arbitrary morphisms between perfect stacks: the derived route applies (a) to `X ×_Y Spec A → X`, the base change of a point of Y, which is affine but flat only when the point is.
- For `A = k[ε]/(ε²)` over a field k and `X₁ = X₂ = Y = Spec A` in the classical context, the classical clause of (d) applies through the flat affine identity `X₁ → Y` and returns `Y`, perfect. A route through `X₁ ×_Y X₂ → X₁ × X₂` would not: that map is the diagonal `Spec A → Spec(A ⊗ A)`, tensor product over ℤ, affine but not flat, since for its kernel I the group `Tor₁^{A⊗A}(A, A) = I/I² = Ω¹_{A/ℤ}` surjects onto `Ω¹_{A/k}`, which is `k·dε` in characteristic not 2 and `A·dε` in characteristic 2, nonzero in both.
- An ample family need not contain an ample member: the affine line Z with doubled origin over a field k carries invertible modules `L_1` and `L_{−1}` with global sections whose non-vanishing loci are the two affine charts, so `{L_1, L_{−1}}` is an ample family, whereas Z is not separated and so has no ample invertible module (Stacks, Morphisms of Schemes, Remark 29.12.3, tag 0FXT). Thus (b) applies to `h_Z → Spec k` and the single-module case does not; its conclusion agrees with 8.1 with 8.2, Z being a qcqs scheme with affine diagonal (tag 0FXS).

*Needs:* 1.5; 4.1; 4.2; 5.3; 5.4; 6.3; 8.1; 8.2; EnhancedDerivedSheaves E3.2 (`adjointFunctorTheorem`), E3.3 (`rightAdjoint_preservesCoproducts_iff`), E5:presentability.1 (the supplied Ind-completion, `indCompactComparison`, `IsCompactlyGenerated`).

### 8.4 Quotient stacks in characteristic zero

Prove: over a field k of characteristic zero, for an affine group scheme G of finite type over k acting on a quasi-projective k-scheme X through a G-linearized ample line bundle, the classical prestack `[X/G]^♮` is perfect; in particular `QCoh([X/G]^♮) ≃ Ind(Perf([X/G]^♮))` (BZFN Corollary 3.22, p. 24).

*Proof route.* `BGL_n` is perfect: finite-dimensional representations of `GL_n` are completely reducible in characteristic zero (ReductiveGroups Layer 6), so every representation is a sum of irreducible finite-dimensional ones and derived invariants are exact; hence every finite-dimensional representation V is compact, `Map(V[i], M)` computing `Hom(V, π_i M)` in the heart, and since the t-structure of 6.2 on the geometric stack `BGL_n` is left and right complete, the finite-dimensional representations, which are the dualizable objects, generate. A faithful representation `G → GL_n` (ReductiveGroups Layer 1) gives `BG → BGL_n`, flat with fibre `GL_n/G`, quasi-projective with a `GL_n`-linearized ample line bundle (gap:chevalley-quasiprojective-quotient). Its base change along a point `Spec R → BGL_n`, a `GL_n`-torsor P, is the twist `P ×^{GL_n} (GL_n/G)`: P is the frame bundle of the rank-n locally free module it defines by the descent of SchemeAndStackFoundations §1.1, hence Zariski-locally trivial, so the twist is glued from copies of `GL_n/G × U_i` with the twisted `O(1)` ample on it. Thus 8.3(b) applies and BG is perfect. `[X/G] → BG` is flat, representable by quasi-projective schemes with the linearized ample bundle, so 8.3(b) applies again.

**Checks.**

- `B(ℤ/p)` over ℚ is perfect: by Maschke's theorem invariants are exact, so `O` is compact.
- `BG_a` over ℚ is perfect, `G_a` being a closed subgroup of `GL₂` with quasi-projective quotient `GL₂/G_a`.
- The characteristic hypothesis cannot be dropped: `B(ℤ/p)` over `𝔽_p` is not perfect (8.5).

*Needs:* 6.2; 7.4; 8.3; ReductiveGroups Layer 1 (embedding theorem) and Layer 6 (complete reducibility in characteristic zero); SchemeAndStackFoundations §1.1 (`qcoh_fpqc_descent`); gap:chevalley-quasiprojective-quotient.

### 8.5 Dualizable objects that are not compact in positive characteristic

Prove: for `G = ℤ/p` over `𝔽_p`, the structure sheaf of `BG` is dualizable and not compact in `QCoh(BG)`, so `BG` is not perfect; more generally, on `BΓ × Spec k` for a finite group Γ and a field k of characteristic dividing `|Γ|`, `O` is not compact (HR-perf Introduction, p. 1, on non-tame stacks; HNR Theorem 1.1, p. 1, for the corresponding statement on the lisse-étale `D_qc` of poorly stabilized stacks).

*Proof route.* `QCoh(BΓ × Spec k) = Fun(BΓ, Mod_k)` (3.3); `π₀ Map(O, O[i]) = Hⁱ(Γ; k)`, nonzero for infinitely many i when the characteristic divides `|Γ|`. In `Mod_k` the sum `⊕_{i≥0} k[i]` is also the product, so `π₀ Map(O, ⊕_i O[i]) = ∏_i Hⁱ(Γ; k)`, which is strictly larger than `⊕_i Hⁱ(Γ; k)`.

**Checks.**

- For Γ trivial, `O` is compact: `Hⁱ = 0` for `i > 0`.
- For `Γ = ℤ/p` over `𝔽_p`, `Hⁱ(ℤ/p; 𝔽_p) = 𝔽_p` for every `i ≥ 0`, so the comparison `⊕ → ∏` is not surjective.
- Over ℚ the same Γ gives `Hⁱ = 0` for `i > 0` and `O` is compact (8.4).

*Needs:* 3.3; 6.3; 8.2; Mathlib `groupCohomology`.

### Examples

- `BG_m` is perfect over every ring, while `B(ℤ/p)` is perfect over ℚ and not over `𝔽_p`.
- A qcqs scheme with affine diagonal is a perfect stack (8.1 with 8.2), and so is every scheme affine over it.

### Dependencies

Layers 1 and 3–7; SchemeAndStackFoundations §2.18; ReductiveGroups Layers 1 and 6; EnhancedDerivedSheaves E3.2, E3.3, E5:abstract.4, E5:presentability.1; Mathlib `groupCohomology`.

## Downstream consumers

- **PrismaticCohomologyPartII** §4.0 uses 2.2–2.3 (quasi-coherent complexes on prestacks over classical rings), 3.2–3.3 (flat descent, sheafification invariance, Čech descent), 4.2 (flat affine pushforward, base change and projection formula) and 6.3 (perfect = dualizable, invertible objects); its completed variants for formal schemes remain its own.
- **LanglandsParameterStacks** §1.7 uses 3.2 (faithfully flat descent for module categories over animated rings, with no finiteness or descendability hypothesis); §1.8 uses 2.2, 6.3 and 7.2 for quasi-coherent and perfect complexes on quotient stacks of animated affines.
- **HabiroCohomologyFoundations** §1.27 uses 2.2, 3.3 and 7.3 for the derived torus quotient `QCoh([Spec C/ℤ^d]) ≃ D(C)^{hℤ^d}`; §1.28 uses 6.2 and 6.3 for its heart, vector bundles and perfect complexes.
- **AnalyticStacks** §§1.1–1.2 identify its quasi-coherent formalism on animated affines with 2.2 and use 2.4 and 5.3 for schemes.
- **AlgebraicModuliForArithmeticGeometry** §7.7 compares its `spaceDQCoh` of an algebraic space with `QCoh` of its functor of points through 3.3 and 5.3.

## References

- [SAG] J. Lurie, *Spectral Algebraic Geometry*, author PDF of February 2018, <https://www.math.ias.edu/~lurie/papers/SAG-rootfile.pdf>. PDF page equals printed page.
- [HA] J. Lurie, *Higher Algebra*, author PDF of 18 September 2017, <https://www.math.ias.edu/~lurie/papers/HA.pdf>. PDF page equals printed page.
- [HTT] J. Lurie, *Higher Topos Theory*, Annals of Mathematics Studies 170 (2009); author PDF of 9 April 2017, <https://www.math.ias.edu/~lurie/papers/HTT.pdf>. PDF pages are printed pages plus 18.
- [GR-I] D. Gaitsgory and N. Rozenblyum, *A study in derived algebraic geometry, Volume I: Correspondences and duality*, AMS Mathematical Surveys and Monographs 221 (2017); published version posted by the authors, <https://people.mpim-bonn.mpg.de/gaitsgde/Book/Vol1.pdf>. Printed pages are PDF pages minus 37; the book works over a field of characteristic zero, and it is cited for statements and routes that this roadmap proves over ℤ.
- [BZFN] D. Ben-Zvi, J. Francis and D. Nadler, *Integral transforms and Drinfeld centers in derived algebraic geometry*, J. Amer. Math. Soc. 23 (2010), 909–966; arXiv:0805.0157v5, <https://arxiv.org/abs/0805.0157v5>.
- [HNR] J. Hall, A. Neeman and D. Rydh, *One positive and two negative results for derived categories of algebraic stacks*, arXiv:1405.1888v2, <https://arxiv.org/abs/1405.1888v2>.
- [HR-perf] J. Hall and D. Rydh, *Perfect complexes on algebraic stacks*, Compositio Math. 153 (2017), 2318–2367; arXiv:1405.1887v3, <https://arxiv.org/abs/1405.1887v3>.
- [Stacks] The Stacks Project Authors, *The Stacks Project*, <https://stacks.math.columbia.edu>: chapters *Morphisms of Schemes*, *Derived Categories of Schemes*, *Derived Categories of Spaces* and *Sheaves on Algebraic Stacks*; results are cited by tag.
