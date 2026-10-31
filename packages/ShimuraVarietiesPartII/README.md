# Roadmap: shimura varieties, part II — integral models and common Frobenius classes

**Summary.** This roadmap continues ShimuraVarieties from the canonical generic tower to integral models and their special fibres. From the canonical tower, the integral Siegel models of PELModuli and the universal abelian scheme it builds normalized integral models of Hodge-type Shimura varieties with parahoric level, their integral stacks at arbitrary prime-to-p level, and the canonical étale and crystalline tensors on them. It proves the local structure of these models (the adapted deformation rings, the local-model diagram, the strict and ordinary henselian comparisons, the canonical model in the sense of Kisin–Pappas–Zhou and the extension property over discrete valuation rings), constructs very-good auxiliary Hodge covers and descends to integral models of every abelian-type Shimura variety at p>2 and every connected parahoric level, ramified primes included (KPZ Theorem 7.2.21). On the special fibre it constructs Newton strata, the μ-ordinary locus and the tensor-preserving quasi-isogeny group of a point, and proves density of the ordinary locus, the Tate comparison for that group (HT Corollary 2.1.9), integral functoriality, ordinary special lifts with the full isogeny action (KZ Theorem 4.4.6) and the rational ordinary Frobenius (KZ Corollary 4.4.13). Kottwitz–Rapoport strata and curves over the original residue field (KZ Corollary 5.2.7) then carry the comparison from ordinary points to every point. The end theorem is Kisin–Zhou's: for a strongly acceptable triple and a point of the special fibre over F_q, the geometric q-Frobenius classes of the ℓ-adic local systems, ℓ≠p, are the images of one rational point of the conjugacy quotient Conj(G) (KZ Theorem 5.1.4).

## Scope and ownership

ShimuraVarieties stops at generic canonical models. Its §4.5 (canonical models of tori), §5.6 (potential good reduction of CM abelian varieties), §§6.3–6.6 (connected towers, star products and central-isogeny descent) and §8.1 (the canonical algebraic tower with its right adelic action) are imported. This roadmap begins at integral normalization and owns: normalized Hodge-type integral models, their stacks and canonical tensors (Layer 0); their local geometry (Layer 1); auxiliary Hodge covers (Layer 2); integral component descent to abelian type (Layer 3); Newton strata, the ordinary locus and tensor quasi-isogeny groups on these models (Layer 4); integral functoriality and ordinary special lifts (Layer 5); Kottwitz–Rapoport strata and same-field curves (Layer 6); and the group-valued tower local systems with their Frobenius classes in Conj(G) (Layer 7).

What other roadmaps state is imported by section. PELModuli §§M4.5–M4.6 and §§M6.1–M6.4 state the integral Siegel models, their level changes and the universal polarized abelian scheme; this roadmap owns only the normalization of the Hodge closure inside them. FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII states very-goodness (TD.2), the very-good lattice-chain embeddings (TD.3), versal adapted deformations and integral tensor frames (TD.4), and ordinary adapted lifts with their σ-centralizer action (TD.6); Layers 1, 2 and 5 here specialize these to points of Shimura models. GeometricSatakeAndFusionPartII states the canonical integral local models (LM.3, LM.7) and the same-field Schubert curves on them (LM.5); Layers 1 and 6 transport these to Shimura models. ReductiveGroupsPartII §RG2.3 states full fixers, connected parahorics and Lang's theorem. ReductiveGroupsPartIII states the conjugacy quotient, character separation and finiteness of faithful quotient maps (RG3.0), descent from local realizations and algebraicity (RG3.1), global maximal tori (RG3.2) and cyclic torus closures (RG3.3). BunGAndNewtonStrata states B(G), acceptable classes, the ordinary class and its integral conjugacy. HeckeStacksAndLocalShtukas states local shtuka period towers. IgusaVarietiesAndTorsionConcentration Layers IG.0 and IG.2 state the Newton strata of PEL models; the strata here live on normalized Hodge-type models and agree with those in the common hyperspecial Siegel case. ShimuraCompactifications owns compactifications. AbelianSchemesAndArithmeticModuli states Tate modules, de Rham realizations, Serre–Tate theory, Frobenius semisimplicity and twists by torsors.

The abelian-variety application of KZ §6 (Proposition 6.2.4 through Theorem 6.2.7), stated in ReductiveGroupsPartIII Layer RG3.5, takes the geometric theorem of Layer 7 as its input; nothing of RG3.5 is used here. The Honda–Tate classification of isogeny classes (HT §§2.2–2.3), mod-p uniformization of isogeny classes and special cycles on orthogonal Shimura varieties are not part of this roadmap.

The pinned Tau Ceti abelian varieties and their endomorphism rings and Mathlib's pointwise isocrystals are used unchanged. The rank-two multiplier identity is already in Tau Ceti and appears here only as a Check.

`Suggested.lean` states no theorem: every headline of this roadmap (KZ Theorems 5.1.4 and 4.4.6, KPZ Theorem 7.2.21, KZ Corollaries 4.4.13 and 5.2.7, HT Corollary 2.1.9 and the density of the ordinary locus) is about integral models of Shimura varieties, their special fibres, Newton or Kottwitz–Rapoport strata, tower local systems or conjugacy quotients of reductive groups. None of these carriers exists in Mathlib or Tau Ceti at the pins; Tau Ceti has reductive groups over a field as Hopf algebras, but not their conjugacy quotients. Its module docstring lists each headline with the carrier it lacks.

## Conventions

Let p>2, fix embeddings of Q̄ into C and into Q̄_p, and take the place of the reflex field induced by the latter. Let k be an algebraic closure of the residue field of that place, W=W(k), L=W[1/p] and σ the p-power Frobenius. All algebraic groups are affine of finite type; reductive means smooth with geometrically connected reductive fibres. Tensor stabilizers are equalities of group functors on every coefficient algebra, including square-zero algebras. Schemes and tensor categories are formed in fixed universes, enlarged together under scalar extension. Neat K^p means a sufficiently small prime-to-p level compatible with the Siegel embedding; arbitrary prime-to-p level is treated by the quotient stack of §0.2.

Write G^fix for the full fixer of a point of the extended building and G° for its connected parahoric. KZ writes these as G-tilde and G-script; KPZ writes G-script and G-script-degree-zero. Good and very good are the notions of FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.2/very-good; no other tensor-display notion is introduced. A special Hodge model is the normalized model of a good Hodge embedding with G^fix=G°. Pointwise very-goodness is an extra hypothesis where it is stated and a conclusion at ordinary points (§5.7).

A torus over a finite extension F of Q_p is R-smooth when its Zariski closure in the Weil restriction of the locally finite type Néron model over a splitting field is smooth; a reductive group over a p-adic field is R-smooth when the centralizer of a maximal Q̆_p-split torus is an R-smooth torus (KPZ §2.1.4, p.10).

The corrected Hodge setup (KPZ §7.1.2, p.72) consists of: p>2; G^fix is the stabilizer of a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ) with Λ contained in its symplectic dual; prime-to-p levels are sufficiently small and compatible with the Siegel embedding. Condition (D): for C=ker(G_sc→G_der), every class of H¹(Q,C) whose localization is trivial at every finite ℓ≠p has trivial localization at p. Condition (E): Z_G is an R-smooth torus. (D) and (E) are hypotheses on the auxiliary Hodge cover used in descent, not hypotheses that an abelian-type target admits a Hodge embedding (KPZ §§7.1.2, 7.1.10, pp.72, 75).

Use the tower standard representation V=H₁; the coefficient local system is Isom_tensor(V_Qℓ, T_ℓ(A)⊗Q_ℓ), and its dual is H¹. For a symplectic multiplier c, V∨≅V⊗c⁻¹, so the H¹ version is either the contragredient or this multiplier twist. Geometric q-Frobenius has multiplier q⁻¹ on H₁ and q on H¹. On H₁ the Hodge types are (−1,0),(0,−1); on H¹ they are (1,0),(0,1), with h(z) acting by `z^(-a) zbar^(-b)` on type (a,b). Local models use {μ_h} on V. Contravariant Dieudonné modules D and H¹ use the dual representation, so the Newton bound is {μ_h⁻¹}. D(Q_p/Z_p) has F=σ and D(μ_(p^∞)) has F=pσ. A tensor is transported to a dual factor by the inverse dual map (KZ §§4.1.7, 4.4.1, 5.1.1, pp.30–31, 42, 47).

For an abelian fibre over F_q, π_x denotes its algebraic q-power Frobenius and γ_x=π_x⁻¹ the rational quasi-isogeny acting on H₁ as geometric Frobenius; its contragredient on H¹ is inverse pullback by γ_x. In the dual crystalline tensor frame write F_D=ρ∨(δ)σ with δ∈G(W(F_q)[1/p]). Then `N_r(δ)=δσ(δ)⋯σ^(r-1)(δ)`, r=[F_q:F_p], is the group norm: its standard realization is γ_x and its dual realization is π_x by pullback on D. For the matrix δ_D=ρ∨(δ) the crystalline norm is ρ∨(N_r(δ)); conflating δ_D with the standard tower matrix inverts the determinant. Neither norm is in general an r-th power.

Conj(G) denotes the affine conjugacy quotient of ReductiveGroupsPartIII RG3.0/conjugacy-quotient, with quotient map χ_G. Its geometric points classify semisimple geometric conjugacy classes; its rational points need not have rational representatives and do not distinguish rational conjugacy classes. Characteristic polynomials are det(T−g), with constant coefficient (−1)ⁿdet(g). Extending F_q to F_(q^m) replaces Frobenius by its m-th power.

**Checks.**

- On an elliptic H¹, μ_h(z) acts by z⁻¹ on H^(1,0) and by 1 on H^(0,1); on H₁ the weights are z and 1. Its inverse induces Fil¹=H^(1,0) on the contravariant module. In D the ordinary slopes are (0,1) and the supersingular slopes (1/2,1/2), both of determinant valuation 1. Intrinsically for the GL₂ tower, μ_h⁻¹ has determinant exponent −1, ordinary slopes (0,−1) and basic slopes (−1/2,−1/2); the Kottwitz invariant is −1 for both. Evaluating in V∨ reverses the signs.
- For E: y²=x³+x over F₅, the affine point counts at x=0,1,2,3,4 are 1,0,1,1,0; with the point at infinity #E(F₅)=4 and the trace is 2. The H¹ polynomial is T²−2T+5. Inverting the two roots gives the tower polynomial T²−(2/5)T+1/5; twisting by c⁻¹ multiplies the roots by 5 and restores T²−2T+5. The H₁ and H¹ multipliers are 1/5 and 5.
- For a Teichmüller unit ζ of order 24 in W(F₂₅), δ=ζ has δσ(δ)=ζ·ζ⁵=ζ⁶, whereas δ²=ζ². Over F₂₅ the elliptic H¹ polynomial above becomes T²+6T+25 (trace 2²−2·5=−6) and the tower polynomial T²+(6/25)T+1/25.
- In SL₂(R), rotations through ±π/2 both have trace 0. A conjugator interchanging them anticommutes with the complex structure and has negative determinant, so they are geometrically conjugate but not SL₂(R)-conjugate; the rational quotient forgets that distinction.

## Exact supplier contracts

### From Mathlib

At 6b7abb3c7686292736be2955bd3eb9ebf63b456a: `WittVector.Isocrystal` (Mathlib/RingTheory/WittVector/Isocrystal.lean:113) is a class on a module over `K(p, k)`, the fraction field of `W(k)`, with a Frobenius-semilinear automorphism `Isocrystal.frobenius`, for k a perfect domain of characteristic p. It carries no G-structure, no family and no finite-dimensionality hypothesis; §4.1 compares its fibres with it after forgetting tensors.

### From Tau Ceti

At a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039: `TauCeti.AlgebraicGeometry.AbelianVariety` (TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95) is a proper geometrically integral group object over `Spec K`, with no polarization field. `TauCeti.AlgebraicGeometry.AbelianVariety.End` (TauCeti/AlgebraicGeometry/AbelianVariety/End/Basic.lean:83) is `Additive (A ⟶ A)`, with composition as multiplication; §4.8 rationalizes it. `Matrix.transpose_mul_J_mul_eq_det_smul` (TauCeti/LinearAlgebra/Matrix/SymplecticMultiplier.lean:76) states `Aᵀ * J l R * A = A.det • J l R` for a rank-two block matrix over a commutative ring; it underlies the multiplier Checks of §5.2. `TauCeti.reductiveCommHopfAlgProperty` (TauCeti/Algebra/AlgebraicGroup/Reductive/Basic.lean:70) selects the reductive finite-type commutative Hopf algebras over a field (smooth, geometrically connected, with no nontrivial connected normal smooth unipotent subgroup geometrically); it is the carrier on which ReductiveGroupsPartIII constructs Conj(G), and it supplies no conjugation coaction or quotient.

### From TauCetiRoadmap.ShimuraVarieties

§4.5 (finite étale canonical models of tori, with reciprocity at the reflex place), §5.6 (potential good reduction of CM abelian varieties), §§6.3–6.6 (connected towers with completed symmetry, their canonical formulations, products and central-isogeny descent) and §8.1 (the canonical algebraic level tower with its right G(A_f)-action).

### From TauCetiRoadmap.ShimuraData

Layer 1 (Mumford–Tate groups and Hodge genericity) and Layer 4 (Hodge and abelian type, connected Hodge lifts).

What ShimuraData must provide (gap:hodge-cover-refinement): Layer 4. Refine the connected Hodge lift of an abelian-type datum by the fundamental type-A and quaternionic-D representations and a CM scalar field split at all prescribed p-places, with Hodge cocharacters in the identity component of the matched-multiplier group, as used in KPZ §7.2.3.

What ShimuraData must provide (gap:multiplier-exact-sequences): Layer 4, Hodge-type multiplier sequences. For a Hodge-type datum (G,X) with G^ad Q-simple, with G^c generated by G^der and the largest compact subtorus Z_(G,0) of Z_G and Z^c_G generated by Z_(G^der) and Z_(G,0), prove that the multiplier c of any Hodge embedding gives exact sequences 1 → G^c → G → G_m → 1 and 1 → Z^c_G → Z_G → G_m → 1 (KPZ Lemma 7.2.5, p.78), and hence that the common-multiplier subgroup of a finite product of such data has centre an extension of G_m by the product of the Z^c.

What ShimuraData must provide (gap:matched-fibre-product-centre): Layer 4, matched fibre products. For Hodge-type data (G,X) and (G_2,X_2) with Z^c_G and Z^c_(G_2) tori and G^der → G_2^der a central isogeny inducing (G^ad,X^ad) ≅ (G_2^ad,X_2^ad), let G_3 be the identity component of G ×_(G^ad × G_m) G_2; prove that Z^c_(G_3) ≅ Z^c_(G_2) × Z^c_G, that G_3^der → G^der is an isomorphism with Z_(G_3^der) embedded diagonally, and that 1 → Z^c_(G_2) → Z^c_(G_3)/Z_(G_3^der) → Z^c_G/Z_(G^der) → 1 is exact (KZ Lemma 4.3.8 and its proof, pp.40–41).

What ShimuraData must provide (gap:fundamental-invariant-form): Layer 4, fundamental Hodge embeddings. For a fundamental Hodge embedding (G,X) → (GSp(V),S^±) in the sense of KPZ Definition 7.2.7, p.78, with V an F-vector space for a totally real field F and H′ ⊂ GL_F(V) generated by H^c and F^×, prove that the alternating form can be chosen as Tr_(F/Q) ∘ Ψ with Ψ an F-bilinear alternating form and H′ → GL_F(V) factoring through GSp_F(V,Ψ) (KPZ Lemma 7.2.8, p.79).

### From TauCetiRoadmap.PELModuli

§§M4.5–M4.6 (normal integral Siegel models at higher p-level, their finiteness, normality and flatness, and changes of p-level) and §§M6.1–M6.4 (finite étale level-forgetting and Hecke maps, the moduli stack at arbitrary level and the stacks of polarized abelian schemes with their universal object, including finite flat polarization kernels when p divides the degree).

### From TauCetiRoadmap.AbelianSchemesAndArithmeticModuli

§A4.1 (the integral Tate module), §A4.3 (first de Rham cohomology), §A4.8 (effectivity of polarized formal lifts), §A4.9 (the Serre–Tate equivalence with structures), §A6.7 (Hom is free of finite rank), §A6.14 (positivity of the Rosati involution), §A6.20 (full-level descent of homomorphisms), §A6.21 (Frobenius semisimplicity and centrality of π over F_q), §A6.22 (coefficient Hom spaces and quasi-isogenies), §§A6.28–A6.29 (twists by torsors up to localized isogeny, with their realizations, polarizations and level).

### From TauCetiRoadmap.FiniteFlatGroupsAndIntegralPadicHodgeTheory

§R07.2 (contravariant Dieudonné theory: R07.2.6–R07.2.7 for the module, base change and descent, R07.2.12 and R07.2.14 for μ_(p^∞), Q_p/Z_p and ordinary and supersingular elliptic curves, R07.2.20 for the comparison with the covariant convention).

### From TauCetiRoadmap.FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII

TD.2/very-good and TD.2/tensor-family-independence (very-goodness at a point, independent of the cutting tensor family); TD.3/nonexceptional-embedding, TD.3/D-central-cover, TD.3/A-central-cover and TD.3/polarized-chain (very-good periodic lattice chains in the non-exceptional, D^H and wild type-A cases, and with a perfect pairing); TD.4/integral-tensor-frame and TD.4/crystalline-tensor-integrality (integral tensor frames and integral crystalline and Witt tensor comparison for crystalline lifts with smooth full fixer, without very-goodness); TD.4/versal-adapted (the versal adapted deformation theorem under very-goodness at the point); TD.6/ordinary-adapted-lift and TD.6/sigma-centralizer-action (adapted ordinary lifts with connected fixer, and the lift of all of J_b(Q_p) by quasi-isogenies).

