# Roadmap: automorphic L-functions and local factors, part II

**Summary.** This roadmap develops classical unitary doubling in a fixed right-action normalization, its holomorphic archimedean test sections, and generalized doubling for split symplectic, special orthogonal and general spin groups. It builds on Fourier analysis, Tate and general-linear local factors, admissible representation theory and Eisenstein continuation. Its end theorems are the meromorphic unitary standard function and Garrett pullback, nonvanishing and normalized algebraicity of critical archimedean integrals, generalized local functional equations and stability, global entireness after sufficiently ramified twists, and weak global and coarse local standard transfer without a genericity hypothesis on the classical representation.

## Scope and ownership

AutomorphicLFunctionsAndLocalFactors, Layers AL.0–AL.4, is the base roadmap. It stops at Fourier analysis, Tate, Godement–Jacquet, generic Rankin–Selberg and parameter/Euler-factor comparisons. Its Representation prerequisites owns GL isobaric sums, and AL.3 owns isobaric strong multiplicity one and its stated GL converse theorems. These constructions are imported here. The outside-S converse theorem with a fixed ramified twisting character in §10.3 has a different testing family and permits nongeneric candidate components. The base's Layer AL.5 owns period, sign and finite-correction interfaces; p-adic interpolation itself belongs to AutomorphicPadicLFunctionsPartII and congruence lattices to AutomorphicCongruences.

SmoothRepresentationsOfLocalGroups, SR.0–SR.5, owns smooth admissible categories, induction, Jacquet functors, Satake theory, Harish–Chandra support and GL segment/multisegment constructors. AutomorphicFormsOnReductiveGroups §§2.1–2.7, 3.4–3.5, 4.1–4.3, 5.3–5.4 and 6.1–6.2 owns their real, globalized and cohomological counterparts. No classification is rebuilt here. The additional local Speh adapter of §5.2 identifies canonical quotient data with the rectangular models over every characteristic-zero local field; it preserves the distinction between a possibly reducible inducing representation and its distinguished irreducible subquotient.

AutomorphicSpectralTheory §§2.1–2.6 owns general Eisenstein continuation, intertwiners and ordered residues, and §4.14a owns number-field residual Speh representations and their local quotient realizations. EndoscopicTransferAndUnitaryTraceComparison §5.1 uses that same residual representation, and §10.29 owns nongeneric GL pair factors. Those constructions are imported. This roadmap owns their generalized-doubling specializations, the two-term constant-term recursion and its nonessential-self-duality holomorphy theorem.

MetaplecticAutomorphicForms §§6.10a–6.11 owns the general classical standard doubling integral, local factors, spherical denominator and completed standard function; §3.15 owns the MVW involution. They are imported. Sections 2.1–2.4 and 3.2–3.4 below are the EHLS right-action, inverse-character, normalized-pairing and flat/dagger comparisons, with their full ramified and archimedean scope. The holomorphic theta criterion and rational projected-kernel comparison of §§4.8–4.10 are additional targets. They do not assert an explicit general vector-weight gamma-value formula.

ReductiveGroups Layer 7 owns rational parabolics and Levi structure. ReductiveGroupsPartII RG2.0, RG2.4 and RG2.5 owns point topologies, local structure and dual/L-groups. OrthogonalSpinGroups Layer 0 owns general-field SO/Spin and their Clifford/isometry comparisons. RepresentationTheory/ClassicalGroups Layers 2–3 owns Schur functors and highest weights. GeometryOfNumbersAndQuadraticArithmetic §2.9 owns signed Hermitian spaces over fields and their adjoints; MetaplecticAutomorphicForms §3.2a owns the split étale pairing. The requested U/GU/GSpin coordinate and reductivity comparisons are supplier extensions, not alternate classical-group foundations. Mathlib owns block matrices, conjugate transpose, Hermitian matrix predicates, trace, additive characters and their elementary algebra. None is introduced again here.

The independent Speh-integral and Asai/general-linear-period continuations are separate mathematical directions. The present targets concern doubling, not newform uniqueness or mixed-truncation periods. General global endoscopic transfer, Arthur packets, integral congruence modules and p-adic measures are outside these layers.

## Conventions

All local fields have characteristic zero. A finite place has residue cardinality q≥2, uniformizer ϖ and |ϖ|=q⁻¹. The additive character ψ:F→ℂ× is continuous, nontrivial and unitary. Self-dual additive measures are chosen relative to ψ; group and quotient Haar measures remain explicit data. A hyperspecial compact subgroup has volume 1 only when the spherical calculation assumes it. Characteristic-zero fields with residue characteristic 2 or 3 are included; |2| is not replaced by 1. Positive real absolute values use the real logarithm in complex powers.

For a quadratic étale algebra E/F, conjugation is its nonidentity F-involution and |z|_E=|N_(E/F)z|_F. For E=ℂ and F=ℝ this is z z̄, so |2|_ℂ=4. For E=F×F it is |xy|_F. A nonsplit unramified quadratic extension has q_E=q_F²; split products have two degree-n general-linear factors. Hermitian forms are conjugate-linear in their first variable. Their split-algebra version uses finite projective constant-rank E-modules, not a field instance on F×F. Similitudes record their multiplier as data, including dimension zero; recovering it from the action requires positive dimension.

Use row vectors and right matrix action for the EHLS parabolic coordinates. The ordered polarization is anti-diagonal then diagonal, A⊕D. Before dual bases are rescaled, their cross-pairing is 2h. The block Gram identity can also be written using columns, after the explicit transpose identification. The radical is skew-adjoint in these unrescaled coordinates; multiplication by a chosen trace-zero unit identifies it with Hermitian matrices. The parabolic's actual modulus is the absolute determinant of its conjugation action on the radical. The separate notation δ_EHLS is not its definition.

The unitary variable is s_U and its standard L-variable is z=s_U+1/2; reflection of z sends s_U to −s_U. The generalized local variable is s_G, centered at 1/2. Its global Eisenstein exponent is s_E=s_G−1/2. For example s_G=1/2 gives s_E=0. A symbol s inside a subsection uses that subsection's convention. Compact-picture entire sections, finite-place Laurent-polynomial sections and meromorphic sections are distinct spaces.

Write C_G^• for the image of e₀∨:Gₘ→GSpin_c and for the trivial group outside GSpin. For c>2 it is the identity component of the center. For GSpin₂=Gₘ×Gₘ it has dimension 1 whereas the full connected center has dimension 2; the doubling kernel and quotients always use C_G^•. The formal GSpin₀ and GSpin₁ tails are Gₘ. This distinction also fixes χ_π as the restriction along e₀∨ (CFK §1, pp.6–7; CFK line 264).

Finite-place representations are smooth admissible complex representations. Archimedean representations use the Casselman–Wallach category, its smooth continuous dual and K-finite Harish–Chandra module. Holomorphic branching concerns the algebraic K-finite restriction, not an unqualified Hilbert direct-sum assertion. Coefficient fields for algebraicity are embedded CM number fields containing the specified compact-type and differential-operator data. The letter E in those statements denotes that coefficient field; it is distinguished from a local quadratic algebra by context. The complex number π in a period exponent is the circular constant, and π in a representation argument is a representation.

All spaces and index types lie in fixed universes; a local algebraic group is finite type and its vector spaces are finite dimensional, while smooth/globalized representations may be infinite dimensional. Adelic restricted products and quotient integration carry the countability, local compactness, second countability and measurability hypotheses of the suppliers. Meromorphic equalities and quotients are equalities of continued families or germs. Values at poles are never obtained by division of infinite values, and the order of the zero germ is treated separately. Empty products equal 1. Parameters requiring n≥1, c>1 or k≥1 retain those bounds, so natural subtraction and out-of-range partitions do not create extra cases.

## Exact supplier contracts

### From Mathlib

Use `Matrix.fromBlocks` in Mathlib/Data/Matrix/Block.lean, line 45, and `Matrix.fromBlocks_multiply`, line 213. The constructor uses compatible rectangular blocks without algebraic assumptions; multiplication needs finite contracted index types and nonunital nonassociative semiring coefficients. Use `Matrix.conjTranspose` in Mathlib/LinearAlgebra/Matrix/ConjTranspose.lean, line 43: transpose followed by the coefficient star operation. Use `Matrix.IsHermitian` in Mathlib/LinearAlgebra/Matrix/Hermitian.lean, line 44: equality with the conjugate transpose, with no positivity or nondegeneracy condition. Use `Matrix.trace` in Mathlib/LinearAlgebra/Matrix/Trace.lean, line 43: the finite diagonal sum over an additive commutative monoid. Use `AddChar` in Mathlib/Algebra/Group/AddChar.lean, line 70: an additive-monoid-to-multiplicative-monoid map preserving zero and addition; continuity, unitarity and nontriviality are extra hypotheses. These exact native carriers supply the block and adjacent-trace calculations of Layers 0 and 5.

### From Tau Ceti

No Tau Ceti module is imported by Suggested.lean. The mathematical build consumes the pinned group, linear-algebra and analytic foundations through the following roadmap contracts; these contracts do not identify planned declarations with executable library data.

### From TauCetiRoadmap.ReductiveGroups and TauCetiRoadmap.OrthogonalSpinGroups

Consume ReductiveGroups Layer 7, rational parabolics, Levi decomposition, root subgroups and Weyl transport for a specified reductive group. Consume OrthogonalSpinGroups Layer 0, the general-field orthogonal/SO carriers and isometry/Clifford action comparisons in characteristic different from 2. Preserve their nondegeneracy and invertibility-of-2 hypotheses. No arbitrary quadratic-étale unitary or general spin group is inferred from a standard complex matrix group.

### From TauCetiRoadmap.ReductiveGroupsPartII

Consume RG2.0.1–RG2.0.2 for rational-point topology and local groups, RG2.0a for restriction of scalars, RG2.4 for local decompositions and the adjoint-determinant modulus, and RG2.5.1–RG2.5.2 for dual groups and L-groups of supplied pinned reductive groups.

What ReductiveGroupsPartII must provide (gap:hermitian-gspin-carriers): For nondegenerate Hermitian forms on finite projective constant-rank modules over every characteristic-zero quadratic étale algebra, provide U and multiplier-recording GU, their base-change, reductivity and block/equal-multiplier comparisons, and provide GSpin as the even Clifford similitude group with distinguished central torus, Clifford action and pinned root-datum comparisons compatible with OrthogonalSpinGroups.

The group comparisons include dimension-zero U=1, multiplier-recording GU=Gₘ, and positive-dimension uniqueness of the multiplier. For split E=F×F, the comparison uses the two idempotents and the paired modules rather than declaring E a field. Restriction of scalars for a CM unitary group is from its fixed field.

### From TauCetiRoadmap.RepresentationTheory.ClassicalGroups

Consume Layers 2–3, the Schur-functor representations and highest-weight classification with the chosen characteristic-zero coefficient field, compact-type duals and highest lines. This roadmap's Layer 4 Cauchy identity specializes this input to polynomial functions on two matrix blocks; no general Schur construction is repeated.

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups

Consume SR.0 admissible smooth carriers; SR.2 normalized induction, Jacquet functors, geometric lemma and matrix coefficients; SR.3.3 Harish–Chandra tempered support and the conditional Langlands classification; SR.4 Satake theory; SR.5.3 segment-representations and highest-derivative-adapter, preserving their distinct submodule and quotient conventions. Every use of the classification retains the exact Harish–Chandra input until the supplier's tempered-support target is proved. The local generalized Speh comparison is constructed in §5.2, using these existing constructors.

What SmoothRepresentationsOfLocalGroups must provide (gap:classical-support-quotient): For an irreducible classical-group constituent with supercuspidal support, realize it as a quotient of normalized induction for Weyl-conjugate support data with the central twists required by quotient multiplicativity.

What SmoothRepresentationsOfLocalGroups must provide (gap:rectangular-orbit-support): Supply generalized nilpotent-orbit Whittaker support and its Jacquet/derivative comparison, including vanishing for larger or incomparable rectangular orbits, on admissible finite-length characteristic-zero complex representations.

### From TauCetiRoadmap.AdelicAlgebraicGroups

Consume §§0.1–0.4 for restricted Haar products and Fubini, AA.1 for adelic group points, and §§2.2–2.3 for compatible quotient measures and central quotients. Their measure-theoretic hypotheses accompany every unfolding.

What AdelicAlgebraicGroups must provide (gap:ramified-hecke-prescription): Given a number field, a finite ramification set and a distinguished place v₀, construct a unitary Hecke character with arbitrarily deep conductor at the other specified places and trivial component at v₀, allowing auxiliary ramification and explicitly stating the global compatibility restrictions, and in the converse application arrange η_v₁²χ_v₁ nontrivial on units at one specified finite place v₁.

### From TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactors

Consume AL.0 Schwartz–Bruhat spaces, vector-space Fourier inversion and Schwartz convolution; AL.1 Tate factors, quadratic characters and norm/conductor conventions; AL.2 Godement–Jacquet integrals; AL.3 generic GL pair factors, their finite/archimedean continuation, global poles, boundary nonvanishing, functional equations and isobaric strong multiplicity one; AL.4 Satake factors and right Euler convergence. Consume Representation prerequisites, GLₙ isobaric sums, for the isobaric constructor. The generic GL converse theorems in AL.3 have their stated testing families; §10.3 proves the fixed-ramified-character variant.

What AutomorphicLFunctionsAndLocalFactors must provide (gap:gamma-supercuspidal-support): For irreducible finite-place GL representations with canonical nongeneric factors, prove that equality of gamma factors against every supercuspidal GL test is equivalent to equality of supercuspidal supports, and prove gamma invariance within each support class.

What AutomorphicLFunctionsAndLocalFactors must provide (gap:formal-candidate-products): For an admissible adelic GL candidate with idele-class central character and absolutely convergent standard Euler product sufficiently far right, prove right convergence of its products twisted by cuspidal GL representations and independence of its global epsilon product from a rational rescaling of the additive character.

### From TauCetiRoadmap.AutomorphicFormsOnReductiveGroups

Consume §§2.1–2.7 for Harish–Chandra modules, normalized real induction, Langlands quotients, real/complex parameters, the generic unitary exponent bound, Dixmier–Malliavin and Casselman–Wallach globalization. Consume §§3.4–3.5 for restricted tensors, §4.2 for cuspidal globalization and actual automorphic occurrences, and §§5.3–5.4 and 6.1–6.2 for Hermitian cohomological modules and rational compact-type structures.

What AutomorphicFormsOnReductiveGroups must provide (gap:standard-archimedean-transfer): For the five split classical families, provide the real/complex standard transfer to GL of their local Langlands parameters with determinant and infinitesimal-character compatibility and the chosen smooth globalizations.

What AutomorphicFormsOnReductiveGroups must provide (gap:opposite-unipotent-estimate): For normalized classical-group Langlands induction in the positive chamber, prove the continuous-seminorm matrix-coefficient estimate giving absolute convergence of the opposite-unipotent integral used in the doubling open-chart reduction.

What AutomorphicFormsOnReductiveGroups must provide (gap:controlled-supercuspidal-globalization): Globalize a prescribed characteristic-zero local field and supercuspidal representation of a split classical group or GL with compatible central data, controlling the other ramified places so that every auxiliary place admits the stable-factor cancellation needed to isolate the prescribed place.

What AutomorphicFormsOnReductiveGroups must provide (gap:archimedean-rectangular-support): On Casselman–Wallach GL representations, supply associated-variety and generalized-Whittaker-support comparison, its behavior under normalized induction, and the continuous rectangular-functional existence and uniqueness implications used in the all-local-field Speh adapter.

### From TauCetiRoadmap.AutomorphicSpectralTheory

Consume §§1.1–1.4 and 2.1–2.6 for convergence, constant terms, smooth meromorphic Eisenstein families, local/global intertwiners and ordered residues. Consume §2.3a for GL normalized-intertwiner estimates, §4.14a for the number-field residual Speh representation and all its local components, and Layer 4 for residual square-integrability and cuspidal-support decomposition. The constant-term and Hermitian-support comparisons needed below are precise additional contracts.

What AutomorphicSpectralTheory must provide (gap:speh-pole-detection): Supply unitary-axis regularity, detection of an Eisenstein pole by its cuspidal constant terms, and the Speh/cusp rank-one normalized-intertwiner holomorphy used in the two-term doubling recursion.

What AutomorphicSpectralTheory must provide (gap:twisted-square-normalizers): For unitary cuspidal GL data with no essential twisted self-duality, prove the global twisted symmetric- and exterior-square normalizing-factor holomorphy and pole criteria needed on the closed doubling half-plane.

What AutomorphicSpectralTheory must provide (gap:hermitian-automorphic-support): Supply Hermitian cuspidal-support symmetry for square-integrable residues and the cuspidal-support theorem for every irreducible automorphic constituent, including nondiscrete constituents, with its ordered inducing exponents.

### From TauCetiRoadmap.EndoscopicTransferAndUnitaryTraceComparison

Consume §10.29, Analytic factors for segments and Langlands quotients, with canonical ordered GL quotient data and nongeneric pair-factor products. Section 5.1's global residual block is the same AutomorphicSpectralTheory §4.14a representation used here. No global endoscopic classical-group transfer theorem is an input to the transfer proved in Layer 10.

### From TauCetiRoadmap.GeometryOfNumbersAndQuadraticArithmetic

Consume §2.9, signed Hermitian spaces over fields, their adjoints and trace-transfer comparison, with sign +1 for unitary doubling. The quadratic-étale split case uses MetaplecticAutomorphicForms §3.2a. The ReductiveGroupsPartII contract asks for the group/reductivity and coordinate comparisons of these supplied forms.

### From TauCetiRoadmap.MetaplecticAutomorphicForms

Consume §3.2a's split quadratic-étale Hermitian carrier, §§3.3a–3.3b's unitary splitting data and §§3.5–3.7's local theta carriers, §3.15's MVW involution, and §§6.10a–6.11's classical standard doubling integral, factors and completed product. The normalization transport in Layers 1–3 must compare its parabolic, character, parameter, measures and vector pairing individually. Section 4.9 constructs the specialized holomorphic theta-image and projected-integral nonvanishing theorem used here from the supplied oscillator/local theta carriers, rather than assuming that every nonzero theta correspondence supplies that particular critical vector.

## How to read the build

Layer 0 fixes the geometry and standard dual representations. Layers 1–3 construct the EHLS section comparison, its local normalization dictionary and global pullback. Layer 4 supplies holomorphic test sections and their critical nonvanishing and period. Layer 5 constructs rectangular models, their geometry and estimates before Layer 6 defines generalized local factors. Layer 7 proves pole attainment through auxiliary GL integrals, while Layer 8 independently proves Eisenstein holomorphy. Layer 9 combines them into completed factors, functional equations, strip bounds and ramified-twist entireness. Layer 10 then applies the specialized converse theorem and proves weak/global and coarse/local transfer. Every stated source comparison is a construction to prove, not an unverified hypothesis standing for its desired conclusion. Suggested.lean records the headline signatures that can be expressed on native carriers; its module docstring identifies the seventeen headlines whose representation-theoretic carriers require this build.

## Layer 0: doubled spaces and classical standard data

### 0.1 the doubled hermitian space

Let E/F be a quadratic étale algebra in characteristic zero, with involution x↦x̄, and h a nondegenerate hermitian form on the n-dimensional E-space V. Define W=V⊕V with h_W((x,y),(x′,y′))=h(x,x′)−h(y,y′), D={(x,x)} and A={(x,−x)}. Then W=A⊕D, both summands are maximal isotropic, and h_W((x,−x),(y,y))=2h(x,y). The inverse decomposition sends (u,v) to ((u−v)/2,(u+v)/2). The block action gives U(V)×U(−V)→U(W); for similitudes use the equal-multiplier fiber product.

Assume E/F quadratic étale; char(F)=0; h nondegenerate; n≥0, with the zero-dimensional case included. (EHLS, §4.1.1, pp.43–44; EHLS line 1850.)

