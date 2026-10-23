# Roadmap: counting bundles and Hall algebras of curves

**Summary.** Build the counting theory of geometrically indecomposable bundles on smooth projective curves over every finite field. Starting with coherent sheaves, Harder–Narasimhan theory, curve arithmetic and complete Adams series, identify nilpotent-pair masses with a spherical Hall partition expression. The end theorems are the universal partition residue formula, the all-characteristic coprime stable Higgs count, pure Higgs cohomology and its compact Poincaré polynomial, the nilpotent-cone component formula, and Mellit's integral, degree-independent universal count. Parabolic universality, slope refinements and the constructible spherical Hall Lie algebra complete the library; the precise remaining HN and Hall assertions are formulated as conjectures.

## Scope and ownership

This roadmap owns coherent nilpotent pairs and their Jordan correspondences, the finite-field nilpotent enumeration, curve Hall convolution and its spherical generic form, ordered shuffle residues, the curve partition kernels, the positive canonical Higgs exact category and its coherent comparisons, the corrected two-line chart, central deformation and its counting application, the Higgs cohomological formulas, and the curve-specific Mellit deformation and its consequences. The positive exact category and stable canonical coarse geometry extend the supplied coherent Higgs carrier and the supplied bundle HN and deformation theory.

The following constructions are supplied elsewhere and have no second construction here.

- AlgebraicVectorBundles Layers L0A–L2B owns finite locally free sheaves, ranks, tensor and dual, pullback and geometric total spaces. QuiverRepresentations Layers 1–2 owns representations and their module interpretation; its Layer 6 and ArtinAlgebras Layer 0 own general categorical decomposition theory. Section 1.1 here specializes the additive Hom comparison to the coherent category, and §1.2 applies the pinned module decomposition results; neither introduces a generic quiver carrier or another categorical Krull–Schmidt theorem.
- SchemeAndStackFoundations §§1.18–1.21, 2.20, 3.3, 3.6–3.7 and 4.14 owns stacks and descent, duality, degree and Riemann–Roch, Picard torsors and Quot. GlobalShtukasAndFunctionFieldLanglands §§GS.0.5–GS.0.6 and GS.0.13 owns coherent HN theory, boundedness and the bundle/torsion mass formulas. Those masses are consumed in Hall pairings; their construction is not a target here.
- WeilConjectures WC.1, “Finite groupoid mass”, owns rational finite groupoid mass, equivalence invariance, products, unions and action-groupoid cardinality. Section 2.1 adds homotopy-fibre Fubini for the Jordan correspondences, using that mass.
- EndoscopicTransferAndUnitaryTraceComparison §§3.6–3.7 owns the bundle Higgs stack, the coherent canonical Higgs carrier with ordinary slope stability, and existential good lines. AutomorphicSpectralTheory §6.22c owns ordinary bundle Higgs HN theory and coprime stability; §6.24 owns the canonical bundle Higgs deformation complex and strict-slope extension formula. Section 7.1 here adds the positive exact category and the coherent derived comparison, and §8.1 derives a sufficient numerical framing bound. ReductiveGroupsPartII §RG2.3.7 owns Lang's theorem; the descent-gerbe neutrality statement of §1.6 is a separate theorem.
- ClassicalGroupsPartII §§CG.0.4–CG.0.5 and CG.2.4–CG.2.6 owns the reciprocal torus, Weyl action and full character ring. Section 0.1 specializes them to counting coefficients. FunctionFieldArithmetic §§0.2–0.3 and 5.1–5.4 owns the degree-one divisor, Picard comparison and zeta formulas.
- HabiroNahmSeries §5.1 owns the augmentation-complete ordinary multivariate logarithm and exponential over a ℚ-algebra, including their inverse and product laws. HabiroCyclotomicCompletions §1.1 owns elementary simultaneous q-and-series Adams substitution and its plethystic exponential on tℚ((q))[[t]]. The complete-Adams contract below extends that specialization to general complete rational λ-rings and supplies the inverse logarithm and coefficient functoriality.
- QSeriesPartitionsAndMockModularForms §§2.4 and 3.5 owns the series interfaces extended by the contracts below; its symmetric-function Part II owns generic modified Macdonald admissibility and the regular-sequence deformation theorem. The latter theorem is an input to Layer 10, whose own deformation is the curve partition identity.
- DeligneWeightsAndPurity §§0.10, 0.12, 0.16–0.18, 7.15 and 10.5 owns Frobenius linear algebra, projective purity and equidistribution. EtaleDualityAndPerverseSheaves §§0.4 and 0.6–0.7 owns duality and trace comparisons. CohomologicalPointCounting’s “The combined endpoint” section and ComplexComparisonPartII §C6.6 own compact cohomology and comparison. Section 9.3 adds the genus-wise topological argument for the actual coprime Higgs spaces.
- Mathlib already has Young diagrams, transpose, Jacobson-radical structure and the general-linear-group cardinality; Tau Ceti already has arm and leg lengths and the module Krull–Schmidt theorems. These are used with their pinned hypotheses. No second partition carrier or general-linear-group counting theorem is planned.

## Conventions

Fix a finite field k of cardinality q=p^f, f≥1, and a smooth projective geometrically connected curve X/k of dimension one and genus g. Thus q≥2. Rank r is positive and degree d is an integer whenever a bundle count is used; rank zero is admitted only for coherent torsion objects and the zero unit. Nonzero torsion sheaves have slope +∞. The zero sheaf has the empty HN filtration and belongs to the slope-cut subcategories by the empty-filtration convention, but is never indecomposable. HN factors have decreasing slopes. All sheaves, their finite flags and skeletons lie in fixed universes; use essentially small categories and isomorphism classes, with finiteness proved before taking a natural cardinality or a rational mass. Pullback to an algebraic closure tests absolute indecomposability and geometric stability. Statements about field extension concern extensions of fields, not arbitrary nonflat changes of a family base.

The Euler form is χ((r,d),(s,e))=(1−g)rs+re−sd. Its symmetrization is 2(1−g)rs. Put P_X(t)=∏ⱼ(1−αⱼt), with α₂ᵢ₋₁α₂ᵢ=q, and ζ_X(t)=P_X(t)/((1−t)(1−qt)). The αⱼ are geometric-Frobenius eigenvalues on H¹; extension of degree m replaces every αⱼ and q by their m-th powers. Every Adams index m is positive. Universal coefficients are characteristic-zero rational algebras. Specialization takes values in an algebraically closed characteristic-zero coefficient field; it never evaluates the integer q inside k. Synthetic reciprocal tuples in rational-function Checks need not be Weil tuples. In particular (−1,−2) at q=2 is a formal test tuple: its two absolute values are not √2, so it does not describe a genus-one curve. A normalized pole evaluation is taken only after establishing regularity or the indicated nonzero denominators. At a finite-field tuple, q and q^m−1 are nonzero for m≥1. The origin evaluation in §6.5 concerns a regular extension to an affine cone, where q is allowed to vanish; it is not evaluation on the Laurent coefficient ring.

Hall multiplication places the quotient on the left and subobject on the right, with v²=q and twist v^χ. Numerical v is a chosen positive square root in characteristic zero; generic coefficients use the algebra with v²=q. The Green pairing is bilinear, with automorphism denominator, without complex conjugation. HN support completions admit only coefficient sums whose finiteness or convergence is proved. Bilateral degree distributions are multiplied by Laurent polynomials to clear denominators; there is no unrestricted product of distributions. Write V_r for the supplied fixed-degree bundle mass and V_0=1 for the zero bundle. Infinite numerical mass products use nonnegative real convergence at q>1, and formal products use the specified coefficient topology.

Exp and Log are plethystic; all coefficient parameters and grading variables participate in Adams operations. Symmetric sums over permutations are unaveraged. Rows of a partition are indexed from zero using Mathlib's Young diagram, with arm to the right and leg in the transpose direction; only actual cells are used in products. Multiplicity r_i counts parts of size i. Set ⟨λ,λ⟩=∑ⱼ(λ′ⱼ)².

At u≠0, rRes is the coefficient of (1−z/u)⁻¹ in a function. The differential residue dRes applies to f(z)dz/z. At a simple pole dRes=−rRes; higher poles need their full differential expansion. Iterated block residues take the highest designated variable first, with the others in the coefficient field. Roots-of-unity Fourier extraction over a field K requires r>0 and (r:K)≠0; all universal applications satisfy this in characteristic zero.

For g≥1 and coprime (r,d), put D=1+(g−1)r². The canonical stable Higgs coarse space has dimension 2D, its scalar-gerbe stack dimension 2D−1 and its nilpotent cone dimension D. An ℓ-adic assertion has ℓ prime, ℓ≠p, and rational coefficients. Geometric Frobenius acts on the twist (−a) by q^a; an affine fibre of rank a shifts compact degree by 2a. Cohomology is zero outside its natural range. Compact Poincaré polynomials carry the sign (−1)^n; the unsigned variant is stated separately. Equalities in a Frobenius Grothendieck group assert equality of semisimplifications and do not choose a splitting or assert arithmetic semisimplicity. Genus zero is proved by splitting on the projective line, which every finite-field genus-zero curve is; positive-genus Mellit and symplectic arguments retain g≥1.

Every API bullet and Check below has the hypotheses and source locators of its subsection. A route names sufficient inputs for that proof, not a restriction on other proofs.

**Checks.**

- On P¹, χ(O,O(1))=2 and χ(O(1),O)=0. Quotient-left multiplication distinguishes these orders.
- For the formal reciprocal pair (−1,−2) at q=2, P(1)=6, ψ₂(1−α₁−α₂+q)=1−1−4+4=0, and ψ₂((q−1)⁻¹)=1/3. Fixing the coefficients in Adams would instead give 6 and 1.
- On the curve y²+y=x³ over 𝔽₄, the nine points and reciprocal eigenvalue pair (−2,−2) give 1+4−(−2−2)=9; over the cubic extension the point count is 1+64−(−8−8)=81. Fixing coefficient eigenvalues under Adams would incorrectly leave the original 9.
- For f=(1−z)⁻¹, rRes=1 and dRes(f dz/z)=−1; for f=(1−z)⁻² they are 0 and −1. Interchanging the conventions changes the recovered rank-one count.
- For rank-one Higgs bundles in genus two, D=2: the coarse space Pic^d×A² has dimension 4, the stack dimension 3, H_c has its affine shift in degree 4 with twist −2, and the cone Pic^d has top degree 4. A shift by 2 or a reciprocal prefactor q⁴ fails this witness.

## Exact supplier contracts

### From Mathlib

Use `Matrix`, `IsNilpotent` and `Nat.card` for the headline `nilpotent_matrix_count`. `Matrix.card_GL_field` in `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Card.lean`, line 120, supplies the product `∏_{i:Fin n}(Q^n−Q^i)` for a finite field; its n=0 value is 1. `IsArtinianRing.isNilpotent_jacobson_bot` in `Mathlib/RingTheory/Artinian/Ring.lean`, line 54, assumes an associative ring and its Artinian condition. `IsArtinianRing.isSemisimpleRing_iff_jacobson` in `Mathlib/RingTheory/Artinian/Module.lean`, line 641, supplies the radical criterion. `Finite.isDomain_to_isField` in `Mathlib/RingTheory/LittleWedderburn.lean`, line 176, applies to a finite ring with a domain instance, including the residue division ring.

Use `YoungDiagram` and `YoungDiagram.transpose` in `Mathlib/Combinatorics/Young/YoungDiagram.lean` for partitions. A diagram is a finite lower-closed set of pairs of natural numbers; a cell hypothesis is needed for its row and column subtractions. These declarations do not provide curve counts or formal plethystic operations.

### From Tau Ceti

`TauCeti.exists_equiv_linearEquiv_of_directSum_of_isLocalRing_end` in `TauCeti/RingTheory/KrullSchmidt/DirectSum.lean`, line 154, compares finite external decompositions with local endomorphism rings on one side and nonzero indecomposables on the other; the ambient module need not have finite length. `TauCeti.isLocalRing_end_of_isIndecomposable` in `TauCeti/RingTheory/KrullSchmidt/Indecomposable.lean`, line 266, requires finite length over the module's ring. Section 1.1 supplies this condition through finite-dimensional Hom modules, not by asserting that Coh(X) has finite length.

`YoungDiagram.armLength` and `YoungDiagram.legLength` in `TauCeti/Combinatorics/Young/HookLength/Basic.lean`, lines 136 and 140, are the row and column lengths minus the cell coordinate and one. They are total natural-number functions; statements about cells retain membership. For λ=(2), its left cell has arm 1 and leg 0; for λ=(1,1), its upper indexed cell has arm 0 and leg 1. An out-of-diagram coordinate is not used in a product.

### From TauCetiRoadmap.AlgebraicVectorBundles

Layers L0A–L0C supply the tensor, dual, constant-rank finite-locally-free sheaves and determinant; Layers L1–L2B supply the affine and geometric comparisons and base change. On a smooth noetherian curve use the coherent full subcategory of the supplier module category. Its kernels, cokernels and finite sums are those of that category; no separate sheaf or bundle type is introduced.

### From TauCetiRoadmap.QuiverRepresentations

Layers 1–2 supply representations of a finite quiver over k, their morphisms and the module comparison. The Kronecker representation in §7.6 is their two-vertex case; only the sheaf chart, its conormal quotient and its moment comparison are constructed here. General categorical decomposition and radicals belong to ArtinAlgebras Layer 0; the coherent application below uses the pinned module theorems directly.

### From TauCetiRoadmap.ClassicalGroupsPartII

Sections CG.0.4–CG.0.5 supply the diagonal GSp torus and the action generated by permuting reciprocal pairs and a_i↔q/a_i; CG.2.4–CG.2.6 supply the full integral Weyl-fixed Laurent ring and its rational character isomorphism. Tensor it with ℚ. Section CG.3's positive tensor-constituent subring is a different object and is not substituted for the full character ring. At g=0 retain the separate G_m parameter q.

### From TauCetiRoadmap.FunctionFieldArithmetic

Sections 0.2–0.3 supply a degree-one integer divisor and the identification of rational divisor classes with Picard points over finite fields. Sections 5.1–5.4 supply ζ_X(t)=P_X(t)/((1−t)(1−qt)), the extension-field point-count identity, P_X(1)=#Pic⁰_X(k), and compatibility with the scheme curve. A degree-one divisor need not be effective. These inputs hold even if X(k) is empty. For P¹, P_X=1 and the degree-one line class has exactly one representative up to isomorphism in each degree.

### From TauCetiRoadmap.GlobalShtukasAndFunctionFieldLanglands

Sections GS.0.1, GS.0.5–GS.0.6 supply fixed-class GL_r bundles, coherent rank and degree, hereditary Coh(X), the Euler form, scalar-extension compatible HN theory, finite rational class sets in bounded HN opens and the nonnegative cutoff. Central degree is fixed in every finiteness assertion.

Section GS.0.13 supplies `V_r=q^((g−1)(r²−1))P_X(1)/(q−1)∏_{i=2}^r ζ_X(q⁻ⁱ)` for r>0, independently of d; the torsion series `∏_{i≥1}ζ_X(q⁻ⁱs)=exp(∑_{m≥1}#X(k_m)s^m/(m(q^m−1)))`; and, for r>0 in fixed degree d, the full coherent mass `q^((g−1)(r²−1))P_X(1)/(q−1)∏_{i≥2}ζ_X(q⁻ⁱ)`. The bundle/torsion splitting contributes q^(−r l). Use its real convergence or its coefficient topology before using the product. V_0=1 is the zero bundle convention, not a torsion mass formula. At r=1 the mass is P_X(1)/(q−1), and the coefficient of s is #X(k)/(q−1) (S16, Theorem 4.1, pp.316–317; S16 line 1015).

### From TauCetiRoadmap.WeilConjectures

WC.1, “Finite groupoid mass”, supplies the mass of an essentially finite groupoid, equivalence invariance, products, finite disjoint unions and mass([S/G])=#S/#G for a finite group action. Automorphism cardinalities are positive by the identity element. It applies to an actual finite groupoid; BG as a one-object abstract groupoid must be distinguished from the finite-field point groupoid of an algebraic classifying stack. Section 2.1 supplies the homotopy-fibre formula used here. For S₃ acting on three letters the action mass is 3/6=1/2; for a point with stabilizer S₃ it is 1/6.

### From TauCetiRoadmap.SchemeAndStackFoundations

Sections 1.18–1.21 give effective coherent and flag descent, quotient stacks, stabilizers, gerbes and atlas independence. Sections 2.6, 2.18, 2.20 and 3.3 give finite-dimensional proper coherent cohomology, derived Hom and direct image, natural duality, degree and Riemann–Roch. Sections 3.6–3.7 give Picard torsors and stacks, and §4.14 gives projective Quot with a fixed source. Sections 4.1 and 4.5 supply natural infinitesimal deformation maps and their tangent-obstruction sequences.



What SchemeAndStackFoundations must provide (gap:coherent-ext-serre-duality): For every smooth projective geometrically connected curve and coherent U,V, provide a natural isomorphism Ext¹(U,V)* ≃ Hom(V,U⊗Ω), compatible with restriction, pushout and field extension, without requiring U locally free.

What SchemeAndStackFoundations must provide (gap:degree-only-strong-generation): For every coherent F on a smooth projective genus-g curve and every line L of degree −a, prove strong generation by L when μ_min(F)+a>2g−1, treating torsion sheaves and the zero sheaf separately.

The general coherent Ext–Hom contract is restricted here to smooth curves: on a nodal cubic the node skyscraper has Ext¹ dimension 2 but self-Hom dimension 1. On a smooth local curve k[t], Ext¹(k,k) and Hom(k,k) both have dimension 1. Strong generation means both Ext¹(L,F)=0 and surjectivity of Hom(L,F)⊗L→F; on P¹ the line O(−1) has Ext¹(O,O(−1))=0 but zero evaluation.

### From TauCetiRoadmap.AlgebraicModuliForArithmeticGeometry

Section 1.3 supplies coherent quotients and relative partial flags. The fixed-source Quot construction of SchemeAndStackFoundations §4.14 supply the charts and their family base change. Section 4.19's affine-stabilizer quotients require the following reductive character-quotient extension; finite-inertia coarse-space results alone cannot quotient a scalar G_m stabilizer.

What AlgebraicModuliForArithmeticGeometry must provide (gap:reductive-character-git): Provide character-linearized reductive GIT for products of general linear groups, the Hilbert–Mumford and King invariant-subspace criteria, geometric free projective-group quotients, base change and the projective morphism from the character quotient to the affine quotient.

### From TauCetiRoadmap.EndoscopicTransferAndUnitaryTraceComparison

Section 3.7 supplies coherent canonical Higgs sheaves and ordinary geometric slope (semi)stability over every field, and the bounded good-line presentation. Section 3.6 supplies the general reductive bundle Higgs stack, with its stated restriction on the characteristic and Weyl order. Use the coherent GL_r carrier of §3.7; the adapter below identifies its locally free locus with the corresponding bundle stack while retaining every characteristic. Use only the fixed-source kernel clause of the good-line theorem.

What EndoscopicTransferAndUnitaryTraceComparison must provide (gap:fixed-source-good-lines): Export the good-line theorem with the kernel bound for the fixed source L₁ raised to l₁=χ(L₁,F), and identify the locally free locus of the coherent canonical Higgs carrier of §3.7 with the GL_r bundle stack and its bounded charts in every characteristic.

The new numerical estimate, stable canonical coarse geometry, positive exact category and central deformation are targets here. The generic higher-degree-twist smoothness and anisotropic properness results are not used as canonical-twist stable coarse theorems. For a fixed source L₁^l₁ the kernel has rank l₁−r and degree −d₁l₁−d; varying the source rank would change both.

### From TauCetiRoadmap.AutomorphicSpectralTheory

Section 6.22c supplies ordinary geometric bundle Higgs HN filtrations, uniqueness, field-extension compatibility, Hom vanishing between separated slopes and semistability implying stability in coprime rank and degree. Section 6.24 supplies the canonical two-term sheaf Hom complex on bundles, its morphism and extension comparisons, the degree-two Serre-dual obstruction, and the extension-groupoid mass for strict slope separation. The input here is that geometric theory over finite fields and their geometric extensions; the Arthur kernels and integrated Fourier comparison are not used. The coherent comparison in §7.1 retains derived Hom terms for torsion objects. For A=B=(O_X,0), the supplied complex has degree-two dimension 1; when g=2 and A=(O_X(P),0), B=(O_X,0), its cohomology dimensions are 1,3,0 and the extension mass is q².

### From TauCetiRoadmap.ReductiveGroupsPartII

Section RG2.3.7, “Lang's theorem and lifting”, supplies surjectivity of g↦g⁻¹F(g) on geometric points and H¹(k,G)=1 for smooth connected finite-type algebraic groups, over every finite extension. Unit groups of finite-dimensional endomorphism algebras are smooth geometrically connected opens in affine space. Nonabelian H² neutrality is proved separately in §1.6. For G_m/F₃ the geometric Lang map is z↦z² and is onto over the algebraic closure; its restriction to F₃× is the constant 1 and is not the theorem being used.

