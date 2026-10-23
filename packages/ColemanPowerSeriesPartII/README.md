# Roadmap: coleman power series, part ii — signed anticyclotomic local units

**Summary.** Build the norm-compatible principal units of the unramified quadratic Lubin–Tate tower, their inverse Tate twist, anticyclotomic quotient and character derivatives. Prove perfect formal Kummer duality and the signed annihilator theorem, construct an optimal plus unit from independent CM special values and an optimal local-point system from formal CM deformations, and combine them to prove Rubin’s integral decomposition and nonvanishing of every matching-parity derivative of every signed generator. The theorem holds for every prime p≥5 (BKO2021, Theorem 2.1 and Corollary 2.2, p.949; Theorem 5.8, p.960).

## Scope and ownership

This continues ColemanPowerSeries, whose Layers 0–1 and IntegralIwasawaTheory §§7.1–7.3 concern cyclotomic and finite unramified arithmetic coefficients. General height-two Lubin–Tate interpolation, the quadratic-tower unit module, its character derivatives, signed formal Kummer comparison, modular images of quasi-canonical points and the integral decomposition belong here. The interpolation theorem in §1.1 differs from the cyclotomic theorem by using the degree-p² Lubin–Tate multiplication map and its genuine π-adic Tate basis.

The following objects are supplied elsewhere and have no second construction here.

- Mathlib supplies formal differentiation, algebra norms and traces, tensor products, submodules and quotients. Tau Ceti supplies the principal-unit filtration, compact completed group algebras and their actions, and the formal-to-elliptic homomorphism on Dedekind adic completions, with its injectivity and range.
- LocalFieldsRamification Layers 0–3 own the finite local fields, valuation rings, principal-unit topology and norms; ProfiniteArithmetic §1.3 owns continuous p-adic powering; ProfiniteProPGroups Layer 9 and PadicMeasuresIwasawaAlgebras Layers 1, 4–5 own completed algebras, coefficient changes, Weierstrass theory and compact Nakayama.
- LubinTateFormalModulesAndQuasiCanonicalLifts §§LT.0–LT.2, LT.4–LT.9 own formal modules, logarithms, Tate characters, scalar-Frobenius comparisons, lattice quotients, marked quasi-canonical deformations, the two towers and their formal traces. The lattices and quotient elliptic schemes in §6.2 are instances of those supplied constructions.
- ArithmeticGaloisDuality §§R02.1–R02.2 and D7.6 own continuous cohomology, limit comparisons, local abelian-variety duality and isogeny adjunction. ClassFieldTheory Layers 5–6 and 8 own finite local reciprocity and its norm subgroups. Their application to formal points and the exact Wiles normalization belong to Layer 2 here.
- IntegralLattices §§B1–B2 and B5 own the quadratic-form/ideal-class dictionary and reduced representatives; ImaginaryQuadraticClassNumber §§H1.3 and H2.1–H2.2 own maximal-order class numbers, quadratic characters, zeta factorization and their class-number formula. ComplexMultiplicationAndExplicitReciprocity §§3.1 and 4.3 own ring class fields and canonical Gross characters and curves. NonordinaryCMSpecialValues §§NCM.0–NCM.4 own the good differential and CM period, integral elliptic-unit zeta class, direct-character reciprocity, semilocal splitting, root numbers and Finis’s unit theorem. Layer 4 consumes those results and constructs their local signed-unit image; it does not construct a nonordinary p-adic L-function.
- EllipticCurves Layers 3–4 own finite-field elliptic arithmetic and reduction. The supersingular mass, twist and trace-class input is its exact supplier extension below; Layer 5 owns the resulting modular-fibre inequalities and primitive-point application. ModularCurves §§7D, 8A–8D and 9C–9E, ModularCurvesPartII §§3.1–3.5, 5.2–5.3, 5.10, 9.1, 9.9 and 13.1–13.2, and EllipticCurveModularity §R29.5 own moduli, integral models, Hecke correspondences and parametrizations. The good-prime Manin-unit extension is requested explicitly.

AnticyclotomicLocalUnits §§ALU.0–ALU.8 describes the same signed local-unit continuation. The ownership is a single continuation under ColemanPowerSeriesPartII; the two labels do not designate independent libraries or supply one another. The downstream inert anticyclotomic p-adic L-function, Selmer comparison and main conjecture belong to InertAnticyclotomicCMMainConjecture; finite signed local conditions are exported here.

## Conventions

Fix a prime p≥5, the unramified quadratic extension Φ/ℚ_p, its integer ring O, π=−p and q=p². Write π_real for the positive real circle constant, to distinguish it from the uniformizer. All local extensions use compatible embeddings into one algebraic closure and then ℂ_p. A Lubin–Tate O-module F for π has normalized logarithm λ with λ′(0)=1. Choose an actual π-adic Tate basis v=(v_n) with [π]v_(n+1)=v_n, where v_n has exact order π^(n+1). The p-compatible sequence with the same initial point is w_n=[(−1)^n]v_n: [p]w_(n+1)=w_n. At n=0,1 this is w_0=v_0, w_1=−v_1, which fixes the transition sign (BKO2021, footnote 2, p.948; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8).

Write Φ_n=Φ(F[π^(n+1)]), Δ of order p²−1, Θ_n=Φ_n^Δ and Γ=Gal(Θ_∞/Φ)=G⁺×G⁻. Here Θ_0=Φ, [Θ_n:Φ]=p^(2n), the plus direction is cyclotomic and the minus direction is anticyclotomic. The field Ψ_n has degree p^n over Φ and Ψ_∞=Θ_∞^(G⁺). In the primed ring-class tower Ψ′_0=Φ and [Ψ′_s:Φ]=(p+1)p^(s−1) for s≥1; its tame group Δ′ has order p+1 and Ψ_n=(Ψ′_(n+1))^Δ′. At p=5 the two tame orders are 24 and 6, and [Ψ′_2:Φ]=30. These are distinct quotients (BKO2021, §§2 and 5.0.2, pp.948,958; LubinTateFormalModulesAndQuasiCanonicalLifts §§LT.7–LT.8).

Let κ be the actual Lubin–Tate character and ω its restriction to Δ. Use the native compact completed algebras Λ₂=O[[Γ]] and Λ=O[[G⁻]]. A star means the inverse Tate twist Hom_O(T_πF,−); continuous O-duals into Φ/O are written out. Principal-unit groups are made additive by continuous p-adic powers; multiplicative unit sequences, rather than arbitrary tensors, are interpolated by Coleman series. Every finite tensor extension uses its finite-product compact topology. Compact quotients have closed relation submodules. All modules and fields lie in fixed compatible universes; no class of all local fields is used as a carrier.

Finite characters are continuous and have finite image. Set c(1)=0 and c(χ)=n+1 for nontrivial χ of exact order p^n. The sets Ξ⁺ and Ξ⁻ select even and odd c. Thus 1 and order-p characters are plus, while order-p² characters are minus. Unit sign ε kills derivatives of the opposite parity; formal-point sign ε kills logarithms of the same parity. Derivatives have inverse-character covariance and logarithms direct-character covariance. A character value is interpreted in ℂ_p, or in the explicitly named compositum of its value field and the field of its evaluation; these two fields are not silently identified (BKO2021, §2, pp.948–949; Rubin1987, §5, pp.412–413).

The augmentation derivative δ is O-valued. The trivial-character derivative is Φ-valued with δ₁=(1+p⁻¹)δ; at p=5 a unit δ-value 1 gives δ₁=6/5, of valuation −1. Arithmetic local Artin reciprocity, the inverse Tate basis and π=−p fix the pairing sign. Normalized field valuations satisfy v_Φ(p)=1. For finite L, F(m_L) is the actual maximal-ideal point group; for an infinite algebraic tower it is the directed union of these finite point groups. Formal addition and multiplication are denoted +_F and [a]; parameter addition is not formal addition. Scalar q-Frobenius [s p], s=±1, corresponds to Lubin–Tate parameter s p; trace −2p corresponds to π=−p. At p=5, (X+5)²=X²+10X+25 has trace −10 and norm 25 (BKO2021, Lemma 5.1, p.956, with its parameter sign fixed by the reduction condition).

The formal-to-elliptic map is used only for the maximal ideal of a height-one Dedekind adic completion with the base-changed curve elliptic. Layer 6 supplies the comparison with the actual local fields. The scalar used to kill the target reduction is #E(𝔽_(p²))=(p+1)², a p-unit: at p=5 it is 36≡1 modulo 5. For an independent split auxiliary prime ℓ≥5 use conductor(ν)=ℓ^m and order(ν)=ℓ^(m−1), m≥2 for nontrivial ν. The field L_j has degree ℓ^j, and ν=1 uses m=0,L_0=K. For ℓ=5, conductor 25 corresponds to degree 5, not 25 (BKO2021, §§3.0.2 and 5.0.1, pp.951–953,957–958).

## Exact supplier contracts

### From Mathlib

Use `PowerSeries.derivative` and `PowerSeries.coeff_derivative` from `Mathlib/RingTheory/PowerSeries/Derivative.lean`, and `PowerSeries.isUnit_iff_constantCoeff` from `Mathlib/RingTheory/PowerSeries/Inverse.lean`. Over a commutative ring these give coefficient differentiation and the constant-term unit criterion; they make no assertion about convergence at torsion points. Norms and traces are `Algebra.norm` and `Algebra.trace` in `Mathlib/RingTheory/Norm/Defs.lean` and `Mathlib/RingTheory/Trace/Defs.lean`; arithmetic use verifies finite freeness and the scalar tower. Tensor products, continuous linear maps and submodule quotients retain their native carriers.

### From Tau Ceti

`TauCeti.unitFiltration` and `TauCeti.unitFiltration_one` in `TauCeti/NumberTheory/LocalField/UnitFiltration/Basic.lean` give the principal-unit subgroup at depth one for a field with its valuative relation, topology and nonarchimedean-local-field instance. The definition is an image of a reduction kernel on integer-ring units; it does not select a tower or add an O-action.

Use `TauCeti.completedGroupAlgebra` from `TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean` and `TauCeti.IsCompactModule.completedGroupAlgebraModule` from its `Module.lean`, for a compact Hausdorff module with continuous commuting coefficient and profinite-group actions, through PadicMeasuresIwasawaAlgebras’s coefficient comparison. No topology or compatible action is inferred from an abstract module structure.

`WeierstrassCurve.formalPointHomAdicCompletion` and `WeierstrassCurve.formalPointHomAdicCompletion_injective` in `TauCeti/AlgebraicGeometry/EllipticCurve/FormalGroup/Point/AdicCompletion.lean`, and `WeierstrassCurve.range_formalPointHomAdicCompletion` in its `Range.lean`, give the additive injection and its range. Their domain is the actual maximal-ideal formal-point group over the adic-completion integer ring of a height-one prime of a Dedekind domain; the fraction-field curve is elliptic. The range is zero together with points whose x-coordinate has multiplicative valuation greater than one. Its linearity under the transported O-action and its trace squares are comparisons in §6.3.

### From TauCetiRoadmap.LocalFieldsRamification and TauCetiRoadmap.ProfiniteArithmetic

LocalFieldsRamification Layers 0–3 supply compatible finite-extension valuations, valuation rings, integer-ring norms, principal-unit topology, separatedness and Galois actions. ProfiniteArithmetic §1.3 supplies continuous ℤ_p powering on compact abelian pro-p groups. Apply it to principal units and verify norm linearity; the norm tower here is the quadratic Lubin–Tate tower, not the cyclotomic tower.

### From TauCetiRoadmap.ColemanPowerSeries

Layers 0–1 supply finite local-unit comparisons and the finite-free determinant-norm method, with continuity, multiplication matrices and norm/evaluation squares. Its cyclotomic interpolation statement is not used as a height-two statement. Section 1.1 here proves the Lubin–Tate version from the finite-free multiplication-by-π algebra, contraction and uniqueness.

### From TauCetiRoadmap.PadicMeasuresIwasawaAlgebras

Sections 1.7 and 2.5 supply the measure/completed-algebra comparison and finite integral coefficient extension; §§4.2–4.5 supply one-variable structure, Weierstrass preparation, tame character projectors and the coordinate; §5.2 supplies compact inverse limits and topological Nakayama. Prime-to-p tame projectors divide by p²−1, which is a unit; rank arguments after removing a power of p require O-torsion-freeness.

What PadicMeasuresIwasawaAlgebras must provide (gap:quadratic-iwasawa-twist): For O the integers of an unramified quadratic p-adic field and Γ=G⁺×G⁻≃ℤ_p², supply the continuous O-coefficient coordinates, character evaluations, κ⁻¹-twist automorphism and its closed coordinate quotients, compatible with finite coefficient extension.

### From TauCetiRoadmap.LubinTateFormalModulesAndQuasiCanonicalLifts