Prove the following basic properties of this construction.

- In an h-basis the Gram matrix is Matrix.fromBlocks H 0 0 (−H).

- A⊕D≃W has the inverse displayed in the definition.

- The isometry embedding respects multiplication; the similitude embedding is defined on matching multipliers.

- An isometry of hermitian spaces induces the doubled isometry, preserving A and D and commuting with the polarization equivalence.

- A linear map from W is determined by its restrictions to A and D; equality of doubled forms follows from their four polarization blocks.

**Checks.**

- For h(x,y)=x̄y, the doubled Gram matrix is diag(1,−1) and the diagonal vector is isotropic.

- The same construction for V=0 gives W=0 and both isotropic subspaces zero.

- For the rank-one unit vectors in A and D the pairing is 2, rather than 0 or 1.

Additional normalization checks:

- For h=1, h_W((1,1),(1,1))=0 and h_W((1,−1),(1,1))=2; replacing the opposite form by h gives 2 and 0 instead.
- For (u,v)=(3,1), the inverse coordinates are (1,2) and reconstruct (3,1); omitting the halves reconstructs (6,2).
- At rank zero the form and both summands are zero; multiplier-recording GU still has every λ∈F×, so uniqueness of λ from the zero action fails.

A proof can proceed as follows: Form h⊕(−h) on the hermitian-space carrier required in the concrete-group supplier contract; the complex matrix milestone uses the native block-matrix carrier only. Use 2 invertible to construct mutually inverse diagonal/antidiagonal coordinates. Check preservation of the form and the equal-multiplier condition directly.

The U/GU constructions use the supplied signed Hermitian field form and split étale form. The comparison is invariant under isometry and compatible with extension of the ground field; no chosen basis is part of the underlying doubled space.

*Needs:* `Matrix.fromBlocks`; `Matrix.IsHermitian`; ReductiveGroups Layer 7 (parabolics and Levi theory); the concrete-group contract from ReductiveGroupsPartII.

### 0.2 siegel parabolic and modulus conventions

Let P=Stab(D) in GU(W). Use row vectors with matrices acting on the right, so P is block upper triangular. With the ordered polarization A⊕D, its Levi is GL_E(V)×G_m: m(B,λ) acts as diag(λ(B*)⁻¹,B), where B* is the adjoint for h. In these unrescaled coordinates its unipotent radical consists of blocks [[1,X],[0,1]] with X skew-adjoint for the cross-pairing. Fixing a nonzero trace-zero scalar t∈E identifies X=tY with a hermitian coordinate Y; this coordinate change is explicit, including for E=F×F. Conjugation by m(B,λ) sends X to λ(B*)⁻¹XB⁻¹. Write Δ(p)=p|D and ν(p)=λ. Keep δ_EHLS(p)=|det_E Δ(p)|_E^n distinct from the actual group modulus δ_mod. On U(W), with this ordering, δ_mod(m(B,1))=|det B|_E^(−n)=δ_EHLS⁻¹. On GU(W) the full formula is δ_mod(m(B,λ))=|λ|_F^(n²)|det B|_E^(−n), because Lie(N) has F-dimension n². This is the absolute F-determinant of the displayed conjugation action.

Assume n≥1; the polarization and norm convention of §0.1; |z|_E=|N_E/F z|_F. (EHLS, §4.1.1–4.1.2, p.44; EHLS line 1862.)

Prove the following basic properties of this construction.

- Identify M with GL_E(V)×F× and record the restrictions Δ and ν.

- The skew-adjoint block space is the additive radical N; the chosen trace-zero scalar transports it to hermitian coordinates and preserves addition.

- δ_mod(m(B,λ))=|λ|_F^(n²)|det B|_E^(−n); its restriction to U is δ_EHLS⁻¹.

- Two Levi elements agree iff their D-coordinate B and multiplier λ agree.

- Every p∈P factors uniquely as a Levi element times a radical element; multiplication uses the displayed conjugation of X.

**Checks.**

- For n=1, λ=1, the actual modulus is |B|_E⁻¹.

- For B=t·Id and λ=t t̄, the Levi element is scalar, so its true modulus is 1.

- Two unipotent elements with coordinates X,Y multiply to the element with coordinate X+Y.

Additional normalization checks:

- For n=1, |B|_E=4 and λ=1, the radical scales by 1/4, giving modulus 1/4 rather than 4.
- For B=2I_n and λ=4 over ℂ/ℝ, |λ|^(n²)|det B|_E^(−n)=4^(n²)4^(−n²)=1.
- For skew coordinates X=i and Y=2i in rank one, n(X)n(Y)=n(3i); n(i)n(−i)=1.

A proof can proceed as follows: Use row-vector right action to identify the upper block stabilizer, and derive skew-adjointness from the cross-form; record the trace-zero rescaling used for hermitian coordinates. Compute conjugation on the hermitian unipotent block and its F-determinant. Derive both modulus characters from that action; do not equate a paper notation with δ_mod.

*Needs:* §0.1; ReductiveGroups Layer 7 (parabolics and Levi theory); AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures); the concrete-group contract from ReductiveGroupsPartII.

### 0.3 classical groups and standard transfer degree

For the split characteristic-zero groups G=Sp_c (c even), SO_c, or GSpin_c, with c>1 in the main transfer theorem, fix a pinning and the standard representation r of the complex dual group. For Sp_(2n), SO_(2n), SO_(2n+1), GSpin_(2n), GSpin_(2n+1), the standard degree N is respectively 2n+1,2n,2n,2n,2n. Define χ_π=1 outside GSpin; in GSpin it is the central character restricted along e₀∨:F×→C_G^•. The determinant character of r∘t_π is 1 outside GSpin and χ_π^n for GSpin_(2n) or GSpin_(2n+1). General root data and dual groups are imported from ReductiveGroups and ReductiveGroupsPartII; the general-field SO carrier is imported from OrthogonalSpinGroups. Use the concrete-group supplier contract for the U/GU and GSpin comparisons.

Assume local or global characteristic-zero field; admissible irreducible π locally or cuspidal π globally; fixed pinning. (CFK, §1, pp.6–8; §3.1–3.2, pp.10–12; CFK line 250.)

Prove the following basic properties of this construction.

- Return the five degrees N and their dual groups.

- Restrict the GSpin central character along e₀∨, with value 1 for the other families.

- The determinant of each standard transfer has the character specified above.

- Pinned isomorphisms transport r and the distinguished-central-torus embedding, preserving N and the determinant formula.

**Checks.**

- Sp₂ has N=3, not 2.

- SO₃ has N=2, not 3.

- For GSpin_(2n+1), the determinant of the standard similitude representation is χ_π^n; the determinant is trivial when χ_π=1.

Additional normalization checks:

- For Sp₂ the dual standard degree is 3 and determinant 1; for SO₃ the degree is 2.
- For GSpin₅, a scalar dual similitude tI₄ has χ=t² and determinant t⁴=χ², not χ.
- For GSpin₃ the degree is 2 and determinant χ; χ=1 gives determinant 1.
- For GSpin₂, dim(center)=2, dim(C_G^•)=1 and dim(G/C_G^•)=1. Quotienting by the whole connected center would instead give dimension 0 and would change the integral.

A proof can proceed as follows: Use the imported root-data and dual-group construction once the concrete group and comparison data required in the concrete-group supplier contract have been supplied. Identify the distinguished central torus in the general spin cases. Compute the determinant of the standard dual representation, retaining its central character.

*Needs:* ReductiveGroups Layer 7 (parabolics and Levi theory); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); ReductiveGroupsPartII §§RG2.5.1–RG2.5.2 (dual groups and L-groups); the concrete-group contract from ReductiveGroupsPartII.

### Examples

In rank one, h(x,y)=x̄y gives h_W((1,−1),(1,1))=2. For (u,v)=(3,1), the anti-diagonal and diagonal coordinates are 1 and 2, and (1,−1)+(2,2)=(3,1). On the split algebra E=F×F take the trace-zero unit (1,−1); its two idempotents have product zero, so a field-only Hermitian carrier cannot cover this example. For n=0, U(0)=1; if similitudes are pairs, GU(0)=Gₘ and the multiplier cannot be recovered from its action on the zero space.

### Dependencies

The geometric construction uses no later analytic layer. The direct supplier inputs are `Matrix.fromBlocks`; `Matrix.IsHermitian`; ReductiveGroups Layer 7 (parabolics and Levi theory); AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); ReductiveGroupsPartII §§RG2.5.1–RG2.5.2 (dual groups and L-groups).

## Layer 1: unitary induced sections and Eisenstein series

### 1.1 unitary degenerate principal series

Use right translation and normalized induction. For a quasi-character χ:E×→C× and s∈C define I_EHLS(χ,s)=i_P^GU(W)(χ(det Δ)·δ_EHLS^(−s/n)·|ν|_F^(sn/2)); thus functions transform on the left by δ_mod^(1/2) times this inducing character. Work on U(W) by restriction, and globally with the corresponding Hecke character. Entire sections are holomorphic in the fixed compact picture; at finite places polynomial sections are finite Laurent polynomials in q^(−s). The passage to the usual left-action inducing convention is an explicit inverse-character and parameter change, never an implicit renaming.

Assume n≥1; Layer 0 conventions; continuous quasi-character χ; fixed positive real logarithm in complex powers. (EHLS, §4.1.2, p.44; §4.3.1, (54), pp.51–52; EHLS line 1882.)

Prove the following basic properties of this construction.

- The covariance is the complete δ_mod^(1/2)χ(det Δ)δ_EHLS^(−s/n)|ν|^(sn/2) covariance.

- All parameter fibers have the same compact-picture carrier.

- Restriction to multiplier 1 removes exactly the ν factor.

- Extend a smooth compact-picture function satisfying the P∩K covariance uniquely to the normalized induced representation.

- Sections in a fixed fiber agree if their restrictions to K agree; families agree if all compact-picture evaluations agree.

**Checks.**

- At s=0 the covariance is δ_mod^(1/2)χ(det Δ).

- On split U(1,1), the character on the D-coordinate gives χ⁻¹ in the spherical standard factors after unfolding.

- Multiplying χ by |·|_E^t changes the determinant exponent by t, without changing the half-modulus.

Additional normalization checks:

- At n=1,s=0, χ=1 and |B|_E=4, covariance is 1/2 from the half-modulus.
- Changing χ by |·|_E raises that determinant factor by 4; at the same B the covariance becomes 2.
- At split rank one X=1/2,Y=1/3 the inverse-character convention gives Z=5/2; exchanging χ and χ⁻¹ changes X,Y for a character with χ(ϖ)=2.

A proof can proceed as follows: Apply normalized induction from the existing smooth or Casselman–Wallach category. Restrict all family members to a common maximal compact subgroup. Compute the transformation law under Δ and ν before changing character or parameter conventions.

*Needs:* §0.2; SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); AutomorphicSpectralTheory §§1.1–1.4 (Eisenstein convergence and constant terms).

### 1.2 godement sections from Schwartz functions

At a split place E=F×F, identify the relevant factor with GL_(2n)(F), write χ₁=χ_w and χ₂=χ_wbar⁻¹, and let Φ be a Schwartz–Bruhat function on Mat_(n,2n)(F)=Hom_F(F^n,F^(2n)). Use the second row block (0,X) in the ordered polarization A⊕D, and set f_Φ(g)=χ₂(det g)|det g|^(n/2+s)∫_(GL_n(F)) Φ((0,X)g)χ₁⁻¹χ₂(det X)|det X|^(n+2s)d×X in its convergence region, then meromorphically. For p=[[A,B],[0,D]], changing variables Y=XD gives f_Φ(pg)=χ₂(det A)χ₁(det D)|det A/det D|^(n/2+s)f_Φ(g). This is first an isometry-group construction (ν=1); extension to GU requires the separate central covariance computed in this subsection, rather than the incomplete multiplier formula in (54). This is the general section construction in (55); the ordinary Schwartz choices belong to AutomorphicPadicLFunctionsPartII.

Assume split local place; χ₁,χ₂ as above; fixed right Haar d×X; Φ Schwartz–Bruhat; initial Re(s) sufficiently large. (EHLS, §4.3.1, equations (54)–(55), pp.52–53; EHLS line 2228.)

Prove the following basic properties of this construction.

- The assignment Φ↦f_Φ is linear on its convergence domain and on the continued family.

- For p=[[A,B],[0,D]], f_Φ(pg)=χ₂(det A)χ₁(det D)|det A/det D|^(n/2+s)f_Φ(g) on ν=1.

- Right translation of g corresponds to the same right translation of Φ.

- Equal Schwartz functions give equal sections, first on the convergence half-plane and then as continued meromorphic families.

**Checks.**

- Φ=0 gives the zero section.

- For n=1 the inner integral is a Tate integral with exponent 1+2s.

- Replacing d×X by a·d×X multiplies the section by a, rather than leaving it unchanged.

- For n=1 and p=diag(a,1), (0,x)p=(0,x), and the section scales by χ₂(a)|a|^(1/2+s). Choosing (x,0) would produce the wrong character.

Additional normalization checks:

- For Φ=0 the integral is 0 and every translated section is 0.
- For n=1,s=0,p=diag(4,1), trivial characters give scaling 2; the wrong row changes the inner variable.
- Replacing d×X by 3d×X takes a section of value 2 to value 6.

A proof can proceed as follows: Use the AutomorphicLFunctionsAndLocalFactors AL.0 Schwartz carrier on the matrix space and the AutomorphicLFunctionsAndLocalFactors AL.2 determinant-integral estimates. Use (0,X)p=(0,XD), set Y=XD, and use the unimodularity of GL_n to derive the displayed covariance, including both characters and the determinant ratio. Transport the construction to the EHLS family by the explicit split-group identification.

*Needs:* §1.1; AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis); AutomorphicLFunctionsAndLocalFactors Layer AL.2 (Godement–Jacquet theory).

### 1.3 degenerate Siegel Eisenstein continuation

Over a number field F with quadratic CM extension E, form E(f,s,g)=Σ_(P(F)⧸GU(W)(F)) f(s,γg), or its restriction to U(W). For a smooth K-finite section the sum converges absolutely and locally normally for Re(s) sufficiently large, extends meromorphically to C as an automorphic family, and satisfies the Siegel intertwining functional equation under the affine parameter conversion from §1.1. The general AutomorphicSpectralTheory §§1.1–1.4 cusp-data theorem cannot be applied directly to the noncuspidal character χ∘det on GL_n: obtain this section by ordered residues of cuspidal GL₁ data, prove compatibility of residues with induction, summation and the intertwiner, and retain the central similitude character.

Assume number field; unitary Hecke character with norm twists absorbed into the parameter; finite K-type section; coherent quotient measures. (EHLS, §4.1.3, p.45; §4.1.4, pp.45–48; EHLS line 1893; HLS, §3.1, internal pp.43–49; HLS line 1704.)

A proof can proceed as follows: Express χ∘det on GL_n as the appropriate residual quotient of a character principal series. Apply AutomorphicSpectralTheory §§2.1–2.6 continuation and ordered residue calculus to the Borel-induced family. Compare the resulting residue with the degenerate Siegel series and its Weyl intertwiner, including the affine parameter change.

*Needs:* §1.1; AutomorphicSpectralTheory §§1.1–1.4 (Eisenstein convergence and constant terms); AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicSpectralTheory §4.14a (number-field residual Speh blocks).

### Examples

For n=1 and p=diag(a,1), the Godement section scales by χ₂(a)|a|^(1/2+s). Taking a=4, χ₂=1 and s=0 gives 2. The alternative row (x,0) changes the integration variable and gives a different character. At s=0 the induced covariance is precisely the true half-modulus times χ. The raw determinant exponent in the one-variable integral is 1+2s.

### Dependencies

This layer follows Layer 0. The direct supplier inputs are SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); AutomorphicSpectralTheory §§1.1–1.4 (Eisenstein convergence and constant terms); AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis); AutomorphicLFunctionsAndLocalFactors Layer AL.2 (Godement–Jacquet theory); AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicSpectralTheory §4.14a (number-field residual Speh blocks).

## Layer 2: unitary local normalization comparisons

### 2.1 local unitary doubling integral

Use the local integral of MetaplecticAutomorphicForms §§6.10a–6.11. Prove its comparison with the EHLS right-action family, preserving the unnormalized evaluation pairing; the formula below specifies that comparison, rather than a second local integral. For an irreducible admissible π of U(V)(F), v∈π and ℓ∈π∨ with the continuous evaluation pairing, its transported expression is Z_U(s,f,v,ℓ)=∫_U(V)(F) f(s,ι(g,1))ℓ(π(g)v)dg in its absolute-convergence half-plane. Its continued value is a meromorphic trilinear functional, rational in q^(−s) at finite places and continuous on the archimedean smooth models. If ℓ(v)≠0 set I_U=Z_U/ℓ(v); retain Z_U as primary because this division is unavailable on orthogonal vectors. The finite-place Haar convention is vol(U(V)(O_F))=1 when this is hyperspecial.

Assume Characteristic-zero local field; π smooth admissible at finite places or Casselman–Wallach at infinity; compatible section and Haar. (EHLS, §4.1.4, equations (49)–(51), pp.46–48; EHLS line 1971.)

Prove the following basic properties of this construction.

- Z_U is linear in section, vector and smooth dual vector.

- I_U·ℓ(v)=Z_U whenever ℓ(v)≠0.

- Scaling dg by a scales both Z_U and I_U by a.

- A representation isomorphism and its dual inverse preserve the evaluation matrix coefficient, hence the integral with the same section and measures.

**Checks.**

- Z_U(s,f,0,ℓ)=0 although normalized I_U is not defined on that data.

- Replacing ℓ by bℓ for b≠0 leaves I_U unchanged and multiplies Z_U by b.

- For compact U(V), with f|ι(U,1)=1 and π trivial, Z_U=vol(U(V))·ℓ(v).

Additional normalization checks:

- For v=0, Z_U=0 and ℓ(v)=0; the displayed normalized quotient has no meaning there.
- For a nonzero pairing 2 and Z_U=6, I_U=3; scaling ℓ by 5 gives pairing 10 and Z_U=30, still I_U=3.
- For the trivial representation of a compact group of Haar mass 7, with f=1 and pairing 2, Z_U=14 and I_U=7.

A proof can proceed as follows: Bound the matrix coefficient and the section along the Cartan decomposition. Continue by the unitary doubling uniqueness/intertwining argument; the precise comparison is in the exact unitary normalization comparison of §§1.3 and 2.4. Divide by the pairing only on its nonzero locus.

The comparison map has source the EHLS induced fiber and target the supplied classical doubled induction, followed by restriction along U(V)→U(W). It tracks the inverse inducing character, affine parameter and Haar scalar, and is natural under representation transport. It also includes ramified open-cell sections: choose the lattice inside the fixing subgroup and the conductor of χ(det(1−x)), and retain the scalar attached to the chosen Weyl representative (EHLS Lemma 4.2.3, p.50; EHLS line 2129).

*Needs:* §0.1; §1.1; SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis); MetaplecticAutomorphicForms §6.10a (canonical classical factors).

### 2.2 unitary unramified denominator

Identify the supplied classical doubling denominator of MetaplecticAutomorphicForms §6.10a with the following indexed Tate product in the EHLS convention. For an unramified quadratic étale E/F, residue norm q_F, associated quadratic character η of F×, and unramified χ:E×→C×, write the supplied denominator as d_n(s,χ)=∏_(r=0)^(n−1) L_F(2s+n−r,χ|F×·η^r), using the AutomorphicLFunctionsAndLocalFactors AL.1 Tate factors. Under the EHLS right-action convention the denominator used in the spherical integral is d_n(s,χ⁻¹). The standard numerator is the degree-n base-change factor over E; at a nonsplit place its expression in q_F^(−s) has degree 2n. Keep the local-field normalization explicit rather than calling it a degree-n polynomial over F.

