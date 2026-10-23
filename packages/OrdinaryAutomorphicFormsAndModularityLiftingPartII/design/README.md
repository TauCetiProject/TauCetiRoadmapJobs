# Ordinary automorphic forms and ordinary modularity lifting, Part II: dyadic unitary and symplectic ordinary lifting

This roadmap starts where *Ordinary automorphic forms and ordinary modularity lifting* (`OrdinaryAutomorphicFormsAndModularityLifting`) stops. That roadmap builds the rank-two ordinary theory: Hida families of modular, Hilbert and quaternionic forms, nearly ordinary deformation rings and the Skinner–Wiles theorems. This Part II adds the two higher-rank ordinary R = T theorems that the modularity of abelian surfaces over ℚ uses (Boxer–Calegari–Gee–Pilloni, *Modularity theorems for abelian surfaces*, §§5–6):

1. **The dyadic unitary theorem** (BCGP Theorem 5.7.14). For a CM field F with F/F⁺ unramified at all finite places, the places above 2 split, n[F⁺:ℚ] ≡ 0 mod 4, and a residual ρ̄ : G_F → GL_n(𝔽̄₂) that comes from an ordinary RACSDC automorphic representation, has nearly adequate image containing a regular semisimple element, and (for n even) is strongly residually odd at some real place: the ordinary deformation ring R^{T,ord} is finite over the weight algebra Λ, and for sufficiently deep tame level its reduced quotient is the localized universal ordinary Hecke algebra of a definite unitary group.
2. **The symplectic theorem for p > 2** (BCGP Theorem 6.3.4). For a totally real F⁺ in which p splits completely and an ordinary cuspidal GSp₄ representation π whose residual representation is GSp₄-reasonable and tidy, ordinary of weight 2 at p, with the seed point on a unique ordinary component: the deformation ring of the problem selected by π is finite over Λ_{GSp₄,F⁺} and its reduced quotient is the corresponding Hida–Hecke algebra ("minimal at p").

The two theorems are proved separately because, for p = 3, the image Sp₄(𝔽₃) ⊂ GL₄(𝔽₃) is not adequate (BCGP Remark 6.4.5), while for p = 2 the GL₄ route works with near adequacy.

## Scope and boundaries

The roadmap owns the dyadic polarized deformation theory over a weight algebra with its classes µ_v and its unavoidable dual Selmer class, the specialisation of unitary Hida theory to p = 2, the ordinary global problem with its dimension bound and Hecke-valued Galois representation, sufficiently deep levels, the full proof of Theorem 5.7.14 (solvable preparation, two-type patching, component structure, Ihara-avoidance support, removal of the auxiliary place), GSp₄ deformation problems over a weight algebra, GSp₄-reasonable residual representations and their Taylor–Wiles places, ordinary GSp₄ seed data, the selected problem with its Hida–Hecke Galois representation, and the proof of Theorem 6.3.4.

It imports, and does not plan again:

- **Unitary Hecke theory for l odd, Taylor–Wiles data at p = 2, near adequacy, strong residual oddness, soluble base change and auxiliary CM extensions**: `PotentialAutomorphyInfrastructurePartII` PL.0, PL.2, PL.3 (`PL.3/taylor-wiles-primes-two-adic`) and PL.4 (`PL.4/relaxed-adequacy`, which is BCGP's near adequacy, and `PL.4/strongly-residually-odd`).
- **Local deformation rings**: `LocalGaloisDeformationRings` R08.2 (unipotent and fixed-type rings at p = 2, BCGP Lemma 5.6.2, 5.6.3 and Proposition 5.6.4; GSp₄ Ihara-avoidance and Taylor–Wiles rings), L7/L8 (Geraghty's ordinary flag-image ring R^△_v and its coefficient ring; the GSp₄ ordinary flag-image ring of BCGP §6.2 with Lemmas 6.2.2, 6.2.5 and 6.2.6).
- **The group 𝒢_n, polarized representations, adequacy, tidiness and vastness**: `ArithmeticGaloisRepresentations` G7.
- **Polarized deformation problems with O-coefficients**: `GlobalGaloisDeformations` G7, R04.
- **Patching and commutative algebra**: `DeformationAndDerivedPatchingAlgebra` R03.4–R03.6, P9.
- **BCGP21's GSp₄ Hida–Hecke modules, Galois representations and patching**: `AbelianSurfacesPotentialModularity` AP.0–AP.3.
- **Local–global compatibility for RACSDC representations**: `AutomorphicGaloisRepresentationsPartII` AG2.5; **Bernstein components**: `SmoothRepresentationsOfLocalGroups` SR.3.

Downstream, not planned here: the multiplicity-one theorem and higher Coleman classicality in singular weight (BCGP §7, roadmap `GSp4NonregularModularityLifting`), solvable descent from GL₄ to GSp₄ (BCGP Proposition 7.5.3, `EndoscopicTransferAndUnitaryTraceComparison` ET.7a), the 2–3 switch and the main theorems on abelian surfaces (`AbelianSurfacesModularity`), and the explicit subgroups of GSp₄(𝔽₃) (BCGP §6.4, `AbelianSurfacesModularity` AM.1).

## Conventions

- E/ℚ_p is a finite coefficient field with ring of integers O, uniformizer ϖ (also written λ) and residue field k, enlarged when needed; CNL_O is the category of complete Noetherian local O-algebras with residue field k, and CNL_Λ that of Λ-algebras in it.
- F is an imaginary CM field with maximal totally real subfield F⁺ and δ_{F/F⁺} the quadratic character of F/F⁺; c_v is a complex conjugation at an infinite place v. S_p (S_2) is the set of places above p (above 2), S_∞ the infinite places.
- 𝒢_n = (GL_n × GL_1) ⋊ {1, j} with j(g, a)j^{−1} = (a·ᵗg^{−1}, a) and multiplier ν; Ĝ_n(A) = ker(𝒢_n(A) → 𝒢_n(k)). Polarized lifts are representations of G_{F⁺}.
- ε is the p-adic cyclotomic character; GSp₄-valued lifts have similitude ε^{−1}; ad ρ̄ = 𝔤𝔰𝔭₄ (dimension 11) and ad⁰ρ̄ = 𝔰𝔭₄ (dimension 10).
- Artin maps send uniformizers to geometric Frobenius elements. The Hecke polynomial at a split place w is Σ_j (−1)^j q_w^{j(j−1)/2} T^j_w X^{n−j}.
- Λ = O⟦T(l)⟧ is the weight algebra of the unitary theory, with T(l) the kernel of ∏_{v|2} T(O_{F⁺_v}) → ∏_{v|2} T(k(v)); dim Λ = 1 + n[F⁺:ℚ]. Λ_{GSp₄,v} = O⟦(O^×_{F⁺_v}(p))²⟧ and Λ_{GSp₄,F⁺} = ⊗̂_{v|p} Λ_{GSp₄,v}.
- "Reduced R = T" means that the map from the deformation ring onto the Hecke algebra has nilpotent kernel.

## Sources

- **BCGP25**: G. Boxer, F. Calegari, T. Gee, V. Pilloni, *Modularity theorems for abelian surfaces*, arXiv:2502.20645v1 (PDF page = printed page); §5 (pp. 114–139), §6 (pp. 139–151) read completely, §7.5 (pp. 174–179) for the uses.
- **WHI22**: D. Whitmore, *The Taylor–Wiles method for reductive groups*, arXiv:2205.05062v3 (the version that uses "Ĝ-reasonable"; version 4 renames it); Definition 3.15–Lemma 3.20 (pp. 21–24) and §7.3 (pp. 64–68).
- **BCGNT25**: G. Boxer, F. Calegari, T. Gee, J. Newton, J. Thorne, *The Ramanujan and Sato–Tate conjectures for Bianchi modular forms*, Forum Math. Pi 13 (2025); Lemma 3.2.4 (pp. 33–34), whose argument BCGP use for the components of the patched rings.

BCGP cite further works (Thorne 2012 and 2017, Geraghty 2019, BLGGT 2014, Taylor 2008, Labesse 2011, Shotton 2018, Balaji 2012, BCGP21); this document refers to them through BCGP's statements and through the roadmaps that plan them.

## Existing interfaces

At Mathlib 082e2d37e8b0463410cdb532e111cd43d5a66174 and Tau Ceti f790474821cf4256814db967cb154e7af3d0c369 the following declarations are used directly:


- **mathlib:Matrix.trace** (Mathlib/LinearAlgebra/Matrix/Trace.lean): The trace of a square matrix; the trace pairing on ad and the trace-annihilator of OL.0/weak-adequacy-equivalences.
- **mathlib:Module.End.IsSemisimple** (Mathlib/LinearAlgebra/Semisimple.lean): Semisimple endomorphisms (semisimple k[X]-module structure); over a finite, hence perfect, field this is diagonalizability over k̄.
- **mathlib:Submodule.span** (Mathlib/LinearAlgebra/Span/Defs.lean): The span of the semisimple elements in weak adequacy, condition (3).
- **mathlib:Matrix.symplecticGroup** (Mathlib/LinearAlgebra/SymplecticGroup.lean): The symplectic group Sp_{2n}(R) of a ring; the derived group of the GSp₄ of OL.4.
- **mathlib:groupCohomology** (Mathlib/RepresentationTheory/Homological/GroupCohomology/Basic.lean): Group cohomology of a representation, for H⁰ and H¹ of finite image groups in the big-image conditions.
- **mathlib:Matrix.trace_one** (Mathlib/LinearAlgebra/Matrix/Trace.lean): tr(1) = card of the index type; gives tr(1_n) = n in the scalar-pairing computation of Lemma 5.5.3.

No Tau Ceti declaration is used directly: the deformation-theoretic and automorphic carriers of this roadmap are planned in the roadmaps listed above.

## Layer overview

- **OL.0. Dyadic polarized deformation problems and the unavoidable dual Selmer class.**
- **OL.1. Ordinary Hecke algebras of definite unitary groups at p = 2.**
- **OL.2. The ordinary global problem, its dimension and the Hecke-valued Galois representation.**
- **OL.3. The dyadic ordinary R = T theorem.**
- **OL.4. GSp₄ deformation problems, reasonable residual images and the selected ordinary problem.**
- **OL.5. The symplectic ordinary R = T theorem for p > 2.**

## OL.0. Dyadic polarized deformation problems and the unavoidable dual Selmer class

For p = 2 the deformation theory of polarized representations has two features absent for odd p. Conjugation by the GL_1 factor of 𝒢_n is not absorbed by scalar matrices, because elements of 1 + m_A need not be squares; strict equivalence therefore uses the full kernel Ĝ_n, and the classes µ_v measure the difference. And a scalar dual Selmer class always survives: the quadratic extension of F⁺ inside F(ζ_{2^∞}) gives a class that no Taylor–Wiles datum of large level kills. Taylor–Wiles data with near adequacy (BCGP Proposition 5.5.6) kill everything else; that statement is imported from PotentialAutomorphyInfrastructurePartII PL.3/taylor-wiles-primes-two-adic with PL.4/relaxed-adequacy, once near adequacy is identified with relaxed adequacy.

Deformation theory of 𝒢_n-valued representations when p = 2, as needed for ordinary lifting over CM fields. **Targets:** polarized global deformation problems over a weight algebra Λ = ⊗̂Λ_v with strict equivalence by the full kernel Ĝ_n (including its GL_1 factor), T-framed rings, the relative dimension (n² + 1)#T − 1 and the map from the local rings (BCGP §5.4); the classes µ_v = ker(H¹(ad r̄) → H¹(𝔤_n r̄)), of dimension ≤ 1, zero at split places and one-dimensional at strongly residually odd real places, and the dyadic dual Selmer group H¹_{𝒮^⊥,T} cut out by µ_v^⊥ on T and L_v^⊥ off T, with h² = h¹_{𝒮^⊥,T} (BCGP (5.4.3)); the equivalence of the three forms of weak adequacy, hence BCGP's near adequacy equals the relaxed adequacy already planned at PotentialAutomorphyInfrastructurePartII PL.4/relaxed-adequacy (Lemma 5.3.1); and the unavoidable dual Selmer class: for every Taylor–Wiles datum of large level h¹_{𝒮_Q^⊥,T} ≥ 1, the surviving class being the scalar class of the totally real quadratic extension F⁺K⁺_m/F⁺ (Lemma 5.5.3). Taylor–Wiles data under near adequacy (Proposition 5.5.6) are imported from PL.3/taylor-wiles-primes-two-adic with PL.4/relaxed-adequacy.

**Layer dependencies:** `ArithmeticGaloisRepresentations:G7`, `DeformationAndDerivedPatchingAlgebra:R03.1`, `GlobalGaloisDeformations:G7`, `LocalGaloisDeformationRings:R08.1`, `LocalGaloisDeformationRings:R08.2`, `PotentialAutomorphyInfrastructurePartII:PL.3`, `PotentialAutomorphyInfrastructurePartII:PL.4`.

### Polarized deformation problems over a weight algebra, up to Ĝ_n-conjugacy

**Target:** `OrdinaryPartII.DyadicPolarizedProblem` (definition); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0/lambda-polarized-deformation-problem`. Planet: *Dyadic polarized deformation problem*.

Let E/ℚ_2 be finite with ring of integers O, uniformizer ϖ and residue field k, and let CNL_O be the category of complete Noetherian local O-algebras with residue field k. Let F be an imaginary CM field with maximal totally real subfield F⁺, such that F/F⁺ is unramified at every finite place and every place of F⁺ above 2 splits in F. Let S be a finite set of places of F⁺ containing the set S_2 of places above 2 and the set S_∞ of infinite places, and write G_{F⁺,S} ⊃ G_{F,S} for the Galois groups of the maximal extension F(S) of F unramified outside S. Let 𝒢_n = (GL_n × GL_1) ⋊ {1, j} be the group scheme of ArithmeticGaloisRepresentations G7/clozel-harris-taylor-group, 𝒢_n^0 = GL_n × GL_1, ν : 𝒢_n → GL_1 its multiplier, and for A ∈ CNL_O let Ĝ_n(A) = ker(𝒢_n(A) → 𝒢_n(k)). Fix a continuous r̄ : G_{F⁺,S} → 𝒢_n(k) with r̄^{−1}(𝒢_n^0(k)) = G_{F,S} whose restriction ρ̄ to G_{F,S} (projected to GL_n) is absolutely irreducible, and a continuous χ : G_{F⁺,S} → O^× lifting ν ∘ r̄ with χ(c_v) = −1 for every v ∈ S_∞. For each v ∈ S fix Λ_v ∈ CNL_O and put Λ = ⊗̂_{v∈S} Λ_v (completed tensor product over O). A lifting of r̄|G_{F⁺_v} to A ∈ CNL_{Λ_v} is a continuous r_v : G_{F⁺_v} → 𝒢_n(A) reducing to r̄|G_{F⁺_v} with ν ∘ r_v = χ|G_{F⁺_v}; the functor Lift^□_v of liftings is represented by R^□_v ∈ CNL_{Λ_v}. A local deformation problem D_v ⊂ Lift^□_v is a representable subfunctor stable under conjugation by Ĝ_n(A). A global deformation problem is a tuple 𝒮 = (F, r̄, O, χ, S, {Λ_v}_{v∈S}, {D_v}_{v∈S}). A lift of r̄ to A ∈ CNL_Λ is a continuous r : G_{F⁺,S} → 𝒢_n(A) reducing to r̄ with ν ∘ r = χ; it is of type 𝒮 if r|G_{F⁺_v} ∈ D_v(A) for every v ∈ S; two lifts are strictly equivalent if they are conjugate by an element of Ĝ_n(A) (the whole kernel, including its GL_1 factor). For T ⊂ S, a T-framed lift of type 𝒮 is (r, (α_v)_{v∈T}) with α_v ∈ Ĝ_n(A), and (r, (α_v)) ~ (a r a^{−1}, (a α_v)) for a ∈ Ĝ_n(A). Def_𝒮 and Def^T_𝒮 : CNL_Λ → Set are the functors of strict equivalence classes of lifts (resp. T-framed lifts) of type 𝒮. When Λ_v = O for every v ∈ S ∖ T, R^loc_{𝒮,T} = ⊗̂_{v∈T} R_v (R_v representing D_v) is a Λ-algebra through ⊗̂_{v∈T} Λ_v ≅ Λ, and (r, (α_v)) ↦ (α_v^{−1} r|G_{F⁺_v} α_v)_v defines a CNL_Λ-morphism R^loc_{𝒮,T} → R^T_𝒮.

**Construction or proof.**

1. Define the functors as stated; Def_𝒮 and Def^T_𝒮 are represented by R_𝒮 and R^T_𝒮 in CNL_Λ (Thorne 2017, Lemmas 2.8 and 2.10, as BCGP §5.4 recalls them; the proofs use only that ρ̄ is absolutely irreducible and that the centralizer of r̄ in Ĝ_n is the image of the scalars, which holds for p = 2).
2. For T ≠ ∅, Def^T_𝒮 → Def_𝒮 is a torsor under (∏_{v∈T} Ĝ_n)/Ĝ_m, so R^T_𝒮 is formally smooth over R_𝒮 of relative dimension (n² + 1)#T − 1; for T = ∅, R^T_𝒮 = R_𝒮.
3. For v split in F as ṽṽ^c every lifting has image in 𝒢_n^0(A), and r_v ↦ ρ_v (projection to GL_n of r_v|G_{F_ṽ}) identifies liftings of r̄|G_{F⁺_v} with liftings of ρ̄|G_{F_ṽ}; Ĝ_n-conjugacy classes match GL_n-conjugacy classes there.
4. Coefficients over Λ are handled as in Khare–Thorne (2017, §4), which BCGP follow: the Λ-algebra structure plays no role in the tangent computations.

**Uses.**

- BCGP25 Proposition 5.5.6, p. 126: the Taylor–Wiles presentation R^loc_{𝒮,T}⟦X_1, …, X_g⟧ ↠ R^T_{𝒮_Q} is a statement about these rings.
- BCGP25 (5.7.6) and Definition 5.7.11, pp. 133–134: the ordinary problem S_{χ} and R^{T,ord} are instances.
- BCGP25 Proposition 7.5.10, p. 178: R^{T,ord} → R_S is defined by applying Corollary 5.1.6 to (ρ̄ ⊗ ε^{−1})|G_{F⁺}; conjugating by B ∈ ĜSp_4 corresponds to conjugating by (B, ν(B)) ∈ Ĝ_n^0.
- PotentialAutomorphyInfrastructurePartII PL.3/taylor-wiles-primes-two-adic: is stated for problems in the sense of Thorne 2017 §2.1, which this node extends to Λ-coefficients.

**API.**

- `OrdinaryPartII.DyadicPolarizedProblem.deformationFunctor` (constructor): Def_𝒮 : CNL_Λ → Set, strict equivalence classes of lifts of type 𝒮, conjugacy by Ĝ_n(A).
- `OrdinaryPartII.DyadicPolarizedProblem.universalRing` (universal-property): R_𝒮 ∈ CNL_Λ represents Def_𝒮; R^T_𝒮 represents Def^T_𝒮.
- `OrdinaryPartII.DyadicPolarizedProblem.framedRing_formallySmooth` (characterisation): For T ≠ ∅, R^T_𝒮 is formally smooth over R_𝒮 of relative dimension (n² + 1)#T − 1; for T = ∅ it equals R_𝒮.
- `OrdinaryPartII.DyadicPolarizedProblem.localToGlobal` (data): The CNL_Λ-morphism R^loc_{𝒮,T} → R^T_𝒮 induced by (r, (α_v)) ↦ (α_v^{−1} r|G_{F⁺_v} α_v)_v.
- `OrdinaryPartII.DyadicPolarizedProblem.split_lift_equiv` (equivalence): At a place v split in F, liftings of r̄|G_{F⁺_v} correspond bijectively to liftings of ρ̄|G_{F_ṽ}, compatibly with conjugation.
- `OrdinaryPartII.DyadicPolarizedProblem.compat_unitPowerConj` (compatibility): If every element of 1 + m_A has a square root (for example p odd), conjugation by (1, a) ∈ Ĝ_n(A) equals conjugation by (λ·1_n, 1) with λ² = a^{−1}, so Def_𝒮 agrees with the GlobalGaloisDeformations G7 functor of lifts up to 1 + M_n(m_A)-conjugacy.
- `OrdinaryPartII.DyadicPolarizedProblem.augment` (functoriality): Adding a Taylor–Wiles datum Q gives 𝒮_Q with R_{𝒮_Q} an O[Δ_Q]-algebra and R_{𝒮_Q} ⊗_{O[Δ_Q]} O ≅ R_𝒮.

**Unit tests.**

- `OrdinaryPartII.DyadicPolarizedProblem.framed_eq_of_empty` (degenerate): For T = ∅ the framed ring R^T_𝒮 is R_𝒮 itself.
- `OrdinaryPartII.DyadicPolarizedProblem.framing_dim_four` (computation): For n = 4 and #T = 3 the framed ring R^T_𝒮 has relative dimension (16 + 1)·3 − 1 = 50 over R_𝒮.
- `OrdinaryPartII.DyadicPolarizedProblem.conj_by_multiplier` (characterisation): For γ = (B, b)j ∈ 𝒢_n(A) ∖ 𝒢_n^0(A) and a ∈ 1 + m_A, conjugation by (1, a) sends γ to (a^{−1}B, b)j and fixes 𝒢_n^0(A) pointwise.
- `OrdinaryPartII.DyadicPolarizedProblem.not_gl_conjugacy_p2` (non-example): For p = 2, n even and (ρ̄, χ̄) strongly residually odd at a real place, the functor of lifts up to 1 + M_n(m_A)-conjugacy is not Def_𝒮: the one-dimensional space µ_v at that real place is identified to zero by Ĝ_n-conjugacy and not by GL_n-conjugacy.

**Checks.**

- For p = 2 and n even, Def_𝒮 differs from the functor of liftings up to 1 + M_n(m_A)-conjugacy, by the classes recorded in OL.0/dyadic-dual-selmer-group (µ_v).
- The relative dimension of the framed ring over R_𝒮 is (n² + 1)#T − 1, not n²#T.

**Prerequisites.** `ArithmeticGaloisRepresentations:G7/clozel-harris-taylor-group`, `GlobalGaloisDeformations:G7/polarized-deformation-problem`, `GlobalGaloisDeformations:G7/polarized-representability`, `LocalGaloisDeformationRings:R08.1/g-valued-framed-ring`, `DeformationAndDerivedPatchingAlgebra:R03.1/completed-tensor-products`.

**Source.** BCGP25, §5.4, pp. 121–122: Sets up Galois deformation theory for 𝒢_n-valued representations when p = 2, following Thorne 2017 §2.1 but with a weight algebra Λ = ⊗̂Λ_v as in Khare–Thorne; defines liftings, local and global deformation problems, strict equivalence by Ĝ_n, T-framed deformations, the representing rings and the map from the local rings; records the relative dimension (n² + 1)#T − 1. BCGP25, §5.1, Lemma 5.1.2 and Remark 5.1.3, pp. 115–116: Explains why conjugacy by the full Ĝ_n (including the GL_1 factor, which is central in 𝒢_n^0 but not in 𝒢_n) is used, and that this version of the CHT lemmas holds in residue characteristic 2.

### The classes µ_v and the dyadic dual Selmer group

**Target:** `OrdinaryPartII.dualSelmer` (definition); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0/dyadic-dual-selmer-group`.

Keep the data of OL.0/lambda-polarized-deformation-problem with p = 2. Let ad r̄ = M_n(k) = Lie GL_n ⊂ 𝔤_n r̄ = Lie 𝒢_n with the adjoint action of G_{F⁺,S} through r̄, so that there is an exact sequence 0 → ad r̄ → 𝔤_n r̄ → k → 0. For v ∈ S identify Lift^□_v(k[ε]) with Z¹(F⁺_v, ad r̄), let L^1_v ⊂ Z¹ be the cocycles of D_v(k[ε]) and L_v its image in H¹(F⁺_v, ad r̄). Put µ_v = ker(H¹(F⁺_v, ad r̄) → H¹(F⁺_v, 𝔤_n r̄)) = im(H⁰(F⁺_v, k) → H¹(F⁺_v, ad r̄)). The trace pairing makes ad r̄(1) the Tate dual of ad r̄ (the twist is trivial since p = 2, but is kept in the notation). Let L_v^⊥ and µ_v^⊥ be the annihilators of L_v and µ_v. For T ⊂ S with Λ_v = O for v ∈ S ∖ T, the dual Selmer group is H¹_{𝒮^⊥,T} = ker(H¹(F(S)/F⁺, ad r̄(1)) → ∏_{v∈T} H¹(F⁺_v, ad r̄(1))/µ_v^⊥ × ∏_{v∈S∖T} H¹(F⁺_v, ad r̄(1))/L_v^⊥), and h¹_{𝒮^⊥,T} is its k-dimension. Properties: dim_k µ_v ≤ 1; µ_v ⊂ L_v; µ_v = 0 if v splits in F; µ_v has dimension one at an infinite place v at which (ρ̄, χ̄) is strongly residually odd; for T ≠ ∅ the cohomology h^i_{𝒮,T} of Thorne's complex C^•_{𝒮,T} vanishes for i ≠ 1, 2, h¹_{𝒮,T} = dim_k m_{R^T_𝒮}/(m_{R^loc}, m²) and h²_{𝒮,T} = h¹_{𝒮^⊥,T}.

**Construction or proof.**

1. The identification of µ_v with the image of H⁰(F⁺_v, k) comes from the long exact sequence of 0 → ad r̄ → 𝔤_n r̄ → k → 0; this gives dim µ_v ≤ 1, and µ_v = 0 when the sequence splits as G_{F⁺_v}-modules, that is when v splits in F (BCGP (5.4.2)).
2. µ_v ⊂ L_v because D_v is stable under Ĝ_n-conjugation; a cocycle in µ_v is the derivative of conjugation by an element (1, 1 + εa).
3. At an infinite place with (ρ̄, χ̄) strongly residually odd, µ_v is one-dimensional (Thorne 2017, Lemma 2.17(ii), as recalled by BCGP).
4. The vanishing of h^i_{𝒮,T} for i ≠ 1, 2 and h²_{𝒮,T} = h¹_{𝒮^⊥,T} is Thorne 2017, Lemma 2.15, via the Poitou–Tate sequence; µ_v^⊥ appears because H¹(F⁺_v, ad r̄)_η = im(H¹(F⁺_v, ad r̄) → H¹(F⁺_v, 𝔤_n r̄)) occurs in Thorne's long exact sequence and µ_v is the kernel (Remark 5.4.4).
5. Inflation–restriction compares H¹(F(S)/F⁺, ad r̄) with H¹(F(S)/F, ad r̄)^{Gal(F/F⁺)}: the kernel is the one-dimensional H¹(F/F⁺, k), whose localisation at v is µ_v, and restriction is surjective because H²(F/F⁺, k) injects into H²(F⁺_v, k) at a real place (Remark 5.4.4, with the corrected final term recorded in sourceIssues).

**Uses.**

- BCGP25 Lemma 5.5.3, p. 125: the unavoidable class is shown to lie in µ_v^⊥ at every finite v ∈ S.
- BCGP25 Proposition 5.5.6, p. 126: the number q = h¹_{𝒮^⊥,T} − 1 of Taylor–Wiles primes and g = q + #T − 1 − [F⁺:ℚ]n(n−1)/2 are defined from it.
- BCGP25 proof of Theorem 5.7.14, p. 136: fixes q and g for the patching.

**API.**

- `OrdinaryPartII.muClass` (data): µ_v ⊂ H¹(F⁺_v, ad r̄), the kernel of H¹(F⁺_v, ad r̄) → H¹(F⁺_v, 𝔤_n r̄).
- `OrdinaryPartII.muClass_eq_image` (characterisation): µ_v = im(H⁰(F⁺_v, k) → H¹(F⁺_v, ad r̄)) for the connecting map of 0 → ad r̄ → 𝔤_n r̄ → k → 0.
- `OrdinaryPartII.finrank_muClass_le_one` (relation): dim_k µ_v ≤ 1.
- `OrdinaryPartII.muClass_le_localCondition` (relation): µ_v ⊂ L_v for every local deformation problem D_v.
- `OrdinaryPartII.muClass_eq_bot_of_split` (simp): µ_v = 0 when v splits in F.
- `OrdinaryPartII.dualSelmer` (constructor): H¹_{𝒮^⊥,T} ⊂ H¹(F(S)/F⁺, ad r̄(1)) as defined by (5.4.3).
- `OrdinaryPartII.h2_eq_finrank_dualSelmer` (relation): For T ≠ ∅: h^i_{𝒮,T} = 0 for i ≠ 1, 2 and h²_{𝒮,T} = h¹_{𝒮^⊥,T}.
- `OrdinaryPartII.dualSelmer_augment` (functoriality): For a Taylor–Wiles datum Q the augmented group H¹_{𝒮_Q^⊥,T} is the subgroup of classes in H¹(F(S ∪ Q)/F⁺, ad r̄(1)) satisfying the conditions of 𝒮 and the dual Taylor–Wiles conditions at Q.

**Unit tests.**

- `OrdinaryPartII.muClass_split` (degenerate): If v splits in F then µ_v = 0, so µ_v^⊥ = H¹(F⁺_v, ad r̄(1)) and v imposes no condition in H¹_{𝒮^⊥,T} when v ∈ T.
- `OrdinaryPartII.muClass_real_odd` (computation): At an infinite place v at which (ρ̄, χ̄) is strongly residually odd, dim_k µ_v = 1 and H¹(F⁺_v, k) → H¹(F⁺_v, ad r̄) is injective.
- `OrdinaryPartII.trace_one_eq_zero_of_even` (computation): On scalar classes, the local Tate pairing H¹(F⁺_v, k·1_n) × H¹(F⁺_v, k·1_n) → k is n times the pairing for k; for n even it vanishes, so the image of H¹(F⁺_v, k) is isotropic.
- `OrdinaryPartII.muClass_ne_localCondition` (non-example): µ_v is not L_v: at an infinite place with D_v = Lift^□_v one has L_v = H¹(F⁺_v, ad r̄) while dim µ_v ≤ 1; replacing µ_v^⊥ by L_v^⊥ at T changes the group.

**Checks.**

- If every finite place of T splits in F, then H¹_{𝒮^⊥,T} is the kernel of restriction to the infinite places at which L_v^⊥ = 0, together with no condition at T.
- With T ≠ ∅, h²_{𝒮,T} = h¹_{𝒮^⊥,T}.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0/lambda-polarized-deformation-problem`, `PotentialAutomorphyInfrastructurePartII:PL.4/strongly-residually-odd`, `ArithmeticGaloisRepresentations:G7/clozel-harris-taylor-group`, `GlobalGaloisDeformations:G7/polarized-tangent-obstruction`.

**Source.** BCGP25, §5.4, (5.4.1)–(5.4.3), pp. 122–123: Defines µ_v as the kernel of H¹ of ad r̄ into H¹ of 𝔤_n r̄, identifies it with the image of H⁰(F⁺_v, k), records dim ≤ 1, µ_v ⊂ L_v, vanishing at split places and the one-dimensionality at strongly residually odd real places, and defines the dual Selmer group with µ_v^⊥ at T and L_v^⊥ off T; quotes Thorne's vanishing and h² = h¹_{𝒮^⊥,T}. BCGP25, Remark 5.4.4 and (5.4.5), pp. 123–124: Explains the role of µ_v (deformations equivalent under Ĝ_n but not under GL_n-conjugation) and compares with the conjugate self-dual Selmer groups by inflation–restriction.

### Three forms of weak adequacy, and near adequacy

**Target:** `OrdinaryPartII.weaklyAdequate_iff_traceAnnihilator_eq_bot` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0/weak-adequacy-equivalences`. Planet: *Near adequacy and weak adequacy*.

Let k be a finite field, V a finite-dimensional k-vector space, ad = End_k(V), ad⁰ ⊂ ad the trace-zero endomorphisms and H ⊂ GL(V) a subgroup, with H^ss its set of semisimple elements. For g ∈ H^ss and α ∈ k̄ let e_{g,α} be the g-equivariant projection of V ⊗ k̄ onto the generalized α-eigenspace of g. The following are equivalent: (1) for every simple k[H]-submodule W ⊂ ad ⊗ k̄ there are σ ∈ H^ss and an eigenvalue α of σ with tr(e_{σ,α}W) ≠ 0; (2) the same for every simple k[H]-submodule W ⊂ ad⁰ ⊗ k̄; (3) ad is spanned over k by H^ss. They hold exactly when the trace-annihilator U = {w ∈ ad ⊗ k̄ : tr(gw) = 0 for all g ∈ H^ss} is zero; U = {w : tr(e_{g,α}w) = 0 for all g ∈ H^ss, α}; U is an H-submodule contained in ad⁰ ⊗ k̄. A subgroup satisfying them (weakly adequate) acts absolutely irreducibly on V. Consequently BCGP's nearly adequate subgroups (weakly adequate, H¹(H, k) = 0 and H¹(H, ad) = 0; Definition 5.3.3) are exactly the relaxed-adequate subgroups of PotentialAutomorphyInfrastructurePartII PL.4/relaxed-adequacy, and the Taylor–Wiles propositions recorded there apply to them.

**Construction or proof.**

1. Show the two descriptions of U agree: each e_{g,α} is a polynomial in g with coefficients in k̄, and conversely g = Σ_α α e_{g,α} for semisimple g (Thorne 2012, proof of Lemma A.1, as BCGP cite it).
2. U is H-stable: for h ∈ H, w ∈ U and g ∈ H^ss, tr(g·hwh^{−1}) = tr(h^{−1}gh·w) = 0 since h^{−1}gh ∈ H^ss.
3. Taking g = 1 shows U ⊂ ad⁰ ⊗ k̄. By non-degeneracy of the trace form, (3) ⇔ U = 0.
4. (1) and (2) say that U meets the socle of ad ⊗ k̄, respectively of ad⁰ ⊗ k̄, trivially; as U is an H-submodule of ad⁰ ⊗ k̄, each is equivalent to U = 0.
5. If H stabilizes a proper nonzero subspace V′, then every g ∈ H^ss stabilizes V′, so the span of H^ss lies in the parabolic subalgebra stabilizing V′ ≠ ad; hence (3) forces absolute irreducibility (after extending scalars the same argument applies over k̄).
6. Comparing definitions: PL.4/relaxed-adequacy requires H¹(H, k) = 0, H¹(H, ad) = 0 and condition (1); BCGP's Definition 5.3.3 requires weak adequacy (any of (1)–(3)), H¹(H, k) = 0 and H¹(H, ad) = 0.

**Checks.**

- The trace-annihilator U always lies in ad⁰ ⊗ k̄.
- Absolute irreducibility does not imply weak adequacy: GL₂(𝔽₂) ≅ S₃ acts absolutely irreducibly on 𝔽₂², but its semisimple elements are 1, A and A² with A of order 3, which span only the two-dimensional subalgebra 𝔽₂[A] ≅ 𝔽₄ of M₂(𝔽₂).
- The group A₅ ⊂ GL₄(𝔽₂) of AbelianSurfacesModularity AM.2/a5-near-adequate is nearly adequate and not adequate in Thorne 2017's sense.

**Prerequisites.** `ArithmeticGaloisRepresentations:G7/adequate-subgroup`, `PotentialAutomorphyInfrastructurePartII:PL.4/relaxed-adequacy`, `mathlib:Matrix.trace`, `mathlib:Module.End.IsSemisimple`, `mathlib:Submodule.span`.

**Source.** BCGP25, Lemma 5.3.1 and proof, p. 120: States the equivalence of the trace condition on simple submodules of ad ⊗ k, of ad⁰ ⊗ k, and spanning by semisimple elements, by the argument of Thorne 2012 Lemma A.1 through the trace-annihilator U. BCGP25, Definitions 5.3.2–5.3.3 and Remark 5.3.4, pp. 120–121: Defines weakly adequate and nearly adequate subgroups and compares near adequacy with Thorne 2017's adequacy, the difference being H¹(H, ad) = 0 in place of H¹(H, ad/k) = 0.

### The unavoidable dyadic dual Selmer class

**Target:** `OrdinaryPartII.finrank_dualSelmer_pos` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0/unavoidable-dual-selmer-class`. Planet: *Unavoidable dyadic dual Selmer class*.

Keep the data of OL.0/lambda-polarized-deformation-problem with p = 2, and let T = S ∖ S_∞. There is N₀, depending only on F⁺, such that for every N ≥ N₀ and every Taylor–Wiles datum (Q, (α_v)_{v∈Q}) of level N (each v ∈ Q outside S and split completely in F(ζ_{2^N}), ρ̄(Frob_v) semisimple with eigenvalue α_v; PotentialAutomorphyInfrastructurePartII PL.3/thorne-taylor-wiles-datum), h¹_{𝒮_Q^⊥,T} ≥ 1; in particular h¹_{𝒮^⊥,T} ≥ 1. Explicitly, let K⁺_m be the maximal totally real subfield of ℚ(ζ_{2^m}), choose m with K⁺_{m−1} ⊂ F⁺ and K⁺_m ⊄ F⁺, let L⁺ = F⁺K⁺_m (a totally real quadratic extension of F⁺) and let ψ ∈ H¹(F(S)/F⁺, ad r̄(1)) be the inflation of the nonzero class of H¹(L⁺/F⁺, k) through the scalars k ⊂ ad r̄. Then ψ ∈ H¹_{𝒮_Q^⊥,T} for every Taylor–Wiles datum of level N ≥ m.

**Construction or proof.**

1. ψ is trivial at every infinite place, because L⁺ is totally real, and at every v ∈ Q, because such v splits completely in F(ζ_{2^N}) ⊃ L⁺ for N ≥ m.
2. At a finite v ∈ S, let Δ_v be the image of H¹(F⁺_v, k) → H¹(F⁺_v, ad r̄). Then ψ_v ∈ Δ_v, and µ_v ⊂ Δ_v: µ_v is the image of the connecting map, whose cocycle vanishes on G_F and sends c ∉ G_F to the identity matrix (use the G_F-equivariant splitting 𝔤_n r̄ ≅ ad r̄ ⊕ k).
3. The Tate pairing on Δ_v × Δ_v is n times the pairing on H¹(F⁺_v, k) (the duality on ad r̄ is (X, Y) ↦ tr(XY) and tr(1_n) = n). If n is even it vanishes, so Δ_v ⊂ Δ_v^⊥ ⊂ µ_v^⊥ and ψ_v ∈ µ_v^⊥.
4. If n is odd, identify the pairing on H¹(F⁺_v, k) with the Hilbert symbol on F⁺_v^×/(F⁺_v^×)²; the classes are those of F/F⁺ and of L⁺/F⁺. The symbol is trivial at finite places prime to 2 (F/F⁺ is unramified there and L⁺/F⁺ is unramified outside 2), at infinite places (L⁺ is totally real) and at places above 2 (they split in F, so the class of F/F⁺ is locally trivial). Hence ψ_v ∈ µ_v^⊥ again.

**Checks.**

- For n even, the scalar class of a totally real quadratic extension of F⁺ inside F(ζ_{2^∞}) survives every Taylor–Wiles datum of large level; so q = h¹_{𝒮^⊥,T} − 1 ≥ 0 in Proposition 5.5.6, and patching proceeds with one class left.
- For F⁺ = ℚ one takes m = 3, K⁺_3 = ℚ(√2) and ψ the class of ℚ(√2)/ℚ.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0/dyadic-dual-selmer-group`, `PotentialAutomorphyInfrastructurePartII:PL.3/thorne-taylor-wiles-datum`, `LocalGaloisDeformationRings:R08.2/taylor-wiles-block-condition`.

**Source.** BCGP25, Lemma 5.5.3 and proof, pp. 125–126: Proves that for large level every Taylor–Wiles datum leaves at least one dual Selmer class, namely the scalar class of the quadratic extension F⁺K⁺_m/F⁺, by checking triviality at infinite places and at Q, and membership in µ_v^⊥ at finite places of S through the scalar pairing (n even) or the Hilbert symbol (n odd). BCGP25, Proposition 5.5.6 and proof, pp. 126–128: Uses near adequacy to kill every class except a one-dimensional space: after adding Taylor–Wiles primes the remaining dual Selmer group injects into H¹(F_N/F⁺, k), which is two-dimensional, and the strongly residually odd real place cuts it to dimension one.

## OL.1. Ordinary Hecke algebras of definite unitary groups at p = 2

This layer specialises the definite-unitary Hida theory of PotentialAutomorphyInfrastructurePartII PL.2, written for odd l, to l = 2, as BCGP §5.7 does: the definitions are unchanged and the finiteness, reducedness, weight independence and control statements hold with the same proofs once the level is sufficiently small.

The Hecke side of the dyadic ordinary theorem. **Targets:** under Hypothesis 5.7.1 (F/F⁺ unramified at all finite places, places above 2 split, n[F⁺:ℚ] ≡ 0 mod 4), the algebraic modular forms S_{λ,{χ_v}}(U, A) on the definite unitary group with l = 2, sufficiently small levels (Definition 5.7.2), Iwahori levels U(l^{b,c}), the normalised operators U^j_{λ,ϖ_ṽ}, the diamond operators, the weight algebra Λ = O⟦T(l)⟧ with T(l) the kernel of reduction to ∏T(k(v)), the ordinary idempotent and the universal ordinary Hecke algebra with its twisted Λ-structure u ↦ ∏τ(u_i)^{1−i}⟨u⟩ (BCGP §5.7, pp. 130–132); Hida theory at p = 2: finiteness over Λ, reducedness, weight independence, density of the arithmetic primes ℘_λ and the control identification (5.7.4); and the dictionary between ordinary constituents and ordinary RACSDC representations of GL_n through Labesse's base change. The l-odd versions are PotentialAutomorphyInfrastructurePartII PL.2, which this layer specialises to l = 2.

**Layer dependencies:** `LocalGaloisDeformationRings:L8`, `PotentialAutomorphyInfrastructure:PA.2`, `PotentialAutomorphyInfrastructurePartII:PL.0`, `PotentialAutomorphyInfrastructurePartII:PL.2`.

### The universal ordinary Hecke algebra of a definite unitary group at p = 2

**Target:** `OrdinaryPartII.DyadicOrdinaryHeckeAlgebra` (construction); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-ordinary-hecke-algebra`. Planet: *Dyadic universal ordinary Hecke algebra*.

Assume Hypothesis 5.7.1: F/F⁺ is unramified at every finite place, every place of F⁺ above 2 splits in F, and n[F⁺:ℚ] ≡ 0 mod 4. Let G/F⁺ be the definite unitary group of PotentialAutomorphyInfrastructurePartII PL.2/definite-unitary-group (quasi-split at every finite place, compact at infinity, with integral model and ι_ṽ : G(O_{F⁺_v}) ≅ GL_n(O_{F_ṽ}) at split v), with chosen ṽ | v for v | 2 and Ĩ_2 the embeddings F → E inducing these places. For λ ∈ (ℤ^n_+)^{Ĩ_2}, M_λ is the tensor product over τ ∈ Ĩ_2 of the O-lattices of highest weight λ_τ; for a set R ⊂ T ∖ S_2 of split places and characters χ_v : Iw(ṽ)/Iw_1(ṽ) ≅ (k(ṽ)^×)^n → O^× (v ∈ R), M_{λ,{χ_v}} = M_λ ⊗ ⊗_{v∈R} O(χ_v). For U = ∏U_v with U_v ⊂ ι_ṽ^{−1}Iw(ṽ) (v ∈ R), S_{λ,{χ_v}}(U, A) is the module of f : G(F⁺)∖G(𝔸^∞_{F⁺}) → M_{λ,{χ_v}} ⊗ A with f(gu) = u_{S_2∪R}^{−1}f(g). U is sufficiently small if its projection to some G(F⁺_v) has no nontrivial element of finite order. For 0 ≤ b ≤ c, U(l^{b,c}) replaces U_v (v | 2) by ι_ṽ^{−1}Iw(ṽ^{b,c}) (upper triangular mod ṽ^c, unipotent upper triangular mod ṽ^b). Hecke operators: T^j_w = ι_w^{−1}[GL_n(O_{F_w}) diag(ϖ_w 1_j, 1_{n−j}) GL_n(O_{F_w})] for split w ∉ T; U^j_{λ,ϖ_ṽ} = (w₀λ)(α^j_{ϖ_ṽ})^{−1}[U(l^{b,c}) ι_ṽ^{−1}(α^j_{ϖ_ṽ}) U(l^{b,c})] for v | 2; diamond operators ⟨u⟩, u ∈ T(O_{F⁺,2}). T^T_{λ,{χ_v}}(U(l^{b,c}), A) is the O-subalgebra of End_O generated by the T^j_w, (T^n_w)^{−1} and ⟨u⟩. Put Λ = O⟦T(l)⟧, where T(l) = ker(∏_{v|2} T(O_{F⁺_v}) → ∏_{v|2} T(k(v))) with T(k(v)) = (k(v)^×)^n. With U(l) = ∏_{v|2} ∏_j U^j_{λ,ϖ_ṽ} and e = lim_r U(l)^{r!}, T^{T,ord} = eT^T. Put S(U(l^∞), E/O) = colim_c S(U(l^{c,c}), E/O) and T(U(l^∞), O) = lim_c T(U(l^{c,c}), O). For λ = 0 the map T(l) → T^{T,ord}_{0,{χ_v}}(U(l^∞), O)^×, u ↦ (∏_{τ∈Ĩ_2} ∏_{i=1}^n τ(u_i)^{1−i})⟨u⟩, makes T^{T,ord}_{0,{χ_v}}(U(l^∞), O) a Λ-algebra; with this structure it is the universal ordinary Hecke algebra T^{T,ord}_{{χ_v}}(U(l^∞), O).

**Construction or proof.**

1. Specialize the constructions of PL.2/unitary-algebraic-modular-forms, PL.2/iwahori-ordinary-parts and PL.2/big-ordinary-hecke-algebra to l = 2. Those nodes are written for l odd; the definitions themselves do not use l odd, and Hypothesis 5.7.1 supplies the needed splitting of places above 2.
2. The operators T^j_w, U^j_{λ,ϖ_ṽ} and ⟨u⟩ commute with each other and with the inclusions S(U(l^{b,c}), O) ⊂ S(U(l^{b′,c′}), O) for b ≤ b′, c ≤ c′ (Geraghty, Lemma 2.10 of the published version, as BCGP cite it); the normalisation by (w₀λ)(α^j)^{−1} is what makes U^j act on integral forms.
3. The isomorphism T(U(l^∞), E/O) ≅ T(U(l^∞), O) of the limits is Geraghty, Lemma 2.17.
4. The twist ∏τ(u_i)^{1−i} is the character (w₀ν)^{−1} with ν_τ = (n − 1, …, 1, 0), as in PL.2/big-ordinary-hecke-algebra; it shifts the arithmetic primes so that weight λ corresponds to ℘_λ.

**Uses.**

- BCGP25 Proposition 5.7.9, p. 134: is the target of the surjection from the ordinary deformation ring.
- BCGP25 Theorem 5.7.14, p. 134: T^{T,ord}(U(l^∞))_m is the Hecke side of the reduced R = T statement.
- BCGP25 (5.7.4), p. 132: its quotients by ℘_λ compute classical ordinary forms of weight λ.

**API.**

- `OrdinaryPartII.DyadicOrdinaryHeckeAlgebra.weightAlgebra` (data): Λ = O⟦T(l)⟧, T(l) the kernel of reduction ∏_{v|2} T(O_{F⁺_v}) → ∏_{v|2} T(k(v)); dim Λ = 1 + n[F⁺:ℚ].
- `OrdinaryPartII.DyadicOrdinaryHeckeAlgebra.algebraMap` (structure): The Λ-algebra structure u ↦ (∏_τ ∏_i τ(u_i)^{1−i})⟨u⟩ on T^{T,ord}_{0,{χ_v}}(U(l^∞), O).
- `OrdinaryPartII.weightTwist` (data): The torus character u ↦ ∏_{i=1}^{n} u_i^{1−i} for one embedding τ; it is multiplicative (weightTwist_mul) and trivial for n = 1.
- `OrdinaryPartII.DyadicOrdinaryHeckeAlgebra.ordinaryIdempotent` (projection): e = lim_r U(l)^{r!} acts on every S_{λ,{χ_v}}(U(l^{b,c}), A) and commutes with the Hecke algebra; T^{T,ord} = eT^T.
- `OrdinaryPartII.DyadicOrdinaryHeckeAlgebra.levelLimit` (data): T^{T,ord}(U(l^∞), O) = lim_c T^{T,ord}(U(l^{c,c}), O), acting faithfully on S^{ord}(U(l^∞), E/O).
- `OrdinaryPartII.DyadicOrdinaryHeckeAlgebra.heckePolynomial` (relation): For split w ∉ T, the Hecke polynomial Σ_j (−1)^j q_w^{j(j−1)/2} T^j_w X^{n−j}, which is the characteristic polynomial of Frobenius in OL.2/dyadic-hecke-galois-representation.
- `OrdinaryPartII.DyadicOrdinaryHeckeAlgebra.isSufficientlySmall` (other): U is sufficiently small if its projection to some G(F⁺_v) is torsion-free; then every U(l^{b,c}) is sufficiently small.
- `OrdinaryPartII.DyadicOrdinaryHeckeAlgebra.compat_odd` (compatibility): For an odd prime l in place of 2, the construction is PotentialAutomorphyInfrastructurePartII PL.2/big-ordinary-hecke-algebra.

**Unit tests.**

- `OrdinaryPartII.weightTwist_one` (degenerate): For n = 1 the factor ∏_τ τ(u_1)^{1−1} is 1, so the universal ordinary Hecke algebra carries the untwisted diamond Λ-structure.
- `OrdinaryPartII.DyadicOrdinaryHeckeAlgebra.heckePolynomial_two` (computation): For n = 2 the Hecke polynomial at a split w ∉ T is X² − T^1_w X + q_w T^2_w.
- `OrdinaryPartII.DyadicOrdinaryHeckeAlgebra.weightAlgebra_components` (computation): If n = 2 and F⁺ has one place above 2, with F⁺_v = ℚ₂, then T(l) = (1 + 2ℤ₂)² has torsion {±1}², so Spec Λ has exactly four irreducible components, each of dimension 3, and Λ[1/2] is regular.
- `OrdinaryPartII.DyadicOrdinaryHeckeAlgebra.unnormalized_U` (non-example): Replacing U^j_{λ,ϖ_ṽ} by the unnormalised double coset [U(l^{b,c})α^jU(l^{b,c})] changes the operator by the scalar (w₀λ)(α^j), which is not a unit for λ ≠ 0; the weight-independence isomorphism of OL.1/dyadic-hida-theory then fails to carry U^j_λ to U^j_0, so weight specialization changes.

**Checks.**

- The construction agrees with PL.2/big-ordinary-hecke-algebra word for word when 2 is replaced by an odd prime.
- For n = 1 the twist is trivial and the twisted and untwisted Λ-structures coincide.

**Prerequisites.** `PotentialAutomorphyInfrastructurePartII:PL.2/definite-unitary-group`, `PotentialAutomorphyInfrastructurePartII:PL.2/unitary-algebraic-modular-forms`, `PotentialAutomorphyInfrastructurePartII:PL.2/unitary-hecke-algebra`, `PotentialAutomorphyInfrastructurePartII:PL.2/iwahori-ordinary-parts`, `PotentialAutomorphyInfrastructurePartII:PL.2/big-ordinary-hecke-algebra`, `LocalGaloisDeformationRings:L8/ordinary-coefficient-ring`.

**Source.** BCGP25, §5.7, from Hypothesis 5.7.1 to the definition of the universal ordinary Hecke algebra, pp. 130–132: Introduces the definite unitary group under Hypothesis 5.7.1, the coefficient modules, the spaces of algebraic modular forms with characters at R, sufficiently small levels (Definition 5.7.2), Iwahori levels at 2, the Hecke, U and diamond operators, the weight algebra Λ = O⟦T(l)⟧ (5.7.3), the ordinary idempotent and the universal ordinary Hecke algebra with its twisted Λ-structure, following Thorne 2017 §4 and Geraghty §2.

### Hida theory for definite unitary groups at p = 2

**Target:** `OrdinaryPartII.dyadicOrdinaryHecke_finite` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-hida-theory`. Planet: *Dyadic Hida control theorem*.

Keep OL.1/dyadic-ordinary-hecke-algebra with U sufficiently small (Definition 5.7.2) and U_v hyperspecial at split v ∉ T. Then: (1) T^{T,ord}_{{χ_v}}(U(l^∞), O) is a finite Λ-algebra, and it and all the finite-level Hecke algebras are reduced; (2) for each dominant λ and r ≥ 1, composing with the projection of M_λ onto its lowest weight line gives a Hecke-equivariant isomorphism S^{ord}_{λ,{χ_v}}(U(l^{r,r}), ϖ^{−r}O/O) ≅ S^{ord}_{0,{χ_v}}(U(l^{r,r}), ϖ^{−r}O/O) carrying U^j_λ to U^j_0 and twisting ⟨u⟩ by (w₀λ)(u); (3) the primes ℘_λ ⊂ Λ attached to dominant weights are Zariski dense in Spec Λ; (4) there is a natural identification Hom_O(T^{T,ord}_{0,{χ_v}}(U(l^∞), O)/℘_λ, ℚ̄₂) = Hom_O(T^{T,ord}_{λ,{χ_v}}(U(l^{1,1}), O), ℚ̄₂) (BCGP (5.7.4)).

**Construction or proof.**

1. Finiteness over Λ is Geraghty, Corollary 2.21 (published numbering), as BCGP cite it: when U(l^{b₀,b₀}) is sufficiently small, the Pontryagin dual of the ordinary forms is finite free over O⟦T(l^{b₀})⟧ (PL.2/ordinary-forms-free-over-lambda (b)), and Λ is finite over O⟦T(l^{b₀})⟧.
2. Reducedness is Geraghty, Lemma 2.14: S(U, ℚ̄₂) is a semisimple Hecke module, the T^j_w act semisimply, and the limit algebra embeds in a product of finite-level algebras.
3. Weight independence (2) is Geraghty's Proposition 2.6.1 (PL.2/hida-classicality (1)); its proof uses only the B_n(O)-equivariant projection to the lowest weight line and the normalisation of U^j.
4. Density of the ℘_λ is in the proof of Geraghty's Corollary 3.4; the identification (4) is Geraghty, Lemma 2.25 (PL.2/hida-classicality (3)).
5. BCGP use these statements at p = 2; the proofs require sufficient smallness of the level (ensuring exactness of S(U, −), PL.2/exactness-and-freeness) and the integrality of the normalised U-operators, and no hypothesis on the residue characteristic.

**Checks.**

- Every O-algebra map T^{T,ord}(U(l^∞), O) → ℚ̄₂ above some ℘_λ comes from a classical ordinary form of weight λ and level U(l^{1,1}).
- The finite Λ-algebra T^{T,ord}_m is a finite product of its localizations.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-ordinary-hecke-algebra`, `PotentialAutomorphyInfrastructurePartII:PL.2/ordinary-forms-free-over-lambda`, `PotentialAutomorphyInfrastructurePartII:PL.2/hida-classicality`, `PotentialAutomorphyInfrastructurePartII:PL.2/exactness-and-freeness`.

**Source.** BCGP25, §5.7, pp. 132–133: States that the universal ordinary Hecke algebra is finite over Λ (citing Geraghty Corollary 2.21) and reduced (Geraghty Lemma 2.14), that the primes ℘_λ are dense (proof of Geraghty Corollary 3.4), and the identification (5.7.4) of Q̄₂-points above ℘_λ with weight-λ points at level U(l^{1,1}) (Geraghty Lemma 2.25).

### Ordinary algebraic modular forms at p = 2 and ordinary RACSDC representations

**Target:** `OrdinaryPartII.ordinary_constituent_iff` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-ordinary-automorphic-dictionary`.

Keep OL.1/dyadic-ordinary-hecke-algebra and fix ı : ℚ̄₂ ≅ ℂ. For λ ∈ (ℤ^n_+)^{Ĩ_2}, A_λ = colim_U S_λ(U, ℚ̄₂) is a semisimple admissible ℚ̄₂[G(𝔸^∞_{F⁺})]-module. The irreducible submodules of ıA_λ are the finite parts of the automorphic representations of G that are descents of automorphic representations π of GL_n(𝔸_F) of weight λ (π has the infinitesimal character of the algebraic representation of weight λ, through ı); these π are isobaric sums of conjugate self-dual representations, and after localization at a non-Eisenstein maximal ideal only RACSDC π contribute. An irreducible submodule meets S^{ord}_λ(U(l^{b,b}), ℚ̄₂) for some b exactly when the corresponding π is ordinary, that is (ı^{−1}(⊗_{v|2} π_v))^{ord} ≠ 0.

**Construction or proof.**

1. Semisimplicity and admissibility of A_λ: G(F⁺ ⊗ ℝ) is compact, so A_λ ⊗_ı ℂ is a space of automorphic forms with finite-dimensional K-invariants and a positive-definite Petersson product.
2. Base change and descent between G and GL_n (Labesse, Corollaire 5.3 and Théorème 5.9, as BCGP cite them; PL.2/unitary-base-change-and-descent) identify the constituents with descents of weight-λ isobaric sums of conjugate self-dual representations.
3. At a non-Eisenstein maximal ideal the attached Galois representation is irreducible, which forces the base change to be cuspidal, so π is RACSDC (PL.2/unitary-base-change-and-descent (2)).
4. Ordinarity: the ordinary part at Iwahori level U(l^{b,b}) of ⊗_{v|2}π_v is nonzero exactly when π is ι-ordinary (BLGGT §2 as BCGP cite it; PA.2/iota-ordinary-automorphic-representation, PL.0/iota-ordinary-principal-series), which uses genericity of π_v at v | 2.

**Checks.**

- Under the dictionary, a maximal ideal of T^{T,ord}_λ is non-Eisenstein exactly when the attached residual representation is absolutely irreducible, and then only ordinary RACSDC π of weight λ contribute.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-ordinary-hecke-algebra`, `PotentialAutomorphyInfrastructurePartII:PL.2/unitary-base-change-and-descent`, `PotentialAutomorphyInfrastructurePartII:PL.2/unitary-constituent-galois-representation`, `PotentialAutomorphyInfrastructure:PA.2/iota-ordinary-automorphic-representation`, `PotentialAutomorphyInfrastructurePartII:PL.0/iota-ordinary-principal-series`.

**Source.** BCGP25, §5.7, paragraph defining A_λ and ordinary RACSDC representations, pp. 132–133: Describes A_λ as a semisimple admissible module whose irreducible submodules are the finite parts of descents (Labesse) of weight-λ automorphic representations of GL_n/F, notes that after localizing at a non-Eisenstein ideal only RACSDC representations contribute, and that those meeting the ordinary part are exactly the ordinary ones.

## OL.2. The ordinary global problem, its dimension and the Hecke-valued Galois representation

The deformation side of Theorem 5.7.14 and the Galois representation over the Hecke algebra, with the two level notions the theorem needs: sufficiently small (for neatness) and sufficiently deep (so that every automorphic lift is visible at the fixed level).

**Targets:** the ordinary global problem S_{χ} of (5.7.6): Geraghty's ordinary condition above 2 over Λ_{GL_n,v}, fixed inertial characters at R, no condition elsewhere, multiplier ε^{1−n}δ^n_{F/F⁺}, and R^{T,ord} (Definition 5.7.11); the lower bound dim ≥ dim Λ = 1 + n[F⁺:ℚ] for every component of R_{S_{χ}} from the equidimensional local ring (5.7.8) and a presentation with at most n²#T + [F⁺:ℚ]n(n−1)/2 relations (Lemma 5.7.7, with the printed value of dim Λ corrected); the surjection R_{S_{χ}} ↠ T^{T,ord}_{{χ_v}}(U(l^∞), O)_m of Λ-algebras with Frobenius characteristic polynomials given by the Hecke operators (Proposition 5.7.9, with Thorne 2017 Lemma 2.4 in place of the p > 2 lemma of Clozel–Harris–Taylor); uniform local fixed vectors for all automorphic lifts of a residual representation at a place prime to 2 (Lemma 5.7.12); and sufficiently deep tame levels (Definition 5.7.13).

**Layer dependencies:** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1`, `ArithmeticGaloisRepresentations:G7`, `AutomorphicGaloisRepresentationsPartII:AG2.5`, `GlobalGaloisDeformations:G7`, `LocalGaloisDeformationRings:L7`, `LocalGaloisDeformationRings:L8`, `LocalGaloisDeformationRings:R08.2`, `PotentialAutomorphyInfrastructurePartII:PL.2`, `SmoothRepresentationsOfLocalGroups:SR.3`.

### The dyadic ordinary global deformation problem S_{χ} and R^{T,ord}

**Target:** `OrdinaryPartII.OrdinaryProblem` (definition); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/ordinary-global-problem`. Planet: *Dyadic ordinary deformation ring*.

Assume Hypothesis 5.7.1 and let π be an ordinary RACSDC automorphic representation of GL_n(𝔸_F) with ρ̄ = r̄_{π,2} : G_F → GL_n(k) absolutely irreducible (enlarging E as needed). By the dictionary of ArithmeticGaloisRepresentations G7/clozel-harris-taylor-group and Thorne 2017 Lemma 2.2 (BCGP Lemma 5.1.2), ρ̄ extends to r̄ : G_{F⁺} → 𝒢_n(k) with ν ∘ r̄ = ε̄^{1−n}δ^n_{F/F⁺} and r̄^{−1}(𝒢_n^0(k)) = G_F, unique up to 𝒢_n^0(k)-conjugacy. Let T ⊃ S_2 be a finite set of finite places of F⁺ split in F, R ⊂ T ∖ S_2, and χ_v = (χ_{v,1}, …, χ_{v,n}) characters of O^×_{F_ṽ} trivial mod ϖ for v ∈ R; assume Hypothesis 5.7.5: T contains every finite place under a ramified place of π, and for v ∈ R, ρ̄|G_{F_ṽ} is trivial and π_ṽ^{Iw(ṽ)} ≠ 0. Put S = T ∪ S_∞, Λ_v = O for v ∉ S_2 and Λ_v = Λ_{GL_n,v} = O⟦I^{ab}_{F_ṽ}(2)^n⟧ for v ∈ S_2. The global problem is S_{χ} = (F, r̄, O, ε^{1−n}δ^n_{F/F⁺}, S, {Λ_v}, {D^{χ_v}_v}_{v∈R} ∪ {D^△_v}_{v∈S_2} ∪ {Lift^□_v}_{v∈S∖(R∪S_2)}), where D^{χ_v}_v is the problem of lifts with inertial characteristic polynomial ∏_j (X − χ_{v,j}(Art^{−1}σ)^{−1}) (LocalGaloisDeformationRings R08.2/ihara-avoidance-rings-p2 (3)) and D^△_v is Geraghty's ordinary problem (LocalGaloisDeformationRings L7/ordinary-flag-scheme over L8/ordinary-coefficient-ring). Local class field theory gives ⊗̂_{v∈S_2} Λ_v ≅ Λ, so R_{S_{χ}} and R^loc_{S_{χ},T} are Λ-algebras. For R = ∅ write S^{T,ord} = S_{χ} and R^{T,ord} = R_{S_{χ}} (Definition 5.7.11).

**Construction or proof.**

1. Extend ρ̄ to r̄ by the polarization of r̄_{π,2}; uniqueness up to 𝒢_n^0(k)-conjugacy is Thorne 2017 Lemma 2.2 (it holds in residue characteristic 2, unlike CHT Lemma 2.1.4).
2. Each local problem is Ĝ_n-stable and representable (LocalGaloisDeformationRings nodes), so S_{χ} is a global problem in the sense of OL.0/lambda-polarized-deformation-problem.
3. Identify Λ_{GL_n,v} = O⟦(O^×_{F_ṽ}(2))^n⟧ through Art_{F_ṽ}; the product over v | 2 is O⟦T(l)⟧ = Λ, the weight algebra of OL.1/dyadic-ordinary-hecke-algebra.
4. Since the χ_{v,j} are trivial modulo ϖ, D^{χ_v}_v and D^1_v agree on Artinian k-algebras killed by ϖ, which gives compatible isomorphisms R^loc_{S_{χ},T}/ϖ ≅ R^loc_{S_{1},T}/ϖ and R_{S_{χ}}/ϖ ≅ R_{S_{1}}/ϖ.

**Uses.**

- BCGP25 Lemma 5.7.7, p. 133: dimension bound for R_{S_{χ}}.
- BCGP25 Theorem 5.7.14, pp. 134–139: both patched problems S_{1} and S_{χ} are instances; R^{T,ord} is the deformation side of the theorem.
- BCGP25 Proposition 7.5.10, p. 178: R^{T,ord} maps to the GSp₄ deformation ring R_S through Corollary 5.1.6, and its finiteness over Λ gives finiteness of R_S.

**API.**

- `OrdinaryPartII.OrdinaryProblem.residual` (data): The extension r̄ : G_{F⁺} → 𝒢_n(k) of ρ̄ = r̄_{π,2} with multiplier ε̄^{1−n}δ^n_{F/F⁺}, unique up to 𝒢_n^0(k)-conjugacy.
- `OrdinaryPartII.OrdinaryProblem.ring` (universal-property): R_{S_{χ}} represents deformations of type S_{χ} and is a Λ-algebra through ⊗̂_{v|2}Λ_{GL_n,v} ≅ Λ.
- `OrdinaryPartII.OrdinaryProblem.localRing` (data): R^loc_{S_{χ},T} = ⊗̂_{v∈R}R^{χ_v}_v ⊗̂ ⊗̂_{v∈S_2}R^△_v ⊗̂ ⊗̂_{v∈T∖(R∪S_2)}R^□_v.
- `OrdinaryPartII.OrdinaryProblem.modVarpi` (relation): R_{S_{χ}}/ϖ ≅ R_{S_{1}}/ϖ and R^loc_{S_{χ},T}/ϖ ≅ R^loc_{S_{1},T}/ϖ, compatibly.
- `OrdinaryPartII.OrdinaryProblem.ordRing` (constructor): R^{T,ord} := R_{S_{χ}} for R = ∅.
- `OrdinaryPartII.OrdinaryProblem.baseChange` (functoriality): For a finite CM extension F′/F with the same hypotheses, restriction gives a map R^{T′,ord}_{F′} → R^{T,ord}_F of rings over Λ_{F′} → Λ_F (the Λ-map induced by the norm on tori).

**Unit tests.**

- `OrdinaryPartII.OrdinaryProblem.mod_varpi_eq` (characterisation): If all χ_{v,j} are trivial modulo ϖ, then R_{S_{χ}}/ϖ and R_{S_{1}}/ϖ are canonically isomorphic.
- `OrdinaryPartII.OrdinaryProblem.ord_of_empty` (degenerate): For R = ∅ the problem S_{χ} is S^{T,ord}, and R^{T,ord} has no condition at the places of T ∖ S_2.
- `OrdinaryPartII.OrdinaryProblem.multiplier_even` (computation): For n = 4 the multiplier is ε^{−3}δ^4_{F/F⁺} = ε^{−3}.
- `OrdinaryPartII.OrdinaryProblem.not_unique_gl_conj` (non-example): The extension r̄ is unique up to 𝒢_n^0(k)-conjugacy but not in general up to GL_n(k)-conjugacy: the GL_n(k)-classes of extensions are a torsor under k^×/(k^×)² (BCGP Remark 5.1.3).

**Checks.**

- R_{S_{χ}}/ϖ ≅ R_{S_{1}}/ϖ.
- For n even the multiplier is ε^{1−n}, since δ^n_{F/F⁺} = 1.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0/lambda-polarized-deformation-problem`, `ArithmeticGaloisRepresentations:G7/clozel-harris-taylor-group`, `LocalGaloisDeformationRings:R08.2/ihara-avoidance-rings-p2`, `LocalGaloisDeformationRings:L7/ordinary-flag-scheme`, `LocalGaloisDeformationRings:L8/ordinary-coefficient-ring`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-ordinary-hecke-algebra`.

**Source.** BCGP25, §5.7, Hypothesis 5.7.5, (5.7.6) and Definition 5.7.11, pp. 133–134: Fixes the residual polarized representation of an ordinary RACSDC π, the sets T ⊃ S_2 and R with characters χ_v, the coefficient rings Λ_v (Λ_{GL_n,v} at 2), and defines the global problem S_{χ} with fixed-inertia conditions at R, Geraghty's ordinary condition at 2 and no condition elsewhere; R^{T,ord} is the case R = ∅. BCGP25, Lemma 5.1.2, p. 115, and §5.6.5, Proposition 5.6.6, p. 129: Extension of a polarized representation to 𝒢_n, unique up to 𝒢_n^0(k)-conjugacy; Geraghty's ordinary local problem D^△_v over Λ_{GL_n,v}.

### Every component of the ordinary deformation ring has dimension at least dim Λ

**Target:** `OrdinaryPartII.ordinaryRing_dim_ge` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/ordinary-dimension-bound`.

In the setting of OL.2/ordinary-global-problem, every irreducible component of Spec R_{S_{χ}} has dimension at least dim Λ = 1 + n[F⁺:ℚ]. More precisely, R^loc_{S_{χ},T} is equidimensional of dimension 1 + n²#T + [F⁺:ℚ]n(n+1)/2, and there is a presentation R^loc_{S_{χ},T}⟦x_1, …, x_r⟧/(f_1, …, f_{r+s}) ≅ R_{S_{χ}} with s ≤ n²#T + [F⁺:ℚ]n(n−1)/2.

**Construction or proof.**

1. Local dimensions: R^{χ_v}_v has every component of dimension n² + 1 (R08.2/ihara-avoidance-rings-p2 (3)); R^□_v for v ∤ 2 is O-flat and equidimensional of dimension n² + 1 (Shotton, Theorem 2.5, as BCGP cite it; R08.2/fixed-type-rings-rank-n (1)); R^△_v is equidimensional of dimension 1 + n² + [F⁺_v:ℚ₂]n(n+1)/2 (L7/trivial-residual-flag-ring (5) when ρ̄|G_{F_ṽ} is trivial and [F⁺_v:ℚ₂] > n(n−1)/2 + 1; the general residual case is requested from LocalGaloisDeformationRings L7). Summing gives (5.7.8).
2. Presentation: a deformation–obstruction argument as in Clozel–Harris–Taylor Corollary 2.2.12 (GlobalGaloisDeformations G7/polarized-presentation), run with Thorne's complex C^•_{𝒮,T} so that it holds for p = 2 (OL.0/dyadic-dual-selmer-group), or Balaji's Proposition 4.2.5, gives the presentation with s ≤ n²#T + [F⁺:ℚ]n(n−1)/2.
3. Each component of a quotient of R^loc⟦x_1, …, x_r⟧ by r + s elements has dimension at least dim R^loc + r − (r + s) = 1 + [F⁺:ℚ]n.

**Checks.**

- The bound is dim Λ = 1 + n[F⁺:ℚ], not 1 + n[F:ℚ] (the printed value; see sourceIssues).
- Combined with finiteness over Λ, every component of Spec R_{S_{χ}} dominates a component of Spec Λ.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/ordinary-global-problem`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0/dyadic-dual-selmer-group`, `LocalGaloisDeformationRings:R08.2/ihara-avoidance-rings-p2`, `LocalGaloisDeformationRings:L7/trivial-residual-flag-ring`, `LocalGaloisDeformationRings:R08.2/fixed-type-rings-rank-n`, `GlobalGaloisDeformations:G7/polarized-presentation`, `LocalGaloisDeformationRings:L7`.

**Source.** BCGP25, Lemma 5.7.7 and proof, pp. 133–134, with (5.7.8): Proves that every component of the global ordinary deformation ring has dimension at least dim Λ, from the equidimensionality of the completed local ring (Propositions 5.6.4, 5.6.6 and Shotton) and a presentation with the stated number of relations (CHT Corollary 2.2.12 or Balaji Proposition 4.2.5); the printed dim Λ is corrected in sourceIssues.

### The Galois representation over the dyadic ordinary Hecke algebra

**Target:** `OrdinaryPartII.dyadicHeckeGaloisRep` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/dyadic-hecke-galois-representation`. Planet: *Dyadic Hecke-valued Galois representation*.

In the setting of OL.2/ordinary-global-problem, suppose U_v is hyperspecial for every v ∉ T and U_v ⊂ ι_ṽ^{−1}Iw(ṽ) for v ∈ R. Then there is a maximal ideal m of T^{T,ord}_{{χ_v}}(U(l^∞), O) and a surjection of Λ-algebras R_{S_{χ}} → T^{T,ord}_{{χ_v}}(U(l^∞), O)_m. The corresponding representation r_m : G_{F⁺} → 𝒢_n(T^{T,ord}_{{χ_v}}(U(l^∞), O)_m), unique up to strict equivalence, is characterised by: for every finite place v ∉ T of F⁺ split as ww^c in F, r_m is unramified at w and w^c, and r_m(Frob_w) has characteristic polynomial X^n + ⋯ + (−1)^j q_w^{j(j−1)/2}T^j_w X^{n−j} + ⋯ + (−1)^n q_w^{n(n−1)/2}T^n_w.

**Construction or proof.**

1. Construct r_m as in Geraghty, Proposition 2.29 (published numbering; PL.2/ordinary-hecke-galois-representation (2)): glue the Galois representations of the ordinary constituents (OL.1/dyadic-ordinary-automorphic-dictionary) along the reduced finite-level Hecke algebras and pass to the limit.
2. The 𝒢_n-valued extension and its uniqueness up to strict equivalence use Thorne 2017 Lemma 2.4 in place of CHT Lemma 2.1.12, which needs residue characteristic > 2 (BCGP; compare Thorne 2017 Theorem 4.1).
3. The local condition at v | 2: r_m|G_{F_ṽ} factors through R^△_v, by Geraghty Corollary 3.4 (PL.2/ordinary-hecke-galois-representation (3)), checked on the dense set of classical points of OL.1/dyadic-hida-theory (3)–(4).
4. At v ∈ R the inertial characteristic polynomial is ∏_j (X − χ_{v,j}(Art^{−1}σ)^{−1}) (PL.2/ordinary-hecke-galois-representation (2)(iii)).
5. The map R_{S_{χ}} → T_m is surjective because T_m is generated by the T^j_w, which are coefficients of characteristic polynomials of r_m, and by the diamond operators, which are the image of Λ.

**Checks.**

- The map is one of Λ-algebras for the twisted Λ-structure of OL.1/dyadic-ordinary-hecke-algebra.
- A point of T_m above ℘_λ gives an ordinary RACSDC π′ of weight λ with r_{π′,2} the specialisation of r_m.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/ordinary-global-problem`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-hida-theory`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-ordinary-automorphic-dictionary`, `PotentialAutomorphyInfrastructurePartII:PL.2/ordinary-hecke-galois-representation`, `PotentialAutomorphyInfrastructurePartII:PL.2/hecke-valued-galois-representation`, `PotentialAutomorphyInfrastructurePartII:PL.2/unitary-constituent-galois-representation`.

**Source.** BCGP25, Proposition 5.7.9 and proof, p. 134: Asserts the existence of a maximal ideal m and a surjection of Λ-algebras from R_{S_{χ}} onto the localized universal ordinary Hecke algebra, characterised by Frobenius characteristic polynomials at split places outside T; proved as Geraghty Proposition 2.29 with Thorne 2017 Lemma 2.4 replacing CHT Lemma 2.1.12, and Geraghty Corollary 3.4 at the places above 2.

### Uniform local fixed vectors for automorphic lifts of a residual representation

**Target:** `OrdinaryPartII.exists_uniform_fixed_level` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/uniform-fixed-vectors`.

Let w ∤ 2 be a finite place of the CM field F and π a RACSDC automorphic representation of GL_n(𝔸_F) with residual representation r̄_{π,2}. There is a compact open subgroup U_w ⊂ GL_n(O_{F_w}), depending only on r̄_{π,2}|G_{F_w}, such that every RACSDC automorphic representation π′ of GL_n(𝔸_F) with r̄_{π′,2} ≅ r̄_{π,2} satisfies (π′_w)^{U_w} ≠ 0.

**Construction or proof.**

1. By LocalGaloisDeformationRings R08.2/fixed-type-rings-rank-n (3) (BCGP Lemma 5.6.2), there is a finite F′_w/F_w over which every lift of r̄_{π,2}|G_{F_w} becomes unipotently ramified, and Spec R^□[1/2] has finitely many components.
2. Local–global compatibility at w (AutomorphicGaloisRepresentationsPartII AG2.5/caraiani-upgrade-away-from-p-and-temperedness) identifies WD(r_{π′,2}|G_{F_w})^{F-ss} with rec(π′_w ⊗ |det|^{(1−n)/2}); π′_w is generic and tempered, so the lift r_{π′,2}|G_{F_w} is pure and lies on a single component, on which the restriction to inertia of the Weil–Deligne representation is constant (R08.2/fixed-type-rings-rank-n (2)). Hence only finitely many inertial types occur.
3. By the local Langlands correspondence these inertial types correspond to finitely many Bernstein components of GL_n(F_w) (requested from SmoothRepresentationsOfLocalGroups SR.3), and each Bernstein component is generated by its vectors fixed by a suitable compact open subgroup (SR.3/bernstein-decomposition); take U_w to be the intersection of these subgroups.
4. BCGP's own proof uses the same finiteness together with the compatibility of the local Langlands correspondence with conductors; either route gives U_w depending only on r̄_{π,2}|G_{F_w}.

**Checks.**

- U_w does not depend on π′, only on its residual representation at w.
- The conductor of one lift does not bound the conductors of all lifts; uniformity is the content.

**Prerequisites.** `LocalGaloisDeformationRings:R08.2/fixed-type-rings-rank-n`, `AutomorphicGaloisRepresentationsPartII:AG2.5/caraiani-upgrade-away-from-p-and-temperedness`, `SmoothRepresentationsOfLocalGroups:SR.3/bernstein-components`, `SmoothRepresentationsOfLocalGroups:SR.3/bernstein-decomposition`, `SmoothRepresentationsOfLocalGroups:SR.3`.

**Source.** BCGP25, Lemma 5.7.12 and proof, p. 134: States the existence of a compact open subgroup depending only on the residual representation at w that has fixed vectors in every RACSDC lift, proved from Lemma 5.6.2, local–global compatibility and the compatibility of local Langlands with conductors.

### Sufficiently deep tame level

**Target:** `OrdinaryPartII.IsSufficientlyDeep` (definition); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/sufficiently-deep-level`.

In the setting of OL.2/ordinary-global-problem, let v ∈ T ∖ S_2 and ṽ | v the chosen place. A compact open subgroup U_v ⊂ G(F⁺_v) ≅ GL_n(F_ṽ) (via ι_ṽ) is sufficiently deep if it satisfies the conclusion of OL.2/uniform-fixed-vectors for w = ṽ: every RACSDC automorphic representation π′ of GL_n(𝔸_F) with r̄_{π′,2} ≅ ρ̄ has (π′_ṽ)^{U_v} ≠ 0. A level U is sufficiently deep at T if U_v is sufficiently deep for every v ∈ T ∖ S_2.

**Construction or proof.**

1. Sufficiently deep subgroups exist by OL.2/uniform-fixed-vectors.
2. If U′_v ⊂ U_v and U_v is sufficiently deep then so is U′_v, since (π′_ṽ)^{U_v} ⊂ (π′_ṽ)^{U′_v}.

**Uses.**

- BCGP25 Theorem 5.7.14, p. 135: the reduced R = T conclusion is asserted when U_v is sufficiently deep for every v ∈ T ∖ S_2.
- BCGP25 proof of Theorem 5.7.14, p. 139: used to see that every automorphic Q̄₂-point of R^{T,ord} above some ℘_λ lies in Spec T^{T,ord}(U(l^∞))_m.

**API.**

- `OrdinaryPartII.IsSufficientlyDeep` (constructor): The predicate on compact open U_v ⊂ GL_n(F_ṽ): every RACSDC π′ with r̄_{π′,2} ≅ ρ̄ has (π′_ṽ)^{U_v} ≠ 0.
- `OrdinaryPartII.IsSufficientlyDeep.mono` (relation): If U′_v ⊂ U_v and U_v is sufficiently deep, then U′_v is sufficiently deep.
- `OrdinaryPartII.IsSufficientlyDeep.exists` (other): A sufficiently deep U_v exists and can be chosen depending only on ρ̄|G_{F_ṽ} (OL.2/uniform-fixed-vectors).
- `OrdinaryPartII.IsSufficientlyDeep.inter` (relation): The intersection of two sufficiently deep subgroups is sufficiently deep.
- `OrdinaryPartII.IsSufficientlyDeep.fixedVectors` (characterisation): If U is sufficiently deep at T, every Q̄₂-point of R^{T,ord} that is automorphic of level unramified outside T contributes to S^{ord}(U(l^∞)).

**Unit tests.**

- `OrdinaryPartII.IsSufficientlyDeep.of_le` (characterisation): Every open subgroup of a sufficiently deep U_v is sufficiently deep.
- `OrdinaryPartII.IsSufficientlyDeep.uniform_over_lifts` (computation): If π′ and π″ are two RACSDC representations with the same residual representation and different conductors at ṽ, a sufficiently deep U_v has nonzero fixed vectors in both π′_ṽ and π″_ṽ.
- `OrdinaryPartII.IsSufficientlyDeep.unramified_case` (degenerate): If every lift of ρ̄|G_{F_ṽ} is unramified (for example ρ̄(Frob_ṽ) regular semisimple after a finite extension, LocalGaloisDeformationRings R08.2/ihara-avoidance-rings-p2 (2)), then any U_v contained in the kernel of reduction modulo a sufficiently high power of ṽ is sufficiently deep, but GL_n(O_{F_ṽ}) need not be unless all lifts are unramified over F_ṽ itself.
- `OrdinaryPartII.IsSufficientlyDeep.single_conductor` (non-example): The subgroup K_1(ṽ^c) attached to the conductor c of r_{π,2}|G_{F_ṽ} for the seed π alone need not be sufficiently deep: another lift may have larger conductor at ṽ.

**Checks.**

- A sufficiently deep level sees every automorphic lift of ρ̄ that is unramified outside T and ordinary above 2, at the places of T ∖ S_2.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/uniform-fixed-vectors`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/ordinary-global-problem`.

**Source.** BCGP25, Definition 5.7.13, p. 134: Calls a compact open subgroup at a place of T away from 2 sufficiently deep if it satisfies the conclusion of Lemma 5.7.12; this is the level hypothesis of the reduced R = T statement of Theorem 5.7.14.

## OL.3. The dyadic ordinary R = T theorem

The proof of Theorem 5.7.14 in five steps. For p = 2 one cannot choose an auxiliary place at which every deformation is unramified, so BCGP use a neat auxiliary place v₁ with regular semisimple residual Frobenius, patch, produce automorphic lifts on every choice of local components by Ihara avoidance, and then remove v₁ by a solvable base change over which all those lifts are unramified at v₁.

BCGP Theorem 5.7.14 and its proof. **Targets:** the solvable preparation (F = F⁺(√−1), trivial residual representation and unipotent ramification at T, large local degrees above 2, Iwahori-fixed vectors and 2-power roots of unity at T ∖ S_2, residual image unchanged by near adequacy) and the auxiliary neat place v₁ with regular semisimple residual Frobenius (Remark 5.7.15); the patched modules H_{1,∞}, H_{χ,∞} for the unipotent and distinct-character problems, free over S_∞ = Λ⟦X_1, …, X_{q+(n²+1)#T−1}⟧ with q = h¹_{𝒮^⊥,T} − 1, and the dimension identity (5.7.17); the structure of the irreducible components of the patched rings modulo each minimal prime of Λ (the argument of Boxer–Calegari–Gee–Newton–Thorne Lemma 3.2.4); component support by Taylor's Ihara avoidance and an ordinary RACSDC lift on every choice of local components at R and above 2; removal of the auxiliary place by a second solvable base change; and the theorem: under hypotheses (1)–(6) (ordinary RACSDC residual automorphy, the splitting conditions, n[F⁺:ℚ] ≡ 0 mod 4, near adequacy, a regular semisimple element, strong residual oddness for n even), R^{T,ord} is finite over Λ, and for sufficiently deep levels (R^{T,ord})_red ≅ T^{T,ord}(U(l^∞))_m.

**Layer dependencies:** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2`, `DeformationAndDerivedPatchingAlgebra:R03.4`, `DeformationAndDerivedPatchingAlgebra:R03.5`, `DeformationAndDerivedPatchingAlgebra:R03.6`, `GlobalGaloisDeformations:R04.4`, `LocalGaloisDeformationRings:L7`, `LocalGaloisDeformationRings:R08.2`, `PotentialAutomorphyInfrastructure:PA.2`, `PotentialAutomorphyInfrastructurePartII:PL.0`, `PotentialAutomorphyInfrastructurePartII:PL.1`, `PotentialAutomorphyInfrastructurePartII:PL.3`, `PotentialAutomorphyInfrastructurePartII:PL.4`.

### Solvable preparation and the auxiliary neat place

**Target:** `OrdinaryPartII.exists_neat_preparation` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/neat-base-change-preparation`.

Let F be a CM field, n ≥ 2, and ρ̄ : G_F → GL_n(𝔽̄₂) continuous, satisfying: (1) there is an ordinary RACSDC automorphic representation π of GL_n(𝔸_F) with r̄_{π,2} ≅ ρ̄; (2) F/F⁺ is unramified at every finite place, and every place of F⁺ above 2, and every place of F⁺ lying under a place at which π is ramified, splits in F; (3) n[F⁺:ℚ] ≡ 0 mod 4; (4) ρ̄(G_F) is nearly adequate (OL.0/weak-adequacy-equivalences); (5) ρ̄(G_F) contains a regular semisimple element; (6) if n is even, the polarized pair (ρ̄, ε^{1−n}δ^n_{F/F⁺}) is strongly residually odd at some infinite place of F⁺. Let T be a finite set of finite places of F⁺, all split in F, containing the places above 2 and the places under the ramification of π; let R^{T,ord} be the ring of OL.2/ordinary-global-problem (R = ∅), a Λ-algebra, and T^{T,ord}(U(l^∞))_m the localized universal ordinary Hecke algebra of OL.1/dyadic-ordinary-hecke-algebra with the map of OL.2/dyadic-hecke-galois-representation. Then there is a solvable CM extension F′/F, linearly disjoint from the field cut out by ρ̄ over F, such that, writing T′ for the places of F′⁺ above T and replacing E by a finite extension: hypotheses (1)–(6) hold over F′ with ρ̄(G_{F′}) = ρ̄(G_F); F′ = F′⁺(√−1); ρ̄|G_{F′_ṽ} is trivial for v ∈ T′; [F′⁺_v:ℚ₂] > n(n−1)/2 + 1 for v | 2; and for v ∈ T′ ∖ S_2, π_{F′,ṽ}^{Iw(ṽ)} ≠ 0, every lift of ρ̄|G_{F′_ṽ} is unipotently ramified, and if 2^N ∥ q_v − 1 then 2^N > n and O contains a primitive 2^N-th root of unity. Moreover there are infinitely many finite places v₁ ∉ T′ of F′⁺, split in F′, with ρ̄(Frob_{ṽ₁}) regular semisimple; for such v₁ and any torsion-free compact open U_{v₁}, every level U(l^{b,c}) with that factor is sufficiently small, and Hypotheses 5.7.1 and 5.7.5 hold for T′ ∪ {v₁}.

**Construction or proof.**

1. All conditions except F′ = F′⁺(√−1) are local; choose the local extensions (trivializing ρ̄|G_{F_ṽ} at T, raising local degrees above 2, making every lift at T ∖ S_2 unipotently ramified by LocalGaloisDeformationRings R08.2/fixed-type-rings-rank-n (3) — which also gives Iwahori-fixed vectors in π — and enlarging 2-power roots of unity) and realise them by a solvable CM extension linearly disjoint from F^{ker ρ̄} (PotentialAutomorphyInfrastructurePartII PL.0/auxiliary-cm-extensions); ordinarity and the RACSDC property are preserved by solvable base change (PA.2/iota-ordinary-soluble-base-change).
2. Adjoining √−1 is a quadratic extension; since a nearly adequate group has H¹(H, k) = 0, it has no normal subgroup of index 2, so ρ̄(G_{F′}) = ρ̄(G_F) and near adequacy, the regular semisimple element and strong residual oddness persist.
3. Hypothesis (5) and Chebotarev give infinitely many split v₁ with ρ̄(Frob_{ṽ₁}) regular semisimple. For p = 2 one cannot choose v₁ so that all deformations are unramified at v₁ (the usual choice for p > 2); instead every lift is a sum of characters at v₁ (R08.2/ihara-avoidance-rings-p2 (2)), which OL.3/sacrificial-prime-removal uses to remove v₁.
4. A torsion-free U_{v₁} makes every U(l^{b,c}) sufficiently small (Definition 5.7.2), which is what Geraghty's Lemma 2.6 requires (Remark 5.7.15).

**Checks.**

- The extension does not change the residual image, so near adequacy is checked once over F.
- The auxiliary place v₁ is chosen with regular semisimple residual Frobenius; this is where hypothesis (5) is used.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0/weak-adequacy-equivalences`, `PotentialAutomorphyInfrastructurePartII:PL.0/auxiliary-cm-extensions`, `PotentialAutomorphyInfrastructurePartII:PL.0/soluble-descent`, `PotentialAutomorphyInfrastructure:PA.2/iota-ordinary-soluble-base-change`, `LocalGaloisDeformationRings:R08.2/ihara-avoidance-rings-p2`, `LocalGaloisDeformationRings:R08.2/fixed-type-rings-rank-n`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-ordinary-hecke-algebra`.

**Source.** BCGP25, Proof of Theorem 5.7.14, first two paragraphs, and Remark 5.7.15, pp. 135–136: Makes solvable CM base changes to arrange F = F⁺(√−1), trivial residual representation at T, large local degree above 2, Iwahori-fixed vectors and roots of unity at T ∖ S_2, keeping the image unchanged by near adequacy; then picks a split place v₁ with regular semisimple Frobenius and a torsion-free level there, so that the level is sufficiently small; explains that this replaces the p > 2 trick of an auxiliary place at which every deformation is unramified.

### Patched modules for the unipotent and distinct-character problems

**Target:** `OrdinaryPartII.TwoTypePatching` (construction); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/two-type-patching-data`.

In the situation produced by OL.3/neat-base-change-preparation, write T = S_2 ⊔ {v₁} ⊔ R, choose for v ∈ R pairwise distinct characters χ_{v,1}, …, χ_{v,n} of O^×_{F_ṽ} trivial mod ϖ, and let S_{1}, S_{χ} be the problems of OL.2/ordinary-global-problem. Take U_v = G(O_{F⁺_v}) at split v ∉ T, hyperspecial at inert v, U_v = Iw(ṽ) for v ∈ R, U_{v₁} torsion-free. Let m₁ ⊂ T^{T,ord}_{{1}}(U(l^∞), O) correspond to ρ̄ and m_χ the induced ideal (S^{ord}_{0,{χ_v}}(U(l^∞), k) = S^{ord}_{0,{1}}(U(l^∞), k)), and H_χ, H_1 the Pontryagin duals of the localized ordinary forms with E/O coefficients, so H_χ/ϖ ≅ H_1/ϖ. Put q = h¹_{𝒮^⊥,T} − 1, g = q + #T − 1 − [F⁺:ℚ]n(n−1)/2, S_∞ = Λ⟦X_1, …, X_{q+(n²+1)#T−1}⟧ with augmentation ideal a_∞, and R_{1,∞} = R^loc_{S_{1},T}⟦Y_1, …, Y_g⟧, R_{χ,∞} = R^loc_{S_{χ},T}⟦Y_1, …, Y_g⟧. The patching data are: CNL_Λ-maps S_∞ → R_{1,∞} and S_∞ → R_{χ,∞}; an R_{1,∞}-module H_{1,∞} and an R_{χ,∞}-module H_{χ,∞}, each finite free over S_∞; surjections R_{·,∞} ↠ R_{S_{·}} of R^loc-algebras factoring through R_{·,∞}/a_∞; isomorphisms H_{·,∞}/a_∞ ≅ H_{·} compatible with these surjections; and compatible identifications of all these data for 1 and χ modulo ϖ. Moreover dim R_{1,∞} = dim R_{χ,∞} = [F⁺:ℚ]n + (n²+1)#T + q = dim S_∞, so depth_{R_{·,∞}} H_{·,∞} = dim R_{·,∞} and the support of H_{·,∞} in Spec R_{·,∞} is a union of irreducible components.

**Construction or proof.**

1. Taylor–Wiles data: by Thorne 2017 Proposition 2.21 with adequacy relaxed to near adequacy (PL.3/taylor-wiles-primes-two-adic, PL.4/relaxed-adequacy; BCGP Proposition 5.5.6), for each N there are data (Q_N, (α_v)) of level N with #Q_N = q and R^loc_{S_{·},T}⟦X_1, …, X_g⟧ ↠ R^T_{S_{·,Q_N}}. The hypotheses (i)–(iv) of Proposition 5.5.6 hold: all liftings at the infinite places with χ(c_v) = −1, F = F⁺(√−1), strong residual oddness, near adequacy. One dual Selmer class always survives (OL.0/unavoidable-dual-selmer-class), whence q = h¹ − 1.
2. Auxiliary levels at Q_N with Δ_{Q_N} = ∏_{v∈Q_N} k(v)^×(2) acting by diamond operators (PL.3/taylor-wiles-level-structures specialized to 2); the Hecke modules at level Q_N are free over Λ[Δ_{Q_N}] by sufficient smallness (OL.1/dyadic-hida-theory), and the Galois representations over the Taylor–Wiles Hecke algebras come from OL.2/dyadic-hecke-galois-representation at level Q_N.
3. Patch as in Thorne 2012 Theorem 8.6 (the model of PL.3/ordinary-r-equals-t), using Proposition 5.5.6 in place of Thorne 2012 Proposition 4.4; the general patching statement is DeformationAndDerivedPatchingAlgebra R03.5/balanced-modules-and-module-patching with zero defect.
4. Dimensions: by OL.2/ordinary-dimension-bound (5.7.8), dim R_{·,∞} = 1 + n²#T + [F⁺:ℚ]n(n+1)/2 + g = [F⁺:ℚ]n + (n²+1)#T + q, which is dim S_∞ = dim Λ + q + (n²+1)#T − 1.
5. Since H_{·,∞} is finite free over S_∞, depth_{R_∞}H_∞ ≥ depth_{S_∞}H_∞ = dim S_∞ = dim R_∞, so H_∞ is maximal Cohen–Macaulay and its support is a union of components (Taylor 2008 Lemma 2.3; R03.6/nearly-faithful-and-component-support-conclusions, R03.5/kisin-patching-criterion).

**Uses.**

- BCGP25 proof of Theorem 5.7.14, pp. 137–138: support of the patched modules is the source of all automorphy conclusions.
- BCGP25 proof of Theorem 5.7.14, p. 138: repeated over the base change L to remove the auxiliary place.

**API.**

- `OrdinaryPartII.TwoTypePatching.patchedModule_free` (characterisation): H_{1,∞} and H_{χ,∞} are finite free S_∞-modules.
- `OrdinaryPartII.TwoTypePatching.augmentation` (relation): H_{·,∞}/a_∞ ≅ H_{·} compatibly with R_{·,∞}/a_∞ → R_{S_{·}}.
- `OrdinaryPartII.TwoTypePatching.modVarpi` (relation): The data for 1 and for χ are identified modulo ϖ, compatibly with R_{S_{χ}}/ϖ ≅ R_{S_{1}}/ϖ.
- `OrdinaryPartII.dyadic_patched_dimension` (relation): dim R_{1,∞} = dim R_{χ,∞} = [F⁺:ℚ]n + (n²+1)#T + q = dim S_∞.
- `OrdinaryPartII.TwoTypePatching.support_union_components` (characterisation): Supp_{R_{·,∞}} H_{·,∞} is a union of irreducible components of Spec R_{·,∞}.
- `OrdinaryPartII.TwoTypePatching.numTW` (data): #Q_N = q = h¹_{𝒮^⊥,T} − 1 and g = q + #T − 1 − [F⁺:ℚ]n(n−1)/2.

**Unit tests.**

- `OrdinaryPartII.TwoTypePatching.dim_example` (computation): For n = 2, [F⁺:ℚ] = 2, #T = 3 and q = 5: g = 5 + 3 − 1 − 2 = 5, dim R_∞ = 1 + 12 + 6 + 5 = 24 and dim S_∞ = (1 + 4) + 5 + 15 − 1 = 24.
- `OrdinaryPartII.TwoTypePatching.empty_Q` (degenerate): If h¹_{𝒮^⊥,T} = 1 then q = 0, no Taylor–Wiles primes are added and S_∞ is a power series ring over Λ in (n²+1)#T − 1 framing variables.
- `OrdinaryPartII.TwoTypePatching.p_odd_count` (compatibility): For an odd prime the corresponding construction (PotentialAutomorphyInfrastructurePartII PL.3/ordinary-r-equals-t, after Thorne 2012 Theorem 8.6) kills the whole dual Selmer group, so the number of Taylor–Wiles primes is h¹ rather than h¹ − 1; the dyadic count differs exactly by the class of OL.0/unavoidable-dual-selmer-class.
- `OrdinaryPartII.TwoTypePatching.not_all_killed` (non-example): Using q = h¹_{𝒮^⊥,T} Taylor–Wiles primes, as for p odd, is impossible at p = 2 for large level (OL.0/unavoidable-dual-selmer-class), and the dimension count would then give dim S_∞ = dim R_∞ + 1, incompatible with a nonzero S_∞-free R_∞-module.

**Checks.**

- dim R_{1,∞} = dim R_{χ,∞} = dim S_∞.
- The number of Taylor–Wiles variables is q = h¹_{𝒮^⊥,T} − 1, one fewer than for p odd.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/neat-base-change-preparation`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.0/unavoidable-dual-selmer-class`, `PotentialAutomorphyInfrastructurePartII:PL.3/taylor-wiles-primes-two-adic`, `PotentialAutomorphyInfrastructurePartII:PL.4/relaxed-adequacy`, `PotentialAutomorphyInfrastructurePartII:PL.3/taylor-wiles-level-structures`, `PotentialAutomorphyInfrastructurePartII:PL.3/ordinary-r-equals-t`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-hida-theory`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/dyadic-hecke-galois-representation`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/ordinary-dimension-bound`, `DeformationAndDerivedPatchingAlgebra:R03.5/balanced-modules-and-module-patching`, `DeformationAndDerivedPatchingAlgebra:R03.5/kisin-patching-criterion`, `DeformationAndDerivedPatchingAlgebra:R03.6/nearly-faithful-and-component-support-conclusions`.

**Source.** BCGP25, Proof of Theorem 5.7.14, pp. 136–137, with (5.7.16)–(5.7.17): Defines the two problems with trivial and with distinct characters at R, the ideals m₁ and m_χ, the dual Hecke modules H₁ and H_χ, the integers q and g, the power series rings S_∞, R_{1,∞}, R_{χ,∞}, and lists the data produced by the standard patching argument of Thorne 2012 Theorem 8.6 with Proposition 5.5.6, the dimension identity and the consequence that supports are unions of components.

### Irreducible components of the patched deformation rings

**Target:** `OrdinaryPartII.patched_components_bij` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/patched-component-structure`.

In the situation of OL.3/two-type-patching-data, for each minimal prime Q of Λ: (1) the generic points of R_{χ,∞}/Q and R_{1,∞}/Q have characteristic 0; (2) the irreducible components of Spec R_{χ,∞}/Q and of Spec R_{1,∞}/Q biject with products over v ∈ R ∪ {v₁} of irreducible components C_v of the corresponding local rings; (3) the irreducible components of Spec R_{χ,∞}/(Q, ϖ) = Spec R_{1,∞}/(Q, ϖ) biject with products over v ∈ R ∪ {v₁} of irreducible components C̄_v of the special fibres of the local rings; (4) the irreducible components of Spec R_{χ,∞}/Q biject with those of Spec R^□_{v₁}; (5) for each component C̄ = ⊗C̄_v of Spec R_{1,∞}/(Q, ϖ) there are components C_v of Spec R^1_v (v ∈ R) and components C^1_{v₁}, …, C^s_{v₁} of Spec R^□_{v₁} (s ≥ 1) such that the components of Spec R_{1,∞}/Q generalizing C̄ are exactly the C^i_{v₁} ⊗ ⊗_{v∈R} C_v.

**Construction or proof.**

1. Components of a completed tensor product of local rings whose components are geometrically irreducible and of characteristic 0 are products of local components, for the generic and special fibres (BLGHT11 Lemma 3.3 as used in Boxer–Calegari–Gee–Newton–Thorne Lemma 3.2.4; DeformationAndDerivedPatchingAlgebra R03.4/completed-tensor-domains-and-components); power series variables do not change this.
2. Above 2, R^△_v/Q is geometrically irreducible with generically reduced special fibre (L7/trivial-residual-flag-ring (5), BCGP Proposition 5.6.6 (3)), so the places above 2 contribute a single component for each Q.
3. At v ∈ R, R^{χ_v}_v is irreducible with characteristic-0 generic point, and every prime of R^1_v minimal over ϖ contains a unique minimal prime (R08.2/ihara-avoidance-rings-p2 (3)); R^1_v/ϖ = R^{χ_v}_v/ϖ.
4. At v₁ the lifting ring has finitely many components, all of characteristic 0 (R08.2/fixed-type-rings-rank-n). Assemble (1)–(5) exactly as in Boxer–Calegari–Gee–Newton–Thorne Lemma 3.2.4, using R03.6/completion-generic-special-components for the unique generalizations.

**Checks.**

- Each generic point of the special fibre of R_{1,∞}/Q generalizes to components that differ only in their v₁-factor.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/two-type-patching-data`, `LocalGaloisDeformationRings:R08.2/ihara-avoidance-rings-p2`, `LocalGaloisDeformationRings:L7/trivial-residual-flag-ring`, `LocalGaloisDeformationRings:R08.2/fixed-type-rings-rank-n`, `DeformationAndDerivedPatchingAlgebra:R03.4/completed-tensor-domains-and-components`, `DeformationAndDerivedPatchingAlgebra:R03.6/completion-generic-special-components`.

**Source.** BCGP25, Proof of Theorem 5.7.14, list (1)–(5), p. 137: States the five properties of the components of the patched rings modulo a minimal prime Q of Λ, deduced from Propositions 5.6.4 and 5.6.6 by the argument of [BCG+25, Lemma 3.2.4]. BCGNT25, Lemma 3.2.4 and proof, pp. 33–34: The model statement: equidimensionality of the completed local deformation ring, unique generalization of special-fibre generic points, bijection on components when the characters at R are distinct, and the comparison of special-fibre components; components of completed tensor products are products of local components.

### Component support by Ihara avoidance and automorphic points on every local component

**Target:** `OrdinaryPartII.exists_automorphic_on_components` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/ihara-avoidance-support`. Planet: *Ihara avoidance support*.

In the situation of OL.3/two-type-patching-data: (a) for every set X of irreducible components C_v of Spec R^1_v (v ∈ R) there is an irreducible component C_{X,v₁} of Spec R^□_{v₁} such that C_{X,v₁} ⊗ ⊗_{v∈R} C_v lies in the support of H_{1,∞}; the corresponding quotient R^loc_X of R^loc_{S_{1},T} defines R_X = R_{S_{1}} ⊗_{R^loc_{S_{1},T}} R^loc_X, Spec R_X is contained in the support of H_1, (R_X)_red is a quotient of T^{T,ord}_{{1}}(U(l^∞), O)_{m₁}, and R_X is a finite Λ-algebra; (b) for every choice Y of irreducible components C_v of the local rings at v ∈ R ∪ S_2 there is an ordinary RACSDC automorphic representation π_Y of GL_n(𝔸_F) with r̄_{π_Y,2} ≅ ρ̄, r_{π_Y,2} unramified at every place not above T, and r_{π_Y,2}|G_{F_ṽ} lying on C_v and on no other component for each v ∈ R ∪ S_2.

**Construction or proof.**

1. The existence of π gives a nonempty support of H_{1,∞}; by the identification modulo ϖ the support of H_{χ,∞} is nonempty, and by (4) of OL.3/patched-component-structure it is a union of components of R_{χ,∞}/Q, each indexed by a component of R^□_{v₁}; by (5) and the mod-ϖ identification (Taylor's Ihara avoidance) every product C_{X,v₁} ⊗ ⊗C_v for a suitable C_{X,v₁} lies in the support of H_{1,∞}.
2. Then Spec R_X ⊂ Supp H_1, so (R_X)_red is a quotient of the Hecke algebra, which is finite over Λ (OL.1/dyadic-hida-theory); R_X is finite over Λ by topological Nakayama, since R_X/m_Λ is Noetherian of dimension 0 (R03.4/finiteness-of-deformation-rings-criteria).
3. By OL.2/ordinary-dimension-bound, Spec R_X → Spec Λ/Q is dominant for a minimal prime Q; choose a weight λ with R_X/℘_λ a nonzero finite O-algebra of dimension ≥ 1, which has a ℚ̄₂-point (R03.4/characteristic-zero-points-from-finiteness-and-dimension); it is a point of the Hecke algebra, hence (OL.1/dyadic-hida-theory (4), OL.1/dyadic-ordinary-automorphic-dictionary) comes from an ordinary RACSDC π_Y of weight λ.
4. Repeat for every minimal prime Q (which runs through the components at the places above 2). The local representations of π_Y lie on the prescribed components and on no other, by genericity of π_{Y,ṽ} (BLGGT Lemma 1.3.2(1); PotentialAutomorphyInfrastructurePartII PL.1/generic-smooth-points).

**Checks.**

- Every choice of local components at R ∪ S_2 is realised by an automorphic lift of ρ̄.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/patched-component-structure`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/two-type-patching-data`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/ordinary-dimension-bound`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-hida-theory`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-ordinary-automorphic-dictionary`, `DeformationAndDerivedPatchingAlgebra:R03.4/finiteness-of-deformation-rings-criteria`, `DeformationAndDerivedPatchingAlgebra:R03.4/characteristic-zero-points-from-finiteness-and-dimension`, `PotentialAutomorphyInfrastructurePartII:PL.1/generic-smooth-points`, `DeformationAndDerivedPatchingAlgebra:R03.6/nearly-faithful-and-component-support-conclusions`.

**Source.** BCGP25, Proof of Theorem 5.7.14, from 'Fix for the moment a minimal prime Q' to the existence of π_Y, pp. 137–138: Uses the nonempty support, the mod-ϖ comparison of the two patched modules and the component properties to put a full product of local components in the support, deduces finiteness of R_X over Λ, and uses the dimension bound and (5.7.4) to produce an ordinary RACSDC π_Y on any prescribed collection of local components at R and above 2, unique on each by genericity.

### Removal of the auxiliary place by a second solvable base change

**Target:** `OrdinaryPartII.sacrificial_removal` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/sacrificial-prime-removal`.

In the situation of OL.3/ihara-avoidance-support, there is a solvable CM extension L/F, linearly disjoint from F^{ker ρ̄} over F, such that for every choice Y and every place w₁ of L⁺ above v₁, r_{π_Y,2}|G_{L_{w̃₁}} is unramified. Over L, with R′ the places of L⁺ above R, a split place v′₁ ∉ R′ ∪ S_2(L⁺) of L⁺ with ρ̄(Frob_{ṽ′₁}) regular semisimple, and T′ = S_2(L⁺) ∪ R′ ∪ {v′₁}, the patched module H′_{1,∞} for L has support containing every component C′_Y (the unramified component at v′₁ and the images of the components of Y elsewhere). Let R^loc_{L/F,T′} be the quotient of R^loc_{S_{1},T′} cut out by the union of the C′_Y and R′_{L/F,T′} = R′_{S_{1}} ⊗_{R^loc_{S_{1},T′}} R^loc_{L/F,T′}. Then Spec R′_{L/F,T′} lies in the support of H′_1, (R′_{L/F,T′})_red is a quotient of T^{T′,ord}_{{1}}(U(l^∞), O)_{m₁} over L, every O-point of R′_{L/F,T′} factors through this Hecke algebra, and R′_{L/F,T′} is a finite Λ′-algebra.

**Construction or proof.**

1. Every lift of ρ̄|G_{F_{ṽ₁}} is a direct sum of characters (ρ̄(Frob_{ṽ₁}) regular semisimple; R08.2/ihara-avoidance-rings-p2 (2), BCGP Lemma 5.6.3), so there is a finite extension of F_{ṽ₁} over which all lifts, in particular all r_{π_Y,2}, become unramified; realise it by a solvable CM L/F disjoint from F^{ker ρ̄} (PL.0/auxiliary-cm-extensions).
2. Repeat the patching of OL.3/two-type-patching-data over L with T′ = S_2(L⁺) ∪ R′ ∪ {v′₁} (the printed T′ omits S_2(L⁺); see sourceIssues).
3. The base changes of the π_Y (PA.2/iota-ordinary-soluble-base-change) show that each C′_Y is in the support of H′_{1,∞}, since a support that is a union of components containing a point lying on a single component contains that component.
4. Conclude as in OL.3/ihara-avoidance-support: the reduced quotient is a Hecke quotient, hence finite over Λ′.

**Checks.**

- After the second base change no deformation condition at an auxiliary place is needed, because all relevant lifts are unramified there.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/ihara-avoidance-support`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/two-type-patching-data`, `LocalGaloisDeformationRings:R08.2/ihara-avoidance-rings-p2`, `PotentialAutomorphyInfrastructurePartII:PL.0/auxiliary-cm-extensions`, `PotentialAutomorphyInfrastructure:PA.2/iota-ordinary-soluble-base-change`.

**Source.** BCGP25, Proof of Theorem 5.7.14, from 'By Lemma 5.6.3' to the finiteness of R′_{L/F,T′}, p. 138: Chooses a solvable CM extension making all the automorphic lifts unramified above the auxiliary place, repeats the patching over it with a new auxiliary place, and shows that the union of the components C′_Y lies in the support, so the corresponding quotient of the deformation ring has reduced quotient a Hecke algebra and is finite over the weight algebra.

### Finiteness of the dyadic ordinary deformation ring (Theorem 5.7.14, first part)

**Target:** `OrdinaryPartII.ordinaryRing_finite` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/dyadic-ordinary-finiteness`. Planet: *Dyadic ordinary finiteness theorem*.

Let F be a CM field, n ≥ 2, and ρ̄ : G_F → GL_n(𝔽̄₂) continuous, satisfying: (1) there is an ordinary RACSDC automorphic representation π of GL_n(𝔸_F) with r̄_{π,2} ≅ ρ̄; (2) F/F⁺ is unramified at every finite place, and every place of F⁺ above 2, and every place of F⁺ lying under a place at which π is ramified, splits in F; (3) n[F⁺:ℚ] ≡ 0 mod 4; (4) ρ̄(G_F) is nearly adequate (OL.0/weak-adequacy-equivalences); (5) ρ̄(G_F) contains a regular semisimple element; (6) if n is even, the polarized pair (ρ̄, ε^{1−n}δ^n_{F/F⁺}) is strongly residually odd at some infinite place of F⁺. Let T be a finite set of finite places of F⁺, all split in F, containing the places above 2 and the places under the ramification of π; let R^{T,ord} be the ring of OL.2/ordinary-global-problem (R = ∅), a Λ-algebra, and T^{T,ord}(U(l^∞))_m the localized universal ordinary Hecke algebra of OL.1/dyadic-ordinary-hecke-algebra with the map of OL.2/dyadic-hecke-galois-representation. Then R^{T,ord} is a finite Λ-algebra.

**Construction or proof.**

1. Prepare F′ (OL.3/neat-base-change-preparation), patch over F′, and remove the auxiliary place over a further solvable L (OL.3/sacrificial-prime-removal), so that R′_{L/F,T′} is finite over Λ′.
2. Restriction to G_L defines a commutative square Λ′ → R′_{L/F,T′} → R^{T,ord} over Λ′ → Λ. The restriction of a lift of type S^{T,ord} lies on the union of the C′_Y: above v′₁ it is unramified (v′₁ lies outside T), above 2 it is ordinary, and at the places of R′ it is unipotently ramified because F′ was chosen so that every lift of ρ̄|G_{F_ṽ}, v ∈ T ∖ S_2, becomes unipotently ramified over F′ (BCGP Lemma 5.6.2; this condition is left implicit in the source, see sourceIssues). The map R′_{L/F,T′} → R^{T,ord} is finite: this is BLGGT Lemma 1.2.3(1) for p = 2, whose proof is unchanged once CHT Lemma 2.1.12 is replaced by Thorne 2017 Lemma 2.4 (compare GlobalGaloisDeformations R04.4/restriction-finiteness).
3. Hence R^{T,ord} is finite over Λ′ and so over Λ (R03.4/finiteness-of-deformation-rings-criteria).

**Checks.**

- Finiteness holds with no level hypothesis at T ∖ S_2.
- It is the input BCGP Proposition 7.5.10 uses at p = 2, through the finite map R^{T,ord} → R_S of GSp₄ deformation rings.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/sacrificial-prime-removal`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/neat-base-change-preparation`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/ordinary-global-problem`, `GlobalGaloisDeformations:R04.4/restriction-finiteness`, `DeformationAndDerivedPatchingAlgebra:R03.4/finiteness-of-deformation-rings-criteria`.

**Source.** BCGP25, Theorem 5.7.14 (first assertion) and the end of its proof, pp. 134–135 and 139: States that R^{T,ord} is a finite Λ-algebra under hypotheses (1)–(6) and proves it from the commutative square with R′_{L/F,T′} and the finiteness of restriction (BLGGT Lemma 1.2.3(1) with Thorne 2017 Lemma 2.4).

### The dyadic ordinary reduced R = T theorem (Theorem 5.7.14)

**Target:** `OrdinaryPartII.ordinary_R_red_eq_T` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/dyadic-ordinary-r-equals-t`. Planet: *Dyadic ordinary R = T theorem*.

Let F be a CM field, n ≥ 2, and ρ̄ : G_F → GL_n(𝔽̄₂) continuous, satisfying: (1) there is an ordinary RACSDC automorphic representation π of GL_n(𝔸_F) with r̄_{π,2} ≅ ρ̄; (2) F/F⁺ is unramified at every finite place, and every place of F⁺ above 2, and every place of F⁺ lying under a place at which π is ramified, splits in F; (3) n[F⁺:ℚ] ≡ 0 mod 4; (4) ρ̄(G_F) is nearly adequate (OL.0/weak-adequacy-equivalences); (5) ρ̄(G_F) contains a regular semisimple element; (6) if n is even, the polarized pair (ρ̄, ε^{1−n}δ^n_{F/F⁺}) is strongly residually odd at some infinite place of F⁺. Let T be a finite set of finite places of F⁺, all split in F, containing the places above 2 and the places under the ramification of π; let R^{T,ord} be the ring of OL.2/ordinary-global-problem (R = ∅), a Λ-algebra, and T^{T,ord}(U(l^∞))_m the localized universal ordinary Hecke algebra of OL.1/dyadic-ordinary-hecke-algebra with the map of OL.2/dyadic-hecke-galois-representation. If moreover U_v is sufficiently deep (OL.2/sufficiently-deep-level) for every v ∈ T ∖ S_2, then the surjection R^{T,ord} → T^{T,ord}(U(l^∞))_m of OL.2/dyadic-hecke-galois-representation has nilpotent kernel, so (R^{T,ord})_red ≅ T^{T,ord}(U(l^∞))_m.

**Construction or proof.**

1. By OL.3/dyadic-ordinary-finiteness and OL.2/ordinary-dimension-bound every component of Spec R^{T,ord} dominates a component of Spec Λ; hence the ℚ̄₂-points above the primes ℘_λ (dense in Spec Λ by OL.1/dyadic-hida-theory (3)) are dense in Spec R^{T,ord}.
2. Each such point is automorphic: its restriction to G_L is a point of R′_{L/F,T′}, which factors through the Hecke algebra over L (OL.3/sacrificial-prime-removal), so it is the Galois representation of an ordinary RACSDC representation over L by (5.7.4); by solvable descent (PL.0/soluble-descent) it is automorphic over F.
3. Since U_v is sufficiently deep for v ∈ T ∖ S_2, the corresponding automorphic representation has nonzero fixed vectors at level U(l^{1,1}), so by (5.7.4) the point lies in Spec T^{T,ord}(U(l^∞))_m.
4. A closed subset of Spec R^{T,ord} containing a dense set of points is everything; so the kernel of R^{T,ord} → T_m is contained in every prime, hence nilpotent (R03.6/faithful-quotient-ring-identification).

**Checks.**

- Without the depth hypothesis the theorem still gives finiteness, but automorphic points may need a smaller level than U.
- Downstream, Proposition 7.5.10 uses only the components through the point q of interest (see the corrected statement recorded for its proof).

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/dyadic-ordinary-finiteness`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/ordinary-dimension-bound`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/sufficiently-deep-level`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.2/dyadic-hecke-galois-representation`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.1/dyadic-hida-theory`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.3/sacrificial-prime-removal`, `PotentialAutomorphyInfrastructurePartII:PL.0/soluble-descent`, `DeformationAndDerivedPatchingAlgebra:R03.6/faithful-quotient-ring-identification`.

**Source.** BCGP25, Theorem 5.7.14 (second assertion) and the last paragraph of its proof, pp. 135 and 139: Under sufficiently deep levels, the map from R^{T,ord} to the localized universal ordinary Hecke algebra has nilpotent kernel: components dominate Λ, points above the ℘_λ are dense, each is automorphic by base change to L and (5.7.4), and lies at the given level by depth.

## OL.4. GSp₄ deformation problems, reasonable residual images and the selected ordinary problem

The GSp₄ side for p > 2. Whitmore's Taylor–Wiles places need only semisimple Frobenius, which allows the weaker big-image condition 'GSp₄-reasonable' in place of BCGP21's vastness; the ordinary condition at p is the flag-image ring R^△_v, which is not residually p-distinguished in general, so the problem is cut down to the component through the automorphic seed.

The symplectic side for p > 2. **Targets:** GSp₄ deformation problems with similitude ε^{−1} over a weight algebra, strict equivalence by ĜSp₄, T-framed rings of relative dimension 11#T − 1 and the framing ring 𝒯 with R^T_𝒮 ≅ R_𝒮 ⊗̂_Λ 𝒯 (BCGP §6.1); GSp₄-reasonable residual representations (Whitmore Definition 3.19: no 𝔰𝔭₄^∨-invariants and a semisimple-element trace condition on simple submodules over F(ζ_{p^n}) for large n, with H¹ = 0 when ζ_p lies in the field cut out by 𝔰𝔭₄^∨), implied by vastness; Taylor–Wiles data with semisimple Frobenius killing the dual Selmer group for reasonable images (Whitmore Proposition 3.18); ordinary GSp₄ seed data (Hypothesis 6.3.1: reasonable, tidy, ordinary of weight 2 at p with compatible stabilizations, the seed point on a unique component of R^△_v, trivial residual representation with q_v ≡ 1 mod p (mod 9 if p = 3) and Iwahori vectors at R, and the auxiliary place w₀); the problems S_1 and S_{1,π} with Geraghty-style flag-image conditions at p and the component through the seed; and the Galois representation over the GSp₄ Hida–Hecke algebra with surjection R_{S_1} ↠ T_{S_1} (Whitmore Theorem 7.8 with the flag-image condition, using only O_{E′}-points).

**Layer dependencies:** `AbelianSurfacesPotentialModularity:AP.0`, `AbelianSurfacesPotentialModularity:AP.1`, `AbelianSurfacesPotentialModularity:AP.2`, `ArithmeticGaloisRepresentations:G7`, `DeformationAndDerivedPatchingAlgebra:R03.1`, `DeformationAndDerivedPatchingAlgebra:R03.6`, `GlobalGaloisDeformations:R04.2`, `GlobalGaloisDeformations:R04.3`, `LocalGaloisDeformationRings:L7`, `LocalGaloisDeformationRings:R08.1`, `LocalGaloisDeformationRings:R08.2`, `ModularityAndLanglandsExtensions:ML.4`.

### GSp₄ deformation problems over a weight algebra and the framing ring

**Target:** `OrdinaryPartII.GSp4Problem` (definition); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/gsp4-lambda-deformation-problem`.

Let F⁺ be totally real, p a prime, O, k as before, S_p the places above p, and ρ̄ : G_{F⁺} → GSp₄(k) continuous and absolutely irreducible with similitude ν ∘ ρ̄ = ε̄^{−1}. Write ad ρ̄ = 𝔤𝔰𝔭₄ (dimension 11) and ad⁰ρ̄ = 𝔰𝔭₄ (dimension 10) with the adjoint action. Let S ⊃ S_p be a finite set of finite places containing those where ρ̄ ramifies; for v ∈ S fix Λ_v ∈ CNL_O and put Λ = ⊗̂_{v∈S} Λ_v. A lift of ρ̄|G_{F⁺_v} to A ∈ CNL_{Λ_v} is a continuous ρ : G_{F⁺_v} → GSp₄(A) reducing to ρ̄ with ν ∘ ρ = ε^{−1}; the lifting functor D^□_v is represented by R^□_v, and D^□_v(k[ε]) ≅ Z¹(F⁺_v, ad⁰ρ̄), two liftings being ĜSp₄(k[ε])-conjugate iff their images in H¹(F⁺_v, ad ρ̄) agree. A local deformation problem is a subfunctor D_v represented by a quotient R_v of R^□_v and stable under ĜSp₄(A) = ker(GSp₄(A) → GSp₄(k)). A global problem is 𝒮 = (ρ̄, S, {Λ_v}, {D_v}); lifts ρ : G_{F⁺,S} → GSp₄(A), A ∈ CNL_Λ, with ν ∘ ρ = ε^{−1} are of type 𝒮 if every ρ|G_{F⁺_v} ∈ D_v(A); strict equivalence is ĜSp₄(A)-conjugacy; T-framed lifts (ρ, (γ_v)_{v∈T}) are taken up to (aρa^{−1}, (aγ_v)). D_𝒮 and D^T_𝒮 are represented by R_𝒮 and R^T_𝒮. For T ≠ ∅, D^T_𝒮 → D_𝒮 is a torsor under (∏_{v∈T} ĜSp₄)/Ĝ_m, R^T_𝒮 is formally smooth over R_𝒮 of relative dimension 11#T − 1, and with the framing ring 𝒯 = Λ⟦x_1, …, x_{11#T−1}⟧ (the coordinate ring of (∏_{v∈T}ĜSp₄)/Ĝ_m over Λ) a choice of representative ρ_𝒮 of the universal deformation gives R^T_𝒮 ≅ R_𝒮 ⊗̂_Λ 𝒯. When Λ_v = O off T, R^loc_{𝒮,T} = ⊗̂_{v∈T} R_v maps to R^T_𝒮.

**Construction or proof.**

1. Local representability is LocalGaloisDeformationRings R08.1/g-valued-framed-ring with fixed multiplier; the description of D^□_v(k[ε]) by 1-cocycles is ρ(σ) = (1 + εφ(σ))ρ̄(σ).
2. Global representability of D_𝒮 uses absolute irreducibility of ρ̄ (the centralizer of the image in ĜSp₄ is Ĝ_m), as for GL_n in GlobalGaloisDeformations R04.3/global-deformation-type.
3. The torsor statement and R^T_𝒮 ≅ R_𝒮 ⊗̂_Λ 𝒯 follow as in R04.2/framed-unframed-comparison, with dim ĜSp₄ = 11 and the diagonal Ĝ_m acting trivially.

**Uses.**

- BCGP25 §6.3, p. 147: the problems S_1 and S_{1,π} of Theorem 6.3.4 are instances.
- BCGP25 proof of Theorem 6.3.4, p. 148: the power series ring S_∞ is built over 𝒯 ⊗ Λ_{GSp₄,F⁺}.
- BCGP25 §7 and Proposition 7.5.10, pp. 151–178: the multiplicity-one deformation problem (7.1.5) is of this form.

**API.**

- `OrdinaryPartII.GSp4Problem.deformationFunctor` (constructor): D_𝒮 : CNL_Λ → Set, ĜSp₄-conjugacy classes of lifts of type 𝒮 with similitude ε^{−1}.
- `OrdinaryPartII.GSp4Problem.universalRing` (universal-property): R_𝒮 represents D_𝒮 and R^T_𝒮 represents D^T_𝒮 (ρ̄ absolutely irreducible).
- `OrdinaryPartII.GSp4Problem.tangent` (characterisation): D^□_v(k[ε]) ≅ Z¹(F⁺_v, ad⁰ρ̄); conjugacy classes correspond to images in H¹(F⁺_v, ad ρ̄).
- `OrdinaryPartII.GSp4Problem.framingRing` (data): 𝒯 = Λ⟦x_1, …, x_{11#T−1}⟧, the coordinate ring of (∏_{v∈T}ĜSp₄)/Ĝ_m.
- `OrdinaryPartII.GSp4Problem.framed_iso` (equivalence): A representative of the universal deformation gives R^T_𝒮 ≅ R_𝒮 ⊗̂_Λ 𝒯.
- `OrdinaryPartII.GSp4Problem.localToGlobal` (data): R^loc_{𝒮,T} → R^T_𝒮, (ρ, (γ_v)) ↦ (γ_v^{−1}ρ|G_{F⁺_v}γ_v)_v.
- `OrdinaryPartII.GSp4Problem.toGL4` (compatibility): Composing with the standard representation GSp₄ → GL₄ maps D_𝒮 to the GL₄ deformation functor of GlobalGaloisDeformations R04.3 with the induced conditions.

**Unit tests.**

- `OrdinaryPartII.GSp4Problem.framing_one` (computation): For #T = 1, 𝒯 = Λ⟦x_1, …, x_{10}⟧ and R^T_𝒮 is formally smooth of relative dimension 10 over R_𝒮.
- `OrdinaryPartII.GSp4Problem.framed_empty` (degenerate): For T = ∅, R^T_𝒮 = R_𝒮.
- `OrdinaryPartII.GSp4Problem.dim_count` (computation): dim ad ρ̄ = 11 and dim ad⁰ρ̄ = 10, so for #T = 3 the framing ring has 32 variables over Λ.
- `OrdinaryPartII.GSp4Problem.not_gl4_framing` (non-example): Using GL₄-framings instead of GSp₄-framings would give 16#T − 1 variables; the GSp₄ problem has 11#T − 1.

**Checks.**

- The global representations have domain G_{F⁺} (the source writes G_F in Definition 6.1.4; see sourceIssues).
- For #T = 1 the framing ring has 10 variables.

**Prerequisites.** `LocalGaloisDeformationRings:R08.1/g-valued-framed-ring`, `ArithmeticGaloisRepresentations:G7/gsp4-and-symplectic-induction`, `GlobalGaloisDeformations:R04.3/global-deformation-type`, `GlobalGaloisDeformations:R04.2/framed-unframed-comparison`, `DeformationAndDerivedPatchingAlgebra:R03.1/completed-tensor-products`.

**Source.** BCGP25, §6.1, Definitions 6.1.1–6.1.4 and (6.1.5), pp. 139–141: Sets up GSp₄ deformation theory with fixed similitude ε^{−1}: lifts, local and global problems over a weight algebra, strict equivalence, T-framed deformations, representability for absolutely irreducible ρ̄, the torsor under (∏ĜSp₄)/Ĝ_m giving relative dimension 11#T − 1, and the framing ring 𝒯 with R^T_𝒮 ≅ R_𝒮 ⊗̂_Λ 𝒯.

### GSp₄-reasonable residual representations

**Target:** `OrdinaryPartII.IsGSp4Reasonable` (definition); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/gsp4-reasonable`. Planet: *GSp₄-reasonable residual representation*.

Let p ≥ 3, k a finite field of characteristic p, F a number field and ρ̄ : G_F → GSp₄(k) continuous and absolutely GSp₄-irreducible (its image lies in no proper parabolic subgroup of GSp₄ over k̄; this is a standing assumption of Whitmore §3). Let 𝔰𝔭₄ = Lie(Sp₄) ⊗ k (the Lie algebra of the derived group of GSp₄) with the adjoint action of GSp₄(k), 𝔰𝔭₄^∨ its dual, and for a semisimple h ∈ GSp₄(k) let 𝔷_h = Lie Z(Z_{GSp₄}(h)) ∩ 𝔰𝔭₄ be the Lie algebra of the centre of the centralizer of h, intersected with 𝔰𝔭₄. A subgroup H ⊂ GSp₄(k) satisfies the reasonableness conditions if (a) H⁰(H, 𝔰𝔭₄^∨) = 0 and (b) for every nonzero simple k[H]-submodule W ⊂ 𝔰𝔭₄^∨ there are a semisimple h ∈ H, w ∈ W and z ∈ 𝔷_h with w(z) ≠ 0. ρ̄ is GSp₄-reasonable if for all sufficiently large n the group H_n = ρ̄(G_{F(ζ_{p^n})}) satisfies (a) and (b), and, when ζ_p lies in the field cut out by 𝔰𝔭₄^∨ (equivalently by ad⁰ρ̄), also H¹(H_n, 𝔰𝔭₄^∨) = 0. (This is Whitmore's Ĝ-reasonable for Ĝ = GSp₄; version 4 of Whitmore's preprint renames the notion.)

**Construction or proof.**

1. State the conditions for subgroups first and then for ρ̄ through the tower F(ζ_{p^n}); for p > 2 the trace form identifies 𝔰𝔭₄^∨ with 𝔰𝔭₄ equivariantly.
2. If H¹(ρ̄(G_{F(ζ_p)}), k) = 0 the groups H_n are independent of n (a normal subgroup of p-power index would give a nonzero homomorphism to ℤ/p), so the conditions can be checked on H_1 (Whitmore Lemma 3.20).
3. For h regular semisimple, Z_{GSp₄}(h) is a maximal torus, so 𝔷_h is the Cartan subalgebra of 𝔰𝔭₄ through h; condition (b) then says that W does not vanish on that Cartan subalgebra.

**Uses.**

- BCGP25 Hypothesis 6.3.1 (1), p. 146: the big-image hypothesis of Theorem 6.3.4.
- BCGP25 Proposition 7.5.10 (B2), p. 177: the p > 2 branch of the multiplicity-one criterion.
- BCGP25 Lemma 6.4.3, p. 150: the explicit list of allowed images at p = 3.
- Whitmore, Proposition 3.18, p. 22 (arXiv v3): existence of Taylor–Wiles data killing the dual Selmer group (OL.4/reasonable-taylor-wiles-places).

**API.**

- `OrdinaryPartII.IsGSp4Reasonable` (constructor): The predicate on ρ̄ : G_F → GSp₄(k): for all large n, ρ̄(G_{F(ζ_{p^n})}) satisfies (a), (b), and the H¹ condition when ζ_p lies in the fixed field of 𝔰𝔭₄^∨.
- `OrdinaryPartII.ReasonableSubgroup` (constructor): The conditions (a) and (b) on a subgroup H ⊂ GSp₄(k).
- `OrdinaryPartII.IsGSp4Reasonable.of_vast` (relation): A vast ρ̄ (ArithmeticGaloisRepresentations G7/vast-tidy-and-enormous-gsp4-subgroups) is GSp₄-reasonable: an enormous or weakly enormous image gives (a) by absolute irreducibility and (b) with h regular semisimple, since then every root is nontrivial on h and the trace form is nondegenerate on the Cartan subalgebra for p > 2.
- `OrdinaryPartII.IsGSp4Reasonable.of_adequate` (relation): If H¹(ρ̄(G_{F(ζ_p)}), k) = 0 and ρ̄(G_{F(ζ_p)}) is GSp₄-adequate (Whitmore Definition 3.15), then ρ̄ is GSp₄-reasonable.
- `OrdinaryPartII.IsGSp4Reasonable.absolutelyIrreducible` (relation): A GSp₄-reasonable ρ̄ is absolutely GSp₄-irreducible (part of the definition, as BCGP Hypothesis 6.3.1 (1) records); moreover condition (a) excludes images of ρ̄(G_{F(ζ_{p^n})}) in a proper Levi subgroup, whose centre would give invariants in 𝔰𝔭₄.
- `OrdinaryPartII.IsGSp4Reasonable.restrict` (functoriality): If F′/F is finite and linearly disjoint from the field cut out by ρ̄ over F(ζ_{p^∞}), then ρ̄|G_{F′} is GSp₄-reasonable whenever ρ̄ is.
- `OrdinaryPartII.IsGSp4Reasonable.images_stable` (other): If H¹(ρ̄(G_{F(ζ_p)}), k) = 0 then ρ̄(G_{F(ζ_{p^n})}) = ρ̄(G_{F(ζ_p)}) for all n ≥ 1.

**Unit tests.**

- `OrdinaryPartII.IsGSp4Reasonable.surjective_F3` (computation): If ρ̄ : G_ℚ → GSp₄(𝔽₃) is surjective (for example the 3-torsion of a generic abelian surface with good reduction at 3), then ρ̄ is GSp₄-reasonable (Table 6.4.4, label 1.1.1; AbelianSurfacesModularity AM.1/allowed-images).
- `OrdinaryPartII.IsGSp4Reasonable.torus_image` (non-example): If ρ̄ has image in the diagonal torus, H⁰(H_n, 𝔰𝔭₄^∨) contains the dual of the Cartan subalgebra, so (a) fails and ρ̄ is not GSp₄-reasonable.
- `OrdinaryPartII.IsGSp4Reasonable.table_failures` (non-example): The subgroups of GSp₄(𝔽₃) with LMFDB labels 3.540.2, 3.540.7, 3.216.2 and 3.36.1 are images of mod-3 representations that are not GSp₄-reasonable (Table 6.4.4, condition (1)).
- `OrdinaryPartII.IsGSp4Reasonable.not_gl4_adequate` (compatibility): Reasonableness is a symplectic condition: Sp₄(𝔽₃) ⊂ GL₄(𝔽₃) is not adequate as a subgroup of GL₄ (H¹(Sp₄(𝔽₃), ∧²) ≠ 0, Remark 6.4.5), while a surjective ρ̄ onto GSp₄(𝔽₃) is GSp₄-reasonable; only H¹ with coefficients in 𝔰𝔭₄ ≅ Sym² enters.
- `OrdinaryPartII.IsGSp4Reasonable.of_vast_example` (characterisation): For p ≥ 5 and ρ̄ with ρ̄(G_{F(ζ_p)}) ⊇ Sp₄(𝔽_p), ρ̄ is vast and hence GSp₄-reasonable.

**Checks.**

- Vast implies GSp₄-reasonable.
- A ρ̄ with image in the diagonal torus is not GSp₄-reasonable.

**Prerequisites.** `ArithmeticGaloisRepresentations:G7/vast-tidy-and-enormous-gsp4-subgroups`, `ArithmeticGaloisRepresentations:G7/gsp4-and-symplectic-induction`, `ArithmeticGaloisRepresentations:G7/adequate-subgroup`, `mathlib:Matrix.symplecticGroup`, `mathlib:groupCohomology`.

**Source.** WHI22, Definition 3.19 and Lemma 3.20, pp. 23–24 (arXiv v3): Defines Ĝ-reasonable representations by conditions 1a and 2 of Definition 3.15 on the images over F(ζ_{p^n}) for all large n, with the vanishing of H¹ required when ζ_p lies in the field cut out by the dual adjoint module; notes that it weakens vastness, and that an adequate image over F(ζ_p) with H¹(−, k) = 0 suffices. WHI22, Definition 3.15, pp. 21–22, and Definition 1.2, p. 3 (arXiv v3): The Ĝ-adequacy conditions: vanishing of H⁰ and H¹ of the dual adjoint module and of H¹(H, k), and the condition that each simple submodule pairs nontrivially with the centre of the Lie algebra of the centralizer of some semisimple element. BCGP25, Hypothesis 6.3.1 (1), p. 146; Lemma 6.4.3 and Table 6.4.4, pp. 149–150; Remark 6.4.5, p. 151: Uses GSp₄-reasonableness as the big-image hypothesis of the ordinary R = T theorem, determines which subgroups of GSp₄(𝔽₃) are reasonable, and explains why the GL₄-adequacy route fails for Sp₄(𝔽₃).

### Taylor–Wiles data for GSp₄-reasonable residual representations

**Target:** `OrdinaryPartII.exists_reasonable_TW_places` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/reasonable-taylor-wiles-places`.

Let p ≥ 3, 𝒮 = (ρ̄, S, {Λ_v}, {D_v}) a GSp₄ problem (OL.4/gsp4-lambda-deformation-problem) over a totally real F⁺, T ⊂ S with S_p ⊂ T, and n ≥ 1. Suppose ρ̄(G_{F⁺(ζ_{p^n})}) satisfies condition (b) of OL.4/gsp4-reasonable and, if ζ_p lies in the field cut out by 𝔰𝔭₄^∨, H¹(ρ̄(G_{F⁺(ζ_{p^n})}), 𝔰𝔭₄^∨) = 0. Let q ≥ h¹(G_{F⁺,S}, 𝔰𝔭₄^∨(1)). Then there is a set Q of Whitmore Taylor–Wiles places of level n (places v ∉ S with q_v ≡ 1 mod p^n at which ρ̄ is unramified with semisimple Frobenius ḡ_v, with Whitmore's local condition D^TW_v attached to the Levi subgroup centralizing ḡ_v) with #Q = q and H¹_{𝒮_Q^⊥,T}(𝔰𝔭₄^∨(1)) = 0.

**Construction or proof.**

1. By Whitmore's local analysis (requested from LocalGaloisDeformationRings R08.2), the dual Selmer condition at a Taylor–Wiles place v is H¹_ur(F_v, N_v^∨(1)), with N_v = Lie Z(M_{ḡ_v}) ∩ 𝔰𝔭₄; a class [ψ] is killed by adding v exactly when it has nonzero image in H¹_ur(F_v, N_v^∨(1)) (Whitmore Lemma 3.14).
2. Induct on the dimension: it suffices, for each nonzero [ψ] ∈ H¹(G_{F⁺,S}, 𝔰𝔭₄^∨(1)), to find infinitely many such places.
3. Let L be the field cut out by 𝔰𝔭₄^∨(1) and L_n = L(ζ_{p^n}). By Whitmore Lemma 3.16 (BCGP21 Lemma 7.5.9; ArithmeticGaloisRepresentations G7/gsp4-big-image-verification), H¹(Gal(L_n/F⁺), 𝔰𝔭₄^∨(1)) = 0 under the hypotheses, so ψ restricts to a nonzero G_{F⁺(ζ_{p^n})}-equivariant homomorphism f : G_{L_n} → 𝔰𝔭₄^∨(1).
4. Take a simple submodule W of the span of f(G_{L_n}); condition (b) gives semisimple σ₀ and z ∈ 𝔷_{σ₀} with w(z) ≠ 0 for some w ∈ W; adjust σ₀ by τ ∈ G_{L_n} with ψ(τ) = w if needed, so that ψ(σ)(z) ≠ 0 for σ = τσ₀ with ρ̄(σ) = ρ̄(σ₀).
5. Chebotarev gives infinitely many places v with ρ̄(Frob_v) = ρ̄(σ), ψ(Frob_v) = ψ(σ) and Frob_v ∈ G_{F⁺(ζ_{p^n})}.

**Checks.**

- The Frobenius at a Taylor–Wiles place need only be semisimple, not regular semisimple; this is what allows reasonable rather than vast images.
- For #Q = q = h¹(G_{F⁺,S}, 𝔰𝔭₄^∨(1)) the augmented dual Selmer group vanishes.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/gsp4-reasonable`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/gsp4-lambda-deformation-problem`, `ArithmeticGaloisRepresentations:G7/gsp4-big-image-verification`, `LocalGaloisDeformationRings:R08.2`.

**Source.** WHI22, Proposition 3.18 and proof, pp. 22–23 (arXiv v3): Constructs, under condition 2 of Definition 3.15 for the image over F(ζ_{p^n}) and the H¹ condition when ζ_p is in the relevant fixed field, sets of Taylor–Wiles places of level n of any size q at least h¹ of the dual adjoint, with vanishing augmented dual Selmer group, via Lemma 3.16, a simple submodule argument and Chebotarev. WHI22, §3.1, the local problem at Taylor–Wiles places and Lemma 3.14, pp. 18–21 (arXiv v3): Defines Taylor–Wiles places with semisimple Frobenius and their local deformation problem through the Levi subgroup centralizing Frobenius, and computes the Selmer and dual Selmer conditions there.

### Ordinary GSp₄ seed data (Hypothesis 6.3.1)

**Target:** `OrdinaryPartII.OrdinarySeedDatum` (definition); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/ordinary-seed-datum`.

Let p > 2 split completely in the totally real field F⁺, and identify the places v | ∞ and v | p through a fixed ı : ℂ ≅ ℚ̄_p. An ordinary GSp₄ seed datum consists of: an ordinary cuspidal automorphic representation π of GSp₄(𝔸_{F⁺}) with central character |·|² and weights ((k_v, l_v; 2))_{v|∞}, with its Galois representation ρ_{π,p} : G_{F⁺} → GSp₄(ℚ̄_p) (BCGP Theorem 1.8.17; AbelianSurfacesPotentialModularity AP.0/weight-two-galois in parallel weight 2) and residual representation ρ̄ = ρ̄_{π,p}; a finite set R of finite places prime to p containing the prime-to-p places where π ramifies; for each v | p an ordinary p-stabilization (α_v, β_v) of ρ̄|G_{F⁺_v}; and a place w₀; such that: (1) ρ̄ is GSp₄-reasonable (OL.4/gsp4-reasonable), in particular absolutely irreducible; (2) ρ̄ is tidy (ArithmeticGaloisRepresentations G7/vast-tidy-and-enormous-gsp4-subgroups); (3) for each v | p, ρ̄|G_{F⁺_v} is ordinary of weight 2 with p-stabilization (α_v, β_v) compatible with a fixed ordinary p-stabilization of π_v; (4) for each v | p, ρ_{π,p}|G_{F⁺_v}, viewed as a point of R^△_v (defined with (α_v, β_v)) through the chosen stabilization of π_v, lies on a unique irreducible component of Spec R^△_v (LocalGaloisDeformationRings L7/gsp4-ordinary-flag-incidence); (5) for each v ∈ R, ρ̄|G_{F⁺_v} is trivial, q_v ≡ 1 mod p (mod 9 if p = 3) and π_v^{Iw(v)} ≠ 0; (6) w₀ is an unramified place of residue characteristic > 5 with q_{w₀} ≢ 1 mod p such that no two eigenvalues of ρ̄(Frob_{w₀}) have ratio q_{w₀} (it exists because ρ̄ is tidy). Put S = S_p ∪ R ∪ {w₀}. The weights need not be parallel weight 2.

**Construction or proof.**

1. Collect the hypotheses of BCGP Hypothesis 6.3.1 as fields. For w₀: tidiness gives h ∈ ρ̄(G_{F⁺}) with ν(h) ≠ 1 such that no two eigenvalues of h (not necessarily distinct) have ratio ν(h); Chebotarev gives infinitely many unramified w₀ of residue characteristic > 5 with ρ̄(Frob_{w₀}) conjugate to h. As ν ∘ ρ̄ = ε̄^{−1}, ν(h) is q_{w₀} or q_{w₀}^{−1} in k (according to the Frobenius convention), and the set of eigenvalue ratios is stable under inversion; so q_{w₀} ≢ 1 mod p and no ratio equals q_{w₀}.
2. Condition (6) makes H⁰(G_{F⁺_{w₀}}, ad⁰ρ̄(1)) = 0, so the lifting ring at w₀ is formally smooth over O and the level at w₀ can be taken neat (BCGP21 §7.8 as BCGP cite it).

**Uses.**

- BCGP25 Theorem 6.3.4, p. 148: the hypotheses of the symplectic ordinary R = T theorem.
- BCGP25 proof of Proposition 7.5.10, p. 178: after a solvable totally real base change, the base change of the seed π satisfies Hypothesis 6.3.1.
- BCGP25 Lemma 10.4.1, p. 222: applied with π of regular weight.

**API.**

- `OrdinaryPartII.OrdinarySeedDatum.residual` (projection): The residual representation ρ̄ = ρ̄_{π,p} : G_{F⁺} → GSp₄(k).
- `OrdinaryPartII.OrdinarySeedDatum.stabilization` (projection): For v | p the ordered pair (α_v, β_v), compatible with the chosen stabilization of π_v.
- `OrdinaryPartII.OrdinarySeedDatum.places` (data): S = S_p ∪ R ∪ {w₀}.
- `OrdinaryPartII.OrdinarySeedDatum.uniqueComponent` (characterisation): For v | p the seed point lies on exactly one irreducible component R^{△,π}_v of Spec R^△_v.
- `OrdinaryPartII.OrdinarySeedDatum.auxiliary_smooth` (relation): H⁰(G_{F⁺_{w₀}}, ad⁰ρ̄(1)) = 0, so R^□_{w₀} is formally smooth over O.
- `OrdinaryPartII.OrdinarySeedDatum.baseChange` (functoriality): For a solvable totally real F′⁺/F⁺ in which p splits completely and which is disjoint from the field cut out by ρ̄, the base change of π with the induced data is a seed datum when the local conditions at R are re-arranged.

**Unit tests.**

- `OrdinaryPartII.OrdinarySeedDatum.distinguished_automatic` (characterisation): If ρ̄|G_{F⁺_v} is residually p-distinguished, condition (4) holds automatically: Spec R^△_v[1/p] is irreducible (BCGP Remark 6.3.2).
- `OrdinaryPartII.OrdinarySeedDatum.mod9` (computation): For p = 3 a place v ∈ R must have q_v ≡ 1 mod 9; for example q_v = 19 is allowed and q_v = 7 is not.
- `OrdinaryPartII.OrdinarySeedDatum.empty_R` (degenerate): If π is unramified at every prime-to-p place, R may be empty and S = S_p ∪ {w₀}.
- `OrdinaryPartII.OrdinarySeedDatum.w0_condition` (non-example): A place w₀ with q_{w₀} ≡ 1 mod p is not allowed: then ρ̄(Frob_{w₀}) has eigenvalue ratio 1 = q_{w₀} mod p for any eigenvalue, so H⁰(G_{F⁺_{w₀}}, ad⁰ρ̄(1)) ≠ 0 and R^□_{w₀} need not be formally smooth.

**Checks.**

- Every seed datum puts ρ̄ in the situation of BCGP21 Hypothesis 7.8.1 except possibly for residual p-distinguishedness.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/gsp4-reasonable`, `ArithmeticGaloisRepresentations:G7/vast-tidy-and-enormous-gsp4-subgroups`, `AbelianSurfacesPotentialModularity:AP.0/weight-two-galois`, `LocalGaloisDeformationRings:L7/gsp4-ordinary-flag-incidence`, `ModularityAndLanglandsExtensions:ML.4/gsp4-discrete-spectrum-types`.

**Source.** BCGP25, §6.3, Hypothesis 6.3.1, Remarks 6.3.2–6.3.3 and the choice of w₀, pp. 146–147: Lists the hypotheses on the ordinary cuspidal GSp₄ representation: reasonable and tidy residual image, ordinary of weight 2 at p with compatible stabilizations, the seed point lying on a unique ordinary component, trivial residual representation with q_v ≡ 1 mod p (mod 9 for p = 3) and Iwahori-fixed vectors at R; then chooses the auxiliary place w₀ by tidiness.

### The selected ordinary problems S_1 and S_{1,π}

**Target:** `OrdinaryPartII.SelectedProblem` (definition); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/selected-ordinary-problem`. Planet: *Selected ordinary deformation problem*.

Let (π, (α_v, β_v), R, w₀) be an ordinary GSp₄ seed datum (OL.4/ordinary-seed-datum) with S = S_p ∪ R ∪ {w₀}. For v | p let D^△_v be the ordinary problem of LocalGaloisDeformationRings L7/gsp4-ordinary-flag-incidence over Λ_{GSp₄,v} = O⟦(O^×_{F⁺_v}(p))²⟧, taking the unramified characters χ_1, χ_2 with χ_1(Frob_v) = α_v and χ_2(Frob_v) = β_v; for v ∈ R let D^1_v be the problem of unipotently ramified lifts (LocalGaloisDeformationRings R08.2/gsp4-ihara-avoidance-rings with trivial characters); D^□_{w₀} all lifts. Then S_1 = (ρ̄, S, {Λ_{GSp₄,v}}_{v∈S_p} ∪ {O}_{v∈S∖S_p}, {D^△_v}_{v∈S_p} ∪ {D^1_v}_{v∈R} ∪ {D^□_{w₀}}), a GSp₄ problem over Λ_{GSp₄,F⁺} = ⊗̂_{v|p} Λ_{GSp₄,v}. For v | p let R^{△,π}_v be the quotient of R^△_v by the minimal prime of the unique component through ρ_{π,p}|G_{F⁺_v} (seed condition (4)), and D^{△,π}_v its problem; S_{1,π} replaces D^△_v by D^{△,π}_v. There is a surjection R_{S_1} ↠ R_{S_{1,π}} of Λ_{GSp₄,F⁺}-algebras, and when ρ̄ is residually p-distinguished D^△_v is the problem D^{B,α_v}_v of BCGP21.

**Construction or proof.**

1. The local problems are Ĝsp₄-stable and representable, so S_1 and S_{1,π} are GSp₄ problems.
2. Restricting the selected component is well defined because of seed condition (4).
3. In the residually p-distinguished case the flag is unique and G_v → Spec R^□_v is a closed immersion, so D^△_v is the B-ordinary problem (L7/gsp4-borel-ordinary-conditions).

**Uses.**

- BCGP25 Theorem 6.3.4, p. 148: R_{S_{1,π}} and T_{S_{1,π}} are the two sides of the theorem.
- BCGP25 proof of Proposition 7.5.10, p. 179: the map R_{S_1} → R_S/Q factors through R_{S_{1,π_{F⁺}}} by hypothesis (B5).

**API.**

- `OrdinaryPartII.SelectedProblem.ring` (universal-property): R_{S_1} and R_{S_{1,π}} represent the two problems over Λ_{GSp₄,F⁺}.
- `OrdinaryPartII.SelectedProblem.quotient` (data): The surjection R_{S_1} ↠ R_{S_{1,π}} induced by R^△_v ↠ R^{△,π}_v for v | p.
- `OrdinaryPartII.SelectedProblem.seed_mem` (characterisation): ρ_{π,p}, with the chosen stabilizations, defines a Q̄_p-point of Spec R_{S_{1,π}}.
- `OrdinaryPartII.SelectedProblem.chosenComponent` (projection): For v | p, the minimal prime of R^△_v whose component contains the seed point.
- `OrdinaryPartII.SelectedProblem.compat_distinguished` (compatibility): If ρ̄|G_{F⁺_v} is residually p-distinguished for all v | p, then Spec R^△_v[1/p] is irreducible (BCGP21 Proposition 7.3.4, recalled in BCGP Remark 6.3.2), so R^{△,π}_v is the maximal reduced O-flat quotient of R^△_v and S_{1,π} is, up to that quotient, the problem of BCGP21 with I = ∅.

**Unit tests.**

- `OrdinaryPartII.SelectedProblem.seed_point` (characterisation): The seed point ρ_{π,p} belongs to Spec R_{S_{1,π}}.
- `OrdinaryPartII.SelectedProblem.other_component` (non-example): A lift lying only on a component of Spec R^△_v other than R^{△,π}_v is a point of R_{S_1} but not of R_{S_{1,π}}.
- `OrdinaryPartII.SelectedProblem.needs_uniqueness` (non-example): If the seed point lay on two components of Spec R^△_v, 'the component through π' would not be defined; seed condition (4) is what makes S_{1,π} well defined.
- `OrdinaryPartII.SelectedProblem.distinguished` (degenerate): If ρ̄|G_{F⁺_v} is residually p-distinguished for every v | p, then R_{S_{1,π}} and R_{S_1} have the same reduced O-flat quotient.

**Checks.**

- ρ_{π,p} with its stabilizations is a Q̄_p-point of R_{S_{1,π}}.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/ordinary-seed-datum`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/gsp4-lambda-deformation-problem`, `LocalGaloisDeformationRings:L7/gsp4-ordinary-flag-incidence`, `LocalGaloisDeformationRings:R08.2/gsp4-ihara-avoidance-rings`, `LocalGaloisDeformationRings:L7/gsp4-borel-ordinary-conditions`.

**Source.** BCGP25, §6.3, from 'By the above hypotheses' to the definition of T_{S_{1,π}}, p. 147: Puts the seed in the setting of BCGP21 §7.8 and Whitmore §7 with I = ∅, uses D^△_v at p with unramified characters given by the stabilization, unipotent conditions at R and all lifts at w₀, and defines the p-minimal problem S_{1,π} by the unique component through the seed.

### The Galois representation over the GSp₄ Hida–Hecke algebra with the flag-image condition

**Target:** `OrdinaryPartII.gsp4HidaGaloisRep` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/gsp4-hida-galois-representation`. Planet: *GSp₄ Hida–Hecke Galois representation*.

In the setting of OL.4/selected-ordinary-problem, let M^1 be the finite free Λ_{GSp₄,F⁺}-module obtained from the ordinary part of the coherent H⁰ of Hilbert–Siegel Shimura varieties (BCGP21 §7.8–7.9 with I = ∅; AbelianSurfacesPotentialModularity AP.1/hecke-modules), and T_{S_1} the Hida–Hecke algebra acting faithfully on it. There is a continuous ρ : G_{F⁺} → GSp₄(T_{S_1}) of type S_1, unique up to strict equivalence, whose characteristic polynomials of Frobenius at v ∉ S are the Hecke polynomials Q_v(X), giving a surjection R_{S_1} ↠ T_{S_1} of Λ_{GSp₄,F⁺}-algebras; the same holds with Taylor–Wiles data Q, compatibly with Δ_Q. Put T_{S_{1,π}} = R_{S_{1,π}} ⊗_{R_{S_1}} T_{S_1}.

**Construction or proof.**

1. Follow BCGP21 Theorem 7.9.4 (AP.2/hida-hecke-galois) as generalised by Whitmore Theorem 7.8: embed T_{S_1} into the ring A of tuples (a, (a_π)) ⊂ k × ∏_π O_{E_π} indexed by classical ordinary π of large regular weight contributing to M^1, glue the Galois representations ρ_π, and pass to Artinian quotients.
2. The flag-image condition D^△_v is defined as a scheme-theoretic image and is not understood on general Artinian rings; but since T_{S_1} is reduced, O-flat and embeds in ∏_π O_{E_π}, a map R^□_v → T_{S_1} factors through R^△_v as soon as each composite R^□_v → O_{E_π} does, that is as soon as each ρ_π|G_{F⁺_v} is ordinary with stabilization lifting (α_v, β_v); this is BCGP's remark that only the O_{E′}-points of D^△_v are used.
3. At R the unipotent condition and at Taylor–Wiles places the Δ_Q-action follow as in Whitmore Theorem 7.7 and BCGP21 Theorem 7.9.4.

**Checks.**

- T_{S_1} is finite over Λ_{GSp₄,F⁺}, since it acts faithfully on the finite free module M^1.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/selected-ordinary-problem`, `AbelianSurfacesPotentialModularity:AP.1/hecke-modules`, `AbelianSurfacesPotentialModularity:AP.2/hida-hecke-galois`, `AbelianSurfacesPotentialModularity:AP.0/weight-two-galois`, `LocalGaloisDeformationRings:L7/gsp4-ordinary-flag-incidence`, `DeformationAndDerivedPatchingAlgebra:R03.6/maximal-flat-quotient`.

**Source.** BCGP25, §6.3, p. 147: States that the constructions of BCGP21 §7.8 and Whitmore §7 go through with D^△_v, since the proof of Whitmore's Theorem 7.8 (generalizing BCGP21 Theorem 7.9.4) uses only the O_{E′}-points of D^△_v; there is a surjection R_{S_1} → T_{S_1} onto the Hida–Hecke algebra acting faithfully on a finite free Λ-module from ordinary coherent H⁰. WHI22, Theorems 7.7–7.8 and proofs, pp. 64–65 (arXiv v3): Constructs the Galois representation over the Hida–Hecke algebra with Taylor–Wiles data by embedding the Hecke algebra in a product of rings of integers indexed by classical ordinary forms of large weight and gluing.

## OL.5. The symplectic ordinary R = T theorem for p > 2

The proof of Theorem 6.3.4: the hypothesis of Lemma 6.2.6 is verified globally, the selected problem is patched with Whitmore's Taylor–Wiles places, and Ihara avoidance together with special-fibre points on single components gives full support.

BCGP Theorem 6.3.4 and its proof. **Targets:** the global verification that each selected component R^{△,π}_v surjects onto Spec Λ_{GSp₄,v}, which is the hypothesis of Lemma 6.2.6; the patched Hida modules M^1_∞, M^χ_∞ for the selected problem, free over S_∞ = 𝒯⟦Δ_∞⟧, maximal Cohen–Macaulay, with dim(R_∞)′ = dim S_∞ (Whitmore Proposition 7.11 with I = ∅); the reduced R = T theorem (R_{S_{1,π}})_red ≅ T_{S_{1,π}} on exactly the selected components, by Ihara avoidance and special-fibre points lying on single components (Lemma 6.2.6 above p, BCGP21 Proposition 7.4.7 at R, formal smoothness at w₀); and finiteness of R_{S_{1,π}} over Λ_{GSp₄,F⁺}.

**Layer dependencies:** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4`, `AbelianSurfacesPotentialModularity:AP.2`, `AbelianSurfacesPotentialModularity:AP.3`, `DeformationAndDerivedPatchingAlgebra:P9`, `DeformationAndDerivedPatchingAlgebra:R03.4`, `DeformationAndDerivedPatchingAlgebra:R03.5`, `DeformationAndDerivedPatchingAlgebra:R03.6`, `LocalGaloisDeformationRings:L7`, `LocalGaloisDeformationRings:R08.1`, `LocalGaloisDeformationRings:R08.2`.

### The automorphic ordinary component dominates the local weight space

**Target:** `OrdinaryPartII.selectedComponent_surjective` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.5/component-dominance`. Planet: *Component dominance over the weight space*.

Let p > 2 split completely in the totally real field F⁺, and let (π, (α_v, β_v)_{v|p}, R, w₀) be an ordinary GSp₄ seed datum (OL.4/ordinary-seed-datum) with residual representation ρ̄ = ρ̄_{π,p} and S = S_p ∪ R ∪ {w₀}; let S_{1,π} be the selected problem, R_{S_{1,π}} its deformation ring and T_{S_{1,π}} = R_{S_{1,π}} ⊗_{R_{S_1}} T_{S_1} (OL.4/selected-ordinary-problem, OL.4/gsp4-hida-galois-representation), Λ_{GSp₄,F⁺} = ⊗̂_{v|p} Λ_{GSp₄,v}. For every v | p the composite Spec R^{△,π}_v → Spec Λ_{GSp₄,v} is surjective. Consequently there is a minimal prime of R^{△,π}_v/(p) (viewed in R^△_v/(p)) containing the minimal prime of R^{△,π}_v and no other minimal prime of R^△_v, and R^{△,π}_v has relative dimension 16 over O.

**Construction or proof.**

1. Let Q_π ⊂ T_{S_1} be a minimal prime contained in the prime of π (with its stabilizations). The composite R^△_v → R_{S_1} → T_{S_1} → T_{S_1}/Q_π factors through R^{△,π}_v by seed condition (4).
2. The composite Spec T_{S_1}/Q_π → Spec R^{△,π}_v → Spec Λ_{GSp₄,v} equals Spec T_{S_1}/Q_π → Spec Λ_{GSp₄,F⁺} → Spec Λ_{GSp₄,v}. The second map is surjective; the first is surjective because T_{S_1}/Q_π is finite and torsion-free over the domain Λ_{GSp₄,F⁺} ≅ O⟦x_1, …, x_{2[F⁺:ℚ]}⟧ (p > 2), T_{S_1} acting faithfully on the finite free module M^1.
3. Hence Spec R^{△,π}_v → Spec Λ_{GSp₄,v} is surjective, which is the hypothesis of BCGP Lemma 6.2.6 (LocalGaloisDeformationRings L7/gsp4-ordinary-weight-two-components (2)), whose conclusion is the second sentence.

**Checks.**

- The hypothesis of Lemma 6.2.6 is checked globally, not by a local analysis of R^△_v.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/gsp4-hida-galois-representation`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/selected-ordinary-problem`, `LocalGaloisDeformationRings:L7/gsp4-ordinary-weight-two-components`.

**Source.** BCGP25, Proof of Theorem 6.3.4, first paragraph, p. 148: Verifies the surjectivity hypothesis of Lemma 6.2.6 for the components through π by factoring through T_{S_1}/Q_π, which is finite and torsion-free over the weight algebra. BCGP25, Lemma 6.2.6 and the remark after it, pp. 145–146: If a component of Spec R^△_v surjects onto Spec Λ_{GSp₄,v}, some minimal prime of the special fibre contains it and no other component, and it has relative dimension 16; the authors check the hypothesis by global means.

### Patched Hida modules for the selected problem

**Target:** `OrdinaryPartII.SelectedPatching` (construction); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.5/symplectic-patched-modules`.

Let p > 2 split completely in the totally real field F⁺, and let (π, (α_v, β_v)_{v|p}, R, w₀) be an ordinary GSp₄ seed datum (OL.4/ordinary-seed-datum) with residual representation ρ̄ = ρ̄_{π,p} and S = S_p ∪ R ∪ {w₀}; let S_{1,π} be the selected problem, R_{S_{1,π}} its deformation ring and T_{S_{1,π}} = R_{S_{1,π}} ⊗_{R_{S_1}} T_{S_1} (OL.4/selected-ordinary-problem, OL.4/gsp4-hida-galois-representation), Λ_{GSp₄,F⁺} = ⊗̂_{v|p} Λ_{GSp₄,v}. Enlarge E to contain μ_p (μ_9 if p = 3) and fix, for v ∈ R, characters χ_v = (χ_{v,1}, χ_{v,2}) nontrivial and trivial mod λ with χ_{v,1} ≠ χ_{v,2}^{±1}; let S_χ be S_1 with D^{χ_v}_v in place of D^1_v. Let t and Taylor–Wiles data Q_N (N ≥ 1) be as in Whitmore Lemma 7.10, built from OL.4/reasonable-taylor-wiles-places, Δ_∞ ↠ Δ_{Q_N}, and S_∞ = 𝒯⟦Δ_∞⟧ with 𝒯 the framing ring over Λ_{GSp₄,F⁺} (OL.4/gsp4-lambda-deformation-problem) and augmentation ideal a_∞. Let R^1_∞, R^χ_∞ be power series rings in g = t − 4[F⁺:ℚ] + #S − 1 variables over R^loc_{S_1,S}, R^loc_{S_χ,S}, and R_{∞,π} = R^1_∞ ⊗_{R^loc_{S_1,S}} R^loc_{S_{1,π},S}. The patching data are: Λ_{GSp₄,F⁺}-algebra maps S_∞ → R^1_∞ → R_{S_1} and S_∞ → R^χ_∞ → R_{S_χ}; finite S_∞-modules M^1_∞ and M^χ_∞, free over S_∞, with M^·_∞/a_∞ ≅ M^· (the Hida modules of OL.4/gsp4-hida-galois-representation); actions R^·_∞ → End_{S_∞}(M^·_∞) compatible with the actions of R_{S_·} on M^·; and identifications M^1_∞/λ ≅ M^χ_∞/λ compatible with R^1_∞/λ ≅ R^χ_∞/λ. Moreover M^·_∞ is maximal Cohen–Macaulay over R^·_∞, and dim (R^·_∞)′ = dim S_∞, where ′ is the maximal O-flat quotient.

**Construction or proof.**

1. Taylor–Wiles data: OL.4/reasonable-taylor-wiles-places applied to S_1 gives, for each N, data Q_N of level N with #Q_N = t and vanishing augmented dual Selmer group (Whitmore Lemma 7.10), with Whitmore's local conditions at Q_N.
2. Hecke side: the modules M^{·,Q_N} are finite free over Λ[Δ_{Q_N}] with Δ_{Q_N}-coinvariants M^· (Whitmore Propositions 7.5–7.6, the analogues of BCGP21 Proposition 7.9.8; AP.2/taylor-wiles-descent), and OL.4/gsp4-hida-galois-representation gives the Galois representations compatibly with Δ_{Q_N}.
3. Apply the patching criterion of BCGP21 Proposition 7.10.1 (DeformationAndDerivedPatchingAlgebra R03.5/balanced-modules-and-module-patching, with zero defect since I = ∅) as in AP.3/patching-datum, with D^△_v in place of D^{B,α_v}_v; this is Whitmore Proposition 7.11 with I = ∅.
4. Dimensions: S_∞ is formally smooth over Λ_{GSp₄,F⁺} of relative dimension t + 11#S − 1, and (R^·_∞)′ is equidimensional of relative dimension g + 10#S + 4[F⁺:ℚ] over Λ_{GSp₄,F⁺} (relative dimension 16 over O above p, that is 14 over Λ_{GSp₄,v}, from L7/gsp4-ordinary-regularity, and 10 over O at R and at w₀ from R08.2/gsp4-ihara-avoidance-rings and LocalGaloisDeformationRings R08.1/smooth-points-generic-fibre); with g = t − 4[F⁺:ℚ] + #S − 1 these agree, so M^·_∞, being free over S_∞, is maximal Cohen–Macaulay (as in AP.3/patched-mcm).

**Uses.**

- BCGP25 proof of Theorem 6.3.4, p. 148: the support of M^1_∞ in Spec R_{∞,π} is shown to be everything.
- BCGP25 proof of Proposition 7.5.10, p. 179: through Theorem 6.3.4 only.

**API.**

- `OrdinaryPartII.SelectedPatching.patchedModule_free` (characterisation): M^1_∞ and M^χ_∞ are finite free S_∞-modules.
- `OrdinaryPartII.SelectedPatching.augmentation` (relation): M^·_∞/a_∞ ≅ M^· compatibly with the actions of R^·_∞ and R_{S_·}.
- `OrdinaryPartII.SelectedPatching.modLambda` (relation): M^1_∞/λ ≅ M^χ_∞/λ, compatibly with R^1_∞/λ ≅ R^χ_∞/λ.
- `OrdinaryPartII.symplectic_patched_dimension` (relation): dim (R^·_∞)′ = dim S_∞ = dim Λ_{GSp₄,F⁺} + t + 11#S − 1, that is g + 10#S + 4[F⁺:ℚ] = t + 11#S − 1 for g = t − 4[F⁺:ℚ] + #S − 1.
- `OrdinaryPartII.SelectedPatching.selectedRing` (data): R_{∞,π} = R^1_∞ ⊗_{R^loc_{S_1,S}} R^loc_{S_{1,π},S}, a power series ring over a completed tensor product of local rings.
- `OrdinaryPartII.SelectedPatching.mcm` (characterisation): M^·_∞ is maximal Cohen–Macaulay over R^·_∞, so its support is a union of irreducible components of maximal dimension.

**Unit tests.**

- `OrdinaryPartII.SelectedPatching.dim_example` (computation): For F⁺ = ℚ, #S = 3 and t = 7: g = 7 − 4 + 3 − 1 = 5, the relative dimension of (R_∞)′ over Λ is 5 + 30 + 4 = 39 and that of S_∞ is 7 + 33 − 1 = 39.
- `OrdinaryPartII.SelectedPatching.no_defect` (degenerate): With I = ∅ the patched modules are free over S_∞; there is no l₀ > 0 defect (unlike the Klingen case #I = 1 of BCGP21, where they are only balanced).
- `OrdinaryPartII.SelectedPatching.compat_bcgp21` (compatibility): If ρ̄ is residually p-distinguished at every v | p, the construction is that of AbelianSurfacesPotentialModularity AP.3/patching-datum with I = ∅.
- `OrdinaryPartII.SelectedPatching.whitmore_places` (non-example): With only regular semisimple Taylor–Wiles places (as in BCGP21) the dual Selmer group of a reasonable but non-vast ρ̄ need not be killed; Whitmore's places with semisimple Frobenius are needed for the vanishing used in the construction.

**Checks.**

- dim (R^1_∞)′ = dim (R^χ_∞)′ = dim S_∞.
- M^1_∞ is free over S_∞ (no defect, since I = ∅).

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/reasonable-taylor-wiles-places`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/gsp4-hida-galois-representation`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/gsp4-lambda-deformation-problem`, `AbelianSurfacesPotentialModularity:AP.3/patching-datum`, `AbelianSurfacesPotentialModularity:AP.3/patched-mcm`, `AbelianSurfacesPotentialModularity:AP.2/taylor-wiles-descent`, `LocalGaloisDeformationRings:R08.2/gsp4-ihara-avoidance-rings`, `LocalGaloisDeformationRings:L7/gsp4-ordinary-regularity`, `LocalGaloisDeformationRings:R08.1/smooth-points-generic-fibre`, `DeformationAndDerivedPatchingAlgebra:R03.5/balanced-modules-and-module-patching`, `DeformationAndDerivedPatchingAlgebra:R03.6/maximal-flat-quotient`.

**Source.** BCGP25, Proof of Theorem 6.3.4, p. 148: Recalls from Whitmore §7.3 the power series ring S_∞ over the weight algebra, R^1_∞ over the local ring, R_{∞,π}, and the patching data of Whitmore Proposition 7.11: maps S_∞ → R^1_∞ → R_{S_1}, a module M^1_∞ free over S_∞ with M^1_∞/a_∞ ≅ M^1, and the compatible diagram of actions; the χ-variant is used for Ihara avoidance. WHI22, §7.3, Lemma 7.10 and Proposition 7.11 with proof, pp. 66–68 (arXiv v3): Sets up S_∞ = 𝒯⟦Δ_∞⟧ with the framing ring over Λ_I, the rings R^{1,I}_∞, R^{χ,I}_∞ in g = t − 4[F:ℚ] + #S − 1 variables, and proves the existence of the patched modules, free for I = ∅, maximal Cohen–Macaulay, with the dimension identity.

### The symplectic ordinary reduced R = T theorem for p > 2 (Theorem 6.3.4)

**Target:** `OrdinaryPartII.selected_R_red_eq_T` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.5/symplectic-ordinary-r-equals-t`. Planet: *Symplectic ordinary R = T theorem*.

Let p > 2 split completely in the totally real field F⁺, and let (π, (α_v, β_v)_{v|p}, R, w₀) be an ordinary GSp₄ seed datum (OL.4/ordinary-seed-datum) with residual representation ρ̄ = ρ̄_{π,p} and S = S_p ∪ R ∪ {w₀}; let S_{1,π} be the selected problem, R_{S_{1,π}} its deformation ring and T_{S_{1,π}} = R_{S_{1,π}} ⊗_{R_{S_1}} T_{S_1} (OL.4/selected-ordinary-problem, OL.4/gsp4-hida-galois-representation), Λ_{GSp₄,F⁺} = ⊗̂_{v|p} Λ_{GSp₄,v}. Then the map R_{S_{1,π}} → T_{S_{1,π}} has nilpotent kernel, so (R_{S_{1,π}})_red ≅ T_{S_{1,π}}: R = T holds, up to nilpotents, on exactly the chosen local components above p.

**Construction or proof.**

1. It suffices to show that the support of M^1 in Spec R_{S_1} contains Spec R_{S_1,π}, hence that the support of M^1_∞ contains every irreducible component of Spec R_{∞,π}.
2. Ihara avoidance (Taylor), exactly as in OL.3/ihara-avoidance-support: on the χ-side the local rings at R are irreducible (R08.2/gsp4-ihara-avoidance-rings (1)), so after enlarging E the selected χ-ring R^χ_{∞,π} is irreducible; M^χ_∞ is nonzero there, since M^χ_∞/λ ≅ M^1_∞/λ and the latter is nonzero; so M^χ_∞ has full support on Spec R^χ_{∞,π}, and reducing modulo λ (R^χ_∞/λ ≅ R^1_∞/λ) shows that the support of M^1_∞/λ contains Spec R_{∞,π}/λ (DeformationAndDerivedPatchingAlgebra P9/support-transport-avoiding-ihara for the transport of support).
3. Every component of the support of M^1_∞ and every component of Spec R_{∞,π} has dimension dim S_∞; so M^1_∞ is supported on a component of R_{∞,π} as soon as it is supported at a point lying on that component alone.
4. Such points exist in the special fibre for each factor: above p by OL.5/component-dominance and Lemma 6.2.6 (L7/gsp4-ordinary-weight-two-components (2)); at R by BCGP21 Proposition 7.4.7 (R08.2/gsp4-ihara-avoidance-rings (2)); at w₀ because R^□_{w₀} is formally smooth by the choice of w₀ (R08.1/smooth-points-generic-fibre (1)). Products of such points work for the completed tensor product.
5. Conclude: Spec R_{S_1,π} ⊂ Supp_{R_{S_1}} M^1, and since T_{S_1} acts faithfully on M^1 the kernel of R_{S_1,π} → T_{S_1,π} is nilpotent (R03.6/faithful-quotient-ring-identification).

**Checks.**

- The theorem is 'minimal at p': it identifies R and T only on the components selected by the seed.
- In the residually p-distinguished case it is a special case of BCGP21 and Whitmore.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.5/symplectic-patched-modules`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.5/component-dominance`, `LocalGaloisDeformationRings:L7/gsp4-ordinary-weight-two-components`, `LocalGaloisDeformationRings:R08.2/gsp4-ihara-avoidance-rings`, `LocalGaloisDeformationRings:R08.1/smooth-points-generic-fibre`, `DeformationAndDerivedPatchingAlgebra:R03.6/nearly-faithful-and-component-support-conclusions`, `DeformationAndDerivedPatchingAlgebra:P9/support-transport-avoiding-ihara`, `DeformationAndDerivedPatchingAlgebra:R03.6/faithful-quotient-ring-identification`.

**Source.** BCGP25, Theorem 6.3.4 and proof, pp. 148–149: States that R_{S_1,π} is finite over the weight algebra and that R_{S_1,π} → T_{S_1,π} has nilpotent kernel; proves it by patching (Whitmore Proposition 7.11), Taylor's Ihara avoidance for the special fibre, equality of dimensions and the existence, factor by factor, of special-fibre points on a single component (Lemma 6.2.6 at p, BCGP21 Proposition 7.4.7 at R, formal smoothness at w₀). BCGP25, Remark 6.3.2, p. 147: Explains that hypothesis (5) is for Ihara avoidance and that the theorem is minimal at p because the rings R^△_v are not fully analysed.

### Finiteness of the selected symplectic ordinary deformation ring

**Target:** `OrdinaryPartII.selectedRing_finite` (theorem); packet node `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.5/symplectic-ordinary-finiteness`. Planet: *Symplectic ordinary finiteness theorem*.

Let p > 2 split completely in the totally real field F⁺, and let (π, (α_v, β_v)_{v|p}, R, w₀) be an ordinary GSp₄ seed datum (OL.4/ordinary-seed-datum) with residual representation ρ̄ = ρ̄_{π,p} and S = S_p ∪ R ∪ {w₀}; let S_{1,π} be the selected problem, R_{S_{1,π}} its deformation ring and T_{S_{1,π}} = R_{S_{1,π}} ⊗_{R_{S_1}} T_{S_1} (OL.4/selected-ordinary-problem, OL.4/gsp4-hida-galois-representation), Λ_{GSp₄,F⁺} = ⊗̂_{v|p} Λ_{GSp₄,v}. Then R_{S_{1,π}} is a finite Λ_{GSp₄,F⁺}-algebra.

**Construction or proof.**

1. T_{S_1} is finite over Λ_{GSp₄,F⁺}, acting faithfully on the finite free module M^1; so is its quotient T_{S_{1,π}}.
2. By OL.5/symplectic-ordinary-r-equals-t the kernel of R_{S_{1,π}} → T_{S_{1,π}} is nilpotent, so R_{S_{1,π}}/m_Λ R_{S_{1,π}} has finite length and R_{S_{1,π}} is finite over Λ_{GSp₄,F⁺} (R03.4/finiteness-of-deformation-rings-criteria).

**Checks.**

- Finiteness is what Proposition 7.5.10 uses at p > 2: for a minimal prime Q of R_S through ρ, R_{S_1}/Q factors through R_{S_{1,π}} and is finite over Λ_{GSp₄,ℚ}.

**Prerequisites.** `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.5/symplectic-ordinary-r-equals-t`, `OrdinaryAutomorphicFormsAndModularityLiftingPartII:OL.4/gsp4-hida-galois-representation`, `DeformationAndDerivedPatchingAlgebra:R03.4/finiteness-of-deformation-rings-criteria`.

**Source.** BCGP25, Theorem 6.3.4, p. 148: Asserts that R_{S_1,π} is a finite Λ_{GSp₄,F⁺}-algebra together with the reduced R = T statement. BCGP25, Proof of Proposition 7.5.10, p. 179: Uses the finiteness of R_{S_1,π_{F⁺}} over the weight algebra to show that R_{S_1}/Q is finite over Λ_{GSp₄,ℚ} and hence dominates it.

## Requests to other roadmaps

- **`LocalGaloisDeformationRings:L7`** (for `OL.2/ordinary-dimension-bound`): For a place v | p (used with p = 2) and an arbitrary residual ρ̄|G_{F_ṽ} : G_{F_ṽ} → GL_n(k) with a stable full flag (not necessarily trivial, and without the degree condition [F_ṽ:ℚ_p] > n(n−1)/2 + 1), every irreducible component of Spec R^△_v (Geraghty's flag-image ring over Λ_{GL_n,v}, L7/ordinary-flag-scheme) has dimension 1 + n² + [F_ṽ:ℚ_p]n(n+1)/2 and characteristic-zero generic point (Geraghty, §3). L7/trivial-residual-flag-ring (5) gives this only for trivial ρ̄|G_{F_ṽ} and large local degree; BCGP Lemma 5.7.7 is applied at the original field in the last step of the proof of Theorem 5.7.14 (p. 139).
- **`LocalGaloisDeformationRings:R08.2`** (for `OL.4/reasonable-taylor-wiles-places`): Whitmore's local deformation problem at Taylor–Wiles places with semisimple (not necessarily regular) Frobenius, for Ĝ = GSp₄ with fixed similitude and p ≥ 3 (Whitmore, arXiv:2205.05062v3, §3.1, the problem D^TW_v attached to the Levi subgroup M_ḡ centralizing ḡ_v = ρ̄(Frob_v), with q_v ≡ 1 mod p^n): representability and formal smoothness over O[Δ_v], Δ_v the p-part of the k(v)-points of the centre of M_ḡ; the Selmer condition L_v = H¹_ur(F_v, 𝔰𝔭₄) + H¹(F_v, N_v), N_v = Lie Z(M_ḡ) ∩ 𝔰𝔭₄ (Whitmore (3.1)); and the dual condition H¹_ur(F_v, N_v^∨(1)) (Whitmore Lemma 3.14). R08.2/gsp4-taylor-wiles-lifts covers only regular semisimple Frobenius.
- **`SmoothRepresentationsOfLocalGroups:SR.3`** (for `OL.2/uniform-fixed-vectors`): For K/ℚ_l finite and n ≥ 1: (i) the local Langlands correspondence for GL_n(K) carries Bernstein inertial classes bijectively to inertial types (restriction to inertia, with monodromy, of Frobenius-semisimple Weil–Deligne representations); (ii) for any finite set of Bernstein components of GL_n(K) there is a compact open subgroup U ⊂ GL_n(O_K) such that π^U ≠ 0 for every irreducible smooth π in those components. Used for the uniform fixed-vector lemma BCGP Lemma 5.7.12 (whose own proof uses the compatibility of local Langlands with conductors and newform theory instead).

## Open points

- **Geraghty's Hecke-side results at l = 2.** OL.1/dyadic-hida-theory and OL.2/dyadic-hecke-galois-representation rest on Geraghty's Lemmas 2.10, 2.14, 2.17, 2.25, Corollary 2.21, Proposition 2.29 and Corollary 3.4 (published numbering), which Geraghty states for odd l; BCGP §5.7 assert that they hold for l = 2 with the same proofs (and Thorne 2017 Lemma 2.4 for the Galois-representation step). Geraghty's paper was not read for this plan; the l-odd versions are planned at PotentialAutomorphyInfrastructurePartII PL.2. Before formalisation, confirm line by line that no step uses l odd beyond the one BCGP replace.

## Corrections to the sources

The statements above use the corrected readings below (BCGP25, arXiv v1).

- **Lemma 5.7.7, statement, p. 133, arXiv v1** (misprint). The bound is printed as dim Λ = 1 + [F:ℚ]n. Correction: dim Λ = 1 + [F⁺:ℚ]n. Reason: Λ = O⟦T(l)⟧ with T(l) ⊂ ∏_{v|2}(O^×_{F_ṽ})^n of ℤ₂-rank Σ_{v|2} n[F⁺_v:ℚ₂] = n[F⁺:ℚ]; the proof's own count (5.7.8) minus at most n²#T + [F⁺:ℚ]n(n−1)/2 relations gives 1 + [F⁺:ℚ]n, and (5.7.17) uses dim S_∞ = [F⁺:ℚ]n + (n²+1)#T + q. Also recorded by the paper extraction as its E025.
- **(5.7.3), p. 131, arXiv v1** (misprint). The exact sequence defining T(l) ends in ∏_{v∈S_2} k(v)^×. Correction: The quotient is ∏_{v∈S_2} T(k(v)) = ∏_{v∈S_2} (k(v)^×)^n. Reason: T(O_{F⁺_v}) is the diagonal torus (O^×)^n, whose reduction is (k(v)^×)^n. Also the extraction's E024.
- **Proof of Lemma 5.5.3, p. 125, arXiv v1** (misprint). The field index is fixed by K⁺_{m−1} ⊆ F⁺ ⊊ K⁺_m. Correction: Choose m with K⁺_{m−1} ⊆ F⁺ and K⁺_m ⊄ F⁺, so that L⁺ = F⁺K⁺_m is quadratic over F⁺. Reason: F⁺ need not lie in any K⁺_m; only the first m with K⁺_m ⊄ F⁺ is needed, and the argument then goes through. Also the extraction's E023.
- **Remark 5.4.4, display (5.4.5), p. 124, arXiv v1** (misprint). The last term of the inflation–restriction sequence is H²(F(S)/F⁺, k). Correction: The coefficient module of the last two terms is ad r̄: H²(F/F⁺, (ad r̄)^{G_F}) = H²(F/F⁺, k) → H²(F(S)/F⁺, ad r̄). Reason: Inflation–restriction for the normal subgroup G_{F,S} with coefficients ad r̄ ends in H²(G_{F⁺,S}, ad r̄); with k the map need not exist. Also the extraction's E022.
- **Proof of Theorem 5.7.14, p. 138, arXiv v1** (misprint). Over L the set T is replaced by T′ = R′ ∪ {v′₁}. Correction: T′ = S_2(L⁺) ∪ R′ ∪ {v′₁}, with R′ the places of L⁺ above R. Reason: The ordinary condition above 2 must be kept; the problem S_{1} over L includes the places above 2. Also the extraction's E026.
- **§5.4, pp. 121–122, and Definition 6.1.4, p. 141, arXiv v1** (misprint). The global representations are written with domain G_F (the CM field) in §5.4 and G_F (totally real) in §6.1. Correction: The polarized 𝒢_n-valued lifts are representations of G_{F⁺} (G_{F⁺,S}); in §6 the base field is F⁺. Reason: A 𝒢_n-valued lift with r^{−1}(𝒢_n^0) = G_F is a representation of G_{F⁺}; §6 explicitly names the totally real field F⁺. Also the extraction's E063.
- **§5.7, coefficient module M_λ, p. 130, arXiv v1** (misprint). The tensor product defining M_λ is taken over τ ∈ S̃_2. Correction: The tensor product is over τ ∈ Ĩ_2, the embeddings F → E inducing places of S̃_2. Reason: λ is indexed by Ĩ_2 and each factor is the algebraic representation of highest weight λ_τ. Also the extraction's E065.
- **Proposition 5.5.6 (i), p. 126, arXiv v1** (misprint). The sign condition at infinite places is written µ(c_v) = −1. Correction: χ(c_v) = −1, χ being the multiplier character of 𝒮. Reason: No character µ is part of 𝒮 = (F, r̄, O, χ, S, {Λ_v}, {D_v}); the same slip occurs in Thorne 2017 Proposition 2.21 (noted at PotentialAutomorphyInfrastructurePartII PL.3/taylor-wiles-primes-two-adic).
- **Proof of Theorem 5.7.14, p. 137, last lines, arXiv v1** (misprint). Spec R_X is said to lie in the support of H′_{1,∞}. Correction: Spec R_X lies in the support of H_1 (equivalently, the corresponding component lies in the support of H_{1,∞}); the primed module belongs to the second patching step, over L. Reason: At this point of the proof only the patched module H_{1,∞} over F has been constructed; the next sentence restates the claim with H_1.
- **Proof of Theorem 5.7.14, preparation list (p. 135) and final step (p. 139), arXiv v1** (gap). The solvable preparation asks for trivial residual representation and Iwahori-fixed vectors at T but not that every lift of ρ̄|G_{F_ṽ}, v ∈ T ∖ S_2, become unipotently ramified; the final step then asserts a map R′_{L/F,T′} → R^{T,ord} 'by the choice of L'. Correction: Include in the preparation that every lift at v ∈ T ∖ S_2 becomes unipotently ramified over the prepared field (possible by Lemma 5.6.2). Then the restriction to G_L of any lift of type S^{T,ord} is unipotently ramified at R′, unramified at v′₁ and ordinary above 2, hence lies on the union of the components C′_Y, which gives the map. Reason: R^{T,ord} imposes no condition at T ∖ S_2, whereas R′_{L/F,T′} imposes the unipotent condition D^1 at R′; a lift with non-unipotent tame inertia at some v ∈ T ∖ S_2 would not restrict into R′_{L/F,T′}. Lemma 5.6.2, stated just before, supplies exactly the needed extension, so the gap is in the write-up only.
- **§6.3, paragraph before the definition of S_1, p. 147, arXiv v1** (misprint). The unramified characters are specified by χ_1(Frob_v) = α_p and χ_2(Frob_v) = β_p. Correction: χ_1(Frob_v) = α_v and χ_2(Frob_v) = β_v, the stabilization at v fixed in Hypothesis 6.3.1 (3). Reason: F⁺ may have several places above p, each with its own stabilization (α_v, β_v).

## Suggested Lean file

`research/blueprint/suggested/OrdinaryAutomorphicFormsAndModularityLiftingPartII.lean` states the parts with carriers at the pinned libraries: the trace-annihilator form of weak adequacy (BCGP Lemma 5.3.1), the scalar-pairing computation of Lemma 5.5.3, the weight twist u ↦ ∏u_i^{1−i} of the universal ordinary Hecke algebra, sufficient depth for a family of representations with its monotonicity, and the two patching dimension identities. Deformation rings, Hecke algebras and the R = T theorems are targets of this document. The file elaborates at the pins with only the expected unproved-statement warnings.
