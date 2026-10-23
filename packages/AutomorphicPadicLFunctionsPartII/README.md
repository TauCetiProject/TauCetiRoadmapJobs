# Roadmap: automorphic p-adic L-functions, part II — critical Hecke values

**Summary.** This roadmap extends the ray-class distributions and CM-field Katz interpolation of AutomorphicPadicLFunctions to critical algebraic Hecke values over a totally imaginary field containing a CM subfield. It builds integral equivariant coherent Eisenstein–Kronecker classes from completed Poincaré bundles, identifies them through meromorphic Kronecker series and oriented unit-torus integration, and constructs ordinary theta measures. Its end theorems are regularized critical-value integrality in both conductor cases, generalized Shimura algebraicity, the weak Deligne period relation, and bounded ordinary ray-class interpolation with all local factors. The three compatibility results needed for these conclusions—residue-to-moment signs, integral unit-index descent, and bounded division of auxiliary factors—are mathematical targets of the build.

## Scope and ownership

This Part II owns the critical coefficient specialization, trace-zero residue classes, critical cap and conductor refinement, the CM Borel current, its unit-orbit evaluation, critical-value applications and the ordinary theta-to-ray-class construction. The base program stops at ray-class distributions and CM-field Katz interpolation; the extension here permits L to be a non-CM extension of its maximal CM subfield K and permits every admissible critical type and every tame integral conductor prime to p. Only the CM-field comparison at the end uses the narrower Katz overlap.

The general objects have the following owners:

- Mathlib owns `NumberField.IsCMField`, `IsZLattice`, the logarithmic unit lattice, `AbstractMeasure`, Dirac measures, pushforward and convolution, Mellin and Gamma integrals, Gaussian Fourier transforms and one-dimensional Schwartz Poisson summation. Tau Ceti owns the split comodule weight decomposition and its scalar point action. The continuation here is a lattice-parameter and polynomial-moment application of these analytic results.
- **GlobalNumberFields**, Layers 2, 7 and 9–10, owns Hecke characters, ideal-side characters, ray classes, algebraic infinity types, unit compatibility and purity. **ClassFieldTheory**, Layers 7 and 11–13, owns local and global arithmetic reciprocity. The critical admissibility and p-adic-avatar interfaces required in the exact contracts are extensions of these owners.
- **AbelianSchemesAndArithmeticModuliPartII**, P0.1–P0.6, P1.1, P2.1–P2.8, P3.2–P3.4 and P4.1–P4.3, owns invariant tensors, shuffle products, universal extensions, completed Poincaré sheaves, their moments, splittings, connections and ordinary trivializations. **ComplexMultiplicationAndExplicitReciprocity**, §§0.1 and 1.3, owns CM types, Serre tensors, eigenspaces, ideal-kernel degrees and period pairings. This roadmap only chooses the based data and applies those maps to the residue class.
- **SchemeAndStackFoundations**, §§2.7, 2.19–2.20 and 2.23, owns supports, coherent duality and derived equivariance. **AlgebraicTopology**, Stages 5–6 and 8.8, owns finite covers, torus homology, local-coefficient caps, fundamental classes and classifying models. **DifferentialGeometry**, Layers 0–1 and 9, owns generic forms and integration. **Hyperfunctions**, HF2.AnalyticPreparation.CurrentResolution, owns compact bundle-current regularization and its Dolbeault homotopies. **ComplexComparisonPartII**, C1.1 and C5.1/C5.4, owns the analytic/coherent comparisons; its current-resolution and trace compatibility extensions are named in the contracts.
- **FiniteFlatGroupsAndIntegralPadicHodgeTheory**, R07.1.7, R07.1.9 and R07.1.13, owns Cartier duality and connected–étale/formal group theory. **PadicMeasuresIwasawaAlgebras**, §§0.1, 1.2, 1.7, 2.1–2.2 and 3.1, owns the measure algebra, weighting, bounded Amice theory and pseudomeasures. The integral multivariate and bounded-divisibility extensions remain with that owner.
- **AutomorphicLFunctionsAndLocalFactors**, AL.1 “Local epsilon factors and Gauss sums” and “Rank-one specialisation and Hecke comparison”, owns the analytic Hecke and local-factor interfaces. **PeriodsAndSpecialValues**, PS.0–PS.1, owns motives and determinant-period interfaces, specified below as supplier requirements.

Nonordinary CM special values owns the independent inert-prime CM central-value direction. An inert imaginary-quadratic prime does not satisfy the ordinary predicate here (BKO-2021, Introduction, pp.943–944, BKO-2021 line 70). No nonordinary unit decomposition or main conjecture is a supplier for this build.

## Conventions

Fix embeddings of algebraic numbers into ℂ and ℂ_p. Let L be totally imaginary, [L:ℚ]=2d with d≥1, and K its specified maximal CM subfield. An ordered CM type Σ_K lifts to Σ on L; barΣ is the complementary set of embeddings, without requiring an involution of L. An admissible type is a norm pullback from K with parallel conjugate sum and is trivial on the specified finite-index unit subgroup Γ. Critical value indices are α≥1 on Σ and β≥0 on barΣ; derivative indices are a=α−1. All factorials and powers of indexed periods are coordinatewise products (KS-v4, §1.1, pp.6–8, KS-v4 line 279).

Use the covariant module H=(H¹_dR(A/R))∨ and its splitting H(barΣ)⊕H(Σ), with H(barΣ)≃ω_A∨ and H(Σ)≃Lie A. The Γ-action on ω_A is inverse to the Lie action; on ω_A∨ it is the complementary positive embedding action. A bar on a scalar means complex conjugation; a dual period Ω∨ is independent of the scalar conjugate barΩ. TSym is the invariant divided symmetric tensor, with shuffle multiplication. The rank-one determinant shift is the tensor identification, not shuffle multiplication (KS-v4, Corollaries 1.12–1.14, p.11, KS-v4 line 482; Definitions 2.26–2.28, pp.22–23, KS-v4 line 938).

R is a noetherian arithmetic subring of ℂ and an O_(L^gal)[1/d_L]-algebra. Bases of invertible eigensheaves are chosen after a permitted localization or base extension. The p-adic objects are the indicated completed base changes; O_(ℂ_p) is not required noetherian. Define R[1/a] inside Frac(R) as the intersection of R_m over maximal ideals m whose contraction to O_L does not divide a; for R=O_L these are the a-integers (KS-v4, Notation 1.18, p.12, KS-v4 line 542). All number-field extensions are separable. Zero rings, equal-characteristic coefficient fields and nonreduced arithmetic bases are outside this embedded arithmetic datum; finite-flat theory in the supplier contracts retains its own broader bases.

All conductor, auxiliary and fractional ideals are nonzero; the unit ideal is permitted wherever stated and the zero ideal is excluded. Thus every ideal norm used as a denominator is positive. Write h for a residue function and f for a conductor ideal. Mathematical symbols EK(h), θ(h) and μ(h) always carry their datum and group. Hecke values use χ((λ))=λ^(β−α) for principal ray generators. The idelic infinity exponent is the opposite of this ideal exponent. Arithmetic Artin maps a prime ideal to arithmetic Frobenius. Ramified ideal values, including the notation χ(v⁻¹), are set to zero only inside the specified Euler-factor extension; zero is never inverted. At an unramified prime, χ(v⁻¹)=χ(v)⁻¹. For conjugate-sum weight w the ideal-unitary shift is L(χ,s)=L(χᵘ,s−w/2), with χᵘ(a)=χ(a)Na^(−w/2) (KS-v4, §4.1, pp.46–47, KS-v4 line 2158).

The Hermitian form is linear in the first variable: H(z,w)=Σh_i z_i barw_i, h_i>0; ⟨z,w⟩=Im H(z,w). Its alternating dual fixes both lattice characters and covolumes. Currents pair by η↦∫η∧ω. The unit torus is oriented by dr₁/r₁∧⋯∧dr_(d−1)/r_(d−1). Every use of a cap is integral for torsion-free Γ; the normalized extension through finite torsion first inverts its order. Dividing by a nonunit group index requires the particular residue-class divisibility theorem in §5.4. These normalizations are tested in the layers that use them (KS-v4, §§2.4, 3.2–3.4, pp.22–23,33–39, KS-v4 lines 961, 1383, 1486, 1506).

## Exact supplier contracts

### From Mathlib

Use `NumberField.IsCMField` in `Mathlib/NumberTheory/NumberField/CMField.lean:69`: it requires total complexity and quadraticity over the maximal real subfield. Use `NumberField.Units.instZLattice_unitLattice` and `NumberField.Units.logEmbeddingEquiv` in `Mathlib/NumberTheory/NumberField/Units/DirichletTheorem.lean:373` and `:415` for the full logarithmic lattice and units modulo torsion. Use `ZLattice.summable_norm_sub_rpow` in `Mathlib/Algebra/Module/ZLattice/Summable.lean:236` for translated norm-power summability below the negative lattice rank; the complex polynomial numerator estimate is the specialization in §3.3. Use `IsZLattice` in `Mathlib/Algebra/Module/ZLattice/Basic.lean:433` together with its separate `DiscreteTopology` hypothesis; spanning alone is not discreteness.

Use `AbstractMeasure`, `AbstractMeasure.dirac` and `AbstractMeasure.map` in `Mathlib/NumberTheory/Padics/Measure/Basic.lean:40`, `:97` and `:105`. The carrier is a continuous linear functional on continuous maps; its definition imposes neither total mass one nor an operator bound of one. Use convolution and `AbstractMeasure.diracHom` from `Mathlib/NumberTheory/Padics/Measure/Monoid.lean`. `AbstractMeasure.amiceTransformEquiv` in `Mathlib/NumberTheory/Padics/Measure/AmiceTransform.lean:157` has domain measures on ℤ_p with ℤ_p coefficients; the coefficient-complete multivariate extension consumed here is the supplier gap below.

Use `SchwartzMap.tsum_eq_tsum_fourier` in `Mathlib/Analysis/Fourier/PoissonSummation.lean:216` for real one-dimensional Schwartz functions, `fourier_gaussian_innerProductSpace` in `Mathlib/Analysis/SpecialFunctions/Gaussian/FourierTransform.lean:352` for a finite-dimensional real inner-product space and Re(b)>0, `mellin` in `Mathlib/Analysis/MellinTransform.lean:90`, and `Complex.Gamma_eq_integral` in `Mathlib/Analysis/SpecialFunctions/Gamma/Basic.lean:319` only for Re(s)>0. The lattice continuation iterates Poisson summation and retains the real change-of-basis determinant. `MeromorphicOn`, `AnalyticAt` and `HasSum` express its acceptance theorem.

### From Tau Ceti

Use `TauCeti.Comodule.isInternal_weightSpace` and `TauCeti.Comodule.endOfPoint_tmul_of_mem_weightSpace` in `TauCeti/Algebra/Coalgebra/Comodule/MonoidAlgebra/Basic.lean:416` and `:568`. Over a commutative semiring the former gives an internal direct sum for a monoid-algebra comodule; the latter evaluates the scalar action at algebra-map points. Neither theorem asserts that invariants of a unit subgroup discard nontrivial weights on torsion coefficient modules.

Use `TauCeti.GlobalNumberFields.HeckeCharacter.IsAlgebraic` in `TauCeti/NumberTheory/NumberField/Global/HeckeCharacter/Algebraic.lean:60`, together with the Hecke-character and algebraic infinity-type carriers of that directory. Algebraicity is agreement on the identity component. `TauCeti.GlobalNumberFields.HeckeCharacter.unitaryPart` in `TauCeti/NumberTheory/NumberField/Global/HeckeCharacter/Shift.lean:273` and its purity interface fix the unitary comparison; the integer ideal exponent in this README has the opposite sign to the idelic infinity exponent. These carriers do not by themselves specify the CM period datum of §5.1.

### From TauCetiRoadmap.GlobalNumberFields and TauCetiRoadmap.ClassFieldTheory

GlobalNumberFields Layers 2, 7 and 9–10 supply ray classes, the ideal/idelic character comparison, continuous and algebraic infinity types, finite-order twists, unit compatibility, purity and norm base change. ClassFieldTheory Layers 7 and 11–13 supply normalized local/global Artin reciprocity, the finite ray extensions and the inverse-limit identification for the modulus fp∞. The kernel over a fixed tame ray class is the local unit group modulo the closure of units congruent to one modulo f. At f=O_L this becomes the full unit closure. Arithmetic Frobenius, inversion and the norm shift must agree with §§5.3 and 8.3.

What ClassFieldTheory must provide (gap:ray-tower-tame-unit-kernel): Supply the inverse-limit fp∞ ray-class Galois comparison and exact kernel over Cl_f equal to the local p-unit group modulo the closure of O_f×, with arithmetic Artin and finite-level transition compatibility.

What GlobalNumberFields must provide (gap:unit-type-classification): Classify integer embedding types trivial on a finite-index unit subgroup as norm pullbacks from the maximal CM subfield with parallel conjugate sum, or parallel norm powers when no CM subfield exists.

What GlobalNumberFields must provide (gap:hecke-padic-avatar): Supply the arithmetic p-adic avatar of an algebraic ideal Hecke character on the fp∞ ray tower, with its local algebraic monomial, finite unit character and the ideal-to-idelic inverse convention.

### From TauCetiRoadmap.AbelianSchemesAndArithmeticModuliPartII

Consume P0.1–P0.6 for invariant tensors, multigrading, shuffle multiplication and divided powers; P1.1 for the universal extension of A∨ and the covariant Hodge module; P2.1 for moments; P2.2–P2.3/P2.8 for completed coefficients and their top coherent cohomology; P2.4–P2.7 for isogeny maps, rigidified torsion splitting, Γ-linearization and comultiplication. P3.2/P3.4 supply the smooth connection and Dolbeault realization, and P3.3 supplies the characteristic-zero field-base logarithm-sheaf comparison. P4.1–P4.3 supply ordinary completed base change, the infinitesimal trivialization and torsion translations. These are the precise models used by every EK, moment and theta map below. In particular the ordinary and connection completions have different conormal ranks; in elliptic degree two their ranks are 3 and 6.

### From TauCetiRoadmap.ComplexMultiplicationAndExplicitReciprocity

Consume §0.1 for the lifted embedding partition and §1.3 for CM Serre tensors, CM Lie/Hodge eigenspaces, ideal-kernel degrees and both period pairings. The generic tensor is O_L⊗_(O_K)A₀, its dimension is [L:K]dim A₀, and the cotangent eigenspaces are trivialized only after the permitted base change. The ideal [c]-kernel has finite-flat rank Nc, including its inseparable part. The period pairing is conjugate on the A-cotangent factor and uses the trace-dual ideal with inverse different. The same §1.3 controls the complex periods, without an ordinary-prime hypothesis.

### From TauCetiRoadmap.SchemeAndStackFoundations

Consume §2.7's support localization triangle, §§2.19–2.20's regular-immersion/coherent duality and §2.23's derived equivariant sheaf cohomology and its spectral sequences. Γ acts on A over the fixed base; it need not act trivially on A. At a point the comparison is native discrete group cohomology, and in general equivariant cohomology is not defined by taking invariants after cohomology.

What SchemeAndStackFoundations must provide (gap:equivariant-poincare-limit): Supply the inverse-limit and vanishing R¹lim comparison for finite-level equivariant completed Poincaré complexes, affine evaluation into group cohomology and the discrete-unit Borel smooth/coherent comparison.

### From TauCetiRoadmap.ComplexComparisonPartII

C1.1 supplies the local bundle-valued Dolbeault comparison; C5.1 supplies the ordinary algebraic/analytic de Rham comparison, and C5.4 supplies the generic current calculus, its test topology and regularization, real/complex comparison, integration and residue normalizations. Its form-first pairing converts to the test-first pairing here by (−1)^(k(N−k)) in real dimension N and form degree k; at N=2, k=1 this factor is −1. DifferentialGeometry Layers 0–1 and 9 supply the generic forms and integration on which those comparisons operate. The bundle-valued Borel current model uses the following extensions.

What ComplexComparisonPartII must provide (gap:borel-bundle-currents): Extend C5.4’s supplied bundle-test/current calculus to the mixed relative bidegrees on a complex manifold times a real contractible unit cover, with the local form/current resolution natural in finite Poincaré levels and flat connections.

What ComplexComparisonPartII must provide (gap:current-residue-trace): Supply top unit-torus integration and Stokes for that current resolution, with local analytic residue and trace identified with the rigidified algebraic coherent trace.

### From TauCetiRoadmap.Hyperfunctions