Sections LT.0 (adic points, normalized and analytic logarithm), LT.1 (Lubin–Tate module), LT.2 (primitive division, Tate module and character), LT.3 (elliptic deformation comparison), LT.4 (elliptic Honda comparison), LT.5 (elliptic isogeny comparison), LT.7 (BKO quasi-fields and lattice neighbours), LT.8 (tame character, directions, fields and π/p basis comparison) and LT.9 (formal trace, tame descent and trace rectangle) supply the marked local geometry. Keep the source and target of every comparison and the chosen tangent embedding; no unmarked formal isomorphism determines a Tate basis. The degree and sign witnesses in Conventions are part of this interface.

What LubinTateFormalModulesAndQuasiCanonicalLifts must provide (gap:ramified-height-two-norms): For the height-two module F and every fixed finite layer of Ψ_∞ or Θ_∞, supply a formal-norm filtration estimate whose depth tends to infinity up the tower, including when that fixed layer is ramified over ℚ_p.

### From TauCetiRoadmap.ArithmeticGaloisDuality

Sections R02.1.1–R02.1.5 supply continuous coefficient sequences, inverse limits and completed tensor comparisons; R02.2 supplies Hochschild–Serre and its five-term transgression. Section D7.6, “Local abelian-variety duality and gerbe evaluation” and “Self-dual isogenies and their local index”, supplies local duality for an abelian variety and its dual over a finite extension of ℚ_p. Use its actual principal polarization and the adjoint O-action. Finite class-formation duality does not replace this result.

What ArithmeticGaloisDuality must provide (gap:formal-kummer-limit-adjunction): Supply compatibility of local abelian-variety duality with restriction, corestriction and finite Kummer images, and with the adjoint of the transported O-action, sufficient to identify the formal Kummer defect dual with the inverse limit of formal norms in both specified towers.

### From TauCetiRoadmap.ClassFieldTheory

Layers 5, 6 and 8 supply finite Tate cohomology, the arithmetic local Artin map, norm/restriction adjunction, local existence and the local-class-field correspondence. The ring-class norm subgroup at conductor p^s is ℚ_p×(1+p^sO). Continuous Hom, rather than abstract Hom, is used in infinite local duality. The residue cardinal in a finite O-lattice index is p²; an O/p^a quotient has p^(2a) elements.

### From TauCetiRoadmap.PadicHodgeRegulators

The required interface is exponential and dual-exponential adjunction on the inverse-twisted CM realization with its actual invariant differential line; its exact normalization is the supplier extension below.

What PadicHodgeRegulators must provide (gap:height-two-explicit-reciprocity): Supply the height-two Lubin–Tate reciprocity comparison for the actual Kummer class with arithmetic Artin convention, π=−p Tate basis and differential λ′(0)=1, including the factor π^(−n−1) in the finite-character dual-exponential sum and the modulo-O trace formula of §2.6.

### From TauCetiRoadmap.ComplexMultiplicationAndExplicitReciprocity

Section 3.1 supplies ring-class generation; §4.3 supplies the canonical Gross predicate, existence and attachment, and good reduction away from the discriminant. The auxiliary D has D<−4, D≡1 modulo 8 and p inert, so the exceptional Gaussian and Eisenstein unit obstructions do not arise. GlobalNumberFields Layers 4 and 9 supply compatible completions and algebraic Hecke characters, conductors and ray fields. Ring-class fields in Layer 6 are distinct from ray fields in Layer 4.

### From TauCetiRoadmap.IntegralLattices and TauCetiRoadmap.ImaginaryQuadraticClassNumber

IntegralLattices §§B1–B2 and B5 supply primitive positive binary forms, quadratic orders and their proper ideal classes, reduced representatives and the boundary tie convention. ImaginaryQuadraticClassNumber §§H1.3 and H2.1–H2.2 supply the maximal-order Picard/class-group comparison, primitive quadratic characters, ζ_K=ζL and h(D)=w_D√|D|L(1,χ_D)/(2π). For the auxiliary fundamental D≡1 modulo 8 with D<−4, w_D=2, giving the formula in §4.1. The native reduction predicate alone does not require positive definiteness: the form (0,0,1) satisfies it, so the negative discriminant and primitivity hypotheses remain explicit. Native reduced forms are `TauCeti.IsReducedForm` and `TauCeti.reducedForms` in `TauCeti/NumberTheory/BinaryQuadraticForm/Reduced.lean`; primitive forms are retained, and the form/ideal dictionary identifies the finite list with the ordinary class number. The residue formula is also `NumberField.dedekindZeta_residue` and `NumberField.tendsto_sub_one_mul_dedekindZeta_nhdsGT` in `Mathlib/NumberTheory/NumberField/DedekindZeta.lean`.

### From TauCetiRoadmap.NonordinaryCMSpecialValues

Consume NCM.0’s CM period, canonical root sign and auxiliary prime/characters; NCM.1’s normalized zeta class, direct-character elliptic reciprocity and norm-twist comparison; NCM.2’s torsion/ring-class compositum, disjointness, semilocal splitting, inert Frobenius and CM/Lubin–Tate comparison; NCM.3’s root signs and forced central zero; NCM.4’s Finis family, correction terms, removed Euler factors and unit witness. These inputs are independent of the signed-unit decomposition. Algebraic special values are mapped to ℂ_p through the fixed algebraic embeddings; no field map ℂ→ℂ_p is used. A finite coefficient DVR contains the character values and the chosen algebraic normalized value. The local signed-unit image is constructed in §4.3.

### From TauCetiRoadmap.EllipticCurves

Layers 3–4 supply the Hasse bound, supersingularity, good-reduction exact sequence and isogeny invariance. At p≥5, p dividing a_p and |a_p|≤2√p imply a_p=0. The target curve over O has q-trace −2p; any auxiliary source curve with scalar q-Frobenius [s p] retains its separate parameter s p.

What EllipticCurves must provide (gap:supersingular-trace-counts): Supply Deuring’s supersingular j-count with the j=0 and j=1728 criteria, existence of a supersingular j in 𝔽_p, and the 𝔽_(p²) trace/twist classification showing that every nonexceptional supersingular j has a scalar-Frobenius representative.

### From TauCetiRoadmap.ModularCurves and TauCetiRoadmap.ModularCurvesPartII

ModularCurves §§7D, 8A–8D and 9C–9E supply fine universal deformations, prime-to-p cyclic subgroup moduli, tame quotient regularity and the coarse j-map. ModularCurvesPartII §§3.1–3.5, 5.2–5.3, 5.10, 9.1, 9.9 and 13.1–13.2 supply compactified models and Hecke/Jacobian constructions. Apply these to the mixed Γ₀(N),Γ₁(M) problem with p∤NM and fine rigidification; the point-neighbour statement retains transported prime-to-p markings.

What ModularCurvesPartII must provide (gap:composite-genus-formula): For arbitrary composite N prime to p, supply the full Γ₀(N) genus formula 2g−2=μ/6−ν₂/2−2ν₃/3−ν_∞, with the cusp and elliptic-point counts giving μ=N∏_(ℓ∣N)(1+1/ℓ), compatibly with the smooth integral modular model.

What ModularCurvesPartII must provide (gap:integral-hecke-point-relation): Supply the good-reduction p-isogeny correspondence on those composite mixed-level models, its p+1 marked neighbours and the point-valued modular-quotient identity f(T_p z)=a_p(E)f(z), including conductor-zero and conductor-one boundary orbits.

### From TauCetiRoadmap.EllipticCurveModularity

Section R29.5 supplies an isogeny from the modular quotient and the parametrization at the conductor, with nonzero rational differential constant. Choose the optimal strong Weil representative and retain its integral Néron differential.

What EllipticCurveModularity must provide (gap:good-prime-manin-unit): For an optimal strong Weil curve of conductor N and any prime p∤N, supply the p-unit property of its Manin constant, compatible with its integral parametrization and optimal isogeny-class replacement.

## How to read the build

Layers 0–1 construct the arithmetic unit module and its derivatives. Layer 2 proves the actual Kummer comparison, followed by signed annihilators and rank upper bounds in Layer 3. Layer 4 obtains a plus unit with unit augmentation derivative from the independent CM inputs. Layers 5–7 give a primitive formal CM point, its marked modular images and the optimal trace system; Layer 8 turns that trace system into a free minus quotient and kernel. Layer 9 combines these independent outputs integrally and proves character nonvanishing. Each target lists the inputs needed for its statement and for the indicated proof route; another route need only replace the inputs it uses. Suggested.lean records which headline statements can be expressed on the pinned carriers; this README specifies the whole library.

## Layer 0: Local units and the inverse Tate twist

### 0.1 Anticyclotomic conductor parity

For finite continuous χ:G⁻→Q̄_p×, define c(1)=0 and c(χ)=n+1 when Φ_n is its first Lubin–Tate level. Put Ξ⁺={χ:c(χ) even}, Ξ⁻={χ:c(χ) odd}. For a nontrivial character of exact order p^n on Gal(Ψ_n/Φ), c(χ)=n+1; the trivial character belongs to Ξ⁺.

(BKO2021, §2, p.948 (conductor convention) and p.949 (definition of Ξ⁺, Ξ⁻); BKO2021 line 253.)

The construction has the following API.

- The least conductor exponent, zero for the trivial character.
- Every finite character lies in exactly one of Ξ⁺, Ξ⁻.
- Exact order p^n, n≥1, corresponds to conductor p^(n+1).

A proof route is as follows. Use the conductor and quotient identifications supplied by LT.8/bko-character-data. Assign parity to the conductor exponent; include the trivial character separately.

*Needs:* LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/bko-character-data.

**Checks.**

- c(1)=0 and 1∈Ξ⁺.
- A character of exact order p has exponent 2 and belongs to Ξ⁺.
- A character of exact order p² has exponent 3 and belongs to Ξ⁻.

### 0.2 Norm-compatible principal units

Let P_n be TauCeti.unitFiltration Φ_n 1, written additively via p-adic powering. Define Ũ_∞=lim_N(P_n⊗_(Z_p)O), with its compact inverse-limit topology and O[[Δ×Γ]] action. Let U_∞=e_ω Ũ_∞, where ω is the tame restriction of κ and e_ω=|Δ|⁻¹Σ ω(d)⁻¹d; Γ=G⁺×G⁻ and Λ₂=O[[Γ]].

(BKO2021, §2, p.948; Rubin1987, §1, p.406; BKO2021 line 253.)

The construction has the following API.

- A norm-compatible family u=(u_n) of principal units and a∈O give u⊗a∈Ũ_∞. Since O is Z_p-free of rank two, Ũ_∞=(lim U_n)⊗_(Z_p)O, so every element is u⊗1+u′⊗θ for a Z_p-basis 1,θ of O.
- Ũ_∞→P_n⊗O is continuous, O-linear and commutes with norm.
- Equality holds if all finite projections agree.
- d·u=ω(d)u characterizes U_∞; the complementary tame eigenspaces map to zero.
- Continuous finite-level actions extend to a compact Λ₂-module action.

A proof route is as follows. Use the existing principal-unit group, finite norm maps and p-adic module structure. Extend norms by O and form the closed compatible-family submodule; extend the continuous Galois action to the completed algebra. Apply the prime-to-p idempotent and retain its embedding and projection.

*Needs:* `TauCeti.unitFiltration`; ColemanPowerSeries Layer 0; PadicMeasuresIwasawaAlgebras §1.7 and the quadratic-iwasawa-twist contract; PadicMeasuresIwasawaAlgebras §4.4; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/quadratic-directions.

**Checks.**

- The sequence of multiplicative identities is additive zero at every level.
- A family with N(u_(n+1))≠u_n at one level is excluded.
- An eigenvector for a distinct tame character has e_ω-image zero.

### 0.3 Inverse Tate twist

For a compact O-module M with compatible Galois action, set M*=Hom_O(T_πF,M) with g·h=g_M∘h∘g_T⁻¹ and the compact topology after choosing a Tate basis. Define U_∞*=(Ũ_∞*)^Δ; evaluation at a basis identifies it with U_∞ and changes the Γ-action by κ⁻¹. This is a functorial comparison, not an identification of the original Γ-actions.

(BKO2021, §2, p.948; BKO2021 line 265.)

The construction has the following API.

- Evaluation at v gives an O-linear homeomorphism to U_∞ with the κ⁻¹-twisted action.
- g·(u⊗v⁻¹)=g(u)⊗κ(g)⁻¹v⁻¹.
- For v′=bv, the same tensor is represented by bu⊗(v′)⁻¹.
- Continuous equivariant O-linear maps induce maps on inverse twists.

A proof route is as follows. Import the actual rank-one Tate O-module and κ. Use the contragredient action on Hom, then identify Δ-invariants with the ω-summand through evaluation. Prove change of basis by b∈O× rescales evaluation and inverse-basis tensors by inverse factors.

*Needs:* §0.2; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.2/lt-character; PadicMeasuresIwasawaAlgebras §1.7 and the quadratic-iwasawa-twist contract.

**Checks.**

- Twisting the κ-line makes its Galois action trivial.
- Using κ rather than κ⁻¹ fails the previous test for κ(g)²≠1.
- A Δ-invariant inverse tensor has underlying ω-eigenvector, not an ω⁻¹-eigenvector.

