# Roadmap: arithmetic locally symmetric spaces, part II — weight multiplicities

**Summary.** This roadmap develops fixed-level weight bounds for SL₂ over a number field with a complex place. It proves Fu’s sharp cuspidal upper bound, a uniform local homology theorem for products of first-congruence SL₂ groups, and two-sided linear Bianchi growth. Its reusable error calculus separates skew rank from torsion by nonnegative multiaffine polynomials with no full product term, and gives a saving by the smallest weight throughout the admissible weight orthant.

## Scope and ownership

ArithmeticLocallySymmetricSpaces ends at finite-level quotients, local systems, Borel–Serre boundaries, support maps, level traces, finite duality and the cuspidal injection (§§ALS.0–ALS.5b). CompletedCohomologyPartII extends that foundation to towers; its Layers 3–6 supply completed homology, finite chain models, finiteness, the semisimple torsion theorem and rational completed-Tor descent. This Part II is their weight-aspect application: it consumes those layers and owns the proper-face rank estimates and the specialized SL₂ and Bianchi comparisons below.

NoncommutativeAndEquivariantIwasawa owns completed group rings, rational Iwasawa homology and the generic ring theory; the missing analytic and rank inputs have individual supplier gaps in the exact contracts. LieHighestWeight Layer 0 owns split characteristic-zero sl₂ highest weights; its Layer 3 records the native ordinary PBW interface. Tau Ceti supplies symmetric powers and their matrix actions. Their compact-open restriction, rational action quotient and the specialized two-generator cusp computation are applications here. GL2AutomorphicRepresentationsAndTransfer §R16.6.3 constructs the Hilbert weight representation of `Res_{F/ℚ}GL₂` for totally real F, indexed by real embeddings and twisted by determinant powers; the coefficient system `weightRep` of §3.1 differs in being indexed by all complex embeddings of an arbitrary number field, so that a complex place contributes a conjugate pair of factors, and in being restricted to subgroups of SL₂(O_F), where no determinant twist occurs.

Chebotarev Layer 10 supplies split-completely primes. ModularForms §10C supplies classical section spaces and ordinary dimension infrastructure; ModularSymbolsPadicLFunctions §0.7 supplies Eichler–Shimura for every finite-index Γ, compatible with every normaliser action; at Γ(N) this is the SL₂(ℤ/Nℤ)-action. The fixed-type multiplicity formula is owned here. GL2AutomorphicRepresentationsAndTransfer supplies quadratic transfer and type uniqueness (§§R17.4.2–R17.4.6 and §R16.2.9); the specialized SL₂ restriction count, ramified finite-type character data, FGT summation and positivity are owned here. AutomorphicFormsOnReductiveGroups supplies relative Lie cochains and the archimedean cohomological computations (§1.1, §§5.2–5.3).

The headline theorems are Fu’s local homology theorem (§2.6), the sharp global cusp-form bound together with its ordinary-cohomology form (§4.2), and the two-sided Bianchi bounds (§5.8). Two of them are statable with Mathlib group cohomology and are the statements of `Suggested.lean`: `finrank_groupCohomology_weightRep_le`, the ordinary-cohomology form of §4.2 at every congruence level, and `bianchi_groupCohomology_linear_growth`, the ordinary degree-one and degree-two case of §5.8 at every congruence level. Their coefficient systems are `weightRep`, built from `embeddingStdRep` (§3.1). The local theorem needs the skew rank of the rational Iwasawa algebra and rational completed Iwasawa homology; the cusp-form bound needs the adelic carrier S_κ(K_f); the cuspidal, interior and compact-support Bianchi bounds need the Borel–Serre support carriers. Scalar inequalities and numerical symmetric-power Checks stay in this README.

## Conventions

Fix a number field F of signature (r₁,r₂), d=r₁+2r₂. The global saving assumes r₂>0. Each archimedean weight κ_v is an even integer at least 2, and `Δ(κ)=∏_{v real}κ_v·∏_{v complex}κ_v²`. For every fixed compact open K_f the upper bound is `dim S_κ(K_f)≤C_{F,K_f}Δ(κ)/min_vκ_v`. The minimum is over places. A congruence subgroup of SL₂(O_F) is a subgroup containing the principal congruence kernel ker(SL₂(O_F)→SL₂(O_F/𝔞)) of a nonzero ideal 𝔞; it has finite index. Ordinary-cohomology upper bounds hold at every congruence subgroup and every number field with r₂>0; ordinary-cohomology lower bounds hold at every congruence subgroup for F imaginary quadratic; the cuspidal, interior and compact-support forms of the two-sided theorem use neat levels.

Locally p is odd, m≥1, `G=∏_{i=1}^m ker(SL₂(ℤ_p)→SL₂(𝔽_p))`, Λ=ℤ_p[[G]] and `A=ℚ_p⊗_{ℤ_p}Λ`. This is the bounded-denominator rational algebra. A series whose coefficient denominators are unbounded is not an element of A. Modules are left modules and `rank_A M=dim_{Q(A)}(Q(A)⊗_A M)`, with compatible left Ore localization. Homology is rational completed Iwasawa homology with stable integral lattices, rather than ordinary discrete group-ring homology. For finite I, write `D(x)=∏_{i∈I}x_i` using Mathlib’s finite product, including D=1 for I empty. Local coefficient weights are k∈ℕ^m and `W_k=⊠ᵢSym^{k_i}(ℚ_p²)`, with dimension D(k+1).

The analytic contracts use `Û=ℚ_p⊗_{ℤ_p} lim_n U(sl₂(ℤ_p)^m)/p^n`. Its central reductions use [e,f]=h, [h,e]=2e, [h,f]=−2f and Δ_i=½h_i²−h_i+2e_if_i, whose eigenvalue on `Sym^{k_i}` is ½k_i(k_i+2). Finite ramified coefficient extensions are taken from this ℤ_p construction by scalar extension; the denominator set in fu24 (17) is not redefined over a ramified ring of integers.

In completed-cohomology torsion and descent, apply CompletedCohomologyPartII §§5.6–5.7 with base field ℚ, group `Res_{F/ℚ}SL₂` and prime ideal (p). At a completely split p the chosen K₀ is the full product `∏_{v|p}G_v`, of analytic dimension 3d.

H_c denotes compact support, H_! the image of H_c→H and H_cusp the parent’s cuspidal carrier at neat level. At non-neat Bianchi levels ordinary H^i means group cohomology, and the base-change subspace is the image of the actual cuspidal automorphic classes. Dual coefficients are retained until the rational self-duality of W_k or E_n is used. For Bianchi coefficients fix F→ℂ and E_n=Sym^n(ℂ²)⊗conjugate Sym^n(ℂ²), with Γ acting through that embedding and its complex conjugate. Here κ=2(n+1). Marshall’s subscript c denotes an interior subspace. Constants are independent of weights; all coefficient spaces and finite index sets lie in a fixed universe, and dimensions are over the displayed field.

**Checks.**

- For signature (0,1) and κ=6, k=(2,2), dim E₂=9 and Δ/min κ=36/6=6. At signature (1,1), κ=(4,6) gives dim V=27 and Δ=144.
- On a highest-weight vector with h-value k, ef has value k, so Δ has value ½k²−k+2k=½k(k+2); at k=0,1 these are 0,3/2.
- The left dual action is (gφ)(w)=φ(g⁻¹w); for g=diag(a,a⁻¹) on ℚ_p², evaluation on the first basis vector acquires a⁻¹. The free diagonal twist sends g⊗w to g⊗g⁻¹w.
- For F imaginary quadratic, K₀ has dimension 6=3·2; a single local prime would give 3 and the wrong homological cutoff.
- At p=3 take g=(1 3;0 1) and h=(1 0;3 1) in one congruence factor: gh=(10 3;3 1), hg=(1 3;3 10). The inverse-action untwisting sends g⊗(0,1) to g⊗(−3,1), excluding the same-action formula.

## Exact supplier contracts

### From Mathlib

The manifest pin is 6b7abb3c7686292736be2955bd3eb9ebf63b456a. Consume `Finset.prod`, `Fintype.prod_equiv`, `Fintype.prod_empty` and `Finset.prod_const_one` in Mathlib/Algebra/BigOperators/Group/Finset/Defs.lean (lines 67, 741, 753, 391); `Finset.prod_update_of_mem` in Mathlib/Algebra/BigOperators/Group/Finset/Piecewise.lean (line 247); and `Finset.prod_pos` in Mathlib/Algebra/Order/BigOperators/GroupWithZero/Finset.lean (line 157). The product requires a commutative monoid and supplies neither representations nor a degree-drop theorem.

Use `Finset.powerset` in Mathlib/Data/Finset/Powerset.lean (line 31), whose membership means inclusion, and `MvPolynomial` in Mathlib/Algebra/MvPolynomial/Basic.lean (line 79), the finitely supported monoid-algebra carrier over a commutative semiring. Use `Module.finrank_tensorProduct` and `Module.finrank_baseChange` in Mathlib/LinearAlgebra/Dimension/Constructions.lean (lines 373, 376) with their free-module and scalar-tower hypotheses, specialized to finite-dimensional vector spaces. For the ordinary Bianchi headlines use `groupCohomology` in Mathlib/RepresentationTheory/Homological/GroupCohomology/Basic.lean (line 184): it takes an actual `Rep` and returns the homology of the inhomogeneous cochain complex, with no topology or support condition and no automatic finite-dimensionality assertion. The headline coefficient systems use `Matrix.SpecialLinearGroup.map` in Mathlib/LinearAlgebra/Matrix/SpecialLinearGroup.lean (line 225), the entrywise image of a ring homomorphism; `Matrix.SpecialLinearGroup.toGL` in Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean (line 273); `PiTensorProduct.mapMonoidHom` in Mathlib/LinearAlgebra/PiTensorProduct/Basic.lean (line 532), the monoid homomorphism sending a family of endomorphisms to their tensor product; `MonoidHom.pi` in Mathlib/Algebra/Group/Pi/Lemmas.lean (line 154); and `Rep.of` in Mathlib/RepresentationTheory/Rep/Basic.lean (line 62). The field hypotheses use `NumberField.IsTotallyReal` and `NumberField.IsTotallyComplex` in Mathlib/NumberTheory/NumberField/InfinitePlace/TotallyRealComplex.lean (lines 47, 209), defined by the type of every infinite place; a number field is not totally real exactly when r₂>0, and an imaginary quadratic field is a totally complex field of degree two over ℚ.

### From Tau Ceti

The manifest pin is a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Use `TauCeti.symPowerRep` in TauCeti/RepresentationTheory/ClassicalGroups/SymmetricPower.lean (line 59), the symmetric power of the standard GL(Fin n) representation over a commutative ring. Use `SymmetricPower.finrank_eq` in TauCeti/LinearAlgebra/SymmetricPower/Basis.lean (line 203), with finite freeness and strong rank condition. In dimension two it gives n+1; neither declaration asserts irreducibility on an arbitrary subgroup. The native ordinary enveloping-algebra interface includes `TauCeti.UniversalEnvelopingAlgebra.pbwFiltration` in TauCeti/Algebra/Lie/UniversalEnveloping/PBW/Basic.lean and `Module.Basis.pbwBasis` in TauCeti/Algebra/Lie/UniversalEnveloping/PBW/Basis.lean; the latter uses a linearly ordered Lie-algebra basis over a commutative ring and fixes the increasing order of factors.

### From TauCetiRoadmap.ArithmeticLocallySymmetricSpaces

Consume §§ALS.0.9–ALS.0.10 for neat manifolds and standard level subgroups; §ALS.1.1 for arithmetic local systems; §§ALS.1.6–ALS.1.8 for finite complexes, coefficient change and level pullback; §§ALS.2.5 and ALS.2.8 for the boundary stratification and nilmanifold fibrations; §ALS.3.6 for trace; §ALS.4.1 for the support triangle; §§ALS.4.5–ALS.4.7 for Kostant and boundary Hochschild–Serre; §ALS.5a.2 for duality with dual coefficients and orientation; and §§ALS.5b.4–ALS.5b.5 for automorphic comparison and the injective cuspidal map with image in H_!. The good neat and coefficient hypotheses of each section remain in force.

### From TauCetiRoadmap.CompletedCohomologyPartII

Consume §3.1 for continuous duals and inverse-action conventions, §4.2 for the completed chain model, §5.1 for finite generation and canonical topology, §5.7 for rank-zero completed homology in the absence of discrete series, and §6.3 for completed homological descent. Section 5.7 is applied over ℚ to `Res_{F/ℚ}SL₂` as specified above. The local bound is applied to the constant-coefficient completed modules with one diagonal W_t twist, and the spectral sequence is used only through its finite filtration.

### From TauCetiRoadmap.NoncommutativeAndEquivariantIwasawa