Consume HF2.AnalyticPreparation.CurrentResolution for finite-rank bundle-valued compact currents, the smooth-test dual topology, local Dolbeault regularization and properly supported homotopy maps. The p-holomorphic-degree homotopy has the transport sign (−1)^p, whereas its regularization has no extra sign; at p=1 the homotopy changes by −1 and the regularization by +1. Its dual local identities, combined with ComplexComparisonPartII C5.4’s current topology, supply the local input to the mixed relative resolution in §3.2. This does not identify compact currents (dual to global tests) with unrestricted currents (dual to compactly supported tests).

### From TauCetiRoadmap.AlgebraicTopology

Consume Stage 5 items 3–4 for finite-cover transfer and torus exterior-power homology, Stage 6 for singular local coefficients, cap products and oriented fundamental classes, and Stage 8.8 for the discrete-group classifying-space/bar comparison. The contract concerns a finite-rank free abelian unit group acting on its contractible logarithmic cover and its actual coefficient representation. It includes finite-index naturality and the top-degree identification with the coefficient line. No surjective transfer through a finite torsion group is part of the contract.

What AlgebraicTopology must provide (gap:group-torus-comparison): Supply the native discrete group-to-singular local-coefficient comparison for finite-rank free abelian groups on their logarithmic universal covers, naturally under finite-index maps.

What AlgebraicTopology must provide (gap:torus-cap-projection): Supply the compatibility of the native group-cohomology comparison with the oriented local-coefficient torus cap, its top-degree coefficient-line identification and finite-cover projection formula.

### From TauCetiRoadmap.FiniteFlatGroupsAndIntegralPadicHodgeTheory

Consume R07.1.7 for Cartier duality, R07.1.9 for the connected–étale sequence over the indicated henselian bases, and R07.1.13 for the formal Lie group comparison. Their CM idempotent and paired-isogeny compatibilities are the following exact requirement, after base change from the noetherian arithmetic model.

What FiniteFlatGroupsAndIntegralPadicHodgeTheory must provide (gap:ordinary-cm-pairings): Supply the ordinary CM-idempotent connected–étale decomposition and perfect Cartier/Weil pairings over the required bases, with compatibility of paired isogenies and all levels.

### From TauCetiRoadmap.PadicMeasuresIwasawaAlgebras

Consume §§0.1, 1.2 and 1.7 for clopen restriction, convolution and the completed-group-algebra comparison; §§2.1–2.2 for continuous weighting, its pushforward projection formula, invariant derivatives and bounded Amice calculus; and §3.1 for localization and admissible evaluation of pseudomeasures. Integral means preservation of the coefficient unit ball, uniformly over all finite quotients. A characterwise integral pseudomeasure does not satisfy this contract merely by its values.

What PadicMeasuresIwasawaAlgebras must provide (gap:integral-multivariate-amice): Supply basis-independent integral Amice for finite-free ℤ_p-modules of arbitrary rank with O_(ℂ_p) coefficients, including products, completed coefficient extension, translations and invariant differential moments.

What PadicMeasuresIwasawaAlgebras must provide (gap:bounded-fraction-criterion): Supply localization of the commutative integral measure algebra on profinite abelian ray groups and a uniform Kummer-congruence or integral-divisibility criterion for bounded fractions, including torsion components and common zeros.

### From TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactors

Consume AL.0 “Local Schwartz–Bruhat spaces and finite Fourier levels” for finite pairing orthogonality, inversion and refinement. Consume AL.1 “Local epsilon factors and Gauss sums” for normalized trace-character Gauss sums and their primitive nonvanishing, “Global distributions and completed Euler products” for the analytic factors, and “Rank-one specialisation and Hecke comparison” for continuation and its rank-one normalization. Convert χ of ideal weight w to its unitary character χᵘ before applying the latter, translating s to s−w/2 and transporting all gamma factors. No new global Hecke functional equation is a target here.

### From TauCetiRoadmap.PeriodsAndSpecialValues

The Hecke-motive realization and period-line contracts consumed by §5.9 are the following requirements; the criticality assumption and the possible vanishing of the special value remain separate.

What PeriodsAndSpecialValues must provide (gap:hecke-motive-periods): Supply rank-one Hecke motives, realizations, period lines and tensor, norm-pullback, restriction-of-scalars, finite-order and Tate-twist comparisons in the ideal infinity-type convention β−α.

What PeriodsAndSpecialValues must provide (gap:critical-cm-deligne-period): Supply criticality of the restricted Hecke motive and the CM expression for its nonzero Deligne c⁺ period modulo Qbar×, separately from algebraicity of the possibly zero L-value.

## How to read the build

Layers 0–2 select the critical coefficient lines, construct the residue class and evaluate it integrally, with conductor refinement separated from unit-index normalization. Layers 3–4 construct the analytic representative and identify its unit-orbit series. Layer 5 converts this evaluation into period-normalized critical values, proves integral full-unit descent and deduces algebraicity and the weak period relation. Layers 6–7 use ordinary levels to turn the same class into theta functions and bounded Eisenstein measures. Layer 8 forms the ray-class measure, proves the residue-to-moment sign comparison and uniform bounded desmoothing, and gives the final interpolation theorem. Each *Needs:* line separates statement inputs from the suggested proof route. `Suggested.lean` is the acceptance test for the headline continuation theorem that is statable on native carriers; the other headline statements require the geometric and arithmetic interfaces specified here.

## Layer 0: Critical types and CM coefficient lines

### 0.1 Lifted CM types and critical coefficient indices

Let L be totally imaginary of degree 2d and contain its maximal CM subfield K. A CM type Σ_K of K determines Σ={σ:L→ℂ | σ|K∈Σ_K}; its complement is denoted barΣ, without assuming a conjugation automorphism of L. Write I_L=ℤ[Hom(L,ℂ)]. A Hecke type μ is a norm pullback from K of μ₀ with μ₀(τ)+μ₀(barτ)=w independent of τ. For finite-index Γ⊂O_L×, HCI_L(Γ) consists of these types trivial on Γ. Write CI_L(Γ) for its subset critical for the chosen Σ. A type is critical for Σ when μ=β−α with α:Σ→ℕ strictly positive and β:barΣ→ℕ; equivalently μ=β−a−1 with a≥0. The negative embeddings must be exactly the lifted type. Prove that these are precisely the algebraic Hecke types whose Γ-invariant coefficient lines occur below. Fields with no CM subfield contribute no such critical type.

Assume d≥1; specified embeddings into ℂ and a specified maximal CM subfield K when a critical type is present.

(KS-v4, §1.1, Definition 1.2, Notation 1.3, Proposition 1.5, pp.6–8; Theorem 1.1, p.7, KS-v4 line 324.)

The construction has the following API.

- Criticality for fixed Σ is equivalent to the unique pair (a,β) with μ=β−a−1, a,β≥0 and μ admissible.
- Pullback of a critical type on K has the same positive indices on every embedding above a fixed embedding of K.
- Passing to Γ′⊂Γ preserves the critical type and its coefficient indices; admissible types may enlarge.

One proof route is to import the infinity-type and unit-character classification from GlobalNumberFields Layers 9–10; restrict its admissibility condition along L/K. Use the imported diagonalizable-group weight decomposition, then the unit theorem: a weight trivial on a finite-index subgroup is a Hecke type. Separate the value exponent α from the derivative exponent a=α−1.

**Checks.**

- For K=L=ℚ(i), μ(i↦i)=−2 and μ(i↦−i)=1 gives a=1, β=1, after taking Γ in the kernel of the finite unit character.
- The type with μ|Σ=0 is not critical; a=0 corresponds to μ|Σ=−1.
- For L=ℚ(i,√(1+i)), the assignment α=(1,2), β=(0,0) fails norm-pullback admissibility although both α entries are positive.
- A nonconstant assignment on embeddings above the same embedding of K is rejected even when its signs fit Σ.
- No assertion that arbitrary totally imaginary fields are CM is used.

*Needs:* GlobalNumberFields Layer 10 (gap:unit-type-classification); ComplexMultiplicationAndExplicitReciprocity §0.1; Mathlib `NumberField.IsCMField`; `TauCeti.Comodule.isInternal_weightSpace`; `TauCeti.Comodule.endOfPoint_tmul_of_mem_weightSpace`.

### 0.2 CM abelian data with bases and torsion

A standard datum consists of a noetherian affine R⊂ℂ that is an O_(L^gal)[1/d_L]-algebra; an abelian scheme A/R of dimension d with O_L-action and Lie(A) of lifted type Σ; ordered bases ω_A=(ω_A,σ) of the rank-one cotangent eigensheaves and ω_A∨=(ω_A∨,barσ) of its dual's cotangent eigensheaves; and an f-torsion section x fixed by Γ. Bases are chosen after a localization or extension where the eigensheaves become free, not postulated for every base. The covariant H=(H¹_dR(A/R))∨ has H=H(barΣ)⊕H(Σ), H(barΣ)≃ω_A∨, and H(Σ)≃Lie A. The action on ω_A,σ is σ(γ)⁻¹, while that on ω_A∨,barσ is barσ(γ). The bases identify A(ℂ) with ℂ^Σ/Λ. The ideal-localization notation is the intersection over maximal ideals whose O_L-contraction does not divide a, as fixed in Conventions.

Assume critical lifted type from §0.1. Nf is a unit only for the unrefined torsion evaluation; §2.4 has its own weaker assumption.

(KS-v4, Definition 1.15, Remark 1.16, equations (1.3.2)–(1.3.4), Notation 1.18, p.12; §1.2, pp.9–11, KS-v4 line 522.)

The construction has the following API.

- Transport the datum along an injective permitted base extension, carrying the bases and torsion section.
- Identify the two cotangent actions with inverse Σ-weights and positive barΣ-weights.
- A CM datum for K and finite projective O_K-module O_L produce the lifted Lie type; freeness of chosen bases is an additional local condition.

One proof route is to apply the imported Serre tensor construction O_L⊗_(O_K)A₀ and its CM eigenspace theorem. Trivialize the weight lines only after the permitted change of base and retain the isomorphisms under transport.

**Checks.**

- For a CM elliptic curve the cotangent weights on A and A∨ have the stated opposite embedding conventions.
- A nontrivial invertible eigensheaf supplies a datum without a global basis until the indicated localization; the based constructor cannot accept it directly.
- O_L⊗_(ℤ[i])A₀ for L=ℚ(i,√(1+i)) has dimension two and the lifted Σ even though L has no CM involution.
- Every use names the base, bases, lattice and Γ-action.
- At the zero Serre module the relative dimension is zero, so the positive-dimensional standard datum rejects it.
- For the split torus point with selected coordinate 2, the Lie action is 2 and its cotangent action is 1/2; replacing the cotangent by the pullback action gives 2. At γ=i in ℚ(i), both selected inverse and complementary positive weights are −i.

*Needs:* §0.1; ComplexMultiplicationAndExplicitReciprocity §1.3.

### 0.3 Critical coefficient invariants

For a,β≥0 put C_(a,β)=TSym^a(ω_A)⊗TSym^β(ω_A∨)⊗det(ω_A), with multigraded divided symmetric powers imported from AbelianSchemesAndArithmeticModuliPartII P0. Its Γ-action has weight β−a−1. Over R contained in a number field, C_(a,β)^Γ=C_(a,β) when that weight belongs to CI_L(Γ), and is zero otherwise. More generally, for an R-torsion-free algebraic torus module M, its Γ-invariants are the direct sum of the weights trivial on Γ, identified with HCI_L(Γ) by the imported Hecke-type classification. The coefficient lines above are finite locally free, so they satisfy the torsion-free hypothesis. The extra torsion-free hypothesis concerns invariants under the unit subgroup, independently of the comodule decomposition.

Assume standard datum; finite-index Γ⊂O_L×; R embeds in a number field for the invariant-versus-zero assertion. For the general assertion on M, require M to be R-torsion-free (finite locally free suffices). R being a domain alone does not imply this.

(KS-v4, Proposition 1.5, p.8; Corollary 1.14, p.11; Proposition 1.5 restricted to R-torsion-free modules, KS-v4 line 357.)

One proof route is to compute weights using the Hodge decomposition and determinant. Apply the native comodule weight decomposition and point-action formula. On a nontrivial unit weight choose γ with μ(γ)−1≠0; R-torsion-freeness forces its invariant vectors to vanish. The torsion-free hypothesis is essential in this application.

**Checks.**

- At a=β=0 the determinant contributes −1 on each Σ embedding.
- Do not replace Γ-invariants by invariants of a finite torsion subgroup or assert this dichotomy over arbitrary torsion coefficient rings.
- For L=ℚ(ζ₃), R=ℤ[ζ₃,1/3], Γ=μ₆ and the weight 3σ, M=R/(2) has nonzero Γ-invariants although the weight is nontrivial over R: a primitive sixth root has weight −1, which becomes 1 modulo 2. The unrestricted-module version must be rejected.

*Needs:* §0.1; §0.2; AbelianSchemesAndArithmeticModuliPartII P0.6; AbelianSchemesAndArithmeticModuliPartII P0.3/P0.5; `TauCeti.Comodule.isInternal_weightSpace`; `TauCeti.Comodule.endOfPoint_tmul_of_mem_weightSpace`.

### Examples

For ℚ(i), the weight (−2,1) has a=1, β=1; the unequal lifted pair (−1,−2) over ℚ(i,√(1+i)) is inadmissible despite its negative signs. At γ=i, the A-cotangent weight is −i and the complementary cotangent weight is −i, whereas the Lie weight is i.

### Dependencies

GlobalNumberFields Layer 10 (gap:unit-type-classification); ComplexMultiplicationAndExplicitReciprocity §0.1; Mathlib `NumberField.IsCMField`; `TauCeti.Comodule.isInternal_weightSpace`; `TauCeti.Comodule.endOfPoint_tmul_of_mem_weightSpace`; ComplexMultiplicationAndExplicitReciprocity §1.3; AbelianSchemesAndArithmeticModuliPartII P0.6; AbelianSchemesAndArithmeticModuliPartII P0.3/P0.5. The individual statement and proof-route inputs are specified above.

## Layer 1: Residues and equivariant Eisenstein–Kronecker classes

### 1.1 Trace-zero functions on étale torsion

For an isogeny δ:A→A′ such that δ and δ∨ are étale and commute with Γ, take D=ker δ or ker δ minus the identity section, provided Γ-stable. Let U=A\D and R[D]=H⁰(D,O_D); R[D]⁰=ker(Tr_(D/R)) and R[D]^(0,Γ) its Γ-invariants. Trace is the finite-étale algebra trace, so the construction makes sense before D splits into rational points. For c-regularization use D=A[c] and h_c=Nc·1_e−1_(A[c]). If x=e choose a second coprime c′ and D=A[cc′] minus e: under the Chinese-remainder identification extend by zero the pullback of h_c from (A[c′] minus e)×A[c]. This function has trace (Nc′−1)Tr(h_c)=0; restricting h_c itself to A[c] minus e would not have trace zero.

Assume R affine; finite étale D/R; x∈U for every evaluation. For D=A[c], Nc∈R× and c prime to the relevant torsion conductor; the two-auxiliary construction also requires Nc′∈R×.

(KS-v4, Definition 2.18, Notation 2.19, pp.19–20; Definition 2.26, p.22; §4.4, p.52, KS-v4 line 836.)

The construction has the following API.

- Finite étale base change carries R[D]⁰ into the corresponding kernel and commutes with Γ-invariants when justified, not as a blanket exactness assertion.
- The CM regularizer h_c has trace zero, since rank_R R[A[c]]=Nc.
- Over a splitting base, trace agrees with the sum of function values at all geometric torsion points.

One proof route is to use the imported finite-étale algebra and trace and restrict the induced Γ-action. Check the equality deg[c]=Nc by the CM ideal action, then compute the trace of h_c.

**Checks.**

- On a split kernel with three points h_c has values (2,−1,−1), hence trace zero.
- On a nonempty split kernel in characteristic zero the constant function 1 is not trace zero.
- With f=O_L and x=e the unmodified D=A[c] fails x∈U; a second auxiliary ideal is required.
- Tr(h_c)=0 because A[c] has degree Nc, with no extra square on Nc.
- D and x are disjoint in every downstream application.
- For the identity isogeny, D=ker(id) minus e is empty, R[D]=0 and the trace-zero datum is 0. For c=O_L the full-kernel regularizer has value 1−1=0.

*Needs:* §0.2; AbelianSchemesAndArithmeticModuliPartII P2.5; SchemeAndStackFoundations §2.7.

### 1.2 Equivariant residue and inverse-limit comparison

Put F_n=P^(n)⊗Ω_A^d and F=P_hat⊗Ω_A^d. The imported completed Poincaré trace gives H^i(A,Γ,F)=0 for i<d and H^d(A,Γ,F)≃R. For I the ideal of D, local complete-intersection duality gives Ext^q(I^k/I^(k+1),F_n)=0 for q<d and H^(q−d)(D,Hom(I^k/I^(k+1),i*P^(n))) for q≥d. Consequently support cohomology vanishes below d and contains R[D]^Γ canonically in degree d; its map to H^d(A,Γ,F) is Tr_(D/R). Prove H^(d−1)(U,Γ,F)≃lim_n H^(d−1)(U,Γ,F_n), including the vanishing inverse-limit obstruction used in Corollary 2.35. Do not infer vanishing of higher equivariant cohomology from the underlying coherent calculation.