### From TauCetiRoadmap.GeometricSatakeAndFusion

Layer GS0 (Witt affine flag varieties, Schubert geometry, the Bruhat order and Frobenius descent of Schubert indices).

### From TauCetiRoadmap.GeometricSatakeAndFusionPartII

LM.1/adjoint-comparison (adjoint and central derived-isogeny comparisons of local models), LM.3/canonical-abelian-model and LM.7/general-normal-representative (the canonical normal flat projective local model with geometrically reduced special fibre and normal components), LM.3/special-fibre-interfaces (the special fibre as the reduced μ-admissible union with its Schubert stratification) and LM.5/same-field-curve (curves over F_q through an F_q-point of a lower Schubert stratum, dense in a higher one). The local model of a datum (G,{μ},G^fix) is written M_loc(G,{μ}).

What GeometricSatakeAndFusionPartII must provide (gap:local-models): LM.3/canonical-abelian-model and LM.7/general-normal-representative, very-special special fibre. For a very special parahoric and odd p, prove that the geometric special fibre of the canonical normal local model is integral, the μ-admissible set having a unique extremal element, and that the extremal Schubert stratum lies in the smooth locus, including ramified groups (KZ Theorem 4.4.4 and its proof, p.43; §5.2.1, p.49).

### From TauCetiRoadmap.ReductiveGroupsPartII

§RG2.0 (topologies on rational points and closures), §RG2.1 (relative roots and valued root data), §RG2.3 (full fixers, connected parahorics, the very-special connected-fixer criterion of KZ Lemma 4.2.4, central-surjection association, split-kernel exactness, and Lang's theorem for smooth connected groups over finite fields and for the specified pro-connected inverse systems).

### From TauCetiRoadmap.ReductiveGroupsPartIII

RG3.0/conjugacy-quotient (Conj(G), χ_G, base change and functoriality), RG3.0/character-separation (semisimple geometric classes are separated by the characters of all algebraic representations), RG3.0/faithful-quotient-finite (finiteness of Conj(G)→Conj(GL(V)) for a faithful V), RG3.0/orthogonal-outer-action (Out′(H), Conj′(H) and Aut′(H)), RG3.1/finite-fibre-algebraicity, RG3.1/degree-one-residue-descent (an algebraic point of an affine Q-scheme with Q_ℓ-rational realizations at almost all ℓ is rational), RG3.2/elliptic-maximal-torus (a global maximal torus with elliptic real fibre and prescribed p-adic conjugacy class) and RG3.3/cyclic-torus-and-neatness (connected cyclic closures after a uniform power).

What ReductiveGroupsPartIII must provide (gap:rg3-cyclic-torus-and-neatness): RG3.3/cyclic-torus-and-neatness, stable centralizers. With the connected cyclic closure of RG3.3/cyclic-torus-and-neatness, prove that for a semisimple γ∈G(Q) the connected centralizers Z_G(γ^n)° are constant for n divisible enough and then equal the centralizer of the torus generated by γ^n, compatibly with base change to Q_ℓ and Q_p (HT §§2.1.5–2.1.7, pp.22–24).

What ReductiveGroupsPartIII must provide (gap:rg3-r-smooth-tori): RG3.2, R-smooth tori. For a torus T over a finite extension F of Q_p, R-smooth as in Conventions, prove that a finite product of Weil restrictions of tori split by tamely ramified extensions is R-smooth and that an extension of an R-smooth torus by an R-smooth torus is R-smooth (KZ Proposition 2.4.6, p.14; KPZ Proposition 2.1.5(1)–(2), p.10).

What ReductiveGroupsPartIII must provide (gap:rg3-r-smooth-abelian-type): RG3.2, R-smooth centralizers. For p>2 and a reductive group G over Q_p whose adjoint group is a product of Weil restrictions of groups split by tamely ramified extensions and whose centre Z_G is an R-smooth torus, prove that the centralizer of a maximal Q̆_p-split torus of G is R-smooth (KPZ Lemma 7.2.11, pp.80–81).

What ReductiveGroupsPartIII must provide (gap:rg3-stabilizer-closed-immersion): RG3.2, stabilizer closed immersions. For p>2, a closed immersion G → G′ of reductive groups over a finite extension K of Q_p inducing an isomorphism of derived groups with G R-smooth, a finite extension K̃/K and x ∈ B(G,K) with image x′ ∈ B(G′,K̃), prove that G → Res_(K̃/K) G′_K̃ extends to a closed immersion of Bruhat–Tits stabilizer schemes G_x → Res_(O_K̃/O_K) G′_(x′) (KPZ Proposition 2.1.5(3), p.10; KZ Propositions 2.4.8 and 2.4.10, pp.15–16).

What ReductiveGroupsPartIII must provide (gap:rg3-conj-prime-centralizer-dimension): RG3.0/orthogonal-outer-action, centralizer dimension. With Out′(H), Conj′(H) and Aut′(H) as in RG3.0/orthogonal-outer-action, prove that two semisimple geometric points with the same image in Conj′(H) have centralizers of the same dimension (HT §2.1.8, p.24; proof of Corollary 2.1.9, pp.24–25).

What ReductiveGroupsPartIII must provide (gap:compact-quotient-borel): RG3.2, split-group compact quotients. For a connected split reductive group over a nonarchimedean local field and a reductive subgroup with compact homogeneous quotient, supply the Borel-containment argument used in K17 Corollary 2.1.7, p.31, and the resulting equality for a reductive centralizer.

### From TauCetiRoadmap.BunGAndNewtonStrata

§0.5 and §0.8 (point and family G-isocrystals), §1.16 (the finite Frobenius norm centralizer), §§1.22–1.26 (representations detect Newton dominance, acceptable classes B(G,{μ}), the unique maximum, the ordinary class when it exists), §§1.28–1.29 (ordinary classes under a derived isogeny, integral conjugacy of an ordinary admissible element), §1.34 and §1.37 (rational Newton representatives and torus-special acceptable pairs), §2.16 (local constancy of the Kottwitz invariant in families).

### From TauCetiRoadmap.HeckeStacksAndLocalShtukas

Layer HS2 (framed integral-model shtukas, HS2.1; local Shimura varieties and their universal torsors, HS2.10–HS2.11; the adjoint-isomorphism comparison of period towers, HS2.13).

What HeckeStacksAndLocalShtukas must provide (gap:integral-local-shimura): §HS2, especially §§HS2.1, HS2.13. For an odd-p local Shimura datum (G,b,μ) with specified fixer, supply its integral local Shimura variety and the completion comparison used in KPZ Theorem 7.1.8, compatible with universal shtukas and derived-isomorphism maps as in KZ Proposition 4.3.2; include the full-fixer extension, not only a generic period tower.

What HeckeStacksAndLocalShtukas must provide (gap:general-connected-reduction): §HS2. For the integral Hodge-model shtuka at an arbitrary odd-p full fixer, supply the reduction of the integral frame torsor to the connected fixer used in the proof of KPZ Corollary 7.2.24, compatible with adjoint descent.

### From TauCetiRoadmap.CrystallineCohomology

§CR.7.1 (coefficients with Frobenius, filtration and monodromy) and §CR.7.3 (relative crystalline cohomology and the Gauss–Manin connection).

What CrystallineCohomology must provide (gap:cr-crystalline-parallel-transport): §CR.7.3, rigid-analytic transport. For an abelian scheme over the formal deformation space of A_(s0)[p∞] at a point s0 over a perfect field k of characteristic p, formally smooth over W(k), prove that for any two points s, s′ of its rigid generic fibre over finite extensions of W(k)[1/p] the composite of the Berthelot–Ogus isomorphisms H¹_dR(A_s) ≅ D(A_(s0))[1/p] ≅ H¹_dR(A_(s′)) after scalar extension equals Gauss–Manin parallel transport on the rigid open ball, as used in the proof of HT Proposition 1.3.7, pp.17–18.

What CrystallineCohomology must provide (gap:cr-isocrystal-tensor-descent): §CR.7.1, log coefficients and descent. For a flat normal finite-type W(k)-scheme S with a relative Cartier divisor D, U = S − D, and an abelian scheme over U extending to a semi-abelian scheme over S, prove that every global section s of the tensor algebra of R¹π_*Q_p on the generic fibre of U determines a unique morphism of convergent F-isocrystals 1 → E^⊗ on U, E the isocrystal of the p-divisible group, whose value at every point ξ of U over the ring of integers of a finite extension equals D_cris(ξ*s) (HT Corollary A.7, p.39, by Lemma A.4 and Proposition A.6, pp.38–39).

### From TauCetiRoadmap.PadicDifferentialEquationsAndRigidCohomology

§RD.3.43 (Grothendieck–Katz semicontinuity of Newton polygons for convergent F-isocrystals on noetherian bases over a perfect field, singular bases included) and §RD.5.116 (Zarhin's trick: (A×A∨)⁴ is principally polarized).

### From TauCetiRoadmap.PadicHodgeTheory

§5.5 (the tensor-isomorphism torsor of a crystalline representation with its tensor fibre functor, and equality of its integral Kottwitz invariant with the Hodge invariant).

### From TauCetiRoadmap.MotivesAndAlgebraicCycles

Layer 6 (tensor-frame reconstruction and restriction from a tensor stabilizer to the Tannakian group of a generated subcategory, without equality of the two groups) and §6.3 (the closed-immersion criterion of Deligne–Milne Proposition 2.21(b): for a faithful representation V every representation is a subquotient of a finite sum of tensor products of V and V∨).

### From TauCetiRoadmap.AutomorphicBundles

§§B2.4–B2.7 (Betti, étale and de Rham coefficients of full-group representations on the canonical tower and their tensor comparisons, including the Tate line); H¹ uses the dual representation.

### From TauCetiRoadmap.SchemeAndStackFoundations

§§1.17–1.23 (quotients, algebraic stacks, inertia, quotient-stack presentations and descent). Layer 3 here proves effectiveness for the specific arithmetic Δ-action, whose pro-level kernel need not be finite.

### From TauCetiRoadmap.AlgebraicModuliForArithmeticGeometry

Layer 6 (G-rings, henselian approximation and algebraization). Rational local-model points are an additional input when ordinary henselizations are compared (§1.5).

What AlgebraicModuliForArithmeticGeometry must provide (gap:finite-field-bertini): Layer 1. For a smooth geometrically irreducible finite-type F_q-scheme of positive dimension, a specified F_q-point and a dense open, supply a smooth geometrically connected curve over F_q through that point whose inverse image of the open is nonempty, as used in KZ Corollary 5.2.7.

What AlgebraicModuliForArithmeticGeometry must provide (gap:rational-stack-presentation): Layer 4. For an algebraic stack of finite type over F_q and an F_q-object, supply a smooth scheme presentation with an F_q-rational point over that object, as used in KZ Corollary 5.2.7, without extending F_q.

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

§5.1 (density of Frobenius elements, used to choose auxiliary primes) and §5.13 (function fields over finite fields: Chebotarev and recognition of semisimple lisse representations on a smooth open curve by closed-point Frobenius polynomials).

What ArithmeticGaloisRepresentations must provide (gap:noot-coarse-comparison): Layer 6. For the tensor Hodge realization of an abelian special fibre, after an extension defining its geometric endomorphisms and a sufficiently divisible neat Frobenius power, supply equality and rationality of its Conj′ classes at all realizations as used in HT Corollary 2.1.9, independently of the full Conj(G) conclusion of Layer 7.

### From TauCetiRoadmap.GlobalShtukasAndFunctionFieldLanglands

§6.1 (constant twists and coefficient fields) and §6.2 (compatible systems on curves).

What GlobalShtukasAndFunctionFieldLanglands must provide (gap:open-curve-companions): §§6.1–6.2. Extend the algebraic p-plain companion theorem of §§6.1–6.2 to semisimple lisse sheaves on smooth geometrically connected open curves over the original F_q by direct sums, allowing a constant twist and a finite coefficient extension.

### From TauCetiRoadmap.NeronModelsAndSemistableAbelianVarieties

§5.1 (Néron–Ogg–Shafarevich) and §5.2 (good reduction is isogeny invariant), for excellent discrete valuation rings.

What NeronModelsAndSemistableAbelianVarieties must provide (gap:arbitrary-dvr-good-reduction): §§5.1–5.2. Extend the good-reduction criterion and descent to an arbitrary mixed-characteristic DVR in the full prime-to-p level situation of HT Lemma 1.3.6, or supply descent from an excellent complete trait.

### From TauCetiRoadmap.ShimuraCompactifications

Layer C5 (integral PEL compactifications), extended to Hodge type by the gap below.

What ShimuraCompactifications must provide (gap:component-specialization): Layer C5, Hodge-type integral extension. For the normal Hodge models S_K of Layer 0 at neat tame level over the completed maximal unramified local reflex ring, assuming their geometric special fibre is locally integral, prove that the special fibre of each connected integral component is geometrically irreducible, compatibly with specialization, as used in the proof of HT Corollary 1.3.16.

### From TauCetiRoadmap.IgusaVarietiesAndTorsionConcentration

Layers IG.0 and IG.2 (B(G), the Newton and Kottwitz maps and the PEL Newton strata), used only for the comparison Check in §4.3.

## How to read the build

Layer 0 constructs the normalized tower, its integral stacks and the canonical étale and crystalline tensors. Layer 1 proves the local structure: pointwise integral tensor frames and adapted deformation rings under very-goodness, the de Rham frame diagram to the local model, the ordinary and strict henselian comparisons, the canonical model and the pro-level extension property. Layer 2 constructs very-good auxiliary Hodge covers of every abelian-type datum and of strongly acceptable triples. Layer 3 descends integral models along these covers, keeping the conjugate parahoric levels of the component pieces, and constructs the adjoint local-model diagrams. Layer 4 defines Newton strata, the ordinary locus and tensor quasi-isogeny groups, and proves density of the ordinary locus and the Tate comparison. Layer 5 proves integral functoriality and constructs ordinary special lifts with the full isogeny action. Layer 6 constructs Kottwitz–Rapoport strata and curves over the original residue field through every point. Layer 7 defines the tower local systems and Frobenius quotient points and proves that they come from one rational point of Conj(G). Each *Needs:* line lists the inputs of a statement and of its indicated proof route; a supplier gap is an obligation of that supplier, not a hypothesis of the theorem.

## Layer 0: Canonical tensors on the integral tower

### 0.1 Integral Hodge data

**Definition.** Fix p>2, a Hodge-type datum (G,X), v|p of E(G,X), and a symplectic embedding with a Z_(p)-lattice Λ. Integral Hodge data consist of a point of the extended building, its full fixer G^fix and connected parahoric G°, a closed lattice realization of the required model, a finite tensor family cutting out that model, and compatible sufficiently small prime-to-p Siegel levels. Record whether the embedding is good or very good; neither adjective is implicit. For neat compatible K^p and K_p=G^fix(Z_p), define S as the normalization of the Zariski closure of Sh_K(G,X) in the chosen integral Siegel model after base change to O_(E,v), or to its completion O_E. Its generic fibre is Sh_K(G,X). The construction retains the actual induced p-level.

(KZ, §4.1.2–4.1.7, pp.29–31; KPZ §7.1.2, p.72).

*Proof sketch.* Take the scheme-theoretic Zariski closure in the Siegel model and then its normalization in the generic Hodge variety. Retain the full fixer and connected parahoric as distinct data; use the induced lattice or lattice-chain Siegel level.

*Needs:* ShimuraVarieties §8.1; PELModuli §§M4.5–M4.6, M6.1–M6.4; ReductiveGroupsPartII §RG2.3; Tau Ceti `TauCeti.AlgebraicGeometry.AbelianVariety`.

**API.**

- Return S and its generic-fibre identification with Sh_K(G,X).
- Expose G^fix, G°, K_p and their inclusion; translate KZ’s connected G-script to KPZ’s G-script-degree-zero.
- Compatible neat levels give the same normalized tower after finite étale pullback.

**Checks.**

- For GSp₂=GL₂ at hyperspecial p-level and neat tame level, the Siegel modular curve is smooth and normal; its normalization map is the identity.
- For a Siegel Iwahori chain the connected model is not relabelled as a hyperspecial stabilizer.
- For GL₂ with empty cutting family, the smooth line local model is P¹ and every good embedding is very good. Over k[ε]/ε² the matrix [[1,ε],[0,1]] conjugates e₁=diag(1,0) to [[1,−ε],[0,0]], so an unmarked linear frame comparison cannot certify tensor preservation for a group cut out by e₁. This tests the extra tensor condition, not the existence of a non-very-good Hodge embedding.
- For a symplectic lattice Λ the lattice in (V⊕V∨)^4 furnished by the Zarhin enlargement is self-dual (KZ §4.3.5, p.40). On an elliptic curve E with principal polarization the enlargement is E⁸, of dimension 8, with product principal polarization; using only E×E∨ would give dimension 2.

*Remark.* A parahoric label alone must not certify the tensor-compatible deformation theorem.

### 0.2 Integral Shimura stacks

**Construction.** For a possibly non-neat K^p, choose neat normal K_1^p inside it and form the quotient stack [S_(K_p K_1^p)/(K^p/K_1^p)]. Comparison through a common neat normal subgroup makes this independent up to canonical equivalence. The generic fibre is the Shimura stack, and the construction carries the compatible prime-to-p Hecke action. A coarse quotient is not substituted for this stack.

(KZ, §4.1.1 and §4.1.5, pp.28–30).

*Proof sketch.* KZ permits arbitrary prime-to-p level by taking a quotient of a neat model. Pull the normalized models to a common finite étale level and apply quotient-stack descent.

*Needs:* §0.1; SchemeAndStackFoundations §§1.17–1.23.

**API.**

- At neat K^p the stack is represented by the normal scheme S_K of Layer 0.
- A normal refinement realizes the forgetful map as the corresponding finite étale quotient-stack cover.
- Prime-to-p right translations compose with the tower convention and commute with generic-fibre restriction.

**Checks.**

- For K_1^p=K^p neat, quotient by the trivial group returns S_K.
- An automorphism of a polarized abelian point preserving the level occurs in its stack inertia.
- Two neat normal refinements give equivalent quotients via their intersection, including inertia, not just equal coarse point sets.

*Remark.* Stabilizers at non-neat points remain visible.

### 0.3 Prime-to-p integral tower

**Theorem.** For a fixed admissible p-level and nested sufficiently small prime-to-p levels K_1^p normal in K_2^p, the transition S_(K_pK_1^p)→S_(K_pK_2^p) is finite étale with the expected finite level action; the pro-object carries a continuous G(A_f^p)-action. On normal components the promoted tensor-compatible level sections are uniquely determined by their generic restrictions.

(HT, §2.1.1–2.1.2, pp.20–21; KZ §4.1.5, p.30).

*Proof sketch.* HT constructs the prime-to-p tower and extends its tensor-compatible sections across the normal model. Use the finite étale Siegel level maps and normalization to transfer the transition maps; extend equality of sections by normality.

*Needs:* §0.1; AbelianSchemesAndArithmeticModuli §A4.1; SchemeAndStackFoundations §§1.17–1.23.

*Remark.* Keep pro-level extension statements separate from finite-level statements.

### 0.4 Integral étale Hodge tensors

**Construction.** Pull the universal abelian scheme to a neat Hodge model. Its absolute Hodge tensors give prime-to-p étale tensor sections on H¹ and, by mixed-tensor duality, on H₁=T_ℓ(A)⊗Q_ℓ. They are invariant under the arithmetic fundamental group and compatible with Hecke maps and base change. The tower torsor is Isom_tensor(V_Qℓ,H₁), rather than the frame torsor of H¹. The cohomological realization H¹=H₁∨ is its contragredient; for a symplectic representation of multiplier c, H₁∨≅H₁⊗c⁻¹. Geometric q-Frobenius has multiplier q⁻¹ on H₁ and q on H¹.

(KZ, §4.1.6–4.1.7, pp.30–31; §5.1.1, p.47).

*Proof sketch.* KZ identifies the tower frame torsor with the étale realizations of the defining Hodge tensors. Use the generic absolute-Hodge realization and normal extension of prime-to-p sections, then descend from neat covers.

*Needs:* §0.3; AbelianSchemesAndArithmeticModuli §A4.1; AutomorphicBundles §§B2.4–B2.7.

**API.**

- A tower tensor frame identifies V_Qℓ with H₁=T_ℓ(A)⊗Q_ℓ; dualizing it identifies V_Qℓ∨ with H¹_ét.
- Étale tensors pull back along prime-to-p Hecke and integral datum maps when those maps are established.
- Transport the alternating pairing H₁×H₁→Q_ℓ(1); the dual pairing on H¹ takes values in Q_ℓ(−1), and H¹≅H₁⊗c⁻¹.

**Checks.**

- For E/F₅ of trace 2, H¹ has polynomial T²−2T+5 and multiplier 5. The tower on H₁ has polynomial T²−(2/5)T+1/5 and multiplier 1/5. Twisting H₁ by c⁻¹ multiplies both eigenvalues by 5, giving the H¹ polynomial again.
- On a product, the projection idempotents are among the tensors; off-diagonal automorphisms fail to be tensor frames.
- Changing a tensor frame conjugates Frobenius in G(Q_ℓ); changing ℓ does not identify the coefficient fields.

*Remark.* The polarization is a similitude tensor with its Tate line; its scalar multiplier is not forced to one.

### 0.5 Lift-independent crystalline tensors

**Theorem.** For a geometric special-fibre point x of the normal Hodge model, every characteristic-zero lift through x gives the same rational Frobenius-invariant tensors in D(A_x[p∞])[1/p]^⊗, under the crystalline–de Rham comparisons. This independence holds across the lifts belonging to that normalization point; equality of underlying Siegel points alone does not identify different normalization branches. Integrality is a separate assertion requiring the integral embedding input.

(HT, Proposition 1.3.7, pp.17–18).

*Proof sketch.* HT uses horizontal transport on the connected normal formal neighbourhood to compare the realizations from different lifts. Apply crystalline–de Rham compatibility for absolute Hodge cycles and uniqueness of parallel sections on the rigid generic fibre.

*Needs:* §0.4; AbelianSchemesAndArithmeticModuli §A4.3; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2; CrystallineCohomology §CR.7.3 (gap:cr-crystalline-parallel-transport).

*Remark.* Do not deduce integral tensors solely from rational comparison.

### 0.6 Universal crystalline tensor functor

**Construction.** On the geometric special fibre of a neat normal Hodge model, the universal abelian p-divisible group determines a convergent F-isocrystal D together with global Frobenius-invariant defining tensors. Their fibres are the lift-independent tensors. Tensor frames give an exact faithful Q_p-linear tensor functor Rep(G_Qp)→F-Isoc(S_k), sending the dual of the standard tower representation to D, with scalar-extended fibre functors over L=Frac W(k). After scalar extension and choice of fibre functor, the Tannakian group H of the category generated by D is a subgroup of the tensor stabilizer in the cohomological representation; it need not be the full group. Geometric monodromy after forgetting Frobenius is a different subgroup.

(HT, Proposition 1.3.12 and Corollary 1.3.13, p.19; Appendix A.4–A.7, pp.38–39).

*Proof sketch.* HT globalizes the crystalline tensor sections using semistable alterations and proper descent. Import the general log-Dieudonné comparison, alteration descent and convergent-isocrystal full faithfulness; specialize them to the universal Hodge family. Construct the Rep(G)-functor through the tensor frame torsor. Restriction to H explains why generated-category equivalence with all Rep(G) is unnecessary.

*Needs:* §0.5; CrystallineCohomology §CR.7.1 (gap:cr-isocrystal-tensor-descent); MotivesAndAlgebraicCycles Layer 6; BunGAndNewtonStrata §0.8.

**API.**

- The fibre at x is the pointwise G-isocrystal cut out by its canonical rational tensors.
- Preserve unit, duals, tensor products and exact sequences; compare the dual of the standard tower representation with contravariant D.
- Pullback of the universal abelian scheme and of global tensor sections commutes with extension of the residue field.

**Checks.**

- For a constant ordinary elliptic family, D has slopes (0,1) and determinant slope 1. Geometric horizontal monodromy after forgetting Frobenius is 1; the tensor category with Frobenius contains 1(−1) and has a nontrivial slope torus. It cannot have trivial Tannakian group.
- For the contravariant Dieudonné realization, an ordinary elliptic fibre has slopes 0 and 1, with Newton bound from μ_h⁻¹.
- Removing a tensor enlarges the allowed structure group; it cannot create an equivalence of the generated category with the unchanged Rep(G).

*Remark.* For a constant ordinary elliptic family, Frobenius-forgetting geometric monodromy is trivial, but the category generated by D contains its determinant 1(−1), so H has a nontrivial slope-torus quotient.

### Examples

At hyperspecial GL₂ level the normalization is the smooth modular curve. At non-neat level the central automorphism −1 survives as stack inertia. For p∤3 the cover Y(9)→Y(3) has degree 3⁴=81 on the full-level tower.

### Dependencies

*Needs:* ShimuraVarieties §8.1; PELModuli §§M4.5–M4.6, M6.1–M6.4; ReductiveGroupsPartII §RG2.3; Tau Ceti `TauCeti.AlgebraicGeometry.AbelianVariety`; SchemeAndStackFoundations §§1.17–1.23; AbelianSchemesAndArithmeticModuli §A4.1; AutomorphicBundles §§B2.4–B2.7; AbelianSchemesAndArithmeticModuli §A4.3; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2; CrystallineCohomology §CR.7.3 (gap:cr-crystalline-parallel-transport); CrystallineCohomology §CR.7.1 (gap:cr-isocrystal-tensor-descent); MotivesAndAlgebraicCycles Layer 6; BunGAndNewtonStrata §0.8.

## Layer 1: Corrected local geometry

### 1.1 Pointwise Hodge comparison

**Theorem.** For p>2 and a geometric point x of the normalized Hodge model, choose a lift over O_K, with K a finite totally ramified extension of Q̆_p, and the prescribed smooth full-fixer integral tensor stabilizer. Apply the integral tensor comparison to the abelian fibre: the canonical tensors at x are integral in its contravariant Dieudonné module, the W(k)-frame transports the chosen lattice dual and tensors to that module, and the lift filtration is induced by a G-cocharacter conjugate to μ_h⁻¹. This is the Shimura point specialization of the imported comparison; the general crystalline tensor theorem and torsor triviality are stated in FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.4.

(KZ, §4.1.7, pp.30–31, especially (4.1.7.1)).

*Proof sketch.* Identify the p-adic absolute Hodge tensors of the abelian lift and apply the integral tensor comparison. Transport the integral frame to crystalline and de Rham evaluation as in KZ §4.1.7.

*Needs:* §0.5; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.4/integral-tensor-frame and TD.4/crystalline-tensor-integrality.

*Remark.* Rationally equal tensors with different integral lattices do not pass this statement.

### 1.2 Adapted normalization branches

**Theorem.** For the good Hodge normalization with G^fix=G°, neat K^p, and x above a point of the Siegel closure, assume the embedding is very good at its corresponding local-model point y. The completion of the chosen normalization component identifies with the versal (G,μ)-adapted deformation ring R_G. An integral lift belongs to this branch exactly when its p-divisible group with the specified tensors is adapted. The condition uses the integral Frobenius tensors and the G-split Hodge filtration, not only the rational Newton class.

(KZ, Proposition 4.1.9, pp.31–32, under §4.1.3 (A′)–(B′)).

*Proof sketch.* Apply the versal adapted deformation theorem at y. Use Serre–Tate and integral point recognition to identify the chosen branch, in both directions.

*Needs:* §0.1; §0.5; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.2/very-good and TD.2/tensor-family-independence; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.4/versal-adapted; AbelianSchemesAndArithmeticModuli §A4.9; AlgebraicModuliForArithmeticGeometry Layer 6; §1.1.

*Remark.* The adapted-ring comparison must name a particular normalization branch.

### 1.3 Tensors distinguish normalization points

**Theorem.** Suppose two geometric points of the normal Hodge model have the same image in the Siegel closure and the induced identification of their abelian varieties identifies all their crystalline tensors. For a good Hodge normalization with G^fix=G°, neat K^p and very-goodness at the corresponding point y, the two normalization points are equal. No assertion is made from equality of the underlying abelian varieties without the tensors.

(KZ, Proposition 4.1.9(3), pp.31–32).

*Proof sketch.* KZ detects the normalization branch by its adapted tensor deformation ring. The common tensors select the same completed component; use finiteness of normalization and the branch criterion to identify the points.

*Needs:* §1.2; §1.1.

*Remark.* The identity on a Siegel fibre must still be tested on the complete tensor family.

### 1.4 Hodge local-model diagram

**Construction.** In the corrected Hodge setup, the scheme of integral de Rham tensor frames is a G^fix-torsor π:S̃→S. Sending a frame to the Hodge filtration gives an equivariant smooth map q:S̃→M_loc(G,{μ_h}) of relative dimension dim G. The local model is the imported canonical flat closure. The smooth action morphism G^fix×M_loc→M_loc is not asserted to be a torsor.

Assume the corrected Hodge setup of Conventions.

(KPZ, Theorem 7.1.3, pp.72–73; §7.3.1(1), p.85).

*Proof sketch.* KPZ repairs the tensor-compatible local-model comparison and proves smoothness of the frame-to-filtration map. Glue local tensor frames and identify the deformation map with the local-model action chart using the very-good trivialization.

*Needs:* §1.2; §1.1; AbelianSchemesAndArithmeticModuli §A4.3; GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models).

**API.**

- Sections of π are integral tensor-compatible trivializations of H¹_dR.
- q sends a frame to the transported Hodge filtration and is G^fix-equivariant.
- The frame diagram pulls back under residue-field and reflex-base extensions and finite prime-to-p level maps.

**Checks.**

- The standard Siegel frame diagram recovers its usual Lagrangian filtration map.
- The relative dimension of q equals dim G, whereas dim S equals dim M_loc; q is not assigned relative dimension zero.
- In the Siegel case, a frame change outside the filtration stabilizer moves q while fixing π. Thus q is not invariant for the frame-torsor action; smooth equivariance is its correct property.

*Remark.* Separate the torsor map π from the smooth map q.

### 1.5 Same-field henselization comparison

**Theorem.** In the corrected Hodge setup with G^fix=G°, for every x∈S(k′) with k′/k_E a finite residue-field extension there exists y∈M_loc(k′) for which the ordinary henselizations of the local rings at x and y are isomorphic as local base algebras. The residue field remains k′. Strict henselizations alone do not supply this assertion.

Assume the corrected Hodge setup of Conventions.

(KPZ, Theorem 7.1.3(3), p.73).

*Proof sketch.* KPZ gives the henselized comparison with a local-model point over the same residue field when the frame group is connected. Use smoothness and the connected-frame lifting argument in the corrected diagram.

*Needs:* §1.4; ReductiveGroupsPartII §RG2.3; AlgebraicModuliForArithmeticGeometry Layer 6.

*Remark.* For finite k′, the local-model comparison point must be k′-rational.

### 1.6 Strict comparison with lattice-chain level

**Theorem.** Assume p>2 and a Hodge embedding into a Siegel datum with a self-dual periodic lattice chain L such that G^fix(Z̆_p)=G(Q̆_p)∩GSp(L)(Z̆_p). Take K_p=G^fix(Z_p) and the normalized Hodge closure in that chain-level Siegel model. At every geometric point x of the special fibre there is a geometric local-model point y for which the strict henselizations, and their completions, are isomorphic. This model is canonical in the sense of KPZ Remark 7.1.9(b) and independent of the embedding and lattice within this scope. No global very-good embedding or R-smoothness hypothesis is imposed on the given datum; the modern shtuka comparison imports the corrected very-good auxiliary theory in its proof. The result does not yield a rational local-model point over a prescribed finite residue field.

(KPZ, Theorem 7.1.8 and Remark 7.1.9, p.74; §7.3.2, p.87).

*Proof sketch.* KPZ derives the strict-henselian comparison through canonical integral-model and shtuka methods. Use the integral local Shimura varieties and their completion comparison, as in KPZ Theorem 7.1.8 and Remark 7.1.9(b). The older embedding-independence proof corrected in KPZ §7.3.2 cannot be used without its very-good restriction. Keep strict and ordinary henselizations distinct.

*Needs:* §0.1; HeckeStacksAndLocalShtukas §HS2 (gap:integral-local-shimura); GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models); AlgebraicModuliForArithmeticGeometry Layer 6.