Assume unramified local data; unramified quadratic extension or split algebra; self-dual additive measures and hyperspecial Haar convention. (EHLS, §4.2.1, (53), pp.48–49; EHLS line 2081.)

Prove the following basic properties of this construction.

- The denominator consists of the n Tate factors with the index r and η parity.

- d_(n+1)(s,χ)=d_n(s+1/2,χ)·L_F(2s+1,χ|F×·η^n).

- The right-action spherical identity uses d_n(s,χ⁻¹), not d_n(s,χ).

- The n=0 product is 1; this is a boundary convention for the denominator, not an n=0 induced-series construction.

**Checks.**

- d₀=1.

- d₁(s,χ)=L_F(2s+1,χ|F×).

- d₂=L_F(2s+2,χ|F×)L_F(2s+1,χ|F×η); replacing η by 1 fails at a nonsplit place.

Additional normalization checks:

- The empty product d₀ is 1, while n=0 remains excluded from the induced-family formula with s/n.
- For q=2 and trivial χ, d₁(0)=2; for n=2 and η(ϖ)=−1, d₂(0)=8/9.
- The recurrence at n=1,s=0 gives d₁(1/2)=4/3 and the new η-factor 2/3, whose product is 8/9.

A proof can proceed as follows: Build the finite product out of Tate factors. Compare χ and χ⁻¹ using the inducing transformation law. Record base-change degree over E and the different residue norm over F.

*Needs:* §1.1; AutomorphicLFunctionsAndLocalFactors Layer AL.1 (Tate factors); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); MetaplecticAutomorphicForms §6.10a (canonical classical factors).

### 2.3 unramified unitary doubling formula

Transport the spherical identity of MetaplecticAutomorphicForms §6.10a through that denominator and inverse-character comparison. For hyperspecial spherical section f° with f°(1)=1 and spherical vectors with ℓ(v)=1, prove d_n(s,χ⁻¹)Z_U(s,f°,v,ℓ)=L_E(s+1/2,BC(π)⊗χ⁻¹). At a split rank-one place write π=β, χ=(χ_w,χ_wbar), X=β(ϖ)χ_wbar(ϖ)⁻¹q^(−s−1/2), Y=β(ϖ)⁻¹χ_w(ϖ)⁻¹q^(−s−1/2). Directly Z_U=1/(1−X)+Y/(1−Y)=(1−XY)/((1−X)(1−Y)). This computes both the inverse character and the missing cross-factor. The nonsplit general-rank computation must be supplied from the spherical doubling calculation, with its normalization comparison retained in the exact unitary normalization comparison of §§1.3 and 2.4.

Assume unramified π and χ; spherical normalized data; initial convergence domain, then rational continuation. (EHLS, §4.2.1, pp.48–49, with the stated right-action convention; EHLS line 2081.)

A proof can proceed as follows: Use Iwasawa/Cartan and spherical matrix coefficients to express the integral as a Satake series. Identify the symmetric-function series with the standard base-change Euler product and the Tate denominator. Independently sum the two rank-one geometric series to detect inverse-character mistakes.

*Needs:* §2.1; §2.2; SmoothRepresentationsOfLocalGroups Layer SR.4 (Satake theory); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); MetaplecticAutomorphicForms §6.10a (canonical classical factors).

### 2.4 unitary local functional equation

Transport the normalized local functional equation of MetaplecticAutomorphicForms §6.10a to the precise opposite family in §1.1. The meromorphic functionals Z_U for I_EHLS(χ,s) and its opposite Siegel induction are proportional after the standard intertwiner, outside a discrete exceptional parameter set. Normalize the proportionality using the degenerate Whittaker functional and require the unramified ratio from §2.3; translate to z=s+1/2 before writing z↔1−z. The normalized intertwiner has inverse obtained with χ⁻¹ and ψ⁻¹. This target includes finite-place rationality, archimedean continuity and the local functional equation used by the completed global unitary L-function; it does not assert a general unitary local Langlands correspondence.

Assume Irreducible admissible π; nontrivial additive character and self-dual Haar; the right/left convention comparison in the exact unitary normalization comparison of §§1.3 and 2.4. (EHLS, §4.1.3–4.1.4, pp.45–48; EHLS line 1893.)

A proof can proceed as follows: Analyze the finite set of unitary doubling orbits and kill all closed-orbit functionals for generic parameter. Compare the two nonzero local zeta functionals through the intertwiner. Fix its scalar by degenerate Whittaker normalization and the explicit unramified computation, then continue meromorphically.

Construct the section-transport isomorphism before identifying either functional equation; specify its source and target normalized induction with the same ψ and quotient measure. Compare the degenerate Whittaker functionals on a nonzero common test section. This determines the full meromorphic normalization scalar in the nonsplit and ramified cases, in addition to the spherical comparison.

*Needs:* §2.1; §2.3; AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); MetaplecticAutomorphicForms §6.10a (canonical classical factors).

### Examples

At split rank one take X=1/2 and Y=1/3 in the convergence domain. The two geometric tails give 2+1/2=5/2, while the standard Euler product is 2·3/2=3 and d₁=1/(1−1/6)=6/5; thus d₁Z=3. For n=2 at a nonsplit place η(ϖ)=−1, so the denominator contains both 1−a q^(−2s−2) and 1+a q^(−2s−1). Taking q=2, a=1, s=0 gives d₂=8/9; replacing η by 1 gives 8/3.

### Dependencies

This layer follows Layer 0, Layer 1. The direct supplier inputs are SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis); AutomorphicLFunctionsAndLocalFactors Layer AL.1 (Tate factors); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); SmoothRepresentationsOfLocalGroups Layer SR.4 (Satake theory); AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients).

## Layer 3: unitary pullback and standard L-functions

### 3.1 unitary doubling identity

For cuspidal automorphic π on U(V)(A_F), a specified realization of its dual on U(−V), decomposable cusp vectors φ,φ♭ and section f, form the center-compatible double Eisenstein period with the determinant twist. Unfolding expresses it as an integral against the matrix coefficient of the chosen global Petersson pairing P. When every selected local pairing and P(φ,φ♭) is nonzero, and distinguished good vectors have local pairing 1, it equals P(φ,φ♭) times the product of normalized local integrals I_U,v, with the global/local pairing comparison retained. For orthogonal vectors the primary assertion uses the unnormalized trilinear functionals. A zero value P(φ,φ♭) does not force this period to vanish: convolution can move φ before pairing. Vanishing for inequivalent contragredient representation types follows from the invariant Petersson pairing, with the automorphic realization hypotheses stated; general global multiplicity one is not assumed.

Assume cuspidal automorphic realizations; central-character cancellation; fixed compatible invariant pairings; good local pairings normalized to 1; nonzero pairings only for the divided formula. (EHLS, §4.1.4, (49)–(51), pp.45–48; EHLS line 1971; HLS, §3.1.2–3.1.3, internal pp.45–48; §3.2.1, pp.49–50; HLS line 1789.)

A proof can proceed as follows: Unfold along P(F)⧸U(W)(F)/(U(V)×U(−V))(F). Use cuspidality to remove every nonopen orbit and identify the open orbit with the diagonal pairing. Factor the open-orbit integral with coherent quotient measures and apply Schur orthogonality to distinct representation types.

*Needs:* §1.3; §2.1; AutomorphicFormsOnReductiveGroups §§4.1–4.3 (globalization, cuspidality and pairings); AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures).

### 3.2 unitary MVW comparison

Use the MVW involution of MetaplecticAutomorphicForms §3.15 on the unitary groups; construct its comparison with EHLS flat/dagger realizations and determinant twists. Choose an F-linear conjugate-linear isometry j:V→V, meaning j(ax)=āj(x) and h(jx,jy)=overline(h(x,y)), with j²=1 in a diagonal hermitian basis. Conjugation by j defines an involution θ of U(V). For every irreducible admissible π over a characteristic-zero local field, identify the supplied MVW isomorphism class π∘θ≃π∨ in these coordinates; the comparison is an isomorphism class, not a canonical choice of a nonzero intertwiner. Transport this through the identification of U(V) and U(−V) and through the χ∘det twist used in the global pairing.

Assume nondegenerate hermitian V; diagonalization over E/F; smooth admissibility or Casselman–Wallach category. (EHLS, §6.5.3, equation (143), p.101; §9.1.3, p.150; EHLS line 4495.)

Prove the following basic properties of this construction.

- θ²=Id and θ respects multiplication.

- π∘θ is isomorphic to the smooth contragredient π∨.

- Changing the diagonalization changes the involution by an inner automorphism, preserving the isomorphism class.

- Pullback by the chosen involution is a functor on representations and continuous intertwining maps, with its square naturally identified with the identity.

**Checks.**

- On the norm-one torus, every character is sent to its inverse.

- The trivial representation is fixed.

- Applying θ twice recovers π, compatibly with admissible smooth biduality.

Additional normalization checks:

- For a norm-one scalar z and character z², θ sends z² to z⁻²; at z=i both equal −1, whereas at z=exp(iπ/6) the two values are distinct conjugates.
- For the trivial representation both pullback and dual are 1.
- For a scalar similitude of multiplier 4, multiplier twists 4^0=1 and 4^1=4 have the same restriction to U and different GU values.

A proof can proceed as follows: Diagonalize h and construct conjugation j explicitly. Prove the MVW contragredient theorem in the imported smooth/real representation setting; original proof access is recorded in the unitary contragredient comparison of §3.2. Compare the resulting involution with EHLS dagger/flat notation and its determinant twist.

The EHLS similitude comparison has source the chosen GU representation pulled back by its flat/dagger automorphism and target its contragredient tensored with the explicitly computed multiplier character. The multiplier twist is determined by evaluating both central actions; equality after restriction to U alone does not determine it (EHLS (143), p.101; EHLS line 4495).

*Needs:* §0.1; SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); MetaplecticAutomorphicForms §3.15 (MVW).

### 3.3 garrett pullback map

For a fixed cusp realization π and meromorphic section f set G_f(φ)(g₂)=χ(det g₂)⁻¹∫_[U(V)]E(f,s,ι(g₁,g₂))φ(g₁)dg₁. The section remains a variable of this bilinear operator. Pairing the output with φ′∈π∨ gives the doubling period, so the output lies in (π∨)∨≃π, realized on U(−V) with the indicated flat/dagger identification. EHLS Theorem 9.1.3 explicitly has output π. At its nearly holomorphic critical specialization, the corresponding Hecke eigenpacket is π with the prescribed Hecke involution. For arbitrary fixed f do not assert that G_f commutes with every Hecke operator: equivariance involves the simultaneous section action or the specialized Hecke-compatible section.

Assume cuspidal π and fixed realization; central-character compatibility; multiplicity/pairing hypothesis when used; critical nearly holomorphic data for the specialized Hecke assertion. (EHLS, §9.1.1–9.1.4, (178) and Theorem 9.1.3, pp.149–150; EHLS line 6350.)

Prove the following basic properties of this construction.

- Pairing G_f(φ) with φ′ equals the global doubling period.

- The map is linear in f and φ.

- At the specialized nearly holomorphic section, the Hecke action is transported through the specified flat involution.

- Transport the chosen cusp embedding and its dual pairing together; the resulting map has the same automorphic output under the transported realization.

**Checks.**

- f=0 gives zero output.

- G_(af)(φ)=aG_f(φ).

- On a non-self-dual π, the output pairs naturally with π∨ and belongs to π after the function-model identification.

Additional normalization checks:

- For f=0 the pullback is 0; replacing a section with value 1 by 3f makes its paired value 3.
- A character χ of order 3 gives output character χ and pairs with χ⁻¹; χ≠χ⁻¹.
- Transporting a cusp embedding by a scalar 2 and its dual by 1/2 keeps the evaluation pairing 1.

A proof can proceed as follows: Use rapid decay to define the pullback in a right half-plane. Identify its pairing with each dual cusp vector by §3.1. Use admissible biduality and the EHLS specialized Hecke action to identify the image; continue meromorphically.

*Needs:* §3.1; §3.2; AutomorphicFormsOnReductiveGroups §§3.4–3.5 (restricted tensor realizations).

### 3.4 unitary standard L-function from doubling

Identify the completed standard function supplied by MetaplecticAutomorphicForms §6.10a with the Euler product extracted from the EHLS period. For cuspidal π of U(V)(A_F) and Hecke character χ of A_E×/E×, the partial Euler product L_E^S(z,BC(π)⊗χ⁻¹), defined at good places by Satake and z=s+1/2, has meromorphic continuation obtained from the doubled Eisenstein period. Completing it with the local factors defined by the unitary local functional equation gives its global functional equation with z↔1−z and the dual/inverse-character data. The assertion is meromorphic; no general entireness, base-change automorphy, or value formula follows solely from this construction.

Assume cuspidal π; finite S containing ramification and infinity; selected nonzero local data at each prescribed z; coherent measures and local normalization. (EHLS, §4.1.4–4.2.1, pp.45–49; EHLS line 2081.)

A proof can proceed as follows: Use the unramified identity to isolate the partial Euler product. Choose local sections avoiding zeros at a specified point and divide meromorphic functions locally. Apply the Eisenstein functional equation and the local intertwining relations, then glue the continuations.

*Needs:* §1.3; §2.4; §3.1; AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); MetaplecticAutomorphicForms §6.10a (canonical classical factors).

### Examples

A zero pairing is a negative control for the divided period. In the standard two-dimensional representation of S₃, choose v=(1,−1,0) and the restricted linear functional ℓ(x)=x₃ on x₁+x₂+x₃=0. Then ℓ(v)=0 but for g=(23), ℓ(gv)=−1. A convolution section concentrated at g can therefore pair nontrivially. On the norm-one torus, z↦z² pulls back by conjugation to z↦z⁻²; applying the involution twice returns z². This also distinguishes a non-self-dual Garrett output from its contragredient.

### Dependencies

This layer follows Layer 0, Layer 1, Layer 2. The direct supplier inputs are AutomorphicFormsOnReductiveGroups §§4.1–4.3 (globalization, cuspidality and pairings); AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures); SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); AutomorphicFormsOnReductiveGroups §§3.4–3.5 (restricted tensor realizations); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence).

## Layer 4: holomorphic archimedean sections

### 4.1 holomorphic unitary modules and strong positivity

For U(a,b), K=U(a)×U(b), fix the hermitian positive system with Lie algebra g_C=k_C⊕p⁺⊕p⁻. For a dominant integral K-weight κ=(κ₁≥…≥κ_a;κ₁ᶜ≥…≥κ_bᶜ), let W_κ be the finite-dimensional K-module and put D(κ)=U(g_C)⊗_(U(k_C⊕p⁻))W_κ∨, with p⁻ acting trivially on the generating type. Strong positivity means that μ=(−κ_bᶜ−a,…,−κ₁ᶜ−a;−κ_a+b,…,−κ₁+b) is dominant integral, equivalently κ_a−κ₁ᶜ≥a+b when a,b>0. Define D_c(κ) to be the K-finite restricted contragredient, realized with p⁺ and W_κ. In this range these are holomorphic and antiholomorphic discrete-series modules, their minimal K-types are W_κ∨ and W_κ, and the corresponding relative cohomology with coefficient W_μ or W_μ∨ is one-dimensional in degree ab. Compact cases a=0 or b=0 are interpreted separately through finite-dimensional K-modules.

Assume a,b≥0; a+b=n; specified integral K-weight; central character fixed if extended to GU(a,b). (EHLS, §4.4.1, (88)–(91), pp.69–71; EHLS line 3280.)

Prove the following basic properties of this construction.

- The generating subspace is W_κ∨ annihilated by p⁻.

- The K-finite dual is D_c(κ) with generating type W_κ annihilated by p⁺.

- In the strongly positive range the specified degree-ab cohomology has dimension one.

- A K-map from W_κ∨ into a (g,K)-module, annihilated by p⁻, extends uniquely to a U(g)-map from D(κ).

- Two such module maps agree once they agree on the generating K-type; agreement on a highest generator suffices after K-equivariance is fixed.

**Checks.**

- For a=b=1, strong positivity requires κ₁−κ₁ᶜ≥2; the pair (0,0) fails.

- For a=b=1 and κ=(1;−1), μ=(0,0) is dominant, so the weak partition/dominance boundary is included.

- Taking the restricted dual exchanges W_κ∨ and W_κ; a non-self-dual compact type detects a mistaken dual.

Additional normalization checks:

- For a=b=1, κ=(0;0) has gap 0 and fails the bound 2; κ=(1;−1) has gap 2 and μ=(0,0).
- For κ=(2;−1), the generator dual has weight (−2;1), not (2;−1).
- For a=0,b=1 the compact case has ab=0; there is no cross-block inequality to evaluate.

A proof can proceed as follows: Import the highest-weight K-module and hermitian positive system. Construct the two generalized Verma modules on the actual enveloping-algebra carriers. Specialize the existing discrete-series and Vogan–Zuckerman theorems in the dominant range, using the restricted dual.

*Needs:* RepresentationTheory/ClassicalGroups Layer 3 (highest weights); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); AutomorphicFormsOnReductiveGroups §§5.3–5.4 and 6.1–6.2 (Hermitian cohomological representations).

### 4.2 automorphy factors and scalar holomorphic model

On the U(n,n) tube realization, choose the algebraic CM base point z₀ and the Harish–Chandra factorization. Let J,J′ be its two canonical GL_n-valued automorphy factors, with J(g,z)=Cz+D for g in block coordinates, and let j,j′ be their determinants at z₀. Define the scalar holomorphic module D²(m,χ₀) by the compact-type parameter Λ=(m−b_χ repeated n;−m+a_χ repeated n). Its generating compact type is W_Λ∨ in the convention of §4.1. On the multiplier-one group send its generator v_χ to J_χ(g)=j(g)^(−m+a_χ)j′(g)^(−m+b_χ). Extend by U(g_C) and denote this map ι_χ. The similitude central character is separate data, recovered from the required induced transformation law; an omitted or ambiguous power of ν is not silently restored.

Assume n≥1; m,a_χ,b_χ integers with 2m−a_χ−b_χ≥2n; χ₀,∞(z)=z^(−a_χ)z̄^(−b_χ); fixed CM rational structure. The compact-dual/automorphy-factor comparison is proved as part of this construction. (EHLS, §4.4.2, (92), pp.71–73; Remark 4.5.3, p.80; EHLS line 3330.)

Prove the following basic properties of this construction.

- ι_χ(v_χ)=J_χ on the multiplier-one group.

- The two canonical factors satisfy the group-action cocycle with their specified block actions.

- A GU extension records and verifies its full central character independently of the U restriction.

- Transport by a group element carries the base point, compact subgroup and J factors together, and intertwines the resulting scalar realization.

**Checks.**

- With normalized base point, J(1)=J′(1)=I and J_χ(1)=1.

- On U(n)×U(n), the generating function has precisely the dual of Λ under right translation.

- Two different ν-powers restrict identically to U(n,n); the GU covariance test distinguishes them.

Additional normalization checks:

- At g=1 both canonical determinant factors are 1 and J_χ(1)=1; the zero map sends the generator to 0.
- For n=1,m=2,a_χ=b_χ=0 the parameter Λ=(2;−2) has dual highest weight (−2;2).
- Central extensions ν^0 and ν^1 agree on U but at ν=4 take values 1 and 4.

A proof can proceed as follows: Construct the canonical factors from the Harish–Chandra decomposition and prove their cocycle law. Evaluate at the chosen rational base point and differentiate the right action. Extend the generating function by the enveloping-algebra universal property, carrying the compact-dual identification and the independently specified central character.

Construct an explicit comparison from the scalar generalized Verma module with generating type W_Λ∨ to the U automorphy-factor realization, transporting the compact Borel and dual highest weight. For GU, specify the central character separately and prove that its restriction agrees. The source is that cyclic module and the target is the corresponding smooth-function subrepresentation; equality on its generating compact type determines the map.

*Needs:* §4.1; §1.1; AutomorphicFormsOnReductiveGroups §§5.3–5.4 and 6.1–6.2 (Hermitian cohomological representations).