Consume §F.1 for integral noetherianity, domains in the uniform case and canonical finite-module topology, §0.12 for rational Auslander regularity and global dimension, §0.14 (`twist_free`) for diagonal twists, §0.15 (`IwasawaHomology.freeTwist`, `IwasawaHomology.vanish_above_dim`) for rational completed-Tor comparison, free-twist homology and the homological cutoff, and §1.12 for exact Ore scalar extension when an Ore set has been supplied. Inverting p gives the rational finite-module topology; maps to finite-dimensional continuous modules are continuous on integral lattices and then after rationalization. Classical division rings and the all-integral analytic comparison are the following separate supplier gaps, assigned to §F.1 or Layer 0 after §0.15 as indicated; none is asserted to be an existing supplier target.

What NoncommutativeAndEquivariantIwasawa must provide (gap:flat-microlocalisation): For odd p and G the product of m≥1 first-congruence SL₂(ℤ_p) groups, construct the rationalized p-adic completed enveloping algebra Û of sl₂(ℤ_p)^m and its natural algebra map A→Û, flat as a right A-module. Supplier section: Layer 0, after §0.15. (fu24, (17)–(18), p. 14; aw13, §§10.2–10.4.)

**Checks.**

- For g=1+pe in one factor, its image is exp(pe), which acts on Sym¹ by the same matrix 1+pe.
- For M=A, Û⊗_A M=Û; for M=0 it is zero, so the extension is unital and respects the zero module.
- For a ramified coefficient extension of index e≥2, p∈𝔪² and 0∈p+𝔪²; the displayed denominator set is used over ℤ_p, then extended by flat scalar change.

What NoncommutativeAndEquivariantIwasawa must provide (gap:algebraic-quotient-comparison): For finitely generated left A-module M and W_k, the natural map M/Ann_A(W_k)M→(Û⊗_A M)/Ann_Û(W_k)(Û⊗_A M) is an isomorphism, natural in M. Supplier section: Layer 0, after §0.15. (fu24, Theorem 4.3, p. 15.)

**Checks.**

- For M=A and k=(1,2), both quotients are End(W_k) of dimension 36, by Layer 0’s rational action quotient.
- For M=0 both quotients have dimension zero; for M=W_k both have dimension D(k+1).
- For M=A/Aδ the comparison identifies the two Hom multiplicities into W_k; δ=1 gives zero on both sides.

What NoncommutativeAndEquivariantIwasawa must provide (gap:integral-central-faithfulness): For every λ∈ℤ_p^m the composite A→Û→Û/(Δ_i−λ_i)_i is injective, using Δ_i=½h_i²−h_i+2e_if_i and a finite coefficient extension followed by descent when needed. Supplier section: Layer 0, after §0.15. (aw14, Theorems 4.6 and 5.4, pp. 11, 16.)

**Checks.**

- For p=3 and λ=1, the equation ½μ(μ+2)=λ has μ=−1±√3 after a finite extension; 1+2λ=3 is not a square in ℚ₃.
- For k=0 and k=1 the algebraic Casimir values are 0 and 3/2; reversing ef to fe without the compensating linear term changes the latter value.
- For a nonzero element a∈A, faithful scalar extension sends a to a nonzero element; injectivity after a finite extension therefore descends to ℚ_p.

What NoncommutativeAndEquivariantIwasawa must provide (gap:generic-cyclic-growth): For δ∈Û whose image is nonzero in every integral central reduction, there is α∈ℕ^m with α_i≥1 such that `dim Hom_Û(Û/Ûδ,W_k)≤2Σ_iα_i∏_{j≠i}(k_j+1)` for every k∈ℕ^m. Supplier section: Layer 0, after §0.15. (fu24, Lemma 3.3, Proposition 3.4 and Theorem 3.2, pp. 8–11.)

**Checks.**

- In the PBW rectangle at d=(1,2), the central-reduction rank is (1+1)²(2+1)²=36; at d=0 it is 1.
- For α=(3,3) and k=(1,t), the small-coordinate strip has dim Hom≤2(t+1), while the stated bound is 6(t+1)+12.
- For m=1 and k≥α, ((k+1)²−(k−α+1)²)/(k+1)=2α−α²/(k+1)≤2α; δ=0 fails genericity and would give k+1.

What NoncommutativeAndEquivariantIwasawa must provide (gap:skew-rank): For a two-sided noetherian domain R, construct its classical Ore division ring Q(R) and the finite skew rank `dim_{Q(R)}(Q(R)⊗_R M)` on finitely generated left R-modules, additive on exact sequences, zero exactly for torsion modules and equal to a on R^a. Supplier section: §F.1. (fu24, §6, pp. 21–23, (33)–(34); NoncommutativeAndEquivariantIwasawa §1.12 for exact Ore scalar extension.)

**Checks.**

- For R a division ring, Q(R)=R and rank(R^a)=a, including a=0.
- For R=ℚ_p[X,Y], the ideal (X,Y) has rank 1, its two-generator presentation has kernel rank 1, and R/(X,Y) has rank 0.
- For R=M₂(ℚ_p), nonzero matrices can multiply to zero; the domain hypothesis excludes a nonexistent classical division ring.

What NoncommutativeAndEquivariantIwasawa must provide (gap:canonical-dimension-zero): For a nonzero finitely generated rational Iwasawa module in the semisimple congruence-kernel setting of aw13 §10.12, including deformation index zero, canonical dimension zero is equivalent to finite dimension over the coefficient field. Supplier section: §F.1. (aw13, Lemma 10.13, p. 77.)

**Checks.**

- For M=W_k, canonical dimension is 0 and coefficient-field dimension is D(k+1), not necessarily 1.
- For M=A, canonical dimension is 3m>0 and coefficient-field dimension is infinite; rank_A A=1 is a different invariant.
- The zero module has all multiplicities zero and is excluded from the nonzero canonical-dimension equivalence.

### From TauCetiRoadmap.LieHighestWeight

Consume Layer 0’s split characteristic-zero sl₂ highest-weight classification, irreducibility and dimension n+1. Its Layer 3 records the native PBW interface; it does not place PBW in Layer 0. Self-duality follows by identifying the dual highest weight; the one-dimensional kernel and cokernel of the raising operator are specialized in §5.1.

### From TauCetiRoadmap.Chebotarev

Consume Layer 10’s identity Frobenius class in a finite normal extension: positive split-completely density supplies primes outside any finite exceptional set.

### From TauCetiRoadmap.ModularForms

Consume §10C’s classical congruence-level section spaces, the weight-k automorphy line bundle on X(Γ) and analytic Riemann–Roch. The fixed-type multiplicity formula is §5.3 here.

### From TauCetiRoadmap.ModularSymbolsPadicLFunctions

Consume §0.7’s Eichler–Shimura isomorphism `S_{k+2}(Γ)⊕S̄_{k+2}(Γ)≃H¹_par(Γ,V_k(ℂ))` for finite-index Γ, compatible with every double-coset and normaliser action defined for Γ, with the period identity `ψ_{f|δ}(D)=ψ_f(δD)|δ`. Every γ∈SL₂(ℤ) normalises Γ(N) and Γ(N) acts trivially, so this is the SL₂(ℤ/Nℤ)-equivariant comparison used in §5.3.

### From TauCetiRoadmap.GL2AutomorphicRepresentationsAndTransfer

Consume §§R17.4.2–R17.4.6 for quadratic base change, all-place compatibility, descent, cuspidality and quadratic-twist fibres, and §R16.2.9 for uniqueness of the supercuspidal type. The finite SL₂ count and the finite type dimensions and S₃/S₄ traces are targets of §§5.4–5.5 here.

### From TauCetiRoadmap.AutomorphicFormsOnReductiveGroups

Consume §1.1 for relative Lie cochains, §5.2 for cohomology with specified coefficients and the real discrete-series degree-one contribution, and §5.3 for the tempered range. The SL₂ product calculation with Fu’s weight convention is §4.1 here.

## How to read the build

Layer 0 specifies weights and the error class. Layer 1 bounds torsion multiplicities through cyclic quotients using the named analytic gaps. Layer 2 separates the upper and lower rank estimates, then cancels their full-product terms in degree one and shifts the finitely many higher syzygies. Layer 3 matches coefficient realizations and uses the supplied completed-homology descent filtration, without requiring degeneration. Layer 4 obtains the smallest-weight saving and its parallel and Bianchi consequences. Layer 5 computes the boundary error, proves the finite-type and base-change counts, and combines upper and lower estimates in the four support conventions.

## Layer 0: Weights and multiaffine errors

### 0.1 Nonnegative proper-face polynomials

For m≥1 and coefficients c_s≥0 indexed by proper subsets s⊊I, define `B_c(x)=Σ_{s⊊I}c_s∏ᵢ∈s xᵢ`. Coefficients for the full subset are excluded. Thus B_c is multiaffine and has total degree at most m−1. An error function e(k) is controlled by c when |e(k)|≤B_c(k+1) for every k∈ℕᴵ. Nonnegative dimension functions may omit the absolute value. Coefficients and inequalities live in ℝ; finite sums and positive rescalings preserve this class. (fu24, Theorem 1.4, p. 3; Theorem 3.2, pp. 8–11; §6, pp. 21–23.)

A proof uses the following route. Express the function as a finite sum over the powerset with the full set omitted. Expand xᵢ=kᵢ+1 to compare with a multiaffine polynomial in the unshifted k. Taking absolute values of coefficients gives a nonnegative majorant whenever the source supplies a possibly signed polynomial. For a finite collection, add coefficient vectors; this produces one common bound independent of the weight and homological index.

The API includes the following facts.

- Evaluate B_c(x) by its proper-subset sum.
- `B_{c+d}=B_c+B_d` and `B_{a c}=aB_c` for a≥0.
- Transporting the coefficients and x through a coordinate bijection preserves B.
- B_c(x)≥0 if c_s≥0 and xᵢ≥0.
- One coefficient at s gives exactly c_s∏ᵢ∈s xᵢ; the full subset contributes zero.
- The corresponding MvPolynomial has degree at most m−1 in total and degree at most one in each variable.

*Needs:* Mathlib `Finset.prod`; Mathlib `Finset.powerset`; Mathlib `MvPolynomial`.

**Checks.**

- When m=1, B_c is constant; an error proportional to k+1 is rejected.
- For m=3, coefficients `c_{∅}=2` and `c_{{0,2}}=3` give B(2,5,4)=26.
- For m=2, x₀x₁ cannot be bounded on all xᵢ≥1 by any fixed proper-face polynomial.
- For m=2 and `c_{{1}}=7`, B(1,t)=7t: keeping one coordinate minimal does not make the error bounded.
- For x=(2,4), D(x)=8, whereas the sum of the factors is 6.
- For I empty, D(x)=1, not 0.
- For k=(0,0), D(k+1)=1; using ∏kᵢ would incorrectly return 0.
- The full monomial ∏xᵢ is absent, including after addition; constant errors are admitted for every m≥1.

### 0.2 A missing coordinate gives the saving

Let m≥1, xᵢ≥1 and c_s≥0 for proper s⊊I. For any a with 1≤a≤xᵢ for every i, B_c(x)≤(Σ_s c_s)D(x)/a. In particular take a=minᵢxᵢ. On the diagonal xᵢ=t≥1, B_c(x)≤(Σ_s c_s)t^(m−1). The constants depend on c and m, never on x. (fu24, Theorem 1.2, pp. 2–3; §7, pp. 23–24.)

A proof uses the following route. For each proper s choose j∉s. The product of omitted coordinates is at least xⱼ≥a; all other omitted factors are at least one. Multiply ∏ᵢ∈s xᵢ≤D(x)/a by c_s and sum. For parallel x, each monomial has degree |s|≤m−1.

*Needs:* Mathlib `Finset.prod`; §0.1.

**Checks.**

- For m=1 the diagonal exponent is zero.
- For x=(1,t), the bound allows size t; it does not claim a saving in a coordinate that stays fixed.

### 0.3 The external tensor coefficient family

Fix an odd prime p, m≥1, `G=∏_{i=1}^m ker(SL₂(ℤ_p)→SL₂(𝔽_p))`, Λ=ℤ_p[[G]], and `A=ℚ_p⊗_{ℤ_p}Λ`. Use the existing symmetric-power representations and tensor products to form W_k=⊠ᵢ `Sym^{kᵢ}(ℚ_p²)`, restricted to G, and W_k⁰=⊠ᵢ `Sym^{kᵢ}(ℤ_p²)`. The latter is a G-stable full lattice. Specify absolute irreducibility, self-duality and dim W_k=D(k+1). The A-action is the continuous extension of this actual matrix action. This is a specialization of the supplied representation and Iwasawa-module APIs, not a new tensor or completed-group-ring construction. Prove that its rational action has image `End_{ℚ_p}(W_k)`, hence `A/Ann_A(W_k)≃End_{ℚ_p}(W_k)`. (fu24, §6, pp. 21–22, including equation (32).)

