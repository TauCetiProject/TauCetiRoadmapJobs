# Roadmap: pro-étale cohomology of p-adic curves, Drinfeld half-spaces and the rank-two Drinfeld tower

**Summary.** Build the p-adic pro-étale cohomology of smooth p-adic analytic curves, of semistable Stein spaces of every dimension, of the Drinfeld half-spaces `Ω^d` and of the rank-two Drinfeld tower over an arbitrary finite extension `F/ℚ_p`, following the programme of Colmez, Dospinescu and Nizioł. The input is the semistable geometry of curves (skeleta and triangulations), the log rigid Hyodo–Kato and crystalline machinery, the local Fontaine–Messing comparison with p-adic nearby cycles, the `A_inf` cohomology of semistable formal schemes and the tower spaces with their group actions. The output is: the fundamental diagrams relating `H¹_proét(Y, ℚ_p(1))` of an affinoid, overconvergent affinoid, Stein or proper curve to its de Rham complex and its Hyodo–Kato cohomology; the symbol description of `H¹_ét(Y, ℤ_ℓ(1))` for every prime `ℓ`; the combinatorial filtrations of ℓ-adic and Hyodo–Kato cohomology and the similarity of their Weil–Deligne actions; the period isomorphism for the universal cover of the p-divisible group of a Jacobian; the `G_K`-equivariant fundamental diagram of a semistable Stein weak formal scheme in every degree; the cohomology of `Ω^d` in every coefficient theory as duals of generalized Steinberg representations, including integral p-adic étale cohomology and Dat's compactly supported ℓ-adic complex; and, for the rank-two Drinfeld tower, equivariant semistable models, the Hyodo–Kato and de Rham multiplicities, the multiplicity form of the fundamental diagram, the finite copresentation of mod `p^k` cohomology and its non-admissibility when `F ≠ ℚ_p`.

## Scope and ownership

This roadmap owns:

- the cohomology of graphs with legs and their monodromy operator, as used to filter the cohomology of curves (Layer 0);
- the generalized Steinberg representations `Sp_J(A)` and `Sp_r(A)` of `GL_{d+1}(K)` with an arbitrary coefficient ring `A`, their continuous and dual variants, and their Schneider–Stuhler presentation (Layer 0);
- the pro-étale coefficient conventions and the Fréchet period spaces `X^r_st(M)` used by every fundamental diagram (Layer 1);
- the pattern decomposition of quasi-compact curves into shorts, legs and ghost circles, the reconstruction of a curve from its pattern, symbols and the Kummer regulator, the ℓ-adic, de Rham and Hyodo–Kato filtrations, the syntomic regulator and the fundamental diagram of an affinoid or proper curve over `C` (Layers 2–3);
- the overconvergent and Stein curve diagrams with their curve proofs, the special fibre of a curve without boundary with its Weil–Deligne group, the ℓ-adic/Hyodo–Kato similarity, and the Jacobian period isomorphism with its integration form (Layer 4);
- the overconvergent Hyodo–Kato, Fontaine–Messing and Bloch–Kato syntomic cohomology of a semistable Stein weak formal scheme and its `G_K`-equivariant fundamental diagram (Layer 5);
- the standard semistable weak formal model of `Ω^d` for `d ≥ 1` and the cohomology of `Ω^d` in every coefficient theory listed in Layer 6;
- the infinite-level connected components of the Lubin–Tate and Drinfeld towers, the equivariant semistable models of the rank-two Drinfeld levels, their Hyodo–Kato and de Rham multiplicities, the multiplicity diagram, cohomologically profinite sheaves of finite copresentation and the finite-copresentation and non-admissibility theorems (Layer 7).

It imports, and does not plan again:

- **EndoscopicTransferAndUnitaryTraceComparison** §§12.2–12.8, 12.11–12.14 and 12.19–12.21: tower data and action conventions, the Lubin–Tate and Drinfeld towers with their period maps (in particular the period domain `Ω_E^{n−1}` of §12.4, which is the rigid space `Ω^d` of this roadmap for `n = d + 1`), infinite-level duality, the ℓ-adic compact-support tower complexes, central quotients, arithmetic descent of the rank-two quotient `M_n^ϖ`, the supercuspidal ℓ-adic cohomology of the towers, and the Mittag–Leffler property of perfectoid Stein covers.
- **HilbertModularVarietiesAndShimuraCurves** §§R18.5.1–R18.5.3: the Drinfeld half-plane, its affinoid exhaustion and its standard formal model; Layer 6 uses them for `d = 1` and builds the general-`d` model compatibly.
- **TropicalAndBerkovichArithmetic** §§2.11 and 2.13–2.17: semistable vertex sets, formal models and metric dual graphs, refinements, marked skeleta, locally finite triangulations and the strict formal-scheme reconstruction from a vertex set.
- **LocallyAnalyticDistributions** §0.CR.6.6: Hyodo–Kato cohomology of semistable Stein curves and of semistable curve towers over a discretely valued base, with its completed comparison; and §§0.0–0.2 for locally convex limits, completed tensors, strictness and Mittag–Leffler limits.
- **CrystallineCohomology** §CR.6.5: log rigid Hyodo–Kato complexes of strictly semistable log schemes over a log point.
- **CohomologyComparisonsPartII** §§4.1–4.5: Fontaine–Messing period maps and their comparison with p-adic nearby cycles on semistable charts.
- **ClassicalAdicEtaleCohomology** §1.3 (the pro-étale sheaf `Ẑ_p`), §§4.1 and 4.6–4.7 (formal nearby cycles, semistable formal schemes, Kummer symbols and the Bloch–Kato–Hyodo filtration) and §§9.6–9.7 (duality for curves).
- **AInfCohomology** §§AI.3.1 and AI.6.1–AI.6.3: integral pro-étale period sheaves and the `AΩ` complex of a semistable formal scheme with its Hodge–Tate specialization.
- **PrismaticCohomologyPartIII** §6.25 (the integral étale comparison, without inverting `p` or `d`) with §6.3 (Artin–Schreier–Witt and tilting for perfectoid rings): the comparisons from which the twisted Artin–Schreier sequence of pro-étale sheaves in §6.7 is derived here.
- **CstConjectureForDaggerVarieties** CS.1 (`stein-affinoid-diagram`): the model-free fundamental diagram of smooth dagger Stein spaces and dagger affinoids over the completion `C` of `K̄`, `K` with countable residue field. The curve theorems of Layer 4 are kept because they hold over every complete algebraically closed `C` with `v_p(C^×) = ℚ` and are proved by passage to the limit from affinoids; the semistable theorem of Layer 5 is kept because it carries the `G_K`-action and the model-dependent overconvergent Hyodo–Kato term. On their common range the statements agree (Checks in §§4.2 and 5.5).
- **CohomologyComparisons** §4.11 (proper rigid period comparison over `C`) and §4.12 (the proper-curve potential period interface): the proper-curve diagram of §4.7 here is the exact sequence that §4.12 leaves to another owner; it is proved here by the curve route for every `C` with `v_p(C^×) = ℚ`, and agrees with §4.11 on its range.
- **VectorBundlesAndIsocrystals** VB0 (Dieudonné–Manin slopes) and VB3 (Banach–Colmez spaces, their Dimensions and the semistable period-space example).
- **PadicPeriodRings** §4.1: `B_cris^+`, `B_st^+ = B_cris^+[u]`, `φ`, `N`, `θ`, `t` and the embedding `B_st^+ → B_dR^+` fixed by a logarithm of `p`.
- **SmoothRepresentationsOfLocalGroups** SR.0 (smooth representations) and SR.3 (*steinberg*, *segment-representations*): the complex Steinberg representation and segment representations, compared with `Sp_r(ℂ)` in Checks.
- **PadicLocalLanglandsForGL2Qp** §6.9 (`DivisionAlgebraTypes.jacquetLanglands`), **GL2AutomorphicRepresentationsAndTransfer** R16.3 (rank-two local parameters) and **PadicHodgeTheory** §§5.3–5.4 (Fontaine's recipe and rank-two types): `JL(M)`, `LL(M)` and `WD(M)` of a rank-two `L-(φ, N, G_F)`-module.
- **ModpRepresentationsOfGL2OverLocalFields** MP.0 (finite presentation, finiteness calculus, amalgam coherence) and MP.2 (ordinary parts, the category `C` of admissible finitely presented representations and the induced approximation of admissible Banach lattices).

This roadmap does not contain the following, by owner:

- Poincaré duality and compactly supported pro-étale cohomology of curves, together with the compactly supported de Rham comparison of the Lubin–Tate and Drinfeld towers, form ProetaleCohomologyOfPAdicCurvesAndTowersPartII, the Part II of this roadmap, which starts where Layer 7 stops; they need the solid formalism of VStackSheavesAndLisseCategories and a compactly supported syntomic comparison.
- p-adic local Langlands content (`Π(V)`, the Breuil–Strauch comparison, the Galois socle, factorisation) belongs to PadicLocalLanglandsForGL2Qp §6.9 and its Part II; Scholze's functor and the mod p finite length of the tower for `F = ℚ_p` belong to ScholzeFunctorAndModpCohomologyOfTheLubinTateTower.
- Locally analytic generalized Steinberg representations and the Orlik–Schraen theorem belong to LocallyAnalyticRepresentationsOfLocalGroups.
- Dat's realisation of the Langlands parameter of elliptic principal series and the Hecke-localized derived tensor of Thorne belong to their consumers.

The infinite-level connected components of the Lubin–Tate tower are owned here (§7.1): Layer 7 needs them, and ScholzeFunctorAndModpCohomologyOfTheLubinTateTower SZ.0, a later roadmap, imports them.

## Conventions

- `p` is a prime. In Layers 2–4, `C` is a complete algebraically closed extension of `ℚ_p` with `v_p(p) = 1` and value group `v_p(C^×) = ℚ`; this is the hypothesis of the source (CDN-CURVES line 92), whose footnote (CDN-CURVES line 124) attributes it to the use of `B_st` and not to the geometry. It holds for the completion of an algebraic closure of any discretely valued field. `O_C`, `m_C`, `k_C` are the integers, maximal ideal and residue field, `O_C̆ = W(k_C)` and `C̆ = W(k_C)[1/p]`. For a closed subfield `K ⊂ C`, `G_K` is the group of continuous automorphisms of `C` fixing `K`.
- Fix a homomorphism `r ↦ p^r` from `(ℚ, +)` to `C^×` with `p^1 = p` (CDN-CURVES line 586). It defines `p̃_r = [(p^r)^♭] ∈ A_inf`, with `θ(p̃_r) = p^r` and `θ_0(p̃_r) = 0` for `r > 0`, where `θ: A_cris → O_C` and `θ_0: A_cris → O_C̆` are the usual maps, and the embedding `ι: B_st^+ → B_dR^+` sending `u` to `log([p^♭]/p)`.
- `B_st^+ = B_cris^+[u]` with `φ(u) = pu` and `N(u) = −1`, so `Nφ = pφN`: on `u`, `N(φ(u)) = N(pu) = −p` and `pφ(N(u)) = pφ(−1) = −p`. Hyodo–Kato tensors carry the diagonal `φ` and `N = N_HK ⊗ 1 + 1 ⊗ N_Bst`.
- `ℚ_p(1)` on the pro-étale site is `Ẑ_p(1)[1/p]`, with `Ẑ_p = lim_r ν^*ℤ/p^r` (ClassicalAdicEtaleCohomology §1.3), and has Hodge–Tate weight `+1`. The same construction gives `ℚ_ℓ(1)` for every prime `ℓ`. Witness: on the open annulus with coordinate `z`, the Kummer class of `z` in `H¹_ét(Y, ℤ_p(1))` maps under `dlog` to `dz/z`, whose class spans `H¹_dR(Y)`.
- A twist `(−1)` on a Hyodo–Kato or crystalline module multiplies its Frobenius by `p` (CDN-CURVES line 387). Witness: on the open annulus, `φ(t) = t^p` gives `φ(dt/t) = p·dt/t`, so `H¹_HK = C̆·dlog t ≅ C̆(−1)` has slope one, whereas `H¹(Γ, C̆)` carries `φ = σ` and slope zero.
- `M^sep` is the maximal Hausdorff quotient `M/closure(0)` of a topological vector space. `ℚ_p ⊗̂ M = ℚ_p ⊗_{ℤ_p} lim_n M/p^n M` for a `ℤ`-module `M` (CDN-CURVES line 130). `O(Y)^{**}` is the group of units `f` with `f − 1` topologically nilpotent. The dual `(−)^*` of a locally convex space is its continuous dual with the weak topology.
- Generalized Steinberg representations are indexed as in CDN-STEIN §5.2.1 (line 1916): `Δ = {1, …, d}`, `s_i = (i, i+1)`, `P_J` the standard parabolic of the upper triangular Borel generated by the `s_i`, `i ∈ J`, and `Sp_r = Sp_{{1,…,d−r}}` for `0 ≤ r ≤ d`, `Sp_r = 0` for `r > d`. Witness: for `d = 1`, `Sp_0(A) = A` (trivial) and `Sp_1(A) = LC(ℙ¹(K), A)/A` (Steinberg).
- For towers, the action conventions are those of EndoscopicTransferAndUnitaryTraceComparison §12.2 and the rank-two notation of CDN23: `G = GL₂(F)`, `Ǧ = D^×` for the quaternion division algebra `D/F`, `G′ = G/ϖ^ℤ`, `M_n` the Drinfeld levels and `M_n^ϖ` their quotients by `ϖ^ℤ`. The diagonal `F^×` acts trivially (EndoscopicTransferAndUnitaryTraceComparison §12.7), so the quotient by `ϖ` in the centre of `G` equals the quotient by `ϖ^{−1}` in the centre of `Ǧ`: the pair `(ϖ, ϖ)` acts as the identity.
- Weil–Deligne groups follow CDN-CURVES §8.2.5: for `Y` defined over a finite `K/ℚ_p`, `W_Y ⊂ Aut_K(Y) × φ^ℤ` and `WD_Y = 𝔾_a ⋊ W_Y` with `(λ₁, g₁)(λ₂, g₂) = (λ₁ + p^{deg g₁}λ₂, g₁g₂)`, `deg: W_K → fℤ` sending a geometric Frobenius to `f` where `q = p^f`. Two smooth representations over fields `L₁`, `L₂` are similar when they become isomorphic over a common extension.
- Universes: all spaces are separated, taut and countable at infinity; sheaf categories are formed in a fixed universe enlarged once for sheaves.

## Exact supplier contracts

### From Mathlib

- `LocallyConstant` with `LocallyConstant.comap` (pullback along continuous maps) and its module structure in `Mathlib/Topology/LocallyConstant/Algebra.lean`: the carriers `LC(X_J, A)` of §0.3 for profinite `X_J`.
- `ContinuousMap` on compact spaces with the sup norm: the carriers `C(X_J, Λ)` of the continuous Steinberg representations.
- `Matrix.GeneralLinearGroup` with its topology as the units of a topological matrix ring, `Matrix.GeneralLinearGroup.toLin` (`Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean`, line 120), `MulAction.stabilizer` for the pointwise action of `LinearMap.GeneralLinearGroup` on submodules (`Submodule.pointwiseDistribMulAction`, `Mathlib/Algebra/Module/Submodule/Pointwise.lean`, line 186), `Subgroup.quotientMapOfLE` (`Mathlib/GroupTheory/Coset/Basic.lean`, line 424), the quotient topology on `G ⧸ H` with its continuous translation action (`Mathlib/Topology/Algebra/Group/Quotient.lean`), `LocallyConstant.comapₗ` (`Mathlib/Topology/LocallyConstant/Algebra.lean`, line 326): the carriers of the parabolic subgroups, flag varieties and pullback maps of §0.3.
- `Representation`, `Representation.quotient` (`Mathlib/RepresentationTheory/Basic.lean`, line 329) and `Representation.IsIrreducible` (`Mathlib/RepresentationTheory/Irreducible.lean`, line 29: nontrivial with no invariant subspace other than `⊥` and `⊤`, no smoothness or admissibility condition): the carrier of the irreducibility statement of §0.4.
- `Submodule.mkQ` (quotients by relation submodules), `ModuleCat`.
- `BDeRhamPlus` (`Mathlib/RingTheory/Perfectoid/BDeRham.lean`, line 75), used through PadicPeriodRings §4.1.
- `WittVector.Isocrystal` (`Mathlib/RingTheory/WittVector/Isocrystal.lean`, line 113): finite-dimensional Hyodo–Kato modules over `C̆` are isocrystals in this sense; it carries no monodromy and no topology.
- `AlgebraicGeometry.Scheme.EllAdicCohomology` (`Mathlib/AlgebraicGeometry/Sites/ElladicCohomology.lean`, line 75) is pro-étale ℓ-adic cohomology of schemes only; it is not a supplier for rigid spaces and is recorded here as a near miss.

### From Tau Ceti

Nothing at the pin `a91d3aa` concerns rigid or pro-étale cohomology, Hyodo–Kato cohomology or generalized Steinberg representations; `TauCeti/Algebra/Quaternion/Steinberg.lean` concerns the Steinberg relation for symbols and is unrelated.

### From TauCetiRoadmap.AdicEtaleGeometry, AdicSpacesPartIII and AdicSpacesPartIV

- AdicEtaleGeometry layer A1: the analytic étale and pro-étale sites and the projection `ν`.
- AdicSpacesPartIII §R3.4: quasi-Stein spaces and Kiehl's Theorems A and B (vanishing of higher coherent cohomology on Stein curves, `R¹lim O(Y_n) = 0`); §R3.7: proper GAGA.
- AdicSpacesPartIV §§F1.5–F1.9 and F1.11: weak completions, dagger spaces, the dagger–rigid comparison, overconvergent de Rham complexes and finiteness for tubes.

### From TauCetiRoadmap.EnhancedDerivedSheaves and StableReduction

- EnhancedDerivedSheaves layer E2: derived limits of towers and the Milnor sequence `0 → R¹lim H^{i−1} → H^i(lim) → lim H^i → 0`.
- StableReduction Layers 1, 2 and 7: dual graphs, the genus formula and stable reduction of curves over discretely valued fields (used in §7.2).

### From TauCetiRoadmap.ClassicalAdicEtaleCohomology

- §1.3: `ProEtaleSheaf.completedZp`, its derived-limit property and the exact sequences `0 → Ẑ_p → Ẑ_p → ν^*ℤ/p^r → 0`; the comparison `H^n(X_ét, F) = H^n(X_proét, ν^*F)`.
- §4.1 and §4.6: formal étale sites, the specialization `λ`, `FormalScheme.IsSemistable`, `SemistableFormalNearbyCycles` with `R^iΨ = R^iλ_*`, and `FormalNearbySymbol`.
- §4.7: the Bloch–Kato–Hyodo filtration on `R^qΨ ℤ/p(q)` with its graded pieces (CDN23 Théorème 2.4).
- §§9.6–9.7: trace and duality for smooth separated taut curves with coefficients prime to `p`.

### From TauCetiRoadmap.CrystallineCohomology, CohomologyComparisonsPartII and AInfCohomology

- CrystallineCohomology §CR.5.1 (log differentials, Cartier), §CR.6.1 (log de Rham–Witt complexes) and §CR.6.5 (log rigid Hyodo–Kato cohomology over a log point, its Frobenius and monodromy).
- CohomologyComparisonsPartII §4.1 (*Ordinary and modified Tate lattices*: `L_EN(r) = (p^a a!)^{−1}ℤ_p(r)`, `a = ⌊r/(p−1)⌋`), §4.2 (*Period morphisms and their targets*: the Fontaine–Messing period maps), §4.4 (*All weights and bounded error*: kernel and cokernel killed by `p^{A(e,p,r)}`, with `A` independent of `n` and of the chart, in degrees `q ≤ r` on CN semistable charts) and §4.5 (*Syntomic-étale objects on X*: gluing of the local comparisons). These are stated for log schemes; their transfer to p-adic formal and weak formal semistable schemes is the gap `formal-syntomic-period-comparison`.
- AInfCohomology §AI.3.1 (the integral period sheaf `A_inf,X = W(Ô_X^{+,♭})` on `X_proét` with its Frobenius automorphism and `θ`; no exactness statement for `1 − φ^{−1}` is taken from it), §AI.6.2 (`Semistable.aOmega`, local edge comparison) and §AI.6.3 (log Hodge–Tate specialization).
- What CohomologyComparisonsPartII must provide (gap:formal-syntomic-period-comparison): the bounded Fontaine–Messing comparison `H^q(S′_n(r)) → R^qΨ(L_EN(r)/p^n)` on `X_0,ét`, for `q ≤ r`, for p-adic formal and weak formal semistable schemes over `O_K` (étale locally completions of the CN charts), with the same exponent `A(e,p,r)`. Needed by §5.3.

### From TauCetiRoadmap.PrismaticCohomologyPartIII

- §6.25 (*The variant of the étale comparison without inverting p or d*): for a perfectoid ring `S` with perfect prism `(A, (d))`, `RΓ_ét(Spec S, ℤ/p^n) ≃ (Δ_{S/A}/p^n)^{φ=1}`; with §6.3 (*The étale comparison for perfectoid rings*), which identifies `Δ_{S/A} = A_inf(S)` through tilting and gives the generic-fibre version `RΓ_ét(Spec(S^♭[1/d]), ℤ/p^n) = fib(F − 1 on W_n(S^♭[1/d]))`, this is `RΓ_ét(Spec S, ℤ/p^n) = fib(F − 1 on W_n(S^♭))`; for `S = O_C` it gives `(A_inf/p^n)^{φ=1} = ℤ/p^n` with `F − 1` surjective on `W_n(O_C^♭)` (the §6.25 worked example). Used on `S = R^+` for affinoid perfectoid objects `Spa(R, R^+)` of `X_proét` in §6.7, where `H¹_ét(Spec R^+, ℤ/p^n)` is killed by a pro-étale cover.

### From TauCetiRoadmap.LocallyAnalyticDistributions

- §0.0 (locally convex limits, projective tensor and separated completion, `finiteDimensionalML_completedScalar`) and §0.2 (strict sequences, three-space properties, `naProjectiveLimit_cohomology_finiteDimensionalML`).
- §0.CR.6.6: `LogCrystalline.daggerHK.comparison`, `LogCrystalline.steinHK.limit`, `LogCrystalline.steinHK.operators`, `LogCrystalline.steinHK.exhaustion_independence` and `LogCrystalline.towerHK.comparison`.

### From TauCetiRoadmap.PadicPeriodRings, PadicHodgeTheory, VectorBundlesAndIsocrystals and PadicDifferentialEquationsAndRigidCohomology

- PadicPeriodRings §4.1: the period rings with `φ(t) = pt`, `N_p(u) = −1`, `θ` on the plus carriers and the filtered embedding fixed by a logarithm branch; §4.3: the fixed fields `B_cris^{G_K} = B_st^{G_K} = K₀`, `(B_dR^+)^{G_K} = K` and the fundamental exact sequence `0 → ℚ_p → B_cris^{φ=1} → B_dR/Fil⁰B_dR → 0`. These are constructed for `C = C_K`, and §4.3 does not state the plus-ring sequences used here; the gap `period-rings-general-C` below asks for the rings over an arbitrary complete algebraically closed `C`.
- PadicHodgeTheory §5.3 (potentially semistable periods and Fontaine's recipe `WD(D)`), §5.4 (rank-two types) and §8.1 (de Rham comparison for proper smooth varieties).
- VectorBundlesAndIsocrystals VB0 (slope decomposition) and VB3 (Dimensions of Banach–Colmez spaces; the semistable period-space example `X_st^+(M)` of Dimension `([L:ℚ_p], 2)`).
- PadicDifferentialEquationsAndRigidCohomology §§RD.4.10–RD.4.11 (rigid cohomology and its functoriality), §RD.4.18 (Frobenius), §RD.4.29 (Gysin) and §RD.7.7 (Katz–Messing equality of Frobenius polynomials); the gap `endomorphism-characteristic-polynomials` below asks for its extension to all endomorphisms.
- What PadicPeriodRings must provide (gap:period-rings-general-C): `A_cris`, `B_cris^+`, `B_st^+`, `θ`, `θ_0`, `φ`, `N`, the exact sequence `0 → ℚ_p t → (B_cris^+)^{φ=p} --θ--> C → 0`, `(B_cris^+)^{φ=1} = ℚ_p` and `(B_cris^+)^{φ=p^{−1}} = 0`, over an arbitrary complete algebraically closed `C`, without a chosen discretely valued `K` (§§4.1 and 4.3). Needed by §§1.2–1.3 and 3.2–3.3, and through §1.3 by every fundamental diagram (§§3.5, 4.7, 5.5, 6.5).
- What PadicDifferentialEquationsAndRigidCohomology must provide (gap:endomorphism-characteristic-polynomials): for an abelian variety over a finite field, every endomorphism has the same characteristic polynomial on `V_ℓ` and on rational crystalline `H¹` (Katz–Messing, Theorem 2), extending §RD.7.7. Needed by §4.6.

### From the tower, half-plane and skeleton suppliers

- EndoscopicTransferAndUnitaryTraceComparison §12.2 (`TowerDatum`), §12.3 (`LubinTate.level`), §12.4 (`Drinfeld.level`, `Drinfeld.period` into `Ω_E^{n−1}`), §12.5 (period maps), §12.6–12.8 (infinite level and preperfectoidness), §12.11 (EL duality), §12.12 (`TowerCohomology.atLevel`), §12.14 (`TowerSector.centralQuotient`), §12.19 (descent of `M_n^ϖ` to `F` with its `G′` action), §12.20 (supercuspidal ℓ-adic cohomology in Dat conventions) and §12.21 (Stein covers and Mittag–Leffler).
- HilbertModularVarietiesAndShimuraCurves §R18.5.1 (`DrinfeldHalfPlane`), §R18.5.2 (`DrinfeldExhaustion`) and §R18.5.3 (`DrinfeldFormalModel`).
- TropicalAndBerkovichArithmetic §2.11 (formal model skeleton), §2.13 (refinement), §2.14 (existence of semistable vertex sets), §2.15 (marked skeleta), §2.16 (locally finite triangulations, node sets, strict formal-scheme reconstruction) and §2.17 (triangulated curves and formal automorphisms).
- AbelianSchemesAndArithmeticModuli §A4.2: the universal vector extension of an abelian variety. JacobianChallenge Layer D: the Jacobian of a smooth proper curve.
- ReductiveGroupsPartII RG2.2: the Bruhat–Tits building of `PGL_{d+1}(K)` with its simplicial structure.

### From the representation-theoretic suppliers

- SmoothRepresentationsOfLocalGroups SR.0 (smooth category, compact induction), SR.2 (induction) and SR.3 (*steinberg*, *segment-representations*).
- PadicLocalLanglandsForGL2Qp §6.9: `DivisionAlgebraTypes.jacquetLanglands` and `DrinfeldComparison.localJacquetLanglands`.
- GL2AutomorphicRepresentationsAndTransfer R16.3.1–R16.3.3: rank-two local parameters and the Langlands correspondence `LL`.
- ModpRepresentationsOfGL2OverLocalFields MP.0/finite-presentation, MP.0/finiteness-calculus, MP.0/amalgam-coherence, MP.2/category-c and MP.2/ordinary-banach.

## How to read the build

Layer 0 is algebra and combinatorics close to Mathlib: cohomology of graphs with legs and the generalized Steinberg representations. Layer 1 fixes the coefficient sheaves and the Fréchet period spaces in which every diagram lives. Layers 2–3 treat a quasi-compact curve with a fine triangulation: its pattern, symbols, ℓ-adic, de Rham, Hyodo–Kato and syntomic cohomology, ending with the affinoid and proper fundamental diagrams. Layer 4 passes to limits (overconvergent affinoids, Stein curves), defines the special fibre of a curve without boundary and its Weil–Deligne group, compares ℓ-adic and Hyodo–Kato cohomology, and treats Jacobians. Layer 5 is independent of Layers 2–4 and proves the semistable Stein comparison in every dimension. Layer 6 computes the cohomology of `Ω^d`. Layer 7 uses Layers 4–6 for the rank-two Drinfeld tower over any finite `F/ℚ_p`.

## Layer 0: Graphs with legs and generalized Steinberg representations

### 0.1 Cohomology of graphs with legs

Define an oriented graph with legs as a locally finite oriented graph `Γ = (S, A, A_c)` with finitely many connected components: `S` is the discrete set of vertices, `A` the set of edges, `A_c ⊂ A` the relatively compact edges (those whose closure is compact, each with an origin `s₁(a)` and an end `s₂(a)`, possibly equal), and every `a ∈ A ∖ A_c` (a leg) has exactly one endpoint, recorded as its origin or its end (CDN-CURVES §§1.1.1–1.1.2). For an abelian group `L`, write `L^X` for all functions and `L^{(X)}` for finitely supported functions on `X`. Define `∂: L^S → L^{A_c}` and `∂: L^{(S)} → L^{(A)}` by `∂φ(a) = φ(s₂(a)) − φ(s₁(a))`, a missing endpoint contributing `0`, and set `H¹(Γ, L) = coker(∂: L^S → L^{A_c})` and `H¹_c(Γ, L) = coker(∂: L^{(S)} → L^{(A)})`. Define `∂^*: L^A → L^S` by `∂^*φ(s) = Σ_{s₁(a)=s} φ(a) − Σ_{s₂(a)=s} φ(a)` and `H¹_c(Γ, L)^* = ker(∂^*: L^A → L^S)` (CDN-CURVES §1.2.1–1.2.2, lines 723–757).

- For a commutative ring `L`, `H¹_c(Γ, L)^*` is the `L`-linear dual `Hom_L(H¹_c(Γ, L), L)`: `Hom_L(L^{(A)}, L) = L^A`, and `Hom_L(−, L)` is left exact. For an abelian group `L` the `ℤ`-linear dual is in general larger, so the kernel is the definition.
- `H¹`, `H¹_c` and `H¹_c(−)^*` are functorial for morphisms of oriented graphs with legs and for homomorphisms `L → L′`; reversing the orientation of an edge `a` is compensated by the sign change of the `a`-coordinate.
- If `S` is finite there is an exact sequence `0 → H⁰_c(Γ, L) → H⁰(Γ, L) → L^{A∖A_c} → H¹_c(Γ, L) → H¹(Γ, L) → 0` (CDN-CURVES Remarque 1.2(ii)); if `Γ` is compact, `H¹_c = H¹`.
- The bipartite subdivision `Γ^{(2)}` (a vertex added on each relatively compact edge) has the same cohomology, computed by `L^I → L^{I_{2,c}}` and `L^{I_2} → L^I` (CDN-CURVES Remarque 1.4).
- For the recovered Bruhat–Tits tree of `PGL₂(K)`, `H¹(Γ, L) = 0` and `H¹_c(Γ, L) ≅ LC(ℙ¹(K), L)/L`, compatibly with `PGL₂(K)`.

**Checks.**

- One vertex with one loop (`A = A_c = {a}`, `s₁(a) = s₂(a)`): `∂ = 0`, so `H¹ = H¹_c = L` and `H¹_c(Γ, L)^* = L`. Using `L^{(A_c)}` in place of `L^{A_c}` makes no difference here but fails for an infinite graph.
- One vertex with one loop and `L = 𝔽₂²` as an abelian group: `H¹_c(Γ, L)^* = L` has order `4`, while `Hom_ℤ(H¹_c(Γ, L), L) = M₂(𝔽₂)` has order `16`; with `L = 𝔽₂` as a ring both have order `2`. The identification with the dual needs ring coefficients and linear duals.
- One vertex with two legs (the graph of an open annulus): `H¹ = 0`, `H¹_c = coker(L → L², x ↦ (−x, −x)) = L` and `H¹_c^* = {(φ₁, φ₂) : φ₁ + φ₂ = 0} ≅ L`; the exact sequence of the second bullet reads `0 → 0 → L → L² → L → 0 → 0`.
- One vertex with one leg (an open disc): `H¹ = H¹_c = H¹_c^* = 0`. A definition of `H¹_c` that ignored legs (taking `∂` into `L^{(A_c)}`) would give `0` for the annulus as well and lose its residue class.
- For the infinite Bruhat–Tits tree, finitely supported functions give `H¹_c ≠ 0` while all functions give `H¹ = 0`: interchanging the two cokernels fails.

*Needs:* Mathlib `Submodule.mkQ`; ReductiveGroupsPartII RG2.2.

### 0.2 The monodromy operator of a metrized graph

For a graph with legs whose relatively compact edges carry lengths `µ(a) ∈ ℚ_{>0}` and a `ℚ`-module `L`, define `N_µ: H¹_c(Γ, L)^* → H¹(Γ, L)` as the composite of `φ ↦ (a ↦ µ(a)φ(a))|_{A_c}` from `L^A` to `L^{A_c}` with the projection to `H¹(Γ, L)` (CDN-CURVES §1.2.4). Prove that `N_µ` is an isomorphism when `Γ` is compact (CDN-CURVES Remarque 1.5), that it is natural for length-preserving maps and multiplies by `c` when all lengths are multiplied by `c ∈ ℚ_{>0}`, and that for a module `M` with `H¹_c(Γ, L)^*` as quotient and `H¹(Γ′, L)` as submodule (`Γ′ ⊂ Γ`) the induced operator `N` on `M` satisfies `N ∘ N = 0` when the image of `H¹(Γ′, L)` in `H¹_c(Γ, L)^*` is zero (CDN-CURVES Remarque 1.6).

**Checks.**

- One vertex with one loop of length `µ`: `N_µ` is multiplication by `µ`, an isomorphism of `L`; this is the monodromy of a Tate curve with `v_p(q) = µ`.
- A segment with two legs at each end (an affinoid with two holes in the annulus pattern): `A_c` consists of one edge, `H¹(Γ, L) = 0`, so `N_µ = 0` although `H¹_c^*` has rank three; the compactness hypothesis of the isomorphism statement cannot be dropped.
- Doubling all lengths doubles `N_µ`; a definition ignoring `µ` (the projection alone) would not.

*Needs:* §0.1.

### 0.3 Generalized Steinberg representations

Let `K` be a finite extension of `ℚ_p`, `G = GL_{d+1}(K)`, `d ≥ 1`, with Borel `B`, simple reflections `s_i = (i, i+1)` for `i ∈ Δ = {1, …, d}`, standard parabolics `P_J = B W_J B` and compact `X_J = G/P_J`. For an abelian group `A` define `Sp_J(A)` as the quotient of `LC(X_J, A)` by the sum, over `i ∈ Δ ∖ J`, of the images of `LC(X_{J∪{i}}, A)` under pullback along `X_J → X_{J∪{i}}`, with `G` acting by left translation `(g·f)(x) = f(g⁻¹x)`; set `Sp_r(A) = Sp_{{1,…,d−r}}(A)` for `0 ≤ r ≤ d` and `Sp_r(A) = 0` for `r > d` (CDN-STEIN §5.2.1). For a topological ring `Λ` define `Sp^cont_J(Λ)` as the same quotient of continuous functions `C(X_J, Λ)` (CDN-STEIN §5.2.3), and give `Sp_J(Λ)` the locally convex inductive-limit topology of `LC(X_J, Λ) = colim_n LC(X_{n,J}, Λ)` for a presentation `X_J = lim_n X_{n,J}` by finite sets (CDN-STEIN §5.2.2).

For a commutative ring `A` the same construction is a representation, and it is defined here in that form, indexing the simple reflections by `k ∈ {0, …, d − 1}`, `s_k` exchanging the basis vectors of index `k` and `k + 1` of `K^{d+1}`. Define `flagSubspace K n m` as the subspace of `Kⁿ` of vectors whose coordinates of index `≥ m` vanish, and `parabolic K d J` as the subgroup of `GL_{d+1}(K)` stabilizing `flagSubspace K (d+1) (k+1)` for every `k ∉ J`: it is `P_J = B W_J B`, the upper triangular Borel for `J = ∅` and `G` for `J` everything. `parabolic_mono` records `P_J ⊂ P_{J′}` for `J ⊂ J′`, so that `X_J → X_{J′}` is defined. Define `translation G H A`, for a topological group `G` and a subgroup `H`, as the representation of `G` on `LC(G/H, A)` by `(g·f)(x) = f(g⁻¹x)`; `steinbergRelations K A d J` as the relation submodule `Σ_{i ∉ J} LC(X_{J∪{i}}, A)` of `LC(X_J, A)`; `steinbergRelations_le_comap` records that it is stable under translation, because `X_J → X_{J∪{i}}` is `G`-equivariant; and `generalizedSteinberg K A d J` as the quotient representation `Sp_J(A)`. For an abelian group `A` the definition above is the same quotient of `ℤ`-modules.

- `Sp_J(A)` is a smooth `A[G]`-module, functorial in `A`; the natural map `Sp_J(ℤ) ⊗ A → Sp_J(A)` is an isomorphism and `Sp_J(A)` is a free `A`-module.
- `Sp_∅(A)` is the Steinberg representation and `Sp_Δ(A) = A` with trivial action.
- For a finite extension `L` of `ℚ_p`, `Sp_J(L)` is an LF-space, `Sp_J(L)^* = lim_n LC(X_{n,J}, L)^*` is a nuclear Fréchet space, `Sp_J(O_L)^*` is a compact torsion-free `O_L`-module, `Sp^cont_J(L)` is a Banach space with unit ball `Sp^cont_J(O_L)`, the action of `G` is continuous, and the smooth vectors of `Sp^cont_J(L)` are `Sp_J(L)`.
- The natural maps `Sp_r(ℚ_p)^* → Sp_r(F)^* → Sp_r(K)^*` for `ℚ_p ⊂ F ⊂ K` are closed embeddings.

**Checks.**

- `d = 1`: `Sp_0(A) = A` and `Sp_1(A) = LC(ℙ¹(K), A)/A`. The invariants of the principal congruence subgroup `1 + ϖM₂(O_K)` in `Sp_1(A)` form a free `A`-module of rank `q`: the invariant functions are `A^{ℙ¹(k)} = A^{q+1}`, modulo constants.
- For `A = 0` every `Sp_J(A)` is `0`; for `r > d`, `Sp_r(A) = 0` by convention, in agreement with the vanishing of `H^r` of `Ω^d` in degrees above `d` (§6.5).
- Over `ℂ`, `Sp_∅(ℂ)` is the representation `St_G` of SmoothRepresentationsOfLocalGroups SR.3 (*steinberg*); for `d = 1` it is `L([−1/2, 1/2]_1)` of *segment-representations*.
- Quotienting by the images over `i ∈ J` instead of `i ∈ Δ ∖ J` gives `0` for `J = Δ` and so fails the second bullet.

*Needs:* Mathlib `LocallyConstant`; Mathlib `LocallyConstant.comap`; Mathlib `ContinuousMap`; Mathlib `Submodule.mkQ`; Mathlib `Matrix.GeneralLinearGroup`; LocallyAnalyticDistributions §0.0; SmoothRepresentationsOfLocalGroups SR.0.

### 0.4 Irreducibility, lattices and completions

Prove: (a) if `A` is a field of characteristic `0` or `p`, then the `Sp_J(A)`, `J ⊂ Δ`, are irreducible (`generalizedSteinberg_isIrreducible`, for every `d ≥ 0`, `K` a finite extension of `ℚ_p` with its absolute value), pairwise non-isomorphic, and are the irreducible constituents of `LC(G/B, A)`, each with multiplicity one (CDN-STEIN Proposition 5.1; Casselman in characteristic `0`; GK14 Corollaries 4.3 and 4.4 in characteristic `p`); (b) for a complete discrete valuation ring `O` of residue characteristic `p`, `Sp_J(O)` is, up to homothety, the unique `G`-stable `O`-lattice in `Sp_J(Frac O)` (CDN-STEIN Corollary 5.3; GK14 Corollary 4.5); (c) for `L/ℚ_p` finite, the universal unitary completion of `Sp_J(L)` is `Sp^cont_J(L)`, and the `G`-bounded vectors of `Sp_J(L)^*` are `Sp^cont_J(L)^*` (CDN-STEIN Corollary 5.4). Consequently `Sp^cont_r(ℚ_p)^* ≅ Sp_r(ℤ_p)^* ⊗ ℚ_p` and `Sp_r(ℤ_p)/p ≅ Sp_r(𝔽_p)`.

**Checks.**

- For a field of characteristic `ℓ ≠ p` the multiplicity-one statement fails in general (CDN-STEIN Remarque 5.2); (a) is not stated for such fields.
- For `d = 1`, `LC(ℙ¹(K), A)` has the two constituents `A` and `Sp_1(A)` when `A` has characteristic `0` or `p`.
- A `G`-bounded vector of `Sp_1(ℚ_p)^*` is a measure on `ℙ¹(K)` of total mass zero; a distribution of unbounded growth on shrinking discs is not bounded, matching (c).

*Needs:* §0.3; SmoothRepresentationsOfLocalGroups SR.3; LocallyAnalyticDistributions §0.0.

### 0.5 The Schneider–Stuhler and Iovita–Spiess presentation

Let `𝓗 = ℙ((K^{d+1})^*)` be the profinite set of `K`-rational hyperplanes. Prove that `Sp_r(ℤ)` is isomorphic, `G`-equivariantly, to the group `LC_c(𝓗^{r+1}, ℤ)` of locally constant functions on `𝓗^{r+1}` that satisfy the cocycle identity in their `r+2` arguments and vanish on tuples whose equations are linearly dependent (CDN-STEIN Proposition 5.6 and §5.4.1, lines 2046–2054). For an abelian group `A`, define the degenerate distributions `D(𝓗^{r+1}, A)^{deg}` as the kernel of the strict surjection `D(𝓗^{r+1}, A) = Hom(LC(𝓗^{r+1}, ℤ), A) → Hom(Sp_r(ℤ), A)`, and the measures `M(𝓗^{r+1}, L)` for a discretely valued field `L`.

**Checks.**

- `r = 1`, `d = 1`: a locally constant `f(H₀, H₁)` with `f(H₁, H₂) − f(H₀, H₂) + f(H₀, H₁) = 0` and `f(H, H) = 0` is `f(H₀, H₁) = g(H₁) − g(H₀)` with `g ∈ LC(ℙ¹(K), ℤ)/ℤ`, recovering `Sp_1(ℤ)`.
- `r = 0`: the cocycle condition forces constant functions, and `Sp_0(ℤ) = ℤ`.
- `d = 1`, `r = 2`: any three hyperplanes of `K²` have dependent equations, so the vanishing condition gives `0 = Sp_2(ℤ)`, whereas the cocycles without it contain the nonzero coboundaries `g(H₁, H₂) − g(H₀, H₂) + g(H₀, H₁)` of locally constant `g`; the vanishing condition cannot be dropped. At `r = 1` the cocycle identity at `H₀ = H₁ = H₂` already forces `f(H, H) = 0`.

*Needs:* §0.3; Mathlib `LocallyConstant`.

### Examples

For `d = 1` and `K = ℚ_2`, the tree has valency `3`, the principal congruence invariants of `Sp_1(A)` have rank `2`, and the graph of a Tate curve with `v_2(q) = 3` has `N_µ = 3` on `H¹_c^* = L`.

### Dependencies

Mathlib `LocallyConstant`, `LocallyConstant.comap`, `ContinuousMap`, `Submodule.mkQ`, `Matrix.GeneralLinearGroup`; ReductiveGroupsPartII RG2.2 (the tree in §0.1); SmoothRepresentationsOfLocalGroups SR.0 and SR.3; LocallyAnalyticDistributions §0.0 (topologies).

## Layer 1: Coefficients and period spaces

### 1.1 Pro-étale coefficients

For a locally noetherian analytic adic space `X` over `ℚ_p` and a prime `ℓ`, define `ℚ_ℓ(r)` on `X_proét` as `Ẑ_ℓ(r)[1/ℓ]`, `Ẑ_ℓ(r) = lim_n ν^*μ_{ℓ^n}^{⊗r}`, and `RΓ_proét(X, ℚ_ℓ(r))` (ClassicalAdicEtaleCohomology §1.3). Write `RΓ_ét(X, ℚ_ℓ(r)) = (Rlim_n RΓ_ét(X, ℤ/ℓ^n(r)))[1/ℓ]`. Prove: (a) for `X` quasi-compact and quasi-separated, the natural map `H^i_ét(X, ℚ_ℓ(r)) → H^i_proét(X, ℚ_ℓ(r))` is an isomorphism (CDN-CURVES Remarque 0.2(ii)); (b) for a Stein space `X = ∪ X_n` with `X_n ⋐ X_{n+1}` affinoid, `H^i_proét(X, ℚ_ℓ(r)) = lim_n H^i_ét(X_n, ℚ_ℓ(r))` whenever the system `H^{i−1}_ét(X_n, ℚ_ℓ(r))` is Mittag–Leffler (Milnor sequence), and the right side carries its Fréchet topology; (c) these identifications are functorial and compatible with the actions of automorphisms and of `G_K` when `X` is defined over `K`.

**Checks.**

- On `Spa(C, O_C)`, `H⁰_proét(ℚ_p(1)) = ℚ_p(1)` and higher groups vanish.
- On the open unit disc over `C`, `H¹_ét(D, ℚ_p(1)) → H¹_proét(D, ℚ_p(1))` is not injective when `C` is not spherically complete (CDN-STEIN Remark 1.4); quasi-compactness in (a) cannot be dropped.
- For `ℓ ≠ p` and the closed unit disc, both sides of (a) vanish in degree one.

*Needs:* ClassicalAdicEtaleCohomology §1.3; AdicEtaleGeometry A1; EnhancedDerivedSheaves E2.

### 1.2 Completed tensors with non-separated quotients

For a `C̆`-space presented as a quotient `H = W₁/W₂` of `C̆`-Banach spaces, define `B_cris^+ ⊗̂_{C̆} H = (B_cris^+ ⊗̂ W₁)/(B_cris^+ ⊗̂ W₂)` and `B_st^+ ⊗̂_{C̆} H = B_st^+ ⊗_{B_cris^+} (B_cris^+ ⊗̂ H)` (CDN-CURVES footnote 5, line 170). For a countable projective limit `H = lim H_n` of finite-dimensional spaces, `B_st^+ ⊗̂ H = lim (B_st^+ ⊗ H_n)`. Prove independence of the presentation, functoriality, and that for finite-dimensional `H` all these agree with the ordinary tensor product.

**Checks.**

- For `H = C̆` the construction returns `B_st^+`.
- For `H = W₁/W₂` with `W₂` dense in `W₁` (so `H^sep = 0`), `B_cris^+ ⊗̂ H` need not vanish while `B_cris^+ ⊗̂ H^sep = 0`; separation does not commute with completed tensor.
- For `H = ∏_ℕ C̆`, the projective-limit definition gives `∏_ℕ B_st^+`.

*Needs:* LocallyAnalyticDistributions §0.0; PadicPeriodRings §4.1; `gap:period-rings-general-C`.

### 1.3 The period spaces `X^r_st(M)`

For `r ∈ ℤ` and a `C̆`-space `M` with a bijective `σ`-semilinear Frobenius `φ` and a nilpotent `N` with `Nφ = pφN`, presented as in §1.2, define `X^r_st(M) = (B_st^+ ⊗̂_{C̆} M)^{N=0, φ=p^r}` and the map `θ ⊗ ι: X^r_st(M) → C ⊗̂ M` induced by `θ` on `B_st^+` after the evaluation `u ↦ 0` composed with a de Rham comparison `ι` (CDN-CURVES Théorème 0.1; CDN-STEIN Theorem 1.8). The same definition is used with `C̆` replaced by a closed subfield `F′ ⊂ C̆` stable under `σ`, such as `F = W(k)[1/p]` in Layer 5, and agrees with the `C̆` version after `C̆ ⊗̂_{F′}`.

- `X^r_st` is a functor to topological `ℚ_p`-spaces; for finite-dimensional `M` it is the space of `C`-points of a Banach–Colmez space (VectorBundlesAndIsocrystals VB3).
- If `N = 0` and `M = F′ ⊗_{ℚ_p} M^{φ=p^r}` for a subfield `F′ ⊂ C̆` stable by `σ`, then `X^r_st(M) = M^{φ=p^r} ⊗̂ (B_cris^+)^{φ=1} = M^{φ=p^r}` and `X^{r−1}_st(M) = M^{φ=p^r} ⊗̂ (B_cris^+)^{φ=p^{−1}} = 0` (CDN-STEIN §5.5, lines 2160–2167).
- For `M` of slope `1/2` (supercuspidal rank-two), `(B_cris^+ ⊗ M)^{φ=1} = 0`, so `θ ⊗ ι` is injective on `X^1_st(M)`.

**Checks.**

- `M = C̆(−1)` (slope one, the annulus): `X^1_st(M) = (B_cris^+)^{φ=1} = ℚ_p`.
- `M = C̆` (slope zero): `X^1_st(M) = (B_cris^+)^{φ=p}`, which surjects onto `C` with kernel `ℚ_p t`; the kernel of `θ` is nonzero.
- A good ordinary elliptic curve: `H¹_HK` has slopes `0` and `1`, `X^1_st = (B_cris^+)^{φ=p} ⊕ ℚ_p` has Dimension `(1, 2)` = `(g, 2g)` for `g = 1`.
- Replacing `φ = p^r` by `φ = p^{−r}` gives `0` for `r ≥ 1` and `M` of nonnegative slopes, losing the fundamental exact sequence.

*Needs:* §1.2; PadicPeriodRings §4.1; PadicPeriodRings §4.3; `gap:period-rings-general-C`; VectorBundlesAndIsocrystals VB0; VectorBundlesAndIsocrystals VB3.

### Examples

For the Drinfeld half-space (§6.4), `M = H^r_HK` has linearized Frobenius `q^r` and `N = 0`, so `X^r_st(M) = Sp_r(ℚ_p)^*` and `X^{r−1}_st(M) = 0` by the second bullet of §1.3.

### Dependencies

ClassicalAdicEtaleCohomology §1.3; AdicEtaleGeometry A1; EnhancedDerivedSheaves E2; PadicPeriodRings §§4.1 and 4.3 with `gap:period-rings-general-C`; LocallyAnalyticDistributions §§0.0 and 0.2; VectorBundlesAndIsocrystals VB0 and VB3.

## Layer 2: Patterns, symbols and ℓ-adic cohomology of quasi-compact curves

Throughout Layers 2–4 a curve is a smooth connected separated rigid analytic curve over `C`; it is quasi-compact if it is an affinoid or proper. A triangulation of a quasi-compact curve is fine when the special fibre of the associated semistable model has at least two irreducible components, all smooth, any two meeting in at most one point (CDN-CURVES §3.5.2, §6.1).

### 2.1 Shorts, legs, ghost circles and residues

Define, over a complete valuation ring `R` above `O_C̆` (in practice `O_C`, `O_C̆`, `A_inf` or `A_cris`):

- a ghost circle: `Spf R[[T, T^{−1}⟩`, where `R[[T, T^{−1}⟩` is the completion of `R[[T]][T^{−1}]` for the topology of the ideal of definition (CDN-CURVES §0.4.2–0.4.3);
- a leg of length `µ ∈ ℚ_{>0}` over `O_C`: `Spf O_C[[T₁, T₂]]/(T₁T₂ − p^µ)`, oriented by the choice of `T₁`, with boundary the two ghost circles in `T₁` and `T₂`;
- a short: the formal scheme of a connected one-dimensional affinoid with good reduction, i.e. `Spf A` with `A` a formally smooth quotient of `O_C⟨x₁, …, x_n⟩` whose generic fibre is a connected affinoid curve; it has a model `Y̆` over `O_C̆`, unique up to isomorphism, and its special fibre is a smooth proper curve with finitely many marked points of multiplicity `0+` (CDN-CURVES §3.3.1, Remarque 3.13).

For `ω = Σ_k α_k T^k dT/T` on a ghost circle define `Res(ω) = α₀` (CDN-CURVES §0.4.4).

- `Res` does not depend on the parameter: for a unit `u` of `O_C[[T, T^{−1}⟩[1/p]`, `Res(du/u)` is the integer `v′(u)` of CDN-CURVES Lemme 4.2, and the general case follows by linearity and continuity.
- On a leg, `dT₁/T₁ + dT₂/T₂ = 0`, so reversing the orientation changes the sign of the residue, and `Res_Y(ω) = Res_{Y₁}(ω) = −Res_{Y₂}(ω)`.
- Shorts, legs and ghost circles base change along `O_C̆ → R`, and a Frobenius lift on `Y̆` induces one on the `A_inf`-short `Ỹ`.

**Checks.**

- `Res(dT/T) = 1` and `Res(d(T^k)) = 0` for `k ≠ 0`.
- On the leg `T₁T₂ = p^µ`, `Res(dT₁/T₁) = 1` in the `T₁`-orientation and `−1` in the `T₂`-orientation.
- `O_C[[T, T^{−1}⟩` contains `Σ_{k≥0} T^k`, whose coefficients do not tend to `0`, so it is not in `O_C⟨T, T^{−1}⟩`; whereas `Σ_{k≥1} T^{−k}` is not in `O_C[[T, T^{−1}⟩`, since negative coefficients must tend to `0` p-adically. The ghost circle is neither the annulus of width zero nor its Laurent completion in both directions.

*Needs:* AdicSpacesPartIII F0; ClassicalAdicEtaleCohomology §4.6.

### 2.2 The pattern of a triangulated curve

Let `Y` be a quasi-compact curve with a fine triangulation `S` and semistable model `Y_S` (TropicalAndBerkovichArithmetic §§2.11 and 2.16). Construct its pattern: the marked bipartite graph `Γ = (I, I₂, µ)` with `I = S ⊔ A_c`, built from the dual graph of the special fibre with an edge of length `0+` for every missing boundary point (CDN-CURVES §0.2.1, §3.5.2); the shorts `Y_s` (tubes of the smooth loci of the components, `s ∈ S`); the legs `Y_a` (tubes of the nodes, of length `µ(a) = v_p(α)` for a local equation `xy = α`, `a ∈ A_c`); the ghost circles `Y_{s,a}`, `Y_{a,s}` given by the rank-two valuations at the nodes; and the gluing isomorphisms `ι_{a,s}: Y_{a,s} ≅ Y_{s,a}`. Write `∂Y ⊂ S` for the vertices whose component is not proper, `S_int = S ∖ ∂Y`, `Γ_int` the subgraph obtained by deleting `∂Y` and the edges meeting it, and `Σ(Y) ⊂ S` the set of nodes of the skeleton.

- Refining `S` subdivides `Γ` without changing `H¹(Γ, −)`, `H¹_c(Γ, −)` and `H¹_c(Γ, −)^*` (CDN-CURVES Remarque 0.14(i)).
- Lengths lie in `ℚ_{>0}` because `v_p(C^×) = ℚ`.

**Checks.**

- The closed unit disc with `S` the Gauss points of `|T| ≤ 1` and `|T| ≤ |p|` (two components meeting in one point, so `S` is fine): vertices `s₁` (outer) and `s₂`, one relatively compact edge of length `1`, one leg of length `0+` at `s₁`; `∂Y = {s₁}` and `Γ_int = {s₂}` without edges; `H¹(Γ) = 0` and `H¹_c(Γ)^* = 0` (`∂^*` at `s₂` kills the edge coordinate, then `∂^*` at `s₁` kills the leg coordinate), the disc having no residue classes. Refining further does not change these groups. The Gauss point alone is not a fine triangulation: it gives one component.
- The closed annulus `|p^µ| ≤ |T| ≤ 1` with `S` its two boundary Gauss points: two vertices joined by one edge of length `µ`, each with one leg; `H¹(Γ) = 0` and `H¹_c(Γ)^*` has rank one.
- A Tate curve `𝔾_m/q^ℤ` with `S` two points of its skeleton: a circle of total length `v_p(q)` subdivided into two edges.

*Needs:* §0.1; §2.1; TropicalAndBerkovichArithmetic §2.11; TropicalAndBerkovichArithmetic §2.13; TropicalAndBerkovichArithmetic §2.16.

### 2.3 Adoc geometry and the reconstruction of curves from patterns

Define, for a reduced Tate `O_C`-algebra `A` with reduced special fibre, the adoc spectrum `Spado(A)`: the topological space of `Spf A` enlarged by the points and opens attached to rank-two valuations at closed points of the special fibre, with the structure sheaf extended accordingly (CDN-CURVES §3.1, Appendix A.4). Shorts, legs and ghost circles have adoc spectra, and a curve pattern over a complete `O_C̆`-algebra `R` — a finite marked bipartite graph with lengths `m: A_c → m_R` and no loop with one or two vertices, `R`-legs `R[[T_{a,s₁}, T_{a,s₂}]]/(T_{a,s₁}T_{a,s₂} − m(a))`, `R`-shorts base-changed from `O_C̆`, and isomorphisms of `R`-ghost circles (CDN-CURVES §§3.5.1 and 3.6.1) — glues to an adoc `R`-curve `Y^ado`. Prove that `Y^ado` is the adoc scheme of a formal `R`-curve of relative dimension one (CDN-CURVES Théorème 3.17), and, for `R = O_C` and lengths `µ(a) ∈ ℚ_{>0}`, that every curve pattern is the pattern of a unique pair `(Y, S)` of a quasi-compact curve and a triangulation (CDN-CURVES Théorème 3.19 = Théorème 0.9). Prove the adoc de Rham comparison: the de Rham cohomology of `Y_S` is computed by the Čech complex `C_dR(Y_S) = [∏_{i∈I} Ω^•(Y_i) → ∏_{(i,j)∈I_{2,c}} Ω^•(Y_{i,j})]` (CDN-CURVES Proposition 3.20).

**Checks.**

- The pattern of §2.2 of the closed annulus, re-glued, returns the annulus with its two Gauss points.
- Multiplying a gluing isomorphism `ι_{a,s}` by a unit `α ∈ O_C^×` produces the curve obtained by replacing `Y_a` by `T₁T₂ = αp^µ` (CDN-CURVES Remarque 0.10(i)); patterns with different gluings can give non-isomorphic curves, so the gluing data are not redundant.
- Over `R = O_C[[T_a]]` the family has constant special fibre and its fibre at `T_a = 0` is a nodal curve with the same dual graph (CDN-CURVES §3.6.3); the reconstruction is not asserted for singular fibres.

*Needs:* §2.2; TropicalAndBerkovichArithmetic §§2.16–2.17; AdicSpacesPartIII §R3.7 (proper GAGA for the compactification step).

### 2.4 Symbols and the Kummer regulator

For a quasi-compact curve `Y` and a prime `ℓ`, define `Symb_ℓ(Y)` as the group of sequences `(f_n)_{n∈ℕ}` of nonzero meromorphic functions with `Div(f_n) ∈ ℓ^n Div(Y)` and `f_{n+1}/f_n ∈ (C(Y)^×)^{ℓ^n}`, modulo the sequences `(h_n^{ℓ^n})` (CDN-CURVES §0.3.1, line 476; §5.1.3). Define the localized symbols `Symb_ℓ(Y_S)` on the pattern (CDN-CURVES §6.2.1) and the Kummer regulator `Symb_ℓ(Y) → H¹_ét(Y, ℤ_ℓ(1))`.

Prove: (a) the Kummer regulator is an isomorphism for every prime `ℓ`, including `ℓ = p` (CDN-CURVES Corollaire 5.5); (b) `Symb_ℓ(Y_S) ≅ Symb_ℓ(Y)` (CDN-CURVES Lemme 6.1); (c) there is an exact sequence `0 → H¹(Γ, ℤ_ℓ(1)) → Symb_ℓ(Y_S) → ker(∏_{i∈I} Symb_ℓ(Y_i^gen) → ∏_{(i,j)∈I_{2,c}} Symb_ℓ(Y_{i,j}^gen)) → 0` (CDN-CURVES Proposition 6.2).

**Checks.**

- For the closed unit disc and `ℓ ≠ p`, `Symb_ℓ = 0`; for `ℓ = p` it contains `ℤ_p ⊗̂ O(Y)^{**}`, nonzero.
- For the annulus `T₁T₂ = p^µ` and `ℓ ≠ p`, `Symb_ℓ ≅ ℤ_ℓ`, generated by `(T₁)_n`, whose Kummer class has residue `1` (CDN-CURVES Lemme 4.4).
- The constant sequence `(c)` with `c ∈ C^×` is trivial: `C^×` is `ℓ`-divisible.

*Needs:* §§2.1–2.2; ClassicalAdicEtaleCohomology §1.4 (Kummer sequence); JacobianChallenge Layer D (Picard groups of the compactification).

### 2.5 ℓ-adic filtration and Picard–Lefschetz

Prove that for `ℓ ≠ p`, `H¹_ét(Y, ℤ_ℓ(1))` has a natural three-step filtration with graded pieces `H¹(Γ, ℤ_ℓ(1))`, `∏_{s∈Σ(Y)} H¹_ét(Y_s^sp, ℤ_ℓ(1))` and `H¹_c(Γ, ℤ_ℓ)^*`, the last map being the collection of residues (CDN-CURVES Théorème 6.3 = Théorème 0.13(i)); that `H¹_ét(Y_s^sp, ℤ_ℓ(1)) ≅ T_ℓ J(Y_s^sp)` and `H¹_ét(Y_s, ℤ_ℓ(1))_0 ≅ H¹_ét(Y_s^sp, ℤ_ℓ(1))` (CDN-CURVES Proposition 5.10); that the choice of `r ↦ p^r` gives a section `s_{r↦p^r}` of the projection `H¹_ét(Y, ℚ_ℓ(1)) → H¹_ét(Y, ℚ_ℓ(1))/H¹(Γ, ℚ_ℓ(1))`, and that changing it to `r ↦ ζ(r)p^r`, for `ζ` a homomorphism from `ℚ/ℤ` to the roots of unity, gives `s_{r↦ζ(r)p^r} = s_{r↦p^r} + t_ζ N` with `t_ζ = (ζ(ℓ^{−n}))_n ∈ ℤ_ℓ(1)` and `N` induced by `N_µ`, so the difference lands in `H¹(Γ, ℚ_ℓ(1))` (CDN-CURVES Remarque 6.4, the Picard–Lefschetz formula); and that when `Y_S` is defined over `O_K`, an element `σ` of inertia acts by `c ↦ c + t_σ N(c)` (CDN-CURVES Remarque 6.5).

**Checks.**

- For a Tate curve, the graded pieces are `ℤ_ℓ(1)`, `0`, `ℤ_ℓ`, and `N` is multiplication by `v_p(q)` from the top piece to the bottom one.
- For a good-reduction proper curve of genus `g`, only the middle piece survives, of rank `2g`.
- Components `s ∈ S ∖ Σ(Y)` have `Y_s^sp = ℙ¹` and contribute nothing, so the filtration does not depend on `S`.

*Needs:* §§0.1–0.2, 2.4; JacobianChallenge Layer D (Tate modules of Jacobians).

### Examples

The closed annulus has `H¹_ét(Y, ℤ_ℓ(1)) = ℤ_ℓ` concentrated in the residue piece; the Tate curve has both graph pieces and nonzero monodromy.

### Dependencies

Layers 0–1; AdicSpacesPartIII F0; TropicalAndBerkovichArithmetic §§2.11, 2.13–2.17; ClassicalAdicEtaleCohomology §§1.3–1.4, 4.6; JacobianChallenge Layer D; AdicSpacesPartIII §R3.7.

## Layer 3: de Rham, Hyodo–Kato and syntomic cohomology of quasi-compact curves

### 3.1 de Rham filtrations

Prove that `H¹_dR(Y_S)` has, up to `p^{N₁(S)}`, a filtration with pieces `H¹(Γ, O_C)`, `∏_{s∈S} H¹_dR(Y_s^♦)_0` and `H¹_c(Γ, O_C)^*`, where `Y_s^♦` is the partial compactification of `Y_s` along its compact edges and the subscript `0` imposes vanishing residues on its legs (CDN-CURVES Proposition 6.8); and that `H¹_dR(Y)^sep` is finite-dimensional with filtration `H¹(Γ_int, C)`, `∏_{s∈Σ(Y)} C ⊗ H¹_dR(Y_s^♦)^sep_0`, `H¹_c(Γ, C)^*` (CDN-CURVES Théorème 6.14, Lemme 6.15). Here `N₁(S)` is the least `N` with `p^N µ(a) ≥ 1` for all `a`.

**Checks.**

- For an affinoid, `H¹_dR(Y)` is infinite-dimensional and not Hausdorff, while `H¹_dR(Y)^sep` is finite-dimensional (CDN-CURVES lines 142–144).
- For the closed disc, `H¹_dR(Y)^sep = 0`.
- For the closed annulus, `H¹_dR(Y)^sep = C·dT/T`.

*Needs:* §0.1; §2.3.

### 3.2 Hyodo–Kato cohomology of a quasi-compact curve

Define the `A_cris`-thickening `Ỹ_S` of the pattern: `O(Ỹ_s) = A_cris ⊗̂_{O_C̆} O(Y̆_s)` with a Frobenius lift, `O(Ỹ_a) = A_cris[[T₁, T₂]]/(T₁T₂ − p̃_{µ(a)})` with `φ(T_i) = T_i^p`, and their ghost circles, and the Čech complexes `C_dR(Ỹ_S)` and `C_dR(Y̆_S) = O_C̆ ⊗_{θ₀} C_dR(Ỹ_S)` (CDN-CURVES §0.3.3–0.3.4, §6.3). Define `H^i_HK(Y) = C̆ ⊗_{O_C̆} H^i_dR(Y̆_S) = C̆ ⊗_{A_cris} H^i_dR(Ỹ_S)`, with its semilinear `φ` and the monodromy `N` induced by `N_µ` (CDN-CURVES Remarque 6.22(iii)), and `H¹_HK(Y)^sep` its maximal Hausdorff quotient.

Prove: (a) `H^i_HK(Y)` does not depend on `S` and is functorial; (b) `B_cris^+ ⊗_{C̆} H¹_HK(Y)^sep ≅ H¹_dR(Ỹ)^sep`, `φ`-equivariantly, with `H¹_dR(Ỹ)^sep` free of finite rank over `B_cris^+`, and `ι_HK: C ⊗_{C̆} H¹_HK(Y)^sep ≅ H¹_dR(Y)^sep` (CDN-CURVES Théorème 6.21, Lemme 6.19, Corollaire 6.20); (c) `N ∘ N = 0` and `Nφ = pφN`; (d) `H¹_HK(Y)^sep` has a `φ`-stable filtration with pieces `H¹(Γ_int, C̆)`, `(∏_{s∈Σ(Y) int} H¹_rig(Y_s^sp)) ⊕ (∏_{s∈∂Y} H¹_rig(Y_s^sp)^{[1]})` and `H¹_c(Γ, C̆)^*(−1)`, where `^{[1]}` is the slope-one part (CDN-CURVES Théorème 0.13(ii), Remarque 6.22(ii), Proposition 5.20 via Cartier theory).

**Checks.**

- Closed unit disc: `H¹_HK(Y)^sep = 0` (CDN-CURVES line 160).
- Closed annulus: `H¹_HK(Y)^sep = C̆·dlog T` with `φ = p` and `N = 0`; it is one-dimensional.
- A proper curve with good reduction of genus `g`: `H¹_HK(Y) = H¹_rig(Y^sp)`, of dimension `2g`, with `N = 0`; a Tate curve gives a two-dimensional space with `N ≠ 0` of rank one.
- Dropping `^{[1]}` on boundary components would give the wrong dimension for an affinoid with good reduction of positive genus: its `H¹_HK^sep` is the slope-one part of `H¹_rig` of the proper component plus residues.

*Needs:* §§2.1–2.3, 3.1; PadicPeriodRings §4.1 with `gap:period-rings-general-C`; PadicDifferentialEquationsAndRigidCohomology §§RD.4.10, RD.4.18, RD.4.38; CrystallineCohomology §CR.5.1 (Cartier); VectorBundlesAndIsocrystals VB0.

### 3.3 Syntomic cohomology and the syntomic regulator

Define `Syn(Y_S, 1)` as the total complex of the cone of `1 − φ/p: F¹C_dR(Ỹ_S) → C_dR(Ỹ_S)`, with divided-power ghost-circle rings (CDN-CURVES §0.3.3, §6.4.1), and the syntomic regulator `δ_p̃: Symb_p(Y) → H¹_syn(Y_S, 1)` sending `(f_n)` to `lim (df̃_{n,i}/f̃_{n,i}, (1/p) log(φ(f̃_{n,i})/f̃_{n,i}^p), log(f̃_{n,i}/f̃_{n,j}))` (CDN-CURVES line 529–532). Prove that `δ_p̃` is an isomorphism if `p > 2`, and is injective with cokernel killed by `2` if `p = 2` (CDN-CURVES Théorème 6.24, from Proposition 4.11 for legs and ghost circles and Théorème 5.34 for shorts; footnote 32, line 2195); hence `H¹_syn(Y_S, 1) ≅ Symb_p(Y) ≅ H¹_ét(Y, ℤ_p(1))` for `p > 2` (CDN-CURVES Corollaire 6.25). Prove that the exact sequence `0 → O(Y_S)/O_C → Symb_p(Y) → (A_st ⊗̂ H¹_dR(Ỹ_S))^{N=0, φ=p} → 0` does not depend on `r ↦ p^r` (CDN-CURVES Proposition 6.29).

**Checks.**

- `H⁰_syn(Y_S, 1) = (F¹A_cris)^{φ=p} = ℤ_p t` (CDN-CURVES Proposition 6.26, proof).
- On the closed disc, the constant symbol `(u)` of `u = 1 + pT ∈ O(Y)^{**}` has `Ω¹`-component `du/u = p·dT/(1 + pT) ≠ 0`; the zero map and a regulator forgetting the differential component are excluded.

*Needs:* §2.4; §3.2; PadicPeriodRings §4.1; `gap:period-rings-general-C`.

### 3.4 The integral sequence

For `k ≥ 0`, call a sequence `p^k`-exact when its homology at each term is killed by `p^k`. Prove that for an affinoid `Y` there is a `p²`-exact sequence `0 → ℤ_p ⊗̂ O(Y)^{**} → H¹_syn(Y_S, 1) → (H¹_dR(Ỹ_S)^sep)^{φ=p} → H¹(Y_S, O)` with `H¹(Y_S, O)` killed by a power of `p` (CDN-CURVES Théorème 6.30, Remarque 0.19), and that composed with §3.3 it gives integral versions of the first row of §3.5 with denominators depending only on the lengths of the legs.

**Checks.**

- For the closed disc the sequence reads `0 → ℤ_p ⊗̂ O(Y)^{**} → H¹_syn → 0`, up to `p²`.
- For the closed annulus the third term contains the class of `dlog T`, fixed by `φ/p`, and the second map sends the symbol `(T)` to it.
- Over `ℚ_p` the sequence becomes exact (§3.5); integrally only `p²`-exactness is asserted, with denominators growing as the legs of `Y_S` get shorter (CDN-CURVES Remarque 0.19).

*Needs:* §3.3.

### 3.5 The fundamental diagram of a quasi-compact curve

Prove that for a quasi-compact curve `Y` there is a functorial commutative diagram whose first row `0 → ℚ_p ⊗̂ O(Y)^{**} → H¹_proét(Y, ℚ_p(1)) → X^1_st(H¹_HK(Y)^sep) → H¹(Y, O) → 0` is exact and whose second row `0 → ℚ_p ⊗̂ O(Y)^{**} → Ω¹(Y) → H¹_dR(Y)^sep → H¹(Y, O) → 0` is a complex, the vertical maps being `dlog` and `θ ⊗ ι_HK` (CDN-CURVES Théorème 6.32 with Corollaire 6.25 and §1.1(a)). For an affinoid, `H¹(Y, O) = 0` and this is a diagram of Banach spaces all of whose maps have closed image (CDN-CURVES Théorème 0.1). When `Y` is defined over a closed subfield `K ⊂ C` finite over `ℚ_p`, the diagram is `G_K`-equivariant.

**Checks.**

- Closed unit disc: `H¹_proét(Y, ℚ_p(1)) ≅ ℚ_p ⊗̂ O(Y)^{**}`, and `exp(O(Y))` is dense in it but different: `∏_{n≥1}(1 + p^{1/p^n}T)^{p^n}` converges in `O_C[[T]]` but not in `C⟨T⟩` (CDN-CURVES lines 160–164).
- Closed annulus: the third term is `X^1_st(C̆(−1)) = ℚ_p`, spanned by the image of the Kummer class of `T`.
- `ℓ ≠ p` gives a finite-dimensional `H¹_ét(Y, ℚ_ℓ(1))` for the same affinoids, whereas `H¹_proét(Y, ℚ_p(1))` contains `ℚ_p ⊗ (O(Y)^{**}/(1 + m_C))`, a `C`-space of infinite dimension (CDN-CURVES Remarque 6.33(ii)).

*Needs:* §§1.1–1.3, 2.4, 3.2–3.4; AdicSpacesPartIII §R3.4.

### Examples

For a Tate curve the second row is `0 → Ω¹ → H¹_dR → H¹(O) → 0`, `X^1_st(H¹_HK)` has Dimension `(1, 2)` and the first row identifies `H¹_proét(Y, ℚ_p(1))` with a two-dimensional `ℚ_p`-space.

### Dependencies

Layers 0–2; PadicPeriodRings §§4.1, 4.3; PadicDifferentialEquationsAndRigidCohomology §§RD.4.10, RD.4.18, RD.4.38; CrystallineCohomology §CR.5.1; VectorBundlesAndIsocrystals VB0, VB3; AdicSpacesPartIII §R3.4.

## Layer 4: Overconvergent affinoids, Stein curves, Weil–Deligne actions and Jacobians

### 4.1 Overconvergent affinoids

For an affinoid `Y` write `Y^† = lim_{δ>0} Y_δ` for its overconvergent structure, where `Y_δ ⊃ Y` are the affinoids obtained by shrinking the boundary discs, and set `H¹_proét(Y^†, ℚ_p(1)) = colim_δ H¹_proét(Y_δ, ℚ_p(1))` and `H¹_HK(Y^†) = colim_δ H¹_HK(Y_δ)` (CDN-CURVES Remarque 0.6(i), §7.1.4). Prove: (a) `H¹_HK(Y^†)` is finite-dimensional over `C̆` with a filtration of pieces `H¹(Γ, C̆)`, `∏_{s∈Σ(Y)} H¹_cris(Y_s^sp)`, `H¹_c(Γ, C̆)^*(−1)`, and `ι_HK: C ⊗ H¹_HK(Y^†) ≅ H¹_dR(Y^†)` (CDN-CURVES Proposition 7.4, Remarque 7.5); (b) there is a functorial diagram with exact rows `0 → O(Y^†)/C --exp--> H¹_proét(Y^†, ℚ_p(1)) → X^1_st(H¹_HK(Y^†)) → 0` and `0 → O(Y^†)/C --d--> Ω¹(Y^†) → H¹_dR(Y^†) → 0`, vertical maps `dlog` and `θ ⊗ ι_HK`, all maps with closed image (CDN-CURVES Théorème 7.6 = Théorème 0.5); (c) for `ℓ ≠ p`, `H¹_proét(Y^†, ℚ_ℓ(1)) ≅ H¹_proét(Y, ℚ_ℓ(1))` (CDN-CURVES Remarque 7.7).

**Checks.**

- Overconvergent closed disc: `H¹_HK(Y^†) = 0` and `exp: O(Y^†)/C ≅ H¹_proét(Y^†, ℚ_p(1))`; unlike §3.5, `log` identifies `ℚ_p ⊗ (O(Y^†)^{**}/C^×)` with `O(Y^†)/C`.
- Overconvergent annulus: `H¹_HK(Y^†) = C̆(−1)` and `X^1_st = ℚ_p`.
- `(B_st^+ ⊗ H¹_HK(Y^†))^{N=0,φ=p}` and `H¹_dR(Y^†)` are Banach spaces while the other nonzero terms are inductive limits of Banach spaces (CDN-CURVES Remarque 0.6(iii)).

*Needs:* §§3.2–3.5; AdicSpacesPartIV §§F1.5–F1.9; VectorBundlesAndIsocrystals VB3 (closed images through finite Dimension).

### 4.2 Curves without boundary

Let `Y` be a non-proper curve without boundary, written as a strictly increasing union of affinoids `Y_n` or of overconvergent affinoids `Y_n^†`. Set `H¹_HK(Y) = lim_n H¹_HK(Y_n^†)`, a countable projective limit of finite-dimensional `C̆`-spaces with continuous `φ` and `N`. Prove that there is a functorial commutative diagram of Fréchet spaces with exact rows `0 → O(Y)/C --exp--> H¹_proét(Y, ℚ_p(1)) → X^1_st(H¹_HK(Y)) → 0` and `0 → O(Y)/C --d--> Ω¹(Y) → H¹_dR(Y) → 0`, vertical maps `dlog` and `θ ⊗ ι_HK` with closed images, where `ι_HK: C ⊗̂_{C̆} H¹_HK(Y) ≅ H¹_dR(Y)` (CDN-CURVES Théorème 8.1 = Théorème 0.7, Remarque 8.2(iii)); that the kernel of `H¹_proét(Y, ℚ_p(1)) → Ω¹(Y)` is `t·H¹_HK(Y)^{φ=1}` (CDN-CURVES Remarque 0.8(ii)); and that the diagram is `G_K`-equivariant when `Y` is defined over a closed subfield `K ⊂ C` finite over `ℚ_p`.

The proof passes to the limit in §3.5 or §4.1, using `R¹lim O(Y_n) = 0` (AdicSpacesPartIII §R3.4) and closedness of images in the limit. This is the curve case of CstConjectureForDaggerVarieties CS.1 (`stein-affinoid-diagram`), proved here without the model-free syntomic input of that roadmap and over every `C` with `v_p(C^×) = ℚ`.

**Checks.**

- Open unit disc: `H¹_HK(Y) = H¹_dR(Y) = 0` and `exp: O(Y)/C ≅ H¹_proét(Y, ℚ_p(1))`.
- Open annulus: `H¹_HK(Y) = C̆(−1)`, the Kummer class of the coordinate spans the image of `H¹_proét` in `X^1_st = ℚ_p`.
- A countable disjoint union of open annuli has `H¹_HK = ∏_ℕ C̆(−1)`, and the completed tensor of §1.2 is needed: the ordinary tensor `C ⊗ ∏_ℕ C̆` is strictly smaller than `∏_ℕ C`.
- On the common range of CstConjectureForDaggerVarieties CS.1 (`C` the completion of `K̄`, `K` with countable residue field), the two diagrams agree: both have the same rows, and their right-hand terms are identified through the uniqueness of the Hyodo–Kato structure with given de Rham comparison on finite-dimensional pieces.

*Needs:* §§4.1, 1.2–1.3; AdicSpacesPartIII §R3.4; EnhancedDerivedSheaves E2; LocallyAnalyticDistributions §§0.0, 0.2.

### 4.3 Filtrations for curves without boundary and overconvergent affinoids

Prove that for `Y` an overconvergent affinoid or a curve without boundary with a fine triangulation `S`: for `ℓ ≠ p`, `H¹_proét(Y, ℚ_ℓ(1))` has a natural filtration with pieces `H¹(Γ, ℚ_ℓ(1))`, `∏_{s∈S} H¹_ét(Y_s^sp, ℚ_ℓ(1))`, `H¹_c(Γ, ℚ_ℓ)^*`; and `H¹_HK(Y)` has a `φ`-stable filtration with pieces `H¹(Γ, C̆)`, `∏_{s∈S} H¹_rig(Y_s^sp)`, `H¹_c(Γ, C̆)^*(−1)`, the monodromy being induced by `N_µ` (CDN-CURVES Théorème 0.15 = Théorème 8.9, Remarque 8.2(ii)). The terms do not depend on `S` (CDN-CURVES Remarque 0.16(i)). When `Y` has a semistable model over the integers `O_K` of a discretely valued subfield, the Hyodo–Kato structure of §4.2 agrees with that of LocallyAnalyticDistributions §0.CR.6.6 after `C̆ ⊗̂_{K₀}`, compatibly with `φ`, `N` and `ι_HK` (CDN20 §0.3, lines 194–198; CDN-CURVES Remarque 0.16(iii)): both are computed from the same Čech complex of the pattern of the base-changed model.

**Checks.**

- Drinfeld half-plane: `Γ` is the Bruhat–Tits tree, all components are `ℙ¹`, so `H¹_HK(Ω) = H¹_c(Γ, C̆)^*(−1)` has slope one, and `H¹_proét(Ω, ℚ_ℓ(1)) = H¹_c(Γ, ℚ_ℓ)^* = Sp_1(ℚ_ℓ)^*` by §0.1.
- For a curve without boundary the edge lengths of non-compact edges are infinite and `H¹_c(Γ)^*` is the full residue space; for an affinoid, `Γ_int` replaces `Γ` in §3.2(d), and the two statements differ exactly by the boundary vertices.
- A Mumford curve of genus `g`: pieces `C̆^g`, `0`, `C̆(−1)^g`.

*Needs:* §2.5; §3.2; §4.2; LocallyAnalyticDistributions §0.CR.6.6.

### 4.4 The special fibre of a curve without boundary and its Weil–Deligne group

For a curve without boundary `Y`, define `Y^sp` as the stable marked curve obtained from the special fibre of the semistable model of any triangulation by contracting every contractible `ℙ¹` (CDN-CURVES §8.2.1–8.2.3), with the conventions of a point or a double point when the node set `Σ(Y)` is empty. Prove that a non-constant morphism `f: X → Y` induces a unique `f^sp: X^sp → Y^sp` compatible with the semistable models of triangulations `S ⊃ f^{−1}(T)` (CDN-CURVES Théorème 8.4), so that `Aut_C(Y)` acts on `Y^sp` (CDN-CURVES Corollaire 8.5); and that an automorphism acting trivially on `Y^sp` acts trivially on `H¹_dR(Y)` when `Σ(Y) ≠ ∅` (CDN-CURVES Théorème 8.7). For `Y` defined over a finite `K/ℚ_p` with `C = ℂ_p`, define `W_Y` as the subgroup of `Aut_K(Y) × φ^ℤ` generated by the elements of `Aut_K(Y) × φ^ℕ` acting trivially on `k_C`, with `deg: W_Y → ℤ` and `W_Y = W_K × Aut_C(Y)^{G_K}`, and `WD_Y = 𝔾_a ⋊ W_Y` as in the Conventions (CDN-CURVES §8.2.5, Remarque 8.6). A representation of `WD_Y` is a representation of `W_Y` with `N` satisfying `Ng = p^{deg g} gN`; it is smooth when every vector is fixed by an open subgroup of inertia.

**Checks.**

- The Drinfeld half-plane: `Y^sp` is the tree of `ℙ¹`'s with all `q + 1` rational points marked, acted on by `PGL₂(K)`.
- The open unit disc has `Σ = ∅` and `Y^sp` a point; a Tate curve has a double point, on which multiplication by `−1` must act non-trivially for Théorème 8.7 to persist (CDN-CURVES Remarque 8.8).
- Within `WD_K ⊂ WD_Y`, a geometric Frobenius `Φ` and `N` satisfy `NΦ = qΦN`; using arithmetic Frobenius would give `NΦ = q^{−1}ΦN`, contradicting the relation `N g = p^{deg g} g N` with `deg Φ = f`.

*Needs:* §2.2; TropicalAndBerkovichArithmetic §2.16; TropicalAndBerkovichArithmetic §2.17.

### 4.5 ℓ-adic Weil–Deligne representations of curves

For a continuous `ℚ_ℓ`-representation `V` of `Aut_K(Y)`, `ℓ ≠ p`, define `WD(V) = colim_{[L:K]<∞} (ℚ_ℓ[u] ⊗ V)^{I_L}`, where `Aut_K(Y)` acts on `ℚ_ℓ[u]` through `G_K` by `g(u) = χ_ℓ(g)^{−1}(u + c_ℓ(g))` with `χ_ℓ` cyclotomic and `c_ℓ` the Kummer cocycle of `p`, `φ` acts trivially and `N = d/du`; extend to projective limits termwise (CDN-CURVES §8.3.1). Prove `V = (ℚ_ℓ[u] ⊗̂ WD(V))^{N=0}` (CDN-CURVES Remarque 8.10) and `WD(H¹_proét(Y, ℚ_ℓ(1))) = H¹_proét(Y^sp, ℚ_ℓ(1))` as `WD_Y`-representations, the latter being `H¹(Γ, ℚ_ℓ)(1) ⊕ ∏_{s∈Σ(Y)} H¹_ét(Y_s^sp, ℚ_ℓ(1)) ⊕ H¹_c(Γ, ℚ_ℓ)^*` with `N` from `N_µ` (CDN-CURVES Théorème 8.11).

**Checks.**

- For a Tate curve over `K`, `WD(H¹(ℚ_ℓ(1)))` is two-dimensional with `N` of rank one; for a good-reduction curve `N = 0`.
- `N ∘ g = χ_ℓ(g)^{−1} g ∘ N` on `ℚ_ℓ[u]`, the twist that matches `p^{deg g}` on `W_Y`.
- For `V` unramified the colimit stabilizes at `L = K` and `WD(V) = V` with `N = 0`.

*Needs:* §4.3; §4.4; ClassicalAdicEtaleCohomology §1.4.

### 4.6 Similarity of ℓ-adic and Hyodo–Kato cohomology

Prove that for `Y` an overconvergent affinoid or a curve without boundary defined over a finite `K/ℚ_p`, with `C = ℂ_p`, the `WD_Y`-representations `H¹_proét(Y^sp, ℚ_ℓ(1))` (`ℓ ≠ p`) and `H¹_HK(Y)(1)` are similar (CDN-CURVES Théorème 8.12 = Remarque 0.16(ii)); together with §4.5, the `WD_K`-representations `WD(H¹_proét(Y, ℚ_ℓ(1)))` and `H¹_HK(Y)(1)` are similar, compatibly with `Aut_K(Y)`. The proof splits both sides by weights, identifies the graph pieces from a common `ℚ`-structure with the same monodromy, and on a component `Y_s^sp` uses that `H¹_ét(Y_s^sp, ℚ_ℓ)` and `H¹_cris(Y_s^sp)` are similar representations of `End(J_s)` for the Jacobian `J_s`.

**Checks.**

- A good-reduction elliptic curve over a finite field: both sides are two-dimensional with the same Frobenius characteristic polynomial `X² − aX + q`, and `N = 0`.
- The Drinfeld half-plane: both sides are the graph piece `H¹_c(Γ)^*`, with `N = 0`; on `H¹_HK(Ω) = H¹_c(Γ, C̆)^*(−1)` the Frobenius has slope one, and after the twist `(1)` it acts through the permutation action on `Γ`, as the geometric Frobenius does on `H¹_c(Γ, ℚ_ℓ)^*`.
- Similarity is not equality: the two sides live over `ℚ_ℓ` and `C̆`, and only become isomorphic over a common field.

*Needs:* §§4.3–4.5; PadicDifferentialEquationsAndRigidCohomology §RD.7.7 with `gap:endomorphism-characteristic-polynomials`; PadicDifferentialEquationsAndRigidCohomology §RD.4.38 (rigid–crystalline comparison for the proper components).

### 4.7 Proper curves

Prove that for a smooth proper connected curve `Y` over `C` of genus `g` there is a functorial commutative diagram with exact rows `0 → H¹_proét(Y, ℚ_p(1)) → X^1_st(H¹_HK(Y)) → H¹(Y, O) → 0` and `0 → Ω¹(Y) → H¹_dR(Y) → H¹(Y, O) → 0`, with `H¹_proét(Y, ℚ_p(1))` of dimension `2g` (CDN-CURVES Théorème 0.4, Remarque 6.33(i)). Exactness on the right follows from Banach–Colmez Dimensions: the slopes `r_i` of `φ` on `H¹_HK(Y)` lie in `[0, 1]` and are exchanged by `r ↦ 1 − r` under the cup-product pairing into `H²_HK(Y) = C̆(−1)`, so `Dim X^1_st = Σ (1 − r_i, 1) = (g, 2g)`, and `Dim H¹(Y, O) = (g, 0)`. When `C` is the completion of `K̄` for `K` with countable residue field, the first row agrees with the `φ, N`-compatible `B_st` comparison of CohomologyComparisons §4.11, and its de Rham data are those of CohomologyComparisons §4.12.

**Checks.**

- Elliptic curve with good ordinary reduction: slopes `0, 1`; `X^1_st = (B_cris^+)^{φ=p} ⊕ ℚ_p` has Dimension `(1, 2)`; the kernel of the map to `H¹(Y, O) = C` is `V_p` of dimension `2`.
- Supersingular elliptic curve: slopes `1/2, 1/2`; `Dim X^1_st = (1, 2)` again.
- `g = 0`: all terms vanish.

*Needs:* §3.5 (for the quasi-compact case `Y` proper); VectorBundlesAndIsocrystals VB3 (Dimensions); CohomologyComparisons §§4.11–4.12 for the Check.

### 4.8 The universal cover of the p-divisible group of a Jacobian

Let `X` be a smooth proper connected curve over `C` with Jacobian `J` (JacobianChallenge Layer D). Define `Ĵ` as the `ℚ_p`-space of sequences `(x_n)_{n∈ℤ}` in `J(C)` with `x_n = p·x_{n+1}` and `x_n → 0` as `n → −∞` (CDN-CURVES §7.1.5, line 4044). Prove the exact sequence `0 → V_p(J) → Ĵ → C ⊗ Lie(J) → 0` given by `log_J`; for `Y ⊂ X` the complement of an open disc, the exact sequence `0 → ℚ_p ⊗̂ O(Y)^× → H¹_ét(Y, ℚ_p(1)) → Ĵ → 0` (CDN-CURVES line 436, Remarque 7.8); and the natural isomorphism `ι_st: Ĵ ≅ X^1_st(H¹_HK(X))` obtained by comparing it with §4.1 (CDN-CURVES Théorème 7.9 = Théorème 0.17), `G_K`-equivariant when `X` is defined over `K`.

- `Ĵ` is functorial in `X`, contains `V_p(J)` as the sequences with `x_n = 0` for `n ≪ 0`, and carries a continuous `G_K`-action when `X` is defined over `K`.
- If `J` has good reduction, `Ĵ` is the universal cover of the p-divisible group of the Néron model, and `ι_st` agrees with the isomorphism `Ĝ ≅ (B_cris^+ ⊗ D(G))^{φ=p}` of FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.25 (CDN-CURVES Remarque 7.10(i)).

**Checks.**

- `g = 0`: `Ĵ = 0`.
- For a Tate curve `E = 𝔾_m/q^ℤ`, `V_p(E)` is an extension of `ℚ_p` by `ℚ_p(1)` and `Ĵ/V_p(E) ≅ C`.
- Sequences with `x_n = p·x_{n+1}` but `x_n` not tending to `0` would include lifts along non-torsion points of `J(C)`, and the quotient by `V_p(J)` would no longer be `C ⊗ Lie(J)`.

*Needs:* §4.1; §4.7; JacobianChallenge Layer D; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.25.

### 4.9 Integration and the Jacobian period map

Let `X` be defined over a finite `K/ℚ_p` and `C = ℂ_p`. Let `J̃` be the universal vector extension of `J` (AbelianSchemesAndArithmeticModuli §A4.2). Define `ι_BdR: Ĵ → J̃(B_dR^+)` by sending `(x_n)` to `lim_{n→+∞} p^n·x̂_n` for a bounded sequence of lifts `x̂_n ∈ J̃(B_dR^+)` (CDN-CURVES Remarque 0.18), and `log_{J̃}: J̃(B_dR^+) → B_dR^+ ⊗_K H¹_dR(J)^*`. Prove that `log_{J̃} ∘ ι_BdR` factors through `(B_st^+ ⊗ H¹_HK(X)^*)^{N=0, φ=1}`, that this space equals `X^1_st(H¹_HK(X))` under the identification `H¹_dR(X)^* ≅ H¹_dR(X)` given by cup product into `H²_dR(X) = K`, and that `log_{J̃} ∘ ι_BdR = ι_st` (CDN-CURVES Théorème 7.12, Remarque 7.13).

**Checks.**

- For `x ∈ V_p(J)` the limit stabilizes and `ι_BdR(x)` is the Fontaine period of `x`; `log_{J̃}` lands in `Fil⁰`.
- `ι_BdR` does not depend on the choice of bounded lifts: two choices differ by a bounded sequence, killed by `p^n` in the limit.
- `log_{J̃} ∘ ι_BdR` is injective, by non-degeneracy of the period pairing (CDN-CURVES §7.2).

*Needs:* §§4.1, 4.8; AbelianSchemesAndArithmeticModuli §A4.2; PadicPeriodRings §4.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.25 (Check).

### Examples

For the Drinfeld half-plane over `K`, §4.2 gives `0 → O(Ω)/C → H¹_proét(Ω, ℚ_p(1)) → Sp_1(ℚ_p)^* → 0`, and §4.6 identifies the Weil–Deligne actions on `H¹_HK(Ω)(1)` and `H¹_proét(Ω, ℚ_ℓ(1))` as unramified with `N = 0`.

### Dependencies

Layers 0–3; AdicSpacesPartIII §R3.4; AdicSpacesPartIV §§F1.5–F1.9; EnhancedDerivedSheaves E2; LocallyAnalyticDistributions §§0.0, 0.2 and 0.CR.6.6; VectorBundlesAndIsocrystals VB3; PadicDifferentialEquationsAndRigidCohomology §§RD.4.38, RD.7.7; AbelianSchemesAndArithmeticModuli §A4.2; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.25; CohomologyComparisons §§4.11–4.12.

## Layer 5: Semistable Stein spaces in every dimension

In this layer `K` is a complete discretely valued field of characteristic `0` with perfect residue field `k` of characteristic `p`, `F = W(k)[1/p]`, `ϖ` a uniformizer, `C` the completion of `K̄` and `G_K = Gal(K̄/K)`. The embedding `ι_ϖ: B_st^+ → B_dR^+` sends `u` to `log([ϖ^♭]/ϖ)` (CDN-STEIN line 327).

### 5.1 Stein semistable weak formal schemes

Define a semistable weak formal scheme over `O_K` as a weak formal scheme Zariski-locally étale over `Spwf(O_K[X₁, …, X_n]^†/(X₁⋯X_r − ϖ))`, `1 ≤ r ≤ n`, with the log structure of its special fibre, and call it Stein semistable when its special fibre `Y` has proper smooth irreducible components and there are closed subschemes `Y_s` (finite unions of components) and opens `U_s` with `Y_s ⊂ U_s ⊂ Y_{s+1}`, `∪ Y_s = Y`, whose tubes `]U_s[` form a Stein covering of the dagger generic fibre `X_K` (CDN-STEIN §3.1.1, lines 682–691; the same with formal schemes). The generic fibre is a smooth dagger Stein space, equivalently a smooth rigid Stein space (AdicSpacesPartIV §F1.8).

- The class is stable under base change along finite unramified extensions and under passage to the formal completion; the covering `U_s` can be refined by any cofinal choice satisfying the three conditions.
- Every Stein semistable weak formal scheme is semistable in the sense of ClassicalAdicEtaleCohomology §4.6 after completion.

**Checks.**

- The standard model of the Drinfeld half-plane (HilbertModularVarietiesAndShimuraCurves §R18.5.3), with `Y_s` the components of the tree ball of radius `s`, is Stein semistable.
- Rigid affine space `𝔸^d_K` is the generic fibre of the Stein smooth model given by the dagger discs `|T| ≤ |ϖ|^{−m}` (LocallyAnalyticDistributions §0.CR.6.6, Check `affine_line`, in each coordinate).
- A proper semistable formal scheme is not Stein semistable unless its generic fibre is a finite set of points: its tubes cannot form a Stein exhaustion of a positive-dimensional proper space.

*Needs:* AdicSpacesPartIV §F1.7; AdicSpacesPartIV §F1.8; ClassicalAdicEtaleCohomology §4.6.

### 5.2 Overconvergent Hyodo–Kato cohomology

For a Stein semistable `X`, define `RΓ_HK(X₀) = Rlim_s RΓ_rig(U_s/O_F^0)`, the derived limit of the log rigid Hyodo–Kato complexes of the `U_s` over the log point `O_F^0 = (Spf W(k), 1 ↦ 0)` (CrystallineCohomology §CR.6.5; CDN-STEIN §3.1.2), with its Frobenius, monodromy and Fréchet topology, and the Hyodo–Kato map `ι_HK: RΓ_HK(X₀) ⊗̂_F K ≅ RΓ_dR(X_K)` obtained from the finite-piece comparisons of LocallyAnalyticDistributions §0.CR.6.6 (*Nonproper finite-piece Hyodo–Kato comparison*, which is stated in every dimension) by passage to the limit (GK05 Theorem 3.4 and Corollary 3.7; CDN-STEIN Proposition 3.12). Prove that `H^r_HK(X₀)` is a Fréchet space, independent of the covering, with continuous `φ` and `N` satisfying `Nφ = pφN`, that `ι_HK` depends on `ϖ` through `exp(log(u)N)` when `ϖ` is replaced by `ϖu`, and that the construction is functorial and `G_K`-equivariant for the semilinear action through `Gal(k̄/k)` after base change to `F̆`.

**Checks.**

- `𝔸^d_K`: `H^r_HK = 0` for `r ≥ 1` and `H⁰_HK = F` (CDN-STEIN Example 1.9).
- In dimension one, `H¹_HK(X₀)` is the Stein-curve Hyodo–Kato cohomology of LocallyAnalyticDistributions §0.CR.6.6.
- Changing `ϖ` to `ϖu` with `N ≠ 0` changes `ι_HK` on the two-dimensional Tate-curve module `φe₀ = e₀`, `φe₁ = pe₁`, `Ne₁ = e₀` by `e₁ ↦ e₁ + log(u)e₀`; with `N = 0` the map is independent of `ϖ`.

*Needs:* §5.1; CrystallineCohomology §CR.6.5; LocallyAnalyticDistributions §0.CR.6.6; LocallyAnalyticDistributions §0.2; EnhancedDerivedSheaves E2.

### 5.3 Crystalline syntomic cohomology and the Fontaine–Messing period maps

Define the crystalline geometric syntomic complex `RΓ_syn(X_{O_C}, ℤ_p(r)) = [RΓ_cr(X_{O_C})^{φ=p^r} → RΓ_cr(X_{O_C})/F^r]` (mapping fibre; absolute crystalline cohomology over `W(k)`) on quasi-compact pieces and glue; define `RΓ_syn(X_{O_C}, ℚ_p(r))` by rationalizing on quasi-compact pieces and then gluing (CDN-STEIN lines 196–199 in the introduction, with §3.3.1, line 1360, for the definition). Prove that the Fontaine–Messing period maps `α_FM: RΓ_syn(X_{O_C}, ℚ_p(r)) → RΓ_proét(X_C, ℚ_p(r))` and `α_FM: RΓ_syn(X_{O_C}, ℤ_p(r))_{ℚ_p} → RΓ_ét(X_C, ℚ_p(r))` are strict quasi-isomorphisms after truncation `τ≤r` (CDN-STEIN Proposition 1.11 = Corollary 3.46 and Proposition 6.1). Route: on quasi-compact semistable pieces the integral period map into `Ẑ_p(r)′ = (p^a a!)^{−1}Ẑ_p(r)`, `r = (p−1)a + b`, is a `p^N`-quasi-isomorphism in degrees `≤ r` for a universal `N = N(r)` (CohomologyComparisonsPartII §§4.1, 4.4–4.5 with `gap:formal-syntomic-period-comparison`, on the formal nearby cycles of ClassicalAdicEtaleCohomology §4.6); gluing over the Stein covering uses the Milnor sequence and strictness of zigzags of Banach complexes; on quasi-compact pieces étale and pro-étale cohomology agree (§1.1).

**Checks.**

- `r = 0`: `RΓ_syn(ℤ_p(0))` is `[RΓ_cr^{φ=1} → RΓ_cr/F⁰ = 0]`, and the comparison in degree `0` is `H⁰ = ℤ_p^{π₀}` on both sides.
- `p = 2`, `r = 2`: the lattice is `(1/8)ℤ_2(2)`, not `(1/4)ℤ_2(2)` (CohomologyComparisonsPartII §4.1, its factorial Check: `L_EN(r) = (p^a a!)^{−1}ℤ_p(r)` with `a = ⌊r/(p−1)⌋ = 2`, `p^a a! = 8`); the rational statement is insensitive to this.
- No statement is made above degree `r`: for the open disc and `r = 0`, `H¹_proét(ℚ_p) ≠ 0` while `τ≤0` sees only `H⁰`.

*Needs:* §1.1; §5.1; CohomologyComparisonsPartII §4.1; CohomologyComparisonsPartII §4.4; CohomologyComparisonsPartII §4.5; `gap:formal-syntomic-period-comparison`; ClassicalAdicEtaleCohomology §4.6; EnhancedDerivedSheaves E2; LocallyAnalyticDistributions §0.2.

### 5.4 Bloch–Kato syntomic cohomology

Define `RΓ^BK_syn(X_C, ℚ_p(r))` as the mapping fibre of `ι_HK ⊗ ι_ϖ: [RΓ_HK(X₀) ⊗̂_F B_st^+]^{N=0, φ=p^r} → (RΓ_dR(X_K) ⊗̂_K B_dR^+)/F^r` (CDN-STEIN §1.3.1, §3.2), in the derived category of locally convex `ℚ_p`-spaces of LocallyAnalyticDistributions §0.0. Prove that there are functorial quasi-isomorphisms `RΓ^BK_syn(X_{O_C}, ℚ_p(r)) ≅ RΓ_syn(X_{O_C}, ℚ_p(r))` (CDN-STEIN Proposition 3.48) and, for `X` Stein, `RΓ_syn(X_C, ℚ_p(r)) ≅ RΓ^BK_syn(X̂_{O_C}, ℚ_p(r))` (CDN-STEIN Theorem 4.1), compatible with `G_K` and with `θ` to the de Rham complex, and that the cohomology of `[RΓ_HK(X₀) ⊗̂_F B_st^+]^{N=0, φ=p^r}` is classical, equal to `X^r_st(H^r_HK(X₀))` in degree `r` (CDN-STEIN Lemmas 3.26 and 3.28).

**Checks.**

- For `X` with `H^r_HK = 0` for `r ≥ 1` (affine space), the fibre in degree `r` reduces to `(Ω^{≤r−1} ⊗̂ C)` terms and gives `Ω^{r−1}/ker d`.
- `r = 0`: `[RΓ_HK ⊗̂ B_st^+]^{N=0,φ=1}/F⁰` has `H⁰ = ℚ_p^{π₀}`.
- Replacing `ι_ϖ` by `ι_{ϖu}` and `ι_HK` simultaneously leaves the fibre unchanged; changing only one of them does not.

*Needs:* §1.3; §5.2; §5.3; LocallyAnalyticDistributions §0.0; PadicPeriodRings §4.1.

### 5.5 The fundamental diagram of a semistable Stein space

Prove that for a Stein semistable weak formal scheme `X` over `O_K` and `r ≥ 0` there is a natural `G_K`-equivariant map of strictly exact sequences of Fréchet spaces from `0 → Ω^{r−1}(X_C)/ker d → H^r_proét(X_C, ℚ_p(r)) → X^r_st(H^r_HK(X₀)) → 0` to `0 → Ω^{r−1}(X_C)/ker d --d--> Ω^r(X_C)^{d=0} → H^r_dR(X_C) → 0`, the left vertical map being the identity, the middle `β̃ = p^{−r}β ι_rig^{−1} ι_BK^{−1} α_FM^{−1}` and the right `ι_HK ⊗ θ`; the vertical maps have closed images and `ker β̃ ≅ ker(ι_HK ⊗ θ) ≅ X^{r−1}_st(H^r_HK(X₀))` (CDN-STEIN Theorem 4.12 = Theorem 1.8). Here `Ω^{−1} = 0`. The factor `p^{−r}` makes `β̃` compatible with symbols.

**Checks.**

- Affine space `𝔸^d_K`, `r ≥ 1`: `H^r_proét(𝔸^d_C, ℚ_p(r)) ≅ Ω^{r−1}(𝔸^d_C)/ker d` (CDN-STEIN Example 1.9).
- Dimension one: the diagram for `r = 1` is that of §4.2 for the generic fibre, with `Ω⁰/ker d = O(X_C)/C`.
- For `X` proper semistable, the analogous sequence is `0 → H^r_proét → X^r_st(H^r_HK) → (H^r_dR ⊗ B_dR^+)/F^r` (CDN-STEIN Remark 4.13); the Stein statement has the huge term `Ω^{r−1}/ker d` on the left instead of a term on the right, so it is not a specialization of the proper one.
- Over `C`, the diagram agrees with CstConjectureForDaggerVarieties CS.1 (`stein-affinoid-diagram`) on its range, whose middle map has the same normalization `p^{−r}`.

*Needs:* §§1.1–1.3, 5.1–5.4; CohomologyComparisonsPartII §§4.1–4.5; AdicSpacesPartIV §§F1.8–F1.9; AdicSpacesPartIII §R3.4; LocallyAnalyticDistributions §§0.0, 0.2.

### Examples

For `X` the standard model of `Ω^d`, `H^r_HK(X₀) = Sp_r(F)^*` with linearized Frobenius `q^r` (§6.4), so `X^r_st = Sp_r(ℚ_p)^*` and `X^{r−1}_st = 0` by §1.3, and §5.5 becomes §6.5.

### Dependencies

Layer 1; CrystallineCohomology §CR.6.5; LocallyAnalyticDistributions §§0.0, 0.2, 0.CR.6.6; CohomologyComparisonsPartII §§4.1–4.5 with `gap:formal-syntomic-period-comparison`; ClassicalAdicEtaleCohomology §§1.3, 4.6; AdicSpacesPartIV §§F1.5–F1.9; AdicSpacesPartIII §R3.4; EnhancedDerivedSheaves E2; PadicPeriodRings §§4.1, 4.3.

## Layer 6: Drinfeld half-spaces

In this layer `K` is a finite extension of `ℚ_p` with residue field of cardinality `q`, `d ≥ 1`, `G = GL_{d+1}(K)`, `H^d_K = Ω^d` the complement in `ℙ^d_K` of the `K`-rational hyperplanes (the period domain `Ω_K^{d}` of EndoscopicTransferAndUnitaryTraceComparison §12.4 for `n = d + 1`), `H^d_C` its base change, and `𝓗` the profinite set of `K`-rational hyperplanes.

### 6.1 The standard semistable model

Construct the standard `G`-equivariant strictly semistable weak formal model `X` of `H^d_K` over `O_K` by iterated blowing up of `ℙ^d_{O_K}` along the strict transforms of the `k`-rational linear subvarieties of increasing dimension, removing the centres of the next blow-ups and weakly completing (GK05 §§6.1–6.2; CDN-STEIN §5.1). Prove: `X` is a Stein semistable weak formal scheme (§5.1); its irreducible components correspond to the vertices of the Bruhat–Tits building `BT` of `PGL_{d+1}(K)` and the non-empty intersections of `i + 1` of them to the `i`-simplices; each such intersection is a product of iterated blow-ups of projective spaces in their rational linear subspaces; the truncations `Y_s` along the balls `BT^s` of radius `s` around `[O_K^{d+1}]` give the Stein covering; and for `d = 1` the model is that of HilbertModularVarietiesAndShimuraCurves §R18.5.3.

**Checks.**

- `d = 1`: each component is `ℙ¹_k` meeting `q + 1` others, one for each rational point.
- `d = 2`: a component is `ℙ²_k` blown up in its `q² + q + 1` rational points; the rational lines are already divisors and are not blown up (the last centres have dimension `d − 2 = 0`, GK05 §6.2). Blowing up the lines as well would be the identity, but blowing up points of `ℙ³_k` only would miss the lines for `d = 3`.
- A point of `ℙ^d(C)` on a `K`-rational hyperplane is not in `H^d_C`; removing finitely many hyperplanes is not enough.

*Needs:* §5.1; ReductiveGroupsPartII RG2.2; EndoscopicTransferAndUnitaryTraceComparison §12.4; HilbertModularVarietiesAndShimuraCurves §R18.5.3; AdicSpacesPartIV §F1.5.

### 6.2 Schneider–Stuhler and Iovita–Spiess

Prove that for `r ≥ 0` there are natural isomorphisms `H^r_ét(H^d_C, ℚ_ℓ(r)) ≅ Sp_r(ℤ_ℓ)^* ⊗ ℚ_ℓ` and `H^r_proét(H^d_C, ℚ_ℓ(r)) ≅ Sp_r(ℚ_ℓ)^*` of `G × G_K`-modules for `ℓ ≠ p`, and `H^r_dR(H^d_K) ≅ Sp_r(K)^*` of `G`-modules (CDN-STEIN Theorem 5.8; SS91 §§3–4). Route: the Schneider–Stuhler axioms (homotopy invariance for the open disc and the Stein covering `U_n = ∩_{H∈𝓗_n} U_n(H)`), the spectral sequence of cohomology with supports in the hyperplane arrangement, and Proposition 5.6 of CDN-STEIN identifying the cohomology of the Tits building with `Sp_r(ℤ)`. Prove that the regulators `r_dR: D(𝓗^{r+1}, K) → H^r_dR(H^d_K)`, `μ ↦ ∫ [H₀, …, H_r] μ`, with `[H₀, …, H_r] = dlog(ℓ_{H₁}/ℓ_{H₀}) ∧ ⋯ ∧ dlog(ℓ_{H_r}/ℓ_{H₀})`, and their étale and pro-étale analogues, are well defined, continuous and strictly surjective with kernel the degenerate distributions, compatibly with the isomorphisms above (CDN-STEIN Theorem 5.10, after Iovita–Spiess); and that the `G`-bounded vectors of `H^r_dR(H^d_K)` are `Sp^cont_r(K)^*` (CDN-STEIN Corollary 5.9).

**Checks.**

- `d = 1`, `r = 1`: `H¹_dR(Ω) ≅ (LC(ℙ¹(K), K)/K)^*`, and `dlog((z − a)/(z − b))` corresponds to `δ_a − δ_b`, a measure of total mass zero.
- `r = 0`: all three groups are the constants; `r > d`: all vanish.
- `ℓ = p` is excluded from the first isomorphism: the homotopy property fails for p-adic coefficients (CDN-STEIN lines 87–89), and §6.5 shows the pro-étale group is much larger.

*Needs:* §0.3; §0.4; §0.5; §1.1; §6.1; ClassicalAdicEtaleCohomology §1.4.

### 6.3 Frobenius on the Hyodo–Kato cohomology of the standard model

Prove that for every intersection `M` of irreducible components of the special fibre `Y` of `X` and every `s ≥ 0`, the linearized Frobenius `φ^f` acts on `H^s_rig(M/S₀)` as multiplication by `q^s` (GK05 Theorem 6.3, proved under GK05's standing hypothesis `d ≥ 2`, GK05 line 1209; for `d = 1` the intersections `M` are the components `ℙ¹_k` and the double points, and the statement is checked directly: `φ^f = 1` on `H⁰`, `φ^f = q` on `H¹`, spanned by the residue classes at the `q + 1` rational points once the log structure of the double points is taken into account (third Check), and `H²_rig(M/S₀) = H²_rig(M♥/S₀) = 0` since `M♥`, the component minus its `q + 1` double points, is affine (GK05 line 1257)); that the de Rham cohomologies of the tubes `]Y_r[` of the closed strata resolve `H^s_dR(H^d_K)` (GK05 Proposition 6.5, after de Shalit, DS01 Theorems 5.7 and 7.7); and that consequently `φ^f = q^s` on `H^s_HK(Y) = H^s_rig(Y/S₀)` and `H^s_dR(H^d_K) ≅ H^s_HK(Y) ⊗_F K` (GK05 Corollary 6.6 for `d ≥ 2`; CDN-STEIN §5.5, line 2157, states the Frobenius for every `d ≥ 1`; for `d = 1` it is the computation `H¹_HK(Y) = H¹_c(Γ, F)^*(−1)` of §4.3, on which the linearized Frobenius is `p^f = q`). Deduce `N = 0` on `H^s_HK(Y)`: from `Nφ = pφN`, `Nφ^f = qφ^f N`, so `q^s N = q^{s+1}N` and `N = 0`.

**Checks.**

- `s = 0`: `φ^f = 1` on `H⁰_rig = F^{π₀}`.
- For `𝔸^r_k` the claim is `H^m_rig = 0` for `m > 0` (PadicDifferentialEquationsAndRigidCohomology §RD.4.34), the first step of the induction on the number of deleted hyperplanes through the Gysin sequence (§RD.4.29).
- On `H¹` of `ℙ¹_k` minus its rational points, `φ^f = q`: the residue classes `dlog(t − a)` have slope one.

*Needs:* §5.2; §6.1; §4.3; PadicDifferentialEquationsAndRigidCohomology §RD.4.29; PadicDifferentialEquationsAndRigidCohomology §RD.4.34.

### 6.4 Hyodo–Kato cohomology as a dual Steinberg representation

Prove that there are natural isomorphisms of Fréchet spaces `H^r_HK(Y) ≅ Sp_r(F)^*` and `H^r_HK(Y)^{φ=p^r} ≅ Sp_r(ℚ_p)^*`, compatible with `H^r_dR(X_K) ≅ Sp_r(K)^*` of §6.2 and with the natural maps `Sp_r(ℚ_p)^* → Sp_r(F)^* → Sp_r(K)^*`, so that `H^r_HK(Y) = F ⊗_{ℚ_p} H^r_HK(Y)^{φ=p^r}` (CDN-STEIN Lemma 5.11). Route: define the Hyodo–Kato regulator `r_HK` on `D(𝓗^{r+1}, F)` from overconvergent Hyodo–Kato Chern classes of the rational hyperplane functions (CDN-STEIN Appendix A, Lemma A.7), compare with `r_dR` through `ι_HK`, and use topological irreducibility of `Sp_r(K)^*` (§0.4) and finite-dimensionality of the `H^r_HK(Y_s)`.

**Checks.**

- `d = 1`, `r = 1`: `H¹_HK(Y) = H¹_c(Γ, F)^*(−1)` (§4.3), on which `φ = p` on the residue classes; its `φ = p` part is `Sp_1(ℚ_p)^*`.
- `r = 0`: `H⁰_HK = F` and `H⁰_HK^{φ=1} = ℚ_p`.
- With the natural Frobenius `φ = p^r` on the image of `D(𝓗^{r+1}, ℚ_p)`, the linearized Frobenius is `p^{rf} = q^r`, as in §6.3.

*Needs:* §0.4; §0.5; §6.2; §6.3; LocallyAnalyticDistributions §0.2.

### 6.5 p-adic pro-étale cohomology

Prove that for `r ≥ 0` there is a natural map of strictly exact sequences of `G × G_K`-Fréchet spaces from `0 → Ω^{r−1}(H^d_C)/ker d → H^r_proét(H^d_C, ℚ_p(r)) → Sp_r(ℚ_p)^* → 0` to `0 → Ω^{r−1}(H^d_C)/ker d → Ω^r(H^d_C)^{d=0} → Sp_r(K)^* ⊗̂_K C → 0`, whose vertical maps are closed immersions, and that all terms vanish for `r > d` (CDN-STEIN Theorem 5.13 = Theorem 1.3(2), Remark 1.6(i)). Route: §5.5 with §§6.3–6.4 and §1.3, which give `X^r_st(H^r_HK(Y)) = Sp_r(ℚ_p)^*` and `X^{r−1}_st(H^r_HK(Y)) = 0`.

**Checks.**

- `d = 1`, `r = 1`: `0 → O(Ω_C)/C → H¹_proét(Ω_C, ℚ_p(1)) → Sp_1(ℚ_p)^* → 0`, agreeing with §4.2 and §4.3.
- `r = 0`: `H⁰_proét = ℚ_p`.
- `r = d + 1`: `Sp_{d+1} = 0`, and `Ω^d/ker d = 0` because `d: Ω^d → Ω^{d+1} = 0` makes every top form closed; both rows vanish.

*Needs:* §1.3; §5.5; §6.3; §6.4.

### 6.6 Integral de Rham cohomology of the standard model

Prove that `H^i(X, Ω^j_X) = 0` and `H^i(X, Ω^j_X ⊗ k) = 0` for `i > 0`, that `H⁰(X, Ω^j_X) ⊗_{O_K} k ≅ H⁰(X, Ω^j_X ⊗ k)` and `d = 0` on `H⁰(X, Ω^j_X)`, so that `H^j_dR(X) ≅ H⁰(X, Ω^j_X)` is torsion-free (CDN-STEIN Proposition 6.5 and Corollary 6.6, after GK05-RT Theorem 4.5, line 1770, applied to the strongly dominant coefficient systems `Ω^j_X` as in its lines 93–99, and GK07 Proposition 4.5); and that `H⁰(X, Ω^r) ≅ H^r_dR(X) ≅ Sp^cont_r(O_K)^*` and `H⁰(Y, Ω^r) ≅ Sp_r(k)^*`, compatibly with §6.2 (CDN-STEIN Theorem 6.28(1)(c), (2)(a)–(c)), through the integral measure regulator and the uniqueness of lattices of §0.4.

**Checks.**

- `d = 1`, `j = 1`: `H⁰(X, Ω¹_X)` is generated by the logarithmic forms `dlog((z − a)/(z − b))`, `a, b ∈ ℙ¹(K)`, and is `Sp^cont_1(O_K)^*`, the bounded measures of mass zero.
- `d = 1`, `j = 0`: `H⁰(X, O_X) = O_K`, since bounded functions on a connected Stein curve with a semistable model are constant (CDN20 Remarque A.2).
- `H¹(X, O_X) = 0`, whereas a proper semistable curve of positive genus has `H¹(O) ≠ 0`.

*Needs:* §0.4; §6.1; §6.2.

### 6.7 Frobenius-fixed points of `AΩ`

For a semistable formal scheme `𝔛` over `O_C` with smooth generic fibre `X` (semistable because that is the generality in which AInfCohomology §AI.6.2 supplies `AΩ_𝔛`; CDN-DUKE Theorem 2.9, line 370, holds for every flat formal model), `ν: X_proét → 𝔛_ét` and `AΩ_𝔛 = Lη_μ Rν_* A_inf,X` (AInfCohomology §AI.6.2), let `AΩ_𝔛{i} = AΩ_𝔛 ⊗ A_inf{i}` with `A_inf{1} = μ^{−1}A_inf(1)`. Prove that for `i ≥ 0` there is a natural quasi-isomorphism `γ: τ≤i Rν_* Ẑ_p(i) ≅ τ≤i [τ≤i AΩ_𝔛{i} --(1 − φ^{−1})--> τ≤i AΩ_𝔛{i}]`, `G_K`-equivariant when `𝔛` comes from `O_K`, giving the exact sequences `0 → H^{i−1}(𝔛, AΩ{i})/(1 − φ^{−1}) → H^i_ét(X, ℤ_p(i)) → H^i(𝔛, AΩ{i})^{φ^{−1}=1} → 0` (CDN-DUKE Theorem 2.9, Corollary 2.13, (1.4) and (5.2); Lemmas 2.11–2.12). Route: first prove the exact sequence of sheaves `0 → Ẑ_p --μ^i--> A_inf,X --(1 − ξ^iφ^{−1})--> A_inf,X → 0` on `X_proét` for `i ≥ 0` (CDN-DUKE Lemma 2.11(b), lines 380–394, in the proof of Theorem 2.9). For `i = 0` it is the Artin–Schreier sequence `0 → Ẑ_p → A_inf,X --(1 − φ^{−1})--> A_inf,X → 0`, obtained on affinoid perfectoids `Spa(R, R^+)` from PrismaticCohomologyPartIII §6.25 (applied to `S = R^+`, with §6.3 for `Δ_{S/A} = A_inf(S)`) modulo `p^n` and passed to the limit (`1 − φ^{−1} = −φ^{−1}(1 − φ)` with `φ` bijective). For `i ≥ 1`, `1 − ξ^iφ^{−1}` is an automorphism of the sheaf `A_inf,X/μ^j` for `i ≥ j` (CDN-DUKE Lemma 2.11(a)); surjectivity follows modulo `μ` and by `μ`-adic completeness, and multiplication by `μ^i` identifies the kernel with that of `1 − φ^{−1}`, which is `Ẑ_p`. The carrier `A_inf,X` and its Frobenius are AInfCohomology §AI.3.1. Then use the bijectivity statements of CDN-DUKE Lemma 2.12 on the kernel and cokernel of `H^j(AΩ) → H^j(Rν_*A_inf)`.

**Checks.**

- `i = 0`: `γ` is the Artin–Schreier identification `Ẑ_p = A_inf^{φ=1}` in degree `0`.
- `𝔛 = Spf O_C`, `i = 1`: `H¹_ét(Spa C, ℤ_p(1)) = 0`, so the sequence forces `1 − φ^{−1}` to be surjective on `H⁰(AΩ{1}) = A_inf{1}`, which is CDN-DUKE Lemma 2.11(b).
- Without `τ≤i` the statement fails: for the open disc and `i = 0`, `H¹_ét(D, ℤ_p) ≠ 0` while `τ≤0` sees only `H⁰`.

*Needs:* AInfCohomology §AI.3.1; AInfCohomology §AI.6.2; PrismaticCohomologyPartIII §6.25; PrismaticCohomologyPartIII §6.3; ClassicalAdicEtaleCohomology §1.3.

### 6.8 `A_inf`-cohomology of the half-space

Let `𝔛 = X ⊗_{O_K} O_C`. Prove that for `i ≥ 0` there is a topological `φ^{−1}`-equivariant isomorphism of `G × G_K`-modules `H^i_ét(𝔛, AΩ_𝔛{i}) ≅ A_inf ⊗̂_{ℤ_p} Sp_i(ℤ_p)^*` (CDN-DUKE Theorem 1.3). Route: an étale regulator `r_ét: Sp_i(ℤ_p)^* → H^i_ét(X_C, ℤ_p(i))` integrating étale symbols over measures on `𝓗^{i+1}` (§0.5), its `A_inf`-linear extension `r_inf`, derived Nakayama for derived `ξ̃`-complete modules, and identification of `r_inf` modulo `ξ̃` with the Hodge–Tate regulator `O_C ⊗̂ Sp_i(ℤ_p)^* → H⁰(𝔛, Ω^i)`, an isomorphism by §6.6, through the Hodge–Tate specialization of AInfCohomology §AI.6.3 and the compatibility of étale and Hodge–Tate Chern classes (CDN-DUKE §§3–4).

**Checks.**

- `i = 0`: `H⁰(𝔛, AΩ) = A_inf`.
- `d = 1`, `i = 1`: modulo `ξ̃` the target is `H⁰(𝔛, Ω¹)`, the twist `{−1}` of the Hodge–Tate specialization cancelling against `{1}`; it is free over `O_C` on the logarithmic forms (§6.6). Keeping the twist `{−1}` would contradict the untwisted target of the Hodge–Tate regulator in the route.
- `H^i(𝔛, AΩ{i})` is `ξ̃`-torsion-free; an `A_inf`-module with `ξ̃`-torsion would make the derived and naive reductions differ.

*Needs:* §0.5; §6.6; §6.7; AInfCohomology §AI.6.3.

### 6.9 Integral and rational p-adic étale cohomology

Prove that for `r ≥ 0` there are compatible topological isomorphisms of `G × G_K`-modules `H^r_ét(H^d_C, ℤ_p(r)) ≅ Sp_r(ℤ_p)^*` and `H^r_ét(H^d_C, 𝔽_p(r)) ≅ Sp_r(𝔽_p)^*` (CDN-DUKE Theorem 1.1), hence `H^r_ét(H^d_C, ℚ_p(r)) ≅ Sp^cont_r(ℚ_p)^* ≅ Sp_r(ℤ_p)^* ⊗ ℚ_p`, weak duals of Banach spaces (CDN-STEIN Theorem 1.3(1) = Theorem 6.45(1)); and that the natural map `H^r_ét(H^d_C, ℚ_p(r)) → H^r_proét(H^d_C, ℚ_p(r))` is injective with image the `G`-bounded vectors (CDN-STEIN Theorem 1.3(3) = Theorem 6.45(4)). Route: §§6.7–6.8 give `H^r_ét(ℤ_p(r)) ≅ (A_inf ⊗̂ Sp_r(ℤ_p)^*)^{φ^{−1}=1} = Sp_r(ℤ_p)^*` because `1 − φ^{−1}` is surjective on `H^{r−1}(𝔛, AΩ{r})` (CDN-DUKE §5, (5.2) and the computation following it); the bounded-vector statement uses §6.5, §0.4(c) and §6.2. An alternative route for the rational statement is CDN-STEIN §6 (pro-ordinarity of the special fibre, CDN-STEIN Corollary 6.18 and Lemma 6.20).

**Checks.**

- `d = 1`, `r = 1`: `H¹_ét(Ω_C, ℚ_p(1)) ≅ (Sp^cont_1(ℚ_p))^*`, Drinfeld's computation (CDN20 Proposition 0.1).
- `r = 0`: `ℤ_p`, `𝔽_p`, `ℚ_p`.
- The `𝔽_p` statement is compatible with `Sp_r(ℤ_p)/p ≅ Sp_r(𝔽_p)` of §0.4 and with irreducibility of `Sp_r(𝔽_p)`; the open disc shows that `H¹_ét → H¹_proét` need not be injective in general (§1.1), so injectivity here is a theorem about `H^d_C`.

*Needs:* §0.4; §6.2; §6.5; §6.7; §6.8.

### 6.10 Dat's compactly supported ℓ-adic complex

Let `ℓ ≠ p` and `Λ` a local `ℤ_ℓ`-algebra of finite type (a quotient or localization of the integers of a finite extension of `ℚ_ℓ`). Construct `RΓ_c(H^d_{Ĉ}, Λ) ∈ D^b(Λ[PGL_{d+1}(K)])` with an action of `W_K`, whose cohomology is `H^i_c(H^d_{Ĉ}, Λ)`, compatible with change of coefficients and, for a discrete torsion-free `Γ ⊂ PGL_{d+1}(K)`, with `Λ ⊗^L_{Λ[Γ]} RΓ_c(H^d_{Ĉ}, Λ) ≅ RΓ_c(H^d_{Ĉ}/Γ, Λ)` (DAT06 §4.1.3, (4.1.4)). Define `π^Λ_J = coker(⊕_{J′⊋J} Ind_{P_{J′}}^G(1) → Ind_{P_J}^G(1))` (DAT06 §2). Prove: (a) `H^{d+i}_c(H^d_{Ĉ}, Λ) ≅ π^Λ_{{1,…,i}}(−i)` for `0 ≤ i ≤ d`, `PGL_{d+1}(K) × W_K`-equivariantly, with `π^Λ_{∅}` for `i = 0` (DAT06 Théorème 3.1.1, with Dat's `d − 1` equal to `d` here); (b) inertia acts through `exp(N ⊗ t_ℓ)` for a nilpotent `N` of order `≤ d + 1` when `(d+1)!` is invertible in `Λ` (DAT06 Lemme 4.2.1); (c) when `Λ` is strongly banal for `GL_{d+1}(K)`, i.e. `p N_G N_W` is invertible in `Λ` (DAT06 Définition 2.1.6), there is an isomorphism `RΓ_c(H^d_{Ĉ}, Λ) ≅ ⊕_{i=0}^{d} π^Λ_{{1,…,i}}(−i)[−d − i]` in `D^b(Λ[PGL_{d+1}(K)])` inducing (a) (DAT06 Proposition 4.2.2).

**Checks.**

- `π^Λ_J ≅ Sp_J(Λ)` through `f ↦ (g ↦ f(g^{−1}))` from functions on `P_J∖G` to functions on `G/P_J`; with Poincaré duality, (a) for `i = d − r` matches §6.2 rationally.
- `d = 1`: `H¹_c = St_Λ = Sp_1(Λ)` and `H²_c = Λ(−1)`, the top cohomology of a connected curve.
- `d = 1`: the obstruction to splitting lies in `Ext²_{Λ[PGL₂(K)]}(Λ(−1), St_Λ)`; it vanishes in the strongly banal case, and THO24 line 145 records that splitting fails in general outside the banal case, so the hypothesis in (c) is kept.

*Needs:* §0.3; EndoscopicTransferAndUnitaryTraceComparison §12.12 (compact-support conventions for analytic spaces); ClassicalAdicEtaleCohomology Layer 8 and §9.1; SmoothRepresentationsOfLocalGroups SR.0d (derived smooth category) and SR.2 (induction); ReductiveGroupsPartII RG2.2.

### Examples

For `d = 2`, `r = 1`: `H¹_proét(H²_C, ℚ_p(1))` is an extension of `Sp_1(ℚ_p)^* = Sp_{{1}}(ℚ_p)^*` by `O(H²_C)/C`, and `H¹_ét(H²_C, ℤ_p(1)) = Sp_{{1}}(ℤ_p)^*`; `H³_c(H²_{Ĉ}, Λ) ≅ π^Λ_{{1}}(−1)`.

### Dependencies

Layers 0, 1 and 5, and §4.3 (the case `d = 1` of §6.3); EndoscopicTransferAndUnitaryTraceComparison §§12.4, 12.12; HilbertModularVarietiesAndShimuraCurves §R18.5.3; ReductiveGroupsPartII RG2.2; CrystallineCohomology §CR.6.5; PadicDifferentialEquationsAndRigidCohomology §§RD.4.29, RD.4.34; AInfCohomology §§AI.3.1, AI.6.2–AI.6.3; PrismaticCohomologyPartIII §§6.3, 6.25; ClassicalAdicEtaleCohomology §§1.3–1.4, Layer 8 and §9.1; SmoothRepresentationsOfLocalGroups SR.0d, SR.2.

## Layer 7: The Drinfeld tower in dimension one

In this layer `F` is a finite extension of `ℚ_p` with uniformizer `ϖ`, residue cardinality `q`, `G = GL₂(F)`, `Ǧ = D^×`, `G′ = G/ϖ^ℤ`, `M_n` (`n ≥ 0`) the Drinfeld levels of EndoscopicTransferAndUnitaryTraceComparison §12.4 over `F̆`, `M_n^ϖ` their quotients by `ϖ^ℤ` (§12.14), descended to `F` with their `G′`-action (§12.19), `M_∞` the projective system of the `M_n`, and `H^•(M_∞) = colim_n H^•(M_n)`. `L` is a finite extension of `ℚ_p` with integers `O_L` and residue field `k_L`. For a `ℚ_p[Ǧ]`-module `Z` and an irreducible `L`-representation `ρ` of `Ǧ` write `Z[ρ] = Hom_{L[Ǧ]}(ρ, L ⊗_{ℚ_p} Z)`; for a rank-two `L-(φ, N, G_F)`-module `M` write `Z[M] = Z[JL(M)]` with `JL(M)`, `LL(M)` and `WD(M)` as in PadicLocalLanglandsForGL2Qp §6.9, GL2AutomorphicRepresentationsAndTransfer R16.3 and PadicHodgeTheory §5.3, `M̆ = ℚ̆_p ⊗_{ℚ_p^nr} M` and `M_dR = (ℚ̄_p ⊗_{ℚ_p^nr} M)^{G_F}` (CDN20 §0.3). `M` is supercuspidal when `WD(M)` is irreducible and `φ` has slope `1/2` (CDN23 line 328): irreducibility alone forces `N = 0` and a single slope of `φ` (CDN20 lines 182–184), and the slope `1/2` is the hypothesis of every statement of CDN20 §2.1 (lines 644, 654, 702), under which the central character of `JL(M)` is unitary (CDN20 footnote 10, line 664). With `Ǧ_0 = O_D^×` and `Ǧ_n = 1 + ϖ_D^n O_D` for `n ≥ 1`, `M` has level at most `n` when `JL(M)` is trivial on `Ǧ_n` (CDN23 lines 181–182 and 330); since `Ǧ_n` acts trivially on `M_n`, only modules of level at most `n` contribute to the cohomology of `M_n`.

### 7.1 Connected components of the Lubin–Tate and Drinfeld towers

Prove, for the Lubin–Tate tower of `GL_n(F)`, `n ≥ 1`, with full level `m ≥ 1` (EndoscopicTransferAndUnitaryTraceComparison §12.3), that the height-zero part `M_m` over `F̆` maps to `Sp(F̆_m)`, `F̆_m` the Lubin–Tate extension of level `m`, with geometrically connected fibres, so that `π₀(M_m ×_{F̆} Sp(C))` is identified with `(O_F/ϖ^m)^×`, and that this bijection is `GL_n(O_F) × O_D^× × G_{F̆}`-equivariant when `(g, b, τ)` acts by `det(g) Nrd(b)^{−1} χ_LT(τ)^{−1}` modulo `1 + ϖ^m O_F` (STR08 Theorems 4.3 and 4.4). Deduce that `π₀` of the infinite-level Lubin–Tate and Drinfeld towers over `C` are principal homogeneous spaces under `F^×` on which `H = G, Ǧ, W_F` act through `ν_H = det`, `Nrd`, and the reciprocity map composed with `W_F → W_F^{ab}`, in the action conventions of EndoscopicTransferAndUnitaryTraceComparison §12.2 (CDN20 §0.1, lines 101–107), using infinite-level duality (§12.11) for the Drinfeld tower. Consequently `Ǧ` acts on `π₀(M_{n,C})` through `Nrd` for every `n`, and `H⁰(M_{n,C}, −)[ρ] = 0` for every irreducible `ρ` of dimension at least two.

**Checks.**

- `m = 1`, `n` arbitrary: `(q − 1)` geometric components at height zero, and a scalar `b ∈ O_F^× ⊂ O_D^×` acts by `b^{−n}`; with `Nrd(b) = b^n` in place of `Nrd(b)^{−1}` the action of the centre on `π₀` would be inverted.
- `n = 1`: the tower is the Lubin–Tate tower of height one, `D = F`, and `π₀` is the whole generic fibre `Sp(F̆_m)`.
- For `ρ` supercuspidal-type (`JL(M)` with `M` supercuspidal) `dim ρ ≥ 2`, while `JL(St ⊗ χ) = χ ∘ Nrd` is one-dimensional and can occur in `H⁰`.

*Needs:* EndoscopicTransferAndUnitaryTraceComparison §12.2; EndoscopicTransferAndUnitaryTraceComparison §12.3; EndoscopicTransferAndUnitaryTraceComparison §12.4; EndoscopicTransferAndUnitaryTraceComparison §12.11.

### 7.2 Equivariant semistable models of the rank-two Drinfeld levels

Prove that for `n ≥ 0`, `M_n^ϖ` has a `G × Ǧ × G_F`-equivariant semistable formal model over the integers of a finite extension of `F`, whose triangulation is the node set of the analytic skeleton, that the irreducible components of its special fibre form finitely many `G`-orbits, and that each component is fixed by an open subgroup of `G` (CDN20 Proposition A.1; CDN23 Proposition 2.7). Route: for a cocompact `Γ ⊂ G/ϖ^ℤ` acting freely on the Bruhat–Tits tree, `X_n = Γ∖M_n^ϖ` is a proper smooth curve, algebraic by proper GAGA (AdicSpacesPartIII §R3.7); over a finite extension `E` it has a stable model (StableReduction Layer 7), from which the minimal semistable model is obtained by blowing up; its fibre product over the minimal semistable model of `Γ∖Ω` with the standard model of `Ω` (HilbertModularVarietiesAndShimuraCurves §R18.5.3) is a semistable model of `M_{n,E}^ϖ`; the triangulation it defines is the node set `Σ_an(M_{n,E}^ϖ)`, which is invariant under `Aut_F(M_n^ϖ)` (TropicalAndBerkovichArithmetic §§2.16–2.17), so the action extends; finiteness of orbits and openness of stabilizers come from the finiteness of `Γ`-orbits and the profiniteness of `GL₂(O_F)`.

**Checks.**

- `n = 0`: `M_0^ϖ` is the union of two copies of `Ω` (height classes modulo `2`), and the model is two copies of the standard model.
- The statement is for `GL₂(F)`; for `GL_n(F)`, `n ≥ 3`, the levels are not curves and no such model is asserted (CDN23 line 1172).
- The components of the model of `M_0^ϖ` are the pairs `(v, i)` of a vertex of the tree and a copy index `i ∈ ℤ/2`, with `g·(v, i) = (gv, i + v(det g))`. Since `g` changes the type of a vertex (the parity of the lattice index) by `v(det g)`, the class of type plus copy index modulo `2` is invariant, so the components form exactly two `G`-orbits, and one `G × Ǧ`-orbit, because `ϖ_D ∈ Ǧ` fixes the vertices and shifts the copy index. A stabilizer in `G` is `GL₂(O_F)ϖ^ℤ`, whose image in `G′` is open; finitely many orbits, not one, is what the statement asserts.

*Needs:* §7.1; StableReduction Layer 7; AdicSpacesPartIII §R3.7; HilbertModularVarietiesAndShimuraCurves §R18.5.3; TropicalAndBerkovichArithmetic §2.16; TropicalAndBerkovichArithmetic §2.17; EndoscopicTransferAndUnitaryTraceComparison §12.14; EndoscopicTransferAndUnitaryTraceComparison §12.19.

### 7.3 The levelwise fundamental diagram

Prove that for `n ≥ 0` the diagram of §4.2 for the curve without boundary `M_{n,C}^ϖ` (respectively `M_{n,C}`) is equivariant for `G × Ǧ × W_F`, with `W_F` acting through the descent datum of EndoscopicTransferAndUnitaryTraceComparison §§12.7 and 12.19, that `H¹_HK(M_n^ϖ)` carries the induced semilinear `W_F`-action commuting with `φ`, `N` and `G × Ǧ`, and that `ι_HK` is equivariant; that `M_{n,C}^ϖ` has finitely many connected components (§7.1); and that `H¹_ét(M_{n,C}, L(1))` is the space of `G`-bounded vectors of `H¹_proét(M_{n,C}, L(1))` (CDN20 Proposition 2.12(i)).

**Checks.**

- `n = 0`: the diagram is two copies of §6.5 for `d = 1`.
- Bounded vectors: `H¹_ét(M_{n,C}, O_L(1))` is a bounded `G`-stable lattice, so étale classes are `G`-bounded; the class `exp(f)` of a non-constant `f ∈ O(M_{n,C})` is not étale, since bounded functions on a connected Stein curve with semistable model are constant (CDN20 Remarque A.2).
- The `W_F`-action on `H¹_HK` is semilinear for `σ` on `C̆`; replacing it by a linear action would break compatibility with `φ`.

*Needs:* §4.2; §7.1; §7.2; EndoscopicTransferAndUnitaryTraceComparison §12.7; EndoscopicTransferAndUnitaryTraceComparison §12.19.

### 7.4 Hyodo–Kato and de Rham multiplicities

Prove that for a supercuspidal rank-two `L-(φ, N, G_F)`-module `M`, so `WD(M)` irreducible and `M` of slope `1/2`, there are natural isomorphisms of `G`-Fréchet spaces `H¹_HK(M_∞)[M] ≅ M̆ ⊗̂_L LL(M)^*` and `H¹_dR(M_∞)[M] ≅ (C ⊗_F M_dR) ⊗̂_L LL(M)^*`, compatible with `ι_HK` on the left and the identification `M_dR ⊗_F C = M̆ ⊗ C` on the right, all maps commuting with `W_F` and the first with `φ` (CDN20 Théorème 0.4, printed without the slope hypothesis, which CDN20 §2.1, lines 644 and 654, and CDN23 line 328 carry). Route (CDN-CURVES Remarque 0.16(iii)): at each level, §4.6 makes `H¹_HK(M_n)(1)` similar to `WD(H¹_proét(M_n, ℚ_ℓ(1)))` as representations of `WD_{M_n} ⊃ W_F` with the actions of `G × Ǧ`; the ℓ-adic side is the dual, by curve duality (ClassicalAdicEtaleCohomology §§9.6–9.7), of the compactly supported cohomology whose `JL(M)`-part is computed by EndoscopicTransferAndUnitaryTraceComparison §12.20; Fontaine's equivalence between rank-two `(φ, N, G_F)`-modules and Weil–Deligne representations (PadicHodgeTheory §5.3), irreducibility of `WD(M)` and `End_{(φ,N,G_F)}(M) = L` turn the similarity into the stated isomorphism on the `JL(M)`-part; the de Rham statement follows by `ι_HK`. The global route of CDN20 §5 is an alternative proof when `F = ℚ_p`.

**Checks.**

- `n = 0`: no supercuspidal `M` has level `0` (`JL(M)` would factor through `Ǧ/O_D^×`, hence be one-dimensional), so both sides vanish at level zero.
- `M` of slope `1/2`: `H¹_HK(M_∞)[M]` has slope `1/2`, not the slope one of `H¹_HK(Ω)`; transporting the half-plane structure to every sector would give the wrong slope.
- Negative control for the slope hypothesis: the unramified twist `M′ = M ⊗ E`, `E = ℚ_p^nr e` with `φe = pe` and `G_F` trivial on `e`, has `WD(M′)` irreducible, slope `3/2` and `JL(M′) = JL(M) ⊗ χ∘Nrd` with `χ` unramified. `Ǧ` permutes the geometric components of `M_n` transitively through `Nrd`, the stabilizer `S` of a component has `Nrd(S) ⊂ O_F^×`, and the Hyodo–Kato Frobenius fixes each component, so Frobenius reciprocity from `S` gives the same `φ`-module `H¹_HK(M_∞)[M′] = H¹_HK(M_∞)[M]`, of slope `1/2`, while `M̆′` has slope `3/2`: the isomorphism fails for `M′`, and irreducibility of `WD(M)` alone does not suffice.
- Central characters: `LL(M)` and `JL(M)` have the same central character (CDN20 line 142); on `M_n^ϖ`, `ϖ` acts trivially, so for `M` whose central character is nontrivial on `ϖ` the multiplicity space on `M_n^ϖ` is `0` while that on `M_n` is not.

*Needs:* §4.6; §7.3; EndoscopicTransferAndUnitaryTraceComparison §12.20; ClassicalAdicEtaleCohomology §9.6; ClassicalAdicEtaleCohomology §9.7; PadicHodgeTheory §5.3; PadicLocalLanglandsForGL2Qp §6.9; GL2AutomorphicRepresentationsAndTransfer R16.3.

### 7.5 The multiplicity form of the fundamental diagram

Prove that for every finite `F/ℚ_p` and every supercuspidal rank-two `L-(φ, N, G_F)`-module `M` (so of slope `1/2`), with `X^+_st(M) = (B_st^+ ⊗_{ℚ_p^nr} M)^{N=0, φ=p}`, there is a commutative diagram of `G × W_F`-Fréchet spaces with exact rows `0 → O(M_∞)[M] --exp--> H¹_proét(M_∞, L(1))[M] → X^+_st(M) ⊗̂_L LL(M)^* → 0` and `0 → O(M_∞)[M] --d--> Ω¹(M_∞)[M] → (C ⊗_F M_dR) ⊗̂_L LL(M)^* → 0`, with vertical maps `dlog` and `θ`, injective with closed image (CDN20 Théorème 0.8, with the slope hypothesis of CDN20 Corollaire 2.1, line 654). Prove its integral form: passing to `G`-bounded vectors gives an injection `H¹_ét(M_∞, L(1))[M] → X^+_st(M) ⊗̂_L L̂L(M)^*`, `L̂L(M)` the universal unitary completion of `LL(M)` (CDN20 Remarque 0.10; CDN23 proof of Théorème 2.14, lines 1479–1484). Route: §§7.3–7.4, the vanishing of the locally constant functions in `[M]` (§7.1) and of bounded functions (CDN20 Remarque A.2), and §1.3 for `X^+_st`.

**Checks.**

- `θ: X^+_st(M) → C ⊗ M_dR` is injective because `M` has positive slope, so `(B_cris^+ ⊗ M)^{φ=1} = 0` (§1.3); for a slope-zero module it fails.
- For `F = ℚ_p` and `M` of slope `1/2` in the `p`-central sector, the diagram is the one consumed by PadicLocalLanglandsForGL2QpPartII §4.1.
- `X^+_st(M)` has `L`-Dimension `([L:ℚ_p], 2)` at slope `1/2` (CDN20 lines 706–707). For the slope-`3/2` twist `M′` of the §7.4 Check, over `C̆` `M′` has a basis `e, φe` with `φ²e = p³e`, so `X^+_st(M′) = (B_cris^+)^{φ²=p^{−1}} = 0` (§1.3); the first row would make `exp` an isomorphism onto `H¹_proét(M_∞, L(1))[M′]`, which contains the nonzero étale classes `H¹_ét(M_∞, L(1))[M′] = H¹_ét(M_∞, L(1))[M]`, not of the form `exp(f)` (§7.3): the slope hypothesis cannot be dropped.

*Needs:* §1.3; §7.1; §7.3; §7.4; LocallyAnalyticDistributions §0.0.

### 7.6 Cohomologically profinite sheaves of finite copresentation

Let `Y` be a scheme over `O_L` with an increasing cover by quasi-compact opens `{U_s}` and an action of a p-adic Lie group `G′` for which the smooth finitely presented `O_L`-representations form an abelian category closed under extensions, each `U_s` fixed by an open subgroup. Call a pro-system profinite if it is isomorphic in `Pro(Mod_{O_L})` to a system of finite-length modules, and a sheaf `ℱ` of `O_L`-modules on `Y_ét` cohomologically profinite if every `{H^i_ét(U_s, ℱ)}_s` is profinite; then `H^i_ét(Y, ℱ) = lim_s H^i_ét(U_s, ℱ)` is a profinite `O_L`-module. Call `ℱ` `G′`-continuous if each `H^i_ét(U_s, ℱ)` is killed by a power of `p` and fixed by an open compact subgroup, and cohomologically profinite of finite copresentation (cpcf) if it is cohomologically profinite, `G′`-continuous, and every `H^i_ét(Y, ℱ)^∨` is a smooth finitely presented `O_L[G′]`-module (CDN23 §2.1.3). Prove the two-out-of-three properties for short exact sequences of `G′`-equivariant sheaves (CDN23 Lemme 2.8) and that in an exact sequence `A → B → C → D → E` of smooth `O_L[G′]`-modules with `A, B, D, E` finitely presented, `C` is finitely presented (CDN23 Lemme 2.9).

**Checks.**

- A constant system of a finite module is profinite, and so is `{ℤ/p^n}` with surjective transitions, with limit `ℤ_p`; the constant system of `𝔽_p^{(ℕ)}` is not, since a pro-isomorphism would make its limit `𝔽_p^{(ℕ)}` a profinite module.
- A sheaf with `H⁰(U_s) = 𝔽_p^s`, surjective restrictions and no higher cohomology is cohomologically profinite with `H⁰(Y) = 𝔽_p^ℕ`.
- For `G′ = G/ϖ^ℤ` the finite-presentation hypothesis holds by ModpRepresentationsOfGL2OverLocalFields MP.0/amalgam-coherence; for a group without coherence Lemme 2.9 is not asserted.

*Needs:* ModpRepresentationsOfGL2OverLocalFields MP.0; EnhancedDerivedSheaves E2.

### 7.7 Finite copresentation of mod `p^k` cohomology

Prove that for `K/F` finite, `k ≥ 1` and `q ≥ 0`, the `G′`-module `H^q_ét(M_{n,K}^ϖ, O_L/p^k)` is the Pontryagin dual of a smooth finitely presented representation of `G′`; in particular it is a profinite `O_L`-module (CDN23 Théorème 2.1 = Théorème 0.5). Route (CDN23 §2.2): over a finite Galois extension `K′ ⊃ K` containing `μ_p` and the field of definition of a model of §7.2, (1) the sheaves `Ω^t_{Y/k′}` of the special fibre are cpcf, by closed Mayer–Vietoris over the components and their intersections, whose cohomology is induced from open compact subgroups (§7.2); (2) the nearby cycle sheaves `R^jΨ𝔽_p` are cpcf, through the Bloch–Kato–Hyodo filtration (ClassicalAdicEtaleCohomology §4.7), the Cartier sequences for `Ω_log`, `B`, `Z` (CrystallineCohomology §CR.5.1) and §7.6; (3) the pro-systems `{H^q_ét(U_{s,η}, ℤ/p^k)}_s` are profinite and continuous, by the spectral sequence `H^i(U_s, R^jΨ𝔽_p) ⇒ H^{i+j}(U_{s,η}, 𝔽_p)` (ClassicalAdicEtaleCohomology §§4.1, 4.6) and dévissage in `k`; (4) the statement over `K′` follows; (5) descent to `K` by the Hochschild–Serre spectral sequences of the Stein covering for `Gal(K′/K)`. The argument shows more generally that a semistable formal scheme whose special fibre has such a stratification has profinite `H^q_ét(X_K, 𝔽_p)` (CDN23 Remarque 2.11).

**Checks.**

- `n = 0`, `q = 0`: `H⁰_ét(M_{0,K}^ϖ, 𝔽_p) = 𝔽_p²`, the two copies of `Ω` being exchanged by elements of odd determinant valuation; its dual is a two-dimensional smooth representation of `G′`.
- With `ℚ_p`-coefficients the corresponding `H¹` is a Fréchet space that is not compact; the statement concerns torsion coefficients only.

*Needs:* §7.2; §7.6; ClassicalAdicEtaleCohomology §4.1; ClassicalAdicEtaleCohomology §4.6; ClassicalAdicEtaleCohomology §4.7; CrystallineCohomology §CR.5.1; ModpRepresentationsOfGL2OverLocalFields MP.0.

### 7.8 Non-admissibility for `F ≠ ℚ_p`

For `V` a finite-dimensional `L`-representation of `G_F` with `G_F`-stable lattice `V^+`, `V^+_k = V^+/m_L^k`, and `M` supercuspidal with a `Ǧ`-stable lattice `JL(M)^+`, define `Π_M(V) = Hom_{G_F×Ǧ}(V ⊗ JL(M), H¹_ét(M_{n,C}^ϖ, L(1)))^*`, `Π_M(V^+)` and `Π_M(V^+_k)` with `O_L`- and `O_L/m_L^k`-duals (CDN23 §2.3, lines 1465–1470). Prove: (a) `Π_M(V)` is a unitary Banach representation of `G` with `G`-stable lattice `Π_M(V^+)`, and `(O_L/m_L^k) ⊗ Π_M(V^+)` is a quotient of `Π_M(V^+_k)` (CDN23 Lemme 2.16, using §7.7); (b) if some `Π_M(V^+_k)` is admissible, then `k_L ⊗ Π_M(V^+)` lies in the category `C` of ModpRepresentationsOfGL2OverLocalFields MP.2/category-c (CDN23 Lemme 2.17); (c) for `π` supercuspidal with universal completion `π̂` and `Π` a unitary Banach representation with a lattice whose reduction lies in `C`, `Hom_G(π̂, Π) = 0` (CDN23 Proposition 2.18, using MP.2/ordinary-banach); (d) if `F ≠ ℚ_p` and `Π_M(V) ≠ 0`, then `Π_M(V^+_k)` is smooth and not admissible for every `k ≥ 1` (CDN23 Théorème 2.14), using the injection of §7.5; (e) for every supercuspidal `M` of level at most `n` on which `ϖ` acts trivially there is `V` with `Π_M(V) ≠ 0` (CDN23 Remarque 2.15(ii), line 1494), through a cocompact `Γ ⊂ G′`, the proper curves `X_n = M_{n,F}^ϖ/Γ` with `X₀` of genus `≥ 2`, the occurrence of every representation of `Gal(X_n/X₀)` in `Ω¹(X_n)` (NAK84 Theorem 4, as used in CDN23 Remarque 2.15(ii)) and the étale–de Rham comparison for proper curves (§4.7); (f) consequently, if `F ≠ ℚ_p` and `n > 0`, then `H¹_ét(M_{n,K}^ϖ, k_L)^∨` is not admissible for `K/F` finite and large enough (CDN23 Théorème 2.13).

**Checks.**

- `F = ℚ_p`: `Π_M(V)` and `Π_M(V^+_k)` are admissible (CDN23 Remarque 2.15(i)); the hypothesis `F ≠ ℚ_p` in (d) is necessary.
- `n = 0`: there is no supercuspidal `M` of level zero (§7.4), so (f) is stated for `n > 0`.
- `n = 1` and `M` of level `2` (`JL(M)` nontrivial on `1 + ϖ_D O_D`): `Ǧ_1` acts trivially on `M_1^ϖ`, so every constituent of `H¹_ét(M^ϖ_{1,C}, L(1))` is trivial on `Ǧ_1`, the `JL(M)`-isotypic part is `0` and `Π_M(V) = 0` for every `V`; the level hypothesis in (e) cannot be dropped. For `n = 1` the hypothesis is met by the two-dimensional `JL(M)` attached to a character of `𝔽_{q²}^×` that does not factor through the norm, so (f) has input.
- In (c), `St ⊗ χ ∘ det` and principal series receive no nonzero map from `π̂`, because `π` is dense in `π̂` and a cuspidal `π` has no nonzero map to a principal-series constituent; for `π = St` itself (c) fails, since `St` maps to `Ŝt`.

*Needs:* §4.7; §7.5; §7.7; ModpRepresentationsOfGL2OverLocalFields MP.2; AdicSpacesPartIII §R3.7.

### Examples

For `F` unramified quadratic over `ℚ_p` and `M` supercuspidal of level `1` with `ϖ` acting trivially, §7.5 gives the diagram with `X^+_st(M)` of `L`-Dimension `([L:ℚ_p], 2)`, §7.7 shows that `H¹_ét(M_{1,K}^ϖ, k_L)^∨` is finitely presented, and §7.8 shows it is not admissible for `K` large.

### Dependencies

Layers 1, 4 and 6; EndoscopicTransferAndUnitaryTraceComparison §§12.2–12.8, 12.11, 12.14, 12.19–12.21; HilbertModularVarietiesAndShimuraCurves §R18.5.3; TropicalAndBerkovichArithmetic §§2.16–2.17; StableReduction Layer 7; AdicSpacesPartIII §R3.7; ClassicalAdicEtaleCohomology §§4.1, 4.6–4.7, 9.6–9.7; CrystallineCohomology §CR.5.1; PadicLocalLanglandsForGL2Qp §6.9; GL2AutomorphicRepresentationsAndTransfer R16.3; PadicHodgeTheory §§5.3–5.4; VectorBundlesAndIsocrystals VB3; ModpRepresentationsOfGL2OverLocalFields MP.0 and MP.2.

## Downstream consumers

- **ScholzeFunctorAndModpCohomologyOfTheLubinTateTower**: its gap `proetale-finite-presentation` asks for CDN23 Théorème 2.1, which is §7.7 here, with §7.2 for the semistable model; its SZ.6 geometric-multiplicity theorem uses §7.7 for general `F`; its SZ.0 imports the component theorem of §7.1.
- **PadicLocalLanglandsForGL2QpPartII**: its §§3.4–3.5 and 4.1 re-derive, for `F = ℚ_p`, the semistable models, the Hyodo–Kato structure and the fundamental diagram of the tower, which are §§7.2–7.5 here for every `F`; its §4.2 half-plane isomorphisms are §§6.2, 6.5 and 6.9 at `d = 1`. Its p-adic local Langlands content stays there.
- **CompletedCohomologyAndLocalGlobalCompatibility, Part II** (Thorne's level raising, the route of ModularityAndLanglandsExtensionsPartII): Thorne's Theorems 3.5–3.6 rest on §6.10.
- **ProetaleCohomologyOfPAdicCurvesAndTowersPartII**: duality and compact supports for curves and the compactly supported de Rham comparison of the towers.

## References

The sources manifest is `packages/ProetaleCohomologyOfPAdicCurvesAndTowers/sources.toml`; locators below use the numbering of the versions recorded there.

- **CDN-CURVES** — P. Colmez, G. Dospinescu, W. Nizioł, *Cohomologie des courbes analytiques p-adiques*, arXiv:2101.06647v2.
- **CDN-STEIN** — P. Colmez, G. Dospinescu, W. Nizioł, *Cohomology of p-adic Stein spaces*, Invent. Math. 219 (2020); arXiv:1801.06686v2.
- **CDN20** — P. Colmez, G. Dospinescu, W. Nizioł, *Cohomologie p-adique de la tour de Drinfeld : le cas de la dimension 1*, J. Amer. Math. Soc. 33 (2020); arXiv:1704.08928v2.
- **CDN23** — P. Colmez, G. Dospinescu, W. Nizioł, *Factorisation de la cohomologie étale p-adique de la tour de Drinfeld*, Forum Math. Pi 11 (2023); arXiv:2204.11214v2.
- **CDN-DUKE** — P. Colmez, G. Dospinescu, W. Nizioł, *Integral p-adic étale cohomology of Drinfeld symmetric spaces*, Duke Math. J. 170 (2021); arXiv:1905.11495v1.
- **DAT06** — J.-F. Dat, *Espaces symétriques de Drinfeld et correspondance de Langlands locale*, Ann. Sci. ENS 39 (2006).
- **GK05** — E. Grosse-Klönne, *Frobenius and monodromy operators in rigid analysis, and Drinfel'd's symmetric space*, J. Algebraic Geom. 14 (2005); arXiv:1408.3346v1.
- **GK05-RT** — E. Grosse-Klönne, *Integral structures in the p-adic holomorphic discrete series*, Represent. Theory 9 (2005).
- **GK07** — E. Grosse-Klönne, *Sheaves of bounded p-adic logarithmic differential forms*, Ann. Sci. ENS 40 (2007).
- **GK14** — E. Grosse-Klönne, *On special representations of p-adic reductive groups*, Duke Math. J. 163 (2014); arXiv:1408.3370.
- **STR08** — M. Strauch, *Geometrically connected components of Lubin–Tate deformation spaces with level structures*, Pure Appl. Math. Q. 4 (2008); arXiv:math/0611121v1.
- **SS91** — P. Schneider, U. Stuhler, *The cohomology of p-adic symmetric spaces*, Invent. Math. 105 (1991), cited by locator.
- **IS01** — A. Iovita, M. Spiess, *Logarithmic differential forms on p-adic symmetric spaces*, Duke Math. J. 110 (2001), cited by locator; restated in CDN-STEIN Theorem 5.10.
- **DS01** — E. de Shalit, *Residues on buildings and de Rham cohomology of p-adic symmetric domains*, Duke Math. J. 106 (2001), cited by locator; restated in GK05 Proposition 6.5.
- **NAK84** — S. Nakajima, *On Galois module structure of the cohomology groups of an algebraic variety*, Invent. Math. 75 (1984), cited by locator through CDN23 Remarque 2.15(ii).
- **CN-I**, **CN-II** — P. Colmez, W. Nizioł, *On the cohomology of p-adic analytic spaces, I and II*, arXiv:2104.13448v3 and arXiv:2108.12785v4: boundary with CstConjectureForDaggerVarieties.
- **CGN23** — P. Colmez, S. Gilles, W. Nizioł, *Arithmetic duality for p-adic pro-étale cohomology of analytic curves*, arXiv:2308.07712v2: scope of the Part II.
- **THO24** — J. A. Thorne, *A p-adic approach to the existence of level-raising congruences*, Proc. LMS 128 (2024); arXiv:2212.03591v2: consumer of §6.10.
