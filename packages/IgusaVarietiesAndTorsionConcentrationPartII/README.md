# Roadmap: Igusa varieties and torsion concentration, Part II: compact unitary Shimura varieties

**Summary.** This roadmap proves the theorem of Caraiani and Scholze on the generic part of the cohomology of compact unitary Shimura varieties ([CS17], Theorem 1.1 and its precise form Theorem 6.3.1). The setting is a compact unitary PEL Shimura variety `S_K` of type (A), attached to a CM field `F = F⁺𝒦` that contains an imaginary quadratic field `𝒦`. It is of one of two kinds: Kottwitz's simple Shimura varieties (a central division algebra over `F`), or a hermitian space over `F` that is quasi-split at every finite place, with `F⁺ ≠ ℚ`. Let `𝔪` be a maximal ideal of the abstract spherical Hecke algebra `𝕋^S` in the support of `H^*(S_K, 𝔽_ℓ)`. Then `𝔪` has a semisimple Galois representation `ρ_𝔪 : Gal(F̄/F) → GL_n(𝔽̄_ℓ)`. If `ρ_𝔪` is decomposed generic at a suitable auxiliary prime split in `𝒦`, the localized cohomology `H^*(S_K, 𝔽_ℓ)_𝔪` is concentrated in the middle degree `dim S_K`. The ingredients are the geometry of the Hodge–Tate period map and of Igusa varieties, supplied by the parent roadmap, together with a comparison of the cohomology of Igusa varieties with automorphic representations through the trace formula. Layer 8 fixes the data, Hecke algebras, duality and auxiliary primes. Layer 9 shows that generic Igusa cohomology lives on the `μ`-ordinary stratum for the quasi-split datum ([CS17] Theorem 5.5.7). Layer 10 does the same for Kottwitz's simple Shimura varieties ([CS17] Corollary 5.6.3). Layer 11 assembles Theorem 6.3.1, Theorem 1.1 and their integral and twisted-coefficient forms.

This roadmap is Part II of IgusaVarietiesAndTorsionConcentration and begins where that roadmap stops. The parent constructs central leaves, perfect and Mantovan Igusa varieties for unramified PEL data of types (A) and (C) (its Layers IG.0–IG.1). For compact PEL data it identifies the stalks of the pushforward along the Hodge–Tate period map with Igusa cohomology (its §IG.3.17) and proves perversity and concentration at a minimal Newton stratum (its §§IG.4.4–IG.4.5). It owns the splitting of generic local lifts (its §IG.5.5). Its trace-formula, duality and end-theorem layers (IG.5–IG.7) are written for the quasi-split unitary datum of signature `(n, n)` at a totally split prime, the non-compact setting of Caraiani–Scholze's sequel. This Part II supplies compact unitary data of every rank and signature, auxiliary primes that are only split in `𝒦`, the trace comparisons for these data, and the end theorems of the compact paper.

## Scope and ownership

This roadmap owns the following. It owns compact unitary PEL data of Cases 1 and 2, with their signatures, dimension and moduli problem, and their smooth proper integral models at good primes. It owns the local datum at a prime split in `𝒦`: the sets `S_i`, and the product decomposition of `B(G, μ⁻¹)` with its central correction. It owns the Hecke algebra `𝕋^S`, its operators `T_{i,v}` and Hecke polynomial, the dual ideal at rank `n`, and Hecke-equivariant Poincaré duality on `S_K` and on Mantovan's Igusa varieties of these data. It owns strong decomposed genericity at a prime of a number field, the auxiliary-pair condition and the existence of auxiliary primes (Layer 8). For the quasi-split compact datum of rank `n` and any signature it owns the stable Igusa trace identity, the spectral expansion and the `r`-part of the Igusa class. It also owns the Newton reduction lemma for generic principal series, the lemma on non-`μ`-ordinary classes and Theorem 5.5.7 (Layer 9). It owns the vanishing of proper endoscopic terms for Kottwitz's simple Shimura varieties, the stable Lefschetz identity for `S_K`, the Igusa cohomology formula, the Galois representations of Case 1, the `r`-part and Corollary 5.6.3 (Layer 10). Finally it owns the contraction lemma, Hochschild–Serre to perfectoid level, the Leray reduction to Igusa varieties, the minimal-stratum constituent, Theorem 6.3.1, Theorem 1.1, the integral form of Remark 1.3 and the coefficient form of Remark 1.7.1 (Layer 11).

Several variants are kept on purpose. The parent's §§IG.0.4, IG.5.1, IG.5.2 and IG.5.4 state the Hecke algebra, the dual ideal, Igusa Poincaré duality and the rational constituent for its rank-`2n` quasi-split datum in the trace-comparison setting. §§8.4, 8.5, 8.6(2) and 11.4 restate them for compact data of rank `n` and arbitrary signature, and differ only in that datum. The parent's §IG.7.6 gives integral coefficients for the non-compact datum with the Borel–Serre boundary. §11.8 is the compact form, which has no boundary term. AutomorphicGaloisRepresentationsPartII AG2.7 «Strong local decomposed genericity» owns the local predicate over a finite extension of `ℚ_p`. `IsStrongGenericAt` of §8.7 applies that predicate at a prime of a number field to a global representation given by a finite Galois realization. It is stated here because the existence theorems of §8.8 are stated in that form.

Several objects are stated elsewhere and only cited here. Mathlib provides CM fields (`NumberField.IsCMField`, `NumberField.maximalRealSubfield`), the double-coset Hecke ring `HeckeRing`, arithmetic Frobenius elements (`IsArithFrobAt`), localization and free modules. Tau Ceti provides the ring structure on the Hecke ring (`HeckeCosetModule.instRingHeckeRing`) and the anti-involution formalism (`HeckeAntiInvolution.ofAmbient`, `HeckeAntiInvolution.onHeckeCoset`). The other roadmaps supply the following.

- IgusaVarietiesAndTorsionConcentration: the local PEL data, Mantovan Igusa varieties and their cohomology, the compact fibre theorem, compact minimal-stratum concentration and the splitting of generic local lifts, by the sections listed in the supplier contracts.
- EndoscopicTransferAndUnitaryTraceComparison: elliptic endoscopic data of unitary similitude groups of every rank, Shin's stable trace formula for Igusa varieties of PEL type, and the stable–twisted identity for every rank and archimedean signature. It also supplies the archimedean Lefschetz functions, the twisted spectral side, the Newton reduction with its trace duality, the Frobenius-twist argument and Badulescu's principal-series nontransfer.
- AutomorphicGaloisRepresentationsPartII: Galois representations of conjugate self-dual automorphic representations, the Caraiani–Scholze discrete normalization of [CS17] Corollary 5.5.5 and Remark 5.5.6, local–global compatibility, the dual-twist comparison and Galois-type maximal ideals.
- BunGAndNewtonStrata: `J_b`, products and unramified restriction of scalars in `B(G)`, the ordinary class, and [CS17] Lemma 5.5.8.
- PELModuli, ShimuraCompactifications and PerfectoidShimuraVarieties: PEL moduli problems, toroidal compactifications, perfectoid Shimura varieties and the Hodge–Tate period map.
- The cohomological and automorphic foundations named in the supplier contracts.

Ordinary Igusa formal schemes of Siegel varieties over `ℤ_p` (Boxer–Pilloni) are a different continuation of the parent and are not part of this roadmap. Two supplier statements are needed beyond what the suppliers state, and are registered as gaps under the supplier contracts. The first is base change and Galois representations of every rank for the unitary similitude groups of central division algebras (AutomorphicGaloisRepresentationsPartII AG2.2). The second is the choice of the auxiliary Hecke character `ϖ` with ramification avoiding a prescribed finite set (EndoscopicTransferAndUnitaryTraceComparison §6.3). The coefficient form of §11.8 is proved for coefficient systems that admit a normal trivializing level satisfying the hypotheses of the constant-coefficient theorem. That restriction is part of its statement.

## Conventions

`F = F⁺𝒦` is a CM field with `F⁺` totally real and `𝒦 ⊂ F` imaginary quadratic, and `c` is complex conjugation. `Spl_{F/F⁺}` is the set of rational primes all of whose places in `F⁺` split in `F`. `Spl_{𝒦/ℚ}` is the set of rational primes split in `𝒦`. `G` is the unitary similitude group of the datum. Its signature at `τ : F ↪ ℂ` is `(p_τ, q_τ)`, with `p_τ + q_τ = n` and `(p_{τc}, q_{τc}) = (q_τ, p_τ)`. The Hodge cocharacter is `μ`, with `μ(t) = diag(t^{(p_τ)}, 1^{(q_τ)})` in the `τ`-factor, and `E` is the reflex field. The dimension is `d = Σ_{τ∈Φ} p_τq_τ = ⟨2ρ, μ⟩ = dim S_K` for any CM type `Φ` of `F`.

Newton classes lie in `B(G, μ⁻¹)` with the covariant normalization of the parent roadmap (slopes in `[−1, 0]`). We write `d_b = ⟨2ρ, ν_b⟩`, and the `μ`-ordinary class is the maximal element of `B(G, μ⁻¹)`. With these conventions `ν_b` of the `μ`-ordinary class is the dominant representative of `μ⁻¹`, so `d_b = d` exactly for that class.

`ι_ℓ : ℚ̄_ℓ ≅ ℂ` is fixed. At an auxiliary prime `p = uu^c` split in `𝒦`, `ι_p : ℚ̄_p ≅ ℂ` is compatible with a chosen prime `𝔭 | p` of `E`. The primes of `F` above `u` are `𝔭_1, …, 𝔭_m`, and `S_i = {τ : F ↪ ℂ | ι_p⁻¹ ∘ τ induces 𝔭_i}`. ([CS17] prints `ι_p ∘ τ` in Theorem 5.5.7 and Corollary 5.6.3, CS17 lines 3979 and 4103. That composite is not defined, since `τ` lands in `ℂ` and `ι_p` has source `ℚ̄_p`.)

Hecke polynomials are `P_v(X) = Σ_{i=0}^n (−1)^i q_v^{i(i−1)/2} T_{i,v} X^{n−i}`, matched with geometric Frobenius as in AutomorphicGaloisRepresentationsPartII AG2.0. In this convention the mod `ℓ` cyclotomic character `ε̄` takes the value `q_v⁻¹` on a geometric Frobenius at `v`. Decomposed genericity (`λ_a/λ_b ∉ {1, q_v}` for `a ≠ b`) does not depend on the choice of Frobenius, since inversion permutes the ordered pairs. The involution `ι` of `𝕋^S` sends `[KgK]` to `[Kg⁻¹K]`, and `𝔪^∨ = ι(𝔪)`.

`Red^b_n⃗` is the normalized Newton reduction of EndoscopicTransferAndUnitaryTraceComparison §14.2, including the modulus twist `δ̄^{1/2}_{P(ν_b)}`. In the trace layers we put `S′ = S ∪ {∞, p} ∪ Ram(ϖ)`, where `ϖ` is a Hecke character of `𝒦` extending the quadratic character of `𝒦/ℚ` and ramified only at primes of `Spl_{F/F⁺}`, and `S′_fin = S′ ∖ {∞}`. `BC^{S′}` is the base change outside `S′`, and one base change is used throughout. ([CS17] Theorem 5.5.7 prints `BC^p` at CS17 line 3987, but the proof at line 3990 uses `BC^S`.) At infinite level at `p`, localization at `𝔪 ⊂ 𝕋^S` is replaced by localization at its contraction to `𝕋^{S∪{p}}` (§11.1). All cohomology is étale cohomology after base change to an algebraically closed field; for adic spaces this field is `C = ℂ_p`. Coefficient rings are `Λ ∈ {ℤ/ℓ^r, 𝔽_ℓ, ℤ_ℓ, ℚ̄_ℓ}` with `ℓ ≠ p`.

## Exact supplier contracts

The library pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. A `gap:` contract is mathematics the named supplier must provide before a dependent target is proved. It is not an available declaration, and no target here takes its conclusion as a hypothesis.

### From Mathlib

- `NumberField.IsCMField` (`Mathlib/NumberTheory/NumberField/CMField.lean`) says that a characteristic-zero field is totally complex and a quadratic extension of its maximal real subfield. `NumberField.maximalRealSubfield` (`Mathlib/NumberTheory/NumberField/InfinitePlace/TotallyRealComplex.lean`) is that subfield. They fix `F` and `F⁺`. They do not record `𝒦`, which is extra data of the datum.
- `HeckeRing` (`Mathlib/NumberTheory/HeckeRing/Defs.lean`) is the module of finitely supported `Z`-linear combinations of the double cosets `H\Δ/H`. Its ring structure comes from Tau Ceti. The local spherical rings `ℤ[G(ℚ_q)//K_q]` are its instances, through SmoothRepresentationsOfLocalGroups SR.1.2.
- `IsArithFrobAt` (`Mathlib/RingTheory/Frobenius.lean`) says that `σ` acts as `x ↦ x^{#(R/Q∩R)}` modulo `Q`. Together with `Ideal.inertia` (`Mathlib/RingTheory/Ideal/Defs.lean`), `Ideal.primesOver` and `Ideal.LiesOver` (`Mathlib/RingTheory/Ideal/Over.lean`), it gives the Frobenius and inertia data in `IsStrongGenericAt`.
- `Localization.AtPrime` and `IsLocalization` (`Mathlib/RingTheory/Localization/`) give the localizations of §11.1, and `Module.Free` gives the freeness assertions of §§11.4 and 11.8.

### From Tau Ceti

- `HeckeCosetModule.instRingHeckeRing` (`TauCeti/NumberTheory/HeckeRing/Associativity.lean`) is the ring structure on the Hecke ring of a Hecke triple over a coefficient ring.
- `HeckeAntiInvolution.ofAmbient` and `HeckeAntiInvolution.onHeckeCoset` (`TauCeti/NumberTheory/HeckeRing/Commutativity.lean`). An anti-involution of the ambient group that preserves `H` and `Δ` restricts to an anti-involution of the Hecke datum, which acts on double cosets by sending the class of `g` to the class of its image. Inversion `g ↦ g⁻¹` gives the involution `ι` of §8.5. Tau Ceti's `GL_n` Hecke rings in `TauCeti/NumberTheory/HeckeRing/GLn/` are for `GL_n(ℚ)` relative to `SL_n(ℤ)` and are not used for the local rings here.

### From TauCetiRoadmap.SchemeAndStackFoundations

- §2.2: the Leray spectral sequence for a morphism of sites, used on the étale sites of DiamondEtaleCohomology C0.1 in §11.3.
- §2.15: the Hochschild–Serre spectral sequence of a finite étale Galois covering and its profinite version, used in §§11.2 and 11.8.

### From TauCetiRoadmap.IgusaVarietiesAndTorsionConcentration

- §IG.0.11: unramified local PEL data of type (A) or (C) and the classes `b ∈ B(G, μ⁻¹)` they carry.
- §§IG.1.3, IG.1.4 and IG.1.6: Mantovan's finite-level Igusa varieties `I^b_{Mant,m}`, which are smooth of dimension `d_b` over `𝔽̄_p`, with finite étale transition maps, the perfection of the tower and the actions of `J_b(ℚ_p) × G(𝔸_f^p)`.
- §§IG.1.7–IG.1.8: the Igusa cohomology complexes, the alternating class `[H_c(I^b_Mant, ℚ̄_ℓ)]` in `Groth(G(𝔸_f^p) × J_b(ℚ_p))`, and its `S`-unramified part.
- §IG.3.14: the stalks of a qcqs pushforward at a geometric point are the cohomology of the fibre, and cohomology on a qcqs space is detected on rank-one points.
- §IG.3.17: the compact fibre theorem ([CS17] Theorem 4.4.4). For a PEL datum of type (A) or (C), unramified at `p` with `K_p` hyperspecial and proper integral model, `(R^iπ_HT* ℤ/ℓ^r)_x̄ ≅ H^i(Ig^b, ℤ/ℓ^r)` at every geometric point `x̄` of `Fℓ^b_{G,μ}`, compatibly with `G(𝔸_f^p)`.
- §IG.4.5: compact minimal-stratum concentration ([CS17] Corollary 6.1.4). It is stated for any subalgebra of `ℤ[G(𝔸_f^S)//K^S]` acting on `Rπ_HT*𝔽_ℓ`, with `p ∈ S`.
- §IG.5.5: splitting of generic local lifts ([CS17] Lemma 6.2.2) over every finite extension of `ℚ_p`.

### From TauCetiRoadmap.EndoscopicTransferAndUnitaryTraceComparison