Assume trace-zero datum, δ and δ∨ étale; finite symmetric levels and their compatible transition maps. Γ acts by automorphisms of A over the fixed base S; it acts trivially on S.

(KS-v4, Corollary 2.17, p.19; §2.6, Proposition 2.32 and Corollaries 2.33–2.35, pp.26–27, KS-v4 line 1106.)

One proof route is to import the top coherent Poincaré calculation and the equivariant spectral sequence. Filter O_A/I^(k+1) by I^j/I^(j+1), use regular immersion duality and support localization. Prove the required exactness/Milnor comparison for these particular pro-systems, using the SchemeAndStackFoundations §2.23 request rather than commuting cohomology and inverse limits formally.

**Checks.**

- The injection and trace square commute before passing to the trace-zero submodule.
- The assertion is compatible with a nontrivial Γ-action on A over the fixed base S and is not H^i(A,F)^Γ by definition.

*Needs:* §1.1; AbelianSchemesAndArithmeticModuliPartII P2.3/P2.8; AbelianSchemesAndArithmeticModuliPartII P2.8; SchemeAndStackFoundations §§2.19–2.20; SchemeAndStackFoundations §2.7; SchemeAndStackFoundations §2.23; SchemeAndStackFoundations §2.23 (gap:equivariant-poincare-limit).

### 1.3 Equivariant coherent Eisenstein–Kronecker class

Define EK_(Γ,A):R[D]^(0,Γ)→H^(d−1)(U,Γ,P_hat⊗Ω_A^d) as the unique preimage of the canonical degree-d support class of h under localization. This is an injective R-linear map with residue h and is compatible with its images at every finite Poincaré level. The definition uses derived equivariant sections in the category of Γ-linearized sheaves, not invariants taken after cohomology. Its naturality includes permitted flat base change, pullback through compatible isogeny/residue diagrams, and restriction of Γ.

Assume trace-zero datum and the residue calculation.

(KS-v4, Theorem 2.20 and Definition 2.21, p.20; proof in §2.6, pp.26–27, KS-v4 line 870.)

The construction has the following API.

- The localization boundary of EK(h) equals the canonical support class of h.
- EK is R-linear and injective.
- A commuting support/trace/base-change diagram carries EK(h) to the class of the transported h, by uniqueness.

One proof route uses trace zero to place the support class of h in the localization kernel. Vanishing below d makes the preimage unique; retain the full trace square to prove injectivity and naturality.

**Checks.**

- EK(0)=0 and a class in its image with zero residue vanishes.
- For d=1 and Γ=1 the class is a section of P_hat⊗Ω¹ on U with the prescribed infinitesimal Kronecker residues.
- A split two-point function with values (1,1) in characteristic zero does not lie in the constructor domain.
- Residue(EK(h))=h in the canonical supported submodule.
- Flatness or an explicit base-change theorem accompanies each claimed scalar-extension compatibility.

*Needs:* §1.2; AbelianSchemesAndArithmeticModuliPartII P2.6; SchemeAndStackFoundations §2.23; SchemeAndStackFoundations §2.7.

### 1.4 Flat derivatives of the coherent class

Let EK♮(h) be the image of EK(h) under P_hat→P_hat♮. Its a-th total derivative is ∇^a EK♮(h) in H^(d−1)(U,Γ,TSym^a Ω_A¹⊗P_hat♮⊗Ω_A^d). Iterate the integrable Poincaré connection with its symmetric tensor convention, so that subsequent projection to a multi-index a produces the factorial a! in the analytic evaluation. The construction is made at finite levels and assembled as a compatible pro-class.

Assume standard residue data; the imported universal vector extension, Poincaré connection and divided symmetric power convention.

(KS-v4, Definitions 2.21 and 2.23, pp.20–21, KS-v4 line 901.)

The construction has the following API.

- ∇⁰EK♮(h)=EK♮(h).
- The derivative commutes with the Γ-action and the permitted pullbacks.
- Projection to the a-index component agrees with iterated coordinate derivatives with the AbelianSchemesAndArithmeticModuliPartII P0 factorial convention.

One proof route is to apply the imported flat connection at each symmetric level and symmetrize by the AbelianSchemesAndArithmeticModuliPartII P0 comparison convention. Use integrability for the symmetric target and Γ-equivariance to descend to equivariant cohomology.

**Checks.**

- At a=0 the image is the original pro-class, without an extra factorial.
- For a coordinate monomial z² the second ordinary derivative is 2; the divided-power basis conversion must account for this factor.
- For two commuting coordinate directions the (1,1) derivative of z₁z₂ is 1, not 2.
- The zero-th derivative is EK♮ itself.
- The derivative/moment comparison records the ordinary versus divided-power factorial; no division by a! over a general integral R is made.

*Needs:* §1.3; AbelianSchemesAndArithmeticModuliPartII P1.1; AbelianSchemesAndArithmeticModuliPartII P0.4–P0.5; AbelianSchemesAndArithmeticModuliPartII P2.2.

### Examples

On a three-point kernel the regularizer has values (2,−1,−1) and trace 0. With a second five-point kernel, its extension away from the identity has trace 4·0=0; restricting the first function off the identity gives −2 and fails.

### Dependencies

Earlier layers 0; AbelianSchemesAndArithmeticModuliPartII P2.5; SchemeAndStackFoundations §2.7; AbelianSchemesAndArithmeticModuliPartII P2.3/P2.8; AbelianSchemesAndArithmeticModuliPartII P2.8; SchemeAndStackFoundations §§2.19–2.20; SchemeAndStackFoundations §2.23; SchemeAndStackFoundations §2.23 (gap:equivariant-poincare-limit); AbelianSchemesAndArithmeticModuliPartII P2.6; AbelianSchemesAndArithmeticModuliPartII P1.1; AbelianSchemesAndArithmeticModuliPartII P0.4–P0.5; AbelianSchemesAndArithmeticModuliPartII P2.2. The individual statement and proof-route inputs are specified above.

## Layer 2: Critical evaluation and integral refinement

### 2.1 Torsion specialization and group-cohomology moments

Let x∈U(R) be fixed by Γ and killed by φ:A→B with φ∨ étale (equivalently the required lifted universal-extension map is étale). Pull ∇^a EK♮(h) back to x, apply the imported torsion splitting and the b-th moment, and use affine equivariant/coherent comparison. This defines Eis^(b,a)_Γ(h,x)∈H^(d−1)(Γ,TSym^a ω_A⊗TSym^b H⊗det ω_A). Here a,b are total nonnegative degrees; in multi-index notation a,β denote multi-indices with these total degrees. The splitting is the one normalized by the Poincaré rigidification, not an arbitrary trivialization at x.

Assume affine standard datum; x avoids D; φ∨ étale; h trace zero and Γ-invariant.

(KS-v4, Definition 2.24 and equations (2.3.3)–(2.3.4), p.21; Remark 2.25, p.22, KS-v4 line 918.)

The construction has the following API.

- Compatible isogenies, torsion sections and pullbacks commute with specialization and moment maps.
- For b=0 the moment is the rigidified augmentation.
- For fixed (x,b,a), the class depends R-linearly on h.

One proof route is to evaluate the finite-level derivative on x, then take mom_b using AbelianSchemesAndArithmeticModuliPartII P2.5 and P2.1. Apply the SchemeAndStackFoundations §2.23 affine comparison to identify equivariant coherent cohomology on Spec R with group cohomology.

**Checks.**

- An arbitrary non-torsion x has no canonical torsion splitting and cannot enter this constructor.
- At residue characteristic p a p-torsion point whose killing dual is not étale only gives the generic-fiber construction.
- For d=1, Γ=1 and a=b=0 this is the scalar value of the augmented Kronecker section at x.
- The target contains H, not H¹_dR with the contravariant action.
- The zero moment is the augmentation of the torsion splitting.

*Needs:* §1.4; AbelianSchemesAndArithmeticModuliPartII P2.5; AbelianSchemesAndArithmeticModuliPartII P2.1; SchemeAndStackFoundations §2.23 (gap:equivariant-poincare-limit).

### 2.2 Orientation-normalized critical Eisenstein classes

First take Γ torsion-free of rank d−1. Project Eis^(b,a) through H→ω_A∨, then to the critical (a,β) component C_(a,β). Cap with the fundamental class of BΓ=Γ\EΓ, EΓ={(r_i)>0:∏r_i=1}, using the orientation ∧_(i<d)dr_i/r_i. An ordering of Σ also identifies det ω_A with the multidegree-one tensor line; the two permutation signs cancel. Use the rank-one divided-tensor identification u^[a]⊗u↦u^[a+1] on each weight line, rather than shuffle multiplication. This gives EK^(β,a)_Γ(h,x)∈TSym^(a+1)ω_A⊗TSym^βω_A∨. Its coordinate in the chosen divided-power bases is denoted e_(β,a). For Γ with finite torsion T, define the normalized version only after |T| is a unit: choose a free complement Γ₀, evaluate there, and divide by |T|. Prove independence of the complement after this localization. No integral map on arbitrary H^(d−1)(Γ,−) for all torsion Γ is asserted.

Assume critical β−a−1∈CI_L(Γ); Nf∈R× for this evaluation; torsion-free Γ for the integral version. For the torsion-normalized extension, |Γ_tors|∈R× is an explicit extra hypothesis.

(KS-v4, Definitions 2.26 and 2.28, pp.22–23; Proposition 2.27 and diagram (2.4.2), pp.22–23 with torsion-free or localized cap, KS-v4 line 961.)

The construction has the following API.

- Permuting the ordered embeddings changes the fundamental orientation and determinant identification by the same sign, leaving EK unchanged.
- The selected bases identify the critical tensor line with R and define e_(β,a).
- When |T| is invertible, normalized evaluation is |T|⁻¹ times evaluation on a free complement and satisfies full-index change of group.
- For an invertible weight line, the canonical identification TSym^a(M)⊗M≃TSym^(a+1)(M) sends u^[a]⊗u to u^[a+1]. It is independent of the local generator and is distinct from shuffle multiplication, which gives (a+1)u^[a+1].

One proof route is to use coefficient-invariants. The native logarithmic unit lattice and units-modulo-torsion equivalence identify Γ\EΓ with an oriented compact torus. Apply the requested comparison of group cohomology with its singular local-system model and the imported cap product. Glue the rank-one shift from local generators; its degree a+1 homogeneity makes it basis-independent. Check ordering independence by simultaneous orientation and determinant changes. Use transfer only in its valid form: in degree zero transfer across a finite-index subgroup multiplies by the index. The unrestricted surjectivity assertion in Proposition 2.27 is not used.

**Checks.**

- For d=1, Γ=1 and C=R, cap is the identity R→R.
- For d=2 a transposition reverses the BΓ orientation and the determinant basis, leaving the final tensor unchanged.
- For d=1 and Γ=μ₂ over a ring with 2 noninvertible, no extension of cap on all H⁰ with the claimed index rule can be integral: it would send 1 to 1/2.
- For a free rank-one line Ru and a=1, the determinant shift sends u⊗u to u^[2], whereas shuffle multiplication gives 2u^[2]. The shift remains an isomorphism when 2 is a nonunit.
- For d=1 and Γ=1 the cap product is ordinary degree-zero evaluation.
- For Γ=μ₂ and Γ₀=1, normalized evaluation requires 1/2; it is not an arbitrary integral R-linear operation.

*Needs:* §2.1; §0.3; SchemeAndStackFoundations §2.23 (gap:equivariant-poincare-limit); Mathlib `NumberField.Units.logEmbeddingEquiv`; Mathlib `NumberField.Units.instZLattice_unitLattice`; AbelianSchemesAndArithmeticModuliPartII P0.4–P0.5; AlgebraicTopology Stage 5 items 3–4 and Stage 8.8 (gap:group-torus-comparison); AlgebraicTopology Stage 6 (gap:torus-cap-projection).

### 2.3 Change of unit subgroup with its normalization

For torsion-free Γ′⊂Γ of finite index m, restriction of the equivariant class followed by the critical cap construction satisfies EK^(β,a)_(Γ′)(h,x)=m·EK^(β,a)_Γ(h,x). The same formula holds for the torsion-normalized extensions when both torsion orders are units. For integral classes with torsion orders nonunits retain the torsion-free value and its multiplicity; do not cancel m without a divisibility theorem for that particular class.

Assume both groups fix h and x; β−a−1 is trivial on Γ.

(KS-v4, Corollary 2.29, p.24, restricted or localized as explained for Proposition 2.27, KS-v4 line 1016.)

One proof route is to use the finite covering BΓ′→BΓ, cap-product projection formula and orientation conventions. For the localized extension reduce to free complements and compare their indices.

**Checks.**

- A covering of oriented circles of degree m scales the integral by m.
- The case μ₂⊃1 is not passed off as an integral surjective transfer.

*Needs:* §2.2; AlgebraicTopology Stage 5 items 3–4 and Stage 8.8 (gap:group-torus-comparison); AlgebraicTopology Stage 6 (gap:torus-cap-projection).

### 2.4 Refined evaluation without inverting the conductor norm

Let x be f-torsion, c≠O_L coprime to f, Nc∈R×, D=A[c], and B=A(f⁻¹). Without assuming Nf∈R×, map EK♮_A(h) to the pullback of P_hat♮_B via [f]_# and transport the determinant by [f]∨*. Differentiate using the connection on B, evaluate at x (whose image in B is zero), take the moment at e_B, project and cap for a torsion-free Γ. This gives _[f]EK^(β,a)_(Γ,B)(h,x)∈TSym^(a+1)ω_B⊗TSym^βω_B∨ over R. The residue function is h and the conductor ideal is f.

Assume standard based data for A and B; x∈U and fixed by torsion-free Γ; critical indices. [f] itself and its dual may fail to be étale.

(KS-v4, Theorem 2.30 and its construction, pp.24–25, with the torsion-free cap convention, KS-v4 line 1032.)

The construction has the following API.

- For the identity isogeny the refined procedure agrees with the ordinary evaluation whenever the latter is defined.
- Chosen B-bases identify the refined tensor with a scalar in R, without inverting Nf.
- Composition of compatible ideal isogenies agrees with iterated pushforward, connection pullback and identity moments.

One proof route is to push the Poincaré coefficient before differentiating so specialization takes place at the identity of B. Use the identity splitting at e_B instead of an unavailable integral splitting at x on A. Apply the same critical projection and torsion-free orientation as above.

**Checks.**

- At a prime dividing Nf the constructor still has an R-valued target, provided Nc is invertible.
- If Nc is a nonunit, this theorem does not assert a residue-class construction from an étale c-kernel.
- With [f]=id the pushforward and transported connection are identities and the zero-th moment is unchanged.
- The result lies over R, with no 1/Nf introduced in the constructor.
- Nc is still a unit; the refinement removes only the evaluation conductor denominator.
- Removing Nf from the denominators does not remove the separate unit-group torsion normalization; keep the hypotheses of §2.2 and the integral unit-index descent of §5.4.

*Needs:* §1.4; §2.2; AbelianSchemesAndArithmeticModuliPartII P2.4; AbelianSchemesAndArithmeticModuliPartII P2.7; ComplexMultiplicationAndExplicitReciprocity §1.3.

### 2.5 Comparison of refined and unrefined evaluations