### 4.3 injectivity of the holomorphic realization

In the holomorphic discrete-series range for the scalar parameter (m,χ₀), the map ι_χ:D²(m,χ₀)→C∞(U(n,n)) is injective. Under PBW, D² is free of rank one over U(p⁺), generated by v_χ. The claim uses irreducibility in the stated range and the nonzero value J_χ(1)=1; no injectivity is asserted for an arbitrary singular generalized Verma module.

Assume m,a_χ,b_χ integers, 2m−a_χ−b_χ≥2n, and the identification from §4.2 of J_χ with the W_Λ∨ generator. (EHLS, Lemma 4.4.4, pp.73–74; EHLS line 3436.)

A proof can proceed as follows: Use PBW for the abelian p⁺ to identify the cyclic module. Apply the irreducibility theorem for the chosen holomorphic parameter. The generator has nonzero image, so its kernel is zero.

*Needs:* §4.2; AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations).

### 4.4 Cauchy decomposition and highest minor vectors

Over a characteristic-zero coefficient field, use the left action of GL_u×GL_u on polynomial functions on Mat_u given by ((g₁,g₂)·f)(X)=f(g₁⁻¹Xg₂). The homogeneous degree-d component decomposes as ⊕_(λ⊢d, length λ≤u) F_λ∨⊗F_λ. For λ=(c₁≥…≥c_u≥0), use the lower-triangular Borel in the first GL_u and the upper-triangular Borel in the second; the selected highest line is generated by Δ_λ=∏_(i=1)^u Δ_i^(c_i−c_(i+1)), where c_(u+1)=0 and Δ_i is the leading principal minor. The sum of the weighted minor degrees is d.

Assume u,d≥0; a characteristic-zero coefficient field; the displayed polynomial pullback action and the lower/upper Borel pair. The compact-weight comparison uses the longest Weyl element when changing this first Borel to the upper one. (EHLS, Lemma 4.4.8 and (100), pp.75–76; EHLS line 3500.)

**Checks.**

- For u=2 and d=2 the homogeneous dimension is 10=3²+1², from the partitions (2) and (1,1); d=0 gives the constant line, including u=0.
- For g₁=[[1,1],[0,1]], h₁=[[1,0],[1,1]] and g₂=h₂=I, the composed pullbacks evaluate f at h₁⁻¹g₁⁻¹X=(g₁h₁)⁻¹X. At X=I this matrix is [[1,−1],[−1,2]]. The literal transposed substitution gives the competing matrices [[2,−1],[−1,1]] and [[1,−1],[−1,2]], so it cannot be used as this left action.
- The polynomial X₁₁ is fixed by the first lower and second upper unipotents. A first upper unipotent with entry t sends it to X₁₁−tX₂₁; at X₂₁=1 and t=1 the change is −1. This fixes the Borel choice for leading principal minors.

A proof can proceed as follows: Import Schur functors and their highest-weight classification. Apply the Cauchy identity to Sym^d(V∨⊗V). Compute the two torus weights of the product of principal minors and its degree.

*Needs:* RepresentationTheory/ClassicalGroups Layer 2 (Schur functors); RepresentationTheory/ClassicalGroups Layer 3 (highest weights).

### 4.5 holomorphic branching for the doubled group

Restrict the scalar holomorphic discrete-series module of §4.2 to U(a,b)×U(b,a). Its K-finite module is an algebraic multiplicity-one sum of holomorphic tensor factors indexed by partitions r₁≥…≥r_a≥0, s₁≥…≥s_b≥0. In the convention D(κ) generated by W_κ∨, use κ=(m−b_χ+r₁,…,m−b_χ+r_a;−m+a_χ−s_b,…,−m+a_χ−s₁). Thus the first minimal K-type W_κ∨ has highest weight λ=(−m+b_χ−r_a,…,−m+b_χ−r₁;m−a_χ+s₁,…,m−a_χ+s_b), the tuple printed in EHLS (94). The factors are D(κ) and its opposite-signature dual with the prescribed χ₀ determinant twist. The latter is defined intrinsically by transporting the restricted contragredient across U(a,b)≃U(b,a), including the compact-factor interchange and its dual highest-weight map. The use of the same κ label in (88) and (94) uses the compact-dual and Borel dictionary proved in §4.2. No strict partition inequalities are imposed; the smooth globalized restriction is distinct from this algebraic sum.

Assume a+b=n; 2m−a_χ−b_χ≥2n; fixed opposite-signature embedding, compact Borels and χ₀ twist. The automorphy-factor comparison of §4.2 supplies the compact/Borel dictionary. (EHLS, §4.4.2, equations (93)–(95), p.73; EHLS line 3390.)

A proof can proceed as follows: Identify the noncompact tangent decomposition under the subgroup. Use the polynomial Cauchy decomposition and PBW to identify the minimal types. Use holomorphic discreteness and character multiplicities to prove exhaustion and multiplicity one.

*Needs:* §0.1; §4.3; §4.4; AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations).

### 4.6 algebraic raising operators

For a critical pair (κ,χ) corresponding to the partitions r,s in §4.5, embed polynomials on Mat_a×Mat_b into the diagonal blocks of Mat_n. Let p_(r,s)=∏Δ_i^(r_i−r_(i+1))∏(Δ′_j)^(s_j−s_(j+1)). Through the PBW isomorphism Sym(p⁺)≃U(p⁺), define δ_(χ,κ) as the differential operator attached to p_(r,s). Normalize the algebraic highest vectors over a specified field E containing the CM coefficients and compact-type fields. Dependence on these choices is retained; rescaling the chosen highest vector rescales the comparison constant.

Assume critical partition labels; algebraic rational structures; r_(a+1)=s_(b+1)=0. (EHLS, §4.4.5–4.4.9, (98)–(100), pp.74–77; EHLS line 3470.)

Prove the following basic properties of this construction.

- The PBW symbol is the displayed minor product.

- The operator is defined over the specified algebraic coefficient field.

- Its PBW degree is the sum of all partition parts.

- The PBW polynomial-to-operator map is linear and multiplicative because p⁺ is abelian.

- Operators obtained from equal polynomials agree; the leading PBW symbol recovers the polynomial.

**Checks.**

- For r=s=0 the operator is the identity.

- For a=2,r=(1,1),s=0, the symbol is det A, not Δ₁².

- For a=b=1,r=(1),s=0 the symbol is the first diagonal-block coordinate and has degree 1.

Additional normalization checks:

- For r=s=0 the minor polynomial and its operator equal 1, of degree 0.
- For a=2,r=(1,1), the differences (0,1) give Δ₂ of degree 2; Δ₁² has the same degree but a different polynomial.
- On A=[[1,2],[3,4]], Δ₂=−2 whereas Δ₁²=1; for a=b=1,r=(1), the symbol is the first coordinate and has degree 1.

A proof can proceed as follows: Build the minor polynomial with nonnegative difference exponents. Use the abelian tangent algebra and PBW to obtain the enveloping-algebra operator. Apply it to the scalar cyclic vector and compare its selected highest-type projection.

*Needs:* §4.4; §4.2; §4.5.

### 4.7 nonzero rational holomorphic projection

For a critical pair with chosen algebraic highest vectors, the projection of δ_(χ,κ)v_χ to the highest line of the κ-branch is P_(χ,κ)·v_κ⊗v_(κ♭⊗χ), with P_(χ,κ)∈E×. The projection is algebraic on each fixed finite K-type and annihilates the other branch components under pairing with the selected antiholomorphic vectors. Only this nonzero highest-line assertion of EHLS Corollary 4.4.9 is used; the further triangular expansion has differential-operator coefficients off the diagonal and is not needed here.

Assume critical pair in the holomorphic discrete-series range; fixed E-forms and normalized highest vectors. (EHLS, Corollary 4.4.9, first assertion and proof, pp.76–77; EHLS line 3540.)

A proof can proceed as follows: Use the Cauchy highest lines in the PBW model. Compare their projection to the multiplicity-one branching component. Use rationality of the decomposition to place its nonzero scalar in E and identify the annihilator under the dual pairing.

*Needs:* §4.6; §4.5; §4.3.

### 4.8 critical archimedean doubling section

Choose B_(χ,κ)∈E× and set f∞(g)=B_(χ,κ)·δ_(χ,κ)J_χ(g) on U(n,n). To regard it as a section of I_EHLS(χ_u,s_crit), first specify χ_alg=|·|_C^μχ₀ and χ_alg=|·|_C^tχ_u with χ_u unitary, and solve the exact Levi covariance for s_crit using §1.1. Record that χ₀=z^(−a_χ)z̄^(−b_χ) has norm exponent −(a_χ+b_χ)/2. Thus t=μ−(a_χ+b_χ)/2. The paper’s two symbols m and its suppressed similitude factor cannot be interchanged without this computation. The map into the correct induced fiber, including the GU central character if used, is part of the construction.

Assume critical pair and holomorphic range; B algebraic nonzero; fixed Haar and vector normalizations; comparison in the precise inducing and central-character comparison. (EHLS, Lemma 4.5.2, Remark 4.5.3 and (107), p.80; EHLS line 3675.)

Prove the following basic properties of this construction.

- On U(n,n), f∞=Bδ_(χ,κ)J_χ.

- Its complete parabolic covariance identifies the exact I_EHLS(χ_u,s_crit) fiber.

- Rescaling B rescales the section and its zeta integral by the same factor.

- Replacing B_(χ,κ) by aB_(χ,κ), with a∈E×, multiplies the section and its local zeta value by a.

- After the inducing fiber has been identified, equality on its maximal compact subgroup determines equality of the sections.

**Checks.**

- For zero partitions the section is BJ_χ.

- If a_χ+b_χ≠0, the unitary norm exponent t differs from μ by −(a_χ+b_χ)/2.

- A positive real scalar similitude detects a wrong multiplier exponent even when the restriction to U is correct.

Additional normalization checks:

- At zero partitions f∞=BJ_χ; B=2 and g=1 give value 2.
- For μ=3,a_χ=2,b_χ=0, t=2; at z=2 the norm parts satisfy 4³·2⁻²=4²=16.
- A positive similitude with ν=4 distinguishes powers 1 and 4 even when their U restrictions agree.

A proof can proceed as follows: Apply the algebraic differential operator to the scalar automorphy function. Compute its covariance along P and solve for the normalized unitary parameter. Extend to GU only after matching the multiplier character and prove independence from a chosen norm/phase presentation.

The inducing-fiber comparison must compute the complete P-character of the differentiated automorphy function, express it as the covariance of §1.1, and determine s_crit and the GU central character from that equality. This is a target calculation, not the definition of a free critical-parameter predicate. In particular the symbol μ in the algebraic character cannot be substituted for the unitary parameter t.

*Needs:* §4.2; §4.6; §1.1.

### 4.9 nonvanishing of the critical archimedean integral

For the critical section of §4.8 and the algebraically normalized antiholomorphic vectors dual to the selected holomorphic highest lines in the appropriate minimal K-types of π∞⊗π∞♭, the continued local doubling integral at the matched critical parameter is finite and nonzero. The invariant pairing kills the nonselected holomorphic components, so the full raising operator has the same integral as its nonzero holomorphic projection, up to P_(χ,κ). The projected integral is nonzero by the holomorphic Siegel–Weil/theta-lift nonvanishing criterion in Harris Remark 4.4(iv); prove that precise holomorphic theta criterion and the projected-integral comparison as part of this target, on the supplied oscillator and local theta carriers.

Assume critical holomorphic range; nonzero paired vectors; the inducing-fiber comparison of §4.8; the local theta criterion proved in this subsection. (EHLS, Proposition 4.5.5, pp.80–81; EHLS line 3684; HARRIS, Remark 4.4(iv), pp.27–28; HARRIS line 1150.)

A proof can proceed as follows: Project the differentiated section to the selected branch. Prove the holomorphic Siegel–Weil image identification, nonzero local theta lift in the critical range and its projected-integral comparison, then apply it to the selected branch. Multiply by the two nonzero algebraic scalars B and P_(χ,κ).

The local theta target identifies the holomorphic Siegel–Weil image with the holomorphic part of the critical principal series, proves the theta lift of the specified antiholomorphic representation to the compact unitary pair is nonzero in the critical inequalities, and identifies its nonzero pairing with the projected local integral. Its source is the supplied oscillator coinvariant module and its target is the critical holomorphic induced submodule. The rank-one test and the nonzero coefficient P from §4.7 distinguish this map from the zero map (HARRIS Remark 4.4(iv), pp.27–28; HARRIS line 1184).

*Needs:* §4.8; §4.7; §2.1; MetaplecticAutomorphicForms §§3.3 and 3.5–3.7 (oscillator and local theta carriers).

### 4.10 normalized archimedean algebraicity

Fix a CM coefficient field E, algebraic forms and bases for the compact types and differential operators, pairing of the test vectors equal to 1, and B∈E×. For U(a,b), use Garrett’s Haar convention: vol(K)=1 and invariant domain measure dz/det(I_b−z*z)^(a+b) on Mat_(a,b)(C). After identifying the holomorphically projected doubling kernel with Garrett’s E-rational convolution kernel, prove π^(−ab)I∞∈E×. Equivalently, rescale this Haar by π^(−ab) and obtain an E×-valued integral. For compact signatures the exponent is zero. The rational-kernel comparison, including its scalar and coefficient field, is a target of this subsection. Unnormalized algebraicity under an arbitrary Haar measure, and a general vector-weight gamma-value evaluation, are not assertions of this roadmap.

Assume critical range and finite nonzero integral; all rational structures and measure specified; the projected kernel comparison. (GARRETT, §1, pp.1–3; qualitative theorem and measure normalization, §2, p.4; GARRETT line 164; EHLS, Proposition 4.5.6 and Remark 4.5.7, p.81; EHLS line 3696.)

A proof can proceed as follows: Reduce to the selected rational compact-type convolution operator. Apply Garrett’s qualitative theorem, whose scalar is π^(ab) times an E-number for the stated Haar. Use §4.9 to show the algebraic scalar is nonzero and transport B and the rational pairings.

The rational comparison identifies, over the embedded coefficient field and with the same normalized maximal compact and domain Haar, the projected doubling convolution kernel with Garrett’s rational compact-type kernel. Its source and target are the two specified compact-type kernel spaces. Compute its scalar on the selected highest line, carry B and P through the comparison, and prove this scalar lies in the coefficient field and is nonzero; an arbitrary complex rescaling is excluded.

*Needs:* §4.9; §4.7; AutomorphicFormsOnReductiveGroups §§5.3–5.4 and 6.1–6.2 (Hermitian cohomological representations); AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis).

### Examples

For U(1,1), κ=(1;−1) gives μ=(0,0), gap 2 and cohomological degree 1. With m=2 and a_χ=b_χ=0, r=s=0 gives κ=(2;−2), whereas the dual highest weight printed in the branching tuple is (−2;2). For r=(1,1), the differences are (0,1), the minor product is Δ₂ and its degree is 2, while the unweighted sum of differences is 1. On the unit disk the scalar kernel (1−|z|²)^m against dz/(1−|z|²)² has integral π/(m−1) for integral m>1: m=2 gives π and π⁻¹I=1. Replacing dz by 2dz doubles both values. This fixes the Haar power without asserting a general vector-weight evaluation.

### Dependencies

This layer follows Layer 0, Layer 1, Layer 2. The direct supplier inputs are RepresentationTheory/ClassicalGroups Layer 3 (highest weights); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); AutomorphicFormsOnReductiveGroups §§5.3–5.4 and 6.1–6.2 (Hermitian cohomological representations); RepresentationTheory/ClassicalGroups Layer 2 (Schur functors); AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis).

## Layer 5: rectangular models and generalized doubling geometry

### 5.1 rectangular unipotent character

For k,c≥1, let U_(c^k) be the upper block-unipotent subgroup of GL_(kc) with k diagonal identity blocks of size c. Given a nontrivial additive character ψ of F, set ψ_(k,c)(u)=ψ(Σ_(i=1)^(k−1) tr(u_(i,i+1))). This is a group character. Its stabilizer in the block Levi GL_c^k is the diagonal GL_c. For k=1 the unipotent group and character are trivial; for c=1 this is the usual nondegenerate Whittaker character. The orbit label is the partition (k^c), rather than (c^k).

Assume Characteristic-zero local field; k,c≥1; fixed nontrivial continuous ψ. (CFK, §3.1, pp.11–12; CFK line 419; MODELS, §2.1, (2.1) and Definition 1, pp.2–3; MODELS line 44.)

Prove the following basic properties of this construction.

- ψ_(k,c)(uv)=ψ_(k,c)(u)ψ_(k,c)(v).

- A Levi tuple stabilizes ψ precisely when all its blocks agree.

- At c=1 the character is the ordinary GL_k Whittaker character.

- The identity has zero adjacent trace, so its character value is 1.

- Replacing ψ(x) by ψ(bx) evaluates the same adjacent-block trace against the scaled additive character.

**Checks.**

- For k=1 the sum is empty and the character is 1.

- For k=2,c=2 and upper-right block diag(x,y), its value is ψ(x+y).

- For k=3, changing the (1,3) block leaves the character unchanged, including the cross term in a product.

Additional normalization checks:

- For k=1, the adjacent trace is 0 and ψ(0)=1; for c=1,k=2,u₁₂=x it is ψ(x).
- For k=c=2 and u₁₂=diag(1,2), the trace is 3, so ψ(3), not ψ(1), is required.
- For k=3,c=1, x=1,z=2,x′=3,z′=4 gives trace 10 after multiplication, and top-right cross term 4 does not enter it.

A proof can proceed as follows: Use the parabolic radical and matrix blocks supplied by the group roadmap. Multiply two upper unipotent block matrices and compute the adjacent blocks. Use nondegeneracy of the trace pairing to identify the Levi stabilizer.

*Needs:* `Matrix.trace`; `AddChar`; ReductiveGroups Layer 7 (parabolics and Levi theory); SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients).

### 5.2 rectangular models and generalized Speh adaptation

A (k,c) representation ρ of GL_(kc)(F) is a finite-length admissible representation whose generalized Whittaker support has unique maximal orbit (k^c), and for which Hom_(U_(c^k))(ρ,ψ_(k,c)) has dimension one. Vanishing for strictly larger or incomparable orbits is part of the condition, not a consequence of the single Hom dimension. Given a nonzero functional λ, its model is the quotient image W_λ={g↦λ(ρ(g)ξ)} with right translation. Construct the local generalized Speh adapter ρ_c(τ) from the supplied segment/Langlands data. For unitary generic τ it is the unique irreducible quotient of normalized induction τ⊗…⊗τ twisted by δ_(k^c)^(1/(2k)); for general generic τ=×|det|^a_iτ_i with tempered τ_i, use ×|det|^a_iρ_c(τ_i). This latter representation can be reducible and has a unique (k,c) irreducible subquotient. The adapter uses the existing GL segment and multisegment constructors; its additional assertions are the all-local-field quotient comparison and rectangular support.

Assume τ irreducible generic of GL_k; actual smooth/Casselman–Wallach category; ordered Langlands data; nonzero continuous λ in the archimedean case. (MODELS, Definition 1, Theorem 4, Claim 6 and (2.3)–(2.6), pp.2–6; Lemma 12, p.11; MODELS line 94; CFK, §3.1, pp.11–12; CFK line 424.)

Prove the following basic properties of this construction.

- W_ξ(g)=λ(ρ(g)ξ), and W_ξ(ug)=ψ_(k,c)(u)W_ξ(g).

- The diagonal GL_c acts on the functional by χ_τ∘det.

- Rescaling nonzero λ rescales the image functions and gives the canonical scalar comparison of models.

- The coefficient map v↦(g↦λ(ρ(g)v)) is equivariant and has kernel ⋂_g ker(λ∘ρ(g)); every linear map killing this kernel factors uniquely through the image model.

- Two elements of the image model agree iff their values agree at every group element; no faithfulness of the coefficient map is assumed for reducible ρ.

