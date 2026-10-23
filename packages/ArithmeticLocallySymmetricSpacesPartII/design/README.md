# Arithmetic locally symmetric spaces, Part II: weight multiplicities

This roadmap develops the fixed-level weight aspect for SL₂ over a number field with a complex place. Its endpoints are Fu’s sharp upper bound for cuspidal multiplicities, a uniform local homology theorem for products of first-congruence SL₂ groups, and two-sided linear Bianchi growth at the congruence levels justified by base change. The principal reusable output is a calculus of nonnegative multiaffine errors: it separates the rank contribution from torsion, survives finite homological descent, and yields a saving by the smallest weight without assuming that all weights grow together.

The definitive specification is this document. The packet records its target graph, dependencies and coverage. The suggested Lean file contains light scalar definitions and milestones expressible using the pinned library carriers. Its numeric bounds and symmetric-power examples are suggested forms, not definitions of automorphic cohomology or a formalization of the arithmetic endpoints. The actual arithmetic quotients, completed modules and completed enveloping algebras must come from their named suppliers. Every node has implementation status unchecked.

## Scope and conventions

Fix a number field F of signature (r₁,r₂), with d=r₁+2r₂ and r₂>0 for the global saving. At each archimedean place take an even integer κ_v≥2. A complex place contributes two local variables after choosing a completely split rational prime. The archimedean size is

Δ(κ)=∏_{v real}κ_v · ∏_{v complex}κ_v².

For fixed compact open K_f in SL₂ of the finite adeles, the global target is a constant C depending only on F and K_f with

dim S_κ(K_f) ≤ C Δ(κ)/(min_v κ_v).

The assertion is uniform on the entire admissible weight orthant. In parallel weight it becomes Cκ^(d−1). For imaginary quadratic F this is linear in κ. The lower bound has an additional level hypothesis: Γ is a fixed neat congruence subgroup of finite index in SL₂(O_F). At these levels, ordinary, compact-support, interior and cuspidal cohomology in degrees one and two have two-sided linear growth. Upper and lower constants need not agree. These statements provide neither a leading constant for the full cuspidal space nor a lower bound at every compact open. They make no totally real saving assertion.

The local theorem uses an odd prime p, m≥1, and G equal to a product of m kernels of reduction SL₂(ℤ_p)→SL₂(𝔽_p). Write Λ=ℤ_p[[G]] and A=ℚ_p⊗_{ℤ_p}Λ. This is the bounded-denominator rational Iwasawa algebra. A formal series with coefficient denominators unbounded below is not silently an element of A. Modules are left modules; skew rank uses the supplied division ring of fractions, with the compatible left localization. Homological coefficients are rational completed Iwasawa coefficients with a stable integral lattice, not discrete group representations equipped with ordinary group-ring Tor.

For k∈ℕ^m, W_k is the actual external tensor of Sym^{k_i}(ℚ_p²). Its dimension is D(k+1), where D(x)=∏x_i. The theorem controls the deviation of degree-zero homology from rank_A(M)D(k+1) and every positive homology group by one polynomial B_M(k+1). This polynomial is a sum of monomials indexed by proper subsets of the coordinates, with nonnegative real coefficients. It has no full product term. One polynomial works simultaneously for all k and all homological degrees. Global dimension 3m makes this a finite homological requirement.

Use H_c for compact support and H_! for the image of compact-support cohomology in ordinary cohomology. Use H_cusp for the cuspidal subspace. These spaces have different definitions and different comparison maps. In the Bianchi degrees under consideration H_cusp=H_!, but equality with H_c is not asserted. The subscript c in Marshall’s cited notation denotes an interior subspace, so its dimension comparison is translated into this convention before use. Dual coefficients remain present in chain/cochain and Poincaré–Lefschetz comparisons until the actual self-duality of W_k or E_n removes them.

## Ownership and dependencies

The parent ArithmeticLocallySymmetricSpaces supplies the quotient, neat levels, local systems, finite chain models, support triangle, boundary strata, level traces, cuspidal injection and finite-level duality. CompletedCohomologyPartII supplies completed ordinary homology, its finite generation, the absence-of-discrete-series torsion theorem and rational completed-Tor descent. This roadmap applies those results; it does not reconstruct their objects or treat their conjectural strengthenings as available.

NoncommutativeAndEquivariantIwasawa owns rational Iwasawa homology, global dimension, Ore localization and the general finite-module topology. Explicit requests below specify the skew-rank and canonical-dimension refinements needed here. The upstream LieHighestWeight roadmap owns ordinary PBW and split characteristic-zero sl₂ highest-weight theory. Tau Ceti already supplies symmetric powers and their matrix actions. This continuation restricts those representations to the chosen open compact group and computes the specialized two-generator cusp complex. The completed enveloping and microlocal rings belong to the two analytic suppliers described below; their proposed routes do not yet have adopted stage identifiers, and are recorded as gaps rather than invented prerequisite nodes.

Chebotarev supplies a split auxiliary prime avoiding a finite set. ModularForms supplies the classical congruence-level modular-form and cohomology infrastructure. This roadmap owns its finite-type equivariant dimension refinement, since an ordinary dimension formula does not determine individual finite-type multiplicities. GL2AutomorphicRepresentationsAndTransfer owns quadratic base change, its cuspidality and fibre statements, and the ramified local types. This roadmap owns the particular FGT multiplicity summation and the positivity argument. AutomorphicFormsOnReductiveGroups supplies the relative Lie-cohomology and cohomological-range infrastructure used in the SL₂ comparison.

The pinned baseline is Tau Ceti f790474821cf4256814db967cb154e7af3d0c369 with Mathlib 082e2d37e8b0463410cdb532e111cd43d5a66174. The parent and completed-cohomology library audit was inspected before assigning ownership. Source statements for every baseline reference were read at these pins. Current upstream roadmap and library trees were also inspected to avoid duplicating newer work; their newer declarations are not credited to the pinned baseline. ProfiniteArithmetic and LieHighestWeight were read in full, with the relevant suggested declarations; the ProfiniteProPGroups ownership inventory and layer nine were checked as well.

## How to use the layers

WM.0 specifies weights and the error class. WM.1 controls torsion multiplicities through principal cyclic quotients. WM.2 first separates the upper and lower rank estimates, then cancels their main terms in the degree-one exact sequence. This cancellation is essential: a bound by the whole preceding degree-zero group would retain a degree-m term and lose the saving. Only finitely many syzygies are needed, because rational homology vanishes above 3m.

WM.3 identifies the archimedean and split-prime coefficient systems over one finite number field, then uses the supplied completed-homology descent. Each abutment has a finite filtration whose graded dimensions are bounded by E² dimensions; degeneration is not required. The lack of real discrete series when r₂>0 makes all relevant completed modules rank zero. WM.4 converts the resulting proper-face polynomial into the stated global saving. WM.5 computes the boundary error and provides the source-qualified lower bound. Its finite-type dimension theorem precedes the base-change count, although the independent boundary calculation can be developed first.

The following targets include their exact mathematical statement, proof route, direct prerequisites and checks. API and tests are attached to every definition or construction. A check is a mathematical acceptance requirement; the suggested Lean examples cover only those carriers that already exist at the pins. None of these check lists claims that the planned arithmetic theory has been implemented.

## WM.0 — Weights and multiaffine errors

For a finite coordinate set of size m≥1 define D(x)=∏x_i and B_c(x)=Σ_{s proper}c_s∏_{i∈s}x_i with c_s≥0. Specify reindexing, addition and degree APIs and prove B_c(x)≤(Σc_s)D(x)/a for 1≤a≤all x_i. Restrict existing symmetric-power representations to the product of m odd-p first-congruence SL₂ groups, with stable lattices, absolute irreducibility, self-duality and dim W_k=D(k+1). The representation and Iwasawa carriers retain their suppliers.

### Product of shifted local weights

Target: ArithmeticLocallySymmetricSpacesPartII:WM.0/weight-product. Kind: definition.

For a finite coordinate set I of size m, put D(x)=∏ᵢ xᵢ for x:I→ℝ. At a local highest weight k:I→ℕ evaluate xᵢ=kᵢ+1. The empty product is one. This scalar function records the dimension of the imported external tensor of SL₂ symmetric powers; it carries no representation-theoretic data.

Proof route:

1. Use the ordinary finite product; reindex through a bijection of I.
2. Identify D(k+1) with the product of the existing symmetric-power finranks when applying the coefficient-family comparison.

Direct prerequisites:

- mathlib:Finset.prod

Consumers:

- Fu Theorem 1.4: Normalizes the rank contribution to degree-zero homology.
- WM.3/global-local-weights: Compares the true coefficient dimension with the archimedean size Δ.

Required API:

- **weightProduct** (data): D(x)=∏ᵢxᵢ.
- **weightProduct_reindex** (functoriality): For a bijection e:J≃I, D(x∘e)=D(x).
- **weightProduct_update** (relation): Updating coordinate i from xᵢ to y replaces its factor by y: D(x[i:=y])=y∏ⱼ≠ᵢxⱼ.
- **weightProduct_one** (simp): D(1)=1, including the empty coordinate set.

Discriminating tests:

- **weightProduct_two** (computation): For x=(2,4), D(x)=8, whereas the sum of the factors is 6.
- **weightProduct_empty** (degenerate): For I empty, D(x)=1, not 0.
- **weightProduct_zero_weight** (comparison): For k=(0,0), D(k+1)=1; using ∏kᵢ would incorrectly return 0.

Checks:

- D is positive when every xᵢ≥1; changing an index order preserves its value.

Sources:

- fu24, Theorem 1.4, p. 3; §6, p. 21. The leading rank term uses the product of the dimensions kᵢ+1.

### Nonnegative proper-face polynomials

Target: ArithmeticLocallySymmetricSpacesPartII:WM.0/proper-face-majorant. Kind: definition.

For m≥1 and coefficients c_s≥0 indexed by proper subsets s⊊I, define B_c(x)=Σ_{s⊊I}c_s∏ᵢ∈s xᵢ. Coefficients for the full subset are excluded. Thus B_c is multiaffine and has total degree at most m−1. An error function e(k) is controlled by c when |e(k)|≤B_c(k+1) for every k∈ℕᴵ. Nonnegative dimension functions may omit the absolute value. Coefficients and inequalities live in ℝ; finite sums and positive rescalings preserve this class.

Hypotheses: m≥1.

Proof route:

1. Express the function as a finite sum over the powerset with the full set removed.
2. Expand xᵢ=kᵢ+1 to compare with a multiaffine polynomial in the unshifted k. Taking absolute values of coefficients gives a nonnegative majorant whenever the source supplies a possibly signed polynomial.
3. For a finite collection, add coefficient vectors; this produces one common bound independent of the weight and homological index.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.0/weight-product
- mathlib:Finset.powerset
- mathlib:MvPolynomial

Consumers:

- WM.1/torsion-bound: Adds the finitely many cyclic quotient errors.
- WM.2/common-homology-bound: Takes one bound for every homological degree.
- WM.4/sharp-global-bound: Converts polynomial errors into a minimum-weight saving.

Required API:

- **faceMajorant** (data): Evaluate B_c(x) by its proper-subset sum.
- **faceMajorant_add** (relation): B_{c+d}=B_c+B_d and B_{a c}=aB_c for a≥0.
- **faceMajorant_reindex** (functoriality): Transporting the coefficients and x through a coordinate bijection preserves B.
- **faceMajorant_nonneg** (relation): B_c(x)≥0 if c_s≥0 and xᵢ≥0.
- **faceMajorant_single** (simp): One coefficient at s gives exactly c_s∏ᵢ∈s xᵢ; the full subset contributes zero.
- **faceMajorant_degree** (compatibility): The corresponding MvPolynomial has degree at most m−1 in total and degree at most one in each variable.

Discriminating tests:

- **faceMajorant_rank_one** (degenerate): When m=1, B_c is constant; an error proportional to k+1 is rejected.
- **faceMajorant_three** (computation): For m=3, coefficients c_{∅}=2 and c_{{0,2}}=3 give B(2,5,4)=26.
- **faceMajorant_no_full_term** (non-example): For m=2, x₀x₁ cannot be bounded on all xᵢ≥1 by any fixed proper-face polynomial.
- **faceMajorant_small_strip** (computation): For m=2 and c_{{1}}=7, B(1,t)=7t: keeping one coordinate minimal does not make the error bounded.

Checks:

- The full monomial ∏xᵢ is absent, including after addition; constant errors are admitted for every m≥1.

Sources:

- fu24, Theorem 1.4, p. 3; Theorem 3.2, pp. 8–11; §6, pp. 21–23. The source needs a common multiaffine error of degree less than the number of coordinates. This nonnegative normal form makes the inequalities reusable.

### A missing coordinate gives the saving

Target: ArithmeticLocallySymmetricSpacesPartII:WM.0/minimum-weight-saving. Kind: theorem.

Let m≥1, xᵢ≥1 and c_s≥0 for proper s⊊I. For any a with 1≤a≤xᵢ for every i, B_c(x)≤(Σ_s c_s)D(x)/a. In particular take a=minᵢxᵢ. On the diagonal xᵢ=t≥1, B_c(x)≤(Σ_s c_s)t^(m−1). The constants depend on c and m, never on x.

Hypotheses: m≥1; All xᵢ≥1; c_s≥0.

Proof route:

1. For each proper s choose j∉s. The product of omitted coordinates is at least xⱼ≥a; all other omitted factors are at least one.
2. Multiply ∏ᵢ∈s xᵢ≤D(x)/a by c_s and sum.
3. For parallel x, each monomial has degree |s|≤m−1.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.0/weight-product
- ArithmeticLocallySymmetricSpacesPartII:WM.0/proper-face-majorant

Checks:

- For m=1 the diagonal exponent is zero.
- For x=(1,t), the bound allows size t; it does not claim a saving in a coordinate that stays fixed.

Sources:

- fu24, Theorem 1.2, pp. 2–3; §7, pp. 23–24. This elementary inequality supplies the explicit passage from the local multiaffine bound to Fu’s global size bound.

### The external tensor coefficient family

Target: ArithmeticLocallySymmetricSpacesPartII:WM.0/local-algebraic-family. Kind: construction.

Fix an odd prime p, m≥1, G=∏_{i=1}^m ker(SL₂(ℤ_p)→SL₂(𝔽_p)), Λ=ℤ_p[[G]], and A=ℚ_p⊗_{ℤ_p}Λ. Use the existing symmetric-power representations and tensor products to form W_k=⊠ᵢ Sym^{kᵢ}(ℚ_p²), restricted to G, and W_k⁰=⊠ᵢ Sym^{kᵢ}(ℤ_p²). The latter is a G-stable full lattice. Specify absolute irreducibility, self-duality and dim W_k=D(k+1). The A-action is the continuous extension of this actual matrix action. This is a specialization of the supplied representation and Iwasawa-module APIs, not a new tensor or completed-group-ring construction.

Hypotheses: p odd; m≥1.

Proof route:

1. Restrict the existing GL₂ symmetric-power action along SL₂ and the congruence subgroup. Take its external tensor over all factors.
2. Use the symmetric-power basis and tensor finrank formula for the dimension. The alternating pairing on the standard SL₂ representation induces the characteristic-zero self-duality.
3. Use the supplied sl₂ highest-weight irreducibility and Zariski density of this open subgroup to retain absolute irreducibility. Export continuity and the stable lattice before extending the group action to A.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.0/weight-product
- tauceti:TauCeti.symPowerRep
- tauceti:SymmetricPower.finrank_eq
- mathlib:Module.finrank_tensorProduct
- NoncommutativeAndEquivariantIwasawa:NE.0/iwasawa-group-homology
- tauceti:TauCetiRoadmap/RepresentationTheory/LieHighestWeight#layer-0-sl₂-representation-theory-the-engine

Consumers:

- Fu §6, proof of Theorem 1.4: Self-duality converts Hom estimates to coinvariants.
- WM.3/realization-comparison: Matches the p-adic family with algebraic local systems on the arithmetic quotient.

Required API:

- **localAlgebraicFamily** (constructor): W_k with its G and continuous A actions, realized from the existing symmetric powers.
- **localAlgebraicFamily_lattice** (structure): W_k⁰ is finite free over ℤ_p, G-stable, and ℚ_p⊗W_k⁰≃W_k.
- **localAlgebraicFamily_finrank** (compatibility): dim W_k=D(k+1).
- **localAlgebraicFamily_dual** (equivalence): A G-equivariant W_k≃W_k* with the contragredient action; choices of scalar normalization do not affect dimensions.
- **localAlgebraicFamily_baseChange** (functoriality): A finite coefficient extension commutes with this family, its lattice after extension of integers, and the matrix action.

Discriminating tests:

- **family_trivial** (degenerate): At k=0 the family is the one-dimensional trivial representation.
- **family_two_factors** (computation): For k=(1,2), dimension is 2·3=6, not 2+3.
- **family_torus_restriction** (non-example): The standard representation restricted to the diagonal torus is reducible; irreducibility requires the specified open SL₂ subgroup.
- **family_sym2** (comparison): For m=1,k=2, recover the existing symmetric-square matrix action and dimension 3.

Checks:

- Distinct k give distinct irreducibles; restriction to an arbitrary subgroup is not covered.

Sources:

- fu24, §6, pp. 21–22. The local argument uses the actual algebraic W_k, its self-duality and irreducibility.

## WM.1 — Torsion multiplicities

For the bounded-denominator rational Iwasawa algebra A and every nonzero δ, prove dim Hom_A(A/Aδ,W_k)≤B_δ(k+1) for every k∈ℕ^m, through the explicit G1 microlocal/central-faithfulness and G2 completed-enveloping growth contracts. Include all low-coordinate strips. Compare Hom with rational completed degree-zero homology using the contragredient and then self-duality. Filter every finitely generated rank-zero module by cyclic factors dominated by principal quotients and add their proper-face bounds. The two unadopted analytic supplier contracts remain explicit gaps.

### Multiplicity and degree-zero homology

Target: ArithmeticLocallySymmetricSpacesPartII:WM.1/hom-coinvariant-dual. Kind: theorem.

For a finitely generated left A-module M with its canonical finite-module topology and a finite-dimensional continuous G-representation W admitting a stable lattice, evaluation induces a natural isomorphism Hom_A(M,W)≃Hom_{ℚ_p}(H₀(G,M⊗W*),ℚ_p). Here the tensor has the diagonal action, W* has the contragredient action, and H₀ is rational completed coinvariants, identified with Tor₀^A(ℚ_p,−) by the supplied rationalization contract. For W=W_k, the supplied self-duality replaces W_k* by W_k. All spaces in the dimension identity are finite dimensional and the A-linear maps are continuous.

Hypotheses: M finitely generated over A; W finite dimensional continuous with stable lattice.

Proof route:

1. Send f to the functional m⊗φ↦φ(f(m)); the G-invariance relation is exactly equivariance of f.
2. Use canonical finite-module topology and the supplied finite-dimensional continuous Hom comparison so the functional factors through the completed quotient.
3. Apply the imported lattice/completed-Tor rational comparison and then finite-dimensional duality. No duality between unrelated Banach categories is substituted for this evaluation map.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.0/local-algebraic-family
- NoncommutativeAndEquivariantIwasawa:NE.0/iwasawa-group-homology
- CompletedCohomologyPartII:CC.3/continuous-dual-conventions

Checks:

- For M=A, both dimensions are dim W.
- The dual representation is necessary before using self-duality.

Sources:

- fu24, §6, p. 21, identities preceding the proof of Theorem 1.4. Evaluation and contragredient tensoring give the Hom/coinvariant comparison.

### Cyclic Iwasawa multiplicity estimate

Target: ArithmeticLocallySymmetricSpacesPartII:WM.1/cyclic-torsion-bound. Kind: theorem.

For every nonzero δ∈A there are nonnegative proper-face coefficients c(δ) such that dim Hom_A(A/Aδ,W_k)≤B_c(k+1) for every k∈ℕ^m. Aδ is the left ideal generated by δ. The coefficients depend on δ, p and m, and are independent of k. The proof imports the precise microlocal algebraic-quotient comparison, integral central faithfulness and generic cyclic PBW estimate stated in supplier contracts G1 and G2; those contracts have no adopted supplier packet yet.

Hypotheses: δ≠0; G,A,W_k as in WM.0.

Proof route:

1. Under the G1 algebraic-quotient comparison, Hom into W_k is unchanged by microlocalization A→Û. The cyclic module becomes Û/Ûδ.
2. G1 central faithfulness makes every nonzero δ generic in the sense required by G2. Use Ardakov–Wadsley’s affinoid Verma route, not the unresolved large-radius central-quotient argument.
3. G2 supplies a uniform truncation multi-index α and the large-coordinate PBW estimate. Its all-weight repair is B(x)=2Σᵢαᵢ∏ⱼ≠ᵢxⱼ. For kᵢ<αᵢ, use dim Hom≤dim W_k≤αᵢ∏ⱼ≠ᵢ(kⱼ+1). These are infinite strips and remain in the bound.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.0/proper-face-majorant
- ArithmeticLocallySymmetricSpacesPartII:WM.0/local-algebraic-family

Checks:

- The bound includes kᵢ=0 and m=1, where it is constant.
- δ=1 gives the zero module; δ=0 is excluded, since Hom_A(A,W_k) has dimension D(k+1).

Sources:

- fu24, §6, pp. 21–22; Theorem 4.3, p. 15; Theorem 3.2, pp. 8–11. Fu transfers the cyclic quotient to the completed enveloping algebra and bounds its W_k multiplicity.
- aw14, §4.6, p. 11 and §5.4, p. 16 (author PDF). Affinoid Verma annihilators and faithfulness provide the central-faithfulness route.

### Cyclic control of a finite torsion module

Target: ArithmeticLocallySymmetricSpacesPartII:WM.1/torsion-filtration. Kind: theorem.

Let A be the supplied two-sided noetherian Ore domain and T a finitely generated left A-module of skew rank zero. There is a finite filtration 0=T₀⊂⋯⊂T_r=T with cyclic factors Q_j and nonzero δ_j∈A such that A/Aδ_j surjects onto Q_j. The quotients need not be isomorphic to principal quotients. For every finite-dimensional W, dim Hom_A(T,W)≤Σ_j dim Hom_A(A/Aδ_j,W).

Hypotheses: A two-sided noetherian Ore domain; rank_A T=0.

Proof route:

1. Choose finitely many generators of T and filter by their successive spans.
2. Rank zero localizes every cyclic factor to zero. Clearing an Ore denominator gives a nonzero annihilator of its chosen cyclic generator, hence the indicated surjection.
3. Apply left exactness of Hom(−,W) to each short exact filtration sequence, and use the injection induced by the principal-quotient surjection.

Direct prerequisites:

- NoncommutativeAndEquivariantIwasawa:NE.0
- NoncommutativeAndEquivariantIwasawa:NE.1/ore-localization-flat

Checks:

- Over ℚ_p[X,Y], A/(X,Y) is controlled by A/(X) but is not equal to it.
- The filtration is finite because T is finitely generated, not because its underlying vector space is finite.

Sources:

- fu24, §6, pp. 21–22, torsion case. The argument bounds a finitely generated torsion module by finitely many cyclic quotients.

### The torsion-module weight bound

Target: ArithmeticLocallySymmetricSpacesPartII:WM.1/torsion-bound. Kind: theorem.