### From TauCetiRoadmap.HabiroNahmSeries

Section 5.1 supplies ordinary multivariate augmentation logarithms and exponentials over a ℚ-algebra, their inverse and product/sum laws, and coefficientwise finite zero-augmentation substitutions. These are the ordinary log and exp inside the plethystic definitions; the coefficient Adams structure on R_g is additional. For log(1+uv), the coefficients of uv and u²v² are 1 and −1/2, and exp(log(1+uv))=1+uv.

### From TauCetiRoadmap.HabiroCyclotomicCompletions

Section 1.1 supplies the simultaneous substitutions q↦q^m, t↦t^m on tℚ((q))[[t]], their composition law and the elementary plethystic exponential. The complete-Adams supplier contract extends these operations to the curve coefficient rings; require agreement under the Laurent-series specialization, rather than defining a second operation there. For a positive-degree monomial, Exp(t)=(1−t)⁻¹ and Exp(−t)=1−t; the t² coefficients are respectively 1 and 0. The inverse logarithm and the additional reciprocal-coordinate Adams operations belong to the complete-Adams extension.

### From TauCetiRoadmap.QSeriesPartitionsAndMockModularForms

Sections 2.4 and 3.5 supply q-binomial and Euler series and native partition adapters. Use the formal Euler specialization at base v=q⁻¹ for Heine summation; the corresponding logarithm is formed with the ordinary augmentation calculus supplied by HabiroNahmSeries §5.1, and the Laurent-series specialization agrees with HabiroCyclotomicCompletions §1.1. The complete Adams and symmetric-function extensions have these exact contracts.

What QSeriesPartitionsAndMockModularForms must provide (gap:complete-adams-series): Provide complete filtered rational λ-rings with commuting Adams operations, coefficientwise inverse plethystic Exp and Log acting on every coefficient and grading variable, and the finite-extension Möbius identity.

What QSeriesPartitionsAndMockModularForms must provide (gap:macdonald-admissibility): Provide modified Macdonald functions, the Hall S pairing, ∇ and τ, integral HLV logarithms and Mellit’s regular symmetric Laurent sequence deformation theorem over rational λ-rings with injective localization.

Specifically, for a rational λ-ring R containing ℚ(t)[q±1], with injective localization `R→R⊗_{ℚ(t)[q±1]}ℚ(q,t)`, take Ω=∑c_λ H̃_λ with c_empty=1 and (q−1)Log Ω integral over R. For a regular symmetric Laurent sequence `f(u)=1+∑_{j>0}u^j f^(j)`, the deformed Ω_f has (q−1)Log Ω_f in R[[u]], with the same reduction modulo q−1. Here q is the deformation variable, which becomes z in Layer 10; the Hall pairing uses S=−(q−1)(t−1). The sequence condition is `f_{n+1}(1,x₁,…,x_n)=f_n(qx₁,…,qx_n)`. The supplier's Part II also proves the integral HLV conclusion (M20, Definition 5.1 and Lemma 5.1, pp.315–319, locator-only; M18, Theorem 7.1 and Corollary 7.2, pp.29–31). This is a generic theorem, so Layer 10 uses it rather than reconstructing it.

For a single degree variable T, Exp(T)=1+T+T²+⋯; fixing T under Adams would give exp(T) instead, whose T² coefficient is 1/2. For q=2, ψ₂((q−1)⁻¹)=1/3, not 1. These witnesses apply also to the Hall and Mellit series.

### From TauCetiRoadmap.DeligneWeightsAndPurity

Sections 0.10, 0.12 and 0.16–0.18 supply power-sum determination of signed finite eigenvalue multisets, extension-field powers, perfect-pairing reciprocity and disjoint weights, without a diagonalizability hypothesis. Section 1.7 supplies curve H¹ weight one, §7.15 smooth projective purity, and §10.5 the degree-fibre Frobenius equidistribution of Weil II (3.5.3). Sections 7.12 and 8.8–8.11 supply the weight bounds used on localization and affine strata. No canonical arithmetic Frobenius splitting is assumed. For A¹ the sole compact eigenvalue is q in degree 2; for P¹ it is 1 in degree 0 and q in degree 2. Inverting this convention changes the trace from q to q⁻¹ (WII, (3.5.1)–(3.5.3), pp.210–211).

### From TauCetiRoadmap.LefschetzPencilsAndVanishingCycles

Section 5.11 supplies Frobenius polynomials of pencil fibres. Its universal-family extension has this contract, using DeligneWeightsAndPurity §10.5 for equidistribution.

What LefschetzPencilsAndVanishingCycles must provide (gap:universal-curve-weil-density): For g≥1, prove full symplectic geometric monodromy for the genus-g hyperelliptic moving-branch family over a suitable fixed odd finite field and, using DeligneWeightsAndPurity §10.5 with half-Tate normalization, deduce Zariski density of genus-g curve Weil tuples in the reciprocal torus quotient.

For g≥1 one may use y²=f(x)(x−t), deg f=2g, with squarefree f over a fixed odd field, and all its finite extensions. The resulting dense subfamily proves uniqueness of functions specializing on all curves; it does not restrict any counting theorem to odd characteristic. For g=0, the infinitely many q-coordinates alone are dense in G_m. The radial argument must retain the q coordinate after normalizing eigenvalues by q^(1/2) (S16, Proposition 4.7 and Appendix B, pp.321,357–358; S16 line 1250 and S16 line 3319).

### From TauCetiRoadmap.EtaleDualityAndPerverseSheaves

Sections 0.4 and 0.6–0.7 supply Frobenius-equivariant duality and integration. For smooth projective Z of dimension m, H^(2m−j)(Z)*(−m)≃H^j(Z), with geometric Frobenius.

What EtaleDualityAndPerverseSheaves must provide (gap:affine-bundle-compact-shift): Export the Frobenius-equivariant compact-cohomology comparison for every Zariski locally trivial rank-a affine bundle, with degree shift 2a, twist −a and compatibility with base change and the localization filtration.

Section 0.4 supplies top cohomology on the geometric components, including Frobenius descent; §0.6 supplies rational realization. Its dimension counts geometric components even if Frobenius permutes them; its trace counts the fixed components. For two exchanged components the top representation has dimension 2 and trace 0 at the first Frobenius power, so dimension is not inferred from that trace alone.

### From TauCetiRoadmap.CohomologicalPointCounting

Its “The combined endpoint” section, using FrobeniusGeometry, CompactSupport Layers 6–8, EllAdicRealization Layers 7–9 and TraceFormula Layers 11–12, supplies geometric compact cohomology, localization and the Grothendieck trace formula on finite-type schemes, with the scheme-Frobenius/geometric-Galois convention bridge. Use the constructible compact direct-image complexes of CompactSupport Layer 8 and EllAdicRealization Layer 9 and the coefficient comparisons below in finite-type spread-outs. For A¹ and G_m, the compact alternating traces are respectively q and q−1; ordinary cohomology would give the wrong latter trace.

### From TauCetiRoadmap.ComplexComparisonPartII

Sections C6.3–C6.6 supply ordinary and compact-support étale–singular comparison for separated finite-type complex schemes, finite, integral and rational coefficients, compatible with localization, cups and traces. Use the constant coefficient object on the Higgs scheme, with the normalized rational realization and the uniform constructibility bounds of C6.6.

Genus-wise topological local constancy for the coprime Higgs spaces is the geometric target in §9.3, not an assumed consequence of comparison of sites.

## How to read the build

Layers 0–2 fix coefficients and residues, transfer decomposition to coherent sheaves, and express nilpotent-pair masses by Jordan flags and a finite-field tower exponential. Layers 3–5 turn those flags into Hall pairings, construct the universal spherical form and evaluate the pairings by ordered shuffle residues. Layer 6 extracts bundle counts and their origin constants. Layers 7–8 build coherent canonical Higgs geometry, compare slope and character stability, and prove both the geometric large-characteristic comparison and the all-characteristic Hall comparison. Layer 9 converts those counts into pure cohomology, positivity and nilpotent-cone invariants. Layer 10 applies the supplied Macdonald theorem to the curve kernel to prove Laurent integrality and degree independence. Layer 11 treats quasi-parabolic counts, exact HN types and constructible Hall theory. Within a layer, named dependencies determine the construction order. The only headline stated in Suggested.lean at the pins is the nilpotent matrix enumeration; its docstring identifies the geometric headlines and their missing carriers.

## Layer 0: universal coefficients, absolute counts and residues

### 0.1 universal counting coefficient ring

Define the following objects and their indicated structure. For g≥1 use the diagonal torus and reciprocal Weyl action of ClassicalGroupsPartII, rationalize its full integral invariant ring to R_g=Q[q±1,a_1±1,…,a_g±1]^W with paired coordinates α=(a_1,q/a_1,…,a_g,q/a_g). Set K_g=R_g[(q^m−1)⁻¹:m≥1]. For g=0 take T_0=G_m with coordinate q, W_0=1. Curve specialization sends q to #k and α to the geometric-Frobenius eigenvalues of H¹(X). For l≥1, Adams ψ_l raises all torus coordinates to the l-th power and extends to K_g. (S16, §1.1, p.299; §1.4, pp.302–303; S16 line 81).

The interface has the following properties.

- Any reciprocal tuple over a Q-algebra with q and all q^m−1 invertible induces the unique K_g algebra map extending its invariant evaluation.
- ev_X∘ψ_l=ev_(X_Fq^l) on K_g.
- For g≥1, R_g is Q tensored with the full algebraic GSp character ring, through the supplier restrictionCharacter map; it is not Yu’s positive tensor-constituent subring.

One route is as follows. Base-change the supplier lattice and invariant presentation to Q. Localize at the W-fixed elements q^m−1 and use their nonvanishing at prime powers. Check ψ_l preserves the multiplicative set and sends a curve specialization to the corresponding finite extension.

*Needs:* ClassicalGroupsPartII §CG.0.4; ClassicalGroupsPartII §CG.0.5; ClassicalGroupsPartII §CG.2.6; FunctionFieldArithmetic §§5.1–5.4; DeligneWeightsAndPurity §§0.10, 0.12, 0.16–0.18, 1.7; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- R_0=Q[q±1], not Q.
- For g=1, a+q/a is Weyl fixed while a alone is not.
- ψ_2((q−1)⁻¹)=(q²−1)⁻¹, not (q−1)⁻².

### 0.2 geometrically indecomposable counts

Define the following objects and their indicated structure. For r>0 and d∈Z, A_X(r,d) is the cardinality of the set of k-isomorphism classes of rank-r degree-d vector bundles whose pullback to k̄ is nonzero and indecomposable. `A_X^{≥ν}(r,d)` imposes μ_min≥ν, and `A_X^{≤ν}` imposes μ_max≤ν. `A_X^{≥0}(0,d)=#X(k)` for d>0 counts coherent torsion objects; set the zero-object indecomposable count to zero. Positive-rank A without a slope decoration always counts bundles. (S16, §1.2, p.299; §2.1, pp.307–308; §5.7, p.334; §8.1, p.353; S16 line 81).

The interface has the following properties.

- The predicate is preserved by bundle isomorphism and finite extension, with extension to k̄ canonically identified.
- `A_X^{≥ν}` counts exactly the subset of absolute indecomposables satisfying the imported μ_min bound.
- For d>0 the only absolute indecomposable torsion objects are length-d modules at k-rational points, so their number is #X(k).

One route is as follows. Define the isomorphism-invariant geometric predicate and its class cardinality. Use HN subcategories for the decorated counts; finiteness is the separate §1.10 theorem.

*Needs:* GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; SchemeAndStackFoundations §§1.18–1.21; §0.1.

**Checks.**

- A_X(1,d)=#Pic⁰_X(k), independently of whether X(k) is empty.
- The zero sheaf contributes neither to A_X(0,0) nor to any indecomposable Euler product.
- A torsion sheaf simple over a closed point of degree e>1 is k-indecomposable but splits over k̄ and is not counted in A_X(0,e).

### 0.3 normalized and differential residues

Define the following objects and their indicated structure. For u≠0, expand a rational function f(z) in h=1−z/u and define rRes_(z=u) f as its h⁻¹ coefficient. Separately dRes_(z=u)(f(z)dz/z) is the ordinary differential residue. For a simple pole dRes(f dz/z)=−rRes f; for higher-order poles no such equality is asserted. An iterated block residue uses the specified descending variable order with other variables in the coefficient field. (S16, §1.4, p.303; Theorem 1.6, p.304; S16 line 242).

The interface has the following properties.

- rRes and dRes are linear over the coefficient field.
- For f with pole order ≤1 at u, dRes(f dz/z)=−rRes f.
- The descending list of variables and pole equations is part of an iterated residue operation, not a permutation-invariant set.

One route is as follows. Use the local Laurent expansion at a nonzero point. For differential residue substitute dz/z=−dh/(1−h). Iterate one-variable normalized residues in the exact block order.

*Needs:* §0.1.

**Checks.**

- rRes at z=u of 1/(1−z/u) is 1, and dRes of that function times dz/z is −1.
- For f=(1−z/u)⁻², rRes f=0 but dRes(f dz/z)=−1.
- A function regular at u has both residues zero.

### Examples

For a line bundle the unweighted absolute count is P_X(1). The universal expression P(1) evaluates to 6 at the formal reciprocal pair (−1,−2), q=2; this tuple is not a curve specialization. A rational length-two torsion block is absolute, whereas the simple sheaf at a degree-two point splits into two geometric summands. The simple and double pole witnesses in §0.3 fix every residue sign used below (S16, pp.299,303,334; S16 line 81 and S16 line 2205).

### Dependencies

- ClassicalGroupsPartII §CG.0.4.
- ClassicalGroupsPartII §CG.0.5.
- ClassicalGroupsPartII §CG.2.6.
- FunctionFieldArithmetic §§5.1–5.4.
- DeligneWeightsAndPurity §§0.10, 0.12, 0.16–0.18, 1.7.
- QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.
- GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13.
- SchemeAndStackFoundations §§1.18–1.21.

## Layer 1: coherent decomposition and finite-field enumeration

### 1.1 coherent additive hom transfer

Define the following objects and their indicated structure. For M∈Coh(X), let add(M) consist of direct summands of finite sums of M. Hom(M,−) is a fully faithful additive functor from add(M) to finite projective left modules over End(M)^op, and is essentially surjective. End(M) is a finite-dimensional k-algebra. Its functor sends decompositions and idempotent splittings to the corresponding module decompositions. (S16, §2.2, Lemma 2.3, p.309; transfer of the pinned module theorem; S16 line 615).

The interface has the following properties.

- The natural Hom map is bijective and additive on add(M).
- A finite biproduct maps to the corresponding finite direct sum of modules.
- The endomorphism ring of N∈add(M) identifies with the module endomorphism ring of Hom(M,N).

One route is as follows. Use proper coherent Hom finiteness and the abelian category’s splitting of idempotents. On finite sums compute Hom by matrices over End(M)^op; restrict to idempotent images for full faithfulness. A finite projective module is an idempotent image of a finite free module, which lifts to an idempotent of a sum of M.

*Needs:* GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts; `TauCeti.exists_equiv_linearEquiv_of_directSum_of_isLocalRing_end`.

**Checks.**

- M maps to the regular rank-one End(M)^op-module.
- The zero summand maps to the zero module, and conversely by full faithfulness.
- For a positive-degree line bundle L, its coherent subsheaf chain L(−nx) does not make L an Artinian object of Coh(X); no such premise enters this transfer.

### 1.2 Krull–Schmidt for coherent sheaves

Prove the following statement. Every coherent sheaf is a finite direct sum of nonzero indecomposables, uniquely up to permutation and isomorphism. The endomorphism algebra of an indecomposable is local with finite residue division field k_M/F_q. Every endomorphism of an indecomposable is either a unit or nilpotent. (S16, §2.2, Lemma 2.3 and Corollary 2.5, p.309; S16 line 615).

One route is as follows. Find a minimal finite decomposition by splitting idempotents; the dimension of End decreases on proper summands. Apply the finite-length module local-ring theorem through hom-transfer; apply direct-sum uniqueness in the same way. Use Wedderburn’s finite division-ring theorem for the residue field.

*Needs:* §1.1; `TauCeti.isLocalRing_end_of_isIndecomposable`; `TauCeti.exists_equiv_linearEquiv_of_directSum_of_isLocalRing_end`; `Finite.isDomain_to_isField`.

**Checks.**

- 0; L; L²: Summand counts 0,1,2; End(L)/rad=k; for L² the quotient is M₂(k), which is not local. Apply module decomposition after transfer.

### 1.3 radical and semisimple matrix quotient

Prove the following statement. If `M=⊕_i M_i^{n_i}` with pairwise nonisomorphic indecomposable M_i, then rad End(M) has every off-diagonal Hom block and diagonal block `M_{n_i}(rad End(M_i))`. Consequently `End(M)/rad≃∏_i M_{n_i}(k_{M_i})`. The radical is nilpotent, and an endomorphism is nilpotent iff its image in every matrix quotient is nilpotent. (S16, §2.2, Lemma 2.4, p.309 (matrix-block correction); S16 line 615).

One route is as follows. Write composition in block matrices and identify the ideal by its action on the distinct simple projective tops. Use the semisimple quotient and nilpotent radical of the Artinian endomorphism algebra. Lift nilpotence through a nilpotent ideal.

*Needs:* §1.2; `IsArtinianRing.isNilpotent_jacobson_bot`; `IsArtinianRing.isSemisimpleRing_iff_jacobson`.

**Checks.**

- N=k[t]/t²; M=N² over 𝔽₂: dim rad End(N)=1; dim M₂(rad End(N))=4 versus the incorrect 2; quotient M₂(𝔽₂) has 16 elements. Use full repeated-summand matrix blocks.

### 1.4 finite-field nilpotent matrix count

Prove the following statement. For a finite field K of cardinality Q and n≥0, `#{u∈M_n(K):u is nilpotent}=Q^{n(n−1)}`. The empty matrix counts once. The unit denominator used in §1.5 is the supplied general-linear-group cardinality. This is the headline `nilpotent_matrix_count` in Suggested.lean, for every field K with a finite underlying type and every natural n. (S16, §2.2, Corollary 2.5, p.309; Appendix A, p.356 (Fine–Herstein input); S16 line 615).

The supporting input is FH58, Theorem 1, p.499, proof pp.499–503; the same count is stated in S16, Corollary 2.5, p.309.

One route is as follows. Classify nilpotent modules by Jordan partitions and compute their centralizer units. Sum the reciprocal centralizer masses by the q-binomial/Heine identity. Multiply by #GL_n(K); the exact primary proof of the partition summation is part of the enumeration proof.

*Needs:* `Matrix.card_GL_field`; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- n=0,1,2 over 𝔽₂ and n=2 over 𝔽₃: Counts 1,1,4,9 equal Q^(n(n−1)); GL counts at n=0,1,2 over 𝔽₂ are 1,1,6. Keep the field and finiteness hypotheses.

### 1.5 nilpotent-to-automorphism ratio

Prove the following statement. For the decomposition above, `#End_nil(M)/#Aut(M)=∏_i Q_i^{n_i(n_i−1)}/#GL_{n_i}(F_{Q_i})`, where `Q_i=#k_{M_i}`. The identical radical-fibre factor cancels from numerator and denominator. (S16, §2.2, Corollary 2.5, p.309; S16 line 615).

One route is as follows. Push nilpotents and units to the semisimple quotient; both maps have fibres of size #rad. Factor over simple matrix components and apply the matrix count.

*Needs:* §1.3; §1.4.

**Checks.**

- 0; L over 𝔽₃; L² over 𝔽₂; k[t]/t² over 𝔽₂: Ratios 1,1/2,4/6=2/3,2/2=1; residue formula gives respectively 1,1/2,2/3,1. Cancel the identical radical fibre.

### 1.6 neutrality for connected finite-field bands

Prove the following statement. Let k be finite and G a smooth connected linear algebraic k-group, or a smooth connected band arising as the automorphism group of a coherent object. Every nonabelian H²(k,G)-class arising in its descent gerbe is neutral. Thus a Frobenius-stable geometric isomorphism class of coherent sheaves admits a k-form. Uniqueness of that form uses the separately imported H¹(k,G)=1. (S16, §2.2, proof of Lemma 2.6, p.311, citing Springer 1966 Theorem 3.5; S16 line 740).

The supporting input is SPR66, Theorem 3.5, p.179; SPR66 line 6739.

One route is as follows. Realize the isomorphism-class descent problem as a gerbe banded by the unit group of a finite-dimensional endomorphism algebra. Apply the finite-field neutrality theorem; then apply Lang to the set of forms. Prove neutrality for the actual descent band, treating H² as a pointed set of gerbe classes rather than an ordinary group.

