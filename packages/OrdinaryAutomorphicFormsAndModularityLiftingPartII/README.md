# Roadmap: ordinary automorphic forms and ordinary modularity lifting, part II — dyadic unitary and symplectic ordinary lifting

**Summary.** This Part II continues *Ordinary automorphic forms and ordinary modularity lifting* (OrdinaryAutomorphicFormsAndModularityLifting), which stops at the rank-two ordinary theory: Hida families of modular, Hilbert and quaternionic forms, nearly ordinary deformation rings and the Skinner–Wiles theorems for GL₂ at odd primes. It builds the two higher-rank ordinary R = T theorems that the modularity of abelian surfaces over ℚ uses (Boxer–Calegari–Gee–Pilloni, *Modularity theorems for abelian surfaces*, §§5–6). The end theorems are:

1. **The dyadic unitary theorem** (BCGP25 Theorem 5.7.14). Let F be a CM field with F/F⁺ unramified at every finite place, every place of F⁺ above 2 or under the ramification of the seed split in F, n ≥ 2 and n[F⁺:ℚ] ≡ 0 mod 4, and let `ρ̄ : G_F → GL_n(𝔽̄₂)` come from an ordinary RACSDC automorphic representation, with nearly adequate image containing a regular semisimple element and, for n even, strongly residually odd at some real place. Then the ordinary deformation ring `R^{T,ord}` is finite over the weight algebra Λ, and for sufficiently deep tame level its reduced quotient is the localized universal ordinary Hecke algebra of a definite unitary group.
2. **The symplectic theorem for p > 2** (BCGP25 Theorem 6.3.4). Let p > 2 split completely in the totally real field F⁺ and let π be an ordinary cuspidal automorphic representation of `GSp₄(𝔸_{F⁺})` whose residual representation is GSp₄-reasonable and tidy, ordinary of weight 2 at p, with the seed point on a unique ordinary component. Then the deformation ring of the problem selected by π is finite over `Λ_{GSp₄,F⁺}` and its reduced quotient is the corresponding Hida–Hecke algebra.

The two theorems are proved separately: for p = 3 the image Sp₄(𝔽₃) ⊂ GL₄(𝔽₃) is not adequate (BCGP25 Remark 6.4.5), so the GSp₄ problem is patched with Whitmore's Taylor–Wiles places, while for p = 2 the GL₄ route works under near adequacy.

## Scope and ownership

This roadmap owns: polarized deformation problems over a weight algebra at p = 2 with strict equivalence by the full kernel Ĝ_n, Taylor–Wiles presentations over that weight algebra, the comparison of BCGP's near adequacy with relaxed adequacy, the unavoidable dyadic dual Selmer class (Layer 1); the Iwahori levels at 2, normalized U-operators, twisted Λ-structure and universal ordinary Hecke algebra of a definite unitary group at p = 2, with Geraghty's Hida theory and the Galois representations of constituents of algebraic modular forms at l = 2 (Layer 2); the ordinary global problem, its dimension bound, the Hecke-valued Galois representation at p = 2, uniform local fixed vectors and sufficiently deep levels (Layer 3); ring–module patching over a weight algebra with torsion and the whole proof of Theorem 5.7.14 (Layer 4); GSp₄ deformation problems over a weight algebra, GSp₄-reasonable residual representations and their Taylor–Wiles places, ordinary GSp₄ seed data, the selected problem and the Galois representation over the GSp₄ Hida–Hecke algebra (Layer 5); and the proof of Theorem 6.3.4 (Layer 6). GSp₄-reasonableness is defined nowhere else and is owned here; GSp4NonregularModularityLifting consumes it from Layer 5.

It imports, and does not plan again:

- **Algebraic modular forms, their Hecke operators and sufficiently small levels**: AutomorphicFormsOnReductiveGroups §7.4 (the level carrier S(J, M) with weighted Hecke operators) and §7.5 (finite stabilizers, sufficiently small level, base change of coefficients and the automorphic realization). Layer 2 specializes them to the definite unitary group with J = U and `M = M_{λ,{χ_v}}`; it does not redefine them.
- **The definite unitary group, its Hecke algebras for l odd, Taylor–Wiles data at p = 2, relaxed adequacy, strong residual oddness, soluble base change and auxiliary CM extensions**: PotentialAutomorphyInfrastructurePartII, Layers PL.0, PL.2, PL.3 (in particular the section *Taylor–Wiles data when F contains ζ_p, including p = 2*, where µ_v and the dual Selmer group `H¹_{𝒮^⊥,T}` are defined for O-coefficient problems) and PL.4 (*Adequacy relaxed to the vanishing of H¹(H, ad)* and *Strong residual oddness at a real place (p = 2)*). Layer 1 extends the Taylor–Wiles presentation to Λ-coefficients and Layer 2 extends the ordinary Hecke theory to l = 2; neither restates the l-odd or O-coefficient versions.
- **Weak adequacy in its ad⁰ and spanning forms, adequacy, the group 𝒢_n, GSp₄-valued representations, vastness, tidiness and the BCGP21 big-image verifications**: ArithmeticGaloisRepresentations §§7.4, 7.5, 7.9 and 7.11. Layer 1.3 keeps only the variant with the full adjoint ad ⊗ k̄ and the identification with relaxed adequacy.
- **Local deformation rings**: LocalGaloisDeformationRings §1.3 (the coefficient rings Λ_v), §1.9 (the ordinary flag scheme and its image ring R^△_v), §§1.17 and 1.22 (G-valued framed rings and smooth points), §§2.22–2.24 and 2.29 (GSp₄ Ihara-avoidance rings, the Taylor–Wiles block condition, fixed-type rings away from p, unipotent and Ihara-avoidance rings at p = 2), §F.2.6 (framed rings are power series over unframed rings), §§6.24, 6.27, 6.29, 6.31 and 6.35 (flag rings for trivial residual representation and the GSp₄ ordinary flag rings of BCGP25 §6.2).
- **Polarized deformation problems with O-coefficients and restriction finiteness**: GlobalGaloisDeformations §§8.1–8.4 (polarized problems, representability, tangent and obstruction spaces, presentations), §3.3 (global deformation data and T-framed deformations) and §4.2 (finiteness of restriction maps).
- **Commutative algebra for patching**: DeformationAndDerivedPatchingAlgebra §1.12, §§4.1, 4.2 and 4.6, §§5.2–5.5, §§6.1, 6.3, 6.5 and 6.7, Layer 8 (§§8.2–8.5) and §9.6.
- **Galois representations of conjugate self-dual cuspidal representations at every prime, local–global compatibility and temperedness**: AutomorphicGaloisRepresentationsPartII, Layers AG2.2 (*Twisting an essentially self-dual form into unitary type*), AG2.3 (*Arbitrary regular conjugate-self-dual existence*) and AG2.5 (*Caraiani's full away-prime compatibility* and *Temperedness of regular unitary-type cuspidal forms*).
- **ι-ordinary automorphic representations and their soluble base change**: PotentialAutomorphyInfrastructure §§3.44 and 3.47.
- **Bernstein components**: SmoothRepresentationsOfLocalGroups §SR.3.2. **Discrete automorphic representations of GSp₄**: ModularityAndLanglandsExtensions §3.9.

Downstream, not planned here: the multiplicity-one theorem and higher Coleman classicality in singular weight (BCGP25 §7, GSp4NonregularModularityLifting); solvable descent from GL₄ to GSp₄ (BCGP25 Proposition 7.5.3, EndoscopicTransferAndUnitaryTraceComparison §13.2); the 2–3 switch, the explicit subgroups of GSp₄(𝔽₃) of BCGP25 §6.4 and the main theorems on abelian surfaces (AbelianSurfacesModularity).

## Conventions

- E/ℚ_p is a finite coefficient field with ring of integers O, uniformizer ϖ (also written λ) and residue field k, enlarged when needed; CNL_O is the category of complete Noetherian local O-algebras with residue field k, and CNL_Λ that of Λ-algebras in it.
- F is an imaginary CM field with maximal totally real subfield F⁺, c ∈ Gal(F/F⁺) the nontrivial element, `δ_{F/F⁺}` the quadratic character of F/F⁺, and c_v a complex conjugation at an infinite place v. S_p (S_2) is the set of places of F⁺ above p (above 2) and S_∞ the set of infinite places; d = [F⁺:ℚ].
- 𝒢_n = (GL_n × GL_1) ⋊ {1, j} with `j(g, a)j^{−1}` = (`a·ᵗg^{−1}`, a), 𝒢_n^0 = GL_n × GL_1, multiplier ν with ν(j) = −1, and Ĝ_n(A) = ker(𝒢_n(A) → 𝒢_n(k)). Polarized lifts are representations of `G_{F⁺}` (BCGP25 writes G_F in §5.4; source issue below).
- ε is the p-adic cyclotomic character. GSp₄-valued lifts have similitude `ε^{−1}`; ad ρ̄ = 𝔤𝔰𝔭₄ (dimension 11) and ad⁰ρ̄ = 𝔰𝔭₄ (dimension 10).
- Local Artin maps send uniformizers to geometric Frobenius elements; for v ∤ p this gives `ε(Art_{F_v}(ϖ_v)) = q_v^{−1}`. The Hecke polynomial at a split place w is `Σ_j (−1)^j q_w^{j(j−1)/2} T^j_w X^{n−j}`.
- Λ = O⟦T(l)⟧ (l = 2) is the weight algebra of the unitary theory, where T(l) is the kernel of `∏_{v|2} T(O_{F⁺_v}) → ∏_{v|2} T(k(v))`, T the diagonal torus of GL_n; dim Λ = 1 + nd. `Λ_{GSp₄,v} = O⟦(O^×_{F⁺_v}(p))²⟧` and `Λ_{GSp₄,F⁺} = ⊗̂_{v|p} Λ_{GSp₄,v}`. Completed group algebras are the native carrier `TauCeti.completedGroupAlgebra`.
- "Reduced R = T" means that the map from the deformation ring onto the Hecke algebra is surjective with nilpotent kernel.
- Geraghty's paper is cited in the numbering of his preprint (Ger19); the published numbers are recorded in the source manifest.

**Checks.**

- Geometric Frobenius normalization: for p = 7 and v ∤ 7 with q_v = 2, `ε(Art_{F_v}(ϖ_v)) = 2^{−1} ≡ 4` mod 7, whereas the arithmetic normalization would give 2; the two differ, so the convention is pinned.
- The multiplier convention: for n = 4 the ordinary problem of Layer 3 has multiplier `ε^{1−n}δ_{F/F⁺}^n = ε^{−3}`, since `δ_{F/F⁺}^4 = 1`.
- dim Λ: for n = 2 and F⁺ real quadratic with 2 split, T(l) ≅ ((1 + 2ℤ₂)^×)^4 ≅ ({±1} × ℤ₂)^4, so dim Λ = 1 + 4 = 5 = 1 + nd.

## Exact supplier contracts

### From Mathlib

The baseline is Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; each declaration below was read at that commit.

- `Matrix.trace` and `Matrix.trace_one` (`Mathlib/LinearAlgebra/Matrix/Trace.lean`): the trace of a square matrix, and tr(1) = the cardinality of the index type. They give the trace pairing on ad and the scalar computation tr(1_n) = n of Layer 1.4.
- `Module.End.IsSemisimple` (`Mathlib/LinearAlgebra/Semisimple.lean`): an endomorphism is semisimple when the associated k[X]-module is semisimple; over a finite (hence perfect) field this is diagonalizability over k̄. It does not include invertibility.
- `Submodule.span` (`Mathlib/LinearAlgebra/Span/Defs.lean`): the span of the semisimple elements in Layer 1.3.
- `Matrix.symplecticGroup` (`Mathlib/LinearAlgebra/SymplecticGroup.lean`): the symplectic group as a submonoid of matrices with A·J·ᵀA = J; it is Sp, not the similitude group GSp₄.
- `LieAlgebra.Symplectic.sp` (`Mathlib/Algebra/Lie/Classical.lean`): the symplectic Lie subalgebra 𝔰𝔭₄ of matrices, the coefficient module of Layers 5–6.
- `groupCohomology` (`Mathlib/RepresentationTheory/Homological/GroupCohomology/Basic.lean`): cohomology of a representation of a group, for H⁰ and H¹ of finite image groups in the big-image conditions.

### From Tau Ceti

The baseline is Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. `TauCeti.completedGroupAlgebra` (`TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean`) is the inverse limit of the group algebras R[Γ/U] over open normal U; for O and the profinite groups T(l), `(O^×_{F⁺_v}(p))²` and ℤ_p^h it is the weight algebras Λ, `Λ_{GSp₄,v}` and the patching group rings. Tau Ceti has no deformation, Hida or adequacy declarations.

### From TauCetiRoadmap.PotentialAutomorphyInfrastructurePartII

- PL.0 (*Soluble base change and descent of automorphy*, *Soluble and cyclic CM extensions with prescribed local behaviour*, *Principal-series characterisation of ι-ordinarity*): soluble CM extensions linearly disjoint from a given field with prescribed local behaviour at finitely many places, soluble descent of automorphy, and the principal-series criterion for ι-ordinarity. Assumed for every prime, including 2.
- PL.1 (*Generic local representations are smooth points and smooth points are dense*): a lift whose associated local representation is generic lies on a single component of the local lifting ring.
- PL.2 (*The definite unitary group attached to a CM field*, *Base change and descent between definite unitary groups and GL_n*): the group G with ι_w : `G(O_{F⁺_v}) ≅ GL_n(O_{F_w})` at split v, Labesse's descent of RACSDC representations to G and base change of automorphic representations of G to isobaric sums of discrete conjugate self-dual representations (parts (1) and (2) of that section, whose hypotheses carry no condition on l). The algebraic modular forms, Hecke algebras and constituent Galois representations of PL.2 are stated for l odd (hypothesis 1 of *Algebraic modular forms on a definite unitary group*, inherited by *Galois representations attached to constituents of algebraic modular forms*); Layer 2 supplies l = 2, including the constituent Galois representations (2.3).
- PL.3 (*Taylor–Wiles data when F contains ζ_p, including p = 2*): for O-coefficient problems in the sense of Thorne 2017 §2.1, µ_v, the dual Selmer group `H¹_{𝒮^⊥,T}`, and Thorne 2017 Proposition 2.21 under adequacy. Layer 1.2 extends this to Λ-coefficients and near adequacy.
- PL.4 (*Adequacy relaxed to the vanishing of H¹(H, ad)*, *Strong residual oddness at a real place (p = 2)*): relaxed adequacy (H¹(H, k) = 0, H¹(H, ad) = 0 and the trace condition on simple submodules of ad) and the uses of adequacy it leaves intact; strong residual oddness, r̄(c_v) GL_n(k)-conjugate to (1_n, 1)j.

### From TauCetiRoadmap.AutomorphicFormsOnReductiveGroups

- §7.4: the carrier S(J, M) of algebraic modular forms with level J and coefficient module M with its continuous J-action, restriction and trace, and weighted Hecke operators [JgJ] for a coefficient action extended to a submonoid; and the rational covariance model.
- §7.5: finite stabilizers Γ_i, the decomposition S(J, M) `≅ ⊕_i M^{Γ_i}`, sufficiently small level (torsion-free projection to one finite place, making every Γ_i trivial), base change of coefficients, and the automorphic realization with its occurrence multiplicities.

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

- §7.4: the group 𝒢_n, polarized representations and their extension from G_F to `G_{F⁺}`.
- §7.5: GSp₄-valued representations and the standard representation GSp₄ → GL₄.
- §7.9: the ad⁰ trace condition (every simple k̄[H]-submodule W ⊂ ad⁰ ⊗ k̄ has some semisimple g ∈ H and eigenvalue α with `tr(e_{g,α}W) ≠` 0), weak adequacy (the semisimple elements of H span M_n(k)), their equivalence for finite H, and absolute irreducibility of weakly adequate subgroups.
- §7.11: enormous, weakly enormous, vast and tidy subgroups of GSp₄(k), and the verification lemma for `H¹(Gal(L(ζ_{p^N})/F), ad⁰ρ̄(1))` under ζ_p ∉ L or enormous image.

### From TauCetiRoadmap.LocalGaloisDeformationRings

- §1.3: the coefficient rings `Λ_v = O⟦I^{ab}_{F_ṽ}(p)^n⟧`. §1.9: the ordinary flag scheme and its scheme-theoretic image R^△_v over Λ_v (Geraghty's ring).
- §1.17: G-valued framed deformation rings with fixed multiplier. §1.22: smooth points of the generic fibre; R^□_v is formally smooth over O when H⁰(F_v, ad⁰ρ̄(1)) = 0.
- §2.22: GSp₄ Ihara-avoidance rings: irreducible for distinct nontrivial characters, special-fibre points on single components for the unipotent ring (BCGP21 Propositions 7.4.7–7.4.8). §2.23: the Taylor–Wiles block condition in rank n, including p = 2. §2.24: fixed-type rings away from p, constancy of types on components, finitely many components of R^□[1/p], and a finite extension over which every lift becomes unipotently ramified (BCGP25 Lemma 5.6.2). §2.29: unipotent ramification and Ihara-avoidance rings at p = 2 (BCGP25 Lemma 5.6.3, Proposition 5.6.4).
- §F.2.6: framed rings are power series over unframed rings, with n²|T| − 1 variables.
- §6.24: for trivial residual representation and [F_ṽ:ℚ_p] > n(n−1)/2 + 1, R^△_v/Q is flat, geometrically irreducible of dimension 1 + n² + [F_ṽ:ℚ_p]n(n+1)/2 with generically reduced special fibre (BCGP25 Proposition 5.6.6).
- §§6.27, 6.29, 6.31, 6.35: the p-distinguished B-ordinary conditions, the GSp₄ ordinary flag-incidence scheme and its image R^△_v over `Λ_{GSp₄,v}`, regularity at characteristic-zero points (relative dimension 16 over O), and BCGP25 Lemma 6.2.6 (a component surjecting onto Spec `Λ_{GSp₄,v}` has a special-fibre component lying on it alone).
- What LocalGaloisDeformationRings must provide (gap:dyadic-flag-ring-dimension): for v | 2 and any residual `ρ̄|G_{F_ṽ}` with a stable full flag, every irreducible component of Spec R^△_v has dimension at least 1 + n² + [F_ṽ:ℚ₂]n(n+1)/2 (section §6.24; Ger19 Lemma 3.2.3 is a route).
- What LocalGaloisDeformationRings must provide (gap:gsp4-semisimple-taylor-wiles-places): Whitmore's local problem for GSp₄ with fixed similitude at a place v with q_v ≡ 1 mod p^n and ρ̄(Frob_v) semisimple, attached to the Levi subgroup centralizing ρ̄(Frob_v): representability, formal smoothness over O[Δ_v], its Selmer condition L_v = H¹(F_v, N_v) ⊕ H¹_ur(F_v, M_v) and its dual condition L_v^⊥ = H¹_ur(F_v, M_v^∨(1)) (WHI22 (3.1), (3.3), (3.5); section §2.17).

### From TauCetiRoadmap.GlobalGaloisDeformations

- §§8.1–8.4: polarized deformation problems with O-coefficients, representability, tangent and obstruction spaces and presentations, for p odd; Layer 1 supplies p = 2 over Λ.
- §3.3: global deformation data and T-framed deformations, used for GSp₄ representability. §4.2: finiteness of restriction maps to a finite extension.

### From TauCetiRoadmap.DeformationAndDerivedPatchingAlgebra

- §1.12: completed tensor products of complete local rings.
- §4.1: finiteness from a residual fibre (a complete local Λ-algebra R with R/m_Λ R finite over k is finite over Λ). §4.2: algebraic and valued integral points (a nonzero finite O-algebra of dimension ≥ 1 has a ℚ̄_p-point). §4.6: pointed tensor domains and components of completed tensor products.
- §§5.2–5.4: finite decorated data, cofinal cutoffs and diagonal extraction, and the limit presentation with its actions; general coefficients, including p = 2. §5.5, first part: for S regular local of dimension d acting through S → A on a nonzero module M finite free over S, with dim A ≤ d, depth_A M = dim Supp_A M = dim A. The balanced patching theorem of §5.5 is stated for p ≥ 3 and is not used at p = 2.
- §6.1: near faithfulness on support. §6.3: the maximal coefficient-flat quotient. §6.5: reduced and torsion-free ring identification. §6.7: generic and special components.
- Layer 8 (§§8.2–8.5): simultaneous patching of complexes, rings and actions with Λ = O⟦w₁, …, w_s⟧; used for Layer 6, where `Λ_{GSp₄,F⁺}` is such a power series ring.
- §9.6: paired support transport, used in the Ihara-avoidance step of Layer 6.

### From TauCetiRoadmap.AutomorphicGaloisRepresentationsPartII

- Layer AG2.3, *Arbitrary regular conjugate-self-dual existence*: for every prime ℓ, including ℓ = 2, a continuous semisimple Galois representation attached at good places to a regular algebraic conjugate self-dual cuspidal representation of GL_m over a CM field; with Layer AG2.2, *Twisting an essentially self-dual form into unitary type*, the same for essentially conjugate self-dual ones.
- Layer AG2.5, *Caraiani's full away-prime compatibility* and *Temperedness of regular unitary-type cuspidal forms*: for RACSDC π, every prime p (including 2) and w ∤ p, `WD(r_{π,p}|G_{F_w})^{F-ss}` ≅ rec(π_w `⊗ |det|^{(1−n)/2}`), with π_w tempered.
- What AutomorphicGaloisRepresentationsPartII must provide (gap:gsp4-galois-representations-totally-real): for F⁺ totally real and π a cuspidal automorphic representation of `GSp₄(𝔸_{F⁺})` of general type with weights `((k_v, l_v; 2))_{v|∞}`, k_v ≥ l_v ≥ 2, including the ordinary parallel weight 2 case of BCGP25 Theorem 1.8.17, a continuous `ρ_{π,p}` : `G_{F⁺} → GSp₄(ℚ̄_p)` with similitude `ε^{−1}` times the finite central character, unramified outside p and the ramification of π, with Frobenius characteristic polynomials the spin Hecke polynomials, ordinary at v | p with the stabilization of π_v when π_v is ordinary (section *GSp₄ construction and normalization*, which treats F⁺ = ℚ).

### From TauCetiRoadmap.PotentialAutomorphyInfrastructure

- §3.44: ι-ordinary automorphic representations of GL_n over CM fields. §3.47: soluble base change preserves ι-ordinarity and the RACSDC property.

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups

- §SR.3.2: inertial classes, Bernstein components, and the finitely generated projective generator of each cuspidal component.
- What SmoothRepresentationsOfLocalGroups must provide (gap:inertial-types-and-block-levels): for K/ℚ_l finite and n ≥ 1, (i) under the local Langlands correspondence for GL_n(K) the Bernstein inertial support of π determines and is determined by the restriction to inertia of the Weil part of rec(π), forgetting the monodromy, so that a finite set of such restrictions meets finitely many Bernstein blocks; (ii) for each Bernstein block there is a compact open subgroup U ⊂ GL_n(O_K) such that every irreducible member π of the block has π^U ≠ 0 (section §SR.3.2, with the local Langlands correspondence from the roadmap that owns it).

### From TauCetiRoadmap.ModularityAndLanglandsExtensions

- §3.9: discrete automorphic representations of GSp₄ over totally real fields, general and endoscopic type, and the transfer to GL₄.

### From TauCetiRoadmap.AutomorphicBundles

- Layer B5 (B5.10–B5.12): geometric Hecke operators on classical sections of automorphic bundles, with their convolution law and the non-neat case, in the four settings B5 names (determinant-weight and vector-coefficient good-prime PEL models, prime-to-p ramified Hilbert models, and the characteristic-zero classical Siegel comparison). B5 states nothing specific to the Hilbert–Siegel varieties of `Res_{F⁺/ℚ}GSp₄`; the three gaps below ask for the ordinary theory on them.
- What AutomorphicBundles must provide (gap:hilbert-siegel-hida-module-free): for F⁺ totally real with p > 2 split completely, the Hida module M¹ of BCGP21 §§7.8–7.9 with I = ∅, built from the ordinary part of coherent H⁰ of Hilbert–Siegel varieties of prime-to-p level, finite free over `Λ_{GSp₄,F⁺}`, with the action of the prime-to-p Hecke operators of B5.10, and its variant M^χ at the level carrying characters χ_v at a finite set R of places prime to p (section Layer B5).
- What AutomorphicBundles must provide (gap:hilbert-siegel-taylor-wiles-coinvariants): in the same setting and for a set Q of Taylor–Wiles places with group Δ_Q, the variants `M^{1,Q}` and `M^{χ,Q}` at the corresponding auxiliary level, finite free over `Λ_{GSp₄,F⁺}[Δ_Q]` with Hecke action and Δ_Q-coinvariants isomorphic to M¹ and M^χ (WHI22 Propositions 7.5–7.6; section Layer B5).
- What AutomorphicBundles must provide (gap:hilbert-siegel-ordinary-classicality): in the same setting, every ℚ̄_p-point of the Hecke algebra acting on M¹ above a Zariski-dense set of arithmetic weights of `Λ_{GSp₄,F⁺}` is the Hecke eigensystem of an ordinary cuspidal automorphic representation π of `GSp₄(𝔸_{F⁺})` of large regular weight (BCGP21 §7.9, classicality; section Layer B5).

## How to read the build

Layer 1 sets up polarized deformation theory at p = 2 over a weight algebra and the cohomological input for Taylor–Wiles: Thorne's complex with its corrected cohomology in degree 3, near adequacy, and the one dual Selmer class that survives every Taylor–Wiles datum. Layer 2 specializes Geraghty's ordinary Hida theory for definite unitary groups to l = 2. Layer 3 defines the ordinary global problem, bounds the dimension of its components, constructs the Hecke-valued Galois representation and the sufficiently deep levels. Layer 4 proves Theorem 5.7.14: solvable preparation with an auxiliary place, ring–module patching over a weight algebra with torsion, the component structure of the patched rings, Ihara avoidance, removal of the auxiliary place and the two conclusions. Layer 5 sets up the GSp₄ side for p > 2: deformation problems over Λ, GSp₄-reasonable residual representations and Whitmore's Taylor–Wiles places, seed data, the selected problem and the Hida–Hecke Galois representation. Layer 6 proves Theorem 6.3.4.

## Layer 1: Dyadic polarized deformation problems over a weight algebra

For p = 2 polarized deformation theory has two features absent for odd p. Conjugation by the GL_1 factor of 𝒢_n is not absorbed by scalar matrices, because elements of 1 + m_A need not be squares; strict equivalence therefore uses the full kernel Ĝ_n, and the classes µ_v measure the difference. And a scalar dual Selmer class always survives: the quadratic extension of F⁺ inside `F(ζ_{2^∞})` gives a class that no Taylor–Wiles datum of large level kills, and Thorne's complex has one-dimensional cohomology in degree 3.

### 1.1 Polarized deformation problems up to Ĝ_n-conjugacy

Let E/ℚ₂ be finite with ring of integers O, uniformizer ϖ and residue field k. Let F be an imaginary CM field such that F/F⁺ is unramified at every finite place and every place of F⁺ above 2 splits in F. Let S be a finite set of places of F⁺ containing S_2 and S_∞, and let `G_{F⁺,S} ⊃ G_{F,S}` be the Galois groups of the maximal extension F(S) of F unramified outside S. Fix a continuous r̄ : `G_{F⁺,S} → 𝒢_n(k)` with `r̄^{−1}(𝒢_n^0(k)) = G_{F,S}` whose restriction ρ̄ to `G_{F,S}`, projected to GL_n, is absolutely irreducible, and a continuous χ : `G_{F⁺,S} → O^×` lifting ν ∘ r̄ with χ(c_v) = −1 for every v ∈ S_∞. For each v ∈ S fix Λ_v ∈ CNL_O and put `Λ = ⊗̂_{v∈S} Λ_v`.

Define a lifting of `r̄|G_{F⁺_v}` to A `∈ CNL_{Λ_v}` as a continuous r_v : `G_{F⁺_v} → 𝒢_n(A)` reducing to `r̄|G_{F⁺_v}` with `ν ∘ r_v = χ|G_{F⁺_v}`; the functor Lift^□_v is represented by `R^□_v ∈ CNL_{Λ_v}`. A local deformation problem D_v ⊂ Lift^□_v is a representable subfunctor stable under conjugation by Ĝ_n(A). A global deformation problem is a tuple 𝒮 = (F, r̄, O, χ, S, `{Λ_v}_{v∈S}`, `{D_v}_{v∈S}`). A lift of r̄ to A ∈ CNL_Λ is a continuous r : `G_{F⁺,S} → 𝒢_n(A)` reducing to r̄ with ν ∘ r = χ; it is of type 𝒮 if `r|G_{F⁺_v} ∈ D_v(A)` for every v ∈ S. Two lifts are strictly equivalent if they are conjugate by an element of Ĝ_n(A), the whole kernel including its GL_1 factor. For T ⊂ S a T-framed lift of type 𝒮 is `(r, (α_v)_{v∈T})` with α_v ∈ Ĝ_n(A), and (r, (α_v)) ~ (a `r a^{−1}`, (a α_v)) for a ∈ Ĝ_n(A). Def_𝒮 and Def^T_𝒮 : CNL_Λ → Set are the functors of strict equivalence classes of lifts, resp. T-framed lifts, of type 𝒮. When Λ_v = O for v ∈ S ∖ T, put `R^loc_{𝒮,T} = ⊗̂_{v∈T} R_v`, a Λ-algebra through `⊗̂_{v∈T} Λ_v ≅ Λ` (BCGP25 §5.4, pp. 121–122; BCGP25 Lemma 5.1.2 and Remark 5.1.3, pp. 115–116).

- Def_𝒮 and Def^T_𝒮 are represented by R_𝒮 and R^T_𝒮 in CNL_Λ, because ρ̄ is absolutely irreducible and the centralizer of r̄ in Ĝ_n is the image of the scalars (Tho17 Lemmas 2.8 and 2.10; the proofs do not use p odd).
- For T ≠ ∅, Def^T_𝒮 → Def_𝒮 is a torsor under `(∏_{v∈T} Ĝ_n)/Ĝ_m`, so R^T_𝒮 is formally smooth over R_𝒮 of relative dimension (n² + 1)#T − 1; for T = ∅, R^T_𝒮 = R_𝒮.
- (r, (α_v)) `↦ (α_v^{−1} r|G_{F⁺_v} α_v)_v` defines a CNL_Λ-morphism `R^loc_{𝒮,T} → R^T_𝒮`.
- At a place v split in F as ṽṽ^c every lifting takes values in 𝒢_n^0(A), and r_v ↦ ρ_v (the GL_n-projection of `r_v|G_{F_ṽ}`) identifies liftings of `r̄|G_{F⁺_v}` with liftings of `ρ̄|G_{F_ṽ}`, compatibly with conjugation.
- If every element of 1 + m_A has a square root (for example for p odd), conjugation by (1, a) ∈ Ĝ_n(A) equals conjugation by (µ·1_n, 1) with `µ² = a^{−1}`, so Def_𝒮 agrees with the functor of lifts up to 1 + M_n(m_A)-conjugacy of GlobalGaloisDeformations §8.1.
- Adding a Taylor–Wiles datum Q gives 𝒮_Q with `R_{𝒮_Q}` an O[Δ_Q]-algebra and `R_{𝒮_Q}` `⊗_{O[Δ_Q]} O ≅ R_𝒮`.

**Checks.**

- For T = ∅ the framed ring is R_𝒮 itself, and the framing torsor is the trivial group.
- For n = 4 and #T = 3 the relative dimension of R^T_𝒮 over R_𝒮 is (16 + 1)·3 − 1 = 50; the GL_n-framing count n²#T − 1 = 47 omits the GL_1 factor of Ĝ_n and is wrong.
- For γ = (B, b)j ∈ 𝒢_n(A) ∖ 𝒢_n^0(A) and a ∈ 1 + m_A, conjugation by (1, a) sends γ to `(a^{−1}B, b)j` and fixes 𝒢_n^0(A) pointwise; over A = k[ε] with p = 2 and a = 1 + ε, a is not a square ((x + yε)² = x²), so this conjugation is not induced by a scalar matrix.
- For p = 2, n even and r̄(c_v) GL_n(k)-conjugate to (1_n, 1)j at a real place v, the functor of lifts up to 1 + M_n(m_A)-conjugacy differs from Def_𝒮: the one-dimensional µ_v of 1.2 is identified to zero by Ĝ_n-conjugacy and not by GL_n-conjugacy.

*Needs:* ArithmeticGaloisRepresentations §7.4; GlobalGaloisDeformations §§8.1–8.2; LocalGaloisDeformationRings §§1.17 and F.2.6; DeformationAndDerivedPatchingAlgebra §1.12.

### 1.2 Thorne's complex, the dyadic dual Selmer group and Taylor–Wiles presentations over Λ

Keep the data of 1.1 with p = 2, let ad r̄ = M_n(k) = Lie GL_n ⊂ 𝔤_n r̄ = Lie 𝒢_n with the adjoint action of `G_{F⁺,S}` through r̄, so that 0 → ad r̄ → 𝔤_n r̄ → k → 0 is exact, and let L_v ⊂ H¹(F⁺_v, ad r̄) be the image of the tangent space of D_v. The classes µ_v = ker(H¹(F⁺_v, ad r̄) → H¹(F⁺_v, 𝔤_n r̄)) and the dual Selmer group `H¹_{𝒮^⊥,T} ⊂` H¹(F(S)/F⁺, ad r̄(1)), cut out by µ_v^⊥ at v ∈ T and by L_v^⊥ at v ∈ S ∖ T, are those of PotentialAutomorphyInfrastructurePartII PL.3, *Taylor–Wiles data when F contains ζ_p, including p = 2*; they depend only on the residual data, so they are the same for the Λ-coefficient problem. Let `C^•_{𝒮,T}` be Thorne's complex and `h^i_{𝒮,T}` the dimensions of its cohomology.

Prove the following (BCGP25 §5.4, (5.4.1)–(5.4.3), pp. 122–123, and Remark 5.4.4, pp. 123–124; Tho17 Lemmas 2.12, 2.13, 2.15 and 2.17, Corollary 2.14):

1. µ_v is the image of the connecting map H⁰(F⁺_v, k) → H¹(F⁺_v, ad r̄), so dim_k µ_v ≤ 1; µ_v ⊂ L_v; µ_v = 0 if v splits in F. At a real place v, dim_k µ_v = 1 if r̄(c_v) is GL_n(k)-conjugate to (1_n, 1)j, and µ_v = 0 if n is even and r̄(c_v) is conjugate to (Ψ_n, 1)j, Ψ_n the antidiagonal matrix.
2. For T ≠ ∅: `h⁰_{𝒮,T} = 0`, `h^i_{𝒮,T} = 0` for i ≥ 4, `h²_{𝒮,T} = h¹_{𝒮^⊥,T}`, and `h³_{𝒮,T}` = h⁰(F(S)/F⁺, ad r̄(1)) = 1. Moreover `h¹_{𝒮,T}` = dim_k `m_{R^T_𝒮}/(m_{R^loc_{𝒮,T}}, m²_{R^T_𝒮})`, whatever the coefficient rings Λ_v.
3. If S = T ⊔ Q ⊔ S_∞ with S_2 ⊂ T, D_v = Lift^□_v at v ∈ S_∞ and Q a Taylor–Wiles datum with #Q = q, the Euler characteristic is `χ_{𝒮_Q,T} = 1 − #T − q + dn(n−1)/2`.
4. (Taylor–Wiles presentation over Λ.) Assume (i) χ(c_v) = −1 and D_v = Lift^□_v for v ∈ S_∞; (ii) F = F⁺(√−1); (iii) if n is even, r̄(c_v) is GL_n(k)-conjugate to (1_n, 1)j for some v ∈ S_∞; (iv) ρ̄(G_F) is nearly adequate (1.3); and let T = S ∖ S_∞. Put `q = h¹_{𝒮^⊥,T} − 1` and g = q + #T − 1 − dn(n−1)/2. Then for each N ≥ 1 there are Taylor–Wiles data `(Q, (α_v)_{v∈Q})` of level N with #Q = q and a surjection of `R^loc_{𝒮,T}`-algebras, hence of Λ-algebras, `R^loc_{𝒮,T}⟦X_1, …, X_g⟧ ↠ R^T_{𝒮_Q}` (BCGP25 Proposition 5.5.6, p. 126).
5. (Comparison with conjugate self-dual Selmer groups.) Restriction gives an exact sequence 0 → H¹(F/F⁺, k) → H¹(F(S)/F⁺, ad r̄) → `H¹(F(S)/F, ad r̄)^{Gal(F/F⁺)}` → H²(F/F⁺, k) → H²(F(S)/F⁺, ad r̄), and the restriction map is surjective as soon as some real place v has r̄(c_v) conjugate to (1_n, 1)j (automatic for n odd; strong residual oddness for n even).

The route: (1) is the long exact sequence of 0 → ad r̄ → 𝔤_n r̄ → k → 0, Ĝ_n-stability of D_v and Tho17 Lemma 2.17. (2) is Tho17 Lemma 2.15 by Poitou–Tate, with h⁰ = 0 because T ≠ ∅, h^i = 0 for i ≥ 4 because global and archimedean cohomology agree in degrees ≥ 3 (Tho17 line 390), and h³ = 1 because at p = 2 the element j acts on Lie GL_n by X ↦ −ᵗX = ᵗX, so the scalars 1_n are `G_{F⁺}`-invariant in ad r̄(1) while ρ̄ is absolutely irreducible. (3) is Tho17 Corollary 2.14 with ℓ¹_v = n(n+1)/2 at real places and n² + 1 at v ∈ Q. (4) is the argument of PL.3 with relaxed adequacy replaced by near adequacy through 1.3, the coefficient rings entering only through `R^loc_{𝒮,T}` (KT17 §4; BCGP25 §5.4). (5) is inflation–restriction with coefficients ad r̄ and `(ad r̄)^{G_F} = k`; surjectivity holds because H²(F/F⁺, k) ≅ Ĥ⁰(Gal(ℂ/ℝ), k) maps to Ĥ⁰(Gal(ℂ/ℝ), ad r̄) = `(ad r̄)^{c_v}/(1 + c_v)ad r̄` by 1 ↦ 1_n, and writing r̄(c_v) = (B, 1)j with B symmetric, 1_n ∈ (1 + c_v)ad r̄ exactly when B is alternating.

**Checks.**

- Euler count with the corrected h³: for n = 2, d = 2, #T = 3, q = 5 and `h² = h¹_{𝒮_Q^⊥,T} = 1`, h¹ = h² − h³ − χ = 1 − 1 − (1 − 3 − 5 + 2) = 5 = g; using h³ = 0 would give 6 = g + 1, one more generator than the presentation of (4) provides.
- At a split place v ∈ T, µ_v = 0, so µ_v^⊥ is all of H¹(F⁺_v, ad r̄(1)) and v imposes no condition on `H¹_{𝒮^⊥,T}`.
- At a real place with r̄(c_v) = (Ψ_2, 1)j (n = 2), B = Ψ_2 is alternating, the map H²(F/F⁺, k) → Ĥ⁰(Gal(ℂ/ℝ), ad r̄) is zero and µ_v = 0; with r̄(c_v) = (1_2, 1)j, 1_2 ∉ (1 + c_v)ad r̄ = {Y + ᵗY}, which consists of matrices with zero diagonal.
- For p odd the same computation gives `h³_{𝒮,T}` = h⁰(F(S)/F⁺, ad r̄(1)), which vanishes when ζ_p ∉ F; the value 1 is a feature of F = F⁺(√−1) ∋ ζ_2.

*Needs:* 1.1; 1.3 for (4); PotentialAutomorphyInfrastructurePartII PL.3 (*Taylor–Wiles data when F contains ζ_p, including p = 2*) and PL.4 (*Strong residual oddness at a real place (p = 2)*); GlobalGaloisDeformations §8.3; LocalGaloisDeformationRings §2.23.

### 1.3 Weak adequacy with the full adjoint, and near adequacy

Let k be a finite field, V a finite-dimensional k-vector space, ad = End_k(V), ad⁰ the trace-zero endomorphisms, H ⊂ GL(V) a subgroup with set of semisimple elements H^ss, and for g ∈ H^ss and α ∈ k̄ let `e_{g,α}` be the projection of V ⊗ k̄ onto the generalized α-eigenspace of g. Let U = {w ∈ ad ⊗ k̄ : tr(gw) = 0 for all g ∈ H^ss}. Prove that U = {w : `tr(e_{g,α}w) = 0` for all g ∈ H^ss and α}, that U is an H-submodule of ad⁰ ⊗ k̄, and that the following are equivalent: (1) every simple k̄[H]-submodule W ⊂ ad ⊗ k̄ has σ ∈ H^ss and an eigenvalue α of σ with `tr(e_{σ,α}W) ≠ 0`; (3) ad is spanned over k by H^ss; (U) U = 0. Deduce that BCGP's nearly adequate subgroups (weakly adequate, H¹(H, k) = 0 and H¹(H, ad) = 0; BCGP25 Definition 5.3.3) are exactly the relaxed-adequate subgroups of PotentialAutomorphyInfrastructurePartII PL.4 when k contains the eigenvalues of the elements of H (BCGP25 Lemma 5.3.1 and proof, p. 120; Definitions 5.3.2–5.3.3 and Remark 5.3.4, pp. 120–121). The equivalence of the ad⁰ trace condition with spanning, and absolute irreducibility of weakly adequate subgroups, are ArithmeticGaloisRepresentations §7.9 and are not repeated.

The route: each `e_{g,α}` is a polynomial in g and `g = Σ_α α e_{g,α}` for semisimple g, which identifies the two descriptions of U; H-stability follows from `tr(g·hwh^{−1}) = tr(h^{−1}gh·w)` with `h^{−1}gh ∈ H^ss`; g = 1 gives U ⊂ ad⁰ ⊗ k̄; nondegeneracy of the trace form gives (3) ⇔ (U); and (1) says that U, an H-submodule, meets the socle of ad ⊗ k̄ trivially, hence (1) ⇔ (U).

**Checks.**

- U always lies in ad⁰ ⊗ k̄, because 1 ∈ H^ss; for H = {1} ⊂ GL₂(k), U = ad⁰ ⊗ k̄ is three-dimensional and H is not weakly adequate.
- GL₂(𝔽₂) ≅ S₃ acts absolutely irreducibly on 𝔽₂², but its semisimple elements are 1, A and A² with A of order 3 (the involutions are unipotent), spanning only 𝔽₂[A] ≅ 𝔽₄ of dimension 2 < 4; absolute irreducibility does not give weak adequacy, and (1) fails for the simple submodule U ≠ 0.
- A₅ ≅ SL₂(𝔽₄) acting on its four-dimensional projective representation V over 𝔽₂ is nearly adequate (BCGP25 Lemma 8.2.2, p. 182) and not adequate in the sense of Tho17 Definition 2.20, since H¹(A₅, ad/k) ≅ H²(A₅, k) ≅ k from the Schur multiplier ℤ/2 (BCGP25 Remark 8.2.3, p. 182).

*Needs:* ArithmeticGaloisRepresentations §7.9; PotentialAutomorphyInfrastructurePartII PL.4 (*Adequacy relaxed to the vanishing of H¹(H, ad)*); Mathlib `Matrix.trace`, `Module.End.IsSemisimple`, `Submodule.span`.

### 1.4 The unavoidable dyadic dual Selmer class

Keep the data of 1.1 with p = 2 and let T = S ∖ S_∞. Let K⁺_m be the maximal totally real subfield of `ℚ(ζ_{2^m})`, choose the least m with K⁺_m ⊄ F⁺ (so `K⁺_{m−1} ⊂` F⁺), let L⁺ = F⁺K⁺_m, a totally real quadratic extension of F⁺ unramified outside 2, and let ψ ∈ H¹(F(S)/F⁺, ad r̄(1)) be the inflation of the nonzero class of H¹(L⁺/F⁺, k) through the scalars k ⊂ ad r̄. Prove that `ψ ∈ H¹_{𝒮_Q^⊥,T}` for every Taylor–Wiles datum `(Q, (α_v)_{v∈Q})` of level N ≥ m (each v ∈ Q outside S, split completely in `F(ζ_{2^N})`, with ρ̄(Frob_v) semisimple with eigenvalue α_v); in particular `h¹_{𝒮_Q^⊥,T} ≥ 1` for all such data and `h¹_{𝒮^⊥,T} ≥ 1` (BCGP25 Lemma 5.5.3 and proof, pp. 125–126).

The route: ψ is trivial at infinite places because L⁺ is totally real, and at v ∈ Q because v splits completely in `F(ζ_{2^N}) ⊃ L⁺`. At a finite v ∈ S let Δ_v be the image of H¹(F⁺_v, k) → H¹(F⁺_v, ad r̄); then ψ_v ∈ Δ_v and µ_v ⊂ Δ_v, since µ_v is represented by a cocycle vanishing on G_F and sending c to 1_n. The Tate pairing on Δ_v × Δ_v is n times that of H¹(F⁺_v, k), by tr(1_n) = n (`Matrix.trace_one`). If n is even it vanishes, so ψ_v ∈ Δ_v ⊂ µ_v^⊥. If n is odd, the pairing on H¹(F⁺_v, k) is the Hilbert symbol of the classes of F/F⁺ and L⁺/F⁺, trivial at places prime to 2 (both extensions are unramified there or F/F⁺ is unramified and L⁺/F⁺ unramified outside 2) and at places above 2 (where F/F⁺ splits).

**Checks.**

- For any F⁺ with √2 ∉ F⁺, K⁺_2 = ℚ ⊂ F⁺ and K⁺_3 = ℚ(√2) ⊄ F⁺, so m = 3, L⁺ = F⁺(√2) and ψ is the scalar class of F⁺(√2)/F⁺. (For F⁺ = ℚ there is no CM field F unramified over F⁺ at every finite place, so F⁺ = ℚ is excluded by the standing hypotheses.)
- For F⁺ = ℚ(√2) one has m = 4 and L⁺ = ℚ(ζ_16)⁺, of degree 4 over ℚ; the printed choice `K⁺_{m−1} ⊆ F⁺ ⊊ K⁺_m` is satisfied here but fails for F⁺ = ℚ(√5), which lies in no K⁺_m; the least-m choice covers both.
- With `q = h¹_{𝒮^⊥,T} − 1` in 1.2(4), the count q ≥ 0 holds because of this class; using `q = h¹_{𝒮^⊥,T}` Taylor–Wiles primes, as for odd p, is impossible for N ≥ m.

*Needs:* 1.2; PotentialAutomorphyInfrastructurePartII PL.3 (*Taylor–Wiles data with a residual eigenspace*); Mathlib `Matrix.trace_one`.

### Examples

- For n = 2, d = 2 and #T = 3 the framed ring has (4 + 1)·3 − 1 = 14 framing variables over R_𝒮, dim Λ = 1 + 4 = 5, and if `h¹_{𝒮^⊥,T} = 6` then 1.2(4) gives q = 5 Taylor–Wiles primes and g = 5 + 3 − 1 − 2 = 5 variables.
- For n = 3 every real place has r̄(c_v) conjugate to (1_3, 1)j (Tho17 Lemma 2.16), so dim µ_v = 1 at every real place and the comparison 1.2(5) is surjective without an oddness hypothesis.

### Dependencies

ArithmeticGaloisRepresentations §§7.4, 7.9; GlobalGaloisDeformations §§8.1–8.3; LocalGaloisDeformationRings §§1.17, 2.23, F.2.6; DeformationAndDerivedPatchingAlgebra §1.12; PotentialAutomorphyInfrastructurePartII PL.3, PL.4.

## Layer 2: Ordinary Hecke algebras of definite unitary groups at p = 2

Geraghty's ordinary Hida theory for definite unitary groups (Ger19 §2) fixes an arbitrary prime l (Ger19 line 144); only its construction of Galois representations over Hecke algebras (Ger19 §2.7) uses lemmas of Clozel–Harris–Taylor that need l > 2, and that step is replaced in 3.3. This layer specializes the algebraic modular forms of AutomorphicFormsOnReductiveGroups §§7.4–7.5 to the definite unitary group at l = 2 and constructs the ordinary objects that the l-odd sections of PotentialAutomorphyInfrastructurePartII PL.2 do not cover. Throughout, Hypothesis 5.7.1 holds: F/F⁺ is unramified at every finite place, every place of F⁺ above 2 splits in F, and nd ≡ 0 mod 4.

### 2.1 The universal ordinary Hecke algebra at p = 2

Let G/F⁺ be the definite unitary group of PotentialAutomorphyInfrastructurePartII PL.2 (*The definite unitary group attached to a CM field*), with ι_ṽ : `G(O_{F⁺_v}) ≅ GL_n(O_{F_ṽ})` at split v, chosen places ṽ | v for v | 2, and Ĩ_2 the embeddings F → E inducing them. For `λ ∈ (ℤ^n_+)^{Ĩ_2}` let M_λ be the tensor product over τ ∈ Ĩ_2 of the O-lattices of highest weight λ_τ; for a set R ⊂ T ∖ S_2 of split places and characters χ_v : Iw(ṽ)/Iw_1(ṽ) ≅ (k(ṽ)^×)^n → O^× put `M_{λ,{χ_v}} = M_λ ⊗ ⊗_{v∈R} O(χ_v)`. For U = ∏U_v with `U_v ⊂ ι_ṽ^{−1}Iw(ṽ)` (v ∈ R) and an O-module A, `S_{λ,{χ_v}}(U, A)` is the carrier S(U, `M_{λ,{χ_v}}` ⊗ A) of AutomorphicFormsOnReductiveGroups §7.4, the level acting through its components at S_2 ∪ R, and U is sufficiently small in the sense of AutomorphicFormsOnReductiveGroups §7.5. Define the following (BCGP25 §5.7, from Hypothesis 5.7.1 to the definition of the universal ordinary Hecke algebra, pp. 130–132; Ger19 §§2.2–2.4).

- For 0 ≤ b ≤ c, the level `U(l^{b,c})` replaces U_v (v | 2) by `ι_ṽ^{−1}Iw(ṽ^{b,c})`, the matrices upper triangular modulo ṽ^c and unipotent upper triangular modulo ṽ^b.
- At split w ∉ T, T^j_w is the unweighted double coset operator of `ι_w^{−1}diag(ϖ_w 1_j, 1_{n−j})`. At v | 2, with `α^j_{ϖ_ṽ}` = diag(ϖ_ṽ `1_j, 1_{n−j}`), `U^j_{λ,ϖ_ṽ}` = `(w₀λ)(α^j_{ϖ_ṽ})^{−1}[U(l^{b,c}) ι_ṽ^{−1}(α^j_{ϖ_ṽ}) U(l^{b,c})]`, the weighted Hecke operator of §7.4 for the coefficient action of M_λ extended to the monoid generated by `U(l^{b,c})` and the α^j. The diamond operators ⟨u⟩, `u ∈ T(O_{F⁺,2})`, act through the torus.
- `T^T_{λ,{χ_v}}(U(l^{b,c}), A)` is the O-subalgebra of End_O generated by the T^j_w, `(T^n_w)^{−1}` and ⟨u⟩. With `U(l) = ∏_{v|2} ∏_j U^j_{λ,ϖ_ṽ}`, the ordinary idempotent is e = lim_r `U(l)^{r!}` and `T^{T,ord} = eT^T`.
- S(U(l^∞), E/O) = colim_c `S(U(l^{c,c}), E/O)` and T(U(l^∞), O) = lim_c `T(U(l^{c,c}), O)`.
- Λ = O⟦T(l)⟧. For λ = 0, `u ↦ (∏_{τ∈Ĩ_2} ∏_{i=1}^n τ(u_i)^{1−i})⟨u⟩` makes `T^{T,ord}_{0,{χ_v}}(U(l^∞), O)` a Λ-algebra, the universal ordinary Hecke algebra `T^{T,ord}_{{χ_v}}(U(l^∞), O)`. The twist is the character `(w₀ν)^{−1}` with ν_τ = (n − 1, …, 1, 0).

Its API:

- The operators T^j_w, `U^j_{λ,ϖ_ṽ}` and ⟨u⟩ commute with each other and with the inclusions `S(U(l^{b,c}), A) ⊂` `S(U(l^{b′,c′}), A)` for b ≤ b′, c ≤ c′; the normalization by `(w₀λ)(α^j)^{−1}` makes `U^j_{λ,ϖ_ṽ}` preserve integral forms (Ger19 Lemma 2.3.3).
- e is an idempotent of every `T^T_{λ,{χ_v}}(U(l^{b,c}), O)` commuting with the Hecke algebra.
- The limit algebras with coefficients E/O and O are naturally isomorphic, with or without ord (Ger19 Lemma 2.4.7).
- For split w ∉ T the Hecke polynomial is `Σ_j (−1)^j q_w^{j(j−1)/2} T^j_w X^{n−j}`; it is the characteristic polynomial of Frobenius in 3.3.
- For an odd prime l in place of 2 the construction is that of PotentialAutomorphyInfrastructurePartII PL.2 (*The big ordinary Hecke algebra over Λ*).

**Checks.**

- For n = 1 the factor `∏_τ τ(u_1)^{1−1}` is 1, so the twisted and untwisted Λ-structures coincide; a nontrivial twist first appears for n = 2, as `u ↦ ∏_τ τ(u_2)^{−1}`.
- For n = 2 the Hecke polynomial at split w ∉ T is X² − T^1_w X + q_w T^2_w.
- If n = 2 and F⁺ has two places above 2 with F⁺_v = ℚ₂ (d = 2, so nd = 4), then T(l) ≅ ({±1} × ℤ₂)^4, Spec Λ has 16 irreducible components, one for each character of {±1}^4, each of dimension 5 = dim Λ, and Λ[1/2] is regular.
- The normalization is needed exactly when the scalar `(w₀λ)(α^j_{ϖ_ṽ}) = ∏_τ τ(ϖ_ṽ)^{λ_{τ,n−j+1}+⋯+λ_{τ,n}}` is not a unit. For n = 2, λ = (1, 0) and j = 1 it is ϖ⁰ = 1, while for j = n it is `∏_τ τ(ϖ_ṽ)^{Σ_iλ_{τ,i}}`, a non-unit when `Σ_{τ,i}λ_{τ,i} ≠ 0`; with the unnormalized operator the weight-independence isomorphism of 2.2 would not carry U^n_λ to U^n_0.

*Needs:* AutomorphicFormsOnReductiveGroups §§7.4–7.5; PotentialAutomorphyInfrastructurePartII PL.2 (*The definite unitary group attached to a CM field*); LocalGaloisDeformationRings §1.3; Tau Ceti `TauCeti.completedGroupAlgebra`.

### 2.2 Hida theory at p = 2

Keep 2.1 with `U(l^{b₀,b₀})` sufficiently small for some b₀ ≥ 1 and U_v hyperspecial at split v ∉ T. Prove (BCGP25 §5.7, pp. 132–133; Ger19 Proposition 2.5.3, Corollary 2.5.4, Lemma 2.4.4, Proposition 2.6.1, Lemma 2.6.4 and the proof of Corollary 3.1.4):

1. The Pontryagin dual of `S^{ord}_{0,{χ_v}}(U(l^∞), E/O)` is finite free over `O⟦T(l^{b₀})⟧`; `T^{T,ord}_{{χ_v}}(U(l^∞), O)` is a finite Λ-algebra and a finite faithful `O⟦T(l^{b₀})⟧`-algebra (Ger19 Corollary 2.5.4), and it and all finite-level ordinary Hecke algebras are reduced.
2. For a dominant λ, r ≥ 1 and c ≥ r, composing with the projection of M_λ onto its lowest weight line gives a Hecke-equivariant isomorphism `S^{ord}_{λ,{χ_v}}(U(l^{c,c}), ϖ^{−r}O/O)` ≅ `S^{ord}_{0,{χ_v}}(U(l^{c,c}), ϖ^{−r}O/O)` carrying U^j_λ to U^j_0 and twisting ⟨u⟩ by (w₀λ)(u).
3. The primes ℘_λ ⊂ Λ attached to dominant weights λ are Zariski dense in Spec Λ.
4. `Hom_O(T^{T,ord}_{0,{χ_v}}(U(l^∞), O)/℘_λ, ℚ̄₂)` = `Hom_O(T^{T,ord}_{λ,{χ_v}}(U(l^{1,1}), O), ℚ̄₂)` naturally (BCGP25 (5.7.4)).

The route is Geraghty's, at l = 2: exactness of A ↦ S(U, A) and freeness over group rings follow from sufficient smallness (AutomorphicFormsOnReductiveGroups §7.5), the projection to the lowest weight line is B_n(O)-equivariant, and no step of Ger19 §§2.2–2.6 uses the parity of l.

**Checks.**

- For n = 1, `U^1_{λ,ϖ}` acts on every algebraic character by a unit, so every character is ordinary and `T^{T,ord}` is the full Hecke algebra.
- For λ = 0 the isomorphism of (2) is the identity and the twist (w₀λ)(u) of ⟨u⟩ is 1; for n = 2 and λ_τ = (1, 0) at one τ it twists ⟨u⟩ by τ(u_2), the lowest weight of M_λ.
- Every O-algebra map `T^{T,ord}(U(l^∞), O) → ℚ̄₂` above some ℘_λ comes from a classical ordinary form of weight λ and level `U(l^{1,1})`, by (4); a map above a prime of Λ that is not of the form ℘_λ need not.
- `T^{T,ord}_{{χ_v}}(U(l^∞), O)` is semilocal and finite over Λ, hence the product of its localizations at its finitely many maximal ideals.
- Faithfulness over Λ fails. The scalar −1_n lies in T(l), since −1 ≡ 1 modulo every place above 2. If U_v ∋ −1_n at every finite v ∤ 2 (for instance U_v hyperspecial off R and `U_v = ι_ṽ^{−1}Iw(ṽ)` on R), then −1_n is a global central element and `f(g·(−1_n)_2) = f(g·(−1_n)^{(2)})`, so [−1_n] ∈ Λ acts on `S^{ord}_{0,{χ_v}}(U(l^∞), E/O)` by the sign `ε₀ = (−1)^{dn(n−1)/2}∏_{v∈R}∏_j χ_{v,j}(−1) = ∏_{v∈R}∏_j χ_{v,j}(−1)` (nd ≡ 0 mod 4 makes the twist contribute 1). The nonzero element [−1_n] − ε₀ of Λ then acts by zero, so `Λ → T^{T,ord}` is not injective, although it is finite.

*Needs:* 2.1; AutomorphicFormsOnReductiveGroups §7.5.

### 2.3 Ordinary constituents and ordinary RACSDC representations

Keep 2.1 and fix ı : ℚ̄₂ ≅ ℂ. For `λ ∈ (ℤ^n_+)^{Ĩ_2}`, A_λ = colim_U S_λ(U, ℚ̄₂) is a semisimple admissible `ℚ̄₂[G(𝔸^∞_{F⁺})]`-module. Prove that the irreducible submodules of ıA_λ are the finite parts of descents to G of automorphic representations π of GL_n(𝔸_F) of weight λ, isobaric sums of conjugate self-dual representations, that after localization at a non-Eisenstein maximal ideal only RACSDC π contribute, and that an irreducible submodule meets `S^{ord}_λ(U(l^{b,b}), ℚ̄₂)` for some b exactly when π is ι-ordinary, that is `(ı^{−1}(⊗_{v|2} π_v))^{ord} ≠ 0` (BCGP25 §5.7, the paragraph defining A_λ, pp. 132–133).

Prove moreover that every irreducible `G(𝔸^{∞,R}_{F⁺}) × ∏_{v∈R}` Iw(ṽ)-constituent π of `S_{λ,{χ_v}}(ℚ̄₂)` = colim_U `S_{λ,{χ_v}}(U, ℚ̄₂)` has a continuous semisimple r_2(π) : G_F → GL_n(ℚ̄₂), unique up to isomorphism, such that: (i) for every finite place v ∉ S_2 ∪ R of F⁺ split as ww^c in F, `(r_2(π)|G_{F_w})^{ss}` ≅ `(r_2(π_v ∘ ι_w^{−1})^∨(1 − n))^{ss}`, so that at w with π_v unramified r_2(π)(Frob_w) has the Hecke polynomial of 2.1 as characteristic polynomial; `(ii) r_2(π)^c ≅ r_2(π)^∨ε^{1−n}`; (iii) r_2(π) is unramified above every inert v at which π_v has a vector fixed by a hyperspecial maximal compact subgroup; (iv) for v ∈ R with `π^{Iw(ṽ)} ≠ 0` and `σ ∈ I_{F_ṽ}`, r_2(π)(σ) has characteristic polynomial ∏_j `(X − χ_{v,j}^{−1}(Art^{−1}_{F_ṽ}σ))` (Ger19 Proposition 2.7.2, stated for an arbitrary prime l, here at l = 2). This is the l = 2 case that PotentialAutomorphyInfrastructurePartII PL.2 (*Galois representations attached to constituents of algebraic modular forms*) does not state, its hypotheses requiring l odd.

The route: semisimplicity and admissibility come from the automorphic realization of AutomorphicFormsOnReductiveGroups §7.5 (G(F⁺ ⊗ ℝ) is compact); base change and descent between G and GL_n are PotentialAutomorphyInfrastructurePartII PL.2 (*Base change and descent between definite unitary groups and GL_n*, parts (1) and the first assertion of (2), which carry no condition on l); at a non-Eisenstein ideal the Galois representation is irreducible, forcing a cuspidal base change; ordinarity at Iwahori level is the principal-series criterion of PL.0 (*Principal-series characterisation of ι-ordinarity*) and PotentialAutomorphyInfrastructure §3.44. For r_2(π): the base change of π is an isobaric sum π₁ ⊞ ⋯ ⊞ π_s of discrete conjugate self-dual representations; each π_i is a Speh representation on a cuspidal conjugate self-dual σ_i, a twist of which by a power of |det| and an algebraic character is regular algebraic and essentially conjugate self-dual because π is cohomological (the infinitesimal character λ + ρ of ξ_λ is regular); r_2(π) is the corresponding sum of Tate twists of the 2-adic Galois representations of these twists (AutomorphicGaloisRepresentationsPartII AG2.3, *Arbitrary regular conjugate-self-dual existence*, at ℓ = 2, with AG2.2, *Twisting an essentially self-dual form into unitary type*), as in the proof of Ger19 Proposition 2.7.2. (i) at ramified split places is AG2.5 (*Caraiani's full away-prime compatibility*, every prime ℓ) up to semisimplification, which also gives (iv) through the characters χ_v; (ii) and (iii) follow from conjugate self-duality and unramified base change; uniqueness is Chebotarev and Brauer–Nesbitt.

**Checks.**

- For n = 1 the constituents are algebraic Hecke characters of weight λ and all are ordinary.
- A maximal ideal of `T^{T,ord}_λ` is non-Eisenstein exactly when the attached residual representation is absolutely irreducible; for λ = 0 the constant functions span a constituent whose residual representation is a sum of characters, so its maximal ideal is Eisenstein and it is not RACSDC.
- A RACSDC π whose local components above 2 are not ι-ordinary contributes to A_λ but meets no `S^{ord}_λ(U(l^{b,b}), ℚ̄₂)`.
- For n = 1, r_2(π) is the 2-adic character of the algebraic Hecke character x ↦ π(x/x^c) of 𝔸_F^×, and (ii) reads `r^c = r^{−1}`, since `ε^{1−n} = 1`; for λ = 0 and n ≥ 2 the constituent spanned by the constant functions has the non-cuspidal base change Speh(1, n) up to twist, and r_2(π) is a sum of n characters, consistent with its maximal ideal being Eisenstein (second Check). PL.2 states neither case at l = 2.

*Needs:* 2.1; AutomorphicFormsOnReductiveGroups §7.5; PotentialAutomorphyInfrastructurePartII PL.0, PL.2 (*Base change and descent between definite unitary groups and GL_n*); PotentialAutomorphyInfrastructure §3.44; AutomorphicGaloisRepresentationsPartII AG2.2, AG2.3, AG2.5.

### Examples

- For n = 2, d = 2 with both places above 2 having F⁺_v = ℚ₂, the universal ordinary Hecke algebra is finite over the 16-component weight algebra O[{±1}^4]⟦ℤ₂^4⟧ and its Λ-structure is twisted by `u ↦ ∏_τ τ(u_2)^{−1}`.

### Dependencies

AutomorphicFormsOnReductiveGroups §§7.4–7.5; PotentialAutomorphyInfrastructurePartII PL.0, PL.2; PotentialAutomorphyInfrastructure §3.44; AutomorphicGaloisRepresentationsPartII AG2.2, AG2.3, AG2.5; LocalGaloisDeformationRings §1.3.

## Layer 3: The ordinary global problem and the Hecke-valued Galois representation

### 3.1 The ordinary global problem S_χ and `R^{T,ord}`

Assume Hypothesis 5.7.1 and let π be an ordinary RACSDC automorphic representation of GL_n(𝔸_F) with `ρ̄ = r̄_{π,2}` : G_F → GL_n(k) absolutely irreducible. By Tho17 Lemma 2.2 (BCGP25 Lemma 5.1.2, p. 115) ρ̄ extends to r̄ : `G_{F⁺} → 𝒢_n(k)` with `ν ∘ r̄ = ε̄^{1−n}δ^n_{F/F⁺}` and `r̄^{−1}(𝒢_n^0(k)) = G_F`, unique up to 𝒢_n^0(k)-conjugacy. Let T ⊃ S_2 be a finite set of finite places of F⁺ split in F, R ⊂ T ∖ S_2, and `χ_v = (χ_{v,1}, …, χ_{v,n})` characters of `O^×_{F_ṽ}` trivial modulo ϖ for v ∈ R; assume Hypothesis 5.7.5: T contains the places under the ramification of π, and for v ∈ R, `ρ̄|G_{F_ṽ}` is trivial and `π_ṽ^{Iw(ṽ)} ≠ 0`. Put S = T ∪ S_∞, Λ_v = O for v ∉ S_2 and `Λ_v = Λ_{GL_n,v} = O⟦I^{ab}_{F_ṽ}(2)^n⟧` for v ∈ S_2. Define the global problem (BCGP25 §5.7, Hypothesis 5.7.5, (5.7.6) and Definition 5.7.11, pp. 133–134)

S_χ = (F, r̄, O, `ε^{1−n}δ^n_{F/F⁺}`, S, {Λ_v}, `{D^{χ_v}_v}_{v∈R} ∪ {D^△_v}_{v∈S_2} ∪` `{Lift^□_v}_{v∈S∖(R∪S_2)}`),

where `D^{χ_v}_v` is the problem of lifts with inertial characteristic polynomial ∏_j `(X − χ_{v,j}(Art^{−1}σ)^{−1})` (LocalGaloisDeformationRings §2.29) and D^△_v is Geraghty's ordinary problem (LocalGaloisDeformationRings §1.9 over §1.3). Local class field theory gives `⊗̂_{v∈S_2} Λ_v ≅ Λ`, so `R_{S_χ}` and `R^loc_{S_χ,T}` are Λ-algebras. For R = ∅ write `S^{T,ord} = S_χ` and `R^{T,ord} = R_{S_χ}`.

Its API:

- `R_{S_χ}` represents deformations of type S_χ (1.1) and `R^loc_{S_χ,T} = ⊗̂_{v∈R}R^{χ_v}_v ⊗̂ ⊗̂_{v∈S_2}R^△_v ⊗̂ ⊗̂_{v∈T∖(R∪S_2)}R^□_v`.
- Since the `χ_{v,j}` are trivial modulo ϖ, `D^{χ_v}_v` and D^1_v agree on Artinian k-algebras, giving compatible isomorphisms `R^loc_{S_χ,T}/ϖ` ≅ `R^loc_{S_1,T}/ϖ` and `R_{S_χ}/ϖ ≅ R_{S_1}/ϖ`.
- For a finite CM extension F′/F satisfying the same hypotheses, restriction gives a map `R^{T′,ord}_{F′}` → `R^{T,ord}_F` over the norm map `Λ_{F′} → Λ_F`.

**Checks.**

- For R = ∅ the problem S_χ is `S^{T,ord}`, with no condition at the places of T ∖ S_2.
- For n = 4 the multiplier is `ε^{−3}δ^4_{F/F⁺} = ε^{−3}`; for n = 3 it is `ε^{−2}δ_{F/F⁺}`, and at a real place its value on c_v is `(−1)^{−2}·(−1) = −1`, as 1.1 requires.
- For k finite of characteristic 2 every element of k^× is a square, so the GL_n(k)-conjugacy classes and the 𝒢_n^0(k)-conjugacy classes of extensions r̄ coincide (the argument with `λ^{−1} = µ²` in the proof of BCGP25 Lemma 5.2.3, p. 118); for an odd residue characteristic they can differ by the class in k^×/(k^×)².

*Needs:* 1.1; 2.1; ArithmeticGaloisRepresentations §7.4; LocalGaloisDeformationRings §§1.3, 1.9, 2.29.

### 3.2 The dimension bound

In the setting of 3.1 (so S = T ⊔ S_∞, S_2 ⊂ T and every place of T splits in F), prove:

(a) (The obstruction count.) Every irreducible component of Spec `R_{S_χ}` has dimension at least dim Λ − 1 = nd.

(b) (BCGP25 Lemma 5.7.7 and proof, pp. 133–134, with the printed 1 + [F:ℚ]n corrected.) Every irreducible component of Spec `R_{S_χ}` has dimension at least dim Λ = 1 + nd.

The route of (a): `R^loc_{S_χ,T}` has every component of dimension at least 1 + n²#T + dn(n+1)/2 ((5.7.8)): `R^{χ_v}_v` has components of dimension n² + 1 (LocalGaloisDeformationRings §2.29), R^□_v for v ∤ 2 is O-flat and equidimensional of dimension n² + 1 (Sho18 Theorem 2.5; LocalGaloisDeformationRings §2.24), and every component of R^△_v has dimension at least 1 + n² + [F⁺_v:ℚ₂]n(n+1)/2 (gap:dyadic-flag-ring-dimension; only this lower bound is used). Write `R^T_{S_χ} = P/J` with `P = R^loc_{S_χ,T}⟦x_1, …, x_r⟧`, `r = h¹_{S_χ,T}` (1.2(2)), and m_P the maximal ideal of P. The obstruction to lifting the universal T-framed lift from P/J to P/m_P J, relative to the local lifts given by `R^loc_{S_χ,T} → P`, is a class `o ∈ H²_{S_χ,T} ⊗_k J/m_P J` whose adjoint (J/m_P J)^∨ → `H²_{S_χ,T}` is injective (CHT08 Lemma 2.2.11 and Corollary 2.2.12, run with Thorne's complex `C^•_{S_χ,T}`), so J is generated by `h²_{S_χ,T}` elements. Krull's principal ideal theorem in each component of P, a complete local domain, gives every component of Spec `R^T_{S_χ}` dimension at least dim R^loc + h¹ − h². By 1.2(2)–(3) with q = 0, h¹ − h² = h⁰ − h³ − χ = −1 − (1 − #T + dn(n−1)/2); the −1 is `h³_{S_χ,T} = 1`, the term −h⁰(ad r̄(1)) of CHT08 Corollary 2.3.5. Hence every component of Spec `R^T_{S_χ}` has dimension at least (n² + 1)#T − 1 + nd, and subtracting the (n² + 1)#T − 1 framing variables (1.1) gives nd.

The route of (b): the count of (a) is one relation short, and (b) follows once J is generated by `h²_{S_χ,T} − 1` elements, that is once the image of (J/m_P J)^∨ lies in a hyperplane of `H²_{S_χ,T} ≅ (H¹_{S_χ^⊥,T})^∨` (1.2(2)). The hyperplane is that of the unavoidable class ψ of 1.4, which lies in `H¹_{S_χ^⊥,T}` because the argument of 1.4 does not depend on the local problems at T: the step to prove is ⟨o, ψ⟩ = 0 in J/m_P J. A route: det : 𝒢_n → 𝒢_1, (g, a) ↦ (det g, a^n), j ↦ j, is a homomorphism (both sides of `j(g, a)j^{−1}` = (`a·ᵗg^{−1}`, a) map to (a^n·det `g^{−1}`, a^n)), and its derivative on ad r̄ = M_n(k) is the trace, adjoint under the trace pairing to the scalar inclusion k(1) → ad r̄(1) through which ψ is defined. Functoriality of Thorne's complexes and of their duality gives ⟨o, ψ⟩ = ⟨tr_* o, ψ′⟩, where ψ′ is the class of L⁺/F⁺ in the rank-one dual Selmer group and tr_* o is the image of the universal obstruction o_1 of the rank-one problem of det ∘ r (multiplier `χ^n δ^{n+1}_{F/F⁺}`, all lifts at T) under the map of rank-one presentations into P/J. So it suffices that ⟨o_1, ψ′⟩ = 0. In rank one both rings are completed group rings, by class field theory: the global ring is O⟦Γ⟧ with framing variables, Γ the largest pro-2 quotient of `G^{ab}_{F,S}` on which c acts by inversion (ℤ₂-rank d), and the local ring is `⊗̂_{v∈T} O⟦F_ṽ^×(2)⟧`, F_ṽ^×(2) the pro-2 completion of F_ṽ^×, mapping to it through the local Artin maps; ⟨o_1, ψ′⟩ = 0 is a computation with this map and the Kummer class of L⁺/F⁺. The source states (b) without this step (source issue below); the reduction to rank one and the rank-one computation are part of this target.

**Checks.**

- The bound of (b) is 1 + nd, not the printed 1 + n[F:ℚ] = 1 + 2nd: for n = 2, d = 2, #T = 3 the local ring has dimension 1 + 12 + 6 = 19, (b) gives 19 − 14 = 5 = dim Λ for `R_{S_χ}`, and the printed value 9 would contradict finiteness of `R^{T,ord}` over the five-dimensional Λ (4.7).
- The same numbers in (a): h¹ − h² = −1 − (1 − 3 + 2) = −1, so every component of Spec `R^T_{S_χ}` has dimension at least 18 and of Spec `R_{S_χ}` at least 4 = dim Λ − 1; the printed count, which uses h³ = 0, gets 5 only by omitting the −1.
- Rank one, where everything is explicit: with n = 1 the count of (a) gives dim R^loc_1 + h¹ − h² − (2#T − 1) = (1 + #T + d) + (#T − 2) − (2#T − 1) = d, while class field theory gives dim O⟦Γ⟧ = 1 + d (the ℤ₂-rank of the part of `G^{ab}_{F,S}(2)` on which c acts by −1 is d, the Leopoldt defects of F and F⁺ being equal). So in rank one the count is one short and the bound of (b) holds; this is the rank-one case of the step ⟨o_1, ψ′⟩ = 0 at the level of dimensions.
- The multiplier of det ∘ r: for x = (g, a)j, ν(det x) `= −a^n = (−1)^{n+1}ν(x)^n`, so det ∘ r has multiplier `χ^n δ^{n+1}_{F/F⁺}`, not χ^n; its value at c_v is `(−1)^n(−1)^{n+1} = −1`, as 1.1 requires of a rank-one problem.
- Combined with finiteness over Λ (4.7), (b) forces every component of Spec `R^{T,ord}` to dominate a component of Spec Λ; (a) alone does not, since a component of dimension dim Λ − 1, finite over Λ, could lie over a divisor containing no ℘_λ.

*Needs:* 3.1; 1.1; 1.2; 1.4 for (b); gap:dyadic-flag-ring-dimension; ArithmeticGaloisRepresentations §7.4; LocalGaloisDeformationRings §§2.24, 2.29; GlobalGaloisDeformations §8.4.

### 3.3 The Galois representation over the ordinary Hecke algebra

In the setting of 3.1, suppose U_v is hyperspecial for v ∉ T and `U_v ⊂ ι_ṽ^{−1}Iw(ṽ)` for v ∈ R. Prove that there are a maximal ideal m of `T^{T,ord}_{{χ_v}}(U(l^∞), O)` and a surjection of Λ-algebras `R_{S_χ}` → `T^{T,ord}_{{χ_v}}(U(l^∞), O)_m`, and that the corresponding r_m : `G_{F⁺}` → `𝒢_n(T^{T,ord}_{{χ_v}}(U(l^∞), O)_m)`, unique up to strict equivalence, is characterized by: for every finite place v ∉ T split as ww^c in F, r_m is unramified at w and w^c and r_m(Frob_w) has characteristic polynomial `X^n + ⋯ + (−1)^j q_w^{j(j−1)/2}T^j_w X^{n−j} + ⋯ + (−1)^n q_w^{n(n−1)/2}T^n_w` (BCGP25 Proposition 5.7.9 and proof, p. 134).

The route: glue the 2-adic Galois representations of the ordinary constituents (2.3, which states them at l = 2) along the reduced finite-level Hecke algebras and pass to the limit as in Ger19 Proposition 2.7.4. The 𝒢_n-valued extension of the residual representation uses Tho17 Lemma 2.2 in place of CHT08 Lemma 2.1.4, and its lift and uniqueness up to strict equivalence use Tho17 Lemma 2.4 in place of CHT08 Lemma 2.1.12, which needs residue characteristic > 2 and enters Ger19 Propositions 2.7.3–2.7.4 through CHT08 Propositions 3.4.2 and 3.4.4 (Ger19 lines 1003, 1113, 1146). The condition at v | 2 is Ger19 Corollary 3.1.4, checked on the dense classical points of 2.2(3)–(4); at v ∈ R the inertial characteristic polynomial is as in Ger19 Proposition 2.7.4(5). Surjectivity holds because T_m is generated by the T^j_w, coefficients of characteristic polynomials of r_m, and by the diamond operators, the image of Λ.

**Checks.**

- The map is one of Λ-algebras for the twisted Λ-structure of 2.1; the untwisted structure differs from it by the character `(w₀ν)^{−1}`, which is trivial for n = 1 and nontrivial for n = 2 `(u ↦ ∏_τ τ(u_2)^{−1})`, so for n ≥ 2 only the twisted structure can be matched with `Λ_{GL_n,v}` on the deformation side.
- For n = 2 the characteristic polynomial is X² − T^1_w X + q_w T^2_w, the Hecke polynomial of 2.1.
- A point of T_m above ℘_λ gives an ordinary RACSDC π′ of weight λ (2.2(4), 2.3) with `r_{π′,2}` the specialization of r_m.

*Needs:* 3.1; 2.2; 2.3; ArithmeticGaloisRepresentations §7.4.

### 3.4 Uniform local fixed vectors

Let w ∤ 2 be a finite place of the CM field F and π a RACSDC automorphic representation of GL_n(𝔸_F). Prove that there is a compact open subgroup `U_w ⊂ GL_n(O_{F_w})`, depending only on `r̄_{π,2}|G_{F_w}`, such that every RACSDC π′ with `r̄_{π′,2} ≅ r̄_{π,2}` has `(π′_w)^{U_w} ≠ 0` (BCGP25 Lemma 5.7.12 and proof, p. 134).

The route: Spec R^□[1/2] of `r̄_{π,2}|G_{F_w}` has finitely many components, on each of which the restriction to inertia of the Weil–Deligne representation is constant (LocalGaloisDeformationRings §2.24). By local–global compatibility and temperedness (AutomorphicGaloisRepresentationsPartII AG2.5), `WD(r_{π′,2}|G_{F_w})^{F-ss}` ≅ rec(π′_w `⊗ |det|^{(1−n)/2}`) with π′_w generic, so only finitely many restrictions to inertia occur. By gap:inertial-types-and-block-levels (i) they meet finitely many Bernstein blocks, and by (ii) each block has a compact open U with fixed vectors in every irreducible member; U_w is the intersection.

**Checks.**

- U_w depends only on `r̄_{π,2}|G_{F_w}`, not on π′.
- The conductor of the seed π alone does not bound the others: for n = 1 and q_w ≡ 1 mod 4, characters of k(w)^× of order 4 are ≡ 1 modulo the maximal ideal and give lifts of conductor 1 of the trivial residual character, while the seed may be unramified.
- The trivial and Steinberg representations of GL₂(F_w) lie in the same Bernstein block [T, 1] while their parameters have monodromy N = 0 and N ≠ 0; the block is determined by the restriction to inertia without N, which is why (i) of the gap forgets the monodromy.

*Needs:* LocalGaloisDeformationRings §2.24; AutomorphicGaloisRepresentationsPartII AG2.5; SmoothRepresentationsOfLocalGroups §SR.3.2; gap:inertial-types-and-block-levels.

### 3.5 Sufficiently deep tame level

In the setting of 3.1 let v ∈ T ∖ S_2 and ṽ | v the chosen place. Define a compact open subgroup U_v ⊂ G(F⁺_v) ≅ GL_n(F_ṽ) to be sufficiently deep if every RACSDC π′ of GL_n(𝔸_F) with `r̄_{π′,2} ≅ ρ̄` has `(π′_ṽ)^{U_v} ≠ 0`, and a level U to be sufficiently deep at T if U_v is sufficiently deep for every v ∈ T ∖ S_2 (BCGP25 Definition 5.7.13, p. 134).

Its API:

- Sufficiently deep subgroups exist and can be chosen depending only on `ρ̄|G_{F_ṽ}` (3.4).
- If U′_v ⊂ U_v and U_v is sufficiently deep, so is U′_v, since `(π′_ṽ)^{U_v} ⊂ (π′_ṽ)^{U′_v}`; in particular the intersection of two sufficiently deep subgroups is sufficiently deep.
- If U is sufficiently deep at T, every ℚ̄₂-point of `R^{T,ord}` that is automorphic, unramified outside T and ordinary above 2 occurs in `S^{ord}(U(l^∞))`.

**Checks.**

- If every lift of `ρ̄|G_{F_ṽ}` is unramified, then `GL_n(O_{F_ṽ})` is sufficiently deep, since every π′_ṽ is then unramified and has spherical vectors.
- For n = 1, trivial `ρ̄|G_{F_ṽ}` and q_v ≡ 1 mod 4, the characters of k(ṽ)^× of order 4 give lifts of conductor 1, so `O^×_{F_ṽ}` is not sufficiently deep while `1 + ϖ_ṽO_{F_ṽ}` is (every lift is tamely ramified with ramification through k(ṽ)^×(2), by LocalGaloisDeformationRings §2.24).
- The subgroup K_1(ṽ^c) attached to the conductor c of the seed `r_{π,2}|G_{F_ṽ}` alone need not be sufficiently deep: another lift may have larger conductor at ṽ (3.4, second Check).

*Needs:* 3.4; 3.1.

### Examples

- For n = 2, d = 2, #T = 3 and R = ∅, dim `R^loc_{S^{T,ord},T} = 19`; the obstruction count 3.2(a) gives 4 = dim Λ − 1 and the corrected Lemma 5.7.7, 3.2(b), gives 5 = dim Λ.

### Dependencies

Layers 1–2; ArithmeticGaloisRepresentations §7.4; LocalGaloisDeformationRings §§1.3, 1.9, 2.24, 2.29; GlobalGaloisDeformations §8.4; AutomorphicGaloisRepresentationsPartII AG2.5; SmoothRepresentationsOfLocalGroups §SR.3.2; gaps dyadic-flag-ring-dimension and inertial-types-and-block-levels.

## Layer 4: The dyadic ordinary R = T theorem

For p = 2 one cannot choose an auxiliary place at which every deformation is unramified, so BCGP use an auxiliary place v₁ with regular semisimple residual Frobenius, patch, produce automorphic lifts on every choice of local components by Ihara avoidance, and then remove v₁ by a solvable base change over which all those lifts are unramified at v₁. Throughout this layer the six hypotheses of Theorem 5.7.14 are: (1) there is an ordinary RACSDC automorphic representation π of GL_n(𝔸_F) with `r̄_{π,2} ≅ ρ̄` for a continuous ρ̄ : G_F → GL_n(𝔽̄₂), n ≥ 2; (2) F/F⁺ is unramified at every finite place, and every place of F⁺ above 2 or under a place where π is ramified splits in F; (3) nd ≡ 0 mod 4; (4) ρ̄(G_F) is nearly adequate (1.3); (5) ρ̄(G_F) contains a regular semisimple element; (6) if n is even, `(ρ̄, ε^{1−n}δ^n_{F/F⁺})` is strongly residually odd at some infinite place of F⁺. T is a finite set of finite places of F⁺, all split in F, containing S_2 and the places under the ramification of π.

### 4.1 Solvable preparation and the auxiliary place

Assume (1)–(6). Prove that there is a solvable CM extension F′/F, linearly disjoint over F from the field cut out by ρ̄, such that, with T′ the places of F′⁺ above T and E enlarged: (1)–(6) hold over F′ with `ρ̄(G_{F′}) = ρ̄(G_F)`; F′ = F′⁺(√−1); `ρ̄|G_{F′_ṽ}` is trivial for v ∈ T′; [F′⁺_v:ℚ₂] > n(n−1)/2 + 1 for v | 2; and for v ∈ T′ ∖ S_2, `π_{F′,ṽ}^{Iw(ṽ)} ≠ 0`, q_v ≡ 1 mod 2^N with 2^N > n and O containing a primitive 2^N-th root of unity, where 2^N ∥ q_v − 1, and every lift of `ρ̄|G_{F_u}` (u the place of F under ṽ, v ∈ T ∖ S_2, the original field) becomes unipotently ramified on restriction to `G_{F′_w}` for every place w of F′ above u (BCGP25 Lemma 5.6.2, p. 128). Moreover there are infinitely many finite places v₁ ∉ T′ of F′⁺, split in F′, with `ρ̄(Frob_{ṽ₁})` regular semisimple; for such v₁ and any torsion-free compact open `U_{v₁}`, every level `U(l^{b,c})` with that component is sufficiently small, and Hypotheses 5.7.1 and 5.7.5 hold for T′ ∪ {v₁} (BCGP25 proof of Theorem 5.7.14, first two paragraphs, and Remark 5.7.15, pp. 135–136).

The route: all conditions except F′ = F′⁺(√−1) are local; choose local extensions trivializing ρ̄ at T, raising the local degrees above 2, making every lift of the original local representations at T ∖ S_2 unipotently ramified (LocalGaloisDeformationRings §2.24, the extension of BCGP25 Lemma 5.6.2), giving Iwahori-fixed vectors and the roots of unity, and realize them by a solvable CM extension disjoint from the field of ρ̄ (PotentialAutomorphyInfrastructurePartII PL.0, *Soluble and cyclic CM extensions with prescribed local behaviour*); ordinarity and the RACSDC property survive (PotentialAutomorphyInfrastructure §3.47). Adjoining √−1 does not change the image, since a nearly adequate group has H¹(H, k) = 0 and so no subgroup of index 2. Hypothesis (5) and Chebotarev give v₁, and a torsion-free `U_{v₁}` gives sufficient smallness (AutomorphicFormsOnReductiveGroups §7.5).

**Checks.**

- The unipotence clause is about lifts of the original `ρ̄|G_{F_u}`, restricted to F′: a lift `ψ ⊕ 1^{n−1}` of the trivial `ρ̄|G_{F′_ṽ}`, with ψ a tame character through `k(ṽ)^× → µ_{2^N} ⊂ O^×`, is ≡ 1 mod ϖ but has inertial characteristic polynomial `(X − ψ(σ))(X − 1)^{n−1} ≠` (X − 1)^n; it is a lift over F′ that is not a restriction from F, and the clause does not cover it. These are exactly the characters used in 4.3.
- Since `ρ̄(G_{F′}) = ρ̄(G_F)`, near adequacy, the regular semisimple element and strong residual oddness are checked once over F.
- For p odd the usual auxiliary place makes every deformation unramified there; at p = 2 every lift at v₁ is only a sum of characters (LocalGaloisDeformationRings §2.29), which 4.6 uses to remove v₁.

*Needs:* 1.3; 2.1; LocalGaloisDeformationRings §§2.24, 2.29; PotentialAutomorphyInfrastructurePartII PL.0; PotentialAutomorphyInfrastructure §3.47; AutomorphicFormsOnReductiveGroups §7.5.

### 4.2 Ring–module patching over a weight algebra with torsion

Let Λ be a complete Noetherian local O-algebra that is finite free over a power series subring Λ⁰ = O⟦w_1, …, w_s⟧, so dim Λ = dim Λ⁰ = 1 + s. Let q, j, g ≥ 0, h = q + j, S_∞ = Λ⟦X_1, …, X_h⟧ (X_1, …, X_q the Taylor–Wiles variables, `X_{q+1}`, …, X_h the framing variables), S⁰_∞ = Λ⁰⟦X_1, …, X_h⟧, a_∞ = (X_1, …, X_h), and for N ≥ 1 let S_N = `S_∞/((1 + X_i)^{2^N} − 1)_{i≤q}`. Let R^loc be a complete Noetherian local Λ-algebra, R_∞ = R^loc⟦Y_1, …, Y_g⟧, R a complete Noetherian local Λ-algebra with a surjection R_∞ ↠ R of R^loc-algebras, and H ≠ 0 an R-module finite over Λ. Suppose that for each N ≥ 1 there are a complete Noetherian local R^loc-algebra R_N with a map S_∞ → R_N factoring through S_N, a surjection of R^loc-algebras R_∞ ↠ R_N, an isomorphism R_N/a_∞ ≅ R compatible with the maps from R_∞, and an R_N-module H_N finite free over S_N with H_N/a_∞ ≅ H compatibly with these actions. Prove that there are a map of Λ-algebras S_∞ → R_∞, an R_∞-module H_∞ finite free over S_∞, a surjection R_∞/a_∞ ↠ R and an isomorphism H_∞/a_∞ ≅ H compatible with it; and that if dim R_∞ ≤ dim S_∞ then `depth_{R_∞} H_∞` = dim R_∞ and `Supp_{R_∞} H_∞` is a union of irreducible components of Spec R_∞ of dimension dim S_∞. The same holds for two such systems with compatible identifications modulo ϖ, producing patched data compatible modulo ϖ.

The route: S_N modulo the standard cutoffs (ϖ^m and powers of the maximal ideal) is a finite ring because Λ is finite over Λ⁰, so the extraction of a compatible subsystem is DeformationAndDerivedPatchingAlgebra §§5.2–5.4, which uses no condition on p; freeness of given rank over each finite quotient passes to the limit. H_∞ is then finite free over S⁰_∞, a regular local ring with dim S⁰_∞ = dim S_∞, and the numerical depth comparison of DeformationAndDerivedPatchingAlgebra §5.5 (first part, for a regular local ring and a free module) gives `depth_{R_∞} H_∞` ≥ `depth_{S⁰_∞} H_∞` = dim S_∞ ≥ dim R_∞; a maximal Cohen–Macaulay module over a Noetherian local ring is supported on a union of components of maximal dimension (Tay08 Lemma 2.3). This is the patching of Tho12 Theorem 8.6 and KT17 §4 over Λ.

**Checks.**

- For q = j = 0, S_∞ = Λ, S_N = Λ for every N and H_N = H; the conclusion says that H is finite free over Λ and, when dim R_∞ ≤ dim Λ, of maximal depth over R_∞.
- For n = 2 and F⁺ = ℚ(√105), F = ℚ(√−7, √−15) (F/F⁺ is unramified at every finite place, 2 splits completely in F since −7 ≡ −15 ≡ 105 ≡ 1 mod 8, and nd = 4), the two places above 2 have F⁺_v = ℚ₂ and Λ = O⟦({±1} × ℤ₂)^4⟧ = O[{±1}^4]⟦w_1, …, w_4⟧ is finite free of rank 16 over Λ⁰ = O⟦w_1, …, w_4⟧ but is not a domain ((1 − [−1])(1 + [−1]) = 0) and not a power series ring, so DeformationAndDerivedPatchingAlgebra Layer 8, which requires Λ = O⟦w_1, …, w_s⟧, does not apply directly, while the reduction to Λ⁰ does. One place with F⁺_v = ℚ₂ alone is no instance: it forces F⁺ = ℚ, which the standing hypotheses exclude (1.4).
- If dim R_∞ = dim S_∞ + 1 (as happens when q is taken one too large at p = 2, cf. 1.4) the depth conclusion fails, since `depth_{R_∞} H_∞` ≤ dim S_∞ < dim R_∞.

*Needs:* DeformationAndDerivedPatchingAlgebra §§5.2–5.5, 6.1; Tau Ceti `TauCeti.completedGroupAlgebra`.

### 4.3 Patched modules for the unipotent and distinct-character problems

In the situation of 4.1 (over F′, written F), write T = S_2 ⊔ {v₁} ⊔ R, choose for v ∈ R pairwise distinct characters `χ_{v,1}`, …, `χ_{v,n}` of `O^×_{F_ṽ}` trivial modulo ϖ, and let S_1, S_χ be the problems of 3.1. Take `U_v = G(O_{F⁺_v})` at split v ∉ T, hyperspecial at inert v, U_v = Iw(ṽ) for v ∈ R and `U_{v₁}` torsion-free. Let `m₁ ⊂ T^{T,ord}_{{1}}(U(l^∞), O)` be the maximal ideal of ρ̄ and m_χ the corresponding ideal (`S^{ord}_{0,{χ_v}}(U(l^∞), k)` = `S^{ord}_{0,{1}}(U(l^∞), k)`), and H_χ, H_1 the Pontryagin duals of the localized ordinary forms, so H_χ/ϖ ≅ H_1/ϖ. Put `q = h¹_{𝒮^⊥,T} − 1`, g = q + #T − 1 − dn(n−1)/2, S_∞ = `Λ⟦X_1, …, X_{q+(n²+1)#T−1}⟧`, `R_{1,∞}` = `R^loc_{S_1,T}⟦Y_1, …, Y_g⟧` and `R_{χ,∞}` = `R^loc_{S_χ,T}⟦Y_1, …, Y_g⟧`. Prove that the patching data of 4.2 exist for both problems with compatible identifications modulo ϖ, and that dim `R_{1,∞}` = dim `R_{χ,∞} = nd + (n²+1)#T + q` = dim S_∞, so that each `H_{·,∞}` has maximal depth over `R_{·,∞}` and support a union of irreducible components (BCGP25 proof of Theorem 5.7.14, pp. 136–137, with (5.7.16)–(5.7.17)).

The route: Taylor–Wiles data of every level with #Q_N = q and g variables come from 1.2(4), whose hypotheses (i)–(iv) hold after 4.1; one dual Selmer class always survives (1.4), whence q = h¹ − 1. The Hecke modules at level Q_N are finite free over `Λ[Δ_{Q_N}]` by sufficient smallness and 2.2(1), and the Galois representations at level Q_N come from 3.3. Patch with 4.2. Dimensions: every component of R^loc has dimension 1 + n²#T + dn(n+1)/2 here, since ρ̄ is trivial at T and the local degrees above 2 are large (LocalGaloisDeformationRings §§6.24, 2.29, 2.24), so dim `R_{·,∞} = 1 + n²#T + dn(n+1)/2 + g = nd + (n²+1)#T + q` = dim Λ + q + (n²+1)#T − 1.

**Checks.**

- For n = 2, d = 2, #T = 3 and q = 5: g = 5 + 3 − 1 − 2 = 5, dim R_∞ = 1 + 12 + 6 + 5 = 24 and dim S_∞ = 5 + 5 + 15 − 1 = 24.
- If `h¹_{𝒮^⊥,T} = 1` then q = 0, no Taylor–Wiles primes are added and S_∞ is a power series ring over Λ in the (n²+1)#T − 1 framing variables.
- With `q = h¹_{𝒮^⊥,T}` primes, as for odd p, the count would give dim S_∞ = dim R_∞ + 1 and the depth argument of 4.2 would fail; the dyadic count differs from PotentialAutomorphyInfrastructurePartII PL.3 (*The ordinary R = T theorem with Taylor's Ihara avoidance*) exactly by the class of 1.4.

*Needs:* 4.1; 4.2; 1.2; 1.4; 2.2; 3.1; 3.3; LocalGaloisDeformationRings §§2.24, 2.29, 6.24.

### 4.4 Components of the patched rings

In the situation of 4.3, prove for each minimal prime Q of Λ (BCGP25 proof of Theorem 5.7.14, list (1)–(5), p. 137; BCGNT25 Lemma 3.2.4 and proof, pp. 33–34): (1) the generic points of `R_{χ,∞}/Q` and `R_{1,∞}/Q` have characteristic 0; (2) the irreducible components of Spec `R_{χ,∞}/Q` and of Spec `R_{1,∞}/Q` biject with products over v ∈ R ∪ {v₁} of irreducible components C_v of the local rings; (3) the irreducible components of Spec `R_{χ,∞}/(Q, ϖ)` = Spec `R_{1,∞}/(Q, ϖ)` biject with products of irreducible components C̄_v of the special fibres of the local rings; (4) the irreducible components of Spec `R_{χ,∞}/Q` biject with those of Spec `R^□_{v₁}`; (5) for each component C̄ = ⊗C̄_v of Spec `R_{1,∞}/(Q, ϖ)` there are components C_v of Spec R^1_v (v ∈ R) and components `C^1_{v₁}`, …, `C^s_{v₁}` of Spec `R^□_{v₁}` (s ≥ 1) such that the components of Spec `R_{1,∞}/Q` generalizing C̄ are exactly the `C^i_{v₁} ⊗ ⊗_{v∈R} C_v`.

The route: components of a completed tensor product of local rings whose components are geometrically irreducible of characteristic 0 are products of local components, in the generic and the special fibre (BLGHT11 Lemma 3.3 as used in BCGNT25 Lemma 3.2.4; DeformationAndDerivedPatchingAlgebra §4.6), and power series variables do not change this. Above 2, R^△_v/Q is geometrically irreducible with generically reduced special fibre (LocalGaloisDeformationRings §6.24). At v ∈ R, `R^{χ_v}_v` is irreducible with characteristic-0 generic point and every prime of R^1_v minimal over ϖ contains a unique minimal prime (§2.29), `R^1_v/ϖ = R^{χ_v}_v/ϖ`. At v₁ the lifting ring has finitely many components, all of characteristic 0 (§2.24); unique generalizations come from DeformationAndDerivedPatchingAlgebra §6.7.

**Checks.**

- Each generic point of the special fibre of `R_{1,∞}/Q` generalizes to components that differ only in their v₁-factor.
- If #R = 0, (2) and (4) say that the components of Spec `R_{1,∞}/Q` are those of Spec `R^□_{v₁}`.
- For n = 2 and v ∈ R, `R^{χ_v}_v` with `χ_{v,1} ≠ χ_{v,2}` is irreducible, while R^1_v has two components (unramified and Steinberg-type), so (2) for S_1 has twice as many components per v as for S_χ.

*Needs:* 4.3; LocalGaloisDeformationRings §§2.24, 2.29, 6.24; DeformationAndDerivedPatchingAlgebra §§4.6, 6.7.

### 4.5 Component support by Ihara avoidance

In the situation of 4.3, prove (BCGP25 proof of Theorem 5.7.14, from "Fix for the moment a minimal prime Q" to the existence of π_Y, pp. 137–138): (a) for every minimal prime Q of Λ and every set X of irreducible components C_v of Spec R^1_v (v ∈ R) there is an irreducible component `C_{X,v₁}` of Spec `R^□_{v₁}` such that the component `C_X = C_{X,v₁} ⊗ ⊗_{v∈R} C_v` of Spec `R_{1,∞}/Q` (4.4(2)) lies in the support of `H_{1,∞}`; with R^loc_X the quotient of `R^loc_{S_1,T}/Q` by the prime of `C_{X,v₁} ⊗ ⊗_{v∈R} C_v` and `R_X = R_{S_1}` `⊗_{R^loc_{S_1,T}}` R^loc_X, Spec R_X lies in the support of H_1, (R_X)_red is a quotient of `T^{T,ord}_{{1}}(U(l^∞), O)_{m₁}`, R_X is a finite Λ-algebra and every component of Spec R_X has dimension at least dim Λ; (b) for every choice Y of irreducible components C_v of the local rings at v ∈ R ∪ S_2 there is an ordinary RACSDC π_Y with `r̄_{π_Y,2} ≅ ρ̄`, `r_{π_Y,2}` unramified outside T, and `r_{π_Y,2}|G_{F_ṽ}` lying on C_v and on no other component for each v ∈ R ∪ S_2.

The route: the seed π gives a nonempty support of `H_{1,∞}`; by the identification modulo ϖ the support of `H_{χ,∞}` is nonempty, and by 4.4(4) it is a union of components of `R_{χ,∞}/Q`, each indexed by a component of `R^□_{v₁}`; by 4.4(5) and the identification modulo ϖ (Taylor's Ihara avoidance) a product `C_{X,v₁} ⊗ ⊗C_v` lies in the support of `H_{1,∞}`. Then Spec R_X ⊂ Supp H_1, so (R_X)_red is a Hecke quotient, finite over Λ by 2.2(1); R_X is finite by DeformationAndDerivedPatchingAlgebra §4.1. The dimension bound for R_X is read off the patched module, so no appeal to 3.2 is needed here. Inside Spec `R_{1,∞}`, the closed set V(I_X) cut out by the kernel I_X of `R^loc_{S_1,T}` → R^loc_X is the single component C_X, because R^△_v/Q is irreducible above 2 (LocalGaloisDeformationRings §6.24) and components are products of local components (4.4(2)). Since `R_{1,∞}/a_∞ ↠ R_{S_1}`, `H_1 = H_{1,∞}/a_∞` and `Supp(H_{1,∞}/a_∞)` = Supp `H_{1,∞} ∩ V(a_∞)`, we get Spec R_X = Spec `R_{S_1} ∩ V(I_X)` = Supp `H_{1,∞} ∩ V(a_∞) ∩ C_X = C_X ∩ V(a_∞)`, using C_X ⊂ Supp `H_{1,∞}`. C_X is a complete local domain of dimension dim S_∞ (4.3), so by Krull's height theorem every irreducible component of C_X ∩ V(a_∞), that is of Spec R_X, has dimension at least dim S_∞ − (q + (n²+1)#T − 1) = dim Λ, and being finite over the domain Λ/Q of the same dimension it maps onto Spec Λ/Q. Choose λ with R_X/℘_λ nonzero, finite over O and of dimension ≥ 1; it has a ℚ̄₂-point (DeformationAndDerivedPatchingAlgebra §4.2), which by 2.2(4) and 2.3 comes from an ordinary RACSDC π_Y. Repeating over the minimal primes Q runs through the components above 2, and genericity of `π_{Y,ṽ}` puts its local representations on a single component (PotentialAutomorphyInfrastructurePartII PL.1).

**Checks.**

- Every choice of local components at R ∪ S_2 is realized by an automorphic lift of ρ̄.
- The support statement is for H_1, the module over F; the module over the second base change belongs to 4.6 (source issue: the printed text writes `H′_{1,∞}` here).
- For #R = 0 and Λ with a single component, (b) reduces to the existence of one ordinary automorphic lift on the component above 2 through the seed, which π itself provides.

*Needs:* 4.3; 4.4; 2.2; 2.3; DeformationAndDerivedPatchingAlgebra §§4.1, 4.2, 6.1; PotentialAutomorphyInfrastructurePartII PL.1.

### 4.6 Removal of the auxiliary place

In the situation of 4.5, prove that there is a solvable CM extension L/F, linearly disjoint over F from the field of ρ̄, such that for every choice Y and every place w₁ of L⁺ above v₁, `r_{π_Y,2}|G_{L_{w̃₁}}` is unramified; and that, over L, with R′ the places of L⁺ above R, a split place v′₁ ∉ R′ ∪ S_2(L⁺) with `ρ̄(Frob_{ṽ′₁})` regular semisimple and T′ = S_2(L⁺) ∪ R′ ∪ {v′₁}, the patched module `H′_{1,∞}` for L has support containing every component C′_Y (unramified at v′₁, the images of the components of Y elsewhere). With `R^loc_{L/F,T′}` the quotient of `R^loc_{S_1,T′}` cut out by the union of the C′_Y and `R′_{L/F,T′} = R′_{S_1}` `⊗_{R^loc_{S_1,T′}}` `R^loc_{L/F,T′}`: Spec `R′_{L/F,T′}` lies in the support of H′_1, `(R′_{L/F,T′})_red` is a quotient of `T^{T′,ord}_{{1}}(U(l^∞), O)_{m₁}` over L, every O-point of `R′_{L/F,T′}` factors through this Hecke algebra, and `R′_{L/F,T′}` is a finite Λ′-algebra (BCGP25 proof of Theorem 5.7.14, from "By Lemma 5.6.3" to the finiteness of `R′_{L/F,T′}`, p. 138).

The route: every lift of `ρ̄|G_{F_{ṽ₁}}` is a direct sum of characters (LocalGaloisDeformationRings §2.29, BCGP25 Lemma 5.6.3), so a finite extension of `F_{ṽ₁}` makes all of them unramified; realize it by a solvable CM L (PotentialAutomorphyInfrastructurePartII PL.0). Repeat 4.3 over L with T′ (the printed T′ omits S_2(L⁺); source issue). The base changes of the π_Y (PotentialAutomorphyInfrastructure §3.47) are points of the support lying on single components, so each C′_Y lies in the support. Conclude as in 4.5.

**Checks.**

- Without S_2(L⁺) in T′ the problem over L would drop the ordinary condition above 2, and the base changes of the π_Y would no longer cut out a quotient of the ordinary Hecke algebra.
- After the second base change no condition at an auxiliary place is needed, since all relevant lifts are unramified there.
- If #R = 0 there is a single C′_Y for each choice of components above 2, and `R^loc_{L/F,T′}` is the union of these.

*Needs:* 4.5; 4.3; LocalGaloisDeformationRings §2.29; PotentialAutomorphyInfrastructurePartII PL.0; PotentialAutomorphyInfrastructure §3.47.

### 4.7 Finiteness of the dyadic ordinary deformation ring

Assume (1)–(6) and let `R^{T,ord}` be the ring of 3.1 (R = ∅). Prove that `R^{T,ord}` is a finite Λ-algebra (BCGP25 Theorem 5.7.14, first assertion, and the end of its proof, pp. 134–135 and 139). This is a headline of the roadmap.

The route: prepare F′ (4.1), patch over F′, remove the auxiliary place over L (4.6), so `R′_{L/F,T′}` is finite over Λ′. Restriction to G_L gives a commutative square over Λ′ → Λ, `Λ′ → R′_{L/F,T′}` → `R^{T,ord}`: the restriction of a lift of type `S^{T,ord}` lies on the union of the C′_Y, because above v′₁ it is unramified, above 2 it is ordinary, and at R′ it is unipotently ramified by the unipotence clause of 4.1 (source issue). The map `R′_{L/F,T′}` → `R^{T,ord}` is finite by BLGGT14 Lemma 1.2.3(1) at p = 2, whose proof is unchanged once CHT08 Lemma 2.1.12 is replaced by Tho17 Lemma 2.4 (GlobalGaloisDeformations §4.2), and `R^{T,ord}` is finite over Λ by DeformationAndDerivedPatchingAlgebra §4.1.

**Checks.**

- Finiteness holds with no level hypothesis at T ∖ S_2.
- It is the input BCGP25 Proposition 7.5.10 uses at p = 2, through a finite map `R^{T,ord} → R_S` of GSp₄ deformation rings.
- A lift with non-unipotent tame inertia at some v ∈ T ∖ S_2 over F′ restricts into `R′_{L/F,T′}` only because it is a restriction of a lift over the original F; this is why 4.1 states the unipotence clause for lifts of `ρ̄|G_{F_u}`.

*Needs:* 4.1; 4.6; 3.1; GlobalGaloisDeformations §4.2; DeformationAndDerivedPatchingAlgebra §4.1.

### 4.8 The dyadic ordinary reduced R = T theorem

Assume (1)–(6), let `R^{T,ord}` be as in 4.7 and `T^{T,ord}(U(l^∞))_m` the localized universal ordinary Hecke algebra (2.1) with the surjection of 3.3. If U_v is sufficiently deep (3.5) for every v ∈ T ∖ S_2, prove that `R^{T,ord}` → `T^{T,ord}(U(l^∞))_m` has nilpotent kernel, so `(R^{T,ord})_red` ≅ `T^{T,ord}(U(l^∞))_m` (BCGP25 Theorem 5.7.14, second assertion, and the last paragraph of its proof, pp. 135 and 139). This is the headline of Layers 1–4.

The route: by 4.7 and 3.2(b) every component of Spec `R^{T,ord}` dominates a component of Spec Λ, so the ℚ̄₂-points above the ℘_λ (dense by 2.2(3)) are dense in Spec `R^{T,ord}`. Each such point is automorphic: its restriction to G_L is a point of `R′_{L/F,T′}`, hence of the Hecke algebra over L (4.6), hence of an ordinary RACSDC representation over L by 2.2(4), and it is automorphic over F by soluble descent (PotentialAutomorphyInfrastructurePartII PL.0, *Soluble base change and descent of automorphy*). Sufficient depth puts it at level `U(l^{1,1})`, so it lies in Spec `T^{T,ord}(U(l^∞))_m`. A closed subset containing a dense set is everything, so the kernel lies in every prime (DeformationAndDerivedPatchingAlgebra §6.5).

**Checks.**

- Without the depth hypothesis the theorem still gives finiteness (4.7), but automorphic points may need a smaller level than U, so the kernel need not be nilpotent.
- The density step uses 3.2(b), whose scalar-direction step is part of that target and is not in the sources; the obstruction count 3.2(a) alone leaves room for a component of dimension dim Λ − 1, finite over Λ, lying over a divisor of Spec Λ that contains no ℘_λ.
- For n = 2 and the 16-component Λ of the Examples of Layer 2 the conclusion holds component by component of Λ.

*Needs:* 4.7; 3.2(b); 3.3; 3.5; 2.2; 4.6; PotentialAutomorphyInfrastructurePartII PL.0; DeformationAndDerivedPatchingAlgebra §6.5.

### Examples

- For n = 2, d = 2, #T = 3, q = 5: the patched rings have dimension 24 = dim S_∞ (4.3), R_X has dimension at least 5 (4.5), and `R^{T,ord}` is finite over the five-dimensional Λ (4.7).

### Dependencies

Layers 1–3; LocalGaloisDeformationRings §§2.24, 2.29, 6.24; DeformationAndDerivedPatchingAlgebra §§4.1, 4.2, 4.6, 5.2–5.5, 6.1, 6.5, 6.7; GlobalGaloisDeformations §4.2; PotentialAutomorphyInfrastructurePartII PL.0, PL.1; PotentialAutomorphyInfrastructure §3.47; AutomorphicFormsOnReductiveGroups §7.5.

## Layer 5: GSp₄ deformation problems and the selected ordinary problem

The GSp₄ side for p > 2. Whitmore's Taylor–Wiles places need only semisimple Frobenius, which allows the weaker big-image condition "GSp₄-reasonable" in place of BCGP21's vastness; the ordinary condition at p is the flag-image ring R^△_v, which is not residually p-distinguished in general, so the problem is cut down to the component through the automorphic seed.

### 5.1 GSp₄ deformation problems over a weight algebra and the framing ring

Let F⁺ be totally real, p a prime, S_p the places above p and ρ̄ : `G_{F⁺} → GSp₄(k)` continuous and absolutely irreducible with similitude `ν ∘ ρ̄ = ε̄^{−1}`. Let S ⊃ S_p be a finite set of finite places containing those where ρ̄ ramifies; for v ∈ S fix Λ_v ∈ CNL_O and put `Λ = ⊗̂_{v∈S} Λ_v`. Define a lift of `ρ̄|G_{F⁺_v}` to A `∈ CNL_{Λ_v}` as a continuous ρ : `G_{F⁺_v} → GSp₄(A)` reducing to ρ̄ with `ν ∘ ρ = ε^{−1}`, with lifting functor D^□_v represented by R^□_v; a local problem is a subfunctor D_v represented by a quotient of R^□_v and stable under ĜSp₄(A) = ker(GSp₄(A) → GSp₄(k)); a global problem is 𝒮 = (ρ̄, S, {Λ_v}, {D_v}), with lifts of `G_{F⁺,S}` of type 𝒮, strict equivalence by ĜSp₄(A)-conjugacy, and T-framed lifts `(ρ, (γ_v)_{v∈T}) up` to `(aρa^{−1}, (aγ_v))` (BCGP25 §6.1, Definitions 6.1.1–6.1.4 and (6.1.5), pp. 140–141).

Its API:

- D^□_v(k[ε]) ≅ Z¹(F⁺_v, ad⁰ρ̄) through ρ(σ) = (1 + εφ(σ))ρ̄(σ), and two liftings are ĜSp₄(k[ε])-conjugate iff their classes in H¹(F⁺_v, ad ρ̄) agree.
- D_𝒮 and D^T_𝒮 are represented by R_𝒮 and R^T_𝒮, since the centralizer of the image in ĜSp₄ is Ĝ_m (GlobalGaloisDeformations §3.3; LocalGaloisDeformationRings §1.17).
- For T ≠ ∅, D^T_𝒮 → D_𝒮 is a torsor under `(∏_{v∈T} ĜSp₄)/Ĝ_m`, so R^T_𝒮 is formally smooth over R_𝒮 of relative dimension 11#T − 1; with the framing ring 𝒯 = `Λ⟦x_1, …, x_{11#T−1}⟧`, a representative of the universal deformation gives R^T_𝒮 ≅ R_𝒮 ⊗̂_Λ 𝒯 (as in LocalGaloisDeformationRings §F.2.6).
- When Λ_v = O off T, `R^loc_{𝒮,T} = ⊗̂_{v∈T} R_v` maps to R^T_𝒮 by (ρ, (γ_v)) `↦ (γ_v^{−1}ρ|G_{F⁺_v}γ_v)_v`.
- Composing with GSp₄ → GL₄ (ArithmeticGaloisRepresentations §7.5) maps D_𝒮 to the GL₄ deformation functor with the induced conditions.

**Checks.**

- For #T = 1 the framing ring has 10 variables; for T = ∅, R^T_𝒮 = R_𝒮.
- dim ad ρ̄ = 11 and dim ad⁰ρ̄ = 10, so for #T = 3 the framing ring has 32 variables over Λ; GL₄-framings would give 16·3 − 1 = 47.
- The global lifts are representations of `G_{F⁺}`; with the source's G_F of Definition 6.1.4 read as a CM field the problem would not be defined (source issue).

*Needs:* LocalGaloisDeformationRings §§1.17, F.2.6; ArithmeticGaloisRepresentations §7.5; GlobalGaloisDeformations §3.3; DeformationAndDerivedPatchingAlgebra §1.12.

### 5.2 GSp₄-reasonable residual representations

Let p ≥ 3, k a finite field of characteristic p, F a number field and ρ̄ : G_F → GSp₄(k) continuous and absolutely GSp₄-irreducible (its image lies in no proper parabolic subgroup over k̄). Let 𝔰𝔭₄ be the Lie algebra of Sp₄ over k (Mathlib `LieAlgebra.Symplectic.sp`) with the adjoint action of GSp₄(k), 𝔰𝔭₄^∨ its dual, and for semisimple h ∈ GSp₄(k) let 𝔷_h = Lie `Z(Z_{GSp₄}(h)) ∩ 𝔰𝔭₄`. Define a subgroup H ⊂ GSp₄(k) to satisfy the reasonableness conditions if (a) H⁰(H, 𝔰𝔭₄^∨) = 0 and (b) for every nonzero simple k[H]-submodule W ⊂ 𝔰𝔭₄^∨ there are a semisimple h ∈ H, w ∈ W and z ∈ 𝔷_h with w(z) ≠ 0; and ρ̄ to be GSp₄-reasonable if for all sufficiently large n the group `H_n = ρ̄(G_{F(ζ_{p^n})})` satisfies (a) and (b) and, when ζ_p lies in the field cut out by 𝔰𝔭₄^∨, also H¹(H_n, 𝔰𝔭₄^∨) = 0 (WHI22 Definitions 3.15 and 3.19 and Lemma 3.20, pp. 21–24; WHI22 v4 renames the notion).

Its API:

- If `H¹(ρ̄(G_{F(ζ_p)}), k) = 0` the groups H_n are independent of n, so the conditions can be checked on H_1 (WHI22 Lemma 3.20).
- A vast ρ̄ (ArithmeticGaloisRepresentations §7.11) is GSp₄-reasonable: an enormous image gives (a) by absolute irreducibility and (b) with h regular semisimple, for which 𝔷_h is the Cartan subalgebra through h, every root is nontrivial on h and the trace form is nondegenerate on the Cartan subalgebra for p > 2.
- If `H¹(ρ̄(G_{F(ζ_p)}), k) = 0` and `ρ̄(G_{F(ζ_p)})` is GSp₄-adequate (WHI22 Definition 3.15), ρ̄ is GSp₄-reasonable.
- Condition (a) excludes images of H_n in a proper Levi subgroup, whose centre gives invariants in 𝔰𝔭₄ ≅ 𝔰𝔭₄^∨.
- If F′/F is finite and linearly disjoint over `F(ζ_{p^∞})` from the field of ρ̄, `ρ̄|G_{F′}` is GSp₄-reasonable whenever ρ̄ is.

**Checks.**

- If ρ̄ has image in the diagonal torus, H⁰(H_n, 𝔰𝔭₄^∨) contains the dual of the Cartan subalgebra, so (a) fails and ρ̄ is not GSp₄-reasonable.
- If `ρ̄(G_{F(ζ_3)}) ⊇ Sp₄(𝔽₃)`, then, Sp₄(𝔽₃) being perfect and enormous (ArithmeticGaloisRepresentations §7.11), every H_n contains Sp₄(𝔽₃) and ρ̄ is vast, hence GSp₄-reasonable; yet Sp₄(𝔽₃) ⊂ GL₄(𝔽₃) is not adequate as a subgroup of GL₄, because H¹(Sp₄(𝔽₃), ∧²) ≠ 0 (BCGP25 Remark 6.4.5, p. 151), so reasonableness is a symplectic condition.
- For regular semisimple h in the diagonal torus of GSp₄ with p > 2, the trace form on 𝔷_h = 𝔱 is 2(xx′ + yy′), nondegenerate; for p = 2 it vanishes, which is why p ≥ 3 is assumed.

*Needs:* ArithmeticGaloisRepresentations §§7.5, 7.9, 7.11; Mathlib `LieAlgebra.Symplectic.sp`, `Matrix.symplecticGroup`, `groupCohomology`.

### 5.3 Taylor–Wiles places for GSp₄-reasonable residual representations

Let p ≥ 3, 𝒮 = (ρ̄, S, {Λ_v}, {D_v}) a GSp₄ problem (5.1) over a totally real F⁺, T ⊂ S with S_p ⊂ T, and n ≥ 1. Let L be the field cut out by 𝔰𝔭₄^∨ and suppose that `H = ρ̄(G_{F⁺(ζ_{p^n})})` satisfies (a) and (b) of 5.2 and that either ζ_p ∉ L or H¹(H, 𝔰𝔭₄^∨) = 0. Let `q ≥ h¹(G_{F⁺,S}, 𝔰𝔭₄^∨(1))`. Prove that there is a set Q of Taylor–Wiles places of level n (v ∉ S, q_v ≡ 1 mod p^n, ρ̄ unramified at v with ρ̄(Frob_v) semisimple, with the local problem of gap:gsp4-semisimple-taylor-wiles-places) with #Q = q and `H¹_{𝒮_Q^⊥,T}(𝔰𝔭₄^∨(1)) = 0` (WHI22 Proposition 3.18 and proof, pp. 22–23, with the hypothesis (a) that its proof uses).

The route: (i) WHI22 Lemma 3.16: if H⁰(H, 𝔰𝔭₄^∨) = 0 and either ζ_p ∉ L or H¹(H, 𝔰𝔭₄^∨) = 0, then `H¹(Gal(L(ζ_{p^n})/F⁺), 𝔰𝔭₄^∨(1)) = 0` (the proof is that of BCGP21 Lemma 7.5.9); this step is part of this target, since ArithmeticGaloisRepresentations §7.11 states it only under ζ_p ∉ L or enormous image. (ii) By WHI22 Lemma 3.14 and the dual condition L_v^⊥ = H¹_ur(F_v, M_v^∨(1)) of the gap, a class [ψ] is killed by adding v exactly when its image in H¹_ur(F_v, N_v^∨(1)) is nonzero, N_v = Lie `Z(M_{ρ̄(Frob_v)}) ∩ 𝔰𝔭₄`; this quotient detects classes and is not L_v^⊥. (iii) By (i), ψ restricts to a nonzero `G_{F⁺(ζ_{p^n})}`-equivariant homomorphism f : `G_{L(ζ_{p^n})} → 𝔰𝔭₄^∨(1)`; condition (b) for a simple submodule of the span of its image gives semisimple σ₀, and σ = σ₀ or τσ₀ with ψ(σ)(z) ≠ 0. (iv) Chebotarev gives infinitely many v with ρ̄(Frob_v) = ρ̄(σ), ψ(Frob_v) = ψ(σ) and Frob_v `∈ G_{F⁺(ζ_{p^n})}`; induct on the dimension.

**Checks.**

- The Frobenius at a Taylor–Wiles place need only be semisimple; for ρ̄(Frob_v) = 1 one has M = GSp₄, N_v = 𝔰𝔭₄ ∩ Lie Z(GSp₄) = 0 and v detects no class, so such places are useless though allowed.
- For a reasonable image H with ζ_p ∈ L that is not enormous, Lemma 3.16 applies through H¹(H, 𝔰𝔭₄^∨) = 0, while the statement of ArithmeticGaloisRepresentations §7.11 does not; this is why (i) is proved here.
- Without (a), H⁰(H, 𝔰𝔭₄^∨) ≠ 0 (for instance a torus image) and the inflation–restriction kernel `H¹(Gal(L(ζ_{p^n})/F⁺), 𝔰𝔭₄^∨(1))` need not vanish, so the restriction to `G_{L(ζ_{p^n})}` of a nonzero class can be zero.

*Needs:* 5.1; 5.2; ArithmeticGaloisRepresentations §7.11; gap:gsp4-semisimple-taylor-wiles-places.

### 5.4 Ordinary GSp₄ seed data

Let p > 2 split completely in the totally real field F⁺ and fix ı : ℂ ≅ ℚ̄_p. Define an ordinary GSp₄ seed datum as: an ordinary cuspidal automorphic representation π of `GSp₄(𝔸_{F⁺})` of general type (ModularityAndLanglandsExtensions §3.9) with central character |·|² and weights `((k_v, l_v; 2))_{v|∞}`, k_v ≥ l_v ≥ 2, with its Galois representation `ρ_{π,p}` (gap:gsp4-galois-representations-totally-real) and residual representation ρ̄; a finite set R of finite places prime to p containing the prime-to-p places where π ramifies; an ordinary p-stabilization (α_v, β_v) of `ρ̄|G_{F⁺_v}` for each v | p; and a place w₀; such that (BCGP25 §6.3, Hypothesis 6.3.1, Remarks 6.3.2–6.3.3 and the choice of w₀, pp. 146–147): (1) ρ̄ is GSp₄-reasonable (5.2); (2) ρ̄ is tidy (ArithmeticGaloisRepresentations §7.11); (3) for v | p, `ρ̄|G_{F⁺_v}` is ordinary of weight 2 with p-stabilization (α_v, β_v) compatible with a fixed ordinary p-stabilization of π_v; (4) for v | p, `ρ_{π,p}|G_{F⁺_v}`, viewed through the stabilization as a point of R^△_v (LocalGaloisDeformationRings §6.29), lies on a unique irreducible component of Spec R^△_v; (5) for v ∈ R, `ρ̄|G_{F⁺_v}` is trivial, q_v ≡ 1 mod p (mod 9 if p = 3) and `π_v^{Iw(v)} ≠ 0`; (6) w₀ is an unramified place of residue characteristic > 5 with `q_{w₀} ≢ 1` mod p such that no two eigenvalues of `ρ̄(Frob_{w₀})` have ratio `q_{w₀}`. Put S = S_p ∪ R ∪ {w₀}.

Its API:

- A place w₀ as in (6) exists: tidiness gives `h ∈ ρ̄(G_{F⁺})` with ν(h) ≠ 1 and no two eigenvalues of ratio ν(h); Chebotarev gives w₀ with `ρ̄(Frob_{w₀})` conjugate to h, and since `ν(h) = q_{w₀}^{±1}` and the set of eigenvalue ratios is stable under inversion, `q_{w₀} ≢ 1` and no ratio equals `q_{w₀}`.
- (6) gives `H⁰(G_{F⁺_{w₀}}, ad⁰ρ̄(1)) = 0`, so `R^□_{w₀}` is formally smooth over O (LocalGaloisDeformationRings §1.22).
- For a solvable totally real F′⁺/F⁺ in which p splits completely and which is disjoint from the field of ρ̄, the base change of π with the induced data is a seed datum after the local conditions at R are rearranged.

**Checks.**

- If `ρ̄|G_{F⁺_v}` is residually p-distinguished, condition (4) holds automatically, since Spec R^△_v[1/p] is irreducible (BCGP25 Remark 6.3.2).
- For p = 3 a place v ∈ R must have q_v ≡ 1 mod 9: q_v = 19 is allowed and q_v = 7 is not.
- A place w₀ with `q_{w₀} ≡ 1` mod p is excluded: every eigenvalue has ratio `1 = q_{w₀}` with itself, so `H⁰(G_{F⁺_{w₀}}, ad⁰ρ̄(1)) ⊇ 𝔱 ≠ 0`.
- If π is unramified at every prime-to-p place, R may be empty and S = S_p ∪ {w₀}.

*Needs:* 5.2; ArithmeticGaloisRepresentations §7.11; LocalGaloisDeformationRings §§1.22, 6.29; ModularityAndLanglandsExtensions §3.9; gap:gsp4-galois-representations-totally-real.

### 5.5 The selected ordinary problems S_1 and `S_{1,π}`

Let (π, (α_v, β_v), R, w₀) be an ordinary GSp₄ seed datum with S = S_p ∪ R ∪ {w₀}. For v | p let D^△_v be the ordinary problem of LocalGaloisDeformationRings §6.29 over `Λ_{GSp₄,v}` with unramified characters χ_1(Frob_v) = α_v and χ_2(Frob_v) = β_v; for v ∈ R let D^1_v be the unipotently ramified problem (LocalGaloisDeformationRings §2.22 with trivial characters); let `D^□_{w₀}` be all lifts. Define S_1 = (ρ̄, S, `{Λ_{GSp₄,v}}_{v∈S_p} ∪ {O}_{v∈S∖S_p}`, `{D^△_v}_{v∈S_p} ∪ {D^1_v}_{v∈R} ∪` `{D^□_{w₀}}`) over `Λ_{GSp₄,F⁺}`; for v | p let `R^{△,π}_v` be the quotient of R^△_v by the minimal prime of the unique component through `ρ_{π,p}|G_{F⁺_v}` (seed condition (4)); and let `S_{1,π}` replace D^△_v by the problem of `R^{△,π}_v` (BCGP25 §6.3, from "By the above hypotheses" to the definition of `T_{S_{1,π}}`, p. 147).

Its API:

- `R_{S_1} ↠ R_{S_{1,π}}` is a surjection of `Λ_{GSp₄,F⁺}`-algebras, and `ρ_{π,p}` with its stabilizations is a ℚ̄_p-point of Spec `R_{S_{1,π}}`.
- If `ρ̄|G_{F⁺_v}` is residually p-distinguished for every v | p, D^△_v is the B-ordinary problem `D^{B,α_v}_v` (LocalGaloisDeformationRings §6.27) and `R^{△,π}_v` is the maximal reduced O-flat quotient of R^△_v.

**Checks.**

- A lift lying only on a component of Spec R^△_v other than `R^{△,π}_v` is a point of `R_{S_1}` but not of `R_{S_{1,π}}`.
- If the seed point lay on two components, "the component through π" would not be defined; seed condition (4) excludes this.
- In the residually p-distinguished case `R_{S_{1,π}}` and `R_{S_1}` have the same reduced O-flat quotient.

*Needs:* 5.1; 5.4; LocalGaloisDeformationRings §§2.22, 6.27, 6.29.

### 5.6 The Galois representation over the GSp₄ Hida–Hecke algebra

In the setting of 5.5, let M¹ be the finite free `Λ_{GSp₄,F⁺}`-module of gap:hilbert-siegel-hida-module-free and `T_{S_1}` the Hida–Hecke algebra acting faithfully on it. Prove that there is a continuous ρ : `G_{F⁺} → GSp₄(T_{S_1})` of type S_1, unique up to strict equivalence, whose Frobenius characteristic polynomials at v ∉ S are the Hecke polynomials Q_v(X), giving a surjection `R_{S_1} ↠ T_{S_1}` of `Λ_{GSp₄,F⁺}`-algebras; the same holds for the Taylor–Wiles variants `M^{1,Q}`, compatibly with Δ_Q. Put `T_{S_{1,π}} = R_{S_{1,π}} ⊗_{R_{S_1}} T_{S_1}` (BCGP25 §6.3, p. 147; WHI22 Theorems 7.7–7.8 and proofs, pp. 64–65; BCGP21 Theorem 7.9.4).

The route: embed `T_{S_1}` into a ring of tuples (a, (a_π)) `⊂ k × ∏_π O_{E_π}` indexed by the classical ordinary π of large regular weight contributing to M¹ (gap:hilbert-siegel-ordinary-classicality), glue their Galois representations (gap:gsp4-galois-representations-totally-real) and pass to Artinian quotients. The flag-image condition D^△_v is a scheme-theoretic image, not understood on Artinian rings; but `T_{S_1}` is reduced, O-flat and embeds in `∏_π O_{E_π}`, so `R^□_v → T_{S_1}` factors through R^△_v once every composite `R^□_v → O_{E_π}` does, that is once each `ρ_π|G_{F⁺_v}` is ordinary with stabilization lifting (α_v, β_v) (DeformationAndDerivedPatchingAlgebra §6.3); only the `O_{E′}`-points of D^△_v are used.

**Checks.**

- `T_{S_1}` is finite over `Λ_{GSp₄,F⁺}`, acting faithfully on a finite free module.
- The k-coordinate of a tuple (a, (a_π)) is determined by the others, so the factoring through R^△_v is tested on `O_{E′}`-points only.
- For F⁺ = ℚ and ρ̄ residually p-distinguished, the construction is that of BCGP21 Theorem 7.9.4 with `D^{B,α_p}`.

*Needs:* 5.5; gap:hilbert-siegel-hida-module-free; gap:hilbert-siegel-taylor-wiles-coinvariants for the Taylor–Wiles variants; gap:hilbert-siegel-ordinary-classicality; gap:gsp4-galois-representations-totally-real; LocalGaloisDeformationRings §6.29; DeformationAndDerivedPatchingAlgebra §6.3.

### Examples

- For F⁺ = ℚ, p = 3 and ρ̄ surjective onto GSp₄(𝔽₃), ρ̄ is GSp₄-reasonable (5.2), R must consist of places with q_v ≡ 1 mod 9, and the framing ring over S = {3} ∪ R ∪ {w₀} has 11#S − 1 variables.

### Dependencies

ArithmeticGaloisRepresentations §§7.5, 7.9, 7.11; LocalGaloisDeformationRings §§1.17, 1.22, 2.22, 6.27, 6.29, F.2.6; GlobalGaloisDeformations §3.3; DeformationAndDerivedPatchingAlgebra §§1.12, 6.3; ModularityAndLanglandsExtensions §3.9; gaps gsp4-semisimple-taylor-wiles-places, gsp4-galois-representations-totally-real, hilbert-siegel-hida-module-free, hilbert-siegel-taylor-wiles-coinvariants and hilbert-siegel-ordinary-classicality.

## Layer 6: The symplectic ordinary R = T theorem for p > 2

Throughout, p > 2 splits completely in the totally real field F⁺, (π, `(α_v, β_v)_{v|p}`, R, w₀) is an ordinary GSp₄ seed datum (5.4) with residual representation ρ̄ and S = S_p ∪ R ∪ {w₀}, `S_{1,π}` is the selected problem (5.5), and `T_{S_{1,π}} = R_{S_{1,π}} ⊗_{R_{S_1}} T_{S_1}` (5.6). Since p > 2 splits completely, `O^×_{F⁺_v}(p) = 1 + pℤ_p ≅ ℤ_p` and `Λ_{GSp₄,F⁺}` ≅ `O⟦x_1, …, x_{2d}⟧` is a power series ring.

### 6.1 The automorphic ordinary component dominates the local weight space

Prove that for every v | p the composite Spec `R^{△,π}_v` → Spec `Λ_{GSp₄,v}` is surjective; consequently some minimal prime of `R^{△,π}_v/(p)` contains the minimal prime of `R^{△,π}_v` and no other minimal prime of R^△_v, and `R^{△,π}_v` has relative dimension 16 over O (BCGP25 proof of Theorem 6.3.4, first paragraph, p. 148; Lemma 6.2.6, pp. 145–146).

The route: let `Q_π ⊂ T_{S_1}` be a minimal prime contained in the prime of π; `R^△_v → T_{S_1}/Q_π` factors through `R^{△,π}_v` by seed condition (4). The composite Spec `T_{S_1}/Q_π` → Spec `Λ_{GSp₄,v}` is surjective because `T_{S_1}/Q_π` is finite and torsion-free over the domain `Λ_{GSp₄,F⁺}`, so lying over applies. This is the hypothesis of LocalGaloisDeformationRings §6.35 (BCGP25 Lemma 6.2.6), whose conclusion is the second sentence.

**Checks.**

- The hypothesis of Lemma 6.2.6 is checked globally, not by a local analysis of R^△_v.
- For p > 2 split completely `Λ_{GSp₄,v}` = O⟦x, y⟧ is a domain; at p = 2 it would have torsion and the lying-over argument would need each component separately.
- Relative dimension 16 over O above p is 14 over `Λ_{GSp₄,v}`, matching the count of 6.2.

*Needs:* 5.5; 5.6; LocalGaloisDeformationRings §6.35.

### 6.2 Patched Hida modules for the selected problem

Enlarge E to contain µ_p (µ_9 if p = 3) and fix, for v ∈ R, characters `χ_v = (χ_{v,1}, χ_{v,2})` nontrivial and trivial mod λ with `χ_{v,1} ≠ χ_{v,2}^{±1}`; let S_χ be S_1 with `D^{χ_v}_v` (LocalGaloisDeformationRings §2.22) in place of D^1_v. Let `q = h¹(G_{F⁺,S}, 𝔰𝔭₄^∨(1))` and, by WHI22 Lemma 7.10 built from 5.3, fix 0 ≤ t ≤ 2q and Taylor–Wiles data Q_N of level N with #Q_N = q and `Δ_{Q_N}` having t cyclic factors. Let `Δ_∞ = ℤ_p^t ↠ Δ_{Q_N}`, S_∞ = 𝒯⟦Δ_∞⟧ with 𝒯 the framing ring over `Λ_{GSp₄,F⁺}` (5.1) and augmentation ideal a_∞, R^1_∞ and R^χ_∞ power series rings in g = t − 4d + #S − 1 variables over `R^loc_{S_1,S}` and `R^loc_{S_χ,S}`, and `R_{∞,π} = R^1_∞` `⊗_{R^loc_{S_1,S}}` `R^loc_{S_{1,π},S}`. Prove that there are `Λ_{GSp₄,F⁺}`-algebra maps `S_∞ → R^1_∞ → R_{S_1}` and `S_∞ → R^χ_∞ → R_{S_χ}`, S_∞-modules M^1_∞ and M^χ_∞ finite free over S_∞ with M^·_∞/a_∞ ≅ M^· (5.6), compatible actions of R^·_∞, and identifications M^1_∞/λ ≅ M^χ_∞/λ compatible with R^1_∞/λ ≅ R^χ_∞/λ; and that M^·_∞ is maximal Cohen–Macaulay over R^·_∞ with dim (R^·_∞)′ = dim S_∞, ′ denoting the maximal O-flat quotient (BCGP25 proof of Theorem 6.3.4, p. 148; WHI22 §7.3, Lemma 7.10 and Proposition 7.11 with proof, pp. 66–68).

The route: the Taylor–Wiles data are those of WHI22 Lemma 7.10 (#Q_N = q, with t the number of cyclic factors of `Δ_{Q_N}`, which varies with N and is fixed by passing to a subsequence); the modules `M^{·,Q_N}` are finite free over `Λ_{GSp₄,F⁺}[Δ_{Q_N}]` with coinvariants M^· (gap:hilbert-siegel-taylor-wiles-coinvariants) and carry the Galois representations of 5.6. Since `Λ_{GSp₄,F⁺}` is a power series ring, the patching is DeformationAndDerivedPatchingAlgebra Layer 8 (§§8.2–8.5) with complexes concentrated in one degree and δ = 1. Dimensions: S_∞ is formally smooth over `Λ_{GSp₄,F⁺}` of relative dimension t + 11#S − 1, and (R^·_∞)′ is equidimensional of relative dimension g + 10#S + 4d over it (14 over `Λ_{GSp₄,v}` above p by LocalGaloisDeformationRings §6.31, 10 over O at R and at w₀ by §§2.22 and 1.22); with g = t − 4d + #S − 1 these agree, so a module free over S_∞ is maximal Cohen–Macaulay over (R^·_∞)′.

**Checks.**

- For F⁺ = ℚ, #S = 3 and t = 7: g = 7 − 4 + 3 − 1 = 5, the relative dimension of (R_∞)′ is 5 + 30 + 4 = 39 and that of S_∞ is 7 + 33 − 1 = 39.
- The number of places in Q_N is q, while t, the number of cyclic factors of `Δ_{Q_N}`, can be up to 2q because the Levi centres at semisimple Frobenius have rank up to 2; using t for #Q_N would miscount.
- With I = ∅ the patched modules are free over S_∞; there is no defect, unlike the Klingen case #I = 1 of BCGP21 where they are only balanced.

*Needs:* 5.1; 5.3; 5.6; gap:hilbert-siegel-taylor-wiles-coinvariants; LocalGaloisDeformationRings §§1.22, 2.22, 6.31; DeformationAndDerivedPatchingAlgebra Layer 8, §6.3.

### 6.3 The symplectic ordinary reduced R = T theorem

Prove that the map `R_{S_{1,π}} → T_{S_{1,π}}` has nilpotent kernel, so `(R_{S_{1,π}})_red ≅ T_{S_{1,π}}`: R = T holds up to nilpotents on exactly the chosen local components above p (BCGP25 Theorem 6.3.4 and proof, pp. 148–149; Remark 6.3.2, p. 147). This is the headline of Layers 5–6.

The route: it suffices that the support of M¹_∞ contains every irreducible component of Spec `R_{∞,π}`. (i) The seed: `ρ_{π,p}` with its stabilizations is a point of `Supp_{R_{S_1}} M¹` lying on Spec `R_{S_{1,π}}`, so Supp M¹_∞ contains the component C_π of Spec `R_{∞,π}` through it. (ii) By 6.1 (LocalGaloisDeformationRings §6.35) the special fibre of C_π contains an irreducible component Z of Spec `R_{∞,π}/λ` lying on no other component of Spec R^1_∞, the factors at R (§2.22) and at w₀ (formal smoothness, §1.22) contributing single components. (iii) Ihara avoidance: Z ⊂ Supp M¹_∞/λ = Supp M^χ_∞/λ; a component of Supp M^χ_∞ generalizing Z has special fibre through Z, so its factor above p is `R^{△,π}_v`; the χ-side local rings at R are irreducible (§2.22), so `R^χ_{∞,π}` is irreducible after enlarging E and M^χ_∞ has full support on it (DeformationAndDerivedPatchingAlgebra §9.6). Reducing modulo λ, Supp M¹_∞/λ contains Spec `R_{∞,π}/λ`. (iv) Every component of Supp M¹_∞ and of Spec `R_{∞,π}` has dimension dim S_∞, so M¹_∞ is supported on a component of `R_{∞,π}` as soon as it is supported at a special-fibre point lying on that component alone; such points exist factor by factor (6.1 above p, §2.22 at R, §1.22 at w₀). (v) Hence Spec `R_{S_{1,π}} ⊂` Supp M¹, and since `T_{S_1}` acts faithfully on M¹ the kernel is nilpotent (DeformationAndDerivedPatchingAlgebra §6.5).

**Checks.**

- The theorem is "minimal at p": it identifies R and T only on the components selected by the seed; a component of Spec R^△_v not through the seed is not claimed.
- Nonvanishing of M^χ_∞ alone does not suffice in (iii): it gives some component of Supp M^χ_∞, possibly with a factor above p other than `R^{△,π}_v`; the seed point and Z are what select `R^{△,π}_v`.
- In the residually p-distinguished case the theorem is a special case of BCGP21 and WHI22 Theorem 7.12.

*Needs:* 6.1; 6.2; 5.5; LocalGaloisDeformationRings §§1.22, 2.22, 6.35; DeformationAndDerivedPatchingAlgebra §§6.1, 6.5, 9.6.

### 6.4 Finiteness of the selected symplectic ordinary deformation ring

Prove that `R_{S_{1,π}}` is a finite `Λ_{GSp₄,F⁺}`-algebra (BCGP25 Theorem 6.3.4, p. 148). This is a headline of the roadmap.

The route: `T_{S_1}`, and hence its quotient `T_{S_{1,π}}`, is finite over `Λ_{GSp₄,F⁺}` (5.6); by 6.3 the kernel of `R_{S_{1,π}} → T_{S_{1,π}}` is nilpotent, so `R_{S_{1,π}}/m_Λ R_{S_{1,π}}` has finite length and `R_{S_{1,π}}` is finite (DeformationAndDerivedPatchingAlgebra §4.1).

**Checks.**

- Finiteness is what BCGP25 Proposition 7.5.10 uses at p > 2: for a minimal prime Q of R_S through ρ, `R_{S_1}/Q` factors through `R_{S_{1,π}}` and is finite over `Λ_{GSp₄,ℚ}`.
- A ring with nilpotent kernel onto a finite Λ-algebra need not be finite unless it is complete Noetherian local; `R_{S_{1,π}}` is, which is why §4.1 applies.
- For F⁺ = ℚ, `Λ_{GSp₄,ℚ}` = O⟦x, y⟧ and finiteness means `R_{S_{1,π}}` is a finite O⟦x, y⟧-module.

*Needs:* 6.3; 5.6; DeformationAndDerivedPatchingAlgebra §4.1.

### Examples

- For F⁺ = ℚ, #S = 3 and t = 7, the patched rings have relative dimension 39 over `Λ_{GSp₄,ℚ}` = O⟦x, y⟧, and `R_{S_{1,π}}` is finite over O⟦x, y⟧.

### Dependencies

Layer 5; LocalGaloisDeformationRings §§1.22, 2.22, 6.31, 6.35; DeformationAndDerivedPatchingAlgebra §§4.1, 6.1, 6.3, 6.5, 9.6 and Layer 8; gaps hilbert-siegel-hida-module-free and hilbert-siegel-taylor-wiles-coinvariants.

## Downstream consumers

- **GSp4NonregularModularityLifting** consumes 4.7–4.8 (finiteness and reduced R = T at p = 2, through the finite map to GSp₄ deformation rings of BCGP25 Proposition 7.5.10), 6.3–6.4 (the p > 2 branch), 1.3 (near adequacy) and 5.2 (GSp₄-reasonable residual representations, which it otherwise has no owner for).
- **AbelianSurfacesModularity** consumes 5.2 for its allowed mod-3 images and, through GSp4NonregularModularityLifting, the two end theorems.

## Corrections to the sources

The statements above use the corrected readings below (BCGP25 arXiv v1 unless stated).

- **§5.4, p. 123** (error; affects a stated result). The source says that for T nonempty the cohomology of Thorne's complex vanishes outside degrees 1 and 2. Correction: `h³_{𝒮,T}` = h⁰(F(S)/F⁺, ad r̄(1)) = 1 at p = 2 (Tho17 Lemma 2.15), the scalars being invariant because j acts on Lie GL_n by X ↦ ᵗX in characteristic 2; h⁰ = 0 and h^i = 0 for i ≥ 4 do hold. Used in 1.2.
- **Lemma 5.7.7, proof, pp. 133–134** (gap; affects the proof). The printed relation count s ≤ n²#T + dn(n−1)/2, obtained as in CHT08 Corollary 2.2.12 with Thorne's complex, presupposes `h³_{𝒮,T} = 0`; with `h³_{𝒮,T} = 1` the count gives s ≤ n²#T + dn(n−1)/2 + 1 and only dim ≥ dim Λ − 1 (3.2(a)). Correction: the stated bound needs one relation saved in the scalar direction, i.e. the obstruction classes orthogonal to the class ψ of Lemma 5.5.3; 3.2(b) makes this step part of the target and reduces it to rank one, where class field theory gives the dimension directly.
- **Lemma 5.7.7, statement, p. 133** (misprint). The bound is printed as dim Λ = 1 + [F:ℚ]n. Correction: dim Λ = 1 + [F⁺:ℚ]n, since T(l) has ℤ₂-rank `Σ_{v|2}` n[F⁺_v:ℚ₂] = nd, and (5.7.17) uses dim S_∞ = nd + (n²+1)#T + q.
- **Lemma 5.7.7, proof, p. 133** (gap; affects the proof). Local equidimensionality is taken from Proposition 5.6.6, whose dimension clause assumes trivial residual representation and large local degree, while the lemma is applied on p. 139 at the unprepared field. Correction: use only the lower bound on the dimension of the components of R^△_v for arbitrary residual representation (gap:dyadic-flag-ring-dimension).
- **Remark 5.4.4, display (5.4.5), p. 124** (misprint). The last term of the inflation–restriction sequence is printed H²(F(S)/F⁺, k). Correction: H²(F(S)/F⁺, ad r̄), the sequence having coefficients ad r̄ with `(ad r̄)^{G_F} = k`.
- **Remark 5.4.4, p. 124** (gap; affects nothing). Surjectivity of restriction is deduced from injectivity of H²(F/F⁺, k) into H² with trivial coefficients at a real place. Correction: injectivity into H²(F⁺_v, ad r̄) is needed; writing r̄(c_v) = (B, 1)j, it holds exactly when B is not alternating, which is automatic for n odd and is strong residual oddness for n even (1.2(5)).
- **Proof of Lemma 5.5.3, p. 125** (gap; affects the proof). The proof reduces to F⁺ with `K⁺_{m−1} ⊆ F⁺ ⊊ K⁺_m`. Correction: choose the least m with K⁺_m ⊄ F⁺; most F⁺ (for instance ℚ(√5)) lie in no K⁺_m.
- **Proof of Lemma 5.5.3, p. 126** (misprint). The class of ψ is attributed to L/L⁺ and L⁺/L is called unramified outside 2. Correction: L⁺/F⁺ in both places.
- **(5.7.3), p. 131** (misprint). The sequence defining T(l) ends in `∏_{v∈S_2} k(v)^×`. Correction: `∏_{v∈S_2} T(k(v)) = ∏_{v∈S_2} (k(v)^×)^n`.
- **§5.7, coefficient module M_λ, p. 130** (misprint). The tensor product is taken over τ ∈ S̃_2. Correction: over τ ∈ Ĩ_2, the embeddings inducing the places of S̃_2.
- **§5.6.1, definition of the fixed-type problem, p. 129** (misprint). The characters are evaluated at the Artin map applied to an inertia element. Correction: at the inverse Artin map, as in Ger19.
- **Proposition 5.5.6 (i), p. 126** (misprint). The sign condition is written µ(c_v) = −1. Correction: χ(c_v) = −1, χ the multiplier of 𝒮.
- **§5.4, pp. 121–122, and Definition 6.1.4, p. 141** (misprint). The global representations are written with domain G_F. Correction: `G_{F⁺} (G_{F⁺,S})`; in §6 the base field is F⁺.
- **Proof of Theorem 5.7.14, p. 137, last lines** (misprint). Spec R_X is said to lie in the support of `H′_{1,∞}`. Correction: in the support of H_1; the primed module belongs to the second patching step over L.
- **Proof of Theorem 5.7.14, p. 138** (misprint). Over L the set T is replaced by T′ = R′ ∪ {v′₁}. Correction: T′ = S_2(L⁺) ∪ R′ ∪ {v′₁}, keeping the ordinary condition above 2.
- **Proof of Theorem 5.7.14, preparation list (p. 135) and final step (p. 139)** (gap; affects the proof). The preparation does not ask that lifts at T ∖ S_2 become unipotently ramified, yet the final step maps `R′_{L/F,T′}` → `R^{T,ord}` "by the choice of L". Correction: include in the preparation that every lift of `ρ̄|G_{F_u}` for the original field becomes unipotently ramified on restriction to the prepared field (BCGP25 Lemma 5.6.2), as in 4.1; lifts over the prepared field that are not restrictions are not covered and are not needed.
- **§6.3, paragraph before the definition of S_1, p. 147** (misprint). The characters are specified by χ_1(Frob_v) = α_p and χ_2(Frob_v) = β_p. Correction: α_v and β_v, the stabilization at v.
- **Hypothesis 6.3.1 and the paragraph before it, p. 146** (gap; affects nothing). π may have regular weight but its Galois representation is taken from Theorem 1.8.17, stated for ordinary weight 2. Correction: a regular-weight construction over F⁺ is needed (gap:gsp4-galois-representations-totally-real).
- **WHI22 Proposition 3.18, p. 22, arXiv v3** (gap; affects a stated result). The proposition assumes the trace condition and the conditional H¹ vanishing, but its proof uses Lemma 3.16, which also assumes `H⁰(ρ̄(G_{F(ζ_{p^n})}), ĝ^{0,∨}) = 0`. Correction: add that hypothesis (5.3).

## References

- **BCGP25** — G. Boxer, F. Calegari, T. Gee, V. Pilloni, *Modularity theorems for abelian surfaces*, arXiv:2502.20645v1 (PDF page = printed page).
- **BCGP21** — G. Boxer, F. Calegari, T. Gee, V. Pilloni, *Abelian surfaces over totally real fields are potentially modular*, Publ. Math. IHÉS 134 (2021).
- **WHI22** — D. Whitmore, *The Taylor–Wiles method for reductive groups*, arXiv:2205.05062v3 (the version using "Ĝ-reasonable").
- **BCGNT25** — G. Boxer, F. Calegari, T. Gee, J. Newton, J. A. Thorne, *The Ramanujan and Sato–Tate conjectures for Bianchi modular forms*, Forum Math. Pi 13 (2025).
- **Ger19** — D. Geraghty, *Modularity lifting theorems for ordinary Galois representations*, Math. Ann. 373 (2019); cited in the numbering of the author's preprint.
- **Tho17** — J. A. Thorne, *A 2-adic automorphy lifting theorem for unitary groups over CM fields*, Math. Z. 285 (2017).
- **Tho12** — J. Thorne, *On the automorphy of l-adic Galois representations with small residual image*, J. Inst. Math. Jussieu 11 (2012); arXiv:1107.5989v1.
- **CHT08** — L. Clozel, M. Harris, R. Taylor, *Automorphy for some l-adic lifts of automorphic mod l Galois representations*, Publ. Math. IHÉS 108 (2008).
- **Tay08** — R. Taylor, *Automorphy for some l-adic lifts of automorphic mod l Galois representations. II*, Publ. Math. IHÉS 108 (2008).
- **BLGGT14** — T. Barnet-Lamb, T. Gee, D. Geraghty, R. Taylor, *Potential automorphy and change of weight*, Ann. of Math. 179 (2014).
- **BLGHT11** — T. Barnet-Lamb, D. Geraghty, M. Harris, R. Taylor, *A family of Calabi–Yau varieties and potential automorphy II*, Publ. RIMS 47 (2011).
- **KT17** — C. B. Khare, J. A. Thorne, *Potential automorphy and the Leopoldt conjecture*, Amer. J. Math. 139 (2017).
- **Sho18** — J. Shotton, *The Breuil–Mézard conjecture when l ≠ p*, Duke Math. J. 167 (2018); arXiv:1608.01784v2.