### 1.7 Canonical Hodge model and uniqueness

**Construction.** Under the lattice-chain fixer equality and p>2 hypotheses of the strict local comparison, equip the normal Hodge tower with its integral G-shtuka and its local completion identifications. It is the canonical integral model in the sense used in KPZ Remark 7.1.9(b); two choices of Hodge embedding and lattice satisfying those hypotheses have a unique isomorphism extending the generic identity, compatible with prime-to-p levels. The local integral moduli and their universal-shtuka comparisons are imported from HeckeStacksAndLocalShtukas.

(KPZ, Theorem 7.1.8 and Remark 7.1.9(b), p.74).

*Proof sketch.* Construct the global integral shtuka from the abelian realization and glue the imported local completion comparisons. Use the canonical extension characterization to prove uniqueness and compatibility with changes of embedding.

*Needs:* §1.6; HeckeStacksAndLocalShtukas §HS2 (gap:integral-local-shimura); ShimuraVarieties §8.1.

**API.**

- For each geometric point x, identify the v-sheaf completion of the local integral Shimura variety at its marked point with the diamond of the completed local ring at x, carrying the universal shtuka to the model shtuka.
- The unique comparison between two choices is the identity on the generic Shimura tower and commutes with level changes.
- Comparison isomorphisms compose transitively for three lattice and embedding choices.

**Checks.**

- For identical embeddings and lattices the generic comparison is identity and the unique integral extension is identity.
- At a hyperspecial modular curve point both models have a one-dimensional smooth deformation ring, and the comparison respects its abelian p-divisible group.
- The generic fibres of A¹_Zp and its blowup along (p,t) are both A¹_Qp, but the latter special fibre has two components and the former has one; a generic isomorphism alone does not imply an integral comparison. The canonical shtuka and completion conditions exclude this replacement.

### 1.8 Pro-level DVR extension

**Theorem.** For the normalized Hodge tower at fixed p-level and every discrete valuation O_E-algebra R of mixed characteristic (0,p), restriction gives a bijection lim_(K^p) S_(K_pK^p)(R)→Sh_(K_p)(R[1/p]). The proof uses the complete prime-to-p level system to force good reduction and then the normalization criterion. It does not assert that every finite-level generic point has good reduction.