A proof uses the following route. Restrict the existing GL₂ symmetric-power action along SL₂ and the congruence subgroup. Take its external tensor over all factors. Use the symmetric-power basis and tensor finrank formula for the dimension. The alternating pairing on the standard SL₂ representation induces the characteristic-zero self-duality. Use the supplied sl₂ highest-weight irreducibility and Zariski density of this open subgroup to retain absolute irreducibility. Export continuity and the stable lattice before extending the group action to A. Apply finite-dimensional density to the absolutely irreducible W_k: after algebraic closure its action algebra is the full matrix algebra, so faithful scalar extension gives the same equality over ℚ_p (fu24, (32), p. 22).

The API includes the following facts.

- W_k with its G and continuous A actions, realized from the existing symmetric powers.
- W_k⁰ is finite free over ℤ_p, G-stable, and ℚ_p⊗W_k⁰≃W_k.
- dim W_k=D(k+1).
- A G-equivariant W_k≃W_k* with the contragredient action; choices of scalar normalization do not affect dimensions.
- A finite coefficient extension commutes with this family, its lattice after extension of integers, and the matrix action.
- The rational action quotient A/Ann_A(W_k) is the full matrix algebra of dimension D(k+1)²; no equality with all integral lattice endomorphisms is asserted.

*Needs:* Mathlib `Finset.prod`; Tau Ceti `TauCeti.symPowerRep`; Tau Ceti `SymmetricPower.finrank_eq`; Mathlib `Module.finrank_tensorProduct`; NoncommutativeAndEquivariantIwasawa §0.15; LieHighestWeight Layer 0.

**Checks.**

- At k=0 the family is the one-dimensional trivial representation.
- For k=(1,2), dimension is 2·3=6, not 2+3.
- The standard representation restricted to the diagonal torus is reducible; irreducibility requires the specified open SL₂ subgroup.
- For m=1,k=2, recover the existing symmetric-square matrix action and dimension 3.
- For k=(1,2), the action quotient has dimension 6²=36; at k=0 it is ℚ_p of dimension 1.
- At p=3 and k=3, rational self-duality holds, while the integral dual is a divided-power lattice; integral self-duality is not asserted.
- Distinct k give distinct irreducibles; restriction to an arbitrary subgroup is not covered.

### Examples

For m=1 every proper-face error is constant; for m=2 the error 7x₁ remains unbounded on (1,t).

### Dependencies

Mathlib `Finset.prod`; Mathlib `Finset.powerset`; Mathlib `MvPolynomial`; Tau Ceti `TauCeti.symPowerRep`; Tau Ceti `SymmetricPower.finrank_eq`; Mathlib `Module.finrank_tensorProduct`; NoncommutativeAndEquivariantIwasawa §0.15; LieHighestWeight Layer 0.

## Layer 1: Torsion multiplicities

### 1.1 Multiplicity and degree-zero homology

For a finitely generated left A-module M with its canonical finite-module topology and a finite-dimensional continuous G-representation W admitting a stable lattice, evaluation induces a natural isomorphism `Hom_A(M,W)≃Hom_{ℚ_p}(H₀(G,M⊗W*),ℚ_p)`. Here the tensor has the diagonal action, W* has the contragredient action, and H₀ is rational completed coinvariants, identified with Tor₀^A(ℚ_p,−) by the supplied rationalization contract. For W=W_k, the supplied self-duality replaces W_k* by W_k. All spaces in the dimension identity are finite dimensional and the A-linear maps are continuous. (fu24, §6, p. 22, identities in the proof of Theorem 1.4.)

A proof uses the following route. Send f to the functional m⊗φ↦φ(f(m)); the G-invariance relation is exactly equivariance of f. Use canonical finite-module topology and the supplied finite-dimensional continuous Hom comparison so the functional factors through the completed quotient. Apply the imported lattice/completed-Tor rational comparison and then finite-dimensional duality. No duality between unrelated Banach categories is substituted for this evaluation map.

*Needs:* §0.3; NoncommutativeAndEquivariantIwasawa §0.15; CompletedCohomologyPartII §3.1.

**Checks.**

- For M=A, both dimensions are dim W.
- The dual representation is necessary before using self-duality.

### 1.2 Cyclic Iwasawa multiplicity estimate

For every nonzero δ∈A there are nonnegative proper-face coefficients c(δ) such that dim Hom_A(A/Aδ,W_k)≤B_c(k+1) for every k∈ℕ^m. Aδ is the left ideal generated by δ. The coefficients depend on δ, p and m, and are independent of k. The proof uses the four analytic gaps in the exact supplier contracts: flat microlocalisation, algebraic-quotient comparison, integral central faithfulness and generic cyclic growth. (fu24, §6, pp. 22–23; Theorem 4.3, p. 15; Theorem 3.2, pp. 8–11; aw14, §4.6, p. 11 and §5.4, p. 16 (author PDF).)

A proof uses the following route. Under the algebraic-quotient comparison, Hom into W_k is unchanged by microlocalization A→Û. The cyclic module becomes Û/Ûδ. Integral central faithfulness makes every nonzero δ generic in the sense required by the generic cyclic growth contract. Use Ardakov–Wadsley’s affinoid Verma route, not the unresolved large-radius central-quotient argument. The generic cyclic growth contract supplies a uniform truncation multi-index α and the large-coordinate PBW estimate. Its all-weight repair is B(x)=2Σᵢαᵢ∏ⱼ≠ᵢxⱼ. For kᵢ<αᵢ, use dim Hom≤dim W_k≤αᵢ∏ⱼ≠ᵢ(kⱼ+1). These are infinite strips and remain in the bound.

*Needs:* §0.1; §0.3; gap:flat-microlocalisation; gap:algebraic-quotient-comparison; gap:integral-central-faithfulness; gap:generic-cyclic-growth.

**Checks.**

- The bound includes kᵢ=0 and m=1, where it is constant.
- δ=1 gives the zero module; δ=0 is excluded, since Hom_A(A,W_k) has dimension D(k+1).

### 1.3 Cyclic control of a finite torsion module

Let A be the supplied two-sided noetherian Ore domain and T a finitely generated left A-module of skew rank zero. There is a finite filtration 0=T₀⊂⋯⊂T_r=T with cyclic factors Q_j and nonzero δ_j∈A such that A/Aδ_j surjects onto Q_j. The quotients need not be isomorphic to principal quotients. For every finite-dimensional W, dim Hom_A(T,W)≤Σ_j dim Hom_A(A/Aδ_j,W). (fu24, §6, p. 23, torsion case.)

A proof uses the following route. Choose finitely many generators of T and filter by their successive spans. Rank zero localizes every cyclic factor to zero. Clearing an Ore denominator gives a nonzero annihilator of its chosen cyclic generator, hence the indicated surjection. Apply left exactness of Hom(−,W) to each short exact filtration sequence, and use the injection induced by the principal-quotient surjection.

*Needs:* NoncommutativeAndEquivariantIwasawa §F.1; NoncommutativeAndEquivariantIwasawa §1.12; gap:skew-rank.

**Checks.**

- Over ℚ_p[X,Y], A/(X,Y) is controlled by A/(X) but is not equal to it.
- The filtration is finite because T is finitely generated, not because its underlying vector space is finite.

### 1.4 The torsion-module weight bound

For every finitely generated rank-zero A-module T, there are nonnegative proper-face coefficients c_T such that dim H₀(G,T⊗W_k)=`dim Hom_A(T,W_k)≤B_{c_T}(k+1)` for all k. The same conclusion holds for a finite collection of torsion modules with one common coefficient vector. (fu24, §6, pp. 22–23, torsion case of Theorem 1.4.)

A proof uses the following route. Use §1.3 to reduce to its principal cyclic upper bounds. Use §1.2 for each δ_j and add the finitely many proper-face coefficient vectors. Use §1.1 and self-duality of W_k.

*Needs:* §1.3; §1.2; §1.1; §0.1.

**Checks.**

- Zero module admits zero coefficients.
- When m=1 all degree-zero torsion multiplicities are uniformly bounded.

### Examples

The unit δ=1 gives a zero cyclic quotient; δ=0 would give the full dimension D(k+1), which cannot be a proper-face error.

### Dependencies

NoncommutativeAndEquivariantIwasawa §0.15; CompletedCohomologyPartII §3.1; gap:flat-microlocalisation; gap:algebraic-quotient-comparison; gap:integral-central-faithfulness; gap:generic-cyclic-growth; NoncommutativeAndEquivariantIwasawa §F.1; NoncommutativeAndEquivariantIwasawa §1.12; gap:skew-rank.

## Layer 2: Ranks and all homological degrees

### 2.1 Free approximations with their ranks

For a finitely generated left module M of skew rank a over the supplied two-sided noetherian Ore domain A, choose (i) 0→A^a→M→T→0 with T finitely generated of rank zero, and (ii) 0→N→A^ℓ→M→0 with N finitely generated of rank ℓ−a. These are choices of actual maps and exact sequences. They are not claimed canonical or functorial in M. Noncommutative localization is on the left for M; denominator clearing uses the compatible right/left Ore calculus. (fu24, §6, pp. 22–23, equations (33)–(34).)

A proof uses the following route. Choose a basis of Q(A)⊗_A M, lift its vectors after clearing denominators, and check independence after localization. A nonzero kernel in the finite free domain module would remain detectable in the localization. Choose a finite generating set of M to obtain the second sequence; noetherianity makes N finitely generated. Exact localization gives rank T=0 and rank N=ℓ−a. The rank may be smaller than the chosen number of generators.

The API includes the following facts.

- Choose an injection A^a→M and a rank-zero cokernel T.
- Choose a surjection A^ℓ→M and its finitely generated kernel N.
- The first free rank equals rank_A M; rank_A N=ℓ−a.
- Export kernels, images and quotient identifications for both chosen sequences.

*Needs:* NoncommutativeAndEquivariantIwasawa §F.1; NoncommutativeAndEquivariantIwasawa §1.12; gap:skew-rank.

**Checks.**

- For M=A^a, identity maps give T=N=0 and ℓ=a.
- For M=A/Aδ with δ nonzero nonunit, a=0 but one generator suffices; ℓ need not equal a.
- The ideal (X,Y) over ℚ_p[X,Y] has rank one and needs two generators; an assertion that ℓ=a for every module is false.
- The choices are exported with their exactness and rank equalities, not merely as two unspecified modules.

### 2.2 Upper rank estimate

For M of skew rank a there is a nonnegative proper-face polynomial U_M with dim H₀(G,M⊗W_k)≤aD(k+1)+U_M(k+1) for all k. It may be chosen as the §1.4 polynomial of the cokernel T of a free approximation. Applying H₀ to A^a→M need not be injective. (fu24, §6, p. 22, equation (33) and its following inequality.)

A proof uses the following route. Apply the right-exact coinvariant functor to 0→A^a⊗W_k→M⊗W_k→T⊗W_k→0. The image of H₀(A^a⊗W_k) has dimension at most aD; bound the quotient by H₀(T⊗W_k). Use NoncommutativeAndEquivariantIwasawa §0.15 and §1.4; no control of H₁(T⊗W_k) is needed.

*Needs:* §2.1; NoncommutativeAndEquivariantIwasawa §0.15; §1.4.

**Checks.**

- For a free M the upper error is zero.
- The argument uses right exactness alone.
- For ℓ=1 and k=(1,2), the imported free twist has H₀ of dimension 6 and all positive homology zero; on g⊗w the untwisting uses g⁻¹w.

### 2.3 Lower rank estimate

For M of skew rank a and a chosen finite presentation with kernel N of rank ℓ−a, dim H₀(G,M⊗W_k)≥aD(k+1)−U_N(k+1), where U_N is the already proved upper-error polynomial for N. No higher-homology estimate is used in this step. (fu24, §6, p. 23, equation (34) and following inequalities.)

A proof uses the following route. Right exactness of H₀(N⊗W_k)→H₀(A^ℓ⊗W_k)→H₀(M⊗W_k)→0 gives dim H₀(M⊗W_k)≥ℓD−dim H₀(N⊗W_k). Use §2.2 for N and rank N=ℓ−a, then cancel the main terms.

*Needs:* §2.1; NoncommutativeAndEquivariantIwasawa §0.15; §2.2.

**Checks.**

- For a=0 the estimate is a valid lower bound, not a claim of nonzero homology.
- The leading coefficient is a, not ℓ.

### 2.4 Two-sided degree-zero rank error