### 0.4 Anticyclotomic local-unit quotient

For a topological generator σ of G⁺, put V_∞=U_∞/(σ−κ(σ))U_∞ and V_∞*=U_∞*/(σ−1)U_∞*. The images are compact and closed. The twist gives (V_∞)*≃V_∞* as Λ=O[[G⁻]] modules; replacing σ by another generator gives the same closed relation ideal.

(BKO2021, §2, p.948; BKO2021 line 262.)

The construction has the following API.

- The canonical map U_∞*→V_∞* is continuous and Λ-linear.
- A continuous linear map descends exactly when it kills (σ−1)U_∞*.
- The twisted σ=κ(σ) quotient is the σ=1 quotient.
- Changing σ by a Z_p-unit power preserves the quotient canonically.

A proof route is as follows. Extend γ↦κ(γ)⁻¹γ to the completed algebra. Use its automorphism to compare the two relation submodules. Use the universal quotient property and the unit-exponent identity to show independence of σ.

*Needs:* §0.3; PadicMeasuresIwasawaAlgebras §1.7 and the quadratic-iwasawa-twist contract; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/quadratic-directions.

**Checks.**

- The images of σx and x agree in V_∞*.
- In V_∞, σu=κ(σ)u, which need not equal u.
- Replacing σ by σ^a, a∈Z_p×, gives inverse comparison maps.

### 0.5 Two-variable local-unit freeness

U_∞ is free of rank two over Λ₂. Consequently U_∞* is free of rank two over the twisted Λ₂, and V_∞* is free of rank two over Λ.

(Rubin1987, Proposition 1.1, p.407; Wintenberger1980, §4 Théorème (i),(iii), pp.91–92; proofs §§5.1–5.5.3, pp.92–98.)

A proof route is as follows. Apply Wintenberger §4 Theorem (i),(iii) for r=2, K=Φ, d=2: the ω-isotypic character is nontrivial and is distinct from the tame cyclotomic character ω^(p+1). Use the local Artin interpretation and finite coinvariant freeness in §5.1–§5.5.3; the relevant character avoids both the valuation summand and the cyclotomic Tate summand. Extend coefficients to O and select ω. Transport freeness through the twist automorphism and specialize the G⁺ variable at 1.

*Needs:* §0.4; ClassFieldTheory Layer 6; PadicMeasuresIwasawaAlgebras §§4.2–4.5; PadicMeasuresIwasawaAlgebras §5.2.

### Examples

At p=5, ω has order 24 and ω^(p+1)=ω⁶ differs from both ω and the trivial character. For a κ-line the inverse twist has action κ·κ⁻¹=1; the positive twist has action κ². Replacing a generator σ by σ² preserves the relation ideal since 2∈ℤ₅×.

### Dependencies

LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/bko-character-data; `TauCeti.unitFiltration`; ColemanPowerSeries Layer 0; PadicMeasuresIwasawaAlgebras §1.7 and the quadratic-iwasawa-twist contract; PadicMeasuresIwasawaAlgebras §4.4; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/quadratic-directions; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.2/lt-character; ClassFieldTheory Layer 6; PadicMeasuresIwasawaAlgebras §§4.2–4.5; PadicMeasuresIwasawaAlgebras §5.2. The individual targets separate statement inputs from the route described above.

## Layer 1: Coleman interpolation and character derivatives

### 1.1 Lubin–Tate Coleman series

For each norm-compatible u_n∈1+m_(Φ_n) and genuine basis v=(v_n) of T_πF with [π]v_(n+1)=v_n, there is a unique f_(u,v)∈O[[X]]× satisfying f_(u,v)(v_n)=u_n for all n≥0. It is fixed by the Coleman norm N_F defined by (N_F f)([π]X)=∏_(t∈F[π])f(X+_F t). Extend its logarithmic derivative O-linearly to the tensor unit module; do not interpret a general tensor as a single multiplicative sequence.

(BKO2021, §2, p.948 and footnote 2; Rubin1987, §2, p.407; BKO2021 line 272.)

The construction has the following API.

- f_(u,v)(v_n)=u_n at every level.
- N_F(f_(u,v))=f_(u,v).
- Products of unit systems correspond to products of series.
- For v′=bv, f_(u,v′)=f_(u,v)∘[b⁻¹]_F.

A proof route is as follows. Use the finite-free multiplication-by-π substitution algebra, determinant norm, integral contraction, finite interpolation and norm-fixed uniqueness. Torsion points approach the boundary, so uniqueness is not inferred from accumulation at zero. Compare π- and p-compatible bases by the stated alternating signs.

*Needs:* §0.2; ColemanPowerSeries Layer 1; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.1/lt-module; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.2/primitive-division; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/sign-generator-comparison.

**Checks.**

- The identity system gives f=1, hence every logarithmic derivative is zero.
- At v′_n=[b]v_n, composition with [b⁻¹] evaluates to u_n; without the inverse it evaluates at [b²]v_n.
- At n=0,1 the unchanged p-compatible basis has [−p]w_1=−w_0; the corrected π-basis has [−p]v_1=v_0.

### 1.2 Coates–Wiles derivatives

For x=u⊗v⁻¹⊗a define δ(x)=a f′(0)/f(0)∈O and δ_n(x)=a f′(v_n)/(λ′(v_n)f(v_n))∈Φ_n, with λ′(0)=1. Extend through the balanced tensor relations to U_∞*. Both maps are independent of the choice of basis representation. The integral invariant differential has a unit power-series coefficient at the origin and a convergent inverse on the maximal ideal, so λ′(v_n) is a nonzero unit; f(v_n) is a unit as well.

(BKO2021, §2, p.948; BKO2021 line 270.)

The construction has the following API.

- δ is a continuous O-linear map U_∞*→O.
- δ_n is a continuous O-linear map to Φ_n.
- The value is unchanged when the same tensor is represented using bv.
- δ_n is the evaluation of the invariant derivative of log f.

A proof route is as follows. Use dlog(fg)=dlog f+dlog g and the invariant derivation D=λ′(X)⁻¹d/dX. Check balancing and rescaling from the Coleman basis-change law and λ([b]X)=bλ(X). Prove δ integral and finite evaluations continuous, and compare formal differentiation with PowerSeries.derivative.

*Needs:* §1.1; §0.3; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/formal-log; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/analytic-log; `PowerSeries.derivative`.

**Checks.**

- For f=1 the two derivatives are zero; this detects an added constant.
- For the local two-term unit series 1+aX, the augmentation derivative is a; this checks the first-over-constant coefficient convention without claiming that this series is norm-fixed.
- Changing the Tate basis to bv introduces b⁻¹ in the derivative and b in the tensor coordinate, whose product is 1.

### 1.3 Twisted derivative covariance

For x∈U_∞*, β∈Gal(Φ_∞/Φ) and n≥0, δ_n(βx)=β(δ_n(x)). Before the inverse twist the formula includes κ(β); twisting cancels exactly that factor. On G⁺-coinvariants the descended δ satisfies δ(λx)=aug(λ)δ(x) for λ∈Λ.

(BKO2021, §2, pp.948–949; Rubin1987, Lemma 2.1(i), p.407; BKO2021 line 276.)

A proof route is as follows. Compare the Coleman series of βu with substitution by [κ(β)] and use the invariant differential chain rule. Cancel the Tate factor and evaluate at zero and v_n. Extend from group elements to the completed group algebra using continuity.

*Needs:* §1.2; PadicMeasuresIwasawaAlgebras §1.7 and the quadratic-iwasawa-twist contract.

### 1.4 Character derivatives

For finite χ of Gal(Φ_∞/Φ) and n≥0 through which χ factors, set δ_χ(x)=π^(−n−1)Σ_(γ∈Gal(Φ_n/Φ))χ(γ)·δ_n(x)^γ in a finite coefficient extension of Φ. It is independent of n and satisfies δ_χ(βx)=χ(β)⁻¹δ_χ(x). In particular no negative-level evaluation is used to define δ₁.

(BKO2021, §2, p.949; BKO2021 line 287.)

The construction has the following API.

- Any n≥0 containing χ computes the same scalar.
- δ_χ(βx)=χ(β)⁻¹δ_χ(x).
- δ_χ(λx)=ev_(χ⁻¹)(λ)δ_χ(x).
- The definition commutes with finite coefficient extension.

A proof route is as follows. Differentiate the Coleman norm identity with the invariant derivation, obtaining Σ_(t∈F[π])Dlog f(X+_F t)=πDlog f([π]X). Evaluate on torsion to get Tr_(Φ_(n+1)/Φ_n)δ_(n+1)=πδ_n. Use trace transitivity for level independence and reindex the character sum for inverse covariance.

*Needs:* §1.2; §1.3; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.9/formal-trace.

**Checks.**

- At χ=1 and n=0 the formula is π⁻¹Tr_(Φ₀/Φ)δ₀; no negative level appears.
- For χ(β)=ζ₅ the covariance factor is ζ₅⁻¹=ζ₅⁴, which differs from ζ₅.
- At the next layer Tr δ_(n+1)=πδ_n cancels exactly the extra π denominator; replacing π=−p by p reverses the sign.

### 1.5 Anticyclotomic derivative descent

For an anticyclotomic χ factoring at level n≥0, δ_χ kills (σ−1)U_∞*, hence gives a continuous O-linear map V_∞*→Φ_n(χ)⊂ℂ_p, with the compositum and embedding specified. The map δ also descends and is Λ-linear for the augmentation action on O.

(BKO2021, §2, p.949; BKO2021 line 293.)

A proof route is as follows. Apply inverse covariance with χ(σ)=1. Use the quotient universal property, retaining uniqueness. Use covariance at zero for the augmentation map.

*Needs:* §1.4; §0.4; §1.3.

### 1.6 Trivial-character normalization

On U_∞* and V_∞*, δ₁=(1−π⁻¹)δ=(1+p⁻¹)δ as Φ-valued maps. Thus δ and δ₁ have the same kernel, although δ₁ need not be O-valued.

(BKO2021, §2, p.949 (δ_χ at χ=1, n=0); Proposition 3.3(1)–(2), p.953; Rubin1987, Lemma 2.1(iv), p.407; BKO2021 line 291.)

A proof route is as follows. Evaluate the invariant norm-derivative identity at zero. The π-torsion sum equals πδ; subtract the zero-torsion contribution δ. The remaining nonzero π-torsion orbit is Tr_(Φ₀/Φ)δ₀=(π−1)δ. Divide by π and substitute π=−p.

*Needs:* §1.4; §1.5.

### Examples

With p=5, π=−5, the torsion trace equation gives Tr δ₀=−6δ and δ₁=(−1/5)(−6)δ=6δ/5. A nonquadratic character takes β to ζ₅; its derivative multiplier is ζ₅⁴. These fix the Euler factor and inverse-character convention.

### Dependencies

§0.2; ColemanPowerSeries Layer 1; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.1/lt-module; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.2/primitive-division; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/sign-generator-comparison; §0.3; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/formal-log; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/analytic-log; `PowerSeries.derivative`; PadicMeasuresIwasawaAlgebras §1.7 and the quadratic-iwasawa-twist contract; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.9/formal-trace; §0.4. The individual targets separate statement inputs from the route described above.

## Layer 2: Formal Kummer duality and reciprocity

### 2.1 Formal Kummer exact sequence

For each finite L in Θ_∞ or Ψ_∞ and k≥1, the multiplication-by-π^k sequence on F(m_(Φ̄)) yields 0→F(m_L)/π^k→H¹(L,F[π^k])→H¹(L,F(m_(Φ̄)))[π^k]→0. These sequences commute with restriction, corestriction/formal trace and k-transition maps.

(BKO2021, §4, (4.1), p.954; Rubin1987, §5, sequence (6), p.411; BKO2021 line 516.)

A proof route is as follows. Use finite-flat torsion and divisibility over the algebraic closure, evaluated in finite complete subfields. Take the continuous cohomology long exact sequence; identify fixed formal points with F(m_L). Check transfer is formal-group norm and that transition maps on torsion and quotients agree.

*Needs:* LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/adic-points; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.2/primitive-division; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.9/formal-trace; ArithmeticGaloisDuality §R02.1.

### 2.2 Height-two universal norm vanishing

Prove that every coordinate of the formal-norm inverse limits over Θ_∞/Φ and Ψ_∞/Φ is zero; equivalently, the universal formal norm subgroup in every fixed finite layer is zero. Hazewinkel’s absolutely unramified base theorem gives the base coordinate, with height-two depth a_n=n−⌊(n−1)/2⌋→∞. Apply the ramified-height-two-norms contract at each remaining finite layer, then use separatedness. A proof through deeply ramified cohomology must establish this norm assertion as well as the Kummer-defect assertion of §2.3; a vanishing base coordinate alone proves neither full inverse-limit statement.

(Rubin1987, Proposition 4.5, p.411; Hazewinkel1977, Theorem 1.3, pp.305–306; universal-norm consequence, p.307; proof §§3–4, pp.309–314; Hazewinkel1977 line 37.)