(HT, Lemma 1.3.6, p.17).

*Proof sketch.* HT proves the extension property for the full prime-to-p tower. Apply the Siegel pro-level good-reduction criterion and lift to the normalization using its generic-fibre identification.

*Needs:* §0.3; PELModuli §§M4.5–M4.6, M6.1–M6.4; §0.1; NeronModelsAndSemistableAbelianVarieties §§5.1–5.2 (gap:arbitrary-dvr-good-reduction).

*Remark.* A finite-level abelian variety with bad reduction is not a counterexample to the pro-level statement.

### 1.9 Special fibre and very-special geometry

**Theorem.** In the corrected Hodge setup, reducedness and normality of geometric irreducible components of the local-model special fibre transfer to the Hodge model. At very special parahoric level the relevant local-model special fibre is geometrically integral, and the Shimura special fibre is locally integral. This does not assert local integrality at an arbitrary parahoric crossing.

Assume the corrected Hodge setup of Conventions.

(KZ, Theorem 4.4.4, p.43; KPZ Theorem 7.2.21(2), pp.84–85).

*Proof sketch.* KZ uses the unique extremal Schubert component at very special level to obtain local integrality. Transfer reducedness, component normality and the very-special integral case through the smooth torsor diagram.

*Needs:* §1.4; GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models); GeometricSatakeAndFusion Layer GS0.

*Remark.* An Iwahori special-fibre crossing must not be declared locally integral.

### Examples

For the hyperspecial modular curve, dim GL₂=4, dim S=dim P¹=1 and dim S̃=5; the filtration map is smooth of relative dimension 4. At a Γ₀(p) crossing the completed special local ring k[[u,v]]/(uv) has two components and is not integral.

### Dependencies

*Needs:* §0.5; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.4/integral-tensor-frame and TD.4/crystalline-tensor-integrality; §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.2/very-good and TD.2/tensor-family-independence; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.4/versal-adapted; AbelianSchemesAndArithmeticModuli §A4.9; AlgebraicModuliForArithmeticGeometry Layer 6; AbelianSchemesAndArithmeticModuli §A4.3; GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models); ReductiveGroupsPartII §RG2.3; HeckeStacksAndLocalShtukas §HS2 (gap:integral-local-shimura); ShimuraVarieties §8.1; §0.3; PELModuli §§M4.5–M4.6, M6.1–M6.4; NeronModelsAndSemistableAbelianVarieties §§5.1–5.2 (gap:arbitrary-dvr-good-reduction); GeometricSatakeAndFusion Layer GS0.

## Layer 2: Auxiliary Hodge covers

### 2.1 Strongly acceptable Shimura triples

**Definition.** A strongly acceptable triple is (G,X,G°) with (G,X) of Hodge type, G_der,Qp a product of restrictions of scalars of split reductive groups over finite extensions of Q_p, and Z_G^c generated by the maximal compact real central subtorus and Z_(G_der), such that Z_G^c,Qp is a product of induced tori. Its level model is the connected parahoric at a very-special building point: after base change to the completed maximal unramified field it is a special parahoric. The group-level adjective alone does not specify a parahoric.

(KZ, Definition 4.2.2, p.34).

*Proof sketch.* KZ isolates these local derived and central conditions for integral functoriality and the ordinary-lifting argument. Package the conditions with the datum and the chosen connected parahoric, exposing each hypothesis separately.

*Needs:* ShimuraData Layer 4 (gap:hodge-cover-refinement); ReductiveGroupsPartII §RG2.3; ReductiveGroupsPartII §RG2.1.

**API.**

- Expose the split restriction-of-scalars decomposition after Q_p base change.
- Expose Z_G^c and its induced-torus description, retaining its inclusion of the derived centre.
- Return the connected parahoric and its verified very-special building point.

**Checks.**

- For the PEL datum GU(1,1) of an imaginary quadratic field split at p, the local derived group is SL₂ and Z_G^c,Qp is the split norm-one torus G_m. A hyperspecial vertex therefore gives a strongly acceptable triple.
- For GSp_(2g), g≥1, the maximal compact central subtorus is trivial and Z_G^c=μ₂. This finite group is not an induced torus, so a split group and hyperspecial level alone do not establish strong acceptability.
- For the split-at-p unitary example, a hyperspecial vertex supplies a very-special triple, while an Iwahori does not.

*Remark.* A strongly acceptable datum at an Iwahori does not define a strongly acceptable triple.

### 2.2 Reflex splitting for auxiliary covers

**Theorem.** For an abelian-type datum (G_2,X_2) and p>2, the auxiliary Hodge cover can be chosen so that every v_2|p of E_2 splits completely in E E_2/E_2. The CM scalar field is chosen to split at all the prescribed p-adic places while satisfying the archimedean Hodge choices. Consequently a chosen local reflex field for the target is unchanged on passing to the composite cover field.

(KPZ, §7.2.2–7.2.3, pp.77–78; Proposition 7.2.19(2), p.83).

*Proof sketch.* KPZ combines Deligne’s Hodge lifting with prescribed p-adic splitting of the CM scalar field. Import the generic torus approximation and Hodge-cover construction; impose all places over p simultaneously.

*Needs:* ShimuraData Layer 4 (gap:hodge-cover-refinement); ReductiveGroupsPartII §RG2.1.

*Remark.* Specifying one embedding into Q̄_p must not be replaced by an arbitrary place over v_2.

### 2.3 Non-exceptional very-good Hodge cover

**Construction.** Suppose G_2^ad is Q-simple and its local adjoint pair has neither a D^H factor nor a type-A factor Res_(F/Qp) PGL_m(D) with p dividing the index of D. Construct a Hodge cover G with G_der=Res_(F0/Q) H^sharp, the same adjoint datum, split local reflex composite, a self-dual very-good lattice embedding for the stabilizer lifting the prescribed target parahoric, R-smooth torus centre, quasi-tame Z_G^c, and torsion-free inertia coinvariants of Z_G^c/Z_(G_der).

(KPZ, Proposition 7.2.10, pp.79–80).

*Proof sketch.* KPZ modifies Deligne’s fundamental Hodge cover by central tori and builds a corrected self-dual very-good embedding. Use the generic fundamental representation and invariant-form inputs, the corrected tensor-lattice theorem, and Zarhin’s imported self-dual enlargement. Check the centre and inertia coinvariants independently of the representation embedding.

*Needs:* §2.2; ShimuraData Layer 4 (gap:hodge-cover-refinement); ReductiveGroupsPartII §RG2.1; ShimuraData Layer 4 (gap:fundamental-invariant-form); ShimuraData Layer 4 (gap:multiplier-exact-sequences); ReductiveGroupsPartII §RG2.3; ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-tori); ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-abelian-type); FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3/nonexceptional-embedding; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3/polarized-chain; PadicDifferentialEquationsAndRigidCohomology §RD.5.116.

**API.**

- Return the isomorphism of adjoint Shimura data and the central isogeny of derived groups.
- Return the chosen self-dual lattice and very-good tensor-compatible embedding, with its stabilizer model.
- Identify the local reflex composite at each target p-place with the target local field.

**Checks.**

- For a split type-A local datum the non-exceptional path is available.
- A local type-A factor PGL_m(D) with p dividing the index of D lies outside the hypotheses of this construction; §2.4 treats it.
- A perfect alternating form on the enlarged lattice must identify Λ with its dual; an arbitrary integral lattice fails.

*Remark.* The five cover properties are asserted together, under the non-exceptional restriction of the source.

### 2.4 Exceptional very-good Hodge covers

**Construction.** For a Q-simple abelian-type datum with D^H factors or a type-A local division algebra of index divisible by p, construct the Hodge cover with the properties of §2.3 except that torsion-free coinvariants of Z_G^c/Z_(G_der) are not promised in the exceptional type-A case. Use the appropriate fundamental symplectic representation and the self-dual lattice construction from KPZ §§6.2–6.3. Passing from the enlarged group to GSp requires smoothness of the scheme-theoretic intersection, R-smoothness, equal derived group and a lifting cocharacter.

(KPZ, Proposition 7.2.16 and Lemmas 7.2.13–7.2.14, pp.81–83).

*Proof sketch.* KPZ treats the D^H and wild-index type-A representations separately and identifies the extra smooth-intersection hypotheses. Import the corresponding corrected local lattice theorems and the fundamental invariant-form classification. Use smooth multiplier maps at odd p to verify the intersection hypothesis rather than assuming it for an arbitrary closed subgroup.

*Needs:* §2.2; ShimuraData Layer 4 (gap:hodge-cover-refinement); ReductiveGroupsPartII §RG2.1; ShimuraData Layer 4 (gap:fundamental-invariant-form); ShimuraData Layer 4 (gap:multiplier-exact-sequences); ReductiveGroupsPartII §RG2.3; ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-tori); ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-abelian-type); ReductiveGroupsPartIII RG3.2 (gap:rg3-stabilizer-closed-immersion); FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3/D-central-cover and TD.3/A-central-cover; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3/polarized-chain; PadicDifferentialEquationsAndRigidCohomology §RD.5.116.

**API.**

- All cover data of §2.3, except torsion-free coinvariants in the wild type-A branch.
- Return the verified smooth scheme intersection needed to restrict the very-good embedding.
- In the D^H branch the inertia coinvariants of Z_G^c/Z_(G_der) are torsion-free; in the wild-index type-A branch no such conclusion is asserted.

**Checks.**

- For the D^H centre described by the split-at-p CM norm-one torus, its inertia-coinvariant quotient is free.
- For a wild-index type-A input the output makes no torsion-free-coinvariant assertion, even after self-dual enlargement.
- Without smoothness of G′∩GSp(Λ), restriction of a very-good embedding is rejected.

*Remark.* In the wild type-A branch no torsion-free-coinvariant conclusion is part of the output.

### 2.5 Auxiliary cover for every abelian-type datum

**Construction.** For any abelian-type (G_2,X_2), p>2 and connected target parahoric, construct a Hodge cover (G,X) with the same adjoint datum and a central derived isogeny, satisfying: π₁(G_der) is a 2-group and is trivial without D^H factors; the local-to-global central-kernel condition (D); all target p-places split in E E_2; the centre is an R-smooth torus; Z_G^c is quasi-tame; and the lifting stabilizer has a self-dual very-good embedding. If no local adjoint factor involves a division algebra of index divisible by p, X_*(G_ab)_I is additionally torsion-free. Combine simple factors with a common similitude multiplier.

(KPZ, Proposition 7.2.19, pp.83–84).

*Proof sketch.* KPZ assembles the simple-factor covers using a fibre product of their multiplier maps. Check the adjoint and derived maps factor by factor; central products control the centre and the 2-primary fundamental group. Retain the stated restriction on the torsion-free conclusion and the splitting at every target p-place.

*Needs:* §2.3; §2.4; ReductiveGroupsPartII §RG2.1; ShimuraData Layer 4 (gap:multiplier-exact-sequences); ReductiveGroupsPartII §RG2.3; ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-tori); ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-abelian-type); ReductiveGroupsPartIII RG3.2 (gap:rg3-stabilizer-closed-immersion).

**API.**

- For C=ker(G_sc→G_der), any global H¹(Q,C) class trivial at every finite ℓ≠p is trivial at p.
- The cover and target local models identify through the adjoint minuscule datum using the imported central-isogeny comparison.
- Expose torsion-free X_*(G_ab)_I only under the explicitly verified absence of p-divisible division indices.

**Checks.**

- Two factors with unequal similitude multipliers do not define a symplectic direct-sum similitude.
- Every p-place of each target reflex factor must split in the composite; a choice at only one place is insufficient.
- The D^H branch permits 2-primary π₁ but cannot claim simply connected derived group.

*Remark.* The output applies to every connected parahoric at odd p, including the exceptional factors, without adding the non-exceptional hypothesis.

### 2.6 Strongly acceptable auxiliary cover

**Theorem.** For a strongly acceptable target triple, choose the KZ auxiliary Hodge cover with derived group mapping centrally to the target, the reflex splitting and very-good lattice properties, compact centre Z_G^c a product of restrictions of tame tori, and torsion-free X_*(G_ab)_I. At the corresponding very-special building point the cover fixer is connected. The last coinvariant hypothesis is torsion-free, not torsion.

(KZ, Proposition 4.2.3 and Lemma 4.2.4, pp.34–35).

*Proof sketch.* KZ strengthens the cover for strongly acceptable triples so that the full fixer agrees with the connected parahoric. Use the split restriction-of-scalars derived factors and induced central tori to verify the Kottwitz-kernel and torsion-free-coinvariant criterion.

*Needs:* §2.1; §2.5; ReductiveGroupsPartII §RG2.3; ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-tori); ReductiveGroupsPartII §RG2.1.

*Remark.* A zero coinvariant group is allowed; a nonzero finite torsion group cannot satisfy the freeness argument.

### Examples

For split GU(1,1), Z_G^c≅G_m locally and G_der≅SL₂. For GSp_(2g), Z_G^c=μ₂ is not a torus, so that group does not satisfy the stated strongly acceptable centre condition without an auxiliary cover.

### Dependencies

*Needs:* ShimuraData Layer 4 (gap:hodge-cover-refinement); ReductiveGroupsPartII §RG2.3; ReductiveGroupsPartII §RG2.1; ShimuraData Layer 4 (gap:fundamental-invariant-form); ShimuraData Layer 4 (gap:multiplier-exact-sequences); ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-tori); ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-abelian-type); FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3/nonexceptional-embedding; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3/polarized-chain; PadicDifferentialEquationsAndRigidCohomology §RD.5.116; ReductiveGroupsPartIII RG3.2 (gap:rg3-stabilizer-closed-immersion); FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3/D-central-cover and TD.3/A-central-cover.

## Layer 3: Integral component descent

### 3.1 Integral component-action groups

**Definition.** Import the characteristic-zero groups A(G), A(G)° and their actions from ShimuraVarieties §§6.3–6.6. Set A_int(G)=G(A_f^p)/closure(Z(Z_(p))) *_(G°(Z_(p))_+/Z(Z_(p))) G_ad°(Z_(p))_+, where Z is the Zariski closure of the centre Z_G in the full model G_Z(p) and the closure is taken in G(A_f^p), and define A_int(G)° by replacing the adelic numerator with the closure of G°(Z_(p))_+ in G(A_f^p). Here the star denotes the quotient of the semidirect product by the diagonal relation, with the integral adjoint parahoric group used in the gluing theorem. Retain the auxiliary tilde groups that also carry the p-adic parahoric factor when comparing kernels and cosets.

Assume the corrected Hodge setup of Conventions together with conditions (D) and (E).

(KP, §4.5.6 and §4.6.1–4.6.4, pp.195–199).

*Proof sketch.* KP constructs integral analogues of the adelic component symmetries from parahoric arithmetic subgroups. Apply the imported generic star-product construction and topological closure/completion formalism to these specific groups.

*Needs:* ShimuraVarieties §§6.3–6.6; ReductiveGroupsPartII §RG2.3; ReductiveGroupsPartII §RG2.0.

**API.**

- The pairs (γ,φ(γ)⁻¹) act trivially; expose the resulting quotient homomorphism.
- Expose A_int°→A_int and the maps to A(G)°→A(G), with their topologies.
- A_int° is the completion of the integral rational adjoint group for the congruence topology coming from the connected derived parahoric.

**Checks.**

- For a torus the derived congruence completion is trivial; the full adelic component group need not be.
- A rational integral element represented simultaneously in the two semidirect factors maps to the identity.
- Replacing the closure in G(A_f^p) by the closure in G(A_f) must require the tilde comparison and cannot be a definitional equality.

*Remark.* The groups are topological quotients; the integral and full adelic closures are taken in different ambient groups.

### 3.2 Reflex units and unramified components

**Theorem.** The reflex norm induced by μ_h⁻¹ maps local reflex units to the connected parahoric modulo the simply connected derived image. Together with canonical reciprocity on components this shows that the geometric connected components at fixed connected p-level are defined over the maximal reflex extension unramified above p. Under condition (D), sufficiently small prime-to-p level has rational stabilizers in the connected p-level.

Assume the corrected Hodge setup of Conventions together with conditions (D) and (E).

(KP, Lemma 4.3.2, Lemma 4.3.5 and Corollary 4.3.9, pp.189–191; KPZ §7.1.10–7.1.11, p.75).

*Proof sketch.* KP computes the reflex norm on local units and uses it to control inertia on connected components. Use Néron connected torus units and reciprocity; use condition (D) for the small-level rational-stabilizer assertion.

*Needs:* §3.1; ShimuraVarieties §§6.3–6.6; §2.5; ReductiveGroupsPartII §RG2.3.

*Remark.* Unramified component definition is weaker than a model over the original reflex field without descent data.

### 3.3 Connected-parahoric normalization cover

**Theorem.** For the full-fixer Hodge model satisfying the corrected Hodge setup with condition (D), normalize it in the generic connected-parahoric cover. The resulting morphism is finite étale; at sufficiently small prime-to-p level it splits after an unramified extension. Its component closures are the integral models used for the actual conjugate levels in descent.

Assume the corrected Hodge setup of Conventions together with condition (D).

(KPZ, Proposition 7.1.11, p.75; KP Proposition 4.3.7, pp.190–191).

*Proof sketch.* KPZ retains the finite étale connected-level passage after repairing the Hodge construction. Use the small-level splitting from rational stabilizers, extend over the unramified base, and descend along prime-to-p finite étale level change.

*Needs:* §1.4; §3.2; §0.1; SchemeAndStackFoundations §§1.17–1.23.

*Remark.* Finiteness is obtained from normalization in the finite generic cover, not from étaleness alone.