For every finitely generated A-module M of rank a, there is a nonnegative proper-face polynomial E_M such that |dim H₀(G,M⊗W_k)−aD(k+1)|≤E_M(k+1) for every k∈ℕ^m. One choice is U_M+U_N from a fixed presentation kernel N. (fu24, Theorem 1.4, p. 3; §6, pp. 22–23.)

A proof uses the following route. Combine §2.2 and §2.3. The sum of the two nonnegative errors dominates each one, retaining proper-face degree at most m−1.

*Needs:* §2.2; §2.3; §0.1.

**Checks.**

- For M=A^a the difference is identically zero.
- For m=1 the deviation is uniformly bounded.

### 2.5 Syzygy bounds in positive degrees

For 0→N→A^ℓ→M→0 and x=k+1, dim H₁(G,M⊗W_k)≤U_N(x)+U_M(x), while `H_i(G,M⊗W_k)≃H_{i−1}(G,N⊗W_k)` for every i≥2. In the first bound U_N and U_M are upper-error polynomials, and rank N=ℓ−rank M. The bound follows from the exact dimension identity dim H₁(M⊗W_k)=dim H₀(N⊗W_k)−ℓD(x)+dim H₀(M⊗W_k). (fu24, §6, p. 23, last paragraph of the proof of Theorem 1.4.)

A proof uses the following route. Use the long exact Tor sequence and NoncommutativeAndEquivariantIwasawa §0.15. For i=1 use its four-term exact portion to get the displayed identity. Apply §2.2 to N and M; their main terms cancel. For i≥2 the adjacent regular-module homology groups vanish, giving the shift isomorphism.

*Needs:* §2.1; NoncommutativeAndEquivariantIwasawa §0.15; §2.2.

**Checks.**

- The degree-one term is a difference of three dimensions; simply bounding H₁ by H₀(N) would leave a degree-m main term.
- The shift at i=1 is not an isomorphism with all of H₀(N).

### 2.6 Fu’s local homology theorem

Let p be odd, m≥1, G the product of m first-congruence SL₂ groups, A=ℚ_p⊗ℤ_p[[G]], and M a finitely generated left A-module of skew rank a. There is a single nonnegative proper-face polynomial B_M of total degree ≤m−1 such that for every k∈ℕ^m, |dim H₀(G,M⊗W_k)−aD(k+1)|≤B_M(k+1), and dim H_i(G,M⊗W_k)≤B_M(k+1) for every i≥1. All dimensions are finite; homology is zero for i>3m. The polynomial may depend on M, p and m, but not on i or k. (fu24, Theorem 1.4, p. 3; §6, pp. 21–23.)

A proof uses the following route. Choose finite free presentations recursively for the first 3m syzygies, which remain finitely generated by noetherianity. Use §2.5 and the rank-error estimates on this finite list; add their nonnegative proper-face polynomials together with the degree-zero error. Use the supplied rational Iwasawa global dimension 3m to eliminate every i>3m. This gives one common polynomial for all positive degrees without requiring an infinite sum.

*Needs:* §2.4; §2.5; NoncommutativeAndEquivariantIwasawa §0.12; §0.1.

**Checks.**

- m=1 gives constant errors in all degrees.
- At p=2, −I lies in the first congruence kernel and has order 2; in its rational group algebra (1−g)(1+g)=0 for g=−I, so the domain and uniform-group hypotheses used here cannot be transferred to that kernel.
- A finite direct sum permits the sum of the individual error polynomials.
- For M=A^a higher homology is zero and the main term is exact.

### 2.7 Finite-dimensional multiplicity support

For a nonzero finitely generated A-module M of canonical dimension zero, the supplied canonical-dimension criterion makes M finite dimensional over ℚ_p. Only finitely many W_k can be simple quotients of M, and dim Hom_A(M,W_k)≤length_A `M≤dim_{ℚ_p}M` for all k. Thus its degree-zero weight multiplicities admit a constant bound, stronger than degree m−1. This assertion does not classify all finite-dimensional A-modules as algebraic, nor assert that they are all semisimple. (fu24, §1, p. 4, discussion following Theorem 1.4; aw13, §10.12–10.13, pp. 77–78 (author preprint), Lemma in §10.13.)

A proof uses the following route. Use gap:canonical-dimension-zero, sourced at aw13 Lemma 10.13, for the finite-dimensional criterion. Use a finite composition series of the finite-dimensional A-module. The W_k are pairwise nonisomorphic absolutely simple modules, so a nonzero Hom forces W_k to occur as a composition factor. Left exactness of Hom and End_A(W_k)=ℚ_p bound its dimension by the composition length.

*Needs:* §0.3; gap:canonical-dimension-zero.

**Checks.**

- A nontrivial finite smooth twist is not silently identified with an algebraic representation.
- The zero module has zero multiplicities and is handled separately from the canonical dimension of a nonzero module.

### Examples

For a free module A^a the rank term is exactly aD(k+1) and every positive homology group vanishes.

### Dependencies

NoncommutativeAndEquivariantIwasawa §F.1; NoncommutativeAndEquivariantIwasawa §1.12; gap:skew-rank; NoncommutativeAndEquivariantIwasawa §0.15; NoncommutativeAndEquivariantIwasawa §0.12; gap:canonical-dimension-zero.

## Layer 3: Arithmetic realization and descent

### 3.1 Archimedean weights and split-prime indices

For a number field F of signature (r₁,r₂), d=r₁+2r₂, use an archimedean tuple κ_v of even integers ≥2. Set `Δ(κ)=∏_{v real}κ_v·∏_{v complex}κ_v²`. The complex coefficient system is `V_κ=⊠_{real v}Sym^{κ_v−2}(ℂ²) ⊠_{complex v}(Sym^{κ_v/2−1}(ℂ²)⊗conjugate Sym^{κ_v/2−1}(ℂ²))`. After choosing a completely split prime, index the p-adic tensor by all d embeddings: t_σ=κ_v−2 at a real place and t_σ=κ_v/2−1 at each of the two embeddings of a complex place. Put x_σ=t_σ+1. Then `D(x)=∏_{real v}(κ_v−1)∏_{complex v}(κ_v/2)²`, D(x)≤Δ(κ), and min_σ x_σ≥(min_vκ_v)/2. The tuple κ=(2,…,2) is exactly the trivial coefficient system. (fu24, §1, pp. 1–2; §7, pp. 23–24; marshall12, §2.1, pp. 3–4 (arXiv:1103.2472v1).)

On arithmetic subgroups the coefficient system is a concrete representation. For a subgroup Γ≤SL₂(O_F) and an embedding σ:F→ℂ, define `embeddingStdRep σ Γ`:Γ→GL₂(ℂ) as the homomorphism applying σ to the entries of a matrix of Γ. For every tuple t:Hom(F,ℂ)→ℕ, define `weightRep Γ t` as the complex representation of Γ on ⊗_σ `Sym^{t_σ}(ℂ²)` in which Γ acts on the factor at σ by `TauCeti.symPowerRep` composed with `embeddingStdRep σ Γ`; the factors are assembled by Mathlib `PiTensorProduct.mapMonoidHom` and `MonoidHom.pi`. The tuple t is arbitrary: it need not come from an admissible κ, and conjugate embeddings may carry different exponents. When t is the embedding tuple of κ, `weightRep Γ t` is V_κ restricted to Γ, because the two embeddings of a complex place are complex conjugate. For F imaginary quadratic and the constant tuple n, it is E_n=Sym^n(ℂ²)⊗conjugate Sym^n(ℂ²).

A proof uses the following route. Use the coefficient conventions of Fu and Marshall, keeping the place tuple separate from the embedding tuple. Use evenness to make κ_v/2 integral; doubling each complex factor gives d p-adic factors. Compute the dimension by the imported symmetric-power and tensor finrank formulas; compare each factor with κ_v and κ_v/2.

The API includes the following facts.

- Evaluate Δ on the archimedean tuple with complex factors squared.
- Construct the d-entry nonnegative integral t, with a chosen indexing by embeddings.
- Changing the embedding ordering permutes t and preserves D and every minimum.
- dim V_κ=D(t+1), using the actual supplied algebraic representation.
- D(t+1)≤Δ(κ) and every t_σ+1≥min_vκ_v/2.
- If all κ_v=κ, Δ(κ)=κ^d.
- `embeddingStdRep σ Γ` is a group homomorphism with values of determinant one, and its matrix entries are the σ-images of the entries of the given matrix.
- The underlying space of `weightRep Γ t` has dimension ∏_σ(t_σ+1), by the symmetric-power basis and the dimension of a finite tensor product.
- An element γ∈Γ acts on a pure tensor ⊗_σ v_σ by ⊗_σ `Sym^{t_σ}(σ(γ))v_σ`; in particular −I acts by `(−1)^{Σ_σ t_σ}`.
- For an admissible κ with embedding tuple t, `weightRep Γ t` is isomorphic to the restriction of V_κ to Γ through the archimedean embedding SL₂(O_F)→∏_v SL₂(F_v).

*Needs:* Mathlib `Finset.prod`; Mathlib `Matrix.SpecialLinearGroup.map`; Mathlib `Matrix.SpecialLinearGroup.toGL`; Mathlib `PiTensorProduct.mapMonoidHom`; Mathlib `MonoidHom.pi`; Tau Ceti `TauCeti.symPowerRep`; §0.3; ArithmeticLocallySymmetricSpaces §ALS.1.1.

**Checks.**

- For (r₁,r₂)=(0,1), κ=6 gives t=(2,2), dim V=9, Δ=36, and min x=3.
- For signature (1,1) and κ=(4,6), t=(2,2,2), dim V=27 and Δ=144.
- At κ=(2,…,2), t=0 and dim V=1, even though Δ=2^d.
- A complex κ_v=3 is inadmissible: integer division must not manufacture an algebraic weight from this input.
- The number of local variables is d, not r₁+r₂.
- For t=0, `weightRep Γ 0` is the one-dimensional trivial representation (an empty tensor of one-dimensional factors), not the zero representation.
- For F=ℚ(i), γ=(i 1;−1 0)∈SL₂(ℤ[i]) has trace i under one embedding and −i under the other. On E₁ its trace is i·(−i)=1; a model that used the same embedding on both factors would give i²=−1.
- For F=ℚ(i) and t=(1,0), −I acts on `weightRep` by −1, so every H^i(SL₂(ℤ[i]),·) vanishes; on E_n it acts by `(−1)^{2n}=1`.

### 3.2 One auxiliary prime for a fixed level

For a fixed compact open K_f⊂SL₂(𝔸_F^∞), choose an odd rational prime p splitting completely in a normal closure of F and outside all primes where a product compact open subgroup contained in K_f is nonmaximal. There is a neat product level K′_f=G K^p⊂K_f, with G exactly the product of d first-congruence SL₂(ℤ_p) groups. Pullback gives S_κ(K_f)↪S_κ(K′_f) for every weight. At neat levels the cohomology pullback has the normalized trace as a left inverse; finite stabilizers at other levels are handled by characteristic-zero invariants. Every index and resulting dimension constant is fixed independently of κ. (fu24, §7, pp. 23–24, before (38); Theorem 1.2, pp. 2–3.)

A proof uses the following route. Use the identity Frobenius class in the normal closure and avoid the finite exceptional prime set. Chebotarev supplies infinitely many such primes. A compact open contains a product open with maximal factors outside finitely many primes. Replace its p factor by G and shrink its away-p part to an admitted neat level, using the parent’s standard levels. Right-invariant automorphic functions at K_f are right-invariant at K′_f. For topological comparison use the parent pullback and trace; the finite degree is invertible over characteristic zero.

*Needs:* Chebotarev Layer 10; ArithmeticLocallySymmetricSpaces §ALS.0.10; ArithmeticLocallySymmetricSpaces §ALS.0.9; ArithmeticLocallySymmetricSpaces §ALS.1.8; ArithmeticLocallySymmetricSpaces §ALS.3.6; NoncommutativeAndEquivariantIwasawa §F.1.

**Checks.**

- The auxiliary prime and refinement are fixed before varying κ.
- The argument gives an upper bound at arbitrary K_f; it does not transport a lower bound from a smaller to a larger level.

### 3.3 Coefficient realizations over a number field

Choose a finite number field E containing the embeddings needed for V_κ and embeddings E→ℂ and E→ℚ_p at the auxiliary split prime. Construct the algebraic local system `V_{κ,E}` on the actual quotient at a neat level from the parent’s coefficient functor. Its complex scalar extension is V_κ and its p-adic extension is W_t with t from §3.1. Finite chain models and flat coefficient change identify the corresponding homology and cohomology after these scalar extensions; their dimensions over ℂ and ℚ_p agree degree by degree. For any finite p-adic coefficient extension L/ℚ_p, the analogous dimensions over L agree with those over ℚ_p; as ℚ_p dimensions they are multiplied by [L:ℚ_p]. (fu24, §7, p. 23, equation (37); marshall12, §2.2, equation (7), p. 4; §5, equation (29) and Lemma 11, pp. 15–16 (arXiv:1103.2472v1).)