*Needs:* SchemeAndStackFoundations §§1.18–1.21; ReductiveGroupsPartII §RG2.3.7, Lang’s theorem.

**Checks.**

- Unit group k×; k[t]/t² units over 𝔽₂; disconnected constant C₂: First descent obstruction neutral and one form; local units have 2 rational elements; C₂ has two H¹ classes, so the connected uniqueness conclusion fails. Keep H² existence separate from Lang H¹.

### 1.7 Galois orbits of absolute summands

Prove the following statement. A k-indecomposable M with residue field `F_{q^e}` becomes over k̄ the sum of e pairwise nonisomorphic absolute indecomposables, permuted transitively by Frobenius, each of class [M]/e. Conversely a length-e Frobenius orbit of absolute indecomposables descends to exactly one k-indecomposable. If c_e(α) counts those orbits in geometric class α, then `A_{X_Fq^l}(α)=∑_{e|l} e c_e(α)`. In particular e divides both r and d for a bundle of class (r,d). (S16, §2.2, Lemma 2.6 and equations (2.4)–(2.5), pp.310–311; S16 line 658).

One route is as follows. Split the residue field under base extension and lift primitive idempotents across the radical. Indecomposability forces transitivity; identify the Frobenius orbit and its residue degree. Use neutrality for existence of descent and connected-unit-group Lang for uniqueness; count fixed points over Fq^l.

*Needs:* §1.2; §1.3; §1.6; ReductiveGroupsPartII §RG2.3.7, Lang’s theorem; §0.2.

**Checks.**

- Orbit e=1; orbit e=2 over 𝔽₂ with l=1,2: An e=2 orbit contributes 0 to A over k and 2 over k₂; divisor sum gives 0 and 2; descended class (2r,2d). Do not confuse orbit class α and descended class eα.

### 1.8 coprime indecomposables are absolute

Prove the following statement. If r>0 and gcd(r,d)=1, every k-indecomposable bundle of class (r,d) is absolutely indecomposable and End(M)/rad=k. Every f∈End(M) has a unique expression c·Id+n with c∈k and n nilpotent. This conclusion does not assert End(M)=k. (S16, §2.2, Lemma 2.6, pp.310–311; §6.5, Lemma 6.2, p.341; S16 line 658).

One route is as follows. The residue degree divides gcd(r,d), hence is one. Use the nilpotent radical and its scalar quotient to split each endomorphism.

*Needs:* §1.7; §1.3.

**Checks.**

- Class (2,1); local algebra k[t]/t²: e divides gcd(2,1)=1; End/rad=k while dim End=2; c+bt has unique scalar c and nilpotent bt. Do not claim End=k.

### 1.9 large degree and nonnegative HN slopes

Prove the following statement. If M is an indecomposable vector bundle of rank r>0 and d>(g−1)r(r−1), then μ_min(M)≥0. Thus `A_X^{≥0}(r,d)=A_X(r,d)` in that range. For g≥1 adjacent HN slopes of an indecomposable differ by at most 2g−2; genus zero uses the splitting theorem separately. (S16, §2.1, Proposition 2.1, p.308; Mozgovoy–Schiffmann §4, Lemma 4.1 and Corollary 4.2, p.8; S16 line 560; MS14, §4, Lemma 4.1 and Corollary 4.2, p.8; MS14 line 481).

One route is as follows. A larger slope gap kills the relevant Ext¹ by Serre duality and forces a direct-sum decomposition. Bound the spread of at most r positive-rank HN factors and compare the mean degree to the minimum. Use genus-zero splitting for the exceptional negative value of 2g−2.

*Needs:* GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts; §1.2.

**Checks.**

- g=0 and 1; rank 1, d=−1,0,1; g=2,r=2: Rank-one cutoff indicators are 0,1,1; g=2 bound is d>2, so d=3 is in range; genus-one gap bound is 0. Retain strict degree inequality and separate g=0.

### 1.10 basic count normalizations

Prove the following statement. For r>0 the count is finite, A_X(r,d+r)=A_X(r,d), and A_X(r,−d)=A_X(r,d). For r=1 it equals P_X(1)=#Pic⁰_X(k). For X of genus zero it is 1 for r=1 and 0 for r>1. No choice of rational point on X is required. (S16, §1.2, p.299; §5.8, pp.334–335; S16 line 81).

One route is as follows. Tensor with O(D_1) for a degree-one integer divisor, preserving all decompositions after base change. Dualization reverses degree and preserves absolute indecomposability. Use the Picard torsor and finite-field descent for rank one; use the genus-zero splitting theorem for higher ranks. Finiteness follows from §1.9 and HN boundedness.

*Needs:* §0.2; FunctionFieldArithmetic §0.2; FunctionFieldArithmetic §§5.1–5.4; GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts; §1.9.

**Checks.**

- P¹ ranks 1,2; line twist and dual: Counts 1,0; A(1,−1)=A(1,0)=A(1,1)=P(1). Use a degree-one divisor, not a rational point.

### Examples

Over 𝔽₂ the four nilpotent 2×2 matrices are the zero matrix and the three conjugates of its nonzero Jordan block. The general-linear group has six elements, so their mass ratio is 4/6=2/3. A line over 𝔽₃ has one nilpotent endomorphism and two automorphisms, giving 1/2 (S16, Corollary 2.5, p.309; S16 line 639).

### Dependencies

- GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13.
- SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts.
- `TauCeti.exists_equiv_linearEquiv_of_directSum_of_isLocalRing_end`.
- `TauCeti.isLocalRing_end_of_isIndecomposable`.
- `Finite.isDomain_to_isField`.
- `IsArtinianRing.isNilpotent_jacobson_bot`.
- `IsArtinianRing.isSemisimpleRing_iff_jacobson`.
- `Matrix.card_GL_field`.
- QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.
- SchemeAndStackFoundations §§1.18–1.21.
- ReductiveGroupsPartII §RG2.3.7, Lang’s theorem.
- §0.2.
- FunctionFieldArithmetic §0.2.
- FunctionFieldArithmetic §§5.1–5.4.

## Layer 2: nilpotent pairs and Jordan filtrations

### 2.1 homotopy fibres and mass Fubini

Define the following objects and their indicated structure. For a functor F:G→H between essentially finite groupoids, define its homotopy fibre over h as the groupoid of pairs (x,φ:F(x)≅h) with commuting isomorphisms. Using the supplied rational groupoid mass, prove mass(G)=∑_[h] mass(F⁻¹(h))/#Aut(h). For a nonnegative infinite mass sum, convergence is a separate hypothesis before a real value is used. (S16, §2.1–2.2, pp.308–309; §3.2–3.3, pp.313–315 (fibre convention made explicit); S16 line 560).

The interface has the following properties.

- The projection F⁻¹(h)→G forgets φ, with its specified source and target.
- An equivalence of arrows of groupoids induces an equivalence of homotopy fibres, hence preserves their supplied masses.
- The homotopy-fibre formula holds for an essentially finite base and essentially finite fibres; the nonnegative convergent version follows by regrouping the terms.

One route is as follows. Identify the fibre groupoid of a representative with the corresponding isomorphism-marked objects. Apply finite orbit–stabilizer to each automorphism action and sum over the finite base skeleton.

*Needs:* WeilConjectures WC.1, Finite groupoid mass; SchemeAndStackFoundations §§1.18–1.21.

**Checks.**

- mass(BGL₁(F₃))=1/2.
- The homotopy fibre of Id:BG→BG is equivalent to a point and has mass 1, although BG has mass 1/#G.
- The empty groupoid has mass 0; disjoint union adds masses.

### 2.2 nilpotent-pair groupoids

Define the following objects and their indicated structure. Nil_α has objects (F,θ), F∈Coh_α(X), θ∈End(F), θ^s=0 for some s≥1; arrows are isomorphisms intertwining θ. `Nil_α^{≥0}` requires `F∈Coh^{≥0}`. For each fixed α=(r,d) with r,d≥0 the truncated groupoid is essentially finite and `mass(Nil_α^{≥0})=∑_[F] #End_nil(F)/#Aut(F)`. Include (0,0) as the unit pair. (S16, §2.1, p.308; §2.2, Proposition 2.2, pp.308,311–312; S16 line 560).

The interface has the following properties.

- Forget θ and retain the underlying coherent sheaf, compatibly with field extension.
- The action-groupoid mass is #nilpotents/#Aut, not a count of conjugacy classes.
- The unique zero pair has trivial automorphism group and mass 1.

One route is as follows. Form the action groupoid of Aut(F) on nilpotent endomorphisms over each sheaf class. Use finite-type HN boundedness and finite endomorphism sets. Apply mass_actionGroupoid on each isomorphism class.

*Needs:* §2.1; GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; §1.9.

**Checks.**

- On a fixed line bundle only θ=0 is nilpotent, and its mass is 1/(q−1).
- Id_L is excluded from Nil for nonzero L.
- For k[t]/t² supported at a rational point, multiplication by t is a nonzero nilpotent pair.

### 2.3 nilpotent-pair exponential identity

Prove the following statement. In Q[[u,v]] with α=(r,d), r,d≥0, `∑_α mass(Nil_α^{≥0})u^r v^d = exp(∑_{l≥1}∑_{α≠0} A_{X_Fq^l}^{≥0}(α)u^{lr}v^{ld}/(l(q^l−1)))`. After universal Adams-compatible coefficients exist this is `Exp(∑_{α≠0} A_{g,α}^{≥0}u^r v^d/(q−1))`. The first identity is an ordinary exponential of a tower of numerical counts. (S16, §2.2, Proposition 2.2 and its proof, pp.308,311–312; S16 line 560).

One route is as follows. Factor the sum into one Euler factor per k-indecomposable, using Krull–Schmidt and the unit ratio. Use Heine’s series for each multiplicity. Regroup Frobenius orbits with the divisor identity from galois-orbits.

*Needs:* §2.2; §1.5; §1.7; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- One absolute line factor at q=2; degrees 0,1,2: Series coefficients 1,1,2/3; exp(T+T²/6+⋯) gives 1,1,1/2+1/6=2/3. Adams changes both q and T.

### 2.4 Jordan type of a coherent nilpotent pair

Define the following objects and their indicated structure. Let K_i=ker θ^i and F_i=im θ^i, with θ^s=0. Define `α_i=[F_{i−1}/F_i]−[F_i/F_{i+1}]` for 1≤i≤s (F_s=0). These are classes of actual coherent kernel quotients, satisfy ∑i iα_i=[F], and allow zero internal terms; only trailing zero terms are omitted. Their rank multiplicities r_i give `λ=(1^{r_1}2^{r_2}…)`. (S16, §3.1, pp.312–313; §5.6, pp.331–332; S16 line 800).

The interface has the following properties.

- ∑i iα_i equals the full rank-degree class of F.
- Flat finite-field extension preserves image, kernel and the Jordan class tuple.
- Generic fibre has r_i blocks of size i, in the imported YoungDiagram convention.

One route is as follows. Use the surjection `F_{i−1}/F_i→F_i/F_{i+1}` to realize each difference as its kernel class. Telescope the class identities with weights i. At the generic point recover the usual nilpotent Jordan-block partition.

*Needs:* §2.2; GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; `YoungDiagram`.

**Checks.**

- For θ=0 on nonzero F, α_1=[F] and every α_i with i>1 is zero.
- For a two-dimensional nilpotent Jordan block over the generic field, ranks are r_1=0,r_2=1, giving total rank 2 rather than 1.
- For rank-zero F all r_i vanish but the nonzero degree components of α_i must be retained.

### 2.5 filtered-sheaf groupoids

Define the following objects and their indicated structure. For a finite tuple α=(α_1,…,α_s), Filt_α consists of flags 0=H_0⊂H_1⊂…⊂H_s=H with `[H_i/H_{i−1}]=α_i`, allowing equality for zero class. `Filt_α^{≥0}` restricts the total H to `Coh^{≥0}`, not every quotient to a semistability condition. Coh_α is the product `∏_i Coh_{α_i}`. (S16, §3.2–3.3, pp.313–315; S16 line 846).

The interface has the following properties.

- Send a flag to the ordered tuple of quotients `H_i/H_{i−1}`.
- The total class is ∑α_i and is preserved by flag isomorphisms.
- Deleting a zero graded step gives an equivalent groupoid with the same total-sheaf cutoff.

One route is as follows. Use the supplier abelian category and flag isomorphisms. Define the graded-object functor and the full subcategory on a total-sheaf HN cutoff.

*Needs:* GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; SchemeAndStackFoundations §§1.18–1.21; §2.1.

**Checks.**

- Filt_(α)≃Coh_α.
- A zero quotient forces `H_i=H_{i−1}`.
- A flag of a decomposable bundle in increasing slope order is still a flag; no decreasing-slope axiom belongs in Filt.

### 2.6 Jordan grading functors

Define the following objects and their indicated structure. For (F,θ) of Jordan type α, set H=F/im θ and H_i=ker θ^i/(ker θ^i∩im θ)⊂H. The functor π′ maps to this flag, π″ takes its graded quotients, and π=π″∘π′ maps to Coh_α. The cutoff square `Nil_α^{≥0}→Nil_α` over `Filt_α^{≥0}→Filt_α` is cartesian. (S16, §3.2, pp.313–314; S16 line 846).

The interface has the following properties.

- π equals π″ composed with π′ on objects and morphisms.
- The i-th output has class α_i.
- `F∈Coh^{≥0}` iff `F/im θ∈Coh^{≥0}`.

One route is as follows. Identify the i-th graded quotient with the kernel quotient defining α_i. Check intertwining isomorphisms preserve all terms. Use quotient and extension closure of `Coh^{≥0}` to prove the cutoff equivalence.

*Needs:* §2.4; §2.5.

**Checks.**

- θ=0 gives the one-step identity flag on F.
- A length-two block gives H_1=0,H_2=H.
- The inverse image of the total-H cutoff is exactly the total-F cutoff, including torsion objects.

### 2.7 Jordan fibre mass formula

Prove the following statement. Write E(α,β)=(1−g)rr′+rd′−r′d and S(α,β)=E(α,β)+E(β,α). Set `d=−∑_i(i−1)E(α_i,α_i)−∑_{i<j}iS(α_i,α_j)`, `d″=−∑_{i<j}E(α_j,α_i)`, d′=d−d″. Every homotopy fibre of π,π′,π″ has respective mass `q^d,q^{d′},q^{d″}`. In particular `mass(Nil_α^{≥0})=q^{d′}mass(Filt_α^{≥0})`. (S16, §3.2–3.3, Proposition 3.1, pp.313–315; S16 line 846).

One route is as follows. Build the nilpotent diagram from its last nonzero step by extension torsors. At each stage the automorphisms and possible lifts contribute q^(dim Ext¹−dim Hom). Apply Euler–Riemann–Roch and telescope to the displayed exponents; apply Fubini to the cutoff square.

*Needs:* §2.6; §2.1; SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts.

**Checks.**

- One step; α₂=[O] in genus g over 𝔽₂: One step d=d′=d″=0 gives fibre mass 1; length-two d=g−1,d″=0 gives 2^(g−1); for g=0 it is 1/2. Keep homotopy markings in the fibre.

### Examples

For a single absolute line species over 𝔽₂, multiplicity two contributes 2/3. In the numerical tower exponential the coefficient is 1/2+1/(2(2²−1))=2/3. For a length-two Jordan block the only nonzero generic multiplicity is r₂=1, and its underlying rank is 2, not 1 (S16, Proposition 2.2 and (3.2), pp.308–312; S16 line 600 and S16 line 831).

### Dependencies

- WeilConjectures WC.1, Finite groupoid mass.
- SchemeAndStackFoundations §§1.18–1.21.
- GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13.
- §1.9.
- §1.5.
- §1.7.
- QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.
- `YoungDiagram`.
- SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts.

## Layer 3: the curve Hall algebra and flag masses

### 3.1 Hall algebra of a curve

Define the following objects and their indicated structure. For each class α let H_α be all Q(v)-valued functions on coherent isomorphism classes, v²=q, and H_fin its finitely supported part. For f∈H_β,g∈H_α set `(fg)(F)=v^{E(β,α)}∑_{A⊂F,[A]=α} f(F/A)g(A)`. Define `Δ′h(B,A)=v^{E(β,α)}∑_{ξ∈Ext¹(B,A)}h(F_ξ)/#Hom(B,A)`. Adjoin k_γ,γ∈Z² with `k_γ f k_−γ=v^{S(γ,α)}f` for f∈H_α and `Δh=∑_{β+α=[h]}Δ′_{β,α}(h)(k_α⊗1)`, Δk_γ=k_γ⊗k_γ. Products on completions are defined only with support conditions giving finite coefficients. (S16, §4.1, pp.315–316; S16 line 934).

The interface has the following properties.

- The product coefficient is the displayed finite subobject sum whenever the support conditions hold.
- Associativity follows from the two ways of forgetting a length-two flag; the zero sheaf is the unit.
- The extension-groupoid formula agrees with Δ′, including the Hom denominator.
- Coefficient-ring extension preserves product, coproduct and group-like elements wherever both sides are defined.

One route is as follows. Push and pull along the groupoid of short exact sequences, using homotopy-fibre mass. Identify the product with actual subobjects and the coproduct with extension classes divided by Hom. Adjoin the numerical group algebra and prove the stated commutation relations.

*Needs:* §2.1; GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts.

**Checks.**

- δ_0 f=f=f δ_0.
- If Ext¹(B,A)=0, `Δ′δ_(A⊕B)(B,A)=v^{E(β,α)}/#Hom(B,A)`.
- Switching A and B changes E(β,α) to E(α,β); these exponents need not agree for unequal degrees.

### 3.2 Green bialgebra and hopf pairing

Prove the following statement. The extended curve Hall algebra with the specified graded completion is a bialgebra. On finite support, (f|g)=∑_[F] f(F)g(F)/#Aut(F); its compatibility is (fg|h)=(f⊗g|Δ′h), and the extended pairing uses the corresponding v-power on k_γ. Coproduct/product continuity is proved in the HN support completion, not an unqualified algebraic tensor product. (S16, §4.1, p.316; S16 line 979; HN10, §1.2–1.3, pp.2–3; HN10 line 46).

One route is as follows. Compare two-step exact-sequence diagrams and their homotopy fibres; hereditary Coh(X) eliminates Ext². Prove Green’s coefficient identity with the numerical Euler twist. Verify pairing adjunction on delta functions and extend to the stated support domains.

*Needs:* §3.1; GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts.

**Checks.**

- O and O on P¹ over 𝔽₂: δ_O²(O²)=3v and |GL₂(𝔽₂)|=6, giving v/2; Δ′ at (O,O)=v/2 and |Aut O|=1, giving v/2. The two sides agree with the same Euler sign.

### 3.3 Hall characteristic functions

Define the following objects and their indicated structure. Write `1_α,1_α^vec,1_α^{≥0},1_α^{<0}` for the characteristic functions of all sheaves, bundles and the indicated total-HN cutoffs in class α; use superscripts together for intersections. The symbol 1_0 denotes δ_0. These may lie in the HN completion rather than H_fin. Pairing a cutoff characteristic with itself gives its groupoid mass. (S16, §4.2, pp.315–316; §4.5, p.319; S16 line 934).

The interface has the following properties.

- Evaluation is 1 exactly on the named isomorphism-invariant subcategory and 0 outside it.
- The self-pairing equals the mass of that subgroupoid when finite or proved convergent.
- For γ=(r,d), r>0, `1_γ=∑_{l≥0}v^{−rl}1^vec_(r,d−l)1_(0,l)` in the HN completion.

One route is as follows. Pull the characteristic predicates back to isomorphism classes. Verify their support in each finite HN quotient and establish evaluation by delta functions. Identify the pairing with the mass sum on its convergence domain.

*Needs:* §3.1; §3.2; GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13.

**Checks.**

- 1_(0,d) is a torsion characteristic for d>0, and 1^vec_(0,d)=0.
- For rank 0 and degree <0, all these functions vanish.
- For r=2,l=1 the coefficient is v^−2; replacing it by v^−1 fails to cancel the Hall Euler twist.

### 3.4 Hall expression for filtered masses

Prove the following statement. For α=(α_1,…,α_s), `mass(Filt_α^{≥0})=q^{−(1/2)∑_{i>j}E(α_i,α_j)}(1_{α_s}⋯1_{α_1}|1^{≥0}_{∑α_i})`. The same formula applies to other total-HN cutoffs whose masses are finite. (S16, §4.2, equation (4.1), p.316; S16 line 979).

One route is as follows. Expand the ordered Hall product by successive subobjects. Compute its accumulated Euler exponent. Pair with the total-HN characteristic and divide by automorphisms of the total sheaf.

*Needs:* §2.5; §3.3; §3.2.

**Checks.**

- Flag O⊂O² on P¹/𝔽₂: Three flags divided by 6 automorphisms give 1/2; q^(−1/2) times pairing v/2 gives 1/2. Order and Euler correction match.