After the injective scalar extension R→R[1/Nf], the two classes satisfy TSym^(a+1)([f]*) (_[f]EK_(Γ,B)^(β,a))=TSym^β([f]_#)(EK_(Γ,A)^(β,a)), with coefficient lines transported as in equation (2.5.1). Thus the right-hand transported ordinary class has its coordinate in R in the mixed bases of A and B∨. The statement first uses torsion-free Γ; a torsion-normalized version carries its separate index/divisibility condition.

Assume the hypotheses of §2.4; R⊂ℂ so the indicated scalar extension is injective.

(KS-v4, Equation (2.5.1) and Proposition 2.31, p.25, KS-v4 line 1071.)

One proof route is to compare the two torsion splittings after [f] and its dual become étale. Use connection/isogeny compatibility and the moment comultiplication square; descend equality along the injective base extension.

**Checks.**

- The comparison map on ω_A and the map on ω_A∨ are not interchanged.
- An equality after localization is used only with the stated injective coefficient map.

*Needs:* §2.4; §2.1; AbelianSchemesAndArithmeticModuliPartII P2.4.

### 2.6 Comparison with the de Rham polylogarithm

For S=Spec(k), where k has characteristic zero, the Hodge-to-de Rham edge map sends EK♮_Γ(h) to the de Rham realization of the equivariant polylogarithm with residue h in degree 2d−1 on U. Its analytic image is the cohomology class of the residue-normalized solution of ∇φ=δ_h·vol identified in §3.6; the explicit representative is constructed in §3.5. This is a comparison of the supplied Poincaré/logarithm-sheaf models with this residue class; no independent polylogarithm carrier is introduced.

Assume the base is the spectrum of a characteristic-zero field; take a chosen embedding into ℂ for the analytic assertion. No comparison over arbitrary characteristic-zero bases is claimed. Finite Poincaré levels, flat connection and equivariant support comparison; compatible residue trace.

(KS-v4, Remark 2.37, p.29; Remark 3.21, p.41, KS-v4 line 1266.)

One proof route is to apply P3 logarithm-comparison, then the Hodge edge morphism. Characterize both classes by their normalized residue and the vanishing computation.

**Checks.**

- The de Rham degree is 2d−1, distinct from the coherent degree d−1.
- Residue compatibility is checked rather than inferred from an isomorphism of unrigidified bundles.
- Do not use this field-base comparison as a theorem giving an absolute logarithm-sheaf connection over an arbitrary arithmetic model.

*Needs:* §1.3; §1.4; AbelianSchemesAndArithmeticModuliPartII P3.3.

### Examples

For d=1 the free-group cap is R→R, r↦r. Extending it to Γ=μ₂ with the full-index rule would require 1↦1/2; in ℤ₂ this is not an integral map. The refinement at a nonunit conductor uses the identity splitting of B instead.

### Dependencies

Earlier layers 0, 1; AbelianSchemesAndArithmeticModuliPartII P2.5; AbelianSchemesAndArithmeticModuliPartII P2.1; SchemeAndStackFoundations §2.23 (gap:equivariant-poincare-limit); Mathlib `NumberField.Units.logEmbeddingEquiv`; Mathlib `NumberField.Units.instZLattice_unitLattice`; AbelianSchemesAndArithmeticModuliPartII P0.4–P0.5; AlgebraicTopology Stage 5 items 3–4 and Stage 8.8 (gap:group-torus-comparison); AlgebraicTopology Stage 6 (gap:torus-cap-projection); AbelianSchemesAndArithmeticModuliPartII P2.4; AbelianSchemesAndArithmeticModuliPartII P2.7; ComplexMultiplicationAndExplicitReciprocity §1.3; AbelianSchemesAndArithmeticModuliPartII P3.3. The individual statement and proof-route inputs are specified above.

## Layer 3: Analytic representatives and current normalization

### 3.1 Unit Borel model and relative Dolbeault complex

For torsion-free Γ of rank d−1 set EΓ={(r_i)>0:∏r_i=1} with γ·r=(|σ_iγ|²r_i), and BΓ=Γ\EΓ. On A(ℂ) let γ·z=(σ_iγ⁻¹z_i). The product action gives the Borel model. Define relative bidegrees by E^(1,0)=pr_A*E_A^(1,0) and E^(0,1)=pr_A*E_A^(0,1)⊕pr_E*E_E¹. The real dimension is 3d−1 and the maximum bidegree is (d,2d−1). With the imported smooth Poincaré connection, the complex of Γ-invariant (d,•)-forms with its ∇″ differential computes the equivariant coherent class at each finite level; assemble the pro-model using the verified inverse-limit comparison.

Assume standard complex datum; torsion-free Γ; compact torus BΓ from the unit theorem.

(KS-v4, §3.2, equation (3.2.1), Definition 3.7 and Lemma 3.8, pp.33–34, KS-v4 line 1456.)

The construction has the following API.

- H_(γr)(γz,γw)=H_r(z,w) for H_r(z,w)=Σr_i z_i barw_i.
- The Γ-invariant relative Dolbeault complex calculates the stated equivariant coherent cohomology.
- The ordered coordinates r₁,…,r_(d−1) give the orientation used by critical cap evaluation.

One proof route is to use the generic Borel comparison requested from SchemeAndStackFoundations §2.23. Combine the relative real de Rham resolution on EΓ with AbelianSchemesAndArithmeticModuliPartII P3.4 Dolbeault resolution on A. Verify the product action preserves the r-dependent Hermitian metric and the bidegree.

**Checks.**

- For d=1 the constraint r₁=1 leaves EΓ a point.
- Multiplying z_i by σ_iγ⁻¹ and r_i by |σ_iγ|² leaves r_i|z_i|² fixed; using γ instead breaks this test.
- At d=2 the model has real dimension five and currents have complementary second degree 3−q, not 2−q.
- For d=1, EΓ is a point and the model reduces to the ordinary Dolbeault complex on A.
- The group action on z is inverse to that on units, while r scales by absolute squares.

*Needs:* §0.2; §1.2; AbelianSchemesAndArithmeticModuliPartII P3.2/P3.4; SchemeAndStackFoundations §2.23 (gap:equivariant-poincare-limit); Mathlib `NumberField.Units.logEmbeddingEquiv`; Mathlib `NumberField.Units.instZLattice_unitLattice`.

### 3.2 Relative currents and residue-normalized integration

For 0≤p≤d and 0≤q≤2d−1, on A(ℂ)×EΓ define D^(p,q) as the continuous dual of compactly supported smooth test forms of bidegree (d−p,2d−1−q), with their usual inductive-limit smooth topology; outside these ranges the current spaces are zero. For a smooth form ω its current is η↦∫η∧ω; extend the differential by (∇″T)(η)=(−1)^(3d−1−p−q)T(∇″η) for a (p,q)-current and dual connection on the tests. This sign follows from Stokes with the order η∧ω; on the (d,q) complex it is (−1)^(2d−1−q). Construct the Γ-equivariant bundle-valued finite-level current complex and prove the inclusion from forms is a quasi-isomorphism. Fix its local Thom/residue normalization to match the algebraic support trace used in Layer 1; in particular the current δ_t·vol has residue the rigidified unit at t. These are the relative bigraded complexes specific to the unit Borel model; the generic test topology and regularization are the C5.4 current calculus, and the mixed-bidegree connection resolution uses the specified extension contract.

Assume the Borel model; smooth Poincaré coefficients at finite levels; compact supports for tests.

(KS-v4, Definition 3.9 and Corollary 3.10, p.34; Corollary 3.22, p.41, KS-v4 line 1486.)

The construction has the following API.

- A smooth (p,q)-form defines a continuous functional on compact test forms by η↦∫η∧ω.
- The dual differential agrees with the smooth differential on embedded forms, with the graded sign from Stokes.
- The finite-level form/current inclusion is a Γ-compatible quasi-isomorphism and preserves the local residue trace.

One proof route is to use C1 local regularization and its homotopy to compare smooth forms and currents, then glue by fine resolutions. Apply the comparison equivariantly at finite levels and retain pro-compatibility. Compute the local oriented-disc residue of δ_t·vol to fix the trace convention, not just its absolute scalar.

**Checks.**

- For d=1 a (1,0)-current tests (0,1)-forms, so their wedge is top real degree two.
- A single point Thom current pairs to 1 against a test function equal to 1 near that point under the chosen residue convention.
- A discontinuous algebraic functional on the smooth test-form space is excluded, even if it has the correct linear type.
- Continuity of the linear functional is required; the algebraic dual alone is too large.
- The order η∧ω is used consistently in differentiation, contraction and fibre integration.
- In real dimension two at (p,q)=(1,0), Stokes gives ∫η∧dω=−∫dη∧ω; the differential sign is −1. Reversing the order of the two one-forms reverses their wedge sign.

*Needs:* §3.1; Hyperfunctions HF2.AnalyticPreparation.CurrentResolution; AbelianSchemesAndArithmeticModuliPartII P3.2/P3.4; ComplexComparisonPartII C1.1 (gap:borel-bundle-currents); ComplexComparisonPartII C5.4 (gap:current-residue-trace).

### 3.3 Generalized Eisenstein–Kronecker series

For a full lattice Λ⊂ℂ^d, H(z,w)=Σh_i z_i barw_i with h_i>0 and alternating pairing ⟨z,w⟩=Im H(z,w), define K^ν(H,z,w,s,Λ)=Σ_(λ∈Λ,λ≠−z) overline(z+λ)^ν · exp(2πi⟨λ,w⟩)/‖z+λ‖_H^(2s). The numerator is antiholomorphic. The positive real power is defined through its real logarithm before analytic continuation. Define Λ*={ℓ:⟨ℓ,Λ⟩⊂ℤ} and the completed Mellin function M^ν(s)=π^(−s)Γ(s)K^ν(s). In Re(s)>d+|ν|/2 the series converges absolutely and normally on compact sets with a uniform distance from nonomitted lattice singularities. Periods and the chosen H fix the covolume vol_HΛ. The simple native formulas are `hermitianPairing`, `kroneckerTerm` and `kroneckerSeries`: the squared norm denominator is exp(s log H(z+λ,z+λ)), and the term λ=−z is zero by an explicit branch. A lattice is a `Submodule` of Fin d → ℂ with `DiscreteTopology` and `IsZLattice` over ℝ.

Assume ν∈ℕ^d; full real rank 2d lattice; positive diagonal Hermitian form.

(KS-v4, Definition 3.11 and Remark 3.12, p.35, KS-v4 line 1506.)

The construction has the following API.

- For a∈Λ, translation gives K(H,z+a,w,s,Λ)=exp(−2πi⟨a,w⟩)K(H,z,w,s,Λ); for b∈Λ*, translating w by b leaves K unchanged.
- Absolute convergence holds in Re(s)>d+|ν|/2, locally uniformly away from moving lattice singularities.
- In the convergence region M^ν=π^(−s)Γ(s)K^ν; continuation respects this identity.

One proof route bounds the numerator by a constant times ‖z+λ‖^|ν| and applies Mathlib `ZLattice.summable_norm_sub_rpow` with exponent |ν|−2Re(s)<−2d after equivalence of positive Hermitian and ambient norms. Construct the holomorphic-in-s sum in the convergence half-plane and its translation/multiplicative characters; reserve the continued object for the next target.

**Checks.**

- For d=1, ν=0, H standard and z=w=0, K is Σ_(m,n)≠(0,0)(m²+n²)^(−s).
- For ν=1 and z+λ=i the numerator is −i, rather than i.
- For z∈Λ the λ=−z term is excluded and never evaluated as 0 divided by 0.
- A term with λ=−z is omitted before applying logarithms.
- K and M are separate names; their residues are not interchangeable.
- For the square lattice the continued K(0)=−1, whereas the total sum at s=0 of the divergent unit terms is 0; the continuation cannot be defined by that total sum.
- With H standard, z=1/2 and w=i/2, the translation multiplier for a=1 is exp(πi)=−1. For zero Hermitian coefficients the squared norm of 1 is 0 and the total real logarithm would give log(0)=0, hence the spurious exponential denominator 1; positivity excludes this model.
- In d=2 at z+λ=(1,0), ν=(0,0) gives numerator 1 while ν=(0,1) gives 0. The vector is retained in the sum; only the entire zero vector is omitted.

*Needs:* Mathlib `IsZLattice`; `ZLattice.summable_norm_sub_rpow`; `Complex.Gamma_eq_integral`.

### 3.4 Poisson continuation with completed residues

K^ν extends meromorphically, and its completion satisfies M^ν(H,z,w,s,Λ)=exp(2πi⟨w,z⟩)/vol_HΛ · M^ν(H,w,z,d+|ν|−s,Λ*). The possible simple residues of M are −δ_(ν=0,z∈Λ) exp(2πi⟨−z,w⟩) at s=0 and δ_(ν=0,w∈Λ*)/vol_HΛ at s=d. Hence K is regular at zero and, when ν=0 and w∈Λ*, has residue π^d/(Γ(d)vol_HΛ) at d. These are corrected normalization statements, not the uncompleted residues attributed in Proposition 3.13. The headline `kronecker_meromorphic_continuation` states existence of a meromorphic F agreeing by `HasSum` with this series for Re(s)>d+|ν|/2, analytic at every s≠d and also at d for ν≠0. At d, (s−d)F(s) has an analytic extension. It does not assign the total sum at divergent s to the continuation.

Assume kronecker-series hypotheses; the dual and volume use the same alternating pairing.

(KS-v4, Proposition 3.13 and its theta transformation proof, pp.35–36, KS-v4 line 1521.)

One proof route is to choose a real lattice basis and reduce lattice Poisson summation to iterated native SchwartzMap.tsum_eq_tsum_fourier on ℤ. Transform the Gaussian using native fourier_gaussian_innerProductSpace, differentiate to obtain the antiholomorphic moments, and retain the linear-change determinant/covolume. Absolute Schwartz decay justifies the iteration and differentiation. Retain the phase exp(2πi⟨w,z⟩), split the Mellin integral at t=1 and isolate the zero-frequency terms. Multiply by π^s/Γ(s) only after calculating residues of M.

**Checks.**

- Applying the functional equation twice gives identity using vol(Λ*)=vol(Λ)⁻¹ and ⟨z,w⟩=−⟨w,z⟩.
- For Λ=ℤ[i], K⁰(s) has residue π at 1 and no pole at zero.
- For H standard, z=1/2 and w=i/2, ⟨w,z⟩=1/4 gives phase i; the reversed order gives −i. Applying the functional equation again multiplies the phases to 1.

*Needs:* §3.3; Mathlib `SchwartzMap.tsum_eq_tsum_fourier`; Mathlib `fourier_gaussian_innerProductSpace`; Mathlib `mellin`; Mathlib `Complex.Gamma_eq_integral`.

### 3.5 Residue-normalized Eisenstein–Kronecker current

Let vol(A)=∫_A ∧_i(dz_i∧dbarz_i)=(-2i)^d times the positive real covolume of Λ, so vol(A)≠0. Put C=(2πi)^d/vol(A), vol=C·∧_i(dz_i∧dbarz_i), χ_ℓ(z)=exp(2πi⟨ℓ,z⟩), and v_ℓ=Σ_i(barℓ_i/r_i)∂/∂barz_i for ℓ in the standard alternating dual lattice. For b,j≥0 set Φ_s^(b,j)=(-1)^(j+b)Γ(s)/j! · Σ_t h(t) Σ_(ℓ≠0) v_ℓ^[b] χ_ℓ(z−t) (π‖ℓ/√r‖²)^(−s) ι_(v_ℓ)(dι_(v_ℓ))^j vol. Define Φ^(n)=Σ_(b≤n,0≤j<d) Φ_(b+j+1)^(b,j), by meromorphic regularization in the current topology. Terms with j≥d vanish. The factor (-1)^b corrects the inverse-power binomial expansion in the d+ν convention. With u_i=dr_i/r_i and E=−Σr_i∂_(r_i), contraction has coefficient (-1)^(j+1)j! C in the epsilon expansion of Lemma 3.16; at j=d−1 it is (-1)^(d(d+1)/2)d! C·(barℓ/r)^1·(∧_(i<d)u_i)∧(∧_i dz_i). Away from D these currents are smooth and have the corresponding K-series expressions.

Assume split torsion residue data after a permitted scalar extension; Σ_t h(t)=0; finite symmetric level n. The normalization of currents is the one in §3.2.

(KS-v4, Definitions 3.15 and 3.18, pp.37–39; Lemma 3.16, p.37; Proposition 3.17, p.38; binomial expansion in proof of Theorem 3.20, p.41, corrected for the contraction and binomial signs, KS-v4 line 1598.)

The construction has the following API.

- Truncating symmetric degree from n+1 to n carries Φ^(n+1) to Φ^(n).
- The epsilon and top contraction coefficients are the corrected ones stated above; all j≥d terms vanish.
- On U the current is the smooth regularized Kronecker expression with factor (-1)^(b+1) relative to the displayed expression of Proposition 3.17.

One proof route is to use polynomial-growth Fourier coefficients to define distributions, then apply the Mellin continuation to regularize and identify the smooth expression away from the support. Compute ι_v dz_i∧dbarz_i=−(barℓ_i/r_i)dz_i and d(barℓ_i/r_i)=−(barℓ_i/r_i)u_i; the exterior algebra expansion gives the stated coefficient. Expand (A+v)^(-j−1) with coefficient (-1)^b binomial(j+b,b), retaining divided-power conversion.

**Checks.**

- For d=1, ι_v(dz∧dbarz)=−v·dz.
- For d=2 and u₂=−u₁ the top contraction is −2C v₁v₂ u₁∧dz₁∧dz₂.
- (A+v)⁻¹=A⁻¹−vA⁻² modulo v²; using a positive linear term fails the flat-connection differential equation.
- In d=1,b=0 the contraction is −C·barℓ/r·dz; changing it to +C reverses the residue. For the square lattice vol(A)=−2i and C=−π, giving +π·barℓ/r·dz.
- The b=1 coefficient has the opposite sign to b=0, as required for cancellation in d+ν.
- The j=d−1 top coefficient at d=2 is −2C, and at d=3 is +6C.

*Needs:* §3.2; §3.4; AbelianSchemesAndArithmeticModuliPartII P3.2/P3.4; AbelianSchemesAndArithmeticModuliPartII P0.3/P0.5.

### 3.6 The current realizes the coherent class

The corrected compatible current Φ satisfies ∇″Φ=δ_h·vol and is ∇″-closed on U. Under the trace-normalized current/coherent comparison it represents EK_Γ(h). Its flat universal-extension image represents the equivariant de Rham polylogarithm. The zero Fourier term disappears because Tr(h)=0; no unregularized pointwise convergence at a torsion pole is asserted.

Assume corrected current, residue convention, torsion-free Borel model and finite-level comparison.

(KS-v4, Definition 3.19, Theorem 3.20 and Corollary 3.22, pp.39–41, with the contraction and binomial signs, KS-v4 line 1795.)

One proof route starts at large Re(s), differentiates termwise in the current topology and telescopes in symmetric degree. Continue the identity and use trace zero to remove the constant mode. Verify the supported residue is precisely h in the algebraic normalization; uniqueness in localization then identifies the class.

**Checks.**

- Check b=0 and b=1 directly in dimension one to test the d+ν cancellation.
- Residue equality includes the orientation sign, not only an unspecified nonzero scalar.

*Needs:* §3.5; §1.3; §2.6.

### Examples

For the square lattice, ν=z=w=0, the uncompleted series has residue π at 1 and is regular at 0. The completed residues are 1 at 1 and −1 at 0. For d=2 the top contraction is −2C v₁v₂ u₁∧dz₁∧dz₂; in dimension three its coefficient is +6C.

### Dependencies

Earlier layers 0, 1, 2; AbelianSchemesAndArithmeticModuliPartII P3.2/P3.4; SchemeAndStackFoundations §2.23 (gap:equivariant-poincare-limit); Mathlib `NumberField.Units.logEmbeddingEquiv`; Mathlib `NumberField.Units.instZLattice_unitLattice`; ComplexComparisonPartII C1.1 (gap:borel-bundle-currents); ComplexComparisonPartII C5.4 (gap:current-residue-trace); Mathlib `Complex.Gamma_eq_integral`; Mathlib `SchwartzMap.tsum_eq_tsum_fourier`; Mathlib `fourier_gaussian_innerProductSpace`; Mathlib `mellin`; AbelianSchemesAndArithmeticModuliPartII P0.3/P0.5. The individual statement and proof-route inputs are specified above.

## Layer 4: Orbit sums and explicit critical classes

### 4.1 Eisenstein series over unit orbits

For an O_L-fractional lattice Λ⊂ℂ^Σ, a torsion class t∈(ℚ⊗Λ)/Λ, and Γ preserving Λ, define E^(β,α)(t,s;Λ,Γ)=Σ′_(λ∈Γ∖(Λ+Γt)) barλ^β/(λ^α N(λ)^s), where N(λ)=∏_σ|λ_σ|² and zero is omitted. Require β−α∈CI_L(Γ), so the summand is well-defined on orbits. Initially take Re(s)>d+(|β|−|α|)/2 and then its meromorphic continuation supplied by fibre integration. The value depends on the Γ-orbit of t. For subgroup changes the orbit multiplicities, including any finite torsion, are explicit.

Assume α strictly positive on Σ; β≥0 on barΣ; lattice and unit actions compatible.

(KS-v4, Definition 3.24 and Lemma 3.25, p.43; Lemma 3.25, KS-v4 line 2007.)

The construction has the following API.

- Changing a representative t within its Γ-orbit modulo Λ leaves E unchanged.
- If Γ fixes t modulo Λ then E(t,s;Λ,Γ′)=[Γ:Γ′]E(t,s;Λ,Γ). In general let t_i represent Γ′-orbits in Γt; then Σ_i E(t_i,s;Λ,Γ′)=[Γ:Γ′]E(t,s;Λ,Γ).
- For c∈L×, homothety gives E^(β,α)(ct,s;cΛ,Γ)=barc^β c^(−α)N(c)^(−s)E^(β,α)(t,s;Λ,Γ).

One proof route is to check the Γ-invariance of the summand using the critical weight and |Norm γ|=1. Use the convergence estimate for a unit fundamental domain; obtain continuation from the next target rather than assuming a value at s=0.

**Checks.**

- For L=ℚ(i), Γ=μ₄ and α=4, β=0, one Γ-orbit contributes once, whereas the full lattice sum contributes four times.
- For Γ=μ₄ the weight α=1, β=0 is not invariant and cannot define an orbit sum with that Γ.
- At t=0 the zero vector is excluded even when the continuation at s=0 exists.
- For L=ℚ(i), Γ=μ₄, Γ′=1 and t=1/3 mod ℤ[i], the four translates are distinct. With α=4, β=0 each single-coset Γ′ series equals the Γ series, not four times it; summing the four Γ′ torsion orbits supplies the factor four.
- The λ=0 orbit is always omitted.
- An unrestricted lattice sum counts unit orbits infinitely often and is not this definition.

*Needs:* §0.1; §3.3.

### 4.2 Fibre integration of Kronecker series

Let Γ be torsion-free and let T_Γ(t′) be the finite orbit of the torsion class t′ in (ℚ⊗Λ)/Λ. For critical β−α with α≥1, Γ(α+s)E^(β,α)(t′,s;Λ,Γ) equals d·Σ_(t∈T_Γ(t′))∫_(BΓ) Γ(|α|+ds)·K^(β+α)(H_r,t,0,|α|+ds,Λ)·∏_i(πr_i)^(α_i+s)/π^(|α|+ds) ·∧_(i<d)dr_i/r_i. Here Γ(α+s)=∏_iΓ(α_i+s). The leading d is the Jacobian of (r,u)↦(ur_i) on the product-one r-torus. Establish the equality in the convergence half-plane and its meromorphic continuation to the regular critical evaluation. The sum is over every torsion point in the orbit, not over one orbit representative.

Assume orbit-series hypotheses; convergence half-plane for initial unfolding; torsion-free Γ.

(KS-v4, Lemma 3.26, p.44, KS-v4 line 2029.)

One proof route is to unfold BΓ and the unit orbit simultaneously; use absolute convergence for Tonelli/Fubini initially. Substitute positive coordinates to evaluate the product gamma integral. Continue the identity meromorphically and evaluate at the regular critical point.

**Checks.**

- The product gamma factor at s=0, α=a+1, equals a!.
- For d=1 there is no r-integral and the identity reduces to the gamma factor times the lattice orbit sum.
- The Jacobian factor is d: at d=2, dlog(ur₁)∧dlog(ur₂) has absolute coefficient 2 in dlog u∧dlog r₁.

*Needs:* §4.1; §3.4; §3.1; Mathlib `Complex.Gamma_eq_integral`; Mathlib `mellin`.

### 4.3 Explicit critical class in analytic and algebraic bases

For torsion-free Γ the corrected conventions give EK^(β,a)_Γ(h,x)=ε(d,β)·a!·Σ_(t∈Γ\D) h(−t)E^(β,a+1)(t+x,0;Λ,Γ) dz^[a+1]⊗ubar^[β], where ε(d,β)=(-1)^(d(d−1)/2+|β|+1). The top-degree BΓ representative is the top contraction of the corrected current, projected to (a,β), differentiated by a, and evaluated at x; thus it has this same sign relative to Proposition 3.23. In the algebraic bases replace ubar^[β] by q^(−β)ω_A∨^[β], q=⟨barω_A,ω_A∨⟩_dR. The period conversion is Ω∨=2πi q/barΩ, so both the conjugation in q and this factor survive the comparison. For torsion Γ use only the localized normalization of Layer 2. The formula includes the residue-to-current and orientation compatibility. Section 8.3 extends that comparison to canonical p-adic moments; the local contraction calculation alone does not determine the final interpolation sign.

Assume standard datum, x outside D; β−a−1 critical; torsion-free Γ for the integral cap. The analytic trace convention of §3.2 is used.

(KS-v4, Proposition 3.23, p.42; Theorem 3.27 and Corollary 3.28, pp.44–45; the contraction and binomial signs and the residue/orientation comparison, KS-v4 line 2094.)

One proof route is to extract the top (d−1)-form in r from Φ; the contraction and symmetric-degree signs multiply the printed formula by (-1)^(|β|+1). Apply the fibre integral and compare the divided-power versus ordinary monomial bases. Use the CM period pairing to pass to algebraic bases. Verify the local coherent trace comparison of §3.2 and the oriented cap before identifying the coefficient.

**Checks.**

- At d=1, β=0 the proposed corrected coefficient is −a!, and at β=1 it is +a!.
- At d=2, β=0 the coefficient is +a!; omitting the original dimension sign reverses it.
- The pairing uses barω_A; writing ω_A without conjugation changes q.

*Needs:* §3.6; §2.2; §4.2; ComplexMultiplicationAndExplicitReciprocity §1.3; AbelianSchemesAndArithmeticModuliPartII P0.4–P0.5.

### Examples

With Γ=μ₄, Γ′=1, t=1/3 modulo ℤ[i], α=4 and β=0, the four translated torsion classes are distinct. Each individual Γ′-coset series equals the Γ-orbit series; their sum has multiplicity 4. For d=2 the logarithmic Jacobian has absolute value 2.

### Dependencies

Earlier layers 0, 1, 2, 3; Mathlib `Complex.Gamma_eq_integral`; Mathlib `mellin`; ComplexMultiplicationAndExplicitReciprocity §1.3; AbelianSchemesAndArithmeticModuliPartII P0.4–P0.5. The individual statement and proof-route inputs are specified above.

## Layer 5: Periods and integral critical Hecke values

### 5.1 Ideal structures and compatible complex periods

An a-structure is an O_L-linear isomorphism ξ_a:a≃H₁(A(ℂ),ℤ), extended L-linearly on rational homology; it is not a generator of the possibly nonprincipal ideal a. The trace pairing identifies the dual lattice with a⁻¹d_L⁻¹, producing ξ_a∨. For an O_L-structure set Ω=⟨ω_A,ξ_L(1)⟩ and Ω∨=⟨ω_A∨,ξ_L∨(1)⟩. The algebraic de Rham pairing q=⟨barω_A,ω_A∨⟩ satisfies Ω∨=2πi q/barΩ. On A(a)=a⊗_(O_L)A the induced periods remain Ω and the lattice becomes aΩ. For a=f b⁻¹ transport bases by [f]*([b]*)⁻¹ when these maps are étale. The point Ω mod fΩ on A(f), after making it R-rational, transports under [b] to Ω mod f b⁻¹Ω. Serre construction from K repeats the K-periods on the embeddings above each embedding of K.

Assume standard datum; imported integral Betti/de Rham pairing and CM Serre tensors. The dual ideal includes the inverse different; isogeny base changes retain all chosen bases and rationality of x_Ω.

(KS-v4, Definitions 4.3 and 4.5, Proposition 4.6, pp.47–48; Proposition 4.7, pp.48–49; Definition 4.8, p.50; §4.5, pp.53–54, KS-v4 line 2231.)

The construction has the following API.

- A(a)(ℂ)≃ℂ^Σ/(aΩ) with the transported differential bases.
- Ω∨=2πi q/barΩ componentwise, for the trace-dual Betti structure.
- Transport along [f] and [b] agrees with the Serre tensor identification when their cotangent maps are isomorphisms.

One proof route is to use the imported CM period pairing and its trace-dual description. Tensor the integral Betti lattice and Lie comparison with a, rather than choosing a principal generator. Compute the bilinear pairing between differential bases to obtain the 2πi factor and conjugation.

**Checks.**

- An a-structure for a nonprincipal ideal still exists in the formulation; replacing it by a single integral generator is disallowed.
- Replacing ω_A by uω_A multiplies Ω by u and changes q by baru, with the dual period relation still valid.
- For an imaginary quadratic lattice O_KΩ, its trace-dual lattice is d_K⁻¹ rather than O_K unless the different is trivial.
- A nonprincipal ideal is permitted and does not require ξ_a(1) to be integral; use its rational extension for that notation.
- The same Ω is used for all ray-class representatives.
- For K=ℚ(i), the different is (2i), so the trace-dual lattice of ℤ[i] is (1/(2i))ℤ[i]. Its basis pairings satisfy Tr(1·1/2)=1 and Tr(i·(−i/2))=1.

*Needs:* §0.2; ComplexMultiplicationAndExplicitReciprocity §1.3; AbelianSchemesAndArithmeticModuliPartII P2.4.

### 5.2 Critical-value normalization

For α:Σ→ℕ with α≥1 and β:barΣ→ℕ set 𝒩_(α,β)(v)=(∏_σ(α_σ−1)!)·(2πi)^(Σβ)·v/(Ω^α(Ω∨)^β), with all period coordinates nonzero, since they compare the chosen Betti and differential bases. Here Ω^α and (Ω∨)^β are products over their respective embedding sets and no factorial of a total degree is substituted for the product. This normalization is ℂ-linear in v. It is defined for any complex value; algebraicity and integrality of particular L-values are theorem targets, not fields of this definition.

Assume nonzero complex periods with specified bases; positive α; β≥0.

(KS-v4, Theorem 4.9, p.50; Theorem 4.10, p.51; Theorem 5.27, p.74, KS-v4 line 2353.)

The construction has the following API.

- 𝒩_(α,β)(u+v)=𝒩(u)+𝒩(v) and 𝒩(cv)=c𝒩(v).
- For coordinatewise nonzero scaling factors u and v, replacing Ω by uΩ and Ω∨ by vΩ∨ multiplies the result by u^(−α)v^(−β).
- For α=1, β=0 the normalizer is division by ∏Ω_σ.

One proof route is to use finite products and ordinary complex powers on these carriers. Derive the scaling rules directly, keeping Σ and barΣ separate.

**Checks.**

- In d=1, α=3 and β=0 the normalizer is 2v/Ω³.
- In d=1, α=2 and β=1 it is (2πi)v/(Ω²Ω∨).
- 𝒩_(α,β)(0)=0 even when all periods are nonzero; this prevents an erroneous target in algebraic units.
- A zero special value stays zero; the normalization has no nonvanishing axiom.
- Changing α from 2 to 3 in one coordinate introduces the required 2! factor.

*Needs:* §5.1; §0.1.

### 5.3 Partial Hecke L-functions as unit-orbit series

Use the ideal-theoretic convention χ((λ))=λ^(β−α) for λ≡1 mod f. For a ray class [b] prime to f, L_f(χ,s,[b])=χ(b)Nb^(−s) E^(β,α)(1,s;f b⁻¹,O_f×). The L-function is the AutomorphicLFunctionsAndLocalFactors AL.1 Hecke L-function with the following explicit normalization: if μ(σ)+μ(barσ)=w, set χᵘ(a)=χ(a)Na^(−w/2), so L_f(χ,s)=L_f(χᵘ,s−w/2). At finite uniformizers the idelic unitary avatar takes value χᵘ(v); its archimedean component is fixed by triviality on L×. Apply AutomorphicLFunctionsAndLocalFactors AL.1 in that convention, transporting its gamma factors through the same shift. At s=0 the identity supplies its critical value, and finite sums over the ray classes give L_f(χ,0). For f=O_L omit the zero vector in the lattice sum.

Assume χ algebraic critical of conductor f; b integral prime to f; ideal/Artin convention fixed.

(KS-v4, Lemma 4.2 and equations (4.1.2)–(4.1.3), p.47, KS-v4 line 2213.)

One proof route identifies the ideals in a fixed ray class with generators in 1+f b⁻¹ modulo O_f×. Check χ and norm factors on a principal ideal, then continue the equality from its absolute convergence domain.

**Checks.**

- At b=O_L the coefficient is χ(b)Nb^(−s)=1; for a general b its factor is χ(b), so replacing it by its inverse reverses the principal-generator relation.
- The unitary norm shift is s−w/2; for χ(a)=Na^m it reduces to ζ_L(s−m), since w=2m.
- For the norm character χ(a)=Na and w=2, χᵘ=1 and the shifted function is ζ_L(s−1); using s+1 gives the wrong Euler denominator 1−Nv^(−s−1).

*Needs:* §4.1; GlobalNumberFields Layers 9–10 (gap:hecke-padic-avatar); AutomorphicLFunctionsAndLocalFactors AL.1, “Rank-one specialisation and Hecke comparison”.

### 5.4 Integrality of normalized Eisenstein sums

Let f,b,c be pairwise coprime integral ideals, a=f b⁻¹, and use the O_L-structured based abelian scheme and the R-rational x_Ω from §5.1. For a trace-zero O_f×-invariant torsion function h, prove 𝒩_(α,β)(Σ_(t∈O_f×∖(c⁻¹a/a)) h(−t)E^(β,α)(t+1,0;a,O_f×))∈R[1/(f N(bc))]. Begin with the torsion-free-group formula, where the refined evaluation is integral, then justify the passage to the normalized full unit-orbit sum. When a torsion index is a unit its division is valid; when it is not, prove the specific divisibility statement for these residue classes. That latter passage is the integral unit-index descent of §5.4, not a consequence of the false unrestricted transfer claim. More precisely, integral full-unit descent must prove that for every finite-index torsion-free Γ₀⊂O_f× fixing the data, the oriented class EK_Γ₀ lies in [O_f×:Γ₀] times the integral critical tensor line whenever the full-unit normalized value is claimed integral; for theta and measure coefficients the divisibility holds in their entire integral coefficient modules. This is a special-residue theorem, not surjectivity of transfer on arbitrary cohomology.

Assume α≥1, β≥0 critical; h∈R[1/Nc][D]^(0,O_f×); x avoids D. The common period data and all cotangent transports are fixed.

(KS-v4, Theorem 4.9 and equation (4.3.1), pp.50–51, KS-v4 line 2353.)

One proof route is to apply §2.5 to A(a)→A(b⁻¹) with the bases [f]*([b]*)⁻¹ω_A and [b]_#ω_A∨. Use §4.3 and Ω∨=2πi q/barΩ; the remaining sign is a unit and does not affect integrality. Track the stated ideal and norm localizations and complete the full-unit divisibility argument.

**Checks.**

- The theorem does not assume Nf is globally invertible in the initial datum.
- A proof that only gives |tors(O_f×)| times the claimed value integral is insufficient when that integer is a nonunit.

*Needs:* §2.5; §4.3; §5.1; §5.2; §2.3.

### 5.5 Torsion distribution and the smoothing identity

For a=f b⁻¹ and c prime to fb, summing E^(β,α)(t+1,0;a,O_f×) over unit orbits t∈c⁻¹a/a gives E^(β,α)(1,0;c⁻¹a,O_f×). Thus the trace-zero function h_c=Nc·1_e−1 gives Nc E(1,0;a)−E(1,0;c⁻¹a). This identity uses a disjoint decomposition of the actual unit-orbit sets, not a sum over every point followed by division by the unit-group size.

Assume critical indices; pairwise coprime integral f,b,c; evaluation class 1 modulo a.

(KS-v4, Equation (4.4.1) and Proposition 4.12, p.52, KS-v4 line 2442.)

One proof route is to decompose c⁻¹a+1 into the Γ-translates of a+t+1 and pass to orbit sets. Prove equality in the convergence region and continue to zero.

**Checks.**

- The first coefficient is Nc, the degree of the ideal isogeny.
- The lattice on the second term is c⁻¹a, not ca.

*Needs:* §4.1; §1.1.

### 5.6 Integral differences of partial critical values

For f≠O_L and the based period datum, 𝒩_(α,β)(χ(c)Nc L_f(χ,0,[b])−L_f(χ,0,[bc]))∈O_E R[1/(f N(bc))], where O_E R is the subring of ℂ generated by R and the integers of the character value field E. χ(b) may have denominators at Nb, so its integrality is proved in O_E[1/Nb] rather than asserted unconditionally.

Assume χ critical of conductor f with values in E; b,c prime to f and each other.

(KS-v4, Corollary 4.13, p.52, KS-v4 line 2463.)

One proof route is to insert h_c into §5.4 and apply the distribution relation. Use §5.3 and prove the denominator statement for χ(b) by raising b to a principal ray-class power.

**Checks.**

- The smoothing difference pairs [b] with [bc] and has χ(c)Nc on the first term.
- The full-unit normalization uses the integral unit-index descent of §5.4.

*Needs:* §5.4; §5.5; §5.3.

### 5.7 Regularized integrality and algebraicity

For χ critical of conductor f and values in E, with the O_L-structure, differential bases and R-rational x_Ω, prove for f≠O_L and c prime to f: 𝒩_(α,β)((χ(c)Nc−1)L_f(χ,0))∈O_E R[1/(f Nc)]. For f=O_L and pairwise coprime c,c′, prove 𝒩_(α,β)((1−χ(c′))(χ(c)Nc−1)L_(O_L)(χ,0))∈O_E R[1/N(cc′)]. Choose k containing E and the field of definition, make the necessary torsion rational and bases free after the allowed extension/localization, and obtain a model R=O_k[1/(d_L f Nc)] in the sense of the indicated ideal localization. Vary the auxiliary ideals and show the smoothing factors can be chosen nonzero; consequently 𝒩_(α,β)(L_f(χ,0))∈k. Zero L-values are allowed.

Assume standard global period data; f integral; c,c′ nonzero integral ideals with the specified coprimality. Good reduction and bases are obtained by an explicitly finite localization/extension, not assumed over every O_k.

(KS-v4, Theorem 4.10 and its proof in §4.4, pp.51–53, KS-v4 line 2413.)

One proof route is to sum §5.6 over ray classes and choose representatives away from each prime at which integrality is tested. For f=O_L introduce c′ and the support excluding the identity, then derive the second smoothing factor. Control changes of model and exhibit nonvanishing smoothing factors to deduce algebraicity.

**Checks.**

- State both conductor cases; omitting (1−χ(c′)) in conductor one is incorrect.
- The claimed algebraicity is in a field, including zero, rather than automatically in its multiplicative group.

*Needs:* §5.6; §5.1; GlobalNumberFields Layers 2, 7 and 9; ClassFieldTheory Layers 11–13 (gap:ray-tower-tame-unit-kernel).

### 5.8 Katz–Shimura algebraicity for totally imaginary extensions

Let μ=β−α=N*_(L/K)(β₀−α₀), with K the maximal CM subfield and Ω₀ the compatible CM periods from a Serre construction. Then [ (2πi)^|β₀| / Ω₀^(α₀+barβ₀) ]^[L:K] ·L_f(χ,0)∈Qbar. Here barβ₀ is the conjugate-index transfer to Σ_K, not an unlabelled complex conjugate of the scalar L-value. The power [L:K] reflects repetition of every K-period among the lifted embeddings.

Assume critical χ and compatible K/L period structures; α₀≥1, β₀≥0.

(KS-v4, §4.5 and equation (4.5.1), p.53; Corollary 4.14, p.54, KS-v4 line 2534.)

One proof route is to construct the L-datum by the imported Serre tensor construction. Use a K-linear polarization only to identify dual and conjugate periods modulo nonzero algebraic factors. Apply §5.7 for algebraicity and count the repeated periods.

**Checks.**

- At L=K the exponent [L:K] is one and the formula matches the CM-field normalization.
- At L=ℚ(i,√(1+i)) the K-period exponent doubles without assuming L is CM.
- The complex algebraicity statement has no p-ordinarity hypothesis; obtain its periods from ComplexMultiplicationAndExplicitReciprocity §1.3 and §5.1, rather than ordinary p-adic period data.

*Needs:* §5.7; §5.1; ComplexMultiplicationAndExplicitReciprocity §1.3.

### 5.9 Deligne period comparison modulo algebraic units

For the Hecke motive M(χ) over L with coefficient field E, assume Res_(L/ℚ)M(χ) is critical in the realization-theoretic sense and fix τ:E→ℂ. Its nonzero period satisfies c⁺_τ(Res M(χ))∼[(2πi)^(−|β₀|)Ω₀^(α₀+barβ₀)]^[L:K], where ∼ means equality modulo Qbar×. Consequently L_f(χ,0)/c⁺_τ∈Qbar. The ratio is in Qbar× only if L_f(χ,0)≠0. No assertion of the sharper E-rationality is made here; this is the weaker period statement in Corollary 4.15 allowing a zero special value.

Assume the Hecke motive, restriction of scalars, realizations and determinant periods supplied by PS.0–PS.1. The criticality of the restricted motive is an explicit assumption.

(KS-v4, Corollary 4.15 and Remarks 4.16–4.17, pp.54–55, KS-v4 line 2551.)

One proof route is to import the motivic norm-pullback and finite-order/Tate comparison needed to compute its determinant period. Compare the resulting period with the Serre CM periods modulo Qbar×. Apply §5.8; keep the nonvanishing of the period separate from the possible vanishing of the L-value.

**Checks.**

- If L_f(χ,0)=0 the conclusion is the algebraic scalar zero.
- This does not identify an E×-ambiguity from a Qbar×-ambiguity.

*Needs:* §5.8; PeriodsAndSpecialValues PS.0; PeriodsAndSpecialValues PS.1.

### Examples

At α=(3,2), β=0 the derivative factorial is 2!·1!=2, whereas the factorial of the total derivative degree is 3!=6. For the period conversion formula at nonzero test coordinates Ω=2, q=1 and d=1, the resulting dual coordinate is πi; rescaling Ω by i changes q to −i and leaves Ω∨=πi. The non-CM quartic over ℚ(i) repeats every base CM period twice.

### Dependencies

Earlier layers 0, 1, 2, 3, 4; ComplexMultiplicationAndExplicitReciprocity §1.3; AbelianSchemesAndArithmeticModuliPartII P2.4; GlobalNumberFields Layers 9–10 (gap:hecke-padic-avatar); AutomorphicLFunctionsAndLocalFactors AL.1, “Rank-one specialisation and Hecke comparison”; GlobalNumberFields Layers 2, 7 and 9; ClassFieldTheory Layers 11–13 (gap:ray-tower-tame-unit-kernel); PeriodsAndSpecialValues PS.0; PeriodsAndSpecialValues PS.1. The individual statement and proof-route inputs are specified above.

## Layer 6: Ordinary levels and p-adic theta coordinates

### 6.1 Ordinary lifted types and CM level structures

Fix a prime p∤d_L, p noninvertible on the arithmetic model, embeddings of algebraic numbers into ℂ and ℂ_p, and a lifted type Σ. It is p-ordinary when the sets of p-adic places induced by Σ and barΣ are disjoint and together cover all places over p; this definition applies to L containing K, without requiring L itself CM. Write O_L⊗ℤ_p=O_L(Σ_p)⊕O_L(barΣ_p). A Γ₀₀(p∞)-structure consists of O_L-equivariant compatible identifications μ_(p∞)⊗O_L(Σ_p)≃A[p∞]^connected and μ_(p∞)⊗O_L(barΣ_p)≃A∨[p∞]^connected. A Γ_arith-structure includes the compatible full connected and étale trivializations. Set p_Σ=∏_(v∈Σ_p)v and A_(n)=A(barp_Σ^n); q_n=[barp_Σ^n]:A_(n)→A is étale, with kernel A_(n)[barp_Σ^n], while its dual is connected. Via Weil pairings these data are equivalent to the specified trivializations of the complementary étale kernels. A prime-to-p ideal Betti structure induces them using the chosen compatible roots exp(2πi/p^n). In particular formal A≃Gm_hat⊗O_L(Σ_p), formal A∨≃Gm_hat⊗O_L(barΣ_p), with character modules the corresponding dual Tate modules. The paired isogeny [p_Σ^n]:A→A_(n) composes with q_n to [p^n]. The primes 2 and 3 are included whenever the stated unramified and ordinary hypotheses hold.

Assume ordinary standard datum over R followed by its chosen map to O_(ℂ_p); f prime to p. Ordinary finite-flat and Weil pairing theory is imported, not developed here.

(KS-v4, Notation 5.1, Definitions 5.2–5.3 and Propositions 5.4–5.6, pp.56–58, KS-v4 line 2633.)

The construction has the following API.

- The p-ordinary lifted type is equivalent to separation of the two place sets, and agrees with the K-condition at unramified p.
- Multiplicative connected levels and complementary étale-kernel levels determine each other through the rigidified Weil pairings.
- The levels identify the Cartier-dual Tate modules of formal A and formal A∨ with O_L(Σ_p) and O_L(barΣ_p).

One proof route is to specialize the generic connected/étale and Cartier-dual theory to the CM idempotent decomposition. Prove equivalence of multiplicative and complementary étale level structures using the two Weil pairings. Transport a prime-to-p Betti ideal structure into the compatible étale levels and identify the formal character modules.

**Checks.**

- For K=ℚ(i) and p=5 the two CM embeddings induce distinct p-places, so the ordinary construction applies.
- For K=ℚ(i) and p=3 both embeddings induce the same inert place, so the ordinary constructor rejects it.
- For L=ℚ(i,√(1+i)) and p=5, the lifted type separates the primes by their restrictions to K and gives a valid ordinary dimension-two datum.
- The bar on barp_Σ in A_(n) is essential: q_n has étale kernel.
- For L=K the predicate specializes to the CM-field place-separation condition.
- On an ordinary Gaussian elliptic reduction at 5 with i acting on Lie by 3, 2+i has differential 0 and connected kernel, while 2−i has differential 4 and étale kernel. The latter is the complementary ideal direction of q_n.

*Needs:* §0.2; §5.1; ComplexMultiplicationAndExplicitReciprocity §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.1.7/R07.1.9/R07.1.13 (gap:ordinary-cm-pairings); AbelianSchemesAndArithmeticModuliPartII P4.1.

### 6.2 Canonical differentials and p-adic periods

The ordinary level structures induce canonical bases ω_can(A), ω_can(A∨) on the cotangent weight lines of the two formal tori. Define unit-valued periods Ω_p and Ω_p∨ by ω_A=Ω_p·ω_can(A) and ω_A∨=Ω_p∨·ω_can(A∨). These are componentwise units because both sides are bases. Prime-to-p O_L-isogenies transport the canonical bases and periods by Lemma 5.8. All algebraic objects are first built over the noetherian model and then base changed to O_(ℂ_p); no noetherianity assertion about O_(ℂ_p) is made.

Assume ordinary based datum, chosen Γ₀₀-levels and compatible embeddings; algebraic bases integral at p.

(KS-v4, Definition 5.7 and Lemma 5.8, p.59, KS-v4 line 2743.)

The construction has the following API.

- Scaling the algebraic basis by a unit u scales Ω_p by u and leaves the canonical basis fixed.
- Transport through a prime-to-p isogeny agrees with the induced level structure and cotangent pullback.
- The periods lie in the unit groups of the corresponding coefficient lines because they compare bases.

One proof route is to pull back invariant dlog differentials from the formal multiplicative groups. Compare the two bases to obtain invertible coordinate ratios; verify isogeny transport on character modules.

**Checks.**

- When the algebraic basis is the canonical one, each p-adic period equals 1.
- Multiplying ω_A by a unit u multiplies Ω_p by u, rather than by u⁻¹.
- Multiplication by p does not produce an integral basis and cannot be used to infer a unit period pΩ_p.
- p-adic periods are not identified with the complex periods; each compares the same algebraic bases with a different canonical basis.
- If an algebraic differential is multiplied by a nonunit, it ceases to be a basis and the unit-period assertion no longer applies.

*Needs:* §6.1; §5.1; AbelianSchemesAndArithmeticModuliPartII P4.2.

### 6.3 The p-adic theta function of a residue class

For a torsion section y∈U killed by an isogeny with étale dual, restrict EK_Γ(h) to the formal neighborhood of y, translate to the identity, and use the imported ordinary Poincaré trivialization on formal A×formal A∨. Cap the resulting degree-(d−1) group-cohomology class with the same torsion-free oriented fundamental cycle and identify det ω_A using ω_can(A). This defines θ_Γ(h,y)∈H⁰(formal A×formal A∨,O). It is integral over O_(ℂ_p). For arbitrary torsion y the same procedure gives a generic-fiber theta function; integrality then requires an extra argument. Restriction to a finite-index torsion-free subgroup scales theta by the subgroup index.

Assume torsion-free Γ fixes y and h; ordinary level structures; h trace zero. Integral version requires the killing dual étale; torsion-normalized Γ requires its order invertible or the integral unit-index descent of §5.4 divisibility input.

(KS-v4, Lemma 5.15, p.63; Definition 5.16 and Lemma 5.17, p.64, KS-v4 line 2941.)

The construction has the following API.

- θ_Γ(h,y) is linear in the trace-zero residue function h.
- For torsion-free Γ′⊂Γ, θ_(Γ′)=[Γ:Γ′]θ_Γ with the same bases.
- The integral theta function maps to its generic-fiber counterpart whenever the killing dual is étale.
- When β=a=0 is critical for Γ, evaluating the formal theta function at the identity gives Ω_p^1 e_(0,0), with the same algebraic-to-canonical determinant conversion as in the Eisenstein moment formula of §7.1. This follows by applying the augmentation before capping.

One proof route is to apply AbelianSchemesAndArithmeticModuliPartII P4.2–P4.3 and their compatibility with the rigidification. Use Lemma 5.15 to cap formal functions with the canonical determinant differential. Check integral and generic constructions agree under the injective base change.

**Checks.**

- θ_Γ(0,y)=0 as a formal function.
- A prime-to-p torsion y has an étale killing dual and gives an integral theta function.
- For y in ker q_n on A_(n), q_n∨ is connected, so this argument gives its theta value only over the generic fiber.
- For torsion-free Γ′⊂Γ of index 2, fixed h,y and unchanged canonical bases, θ_(Γ′)(h,y)=2θ_Γ(h,y), including when p=2; no division by the index is part of this restriction.
- For d=1, Γ=1 and β=a=0, θ(h,y)(0,0)=Ω_p e_(0,0)(h,y). Thus a value with e_(0,0)≠0 cannot be replaced by the zero formal function.
- Do not declare every summand in the translation formula integral.
- The cap convention is identical to §2.2, including the determinant factor responsible for α=a+1.

*Needs:* §1.3; §2.2; §6.2; AbelianSchemesAndArithmeticModuliPartII P4.3; AbelianSchemesAndArithmeticModuliPartII P4.2.

### 6.4 Canonical formal derivatives and embedding monomials

For a≥0 on Σ and β≥0 on barΣ let ∂_A^a∂_(A∨)^β g be the coefficient of the invariant differentiated formal function in the canonical divided-power differential bases, evaluated at the identity. Under the level identification O_L⊗ℤ_p=O_L(Σ_p)⊕O_L(barΣ_p), define t^a s^β(t,s)=∏_(σ∈Σ)σ(t)^a_σ∏_(barσ∈barΣ)barσ(s)^β_barσ through the chosen embeddings into O_(ℂ_p). The generic Amice moment formula identifies these canonical derivatives with monomial integrals. This target specializes that formula to the CM bases and the Hodge moment maps; it does not re-own multivariate Amice theory.

Assume ordinary levels and canonical bases; nonnegative indices; formal functions over O_(ℂ_p).

(KS-v4, Definitions 5.18–5.19 and equation (5.4.1), pp.64–65; Proposition 5.20, p.65, KS-v4 line 2963.)

The construction has the following API.

- For g=(1+T)^m the k-th invariant derivative at zero is m^k.
- Products of the monomials add their multi-indices, t^a s^β·t^c s^δ=t^(a+c)s^(β+δ).
- The moment map in canonical TSym bases agrees with ∂_A^a∂_(A∨)^β, with the stated factorial convention.

One proof route is to identify invariant differentiation on each formal multiplicative coordinate with (1+T)∂/∂T. Apply the imported moment and divided-power conventions, then the character-module embedding map.

**Checks.**

- For g=(1+T)^2 the second invariant derivative at zero is 4; the second ordinary derivative would give 2.
- The (0,0) monomial is 1 everywhere, including at zero.
- In two coordinates, the (1,1) derivative of (1+T₁)^2(1+T₂)^3 at zero equals 6.
- The invariant derivative is not the ordinary ∂/∂T for higher moments.
- The determinant contributes the extra Ω_p factor only when relating theta to EK, not inside the definition of t^a.

*Needs:* §6.1; §6.2; AbelianSchemesAndArithmeticModuliPartII P2.1; PadicMeasuresIwasawaAlgebras §§2.1–2.2 (gap:integral-multivariate-amice).

### Examples

For ℚ(i), p=5 splits into (2+i)(2−i), while p=3 is inert and is rejected by the ordinary constructor. On the formal multiplicative coordinate, the second invariant derivative of (1+T)² is 4, and the mixed (1,1) derivative of (1+T₁)²(1+T₂)³ is 6.

### Dependencies

Earlier layers 0, 1, 2, 3, 4, 5; ComplexMultiplicationAndExplicitReciprocity §0.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.1.7/R07.1.9/R07.1.13 (gap:ordinary-cm-pairings); AbelianSchemesAndArithmeticModuliPartII P4.1; AbelianSchemesAndArithmeticModuliPartII P4.2; AbelianSchemesAndArithmeticModuliPartII P4.3; AbelianSchemesAndArithmeticModuliPartII P2.1; PadicMeasuresIwasawaAlgebras §§2.1–2.2 (gap:integral-multivariate-amice). The individual statement and proof-route inputs are specified above.

## Layer 7: Eisenstein measures and partial Fourier moments

### 7.1 The CM Eisenstein measure and its moments

Let μ_Eis,Γ(h,x) be the bounded O_(ℂ_p)-valued measure on the additive finite free ℤ_p-module O_L⊗ℤ_p corresponding to θ_Γ(h,x) under the basis-independent multivariate Amice isomorphism. Use Mathlib AbstractMeasure for the underlying continuous linear functional. For critical β−a−1 its moments satisfy (Ω_p^(a+1)(Ω_p∨)^β)⁻¹∫t^a s^β dμ_Eis=e_(β,a), the coordinate of EK in the algebraic divided-power bases. More generally the projected noncritical coefficient components vanish under the corresponding Γ-weight condition. Dependence on h is linear and subgroup normalization follows that of theta.

Assume integral theta data; coefficient ring O_(ℂ_p); finite free rank 2d module. The multivariate, coefficient-complete, equivariant Amice contract in the integral multivariate Amice contract is needed; a one-variable field statement alone is insufficient.

(KS-v4, Definition 5.21 and Theorem 5.22, pp.65–66; Proposition 5.20 imported from the general Amice owner, KS-v4 line 3004.)

The construction has the following API.

- All critical monomial integrals satisfy the displayed Ω_p^(a+1)(Ω_p∨)^β formula.
- The construction is linear in h and takes zero residue data to the zero measure.
- The Amice transform of μ_Eis is exactly θ_Γ, independently of a ℤ_p-basis.

One proof route is to apply the inverse Amice equivalence to θ, which has integral bounded coefficients. Compare invariant derivatives, Poincaré moments and the canonical cap with EK. Rescale ω_A and ω_A∨ by their p-adic periods; the exponent on Ω_p is a+1.

**Checks.**

- For the generic Amice test g=(1+T)^m, the measure is δ_m and its k-th moment is m^k; the CM specialization uses that same convention.
- A constant formal function c corresponds to cδ₀, not normalized Haar measure.
- At derivative index a=0 the algebraic-to-canonical moment conversion still contributes one Ω_p in each Σ coordinate.
- At a=β=0 the total mass is Ω_p^1 times the (0,0) EK coordinate, not just that coordinate.
- Transport under an integral basis change of O_L⊗ℤ_p gives the same measure.

*Needs:* §6.3; §6.4; PadicMeasuresIwasawaAlgebras §§2.1–2.2 (gap:integral-multivariate-amice); Mathlib `AbstractMeasure`.

### 7.2 p-power translation with Weil-pairing weights

Let q_n:A_(n)=A(barp_Σ^n)→A be as in §6.1; pull back D and h to D′ and h′. For Γ-invariant s∈A[p_Σ^n], t∈A∨[barp_Σ^n], let s′ be the unique p_Σ^n-torsion lift of s and x′ the unique f-torsion lift of x. Then (T_s×T_t)*θ_(Γ,A)(h,x)=Σ_(u∈ker q_n)⟨u,t⟩_(q_n)·q_(n),# θ_(Γ,A_(n))(h′,x′+s′+u). The equality is interpreted through the formal isogeny identifications in the generic fiber. Its left side is integral; individual right-hand theta functions need not be integral because q_n∨ is not étale.

Assume ordinary theta data, p∤f, Γ fixes the torsion translations.

(KS-v4, Theorem 5.23 and equations (5.5.1)–(5.5.8), pp.66–70, especially integrality remark p.67, KS-v4 line 3058.)

One proof route is to compare the supported residue functions under the Poincaré isogeny and translation diagrams. Identify the multiplier by the rigidified Weil pairing, with the same order of its arguments. Use uniqueness of the localized EK class and the compatibility of formal cap and trivialization.

**Checks.**

- The Weil pairing occurs with the positive power here; the inverse is in the Fourier transform below.
- Integrality of the sum is deduced from the left side, never termwise.

*Needs:* §6.3; §6.1; AbelianSchemesAndArithmeticModuliPartII P4.3; AbelianSchemesAndArithmeticModuliPartII P2.4.

### 7.3 Normalized partial Fourier transform

At level p^n let x∈A_(n)∨[p_Σ^n], y∈A_(n)[p_Σ^n], and z∈A_(n)[barp_Σ^n]. With q_n=[barp_Σ^n]:A_(n)→A, the perfect pairing for [p_Σ^n]:A→A_(n) pairs q_n(y) with x. For a function ρ on the two étale coordinate modules define P_Aρ(y,z)=p^(−dn)Σ_x⟨q_n(y),x⟩_[p_Σ^n]⁻¹ρ(x,z). Fourier transformation acts only in the Σ-direction; the other variable is retained. The generic-fiber denominator p^(dn) is mandatory. Under the complex ideal uniformization this becomes the normalized finite trace-exponential sum exp(−2πi Tr_(L/ℚ)(xy)) in equation (5.5.11), with the ideal-coordinate denominators specified there.

Assume chosen compatible Γ₀₀-levels and primitive p^n-th roots; functions at a finite level; generic coefficient field containing the roots.

(KS-v4, Definition 5.24, p.70; equations (5.5.9)–(5.5.11), pp.71–72, KS-v4 line 3228.)

The construction has the following API.

- A character x↦⟨y₀,x⟩ transforms to the indicator of y=y₀, with the other coordinate retained.
- Summing against the positive pairing in the transformed variable recovers ρ.
- For an inflation ρ_m=ρ_n∘π along the level surjection π:X_m→X_n, the normalized transform is zero at characters nontrivial on ker π. At a character descended from X_n it equals the level-n transform there. In a cyclic coordinate X_n=ℤ/p^n, at m≥n this means zero unless p^(m−n) divides the frequency, and then F_mρ_m(k)=F_nρ_n(k/p^(m−n)); the retained coordinate is simply inflated.

One proof route specializes AutomorphicLFunctionsAndLocalFactors AL.0 finite Fourier orthogonality and inversion to the Weil pairing on the finite group of order p^(dn), then identifies its trace-pairing coordinates. The new statement fixes the CM variables, denominator, retained variable and level maps.

**Checks.**

- The constant function 1 in the transformed variable maps to the delta function at zero.
- The indicator of x=0 maps to the constant p^(−dn), not to 1.
- The positive character ⟨y₀,x⟩ transforms to δ_(y₀), whereas the negative character transforms to δ_(−y₀).
- For the reduction ℤ/4→ℤ/2, inflate the zero-point indicator to the indicator of {0,2}. With ζ₄=i the normalized transform is 1/2 at frequencies 0 and 2, and zero at frequencies 1 and 3. It is supported on the kernel annihilator, rather than a constant inflation in the frequency variable.
- The denominator is the order of one direction, not p^(2dn).
- Fourier coefficients can have p-denominators even when ρ is integral.
- At n=0 both finite groups have order 1, the normalization is 1 and the transform is the identity; no out-of-range frequency is evaluated.

*Needs:* §6.1; §7.2; AutomorphicLFunctionsAndLocalFactors AL.0, “Local Schwartz–Bruhat spaces and finite Fourier levels”.

### 7.4 Locally constant twists of Eisenstein moments

For ρ:O_L/p^nO_L→Qbar and critical β−a−1, (Ω_p^(a+1)(Ω_p∨)^β)⁻¹∫t^a s^βρ(t,s)dμ_Eis(h,x)=Σ_(u∈A_(n)[p^n]) (P_Aρ)(u)·e_(β,a),A_(n)(h′,x′+u). The differential bases on A_(n) and its dual are uniquely transported by the two paired isogenies so that the p-adic periods on the left remain the common periods. Every right-hand term is initially interpreted generically.

Assume finite-level ρ; translation theorem and compatible bases; Γ may be replaced by a subgroup fixing the level, with its index explicitly included.

(KS-v4, Corollary 5.25, pp.71–72, KS-v4 line 3244.)

One proof route is to expand ρ in the finite character basis. Apply theta translation and the Amice invariant-derivative identity to each character. Use partial Fourier orthogonality and transport the bases to obtain the displayed formula.

**Checks.**

- For ρ=1 the identity recovers the original moment formula after the correct distribution sum.
- A level increase does not multiply the integral by the size of the inflated group.

*Needs:* §7.1; §7.2; §7.3; §6.2.

### Examples

For ℤ/4→ℤ/2, inflating the zero-point indicator gives values (1,0,1,0); the normalized Fourier transform is (1/2,0,1/2,0). A constant formal function c corresponds to cδ₀, whose mass is c and whose positive monomial moments vanish.

### Dependencies

Earlier layers 0, 1, 2, 3, 4, 5, 6; PadicMeasuresIwasawaAlgebras §§2.1–2.2 (gap:integral-multivariate-amice); Mathlib `AbstractMeasure`; AbelianSchemesAndArithmeticModuliPartII P4.3; AbelianSchemesAndArithmeticModuliPartII P2.4. The individual statement and proof-route inputs are specified above.

## Layer 8: Ray-class interpolation and bounded desmoothing

### 8.1 Katz’s local factor for a lifted ordinary type

Let χ have infinity type β−α and conductor dividing p∞f. Define χ_fin on (O_L⊗ℤ_p)× by χ((λ))=χ_fin(λ)·λ^(β−α) for λ prime to pf and congruent to 1 modulo f, with μ evaluated at the embedding σ in the exponent. Put Ftilde(x,y)=χ_fin(x⁻¹,y). For each v|p extend its v-component to O_(L,v) by the constant function 1 when v∈Σ_p and that unit-character component is trivial, and by zero off the units otherwise. Let F be the product. Choose ∏_(v∈Σ_p)v^(a_v)=(c)b with c≡1 mod f and b prime to p. Then Local(χ,Σ)=c^(α−β)·(PF)(c⁻¹)/χ(b), where c^(α−β) means (N_(L/K)c)^α₀/(overline(N_(L/K)c))^β₀ in the chosen embedding indices. Prove this scalar is nonzero, independent of the conductor decomposition, and compatible with the AutomorphicLFunctionsAndLocalFactors AL.1 trace-character Gauss-sum convention. Distinguish F from the zero extension of Ftilde; their difference at an unramified Σ-place produces an Euler factor.

Assume ordinary lifted type; embeddings and additive trace character fixed; PF is exactly §7.3. χ_fin uses the ideal-character convention of §5.3, not its inverse.

(KS-v4, §5.6, equation (5.6.1) and Definition 5.26, pp.72–73, KS-v4 line 3373.)

The construction has the following API.

- Two permitted factorizations (c)b of the Σ-conductor give the same scalar.
- At a ramified Σ-place the factor is the normalized trace-character Gauss sum with the inverse finite character and the specified power of the uniformizer.
- For trivial p-local finite character, the constant extension in the Σ-direction gives Local=1 with c=b=1.

One proof route is to choose c by approximation in the required ray congruence class. Factor the finite Fourier transform locally; use primitive-character Gauss-sum nonvanishing and the constant-function orthogonality at trivial Σ-components. Change c by a principal ray element and check the monomial, finite-character and ideal factors cancel.

**Checks.**

- A trivial Σ-component is extended by 1 on the entire local integer ring, including its nonunits.
- For a primitive nontrivial character of a finite local unit quotient, the normalized Fourier coefficient at its conductor frequency is nonzero and includes the factor 1/N(v)^a_v.
- Replacing c by cλ and b by b(λ)⁻¹ for λ≡1 mod f changes the individual factors but leaves Local unchanged.
- For all p-local components unramified take c=b=1; the local factor is 1.
- Replacing the constant extension by zero extension at a trivial Σ-place changes the expression and is rejected.
- At a residue field of order 3, the quadratic unit character has values (1,−1) on (1,2). With inverse additive kernel its conductor-frequency sum is (ζ₃⁻¹−ζ₃⁻²)/3=−i/√3, which is nonzero; replacing the inverse kernel changes its sign.

*Needs:* §7.3; §5.3; AutomorphicLFunctionsAndLocalFactors AL.1, “Local epsilon factors and Gauss sums”.

### 8.2 Auxiliary-ideal smoothing measures

On G_f=Gal(L(p∞f)/L), with arithmetic Artin convention fixed by ClassFieldTheory Layers 11–13, define δ_c=Nc·δ_1−δ_(Art(c)⁻¹). Its value at a continuous character χ is Nc−χ(c)⁻¹. In conductor one also define δ′_(c′)=δ_1−δ_(Art(c′)), with value 1−χ(c′). The products of these atoms with a measure mean convolution in the imported Iwasawa/measure algebra. In particular δ_c is different from the scalar factor χ(c)Nc−1 in the complex integrality theorem; they differ by the unit χ(c).

Assume c prime to pf; c′ prime to pc when used; norm embedded into the coefficient ring.

(KS-v4, Proof of Theorem 5.27, Step 2, p.77; Step 4, p.79, KS-v4 line 3636.)

The construction has the following API.

- Integration of χ against δ_c equals Nc−χ(c)⁻¹.
- Convolution with δ_c multiplies any character moment by Nc−χ(c)⁻¹.
- δ_c has mass Nc−1 and δ′_(c′) has mass zero.

One proof route is to use Mathlib Dirac measures, addition and scalar multiplication; import convolution rather than define a private group algebra. Evaluate a Dirac measure at χ, then apply χ(c⁻¹)=χ(c)⁻¹.

**Checks.**

- For a test character value χ(c)=2 and Nc=7, δ_c evaluates to 13/2, while χ(c)Nc−1 is 13.
- At χ=1, δ_c has value Nc−1; for Nc≡1 mod p it is not a p-adic unit.
- δ′_(c′) vanishes at the trivial character, so dividing by it requires cancellation rather than evaluating an inverse there.
- The Artin inverse belongs in the support of δ_c.
- For the trivial character its value is Nc−1, so this atom is not automatically invertible in every coefficient algebra.
- For c=O_L, Nc=1 and Art(c)=1, so δ_c=0. It cannot be used as a denominator; auxiliary-independent cancellation uses the entire compatible family.
- On fifth roots of unity arithmetic Frobenius at 2 sends ζ₅ to ζ₅², and its inverse sends ζ₅ to ζ₅³. The inverse support in δ_c is therefore a distinct reciprocity choice.

*Needs:* Mathlib `AbstractMeasure.dirac` and `AbstractMeasure.diracHom`; Mathlib `AbstractMeasure.dirac`; PadicMeasuresIwasawaAlgebras §1.2.

### 8.3 Smoothed ray-class measures from the CM Eisenstein measure

For f≠O_L construct bounded measures μ_(f,c) by choosing ray-class representatives a_i, the Serre tensors A_i=(a_i⁻¹f)⊗A and their compatible periods, evaluating μ_Eis at x_i=Ω mod a_i⁻¹fΩ, and restricting to (O_L⊗ℤ_p)×. Set U_f=O_f× (global units congruent to 1 mod f) and G⁰_f=(O_L⊗ℤ_p)×/closure(U_f), and use the exact sequence 1→G⁰_f→G_f→Cl_f→1. Let q_f:(O_L⊗ℤ_p)×→G⁰_f be the quotient map and include G⁰_f into its chosen ray-class coset. On each coset push the weighted measure by (t,s)↦q_f(t⁻¹,s), with weight ∏_(σ∈Σ)σ(t)⁻¹, then sum the finitely many cosets. This uses U_f, not all global units for nontrivial tame f. With the sign comparison below and integral unit-index descent of §5.4, its moments are δ_c(χ) times the right side of the final interpolation formula. For f=O_L use two coprime auxiliaries and the function pulled back from h_c on (A[c′]\{e})×A[c], yielding μ_(O_L,c,c′) with the extra factor δ′_(c′)(χ). The sign comparison is the equality of the map from h through algebraic residue, oriented current integration and the canonical formal differential with the map from h through the rigidified theta function and invariant moments. Its sources are R[D]^(0,Γ) and its targets are scalar extensions of the same critical coordinate line over the common algebraic coefficient field, with the specified complex and p-adic period conversions; the signed analytic representative and the unsigned interpolation coefficient must be reconciled by these actual comparison maps.

Assume ordinary based datum, tame f prime to p, compatible ideal structures and roots of unity. Unit subgroup changes used to fix finite levels carry their exact index; normalized integral descent requires the integral unit-index descent of §5.4.

(KS-v4, Theorem 5.27, proof Steps 1 and 3, equations (5.7.1)–(5.7.4), pp.74–78, KS-v4 line 3417.)

The construction has the following API.

- Critical character moments are the target expression multiplied by Nc−χ(c)⁻¹, and by 1−χ(c′) in tame conductor one, after the sign and unit-index comparisons.
- For b,c prime to pf, δ_b*μ_(f,c)=δ_c*μ_(f,b); establish equality using density of finite-order twists of a fixed critical character.
- Changing coset representatives transports the same weighted measure; the exact sequence uses the tame-congruence unit closure.

One proof route is to use the native abstract-measure pushforward and PadicMeasuresIwasawaAlgebras §2.1 continuous weighting and projection formula. Restrict to the clopen unit locus by extension of test functions by zero, then apply the indicated continuous inversion and determinant weight; compactness makes these operations bounded. Show the correct tame-unit quotient and representatives identify it with the ray-class tower. Insert the locally constant moment formula; compute ramified local factors from PF and unramified corrections from the difference between F and the zero extension. Use the corrected explicit EK formula and complete the sign comparison of §8.3 before identifying its moment sign with the unsigned target.

**Checks.**

- A test local algebraic monomial with Σ-exponent α becomes t^(α−1)s^β after inversion and the determinant weight.
- For a global unit ε not congruent to 1 mod f, its p-component is not killed merely by calling it a global unit; only the actual image of U_f is quotiented out.
- At f=O_L and x=e a single h_c is invalid on U; the c′ support excluding e makes the residue evaluation admissible.
- On a character monomial the inversion and extra t⁻¹ give derivative exponent a=α−1; missing the weight shifts the critical value.
- At nontrivial f, replacing closure(U_f) by closure(O_L×) can change the kernel and the available character moments.
- The unramified barΣ-depletion is the full product over barΣ_p, not a single prime.
- For α=2, β=1, evaluating the algebraic character at (t⁻¹,s) gives t²s; the determinant weight t⁻¹ gives ts. At t=2, s=3 the result is 6, whereas omission of the determinant weight gives 12.

*Needs:* §7.1; §7.4; §8.1; §8.2; §5.7; §2.3; GlobalNumberFields Layers 2, 7 and 9; ClassFieldTheory Layers 11–13 (gap:ray-tower-tame-unit-kernel); GlobalNumberFields Layers 9–10 (gap:hecke-padic-avatar); ComplexMultiplicationAndExplicitReciprocity §1.3; PadicMeasuresIwasawaAlgebras §2.1.

### 8.4 Bounded removal of auxiliary ideals

Establish a bounded O_(ℂ_p)-valued measure μ_f independent of c such that δ_c*μ_f=μ_(f,c) when f≠O_L, and δ_c*δ′_(c′)*μ_(O_L)=μ_(O_L,c,c′) when f=O_L. The required output is a continuous O_(ℂ_p)-linear functional on C(G_f,O_(ℂ_p)) with norm at most one. Prove it by an integral measure-algebra divisibility argument or by Kummer congruences: for every m≥0, every finite family χ₁,…,χ_r of finite-order twists of a fixed critical avatar and every coefficient family a₁,…,a_r∈ℂ_p, if Σa_iχ_i(g) lies in p^m O_(ℂ_p) for every g∈G_f, then Σa_iM(χ_i) lies in p^m O_(ℂ_p). Here M(χ) is the proposed normalized moment, and the implication is uniform in r, the common finite level and m. The case m=0 gives the operator bound of one; scaling gives continuity on the dense span. Treat torsion components of G_f, shared zeros of the smoothing factors and conductor one explicitly. Merely knowing that each individual character value is integral, or that the family has greatest common divisor one in an unspecified ring, does not prove this statement. The uniform congruence argument is part of this theorem.

Assume compatible smoothed measures and their cross-relations; the generic pseudomeasure localization and boundedness criterion are imported from PadicMeasuresIwasawaAlgebras §3.1. All density arguments are made for continuous linear functionals with an established bound.

(KS-v4, Theorem 5.27, proof Step 2, p.77, and Step 4, p.79, KS-v4 line 3624.)

One proof route is to use finite-order twists of one fixed critical algebraic character: they span locally constant functions times an invertible continuous function, hence are dense. Prove the uniform congruences/divisibility before extending the candidate functional by continuity. Show the auxiliary relations identify all resulting bounded extensions, including across the conductor-one cancellation.

**Checks.**

- On a finite cyclic group C_p, p⁻¹Σ_gδ_g has integral character values 1 or 0 but takes the indicator of the identity to 1/p; the proposed proof must rule out this failure.
- Do not assume every δ_c is a unit or equate a height-one gcd statement with a unit-ideal statement.

*Needs:* §8.3; §8.2; §5.7; PadicMeasuresIwasawaAlgebras §3.1 (gap:bounded-fraction-criterion); Mathlib `AbstractMeasure`.

### 8.5 Critical Hecke-value interpolation over totally imaginary fields

For a p-ordinary lifted type Σ of L and a tame integral ideal f prime to p, construct a bounded O_(ℂ_p)-valued measure μ_f on G_f=Gal(L(p∞f)/L) such that for every critical algebraic χ of conductor dividing p∞f and infinity type β−α,
(Ω_p^α(Ω_p∨)^β)⁻¹∫_(G_f)χ(g)dμ_f(g)=𝒩_(α,β)(Local(χ,Σ)·∏_(v∈Σ_p)(1−χ(v⁻¹)/Nv)·∏_(v∈barΣ_p)(1−χ(v))·L_f(χ,0)).
The complex normalization on the right is algebraic by Layer 5 and is transported to ℂ_p by the chosen embeddings of the common algebraic coefficient field; no map from all of ℂ to ℂ_p is used. At a prime ramified in χ set the corresponding ideal-character value to zero so the omitted Euler factor is one; χ(v⁻¹)=0 in that convention is not the inverse of zero. Primitive versus f-imprimitive L-functions are related by exactly the displayed depletion factors. Prove uniqueness from the finite-order-twist density after boundedness has been established. The construction proves the sign, bounded-divisibility and integral unit-index targets of §§8.3–8.4 and 5.4 as part of Theorem 5.27’s interpolation assertion. At L=K, tame conductor f=O_K and the overlapping Katz infinity types −kΣ−Σ_σ d(σ)(σ−barσ), k≥1 and d(σ)≥0, compare with the CM-field Katz measure under the same periods, Artin convention, local factors and primitive/imprimitive convention. The comparison concerns this overlap; the interpolation theorem itself includes arbitrary admissible critical types and tame f.

Assume ordinary standard datum, O_L Betti structure, complex and p-adic periods fixed; all characters read through the chosen embeddings. The proof includes the sign comparison of §8.3, the uniform bounded division of §8.4 and the integral unit-index descent of §5.4.

(KS-v4, Theorem 5.27, p.74 and proof pp.74–79, KS-v4 line 3392.)

One proof route is to combine the corrected smoothed interpolation with §8.4. At ramified and unramified Σ-places compute the separate Fourier contributions; collect the complete barΣ-depletion. Use density for uniqueness after boundedness. Compare with CM-field Katz comparison only at L=K, f=O_K and its stated overlapping infinity-type range, after transporting the conventions.

**Checks.**

- For ℚ(i) at p=5, d=1 and α=2, β=1, the moment has period divisor Ω_p²Ω_p∨. For a degree-four CM field the divisor has two selected coordinates; the non-CM quartic of the worked example has the same coordinate count without a CM involution.
- An inert prime for an imaginary quadratic K is outside this theorem; it belongs to the independent nonordinary direction.
- For a unit u rescaling one selected algebraic differential, Ω and Ω_p both acquire u. Both normalized sides acquire u^(−α_σ), so the equality persists; for α_σ=2 and u=2 at p=5 this multiplier is 1/4.
- The general interpolation target allows tame f prime to p and arbitrary admissible critical β−α; only its Katz comparison is restricted to the CM-field comparison range.

*Needs:* §8.4; §8.1; §6.2; §5.2; AutomorphicLFunctionsAndLocalFactors AL.1, “Local epsilon factors and Gauss sums”.

### Examples

For Nc=7 and χ(c)=2, the smoothing atom evaluates to 13/2 and χ(c)Nc−1=13. On C_p the field-valued functional p⁻¹Σδ_g has all finite-character values 0 or 1 but gives the identity indicator the nonintegral value 1/p. This detects the missing uniform congruence, including p=2 and p=3.

### Dependencies

Earlier layers 0, 1, 2, 3, 4, 5, 6, 7; AutomorphicLFunctionsAndLocalFactors AL.1, “Local epsilon factors and Gauss sums”; Mathlib `AbstractMeasure.dirac` and `AbstractMeasure.diracHom`; Mathlib `AbstractMeasure.dirac`; PadicMeasuresIwasawaAlgebras §1.2; GlobalNumberFields Layers 2, 7 and 9; ClassFieldTheory Layers 11–13 (gap:ray-tower-tame-unit-kernel); GlobalNumberFields Layers 9–10 (gap:hecke-padic-avatar); ComplexMultiplicationAndExplicitReciprocity §1.3; PadicMeasuresIwasawaAlgebras §2.1; PadicMeasuresIwasawaAlgebras §3.1 (gap:bounded-fraction-criterion); Mathlib `AbstractMeasure`. The individual statement and proof-route inputs are specified above.

## Downstream consumers

The outputs support arithmetic applications of ordinary critical Hecke values and their integral comparisons: regularized values, CM period ratios and bounded ray-class measures. The analytic series and residue comparison are also independent inputs for polylogarithmic and regulator calculations. Nonordinary CM special values uses the shared CM/Hecke conventions but not the ordinary constructor at its inert prime. No Selmer characteristic-ideal identity or main conjecture is proved here.

## Worked examples

For L=ℚ(i), Γ in the kernel of the unit weight, α=2 and β=1, the derivative index is a=1. The complex multiplier is (2πi)/(Ω²Ω∨), and the p-adic moment divisor is Ω_p²Ω_p∨. The extra Σ-period is the determinant contribution, so replacing a+1 by a changes the result even at a=0. At p=5 the two place sets are disjoint. At p=3 the two embeddings have the same place, so no measure from this ordinary datum is asserted (KS-v4, Definitions 5.2–5.7 and Theorem 5.22, pp.56–59,65–66, KS-v4 lines 2625, 3089).

For L=ℚ(i,√(1+i)) over K=ℚ(i), the polynomial over ℚ is X⁴−2X²+2. The chosen square root has complex norm-square √2. Its complex conjugate is not in L: that would put √2 in L, but writing an element of K(√(1+i)) as a+b√(1+i) and squaring shows √2 would require 1−i to be a square in K; its norm 2 is not a square in ℚ. The lifted type has two embeddings over the selected embedding of K. Hence α=(1,2) cannot descend from K, while α=(2,2), β=(1,1) does and has parallel conjugate sum −1. Its Serre construction has dimension 2 and repeats both K-period exponents twice. At p=5 restriction to K still separates the two ordinary place sets (KS-v4, §1.1, Theorem 1.1 and Remark 1.10, pp.7–10, KS-v4 line 279; Corollary 4.14, p.54, KS-v4 line 2534).

For a cyclic Fourier coordinate of order 3, let ζ=exp(2πi/3). The function (1,ζ,ζ²) transforms with the inverse kernel to (0,1,0), since 1+ζ+ζ²=0. The zero-point indicator transforms to (1/3,1/3,1/3). Thus the pairing in theta translation is positive, the Fourier kernel is inverse, and the inverse transform sums with the positive pairing without a second factor 1/3 (KS-v4, Definition 5.24 and Corollary 5.25, pp.70–72, KS-v4 line 3238).

For a trivial p-local finite character the Σ-extension is the constant 1 on all local integers. Its normalized transform at the zero conductor frequency is 1, so Local=1. If two unramified complementary primes have ideal values 2 and 3, their depletion product is (1−2)(1−3)=2; keeping either single prime gives −1 or −2. At a ramified prime its Euler factor is 1 by zero extension, without evaluating 0⁻¹ (KS-v4, Definition 5.26 and Theorem 5.27, pp.73–74, KS-v4 lines 3373, 3392).

## References

All Kings–Sprang locators use the 85-page arXiv v4 numbering and the line-numbered extraction recorded in sources.toml; they do not use the journal's different pagination. Statements, normalizations and local computations above are expressed independently.

- **KS-v4.** Guido Kings and Johannes Sprang, *Eisenstein–Kronecker classes, integrality of critical values of Hecke L-functions and p-adic interpolation*, arXiv:1912.03657v4 (2024), §§1–5 and Appendices A–B. [Open preprint](https://arxiv.org/abs/1912.03657v4). The construction follows §§2–3, the critical-value applications §4, and ordinary interpolation §5; the additional sign, unit-index and bounded-divisibility targets specify the comparisons required by these normalizations.
- **BKO-2021.** Ashay A. Burungale, Shinichi Kobayashi and Kazuto Ota, *Rubin’s conjecture on local units in the anticyclotomic tower at inert primes*, Annals of Mathematics 194 (2021), 943–966, Introduction and §§3,6. [Institutional copy](https://authors.library.caltech.edu/records/8svwt-jn031). This records the boundary with the independent nonordinary direction.