A proof route is as follows. Use the explicit height-two estimate at the unramified base and the stated finite-layer contract at every ramified base; formal norms are transitive and the maximal-ideal filtration is separated.

*Needs:* the ramified-height-two-norms contract; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/adic-points; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.9/formal-trace; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/bko-fields.

### 2.3 Formal-to-elliptic Tate duality comparison

There is a good supersingular elliptic model B/O and an integral identification B̂≃F for π=−p. For each finite L in the pro-p towers, the p-primary local cohomology of its formal subgroup compares with that of B so that the direct-limit defect in the formal Kummer sequence is Pontryagin dual to lim_N F(m_L). In particular colim H¹(L,F(m_(Φ̄)))[π^∞]=0 in both towers.

(Rubin1987, Lemma 5.1 and proof, p.411; BKO2021, §4, p.954.)

A proof route is as follows. Use the imported supersingular finite-field trace-class existence, lift a smooth Weierstrass equation to O, and apply LT.4/elliptic-honda-comparison with trace −2p. Use 0→B̂(m_L)→B(L)→B̃(k_L)→0 and the analogous separable-closure sequence; reduction terms have bounded finite p-primary contribution and disappear in the relevant tower comparison. Apply local duality for abelian varieties over p-adic fields (ArithmeticGaloisDuality §D7.6 local abelian-variety duality) to B, identified with its dual by the principal polarization; track the O-action and its adjoint through the formal identification. Pass to limits using ArithmeticGaloisDuality’s compact/discrete comparison and formal-norm-vanishing. Finite class-formation duality alone is not a proof of the elliptic comparison.

*Needs:* the formal-kummer-limit-adjunction contract; §2.1; §2.2; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.4/elliptic-honda-comparison; EllipticCurves Layer 3 and the supersingular-trace-counts contract; EllipticCurves Layer 4; ArithmeticGaloisDuality §D7.6 local abelian-variety duality; ClassFieldTheory Layer 5; ArithmeticGaloisDuality §R02.1 inverse limits.

### 2.4 Full-tower Kummer pairing

There is a continuous perfect O-bilinear Galois-compatible pairing F(m_(Θ_∞))⊗_O Φ/O × U_∞*→Φ/O. It is the Kummer map followed by the local Artin identification, then evaluation on the inverse Tate twist; equivalently F(m_(Θ_∞))⊗Φ/O≃Hom_O^cont(U_∞*,Φ/O).

(BKO2021, §4, p.954; Rubin1987, Proposition 5.2, p.412; BKO2021 line 522.)

The construction has the following API.

- The scalar-valued continuous bilinear pairing.
- The formal divisible points are the full continuous O-dual.
- Formal trace is adjoint to restriction of unit characters.
- ⟨gy,gx⟩=⟨y,x⟩ after the inverse twist.

A proof route is as follows. Pass to limits in the formal Kummer sequences using the vanished defect. Over Φ_∞ all F[π^∞] is rational; apply inflation-restriction, tame invariants and local reciprocity to identify the H¹ group with Hom_O(U_∞,F[π^∞]). Contract the actual Tate factor to obtain Φ/O, retaining the arithmetic Artin convention.

*Needs:* §2.3; §0.3; ClassFieldTheory Layer 6; ArithmeticGaloisDuality §R02.2 five-term transgression.

**Checks.**

- The formal identity has value zero against every unit.
- The tensor representatives [π]y⊗π^(−k−1) and y⊗π^(−k) have the same value, by the balancing relation.
- A point with nonzero class must give a nonzero value for some unit; a pairing identically zero fails perfectness.

### 2.5 Anticyclotomic Kummer duality

The preceding pairing induces F(m_(Ψ_∞))⊗Φ/O × V_∞*→Φ/O and is perfect. In particular the G⁺-fixed part of F(m_(Θ_∞))⊗Φ/O is F(m_(Ψ_∞))⊗Φ/O, with its specified embedding.

(BKO2021, §4, p.954; Rubin1987, Proposition 5.4 and proof, p.412; Lemma 4.4, p.410; BKO2021 line 527.)

A proof route is as follows. Use the formal point torsion-freeness in the pro-p tower: a nonzero π-torsion point would require the tame degree p²−1. Apply inflation-restriction and the vanished Ψ-tower Kummer defect to prove H¹(G⁺,F(m_(Θ_∞)))=0. Then invariants commute with this divisible tensor in the stated case; duality takes invariants to the closed σ−1 quotient.

*Needs:* §2.4; §0.4; §2.3; ArithmeticGaloisDuality §R02.2 five-term transgression.

### 2.6 Wiles’s explicit Kummer formula

For y∈F(m_(Θ_r)), k≥0, x∈U_∞* and sufficiently large m≥r, the named Kummer pairing is ⟨y⊗π⁻k,x⟩=π^(−m−1−k)Tr_(Φ_m/Φ)(δ_m(x)λ(y)) modulo O. The expression is independent of sufficiently large m and represents the pairing with the arithmetic Artin and π-adic basis conventions.

(BKO2021, §4, p.955; Rubin1987, Theorem 5.3, p.412; BKO2021 line 543.)

A proof route is as follows. Transport Wiles’s Lubin–Tate reciprocity formula to the Coleman interpolation and the genuine π-adic Tate basis. Prove the finite congruence modulo π^(m+1+k), then use trace compatibility to show independence of m. Compare the symbol with the named Kummer/Artin pairing, including its sign; do not infer the formula from abstract nondegeneracy. The normalization is the height-two-explicit-reciprocity contract.

*Needs:* the height-two-explicit-reciprocity contract; §2.4; §1.2; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/sign-generator-comparison; ClassFieldTheory Layer 6.

### 2.7 Wiles’s dual-exponential comparison

Let x=(x_n) be the actual inverse-twisted Kummer classes corresponding to a norm-compatible unit system, with x_n∈H¹(Φ_n,T⁻¹(1)), and identify D_dR⁰(T⁻¹(1)) with the invariant differential line using the specified CM/Lubin–Tate realization. For finite χ of Gal(Φ_n/Φ), the comparison to prove is Σ_(γ∈Gal(Φ_n/Φ)) χ(γ) exp*_n(x_n^γ)=δ_χ(x)ω, where δ_χ=π^(−n−1)Σγ χ(γ)δ_n(x)^γ and λ′(0)=1. The equality is in the finite compositum containing the character values and the local de Rham coefficient field, using the height-two-explicit-reciprocity contract.

(BKO2021, §3, (3.4)–(3.6), pp.952–953; cited Kato 1993, Chapter II, Theorem 2.1.7; BKO2021 line 467.)

A proof route is as follows. Apply exponential/dual-exponential adjunction to the actual Kummer classes, the trace identity of §2.6 and the marked invariant differential. The height-two-explicit-reciprocity contract fixes the finite-character normalization; abstract nondegeneracy does not fix its scalar.

*Needs:* §2.6; §1.4; PadicHodgeRegulators L1 and the height-two-explicit-reciprocity contract.

### Examples

For y⊗π⁻ᵏ, replacing y by [π]y and k by k+1 leaves the trace expression unchanged because λ([π]y)=πλ(y). Increasing m by one also leaves it unchanged since Tr δ_(m+1)=πδ_m. Replacing π by +p in just the denominator changes this sign check.

### Dependencies

LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/adic-points; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.2/primitive-division; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.9/formal-trace; ArithmeticGaloisDuality §R02.1; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/bko-fields; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.4/elliptic-honda-comparison; EllipticCurves Layer 3 and the supersingular-trace-counts contract; EllipticCurves Layer 4; ArithmeticGaloisDuality §D7.6 local abelian-variety duality; ClassFieldTheory Layer 5; ArithmeticGaloisDuality §R02.1 inverse limits; §0.3; ClassFieldTheory Layer 6; ArithmeticGaloisDuality §R02.2 five-term transgression; §0.4; §1.2; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/sign-generator-comparison; §1.4; PadicHodgeRegulators L1 and the height-two-explicit-reciprocity contract. The individual targets separate statement inputs from the route described above.

## Layer 3: Signed formal points and annihilators

### 3.1 Character logarithms

For y∈F(m_(Ψ_∞)) and finite χ of G⁻ choose n with y∈F(m_(Ψ_n)) and χ factoring through Gal(Ψ_n/Φ). Define λ_χ(y)=p⁻nΣ_(γ∈Gal(Ψ_n/Φ))χ(γ)⁻¹λ(y)^γ. It is independent of a common larger n, O-linear and satisfies λ_χ(βy)=χ(β)λ_χ(y).

(BKO2021, §4, p.955; Rubin1987, p.412 (definition) and Lemma 5.5(i)–(iv), p.413; BKO2021 line 535.)

The construction has the following API.

- Enlarging the common point/character layer does not change λ_χ.
- λ_χ(βy)=χ(β)λ_χ(y).
- λ_χ(Tr_(Ψ_m/Ψ_n)y)=p^(m−n)λ_χ(y) for χ at level n.
- λ(y)=Σ_χ λ_χ(y) over all characters of the containing finite quotient.

A proof route is as follows. Use the formal logarithm on all maximal-ideal points; its inverse is used only on a sufficiently deep lattice. Compare sums at consecutive levels: each lower conjugate appears p times. Reindex to prove covariance and use character orthogonality.

*Needs:* §0.1; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/analytic-log; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/bko-fields.

**Checks.**

- For a base point with logarithm a, λ₁=a and every nontrivial component is zero.
- For an order-p² character and a point defined at Ψ_1, the sum on Ψ_2 is zero because the kernel character sum is zero.
- For χ(β)=ζ₅, the logarithm covariance factor is ζ₅; the derivative factor is ζ₅⁴, so the product factor is 1.

### 3.2 Signed formal points

For ε∈{+,−}, define A^ε={y∈F(m_(Ψ_∞)):λ_χ(y)=0 for every χ∈Ξ^ε}, killing the same parity. Define F^ε(Ψ_n)=A^ε∩F(m_(Ψ_n)). Their inclusions are injective O-linear Galois maps and A^ε=⋃_n F^ε(Ψ_n); retain these finite groups as the signed local-condition exports.

(BKO2021, §4, p.955 (A^±); §6.0.2, p.962 (F^±(Ψ_n)); Rubin1987, p.413; BKO2021 line 539.)

The construction has the following API.

- Membership is the same-parity vanishing condition.
- Field extension carries F^ε(Ψ_n) into F^ε(Ψ_m).
- Formal trace maps F^ε(Ψ_m) to F^ε(Ψ_n).
- A^ε is the union of the finite signed groups.
- F(m_Φ)⊂A⁻, while A⁺∩F(m_Φ)=0.

A proof route is as follows. Intersect kernels of the linear character logarithms. Use field inclusions and level independence to identify the finite intersection with the finite-level equations. Take the directed union inside the actual formal point group.

*Needs:* §3.1.

**Checks.**

- At Ψ_0, the plus formal-point group is zero because λ₁=λ is injective there.
- Every base formal point lies in the minus group because its nontrivial components are zero.
- A nonzero conductor-p³ logarithm component lies in the plus group and fails the minus condition; reversing the kernel parity reverses this test.

### 3.3 Signed anticyclotomic units

Define V_∞*,+=⋂_(χ∈Ξ⁻)ker δ_χ and V_∞*,−=⋂_(χ∈Ξ⁺)ker δ_χ as closed Λ-submodules of V_∞*. Thus the unit sign kills opposite parity, in contrast with the formal point sign.

(BKO2021, §2, displayed definition of V*,± , p.949; Rubin1987, §2, p.408; BKO2021 line 297.)

The construction has the following API.

- v is in sign ε iff every derivative of opposite parity vanishes.
- Each sign is a closed compact Λ-submodule.
- δ vanishes on V_∞*,− because the trivial character is plus.
- For a finite extension R of O inside C_p, V_∞*,ε⊗_O R is the set of X∈V_∞*⊗_O R whose R-linearly extended derivatives (δ_χ⊗R)(X), evaluated in C_p, vanish for every χ of the opposite parity. Flatness of R gives this with values in Φ_n⊗_O R. Since τ∈Gal(Φ_n/Φ) carries δ_χ(x) to a nonzero multiple of δ_(τ∘χ)(x), the opposite-parity class is stable under such τ, and every embedding of Φ_n⊗_Φ Frac(R) into C_p over the given embedding of R is the given one composed with some τ⊗1, vanishing in C_p implies vanishing in Φ_n⊗_O R. Flatness and exactness alone do not give the C_p-valued statement.

A proof route is as follows. Use character derivative descent and inverse-character evaluation to prove each kernel is a Λ-submodule. Intersect closed kernels and retain the inherited compact topology. For the minus group, use χ=1 and δ₁=(1+p⁻¹)δ to deduce δ=0.

*Needs:* §1.5; §1.6; §0.1.

**Checks.**

- If δ(v)=1 at p=5, then δ₁(v)=6/5≠0 and v fails the minus condition.
- A plus vector has zero derivatives at every exact-order-p² character, since its conductor exponent is 3.
- For any completed-algebra multiplier, a zero character derivative remains zero even when the multiplier itself evaluates to zero.