### 3.4 Integral adjoint twisting action

**Construction.** For γ in the positive integral rational adjoint group, let P_γ be its central torsor. Twist the universal abelian object by P_γ (AbelianSchemesAndArithmeticModuli §§A6.28–A6.29), transport its weak polarization and conjugated prime-to-p level, and use normalization to obtain the integral γ-action. Together with prime-to-p Hecke maps this gives the A_int action; the diagonal rational relation acts trivially. Lift it to the adjoint tensor-frame torsor by quotienting out the central ambiguity of a lift of γ.

Assume the corrected Hodge setup of Conventions together with conditions (D) and (E).

(KP, Lemmas 4.5.2, 4.5.4, 4.5.7 and 4.5.9, pp.194–197).

*Proof sketch.* KP extends the adjoint symmetry by central twisting of the universal abelian moduli point and its tensor frames. Check descent after a finite torsor trivialization, including conjugation of the prime-to-p level. Apply the normalization universal property and verify the diagonal relation on frames.

*Needs:* §3.1; §0.4; AbelianSchemesAndArithmeticModuli §§A6.28–A6.29; §0.1.

**API.**

- On the generic Shimura tower this agrees with the adjoint action of ShimuraVarieties §§6.3–6.6.
- The contracted-product law P_(γδ) gives the right-action composition law on models and adjoint frames.
- The frame-to-filtration map is invariant under the arithmetic action and equivariant under the adjoint group scheme.

**Checks.**

- If γ lifts to integral g∈G, the twist trivializes and the action is the usual g-action.
- Two lifts differing by the centre yield the same adjoint frame action, not necessarily the same raw G-frame.
- Take γ=diag(ℓ,1), ℓ≠p, and K_ℓ=GL₂(Z_ℓ). Then γK_ℓγ⁻¹ contains [[1,ℓ],[0,1]] and [[1,0],[ℓ⁻¹,1]], whereas K_ℓ does not contain the latter. Thus the transported level is γK^pγ⁻¹; it is not generally K^p. For γ=1 the transport is identity.

*Remark.* A rational adjoint element need not admit a rational lift in G; the central torsor is essential.

### 3.5 Galois component-stabilizer extension

**Construction.** Fix a connected component over the maximal extension unramified at p. Its stabilizer E_int in A_int×Gal(E^p/E) fits into 1→A_int°→E_int→Gal(E^p/E)→1. After restricting to a composite reflex field, a derived cover induces the compatible map of these extensions. The star amalgamation with A_int recovers A_int×Gal(E^p/E), encoding the semilinear descent action on the induced model.

Assume the corrected Hodge setup of Conventions together with conditions (D) and (E).

(KP, §4.6.5, Lemmas 4.6.6 and 4.6.9, pp.199–202).

*Proof sketch.* KP organizes reciprocity on connected components as an extension compatible with central derived covers. Import the generic component torsor, apply the reflex-unit calculation and verify the induced extension maps through the common connected datum.

*Needs:* §3.2; §3.1; ShimuraVarieties §§6.3–6.6.

**API.**

- The kernel of projection to Galois is exactly A_int°.
- A compatible derived cover induces a map after pullback to the common reflex field, preserving kernel and Galois quotient.
- The star product of A_int and E_int over A_int° identifies with the product action group.

**Checks.**

- The identity derived cover gives the identity extension map.
- Inertia above p acts trivially on components by the reflex-unit calculation.
- A datum with several components retains the nontrivial A_int/A_int° action; the extension is not replaced by A_int° alone.

*Remark.* The construction keeps the semilinear Galois action; an abstract disjoint union without it is insufficient.

### 3.6 Gluing at conjugate parahoric levels

**Construction.** For a Hodge cover with a central isogeny G_der→G_2,der identifying adjoint data (KPZ §7.3.1(3)), choose coset representatives J in G_2(Q_p) for the image of A_int(G_2) in A(G)°∖A(G_2)/K_2,p°. For each j use the connected component containing (j,X⁺); it is identified with the connected Shimura variety at jK_p°j⁻¹, not uniformly with the component at K_p°. Form the disjoint union over j of [S_(K_p°)^(j,+)×A_int(G_2)]/A_int(G)°. Its generic fibre is Sh_(K_2,p°)(G_2,X_2) and its semilinear action gives descent over the composite reflex field.

Assume the corrected Hodge setup of Conventions together with conditions (D) and (E).

(KPZ, §7.3.1(3), pp.86–87, correcting KP Lemma 4.6.13 and Corollary 4.6.15).

*Proof sketch.* KPZ §7.3.1(3) replaces the repeated fixed-level connected piece by the pieces at conjugate parahoric levels. Use the Cartesian component-group square and its stabilizers to compute each j-piece before taking the quotient. Identify the generic induced variety and descend the semilinear action; apply the freeness argument separately to the integral action.

*Needs:* §3.3; §3.4; §3.5; SchemeAndStackFoundations §§1.17–1.23; ShimuraVarieties §§6.3–6.6.

**API.**

- The generic-fibre identification is equivariant for G_2(A_f^p) and the Galois action.
- Changing J or its representatives induces the canonical equivariant isomorphism through the computed stabilizers.
- Expose the j-indexed component chart together with its conjugated p-level and quotient action.

**Checks.**

- For the identity cover and the trivial coset, recover the original connected model and its component induction.
- If jK_p°j⁻¹ differs from K_p°, the j-piece cannot be identified with a fixed-level piece without a supplied Hecke comparison.
- Equivalent representatives give isomorphic pieces via their actual stabilizer groups, including integral descent data.

*Remark.* A representative j outside the parahoric normalizer must change the connected piece’s level.

### 3.7 Freeness of the integral descent kernel

**Theorem.** For the cover and small-level conditions used in conjugate-level gluing, Δ=ker(A_int(G)°→A_int(G_2)) acts freely on the relevant integral connected tower pieces. The kernel need not be finite at the full tower; representability of the finite-level quotients and their descent come from the congruence and level conditions, not from finiteness of Δ.

Assume the corrected Hodge setup of Conventions together with conditions (D) and (E).

(KP, Proof of Corollary 4.6.15 and Corollary 4.6.18, pp.203–205; KPZ §7.3.1(3), pp.86–87).

*Proof sketch.* KP’s twisting argument identifies an element fixing a point with a central integral lift and then with the trivial action. Use rigidity at sufficiently small prime-to-p level, the transported level identity and the connected rational stabilizer criterion. Apply the imported quotient/descent theorem at finite levels; carry the conjugate-level correction throughout.

*Needs:* §3.6; §3.4; §3.2; AbelianSchemesAndArithmeticModuli §A6.29; SchemeAndStackFoundations §§1.17–1.23.

*Remark.* The proof must work with the integral moduli object and level, not only with its rational isogeny class.

### 3.8 Integral models of abelian type

**Theorem.** For every abelian-type datum, p>2 and connected parahoric K_2,p°, the corrected auxiliary cover and component gluing produce a normal integral pro-prime-to-p tower over the local reflex ring, with finite étale prime-to-p transitions, the pro-level DVR bijection and étale-local singularities modeled on M_loc(G_2,{μ_h,2}). The cover’s reflex splitting permits descent to the target local reflex field.

(KPZ, Theorem 7.2.21, pp.84–85; Proposition 7.1.14, pp.75–77).

*Proof sketch.* KPZ removes the tame restriction by the corrected very-good Hodge cover and integral component descent. Transfer the local-model and extension properties through the free quotient, identify the intrinsic local model, and use the split local reflex composite.

*Needs:* §2.5; §3.7; §3.6; §1.8; GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models).

*Remark.* The theorem covers exceptional type A and D^H; torsion-free coinvariants are not among its hypotheses.

### 3.9 Connected adjoint local-model diagram

**Construction.** For every abelian-type datum (G₂,X₂), p>2 and connected parahoric level, construct an adjoint fixer torsor π:S̃_ad→S and an equivariant smooth map q:S̃_ad→M_loc(G₂,{μ_h,2}) of relative dimension dim G₂_ad. The torsor reduces to the connected adjoint parahoric under the nonexceptional condition of KPZ Theorem 7.2.21, and in general by the integral-shtuka reduction of KPZ Corollary 7.2.24.

(KPZ, Theorem 7.2.21(3), pp.84–85; Corollary 7.2.24, p.85).

*Proof sketch.* Descend the adjoint frame diagram using the auxiliary Hodge cover. For strongly acceptable data use connectedness of that auxiliary fixer; for the unrestricted connected reduction use the shtuka reduction of HeckeStacksAndLocalShtukas (gap:general-connected-reduction).

*Needs:* §3.8; §3.4; GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models); HeckeStacksAndLocalShtukas §HS2 (gap:general-connected-reduction).

**API.**

- Return the adjoint fixer torsor and its connected-parahoric reduction under the stated nonexceptional, strongly acceptable or general shtuka route, with the corresponding inputs.
- Expose the smooth equivariant map to M_loc(G_2,{μ_h,2}) and its relative dimension.
- Pullback along prime-to-p finite étale level maps preserves the torsor and local-model morphism.

**Checks.**

- For a non-exceptional cover the elementary connected reduction is available without the general shtuka theorem.
- An exceptional type-A cover uses the general reduction and cannot cite a missing torsion-free quotient.
- Over F_q a torsor under the connected smooth adjoint fibre is trivial by Lang; a disconnected full-fixer fibre cannot use that inference.

*Remark.* At a finite-field point the connected structure group is what permits Lang triviality.

### 3.10 Connected adjoint diagram for strongly acceptable triples

**Construction.** For a strongly acceptable triple (G₂,X₂,G₂°), p>2, take the integral model over its completed local reflex ring O_E₂. Construct π:S̃_ad→S as a torsor for the smooth connected adjoint parahoric and an equivariant smooth q:S̃_ad→M_loc(G₂,{μ_h,2}) of relative dimension dim G₂_ad. Prime-to-p Hecke actions commute with q when the local model has trivial Hecke action. The auxiliary Hodge cover has G^fix=G° by KZ Lemma 4.2.4, so KPZ Proposition 7.1.14 already gives the connected reduction; the general integral-shtuka reduction is not an input.

(KZ, Theorem 4.2.6(3), Remark 4.2.7(2), pp.35–36; KPZ Proposition 7.1.14(3), pp.75–76).

*Proof sketch.* Use the strongly acceptable auxiliary cover with connected fixer and its Hodge tensor-frame diagram. Apply adjoint descent and reflex splitting to obtain the diagram over O_E₂.

*Needs:* §2.6; §3.8; §1.4; GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models).

**API.**

- The source of π is the connected adjoint frame space and its target is the integral model; π is a torsor under the specified smooth parahoric, not a disconnected full fixer.
- The map q has the intrinsic local model as target, is equivariant under that connected group and has relative dimension dim G₂_ad.
- Tame level pullback and reflex base change preserve π, q and their equivariance.

**Checks.**

- For the split-at-p GU(1,1) Shimura curve, dim G_ad=3, dim S=dim P¹=1, and dim S̃_ad=4; hence q has relative dimension 3. The full group has dimension 5 and its frame space has dimension 6, so those torsors cannot be interchanged.
- For a CM torus with split p and strongly acceptable centre, G_ad=1 and the local model is a point; π is the identity and q has relative dimension 0.
- Over F_q, a fibre under the connected smooth adjoint parahoric has H¹=1 and a rational frame. A constant Z/2-torsor instead has H¹(F_q,Z/2)=Z/2 and can lack a rational point, so the disconnected replacement cannot feed same-field lifting.

### Examples

For an Iwahori I in GL₂(Q_p), j=diag(p,1) sends [[a,b],[c,d]] to [[a,pb],[c/p,d]]. With c=p this produces c/p=1, so jIj⁻¹ differs from I. Identity conjugation preserves the level.

### Dependencies

*Needs:* ShimuraVarieties §§6.3–6.6; ReductiveGroupsPartII §RG2.3; ReductiveGroupsPartII §RG2.0; §2.5; §1.4; §0.1; SchemeAndStackFoundations §§1.17–1.23; §0.4; AbelianSchemesAndArithmeticModuli §§A6.28–A6.29; §1.8; GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models); HeckeStacksAndLocalShtukas §HS2 (gap:general-connected-reduction); §2.6.

## Layer 4: Newton strata and tensor isogeny groups

### 4.1 Newton class of an integral point

**Construction.** For x on the geometric special fibre of the Hodge model, a tensor frame V∨⊗L≅D_x writes its semilinear Frobenius as ρ∨(b_x)σ, where ρ is the standard tower representation. Define the intrinsic map x↦[b_x]∈B(G_Qp), independent of frame and compatible with prime-to-p level and residue-field extension. The Hodge bound is {μ_h⁻¹} in the contravariant Dieudonné convention. The pointwise isocrystal specializes to Mathlib’s WittVector.Isocrystal after forgetting its G-tensors; that class alone supplies neither a family nor the B(G) classification.

(HT, §1.3.8, p.18; KZ §4.4.2, p.43).

*Proof sketch.* HT trivializes the tensor frame torsor over L and records the resulting Frobenius up to sigma conjugacy. Changing a frame by g replaces b by g inverse b σ(g); apply the imported B(G) quotient.

*Needs:* §0.6; BunGAndNewtonStrata §0.5; Mathlib `WittVector.Isocrystal`.

**API.**

- Two tensor frames give sigma-conjugate elements and hence the same B(G) class.
- Applying the dual of the standard tower representation gives the contravariant isocrystal H¹_cris, compatible with WittVector.Isocrystal.
- Prime-to-p Hecke pullback and extension of the perfect residue field preserve the class under the canonical base-change maps.

**Checks.**

- An ordinary elliptic fibre has Newton slopes {0,1} in the standard contravariant realization.
- A supersingular elliptic fibre has slopes {1/2,1/2}, distinct from the ordinary class.
- For a torus, the class has the Kottwitz invariant of μ_h⁻¹, not that of μ_h.

*Remark.* The local-model cocharacter is μ_h while the Newton admissibility cocharacter is μ_h⁻¹.

### 4.2 Admissibility of reduction

**Theorem.** Every pointwise class from the Hodge model belongs to B(G_Qp,{μ_h⁻¹}): its integral Kottwitz invariant equals the image of μ_h⁻¹ and its dominant Newton point lies below the Galois average of that class. Both assertions are required. The conclusion follows from the Hodge filtration and crystalline representation of a lift, and is not obtained merely from a rational slope inequality.

(HT, Lemma 1.3.9, p.18).

*Proof sketch.* HT applies the admissibility theorem for the crystalline Hodge realization, including the Kottwitz condition. Use a characteristic-zero lift, the specified comparison tensors and the imported integral admissibility criterion.

*Needs:* §4.1; BunGAndNewtonStrata §1.23; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.4/integral-tensor-frame and TD.4/crystalline-tensor-integrality; §1.1; PadicHodgeTheory §5.5.

*Remark.* A class with correct Newton slopes but wrong integral Kottwitz invariant must fail admissibility.

### 4.3 Newton strata on the special fibre

**Definition.** For each admissible [b], let S_[b] be the locus of geometric special-fibre points whose canonical class is [b], endowed with its locally closed reduced structure once semicontinuity is proved. Define S_≤[b] using the dominant Newton order, within the fixed Kottwitz fibre. These loci are compatible with prime-to-p level and descent from perfectification. Nonemptiness is a theorem with a rational-Newton witness, not a field of this definition.

(HT, Theorem 1.3.14, pp.19–20).

*Proof sketch.* HT applies Newton semicontinuity to the universal G-isocrystal to construct the strata. Use representation-detection of dominance and the family semicontinuity theorem of PadicDifferentialEquationsAndRigidCohomology §RD.3.43, then equip the strata with reduced locally closed structures.

*Needs:* §4.1; §4.2; BunGAndNewtonStrata §§1.22–1.26, 2.16.

**API.**

- A geometric point belongs to S_[b] exactly when its canonical B(G) class equals [b].
- The strata pull back under finite étale prime-to-p level transitions.
- The admissible strata form a disjoint partition of the geometric special fibre; the lower locus is the union over smaller classes in the fixed Kottwitz fibre.

**Checks.**

- In the modular case, ordinary and supersingular loci are disjoint and exhaust the special fibre.
- For the modular curve with tower μ_h=(1,0), B(GL₂,{μ_h⁻¹}) has ordinary representative diag(p⁻¹,1)σ and a basic class of tower slopes (−1/2,−1/2), both with κ=−1. In the dual contravariant realization their slopes are (0,1) and (1/2,1/2), and both strata occur. Basicness alone does not define the ordinary stratum.
- In B(PGL₂) the basic classes of slopes (0,0) and (1/2,1/2) before quotient by scalars both have rational Newton point 0, but Kottwitz classes 0 and 1 in Z/2. Only the class with the fixed μ-image belongs to the prescribed B(G,{μ}); equality of rational Newton points alone loses this distinction.
- For the hyperspecial Siegel datum, the genus-one PEL ordinary and supersingular strata have slopes (0,1) and (1/2,1/2), and p-ranks 1 and 0; they agree with the tensor-defined strata here (IgusaVarietiesAndTorsionConcentration Layers IG.0 and IG.2).

*Remark.* Closure containment is recorded separately from equality of closures.

### 4.4 Newton specialization and closure containment

**Theorem.** For the universal G-isocrystal on the Hodge special fibre, S_≤[b] is Zariski closed and each Newton stratum is locally closed. The closure of S_[b] is contained in the union of strata with dominant Newton point at most ν_b in the source’s decreasing-slope convention and the same Kottwitz invariant. No converse inclusion or general equality of closures is asserted.