A proof uses the following route. Use the restriction-of-scalars algebraic representation over E, with one factor for each embedding. The split-prime indexing identifies its matrices over ℚ_p with W_t. Apply the finite-complex and coefficient-change theorems of ArithmeticLocallySymmetricSpaces Layer 1 to the same E-linear cellular differentials; flat scalar extension commutes with homology. For cohomology/homology dimension comparisons retain the dual local system until the supplied self-duality is used. No topological or field isomorphism ℂ≃ℚ_p is invoked.

The API includes the following facts.

- The E-linear algebraic local system, its finite complex, and its two identified scalar extensions.
- A finite extension E′/E and compatible embeddings give the scalar extension of the same complex.
- Each cohomology or homology degree has equal dimension over its own realization field.
- The comparisons commute with the supplied pullback and trace on level changes.

*Needs:* §3.1; §3.2; ArithmeticLocallySymmetricSpaces §ALS.1.6; ArithmeticLocallySymmetricSpaces §ALS.1.7; ArithmeticLocallySymmetricSpaces §ALS.1.1; Mathlib `Module.finrank_baseChange`.

**Checks.**

- At κ=2 this is the constant E-local system, not a zero coefficient space.
- A one-dimensional ℚ_p cohomology group stays one-dimensional over L and has ℚ_p-dimension [L:ℚ_p].
- At Bianchi κ=6 the chain coefficient in both realizations has dimension 9.
- For the integral complex O --p→ O, mod-p base change has an extra homology group; flat field comparison must not be generalized to arbitrary reduction.
- The comparison is an equality of dimensions of scalar extensions of one finite complex.

### 3.4 Weight bounds through completed-homology descent

For F with r₂>0 and the fixed split auxiliary level, let M_j=ℚ_p⊗H̃_j be the supplied completed ordinary homology modules. They are finitely generated A-modules of rank zero. The supplied homological descent sequence `E²_{i,j}=H_i(G,M_j⊗W_t)⇒H_{i+j}(Y(K′_f),W_t)` yields one proper-face polynomial `Q_{F,K′}` in d variables such that `dim H_n(Y(K′_f),W_t)≤Q_{F,K′}(t+1)` for every n and every t∈ℕ^d, in particular for the embedding tuple of every admissible κ. The same bound applies to complex ordinary cohomology with the appropriate dual coefficient; self-duality removes the dual in this case. The polynomial is independent of n and t. Apply CompletedCohomologyPartII §§5.6–5.7 over base field ℚ to `Res_{F/ℚ}SL₂` and the prime ideal (p), so its compact local group is `K₀=∏_{v|p}G_v=G` of analytic dimension 3d. (fu24, §7, pp. 23–24, equations (38)–(39).)

A proof uses the following route. The real group `SL₂(ℝ)^{r₁}×SL₂(ℂ)^{r₂}` has no discrete series when r₂>0; apply CompletedCohomologyPartII §5.7 to `Res_{F/ℚ}SL₂` over ℚ at (p), with K₀ the full product of d first-congruence factors. Use CompletedCohomologyPartII §5.1 finite generation and §6.3 rational homological descent with its completed-Tor convention. The lifted finite complex bounds the possible j; local homology vanishes above 3d. For each of the finitely many M_j apply §2.6 with rank zero. For a fixed total degree, E∞ terms are subquotients of E² terms and the abutment has a finite filtration. Sum their dimensions, then sum a finite envelope over j and 0≤i≤3d to obtain one Q. Use §3.3 and dual coefficient homology/cohomology over a field. Do not claim degeneration of the spectral sequence.

*Needs:* §2.6; §3.3; CompletedCohomologyPartII §5.1; CompletedCohomologyPartII §5.7; CompletedCohomologyPartII §6.3; CompletedCohomologyPartII §4.2; §0.1.

**Checks.**

- Every E² term in a total-degree diagonal contributes to an upper bound.
- No isomorphism between the abutment and a direct sum of E² terms is asserted.
- The totally real case is excluded precisely at the torsion input.
- For F imaginary quadratic, d=2 and dim K₀=6=3d, rather than the dimension 3 of a single prime of F; the local homology cutoff is 6.

### Examples

At signature (1,1) and κ=(4,6), the complex and p-adic coefficient dimensions both equal 27.

### Dependencies

Mathlib `Finset.prod`; ArithmeticLocallySymmetricSpaces §ALS.1.1; Chebotarev Layer 10; ArithmeticLocallySymmetricSpaces §ALS.0.10; ArithmeticLocallySymmetricSpaces §ALS.0.9; ArithmeticLocallySymmetricSpaces §ALS.1.8; ArithmeticLocallySymmetricSpaces §ALS.3.6; NoncommutativeAndEquivariantIwasawa §F.1; ArithmeticLocallySymmetricSpaces §ALS.1.6; ArithmeticLocallySymmetricSpaces §ALS.1.7; Mathlib `Module.finrank_baseChange`; CompletedCohomologyPartII §5.1; CompletedCohomologyPartII §5.7; CompletedCohomologyPartII §6.3; CompletedCohomologyPartII §4.2.

## Layer 4: Cuspidal dimensions in weight aspect

### 4.1 SL₂ cuspidal dimensions and support conventions

Put q=r₁+r₂. For a neat level K_f of the SL₂/F quotient and V_κ in Fu’s weight convention, when dim V_κ>1, the Eichler–Shimura–Harder comparison identifies the cuspidal degree-q contribution with the holomorphic/antiholomorphic real-place cohomological pieces and the complex-place cohomological pieces, giving `dim H_cusp^q(Y(K_f),V_κ)=2^{r₁}dim` S_κ(K_f). Use the parent’s injective H_cusp^q→H^q, with image in H_!^q=im(H_c^q→H^q). The symbol H_c^q here always means compact support; Marshall’s subscript c denotes the interior subspace. The finite-dimensional trivial-coefficient case κ=(2,…,2) is treated separately, so the stated nontrivial-coefficient identity is never used there. (fu24, §1, equation (2), p. 2; Theorem 1.2, pp. 2–3; marshall12, §2.1, equation (4), pp. 3–4 (arXiv:1103.2472v1).)

A proof uses the following route. Import the parent’s cuspidal decomposition and its injection into ordinary cohomology. For each contributing archimedean type, use AutomorphicFormsOnReductiveGroups §1.1 relative Lie cochains and §§5.2–5.3 coefficient and tempered-range computations. At each real place the holomorphic and antiholomorphic pieces give the factor two in the stated cusp-form convention; each complex place gives its degree-one factor. Take the relative-Lie Künneth product in degree q, and match the fixed finite-level invariants. The support interpretation is fixed by Marshall §2.1 (4), which defines the subspace by vanishing near the cusps. Keep compact support separate via the parent support triangle. For trivial V_κ use finite dimensionality at the one fixed tuple, absorbing that value into the global upper constant.

*Needs:* §3.1; ArithmeticLocallySymmetricSpaces §ALS.5b.5; ArithmeticLocallySymmetricSpaces §ALS.5b.4; AutomorphicFormsOnReductiveGroups §1.1; AutomorphicFormsOnReductiveGroups §§5.2–5.3.

**Checks.**

- At signature (0,1), the cusp-form and degree-one cuspidal dimensions agree.
- At one real place, the comparison counts holomorphic and antiholomorphic contributions.
- The parent’s genus-zero four-cusp modular-curve example rules out identifying ordinary cohomology with cuspidal cohomology.

### 4.2 The fixed-level sharp global bound

For a fixed number field F with r₂>0 and every fixed compact open K_f⊂SL₂(𝔸_F^∞), there is `C_{F,K_f}>0` such that `dim_ℂ S_κ(K_f) ≤ C_{F,K_f} Δ(κ)/min_vκ_v` for every tuple of even archimedean weights κ_v≥2. The minimum runs over the r₁+r₂ places. The constant is uniform over the whole weight orthant. At any fixed neat level, the same size bound holds for ordinary Betti dimensions in every degree, and for cuspidal/interior dimensions by inclusion. No leading constant or asymptotic equality is asserted. (fu24, Theorem 1.2, pp. 2–3; §7, pp. 23–24.)

The ordinary-cohomology form holds at every congruence level and for every embedding tuple. Prove `finrank_groupCohomology_weightRep_le`: for a number field F that is not totally real, a nonzero ideal 𝔞 of O_F and a subgroup Γ≤SL₂(O_F) containing ker(SL₂(O_F)→SL₂(O_F/𝔞)), there is a constant C such that for every t:Hom(F,ℂ)→ℕ, every degree i≥0 and every integer a with 1≤a≤t_σ+1 for all σ, the group cohomology H^i(Γ,`weightRep Γ t`) is finite dimensional and a·dim_ℂ H^i(Γ,`weightRep Γ t`)≤C∏_σ(t_σ+1). Taking a=min_σ(t_σ+1) at the embedding tuple of κ, where a≥min_vκ_v/2 and ∏_σ(t_σ+1)≤Δ(κ) by §3.1, gives the Betti bound C′Δ(κ)/min_vκ_v. (fu24, Theorem 1.2, pp. 2–3; §7, pp. 23–24, equations (38)–(39); fgt10, §3.2, pp. 16–17, for restriction and corestriction.)

A proof of the ordinary-cohomology form uses the following route. Apply §3.2 to the compact open closure K_f(𝔞) of the principal congruence kernel in SL₂(Ô_F): it gives an odd split prime p and a neat auxiliary level K′_f=G·K^p⊆K_f(𝔞), with G the product of the d first-congruence factors at p. Put Γ′=SL₂(F)∩K′_f, a neat subgroup of finite index in Γ. By strong approximation for the simply connected group `Res_{F/ℚ}SL₂`, whose archimedean points are noncompact, the adelic quotient Y(K′_f) is the single connected manifold Γ′\X, an aspherical space with a finite Borel–Serre model, so H^i(Γ′,V) is the finite-dimensional cohomology of the local system V. Apply §3.4 for every t∈ℕ^d, the realization comparison of §3.3, and §0.2 with the given a. Restriction H^i(Γ,V)→H^i(Γ′,V) is injective because corestriction after restriction is multiplication by [Γ:Γ′], which is invertible in ℂ; this needs neither neatness nor normality. The constant depends on F, Γ and the chosen Γ′, never on t, i or a; the finitely many degrees i≤3d are covered by one constant, and the higher ones vanish.

A proof uses the following route. At the auxiliary level use §3.4 and §4.1 for nontrivial coefficients. Set x=t+1. By §3.1, D(x)≤Δ and min x≥min κ/2. Apply §0.2 to Q to obtain Q(x)≤2(Σc_s)Δ/min κ. Use pullback to pass the cusp-form bound from K′_f to K_f. At neat levels, the normalized trace gives cohomology injectivity for the ordinary bound. Increase the fixed constant to include κ=(2,…,2) using finite dimensionality; this is one tuple, not an infinite exceptional family.

*Needs:* §3.4; §4.1; §3.2; §3.3; §3.1; §0.2; Mathlib `groupCohomology`; ArithmeticLocallySymmetricSpaces §ALS.1.6; ArithmeticLocallySymmetricSpaces §ALS.3.6.

**Checks.**

- If only one weight grows and another remains minimal, the theorem still has one uniform constant but need not improve that particular growth exponent.
- No r₂=0 instance is produced by this proof, and none exists: for F=ℚ and Γ=SL₂(ℤ), dim H¹(Γ,Sym^k(ℂ²))=`2dim S_{k+2}(SL₂(ℤ))+1` for even k≥2, which is 3 at k=10, 5 at k=22 and grows like k/6, while the right side with a=k+1 is the constant C.
- For F=ℚ(i), Γ=SL₂(ℤ[i]) and t=(n,n), the choice a=n+1 gives dim H^i(Γ,E_n)≤C(n+1); the choice a=1 only gives C(n+1)², so the saving comes from the minimum.
- For t=(n,0) over an imaginary quadratic field, min_σ(t_σ+1)=1 and the bound is C(n+1); the stated form does not claim a saving when one coordinate stays fixed.
- At t=0 the bound reads dim H^i(Γ,ℂ)≤C, a fixed Betti number.

### 4.3 Parallel weights and the degree drop

Under §4.2, if κ_v=κ at every archimedean place, κ even and ≥2, then `dim S_κ(K_f)≤C_{F,K_f} κ^{d−1}`, d=[F:ℚ]. The exponent is d−1, with no ε loss. This follows from Δ(κ)=κ^d and min_vκ_v=κ, not from a separate limit theorem. (fu24, Theorem 1.2, p. 3, parallel-weight assertion.)

A proof uses the following route. Apply the exact parallel-size identity and the global inequality. Keep the same level-dependent constant.