**Checks.**

- At c=1, ρ₁(τ)=τ and the model is the usual Whittaker model.

- For τ a GL₁ character, the model of ρ_c(τ)=τ∘det is one-dimensional, with orbit (1^c).

- For k=1,c=2, τ∘det is not generic for GL₂; replacing the rectangular condition by ordinary genericity fails.

Additional normalization checks:

- At c=1, ρ₁(τ)=τ and the chosen functional is Whittaker; for k=1,c=2, ρ₂(τ)=τ∘det.
- For trivial τ on GL₁ and c=2, the orbit is (1,1), functional dimension 1, and the ordinary GL₂ Whittaker dimension is 0.
- For the image construction alone, the coefficient map of 1⊕σ with λ on the trivial factor, the σ summand is in the kernel; image-model equality cannot imply equality of its preimages.

A proof can proceed as follows: Apply the supplied GL segment and Langlands-quotient constructors, prove the unitary quotient identification and the ordered tempered-product extension, and retain possible reducibility. Prove maximal-support and one-dimensional-functional assertions by induction and generalized Jacquet exactness, as in MODELS Theorem 4. Form the equivariant image and identify its diagonal stabilizer character λ(ρ_c(τ)(g△)ξ)=χ_τ(det g)λ(ξ).

*Needs:* §5.1; EndoscopicTransferAndUnitaryTraceComparison §10.29 (canonical nongeneric GL factors); SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients); SmoothRepresentationsOfLocalGroups §SR.5.3, highest-derivative-adapter and segment-representations; AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations).

### 5.3 root elimination for rectangular functionals

For τ generic with a unitary unramified twist and 0<l<c, realize ρ_c(τ) inside normalized induction of (ρ_l(τ)⊗ρ_(c−l)(τ))δ_(kl,k(c−l))^(−1/(2k)). Split each c×c unipotent block into l and c−l coordinates, let V consist of the lower-left subblocks, and let κ_(l,c−l) be the permutation grouping all l coordinates before all c−l coordinates. The integral ξ↦∫_V ξ(κv)dv converges, is continuous at infinity, defines a (k,c) functional and is nonzero on every subrepresentation. For the pole reduction, retain the associated root-elimination transform onto the lower (k,l) model, with determinant exponent (kc−kl−c+l)/2. If the functional is built by splitting k instead, auxiliary ordered complex twists give a convergent Jacquet integral and a nonzero continued functional; its range is the one in MODELS Lemma 7, not an arbitrary subquotient.

Assume 0<l<c; fixed permutation and compatible self-dual measures; τ generic with a unitary norm twist for the c-splitting construction. (MODELS, §3.1, Lemma 7, pp.6–7; §3.2, Lemma 9 and proof, pp.7–9; MODELS line 234; CFK, Lemma 3.16, pp.21–24; CFK line 835.)

Prove the following basic properties of this construction.

- The c-split functional is the displayed integral on the specified induced carrier.

- Its restriction to any nonzero subrepresentation is nonzero.

- The associated Fourier/root transform surjects onto the required (k,l) model with the stated determinant twist.

- The lower-model coefficient after applying the transform has the displayed determinant twist, so it is not an untwisted restriction of the original function.

**Checks.**

- For c=2,l=1 the two block sizes are equal, but κ still rearranges the interleaved coordinates when k>1.

- For k=1 the integration group is trivial, and the construction is evaluation.

- For k=2,c=3,l=1 the determinant exponent is (6−2−3+1)/2=1; omitting the modulus gives a different character.

Additional normalization checks:

- For c=2,l=1,k=2 the interleaved order (1,2,3,4) changes to (1,3,2,4), despite equal block sizes.
- For k=1 the integration group is {1}, so its normalized integral is evaluation, of value 1 on the unit vector.
- For k=2,c=3,l=1 the determinant exponent is 1; at determinant norm 1/2 the twist is 1/2, not 1.

A proof can proceed as follows: Define the permutation from the explicit ordering of coordinates. Exchange the paired root subgroups and use Fourier inversion to eliminate each off-diagonal block. Prove convergence and nonvanishing on subrepresentations, then compute the determinant exponent of the transform.

*Needs:* §5.2; AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis); SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations).

### 5.4 generalized doubling geometric datum

For G=G_c and k≥1 set H=G_(2kc), Q with Levi GL_c^(k−1)×G_(2c), and U=Rad_u Q. Choose its character ψ_U for the orbit ((2k−1)^c 1^c) and e:G×G→Stab_(M_Q)(ψ_U), injective for Sp and SO, with kernel the diagonal distinguished central torus for GSpin. For k=1 take U=1. Fix the Siegel P, P′=j^(kc)P (j is trivial outside even orthogonal/spin H), δ=δ₀δ₁ and an involution ι of G with δe(g,ιg)δ⁻¹∈M_P. Set U₀=U∩U_(P′) and U=V⋊U₀; conjugation by δ identifies V with U_(c^k) and transports ψ_U to ψ_(k,c)⁻¹. The datum includes actual matrices/root coordinates and proofs of all these identities. For Sp_(2n), ψ_U is ψ_(k−1,c) on the repeated blocks times ψ(tr u₁₁+tr u₂₂) on the final c rows adjoining the middle 2c block; e repeats g₁ on the outer blocks and embeds g₁ and g₂ in the complementary middle symplectic subspaces. Odd orthogonal and spin lifts require their separate coordinates, not that even symplectic example.

Assume the five split characteristic-zero families of Layer 0; c>1; k≥1; ψ fixed; compatible standard parabolics and pinnings. (CFK, §3.3, Example 3.1, pp.12–13; CFK line 491; GK, §1.5, pp.12–16; GK line 504.)

Prove the following basic properties of this construction.

- e is a homomorphism with exactly the stated kernel.

- δ transports the V character to ψ_(k,c)⁻¹.

- δe(g,ιg)δ⁻¹ lies in the Siegel Levi, giving the invariance of the U₀ integral.

- Conjugate P,Q,U,e,δ and ψ_U together; conjugation preserves the defining relations and transports the local integral with the pushed-forward measures.

**Checks.**

- At k=1 the U₀ integral is over the trivial group.

- For a distinguished central z, e(z,z)=1 in GSpin; an asserted injective product embedding fails.

- For G=Sp₂ and k=2 the middle character is ψ(u₁₁+u₂₂) on the two scalar entries, rather than a character of only one entry.

Additional normalization checks:

- At k=1, U=U₀=1 and the inner measure has mass 1.
- In GSpin, e(z,z)=1 for every distinguished-central z; a nonidentity z gives a nontrivial kernel pair.
- For Sp₂,k=2, scalar entries 1 and 2 give ψ(3), whereas using the first entry alone gives ψ(1).
- For GSpin₂, dim(center)=2, dim(C_G^•)=1 and dim(G/C_G^•)=1. Quotienting by the whole connected center would instead give dimension 0 and would change the integral.
- At g=1 the transported diagonal element is δ·1·δ⁻¹=1∈M_P; the product δ·1=δ need not be in M_P. In the Sp₂,k=2 coordinates δ₀δ₁ has a nonzero off-Levi block, so it is not a Levi element.

A proof can proceed as follows: Use the existing group/root-data carriers to build the parabolics and root subgroups. Verify the character stabilizer and embedding, including the spin central kernel. Choose δ₀,δ₁ and ι and verify the transported character, semidirect decomposition and diagonal Levi identity. Verify the spin coordinates and Clifford lifts in the same construction.

*Needs:* §0.3; §5.1; ReductiveGroups Layer 7 (parabolics and Levi theory); the concrete-group contract from ReductiveGroupsPartII.

### 5.5 generalized doubling section family

For τ generic of GL_k and π of G_c, let V(s,τ,c)=i_P^H((|det|^(s−1/2)χ_π W_ψ(ρ_c(τ))⊗χ_π)∘i_(M_P)). Here χ_π on the GL factor means χ_π∘det, with the Levi identification of CFK §1. Entire sections are entire maps to the fixed compact picture, weakly holomorphic and continuous in the Casselman–Wallach topology at infinity. At finite places distinguish arbitrary entire sections from polynomial sections, which are finite Laurent sums in q^(−s). Standard sections are parameter independent in the compact picture. Intertwining operators act on continued sections, not necessarily entire sections at their poles.

Assume local char zero; τ generic; π admissible irreducible; specified Levi and compact subgroup with e(K_G×K_G)⊂K_H. (CFK, §3.3 and its footnote 2, pp.13–14; CFK line 530.)

Prove the following basic properties of this construction.

- Left covariance includes the true half-modulus and the displayed model action.

- The compact-picture carrier is independent of s.

- At finite places, polynomial sections are generated by standard sections over C[q^s,q^(−s)].

- Extend an inducing-model-valued compact-picture function with P∩K covariance to the normalized induced section.

- Two sections in the same parameter fiber are equal exactly when their compact-picture functions are equal.

**Checks.**

- At s=1/2 the extra determinant norm twist is trivial.

- For Sp or SO both χ_π factors are trivial.

- A compact-picture constant family evaluates to a standard section; multiplying it by 1/(1−q^(−s)) yields a meromorphic family that need not be entire.

Additional normalization checks:

- At s=1/2, |det|^(s−1/2)=1 for every nonzero determinant.
- For Sp or SO, both χ_π factors have value 1; a nontrivial spin χ cannot be omitted.
- The compact-picture constant vector gives an entire standard section, while multiplying by (1−q⁻ˢ)⁻¹ gives a pole at s=0.

A proof can proceed as follows: Apply the existing normalized induction functor to the rectangular model. Identify the fixed compact-picture carrier using Iwasawa decomposition. Define entire, polynomial and standard families and record their evaluation maps.

*Needs:* §5.4; §5.2; SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations).

### 5.6 rectangular-model Schwartz and seminorm bounds

For k>1 and generic τ there is d₀>0 such that every rectangular-model W satisfies |W(diag(g,I))|≤|det g|^(−d₀)Φ(g) for a Schwartz majorant Φ on Mat_c. At infinity a fixed continuous seminorm controls |λ(ρ_c(τ)(ugo)ξ)| by |χ_τ(det g_k)|∏_(i<k)|det(g_k⁻¹g_i)|^(−d₀), for g=diag(g₁,…,g_k), u∈U_(c^k), o∈K. Each individual ξ also admits Schwartz factors Φ_i(g_(i+1)⁻¹g_i) in this estimate. The differentiated character relation supplies polynomial decay in the adjacent ratios. A separate induced-matrix-coefficient estimate makes the opposite-unipotent integrals absolutely convergent and continuous in the positive Langlands chamber. Uniform seminorms, not just vector-dependent pointwise bounds, are needed for archimedean continuation and Fubini.

Assume actual smooth/Casselman–Wallach topology; fixed nonzero rectangular functional; positive Langlands chamber for opposite-unipotent convergence. (CFK, Lemmas 3.13–3.14, (3.19)–(3.22), pp.19–21; Lemma 3.22, pp.32–33; CFK line 779.)

A proof can proceed as follows: Exploit adjacent-root ψ equivariance to control support and convert polynomial coordinate multiplication into differentiated representation operators. Apply moderate growth and Dixmier–Malliavin to obtain Schwartz factors and continuous seminorm estimates. Combine the imported Harish–Chandra Xi and Iwasawa estimates with the positive Langlands exponents for the opposite unipotent.

*Needs:* §5.2; AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients).

### Examples

For k=3,c=1, write u=(x,y,z) with adjacent coordinates x,z and top-right coordinate y. The product has adjacent coordinates x+x′ and z+z′, and top-right coordinate y+y′+xz′. Thus the character is ψ(x+z), independent of that cross term. Taking x=1,z=2,x′=3,z′=4 gives adjacent trace 10 and ψ(10)=ψ(3)ψ(7). For k=2,c=3,l=1 the root-transform exponent is 1. For k=1,c=2 the local Speh adapter is τ∘det, with orbit (1,1) and no ordinary Whittaker model.

### Dependencies

This layer follows Layer 0. The direct supplier inputs are `Matrix.trace`; `AddChar`; ReductiveGroups Layer 7 (parabolics and Levi theory); SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients); EndoscopicTransferAndUnitaryTraceComparison §10.29 (canonical nongeneric GL factors); §5.2 (local Speh adapter); SmoothRepresentationsOfLocalGroups §SR.5.3, highest-derivative-adapter and segment-representations; AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis); SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients).

## Layer 6: generalized local factors

### 6.1 generalized local doubling integral

For a matrix coefficient ω of π∨ and an entire section f∈V(τ,c), define Z(s,ω,f)=∫_(C_G^•⧸G)∫_(U₀) ω(g)f(s,δu e₂(ιg))ψ_U(u)du dg in its convergence half-plane. The distinguished central quotient is omitted when trivial. The spin central-character cancellation must be proved so that the integrand descends. Retain the underlying trilinear functional on section, π-vector and the appropriate smooth dual vector. Haar measures, ψ and the geometric datum are part of the normalization.

Assume π irreducible admissible of G_c; τ irreducible generic of GL_k; exact geometry and section family of Layer 5. (CFK, §3.3, local integral and Lemma 3.3, p.14; CFK line 550.)

Prove the following basic properties of this construction.

- The continued integral is trilinear in section and matrix-coefficient vectors.

- The spin integrand is invariant under C_G^•.

- Scaling either Haar measure scales Z by the same scalar.

- Intertwining isomorphisms of π and its dual, with the evaluation pairing transported, preserve Z for the same model section.

**Checks.**

- A zero matrix coefficient or zero section gives zero.

- At k=1, U₀=1 and the inner integral is evaluation at δe₂(ιg).

- Changing g by a distinguished central element leaves the complete integrand invariant, although its individual factors can change.

Additional normalization checks:

- With zero coefficient or zero section, the absolute integral is 0.
- At k=1, integration over U₀={1} gives f(s,δe₂(ιg)), with no extra unipotent volume.
- For a distinguished-central z, a coefficient multiplier a and section multiplier a⁻¹ have product 1; omitting either factor leaves a.
- For GSpin₂, dim(center)=2, dim(C_G^•)=1 and dim(G/C_G^•)=1. Quotienting by the whole connected center would instead give dimension 0 and would change the integral.

A proof can proceed as follows: Prove central descent and diagonal invariance using the geometric datum and the model stabilizer character. Define the integral where the absolute integral is finite. Prove central descent and trilinearity on the absolute-convergence chamber; the continuation is the subsequent theorem of §6.2.

*Needs:* §5.5; §5.4; §5.2; AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures).

### 6.2 continuation and nonzero local data

For fixed π and τ as in §6.1, Z converges absolutely in a right half-plane independent of the vectors and section. It continues meromorphically to C, rationally in q^(−s) for polynomial finite-place sections, and continuously as a trilinear functional at archimedean places. For every s₀ there are a matrix coefficient and a K_H-finite entire section whose integral is finite and nonzero on a neighborhood of s₀. This does not assert that Z/L is holomorphic for all sections.

Assume local characteristic zero; actual smooth models, polynomial sections for the finite rationality assertion. (CFK, Theorem 3.2, p.14; CFK line 561.)

A proof can proceed as follows: Use Cartan/Iwasawa bounds for matrix coefficients and rectangular models to establish absolute convergence. Continue the equivariant functional by Bernstein theory at finite places and the archimedean continuation theorem. Use sections supported near the open orbit to obtain data avoiding zeros at a prescribed point; prove the continuation on these actual smooth carriers, rather than assuming continuation of arbitrary coefficients gives a continuous family.

*Needs:* §6.1; §5.6; SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations).

### 6.3 generic multiplicity one for doubling

Outside finitely many values of q^(−s) at finite places, and outside a discrete subset of C at infinity, dim Hom_(U⋊e(G×G))(V(s,τ,c),ψ_U⁻¹⊗π∨⊗π^ι)≤1. More generally the bound for π₁⊗π₂ is dim Hom_G(π₁∨,π₂^ι), with the corresponding admissible models. The proof must handle the infinitely many small-group orbits: use the larger algebraic-group orbit stratification and the distribution-vanishing theorem, including its conormal conditions in every normal derivative order. Merely asserting finitely many G×G double cosets is false.

Assume π irreducible admissible; τ generic; admissible finite-length rectangular model; s outside the exceptional locus. (GK, Theorem A, pp.2–3; Theorem 1.4, pp.10–11; Theorem 2.1, p.17; GK line 88; CFK, §3.4, (3.4), pp.14–15; CFK line 549.)

A proof can proceed as follows: Translate equivariant functionals into invariant distributions on the flag variety. For nonopen strata apply GK Theorem 1.4 with its finite larger-group orbit cover, generalized Jacquet central exponents and all-order conormal character exclusions. On the open orbit identify the residual Hom_G space. The distribution-vanishing target and its hypotheses are specified below.

For the archimedean proof, the equivariant-distribution target uses a real algebraic manifold X, a larger Lie group A containing the acting group C normally, a closed union Z of finitely many locally closed A-orbits and a smooth Fréchet coefficient representation extending to A. For every z∈Z require the stabilizer-character orbit condition and vanishing of the stabilizer-character-isotypic part of (E tensor Sym^ν(conormal_z) tensor δ) dual, where δ is the C-to-stabilizer modular ratio for every integer ν≥0. Prove that the distributions supported on Z vanish and verify these hypotheses for each nonopen doubling stratum (GK Theorem 1.4, pp.10–11; GK line 446). The finite-place argument uses its algebraic orbit/Jacquet counterpart. Conormal degree zero alone does not control derivatives of delta distributions.

*Needs:* §5.4; §5.5; SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations).

### 6.4 degenerate-Whittaker normalized intertwiner

Let M(s):V(s,τ,c)→V(1−s,χ_π⁻¹τ∨,c) be the standard Siegel intertwiner, using jP when kc is odd and H is even orthogonal or general spin (j is trivial in the symplectic case). Construct the unique degenerate Whittaker functional λ(s) on this induced family with the chosen δ₀,δ₁ and measures. Define C(s) through λ(s)=C(s)λ(1−s)∘M(s), and put M*(s)=C(s)M(s). Specify the odd-kc target and its Levi character independently. This is degenerate-Whittaker normalization, not an unspecified choice of a nonzero scalar intertwiner.

Assume Layer 5 geometric coordinates fixed; generic s for the functional comparison; all identities then meromorphic. (CFK, §3.4, (3.5), pp.15–16; CFK line 601.)

Prove the following basic properties of this construction.

- The target has parameter 1−s and character χ_π⁻¹τ∨, with its specified odd-case parabolic.

- λ(s)=λ(1−s)∘M*(s).

- C(s) is the meromorphic ratio determined by the nonzero degenerate Whittaker functionals.

- Among meromorphic scalar multiples of the fixed raw operator, the degenerate-Whittaker functional equation determines M* uniquely wherever the functional is nonzero, hence meromorphically.

- Intertwining isomorphisms of the inducing model commute with the normalized operator when both Whittaker functionals are transported.

**Checks.**

- Applying the parameter/character transformation twice recovers τ and s.

- When χ_π=1 the transformed GL data are τ∨.

- Replacing λ(s) by a(s)λ(s) changes C(s) by a(s)/a(1−s); the original C cannot be retained.

Additional normalization checks:

- At s=1/4 the reflected parameter is 3/4, and reflection twice returns 1/4.
- With χ_π=1, the transformed τ is τ∨ and the twice-transformed data are τ.
- Rescale λ(s) by exp(s); the normalization scalar changes by exp(2s−1), which at s=0 is exp(−1), not 1.

A proof can proceed as follows: Construct the unipotent integral for λ and prove its uniqueness in the induced family. Compare λ with its standard-intertwiner transform on a nonzero test vector. Continue C and M* and verify their transformed inducing data. Compute this normalization in the same fixed root coordinates.

*Needs:* §5.5; §6.3; AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues).

### 6.5 generalized doubling gamma-factor