### 3.4 Divisible signed-point sum

For n≥0, p^nF(m_(Ψ_n))⊂F⁺(Ψ_n)+F⁻(Ψ_n) and F⁺(Ψ_n)∩F⁻(Ψ_n)=0. Consequently F(m_(Ψ_∞))⊗Φ/O=(A⁺⊗Φ/O)+(A⁻⊗Φ/O). The finite integral lattice sum is only finite index; no integral equality is asserted.

(BKO2021, §4, (4.2), p.955; Rubin1987, Lemma 5.5(v)–(vi) and (7), p.413; BKO2021 line 541.)

A proof route is as follows. Group character projectors by conductor parity. Multiplying by |Gal(Ψ_n/Φ)|=p^n clears their denominators. Use the integral trace operators and the formal group law to realize the projected points; logarithmic injectivity proves the equality and zero intersection. After tensoring Φ/O, multiplication by p^n is surjective and yields the stated sum.

*Needs:* §3.2; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/analytic-log.

### 3.5 Infinite rank of both point signs

Both A⁺ and A⁻ have infinite O-rank. Their rational logarithm spans at finite levels are the sums of precisely the complementary conductor-parity character components, including the trivial component only for A⁻.

(BKO2021, §4, (4.2), p.955; Rubin1987, proof of Proposition 5.6, p.413; Corollary 5.8, p.414; BKO2021 line 542.)

A proof route is as follows. Use normal bases for Ψ_n/Φ and character orthogonality to compute the two rational subspaces. Choose deep integral lattices where λ has an analytic inverse, producing independent actual formal points in each permitted component. Their dimensions grow along alternate conductor levels.

*Needs:* §3.2; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/analytic-log.

### 3.6 Signed annihilator theorem

Under the named perfect anticyclotomic Kummer pairing, Ann(A^ε⊗Φ/O)=V_∞*,ε for the same displayed sign ε. Hence A^ε⊗Φ/O is the continuous dual of V_∞*/V_∞*,ε.

(BKO2021, §4, p.955; Rubin1987, Proposition 5.6 and proof, p.413; Corollary 5.7, p.414; BKO2021 line 547.)

A proof route is as follows. Expand the Wiles trace pairing into character components; δ_χ and λ_χ have inverse covariance, so only matching components contribute. A^ε has logarithm components of parity opposite ε, giving the inclusion in its annihilator. For the converse, test against sufficiently deep pure-character logarithm lattices and their Galois conjugates. A nonzero δ_χ of that opposite parity produces a nonzero Φ/O pairing after suitable π-division.

*Needs:* §2.5; §2.6; §3.3; §3.1; §3.5.

### 3.7 Signed intersection and rank bounds

V_∞*,+∩V_∞*,−=0 and rank_Λ V_∞*,ε≤1 for each sign. In particular neither freeness of a sign nor the integral sum is an input here.

(BKO2021, §4, p.955; Rubin1987, Corollary 5.8 and proof, p.414; BKO2021 line 550.)

A proof route is as follows. The divisible-point sum and perfectness force the intersection of the annihilators to vanish. The quotient Q^ε=V_∞*/V_∞*,ε embeds into a product of characteristic-zero derivative spaces and is O-torsion-free. If its Λ-rank were zero, a nonzero f∈Λ would kill it. Divide f by its largest p-power using O-torsion-freeness; Weierstrass preparation then makes Q^ε finite over O. Its Φ/O-dual would have finite O-corank, contrary to the infinite O-rank of A^ε. Thus each quotient has positive Λ-rank. Combine the positive quotient rank with rank_Λ V_∞*=2.

*Needs:* §3.6; §3.4; §3.5; §0.5; PadicMeasuresIwasawaAlgebras §§4.2–4.5; PadicMeasuresIwasawaAlgebras §§4.2–4.5 and the quadratic-iwasawa-twist contract.

### Examples

At Ψ_0 and Ψ_1 every character has even conductor exponent, so the plus formal-point groups are zero. At Ψ_2 the new odd-conductor components lie in the plus formal-point group. For p=5 the rational dimensions of the minus groups at levels 0,1,2,3 are 1,5,5,105 and those of the plus groups are 0,0,20,20.

### Dependencies

§0.1; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/analytic-log; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/bko-fields; §1.5; §1.6; §2.5; §2.6; §0.5; PadicMeasuresIwasawaAlgebras §§4.2–4.5; PadicMeasuresIwasawaAlgebras §§4.2–4.5 and the quadratic-iwasawa-twist contract. The individual targets separate statement inputs from the route described above.

## Layer 4: The optimal plus unit

### 4.1 Auxiliary imaginary quadratic field

For every p≥5 there exists an imaginary quadratic K of odd discriminant D≡1 mod 8 such that p is inert and p∤h_K. One may arrange |D|<8p; for p>47 the bound h_K≤√|D|·(2+log|D|)/π_real<p suffices, and p≤47 is checked by explicit reduced-form class numbers.

(BKO2021, Lemma 3.1 and proof, p.950; BKO2021 line 338.)

A proof route is as follows. Choose 1≤m≤p−1 with (−m/p)=−1 and 0≤k≤7 with m+kp≡7 mod8. Remove the odd square factor from −(m+kp) to obtain D. Use ζ_K(s)=ζ_Q(s)L(s,χ_D) and the imported analytic residue formula to obtain h(D)=√|D| L(1,χ_D)/π_real (D<−4 here). Periodicity and zero mean give |Σ_(a≤t)χ_D(a)|≤|D|; split the L-series at |D| and use summation by parts on the tail to obtain L(1,χ_D)≤2+log|D|. The resulting bound is <p at p=53 and its ratio to p decreases for p≥53. For primes 5 through47 use the reader’s table. Enumerate primitive reduced positive binary quadratic forms b²−4ac=D with |b|≤a≤c and a≤√(|D|/3), choosing b≥0 on the boundaries. The reduced-form/ideal-class dictionary of ComplexMultiplicationAndExplicitReciprocity CM.1/quadratic-forms-dictionary, with Pic(O_D)=Cl(K) for fundamental D, certifies the listed class numbers.

*Needs:* GlobalNumberFields Layer 9; IntegralLattices §B2 and §B5; ImaginaryQuadraticClassNumber §§H1.3 and H2.1–H2.2.

### 4.2 Early CM special-value input

For §§4.2–4.5 let K be any imaginary quadratic field in which p is inert and p∤h_K. Assume a type-(1,0) algebraic Hecke character φ of conductor f whose norm pullback to the Hilbert class field H is realized by a Gross ℚ-curve E/H with good reduction above p, with φ(ā)=φ̄(a) and the specified CM tangent embedding. Use the supplied good Néron differential ω, nonzero CM period Ω and a split auxiliary prime ℓ≥5 with ℓ∤h_K f and p∤(ℓ−1). Consume the integral zeta classes, direct-character dual-exponential reciprocity, torsion/ring-class disjointness, semilocal splitting and root-number formulas from NonordinaryCMSpecialValues §§NCM.0–NCM.3. The root sign ε=W(φ) may be either sign. For the optimal-unit theorem of §4.6 specialize instead to the K of §4.1, with 2 split and canonical φ: the supplied canonical sign is +1 and Finis’s NCM.4 theorem makes Ω⁻¹L_f(φ̄ν,1) a p-unit for all but finitely many ν. A normalized value is algebraic before its specified p-adic embedding is applied. For ν≠1 use conductor ℓ^m, order ℓ^(m−1) and layer L_(m−1); for ν=1 use m=0,L_0=K. The general signed-value formulas do not assume the positive root sign needed only in §4.6.

(BKO2021, §§3.0.1–3.0.3, (3.1)–(3.5), (3.8)–(3.9), pp.950–954; BKO2021 line 388.)

A proof route is as follows. Take precisely the independent early CM outputs named in the supplier contract, with the same period, inverse Tate representation and direct auxiliary character. The removed ℓ-factors are one only for the nontrivial ramified ν used for the unit witness.

*Needs:* ComplexMultiplicationAndExplicitReciprocity §4.3 canonical Gross existence; ComplexMultiplicationAndExplicitReciprocity §4.3 good reduction; NonordinaryCMSpecialValues §§NCM.0–NCM.4; NonordinaryCMSpecialValues §NCM.3; GlobalNumberFields Layer 9.

### 4.3 Localized auxiliary elliptic unit

Let R/O contain φ and ν and let M_(n,m)=H(E[p^(n+1)])L_(m−1), where conductor(ν)=ℓ^m, m≥2, ord(ν)=ℓ^(m−1) and [L_j:K]=ℓ^j. Define ξ_ν∈U_∞*⊗_O R by the composite: inverse of the untwisting isomorphism (3.5); corestriction from K(fℓ^m p^(n+1)) to M_(n,m); localization at p; the L_(m−1) group-ring splitting; evaluation at ν; projection R[Gal(H/K)]→R; Δ-invariants; and the Kummer identification. Its anticyclotomic image is denoted by the same symbol when the target is stated. For ν=1 set m=0 and use L_0=K, z_f and M_(n,0)=H(E[p^(n+1)]); no negative layer is used.

(BKO2021, §3.0.2, displayed composite and (3.5), pp.952–953; BKO2021 line 438.)

The construction has the following API.

- The n-th projection is the stated corestriction/localization/evaluation composite.
- Corestriction in the p-tower matches the unit norm maps.
- The complete composite is Γ-equivariant with the inverse Tate action.
- Enlarging R carries ξ_ν to its scalar extension, independently of the choice of enlargement.

A proof route is as follows. Construct each map on the specified cohomology carrier, with corestriction and norm compatibility at every p-level. Use the imported disjointness and complete splitting at the selected p-adic place for both group-ring decompositions. Reindex the ℓ-layer by conductor minus one; a character of order ℓ^m would require conductor ℓ^(m+1), so it cannot be localized from z_(fℓ^m) unchanged. Track the coefficient representation T⁻¹(1), the actual Tate basis and every Galois action through the composite.

*Needs:* §4.2; §0.4; §2.4; ArithmeticGaloisDuality §R02.1.5; ClassFieldTheory Layer 5.

**Checks.**

- At ν=1 use the class at modulus f and augmentation of the trivial L_0 factor; there is no L_(−1).
- At ℓ=5,m=2 the source character has order 5 and evaluation sends a generator to ζ₅ rather than ζ₅⁴.
- The two composites from p-level n+1 to n agree by corestriction transitivity; replacing corestriction by restriction changes their directions.

### 4.4 Auxiliary-unit derivative formulas

For ξ_ν from the preceding construction, δ(ξ_ν)=Ω⁻¹L_(ℓ^m f)(φ̄ν,1), retaining the p-Euler factor, and δ_χ(ξ_ν)=Ω⁻¹L_(ℓ^m p f)(φ̄νχ,1) for every finite χ of Γ, including χ=1. The right sides mean the fixed p-adic images of the algebraic normalized values. Only φ is conjugated in these formulas; ν and χ are not silently inverted. At χ=1 the formulas agree through δ₁=(1+p⁻¹)δ.

(BKO2021, (3.6)–(3.7) and Proposition 3.3(1)–(2), p.953; BKO2021 line 467.)

A proof route is as follows. Apply the imported Kato zeta-class formula before local projection. Use the distinct Wiles dual-exponential comparison, then character evaluation and the fixed differential/period normalization. For the augmentation formula restore the p-factor and use φ̄ν(pO_K)=−p.

*Needs:* §4.3; §2.7; §1.6.

### 4.5 Auxiliary-unit sign

If ε=W(φ), the anticyclotomic image of ξ_ν belongs to V_∞*,ε⊗R. For a nontrivial anticyclotomic χ with conductor exponent c, W(φ̄νχ)=(−1)^cW(φ); opposite sign forces the central L-value and δ_χ to vanish. If ε=−, the required trivial-character vanishing follows separately from W(φ̄ν)=−1.

(BKO2021, Proposition 3.3(3) and proof, p.953; BKO2021 line 479.)

A proof route is as follows. Use the supplied root-sign formula and functional equation, then §4.4. Include χ=1 separately when the sign is minus. Apply the simultaneous-kernel coefficient comparison of §3.3 to the entire conjugation-stable opposite-parity family.

*Needs:* §4.4; §4.2; §3.3; NonordinaryCMSpecialValues §NCM.3.

### 4.6 Optimal signed unit

There exists ξ*∈V_∞*,+ with δ(ξ*)∈O×. This existence is established before any assertion that V_∞*,+ is Λ-free.

(BKO2021, Theorem 3.4 and proof, pp.953–954; BKO2021 line 489.)

A proof route is as follows. Take ν from the early Finis unit theorem and combine xi-values, xi-signed and W(φ)=+1. Then ξ_ν lies in V_∞*,+⊗R and δ(ξ_ν) is a unit of R; BKO write W, and any finite coefficient ring containing the values of φ and ν may be used. Let I=δ(V_∞*,+)⊂O. Its extension IR contains a unit, so IR=R; since O→R is a finite extension of discrete valuation rings, I=O. Choose ξ* mapping to a unit. This avoids using Rubin Proposition 8.1 as an unexplained prior signed-freeness result.