- §1.8: the elliptic endoscopic data `G_n⃗` of unitary similitude groups, `n⃗ = (n)` or `(n₁, n₂)`, with the `ϖ`-twisted embeddings `η̃_n⃗`, Kottwitz's condition, and `|Out| = 2` exactly when `n₁ = n₂`. §1.16 is the norm correspondence of strongly regular classes.
- §6.1: irreducibility of unitary parabolic induction for `GL_n`. §6.3: the Hecke character `ϖ` extending the quadratic character of `𝒦/ℚ`, which is an existence statement with finite `Ram_ℚ(ϖ)`.
- §§6.6–6.10: the base-change groups and `L`-morphisms `BC`, `ζ̃`, the stable elliptic distribution `ST^H_e` with `ι(G, H)`, the unramified transfers, base-change transfer of test functions at every place, and archimedean Euler–Poincaré and twisted Lefschetz functions for arbitrary signature.
- §§6.15, 6.18 and 6.21–6.23, 6.25. These are: no proper cuspidal subsets when `[F⁺:ℚ] ≥ 2`; Kottwitz's stabilization of elliptic terms; the simple twisted geometric and spectral sides; the simple trace formula for division-algebra unitary groups; and the stable–twisted identity. The stable–twisted identity holds for every rank, both parities and `G_ℝ` of arbitrary signature.
- §§7.5 and 7.10: decent representatives, Newton Levi and `J_b`, and rational Igusa cohomology.
- §§8.1, 8.11 and 8.21: acceptable functions, the Frobenius-twist separation of virtual characters (Shin's Lemma 6.4 in *Counting points on Igusa varieties*), and Shin's stable trace formula for Igusa varieties of PEL type (A)/(C) with all mass factors.
- §10.32: principal-series nontransfer. The Langlands–Jacquet map to a non-quasi-split inner form kills every irreducible generic principal series.
- §§14.2–14.3: the normalized Newton reduction `Red^b_n⃗` and its duality with test transfer ([CS17] Lemma 5.4.2).
- What EndoscopicTransferAndUnitaryTraceComparison must provide (gap:auxiliary-character-finite-avoidance): for every finite set `D` of rational primes disjoint from `S`, a choice of the Hecke character `ϖ` of §6.3 extending the quadratic character of `𝒦/ℚ`, with the archimedean type of §1.8, `Ram_ℚ(ϖ) ⊂ Spl_{F/F⁺}` and `Ram_ℚ(ϖ) ∩ D = ∅`. [Shin11] Lemma 7.1, p. 1722 (Shin11 line 3470), gives `Ram_ℚ(ϖ) ⊂ Spl_{F/F⁺}` without avoidance. It is needed by §§11.5–11.8, to eliminate `Ram(ϖ)` from the bad set of `ρ_𝔪` in Case 2.

### From TauCetiRoadmap.AutomorphicGaloisRepresentationsPartII

- AG2.0: algebraic weights, characters and the geometric-Frobenius normalization of Hecke polynomials.
- AG2.2 «The Caraiani–Scholze discrete normalization» and AG2.7 «Unitary discrete-parameter export». For the `θ`-stable isobaric `Π^n⃗` of the spectral expansion, they give `r_{Π^{S′},ℓ} = ⊕_i r_i ⊗ ε_i`, with Frobenius polynomials at the places above `Spl_{𝒦/ℚ} ∖ (S′ ∪ {ℓ})` and the local normalization of [CS17] Remark 5.5.6.
- AG2.3 «Arbitrary regular conjugate-self-dual existence»: Galois representations of regular algebraic conjugate self-dual cuspidal representations of `GL_m(𝔸_F)` of every rank.
- AG2.5 «Caraiani's full away-prime compatibility» and «Temperedness of regular unitary-type cuspidal forms»: local–global compatibility at every place not above `ℓ`.
- AG2.7 «Dual and character-twist Hecke comparison», «Residual representation of `π`», «Strong local decomposed genericity» and «Infinitely many decomposed generic primes».
- What AutomorphicGaloisRepresentationsPartII must provide (gap:division-algebra-unitary-base-change). Let `G` be the unitary similitude group of a central division algebra `B` of degree `n` over a CM field `F = F⁺𝒦` with an involution of the second kind, of arbitrary signature, and each locally isomorphic inner form occurring in the PEL decomposition. For every automorphic `π` on such a group with `π_∞` cohomological for the trivial representation, it must give the following. There is an isobaric conjugate self-dual `Π` on `GL_1(𝔸_𝒦) × GL_n(𝔸_F)` with `Π_v ≅ BC_v(π_v)` at every finite place outside the ramification of `π` and `G`, and at the ramified places split in `𝒦` where `B` splits. There are Galois representations `r_{π,ℓ}` of every rank `n`, unramified at every place of `F` outside the ramification and `ℓ`, with Frobenius polynomials given by Satake parameters and local–global compatibility away from `ℓ` at those places. AG2.2's assembly is stated for rank `2n` and B = F. [Shin-BCU] Theorem 1.1, cited by [CS17] §5.6 (CS17 line 4092), is stated for a hermitian form on an `n`-dimensional `F`-space (Shin-BCU lines 13–17), that is B = F. It is needed by §10.4 and, through it, by §§10.5–10.6 and the Case 1 parts of Layer 11.

### From TauCetiRoadmap.IntegralHeckeAndGaloisDeterminants

- §3b.1: Galois-type maximal ideals of Hecke algebras and their residual representations. §1.2: semisimple reconstruction from determinants over algebraically closed fields, used for the uniqueness of `ρ_𝔪`.

### From TauCetiRoadmap.BunGAndNewtonStrata

- §1.13: the algebraic `σ`-centralizer `J_b`.
- §§1.23, 1.25 and 1.26: acceptable classes `B(G, {μ})`, the unique maximum and the ordinary class. These sections distinguish ordinarity from maximality. For quasi-split `G` the ordinary class exists, and it is then the maximum.
- §1.30: `B(G₁ × G₂) = B(G₁) × B(G₂)` and, for unramified `Res_{E/F} H`, the norm bijection `B(G) ≅ B(H)` with `J_b^G ≅ Res_{E/F} J^H_{Nm(b)}`. The bound on `H` is the sum of the component cocharacters.
- §1.32: [CS17] Lemma 5.5.8. For `GL_n` over a `p`-adic field and minuscule `μ`, exactly one class of `B(GL_n, μ⁻¹)` has quasi-split `J_b`, namely the ordinary class.

### From TauCetiRoadmap.PELModuli

- §§M0.2, M0.6, M0.7, M0.9, M0.13, M0.16–M0.17 and M0.27: Albert types, rational PEL data, the similitude group and `ker¹(ℚ, G)`, signatures, reflex fields and `τ`-parts at an unramified prime.
- §M1.13: level change and the Hecke action. §§M2.8, M2.10 and M2.11: representability and smoothness, the Kodaira–Spencer isomorphism and relative dimension, and properness when `End_B(V)` is a division algebra.
- §§M3.1 and M3.4: forms of the skew-hermitian module classified by `ker¹(ℚ, G)`, and `S_K(ℂ) = ⊔_j Γ_j\X` over the inner forms. §M4.3: the PEL generic fibres are canonical models, with the `ker¹` decomposition over the reflex field. §M5.5: unitary PEL data with prescribed signatures. §M6.1: level-forgetting and Hecke maps are finite étale.

### From TauCetiRoadmap.ShimuraCompactifications

- §C1.4: cusp labels, which come from rational parabolic subgroups. §§C5.3 and C5.5: integral toroidal compactifications and their properness for projective admissible fans.

### From TauCetiRoadmap.PerfectoidShimuraVarieties

- §2.2: the Hodge-type tower is perfectoid at infinite level at `p`. §3.5: the Hodge–Tate period map `π_HT : 𝒮_{K^p} → Fℓ_{G,μ}` for Hodge type, equivariant for `G(𝔸_f^p)`.

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups

- SR.1.2: level algebras and the comparison with the double-coset ring. SR.2.2: Jacquet modules of principal series. SR.4.1 and SR.4.3: the Satake isomorphism and the explicit `GL_n` spherical generators.

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

- §1.8: Brauer–Nesbitt. §§5.1 and 5.9: density of Frobenius elements and Chebotarev's theorem for clopen conjugation-stable sets.

### From TauCetiRoadmap.AutomorphicSpectralTheory

- §4.7: discrete spectral decomposition for compact quotients. §§6.17, 6.19 and 6.20: the trace formula for compact quotients, real Euler–Poincaré test functions, and Arthur's `L²`-Lefschetz traces of Hecke operators.

### From TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactors

- AL.3 «Strong multiplicity one»: an isobaric representation of `GL_m(𝔸_F)` is determined by its components outside a finite set.

### From TauCetiRoadmap.ArithmeticLocallySymmetricSpaces

- ALS.5a.2 and ALS.5a.4: Poincaré–Verdier duality at finite level, and the Hecke adjoint `⟨x, [KgK]y⟩ = ⟨[Kg⁻¹K]x, y⟩`. ALS.5b.4: the automorphic comparison (Matsushima's formula in the compact case).

### From TauCetiRoadmap.EtaleDualityAndPerverseSheaves

- §0.5: Poincaré duality for smooth varieties with torsion coefficients, including locally constant constructible coefficients, and the Galois and Frobenius equivariance of the pairing.

### From TauCetiRoadmap.ComplexComparisonPartII

- §§C6.3–C6.4: Artin's comparison between étale and singular cohomology of complex varieties, ordinary and compactly supported.

### From TauCetiRoadmap.ClassicalAdicEtaleCohomology

- §1.3: the Cartan–Leray spectral sequence of a pro-finite-étale `G`-torsor with continuous-cohomology `E_2`. §1.4: torsion sheaves on qcqs locally noetherian analytic spaces are colimits of constructible ones. §8.2: comparison of algebraic and analytic étale cohomology for proper varieties (Huber 3.7.2).

### From TauCetiRoadmap.DiamondEtaleCohomology

- C0.1: the étale site of a locally spatial diamond. C0.18: étale cohomology commutes with cofiltered limits of spatial diamonds.

### From TauCetiRoadmap.ArithmeticGaloisDuality

- R02.2.1: the Hochschild–Serre spectral sequence in continuous group cohomology.

### From TauCetiRoadmap.AlgebraicModularFormsAndSerreWeights

- R15.5 «The lifting lemma and its sharp limits»: Deligne–Serre eigenvalue lifting for a commuting family of operators on a finite free `ℤ_ℓ`-module.

## How to read the build

Layer 8 is used by every other layer. Layers 9 (Case 2) and 10 (Case 1) run in parallel, except that 10 reuses the two local lemmas of 9: Newton reduction of generic principal series (§9.2) and non-`μ`-ordinary classes (§9.5). Layer 11 combines both cases with the parent's geometry. Hochschild–Serre and the Leray sequence for `π_HT` reduce the cohomology of `S_K` to that of Igusa varieties. The parent's minimal-stratum concentration concentrates the minimal Newton class in one degree. 9 or 10 then forces that class to be `μ`-ordinary, so the cohomology sits in degree `d`. The Galois representations of Theorem 6.3.1(1) come out of the same argument, with no genericity hypothesis.

## Layer 8: Compact unitary PEL data, Hecke algebras and duality

### 8.1 Compact unitary PEL data (Cases 1 and 2)

Define a compact unitary PEL datum of Caraiani–Scholze type as follows. Take a totally real field `F⁺`, an imaginary quadratic field `𝒦` and their compositum `F = F⁺𝒦`, with the field `𝒦` part of the datum. Take a rational PEL datum `(B, *, V, ⟨·,·⟩, h)` of type (A) whose similitude group `G` over `ℚ` falls in one of two cases ([CS17] §6.3, pp. 756–757, CS17 lines 4363–4379; §5.1, pp. 730–731; §5.6, p. 749).

- Case 1, Kottwitz's simple Shimura varieties. `B` is a central division algebra over `F` of degree `n`, `*` is an involution of the second kind (restricting to `c` on `F`), and `V ≅ B` is the simple left `B`-module.
- Case 2. `B = F`, `* = c`, and `V` is an `n`-dimensional `F`-vector space with an alternating form that is hermitian for `c`. Moreover `F⁺ ≠ ℚ`, `G` is quasi-split at every finite place, and every rational prime ramified in `F` lies in `Spl_{F/F⁺}`.

In both cases `G^ad` is anisotropic over `ℚ`; this is automatic in Case 1. The datum also fixes the following:

- the signatures `(p_τ, q_τ)`, the Hodge cocharacter `μ` and the reflex field `E`;
- a finite set `S` of rational primes outside which `F` and `G` are unramified, with `S ⊂ Spl_{F/F⁺}` in Case 2;
- a neat compact open `K = K_SK^S ⊂ G(𝔸_f)` with `K^S` a product of hyperspecial maximal compact subgroups `K_q`.

`S_K` is the PEL moduli problem over `E`. It is the disjoint union over `a ∈ ker¹(ℚ, G)` of the Shimura varieties `Sh_{K^{(a)}}(G^{(a)}, X^{(a)})`, where the `G^{(a)}` are locally isomorphic to `G` and the levels are transported through fixed local identifications. Put `d = dim S_K = Σ_{τ∈Φ} p_τq_τ`. Record the two cases as two constructors of one structure, so that every statement of Layers 9–11 names the case it uses. The rational PEL datum, its similitude group, signatures and reflex field come from PELModuli §§M0.6, M0.7, M0.13 and M0.16. Type (A) is the second-kind case of PELModuli §M0.2. The `ker¹` decomposition is PELModuli §§M3.1 and M4.3, and the dimension formula is PELModuli §M2.10.

The API:

- A Case 1 datum is built from a rational PEL datum with positivity and Shimura homomorphism `h`, a central division algebra over `F` with an involution of the second kind, and an isomorphism `V ≅ B`.
- A Case 2 datum is built from a rational PEL datum with `B = F`, the condition `F⁺ ≠ ℚ`, quasi-splitness at finite places, the ramification condition, and a proof that `G^ad` is anisotropic over `ℚ`.
- The signature is a function of `τ` with `p_τ + q_τ = n` whose value at `τ ∘ c` is the swap of its value at `τ`.
- The dimension `Σ_{τ∈Φ} p_τq_τ` does not depend on the CM type `Φ`, and it equals `⟨2ρ, μ⟩`.
- The underlying rational PEL datum has type (A) in the classification of PELModuli §M0.2.
- The moduli problem `S_K` is the disjoint union over `ker¹(ℚ, G)` of the Shimura varieties of the inner forms `G^{(a)}` (PELModuli §§M3.4 and M4.3).
- Two data are equal when their underlying rational PEL data, fields `𝒦` and case tags agree, since the remaining hypotheses are propositions.

*Needs:* PELModuli §§M0.2, M0.6, M0.7, M0.13, M0.16, M2.10, M3.1, M3.4, M4.3, M5.5; Mathlib `NumberField.IsCMField`, `NumberField.maximalRealSubfield`.

**Checks.**

- For `n = 1` in Case 2 every signature is `(1, 0)` or `(0, 1)`, so `d = 0` and `G` is a torus. A dimension formula summing `p_τq_τ` over all embeddings rather than over a CM type would still give `0` here, so the next check separates the two.
- For `[F⁺:ℚ] = 2`, `n = 3`, signature `(1, 2)` at `τ₀` and `(0, 3)` at `τ₁` (`τ₀, τ₁ ∈ Φ`), `d = 1·2 + 0·3 = 2`. Summing over all four embeddings gives `4`, which is twice the dimension. For the Harris–Taylor signature (`(1, n−1)` at one `τ₀ ∈ Φ` and `(0, n)` elsewhere) `d = n − 1`.
- The signature at `τ ∘ c` is `(q_τ, p_τ)`. A structure storing an independent signature at `τc` would admit `(1, 2)` at both `τ` and `τc`, which corresponds to no hermitian form.
- `F = 𝒦` (`F⁺ = ℚ`) with `B = F` is not a Case 2 datum. Without the condition `F⁺ ≠ ℚ` the trace comparison of Layer 9, which needs `[F⁺:ℚ] ≥ 2` (EndoscopicTransferAndUnitaryTraceComparison §6.15), would be applied outside its range.
- Case 2 with `n = 3` and signature `(1, 2)` at every `τ ∈ Φ` is not compact. A hermitian space of dimension at least 3 is isotropic at every finite place, so by the Hasse principle for hermitian forms it is isotropic once it is indefinite at every real place of `F⁺`, and then `G^ad` is isotropic. A definition that omits the anisotropy hypothesis in Case 2 would admit this non-proper example.

### 8.2 Smooth proper integral models at good primes

Let a compact unitary datum (Case 1 or 2) be given, and let `p ∉ S`, so that `F` and `G` are unramified at `p` (in Case 1, `B` splits at every place of `F` above `p`). Let `K = K_pK^p` with `K_p` hyperspecial and `K^p` neat, and let `𝔭 | p` be a prime of `E`. Prove that the PEL moduli problem is represented by a scheme `𝒮_K` over `O_{E,𝔭}` that is smooth and proper of relative dimension `d`, with generic fibre `S_K ⊗_E E_𝔭`. Prove also that the prime-to-`p` Hecke correspondences extend to finite étale correspondences of the `𝒮_K` ([CS17] §5.1, pp. 730–731; §4.4, Theorem 4.4.4, p. 726, CS17 line 3236; §6.3, p. 756). In particular every compact unitary datum satisfies the properness hypothesis of the compact fibre theorem (IgusaVarietiesAndTorsionConcentration §IG.3.17).

Representability and smoothness at a good prime are PELModuli §M2.8, with relative dimension from §M2.10. Representability gives a smooth algebraic space. For properness and the scheme assertion, choose a projective admissible fan for ShimuraCompactifications §C5.3. Its toroidal compactification is a proper scheme (§C5.5), and its boundary is indexed by cusp labels (§C1.4), which come from rational parabolic subgroups of `G`. Anisotropy of `G^ad` leaves no proper rational parabolic, hence no boundary, so the toroidal compactification equals the moduli space. In Case 1 PELModuli §M2.11 gives properness directly, since `End_B(V) = B^op` is a division algebra. The prime-to-`p` Hecke correspondences are PELModuli §§M1.13 and M6.1.

*Needs:* PELModuli §§M1.13, M2.8, M2.10, M2.11, M6.1; ShimuraCompactifications §§C1.4, C5.3, C5.5; this roadmap §8.1.

### 8.3 The local datum at an auxiliary prime split in 𝒦

Let `p ∉ S` be split in `𝒦`, `p = uu^c`, and let `𝔭_1, …, 𝔭_m` be the primes of `F` above `u`. Then `pO_F = ∏_i 𝔭_i𝔭_i^c`, and the `𝔭_i` correspond to the primes of `F⁺` above `p`. Fix `𝔭 | p` in `E` and a compatible `ι_p`. Construct the following data and prove their properties ([CS17] §5.4, p. 740; Theorem 5.5.7 and its proof, pp. 747–748, CS17 lines 3978–4036, with footnote 30).

1. An isomorphism `G_{ℚ_p} ≅ ∏_{i=1}^m Res_{F_{𝔭_i}/ℚ_p} GL_n × 𝔾_m`, the last factor being the similitude factor, through the projection `V ⊗ ℚ_p → ⊕_i V ⊗_F F_{𝔭_i}`. In Case 1 it depends on a choice of splitting of `B ⊗_F F_{𝔭_i}`. Hence `G(ℚ_p) ≅ ∏_i GL_n(F_{𝔭_i}) × ℚ_p^×`, and every irreducible `π_p` is `⊗_i π_{𝔭_i} ⊗ π_0`.
2. The sets `S_i = {τ | ι_p⁻¹ ∘ τ induces 𝔭_i}`. They are pairwise disjoint, and `τ` lies in their union exactly when `τc` does not.
3. The decomposition `μ = ((μ_i)_i, μ_0)` with `μ_i = (μ_{i,τ})_{τ∈S_i}` and `μ_{i,τ}(t) = diag(t^{(p_τ)}, 1^{(q_τ)})`.
4. A bijection `B(G, μ⁻¹) = ∏_i B(G_i, μ_i⁻¹)` with `G_i = Res_{F_{𝔭_i}/ℚ_p} GL_n`. For `b = ((b_i), b_0)` it gives `J_b ≅ ∏_i J_{b_i} × 𝔾_m`.
5. Suppose `S_i` contains exactly one `τ` with `p_τq_τ ≠ 0`, and let `c_i` be the number of `τ′ ∈ S_i` of signature `(n, 0)`. Shapiro's bijection followed by `b ↦ p^{c_i}b` identifies `B(G_i, μ_i⁻¹)` with `B(GL_n/F_{𝔭_i}, μ_{i,τ}⁻¹)`. This preserves `J_b` up to restriction of scalars and preserves the `μ`-ordinary class. If `S_i` contains no such `τ`, then `μ_i` is central and `B(G_i, μ_i⁻¹)` is a single point.

The decomposition of `G_{ℚ_p}` comes from `F ⊗ ℚ_p = ∏_i (F_{𝔭_i} × F_{𝔭_i^c})`, with the hermitian pairing identifying the `𝔭_i^c`-part with the dual of the `𝔭_i`-part (PELModuli §M0.27; IgusaVarietiesAndTorsionConcentration §IG.0.11). Products and unramified restriction of scalars in `B(G)` are BunGAndNewtonStrata §1.30. The bound there is the sum of the component cocharacters `Σ_{τ′∈S_i} μ_{i,τ′} = μ_{i,τ} + c_i·z` with `z(t) = t·I_n`. Translation by the central, Frobenius-fixed element `p^{c_i}` subtracts `c_i z` from the bound, preserving `J_b` and the maximal element. [CS17] identifies the two Kottwitz sets without this translation.

The API:

- The places `𝔭_1, …, 𝔭_m` are in bijection with the primes of `F⁺` above `p`.
- The sets `S_i` are pairwise disjoint, and `τ ∈ ⋃_i S_i` if and only if `τc ∉ ⋃_i S_i`.
- `G_{ℚ_p} ≅ ∏_i Res_{F_{𝔭_i}/ℚ_p} GL_n × 𝔾_m`, and the induced decomposition of irreducible representations.
- `B(G, μ⁻¹) ≅ ∏_i B(G_i, μ_i⁻¹)`, compatibly with `J_b`, with `ν_b` and with the `μ`-ordinary class.
- For `S_i` with a single nontrivial `τ`, `B(G_i, μ_i⁻¹) ≅ B(GL_n/F_{𝔭_i}, μ_{i,τ}⁻¹)` through Shapiro and the translation by `p^{c_i}`.
- If `S_i` has no `τ` with `p_τq_τ ≠ 0` then `B(G_i, μ_i⁻¹)` is a singleton.

*Needs:* PELModuli §M0.27; IgusaVarietiesAndTorsionConcentration §IG.0.11; BunGAndNewtonStrata §§1.13, 1.23, 1.30; this roadmap §8.1.

**Checks.**

- If `p` splits completely in `F`, then `m = [F⁺:ℚ]` and every `S_i` is a singleton. A definition of `S_i` through the primes of `F⁺` instead of `F` would put `τ` and `τc` in the same set.
- Take `S_i = {τ, τ′}` with `(p_τ, q_τ) = (1, 1)` and `(p_{τ′}, q_{τ′}) = (2, 0)` (`n = 2`, `c_i = 1`). The Shapiro bound is `diag(t², t) = μ_{i,τ} + z`. Its Kottwitz invariant is `−3`, while that of `μ_{i,τ}⁻¹` is `−1`. Translation by `p` (determinant valuation `2`) carries one set onto the other. Without the translation the two sets would have different `κ`, so they could not be identified.
- For the Harris–Taylor signature with `n ≥ 2`, exactly one `S_i` contains an embedding with `p_τq_τ ≠ 0`, namely the one containing `τ₀` or `τ₀c`, whichever lies over `u`. For `n = 1` every `B(G_i, μ_i⁻¹)` is a point.
- The printed set `{τ | ι_p ∘ τ induces 𝔭_i}` is not defined. A definition through `ι_p ∘ τ` cannot be formed, and through `τ ∘ ι_p` it would need an embedding `F ↪ ℚ̄_p` as input instead of `τ`.

### 8.4 The Hecke algebra `𝕋^S`, the operators `T_{i,v}` and the Hecke polynomial

Fix a prime `ℓ`. Define the abstract Hecke algebra `𝕋^S = ⊗′_{q ∈ Spl_{𝒦/ℚ} ∖ (S ∪ {ℓ})} ℤ[G(ℚ_q)//K_q]`, the restricted tensor product of the spherical Hecke rings ([CS17] §6.3, p. 757, CS17 lines 4380–4383). For `q ∈ Spl_{𝒦/ℚ} ∖ (S ∪ {ℓ})` and a place `v` of `F` above `q` we have `G(ℚ_q) = ∏_w GL_n(F_w) × ℚ_q^×`, with `w` over the place of `𝒦` below `v`. Let `T_{i,v} ∈ ℤ[G(ℚ_q)//K_q]` (`0 ≤ i ≤ n`) be the characteristic function of `GL_n(O_{F_v}) diag(ϖ_v^{(i)}, 1^{(n−i)}) GL_n(O_{F_v}) × ∏_{w≠v} GL_n(O_{F_w}) × ℤ_q^×`. Define `P_v(X) = Σ_{i=0}^n (−1)^i q_v^{i(i−1)/2} T_{i,v} X^{n−i} ∈ 𝕋^S[X]` with `q_v = #(O_F/𝔭_v)` ([CS17] Theorem 6.3.1(1), CS17 lines 4387–4408). [CS17] prints `ℤ_p^×` and `ℚ_p^×` for the similitude factor at `q`; the factor at `q` is `ℤ_q^× ⊂ ℚ_q^×`. `𝕋^S` acts on `H^i(S_{K,Ē}, Λ)` for every coefficient ring `Λ` through the Hecke correspondences of PELModuli §M1.13. For `p ∉ S ∪ {ℓ}`, its subalgebra `𝕋^{S∪{p}}` acts on the cohomology of Igusa varieties through `G(𝔸_f^p)`. The `p`-factor of `𝕋^S` has no such action.

The spherical Hecke ring at `q` is the double-coset ring of SmoothRepresentationsOfLocalGroups SR.1.2 (Mathlib's `HeckeRing` with Tau Ceti's `HeckeCosetModule.instRingHeckeRing`). `T_{i,v}` is the `GL_n(F_v)` generator of SR.4.3 placed in the `v`-factor. `T_{n,v}` is the class of the central element `ϖ_v`, hence a unit. Galois-type maximal ideals follow IntegralHeckeAndGaloisDeterminants §3b.1, with this polynomial and geometric Frobenius.

The API:

- `𝕋^S` is commutative, since each spherical Hecke ring of an unramified group is commutative.
- `T_{0,v} = 1`, and `T_{n,v}` is a unit with inverse the class of `ϖ_v⁻¹`.
- `P_v` is monic of degree `n` with constant term `(−1)^n q_v^{n(n−1)/2} T_{n,v}`.
- For `S ⊂ S′` there is an inclusion `𝕋^{S′} → 𝕋^S`, and localization at `𝔪 ⊂ 𝕋^S` factors through localization at `𝔪 ∩ 𝕋^{S′}` (§11.1).
- Under the Satake isomorphism of SR.4.1 the image of `P_v` is `∏_j (X − q_v^{(n−1)/2} x_j)` in the Satake variables of `GL_n(F_v)`.
- The prime-to-`p` action on Igusa cohomology is a `𝕋^{S∪{p}}`-action compatible with restriction of the finite-level action on `S_K`.

*Needs:* SmoothRepresentationsOfLocalGroups SR.1.2, SR.4.1, SR.4.3; Mathlib `HeckeRing`; Tau Ceti `HeckeCosetModule.instRingHeckeRing`; IntegralHeckeAndGaloisDeterminants §3b.1; PELModuli §M1.13; this roadmap §8.1.

**Checks.**

- For `n = 1`, `T_{1,v}` is the class of `ϖ_v ∈ F_v^×` and `P_v(X) = X − T_{1,v}`. For `n = 2`, `P_v(X) = X² − T_{1,v}X + q_vT_{2,v}`. Omitting the factor `q_v^{i(i−1)/2}` would give constant term `T_{2,v}`, and the roots would then not be the Satake parameters scaled by `q_v^{1/2}`.
- For `n = 2` the Satake image of `P_v` is `(X − q_v^{1/2}x_1)(X − q_v^{1/2}x_2)`. This agrees with the generators of SR.4.3, `S(T_1) = q_v^{1/2}(x_1 + x_2)` and `S(T_2) = x_1x_2`, since `e_2 = q_v x_1x_2 = q_v S(T_2)`.
- The operator defined with the factor `ℤ_p^×` at a prime `q ≠ p` is not an element of `ℤ[G(ℚ_q)//K_q]`, since `ℤ_p^×` is not a subgroup of `ℚ_q^×`. The definition uses `ℤ_q^×`.
- For `p ∉ S ∪ {ℓ}` the spherical `p`-factor belongs to `𝕋^S`, but `G(𝔸_f^p)` supplies no action of it on Igusa cohomology. Forgetting this factor gives the `𝕋^{S∪{p}}`-action.

### 8.5 The dual ideal 𝔪^∨ and its Galois representation

Let `ι` be the involution of `𝕋^S` induced by `[K_qgK_q] ↦ [K_qg⁻¹K_q]`. It is an anti-involution of a commutative ring, hence an involution. Put `𝔪^∨ = ι(𝔪)` for a maximal ideal `𝔪` with finite residue field; it has the same residue field. Prove the following ([CS17] §6.3, proof of Theorem 6.3.1, p. 759).

1. `ι(T_{i,v}) = T_{n,v}⁻¹ T_{n−i,v}`.
2. If `λ_1, …, λ_n ∈ 𝔽̄_ℓ` are the roots of `P_v` modulo `𝔪`, the roots of `P_v` modulo `𝔪^∨` are `q_v^{n−1}λ_1⁻¹, …, q_v^{n−1}λ_n⁻¹`.
3. Let `𝔪` be of Galois type with semisimple `ρ_𝔪 : Gal(F̄/F) → GL_n(𝔽̄_ℓ)`, unramified outside the places above `S ∪ {ℓ}`. Then `𝔪^∨` is of Galois type with `ρ_{𝔪^∨} ≅ ρ_𝔪^∨ ⊗ ε̄^{1−n}`.
4. At a place `𝔭_i` of `F` not above `S ∪ {ℓ}`, `ρ_𝔪` is unramified and decomposed generic if and only if `ρ_{𝔪^∨}` is. Hence a pair `(p, 𝔭)` satisfies the auxiliary-pair condition of §8.7 for `ρ_𝔪` if and only if it does for `ρ_{𝔪^∨}`.

This is the rank-`n` form of IgusaVarietiesAndTorsionConcentration §IG.5.1, with the same involution formalism (Tau Ceti `HeckeAntiInvolution.ofAmbient`). For (1), the double coset of `diag(ϖ_v^{(i)}, 1^{(n−i)})⁻¹` is `ϖ_v⁻¹ · GL_n(O) diag(1^{(i)}, ϖ_v^{(n−i)}) GL_n(O)`, and multiplying by the central double coset `T_{n,v}⁻¹` stays inside a single double coset. For (2), `T_{i,v} ≡ q_v^{−i(i−1)/2} e_i(λ)` modulo `𝔪`. Substituting (1), the coefficient of `X^{n−i}` modulo `𝔪^∨` is `(−1)^i q_v^{i(n−1)} e_i(λ⁻¹)`; the exponent is `i(i−1)/2 + n(n−1)/2 − (n−i)(n−i−1)/2 = i(n−1)`. Part (3) is AutomorphicGaloisRepresentationsPartII AG2.7 «Dual and character-twist Hecke comparison» at rank `n`, with uniqueness from Brauer–Nesbitt and Chebotarev. For (4), the ordered-ratio condition is invariant under `λ ↦ q_v^{n−1}λ⁻¹`, which sends `λ_a/λ_b` to `λ_b/λ_a`, and duals and cyclotomic twists preserve unramifiedness at `𝔭_i ∤ ℓ`.

*Needs:* IgusaVarietiesAndTorsionConcentration §IG.5.1; Tau Ceti `HeckeAntiInvolution.ofAmbient`, `HeckeAntiInvolution.onHeckeCoset`; AutomorphicGaloisRepresentationsPartII AG2.7 «Dual and character-twist Hecke comparison», «Strong local decomposed genericity»; ArithmeticGaloisRepresentations §§1.8, 5.9; this roadmap §8.4.

### 8.6 Hecke-equivariant Poincaré duality on S_K and on Mantovan's Igusa varieties

Prove the following two duality statements ([CS17] §6.3, proof of Theorem 6.3.1, p. 759; §5, introduction, p. 729).

1. Let `Λ = ℤ/ℓ^r`. The Poincaré pairing `H^i(S_{K,Ē}, Λ) × H^{2d−i}(S_{K,Ē}, Λ(d)) → Λ` of the smooth proper `E`-variety `S_K` is perfect, and the transpose of `t ∈ 𝕋^S` is `ι(t)`. Hence, for every maximal ideal `𝔪 ⊂ 𝕋^S`, `RΓ(S_{K,Ē}, Λ)_𝔪 ≅ RHom_Λ(RΓ(S_{K,Ē}, Λ)_{𝔪^∨}, Λ)[−2d](−d)`. In particular, if `H^i(S_K, 𝔽_ℓ)_{𝔪^∨} = 0` for all `i < d`, then `H^i(S_K, 𝔽_ℓ)_𝔪 = 0` for all `i > d`. The same holds for `𝔽_ℓ`-local systems `L` on `S_K` attached to finite `𝔽_ℓ[K/K′]`-modules, with `L^∨(d)` on the dual side.
2. Let `p ∉ S ∪ {ℓ}` be split in `𝒦` and `b ∈ B(G, μ⁻¹)`. For the operators of `𝕋^{S∪{p}}`, `RΓ_c(I^b_{Mant,m}, Λ)_{𝔪^∨} ≅ RHom_Λ(RΓ(I^b_{Mant,m}, Λ)_𝔪, Λ)[−2d_b](−d_b)`. This is compatible with pullback along the finite étale transition maps on `RΓ` and trace on `RΓ_c`.

Perfectness of the pairing for smooth varieties with torsion coefficients is EtaleDualityAndPerverseSheaves §0.5, with `H_c = H` because `S_K` is proper (§8.2). A double coset `[KgK]` acts by the correspondence `S_{K∩gKg⁻¹} ⇉ S_K` (pullback, then trace). Its transpose under cup product is the correspondence with the two maps exchanged, which is `[Kg⁻¹K]`. This is the étale form of ArithmeticLocallySymmetricSpaces ALS.5a.4. Since the pairing is `𝕋^S`-equivariant for `t` on the left and `ι(t)` on the right, the `𝔪`-part pairs perfectly with the `𝔪^∨`-part. Part (2) is the argument of IgusaVarietiesAndTorsionConcentration §IG.5.2 for the data of this roadmap. It uses only that `I^b_{Mant,m}` is smooth of dimension `d_b` (its §IG.1.3) and the action away from `p`.

*Needs:* EtaleDualityAndPerverseSheaves §0.5; ArithmeticLocallySymmetricSpaces ALS.5a.2, ALS.5a.4; IgusaVarietiesAndTorsionConcentration §§IG.1.3, IG.1.7, IG.5.2; this roadmap §§8.2, 8.5.

### 8.7 Strong decomposed genericity and Caraiani–Scholze auxiliary pairs

Let `F` be a number field, `L/F` a finite Galois extension, `k` a finite field of characteristic `ℓ`, and `r : Gal(L/F) → GL_n(k)` a homomorphism. Define `IsStrongGenericAt r v` for a prime `v` of `𝓞 F` to mean the following. The prime `v` is maximal and does not contain `ℓ`. For every prime `Q` of `𝓞 L` above `v`, every element of the inertia group of `Q` maps to `1`. For every arithmetic Frobenius `σ` at `Q` (Mathlib `IsArithFrobAt`), the characteristic polynomial of `r(σ)` over `k̄` is `∏_i (X − α_i)` with `α_i/α_j ∉ {1, q_v}` for all `i ≠ j`, where `q_v = #(𝓞 F/v)` ([CS17] Definition 1.9, p. 652, CS17 line 149; Definition 6.2.1, p. 755, CS17 line 4326). Every continuous `ρ̄ : Gal(F̄/F) → GL_n(𝔽̄_ℓ)` has finite image in some `GL_n(k)` and factors through such an `r`. `ρ̄` is unramified and decomposed generic at `v` in the sense of [CS17] exactly when its finite realization satisfies `IsStrongGenericAt` at `v`. Define `IsCompletelySplitStrongGenericPrime r p` to mean the following: `p` is prime, there are `[F:ℚ]` primes of `𝓞 F` above `p` (so `p` splits completely in `F`), and `IsStrongGenericAt r v` holds for every prime `v` above `p`.

Let now `ρ̄ : Gal(F̄/F) → GL_n(𝔽̄_ℓ)` be continuous, semisimple and unramified outside the places above `S ∪ {ℓ}`, for the field `F` of a compact unitary datum. A pair `(p, 𝔭)` is a CS-auxiliary pair for `ρ̄` if `p ∈ Spl_{𝒦/ℚ} ∖ (S ∪ {ℓ})`, `𝔭 | p` is a prime of `E` (equivalently a compatible `ι_p`), and for every prime `𝔭_i` of `F` above `u` (`p = uu^c`) the following holds. The set `S_i` of §8.3 contains at most one `τ` with `p_τq_τ ≠ 0`, and if it contains one, `ρ̄` is unramified and decomposed generic at `𝔭_i` ([CS17] Theorem 6.3.1(2), p. 757, CS17 lines 4409–4413).

The local predicate is AutomorphicGaloisRepresentationsPartII AG2.7 «Strong local decomposed genericity», applied to `ρ̄|_{Gal(F̄_v/F_v)}`. The auxiliary-pair condition depends only on `ρ̄^{ss}`, and arithmetic and geometric Frobenius give the same condition.

The API:

- `IsStrongGenericAt r v` does not depend on the choice of `Q` above `v` or of the Frobenius at `Q`. Two choices of `Q` are conjugate, and two Frobenius elements at `Q` differ by inertia, which `r` kills.
- `IsStrongGenericAt r v` implies the weaker condition `α_i ≠ q_vα_j` for `i ≠ j`. The converse holds when the `α_i` are pairwise distinct.
- `IsStrongGenericAt` is preserved by `r ↦ r^∨ ⊗ χ` for every character `χ` of `Gal(L/F)` unramified at `v`. Applied to `χ = ε̄^{1−n}` (after enlarging `L` by `ζ_ℓ`), this gives the invariance under `𝔪 ↦ 𝔪^∨` of §8.5.
- If `p` splits completely in `F` and `ρ̄` is unramified and decomposed generic at all places above `p`, then every `𝔭 | p` in `E` gives an auxiliary pair, because every `S_i` is a singleton.
- If `p_τq_τ = 0` for every `τ` (definite `G_ℝ`), every `(p, 𝔭)` with `p ∈ Spl_{𝒦/ℚ} ∖ (S ∪ {ℓ})` is an auxiliary pair.
- The auxiliary-pair condition for `ρ̄` holds if and only if it holds for `ρ̄^∨ ⊗ ε̄^{1−n}` and for `ρ̄^{ss}`.

*Needs:* Mathlib `IsArithFrobAt`, `Ideal.inertia`, `Ideal.primesOver`, `Ideal.LiesOver`; AutomorphicGaloisRepresentationsPartII AG2.7 «Strong local decomposed genericity»; this roadmap §8.3.

**Checks.**

- For `n = 1` there are no pairs `i ≠ j`. `IsStrongGenericAt` then reduces to `v ∤ ℓ` and unramifiedness, and the auxiliary-pair condition reduces to the cardinality condition on the `S_i`. A definition that also asked `α_1 ≠ q_v` would wrongly exclude characters.
- For `n = 2`, `q_v = 7` and `ℓ = 11`, repeated eigenvalues `{3, 3}` fail strong genericity (ratio `1`). They satisfy the weaker condition, since `3 ≠ 7·3 = 21 ≡ 10`. A definition with only the weaker condition accepts this example. The weaker condition is satisfied here because `q_v ≢ 1` modulo `ℓ`.
- For `q_v = 7`, `ℓ = 11` and eigenvalues `{1, 2}`, the ordered ratios are `2` and `2⁻¹ = 6`, neither in `{1, 7}`, so the condition holds. Eigenvalues `{1, 7}` fail it.
- If some `S_i` contains two embeddings with `p_τq_τ ≠ 0`, the pair is not auxiliary, whatever `ρ̄` is.
- For `v` above `ℓ` the predicate fails by definition. Without the condition `ℓ ∉ v`, [CS17] Definition 1.9 (which assumes `ℓ ≠ p`) would be applied outside its range.

### 8.8 Existence of auxiliary primes

Prove the following two statements ([CS17] Remarks 6.3.2–6.3.3, p. 758, CS17 lines 4422–4434, with footnote 33; Theorem 1.1 and Remark 1.5, pp. 651–652, CS17 lines 89–112).

(a) `infinite_setOf_isCompletelySplitStrongGenericPrime`: for every finite Galois realization `r`, if some rational prime satisfies `IsCompletelySplitStrongGenericPrime r`, infinitely many do. In particular such primes can be chosen outside any finite set, for example outside `S ∪ {ℓ}`. For each such `p` and every `𝔭 | p`, `(p, 𝔭)` is a CS-auxiliary pair for `ρ̄`.

(b) `infinite_setOf_isStrongGenericAt_degree_one`: if `IsStrongGenericAt r v₀` holds at one prime `v₀` of `𝓞 F` of any residue degree, it holds at infinitely many primes `v` with `#(𝓞 F/v)` prime. Consequently, suppose the signature of `G` is definite at all infinite places of `F⁺` but one, and `ρ̄` is unramified and decomposed generic at some finite place. Then there are infinitely many degree-one places `v` over a rational prime `p ∉ S ∪ {ℓ}` at which `ρ̄` is unramified and decomposed generic. Such a `p` is split in `𝒦`. Let `u` be the place of `𝒦` below `v`. Choose `ι_p`, hence `𝔭`, so that `ι_p⁻¹ ∘ τ₀` induces `v` for the embedding `τ₀` with `p_{τ₀}q_{τ₀} ≠ 0` lying over `u`. Then `(p, 𝔭)` is a CS-auxiliary pair.

For (a), let `L_r` be the field cut out by `r` and `L̃` the Galois closure over `ℚ` of `L_r(ζ_ℓ)`. The prime `p₀` is unramified in `L̃`, since it is unramified in `F`, in `L_r` (because `r` is unramified above it) and in `ℚ(ζ_ℓ)` (because `p₀ ≠ ℓ`). Its Frobenius class in `Gal(L̃/ℚ)` lies in the normal subgroup fixing the Galois closure of `F`. For every place above `p₀` this class determines the Frobenius class in `Gal(L_r/F)`, and it determines `p₀` modulo `ℓ`. Chebotarev (ArithmeticGaloisRepresentations §5.9) gives a positive density of primes with the same class, and each of them satisfies the predicate. This is the argument of AutomorphicGaloisRepresentationsPartII AG2.7 «Infinitely many decomposed generic primes», run with the strong condition. For (b), apply Chebotarev in `Gal(L_r(ζ_ℓ)/F)` to the class of `Frob_{v₀}`. That class fixes `r(Frob_v)` up to conjugacy, and it fixes `q_v` modulo `ℓ` through the action on `ζ_ℓ`. Only places of degree one contribute to the Dirichlet density ([CS17] footnote 33). [CS17] Remark 6.3.3 says there is just one `τ` with `p_τq_τ ≠ 0`. In fact, when the non-definite place is indefinite, there are exactly two such embeddings, `τ₀` and `τ₀c`, one over `u` and one over `u^c`. Only one of them lies in `⋃_i S_i`, and the choice of `ι_p` puts it in the `S_i` with `𝔭_i = v`. If that place is also definite there is none, and the condition holds trivially.

*Needs:* ArithmeticGaloisRepresentations §§5.1, 5.9; AutomorphicGaloisRepresentationsPartII AG2.7 «Infinitely many decomposed generic primes»; this roadmap §§8.3, 8.7.

### Examples

For `n = 2`, `q_v = 7` and `ℓ = 11`, a residual system with Frobenius roots `{1, 2}` at `v` has dual system with roots `{7·1⁻¹, 7·2⁻¹} = {7, 9}` in `𝔽_11`. Both systems are strongly generic at `v`: the ordered ratios of `{7, 9}` are `7·9⁻¹ = 2` and `9·7⁻¹ = 6`, the same set as for `{1, 2}`. The twist `ε̄^{1−n} = ε̄^{−1}` takes the value `7` on a geometric Frobenius. So `ρ_𝔪^∨ ⊗ ε̄^{−1}` has roots `7·λ_j⁻¹`, as §8.5(2) requires. An arithmetic-Frobenius normalization would give `7⁻¹λ_j⁻¹ = {8, 4}`, which does not match.

The other theorems of the layer have these degenerate and boundary cases.

- For `n = 1` in Case 2, `𝒮_K` is finite étale over `O_{E,𝔭}` (§8.2). A Case 2 datum with `G^ad` isotropic, excluded by §8.1, has nonempty toroidal boundary, and its moduli problem is not proper.
- `(𝔪^∨)^∨ = 𝔪`, because `ι` is an involution (§8.5). For `d = 0` the pairing of §8.6(1) is the perfect pairing on functions on a finite set, with `T` and `ι(T)` transposes. With `Λ = 𝔽_ℓ`, `H^d(S_K, 𝔽_ℓ)_𝔪 ≠ 0` if and only if `H^d(S_K, 𝔽_ℓ)_{𝔪^∨} ≠ 0`.
- In §8.8, a prime that splits completely in `F` makes every `S_i` a singleton. In the Harris–Taylor case, part (b) needs one decomposed generic place only ([CS17] Remark 1.5).

### Dependencies

PELModuli §§M0.2, M0.6, M0.7, M0.13, M0.16, M0.27, M1.13, M2.8, M2.10, M2.11, M3.1, M3.4, M4.3, M5.5, M6.1; ShimuraCompactifications §§C1.4, C5.3, C5.5; IgusaVarietiesAndTorsionConcentration §§IG.0.11, IG.1.3, IG.1.7, IG.5.1, IG.5.2; BunGAndNewtonStrata §§1.13, 1.23, 1.30; SmoothRepresentationsOfLocalGroups SR.1.2, SR.4.1, SR.4.3; IntegralHeckeAndGaloisDeterminants §3b.1; AutomorphicGaloisRepresentationsPartII AG2.0, AG2.7; ArithmeticGaloisRepresentations §§1.8, 5.1, 5.9; EtaleDualityAndPerverseSheaves §0.5; ArithmeticLocallySymmetricSpaces ALS.5a.2, ALS.5a.4; Mathlib `NumberField.IsCMField`, `HeckeRing`, `IsArithFrobAt`; Tau Ceti `HeckeCosetModule.instRingHeckeRing`, `HeckeAntiInvolution.ofAmbient`.

## Layer 9: Generic principal series and the μ-ordinary obstruction for the quasi-split datum

Throughout this layer we work in the Case 2 setting. That is, a Case 2 datum of §8.1, a prime `p ∉ S` split in `𝒦` with `K_p` hyperspecial, `S′ = S ∪ {∞, p} ∪ Ram(ϖ)` for a Hecke character `ϖ` of `𝒦` as in the conventions, and a fixed `ι_ℓ`. The trace comparison uses `[F⁺:ℚ] ≥ 2`.

### 9.1 The stable Igusa trace identity for the compact quasi-split datum

Fix `b ∈ B(G, μ⁻¹)` and the following test functions:

- an unramified `(f_n)^{S′} ∈ H^ur(𝒢_n(𝔸^{S′}))`;
- `f_{n,S′_fin∖{p}} ∈ C_c^∞(𝒢_n(𝔸_{S′_fin∖{p}}))`, with base-change transfers `φ^{S′}` and `φ_{S′_fin∖{p}}` to `G`;
- an acceptable `φ_p ∈ C_c^∞(J_b(ℚ_p))`.

Put `φ = φ^{S′}φ_{S′_fin∖{p}}φ_p`. For each elliptic endoscopic group `G_n⃗` of `G`, take `n⃗ = (n)` or `n⃗ = (n₁, n₂)` with `n₁ ≥ n₂ > 0` and `n₁ + n₂ = n`, omitting the pairs excluded by Kottwitz's condition. Let `φ^n⃗` be Shin's endoscopic test function, and let `f^n⃗` be a base-change matching function on `𝒢_n⃗ = Res_{𝒦/ℚ}(G_n⃗ ×_ℚ 𝒦)`. Its archimedean component `f^n⃗_∞` is the combination of twisted Lefschetz functions attached to the signature of `G_ℝ`. Prove `tr(φ | ι_ℓ[H_c(I^b_Mant, ℚ̄_ℓ)]) = |ker¹(ℚ, G)| τ(G) Σ_n⃗ ε_n⃗ I^{𝒢_n⃗θ}_spec(f^n⃗θ)`, with `ε_n⃗ = 1/2` if `n⃗ = (n/2, n/2)` and `ε_n⃗ = 1` otherwise ([CS17] §5.2, Theorem 5.2.3, Corollary 5.2.5 and Remark 5.2.6, pp. 733–735, CS17 lines 3419–3491; §5.3, Proposition 5.3.1 and Theorem 5.3.2, pp. 737–738, CS17 lines 3551–3603).

A route is the following. Start from Shin's stable trace formula for Igusa varieties of PEL type (A) (EndoscopicTransferAndUnitaryTraceComparison §8.21; [CS17] Theorem 5.2.3), applied to the alternating Igusa cohomology of IgusaVarietiesAndTorsionConcentration §IG.1.8, identified with EndoscopicTransferAndUnitaryTraceComparison §7.10. Since `G` is quasi-split at all finite places, the elliptic endoscopic data of `G` are those of `G_n` (EndoscopicTransferAndUnitaryTraceComparison §1.8), and `ι(G, G_n⃗) = τ(G)τ(G_n⃗)⁻¹|Out|⁻¹` with `|Out| = 2` exactly for `n₁ = n₂` ([CS17] Remark 5.2.6). The stable–twisted identity `ST^{G_n⃗}_e(φ^n⃗) = τ(G_n⃗) I^{𝒢_n⃗θ}_spec(f^n⃗θ)` holds for every rank and both parities and for `G_ℝ` of arbitrary signature (EndoscopicTransferAndUnitaryTraceComparison §6.25). That identity uses `[F⁺:ℚ] ≥ 2` (§6.15) and the archimedean matching of §6.10. Matching at the other places uses the unramified transfers of §6.8 away from `S′`, the base-change transfer of §6.9 at `S′_fin ⊂ Spl_{F/F⁺}`, and surjectivity of `BC^*` at the split prime `p`. The involution `θ` is defined by `g^♯ = Φ ᵗ(g^c)⁻¹ Φ⁻¹`.

*Needs:* EndoscopicTransferAndUnitaryTraceComparison §§1.8, 6.6–6.10, 6.15, 6.21, 6.25, 7.10, 8.1, 8.21; IgusaVarietiesAndTorsionConcentration §IG.1.8; this roadmap §§8.1, 8.3.

### 9.2 Newton reduction kills generic principal series at a non-quasi-split factor

Work in the split-prime decomposition of §8.3, and let `π^n⃗_p = ⊗_{i=1}^m π^n⃗_{𝔭_i} ⊗ π^n⃗_0 ∈ Irr(G_n⃗(ℚ_p))`, where `G_n⃗(ℚ_p) = ∏_i GL_n⃗(F_{𝔭_i}) × ℚ_p^×`. Suppose that for some `i` the transfer of `π^n⃗_{𝔭_i}` to `GL_n(F_{𝔭_i})` along `η̃_n⃗` is a generic principal series, and `J_{b_i}` is a non-quasi-split inner form of `M_{b_i}`. The transfer is normalized induction twisted by the `ϖ`-character. Prove that `Red^b_n⃗(π^n⃗_p) = 0` ([CS17] §5.4, Lemma 5.4.3 and proof, p. 741, CS17 line 3714; definition of `Red^b_n⃗`, p. 739). [CS17] prints the conclusion as `Red^b_n⃗(π_p) = 0`; the representation reduced is `π^n⃗_p`.

`Red^b_n⃗` is the composite of the normalized Jacquet functors to the effective endoscopic Levi subgroups, transfer along `η̃_n⃗` to `M_b`, and the Langlands–Jacquet map `Groth(M_b(ℚ_p)) → Groth(J_b(ℚ_p))` (EndoscopicTransferAndUnitaryTraceComparison §14.2). All three factor over the `𝔭_i`. A generic principal series has Langlands parameter a sum of characters with no ratio `|·|^{±1}`. Since the `L`-morphism `^LM_{G_n⃗} → ^LM_b` is the restriction of `η̃_{n₁,n₂}`, every constituent of the image in `Groth(M_{b_i}(F_{𝔭_i}))` is an irreducible generic principal series (SmoothRepresentationsOfLocalGroups SR.2.2). The Langlands–Jacquet map of a non-quasi-split inner form kills these (EndoscopicTransferAndUnitaryTraceComparison §10.32), so the `J_{b_i}`-factor and hence the tensor product vanish. The twist `δ̄^{1/2}_{P(ν_b)}` does not affect vanishing.

*Needs:* EndoscopicTransferAndUnitaryTraceComparison §§6.8, 7.5, 10.32, 14.2, 14.3; SmoothRepresentationsOfLocalGroups SR.2.2; this roadmap §8.3.

### 9.3 Spectral expansion of Igusa cohomology for the compact quasi-split datum

Fix `b`, `(f_n)^{S′}`, `f_{n,S′_fin∖{p}}` and their base-change transfers, and let `φ_p ∈ C_c^∞(J_b(ℚ_p))` be arbitrary (not necessarily acceptable). Prove the following ([CS17] §5.5, Lemma 5.5.1 and proof, pp. 741–743, CS17 line 3740; Corollary 5.5.2 and Remark 5.5.3, p. 743, CS17 lines 3804–3829).

1. `tr(φ | ι_ℓ[H_c(I^b_Mant, ℚ̄_ℓ)])` is a finite linear combination of products of three traces: `tr((Π^n⃗)^{S′}((f^n⃗)^{S′}) ∘ A^{S′})`, `tr((Π^n⃗)_{S′_fin∖{p}}(f^n⃗_{S′_fin∖{p}}) ∘ A)` and `tr(Red^b_n⃗(π^n⃗_p)(φ_p))`. Here `Π^n⃗` runs over `θ`-stable irreducible isobaric automorphic representations of `𝒢_n⃗` of the form `n-Ind(Π_M)_ξ` with `Π_M` discrete on a Levi `M`. The component `Π^n⃗_∞` is cohomological for one of the coefficient systems `Ξ(φ_n⃗)` entering `f^n⃗_∞`; it is trivial exactly when `n⃗ = (n)`. Finally `π^n⃗_p ∈ Irr(G_n⃗(ℚ_p))` is the unique representation base-changing to `Π^n⃗_p`.
2. Fix `φ_{S′_fin∖{p}}` and `φ_p` and put `Π^{S′} = ζ̃_{n⃗,*}(Π^n⃗)^{S′}`. Sum the terms of (1) over all `n⃗′` and `Π^{n⃗′}` with `ζ̃_{n⃗′,*}(Π^{n⃗′})^{S′} ≅ Π^{S′}`. If this sum is a nonzero function of `(f_n)^{S′}`, then `Π^{S′}` occurs in `BC^{S′}([H_c(I^b_Mant, ℚ̄_ℓ)]^{S′-ur})`. Conversely, every irreducible `𝒢_n(𝔸^{S′})`-subrepresentation of `BC^{S′}([H_c(I^b_Mant, ℚ̄_ℓ)]^{S′-ur})` is of the form `ζ̃_{n⃗,*}(Π^n⃗)^{S′}`.

Finiteness is for fixed test functions, not uniform in the level. For acceptable `φ_p`, combine §9.1 with the spectral side of the simple twisted trace formula (EndoscopicTransferAndUnitaryTraceComparison §6.22). Each `n-Ind(Π_M)_ξ` is irreducible and isobaric (§6.1 there, and the residual-spectrum classification of AutomorphicSpectralTheory used in §5.1 there). Each is determined by its component outside `S′` (AutomorphicLFunctionsAndLocalFactors AL.3 «Strong multiplicity one»). When `n⃗` is proper, `Π^n⃗_∞` is cohomological for `Ξ(φ_n⃗)` and not for the trivial representation (EndoscopicTransferAndUnitaryTraceComparison §6.10). At `p`, base change at the split prime is injective. So `tr(Π^n⃗_p(f^n⃗_p) ∘ A′_p) = ± tr π^n⃗_p(φ^n⃗_p)`, which §14.3 there rewrites as `tr Red^b_n⃗(π^n⃗_p)(φ_p)`. All `φ_p` are reached by the Frobenius-twist argument (§8.11 there). For (2), rewrite the `(f^n⃗)^{S′}` traces through `ζ̃^*` and `BC^*` (§6.8 there). Once the test functions at the bad places are fixed, only finitely many characters of the commutative unramified Hecke algebra occur, and they are linearly independent. Only the total coefficient of an eigensystem is detected, so the hypothesis of (2) is on that total.

*Needs:* this roadmap §9.1; EndoscopicTransferAndUnitaryTraceComparison §§5.1, 6.1, 6.8, 6.10, 6.22, 8.11, 14.2, 14.3; AutomorphicLFunctionsAndLocalFactors AL.3 «Strong multiplicity one»; IgusaVarietiesAndTorsionConcentration §IG.1.8.

### 9.4 The r-part of the base-changed Igusa class

Let `r : Gal(F̄/F) → GL_n(ℚ̄_ℓ)` be continuous and semisimple, unramified outside the places above `S′ ∪ {ℓ}`. Write `BC^{S′}([H_c(I^b_Mant, ℚ̄_ℓ)]^{S′-ur}) = Σ_j n_j [Π_j^{S′} ⊗ σ_j]`, with `Π_j^{S′}` irreducible unramified representations of `𝒢_n(𝔸^{S′})` and `σ_j` irreducible representations of `G(𝔸_{S′_fin∖{p}}) × J_b(ℚ_p)`. Define the `r`-part `BC^{S′}([H_c(I^b_Mant, ℚ̄_ℓ)]^{S′-ur})_r` as the sub-sum over the `j` with `r_{Π_j^{S′},ℓ} ≅ r` ([CS17] §5.5, paragraph after Remark 5.5.6, p. 746, CS17 lines 3950–3977). By the converse part of §9.3(2), every `Π_j^{S′}` that occurs is `ζ̃_{n⃗,*}(Π^n⃗)^{S′}`. So `r_{Π_j^{S′},ℓ}` is defined by AutomorphicGaloisRepresentationsPartII AG2.2 «The Caraiani–Scholze discrete normalization» and AG2.7 «Unitary discrete-parameter export»: `r_{Π^{S′},ℓ} = ⊕_i r_i ⊗ ε_i`, with Hecke polynomials at the places above `q ∈ Spl_{𝒦/ℚ} ∖ (S′ ∪ {ℓ})` ([CS17] Corollary 5.5.5, CS17 line 3899). It depends only on `Π^{S′}`, by Chebotarev and Brauer–Nesbitt.

The API:

- The class `BC^{S′}([H_c(I^b_Mant, ℚ̄_ℓ)]^{S′-ur})` is the locally finite sum of its `r`-parts over isomorphism classes of `r`.
- The `r`-part is zero if and only if no constituent `Π^{S′}` has `r_{Π^{S′},ℓ} ≅ r`.
- The `r`-part depends only on the isomorphism class of `r`.
- For a constituent of the `r`-part and `v | q ∈ Spl_{𝒦/ℚ} ∖ (S′ ∪ {ℓ})`, the Satake parameters of `Π^{S′}` at `v` are, via `ι_ℓ`, the roots of the characteristic polynomial of `r(Frob_v)`.
- The index `r` is determined by the normalized `GL_n(𝔸_F)`-component. Two constituents that differ only in the `GL_1(𝔸_𝒦)` similitude character have the same index.

*Needs:* this roadmap §9.3; AutomorphicGaloisRepresentationsPartII AG2.2 «The Caraiani–Scholze discrete normalization», AG2.7 «Unitary discrete-parameter export»; ArithmeticGaloisRepresentations §§1.8, 5.9; IgusaVarietiesAndTorsionConcentration §IG.1.8.

**Checks.**

- For the zero class every `r`-part is zero, and for every class the sum of the `r`-parts is the whole class. A definition that selected a single constituent instead of the sub-sum over the index would fail the second test as soon as two constituents share `r`.
- Replacing `BC^{S′}` by base change at the single place `p` (the printed `BC^p`) does not give a sub-sum indexed by Galois representations, since `r_{Π,ℓ}` depends on the component outside `S′`.
- For `n = 1`, `Π = ψ ⊗ Π⁰` has a similitude factor `ψ` on `GL_1(𝔸_𝒦)` and a factor `Π⁰` on `GL_1(𝔸_F)`. Distinct `Π⁰`-components outside `S′` give distinct Galois characters. Changing only `ψ` leaves the index unchanged, so `r`-parts need not separate automorphic characters of `𝒢_1`. A definition indexing by the full character would split this `r`-part in two.

### 9.5 A non-μ-ordinary class has a non-quasi-split factor at a nontrivial 𝔭_i

In the split-prime decomposition of §8.3, assume each `S_i` contains at most one `τ` with `p_τq_τ ≠ 0`. Prove the following. If `b = ((b_i), b_0) ∈ B(G, μ⁻¹)` is not `μ`-ordinary, there is an index `i` such that `S_i` contains a `τ` with `p_τq_τ ≠ 0` and `J_{b_i}` is not quasi-split. Conversely, for the `μ`-ordinary class every `J_{b_i}` is quasi-split, and `J_{b_i} ≅ Res_{F_{𝔭_i}/ℚ_p}(GL_{p_τ} × GL_{q_τ})` at the nontrivial indices ([CS17] proof of Theorem 5.5.7, pp. 747–748; Lemma 5.5.8, p. 748, CS17 line 4037).

The maximal element of the product `B(G, μ⁻¹) = ∏_i B(G_i, μ_i⁻¹)` is the product of the maximal elements (BunGAndNewtonStrata §§1.25, 1.26, 1.30). Each factor `G_i = Res_{F_{𝔭_i}/ℚ_p} GL_n` is quasi-split, so its maximum is the ordinary class. If `S_i` contains no `τ` with `p_τq_τ ≠ 0`, `B(G_i, μ_i⁻¹)` is a point. If it contains exactly one, the identification of §8.3(5) preserves `J_b` up to `Res_{F_{𝔭_i}/ℚ_p}` and preserves the `μ`-ordinary class. By BunGAndNewtonStrata §1.32 only the `μ`-ordinary class then has quasi-split `J_b`, and restriction of scalars preserves quasi-splitness and its failure.

*Needs:* BunGAndNewtonStrata §§1.13, 1.25, 1.26, 1.30, 1.32; this roadmap §8.3.

### 9.6 Genericity forces the μ-ordinary Newton stratum

Fix `ι_p` compatible with `𝔭 | p` and let `r : Gal(F̄/F) → GL_n(ℚ̄_ℓ)` be continuous and semisimple, unramified outside the places above `S′ ∪ {ℓ}`. Assume (i) each `S_i` contains at most one `τ` with `p_τq_τ ≠ 0`. Assume (ii) for each `i` such that `S_i` contains such a `τ`, `r|_{Gal(F̄_{𝔭_i}/F_{𝔭_i})} ≅ χ_{i,1} ⊕ ⋯ ⊕ χ_{i,n}` with `χ_{i,a}χ_{i,b}⁻¹` not the cyclotomic character for all `a ≠ b`. Prove that `BC^{S′}([H_c(I^b_Mant, ℚ̄_ℓ)]^{S′-ur})_r = 0` for every `b ∈ B(G, μ⁻¹)` that is not `μ`-ordinary ([CS17] §5.5, Theorem 5.5.7 and proof, pp. 747–748, CS17 lines 3978–4036).

Suppose the `r`-part is nonzero for a non-`μ`-ordinary `b`. By §9.3(2) there is a `θ`-stable isobaric `Π^n⃗` with nonzero total contribution and `r_{ζ̃_*(Π^n⃗)^{S′},ℓ} ≅ r`, and `π^n⃗_p` is its base-change preimage. Local–global compatibility at `𝔭_i` ([CS17] Remark 5.5.6, exported by AutomorphicGaloisRepresentationsPartII AG2.7 «Unitary discrete-parameter export», with AG2.5 «Caraiani's full away-prime compatibility») and hypothesis (ii) make the transfer of `π^n⃗_{𝔭_i}` a generic principal series at every nontrivial `i`. By §9.5 some nontrivial `i` has `J_{b_i}` not quasi-split. By §9.2, `Red^b_n⃗(π^n⃗_p) = 0`. Every term of the expansion attached to `Π^n⃗` then vanishes for every `φ_p`, which is a contradiction.

*Needs:* this roadmap §§8.3, 9.2, 9.3, 9.4, 9.5; AutomorphicGaloisRepresentationsPartII AG2.5 «Caraiani's full away-prime compatibility», AG2.7 «Unitary discrete-parameter export».

### Examples

At a split `GL_2`-factor with minuscule signature `(1, 1)`, `B(GL_2/F_{𝔭_i}, μ⁻¹)` has two classes. The ordinary class has slopes `(−1, 0)` and `J_b = GL_1 × GL_1`. The basic class has slope `−1/2` and `J_b = D^×`, which is not quasi-split. Let `π_{𝔭_i}` be an unramified generic principal series, for example with Satake ratio not in `{1, q^{±1}}`. Its Jacquet–Langlands image on `D^×` is zero, so it contributes nothing to the basic Igusa class. The trivial representation of `GL_2` is not generic, and its image is `−1_{D^×} ≠ 0`, since `1 = Ind − St` in the Grothendieck group and `St ↦ 1_{D^×}`. A generic `r` therefore excludes the basic factor. This is a local computation and asserts nothing about global data with arbitrarily prescribed signatures. For `n⃗ = (1, 1)` the weight is `ε = 1/2`, not `1`.

Degenerate cases: with `φ_p = 0` both sides of §9.1 vanish, and so does every term of §9.3(1). In §9.3(2), two terms with the same unramified eigensystem and coefficients `1` and `−1` cancel, and (2) then asserts nothing for that eigensystem. If no `S_i` contains a `τ` with `p_τq_τ ≠ 0` (`G_ℝ` definite), `B(G, μ⁻¹)` is a point, and §9.6 is empty.

### Dependencies

Layer 8; EndoscopicTransferAndUnitaryTraceComparison §§1.8, 5.1, 6.1, 6.6–6.10, 6.15, 6.21, 6.22, 6.25, 7.5, 7.10, 8.1, 8.11, 8.21, 10.32, 14.2, 14.3; AutomorphicGaloisRepresentationsPartII AG2.2, AG2.5, AG2.7; AutomorphicLFunctionsAndLocalFactors AL.3; BunGAndNewtonStrata §§1.13, 1.25, 1.26, 1.30, 1.32; SmoothRepresentationsOfLocalGroups SR.2.2; ArithmeticGaloisRepresentations §§1.8, 5.9; IgusaVarietiesAndTorsionConcentration §IG.1.8.

## Layer 10: Kottwitz's simple Shimura varieties

Throughout this layer we work in the Case 1 setting. That is, a Case 1 datum of §8.1 (`B` a central division algebra of degree `n` over `F` with an involution of the second kind, `V ≅ B`) and a prime `p ∉ S` split in `𝒦`. Then `B` splits at every place of `F` above `p` and `G(ℚ_p) ≅ ∏_i GL_n(F_{𝔭_i}) × ℚ_p^×`. Also `K_p` is hyperspecial, `G_n` is the quasi-split inner form of `G` over `ℚ` with a fixed isomorphism `G_n ≅ G` over `ℚ_p`, and `ι_ℓ` is fixed.

### 10.1 Only the stable term in the Igusa trace formula

Let `b ∈ B(G, μ⁻¹)` and `φ = φ^pφ_p ∈ C_c^∞(G(𝔸_f^p) × J_b(ℚ_p))` with `φ_p` acceptable. Prove `tr(φ | ι_ℓ[H_c(I^b_Mant, ℚ̄_ℓ)]) = |ker¹(ℚ, G)| ι(G, G_n) ST^{G_n}_e(φ^{G_n})`, where `φ^{G_n}` is Shin's test function for the trivial endoscopic datum ([CS17] §5.6, Proposition 5.6.1 and proof, p. 749, CS17 lines 4068–4072).

Start from Shin's stable trace formula (EndoscopicTransferAndUnitaryTraceComparison §8.21), a sum over the elliptic endoscopic data of `G_n` (§1.8 there). The proper terms vanish as follows. For a proper datum `G_{n₁,n₂}`, let `d_v` be the local index of `B` at a place `v` of `F`. Since `B` is a division algebra of degree `n`, `lcm_v d_v = n`, so some `v` has `d_v ∤ n₁`. At that place the local factor of `G` is `GL_{n/d_v}(D_v)`, and that of the endoscopic group is `GL_{n₁} × GL_{n₂}`. An element of `GL_n(F_v)` coming from `GL_{n/d_v}(D_v)` has characteristic polynomial whose irreducible factors have degrees divisible by `d_v`. For the image of a `(G, H)`-regular `γ_H` this would force `d_v | n₁`. So no such `γ_H` has an image (§1.16 there), the transfer of `φ_v` vanishes on all `(G, H)`-regular classes, and `ST^H_e(φ^H) = 0`. The surviving term is the trivial datum with `ι(G, G_n) = τ(G)τ(G_n)⁻¹`. [CS17] follows Shin's 2012 paper, §6, which assumes `p` inert in `F⁺`. That assumption is not used.

*Needs:* EndoscopicTransferAndUnitaryTraceComparison §§1.8, 1.16, 6.7, 6.23, 7.10, 8.1, 8.21; IgusaVarietiesAndTorsionConcentration §IG.1.8; this roadmap §§8.1, 8.3.

### 10.2 The stable Lefschetz identity for the simple Shimura variety

Put `[H(Sh, ℚ̄_ℓ)] = Σ_i (−1)^i colim_K H^i(S_{K,Ē}, ℚ̄_ℓ) ∈ Groth(G(𝔸_f))`. Let `Red^b_n : Groth(G(ℚ_p)) → Groth(J_b(ℚ_p))` be the Newton reduction for the trivial datum: the normalized Jacquet functor, then the Langlands–Jacquet map, with the modulus twist. It is applied to the `p`-component through `G(ℚ_p) ≅ G_n(ℚ_p)`. Prove `Red^b_n([H(Sh, ℚ̄_ℓ)]) = ε_G · d(G_ℝ) · [H_c(I^b_Mant, ℚ̄_ℓ)]` in `Groth(G(𝔸_f^p) × J_b(ℚ_p))`, where `ε_G` and `d(G_ℝ)` are nonzero constants depending only on `G`. They are produced by comparing the Euler–Poincaré function of `G(ℝ)` with Shin's archimedean test function for the trivial datum ([CS17] §5.6, p. 749, CS17 lines 4073–4078).

A route is the following. Since `S_K` is proper, `H^*(S_{K,Ē}, ℚ̄_ℓ) ≅ H^*(S_K(ℂ), ℂ)` through `ι_ℓ` and Artin's comparison (ComplexComparisonPartII §§C6.3–C6.4), Hecke-equivariantly. Arthur's `L²`-Lefschetz formula for a compact quotient (AutomorphicSpectralTheory §§6.17, 6.19, 6.20) gives the following for `f ∈ C_c^∞(G(𝔸_f))`. We have `tr(f | [H(Sh)]) = Σ_{a∈ker¹(ℚ,G)} Σ_{π on G^{(a)}} m_a(π) tr π_f(f) ep(π_∞) = Σ_a I^{G^{(a)}}(f^{(a)} f_EP^{(a)})`. The geometric side has only elliptic terms, because the Euler–Poincaré function is stable cuspidal. All terms use the fixed local identifications with `G`. Stabilize the elliptic terms (EndoscopicTransferAndUnitaryTraceComparison §6.18). The proper endoscopic terms vanish by the local-index argument of §10.1, leaving `ι(G, G_n) ST^{G_n}_e(f^{G_n})`. Take `f = φ^p f_p` with `f_p` the transport of `φ^{G_n}_p` to `G(ℚ_p)`. Then `tr π_p(f_p) = tr Red^b_n(π_p)(φ_p)` (EndoscopicTransferAndUnitaryTraceComparison §14.3). The archimedean test functions differ by the nonzero factor `ε_G d(G_ℝ)` (§6.10 there). Comparing with §10.1 gives the identity for acceptable `φ_p`. It extends to all `φ_p` by the Frobenius-twist argument (§8.11 there; [CS17] prints the reference as Lemma 6.4 of [Shi11], and the lemma is in Shin's *Counting points on Igusa varieties*). Nondegeneracy of the trace pairing gives the identity in the Grothendieck group.

*Needs:* ComplexComparisonPartII §§C6.3–C6.4; AutomorphicSpectralTheory §§6.17, 6.19, 6.20; EndoscopicTransferAndUnitaryTraceComparison §§1.16, 6.10, 6.18, 8.11, 14.2, 14.3; this roadmap §§8.2, 10.1.

### 10.3 Igusa cohomology of simple Shimura varieties in terms of automorphic representations

Prove that in `Groth(G(𝔸_f^p) × J_b(ℚ_p))`, `[ι_ℓH_c(I^b_Mant, ℚ̄_ℓ)] = (−1)^{q(G)} Σ_{π_f} c(π_f) [π_f^p] [Red^b_n(π_p)]` ([CS17] §5.6, Corollary 5.6.2, p. 749, CS17 lines 4082–4090). The sum runs over the irreducible admissible `π_f` of `G(𝔸_f)` such that `π_f ⊗ π_∞` is automorphic on some `G^{(a)}` for some `π_∞` cohomological for the trivial representation. The coefficient is `c(π_f) = (−1)^{q(G)}(ε_G d(G_ℝ))⁻¹ Σ_{a∈ker¹(ℚ,G)} Σ_{π_∞ on G^{(a)}} m_a(π_f ⊗ π_∞) ep(π_∞)`, with the following ingredients:

- `m_a` is the automorphic multiplicity on the component `G^{(a)}`, with finite parts transported to `G` by the fixed local identifications;
- `ep(π_∞) = Σ_i (−1)^i dim H^i(𝔤, K_∞; π_∞)`;
- `q(G) = ½ dim G(ℝ)/K_∞A_{G,∞}^0`.

The sum is locally finite: for each compact open subgroup only finitely many terms have invariants.

Apply Matsushima's formula separately to each component `Sh_{K^{(a)}}(G^{(a)}, X^{(a)})` of `S_K`. It gives `H^*(S_K(ℂ), ℂ) = ⊕_a ⊕_{π on G^{(a)}} m_a(π) π_f^K ⊗ H^*(𝔤, K_∞; π_∞)` (ArithmeticLocallySymmetricSpaces ALS.5b.4; AutomorphicSpectralTheory §4.7). So the coefficient of `[π_f]` in `[H(Sh)]` is `Σ_a Σ_{π_∞} m_a(π_fπ_∞) ep(π_∞)`. Apply §10.2 and divide by `ε_G d(G_ℝ)`; `Red^b_n` acts only on the `p`-component. Only `π_∞` with `H^*(𝔤, K_∞; π_∞) ≠ 0` contribute.

*Needs:* ArithmeticLocallySymmetricSpaces ALS.5b.4; AutomorphicSpectralTheory §4.7; ComplexComparisonPartII §§C6.3–C6.4; this roadmap §10.2.

### 10.4 Galois representations for the division-algebra unitary group

Let `π = π_f ⊗ π_∞` be automorphic on `G(𝔸)` with `π_∞` cohomological for the trivial representation, and let `S_π` be the finite set of primes where `G` or `π` ramifies. Prove the following ([CS17] §5.6, p. 749, CS17 lines 4091–4093; [Shin-BCU] Theorem 1.1, pp. 1–2, Shin-BCU lines 41–52, for B = F).

- There is an isobaric automorphic representation `Π = ψ ⊗ Π⁰` of `GL_1(𝔸_𝒦) × GL_n(𝔸_F)`, with `Π⁰ = Π_1 ⊞ ⋯ ⊞ Π_r` and each `Π_j` discrete and conjugate self-dual. It satisfies `Π_v ≅ BC_v(π_v)` at every finite place `v ∉ S_π`, and at every `v ∈ S_π` split in `𝒦` above which `B` splits. Its component `Π⁰_∞` has the infinitesimal character of the base change of the trivial representation.
- There is a continuous semisimple `r_{π,ℓ} : Gal(F̄/F) → GL_n(ℚ̄_ℓ)`. It is unramified at every finite place of `F` above `q ∉ S_π ∪ {ℓ}`, including `q` not split in `𝒦`, and the characteristic polynomial of `r_{π,ℓ}(Frob_v)` is the image of `P_v` under the Satake parameters of `π_v`.
- `WD(r_{π,ℓ}|_{Gal(F̄_w/F_w)})^{F-ss} ≅ ι_ℓ⁻¹ rec(Π⁰_w |det|^{(1−n)/2})` at every place `w ∤ ℓ` of `F` above a prime split in `𝒦` at which `B` splits.

The route has two steps. The first is base change, through the point-counting formula for the proper `S_K`, its stabilization against the twisted trace formula of `Res_{𝒦/ℚ} G_𝒦`, and purity to rule out cancellation. For B = F this is [Shin-BCU] Theorem 1.1. For `B` a division algebra, the group `Res_{𝒦/ℚ}(G ×_ℚ 𝒦)` has factors `(B ⊗_F F_w)^×` where `B` ramifies, so the transfer to `GL_n(𝔸_F)` also needs the global Jacquet–Langlands correspondence. The second step is Galois representations of the conjugate self-dual discrete pieces `Π_j` with their algebraic twists (AutomorphicGaloisRepresentationsPartII AG2.3 «Arbitrary regular conjugate-self-dual existence»). Local compatibility comes from AG2.5 «Caraiani's full away-prime compatibility». The base change of every locally isomorphic inner form, the assembly at every rank `n` and unramifiedness at all good places are the contract gap:division-algebra-unitary-base-change. The Hecke polynomial matching at `v | q ∈ Spl_{𝒦/ℚ} ∖ (S_π ∪ {ℓ})` uses the unramified base-change identity (EndoscopicTransferAndUnitaryTraceComparison §6.8) and the Satake normalization of §8.4.

*Needs:* AutomorphicGaloisRepresentationsPartII AG2.2 (gap:division-algebra-unitary-base-change), AG2.3 «Arbitrary regular conjugate-self-dual existence», AG2.5 «Caraiani's full away-prime compatibility»; EndoscopicTransferAndUnitaryTraceComparison §§6.8, 6.23, 6.25; this roadmap §§8.1, 8.4.

### 10.5 The r-part of the Igusa class of a simple Shimura variety

Let `r : Gal(F̄/F) → GL_n(ℚ̄_ℓ)` be continuous and semisimple. Define the `r`-part `[H_c(I^b_Mant, ℚ̄_ℓ)]_r = (−1)^{q(G)} Σ_{π_f : r_{π,ℓ} ≅ r} c(π_f)[π_f^p][Red^b_n(π_p)]`. It is the sub-sum of the formula of §10.3 over the `π_f` whose Galois representation of §10.4 is isomorphic to `r` ([CS17] §5.6, pp. 749–750, CS17 lines 4093–4099). It is well defined, because `r_{π,ℓ}` depends only on the components of `π_f` at almost all places split in `𝒦` (Chebotarev and Brauer–Nesbitt).

The API:

- The Igusa class is the locally finite sum of its `r`-parts over isomorphism classes of `r`.
- The `r`-part depends only on the isomorphism class of `r`.
- The `r`-part vanishes if and only if the terms `c(π_f)[π_f^p][Red^b_n(π_p)]` with `r_{π,ℓ} ≅ r` sum to zero.
- Each `π_f` in the `r`-part has Satake parameters at `v | q ∈ Spl_{𝒦/ℚ} ∖ (S_π ∪ {ℓ})` given by the eigenvalues of `r(Frob_v)`.

*Needs:* this roadmap §§10.3, 10.4; ArithmeticGaloisRepresentations §§1.8, 5.9.

**Checks.**

- The `r`-part of the zero class is zero. If `Red^b_n(π_p) = 0` for every `π_f` with `r_{π,ℓ} ≅ r`, the `r`-part is zero.
- For `n = 1` the `r`-part is the sum over the automorphic characters `π` of `G(𝔸)` whose `ℓ`-adic character is `r`. An index by the full automorphic character would separate characters that differ only on the similitude factor, which have the same `r`.
- A single `π_f` with `c(π_f) ≠ 0` and `r_{π,ℓ} ≅ r` need not give a nonzero `r`-part. Two `π_f` with equal `π_f^p`, equal `Red^b_n(π_p)` and opposite coefficients cancel. A "pointwise" definition, asserting nonvanishing for each contributing `π_f`, fails this test.

### 10.6 Genericity forces μ-ordinarity for simple Shimura varieties

With `ι_p` compatible with `𝔭 | p`, let `r : Gal(F̄/F) → GL_n(ℚ̄_ℓ)` be continuous and semisimple. Assume each `S_i` contains at most one `τ` with `p_τq_τ ≠ 0`. Assume also that for each `i` such that `S_i` contains such a `τ`, `r|_{Gal(F̄_{𝔭_i}/F_{𝔭_i})}` is a sum of characters `χ_{i,1} ⊕ ⋯ ⊕ χ_{i,n}` with `χ_{i,a}χ_{i,b}⁻¹` not the cyclotomic character for `a ≠ b`. Prove that `[H_c(I^b_Mant, ℚ̄_ℓ)]_r = 0` for every non-`μ`-ordinary `b ∈ B(G, μ⁻¹)` ([CS17] §5.6, Corollary 5.6.3, p. 750, CS17 lines 4102–4111).

For `π_f` in the `r`-part, local–global compatibility at `𝔭_i` (§10.4; `B` splits above `p`) and the hypothesis make `π_{𝔭_i}` a generic principal series at every nontrivial `i`. For non-`μ`-ordinary `b`, §9.5 gives a nontrivial `i` with `J_{b_i}` not quasi-split. §9.2 for the trivial datum `n⃗ = (n)` then gives `Red^b_n(π_p) = 0`, so every term of the `r`-part vanishes.

*Needs:* this roadmap §§8.3, 9.2, 9.5, 10.4, 10.5.

### Examples

For `n = 1`, `B = F`. There is no proper endoscopy, the identity of §10.1 is the trivial-datum case of Shin's formula, and §10.4 is class field theory for the torus `G`. In the Harris–Taylor case with `b` basic, §10.2 expresses the Igusa class of the basic stratum through the Jacquet–Langlands transfer of the global cohomology. For the `μ`-ordinary `b`, `Red^b_n` is the normalized Jacquet functor to `M_b = J_b` followed by the modulus twist `δ̄^{1/2}_{P(ν_b)}`. The twist is kept in the ordinary case too.

Suppose `ker¹(ℚ, G)` has two elements and the transported multiplicities are `m₁` and `m₂`. Then the coefficient in §10.3 uses `m₁ + m₂`. Keeping only one component fails, unless all component multiplicities coincide, in which case the coefficient is `|ker¹|` times the single-component one. When every contributing `π_∞` is a discrete series, `ep(π_∞) = (−1)^{q(G)}` and `c(π_f)` is a positive multiple of the summed automorphic multiplicity.

With `φ_p = 0` both sides of §10.1 vanish. One-dimensional automorphic representations (`π_∞` trivial) contribute to §10.3 with `ep(1)` equal to the Euler characteristic of the compact dual symmetric space. In the Harris–Taylor setting of EndoscopicTransferAndUnitaryTraceComparison §6.23, §10.4 is the classical result obtained there through Clozel's base change and the global Jacquet–Langlands correspondence. For definite `G_ℝ`, `B(G, μ⁻¹)` is a point, and §10.6 is empty.

### Dependencies

Layer 8; §§9.2 and 9.5; EndoscopicTransferAndUnitaryTraceComparison §§1.8, 1.16, 6.7, 6.8, 6.10, 6.18, 6.23, 6.25, 7.10, 8.1, 8.11, 8.21, 14.2, 14.3; AutomorphicSpectralTheory §§4.7, 6.17, 6.19, 6.20; ArithmeticLocallySymmetricSpaces ALS.5b.4; ComplexComparisonPartII §§C6.3–C6.4; AutomorphicGaloisRepresentationsPartII AG2.2 (gap:division-algebra-unitary-base-change), AG2.3, AG2.5; ArithmeticGaloisRepresentations §§1.8, 5.9; IgusaVarietiesAndTorsionConcentration §IG.1.8.

## Layer 11: Torsion concentration for compact unitary Shimura varieties

Throughout this layer we fix a compact unitary datum (Case 1 or 2) of §8.1, with `S`, `K = K_SK^S`, a prime `ℓ` and the Hecke algebra `𝕋^S`. Where an auxiliary prime is used, it is `p ∈ Spl_{𝒦/ℚ} ∖ (S ∪ {ℓ})` with `K = K_pK^p` and `K_p` hyperspecial.

### 11.1 Contraction of a maximal ideal to the Hecke operators away from p

Let `S′ ⊇ S` be finite with `ℓ ∉ S′ ∖ S`, let `𝕋^{S′} ⊂ 𝕋^S` be the subalgebra generated by the spherical algebras at the primes of `Spl_{𝒦/ℚ} ∖ (S′ ∪ {ℓ})`, and let `𝔪 ⊂ 𝕋^S` be maximal with finite residue field. Prove the following ([CS17] §6.3, proof of Theorem 6.3.1, p. 759). The contraction `𝔪′ = 𝔪 ∩ 𝕋^{S′}` is maximal. For every `𝕋^S`-module `M`, `M_𝔪` is a localization of `M_{𝔪′}`; hence `M_{𝔪′} = 0` implies `M_𝔪 = 0`. If `M` is finite over a finite ring, `M_{𝔪′} = ⊕_{𝔐 ∩ 𝕋^{S′} = 𝔪′} M_𝔐`.

The image of `𝕋^{S′}` in the finite field `𝕋^S/𝔪` is a finite domain, hence a field, so `𝔪′` is maximal. Elements of `𝕋^{S′} ∖ 𝔪′` lie outside `𝔪`, so localizing at `𝔪` factors through localizing at `𝔪′`. A finite module over a finite ring is a module over an Artinian quotient of `𝕋^S` and splits as the sum of its localizations at maximal ideals.

*Needs:* Mathlib `Localization.AtPrime`, `IsLocalization`; this roadmap §8.4.

### 11.2 Hochschild–Serre between finite level and the perfectoid Shimura variety

Let `𝒮_{K^p} ∼ lim_{K′_p} 𝒮_{K^pK′_p}` be the perfectoid Shimura variety over `C` at infinite level at `p`, and `H^b(𝒮_{K^p}, 𝔽_ℓ) = colim_{K′_p} H^b(S_{K^pK′_p}, 𝔽_ℓ)`. Let `K^p` be small enough for the perfectoid tower. Prove that there is a convergent `𝕋^{S∪{p}}`-equivariant spectral sequence `E_2^{a,b} = H^a_cts(K_p, H^b(𝒮_{K^p}, 𝔽_ℓ)) ⇒ H^{a+b}(S_K, 𝔽_ℓ)`. Consequently, for a maximal ideal `𝔪` of `𝕋^{S∪{p}}`:

- (a) if `H^i(S_K, 𝔽_ℓ)_𝔪 ≠ 0`, then `H^j(𝒮_{K^p}, 𝔽_ℓ)_𝔪 ≠ 0` for some `j ≤ i`;
- (b) if `H^b(𝒮_{K^p}, 𝔽_ℓ)_𝔪 = 0` for all `b < d`, then `H^i(S_K, 𝔽_ℓ)_𝔪 = 0` for all `i < d`

([CS17] §6.3, proof of Theorem 6.3.1, pp. 758–759, CS17 lines 4436–4440, with footnote 34).

The perfectoid representative of the tower (a PEL datum of type (A) is of Hodge type) is PerfectoidShimuraVarieties §2.2. Continuity of étale cohomology along the tower is DiamondEtaleCohomology C0.18. The comparison of algebraic and analytic étale cohomology of the proper `S_{K^pK′_p}` is ClassicalAdicEtaleCohomology §8.2. The map `𝒮_{K^p} → 𝒮_K` is a pro-finite-étale `K_p`-torsor, and the Cartan–Leray spectral sequence with continuous-cohomology `E_2` is ClassicalAdicEtaleCohomology §1.3. Equivalently, it is the colimit of the finite Hochschild–Serre sequences of SchemeAndStackFoundations §2.15. Hecke operators at `q ∉ S ∪ {p, ℓ}` commute with `K_p`, and localization is exact. For (a), let `j₀` be the least degree with `H^{j₀}(𝒮_{K^p})_𝔪 ≠ 0`. Then `E_2^{a,b}` localized at `𝔪` vanishes for `b < j₀`, so `H^i(S_K)_𝔪 = 0` for `i < j₀`. [CS17] asserts `H^i(𝒮_{K^p})_𝔪 ≠ 0` for the least `i` with `H^i(S_K)_𝔪 ≠ 0`. That needs `H^a_cts(K_p, −)` to vanish in positive degrees, which holds for pro-`p` `K_p` but not for hyperspecial `K_p`. Only (a) is used. Part (b) is the same vanishing argument.

*Needs:* PerfectoidShimuraVarieties §2.2; DiamondEtaleCohomology C0.18; ClassicalAdicEtaleCohomology §§1.3, 8.2; SchemeAndStackFoundations §2.15; ArithmeticGaloisDuality R02.2.1; this roadmap §§8.2, 11.1.

### 11.3 Reduction of perfectoid-level cohomology to Igusa cohomology through π_HT

Let `π_HT : 𝒮_{K^p} → Fℓ_{G,μ}` be the Hodge–Tate period map and `𝔪 ⊂ 𝕋^{S∪{p}}` maximal. Prove the following ([CS17] §6.3, proof of Theorem 6.3.1, pp. 758–760; Theorem 4.4.4, p. 726, CS17 line 3236; proof of Corollary 6.1.4, p. 754). `Rπ_HT*𝔽_ℓ` is a complex of sheaves of `𝕋^{S∪{p}}`-modules. For every geometric point `x̄` of `Fℓ^b_{G,μ}`, `((Rπ_HT*𝔽_ℓ)_𝔪)_x̄ ≅ RΓ(Ig^b, 𝔽_ℓ)_𝔪`. Consequently:

- (a) if `RΓ(Ig^b, 𝔽_ℓ)_𝔪 = 0` for every `b ∈ B(G, μ⁻¹)`, then `RΓ(𝒮_{K^p}, 𝔽_ℓ)_𝔪 = 0`;
- (b) if `H^i(Ig^b, 𝔽_ℓ)_𝔪 = 0` for all `i < d` and all `b`, then `H^i(𝒮_{K^p}, 𝔽_ℓ)_𝔪 = 0` for all `i < d`.

The period map is PerfectoidShimuraVarieties §3.5. Hecke operators away from `p` act trivially on `Fℓ_{G,μ}`, so the pushforward is a complex of sheaves of `𝕋^{S∪{p}}`-modules. Localization commutes with stalks and with cohomology on the qcqs locally noetherian flag variety (ClassicalAdicEtaleCohomology §1.4), with the pushforward bounded below and of finite torsion cohomological dimension. The stalks are given by the compact fibre theorem (IgusaVarietiesAndTorsionConcentration §IG.3.17), Hecke-equivariantly, for the proper integral model of §8.2. Stalks at higher-rank points are controlled by rank-one points (its §IG.3.14), and the strata `Fℓ^b` cover `Fℓ_{G,μ}`. By the Leray spectral sequence on the étale sites (SchemeAndStackFoundations §2.2 on DiamondEtaleCohomology C0.1), `RΓ(𝒮_{K^p}, 𝔽_ℓ)_𝔪 = RΓ(Fℓ_{G,μ}, (Rπ_HT*𝔽_ℓ)_𝔪)`. If all stalks vanish, the complex is zero. If all stalks lie in degrees `≥ d`, so do the complex and its hypercohomology.

*Needs:* PerfectoidShimuraVarieties §3.5; IgusaVarietiesAndTorsionConcentration §§IG.1.7, IG.3.14, IG.3.17; SchemeAndStackFoundations §2.2; DiamondEtaleCohomology C0.1; ClassicalAdicEtaleCohomology §1.4; this roadmap §§8.2, 11.1.

### 11.4 From the minimal Newton stratum to a nonzero dual Galois summand

Let `𝔪 ⊂ 𝕋^{S∪{p}}` be maximal and let `b ∈ B(G, μ⁻¹)` have `d_b` minimal among the classes with `RΓ(Ig^b, 𝔽_ℓ)_𝔪 ≠ 0`. In Case 2 put `S′ = S ∪ {∞, p} ∪ Ram(ϖ)`. Prove the following ([CS17] §6.3, proof of Theorem 6.3.1, pp. 758–759; Corollary 6.1.4 and proof, pp. 753–755, CS17 line 4244).

1. `H^i(Ig^b, 𝔽_ℓ)_𝔪 ≠ 0` only for `i = d_b`. For every Mantovan level `m` large enough, `H^i(I^b_{Mant,m}, 𝔽_ℓ)_𝔪` is nonzero exactly for `i = d_b`.
2. `H^*(I^b_{Mant,m}, ℤ_ℓ)_𝔪` is free over `ℤ_ℓ` and concentrated in degree `d_b`. `H^*_c(I^b_{Mant,m}, ℤ_ℓ)_{𝔪^∨}` is free, concentrated in degree `d_b`, and nonzero.
3. The `𝔪^∨`-part of `[H_c(I^b_Mant, ℚ̄_ℓ)]^{S′-ur}` is a nonzero element of the Grothendieck group. It is obtained by first selecting the eigenvalues reducing to `𝔪^∨`, then restricting to the operators away from `S′_fin ∪ {ℓ}`.
4. There is a constituent whose unramified component `Π^{S′}` has Hecke eigenvalues lifting `𝔪^∨ ∩ 𝕋^{S′_fin}`, and the `r`-part of the Igusa class is nonzero for `r = r_{Π^{S′},ℓ}` (respectively `r_{π,ℓ}`). In Case 2, `Π^{S′}` is an irreducible subrepresentation of `BC^{S′}([H_c(I^b_Mant, ℚ̄_ℓ)]^{S′-ur})`. In Case 1, it is `π_f^{S′}` for a `π_f` in the formula of §10.3.

For (1), apply compact minimal-stratum concentration (IgusaVarietiesAndTorsionConcentration §IG.4.5) with `S ∪ {p}` in place of `S` and the subalgebra `𝕋^{S∪{p}}`. `𝔪`-torsion and `𝔪`-localization vanish together, since `H^i(Ig^b) = colim_m H^i(I^b_{Mant,m})` with split injective transitions. Invariants under a pro-`p` compact open of `J_b(ℚ_p)` are exact on `𝔽_ℓ`-modules (`ℓ ≠ p`), which gives the finite-level statement (its §§IG.1.4, IG.1.6). For (2), a bounded complex of finite `ℤ_ℓ`-modules whose reduction modulo `ℓ` is concentrated in one degree has free cohomology in that degree only (universal coefficients and Nakayama). §8.6(2) converts this into the statement for `H_c` at `𝔪^∨`. For (3), after `⊗ ℚ̄_ℓ` the `𝔪^∨`-part of `H^*_c` is concentrated in degree `d_b` and nonzero, so the alternating sum has no cancellation. The `S′`-unramified part keeps it, since the level outside `S′` is hyperspecial. For (4) in Case 2, §9.3(2) gives a `Π^{S′}` in `BC^{S′}` with nonzero total contribution. Its eigenvalues reduce to `𝔪^∨` by Deligne–Serre (AlgebraicModularFormsAndSerreWeights R15.5 «The lifting lemma and its sharp limits») applied to the lattice `H^{d_b}_c(I^b_{Mant,m}, ℤ_ℓ)_{𝔪^∨}`. Case 1 is the same with §10.3. Deligne–Serre lifts before the operators at `Ram(ϖ)` are forgotten, but `Π^{S′}` remembers only the contraction to `𝕋^{S′_fin}`. The polynomial comparison for its Galois representation is therefore made only outside `S′_fin ∪ {ℓ}`.

*Needs:* IgusaVarietiesAndTorsionConcentration §§IG.1.4, IG.1.6, IG.1.7, IG.1.8, IG.4.5; AlgebraicModularFormsAndSerreWeights R15.5 «The lifting lemma and its sharp limits»; Mathlib `Module.Free`; this roadmap §§8.5, 8.6, 9.3, 9.4, 10.3, 10.5, 11.1.

### 11.5 Galois representations for torsion Hecke eigensystems

Let `𝔪 ⊂ 𝕋^S` be maximal with `H^i(S_K, 𝔽_ℓ)_𝔪 ≠ 0` for some `i`. Prove that there is a unique continuous semisimple `ρ_𝔪 : Gal(F̄/F) → GL_n(𝔽̄_ℓ)`, unramified outside the places above `S ∪ {ℓ}`, with the following property. For every finite place `v` of `F` above `q ∈ Spl_{𝒦/ℚ} ∖ (S ∪ {ℓ})`, the characteristic polynomial of `ρ_𝔪(Frob_v)` is the image of `P_v` under a fixed embedding `𝕋^S/𝔪 ↪ 𝔽̄_ℓ` ([CS17] §6.3, Theorem 6.3.1(1), p. 757, CS17 lines 4387–4408, and proof, pp. 758–759; Theorem 1.1(1) and Remark 1.2, p. 651, CS17 lines 89–100). No condition at an auxiliary prime is imposed. In Case 1 the statement depends on gap:division-algebra-unitary-base-change. In Case 2, the elimination of `Ram(ϖ)` from the bad set depends on gap:auxiliary-character-finite-avoidance.

The route runs as follows.

1. Choose `p ∈ Spl_{𝒦/ℚ} ∖ (S ∪ {ℓ})` and contract `𝔪` to `𝔪′ ⊂ 𝕋^{S∪{p}}` (§11.1). By §8.6(1), `H^*(S_K, 𝔽_ℓ)_{𝔪^∨} ≠ 0` as well.
2. §11.2(a) gives `RΓ(𝒮_{K^p}, 𝔽_ℓ)_{𝔪′} ≠ 0`. By §11.3(a) some `RΓ(Ig^b, 𝔽_ℓ)_{𝔪′}` is nonzero; take `b` with `d_b` minimal.
3. In Case 2, choose `ϖ` and put `S′ = S ∪ {p, ∞} ∪ Ram(ϖ)`. §11.4 gives a constituent `Π^{S′}` lifting `(𝔪′)^∨ ∩ 𝕋^{S′_fin}`. AutomorphicGaloisRepresentationsPartII AG2.7 «Unitary discrete-parameter export» and «Residual representation of `π`» then give a residual representation unramified outside `S′_fin ∪ {ℓ}`, with the required polynomials at `v` above `Spl_{𝒦/ℚ} ∖ (S′_fin ∪ {ℓ})`. Dualize and twist by §8.5. In Case 1, use §10.4 with bad set `S ∪ {p}`.
4. Uniqueness: two semisimple representations with the same Frobenius characteristic polynomials on a density-one set of places are isomorphic (ArithmeticGaloisRepresentations §§1.8, 5.9; IntegralHeckeAndGaloisDeterminants §1.2).
5. To eliminate every extra bad prime, fix a rational `q ∉ S ∪ {ℓ}` and choose `p ≠ q`. In Case 2, also choose `ϖ` unramified above `q` (gap:auxiliary-character-finite-avoidance). This gives a construction unramified above `q`, with the required polynomial there when `q` splits in `𝒦`. All constructions agree by uniqueness on a common density-one set. Varying `q` gives unramifiedness outside `S ∪ {ℓ}` and all the stated polynomials. Choosing two auxiliary primes eliminates those primes but not `Ram(ϖ)`.

*Needs:* this roadmap §§8.5, 8.6, 10.4, 11.1–11.4; AutomorphicGaloisRepresentationsPartII AG2.7 «Unitary discrete-parameter export», «Residual representation of `π`»; ArithmeticGaloisRepresentations §§1.8, 5.9; IntegralHeckeAndGaloisDeterminants §1.2; EndoscopicTransferAndUnitaryTraceComparison §6.3 (gap:auxiliary-character-finite-avoidance).

### 11.6 Middle-degree concentration of the generic part

Let `𝔪 ⊂ 𝕋^S` be maximal with `H^*(S_K, 𝔽_ℓ)_𝔪 ≠ 0`, and let `ρ_𝔪` be as in §11.5. Suppose there is a CS-auxiliary pair `(p, 𝔭)` for `ρ_𝔪` (§8.7). Prove that `H^j(S_K, 𝔽_ℓ)_𝔪 ≠ 0` only for `j = d = dim S_K` ([CS17] §6.3, Theorem 6.3.1(2), p. 757, CS17 lines 4409–4416, and proof, pp. 759–760; §6.2, Lemma 6.2.2, p. 756, CS17 line 4339).

The route runs as follows.

1. By §8.6(1), and since `𝔪^∨` has a CS-auxiliary pair whenever `𝔪` does (§8.5(4)), it suffices to prove `H^i(S_K, 𝔽_ℓ)_𝔪 = 0` for `i < d` for every such `𝔪`. Contract to `𝔪′ ⊂ 𝕋^{S∪{p}}`. By §11.2(b) it suffices to show `H^i(𝒮_{K^p}, 𝔽_ℓ)_{𝔪′} = 0` for `i < d`.
2. Let `b` have `d_b` minimal with `RΓ(Ig^b)_{𝔪′} ≠ 0`. §11.4 gives a Galois representation `r` with nonzero `r`-part of the Igusa class of `b`. By §11.5 and Chebotarev with Brauer–Nesbitt, the semisimplified reduction of `r` is `ρ_{𝔪^∨} = ρ_𝔪^∨ ⊗ ε̄^{1−n}`, globally and hence at every `𝔭_i`.
3. At each nontrivial `𝔭_i`, `ρ_{𝔪^∨}` is decomposed generic. By the splitting of generic lifts over `F_{𝔭_i}` (IgusaVarietiesAndTorsionConcentration §IG.5.5; [CS17] Lemma 6.2.2), `r|_{Gal(F̄_{𝔭_i}/F_{𝔭_i})}` is a sum of characters with non-cyclotomic ratios. §9.6 (Case 2) or §10.6 (Case 1) forces `b` to be `μ`-ordinary, so `d_b = d`.
4. Since `d_{b′} ≤ d` with equality only for the `μ`-ordinary class, minimality forces every `b′` with `RΓ(Ig^{b′})_{𝔪′} ≠ 0` to be `μ`-ordinary. Its cohomology is concentrated in degree `d` by §11.4(1). So `H^i(Ig^{b′}, 𝔽_ℓ)_{𝔪′} = 0` for `i < d` and all `b′`, and §11.3(b) concludes.

*Needs:* this roadmap §§8.5, 8.6, 8.7, 9.6, 10.6, 11.1–11.5; IgusaVarietiesAndTorsionConcentration §§IG.4.5, IG.5.5.

### 11.7 Caraiani–Scholze's theorem for compact unitary Shimura varieties

Let a compact unitary datum (Case 1 or 2) be given, with `K = K_SK^S` neat and `K^S` hyperspecial; in Case 2, `S ⊂ Spl_{F/F⁺}`. Let `𝔪 ⊂ 𝕋^S` be maximal with `H^i(S_K, 𝔽_ℓ)_𝔪 ≠ 0`. Prove the following ([CS17] §1, Theorem 1.1 with footnote 2, p. 651, CS17 lines 84–95 and 113–115; Remarks 1.2–1.5, pp. 651–652, CS17 lines 96–112; §6.3, Remarks 6.3.2–6.3.3, p. 758).

1. There is an associated `ρ_𝔪 : Gal(F̄/F) → GL_n(𝔽̄_ℓ)` as in §11.5.
2. If some rational prime `p ≠ ℓ` splits completely in `F` and `ρ_𝔪` is unramified and decomposed generic at every place of `F` above `p`, then `i = d`.
3. If `G_ℝ` is definite at all infinite places of `F⁺` but one, and `ρ_𝔪` is unramified and decomposed generic at some finite place of `F`, then `i = d`.

In both (2) and (3), `H^*(S_K, 𝔽_ℓ)_𝔪` is concentrated in degree `d`. [CS17] states Theorem 1.1 for the locally symmetric spaces `X_Γ = Γ\X`, with Theorem 6.3.1 as its precise form for `S_K(ℂ) = ⊔_j Γ_j\X`. The statement here is that precise form, and nothing is asserted about the localized cohomology of a single component.

Part (1) is §11.5. For (2), §8.8(a) provides such a `p` outside `S ∪ {ℓ}`, and every `(p, 𝔭)` is a CS-auxiliary pair; apply §11.6. For (3), §8.8(b) produces a CS-auxiliary pair; apply §11.6. The comparison with the locally symmetric spaces of the introduction is `S_K(ℂ) = ⊔_j Γ_j\X` with `Γ_j = G^{(a)}(ℚ) ∩ g_jKg_j⁻¹` (PELModuli §M3.4).

*Needs:* this roadmap §§8.1, 8.7, 8.8, 11.5, 11.6; PELModuli §M3.4.

### 11.8 Integral coefficients and twisted coefficient systems

Let `𝔪 ⊂ 𝕋^S` satisfy `H^i(S_K, 𝔽_ℓ)_𝔪 = 0` for `i ≠ d`. Prove the following ([CS17] Remark 1.3, p. 651, CS17 line 101; Remark 1.7.1, p. 652, CS17 line 131).

1. `H^i(S_K, ℤ_ℓ)_𝔪 = 0` for `i ≠ d`, and `H^d(S_K, ℤ_ℓ)_𝔪` is a free `ℤ_ℓ`-module.
2. Let `S′ ⊇ S` be finite and `K′ ⊂ K` a normal compact open subgroup with `K′_q = K_q` for `q ∉ S′`. Assume the datum and `K′` satisfy all hypotheses of §11.6 with `S′` in place of `S`; in Case 2 this includes `S′ ⊂ Spl_{F/F⁺}`. Let `V` be a finite `𝔽_ℓ[K/K′]`-module and `L_V` the associated local system on `S_K`. Let `𝔪 ⊂ 𝕋^{S′}` be maximal. Suppose that, if `H^*(S_{K′}, 𝔽_ℓ)_𝔪 ≠ 0`, the representation `ρ_𝔪` attached at level `K′` (§11.5 with `S′` in place of `S`) admits a CS-auxiliary pair. Then `H^i(S_K, L_V)_𝔪 ≠ 0` only for `i = d`.
3. Let `ξ` be an irreducible algebraic representation of `G` over a finite extension `E_λ/ℚ_ℓ` with a `K`-stable `O_λ`-lattice. Suppose the hypotheses of (2) hold at a normal compact open `K′ ⊂ K` on which `L_ξ ⊗ 𝔽_ℓ` becomes constant. Then `H^i(S_K, L_ξ)_𝔪 = 0` for `i ≠ d` and `H^d(S_K, L_ξ)_𝔪` is free over `O_λ`.

In (2) and (3), only Hecke operators at primes where `K′ = K` are used. The existence of a trivializing level satisfying the hypotheses is part of the hypothesis of (3).

For (1), `RΓ(S_K, ℤ_ℓ)_𝔪` is a perfect complex with `RΓ(S_K, ℤ_ℓ)_𝔪 ⊗^L 𝔽_ℓ = RΓ(S_K, 𝔽_ℓ)_𝔪` concentrated in degree `d`. The universal coefficient sequences `0 → H^i(ℤ_ℓ)_𝔪/ℓ → H^i(𝔽_ℓ)_𝔪 → H^{i+1}(ℤ_ℓ)_𝔪[ℓ] → 0` and Nakayama give vanishing for `i ≠ d` and torsion-freeness in degree `d`. For (2), the Galois cover `S_{K′} → S_K` with group `K/K′` trivializes `L_V`. Its Hochschild–Serre spectral sequence `E_2^{a,b} = H^a(K/K′, H^b(S_{K′}, 𝔽_ℓ) ⊗ V) ⇒ H^{a+b}(S_K, L_V)` (SchemeAndStackFoundations §2.15) is `𝕋^{S′}`-equivariant. Localized at `𝔪`, the `E_2` page vanishes outside the row `b = d` by §11.6 at level `K′`, so `H^i(S_K, L_V)_𝔪 = 0` for `i < d`. For the upper bound, Poincaré duality with locally constant coefficients (EtaleDualityAndPerverseSheaves §0.5; §8.6(1)) identifies `H^i(S_K, L_V)_𝔪` with the dual of `H^{2d−i}(S_K, L_{V^∨}(d))_{𝔪^∨}`. That group vanishes for `2d − i < d`, by the lower bound for `V^∨` and `𝔪^∨`; §8.5(4) gives the auxiliary pair for `𝔪^∨` at the same level. For (3), apply (1)–(2) to `L_ξ/λ` and pass to `O_λ` by the argument of (1).

*Needs:* this roadmap §§8.5, 8.6, 11.1, 11.5, 11.6; SchemeAndStackFoundations §2.15; EtaleDualityAndPerverseSheaves §0.5; Mathlib `Module.Free`.

### Examples

For `n = 1`, `d = 0`, every `b` is `μ`-ordinary, and all statements are about functions on a finite set. In this case `ρ_𝔪` is the reduction of the Galois character attached by class field theory to the Hecke character of the torus `G`. Concentration fails without localization: all even-degree groups `H^{2i}(S_K, 𝔽_ℓ)` are nonzero ([CS17] Remark 1.7, CS17 lines 124–130), so `H^0` and `H^d` are both nonzero when `d > 0`. Without localization, `H^0(S_K, L_V) = (H^0(S_{K′}, 𝔽_ℓ) ⊗ V)^{K/K′}`, and the action of `K/K′` on components cannot be ignored. For `V = 𝔽_ℓ` and `K′ = K`, §11.8(2) is §11.6 itself.

Suppose `q` lies in `Ram(ϖ)` but not in `S ∪ {p, ℓ}`. Then one construction in §11.5 gives no unramifiedness at `q`. A second construction must avoid `q` in both its auxiliary prime and its character ramification before uniqueness eliminates `q`.

Further boundary cases for the layer:

- For `S′ = S`, §11.1 is trivial; it is used with `S′ = S ∪ {p}`.
- If `K_p` were pro-`p`, the edge map `H^i(S_K)_𝔪 → H^i(𝒮_{K^p})_𝔪^{K_p}` would be injective in the least degree. For hyperspecial `K_p` this fails in general, which is why §11.2(a) only gives some `j ≤ i`. For `d = 0`, §11.2(b) is empty.
- For the split local `GL_2` datum with `μ = (1, 0)`, the `μ`-ordinary part of the flag variety `ℙ¹` is `ℙ¹(ℚ_p)`, and its stalks in §11.3 are ordinary Igusa cohomology. For restriction-of-scalars factors the flags use the corresponding local field, so ordinary strata are not all `ℚ_p`-rational flags.
- If `b` is `μ`-ordinary then `d_b = d` in §11.4.
- `ρ_{𝔪^∨} ≅ ρ_𝔪^∨ ⊗ ε̄^{1−n}` (§§8.5, 11.5).
- For the Harris–Taylor signature, §11.7(3) needs only one decomposed generic place ([CS17] Remark 1.5).

### Dependencies

Layers 8–10; IgusaVarietiesAndTorsionConcentration §§IG.1.4, IG.1.6, IG.1.7, IG.1.8, IG.3.14, IG.3.17, IG.4.5, IG.5.5; PerfectoidShimuraVarieties §§2.2, 3.5; DiamondEtaleCohomology C0.1, C0.18; ClassicalAdicEtaleCohomology §§1.3, 1.4, 8.2; SchemeAndStackFoundations §§2.2, 2.15; ArithmeticGaloisDuality R02.2.1; AlgebraicModularFormsAndSerreWeights R15.5; ArithmeticGaloisRepresentations §§1.8, 5.9; IntegralHeckeAndGaloisDeterminants §1.2; AutomorphicGaloisRepresentationsPartII AG2.7; EndoscopicTransferAndUnitaryTraceComparison §6.3 (gap:auxiliary-character-finite-avoidance); EtaleDualityAndPerverseSheaves §0.5; PELModuli §M3.4; Mathlib `Localization.AtPrime`, `IsLocalization`, `Module.Free`.

## Downstream consumers

Middle-degree concentration and the Galois representations of torsion eigensystems for compact unitary Shimura varieties are inputs to local–global compatibility and modularity arguments that use the cohomology of compact unitary Shimura varieties with torsion coefficients. The auxiliary-prime existence theorems of §8.8 apply to any residual representation of a number field.

## Worked examples

Let `F⁺` be real quadratic and `n = 3`, in Case 2 with signature `(1, 2)` at `τ₀ ∈ Φ` and `(0, 3)` at `τ₁ ∈ Φ`, so `d = 2`. Let `p = uu^c` be split in `𝒦`. The union `⋃_i S_i` consists of the two embeddings whose restriction to `𝒦` corresponds to `u` under `ι_p`, so it contains exactly one of `τ₀, τ₀c` and exactly one of `τ₁, τ₁c`. Both `τ₀` and `τ₀c` have `p_τq_τ = 2 ≠ 0`, while `τ₁` and `τ₁c` are definite.

- If `p` splits in `F⁺`, `u` has two primes `𝔭_1, 𝔭_2` in `F` of residue degree one and each `S_i` is a singleton. Exactly one of them, say `S_1`, contains the nontrivial embedding, and the auxiliary-pair condition asks for decomposed genericity of `ρ_𝔪` at `𝔭_1` alone, with `q_{𝔭_1} = p`.
- If `p` is inert in `F⁺`, then `m = 1`, and `S_1` contains one embedding from each conjugate pair, exactly one of them nontrivial. The condition asks for decomposed genericity at the single prime `𝔭_1` of residue degree two, with `q_{𝔭_1} = p²`. The definite embedding in `S_1` has signature `(3, 0)` or `(0, 3)`, so the central correction of §8.3 is `c_1 = 1` or `c_1 = 0` accordingly.

In neither case does `p` split completely in `F`, so these auxiliary primes are not covered by the hypothesis of Theorem 1.1(2).

For `n = 2`, `q_v = 7`, `ℓ = 11` and residual Frobenius roots `{1, 2}`, §8.5 gives dual roots `{7, 9}`. §8.7 shows both systems are strongly generic, and the `r` of §11.6 is a sum of characters at `v` by IgusaVarietiesAndTorsionConcentration §IG.5.5.

## References

- **[CS17]** Ana Caraiani, Peter Scholze, *On the generic part of the cohomology of compact unitary Shimura varieties*, Annals of Mathematics 186 (2017), no. 3, 649–766, doi:10.4007/annals.2017.186.3.1; arXiv:1511.02418. Locators are journal pages and theorem numbers; line numbers refer to the cached text of the published PDF.
- **[Shin-BCU]** Sug Woo Shin, *On the cohomological base change for unitary similitude groups*, appendix to W. Goldring, Galois representations associated to holomorphic limits of discrete series, Compositio Mathematica 150 (2014), 191–228. Locators refer to the author's five-page copy.
- **[Shin11]** Sug Woo Shin, *Galois representations arising from some compact Shimura varieties*, Annals of Mathematics 173 (2011), 1645–1741, doi:10.4007/annals.2011.173.3.9.