### Examples

On P¹/𝔽₂, the sheaf O² has three O-subobjects with quotient O and six automorphisms. The flag mass is 1/2; the Hall product has coefficient 3v, the Green pairing v/2, and the Euler correction v⁻¹ recovers 1/2. This same quotient-left order fixes every Eisenstein shift in Layer 4 (S16, (4.1), p.316; S16 line 1011).

### Dependencies

- §2.1.
- GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13.
- SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts.
- §2.5.

## Layer 4: Eisenstein series and universal Hall forms

### 4.1 curve Eisenstein series

Define the following objects and their indicated structure. Set `E_r(z)=∑_{d∈Z}1_(r,d)z^d` and E_r^vec(z)=∑_d1^vec_(r,d)z^d for r>0. Set `E_0(z)=1+∑_{l>0}1_(0,l)z^l` and E_0^vec(z)=1. A superscript ≥0 or <0 restricts the total sheaf by HN slopes. The positive-rank untruncated series are bilateral distributions; rational identities mean identities after evaluation with the specified regional expansions. They are not all elements of one Laurent-series field. (S16, §4.3, pp.317–318; §4.4, p.319; S16 line 1030).

The interface has the following properties.

- The z^d coefficient is the named characteristic function in class (r,d).
- `E_r(z)=E_r^vec(z)E_0(q^{−r/2}z)`, for r≥0 in its valid support completion.
- HN restriction of each coefficient gives the corresponding ≥0 or <0 series.

One route is as follows. Package homogeneous characteristic coefficients as formal distributions. For products specify coefficientwise finite HN restrictions, or evaluate on one fixed sheaf to obtain a rational expression. Use torsion-factor normalization to get `E_r(z)=E_r^vec(z)E_0(q^{−r/2}z)`.

*Needs:* §3.3; supplier contract for GlobalShtukasAndFunctionFieldLanglands §GS.0.13.

**Checks.**

- E_0^vec(z)=1, whereas E_0(z) has nonzero torsion coefficients.
- The coefficient of z^d in E_1^vec is the characteristic of Pic^d.
- E_1^vec has arbitrarily negative degrees, so it is not declared to be a formal power series in z.

### 4.2 Harder hecke commutation

Prove the following statement. With |z|≪|w| and r≥0, `E_0(z)E_r^vec(w)=∏_{i=0}^{r−1}ζ_X(q^{−r/2+i}z/w) E_r^vec(w)E_0(z)`. The zeta factors are expanded at z/w=0. (S16, §4.3, Theorem 4.2(ii), p.318; S16 line 1080).

One route is as follows. Compute the torsion modification correspondence on bundles. Factor by closed points and apply the local Hecke calculation. Assemble the Euler product with the displayed rank-dependent q-shifts.

*Needs:* §4.1; §3.1; FunctionFieldArithmetic §§5.1–5.4.

**Checks.**

- r=0,1,2 at q=2: Empty zeta product 1; arguments q⁻¹ᐟ²z/w for r=1, and z/(2w),z/w for r=2. Expand at z/w=0.

### 4.3 Harder Eisenstein coproduct

Prove the following statement. For r=s+t, `Δ′E_r(z)=∑_{s+t=r}q^{st(g−1)/2}E_s(q^{t/2}z)⊗E_t(q^{−s/2}z)`. For bundles replace the first factor by `E_s^vec(q^{t/2}z)E_0(q^{(t−s)/2}z)E_0(q^{−(t+s)/2}z)⁻¹` and the second by `E_t^vec(q^{−s/2}z)`. The sums include s=0,t=0 with the rank-zero conventions. (S16, §4.3, Theorem 4.2(iii), p.318; S16 line 1080).

One route is as follows. Expand Δ′ by extensions and apply the Euler form to fix q-powers. For bundle factors remove the torsion factor using E_r=E_r^vec E_0 and its invertible constant term. Check the first factor’s quotient placement against the chosen Hall order.

*Needs:* §4.1; §3.2; §4.2.

**Checks.**

- r=0; rank split (1,1) in genus 0: Δ′E₀=E₀⊗E₀; prefactor q⁻¹ᐟ² and arguments q¹ᐟ²z,q⁻¹ᐟ²z. Keep zero-rank factors and argument signs.

### 4.4 bundle Eisenstein residue presentation

Prove the following statement. For r≥1, `E_r^vec(q^{(1−r)/2}z_1)=q^{−(g−1)r(r−1)/4}V_1^{−r}V_r · rRes_(z_r/z_(r−1)=q⁻¹,…,z_2/z_1=q⁻¹)[E_1^vec(z_r)⋯E_1^vec(z_1)]`. Here rRes is the coefficient of (1−z_i/(q⁻¹z_(i−1)))⁻¹, taken in descending variable order; it is not the usual differential residue. (S16, §4.3, Theorem 4.2(iv), p.318; §1.4, p.303; S16 line 1080).

One route is as follows. Use Harder’s rank-one Eisenstein residue theorem. Normalize the coefficient by comparing the Green pairing with the known V_r. Apply the fixed descending-variable normalized residues.

*Needs:* §4.3; supplier contract for GlobalShtukasAndFunctionFieldLanglands §GS.0.13; §0.3.

**Checks.**

- r=1; r=2,g=1: r=1 prefactor V₁⁻¹V₁=1 with no residues; rank-two chain z₂/z₁=q⁻¹ has rRes h⁻¹=1. Do not use the differential sign.

### 4.5 HN relations for truncated Eisenstein series

Prove the following statement. In the HN completion `E_r(z)=∑_{s+t=r}q^{(g−1)st/2}E_s^{<0}(q^{t/2}z)E_t^{≥0}(q^{−s/2}z)`, and the same identity holds for the bundle series. Also `E_r^{≥0}(z)=E_r^{vec,≥0}(z)E_0(q^{−r/2}z)`. (S16, §4.4, equation (4.4), p.319; S16 line 1128).

One route is as follows. Use the unique HN split into negative-slope quotient and nonnegative-slope subobject. Evaluate its Hall Euler factor. Separate the torsion piece of the nonnegative part.

*Needs:* §4.1; GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; §3.1.

**Checks.**

- O(1)⊕O(−1) on P¹: Positive subobject has degree 1, negative quotient −1; E((1,−1),(1,1))=3 and shifts multiply the correction to 1. Negative quotient lies on the left.

### 4.6 spherical curve Hall algebra

Define the following objects and their indicated structure. H_sph is the subalgebra of H_fin generated by 1^vec_(1,d),d∈Z, and 1_(0,l),l>0. Its extension includes all k_γ. Its HN completion is obtained using the same slope-bounded quotients as H. The word integral in an R_g-form concerns its coefficient ring; it does not assert every counting polynomial has integer monomial coefficients. (S16, §4.5, pp.319–320; S16 line 1128; HN10, §1.3, p.3; HN10 line 95).

The interface has the following properties.

- The inclusion into H_fin is an injective algebra map compatible with the extended group algebra.
- An algebra map out of H_sph is determined by its values on the rank-one and torsion generators satisfying their Hall relations.
- The closure is computed in the HN support topology, not by a degree-only completion.

One route is as follows. Take the generated subalgebra in the imported function space. Restrict the Hall operations and specify the completion. Use the HN membership theorem below rather than assume completed characteristic functions have finite support.

*Needs:* §3.1; §3.3.

**Checks.**

- Every line-bundle characteristic sum in one degree belongs to H_sph.
- 1_(0,1) belongs to H_sph and is not a bundle generator.
- The full characteristic 1_(r,d) need not be finitely supported, so membership is asserted in the completed spherical space.

### 4.7 HN strata are spherical

Prove the following statement. For every fixed HN type τ the finite-support characteristic 1_τ belongs to H_sph. Consequently the total ≥0 and <0 characteristics and fixed-class bundle characteristics belong to its HN completion. (HN10, Theorem 3.1 and its proof, pp.5–8; Corollary 3.5, p.8; HN10 line 184; S16, §4.5, p.319, using HN10 Theorem 3.1; S16 line 1128).

One route is as follows. Apply the source’s induction on rank and HN polygon to recover semistable characteristics from rank-one generators. Recover a fixed HN stratum by its ordered semistable Hall product. Pass to HN-finite coefficient sums for the completed characteristics.

*Needs:* §4.6; §4.5; §4.4; GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13.

**Checks.**

- P¹, HN types (O,O) and (O(1),O(−1)): Each fixed type has one rational class; their unbounded union has infinitely many classes. Membership is finite per type, completed per class.

### 4.8 universal spherical Hall form

Prove the following statement. There is a torsion-free generic spherical form generated by the rank-one, torsion and k_γ symbols, whose Hall multiplication and Green pairings are rational functions of the reciprocal Weil coordinates. After dividing scalar flag masses by their Hall Euler twists, these masses lie in K_g and specialize to the curve values. The standard v²=q normalization may first be constructed over R_g[v±1]/(v²−q); descent of the normalized algebra structure to R_g and its scalar pairings to K_g with denominators generated by q^m−1 is part of this target, not an assumed square-root cancellation. (S16, §4.5, Theorem 4.4, pp.319–320; §4.6, p.321; S16 line 1128; SV12, §1.11, preprint pp.13–14; SV12 line 659).

One route is as follows. Use the shuffle presentation to construct the torus coefficient algebra and its torsion-free generated form. Extend by the torsion Hecke algebra and numerical group algebra, preserving the pairing. Descend the reciprocal-invariant scalar expressions and track every allowed denominator. Prove the comparison between the torus coefficient form and the reciprocal-invariant paired form, including its denominator bounds.

*Needs:* §4.6; §4.7; §4.2; §4.3; §0.1.

**Checks.**

- One line mass; q=2,3: P(1)/(q−1) specializes to P(1),P(1)/2; normalized flag v factors cancel in the one-step scalar. Require invariant descent and allowed denominators.

### 4.9 universal truncated and bundle counts

Prove the following statement. There are unique elements C_α(K_g) for the truncated coherent masses and N_α(K_g) for the truncated nilpotent masses, and `A_{g,α}^{≥0}∈K_g`, whose specializations are their named finite-field values. Their plethystic relation is `Exp(∑_{α≠0}A_{g,α}^{≥0}u^r z^d/(q−1))=∑_α N_αu^r z^d`. For r>0 eventual periodicity defines a unique `A_{g,r,d}∈K_g` specializing to A_X(r,d). (S16, §4.5, Corollaries 4.5–4.6, pp.320–321; §4.6, p.321; Theorem 1.1, p.299; S16 line 1179).

One route is as follows. Express every fixed-cutoff flag mass by spherical pairings and apply generic-form. Sum finitely many Jordan types in each class and apply the plethystic logarithm coefficient recursion. Use large-degree and tensor periodicity to remove the cutoff; use the universal-curve density contract for uniqueness.

*Needs:* §4.8; §3.4; §2.7; §2.3; §1.9; §1.10; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts; LefschetzPencilsAndVanishingCycles §5.11 and its universal-curve density contract; DeligneWeightsAndPurity §10.5.

**Checks.**

- Zero class and line coefficient: Nil mass at zero 1; rank-one generating coefficient P(1)/((q−1)(1−z)); Log recovers P(1)/(1−z). Cutoff coefficients remain cutoff counts.

### Examples

At rank one the bundle mass V₁ is P_X(1)/(q−1); at rank zero the bundle series is 1 and the coherent series has torsion coefficient #X(k)/(q−1). On P¹ the bundles O(m)⊕O(−m), m≥0, show why a fixed class alone is not finite support (S16, Theorems 4.1–4.2, pp.316–318; S16 line 1015 and S16 line 1092).

### Dependencies

- §3.3.
- supplier contract for GlobalShtukasAndFunctionFieldLanglands §GS.0.13.
- §3.1.
- FunctionFieldArithmetic §§5.1–5.4.
- §3.2.
- §0.3.
- GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13.
- §0.1.
- §3.4.
- §2.7.
- §2.3.
- §1.9.
- §1.10.
- QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.
- LefschetzPencilsAndVanishingCycles §5.11 and its universal-curve density contract; DeligneWeightsAndPurity §10.5.

## Layer 5: shuffle pairings and partition kernels

### 5.1 Eisenstein pairing series

Define the following objects and their indicated structure. For a finite rank tuple r=(r_1,…,r_s) with n=∑r_i, define `G_r^{≥0}(z_s,…,z_1;w)=(E_{r_s}(z_s)⋯E_{r_1}(z_1)|E_n^{≥0}(w))`, and `Y_r^*(z_s,…,z_1;w)=(E^vec_{r_s}(z_s)⋯E^vec_{r_1}(z_1)|E_n^*(w))`, for *=empty,≥0,<0. Write `r_<i=∑_{j<i}r_j,r_>i=∑_{j>i}r_j`. The ≥0 rational function is expanded with z_1≫⋯≫z_s≫w⁻¹; the <0 expression has w large relative to all z_i⁻¹. Coefficients specify the degree in each slot, so this notation is a distribution where n>0 and *=empty. (S16, §5.1–5.2, pp.321–324; S16 line 1218).

The interface has the following properties.

- The `z_1^{d_1}⋯z_s^{d_s}w^{∑d_i}` coefficient is the named ordered Hall pairing.
- A zero bundle rank slot contributes the unit and may be deleted from Y, while a coherent rank-zero slot contributes torsion in G.
- The rational representative and its regional expansions agree coefficientwise with the defining pairing on the indicated domains.

One route is as follows. Pair each graded coefficient using finite HN cutoffs. Use the coproduct to establish rationality in the two specified regions. Distinguish the source’s reversed tuple notation from the order of the z_i symbols.

*Needs:* §4.1; §3.2.

**Checks.**

- `Y_(r)(z;w)=V_r∑_{d∈Z}(zw)^d` for r>0.
- Y_(0,r) and Y_(r) agree after forgetting the unused zero-rank variable.
- For two unequal ranks reversing the Hall order also reverses the cross-term q-shifts; simply reversing the displayed tuple is invalid.

### 5.2 separation of the torsion factor

Prove the following statement. With n=∑r_i and X=[1−∑α_j+q], set `X_r(z;w)=Exp(X/(q−1)·[∑_i q^{−(n+r_i)/2}z_iw+∑_{i>j}(z_i/z_j)(q^{r_j/2}−q^{−r_j/2})q^{−r_i/2}])`. Then `G_r^{≥0}=X_r Y_r^{≥0}` in the ordered expansion region; ev_X(X)=#X(k), and Adams on X gives #X(Fq^l). (S16, §5.1, Proposition 5.1 and proof, pp.321–323; S16 line 1218).

One route is as follows. Insert E_r=E_r^vec E_0(q^−r/2 z) in the ordered product. Commute all torsion factors to the right using the Hecke identity. Pair them against `E_n^{≥0}`; collect cross terms and use the torsion mass exponential.

*Needs:* §5.1; §4.2; §4.3; supplier contract for GlobalShtukasAndFunctionFieldLanglands §GS.0.13; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- One rank-one slot; q=2: X₁=Exp([X]zw/(q(q−1))); its zw coefficient is #X(k)/2, not #X(k). Retain the total-rank shift.

### 5.3 untruncated bundle pairing

Prove the following statement. For all r_i≥0, `Y_r(z_s,…,z_1;w)=q^{(g−1)∑_{i>j}r_ir_j/2}(∏_i V_{r_i})∏_i ∑_{l∈Z}(z_iw q^{(r_<i−r_>i)/2})^l`, deleting zero-rank bundle slots before interpreting their bilateral factor. (S16, §5.3, Lemma 5.2, p.324; S16 line 1432).

One route is as follows. Iterate the coherent Eisenstein coproduct. Pair each bundle factor using the degree-independent mass V_r. Read the remaining coefficient constraints as separate bilateral delta distributions.

*Needs:* §5.1; §4.3; supplier contract for GlobalShtukasAndFunctionFieldLanglands §GS.0.13.

**Checks.**

- s=1; (r₁,r₂)=(1,2): s=1 gives V_r∑(zw)^d; two shifts are q⁻¹ and q¹ᐟ², interchanged incorrectly by a silent order reversal. Delete zero slots before bilateral factors.

### 5.4 separation of regional expansions

Prove the following statement. Let f_1,…,f_m be rational functions with denominators products of nonzero binomials in the degree variables, and let each be expanded in an admissible monomial order as a formal distribution. If the sum of these distributions is zero, then ∑_i f_i=0 as a rational function. Only multiplication of a distribution by a Laurent polynomial is required. (S16, §5.4, Lemma 5.4, pp.328–329; S16 line 1689).

One route is as follows. Choose a common Laurent-polynomial denominator. Multiplication clears each expansion to the same Laurent polynomial. Inject Laurent polynomials into the distribution module and cancel the nonzero denominator in the rational function field.

*Needs:* §5.1.

**Checks.**

- 1/(1−z) at 0 and infinity: Expansions `∑_{n≥0}z^n` and `−∑_{n<0}z^n`; multiplying either by 1−z gives 1. Equality is after polynomial denominator clearing.

### 5.5 rank-one truncated shuffle formulas

Prove the following statement. Let s≥1, `Z=∏_{i<j}ζ̃(z_i/z_j)` and `C=q^{(g−1)s(s−1)/4}V_1^s/Z`. Then `Y_(1^s)^{≥0}=C·∑_{σ∈S_s}σ[Z/(∏_{i<s}(1−qz_(i+1)/z_i)·(1−q^{(1−s)/2}z_1w))]`. For <0 the formula is `(−1)^s C·∑_σ σ[Z/(∏_{i<s}(1−q⁻¹z_i/z_(i+1))·(1−q^{(s−1)/2}z_sw))]`. `ζ̃(t)=t^{1−g}ζ(t)`. The ≥0 and <0 functions are expanded in their respective regions. (S16, §5.4, Proposition 5.3, pp.325–331; S16 line 1493).

One route is as follows. Induct on s using the HN convolution relation and the known untruncated distribution. Compute each nontrivial split contribution by Hecke commutation. Identify the rational positive and negative parts using expansion-separation and their pole bounds.

*Needs:* §5.1; §5.3; §4.5; §5.4; FunctionFieldArithmetic §§5.1–5.4.

**Checks.**

- s=1; s=2 sign: Positive expression V₁/(1−zw); negative expression −V₁/(1−zw) expanded at infinity has coefficients V₁ for negative degrees; s=2 sign is +1. Retain regions and (−1)^s.

### 5.6 arbitrary-rank block residue formula

Prove the following statement. For r_i>0, n=∑r_i and a(r)=−(g−1)∑r_i(r_i−1)/4, let R_r take descending normalized residues inside each block z_j^(i)/z_(j−1)^(i)=q⁻¹, largest block first. Then `Y_r^{≥0}(q^{(1−r_s)/2}z_1^(s),…,q^{(1−r_1)/2}z_1^(1);w)=q^{a(r)}V_1^{−n}(∏_iV_{r_i}) R_r[Y_(1^n)^{≥0}(z_n,…,z_1;w)]`. Equivalently, after scaling each surviving variable by q^−1/2, the prefactor is `q^{b(r)}∏V_{r_i}`, `b(r)=(g−1)∑_{i<j}r_ir_j/2`, and the shuffle denominator’s final factor is 1−q^−n/2 z_1w. Zero-rank slots are deleted. (S16, §5.5, equations (5.14)–(5.15), pp.331–332; S16 line 1971).

One route is as follows. Replace each higher-rank bundle series by its rank-one residue presentation. Commute the finitely many formal residues with the valid pairing coefficients. Collect the a(r) and rank-one prefactors to derive b(r) and the surviving-variable scaling.

*Needs:* §5.5; §4.4; §0.3.

**Checks.**

- Tuple (1); tuple (2),g=2: No residues and prefactor 1 for the first; a(2)=−1/2 and chain z₂/z₁=q⁻¹ for the second. Scaling is part of the formula.

### 5.7 generic Jordan-type generating sum

Define the following objects and their indicated structure. A generic Jordan type is a finitely supported sequence r_i≥0, with weighted size |λ|=∑i i r_i and `λ=(1^{r_1}2^{r_2}…)`. Define `Ξ_r(z,T)=∑_{α:rank α_i=r_i} mass(Nil_α^{≥0}) z^{∑i i deg α_i}T^{∑i i r_i}`, allowing additional rank-zero Jordan steps. Set `e(r)=(g−1)[∑(i−1)r_i²+∑_{i<j}(2i−1/2)r_ir_j]` and `x_l=z^l q^{(r_>l−r_<l)/2}`. The weight is the class of the underlying F, not its quotient F/im θ. (S16, §5.6, equations (5.16)–(5.18), pp.331–333 (weighted exponent made explicit); S16 line 1971).

The interface has the following properties.

- The weighted-size-r multiplicity sequences correspond bijectively to partitions of r, retaining internal zeros.
- The coefficient of T^r z^d sums exactly nilpotent-pair masses of class (r,d) with the chosen generic type.
- Truncating the number of Jordan steps stabilizes each fixed coefficient, because the total torsion degree bounds the extra nonzero rank-zero steps.