Define γ(s,π×τ,ψ) by γZ(s,ω,f)=π(i_G)^k·[γ(s,τ,ψ) for Sp only]·θ(s)·Z(1−s,ω,M*(s)f), where n=⌊c/2⌋ and θ(s)=χ_π(2)^(−kn)χ_τ(−1)^nχ_τ(2)^(−2n)|2|^(−2kn(s−1/2)). Here i_G=(−1)^(c+1)1_G except for even GSpin, where i_G=i_M⁻¹(−I_(c/2),−1). Nonzero local data and multiplicity one give a unique meromorphic scalar. For the rank-zero tails set γ(Sp₀×τ)=γ(τ) and γ(GSpin_c×τ)=1 when c≤1. The theta scalar is tied to the chosen root coordinates and measures; a change of coordinates can introduce an entire nowhere-zero scalar. For the trivial SO₀ and SO₁ tails all three local factors are 1.

Assume π admissible irreducible; τ generic; fixed ψ and all doubling data; γ(s,τ,ψ) is the GL_k×GL₁ factor with trivial GL₁ character. (CFK, §3.4, equations (3.6)–(3.7), Remark 3.4, pp.15–16; CFK line 613.)

Prove the following basic properties of this construction.

- The displayed identity holds for every matrix coefficient and entire section, meromorphically.

- Any scalar satisfying the same identity for all data equals γ.

- The Sp₀ and small-spin tail conventions are exactly the stated GL or trivial factors.

- Isomorphic π and τ give the same meromorphic gamma-factor; the equality is determined on any common nonempty regular parameter set.

**Checks.**

- The Sp₀ tail contributes γ(s,τ,ψ), so deleting the Sp correction changes the factor.

- For c=2,k=1, θ=χ_π(2)⁻¹χ_τ(−1)χ_τ(2)⁻²|2|^(1−2s).

- For ψ_b the factor changes by χ_π(b)^(k⌊c/2⌋)χ_τ(b)^N|b|^(kN(s−1/2)), detecting a lost central or degree term.

Additional normalization checks:

- For c=2,k=1,s=1 and trivial characters, θ=2 over ℚ₂ and θ=1 over ℚ₃.
- For s=1/2 the |2| exponent is zero and the norm contribution is 1.
- For Sp₀ and trivial GL₁ data, γ(s)=(1−q⁻ˢ)/(1−q^(s−1)), which is not the constant 1.

A proof can proceed as follows: Compare the two equivariant continued integrals at generic s. Use pointwise nonzero data to define and continue their ratio. Compute the central, power-of-two and Sp-only factors with the fixed coordinates.

*Needs:* §6.2; §6.3; §6.4; §0.3; AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors).

### 6.6 local gamma-factor identities

The factor is compatible with norm twists: outside GSpin, twisting τ by |det|^u sends s to s+u; in GSpin, simultaneously twisting π by |Υ|^t and τ by |det|^u sends s to s+t+u. It is multiplicative for a classical-group quotient (σ₁×…×σ_d)⋊π′ via γ(π′×τ)∏γ(σ_i×τ)γ(σ_i∨×χ_πτ), and multiplicative for generic GL_k inducing factors of τ. It obeys γ(s,π∨×τ,ψ)=γ(s,π×χ_π⁻¹τ,ψ), γ(s,π×τ,ψ)γ(1−s,π∨×τ∨,ψ⁻¹)=1, and γ(s,π×τ,ψ_b)/γ(s,π×τ,ψ)=χ_π(b)^(k⌊c/2⌋)χ_τ(b)^N|b|^(kN(s−1/2)). In the unramified setting γ=L(1−s,π∨×τ∨)/L(s,π×τ). Over an archimedean field it equals the GL_N×GL_k factor of the standard local transfer T(π).

Assume the admissibility, genericity and quotient hypotheses of CFK Theorem 3.5; twists use the fixed GSpin similitude character; ψ_b(x)=ψ(bx). (CFK, Theorem 3.5, (3.8)–(3.14), pp.16–17; CFK line 634.)

A proof can proceed as follows: Compute the normalized intertwiners in stages and compare rectangular-model functionals. Track determinant characters under duality and ψ change. Use the spherical calculation or archimedean standard transfer in the stated comparison range, proving the normalized intertwiner identities on these actual model spaces.

*Needs:* §6.5; AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); SmoothRepresentationsOfLocalGroups Layer SR.4 (Satake theory); AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues).

### 6.7 L- and epsilon-factors from tempered data

For tempered π and τ at a finite place, take P∈C[X], P(0)=1, whose zeros with multiplicity are the zeros of the normalized rational γ(s,π×τ,ψ) as a function of X=q^(−s), and set L=P(q^(−s))⁻¹. Set ε=γL(s)/L(1−s,π∨×τ∨); it is a Laurent unit. Extend to essentially tempered data by norm shifts. For general π the Langlands quotient of (×σ_i)⋊π′ and generic τ=×τ_j with essentially tempered τ_j, set L(π×τ)=L(σ×τ)L(σ∨×χ_πτ)∏_jL(π′×τ_j), with the analogous product for ε. Import the normalized Langlands classification and the nongeneric GL pair factors from SmoothRepresentationsOfLocalGroups §SR.3.3 and EndoscopicTransferAndUnitaryTraceComparison §10.29. Use the positive-exponent chamber a_d>r when |Υ|^(−r)π′ is tempered. At infinity use the standard-transfer GL factors. Allow an empty GL block l=0, with π′ essentially tempered, so generic nonessentially-tempered τ is still covered. The SO₀ and SO₁ tail factors are all 1.

Assume actual ordered Langlands data; τ generic; canonical normalization P(0)=1; character conventions of CFK Remark 3.6. (CFK, §3.4, (3.15)–(3.17), Remark 3.6, p.17; CFK line 671.)

Prove the following basic properties of this construction.

- L is the reciprocal normalized gamma-zero polynomial at a finite tempered place.

- The displayed classical and GL Langlands product holds with the specified central twist.

- γ=εL(1−s,π∨×τ∨)/L(s,π×τ).

- Transport of the tempered or Langlands data through a representation isomorphism preserves L and ε, including their normalized finite-place polynomial.

**Checks.**

- P(0)=1 removes the ambiguity of multiplying P by a nonzero constant.

- A completely exhausted Sp Langlands datum retains L(s,τ).

- For tempered π and τ=|det|^bχ×|det|^(−b)χ with 0<b<1/2, the empty GL-block formula is the product of the two shifted tempered factors.

Additional normalization checks:

- For P(X)=1−2X, P(0)=1 and L=(1−2q⁻ˢ)⁻¹; multiplying P by 3 changes its constant term to 3.
- For the empty classical GL block in Sp, the remaining Sp₀ factor is L(s,τ), rather than 1.
- For exponents b=1/4 and −b, τ contributes L(s+1/4)L(s−1/4), including when the classical GL block is empty.

A proof can proceed as follows: Separate zeros of the rational gamma numerator in the tempered case and prove independence of ψ. Prove the Laurent-unit epsilon identity. Use uniqueness of Langlands data and multiplicativity to establish independence of presentations and dual compatibility.

*Needs:* §6.6; SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients); EndoscopicTransferAndUnitaryTraceComparison §10.29 (canonical nongeneric GL factors); §5.2 (local Speh adapter); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations).

### 6.8 spherical integral and doubling denominator

For normalized unramified data, Z=L(s,π×τ)/b(s,c,τ⊗χ_π). If c is even, b=[L(s+c/2,τ), for Sp only]∏_(j=1)^(c/2)L(2s+2j−2,τ,Sym²⊗χ_π)L(2s+2j−1,τ,∧²⊗χ_π). If c is odd, b=∏_(j=1)^⌊c/2⌋L(2s+2j−1,τ,Sym²⊗χ_π)∏_(j=1)^⌈c/2⌉L(2s+2j−2,τ,∧²⊗χ_π). Haar measures give volume 1 to U₀∩K_H and K_G. The local γ,L,ε agree with those of T(π)×τ when π is finite-place unramified, with arbitrary generic τ, and at every archimedean place.

Assume Spherical Z formula: π,τ,ψ,sections all unramified. Factor comparison: only π unramified at finite places; τ need not be unramified. (CFK, Equations (3.2)–(3.3), p.14; Theorem 3.7, p.17; CFK line 567.)

A proof can proceed as follows: Use Satake parameters and the rectangular spherical function to sum the integral. Identify symmetric/exterior-square Euler polynomials and the extra Sp factor. Apply local multiplicativity and the standard-transfer comparison for the stated range.

*Needs:* §6.1; §6.7; AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); SmoothRepresentationsOfLocalGroups Layer SR.4 (Satake theory); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations).

### 6.9 tempered holomorphy and Langlands pole comparison

When π is tempered and finite-place unramified or archimedean, L(s,π×τ) is holomorphic for Re(s)>0 if τ is tempered, and for Re(s)≥1/2 if τ is unitary generic. More generally, if χ_π and τ are unitary and π is finite-place unramified or archimedean with Langlands datum σ⋊π′ and positive GL exponents, then L(s,π×τ)/L(s,σ∨×χ_πτ) is holomorphic and nowhere zero on Re(s)≥1/2. The quotient statement refers to the continued meromorphic ratio, including at poles of its denominator.

Assume exactly the unramified/archimedean range above; positive Langlands chamber; unitary χ_π for the ratio statement. (CFK, Theorem 3.8 and Corollary 3.9, p.18; CFK line 711.)

A proof can proceed as follows: Compare to standard GL factors. Use the unitary generic exponent bound and tempered GL holomorphy. Apply the Langlands product to isolate σ∨×χ_πτ, observing that π′ is tempered because χ_π is unitary.

*Needs:* §6.8; §6.7; AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients).

### 6.10 highly ramified stability

At a finite place let π∈Irr(G_c) and Π∈Irr(GL_N) have central character det r_G(π), namely 1 for Sp/SO and χ_π^(N/2) for GSpin. For every sufficiently ramified character η of F×, depending on π and Π, and every unramified generic τ of GL_k, the γ,L,ε factors of π×ητ and Π×ητ agree, and both L-factors equal 1. Π need not be generic or unramified. Reduce a nongeneric Π through its GL Langlands factors, not by asserting Π is determined by its gamma-factors.

Assume Nonarchimedean characteristic-zero local field; the central characters match; generic unramified τ. (CFK, Theorem 3.10 and Remark 3.11, p.18; CFK line 725.)

A proof can proceed as follows: Use the local stability theorem with matched central characters. Replace Π by the generic representation with the same essentially tempered inducing factors to reduce its gamma comparison. Increase the ramification of η so all relevant GL L-factors and their duals are trivial. The proof includes the local analytic construction.

*Needs:* §6.6; §6.7; EndoscopicTransferAndUnitaryTraceComparison §10.29 (canonical nongeneric GL factors); §5.2 (local Speh adapter); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); §0.3.

### Examples

For c=2,k=1, θ(s)=χ_π(2)⁻¹χ_τ(−1)χ_τ(2)⁻²|2|^(1−2s). With trivial characters and s=1 this is 2 over ℚ₂ and 1 over ℚ₃. At s=1/2 both norm factors are 1. The involution on inducing data sends (s,τ) to (1−s,χ_π⁻¹τ∨); doing it twice gives (s,τ). With χ_π=1 and rank c=2, the spherical denominator is L(2s,Sym²τ)L(2s+1,∧²τ), with the extra L(s+1,τ) precisely for Sp₂. For rank-one τ, ∧²τ=0 and that factor is 1.

### Dependencies

This layer follows Layer 0, Layer 5. The direct supplier inputs are AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures); SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients); AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); SmoothRepresentationsOfLocalGroups Layer SR.4 (Satake theory); EndoscopicTransferAndUnitaryTraceComparison §10.29 (canonical nongeneric GL factors); §5.2 (local Speh adapter).

## Layer 7: auxiliary GL integrals and pole attainment

### 7.1 auxiliary GL_c × GL_k integral

Let π∈Irr(GL_c), τ∈Irr_gen(GL_k), H=GL_(kc), e₁(g)=diag(g,I_((k−1)c)) and e₂(g)=diag(I_c,g,…,g). For a matrix coefficient ω of π, W∈W_ψ(ρ_c(τ)) and Φ∈Schwartz(Mat_c), define Z_GL(s,ω,W,Φ)=∫_(GL_c)W(e₁(g))Φ(g)ω(g)|det g|^(s−(kc−2c+1)/2)dg. For k>1, convolution in the first adjacent unipotent block absorbs Φ and gives the family Z_GL(s,ω,W). At k=1 keep Φ: this is the Godement–Jacquet integral; at c=1 it is the GL_k×GL₁ Rankin–Selberg integral. The sign of the matrix-coefficient dual is distinct from the classical G integral.

Assume Characteristic-zero local field; π irreducible admissible; τ irreducible generic; fixed measures. The archimedean continuation and pole statements use unitary generic τ and the hypotheses of §§7.2–7.4. (CFK, Appendix A, pp.42–43; CFK line 1832.)

Prove the following basic properties of this construction.

- Expose the displayed determinant integral and its multilinearity.

- For k>1 the family generated after convolution equals the family without Φ.

- At k=1 recover GJ with Φ, and at c=1 recover GL_k×GL₁ RS after the stated conventions.

- Transport σ, its dual coefficient and the rectangular-model realization together; the determinant integral is unchanged.

**Checks.**

- At k=1 the exponent is s+(c−1)/2 and ρ_c(τ)=τ∘det, the GJ convention.

- At c=1 the exponent is s−(k−1)/2, the GL_k×GL₁ RS convention.

- For k=1 and a trivial GL₁ coefficient, removing Φ makes ∫_(F×)|g|^s dg divergent at one end for every s.

Additional normalization checks:

- At k=1,c=2 the exponent is s+1/2; at k=2,c=1 it is s−1/2.
- For k=c=1, without Φ the shell sum has tails q^(−ms), m∈ℤ, requiring simultaneously Re(s)>0 and Re(s)<0.
- For k>1, Φ=0 gives the zero integral; Fourier convolution absorbs nonzero Φ into the model vector, not by dropping its value.

A proof can proceed as follows: Define the integral using rectangular-model growth and Schwartz estimates. Use ψ-equivariance and Fourier convolution to absorb Φ when k>1. Compare the two boundary cases to the existing GJ and RS conventions.

*Needs:* §5.2; §5.6; AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis); AutomorphicLFunctionsAndLocalFactors Layer AL.2 (Godement–Jacquet theory); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors).

### 7.2 auxiliary functional equation and multiplicativity

For k>1 construct Z_GL*(s,ω,W)=∫_(GL_c)∫_(U⁻_((k−2)c,c)) W(diag(I_((k−1)c),g)diag(I_c,z)w_((k−1)c,c))ω(g)|det g|^(s−1+(kc−2c+1)/2)dz dg. For k=2 the z group is trivial. Its initial domain is a left half-plane. Generic uniqueness of the trilinear equivariance space in (A.2) gives γ_GL Z_GL=χ_π(−1)^(k−1)Z_GL*. With unitary τ and π embedded in normalized induction π₁×π₂, γ_GL(π×τ)=γ_GL(π₁×τ)γ_GL(π₂×τ). It agrees with γ_RS if π is finite-place unramified or the field is archimedean. In this range both integral families have meromorphic continuation and at infinity continuous continuation on the smooth data. A general archimedean nongeneric continuation is not obtained merely by invoking Bernstein’s finite-place argument.

Assume k>1; unitary generic τ for multiplicativity and the pole analysis; π finite-place unramified or archimedean for the asserted comparison/continuous continuation. (CFK, Theorems A.1–A.2 and (A.2)–(A.17), pp.43–50; CFK line 1882.)

A proof can proceed as follows: Use the specialized equivariant-distribution uniqueness theorem for (A.2); its underlying local proof is included in the local analytic construction. Split the c coordinate and apply the root-elimination transforms to the two integrals. Justify each Fourier exchange with Schwartz convolution and Dixmier–Malliavin, then reduce to GL₁×GL_k RS integrals with compact outer integration.

*Needs:* §7.1; §5.3; AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations).

### 7.3 common pole divisor of the auxiliary integrals

Assume τ unitary generic, k>1, and π finite-place unramified or archimedean. Define 𝔏(s,π×τ) by requiring every Z_GL/𝔏 to be entire and that for every s₀ some such quotient be nonzero at s₀. At a finite place it is the normalized gcd generator P(q^(−s))⁻¹, P(0)=1, for polynomial data over C[q^s,q^(−s)]. At infinity it is a meromorphic function with no zeros, specified up to an entire nowhere-vanishing factor by its pole divisor including multiplicities. Under π⊂π₁×π₂, 𝔏(π×τ)=A(s)𝔏(π₁×τ)𝔏(π₂×τ) for an entire A, which may vanish. The pole divisor is independent of ψ and translates under norm twists.

Assume k>1; τ irreducible unitary generic; π irreducible admissible and unramified if the field is nonarchimedean; at infinity use its Casselman–Wallach realization and retain divisor equality as the invariant assertion. (CFK, Theorem A.6 and (A.19), pp.50–51; CFK line 2336.)

Prove the following basic properties of this construction.

- For every datum, Z_GL/𝔏 is entire.

- At every point a quotient Z_GL/𝔏 is nonzero.

- The product formula includes an entire defect A; no assertion A∈O× is made.

- Representatives with the same entire-quotient and local-attainment properties differ by a nowhere-vanishing entire factor; the finite-place normalized inverse polynomial removes that ambiguity.

**Checks.**

- For a hypothetical finite family {P(X)⁻¹,X·P(X)⁻¹} with P(0)=1, its normalized gcd is P⁻¹, not P.

- Multiplying an archimedean representative by exp(s) leaves its divisor unchanged.

- A simple pole and a double pole at s₀ force a divisor of order two; recording just the set of poles fails.

Additional normalization checks:

- For P(X)=1−X/2, the family {P⁻¹,XP⁻¹} has pole order 1 at X=2 and normalized inverse-polynomial gcd P⁻¹.
- Multiplication by exp(s) has order 0 everywhere and changes no archimedean pole order.
- For {t⁻¹,t⁻²}, the common pole divisor has order 2, and t²·t⁻²=1 attains it.

A proof can proceed as follows: Use the continued families and their relation to reflected companion integrals to bound pole orders locally. Construct the maximal common pole divisor and use convolution to realize its order at every point. Normalize the finite-place generator and prove the entire multiplicativity defect, additive-character independence and norm-shift property.

*Needs:* §7.2; AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors).

### 7.4 auxiliary attainment of Rankin–Selberg poles

In the unitary-τ and unramified-finite/archimedean π range, L_RS(s,π×τ)/𝔏(s,π×τ) is entire. Consequently, for every s₀ there are ω,W with Z_GL(s,ω,W)/L_RS(s,π×τ) nonzero at s₀, possibly with a pole; archimedean data can be chosen K-finite. The quotient direction is essential: the auxiliary family has at least the RS pole orders. For the Langlands-quotient tail π′ obtained by deleting the first inducing block, 𝔏(π′×τ)=P(s)𝔏(π×τ) with P entire, as proved by the tail-surjectivity argument.

Assume k>1; τ unitary generic; π unramified at a finite place or arbitrary irreducible admissible at infinity; ordered essentially tempered GL Langlands quotient data. (CFK, Lemma A.8, pp.51–54; Proposition A.10 and Theorem A.11, pp.54–55; CFK line 2382.)

A proof can proceed as follows: Use the quotient-to-induced matrix-coefficient realization to reach the tail integrals with arbitrary lower data. Combine the entire product defect and dual functional equation, separating the pole half-planes of the extreme essentially tempered factors. Induct on the number of Langlands blocks and use divisor attainment; continuous continuation permits compact-type projection.

*Needs:* §7.3; §7.2; SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); EndoscopicTransferAndUnitaryTraceComparison §10.29 (canonical nongeneric GL factors); §5.2 (local Speh adapter).

### 7.5 open-chart reduction to the auxiliary GL integral