*Needs:* §4.2; §3.1.

**Checks.**

- For signature (1,1), the exponent is 2, not 1.
- No claim that `κ^{1−d}dim S_κ` converges is made.

### 4.4 The Bianchi linear upper bound

For imaginary quadratic F and every fixed compact open K_f, `dim S_κ(K_f)=O_{F,K_f}(κ)` for even κ≥2. At every congruence level Γ≤SL₂(O_F), `dim H^i(Γ,E_n)=O_{F,Γ}(n+1)` for i=1,2, where E_n=Sym^n(ℂ²)⊗conjugate Sym^n(ℂ²), n=κ/2−1. Cuspidal and interior dimensions satisfy the same bound by inclusion. (fu24, Theorem 1.2 and Corollary 1.3, p. 3; §7, p. 24.)

A proof uses the following route. Use d=2 in §4.3 for cusp forms. Use the ordinary-cohomology form of §4.2 with t=(n,n) and a=n+1; E_n is `weightRep Γ` at the constant tuple n. Convert κ=2(n+1).

*Needs:* §4.3; §4.2; §3.1.

**Checks.**

- κ=6 corresponds to E₂, of dimension 9.
- This is an upper bound at arbitrary level; a lower bound requires the separate base-change level hypothesis.

### Examples

For parallel weights at signature (1,1), Δ/min κ=κ³/κ=κ².

### Dependencies

ArithmeticLocallySymmetricSpaces §ALS.5b.5; ArithmeticLocallySymmetricSpaces §ALS.5b.4; AutomorphicFormsOnReductiveGroups §1.1; AutomorphicFormsOnReductiveGroups §§5.2–5.3; ArithmeticLocallySymmetricSpaces §ALS.0.10; ArithmeticLocallySymmetricSpaces §ALS.1.6; ArithmeticLocallySymmetricSpaces §ALS.3.6; Mathlib `groupCohomology`.

## Layer 5: Bianchi boundary and sharpness

### 5.1 Cohomology of a Bianchi cusp torus

Let Γ be a neat Bianchi congruence subgroup and T one torus component of its Borel–Serre boundary. With E_n, n≥0, as above, dim H^j(T,E_n) is 1,2,1 for j=0,1,2 and is zero otherwise. These dimensions use complex coefficients and unipotent cusp monodromy, rather than a trivial rank-(n+1)² local system. For c cusp components the boundary dimensions are c,2c,c. Finite non-neat cusp stabilizers require taking characteristic-zero invariants and are not asserted to preserve these equalities. (fu24, Corollary 1.3 and equation (2), pp. 2–3; fgt10, §1, pp. 3–4, equations (1.2)–(1.8).)

A proof uses the following route. Import the actual boundary stratum and its arithmetic unipotent group from ArithmeticLocallySymmetricSpaces Layers 2 and 4. At a neat Bianchi cusp this group is a lattice in ℂ≃ℝ². Two lattice generators z₁,z₂ give commuting nilpotent logarithms zᵢ e⊗1+conjugate(zᵢ)1⊗e on E_n. Real linear independence makes the 2×2 coefficient matrix invertible over ℂ. The Koszul complex of exp(Nᵢ)−1 is isomorphic to that of Nᵢ, since (exp(Nᵢ)−1)/Nᵢ is an invertible polynomial in Nᵢ. Change generators to e⊗1 and 1⊗e. For Sym^n, the raising operator has kernel and cokernel dimension one, including n=0. The tensor of the two one-operator complexes has cohomology dimensions 1,2,1 by the field Künneth formula. Sum over the c tori.

*Needs:* §3.1; ArithmeticLocallySymmetricSpaces §ALS.2.5; ArithmeticLocallySymmetricSpaces §ALS.2.8; ArithmeticLocallySymmetricSpaces §§ALS.4.5–ALS.4.7; LieHighestWeight Layer 0.

**Checks.**

- For n=0 the two operators vanish on a one-dimensional space, giving 1,2,1.
- For n=2, H¹(T,E₂) has dimension 2, not 18.
- For z₁=1,z₂=i, the change-of-logarithms matrix has determinant −2i≠0. For n=2 its Koszul complex has dimensions (9,18,9), differential ranks (8,8) and cohomology (1,2,1).
- At a non-neat cusp with a nontrivial finite-unit action, equalities must be replaced by invariants.

### 5.2 The bounded-boundary support bridge

For a neat Bianchi quotient Y with c cusps and E_n, n≥0, write H_!^i=im(H_c^i→H^i). The support triangle gives 0≤dim H^i−dim H_!^i≤b_i and `0≤dim H_c^i−dim H_!^i≤b_{i−1}`, where (b₀,b₁,b₂)=(c,2c,c). Hence |dim H_c^i−dim H^i|≤3c for i=1,2, uniformly in n. In these degrees the Bianchi cuspidal comparison identifies H_!^i with H_cusp^i. Use Poincaré–Lefschetz duality to pair the two interior degrees with the dual coefficients. For n=0, the degree-two restriction onto boundary has a one-dimensional cokernel on a connected quotient; for n>0 the degree-three compact-support term vanishes. Do not assert the nontrivial-coefficient surjectivity statement at n=0. (fu24, §1, equation (2), p. 2; Corollary 1.3, p. 3; fgt10, §1, pp. 3–4, equations (1.3)–(1.6) and discussion of degree two.)

A proof uses the following route. Import the parent support triangle and take its long exact sequence. The kernel of H_c^i→H^i is an image of `H^{i−1}(∂)`, and its cokernel in H^i is a subspace of H^i(∂). Insert §5.1; subtract the two possible nonnegative errors. Their sum gives the stated safe bound 3c. Use the Bianchi boundary-kernel/cuspidal comparison in FGT §1 (1.3)–(1.6); retain the ordinary, interior and compact-support maps as distinct objects. Import the parent finite-level duality before the automorphic interpretation. H_c³ is dual to H⁰ with dual coefficients; the latter is zero for n>0 and one-dimensional in the connected trivial case.

*Needs:* §5.1; ArithmeticLocallySymmetricSpaces §ALS.4.1; ArithmeticLocallySymmetricSpaces §ALS.5a.2; §4.1.

**Checks.**

- The difference from interior is controlled separately on both sides of H_c^i→H^i.
- At n=0 a connected quotient has H_c³≃ℂ; a proof that deletes it would give a false boundary surjectivity statement.
- At a neat Bianchi level, degree-one boundary restriction has image dimension c, half of b₁=2c; hence dim H¹−dim H¹_!=c≤2c.

### 5.3 Classical fixed-type dimension estimate

Fix N≥1 and a finite-dimensional complex representation σ of G_N=SL₂(ℤ/Nℤ) with σ^ι≃σ, where ι=diag(−1,1) and σ^ι=σ∘Ad ι; this holds for the restriction to G_N of every representation of GL₂(ℤ/Nℤ). G_N acts on S_k(Γ(N)) by g·f=f|_kγ⁻¹ for any lift γ∈SL₂(ℤ) of g. Let U_N be the upper unipotent subgroup and S₃=(0 −1;1 −1), S₄=(0 −1;1 0). For every k≥2 with σ(−I)=(−1)^k on σ, `dim Hom_{G_N}(σ,S_k(Γ(N))) = (k−1)dim σ/12 − ½dim σ^{U_N} + ε_k tr σ(S₄) + μ_k tr σ(S₃) + δ_{k,2} dim σ^{G_N}`, where `ε_k=(−1)^{k/2}/4` for k even and 0 for k odd, and μ_k is 0, −1/3, 1/3 for k≡1, 2, 0 mod 3. In particular the multiplicity is `(k−1)dim σ/12+O_{N,σ}(1)`, uniformly in k along the admitted parity classes, and for a fixed finite collection of σ one error constant works for all of them. (fgt10, §4.3, Proposition 4.18, pp. 25–26 (arXiv:0808.1204v1); serre77, I §1.5.3, p. 20 and I §4.2 Example (c), p. 52, for the amalgam; II §2.8, p. 169, for the cohomology exact sequence of an amalgam.)

A proof uses the following route. Use ModularSymbolsPadicLFunctions §0.7 at Γ(N): its compatibility with the normaliser action of SL₂(ℤ) makes `S_k⊕S̄_k≃H¹_par(Γ(N),V_{k−2}(ℂ))` an isomorphism of G_N-representations for every N≥1. Since f↦f^c(z)=overline(f(−z̄)) is antilinear and intertwines γ with ιγι for ι=diag(−1,1), S̄_k is S_k twisted by conjugation by ι; hence `dim Hom_{G_N}(σ,H¹_par)=m(σ)+m(σ^ι)`, where m(σ)=`dim Hom_{G_N}(σ,S_k(Γ(N)))` and σ^ι=σ∘Ad ι. ModularForms §10C supplies the classical spaces, the automorphy line bundle and Riemann–Roch. Apply the genus-zero modular-orbifold cohomology calculation: the cusp stabilizer contributes its unipotent-invariant term and the two elliptic stabilizers contribute finite-order character traces. The parabolic cohomology Euler characteristic from the amalgam `SL₂(ℤ)≅ℤ/4∗_{ℤ/2}ℤ/6` and its cohomology exact sequence, which give `dim H¹(SL₂(ℤ),W) = dim W − dim W^{ℤ/4} − dim W^{ℤ/6} + dim W^{SL₂(ℤ)}` when −I acts trivially on W, applied to the induced coefficient system, computes m(σ)+m(σ^ι), hence 2m(σ) under the hypothesis σ^ι≃σ; §5.6 consumes only tensor products of the §5.4 types, which are restrictions of GL₂(ℤ/Nℤ)-representations. The hypothesis σ^ι≃σ is used exactly here: without it the cohomology computes only m(σ)+m(σ^ι). This explicit calculation is the fixed-type refinement owned here; ordinary dimension formulas alone do not identify isotypic multiplicities. Separate the linear term (k−1)dim σ/12. The elliptic coefficients range over finitely many residue classes modulo twelve, all fixed-type traces and invariant dimensions are constant, and the k=2 correction is bounded.

*Needs:* ModularForms §10C; ModularSymbolsPadicLFunctions §0.7.

**Checks.**

- Taking the trivial type recovers the admitted-parity leading term for level-one cusp forms.
- Opposite central parity gives zero multiplicity and is excluded from the linear estimate.
- Fixing N and σ is necessary for the bounded remainder.
- For N=1, σ=1 and k=12, the periodic expression is 11/12−1/2+1/4+1/3=1; at k=2 it is 1/12−1/2−1/4−1/3+1=0.
- At N=3, k=4: X(Γ(3)) has genus 0 and four regular cusps, so dim S₄(Γ(3))=3·(0−1)+(4/2−1)·4=1. Since S₄(SL₂(ℤ))=0, SL₂(𝔽₃) acts on this line by a nontrivial character, one of the two order-three characters ω, ω̄ (trivial on −I∈Q₈, as k is even); so m(ω) and m(ω̄) are 1 and 0 in some order. Conjugation by ι inverts T=(1 1;0 1), so ω^ι=ω̄, and H¹_par(Γ(3),V₂(ℂ))≃ω⊕ω̄ gives 1 for both: a route through the cohomology character alone cannot separate them. This is the negative control for the hypothesis σ^ι≃σ: for σ=ω (`dim σ^{U_3}=0`, σ(S₄)=1 as S₄∈Q₈, μ_4=0) the periodic expression gives 3/12+1/4=½, not an integer, whereas for the ι-stable σ=ω⊕ω̄ it gives 6/12+2/4=1=m(ω)+m(ω̄).
- At N=2, G_2≅S₃ and every type is ι-stable (ι≡I mod 2). Γ(2) has genus 0, three cusps and no elliptic points, so dim S_k(Γ(2))=k/2−2 for even k≥4. At k=6 the trivial, sign and two-dimensional types (U_2-invariants 1, 0, 1; S₄-traces 1, −1, 0; S₃-traces 1, 1, −1) give 5/12−1/2−1/4+1/3=0, 5/12+1/4+1/3=1 and 10/12−1/2−1/3=0, total 0+1+2·0=1; at k=8 they give 0, 0 and 1, total 2. A formula with the sign of ε_k reversed gives 1/2 for the trivial type at k=6.

### 5.4 Ramified finite local types