One route is as follows. Identify finite rank multiplicities with the imported partitions. Define the classwise finite coefficient sum and retain all possible torsion tails. Use the flag-pairing expression to substitute x_l for degree variables.

*Needs:* §2.4; §2.7; §5.1; `YoungDiagram`.

**Checks.**

- At rank zero Ξ_empty is the nontrivial torsion nilpotent series, not just 1.
- r_2=1,r_i=0 otherwise gives T² and not T.
- A nonzero degree in α_2 contributes twice that degree to the underlying sheaf class.

### 5.8 positive-arm plethystic product

Prove the following statement. For `λ=(1^{r_1}2^{r_2}…)` and `r_[i,j]=∑_{k=i}^j r_k`, `Exp(X/(q−1)·∑_{i,l≥1}q^{−r_[i,i+l]}(q^{r_(i+l)}−1)z^l)=∏_{s∈λ,arm(s)>0}ζ(q^{−1−leg(s)}z^{arm(s)})`. The product excludes precisely the cells of arm length zero. (S16, §5.6, Lemma 5.5, p.333; S16 line 2107).

One route is as follows. Group the cells by their positive arm length and by the multiplicity blocks of their row lengths. Telescope the powers of q for fixed arm length. Apply ζ(t)=Exp(Xt) and additivity of Exp.

*Needs:* §0.1; §5.7; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts; `YoungDiagram.armLength`; `YoungDiagram.legLength`; FunctionFieldArithmetic §§5.1–5.4.

**Checks.**

- λ=(1),(2),(1,1): Products respectively 1,ζ(q⁻¹z),1; only (2) has a cell of positive arm. Exclude every arm-zero cell.

### 5.9 partition residue kernels

Define the following objects and their indicated structure. For `λ=(1^{r_1}2^{r_2}…)`, n=∑r_i, set `J_λ(z)=∏_{s∈λ}ζ*(q^{−1−leg(s)}z^{arm(s)})`. Define ζ*(q⁻¹)=∏_j(1−α_j⁻¹)/(1−q⁻¹), ζ*(1)=∏_j(1−α_j)/(1−q), and ζ* equal to ζ at other specified monomials. With `Z_n=∏_{i<j}ζ̃(z_i/z_j)`, `L_n=Z_n⁻¹∑_{σ∈S_n}σ[Z_n/(∏_{i<n}(1−qz_(i+1)/z_i)(1−z_1))]`. Take normalized residues along adjacent variables within each multiplicity block, starting from the largest indices, and substitute each surviving `z_(1+r_<i)=z^i q^{−r_<i}`; the result is H_λ(z). Define J_empty=H_empty=1. The symmetric sum is unaveraged. (S16, §1.4, equations (1.1)–(1.3), pp.303–304; S16 line 242).

The interface has the following properties.

- For the empty diagram both kernels are 1.
- `J_(1)=ζ*(q⁻¹)=q^{1−g}P(1)/(q−1)`, and H_(1)=1/(1−z), using paired reciprocal coordinates.
- Coefficient specialization commutes with each rational operation and ordered residue wherever the indicated denominators specialize nontrivially.
- Zero multiplicity blocks introduce neither a variable nor a residue, and the surviving-variable substitution is unchanged.

One route is as follows. Use the baseline YoungDiagram arms and legs; enumerate multiplicities without replacing the carrier. Form the rational shuffle kernel over the localization and apply ordered normalized residues. Prove the specialization is well defined after taking residues, including vanished multiplicity blocks.

*Needs:* §0.3; §0.1; FunctionFieldArithmetic §§5.1–5.4; `YoungDiagram.armLength`; `YoungDiagram.legLength`; `YoungDiagram.transpose`.

**Checks.**

- For λ=(1), `q^{g−1}J_(1)H_(1)=P(1)/((q−1)(1−z))`; omitting `q^{1−g}` in J_(1) fails this test.
- λ=(2) has n=1 and no block residue; λ=(1,1) has n=2 and one block residue.
- The constant coefficient of the partition generating series is exactly 1, enabling Log.

### 5.10 Jordan sum as a partition product

Prove the following statement. For λ associated with r, `Ξ_r=q^{(g−1)⟨λ,λ⟩}J_λ(z)H_λ(z) Exp(Xz/((q−1)(1−z)))T^{|λ|}`, where `⟨λ,λ⟩=∑_j(λ′_j)²=∑_i i r_i²+2∑_{i<j}i r_ir_j`. Before simplification `Ξ_r=q^{e(r)}Exp(X/(q−1)[∑_{i,l≥1}q^{−r_[i,i+l]}(q^{r_(i+l)}−1)z^l+z/(1−z)])Y_r^{≥0}(x_s,…,x_1;1)T^{|λ|}`. (S16, §5.6, equations (5.16)–(5.18), pp.332–333; S16 line 2034).

One route is as follows. Apply the finite-step flag formula and torsion separation. Take the coefficientwise-stable torsion-tail limit, producing z/(1−z). Use the positive-arm identity, Siegel factors for zero-arm cells, and block residues to obtain J_λH_λ.

*Needs:* §5.7; §5.2; §5.6; §5.8; §5.9; supplier contract for GlobalShtukasAndFunctionFieldLanglands §GS.0.13.

**Checks.**

- λ empty and one box: Empty term is the torsion exponential; one-box bundle factor is P(1)/((q−1)(1−z)), then multiplied by the same torsion exponential. Cancel torsion only after summing.

### Examples

The one-box partition gives q^(g−1)J_(1)H_(1)=P(1)/((q−1)(1−z)). The two partitions of size two have different multiplicity lengths: (2) has one variable and no block residue, while (1,1) has two variables and one normalized residue. The positive-arm product is ζ(q⁻¹z) for (2) and 1 for (1,1) (S16, (1.1)–(1.3) and Lemma 5.5, pp.303–304,333; S16 line 242 and S16 line 2200).

### Dependencies

- §4.1.
- §3.2.
- §4.2.
- §4.3.
- supplier contract for GlobalShtukasAndFunctionFieldLanglands §GS.0.13.
- QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.
- §4.5.
- FunctionFieldArithmetic §§5.1–5.4.
- §4.4.
- §0.3.
- §2.4.
- §2.7.
- `YoungDiagram`.
- §0.1.
- `YoungDiagram.armLength`.
- `YoungDiagram.legLength`.
- `YoungDiagram.transpose`.

## Layer 6: partition residue formulas and origin constants

### 6.1 universal partition generating identity

Prove the following statement. In K_g[[T,z]], `Exp(∑_{r>0,d≥0} A_{g,r,d}^{≥0}T^rz^d/(q−1))=∑_λ q^{(g−1)⟨λ,λ⟩}J_λ(z)H_λ(z)T^{|λ|}`, with each rational coefficient expanded at z=0. The rank-zero part of the coherent nilpotent series is Exp(Xz/((q−1)(1−z))) and cancels from both sides. (S16, §5.7, equations (5.19)–(5.21), pp.333–334; S16 line 2107).

One route is as follows. Sum the Jordan product over all partitions, coefficientwise. Identify absolute indecomposable torsion sheaves over every extension field and cancel their exponential. Use the universal coefficient specialization and density to obtain equality in K_g.

*Needs:* §5.10; §2.3; §4.9; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- T=0 and coefficient T: Both sides have constant 1; T coefficient P(1)/((q−1)(1−z)). Do not keep rank-zero exponential twice.

### 6.2 eventually periodic residue extraction

Prove the following statement. Let K be a field and r>0 with (r:K)≠0. If a_d∈K, d≥0, is eventually r-periodic, r>0, and its eventual values are b_j for j mod r, then `F(z)=∑a_dz^d=P(z)+∑_{j=0}^{r−1}b_j z^j/(1−z^r)`, with P polynomial. It has at most simple poles in μ_r, and `b_d=−∑_{ξ∈μ_r}ξ^{−d}dRes_(z=ξ)(F(z)dz/z)`, computed after a cyclotomic extension and descending to K. For bundle counts `a_d=A_{g,r,d}^{≥0}` and `b_d=A_{g,r,d}`. (S16, §5.8, equation (5.22), pp.334–335; S16 line 2205).

One route is as follows. Remove the finite nonperiodic prefix to get the rational form. Compute each simple differential residue as −∑_j b_j ξ^j/r. Use finite Fourier orthogonality to recover b_d and Galois invariance to descend.

*Needs:* §0.3; §1.10; §1.9; §4.9.

**Checks.**

- r=2, b₀=2,b₁=3 in ℚ; characteristic 2 control: Residues at 1,−1 are −5/2,1/2; negative Fourier sums give 2,3; in characteristic 2, 1−z²=(1−z)². Require (r:K)≠0.

### 6.3 Schiffmann partition residue formula

Prove the following statement. Define `A_{g,r}(z)` by `∑_{r≥1}A_{g,r}(z)T^r=(q−1)Log(∑_λq^{(g−1)⟨λ,λ⟩}J_λ(z)H_λ(z)T^{|λ|})`. For all d∈Z, `A_{g,r,d}=−∑_{ξ∈μ_r}ξ^{−d}dRes_(z=ξ)(A_{g,r}(z)dz/z)`. Each coefficient has at most simple poles, all in μ_r. Each fixed rank uses finitely many partitions and Adams divisors. (S16, §1.4, Theorem 1.6, p.304; §5.7–5.8, pp.333–335; S16 line 307).

One route is as follows. Apply Log to the universal generating identity. Identify `A_{g,r}(z)` with the generating series of truncated counts. Apply residue-extraction; finite rank bounds the partition sum and all Adams divisors.

*Needs:* §6.1; §6.2; §5.9; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- Rank 1: `A_{g,1}(z)=P(1)/(1−z)`, dRes at 1=−P(1); negative extraction gives P(1). Keep minus differential-residue sign.

### 6.4 rank-two universal check

Prove the following statement. Put P=∏(1−α_i), U=∏(1−qα_i), V=∏(1+α_i), S=∑(1−α_i)⁻¹. The rank-two count is P[U/((q−1)(q²−1))−V/(4(1+q))+P/(2(q−1))(1/2−1/(q−1)−S)], independently of d; the displayed apparent α_i=1 poles cancel after multiplying by P². At g=0 it is 0; at g=1 it is P. (S16, §1.4, rank-two example, p.305; Appendix C, p.358; S16 line 387).

One route is as follows. Enumerate λ=(2),(1,1) in the partition formula. Compute the T² logarithmic coefficient, including ψ_2 of the rank-one term. Take its residues and simplify using α_iα_(paired i)=q.

*Needs:* §6.3; §0.1.

**Checks.**

- q=2, empty list; pair (−1,−2): Empty bracket 1/3−1/12−1/4=0; for pair P=6,U=15,V=0,S=5/6, bracket 5−4=1 and count 6. Cancel apparent poles as rational functions.

### 6.5 origin constant of the bundle invariant

Define the following objects and their indicated structure. Work in the paired-coordinate affine cone Q[q,α_1,…,α_(2g)]/(α_(2i−1)α_(2i)−q), with the origin q=α_i=0 and g≥1. The rational functions `A_{g,r,d}` from the partition formula extend regularly to that origin. Define `A_{g,r,d}(0)` by that local evaluation. This is not evaluation of an arbitrary element of K_g or of an arbitrary character Laurent polynomial at zero. (S16, §5.9, proof of Corollary 1.9, pp.335–336; S16 line 2295).

The interface has the following properties.

- The count belongs to the subring of rational functions regular at the affine-cone origin.
- Any two regular rational representatives give the same value at the origin.
- Degree periodicity and Mellit degree independence commute with this evaluation once regularity is established.

One route is as follows. Rewrite the complete `q^{(g−1)⟨λ,λ⟩}J_λH_λ` factors with denominators whose specialization in Q(z) is nonzero. Track each permutation term after the ordered residues; all nonidentity contributions vanish at the origin. Prove regularity survives the logarithmic coefficients and differential residue extraction.

*Needs:* §6.3; §5.9.

**Checks.**

- `A_{g,1,d}(0)=1` for every g≥1.
- q⁻¹ is a valid torus function but is not regular at the origin and has no origin constant.
- α_1α_2 and q both specialize to zero, consistently with their relation.

### 6.6 constant-term partition formula

Prove the following statement. For g≥1 set `K_λ(z)=∏_i∏_{j=1}^{r_i}(1−z^−j)⁻¹` and define `∑_{r≥1}A^0_{g,r}(z)T^r=−Log(∑_λ z^{(g−1)⟨λ,λ⟩−length(λ)}K_λ(z)T^{|λ|})`. Then `A_{g,r,d}(0)=−∑_{ξ∈μ_r}ξ^−d dRes_(z=ξ)(A^0_{g,r}(z)dz/z)`. For r=1,2,3,4 these values are 1,g,4·binom(g,2)+g,32·binom(g,3)+20·binom(g,2)+g. For fixed r the value is a polynomial in g of degree r−1 on g≥1. (S16, §1.4, Corollary 1.9 and examples, pp.305–306; §5.9, pp.335–336; S16 line 387).

One route is as follows. Evaluate the regular partition factors at the origin and combine the surviving binomial factors into K_λ. Keep the minus sign in the definition of A⁰ and use the negative differential-residue extraction, as in §6.2. Compute partitions through rank four and prove the fixed-rank polynomial degree in g.

*Needs:* §6.5; §6.2; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- Rank 1 and g=1,2; ranks 2,3,4 at g=2: A⁰₁=z^(g−1)/(1−z), residue −1; −residue=1; higher constants 2,6,22. Use the negative differential-residue sign.
- For r=1, the one-box term gives A⁰_(g,1)(z)=z^(g−1)/(1−z). Its differential residue at 1 is −1, so the negative extraction gives the required origin count 1. A positive extraction would give −1.

### Examples

With q=2 and paired eigenvalues (−1,−2), P=6, U=15, V=0 and S=5/6. The rank-two bracket is 5−4=1 and the count is 6. At the origin, ranks one through four in genus two give 1,2,6,22. In genus three, ranks three and four give 15 and 95. These are origin values, not full counting functions (S16, pp.305–306; S16 line 388 and S16 line 451).

### Dependencies

- §5.10.
- §2.3.
- §4.9.
- QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.
- §0.3.
- §1.10.
- §1.9.
- §5.9.
- §0.1.

## Layer 7: canonical Higgs sheaves and framed charts

### 7.1 positive canonical Higgs sheaves and coherent comparisons

Use EndoscopicTransferAndUnitaryTraceComparison §3.7's coherent canonical Higgs sheaves, their underlying sheaves and ordinary geometric slope (semi)stability. Define the full positive subcategory A_K^+ by μ_min(F)≥0, with the exact structure induced from coherent Higgs sheaves. Relative (semi)stability tests invariant subobjects belonging to A_K^+ (the quotient is then positive). It is not defined by intersecting the usual semistable locus with A_K^+. For g≥1 and d>binom(r,2)(2g−2), prove that the relative and usual semistable moduli agree; outside that range no equality is asserted. Positive-rank ordinarily semistable coherent Higgs sheaves are bundles because their maximal torsion subsheaf is invariant and has slope +∞. Use the bundle HN theory and bundle deformation complex of AutomorphicSpectralTheory §§6.22c and 6.24. Extend ordinary HN filtrations to coherent Higgs sheaves by placing their invariant torsion part first, and construct relative HN filtrations in A_K^+. For coherent F,G, identify derived Higgs Hom with the total complex of RHom_X(F,G)→RHom_X(F,G⊗Ω), with columns in degrees zero and one and differential f↦θ_G∘f−(f⊗1)∘θ_F; retain the derived terms in each column. On bundles this agrees with the supplied two-term sheaf Hom complex. Its degree-two Ext group need not vanish. (S16, §6.2, pp.336–337; S16 line 2365; MS14, §1, p.2; §2.1, Theorem 2.1 and Corollaries 2.2–2.4, p.4; MS14 line 219; §3, pp.5–7, especially Corollary 3.3, p.6; MS14 line 386).
The interface has the following properties.

- Forget θ to the supplier coherent category; kernels and cokernels carry induced Higgs fields.
- For a bundle it suffices to test saturated proper positive-rank invariant subsheaves.
- For gcd(r,d)=1, Higgs semistability implies stability.
- Geometric (semi)stability is preserved and detected by field extension; the definition used for moduli is geometric.
- Two Higgs morphisms are equal when their underlying coherent maps agree; a coherent isomorphism lifts to a Higgs isomorphism exactly when it intertwines the two fields.
- A short exact coherent Higgs sequence with positive endpoints has positive middle object; positivity is preserved by quotients. Do not assert that every coherent subobject of a positive object is positive.
- For g≥1 and d>binom(r,2)(2g−2), the relative semistable positive moduli identify with the usual semistable Higgs moduli, compatibly with field extension.

One route is as follows. Use the supplied coherent Higgs carrier and identify its locally free locus with the bundle carrier. The invariant torsion subsheaf supplies the first ordinary HN factor; apply the supplied bundle HN theorem to its quotient. For the coherent deformation comparison, totalize the two columns of derived Hom, obtaining the long exact sequence of MS14 Theorem 2.1. Restrict to the HN-nonnegative exact category and establish its relative HN induction using positive quotients and bounded slopes. For a semistable Higgs bundle of rank s, consecutive underlying HN slopes differ by at most 2g−2. The binomial degree bound forces positivity; applying the same bound to a semistable destabilizer proves the converse comparison of the two stability conditions (MS14 Corollary 3.3).

*Needs:* GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts; SchemeAndStackFoundations §§1.18–1.21; EndoscopicTransferAndUnitaryTraceComparison §3.6; EndoscopicTransferAndUnitaryTraceComparison §3.7. AutomorphicSpectralTheory §§6.22c, 6.24; SchemeAndStackFoundations §2.18.

**Checks.**

- Every line bundle with any Ω-valued field is stable.
- (L⊕L,0) is semistable of equal slope but not stable.
- A nonzero torsion summand in a positive-rank Higgs sheaf is invariant and violates semistability.
- On P¹, O(−1) injects into O² with quotient O(1). The middle object and quotient are positive but the subobject is not; for zero Higgs fields the induced exact category must not be treated as an abelian subcategory.
- The relative stability predicate quantifies only over invariant subobjects with μ_min≥0. A test with μ_min<0 belongs to the usual predicate but is excluded from the relative predicate, even when its average slope is positive.
- At a smooth rational point x, take T=k_x with zero Higgs field and trivialize Ω locally. The two derived-Hom columns each have dimensions 1 in degrees 0 and 1, and the differential is zero. Higgs self-Ext therefore has dimensions 1,2,1 in degrees 0,1,2; the ordinary sheaf-Hom columns alone would give 1,1,0. Torsion requires the derived comparison.
- On an elliptic curve with a nowhere-zero canonical form η, the commutator column map from (O,0) to (O,η) sends Id to η, with coefficient +1 in that trivialization. The two-term sheaf complex is an isomorphism complex and has zero cohomology; reversing the written differential would give coefficient −1.

### 7.2 Serre-dual Higgs criterion

Prove the following statement. For coherent V,W on the smooth projective curve, Ext¹(V,W)*≃Hom(W,V⊗Ω_X), naturally. For a subsheaf W⊂V, write a:Ext¹(V,V)*→Ext¹(V,W)* and b:Ext¹(W,W)*→Ext¹(V,W)* for the dual restriction and pushout maps. A functional ν corresponds to a Higgs field preserving W iff a(ν)∈im b. (S16, §6.2, equation (6.1), p.337; S16 line 2408).

One route is as follows. Import Serre duality in its natural coherent form, not an isomorphism chosen separately for each pair. Identify the two maps with restriction and the inclusion of W⊗Ω in V⊗Ω. Read preservation as factorization.

*Needs:* §7.1; SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts.

**Checks.**

- V=k² with W=ke₁; θ matrices [[1,1],[0,2]] and [[1,0],[1,2]]: First preserves W since lower-left entry 0; second fails since lower-left 1; factorization criterion true and false respectively. Naturality fixes the actual maps.

### 7.3 stable canonical Higgs moduli

Define the following objects and their indicated structure. For g≥1,r>0,gcd(r,d)=1, construct the finite-type stable Higgs stack and its coarse smooth geometrically connected quasiprojective scheme H_(r,d), of dimension 2D, D=1+(g−1)r². The stack is a G_m-gerbe over H and has stable-locus dimension 2D−1. Construct `h:H→⊕_{i=1}^r H⁰(X,Ω_X^i)` by characteristic coefficients and prove it proper. Its zero fibre Λ is projective Lagrangian of pure dimension D. For g=0 use H_(1,d)=A⁰ and H_(r,d)=empty for r>1 in coprime classes. (S16, §6.2, p.337; §6.10–6.11, pp.349–352; S16 line 2408).

The interface has the following properties.