For every finitely generated rank-zero A-module T, there are nonnegative proper-face coefficients c_T such that dim H₀(G,T⊗W_k)=dim Hom_A(T,W_k)≤B_{c_T}(k+1) for all k. The same conclusion holds for a finite collection of torsion modules with one common coefficient vector.

Proof route:

1. Use torsion-filtration to reduce to its principal cyclic upper bounds.
2. Use cyclic-torsion-bound for each δ_j and add the finitely many proper-face coefficient vectors.
3. Use hom-coinvariant-dual and self-duality of W_k.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.1/torsion-filtration
- ArithmeticLocallySymmetricSpacesPartII:WM.1/cyclic-torsion-bound
- ArithmeticLocallySymmetricSpacesPartII:WM.1/hom-coinvariant-dual
- ArithmeticLocallySymmetricSpacesPartII:WM.0/proper-face-majorant

Checks:

- Zero module admits zero coefficients.
- When m=1 all degree-zero torsion multiplicities are uniformly bounded.

Sources:

- fu24, §6, pp. 21–22, torsion case of Theorem 1.4. The cyclic estimates are additive along a finite torsion filtration.

## WM.2 — Ranks and all homological degrees

For finitely generated left A-module M of skew rank a, choose a rank-a free injection with torsion cokernel and a finite free presentation with kernel of rank ℓ−a. Untwist diagonal free coefficients and prove regular acyclicity. Establish separate degree-zero upper and lower estimates, then the absolute rank error. Cancel rank main terms in the degree-one exact dimension identity; shift higher degrees through syzygies. Obtain one nonnegative multiaffine error of degree ≤m−1 for all k and all homological degrees, with vanishing above 3m. Give the constant bound and finite algebraic-quotient support when canonical dimension is zero.

### Free approximations with their ranks

Target: ArithmeticLocallySymmetricSpacesPartII:WM.2/free-approximation. Kind: construction.

For a finitely generated left module M of skew rank a over the supplied two-sided noetherian Ore domain A, choose (i) 0→A^a→M→T→0 with T finitely generated of rank zero, and (ii) 0→N→A^ℓ→M→0 with N finitely generated of rank ℓ−a. These are choices of actual maps and exact sequences. They are not claimed canonical or functorial in M. Noncommutative localization is on the left for M; denominator clearing uses the compatible right/left Ore calculus.

Proof route:

1. Choose a basis of Q(A)⊗_A M, lift its vectors after clearing denominators, and check independence after localization. A nonzero kernel in the finite free domain module would remain detectable in the localization.
2. Choose a finite generating set of M to obtain the second sequence; noetherianity makes N finitely generated.
3. Exact localization gives rank T=0 and rank N=ℓ−a. The rank may be smaller than the chosen number of generators.

Direct prerequisites:

- NoncommutativeAndEquivariantIwasawa:NE.0
- NoncommutativeAndEquivariantIwasawa:NE.1/ore-localization-flat

Consumers:

- WM.2/rank-upper: The free submodule and torsion quotient give the upper bound.
- WM.2/rank-lower: The finite presentation gives the lower bound.
- WM.2/homological-shifting: The same kernel is used in the long exact homology sequence.

Required API:

- **freeApproximation** (constructor): Choose an injection A^a→M and a rank-zero cokernel T.
- **finitePresentation** (constructor): Choose a surjection A^ℓ→M and its finitely generated kernel N.
- **freeApproximation_rank** (relation): The first free rank equals rank_A M; rank_A N=ℓ−a.
- **freeApproximation_exact** (characterisation): Export kernels, images and quotient identifications for both chosen sequences.

Discriminating tests:

- **approximation_free** (comparison): For M=A^a, identity maps give T=N=0 and ℓ=a.
- **approximation_torsion** (degenerate): For M=A/Aδ with δ nonzero nonunit, a=0 but one generator suffices; ℓ need not equal a.
- **approximation_nongenerator_rank** (non-example): The ideal (X,Y) over ℚ_p[X,Y] has rank one and needs two generators; an assertion that ℓ=a for every module is false.

Checks:

- The choices are exported with their exactness and rank equalities, not merely as two unspecified modules.

Sources:

- fu24, §6, pp. 22–23, equations (33)–(34). The two exact sequences support different sides of the rank estimate.

### Regular coefficients after diagonal twisting

Target: ArithmeticLocallySymmetricSpacesPartII:WM.2/regular-acyclicity. Kind: theorem.

For every finite-dimensional continuous W with a stable lattice, A^ℓ⊗_{ℚ_p}W with diagonal G-action is A-linearly isomorphic to A^{ℓ·dim W} with regular action. Thus H₀(G,A^ℓ⊗W)≃W^ℓ as vector spaces and H_i(G,A^ℓ⊗W)=0 for i>0. The action is untwisted by the inverse g^{-1} on W; no invariants functor exactness is asserted.

Proof route:

1. On group generators send g⊗w to g⊗g^{-1}w and give the inverse g⊗w↦g⊗gw.
2. Use the stable lattice and canonical completed topology to extend these mutually inverse maps to Λ and rationalize.
3. The untwisted module is finite free over A; the augmentation tensor gives W^ℓ and its positive Tor groups vanish.

Direct prerequisites:

- NoncommutativeAndEquivariantIwasawa:NE.0/iwasawa-group-homology
- ArithmeticLocallySymmetricSpacesPartII:WM.0/local-algebraic-family

Checks:

- For ℓ=1 and k=(1,2), H₀ has dimension 6, all higher homology zero.
- The untwisting inverse uses g^{-1}, not g, on the target.

Sources:

- fu24, §6, p. 23, dimension shifting. The proof requires acyclicity of the regular module with the diagonal algebraic twist.

### Upper rank estimate

Target: ArithmeticLocallySymmetricSpacesPartII:WM.2/rank-upper. Kind: theorem.

For M of skew rank a there is a nonnegative proper-face polynomial U_M with dim H₀(G,M⊗W_k)≤aD(k+1)+U_M(k+1) for all k. It may be chosen as the torsion-bound polynomial of the cokernel T of a free approximation. Applying H₀ to A^a→M need not be injective.

Proof route:

1. Apply the right-exact coinvariant functor to 0→A^a⊗W_k→M⊗W_k→T⊗W_k→0.
2. The image of H₀(A^a⊗W_k) has dimension at most aD; bound the quotient by H₀(T⊗W_k).
3. Use regular-acyclicity and torsion-bound; no control of H₁(T⊗W_k) is needed.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.2/free-approximation
- ArithmeticLocallySymmetricSpacesPartII:WM.2/regular-acyclicity
- ArithmeticLocallySymmetricSpacesPartII:WM.1/torsion-bound

Checks:

- For a free M the upper error is zero.
- The argument uses right exactness alone.

Sources:

- fu24, §6, p. 22, equation (33) and its following inequality. The torsion cokernel controls the upper error.

### Lower rank estimate

Target: ArithmeticLocallySymmetricSpacesPartII:WM.2/rank-lower. Kind: theorem.

For M of skew rank a and a chosen finite presentation with kernel N of rank ℓ−a, dim H₀(G,M⊗W_k)≥aD(k+1)−U_N(k+1), where U_N is the already proved upper-error polynomial for N. No higher-homology estimate is used in this step.

Proof route:

1. Right exactness of H₀(N⊗W_k)→H₀(A^ℓ⊗W_k)→H₀(M⊗W_k)→0 gives dim H₀(M⊗W_k)≥ℓD−dim H₀(N⊗W_k).
2. Use rank-upper for N and rank N=ℓ−a, then cancel the main terms.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.2/free-approximation
- ArithmeticLocallySymmetricSpacesPartII:WM.2/regular-acyclicity
- ArithmeticLocallySymmetricSpacesPartII:WM.2/rank-upper

Checks:

- For a=0 the estimate is a valid lower bound, not a claim of nonzero homology.
- The leading coefficient is a, not ℓ.

Sources:

- fu24, §6, p. 23, equation (34) and following inequalities. The presentation kernel supplies the lower error, independently of dimension shifting.

### Two-sided degree-zero rank error

Target: ArithmeticLocallySymmetricSpacesPartII:WM.2/rank-main-term. Kind: theorem.

For every finitely generated A-module M of rank a, there is a nonnegative proper-face polynomial E_M such that |dim H₀(G,M⊗W_k)−aD(k+1)|≤E_M(k+1) for every k∈ℕ^m. One choice is U_M+U_N from a fixed presentation kernel N.

Proof route:

1. Combine rank-upper and rank-lower.
2. The sum of the two nonnegative errors dominates each one, retaining proper-face degree at most m−1.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.2/rank-upper
- ArithmeticLocallySymmetricSpacesPartII:WM.2/rank-lower
- ArithmeticLocallySymmetricSpacesPartII:WM.0/proper-face-majorant

Checks:

- For M=A^a the difference is identically zero.
- For m=1 the deviation is uniformly bounded.

Sources:

- fu24, Theorem 1.4, p. 3; §6, pp. 22–23. These two inequalities establish the main-term part of the local theorem.

### Syzygy bounds in positive degrees

Target: ArithmeticLocallySymmetricSpacesPartII:WM.2/homological-shifting. Kind: theorem.

For 0→N→A^ℓ→M→0 and x=k+1, dim H₁(G,M⊗W_k)≤U_N(x)+U_M(x), while H_i(G,M⊗W_k)≃H_{i−1}(G,N⊗W_k) for every i≥2. In the first bound U_N and U_M are upper-error polynomials, and rank N=ℓ−rank M. The bound follows from the exact dimension identity dim H₁(M⊗W_k)=dim H₀(N⊗W_k)−ℓD(x)+dim H₀(M⊗W_k).

Proof route:

1. Use the long exact Tor sequence and regular-acyclicity.
2. For i=1 use its four-term exact portion to get the displayed identity. Apply rank-upper to N and M; their main terms cancel.
3. For i≥2 the adjacent regular-module homology groups vanish, giving the shift isomorphism.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.2/free-approximation
- ArithmeticLocallySymmetricSpacesPartII:WM.2/regular-acyclicity
- ArithmeticLocallySymmetricSpacesPartII:WM.2/rank-upper

Checks:

- The degree-one term is a difference of three dimensions; simply bounding H₁ by H₀(N) would leave a degree-m main term.
- The shift at i=1 is not an isomorphism with all of H₀(N).

Sources:

- fu24, §6, p. 23, last paragraph of the proof of Theorem 1.4. The source reduces higher homology to finitely many syzygy degree-zero estimates.

### Fu’s local homology theorem

Target: ArithmeticLocallySymmetricSpacesPartII:WM.2/common-homology-bound. Kind: theorem.

Let p be odd, m≥1, G the product of m first-congruence SL₂ groups, A=ℚ_p⊗ℤ_p[[G]], and M a finitely generated left A-module of skew rank a. There is a single nonnegative proper-face polynomial B_M of total degree ≤m−1 such that for every k∈ℕ^m, |dim H₀(G,M⊗W_k)−aD(k+1)|≤B_M(k+1), and dim H_i(G,M⊗W_k)≤B_M(k+1) for every i≥1. All dimensions are finite; homology is zero for i>3m. The polynomial may depend on M, p and m, but not on i or k.

Proof route:

1. Choose finite free presentations recursively for the first 3m syzygies, which remain finitely generated by noetherianity.
2. Use homological-shifting and the rank-error estimates on this finite list; add their nonnegative proper-face polynomials together with the degree-zero error.
3. Use the supplied rational Iwasawa global dimension 3m to eliminate every i>3m. This gives one common polynomial for all positive degrees without requiring an infinite sum.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.2/rank-main-term
- ArithmeticLocallySymmetricSpacesPartII:WM.2/homological-shifting
- NoncommutativeAndEquivariantIwasawa:NE.0/rational-iwasawa-global-dimension
- ArithmeticLocallySymmetricSpacesPartII:WM.0/proper-face-majorant

Checks:

- m=1 gives constant errors in all degrees.
- A finite direct sum permits the sum of the individual error polynomials.
- For M=A^a higher homology is zero and the main term is exact.

Sources:

- fu24, Theorem 1.4, p. 3; §6, pp. 21–23. This is the exact local endpoint, with the quantifiers and the common polynomial made explicit.

### Finite-dimensional multiplicity support

Target: ArithmeticLocallySymmetricSpacesPartII:WM.2/canonical-dimension-zero. Kind: theorem.

For a nonzero finitely generated A-module M of canonical dimension zero, the supplied canonical-dimension criterion makes M finite dimensional over ℚ_p. Only finitely many W_k can be simple quotients of M, and dim Hom_A(M,W_k)≤length_A M≤dim_{ℚ_p}M for all k. Thus its degree-zero weight multiplicities admit a constant bound, stronger than degree m−1. This assertion does not classify all finite-dimensional A-modules as algebraic, nor assert that they are all semisimple.

Proof route:

1. Request the canonical-dimension-zero iff finite-dimensional theorem from NE.0, with AW13 §10.13 as source.
2. Use a finite composition series of the finite-dimensional A-module. The W_k are pairwise nonisomorphic absolutely simple modules, so a nonzero Hom forces W_k to occur as a composition factor.
3. Left exactness of Hom and End_A(W_k)=ℚ_p bound its dimension by the composition length.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.0/local-algebraic-family
- NoncommutativeAndEquivariantIwasawa:NE.0

Checks:

- A nontrivial finite smooth twist is not silently identified with an algebraic representation.
- The zero module has zero multiplicities and is handled separately from the canonical dimension of a nonzero module.

Sources:

- fu24, §1, p. 4, discussion following Theorem 1.4. The source identifies the sharper dimension-zero case.
- aw13, §10.12–10.13, pp. 77–78 (author preprint), Lemma in §10.13. For the admitted uniform semisimple congruence group, canonical dimension zero is equivalent to finite coefficient-field dimension.

## WM.3 — Arithmetic realization and descent

For a number field of degree d and an arbitrary fixed compact open, choose an odd prime completely split in a normal closure outside the nonmaximal primes, and refine to a neat level with exactly d first-congruence p-adic factors. Match even place weights κ_v≥2 with local weights κ_v−2 at real places and two copies of κ_v/2−1 at complex places. Construct the finite-number-field realization and its complex/p-adic coefficient comparison. When r₂>0, supplied completed ordinary homology is finitely generated of rank zero; its finite descent filtration gives one proper-face bound for every ordinary Betti dimension.

### Archimedean weights and split-prime indices

Target: ArithmeticLocallySymmetricSpacesPartII:WM.3/global-local-weights. Kind: definition.

For a number field F of signature (r₁,r₂), d=r₁+2r₂, use an archimedean tuple κ_v of even integers ≥2. Set Δ(κ)=∏_{v real}κ_v·∏_{v complex}κ_v². The complex coefficient system is V_κ=⊠_{real v}Sym^{κ_v−2}(ℂ²) ⊠_{complex v}(Sym^{κ_v/2−1}(ℂ²)⊗conjugate Sym^{κ_v/2−1}(ℂ²)). After choosing a completely split prime, index the p-adic tensor by all d embeddings: t_σ=κ_v−2 at a real place and t_σ=κ_v/2−1 at each of the two embeddings of a complex place. Put x_σ=t_σ+1. Then D(x)=∏_{real v}(κ_v−1)∏_{complex v}(κ_v/2)², D(x)≤Δ(κ), and min_σ x_σ≥(min_vκ_v)/2. The tuple κ=(2,…,2) is exactly the trivial coefficient system.

Proof route:

1. Use the coefficient conventions of Fu and Marshall, keeping the place tuple separate from the embedding tuple.
2. Use evenness to make κ_v/2 integral; doubling each complex factor gives d p-adic factors.
3. Compute the dimension by the imported symmetric-power and tensor finrank formulas; compare each factor with κ_v and κ_v/2.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.0/weight-product
- ArithmeticLocallySymmetricSpacesPartII:WM.0/local-algebraic-family
- ArithmeticLocallySymmetricSpaces:ALS.1/arithmetic-local-system

Consumers:

- WM.3/realization-comparison: Defines the common algebraic coefficient system over a finite number field.
- WM.4/sharp-global-bound: Converts the local minimum and product into Δ/min κ.

Required API:

- **weightSize** (data): Evaluate Δ on the archimedean tuple with complex factors squared.
- **splitLocalWeight** (constructor): Construct the d-entry nonnegative integral t, with a chosen indexing by embeddings.
- **splitLocalWeight_reindex** (functoriality): Changing the embedding ordering permutes t and preserves D and every minimum.
- **coefficientDimension** (compatibility): dim V_κ=D(t+1), using the actual supplied algebraic representation.
- **weightSize_comparison** (relation): D(t+1)≤Δ(κ) and every t_σ+1≥min_vκ_v/2.
- **weightSize_parallel** (simp): If all κ_v=κ, Δ(κ)=κ^d.

Discriminating tests:

- **weights_bianchi_six** (computation): For (r₁,r₂)=(0,1), κ=6 gives t=(2,2), dim V=9, Δ=36, and min x=3.
- **weights_mixed** (computation): For signature (1,1) and κ=(4,6), t=(2,2,2), dim V=27 and Δ=144.
- **weights_trivial** (degenerate): At κ=(2,…,2), t=0 and dim V=1, even though Δ=2^d.
- **weights_reject_odd** (non-example): A complex κ_v=3 is inadmissible: integer division must not manufacture an algebraic weight from this input.

Checks:

- The number of local variables is d, not r₁+r₂.

Sources:

- fu24, §1, pp. 1–2; §7, pp. 23–24. The source changes from places to embeddings for the local argument; this definition keeps both indices explicit.
- marshall12, §2.1, pp. 3–4 (arXiv:1103.2472v1). The algebraic representation uses κ−2 at real places and κ/2−1 in the conjugate pair at complex places.

### One auxiliary prime for a fixed level

Target: ArithmeticLocallySymmetricSpacesPartII:WM.3/split-auxiliary-prime. Kind: theorem.

For a fixed compact open K_f⊂SL₂(𝔸_F^∞), choose an odd rational prime p splitting completely in a normal closure of F and outside all primes where a product compact open subgroup contained in K_f is nonmaximal. There is a neat product level K′_f=G K^p⊂K_f, with G exactly the product of d first-congruence SL₂(ℤ_p) groups. Pullback gives S_κ(K_f)↪S_κ(K′_f) for every weight. At neat levels the cohomology pullback has the normalized trace as a left inverse; finite stabilizers at other levels are handled by characteristic-zero invariants. Every index and resulting dimension constant is fixed independently of κ.

Proof route:

1. Use the identity Frobenius class in the normal closure and avoid the finite exceptional prime set. Chebotarev supplies infinitely many such primes.
2. A compact open contains a product open with maximal factors outside finitely many primes. Replace its p factor by G and shrink its away-p part to an admitted neat level, using the parent’s standard levels.
3. Right-invariant automorphic functions at K_f are right-invariant at K′_f. For topological comparison use the parent pullback and trace; the finite degree is invertible over characteristic zero.

Direct prerequisites:

- tauceti:TauCetiRoadmap/Chebotarev#layer-10-dirichlet-density-chebotarev
- ArithmeticLocallySymmetricSpaces:ALS.0/standard-level-subgroups
- ArithmeticLocallySymmetricSpaces:ALS.0/neat-level-manifold
- ArithmeticLocallySymmetricSpaces:ALS.1/level-pullback
- ArithmeticLocallySymmetricSpaces:ALS.3/level-trace
- NoncommutativeAndEquivariantIwasawa:NE.0

Checks:

- The auxiliary prime and refinement are fixed before varying κ.
- The argument gives an upper bound at arbitrary K_f; it does not transport a lower bound from a smaller to a larger level.

Sources:

- fu24, §7, pp. 23–24, before (38); Theorem 1.2, pp. 2–3. The descent proof is at the product level. This explicit refinement supplies the fixed-level reduction missing from that passage.

### Finite-field realizations of algebraic coefficients

Target: ArithmeticLocallySymmetricSpacesPartII:WM.3/realization-comparison. Kind: construction.

Choose a finite number field E containing the embeddings needed for V_κ and embeddings E→ℂ and E→ℚ_p at the auxiliary split prime. Construct the algebraic local system V_{κ,E} on the actual quotient at a neat level from the parent’s coefficient functor. Its complex scalar extension is V_κ and its p-adic extension is W_t with t from global-local-weights. Finite chain models and flat coefficient change identify the corresponding homology and cohomology after these scalar extensions; their dimensions over ℂ and ℚ_p agree degree by degree. For any finite p-adic coefficient extension L/ℚ_p, the analogous dimensions over L agree with those over ℚ_p; as ℚ_p dimensions they are multiplied by [L:ℚ_p].

Proof route:

1. Use the restriction-of-scalars algebraic representation over E, with one factor for each embedding. The split-prime indexing identifies its matrices over ℚ_p with W_t.
2. Apply the finite-complex and coefficient-change theorems of ALS.1 to the same E-linear cellular differentials; flat scalar extension commutes with homology.
3. For cohomology/homology dimension comparisons retain the dual local system until the supplied self-duality is used. No topological or field isomorphism ℂ≃ℚ_p is invoked.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.3/global-local-weights
- ArithmeticLocallySymmetricSpacesPartII:WM.3/split-auxiliary-prime
- ArithmeticLocallySymmetricSpaces:ALS.1/finite-complex-model
- ArithmeticLocallySymmetricSpaces:ALS.1/coefficient-change
- ArithmeticLocallySymmetricSpaces:ALS.1/arithmetic-local-system
- mathlib:Module.finrank_baseChange

Consumers:

- WM.3/spectral-dimension-bound: Transfers the completed-homology estimate to complex Betti dimensions.
- WM.5/bianchi-boundary: Uses the same complex coefficient normalization on cusp tori.

Required API:

- **coefficientRealization** (constructor): The E-linear algebraic local system, its finite complex, and its two identified scalar extensions.
- **coefficientRealization_baseChange** (functoriality): A finite extension E′/E and compatible embeddings give the scalar extension of the same complex.
- **coefficientRealization_dimensions** (compatibility): Each cohomology or homology degree has equal dimension over its own realization field.
- **coefficientRealization_level** (compatibility): The comparisons commute with the supplied pullback and trace on level changes.

Discriminating tests:

- **realization_trivial** (degenerate): At κ=2 this is the constant E-local system, not a zero coefficient space.
- **realization_finite_extension** (comparison): A one-dimensional ℚ_p cohomology group stays one-dimensional over L and has ℚ_p-dimension [L:ℚ_p].
- **realization_bianchi** (computation): At Bianchi κ=6 the chain coefficient in both realizations has dimension 9.
- **realization_torsion_warning** (non-example): For the integral complex O --p→ O, mod-p base change has an extra homology group; flat field comparison must not be generalized to arbitrary reduction.

Checks:

- The comparison is an equality of dimensions of scalar extensions of one finite complex.

Sources:

- fu24, §7, p. 23, equation (37). The arithmetic coefficient systems have equal dimensions after complex and p-adic realizations.
- marshall12, §2.1, pp. 3–4 (arXiv:1103.2472v1). Both realizations are attached to the same algebraic representation.

### Weight bounds through completed-homology descent

Target: ArithmeticLocallySymmetricSpacesPartII:WM.3/spectral-dimension-bound. Kind: theorem.