(HT, Theorem 1.3.14(1),(3), pp.19–20).

*Proof sketch.* HT reduces the specialization claim to Newton polygon semicontinuity in faithful representations. Use the Grothendieck–Katz family theorem and the representation-detection criterion; combine the finitely many admissible classes to obtain local closedness.

*Needs:* §4.3; §0.6; BunGAndNewtonStrata §§1.22–1.26, 2.16; PadicDifferentialEquationsAndRigidCohomology §RD.3.43.

*Remark.* No equality of closures is asserted.

### 4.5 Special-point nonemptiness of Newton strata

**Theorem.** If [b]∈B(G_Qp,{μ_h⁻¹}) has a representative whose Newton cocharacter is defined over Q_p as in HT (1.1.3.1), then S_[b] is nonempty. This holds in particular for quasi-split G_Qp and for basic classes. Use a global special torus realizing the local special pair, its zero-dimensional canonical model, and the place of its reflex field induced by the fixed embedding i_p above v. Reduce that torus point to the normal Hodge model. An arbitrary place above v need not give the prescribed local class.

(HT, Proposition 1.3.10, p.18, with §1.1.3 and §1.2.5).

*Proof sketch.* HT realizes the class through a global special pair and reduces its toric canonical model. Import the rational Newton witness and global torus approximation, use potential good reduction of CM abelian varieties and the Hodge normalization extension criterion. The unique acceptable torus class identifies the reduction’s Newton class.

*Needs:* §4.2; BunGAndNewtonStrata §1.34; BunGAndNewtonStrata §1.37; ReductiveGroupsPartIII RG3.2/elliptic-maximal-torus; ShimuraVarieties §4.5; PELModuli §§M4.5–M4.6, M6.1–M6.4; ShimuraVarieties §5.6.

*Remark.* For a non-quasi-split nonbasic class, the rational-witness hypothesis cannot be omitted.

### 4.6 Mu-ordinary locus

**Definition.** Assume there is an ordinary class [b]_μ∈B(G,{μ_h⁻¹}), meaning that its dominant Newton point is exactly the Galois average of μ_h⁻¹. Define the ordinary locus as S_[b]_μ. It is not defined by replacing that equality with the unique maximal acceptable class for an arbitrary inner form. For a strongly acceptable triple the split restriction-of-scalars derived factors provide the required ordinary class.

(KZ, Definition 4.4.3 and its preceding assumption, p.43; HT §1.3.15, p.20).

*Proof sketch.* KZ explicitly assumes the existence of the actual ordinary class before defining its locus. Use the imported ordinary-class criterion and the pointwise Newton stratification.

*Needs:* §4.3; BunGAndNewtonStrata §1.26; §2.1.

**API.**

- x is ordinary exactly when ν_(b_x) equals the Galois average (μ_h⁻¹)◇ in the fixed Kottwitz fibre.
- The ordinary open pulls back along prime-to-p levels and along the proved derived-isogeny maps.
- For the Siegel genus-one datum it agrees with the ordinary elliptic locus, equivalently p-rank one.

**Checks.**

- The slopes 0 and 1 give an ordinary point.
- The supersingular elliptic slope pair is excluded.
- A non-quasi-split inner form whose maximum has ν≠(μ_h⁻¹)◇ has no ordinary locus: maximality alone does not produce the ordinary class.

*Remark.* The ordinary equality and the unique-maximal-class assertion must remain distinct.

### 4.7 Openness and density of the ordinary locus

**Theorem.** Assume an actual ordinary class exists, its rational-Newton witness holds, and the geometric special fibre of the normal Hodge model is locally integral. Then the ordinary locus is nonempty open and dense on every component: semicontinuity gives openness, special reduction gives nonemptiness, and the component theorem plus Hecke transport spreads density. In particular the corrected very-special strongly acceptable model has dense ordinary locus. This does not assert density at arbitrary parahoric crossings.

(KZ, Theorem 4.4.4, p.43; HT Corollary 1.3.16, p.20).

*Proof sketch.* Use the component specialization of ShimuraCompactifications (gap:component-specialization) to prove irreducibility of the special fibre of each connected integral component. Apply semicontinuity, special reduction and tensor-compatible Hecke transport to prove density on every component.

*Needs:* §4.6; §4.4; §4.5; §1.9; ShimuraCompactifications Layer C5 (gap:component-specialization); §3.6.

*Remark.* Local integrality by itself is not silently used as a proof of global component irreducibility.

### 4.8 Tensor-preserving quasi-isogeny group

**Definition.** For x with abelian fibre A_x over F̄_p, define I_x as the closed Q-subgroup of (End⁰(A_x))^× preserving the canonical crystalline tensors and all prime-to-p étale tensors; use the rational realization actions after scalar extension, so the functor is imposed on every Q-algebra. Define I_(x/Fq) similarly using End⁰_(Fq)(A_x). The polarization is included with its similitude/Tate line. Integral automorphisms are I_x(Q)∩Aut(A_x). This extends the pinned TauCeti abelian endomorphism ring by rationalization and tensor conditions.

(HT, §2.1.3–2.1.5, pp.21–22; KZ §4.1.10, p.32).

*Proof sketch.* HT defines the rational algebraic isogeny group through all realizations of the Hodge tensors. Use finite-dimensional End⁰ and the scheme-theoretic tensor stabilizer equations after coefficient extension; Noetherianity reduces the intersection of conditions to finitely many equations. Distinguish geometric endomorphisms, fixed-field endomorphisms and integral automorphisms.

*Needs:* §0.4; §0.5; AbelianSchemesAndArithmeticModuli §A6.21; Tau Ceti `TauCeti.AlgebraicGeometry.AbelianVariety.End`; AbelianSchemesAndArithmeticModuli §§A6.7, A6.20, A6.22.

**API.**

- The Q-group maps to each étale tensor stabilizer and to the crystalline twisted centralizer.
- The F_q-defined subgroup consists of tensor automorphisms commuting with the q-Frobenius endomorphism.
- Equivalent generating tensor families with the same realization stabilizers define the same subgroup of End⁰ units.

**Checks.**

- With only the Siegel polarization tensors, recover the Rosati-similitude subgroup of End⁰ units.
- Adding projection tensors on A_1×A_2 excludes off-diagonal quasi-endomorphisms.
- A rational quasi-isogeny with a nonintegral denominator is in I_x(Q) when it preserves the tensors, but need not lie in Aut(A_x).

*Remark.* All-prime tensor preservation is stronger than merely preserving the polarization.

### 4.9 Isogeny-group realization maps

**Construction.** For x/F_q with algebraic q-power Frobenius π_x, set γ_x=π_x⁻¹∈I_(x/Fq)(Q). On H₁ this is geometric q-Frobenius; on H¹ use the contragredient action, namely inverse pullback by γ_x. At ℓ≠p its realization is semisimple Frobenius. At p descend D_x to W(F_q)[1/p] and choose δ∈G(W(F_q)[1/p]) with F_D=ρ∨(δ)σ in the dual tensor frame. Form N_r(δ)=δσ(δ)⋯σ^(r−1)(δ), r=[F_q:F_p]. Its contragredient ρ∨(N_r(δ)) is π_x by crystalline pullback; the standard representation of N_r(δ) realizes γ_x. Thus the norm and the crystalline matrix are related by the specified dual representation. After a sufficiently divisible extension F_(q^m), all geometric endomorphisms descend and the stable groups are Z_G(γ_ℓ^m) at ℓ and the finite-period twisted centralizer I_p inside J_δ at p. This finite-period subgroup need not equal J_δ.

(HT, §2.1.5–2.1.7, pp.22–24; K17 §2.1.2, p.29).

*Proof sketch.* HT descends the canonical crystalline tensors and identifies the finite-field Frobenius with its twisted norm in a tensor frame. Use Frobenius invariance and uniqueness of the tensors for descent; apply the imported finite-period norm-centralizer theorem. Pass to a sufficiently divisible m to stabilize the endomorphism field and centralizers.

*Needs:* §4.8; BunGAndNewtonStrata §1.16; AbelianSchemesAndArithmeticModuli §A6.21; ReductiveGroupsPartIII RG3.3/cyclic-torus-and-neatness (gap:rg3-cyclic-torus-and-neatness).

**API.**

- The rational γ_x acts on the Tate module as geometric q-Frobenius, and its contragredient on H¹ and D is the crystalline linear norm; these are compared through the stated dual representation.
- Extension F_q→F_(q^m) replaces the linear Frobenius by γ_x^m and the twisted norm by the corresponding longer product.
- Expose I_p→J_δ, the finite-period centralizer comparison and the maps I_x,Qp→I_p.

**Checks.**

- For the rank-one contravariant realization with crystalline matrix δ_D=ζ of order 24 over F₂₅, crystalline q-Frobenius is ζσ(ζ)=ζ⁶ while the standard tower scalar is ζ⁻⁶. The expression δ_D²=ζ² gives neither; both the norm and the duality translation are required.
- Passing from F_q to F_(q²) squares γ_x; it does not leave the Frobenius element unchanged.
- For the contravariant GL₂ isocrystal over F₅ with matrix δ_D=[[0,−1],[5,0]], δ_D²=−5. The standard tower matrix is δ_D⁻ᵀ and its square is −1/5. Before extending the residue field, its finite-period automorphisms form Q₅(√−5)^×, whereas J_δ is the quaternion division group. Over F₂₅ the Frobenius square is scalar and the finite-period group enlarges.

*Remark.* Use the iterated twisted product, and use the same chosen power in each realization.

### 4.10 Rosati compactness of tensor isogenies

**Theorem.** The tensor isogeny group lies in the Rosati-similitude group. Its real points modulo the scalar weight group are compact; its identity component is reductive. After the all-prime comparison establishes connectedness, I_x is a connected reductive Q-group. The compactness assertion concerns a group modulo the weight scalars, not compactness of I_x(R) itself.

(HT, §2.1.3 and Proposition 2.1.6, pp.21–23; K17 Corollary 2.1.7, p.31).

*Proof sketch.* The Rosati positivity argument in HT and Kisin makes the tensor-preserving subgroup compact modulo scalars. Use positive definiteness to exclude a nontrivial real unipotent radical; retain a possible finite component group until the realization comparison.

*Needs:* §4.8; AbelianSchemesAndArithmeticModuli §A6.14; ReductiveGroupsPartII §RG2.1.

*Remark.* Positive scalar quasi-isogenies show why compactness cannot be asserted before quotienting scalars.

### 4.11 Tensor detection on a prime-to-p Hecke orbit

**Theorem.** For the neat integral Hodge tower, let x be a geometric special-fibre point with abelian variety A_x up to prime-to-p isogeny, and let g₁,g₂∈G(A_f^p). If x·g₁=x·g₂, the unique automorphism of A_x relating the two prime-to-p level structures fixes the canonical prime-to-p étale and crystalline tensors, so g₁ and g₂ have the same image in I_x(Z_(p))\G(A_f^p), where I_x(Z_(p))=I_x(Q)∩Aut(A_x). Thus g↦x·g induces a well-defined surjection from the Hecke orbit x·G(A_f^p) onto I_x(Z_(p))\G(A_f^p). Equality of two points is asserted only in this direction: the converse, that g₁ and g₂ with the same class give the same normalization point, needs the very-good hypotheses of §1.3 and is not used here. This is the prime-to-p statement needed in the rank argument; it is not a classification of all geometric isogeny classes or an ADLV uniformization theorem.

(HT, Lemma 2.1.4, p.22; Proposition 2.1.6, pp.22–23).

*Proof sketch.* HT reads the relating automorphism off the Siegel moduli interpretation of x·g₁=x·g₂; it fixes the prime-to-p étale tensors because it intertwines the two level structures, and it fixes the crystalline tensors because these are independent of the lift (§0.5, HT Proposition 1.3.7).

*Needs:* §4.8; §0.3; §0.5.

*Remark.* At hyperspecial GL₂ level with g₂=−g₁ the points agree and the relating automorphism −1 lies in I_x(Z_(p)); the statement never infers equality of normalization points from equality of classes.

### 4.12 Auxiliary-prime comparison and full rank

**Theorem.** Choose ℓ_0≠p where G splits and the characteristic polynomial of γ_x splits. After taking a sufficiently divisible finite-field power so the stable centralizer is connected, I_x,Qℓ0 identifies with that stable Frobenius centralizer, and rank I_x=rank G. The proof uses finiteness of the relevant finite-field Hecke orbit to make the quotient of local centralizer points compact, the split-group compact-quotient criterion, and Rosati reductivity. It uses no common Frobenius class from SV2.7.

(HT, Proposition 2.1.6, pp.22–23; K17 Corollary 2.1.7, p.31).

*Proof sketch.* HT generalizes Kisin’s finite-field orbit argument to the normal integral Hodge model. Use the split auxiliary prime to make the stable centralizer a split Levi; compactness forces the subgroup to contain a Borel. The homogeneous quotient is then proper and affine, so the connected centralizer equals the isogeny group after scalar extension.

*Needs:* §4.11; §4.9; §4.10; ReductiveGroupsPartII §RG2.0; ReductiveGroupsPartIII RG3.2 (gap:compact-quotient-borel); ArithmeticGaloisRepresentations §§5.1, 5.13.

*Remark.* The split auxiliary prime comes from ArithmeticGaloisRepresentations §5.1 and the compact-quotient criterion from ReductiveGroupsPartIII (gap:compact-quotient-borel).

### 4.13 Tate comparison with tensors

**Theorem.** After the finite-field extension fixing all geometric endomorphisms and stable centralizers, the natural realization maps identify I_x,Qℓ with Z_G(γ_x,ℓ) for every ℓ≠p and I_x,Qp with the finite-period crystalline group I_p. Hence I_x is connected reductive of full rank. The remaining comparison of centralizer dimensions uses Noot’s coarser Conj′ Frobenius comparison and the type-D outer-orbit analysis, not the full Conj(G) independence theorem being proved here.

(HT, Corollary 2.1.9, pp.24–25).

*Proof sketch.* HT compares every realization with the split auxiliary prime using its independently established coarser Frobenius conjugacy theorem. Import Noot’s accommodating-embedding comparison, neat-power step and the Conj′ dimension invariance with the precise orthogonal outer action. Compare dimensions of the realization inclusions; descend connectedness and reductivity from the identified connected centralizer.

*Needs:* §4.12; §4.9; ArithmeticGaloisRepresentations Layer 6 (gap:noot-coarse-comparison); ReductiveGroupsPartII §RG2.1; ReductiveGroupsPartIII RG3.0/orthogonal-outer-action (gap:rg3-conj-prime-centralizer-dimension).

*Remark.* The proof does not use the common Frobenius class of §7.6; only the coarser Conj′ comparison enters.

### Examples

An ordinary elliptic point has slopes (0,1), p-rank 1; a supersingular point has slopes (1/2,1/2), p-rank 0. Their Newton polygons specialize in the stated direction. For a supersingular elliptic curve, I=B× for the quaternion algebra ramified at p and infinity, of rank 2, and I(R)/R×≅SO(3) is compact.

### Dependencies

*Needs:* §0.6; BunGAndNewtonStrata §0.5; Mathlib `WittVector.Isocrystal`; BunGAndNewtonStrata §1.23; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.4/integral-tensor-frame and TD.4/crystalline-tensor-integrality; §1.1; PadicHodgeTheory §5.5; BunGAndNewtonStrata §§1.22–1.26, 2.16; PadicDifferentialEquationsAndRigidCohomology §RD.3.43; BunGAndNewtonStrata §1.34; BunGAndNewtonStrata §1.37; ReductiveGroupsPartIII RG3.2/elliptic-maximal-torus; ShimuraVarieties §4.5; PELModuli §§M4.5–M4.6, M6.1–M6.4; ShimuraVarieties §5.6; BunGAndNewtonStrata §1.26; §2.1; §1.9; ShimuraCompactifications Layer C5 (gap:component-specialization); §3.6; §0.4; §0.5; AbelianSchemesAndArithmeticModuli §A6.21; Tau Ceti `TauCeti.AlgebraicGeometry.AbelianVariety.End`; AbelianSchemesAndArithmeticModuli §§A6.7, A6.20, A6.22; BunGAndNewtonStrata §1.16; ReductiveGroupsPartIII RG3.3/cyclic-torus-and-neatness (gap:rg3-cyclic-torus-and-neatness); AbelianSchemesAndArithmeticModuli §A6.14; ReductiveGroupsPartII §RG2.1; §0.3; ReductiveGroupsPartII §RG2.0; ReductiveGroupsPartIII RG3.2 (gap:compact-quotient-borel); ArithmeticGaloisRepresentations §§5.1, 5.13; ArithmeticGaloisRepresentations Layer 6 (gap:noot-coarse-comparison); ReductiveGroupsPartIII RG3.0/orthogonal-outer-action (gap:rg3-conj-prime-centralizer-dimension).

## Layer 5: Functoriality and ordinary special lifts

### 5.1 Integral maps under derived isomorphisms

**Theorem.** Let f:(G₁,X₁)→(G₂,X₂) be a morphism of Hodge data. Suppose both full fixers equal their connected parahorics, f extends to the parahoric group schemes, both Hodge embeddings are good, and f(K₁)⊂K₂ with K_i,p=G_i°(Z_p), as in KZ §4.3.1. Over the common local reflex base the generic Shimura map extends to a map of normalized integral models, compatibly with composition and tame levels. If in addition f induces an isomorphism of derived groups, the parahorics are associated and the levels are neat, its maps on completed local rings at corresponding geometric points are isomorphisms. On the neutral pro-components after maximal unramified reflex base change this is an isomorphism by KZ Corollary 4.3.4. A central derived isogeny alone does not imply this stronger comparison.