- The coarse map is universal to algebraic spaces and identifies geometric points with stable Higgs isomorphism classes.
- The stabilizer is exactly G_m; over a finite field the rational-point fibre is neutral, so stack mass is #H(k)/(q−1).
- Under θ↦tθ, the i-th Hitchin coefficient scales by t^i.
- Λ=h⁻¹(0) consists precisely of Higgs fields nilpotent under iterated Ω-twisted composition.

One route is as follows. Use stable Higgs sheaf GIT and fixed-degree boundedness for the coarse moduli problem, retaining the scalar gerbe. Compute the tangent-obstruction complex; scalar automorphisms and their dual obstruction give the smooth coarse dimension 2D. Prove canonical Hitchin properness, geometric connectedness and the pure-D-dimensional nilpotent Lagrangian theorem, in every characteristic; these are geometric inputs to the subsequent framed comparison.

*Needs:* §7.1; SchemeAndStackFoundations §§1.18–1.21; AlgebraicModuliForArithmeticGeometry §1.3; SchemeAndStackFoundations §4.14; AlgebraicModuliForArithmeticGeometry §4.19 and its reductive-character-GIT contract; EndoscopicTransferAndUnitaryTraceComparison §§3.6–3.7 and its fixed-source contract.

**Checks.**

- H_(1,d)=Pic^d×A^g, D=g, and Λ=Pic^d.
- For a rational stable Higgs object the stack weight is 1/(q−1), whereas its coarse point counts as 1.
- For rank two, trace scales with weight 1 and determinant with weight 2; the whole Hitchin base does not have weight 1.

### 7.4 two-line framed quot chart

Define the following objects and their indicated structure. Choose L_i of degree −d_i with the good-line properties of S16 Lemma 6.1, l_i=χ(L_i,F)=(1−g+d_i)r+d>0 and `V_i=k^{l_i}`. In Quot((L_1⊗V_1)⊕(L_2⊗V_2),(r,d)), let Q°° be the open on which both restricted maps L_i⊗V_i→F are epimorphisms and both frame maps V_i→Hom(L_i,F) are isomorphisms. This explicitly imposes strong generation; frame isomorphisms alone do not imply surjective evaluation. It is smooth; Q°°→Q°_(L1) is a principal GL(V_2)-bundle. With G=GL(V_1)×GL(V_2), [Q°°/G] is the open coherent stack of sheaves strongly generated by L_1. The good-line kernel bound is used only for epimorphisms from `L_1^{⊕l_1}`, a fixed source rank. (S16, §6.3–6.4, pp.337–339, especially Lemma 6.1 and the framed Quot opens; S16 line 2408).

The interface has the following properties.

- Forgetting the second frame gives the stated principal GL(V_2)-bundle.
- The quotient groupoid over every test scheme is the strongly L_1-generated sheaf groupoid, with descent respected.
- At φ the Quot tangent space is Hom(kerφ,F), with the imported scheme tangent identification.

One route is as follows. Import strong generation as Ext¹(L,F)=0 plus surjective evaluation, and the routed good-line theorem. Use cohomology-and-base-change to make the frame-isomorphism condition open. Identify fibres of forgetting the second frame with GL(V_2) and use the Quot tangent and obstruction groups to prove smoothness.

*Needs:* AlgebraicModuliForArithmeticGeometry §1.3; SchemeAndStackFoundations §4.14; EndoscopicTransferAndUnitaryTraceComparison §§3.6–3.7 and its fixed-source contract; GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; SchemeAndStackFoundations §§1.18–1.21.

**Checks.**

- Changing either chosen basis changes the chart point but not the sheaf in [Q°°/G].
- A quotient with a nonisomorphic frame map lies outside Q°° even when the combined quotient is surjective.
- The kernel has rank l_1−r and degree −d_1l_1−d for the one-line presentation; allowing arbitrary larger V would change this bound.
- In genus two choose a nonspecial effective degree-two line M with h⁰(M)=1. With deg L₁=−5 and deg B=4, F=(L₁⊗M)⊕B has class (2,1), Ext¹(L₁,F)=0 and dim Hom(L₁,F)=1+8=9, but its first evaluation has basepoints. A sufficiently negative L₂, for example degree −24, generates F. Both Hom frames and the combined epimorphism can therefore exist while the first restricted evaluation fails. Such choices exist after a finite field extension; the point must be excluded from the two-line open.

### 7.5 cotangent sequence and Higgs zero level

Prove the following statement. At φ in Q°°, with L=(L_1⊗V_1)⊕(L_2⊗V_2), the dual tangent sequence is 0→Ext¹(F,F)*→Hom(kerφ,F)*→Hom(L,F)*→End(F)*→0. Dualizing the infinitesimal G-action defines μ:T*Q°°→g*, and [μ⁻¹(0)/G] identifies with the canonical Higgs stack on the strongly generated coherent open. (S16, §6.4, equation (6.2), p.340; §6.6, equation (6.3), p.341; S16 line 2527).

One route is as follows. Apply Hom(−,F) to the universal quotient and use strong-generation Ext vanishing. Dualize the finite-dimensional exact sequence and identify the infinitesimal frame action. Use Serre duality to identify the moment-map zero fibre with Higgs fields, naturally in families.

*Needs:* §7.4; §7.2; SchemeAndStackFoundations §§4.1, 4.5, 4.14.

**Checks.**

- Line on genus g; zero covector: Kernel Ext¹(L,L)* has dimension g; zero covector maps to 0. Moment kernel is the Serre-dual Higgs fibre.

### 7.6 Kronecker chart and doubled moment map

Define the following objects and their indicated structure. Let H=Hom(L_2,L_1), h=dim H and E=Hom(V_1⊗H,V_2). The two-line chart has the equivariant composition map j into E, induced by Hom(L_1,F)⊗Hom(L_2,L_1)→Hom(L_2,F). Let P be the closure of its specified locally closed image; the generated/frame locus is a smooth open of P. On T*E choose coordinates x_a:V_1→V_2,y_a:V_2→V_1, a=1,…,h, and moment map μ(x,y)=(∑y_ax_a,−∑x_ay_a). On T*P the cotangent class is taken modulo the conormal relation. μ always lies in ann(k·(Id,Id))⊂g*. (S16, §6.6–6.7, pp.341–344; S16 line 2569).

The interface has the following properties.

- The a-th arrow is the Hom-composition map associated with the a-th basis vector of H.
- μ(g·(x,y))=Ad_g*μ(x,y), and μ(t·y)=tμ(x,y).
- Tr(μ_1)+Tr(μ_2)=0; thus the natural target is (Lie(G/G_m))*.
- Changing a lift by the conormal subspace does not change the moment functional or its induced stability inequalities.

One route is as follows. Realize the Quot chart as the prescribed locally closed Kronecker locus using strong generation of kernels. Pass to the closure and identify its smooth open; do not replace P by all of E. Use the trace pairing to compute the doubled-quiver moment map and show it kills diagonal scalars.

*Needs:* §7.4; §7.5; AlgebraicModuliForArithmeticGeometry §1.3; SchemeAndStackFoundations §4.14.

**Checks.**

- If V_1=V_2=k,h=1, μ(x,y)=(xy,−xy).
- All y_a=0 gives μ=0, regardless of x.
- A functional with total scalar trace nonzero cannot occur as μ; submersivity onto all g* is impossible.

### Examples

For rank one, H=Pic^d×A^g and Λ=Pic^d; its scalar stack has one fewer dimension. On a rank-two field scaling by t multiplies trace by t and determinant by t². In a one-arrow scalar Kronecker model μ(x,y)=(xy,−xy); its total trace is 0 even in characteristic two, where −xy=xy (S16, §§6.2,6.6–6.7, pp.337,341–345; S16 line 2408).

### Dependencies

- AutomorphicSpectralTheory §§6.22c, 6.24.
- SchemeAndStackFoundations §2.18.

- GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13.
- SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts.
- SchemeAndStackFoundations §§1.18–1.21.
- EndoscopicTransferAndUnitaryTraceComparison §3.6.
- EndoscopicTransferAndUnitaryTraceComparison §3.7.
- AlgebraicModuliForArithmeticGeometry §1.3; SchemeAndStackFoundations §4.14.
- AlgebraicModuliForArithmeticGeometry §4.19 and its reductive-character-GIT contract.
- EndoscopicTransferAndUnitaryTraceComparison §§3.6–3.7 and its fixed-source contract.
- SchemeAndStackFoundations §§4.1, 4.5, 4.14.

## Layer 8: central deformation and all-characteristic Higgs counting

### 8.1 framing dimensions and characteristic cutoff

Define the following objects and their indicated structure. For g≥1, r>0, gcd(r,d)=1 put l=2g−2 and B=d/r−(r−1)l. Choose the least integer d_1≥0 with d_1>2g−1−B and (1−g+d_1)r+d>0. Set l_1=(1−g+d_1)r+d. Choose the least integer d_2≥max(d_1+2g,2g+d+(r+1)d_1,0) with d_2−d_1≡1 mod l_1, and set l_2=(1−g+d_2)r+d. Degree −d_i line bundles from the degree-one divisor satisfy the supplied fixed-source good-line conditions. Then l_i>0,gcd(l_1,l_2)=1. Define C(g,r,d)=l_1l_2; p>C is a safe sufficient characteristic bound for the central deformation. (S16, §6.1, p.336; §6.4, Lemma 6.1, pp.338–339; §6.5, pp.340–341; §6.7, p.344; explicit sufficient bound derived here; S16 line 2365).

The interface has the following properties.

- The chosen l_1,l_2 are positive and coprime.
- Every degree −d_i line with these bounds has the strong-generation properties stated in two-line-chart.
- If p>l_1l_2, then for 0≤a_i≤l_i, (a_1,a_2) neither zero nor full, the integer l_2a_1−l_1a_2 is nonzero in k.

One route is as follows. For an indecomposable bundle or semistable canonical Higgs bundle, the adjacent HN gaps are ≤l=2g−2, so μ_min≥μ−(r−1)l≥B. A positive-rank semistable destabilizer has rank s≤r and slope>d/r, hence the same bound B. Every torsion sheaf is strongly generated by any line: its H¹ vanishes and its evaluation is surjective. Use the degree-only generation contract μ_min(F)+d_i>2g−1 for strong generation. For a nonzero kernel K of `L1^{l1}↠F`, let t=rk K=l1−r. Since μ_max(K)≤−d1 and deg K=−l1d1−d, μ_min(K)≥deg K−(t−1)μ_max(K)≥−d−(r+1)d1. If t=0, K is the zero bundle and is strongly generated. The bound on d2 is strictly stronger than the generation threshold for these kernels and for L1. The congruence gives l2≡r mod l1, while l1≡d mod r, so gcd(l1,l2)=1. Every nonzero proper bounded dimension vector has nonzero integer determinant, of absolute value at most l1l2; characteristic p>l1l2 preserves nonvanishing.

For every subspace U⊆V₁, let W be the image of L₁⊗U→F and put r′=rank W. Since F/W is also a quotient of L₁^l₁, deg W≤d+(r−r′)d₁. Its presentation kernel K_U has rank dim U−r′, maximum slope at most −d₁ and minimum slope at least −deg W−(r′+1)d₁≥−d−(r+1)d₁ when nonzero. Thus the same d₂ strongly generates every K_U, not only the kernel of the full presentation. This is the fixed-source subspace version needed for the two-line tight-pair argument in §8.5; it makes no assertion for arbitrarily varying source dimensions or target classes.

*Needs:* EndoscopicTransferAndUnitaryTraceComparison §§3.6–3.7 and its fixed-source contract; SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts; FunctionFieldArithmetic §0.2; §1.9; §7.1.

**Checks.**

- l_2≡r mod l_1 forces gcd(l_1,l_2)=1, including l_1=1.
- The zero and full dimension vectors have determinant zero and must be excluded.
- The theorem uses p>C as sufficient; a smaller p may also work when none of the proper determinants vanish.
- For g=2,r=2,d=1 the one-line kernel has rank 7 and degree −46. The estimate μ_min(K)≥−16 and deg L₂=−24 gives μ_min(K)+24≥8>3=2g−1. Thus the fixed-source generation inequality is strict.

### 8.2 King character and slope determinant

Define the following objects and their indicated structure. For G=GL(V_1)×GL(V_2) use `γ(g_1,g_2)=det(g_1)^{l_2}det(g_2)^{−l_1}` and λ(u_1,u_2)=l_2Tr(u_1)−l_1Tr(u_2). Define δ(a_1,a_2)=l_1a_2−l_2a_1. King semistability on the doubled Kronecker chart means δ(dimW_1,dimW_2)≥0 for every nonzero proper invariant pair W_i; stability means >0. On T*P use the induced representation criterion modulo conormal lifts and the GIT linearization with this exact sign. (S16, §6.7, Lemma 6.3, pp.343–344; S16 line 2663).

The interface has the following properties.

- δ is additive in the dimension vector.
- For a strongly generated sheaf W of rank r′ and degree d′, δ(χ(L_1,W),χ(L_2,W))=(d_2−d_1)(dr′−rd′).
- For positive coprime l_i, no nonzero proper dimension vector has δ=0; hence semistable equals stable in the source’s valid GIT setting.

One route is as follows. Apply the specified character-linearized affine GIT supplier theorem and Hilbert–Mumford criterion. Identify one-parameter subgroups with invariant flags and compute their γ-weight. Fix the sign by comparing with the sheaf-slope determinant in king-slope.

*Needs:* §7.6; §8.1; AlgebraicModuliForArithmeticGeometry §4.19 and its reductive-character-GIT contract.

**Checks.**

- δ(l_1,l_2)=0, and stability excludes the whole representation.
- If d′/r′>d/r and d_2>d_1, then δ for its section vector is negative.
- For (l_1,l_2)=(2,3), δ(1,1)=−1 and δ(1,2)=1.

### 8.3 moment-map criterion for indecomposability

Prove the following statement. Assume p>C(g,r,d). For a framed F∈Q°° of class (r,d), λ lies in the image of the linear cotangent moment map μ_φ iff F is indecomposable. If so μ_φ⁻¹(λ) is a torsor under Ext¹(F,F)* and has `q^{dim Ext¹(F,F)}` rational points over F_q. (S16, §6.5, Lemma 6.2, pp.340–341; S16 line 2527).

One route is as follows. The cotangent exact sequence says λ belongs to the image iff it vanishes on End(F). For indecomposable F, write every endomorphism as scalar plus nilpotent; both have zero λ-trace. For a proper direct summand, its projector has λ-value l_2a_1−l_1a_2, nonzero by the characteristic bound. The fibre is an affine translate of the kernel.

*Needs:* §7.5; §8.2; §1.8; §8.1.

**Checks.**

- Indecomposable residue k with End dimension h; direct-summand projector: Contribution (q−1)q^(h−χ)/((q−1)q^(h−1))=q^(1−χ); a proper projector has λ=−δ≠0 for p>C. Both directions need the characteristic and coprimality conditions.

### 8.4 semistable points lie in the framed smooth open

Prove the following statement. With the framing of §8.1 and p>C(g,r,d), every γ-semistable point in the central-line locus μ⁻¹(kλ)⊂T*P lies in the cotangent chart T*Q°°. The induced G/G_m action is free there. The ambient moment map μ:T*Q°°→(Lie(G/G_m))* is submersive at each such point; consequently its base change `μ⁻¹(kλ)^{γ-ss}→kλ` is smooth. The target of this last map is the central line. (S16, §6.7, Lemma 6.4 and Lemma 6.5, pp.344–345 (correct moment target); S16 line 2699).

One route is as follows. Test the subrepresentation generated by all images of x and the common kernel of x; King inequalities force generation and injectivity of the frame maps. Use the stability criterion to identify automorphisms with scalars. The ambient cotangent derivative is dual to the injective infinitesimal projective-group action, giving submersivity at the specified points. Base change along kλ→(Lie(G/G_m))* gives the smooth map to the line; only this central-line map descends to the quotient.

*Needs:* §8.2; §7.6; §8.1.

**Checks.**

- For a scalar stable stabilizer, the effective stabilizer has dimension 0, so the ambient moment differential is surjective at that point. For O_X⊕L with deg L=1 on a genus-one curve at θ=0, a diagonal projector gives a positive-dimensional effective stabilizer and prevents ambient surjectivity.
- Over 𝔽₃, take two arrows, V₁=k, V₂=k², x₁=e₁, x₂=e₂, y₁=e₁*, y₂=e₂*. The moment value is (2,−I₂)=λ. The ambient moment differential has rank 4, the dimension of the effective dual; after restriction to the central-line inverse image its image has dimension 1. A claim that the restricted map surjects onto the four-dimensional dual fails this example.

### 8.5 Higgs stability versus quiver stability

Prove the following statement. For a canonical Higgs field in the zero moment level, Higgs stability of (F,θ) is equivalent to γ-stability of its framed cotangent point. A Higgs destabilizer strongly generated by both L_i gives a destabilizing invariant pair. Conversely every destabilizing invariant pair is dominated by a tight pair arising from an actual invariant coherent subsheaf; its slope violates stability. (S16, §6.8, Lemmas 6.7–6.8 and proof of Proposition 6.6, pp.346–348; S16 line 2782).

The supporting input is ACK07, arXiv v2, Lemma 5.5 and condition (C:4), pp.23–25; ACK07 line 1088.

One route is as follows. Use natural coherent Serre duality to translate invariant subsheaves to cotangent-invariant pairs. For a sheaf of class (r′,d′), compute δ=(d₂−d₁)(dr′−rd′). Prove the two-line version of the tight-subrepresentation theorem: under §8.1’s fixed-source kernel-generation bounds, every destabilizing invariant pair is subordinate to a tight one Hom(L₁,W), Hom(L₂,W) for a Higgs subsheaf W, with no increase of the normalized King slope. Prove this with evaluation images and kernel generation, adapting ACK07 Lemma 5.5 with its regularity condition (C:4); arbitrary good frames alone are not that lemma.

*Needs:* §8.2; §7.2; §7.4; EndoscopicTransferAndUnitaryTraceComparison §§3.6–3.7 and its fixed-source contract.

**Checks.**

- r=2,d=1,d₂−d₁=19; W of class(1,1) or(1,0): δ=19(1−2)=−19 and 19(1−0)=19, matching destabilizing and allowed slopes. The tight two-line comparison is proved with fixed-source generation.

### 8.6 central-line Higgs deformation

Define the following objects and their indicated structure. Assume p>C(g,r,d). Restrict the equivariant moment map to the central line kλ before taking a quotient. Define `Y=μ⁻¹(kλ)^{γ-ss}//G` with f:Y→A¹ given by μ=tλ. It is a smooth family with geometric quotient by G/G_m, Y_0≃H_(r,d), and every nonzero fibre parametrizes framed indecomposable bundles with a cotangent point mapping to tλ. Cotangent scaling gives t·Y_s≃Y_(ts), hence Y minus Y_0≃Y_1×G_m. A general coadjoint-equivariant map on all T*P does not descend to g* through a G-quotient. (S16, §6.7–6.9, Lemma 6.5, Proposition 6.6 and Proposition 6.9, pp.345–348; S16 line 2742).

The interface has the following properties.

- Y_0 identifies with the stable canonical Higgs coarse space, respecting its rational points.
- The map Y_1×G_m→f⁻¹(G_m), (y,t)↦t·y, is an isomorphism over G_m.
- f is smooth with relative dimension 2D on the stated characteristic range.
- The action has proper limit locus and a projective fixed locus, as established by the GIT-to-affine-quotient map.

One route is as follows. Use affine character GIT on the invariant central-level subscheme, where the moment value is fixed by G. Apply the effective moment-map smoothness and projective-group freeness. Identify Y_0 by king-slope and the stable coarse universal property; trivialize nonzero fibres by cotangent scaling.

*Needs:* §8.4; §8.3; §8.5; §7.3; AlgebraicModuliForArithmeticGeometry §4.19 and its reductive-character-GIT contract.

**Checks.**

- In rank one every fibre has q^g#Pic⁰_X(k) points. Here D=g; for general coprime rank the fibre count proved in §§8.7–8.8 is q^D A_X(r,d).
- A noncentral μ-value is moved by the coadjoint action and does not define a coordinate on the GIT quotient.
- For t≠0 the inverse of the nonzero-fibre trivialization scales the cotangent coordinate by t⁻¹.

### 8.7 Białynicki–Birula deformation comparison

Prove the following statement. First prove the BB–Hesselink theorem for a smooth quasiprojective scheme with a G_m action, projective fixed locus, limits at zero for all geometric points and an equivariant projective map to an affine scheme with positive weights: the attracting strata form a filtration by locally closed affine bundles over the smooth projective fixed components, with ranks equal to the positive tangent dimensions. Construct its opposite-action version on the proper core. Then let f:Y→A¹ be the preceding smooth quasiprojective G_m-equivariant family, with f(t·y)=t f(y), a projective fixed locus, limits as t→0 for all geometric points, and an equivariant projective morphism to an affine scheme with positive weights. The BB–Hesselink strata are affine bundles of ranks n_i over smooth projective fixed components Z_i; the zero-fibre strata have ranks n_i−1 over the same Z_i. Over every finite extension k′/k, #Y(k′)=#k′·#Y_0(k′). Together with the nonzero-fibre trivialization this gives #Y_1(k′)=#Y_0(k′). (S16, §6.9, Proposition 6.9 and proof following it, pp.348–349; S16 line 2886).