For F with r₂>0 and the fixed split auxiliary level, let M_j=ℚ_p⊗H̃_j be the supplied completed ordinary homology modules. They are finitely generated A-modules of rank zero. The supplied homological descent sequence E²_{i,j}=H_i(G,M_j⊗W_t)⇒H_{i+j}(Y(K′_f),W_t) yields one proper-face polynomial Q_{F,K′} in d variables such that dim H_n(Y(K′_f),W_t)≤Q_{F,K′}(t+1) for every n and every admissible κ. The same bound applies to complex ordinary cohomology with the appropriate dual coefficient; self-duality removes the dual in this case. The polynomial is independent of n and κ.

Proof route:

1. The real group SL₂(ℝ)^{r₁}×SL₂(ℂ)^{r₂} has no discrete series when r₂>0. Apply CC.5/semisimple-homology-torsion, not a conjectural middle-degree concentration theorem.
2. Use CC.5 finite generation and CC.6 rational homological descent with its completed-Tor convention. The lifted finite complex bounds the possible j; local homology vanishes above 3d.
3. For each of the finitely many M_j apply common-homology-bound with rank zero. For a fixed total degree, E∞ terms are subquotients of E² terms and the abutment has a finite filtration. Sum their dimensions, then sum a finite envelope over j and 0≤i≤3d to obtain one Q.
4. Use realization-comparison and dual coefficient homology/cohomology over a field. Do not claim degeneration of the spectral sequence.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.2/common-homology-bound
- ArithmeticLocallySymmetricSpacesPartII:WM.3/realization-comparison
- CompletedCohomologyPartII:CC.5/finite-generation-over-the-iwasawa-algebra-and-the-canonical-topology
- CompletedCohomologyPartII:CC.5/semisimple-homology-torsion
- CompletedCohomologyPartII:CC.6/homological-hyperTor-descent
- CompletedCohomologyPartII:CC.4/completed-equivariant-cell-complex
- ArithmeticLocallySymmetricSpacesPartII:WM.0/proper-face-majorant

Checks:

- Every E² term in a total-degree diagonal contributes to an upper bound.
- No isomorphism between the abutment and a direct sum of E² terms is asserted.
- The totally real case is excluded precisely at the torsion input.

Sources:

- fu24, §7, pp. 23–24, equations (38)–(39). Fu inserts the torsion local estimates into the homological descent sequence and bounds finite-level dimensions.

## WM.4 — Cuspidal dimensions in weight aspect

For SL₂/F in the stated weight convention, establish the nontrivial-coefficient identity dim H_cusp^(r₁+r₂)=2^r₁ dim S_κ and retain its injection into ordinary and interior cohomology. With r₂>0 and fixed arbitrary compact open K_f prove dim S_κ(K_f)≤C Δ(κ)/min_vκ_v uniformly for all even κ_v≥2, where Δ has one real and two complex factors. Absorb the single trivial-coefficient tuple separately. At fixed neat level prove the ordinary bound in every degree. Deduce parallel growth O(κ^(d−1)) and the Bianchi upper bound O(κ), equivalently O(n+1) for E_n with κ=2(n+1).

### SL₂ cuspidal dimensions and support conventions

Target: ArithmeticLocallySymmetricSpacesPartII:WM.4/cuspidal-support-dictionary. Kind: theorem.

Put q=r₁+r₂. For the SL₂/F quotient and V_κ in Fu’s weight convention, when dim V_κ>1, the Eichler–Shimura–Harder comparison identifies the cuspidal degree-q contribution with the holomorphic/antiholomorphic real-place cohomological pieces and the complex-place cohomological pieces, giving dim H_cusp^q(Y(K_f),V_κ)=2^{r₁}dim S_κ(K_f). Use the parent’s injective H_cusp^q→H^q, with image in H_!^q=im(H_c^q→H^q). The symbol H_c^q here always means compact support; Marshall’s subscript c denotes the interior subspace. The finite-dimensional trivial-coefficient case κ=(2,…,2) is treated separately, so the stated nontrivial-coefficient identity is never used there. This Part II owns this specialized dimension comparison until an exact SL₂ supplier is adopted.

Proof route:

1. Import the parent’s cuspidal decomposition and its injection into ordinary cohomology.
2. For each contributing archimedean type, use AF.1a relative Lie cochains and AF.4 cohomological range computations. At each real place the holomorphic and antiholomorphic pieces give the factor two in the stated cusp-form convention; each complex place gives its degree-one factor. Take the relative-Lie Künneth product in degree q, and match the fixed finite-level invariants.
3. The support interpretation is fixed by Marshall §2.1 (4), which defines the subspace by vanishing near the cusps. Keep compact support separate via the parent support triangle.
4. For trivial V_κ use finite dimensionality at the one fixed tuple, absorbing that value into the global upper constant.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.3/global-local-weights
- ArithmeticLocallySymmetricSpaces:ALS.5/cuspidal-cohomology
- ArithmeticLocallySymmetricSpaces:ALS.5/automorphic-comparison
- AutomorphicFormsOnReductiveGroups:AF.1a/relative-lie-cochain-complex
- AutomorphicFormsOnReductiveGroups:AF.4/borel-wallach-tempered-range

Checks:

- At signature (0,1), the cusp-form and degree-one cuspidal dimensions agree.
- At one real place, the comparison counts holomorphic and antiholomorphic contributions.
- The parent’s genus-zero four-cusp modular-curve example rules out identifying ordinary cohomology with cuspidal cohomology.

Sources:

- fu24, §1, equation (2), p. 2; Theorem 1.2, pp. 2–3. The dimension identity is used for the global estimate; its compact-support wording must be corrected to the cuspidal/interior convention.
- marshall12, §2.1, equation (4), pp. 3–4 (arXiv:1103.2472v1); published p. 1632. The nontrivial coefficient hypothesis and interior-support convention are explicit in the cited comparison.

### The fixed-level sharp global bound

Target: ArithmeticLocallySymmetricSpacesPartII:WM.4/sharp-global-bound. Kind: theorem.

For a fixed number field F with r₂>0 and every fixed compact open K_f⊂SL₂(𝔸_F^∞), there is C_{F,K_f}>0 such that dim_ℂ S_κ(K_f)≤C_{F,K_f} Δ(κ)/(min_vκ_v) for every tuple of even archimedean weights κ_v≥2. The minimum runs over the r₁+r₂ places. The constant is uniform over the whole weight orthant. At any fixed neat level, the same size bound holds for ordinary Betti dimensions in every degree, and for cuspidal/interior dimensions by inclusion. No leading constant or asymptotic equality is asserted.

Proof route:

1. At the auxiliary level use spectral-dimension-bound and cuspidal-support-dictionary for nontrivial coefficients.
2. Set x=t+1. By global-local-weights, D(x)≤Δ and min x≥min κ/2. Apply minimum-weight-saving to Q to obtain Q(x)≤2(Σc_s)Δ/min κ.
3. Use pullback to pass the cusp-form bound from K′_f to K_f. At neat levels, the normalized trace gives cohomology injectivity for the ordinary bound.
4. Increase the fixed constant to include κ=(2,…,2) using finite dimensionality; this is one tuple, not an infinite exceptional family.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.3/spectral-dimension-bound
- ArithmeticLocallySymmetricSpacesPartII:WM.4/cuspidal-support-dictionary
- ArithmeticLocallySymmetricSpacesPartII:WM.3/split-auxiliary-prime
- ArithmeticLocallySymmetricSpacesPartII:WM.3/global-local-weights
- ArithmeticLocallySymmetricSpacesPartII:WM.0/minimum-weight-saving

Checks:

- If only one weight grows and another remains minimal, the theorem still has one uniform constant but need not improve that particular growth exponent.
- No r₂=0 instance is produced by this proof.

Sources:

- fu24, Theorem 1.2, pp. 2–3; §7, pp. 23–24. The source’s degree-one saving follows from torsion completed homology and the local degree drop; the arbitrary-level passage is supplied explicitly here.

### Parallel weights and the degree drop

Target: ArithmeticLocallySymmetricSpacesPartII:WM.4/parallel-bound. Kind: theorem.

Under sharp-global-bound, if κ_v=κ at every archimedean place, κ even and ≥2, then dim S_κ(K_f)≤C_{F,K_f} κ^{d−1}, d=[F:ℚ]. The exponent is d−1, with no ε loss. This follows from Δ(κ)=κ^d and min_vκ_v=κ, not from a separate limit theorem.

Proof route:

1. Apply the exact parallel-size identity and the global inequality.
2. Keep the same level-dependent constant.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.4/sharp-global-bound
- ArithmeticLocallySymmetricSpacesPartII:WM.3/global-local-weights

Checks:

- For signature (1,1), the exponent is 2, not 1.
- No claim that κ^{1−d}dim S_κ converges is made.

Sources:

- fu24, Theorem 1.2, p. 3, parallel-weight assertion. The degree-one saving specializes to exponent [F:ℚ]−1.

### The Bianchi linear upper bound

Target: ArithmeticLocallySymmetricSpacesPartII:WM.4/bianchi-upper. Kind: theorem.

For imaginary quadratic F and every fixed compact open K_f, dim S_κ(K_f)=O_{F,K_f}(κ) for even κ≥2. At a fixed neat congruence level Γ, dim H^i(Γ,E_n)=O_{F,Γ}(n+1) for i=1,2, where E_n=Sym^n(ℂ²)⊗conjugate Sym^n(ℂ²), n=κ/2−1. Cuspidal and interior dimensions satisfy the same bound by inclusion.

Proof route:

1. Use d=2 in parallel-bound for cusp forms.
2. Use the ordinary cohomology part of sharp-global-bound at the corresponding fixed level; convert κ=2(n+1).

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.4/parallel-bound
- ArithmeticLocallySymmetricSpacesPartII:WM.4/sharp-global-bound
- ArithmeticLocallySymmetricSpacesPartII:WM.3/global-local-weights

Checks:

- κ=6 corresponds to E₂, of dimension 9.
- This is an upper bound at arbitrary level; a lower bound requires the separate base-change level hypothesis.

Sources:

- fu24, Theorem 1.2 and Corollary 1.3, p. 3; §7, p. 24. This is the imaginary-quadratic specialization of the global upper estimate.

## WM.5 — Bianchi boundary and sharpness

For a neat Bianchi quotient compute each cusp-torus E_n cohomology as dimensions 1,2,1 for all n≥0, and compare ordinary, interior and compact-support dimensions by the resulting uniform boundary constants. Prove the fixed-type classical estimate (k−1)dim σ/12+O(1) with the matching central parity, then the FGT base-change count (A_F+B_F(−1)^(n+1))(n+1)+O(1), with A_F>B_F≥0. Import exact quadratic transfer and ramified local-type inputs. For each fixed neat congruence subgroup of finite index in SL₂(O_F), deduce positive linear lower and upper bounds in degrees one and two for cuspidal, interior, ordinary and compact-support cohomology. No lower assertion at arbitrary adelic level is included.

### Cohomology of a Bianchi cusp torus

Target: ArithmeticLocallySymmetricSpacesPartII:WM.5/cusp-torus-koszul. Kind: theorem.

Let Γ be a neat Bianchi congruence subgroup and T one torus component of its Borel–Serre boundary. With E_n, n≥0, as above, dim H^j(T,E_n) is 1,2,1 for j=0,1,2 and is zero otherwise. These dimensions use complex coefficients and unipotent cusp monodromy, rather than a trivial rank-(n+1)² local system. For c cusp components the boundary dimensions are c,2c,c. Finite non-neat cusp stabilizers require taking characteristic-zero invariants and are not asserted to preserve these equalities.

Proof route:

1. Import the actual boundary stratum and its arithmetic unipotent group from ALS.2/ALS.4. At a neat Bianchi cusp this group is a lattice in ℂ≃ℝ².
2. Two lattice generators z₁,z₂ give commuting nilpotent logarithms zᵢ e⊗1+conjugate(zᵢ)1⊗e on E_n. Real linear independence makes the 2×2 coefficient matrix invertible over ℂ.
3. The Koszul complex of exp(Nᵢ)−1 is isomorphic to that of Nᵢ, since (exp(Nᵢ)−1)/Nᵢ is an invertible polynomial in Nᵢ. Change generators to e⊗1 and 1⊗e.
4. For Sym^n, the raising operator has kernel and cokernel dimension one, including n=0. The tensor of the two one-operator complexes has cohomology dimensions 1,2,1 by the field Künneth formula. Sum over the c tori.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.3/global-local-weights
- ArithmeticLocallySymmetricSpaces:ALS.2/boundary-stratification
- ArithmeticLocallySymmetricSpaces:ALS.2/stratum-nilmanifold-fibration
- ArithmeticLocallySymmetricSpaces:ALS.4/levi-hochschild-serre
- tauceti:TauCetiRoadmap/RepresentationTheory/LieHighestWeight#layer-0-sl₂-representation-theory-the-engine

Checks:

- For n=0 the two operators vanish on a one-dimensional space, giving 1,2,1.
- For n=2, H¹(T,E₂) has dimension 2, not 18.
- At a non-neat cusp with a nontrivial finite-unit action, equalities must be replaced by invariants.

Sources:

- fu24, Corollary 1.3 and equation (2), pp. 2–3. The support correction requires a weight-uniform boundary estimate.
- fgt10, §1, pp. 3–4, equations (1.2)–(1.8). The boundary restriction and the Bianchi coefficient system supply the setting. The displayed Koszul calculation here is the explicit rank-one derivation.

### The bounded-boundary support bridge

Target: ArithmeticLocallySymmetricSpacesPartII:WM.5/bianchi-boundary. Kind: theorem.

For a neat Bianchi quotient Y with c cusps and E_n, n≥0, write H_!^i=im(H_c^i→H^i). The support triangle gives 0≤dim H^i−dim H_!^i≤b_i and 0≤dim H_c^i−dim H_!^i≤b_{i−1}, where (b₀,b₁,b₂)=(c,2c,c). Hence |dim H_c^i−dim H^i|≤3c for i=1,2, uniformly in n. In these degrees the Bianchi cuspidal comparison identifies H_!^i with H_cusp^i. Use Poincaré–Lefschetz duality to pair the two interior degrees with the dual coefficients. For n=0, the degree-two restriction onto boundary has a one-dimensional cokernel on a connected quotient; for n>0 the degree-three compact-support term vanishes. Do not assert the nontrivial-coefficient surjectivity statement at n=0.

Proof route:

1. Import the parent support triangle and take its long exact sequence. The kernel of H_c^i→H^i is an image of H^{i−1}(∂), and its cokernel in H^i is a subspace of H^i(∂).
2. Insert cusp-torus-koszul; subtract the two possible nonnegative errors. Their sum gives the stated safe bound 3c.
3. Use the Bianchi boundary-kernel/cuspidal comparison in FGT §1 (1.3)–(1.6); retain the ordinary, interior and compact-support maps as distinct objects.
4. Import the parent finite-level duality before the automorphic interpretation. H_c³ is dual to H⁰ with dual coefficients; the latter is zero for n>0 and one-dimensional in the connected trivial case.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.5/cusp-torus-koszul
- ArithmeticLocallySymmetricSpaces:ALS.4/boundary-triangle
- ArithmeticLocallySymmetricSpaces:ALS.5:finite-level-duality/verdier-poincare-duality
- ArithmeticLocallySymmetricSpacesPartII:WM.4/cuspidal-support-dictionary

Checks:

- The difference from interior is controlled separately on both sides of H_c^i→H^i.
- For c=0 ordinary and compact-support cohomology agree.
- At n=0 a connected quotient has H_c³≃ℂ; a proof that deletes it would give a false boundary surjectivity statement.

Sources:

- fu24, §1, equation (2), p. 2; Corollary 1.3, p. 3. The compact-support interpretation is justified only after bounding the boundary contribution.
- fgt10, §1, pp. 3–4, equations (1.3)–(1.6) and discussion of degree two. For Bianchi lattices the boundary kernel is the cuspidal subspace, the two degrees are dual, and trivial coefficients have a degree-two boundary exception.

### Classical fixed-type dimension estimate

Target: ArithmeticLocallySymmetricSpacesPartII:WM.5/finite-type-dimension. Kind: theorem.

Fix N≥1 and a finite-dimensional complex representation σ of G_N=SL₂(ℤ/Nℤ). For all k≥2 with σ(−I)=(-1)^k on σ, dim Hom_{G_N}(σ,S_k(Γ(N)))=(k−1)dim σ/12+O_{N,σ}(1). The error is uniform in k along the admitted parity classes. Its exact periodic terms are determined by the unipotent-invariant dimension and the traces at the order-three and order-four elliptic elements, plus a weight-two invariant correction. For a fixed finite collection of σ, one error constant works for all of them.

Proof route:

1. Use the supplied classical modular-form/cohomology identification at Γ(N), with the G_N action on both sides and its central parity.
2. Apply the genus-zero modular-orbifold cohomology calculation: the cusp stabilizer contributes its unipotent-invariant term and the two elliptic stabilizers contribute finite-order character traces. Equivalently compute the parabolic cohomology Euler characteristic from SL₂(ℤ)=C₄*_{C₂}C₆ and the induced coefficient system. This explicit calculation is the fixed-type refinement owned here; ordinary dimension formulas alone do not identify isotypic multiplicities.
3. Separate the linear term (k−1)dim σ/12. The elliptic coefficients range over finitely many residue classes modulo twelve, all fixed-type traces and invariant dimensions are constant, and the k=2 correction is bounded.

Direct prerequisites:

- tauceti:TauCetiRoadmap/ModularForms#10c--modular-forms-as-section-spaces-and-the-dimension-formulas
- ArithmeticLocallySymmetricSpaces:ALS.5/cuspidal-cohomology

Checks:

- Taking the trivial type recovers the admitted-parity leading term for level-one cusp forms.
- Opposite central parity gives zero multiplicity and is excluded from the linear estimate.
- Fixing N and σ is necessary for the bounded remainder.

Sources:

- fgt10, §4.3, Proposition 4.18, pp. 25–26 (arXiv:0808.1204v1). The equivariant dimension formula supplies a uniform bounded remainder after extracting the linear coefficient.

### Positive linear base-change contribution

Target: ArithmeticLocallySymmetricSpacesPartII:WM.5/base-change-linear-count. Kind: theorem.

For imaginary quadratic F, let R be the set of rational primes ramified in F, s=|R|, and ν_ℓ=v_ℓ(disc F). Put A_F=(1/24)∏_{ℓ∈R}(ℓ^{ν_ℓ}+1), and put B_F=2^{s−4} if every odd ℓ∈R is 1 modulo 4, otherwise B_F=0. The base-change subspace at SL₂(O_F) has dimension (A_F+B_F(−1)^{n+1})(n+1)+R_F(n), where R_F(n) is bounded independently of n. In particular A_F>B_F≥0, so this cuspidal subspace has dimension ≥c_F(n+1) for all sufficiently large n. This node owns the specialized multiplicity count and positivity argument; general cyclic base change, descent ambiguity and local types keep their existing owners.

Proof route:

1. Request the precise quadratic base-change/descent and non-CM fibre identification from R17.4, and the local type/newvector multiplicities from R16.2. Use the actual finite-level SL₂ restriction, not a one-to-one assumption on GL₂ base-change packets.
2. Use the equivariant classical modular-form dimension calculation FGT Proposition 4.18: its leading term is (k−1)dim σ/12, while the unipotent invariant, elliptic trace and weight-two terms are bounded for the fixed finite types. Sum the finitely many admitted local types with the base-change fibre multiplicities, as in FGT Theorem 4.17. Their leading coefficients are A_F±B_F; the class-number and exceptional CM corrections are bounded.
3. If B_F≠0, each odd ramified prime contributes at least 6 to the product, and the possible 2-factor is at least 5. If 2∉R, A_F/B_F≥(2/3)·3^s>1; if 2∈R, A_F/B_F≥(5/3)·3^{s−1}>1. If B_F=0, positivity is immediate.
4. Take a positive fraction of A_F−B_F and absorb the bounded R_F(n) by choosing one threshold. No asymptotic leading constant is inferred for the entire cuspidal space.

Direct prerequisites:

- GL2AutomorphicRepresentationsAndTransfer:R17.4
- GL2AutomorphicRepresentationsAndTransfer:R16.2
- tauceti:TauCetiRoadmap/ModularForms#10c--modular-forms-as-section-spaces-and-the-dimension-formulas
- ArithmeticLocallySymmetricSpacesPartII:WM.4/cuspidal-support-dictionary
- ArithmeticLocallySymmetricSpacesPartII:WM.5/finite-type-dimension

Checks:

- For F=ℚ(i), s=1 and ν₂=2, so A_F=5/24, B_F=1/8 and A_F−B_F=1/12>0.
- The full cusp space may contain non-base-change classes.
- The parity dependence prevents replacing this argument with one universal asymptotic coefficient.

Sources:

- fgt10, §4.3, Theorem 4.17, pp. 24–25; Proposition 4.18 and Lemma 4.19, pp. 25–26; §4.4, Corollary 4.20, p. 27 (arXiv:0808.1204v1). The base-change count has two parity-dependent positive linear coefficients and bounded corrections. Corollary 4.20 states the resulting ordinary lower bound; the proof through the base-change subspace supplies the cuspidal bound.
- fu24, §1, pp. 2–3, base-change discussion. The Bianchi sharpness assertion uses this independent lower-bound input.

### Lower bounds at the admitted levels

Target: ArithmeticLocallySymmetricSpacesPartII:WM.5/bianchi-lower. Kind: theorem.

Let Γ be a fixed neat congruence subgroup of finite index in SL₂(O_F), F imaginary quadratic. There exist c_{F,Γ}>0 and n₀ such that dim H_cusp¹(Γ,E_n)≥c_{F,Γ}(n+1) for all n≥n₀. Restriction from the maximal arithmetic group injects its base-change cuspidal subspace into this group; trace after restriction multiplies by the finite index. Consequently the same linear lower bound holds for S_κ at the corresponding fixed level, with κ=2(n+1), and for interior degree two by duality. This is the explicit sufficient level class; arbitrary adelic levels are not included in the lower assertion.

Proof route:

1. Use base-change-linear-count at SL₂(O_F). In characteristic zero, the finite-index restriction/corestriction composite is multiplication by the index, so restriction is injective even if the maximal level has finite stabilizers.
2. Pullback preserves the cusp condition and the interior subspace; use the parent level maps.
3. Use the Bianchi cuspidal dimension comparison and self-dual interior Poincaré–Lefschetz pairing in degree two. Convert n+1 to κ/2.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.5/base-change-linear-count
- ArithmeticLocallySymmetricSpacesPartII:WM.5/bianchi-boundary
- ArithmeticLocallySymmetricSpaces:ALS.1/level-pullback
- ArithmeticLocallySymmetricSpaces:ALS.3/level-trace
- ArithmeticLocallySymmetricSpacesPartII:WM.4/cuspidal-support-dictionary

Checks:

- Shrinking an admitted level preserves the lower bound.
- Injectivity of pullback does not give a lower bound at a larger arbitrary compact open level.

Sources:

- fgt10, Theorem 4.17, pp. 24–25; Corollary 4.20, p. 27; §1, pp. 3–4 (arXiv:0808.1204v1). The maximal-level base-change subspace has linear growth; finite-index restriction gives the stated smaller-level consequence.
- fu24, Corollary 1.3, p. 3. The sufficiently small Bianchi levels in the corollary must retain a justified lower-bound class.

### Bianchi growth in four support conventions

Target: ArithmeticLocallySymmetricSpacesPartII:WM.5/bianchi-two-sided. Kind: theorem.