For π finite-place unramified or archimedean with unitary χ_π and a nontrivial positive Langlands block σ of GL_l, the local doubling integrals can be reduced by suitable sections and matrix-coefficient vectors to the auxiliary GL_l×GL_k family for σ∨×χ_πτ. The open-cell coordinate map of CFK (3.41) is a homeomorphism, a diffeomorphism at infinity, onto the relevant open subset of P⧸H. Its Jacobian and model transform produce exactly the local integral shift. The reduction reaches arbitrary lower-model data. Compact support and Fourier convolution justify the integrations at finite places; at infinity one needs the continuous meromorphic Fubini assertion and the opposite-unipotent bound. The unitary χ_π hypothesis is carried through each reduction.

Assume τ unitary generic; k>1; π in the indicated range; unitary χ_π; nonempty GL_l block and fixed open-cell coordinates. (CFK, Propositions 3.17–3.19, Lemma 3.20, Corollary 3.21 and (3.32), (3.35)–(3.41), pp.24–32; CFK line 987.)

A proof can proceed as follows: Insert the induced-model matrix-coefficient formula and isolate the inner Z₁ integral. Use the explicit open chart, sections supported there, and Lemma 3.20 to move the integrations. Apply root elimination to Z₂, including the determinant exponent, to obtain arbitrary auxiliary GL_l data.

*Needs:* §5.3; §6.1; §7.1; §5.6; AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients).

### 7.6 attainment of the doubling L-factor poles

Let τ be unitary generic and π have unitary χ_π, with π unramified at a finite place or arbitrary admissible irreducible at infinity. For every s₀ with Re(s₀)≥1/2, some matrix coefficient ω of π∨ and K_H-finite entire section f have Z(s,ω,f)/L(s,π×τ) nonzero at s₀, allowing a pole. Equivalently, for those data ord_(s₀) Z≤ord_(s₀) L. If π is tempered the holomorphic nonzero L and local nonzero-data theorem suffice. Otherwise isolate σ∨×χ_πτ by §6.9 and reach the auxiliary integral. The k=1 case requires the classical matrix-coefficient doubling pole theorem, including orthogonal and spin adjustments, proved in the local analytic construction.

Assume exactly the unitary central-character, unitary generic τ, and unramified-finite/archimedean π hypotheses; Re(s₀)≥1/2. (CFK, Theorem 3.12 and proof summary, p.19; proof completed after Corollary 3.21, pp.31–32; CFK line 760.)

A proof can proceed as follows: If there is no positive Langlands GL block, combine nonzero local data with tempered holomorphy. For k>1 use the open-chart reduction and the auxiliary RS pole theorem. Divide by the holomorphic nowhere-zero complementary L-factor and transport K-finite data by continuity; handle k=1 with its separate source theorem.

*Needs:* §6.2; §6.9; §7.4; §7.5.

### Examples

For k=1,c=2 the auxiliary exponent is s+1/2; for k=2,c=1 it is s−1/2. At k=2 the reflected inner unipotent is trivial. For P(X)=1−X/2, the two functions P⁻¹ and XP⁻¹ generate the same Laurent ideal as P⁻¹; at X=2 the pole order is one. At infinity exp(s) changes no pole divisor. Writing t=s−s₀, if L=t⁻¹ and an attained integral is t⁻², then Z/L=t⁻¹ and ord Z=−2≤−1=ord L. A pole is allowed by the attainment theorem.

### Dependencies

This layer follows Layer 5, Layer 6. The direct supplier inputs are AutomorphicLFunctionsAndLocalFactors Layer AL.0 (vector-space Fourier analysis); AutomorphicLFunctionsAndLocalFactors Layer AL.2 (Godement–Jacquet theory); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients); EndoscopicTransferAndUnitaryTraceComparison §10.29 (canonical nongeneric GL factors); §5.2 (local Speh adapter).

## Layer 8: holomorphy of Speh doubling Eisenstein series

### 8.1 global Speh doubling Eisenstein series

For unitary cuspidal τ of GL_k(A_F), import the discrete global Speh representation E_τ of GL_(kc)(A_F) with local components ρ_c(τ_v). For unitary Hecke character θ of A_F×/F×, form the normalized induced family i_P^H(|det|^s E_τ⊗θ), using the adopted spin Levi map, and its Eisenstein sum E_(τ,θ,c)(s,h). The parameter here is unshifted: the global integral for π×τ uses E_(χ_πτ,χ_π,c)(s−1/2,h). Define standard and finite K-type sections and the meromorphic family through the imported discrete-data Eisenstein continuation. Its poles are part of the analytic problem, not omitted by definition.

Assume number field; c≥1; τ unitary cuspidal; θ unitary; coherent quotient measures and standard parabolic. (CFK, §4.2, equations (4.1)–(4.3), pp.34–35; CFK line 1490.)

Prove the following basic properties of this construction.

- In its convergence region E is the P(F)⧸H(F) sum of the section.

- The local inducing representation matches the Layer 5 family under the stated twist and shift.

- At a local doubling variable s_G, the global series is evaluated at s_E=s_G−1/2; its own inducing exponent is s_E.

- The series is linear and right-translation equivariant in its section in the convergence region and after meromorphic continuation.

**Checks.**

- At c=1 the Speh datum is τ itself.

- The local central point s=1/2 corresponds to the global unshifted exponent 0.

- For τ=θτ∨ the holomorphy hypothesis below fails; continuation alone does not assert holomorphy.

Additional normalization checks:

- At c=1, ρ₁(τ)=τ; at s_G=1/2 the global exponent is s_E=0.
- For τ=θτ∨, the exclusion is false at t=0, so no holomorphy theorem is obtained from this hypothesis.
- Multiplying the inducing section by 3 multiplies each convergent Eisenstein summand, and hence the series, by 3.

A proof can proceed as follows: Import the global residual Speh construction and its local components from AutomorphicSpectralTheory §4.14a. Apply the AutomorphicSpectralTheory §§2.1–2.6 discrete-data induction and meromorphic Eisenstein theorem. Match its local family to Layer 5 at the shifted parameter, checking both spin characters.

*Needs:* AutomorphicSpectralTheory §4.14a (number-field residual Speh blocks); AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); §5.5.

### 8.2 two-term Speh constant term and intertwiner bounds

Assume |det|^(it)τ≄θτ∨ for every real t. The relevant maximal constant term of E_(τ,θ,c) has the two induced contributions with smaller Speh size c−1 and parameters s+1/2 and s−1/2, the latter composed with the appropriate standard intertwiners M₁(s),M₂(s). Retain the j_P-conjugate alternatives for H=SO_(2kc) or GSpin_(2kc) when k is odd. M₁ is holomorphic for Re(s)>−(c−1)/2 and M₂ for Re(s)≥1/2. Their GL normalizing ratios use L(2s,τ×θ⁻¹τ) as a holomorphic numerator under nonessential self-duality and L(2s+c−1,τ×θ⁻¹τ) as a nonzero denominator on its right boundary. These roles must not be interchanged. More precisely M₂(s)=[L(2s)/L(2s+c−1)]N₂(s), where N₂ is holomorphic for Re(s)>(2−c)/4.

Assume τ,θ unitary as in Layer 8; c>1 for the recursion; no essentially θ-self-dual τ. (CFK, (4.5), Lemma 4.3, pp.35–36; even orthogonal/spin ambient H with odd k, (4.8)–(4.9), pp.37–38; CFK line 1530.)

A proof can proceed as follows: Apply the constant-term formula to the residual Speh datum, retaining the two surviving Weyl terms. Factor the intertwiners into GL rank-one operators with the explicit RS normalizing ratios. Use global RS holomorphy/nonvanishing and the imported Moeglin–Waldspurger tempered GL intertwiner theorem.

*Needs:* §8.1; AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors).

### 8.3 residual exponents and the hermitian-support obstruction

Let e(s,c) be the real parts of the cuspidal exponents of the leading Laurent coefficient, in the ordered GL_k^c coordinates; the extra GSpin central coordinate is zero for unitary θ. Every e∈e(s,c) has the form e=Re(s)(a₁,…,a_c)+(b₁,…,b_c), with a_i∈{−1,1} and Σ_(i≤j)b_i≤0 for every 1≤j≤c. For a supposed pole s₀ with 0<Re(s₀)<1/2, only the second constant-term contribution survives, so e=(−Re(s₀)−(c−1)/2,e′), e′∈e(s₀−1/2,c−1). Hence Σ_(i≤j)e_i≤−j Re(s₀)−(c−j)/2≤−j Re(s₀)<0 for every j, including j=c. The residue is square-integrable. Its hermitian cuspidal support forces |det|^(s₀−s̄₀)τ≅θτ∨, contradicting the nonessential-self-duality hypothesis. The conjugate-parabolic alternatives for even orthogonal/spin H with odd k obey the same bounds. Square-integrability alone does not imply the support conclusion: that is the separate AutomorphicSpectralTheory Layer 4 request.

Assume the two-term recursion; no essential θ-self-duality; the precise ordered exponent convention of AutomorphicSpectralTheory §§2.1–2.6/AutomorphicSpectralTheory Layer 4. (CFK, Lemma 4.4 and proof of Theorem 4.1, (4.6)–(4.8), pp.36–38; CFK line 1592.)

A proof can proceed as follows: Induct using the two half-unit-shifted exponent sets in Lemma 4.4. At a pole retain only the negative first coordinate and bound each signed tail coordinate by 1/2−Re(s₀); include the last partial sum. Apply the Langlands square-integrability criterion to the proposed residue. Use the hermitian cuspidal-support theorem to force the forbidden duality.

*Needs:* §8.2; AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicSpectralTheory Layer 4 (residual spectrum and cuspidal support).

### 8.4 holomorphy without essential self-duality

If τ is unitary cuspidal and θ unitary, with |det|^(it)τ≄θτ∨ for every t∈R, then E_(τ,θ,c)(s,h) is holomorphic on Re(s)≥0 for every holomorphic finite-K-type section family and every h. The boundary is included. Prove the c=1 case from the normalized rank-one series, then induct using the two-term constant term, the intertwiner half-planes, the boundary analysis and the residual-exponent obstruction in the remaining strip. The same assertion is stated with all necessary j_P alternatives for H=SO_(2kc) and GSpin_(2kc) when k is odd.

Assume the five split groups and the precise unitary/nonessential-self-duality hypotheses above. (CFK, Theorem 4.1 and proof, pp.34–38; CFK line 1490.)

A proof can proceed as follows: Establish the c=1 base case with the normalizer and residual support criterion. Induct on c using the two surviving constant-term contributions and their holomorphy. Exclude interior residual poles using §8.3 and prove the Re(s)=0 boundary separately as in the source. Use unitary-axis regularity and detection of a pole by a cuspidal constant term from the speh-pole-detection contract; these do not follow from formal meromorphic continuation.

*Needs:* §8.2; §8.3; AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicSpectralTheory Layer 4 (residual spectrum and cuspidal support).

### 8.5 right-half-plane holomorphy of the normalizer

For the finite unramified product b^S(s,c,τ⊗χ_π) of §6.8, with τ unitary cuspidal and χ_π unitary, the continued normalizing product is holomorphic on Re(s)≥1/2 when τ is not essentially χ_π⁻¹-self-dual. The proof uses the global analytic theory of the χ_π-twisted symmetric- and exterior-square L-functions occurring in b, including their possible pole criteria, as well as the Sp-only standard factor. These are inputs of AutomorphicSpectralTheory §§2.1–2.6’s normalizing-factor theory; AutomorphicLFunctionsAndLocalFactors AL.4’s Euler-polynomial definitions and right convergence alone do not establish this boundary statement.

Assume S contains ramification and infinity; unitary τ and χ_π; the no-essential-duality condition. (CFK, Proof of Theorem 4.8, p.40; formula (3.3), p.14; CFK line 1719.)

A proof can proceed as follows: Write the b product with every parity-dependent shift. Apply the supplied twisted symmetric/exterior-square holomorphy and pole criterion at each shifted argument. Use the standard GL_k factor for Sp and remove the finitely many good local normalizers.

*Needs:* §6.8; AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors).

### Examples

At c=2 and Re(s₀)=1/4, the first residual exponent is −3/4, and the largest possible tail exponent is 1/4. The partial sums are at most −3/4 and −1/2. At the forbidden endpoint Re(s₀)=0 the final bound is zero, so the strict square-integrability argument cannot replace unitary-axis regularity. If τ=θτ∨ the nonessential-duality hypothesis fails; the rank-one self-pair normalizer can have its familiar pole. At s_G=1/2 the inducing parameter of the global series is s_E=0.

### Dependencies

This layer follows Layer 5, Layer 6. The direct supplier inputs are AutomorphicSpectralTheory §4.14a (number-field residual Speh blocks); AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); AutomorphicSpectralTheory Layer 4 (residual spectrum and cuspidal support); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence).

## Layer 9: completed generalized doubling L-functions

### 9.1 generalized global doubling period and unfolding

For unitary cuspidal π of G_c(A_F), unitary cuspidal τ of GL_k(A_F), cusp vectors φ₁∈π and φ₂∈π∨, and a section of E_(χ_πτ,χ_π,c)(s−1/2), form E^(U,ψ_U)(h;s_E)=∫_(U(F)⧸U(A))E(uh;s_E)ψ_U(u)du and integrate φ₁(g₁)φ₂(ι(g₂))E^(U,ψ_U)(e(g₁,g₂);s−1/2) over (C_G^•(A)G(F)⧸G(A))². Here ι is the Layer 5 involution of G, written as conjugation in CFK. Retain the inducing χ_π twists: together with the contragredient pair and ι they make the full integrand descend through each distinguished central quotient. Outside GSpin this distinguished central torus is trivial. In a right half-plane the global integral unfolds to the local matrix-coefficient doubling integral. For factorizable data with the global Petersson evaluation pairing and normalized good vectors, b^S(s)Z_global(s)=L^S(s,π×τ)∏_(v∈S)Z_v(s). The sum over rational orbits, Fourier expansion, cusp-form pairings and measure factorization are justified before meromorphic continuation.

Assume number field; cuspidal π,τ; fixed automorphic embeddings and nondegenerate Petersson pairing; S includes infinity and all ramification. (GK, §3.2, Corollary 3.7 and equation (3.8), pp.70–73; GK line 4043; CFK, §4.3, (4.10), pp.38–39; CFK line 1653.)

Prove the following basic properties of this construction.

- On the initial half-plane, the global period equals its open-orbit matrix-coefficient integral.

- For factorizable data its normalized Euler identity is exactly b^S Z=L^S∏_S Z_v.

- Changing one local quotient measure changes the global factorization by the corresponding explicitly tracked scalar.

- The continued global period is trilinear in the section and the two cusp vectors in their chosen automorphic realizations.

**Checks.**

- Adding a good v to S leaves the identity unchanged because b_vZ_v=L_v.

- A zero cusp vector yields a zero period, so nonzero data are required before division.

- For k=1 the Fourier coefficient has trivial U and the kernel is the classical doubling Eisenstein series.

- Replacing φ₂ by φ₂∘ι twice recovers φ₂; unfolding uses φ₂∘ι and the local point e₂(ι(g)). Omitting only one of these involutions changes the pairing.

Additional normalization checks:

- At a good place b_vZ_v=L_v, so removing v from the Euler product and inserting Z_v/b_v⁻¹ restores the same factor.
- A zero cusp vector makes every summand of the period 0.
- At k=1, U={1}; pulling back φ₂ by ι twice gives φ₂, and the matched local involution also squares to 1.
- For GSpin₂, dim(center)=2, dim(C_G^•)=1 and dim(G/C_G^•)=1. Quotienting by the whole connected center would instead give dimension 0 and would change the integral.

A proof can proceed as follows: Construct the Fourier coefficient with the displayed character, pull the second cusp vector back by ι, and verify each distinguished-central invariance before integrating. Classify the relevant P(F)⧸H(F) orbits after Fourier expansion; show the nonopen terms vanish using rectangular wavefront vanishing and cuspidality. Identify the open-orbit stabilizer and matrix coefficient, then factor the absolutely convergent integral using restricted-product measures.

*Needs:* §5.4; §5.2; §6.1; §6.8; §8.1; AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures); AutomorphicFormsOnReductiveGroups §§4.1–4.3 (globalization, cuspidality and pairings).

### 9.2 completed doubling L-function

For cuspidal π of G_c(A_F) and cuspidal τ of GL_k(A_F), define L(s,π×τ)=L^S(s,π×τ)∏_(v∈S)L(s,π_v×τ_v) on a common right half-plane, using the local factors of Layer 6 including the archimedean ones. Define ε(s,π×τ)=∏_v ε(s,π_v×τ_v,ψ_v); almost all factors are 1. The product formula and central-character identities make this independent of the chosen nontrivial character of A_F/F. The analytic continuation is obtained from the Euler identity and local nonzero data; changing S gives the same meromorphic function.

Assume Factorizable cuspidal representations; standard dual degree N; unitary representations after extracting norm twists; global additive character. (CFK, §4.3, pp.38–39; CFK line 1710.)

Prove the following basic properties of this construction.

- The complete product is the partial product times the local factors in S.

- Enlarging S does not change L or its continued function.

- The global epsilon product is invariant under ψ↦ψ_b for b∈F× by the product formula and global central characters.

- Two meromorphic continuations agreeing with the same convergent Euler product on a right half-plane coincide on C.

**Checks.**

- For F=Q, the real gamma-factor is included and cannot be dropped from the functional equation.

- Moving one good prime into S multiplies the partial product by L_v⁻¹ and the finite correction by L_v.

- For b∈F× the product of the local character-change scalars is 1; an arbitrary idele need not have that property.

Additional normalization checks:

- For a good local factor L_v=2, enlarging S scales L^S by 1/2 and its correction by 2, giving total multiplier 1.
- For F=ℚ,b=2, |2|∞|2|₂=2·1/2=1; the other finite norm factors are 1.
- An idele with real component 2 and every finite component 1 has norm 2, so rational rescaling cannot be replaced by arbitrary idele rescaling.

A proof can proceed as follows: Use imported partial-product right convergence and good Satake comparison. Attach the finite set of bad and infinite local factors. Continue through the period identity with pointwise nonzero local data and use overlaps to prove independence of all auxiliary choices.

*Needs:* §6.7; §6.2; §9.1; AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures).

### 9.3 global functional equation and strip bounds

For the completed doubling function, L(s,π×τ)=ε(s,π×τ)L(1−s,π∨×τ∨). The corresponding crude partial equation is L^S(s)=∏_(v∈S)γ(s,π_v×τ_v,ψ_v)L^S(1−s,π∨×τ∨). If both completed L-functions are entire, they are bounded on each vertical strip of finite width. The strip-boundedness assertion uses uniform Eisenstein/intertwiner and local archimedean estimates and is an additional theorem; it does not follow from the functional equation alone.

Assume cuspidal unitary π and τ, with extracted norm twists permitted; fixed normalizations of Layers 6 and 9. (CFK, Theorems 4.6–4.7, p.39; Theorem 3.5, (3.14), p.16; CFK line 1713.)

A proof can proceed as follows: Apply the global Eisenstein functional equation to the doubled period and factor its local intertwiners. Use the complete local functional equations to obtain the completed and partial identities. Under entireness use the growth estimates and strip argument of the local/global theory. Prove these strip estimates for the continued doubling family with its specified local normalization.

More precisely, if both completions are entire, for every real a≤b there is C≥0 such that both absolute values are at most C whenever a≤Re(s)≤b. The bound is uniform in Im(s) for the fixed representations. Establish the smooth Eisenstein and archimedean seminorm estimates required by the strip argument; no claim of uniformity over all cuspidal representations is made.

*Needs:* §9.2; §6.6; §6.4; AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues).

### 9.4 entireness for highly ramified twists