*Needs:* §4.1; §4.5; §4.2; §3.3; PadicMeasuresIwasawaAlgebras §§4.2–4.5.

### Examples

At p=5 take D=−7 with h=1; at p=17 take D=−71 with h=7. Both have D≡1 modulo 8 and quadratic symbol −1 at p. For ℓ=5, conductor 25 means order 5 and the degree-5 ring-class layer. A unit in the extended image ideal forces the original image ideal to be O.

### Dependencies

GlobalNumberFields Layer 9; IntegralLattices §B2 and §B5; ImaginaryQuadraticClassNumber §§H1.3 and H2.1–H2.2; ComplexMultiplicationAndExplicitReciprocity §4.3 canonical Gross existence; ComplexMultiplicationAndExplicitReciprocity §4.3 good reduction; NonordinaryCMSpecialValues §§NCM.0–NCM.4; NonordinaryCMSpecialValues §NCM.3; §0.4; §2.4; ArithmeticGaloisDuality §R02.1.5; ClassFieldTheory Layer 5; §2.7; §1.6; §3.3; PadicMeasuresIwasawaAlgebras §§4.2–4.5. The individual targets separate statement inputs from the route described above.

## Layer 5: An unramified formal CM point

### 5.1 Auxiliary supersingular rational elliptic curve

For every p≥5 there is an elliptic curve E/Q with good reduction at p and a_p(E)=0. After replacing it by the optimal curve in its Q-isogeny class it still has good supersingular reduction and trace zero, and Ê⊗O≃F for π=−p.

(BKO2021, §5.0.1, p.955; BKO2021 line 554.)

A proof route is as follows. Import existence of a supersingular j∈F_p and a nonsingular Weierstrass model over F_p from the finite-field supplier. Lift its coefficients to integers; the discriminant remains a p-unit, yielding E/Q. For p≥5, supersingularity over F_p gives p∣a_p and the Hasse bound forces a_p=0. Use isogeny invariance of the local L-factor/good reduction and apply LT.4/elliptic-honda-comparison. No unverified use of Cox’s uncleared book is needed.

*Needs:* EllipticCurves Layer 3 and the supersingular-trace-counts contract; EllipticCurves Layer 4; EllipticCurveModularity §R29.5 quotient isogeny; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.4/elliptic-honda-comparison.

### 5.2 Optimal parametrization and separable reduction

For the optimal E of conductor N with p∤N, let f:X₀(N)→E be its strong Weil parametrization. It extends to the smooth Z_p models, and its reduction f̄ is nonconstant and separable: f*ω_E=c_E f_E(q)dq/q with c_E∈Z_p× and normalized q-coefficient 1. A prime-to-p scalar multiple of f retains separability and being unramified at a chosen point.

(BKO2021, §5.0.1, p.955; AbbesUllmo1996, Théorème A, p.269; BKO2021 line 558.)

A proof route is as follows. Import the exact modular parametrization and Hecke eigendifferential. Use the Néron mapping property and the requested Manin p-unit theorem for optimal curves at odd primes of good reduction. Reduce the nonzero differential to prove separability; compose with a prime-to-p multiplication map, whose differential is a unit.

*Needs:* §5.1; EllipticCurveModularity §R29.5 parametrization; EllipticCurves Layer 4; ModularCurvesPartII §§3.1–3.5, 5.2–5.3 and 5.10 and the composite-genus-formula contract; EllipticCurveModularity §R29.5 and the good-prime-manin-unit contract.

### 5.3 Ramification bound

Let μ=[SL₂(Z):Γ₀(N)]=N∏_(ℓ∣N)(1+ℓ⁻¹). The number of geometric points where f̄:X₀(N)_(F_p)→E_(F_p) ramifies is at most 2g(X₀(N))−2≤μ/6. Count points without multiplicity; the different divisor supplies the multiplicities.

(BKO2021, Lemma 5.2(i) and proof, pp.956–957; BKO2021 line 590.)

A proof route is as follows. Apply separable Riemann–Hurwitz with elliptic target genus one. Each ramification point contributes at least one to the effective different, including possible wild ramification. Use the full Γ₀(N) genus formula, with cusp and elliptic-point terms retained.

*Needs:* §5.2; AlgebraicCurves Layer 7; ModularCurvesPartII §§3.1–3.5, 5.2–5.3 and 5.10 and the composite-genus-formula contract.

### 5.4 Prime-to-p modular j-fibres

Apply ModularCurves §§8A–8D and 9C–9E to p∤N. Over j≠0,1728 the coarse j-map is étale and has μ geometric points in its fibre; over the two exceptional values its fibre has at least μ/3 and μ/2 points. On a curve with scalar q-Frobenius [s p], multiplication by s p stabilizes every prime-to-p cyclic subgroup. Consequently these coarse level points are 𝔽_(p²)-rational. This applies the supplied moduli theorem to scalar-Frobenius representatives; it does not assert that their individual prime-to-p torsion points are rational.

(BKO2021, Lemma 5.1(i), p.956; proof of Lemma 5.2, p.957; BKO2021 line 652.)

A proof route is as follows. Use the supplied quotient fibre degrees and scalar Frobenius on subgroups, retaining the stabilizer factors of the j-map rather than attributing those factors to the modular parametrization.

*Needs:* ModularCurves §9C; ModularCurves §9E; ModularCurvesPartII §§3.1–3.5, 5.2–5.3 and 5.10 and the composite-genus-formula contract; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.4/elliptic-honda-comparison; EllipticCurves Layer 3 and the supersingular-trace-counts contract.

### 5.5 Nonelliptic supersingular count

The number of points of X₀(N)(F_(p²)) represented by curves of trace ±2p with j≠0,1728 is at least μ( floor((p−1)/12)−3/2+(−3/p)+(1/2)(−1/p) ). This lower bound exceeds μ/6 for p≡1 mod12 or p≥31 with p≠47, so an unramified point of this kind exists in that range. At p=47 the bound is zero and proves no such conclusion. The supplied mass/twist classification also gives the stronger bound μ floor((p−1)/12), since each nonexceptional supersingular j has scalar-trace models. It gives a generic unramified point for every p≥13, including47; retain the weaker printed bound as a numerical check.

(BKO2021, Lemma 5.2(ii), p.956, and proof, p.957; BKO2021 line 594.)

A proof route is as follows. Import Deuring’s supersingular j count and Schoof’s F_(p²)-isomorphism-class counts, including twists, from the finite-field continuation. Remove the two exceptional j contributions and multiply the remaining fibre count by μ using moduli-etale. Evaluate the four residue classes modulo12 and check the finite boundary primes; compare with ramification-count. For the stronger count, all trace classes other than ±2p in the supplied classification occur only at j=0 or1728. Every one of the floor((p−1)/12) other supersingular j-values contributes μ rational points represented by scalar-trace models.

*Needs:* §5.3; §5.4; EllipticCurves Layer 3 and the supersingular-trace-counts contract.

### 5.6 Exceptional supersingular count

If p≡2 mod3, at least μ/3 points with j=0 in X₀(N)(F_(p²)) have trace ±2p representatives. If p≡3 mod4, at least μ/2 such points have j=1728. Each lower bound exceeds μ/6 and gives an unramified point for f̄. Combined with the generic count, an appropriate point exists for every p≥5, including p=47.

(BKO2021, Lemma 5.2(iii), p.956, and proof, p.957; BKO2021 line 603.)

A proof route is as follows. Use the finite-field supersingularity criteria for j=0,1728 and models over F_p; a_p=0 gives a_(p²)=−2p. Use the exceptional fibre bounds and compare with the ramification divisor. Check p mod12=5,7,11 against the exceptional cases and residue1 against the generic case.

*Needs:* §5.4; §5.3; §5.5; EllipticCurves Layer 3 and the supersingular-trace-counts contract.

### 5.7 Fine-level unramified lift

Choose an unramified supersingular P∈X₀(N)(F_(p²)) with scalar Frobenius and an auxiliary Γ₁(M) rigidification with M≥4 and p∤M, giving P′ on the fine curve X₀(N;M). The forgetful map is unramified at P′. For exceptional j one may choose the auxiliary optimal curve at N=27 (j=0 case) or N=32 (j=1728 case) to remove the relevant elliptic stabilizer. After multiplying f by #E(F_(p²)), P maps to zero and the completed local morphism f′ at P′→0 is an O-isomorphism.

(BKO2021, §5.0.1, pp.957–958; BKO2021 line 683.)

A proof route is as follows. For source q-Frobenius [s p] take M=p−s≥4, prime to p, so its M-torsion is rational. The number of primitive level choices is prime to p. In the exceptional cases use N=27 for j=0 and N=32 for j=1728 to eliminate the relevant elliptic stabilizer. Multiply the target map by (p+1)² to send the coarse residue point to zero, and use the étale completed-local comparison.

*Needs:* §5.6; §5.2; ModularCurves §7D; ModularCurves §9C; ModularCurvesPartII §§3.1–3.5, 5.2–5.3 and 5.10 and the composite-genus-formula contract.

### 5.8 Primitive formal CM point

Choose Q∈Ê(m_Φ) with Q∉pÊ(m_Φ), using Ê(m_Φ)≃pO under the formal logarithm at the unramified base. Lift Q through the completed-local isomorphism at P′ to an O-point representing an elliptic scheme A/O with the prescribed prime-to-p levels. Its formal group has CM by O through the imported Honda comparison, while f(P)=Q. No global CM for A is asserted.

(BKO2021, §5.0.1, (5.1), p.958; BKO2021 line 705.)

The construction has the following API.

- The chosen O-valued moduli point maps to Q in the formal neighbourhood of zero.
- Q is not in pÊ(m_Φ).
- Â has the integral formal O-action and the marked Tate-module comparison.
- All level and point data extend to the chosen finite complete extensions.

A proof route is as follows. The base logarithm is an isomorphism F(pO)≃pO, so choose logarithm p times a unit. Lift through the completed-local isomorphism and algebraize using the fine model and universal elliptic curve. Retain the source formal parameter s p separately from the target parameter −p.

*Needs:* §5.7; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.4/elliptic-honda-comparison; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.3/elliptic-deformation-comparison; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/analytic-log.

**Checks.**

- The point Q=0 has logarithm 0 and fails primitivity.
- A point [p]R has logarithm in p²O and fails the nonzero class test modulo pF(pO).
- At p=5 logarithm 5 gives a generator of 5O; multiplying by p+1=6 gives 30, still a generator, whereas multiplying by 5 gives 25.

### Examples

At p=47 the printed generic coefficient is 3−3/2−1−1/2=0. The sharper nonexceptional count gives 3μ, and the exceptional fibres give μ/3 and μ/2; each latter bound exceeds μ/6. At N=27 and N=32, μ is 36 and 48, the genus is one, and the separable map has different degree zero.

### Dependencies

EllipticCurves Layer 3 and the supersingular-trace-counts contract; EllipticCurves Layer 4; EllipticCurveModularity §R29.5 quotient isogeny; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.4/elliptic-honda-comparison; EllipticCurveModularity §R29.5 parametrization; ModularCurvesPartII §§3.1–3.5, 5.2–5.3 and 5.10 and the composite-genus-formula contract; EllipticCurveModularity §R29.5 and the good-prime-manin-unit contract; AlgebraicCurves Layer 7; ModularCurves §9C; ModularCurves §9E; ModularCurves §7D; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.3/elliptic-deformation-comparison; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.0/analytic-log. The individual targets separate statement inputs from the route described above.

## Layer 6: Completions and modular quasi-canonical points

### 6.1 Dedekind completion models

Choose the inert p-adic place of an auxiliary imaginary quadratic K and a compatible prime in each ring class field H_(p^s) of conductor p^s (the ring class field, not the ray class field written K(g) in BKO §3). Then Φ is the completion K_p and Ψ′_s is the completion of H_(p^s) at that selected prime, over the selected Hilbert-class-field prime. The local norm subgroup is Q_p×(1+p^sO) under local reciprocity, with inertia quotient (O/p^sO)×/(Z/p^sZ)×. For s≥1 its degree is p^(s−1)(p+1); Ψ′_0=Φ. These equivalences commute with inclusions, Galois actions and formal traces. No uniqueness of the prime above p in the entire global ring class field is asserted.

(BKO2021, §5.0.2, pp.958–959; §3.0.1, p.950; BKO2021 line 712.)

A proof route is as follows. Use that the inert ideal pO_K is principal and hence splits completely in H/K, then select a prime of H once. Apply global/local Artin compatibility and the ring-class idele subgroup to identify the local decomposition quotient and its norm subgroup. Match the quotient with LT.7/bko-quasi-fields and LT.8/field-generator-comparisons, retaining the marking. Transport the valuation ring and maximal ideal to the height-one Dedekind adic-completion carrier in the pinned point-map statement.