(KZ, Proposition 4.3.2 and Corollary 4.3.4, pp.37–40).

*Proof sketch.* KZ extends derived-isomorphic Hodge maps by the local shtuka/canonical-model comparison and identifies their formal neighbourhoods. Use the integral local Shimura comparison (HeckeStacksAndLocalShtukas, gap:integral-local-shimura) at associated parahorics, then compare the neutral towers using finite étale level normalizations.

*Needs:* §0.3; HeckeStacksAndLocalShtukas §HS2 (gap:integral-local-shimura); GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models); §0.1; §1.7.

*Remark.* An arbitrary pair of models with isomorphic derived groups does not give a chosen integral map without the compatible datum and level data.

### 5.2 Matched-multiplier comparison datum

**Construction.** Let the auxiliary Hodge cover (G_1,X_1) and strongly acceptable target (G_2,X_2) share the adjoint datum and carry symplectic embeddings with characters c_1,c_2. Define G_3=(G_1×_(G_ad×G_m)G_2)°, matching both the adjoint image and c_1=c_2, with the induced Shimura conjugacy class. Its direct-sum representation on V_1⊕V_2 is symplectic because the multipliers agree. The projection to G_1 is derived-isomorphic in the source’s cover setup; the projection to G_2 is the corresponding central derived cover.

(KZ, §4.3.7–Lemma 4.3.8, pp.40–42; §4.4.6–4.4.7, pp.43–44).

*Proof sketch.* KZ uses the common-adjoint, common-multiplier fibre product to compare an arbitrary target Hodge embedding with the auxiliary one. Use the fibre-product centre calculation and the multiplier sequences supplied by ShimuraData; check the Hodge homomorphism factors through the identity component. The block direct-sum form has one similitude factor exactly when the two nonzero blocks have the same multiplier.

*Needs:* §2.6; §2.1; ReductiveGroupsPartII §RG2.1; ShimuraData Layer 4 (gap:matched-fibre-product-centre); ShimuraData Layer 4 (gap:multiplier-exact-sequences); ShimuraData Layer 4 (gap:hodge-cover-refinement).

**API.**

- Expose the two datum maps, their common adjoint image and their common multiplier.
- For nonzero alternating forms ψ_i and similitudes g_i of factors with c_i, the block operator scales ψ_1⊕ψ_2 by c exactly when c_1=c=c_2.
- The reflex field lies in E_1E_2; at the chosen p-place the auxiliary reflex splitting identifies the composite local field with E_2,v.

**Checks.**

- Two copies of one symplectic similitude with the same multiplier give a direct-sum similitude with that multiplier.
- On two standard symplectic Q-planes, diag(2,1) and diag(3,1) have multipliers 2 and 3; their block sum is not a similitude.
- Projection tensors on V_1⊕V_2 exclude a matrix mixing the two summands, even if it preserves their total symplectic form.

*Remark.* The plain product of two GSp groups does not act by similitudes on the direct-sum form.

### 5.3 Integral geometry of the matched datum

**Theorem.** For the matched datum of the strongly acceptable setup, the compact-centre exact sequences and torsion-free coinvariants yield the required connected fixer and a good integral lattice embedding. Its projection to G_1 gives the integral map and completed-local-ring comparison of the derived-isomorphism theorem. Its map to G_2 is constructed by neutral-component descent. In this setup both comparison maps induce isomorphisms on completed local rings at corresponding geometric special points, and ordinary classes correspond under the derived maps.

(KZ, Lemma 4.3.8, pp.40–42; proof of Theorem 4.4.6, pp.45–46).

*Proof sketch.* KZ checks the centre of the matched fibre product and uses the resulting integral maps to transport ordinary lifts. Use the very-good lattice-chain embeddings of FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3 and the connected-fixer criterion of ReductiveGroupsPartII §RG2.3. Distinguish the derived-isomorphism projection from the derived-cover projection and apply the appropriate descent comparison.

*Needs:* §5.2; §5.1; §3.6; BunGAndNewtonStrata §1.28; ReductiveGroupsPartII §RG2.3; ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-tori); ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-abelian-type); ShimuraData Layer 4 (gap:matched-fibre-product-centre); FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3/nonexceptional-embedding; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3/polarized-chain.

*Remark.* The two projection maps must not be justified by the same derived-isomorphism assertion unless their hypotheses are checked.

### 5.4 Integral Siegel map for a chosen Hodge embedding

**Theorem.** Given a strongly acceptable target and any Hodge embedding into a Siegel datum with a suitable self-dual lattice and compatible levels, the generic Siegel map extends over its constructed integral model. Use the auxiliary cover and matched datum to define and descend the map. The universal abelian scheme pulled back by this map is therefore available even when that embedding was not used to define the model.

(KZ, Proposition 4.3.6, p.40, with §4.3.7–4.3.8, pp.40–42).

*Proof sketch.* KZ extends the arbitrary Hodge embedding by comparison with the very-good auxiliary embedding. Build the matched integral diagram and descend the Siegel map through the integral component action.

*Needs:* §5.3; §3.7; PELModuli §§M4.5–M4.6, M6.1–M6.4; PadicDifferentialEquationsAndRigidCohomology §RD.5.116.

*Remark.* Changing the defining embedding is an asserted comparison theorem, not a redefinition of the integral model.

### 5.5 Product comparison of abelian fibres

**Theorem.** The integral matched-multiplier diagram maps to the moduli space of pairs of polarized abelian schemes with a common similitude scalar. Pullback of the universal objects gives A_3≅j_1^*A_1×j_2^*A_2 over the common local base, and identifies the projection tensors, polarizations and all étale and crystalline realizations. This is a product of abelian schemes with specified tensors, not merely an isogeny of unstructured fibres.

(KZ, Proposition 4.4.8 and equation (4.4.9.1), pp.44–45).

*Proof sketch.* KZ realizes the common-multiplier Siegel diagram by the product moduli problem. Apply normalization to the finite map from the common-multiplier moduli model and pull back the universal abelian schemes.

*Needs:* §5.4; §5.3; PELModuli §§M4.5–M4.6, M6.1–M6.4; AbelianSchemesAndArithmeticModuli §A4.1; AbelianSchemesAndArithmeticModuli §A4.3.

*Remark.* The two projection idempotents must be retained in every realization.

### 5.6 Exact sequences of tensor isogeny groups

**Theorem.** At corresponding geometric points x_i of the matched integral diagram, let C_i=ker(G_3→G_i). Then 1→C_i→I_(x_3)→I_(x_i)→1 is an exact sequence of Q-algebraic groups for i=1,2. Projection tensors make the map on abelian products well-defined. Exactness can be checked at a prime using the all-prime tensor Tate theorem and compatible semisimple centralizers; it is not inferred solely from surjectivity of G_3→G_i.

(KZ, Proposition 4.4.10, p.45).

*Proof sketch.* KZ identifies the tensor-isogeny group maps through the product abelian scheme and checks exactness in a realization. Use the projection tensors, realize the central kernels through specialization of their generic actions, and apply the compatible centralizer comparison.

*Needs:* §5.5; §4.13; ReductiveGroupsPartII §RG2.1; ShimuraData Layer 4 (gap:matched-fibre-product-centre).

*Remark.* Omitting projection tensors can allow off-diagonal endomorphisms and invalidates the proposed sequence.

### 5.7 Ordinary points are very good

**Theorem.** For a special Hodge model, meaning a good Hodge normalization with G^fix=G°, an ordinary point lies in the smooth extremal local-model locus and is a very-good point. Consequently the corrected adapted deformation comparison applies to its formal branch even if the embedding has only been assumed good globally. This is a pointwise conclusion on the actual ordinary locus.

(KPZ, Corollary 5.3.16, p.60; KZ Remark 4.1.13, p.33).

*Proof sketch.* KZ locates ordinary points in the top smooth Schubert locus and applies the very-good trivialization criterion there. Use the ordinary integral-conjugacy and local-model smoothness inputs to verify the tensor-compatible first-order condition.

*Needs:* §4.6; GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models); FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.2/very-good and TD.2/tensor-family-independence; §0.1; BunGAndNewtonStrata §1.29.

*Remark.* A nonordinary singular local-model point is not certified very good by this theorem.

### 5.8 Ordinary Hodge special lift with isogeny action

**Theorem.** For a special Hodge model, meaning a good Hodge normalization with G^fix=G°, let x be an ordinary point where the embedding is very good. There is a finite extension K/Q̆_p and an integral lift with special generic point such that the entire I_x(Q)-action on A_x lifts in the isogeny category. Apply the ordinary p-divisible-group lifting theorem preserving J_b(Q_p), then Serre–Tate and polarized effectivity. Full rank of I_x forces the lifted Mumford–Tate group into a torus. Existence and the lifted action are asserted; no uniqueness or unramified field of definition is asserted.

(KZ, Theorem 4.1.11 and Remark 4.1.12, pp.32–33).

*Proof sketch.* Apply the ordinary adapted lift of FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.6 to the p-divisible group, retaining its entire J_b(Q_p)-action by quasi-isogenies. Use Serre–Tate and polarized effectivity to lift the abelian point on its identified branch; full rank forces a toric Mumford–Tate group.

*Needs:* §5.7; §4.12; §4.9; BunGAndNewtonStrata §1.29; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.6/ordinary-adapted-lift and TD.6/sigma-centralizer-action; AbelianSchemesAndArithmeticModuli §A4.9; AbelianSchemesAndArithmeticModuli §A4.8; ShimuraData Layer 1.

*Remark.* A lift preserving only one Frobenius endomorphism does not satisfy the full I_x(Q)-action requirement.

### 5.9 Ordinary special lifts for strongly acceptable triples

**Theorem.** For every ordinary geometric point x on a strongly acceptable triple’s integral model, there exists an integral lift over a finite extension of Q̆_p whose generic point is special and whose abelian fibre carries a lift of I_x(Q) in the isogeny category. First transport a Hodge lift through the matched datum and the exact isogeny-group sequences; then reach every component using the corrected conjugate-level gluing, prime-to-p quasi-isogenies and the required p-power quasi-isogenies. All defining realizations are preserved.

(KZ, Theorem 4.4.6 and proof §4.4.11, pp.43–46).

*Proof sketch.* KZ carries the ordinary lift and its full isogeny action from the auxiliary model to the target. Use the formal comparison and exact isogeny-group sequences for points in the comparison image. For other component pieces use the actual conjugated p-level and transport the lift by the tensor-compatible quasi-isogenies.

*Needs:* §5.8; §5.6; §5.3; §3.6; BunGAndNewtonStrata §1.28.

*Remark.* The construction must preserve the exact finite-field q-Frobenius endomorphism through the lifted rational isogeny action.

### 5.10 Rational Frobenius at an ordinary point

**Theorem.** For an F_q-point x in the ordinary locus of a strongly acceptable triple, there is γ_0∈G(Q) whose image is G(Q_ℓ)-conjugate to the exact geometric q-Frobenius for every ℓ≠p. Moreover γ_0 is elliptic over R. Realize the rational q-Frobenius γ_x∈I_x(Q) on Betti homology of the special lift preserving I_x(Q); compare with the étale Tate-module realization and use Rosati compactness modulo the weight scalars. No finite power replaces q-Frobenius in the conclusion.

(KZ, Corollary 4.4.13 and Remark 4.4.14, p.46).

*Proof sketch.* KZ embeds the lifted rational isogeny group into the Betti G and sends q-Frobenius to a rational representative. Use Betti–étale tensor comparison for each ℓ, and compactness of a containing torus modulo the weight group for ellipticity.

*Needs:* §5.9; §4.10; §4.9; AutomorphicBundles §§B2.4–B2.7.

*Remark.* The result is for the chosen F_q-point, so replacing it by F_(q^m) would prove a different statement.

### Examples

On the rational symplectic plane, identity has multiplier 1 and diag(2,1) has multiplier 2. The block diagonal sum of diag(2,1) and diag(3,1) has no single multiplier: testing the two planes forces c=2 and c=3. Thus the matched multiplier is essential even though both blocks are similitudes.

### Dependencies

*Needs:* §0.3; HeckeStacksAndLocalShtukas §HS2 (gap:integral-local-shimura); GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models); §0.1; §1.7; §2.6; §2.1; ReductiveGroupsPartII §RG2.1; ShimuraData Layer 4 (gap:matched-fibre-product-centre); ShimuraData Layer 4 (gap:multiplier-exact-sequences); ShimuraData Layer 4 (gap:hodge-cover-refinement); §3.6; BunGAndNewtonStrata §1.28; ReductiveGroupsPartII §RG2.3; ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-tori); ReductiveGroupsPartIII RG3.2 (gap:rg3-r-smooth-abelian-type); FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3/nonexceptional-embedding; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.3/polarized-chain; §3.7; PELModuli §§M4.5–M4.6, M6.1–M6.4; PadicDifferentialEquationsAndRigidCohomology §RD.5.116; AbelianSchemesAndArithmeticModuli §A4.1; AbelianSchemesAndArithmeticModuli §A4.3; §4.13; §4.6; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.2/very-good and TD.2/tensor-family-independence; BunGAndNewtonStrata §1.29; §4.12; §4.9; FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII TD.6/ordinary-adapted-lift and TD.6/sigma-centralizer-action; AbelianSchemesAndArithmeticModuli §A4.9; AbelianSchemesAndArithmeticModuli §A4.8; ShimuraData Layer 1; §4.10; AutomorphicBundles §§B2.4–B2.7.

## Layer 6: Curves without residue extension

### 6.1 Kottwitz–Rapoport strata at very special level

**Construction.** For the strongly acceptable very-special model, pull back the Schubert stratification of the intrinsic local model through the connected adjoint frame diagram. The index set is the dominant inertia-coinvariant coweights λ≤μ_h, with Bruhat closure order and unique extremal index μ_h. The extremal KR stratum is open dense and smooth. Each stratum descends over the finite residue extension given by the Frobenius orbit of its index; do not assign all geometric strata individually to the base residue field.

(KZ, §5.2.1, pp.48–49).

*Proof sketch.* KZ identifies the very-special admissible Schubert indices and transfers them through the adjoint diagram. Use the imported affine flag closure and descent results; equivariance makes the inverse-image stratification independent of a frame.

*Needs:* §3.10; §2.1; GeometricSatakeAndFusion Layer GS0; GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models).

**API.**

- A framed point lies in index λ exactly when its local-model image lies in the corresponding Schubert orbit.
- The closure is the union of strata with indices below λ in the very-special Bruhat order.
- Residue Frobenius sends index λ to σλ; an orbit descends over its orbit field.

**Checks.**

- The index μ_h gives the unique dense open Schubert stratum at very special level.
- On the split-at-p GU(1,1) hyperspecial curve, the minuscule local model has one KR stratum, while both ordinary and basic Newton classes occur. A basic point is therefore top KR and nonordinary.
- A non-fixed geometric index is transported to a different index by residue Frobenius; individual descent requires its orbit field.

*Remark.* The KR extremal stratum and the ordinary Newton locus are different stratifications.

### 6.2 Rational lifting to the local-model diagram

**Theorem.** For x∈S(F_q), a fibre of the connected adjoint tensor-frame torsor has an F_q-point by Lang’s theorem for its smooth connected special-fibre group. Its image is a local-model point over the same F_q in the corresponding KR stratum. The statement uses the actual connected reduction of the diagram; it does not follow from a disconnected full-fixer torsor or from strict-henselian comparison.

(KZ, Proof of Corollary 5.2.7, pp.52–53).

*Proof sketch.* KZ trivializes the connected adjoint frame torsor over the finite field before constructing the comparison curve. Apply Lang to the fibre, then the equivariant local-model map.

*Needs:* §3.10; §6.1; ReductiveGroupsPartII §RG2.3.

*Remark.* Both the framing point and its local-model image must be defined over F_q.

### 6.3 Curves over the original residue field

**Construction.** For x∈S_(K,λ)(F_q) with λ below the top KR index, construct a smooth geometrically connected curve C/F_q, a rational point c∈C(F_q), and a map f:C→S with f(c)=x such that a dense open of C maps into a strictly higher KR stratum. Use the same-field local-model root-curve theorem, pull it through a smooth stack presentation retaining the rational point, and apply finite-field Bertini with prescribed point and prescribed nonempty open intersection. For a point already in the top stratum, use a curve meeting the dense ordinary open inside its smooth component. Throughout the residue field stays F_q.

(KZ, Proposition 5.2.3 and Corollary 5.2.7, pp.49–53).

*Proof sketch.* KZ first supplies local-model curves through rational points with a dense higher-stratum intersection, then transports them to the Shimura stack. Import the same-field Schubert curves of GeometricSatakeAndFusionPartII LM.5/same-field-curve, including the ramified rank-one cases and the Lang argument for orbit representatives. Use the rational-point smooth stack presentation and Poonen’s finite-field Bertini with the required local condition and open intersection; shrink to a smooth geometrically connected curve.

*Needs:* §6.2; §6.1; §4.7; GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models); AlgebraicModuliForArithmeticGeometry Layer 4 (gap:rational-stack-presentation); AlgebraicModuliForArithmeticGeometry Layer 1 (gap:finite-field-bertini); GeometricSatakeAndFusionPartII LM.5/same-field-curve.

**API.**

- Return c, f and the equality f(c)=x over F_q.
- Return the nonempty dense open meeting a higher KR stratum, or the ordinary open in the top-stratum step.
- Pullback of every tower representation is lisse on C and has the original q-Frobenius at c.

