# Roadmap: potential automorphy infrastructure, Part II: Dwork switching motives

**Summary.** This roadmap builds the Dwork pencil `X₁ᴺ + ⋯ + X_Nᴺ = N t X₁⋯X_N` over the punctured line `T₀ = ℙ¹ − ({∞} ∪ μ_N)`, the eigen-local-systems cut out of its middle cohomology by characters of the diagonal symmetry group, and the arithmetic and geometric theory of these local systems needed to move between Galois representations at two primes. From linear algebra over finite fields (Levelt's rigidity theorem, finite unitary groups, Zalesskii–Serezhkin) and Katz's hypergeometric sheaves it proves that the complex monodromy is maximally unipotent at infinity and that the residual monodromy is the full special linear, special unitary or symplectic group; from Deligne's computation of the Fermat hypersurface it computes Frobenius determinants as Gauss-sum products; from the comparison theorems of `p`-adic Hodge theory it proves that the fibres are de Rham with consecutive labelled Hodge–Tate weights, ordinary near the Fermat point and near infinity, and Steinberg near infinity away from the coefficient prime. The end theorems are the switching theorems: Qian's theorem for non-self-dual Dwork motives, the symplectic switch in the self-dual family used by Barnet-Lamb–Gee–Geraghty–Taylor, and the auxiliary Dwork systems `R_aux` and `S_UA` of Boxer–Calegari–Gee–Newton–Thorne, together with the rank-two variant through twisted modular curves.

PotentialAutomorphyInfrastructure supplies the automorphy-lifting and transport interface for potential automorphy over CM fields and leaves the Dwork families, and the construction of potential-automorphy witnesses from them, to their own roadmaps. This Part II is that Dwork-family roadmap. It does not depend on PotentialAutomorphyInfrastructure; it supplies the geometric families and switching points that the potential-automorphy theorems consume.

## Scope and ownership

This roadmap owns:

- the linear algebra of hypergeometric pairs (pseudo-reflections as Mathlib's non-identity dilatransvections, Levelt rigidity, irreducibility) and the finite classical-group inputs it needs: finite unitary and similitude groups, Hermitian forms over finite fields, normal subgroups of `SL_n` and `SU_n` over finite fields of odd characteristic, the restricted Artin non-isomorphism statement, the Zalesskii–Serezhkin classification in odd characteristic and dimension at least three, and the Goursat-type product lemma (Layer 0);
- the Dwork pencil, its symmetry groups, exponent data and index sets, the auxiliary-modulus lemma and the quotient family over `ℙ¹ − {0, 1, ∞}` (Layer 1);
- the Dwork eigen-local-systems, their ranks, Poincaré duality, self-dual real forms and the Fermat-fibre splitting (Layer 2);
- Katz's hypergeometric sheaves attached to lists of distinct nontrivial Kummer characters, their rank, purity, determinant and local monodromy, Katz's comparison theorem for Dwork eigensheaves, the comparison characters and the twisted systems `W` (Layer 3);
- complex monodromy of the Dwork systems (Layer 4), residual monodromy, the residual hypergeometric groups and the level-structure torsors (Layer 5);
- Frobenius on Fermat eigenlines, Gauss-sum determinants, finite-field-valued character roots and determinant matching, and the integrality and `λ`-independence of Frobenius polynomials (Layer 6);
- de Rham, crystalline, ordinarity, inertia and Steinberg properties of Dwork fibres, the comparison character as an algebraic Hecke character, the weakly compatible Dwork systems, the Drinfeld–Kedlaya slope bound and generic crystalline ordinarity (Layer 7);
- the equivariant semistable models near infinity, their Hyodo–Kato description and regular ordinarity near infinity (Layer 8);
- the switching theorems and the auxiliary systems built from them (Layer 9).

It leaves to the named roadmaps, and does not restate:

- transvections and dilatransvections of a module, their determinants, base change and Dieudonné's generation theorem: Mathlib `LinearMap.transvection`, `LinearEquiv.transvections`, `LinearEquiv.dilatransvections` (Mathlib/LinearAlgebra/Transvection/Basic.lean and Generation.lean); elementary matrix transvections and their factorisation in `SL_n`: Mathlib `Matrix.transvection`, `Matrix.TransvectionStruct`, `Matrix.SpecialLinearGroup.exists_list_transvec_mul_diagonal_mul_list_transvec`;
- unitary and special unitary matrix groups over a star ring: Mathlib `Matrix.unitaryGroup`, `Matrix.specialUnitaryGroup`; symplectic matrices: Mathlib `Matrix.symplecticGroup`; Goursat's lemma: Mathlib `Subgroup.goursat`; Hilbert 90: Mathlib `groupCohomology.isMulCoboundary₁_of_isMulCocycle₁_of_aut_to_units`; Gauss and Jacobi sums: Mathlib `gaussSum`, `gaussSum_mul_gaussSum_eq_card`, `gaussSum_mulShift`, `jacobiSum`;
- companion matrices, their characteristic and minimal polynomials: ClassicalArithmeticCompletion §2.46 and §2.60;
- étale fundamental groups, proper and smooth proper base change, adic realization, compact supports, Künneth and smooth purity: EtaleCohomologyFoundations §§F.0.2, F.0.A2, F.2.1, F.2.4–F.2.7, F.3, F.4.2, F.4.5 and F.6;
- the Artin comparison, relative Betti local systems, Hodge theory of smooth proper complex varieties and relative Hodge bundles, logarithmic structures: ComplexComparisonPartII §§C5.2, C5.3, C5.5, C6.5 and C6.6;
- the Grothendieck–Lefschetz trace formula: InverseGaloisAndArithmeticFundamentalGroups §§IG.0.T2–IG.0.T3; tame specialization of fundamental groups: InverseGaloisAndArithmeticFundamentalGroups §IG.1.3;
- Deligne's weights, purity and geometric semisimplicity: DeligneWeightsAndPurity §§0.1, 3.2, 7.15 and 8.19; `ℓ`-adic Poincaré duality: EtaleDualityAndPerverseSheaves §§0.5–0.6;
- nearby and vanishing cycles, the monodromy theorem, maximal unipotence and the Picard–Lefschetz formula: LefschetzPencilsAndVanishingCycles §§0.5, 0.8a, 1.1, 1.6, 2.7 and 2.8; the Weil–Deligne adapter: ArithmeticGaloisRepresentations §2.4;
- period functors, the sign dictionary, weak admissibility, the proper smooth, crystalline and semistable comparison theorems, labelled ordinary flags with the slope, monodromy and descent criteria, and rank-two ordinarity: PadicHodgeTheory §§3.2–3.4, 3.6, 6.3, 6.4 and 8.1–8.2; ordinary representations of weight `λ`, the relation "connects", the local models `ρ_{n,m,0}` and weight-zero connectedness: LocalGaloisDeformationRings §§1.7, 6.8, 6.19 and 6.25;
- log smoothness and Hyodo–Kato cohomology with its monodromy and comparison: CrystallineCohomology §§CR.5:log-algebra.1, CR.5:log-algebra.3, CR.6.1–CR.6.3; the Katz–Messing comparison, convergent `F`-isocrystals and Newton-polygon specialization: PadicDifferentialEquationsAndRigidCohomology §§RD.2.3, RD.3.34, RD.3.43 and RD.7.7;
- torsors, contracted products and twisting, strict transforms, strict semistability and semistable alterations: SchemeAndStackFoundations §§1.15, 1.16, 4.11 and 4.20; Weil restriction: AbelianSchemesAndArithmeticModuli §§A6.30–A6.31 and AlgebraicModuliForArithmeticGeometry §3.4;
- roots of finite-order characters after totally real base change: ArithmeticGaloisDuality §R02.4.6;
- the thrice-punctured sphere and its peripheral loops: BelyiMaps §§5.2 and 5.6; Chebotarev density: Chebotarev Layer 10; the twisted modular curve `Y(ρ)`: ModularCurves §5C and ModularCurvesPartII §5.14; Hecke characters and infinity types: GlobalNumberFields Layers 9–10;
- weakly compatible families, induction, algebraic character families in both directions, purity of induced families, density-one residual irreducibility, disjointness through towers, Moret-Bailly's theorem with three kinds of local conditions and above a preliminary field, surjective specialization, extension of finite local characters and CM characters with prescribed local reductions: PotentialModularityAndCompatibleSystems §§1.1, 1.4, 1.9, 1.11, 1.21, 2.14, 2.15, 2.17, 2.18, 2.20 and 3.1.

Kept variants. The finite unitary group of §0.5 is defined through an explicit involution of a finite field rather than a star structure, because a finite field carries no global star instance; it agrees with Mathlib's `Matrix.unitaryGroup` once the involution is installed as the star. The hypergeometric sheaves of Layer 3 are Katz's general construction for any list of distinct nontrivial Kummer characters; the Dwork data are specializations.

## Conventions

- `N` is odd and `N ≥ 3`; `2 ≤ n ≤ N`, and `gcd(N, n) = 1` whenever the exponent datum is used to pass between the parameter line `T₀` and the quotient line `T′₀`. The Dwork pencil is `X₁ᴺ + ⋯ + X_Nᴺ = N t X₁⋯X_N` over `T₀ = ℙ¹ − ({∞} ∪ μ_N)` over `ℤ[1/N]`; its fibres have odd dimension `N − 2`.
- `M = ℚ(e^{2πi/N})`; `O = ℤ[1/(2N), ζ_N]` and `O⁺ = ℤ[1/(2N), ζ_N]⁺`. Coefficient places `λ` of residue characteristic `l` are always prime to `2N`. A finite free module is called free; a Betti lattice over the Dedekind rings `O` and `O⁺` is only finite projective.
- A geometric automorphism `h` acts on cohomology through `(h⁻¹)*`. With this convention the eigenline of the Fermat hypersurface with exponent vector `a` (all `aᵢ ≠ 0`, representatives `⟨aᵢ⟩ ∈ {1, …, N − 1}`) has Hodge degree `p = ∑⟨aᵢ⟩/N − 1`. Witness: for the Fermat cubic, `(1, 1, 1)` has `p = 0` and `(2, 2, 2)` has `p = 1`; using `h*` instead exchanges them.
- Frobenius on cohomology is geometric. Witness: on `ℚ_ℓ(1)` geometric Frobenius at `v` acts by `q_v⁻¹`; on `H¹` of an elliptic curve its characteristic polynomial is `X² − a_v X + q_v` and its determinant is `q_v`.
- Hodge–Tate weights are cohomological: a weight `h` means `gr^h D_dR ≠ 0`, so `ε_l` has weight `−1` and `H¹` of an elliptic curve has weights `{0, 1}`. PadicHodgeTheory and LocalGaloisDeformationRings use `HT(ε_l) = +1`: their labelled weights are the negatives of ours. Witness: `ℚ_l(1)` has weight `−1` here and `+1` in PadicHodgeTheory §3.2, and filtration jump `−1` in both.
- Period modules of a representation `V` of `G_K` with coefficients in `E` are `(B ⊗_{ℚ_l} V)^{G_K}`, with scalars `K ⊗_{ℚ_l} E` (de Rham) or `K₀ ⊗_{ℚ_l} E` (crystalline, semistable). The representation is not a `K`-vector space; labels are taken after enlarging `E` to contain every embedding of `K`.
- "Ordinary of weight `λ`" is LocalGaloisDeformationRings' `IsOrdinaryOfWeight`: the graded characters of the full flag have cohomological labelled weights `λ_{τ, n−i+1} + i − 1`. For the Dwork fibres `λ_{τ,i} = M(a_τ)` for all `i`, giving weights `M(a_τ), …, M(a_τ) + n − 1`.
- Artin reciprocity is geometric: a uniformizer goes to a geometric Frobenius. The direct fundamental characters `ω_τ = τ ∘ Art⁻¹` on inertia multiply to `ε̄_l`; the cohomological characters are `θ_τ = ω_τ⁻¹`, with `θ_τ θ_{cτ} = ε̄_l⁻¹`. Witness: `H¹` of a supersingular elliptic curve over `ℚ_p` has inertia `θ₂ ⊕ θ₂^p = ω₂⁻¹ ⊕ ω₂^{−p}`, with determinant `ε̄_p⁻¹`; its Tate module has the inverse characters.
- On the torsion `A[r]` of an elliptic curve the determinant is `ε̄_r`; on `H¹(A, 𝔽_r)` and on the CM seed of §9.8 it is `ε̄_r⁻¹`.
- Hermitian forms are linear in the first variable and `c`-semilinear in the second: `B(x, y) = y†Ax` with `M† = (M^c)ᵀ` and `A_{ij} = B(e_j, e_i)`. Mathlib's `LinearMap.IsSymm` applies to the flipped form. Witness: on `𝔽₉ ⊃ 𝔽₃` the form `(x, y) ↦ x y³` is Hermitian.
- Peripheral loops: Mathlib's `FundamentalGroup` composes `p * q = q.trans p`, and BelyiMaps §5.2 defines `periphInf = (periph1 * periph0)⁻¹`, so `p₁ p₀ p∞ = 1`. Here `γ₀ γ₁ γ∞ = 1` with `γ₀ = p₀`, `γ₁ = p₀⁻¹ p₁ p₀`, `γ∞ = p∞`. Witness: substituting gives `p₀ p₀⁻¹ p₁ p₀ p∞ = p₁ p₀ p∞ = 1`.
- Natural-number subtraction never occurs in a statement whose hypotheses allow truncation: index sets are formed only under `N > n + 1` (self-dual) or `N > 100n + 100` (Qian).

## Exact supplier contracts

### From Mathlib

- Linear algebra: `Matrix.GeneralLinearGroup`, `Matrix.SpecialLinearGroup`, `Matrix.charpoly`, `Matrix.rank`, `minpoly`, `Matrix.conjTranspose`. `LinearMap.transvection f v` is `x ↦ x + f(x)v`; `LinearEquiv.transvections K V` is the set of `LinearEquiv.transvection` with `f(v) = 0` and contains the identity; `LinearEquiv.dilatransvections K V` is the set of linear equivalences of the form `LinearMap.transvection f v` and also contains the identity. Over a division ring `LinearEquiv.mem_dilatransvections_iff_finrank` says that `e` is a dilatransvection exactly when `rank(e − 1) ≤ 1`, and `LinearEquiv.mem_transvections_iff_mem_dilatransvections_and_fixedReduce_eq_one` characterises transvections among them; `LinearMap.transvection.det` gives determinant `1 + f(v)` and `LinearEquiv.transvection.det_eq_one` determinant one; `LinearEquiv.mem_dilatransvections_pow_of_not_isExceptional` is the non-exceptional case of Dieudonné's generation theorem; base change is `LinearEquiv.transvection.baseChange` (Mathlib/LinearAlgebra/Transvection/Basic.lean, Generation.lean). None of these predicates excludes the identity, so a pseudo-reflection here is a non-identity dilatransvection.
- `Matrix.transvection`, `Matrix.TransvectionStruct`, `Matrix.Pivot.exists_list_transvec_mul_diagonal_mul_list_transvec` and its `SL` form `Matrix.SpecialLinearGroup.exists_list_transvec_mul_diagonal_mul_list_transvec`, whose diagonal factor has determinant one but is not itself a product of transvections (Mathlib/LinearAlgebra/Matrix/Transvection.lean, SpecialLinearGroup.lean).
- Finite groups: `Subgroup.goursat` (Mathlib/GroupTheory/Goursat.lean); `MulAction.IwasawaStructure.isSimpleGroup`, whose abelian normal subgroups and generation are hypotheses; `Matrix.ProjectiveSpecialLinearGroup.rank_two_simple` for fields with at least four elements; `Matrix.SL2.commutator_eq_top` for `a ≠ 0`, `a² ≠ 1` (not applicable to `𝔽₃`); `Matrix.SpecialLinearGroup.center_equiv_rootsOfUnity`.
- Unitary and symplectic groups: `Matrix.unitaryGroup` and `Matrix.specialUnitaryGroup` over a commutative star ring, with `Matrix.mem_unitaryGroup_iff'` (`star A * A = 1`) and `Matrix.mem_specialUnitaryGroup_iff`; `Matrix.symplecticGroup l R`, the matrices on `l ⊕ l` with `A J Aᵀ = J`.
- Forms: `LinearMap.IsSymm` (semilinear first, linear second) and `LinearMap.SeparatingLeft` (Mathlib/LinearAlgebra/SesquilinearForm/Basic.lean).
- Finite fields: `FiniteField.unitsMap_norm_surjective` (no characteristic restriction), `Algebra.trace_surjective` (finite separable extensions), `FiniteField.frobenius_pow`, `ZMod.pow_totient`, `IsPrimitiveRoot`, `Polynomial.cyclotomic`, `orderOf`; Hilbert 90 as `groupCohomology.isMulCoboundary₁_of_isMulCocycle₁_of_aut_to_units`.
- Characters and sums: `MulChar`, `AddChar.IsPrimitive`, `gaussSum χ ψ = ∑ₐ χ(a)ψ(a)` with `χ(0) = 0`, `gaussSum_mul_gaussSum_eq_card` (`χ ≠ 1`, `ψ` primitive: `g(χ, ψ) g(χ⁻¹, ψ⁻¹) = #F`), `gaussSum_mulShift`, `jacobiSum`. For the trivial character the convention `χ(0) = 0` gives `gaussSum 1 ψ = −1` when `ψ` is nontrivial.
- Topology and geometry: `FundamentalGroup` (with `p * q = q.trans p`), `MonoidAlgebra`, `MvPolynomial`, `AlgebraicGeometry.Smooth`.

### From Tau Ceti

- `TauCeti.FiniteEtaleScheme` (TauCeti/AlgebraicGeometry/FiniteEtale/Basic), the carrier on which EtaleCohomologyFoundations §F.0.2 builds the Galois category of finite étale covers.
- `TauCeti.companionFinTwo` (TauCeti/LinearAlgebra/Matrix/RationalCanonicalFormFinTwo), the rank-two companion matrix `[[0, −d], [1, t]]`, matching the orientation of ClassicalArithmeticCompletion §2.46.

### From TauCetiRoadmap.ClassicalArithmeticCompletion

§2.46 supplies `Polynomial.companion`: ones on the subdiagonal and `−p.coeff i` in the last column, with `Polynomial.minpoly_companion` (over a field, for monic `p`) and `Polynomial.det_companion`; §2.60 supplies that the characteristic polynomial of `C(p)` is `p`. This is the orientation of Qian, Lemma 3.4, and of Barnet-Lamb–Geraghty–Harris–Taylor, Corollary 4.4.

### From TauCetiRoadmap.EtaleCohomologyFoundations

§F.0.2: finite étale covers of a connected scheme are equivalent to finite continuous `π₁`-sets, finite lisse `Λ`-modules to continuous finite `π₁`-modules, with path transport (`VanishingCycles.finiteEtaleGaloisCategory`, `VanishingCycles.lisseMonodromyEquiv`). §F.0.A2: for quasi-compact geometrically connected `X/k`, `1 → π₁(X_k̄) → π₁(X) → Γ_k → 1` is exact. §F.2.1: proper base change for torsion coefficients, with no invertibility hypothesis. §F.3: for smooth proper `f` and finite lisse coefficients with invertible annihilator, `Rⁱf_*` is lisse with the fibre stalk formula. §§F.2.4–F.2.7: constructible `Rf_!`, compact-support cohomology and compact-support Künneth over separably closed fields. §§F.4.2 and F.4.5: integral and rational adic realization, lisse rational sheaves and finite-dimensional cohomology. §F.6: smooth purity `f^!Λ ≅ Λ(d)[2d]` and Poincaré duality.

### From TauCetiRoadmap.ComplexComparisonPartII

§C5.2 `relativeBettiLocalSystem`: for a proper submersion `f`, `R^q f_* A` is locally constant with stalk `H^q_sing(f⁻¹(s), A)`. §C5.3 `properPureHodge` (pure Hodge structure of weight `n` on `Hⁿ` of a smooth proper complex scheme, Hodge filtration by form degree) and `relativeHodgeBundles` (for smooth proper `f` over a locally Noetherian base of characteristic zero, the `R^q f_* Ω^p` are finite locally free, the Hodge–de Rham spectral sequence degenerates, the filtration commutes with base change, and isotypic summands for a finite group action are again locally free with the induced filtration). §C5.5: logarithmic structures and log smoothness. §C6.5 `relativeArtinComparison` (proper and lower-shriek exchange for `Dᵇ_ctf` coefficients) and §C6.6 `adicArtinComparison` (integral and rational passage).

### From TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups

§IG.0.T2 (finite-coefficient Grothendieck–Lefschetz, `VanishingCycles.etaleTraceFormulaFinite`) and §IG.0.T3 (the rational constructible trace formula for all powers of Frobenius, with coefficient extensions and finite group compatibilities). §IG.1.3: specialization for proper smooth families and tame specialization with a relative normal-crossings boundary.

### From TauCetiRoadmap.DeligneWeightsAndPurity and TauCetiRoadmap.EtaleDualityAndPerverseSheaves

DeligneWeightsAndPurity §0.1 (Weil numbers), §3.2 (geometrically constant lisse sheaves come from the base finite field), §7.15 (purity: for `X₀` proper smooth and `ℱ₀` lisse pure of weight `w`, `Hⁱ` is pure of weight `w + i`), §8.19 (pure lisse sheaves are geometrically semisimple). EtaleDualityAndPerverseSheaves §0.5 (Poincaré duality with torsion coefficients, Galois-equivariant) and §0.6 (`ℓ`-adic and rational Poincaré duality for smooth varieties; the integral derived form keeps its `Ext` term).

### From TauCetiRoadmap.LefschetzPencilsAndVanishingCycles and TauCetiRoadmap.ArithmeticGaloisRepresentations

LefschetzPencilsAndVanishingCycles §0.5 (`RΨ`, `RΦ` and the vanishing triangle), §0.8a (nearby-cycle and Betti comparison with the pinned Tate orientation), §1.1 (Grothendieck's monodromy theorem), §1.6 (maximal unipotence: minimal polynomial `(X − 1)^n`), §2.7 (nearby cycles at an ordinary quadratic point, odd relative dimension) and §2.8 (specialization sequence and Picard–Lefschetz formula `σx = x + (−1)^{m+1} t_ℓ(σ)(x, δ)δ` for relative dimension `2m + 1`, one quadratic point). ArithmeticGaloisRepresentations §2.4 (`GaloisRep.grothendieck_quasiUnipotent`: the monodromy operator `N` with `ρ(σ) = exp(N t_ℓ(σ))` on an open subgroup of inertia).

What LefschetzPencilsAndVanishingCycles must provide (gap:tame-point-specialization): For a smooth curve over a henselian discrete valuation ring of residue characteristic p, a section ∞ with complement U, a lisse ℓ-adic sheaf on U tamely ramified along ∞ (ℓ ≠ p) with local monodromy T at ∞, and a point t of U over a finite extension F_v whose valuation relative to ∞ is −d < 0, the inertia of F_v acts on the fibre at t through the powers of T given by d times the tame character t_ℓ, so that the Weil–Deligne monodromy operator is d·log T.

### From TauCetiRoadmap.PadicHodgeTheory and TauCetiRoadmap.LocalGaloisDeformationRings

PadicHodgeTheory §3.2 (filtered spaces and the sign dictionary, `HT(χ_p) = +1`), §3.3 (Fontaine's functors, de Rham ⇒ Hodge–Tate, compatibility with tensor, dual and determinant; `ℚ_p`-valued Hodge–Tate characters are de Rham), §3.4 (filtered `(φ, N)`-modules and weak admissibility `t_H(D′) ≤ t_N(D′)`), §3.6 (labelled ordinary flags: the crystalline slope criterion under the prescribed Hodge type, the criterion that a semistable representation with `dim ker N^j = j` and consecutive jumps `c_τ, …, c_τ + n − 1` is regular ordinary with `λ_{τ,i} = c_τ`, descent of a de Rham regular ordinary restriction, and the crystalline-character criterion on all units), §6.3 (ordinary filtrations, subquotients, duals), §6.4 (rank two: ordinary exactly when the Frobenius polynomial of `D_cris(V∨)` has a unit root), §§8.1–8.2 (proper smooth de Rham comparison with `E₁`-degeneration, crystalline comparison for proper smooth formal models, semistable comparison with Hyodo–Kato cohomology and total monodromy, potential semistability; functoriality). LocalGaloisDeformationRings §1.7 (`IsOrdinaryOfWeight` and its flag API), §6.8 (the relation "connects"), §6.19 (`ρ_{n,m,0} = ⊕ ε₂^{m(n−i)}(ε′₂)^{m(i−1)}`, with `Sym^{n−1}ρ_{2,m,0} = ρ_{n,m,0}` and `ρ_{n,m,0} ⊗ ρ_{m,1,0} = ρ_{nm,1,0}`), §6.25 (connectedness of crystalline weight-zero lifts).

### From TauCetiRoadmap.CrystallineCohomology and TauCetiRoadmap.PadicDifferentialEquationsAndRigidCohomology

CrystallineCohomology §CR.5:log-algebra.1 (prelog rings, log structures, charts), §CR.5:log-algebra.3 (log smoothness and Kato's chart criterion), §CR.6.1 (Hyodo–Kato complexes, Frobenius and the monodromy `N`), §CR.6.2 (the Hyodo–Kato comparison `H_HK ⊗_{K₀} K ≅ H_dR`), §CR.6.3 (base change and the comparison through a log smooth lift over `W[T]` with chart `1 ↦ T`). PadicDifferentialEquationsAndRigidCohomology §RD.7.7 (Katz–Messing: for smooth projective `X/𝔽_q` and `ℓ ≠ p`, the Frobenius characteristic polynomials on rigid, crystalline and `ℓ`-adic `Hⁱ` agree and lie in `1 + tℤ[t]`, also over every `𝔽_{q^r}`), §RD.3.34 (convergent `F`-isocrystals), §RD.3.43 and §RD.2.3 (the special Newton polygon lies on or above the generic one).

What PadicDifferentialEquationsAndRigidCohomology must provide (gap:curve-crystalline-companions): For a smooth curve X over a finite field of characteristic p and an irreducible lisse ℚ̄_ℓ-sheaf on X with finite-order determinant, a crystalline companion overconvergent F-isocrystal with the same Frobenius characteristic polynomials at closed points (Abe), together with full faithfulness of restriction from overconvergent to convergent F-isocrystals on smooth curves (Kedlaya), so that Drinfeld–Kedlaya's slope bounds on curves apply to companions of indecomposable lisse sheaves.

### From TauCetiRoadmap.SchemeAndStackFoundations, TauCetiRoadmap.AbelianSchemesAndArithmeticModuli and TauCetiRoadmap.AlgebraicModuliForArithmeticGeometry

SchemeAndStackFoundations §1.15 (torsors), §1.16 (contracted products and twisting, used for twisted forms by a finite-order automorphism), §4.11 (blowups and strict transforms), §4.20 (`IsStrictlySemistable` and the semistable alteration theorem). AbelianSchemesAndArithmeticModuli §A6.30 (`weilRestriction` exists for quasi-projective varieties over fields) and §A6.31 (`weilRestrictionSplits`: over a separable extension the Weil restriction becomes the product of the conjugates). AlgebraicModuliForArithmeticGeometry §3.4 (relative Hom and Weil restriction, base change).

What SchemeAndStackFoundations must provide (gap:equivariant-toroidal-semistable-reduction): For a log smooth (toroidal) scheme over a complete discrete valuation ring whose toroidal charts carry a finite group acting through characters on the chart coordinates, a unimodular subdivision of the conical complex gives, after a totally ramified base change of suitable degree e, an equivariant projective blowup that is strictly semistable and an isomorphism over the generic fibre (Kempf–Knudsen–Mumford–Saint-Donat).

### From TauCetiRoadmap.ArithmeticGaloisDuality

§R02.4.6, "Roots after prescribed totally real base change": for a CM field `F`, a finite-order `η : G_F → ℚ̄_l^×`, `m ≥ 1` and a number field `L`, there is a totally real finite Galois `M/ℚ` linearly disjoint from `L` with `η|_{G_{FM}} = ψ^m` for some `ψ : G_{FM} → ℚ̄_l^×`; unramifiedness can be kept above a finite set of odd primes where `η` is unramified. The roots are valued in an algebraic closure; §6.5 here derives the finite-field-valued form.

### From TauCetiRoadmap.BelyiMaps, TauCetiRoadmap.Chebotarev, TauCetiRoadmap.ModularCurves, TauCetiRoadmap.ModularCurvesPartII and TauCetiRoadmap.GlobalNumberFields

BelyiMaps §5.2 (the loops `γ0`, `γ1` at `1/2`, `periphInf = (periph1 * periph0)⁻¹`) and §5.6 (`FundamentalGroup U b ≃* FreeGroup (Fin 2)`, sending the generators to `periph0`, `periph1`). Chebotarev Layer 10 (`hasDirichletDensity_frobeniusPrimeSet`, density `#C/#G`). ModularCurves §5C (the twisted curve `Y(ρ)/ℚ` for `N ≥ 3`, its field points, geometric irreducibility reduced to connectedness) and ModularCurvesPartII §5.14 (compactified twisted curves `X(ρ)` and the connectedness comparison). GlobalNumberFields Layers 9–10 (Hecke characters and algebraic infinity types).

What ModularCurvesPartII must provide (gap:twisted-modular-curve-over-number-fields): For a number field F, an integer r ≥ 3 and a continuous ρ : G_F → GL₂(ℤ/r) with determinant the mod-r cyclotomic character, the twisted curve Y(ρ)/F with its universal elliptic curve, its geometric connectedness, a smooth model with good reduction of the universal curve over O_F[1/r], and for every prime p ∤ r the equality of the geometric mod-p monodromy of the universal curve with SL₂(𝔽_p).

### From TauCetiRoadmap.PotentialModularityAndCompatibleSystems

§1.1 (weakly compatible families of arbitrary rank and their comparison with Barnet-Lamb–Gee–Geraghty–Taylor §5.1), §1.4 (induction of families), §1.9 (algebraic character families: the family of `l`-adic realizations of a type-`A₀` Hecke character, de Rham everywhere and crystalline outside its conductor, and conversely every finitely ramified de Rham `l`-adic character is such an avatar after enlarging the coefficient field), §1.11 (`induced_character_purity`), §1.21 (`residual_irreducibility_density_one`), §2.14 (disjointness through towers: if `A` and `D` are linearly disjoint over `C` then `A ∩ BD = B`), §2.15 (extending finite local characters to finite-order idele class characters), §2.17 (`moret_bailly_three_local_conditions`), §2.18 (`moret_bailly_above_preliminary_field`, including smoothness and geometric connectedness of the Weil restriction), §2.20 (`surjectiveSpecialisation` and `schemeChebotarevPoints`: for `F` imaginary CM Galois over `ℚ`, smooth geometrically irreducible `T/F`, compatible local completions and opens, and a surjection `π₁^ét(T) ↠ G`, a CM point whose specialization still surjects onto `G`), §3.1 (`exists_cm_character_with_local_reductions`).

## How to read the build

Layer 0 is linear algebra and finite group theory with no geometry: hypergeometric pairs, Levelt's theorem, unitary groups and the classification inputs used to recognise residual monodromy. Layer 1 constructs the Dwork pencil, its symmetry groups, its exponent data with their index sets, and the quotient family over `ℙ¹ − {0, 1, ∞}`. Layer 2 cuts the eigen-local-systems out of the middle cohomology and computes their rank, duality and real forms. Layer 3 builds Katz's hypergeometric sheaves and compares them with the Dwork eigensheaves, producing the comparison characters and the twisted systems `W`. Layer 4 computes the complex monodromy: eigenvalues at zero, a transvection at one, a single unipotent block at infinity and the companion-matrix model. Layer 5 identifies the residual monodromy groups, first as subgroups generated by a hypergeometric pair over a finite field and then geometrically, and builds the geometrically irreducible level-structure torsors. Layer 6 computes Frobenius determinants by Gauss sums and matches determinants with finite-field-valued roots. Layer 7 proves the local Galois properties of the fibres away from infinity and assembles the weakly compatible systems; Layer 8 does the same near infinity through equivariant semistable models. Layer 9 combines everything with Moret-Bailly's theorem into the switching theorems.

## Layer 0: Linear algebra and finite linear groups

The monodromy of a Dwork eigen-local-system around the three punctures of `ℙ¹ − {0, 1, ∞}` is a triple `(h₀, h₁, h∞)` with `h₀h₁h∞ = 1` in which `h₁` differs from the identity by a rank-one map. Levelt's theorem says that such a triple is determined up to conjugacy by the characteristic polynomials of `h₀` and `h∞` when these have no common root; the triple is then absolutely irreducible. Over a finite field the generated group is generated by transvections, and the Zalesskii–Serezhkin classification reduces its identification to special linear, symplectic and special unitary groups over subfields. The unitary groups, Hermitian forms, simplicity statements and the Goursat-type product lemma of this layer are the finite-group inputs of Layer 5.

### 0.1 Pseudo-reflections and transvections

Let `K` be a field and `V` a `K`-vector space of finite dimension `n ≥ 1`. A pseudo-reflection is an element of Mathlib's `LinearEquiv.dilatransvections K V` other than the identity, that is, an invertible `g` with `rank(g − 1) = 1`; a transvection is an element of `LinearEquiv.transvections K V` other than the identity, that is, `g = 1 + v ⊗ φ` with `v ≠ 0`, `φ ≠ 0` and `φ(v) = 0`. A subgroup is generated by transvections when it is generated by its non-identity transvections. (Qian, Lemma 3.3(3) and Lemma 3.4, arXiv v1 pp. 13–14; Beukers–Heckman, Theorem 3.5.)

The following facts complete Mathlib's API for this layer.

- A pseudo-reflection `g = 1 + v ⊗ φ` satisfies `(g − 1)² = φ(v)(g − 1)`; it is a transvection exactly when `φ(v) = 0`, equivalently when it is unipotent.
- The characteristic polynomial of a pseudo-reflection is `(X − 1)^{n−1}(X − det g)`, with `det g = 1 + φ(v)`; a transvection has characteristic polynomial `(X − 1)^n`.
- A pseudo-reflection that is not a transvection is diagonalisable, acting by `det g ≠ 1` on the line `Kv` and trivially on the hyperplane `ker φ`.
- Conjugates and inverses of pseudo-reflections (transvections) are pseudo-reflections (transvections), and both notions are invariant under extension of scalars `K → K′`.
- For `n ≥ 1` the group `SL_n(K)` is generated by its transvections: Mathlib's factorisation of an element of `SL_n(K)` leaves a diagonal factor of determinant one, which is a product of elementary transvections because `diag(a, a⁻¹)` is `w(a)w(−1)` with `w(a) = E₁₂(a)E₂₁(−a⁻¹)E₁₂(a)`.

*Needs:* Mathlib `LinearEquiv.dilatransvections`, `LinearEquiv.mem_dilatransvections_iff_finrank`, `LinearEquiv.transvections`, `LinearEquiv.mem_transvections_iff_mem_dilatransvections_and_fixedReduce_eq_one`, `LinearMap.transvection.det`, `LinearEquiv.transvection.baseChange`, `Matrix.SpecialLinearGroup.exists_list_transvec_mul_diagonal_mul_list_transvec`, `Matrix.charpoly`.

**Checks.**

- Over `ℚ`, `diag(1, 2)` is a pseudo-reflection with determinant `2` and is not a transvection; a definition requiring only `det g ≠ 1` would also admit `−1 ∈ GL₂(ℚ)`, whose displacement `−2` has rank two.
- The identity is in both of Mathlib's sets but is neither a pseudo-reflection nor a transvection here: `rank(1 − 1) = 0`.
- `Matrix.transvection 0 1 1` in `GL₂(ZMod 3)` is a transvection, with characteristic polynomial `(X − 1)²`.
- The `3 × 3` unipotent Jordan block is unipotent but not a transvection: `g − 1` has rank two.
- `diag(0, 1)` over `ℚ` has `rank(g − 1) = 1` but is not invertible, so it is not a pseudo-reflection.

### 0.2 Rank-one difference of companion matrices

Let `K` be a field, `n ≥ 1`, and `p ≠ q` monic polynomials of degree `n` in `K[X]` with `p(0) ≠ 0`. For the companion matrices `C(p)`, `C(q)` of ClassicalArithmeticCompletion §2.46, `C(q)C(p)⁻¹` fixes `e₂, …, e_n` and `C(q)C(p)⁻¹ − 1` has rank exactly one, with nonzero entries only in its first column. (Qian, Lemma 3.4 and the displayed matrices, arXiv v1 p. 14; Barnet-Lamb–Geraghty–Harris–Taylor, Corollary 4.4, p. 32.)

*Needs:* ClassicalArithmeticCompletion §2.46 (`Polynomial.companion`, `Polynomial.det_companion`) and §2.60 (characteristic polynomial); Mathlib `Matrix.rank`.

*Proof sketch.* For `1 ≤ i < n`, `C(p)` sends `e_i` to `e_{i+1}`, so `C(p)⁻¹e_{i+1} = e_i` and `C(q)C(p)⁻¹e_{i+1} = e_{i+1}`. The displacement therefore has at most one nonzero column, and it is nonzero because `p ≠ q`. The single-Jordan-block statement for `C((X − 1)^n)` is the minimal-polynomial theorem of ClassicalArithmeticCompletion §2.46 applied to `(X − 1)^n`.

**Checks.**

- `C((X − 1)²) = [[0, −1], [1, 2]]` is conjugate to `[[1, 1], [0, 1]]` and not to the identity.
- For `p = (X − 1)²` and `q = (X − 2)(X − 4)` over `ℚ`, `C(q)C(p)⁻¹ − 1` has rank one.
- For `p = q` the displacement is zero: distinctness is needed for rank exactly one.

### 0.3 Levelt's rigidity theorem

Let `K` be a field and `A₀, A∞, B₀, B∞ ∈ GL_n(K)`. Suppose `A∞` and `B∞` have a common characteristic polynomial `p`, `A₀⁻¹` and `B₀⁻¹` have a common characteristic polynomial `q`, `p` and `q` are coprime in `K[X]` (equivalently, have no common root in an algebraic closure), and `A₀⁻¹A∞⁻¹ − 1` and `B₀⁻¹B∞⁻¹ − 1` have rank at most one. Then there is `g ∈ GL_n(K)` with `gA₀g⁻¹ = B₀` and `gA∞g⁻¹ = B∞`. In particular every such pair is conjugate to `(C(q)⁻¹, C(p))`, whose third element is `C(q)C(p)⁻¹`, and a triple `(h₀, h₁, h∞)` with `h₀h₁h∞ = 1`, `h₁` a pseudo-reflection and prescribed coprime characteristic polynomials of `h∞` and `h₀⁻¹` is unique up to simultaneous conjugation. Prove it as `levelt_rigidity`. (Beukers–Heckman, Theorem 3.5 and proof, pp. 331–332, with Definition 2.9, p. 330, for their order of the triple; Qian, Lemma 3.4, arXiv v1 p. 14; Barnet-Lamb–Geraghty–Harris–Taylor, Corollary 4.4, p. 32.)

*Needs:* §0.1; §0.2; ClassicalArithmeticCompletion §§2.46, 2.60.

*Proof sketch.* Put `X = A∞`, `Y = A₀⁻¹`; then `X − Y` has rank at most one, so `W = ker(X − Y)` has codimension at most one, and `W ∩ X⁻¹W ∩ ⋯ ∩ X^{−(n−2)}W` contains some `e ≠ 0`. Then `X^{j+1}e = YX^je` for `0 ≤ j ≤ n − 2`. If `e, Xe, …, X^{n−1}e` were dependent, the first dependence in degree `d ≤ n − 1` would give a nonzero `X`-stable subspace inside `W`, on which `X = Y`; its characteristic polynomial divides both `p` and `q`, contradicting coprimality. In this basis `X` and `Y` both act as the shift on the first `n − 1` vectors, so they are the companion matrices of `p` and `q`. The rank-zero case forces `p = q`, which coprimality allows only for `n = 0`.

**Checks.**

- For `n = 1`, with `A∞ = α` and `A₀ = β⁻¹`, `A₀⁻¹A∞⁻¹ = βα⁻¹`; coprimality is `α ≠ β`, and `g = 1` conjugates the pair to `(C(X − β)⁻¹, C(X − α))`.
- For `p = (X − 1)^n` and `q = ∏_{b∈B}(X − ζ_N^{−b})` with `0 ∉ B` the theorem identifies the Dwork monodromy (§4.5).
- Without coprimality the conclusion fails: for `n = 2` take `(A₀, A∞) = (1, 1)` and `(B₀, B∞) = (1, J)` with `J = [[1, 1], [0, 1]]`. All four characteristic polynomials are `(X − 1)²` and the displacements `0` and `J⁻¹ − 1` have rank at most one, but `A∞ = 1` is not conjugate to `J`.

### 0.4 Irreducibility of hypergeometric groups

Let `K` be a field and `h₀, h₁, h∞ ∈ GL_n(K)` with `h₀h₁h∞ = 1` and `h₁` a pseudo-reflection. If `h∞` and `h₀⁻¹` have no common eigenvalue in an algebraic closure of `K`, the subgroup `⟨h₀, h∞⟩` acts absolutely irreducibly on `Kⁿ`. (Beukers–Heckman, Proposition 3.3 and proof, p. 331; Qian, after Definition 3.6, arXiv v1 p. 15; Barnet-Lamb–Geraghty–Harris–Taylor, proof of Lemma 4.6, pp. 32–33.)

*Needs:* §0.1.

*Proof sketch.* Work over `K̄`. A nonzero proper subspace `U` stable under `h₀, h∞` is stable under `h₁`, whose displacement has image a line `L`. If `L ⊆ U`, `h₁` acts trivially on `K̄ⁿ/U`; otherwise `(h₁ − 1)U ⊆ U ∩ L = 0` and `h₁` is trivial on `U`. On the piece where `h₁` is trivial, `h₀h∞ = 1`, so `h∞` and `h₀⁻¹` share an eigenvalue.

**Checks.**

- For `n = 2`, `K = 𝔽₇`, `h∞ = C((X − 1)²)` and `h₀ = C((X − 2)(X − 4))⁻¹`, the group `⟨h₀, h∞⟩` has no invariant line.
- If `h₀ = h∞⁻¹` (so `h₁ = 1`) every eigenvector of `h∞` spans an invariant line: the pseudo-reflection hypothesis is needed.
- For `h∞ = 1` and `h₀ = diag(2, 1)` over `ℚ`, `h₁ = h₀⁻¹` is a pseudo-reflection but `h∞` and `h₀⁻¹` share the eigenvalue `1`, and the group is reducible.

### 0.5 Finite unitary groups

Let `k` be a finite field, `ℓ/k` its quadratic extension with nontrivial automorphism `c`, and for a matrix `M` over `ℓ` put `M† = (M^c)ᵀ`. For `n ≥ 1` define the general unitary group `GU_n(ℓ)` as the matrices `M ∈ GL_n(ℓ)` with `M†M = ν(M)·1` for some `ν(M) ∈ k^×`, its multiplier `ν : GU_n(ℓ) → k^×`, the unitary group `U_n(ℓ) = ker ν` and the special unitary group `SU_n(ℓ) = U_n(ℓ) ∩ SL_n(ℓ)`. For a finite field `k′` with an automorphism `σ` of order two, `SU(n, k′) = {g ∈ SL_n(k′) : σ(g)ᵀg = 1}` is `SU_n(k′)` for the extension `k′/k′^σ`. After installing `c` as the star of `ℓ`, `U_n(ℓ)` and `SU_n(ℓ)` are Mathlib's `Matrix.unitaryGroup` and `Matrix.specialUnitaryGroup`. (Boxer–Calegari–Gee–Newton–Thorne, §4.3, Definition 4.3.1, arXiv v3 p. 45; Qian, proof of Lemma 3.6, arXiv v1 p. 15.)

The definition has the following API.

- `M ↦ M†` is an anti-automorphism of `M_n(ℓ)`: `(AB)† = B†A†` and `M†† = M`.
- `GU_n(ℓ)` is a subgroup of `GL_n(ℓ)` and `ν` is a homomorphism; for `n ≥ 1` the multiplier is unique, read off any diagonal entry of `M†M`.
- For `M ∈ GU_n(ℓ)` with multiplier `a`, `c(det M)·det M = aⁿ`; hence `det` maps `U_n(ℓ)` onto the norm-one subgroup of `ℓ^×` and `[U_n(ℓ) : SU_n(ℓ)] = q + 1` with `q = #k`.
- A nonzero scalar `b·1` lies in `GU_n(ℓ)` with multiplier `N_{ℓ/k}(b)`.
- `#SU_n(𝔽_{q²}) = q^{n(n−1)/2} ∏_{i=2}^{n} (q^i − (−1)^i)`.
- Membership in `U_n(ℓ)` is Mathlib's `star M * M = 1` and in `SU_n(ℓ)` additionally `det M = 1`.
- For the linear-first form `B(x, y) = y†Ax` with `A = P†P`, `g ↦ PgP⁻¹` carries `{g : g†Ag = A, det g = 1}` onto `SU_n(ℓ)`.

*Needs:* Mathlib `Matrix.GeneralLinearGroup`, `Matrix.SpecialLinearGroup`, `Matrix.conjTranspose`, `Matrix.unitaryGroup`, `Matrix.specialUnitaryGroup`, `Matrix.mem_specialUnitaryGroup_iff`, `FiniteField.frobenius_pow`, `FiniteField.unitsMap_norm_surjective`.

The published definition writes the special unitary group for the multiplier kernel; the groups used afterwards in that paper (Proposition 4.4.2, Lemma 5.2.3) are `U_n(ℓ) ∩ SL_n(ℓ)`, as here.

**Checks.**

- `U₁(𝔽₉)` is the group of norm-one elements of `𝔽₉^×`, of order `4`, and `SU₁(𝔽₉)` is trivial.
- `SU₂(𝔽₉) ≅ SL₂(𝔽₃)`, of order `24 = 3·(9 − 1)`, matching the order formula.
- `diag(ζ, 1)` with `ζ ∈ 𝔽₉` of norm one and `ζ ≠ 1` lies in `U₂(𝔽₉)` with determinant `ζ`, so `U₂(𝔽₉) ≠ SU₂(𝔽₉)`: the multiplier kernel is not the special unitary group.
- For `n = 0` every scalar satisfies `M†M = a·1`, so no multiplier function exists; the definition requires `n ≥ 1`.

### 0.6 Hermitian and skew-Hermitian forms over a quadratic extension

Let `ℓ/k` be a quadratic extension of fields with nontrivial automorphism `c` and `V` a finite-dimensional `ℓ`-vector space. A Hermitian form is a `k`-bilinear `⟨·,·⟩ : V × V → ℓ` with `⟨ax, y⟩ = a⟨x, y⟩`, `⟨x, ay⟩ = c(a)⟨x, y⟩` and `⟨y, x⟩ = c⟨x, y⟩`; it is skew-Hermitian if instead `⟨y, x⟩ = −c⟨x, y⟩`. It is nondegenerate if `x ↦ ⟨x, ·⟩` is injective. Its isometry group and its similitude group (isometries up to a scalar in `k^×`) are defined as usual; for the standard form `∑ xᵢ c(yᵢ)` they are `U_n(ℓ)` and `GU_n(ℓ)`. (Boxer–Calegari–Gee–Newton–Thorne, Definitions 4.3.2 and 4.4.1, Remark 4.3.3, arXiv v3 pp. 45–47.)

The definition has the following API.

- In coordinates, with `A_{ij} = B(e_j, e_i)`, `B(x, y) = y†Ax`, and `B` is Hermitian exactly when `A† = A`.
- Hermitian symmetry of `B` is Mathlib's `LinearMap.IsSymm` of the flipped form, which is `c`-semilinear in the first and linear in the second variable.
- For `η ≠ 0` with `c(η) = −η`, `ηB` is skew-Hermitian exactly when `B` is Hermitian.
- For nondegenerate `B` on `V ≠ 0`, the similitudes form a group and each has a unique multiplier in `k^×`, multiplicative in the similitude.

*Needs:* Mathlib `LinearMap.IsSymm`, `LinearMap.SeparatingLeft`; §0.5.

**Checks.**

- On `𝔽₉ ⊃ 𝔽₃`, `(x, y) ↦ x y³` is Hermitian and nondegenerate.
- The zero form is both Hermitian and skew-Hermitian and is degenerate unless `V = 0`.
- The `ℓ`-bilinear form `(x, y) ↦ xy` on `𝔽₉` is not Hermitian: it is linear rather than `c`-semilinear in `y`.
- For `η = 0`, `ηB` is skew-Hermitian for every `B`, so the converse of the scaling statement needs `η ≠ 0`.

### 0.7 Uniqueness of Hermitian forms over finite fields

Let `ℓ/k` be a quadratic extension of finite fields and `V` an `ℓ`-vector space of dimension `n`. Every nondegenerate Hermitian form on `V` has an orthonormal basis; hence any two are isometric, the isometry group of any of them is conjugate in `GL(V)` to `U_n(ℓ)` and its similitude group to `GU_n(ℓ)`. (Boxer–Calegari–Gee–Newton–Thorne, Lemma 4.3.4 with proof, arXiv v3 p. 46, citing Lewis, §4.)

*Needs:* §§0.5–0.6; Mathlib `FiniteField.unitsMap_norm_surjective`, `Algebra.trace_surjective`.

*Proof sketch.* A nonzero Hermitian form has an anisotropic vector: if `⟨x, x⟩ = 0` for all `x`, then `⟨x + ay, x + ay⟩ = Tr_{ℓ/k}(c(a)⟨x, y⟩)` vanishes for all `a`, and surjectivity of the trace of the separable extension `ℓ/k` forces `⟨x, y⟩ = 0`, also in characteristic two. Rescale an anisotropic `x` with `⟨x, x⟩ = d ∈ k^×` by `a` with `N(a) = d⁻¹`, using surjectivity of the norm, split off the line and induct on its nondegenerate orthogonal complement.

**Checks.**

- On `𝔽₉ = 𝔽₃[i]`, `N(i) = 1` and `N(1 + i) = 2 = −1`; scaling the second basis vector by `1 + i` identifies `diag(1, 1)` with `diag(1, −1)`.
- Over `ℂ/ℝ` the forms `diag(1, 1)` and `diag(1, −1)` are not isometric: the norm is not surjective onto `ℝ^×`, which is the hypothesis used.
- In dimension one every nondegenerate form `d·x c(y)`, `d ∈ k^×`, is isometric to `x c(y)`.

### 0.8 Conjugate self-dual representations are unitary

Let `ℓ/k` be a quadratic extension of finite fields with generator `c`, `G` a group, `V` an absolutely irreducible `ℓ`-linear representation of `G` of dimension `n`, and `χ : G → k^×` a character. If there is an `ℓ`-linear `G`-isomorphism `V^∨ ≅ V^c ⊗ χ⁻¹`, then `V` carries a nondegenerate Hermitian form with `⟨gx, gy⟩ = χ(g)⟨x, y⟩`, unique up to `k^×`, and in a suitable basis `G` acts through `GU_n(ℓ)` with multiplier `χ`. (Boxer–Calegari–Gee–Newton–Thorne, Lemma 4.3.4 with proof, arXiv v3 p. 46.)

*Needs:* §§0.5–0.7; Mathlib `groupCohomology.isMulCoboundary₁_of_isMulCocycle₁_of_aut_to_units`.

*Proof sketch.* The isomorphism is a nondegenerate equivariant pairing `ψ : V × V^c → χ`, unique up to `ℓ^×` by Schur's lemma. The pairing `(x, y^c) ↦ c(ψ(y, x^c))` is another, so it is `λψ`, and applying the construction twice gives `N_{ℓ/k}(λ) = 1`. Hilbert 90 writes `λ = c(η)/η`; rescaling by `η⁻¹` gives a Hermitian form, and §0.7 gives an orthonormal basis.

**Checks.**

- For `n = 1` and `G` acting on `ℓ` through `θ` with `θ·c(θ) = χ`, the conclusion is that `θ` takes values of norm `χ`.
- The trivial representation with `χ = 1` gives the standard form `x c(y)`.
- If `V` is not absolutely irreducible, uniqueness up to `k^×` fails: on `V = ℓ ⊕ ℓ` with trivial `G`, `diag(1, 1)` and `diag(1, 2)` are invariant forms not proportional to each other.

### 0.9 Normal subgroups of `SL_n` and `SU_n` over finite fields

Let `k` be a finite field of odd characteristic with `q` elements and `n ≥ 2`. (1) Unless `(n, q) = (2, 3)`, `SL_n(k)` is perfect, its centre is the group of scalar `n`-th roots of unity, every proper normal subgroup is central, and `PSL_n(k)` is a nonabelian simple group. (2) For the quadratic extension `ℓ/k` and `n ≥ 3`, `SU_n(ℓ)` is perfect, its centre consists of its scalars, every proper normal subgroup is central, and `PSU_n(ℓ)` is nonabelian simple. (3) Consequently, outside `(n, q) = (2, 3)` for `SL`, the composition factors of `SL_n(k)` (resp. `SU_n(ℓ)`) are `PSL_n(k)` (resp. `PSU_n(ℓ)`) and cyclic groups of order dividing `n`, every nontrivial quotient has `PSL_n(k)` (resp. `PSU_n(ℓ)`) as a composition factor, and there is no nontrivial abelian quotient. The solvable group `Sp₂(𝔽₃) = SL₂(𝔽₃)` is handled by its composition factors in §5.10. (Qian, Lemma 3.6 and Proposition 3.7, arXiv v1 pp. 15–16; Boxer–Calegari–Gee–Newton–Thorne, Lemma 5.2.3, arXiv v3 p. 51; Barnet-Lamb–Geraghty–Harris–Taylor, proofs of Corollaries 4.7–4.8, pp. 33–34.)

*Needs:* §0.1; §0.5; Mathlib `MulAction.IwasawaStructure.isSimpleGroup`, `Matrix.ProjectiveSpecialLinearGroup.rank_two_simple`, `Matrix.SpecialLinearGroup.center_equiv_rootsOfUnity`, `Matrix.SL2.commutator_eq_top`.

*Proof sketch.* `SL_n(k)` is generated by transvections (§0.1) and acts primitively on lines; the transvections with a given centre form an abelian normal subgroup of the line stabiliser whose conjugates generate, and commutators of transvections give perfectness outside `(2, 2)` and `(2, 3)`; Iwasawa's criterion gives simplicity of `PSL_n(k)`. For `SU_n` use the primitive action on isotropic lines and the long-root subgroup, which is the centre of the unipotent radical of the line stabiliser (the radical itself is not abelian in general); its conjugates generate `SU_n(ℓ)` and give perfectness for `n ≥ 3`. Central quotients are cyclic of order dividing `n` by the description of the centre.

**Checks.**

- `PSL₃(𝔽₃)` is simple of order `5616`.
- `SL₂(𝔽₃)` is not perfect: its abelianisation has order three, which is why `(2, 3)` is excluded.
- The centre of `SL₃(𝔽₇)` is `{1, ω, ω²}` with `ω` a primitive cube root of unity in `𝔽₇`, of order `3 = gcd(3, 6)`.

### 0.10 Simple linear groups in different characteristics

Let `n ≥ 2`, `l₁ ≠ l₂` odd primes, and `k₁, k₂` finite fields of characteristics `l₁, l₂`. (1) If `max(l₁, l₂) > 10`, then `PSL_n(k₁)` is isomorphic neither to `PSL_n(k₂)` nor (for `n ≥ 3`) to `PSU_n(k₂′)` with `k₂′/k₂` quadratic, `PSU_n(k₁′) ≇ PSU_n(k₂′)` for `n ≥ 3`, and the same holds with the roles exchanged; consequently no composition factor of `SL_n(k₂)` or `SU_n(k₂′)` is isomorphic to `PSL_n(k₁)` or `PSU_n(k₁′)`. (2) For even `n`, `PSp_n(k₁) ≇ PSp_n(k₂)` with no condition on the size of `l₁, l₂`, and no composition factor of `Sp_n(k₂)` is isomorphic to `PSp_n(k₁)` when the latter is simple. (Qian, Proposition 3.7 with proof, arXiv v1 p. 16, citing Artin, Theorem 2; Barnet-Lamb–Geraghty–Harris–Taylor, proof of Corollary 4.8, p. 34; Boxer–Calegari–Gee–Newton–Thorne, Lemma 5.2.3, arXiv v3 p. 51.)

*Needs:* §0.9.

*Proof sketch.* (1) Compare the orders of these groups through their `l₁`-parts and the cyclotomic factors `qⁱ − 1`, following Artin's determination of the classical simple groups by their orders; the condition `max(l₁, l₂) > 10` removes the small cross-characteristic coincidences. The statement is restricted to the same-rank linear and unitary families: order alone does not separate every pair of finite groups of Lie type (types `B` and `C` share orders). (2) For odd `q`, `#PSp_{2m}(𝔽_q) = q^{m²} ∏_{i=1}^m (q^{2i} − 1)/2` is strictly increasing in `q`, so isomorphic groups have the same `q`. The consequences follow from §0.9(3) and its symplectic analogue (composition factors `PSp_n` and groups of order `2`, with `Sp₂(𝔽₃)` solvable).

**Checks.**

- `PSL₂(𝔽₁₁)` has order `660`, which is not `3^r(3^{2r} − 1)/2` for any `r`, so it is not `PSL₂(𝔽_{3^r})`.
- `PSL₂(𝔽₄) ≅ PSL₂(𝔽₅)` and `PSL₂(𝔽₇) ≅ PSL₃(𝔽₂)` are the kind of coincidence excluded by oddness and `max(l₁, l₂) > 10`.
- `PSL₂(𝔽₉) ≅ A₆` is in characteristic three; it is not isomorphic to `PSL₂(𝔽_q)` for any `q` of characteristic `l₂ ≥ 11`, since `#A₆ = 360` and `q(q² − 1)/2 ≥ 660`.
- `PSp₂(𝔽₅) ≅ A₅` (order `60`) and `PSp₂(𝔽₇)` (order `168`) differ, as the monotonicity in (2) predicts.

### 0.11 Irreducible groups generated by transvections

Let `l` be an odd prime and `k′` a finite field of characteristic `l`. (1) For `n > 2`, an absolutely irreducible subgroup `G ⊆ GL_n(k′)` generated by transvections is conjugate in `GL_n(k′)` to `SL_n(k)`, `Sp_n(k)` (`n` even) or `SU(n, k)` (`[k : 𝔽_l]` even) for some subfield `k ⊆ k′`. (2) For `n = 2`, an absolutely irreducible subgroup of `SL₂(k′)` generated by transvections is conjugate to `SL₂(k)` for a subfield `k ⊆ k′`, or `l = 3` and it is a binary icosahedral group `SL₂(𝔽₅)`. (Zalesskii–Serezhkin, main theorem, in the form applied by Qian, proof of Lemma 3.6, arXiv v1 p. 15, and Barnet-Lamb–Geraghty–Harris–Taylor, proof of Lemma 4.6, pp. 32–33; for (2), Dickson's classification of the subgroups of `PSL₂(𝔽_q)`.)

*Needs:* §0.1; §0.5.

*Proof sketch.* (1) is the odd-characteristic, dimension-greater-than-two case of the Zalesskii–Serezhkin classification; no argument through an element of large order replaces the classification. (2) In Dickson's list of subgroups of `PSL₂(𝔽_q)`, the cyclic, dihedral and Borel-type subgroups generated by elements of order `l` are reducible, `A₄` and `S₄` contribute only `SL₂(𝔽₃)`, `PGL₂(𝔽_{q′})` contributes its index-two subgroup `PSL₂(𝔽_{q′})`, and `A₅` occurs in characteristic three, where its elements of order three are images of transvections.

**Checks.**

- For `n = 2` the conclusion of (1) fails: `SL₂(𝔽₅) ⊂ SL₂(𝔽₉)` is absolutely irreducible and generated by its elements of order three, which are transvections, but is none of `SL₂(k)` or `SU(2, k)`; it is the exception of (2).
- `SL_n(𝔽_l)` itself is generated by transvections (§0.1) and is the case `k = k′ = 𝔽_l`.
- A reducible group generated by transvections, such as the upper unitriangular group of `GL₃(𝔽₃)`, is outside the hypotheses.

### 0.12 Products of groups with distinct simple quotients

Let `H₁, H₂` be finite groups such that every nontrivial quotient of `H₁` has a composition factor isomorphic to a fixed nonabelian simple group `S₁` that is not a composition factor of `H₂`. If `Γ ≤ H₁ × H₂` surjects onto both factors, then `Γ = H₁ × H₂`. The same holds with the factors exchanged; `H₂` need not be perfect, so the statement applies to the solvable `Sp₂(𝔽₃)`. (Qian, proof of Proposition 3.7, arXiv v1 p. 16; Boxer–Calegari–Gee–Newton–Thorne, proof of Proposition 4.4.2, arXiv v3 p. 47; Barnet-Lamb–Geraghty–Harris–Taylor, proof of Corollary 4.8, p. 34.)

*Needs:* Mathlib `Subgroup.goursat`.

*Proof sketch.* By Goursat's lemma `Γ` is the preimage of the graph of an isomorphism `H₁/N₁ ≅ H₂/N₂`. If `N₁ ≠ H₁`, then `H₁/N₁` has `S₁` as a composition factor while `H₂/N₂` has only composition factors of `H₂`, a contradiction; so `N₁ = H₁`, then `N₂ = H₂`.

**Checks.**

- For `H₁ = SL₃(𝔽₁₃)` and `H₂ = SL₃(𝔽_{3^r})` every subgroup surjecting onto both factors is everything.
- For `H₁ = H₂ = SL₃(𝔽₁₃)` the diagonal surjects onto both factors and is proper: the hypothesis on `S₁` is necessary.
- For `H₁ = SL₂(𝔽₁₃)` and `H₂ = SL₂(𝔽₃)` the lemma applies although `H₂` is solvable, since `PSL₂(𝔽₁₃)` is not a composition factor of `H₂`.

### Examples

For `p = (X − 1)³` and `q = (X − ζ)(X − ζ²)(X − ζ^{398})` over `𝔽_l(ζ)`, `ζ` of order `N = 401` and `l ∤ 401`, the companion pair `(C(q)⁻¹, C(p))` satisfies Levelt's hypotheses (§0.3), is absolutely irreducible (§0.4), and its third element `C(q)C(p)⁻¹` is a transvection (§§0.1–0.2) because `1 + 2 + 398 ≡ 0 (mod 401)` makes `det C(q) = 1`.

### Dependencies

Mathlib transvections, dilatransvections, Goursat, Iwasawa, unitary and symplectic groups, Hilbert 90, norm and trace surjectivity; ClassicalArithmeticCompletion §§2.46, 2.60. No geometric input.

## Layer 1: The Dwork pencil and its exponent data

The Dwork pencil is a one-parameter family of degree-`N` hypersurfaces in `ℙ^{N−1}` with a large diagonal symmetry group. A character of the fibrewise symmetry group `H₀` is recorded by an exponent vector `a ∈ (ℤ/Nℤ)^N`; the rank of the corresponding eigen-local-system is the number of residues `b` with `b + a_j ≠ 0` for all `j`. Two families of exponent vectors are used: Qian's asymmetric data, whose index set has trivial multiplicative stabiliser, and the self-dual data of Barnet-Lamb–Geraghty–Harris–Taylor, whose index set is stable under `b ↦ −b`. Both are zero-shaped: zero occurs `n + 1` times and every other residue at most once. The base change `t ↦ t^N` relates the pencil to a family over the thrice-punctured line, where the monodromy is a hypergeometric triple.

### 1.1 Auxiliary moduli with prescribed order of `l`

Let `l` be a prime, `s ≥ 1` and `S` a finite set of primes. There is a positive odd integer `N`, divisible by no prime of `S ∪ {l}`, such that the order `r` of `l` in `(ℤ/Nℤ)^×` is divisible by `s` and, when `r` is even, `N ∤ l^{r/2} + 1`. Putting every prime below a given bound into `S` makes `N` larger than that bound and prime to any given integer. In particular for every `m ≥ 1` there is such an `N` with `m | r`, so that every finite field of characteristic `l` and degree dividing `m` embeds in `𝔽_l(ζ_N)`. (Qian, Lemma 2.3 with proof, arXiv v1 pp. 8–9; Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 6.1 and proof, p. 40.)

*Needs:* Mathlib `orderOf`, `ZMod.pow_totient`, `Polynomial.cyclotomic`, `Nat.exists_prime_and_dvd`.

*Proof sketch.* Write `s = 2^a ∏ pᵢ^{aᵢ}`. For large `t` choose odd prime factors `A` of `l^{2^{t−2}} + 1` and `B` of `l^{2^{t−1}} + 1` outside `S`; both numbers are `2 mod 4` for odd `l` and odd for `l = 2`. The orders of `l` modulo `A` and `B` are `2^{t−1}` and `2^t`, and `l^{2^{t−1}}` is `1` modulo `A` and `−1` modulo `B`, so `−1` is not a power of `l` modulo `M₀ = AB`. For each odd `pᵢ` and large `tᵢ ≥ aᵢ`, the cyclotomic value `Φ_{pᵢ}(l^{pᵢ^{tᵢ−1}})` exceeds `pᵢ`, any prime factor in the exclusion set of that stage is `pᵢ` itself and divides it exactly once (expand the geometric sum modulo `pᵢ²`), so there is a new prime `Mᵢ` with order of `l` exactly `pᵢ^{tᵢ}`. Then `N = M₀ ∏ Mᵢ` works by the Chinese remainder theorem. No primitive-divisor theorem is needed.

**Checks.**

- A prime `N` never satisfies both conditions with `r` even: `(ℤ/Nℤ)^×` is cyclic, so `l^{r/2} ≡ −1`.
- For `l = 3` and `s = 4`, the composite `N = 35` works: `r = lcm(4, 6) = 12` and `3⁶ ≡ 29 ≢ −1 (mod 35)`.
- For `l = 2`, `s = 1`, `N = 7` has `r = 3` odd, so the second condition is vacuous.

### 1.2 The Dwork pencil

Let `N ≥ 3` be odd. Over `T₀ = Spec ℤ[1/N][t, (1 − t^N)⁻¹]` (the projective line minus `∞` and `μ_N`) let `Y ⊂ ℙ^{N−1} × T₀` be the hypersurface `X₁ᴺ + ⋯ + X_Nᴺ = N t X₁⋯X_N` and `π : Y → T₀` the projection. Then `π` is smooth and projective of relative dimension `N − 2` with geometrically connected fibres; the fibre `Y₀` is the Fermat hypersurface of degree `N`; and over a point of `μ_N` the fibre has exactly `N^{N−2}` singular points, all ordinary double points, forming one free orbit of the group `H₀` of §1.3. Write `Y_s` for the fibre at `s`. (Qian, opening of §3, arXiv v1 p. 10; Barnet-Lamb–Geraghty–Harris–Taylor, §4, p. 26; Boxer–Calegari–Gee–Newton–Thorne, §4.1, arXiv v3 p. 40.)

The construction has the following API.

- `π` is smooth and projective of relative dimension `N − 2` over `T₀`; its formation commutes with every base change `T′ → T₀`, and for a field `K` over `ℤ[1/N]` and `t ∈ K` with `t^N ≠ 1` the fibre is the hypersurface `∑ Xᵢᴺ = N t ∏ Xᵢ` over `K`.
- The fibre at `t = 0` is the Fermat hypersurface `∑ Xᵢᴺ = 0`.
- Every geometric fibre of `π` is connected, and every smooth fibre is geometrically integral.
- Over `t = 1` the singular points are the `H₀`-translates of `(1 : ⋯ : 1)`, each an ordinary double point; there are `N^{N−2}` of them.

*Needs:* Mathlib `AlgebraicGeometry.Smooth`, `MvPolynomial`; EtaleCohomologyFoundations §F.3 for the lissity of its higher direct images (used in Layer 2).

*Proof sketch.* The partial derivatives `N Xᵢ^{N−1} − N t ∏_{j≠i} Xⱼ` vanish together only if `Xᵢᴺ = t ∏ Xⱼ` for all `i`; summing gives the equation, and if all `Xᵢ ≠ 0` multiplying gives `t^N = 1`, while if one coordinate vanishes all do. At `t = 1` the Hessian on the tangent space at `(1 : ⋯ : 1)` is `N(N·I − J)` restricted to the tangent hyperplane, which is nondegenerate when `N` is invertible. A hypersurface of positive dimension in projective space is connected.

**Checks.**

- For `N = 3`, `Y` is the Hesse pencil `X₁³ + X₂³ + X₃³ = 3tX₁X₂X₃`; its fibre at `t = 1` is singular exactly at `(1 : 1 : 1)`, `(1 : ζ₃ : ζ₃²)`, `(1 : ζ₃² : ζ₃)`, which is `3 = 3^{3−2}` points.
- For `N = 5` the fibre at `t = 1` has `5³ = 125` singular points.
- Over `t = ζ_N` the fibre is singular, so a base `ℙ¹ − {∞}` that forgets `μ_N` does not give a smooth family.

### 1.3 Symmetry groups and their characters

Let `H = μ_N^N/μ_N` (diagonal `μ_N`) and `H₀ = {(ξ₁, …, ξ_N) : ξ₁⋯ξ_N = 1}/μ_N ⊂ H`. Over `ℤ[1/N, ζ_N]`, `H` acts on `Y` by `(ξᵢ)·(Xᵢ, t) = (ξᵢXᵢ, (∏ ξᵢ)⁻¹ t)`; thus `H₀` acts on every fibre and `H` on `Y₀`. For `a ∈ (ℤ/Nℤ)^N` with `∑ aᵢ = 0`, `ξ ↦ ∏ ξᵢ^{aᵢ}` is a character `χ_a : H → μ_N`. The involution `ς : X_j ↦ X_{N+1−j}` normalises `H₀`. For a character `χ` of `H₀` and a coefficient ring `R` containing `1/N` and the values of `χ`, `e_χ = (1/#H₀) ∑_{ξ∈H₀} χ(ξ)⁻¹ ξ` is an idempotent of `R[H₀]` cutting out the `χ`-isotypic part. (Qian, §3, arXiv v1 pp. 10–11; Barnet-Lamb–Geraghty–Harris–Taylor, §4, p. 26; Boxer–Calegari–Gee–Newton–Thorne, §4.1, arXiv v3 p. 40.)

The construction has the following API.

- `H` is a finite abelian group of order `N^{N−1}` and `H₀` a subgroup of order `N^{N−2}`, the kernel of the product map.
- After fixing `ζ_N`, `Hom(H, μ_N)` is identified with `ker(∑ : (ℤ/Nℤ)^N → ℤ/Nℤ)`, and `χ_a` and `χ_b` agree on `H₀` exactly when `a − b` is a constant vector.
- The action of `H` on `Y` lies over the action `t ↦ (∏ ξᵢ)⁻¹ t` on `T₀`; `H₀` acts over `T₀`.
- `e_χ` is an idempotent of `R[H₀]` with `ξ e_χ = χ(ξ) e_χ`, defined in `MonoidAlgebra R H₀` once `#H₀ = N^{N−2}` is invertible in `R`.
- `ς` normalises `H₀`, and conjugation by `ς` sends `χ_a` to the character of the reversed vector.

*Needs:* §1.2; Mathlib `IsPrimitiveRoot`, `MonoidAlgebra`.

**Checks.**

- `#H₀ = N^{N−2}`; for `N = 3` it is `3`, generated by `(ζ, ζ⁻¹, 1)`, acting on the Hesse pencil fibrewise.
- The constant vector `(1, …, 1)` gives the trivial character of `H₀` but a nontrivial character of `H`.
- If `∑ aᵢ ≢ 0 (mod N)`, `ξ ↦ ∏ ξᵢ^{aᵢ}` is nontrivial on the diagonal `μ_N` and does not descend to `H`.
- `ς` does not lie in the image of `H` in `Aut(Y)`: for `N ≥ 3` it does not commute with `H₀`.

### 1.4 Exponent data and index sets

Fix an odd `N ≥ 3` and `2 ≤ n ≤ N`. A Dwork exponent datum of rank `n` is a vector `a ∈ (ℤ/Nℤ)^N` with `∑ a_j = 0` whose entries take exactly `N − n` distinct values. Its index set is `B(a) = {b ∈ ℤ/Nℤ : b + a_j ≠ 0 for every j}`, and its character is `χ_a|_{H₀}`; data differing by a permutation and a constant vector are equivalent. A datum is zero-shaped if `0` occurs exactly `n + 1` times and every nonzero residue at most once; the structure `ZeroShapedDatum` records such a vector together with `ZeroShapedDatum.sum_eq_zero`, `ZeroShapedDatum.card_zero` (zero occurs `n + 1` times) and `ZeroShapedDatum.injOn_nonzero` (nonzero residues occur at most once), and `ZeroShapedDatum.indexSet` is its index set. Two zero-shaped families are used.

- Qian's asymmetric data for `n > 2`: for `n` odd, `a = (1, 2, 4, 5, …, (N − n + 2)/2, (N + n − 2)/2, …, N − 4, N − 3, 0, …, 0)`; for `n` even, `a = (1, 2, 3, 4, 5, 7, 8, …, (N − n + 3)/2, (N + n − 3)/2, (N + n − 1)/2, …, N − 4, 0, …, 0)`. Their index sets are `qianIndexSet N n`: `{1, 2, −3} ∪ {(N − n + 4)/2, …, (N + n − 4)/2}` for `n` odd and `{1, 2, 3, −6} ∪ {(N − n + 5)/2, …, (N + n − 5)/2}` for `n` even.
- The self-dual data for `n` even and `N > n + 1`: `a = (1, 2, …, (N − n − 1)/2, 0, …, 0, (N + n + 1)/2, …, N − 1)` with `n + 1` zeros, whose index set is `selfDualIndexSet N n = {(N + 1 − n)/2, …, (N − 1 + n)/2}`. For `n = 2` this is Qian's rank-two datum, with `B = {(N − 1)/2, (N + 1)/2}`.

(Qian, §3, exponent vectors and index sets, arXiv v1 pp. 10–11; Barnet-Lamb–Geraghty–Harris–Taylor, §4 and Lemma 4.1, pp. 26–27; Boxer–Calegari–Gee–Newton–Thorne, §4.1, arXiv v3 p. 40.)

The definitions have the following API.

- For every rank-`n` datum, `#B(a) = n`: `b ∉ B(a)` exactly when `−b` is one of the `N − n` values.
- If `0` occurs among the `a_j` then `0 ∉ B(a)`.
- For Qian's data and `N > 100n + 100`, `qianIndexSet N n` has `n` elements, is the index set of the displayed vector, and sums to `0`.
- `selfDualIndexSet N n` has `n` elements, is stable under `b ↦ −b`, and sums to `0`.
- A zero-shaped datum of rank `n` has `N − n` distinct values, so it is a rank-`n` datum; the converse fails (Check below).

*Needs:* §1.3; Mathlib `ZMod`.

**Checks.**

- `n = 3`, `N = 401`: `B = {1, 2, 398}` and `1 + 2 + 398 = 401 ≡ 0`.
- `n = 4`, `N = 501`: `B = {1, 2, 3, 495}`, and `1 + 2 + 3 + 495 = 501 ≡ 0`.
- For Qian's datum with `n = 3`, `N = 401`, `−B = {400, 399, 3} ≠ B`, so the datum is not self-dual; a definition imposing `B = −B` would exclude it.
- For `N = 5`, `n = 2`, `a = (1, 1, 2, 2, 4)` has sum `10 ≡ 0` and three distinct values, so it is a rank-two datum, but `B = {0, 2}` contains `0`, sums to `2 ≠ 0`, and `a` is not zero-shaped.
- For the self-dual datum with `n = 2`, `N = 7`, `a = (1, 2, 0, 0, 0, 5, 6)` and `B = {3, 4} = −B`.

### 1.5 Stabilisers of the index sets

(1) Let `n > 2`, `N` odd with `N > 100n + 100`, and `B = qianIndexSet N n`. If `α ∈ (ℤ/Nℤ)^×` satisfies `αB = B` then `α = 1`. In particular `−B ≠ B`, and for every power `l^j` of a prime `l ∤ N`, `l^j B ≠ B` unless `l^j ≡ 1` and `l^j B ≠ −B` unless `l^j ≡ −1`. (2) Let `n` be even, `N` odd with `N > n + 1`, and `B = selfDualIndexSet N n`. If `αB = B` then `α = ±1`. (Qian, Lemma 3.1 with proof, arXiv v1 pp. 11–12; Barnet-Lamb–Geraghty–Harris–Taylor, proof of Lemma 4.6, pp. 32–33.)

*Needs:* §1.4.

*Proof sketch.* (1) Since `1 ∈ B`, `α ∈ B`. The small elements `1, 2` (and `3` for `n` even) and `−3` (resp. `−6`) are separated from the middle block by `N > 100n + 100`; `α = 2` would put `4` in `B`, `α = −3` would put `9` or `−9` in `B`, and similarly for `3` and `−6`. If `α = (N + x)/2` lies in the middle block then `2α = x ∈ B` forces `x ∈ {1, 3}` (`n` even) or `x ∈ {1, −3}` (`n` odd); then `(N − x)/2 ∈ B` and the product `−x²/4 ∈ B`, so `4B` contains `−1` or `−9`, which its explicit description excludes. (2) The complement of `B` is the interval `C = [−c, c]` with `c = (N − 1 − n)/2`, and `αB = B` is `αC = C`. For an interval of length `L = 2c + 1` with `3 ≤ L ≤ N − 2` and a shift `d` with representative `|d| ≤ (N − 1)/2`, `#(C ∩ (C + d)) = (L − |d|) + max(0, L + |d| − N)`; this equals `L − 1`, as it must for an arithmetic progression of difference `α`, only for `|d| = 1`.

**Checks.**

- `n = 3`, `N = 401`: `2B = {2, 4, 395} ≠ B`.
- `n = 2`, `N = 7`: `B = {3, 4}` and `2B = {6, 1} ≠ B`, while `−B = B`.
- For `N = n + 1` the self-dual set is all of `(ℤ/Nℤ) − {0}` and every unit stabilises it: the hypothesis `N > n + 1` is needed.

### 1.6 The quotient family over the thrice-punctured line

Let `T′₀ = ℙ¹ − {0, 1, ∞}` with coordinate `t′`. For `n > 2` let `Y′ ⊂ ℙ^{N−1} × T′₀` be `X′₁ᴺ + ⋯ + X′_{N−1}ᴺ + t′⁻¹X′_Nᴺ = N X′₁⋯X′_N`, with `H₀` scaling coordinates. The map `t ↦ t′ = t^N` is a finite étale Galois cover `T₀ − {0} → T′₀` with group `μ_N` over `ℤ[1/N, ζ_N]`, and `X′ᵢ = Xᵢ` (`i < N`), `X′_N = tX_N` identify its pullback of `Y′` with `Y − Y₀`, `H₀`-equivariantly. For the self-dual data the family `Ỹ` with `t′⁻¹` on the middle coordinate `X̃_{(N+1)/2}` is stable under `ς̃ : X̃_j ↦ X̃_{N+1−j}` and plays the same role; over `ℚ(ζ_N)` it is the quotient of `Y − Y₀` by the copy of `μ_N` acting on the middle coordinate. (Qian, §3, family `Y′`, arXiv v1 pp. 12–13; Barnet-Lamb–Geraghty–Harris–Taylor, §4, the family `Ỹ` over `T̃₀`, p. 29.)

The construction has the following API.

- `Y′ → T′₀` (for `n > 2`) and `Ỹ → T′₀` (self-dual data) are smooth projective of relative dimension `N − 2`.
- The pullback along `t ↦ t^N` is `H₀`-equivariantly isomorphic to `Y − Y₀ → T₀ − {0}`.
- `t ↦ t^N : T₀ − {0} → T′₀` is finite étale Galois with group `μ_N` over `ℤ[1/N, ζ_N]`, the deck transformation `t ↦ ζt` lifting through the element of `H` acting on the distinguished coordinate.

*Needs:* §§1.2–1.3.

**Checks.**

- For `N = 3`, `t′ = t³` and `Y′` is `X₁³ + X₂³ + t′⁻¹X₃³ = 3X₁X₂X₃`; over `t′ = 8` the cover has fibre `{2, 2ζ₃, 2ζ₃²}`.
- Substituting `X′_N = tX_N` and `t′ = t^N` gives `t′⁻¹t^N X_Nᴺ = X_Nᴺ` and `N X′₁⋯X′_N = N t X₁⋯X_N`: the pullback equation is that of `Y`.
- `t ↦ t^N` does not make `T₀` a cover of `T′₀`: `t = 0` lies over `t′ = 0 ∉ T′₀`, so the Fermat fibre enters only through the local monodromy at `t′ = 0`.
- Over `t′ = 1` the fibre of `Y′` is singular, being the image of the singular fibres over `μ_N`.

### Examples

For `N = 401`, `n = 3` and Qian's datum, `B = {1, 2, 398}` (§1.4) and the stabiliser in `(ℤ/401ℤ)^×` is trivial (§1.5). Since `401` is prime, every even order `r` of `l` has `l^{r/2} ≡ −1`: for `l = 3`, a primitive root, `r = 400` and `3^{200} ≡ −1`, which is the unitary case of Layer 5; for `l = 5`, `r = 25` is odd, `−1` is not a power of `5`, and the special linear case applies. §1.1 produces composite moduli for which the second case holds with `r` even.

### Dependencies

Mathlib smooth morphisms, multivariate polynomials, roots of unity, group algebras, orders in `(ℤ/Nℤ)^×` and cyclotomic polynomials; EtaleCohomologyFoundations §F.3 enters only through Layer 2.

## Layer 2: Eigen-local-systems of the Dwork pencil

The middle cohomology `R^{N−2}π_*` of the Dwork pencil is a lisse sheaf on which `H₀` acts; its `χ`-eigenparts are the Dwork motives. Their ranks are computed on the Fermat fibre, where the full group `H` acts with one-dimensional eigenspaces indexed by exponent vectors without zero entries. Poincaré duality pairs the `χ`- and `χ⁻¹`-parts, which for the self-dual data gives real forms with alternating pairings.

### 2.1 Cohomology of the Fermat hypersurface

Let `X ⊂ ℙ^{N−1}` be the Fermat hypersurface `∑ Xᵢᴺ = 0` over a field of characteristic `0` or prime to `N` containing `μ_N`, with the action of `H`. For `a ∈ (ℤ/Nℤ)^N` with `∑ aᵢ = 0`, the `a`-eigenspace of primitive middle cohomology `H^{N−2}_prim` (Betti over `ℚ(ζ_N)`, `ℓ`-adic over a characteristic-zero coefficient field containing `μ_N`, or de Rham in characteristic zero) is zero unless every `aᵢ ≠ 0`, in which case it is one-dimensional; the rest of `H^{N−2}` is the `a = 0` part, which vanishes for `N − 2` odd. Over `ℂ` the eigenline for `a` with representatives `⟨aᵢ⟩ ∈ {1, …, N − 1}` lies in `H^{p, N−2−p}` with `p + 1 = ∑ᵢ⟨aᵢ⟩/N`. Over integral coefficient rings in which `N` is invertible, the eigensummands are finite projective of rank one; they are free after completion at a prime or reduction modulo a nonzero ideal. (Deligne, *Hodge cycles on abelian varieties*, Chapter I, §7, Propositions 7.4 and 7.6; Boxer–Calegari–Gee–Newton–Thorne, proof of Lemma 4.4.4, arXiv v3 p. 48; Barnet-Lamb–Geraghty–Harris–Taylor, proofs of Lemma 4.1 and Lemma 5.2, pp. 27, 36.)

*Needs:* §1.3; ComplexComparisonPartII §C5.3 (`properPureHodge`) and §C6.6; EtaleCohomologyFoundations §§F.2.1, F.4.2, F.4.5; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3.

*Proof sketch.* Under the convention `(h⁻¹)*` the trace formula for the elements of `H` on the Fermat hypersurface (a `μ_N^{N−1}`-cover of `ℙ^{N−2}` branched along a hyperplane arrangement) counts the dimension of each eigenspace. The Hodge type is read from Griffiths' residue description of `H^{N−2}_prim` by the forms `X^{b−1}Ω/F^k`. Changing the action to `h*` inverts every label.

**Checks.**

- `N = 3`: the characters with all `aᵢ ≠ 0` and `∑ aᵢ ≡ 0 (mod 3)` are `(1, 1, 1)` and `(2, 2, 2)`, so `H¹` of the Fermat cubic has rank two; `∑⟨aᵢ⟩/3 = 1` and `2` put the eigenlines in `H^{0,1}` and `H^{1,0}`.
- `a = (1, 2, 0)` for `N = 3` has a zero entry and its eigenspace is zero.
- For `N = 5` the number of `a ∈ (ℤ/5ℤ)^5` with all entries nonzero and sum zero is `((N − 1)^N + (−1)^N(N − 1))/N = (1024 − 4)/5 = 204`, the rank of `H³_prim` of the Fermat quintic threefold.

### 2.2 Integral cohomology of smooth hypersurfaces is torsion-free

Let `X ⊂ ℙ^{m+1}_ℂ` be a smooth hypersurface of dimension `m`. Then `Hⁱ(X(ℂ), ℤ)` is torsion-free for every `i`. Consequently, for a smooth proper family of hypersurfaces over a base on which `ℓ` is invertible, the sheaves `Rⁱπ_*ℤ_ℓ` are torsion-free and `Rⁱπ_*(ℤ/ℓ^k) = Rⁱπ_*ℤ_ℓ/ℓ^k`; the same holds at geometric fibres in positive characteristic prime to `ℓ`. (Qian, Proposition 3.2, arXiv v1 p. 13, whose rank argument needs this input; Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 4.1(2), p. 27.)

*Needs:* ComplexComparisonPartII §C5.2 (`relativeBettiLocalSystem`), §§C6.5–C6.6; EtaleCohomologyFoundations §§F.2.1, F.3.

*Proof sketch.* The Lefschetz hyperplane theorem gives `Hⁱ(X, ℤ) ≅ Hⁱ(ℙ^{m+1}, ℤ)` and `Hᵢ(X, ℤ) ≅ Hᵢ(ℙ^{m+1}, ℤ)` for `i < m`; Poincaré duality and universal coefficients give torsion-freeness in degrees `≥ m`, the torsion of `H^m` being that of `H_{m−1}`. Smooth proper base change and the Artin comparison transfer this to `Rⁱπ_*ℤ_ℓ` through a complex fibre. For a geometric fibre in positive characteristic, lift the hypersurface to a mixed-characteristic discrete valuation ring by lifting its coefficients; smoothness is open and the lifted model is smooth over a neighbourhood of the closed point, so smooth proper base change and the characteristic-zero computation apply.

**Checks.**

- For a smooth plane cubic, `H¹(X, ℤ) ≅ ℤ²` and `H²(X, ℤ) ≅ ℤ` are torsion-free.
- For a smooth quadric surface, `H²(X, ℤ) ≅ ℤ²` is torsion-free; an Enriques surface, which is not a hypersurface in `ℙ³`, has `H²` with `ℤ/2` torsion.
- Smooth proper base change alone does not exclude torsion: torsion-freeness is the extra input used in §2.7.

### 2.3 The Dwork eigen-local-systems

Let `a` be a Dwork exponent datum with character `χ` of `H₀` and `O = ℤ[1/(2N), ζ_N]`.

1. For a prime `λ` of `O` of residue characteristic `l`, `V_λ = e_χ R^{N−2}π_*O_λ` is a lisse sheaf of `O_λ`-modules on `T₀ × Spec O[1/l]`.
2. For a nonzero ideal `𝔫` of `O` of norm `M`, `V[𝔫] = e_χ R^{N−2}π_*(O/𝔫)` is a lisse sheaf of `O/𝔫`-modules on `T₀ × Spec O[1/M]`.
3. After fixing `τ : ℚ(ζ_N) ↪ ℂ` with `τ(ζ_N) = e^{2πi/N}`, `V_B = e_χ R^{N−2}π̃_*O` is a local system of `O`-modules on `T₀(ℂ)`.
4. `V′_B` on `T′₀(ℂ)`, defined in the same way from `Y′`, pulls back to `V_B|_{T₀(ℂ)−{0}}`.

`V_B ⊗ O_λ` corresponds to `τ*V_λ` and `V_B ⊗ O/𝔫` to `τ*V[𝔫]` under the equivalence of locally constant analytic and étale sheaves on `(T₀)_ℂ`, and `V[𝔫] ≅ ∏_λ V_λ/λ^{a_λ}` for `𝔫 = ∏ λ^{a_λ}`. For `n = 2` and the self-dual data these sheaves are written `U_λ`, `U[𝔫]`, `U_B`. Stalks are `V_{λ,t}`, `V[𝔫]_t`, `V_{B,t}`. (Qian, §3, arXiv v1 pp. 12–13; Boxer–Calegari–Gee–Newton–Thorne, §4.1, arXiv v3 p. 40, where the higher direct image degree `N − 2` must be inserted in the displayed definition; Barnet-Lamb–Geraghty–Harris–Taylor, §4, pp. 26–28.)

The construction has the following API.

- The stalk of `V_λ` at a geometric point `t̄` is `e_χ H^{N−2}_ét(Y_{t̄}, O_λ)`; for `t ∈ T₀(K)` it is a `G_K`-module.
- Formation commutes with base change along `S → T₀[1/l]`.
- `V[λ^k] ≅ V_λ/λ^k`, and `V[𝔫] ≅ ∏ V_λ/λ^{a_λ}`.
- `V_B ⊗_O O_λ ≅ τ*V_λ` and `V_B ⊗ O/𝔫 ≅ τ*V[𝔫]`, by the Artin comparison.
- For `σ ∈ Gal(ℚ(ζ_N)/ℚ)`, `σ` carries the `χ`-eigensheaf with coefficients `O_λ` to the `σχ`-eigensheaf with coefficients `O_{σλ}`.
- `V′_B` pulls back to `V_B` on `T₀(ℂ) − {0}`.

*Needs:* §§1.2–1.4, §2.2; EtaleCohomologyFoundations §§F.0.2, F.2.1, F.3, F.4.2, F.4.5; ComplexComparisonPartII §§C5.2, C6.5, C6.6.

*Proof sketch.* `R^{N−2}π_*` of the smooth proper `π` is lisse with torsion-free stalks (§2.2); `H₀` acts by functoriality through `(h⁻¹)*` and `e_χ` is an idempotent endomorphism because `#H₀` and `2` are invertible in `O`, so its image is a lisse direct summand. The Artin comparison and Ehresmann's theorem identify the analytic and étale local systems, and `e_χ` commutes with them. The Chinese remainder theorem and exactness of `e_χ` give the product decomposition.

**Checks.**

- For the Hesse boundary `N = 3`, `H₀ ≅ μ₃` acts on each cubic by translations, hence trivially on `H¹`: the trivial character of `H₀` has rank two and each nontrivial character rank zero; the two `H`-eigenlines `(1, 1, 1)` and `(2, 2, 2)` both restrict to the trivial `H₀`-character.
- At `t = 0` the stalk `V_{λ,0}` is the direct sum of the `n` lines `V_{λ,i}`, `i ∈ B(a)`, on which `H` acts through `χᵢ` (§2.6).
- The stalk of `V_B ⊗ O/𝔫` at `t ∈ T₀(ℂ)` equals the stalk of `V[𝔫]` at the corresponding geometric point.
- `V_λ ≠ R^{N−2}π_*O_λ` for `N ≥ 5`: the full middle cohomology has rank `((N − 1)^N + (−1)^N(N − 1))/N`, which is `204` for `N = 5`, much larger than `n`.

### 2.4 Poincaré duality between conjugate eigensheaves

The cup product and the trace `H^{2N−4}(Y_t) ≅ O(2 − N)` restrict to perfect pairings `V_{χ,λ} × V_{χ⁻¹,λ} → O_λ(2 − N)` between the `χ`- and `χ⁻¹`-eigensheaves, and likewise with `O/𝔫` and Betti coefficients. Since `N − 2` is odd the middle cup product is alternating: `⟨y, x⟩ = −⟨x, y⟩` after exchanging the factors. Hence (1) for the self-dual data the real forms of §2.5 carry perfect alternating pairings; (2) composing with complex conjugation `c` of the coefficients gives `c`-linear isomorphisms `V_{c(λ)} ≅ V_λ^∨(2 − N)` for Qian's data. (Barnet-Lamb–Geraghty–Harris–Taylor, §4 after Lemma 4.1, p. 28; Boxer–Calegari–Gee–Newton–Thorne, proof of Lemma 4.2.4, arXiv v3 pp. 41–42, where the printed twist `1 − N` must be `2 − N`, and after Definition 4.4.1, pp. 46–47.)

*Needs:* §2.3; EtaleCohomologyFoundations §F.6; EtaleDualityAndPerverseSheaves §§0.5–0.6.

*Proof sketch.* Poincaré duality for the smooth proper fibres is a perfect pairing on `R^{N−2}π_*`, alternating in odd degree, and invariant under `H₀`. An invariant pairing pairs the `χ`-part with the `χ⁻¹`-part and kills `χ`-part × `χ′`-part for `χ′ ≠ χ⁻¹`; perfectness passes to the summands. Composing with the coefficient conjugation, which exchanges `χ` and `χ⁻¹ = c ∘ χ`, gives the `c`-linear self-duality. The integral perfectness uses torsion-freeness (§2.2), so no `Ext` correction appears.

**Checks.**

- For the Hesse pencil the pairing on `H¹` of an elliptic curve pairs the two `H`-eigenlines `(1, 1, 1)` and `(2, 2, 2)`; for `H₀`, which acts trivially on `H¹`, it is the alternating pairing on the trivial part.
- The twist is `2 − N`: the fibre dimension is `N − 2`, so the top cohomology `H^{2N−4}` is `O(2 − N)`, of weight `2(N − 2)`; the printed `1 − N` would put the values in weight `2N − 2`, which no pairing of two weight-`(N − 2)` sheaves can reach.
- For `χ` with `χ² ≠ 1` the `χ`-part pairs trivially with itself: the pairing is never a self-pairing of a non-self-dual eigenspace.

### 2.5 Real forms of the self-dual eigensheaves

For the self-dual datum (`n` even, `N > n + 1`) let `O⁺ = ℤ[1/(2N), ζ_N]⁺` and `e = (1/(2#H₀))(ς + 1) ∑_{ξ∈H₀}(χ(ξ) + χ(ξ)⁻¹)ξ` in `O⁺[H₀ ⋊ ⟨ς⟩]`. Define `V_λ = [e]_*R^{N−2}π_*O⁺_λ`, `V[𝔫] = [e]_*R^{N−2}π_*(O⁺/𝔫)` and `V_B = [e]_*R^{N−2}π̃_*O⁺` for primes `λ` and ideals `𝔫` of `O⁺`. (Barnet-Lamb–Geraghty–Harris–Taylor, §4, the idempotent `e`, Lemma 4.1 and the pairings, pp. 26–28; Qian, after Proposition 3.2, arXiv v1 p. 13.)

The construction has the following API.

- `e² = e` in `O⁺[H₀ ⋊ ⟨ς⟩]`, since `ς` normalises `H₀` and exchanges `χ` and `χ⁻¹`.
- `H₀`-equivariant projection gives `V_λ ⊗_{O⁺_λ} O_λ ≅ U_λ`, `V[𝔫] ⊗ O ≅ U[𝔫]` and `V_B ⊗ O ≅ U_B`, the `χ`-eigensheaves of §2.3.
- `V_λ` is locally free of rank `n` (§2.7), and `V[𝔫] ≅ ∏ V_λ/λ^{a_λ}`.
- `V_λ((N − 1 − n)/2)` carries a perfect alternating pairing with values in `O⁺_λ(1 − n)`, and likewise mod `𝔫`.

*Needs:* §§1.3–1.4, §§2.3–2.4.

**Checks.**

- For `n = 2` the real form `V_λ` has rank two over `O⁺_λ` with a perfect alternating pairing, so its geometric monodromy lies in `Sp₂ = SL₂`.
- Over `ℤ[1/N, ζ_N]⁺` the idempotent is not defined: its denominator is `2N^{N−2}`, so `V_B` lives over `ℤ[1/(2N), ζ_N]⁺`.
- The Hesse boundary `N = 3`, `n = 2` is excluded by `N > n + 1`.

### 2.6 Splitting of the Fermat fibre into eigenlines

Since `H` acts on `Y₀`, `V_{λ,0} = ⊕_{i∈ℤ/Nℤ} V_{λ,i}` and `V[𝔫]_0 = ⊕ V_i[𝔫]`, where `V_{λ,i}` is the part on which `H` acts by `χᵢ : ξ ↦ ∏_j ξ_j^{a_j+i}` (whose restriction to `H₀` is `χ`). `V_{λ,i}` is nonzero exactly when `i ∈ B(a)`, and then it is free of rank one over `O_λ` (resp. `O/𝔫`); the Betti summands are finite projective of rank one over `O`. The same splitting holds for the `χ`-part of `H^{N−2}_dR(Y₀/K)` for `K ⊇ ℚ(ζ_N)` and for the self-dual real forms (summands `U_{i,λ}`, `(N + 1 − n)/2 ≤ i ≤ (N − 1 + n)/2`). For the quotient family rescaling coordinate `q`, the monodromy generator at `t′ = 0` acts on the `i`-th line by `ζ_N^{a_q+i}`, which is `ζ_N^i` when `a_q = 0`, as for Qian's last coordinate (`n > 2`) and the middle coordinate of the self-dual family. (Qian, §3, arXiv v1 pp. 12–13, and proof of Lemma 3.3(1), p. 13; Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 4.1(1), p. 27.)

*Needs:* §§1.4, 2.1, 2.3.

*Proof sketch.* The characters of `H` restricting to `χ` on `H₀` are the `χᵢ`. The exponent vector of `χᵢ` is `(a_j + i)_j`, whose entries are all nonzero exactly when `i ∈ B(a)`; apply §2.1. The deck transformation scales the chosen coordinate `q`, acting on `χᵢ` by `ζ_N^{a_q+i}` up to the orientation of the peripheral loop.

**Checks.**

- For Qian's datum with `n = 3` the nonzero summands are `V_{λ,1}`, `V_{λ,2}`, `V_{λ,N−3}`.
- For a quotient coordinate `q` with `a_q ≠ 0` the eigenvalues are `ζ_N^{a_q+b}`, not `ζ_N^b`, and their product need not be one.
- For `i ∉ B(a)` some entry of `a + i` vanishes, so `V_{λ,i} = 0`; `i = 0` is such a residue for every zero-shaped datum.

### 2.7 The Dwork eigensheaves have rank `n`

For every rank-`n` Dwork exponent datum, `V_λ` and `V[𝔫]` are lisse with free stalks of rank `n` over `O_λ` and `O/𝔫`; the Betti systems `V_B` and `V′_B` have finite projective stalks of constant rank `n` over `O`, free after scalar extension to `ℚ(ζ_N)`, completion at `λ` or reduction modulo `𝔫`. The same holds with `O⁺` for the self-dual real forms. No global `O`-basis is asserted. (Qian, Proposition 3.2, arXiv v1 p. 13; Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 4.1(2), p. 27.)

*Needs:* §1.6, §§2.2, 2.3, 2.5, 2.6.

*Proof sketch.* The sheaves are locally constant with torsion-free stalks (§2.2), and a direct summand of a locally constant sheaf of finite free modules is locally free. The rank is constant on the connected base and equals the rank at `t = 0`, which is `#B = n` by §2.6. For `V′_B` on `T′₀(ℂ)`, which does not contain `t = 0`, pull back along `t ↦ t^N`. A finite projective module over a local ring is free, and `O/𝔫` is a finite product of local rings.

**Checks.**

- For Qian's datum with `n = 3` the stalk `V_{λ,t}` is free of rank `3` over `O_λ` for every `t ∈ T₀`.
- For the Hesse pencil and the trivial `H₀`-character the datum is `a = (0, 0, 0)`, zero-shaped of rank `2` with `B = {1, 2}`, and the rank is `2`; this is the boundary case excluded from the self-dual family by `N > n + 1`.
- Over a Dedekind ring `O` with nontrivial class group, a rank-one projective summand need not be free; the statement asserts projectivity only.

### Examples

For `N = 5`, `n = 2` and the self-dual datum `a = (1, 0, 0, 0, 4)`, `B = {2, 3}`, the Fermat fibre contributes the lines with exponent vectors `a + 2 = (3, 2, 2, 2, 1)` and `a + 3 = (4, 3, 3, 3, 2)`, all entries nonzero; their Hodge degrees `∑⟨aᵢ⟩/5 − 1` are `10/5 − 1 = 1` and `15/5 − 1 = 2`, consecutive as §7.3 predicts for the self-dual range `(N − 1 − n)/2 = 1 ≤ j ≤ (N + n − 3)/2 = 2`.

### Dependencies

Layer 1; EtaleCohomologyFoundations §§F.0.2, F.2.1, F.3, F.4, F.6; ComplexComparisonPartII §§C5.2, C5.3, C6.5, C6.6; EtaleDualityAndPerverseSheaves §§0.5–0.6; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3.

## Layer 3: Katz's hypergeometric description

Katz's hypergeometric sheaf attached to `n` distinct nontrivial Kummer characters is the multiplicative convolution of `n` rank-one sheaves on `𝔾_m`. It is lisse of rank `n` on `𝔾_m − {1}`, pure, geometrically irreducible, with unipotent monodromy at `0`, the given characters at `∞` and a pseudo-reflection at `1`. Katz's comparison theorem identifies a zero-shaped Dwork eigensheaf, pulled back along `t ↦ t^{−N}`, with this hypergeometric sheaf up to a character of the base. The comparison characters form a `λ`-independent family; twisting them away gives the systems `W` with determinant a pure Tate twist.

### 3.1 Katz's hypergeometric sheaves

Let `R₀ = ℤ[ζ_N, N⁻¹]`, `T₁ = Spec R₀[x, x⁻¹, (1 − x)⁻¹]` with open immersion `j : T₁ → 𝔾_{m,R₀}`, and `f : T₁ → 𝔾_m`, `x ↦ 1 − x`. Let `n ≥ 1` and `ρ₁, …, ρ_n : μ_N → M^×` distinct nontrivial characters; their product need not be trivial. For a place `λ` of `M` of residue characteristic `l`, let `Lᵢ` be the rank-one lisse `M_λ`-sheaf on `𝔾_{m,R₀}[1/l]` attached to `ρᵢ` and the Kummer `μ_N`-torsor `x ↦ x^N`, `Fᵢ = j_!f*Lᵢ`, and `E_λ = j*(F₁ ∗_! F₂ ∗_! ⋯ ∗_! F_n)[n − 1]`, where `A ∗_! B = Rm_!(A ⊠ B)` for the multiplication `m : 𝔾_m × 𝔾_m → 𝔾_m`. For a zero-shaped Dwork datum the characters are those indexed by `B(a)`, with the Kummer convention fixed by the trace formula of §3.2; for Qian's and the self-dual data their product is trivial. (Boxer–Calegari–Gee–Newton–Thorne, §4.1 before Theorem 4.2.1, arXiv v3 p. 41; Katz, *Another look at the Dwork family*, §5 and Theorem 5.3, pp. 95–97; Katz, *Exponential sums and differential equations*, Chapter 8; Drinfeld–Kedlaya, Appendix A, §A.1.6.)

The construction has the following API.

- `Lᵢ` is the `ρᵢ`-isotypic part of the pushforward of the constant sheaf along the Kummer cover `x ↦ x^N`.
- `∗_!` is associative and commutative up to canonical isomorphism, through the associativity and symmetry of compact-support Künneth.
- The trace of geometric Frobenius at `x ∈ T₁(k)`, `k` a finite field with `q` elements over `R₀[1/l]`, is `(−1)^{n−1} ∑_{x₁⋯x_n = x} ∏ᵢ ρᵢ((1 − xᵢ)^{(q−1)/N})`, with `μ_N` identified with `k^×[N]` and `ρᵢ(0) = 0`.
- Formation of `E_λ` commutes with base change along `R₀[1/l] → k` for finite fields `k`.
- For `σ ∈ Gal(M/ℚ)`, `σ` carries `E_λ` for `(ρᵢ)` to `E_{σλ}` for `(σρᵢ)`.

*Needs:* §1.4; EtaleCohomologyFoundations §§F.2.4–F.2.7 (constructible `Rf_!`, compact supports, Künneth) and §F.4.5 (rational realization); InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3 (trace formula for the trace description).

**Checks.**

- For `n = 1`, `E_λ = j*F₁` is the Kummer sheaf `L_{ρ₁}(1 − x)` on `T₁`, of rank one, with trace `ρ₁((1 − x)^{(q−1)/N})` at `x ∈ T₁(𝔽_q)`.
- For `n = 2` the trace at `x` is `−∑_{x₁x₂ = x} ρ₁((1 − x₁)^{(q−1)/N}) ρ₂((1 − x₂)^{(q−1)/N})`, a Jacobi-type sum.
- For nontrivial `ρ` the extensions `j_!f*L_ρ` and `j_*f*L_ρ` agree at `x = 1`, the invariants being zero; for the trivial character they differ there, `j_!` having stalk zero and `j_*` stalk of rank one. This detects the omission of nontriviality.

### 3.2 Rank, purity, irreducibility and determinant of the hypergeometric sheaf

In the setting of §3.1: (1) `E_λ` is a lisse `M_λ`-sheaf of rank `n` on `T₁[1/l]`, `E_λ ⊗ M̄_λ` is geometrically irreducible, and `E_λ` is pure of weight `n − 1`; (2) if moreover `∏ ρᵢ = 1`, then `det E_λ ≅ M_λ(n(1 − n)/2)`. (Boxer–Calegari–Gee–Newton–Thorne, Theorem 4.2.1(1)–(2) and proof, arXiv v3 p. 41, citing Katz, *Exponential sums and differential equations*, Chapter 8 and Theorem 8.12.2(1a); Katz, *Another look at the Dwork family*, §5, p. 95.)

*Needs:* §3.1; DeligneWeightsAndPurity §§7.15, 8.19; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3; EtaleCohomologyFoundations §F.4.5.

*Proof sketch.* Lisseness of rank `n`, geometric irreducibility and purity are Katz's theorems on hypergeometric sheaves of type `(n, n)` whose two lists of characters (here `n` copies of the trivial character and `ρ₁, …, ρ_n`) are disjoint, proved by induction on `n` through the convolution with Fourier-type cohomological estimates. The determinant is Katz's formula, a Tate twist when the product of the characters is trivial. The trace formula of §3.1 follows from the trace formula for `Rm_!`.

**Checks.**

- For `n = 1` and nontrivial `ρ₁`, `E_λ` is the Kummer sheaf of rank one, pure of weight `0`; this is outside the product-one hypothesis of (2), and its determinant `L_{ρ₁}(1 − x)` is not a Tate twist.
- For `n = 2` and `(ρ, ρ⁻¹)` with `ρ ≠ ρ⁻¹`, `det E_λ = M_λ(−1)`: the geometric determinant is trivial and geometric Frobenius at `x ∈ T₁(𝔽_q)` has determinant `q`.
- Purity of weight `n − 1` is consistent with the determinant: `n` Frobenius eigenvalues of absolute value `q^{(n−1)/2}` multiply to absolute value `q^{n(n−1)/2}`, the absolute value of `M_λ(n(1 − n)/2)` at Frobenius.

### 3.3 Local monodromy of the hypergeometric sheaf

In the setting of §3.1 the geometric local monodromy of `E_λ ⊗ M̄_λ` is: at `x = 0`, unipotent with a single Jordan block of size `n`; at `x = ∞`, tame and isomorphic to `⊕_{i=1}^n L_{ρᵢ}`; at `x = 1`, a pseudo-reflection. (Barnet-Lamb–Geraghty–Harris–Taylor, proof of Lemma 4.3(3), p. 30, citing Katz, *Exponential sums and differential equations*, Theorem 8.4.2; Katz, *Another look at the Dwork family*, Lemma 8.8, p. 114.)

*Needs:* §3.2; LefschetzPencilsAndVanishingCycles §1.6.

*Proof sketch.* Katz's description of the local monodromy of a hypergeometric sheaf of type `(n, n)`: at `0` and at `∞` it is the sum, over the distinct characters of the corresponding list, of the Kummer sheaf tensored with a unipotent block whose size is the multiplicity; at `1` it is a pseudo-reflection. Here each `Fᵢ` is lisse at `0` with trivial local monodromy, so the list at `0` is `n` copies of the trivial character, and the list at `∞` is `ρ₁, …, ρ_n`.

**Checks.**

- For `n = 1`, `L_{ρ₁}(1 − x)` is unramified at `0`, has monodromy `ρ₁` at `∞`, and at `1` acts by a nontrivial character, a pseudo-reflection of a line.
- For `n = 2` the monodromy at `0` is conjugate to `[[1, 1], [0, 1]]`, not to the identity.
- At `∞` the eigenvalues are the distinct `ρᵢ(ζ)`, so the local monodromy there is semisimple, unlike at `0`.

### 3.4 Katz's comparison of Dwork eigensheaves with hypergeometric sheaves

Let `a` be a zero-shaped Dwork datum with characters `ρᵢ` indexed by `B(a)` as in §3.1, `U = T₀ − {0}` with inclusion `j′ : U → T₀`, and `g : U → T₁`, `t ↦ t^{−N}`. For every place `λ` of `M` of residue characteristic `l` there are a unique continuous character `Ψ_λ : π₁(Spec R₀[1/l]) → O_{M_λ}^×` and an isomorphism of `M_λ`-sheaves on `U[1/l]`: `(j′)*V_λ ⊗ M_λ ≅ g*E_λ ⊗ M_λ(Ψ_λ)`. Consequently the `χ`-eigensheaf `V′` of the quotient family over `T′₀` (§1.6), whose pullback along `t ↦ t^N` is `(j′)*V_λ`, is isomorphic to the pullback of `E_λ` along `t′ ↦ 1/t′`, twisted by `Ψ_λ` and by a Kummer character `L_θ` of order dividing `N`. `U` is the punctured Dwork parameter line, not the quotient line `T′₀`. (Boxer–Calegari–Gee–Newton–Thorne, Theorem 4.2.1(3) and proof, arXiv v3 p. 41; Katz, *Another look at the Dwork family*, Theorem 5.3 and Remark 5.4, pp. 96–97.)

*Needs:* §1.6, §§2.3, 2.7, §3.2; Mathlib `FundamentalGroup`; EtaleCohomologyFoundations §F.0.2.

*Proof sketch.* Katz's theorem: on the complement of `μ_d` in the affine line the primitive eigenpiece of a Dwork-type family is the `d`-th power pullback of a hypergeometric sheaf tensored with a character of `π₁` of the base, provided the eigenpiece is nonzero; Boxer–Calegari–Gee–Newton–Thorne specialise it to the present family using `[−1]*H(trivial^n; ρ) ≅ H(ρ⁻¹; trivial^n)`. The zero-shaped hypothesis (zero `n + 1` times, every nonzero residue at most once) is what makes the list at `0` consist of `n` trivial characters and the list at `∞` of `n` distinct ones. Uniqueness of `Ψ_λ` is geometric irreducibility (§3.2) with Schur's lemma; two lisse sheaves on `T′₀` with isomorphic geometrically irreducible pullbacks along the `μ_N`-cover `t ↦ t^N` differ by a character of `μ_N`.

**Checks.**

- Both sides have rank `n`: the rank of `V_λ` (§2.7) and of `E_λ` (§3.2).
- For a rank-two datum that is not zero-shaped, such as `a = (1, 2, 2, 0, 0)` for `N = 5`, zero occurs only twice and the monodromy at infinity is not a single block (§8.6), so the comparison with a sheaf having `n` trivial characters at `0` fails.
- The base of `Ψ_λ` is `Spec R₀[1/l]`: `Ψ_λ` is geometrically trivial, so `V_λ` and `g*E_λ` have the same geometric monodromy on `U`.

### 3.5 The comparison characters

For a zero-shaped datum with `∏ ρᵢ = 1` the characters `Ψ_λ` of §3.4 satisfy: (1) `Ψ_λ · c(Ψ_λ) = ε_l^{n+1−N}`, where `c` is complex conjugation on the coefficients, transported to `λ` and `c(λ)`; (2) on `U[1/l]`, `det((j′)*V_λ) ⊗ M_λ ≅ M_λ(n(1 − n)/2) ⊗ M_λ(Ψ_λ^n)`. Their values at Frobenius elements are in `M` and independent of `λ` (§6.8), and they are the `λ`-adic characters of one algebraic Hecke character (§7.5). (Boxer–Calegari–Gee–Newton–Thorne, Lemma 4.2.4 and proof, arXiv v3 pp. 41–42, where the duality twist must be `2 − N` and the weight relation correspondingly `ε^{n+1−N}` rather than the printed `|·|^{N−n}`.)

*Needs:* §§2.4, 3.2, 3.4.

*Proof sketch.* (1) The `c`-linear isomorphisms `V_{c(λ)} ≅ V_λ^∨(2 − N)` (§2.4) and `E_{c(λ)} ≅ E_λ^∨(1 − n)` (Poincaré duality for the convolution, Katz) together with Schur's lemma for the geometrically irreducible `E_λ` give `c(Ψ_λ)ε^{1−n} = Ψ_λ⁻¹ε^{2−N}`. (2) Take determinants in §3.4 and use §3.2(2); `det g*E_λ` is the constant twist `M_λ(n(1 − n)/2)`.

**Checks.**

- Weight check: `V_λ` has weight `N − 2` and `E_λ` weight `n − 1`, so `Ψ_λ` has weight `(N − 2) − (n − 1) = N − n − 1`, and `Ψ_λ c(Ψ_λ)` has weight `2(N − n − 1)`, the weight of `ε^{n+1−N}`.
- With the misprinted twist `1 − N` the same computation gives `Ψ c(Ψ) = ε^{n−N}`, of weight `2(N − n)`, contradicting the weight `2(N − n − 1)` of `Ψ_λ c(Ψ_λ)`.
- For the self-dual datum with `n = 2`, `N = 5` the weight of `Ψ_λ` is `5 − 2 − 1 = 2`, and (2) says `det V_λ` has weight `2·3 = 6 = n(N − 2)` on `U`.

### 3.6 The twisted Dwork local systems `W_λ`

For Qian's datum (`n > 2`) and a place `λ` of `M` of residue characteristic `l`, put `W_λ = V_λ ⊗_{O_{M_λ}} O_{M_λ}(Ψ_λ⁻¹)`, a lisse sheaf of free `O_{M_λ}`-modules of rank `n` on `T₀[1/l]`. Write `W_{t,λ}` for its stalk at `t`, `W̄_λ = W_λ ⊗ k(λ)` and `W̄_{t,λ}` likewise. (Boxer–Calegari–Gee–Newton–Thorne, after Lemma 4.2.4, arXiv v3 p. 42.)

The construction has the following API.

- `W_λ ⊗ M_λ` is pure of weight `n − 1`, with `det W_λ ⊗ M_λ ≅ M_λ(n(1 − n)/2)`.
- `W_λ ⊗ M̄_λ` is geometrically irreducible on `T₀`.
- `W_λ` and `V_λ` have the same geometric monodromy: their restrictions to `π₁(T_{0,ℚ̄})` agree, also after reduction.
- `W̄_λ = W_λ ⊗ k(λ)` is a lisse `k(λ)`-sheaf of rank `n`.

*Needs:* §§2.3, 2.7, 3.3, 3.4, 3.5; DeligneWeightsAndPurity §8.19.

*Proof sketch.* Twisting by the character `Ψ_λ⁻¹` of `π₁(Spec R₀[1/l])` changes neither lissity nor geometric monodromy. On `U`, `W_λ ⊗ M_λ ≅ g*E_λ`, so purity and the determinant come from §3.2. For geometric irreducibility after the finite cyclic pullback `g`, use semisimplicity of the pure sheaf (DeligneWeightsAndPurity §8.19) and Clifford theory: the isotypic pieces of the restriction to a normal subgroup of finite index are permuted transitively, while a power of the single unipotent block at `x = 0` (§3.3) is again a single block in characteristic zero, which forces one isotypic piece of multiplicity one. Since `U` is dense open in the smooth connected `T₀`, `π₁(U) → π₁(T₀)` is surjective.

**Checks.**

- `det W_λ ≅ M_λ(n(1 − n)/2)`, so the Hodge–Tate weights of every fibre sum to `n(n − 1)/2` (§7.6); for `n = 3` the sum is `3`.
- `W_λ` has rank `n`, the rank of `V_λ`.
- `W_λ ≇ V_λ` in general: their fibres have Hodge–Tate weights `{0, …, n − 1}` and `{M_τ, …, M_τ + n − 1}`, with `M_τ ≠ 0` for some `τ` when `N > n + 1` (§7.4).
- Irreducibility does not follow merely from pulling back an irreducible sheaf along a finite cover: `L_ρ` pulled back along the Kummer cover that trivialises it becomes trivial, and a sum of two such characters becomes reducible.

### Examples

For `n = 2` and characters `(ρ, ρ⁻¹)` of order `5`, `E_λ` is a rank-two sheaf on `ℙ¹ − {0, 1, ∞}` with unipotent monodromy `[[1, 1], [0, 1]]` at `0`, eigenvalues `ρ(ζ), ρ(ζ)⁻¹` at `∞`, a pseudo-reflection at `1` (§3.3), and determinant `M_λ(−1)` (§3.2). Its monodromy group is the hypergeometric group of Layer 0 with `p = (X − 1)²` and `q = (X − ρ(ζ))(X − ρ(ζ)⁻¹)`.

### Dependencies

Layers 1–2; EtaleCohomologyFoundations §§F.0.2, F.2.4–F.2.7, F.4.5; DeligneWeightsAndPurity §§7.15, 8.19; LefschetzPencilsAndVanishingCycles §1.6; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3.

## Layer 4: Complex monodromy

On the thrice-punctured line the Dwork Betti local system of a zero-shaped datum has monodromy `ρ_{t′}(γ₀)` with the distinct eigenvalues `ζ_N^b`, `b ∈ B`, a transvection `ρ_{t′}(γ₁)`, and a single unipotent Jordan block `ρ_{t′}(γ∞)`. Levelt's theorem then identifies the representation with the companion-matrix representation, and its reductions remain absolutely irreducible.

### 4.1 The Dwork monodromy representations and peripheral loops

Fix `τ : ℚ(ζ_N) ↪ ℂ` with `τ(ζ_N) = e^{2πi/N}`, a base point `t ∈ T₀(ℂ) − {0}` and `t′ = t^N ∈ T′₀(ℂ)`. Let `ρ_t : π₁(T₀(ℂ), t) → GL(V_{B,t})` and `ρ_{t′} : π₁(T′₀(ℂ), t′) → GL(V′_{B,t′})` be the monodromy representations, with `V′_{B,t′} = V_{B,t}`. Choose loops `γ₀, γ₁, γ∞` around `0, 1, ∞` with `γ₀γ₁γ∞ = 1`, any two of which generate `π₁(T′₀(ℂ), t′)` freely, oriented so that the image of `γ₀` in the deck group of `T₀(ℂ) − {0} → T′₀(ℂ)` is `e^{2πi/N} = τ(ζ_N)`. On the index-`N` normal subgroup `π₁(T₀(ℂ) − {0}, t)`, `ρ_{t′}` restricts to `ρ_t` composed with the surjection `π₁(T₀(ℂ) − {0}, t) ↠ π₁(T₀(ℂ), t)`. For a prime `λ` of `O` (of `O⁺` for the real forms) write `ρ̄_t`, `ρ̄_{t′}` for the reductions on `V_{B,t}/λ`. For the self-dual data the same is done with the family `Ỹ` over `T̃₀ = T′₀`. (Qian, §3, base points, loops and representations, arXiv v1 p. 13; Barnet-Lamb–Geraghty–Harris–Taylor, §4, p. 30.)

The construction has the following API.

- `ρ_t` and `ρ_{t′}` are group homomorphisms into `GL(V_{B,t})`, determined by the local systems `V_B`, `V′_B` of §2.3.
- `ρ_{t′}` restricted to `π₁(T₀(ℂ) − {0}, t)` is `ρ_t` composed with the inclusion-induced surjection.
- Changing the base point conjugates the representations by parallel transport.
- In terms of BelyiMaps' peripheral elements, `γ₀ = periph0`, `γ₁ = periph0⁻¹ · periph1 · periph0` and `γ∞ = periphInf`.
- Reduction modulo `λ` is compatible with restriction to the index-`N` subgroup.

*Needs:* §1.6, §§2.3, 2.7; BelyiMaps §§5.2, 5.6; Mathlib `FundamentalGroup`; ComplexComparisonPartII §C5.2.

**Checks.**

- `γ₀γ₁γ∞ = 1`, and `γ₀, γ₁` generate `π₁(T′₀(ℂ), t′)` freely; all three do not.
- `π₁(T₀(ℂ) − {0}, t)` is the kernel of `γ₀ ↦ 1`, `γ₁ ↦ 0` in `ℤ/N`, of index `N`.
- Substituting `γ₀ = p₀` and `γ₁ = p₀⁻¹p₁p₀` into `γ₀γ₁γ∞` gives `p₁p₀p∞ = 1`, the BelyiMaps relation; the unchanged triple `p₀, p₁, p∞` satisfies `p₁p₀p∞ = 1`, not `p₀p₁p∞ = 1`.
- With the opposite orientation of `γ₀` the eigenvalues of `ρ_{t′}(γ₀)` become `ζ_N^{−b}`; since `−B ≠ B` for Qian's data the orientation is not cosmetic.
- `ρ_{t′}(γ₀)^N` lies in the image of `ρ_t`, being the monodromy of `V_B` around `t = 0`, where `V_B` is lisse; hence it is trivial.

### 4.2 Monodromy at zero

For Qian's data (`a_N = 0`) `ρ_{t′}(γ₀)` has characteristic polynomial `∏_{b∈B}(X − ζ_N^b)`, with distinct roots; in particular `det ρ_{t′}(γ₀) = ζ_N^{∑B} = 1`. For the self-dual data, with the middle-coordinate quotient, `ρ(γ₀)` has characteristic polynomial `∏_{j=(N−n+1)/2}^{(N+n−1)/2}(X − ζ_N^j)`. (Qian, Lemma 3.3(1), arXiv v1 p. 13; Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 4.3(1) and proof, p. 30.)

*Needs:* §1.4, §2.6, §4.1.

*Proof sketch.* `γ₀` acts on `V′_{B,t′}` as the deck transformation acts on the fibre of `V_B` at `0`, transported inside `T₀(ℂ)`; on the eigenline `V_{B,i}` (`i ∈ B`) this is `ζ_N^i` because the quotient coordinate has exponent zero (§2.6).

**Checks.**

- `n = 3`, `N = 401`: the eigenvalues are `ζ, ζ², ζ^{398}`, with product `ζ^{401} = 1`.
- For a quotient coordinate `q` with `a_q ≠ 0` the eigenvalues are `ζ_N^{a_q+b}` and the determinant is `ζ_N^{n a_q}`, not one.
- `0 ∉ B`, so `1` is not an eigenvalue of `ρ_{t′}(γ₀)`.

### 4.3 Monodromy at one: Picard–Lefschetz

The fibre `Y₁` has `N^{N−2}` ordinary double points forming one free `H₀`-orbit; let `Δ` be the vanishing cycles, one for each singular point, permuted by `H₀` up to sign. The monodromy `T` around `t = 1` on `H^{N−2}(Y_t(ℂ), ℤ)` is `x ↦ x + ε ∑_{δ∈Δ}⟨x, δ⟩δ` with `ε = ±1` depending on `N`. Since `N − 2` is odd the cup product is alternating and vanishing cycles at distinct points are orthogonal, so `(T − 1)² = 0`; on the `χ`-part `T − 1` has image in the line spanned by `∑_{ξ∈H₀} χ(ξ)⁻¹ ξδ₀`. Hence `ρ_{t′}(γ₁)` is unipotent with `(ρ_{t′}(γ₁) − 1)² = 0` and `rank(ρ_{t′}(γ₁) − 1) ≤ 1`; exact rank one is §4.5. For the self-dual data the characteristic polynomial is `(X − 1)^n` and `dim ker(ρ(γ₁) − 1) ≥ n − 1`. (Qian, Lemma 3.3(3), arXiv v1 pp. 13–14; Barnet-Lamb–Geraghty–Harris–Taylor, proof of Lemma 4.3(2), p. 30.)

*Needs:* §§1.2, 4.1, 2.4, §0.1; LefschetzPencilsAndVanishingCycles §§2.7, 2.8, 0.8a; ComplexComparisonPartII §C6.5.

*Proof sketch.* Locate the singular points of `Y₁` (§1.2). Near `t = 1` the map `t ↦ t^N` is étale, so `ρ_{t′}(γ₁)` is conjugate to `T`. The vanishing cycle complex of the family over a disc around `1` is supported at the finitely many quadratic points, and LefschetzPencilsAndVanishingCycles §2.7 computes it at each; the specialization sequence of §2.8, summed over the points, gives the formula, and §0.8a compares it with the Betti monodromy. `H₀` commutes with the monodromy and permutes `Δ` up to sign, so on the `χ`-part the variation factors through `x ↦ ⟨x, δ₀⟩`. Odd fibre dimension makes `⟨δ, δ′⟩ = 0` for all vanishing cycles, which gives `(T − 1)² = 0` on all of `H^{N−2}` without using a self-dual eigenspace.

**Checks.**

- For the Hesse pencil (`N = 3`) the monodromy around `t = 1` on `H¹` of the elliptic fibre is a transvection, with three vanishing cycles permuted by `μ₃`.
- For a non-self-dual `χ` the `χ`-part pairs with the `χ⁻¹`-part, not with itself, so the symplectic argument for a single eigenspace does not apply; the full odd-degree formula does.
- If `g = 1 + v ⊗ f` has determinant one then `f(v) = 0` and `(g − 1)² = 0`, matching the unipotence obtained here.

### 4.4 Monodromy at infinity is unipotent

For Qian's data and for the self-dual data `ρ_{t′}(γ∞)` is unipotent with characteristic polynomial `(X − 1)^n`, and so is the local monodromy of `ρ_t` around `t = ∞`, which is conjugate to `ρ_{t′}(γ∞)^{±N}`. (Qian, Lemma 3.3(2), arXiv v1 pp. 13–14, whose printed argument through a semistable model gives unipotence only of the `N`-th power; Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 4.3(3) and proof, p. 30; Boxer–Calegari–Gee–Newton–Thorne, Theorem 4.2.1(3), arXiv v3 p. 41.)

*Needs:* §§3.3, 3.4, 4.1, 4.2, 4.3; ComplexComparisonPartII §C6.6; LefschetzPencilsAndVanishingCycles §1.1.

*Proof sketch.* By §3.4, `V′ ≅ (pullback of E_λ along t′ ↦ 1/t′) ⊗ Ψ_λ ⊗ L_θ` with `Ψ_λ` geometrically trivial and `L_θ` of order dividing `N`. The point `t′ = ∞` corresponds to `x = 0`, where `E_λ` has a single unipotent block (§3.3). After the Betti–étale comparison, `ρ_{t′}(γ∞) = c·u` with `u` unipotent and `c` a scalar with `c^N = 1`. By §4.2 and the unipotence part of §4.3, which does not use this target, `det ρ_{t′}(γ∞) = 1`, so `c^n = 1`; `gcd(n, N) = 1` gives `c = 1`.

**Checks.**

- For the self-dual datum with `n = 2`, `ρ(γ∞)` has characteristic polynomial `(X − 1)²` and determinant `1`.
- A nontrivial scalar `N`-th root of unity has unipotent `N`-th power but is not unipotent: unipotence of the `N`-th power alone does not give the statement.
- The hypothesis `gcd(n, N) = 1` is used: for `n = N = 3` a scalar cube root of unity has determinant one.

### 4.5 The companion-matrix model of the Dwork monodromy

`ρ_{t′}(γ₁) − 1` has rank exactly one, so `ρ_{t′}(γ₁)` is a transvection. Let `A` and `B` be the companion matrices of `(X − 1)^n` and `∏_{b∈B}(X − ζ_N^{−b})` in `GL_n(ℤ[ζ_N])` and `ρ : π₁(T′₀(ℂ), t′) → GL_n(ℤ[ζ_N])` the representation `γ₀ ↦ B⁻¹`, `γ∞ ↦ A`, `γ₁ ↦ BA⁻¹`. Then `ρ_{t′} ⊗ ℂ`, with coefficients extended along `τ`, is equivalent to `ρ ⊗ ℂ`, and `ρ(γ₁) − 1` has nonzero entries only in its first column. The same holds for the self-dual data with `B` the companion matrix of `∏_{j=(N−n+1)/2}^{(N+n−1)/2}(X − ζ_N^j)`, and then `ρ` is irreducible. (Qian, Lemma 3.4 and proof, arXiv v1 p. 14; Barnet-Lamb–Geraghty–Harris–Taylor, Corollary 4.4, p. 32.)

*Needs:* §§0.2, 0.3, 4.2, 4.3, 4.4; ClassicalArithmeticCompletion §2.46.

*Proof sketch.* If `ρ_{t′}(γ₁) = 1` then `ρ_{t′}(γ₀) = ρ_{t′}(γ∞)⁻¹` would have eigenvalue `1`, contrary to §4.2 and §4.4; with §4.3 the rank is one. `ρ_{t′}(γ∞)` has characteristic polynomial `(X − 1)^n` and `ρ_{t′}(γ₀)⁻¹` has `∏(X − ζ_N^{−b})`, coprime since `0 ∉ B`; `levelt_rigidity` conjugates `(ρ_{t′}(γ₀), ρ_{t′}(γ∞))` to `(B⁻¹, A)`, and §0.2 gives the first-column shape.

**Checks.**

- `n = 3`: `A = C((X − 1)³)` has columns `e₂, e₃, (1, −3, 3)ᵀ`.
- `n = 2`: `A = [[0, −1], [1, 2]]`, `det A = 1`, trace `2`.
- `BA⁻¹ − 1 ≠ 0` because `(X − 1)^n ≠ ∏(X − ζ_N^{−b})`.

### 4.6 Maximally unipotent monodromy at infinity

`ρ_{t′}(γ∞)` has minimal polynomial `(X − 1)^n`: it is a single unipotent Jordan block. Hence the local monodromy of `ρ_t` around `t = ∞`, conjugate to `ρ_{t′}(γ∞)^{±N}`, is a single unipotent block over `ℂ` and over `ℚ̄_l`. The same holds for the self-dual family and, by coefficient conjugation, for every Galois conjugate `σχ` of the character. (Qian, Corollary 3.5, arXiv v1 p. 14; Barnet-Lamb–Geraghty–Harris–Taylor, Corollary 4.5 and Proposition 4.2(2), pp. 28–32.)

*Needs:* §§0.2, 2.3, 3.3, 4.5; LefschetzPencilsAndVanishingCycles §1.6.

*Proof sketch.* By §4.5, `ρ_{t′}(γ∞)` is conjugate to `A = C((X − 1)^n)`, whose minimal polynomial is `(X − 1)^n` (ClassicalArithmeticCompletion §2.46); this also follows from §3.3. If `u = 1 + ν` with `ν` nilpotent of order `n`, then `u^m − 1 = mν(1 + ⋯)` has the same order when `m` is invertible. Coefficient automorphisms carry the `χ`-eigensheaf to the `σχ`-eigensheaf compatibly with monodromy (§2.3).

**Checks.**

- `n = 2`: `ρ(γ∞) = [[0, −1], [1, 2]]` is conjugate to `[[1, 1], [0, 1]]`.
- In characteristic `p` the `p`-th power of `[[1, 1], [0, 1]]` is the identity, so the statement about the `N`-th power is a characteristic-zero statement.
- In the boundary case `N = n + 1 = 5`, excluded here, the `H₀`-invariant part of the Dwork quintic family has a single unipotent block of size four at `t = ∞`, the classical large complex structure point.

### 4.7 Absolute irreducibility of the residual monodromy

Let `λ` be a prime of `O` (of `O⁺` for the self-dual data) of odd residue characteristic `l ∤ N`. The reduction `ρ̄_{t′} : π₁(T′₀(ℂ), t′) → GL(V′_{B,t′}/λ)` is absolutely irreducible and isomorphic to the reduction `ρ̄` of the companion representation; `ρ̄_{t′}(γ₁)` is a transvection, `ρ̄_{t′}(γ∞)` is unipotent and `ρ̄_{t′}(γ₀)` has the `n` distinct eigenvalues `ζ_N^b mod λ`, `b ∈ B`. (Qian, after Definition 3.6, arXiv v1 p. 15; Barnet-Lamb–Geraghty–Harris–Taylor, proof of Lemma 4.6, pp. 32–33.)

*Needs:* §§0.3, 0.4, 4.2–4.5.

*Proof sketch.* Reduce the characteristic polynomials of §4.2 and §4.4 modulo `λ`; since `λ ∤ N`, `ζ_N^b ≢ 1 (mod λ)` for `b ∈ B`, so they stay coprime. `ρ̄_{t′}(γ₁) − 1` has rank at most one, and exactly one since otherwise `ρ̄(γ₀) = ρ̄(γ∞)⁻¹` would have eigenvalue `1`. §0.4 gives absolute irreducibility, and `levelt_rigidity` over the residue field conjugates the reduced triple to the reduced companion triple; no comparison of integral lattices is needed.

**Checks.**

- For `n = 3`, `l = 3`, `N = 401` the reduction modulo a prime above `3` has no invariant line or plane.
- If `λ | N` then `ζ_N ≡ 1 (mod λ)` and both characteristic polynomials reduce to `(X − 1)^n`; the hypothesis `l ∤ N` is necessary.
- Over `𝔽₃` the reduction of `C((X − 1)³)` is still a single block, of order `3`, since `A³ − 1 = (A − 1)³ = 0` in characteristic three; only its unipotence is used.

### Examples

For the self-dual datum with `n = 2` and `N = 5`, `B = {2, 3}`, the companion model is `γ∞ ↦ [[0, −1], [1, 2]]`, `γ₀ ↦ C((X − ζ⁻²)(X − ζ⁻³))⁻¹` whose characteristic polynomial is `X² − (ζ² + ζ³)X + 1`, and `γ₁ ↦ C(q)C(p)⁻¹`, a transvection; both companion matrices have determinant one and coefficients in `ℤ[ζ₅ + ζ₅⁻¹]`, so the representation takes values in `SL₂(ℤ[ζ₅ + ζ₅⁻¹])`, consistent with the real form of §2.5.

### Dependencies

Layers 0–3; BelyiMaps §§5.2, 5.6; LefschetzPencilsAndVanishingCycles §§0.8a, 1.1, 1.6, 2.7, 2.8; ComplexComparisonPartII §§C5.2, C6.5, C6.6; ClassicalArithmeticCompletion §2.46.

## Layer 5: Residual monodromy and level-structure torsors

By §4.7 the residual monodromy of a Dwork system on the thrice-punctured line is generated by a hypergeometric pair over the residue field. The first four targets identify the groups generated by such pairs, as statements about finite matrix groups; the next ones transport them to the geometric monodromy on `T₀`, construct the skew-Hermitian structure in the unitary case, show that the determinant descends to the base field, and build the moduli of level structures whose geometric irreducibility feeds Moret-Bailly's theorem in Layer 9.

### 5.1 Qian's residual hypergeometric group is `SL_n`

Let `k` be a finite field of odd characteristic `l` generated by a primitive `N`-th root of unity `ζ`, with `N` odd, `n > 2` and `N > 100n + 100`, and suppose `−1` is not a power of `l` modulo `N`. Let `h₀, h∞ ∈ GL_n(k)` with `h∞` of characteristic polynomial `(X − 1)^n`, `h₀` of characteristic polynomial `∏_{b∈B}(X − ζ^b)` for `B = qianIndexSet N n`, and `rank(h₀⁻¹h∞⁻¹ − 1) ≤ 1`. Then `⟨h₀, h∞⟩ = SL_n(k)`. Prove it as `qian_hypergeometric_group_eq_SL`. (Qian, Lemma 3.6 and proof, arXiv v1 pp. 15–16, published Lemma 3.7.)

*Needs:* §§0.1, 0.4, 0.9, 0.11, §§1.4–1.5.

*Proof sketch.* Put `h₁ = h₀⁻¹h∞⁻¹`. Its determinant is `ζ^{−∑B} = 1`, and it is not the identity since `h₀⁻¹` has no eigenvalue `1` (`0 ∉ B`); so it is a transvection (§0.1). `h∞` and `h₀⁻¹` have no common eigenvalue, so `G = ⟨h₀, h∞⟩` is absolutely irreducible (§0.4). The normal closure `Δ` of `h₁` in `G` has `G/Δ` cyclic, generated by the image of `h∞`, an element of `l`-power order, which equals the image of `h₀⁻¹`, of order dividing `N`; so `G = Δ` is generated by transvections. By §0.11, `G` is conjugate to `SL_n(k′)`, `Sp_n(k′)` or `SU(n, k′)` for a subfield `k′ ⊆ k`. A proper subfield would make the eigenvalue set of `h₀` stable under `x ↦ x^{#k′}`, i.e. `l^j B = B` with `l^j ≢ 1`, excluded by §1.5; `Sp_n` would force `B = −B`; `SU(n, k)` would force `l^{r/2}B = −B` for `r = [k : 𝔽_l]`, hence `l^{r/2} ≡ −1` by §1.5. Since `SL_n(k)` is normal in `GL_n(k)`, `G = SL_n(k)`.

**Checks.**

- If `l ≡ 1 (mod N)` then `k = 𝔽_l` and the group is `SL_n(𝔽_l)`; this is the case of the auxiliary prime `l′` in §9.1.
- For `N = 401`, `n = 3`, `l = 5` (order `25`, odd) the hypotheses hold and the group is `SL₃(𝔽_{5^{25}})`; for `l = 3` (order `400`, `3^{200} ≡ −1`) they fail and §5.3 applies instead.
- The determinant hypothesis is used through `∑B ≡ 0`: for an index set with `∑B ≢ 0` the element `h₁` would be a pseudo-reflection that is not a transvection, and `G` would not lie in `SL_n(k)`.

### 5.2 The symplectic residual hypergeometric group

Let `K` be a finite field of odd characteristic `l` containing a primitive `N`-th root of unity `ζ`, `N` odd, and `k ⊆ K` the subfield generated by `ζ + ζ⁻¹`. Let `n = 2m` with `m > 1` and `N > n + 1`. If `h₀, h∞ ∈ GL_n(k)`, `h∞` has characteristic polynomial `(X − 1)^n`, `h₀` has characteristic polynomial `∏_{b∈B}(X − ζ^b)` over `K` for `B = selfDualIndexSet N n`, and `rank(h₀⁻¹h∞⁻¹ − 1) ≤ 1`, then `⟨h₀, h∞⟩` is conjugate in `GL_n(k)` to `Sp_n(k)`. Prove it as `selfDual_hypergeometric_group_conj_Sp`. The rank-two case is part of §5.6. (Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 4.6 and proof, pp. 32–33.)

*Needs:* §§0.1, 0.3, 0.4, 0.11, §§1.4–1.5.

*Proof sketch.* As in §5.1, `h₁` is a transvection (`∑B ≡ 0` because `B = −B`), `G` is absolutely irreducible and generated by transvections. The characteristic polynomials of `h∞` and `h₀` are invariant under `x ↦ x⁻¹`, so by Levelt's theorem (`levelt_rigidity`) `G` is conjugate to its contragredient and preserves a nondegenerate bilinear form, unique up to scalars by absolute irreducibility; a transvection preserves no nondegenerate symmetric form in odd characteristic, so the form is alternating. §0.11 and containment in `Sp_n` exclude `SL_n(k′)` and `SU(n, k′)` for `n > 2`: a diagonal element `diag(α, β, (αβ)⁻¹, 1, …)` of `SU` with `σ(α)α = σ(β)β = 1` is conjugate into `Sp_n` only if one of `α, β, αβ` is `1`. The characteristic polynomial of `h₀` lies in `k′[X]` only if `l^jB = B` for `#k′ = l^j`, so `l^j ≡ ±1` (§1.5(2)), which puts `ζ + ζ⁻¹` in `k′`; hence `k′ = k`.

**Checks.**

- For `m = 2`, `N = 7`: `B = {2, 3, 4, 5} = −B` and `∑B = 14 ≡ 0`, so `h₁` is a transvection; the conclusion is a conjugate of `Sp₄(𝔽_l(ζ₇ + ζ₇⁻¹))`.
- For `N = n + 1` the index set is `(ℤ/Nℤ) − {0}`, the characteristic polynomial of `h₀` lies in `𝔽_l[X]`, and the group lies in `Sp_n(𝔽_l)` rather than `Sp_n(k)`: the hypothesis `N > n + 1` is needed.
- The group lies in `Sp_n(k)` with `k = 𝔽_l(ζ + ζ⁻¹)`, which can be strictly smaller than `𝔽_l(ζ)`: for `l = 2`, excluded here, and for `l = 3`, `N = 7`, `𝔽₃(ζ₇) = 𝔽_{3⁶}` while `𝔽₃(ζ₇ + ζ₇⁻¹) = 𝔽_{3³}`.

### 5.3 The unitary residual hypergeometric group

In the setting of §5.1 suppose instead that `σ` is a field automorphism of `k` with `σ(ζ) = ζ⁻¹`, equivalently that `−1` is a power of `l` modulo `N`. Then `⟨h₀, h∞⟩` is conjugate in `GL_n(k)` to the special unitary group `{g : σ(g)ᵀg = 1, det g = 1}` of `k` over the fixed field of `σ`. Prove it as `qian_hypergeometric_group_conj_SU`. (Boxer–Calegari–Gee–Newton–Thorne, Proposition 4.4.2 and proof, arXiv v3 p. 47; Qian, proof of Lemma 3.6, arXiv v1 p. 15.)

*Needs:* §§0.3–0.7, 0.9, 0.11, §§1.4–1.5.

*Proof sketch.* The map `g ↦ (σ(g)ᵀ)⁻¹` is an automorphism of `GL_n(k)` carrying `(h₀, h∞)` to a pair with the same characteristic polynomials (the eigenvalue sets `{ζ^b}` and `{1}` are stable under `x ↦ σ(x)⁻¹`) and the same rank condition; Levelt's theorem gives `P` with `P h P⁻¹ = (σ(h)ᵀ)⁻¹`, and Schur's lemma with Hilbert 90 turns `P` into a nondegenerate Hermitian form preserved by `G` (§0.8), equivalent to the standard one (§0.7). With determinant one, `G` lies in a conjugate of `SU_n(k)`. As in §5.1 it is generated by transvections and absolutely irreducible; §0.11 and the stabiliser lemma exclude every proper subfield, `SL_n(k)` (too large) and `Sp_n` (`B ≠ −B`).

**Checks.**

- If `l ≡ −1 (mod N)` then `k = 𝔽_{l²}` and `σ` is `x ↦ x^l`; for `n = 3` the group is `SU₃(𝔽_{l²})`.
- `σ` is unique when it exists: a finite field has at most one automorphism of order two, and `σ(ζ) = ζ⁻¹` forces it.
- If no automorphism inverts `ζ`, the hypothesis is empty and §5.1 applies.

### 5.4 The two-prime residual hypergeometric group

Let `k₁, k₂` be finite fields of distinct odd characteristics `l₁ ≠ l₂` with `max(l₁, l₂) > 10`, each generated by a primitive `N`-th root of unity, with `−1` not a power of `lᵢ` modulo `N`, and let `(h₀ᵢ, h∞ᵢ)` be pairs over `kᵢ` as in §5.1 for the same `N` and `n`. Then `(h₀₁, h₀₂)` and `(h∞₁, h∞₂)` generate `SL_n(k₁) × SL_n(k₂)`. Prove it as `qian_two_prime_hypergeometric_group`. (Qian, Proposition 3.7 and proof, arXiv v1 p. 16, published Proposition 3.8.)

*Needs:* §§0.9, 0.10, 0.12, §5.1.

*Proof sketch.* The generated group projects onto each factor by §5.1. Relabel so that `l₁ > 10`: every nontrivial quotient of `SL_n(k₁)` has `PSL_n(k₁)` as a composition factor (§0.9), and no composition factor of `SL_n(k₂)` is isomorphic to it (§0.10); §0.12 gives the full product.

**Checks.**

- For `N = 401` and `n = 3`, `l₁ = 5` (order `25`) satisfies the hypothesis, while `l₂ = 7` and `l₂ = 11` (order `200`, with `7^{100} ≡ 11^{100} ≡ −1 (mod 401)`) do not, and the unitary variants of §5.10 apply to them; the prime `l₂ = 3209 ≡ 1 (mod 401)` satisfies it with `k₂ = 𝔽_{3209}`.
- For `l₁ = l₂` the diagonal embedding of a single pair generates a proper subgroup isomorphic to `SL_n(k₁)`: distinctness of the characteristics is necessary.
- The bound `max(l₁, l₂) > 10` excludes small coincidences such as `PSL₂(𝔽₄) ≅ PSL₂(𝔽₅)`; here both characteristics are odd and one is at least `11`.

### 5.5 Full special linear residual monodromy

Let `n > 2`, `gcd(N, n) = 1`, Qian's datum, `l` an odd prime prime to `N`, `λ` a prime of `O` above `l`, so that `k(λ) = 𝔽_{l^r}` with `r` the order of `l` modulo `N`, and assume `N ∤ l^{r/2} + 1` when `r` is even. Then `ρ̄_{t′}(π₁(T′₀(ℂ), t′)) = SL(V′_{B,t′}/λ) ≅ SL_n(k(λ))` and `ρ̄_t(π₁(T₀(ℂ), t)) = SL(V_{B,t}/λ)` for every `t ∈ T₀(ℂ)`. Equivalently the geometric monodromy of `V[λ]`, and of `W̄_λ`, is `SL_n(k(λ))`. The statement on `T′₀` is for `n > 2` only; rank two uses the self-dual family (§5.6). (Qian, Lemma 3.6 with proof, arXiv v1 pp. 15–16, published Lemma 3.7.)

*Needs:* §§4.1, 4.5, 4.7, §5.1, §0.9; §3.6 for `W̄_λ`.

*Proof sketch.* By §4.7, `ρ̄_{t′}` is the reduction of the companion representation, whose image is generated by the reductions of `ρ(γ₀) = B⁻¹` and `ρ(γ∞) = A`; these satisfy the hypotheses of §5.1 over `k(λ) = 𝔽_l(ζ_N mod λ)`, so the image is `SL_n(k(λ))`. `π₁(T₀(ℂ) − {0})` is normal of index `N` in `π₁(T′₀(ℂ))` with cyclic quotient, so `ρ̄_t` has image normal in `SL_n(k(λ))` with cyclic quotient of order dividing `N`; the cyclic composition factors of `SL_n(k(λ))` have order dividing `n` (§0.9) and `gcd(N, n) = 1`. Twisting by `Ψ_λ⁻¹` does not change geometric monodromy.

**Checks.**

- If `l ≡ 1 (mod N)` then `k(λ) = 𝔽_l` and the residual monodromy of `V[λ]` is `SL_n(𝔽_l)`.
- If `gcd(N, n) = d > 1`, the passage from `T′₀` to `T₀` could stop at a normal subgroup of index dividing `d`: the hypothesis is used.
- For `n = 2` Qian's last-coordinate quotient does not have full monodromy; the middle-coordinate quotient of the self-dual family does (§5.6).

### 5.6 Full symplectic residual monodromy of the self-dual family

For the self-dual data (`n` even, `N > n + 1`) and a nonzero prime `λ` of `O⁺ = ℤ[ζ_N, 1/(2N)]⁺`, the reduction of the monodromy of `Ṽ_B` modulo `λ` has image `Sp(Ṽ_{B,t̃}/λ)`, and for every `t ∈ T₀(ℂ)` the map `π₁(T₀(ℂ), t) → Sp(V_{B,t}/λ)` is surjective. For `n = 2` this gives `SL₂(k(λ)) = Sp₂(k(λ))` on `T₀(ℂ)`. (Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 4.6 and Corollary 4.7 with proofs, pp. 32–34; Qian, after Proposition 3.2, arXiv v1 p. 13, for its use in rank two.)

*Needs:* §§2.5, 4.1, 4.7, §5.2, §§0.9, 0.11.

*Proof sketch.* §4.7 and §5.2 (with `k(λ)` the residue field of `O⁺`, generated by the image of `ζ_N + ζ_N⁻¹`) give the image on the quotient line for `n > 2`. For `n = 2` the same argument runs with §0.11(2): the image is `SL₂(k′)` for a subfield, and `k′ = k(λ)` by the trace field, or `l = 3` and a binary icosahedral group, which is impossible because there a product of two elements of order three has order `4`, `6` or `10`, never the odd order `N` of `ρ̄(γ₀)` with `N ≥ 5`. The quotient by the index-`N` subgroup is cyclic of order dividing `N`, and the cyclic composition factors of `Sp_n(𝔽_{l^r})` have order `2` or `3`, the latter only for `Sp₂(𝔽₃)`, both prime to `N`.

**Checks.**

- For `n = 2` the residual monodromy of the real form modulo `λ` is `SL₂(k(λ))`.
- For `n = 2`, `N = 5`, `l = 3`, `k(λ) = 𝔽₃(ζ₅ + ζ₅⁻¹) = 𝔽₉`: the binary icosahedral subgroup `SL₂(𝔽₅) ⊂ SL₂(𝔽₉)` is generated by transvections, but in it a product of two elements of order three has order `4`, `6` or `10`, never `5`, so it cannot be the image and the image is `SL₂(𝔽₉)`.
- `k(λ)` is the residue field of `O⁺`, whose degree over `𝔽_l` need not be the order of `l` modulo `N`: for `l = 3`, `N = 7` it is `3` while the order of `3` modulo `7` is `6`.
- For Qian's last-coordinate rank-two quotient the statement fails; the middle coordinate has exponent zero for the self-dual datum and is the one used.

### 5.7 The skew-Hermitian Poincaré pairing on the residual Dwork system

Let `n > 2`, Qian's datum, and `λ` a place of `M` above `l ∤ 2N` with `−1 ∈ ⟨l⟩ ⊂ (ℤ/Nℤ)^×`, so that the Frobenius of `k(λ)` over `𝔽_l` has a power inducing complex conjugation `c` on `μ_N`. Poincaré duality on the relative cohomology with `O_{M⁺_λ}`-coefficients, extended sesquilinearly to `O_{M_λ}`, and the `Ψ`-twist give a perfect `𝔽_l`-bilinear pairing `⟨·,·⟩ : W̄_λ × W̄_λ → k(λ)(1 − n)` with `⟨ax, y⟩ = a⟨x, y⟩`, `⟨x, ay⟩ = c(a)⟨x, y⟩` and `⟨y, x⟩ = −c⟨x, y⟩`, skew-Hermitian for `k(λ)/k(λ)^c`. (Boxer–Calegari–Gee–Newton–Thorne, after Definition 4.4.1, arXiv v3 pp. 46–47.)

The construction has the following API.

- The pairing is perfect on every stalk and induces `⟨·,·⟩_{W̄_{t,λ}}` on each fibre.
- `π₁(T₀[1/l])` acts by similitudes with multiplier `ε̄^{1−n}`; every fibre `W̄_{t,λ}` is conjugate self-dual with this multiplier.
- The geometric monodromy preserves the form, hence lies in a unitary group `U_n(k(λ))`; with the geometrically trivial determinant of §3.6 it lies in `SU_n(k(λ))` after the identifications of §§0.6–0.7.
- `⟨x, x⟩ ∈ ker(1 + c)` for every `x`.
- The form induced on `∧ⁿ W̄_λ` is a Hermitian form up to a trace-zero scalar on a line, compatible with `det W̄_λ ≅ ε̄^{−n(n−1)/2}`.

*Needs:* §§0.5–0.7, §§2.4, 3.5, 3.6; EtaleDualityAndPerverseSheaves §0.5.

*Proof sketch.* §2.4 pairs the `χ`-part with the `χ⁻¹`-part; `c` sends `χ` to `χ⁻¹`, and when `c` lies in the image of `Gal(k(λ)/𝔽_l)` composition with the coefficient automorphism gives a sesquilinear self-pairing of `V̄_λ`. The middle cup product is alternating (`N − 2` odd), giving `⟨y, x⟩ = −c⟨x, y⟩`. The twist by `Ψ_λ⁻¹` and `Ψ c(Ψ) = ε^{n+1−N}` (§3.5) move the values from `k(λ)(2 − N)` to `k(λ)(1 − n)`. Multiplying by a nonzero trace-zero `η` gives a Hermitian form, conjugate to the standard one (§0.7).

**Checks.**

- If `l ≡ −1 (mod N)` then `k(λ) = 𝔽_{l²}` and `c` is `x ↦ x^l`; the pairing is skew-Hermitian for `𝔽_{l²}/𝔽_l`.
- If `l ≡ 1 (mod N)`, `c` is not a power of Frobenius and no such self-pairing exists: `W̄_λ` pairs with the `χ⁻¹`-system, a different local system, and the monodromy is `SL_n` (§5.5).
- The pairing is not `k(λ)`-bilinear: `⟨x, ay⟩ = c(a)⟨x, y⟩ ≠ a⟨x, y⟩` for `a ∉ k(λ)^c`.

### 5.8 Full special unitary residual monodromy

Let `n > 2`, `gcd(N, n) = 1`, Qian's datum, `l ∤ 2N` with `−1 ∈ ⟨l⟩ (mod N)` and `λ | l` a place of `M`. The image of the geometric monodromy group `π₁(T_{0,ℚ̄})` on `W̄_λ` is `SU_n(k(λ))` for the skew-Hermitian structure of §5.7. (Boxer–Calegari–Gee–Newton–Thorne, Proposition 4.4.2 and proof, arXiv v3 p. 47.)

*Needs:* §§4.7, 5.3, 5.7, §0.9.

*Proof sketch.* On `T′₀` the image is generated by a hypergeometric pair over `k(λ)`, conjugate to `SU_n(k(λ))` by §5.3, and the invariant form of §5.7 identifies the conjugate. The image on `T₀` is normal of index dividing `N`; `SU_n(k(λ))` is perfect with cyclic composition factors of order dividing `n` (§0.9), and `gcd(N, n) = 1`.

**Checks.**

- For `l ≡ −1 (mod N)` and `n = 3` the geometric monodromy of `W̄_λ` is `SU₃(𝔽_{l²})`.
- The image is not all of `SL_n(k(λ))`: it preserves the form of §5.7, and `[SL₃(𝔽_{l²}) : SU₃(𝔽_{l²})] > 1`.
- The multiplier kernel `U_n(k(λ))` is strictly larger than the image: the image has determinant one.

### 5.9 The determinant descends to the base field

For every nonzero ideal `𝔫` of `O` (of `O⁺` for the self-dual data) the rank-one lisse sheaf `∧ⁿ V[𝔫]` on `(T₀)_F`, `F ⊇ ℚ(ζ_N)`, has trivial geometric monodromy, hence is the pullback of a character of `G_F`, determined by its stalk at `t = 0`. The same holds for `∧ⁿ V_λ` and for `∧ⁿ W̄_λ`, which is `ε̄^{−n(n−1)/2}`. This is descent of the determinant, not triviality of the arithmetic character. (Qian, after Lemma 3.6, arXiv v1 p. 16; Boxer–Calegari–Gee–Newton–Thorne, Theorem 4.2.1(1), arXiv v3 p. 41, and the definition of `W` on p. 42.)

*Needs:* §§2.7, 4.2, 4.3, 4.4; EtaleCohomologyFoundations §F.0.A2.

*Proof sketch.* The geometric fundamental group of `T′₀` is generated by `γ₀, γ₁, γ∞`, whose images have determinant one (§§4.2–4.4); this persists after reduction and restriction to the finite-index subgroup of `T₀`. A lisse sheaf on a geometrically connected `F`-variety with trivial geometric monodromy comes from a representation of `G_F` by the exact sequence of EtaleCohomologyFoundations §F.0.A2; its value is read at the `F`-point `t = 0`.

**Checks.**

- For `n = 3` and `𝔫 = λ`, `∧³V[λ]` is the character by which `G_F` acts on the top exterior power of the Fermat fibre's eigenpart.
- For a quotient coordinate with `a_q ≠ 0` the monodromy at zero has determinant `ζ_N^{n a_q}`, so the determinant need not descend from the quotient line `T′₀`; it still descends on `T₀`, where `t = 0` is a point of the base.
- `∧ⁿ W̄_λ ≅ ε̄^{−n(n−1)/2}` is nontrivial for `n > 1` and `l > n(n−1)/2 + 1`: descent does not make the arithmetic character trivial.

### 5.10 Residual monodromy at two primes is the full product

Let `l₁ ≠ l₂` be odd primes prime to `N`, `λᵢ | lᵢ`, and suppose each factor's geometric monodromy is the full group `Hᵢ`, one of `SL_n(k(λᵢ))` (`n > 2`, `−1 ∉ ⟨lᵢ⟩`), `SU_n(k(λᵢ))` (`n > 2`, `−1 ∈ ⟨lᵢ⟩`) or `Sp_n(k(λᵢ))` (self-dual data). Assume `max(l₁, l₂) > 10` unless both factors are symplectic. Then for every `t ∈ T₀(ℂ)` the geometric monodromy `π₁(T₀(ℂ), t) → H₁ × H₂` is surjective. (Qian, Proposition 3.7 with proof, arXiv v1 p. 16; Barnet-Lamb–Geraghty–Harris–Taylor, Corollary 4.8 and proof, p. 34; Boxer–Calegari–Gee–Newton–Thorne, proof of Proposition 4.4.2, arXiv v3 p. 47.)

*Needs:* §§0.9, 0.10, 0.12, §§5.4–5.6, 5.8.

*Proof sketch.* Each projection is surjective (§§5.5, 5.6, 5.8). Relabel so that `H₁` is not `Sp₂(𝔽₃)` and, in the mixed or linear cases, `l₁ > 10`: `H₁` is perfect and each nontrivial quotient has its simple projective quotient as a composition factor (§0.9); that factor is not a composition factor of `H₂` (§0.10, whose symplectic part needs only distinct odd characteristics). If `H₂ = Sp₂(𝔽₃)` it is solvable, with composition factors of orders `2` and `3`, and shares no nontrivial quotient with `H₁`; it is never called perfect. Goursat (§0.12) gives the full product.

**Checks.**

- For Qian's switch (`l′ ≡ 1 (mod N)`, `l′ > 2ln + 5 > 10`) the hypotheses hold with `H₂ = SL_n(𝔽_{l′})`.
- `Sp₂(𝔽₃)` would require `k(λ) = 𝔽₃`, that is `3 ≡ ±1 (mod N)`, which no odd `N ≥ 3` satisfies; the argument nevertheless never treats it as perfect.
- Two symplectic factors need only distinct odd characteristics: for `n = 2` the orders `q(q² − 1)/2` of `PSL₂(𝔽_q)` are strictly increasing in `q`, so `PSp₂` over fields of different characteristics are never isomorphic.
- For `l₁ = l₂` and the same prime `λ` the image is the diagonal, a proper subgroup.

### 5.11 Moduli of level structures on Dwork systems

Let `F ⊇ ℚ(ζ_N)` be a number field, `l₁ ≠ l₂` primes not dividing `2N`, `λᵢ` places of `M` above `lᵢ`, and `Λ = W̄_{λ₁} × W̄_{λ₂}` (or `V[𝔫]` for `𝔫 = λ₁λ₂`, or the self-dual `V[𝔫]((N − 1 − n)/2)` over `O⁺`). Level-structure data are: (1) étale sheaves `Uᵢ` on `Spec F` of free `k(λᵢ)`-modules of rank `n`, i.e. continuous representations of `G_F`; (2) isomorphisms `ηᵢ : ∧ⁿW̄_{λᵢ} ≅ ∧ⁿUᵢ` over `(T₀)_F`, which exist by §5.9 exactly when the determinant characters agree; (3) in the unitary case `−1 ∈ ⟨lᵢ⟩`, a perfect `𝔽_{lᵢ}`-bilinear skew-Hermitian pairing `Uᵢ × Uᵢ → k(λᵢ)(1 − n)`, with `ηᵢ` compatible with the induced pairings on `∧ⁿ`; in the self-dual case, a perfect alternating pairing with multiplier `ε^{1−n}` matching that of `V[𝔫]`. The functor `T({Uᵢ})` on `(T₀)_F`-schemes sends `S` to pairs of isomorphisms `φᵢ : W̄_{λᵢ,S} ≅ U_{i,S}` with `∧ⁿφᵢ = ηᵢ`, preserving the pairings in the unitary (resp. symplectic) case. It is represented by a finite étale `(T₀)_F`-scheme, a torsor under `SL(W̄_{λ₁}) × SL(W̄_{λ₂})` (resp. `SU`, `Sp`). For one prime `l ≡ 1 (mod N)` write `T(r̄_λ)`; for two primes `≡ ±1 (mod N)` write `T(r̄_{λ₁}, r̄_{λ₂})`. This covers Qian's `T_W` (`n > 2`, split case), the self-dual `T_W` of Barnet-Lamb–Geraghty–Harris–Taylor with the symplectic compatibility required by Barnet-Lamb–Gee–Geraghty–Taylor, and the torsors of Boxer–Calegari–Gee–Newton–Thorne. (Qian, before Proposition 3.7, arXiv v1 p. 16; Barnet-Lamb–Geraghty–Harris–Taylor, §4, the cover `T_W`, p. 28; Barnet-Lamb–Gee–Geraghty–Taylor, proof of Theorem 3.1.2, arXiv v4 pp. 43–44; Boxer–Calegari–Gee–Newton–Thorne, Definition 4.4.1 and Remark 4.4.3, arXiv v3 pp. 46–48, with places of `M` and `𝔽_{lᵢ}`-bilinearity.)

The construction has the following API.

- `T({Uᵢ}) → (T₀)_F` is finite étale, and a torsor under `∏ SL(W̄_{λᵢ})` (`SU` in the unitary case, `Sp` for the self-dual data).
- For a field `K ⊇ F` and `t ∈ T₀(K)`, a `K`-point of `T({Uᵢ})` over `t` is a `G_K`-equivariant isomorphism `W̄_{λᵢ,t} ≅ Uᵢ|_{G_K}` with the prescribed determinant and pairing compatibility.
- Formation commutes with extension of `F` and with base change on `T₀`.
- For one prime `λ`, `l ≡ 1 (mod N)` and `r̄_λ` with determinant `ε̄^{−n(n−1)/2}`, `T(r̄_λ)` is defined with `Λ = W̄_λ`.

*Needs:* §§2.5, 2.7, 3.6, 5.7, 5.9; EtaleCohomologyFoundations §F.0.2; SchemeAndStackFoundations §1.15.

*Proof sketch.* Étale locally both sides are constant and `η` is a unit; the solutions form a coset of `SL_n` (resp. `SU_n`, `Sp_n`) inside `GL_n`, so the functor is a locally constant étale sheaf of finite sets. The set of coefficient-linear isomorphisms of the fibres is a finite continuous `π₁`-set, hence a finite étale cover (EtaleCohomologyFoundations §F.0.2); the determinant and pairing conditions cut out a `π₁`-stable subset whose geometric fibres are the classical-group torsors when nonempty. Coherent Isom schemes are not used.

**Checks.**

- For one prime with `k(λ) = 𝔽_l`, the degree of `T(r̄_λ)` over `T₀` is `#SL_n(𝔽_l)`; for `n = 3`, `l = 7` it is `7³(7² − 1)(7³ − 1) = 5630688`.
- If `U = W̄_{λ,t₀}` for an `F`-point `t₀` and `η` is the identity, then `t₀` lifts to an `F`-point of `T(U)`.
- If `det U ≇ det W̄_λ` as `G_F`-characters there is no `η`, and the data are not defined.
- In the unitary case, dropping the pairing condition gives a torsor under `SL_n(k(λ))` on which the geometric monodromy `SU_n(k(λ))` has `[SL_n : SU_n] > 1` orbits, so it is not geometrically connected; the same happens for the symplectic data without the symplectic compatibility.

### 5.12 The level-structure torsors are geometrically irreducible

Under the hypotheses of §5.10, or for one prime `l ≡ 1 (mod N)` with `k(λ) = 𝔽_l`, and with level data as in §5.11 (pairings compatible with `ηᵢ` in the unitary case, symplectic compatibility in the self-dual case), `T({Uᵢ})` is a smooth, geometrically irreducible `F`-variety. (Qian, Proposition 3.7, arXiv v1 p. 16; Barnet-Lamb–Geraghty–Harris–Taylor, Proposition 4.2(1), p. 28, with the symplectic compatibility; Boxer–Calegari–Gee–Newton–Thorne, Proposition 4.4.2 and Remark 4.4.3, arXiv v3 pp. 47–48.)

*Needs:* §§5.5, 5.10, 5.11; EtaleCohomologyFoundations §F.0.2.

*Proof sketch.* `T({Uᵢ})` is finite étale over the smooth geometrically connected `(T₀)_F`, hence smooth; it is geometrically connected exactly when `π₁(T_{0,ℚ̄})` acts transitively on a geometric fibre, which is a torsor under `∏Hᵢ`, onto which the geometric monodromy surjects (§5.10, or §5.5 for one prime). A smooth connected variety over a field of characteristic zero is irreducible.

**Checks.**

- For one prime `l ≡ 1 (mod N)`, `T(r̄_λ)` is geometrically irreducible because the monodromy of `W̄_λ` is `SL_n(𝔽_l)`.
- Without the compatibility of `ηᵢ` with the pairings the fibre can be empty: the determinants of isometries of a Hermitian space form a coset of the norm-one group, and an `η` outside it gives no isometry.
- For two primes of the same characteristic the monodromy is not the product, and the torsor has several geometric components.

### Examples

For `N = 401`, `n = 3`, `l = 5` (order `25` modulo `401`, so `−1 ∉ ⟨5⟩`) and the prime `l′ = 3209 = 8 · 401 + 1`, the smallest prime congruent to `1` modulo `401`, §5.4 gives residual monodromy `SL₃(𝔽_{5^{25}}) × SL₃(𝔽_{3209})` and §5.12 a geometrically irreducible torsor `T_W` for every compatible choice of `U₁, U₂, η`. Since `3209 ≡ 2 (mod 3)`, cubing is bijective on `𝔽_{3209}^×`, which §6.5 uses at this prime.

### Dependencies

Layers 0–4; EtaleCohomologyFoundations §§F.0.2, F.0.A2; EtaleDualityAndPerverseSheaves §0.5; SchemeAndStackFoundations §1.15.

## Layer 6: Frobenius, Gauss sums and determinants

Frobenius acts on each eigenline of the Fermat fibre by a product of Gauss sums. For a zero-shaped datum the product over the index set collapses, by `g(a)g(−a) = q`, to an `n`-th power times a power of `q`: the determinant of a Dwork motive is an `n`-th power up to a quadratic extension of the coefficient field. This is what allows determinants to be matched by finite-field-valued `n`-th roots after a totally real base change. The last target computes Frobenius polynomials of Dwork fibres at good places, proving their `λ`-independence through twisted forms and the trace formula.

### 6.1 Frobenius on the Fermat eigenlines is a product of Gauss sums

Let `F ⊇ ℚ(ζ_N)`, `v` a finite place of `F` of residue characteristic `p ∤ Nl` with residue field of `q` elements, `ψ : 𝔽_q → ℚ̄_l^×` a nontrivial additive character and `t : μ_N(𝔽_q) ≅ μ_N(ℚ̄_l)` the identification through the place. For `a ∈ ℤ/Nℤ` put `g(v, a) = −∑_{x∈𝔽_q^×} t(x^{(1−q)/N})^a ψ(x)`, so that `g(v, 0) = 1`. For `i ∈ B(a)` geometric Frobenius at `v` acts on the eigenline `V_{λ,i}` of the Fermat fibre by `q⁻¹ ∏_{j=1}^N g(v, a_j + i)`, which is independent of `ψ`; for `i ∉ B(a)` the eigenspace is zero. (Qian, proof of Lemma 3.8, arXiv v1 p. 17, published Lemma 3.9; Deligne, *Hodge cycles on abelian varieties*, Chapter I, §7, Proposition 7.10.)

*Needs:* §§2.1, 2.6; Mathlib `gaussSum`, `gaussSum_mulShift`, `jacobiSum`; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3.

*Proof sketch.* The Fermat fibre has good reduction at `v`, and the eigenspace decomposition commutes with Frobenius (§2.6). Weil's computation of the zeta function of the Fermat hypersurface by Jacobi sums, written as products of Gauss sums, gives the eigenvalue on each character line; the trace formula for the elements of `H` over `𝔽_{q^m}` separates the lines. Independence of `ψ` holds because `∑_j(a_j + i) ≡ 0 (mod N)`: replacing `ψ` by `ψ_c(x) = ψ(cx)` multiplies the product by `t(c^{(1−q)/N})^{−∑(a_j+i)} = 1`.

**Checks.**

- `N = 3`, the line `(1, 1, 1)` of the Fermat cubic: Frobenius acts by `q⁻¹g(v, 1)³`, a cubic Jacobi sum up to sign, of complex absolute value `√q`.
- `g(v, 0) = 1`: the normalising sign makes the trivial character contribute nothing, matching `gaussSum 1 ψ = −1` in Mathlib's convention.
- For `i ∉ B(a)` some `a_j + i` vanishes, and the corresponding eigenspace of the Fermat fibre is zero, consistent with §2.6.

### 6.2 The Gauss-sum formula for the determinant

Let `F` be a finite field with `q` elements, `χ` a multiplicative character of exact odd order `N`, `ψ` a primitive additive character, and `g(a) = −gaussSum(χ^a, ψ)` (Qian's normalisation, `qianGauss`). For every zero-shaped datum `a` of rank `n` with index set `B`, `∏_{b∈B} ∏_{j=1}^N g(a_j + b) = (∏_{b∈B} g(b))^n · q^{n(N − n)/2}`. Prove it as `zeroShaped_gauss_product`. Consequently, for `v ∤ Nl` with `q = #k(v)`, `det(Frob_v | V_{λ,0}) = q^{−n} ∏_{b∈B}∏_j g(v, a_j + b) = q^{n(N−n−2)/2} (∏_{b∈B} g(v, b))^n`, and by §5.9 this is the value of the character `det V[λ]` of `G_F` at `Frob_v`. (Qian, Lemma 3.8 and formula (3.1), arXiv v1 pp. 17–18, published Lemma 3.9.)

*Needs:* §§1.4, 5.9, 6.1; Mathlib `gaussSum`, `gaussSum_mul_gaussSum_eq_card`, `AddChar.IsPrimitive`, `MulChar`.

*Proof sketch.* For a zero-shaped datum the values are `{0} ∪ A′` with `A′` the `N − n − 1` nonzero values, `B` is the complement of `−({0} ∪ A′)`, and `0 ∉ B`. For `b ∈ B` the residues `a_j + b` are `b` (`n + 1` times) and `b − s` for `s ∉ B ∪ {0}`, so `∏_j g(a_j + b) = g(b)^n · ∏_{u≠0} g(u) / ∏_{b′∈B, b′≠b} g(b − b′)`. For `u ≠ 0`, `χ^u ≠ 1` and `χ(−1) = 1` (odd order), so `g(u)g(−u) = gaussSum(χ^u, ψ)·gaussSum(χ^{−u}, ψ) = q` by `gaussSum_mul_gaussSum_eq_card`; hence `∏_{u≠0} g(u) = q^{(N−1)/2}` and `∏_{b≠b′} g(b − b′) = q^{n(n−1)/2}`. Multiply over `b ∈ B`.

**Checks.**

- Weight check: `|g(v, b)| = √q`, so `|det| = q^{n(N−n−2)/2} q^{n²/2} = q^{n(N−2)/2}`, consistent with purity of weight `N − 2` in rank `n`.
- `n = 0` (the vector `(0, 1, …, N − 1)` permuted): `B = ∅` and both sides are `1`.
- The vector `a = 0`, of rank `n = N − 1`: the left side is `∏_{b≠0} g(b)^N` and the right side `(∏_{b≠0} g(b))^{N−1} q^{(N−1)/2}`; they agree because `∏_{b≠0} g(b) = q^{(N−1)/2}`.
- The identity needs `χ(−1) = 1`: for a character of even order `2` and `N = 2` the product `g(1)g(−1) = g(1)² = χ(−1)q` can be `−q`; odd `N` excludes this.

### 6.3 The Gauss-sum product descends to the cyclotomic coefficients

For `v ∤ Nl` of residue characteristic `p`: if `∑_{b∈B} b ≡ 0 (mod N)` then `∏_{b∈B} g(v, b) ∈ ℚ_l(ζ_N)`; for the self-dual data with `n = 2`, `g(v, b₁)g(v, b₂) = q` with `B = {b₁, −b₁}`, which lies in `ℚ`. (Qian, Lemma 3.8, formulas (3.2)–(3.3), arXiv v1 p. 18; the printed rank-two argument chooses an automorphism inverting `ζ_N` and fixing `ζ_p`, which need not exist.)

*Needs:* §§1.4, 6.1, 6.2; Mathlib `gaussSum_mulShift`.

*Proof sketch.* An automorphism `σ` of `ℚ̄_l` fixing `ℚ_l(ζ_N)` acts on `p`-th roots of unity by some `a ∈ 𝔽_p^×`; substituting `x ↦ a⁻¹x` gives `σ(g(v, b)) = t(a^{(q−1)/N})^b g(v, b)` (Mathlib `gaussSum_mulShift`), and the product over `B` picks up `t(a^{(q−1)/N})^{∑b} = 1`. In rank two the product is `g(b)g(−b) = q` by §6.2.

**Checks.**

- `n = 2`, `l = 3`, `N = 301`, `p = 5`: no `σ ∈ G_{ℚ₃(ζ_N)⁺}` need invert `ζ_N` and fix `ζ₅`, yet `g(b)g(−b) = 5` is rational.
- For a single `b ≠ 0`, `g(v, b)` is not in `ℚ_l(ζ_N)` in general: `σ` multiplies it by `t(a^{(q−1)/N})^b`, a nontrivial root of unity for suitable `a`.
- For Qian's datum with `n = 3`, `N = 401`, `∑B = 401 ≡ 0`, so the product descends.

### 6.4 The determinant of the residual Dwork motive is an `n`-th power up to `𝔽_{l²}`

Let `F ⊇ ℚ(ζ_N)` and `λ` a prime above `l` of `O` (of `O⁺` when `n = 2`) with residue field `k(λ)`. The character `det V[λ]` of `G_F` (§5.9) takes values in `(𝔽_{l²}^× k(λ)^×)^n ⊂ 𝔽̄_l^×`, and in `(k(λ)^×)^n` when `𝔽_{l²} ⊆ k(λ)`. (Qian, Lemma 3.8 with proof, arXiv v1 pp. 16–18.)

*Needs:* §§5.9, 6.2, 6.3; Chebotarev Layer 10.

*Proof sketch.* By Chebotarev it suffices to evaluate at `Frob_v` for `v ∤ 2Nl`, where §6.2 gives `q^{n(N−n−2)/2}(∏ g(v, b))^n`. The product `∏ g(v, b)` is `λ`-integral in `ℚ_l(ζ_N)` (resp. `ℚ_l(ζ_N)⁺`) by §6.3, so its reduction lies in `k(λ)`; `q^{n(N−n−2)/2}` is `(q^{(N−n−2)/2})^n` when `N − n` is even, and `(√q)^{n(N−n−2)}` with `√q ∈ 𝔽_{l²}` otherwise.

**Checks.**

- If `l ≡ 1 (mod N)` and `n` is odd, `N − n` is even and the character takes values in `(𝔽_l^×)^n`.
- For `n` even and `N` odd, `N − n` is odd and the square root of `q` is needed; it lies in `𝔽_{l²}`.
- At `n = 2` with the real form, `∏ g = q` and the value at `Frob_v` is `q^{N−4}·q² = q^{N−2}`; since `N − 2` is odd it is a square only after adjoining `√q ∈ 𝔽_{l²}`, which is why `𝔽_{l²}` appears.

### 6.5 Finite-field-valued roots after totally real base change

Let `F` be a CM field, `k` a finite field of characteristic `l`, `n = l^a m` with `l ∤ m`, and suppose `μ_m(𝔽̄_l) ⊂ k`. Let `χ̄ : G_F → k^×` be continuous with values in `(k^×)^n`, and `L` a number field. There are a totally real finite Galois `M/ℚ`, linearly disjoint from `L`, and a continuous `ψ̄ : G_{FM} → k^×` with `ψ̄^n = χ̄|_{G_{FM}}`. If `T` is a finite set of odd primes at whose places `χ̄` is unramified, `M` can be chosen with every prime of `T` split and `ψ̄` unramified above `T`. Applying the statement twice, the second time with `L` enlarged by the first `M`, gives roots for two characters over one field `FM₁M₂` with `M₁M₂` disjoint from `L`. (Qian, Lemma 2.1, arXiv v1 pp. 5–8, applied in §4, pp. 21–23, where the simultaneous avoidance and the fixed coefficient field are implicit.)

*Needs:* ArithmeticGaloisDuality §R02.4.6 (roots after prescribed totally real base change).

*Proof sketch.* Since `#k^×` is prime to `l`, the `l^a`-power map is bijective on `k^×`, so it suffices to find an `m`-th root and raise it to the inverse of `l^a` modulo `#k − 1`. Let `η = [χ̄] : G_F → W(k)^× ⊂ ℚ̄_l^×` be the Teichmüller lift, of finite order. ArithmeticGaloisDuality §R02.4.6 gives `M` and `ψ : G_{FM} → ℚ̄_l^×` with `ψ^m = η|_{G_{FM}}`; `ψ` has finite order, so it reduces to `ψ̄ : G_{FM} → 𝔽̄_l^×` with `ψ̄^m = χ̄`. For every `g`, `χ̄(g) = y^m` with `y ∈ k`, and the `m`-th roots of `y^m` are `y·μ_m(𝔽̄_l) ⊂ k`; so `ψ̄` takes values in `k`. Disjointness of `M₁M₂` from `L` comes from enlarging the avoidance field in the second step.

**Checks.**

- `n = l = 3`, `k = 𝔽₃`: `m = 1`, cubing is bijective on `𝔽₃^×`, and `ψ̄ = χ̄^u` with `3u ≡ 1 (mod 2)` already works; the condition `n | #k^×` would wrongly fail.
- `k = 𝔽₅`, `m = 2` (`μ₂ ⊂ 𝔽₅`) and `χ̄` with values in `(𝔽₅^×)² = {±1}`: the square roots of `−1` are `±2 ∈ 𝔽₅`, so a root valued in `ℚ̄₅` reduces into `𝔽₅`.
- `k = 𝔽₇`, `m = 3`, `χ̄` with value `3 ∉ (𝔽₇^×)³ = {±1}`: the values are not cubes, the hypothesis fails, and a cube root exists only in `𝔽_{7³}`.
- Without `μ_m ⊂ k` a root can leave `k`: for `k = 𝔽₅` and `m = 3`, `1 = 1³` but its other cube roots lie in `𝔽₂₅ − 𝔽₅`, so the reduction of a `ℚ̄₅`-valued cube root of the trivial character can take values outside `𝔽₅`; for `k = 𝔽₇`, which contains `μ₃`, all cube roots `1, 2, 4` of `1` lie in `k`.

### 6.6 Matching determinants at the coefficient prime `l`

Let `n = l^a m` with `l ∤ m`, `F` a CM field, `M = F(ζ_N)`, `r̄ : G_F → GL_n(𝔽_{l^s})` continuous, and `λ | l` a prime of `O` (of `O⁺` when `n = 2`) whose residue field `k(λ)` contains `𝔽_{l²}` and all `m`-th roots of all elements of `𝔽_{l^s}`. Then (i) `det r̄` takes values in `(k(λ)^×)^n`; (ii) `det V[λ]`, a character of `G_M`, takes values in `(k(λ)^×)^n`; (iii) `det V[λ] ⊗ (det r̄|_{G_M})⁻¹` takes values in `(k(λ)^×)^n`; (iv) `μ_m(𝔽̄_l) ⊂ k(λ)`. Hence §6.5 applies to (iii) with coefficient field `k(λ)`. (Qian, §4, arXiv v1 pp. 21–22, and Lemma 2.1, pp. 5–8; the published text requires `n | #k(λ)^×` here, which fails when `l | n`; the correct condition is on `m`.)

*Needs:* §§6.4, 6.5.

*Proof sketch.* For `x ∈ 𝔽_{l^s}^×` pick `y ∈ k(λ)` with `y^m = x`; since the `l^a`-power map is bijective on `k(λ)^×`, `y = z^{l^a}` and `x = z^n`. (ii) is §6.4 with `𝔽_{l²} ⊆ k(λ)`; (iii) follows; (iv) is the hypothesis at `x = 1`.

**Checks.**

- `n = l = 3`, `s = 1`: `m = 1`, every character into `(k(λ)^×)³ = k(λ)^×` has a cube root, and the published condition `3 | #k(λ)^×` fails for every `k(λ)` of characteristic three.
- If `k(λ)` lacks the `m`-th roots of some `x ∈ 𝔽_{l^s}`, (i) can fail: `l = 7`, `m = 3`, `𝔽_{l^s} = 𝔽₇`, `k(λ) = 𝔽_{49}`: `3 ∈ 𝔽₇` has cube roots in `𝔽_{7³}` only, and `𝔽_{49} ∌` them.
- The quadratic field `𝔽_{l²}` is needed for (ii) when `N − n` is odd (§6.4).

### 6.7 Matching determinants at an auxiliary prime `l′ ≡ 1 (mod N)`

Let `l′` be an odd prime with `l′ ≡ 1 (mod N)` and `λ′ | l′` a prime of `O` (of `O⁺` when `n = 2`), so that `k(λ′) = 𝔽_{l′}` and `ℚ(ζ_N)_{λ′} = ℚ_{l′}`. For `v ∤ 2Nl′` with `q = #k(v)`: (i) `det(Frob_v | V_{λ′,0}) · q^{−n(n−1)/2} = (q^{(N−2n−1)/2} ∏_{b∈B} g(v, b))^n` with `q^{(N−2n−1)/2} ∏ g(v, b) ∈ ℤ_{l′}^×` (here `N > 2n + 1`); equivalently `det V_{λ′} ⊗ ε_{l′}^{n(n−1)/2}` takes that value at `Frob_v`. (ii) For every continuous `r̄′ : G_F → GL_n(𝔽_{l′})` with `det r̄′ = ε̄_{l′}^{−n(n−1)/2}`, the character `(det r̄′|_{G_M})⁻¹ ⊗ det V[λ′]` takes values in `(𝔽_{l′}^×)^n`. (iii) If moreover `l′ ≡ 1 (mod n)`, `μ_n ⊂ 𝔽_{l′}` and §6.5 applies with `m = n`; if instead `gcd(n, l′ − 1) = 1`, the `n`-th power map on `𝔽_{l′}^×` is bijective and roots exist without base change. (Qian, §4, arXiv v1 p. 22, and formula (3.1), pp. 17–18; the published argument uses only the weaker conclusion of Lemma 3.9 with values in `(𝔽_{l′²}^×)^n`, the sign `ε̄^{+n(n−1)/2}` for the symmetric power of `H¹`, and no congruence modulo `n`.)

*Needs:* §§5.9, 6.2, 6.3, 6.5; Chebotarev Layer 10.

*Proof sketch.* (i) rearranges §6.2: `q^{n(N−n−2)/2} q^{−n(n−1)/2} = (q^{(N−2n−1)/2})^n`, an integral power since `N` is odd; the base is an `l′`-adic unit because `|g(v, b)|_{l′} = 1` for `v ∤ l′`. (ii) `ε_{l′}^{−n(n−1)/2}(Frob_v) = q^{n(n−1)/2}` for geometric Frobenius, so `(det r̄′)⁻¹` cancels the power of `q`; reduce and apply Chebotarev. (iii) The congruence is one sufficient way to meet §6.5; in general `d = gcd(n, l′ − 1)` is the relevant exponent.

**Checks.**

- For `r̄′ = Sym^{n−1} r̄_{E₀,l′}` with `r̄_{E₀,l′} = H¹_ét(E₀, 𝔽_{l′})` of determinant `ε̄^{−1}`, `det r̄′ = ε̄^{−n(n−1)/2}`, as required.
- With the Tate module instead of `H¹` the determinant is `ε̄^{+n(n−1)/2}`, and the cancellation in (ii) fails by `q^{n(n−1)}`.
- For `n = 3` and `l′ ≡ 2 (mod 3)`, cubing is bijective on `𝔽_{l′}^×` although `μ₃ ⊄ 𝔽_{l′}`: the congruence `l′ ≡ 1 (mod n)` is sufficient, not necessary.
- For `N = 401`, `n = 3`, `l′ = 3209`: `N > 2n + 1`, `(N − 2n − 1)/2 = 197`, and `3209 ≡ 2 (mod 3)`.

### 6.8 Frobenius polynomials of Dwork fibres are rational and independent of `λ`

Let `F/ℚ(ζ_N)` be a number field, `v` a finite place of `F` of residue characteristic `l′ ∤ N`, and `t ∈ T₀(O_{F_v})`. For every place `λ` of `M` of residue characteristic different from `l′`: (1) `V_{t,λ}` and `W_{t,λ}` are unramified at `v`; (2) `det(X − Frob_v | V_{t,λ})` has coefficients in `O_M` and is independent of `λ`; (3) `Ψ_λ(Frob_v) ∈ M` and is independent of `λ`; (4) `Q_v(X) = det(X − Frob_v | W_{t,λ})` has coefficients in `M`, integral at every `λ` of residue characteristic different from `l′`, and independent of `λ`. Integrality of `Q_v` at `λ | l′` is §7.7. (Boxer–Calegari–Gee–Newton–Thorne, Proposition 4.2.5(1) and proof, arXiv v3 pp. 42–43, whose integrality argument through the twist needs the slope argument of §7.7; Katz, *Another look at the Dwork family*, Question 5.5, p. 97; Katz–Messing, Theorem 2.)

*Needs:* §§2.3, 3.2, 3.4, 3.6; SchemeAndStackFoundations §1.16 (twisted forms); InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3; DeligneWeightsAndPurity §§7.15, 8.19; EtaleCohomologyFoundations §F.3.

*Proof sketch.* (1) `Y_t` is smooth and proper over `O_{F_v}`, so its cohomology is unramified. (2) For `h ∈ H₀`, which is defined over `k(v)` and commutes with Frobenius, `h·Frob^m` is the geometric Frobenius of the twisted form of the special fibre by the cocycle defined by `h`, a smooth projective hypersurface over `k(v)` (SchemeAndStackFoundations §1.16). The trace formula gives `∑ᵢ(−1)ⁱ tr(h Frob^m | Hⁱ)` as a point count, rational and `λ`-independent; purity (DeligneWeightsAndPurity §7.15) separates the degrees, so `det(1 − h Frob T | H^{N−2}) ∈ ℚ[T]` is `λ`-independent. Then `tr(Frob^m | e_χ H) = (1/#H₀)∑_h χ(h)⁻¹ tr(h Frob^m | H) ∈ M`, and Newton's identities give the characteristic polynomial; its roots are algebraic integers. (3) For large `r` the sum `∑_{t∈U(k_r)} |tr(Frob_t | g*E_λ)|²` has leading term `q^{rn}`, because `g*E_λ` is pure of weight `n − 1` and geometrically irreducible (§§3.2, 3.6); so some point `t ∈ U(k_r)` has nonzero hypergeometric trace at `g(t)`; then `Ψ_λ(Frob_v)^r` is the ratio of the traces of `V_λ` at `t` and of `E_λ` at `g(t)`, both in `M` and `λ`-independent (by (2) and §3.1). Two coprime values of `r` determine `Ψ_λ(Frob_v)`. (4) follows from (2) and (3); integrality away from `l′` holds because `W_{t,λ}` is a Galois-stable lattice.

**Checks.**

- `deg Q_v = n`, and the roots of `Q_v` have complex absolute value `q_v^{(n−1)/2}` (purity of weight `n − 1`).
- For `h = 1` and `m = 1` the twisted form is the special fibre itself and the trace formula counts its points.
- `Ψ_λ(Frob_v)` itself can be a nonunit at `l′`: its absolute values are `q_v^{(N−n−1)/2}`, so `Q_v` need not be `l′`-integral a priori; this is why integrality at `λ | l′` waits for §7.7.

### Examples

For `N = 5`, `n = 2`, the self-dual datum `a = (1, 0, 0, 0, 4)`, `B = {2, 3}`, and `q ≡ 1 (mod 5)`: `det(Frob_v | V_{λ,0}) = q^{2(5−2−2)/2}(g(2)g(3))² = q·q² = q³ = q^{n(N−2)/2}`, as purity requires; and `g(2)g(3) = q` is rational, as §6.3 predicts.

### Dependencies

Layers 1–5; Mathlib Gauss sums; ArithmeticGaloisDuality §R02.4.6; Chebotarev Layer 10; SchemeAndStackFoundations §1.16; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3; DeligneWeightsAndPurity §§7.15, 8.19; EtaleCohomologyFoundations §F.3.

## Layer 7: `p`-adic Hodge theory and local monodromy of the fibres

The de Rham cohomology of the Dwork pencil carries the same `H₀`-decomposition as its étale cohomology, twisted by the coefficient embedding. At the Fermat point the Hodge grade of each eigenline is read from its exponent vector, and for zero-shaped data the grades of the `n` lines are consecutive. Through the comparison theorems this gives consecutive labelled Hodge–Tate weights for every fibre, recognises the comparison character as an algebraic Hecke character, and makes `W` a weakly compatible system with weights `{0, …, n − 1}`. Locally the fibres are crystalline at good reduction, ordinary near the Fermat point when `l ≡ 1 (mod N)`, of prescribed inertia when `l ≡ −1 (mod N)`, Steinberg near infinity away from the coefficient prime, and generically crystalline ordinary.

### 7.1 Twisted de Rham eigenspaces of the Dwork family

Let `H_dR = H^{N−2}_dR(Y/(T₀ × ℚ(ζ_N)))`, locally free with Hodge filtration `F^j` by local direct summands. For `σ ∈ Gal(ℚ(ζ_N)/ℚ)` put `H_{dR,σ} = H_dR ⊗_{σ⁻¹, ℚ(ζ_N)} ℚ(ζ_N)` (the right factor as coefficients) and `V_{dR,σ} = e_χ H_{dR,σ}`, the `χ`-eigenpart for `H₀` acting through the coefficients, with filtration `F^jV_{dR,σ}` and graded pieces `gr^j`. At `t = 0`, `V_{dR,σ,0} = ⊕_i V_{dR,σ,i}` under the characters `χᵢ` of `H`. For `K/ℚ_l` finite containing the image of `ℚ(ζ_N)` and `V = V_{λ,t} ⊗_{O_λ} E`, `D_dR,K(V) = (B_dR ⊗_{ℚ_l} V)^{G_K}` is a filtered module over `K ⊗_{ℚ_l} E`; after enlarging `E` to `E′` containing every embedding of `K`, its `σ`-labelled component `D_dR,K(V) ⊗_{K⊗E, σ⊗ι} E′` is identified, by the equivariant de Rham comparison, with the corresponding coefficient-conjugate `χ`-part of `H^{N−2}_dR(Y_t/K) ⊗_{K,σ} E′`. In fixed global coordinates this is the `σ⁻¹χ` convention of the first part. (Qian, before Lemma 3.9, arXiv v1 pp. 18–20; Barnet-Lamb–Geraghty–Harris–Taylor, §5, the spaces `U_{DR,σ}`, p. 35.)

The construction has the following API.

- `V_{dR,σ}` and each `gr^j V_{dR,σ}` are locally free on `T₀ × ℚ(ζ_N)`; `V_{dR,σ}` has rank `n`.
- At `t = 0`, `V_{dR,σ,0} = ⊕_i V_{dR,σ,i}` with one-dimensional summands for `i ∈ B` and zero otherwise.
- The `σ`-labelled component of `D_dR,K(V_{λ,t} ⊗ E)` is, as a filtered `E′`-space, the transported `χ`-part of `H_dR(Y_t/K) ⊗_{K,σ} E′`.
- Formation is compatible with base change `T′ → T₀` and with extension of `K`.

*Needs:* §§2.3, 2.6; ComplexComparisonPartII §C5.3 (`relativeHodgeBundles`); PadicHodgeTheory §§3.2, 3.3, 8.1, 8.2.

*Proof sketch.* Relative Hodge bundles of a smooth proper family in characteristic zero are locally free, the Hodge spectral sequence degenerates, and character idempotents cut out locally free summands with the induced filtration (ComplexComparisonPartII §C5.3). The filtered de Rham comparison for proper smooth varieties over `l`-adic fields (PadicHodgeTheory §8.1) is natural, hence `H₀`-equivariant (§8.2); taking `χ`-parts introduces the twist by `σ`.

**Checks.**

- For `σ = id` and `t = 0`, `V_{dR,id,0} = ⊕_{i∈B} V_{dR,i}` with one-dimensional summands.
- For Qian's datum with `n = 3`, `V_{dR,σ,0}` has the three nonzero lines `V_{dR,σ,1}`, `V_{dR,σ,2}`, `V_{dR,σ,N−3}`.
- For `σ ≠ id`, `V_{dR,σ}` is the `σ⁻¹χ`-part, not the `χ`-part, of `H_dR`; the untwisted `χ`-part has different Hodge numbers in general, and comparing `D_dR,σ` with it gives wrong Hodge–Tate weights.
- No `K`-linear structure on `V` is used: `V` is an `E`-vector space with a `G_K`-action, and `K` enters only through `D_dR,K`.

### 7.2 Hodge grades of the Fermat eigenlines

Write `σ⁻¹(ζ_N) = ζ_N^a` and `⟨x⟩` for the representative of `x mod N` in `{1, …, N}`. For a zero-shaped datum, `V_{dR,σ,i} ≠ 0` exactly when `i ∈ B`; it is then one-dimensional, with its only nonzero graded piece in degree `M(a) + #{b ∈ B : ⟨ab⟩ < ⟨ai⟩}`, where `M(a) = (∑_j ⟨a·a_j + 1⟩)/N − 1`; equivalently the degree is `(∑_j ⟨a(a_j + i)⟩)/N − 1`. For the self-dual data the degree is `(N − n − 3)/2 + #{b ∈ B : ⟨ab⟩ ≤ ⟨ai⟩}`. (Qian, Lemma 3.9(1) with proof, arXiv v1 pp. 19–20, published Lemma 3.10; Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 5.2(1) and proof, p. 36.)

*Needs:* §§1.4, 2.1, 7.1.

*Proof sketch.* After base change along `τ₀σ⁻¹` to `ℂ`, `gr^j V_{dR,σ,i}` is the eigenspace of `H^{j, N−2−j}(Y₀(ℂ))` for the character `(a(a_j + i))_j` of `H`; by §2.1 it is nonzero exactly when all `a(a_j + i) ≢ 0`, i.e. `i ∈ B`, in degree `j` with `j + 1 = ∑⟨a(a_j + i)⟩/N`. The function `d ↦ ∑_j ⟨a·a_j + d⟩/N − 1` increases by one when `d` passes a residue `ab`, `b ∈ B`, and is constant otherwise, because for a zero-shaped datum exactly one entry wraps around at each such step; induct from `d = 1`.

**Checks.**

- For `σ = id` (`a = 1`) and Qian's datum with `n = 3`, the lines `i = 1, 2, N − 3` have grades `M(1), M(1) + 1, M(1) + 2`.
- For the self-dual datum with `N = 5`, `n = 2`, `a = 1`: the grades of `i = 2, 3` are `(5 − 2 − 3)/2 + 1 = 1` and `0 + 2 = 2`, matching the direct computation `10/5 − 1` and `15/5 − 1` of Layer 2.
- For `N = 7`, `n = 3` the rank-three datum `a = (0, 0, 0, 1, 3, 5, 5)` is not zero-shaped (zero occurs three times, `5` twice); its index set is `{1, 3, 5}` and for `σ = id` the vectors `a + 1`, `a + 3`, `a + 5` have `∑⟨·⟩ = 21, 21, 28`, so the grades are `2, 2, 3`: not consecutive.

### 7.3 Consecutive Hodge numbers of the Dwork motives

For each `σ` and a zero-shaped datum, `gr^j V_{dR,σ}` is locally free of rank one on `T₀ × ℚ(ζ_N)` for `M(a) ≤ j ≤ M(a) + n − 1` and zero otherwise; `V_{dR,σ}` is locally free of rank `n`. For the self-dual data the range is `(N − 1 − n)/2 ≤ j ≤ (N + n − 3)/2`. (Qian, Lemma 3.9(2) with proof, arXiv v1 pp. 19–20; Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 5.2(2), p. 36.)

*Needs:* §§7.1, 7.2; ComplexComparisonPartII §C5.3.

*Proof sketch.* `gr^j V_{dR,σ}` is locally free (§7.1), so its rank is computed at `t = 0`, where the grades of the `n` eigenlines run through `M(a), …, M(a) + n − 1` as `i` runs through `B` ordered by `⟨ai⟩` (§7.2).

**Checks.**

- Every `gr^j` has rank at most one: the Hodge numbers are regular.
- For the self-dual datum with `N = 5`, `n = 2` the range is `1 ≤ j ≤ 2`, two grades of rank one.
- The ranks sum to `n`: `∑_j rank gr^j = n` for every `σ`.

### 7.4 Dwork fibres are de Rham with consecutive labelled weights

Let `v | l` be a place of `F ⊇ ℚ(ζ_N)` and `t ∈ T₀(F_v)`. (1) For a zero-shaped datum, `V_{λ,t} ⊗ ℚ(ζ_N)_λ` is a de Rham representation of `G_{F_v}`, and for an embedding `σ : F_v ↪ ℚ̄_l` with `σ⁻¹(ζ_N) = ζ_N^a` on `ℚ(ζ_N)` its `σ`-labelled Hodge–Tate weights (cohomological convention) are `M(a), M(a) + 1, …, M(a) + n − 1`, each with multiplicity one. (2) For the self-dual data `V_{λ,t}((N − 1 − n)/2)` is de Rham with Hodge–Tate numbers `{0, …, n − 1}` at every embedding. The representation is of the local group `G_{F_v}`, not of `G_F`. (Qian, Lemma 3.10(1), arXiv v1 pp. 20–21, published Lemma 3.11; Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 5.3(1), p. 37.)

*Needs:* §§7.1, 7.3; PadicHodgeTheory §§3.2, 3.3, 8.1.

*Proof sketch.* `V_{λ,t}` is a direct summand of the étale cohomology of the smooth proper `Y_t/F_v`, which is de Rham by PadicHodgeTheory §8.1; the labelled graded pieces are those of §7.3 by §7.1. In PadicHodgeTheory's sign the weights are `−M(a), …, −M(a) − n + 1`. For (2), the Tate twist by `(N − 1 − n)/2` shifts the self-dual range of §7.3 to `0, …, n − 1`.

**Checks.**

- For the self-dual datum with `N = 5`, `n = 2`, the weights of `V_{λ,t}` are `{1, 2}` and those of `V_{λ,t}(1)` are `{0, 1}`.
- The weights depend on `σ` through `a`: for Qian's datum `M(a)` varies with `a ∈ (ℤ/Nℤ)^×`, which is why `W` (§7.6) is needed to obtain weights independent of the embedding.
- In PadicHodgeTheory's convention the same fibre has weights `{−1, −2}` for the self-dual example; reading them with the wrong sign would give weights decreasing in `j`.

### 7.5 The comparison character is an algebraic Hecke character

There is an algebraic Hecke character `Ψ : ℚ(ζ_N)^×\𝔸^×_{ℚ(ζ_N)} → ℂ^×` of type `A₀`, unramified away from `N`, with values of its finite part in `M`, such that for every place `λ` of `M` prime to `2N` the character `Ψ_λ` of §3.4 is the `λ`-adic character attached to `Ψ`; moreover `Ψ_λ|_{G_{F_v}}` is crystalline at every `v | l`, `l ∤ N`, with `σ`-labelled weight `M(a_σ)`, and `Ψ·c(Ψ)` corresponds to `ε^{n+1−N}`, so `Ψ` is pure of weight `N − n − 1`. (Boxer–Calegari–Gee–Newton–Thorne, Lemma 4.2.4 and proof, arXiv v3 pp. 41–42, which obtains `Ψ` from Henniart's theorem on compatible characters; here the hypotheses of the recognition theorem are verified directly.)

*Needs:* §§3.4, 3.5, 6.8, 7.4; PadicHodgeTheory §§3.3, 3.6; PotentialModularityAndCompatibleSystems §1.9; GlobalNumberFields Layers 9–10.

*Proof sketch.* `Ψ_λ` is a character of `π₁(Spec R₀[1/l])`, hence of `G_{ℚ(ζ_N)}` unramified outside `Nl`. At `v | l`, restrict §3.5(2) to a point `t ∈ U(F_v)`: `Ψ_λ^n|_{G_{F_v}} = det V_{t,λ} ⊗ ε^{n(n−1)/2}` is de Rham with `σ`-labelled weight `n M(a_σ) + n(n−1)/2 − n(n−1)/2 = n M(a_σ)` (§7.4). By PadicHodgeTheory §3.6, `Ψ_λ^n` agrees with `∏_τ τ^{−nM(a_τ)}` (in the appropriate reciprocity convention) on an open subgroup of the local units; so `Ψ_λ ∏_τ τ^{M(a_τ)}` has finite order there, `Ψ_λ` is potentially crystalline, hence de Rham, with weight `M(a_σ)`. PotentialModularityAndCompatibleSystems §1.9 makes the finitely ramified de Rham character `Ψ_λ` the avatar of a type-`A₀` Hecke character `Ψ^{(λ)}`; by §6.8(3) the values `Ψ_λ(Frob_v)` lie in `M` and do not depend on `λ`, so all `Ψ^{(λ)}` coincide with one `Ψ`, unramified away from `N` because each `Ψ_λ` is unramified outside `Nl`. Crystallinity at `v | l ∤ N` follows from unramifiedness of `Ψ` there; the weight relation is §3.5(1). Nothing here uses §§7.6–7.13.

**Checks.**

- Weight check: `V_λ` has weight `N − 2` and `E_λ` weight `n − 1`, so `Ψ` has weight `N − n − 1`; for Qian's datum with `n = 3`, `N = 401` it is `397`.
- The determinant relation `nM(a_σ) = (∑ weights of V) − n(n−1)/2` fixes `M(a_σ)` as an integer, which is what makes `Ψ_λ` Hodge–Tate rather than of fractional Sen weight.
- Compatible rational Frobenius values alone do not imply de Rhamness at `l`: the character `⟨χ_l⟩^s` with `s ∈ ℤ_l − ℤ` has `ℚ_l`-valued Frobenius values but no Hodge–Tate periods; the determinant argument is what supplies de Rhamness.

### 7.6 The twisted fibres have Hodge–Tate weights `{0, …, n − 1}`

For Qian's datum and `v | l`, `t ∈ T₀(F_v)`, `W_{t,λ}` is de Rham with `HT_σ(W_{t,λ}) = {0, 1, …, n − 1}` for every embedding `σ`. In PadicHodgeTheory's convention its weights are `{0, −1, …, 1 − n}`. (Boxer–Calegari–Gee–Newton–Thorne, Proposition 4.2.5(2) with proof, arXiv v3 pp. 42–43.)

*Needs:* §§3.6, 7.4, 7.5; PadicHodgeTheory §3.3.

*Proof sketch.* `W_{t,λ} = V_{t,λ} ⊗ Ψ_λ⁻¹` is de Rham by §§7.4–7.5, with weights shifted by `−M(a_σ)`; equivalently, `det W_λ ≅ M_λ(n(1 − n)/2)` (§3.6) gives `nM′_σ + n(n − 1)/2 = n(n − 1)/2` for the shift `M′_σ`, so `M′_σ = 0`.

**Checks.**

- For `n = 3` and every embedding, the weights of `W_{t,λ}` are `{0, 1, 2}`, summing to `3 = n(n − 1)/2`.
- `W_{t,λ}` and `V_{t,λ}` differ whenever `M(a_σ) ≠ 0` for some `σ`.
- In LocalGaloisDeformationRings' `IsOrdinaryOfWeight` normalisation the corresponding weight is `λ_{τ,i} = 0` for all `i`.

### 7.7 Crystallinity and Frobenius at good-reduction fibres

Let `v | l`, `l ∤ N`, and `t ∈ O_{F_v}` with `t^N − 1 ∈ O_{F_v}^×`. Then `V_{λ,t}` and `W_{t,λ}` are crystalline representations of `G_{F_v}`; the characteristic polynomial of `φ^f`, `f = [k(v) : 𝔽_l]`, on `D_cris(W_{t,λ})` (on any coefficient component) is the polynomial `Q_v(X)` of §6.8 of the special fibre; and `W_{t,λ}` is ordinary of weight `0` exactly when the roots of `Q_v` in `ℚ̄_l` have `l`-adic valuations `0, f, 2f, …, (n − 1)f`. For the self-dual data `V_{λ,t}((N − 1 − n)/2)` is crystalline under the same condition. Moreover `Q_v` is integral at `λ | l`, so the polynomial of §6.8 lies in `O_M[X]`. No crystallinity is claimed at the punctures or for `t` merely integral. (Qian, Lemma 3.10(2), arXiv v1 pp. 20–21; Boxer–Calegari–Gee–Newton–Thorne, Proposition 4.2.5(2) with proof, arXiv v3 pp. 42–43; Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 5.3(2), p. 37.)

*Needs:* §§6.8, 7.5, 7.6; PadicHodgeTheory §§3.4, 3.6, 8.1; PadicDifferentialEquationsAndRigidCohomology §RD.7.7; SchemeAndStackFoundations §1.16; LocalGaloisDeformationRings §1.7.

*Proof sketch.* `Y_t` has good reduction over `O_{F_v}`; PadicHodgeTheory §8.1 makes its cohomology crystalline with `D_cris` the crystalline cohomology of the special fibre, compatibly with `H₀`; `Ψ_λ` is crystalline at `v` (§7.5). For `h ∈ H₀` the characteristic polynomial of `h·φ^f` on crystalline cohomology is that of geometric Frobenius on the twisted form of §6.8, so Katz–Messing (§RD.7.7) for the twisted forms and the character projector identify the `χ`-part with the `ℓ`-adic polynomial; twisting by `Ψ` gives `Q_v`. The slope criterion of PadicHodgeTheory §3.6 with the consecutive jumps of §7.6 gives the ordinarity criterion. Every filtration jump of `W` is `≥ 0`, so weak admissibility (PadicHodgeTheory §3.4) applied to the lowest-slope `φ`-stable subobject makes all slopes `≥ 0`, i.e. `Q_v` is `λ`-integral; with §6.8 this gives `O_M`-integrality.

**Checks.**

- If the special-fibre point has `Q_x` with normalised `l`-adic slopes `0, 1, …, n − 1`, `W_{t,λ}` is crystalline ordinary.
- For `t` with `t^N ≡ 1` modulo the maximal ideal the special fibre is singular and the statement does not apply.
- Integrality cannot be read from the untwisted polynomial: `Ψ_λ(Frob_v)` has absolute values `q_v^{(N−n−1)/2}` and can be a nonunit at `l`; the weak admissibility argument is what gives integrality of `Q_v` at `λ | l`.

### 7.8 Ordinarity near the Fermat point when `l ≡ 1 (mod N)`

Let `l ≡ 1 (mod N)`, so `ℚ(ζ_N)_λ = ℚ_l`, `v | l` and `t ∈ 𝔪_{F_v}`. Then `V_{λ,t}` is ordinary of weight `μ` with `μ_{σ,i} = M(a_σ)` for all `i` (LocalGaloisDeformationRings' `IsOrdinaryOfWeight`, cohomological weights `M(a_σ), …, M(a_σ) + n − 1`), where `σ⁻¹(ζ_N) = ζ_N^{a_σ}`. For the self-dual data `V_{λ,t}((N − 1 − n)/2)` is ordinary of weight `0`, and its reduction at `t = 0` is `𝔽_l ⊕ 𝔽_l(−1) ⊕ ⋯ ⊕ 𝔽_l(1 − n)` as a module for inertia. (Qian, Lemma 3.10(3), arXiv v1 pp. 20–21, and Lemma 2.4, pp. 9–10; Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 5.3(3)–(4) and proof, pp. 37–38.)

*Needs:* §§2.6, 7.2, 7.4, 7.7; PadicHodgeTheory §§3.6, 8.1; LocalGaloisDeformationRings §1.7.

*Proof sketch.* For `t ∈ 𝔪_{F_v}`, `Y_t` and `Y₀` have the same special fibre, so `D_cris(V_{λ,t}) ≅ D_cris(V_{λ,0})` as `φ`-modules, and their labelled weights agree (§7.4). By the slope criterion (PadicHodgeTheory §3.6) `V_{λ,t}` is ordinary exactly when `V_{λ,0}` is. `V_{λ,0} ⊗ ℚ̄_l = ⊕_{i∈B} V_{λ,i}`, each a crystalline character of `G_{ℚ_l}` with weight `M(a_σ) + #{b : ⟨a_σb⟩ < ⟨a_σi⟩}` (§7.2), so as an inertia module it is `⊕_{i=0}^{n−1} ℚ̄_l(−M(a_σ) − i)`: an ordinary flag.

**Checks.**

- For the self-dual data and `l ≡ 1 (mod N)` the inertia action on the Fermat fibre modulo `λ` is `𝔽_l ⊕ 𝔽_l(−1) ⊕ ⋯ ⊕ 𝔽_l(1 − n)` after the Tate twist.
- For `l ≢ 1 (mod N)` the Fermat eigenlines are not individually defined over `ℚ_l`, and §7.9 describes the inertia instead.
- For `t` a unit (not in `𝔪`), the special fibre differs from the Fermat fibre and ordinarity is not asserted.

### 7.9 Inertia on the Fermat fibre when `l ≡ −1 (mod N)`

Let `n > 2`, `l > n` a prime with `l ≡ −1 (mod N)`, `v | l` a place of `ℚ(ζ_N)`, `λ | l` of `M`, and `τ, cτ : k(v) → k(λ) = 𝔽_{l²}`. With geometric Artin reciprocity put `ω_τ = τ ∘ Art⁻¹` on inertia and `θ_τ = ω_τ⁻¹`. Then `θ_τ θ_{cτ} = ε̄_l⁻¹` and `W̄_{0,λ}|_I ≅ ⊕_{i=1}^n θ_τ^{i−1} θ_{cτ}^{n−i}`. For the self-dual rank-two family the analogous statement is Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 5.3(5), with the same sign translation. (Boxer–Calegari–Gee–Newton–Thorne, Lemma 4.4.4 with proof, arXiv v3 p. 48, whose printed formula uses the direct characters `ω`; its §1.6, p. 12, fixes Artin reciprocity; Caraiani–Emerton–Gee–Savitt, §1.4, Lemma 1.4.1, pp. 5–6.)

*Needs:* §§2.6, 3.6, 5.7, 7.6; PadicHodgeTheory §6.1 (Fontaine–Laffaille); LocalGaloisDeformationRings §6.19.

*Proof sketch.* `H` extends the `H₀`-action on the Fermat fibre and decomposes `W̄_{0,λ}` into `n` lines, the `Ψ⁻¹`-twists of the `H`-eigenspaces in `H^{N−2}`, each crystalline of rank one. The skew-Hermitian pairing (§5.7) is orthogonal for this decomposition, so `W̄_{0,λ,j}^c ≅ W̄_{0,λ,j}^∨ ε̄^{1−n}`. Order the lines by their `τ`-labelled filtration jumps `i − 1`; the paired conjugate jump is `n − i`. Rank-one Fontaine–Laffaille in the range `0, …, n − 1 < l` gives `θ_τ^{i−1}θ_{cτ}^{n−i}`; the determinant `(θ_τθ_{cτ})^{n(n−1)/2} = ε̄_l^{−n(n−1)/2}` agrees with §3.6.

**Checks.**

- For `n = 3` the summands are `θ_{cτ}²`, `θ_τθ_{cτ}`, `θ_τ²`, with determinant `ε̄_l⁻³`; the printed positive powers of `ω` would give `ε̄_l³`, and for `l > 7` these differ.
- The cohomological `H¹` of a supersingular elliptic curve has inertia `ω₂⁻¹ ⊕ ω₂^{−l}`; this is the rank-two self-dual boundary, not a case of `W`.
- `l > n` keeps the jumps `0, …, n − 1` inside the Fontaine–Laffaille range.

### 7.10 Maximal unipotent local monodromy at places with `v(t) < 0`

Let `v` be a finite place of `F ⊇ ℚ(ζ_N)` whose residue characteristic is prime to `N`, and `λ′` a prime of odd residue characteristic `l′ ∤ N`, `l′ ≠ char k(v)`. (1) If `t ∈ O_{F_v}` and `t^N − 1` is a unit, `V_{λ′,t}` is unramified at `v`. (2) If `v(t) < 0`, `V_{λ′,t}|_{G_{F_v}}` is tamely ramified, inertia acts unipotently through `exp(t_{l′}(σ)N)`, and the monodromy operator `N` of its Weil–Deligne representation has minimal polynomial `X^n`; for the self-dual data a Frobenius lift has characteristic polynomial `(X − α)(X − αq)⋯(X − αq^{n−1})` with `α = ±1` after the twist `(N − 1 − n)/2`, i.e. the Weil–Deligne representation is an unramified twist of Steinberg. The hypothesis `v(t) < 0` is necessary. (Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 5.1, pp. 34–35.)

*Needs:* §4.6; LefschetzPencilsAndVanishingCycles §§0.5, 1.1, 1.6; ArithmeticGaloisRepresentations §2.4; EtaleCohomologyFoundations §F.0.2.

*Proof sketch.* (1) is smooth proper base change. (2) Near `t = ∞` the family over the punctured disc has geometric local monodromy a single unipotent Jordan block over `ℚ̄_{l′}` for every conjugate character (§4.6). The Galois action of `G_{F_v}` on the fibre at `t` factors through the local fundamental group of the punctured disc, inertia mapping to the `d`-th power of the local monodromy generator, `d = −v(t) > 0`, still a single block in characteristic zero. The Frobenius eigenvalues follow from the weight filtration of a single Jordan block and purity.

Step (2) uses the requirement `gap:tame-point-specialization` stated in the contract with LefschetzPencilsAndVanishingCycles.

**Checks.**

- For the self-dual data with `n = 2` and `v(t) < 0`, `V_{λ′,t}` is an unramified twist of Steinberg at `v`, as for an elliptic curve with multiplicative reduction.
- For `t = 0` with residue characteristic prime to `N` the fibre has good reduction, so the representation is unramified with `N = 0`: maximal monodromy needs `v(t) < 0`.
- For `v(t) = −d`, `N` is `d` times the logarithm of the local monodromy; its nilpotency order is `n` for every `d ≥ 1`.

### 7.11 The Dwork fibres form weakly compatible systems

Let `F/ℚ(ζ_N)` be a number field, `t ∈ T₀(F)` and `S` the set of finite places `v` with `v | N` or `t ∉ T₀(O_{F_v})`. Then `(M, S, {Q_v(X)}_{v∉S}, {W^{ss}_{t,λ}}_λ, {{0, 1, …, n − 1}}_τ)` is a weakly compatible system of `l`-adic representations of `G_F` over `M` of rank `n`, pure of weight `n − 1`. The untwisted system `{V_{t,λ}}` has purity weight `N − 2` and Hodge–Tate multisets `{M(a_τ), …, M(a_τ) + n − 1}`; for the self-dual data it is a system over `M⁺` with symplectic pairings. (Boxer–Calegari–Gee–Newton–Thorne, Proposition 4.2.5(3), arXiv v3 p. 43; Barnet-Lamb–Gee–Geraghty–Taylor, §5.1, arXiv v4.)

*Needs:* §§6.8, 7.4–7.7; PotentialModularityAndCompatibleSystems §1.1; DeligneWeightsAndPurity §7.15.

*Proof sketch.* Away from `S` and the residue characteristic of `λ`, `W_{t,λ}` is unramified with Frobenius polynomial `Q_v`, independent of `λ` (§6.8). At `v | l` with `v ∉ S`, `W_{t,λ}` is crystalline with weights `{0, …, n − 1}` and the same Frobenius polynomial, now integral (§7.7); at every `v | l` it is de Rham (§7.6). Purity of weight `n − 1` is Deligne's theorem for the smooth fibres twisted by `Ψ` of weight `N − n − 1`.

**Checks.**

- `deg Q_v = n` and `Q_v(0) = ±q_v^{n(n−1)/2}`, as the determinant `ε^{−n(n−1)/2}` requires.
- For `v ∈ S` above a prime with `v(t) < 0`, `W_{t,λ}` is ramified (§7.10) and `v` must lie in `S`.
- The system of `V_{t,λ}` has embedding-dependent weights, so it is not regular with a single weight set unless `M(a_τ)` is independent of `τ`.

### 7.12 Generic slopes of indecomposable lisse sheaves

Let `X` be a smooth irreducible variety over a finite field of characteristic `p` and `E` a lisse `ℚ̄_{l′}`-sheaf of rank `n` on `X` (`l′ ≠ p`) whose Frobenius characteristic polynomials have algebraic coefficients. Fix a `p`-adic valuation on `ℚ̄` and for `x ∈ |X|` let `a^x_1 ≥ ⋯ ≥ a^x_n` be the `p`-adic slopes of `Frob_x` normalised by `deg x`. (i) There are rational numbers `a^η_1 ≥ ⋯ ≥ a^η_n` such that the set of `x` with `a^x_i = a^η_i` for all `i` is nonempty and its intersection with the closed points of every curve is open (possibly empty); (ii) `∑_{i≤r} a^x_i ≤ ∑_{i≤r} a^η_i` for all `x` and `r`; (iii) if `E` is indecomposable then `a^η_i − a^η_{i+1} ≤ 1` for `1 ≤ i < n`. (Drinfeld–Kedlaya, Theorem 1.3.3, pp. 4–5, proof in §5, pp. 11–12, arXiv v11; Boxer–Calegari–Gee–Newton–Thorne, proof of Proposition 4.2.6, arXiv v3 pp. 43–45.)

*Needs:* PadicDifferentialEquationsAndRigidCohomology §§RD.2.3, RD.3.34, RD.3.43, RD.7.7.

*Proof sketch.* On a smooth curve, Drinfeld–Kedlaya pass to crystalline companions of the irreducible constituents (Abe) and apply their slope theorem for convergent `F`-isocrystals (Theorem 1.1.5), handling indecomposable extensions in §5.2; in higher dimension they restrict to suitable curves (§5.3). (ii) is Grothendieck's specialization theorem for Newton polygons (§RD.3.43). No global crystalline companion on `X` is assumed, and the curve must be chosen to meet the needed open.

This target uses the requirement `gap:curve-crystalline-companions` stated in the contract with PadicDifferentialEquationsAndRigidCohomology, in the curve case.

**Checks.**

- For `E` pure of weight `n − 1` with slopes `0, 1, …, n − 1` at one point, (ii) and (iii) force the generic slopes to be `0, 1, …, n − 1`.
- For `E = ℚ̄_{l′} ⊕ ℚ̄_{l′}(−2)`, decomposable, the slopes `0, 2` differ by two: (iii) needs indecomposability.
- (i) does not say that every curve meets the generic locus: the intersection may be empty.

### 7.13 Generic crystalline ordinarity of the Dwork family

Let `v` be a place of `ℚ(ζ_N)` of residue characteristic `l ∤ N`, `λ` a place of `M` of the same characteristic, and Qian's datum (`n > 2`). There is a nonempty Zariski open `U(v; λ) ⊂ T_{0,k(v)}` such that for every finite extension `F_w/ℚ(ζ_N)_v` and every `t ∈ T₀(O_{F_w})` whose reduction lies in `U(v; λ)(k(w))`, `W_{t,λ}` is a crystalline ordinary representation of `G_{F_w}`. (Boxer–Calegari–Gee–Newton–Thorne, Proposition 4.2.6 with proof, arXiv v3 pp. 43–45; Drinfeld–Kedlaya, Appendix A, §A.3, Proposition A.3.1 and Corollary A.3.2.)

*Needs:* §§3.2, 3.4, 3.6, 7.6, 7.7, 7.12.

*Proof sketch.* By §7.7 it suffices that the normalised `l`-adic slopes `s₁ ≥ ⋯ ≥ s_n` of `Q_x`, computed with an auxiliary `μ` of residue characteristic `≠ l`, be `n − 1, …, 1, 0` for `x ∈ U`. `W_μ` is geometrically irreducible (§3.6); §7.12 gives a dense open with constant slopes whose consecutive differences are at most one, and since `∑ sᵢ = n(n − 1)/2` it suffices to find `x` there with `s_n(x) = 0`. By §3.4 and the trace formula of §3.1, `s_n(x) = 0` when `tr(Frob_x | E_{μ,x}) ≢ 0 (mod λ)`; writing `ρᵢ` through `z ↦ z^{cᵢ}`, the trace is congruent to `N_{k/k(v)}(u(x))` for `u(T) = ∑_r (−1)^{nr} ∏ᵢ C(cᵢ, r) T^r` by Lucas's theorem (the last term of a base-`q_v` expansion in the printed proof should be `r_{d−1}q_v^{d−1}`); take `U = T_{1,k(v)}[1/u]` pulled back, nonempty since `u(0) = 1`.

**Checks.**

- The open set is independent of the extension `k/k(v)`: `u` has coefficients in `k(v)`.
- At the Fermat point `x = 0` of `T₀` (where `g(0)` is `∞` in `T₁`) the criterion does not apply directly; §7.8 treats `l ≡ 1 (mod N)` there.
- For `n = 1` the trace is `ρ₁((1 − x)^{(q−1)/N})`, a unit, and the fibre is a crystalline character, trivially ordinary.

### Examples

For the self-dual datum with `N = 5`, `n = 2` and `l ≡ 1 (mod 5)`: `V_{λ,t}(1)` has weights `{0, 1}` (§7.4), is crystalline at good reduction (§7.7), ordinary of weight `0` near `t = 0` (§7.8), and an unramified twist of Steinberg at places `v ∤ 5l` with `v(t) < 0` (§7.10); together these make `{V_{λ,t}(1)}_λ` a rank-two weakly compatible system of weight one, like the Tate modules of an elliptic curve.

### Dependencies

Layers 2–6; ComplexComparisonPartII §C5.3; PadicHodgeTheory §§3.2–3.4, 3.6, 6.1, 8.1–8.2; LocalGaloisDeformationRings §§1.7, 6.19; PadicDifferentialEquationsAndRigidCohomology §§RD.2.3, RD.3.34, RD.3.43, RD.7.7; LefschetzPencilsAndVanishingCycles §§0.5, 1.1, 1.6; ArithmeticGaloisRepresentations §2.4; PotentialModularityAndCompatibleSystems §§1.1, 1.9; GlobalNumberFields Layers 9–10; SchemeAndStackFoundations §1.16; DeligneWeightsAndPurity §7.15.

## Layer 8: Semistable models and ordinarity near infinity

Near `t = ∞` the reciprocal Dwork family `s(∑Xᵢᴺ) = N∏Xᵢ`, `s = 1/t`, degenerates to the coordinate simplex. An explicit `H₀`-equivariant sequence of blowups makes it semistable over the base `W[T, U^{±1}]` with `s = UT`; after a ramified base change and an equivariant toroidal subdivision every fibre with `v(s) > 0` acquires an equivariant strictly semistable model. Its Hyodo–Kato cohomology computes `D_st` of the Dwork eigenparts, with monodromy operator the residue of the Gauss–Manin connection, which is maximally nilpotent by §4.6. With the consecutive weights of Layer 7 this gives regular ordinarity at the coefficient prime for `v(t) < 0`.

### 8.1 The equivariant semistable blowup of the reciprocal Dwork family

Let `k` be a perfect field of characteristic `p ∤ N`, `W = W(k)`, and `Spec W[T, U^{±1}]′` the open subscheme where `(TU)^N ≠ 1`. Let `Y_N ⊂ ℙ^{N−1} × Spec W[T, U^{±1}]′` be `UT(X₁ᴺ + ⋯ + X_Nᴺ) = N X₁⋯X_N`, with `D_i = {X_i = 0}` and `D = {∑ Xᵢᴺ = 0}`. Blow up `D ∩ D_N`, then successively the intersections of the strict transforms of `D` and `D_j` for `j = N − 1, …, 1`. The result `𝕏` satisfies: (a) every centre is `H₀`-stable, so `H₀` acts on `𝕏` and the blowdown `𝕏 → Y_N` is `H₀`-equivariant; (b) the blowdown is an isomorphism over `T ≠ 0`; (c) étale locally `𝕏` is étale over `W[T, U^{±1}]′[Z₁, …, Z_r, Z_{r+1}^{±1}, …, Z_m^{±1}]/(TU − Z₁⋯Z_r)`, `H₀`-equivariantly with `H₀` acting on the `Zᵢ` by characters. (Qian, *Ordinarity of local Galois representation arising from Dwork motives*, Lemma 2.1, Remark 2.2 and the following paragraph, pp. 4–8, arXiv v1; Qian, proof of Lemma 3.3(2), arXiv v1 pp. 13–14.)

The construction has the following API.

- `𝕏 → Y_N` is an isomorphism over `T ≠ 0`.
- Étale locally `𝕏` has the chart `TU = Z₁⋯Z_r` with some `Zᵢ` inverted, and `H₀` acts on chart coordinates by characters, compatibly with the blowdown.
- Base change along `T ↦ π`, `U ↦ u` (`u ∈ O_F^×`, `π` a uniformiser of a finite `F/W[1/p]`) gives a strictly semistable `O_F`-model of `uπ(∑Xᵢᴺ) = N∏Xᵢ` with `H₀`-action.
- Base change to `ℂ` along `U ↦ 1` gives a blowup of `T(∑Xᵢᴺ) = N∏Xᵢ` over `𝔸¹ − μ_N`, an isomorphism away from `T = 0`, whose fibre over `0` is a reduced normal-crossings divisor without self-crossings.

*Needs:* §§1.2, 1.3; SchemeAndStackFoundations §§4.11, 4.20.

*Proof sketch.* The centres are intersections of `H₀`-stable divisors, hence `H₀`-stable, and blowups commute with flat base change. The charts after each blowup are computed by hand: the local equation becomes `TU = Z₁⋯Z_r` times a unit.

**Checks.**

- Over `T = 1/2` (any `T ≠ 0` with `(TU)^N ≠ 1`) the blowup is an isomorphism onto the smooth Dwork fibre.
- Over `T = 0` the special fibre of `𝕏` is reduced: the chart equation `TU = Z₁⋯Z_r` has reduced fibre `Z₁⋯Z_r = 0`.
- Before blowing up, the fibre of `Y_N` at `T = 0` is the union of the coordinate hyperplanes `X₁⋯X_N = 0`.
- For `N ≥ 5` the total space is singular where `T = 0`, at least two coordinates vanish and `∑ Xᵢᴺ = 0`, for instance at `X₁ = X₂ = 0`, `X₃ = 1`, `X₄ = −1` and the other coordinates zero; these points require the modification. For `N = 3` the total space is smooth there and its central fibre is already the normal-crossings triangle `X₁X₂X₃ = 0`.

### 8.2 Equivariant semistable models of Dwork fibres near infinity

Let `F/ℚ_p` be finite containing `ζ_N`, `p ∤ N`, `π` a uniformiser, and `t ∈ F` with `v(t) = d > 0` (the reciprocal parameter, i.e. Dwork parameter `t⁻¹`). There are `e ≥ 1` and a projective strictly semistable model `𝒴` over `O_{F′}`, `F′ = F(π^{1/e})` totally ramified of degree `e`, of the hypersurface `t(∑Xᵢᴺ) = N∏Xᵢ`, with an `H₀`-action compatible with that on the generic fibre. More precisely there is an `H₀`-equivariant projective blowup `Z` of `US^{de}(∑Xᵢᴺ) = N∏Xᵢ` over `W[S, U^{±1}]′`, an isomorphism outside `S = 0`, étale locally étale over `W[U^{±1}, S, Z₁, …, Z_m]/(US − Z₁⋯Z_r)` with some `Zᵢ` inverted, and `𝒴` is its base change along `S ↦ π^{1/e}`, `U ↦ u`. Only semistability over `F′`, not over `F`, is asserted. (Qian, *Ordinarity of local Galois representation arising from Dwork motives*, Theorem 1.4 and Proposition 1.5, p. 3, restated as Theorem 2.3, p. 9, proof pp. 8–13, arXiv v1.)

*Needs:* §8.1; SchemeAndStackFoundations §4.20.

Step 2 uses the requirement `gap:equivariant-toroidal-semistable-reduction` stated in the contract with SchemeAndStackFoundations.

*Proof sketch.* Base change the model of §8.1 along `T ↦ S^{de}`; it becomes toroidal but not semistable. Subdivide the slice `S = 1` of its conical complex into unimodular lattice simplices; the corresponding blowup is `H₀`-equivariant because `H₀` acts on the charts by characters, and it is semistable after the ramified base change of degree `e`. A blowup of a projective scheme is projective.

**Checks.**

- `d = 1` needs no subdivision: the model of §8.1 is already semistable over `O_F` and `e = 1`.
- For `d = 2` the base change `T ↦ S²` gives the local equation `US² = Z₁⋯Z_r`, which is not semistable (the special fibre is nonreduced); a subdivision is needed.
- A general semistable alteration (SchemeAndStackFoundations §4.20) need not be `H₀`-equivariant or an isomorphism on the generic fibre, so it does not replace the toroidal construction.

### 8.3 The log special fibre lifts over `W[T]`

In the setting of §8.2, give `Z` the log structure `M` of the divisor `(S)` and `𝒴` that of `(π^{1/e})`. Choose `u′ ∈ W^×` with the same reduction as `u` and let `(Y, N)` be the base change of `(Z, M)` along `S ↦ T`, `U ↦ u′` over `Spec W[T]′`, `(T^{de}u′)^N ≠ 1`. Then (a) the log special fibre `(𝒴̄, 𝒩̄)` over `(k, ℕ, 1 ↦ 0)` is isomorphic, `H₀`-equivariantly, to the fibre of `(Y, N)` at `T = 0`; (b) `Y` is a projective `H₀`-equivariant blowup of `u′T^{de}(∑Xᵢᴺ) = N∏Xᵢ` over `W[T]′`; (c) `(Y, N)` is log smooth over `(W[T]′, ℕ, 1 ↦ T)`. (Qian, *Ordinarity of local Galois representation arising from Dwork motives*, Remark 2.4, p. 13, arXiv v1.)

*Needs:* §8.2; CrystallineCohomology §§CR.5:log-algebra.1, CR.5:log-algebra.3; ComplexComparisonPartII §C5.5.

*Proof sketch.* Both log special fibres are base changes of `(Z, M)` along `S ↦ 0`, `U ↦ ū`. The charts of `Z` with `U ↦ u′` give Kato charts `u′T = Z₁⋯Z_r`, so Kato's chart criterion gives log smoothness.

**Checks.**

- For `d = 1`, `e = 1` the lift is the reciprocal family itself near `T = 0` with its semistable blowup.
- The base `W[T]` with log structure `1 ↦ T` is log smooth over `W` with the trivial log structure, while the special fibre `T = 0` carries the log point.
- Replacing `u′` by a lift with a different reduction changes the special fibre and breaks (a).

### 8.4 Hyodo–Kato description of `D_st` of Dwork fibres near infinity

Let `F/ℚ_p` be finite containing `ζ_N`, `p` odd and prime to `N`, `λ | p`, `E/ℚ_p` the `λ`-coefficient field, `t ∈ F` with `v(t) > 0`, and `F′`, `𝒴` as in §8.2. Put `K₀ = W(k_{F′})[1/p]` and `V = V_{λ,t⁻¹} ⊗ E`. Then `V|_{G_{F′}}` is semistable and `D_st,F′(V) = (B_st ⊗_{ℚ_p} V)^{G_{F′}}` is identified, `H₀`-equivariantly, with the `χ`-eigenpart of `H^{N−2}_HK(𝒴̄, 𝒩̄) ⊗_{ℚ_p} E` over `K₀ ⊗ E`. After enlarging `E` to `E′` and taking a label `σ : K₀ → E′`, the character is transported by that coefficient map (the `σ⁻¹χ` convention in fixed global coordinates). `N` preserves each component and `φ` permutes them, `φ^f` being linear on a component for `f = [k_{F′} : 𝔽_p]`. The filtration is compared only after extension from `K₀` to `F′`, through the Hyodo–Kato map determined by a uniformiser of `F′`. `V` is potentially semistable over `F`, semistable over `F′`. (Qian, *Ordinarity of local Galois representation arising from Dwork motives*, §4, definition of `D_st,σ` at the foot of p. 20 and the first display on p. 21, arXiv v1.)

*Needs:* §§2.3, 8.2, 8.3; PadicHodgeTheory §§8.1–8.2; CrystallineCohomology §§CR.6.1–CR.6.3.

*Proof sketch.* The semistable comparison for proper semistable models (PadicHodgeTheory §8.1, with CrystallineCohomology's normalized Hyodo–Kato realization) is natural, hence `H₀`-equivariant; take the transported `χ`-eigenparts. The Hyodo–Kato cohomology of `(𝒴̄, 𝒩̄)` is that of the `T = 0` fibre of the log smooth lift of §8.3 (CrystallineCohomology §CR.6.3), which computes `N` as the residue of the Gauss–Manin connection; the monodromy of a uniformiser of ramification index `e` is divided by `e` as in PadicHodgeTheory §8.1.

**Checks.**

- For the self-dual data with `n = 2`, `N` on `D_st` is nonzero, matching a multiplicative (Tate-curve-like) degeneration.
- `D_st` is a module over `K₀ ⊗ E`, not over `F′ ⊗ E`; the filtration lives on `D_st ⊗_{K₀} F′`.
- `φ` is semilinear and permutes the `K₀`-labels; only `φ^f` acts linearly on one label.

### 8.5 Regular ordinarity of Dwork fibres near infinity

Let `λ` be a prime of `O` (of `O⁺` when `n = 2`) of odd residue characteristic `l ∤ N`, `F_v/ℚ_l` finite containing `ζ_N`, Qian's datum (or the self-dual datum), and `t ∈ F_v` with `v(t) < 0`. Then: (1) there is a finite totally ramified `F′_v/F_v` with `V_{λ,t}|_{G_{F′_v}}` semistable, and for every `σ` the monodromy operator `N` on `D_st,σ` is maximally nilpotent (`N^{n−1} ≠ 0`); (2) `V_{λ,t}` is ordinary of weight `μ` with `μ_{σ,i} = M(a_σ)` for all `i` (`IsOrdinaryOfWeight`); (3) ordinarity with the induced weights passes to `G_{F_v}`-stable subquotients, and hence for a `G_F`-stable filtration of a global `V_{λ,t}` (`t ∈ F`) each graded piece, and the semisimplification, is ordinary at `v` with Hodge–Tate weights the corresponding subset of `{M(a_σ), …, M(a_σ) + n − 1}`. (Qian, Lemma 3.10(4), arXiv v1 p. 21, which invokes the companion paper; Qian, *Ordinarity of local Galois representation arising from Dwork motives*, Theorem 1.1, p. 2, proved in §4, pp. 19–23, arXiv v1, whose Lemma 4.2 omits the consecutive-weight hypothesis of Barnet-Lamb–Geraghty–Harris–Taylor, Lemma 2.2(2).)

*Needs:* §§4.6, 7.4, 8.4; PadicHodgeTheory §§3.6, 6.3; CrystallineCohomology §CR.6.1; LocalGaloisDeformationRings §1.7.

*Proof sketch.* (1) §8.4 gives semistability over `F′_v` and identifies `N` with the Hyodo–Kato monodromy of the transported `χ`-part, the residue of the Gauss–Manin connection; maximal nilpotence follows from maximal unipotence of the complex monodromy at `∞` for the conjugate character (§4.6). (2) PadicHodgeTheory §3.6: a semistable representation with `dim ker N^j = j` for `1 ≤ j < n` and consecutive jumps `M(a_σ), …, M(a_σ) + n − 1` (§7.4) is regular ordinary with `λ_{σ,i} = M(a_σ)`; the same section descends a de Rham regular ordinary restriction from `F′_v` to `F_v`, the ordered flag being the canonical one reconstructed from the kernels of `N^j`. (3) A stable full flag restricts to a subrepresentation and pushes to a quotient, with a subset of the graded characters, whose weights stay strictly ordered (PadicHodgeTheory §6.3).

**Checks.**

- For the self-dual datum with `n = 2` and `v(t) < 0`, `V_{λ,t}((N − 3)/2)` is, after a finite extension, an extension of `ε⁻¹·(unramified)` by an unramified character, like a Tate curve.
- Consecutive weights are needed in (2): a weakly admissible rank-two module over `ℚ_p` with `φe₁ = pe₁`, `φe₂ = p²e₂`, `Ne₂ = e₁`, `Ne₁ = 0` and jumps `0, 3` (`Fil¹ = Fil² = Fil³ = ⟨e₁ + e₂⟩`) has maximal `N` but its monodromy flag is not ordinary.
- At places with `v(t) > 0` and `l ≡ 1 (mod N)` the fibre is crystalline ordinary by §7.8 instead; (2) concerns `v(t) < 0` only.

### 8.6 Regular ordinarity near infinity for a general character

Let `F/ℚ_p` be finite containing `ζ_N`, `p` odd, `p ∤ N`, and `χ(ξ) = ∏ ξᵢ^{aᵢ}` an arbitrary character of `H₀` (`∑ aᵢ ≡ 0`) with `V_λ = e_χ R^{N−2}π_*O_λ` of rank `n ≥ 1`. Assume (a) for every `σ ∈ Gal(ℚ(ζ_N)/ℚ)` the monodromy of the `σχ`-eigen-local-system at `t = ∞` has minimal polynomial `(X − 1)^n`, and (b) at every embedding the labelled Hodge–Tate weights of `V_{λ,t⁻¹}` are `n` consecutive integers. Then for every finite `F₀/F` and `t ∈ F₀` with `v(t) > 0`, `V_{λ,t⁻¹}` is ordinary of some regular weight. Hypothesis (a) for all `σ` follows from the case `σ = 1` by coefficient conjugation. A zero entry in the exponent vector does not imply (a), and (b) is not known for general `χ`. (Qian, *Ordinarity of local Galois representation arising from Dwork motives*, Theorem 1.1 and Remark 1.2, p. 2, and §4, pp. 19–23, arXiv v1; A'Campo, Definitions 2.1.1–2.1.2 and Proposition 2.5.7, arXiv v1 pp. 7–8, 19–20.)

*Needs:* §§8.4, 8.5; PadicHodgeTheory §3.6.

*Proof sketch.* As in §8.5, using §8.4 for `χ` and the hypotheses (a), (b) in place of the computations for Qian's datum.

**Checks.**

- For Qian's datum, (a) is §4.6 and (b) is §7.4, recovering §8.5.
- For `N = 5` the rank-two datum `a = (1, 2, 2, 0, 0)` contains zeros, yet in A'Campo's parameters `α = (0, 3)`, `β = (1, 2)` its monodromy at infinity after the fifth-power cover has two singleton Jordan blocks: (a) fails, so "a zero exponent gives maximal unipotence" is false.
- Adding a constant to every `aᵢ` preserves the `H₀`-character and can create a zero, so the occurrence of zero is not an intrinsic property of `χ`.

### Examples

For `N = 3` (the Hesse pencil) and `p ≠ 3`, the reciprocal family near `T = 0` is already semistable (§8.1), its special fibre is the triangle `X₁X₂X₃ = 0`, and for `v(t) < 0` the elliptic fibre has multiplicative reduction: its `H¹` is ordinary semistable with `N ≠ 0`, the rank-two prototype of §8.5.

### Dependencies

Layers 1, 2, 4 and 7; SchemeAndStackFoundations §§4.11, 4.20; CrystallineCohomology §§CR.5:log-algebra.1, CR.5:log-algebra.3, CR.6.1–CR.6.3; ComplexComparisonPartII §C5.5; PadicHodgeTheory §§3.6, 6.3, 8.1–8.2; LocalGaloisDeformationRings §1.7.

## Layer 9: Switching theorems

A switching theorem finds a Dwork fibre, over a CM or totally real extension disjoint from a prescribed avoidance field, whose residual representations at two primes are prescribed and whose local behaviour at those primes is controlled. The construction matches determinants (Layer 6), builds the level-structure torsor (Layer 5), Weil-restricts it to `ℚ`, and applies Moret-Bailly's theorem with local conditions at the two primes. Qian's theorem does this for the asymmetric data; the self-dual switch serves the symplectic potential-automorphy theorem of Barnet-Lamb–Gee–Geraghty–Taylor; Boxer–Calegari–Gee–Newton–Thorne use it twice, together with a CM-induced seed, to build their auxiliary systems.

### 9.1 Switching data: determinant twists, the module `W` and the torsor `T_W`

Hypotheses: `l` odd, `n = l^a m` with `l ∤ m`, `s ≥ 1`; `N` odd, prime to `ln`, `N > 100n + 100`, and with `r` the order of `l` modulo `N`, `N ∤ l^{r/2} + 1` if `r` is even; `F` a CM field, `M = F(ζ_N)`; `r̄ : G_F → GL_n(𝔽_{l^s})` continuous; `λ | l` a prime of `O` (of `O⁺` when `n = 2`) with `k(λ) ⊇ 𝔽_{l²}` and containing all `m`-th roots of elements of `𝔽_{l^s}`; `l′ > 2ln + 5` prime, unramified in `F^avoid`, with `l′ ≡ 1 (mod N)` and `l′ ≡ 1 (mod n)`; `λ′ | l′`, `k(λ′) = 𝔽_{l′}`; `r̄′ : G_F → GL_n(𝔽_{l′})` with `det r̄′ = ε̄_{l′}^{−n(n−1)/2}`; finite Galois `F^avoid ⊇ F`, `F^avoid_2`, and totally real Galois `F^suff/ℚ`, all unramified above `N`, with `F^avoid_2 ∩ F^avoid = ℚ` and `F^suff ∩ F^avoid F^avoid_2 = ℚ`; `F₀ = F^avoid F^avoid_2 F^suff(ζ_N)`.

Construction: apply §6.5 to `det V[λ] ⊗ (det r̄|_{G_M})⁻¹` (exponent `m`, coefficient field `k(λ)`, §6.6) with avoidance field `F₀`, giving `L₁`; then over `L₁M` to `(det r̄′)⁻¹ ⊗ det V[λ′]` (exponent `n`, coefficient field `𝔽_{l′}`, §6.7) with avoidance field `F₀L₁`, giving `L₂`. Put `L = L₁L₂` and `E = LM`. This gives (a) a totally real Galois `L/ℚ` linearly disjoint from `F₀`, and the CM field `E`, Galois over `F`; (b) characters `χ̄₁ : G_E → k(λ)^×`, `χ̄₂ : G_E → 𝔽_{l′}^×` with `χ̄₁^n = det V[λ] ⊗ (det r̄)⁻¹` and `χ̄₂^n = det V[λ′] ⊗ (det r̄′)⁻¹`; (c) `W = (χ̄₁ ⊗ r̄) × (χ̄₂ ⊗ r̄′)` over `O/λλ′ ≅ k(λ) × 𝔽_{l′}` with `det W ≅ det V[λλ′]`, hence `φ : ∧ⁿW ≅ ∧ⁿV[λλ′]` and the torsor `T_W = T({W})` over `(T₀)_E` (§5.11); (d) `T_W` smooth and geometrically irreducible (§5.12, with `l ≠ l′`, `max(l, l′) > 10`, `k(λ′) = 𝔽_{l′}`); (e) `E ∩ F^avoid F^avoid_2 F^suff = F`. (Qian, §4, root characters and construction of `W`, arXiv v1 pp. 21–23; the published argument requires `n | #k(λ)^×` where `m | #k(λ)^×` is correct, applies the root lemma once for two characteristics, and writes the determinant of the symmetric power of `H¹` with a positive cyclotomic exponent.)

The construction has the following API.

- `L` is totally real, Galois over `ℚ` and linearly disjoint from `F₀`; `E = L·F(ζ_N)` is CM and Galois over `F`.
- `χ̄₁^n = det V[λ] ⊗ (det r̄)⁻¹` and `χ̄₂^n = det V[λ′] ⊗ (det r̄′)⁻¹` as characters of `G_E`, with values in `k(λ)^×` and `𝔽_{l′}^×`.
- `det W ≅ det V[λλ′]` as characters of `G_E`, giving `φ`.
- `T_W → (T₀)_E` is finite étale, smooth and geometrically irreducible.
- `E ∩ F^avoid F^avoid_2 F^suff = F`.

*Needs:* §§5.9, 5.11, 5.12, 6.5–6.7; ArithmeticGaloisDuality §R02.4.6; PotentialModularityAndCompatibleSystems §2.14.

*Proof sketch.* The two root extractions are §6.5 applied to §§6.6–6.7; the second avoidance field `F₀L₁` keeps `L₁L₂` disjoint from `F₀`. Then `det(χ̄₁ ⊗ r̄) = det V[λ]` and `det(χ̄₂ ⊗ r̄′) = det V[λ′]`, which gives `φ` by §5.9. For (e): `L` and `F₀` are linearly disjoint and `M ⊂ F₀`, so `E ∩ F₀ = M`; `F^avoid F^avoid_2 F^suff` is unramified above `N`, so it meets `ℚ(ζ_N)` in `ℚ`, and disjointness through towers (PotentialModularityAndCompatibleSystems §2.14) gives `M ∩ F^avoid F^avoid_2 F^suff = F`.

**Checks.**

- If the two determinant ratios are already trivial on `G_{F(ζ_N)}`, take `L = ℚ`, `E = F(ζ_N)` and `χ̄₁ = χ̄₂ = 1`; `det V[λ]` is read as a character of `G_M`, not of `G_F`.
- Since `l′ ≡ 1 (mod N)`, `k(λ′) = 𝔽_{l′}` and `O/λλ′ ≅ k(λ) × 𝔽_{l′}`.
- For `n = 3` and `l′ ≡ 2 (mod 3)` the cube map on `𝔽_{l′}^×` is bijective, so every `𝔽_{l′}^×`-valued character has a cube root already: the congruence `l′ ≡ 1 (mod n)` is a sufficient condition for §6.5, not a necessary one.
- Two separate applications of §6.5 with the same avoidance field `F₀` could give `L₁, L₂` each disjoint from `F₀` whose compositum is not: for `F₀ = ℚ(√6)`, `L₁ = ℚ(√2)` and `L₂ = ℚ(√3)` are each disjoint from `F₀` but `L₁L₂ ⊃ F₀`.

### 9.2 Weil restriction of the torsor and the local conditions

With the switching data of §9.1 let `T = Res_{EF^suff/ℚ}(T_W ×_E EF^suff)`, with the morphism `p : T → Res_{EF^suff/ℚ} T₀` induced by `T_W → (T₀)_E`. Put `Ω_∞ = T(ℝ)`, `Ω_{l,0} = {(t_τ) : v_l(t_τ) < 0 for all τ : EF^suff → ℚ̄_l}`, `Ω_{l′,0} = {(t_τ) : v_{l′}(t_τ) > 0 for all τ}`, `Ω_l = p⁻¹(Ω_{l,0})` and `Ω_{l′} = p⁻¹(Ω_{l′,0})`. (Qian, §4, local opens and Proposition 4.2, arXiv v1 pp. 23–24.)

The construction has the following API.

- `T` is a smooth geometrically irreducible `ℚ`-variety.
- `Ω_∞`, `Ω_l`, `Ω_{l′}` are nonempty open subsets of `T(ℝ)`, `T(ℚ̄_l)`, `T(ℚ̄_{l′})`, invariant under `Gal(ℚ̄_l/ℚ_l)` (resp. `Gal(ℚ̄_{l′}/ℚ_{l′})`).
- `Ω_∞ = T(ℝ) = ∏ T_W(ℂ)` over the complex places of the CM field `EF^suff`, nonempty because `T_W` is a nonempty smooth variety.

*Needs:* §9.1; AbelianSchemesAndArithmeticModuli §§A6.30–A6.31; AlgebraicModuliForArithmeticGeometry §3.4; PotentialModularityAndCompatibleSystems §2.18.

*Proof sketch.* Weil restriction of a smooth quasi-projective variety along a finite separable extension exists, is smooth, and over `ℚ̄` is the product of the conjugates (AbelianSchemesAndArithmeticModuli §A6.31), hence geometrically irreducible (PotentialModularityAndCompatibleSystems §2.18). Points with `v(t) < 0` or `v(t) > 0` avoid `μ_N` and `∞`, so `Ω_{l,0}, Ω_{l′,0}` are nonempty open and Galois-stable; `p` is finite étale and surjective on `ℚ̄_l`-points, so the preimages are nonempty open.

**Checks.**

- `t = 1/l` lies in `Ω_{l,0}` for every embedding: `v_l(1/l) = −1 < 0`.
- `t = l′` lies in `Ω_{l′,0}`: `v_{l′}(l′) = 1 > 0`, and `l′` avoids `μ_N`.
- If `EF^suff` has degree `2d` over `ℚ`, `T(ℝ)` is the product of `d` copies of `T_W(ℂ)`, one for each complex place.
- `t = l` is near the Fermat point, `v_l(t) > 0`, so it is excluded from `Ω_{l,0}`; a unit such as `1 + l` is near neither `0` nor `∞`.

### 9.3 Qian's switching theorem

Keep the switching data of §9.1. There are a finite totally real Galois `L′/ℚ`, linearly disjoint from `F₀L` over `ℚ`, and, with `F′ = L′EF^suff`, a point `t ∈ T₀(F′)` with a `G_{F′}`-equivariant isomorphism `W ≅ V[λλ′]_t` inducing `φ_t` on `∧ⁿ`, such that: (i) `F′ ⊇ EF^suff` is CM, finite Galois over `F`, with `(F′)⁺ = L′E⁺F^suff`; (ii) `χ̄₁⁻¹V[λ]_t ≅ r̄|_{G_{F′}}` and `χ̄₂⁻¹V[λ′]_t ≅ r̄′|_{G_{F′}}`; (iii) `v(t) < 0` for every place `v | l` of `F′` and `v(t) > 0` for every `v | l′`; (iv) `F′ ∩ F^avoid_2 = ℚ` and `F′ ∩ F^avoid F^avoid_2 = F`, so `F′` is linearly disjoint over `F` from every subextension of `F^avoid F^avoid_2`; (v) `K = L′LF^suff(ζ_N)` is finite Galois over `ℚ` with `FK = F′` and `K ∩ F^avoid = ℚ`. Consequently `V_{λ,t}` has the prescribed residual representation at `l`, `V_{λ′,t}` at `l′`, `V_{λ′,t}` is ordinary at the places above `l′` (§7.8), and `V_{λ′,t}` has maximal unipotent monodromy at the places above `l` (§7.10). No automorphy statement is made. (Qian, §4, Proposition 4.2 and the intersection computations, arXiv v1 pp. 23–24, and the final proof of Theorem 1.4, p. 26, where the disjointness should be asserted for `K`, not for `F′`, since `F′` and the normal closure both contain `F`.)

*Needs:* §§7.8, 7.10, 9.1, 9.2; PotentialModularityAndCompatibleSystems §§2.14, 2.17.

*Proof sketch.* Apply Moret-Bailly with three kinds of local conditions (PotentialModularityAndCompatibleSystems §2.17) over `ℚ` to `T` with `S₁ = {∞}`, `S₂ = ∅`, `S₃ = {l, l′}`, the opens of §9.2 and avoidance field `F₀L`; the real place splits, so `L′` is totally real. A point of `T` over `L′` is a point of `T_W` over `L′EF^suff = F′`, i.e. `t ∈ T₀(F′)` with an isomorphism `W ≅ V[λλ′]_t` respecting `φ`, giving (ii) after untwisting and (iii) from the local conditions. (iv) and (v) follow from disjointness through towers. The local consequences are §7.8 (`l′ ≡ 1 (mod N)` and `t ∈ 𝔪`) and §7.10 (`l′ ≠ l`, `v(t) < 0`).

**Checks.**

- For `n = 2` the theorem is the self-dual switch with the real coefficient field, and its residual representations are symplectic (§9.4).
- `F′` contains `F`, so `F′` cannot be linearly disjoint over `ℚ` from a normal closure containing the CM field `F`; the disjointness over `ℚ` is asserted for `K`.
- With `l = l′` the two residual conditions would be at one prime and §5.12 would not give irreducibility; the hypothesis `l′ > 2ln + 5` keeps the primes distinct.

### 9.4 Switching in the self-dual Dwork family

Let `F/F₀` be a finite Galois extension of totally real fields, `I` a finite set, and for `i ∈ I`: `nᵢ` even, `lᵢ` odd primes, `r̄ᵢ : G_F → GSp_{nᵢ}(𝔽̄_{lᵢ})` with open kernel and multiplier `ε̄_{lᵢ}^{1−nᵢ}`; let `l′` be an odd prime distinct from every `lᵢ` and `r̄′ᵢ : G_F → GSp_{nᵢ}(𝔽_{l′})` with multiplier `ε̄_{l′}^{1−nᵢ}`, and `F^avoid/F` finite Galois. Choose `N` odd, prime to `2∏lᵢ·l′`, `N > nᵢ + 1`, divisible by no prime ramified in `F^avoid`, such that each `r̄ᵢ` takes values in `GSp_{nᵢ}(ℤ[ζ_N]⁺/λᵢ)` for a prime `λᵢ | lᵢ` of `ℤ[ζ_N]⁺` (§1.1), and `λ′ | l′`. Then the product over `Spec K`, `K = F(ζ_N)⁺`, of the symplectic level-structure torsors `T_{r̄ᵢ × r̄′ᵢ}` over their own parameter lines `(T₀)_K` is geometrically irreducible; and for an auxiliary finite Galois avoidance field `L/K` and a finite set `Σ` of finite places whose residue characteristics divide neither `N` nor `l′`, Moret-Bailly gives a totally real `F′/F₀`, Galois, linearly disjoint from `F^avoid` over `F`, and `tᵢ ∈ T₀(F′)` with `V_{nᵢ}[λᵢ]((N − 1 − nᵢ)/2)_{tᵢ} ≅ r̄ᵢ|_{G_{F′}}` and `V_{nᵢ}[λ′]((N − 1 − nᵢ)/2)_{tᵢ} ≅ r̄′ᵢ|_{G_{F′}}` as symplectic representations, `v(tᵢ) < 0` at every place above `lᵢ` (and above `Σ`) and `v(tᵢ) > 0` at every place above `l′`. At such points `V_{λ′,tᵢ}((N − 1 − nᵢ)/2)` is ordinary of weight `0` at the places above `l′` when `l′ ≡ 1 (mod N)`, has Hodge–Tate numbers `{0, …, nᵢ − 1}`, and at places above `lᵢ` (and `Σ`) its Weil–Deligne representation is an unramified twist of Steinberg. (Barnet-Lamb–Gee–Geraghty–Taylor, proof of Theorem 3.1.2, arXiv v4 pp. 42–44, and Proposition 3.1.1; Barnet-Lamb–Geraghty–Harris–Taylor, §§4–6, Proposition 4.2, Lemmas 5.1, 5.3, 6.1 and Proposition 6.2, pp. 26–40; Allen–Calegari–Caraiani–Gee–Helm–Le Hung–Newton–Scholze–Taylor–Thorne, Lemma 7.1.8, pp. 1091–1092, and Corollary 7.2.4, p. 1100.)

*Needs:* §§1.1, 2.5, 5.6, 5.10, 5.11, 5.12, 7.4, 7.8, 7.10; PotentialModularityAndCompatibleSystems §2.18.

*Proof sketch.* For each `i`, full symplectic monodromy at the two distinct primes (§§5.6, 5.10, where symplectic factors need only distinct odd characteristics) gives a geometrically irreducible symplectic level torsor (§5.12); the product over `Spec K`, with one parameter `tᵢ` per factor, is geometrically irreducible. Moret-Bailly above a preliminary field (PotentialModularityAndCompatibleSystems §2.18) with the opens `v(t) < 0` above `lᵢ` and `Σ`, and `v(t) > 0` above `l′`, gives the points. The local properties are §§7.8, 7.4 and 7.10.

**Checks.**

- `nᵢ = 2`: the residual representations are `GL₂ = GSp₂`-valued with determinant `ε̄^{−1}`, and the switch produces a fibre that is Steinberg above `lᵢ`, the shape used in Barnet-Lamb–Gee–Geraghty–Taylor, Theorem 3.1.2.
- Without the symplectic compatibility of the level structures the torsor has several geometric components (§5.11).
- The base of the product torsor is `(T₀)^I`, one parameter per factor; no fibre product over a single shared `t` is asserted.

### 9.5 Local constancy of the Dwork Galois representations at finite level

Let `v | l` be a place of a number field `F ⊇ ℚ(ζ_N)`, `λ | l` a place of `M`, `t ∈ T₀(O_{F_v})` and `c ≥ 1`. There is an open ball `U_t ∋ t` in `T₀(O_{F_v})` such that `W_{t,λ}/l^c ≅ W_{t′,λ}/l^c` as representations of `G_{F_v}` for all `t′ ∈ U_t`, and likewise for finitely many `λ` at once. Only this finite-level statement is asserted. (Boxer–Calegari–Gee–Newton–Thorne, proof of Theorem 6.2.4, arXiv v3 p. 66, citing Kisin, Theorem 5.1, for a stronger statement.)

*Needs:* §§2.3, 3.6; EtaleCohomologyFoundations §F.0.2; LefschetzPencilsAndVanishingCycles §2.4 (henselian implicit function theorem); Mathlib `IsAdicComplete.henselianRing`.

*Proof sketch.* The reduction of `W_λ` modulo `l^c` is a lisse sheaf with finite fibres, and the sheaf of isomorphisms from its constant fibre at `t` is a finite étale cover of `T₀` (EtaleCohomologyFoundations §F.0.2) with an `F_v`-rational point above `t`. The henselian implicit function theorem over the complete ring `O_{F_v}` (LefschetzPencilsAndVanishingCycles §2.4) lifts that point over every `t′` sufficiently close to `t`, and the lift is a `G_{F_v}`-equivariant isomorphism of the finite fibres. Intersect the finitely many balls.

**Checks.**

- If `t ≡ t′` modulo a high power of the uniformiser, `W̄_{t,λ} ≅ W̄_{t′,λ}`.
- The ball depends on `c`: for `c → ∞` it shrinks, and no isomorphism of the full `l`-adic representations is asserted.
- At a puncture (`t^N ≡ 1` modulo the maximal ideal) `t ∉ T₀(O_{F_v})` and the statement does not apply.

### 9.6 Reductions of two-dimensional crystalline representations of small weight

Let `p` be odd and `r : G_{ℚ_p} → GL₂(E)` crystalline, `E/ℚ_p` finite, with cohomological Hodge–Tate weights `{0, m}`, `1 ≤ m ≤ p − 1`. Fix a stable lattice and read its reduction semisimply. Either `r` is ordinary, or up to an unramified character its reduction is `Ind_{G_{ℚ_{p²}}}^{G_{ℚ_p}}(ω₂^{−m})`; on `G_{ℚ_{p²}}` it is then an unramified twist of `ρ̄_{2,m,0} = ε̄₂^m ⊕ (ε̄′₂)^m` with the Lubin–Tate characters of LocalGaloisDeformationRings §6.19, and on inertia it is `θ₂^m ⊕ θ₂^{pm}` with `θ₂ = ω₂⁻¹`; the induced reduction is irreducible. (Berger, *Représentations modulaires de GL₂(ℚ_p) et représentations galoisiennes de dimension 2*, §1.3, p. 271, and Théorème 3.2.1(1), pp. 277–278; Boxer–Calegari–Gee–Newton–Thorne, proof of Theorem 6.2.4, arXiv v3 pp. 65–66.)

*Needs:* PadicHodgeTheory §§3.3, 6.4; LocalGaloisDeformationRings §6.19.

*Proof sketch.* Up to an unramified twist, the dual `r^∨` is Berger's `V_{k,a_p}` with `k = m + 1`, since §1.3 defines `D_cris(V_{k,a_p}^∨) = D_{k,a_p}` with jumps `0, k − 1`. The unit-root case `v_p(a_p) = 0` is ordinary (PadicHodgeTheory §6.4, with its weight signs translated). If `a_p` is in the maximal ideal, Théorème 3.2.1(1), valid for `2 ≤ k ≤ p + 1`, gives the semisimplified reduction `ind(ω₂^{k−1})`; dualising gives the exponent `−m`. Since `1 ≤ m ≤ p − 1`, `m` is not divisible by `p + 1`, so the induction is irreducible.

**Checks.**

- For `H¹` of an elliptic curve with supersingular good reduction, `m = 1` and the inertia is `ω₂⁻¹ ⊕ ω₂^{−p}`, with determinant `ε̄_p⁻¹`; the Tate module has the dual, positive exponents.
- For `m = p + 1` the theorem does not apply: `ω₂^{p+1} = ω` and the induction of a character extending to `G_{ℚ_p}` is reducible.
- In the ordinary case the reduction is reducible, an extension of unramified twists of `1` and `ω^{−m}`.

### 9.7 Local Dwork points with prescribed reductions

In the setting of the proof of Boxer–Calegari–Gee–Newton–Thorne, Theorem 6.2.4 (primes `p ≡ −1 (mod N)`, `r ≡ 1 (mod N)`, `p₀`, `q`, places `𝔭, 𝔯, 𝔮` of `M` above `p, r, q`, a CM field `F₄ = K⁺F₃` with large completions `K⁺_v`, and residual representations `r̄_𝔭, r̄_𝔯, r̄_{CM,𝔯}, ρ̄_{A,q}` trivial on `G_{F_{4,v}}` for `v | prp₀q`), for `k ∈ {m, nm}` with `k > 2` and each such `v` there is a nonempty open `_kΩ_v ⊂ T₀(O_{F_{4,v}})` of points `t` with: (i) `v ∈ Σ^ord`: `_kW̄_{t,𝔭}` trivial, `_kW_{t,𝔭}` crystalline ordinary, `_kW̄_{t,𝔯}`, `_kW̄_{t,𝔮}` trivial; (ii) `v ∈ Σ^ss`: `_kW_{t,𝔭}` crystalline and connected to `ρ_{k,1,0}`, residuals trivial; (iii) `v | r`: `_kW_{t,𝔯}` crystalline ordinary, residuals trivial; (iv) `v | p₀`: all residuals trivial; (v) `v | q`: `_kW_{t,𝔮}` crystalline ordinary, residuals trivial. Here `_kW` is the twisted Dwork system of rank `k`. The preliminary local extensions are chosen first to contain an ordinary point (or the Fermat point with its component comparison) and to kill all finitely many residual representations; then `K⁺` realises them and avoids the prescribed field. (Boxer–Calegari–Gee–Newton–Thorne, proof of Theorem 6.2.4, local data (i)–(v), arXiv v3 pp. 65–66.)

*Needs:* §§7.7, 7.9, 7.13, 9.5, 9.6; LocalGaloisDeformationRings §§6.8, 6.19, 6.25.

*Proof sketch.* (i), (iii), (v): §7.13 gives an ordinary crystalline point; local constancy (§9.5) and the connectedness of weight-zero crystalline ordinary lifts (LocalGaloisDeformationRings §6.25) give an open ball of such points with trivial residual representations after enlarging the local fields. (ii): at `t = 0`, `W_{0,𝔭}` restricted to inertia is `⊕ θ_τ^{i−1}θ_{cτ}^{k−i}` (§7.9), so its crystalline lifts connect to `ρ_{k,1,0}` (LocalGaloisDeformationRings §§6.8, 6.19); local constancy gives a neighbourhood. (iv): any point with trivial residual representations near `t = 0` after enlarging.

**Checks.**

- For `k = 2` the twisted system `W` is not defined (`n > 2` is required); the rank-two case is §9.11.
- Local triviality of the four input residual systems alone does not give the ordinary or component conditions; the preliminary extensions are chosen to contain the required points.
- For `v ∈ Σ^ss` with `k = 3` the model is `ρ_{3,1,0} = ε₂² ⊕ ε₂ε′₂ ⊕ (ε′₂)²`, whose weights `{0, −1, −2}` (LocalGaloisDeformationRings' sign) match `{0, 1, 2}` here.

### 9.8 The CM-induced auxiliary system `R_CM`

In the proof of Boxer–Calegari–Gee–Newton–Thorne, Theorem 6.2.4: let `F₁` be the Galois closure of `FF₀`, `E/ℚ` totally real cyclic of degree `m ≥ 2` disjoint from `F₁` with `p₀` unramified, `L₁ = EF₁`, and `q₁` an odd prime splitting completely in `L₁` with `v₁ | q₁` split as `w₁⋯w_m` in `L₁`. Choose an algebraic Hecke character `Ψ₀ : 𝔸_{L₁}^× → M^×` of the infinity type of Boxer–Calegari–Gee–Newton–Thorne, Proposition 6.2.3(6a), unramified above the relevant set, with restrictions `Ψ₀|_{O^×_{L_{1,w_i}}}` wildly ramified, pairwise distinct and of product one; then a CM `F₂/F₁` and a finite-order twist `Ψ₂` of `Ψ₀ ∘ N_{L₂/L₁}` with `det Ind Ψ_{2,λ} = ε^{−m(m−1)/2}`. Then `R_CM = {Ind_{G_{L₂}}^{G_{F₂}} Ψ_{2,λ}}_λ` is a weakly compatible system of rank `m` with Hodge–Tate weights `{0, …, m − 1}` and residual representations `r̄_{CM,λ}` absolutely irreducible on `G_{F₂(ζ_N, ζ_r)}` for the chosen `r`. `F₂` stays linearly disjoint from the cyclic `E`, the determinant-correcting twist is unramified at `v₁`, the residual prime `r` differs from `q₁`, and `N` is unramified in `L₂(ζ_r)`. (Boxer–Calegari–Gee–Newton–Thorne, proof of Theorem 6.2.4, construction of `Ψ` and `R_CM`, arXiv v3 pp. 64–65.)

The construction has the following API.

- `R_CM` has rank `m = [L₂ : F₂]`.
- `det R_{CM,λ} = ε^{−m(m−1)/2}`, matching `det W_λ` in rank `m`.
- `HT_τ(R_{CM,λ}) = {0, …, m − 1}` at every embedding.
- `r̄_{CM,𝔯}|_{G_{F₂(ζ_N, ζ_r)}}` is absolutely irreducible.

*Needs:* §6.5; ArithmeticGaloisDuality §R02.4.6; GlobalNumberFields Layers 9–10; PotentialModularityAndCompatibleSystems §§1.4, 1.9, 1.11, 2.15, 3.1.

*Proof sketch.* Algebraic Hecke characters of a CM field with prescribed infinity type exist (GlobalNumberFields Layers 9–10), and finite-order corrections with prescribed restrictions to finitely many local unit groups come from extending finite local characters (PotentialModularityAndCompatibleSystems §2.15, and §3.1 for the CM determinant of the induction). The determinant correction after a CM base change is a root extraction of a finite-order character (ArithmeticGaloisDuality §R02.4.6). Induction of a character family is a family (PotentialModularityAndCompatibleSystems §1.4), pure by §1.11, with algebraic characters by §1.9; distinct wild restrictions at the `wᵢ`, preserved by reduction at `r ≠ q₁`, make the residual induction irreducible after restriction.

**Checks.**

- The induction formula `Ind_{G_L}^{G_F}Ψ` has rank one when `L = F`; this checks the induction functor only, outside the hypothesis `m ≥ 2`.
- If the restrictions `Ψ₀|_{O^×_{wᵢ}}` were equal, `Ind Ψ₀` could become reducible after restriction to `G_{F(ζ_N, ζ_r)}`.
- `det Ind Ψ_{2,λ} = ε^{−m(m−1)/2}` gives weight sum `m(m − 1)/2`, consistent with `{0, …, m − 1}`.

### 9.9 Choice of primes and fields for the `p`–`r` switch

Given the rank-two compatible system `R` of Boxer–Calegari–Gee–Newton–Thorne, Theorem 6.2.4, over `F₂` with its set of good primes, and `R_CM`, there are primes `N, p, r, q` and fields with: `N > 100nm + 100` prime, unramified in `L₂` and `M`; `p ≡ −1`, `r ≡ 1 (mod N)`; `p, r > 2nm + 1`, good for `R|_{G_{F₂}}` and prime to `v₀v₁`; `p` split in `L₂` and `M`, `r` split in `L₂(ζ_p)` and `M`; `Ψ₂` unramified above `p` and `r`; `r̄_𝔭`, `r̄_𝔯` with image between `SL₂` and `GL₂`; `r̄_{CM,𝔯}|_{G_{F₂(ζ_N,ζ_r)}}` absolutely irreducible; the `p`-adic places split into `Σ^ord ∪ Σ^ss` by §9.6; a solvable CM extension `F₃/F₂(ζ_N)`, Galois over `ℚ`, linearly disjoint over `F₂(ζ_N)` from the field cut out over `F₂(ζ_N, ζ_p, ζ_r)` by `r̄_𝔭 × r̄_𝔯 × r̄_{CM,𝔯}`; and, after adjoining `e^{2πi/N}` to `M`, a semistable elliptic curve `A/ℚ` with good reduction at `p, r, p₀` and a prime `q ∉ {p, r, p₀}`, `q > 2nm + 1`, split in `M`, with `ρ̄_{A,q}(G_{F₃}) = GL₂(𝔽_q)` and `A` good ordinary at `q`. (Boxer–Calegari–Gee–Newton–Thorne, proof of Theorem 6.2.4, choice of `N, p, r, q, F₃`, arXiv v3 p. 65.)

*Needs:* §§9.6, 9.8; Chebotarev Layer 10; PotentialModularityAndCompatibleSystems §1.21.

*Proof sketch.* Primes `p ≡ −1`, `r ≡ 1 (mod N)` with the splitting conditions have positive density (Chebotarev); the excluded sets are finite or of density zero (PotentialModularityAndCompatibleSystems §1.21 for the residual images of `R`). §9.6 sorts the places above `p`. A semistable non-CM elliptic curve over `ℚ` has surjective mod-`q` image for almost all `q` and is ordinary at a density-one set of primes; choose `q` accordingly, outside `{p, r, p₀}`.

**Checks.**

- `p = 2N − 1` and `r = 2N + 1` satisfy the congruences when they are prime.
- `q` must differ from `p₀` as well as from `p` and `r`.
- `N` prime gives `−1 ∈ ⟨p⟩` for every `p` of even order modulo `N`; here `p ≡ −1` makes the unitary case of §5.8 apply at `p` and the split case at `r`.

### 9.10 The auxiliary Dwork systems `R_aux` and `S_UA`

Let `m > 2` and keep the data of §§9.7–9.9. (1) Moret-Bailly with surjective specialization (PotentialModularityAndCompatibleSystems §2.20) applied to `T(r̄_{CM,𝔯}|_{G_{F₄}})` (`r ≡ 1 (mod N)`, §5.11), with `f : π₁^ét(T) ↠ G` onto the image `G ⊆ GU_m(𝔽_{p²})` of the residual system `W̄_𝔭` (which contains `SU_m(𝔽_{p²})`, §5.8), avoidance field `B′F₄`, `S₀ = {p, r, p₀, q}` and the opens `_mΩ_v`, gives a CM field `F₅` and `t` with `R_aux = {W_{t,λ}}`: `r̄_{aux,𝔭}(G_{F₅}) = G` with multiplier `ε̄^{1−m}`, `r̄_{aux,𝔭}(G_{F₅(ζ_p)}) = SU_m(𝔽_{p²})`, `r̄_{aux,𝔯} ≅ r̄_{CM,𝔯}`, and the local properties (i)–(v) of §9.7. (2) Applying it again to `T(s̄_{aux,𝔭}, Sym^{nm−1}ρ̄_{A,q}|_{G_{F₅}})` for the rank-`nm` Dwork system, with the avoidance field enlarged by the field cut out by `r̄_{aux,𝔭}`, gives `F₆` and `S_UA` with `s̄_{UA,𝔭} ≅ s̄_{aux,𝔭}`, `s̄_{UA,𝔮} ≅ Sym^{nm−1}ρ̄_{A,q}` and the local properties. The level data are compatible with the Hermitian pairings. (Boxer–Calegari–Gee–Newton–Thorne, proof of Theorem 6.2.4, `R_aux` and `S_UA`, arXiv v3 pp. 66–67, where the image `GU_m(𝔽_{p²})` must be replaced by `G` and the final avoidance field must include the field cut out by the new auxiliary system.)

*Needs:* §§0.7, 0.9, 3.6, 5.8, 5.11, 5.12, 9.7, 9.8, 9.9; PotentialModularityAndCompatibleSystems §2.20.

*Proof sketch.* The torsors are smooth and geometrically irreducible (§5.12), the opens nonempty (§9.7), and `f` is surjective by definition of `G` as the full arithmetic image; its geometric subgroup contains `SU_m`. Surjective specialization gives residual image exactly `G`. On `G_{F₅(ζ_p)}` both the multiplier `ε̄^{1−m}` and the determinant `ε̄^{−m(m−1)/2}` are trivial, so the image lies in `SU_m`; `SU_m` is perfect (§0.9) and contained in `G`, so commutators of lifts put it in the restricted image. The second application matches the Hermitian structures by §0.7.

**Checks.**

- `det r_aux = ε^{−m(m−1)/2}` is compatible with the image `G` but not with all of `GU_m(𝔽_{p²})`, whose determinants include norm-one elements outside `𝔽_p^×`.
- The multiplier alone does not cut out `SU_m`: `x ↦ x^{1−m}` on `𝔽_p^×` need not be injective, so its kernel is larger than `{1}`.
- Without enlarging the avoidance field by the field cut out by `r̄_{aux,𝔭}`, later base changes could shrink the residual image.

### 9.11 The auxiliary system in rank two via twisted modular curves

Let `m = 2` in the setting of §9.10. There are a CM field `F₅/F₄`, with `F₅ ∩ B′F₄ = F₄`, and an elliptic curve `A_aux/F₅` such that `R_aux = {H¹(A_aux)_λ}` satisfies: `H¹_ét(A_aux, 𝔽_r) ≅ r̄_{CM,𝔯}|_{G_{F₅}}` symplectically; `ρ̄_{A_aux,p}(G_{F₅(ζ_p)}) = SL₂(𝔽_p)`, which is `SU₂(𝔽_{p²})` up to the identification of `SU₂` with `SL₂`; at `v ∈ Σ^ss`, `ρ_{A_aux,p}|_{G_{F_{5,v}}}` connects to `ρ_{2,1,0}` (`A_aux` supersingular), at `Σ^ord` and at `v | r` it is ordinary, and the residual representations are trivial locally as in §9.7. The source treats this case as a variant left to the reader. (Boxer–Calegari–Gee–Newton–Thorne, proof of Theorem 6.2.4, arXiv v3 pp. 66–67.)

*Needs:* §§9.5, 9.6, 9.7, 9.8, 9.9; ModularCurves §5C; ModularCurvesPartII §5.14; PotentialModularityAndCompatibleSystems §2.20; LocalGaloisDeformationRings §§6.8, 6.19.

This target uses the requirement `gap:twisted-modular-curve-over-number-fields` stated in the contract with ModularCurvesPartII, for the twisted curve over `F₄`, its universal curve and its mod-`p` monodromy.

*Proof sketch.* Use the twisted modular curve for the symplectic `r̄_{CM,𝔯}^∨`, whose determinant is `ε̄_r`: the level structure is `A[r] ≅ r̄_{CM,𝔯}^∨`, equivalently `H¹_ét(A, 𝔽_r) ≅ r̄_{CM,𝔯}`. Over `F₄` it is smooth and geometrically irreducible with a universal elliptic curve whose geometric mod-`p` monodromy is `SL₂(𝔽_p)`. After the finite local enlargements, every elliptic curve over `O_{F_{4,v}}` with supersingular (resp. ordinary) good reduction and trivial residual level structure gives a local point; local constancy (§9.5) gives open neighbourhoods, and the supersingular reduction connects to `ρ_{2,1,0}` by §9.6 and LocalGaloisDeformationRings §§6.8, 6.19 (matching residual inertia). Surjective specialization onto the actual arithmetic mod-`p` image, whose restriction to `G_{F₅(ζ_p)}` is `SL₂(𝔽_p)` by the determinant, gives the point.

**Checks.**

- `SU₂(𝔽_{p²}) ≅ SL₂(𝔽_p)`, so the image requirement is surjectivity onto `SL₂(𝔽_p)`.
- The level-`r` input uses the dual of the CM seed on `A[r]`: its determinant is `ε̄_r`, while `H¹` and the seed have determinant `ε̄_r⁻¹`; confusing them fails the Weil-pairing test.
- The existence of a supersingular point alone does not give the component comparison; the connection to `ρ_{2,1,0}` is the separate input.

### Examples

For `N = 401`, `n = 3`, `l = 5`, `l′ = 3209` and `F = ℚ(i)`: §9.1 needs `k(λ) ⊇ 𝔽_{25}` and the cube roots of `𝔽_{5^s}` inside `k(λ) = 𝔽_{5^{25}}`, which fails since `[k(λ) : 𝔽₅] = 25` is odd; §1.1 is used to choose a larger `N` whose order of `5` is divisible by `2` and by `3s`, after which `L`, `E` and `T_W` exist, and §9.3 produces a CM field `F′` and a Dwork fibre with residual representations `r̄` at `5` (after untwisting) and `r̄′` at `3209`.

### Dependencies

Layers 1, 5, 6, 7 and 8; ArithmeticGaloisDuality §R02.4.6; AbelianSchemesAndArithmeticModuli §§A6.30–A6.31; AlgebraicModuliForArithmeticGeometry §3.4; EtaleCohomologyFoundations §F.0.2; LefschetzPencilsAndVanishingCycles §2.4; LocalGaloisDeformationRings §§6.8, 6.19, 6.25; PadicHodgeTheory §§3.3, 6.4; ModularCurves §5C; ModularCurvesPartII §5.14; Chebotarev Layer 10; GlobalNumberFields Layers 9–10; PotentialModularityAndCompatibleSystems §§1.4, 1.9, 1.11, 1.21, 2.14, 2.15, 2.17, 2.18, 2.20, 3.1.

## Downstream consumers

- PotentialAutomorphyInfrastructurePartII: its potential ordinary automorphy of symplectic residual representations over totally real fields (the Dwork-family step of Barnet-Lamb–Gee–Geraghty–Taylor, Theorem 3.1.2) consumes §1.1, §5.12 and §9.4 for the choice of `N`, the symplectic torsors and the point with `v(t) < 0` above `lᵢ` and `Σ` and `v(t) > 0` above `l′`, and §§7.4, 7.8, 7.10 for the Hodge–Tate, ordinary and Steinberg properties.
- ModularityAndLanglandsExtensions, Layer 2: the Dwork realizations, semistable models and ordinary fibres of its §§2.9–2.12 are Layers 2, 7 and 8 here; its Qian-type residual potential automorphy and transport (§§2.19, 2.20, 2.47, 2.50, 2.51) consume §§7.10, 8.5 (part (3) for subquotients and semisimplification) and 9.3; its use of the self-dual Dwork point consumes §9.4; its `p`–`r` switch (§2.24) consumes §§9.8–9.11.
- KloostermanSheavesAndBesselIsocrystals: its normalised hypergeometric objects consume the hypergeometric sheaves of §§3.1–3.3.

## Worked examples

**The Hesse pencil (`N = 3`).** `X₁³ + X₂³ + X₃³ = 3tX₁X₂X₃` is smooth for `t³ ≠ 1` (§1.2); `H₀ ≅ μ₃` acts by translations, trivially on `H¹`, so the only nonzero eigensheaf is the trivial one, of rank two (§2.3), with `B = {1, 2}` for the zero-shaped vector `(0, 0, 0)` (§2.7). The Fermat fibre splits into the lines `(1, 1, 1)` and `(2, 2, 2)` of Hodge degrees `0` and `1` (§2.1), the monodromy around `t = 1` is a transvection with three vanishing cycles (§4.3), and near `t = ∞` the fibres degenerate to the triangle `X₁X₂X₃ = 0` with multiplicative reduction (§8.1). This boundary case is excluded from the self-dual family by `N > n + 1`.

**Qian's datum `N = 401`, `n = 3`.** `a = (1, 2, 4, 5, …, 397, 398, 0, 0, 0, 0)`, omitting exactly `3, 399, 400`, has index set `B = {1, 2, 398}` with trivial stabiliser (§§1.4–1.5). The monodromy at zero has eigenvalues `ζ, ζ², ζ^{398}` (§4.2), at infinity a single unipotent block (§4.6), and the companion model is `γ∞ ↦ C((X − 1)³)` with columns `e₂, e₃, (1, −3, 3)ᵀ` (§4.5). For `l = 5` (order `25`) the residual monodromy is `SL₃(𝔽_{5^{25}})` (§§5.1, 5.5); for `l = 3` (order `400`) it is `SU₃(𝔽_{3^{400}})` over `𝔽_{3^{200}}` (§§5.3, 5.8). The Hodge–Tate weights of `W_{t,λ}` are `{0, 1, 2}` (§7.6), `Ψ` has weight `397` (§7.5), and `det(Frob_v | V_{λ,0}) = q^{3·396/2}(g(v,1)g(v,2)g(v,398))³` (§6.2).

**The self-dual datum `N = 5`, `n = 2`.** `a = (1, 0, 0, 0, 4)`, `B = {2, 3} = −B` (§1.4). The real form `V_λ(1)` has rank two with an alternating pairing (§2.5), Hodge–Tate weights `{0, 1}` (§7.4), monodromy `[[0, −1], [1, 2]]` at infinity (§4.6) and full residual monodromy `SL₂(k(λ))` (§5.6); near `t = 0` and for `l ≡ 1 (mod 5)` it is ordinary of weight `0` (§7.8), and at places with `v(t) < 0` away from `l` it is Steinberg (§7.10), like an elliptic curve.

## References

- [Qian] Lie Qian, *Potential automorphy for `GL_n`*, Invent. Math. 231 (2023), 1239–1275, [doi:10.1007/s00222-022-01161-6](https://doi.org/10.1007/s00222-022-01161-6); cited in the numbering of [arXiv:2104.09761v1](https://arxiv.org/abs/2104.09761v1), whose Lemmas 3.6, 3.8–3.10 and Proposition 3.7 are the published Lemmas 3.7, 3.9–3.11 and Proposition 3.8.
- [Qian, Dwork ordinarity] Lie Qian, *Ordinarity of local Galois representation arising from Dwork motives*, [arXiv:2103.00106v1](https://arxiv.org/abs/2103.00106v1).
- [BLGHT] Thomas Barnet-Lamb, David Geraghty, Michael Harris, Richard Taylor, *A family of Calabi–Yau varieties and potential automorphy II*, Publ. Res. Inst. Math. Sci. 47 (2011), 29–98; [author copy](https://virtualmath1.stanford.edu/~rltaylor/cy2fin.pdf), author pagination.
- [BLGGT] Thomas Barnet-Lamb, Toby Gee, David Geraghty, Richard Taylor, *Potential automorphy and change of weight*, Ann. of Math. 179 (2014), 501–609; [arXiv:1010.2561v4](https://arxiv.org/abs/1010.2561v4).
- [BCGNT] George Boxer, Frank Calegari, Toby Gee, James Newton, Jack A. Thorne, *The Ramanujan and Sato–Tate conjectures for Bianchi modular forms*, Forum Math. Pi 13 (2025), e10, [doi:10.1017/fmp.2024.29](https://doi.org/10.1017/fmp.2024.29); [arXiv:2309.15880v3](https://arxiv.org/abs/2309.15880v3), author pagination.
- [Katz, Dwork family] Nicholas M. Katz, *Another look at the Dwork family*, in *Algebra, Arithmetic, and Geometry* II, Progr. Math. 270, Birkhäuser 2009, 89–126; [author copy](https://web.math.princeton.edu/~nmk/dworkfamilyfinal.pdf).
- [Katz, ESDE] Nicholas M. Katz, *Exponential sums and differential equations*, Annals of Mathematics Studies 124, Princeton University Press 1990, [doi:10.1515/9781400882434](https://doi.org/10.1515/9781400882434); Chapter 8, Theorems 8.4.2 and 8.12.2.
- [DK] Vladimir Drinfeld, Kiran S. Kedlaya, *Slopes of indecomposable F-isocrystals*, Pure Appl. Math. Q. 13 (2017); [arXiv:1604.00660v11](https://arxiv.org/abs/1604.00660v11).
- [Deligne] Pierre Deligne (notes by J. S. Milne), *Hodge cycles on abelian varieties*, Chapter I of *Hodge cycles, motives, and Shimura varieties*, LNM 900 (1982); [updated chapter](https://www.jmilne.org/math/Documents/Deligne82.pdf), §7.
- [BH] Frits Beukers, Gert Heckman, *Monodromy for the hypergeometric function `ₙF_{n−1}`*, Invent. Math. 95 (1989), 325–354; [GDZ](https://gdz.sub.uni-goettingen.de/download/pdf/PPN356556735_0095/LOG_0022.pdf).
- [ZS] A. E. Zalesskii, V. N. Serezhkin, *Linear groups generated by transvections*, Math. USSR-Izv. 10 (1976), 25–46, [doi:10.1070/IM1976v010n01ABEH001676](https://doi.org/10.1070/IM1976v010n01ABEH001676).
- [Artin] Emil Artin, *The orders of the classical simple groups*, Comm. Pure Appl. Math. 8 (1955), 455–472, [doi:10.1002/cpa.3160080403](https://doi.org/10.1002/cpa.3160080403); Theorem 2.
- [Lewis] D. W. Lewis, *The isometry classification of Hermitian forms over division algebras*, Linear Algebra Appl. 43 (1982), 245–272, [doi:10.1016/0024-3795(82)90258-2](https://doi.org/10.1016/0024-3795(82)90258-2); §4.
- [Katz–Messing] Nicholas M. Katz, William Messing, *Some consequences of the Riemann hypothesis for varieties over finite fields*, Invent. Math. 23 (1974), 73–77, [doi:10.1007/BF01405203](https://doi.org/10.1007/BF01405203); Theorem 2.
- [Kisin] Mark Kisin, *Local constancy in p-adic families of Galois representations*, Math. Z. 230 (1999), 569–593, [doi:10.1007/PL00004706](https://doi.org/10.1007/PL00004706); Theorem 5.1.
- [Berger] Laurent Berger, *Représentations modulaires de `GL₂(ℚ_p)` et représentations galoisiennes de dimension 2*, Astérisque 330 (2010), 263–279; [Numdam](https://numdam.org/item/AST_2010__330__263_0.pdf).
- [ACC+] Patrick B. Allen, Frank Calegari, Ana Caraiani, Toby Gee, David Helm, Bao V. Le Hung, James Newton, Peter Scholze, Richard Taylor, Jack A. Thorne, *Potential automorphy over CM fields*, Ann. of Math. 197 (2023), 897–1113; [author copy](https://math.uchicago.edu/~fcale/papers/Ramanujan.pdf).
- [CEGS] Ana Caraiani, Matthew Emerton, Toby Gee, David Savitt, *Components of moduli stacks of two-dimensional Galois representations*; [author copy](https://www.ma.imperial.ac.uk/~tsg/Index_files/cegsC.pdf), §1.4.
- [A'Campo] Lambert A'Campo, *Dwork motives, monodromy and potential automorphy*, [arXiv:2407.16481v1](https://arxiv.org/abs/2407.16481v1).