Let π and τ be unitary cuspidal of G_c(A_F) and GL_k(A_F). Suppose |det|^(it)τ≄χ_π⁻¹τ∨ for every real t, and at every finite place where π_v is ramified both L(s,π_v×τ_v) and L(s,π_v∨×τ_v∨) are 1. Then both completed global L-functions are entire and bounded on finite vertical strips. For Re(s₀)≥1/2 write b^S Z_global=L(s,π×τ)Q(s), Q=∏_(v∈S)Z_v/L_v. At unramified finite and infinite places choose pole-attaining data with ord_(s₀)Q_v≤0; at ramified π places use L_v=1 and nonzero finite data. Holomorphy of the left side implies ord L≥−ord Q≥0. This order argument permits Q to have poles. Apply the dual argument and functional equation to obtain the other half-plane and then the strip bounds.

Assume all unitary, no-essential-duality and trivial bad-local-factor hypotheses above; K_H-finite sections. (CFK, Theorem 4.8 and (4.11), pp.39–40; CFK line 1719.)

A proof can proceed as follows: Use Layer 8 holomorphy at the shifted parameter and the holomorphic b normalizer. Choose local data at each s₀ using §7.6 or §6.2. Apply the order inequality, then duality and the completed functional equation, and finally the strip theorem.

*Needs:* §8.4; §8.5; §9.1; §9.3; §7.6.

### Examples

Moving a good place v into S replaces L^S by L^S/L_v and restores L_v in the finite correction; both products agree. For F=ℚ and b=2, |2|∞=2 and |2|₂=1/2, so their product is 1; for a=χ_τ a global idele-class character, a(2)=1. The local additive-character changes therefore cancel globally. At t=s−s₀, ord Q=−1 and ord(b^S Z)=0 force ord L=1; assuming Q holomorphic would lose this valid case. The paired global pullback φ₂∘ι and local e₂(ιg) both square to the original datum.

### Dependencies

This layer follows Layer 5, Layer 6, Layer 7, Layer 8. The direct supplier inputs are AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures); AutomorphicFormsOnReductiveGroups §§4.1–4.3 (globalization, cuspidality and pairings); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues).

## Layer 10: weak and coarse standard transfer

### 10.1 weak functorial transfer

For automorphic π of G_c(A_F), a weak transfer is an irreducible automorphic Π of GL_N(A_F) whose Satake conjugacy class equals r_G(t_(π_v)) at almost all unramified finite places and whose infinitesimal character at every archimedean place is the one induced by r_G. This definition does not require equality of the entire archimedean local representations. The constructed transfer in §10.4 will satisfy that stronger archimedean comparison. The global GL isobaric-sum constructor is imported from AutomorphicLFunctionsAndLocalFactors, Representation prerequisites, GLₙ isobaric sums, and nongeneric almost-everywhere support uniqueness from AutomorphicLFunctionsAndLocalFactors AL.3.

Assume number field; the standard degree and central data of Layer 0; automorphic representations with fixed central characters. (CFK, Definition 2.2, p.9; Remark 4.9, p.41; CFK line 345.)

Prove the following basic properties of this construction.

- At every place outside some finite set, the Satake classes match through r_G.

- At infinity the induced infinitesimal characters match.

- The predicate is invariant under isomorphism of both automorphic representations.

- A finite exceptional set, compatible unramified Satake classes outside it and the required archimedean infinitesimal characters give a weak-transfer witness.

**Checks.**

- For G=Sp₂ the receiving group is GL₃.

- Adding a finite set of good places to the excluded set preserves the predicate.

- The definition allows an automorphic GL_N representation that is not cuspidal; replacing automorphic by cuspidal changes the target.

Additional normalization checks:

- For Sp₂, N=3, so the weak-transfer target is GL₃, not GL₂.
- If equality holds outside S, it holds outside S∪{v}, since the latter indexing set is smaller.
- Two GL₁ isobaric summands on GL₂ produce polynomial 1−(a+b)T+abT² and an automorphic noncuspidal possibility; cuspidality is not in the predicate.

A proof can proceed as follows: Use the imported Satake and infinitesimal-character carriers to state the comparison predicates. Prove invariance under isomorphism and change of good finite set. Keep the definition separate from the stronger construction theorem and coarse gamma comparison.

*Needs:* §0.3; SmoothRepresentationsOfLocalGroups Layer SR.4 (Satake theory); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors).

### 10.2 coarse local transfer

For π∈Irr(G_c(F)), a coarse transfer is Π∈Irr(GL_N(F)) such that γ(s,π×τ,ψ)=γ_RS(s,Π×τ,ψ) for every k≥1 and every irreducible generic τ of GL_k(F). It suffices to test supercuspidal τ, by multiplicativity; the phrase all irreducible τ in CFK (3.18) is restricted to the generic domain actually defined on the classical side. At a finite place the gamma comparisons determine the supercuspidal support of Π, and any irreducible representation with that support is again a coarse transfer. They do not determine an arbitrary nongeneric irreducible Π up to isomorphism.

Assume local char zero; fixed ψ and standard degree N; nongeneric GL pair factors imported from EndoscopicTransferAndUnitaryTraceComparison §10.29. (CFK, §3.5, (3.18), pp.18–19; CFK line 738.)

Prove the following basic properties of this construction.

- It is equality of gamma-factors against all generic GL tests.

- Testing only supercuspidal twists is equivalent.

- At finite places it is invariant within a GL supercuspidal-support class, and two coarse transfers have the same support.

- Isomorphisms of π and Π preserve every gamma test and hence the coarse-transfer predicate.

**Checks.**

- An unramified π has T(π) as a coarse transfer.

- For GL₂, the trivial representation and the normalized Steinberg representation have the same supercuspidal support { |·|^(1/2), |·|^(−1/2) } and the same full family of GL gamma-factors, although they are not isomorphic.

- A nongeneric τ cannot be inserted into the classical-side integral before a further extension is defined; the definition explicitly quantifies over generic τ.

Additional normalization checks:

- For the GL₂ trivial and Steinberg representations, both supports are {ν^(1/2),ν^(−1/2)} but their standard L-functions differ by L(s−1/2).
- Their GL₁ gamma tests agree because (1−q^(1/2−s))/(1−q^(s−1/2))=−q^(1/2−s) meromorphically.
- For a nongeneric GL₂ test the ordinary Whittaker dimension is 0, so the classical integral supplies no generic test vector.

A proof can proceed as follows: Define the gamma comparison on the actual generic testing domain. Reduce general generic tests to supercuspidal data by local multiplicativity. Apply the GL supercuspidal-support characterization and support invariance, in the gamma-supercuspidal-support contract, rather than a false nongeneric local converse theorem.

*Needs:* §6.6; EndoscopicTransferAndUnitaryTraceComparison §10.29 (canonical nongeneric GL factors); §5.2 (local Speh adapter); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients).

### 10.3 twisted converse theorem for GL_N

Let N≥2, let S be a nonempty finite set of finite places, η a unitary Hecke character, and Π=⊗′Π_v an irreducible admissible representation of GL_N(A_F) whose central character is trivial on F× and whose standard Euler product converges absolutely sufficiently far right. Suppose for every τ=ητ′, where τ′ is unitary cuspidal on GL_k for 1≤k≤N−1 and unramified at S, both completed L(s,Π×τ) and L(s,Π∨×τ∨) are entire, bounded on finite vertical strips and satisfy the standard completed functional equation. Then an irreducible automorphic Π′ exists with Π′_v≅Π_v at every v∉S, including infinity. This specialized converse theorem is a new proof input here; neither AutomorphicLFunctionsAndLocalFactors AL.4 right convergence nor strong multiplicity one supplies automorphy.

Assume all displayed hypotheses; complete archimedean factors; irreducible admissible restricted tensor product and central-character descent. (CFK, §2, Theorem 2.1, pp.8–9; CFK line 320.)

A proof can proceed as follows: Use the twisted GL_N converse theorem with the S-unramified testing family. Track its central character, epsilon product and all archimedean components. Verify that its automorphic output matches Π outside S. The proof includes the stated converse and globalization inputs.

The conclusion permits an automorphic, noncuspidal output and prescribes no equality at a place of S. The proof must treat every rank 1,…,N−1 in the fixed family and all archimedean factors; the generic and reduced-rank converse theorems supplied by AL.3 do not imply this statement by a change of labels.

*Needs:* AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); AutomorphicFormsOnReductiveGroups §§3.4–3.5 (restricted tensor realizations); AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures); EndoscopicTransferAndUnitaryTraceComparison §10.29 (canonical nongeneric GL factors); §5.2 (local Speh adapter).

### 10.4 weak transfer of nongeneric cusp forms

Every irreducible cuspidal automorphic representation π of a split Sp_(2n), SO_(2n), SO_(2n+1), GSpin_(2n) or GSpin_(2n+1) over a number field, in the stated nontrivial ranks c>1, has a weak transfer to GL_N. It can be chosen with Π_v=T(π_v) at every archimedean place. No global genericity hypothesis is imposed on π. The construction chooses good Satake transfers, archimedean standard transfers, and arbitrary bad local GL_N data with the required central character. A highly ramified unitary Hecke character η at a nonempty bad set can be chosen so that η_v₀²χ_(π_v₀) is nontrivial on O_v₀× at one place, excluding every essential self-duality for ητ′ with τ′ unramified there. Stability supplies trivial bad local L-factors and equality with the candidate; entireness and the twisted converse theorem then give automorphy.

Assume split characteristic-zero number-field groups; cuspidal π, unitary after a norm twist; all analytic and central-character inputs above. (CFK, Theorem 0.1, pp.1–3; §4.4, proof, pp.40–41; CFK line 1749.)

A proof can proceed as follows: Construct the restricted-tensor candidate and verify its central character on F× and right Euler convergence. Choose η with the local ramification and non-self-duality condition, using the Hecke-character prescription input. Identify completed candidate factors with doubling factors, prove all converse hypotheses uniformly in the prescribed τ′ family, and apply §10.3.

*Needs:* §10.1; §10.3; §9.4; §6.10; §6.8; AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence).

### 10.5 every weak transfer is coarse at every place

For cuspidal π and any automorphic weak transfer Π, every Π_v is a coarse transfer of π_v. First compare the isobaric cuspidal support of Π with the constructed transfer through AutomorphicLFunctionsAndLocalFactors, Representation prerequisites, GLₙ isobaric sums and AutomorphicLFunctionsAndLocalFactors AL.3, Strong multiplicity one for isobaric sums; this permits replacement by the transfer with full archimedean matching, without claiming arbitrary automorphic GL_N representations are globally generic. Match the global central character of Π with det r_G(π) from agreement at almost all places before using stability. To isolate a bad place v₀, globalize an arbitrary local supercuspidal GL_l test with controlled auxiliary ramification, choose η_v₀=1 and sufficiently ramified η elsewhere, then cancel the local factors away from v₀ in the two global functional equations. Multiplicativity extends the equality to all generic tests.

Assume π cuspidal; Π weak automorphic transfer; fixed global ψ; exact controlled globalization and Hecke-character prescription inputs. (CFK, Theorem 4.10 and (4.12)–(4.14), p.41; CFK line 1792.)

A proof can proceed as follows: Use global isobaric support uniqueness and GL support-invariance of gamma-factors to reduce to the constructed infinity components. Prove equality of the Hecke central characters from almost-everywhere local equality. Globalize each supercuspidal test and choose twisting characters with any necessary auxiliary ramification included in the cancellation set; apply the completed/partial functional equations and stability away from v₀.

*Needs:* §10.4; §10.2; §9.3; §6.10; AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); AutomorphicFormsOnReductiveGroups §§4.1–4.3 (globalization, cuspidality and pairings); AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures).

### 10.6 existence of coarse local transfers

For every irreducible admissible π of one of the five split groups over a characteristic-zero local field, a coarse GL_N transfer exists. At infinity and at unramified finite places use T(π). For finite-place supercuspidal π use globalization to a cuspidal number-field representation, the global weak-transfer theorem and all-place coarse compatibility. For general π use supercuspidal support (×σ_i)⋊π₀ and a coarse transfer Π₀ of π₀; any irreducible GL_N constituent of (×σ_i)×Π₀×(×χ_πσ_i∨) has the required gamma comparisons. To apply quotient multiplicativity to a constituent π, first use Jacquet exactness and the geometric lemma to realize it as a quotient for Weyl-conjugate supercuspidal data; the product is invariant under these permutations and dual twists.

Assume Characteristic-zero local field; admissible irreducible π; distinguished-central-torus convention; fixed ψ. (CFK, Corollary 4.11 and proof, p.42; CFK line 1817.)

A proof can proceed as follows: Globalize a supercuspidal local representation with prescribed local field and central character. Apply the global existence and coarse-compatibility theorems. Reduce general π through a quotient with Weyl-conjugate supercuspidal data and apply both multiplicativity formulas.

*Needs:* §10.5; §10.2; §6.6; SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients); SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients); AutomorphicFormsOnReductiveGroups §§4.1–4.3 (globalization, cuspidality and pairings); EndoscopicTransferAndUnitaryTraceComparison §10.29 (canonical nongeneric GL factors); §5.2 (local Speh adapter).

### 10.7 weak transfer for general automorphic representations

Every irreducible automorphic representation π of the split groups in §10.4 has a weak GL_N transfer, without a cuspidality hypothesis. Import the theorem that π occurs as a constituent of normalized induction from cuspidal automorphic data on a Levi GL_(β₁)×…×GL_(β_d)×G_(c−2l). Transfer its classical cuspidal factor, and form the GL isobaric sum of the GL blocks, that transfer and their χ_π-twisted dual blocks. At good places the Satake classes and at infinity the infinitesimal characters are those of r_G applied to π. Low-rank tails use the explicit conventions of Layer 6.

Assume Irreducible automorphic π; the exact global cuspidal-support theorem and isobaric-sum existence; extracted norm twists and spin central character. (CFK, Introduction, p.2, consequence of Theorem 0.1; CFK line 61.)

A proof can proceed as follows: Apply the imported automorphic cuspidal-support theorem, retaining the inducing exponents. Apply §10.4 to the classical cusp factor and use the GL isobaric constructor. Compare Satake and infinitesimal characters through parabolic induction and the standard dual representation.

*Needs:* §10.4; §10.1; AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicSpectralTheory Layer 4 (residual spectrum and cuspidal support); AutomorphicFormsOnReductiveGroups §§3.4–3.5 (restricted tensor realizations); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors).

### Examples

Sp₂ transfers to GL₃ and SO₃ to GL₂. In degree two, the GL₂ trivial representation and normalized Steinberg representation share support {ν^(1/2),ν^(−1/2)} and all gamma tests, but their standard L-factors are respectively L(s+1/2)L(s−1/2) and L(s+1/2). For a GL₁ test, the quotient of the two character gamma factors yields the Steinberg epsilon monomial −q^(1/2−s), so support equality does not imply isomorphism or equality of L-factors. The converse family for N=2 tests rank 1; for N=3 it tests ranks 1 and 2. If the original bad set is empty, add one finite place, so the twist prescription still has a nonempty set.

### Dependencies

This layer follows Layer 0, Layer 6, Layer 9. The direct supplier inputs are SmoothRepresentationsOfLocalGroups Layer SR.4 (Satake theory); AutomorphicFormsOnReductiveGroups §§2.1–2.7 (real representations and globalizations); AutomorphicSpectralTheory §§2.1–2.6 (meromorphic induction, intertwiners and ordered residues); AutomorphicLFunctionsAndLocalFactors Layer AL.3 (Rankin–Selberg factors); EndoscopicTransferAndUnitaryTraceComparison §10.29 (canonical nongeneric GL factors); §5.2 (local Speh adapter); SmoothRepresentationsOfLocalGroups §SR.3.3 (tempered support and Langlands quotients); AutomorphicLFunctionsAndLocalFactors Layer AL.4 (Satake Euler factors and convergence); AutomorphicFormsOnReductiveGroups §§3.4–3.5 (restricted tensor realizations); AdelicAlgebraicGroups §§0.1–0.4 and 2.2–2.3 (restricted products and quotient measures); AutomorphicFormsOnReductiveGroups §§4.1–4.3 (globalization, cuspidality and pairings); SmoothRepresentationsOfLocalGroups §§SR.2.1–SR.2.4 (induction, Jacquet functors, geometric lemma and matrix coefficients); AutomorphicSpectralTheory Layer 4 (residual spectrum and cuspidal support).

## Downstream consumers

The unitary pullback and critical archimedean sections supply complex analytic inputs for AutomorphicPadicLFunctionsPartII and AutomorphicCongruences; those consumers add their measures, ordinary structures and integral lattices. The generalized local factors and all-place coarse comparison supply analytic standard-transfer tests to classical-group automorphic applications. The weak-transfer theorem supplies automorphy and almost-everywhere Satake comparison; its separate coarse theorem supplies all-place gamma comparisons. Neither conclusion asserts nongeneric local isomorphism uniqueness or cuspidality of a unitary base change.

## References

Page numbers refer to the particular texts below. Each source key is the one used in sources.toml, and line locators refer to its numbered extraction. The statements above use their own words and fixed normalization conventions.

- **CFK.** Yuanqing Cai, Solomon Friedberg and Eyal Kaplan, *Doubling constructions: Global functoriality for non-generic cuspidal representations*, [arXiv:1802.02637v5](https://arxiv.org/pdf/1802.02637v5), 2024 version, internal pp.1–60. Theorem 0.1, §2 Theorem 2.1, §§3–4 and Appendix A. The journal bibliographic record is Annals of Mathematics 200 (2024), 893–966; DOI 10.4007/annals.2024.200.3.2. The locators here are those of v5, not journal pagination.
- **EHLS.** Ellen Eischen, Michael Harris, Jian-Shu Li and Christopher Skinner, *p-adic L-functions for unitary groups*, Forum of Mathematics, Pi 8 (2020), e9, [published open text](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/E1D22AA60E10A5B5CA5F838EB48467D7/S2050508620000049a.pdf), DOI 10.1017/fmp.2020.4. §§4.1–4.5, pp.43–81; equation (143), p.101; Theorem 9.1.3, pp.149–150.
- **MODELS.** Yuanqing Cai, Solomon Friedberg, Dmitry Gourevitch and Eyal Kaplan, *The generalized doubling method: (k,c) models*, [arXiv:2109.11309v1](https://arxiv.org/pdf/2109.11309v1), 2021. Definition 1, Theorem 4, Claim 6 and Lemmas 7, 9, 12, internal pp.2–11. Journal record: Proceedings of the AMS 151 (2023), 2831–2845; the locators here use v1.
- **GK.** Dmitry Gourevitch and Eyal Kaplan, with appendix by Avraham Aizenbud and Dmitry Gourevitch, *Multiplicity one theorems for the generalized doubling method*, [publisher open text](https://ems.press/content/serial-article-files/32911), online-first internal pp.1–86; Journal of the EMS 25 (2023), 3007–3092. Theorem A, Theorems 1.4 and 2.1, and §3.2 Corollary 3.7 and (3.8).
- **HLS.** Michael Harris, Jian-Shu Li and Christopher Skinner, *p-adic L-functions for unitary Shimura varieties, I: Construction of the Eisenstein measure*, Documenta Mathematica Extra Volume Coates (2006), 393–464; [author text](https://webusers.imj-prg.fr/~michael.harris/padicPart1.pdf), internal pp.1–72. §§3.1–3.2.1, internal pp.43–50.
- **GARRETT.** Paul Garrett, *Archimedean Zeta Integrals for Unitary Groups*, [author preprint held by NYU](https://math.nyu.edu/~tschinke/princeton/papers/.aim05/submitted/garrett.pdf), May 18, 2006. §§1–2, pp.1–4, especially the Haar normalization and qualitative theorem on p.4.
- **HARRIS.** Michael Harris, *A simple proof of rationality of Siegel–Weil Eisenstein series*, [author text](https://webusers.imj-prg.fr/~michael.harris/SW.pdf), in the 2008 volume *Eisenstein Series and Applications*. Remark 4.4(iii)–(iv), internal pp.27–28, for the measure comparison, holomorphic theta image and nonvanishing criterion.