**Checks.**

- For x/F_q the marked point has degree one over F_q; a curve whose marked point has degree m>1 fails.
- At a lower-stratum x, a constant map C→{x} fails the required dense higher-stratum condition.
- At a top-KR basic point on the split-at-p GU(1,1) hyperspecial curve, the comparison curve must meet ordinary points; top-KR membership alone cannot be the induction base.

*Remark.* The q-Frobenius at c is the same q-Frobenius as at x, not a power coming from field extension.

### Examples

For split-at-p GU(1,1) at hyperspecial level the KR index set has one element while the Newton stratification has ordinary and basic parts. For a zero-dimensional torus component already in the ordinary locus, the constant map A¹→{x} with marked point 0 supplies the top-stratum curve; the positive-dimensional Bertini step is unnecessary.

### Dependencies

*Needs:* §3.10; §2.1; GeometricSatakeAndFusion Layer GS0; GeometricSatakeAndFusionPartII LM.3/canonical-abelian-model and LM.7/general-normal-representative (gap:local-models); ReductiveGroupsPartII §RG2.3; §4.7; AlgebraicModuliForArithmeticGeometry Layer 4 (gap:rational-stack-presentation); AlgebraicModuliForArithmeticGeometry Layer 1 (gap:finite-field-bertini); GeometricSatakeAndFusionPartII LM.5/same-field-curve.

## Layer 7: Geometric Frobenius classes

### 7.1 Intrinsic group-valued tower local systems

**Construction.** For ℓ≠p, refine the ℓ-component of the prime-to-p Shimura tower to obtain its pro-étale K_ℓ-cover, then extend structure group to G(Q_ℓ). On the special fibre this defines a G(Q_ℓ)-local system L_ℓ. At neat level it agrees with the tensor-frame torsor of the abelian H₁=T_ℓ(A)⊗Q_ℓ realization; it descends as a local system on the non-neat Shimura stack. A path or frame changes the associated fundamental-group homomorphism only by G(Q_ℓ)-conjugation.

(KZ, §5.1.1–5.1.2, p.47).

*Proof sketch.* KZ defines the group-valued local system intrinsically from the integral tower and identifies its tensor-frame realization. Extend structure group from the compact-level cover and descend along a neat normal quotient.

*Needs:* §0.3; §0.2; §0.4; AutomorphicBundles §§B2.4–B2.7.

**API.**

- A Hodge embedding identifies L_ℓ with Isom_tensor(V_Qℓ,H₁(A)); the dual representation gives H¹_ét(A).
- An algebraic G-representation gives a lisse coefficient sheaf, preserving tensor, dual and coefficient extension.
- Prime-to-p level maps pull back the local system compatibly with the pro-étale tower.

**Checks.**

- The trivial representation gives the constant rank-one sheaf with Frobenius 1.
- A new frame conjugates the fundamental-group image; character values remain unchanged.
- The construction does not present the characteristic-p p-divisible group’s geometric points as an étale rank-2g local system.

*Remark.* The local system is defined before choosing an auxiliary Hodge embedding.

### 7.2 Frobenius point in the conjugacy quotient

**Construction.** For an F_q-point y on the special-fibre Shimura stack, define γ_(y,ℓ)=χ_G(ρ_ℓ(Frob_q,geom))∈Conj(G)(Q_ℓ), where the conjugacy quotient χ_G is imported from RG3.0. The point is independent of paths, frames and the chosen neat cover. For every algebraic representation its characteristic polynomial is that of geometric Frobenius on the associated local-system fibre. A Q-rational quotient point is not by definition represented by an element of G(Q).

(KZ, §5.1.2–5.1.3, pp.47–48).

*Proof sketch.* KZ sends the Frobenius of the intrinsic group-valued local system to the conjugacy quotient. Apply the imported quotient universal property and tensor-frame comparison to remove the choices.

*Needs:* §7.1; ReductiveGroupsPartIII RG3.0/conjugacy-quotient; AbelianSchemesAndArithmeticModuli §A6.21.

**API.**

- Evaluation by a representation’s invariant characteristic-polynomial map gives its Frobenius characteristic polynomial.
- Extension from F_q to F_(q^m) gives the quotient of the m-th power of the original Frobenius.
- Changing a path or tensor frame gives the same quotient point.

**Checks.**

- For GL_n the coordinates are coefficients of det(T−g), with constant term (−1)ⁿdet(g) nonzero. For g=diag(1,1/5), the rank-two polynomial is T²−(6/5)T+1/5; using det(1−gT) as a monic polynomial would reverse these coordinates.
- For E/F₅ with trace 2, the standard tower polynomial is T²−(2/5)T+1/5; its contragredient H¹ polynomial is T²−2T+5. The constants are 1/5 and 5, respectively.
- For the same elliptic point over F₂₅, H¹ has trace 2²−2·5=−6 and determinant 25; the tower polynomial becomes T²+(6/25)T+1/25, distinct from the polynomial over F₅.

*Remark.* Use geometric Frobenius consistently, with multiplier q in the H¹ convention.

### 7.3 Unit eigenvalues in every representation

**Theorem.** For every finite-dimensional algebraic representation θ of G over an algebraic coefficient field of characteristic zero and every special-fibre F_q-point, all Frobenius eigenvalues of θ are units at every finite place away from p. The faithful abelian H₁ realization has reciprocals of the H¹ Weil eigenvalues and these are such units; θ occurs as a subquotient of sums of tensor products of H₁ and H₁∨, so the unit property persists. No finite-order determinant hypothesis is imposed on θ itself.

(KZ, Lemma 5.3.3, pp.53–54).

*Proof sketch.* KZ propagates the prime-to-p unit property from the faithful abelian realization to all algebraic representations. Use the abelian Weil polynomial and its integral roots, duality, tensor products and the tensor-generator theorem for algebraic representations.

*Needs:* §7.2; AbelianSchemesAndArithmeticModuli §A4.1; AbelianSchemesAndArithmeticModuli §A6.21; ReductiveGroupsPartII §RG2.1; MotivesAndAlgebraicCycles §6.3.

*Remark.* A determinant with nonzero Weil weight must be handled by coefficient twisting in the companion theorem, not falsely declared finite order.

### 7.4 Representation-wise Frobenius independence

**Theorem.** Fix y/F_q, primes ℓ,ℓ′≠p, algebraic closures and embeddings of a common algebraic coefficient field into them. For every algebraic representation θ of G over a number field large enough for the two algebraic Frobenius classes, the characteristic polynomials of θ(γ_(y,ℓ)) and θ(γ_(y,ℓ′)) agree under these embeddings. On a comparison curve use companions for semisimple algebraic lisse sheaves on a smooth open curve, allowing a constant twist and finite coefficient extension, and Chebotarev on its dense open. Start with ordinary points, then the top-KR curve meeting the ordinary locus, and descend through the finite KR order. Never extend F_q in this comparison.

(KZ, Proposition 5.3.5 and proof, p.54).

*Proof sketch.* KZ uses companions and Chebotarev on same-field curves to move the ordinary Frobenius equality down the KR order. Use the unit-eigenvalue lemma to check the open-curve companion hypotheses, allowing coefficient extension without residue-field extension. Identify the companion with the other pulled-back local system by equality on the dense higher-stratum open, then specialize to the rational marked point.

*Needs:* §5.10; §6.3; §7.3; GlobalShtukasAndFunctionFieldLanglands §§6.1–6.2 (gap:open-curve-companions); ArithmeticGaloisRepresentations §§5.1, 5.13; ReductiveGroupsPartIII RG3.0/faithful-quotient-finite and RG3.1/finite-fibre-algebraicity.

*Remark.* The companion input must cover smooth nonproper curves and semisimplifications; the projective finite-determinant statement alone is insufficient.

### 7.5 A common algebraic conjugacy class

**Theorem.** For a strongly acceptable triple and y/F_q, all representation characters identify the semisimple Frobenius quotient points over algebraic closures with one point in Conj(G)(Q̄). Algebraicity of each local quotient point follows from the faithful abelian characteristic polynomial and the finite map of conjugacy quotients; equality follows from all algebraic characters, not the faithful characteristic polynomial alone.

(KZ, Proof of Theorem 5.1.4, §5.3.6, p.55).

*Proof sketch.* KZ combines representation-wise equality with invariant characters to identify the algebraic semisimple class. Use RG3.0’s finite faithful-quotient map for algebraicity and its full character separation for equality.

*Needs:* §7.2; §7.4; ReductiveGroupsPartIII RG3.0/character-separation; ReductiveGroupsPartIII RG3.0/faithful-quotient-finite and RG3.1/finite-fibre-algebraicity.

*Remark.* A faithful representation alone can merge distinct orthogonal conjugacy classes; all characters remove that ambiguity.

### 7.6 Rational common Frobenius class

**Theorem.** Let p>2, let (G,X,G°) be a strongly acceptable triple (so K_p=G°(Z_p) is a very-special connected parahoric), let K^p be any prime-to-p level, and let y∈S_K(F_q) be a point of the integral model (the stack of §0.2 when K^p is not neat), where F_q is a finite extension of the residue field k_E of the reflex place. There is a unique γ_y∈Conj(G)(Q) whose image in Conj(G)(Q_ℓ) is γ_(y,ℓ) for every ℓ≠p. Descend the common algebraic point using its rational local realizations at almost all primes and the degree-one-residue criterion of RG3.1. This theorem supplies a quotient point; a rational representative in G(Q) requires additional group hypotheses and belongs to the downstream KZ §6 arithmetic application.

(KZ, Theorem 5.1.4, p.48; proof §5.3.6, p.55).

*Proof sketch.* KZ descends the common algebraic class to Q by using its realization in Q_ℓ for every ℓ≠p. Apply the imported degree-one residue-field descent theorem to the field of definition of the common quotient point; separatedness gives uniqueness.

*Needs:* §7.5; ReductiveGroupsPartIII RG3.1/degree-one-residue-descent.

*Remark.* The exact q-Frobenius is retained throughout; uniqueness is in the conjugacy quotient, not in G(Q).

### Examples

For the elliptic trace-2 point over F₅ the tower quotient has coordinates (2/5,1/5); over F₂₅ they are (−6/25,1/25). For the trivial representation, Frobenius is 1 over both fields. These give different quotient points despite sharing the same geometric abelian fibre.

### Dependencies

*Needs:* §0.3; §0.2; §0.4; AutomorphicBundles §§B2.4–B2.7; ReductiveGroupsPartIII RG3.0/conjugacy-quotient; AbelianSchemesAndArithmeticModuli §A6.21; AbelianSchemesAndArithmeticModuli §A4.1; ReductiveGroupsPartII §RG2.1; MotivesAndAlgebraicCycles §6.3; §5.10; §6.3; GlobalShtukasAndFunctionFieldLanglands §§6.1–6.2 (gap:open-curve-companions); ArithmeticGaloisRepresentations §§5.1, 5.13; ReductiveGroupsPartIII RG3.0/faithful-quotient-finite and RG3.1/finite-fibre-algebraicity; ReductiveGroupsPartIII RG3.0/character-separation; ReductiveGroupsPartIII RG3.1/degree-one-residue-descent.

## Downstream consumers

- The abelian-variety form of independence of ℓ (KZ §6, Proposition 6.2.4 through Theorem 6.2.7) takes §7.6 as its geometric input, through an auxiliary Hodge-type group whose integral model has a point with the same residue field; ReductiveGroupsPartIII Layer RG3.5 states that application. Passing to the H¹ convention uses the contragredient representation, equivalently inversion on Conj(G): the elliptic coordinate pair (2/5,1/5) of the tower becomes (2,5).
- Integral models of abelian type (§3.8), their adjoint local-model diagrams (§§3.9–3.10), the extension property over discrete valuation rings (§1.8) and the Newton stratification (§§4.3–4.4) are the integral input for the geometry of special fibres of abelian-type Shimura varieties beyond the PEL case.
- Integral datum maps (§5.1) and ordinary special lifts (§§5.8–5.10) give special lifts and rational Frobenius representatives without extension of the residue field.

## References

- KZ: Mark Kisin; Rong Zhou. Independence of ℓ for Frobenius conjugacy classes attached to abelian varieties. arXiv:2103.09945v2; printed preprint pagination, 63 pages; not collated with Annals 202 (2025). [Legal text](https://arxiv.org/pdf/2103.09945v2).
- HT: Mark Kisin; Keerthi Madapusi Pera; Sug Woo Shin. Honda–Tate theory for Shimura varieties. Author PDF dated 27 January 2021, 41 pages; published Duke Math. J. 171 (2022); author pagination. [Legal text](https://math.berkeley.edu/~swshin/HT.pdf).
- KPZ: Mark Kisin; Georgios Pappas; Rong Zhou. Integral models of Shimura varieties with parahoric level structure, II. Published Forum Math. Pi 14 (2026), e14; 89-page publisher PDF. [Legal text](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/6C2640CC5856BDF975AF97EE30CA7906/S2050508626100316a.pdf/div-class-title-integral-models-of-shimura-varieties-with-parahoric-level-structure-ii-div.pdf).
- KP: Mark Kisin; Georgios Pappas. Integral models of Shimura varieties with parahoric level structure. Published Publ. Math. IHÉS 128 (2018), 121–218; journal pagination. [Legal text](https://www.numdam.org/item/10.1007/s10240-018-0100-0.pdf).
- K17: Mark Kisin. Mod p points on Shimura varieties of abelian type. Author manuscript dated 27 August 2016; published J. Amer. Math. Soc. 30 (2017); internal pagination. [Legal text](https://people.math.harvard.edu/~kisin/dvifiles/lr.pdf?download=1).

### Source conventions and corrections

- KZ, arXiv v2 Proposition 4.2.3(5), p.34, compared with Lemma 4.2.4 and its use on p.41: The intended assertion is torsion-free inertia coinvariants. The proof excludes the wild-index factor to invoke freeness, and the immediately following connected-fixer criterion requires torsion-free coinvariants. KPZ 7.2.19 supplies the free condition.
- KZ, arXiv v2 §5.1.3, p.47: Geometric points classify semisimple geometric conjugacy classes. Rational quotient points encode Galois-stable geometric classes; they need not classify rational conjugacy or have an F-rational representative. In SL₂(R), rotations by θ and −θ with sin θ nonzero have the same characteristic polynomial and geometric semisimple class, but no determinant-one real conjugator. A conjugator reverses the complex structure and has negative determinant.
- HT, Author PDF Corollary 1.3.13 proof, p.19: Use its actual Tannaka group H and its inclusion into G. Restriction of G-representations followed by the generated-category equivalence gives the required exact faithful functor. No equality H=G is required. Extra horizontal/Frobenius-invariant tensors may shrink H. For a trivial rank-two isocrystal with no imposed extra tensors, its generated category has trivial group while the unconstrained tensor stabilizer is GL₂. The same formal issue persists for families with proper monodromy.
- KP, Theorem 4.2.7, p.186; corrected in KPZ §7.3.1(1), p.85: It is a smooth group-action map. The frame projection is the torsor; the filtration map is smooth of the stated relative dimension. For the natural action on tensor frames, q_loc transports the filtration and is not invariant, whereas the frame projection is invariant. The action map is smooth by composing (g,m)↦(g,gm) with projection; this is exactly the property needed.
- KP, Published KP Lemma 3.1.17 argument, corrected in published KPZ §7.3.1(2), pp.85–86: Prove that the existing ring W-hat(A)[1/p] is already complete and separated for its p-adic topology. Use Zink logarithmic coordinates to prove the shifted tails tend to zero in that topology. Convergence in a noncomplete τ-topology does not justify the limit. The correction proves p-adic completeness and uses divisibility plus the logarithmic tail shift to establish the required convergence.
- KP, Lemma 4.6.13 and Corollary 4.6.15, pp.202–203; formula (4.6.20) repeated in Corollary 4.6.18, p.205; corrected in KPZ §7.3.1(3), pp.86–87: The component associated with j has p-level jK_p°j^(-1). Glue the corresponding conjugated-level connected pieces with the transported actions. Changing the p-component of a double-coset representative conjugates its stabilizer. The original identification only works uniformly if those representatives normalize the level.
- KPZ, Published KPZ §7.3.2, p.87, correcting the cited Pappas embedding-independence proof: Use the theorem only for very-good embeddings in the stated local-model scope, unless a stronger independent canonical-model theorem is supplied. The integral tensor/display comparison needs the first-order tensor-compatible trivialization; a closed good lattice embedding alone does not provide it.
- KP, Published KP local-model theorem and earlier KZ versions, as corrected by published KPZ Remark 7.1.4(1), p.73: For that display-based local-model diagram require a very-good embedding, including the first-order tensor trivialization. Keep KPZ 7.1.8’s separate modern shtuka proof for the broader strict-henselian result. The display comparison needs its canonical first-order identification to fix the defining tensors. A closed Grassmannian embedding alone does not establish that equality.
- HT, Author PDF §1.3.15 and Corollary 1.3.16, p.20; compare KZ Definition 2.2.4 and Remark 2.2.5, p.10: Define the ordinary locus only after specifying an actual class with Newton point equal to the averaged inverse Hodge cocharacter. Quasi-splitness guarantees existence; general inner forms need not have such a class. Keep the separate local-integrality hypothesis for density. For the quaternion division group, transfer to GL₂ over the unramified completion shifts both slopes by one half. Putative ordinary slopes (0,−1) would yield slopes (1/2,−1/2), each once, contradicting the denominator-divisibility constraint for isocrystals. This diagnoses a missing existence premise, not a counterexample to density under local integrality.