The supporting input is HES81, Theorem 5.7, pp.55–89, locator-only.

One route is as follows. Use the GIT projective map to the affine quotient to prove existence and properness of limits. Apply the smooth quasiprojective BB–Hesselink theorem with all strata defined over the base field, grouping Galois orbits of fixed components when necessary. The weight-one smooth base direction lowers each positive rank by one on Y_0. Count affine fibres and combine #Y=#Y_0+(Q−1)#Y_1. The affine-bundle theorem includes its filtration and base-field descent.

*Needs:* §8.6; SchemeAndStackFoundations §§1.18–1.21; AlgebraicModuliForArithmeticGeometry §1.3; SchemeAndStackFoundations §4.14.

**Checks.**

- Y=A¹×A^a over 𝔽_Q: Counts Q^(a+1)=Q·Q^a; Y₀ and Y₁ both Q^a; ranks n=a+1,n−1=a. Include projectivity to the positive affine quotient and limits.

### 8.8 stable Higgs point count

Prove the following statement. For g≥1,r>0,gcd(r,d)=1 and p>C(g,r,d), #H_(r,d)(F_q)=q^D A_X(r,d), D=1+(g−1)r². The same equation holds after every finite extension. Genus zero is handled directly: rank one has both counts 1, and higher-rank stable and absolute-indecomposable loci are empty. (S16, §1.3, Theorem 1.2, p.300; §6.5–6.9, pp.341–349; S16 line 122).

One route is as follows. By Lang and neutrality, identify rational coarse points of Y_1 with the corresponding quotient groupoid and its scalar gerbe factor. For each indecomposable F the contribution is `(q−1)q^{dim Ext¹(F,F)}/#Aut(F)`. Since `#Aut(F)=(q−1)q^{dim End(F)−1}`, its value is `q^{1−χ(F,F)}=q^D`. Apply the BB fibre-count equality.

*Needs:* §8.7; §8.3; §1.8; §0.2; ReductiveGroupsPartII §RG2.3.7, Lang’s theorem; SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts; §1.6.

**Checks.**

- Rank1,g=2; genus0 ranks1 and2: q²P(1)=q^D A(1,d); P¹ gives 1=1, and higher coprime ranks give 0=0. Large-characteristic route retains its sufficient bound.

### 8.9 HN integration for canonical Higgs sheaves

Prove the following statement. For g≥1 use A_K^+ and its relative semistability from §7.1. For r>0,d≥0 define `I_K^+(r,d)=q^{(1−g)r²}mass(all canonical Higgs bundles of class (r,d) with underlying μ_min≥0)`. Define Ω_K^+ by `1+∑_{r>0,d≥0}I_K^+(r,d)T^rz^d=Exp(∑Ω_K^+(r,d)T^rz^d/(q−1))`. MS14 Theorem 1.2 identifies each fixed-slope Exp factor with the `q^{(1−g)r²}`-normalized mass of relatively semistable positive Higgs bundles. With quotient-left/subobject-right multiplication, the HN product places smaller slopes on the left. For usual semistable E,F with μ(E)<μ(F), Ext²(E,F)=Hom(F,E)*=0; the positive-category factorization uses the ordered integration theorem of MS14 §3.1, rather than identifying relative factors with usual ones. No Green bialgebra for the whole Higgs category is inferred. The untruncated DT invariants are defined separately by `1+∑_{r>0,d/r=τ}q^{(1−g)r²}mass(Higgs^ss_(r,d))T^rz^d=Exp(∑_{d/r=τ}Ω_K(r,d)T^rz^d/(q−1))`. (MS14, Theorem 1.2, p.2; §2.1–2.3, pp.3–5; §3.1, pp.6–7; MS14 line 58).

One route is as follows. Use AutomorphicSpectralTheory §§6.22c and 6.24 for the bundle deformation complex, Serre duality and Ext² vanishing for usual semistable factors in the displayed slope order. Apply MS14 Theorem 1.2 and §3.1 to the positive-category HN factorization, with relative semistable factors and the normalization `q^{(1−g)r²}`; keep this separate from any claim that relative semistability is usual semistability. Take the coefficientwise plethystic logarithm and its slope factors to define Ω_K^+. Define Ω_K by the independent usual-semistable same-slope formula; compare them only in the eventual degree range.

*Needs:* §7.1; §3.1; §4.5; AutomorphicSpectralTheory §§6.22c, 6.24; SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- Rank1 positive class at q=2,g=1; two unequal usual slopes: I⁺=2A⁺/(2−1)=2A⁺; Ext²(E,F)=Hom(F,E)*=0 for μ(E)<μ(F). Relative factors are not usual factors outside the degree range.

### 8.10 all-characteristic coprime Higgs count

Prove the following statement. For every finite field and g≥1, Ω_K(r,d)=q A_X(r,d). Hence for r>0,gcd(r,d)=1, #H_(r,d)(F_q)=q^D A_X(r,d) with no characteristic restriction. This strengthens the characteristic-bounded geometric theorem without extending that particular deformation proof to small characteristic. (MS14, Mozgovoy–Schiffmann §4, Theorem 4.3 and Corollaries 4.4–4.5, pp.8–9; MS14 line 481).

One route is as follows. For the positive bundle cutoff, apply the same Krull–Schmidt Euler product to the Serre-dual cotangent fibre: `∑I_K^+=Exp(∑q A_X^{≥0}/(q−1))`. Compare the relative positive-category slope factors using MS14 Theorem 1.2. For d>binom(r,2)(2g−2), MS14 Corollary 3.3 and Theorem 1.2 identify both the positive Higgs invariants and the indecomposable cutoff counts with the untruncated ones. Remove the cutoff by degree-r periodicity; in a coprime class convert the stable stack mass to coarse points by its neutral G_m-gerbe.

*Needs:* §8.9; §2.3; §1.7; §1.9; §1.10; §7.2; §7.3; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- Rank1,g=1 in characteristic2; coprime rank2 in characteristic2: Ω=2A; stable mass #H/(q−1) and q-normalization yield #H=q^D A in both; no p>C assumption. Hall proof supplies every characteristic.

### Examples

For g=2,r=2,d=1, the framing choice has B=−3/2, d₁=5, l₁=9, d₂=24, l₂=47 and C=423. A line subobject of degree one has section dimensions 5 and 24, with King weight 9·24−47·5=−19, agreeing with its excessive slope. The geometric argument uses p>423, while the Hall argument gives the coprime count also in characteristics two and three (S16, §§6.4–6.9, pp.338–349; MS14, Theorem 4.3 and Corollaries 4.4–4.5, pp.8–9).

### Dependencies

- AutomorphicSpectralTheory §§6.22c, 6.24.

- EndoscopicTransferAndUnitaryTraceComparison §§3.6–3.7 and its fixed-source contract.
- SchemeAndStackFoundations §§2.20, 3.3, 3.6–3.7 and its coherent-duality and generation contracts.
- FunctionFieldArithmetic §0.2.
- §1.9.
- §7.1.
- §7.6.
- AlgebraicModuliForArithmeticGeometry §4.19 and its reductive-character-GIT contract.
- §7.5.
- §1.8.
- §7.2.
- §7.4.
- §7.3.
- SchemeAndStackFoundations §§1.18–1.21.
- AlgebraicModuliForArithmeticGeometry §1.3; SchemeAndStackFoundations §4.14.
- §0.2.
- ReductiveGroupsPartII §RG2.3.7, Lang’s theorem.
- §1.6.
- §3.1.
- §4.5.
- QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.
- §2.3.
- §1.7.
- §1.10.

## Layer 9: pure cohomology, positivity and the nilpotent cone

### 9.1 pure Higgs cohomology and BB shifts

Prove the following statement. For g≥1,r>0,gcd(r,d)=1 and ℓ≠p, the geometric compactly supported cohomology H_c^n(H,Q_ℓ) is pure of weight n. For the scaling fixed components Z_i, put m_i=dim Z_i and `b_i=dim T_{Z_i}^{<0}`. The weight-one symplectic form gives m_i+b_i=D and `dim T^{>0}=D`. In the Grothendieck group of continuous Frobenius representations, `[H_c^n(H)]=∑_i[H^{n−2D}(Z_i)(−D)]` and `[H^n(Λ)]=∑_i[H^{n−2b_i}(Z_i)(−b_i)]`. These are identities of semisimplified representations; a canonical splitting is not claimed. (S16, §6.10–6.11, pp.349–352, equations (6.11)–(6.13), with doubled cohomological shifts; S16 line 2926).

One route is as follows. The proper weighted Hitchin map gives limits and projective smooth fixed components. Use the symplectic form of scaling weight one to pair tangent weights a and 1−a and obtain the dimension identities. Apply the BB filtrations and the compact cohomology of affine bundles. Purity of the projective bases forces the spectral sequences to degenerate by weights; use the opposite action for Λ.

*Needs:* §7.3; §8.7; DeligneWeightsAndPurity §§0.10, 0.12, 0.16–0.18, 1.7; EtaleDualityAndPerverseSheaves §§0.4, 0.6–0.7; CompactSupport Layers 6–8; EllAdicRealization Layers 7–9; TraceFormula Layers 11–12; DeligneWeightsAndPurity §§7.15, 8.8–8.11; EtaleDualityAndPerverseSheaves, affine-bundle contract.

**Checks.**

- Rank1,g=2; affine fibre A¹: m=2,b=0,D=2; H_c^n=H^(n−4)(Pic)(−2), cone H^n(Pic); A¹ contributes only degree2,twist−1. Double the affine rank in cohomological degree.

### 9.2 trace reconstruction and coprime positivity

Prove the following statement. In coprime classes, the universal count `A_{g,r,d}` extends regularly to the paired affine cone and `A_{g,r,d}(−α_1,…,−α_{2g})` is represented by a Weyl-invariant polynomial with nonnegative integer coefficients in the α_j. Its total degree is 2D and its diagonal specialization has leading coefficient 1. The Higgs Frobenius eigenvalues are products `q^D∏α_j^{e_j}` with total weight n in H_c^n, and their multiplicities are recovered from the signed count polynomial; equal specialized monomials are grouped before comparing multiplicities. (S16, Corollary 1.5, pp.301–302; §6.10, equations (6.9)–(6.10), pp.349–350; §6.11, p.352; S16 line 162).

One route is as follows. Clear the q^m−1 denominators by a monic polynomial in q. Use equality of all power sums from finite extensions to identify signed eigenvalue multisets. Separate weights by purity and cancel the highest-weight terms inductively; use universal Weil density to identify the resulting invariant polynomial. Connectedness and smooth dimension 2D fix the top coefficient. Prove independence of the polynomial representative on the paired affine cone and perform the denominator cancellation universally.

*Needs:* §9.1; §8.10; §4.9; §0.1; §6.5; DeligneWeightsAndPurity §§0.10, 0.12, 0.16–0.18, 1.7.

**Checks.**

- Rank1,g=1, q=α₁α₂: A(−α)=(1+α₁)(1+α₂)=1+α₁+α₂+q; diagonal leading term t² has coefficient1. Group equal monomials before traces.

### 9.3 compact Poincaré polynomial over ℂ

Prove the following statement. For a smooth connected projective complex curve of genus g≥1 and gcd(r,d)=1, define the signed polynomial P_c(H;t)=∑_n(−1)^n dim H_c^n(H(C),Q)t^n. Then `P_c(H;t)=t^{2D}A_{g,r,d}(t,…,t)`, with q=t² in the paired relation. The unsigned polynomial is `t^{2D}A_{g,r,d}(−t,…,−t)`. The top compact degree is 4D. (S16, Corollary 1.3, p.300; §6.10, pp.350–351; S16 line 122).

One route is as follows. Spread a curve and stable Higgs moduli over a finite-type integral Z-algebra with good reduction. Use constructibility of the six-operation compact cohomology complex to choose a stratum on which its ranks are constant. Compare geometric generic and closed fibres, then apply étale–singular comparison and genus-wise local topological constancy. Prove genus-wise topological local constancy for the complex coprime Higgs spaces by their nonabelian-Hodge identification with the fixed genus-g twisted character variety; retain the coprime degree and orientation data. Use the supplied compact Artin comparison and the constant-rank spread-out stratum to compare cohomology dimensions. This constructs the geometric transport used here; the finite-field trace formula alone does not identify unrelated fibres.

*Needs:* §9.2; §9.1; CompactSupport Layers 6–8; EllAdicRealization Layers 7–9; TraceFormula Layers 11–12; ComplexComparisonPartII §§C6.3–C6.6; CohomologicalPointCounting, The combined endpoint.

**Checks.**

- Rank1,g=1,2: Signed polynomials t²(1−t)² and t⁴(1−t)⁴; unsigned t²(1+t)² and t⁴(1+t)⁴; top degrees4,8. Keep signs and q=t².

### 9.4 nilpotent-cone trace and components

Prove the following statement. For g≥1 and gcd(r,d)=1, Λ is pure and `#Λ(F_q)=q^D A_{g,r,d}(α_1⁻¹,…,α_{2g}⁻¹)`, where inversion also sends q to q⁻¹. Moreover `dim H^{2D}(Λ_kbar,Q_ℓ)=dim H^{2D}(H_kbar,Q_ℓ)=A_{g,r,d}(0)`, the number of geometric irreducible components of Λ. The same component number holds over C. The reciprocal trace formula holds after every finite extension. (S16, Corollary 1.4, pp.301–302 (corrected exponent); §6.11, pp.351–352; S16 line 162).

One route is as follows. Combine the two BB formulas using m_i+b_i=D and projective Poincaré duality on each Z_i. Take traces to obtain the reciprocal formula with q^D. Use purity and the degree shifts by twice the affine ranks to identify top cohomology with the origin coefficient; use top cohomology of a proper equidimensional scheme to count geometric components.

*Needs:* §9.1; §9.2; §9.3; EtaleDualityAndPerverseSheaves §§0.4, 0.6–0.7; CompactSupport Layers 6–8; EllAdicRealization Layers 7–9; TraceFormula Layers 11–12.

**Checks.**

- Rank1; g=2; two Frobenius-exchanged components: q^g∏(1−α_j⁻¹)=P(1); top degree2g=4 has dimension1; exchanged components have dimension2,trace0. Use prefactor q^D and degree 2D.

### Examples

In rank one and genus two, the signed compact polynomial is t⁴(1−t)⁴ and the unsigned polynomial t⁴(1+t)⁴. The nilpotent cone is Pic^d, with one component and top degree four. The reciprocal identity is q²∏(1−αⱼ⁻¹)=P(1); using q⁴ would introduce a spurious factor q² (S16, Corollaries 1.3–1.5 and §6.11, pp.300–302,351–352; S16 line 150 and S16 line 3045).

### Dependencies

- §7.3.
- §8.7.
- DeligneWeightsAndPurity §§0.10, 0.12, 0.16–0.18, 1.7.
- EtaleDualityAndPerverseSheaves §§0.4, 0.6–0.7.
- CompactSupport Layers 6–8; EllAdicRealization Layers 7–9; TraceFormula Layers 11–12.
- DeligneWeightsAndPurity §§7.15, 8.8–8.11.
- EtaleDualityAndPerverseSheaves, affine-bundle contract.
- §8.10.
- §4.9.
- §0.1.
- §6.5.
- ComplexComparisonPartII §§C6.3–C6.6; CohomologicalPointCounting, The combined endpoint.

## Layer 10: Mellit integrality and degree independence

### 10.1 Mellit partition generating function

Define the following objects and their indicated structure. For g≥1 define `Ω_g(T;z,q,α)=∑_λ T^{|λ|}∏_{s∈λ}{∏_{i=1}^g[(z^{a(s)+1}−α_i q^{l(s)})(z^{a(s)}−α_i⁻¹q^{l(s)+1})]}/{[(z^{a(s)+1}−q^{l(s)})(z^{a(s)}−q^{l(s)+1})]}`. Put H_g=−(1−q)(1−z)Log Ω_g and `H_{g,r}=[T^r]H_g`. Use one coordinate α_i of each reciprocal pair; ψ_m acts on T,z,q,α_i simultaneously by m-th powers. (M20, Mellit 2020 §1, Theorem 1.1, pp.302–303).

The interface has the following properties.

- The empty coefficient of Ω_g is 1 and H_g has zero constant coefficient.
- `H_{g,1}=∏_{i=1}^g(z−α_i)(1−q/α_i)`; at z=1 this equals P_X(1).
- Replacing α_i by q/α_i for any i preserves the recovered z=1 counting function.
- Finite-extension specialization commutes with the Adams operations used in Log.

One route is as follows. Form the partition products over the existing finite Young diagrams. Work coefficientwise in T over the generic rational function field, then apply the imported plethystic logarithm. Check reciprocal-coordinate and normalization compatibility with the S16 kernel.

*Needs:* §0.1; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts; `YoungDiagram.armLength`; `YoungDiagram.legLength`.

**Checks.**

- The one-box term gives `H_{g,1}(q,1,α)=P_X(1)`.
- Taking T=0 gives Ω_g=1 and H_g=0.
- For genus one the z=1 count in every positive rank is #Pic⁰(k).

### 10.2 Schiffmann kernel as a regular deformation

Prove the following statement. Write `N_λ(u)=∏_{s∈λ}(z^{a(s)}−u q^{l(s)+1})(z^{a(s)+1}−u⁻¹q^{l(s)})`. The S16 partition coefficient is a product of ∏_i N_λ(α_i⁻¹)/N_λ(1) and a symmetric rational factor f_λ obtained by evaluation of Mellit’s shuffle function f_n at the n monomials `z^{λ_i}q^{−n+i}`. In the shuffle factor f_λ, replace each α_i⁻¹ by uα_i⁻¹; the resulting factor is a formal u-series with constant term 1. Its coefficients come from symmetric Laurent function sequences satisfying `f_{n+1}(1,x_1,…,x_n)=f_n(qx_1,…,qx_n)`. The numerator-clearing product of Proposition 4.2 gives a uniform finite denominator bound for each partition coefficient. (M20, Mellit 2020 §3, Proposition 3.1, pp.310–312; §4, Proposition 4.2 and Corollaries 4.3,4.5, pp.312–315).

One route is as follows. Rewrite the S16 J and H factors using the explicit permutation shuffle sum in equation (5); verify the factors rather than identify similarly named kernels. Prove the pole cancellation and padding identity from §4. Use the degree bound of the symmetric shuffle numerator to obtain f_λ(0)=1 and bounded denominators.

*Needs:* §5.9; §10.1; §5.10; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- Empty partition; regular sequence f=1: f_empty=1; deformation constant term1; `f_{n+1}(1,x)=1=f_n(qx)`. Only the shuffle factor is deformed.

### 10.3 laurent integrality of the Mellit coefficients

Prove the following statement. For every g≥1,r>0, `H_{g,r}` belongs to Z[q±1,z±1,α_1±1,…,α_g±1]. In particular it is regular at z=1. Separately, let `H^Sch_{g,r}=(1−z)A_{g,r}(z)`, where `A_{g,r}(z)` is the Schiffmann logarithmic count series of §6.3. Mellit Theorem 5.2(i), with q_M=z and t_M=q, gives `H^Sch_{g,r}∈Q(q)[z±1,α_1±1,…,α_g±1]`. Theorem 5.2(ii) gives `H^Sch_{g,r}(q,1,α)=H_{g,r}(q,1,α)`. Thus `A_{g,r}(z)` has no poles at nonzero finite z other than possibly z=1. No integral-coefficient assertion for H^Sch before specialization is inferred. (M20, §5, Theorem 5.2(i)–(ii), pp.319–321; M18, §7, Theorem 7.1 and Corollary 7.2, pp.29–31; M18 line 1287).

One route is as follows. Apply HLV-kernel admissibility to remove denominators from H_g. Apply the regular-sequence deformation and finite denominator bounds to obtain the global Laurent conclusion of Mellit Theorem 5.2(i); use part (ii) for equality at z=1. Keep q_M=z and t_M=q throughout. Upgrade rational coefficients to integral coefficients through the integral modified-Macdonald expansion. Use the integral HLV supplier theorem.

*Needs:* supplier contract for QSeriesPartitionsAndMockModularForms (gap:macdonald-admissibility); §10.2; §10.1; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- Rank1; function 1/(1+z) as negative control: H₁ is Laurent polynomial and regular at1; 1/(1+z) is regular at1 but has pole−1. Local regularity alone does not prove degree independence.

### 10.4 degree-independent universal bundle count