Fix imaginary quadratic F, ramified rational primes R, ν_ℓ=v_ℓ(disc F), and the quadratic local character ω_ℓ. For ℓ∈R use the three local classes of fgt10 Definition 4.3: unramified principal series, PS(α,ω_ℓβ) with α,β unramified, and `AI_{F_ℓ/ℚ_ℓ}(θ_ℓ)` up to unramified twist with θ_ℓ/θ_ℓ^c unramified quadratic. For the supercuspidal class choose the minimal model of Lemma 4.19: a character θ′_ℓ of the unramified quadratic extension with θ′_ℓ/(θ′_ℓ)^τ=ω_ℓ∘N and conductor exponent ν_ℓ, and choose θ_ℓ giving the same induction. Construct the finite `GL₂(ℤ/ℓ^{ν_ℓ}ℤ)` types of these fixed classes and restrict them to SL₂. Denote by S₃=(0 −1;1 −1) and S₄=(0 −1;1 0) the order-three and order-four elements. Prove the following dimensions, invariant dimensions, traces and central parities, including ℓ=2 with ν₂=2 or 3. (fgt10, Definition 4.3, p. 20; discussion following Proposition 4.18 and Lemma 4.19, pp. 25–26.)

A proof uses the following route. Construct the principal-series type by finite Borel induction and use the supplied uniqueness of the supercuspidal type to identify its explicit finite model. Compute characters by the action on lines for principal series and the finite cuspidal or dyadic type model for supercuspidals, as in fgt10 Lemma 4.19. Unramified twists are trivial on GL₂(ℤ_ℓ).

The API includes the following facts.

- The unramified type is trivial, of dimension 1, with one unipotent invariant, both traces 1 and central parity +1.
- The principal-series type has dimension `ℓ^{ν_ℓ−1}(ℓ+1)`, two upper-unipotent invariants and parity ω_ℓ(−1); its S₃ trace is 0 for ℓ≡2 mod 3, 1 for ℓ=3 and 2 for ℓ≡1 mod 3, and its S₄ trace is `2(−1)^{(ℓ−1)/4}` for ℓ≡1 mod 4 and zero otherwise.
- The supercuspidal type has dimension `ℓ^{ν_ℓ−1}(ℓ−1)` and no upper-unipotent invariants; its S₃ trace is 0 for ℓ≡1 mod 3, −2 for odd ℓ≡2 mod 3 or (ℓ,ν_ℓ)=(2,3), −1 for ℓ=3 and 2 for (ℓ,ν_ℓ)=(2,2).
- Its S₄ trace is `2(−1)^{(ℓ−3)/4}` for ℓ≡3 mod 4 and zero otherwise; its parity is −ω_ℓ(−1), except at (ℓ,ν_ℓ)=(2,2), where it is −1.
- For tensor products, dimensions, central signs and character values multiply, and upper-unipotent invariants vanish as soon as a supercuspidal factor occurs.

*Needs:* GL2AutomorphicRepresentationsAndTransfer §R16.2.9.

**Checks.**

- At ℓ=2, ν₂=2, the principal-series type has dimension 6 and traces (S₃,S₄)=(0,0); the supercuspidal type has dimension 2 and traces (2,0), with central parity −1.
- At ℓ=2, ν₂=3, the corresponding dimensions are 12 and 4, while the supercuspidal traces are (−2,0).
- At ℓ=3 the principal-series type has dimension 4, two unipotent invariants and traces (1,0); the supercuspidal type has dimension 2, no unipotent invariants and traces (S₃,S₄)=(−1,2), since the S₄ formula gives 2(−1)^0=2 at ℓ=3, and central parity −ω₃(−1)=+1. Independently, this type factors through GL₂(𝔽₃)/Q₈≅S₃, whose kernel contains S₄, so σ(S₄)=1; a sign slip giving −2 would force σ(S₄)=−1 although S₄ lies in the kernel. At ℓ=7 the same formula gives 2(−1)^1=−2.
- A twist by a character of conductor beyond ν_ℓ changes the compact type and is excluded by the fixed minimal model; an unramified twist has compact character 1.

### 5.5 The SL₂ base-change multiplicity count

For imaginary quadratic F and n≥0, let 𝒜_ℚ(n) consist of the cuspidal GL₂/ℚ classes with holomorphic weight n+2, unramified outside R and with the three ramified local classes just specified, and let R(π)⊆R be the primes where π is ramified. Put `Z_F(n)=Σ_{π∈𝒜_ℚ(n)}2^{−|R(π)|}`. Write h_L for the class number of an imaginary quadratic field L and `ν_{L,n}=1` except that `ν_{ℚ(i),n}` is 1 exactly for n odd and `ν_{ℚ(√−3),n}` is 1 exactly for n≡2 mod 3. Let ℒ(F) be the imaginary quadratic fields L≠F with LF/F unramified and R_L the ramified primes of L. For a finite-index open determinant subgroup 𝒟⊆Ô_F× with 𝒟∩O_F×={1}, let X(𝒟) be the characters of the finite quotient `𝔸_{F,f}×/(F×𝒟)`, with |X(𝒟)|≥1 since it contains the trivial character, and `𝒜_F^{bc}(n,𝒟)` the cuspidal twisted-base-change classes of infinity type corresponding to E_n with K(𝒟)-fixed vectors, where K(𝒟)={g∈GL₂(Ô_F):det g∈𝒟}. Prove `|𝒜_F^{bc}(n,𝒟)|/|X(𝒟)|=Z_F(n)−ν_{F,n}h_F/2−Σ_{L∈ℒ(F)}ν_{L,n}2^{|R|−|R_L|−2}h_L` and that the normalized number of classes fixed by the twist `ω_L∘N_{F/ℚ}` is `ν_{L,n}2^{|R|−|R_L|−2}h_L`. Define H_bc¹ as the image in ordinary group cohomology of these actual cuspidal base-change classes via the comparison of fgt10 §3.3; taking the principal ideal component gives `dim H_bc¹(SL₂(O_F),E_n)=Z_F(n)−ν_{F,n}h_F/2`. This is the specialized finite-level count, including the CM correction. (fgt10, §3.3, (3.9)–(3.10), p. 17; §4.1, (4.4), pp. 18–19; Definition 4.3, p. 20; Propositions 4.10–4.11, pp. 22–23.)

A proof uses the following route. Use the supplied quadratic base-change cuspidality and descent fibres, then identify the admissible local classes with the specified finite types. Count non-CM fibres with weight `2^{−|R(π)|}`; count the quadratic self-twist exceptions by their ideal classes and the unit constraints encoded in ν. Apply character orthogonality to the X(𝒟)-action on normalized eigenforms: traces are fixed-class counts; in the principal ideal component all the quadratic characters evaluate to +1, cancelling the displayed ℒ(F) corrections.

*Needs:* GL2AutomorphicRepresentationsAndTransfer §§R17.4.2–R17.4.6; §5.4.

**Checks.**

- A non-CM fibre with |R(π)|=2 has four descents, each weighted 1/4, so its total normalized contribution is 1, rather than 4.
- For F=ℚ(i), ℒ(F) is empty and the principal-component correction is `ν_{F,n}/2`: it is 0 at n=0 and 1/2 at n=1.
- For F=ℚ(√−3), `ν_{F,n}` at n=0,1,2 is (0,0,1); the CM correction is therefore (0,0,1/2), not a constant in n.

### 5.6 Positive linear base-change contribution

For imaginary quadratic F, let R be the set of rational primes ramified in F, s=|R|, and ν_ℓ=v_ℓ(disc F). Put `A_F=(1/24)∏_{ℓ∈R}(ℓ^{ν_ℓ}+1)`, and put `B_F=2^{s−4}` if every odd ℓ∈R is 1 modulo 4, otherwise B_F=0. The base-change subspace at SL₂(O_F) has dimension `(A_F+B_F(−1)^{n+1})(n+1)+R_F(n)`, where R_F(n) is bounded independently of n. In particular A_F>B_F≥0, so this cuspidal subspace has dimension ≥c_F(n+1) for all sufficiently large n. The specialized multiplicity count, finite types and positivity argument are proved here, using the supplied general transfer, descent fibres and type uniqueness. (fgt10, §4.3, Theorem 4.17, pp. 24–25; Proposition 4.18 and Lemma 4.19, pp. 25–26; §4.4, Corollary 4.20, p. 27 (arXiv:0808.1204v1); fu24, §1, pp. 2–3, base-change discussion.)

A proof uses the following route. Use the owned SL₂ base-change multiplicity count and ramified finite types; the general transfer and type uniqueness inputs are precisely GL2AutomorphicRepresentationsAndTransfer §§R17.4.2–R17.4.6 and §R16.2.9. Use the equivariant classical modular-form dimension calculation of §5.3 (FGT Proposition 4.18), whose hypothesis σ^ι≃σ holds because every summed type is a tensor product of §5.4 types and so the restriction of a GL₂(ℤ/Nℤ)-representation: its leading term is (k−1)dim σ/12, while the unipotent invariant, elliptic trace and weight-two terms are bounded for the fixed finite types. Sum the finitely many admitted local types with the base-change fibre multiplicities, as in FGT Theorem 4.17. Their leading coefficients are A_F±B_F; the class-number and exceptional CM corrections are bounded. B_F≠0 forces 2∈R, since an imaginary quadratic field all of whose odd ramified primes are ≡1 mod 4 has discriminant −4d; then `(2^{ν₂}+1)/2≥5/2` and each odd factor (ℓ+1)/2≥3 give `A_F/B_F≥(5/3)·3^{s−1}>1`. If B_F=0, positivity is immediate. Take a positive fraction of A_F−B_F and absorb the bounded R_F(n) by choosing one threshold. No asymptotic leading constant is inferred for the entire cuspidal space.

*Needs:* §5.5; §5.4; §5.3.

**Checks.**

- For F=ℚ(i), s=1 and ν₂=2, so A_F=5/24, B_F=1/8 and A_F−B_F=1/12>0.
- The full cusp space may contain non-base-change classes.
- The parity dependence prevents replacing this argument with one universal asymptotic coefficient.

### 5.7 Lower bounds at the admitted levels

Let Γ be any congruence subgroup of SL₂(O_F), F imaginary quadratic. There exist `c_{F,Γ}>0` and n₀ such that `dim H^i(Γ,E_n)≥c_{F,Γ}(n+1)` for i=1,2 and all n≥n₀; the injected base-change subspace is represented by cuspidal automorphic forms. Restriction from SL₂(O_F) is injective because corestriction after restriction is the nonzero scalar [SL₂(O_F):Γ]. At neat Γ this subspace lies in H_cusp¹=H_!¹ and gives the same lower bound there and, by self-dual interior duality, in H_!². At a non-neat Γ the degree-two bound is obtained from a neat normal subgroup by taking invariants. The cusp-form interpretation at the corresponding level follows directly by inclusion of fixed vectors, including at non-neat level. (fgt10, Theorem 4.17, pp. 24–25; Corollary 4.20, p. 27; §1, pp. 3–4 (arXiv:0808.1204v1); fu24, Corollary 1.3, p. 3.)

A proof uses the following route. Apply the maximal-level base-change count and finite-index restriction/corestriction in ordinary group cohomology; this step needs no neatness (fgt10, §3.2, pp. 16–17). Restrict the actual cuspidal automorphic forms to the smaller level; at neat Γ identify their cohomological images with the parent’s cuspidal carrier. At neat levels apply the self-dual interior pairing for degree two; for cusp-form dimensions use κ=2(n+1). For degree two at an arbitrary congruence Γ, choose a neat principal congruence subgroup Γ′⊆Γ, normal in SL₂(O_F), and put Q=Γ/Γ′. In characteristic zero H²(Γ,E_n)=H²(Γ′,E_n)^Q, and H_!²(Γ′,E_n) is a Q-stable subspace. The interior pairing H_!¹(Γ′,E_n)×H_!²(Γ′,E_n^*)→H_c³(Γ′\X,ℂ)=ℂ is perfect and Q-equivariant, since Q acts on the connected oriented 3-manifold Γ′\X by orientation-preserving isometries and hence trivially on H_c³. Because E_n≅E_n^* (the symplectic form on ℂ² and its conjugate) and invariants of a finite group in characteristic zero have the same dimension in a representation and its dual, dim H²(Γ,E_n)≥dim H_!²(Γ′,E_n)^Q=dim H_!¹(Γ′,E_n)^Q. The base-change classes restricted from SL₂(O_F) are Q-invariant, interior at Γ′ and of dimension at least c(n+1).

*Needs:* §5.6; ArithmeticLocallySymmetricSpaces §ALS.1.8; ArithmeticLocallySymmetricSpaces §ALS.3.6; ArithmeticLocallySymmetricSpaces §ALS.0.10; §4.1; §5.2 and ArithmeticLocallySymmetricSpaces §ALS.5a.2 for the interior and degree-two conclusions.

**Checks.**