For the fixed neat congruence levels Γ⊂SL₂(O_F) admitted by bianchi-lower, there exist 0<c≤C and n₀ such that for n≥n₀ and i=1,2, c(n+1)≤dim H_cusp^i(Γ,E_n)=dim H_!^i(Γ,E_n)≤C(n+1), and the same two-sided inequalities, after changing c,C,n₀, hold for H^i and H_c^i. Equivalently these dimensions have two-sided linear growth in even κ=2(n+1). At arbitrary fixed adelic level the roadmap asserts the upper bound alone. All constants depend on the field and the fixed level. There is no claim of a ratio tending to one.

Proof route:

1. Combine bianchi-upper and bianchi-lower for the cuspidal/interior spaces in degrees one and two.
2. Ordinary cohomology contains the interior subspace and has the established linear upper bound.
3. Compact-support cohomology surjects onto the interior image; bianchi-boundary supplies a uniform upper discrepancy. Equivalently use its 3c bound with ordinary dimensions.
4. Absorb the fixed boundary constants by enlarging the threshold and the upper constant.

Direct prerequisites:

- ArithmeticLocallySymmetricSpacesPartII:WM.4/bianchi-upper
- ArithmeticLocallySymmetricSpacesPartII:WM.5/bianchi-lower
- ArithmeticLocallySymmetricSpacesPartII:WM.5/bianchi-boundary

Checks:

- The result is stable under changing a finite number of small weights.
- The three cohomology spaces may have different dimensions at every weight despite having the same growth order.

Sources:

- fu24, Corollary 1.3, p. 3. The source’s two-sided growth notation is made explicit, with the support correction and lower-level hypotheses retained.

## Two analytic supplier contracts

These are precise missing ownership interfaces, not declarations supplied by this roadmap. All consequences of the cyclic bound retain these inputs. Adopting the two supplier designs and replacing their contracts by exact nodes is required before a gap-free package can be assembled. The local torsion/rank application remains fully specified without pretending that an unregistered supplier exists.

### G1 — unadopted noncommutative analytic comparison supplier

NoncommutativeAnalyticDistributions is a paper-route proposal, not an adopted roadmap/stage in this checkout. Required contract: for this odd-p product G and bounded-denominator A, construct the flat microlocal map A→Û over ℚ_p; for each algebraic W_k compare M/Ann_A(W_k)M with (Û⊗_A M)/Ann_Û(W_k)(Û⊗_A M), naturally in finitely generated M, with A/Ann_A(W_k)≃End(W_k). Supply injectivity A→Û/(Δ_i−λ_i) for every integral central tuple λ. Use AW14 §§4.6 and 5.4 (n=0 is allowed), integral highest weights after a finite coefficient extension when needed, and descent of the faithful action; retain completed base-change and normalization checks. Fu §5 alone proves only induced characters and its large-radius separatedness is unresolved. Do not use an unknown stage id as an apparently resolved prerequisite. Assign and design this supplier before packaging; this plan records its exact consumption without reconstructing its rings.

Consumed by: ArithmeticLocallySymmetricSpacesPartII:WM.1/cyclic-torsion-bound.

### G2 — unadopted completed-enveloping growth supplier

PadicEnvelopingAlgebras likewise has no adopted stage/node here. Required contract: Û is the p-adic completion of U(sl₂(ℤ_p)^m), rationalized, with Δ_i=½h_i²−h_i+2e_if_i and eigenvalue ½k_i(k_i+2); integral central reductions and image lattices have the PBW rectangle ranks used by Fu Proposition 3.4. For an element δ surviving every integral central reduction, produce a uniform α and show dim Hom_Û(Û/Ûδ,W_k)≤2Σ_iα_i∏_{j≠i}(k_j+1) for every k, with low-coordinate strips included. Require the integral image lattice in End(W_k), not equality with every integral endomorphism. Ordinary PBW/sl₂ theory is upstream LieHighestWeight, not work to duplicate here. Adopt and design this supplier before packaging.

Consumed by: ArithmeticLocallySymmetricSpacesPartII:WM.1/cyclic-torsion-bound.

The two contracts must agree on the scalar field, deformation index, normalization of the Casimir elements and the chosen algebraic lattices. For example, the eigenvalue of Δ=½h²−h+2ef on Sym^k is ½k(k+2). Replacing this by an arbitrary scalar without matching the central reduction changes the faithfulness question. The first-congruence case is allowed in AW14’s deformation convention: the page-16 statement admits index zero. Restricting it to positive indices would create an artificial obstruction.

There are two independent safeguards. First, integral central parameters and parameters induced by a weight are different sets. For p=3, the parameter λ=1 is integral but 2λ+1=3 is not a square in ℚ₃. Second, proving faithfulness after moving to a larger analytic radius needs a separatedness statement at that radius. The induced-character argument in Fu §5 is not used to silently supply either safeguard. The stated supplier route instead requests the precise affinoid Verma annihilator and faithful-action results of AW14, including finite scalar extension and descent where a highest weight is only defined after extending coefficients.

## Requests to adopted suppliers

### Request 1: NoncommutativeAndEquivariantIwasawa:NE.0

For the product of m odd-p first-congruence SL₂ groups, identify uniform dimension 3m; prove A=ℚ_p⊗ℤ_p[[G]] is a two-sided noetherian domain, both classical Ore localizations agree as a division ring Q(A), Q(A) is flat on both sides, and skew rank of finitely generated left modules is finite, additive, detects torsion, and is a on A^a. Export canonical finite-module topology and automatic continuity of maps into finite-dimensional continuous modules. Existing noetherianity/global-dimension nodes supply only part of this contract.

Consumers: ArithmeticLocallySymmetricSpacesPartII:WM.1/torsion-filtration, ArithmeticLocallySymmetricSpacesPartII:WM.2/free-approximation, ArithmeticLocallySymmetricSpacesPartII:WM.3/split-auxiliary-prime, ArithmeticLocallySymmetricSpacesPartII:WM.1/hom-coinvariant-dual.

### Request 2: NoncommutativeAndEquivariantIwasawa:NE.0

In the AW13 §10.12 congruence-kernel setting, for nonzero finitely generated rational Iwasawa M, canonical dimension 0 iff M is finite dimensional over the coefficient field (AW13 Lemma 10.13, author preprint p. 77). Canonical dimension is injective dimension minus grade; it is not skew rank.

Consumers: ArithmeticLocallySymmetricSpacesPartII:WM.2/canonical-dimension-zero.

### Request 3: tauceti:TauCetiRoadmap/RepresentationTheory/LieHighestWeight#layer-0-sl₂-representation-theory-the-engine

Use the already owned split characteristic-zero sl₂ symmetric-power highest-weight module, its irreducibility, dimension n+1 and self-duality; specialize the raising operator to its one-dimensional kernel and cokernel on Sym^n. This Part II adds only the compact-open restriction and the two-generator cusp calculation.

Consumers: ArithmeticLocallySymmetricSpacesPartII:WM.0/local-algebraic-family, ArithmeticLocallySymmetricSpacesPartII:WM.5/cusp-torus-koszul.

### Request 4: tauceti:TauCetiRoadmap/Chebotarev#layer-10-dirichlet-density-chebotarev

Apply the already owned Chebotarev identity class to a finite normal closure of F and avoid finitely many rational primes, including 2, to obtain a completely split auxiliary prime.

Consumers: ArithmeticLocallySymmetricSpacesPartII:WM.3/split-auxiliary-prime.

### Request 5: tauceti:TauCetiRoadmap/ModularForms#10c--modular-forms-as-section-spaces-and-the-dimension-formulas

Import the classical finite-congruence-level modular-form/cohomology and dimension infrastructure, with the natural finite quotient action. The fixed-type equivariant refinement of Proposition 4.18 is WM.5/finite-type-dimension here; ordinary dimensions alone are insufficient.

Consumers: ArithmeticLocallySymmetricSpacesPartII:WM.5/finite-type-dimension.

### Request 6: GL2AutomorphicRepresentationsAndTransfer:R17.4

Quadratic GL₂ base change from ℚ to an imaginary quadratic F, with exact cuspidality failure, quadratic-twist descent fibres, compatible local factors and the finite-level restriction to SL₂ used by FGT Proposition 4.11. Supply the input packet counting with its CM correction; this Part II owns the fixed-type dimension summation and positivity, not general transfer.

Consumers: ArithmeticLocallySymmetricSpacesPartII:WM.5/base-change-linear-count.

### Request 7: GL2AutomorphicRepresentationsAndTransfer:R16.2

The fixed ramified principal-series and supercuspidal types in FGT Definition 4.3 and Lemma 4.19, with dimensions, multiplicity-one newvectors, unipotent invariants, central parity and elliptic traces, including ℓ=2 with ν₂=2 or 3. These exact finite local data feed the base-change count.

Consumers: ArithmeticLocallySymmetricSpacesPartII:WM.5/base-change-linear-count.

## Source corrections and proof checks

The following are mathematical paraphrases, not source excerpts. They retain the extraction identifiers so that a reader can distinguish inherited corrections from a newly checked source locator. Published-version collation is not claimed when only the specified arXiv or author PDF was inspected.

### E1

Location: Fu arXiv:2201.11190v2 (15 February 2024), §1, equation (2), p. 2; Corollary 1.3, p. 3.

Required reading: Use cuspidal/interior cohomology in the dimension comparison; derive the compact-support growth through the bounded boundary maps.

Reason: Marshall §2.1 defines the relevant subspace inside ordinary cohomology, and FGT §1 retains a boundary contribution.

Provenance: Already recorded in PAPER-FU-24/E1; this packet uses the corrected form and does not claim a new erratum.

### E2

Location: Fu arXiv:2201.11190v2 (15 February 2024), Theorem 1.5, p. 4; §5, Remark 5.8, p. 21.

Required reading: Induced SL₂ parameters satisfy that 2λ+1 is a square in ℤ_p; not every integral parameter does. Use the AW14 route for the all-integral contract.

Reason: For p=3, λ=1 is integral while 2λ+1=3 has no square root in ℚ_3. Only the implication from induced to integral holds.

Provenance: Already recorded in PAPER-FU-24/E3; this packet uses the corrected form and does not claim a new erratum.

### E3

Location: Fu arXiv:2201.11190v2 (15 February 2024), Proof of Theorem 5.7, p. 20, used in Theorem 5.1, p. 21.

Required reading: Supply separatedness or the ideal-contraction identity between the two radii before drawing the domain conclusion. This plan uses the independent AW14 supplier route.

Reason: A zero intersection in the completion does not follow from density, and the filtration on the quotient must be separated. The needed large radii are not covered by the smaller-radius calculation.

Provenance: Already recorded in PAPER-FU-24/E5; this packet uses the corrected form and does not claim a new erratum.

### E4

Location: Fu arXiv:2201.11190v2 (15 February 2024), Theorem 1.2, pp. 2–3; Corollary 1.3, p. 3.

Required reading: Take the minimum over archimedean places, and state two positive constant bounds for the growth order.

Reason: There are r₁+r₂ place weights; a two-sided bound does not imply an asymptotic equivalent.

Provenance: Already recorded in PAPER-FU-24/E6; this packet uses the corrected form and does not claim a new erratum.

### E5

Location: Fu arXiv:2201.11190v2 (15 February 2024), Theorem 5.7, p. 20.

Required reading: At least restrict to the integral parameter regime used downstream and prove its separatedness; a nonintegral central character can give the zero quotient.

Reason: If the scalar parameter has norm larger than the Casimir, subtracting it gives a unit, so the central quotient is zero and cannot be a domain.

Provenance: Already recorded in PAPER-FU-24/E7; this packet uses the corrected form and does not claim a new erratum.

### E6

Location: Fu arXiv:2201.11190v2 (15 February 2024), Theorem 3.2 and proof, pp. 8–11.

Required reading: For a small coordinate use D(k+1)≤α_i∏_{j≠i}(k_j+1); the common bound 2Σ_iα_i∏_{j≠i}(k_j+1) covers both regimes.