*Needs:* §4.1; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.7/bko-quasi-fields; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/field-generator-comparisons; ComplexMultiplicationAndExplicitReciprocity §3.1; GlobalNumberFields Layer 4; ClassFieldTheory Layer 8.

### 6.2 Modular quasi-canonical points

For the formally CM A/O and an O-basis t of T_pA set T_s=p⁻sZ_p t+T_pA and C_s=T_s/T_pA. Import the marked quotient A_s=A/C_s over O_(Ψ′_s), its formal order Z_p+p^sO, its reduction and the induced prime-to-p Γ₀(N),Γ₁(M) levels. These give moduli points z_s on X₀(N;M), and their coarse images on X₀(N), with z_0=P′. Define x_s=f′(z_s) as an actual elliptic point before identifying its formal parameter.

(BKO2021, §5.0.2, pp.958–959; BKO2021 line 715.)

The construction has the following API.

- z_0 is the original marked lift and x_0=Q.
- z_s and x_s are defined over the specified Ψ′_s, with the local ring-class action.
- The prime-to-p level is the image of the original level under A→A_s.
- The Galois action on z_s is the marked lattice action from the quasi-canonical supplier.

A proof route is as follows. Import the quotient, marked formal comparison, minimal stabilizer field and base-change compatibility from the LT suppliers; do not reconstruct Gross–Yu quasi-canonical lifts. Transport the prime-to-p levels along the p-power isogeny, where it is an isomorphism on prime-to-p torsion. Apply the fine moduli universal property and the integral modular parametrization.

*Needs:* §5.8; §6.1; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.5/elliptic-isogeny-comparison; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.7/bko-quasi-fields; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/bko-fields; ModularCurvesPartII §§3.1–3.5, 5.2–5.3 and 5.10 and the composite-genus-formula contract.

**Checks.**

- At s=0, T_0=T, A_0=A and x_0=Q; omitting the original marking changes the moduli point.
- At p=5 the first primed degree is 6, not 5.
- The tame-fixed field of Ψ′_2 is Ψ_1 at p=5, of degree 5; using Ψ′_1 would give the base field.

### 6.3 Formal image of the modular points

Each x_s specializes to zero on E and therefore has a unique formal parameter in Ê(m_(Ψ′_s)); x_0=Q. Through the completion models this parameter-to-point map is exactly WeierstrassCurve.formalPointHomAdicCompletion, with injectivity and range WeierstrassCurve.range_formalPointHomAdicCompletion. The formal, elliptic and Galois trace squares commute.

(BKO2021, §5.0.2 and Definition 5.4, p.959; BKO2021 line 736.)

A proof route is as follows. The reduction of the p^s-isogeny is purely inseparable. Its coarse point is the corresponding Frobenius twist of the initial coarse point; since the coarse map is defined over 𝔽_p and sends that point to zero, it sends every twist to zero. Apply the supplied range and injectivity, then use additivity to compare traces. A fine Γ₁(M) marking need not be fixed by Frobenius.

*Needs:* §6.2; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.9/trace-compatible-exports; `WeierstrassCurve.formalPointHomAdicCompletion`; `WeierstrassCurve.formalPointHomAdicCompletion_injective`; `WeierstrassCurve.range_formalPointHomAdicCompletion`.

### Examples

At p=5, [Ψ′_1:Φ]=6 and [Ψ′_2:Φ]=30; removing the tame factor gives [Ψ_1:Φ]=5. Ring-class norm subgroups contain ℚ₅×, unlike the full Lubin–Tate subgroup. A chosen completion of a split Hilbert-class-field prime is used, rather than a claim that the global prime is unique.

### Dependencies

§4.1; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.7/bko-quasi-fields; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/field-generator-comparisons; ComplexMultiplicationAndExplicitReciprocity §3.1; GlobalNumberFields Layer 4; ClassFieldTheory Layer 8; §5.8; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.5/elliptic-isogeny-comparison; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/bko-fields; ModularCurvesPartII §§3.1–3.5, 5.2–5.3 and 5.10 and the composite-genus-formula contract; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.9/trace-compatible-exports; `WeierstrassCurve.formalPointHomAdicCompletion`; `WeierstrassCurve.formalPointHomAdicCompletion_injective`; `WeierstrassCurve.range_formalPointHomAdicCompletion`. The individual targets separate statement inputs from the route described above.

## Layer 7: Optimal local points and exact traces

### 7.1 Optimal local point system

Let Δ′ be the order-(p+1) tame subgroup in Gal(Ψ′_∞/Φ). Define y_s=Σ_(d∈Δ′)d·x_(s+1) in Ê(m_(Ψ_s))≃F(m_(Ψ_s)) and y=[p+1]Q∈F(m_Φ). The sum is formal addition, and Ψ_s=(Ψ′_(s+1))^Δ′ fixes it.

(BKO2021, Definition 5.4, p.959; BKO2021 line 739.)

The construction has the following API.

- y_s is an actual formal Ψ_s-point.
- y_s is the Δ′-trace of x_(s+1).
- y=[p+1]Q.
- Tracing y_s is the same as tracing x_(s+1) through the tame/pro-p field rectangle.

A proof route is as follows. Use the formal-image comparison and the exact tame/fixed-field identification. Take the finite formal trace and descend it to Ψ_s. Transport Ê to the fixed F and define the base point by scalar multiplication.

*Needs:* §6.3; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/bko-fields; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.9/tame-descent.

**Checks.**

- At p=5 the tame trace has 6 terms, rather than the 24 terms of the full Lubin–Tate tame group.
- The point y_0 is traced from x_1 and equals zero by the Hecke relation; x_0 is the primitive Q.
- The parameter is the iterated formal sum: its logarithm is the sum of conjugate logarithms, whereas plain addition of parameters need not satisfy that equation.

### 7.2 Primitive base point

The base point y=[p+1]Q is not divisible by p in F(m_Φ); equivalently its O-span equals F(m_Φ), a free O-module of rank one.

(BKO2021, Theorem 5.5(i) and proof, p.959; BKO2021 line 746.)

A proof route is as follows. Use the unramified base logarithm identification F(m_Φ)≃pO from the primitive-point construction. Since p+1∈O×, multiplication by p+1 preserves a nonzero class modulo p. A vector outside pO in this rank-one lattice is an O-generator.

*Needs:* §7.1; §5.8.

### 7.3 Hecke relation on marked lattice neighbours

For s≥1 the p forward marked neighbours of T_s form the Gal(Ψ′_(s+1)/Ψ′_s)-orbit of z_(s+1), and the single backward homothety class is z_(s−1). Thus the geometric T_p correspondence gives f(T_p z_s)=Σ_g g·x_(s+1)+x_(s−1)=a_p(E)x_s=0. At s=0 all p+1 neighbours are forward and form Gal(Ψ′_1/Φ)=Δ′. The statement concerns z_s before f and x_s after f; f is never applied a second time to x_s.

(BKO2021, proof of Theorem 5.5(ii), p.959; BKO2021 line 753.)

A proof route is as follows. Write O=ℤ_p⊕ℤ_pθ. The forward lattices for s≥1 are p^(−s−1)ℤ_p(1+a p^sθ)t+T, a modulo p, and the backward lattice is p^(−1)T_(s−1). Apply the supplied marked-neighbour and Hecke point relation before taking formal traces. At s=0 use the orbit of size p+1.

*Needs:* §6.2; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.7/lattice-neighbors; ModularCurvesPartII §§9.1 and 9.9 and the integral-hecke-point-relation contract; ModularCurvesPartII §§13.1–13.2 and 16.6–16.8 and the integral-hecke-point-relation contract; EllipticCurveModularity §R29.5 parametrization.

### 7.4 Optimal-point trace identities

The system satisfies y_0=0, Tr_(Ψ_1/Φ)y_1=−y, and Tr_(Ψ_(s+1)/Ψ_s)y_(s+1)=−y_(s−1) for every s≥1. The first two equations are separate boundary statements, not instances of a recurrence with a fictitious y_(−1).

(BKO2021, Theorem 5.5(ii), p.959; Rubin1987, Proposition 6.1, pp.415–416; BKO2021 line 748.)

A proof route is as follows. At the conductor-zero vertex the p+1 forward sum is zero, giving y_0=0. At conductor one the forward trace of x_2 is −x_0=−Q; the tame trace multiplies it by p+1, so Tr y_1=−y. For higher conductor, trace the Hecke neighbour relation through the tame/pro-p rectangle and use injectivity of the formal point map.

*Needs:* §7.1; §7.3; §6.3; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.9/trace-compatible-exports.

### Examples

The initial data are x_0=Q, y=6Q at p=5 and y_0=0. The first traces are Tr y_1=−y, Tr_(2/1)y_2=0 and Tr_(3/0)y_3=5y. The generic recurrence starts with s=1, never with an undefined point of index −1.

### Dependencies

§6.3; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.8/bko-fields; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.9/tame-descent; §5.8; §6.2; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.7/lattice-neighbors; ModularCurvesPartII §§9.1 and 9.9 and the integral-hecke-point-relation contract; ModularCurvesPartII §§13.1–13.2 and 16.6–16.8 and the integral-hecke-point-relation contract; EllipticCurveModularity §R29.5 parametrization; LubinTateFormalModulesAndQuasiCanonicalLifts §LT.9/trace-compatible-exports. The individual targets separate statement inputs from the route described above.

## Layer 8: Minus-point invariants and freeness

### 8.1 Minus-point invariant theorem

For D⁻=A⁻⊗_O Φ/O one has (D⁻)^(G⁻)=F(m_Φ)⊗_O Φ/O≃Φ/O. For cofinal odd n≥1, H¹(Gal(Ψ_n/Φ),F⁻(Ψ_n))=0; its direct limit gives the equality of divisible invariants.

(BKO2021, Corollary 5.6 and proof, pp.959–960; Rubin1987, Corollary 6.2, p.416; Lemmas 7.1–7.2 and Propositions 7.3–7.4, pp.416–417; BKO2021 line 769.)

A proof route is as follows. Use the trace recurrence and character-logarithm trace law to show y_n∈F⁻(Ψ_n) for odd n and Tr_(Ψ_n/Φ)y_n=±p^((n−1)/2)y. Over a finite-index logarithm lattice decompose F⁻(Ψ_n) rationally into O[G_1] and O[G_k]/O[G_(k−1)] for odd3≤k≤n. Compute its cyclic Herbrand quotient h_n=p^(n−1), with residue cardinal p². The primitive trace gives #Hhat⁰≤p^(n−1)[F(m_Φ):Oy]=p^(n−1); hence H¹=0 by the quotient formula. Pass to the cofinal odd layers and use the invariant/divisible-tensor exact sequence from continuous cohomology. This uses the local trace system, not global Heegner points.

*Needs:* §7.4; §7.2; §3.2; §3.1; ArithmeticGaloisDuality §R02.2 five-term transgression; ClassFieldTheory Layer 5.

### 8.2 Minus quotient freeness

The compact Λ-module Q⁻=V_∞*/V_∞*,− is free of rank one. Its augmentation coinvariants are O, through the dual of the preceding invariant theorem.

(BKO2021, proof of Corollary 5.6, p.960; Rubin1987, Lemma 4.3, p.410; BKO2021 line 777.)

A proof route is as follows. Dualize the invariant identity using the signed annihilator pairing to obtain Q⁻/(γ−1)Q⁻≃O. Use compact Nakayama to show Q⁻ is cyclic over Λ. The rank bound on V_∞*,− and rank V_∞*=2 give rank Q⁻≥1. A cyclic module Λ/I of positive rank over the domain Λ has I=0, proving freeness.

*Needs:* §8.1; §3.6; §3.7; §0.5; PadicMeasuresIwasawaAlgebras §5.2; PadicMeasuresIwasawaAlgebras §§4.2–4.5 and the quadratic-iwasawa-twist contract.

### 8.3 Minus kernel freeness

V_∞*,− is free of rank one over Λ.

(BKO2021, proof of Corollary 5.6, p.960; Rubin1987, Lemma 4.1, p.410; BKO2021 line 784.)

A proof route is as follows. The quotient Q⁻≃Λ is projective, so 0→V_∞*,−→V_∞*→Q⁻→0 splits as Λ-modules. Thus V_∞*,− is a finitely generated projective module over the local ring Λ and is free. Rank additivity gives rank one. This also supplies the saturated rank-one conclusion used in Rubin’s UFD argument.

*Needs:* §8.2; §0.5; PadicMeasuresIwasawaAlgebras §§4.2–4.5 and the quadratic-iwasawa-twist contract.

### Examples

At p=5 and odd n=1,3,5, the total trace of y_n is −y, 5y, −25y. Since O/p^a has 5^(2a) elements, the relevant upper bounds for the zeroth Tate group are 1,25,625, exactly p^(n−1); the first cohomology group therefore has order 1.

### Dependencies

