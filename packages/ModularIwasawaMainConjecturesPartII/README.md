# Roadmap: main conjectures for modular forms and their families, part II — CM forms at every prime

**Summary.** ModularIwasawaMainConjectures formulates Kato's cyclotomic main conjecture for a modular form (its §§0.6–0.7) and proves it in the ordinary, signed and family ranges where the automorphic reverse bounds apply. It stops before the forms with complex multiplication, where the residual image is dihedral and those bounds do not apply, and before the prime 2. This Part II proves the rational form of Kato's main conjecture for every CM newform of weight `k ≥ 2` at every prime `p`, including `p = 2` and `p = 3` (Burungale–Tian, Theorem 2.6). The route goes through the imaginary quadratic CM field `K`. Over the two-variable ray tower `K(p^∞f)` it builds the tower Iwasawa cohomology, the norm limits `h¹` of `p`-units and `h²` of class groups, Kato's CM theta functions and the elliptic units, Kato's CM realizations and his reciprocity law for elliptic units, and the elliptic-unit Euler system. With these it proves Johnson-Leung and Kings' main conjecture for every finite-order character at every prime and Rubin's two-variable main conjecture with its all-prime classical form. At a split prime it proves the Katz-measure form, its anticyclotomic `θ`-components and the λ-invariant identity used by Castella–Grossi–Lee–Skinner. It then proves the rational equivariant main conjecture over `ℤ_p[[Gal(K(p^∞f)/K)]] ⊗ ℚ`, with the Euler factors at the primes of `f` prime to `p` that its printed form omits. Finally it descends that equality to the cyclotomic tower over `ℚ` through Kato's comparison of elliptic units with Beilinson–Kato elements. The descent proves an equality, not just Kato's one-sided inequality.

## Scope and ownership

This roadmap owns the Iwasawa theory of elliptic units over imaginary quadratic fields at every prime and its CM-modular consequences:

- the arithmetic specialization of the completed group algebra to the CM ray group `Gal(K(p^∞f)/K)`, its normalization after inverting `p`, and the characteristic ideals over it (Layer 0);
- the tower modules `h¹`, `h²`, their Kummer and Brauer comparisons, the Euler-factor sequence for `H²` and the weak Leopoldt and rank-one statements for the ray tower (Layer 1);
- Kato's CM theta functions, canonical CM pairs, standard elliptic units, the elliptic-unit module and its cotorsion (Layer 2);
- Kato's realizations `V(ψ)`, `S(ψ)` of a Hecke character of type `(−r, 0)` for every `r ≥ 1`, and his explicit reciprocity law for elliptic units (Layer 3);
- the elliptic-unit Euler system, the Tamagawa number conjecture at `s = 0` for abelian extensions of `K`, Rubin's Euler-system bound, Johnson-Leung–Kings' main conjecture and Rubin's Theorem 4.1 (Layer 4);
- the split-prime two-variable Coleman map, the elliptic-unit/Katz identification, the Katz form of the main conjecture, the anticyclotomic `θ`-component theorem and the functional-equation λ-identity (Layer 5);
- the rational equivariant main conjecture with its Euler factors (Layer 6);
- the general-weight CM induction, Kato's CM comparison map, the descent lemmas including the contained case `K ⊂ ℚ(μ_{p^∞})`, Kato's length lemma and his lattice inequality (Layer 7);
- the archimedean normalization of the induction, the reciprocity law in `V(f)`-coefficients, the bridge from elliptic units to Beilinson–Kato elements, the equality descent and the endpoint (Layer 8).

It leaves the following to their owners, by section:

- The formulation of Kato's main conjecture, the modular Iwasawa datum and Kato's Iwasawa cohomology `H^i(T)` over `ℤ[ζ_{p^n}, 1/p]` are ModularIwasawaMainConjectures §§0.1, 0.6 and 0.7. The endpoint here is the rational form `KMC_ℚ` of §0.7 for CM forms; it is not a second definition.
- Kato's zeta morphism `γ ↦ z_γ(f)` and the zeta submodule `Z(f)` are KatoEulerSystems §5.1, their critical interpolation is KatoEulerSystems §5.3, the nonvanishing of twisted critical values (Jacquet–Shalika on the edge, Rohrlich's finiteness at the centre) is KatoEulerSystems §4.2, and the all-prime rational module structure of `H¹`, `H²` (Kato's Theorem 12.4, CM forms included) is KatoEulerSystems §4.4. The rational Euler-system inequality of Kato's Theorem 12.5(3) for every newform, CM forms included, is PadicFamilies §4.0.3 and KatoEulerSystems §7.2; this roadmap proves the reverse inequality for CM forms, hence the equality, and does not restate the one-sided bound.
- The normalized theta unit `cθ` attached to an integer `c` prime to 6 and its distribution and isogeny laws are PadicFamilies §4.0.1. The ideal-indexed CM refinement `aθ_E` of Layer 2 differs in its index: it is attached to an ideal `a` of `O_K` and its norm law is along `O_K`-linear isogenies of degree prime to `N(a)`.
- The generalized Eisenstein–Kronecker series and their meromorphic continuation are AutomorphicPadicLFunctionsPartII §§3.3–3.4. Katz's two-variable `p`-adic measure on `Gal(K(p^∞f)/K)` at an ordinary prime is AutomorphicPadicLFunctionsPartII §8.5. The functional equation of Katz's measure is stated here (§5.5) because no supplier states it.
- Iwasawa algebras of `ℤ_p^d × Δ`, twists `Tw_κ`, Iwasawa cohomology for a profinite group, Shapiro, descent and control are SelmerIwasawaCohomology §§3.0–3.3 and 3.7. The S-unit Kummer identification is SelmerIwasawaCohomology §0.9. The étale and Galois comparison in Kato's `j_*` convention is SelmerIwasawaCohomology §3.15. The local cofreeness at `p` for the CGLS characters is SelmerIwasawaCohomology §3.17.
- Characteristic ideals, pseudo-null modules and determinants are PadicMeasuresIwasawaAlgebras §§4.1, 4.6 and 5.1.
- Euler systems and their twists are EulerSystemsAndKolyvaginSystems §§2.2 and 2.5. Rubin's Iwasawa-theoretic theorems over `ℤ_p^d`-extensions (hypotheses, weak Leopoldt from an Euler system, divisibility) are EulerSystemsAndKolyvaginSystems §§8.1–8.2, 8.6, 8.14, 8.25 and 8.37.
- CM ideal actions, CM period pairings, ray-level fields and CM Hecke characters with their Tate components are ComplexMultiplicationAndExplicitReciprocity §§1.1, 1.3, 2.2, 3.2, 4.1 and 4.2.
- The inert anticyclotomic main conjecture of Burungale–Kobayashi–Ota (their Theorems 6.1–6.2), with Rubin's signed `p`-adic L-function, the signed Selmer groups and their control, is InertAnticyclotomicCMMainConjecture. Nothing here is consumed from it, and nothing of it is restated here.

The vanishing of the μ-invariant of anticyclotomic Katz `p`-adic L-functions (Hida), which Castella–Grossi–Lee–Skinner combine with §5.4, is not a theorem of this roadmap; §5.4 asserts the characteristic-ideal and λ statements only. The Kato equality at a prime containing `p`, the integral equivariant (`Ω`-) form of the imaginary quadratic main conjecture at singular primes, and the integral refinement of Theorem 2.6 (Burungale–Tian, Remark 2.7) are not theorems of this roadmap. The first two need Johnson-Leung and Kings' μ-hypothesis (their Conjecture 5.5), known only for split `p ∤ 6`. The rational statements here make no claim about them.

## Conventions

- `K` is an imaginary quadratic field with a fixed embedding `K ⊂ ℂ`, `O_K` its integers, `w_K = #O_K^×` and `h_K` its class number. For a nonzero ideal `a`, `K(a)` is the ray class field of modulus `a` inside `K^ab ⊂ ℂ`. The Artin symbol `σ_a = (a, K(a′)/K)` is normalized so that a prime goes to its arithmetic Frobenius (ClassFieldTheory §2.6). `N(a) = #O_K/a`.
- `p` is any prime, `p = 2` and `p = 3` included. `f` is a nonzero ideal, `K(p^∞f) = ⋃_n K(p^n f)`, and `G = G_{p∞f} = Gal(K(p^∞f)/K)` is a profinite abelian group. Its torsion subgroup `Δ = Δ_f` is finite of any order, possibly divisible by `p`. `Γ ≅ ℤ_p²` is a chosen complement mapping isomorphically onto the Galois group of the `ℤ_p²`-extension of `K`.
- `O` is the ring of integers of a finite extension of `ℚ_p`. `R_O = O[[G]]` is `TauCeti.completedGroupAlgebra` at `(O, G)`, and `R = ℤ_p[[G]]`. Galois groups act on Iwasawa modules on the left. Twists are `Tw_χ(g) = χ(g)·g` (SelmerIwasawaCohomology §3.0). With a chosen basis `t_χ` of a character line, `x ↦ x ⊗ t_χ` is `Tw_{χ⁻¹}`-semilinear: `φ(g·x) = χ(g)⁻¹·g·φ(x)`.
- A height-one prime `q` of `R_O` is *regular* if `p ∉ q` and *singular* if `p ∈ q`. For a finitely generated torsion `R_O[1/p]`-module `M`, `ξ(M)` is the invertible ideal `∏_q q^{length M_q}` over the height-one primes, formed componentwise on the normalization (§0.2).
- A Hecke character `ψ` of `K` has *infinity type* `(m, n)` when its archimedean component on `ℂ^×` is `z ↦ z^m z̄^n`. A CM newform of weight `k` corresponds to a character of type `(1 − k, 0)`; Kato's realization uses `r = k − 1` and type `(−r, 0)`. `ψ̄` is the complex conjugate character, so `ψψ̄ = N^r` on ideals prime to the conductor.
- `L_S(ψ̄, χ, s) = Σ_b ψ̄(b)χ(b)N(b)^{−s}` over integral ideals `b` prime to `S`, with `χ(b) = χ(σ_b)`.
- `V_{F_λ}(f)` is Kato's cohomological realization of a newform `f` (Kato, 8.3). It is the dual of the covariant representation, and geometric Frobenius at a good prime `ℓ` has characteristic polynomial `X² − a_ℓX + ε(ℓ)ℓ^{k−1}`. Étale cohomology of `O_{K′}[1/p]` with coefficients `T` means cohomology of `j_*T` along the generic point (Kato, 8.2): neither extension by zero nor unrestricted cohomology of a larger open set.
- `G_∞ = Gal(ℚ(μ_{p^∞})/ℚ) ≅ ℤ_p^×`, including its torsion (`ℤ/(p − 1)` for odd `p`, `ℤ/2` for `p = 2`). `Λ = O_λ[[G_∞]]` and `Λ_ℚ = Λ[1/p]`.
- The dual exponential is Kato's (PadicHodgeRegulators §1.4). Periods `per_ψ`, `per_f` are Kato's (15.8 and 6.3).

## Exact supplier contracts

### From Mathlib

- `ClassGroup` of `O_{K′}` gives the ideal class groups whose `p`-primary parts form `h²`.
- `Module.length`, `IsLocalization.AtPrime` and `Ideal.height` give the height-one lengths in `ξ` and in Kato's length lemma. `Module.length` is the Krull dimension of the submodule lattice; it is `⊤` for a module of infinite length.
- `NumberField.Units.regulator` and `NumberField.Units.regulator_ne_zero` give the injectivity of the archimedean regulator on units modulo torsion, used in the cotorsion of elliptic units. `NumberField.Units.torsion` is the group of roots of unity.
- `NumberField.IsTotallyComplex` gives the absence of real places, which removes the dyadic real-place terms at `p = 2`.
- `IsCyclotomicExtension` and `cyclotomicCharacter` give the cyclotomic fields and the character whose kernel is the auxiliary ideal of §2.6.
- `PowerSeries` and `MvPowerSeries` give the coordinate rings of `O[[Γ]]`.

### From Tau Ceti

- `TauCeti.completedGroupAlgebra` with its projections, `map`, `lift` and topology is the ring `R_O` (SelmerIwasawaCohomology §3.0 specifies its coordinates and twists).
- `TauCeti.GlobalNumberFields.Modulus`, `TauCeti.GlobalNumberFields.RayClassGroup` and `TauCeti.GlobalNumberFields.HeckeCharacter` are the ray class groups and Hecke characters. The ray class fields themselves come from ClassFieldTheory Layer 13.
- `HeckeRing.GL2.Newform` is the newform carrier.

### From TauCetiRoadmap.GlobalNumberFields, ClassFieldTheory and ProfiniteProPGroups

GlobalNumberFields Layers 2 (moduli and ray class carriers), 9 (Hecke and ray class characters) and 10 (infinity types) supply moduli, characters and infinity types. ClassFieldTheory Layer 10 supplies the Brauer sequence and the sum of local invariants, Layer 11 global Artin reciprocity and Layer 13 ray class fields with their Artin isomorphisms. ProfiniteProPGroups ("Layer 9 prerequisites: two owned inputs") specifies the completed group algebra.

### From TauCetiRoadmap.ModularForms, EllipticCurves and ModularCurves

ModularForms Layers 4–5 and 9 supply newforms, strong multiplicity one and the self-twist invariant, and Layer 7 their L-functions. EllipticCurves Layers 1–2 supply isogenies, formal groups, torsion and Tate modules. ModularCurves Layer 0 (relative effective Cartier divisors) and Layer 2 (isogenies and multiplication maps) supply the divisors and isogeny norms used for `aθ_E`.

### From TauCetiRoadmap.PadicMeasuresIwasawaAlgebras

§4.1 supplies pseudo-null modules and pseudo-isomorphisms. §4.6 supplies `charIdeal` over a noetherian normal factorial domain, multiplicative in short exact sequences and invariant under pseudo-isomorphism. §5.1 supplies determinant lines of perfect complexes. Characteristic ideals over `R_O[1/p]` are formed on each normal factor by §4.6.

### From SelmerIwasawaCohomology

§0.9 (Kummer identification for S-units) and §0.10 (inverse-limit hypotheses); §3.0 (Iwasawa algebras of `ℤ_p^d × Δ`, the involution and twists `Tw_κ`); §3.1 (Iwasawa cohomology `H^i_Iw(G, H; M)` for a profinite group with closed normal `H`, its corestriction-limit description under condition (F), and `H⁰_Iw = 0`); §3.2 (Shapiro); §3.3 (descent and control); §3.7 (twisting); §3.15 (étale cohomology of `Spec O_{F,S}` and the `j_*` comparison in degree one); §3.17 (local cofreeness at `p` and the away-`p` Euler factor for the CGLS characters); §2.8 (Greenberg's local condition). Its §3.13 rank formula is stated for the cyclotomic `ℤ_p`-extension and odd `p`. The ray-tower rank statement of §1.7 is proved here from the finite-level Euler characteristic and is not taken from §3.13.

### From ArithmeticGaloisDuality

§R02.4.3 (Poitou–Tate), §R02.4.4 (finiteness, cohomological dimension and Tate's global Euler characteristic formula) and §D7.5 (compact support and derived global duality).

### From IntegralIwasawaTheory

§2.6 (weak Leopoldt in every cyclotomic tower) and §10.0 (compact coefficients, Shapiro and mapping fibres).

### From EulerSystemsAndKolyvaginSystems

§2.2 (the module of Euler systems), §2.5 (twisting Euler systems by characters of finite order), §8.1 (`ℤ_p^d`-extensions in which no finite prime splits completely), §8.2 (Rubin's hypotheses `Hyp(K_∞, T)`), §8.6 (`Hyp(K_∞/K)`), §8.7 (the `Λ`-adic index of divisibility), §8.14 (invariance under twisting), §8.25 (weak Leopoldt from an Euler system, Rubin II.3.2) and §8.37 (Rubin's divisibility `char(X_∞) | ind_Λ(c)`, Rubin II.3.3).

### From ComplexMultiplicationAndExplicitReciprocity

§1.1 (lattice curves and the ideal action `[a] ⋆ E_I = E_{a⁻¹I}` with the isogeny `φ_a` of degree `N(a)`), §1.3 (CM period and de Rham pairings), §2.2 (the idele–torsion dictionary), §3.2 (ray-level value fields), §4.1 (the CM Hecke character `ψ_A` and the one-dimensional CM components of the Tate module) and §4.2 (the full elliptic CM L-factorization and the weight-two CM induction comparison).

### From AutomorphicGaloisRepresentations and AutomorphicGaloisRepresentationsPartII

AutomorphicGaloisRepresentations §1.5 (rank-two newform realization) and §7.3 (the fixed-eigenform compatible family) supply `V_{F_λ}(f)` and its Frobenius polynomials. AutomorphicGaloisRepresentationsPartII AG2.0 supplies the `λ`-adic Galois characters of algebraic Hecke characters.

### From AutomorphicLFunctionsAndLocalFactors and LFunctions

AutomorphicLFunctionsAndLocalFactors AL.1 ("Global distributions and completed Euler products" and "Rank-one specialisation and Hecke comparison") supplies the completed Hecke L-functions and their functional equation. LFunctions Layer 7 (intrinsic nonvanishing) supplies that a nontrivial primitive finite-order Hecke L-function has no zero on `Re s = 1`.

### From PadicHodgeRegulators

§1.4 (Kato's dual exponential) and §1.7 (twists, restriction and corestriction for the Bloch–Kato maps).

What PadicHodgeRegulators must provide (gap:height-one-explicit-reciprocity): Kato's generalized explicit reciprocity law in relative height one. Take a finite extension `F` of `ℚ_p` and a `p`-divisible group `G` over `O_F` with an action of the integers `O_𝔭` of a finite extension of `ℚ_p`, of relative `O_𝔭`-height one. For a norm-compatible system of units in the tower `F(G[𝔭^n])`, the law gives the dual exponential of the cup product of its Kummer class with a power of the Tate-module basis, as the value at the torsion points of the logarithmic derivatives of the Coleman power series (Kato, proof of Proposition 15.9, pp. 258–259, where it is applied with `h = 1`).

### From AutomorphicPadicLFunctionsPartII

§§3.3–3.4 supply the Eisenstein–Kronecker series `K^ν(H, z, w, s, Λ)` with their continuation and residues. In dimension one with `w = 0`, `(z + λ)^{−k}|z + λ|^{−s} = conj(z + λ)^k·|z + λ|^{−2k−s}`, so Kato's `E(k, τ, z, s)` is that series with `ν = k` at the variable `k + s/2`. §8.5 supplies the bounded measure `μ_f` on `Gal(K(p^∞f)/K)` interpolating critical Hecke values for an ordinary lifted type. For `K` imaginary quadratic and `p = v v̄` split this is Katz's two-variable measure.

### From PadicFamilies

§4.0.1 supplies the normalized theta unit `cθ` (divisor `c²[0] − [c]⁎[0]`, distribution law, isogeny norm, Tate expansion). §4.0.3 supplies the rational cyclotomic Euler-system inequality for every eigenform, the CM case included.

### From KatoEulerSystems

§4.2 (nonvanishing of twisted critical values), §4.4 (all-prime rational module structure: `H²(V)` is `Λ_ℚ`-torsion and `H¹(V)` is `Λ_ℚ`-free of rank one, CM forms included, with the contained case 15.14), §5.1 (the rational zeta morphism `γ ↦ z_γ(f)`, its conjugation law `z_{ιγ} = −σ_{−1}z_γ`, and `Z(f)` as the `Λ_ℚ`-span of its values), §5.3 (critical interpolation `Σ_σ χ(σ) per_f(ω_{γ,r,n}^σ)^± = (2πi)^{k−r−1}L_{{p}}(f*, χ, r)γ^±`) and §7.2 (the cohomological upper bound).

### From ModularIwasawaMainConjectures

§0.1 (the modular Iwasawa datum), §0.6 (`H^i(T_K) = lim_n H^i_ét(ℤ[ζ_{p^n}, 1/p], j_*T_K)`) and §0.7 (`KMC^η` and its rational form `KMC_ℚ`, comparing `char(H¹/Z(f))` and `char(H²)` in `Λ[1/p]`).

## How to read the build

Layer 0 fixes the CM ray group, its Iwasawa algebra, the regular/singular dichotomy and `ξ`. Layer 1 builds the tower cohomology and the modules `h¹`, `h²`, and proves their comparisons and module structure, keeping the Euler terms at primes of `f` prime to `p`. Layer 2 constructs elliptic units and the module `z`, and proves Kronecker's limit formula and cotorsion. Layer 3 constructs Kato's CM realizations and proves his reciprocity law. Layer 4 proves the integral character-wise main conjecture of Johnson-Leung and Kings at every prime, and Rubin's theorem. Layer 5 treats split primes through Coleman maps and Katz's measure; it is used by no later layer. Layer 6 assembles the regular-prime lengths into the rational equivariant main conjecture. Layer 7 relates the CM newform to its Hecke character and descends from the ray tower to the cyclotomic tower over `ℚ`. Layer 8 proves that elliptic units become Beilinson–Kato elements and deduces Kato's equality. Layers 7–8 use Layers 2–4 and 6, not Layer 5.

## Layer 0: the CM ray tower and its Iwasawa algebra

### 0.1 The ray group and its algebra

Define the *CM ray group* of `(K, p, f)` as `G = Gal(K(p^∞f)/K)` with its profinite topology. Through the global Artin map it is `lim_n RayClassGroup(p^n f)` (ClassFieldTheory Layer 13, GlobalNumberFields Layer 2). Define its Iwasawa algebra as `R_O = TauCeti.completedGroupAlgebra O G`. Prove that the torsion subgroup `Δ` of `G` is finite. Prove that `G/Δ ≅ ℤ_p²` maps isomorphically onto the Galois group of the `ℤ_p²`-extension of `K`: the unit rank of `K` is zero, so there is no Leopoldt defect, and the `ℤ_p`-rank is `r₂ + 1 = 2`. Prove that a chosen complement gives `R_O ≅ O[Δ][[S, T]]`, a three-dimensional semilocal ring (Burungale–Tian, §2.1.1, p. 3, BT line 136; Kato, 15.1, p. 250; Johnson-Leung–Kings, §4.1, p. 19). *Needs:* ClassFieldTheory Layer 13; GlobalNumberFields Layer 2; SelmerIwasawaCohomology §3.0; ProfiniteProPGroups, Layer 9 prerequisites.

- For `f ∣ f′` restriction `G_{p∞f′} → G_{p∞f}` is onto and induces a surjection of Iwasawa algebras, compatible with composition and the identity.
- Restriction to `K(μ_{p^∞})` induces `R_O → O[[G_∞]]`. It is onto when `K ⊄ ℚ(μ_{p^∞})`. When `K ⊂ ℚ(μ_{p^∞})` it is onto `O[[G′_∞]]` with `G′_∞ = Gal(ℚ(μ_{p^∞})/K)`, of index two in `G_∞`.
- `R_O` is a domain exactly when `Δ` is trivial. It is always reduced, since it is torsion-free and embeds in `O[[Γ]] ⊗ Frac(O)[Δ]`. When `O` contains the values of the characters of `Δ`, it is a finite product of normal domains exactly when `p ∤ #Δ`.

**Checks.**

- For `K = ℚ(i)`, `p = 2`, `f = (1)`: `ℤ_2[i]^× = μ_4 × ℤ_2²` and the global units are `μ_4`, so `Δ` is trivial and `G ≅ ℤ_2²`. A model taking `Δ` to be the image of the global units would give `μ_4` instead.
- For `K = ℚ(i)`, `p = 5`, `f = (1)`: `5` splits, `(O_K ⊗ ℤ_5)^× = (μ_4 × ℤ_5)²`, and dividing by the diagonal `μ_4` gives `Δ ≅ ℤ/4`, prime to `5`.
- For `K = ℚ(i)`, `p = 2`, `f = (3)`: `(O_K/3)^× = 𝔽_9^×` is cyclic of order 8 and `i` has order 4 in it. The torsion of `(μ_4 × ℤ/8)` modulo the diagonal `μ_4` is cyclic of order 8, so `2 ∣ #Δ` and `ℤ_2[[G]]` is not a product of normal domains. A definition assuming `p ∤ #Δ` excludes this case.
- The restriction to the cyclotomic tower is onto `G_∞` for `K = ℚ(i)`, `p = 5`. For `K = ℚ(i)`, `p = 2` its image is `Gal(ℚ(μ_{2^∞})/ℚ(i)) ≅ 1 + 4ℤ_2`, of index two.

### 0.2 Normalization, regular primes and characteristic ideals

Assume that `O` contains the values of the characters of `Δ`. Prove that `O[Δ] ⊂ ∏_{χ ∈ Δ^} O` has cokernel killed by `#Δ`. Hence `R_O → ∏_χ O[[Γ]](χ)` is the normalization of `R_O` in its total quotient ring, and it becomes an isomorphism after inverting `p`. Prove that at a regular height-one prime `q` the localization `(R_O)_q` is a discrete valuation ring and equals the localization of one factor `O[[Γ]](χ)` (Johnson-Leung–Kings, Lemma 7.2, p. 34, and Lemma 7.6 with Definition 7.5, p. 35, JLK line 1477). Define `ξ(M)` for a finitely generated torsion `R_O[1/p]`-module as the product, over the factors, of the characteristic ideals of PadicMeasuresIwasawaAlgebras §4.6 of the components of `M[1/p]` (Burungale–Tian, §2.1.1, p. 3, BT line 146). *Needs:* §0.1; PadicMeasuresIwasawaAlgebras §§4.1, 4.6; Mathlib `Ideal.height`, `IsLocalization.AtPrime`, `Module.length`.

- `ξ` is multiplicative in short exact sequences of torsion `R_O[1/p]`-modules.
- `ξ(M) = ξ(N)` if and only if `length M_q = length N_q` at every height-one prime `q` of `R_O[1/p]`.
- `ξ(M)` is the unit ideal exactly when `M` is pseudo-null over `R_O[1/p]`.
- Extension of scalars `O → O′` is faithfully flat and multiplies `ξ` compatibly.

**Checks.**

- Over `ℤ_p[[T]]`, `ξ` of `ℤ_p[[T]]/(p)` is the unit ideal after inverting `p`, while its integral characteristic ideal is `(p)`. A definition that does not invert `p` makes the rational equality of Layer 6 false on such modules.
- For `Δ = ℤ/2` and `p = 2`, `ℤ_2[Δ] = ℤ_2[x]/(x² − 1)` has `(x − 1, 2)` as its unique maximal ideal and is not a product of domains, while `ℤ_2[Δ][1/2] ≅ ℚ_2 × ℚ_2`. The normalization statement holds only after inverting `p`.
- `ℤ_p[[T]]/(T²)` and `ℤ_p[[T]]/(T) ⊕ ℤ_p[[T]]/(T)` have the same `ξ`, namely `(T²)`, though they are not isomorphic: `ξ` records lengths, not modules.

### Examples

For `K = ℚ(√−7)` and `p = 7`, `K ⊂ ℚ(μ_7)` and the cyclotomic quotient of §0.1 has image of index two. For `K = ℚ(√−7)` and `p = 5`, the quotient is onto.

### Dependencies

ClassFieldTheory Layer 13; GlobalNumberFields Layer 2; ProfiniteProPGroups, Layer 9 prerequisites; SelmerIwasawaCohomology §3.0; PadicMeasuresIwasawaAlgebras §§4.1, 4.6; Mathlib `Ideal.height`, `IsLocalization.AtPrime`, `Module.length`.

## Layer 1: tower cohomology, units and classes

### 1.1 Iwasawa cohomology of the ray tower

For a finitely generated `O`-module `T` with continuous `Gal(K̄/K)`-action, unramified outside a finite set, define `H^q_{p∞f}(T) = lim_{K′} H^q_ét(O_{K′}[1/p], j_*T)`. The limit runs over finite `K ⊂ K′ ⊂ K(p^∞f)` along corestriction, with `j` the inclusion of the open set over which `T` is lisse. Define `H^q(O_K[1/pf], ·)` likewise over `O_{K′}[1/pf]`. Prove that each `H^q_{p∞f}(T)` is a finitely generated `R_O`-module and vanishes for `q ∉ {1, 2}`. Degree zero vanishes because corestriction kills invariants in the limit; degrees at least three vanish because `K` has no real place, so the cohomological dimension is two (Kato, 15.6, p. 253, and 8.2, pp. 180–181). For a continuous character `χ : G → O^×` with chosen basis `t_χ`, prove that `x ↦ x ⊗ t_χ` is a `Tw_{χ⁻¹}`-semilinear isomorphism `H^q_{p∞f}(T) ≅ H^q_{p∞f}(T(χ))` (Johnson-Leung–Kings, Lemma 4.7, p. 22, JLK line 935). Perfectness of the underlying complexes is asserted only for `RΓ(O_K[1/p], Λ(η)(1))` with `η` of finite order and for `RΓ(O_K[1/pf], Ω(1))` (Johnson-Leung–Kings, Lemma 4.3, p. 20, JLK line 861). *Needs:* SelmerIwasawaCohomology §§3.1, 3.2, 3.7, 3.15; ArithmeticGaloisDuality §§R02.4.4, D7.5; §0.1; Mathlib `NumberField.IsTotallyComplex`.

- A continuous homomorphism of coefficient modules induces `R_O`-linear maps, compatible with composition and with finite-level corestriction.
- The degree-one limit agrees with SelmerIwasawaCohomology §3.1's corestriction limit of Galois cohomology of `G_{K′,S}` for `S` the places above `p` and the ramification of `T`, through the degree-one `j_*` comparison of SelmerIwasawaCohomology §3.15.
- The twist by the trivial character is the identity, and twisting by `χ₁` and then `χ₂` is twisting by `χ₁χ₂`.

**Checks.**

- `H⁰_{p∞f}(ℤ_p(1)) = 0`: finite-level invariants are `μ_{p^∞}(K′)`, and corestriction along a `ℤ_p`-direction raises a fixed finite group to arbitrarily large `p`-th powers. With restriction maps instead the limit would be `ℚ_p/ℤ_p`-like, so the transition maps are part of the definition.
- With `f` divisible by a prime `𝔩 ∤ p`, `H²` over `O[1/p]` and over `O[1/pf]` differ by the nonzero module of §1.5. The `j_*` convention is not the unrestricted cohomology of the larger open set.
- For `T = ℤ_p(1) ⊗ O(χ)` with `χ(g) = −1` for some `g`, the semilinearity is `φ(g·x) = −g·φ(x)`. The opposite convention `φ(g·x) = χ(g)·g·φ(x)` would agree only for characters of order dividing two.

### 1.2 The tower unit and class modules

Define `h¹ = lim_{K′}(O_{K′}[1/p]^× ⊗ ℤ_p)` and `h² = lim_{K′} ClassGroup(O_{K′})[p^∞]`, the limits along field norms and norms of ideals over finite `K ⊂ K′ ⊂ K(p^∞f)`, with `G` acting through its finite quotients. Inside `h¹` define the submodule `E_∞` of norm-compatible global units (Burungale–Tian, §2.1.1, p. 3, BT lines 138–140; Kato, 15.1, p. 251; Johnson-Leung–Kings, §5.4, p. 26). *Needs:* §0.1; Mathlib `ClassGroup`; SelmerIwasawaCohomology §0.10; IntegralIwasawaTheory §10.0.

- Each projection `h¹ → O_{K′}[1/p]^× ⊗ ℤ_p`, `h² → Cl(K′)[p^∞]` is `R`-linear. For `K′ ⊂ K″` the projection to `K′` is the norm composed with the projection to `K″`.
- A norm-compatible family of `p`-completed `p`-units, respectively of `p`-primary ideal classes, defines a unique element, and two elements agree when all projections agree.
- For `f ∣ f′` the norm maps `h^i(f′) → h^i(f)` are compatible with `R(f′) → R(f)`.
- `E_∞ ⊂ h¹` is the kernel of the valuation maps at the finitely many places above `p` (Johnson-Leung–Kings, proof of Theorem 3.9, p. 18).

**Checks.**

- If every layer has trivial `p`-primary class group then `h² = 0`. For `K = ℚ(i)` and `p = 2` this holds at the first layer, `Cl(ℚ(i)) = 1`, and gives `h²` as the limit of the higher layers only.
- The norm limit of `μ_{p^∞}(K(p^n f))` is zero (the computation of the first check of §1.1). A definition by restriction instead of norm would retain it.
- At the base layer `K′ = K = ℚ(i)` with `p = 5`, `O_K[1/5]^× ⊗ ℤ_5 ≅ ℤ_5²`, generated by `2 + i` and `2 − i`, while `O_K^× ⊗ ℤ_5 = μ_4 ⊗ ℤ_5 = 0`. A definition through global units instead of `p`-units would lose this rank.

### 1.3 Kummer identification of the unit module

Prove that the finite-level Kummer isomorphisms `O_{K′}[1/p]^× ⊗ ℤ_p ≅ H¹(O_{K′}[1/p], ℤ_p(1))`, built with the fixed compatible system of `p`-power roots of unity, commute with norm and corestriction. Prove that they give an `R`-isomorphism `h¹ ≅ H¹_{p∞f}(ℤ_p(1))` compatible with the projections (Kato, (15.6.1), p. 253; Johnson-Leung–Kings, Lemma 5.8, p. 27, JLK line 1117). *Needs:* SelmerIwasawaCohomology §§0.9, 0.10; §§1.1, 1.2.

### 1.4 Class groups and degree-two cohomology

Construct an `R`-linear map `h² → H²_{p∞f}(ℤ_p(1))` whose kernel and cokernel are finitely generated `ℤ_p`-modules, hence pseudo-null over `R`. Consequently `(h²)_q ≅ H²_{p∞f}(ℤ_p(1))_q` at every height-one prime `q` (Kato, (15.6.2) and its proof, p. 254). At each layer the map comes from the Kummer sequence `0 → Pic(O_{K′}[1/p])[p^∞] → H²(O_{K′}[1/p], ℤ_p(1)) → T_p Br(O_{K′}[1/p]) → 0`. The last term is the kernel of the sum map `ℤ_p^Σ → ℤ_p` on the set `Σ` of places of `K′` above `p`, and `Cl(K′) → Pic(O_{K′}[1/p])` is onto with kernel generated by the classes of the primes in `Σ`. Retain both correction terms through the limit; they vanish only after localization at height one. *Needs:* ClassFieldTheory Layer 10; §§1.1–1.3; PadicMeasuresIwasawaAlgebras §4.1.

### 1.5 The Euler-factor sequence

Write `H^i_S = lim_{K′} H^i(O_{K′}[S⁻¹], ℤ_p(1))`. Prove that `H¹_p = H¹_{pf}` and that restriction gives an exact sequence of `R`-modules

```text
0 → H²_p → H²_{pf} → ⊕_{𝔩 ∣ f, 𝔩 ∤ p} ℤ_p[[G/D_𝔩]] → 0,
```

where `D_𝔩` is the decomposition group of `𝔩` in `G`, of `ℤ_p`-rank one. Each `ℤ_p[[G/D_𝔩]]` is torsion and not pseudo-null. After inverting `p` its localization vanishes at every height-one prime on a component where the inertia group `I_𝔩 ⊂ G` acts nontrivially. On a component where `I_𝔩` acts trivially it is the cyclic module defined by `1 − Frob_𝔩⁻¹` (Johnson-Leung–Kings, Lemma 4.3 and its proof, pp. 20–21, JLK line 861, for the localization triangle, purity and the determinant `(1 − η(𝔩)Frob_𝔩⁻¹)⁻¹`; the limit sequence is derived here). *Needs:* §§0.2, 1.1, 1.3; SelmerIwasawaCohomology §3.17; ArithmeticGaloisDuality §D7.5; PadicMeasuresIwasawaAlgebras §4.1.

The route: at each layer, the localization triangle for `Spec O_{K′}[1/pf] ⊂ Spec O_{K′}[1/p]` and purity give `0 → H¹_p → H¹_{pf} → ⊕_{w∣𝔩} ℤ_p → H²_p → H²_{pf} → ⊕_{w∣𝔩} H¹(κ(w), ℤ_p) → 0`. In the limit the degree-two supported terms vanish, because corestriction multiplies by residue degrees that grow without bound, `Frob_𝔩` having infinite order in `G/I_𝔩`. The degree-three supported terms assemble to `ℤ_p[[G/D_𝔩]]`. Inverse limits of compact modules are exact.

**Checks.**

- If every prime factor of `f` lies above `p`, the sum is empty and `H²_p = H²_{pf}`.
- For `K = ℚ(i)`, `p = 5`, `f = (3)`: `3` is inert of norm 9, and `I_{(3)}` is the image of `1 × (O_K/3)^×` in `((O_K ⊗ ℤ_5)^× × (O_K/3)^×)/μ_4`, cyclic of order 8, since the diagonal `μ_4` meets it trivially. On the components where it acts trivially, the factor `1 − Frob_{(3)}⁻¹` is a nonzero non-unit of `R[1/5]`, so `H²_p` and `H²_{pf}` have different `ξ`.
- `ℤ_p[[G/D_𝔩]]` is not pseudo-null: `G/D_𝔩` has `ℤ_p`-rank one, so the module has dimension two over the three-dimensional `R`. Discarding it as pseudo-null would drop a codimension-one factor.

### 1.6 Torsion of the class module

Prove that `h²`, `H²_{p∞f}(ℤ_p(1))` and `H²_{pf}` are finitely generated torsion `R`-modules, each killed by a non-zero-divisor (Burungale–Tian, §2.1.1, p. 3, BT line 143; Kato, 15.1, p. 251; Johnson-Leung–Kings, Corollary 7.3, p. 34). The route passes through weak Leopoldt for the ray tower. `K(p^∞f)` is the union of the cyclotomic towers `K′(μ_{p^∞})` of its finite layers, since `K(μ_{p^∞}) ⊂ K(p^∞)`. Weak Leopoldt for each such tower (IntegralIwasawaTheory §2.6) gives `H²(G_{K(p^∞f), S}, ℚ_p/ℤ_p) = 0` by passage to the limit, and Poitou–Tate in the limit turns this into torsion of `H²_{p∞f}(ℤ_p(1))`. §1.4 transfers torsion to `h²`, and §1.5 to `H²_{pf}`. *Needs:* IntegralIwasawaTheory §2.6; ArithmeticGaloisDuality §§R02.4.3, D7.5; §§1.1, 1.4, 1.5.

### 1.7 Structure of the unit module

Prove that `h¹` is a finitely generated, torsion-free `R`-module, and that `h¹_q` is one-dimensional over the field `R_q` at every height-zero prime `q` (Burungale–Tian, §2.1.1, p. 3, BT lines 141–143; Kato, 15.1, p. 251; Johnson-Leung–Kings, proof of Theorem 6.4(2), p. 30, and Corollary 7.3, pp. 34–35). Here torsion-free means that no nonzero element is killed by a non-zero-divisor. The route has three parts. Finite generation comes from §1.3 and §1.1. The rank comes from Tate's global Euler characteristic formula at each finite layer: `K′` is totally complex, `ℤ_p(1)` has rank one and `H⁰ = 0` in the limit, so `rank H¹ − rank H² = [K′ : K]` normalized by the degree, combined with §1.6 on every `Δ`-component, `p = 2` included, since no real places occur. Torsion-freeness requires the ray-tower form of the Iwasawa `H¹` torsion lemma: the `R`-torsion of `H¹_{p∞f}(ℤ_p(1))` embeds in the invariants of `ℤ_p(1)` under `Gal(K̄/K(p^∞f))`, which are zero. Vanishing of `ℤ_p`-torsion alone controls only `p`-power torsion, not `R`-torsion. *Needs:* §§1.1, 1.3, 1.6; ArithmeticGaloisDuality §R02.4.4; SelmerIwasawaCohomology §§3.1, 3.3.

**Checks.**

- For `K = ℚ(i)`, `p = 2`, `f = (1)`, `R = ℤ_2[[ℤ_2²]]` is a domain and the statement is that `h¹` is torsion-free of rank one.
- The zero module is torsion-free but not of rank one: rank one is a separate assertion and fails for a definition producing `h¹ = 0`.
- Over `R = ℤ_2[[G]]` with `Δ = ℤ/8` (the third check of §0.1), "killed by a non-zero-divisor" differs from "killed by a nonzero element". `x − 1` for `x` a generator of `Δ` is a nonzero zero-divisor, so torsion-freeness is stated with non-zero-divisors.

### Examples

For `K = ℚ(i)`, `p = 5`, `f = (1)`, the decomposition `R = ⊕_{χ ∈ Δ^} ℤ_5[[Γ]](χ)` has four factors, and §§1.6–1.7 say that each component of `h²` is torsion and each component of `h¹` has rank one.

### Dependencies

Layer 0; SelmerIwasawaCohomology §§0.9, 0.10, 3.1–3.3, 3.7, 3.15, 3.17; ArithmeticGaloisDuality §§R02.4.3, R02.4.4, D7.5; IntegralIwasawaTheory §§2.6, 10.0; ClassFieldTheory Layer 10; PadicMeasuresIwasawaAlgebras §4.1; Mathlib `ClassGroup`, `NumberField.IsTotallyComplex`.

## Layer 2: elliptic units

### 2.1 Theta functions as Eisenstein–Kronecker series

For `Im τ > 0` and `z ∉ ℤτ + ℤ` put `E(k, τ, z, s) = Σ_{(m,n) ∈ ℤ²} (z + mτ + n)^{−k}|z + mτ + n|^{−s}`. This is the one-dimensional Eisenstein–Kronecker series of AutomorphicPadicLFunctionsPartII §3.3, read through the conjugation identity of the supplier contracts. Put `E^{(k)}(τ, z) = (−1)^k (k − 1)! (2πi)^{−k} E(k, τ, z, 0)` for `k ≥ 1`, and `E^{(0)}(τ, z) = lim_{s→0} s⁻¹E(0, τ, z, s)`. For `E_τ = ℂ/(ℤτ + ℤ)`, the coordinate `t = e^{2πiz}` and `c ≥ 2` prime to 6, prove the following two identities, for `z` and `cz` outside the lattice (Kato, 3.8 and (3.8.1)–(3.8.2), pp. 138–140):

```text
D^{k−1} dlog(cθ_E) = (c² E^{(k)}(τ, z) − c^k E^{(k)}(τ, cz)) · (dt/t)^{⊗k}    (k ≥ 1)
log|cθ_E| = c² E^{(0)}(τ, z) − E^{(0)}(τ, cz)
```

Transport them to the lattice of a CM pair by a homothety; the factor `(dt/t)^{⊗k}` scales by the `k`-th power of the scalar. *Needs:* AutomorphicPadicLFunctionsPartII §§3.3–3.4; PadicFamilies §4.0.1.

**Checks.**

- For `k ≥ 3` both sides are absolutely convergent lattice sums at `s = 0`; for `k = 1, 2` the right side is the continued value.
- At a torsion point `z = ατ + β ≠ 0` the second identity specializes to the Siegel-unit formula `log|g_{α,β}| = E^{(0)}_{α,β}` (Kato, (3.8.4)(iii)).
- `E(0, τ, z, s)` vanishes at `s = 0`, so `E^{(0)}` is a derivative and not a value. A definition by the value at `0` would give the zero function and break the second identity for `c ≥ 2`.

### 2.2 Kato's CM theta function

Let `K′ ⊃ K` be a field and `E/K′` an elliptic curve with `O_K ≅ End(E)`, normalized so that `O_K → End(E) → End(Lie E) = K′` is the inclusion. For an ideal `a` of `O_K` prime to 6, define `aθ_E` as the unique unit on `E ∖ E[a]` with divisor `N(a)·(0) − E[a]` and with `N_b(aθ_E) = aθ_E` for every integer `b` prime to `a`, `N_b` being the norm along multiplication by `b` (Kato, 15.4, p. 252; Johnson-Leung–Kings, §3.2, p. 14). Existence: `E[a]` has odd order, so its points sum to zero and `N(a)(0) − E[a]` is principal. Uniqueness: a ratio `u` of two such functions is a constant with `u^{2²−1} = u^{3²−1} = 1`, hence `u = 1`. *Needs:* ModularCurves Layers 0 and 2; EllipticCurves Layers 1–2; ComplexMultiplicationAndExplicitReciprocity §1.1; PadicFamilies §4.0.1.

- `div(aθ_E) = N(a)(0) − E[a]` as relative Cartier divisors.
- Invariance under `N_b` for integers `b` prime to `a`, and uniqueness among units with that divisor and that invariance.
- For `a = (c)` with `c ∈ ℤ` prime to 6, `aθ_E = cθ_E` of PadicFamilies §4.0.1 (Kato, (15.4.1)).
- For an `O_K`-linear isogeny `E → E′` of degree prime to `N(a)`, the norm of `aθ_E` is `aθ_{E′}`. This is Kato's (15.4.2), whose printed form omits the coprimality.
- For `a, b` prime to 6, `(bθ_E)^{N(a)} · (pr₁^* bθ_{E₁})⁻¹ = (aθ_E)^{N(b)} · (pr₂^* aθ_{E₂})⁻¹` with `E₁ = E/aE` and `E₂ = E/bE` (Kato, (15.4.3)).
- Compatibility with base change `K′ → K″`.

**Checks.**

- The divisor has degree `N(a) − #E[a] = 0`, since `E[a]` has order `N(a)`.
- For `a = O_K` the divisor is `(0) − (0) = 0` and `aθ_E = 1`.
- For a primitive cube root of unity `u`, `u·aθ_E` has the same divisor and passes the `N_2` test, since `u^{2²−1} = u³ = 1`, but fails the `N_3` test, since `u^{3²−1} = u⁸ = u² ≠ 1`. Testing `N_2` alone does not determine the function.
- For `N(a) > 1` the quotient `q : E → E/E[a]` has degree `N(a)`, not prime to `N(a)`. It sends the divisor `N(a)(0) − E[a]` to `N(a)(0) − N(a)(0) = 0`, so the norm is constant and cannot equal the nonconstant `aθ` on the quotient. This rules out the unrestricted isogeny law.

### 2.3 Canonical CM pairs

Let `f` be a nonzero ideal with `O_K^× → (O_K/f)^×` injective. A *CM pair of modulus `f`* over a field `K′ ⊃ K` is `(E, α)`, with `E/K′` as in §2.2 and `α ∈ E(K′)` a torsion point whose annihilator in `O_K` is `f`. Prove: an isomorphism of CM pairs is unique when it exists. There is a CM pair over `K(f)`, isomorphic over `ℂ` to `(ℂ/f, 1 mod f)` and unique up to unique isomorphism, the *canonical CM pair*. Every CM pair of modulus `f` over `K′` is the base change of the canonical one along a unique `K`-embedding `K(f) → K′`. For finite abelian `K′/K`, `a` prime to the ramification and `σ = (a, K′/K)`, there is a unique isomorphism `η_a : (E/aE, α mod aE) ≅ (E^{(σ)}, σ(α))` (Kato, 15.3 and (15.3.1)–(15.3.3), pp. 251–252; Johnson-Leung–Kings, §3.2, pp. 13–14). *Needs:* ComplexMultiplicationAndExplicitReciprocity §§1.1, 2.2, 3.2; ClassFieldTheory Layer 13; Mathlib `NumberField.Units.torsion`.

- Uniqueness of isomorphisms: an automorphism fixing `α` is a unit congruent to 1 modulo `f`, hence 1.
- Base change along `K(f) → K′` is an equivalence onto CM pairs of modulus `f` over `K′`.
- The Artin action is the ideal action `[a] ⋆ E` of ComplexMultiplicationAndExplicitReciprocity §1.1, with the point carried along.

**Checks.**

- For `K = ℚ(i)` and `f = (3)`, `μ_4 → 𝔽_9^×` is injective, so the canonical pair exists over `K(3)`, an extension of degree `#𝔽_9^×/4 = 2` over `K`.
- For `K = ℚ(i)` and `f = (1 + i)`, `(O_K/f)^× = 1` and `μ_4` does not inject. The automorphism `i` fixes every point of annihilator `f`, so isomorphisms of pairs are not unique, and the definition must pass to a multiple of `f`.
- For `f = (1 + i)^3` (norm 8), `(O_K/f)^×` has order 4 and `i ↦ i mod f` is injective, so `K(f) = K`. The canonical pair is a model over `ℚ(i)` with a rational point of annihilator `(1 + i)^3`.

### 2.4 Standard elliptic units

For `f` as in §2.3, `(E, α)` the canonical pair over `K(f)` and `a` prime to `6f`, define the standard elliptic unit `a z_f = aθ_E(α)⁻¹ ∈ K(f)^×`. For general `m` prime to `a`, define `a ζ_m = N_{K(p^r m)/K(m)}(aθ_E(α)⁻¹)`, with `(E, α)` the canonical pair of modulus `p^r m`, for any `r ≥ 1` making units inject (Kato, 15.5, p. 253; Johnson-Leung–Kings, Definition 3.2 and Proposition 3.3, pp. 14–15, JLK line 600). *Needs:* §§2.2–2.3; §1.2; ClassFieldTheory Layer 13.

- `a ζ_m` does not depend on `r`.
- `a z_f` has valuation zero at every prime not dividing `f`. It is a unit when `f` has two distinct prime factors, and an `O_K[1/𝔮]`-unit when `f` is a power of a prime `𝔮`.
- Norm relation: for a prime `𝔮` with `m𝔮` prime to `a`, `N_{K(m𝔮)/K(m)}(a ζ_{m𝔮}) = (a ζ_m)^{1 − Frob_𝔮⁻¹}` if `𝔮 ∤ pm`, and `= a ζ_m` if `𝔮 ∣ pm`.
- Auxiliary independence: `(b z_f)^{N(a) − σ_a} = (a z_f)^{N(b) − σ_b}` for `a, b` prime to `6f` (Kato, (15.4.4)).
- Galois action: `σ_c(a z_f)` is the theta value at the conjugate point, computed through `η_c`.

**Checks.**

- For `a = (5)` and `b = (7)` in `ℚ(i)` with `f` prime to `35`, the relation reads `(7 z_f)^{25 − σ_{(5)}} = (5 z_f)^{49 − σ_{(7)}}`. The unequal factors test the relation itself, which `a = b` would not.
- For `K = ℚ(i)` and `f = (3)(1 + i)^3`, with two distinct prime factors, `a z_f` is a global unit of `K(f)`.
- The cyclotomic units `1 − ζ_{p^n}` of `ℚ(μ_{p^n}) ⊂ K(p^n)` do not form this system. Their norms along the `ℤ_p`-direction transverse to the cyclotomic one are not compatible, and they carry no factor `N(a) − σ_a`.
- Dropping the factor `1 − Frob_𝔮⁻¹` for `𝔮 ∤ pm` would make the family norm-compatible in every direction, which contradicts the Kronecker limit formula of §2.5.

### 2.5 Kronecker's limit formula for elliptic units

For `f` with injective units, `a` prime to `6f` and every character `χ` of `Gal(K(f)/K)`, prove (Kato, (15.5.1), p. 253):

```text
Σ_{σ ∈ Gal(K(f)/K)} χ(σ) log|σ(a z_f)| = (N(a) − χ(a)⁻¹) · lim_{s→0} s⁻¹ L_f(χ, s).
```

For finite `K ⊂ K′ ⊂ K(p^∞f)`, let `z_{K′}` be the image of `z_{p∞f}` (§2.6) in `O_{K′}[1/p]^× ⊗ ℚ`. Prove that `Σ_σ χ(σ) log|σ(z_{K′})| = lim_{s→0} s⁻¹ L_{pf}(χ, s)` for every nontrivial `χ` of `Gal(K′/K)` (Kato, (15.6.5), p. 255; Johnson-Leung–Kings, Proposition 3.3(4), p. 14). The route applies §2.1 at the canonical pair and sums over the ray classes through `η_c`. *Needs:* §§2.1, 2.3, 2.4, 2.6; AutomorphicLFunctionsAndLocalFactors AL.1; GlobalNumberFields Layer 9.

**Checks.**

- For the trivial character the first formula involves the derivative at `0` of the partial zeta function prime to `f`; the second formula excludes the trivial character.
- If `χ` is unramified at a prime `𝔩 ∣ f` with `χ(𝔩) = 1`, then `L_f(χ, s)` has a zero of order at least two at `0` and the left side vanishes: the unit of modulus `f` does not see that component.
- For `a = (5)` in `ℚ(i)` and `χ((5)) = −1`, the factor is `25 + 1 = 26`, and a factor `N(a) − χ(a)` would give the same value. When `χ(a) = i` the stated factor is `25 − i⁻¹ = 25 + i`, while `N(a) − χ(a)` gives `25 − i`: the inverse is detected only by non-real values.

### 2.6 The elliptic-unit module and the auxiliary-free element

Define `z ⊂ h¹` as the `R`-submodule generated by the norm-compatible families `(a z_{p^n f})_n`, over all ideals `a` prime to `6pf`. Define `z_{p∞f} = (N(a) − σ_a)⁻¹·(a z_{p^n f})_n ∈ h¹ ⊗_R Q(R)` for any `a ≠ O_K` prime to `6pf` (Kato, 15.5–15.6 and (15.6.3)–(15.6.4), pp. 253–254; Burungale–Tian, §2.1.1, p. 3, BT line 144; Johnson-Leung–Kings, §§5.1, 5.3, pp. 23 and 25). Here `N(a) − σ_a` is a non-zero-divisor of `R`, because its image under every finite-order character `η`, `N(a) − η(σ_a)`, is nonzero. *Needs:* §§1.2, 1.3, 2.4, 0.1; Mathlib `cyclotomicCharacter`.

- `z_{p∞f}` does not depend on `a`: `(N(b) − σ_b)·(a z) = (N(a) − σ_a)·(b z)` in `h¹`.
- `(N(a) − σ_a)·z_{p∞f} ∈ H¹_{p∞f}(ℤ_p(1))` for every admissible `a`.
- The ideal `J` generated by the elements `N(a) − σ_a` is the kernel of the cyclotomic character `R → ℤ_p`. `R/J ≅ ℤ_p` is pseudo-null, so `J_q = R_q` and `z_q = R_q·z_{p∞f}` at every height-one prime `q`.
- For `f ∣ f′` the norm `h¹(f′) → h¹(f)` sends `z_{p∞f′}` to `∏_{𝔩 ∣ f′, 𝔩 ∤ pf} (1 − Frob_𝔩⁻¹)·z_{p∞f}`.
- Under `h¹ ≅ H¹(O_K[1/pf], Ω(1))` (§§1.3, 1.5), `z_{p∞f}` is Johnson-Leung–Kings' `ζ(f)`.

**Checks.**

- `R/J ≅ ℤ_p` with `g` acting through the cyclotomic character. The quotient has dimension one, so `J` is a unit at every height-one prime.
- For admissible `a` with `N(a) > 1`, `(N(a) − σ_a)·z_{p∞f}` is the family `(a z_{p^n f})_n`. A definition with `1 − σ_a` or `N(a) − σ_a⁻¹` fails this test. The factor does not give a pole at height one, because `J` is supported in codimension two.
- `ξ((h¹/z)_ℚ) = ξ(h¹_ℚ/R_ℚ·z_{p∞f})`, because `z` and `R·z_{p∞f}` differ only in codimension two.

### 2.7 Cotorsion of elliptic units

Prove that `h¹/z` is a torsion `R`-module for every `p` and every `f`; equivalently, `z_{p∞f}` generates `h¹` at every height-zero prime (Burungale–Tian, §2.1.1, p. 3, BT line 145; Kato, 15.1, p. 251; Johnson-Leung–Kings, Theorem 3.9 and its proof, pp. 17–18, JLK line 727). The route works one height-zero prime at a time. On its component choose a finite-order `η` ramified at all primes above `p` with `η(Frob_𝔩) ≠ 1` at the primes `𝔩 ∣ f`, `𝔩 ∤ p`, where the component is unramified. Such `η` exist because `Frob_𝔩` has infinite order in `G/I_𝔩`. By §2.5 the archimedean regulator of the `η`-part of `z_{K′}` is the leading coefficient of `L_{pf}(η⁻¹, s)` at `s = 0`, which is nonzero by the functional equation and the nonvanishing of `L(η̄, 1)`. Since the regulator is injective on units modulo torsion, the `η`-part is nonzero, and §1.7 gives rank one. *Needs:* §§1.7, 2.5, 2.6; AutomorphicLFunctionsAndLocalFactors AL.1; LFunctions Layer 7; Mathlib `NumberField.Units.regulator_ne_zero`.

### Examples

For `K = ℚ(i)`, `p = 2`, `f = (1)`, `R = ℤ_2[[ℤ_2²]]` is a domain, and §2.7 says that `z_{2∞} ≠ 0`. For `K = ℚ(√−3)` the auxiliary ideal must be prime to 6; `a = (5)` (inert, norm 25) and `a = (7)` (split, norm 7) give the factors `25 − σ_{(5)}` and `7 − σ_a` with `a` a prime above 7.

### Dependencies

Layer 1; Layer 0; AutomorphicPadicLFunctionsPartII §§3.3–3.4; PadicFamilies §4.0.1; ModularCurves Layers 0 and 2; EllipticCurves Layers 1–2; ComplexMultiplicationAndExplicitReciprocity §§1.1, 2.2, 3.2; ClassFieldTheory Layer 13; GlobalNumberFields Layer 9; AutomorphicLFunctionsAndLocalFactors AL.1; LFunctions Layer 7; Mathlib `NumberField.Units.regulator_ne_zero`, `NumberField.Units.torsion`, `cyclotomicCharacter`.

## Layer 3: CM realizations and Kato's reciprocity law

### 3.1 Kato's realization of a CM Hecke character

Let `r ≥ 1` and let `ψ` be a Hecke character of `K` of type `(−r, 0)`, with values generating the finite extension `L = K(ψ(K̂^×)) ⊂ ℂ`. Choose `f` contained in the conductor of `ψ` with injective units, and let `(E, α)` be the canonical pair over `K(f)`. Define the Betti realization `V_L(ψ) = H¹(E(ℂ), ℚ)^{⊗r} ⊗_K L`, the tensor power over `K`. Define the étale realization `V_{L_λ}(ψ) = H¹_ét(E_{ℚ̄}, ℚ_p)^{⊗r} ⊗_{K ⊗ ℚ_p} L_λ` for a place `λ ∣ p` of `L`. Extend the natural `Gal(ℚ̄/K(f))`-action to `Gal(ℚ̄/K)` by `σ ↦ ψ(a)⁻¹ (η_a^*)^{⊗r} ∘ σ`, where `σ|_{K(f)} = σ_a`; this is independent of `a`. Define the de Rham realization `S(ψ) ⊂ coLie(E)^{⊗r} ⊗_K L` as the invariants of the semilinear `Gal(K(f)/K)`-action through the same isomorphisms, and the period map `per_ψ : S(ψ) → V_L(ψ) ⊗ ℂ` (Kato, 15.7–15.8 and (15.8.1), pp. 255–258; Burungale–Tian, §2.2.5, p. 5, BT lines 199–206). *Needs:* §2.3; ComplexMultiplicationAndExplicitReciprocity §§1.3, 4.1; AutomorphicGaloisRepresentationsPartII AG2.0; GlobalNumberFields Layers 9–10; EllipticCurves Layer 2.

- `V_L(ψ)`, `S(ψ)` are one-dimensional over `L`, and `V_{L_λ}(ψ)` is one-dimensional over `L_λ`.
- An idele `a` acts on `V_{L_λ}(ψ)` by `a_v^r ψ(a)⁻¹`, where `v` is the place of `K` under `λ`. For `a` prime to `pf` the Artin symbol `σ_a` acts by `ψ(a)⁻¹`, and the action factors through `G_{p∞f}`.
- `S(ψ) ⊗_L L_λ ≅ D^j_dR(K ⊗ ℚ_p, V_{L_λ}(ψ))` for `1 ≤ j ≤ r` (Kato, (15.8.1)), from the filtered de Rham comparison for `E` over the completions of `K(f)`, with the CM action and tensor powers, descended through the semilinear action.
- The constructions for `f ⊂ f′` are identified through the canonical isogenies of canonical pairs.
- For `r = 1` and `ψ` the character of a CM elliptic curve, `V_{L_λ}(ψ)` is the corresponding one-dimensional component of ComplexMultiplicationAndExplicitReciprocity §4.1, dualized to Kato's cohomological convention.

**Checks.**

- At a prime `𝔮 ∤ pf` of `K` a Frobenius acts on `V_{L_λ}(ψ)` by `ψ(𝔮)⁻¹`. For `K = ℚ(i)`, `r = 1`, `ψ` the character of `y² = x³ − x` and `𝔮 = (2 + i)`, `ψ(𝔮)` has norm 5 and the eigenvalue `ψ(𝔮)⁻¹` has absolute value `5^{−1/2}`, not a root of unity.
- `V_{L_λ}(ψ)` is ramified at `v`, because the idele action contains `a_v^r` with `r ≥ 1`. It is not a finite-order character.
- `dim_L V_L(ψ) = 1` although `H¹(E(ℂ), ℚ)` has dimension two over `ℚ`. The tensor power is over `K`, and a tensor power over `ℚ` would have dimension `2^r`.

### 3.2 The period evaluation

With `K′ = K(g)` for `g = p^m f₀ ⊂ f` with injective units (`f₀` the prime-to-`p` part of `f`), `ω` a basis of `coLie(E)` and `β ∈ H₁(E(ℂ), ℚ)` the image of `1` under `K ≅ H₁(ℂ/g, ℚ)`, put `ω_r = (r − 1)!⁻¹ (d/ω)^r log(aθ)(α_m) · ω^{⊗r}`. Prove that for every character `χ` of `Gal(K′/K)` (Kato, (15.9.1)–(15.9.2) and their proof, pp. 259–260):

```text
Σ_σ χ(σ) per_ψ(σ(ω_r)) = (N(a) − ψ(a)χ(a)⁻¹) · L_{pf}(ψ̄, χ, r) · β^{⊗(−r)}.
```

Consequently, when `N(a) − ψ(a)χ(a)⁻¹ ≠ 0` for every character `χ` of `Gal(K′/K)`, so that `N(a) − ψ(a)σ_a` is invertible in `L[Gal(K′/K)]`, the element `z = (N(a) − ψ(a)σ_a)⁻¹ω_r` satisfies `Σ_σ χ(σ) per_ψ(σ(z)) = L_{pf}(ψ̄, χ, r)·β^{⊗(−r)}`. Such auxiliary ideals exist for every `K′`. For `r ≠ 2`, `|ψ(a)| = N(a)^{r/2} ≠ N(a)` whenever `N(a) > 1`. For `r = 2`, any prime `a = 𝔮` split in `K` and prime to `6pf` works: `ψ(𝔮)/N(𝔮)` has absolute value one, but some power of it is a root of unity times `π/π̄` for a generator `π` of a power of `𝔮`, which is not a root of unity because `𝔮 ≠ 𝔮̄`. The route expresses `(d/ω)^r log θ` by §2.1 and re-indexes the lattice sum by `c ↦ cb` onto ideals in a ray class. It uses `ψ((c)) = c^r` for `c ≡ 1` modulo the conductor and `ψψ̄ = N^r`. *Needs:* §§2.1–2.3, 3.1; AutomorphicLFunctionsAndLocalFactors AL.1.

**Checks.**

- For `r ≥ 3` and trivial `χ` both sides are absolutely convergent, and the identity is a rearrangement of lattice sums.
- At `r = 1`, `r = 2` the right side is the continued value `L_{pf}(ψ̄, χ, r)` at the edge of absolute convergence.
- The auxiliary factor can vanish. For type `(−r, 0)`, `ψ((c)) = c^r` for `c ≡ 1` modulo the conductor, so for `r = 2`, `c ∈ ℤ` prime to `6f` and `a = (c)`, `ψ(a) = c² = N(a)` and the factor is zero at the trivial character. The invertibility hypothesis on `a` is needed.
- `|ψ(a)| = N(a)^{r/2}`, since `ψψ̄ = N^r` and `|ψ| = |ψ̄|`. For `r = 1` the factor satisfies `|N(a) − ψ(a)χ(a)⁻¹| ≥ N(a) − N(a)^{1/2} > 0`, so every auxiliary `a ≠ O_K` is admissible in weight two.

### 3.3 Kato's explicit reciprocity law for elliptic units

Let `r ≥ 1`, `ψ` of type `(−r, 0)`, `p` any prime, `f` contained in the conductor of `ψ`, `K′ ⊂ K(p^∞f)` finite over `K` and `γ ∈ V_L(ψ)`. Map `z_{p∞f}` along `H¹_{p∞f}(ℤ_p(1)) → H¹_{p∞f}(V_{L_λ}(ψ)(1)) → H¹(O_{K′}[1/p], V_{L_λ}(ψ)(1))`, the first map being `x ↦ x ⊗ γ`. Then localize at `p` and apply the dual exponential and (15.8.1). Prove that the image lies in `S(ψ) ⊗_K K′`, and that for every character `χ` of `Gal(K′/K)`, `Σ_σ χ(σ) per_ψ(σ(image)) = L_{pf}(ψ̄, χ, r)·γ` (Kato, Proposition 15.9 and its proof, pp. 258–260). The route reduces by traces to `K′ = K(g)` and by linearity to `γ = β^{⊗(−r)}`. It then applies the height-one explicit reciprocity law (gap:height-one-explicit-reciprocity) to the norm-compatible system of theta values `θ_n(ξ_n)` with `θ_n(z) = aθ(z − ν_n)`. Each `𝔭`-divisible group of `E` over a place of `K(g)` above `p` has relative `O_𝔭`-height one (ordinary `p`-height two at inert or ramified `p`), and `E` has good reduction everywhere over `K(g)` by the Serre–Tate criterion. The result `p^{−mr}·ω_r` is then divided by `N(a) − ψ(a)σ_a`, and §3.2 is applied. *Needs:* PadicHodgeRegulators §§1.4, 1.7 and gap:height-one-explicit-reciprocity; §§2.6, 3.1, 3.2, 1.3; NeronModelsAndSemistableAbelianVarieties §5.1.

**Checks.**

- For `χ` of conductor divisible by every prime of `pf`, `L_{pf}(ψ̄, χ, r) = L(ψ̄χ, r)`, the full Hecke value.
- For `r = 1`, `K = ℚ(i)` and `ψ` the character of `y² = x³ − x`, the formula relates the localized elliptic units to `L(ψ̄χ, 1)`. At `p = 2`, `K ⊂ ℚ(μ_{2^∞})` and the statement is not excluded.
- The relative height is one at inert `p`, although the `p`-divisible group of `E` has height two there. A hypothesis "ordinary `p`-height one" would exclude inert primes, which the law covers.

### Examples

For a CM newform of weight `k` attached to `ψ` of type `(1 − k, 0) = (−r, 0)` with `r = k − 1`, Layer 3 is applied to that `ψ`. For `k = 2`, `r = 1`, the period evaluation is the classical one for the CM elliptic curve.

### Dependencies

Layer 2; Layer 1 (§1.3); ComplexMultiplicationAndExplicitReciprocity §§1.3, 4.1; AutomorphicGaloisRepresentationsPartII AG2.0; GlobalNumberFields Layers 9–10; EllipticCurves Layer 2; PadicHodgeRegulators §§1.4, 1.7 and gap:height-one-explicit-reciprocity; NeronModelsAndSemistableAbelianVarieties §5.1; AutomorphicLFunctionsAndLocalFactors AL.1.

## Layer 4: the elliptic-unit Euler system and the integral character-wise main conjecture

### 4.1 The Euler system of elliptic units and its twists

Fix `p` and an ideal `a` prime to `6p`, and let `𝒦` be the union of the `K(q)` over `q` prime to `a`. Prove that the classes `a ζ_m ∈ O_{K(m)}[1/p]^× ⊗ ℤ_p ⊂ H¹(O_{K(m)}[1/p], ℤ_p(1))` form an Euler system for `(𝒦, ℤ_p(1), pa)` in the sense of EulerSystemsAndKolyvaginSystems §2.2. Corestriction from `K(m𝔮)` to `K(m)` multiplies by `1 − Frob_𝔮⁻¹` for `𝔮 ∤ mpa` and by 1 otherwise. For a character `χ` of conductor `f_χ` prime to `a`, with values in a number field `E`, `O_p = O_E ⊗ ℤ_p` and canonical generator `t_p(χ)`, define the twisted classes `a ζ_m(χ) = tr_{K(f_χ m)/K(m)}(a ζ_{f_χ m} ⊗ t_p(χ))`. Prove that they form an Euler system for `(𝒦, O_p(χ)(1), p f_χ a)` with limit `a ζ(χ) ∈ H¹(O_K[1/p], Λ(χ)(1))`, `Λ = O_p[[Gal(K_∞/K)]]` (Johnson-Leung–Kings, §§3.1–3.4, Definition 3.1, Corollary 3.4, Definition 3.5, Proposition 3.6 and Lemma 3.7, pp. 13–16, JLK line 673). *Needs:* §§2.4, 1.1; EulerSystemsAndKolyvaginSystems §§2.2, 2.5, 8.1.

- For `K ⊂ F ⊂ L ⊂ 𝒦` with `G = Gal(L/F)`, the image of `ζ_L` under the integral character map `O_p[G] → O_p(χ)` is `ζ_F(χ)`. The map is the idempotent projection only when `#G` is invertible.
- For a continuous `ρ : Γ → O_p^×`, the twisting isomorphism `Λ ≅ Λ(ρ)` sends `a ζ(χ)` to `a ζ(χρ)` (Johnson-Leung–Kings, Lemma 6.1).
- The trivial twist is the untwisted system, and twisting by `ρ₁` then `ρ₂` is twisting by `ρ₁ρ₂`.

**Checks.**

- For `χ = 1` the twisted classes are `a ζ_m`.
- At `𝔮 ∤ pma` the corestriction factor is `1 − Frob_𝔮⁻¹`; with arithmetic Frobenius and inverse-Artin character values `η(𝔮) = η(Frob_𝔮⁻¹)` the twisted factor is `1 − χ(𝔮)Frob_𝔮⁻¹`.
- For `#G = p` the integral character map is defined and the idempotent `(1/p)Σ_g χ(g)⁻¹g` is not integral. A definition through the idempotent excludes `p ∣ #G`.

### 4.2 The Tamagawa number conjecture at `s = 0` for abelian extensions of `K`

For an abelian extension `F/K` and every prime `p`, prove the rational and integral Tamagawa number conjectures for `h⁰(F)` at `s = 0`. In the form used: for abelian `L ⊃ F ⊃ K`, the `O_p`-module generated by the `p`-adic regulators of the zeta elements `z_p(η) = ∏_{𝔭 ∣ p}(1 − η(𝔭))·z(η)`, `η ∈ Ĝ_L ∖ Ĝ_F`, equals `⊗_η Det⁻¹_{O_p} RΓ(O_K[1/p], O_p(η⁻¹)(1))[1]` (Johnson-Leung–Kings, §2, Conjectures 2.4–2.5, Theorem 2.6, Corollary 2.8, Proposition 2.9 and Corollary 2.11, pp. 7–13, JLK line 425; Huber–Kings, Proposition 2.3.1, for odd `p`). The route has three steps. Both conjectures for `h⁰(F)` are reformulations of the analytic class number formula through the regulator and the `p`-adic structure of compactly supported cohomology, as recorded in Johnson-Leung–Kings, Theorem 2.6, for every `p`. Then pass to the quotient motives `M(η)`, and remove the Euler factors at `p` through `Det RΓ_f(K_𝔭, O_p(η⁻¹)^∨) = 1 − η(𝔭)`. *Needs:* §1.1; ArithmeticGaloisDuality §D7.5; PadicMeasuresIwasawaAlgebras §5.1; Mathlib `NumberField.Units.regulator`, `NumberField.IsTotallyComplex`.

**Checks.**

- For `F = K` the statement is the `p`-part of the class number formula at `s = 0`. The unit rank of `K` is zero, so `ζ_K(0) = −h_K R_K/w_K` is a value, not a derivative. For `K = ℚ(i)`, `ζ_K(0) = −1/4`, a unit for odd `p` and of valuation `−2` at `2`.
- `F` is totally complex, so no real-place 2-torsion intervenes at `p = 2`.
- The Euler factor `1 − η(𝔭)` vanishes for `η` trivial on the decomposition group at `𝔭`. The statement uses `z_p(η)`, not `z(η)`, and is not an equality for `z(η)` at such `η`.

### 4.3 Elliptic units are the Tamagawa zeta elements

Let `η` have conductor `f_η` and level large enough that it is ramified at every prime above `p`. Prove that `ζ_K(η⁻¹) = tr_{K(f_η)/K}(ζ_{f_η} ⊗ t_p(η⁻¹))` lies in `H¹_f`, and that it equals `(N(a) − η(a))·z_p(η)`, with `N(a) − η(a)` invertible for `a ≠ O_K`. Consequently `ζ_K(η⁻¹)` is not torsion, and for `n` large, `⊗_η (N(a) − η(a))⁻¹ζ_K(η⁻¹)O_p = ⊗_η Det⁻¹_{O_p} RΓ(O_K[1/p], O_p(η⁻¹)(1))` over the characters of exact level `n` (Johnson-Leung–Kings, Definition 3.8, Theorem 3.9 and Corollary 3.10, pp. 17–19, JLK lines 727 and 785). *Needs:* §§2.5, 4.1, 4.2; Mathlib `NumberField.Units.regulator_ne_zero`.

### 4.4 Rubin's Euler-system bound for elliptic units

Let `η` have level large enough that `O_p(η)` is ramified at every place above `p`, `Λ_O = O_p[[Γ]]`, `Γ ≅ ℤ_p²`. Prove the following (Johnson-Leung–Kings, Definition 6.3, Theorem 6.4 and Corollary 6.5, pp. 30–31, JLK lines 1257 and 1302; Lemma 4.6, p. 22):

1. `H²(O_K[1/p], Λ(η)(1))` is `Λ_O`-torsion.
2. `H¹(O_K[1/p], Λ(η)(1))` has rank one.
3. `H¹/Λ_O·a ζ(η)` is torsion.
4. At every height-one prime `𝔮` of `Λ_O`, `length H²_𝔮 ≤ length (H¹/Λ_O·a ζ(η))_𝔮`.

The bound holds for `H²_0`, the kernel of localization to `⊕_{v∣p} H²(K_v, Λ(η)(1))`, and then for `H²`, because those local terms are finitely generated `O_p`-modules, hence pseudo-null. By twisting, the inequality holds for every `χ` at height-one primes; this is Rubin's inequality, Kato's Theorem 15.2(1). The route checks Rubin's hypotheses for the `ℤ_p²`-extension (no finite prime splits completely; rank-one coefficients; `τ = 1`). Weak Leopoldt from the non-torsion class of §4.3 gives (1), Tate's Euler characteristic gives (2), and Rubin's divisibility with the pseudo-isomorphism `H¹ → Λ_O ⊕ (torsion)` gives (4). *Needs:* §§4.1, 4.3, 1.1; EulerSystemsAndKolyvaginSystems §§8.1, 8.2, 8.6, 8.7, 8.14, 8.25, 8.37; ArithmeticGaloisDuality §R02.4.4; PadicMeasuresIwasawaAlgebras §4.1.

**Checks.**

- The inequality is integral, with no power of `p` lost, for every `p` including 2.
- For `η` of small level, unramified at a prime above `p`, the local `H⁰` can be nonzero and the large-level hypothesis fails. The general case comes from twisting, not from this statement directly.

### 4.5 The main conjecture for imaginary quadratic fields at every prime

For every prime `p` and every character `χ : G(f_χ) → E^×` of conductor `f_χ`, with `Λ_O = O_p[[Gal(K_∞/K)]]`, prove (Johnson-Leung–Kings, Theorem 5.2, p. 24, JLK lines 1010–1024; proof in §6, pp. 29–33):

1. `H⁰(O_K[1/p], Λ(χ)(1)) = 0`.
2. `H¹(O_K[1/p], Λ(χ)(1))` has rank one and `H¹/J_Λ(ζ(χ))` is torsion.
3. `H²(O_K[1/p], Λ(χ)(1))` is torsion.
4. The inclusion `κ_χ : J_Λ(ζ(χ)) → RΓ(O_K[1/p], Λ(χ)(1))[1]` is good in the sense of Knudsen–Mumford with divisor zero, so that `Det_{Λ_O}(H¹/J_Λ(ζ(χ))) ≅ Det_{Λ_O} H²`.

Here `ζ(χ) = (N(a) − σ_a)⁻¹·a ζ(χ)` and `J_Λ` is the kernel of the cyclotomic character. In length form: `length (H¹/J_Λζ(χ))_𝔮 = length H²_𝔮` at every height-one prime `𝔮`, integrally, `𝔮 ∋ p` included. There is no restriction on `p`: `p = 2`, `p = 3` and `p` dividing the degree of the field cut out by `χ` are included. The route has four steps. Twisting by continuous `ρ : Γ → O_p^×` reduces to characters of large level (Lemmas 4.7 and 6.1, Corollary 6.2). There §4.4 gives effectivity of `Div(κ_η ∘ τ_η)` and Lemma 6.6 that of `Div(τ_η)`, with `(N(a) − σ_a)⁻¹Det(Λ_O a ζ(η)) = Det(J_Λζ(η))`. The sum over the new characters of level `n` is tested after the augmentation, where it becomes the equality of §4.3. An effective divisor whose sum vanishes is zero. *Needs:* §§4.1–4.4, 2.6; PadicMeasuresIwasawaAlgebras §§4.6, 5.1; SelmerIwasawaCohomology §3.7.

**Checks.**

- For `K = ℚ(i)`, `p = 2`, `χ = 1`, the equality holds integrally over `ℤ_2[[ℤ_2²]]`.
- Rubin's standing hypothesis `p ∤ #μ(H)` excludes `p = 2` for `ℚ(i)` and `p = 2, 3` for `ℚ(√−3)`; the statement here includes them.
- The trivial-character component: `J_Λ` is not principal in two variables, and `J_Λ(ζ(1))` differs from `Λ·ζ(1)` only in codimension two, consistently with §2.6.

### 4.6 The main conjecture over `O_K[1/pf]` with Euler factors

Suppose `f_χ ∣ f` and put `ζ(χ, f) = ∏_{𝔩 ∣ f, 𝔩 ∤ p}(1 − χ(𝔩)Frob_𝔩⁻¹)·ζ(χ)`, its image in `H¹(O_K[1/pf], Λ(χ)(1))`. Prove that `J_Λ(ζ(χ, f)) → RΓ(O_K[1/pf], Λ(χ)(1))[1]` is good and induces `Det(H¹(O_K[1/pf], Λ(χ)(1))/J_Λ(ζ(χ, f))) ≅ Det H²(O_K[1/pf], Λ(χ)(1))` (Johnson-Leung–Kings, Corollary 5.3 and its proof, pp. 24–25, JLK line 1025). The route combines §4.5 with the localization triangle: the supported complexes at `𝔩` have determinant `(1 − χ(𝔩)Frob_𝔩⁻¹)⁻¹` (§1.5), compensated by the Euler factors. *Needs:* §§4.5, 1.5.

**Checks.**

- If every prime of `f` divides `p`, then `ζ(χ, f) = ζ(χ)` and the statement is §4.5.
- If `χ` is ramified at `𝔩`, then `χ(𝔩) = 0` and the factor is 1.

### 4.7 Rubin's Iwasawa modules

Fix a prime `𝔭` of `K` above `p`, an abelian extension `K₀ ⊃ H` of `K` (with `H` the Hilbert class field) with `p ∤ [K₀ : K]`, and an abelian extension `K_∞ ⊃ K₀` of `K` with `Gal(K_∞/K₀) ≅ ℤ_p` or `ℤ_p²`. Assume Rubin's standing hypothesis `p ∤ #μ(H)`. Define `A_∞`, `ℰ̄_∞`, `𝒞̄_∞`, `U_∞` and `X_∞` as norm limits over finite `F ⊂ K_∞` of: the `p`-parts of class groups; the closures of the global units and of Rubin's elliptic units in the local principal units at the primes above `𝔭`; the local principal units themselves; and the Galois groups of the maximal abelian `p`-extensions unramified outside the primes above `𝔭`. They are modules over `Λ = ℤ_p[[Gal(K_∞/K)]] = ⊕_χ Λ^χ`, `Λ^χ ≅ R_χ[[Γ]]` (Rubin 1991, §1, p. 27, and §4, pp. 36–37, Rubin91 lines 500–541). *Needs:* §§1.2, 2.4; ClassFieldTheory Layers 11–13; IntegralIwasawaTheory §10.0; PadicMeasuresIwasawaAlgebras §4.6.

- Each module is the direct sum of its `χ`-components `e_χ Y` over the irreducible `ℤ_p`-representations `χ` of `Δ = Gal(K₀/K)`; the idempotents are integral since `p ∤ #Δ`.
- Class field theory gives the exact sequence `0 → ℰ̄_∞/𝒞̄_∞ → U_∞/𝒞̄_∞ → X_∞ → A_∞ → 0`, the limit of the finite-level sequences by exactness of compact inverse limits.
- `char(Y)` for a finitely generated torsion `Λ`-module is the product of the characteristic ideals of its components.
- For `p ∤ #Δ` the `χ⁻¹`-projection of `E′_∞` is `H¹(O_K[1/p], Λ(χ)(1))` (Johnson-Leung–Kings, §5.4 and Lemma 5.8, pp. 26–27).

**Checks.**

- When `p` splits in `K`, `X_∞` and `U_∞/𝒞̄_∞` are torsion, and the two equalities of §4.8(i) are equivalent through the sequence (Rubin91 lines 565–566).
- When `p` is inert in `K` and `Gal(K_∞/K₀) ≅ ℤ_p²`, `U_∞/𝒞̄_∞` is not torsion (Rubin91 lines 566–567); a torsion characteristic ideal assigned to it is not defined.
- For `Δ` trivial (`K₀ = K = H`, class number one) there is one component and `Λ ≅ ℤ_p[[Γ]]`.

### 4.8 Rubin's main conjecture and its all-prime classical form

Under Rubin's hypotheses prove (Rubin 1991, Theorem 4.1 and Remarks (1)–(2), p. 37, Rubin91 lines 545–571):

- (i) If `p` splits in `K`, then `char(A_∞) = char(ℰ̄_∞/𝒞̄_∞)` and `char(X_∞) = char(U_∞/𝒞̄_∞)`.
- (ii) If `p` is inert or ramified, then `char(A_∞)` divides `char(ℰ̄_∞/𝒞̄_∞)`, with `char(A_∞)^χ = char(ℰ̄_∞/𝒞̄_∞)^χ` for every irreducible `χ` nontrivial on the decomposition group of `𝔭` in `Δ`.

When `p ∤ #Δ`, prove also the classical form at every prime `p`, `2` and `3` included, with no condition on the splitting of `p` or on `χ`: `char(p_{χ⁻¹}A_∞) = char(p_{χ⁻¹}E_∞/I_Λ J_Λ(ζ(χ)))`, integrally (Johnson-Leung–Kings, §5.4, pp. 26–27). For the classical form, decompose `Ω_O = ∏_χ Λ(χ)` and identify the `χ`-parts with the cohomology of §4.5. The decomposition-group modules at `p` in Lemma 5.8's sequence are pseudo-null, so `H²` and `A_∞` have the same characteristic ideal; apply §§4.5–4.6. For (i)–(ii) a proof can follow either Rubin's Kolyvagin-system argument (Rubin 1991, §§8–10) or this classical form wherever Rubin's hypotheses imply `p ∤ #Δ`. *Needs:* §§4.5–4.7; PadicMeasuresIwasawaAlgebras §§4.1, 4.6.

**Checks.**

- For `K = ℚ(i)`, `p = 5` (split), `f = (1)`: `Δ ≅ ℤ/4` has order prime to 5 and both forms apply on all four components.
- For `p` inert, an equality `char(X_∞^χ) = char(U_∞^χ/𝒞̄_∞^χ)` is not a statement of (ii): the modules are not torsion (§4.7). The inert-prime input used by InertAnticyclotomicCMMainConjecture is the `χ`-part equality of (ii).

### Examples

For `K = ℚ(√−7)`, `p = 2` splits (`−7 ≡ 1 mod 8`) and `μ(H) = μ_2`, so Rubin's hypothesis excludes `p = 2`, while §4.5 and the classical form of §4.8 (with `p ∤ #Δ`) cover it.

### Dependencies

Layers 1–2; EulerSystemsAndKolyvaginSystems §§2.2, 2.5, 8.1, 8.2, 8.6, 8.7, 8.14, 8.25, 8.37; ArithmeticGaloisDuality §§R02.4.4, D7.5; PadicMeasuresIwasawaAlgebras §§4.1, 4.6, 5.1; SelmerIwasawaCohomology §3.7; ClassFieldTheory Layers 11–13; IntegralIwasawaTheory §10.0; Mathlib `NumberField.Units.regulator`, `NumberField.Units.regulator_ne_zero`.

## Layer 5: split primes, Coleman maps and Katz's measure

### 5.1 The two-variable Coleman map at a split prime

Let `p = 𝔭𝔭̄` split in `K`, under Rubin's hypotheses, with `K₀ ⊂ K_∞` as in §4.7 and `Gal(K_∞/K₀) ≅ ℤ_p` or `ℤ_p²`. Let `Ô` be the completion of the maximal unramified extension of `O_{K_𝔭} = ℤ_p`, and `F` the relative Lubin–Tate formal group over `Ô` of the CM curve at `𝔭`, of height one. Define the Coleman map `Col : U_∞ → Λ_Ô = Ô[[Gal(K_∞/K)]]`, in two variables when `Gal(K_∞/K₀) ≅ ℤ_p²`. It interpolates a norm-compatible family of local units by its Coleman power series for `F`, applies `(1 − φ/p)·dlog`, and takes the resulting measure on the Tate module of `F`, descended along the `𝔭̄`-direction of the tower and, for a `ℤ_p`-extension, pushed forward to its Galois group (Yager, Chapters 3 and 8, Yager line 71, and Theorem 1, Yager line 201; Rubin 1991, Remark (1) after Theorem 4.1, Rubin91 lines 556–562). *Needs:* §4.7; ColemanPowerSeries Layers 1–2; PadicMeasuresIwasawaAlgebras Layer 1 and §4.1; EllipticCurves Layer 1.

- `Col` is `Λ`-linear.
- On each `χ`-component, `Col` is injective with pseudo-null cokernel after extending scalars to `Ô`. Hence `char(U_∞^χ/𝒞̄_∞^χ)·Λ_Ô^χ = char(Λ_Ô^χ/Col(𝒞̄_∞^χ))`.
- For `K₀ ⊂ K′_∞ ⊂ K_∞` with `Gal(K′_∞/K₀) ≅ ℤ_p`, the Coleman map of `K′_∞` is the push-forward of that of `K_∞`, compatibly with the norm `U_∞ → U′_∞`.

**Checks.**

- `Col` sends the constant norm-compatible system `(1)_n` to 0.
- Over the cyclotomic tower of `ℚ_p` the construction is the Coleman map of ColemanPowerSeries Layer 2, with `F` replaced by the multiplicative group.
- For `p` inert in `K` the local units have rank two over the two-variable algebra, so no injective `Λ`-linear map to `Λ` exists. The split hypothesis is necessary.

### 5.2 Elliptic units and Katz's measure

In the setting of §5.1, for `Gal(K_∞/K₀)` of rank one or two, prove that `Col(𝒞̄_∞)^χ` generates, as an ideal of `Λ_Ô^χ`, the `χ`-part of Katz's two-variable measure for the ordinary CM type determined by `𝔭` (AutomorphicPadicLFunctionsPartII §8.5), pushed forward to `Gal(K_∞/K)` and with the Euler factors at the primes of the conductor removed as in Rubin's definition of `𝒞`. Consequently `char(U_∞^χ/𝒞̄_∞^χ) = (L_𝔭^χ)` (Yager, Theorem 1, Yager line 201, for class number one and `p ≥ 5` with good reduction above `p`; Rubin 1991, Remark (1) after Theorem 4.1, Rubin91 lines 556–562, which records the identification in the full generality of Rubin's setting; Castella–Grossi–Lee–Skinner, proof of Theorem 1.2.2, CGLS lines 416–418, for the anticyclotomic projection). The route evaluates `Col` on the elliptic-unit system with the reciprocity law of §3.3, whose moments at characters of type `(−r, 0)`, `r ≥ 1`, are the values `L_{pf}(ψ̄, χ, r)` with periods and Euler factors. Katz's measure has the same moments on a Zariski-dense set of characters. Uniqueness of a bounded measure with given moments then identifies the two up to the factor `N(a) − σ_a`, removed as in §2.6. *Needs:* §§5.1, 3.3, 2.6; AutomorphicPadicLFunctionsPartII §8.5.

### 5.3 The Katz form of the main conjecture

Let `p` split under Rubin's hypotheses and `Gal(K_∞/K₀) ≅ ℤ_p` or `ℤ_p²`. Prove that `char(X_∞^χ) = (L_𝔭^χ)` in `Λ_Ô^χ` for every irreducible `χ` of `Δ`, with `L_𝔭` the push-forward of Katz's measure to `Gal(K_∞/K)` (Rubin 1991, Theorem 4.1(i) and Remark (1), Rubin91 lines 545–562). The route is §4.8(i) with §5.2. *Needs:* §§4.8, 5.2.

**Checks.**

- For `K = ℚ(i)` and `p = 5`, the statement holds on all four components of `Δ ≅ ℤ/4`, the trivial one included.
- The statement concerns `X_∞` unramified outside `𝔭`, not outside both primes above `p`. The module unramified outside `p` has rank one in two variables and is not torsion.

### 5.4 Anticyclotomic `θ`-components

Let `p > 2` split in `K` as `v v̄`, `K_∞` the anticyclotomic `ℤ_p`-extension and `Λ = ℤ_p[[Gal(K_∞/K)]]` (scalars extended as needed). Let `θ : G_K → 𝔽_p^×` have conductor divisible only by primes split in `K`, Teichmüller-lifted, with `θ|_{G_v̄} ≠ 1, ω`. Let `K_θ` be its fixed field, `Δ_θ = Gal(K_θ/K)`, `M_θ = ℤ_p(θ) ⊗ Λ^∨`, and `𝔛_∞ = Gal(M_∞/K_∞K_θ)` for `M_∞` the maximal abelian pro-`p` extension unramified outside `v`. Prove that the Greenberg Selmer group `H¹_{F_Gr}(K, M_θ)` is `Hom_cts(𝔛_∞^θ, ℚ_p/ℤ_p)`. Its local conditions are: unramified away from `p`, relaxed at `v`, strict at `v̄`. Assume `p ∤ h_K`. Prove that `char_Λ(𝔛_∞^θ) = (L_θ)`, the `θ`-branch anticyclotomic projection of Katz's measure. In particular `𝔛_∞^θ` is torsion and `λ(𝔛_∞^θ) = λ(L_θ)` (Castella–Grossi–Lee–Skinner, Definition 1.2.1, Theorem 1.2.2 with proof and Remark 1.2.3, pp. 7–8, CGLS lines 380–420). For a branch tamely ramified at `p`, `L_θ` is the projection of Katz's measure on the ray tower of conductor `𝔠p^∞` along the branch character, keeping the `Δ_θ`-invariants in the comparison.

The route has three steps.

1. Restriction to `K_θ` is an isomorphism onto `Δ_θ`-invariants since `p ∤ #Δ_θ`. Shapiro identifies these with the dual of the `θ`-part of the `Σ`-ramified Galois group, and the Greenberg conditions cut out the quotient ramified only at `v`. This step uses the hypothesis `θ|_{G_v̄} ≠ 1, ω` through the local cofreeness and the away-`p` Euler factors of SelmerIwasawaCohomology §3.17.
2. Apply §5.3 to `K_∞K₀` over `K₀ = K_θ·H` in one variable, where `L_𝔭` pushed forward to the anticyclotomic line on the `θ`-branch is `L_θ`. Rubin's condition `p ∤ [K₀ : K]` holds when `p ∤ h_K`; for `p ∣ h_K` the statement is not asserted.
3. `λ`-invariants of generators of the same principal ideal agree.

*Needs:* §§5.1–5.3, 4.8; SelmerIwasawaCohomology §§2.8, 3.17; AutomorphicPadicLFunctionsPartII §8.5.

**Checks.**

- `p > 2` split gives `p ∤ #O_K^×`, since `3` ramifies in `ℚ(√−3)` and `2` does not split in `ℚ(i)`.
- The excluded characters `θ|_{G_v̄} = 1` and `= ω` are those where the local `H⁰` at `v̄`, or its dual, is nonzero (SelmerIwasawaCohomology §3.17). There the strict condition at `v̄` differs from the unramified one by a nonzero local term, and step 1 does not identify the Selmer group with `𝔛_∞^θ`.
- The λ-equality is a consequence of the ideal equality, not conversely. For `Λ = ℤ_p[[T]]` the elements `T` and `p·T` have the same λ-invariant but generate different ideals.

### 5.5 The functional equation of Katz's measure and the λ-identity

For the Katz `p`-adic L-function `L_p(χ, 0)` on `Gal(K(𝔠p^∞)/K)` of Kriz's normalization, prove the functional equation `W((χ)_∞, √D_K)·L_p(χ̌, 0) = L_p(χ, 0)`. Here `χ̌(a) = χ⁻¹(a)N(a)` and `W` is the product of the local Gauss sums at the primes of the conductor (Kriz, Theorem 27, p. 22, Kriz lines 1034–1064). Deduce that in the setting of §5.4, if `θ` and `θ⁻¹ω` both satisfy its hypotheses (or the tamely ramified branch convention is used for the one ramified at `p`), then `λ(L_θ) = λ(L_{θ⁻¹ω})`. In particular `λ(L_ψ) = λ(L_φ)` for `ψ = φ⁻¹ω` (Castella–Grossi–Lee–Skinner, proof of Theorem 2.2.2, (2.11), p. 15, CGLS line 836). The route restricts the functional equation to the anticyclotomic line. There `χ ↦ χ̌` exchanges the branches `θ` and `θ⁻¹ω` and inverts the anticyclotomic variable. The involution `γ ↦ γ⁻¹` preserves λ, and the factor `W` restricted to the line is a unit of `Λ_Ô`, hence of λ-invariant zero. At the primes of the tame conductor, all prime to `p`, the local Gauss sums vary with the anticyclotomic character through group elements of `Λ` times Gauss sums of absolute value a power of the residue norm, which are `p`-adic units. *Needs:* §5.4; AutomorphicPadicLFunctionsPartII §8.5.

**Checks.**

- `χ ↦ χ̌` is an involution: `(χ̌)ˇ(a) = (χ⁻¹N)⁻¹(a)N(a) = χ(a)`.
- On the anticyclotomic line, a character `χ = θ·η` with `η` anticyclotomic satisfies `η ∘ c = η⁻¹`, so `χ̌` has anticyclotomic part `η⁻¹`. This is the inversion of the variable.
- Only λ is asserted, and the involution preserves it. `ι(T) = (1 + T)⁻¹ − 1 = −T·(1 + T)⁻¹` is `T` times a unit, so substituting it into a distinguished polynomial of degree λ gives λ times a unit. Thus `λ(ι(T)) = λ(T) = 1`.

### Examples

For `K = ℚ(√−2)` and `p = 3` (split, since `−2 ≡ 1 mod 3`), the branch `θ = 1` is excluded by `θ|_{G_v̄} ≠ 1`, and `θ = ω` is excluded too, so §5.4 applies only to characters of nontrivial conductor at split primes or nontrivial restriction at `v̄`.

### Dependencies

Layer 4; Layer 3 (§3.3); Layer 2 (§2.6); ColemanPowerSeries Layers 1–2; PadicMeasuresIwasawaAlgebras Layer 1 and §4.1; AutomorphicPadicLFunctionsPartII §8.5; SelmerIwasawaCohomology §§2.8, 3.17; EllipticCurves Layer 1.

## Layer 6: the rational equivariant main conjecture

### 6.1 Equality at regular height-one primes

For every prime `p` and nonzero `f`, prove that at every height-one prime `q` of `R` with `p ∉ q`:

```text
length_{R_q} (h¹/z)_q = length_{R_q} (H²_{pf})_q = length_{R_q} h²_q + Σ_{𝔩 ∣ f, 𝔩 ∤ p} length_{R_q} ℤ_p[[G/D_𝔩]]_q.
```

In particular `length h²_q = length (h¹/z)_q` whenever `q` lies on a component on which the inertia group of every such `𝔩` acts nontrivially (Johnson-Leung–Kings, §§7.1–7.2, Lemmas 7.1, 7.2, 7.6, 7.7 and the argument after Lemma 7.7, pp. 34–36, JLK lines 1412–1487; Burungale–Tian, proof of Theorem 2.1, p. 4, BT lines 155–157). The route extends scalars to `O` containing the values of the characters of `Δ`. At regular `q`, `(R_O)_q` is the localization of one factor `O[[Γ]](χ)` (§0.2), and the projection of `a ζ(f)` to that factor is `∏(1 − χ(𝔩)Frob_𝔩⁻¹)·a ζ(χ)` (Lemma 7.7). §4.6 on that factor gives the first equality via §§1.3 and 2.6. §§1.4–1.5 give the second. *Needs:* §§4.5, 4.6, 1.3–1.5, 2.6, 0.2.

### 6.2 The rational equivariant main conjecture

For every prime `p` and nonzero `f`, prove the equality of ideals of `R[1/p] = ℤ_p[[G_{p∞f}]] ⊗ ℚ`:

```text
ξ((h¹/z)_ℚ) = ξ(h²_ℚ) · ∏_{𝔩 ∣ f, 𝔩 ∤ p} ξ(ℤ_p[[G/D_𝔩]]_ℚ),     equivalently     ξ((h¹/z)_ℚ) = ξ((H²_{pf})_ℚ).
```

This corrects Burungale–Tian, Theorem 2.1 (BT lines 152–153), which prints `ξ(h²_ℚ) = ξ((h¹/z)_ℚ)`. Kato's quotation of Rubin (Kato, Theorem 15.2(2) and 15.6, pp. 251 and 255) has the same imprecision. The printed form holds in the ranges of §6.3. The modules are torsion by §§1.6 and 2.7, so both sides are defined. After inverting `p` every height-one prime is regular, and §6.1 gives the lengths. *Needs:* §§6.1, 1.6, 2.7, 1.5, 0.2.

### 6.3 Where the printed form holds

Prove the following (Burungale–Tian, Theorem 2.1; Johnson-Leung–Kings, Lemma 4.3 and Corollary 5.3):

- (a) If every prime factor of `f` lies above `p`, then `ξ(h²_ℚ) = ξ((h¹/z)_ℚ)`.
- (b) For any `f`, at a height-one prime of `R[1/p]` on the `χ`-component of a character `χ` of `Δ` ramified at every `𝔩 ∣ f` with `𝔩 ∤ p`, `length h²_q = length (h¹/z)_q`.
- (c) If `f` has a prime factor `𝔩 ∤ p`, then on a component where `I_𝔩` acts trivially (the trivial one, for instance) `ξ(h²_ℚ)` and `ξ((h¹/z)_ℚ)` differ by the non-unit factor generated by `1 − Frob_𝔩⁻¹`.

Parts (a) and (b) are immediate from §6.2. For (c), `Frob_𝔩` has infinite order in `G/I_𝔩`, so `1 − Frob_𝔩⁻¹` is a nonzero non-unit there. *Needs:* §§6.2, 1.5.

**Checks.**

- (a) applies to `K = ℚ(i)`, `p = 2`, `f = (1 + i)^3`.
- (c) applies to `K = ℚ(i)`, `p = 5`, `f = (3)`. On the trivial component the printed equality fails by the factor `1 − Frob_{(3)}⁻¹`.
- On the `ψ`-components used in Layer 8, where `f` is the conductor of `ψ`, every `𝔩 ∣ f` is ramified for `ψ`, and (b) gives the printed equality there.

### Examples

For `K = ℚ(√−3)`, `p = 3`, `f = (3)`, every prime of `f` lies above `p`, so (a) gives the printed form. For `p = 2` and `f = (3)`, `(3) = (√−3)²` is a prime power not above 2, and (c) applies on the components where its inertia acts trivially.

### Dependencies

Layers 0–2 and 4.

## Layer 7: CM newforms, induction and descent

### 7.1 Characterizations of CM newforms

Let `f` be a normalized newform of weight `k ≥ 2` and level `N` (`HeckeRing.GL2.Newform`). Prove that the following are equivalent:

- (b) there are an imaginary quadratic `K` and a Hecke character `ψ` of `K` with `L(f, s) = L(ψ, s)`;
- (c) `f` is the newform attached to an algebraic Hecke character `ψ` of an imaginary quadratic `K` of type `(1 − k, 0)`.

Prove also that both imply:

- (a) `f` has a nontrivial self-twist in the sense of ModularForms Layer 9, namely by the quadratic character of `K`.

In that case `ψ` may be taken of type `(1 − k, 0)`, `N = |d_K|·N(f_ψ)`, and the Hecke field lies in `K(ψ(K̂^×))` (Burungale–Tian, §2.2.5, p. 5, BT lines 199–206; Kato, Remark 12.8, p. 223, and 15.10, p. 260). The converse (a) ⇒ (b) is Ribet's theorem on self-twists, as recorded in Kato, 15.10. (b) ⇒ (a) compares Euler factors: `a_ℓ(f) = 0` for `ℓ` inert in `K`, so `f ⊗ ε_K` and `f` have the same eigenvalues away from the level, and strong multiplicity one applies. *Needs:* ModularForms Layers 5, 7, 9; GlobalNumberFields Layers 9–10; ComplexMultiplicationAndExplicitReciprocity §4.2; AutomorphicLFunctionsAndLocalFactors AL.1.

**Checks.**

- The newform 32.2.a.a (`y² = x³ − x`) has CM by `ℚ(i)`, with `ψ` of conductor `(1 + i)^3` and `|d_K|·N(f_ψ) = 4·8 = 32`.
- The newform 27.2.a.a has CM by `ℚ(√−3)`, with `ψ` of conductor `(3) = (√−3)²` and `3·9 = 27`.
- 11.2.a.a has no CM. A CM form of level 11 would need `|d_K| ∣ 11`, so `K = ℚ(√−11)`, in which `2` is inert (`−11 ≡ 5 mod 8`); but `a_2 = −2 ≠ 0`.

### 7.2 The CM induction and its Galois normalization

Let `f` be a CM newform attached to `ψ` of type `(1 − k, 0)`, `L = K(ψ(K̂^×))` and `r = k − 1`. Prove that `V_{L_λ}(f) ≅ Ind_{G_K}^{G_ℚ} V_{L_λ}(ψ)` as `G_ℚ`-representations, (Kato, 15.10, pp. 260–261). Both sides are semisimple, the induction is irreducible over `L_λ` because `V(ψ)` and its conjugate differ at the place `v`, and their Frobenius traces agree at the good primes by §7.1. Chebotarev density and Brauer–Nesbitt then give the isomorphism. Fix an `L`-isomorphism `S(ψ) ≅ S(f) ⊗_F L` (Kato, (15.11.1)). Prove that there is a unique `G_ℚ`-isomorphism `V_{L_λ}(f) ≅ Ind V_{L_λ}(ψ)` whose induced map on `D^r_dR` is the fixed one (Kato, Lemma 15.11(1) with proof, pp. 260–261, and the paragraph after it, p. 263). This (15.11.2) is the only Galois identification used; the archimedean normalization of §8.1 is never used as one. *Needs:* §§3.1, 7.1; AutomorphicGaloisRepresentations §§1.5, 7.3; AutomorphicGaloisRepresentationsPartII AG2.0; ComplexMultiplicationAndExplicitReciprocity §4.2; PadicHodgeRegulators §1.4.

**Checks.**

- For `k = 2` and `f` attached to a CM elliptic curve over `ℚ`, the isomorphism is the one induced by the curve (ComplexMultiplicationAndExplicitReciprocity §4.2, weight-two CM induction comparison).
- Uniqueness: an automorphism of the irreducible induction is a scalar `c ∈ L_λ^×`, and the de Rham condition forces `c = 1`. Without the de Rham normalization the isomorphism is defined only up to `L_λ^×`.
- Restricted to `G_K`, the induction is `V(ψ) ⊕ V(ψ ∘ c)`. Its two Hodge–Tate weights at the embedding over `λ` are `0` and `r = k − 1`, as for `V(f)`.

### 7.3 Kato's CM comparison map

For a finite place `λ` of `L` and a `Gal(ℚ̄/K)`-stable lattice `T ⊂ V_{L_λ}(ψ)` with induction `T̃`, define the `O_λ[[G_{p∞f}]]`-linear map (Kato, (15.12.1), p. 263):

```text
H¹_{p∞f}(T) → H¹(T̃)
```

It is corestriction from `K(p^n f)` to `K ⊗ ℚ(ζ_{p^n})` (a field when `K ⊄ ℚ(ζ_{p^n})`, a finite étale algebra otherwise), followed by Shapiro and (15.11.2), in the limit. *Needs:* §§1.1, 7.2, 3.1, 0.1; SelmerIwasawaCohomology §§3.1–3.2.

- The map is linear over `O_λ[[G_{p∞f}]] → O_λ[[G_∞]]`, or over `→ O_λ[[G′_∞]]` when `K ⊂ ℚ(μ_{p^∞})`.
- At each level `n` it is the finite-level corestriction followed by Shapiro.
- It is compatible with the integral and rational versions and with change of lattice.

**Checks.**

- At level `n = 0` with `K ⊄ ℚ(μ_{p^∞})`, it is corestriction from `K(f)` to `K` followed by Shapiro to `ℚ`.
- For `m ≥ n`, the projection to level `n` of the image equals the corestriction of its level-`m` value. This tests the transition maps, which a map sending zero to zero alone would not.
- A map built from the archimedean isomorphism (15.11.3) as a Galois identification is not this map for `k ≥ 3`, since that isomorphism is not known to be Galois-equivariant.

### 7.4 Twisting the tower cohomology to CM coefficients

Let `ψ` have conductor `f`, `T ⊂ V_{L_λ}(ψ)` a stable lattice and `χ_T : G_{p∞f} → O_λ^×` the character of `Gal(ℚ̄/K)` on `T(−1)`. Prove two things (Kato, 15.15 and proof of Proposition 15.17, p. 265, and proof of Lemma 15.13, p. 264; Johnson-Leung–Kings, Lemma 4.7, p. 22). First, `H^q_{p∞f}(T) ≅ (H^q_{p∞f}(ℤ_p(1)) ⊗ O_λ) ⊗ T(−1)`; with a basis `t` of `T(−1)`, `x ↦ x ⊗ t` is `Tw_{χ_T⁻¹}`-semilinear and carries `z ⊗ O_λ` to the span of `z_{p∞f} ⊗ T(−1)` at height one. Second, `H¹_{p∞f}(T)` is torsion-free of generic rank one, and `H¹_{p∞f}(V_{L_λ}(ψ))_q` is free of rank one at every height-one prime `q` lying over a height-zero prime of `O_λ[[G_∞]]`. *Needs:* §§1.1, 1.3, 1.7, 2.6, 3.1.

### 7.5 Kato's descent lemma

Assume `K ⊄ ℚ(μ_{p^∞})`. Let `f` be the conductor of `ψ`, `Δ` the torsion of `G_{p∞f}`, `𝔭` a prime of `O_λ[[G_∞]]` and `q` its inverse image in `O_λ[[G_{p∞f}]]`. If `2` and `#Δ` are invertible in the residue field of `𝔭`, prove three things (Kato, Lemma 15.13 and proof, p. 264):

1. Both localizations are regular local rings, and the kernel of `O_λ[[G_{p∞f}]]_q → O_λ[[G_∞]]_𝔭` is principal, generated by some `a`.
2. `H²_{p∞f}(T)_q/a ≅ H²(T̃)_𝔭`.
3. `0 → H¹_{p∞f}(T)_q/a → H¹(T̃)_𝔭 → H²_{p∞f}(T)_q[a] → 0` is exact.

The hypothesis on the residue field holds whenever `p ∉ 𝔭`, since that residue field has characteristic zero (Burungale–Tian, footnote 4, p. 5, BT line 228). The route uses the coefficient sequence `0 → T ⊗ O_λ[[G_{p∞f}]] →(a) T ⊗ O_λ[[G_{p∞f}]] → T ⊗ O_λ[[G_∞]] → 0`, with `σ` acting through `σ⁻¹`. Inertia at `v ∤ p` acts through `Δ`, so the cokernel of the invariants is killed by `#Δ`, and the `j_*` long exact sequence localizes. *Needs:* §§7.3, 7.4, 0.1, 1.1; SelmerIwasawaCohomology §3.3.

### 7.6 Descent when `K` lies in the cyclotomic tower

Assume `K ⊂ ℚ(μ_{p^∞})`. Prove that this happens exactly for `K = ℚ(√−p)` with `p ≡ 3 mod 4`, and for `p = 2` with `K = ℚ(i)` or `ℚ(√−2)`. With `G′_∞ = Gal(ℚ(μ_{p^∞})/K)` and `H^q(T) = lim_n H^q(ℤ[ζ_{p^n}, 1/p], T)`, prove that `H^q(T̃) ≅ H^q(T) ⊗_{O_λ[[G′_∞]]} O_λ[[G_∞]]`, and that §7.5 holds with `G′_∞` and `H^q(T)` in place of `G_∞` and `H^q(T̃)` (Kato, 15.14, p. 264, and the last sentences of 15.15 and of the proof of Proposition 15.17, p. 265). The classification: the quadratic subfields of `ℚ(μ_{p^∞})` are `ℚ(√p*)` for odd `p`, `p* = (−1)^{(p−1)/2}p`, and `ℚ(i)`, `ℚ(√2)`, `ℚ(√−2)` for `p = 2`. *Needs:* §§7.5, 7.4; Mathlib `IsCyclotomicExtension`.

**Checks.**

- `K = ℚ(i)`, `p = 2`: contained. `K = ℚ(√−3)`, `p = 3`: contained, since `ℚ(√−3) = ℚ(ζ_3)`. `K = ℚ(√−7)`, `p = 7`: contained.
- `K = ℚ(i)`, `p = 5`: not contained, since `5 ≡ 1 mod 4` and the only quadratic subfield of `ℚ(μ_{5^∞})` is `ℚ(√5)`.
- `ζ_8 + ζ_8³ = i√2`, so `ℚ(√−2) ⊂ ℚ(ζ_8)`, while `ℚ(√2)` is real and not a CM field.

### 7.7 Kato's length lemma

Let `A` be a noetherian commutative ring, `C` the category of finitely generated `A`-modules supported in codimension at least two and `G(C)` its Grothendieck group. Let `M` be a finitely generated `A`-module supported in codimension at least one, and `a ∈ A` such that `M_𝔮 = 0` at every height-one prime `𝔮` containing `a`. Prove that `M/aM` and `M[a]` lie in `C`, and that (Kato, Lemma 14.15 and proof, pp. 243–244):

```text
[M/aM] − [M[a]] = Σ_{𝔮 ∌ a, ht 𝔮 = 1} length_{A_𝔮}(M_𝔮) · [A/(𝔮 + aA)]   in G(C).
```

The route filters `M` with pieces in `C` or isomorphic to `A/𝔮`, `𝔮` of height one not containing `a`. Both sides are additive by the snake lemma. *Needs:* Mathlib `Module.length`, `IsLocalization.AtPrime`, `Ideal.height`; PadicMeasuresIwasawaAlgebras §4.1.

**Checks.**

- `A = ℤ_p[[T]]`, `M = A/(T)`, `a = p`: `M/aM = 𝔽_p`, `M[a] = 0`, and the right side is `length(M_{(T)})·[A/(T, p)] = [𝔽_p]`.
- `A = ℤ_p[[T]]`, `M = A/(p)`, `a = p`: the height-one prime `(p)` contains `a` and `M_{(p)} ≠ 0`. The hypothesis fails, and indeed `M/aM = M` is not in `C`.
- For `A` two-dimensional local, classes in `G(C)` are lengths, so the identity becomes the equality of integers used in §8.5.

### 7.8 Kato's lattice inequality for CM forms

Let `λ ∣ p` be a finite place of `L`, `𝔭` a height-one prime of `O_λ[[G_∞]]`, and assume either `p ∉ 𝔭`, or `p ∤ #μ(H)` and `p ∤ #Δ` (Rubin's condition (b)). For a stable lattice `T ⊂ V_{L_λ}(ψ)`, let `Z(ψ, T)_𝔭` be the submodule of `H¹(T̃)_𝔭` generated by the image of `z_{p∞f} ⊗ T(−1)` under §7.3. Prove that `length H²(T̃)_𝔭 ≤ length (H¹(T̃)_𝔭/Z(ψ, T)_𝔭)` (Kato, Proposition 15.17 and proof, p. 265). This version differs from the rational Euler-system bound of PadicFamilies §4.0.3 in two ways: it is stated for the elliptic-unit lattice `Z(ψ, T)`, and it holds at primes containing `p` under condition (b). The route applies §7.7 to `H²_{p∞f}(T)_q` and to `H¹_{p∞f}(T)_q/A·(z_{p∞f} ⊗ T(−1))`, with §§7.5–7.6 and the twisted §4.4 at the height-one primes of `A = O_λ[[G_{p∞f}]]_q`. Kato's proof prints the reference as Lemma 14.12. *Needs:* §§7.3–7.7, 4.4.

### Examples

For `f = 32.2.a.a` and `p = 2`, `K = ℚ(i) ⊂ ℚ(μ_{2^∞})` and §7.6 applies with `G′_∞ = 1 + 4ℤ_2`. For `f = 27.2.a.a` and `p = 5`, `K = ℚ(√−3) ⊄ ℚ(μ_{5^∞})` and §7.5 applies at every `𝔭 ∌ 5`.

### Dependencies

Layers 0–4; ModularForms Layers 5, 7, 9; GlobalNumberFields Layers 9–10; ComplexMultiplicationAndExplicitReciprocity §4.2; AutomorphicGaloisRepresentations §§1.5, 7.3; AutomorphicGaloisRepresentationsPartII AG2.0; AutomorphicLFunctionsAndLocalFactors AL.1; PadicHodgeRegulators §1.4; SelmerIwasawaCohomology §§3.1–3.3; PadicMeasuresIwasawaAlgebras §4.1; Mathlib `IsCyclotomicExtension`, `Module.length`, `IsLocalization.AtPrime`, `Ideal.height`.

## Layer 8: Kato's main conjecture for CM newforms at every prime

### 8.1 The archimedean normalization of the induction

With (15.11.1) fixed, let `Ṽ_L(ψ) = V_L(ψ) ⊕ ιV_L(ψ)` be induced from `V_L(ψ)` to `Gal(ℂ/ℝ)`. Prove that there is a unique `Gal(ℂ/ℝ)`-isomorphism `Ṽ_L(ψ) ≅ V_L(f)` under which `per_f` corresponds to `per_ψ` (Kato, Lemma 15.11(2) with proof, pp. 261–262). It serves only to transport `γ ∈ V_L(ψ)` to `γ′ ∈ V_L(f)`. The route fixes a sign `±` and chooses `m ≥ 1` and `z ∈ S(ψ) ⊗ ℚ(ζ_m)`, `z′ ∈ S(f) ⊗ ℚ(ζ_m)` whose `χ`-twisted period sums are `L_S(ψ̄, χ, k − 1)γ` and `L_S(f*, χ, k − 1)γ′` for every `χ` of sign `±`, with some value nonzero. This uses §3.2, KatoEulerSystems §§4.2 and 5.3, and `L(f*, s) = L(ψ̄, s)`. The ratio of the images is fixed by `Gal(L(ζ_m)/L)`, hence lies in `L^×`. *Needs:* §§7.2, 3.1, 3.2; KatoEulerSystems §§4.2, 5.3.

### 8.2 The reciprocity law in `V(f)`-coefficients

Let `γ ∈ V_L(ψ)` with image `γ′ ∈ V_L(f)` under §8.1, `f` the conductor of `ψ` and `n ≥ 0`. Consider the composite of the Tate-twisted §7.3 with specialization at level `n`, localization at `p` and the dual exponential, extended to the localization at the non-zero-divisors invertible in `ℚ_p[Gal(ℚ(ζ_{p^n})/ℚ)]`. Prove that it sends `z_{p∞f} ⊗ γ` into `S(f) ⊗_F L ⊗ ℚ(ζ_{p^n})`, and that for every character `χ` of `Gal(ℚ(ζ_{p^n})/ℚ)` (Kato, (15.12.2), p. 263):

```text
Σ_σ χ(σ) per_f(σ(image)) = L_{{p}}(f*, χ, k − 1) · (γ′)^±,   ± = χ(−1).
```

Here `L_{{p}}` omits only the Euler factor at `p`. The route applies §3.3 and translates the periods by (15.11.1) and §8.1. It uses `L_{pf}(ψ̄, χ ∘ N_{K/ℚ}, k − 1) = L_{{p}}(f*, χ, k − 1)`, which holds because the Euler factors of `f*` at the primes of `f` are trivial: `ψ̄` is ramified there. *Needs:* §§3.3, 7.3, 7.2, 8.1.

**Checks.**

- At `k = 2`, `r = 1` the shape agrees with KatoEulerSystems §5.3 at `r = k − 1 = 1`, where `(2πi)^{k−r−1} = 1`.
- With `f` strictly smaller than the conductor (a larger modulus), extra Euler factors at the added primes remain, and the value is not `L_{{p}}`. The statement requires `f` to be exactly the conductor.
- For `χ` even (`χ(−1) = 1`) only `(γ′)^+` occurs. For `γ` with `γ^+ = 0` every even twist has value zero.

### 8.3 The equivariant equality on `ψ`-components

Let `ψ` have conductor `f`, `T ⊂ V_{L_λ}(ψ)` a stable lattice and `A = O_λ[[G_{p∞f}]]`. Take a height-one prime `q′` of `A` with `p ∉ q′`, contained in the inverse image `q` of a prime `𝔭 ∌ p` of `O_λ[[G_∞]]` (of `O_λ[[G′_∞]]` when `K ⊂ ℚ(μ_{p^∞})`). Prove that `length H²_{p∞f}(T)_{q′} = length (H¹_{p∞f}(T)/A·(z_{p∞f} ⊗ T(−1)))_{q′}` (Kato, 15.15 and the proof of Proposition 15.17, p. 265; Burungale–Tian, proof of Theorem 2.6, p. 5, BT lines 213–218). The route twists by §7.4 to the regular prime `Tw_{χ_T}(q′)` and applies §6.1. It then kills the Euler terms. For `g ∈ I_𝔩`, `g` has finite order and maps to 1 in `G_∞`, so `g − 1 ∈ q`. A height-one `q′ ⊂ q` contains `g − ζ` for a root of unity `ζ` with `ζ − 1 ∈ q`, and `p ∉ q` forces `ζ = 1`. After the twist the Euler module is killed by `χ_T(g)⁻¹g − 1 ≡ χ_T(g)⁻¹ − 1` modulo `q′`, which is nonzero in characteristic zero because `χ_T|_{I_𝔩} = ψ|_{I_𝔩} ≠ 1`. Finally §1.4 replaces `h²` by `H²_{p∞f}(ℤ_p(1))`. *Needs:* §§6.1, 7.4, 1.4, 1.5, 2.6.

### 8.4 Elliptic units become Beilinson–Kato elements

Let `f` be a CM newform attached to `ψ`, with coefficients enlarged to `L ⊃ F`, and `γ ∈ V_L(ψ)` with image `γ′`. Prove that §7.3 sends `z_{p∞f} ⊗ γ ⊗ (ζ_{p^n})_n^{⊗(−1)}` to `z_{γ′}(f)`, the value at `γ′` of Kato's zeta morphism of KatoEulerSystems §5.1, extended `L`-linearly. Consequently the `Λ_ℚ`-span of the images of `z_{p∞f} ⊗ V_L(ψ)(−1)` is `Z(f) ⊗ L` (Kato, 15.16 and (15.16.1), p. 265; Burungale–Tian, proof of Theorem 2.6, BT lines 215–216). The route goes through `H¹(V(f))`, free of rank one over `Λ_ℚ` (KatoEulerSystems §4.4), which contains both elements. Their dual-exponential images agree at every finite level and character, by §8.2 and KatoEulerSystems §5.3: both equal `L_{{p}}(f*, χ, k − 1)(γ′)^±`, since (15.11.1) and §8.1 were fixed compatibly. At the infinitely many characters with nonzero value (KatoEulerSystems §4.2), the dual exponential is injective on the specialized rank-one line. The difference therefore specializes to zero on a dense set and vanishes in the free rank-one module. *Needs:* §§8.2, 8.1, 7.3, 7.2, 2.6; KatoEulerSystems §§4.2, 4.4, 5.1, 5.3.

**Checks.**

- The comparison is rational. An integral identification of the lattices `Z(ψ, T)` and `Z(f, T)` is not claimed.
- The conjugation law `z_{ιγ} = −σ_{−1}z_γ` of KatoEulerSystems §5.1 holds for the elliptic side as well. The twist by `(ζ_{p^n})^{⊗(−1)}` interchanges the parity of `χ(−1)` with the sign of `γ′` as in §8.2. Without that twist the parities would not match.
- For `f = 32.2.a.a` and `p = 2` the statement identifies the elliptic units of the 2-power ray tower of `ℚ(i)` with the Beilinson–Kato element of the congruent-number curve, after the base change of §7.6.

### 8.5 From the equivariant equality to Kato's equality

In the setting of §7.5 (or §7.6), let `𝔭 ∌ p`, `q` its inverse image, and `A = O_λ[[G_{p∞f}]]_q`, a regular local ring of dimension two whose kernel to the cyclotomic localization is generated by a prime element `a`. Put `M₁ = H²_{p∞f}(T)_q` and `M₂ = H¹_{p∞f}(T)_q/A·(z_{p∞f} ⊗ T(−1))`. Suppose `length (M₁)_{q′} = length (M₂)_{q′}` at every height-one prime `q′` of `A`. Prove that then `length H²(T̃)_𝔭 = length (H¹(T̃)_𝔭/Z(ψ, T)_𝔭)` (Kato, proof of Proposition 15.17, p. 265, and Lemma 14.15, pp. 243–244). Kato's argument gives only the inequality; Burungale–Tian's appeal to Kato §15 (BT lines 213–218) needs this equality. The route:

1. `M₁` and `M₂` vanish at `aA`: `H²` vanishes there and `z` generates `H¹` there, as in KatoEulerSystems §4.4.
2. §7.7 gives `[M₁/aM₁] − [M₁[a]] = [M₂/aM₂] − [M₂[a]]` as lengths.
3. By §7.5, `M₁/aM₁ = H²(T̃)_𝔭`, and `H¹(T̃)_𝔭/Z(ψ, T)_𝔭` is an extension of `M₁[a]` by `M₂/aM₂`.
4. `M₂[a] = 0`. The zeta generator embeds the torsion-free rank-one `H¹` as `A ⊂ H ⊂ Frac(A)` with `H_{(a)} = A_{(a)}`. If `ah ∈ A` with `h ∈ H`, then `h ∈ a⁻¹A ∩ A_{(a)} = A`, because `A` is factorial and `a` prime.
5. The `M₁[a]` terms cancel, giving the equality.

*Needs:* §§7.5–7.7, 7.4, 2.6; KatoEulerSystems §4.4.

**Checks.**

- In a two-dimensional regular local ring `A` with regular parameters `x, y` and `a = x`, take `M₁ = M₂ = A/(y)`. Then `M_i/xM_i = A/(x, y)` has length 1 and `M_i[x] = 0`, and §7.7 gives `1 = length(M_i)_{(y)}·length A/(x, y) = 1`.
- With `M₁ = A/(x)`, supported at the prime containing `a`, the hypothesis of §7.7 fails: `M₁/xM₁ = A/(x)` has dimension one and is not in `C`.
- If `z` did not generate `H¹` at `aA`, `M₂` would be nonzero at the prime containing `a` and §7.7 would not apply. Step 1 is needed.
- With `A` not factorial, `a⁻¹A ∩ A_{(a)}` can be larger than `A`. The regularity in §7.5 supplies factoriality.

### 8.6 Kato's main conjecture for every CM newform and every prime

Let `f` be a normalized CM newform of weight `k ≥ 2` (§7.1), `p` any prime, `F` its Hecke field, `λ ∣ p` and `V = V_{F_λ}(f)`. Let `H^q(V)` be Kato's cyclotomic Iwasawa cohomology (ModularIwasawaMainConjectures §0.6) and `Z(f) ⊂ H¹(V)` the `Λ_ℚ`-submodule of Beilinson–Kato elements (KatoEulerSystems §5.1). Prove that, as ideals of `Λ_ℚ = O_λ[[G_∞]][1/p]` (Burungale–Tian, Theorem 2.6 and its proof, p. 5, BT lines 208–218):

```text
ξ(H²(V)) = ξ(H¹(V)/Z(f)).
```

This is the rational form `KMC_ℚ` of ModularIwasawaMainConjectures §0.7 for CM forms. There is no hypothesis of ordinarity, good reduction, residual irreducibility or `p ∤ 6`. `p = 2` with `K = ℚ(i)` or `ℚ(√−2)`, and `p` dividing `#Δ`, are included. The route has three steps.

1. Extend coefficients to `L` and identify `V_{L_λ}(f)` with the induction by §7.2; characteristic ideals descend along the faithfully flat `O_λ[[G_∞]] → O_v[[G_∞]]`.
2. By §8.4, `Z(f) ⊗ L` is `Z(ψ, T) ⊗ ℚ` for any lattice `T`.
3. At each height-one `𝔭 ∌ p`, §8.3 supplies the hypothesis of §8.5, which gives equal lengths, using §7.5 or §7.6 according to whether `K ⊄` or `K ⊂ ℚ(μ_{p^∞})`.

Both modules are torsion (KatoEulerSystems §4.4), so equal lengths at every height-one prime of `Λ_ℚ` give equal ideals. *Needs:* §§8.3–8.5, 7.1, 7.2, 7.5, 7.6; KatoEulerSystems §§4.4, 5.1; ModularIwasawaMainConjectures §§0.1, 0.6, 0.7; PadicMeasuresIwasawaAlgebras §4.6.

**Checks.**

- `f = 32.2.a.a`, `p = 2`: `ξ(H²(V)) = ξ(H¹(V)/Z(f))` over `ℤ_2[[ℤ_2^×]][1/2]`, through the contained case.
- `f = 27.2.a.a`, `p = 3`: the contained case `ℚ(√−3) = ℚ(ζ_3)`.
- The integral equality is not asserted. Over `ℤ_p[[T]]` the ideals `(p)` and `(1)` agree after inverting `p`, so the rational statement says nothing at the prime `(p)`.

### 8.7 Normalization dictionary

Prove that §8.6 is stated with the following conventions, which are those of ModularIwasawaMainConjectures §§0.6–0.7 and of its consumers (Burungale–Tian, §§2.2.1–2.2.4, pp. 4–5, BT lines 160–196):

- `V` is Kato's cohomological realization, dual to the covariant one.
- `H^q(V) = lim_n H^q(ℤ[ζ_{p^n}, 1/p], j_*T) ⊗ ℚ`, in the `j_*` convention.
- `Λ = O_λ[[G_∞]]` for the full `G_∞ ≅ ℤ_p^×`, its torsion `Δ` included, so the equality holds on every character component.
- `Z(f)` is generated by `z_γ(f)` for all `γ ∈ V`, normalized by Kato's Theorem 12.5(1).
- Characteristic ideals are taken over `Λ ⊗ ℚ`.

The central specialization at the kernel of `σ_c ↦ c^{−k/2}` is at a prime of `Λ` not containing `p`, so the rational equality applies there (Burungale–Tian, proof of Theorem 3.1, p. 6, BT lines 231–243). *Needs:* §8.6; ModularIwasawaMainConjectures §§0.6–0.7; SelmerIwasawaCohomology §§3.7, 3.15.

**Checks.**

- The torsion `Δ` of `G_∞` is `ℤ/(p − 1)` for odd `p` and `ℤ/2` for `p = 2`. A formulation over `O_λ[[Γ]]` alone would see only the trivial component.
- With extension by zero in place of `j_*`, `H²` at a prime `ℓ ∣ N` where `V` is ramified would acquire a local term and change `ξ(H²)`.
- For `k = 2` the character is `σ_c ↦ c⁻¹`. Its kernel is a height-one prime of `Λ` with quotient `O_λ`, of characteristic zero, so it does not contain `p`. For odd `p` its restriction to `Δ = μ_{p−1}` is `ω⁻¹`, so it lies on the `ω⁻¹`-component.

### Examples

For the congruent-number curve `y² = x³ − x` (32.2.a.a), `p = 2`, `f = (1 + i)^3`: every prime of `f` lies above 2, so Layer 6 has no Euler terms, `Δ` is trivial (§0.1) and Layer 7 uses the contained case. For 27.2.a.a at `p = 3`, `f = (3)` lies above 3, and again there are no Euler terms.

### Dependencies

Layers 0–4, 6 and 7; KatoEulerSystems §§4.2, 4.4, 5.1, 5.3; ModularIwasawaMainConjectures §§0.1, 0.6, 0.7; SelmerIwasawaCohomology §§3.7, 3.15; PadicMeasuresIwasawaAlgebras §4.6.

## Downstream consumers

The rank-zero `p`-converse for CM elliptic curves and CM newforms at every prime, and its congruent-number and cube-sum applications (CMRankZeroConverse), use §8.6 with the dictionary of §8.7. The inert anticyclotomic main conjecture (InertAnticyclotomicCMMainConjecture) uses the elliptic units of §2.4 and the `χ`-part equality of §4.8(ii). The Eisenstein-prime anticyclotomic arguments of Castella–Grossi–Lee–Skinner use §§5.4–5.5.

## Worked examples

- **The Gaussian field at `p = 2`.** `K = ℚ(i)`, `p = 2`, `f = (1)`: `Δ = 1`, `G ≅ ℤ_2²`, `R` is a domain, `h¹` is torsion-free of rank one, `z_{2∞} ≠ 0`, and §4.5 is an integral equality over `ℤ_2[[ℤ_2²]]`. Rubin's hypothesis excludes this case (`μ(K) = μ_4`); Johnson-Leung–Kings' theorem does not.
- **A tame Euler factor.** `K = ℚ(i)`, `p = 5`, `f = (3)`: on the components where the inertia at `(3)`, cyclic of order 8, acts trivially, `ξ((h¹/z)_ℚ) = ξ(h²_ℚ)·(1 − Frob_{(3)}⁻¹)`. On the other components the factor is a unit.
- **A residue-characteristic obstruction in Lemma 15.13.** For `K = ℚ(i)`, `p = 2` and `f = (3)`, `Δ ≅ ℤ/8` (§0.1), so `#Δ` is not invertible in residue characteristic 2, and the hypothesis of §7.5 fails at primes whose residue field has characteristic 2. Only primes not containing `p` enter §8.6.

## References

- **BT.** Ashay A. Burungale and Ye Tian, *A rank zero p-converse to a theorem of Gross–Zagier, Kolyvagin and Rubin*, Annals of Mathematics 203 (2026); read as [arXiv:2506.03465v2](https://arxiv.org/abs/2506.03465v2), whose page numbers are used. §2.1.1, Theorems 2.1, 2.3, 2.4, 2.6, Remark 2.7, footnotes 3–4, pp. 3–5; proof of Theorem 3.1, p. 6.
- **Kato.** Kazuya Kato, *p-adic Hodge theory and values of zeta functions of modular forms*, Astérisque 295 (2004), 117–290, [Numdam](https://www.numdam.org/item/AST_2004__295__117_0.pdf). 3.8, 8.2–8.3, Theorems 12.4–12.5, Remark 12.8, Conjecture 12.10, Lemma 14.15, §15.
- **JLK.** Jennifer Johnson-Leung and Guido Kings, *On the equivariant and the non-equivariant main conjecture for imaginary quadratic fields*, J. reine angew. Math. 653 (2011), 75–114; read as [arXiv:0804.2828v2](https://arxiv.org/abs/0804.2828v2), whose numbering is used.
- **Rubin91.** Karl Rubin, *The "main conjectures" of Iwasawa theory for imaginary quadratic fields*, Inventiones Mathematicae 103 (1991), 25–68, [GDZ](https://gdz.sub.uni-goettingen.de/download/pdf/PPN356556735_0103/LOG_0009.pdf). §§1, 4, Theorem 4.1 and Remarks.
- **HuberKings.** Annette Huber and Guido Kings, *Bloch–Kato conjecture and main conjecture of Iwasawa theory for Dirichlet characters*, Duke Math. J. 119 (2003); [arXiv:math/0101071v2](https://arxiv.org/abs/math/0101071v2). Proposition 2.3.1.
- **CGLS.** Francesc Castella, Giada Grossi, Jaehoon Lee and Christopher Skinner, *On the anticyclotomic Iwasawa theory of rational elliptic curves at Eisenstein primes*, Inventiones Mathematicae 227 (2022), 517–580; read as [arXiv:2008.02571v2](https://arxiv.org/abs/2008.02571v2). Definition 1.2.1, Theorem 1.2.2, Remark 1.2.3, (2.11).
- **Kriz.** Daniel Kriz, *Generalized Heegner cycles at Eisenstein primes and the Katz p-adic L-function*, Algebra & Number Theory 10 (2016), 309–374; read as [arXiv:1512.05032v1](https://arxiv.org/abs/1512.05032v1). Theorem 27.
- **Yager.** Rodney Ian Yager, *On two variable p-adic L-functions*, PhD thesis, Australian National University (1981), [ANU Open Research](https://openresearch-repository.anu.edu.au/items/7c4519f4-e0eb-49ce-a2d9-e5777fa9483d). Chapters 3–8 and Theorem 1.