Reason: The excluded weights form infinite coordinate strips, so they cannot be absorbed as a finite set of exceptions.

Provenance: Already recorded in PAPER-FU-24/E9; this packet uses the corrected form and does not claim a new erratum.

### E7

Location: Fu arXiv:2201.11190v2 (15 February 2024), Theorem 1.2, pp. 2–3; §7, pp. 23–24.

Required reading: Choose p split outside the nonmaximal primes of a product subgroup in the given fixed level; refine to a neat product level and use pullback injection.

Reason: The theorem ranges over arbitrary fixed compact opens, and the refinement index is independent of the weight.

Provenance: Already recorded in PAPER-FU-24/E10; this packet uses the corrected form and does not claim a new erratum.

### E8

Location: Fu arXiv:2201.11190v2 (15 February 2024), §4, equation (16), p. 14.

Required reading: For the Banach completion require weighted coefficients to tend to zero; do not use the larger bounded-series space.

Reason: A series in the norm completion of finite sums must have vanishing weighted tails.

Provenance: Already recorded in PAPER-FU-24/E2; this packet uses the corrected form and does not claim a new erratum.

### E9

Location: Fu arXiv:2201.11190v2 (15 February 2024), §4, equation (17), p. 14.

Required reading: Use ℤ_p or an unramified base for that displayed set and obtain finite ramified extensions by the separately proved scalar-extension comparison.

Reason: In a ramified coefficient ring, p lies in the square of its maximal ideal, so the purported denominator description can contain zero.

Provenance: Already recorded in PAPER-FU-24/E4; this packet uses the corrected form and does not claim a new erratum.

## Route coverage

Every one of the 25 PAPER-FU-24 items assigned to this continuation is represented below. A mapping to an application node does not transfer ownership of its imported prerequisites.

| Routed item | Target |
| --- | --- |

| weight-size | WM.3/global-local-weights |
| sharp-global-bound | WM.4/sharp-global-bound |
| parallel-bound | WM.4/parallel-bound |
| bianchi-upper | WM.4/bianchi-upper |
| bianchi-lower | WM.5/bianchi-lower |
| bianchi-cohomological-sharpness | WM.5/bianchi-two-sided |
| multiaffine-bound | WM.0/proper-face-majorant |
| rank-main-term | WM.2/rank-main-term |
| higher-homology-bound | WM.2/common-homology-bound |
| hom-coinvariant-dual | WM.1/hom-coinvariant-dual |
| cyclic-iwasawa-bound | WM.1/cyclic-torsion-bound |
| torsion-module-filtration | WM.1/torsion-filtration |
| fg-torsion-weight-bound | WM.1/torsion-bound |
| free-approximation | WM.2/free-approximation |
| acyclic-regular-coefficients | WM.2/regular-acyclicity |
| homological-shifting | WM.2/homological-shifting |
| canonical-dimension-zero | WM.2/canonical-dimension-zero |
| split-auxiliary-prime | WM.3/split-auxiliary-prime |
| coefficient-realization-comparison | WM.3/realization-comparison |
| spectral-dimension-bound | WM.3/spectral-dimension-bound |
| global-local-weight-dictionary | WM.3/global-local-weights |
| cuspidal-support-dictionary | WM.4/cuspidal-support-dictionary |
| bianchi-boundary-estimate | WM.5/bianchi-boundary |
| rank-upper-coinvariants | WM.2/rank-upper |
| rank-lower-coinvariants | WM.2/rank-lower |

## Separate continuations

The issue explicitly allows one continuation to be planned when the four routes split into independent directions. Weight multiplicity needs completed homology and analytic Iwasawa estimates; Smith/Tate localization, derived Hecke reciprocity and o-minimal quotient geometry have different carriers and endpoints. Their shared arithmetic quotient remains in the parent.

Keep ArithmeticLocallySymmetricSpacesPartII for PAPER-FU-24’s WeightAspectAutomorphicMultiplicity route, planned by WM.0–WM.5 here. Create separate design jobs for (1) SmithTheoryAndModPFunctoriality, title Arithmetic locally symmetric spaces, Part III: Smith theory and mod p functoriality, routing the 37 items of PAPER-TREUMANN-VENKATESH-16 and ending at Theorems 4.4, 5.8, 6.5; (2) DerivedHeckeReciprocity, title Arithmetic locally symmetric spaces, Part IV: derived Hecke operators and reciprocity, routing the 45 items currently addressed to this id in PAPER-VENKATESH-19, with strict global derived Hecke, generation Theorem 7.6, Selmer exterior action Theorem 8.5 and rank-one Proposition 8.6, keeping Conjecture 8.8 conjectural; (3) ArithmeticQuotientDefinability, title Arithmetic locally symmetric spaces, Part V: tame arithmetic quotients, routing the 22 PAPER-BKT-20 items and retaining fixed-K Siegel charts, Cartan-compatible maps preserving the chosen compact subgroups, and the extraction’s unresolved proof gates. Each imports parent quotients and its own suppliers; none is asserted planned by this packet. No queue, reserved id or other packet is edited.

These three briefs have different fundamental objects. Smith localization needs Tate coefficients and a fixed-point formalism; derived Hecke reciprocity needs derived operators and Selmer data; tame quotient geometry needs definable charts and a specified compact subgroup. A common arithmetic quotient does not identify those interfaces with a weight-multiplicity calculation. The split preserves parent ownership and gives each continuation a concrete target list without claiming that any of the other three routes is covered here.

## Coverage and completion conditions

The packet is complete as a target-level plan: all six scoped stages are planned, all 25 assigned Fu route items have targets, and every definition/construction has its API and at least three discriminating tests. No stage is claimed closed. There are two explicit analytic-supplier gaps and seven requests to adopted supplier stages. All nodes remain unchecked. This coverage classification distinguishes finishing the design job from possessing a closed dependency graph or a formalized theorem.

- ArithmeticLocallySymmetricSpacesPartII:WM.0: planned. Adopt the requested SL₂ supplier specialization and common Iwasawa conventions before implementation.
- ArithmeticLocallySymmetricSpacesPartII:WM.1: planned. Adopt and design the G1 analytic and G2 completed-enveloping suppliers; then replace these explicit gaps by exact supplier nodes.
- ArithmeticLocallySymmetricSpacesPartII:WM.2: planned. Supply the requested skew-rank and canonical-dimension contracts in NE.0; the rank, torsion and shifting chain is fully specified conditional on those inputs.
- ArithmeticLocallySymmetricSpacesPartII:WM.3: planned. Implement the imported arithmetic tower and rational completed-Tor comparisons before implementing this application.
- ArithmeticLocallySymmetricSpacesPartII:WM.4: planned. Implement the owned SL₂ Eichler–Shimura–Harder dimension comparison with the stated support and coefficient convention.
- ArithmeticLocallySymmetricSpacesPartII:WM.5: planned. Supply the requested exact quadratic base-change and ramified local type inputs; implement the fixed-type dimension count and the cusp Koszul comparison.

## Baseline declarations

The following existing statements are used at the pins; none supplies the new analytic or arithmetic endpoint.

- mathlib:Finset.prod (Mathlib/Algebra/BigOperators/Group/Finset/Defs.lean): Ordinary finite product in a commutative monoid; no representation-theoretic content.
- mathlib:Finset.powerset (Mathlib/Data/Finset/Powerset.lean): The finite set of all subsets of a finite set, with its membership characterization.
- mathlib:MvPolynomial (Mathlib/Algebra/MvPolynomial/Basic.lean): The ordinary commutative multivariate polynomial carrier; it supplies neither a weight bound nor a degree drop.
- tauceti:TauCeti.symPowerRep (TauCeti/RepresentationTheory/ClassicalGroups/SymmetricPower.lean): The dth symmetric power of the standard GL_n representation, obtained from the existing Representation.symmetricPower.
- tauceti:SymmetricPower.finrank_eq (TauCeti/LinearAlgebra/SymmetricPower/Basis.lean): For finite free M over a commutative semiring with strong rank condition, the symmetric-power finrank is the multichoose number.
- mathlib:Module.finrank_tensorProduct (Mathlib/LinearAlgebra/Dimension/Constructions.lean): The finite-free tensor finrank product, specialized here to finite-dimensional vector spaces over a field.
- mathlib:Module.finrank_baseChange (Mathlib/LinearAlgebra/Dimension/Constructions.lean): Under the scalar-tower/freeness hypotheses in the source, scalar extension preserves finrank over the new base field.

## References and reading scope

All statements above are in the roadmap’s own words. Page numbers refer to the exact version listed here. Journal pagination is bibliographic and is not substituted for the inspected PDF pagination.

### fu24

Weibo Fu, [Sharp bounds for multiplicities of Bianchi modular forms](https://arxiv.org/pdf/2201.11190v2). arXiv:2201.11190v2, 15 February 2024, 25 pages; published Annals of Mathematics 200 (2024), 123–152.

Reading scope: Entire v2: §§1–7 and references, pp. 1–25. All locators in this packet use that version unless expressly marked.

PDF SHA-256: d71e9d3f8d3a1217743c3ba72c9a9630981f054ecefd943ff4edb4879b842614. Accessed 2026-10-19.

The published NSF PAR PDF timed out during this run. Published locators and errata in PAPER-FU-24 are useful provenance, not an independent collation claimed here.

### aw14

Konstantin Ardakov and Simon Wadsley, [Verma modules for Iwasawa algebras are faithful](https://www.dpmms.cam.ac.uk/~sjw47/VermaIwasawa.pdf). Author PDF, 19 pages; published Münster Journal of Mathematics 7 (2014), 5–26.

Reading scope: §§1.1–1.4, 3.1–3.3, 4.1–4.2, 4.5–4.6, 5.4–5.5; pp. 1–2, 6–8, 10–11, 16–17. Page 16 image checked: the deformation index is n≥0, including the first congruence group.

PDF SHA-256: 0d774ffa62a1429d4677253de4fcf0787fef7ba399945c6913686f0e82b8e850. Accessed 2026-10-19.

### aw13

Konstantin Ardakov and Simon Wadsley, [On irreducible representations of compact p-adic analytic groups](https://people.maths.ox.ac.uk/ardakov/Smith.pdf). Author preprint; published Annals of Mathematics 178 (2013), 453–557.

Reading scope: §§10.12–10.13, pp. 77–78: standing group hypotheses and canonical-dimension criterion.

PDF SHA-256: 597f490e9c8521fdc8d740b32375c4d005531ada0be65a29cec0fc0eb811158d. Accessed 2026-10-19.

### marshall12

Simon Marshall, [Bounds for multiplicities of automorphic forms of cohomological type on GL₂](https://arxiv.org/pdf/1103.2472v1). arXiv:1103.2472v1, 12 March 2011; published Annals of Mathematics 175 (2012), 1629–1651.

Reading scope: §1 and §2.1, pp. 1–4: lower-level convention, algebraic weights and interior-support identity.

PDF SHA-256: 99c00f0e4a8a3e501b86b6d286582eb7062f0e506eaee3cc353bd4279867e03f. Accessed 2026-10-19.

### fgt10

Tobias Finis, Fritz Grunewald and Paulo Tirao, [The cohomology of lattices in SL(2,C)](https://arxiv.org/pdf/0808.1204v1). arXiv:0808.1204v1, 8 August 2008; published Experimental Mathematics 19 (2010), 29–63.

Reading scope: §1, pp. 3–7; §§4.2–4.4, pp. 22–27: support conventions, Theorem 4.17, Proposition 4.18, Lemma 4.19 and Corollary 4.20.

PDF SHA-256: bd83d8189ea02a7ed91c6e8b53f16b4a9eb1734f558d6dd2dd930c38e2e471e3. Accessed 2026-10-19.

General base change and local type theory are imported through explicit requests; reading the selected count does not claim that their full prerequisite papers were read.