§7.4; §7.2; §3.2; §3.1; ArithmeticGaloisDuality §R02.2 five-term transgression; ClassFieldTheory Layer 5; §3.6; §3.7; §0.5; PadicMeasuresIwasawaAlgebras §5.2; PadicMeasuresIwasawaAlgebras §§4.2–4.5 and the quadratic-iwasawa-twist contract. The individual targets separate statement inputs from the route described above.

## Layer 9: Integral decomposition and nonvanishing

### 9.1 Augmentation-unit generation

The map δ induces Q⁻→O with δ(λv)=aug(λ)δ(v), and δ(m_ΛQ⁻)⊂pO for m_Λ=(p,γ−1). Therefore the image of ξ* with δ(ξ*)∈O× generates Q⁻.

(BKO2021, proof of Theorem 5.8, p.960; Rubin1987, Lemma 4.2, p.410; BKO2021 line 793.)

A proof route is as follows. Use 1∈Ξ⁺ and δ₁=(1+p⁻¹)δ to prove δ kills the minus kernel. Use augmentation covariance and the explicit maximal ideal to prove δ(m_ΛQ⁻)⊂pO. Under Q⁻≃Λ, the class of ξ* lies outside the maximal ideal and is a unit generator.

*Needs:* §4.6; §8.2; §1.6; §1.3; §3.3; PadicMeasuresIwasawaAlgebras §§4.4–4.5.

### 9.2 Rubin’s integral decomposition

For every prime p≥5 and the standing unramified quadratic local datum, the addition map V_∞*,+⊕_Λ V_∞*,−→V_∞* is a Λ-linear homeomorphism. Equivalently V_∞*=V_∞*,+⊕V_∞*,− integrally over O[[G⁻]].

(BKO2021, Theorem 2.1, p.949; Theorem 5.8 and proof, p.960; Rubin1987, Conjecture 2.2, p.408; Theorem 8.4, pp.418–419; BKO2021 line 790.)

A proof route is as follows. The image of ξ* generates Q⁻, so every v is a plus multiple of ξ* plus a minus element. The signed intersection is zero, giving injectivity. The modules are compact Hausdorff and the addition map is continuous; its inverse is continuous.

*Needs:* §9.1; §3.7; §8.3.

### 9.3 Signed local-unit freeness

Both V_∞*,+ and V_∞*,− are Λ-free of rank one, and the chosen optimal ξ* generates V_∞*,+.

(BKO2021, §2, p.949; Theorem 5.8, p.960; Rubin1987, Proposition 8.1, p.417; BKO2021 line 300.)

A proof route is as follows. Use the direct sum and zero intersection to identify the plus module with Q⁻. Its generator is ξ* by augmentation-unit-generation. Combine with minus-kernel-free.

*Needs:* §9.2; §8.3.

### 9.4 Nonzero character derivative on the full module

For every finite anticyclotomic χ, δ_χ:V_∞*→ℂ_p (with finite image field Φ_n(χ) when χ factors at level n) is not the zero map. This can be proved from Kummer duality before using the direct-sum conclusion.

(Rubin1987, proof of Lemma 10.1, p.421; BKO2021, Corollary 2.2, p.949.)

A proof route is as follows. If δ_χ were zero, coefficient-field conjugacy would make all character derivatives in its conductor orbit zero. Use the logarithmic normal-basis lattice to choose a nonzero divisible formal point with only those conductor components. The Wiles Fourier pairing would make this point pair to zero with every unit, contradicting perfectness.

*Needs:* §3.1; §2.6; §2.5; §3.5.

### 9.5 Correct-parity generator nonvanishing

For ε∈{+,−}, every Λ-generator v_ε of V_∞*,ε and every χ∈Ξ^ε satisfy δ_χ(v_ε)≠0. For χ of opposite parity the derivative is zero. This includes χ=1 on the plus side.

(BKO2021, Corollary 2.2, p.949; Rubin1987, Lemma 10.1, p.421; BKO2021 line 308.)

A proof route is as follows. Decompose the full module into the two signs. The opposite sign has zero δ_χ by definition. Since δ_χ is nonzero on the full module it is nonzero on the matching sign. Every element of that free rank-one sign is λv_ε, and δ_χ(λv_ε)=ev_(χ⁻¹)(λ)δ_χ(v_ε). If the generator derivative vanished, the whole sign map would vanish.

*Needs:* §9.3; §9.4; §1.4; §3.3.

### 9.6 Historical numerical range regression

Specialize the universal decomposition to all primes 5≤p≤1000 with p≢1 modulo 12, the range of Rubin’s computation. The bound 1001 in BKO Remark 2.3 gives the same prime set because 1001=7·11·13. The theorem also applies to residue class 1 modulo 12 and to p=47. This numerical range is a consistency example of the universal statement and is not an input to its proof.

(BKO2021, Remark 2.3, p.949; Rubin1987, Computation, p.418; Theorem 8.4, pp.418–419; BKO2021 line 310.)

A proof route is as follows. Specialize §9.2 and compute 1001=7·11·13; no numerical verification is used in the universal argument.

*Needs:* §9.2.

### Examples

For Q⁻≃O[[T]], augmentation is evaluation at T=0. A δ-unit has unit constant term and generates. The coefficient-of-T functional takes T to 1 but T has constant term zero; this continuous O-linear functional fails augmentation covariance and cannot be used in the generation argument.

### Dependencies

§4.6; §8.2; §1.6; §1.3; §3.3; PadicMeasuresIwasawaAlgebras §§4.4–4.5; §3.7; §8.3; §3.1; §2.6; §2.5; §3.5; §1.4. The individual targets separate statement inputs from the route described above.

## Worked examples


### The auxiliary quadratic-field examples

For p>47 choose a nonsquare −m modulo p and adjust m by kp, 0≤k≤7, so that m+kp≡7mod8. Removing an odd square factor gives a fundamental D≡1mod8, |D|<8p and (D/p)=−1. For such D, the residue formula and ζ_K=ζ_Q L(χ_D) give h(D)=√|D| L(1,χ_D)/π_real. Splitting the character series after |D| terms, periodic cancellation and summation by parts bound its tail by1, while the initial harmonic sum is at most1+log|D|. Hence h(D)<√(8p)(2+log(8p))/π_real<p at p=53 and thereafter by monotonicity of the ratio. The remaining primes have the following examples; tuples are the complete primitive reduced forms with b²−4ac=D and the boundary tie rule b≥0.

| p | D | h(D) | Reduced forms (a,b,c) |
|---|---:|---:|---|
| 5 | -7 | 1 | (1, 1, 2) |
| 7 | -15 | 2 | (1, 1, 4); (2, 1, 2) |
| 11 | -23 | 3 | (1, 1, 6); (2, -1, 3); (2, 1, 3) |
| 13 | -15 | 2 | (1, 1, 4); (2, 1, 2) |
| 17 | -71 | 7 | (1, 1, 18); (2, -1, 9); (2, 1, 9); (3, -1, 6); (3, 1, 6); (4, -3, 5); (4, 3, 5) |
| 19 | -39 | 4 | (1, 1, 10); (2, -1, 5); (2, 1, 5); (3, 3, 4) |
| 23 | -47 | 5 | (1, 1, 12); (2, -1, 6); (2, 1, 6); (3, -1, 4); (3, 1, 4) |
| 29 | -31 | 3 | (1, 1, 8); (2, -1, 4); (2, 1, 4) |
| 31 | -7 | 1 | (1, 1, 2) |
| 37 | -39 | 4 | (1, 1, 10); (2, -1, 5); (2, 1, 5); (3, 3, 4) |
| 41 | -167 | 11 | (1, 1, 42); (2, -1, 21); (2, 1, 21); (3, -1, 14); (3, 1, 14); (4, -3, 11); (4, 3, 11); (6, -5, 8); (6, -1, 7); (6, 1, 7); (6, 5, 8) |
| 43 | -87 | 6 | (1, 1, 22); (2, -1, 11); (2, 1, 11); (3, 3, 8); (4, -3, 6); (4, 3, 6) |
| 47 | -95 | 8 | (1, 1, 24); (2, -1, 12); (2, 1, 12); (3, -1, 8); (3, 1, 8); (4, -1, 6); (4, 1, 6); (5, 5, 6) |

The reduced-form bound is a≤√(|D|/3), and the displayed lists exhaust its range. The reduced-form/ideal-class correspondence is IntegralLattices §B2 and §B5, with Pic(O_D)=Cl(K) for fundamental D. All rows have h(D)<p, the stated discriminant parity, and inert p.

### Conductor signs and initial trace boundaries

At Ψ_0 the only character is trivial and is plus; consequently F⁺(Φ)=0 and F⁻(Φ)=F(m_Φ). At Ψ_1 every new character has exponent2 and is plus, so F⁺(Ψ_1)=0 while the full space lies on the minus-point side. At Ψ_2 the new exact-orderp² characters have exponent3 and are minus. These tests detect replacement of conductor parity by character-order parity and detect interchange of point and unit signs.

The local point system begins x_0=Q, y=[p+1]Q, y_0=0, Tr_(Ψ_1/Φ)y_1=−y. The recurrence Tr_(s+1/s)y_(s+1)=−y_(s−1) begins at s=1. Thus Tr_(Ψ_2/Ψ_1)y_2=0 and Tr_(Ψ_3/Φ)y_3=p y; odd levels give alternating ±p^((n−1)/2)y after total trace. These boundary checks would fail if Δ of orderp²−1 replaced Δ′ of orderp+1, or if y_0 were identified with Q.

For p=47 the displayed generic coefficient is0. The exceptional j=0 and1728 fibre estimates are respectively μ/3 andμ/2, both strictly greater than μ/6. Thus the final theorem covers47 without relying on the generic-bound inference or on Rubin’s numerical small-prime range.

### Integral augmentation argument

Identify the free quotient Q⁻ with Λ. An element with δ-value in O× lies outside the maximal ideal(p,γ−1), because δ is Λ-linear for augmentation. Its quotient coordinate is therefore a unit of Λ and generates Q⁻. Since it belongs to the plus kernel and the signed intersection is zero, addition gives the integral direct sum. Tensoring with Φ first would lose this unit test and would not establish the target.


## Downstream consumers

InertAnticyclotomicCMMainConjecture consumes the integral decomposition, a chosen plus generator with unit augmentation derivative, and the character nonvanishing theorem to normalize Rubin’s anticyclotomic p-adic L-function and formulate its Selmer comparison. SelmerIwasawaCohomology and SelmerIwasawaCohomologyPartII consume the actual finite groups F⁺(Ψ_n), F⁻(Ψ_n), their field inclusions, formal traces and Kummer images; they do not receive a second abstract local-condition carrier. NonordinaryCMSpecialValues supplies the independent early CM inputs and does not use the decomposition to prove its unit-value witness.

## References

- BKO2021. A. A. Burungale, S. Kobayashi and K. Ota, *Rubin’s conjecture on local units in the anticyclotomic tower at inert primes*, Annals of Mathematics 194 (2021), 943–966, DOI 10.4007/annals.2021.194.3.8. Published numbering; §§2–5 and §6.0.2; BKO2021 lines 225, 338, 514, 551, 790 and 859.
- Rubin1987. K. Rubin, *Local units, elliptic units, Heegner points and elliptic curves*, Inventiones Mathematicae 88 (1987), 405–422, §§1–8 and Lemma 10.1. The formal-CM local point construction here uses BKO rather than global Heegner points; Rubin1987 lines 116, 249, 270, 292, 322, 353, 508, 529, 579 and 665.
- Hazewinkel1977. M. Hazewinkel, *On norm maps for one dimensional formal groups III*, Duke Mathematical Journal 44 (1977), 305–314, Theorem 1.3 and §§3–4. Its base is absolutely unramified; Hazewinkel1977 lines 37 and 95.
- Wintenberger1980. J.-P. Wintenberger, *Structure galoisienne de limites projectives d’unités locales*, Compositio Mathematica 42 (1980), 89–103, §4 theorem (i),(iii) and §§5.1–5.5.3; Wintenberger1980 line 112.
- AbbesUllmo1996. A. Abbes and E. Ullmo, *À propos de la conjecture de Manin pour les courbes elliptiques modulaires*, Compositio Mathematica 103 (1996), 269–286, Théorème A, p.269; AbbesUllmo1996 line 49.
- Fesenko1998. I. B. Fesenko, *On deeply ramified extensions*, Journal of the London Mathematical Society 57 (1998), 325–335, Theorem 1.1 and §§2.3,2.5, as background for the deeply ramified route; Fesenko1998 line 54. This supplies additive ramification criteria, not the asserted formal-group norm estimate by itself.
- Wiles1978. A. Wiles, *Higher explicit reciprocity laws*, Annals of Mathematics 107 (1978), 235–254, DOI 10.2307/1971143; the height-two law is also stated in Rubin1987, Theorem 5.3, p.412.
- Kato1993. K. Kato, *Lectures on the approach to Iwasawa theory for Hasse–Weil L-functions via B_dR. I*, Lecture Notes in Mathematics 1553 (1993), 50–163, Chapter II, Theorem 2.1.7, DOI 10.1007/BFb0084729; cited by locator for the dual-exponential normalization.