Prove the following statement. For every g≥1,r>0,d∈Z, `A_{g,r,d}=H_{g,r}(q,1,α)∈R_g`. Thus A_X(r,d) is independent of d, and the universal count lies in the unlocalized invariant Laurent ring, with integral Laurent coefficients. Genus zero has the separate rank-one/empty classification. Together with the coprime result, degree independence transfers positivity and origin regularity to all degrees. It supplies no analogous theorem for parabolic or fixed-HN counts. (M20, Mellit 2020 §1, Theorem 1.1, pp.302–303; §5, Theorem 5.2, pp.319–321).

One route is as follows. Compare the S16 logarithmic numerator and Mellit H using the regular deformation. Global Laurentness of H^Sch=(1−z)A removes every nonzero finite pole of A except possibly 1. The Layer 6 Taylor expansion at 0 removes negative powers there. Its rational form is therefore a polynomial plus H^Sch(1)/(1−z); the polynomial changes only finitely many truncated coefficients. Fourier residue extraction gives the same eventual count H(1) in every degree class. Use universal density to promote equality at every curve to equality in R_g.

*Needs:* §10.3; §6.3; §6.2; §4.9; §1.10; LefschetzPencilsAndVanishingCycles §5.11 and its universal-curve density contract; DeligneWeightsAndPurity §10.5.

**Checks.**

- Rank1; genus1 every rank; (2+3z)/(1−z²) control: Counts P(1),P(1); control has eventual values2,3 and pole−1, excluded by global Laurentness. Use global pole removal.

### 10.5 positivity and constants in every degree

Prove the following statement. For g≥1 and every r>0,d∈Z, `A_{g,r,d}=A_{g,r,1}`. Consequently it has a nonnegative invariant representative in the variables −α_j, is regular at the affine-cone origin, has total degree 2D with monic diagonal specialization, and its origin value is independent of d. This comparison does not identify a noncoprime stable Higgs moduli space with a coprime one. (M20, Mellit 2020 Theorem 1.1, pp.302–303, combined with S16 Corollary 1.5, pp.301–302).

One route is as follows. Apply degree independence with d′=1, which is coprime to every positive r. Transfer each universal polynomial and local-ring property from that coprime class.

*Needs:* §10.4; §9.2; §6.5.

**Checks.**

- r=2,d=0 and1; genus2 origin: gcd(2,1)=1; universal counts equal and both origin2; no equality of noncoprime and coprime stable spaces asserted. Transfer the universal function, not moduli.

### Examples

The one-box Mellit coefficient is ∏ᵢ(z−aᵢ)(1−q/aᵢ); its value at z=1 is P(1). A rational function may be regular at 1 and still have another root-of-unity pole: 1/(1+z) has a pole at −1. The global Laurent numerator theorem, rather than local regularity alone, removes the degree dependence (M20, Theorems 1.1 and 5.2, pp.302–303,319–321, locator-only).

### Dependencies

- §0.1.
- QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.
- `YoungDiagram.armLength`.
- `YoungDiagram.legLength`.
- §5.9.
- §5.10.
- supplier contract for QSeriesPartitionsAndMockModularForms (gap:macdonald-admissibility).
- §6.3.
- §6.2.
- §4.9.
- §1.10.
- LefschetzPencilsAndVanishingCycles §5.11 and its universal-curve density contract; DeligneWeightsAndPurity §10.5.
- §9.2.
- §6.5.

## Layer 11: parabolic refinements and constructible Hall theory

### 11.1 quasi-parabolic bundles and absolute counts

Define the following objects and their indicated structure. Fix distinct k-rational marked points x_i and integers p_i≥1. A quasi-parabolic bundle is a bundle V with a possibly non-strict flag `0⊆F_1^(i)⊆…⊆F_{p_i}^(i)=V|_{x_i}`. Its type is (r,d,d^(i)_j), with `0≤d^(i)_1≤…≤d^(i)_{p_i}=r`. Isomorphisms preserve every flag. Absolute indecomposability is tested in this additive category after k̄ extension; its count is `A_{X,p,α}`. No weights or parabolic stability condition are part of this definition. (S16, §7.1, pp.352–353; S16 line 3077).

The interface has the following properties.

- Forget flags to a bundle of the same rank and degree.
- Scalar extension preserves the type at the specified rational marked points and commutes with sums.
- If all p_i=1, the category and its absolute count identify with ordinary bundles.
- Tensoring by a degree-one line bundle preserves flags and shifts d by r.

One route is as follows. Use the supplier bundle and fibre functors and relative flag schemes. Define direct sums componentwise and scalar extension on flags. Apply boundedness for indecomposable parabolic objects to obtain a finite class set; prove this by parabolic HN boundedness.

*Needs:* GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; SchemeAndStackFoundations §§1.18–1.21; §0.2.

**Checks.**

- N=0 recovers A_X(r,d).
- For rank one every admissible flag is unique and the count is #Pic⁰(k).
- A closed point of residue degree e>1 is outside this theorem and needs extra arithmetic parameters.

### 11.2 universal parabolic counting functions

Prove the following statement. For a fixed genus, flag lengths and admissible class α, there is a unique `A_{g,p,α}∈R_g` specializing to `A_{X,p,α}` for every curve with distinct rational marked points of that type. The proof includes a parabolic spherical Hall and shuffle calculation, boundedness of absolute indecomposables, density of marked curves and a separate denominator-removal theorem for R_g. (S16, §7.1–7.2, Theorem 7.1, pp.352–353; S16 line 3077).

The supporting input is LIN15, arXiv v2, §1.2–§1.3 and Theorems 3.1, 3.16; LIN15 line 232 and LIN15 line 327.

For parabolic bundles of ordinary classes (r,d),(s,e) and flag jumps mᵢⱼ,nᵢⱼ at the same rational marks, the Euler form is `E_par=(1−g)rs+re−sd−∑ᵢ∑_{j<k}mᵢⱼnᵢₖ`; extend it by additivity to coherent numerical classes. At one two-step mark on P¹, equal-degree lines jumping in steps 1 and 2 have E_par=0 in that order and 1 in the reverse order, matching the zero and one-dimensional spaces of flag-preserving maps (LIN15, §1.6, Corollary 1.5, equation (1.11); LIN15 line 517).

One route is as follows. Construct the parabolic coherent Hall algebra with local flag generators, the displayed Euler form and hereditary correspondence. Prove its generic form, HN membership and shuffle specialization, then repeat the nilpotent groupoid calculation. Supply a separate denominator-removal argument for R_g and a density statement for marked curves. These are explicit obligations, not deductions from the ordinary Mellit theorem.

*Needs:* §11.1; §4.8; §4.9; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts; GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13.

**Checks.**

- No marks; trivial flags; rank1: Both first specializations equal A_X; rank1 equals P(1); permitted denominators in R_g have no q^m−1 pole. Separate parabolic denominator removal.

### 11.3 slope-cut and fixed-HN absolute counts

Define the following objects and their indicated structure. Use the slope-cut counts of §0.2 for rational ν. For a decreasing HN type β=(α_1,…,α_t) of total (r,d), define A_X,β by requiring the exact HN type β. The objects counted are absolutely indecomposable bundles, although their HN graded objects can be decomposable. A slope cut is a finite union of HN strata in each fixed bounded rank-degree range. (S16, §8.1–8.2, Corollary 8.1 and Conjecture 8.2, pp.353–354; S16 line 3116).

The interface has the following properties.

- An absolute count on a bounded union of distinct HN types is the sum of the type counts.
- Dualization identifies ≥ν counts at (r,d) with ≤−ν counts at (r,−d).
- Degree-one tensoring shifts each HN slope by one and the total degree by r.

One route is as follows. Use the imported HN type and its scalar-extension compatibility. Intersect each type or slope condition with the absolute-indecomposable class set. Use the HN spread bound to make the relevant unions finite.

*Needs:* §0.2; GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13.

**Checks.**

- If ν=d/r the ≥ν count equals the count of absolute indecomposable semistable bundles.
- If ν>d/r the ≥ν count is zero.
- A nontrivial HN filtration is not a direct-sum decomposition; an indecomposable may have several HN factors.

### 11.4 universal slope-cut counting functions

Prove the following statement. For every rational ν and class (r,d) with r>0, there are unique elements `A_{g,r,d}^{≥ν},A_{g,r,d}^{≤ν}∈K_g` specializing to the two slope-cut absolute counts. Degree-one twist and duality hold universally. This theorem does not assert membership in R_g or a universal element for each exact HN type. (S16, §8.1, Corollary 8.1, p.353; §4.5–4.6, pp.319–321; S16 line 3116).

One route is as follows. Use HN characteristic functions in the generic spherical Hall algebra for the specified cutoff. Apply truncated nilpotent counting and coefficientwise plethystic logarithms. Identify the specialization and use universal density for uniqueness.

*Needs:* §11.3; §4.7; §4.8; §2.3; §4.9; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- Rank1,d=−1,0 at ν=0; dual ν=0: Lower-cut values0,P(1); dual upper-cut values at d=1,0 are0,P(1). Only K_g is asserted.

### 11.5 Euler-characteristic spherical Hall Lie algebra

Define the following objects and their indicated structure. Over an algebraically closed characteristic-zero field, construct the constructible Euler-characteristic Hall convolution for coherent sheaves, using compact Euler integration on finite-type subsheaf correspondences and comparison with ℂ by spread-out. The direct-sum pullback first takes values in constructible functions on the product moduli problem; an algebraic tensor target is asserted only on the spherical subalgebra. Prove that the graded subalgebra generated by torsion constants and all line-bundle constants has a cocommutative Hopf structure. Define its primitive subspace h_X^sph with the commutator bracket. Establish every finite-coefficient support condition before forming a coproduct or antipode. A finite-field evaluation at α_j=1 does not define this algebra. (S16, §8.3, pp.354–355; S16 line 3188).

The supporting input is BTL12, arXiv v5, §§4.2–4.4, pp.17–19; BTL12 line 766 and BTL12 line 850.

The interface has the following properties.

- The zero-sheaf delta function is the convolution unit and the degree-zero primitive part is zero.
- If Δx=x⊗1+1⊗x and similarly for y, then [x,y] is primitive.
- A curve isomorphism induces a grading-preserving Hopf equivalence and a primitive Lie equivalence.

One route is as follows. Construct Euler pushforward on the relevant finite-type constructible correspondences and prove independence of presentations. Prove Hall convolution and direct-sum compatibility for coherent sheaves; the finite-dimensional-module argument of BTL12 §4 is a model whose finite-length hypotheses are replaced by bounded coherent correspondences. Prove the spherical subalgebra is closed under the algebraic coproduct, construct its antipode on the stated grading, and take primitives.

*Needs:* GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13; SchemeAndStackFoundations §§1.18–1.21; §3.1.

**Checks.**

- Over characteristic zero a scalar multiple of the Hopf unit is primitive only when it is zero.
- The mixed x⊗y and y⊗x terms cancel in Δ[x,y].
- The K_g function (q−1)⁻¹ has a pole at the proposed α=1 limit, so naive numerical evaluation does not define the Euler Hall product.
- For an unrestricted constructible function on a product moduli space, the direct-sum pullback need not be a finite sum of separated-variable functions. The coproduct is first defined on the product function space; the spherical closure theorem supplies the algebraic tensor target.

### 11.6 precise remaining Hall and HN conjectures

Define the following objects and their indicated structure. Formulate the following conjectures: (i) for every exact HN type β its absolute count is a specialization of some `A_{g,β}∈R_g`; (ii) each difference `A^{≥i}_{g,r,d}−A^{≥i+1}_{g,r,d}`, i≥0, has a nonnegative invariant representative in the variables −α_j; (iii) h_X^sph is independent of X of genus g, has finite-dimensional graded pieces, and `dim h^sph_(r,d)=A_{g,r,d}(0)`; (iv) for `H_sph^{≥0}`, the subalgebra of spherical functions supported on the nonnegative HN category, `∑_β dim H_sph,β^{≥0}z^β=Exp(∑_β A_{g,β}^{≥0}(0)z^β)`. Any origin evaluation in (ii)–(iv) includes the regularity assertion needed to define it. The commuting-variety K-theory/cohomology degeneration mentioned in S16 is a separate proposed geometric mechanism, not a proved consequence. (S16, §8.1 remarks and §8.2–8.3, Conjectures 8.2–8.4, pp.353–355; S16 line 3116).

The interface has the following properties.

- The fixed-type proposition includes equality for every finite field and curve, not just a chosen X.
- The Hall-Lie statement entails origin regularity and finite-dimensionality before equating two integers.
- The Hilbert-series statement is equivalent to equality of every finite bidegree coefficient after the specified Exp expansion.

One route is as follows. Form each proposition using the imported graded coefficient and algebra notions. Keep the underlying universal count, denominator-removal and finite-dimensionality assertions separate. Keep these conjectures separate from the preceding theorems; no theorem uses them as hypotheses.

*Needs:* §11.3; §11.4; §11.5; §6.5; §4.6; QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.

**Checks.**

- Degree independence of the untruncated A does not imply fixed-HN polynomiality.
- In coprime rank one the proposed root multiplicity is 1, the proved nilpotent-cone component count.
- A slope-cut coefficient with an uncancelled q⁻¹ has no origin value; it cannot be inserted in the Hilbert identity.

### Examples

No marked points, or only flags of length one, recovers ordinary bundles. Every admissible rank-one flag is unique, so its absolute count is P(1). For the Euler Hall coproduct, a scalar c times the unit is primitive only if c=2c, hence c=0; for primitive x,y the mixed tensor terms cancel in Δ[x,y] (S16, §§7–8, pp.352–355; S16 line 3096 and S16 line 3188).

### Dependencies

- GlobalShtukasAndFunctionFieldLanglands §§GS.0.1, GS.0.5–GS.0.6, GS.0.13.
- SchemeAndStackFoundations §§1.18–1.21.
- §0.2.
- §4.8.
- §4.9.
- QSeriesPartitionsAndMockModularForms §§2.4, 3.5 and its complete-Adams and Macdonald contracts.
- §4.7.
- §2.3.
- §3.1.
- §6.5.
- §4.6.

## Downstream consumers

TopologicalMirrorSymmetryForHitchinSystems consumes the stable canonical GL_r Higgs geometry and its purity theorem, adding fixed-determinant and rigidified relative moduli in its own direction. YuCountingPartII consumes the same reciprocal Weil coordinates, full character-ring specialization, quasi-parabolic counts, slope-cut invariants and the distinction between a stack mass and a coarse point count. Function-field counting applications use the universal bundle invariant, Higgs point count and nilpotent-cone component number. They receive the all-characteristic formulas of §§8.10 and 10.4; the bounded-characteristic deformation is a proof ingredient. The conjectures in §11.6 are not supplier theorems for any consumer.

## Worked examples

For rank one, A_X(1,d)=#Pic⁰_X(k)=P_X(1), even if X(k) is empty. Degree shifting uses an integer divisor of degree one and the Picard torsor. Canonical Higgs fields form H⁰(X,Ω), so H_(1,d)=Pic^d×A^g and #H=q^gP_X(1). The signed compact Poincaré polynomial is t^(2g)(1−t)^(2g), its unsigned variant t^(2g)(1+t)^(2g). The nilpotent cone Pic^d has one geometric component, top degree 2g, and reciprocal trace q^g∏ⱼ(1−αⱼ⁻¹)=P_X(1). Dividing the Higgs point count by q^g gives the polynomial P_X(1), whose regular origin value is 1; the reciprocal trace gives the same polynomial. Dividing the signed compact polynomial by t^(2g) leaves constant coefficient 1 (S16, Theorem 1.2, Corollaries 1.3–1.5 and §6.11; S16 line 136 and S16 line 3045).

On P¹, every indecomposable bundle is a line. Hence the absolute counts are 1 in rank one and 0 in higher rank; a coprime stable Higgs locus is a point in rank one and empty in higher rank. In genus one, the degree-independent count is P_X(1) in every positive rank. The rank-two formula with the empty eigenvalue tuple gives 0 at q=2, while with (−1,−2), q=2, it gives 6=P_X(1). These are two different genera with the same formal q, not two evaluations of a fixed-genus count (S16, pp.305–306 and Appendix C; S16 line 388; M20, Theorem 1.1, pp.302–303, locator-only).

For the explicit framing with g=2,r=2,d=1, the slope bound B is −3/2. The least allowed d₁ is 5 and l₁=9. The lower bound for d₂ is 20; the required residue d₂≡6 mod 9 gives d₂=24 and l₂=47. Their gcd is 1 and C=423. For a degree-one line subobject its section dimensions are 5 and 24 and δ=−19; the zero and full frame vectors have weight 0 and are excluded from stability tests. The all-characteristic count still applies when p=2 or 3 (S16, Lemmas 6.1–6.3, pp.338–344; MS14, Corollary 4.5, p.9).

For the origin formula in genus two, the rank-one logarithmic coefficient is z/(1−z), whose differential residue at 1 is −1. Its negative gives 1. The next three constants are 2,6,22; in genus three the rank-three and rank-four values are 15 and 95. These values agree with the constant genus polynomials and the component formula, and the rank-one witness fixes the sign used at every rank (S16, Corollary 1.9 and examples, pp.305–306, with the differential-residue normalization of §0.3; S16 line 428 and S16 line 453).

## References

- **S16.** Olivier Schiffmann, [Indecomposable vector bundles and stable Higgs bundles over smooth projective curves](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p06-p.pdf), 2016. Published version, §§1–8 and Appendices A–C, pp.297–362; PDF page 1 is printed p.297.
- **M20.** Anton Mellit, [Poincaré polynomials of moduli spaces of Higgs bundles and character varieties (no punctures)](https://link.springer.com/content/pdf/10.1007/s00222-020-00950-1.pdf), 2020. Published Theorems 1.1 and 5.2; Proposition 3.1; §§4–5, pp.302–303,310–321. Citation by locator only; the text is uncertified.
- **MS14.** Sergey Mozgovoy and Olivier Schiffmann, [Counting Higgs bundles](https://arxiv.org/abs/1411.2101v1), 2014. arXiv:1411.2101v1, Theorem 1.2, §§2–4, pp.2–9.
- **HN10.** Olivier Schiffmann, [Spherical Hall algebras of curves and Harder–Narasimhan stratas](https://arxiv.org/abs/1002.0987v1), 2010. arXiv:1002.0987v1, §§1.2–1.3, Theorem 3.1 and Corollary 3.5, pp.2–3,5–8.
- **SV12.** Olivier Schiffmann and Eric Vasserot, [Hall algebras of curves, commuting varieties and Langlands duality](https://arxiv.org/abs/1009.0678v1), 2010. arXiv:1009.0678v1, §1.11, pp.13–14.
- **M18.** Anton Mellit, [Integrality of Hausel–Letellier–Rodriguez-Villegas kernels](https://arxiv.org/abs/1605.01299v2), 2018. arXiv:1605.01299v2, §§5–7, especially Theorem 7.1, p.30, and Corollary 7.2, p.31.
- **WII.** Pierre Deligne, [La conjecture de Weil : II](https://www.numdam.org/item/PMIHES_1980__52__137_0.pdf), 1980. Weil II (3.5.1)–(3.5.3), pp.210–211.
- **ACK07.** Luis Álvarez-Cónsul, Alastair King, [A functorial construction of moduli of sheaves](https://arxiv.org/abs/math/0602032v2), 2006. arXiv:math/0602032v2, condition (C:4), Lemmas 5.4–5.5, pp.23–25.
- **LIN15.** Jyun-Ao Lin, [Spherical Hall algebras of a weighted projective curve](https://arxiv.org/abs/1410.0896v2), 2014. arXiv:1410.0896v2, §§1.2–1.3, Corollary 1.5 in §1.6, Theorems 3.1 and 3.16.
- **BTL12.** Tom Bridgeland, Valerio Toledano Laredo, [Stability conditions and Stokes factors](https://arxiv.org/abs/0801.3974v5), 2012. arXiv:0801.3974v5, §§4.2–4.4, pp.17–19; its module-category hypotheses are retained when adapting the argument.
- **FH58.** N. J. Fine, I. N. Herstein, [The probability that a matrix be nilpotent](https://doi.org/10.1215/ijm/1255454112), 1958. Theorem 1, p.499, proof pp.499–503. The same count is stated in S16, Corollary 2.5, p.309. Citation by locator only; the text is uncertified.
- **SPR66.** T. A. Springer, [Nonabelian H² in Galois cohomology](https://www-fourier.univ-grenoble-alpes.fr/~panchish/ETE%20LAMA%202018-AP/Borel_Algebraic%20Groups%20and%20Discontinuous%20Subgroups.pdf), 1966. Theorem 3.5, p.179; SPR66 line 6739.
- **HES81.** W. H. Hesselink, [Concentration under actions of algebraic groups](https://doi.org/10.1007/BFb0090380), 1981. Theorem 5.7, pp.55–89. Citation by locator only; the text is uncertified.