- Shrinking an admitted level preserves the lower bound.
- Injectivity of pullback does not give a lower bound at a larger arbitrary compact open level.
- For Γ=SL₂(O_F), the index is 1 and restriction/corestriction is the identity; the lower bound applies despite torsion in Γ.
- For Γ=SL₂(O_F), −I∈Γ acts on E_n by (−1)^n(−1)^n=1, so the central character does not kill the cohomology; on Sym^n(ℂ²)⊗conjugate Sym^m(ℂ²) with n+m odd every H^i(Γ,·) vanishes.
- If Q acted on Γ′\X reversing orientation, the dual of H_!¹ would be H_!² twisted by the orientation character and its Q-invariants could be smaller; the orientation-preserving action of SL₂(ℂ) is what makes the degree-two invariants count equal.

### 5.8 Bianchi growth in four support conventions

Let F be imaginary quadratic. For every congruence subgroup Γ≤SL₂(O_F), prove `bianchi_groupCohomology_linear_growth`: there exist c>0, C and n₀ such that for n≥n₀ and i∈{1,2} the ordinary group cohomology H^i(Γ,E_n), with E_n=`weightRep Γ` at the constant tuple n, is finite dimensional and c(n+1)≤dim H^i(Γ,E_n)≤C(n+1). For neat congruence Γ, there exist 0<c≤C and n₀ such that for n≥n₀ and i=1,2, c(n+1)≤dim H_cusp^i(Γ,E_n)=dim H_!^i(Γ,E_n)≤C(n+1), and the same two-sided inequalities, after changing c,C,n₀, hold for H_c^i. Equivalently these dimensions have two-sided linear growth in even κ=2(n+1). At arbitrary fixed adelic level the roadmap asserts the upper bound alone for cusp forms. All constants depend on the field and the fixed level. There is no claim of a ratio tending to one. (fu24, Corollary 1.3, p. 3; fgt10, Theorem 4.17, pp. 24–25 and Corollary 4.20, p. 27.)

A proof uses the following route. For ordinary cohomology at every congruence level combine the upper bound of §4.4 with the lower bound of §5.7 in degrees one and two. At neat levels combine §4.4 and §5.7 for the cuspidal/interior spaces in degrees one and two. Ordinary cohomology contains the interior subspace and has the established linear upper bound. Compact-support cohomology surjects onto the interior image; §5.2 supplies a uniform upper discrepancy. Equivalently use its 3c bound with ordinary dimensions. Absorb the fixed boundary constants by enlarging the threshold and the upper constant.

*Needs:* §4.4; §5.7; §5.2.

**Checks.**

- The result is stable under changing a finite number of small weights.
- The three cohomology spaces may have different dimensions at every weight despite having the same growth order.
- For F=ℚ(i) and Γ=SL₂(ℤ[i]), the base-change part of H¹ has dimension `(5/24+(−1)^{n+1}/8)(n+1)+O(1)` by §5.6; at n=99 the leading term is (1/3)·100≈33.3 and at n=100 it is (1/12)·101≈8.4. The lower-bound constant obtained from base change alone is therefore at most 1/12, and the parity oscillation shows why the statement asserts two constants rather than a limit of dim/(n+1).
- The threshold n₀ is necessary: H¹(SL₂(ℤ[i]),ℂ)=0 because the abelianization of SL₂(ℤ[i]) is finite, so no c>0 works at n=0.

### Examples

For F=ℚ(i), the base-change slopes are 5/24±1/8, hence 1/3 and 1/12; the full cusp space can be larger.

### Dependencies

ArithmeticLocallySymmetricSpaces §ALS.2.5; ArithmeticLocallySymmetricSpaces §ALS.2.8; ArithmeticLocallySymmetricSpaces §§ALS.4.5–ALS.4.7; LieHighestWeight Layer 0; ArithmeticLocallySymmetricSpaces §ALS.4.1; ArithmeticLocallySymmetricSpaces §ALS.5a.2; ModularForms §10C; ModularSymbolsPadicLFunctions §0.7; GL2AutomorphicRepresentationsAndTransfer §R16.2.9; GL2AutomorphicRepresentationsAndTransfer §§R17.4.2–R17.4.6; ArithmeticLocallySymmetricSpaces §ALS.1.8; ArithmeticLocallySymmetricSpaces §ALS.3.6; ArithmeticLocallySymmetricSpaces §ALS.0.10.

## Downstream consumers

Fixed-level automorphic multiplicity applications consume §4.2 through Δ and the minimum place weight. Completed-module applications consume §2.6 through skew rank and a single weight-and-degree-uniform proper-face polynomial. Bianchi cohomology applications consume §5.8 with its neatness, congruence and support hypotheses. These estimates supply a growth order, not a leading constant for the full cuspidal space.

## Source corrections

All locators below refer to the specified arXiv or author versions in the references.

### E1

Fu arXiv:2201.11190v2 (15 February 2024), §1, equation (2), p. 2; Corollary 1.3, p. 3. Use cuspidal/interior cohomology in the dimension comparison; derive the compact-support growth through the bounded boundary maps. Marshall §2.1 defines the relevant subspace inside ordinary cohomology, and FGT §1 retains a boundary contribution.
**Checks.**

- At a neat Bianchi level with c cusps, dim H¹−dim H¹_!=c, and b₁(∂)=2c; compact support cannot be identified with the interior image merely by notation.


### E2

Fu arXiv:2201.11190v2 (15 February 2024), Theorem 1.5, p. 4; §5, Remark 5.8, p. 21. Induced SL₂ parameters satisfy that 2λ+1 is a square in ℤ_p; not every integral parameter does. Use the AW14 route for the all-integral contract. For p=3, λ=1 is integral while 2λ+1=3 has no square root in ℚ_3. Only the implication from induced to integral holds.
**Checks.**

- At p=3, λ=1 gives v₃(1+2λ)=1, whereas every nonzero square has even valuation; after adjoining √3, μ=−1+√3 gives ½μ(μ+2)=1.


### E3

Fu arXiv:2201.11190v2 (15 February 2024), Proof of Theorem 5.7, p. 20, used in Theorem 5.1, p. 21. Supply separatedness or the ideal-contraction identity between the two radii before drawing the domain conclusion. The all-integral faithfulness input is supplied through the independent AW14 route. A zero intersection in the completion does not follow from density, and the filtration on the quotient must be separated. The needed large radii are not covered by the smaller-radius calculation.
**Checks.**

- In ℚ_p[x] the ideal (1−px) is proper, while 1−px is a unit in ℚ_p⟨x⟩ with inverse `Σ_{n≥0}p^n` x^n; density alone therefore does not give contraction of ideals.


### E4

Fu arXiv:2201.11190v2 (15 February 2024), Theorem 1.2, pp. 2–3; Corollary 1.3, p. 3. Take the minimum over archimedean places, and state two positive constant bounds for the growth order. There are r₁+r₂ place weights; a two-sided bound does not imply an asymptotic equivalent.
**Checks.**

- For signature (1,1) there are two place weights and three embedding weights; at parallel κ=4 the upper size is 4³/4=16, and a two-sided estimate permits normalized values alternating between 1 and 2.


### E5

Fu arXiv:2201.11190v2 (15 February 2024), Theorem 5.7, p. 20. At least restrict to the integral parameter regime used downstream and prove its separatedness; a nonintegral central character can give the zero quotient. If the scalar parameter has norm larger than the Casimir, subtracting it gives a unit, so the central quotient is zero and cannot be a domain.
**Checks.**

- If ‖Δ/λ‖<1, then `(Δ−λ)⁻¹=−λ⁻¹Σ_{n≥0}(Δ/λ)^n` and the central quotient is zero; a domain conclusion must exclude this parameter regime.


### E6

Fu arXiv:2201.11190v2 (15 February 2024), Theorem 3.2 and proof, pp. 8–11. For a small coordinate use `D(k+1)≤α_i∏_{j≠i}(k_j+1)`; the common bound `2Σ_iα_i∏_{j≠i}(k_j+1)` covers both regimes. The excluded weights form infinite coordinate strips, so they cannot be absorbed as a finite set of exceptions.
**Checks.**

- At α=(3,3), k=(1,t), D(k+1)=2(t+1)≤3(t+1), while the common bound is 6(t+1)+12 for every t≥0.


### E7

Fu arXiv:2201.11190v2 (15 February 2024), Theorem 1.2, pp. 2–3; §7, pp. 23–24. Choose p split outside the nonmaximal primes of a product subgroup in the given fixed level; refine to a neat product level and use pullback injection. The theorem ranges over arbitrary fixed compact opens, and the refinement index is independent of the weight.
**Checks.**

- If K′⊂K has index r, trace after pullback is r·id and the normalized composite is id; r is independent of κ, so one constant serves the entire weight orthant.


### E8

Fu arXiv:2201.11190v2 (15 February 2024), §4, equation (16), p. 13. For the Banach completion require weighted coefficients to tend to zero; do not use the larger bounded-series space. A series in the norm completion of finite sums must have vanishing weighted tails.
**Checks.**

- For r=1/p, coefficients `λ_n=p^{−n}` give |λ_n|r^n=1 for every n; successive partial sums have distance 1, and so are not Cauchy.


### E9

Fu arXiv:2201.11190v2 (15 February 2024), §4, equation (17), p. 14. Use ℤ_p or an unramified base for that displayed set and obtain finite ramified extensions by the separately proved scalar-extension comparison. In a ramified coefficient ring, p lies in the square of its maximal ideal, so the purported denominator description can contain zero.
**Checks.**

- For ramification index 2, p=uϖ² lies in 𝔪², so 0=p+(−p) belongs to p+𝔪²; over ℤ_p the corresponding p+p²Λ cannot contain zero.


### E10

Finis–Grunewald–Tirao arXiv:0808.1204v1, §4.3, Proposition 4.18, p. 25. Restrict the formula to σ with σ∘Ad(diag(−1,1))≃σ. Its periodic coefficients are real, and the Eichler–Shimura route the source indicates computes only m(σ)+m(σ^ι); for a representation not isomorphic to its ι-conjugate that route cannot determine m(σ), and the formula can fail. The application in Theorem 4.17 uses restrictions of GL₂-types only and is unaffected.
**Checks.**

- At N=3, k=4 and σ an order-three character of SL₂(𝔽₃), the formula gives 3/12+1/4=½, while the true multiplicities of the two order-three characters in the one-dimensional S₄(Γ(3)) are 1 and 0.


## References

Locators use the versions below; journal information identifies the work rather than changing its pagination. The source manifest records the fetched versions and their checksums.

- **fu24.** Weibo Fu, [Sharp bounds for multiplicities of Bianchi modular forms](https://arxiv.org/pdf/2201.11190v2), arXiv:2201.11190v2, pp. 1–25; published Annals of Mathematics 200 (2024), 123–152. The local estimates use §§3–4 and §6; the global estimate uses §7.
- **aw14.** Konstantin Ardakov and Simon Wadsley, [Verma modules for Iwasawa algebras are faithful](https://www.dpmms.cam.ac.uk/~sjw47/VermaIwasawa.pdf), author version, pp. 1–19; published Münster Journal of Mathematics 7 (2014), 5–26. Use Theorems 4.6 and 5.4, pp. 11 and 16, with deformation index n≥0.
- **aw13.** Konstantin Ardakov and Simon Wadsley, [On irreducible representations of compact p-adic analytic groups](https://people.maths.ox.ac.uk/ardakov/Smith.pdf), author preprint; published Annals of Mathematics 178 (2013), 453–557. Use §10 for microlocalisation and Lemma 10.13, p. 77, for canonical dimension zero.
- **marshall12.** Simon Marshall, [Bounds for multiplicities of automorphic forms of cohomological type on GL₂](https://arxiv.org/pdf/1103.2472v1), arXiv:1103.2472v1, pp. 1–19. The published work is titled *Bounds for the multiplicities of cohomological automorphic forms on SL₂*, Annals of Mathematics 175 (2012), 1629–1651 (fu24 line 1214); these locators use v1: §2.1, (4), pp. 3–4; §2.2, (7), p. 4; §5, (29) and Lemma 11, pp. 15–16.
- **serre77.** Jean-Pierre Serre, [Arbres, amalgames, SL₂](https://www.numdam.org/item/AST_1983__46__1_0.pdf), rédigé avec la collaboration de Hyman Bass, Astérisque 46 (1977), Numdam. Use I §1.5.3, p. 20 and I §4.2 Example (c), p. 52, for `SL₂(ℤ)≅ℤ/4∗_{ℤ/2}ℤ/6`, and II §2.8, p. 169, for the cohomology exact sequence of an amalgam.
- **fgt10.** Tobias Finis, Fritz Grunewald and Paulo Tirao, [The cohomology of lattices in SL(2,C)](https://arxiv.org/pdf/0808.1204v1), arXiv:0808.1204v1; published Experimental Mathematics 19 (2010), 29–63. Use §1, pp. 3–4; Definition 4.3, p. 20; Propositions 4.10–4.11, pp. 22–23; Theorem 4.17, pp. 24–25; Proposition 4.18 and Lemma 4.19, pp. 25–26; Corollary 4.20, p. 27.
