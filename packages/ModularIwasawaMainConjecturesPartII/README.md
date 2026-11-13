# Roadmap: main conjectures for modular forms and their families, part II — CM forms at every prime

**Summary.** ModularIwasawaMainConjectures formulates Kato's cyclotomic main conjecture for a modular form (its §§0.6–0.7) and proves it in the ordinary, signed and family ranges where the automorphic reverse bounds apply. It stops before the forms with complex multiplication, where the residual image is dihedral and those bounds do not apply, and before the prime 2. This Part II proves the rational form of Kato's main conjecture for every CM newform of weight `k ≥ 2` at every prime `p`, including `p = 2` and `p = 3` (Burungale–Tian, Theorem 2.6). The route goes through the imaginary quadratic CM field `K`. Over the two-variable ray tower `K(p^∞f)` it builds the tower Iwasawa cohomology, the norm limits `h¹` of `p`-units and `h²` of class groups, Kato's CM theta functions and the elliptic units, Kato's CM realizations and his reciprocity law for elliptic units, and the elliptic-unit Euler system. With these it proves Johnson-Leung and Kings' main conjecture for every finite-order character at every prime and Rubin's two-variable main conjecture with its all-prime classical form. At a split prime it proves the Katz-measure form, its anticyclotomic `θ`-components and the λ-invariant identity used by Castella–Grossi–Lee–Skinner. It then proves the rational equivariant main conjecture over `ℤ_p[[Gal(K(p^∞f)/K)]] ⊗ ℚ`, with the Euler factors at the primes of `f` prime to `p` that its printed form omits. It proves that the elliptic units generate the CM ray-tower Iwasawa cohomology at the height-one primes over height-zero cyclotomic primes, and that their image generates the cyclotomic `H¹` at every height-zero prime. With the module structure of Kato's Theorem 12.4, which KatoEulerSystems supplies for every CM form, it finally descends the equivariant equality to the cyclotomic tower over `ℚ` through Kato's comparison of elliptic units with Beilinson–Kato elements. The descent proves an equality, not just Kato's one-sided inequality.

## Scope and ownership

This roadmap owns the Iwasawa theory of elliptic units over imaginary quadratic fields at every prime and its CM-modular consequences:

- the arithmetic specialization of the completed group algebra to the CM ray group `Gal(K(p^∞f)/K)`, its normalization after inverting `p`, and the characteristic ideals over it (Layer 0);
- the tower modules `h¹`, `h²`, their Kummer and Brauer comparisons, the Euler-factor sequence for `H²` and the weak Leopoldt and rank-one statements for the ray tower (Layer 1);
- the isogeny law of Kato's CM theta functions with its degree condition, the Galois action on canonical CM pairs and their reduction, standard elliptic units in Kato's normalization with their Euler-system relations, the elliptic-unit module, the auxiliary-free element at every prime and the cotorsion (Layer 2);
- Kato's realizations `V(ψ)`, `S(ψ)` of a Hecke character of type `(−r, 0)` for every `r ≥ 1` at every prime, and his explicit reciprocity law for elliptic units at every prime (Layer 3);
- the elliptic-unit Euler system, the Tamagawa number conjecture at `s = 0` with scalar coefficients for abelian extensions of `K`, Rubin's Euler-system bound, Johnson-Leung–Kings' main conjecture and Rubin's Theorem 4.1 (Layer 4);
- the Coleman power series of a height-one formal group over the completion `Ô` of the maximal unramified extension of `ℤ_p`, in particular of a CM curve at a place above a split prime where it has good reduction, the split-prime two-variable Coleman map, the elliptic-unit/Katz identification, the Katz form of the main conjecture with its one-variable specializations, the anticyclotomic `θ`-component theorem and the functional-equation λ-identity (Layer 5);
- the rational equivariant main conjecture with its Euler factors (Layer 6);
- the comparison of CM newforms with Hecke characters, the identification of Kato's realization with the inducing character and its de Rham normalization, Kato's CM comparison map, the descent lemmas including the contained case `K ⊂ ℚ(μ_{p^∞})`, Kato's length lemma, the generation of CM Iwasawa cohomology by elliptic units at height zero, and Kato's lattice inequality for the elliptic-unit lattice (Layer 7);
- the archimedean normalization of the induction, the reciprocity law in `V(f)`-coefficients, the bridge from elliptic units to Beilinson–Kato elements, the equality descent and the endpoint (Layer 8).

It leaves the following to their owners, by section:

- The formulation of Kato's main conjecture, the modular Iwasawa datum and Kato's Iwasawa cohomology `H^i(T)` over `ℤ[ζ_{p^n}, 1/p]` are ModularIwasawaMainConjectures §§0.1, 0.6 and 0.7. The endpoint here is the rational form `KMC_ℚ` of §0.7 for CM forms; it is not a second definition.
- Kato's zeta morphism `γ ↦ z_γ(f)` and the zeta submodule `Z(f)` are KatoEulerSystems §5.1, their critical interpolation is KatoEulerSystems §5.3, and the nonvanishing of twisted critical values (Jacquet–Shalika on the edge, Rohrlich's finiteness at the centre) is KatoEulerSystems §4.2. The rational module structure of `H¹`, `H²` (Kato's Theorem 12.4: after inverting `p`, `H²` is torsion and `H¹` is free of rank one; for a lattice, `H¹` is torsion-free) is KatoEulerSystems §4.4 for every admissible pair at every prime. Every CM pair is admissible there, and the case `K ⊂ ℚ(μ_{p^∞})` is included. Its rational clauses are those of PadicFamilies §4.0.3, which includes CM forms through elliptic units. The rational Euler-system inequality of Theorem 12.5(3), CM forms included, is PadicFamilies §4.0.3 with KatoEulerSystems §7.2. §§8.4 and 8.6 take the module structure from KatoEulerSystems §4.4. Neither result is restated here; two finer statements are proved instead. §7.8 says which elements generate: the elliptic units generate the ray-tower `H¹` at the height-one primes over height-zero cyclotomic primes, where the ray-tower `H²` vanishes, and their image generates the cyclotomic `H¹` at every height-zero prime. §7.9 is the inequality for the elliptic-unit lattice `Z(ψ, T)`, which also holds at primes containing `p` under Rubin's condition (b). This roadmap proves the reverse inequality for CM forms, hence the equality.
- The normalized theta unit `cθ` attached to an integer `c` prime to 6 and its distribution and isogeny laws are PadicFamilies §4.0.1.
- Kato's CM theta function `aθ_E` attached to an ideal `a` prime to 6 (existence and uniqueness, (15.4.1) and the relation (15.4.3)) is NonordinaryCMSpecialValues §2.1. CM pairs of modulus `f`, the canonical CM pair over `K(f)`, its uniqueness up to unique isomorphism and its universality are NonordinaryCMSpecialValues §2.2. These statements do not involve `p`, so that roadmap's standing hypothesis for its Layer 2 (`p ≥ 5` inert in `K`, `p ∤ h_K`) restricts nothing in them. The following are stated here, each differing from the corresponding statement there as said. §2.2's isogeny law is restricted to isogenies of degree prime to `N(a)`; its §2.1 states the norm law for every isogeny, which a Check of §2.2 refutes. §2.3's Artin action on canonical pairs is for `a` prime to `f`; its §2.2 states it with no condition on `a`, which a Check of §2.3 refutes. §2.3 also proves the reduction criterion. §2.4's standard unit is Kato's `a z_f = aθ_E(α)⁻¹`; its §2.2 calls `aθ_E(α)` the standard unit and states for it the Kronecker formula that holds for the inverse, a sign error that a Check of §2.5 exhibits. §2.4 also gives the Euler-system relations of `a ζ_m`. The auxiliary-free element of §2.6, the realizations of §3.1 and the reciprocity law of §3.3 are stated at every prime; its §§2.3–2.6 assume `p ≥ 5` inert with `p ∤ h_K`. §3.1 takes Kato's `H¹`-form of the Betti line, with `per_ψ` valued in `V_L(ψ) ⊗ ℂ`; its §2.4 writes the dual line `H₁(E(ℂ), ℚ)^{⊗r} ⊗ L` and a scalar `per_ψ`. The two Betti lines are dual through the evaluation pairing `H¹ × H₁ → ℚ`, and `β^{⊗(−r)}` of §3.2 is the basis dual to `β^{⊗r}`.
- The generalized Eisenstein–Kronecker series and their meromorphic continuation are AutomorphicPadicLFunctionsPartII §§3.3–3.4. Katz's two-variable `p`-adic measure on `Gal(K(p^∞f)/K)` at an ordinary prime is AutomorphicPadicLFunctionsPartII §8.5. The functional equation of Katz's measure is stated here (§5.5) because no supplier states it.
- Iwasawa algebras of `ℤ_p^d × Δ`, twists `Tw_κ`, Iwasawa cohomology for a profinite group, Shapiro, descent and control are SelmerIwasawaCohomology §§3.0–3.3 and 3.7. The S-unit Kummer identification is SelmerIwasawaCohomology §0.9. The étale and Galois comparison in Kato's `j_*` convention is SelmerIwasawaCohomology §3.15. The local cofreeness at `p` for the CGLS characters is SelmerIwasawaCohomology §3.17.
- Characteristic ideals, pseudo-null modules and determinants are PadicMeasuresIwasawaAlgebras §§4.1, 4.6 and 5.1.
- Euler systems and their twists are EulerSystemsAndKolyvaginSystems §§2.2 and 2.5. Rubin's Iwasawa-theoretic theorems over `ℤ_p^d`-extensions (hypotheses, weak Leopoldt from an Euler system, divisibility) are EulerSystemsAndKolyvaginSystems §§8.1–8.2, 8.6, 8.14, 8.25 and 8.37.
- The ideal isogenies of a CM elliptic curve, the CM period and de Rham pairings, the idele–torsion dictionary, ray-level fields, CM Hecke characters with their Tate components and Deuring's ordinary/supersingular dichotomy are ComplexMultiplicationAndExplicitReciprocity §§1.2, 2.2, 3.2, 4.1, 4.2 and 5.1; the lattice–ideal dictionary of complex CM curves is ImaginaryQuadraticClassNumber §H3.1.
- The CM predicate on an eigensystem, `π_f = AI_K^ℚ(α)` for an imaginary quadratic `K` and a Hecke character `α` of `K`, with its inducing field and character, the induced `λ`-adic representation and its trace formulas, is AutomorphicGaloisRepresentations §3.15, for `π` of infinity type `(k, w)` with `k ≡ w` mod 2 in that roadmap's conventions. §7.1 proves only the comparison of that predicate, applied to the twist `π_f ⊗ |det|^{−(k−2)/2}` of type `(k, k − 2)` (the unitary `π_f` has `w = 0` and is of no such type for odd `k`), with the Hecke-character description of a classical newform, with the type, level and Hecke-field statements; the inducing character of that twist is `ψ·|·|_K^{1/2}`, whose algebraic character `α′` of §3.15 is `ψ` itself; §7.2 identifies the inducing character with Kato's realization of §3.1 and proves the de Rham-normalized uniqueness (15.11.2).
- The elliptic units of a rational CM curve `E/ℚ` with `End(E) = O_K` at a prime `p ≥ 5` of good ordinary reduction, built from Siegel functions on the ray class fields of its class-number-one field, the Coleman map of its formal group on the ray tower `K(𝔣p^∞)` with its explicit reciprocity law in Coleman form, the identification of `char((U_∞/𝒞̄_∞)^χ)` with Katz's measure and Rubin's two-variable main conjecture for such `E`, are NoncommutativeAndEquivariantIwasawa §4.3. The statements of Layers 4 and 5 differ from them by their generality: any imaginary quadratic `K` of any class number, Rubin's abelian `K₀ ⊃ H` with `p ∤ [K₀ : K]`, every prime in §4.5 and in the classical form of §4.8, the inert and ramified primes in §4.8(ii), and any CM curve with good reduction at an unramified place above the split prime in the Coleman power series of §5.1. The height-two Coleman interpolation at an inert prime is AnticyclotomicLocalUnits §1.1.
- Kato's ideal-indexed elliptic units `a z_f` in Kato's normalization, at every prime and every modulus, with their norm relations, the auxiliary-free element and the module `z`, are §§2.4–2.6 here. EllipticCurvePeriodsAndModularParametrizations takes, in its one-variable `𝔩`-adic tower over ring class fields, norm limits of closures of elliptic units given as norms of CM values of modular units in ray class fields; those units are built from the same modular units as the units of §2.4 and are not cited here, and nothing of that roadmap is restated.
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
- `TauCeti.GlobalNumberFields.Modulus`, `TauCeti.GlobalNumberFields.RayClassGroup` and `TauCeti.GlobalNumberFields.HeckeCharacter` are the ray class groups and Hecke characters.
- `TauCeti.ClassFieldTheory.rayClassField` is the ray class field of a modulus, an intermediate field of `SeparableClosure K` with `NumberField` and abelian-Galois instances, and `TauCeti.ClassFieldTheory.rayClassArtinEquiv` is the Artin isomorphism `RayClassGroup 𝔪 ≃* Gal(rayClassField 𝔪/K)`. They are the fields `K(p^n f)` and the Artin maps of §0.1; the norm limits over them, elliptic units, CM curves with level structure and Iwasawa cohomology are not at the pins.
- `HeckeRing.GL2.Newform` is the newform carrier.

### From TauCetiRoadmap.GlobalNumberFields, ClassFieldTheory and ProfiniteProPGroups

GlobalNumberFields Layers 2 (moduli and ray class carriers), 9 (Hecke and ray class characters) and 10 (infinity types) supply moduli, characters and infinity types. ClassFieldTheory Layer 10 supplies the Brauer sequence and the sum of local invariants, Layer 11 global Artin reciprocity and Layer 13 ray class fields with their Artin isomorphisms. ProfiniteProPGroups Layer 9 ("The completed group algebra of the orientation image") specifies the completed group algebra.

### From TauCetiRoadmap.ModularForms, EllipticCurves and ModularCurves

ModularForms Layers 4–5 and 9 supply newforms, strong multiplicity one and the self-twist invariant, and Layer 7 their L-functions. EllipticCurves Layers 1–2 supply isogenies, formal groups, torsion and Tate modules. ModularCurves Layer 0 (relative effective Cartier divisors) and Layer 2 (isogenies and multiplication maps) supply the divisors and isogeny norms used for `aθ_E`.

### From TauCetiRoadmap.PadicMeasuresIwasawaAlgebras

§§2.1–2.3, 2.6 and 2.8 supply the Amice transform, the operators `φ` and `ψ` on power series, the inverse of multiplication by `x` on measures supported on `ℤ_p^×`, the unit-supported measures as the kernel of `ψ`, and integral coefficient extension, used by the local Coleman map of §5.1. §4.1 supplies pseudo-null modules and pseudo-isomorphisms. §4.6 supplies `charIdeal` over a noetherian normal factorial domain, multiplicative in short exact sequences and invariant under pseudo-isomorphism. §5.1 supplies determinant lines of perfect complexes. Characteristic ideals over `R_O[1/p]` are formed on each normal factor by §4.6.

### From SelmerIwasawaCohomology

§0.9 (Kummer identification for S-units) and §0.10 (inverse-limit hypotheses); §3.0 (Iwasawa algebras of `ℤ_p^d × Δ`, the involution and twists `Tw_κ`); §3.1 (Iwasawa cohomology `H^i_Iw(G, H; M)` for a profinite group with closed normal `H`, its corestriction-limit description under condition (F), and `H⁰_Iw = 0`); §3.2 (Shapiro); §3.3 (descent and control); §3.7 (twisting); §3.15 (étale cohomology of `Spec O_{F,S}` and the `j_*` comparison in degree one); §3.17 (local cofreeness at `p` and the away-`p` Euler factor for the CGLS characters); §2.8 (Greenberg's local condition). Its §3.13 rank formula is stated for the cyclotomic `ℤ_p`-extension and odd `p`. The ray-tower rank statement of §1.7 is proved here from the finite-level Euler characteristic and is not taken from §3.13.

### From ArithmeticGaloisDuality

§R02.4.3 (Poitou–Tate), §R02.4.4 (finiteness, cohomological dimension and Tate's global Euler characteristic formula) and §D7.5 (compact support and derived global duality).

### From IntegralIwasawaTheory

§2.6 (weak Leopoldt in every cyclotomic tower), §7.1 (the integral Coleman norm and Coleman interpolation of norm-compatible units with unramified coefficients), §7.2 (for odd `p`, the normalized Coleman map `arithmeticColeman u = −Amice⁻¹(H((1 − Φ)δ f_u))` on principal units, with `H` the division by `x`, its `Λ(ℤ_p^×)`-linearity and the exact sequence with kernel and cokernel `ℤ_p(1)`) and §10.0 (compact coefficients, Shapiro and mapping fibres).

### From ColemanPowerSeries

Layer 1 (Coleman interpolation over `ℤ_p` and over finite free coefficient rings), §2.37 (the raw Coleman map `Col₀`, whose Amice transform is `H((1 − φ)Δ f_u)`), §2.39 (the normalized map `Col = −Col₀` at every prime, `2` included, agreeing with IntegralIwasawaTheory §7.2 for odd `p`) and §2.44 (Galois equivariance `Col₀(a·u) = a_*Col₀(u)`, the factor `a` from the logarithmic derivative being cancelled by `H`).

### From EulerSystemsAndKolyvaginSystems

§2.2 (the module of Euler systems), §2.5 (twisting Euler systems by characters of finite order), §8.1 (`ℤ_p^d`-extensions in which no finite prime splits completely), §8.2 (Rubin's hypotheses `Hyp(K_∞, T)`), §8.6 (`Hyp(K_∞/K)`), §8.7 (the `Λ`-adic index of divisibility), §8.14 (invariance under twisting), §8.25 (weak Leopoldt from an Euler system, Rubin II.3.2) and §8.37 (Rubin's divisibility `char(X_∞) | ind_Λ(c)`, Rubin II.3.3).

### From ComplexMultiplicationAndExplicitReciprocity and ImaginaryQuadraticClassNumber

ComplexMultiplicationAndExplicitReciprocity §1.2 (the Serre tensor by a CM ideal: for an integral ideal `a` the isogeny `[a] : E → a⁻¹ ⊗ E` has kernel `E[a]` and degree `N(a)`, and `a⁻¹ ⊗ E` has period lattice `a⁻¹Λ` when `E` has lattice `Λ`; the CM period and de Rham pairings), §2.2 (the idele–torsion dictionary), §3.2 (ray-level value fields), §4.1 (the CM Hecke character `ψ_A` and the one-dimensional CM components of the Tate module), §4.2 (the full elliptic CM L-factorization and the weight-two CM induction comparison) and §5.1 (Deuring's dichotomy: after good reduction at a place of residue characteristic `p`, the reduction of a CM elliptic curve is ordinary if and only if `p` splits in `K`). ImaginaryQuadraticClassNumber §H3.1 (the dictionary between complex elliptic curves with CM by `O_K` and lattices that are fractional ideals, with the ideal action on lattices).

### From NeronModelsAndSemistableAbelianVarieties

§5.1 (the Néron–Ogg–Shafarevich criterion: an abelian variety over the fraction field of a henselian discrete valuation ring has good reduction if and only if inertia acts trivially on `T_ℓ` for a prime `ℓ` different from the residue characteristic). It gives the reduction criterion for canonical CM pairs (§2.3), used for the good reduction of §§3.3 and 5.1.

### From AutomorphicGaloisRepresentations and AutomorphicGaloisRepresentationsPartII

AutomorphicGaloisRepresentations §1.5 (rank-two newform realization) and §7.3 (the fixed-eigenform compatible family) supply `V_{F_λ}(f)` and its Frobenius polynomials. §3.15 (the CM predicate `π = AI_K^ℚ(α)` for `π` of infinity type `(k, w)`, `k ≡ w` mod 2, central character `|·|^{−w}` times a finite-order character, and an imaginary quadratic `K`; the inducing field and character; the algebraic character `α′ = α|·|_K^{−1/2}`, whose `λ`-adic induction is `ρ_{π,λ}`, with geometric Frobenius polynomial `X² − t_ℓX + ℓs_ℓ`; trace zero at unramified primes inert in `K`; and compatibility with twists and coefficient extension) supplies the predicate of §7.1, applied to `π_f ⊗ |det|^{−(k−2)/2}`, of type `(k, k − 2)`, and the induction of §7.2. AutomorphicGaloisRepresentationsPartII AG2.0 supplies the `λ`-adic Galois characters of algebraic Hecke characters.

### From AnalyticNumberTheoryPartI and LFunctions

AnalyticNumberTheoryPartI §2.3a (Hecke continuation and functional equation `Λ_H(ω, s) = W(ω)Λ_H(ω⁻¹, 1 − s)` for unitary idele-class characters, with the comparison to the finite-order and algebraic completions of LFunctions Layers 5–6) supplies the completed Hecke L-functions, their continuation and their functional equation; an algebraic Hecke character enters through its unitary twist. LFunctions Layer 7 (intrinsic nonvanishing) supplies that a nontrivial primitive finite-order Hecke L-function has no zero on `Re s = 1`.

### From PadicHodgeRegulators

§1.4 (Kato's dual exponential) and §1.7 (twists, restriction and corestriction for the Bloch–Kato maps).

What PadicHodgeRegulators must provide (gap:height-one-explicit-reciprocity): Kato's generalized explicit reciprocity law in relative height one. Take a finite extension `F` of `ℚ_p` and a `p`-divisible group `G` over `O_F` with an action of the integers `O_𝔭` of a finite extension of `ℚ_p`, of relative `O_𝔭`-height one. For a norm-compatible system of units in the tower `F(G[𝔭^n])`, the law gives the dual exponential of the cup product of its Kummer class with a power of the Tate-module basis, as the value at the torsion points of the logarithmic derivatives of the Coleman power series (Kato, proof of Proposition 15.9, pp. 258–259, where it is applied with `h = 1`).

### From AutomorphicPadicLFunctionsPartII

§§3.3–3.4 supply the Eisenstein–Kronecker series `K^ν(H, z, w, s, Λ)` with their continuation and residues. In dimension one with `w = 0`, `(z + λ)^{−k}|z + λ|^{−s} = conj(z + λ)^k·|z + λ|^{−2k−s}`, so Kato's `E(k, τ, z, s)` is that series with `ν = k` at the variable `k + s/2`. §8.5 supplies the bounded measure `μ_f` on `Gal(K(p^∞f)/K)` interpolating critical Hecke values for an ordinary lifted type. For `K` imaginary quadratic and `p = v v̄` split this is Katz's two-variable measure.

### From NonordinaryCMSpecialValues

§2.1 (Kato's CM theta function: for `E` with `O_K ≅ End(E)` normalized so that `O_K` acts on `Lie(E)` through the inclusion, and an ideal `a` prime to 6, the unique unit `aθ_E` on `E ∖ E[a]` with divisor `N(a)·(0) − E[a]` and `N_b(aθ_E) = aθ_E` for every integer `b` prime to `a`, `N_b` the norm along multiplication by `b`; `(c)θ_E = cθ_E`, Kato's (15.4.1); and the relation (15.4.3) between `a` and `b`) and §2.2 (a CM pair of modulus `f`, for `O_K^× → (O_K/f)^×` injective, is `(E, α)` with `E` as in §2.1 and `α` a torsion point with annihilator `f`; the canonical CM pair over `K(f)`, isomorphic over `ℂ` to `(ℂ/f, 1 mod f)`, unique up to unique isomorphism, of which every CM pair of modulus `f` over a field `K′ ⊃ K` is the base change along a unique `K`-embedding `K(f) → K′`). These do not involve `p`; the standing hypothesis of that roadmap's Layer 2 does not restrict them. Its isogeny invariance, its Artin action, its standard unit and its §§2.3–2.6 are not consumed (Scope and ownership).

### From PadicFamilies

§4.0.1 supplies the normalized theta unit `cθ` (divisor `c²[0] − [c]⁎[0]`, distribution law, isogeny norm, Tate expansion). §4.0.3 (generic rank one of `H¹`, torsion of `H²` and the rational cyclotomic Euler-system inequality for every classical eigenform, CM forms included through elliptic units) enters only through the rational clauses of KatoEulerSystems §4.4, which are its clauses; §7.9 differs from its inequality in the lattice `Z(ψ, T)` and in the primes containing `p` allowed under Rubin's condition (b).

### From KatoEulerSystems

§4.2 (nonvanishing of twisted critical values: for every sign and every character component of `G_∞`, infinitely many finite-order characters `χ` of `p`-power conductor with `L_{{p}}(f*, χ, k − 1) ≠ 0`, through Jacquet–Shalika for `k ≥ 3` and Rohrlich for `k = 2`), §5.1 (the rational zeta morphism `γ ↦ z_γ(f)`, its conjugation law `z_{ιγ} = −σ_{−1}z_γ`, and `Z(f)` as the `Λ_ℚ`-span of its values) and §5.3 (critical interpolation `Σ_σ χ(σ) per_f(ω_{γ,r,n}^σ)^± = (2πi)^{k−r−1}L_{{p}}(f*, χ, r)γ^±`). §4.4 (Kato's Theorem 12.4 for admissible `(f, λ)`, every CM pair being admissible, at every prime `p` and with the case `K ⊂ ℚ(μ_{p^∞})`: for every stable lattice `T`, `H²(T)` is `Λ`-torsion and `H¹(T)` is `Λ`-torsion-free, and `H²(V)` is `Λ_ℚ`-torsion and `H¹(V)` is `Λ_ℚ`-free of rank one, over the full `Λ = O[[G_∞]]`) is used in §§8.4 and 8.6, with coefficients extended from the Hecke field `F_{λ₀}` to `L_λ` along the finite free `O_{λ₀}[[G_∞]] → O_λ[[G_∞]]`. Its §7.2 (cohomological upper bound) is consumed for no statement here.

### From NoncommutativeAndEquivariantIwasawa

§4.3 (its Construction of the elliptic units and of the two-variable `𝔭`-adic measure `ν_𝔣` of a rational CM curve at `p ≥ 5` ordinary, its Coleman map `Col_𝔣` on the ray tower `K(𝔣p^∞)` with image the annihilator ideal of `ℤ_p(1)` and the law `Col_𝔣(β(𝔞)) = (σ_𝔞 − N𝔞)ν_𝔣`, the characteristic-ideal identity `char((U_∞/𝒞̄_∞)^χ)·A_D = (μ_χ)`, and its Theorem, Rubin's two-variable main conjecture `char X_∞^χ = char (U_∞/𝒞̄_∞)^χ` for every `χ`). It is the case `E/ℚ`, `End(E) = O_K`, `p ≥ 5` of good ordinary reduction of §§4.8(i), 5.1–5.3, which the routes there do not reprove.

### From PeriodsAndSpecialValues

PS.5.2 (the equivariant Tamagawa number conjecture `ETNC(M, O)` as a predicate: continuation, the predicted order, rationality and integrality of the obstruction, stored separately). It is used here only with a commutative scalar order, the integers `O_E` of a number field `E` acting on `h⁰(Spec F)_E` (§4.2); no group-ring order occurs. The regulator datum of its real trivialization (PS.3.2) is, for `h⁰(Spec F)` over `K`, the regulator `r_∞` of §4.2, normalized with the squared absolute value. PS.6.5 states the Bloch–Kato predicate for triples of weight at most `−3` and does not cover `h⁰(F)(0)`.

### From ModularIwasawaMainConjectures

§0.1 (the modular Iwasawa datum), §0.6 (`H^i(T_K) = lim_n H^i_ét(ℤ[ζ_{p^n}, 1/p], j_*T_K)`) and §0.7 (`KMC^η` and its rational form `KMC_ℚ`, comparing `char(H¹/Z(f))` and `char(H²)` in `Λ[1/p]`).

## How to read the build

Layer 0 fixes the CM ray group, its Iwasawa algebra, the regular/singular dichotomy and `ξ`. Layer 1 builds the tower cohomology and the modules `h¹`, `h²`, and proves their comparisons and module structure, keeping the Euler terms at primes of `f` prime to `p`. Layer 2 constructs elliptic units and the module `z`, and proves Kronecker's limit formula and cotorsion. Layer 3 constructs Kato's CM realizations and proves his reciprocity law. Layer 4 proves the integral character-wise main conjecture of Johnson-Leung and Kings at every prime, and Rubin's theorem. Layer 5 treats split primes through Coleman maps and Katz's measure; it is used by no later layer. Layer 6 assembles the regular-prime lengths into the rational equivariant main conjecture. Layer 7 relates the CM newform to its Hecke character, proves that the elliptic units generate the CM Iwasawa cohomology at height zero and descends from the ray tower to the cyclotomic tower over `ℚ`. Layer 8 proves that elliptic units become Beilinson–Kato elements and deduces Kato's equality. Layers 7–8 use Layers 2–4 and 6, not Layer 5.

## Layer 0: the CM ray tower and its Iwasawa algebra

### 0.1 The ray group and its algebra

Define the *CM ray group* of `(K, p, f)` as `G = Gal(K(p^∞f)/K)` with its profinite topology. Through the global Artin map it is `lim_n RayClassGroup(p^n f)` (ClassFieldTheory Layer 13, GlobalNumberFields Layer 2; at each level Tau Ceti `TauCeti.ClassFieldTheory.rayClassArtinEquiv`). Define its Iwasawa algebra as `R_O = TauCeti.completedGroupAlgebra O G`. Prove that the torsion subgroup `Δ` of `G` is finite. Prove that `G/Δ ≅ ℤ_p²` maps isomorphically onto the Galois group of the `ℤ_p²`-extension of `K`: the unit rank of `K` is zero, so there is no Leopoldt defect, and the `ℤ_p`-rank is `r₂ + 1 = 2`. Prove that a chosen complement gives `R_O ≅ O[Δ][[S, T]]`, a three-dimensional semilocal ring (Burungale–Tian, §2.1.1, p. 3, BT line 136; Kato, 15.1, p. 250; Johnson-Leung–Kings, §4.1, p. 19). *Needs:* ClassFieldTheory Layer 13; GlobalNumberFields Layer 2; SelmerIwasawaCohomology §3.0; ProfiniteProPGroups Layer 9.

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

ClassFieldTheory Layer 13; GlobalNumberFields Layer 2; ProfiniteProPGroups Layer 9; SelmerIwasawaCohomology §3.0; PadicMeasuresIwasawaAlgebras §§4.1, 4.6; Mathlib `Ideal.height`, `IsLocalization.AtPrime`, `Module.length`.

## Layer 1: tower cohomology, units and classes

### 1.1 Iwasawa cohomology of the ray tower

For a finitely generated `O`-module `T` with continuous `Gal(K̄/K)`-action, unramified outside a finite set, define `H^q_{p∞f}(T) = lim_{K′} H^q_ét(O_{K′}[1/p], j_*T)`. The limit runs over finite `K ⊂ K′ ⊂ K(p^∞f)` along corestriction, with `j` the inclusion of the open set over which `T` is lisse. Define `H^q(O_K[1/pf], ·)` likewise over `O_{K′}[1/pf]`. Prove that each `H^q_{p∞f}(T)` is a finitely generated `R_O`-module and vanishes for `q ∉ {1, 2}`. Degree zero vanishes because corestriction kills invariants in the limit; degrees at least three vanish because `K` has no real place, so the cohomological dimension is two (Kato, 15.6, p. 253, and 8.2, pp. 180–181). For a continuous character `χ : G → O^×` with chosen basis `t_χ`, prove that `x ↦ x ⊗ t_χ` is a `Tw_{χ⁻¹}`-semilinear isomorphism `H^q_{p∞f}(T) ≅ H^q_{p∞f}(T(χ))` (Johnson-Leung–Kings, Lemma 4.7, p. 22, JLK line 935). Perfectness of the underlying complexes is asserted only for `RΓ(O_K[1/p], Λ(η)(1))` with `η` of finite order and for `RΓ(O_K[1/pf], Ω(1))` (Johnson-Leung–Kings, Lemma 4.3, p. 20, JLK line 861). *Needs:* SelmerIwasawaCohomology §§3.1, 3.2, 3.7, 3.15; ArithmeticGaloisDuality §§R02.4.4, D7.5; §0.1; Mathlib `NumberField.IsTotallyComplex`.

- A continuous homomorphism of coefficient modules induces `R_O`-linear maps, compatible with composition and with finite-level corestriction.
- The degree-one limit agrees with SelmerIwasawaCohomology §3.1's corestriction limit of Galois cohomology of `G_{K′,S}` for `S` the places above `p` and the ramification of `T`, through the degree-one `j_*` comparison of SelmerIwasawaCohomology §3.15.
- The twist by the trivial character is the identity, and twisting by `χ₁` and then `χ₂` is twisting by `χ₁χ₂`.

**Checks.**

- `H⁰_{p∞f}(ℤ_p(1)) = 0` already at finite level: `H⁰(O_{K′}[1/p], ℤ_p(1))` is the Tate module of the finite group `μ_{p^∞}(K′)`, hence zero. For `K′ = ℚ(i)` and `p = 2`, `μ_{2^∞}(K′) = μ_4` has order 4 but `T_2μ_4 = 0`; the discrete roots of unity are not the invariants of `ℤ_p(1)`. The transition maps matter for `T = ℤ_p` with trivial action: its invariants are `ℤ_p` at every layer, corestriction is multiplication by the degree, so the inverse limit is 0, while a direct limit along restriction would be `ℤ_p`.
- With `f` divisible by a prime `𝔩 ∤ p`, `H²` over `O[1/p]` and over `O[1/pf]` differ by the nonzero module of §1.5. The `j_*` convention is not the unrestricted cohomology of the larger open set.
- Take `K = ℚ(i)`, `p = 5`, `f = (1)`, `O = ℤ_5`, which contains a square root `i` of `−1` since `5 ≡ 1 mod 4`, `T = ℤ_5(1)`, and `χ` a character of order four of `G`, trivial on `Γ` and faithful on `Δ ≅ ℤ/4` (§0.1, Checks), with `χ(g) = i` for a generator `g` of `Δ`. For every nonzero `x ∈ H¹_{p∞f}(T)` (which has rank one, §1.7), `φ(g·x) = χ(g)⁻¹·g·φ(x) = −i·g·φ(x)`, while the opposite convention `φ(g·x) = χ(g)·g·φ(x)` gives `+i·g·φ(x)`; these differ because `g·φ(x) ≠ 0` and their difference `2i·g·φ(x)` is a unit multiple of it. For a quadratic `χ` with `χ(g) = −1` both conventions give `−g·φ(x)`, so that case only checks agreement and cannot detect the inverse.

### 1.2 The tower unit and class modules

Define `h¹ = lim_{K′}(O_{K′}[1/p]^× ⊗ ℤ_p)` and `h² = lim_{K′} ClassGroup(O_{K′})[p^∞]`, the limits along field norms and norms of ideals over finite `K ⊂ K′ ⊂ K(p^∞f)`, with `G` acting through its finite quotients. Inside `h¹` define the submodule `E_∞` of norm-compatible global units (Burungale–Tian, §2.1.1, p. 3, BT lines 138–140; Kato, 15.1, p. 251; Johnson-Leung–Kings, §5.4, p. 26). *Needs:* §0.1; Mathlib `ClassGroup`; SelmerIwasawaCohomology §0.10; IntegralIwasawaTheory §10.0.

- Each projection `h¹ → O_{K′}[1/p]^× ⊗ ℤ_p`, `h² → Cl(K′)[p^∞]` is `R`-linear. For `K′ ⊂ K″` the projection to `K′` is the norm composed with the projection to `K″`.
- A norm-compatible family of `p`-completed `p`-units, respectively of `p`-primary ideal classes, defines a unique element, and two elements agree when all projections agree.
- For `f ∣ f′` the norm maps `h^i(f′) → h^i(f)` are compatible with `R(f′) → R(f)`.
- `E_∞ ⊂ h¹` is the kernel of the valuation maps at the finitely many places above `p` (Johnson-Leung–Kings, proof of Theorem 3.9, p. 18).

**Checks.**

- If every layer has trivial `p`-primary class group then `h² = 0`. For `K = ℚ(i)` and `p = 2` this holds at the first layer, `Cl(ℚ(i)) = 1`, and gives `h²` as the limit of the higher layers only.
- The norm limit of the finite groups `μ_{p^∞}(K′)`, `K ⊂ K′ ⊂ K(p^∞f)`, is zero. Given `K′`, choose `K″ ⊃ K′` in a `ℤ_p`-direction transverse to the cyclotomic one with `K″ ∩ K′(μ_{p^∞}) = K′`, after enlarging `K′` by a finite amount; then `μ_{p^∞}(K″) = μ_{p^∞}(K′)`, the norm from `K″` raises it to the power `[K″ : K′]`, and a norm-compatible family has trivial component at `K′` once `[K″ : K′]` exceeds the order of `μ_{p^∞}(K′)`. The direct limit along inclusions would be `μ_{p^∞}`, and in the one-variable cyclotomic tower over `ℚ`, which has no transverse direction, the norm limit is nonzero (§1.7, Checks).
- At the base layer `K′ = K = ℚ(i)` with `p = 5`, `O_K[1/5]^× ⊗ ℤ_5 ≅ ℤ_5²`, generated by `2 + i` and `2 − i`, while `O_K^× ⊗ ℤ_5 = μ_4 ⊗ ℤ_5 = 0`. A definition through global units instead of `p`-units would lose this rank.

### 1.3 Kummer identification of the unit module

Prove that the finite-level Kummer isomorphisms `O_{K′}[1/p]^× ⊗ ℤ_p ≅ H¹(O_{K′}[1/p], ℤ_p(1))`, built with the fixed compatible system of `p`-power roots of unity, commute with norm and corestriction. Prove that they give an `R`-isomorphism `h¹ ≅ H¹_{p∞f}(ℤ_p(1))` compatible with the projections (Kato, (15.6.1), p. 253; Johnson-Leung–Kings, Lemma 5.8, p. 27, JLK line 1117). *Needs:* SelmerIwasawaCohomology §§0.9, 0.10; §§1.1, 1.2.

### 1.4 Class groups and degree-two cohomology

Construct an `R`-linear map `h² → H²_{p∞f}(ℤ_p(1))` whose kernel and cokernel are finitely generated `ℤ_p`-modules, hence pseudo-null over `R`. Consequently `(h²)_q ≅ H²_{p∞f}(ℤ_p(1))_q` at every height-one prime `q` (Kato, (15.6.2) and its proof, p. 254). At each layer the map comes from the Kummer sequence `0 → Pic(O_{K′}[1/p])[p^∞] → H²(O_{K′}[1/p], ℤ_p(1)) → T_p Br(O_{K′}[1/p]) → 0`. The last term is the kernel of the sum map `ℤ_p^Σ → ℤ_p` on the set `Σ` of places of `K′` above `p`, and `Cl(K′) → Pic(O_{K′}[1/p])` is onto with kernel generated by the classes of the primes in `Σ`. Retain both correction terms through the limit; they vanish only after localization at height one. *Needs:* ClassFieldTheory Layer 10; §§1.1–1.3; PadicMeasuresIwasawaAlgebras §4.1.

**Checks.**

- For a layer `K′` with two places above `p`, the Brauer term is the kernel of the sum map `ℤ_p² → ℤ_p`, of rank one, so `H²(O_{K′}[1/p], ℤ_p(1))` is not `Pic(O_{K′}[1/p])[p^∞]`. A definition identifying the two at finite level is wrong already for `K = ℚ(i)`, `p = 5`, `K′ = K`.
- For `K = ℚ(i)`, `p = 2`, `K′ = K`: `Cl(K) = 1` and there is one place above `2`, so `Pic(O_K[1/2])[2^∞] = 0`, the Brauer kernel `ℤ_2 → ℤ_2` is zero, and both correction terms vanish at the base layer. Their vanishing at one layer does not make the limit map an isomorphism.
- For a finitely generated `ℤ_p`-module `M` with `R`-action, `R/Ann(M)` embeds in `End_{ℤ_p}(M)` and is finite over `ℤ_p`, of dimension at most one, so `Ann(M)` has height at least two in the three-dimensional `R` and lies in no height-one prime: `M_q = 0` at every height-one `q`. A kernel or cokernel that were merely `R`-torsion, such as `ℤ_p[[G/D_𝔩]]` of §1.5, would not localize to zero.

### 1.5 The Euler-factor sequence

Write `H^i_S = lim_{K′} H^i(O_{K′}[S⁻¹], ℤ_p(1))`. Prove that `H¹_p = H¹_{pf}` and that restriction gives an exact sequence of `R`-modules

```text
0 → H²_p → H²_{pf} → ⊕_{𝔩 ∣ f, 𝔩 ∤ p} ℤ_p[[G/D_𝔩]] → 0,
```

where `D_𝔩` is the decomposition group of `𝔩` in `G`, of `ℤ_p`-rank one. Each `ℤ_p[[G/D_𝔩]]` is torsion and not pseudo-null. Extend scalars to `O` containing the values of the characters of `Δ` (§0.2), write `Frob_𝔩 = δ_𝔩γ_𝔩` in `Δ × Γ` (well defined modulo the inertia group `I_𝔩 ⊂ Δ`), and let `χ` be a character of `Δ`. After inverting `p`, the `χ`-component of `ℤ_p[[G/D_𝔩]] ⊗ O` is zero if `χ|_{I_𝔩} ≠ 1`. If `χ|_{I_𝔩} = 1` it is the cyclic module `O[[Γ]]/(1 − χ(δ_𝔩)⁻¹γ_𝔩⁻¹)`, the projection of `1 − Frob_𝔩⁻¹`. This factor is a nonzero nonunit of `O[[Γ]][1/p]` when `χ(δ_𝔩) ≡ 1` modulo the maximal ideal of `O`, that is, when `χ(δ_𝔩)` has `p`-power order, and a unit of `O[[Γ]]` otherwise: triviality on inertia alone does not make it a nonunit. The condition does not depend on the splitting `G = Δ × Γ`, which changes `χ(δ_𝔩)` by a `p`-power root of unity (Johnson-Leung–Kings, Lemma 4.3 and its proof, pp. 20–21, JLK line 861, for the localization triangle, purity and the determinant `(1 − η(𝔩)Frob_𝔩⁻¹)⁻¹`; the limit sequence is derived here). *Needs:* §§0.2, 1.1, 1.3; SelmerIwasawaCohomology §3.17; ArithmeticGaloisDuality §D7.5; PadicMeasuresIwasawaAlgebras §4.1.

The route: at each layer, the localization triangle for `Spec O_{K′}[1/pf] ⊂ Spec O_{K′}[1/p]` and purity give `0 → H¹_p → H¹_{pf} → ⊕_{w∣𝔩} ℤ_p → H²_p → H²_{pf} → ⊕_{w∣𝔩} H¹(κ(w), ℤ_p) → 0`. In the limit the degree-two supported terms vanish, because corestriction multiplies by residue degrees that grow without bound, `Frob_𝔩` having infinite order in `G/I_𝔩`. The degree-three supported terms assemble to `ℤ_p[[G/D_𝔩]]`. Inverse limits of compact modules are exact.

**Checks.**

- If every prime factor of `f` lies above `p`, the sum is empty and `H²_p = H²_{pf}`.
- For `K = ℚ(i)`, `p = 5`, `f = (3)`: `3` is inert of norm 9, and `I_{(3)}` is the image of `1 × (O_K/3)^×` in `((O_K ⊗ ℤ_5)^× × (O_K/3)^×)/μ_4`, cyclic of order 8, since the image of the global units meets it trivially. `Δ` has order `4·4·8/4 = 32`, and `Δ/I_{(3)} ≅ μ_4` through `(x_𝔭, x_𝔭̄) ↦ x_𝔭x_𝔭̄` on the Teichmüller parts; `Frob_{(3)}` is the class of the idele `3` at `(3)`, equal to the class of `(3⁻¹, 3⁻¹, 1)` after dividing by the global `3`, and `3⁻¹ ≡ 2 mod 5`, so `δ_{(3)} ↦ ω(2)² = ω(4) = −1`. Of the four characters trivial on `I_{(3)}`, the trivial one and the quadratic one have `χ(δ_{(3)}) = 1`: there the factor `1 − χ(δ_{(3)})⁻¹γ_{(3)}⁻¹` is a nonzero nonunit of `R_O[1/5]`, and `H²_p` and `H²_{pf}` have different `ξ`. The other two, among them `χ = ω ∘ χ_cyc`, have `χ(δ_{(3)}) = ω(9) = −1`: the factor is `1 + γ_{(3)}⁻¹`, with augmentation 2, a unit of `ℤ_5[[Γ]]`, and the Euler module vanishes on those components although `Frob_{(3)}` has infinite order. On the 28 characters nontrivial on `I_{(3)}` it vanishes as well.
- `ℤ_p[[G/D_𝔩]]` is not pseudo-null: `G/D_𝔩` has `ℤ_p`-rank one, so the module has dimension two over the three-dimensional `R`. Discarding it as pseudo-null would drop a codimension-one factor.

### 1.6 Torsion of the class module

Prove that `h²`, `H²_{p∞f}(ℤ_p(1))` and `H²_{pf}` are finitely generated torsion `R`-modules, each killed by a non-zero-divisor (Burungale–Tian, §2.1.1, p. 3, BT line 143; Kato, 15.1, p. 251; Johnson-Leung–Kings, Corollary 7.3, p. 34). The route passes through weak Leopoldt for the ray tower. `K(p^∞f)` is the union of the cyclotomic towers `K′(μ_{p^∞})` of its finite layers, since `K(μ_{p^∞}) ⊂ K(p^∞)`. Weak Leopoldt for each such tower (IntegralIwasawaTheory §2.6) gives `H²(G_{K(p^∞f), S}, ℚ_p/ℤ_p) = 0` by passage to the limit, and Poitou–Tate in the limit turns this into torsion of `H²_{p∞f}(ℤ_p(1))`. §1.4 transfers torsion to `h²`, and §1.5 to `H²_{pf}`. *Needs:* IntegralIwasawaTheory §2.6; ArithmeticGaloisDuality §§R02.4.3, D7.5; §§1.1, 1.4, 1.5.

### 1.7 Structure of the unit module

Prove that `h¹` is a finitely generated, torsion-free `R`-module, and that `h¹_q` is one-dimensional over the field `R_q` at every height-zero prime `q` (Burungale–Tian, §2.1.1, p. 3, BT lines 141–143; Kato, 15.1, p. 251; Johnson-Leung–Kings, proof of Theorem 6.4(2), p. 30, and Corollary 7.3, pp. 34–35). Here torsion-free means that no nonzero element is killed by a non-zero-divisor. The route has three parts. Finite generation comes from §1.3 and §1.1. The rank comes from Tate's global Euler characteristic formula at each finite layer: `K′` is totally complex, `ℤ_p(1)` has rank one and `H⁰ = 0` in the limit, so `rank H¹ − rank H² = [K′ : K]` normalized by the degree, combined with §1.6 on every `Δ`-component, `p = 2` included, since no real places occur. Torsion-freeness is a ray-tower statement. For a non-zero-divisor `x` of `R`, the elements of `H¹_{p∞f}(ℤ_p(1))` killed by `x` form `H⁰(K, ℤ_p(1) ⊗ R/x)`, by the coefficient sequence for `x` and `H⁰_{p∞f} = 0` (§1.1); `G_K` acts on `ℤ_p(1) ⊗ R/x` through `g ↦ χ_cyc(g)·g⁻¹`, so this group is `(R/x)[J]` for the ideal `J` of §2.6, the kernel of the cyclotomic character `R → ℤ_p`. `R = ℤ_p[Δ][[S, T]]` is Cohen–Macaulay of dimension three, `ℤ_p[Δ]` being finite free over `ℤ_p`, so `R/x` is unmixed of dimension two and its associated primes have height one, while `J` has height two: `(R/x)[J] = 0`. The invariants `ℤ_p(1)^{Gal(K̄/K(p^∞f))} = ℤ_p(1)` do not vanish; it is the codimension of `J` that forces torsion-freeness, and in a one-variable cyclotomic tower the same module has torsion (Checks). Vanishing of `ℤ_p`-torsion alone controls only `p`-power torsion, not `R`-torsion. *Needs:* §§1.1, 1.3, 1.6; ArithmeticGaloisDuality §R02.4.4; SelmerIwasawaCohomology §§3.1, 3.3.

**Checks.**

- For `K = ℚ(i)`, `p = 2`, `f = (1)`, `R = ℤ_2[[ℤ_2²]]` is a domain and the statement is that `h¹` is torsion-free of rank one.
- The zero module is torsion-free but not of rank one: rank one is a separate assertion and fails for a definition producing `h¹ = 0`.
- Over `R = ℤ_2[[G]]` with `Δ = ℤ/8` (the third check of §0.1), "killed by a non-zero-divisor" differs from "killed by a nonzero element". `x − 1` for `x` a generator of `Δ` is a nonzero zero-divisor, so torsion-freeness is stated with non-zero-divisors.
- In the one-variable tower `ℚ(ζ_{p^n})` over `ℚ`, `p` odd, the module `lim_n ℤ[ζ_{p^n}, 1/p]^× ⊗ ℤ_p` is not torsion-free: `N_{ℚ(ζ_{p^{n+1}})/ℚ(ζ_{p^n})}(ζ_{p^{n+1}}) = ζ_{p^{n+1}}^{Σ_{0≤j<p}(1 + jp^n)} = ζ_{p^n}`, since `Σ_j (1 + jp^n) = p + p^{n+1}(p − 1)/2 ≡ p mod p^{n+1}`, so `(ζ_{p^n})_n` is a nonzero norm-compatible element, killed by `σ − χ_cyc(σ)`. There `J` has height one in the two-dimensional algebra, and the argument of the route fails exactly where it must; a proof of §1.7 through vanishing of the invariants of `ℤ_p(1)` would prove this false statement too.

### Examples

For `K = ℚ(i)`, `p = 5`, `f = (1)`, the decomposition `R = ⊕_{χ ∈ Δ^} ℤ_5[[Γ]](χ)` has four factors, and §§1.6–1.7 say that each component of `h²` is torsion and each component of `h¹` has rank one.

### Dependencies

Layer 0; SelmerIwasawaCohomology §§0.9, 0.10, 3.1–3.3, 3.7, 3.15, 3.17; ArithmeticGaloisDuality §§R02.4.3, R02.4.4, D7.5; IntegralIwasawaTheory §§2.6, 10.0; ClassFieldTheory Layer 10; PadicMeasuresIwasawaAlgebras §4.1; Mathlib `ClassGroup`, `NumberField.IsTotallyComplex`.

## Layer 2: elliptic units

### 2.1 Theta functions as Eisenstein–Kronecker series

For `Im τ > 0` and `z ∉ ℤτ + ℤ` put `E(k, τ, z, s) = Σ_{(m,n) ∈ ℤ²} (z + mτ + n)^{−k}|z + mτ + n|^{−s}`. This is the one-dimensional Eisenstein–Kronecker series of AutomorphicPadicLFunctionsPartII §3.3, read through the conjugation identity of the supplier contracts. Put `E^{(k)}(τ, z) = (−1)^{k−1} (k − 1)! (2πi)^{−k} E(k, τ, z, 0)` for `k ≥ 1`, and `E^{(0)}(τ, z) = −lim_{s→0} s⁻¹E(0, τ, z, s)`. For `E_τ = ℂ/(ℤτ + ℤ)`, the coordinate `t = e^{2πiz}` and `c ≥ 2` prime to 6, prove the following two identities, for `z` and `cz` outside the lattice (Kato, 3.8 and (3.8.1)–(3.8.2), pp. 138–140):

```text
D^{k−1} dlog(cθ_E) = (c² E^{(k)}(τ, z) − c^k E^{(k)}(τ, cz)) · (dt/t)^{⊗k}    (k ≥ 1)
log|cθ_E| = c² E^{(0)}(τ, z) − E^{(0)}(τ, cz)
```

Transport them to the lattice of a CM pair by a homothety; the factor `(dt/t)^{⊗k}` scales by the `k`-th power of the scalar. *Needs:* AutomorphicPadicLFunctionsPartII §§3.3–3.4; PadicFamilies §4.0.1.

**Checks.**

- For `k ≥ 3` both sides are absolutely convergent lattice sums at `s = 0`; for `k = 1, 2` the right side is the continued value.
- At a torsion point `z = ατ + β ≠ 0` the second identity specializes to the Siegel-unit formula `log|g_{α,β}| = E^{(0)}_{α,β}` (Kato, (3.8.4)(iii)).
- `E(0, τ, z, s)` vanishes at `s = 0`, so `E^{(0)}` is a derivative and not a value. A definition by the value at `0` would give the zero function and break the second identity for `c ≥ 2`.
- The signs. Near `z = 0`, `cθ_E` has a zero of order `c² − 1`, so `log|cθ_E| ≈ (c² − 1)log|z| → −∞` and `dlog(cθ_E)` has residue `c² − 1`. The term `|z|^{−s}` of `E(0, τ, z, s)` gives `lim s⁻¹E(0, τ, z, s) ≈ −log|z|`, and the term `z^{−k}` of `E(k, τ, z, 0)` gives `D^{k−1}` of `(2πi)^{−1}(c² − 1)/z` the leading term `(−1)^{k−1}(k − 1)!(2πi)^{−k}(c² − 1)z^{−k}`, with `D = t·d/dt = (2πi)^{−1}d/dz`. Both identities therefore need the sign `(−1)^{k−1}`, which is `−1` at `k = 0`; with `(−1)^k`, or without the minus sign in `E^{(0)}`, each side is the negative of the other. On `ℂ/ℤ[i]` at `z = 1/3` with `c = 5`, where `5z ≡ −z` and `E^{(0)}(τ, −z) = E^{(0)}(τ, z)`, the second identity reads `log|5θ(1/3)| = 24·E^{(0)}(i, 1/3)`. Kato's product formula for `cθ` (Proposition 1.3(3), p. 122) gives `0.6619…` on the left, and `E^{(0)}(i, 1/3) = 0.02758…`.

### 2.2 The isogeny law for Kato's CM theta function

Let `K′ ⊃ K` be a field, `E/K′` an elliptic curve with `O_K ≅ End(E)`, normalized so that `O_K → End(E) → End(Lie E) = K′` is the inclusion, `a` an ideal of `O_K` prime to 6, and `aθ_E` Kato's CM theta function (NonordinaryCMSpecialValues §2.1): the unique unit on `E ∖ E[a]` with divisor `N(a)·(0) − E[a]` and `N_b(aθ_E) = aθ_E` for every integer `b` prime to `a`. Prove that for an `O_K`-linear isogeny `φ : E → E′` to a curve `E′` of the same kind, of degree prime to `N(a)`, the norm along `φ` sends `aθ_E` to `aθ_{E′}` (Kato, (15.4.2), p. 252, Kato lines 5254–5255). Kato's printed (15.4.2), like NonordinaryCMSpecialValues §2.1, omits the condition on the degree, which the first Check shows is needed. The route: `φ` is `O_K`-linear and its kernel meets `E[a]` trivially, the orders being coprime, so `φ` maps `E[a]` isomorphically onto `E′[a]` and carries `N(a)(0) − E[a]` to `N(a)(0) − E′[a]`; the norm along `φ` commutes with each `N_b`, since `φ` commutes with multiplication by `b`; uniqueness in NonordinaryCMSpecialValues §2.1 concludes. *Needs:* NonordinaryCMSpecialValues §2.1; ModularCurves Layers 0 and 2; EllipticCurves Layers 1–2; ComplexMultiplicationAndExplicitReciprocity §1.2; ImaginaryQuadraticClassNumber §H3.1.

**Checks.**

- For `N(a) > 1` the quotient `q : E → E/E[a]` has degree `N(a)`, not prime to `N(a)`. It sends the divisor `N(a)(0) − E[a]` to `N(a)(0) − N(a)(0) = 0`, so the norm is constant and cannot equal the nonconstant `aθ` on the quotient. This rules out the unrestricted isogeny law.
- For `K = ℚ(i)`, `a = (2 + i)` of norm 5 and the endomorphism `φ = [1 + i]` of degree 2: `ker φ = E[1 + i]` has order 2 and meets `E[a]`, of order 5, trivially, so `φ` permutes the five points of `E[a]`, preserves the divisor `5(0) − E[a]`, and the law gives that the norm along `[1 + i]` fixes `aθ_E`. Along `[2 + i]`, of degree 5, the divisor goes to `0` instead.
- For `a = (c)` with `c ∈ ℤ` prime to 6, `N(a) = c²`, so "degree prime to `N(a)`" is "degree prime to `c`", and through `(c)θ_E = cθ_E` the law is the isogeny norm of `cθ` of PadicFamilies §4.0.1, which asks the same condition (Kato, Proposition 1.3(4), p. 122, Kato line 238).

### 2.3 The Galois action on canonical CM pairs and their reduction

Let `f` be a nonzero ideal with `O_K^× → (O_K/f)^×` injective. CM pairs `(E, α)` of modulus `f`, with `E` as in §2.2 and `α` a torsion point with annihilator `f`, and the canonical CM pair over `K(f)` with its uniqueness and universality are NonordinaryCMSpecialValues §2.2 (Kato, 15.3 and (15.3.1)–(15.3.2), pp. 251–252, Kato lines 5211–5233). Prove: for finite abelian `K′/K`, a CM pair `(E, α)` of modulus `f` over `K′` and a nonzero ideal `a` prime to `f` and to the primes ramified in `K′/K`, with `σ = (a, K′/K)`, there is a unique isomorphism `η_a : (E/aE, α mod aE) ≅ (E^{(σ)}, σ(α))` (Kato, (15.3.3), p. 252, Kato lines 5234–5239; Johnson-Leung–Kings, §3.2, pp. 13–14). Kato's (15.3.3), like NonordinaryCMSpecialValues §2.2, asks only that the prime divisors of `a` be unramified in `K′`. The coprimality with `f` is needed as well: the annihilator of `α mod aE` is `(f : a) = f·(a + f)⁻¹`, which is `f` exactly when `a + f = O_K`, and an `O_K`-linear isomorphism preserves annihilators (Checks). Prove the reduction criterion below. *Needs:* NonordinaryCMSpecialValues §2.2; ComplexMultiplicationAndExplicitReciprocity §§1.2, 2.2, 3.2; ImaginaryQuadraticClassNumber §H3.1; ClassFieldTheory Layer 13; NeronModelsAndSemistableAbelianVarieties §5.1; Mathlib `NumberField.Units.torsion`.

- The Artin action of `a`, for `a` prime to `f` and to the primes ramified in `K′/K`, is the quotient by `E[a]`, that is, the ideal isogeny `[a] : E → a⁻¹ ⊗ E` of ComplexMultiplicationAndExplicitReciprocity §1.2, of degree `N(a)`, with the point carried along; over `ℂ` it is `ℂ/Λ → ℂ/a⁻¹Λ` in the lattice dictionary of ImaginaryQuadraticClassNumber §H3.1.
- Reduction of the canonical pair. For a prime `𝔩` of `K`, let `f′_𝔩` be the part of `f` prime to `𝔩`. The curve of the canonical pair has good reduction at the places of `K(f)` above `𝔩` if and only if `O_K^× → (O_K/f′_𝔩)^×` is injective. The route uses the main theorem of complex multiplication (the idele–torsion dictionary, ComplexMultiplicationAndExplicitReciprocity §2.2) twice. First, an element of `Gal(K̄/K(f))` fixing `K^ab` acts on the torsion of `E` by a unit fixing `α`, hence by 1, so the action on torsion factors through `Gal(K^ab/K(f))`. Second, the Artin image of a local unit `s` at `𝔩` that fixes `K(f)` acts on the `ℓ`-adic Tate modules, `ℓ` prime to `𝔩`, through the unit `ε ∈ O_K^×` with `ε ≡ s` modulo the `𝔩`-part of `f` and `ε ≡ 1` modulo `f′_𝔩` (multiplication by `ε` or by `ε⁻¹` according to the normalization of the Artin map, which does not affect what follows), and every unit `ε ≡ 1 mod f′_𝔩` occurs, for `s = ε`. The Néron–Ogg–Shafarevich criterion (NeronModelsAndSemistableAbelianVarieties §5.1) then gives good reduction exactly when every such `ε` is 1. Kato, proof of Proposition 15.9, p. 258, Kato lines 5492–5494, draws the conclusion at every place without the injectivity; Rubin 1991, proof of Theorem 11.2, Rubin91 lines 1476–1477, uses the same criterion at the places prime to the level.

**Checks.**

- For `f = (1 + i)^3` (norm 8), `(O_K/f)^×` has order 4 and `i ↦ i mod f` is injective, so `K(f) = K`. The canonical pair is a model over `ℚ(i)` with a rational point of annihilator `(1 + i)^3`.
- The ideal action needs `a` prime to `f`. Take `f = (1 + i)^3` and `K′ = K(f) = K`, where no prime ramifies. For `a = (1 + i)` the annihilator of `α mod aE` is `(f : a) = (1 + i)^2`, while `σ(α) = α` has annihilator `(1 + i)^3`, so no `η_a` exists; over `ℂ` the two pairs are `(ℂ/(1 + i)^2, 1)` and `(ℂ/(1 + i)^3, 1)`. For `a = (5)`, prime to `f`, `(f : a) = f`, and `η_a` is induced by `[5]`, which fixes `α` because `5 − 1 = 4 ∈ (1 + i)^4` (§3.1, Checks).
- The canonical pair of modulus `(1 + i)^3` is `E : y² = x³ − x` over `ℚ(i)` with `α = (i, 1 − i)`, and `[i](x, y) = (−x, iy)` acts on `dx/y` by `i`. The only nonzero point of `E[1 + i]` is `(0, 0)`, the fixed point of `[i]`; doubling gives `2α = (0, 0)`, so `(1 + i)^2α = [i](2α) ≠ 0 = (1 + i)^3α`. At `𝔩 = (1 + i)`, `f′_𝔩 = O_K`, the reduction criterion allows all four units, and `E` has bad reduction there, consistent with its conductor `32` over `ℚ`. At every other prime `f′_𝔩 = f`, `μ_4` injects, and `E` has good reduction, as `Δ = 2^6` confirms.

### 2.4 Standard elliptic units

For `f` as in §2.3, `(E, α)` the canonical pair over `K(f)` and `a` prime to `6f`, define the standard elliptic unit `a z_f = aθ_E(α)⁻¹ ∈ K(f)^×`. This inverse is Kato's normalization and Johnson-Leung–Kings' (Definition 3.2, p. 14, JLK line 593); NonordinaryCMSpecialValues §2.2 calls `aθ_E(α)` the standard unit, and the first Check of §2.5 shows that the Kronecker formula holds for the inverse. Now fix a prime `p` and an ideal `a` prime to `6p`. For every nonzero `m` prime to `a`, define `a ζ_m = N_{K(p^r m)/K(m)}(aθ_E(α)⁻¹)`, with `(E, α)` the canonical pair of modulus `p^r m` and any `r ≥ 1` such that `O_K^× → (O_K/p^r)^×` is injective (Kato, 15.5, p. 253; Johnson-Leung–Kings, Definition 3.2 and Proposition 3.3, pp. 14–15, JLK lines 590–600). Thus `a ζ_m = N_{K(p^r m)/K(m)}(a z_{p^r m})`, and `a` is prime to `6p^r m`. The condition that `a` be prime to `p` is what keeps `α` off the poles of `aθ_E`: `α` lies in `E[a]` exactly when its annihilator `p^r m` divides `a`, which `a` prime to `p` and `r ≥ 1` exclude, and the only zero of `aθ_E` is at the origin, which `α` is not. *Needs:* NonordinaryCMSpecialValues §§2.1–2.2; §§2.2–2.3; §1.2; ClassFieldTheory Layer 13.

- For `a` prime to `6p` and `m` prime to `a`, `a ζ_m` does not depend on `r`.
- `a z_f` has valuation zero at every prime not dividing `f`. It is a unit when `f` has two distinct prime factors, and an `O_K[1/𝔮]`-unit when `f` is a power of a prime `𝔮`.
- Norm relation: for `a` prime to `6p` and a prime `𝔮` with `m𝔮` prime to `a`, `N_{K(m𝔮)/K(m)}(a ζ_{m𝔮}) = (a ζ_m)^{1 − Frob_𝔮⁻¹}` if `𝔮 ∤ pm`, and `= a ζ_m` if `𝔮 ∣ pm`.
- Auxiliary independence: `(b z_f)^{N(a) − σ_a} = (a z_f)^{N(b) − σ_b}` for `a, b` prime to `6f` (Kato, (15.4.4)), and `(b ζ_m)^{N(a) − σ_a} = (a ζ_m)^{N(b) − σ_b}` for `a, b` prime to `6p` and `m` prime to `ab`, with the Artin symbols in `Gal(K(m)/K)` (Johnson-Leung–Kings, Proposition 3.3(3)).
- Galois action: for `c` prime to `f`, `σ_c(a z_f)` is the theta value at the conjugate point, computed through `η_c`.

**Checks.**

- For `a = (5)` and `b = (7)` in `ℚ(i)` with `f` prime to `35`, the relation reads `(7 z_f)^{25 − σ_{(5)}} = (5 z_f)^{49 − σ_{(7)}}`. The unequal factors test the relation itself, which `a = b` would not.
- For `K = ℚ(i)` and `f = (3)(1 + i)^3`, with two distinct prime factors, `a z_f` is a global unit of `K(f)`.
- The auxiliary ideal must be prime to `p` in `a ζ_m`. Take `K = ℚ(i)`, `p = 5`, `m = (1)`, `r = 1`: `μ_4` injects into `(O_K/5)^× ≅ 𝔽_5^× × 𝔽_5^×`, and the canonical pair has modulus `(5)`. With `a = (5)`, which is prime to `6` and even to `6f` for `f = (3)`, the point `α` is a nonzero point of `E[a]`, where the divisor `N(a)(0) − E[a]` has coefficient `−1`; so `aθ_E` has a pole at `α`, `aθ_E(α)⁻¹ = 0`, and its norm is `0`, not an element of `K^×`. With `a = (7)`, prime to `30`, `E[5] ∩ E[7] = 0`, so `α` is neither a zero nor a pole and `a ζ_{(1)} ∈ K(1)^× = K^×` is defined. The standard unit `a z_f` with `a = (5)` and `f = (3)` is unaffected: there `α` has annihilator `(3)`.
- The cyclotomic units `1 − ζ_{p^n}` of `ℚ(μ_{p^n}) ⊂ K(p^n)` do not form this system. Their norms along the `ℤ_p`-direction transverse to the cyclotomic one are not compatible, and they carry no factor `N(a) − σ_a`.
- Dropping the factor `1 − Frob_𝔮⁻¹` for `𝔮 ∤ pm` would make the family norm-compatible in every direction, which contradicts the Kronecker limit formula of §2.5.

### 2.5 Kronecker's limit formula for elliptic units

For `f` with injective units, `a` prime to `6f` and every character `χ` of `Gal(K(f)/K)`, prove (Kato, (15.5.1), p. 253):

```text
Σ_{σ ∈ Gal(K(f)/K)} χ(σ) log|σ(a z_f)|_ℂ = (N(a) − χ(a)⁻¹) · lim_{s→0} s⁻¹ L_f(χ, s).
```

Here `|x|_ℂ = x·x̄` is the normalized absolute value of the complex place under the fixed embedding, the one in the regulator of the class number formula and in Mathlib's `NumberField.Units.regulator`. With the usual absolute value `(x·x̄)^{1/2}`, which Johnson-Leung–Kings name in their Proposition 3.3(4), the right sides carry a factor `½` (Checks).

For finite `K ⊂ K′ ⊂ K(p^∞f)`, let `z_{K′}` be the image of `z_{p∞f}` (§2.6) in `O_{K′}[1/p]^× ⊗ ℚ`. Prove that `Σ_σ χ(σ) log|σ(z_{K′})|_ℂ = lim_{s→0} s⁻¹ L_{pf}(χ, s)` for every nontrivial `χ` of `Gal(K′/K)` (Kato, (15.6.5), p. 255; Johnson-Leung–Kings, Proposition 3.3(4), p. 14). The route applies §2.1 at the canonical pair and sums over the ray classes of modulus `f`, represented by ideals `c` prime to `f`, through `η_c`. *Needs:* §§2.1, 2.3, 2.4, 2.6; NonordinaryCMSpecialValues §2.2; AnalyticNumberTheoryPartI §2.3a; GlobalNumberFields Layer 9.

**Checks.**

- The normalization and the inverse in `a z_f`. Take `K = ℚ(i)`, `f = (3)` and `a = (5)`: `Gal(K(3)/K) ≅ 𝔽_9^×/μ_4` has order 2, `σ_{(5)} = 1` because `5 ≡ −1 mod 3`, and the conjugates of `aθ_E(α) = 5θ_E(α)` are the values of `5θ` on `ℂ/ℤ[i]` at `1/3` and `(1 + i)/3`. Kato's product formula (Proposition 1.3(3), p. 122) gives `log|5θ(1/3)| = 0.6619…` and `log|5θ((1 + i)/3)| = 5.9297…` for the usual absolute value, of sum `6 log 3`: the norm of `aθ_E(α)` to `K` has usual absolute value `3^6`. At `χ = 1` the right side is `24·ζ_K(0)·log 9 = −12 log 3`, since `ζ_K(0) = −1/4`, and the left side for `a z_f = aθ_E(α)⁻¹` is `−2·6 log 3 = −12 log 3`. The unit `aθ_E(α)` would give `+12 log 3`, and the usual absolute value `−6 log 3`. At the quadratic `χ`, `L_f(χ, s) = L(χ_{−3}, s)L(χ_{12}, s)` has `lim s⁻¹ L_f(χ, s) = L(χ_{−3}, 0)·L′(χ_{12}, 0) = (1/3)·log(2 + √3)`, and both sides equal `8 log(2 + √3)`, the left side being `2(5.9297… − 0.6619…)`.
- For the trivial character the first formula involves the derivative at `0` of the partial zeta function prime to `f`; the second formula excludes the trivial character.
- If `χ` is nontrivial and unramified at a prime `𝔩 ∣ f` with `χ(𝔩) = 1`, then `L_f(χ, s)` has a zero of order at least two at `0` (order one from the complex place, one more from `1 − χ(𝔩)N(𝔩)^{−s}`) and the left side vanishes: the unit of modulus `f` does not see that component. For the trivial character the order is one: for `K = ℚ(i)` and `f = (3)`, `L_f(1, s) = ζ_K(s)(1 − 9^{−s})` with `ζ_K(0) = −1/4`, so the derivative at `0` is `−log(9)/4 ≠ 0`.
- For `a = (5)` in `ℚ(i)` and `χ((5)) = −1`, the factor is `25 + 1 = 26`, and a factor `N(a) − χ(a)` would give the same value. When `χ(a) = i` the stated factor is `25 − i⁻¹ = 25 + i`, while `N(a) − χ(a)` gives `25 − i`: the inverse is detected only by non-real values.

### 2.6 The elliptic-unit module and the auxiliary-free element

Define `z ⊂ h¹` as the `R`-submodule generated by the norm-compatible families `(a z_{p^n f})_n`, over all ideals `a` prime to `6pf`. Define `z_{p∞f} = (N(a) − σ_a)⁻¹·(a z_{p^n f})_n ∈ h¹ ⊗_R Q(R)` for any `a ≠ O_K` prime to `6pf` (Kato, 15.5–15.6 and (15.6.3)–(15.6.4), pp. 253–254; Burungale–Tian, §2.1.1, p. 3, BT line 144; Johnson-Leung–Kings, §§5.1, 5.3, pp. 23 and 25). Here `N(a) − σ_a` is a non-zero-divisor of `R`, because its image under every finite-order character `η`, `N(a) − η(σ_a)`, is nonzero. The element is defined at every prime `p`; NonordinaryCMSpecialValues §2.3 states the case `p ≥ 5` inert in `K` with `p ∤ h_K`, built from the inverse of the unit of §2.4. *Needs:* §§1.2, 1.3, 2.4, 0.1; Mathlib `cyclotomicCharacter`.

- `z_{p∞f}` does not depend on `a`: `(N(b) − σ_b)·(a z) = (N(a) − σ_a)·(b z)` in `h¹`.
- `(N(a) − σ_a)·z_{p∞f} ∈ H¹_{p∞f}(ℤ_p(1))` for every admissible `a`.
- The ideal `J` generated by the elements `N(a) − σ_a` is the kernel of the cyclotomic character `R → ℤ_p`. `R/J ≅ ℤ_p` is pseudo-null, so `J_q = R_q` and `z_q = R_q·z_{p∞f}` at every height-one prime `q`.
- For `f ∣ f′` the norm `h¹(f′) → h¹(f)` sends `z_{p∞f′}` to `∏_{𝔩 ∣ f′, 𝔩 ∤ pf} (1 − Frob_𝔩⁻¹)·z_{p∞f}`.
- Under `h¹ ≅ H¹(O_K[1/pf], Ω(1))` (§§1.3, 1.5), `z_{p∞f}` is Johnson-Leung–Kings' `ζ(f)`.

**Checks.**

- `R/J ≅ ℤ_p` with `g` acting through the cyclotomic character. The quotient has dimension one, so `J` is a unit at every height-one prime.
- For admissible `a` with `N(a) > 1`, `(N(a) − σ_a)·z_{p∞f}` is the family `(a z_{p^n f})_n`. A definition with `1 − σ_a` or `N(a) − σ_a⁻¹` fails this test. No pole appears at height one, although a single factor `N(a) − σ_a` can lie in a height-one prime `q`: `z_{p∞f}` does not depend on `a`, and some admissible `b` has `N(b) − σ_b ∉ q`, because the ideal `J` the factors generate lies in no height-one prime.
- `ξ((h¹/z)_ℚ) = ξ(h¹_ℚ/R_ℚ·z_{p∞f})`, because `z` and `R·z_{p∞f}` differ only in codimension two.

### 2.7 Cotorsion of elliptic units

Prove that `h¹/z` is a torsion `R`-module for every `p` and every `f`; equivalently, `z_{p∞f}` generates `h¹` at every height-zero prime (Burungale–Tian, §2.1.1, p. 3, BT line 145; Kato, 15.1, p. 251; Johnson-Leung–Kings, Theorem 3.9 and its proof, pp. 17–18, JLK line 727). The route works one height-zero prime at a time. On its component choose a finite-order `η` ramified at all primes above `p` with `η(Frob_𝔩) ≠ 1` at the primes `𝔩 ∣ f`, `𝔩 ∤ p`, where the component is unramified. Such `η` exist because `Frob_𝔩` has infinite order in `G/I_𝔩`. By §2.5 the archimedean regulator of the `η`-part of `z_{K′}` is the leading coefficient of `L_{pf}(η⁻¹, s)` at `s = 0`, which is nonzero by the functional equation and the nonvanishing of `L(η̄, 1)`. Since the regulator is injective on units modulo torsion, the `η`-part is nonzero, and §1.7 gives rank one. *Needs:* §§1.7, 2.5, 2.6; AnalyticNumberTheoryPartI §2.3a; LFunctions Layer 7; Mathlib `NumberField.Units.regulator_ne_zero`.

### Examples

For `K = ℚ(i)`, `p = 2`, `f = (1)`, `R = ℤ_2[[ℤ_2²]]` is a domain, and §2.7 says that `z_{2∞} ≠ 0`. For `K = ℚ(√−3)` the auxiliary ideal must be prime to 6; `a = (5)` (`5` inert, norm 25) and the prime `a = (2 + √−3)` above the split prime `7` (norm `2² + 3 = 7`) give the factors `25 − σ_{(5)}` and `7 − σ_a`. The principal ideal `(7) = a·ā` is not prime: it has norm `49` and factor `49 − σ_{(7)}`.

### Dependencies

Layer 1; Layer 0; NonordinaryCMSpecialValues §§2.1–2.2; AutomorphicPadicLFunctionsPartII §§3.3–3.4; PadicFamilies §4.0.1; ModularCurves Layers 0 and 2; EllipticCurves Layers 1–2; ComplexMultiplicationAndExplicitReciprocity §§1.2, 2.2, 3.2; ImaginaryQuadraticClassNumber §H3.1; ClassFieldTheory Layer 13; NeronModelsAndSemistableAbelianVarieties §5.1; GlobalNumberFields Layer 9; AnalyticNumberTheoryPartI §2.3a; LFunctions Layer 7; Mathlib `NumberField.Units.regulator_ne_zero`, `NumberField.Units.torsion`, `cyclotomicCharacter`.

## Layer 3: CM realizations and Kato's reciprocity law

### 3.1 Kato's realization of a CM Hecke character

Let `r ≥ 1` and let `ψ` be a Hecke character of `K` of type `(−r, 0)`, with values generating the finite extension `L = K(ψ(K̂^×)) ⊂ ℂ`. Choose `f` contained in the conductor of `ψ` with injective units, and let `(E, α)` be the canonical pair over `K(f)`. Define the Betti realization `V_L(ψ) = H¹(E(ℂ), ℚ)^{⊗r} ⊗_K L`, the tensor power over `K` of the one-dimensional `K`-space `H¹(E(ℂ), ℚ)`. Define the étale realization `V_{L_λ}(ψ) = H¹_ét(E_{ℚ̄}, ℚ_p)^{⊗r} ⊗_{K ⊗ ℚ_p} L_λ` for a place `λ ∣ p` of `L`, the tensor power over `K ⊗ ℚ_p` of the free rank-one `K ⊗ ℚ_p`-module `H¹_ét(E_{ℚ̄}, ℚ_p)` (Kato, 15.8, p. 256, Kato lines 5399 and 5402). For an ideal `a` prime to `f` let `q_a : E → E/aE` be the quotient by `E[a]`, of degree `N(a)`, and `J_a = η_a ∘ q_a : E → E^{(σ_a)}` the composite with the isomorphism `η_a` of §2.3. Extend the natural `Gal(ℚ̄/K(f))`-action to `Gal(ℚ̄/K)` by letting `σ` with `σ|_{K(f)} = σ_a` act as the composite of transport of structure `σ_* : H¹_ét(E_{ℚ̄}, ℚ_p) → H¹_ét(E^{(σ_a)}_{ℚ̄}, ℚ_p)`, the pullback `(J_a^*)^{⊗r}` back to `H¹_ét(E_{ℚ̄}, ℚ_p)^{⊗r}`, and multiplication by `ψ(a)⁻¹`; this is independent of `a` (Kato lines 5404–5413). Define the de Rham realization `S(ψ) ⊂ coLie(E)^{⊗r} ⊗_K L`, the tensor power over `K(f)` of the one-dimensional `K(f)`-space `coLie(E)`, as the invariants of the semilinear `Gal(K(f)/K)`-action in which `σ_a` acts through `coLie(E) → coLie(E^{(σ_a)})`, the pullback `(J_a^*)^{⊗r}` and the same factor `ψ(a)⁻¹` (Kato lines 5425–5436, where the pullback along `η_a` lands in `coLie(E/aE)` and is identified with `coLie(E)` through the quotient isogeny). Define the period map `per_ψ : S(ψ) → V_L(ψ) ⊗ ℂ` (Kato, 15.7–15.8 and (15.8.1), pp. 255–258; Burungale–Tian, §2.2.5, p. 5, BT lines 199–206). The realizations are stated for every prime `p` under `λ` and in Kato's `H¹`-form (Kato line 5398); NonordinaryCMSpecialValues §2.4 treats `p ≥ 5` inert with `p ∤ h_K` and writes the dual Betti line `H₁(E(ℂ), ℚ)^{⊗r} ⊗ L` with a scalar period map. *Needs:* §2.3; ComplexMultiplicationAndExplicitReciprocity §§1.2, 4.1; AutomorphicGaloisRepresentationsPartII AG2.0; GlobalNumberFields Layers 9–10; EllipticCurves Layer 2.

- `V_L(ψ)`, `S(ψ)` are one-dimensional over `L`, and `V_{L_λ}(ψ)` is one-dimensional over `L_λ`.
- An idele `a` acts on `V_{L_λ}(ψ)` by `a_v^r ψ(a)⁻¹`, where `v` is the place of `K` under `λ`. For `a` prime to `pf` the Artin symbol `σ_a` acts by `ψ(a)⁻¹`, and the action factors through `G_{p∞f}`.
- `S(ψ) ⊗_L L_λ ≅ D^j_dR(K ⊗ ℚ_p, V_{L_λ}(ψ))` for `1 ≤ j ≤ r` (Kato, (15.8.1)), from the filtered de Rham comparison for `E` over the completions of `K(f)`, with the CM action and tensor powers, descended through the semilinear action.
- The constructions for `f ⊂ f′` are identified through the canonical isogenies of canonical pairs.
- For `r = 1` and `ψ` the character of a CM elliptic curve, `V_{L_λ}(ψ)` is the corresponding one-dimensional component of ComplexMultiplicationAndExplicitReciprocity §4.1, dualized to Kato's cohomological convention.

**Checks.**

- At a prime `𝔮 ∤ pf` of `K` a Frobenius acts on `V_{L_λ}(ψ)` by `ψ(𝔮)⁻¹`. For `K = ℚ(i)`, `r = 1`, `ψ` the character of `y² = x³ − x` and `𝔮 = (2 + i)`, `ψ(𝔮)` has norm 5 and the eigenvalue `ψ(𝔮)⁻¹` has absolute value `5^{−1/2}`, not a root of unity.
- `V_{L_λ}(ψ)` is ramified at `v`, because the idele action contains `a_v^r` with `r ≥ 1`. It is not a finite-order character.
- `dim_L V_L(ψ) = 1` although `H¹(E(ℂ), ℚ)` has dimension two over `ℚ`. The tensor power is over `K`, and a tensor power over `ℚ` would have dimension `2^r`.
- The extended action with a principal auxiliary ideal. Take `K = ℚ(i)`, `f = (1 + i)^3`, so that `K(f) = K` (§2.3, Checks), `r = 1`, `ψ` the character of `y² = x³ − x` with `ψ((π)) = π` for `π ≡ 1 mod (1 + i)^3`, and `a = (5)`. Its Artin symbol on `K(f) = K` is trivial, `E^{(σ_a)} = E`, `q_a` is the quotient by `E[5]`, and `η_a` is the isomorphism `E/E[5] → E` induced by `[5]`, which sends `α mod E[5]` to `5α = α` because `5 ≡ 1 mod (1 + i)^3`. So `J_a = [5]`, its pullback on `H¹` is multiplication by `5`, and `ψ((5)) = 5`: an element `σ ∈ Gal(ℚ̄/K)` acts by `ψ(a)⁻¹·5·σ_* = σ_*`, as the choice `a = O_K` gives. The pullback along `η_a` alone has domain `H¹(E^{(σ_a)})` and target `H¹(E/E[5])`, not an endomorphism of `H¹(E)`, and a formula without `ψ(a)⁻¹` would give `5σ_*`, contradicting independence of `a`.

### 3.2 The period evaluation

With `K′ = K(g)` for `g = p^m f₀ ⊂ f`, `m ≥ 1`, with injective units (`f₀` the prime-to-`p` part of `f`), `(E, α_m)` the canonical pair of modulus `g`, `a` an auxiliary ideal prime to `6pf` (so that `α_m ∉ E[a]`, as in §2.4), `ω` a basis of `coLie(E)` and `β ∈ H₁(E(ℂ), ℚ)` the image of `1` under `K ≅ H₁(ℂ/g, ℚ)`, put `ω_r = (r − 1)!⁻¹ (d/ω)^r log(aθ)(α_m) · ω^{⊗r}`. Prove that for every character `χ` of `Gal(K′/K)` (Kato, (15.9.1)–(15.9.2) and their proof, pp. 259–260):

```text
Σ_σ χ(σ) per_ψ(σ(ω_r)) = (N(a) − ψ(a)χ(a)⁻¹) · L_{pf}(ψ̄, χ, r) · β^{⊗(−r)}.
```

Consequently, when `N(a) − ψ(a)χ(a)⁻¹ ≠ 0` for every character `χ` of `Gal(K′/K)`, so that `N(a) − ψ(a)σ_a` is invertible in `L[Gal(K′/K)]`, the element `z = (N(a) − ψ(a)σ_a)⁻¹ω_r` satisfies `Σ_σ χ(σ) per_ψ(σ(z)) = L_{pf}(ψ̄, χ, r)·β^{⊗(−r)}`. Such auxiliary ideals exist for every `K′`. For `r ≠ 2`, `|ψ(a)| = N(a)^{r/2} ≠ N(a)` whenever `N(a) > 1`. For `r = 2`, any prime `a = 𝔮` split in `K` and prime to `6pf` works: `ψ(𝔮)/N(𝔮)` has absolute value one, but some power of it is a root of unity times `π/π̄` for a generator `π` of a power of `𝔮`, which is not a root of unity because `𝔮 ≠ 𝔮̄`. The route expresses `(d/ω)^r log θ` by §2.1 and re-indexes the lattice sum by `c ↦ cb` onto ideals in a ray class. It uses `ψ((c)) = c^r` for `c ≡ 1` modulo the conductor and `ψψ̄ = N^r`. *Needs:* §§2.1–2.3, 3.1; AnalyticNumberTheoryPartI §2.3a.

**Checks.**

- For `r ≥ 3` and trivial `χ` both sides are absolutely convergent, and the identity is a rearrangement of lattice sums.
- At `r = 1`, `r = 2` the right side is the continued value `L_{pf}(ψ̄, χ, r)` at the edge of absolute convergence.
- The auxiliary factor can vanish. For type `(−2, 0)` and `c ∈ ℤ` prime to `6f`, `ψ((c)) = c²ε(c)` with `ε(c) = ψ((c))c^{−2}` a root of unity, equal to `1` when `c ≡ 1` modulo the conductor of `ψ`. With `a = (c)` the factor is `c²(1 − ε(c)χ(a)⁻¹)`, zero exactly at the characters `χ` with `χ(a) = ε(c)`; for `c ≡ 1` modulo the conductor the trivial character is among them. The congruence matters. In `K = ℚ(i)`, take `ψ = ψ_E²ν`, with `ψ_E` the character of `y² = x³ − x` and `ν` of order four and conductor `(5)`, and take `c = 7`. Then `ψ_E((7)) = −7`, since `−7 ≡ 1 mod (1 + i)^3`, and `ν((7)) = −1`: `7` is `(2, 2)` in `(O_K/5)^× ≅ 𝔽_5^× × 𝔽_5^×`, whose class has order two in the cyclic quotient of order four by the image `⟨(3, 2)⟩` of `μ_4`. So `ψ((7)) = −49`, and the factor is `98` at `χ = 1` and `0` at `χ = ν`. The invertibility hypothesis on `a` is needed in both cases.
- `|ψ(a)| = N(a)^{r/2}`, since `ψψ̄ = N^r` and `|ψ| = |ψ̄|`. For `r = 1` the factor satisfies `|N(a) − ψ(a)χ(a)⁻¹| ≥ N(a) − N(a)^{1/2} > 0`, so every auxiliary `a ≠ O_K` prime to `6pf` is admissible in weight two.

### 3.3 Kato's explicit reciprocity law for elliptic units

Let `r ≥ 1`, `ψ` of type `(−r, 0)`, `p` any prime, `f` contained in the conductor of `ψ`, `K′ ⊂ K(p^∞f)` finite over `K` and `γ ∈ V_L(ψ)`. Map `z_{p∞f}` along `H¹_{p∞f}(ℤ_p(1)) → H¹_{p∞f}(V_{L_λ}(ψ)(1)) → H¹(O_{K′}[1/p], V_{L_λ}(ψ)(1))`, the first map being `x ↦ x ⊗ γ`. Then localize at `p` and apply the dual exponential and (15.8.1). Prove that the image lies in `S(ψ) ⊗_K K′`, and that for every character `χ` of `Gal(K′/K)`, `Σ_σ χ(σ) per_ψ(σ(image)) = L_{pf}(ψ̄, χ, r)·γ` (Kato, Proposition 15.9 and its proof, pp. 258–260). The law is stated at every prime; NonordinaryCMSpecialValues §2.6 states it for `p ≥ 5` inert with `p ∤ h_K`. The route first replaces `f` by `f𝔮` for a prime `𝔮` prime to `6pf`. The law for `f` follows from the law for `f𝔮`. The norm relation of §2.6 sends `z_{p∞f𝔮}` to `(1 − Frob_𝔮⁻¹)·z_{p∞f}`, and `x ↦ x ⊗ γ` sends `Frob_𝔮⁻¹·x` to `ψ(𝔮)⁻¹·Frob_𝔮⁻¹·(x ⊗ γ)` (Conventions; Frobenius acts on `V_{L_λ}(ψ)` by `ψ(𝔮)⁻¹`, §3.1). So on the `χ`-sum the factor is `1 − ψ(𝔮)⁻¹χ(𝔮) = 1 − ψ̄(𝔮)χ(𝔮)N(𝔮)^{−r}`, the Euler factor by which `L_{pf𝔮}(ψ̄, χ, r)` differs from `L_{pf}(ψ̄, χ, r)`. It is nonzero because `|ψ(𝔮)⁻¹| = N(𝔮)^{−r/2} < 1`, so `1 − ψ(𝔮)⁻¹Frob_𝔮⁻¹` is invertible on each `χ`-part. For `f𝔮` the route reduces by traces to `K′ = K(g)` with `g = p^m f₀𝔮`, `f₀` the prime-to-`p` part of `f` and `m ≥ 2` large, and by linearity to `γ = β^{⊗(−r)}`. At every prime `𝔩 ∣ g` the part of `g` prime to `𝔩` is divisible by `𝔮` or by `p^m`, and `O_K^×` injects modulo either. So the curve `E` of the canonical pair has good reduction everywhere over `K(g)` (§2.3, reduction criterion). Without `𝔮` this can fail (Checks). Each `𝔭`-divisible group of `E` over a place of `K(g)` above `p` then has relative `O_𝔭`-height one (absolute height two at inert or ramified `p`). The route applies the height-one explicit reciprocity law (gap:height-one-explicit-reciprocity) to the norm-compatible system of theta values `θ_n(ξ_n)` with `θ_n(z) = aθ(z − ν_n)`. The result `p^{−mr}·ω_r` is then divided by `N(a) − ψ(a)σ_a`, and §3.2 is applied. *Needs:* PadicHodgeRegulators §§1.4, 1.7 and gap:height-one-explicit-reciprocity; §§2.3, 2.6, 3.1, 3.2, 1.3; NeronModelsAndSemistableAbelianVarieties §5.1.

**Checks.**

- For `χ` of conductor divisible by every prime of `pf`, `L_{pf}(ψ̄, χ, r) = L(ψ̄χ, r)`, the full Hecke value.
- For `r = 1`, `K = ℚ(i)` and `ψ` the character of `y² = x³ − x`, the formula relates the localized elliptic units to `L(ψ̄χ, 1)`. At `p = 2`, `K ⊂ ℚ(μ_{2^∞})` and the statement is not excluded.
- The relative height is one at inert `p`, although the `p`-divisible group of `E` has height two there. A hypothesis "ordinary `p`-height one" would exclude inert primes, which the law covers.
- The auxiliary prime is needed for good reduction. Take `K = ℚ(i)`, `p = 2`, `r = 1`, `ψ` the character of `y² = x³ − x`, of conductor `(1 + i)^3`, and `f = (1 + i)^3`. Then `f₀ = O_K`, every `p^m f₀` is a power of `(1 + i)`, and at `(1 + i)` the part prime to it is `O_K`: the curve of the canonical pair has bad reduction above `(1 + i)` by the reduction criterion of §2.3 (for modulus `(1 + i)^3` it is `y² = x³ − x`, §2.3, Checks), and its `2`-power torsion is not a `2`-divisible group over the local integers. With `𝔮 = (2 + i)`, of norm `5`, `μ_4` injects into `(O_K/𝔮)^× ≅ 𝔽_5^×`, and the curve over `K(2^m𝔮)` has good reduction everywhere. Here `ψ(𝔮) = −1 + 2i`, since `−1 + 2i ≡ 1 mod (1 + i)^3`, and at the trivial `χ` the Euler factor is `1 − (−1 + 2i)⁻¹ = 1 + (1 + 2i)/5 = (6 + 2i)/5 ≠ 0`, equal to `1 − ψ̄(𝔮)/N(𝔮)`.

### Examples

For a CM newform of weight `k` attached to `ψ` of type `(1 − k, 0) = (−r, 0)` with `r = k − 1`, Layer 3 is applied to that `ψ`. For `k = 2`, `r = 1`, the period evaluation is the classical one for the CM elliptic curve.

### Dependencies

Layer 2; Layer 1 (§1.3); ComplexMultiplicationAndExplicitReciprocity §§1.2, 4.1; AutomorphicGaloisRepresentationsPartII AG2.0; GlobalNumberFields Layers 9–10; EllipticCurves Layer 2; PadicHodgeRegulators §§1.4, 1.7 and gap:height-one-explicit-reciprocity; NeronModelsAndSemistableAbelianVarieties §5.1; AnalyticNumberTheoryPartI §2.3a.

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

For an abelian extension `F/K` and every prime `p`, prove the rational and integral Tamagawa number conjectures for `h⁰(F)` at `s = 0` with scalar coefficients. Let `E` be a number field containing the values of the characters of `Gal(F/K)`, `O_E` its integers and `O_p = O_E ⊗ ℤ_p`, and let `h⁰(F)_E` be the motive `h⁰(Spec F)` over `K` with coefficients in `E`, whose `L`-function is `ζ_F(s)` read as an `E ⊗ ℂ`-valued function. The statement is the predicate `ETNC(h⁰(F)_E, O_E)` of PeriodsAndSpecialValues PS.5.2 for the commutative scalar order `O_E`, rationality and integrality included, localized at `p`: an equality of `O_p`-lattices in the `E_p`-line `Det_{E_p} RΓ_c(O_K[1/p], h⁰(F)_{E,p})` (Johnson-Leung–Kings, Conjectures 2.4–2.5 and Theorem 2.6, p. 10, JLK lines 407–432). The group `Gal(F/K)` acts on the motive but is not part of the coefficient order, so this is not the equivariant predicate for `ℤ[Gal(F/K)]`, whose integrality controls the lattice of each character separately and is not proved here.

The regulator is normalized with the squared absolute value `|x|_ℂ = x·x̄` of §2.5: `r_∞ : O_F^× ⊗ E → ⊕_τ E ⊗ ℝ`, `u ↦ Σ_τ log|τ(u)|_ℂ·τ`, over the `K`-embeddings `τ : F → ℂ`, with the Betti lattice of `O_E`-valued functions on them. For a nontrivial character `η` of `Gal(F/K)`, the zeta element `z(η) ∈ H¹_f(M(η)^∨(1)) ⊗ ℝ` is the element with `r_∞(z(η)) = L*(η, 0)·t_B(η)` for the Betti generator `t_B(η)` (the construction of Johnson-Leung–Kings, Definition 2.10, p. 12, JLK lines 476–483), and `z_p(η) = ∏_{𝔭 ∣ p}(1 − η(𝔭))·z(η)`, with `η(𝔭) = 0` when `η` is ramified at `𝔭`. Johnson-Leung–Kings normalize their regulator with the usual absolute value `(x·x̄)^{1/2}` (JLK lines 386–398); their regulator is `r_B = r_∞/2`, and their zeta element is `z_B(η) = 2·z(η)`. The squared absolute value is forced at `p = 2`: on the units of `F`, the covolume of `r_∞` (one `K`-embedding omitted) is the regulator `R_F` of the analytic class number formula `ζ_F*(0) = −h_F R_F/w_F`, while that of `r_B` is `2^{1−[F:K]}R_F`, and for `m` characters the two families of zeta elements span lattices differing by `2^m` (Checks).

In the form used: for abelian `L ⊃ F ⊃ K` such that `1 − η(𝔭) ≠ 0` for every `η ∈ Ĝ_L ∖ Ĝ_F` and every prime `𝔭 ∣ p` of `K` (for instance when every such `η` is ramified at all primes above `p`, as in §4.3), the `O_p`-module `⊗_η r_p(z_p(η))O_p`, the tensor product running over `η ∈ Ĝ_L ∖ Ĝ_F`, equals `⊗_η Det_{O_p}(RΓ(O_K[1/p], O_p(η⁻¹)(1))[1])`, the determinant of the shifted complex, equivalently `⊗_η Det⁻¹_{O_p} RΓ(O_K[1/p], O_p(η⁻¹)(1))` (Johnson-Leung–Kings, §2, Theorem 2.6, Corollary 2.8, Proposition 2.9 and Corollary 2.11, pp. 7–13, JLK lines 450–455 and 512–522, stated there for `z_B` and without the condition on the Euler factors; Huber–Kings, Proposition 2.3.1, for odd `p`). This is one identity of tensor products of character lines; it does not identify the factors one by one. When a removed Euler factor vanishes, `z_p(η) = 0` while the determinant is an invertible module, so no such identity holds; the integral statement for those characters is the first one, an equality of lattices in `Det RΓ_c(O_K[1/p], ·)`, in which the local complexes `RΓ_f(K_𝔭, ·)` enter through the identification of their determinants with `E_p` and no Euler factor is divided out (Johnson-Leung–Kings, Conjecture 2.5 with (8), JLK lines 409–420). The route has three steps. Both conjectures for `h⁰(F)` are reformulations of the analytic class number formula through the regulator `r_∞` and the `p`-adic structure of compactly supported cohomology (Huber–Kings, proof of Proposition 2.3.1 and Proposition 2.3.2, pp. 18–20; Johnson-Leung–Kings, Theorem 2.6, for every `p`); `F` and `K` have no real places, and with `r_∞` the covolume is `R_F`, so no power of 2 is lost. Then pass to the quotient motives `M(η)`, and remove the Euler factors at `p` through `Det RΓ_f(K_𝔭, O_p(η⁻¹)^∨) = 1 − η(𝔭)`, which uses that `RΓ_f(K_𝔭, ·)` is acyclic after inverting `p`, that is `1 − η(𝔭) ≠ 0`. *Needs:* §1.1; PeriodsAndSpecialValues PS.5.2; ArithmeticGaloisDuality §D7.5; PadicMeasuresIwasawaAlgebras §5.1; Mathlib `NumberField.Units.regulator`, `NumberField.IsTotallyComplex`.

**Checks.**

- For `F = K` the statement is the `p`-part of the class number formula at `s = 0`. The unit rank of `K` is zero, so `ζ_K(0) = −h_K R_K/w_K` is a value, not a derivative. For `K = ℚ(i)`, `ζ_K(0) = −1/4`, a unit for odd `p` and of valuation `−2` at `2`.
- `F` is totally complex, so no real-place 2-torsion intervenes at `p = 2`.
- Vanishing Euler factors. Take `K = ℚ(i)`, `F = K`, `L = K(3) = ℚ(i, √3)` and its quadratic character `η`, the only element of `Ĝ_L ∖ Ĝ_F`. For `p = 13 = (3 + 2i)(3 − 2i)`, `3 + 2i ≡ −i` and `3 − 2i ≡ i` modulo 3 lie in `μ_4`, so both primes above 13 split in `L` (equivalently `4² ≡ 3 mod 13`), `η(𝔭) = 1` at both, and `z_13(η) = (1 − 1)²·z(η) = 0`. The left side of the reformulation would be the zero module, the right side an invertible `ℤ_13`-module: the reformulation does not apply, and the integral statement at such `η` is the one through `RΓ_c`. At `p = 3` the same `η` is ramified at the unique prime `(3)` above 3, the factor is 1, `z_3(η) = z(η)`, and the reformulation applies.
- The regulator normalization. For `F = K(3) = ℚ(ζ_12)` over `K = ℚ(i)`, `h_F = 1`, `w_F = 12`, and `u = (1 + √3)/(1 + i)` is a unit with `u² = −i(2 + √3)`, generating the units modulo torsion. Its squared absolute values at the two `K`-embeddings are `(1 ± √3)²/2 = 2 ± √3`, so the covolume of `r_∞` is `R = log(2 + √3)` and that of `r_B` is `R/2`. On the other side `ζ_F*(0) = ζ_K(0)·L*(η, 0) = (−1/4)(R/3) = −R/12 = −h_F·R/w_F`. With `r_B` the same formula would need the factor 2, a nonunit at `p = 2`: a rank-one generator multiplied by 2 has 2-adic valuation raised by 1.
- The shift is a single inversion. For the complex `C = [ℤ_p → ℤ_p]` in degrees 0 and 1 given by multiplication by `p`, whose determinant lattice under the acyclic trivialization is `pℤ_p` (valuation 1, the convention of PadicMeasuresIwasawaAlgebras §5.1), `Det(C[1])` is `p⁻¹ℤ_p` (valuation −1), while `Det⁻¹(C[1])` would be `pℤ_p` again (valuation +1). Writing both the inverse and the shift returns the opposite line.
- Scalar coefficients do not control characters separately. In `ℤ_7[C₃] ≅ ℤ_7³` (`7 ≡ 1 mod 3`, so the three characters take values in `ℤ_7`), the element `(1, 7, 1/7)` of `ℚ_7³` has product 1, so the tensor product of the three lines it defines equals the tensor product of the unit lattices, while its component valuations are `(0, 1, −1)`. A lattice comparison given by this element satisfies the scalar statement and fails the equivariant one for `ℤ_7[C₃]`.

### 4.3 Elliptic units are the Tamagawa zeta elements

Let `η` have conductor `f_η` and level large enough that it is ramified at every prime above `p`. Prove that `ζ_K(η⁻¹) = tr_{K(f_η)/K}(ζ_{f_η} ⊗ t_p(η⁻¹))` lies in `H¹_f`, and that it equals `(N(a) − η(a))·z_p(η)`, with `z_p(η) = z(η)` the zeta element of §4.2, normalized with the squared absolute value, and `N(a) − η(a)` invertible for `a ≠ O_K`. Consequently `ζ_K(η⁻¹)` is not torsion, and for `n` large, `⊗_η (N(a) − η(a))⁻¹ζ_K(η⁻¹)O_p = ⊗_η r_p(z_p(η))O_p = ⊗_η Det⁻¹_{O_p} RΓ(O_K[1/p], O_p(η⁻¹)(1))` over the characters of exact level `n`, the second equality being §4.2, whose condition on the Euler factors holds for these characters (Johnson-Leung–Kings, Definition 3.8, Theorem 3.9 and Corollary 3.10, pp. 17–19, JLK lines 727 and 785). The route computes the regulator `r_∞` of both sides with §2.5 and uses its injectivity. Johnson-Leung–Kings, Theorem 3.9(a), state the identity for their element `z_B(η) = 2·z(η)` (§4.2), computing with the usual absolute value both in the Kronecker formula (their Proposition 3.3(4)) and in the regulator; with that element the identity reads `ζ_K(η⁻¹) = ½(N(a) − η(a))·z_{B,p}(η)`, and over `m` characters `⊗_η (N(a) − η(a))⁻¹ζ_K(η⁻¹)O_p = 2^{−m}·⊗_η r_p(z_{B,p}(η))O_p`. Their Corollary 3.10 is the lattice identity above, the two factors of 2 in their computation cancelling. *Needs:* §§2.5, 4.1, 4.2; Mathlib `NumberField.Units.regulator_ne_zero`.

**Checks.**

- The normalization of the zeta element. Take `K = ℚ(i)`, `p = 3`, `η` the quadratic character of conductor `(3)`, ramified at the unique prime above 3, and `a = (5)`, with `η(a) = 1` (§2.5, Checks) and `N(a) − η(a) = 24`. Put `R = log(2 + √3)`, so `L*(η, 0) = R/3`. The two conjugates of the inverse theta value have usual logarithms `−0.6619…` and `−5.9297…` (§2.5, Checks), so `r_B(ζ_K(η⁻¹)) = 5.2678… = 4R` and `r_∞(ζ_K(η⁻¹)) = 8R = 24·(R/3)`. Hence `ζ_K(η⁻¹) = 24·z(η) = 12·z_B(η)`; the identity with `z_B` in place of `z` would give `r_B = 24·R/3 = 8R ≠ 4R`.
- At `p = 2` the factor matters: a rank-one generator multiplied by 2 has 2-adic valuation raised by 1, so `z(η)O_2` and `z_B(η)O_2` are different lattices, and only one of them can be the determinant lattice. For `p` odd they coincide.
- `N(a) − η(a) ≠ 0` because `|η(a)| = 1 < N(a)`; for `a = O_K` the factor `1 − η(1) = 0`, which is why `a ≠ O_K` is required.

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
2. `H¹(O_K[1/p], Λ(χ)(1))` has rank one and `H¹/J_χ(ζ(χ))` is torsion.
3. `H²(O_K[1/p], Λ(χ)(1))` is torsion.
4. The inclusion `κ_χ : J_χ(ζ(χ)) → RΓ(O_K[1/p], Λ(χ)(1))[1]` is good in the sense of Knudsen–Mumford with divisor zero, so that `Det_{Λ_O}(H¹/J_χ(ζ(χ))) ≅ Det_{Λ_O} H²`.

Here the auxiliary factor carries the character. Let `G_χ = Gal(K(p^∞f_χ)/K)` and let `tw_χ : O_p[[G_χ]] → Λ_O` be the continuous ring map `g ↦ χ(g)⁻¹·(g|_{K_∞})`, where `χ(g)` is the scalar by which `g` acts on `t_p(χ)`. It is onto, and by the semilinearity of the Conventions it is the ring map along which `x ↦ cor(x ⊗ t_p(χ))`, from the classes of the ray tower to `H¹(O_K[1/p], Λ(χ)(1))`, is linear. Put `s_a(χ) = tw_χ(N(a) − σ_a) = N(a) − χ(σ_a)⁻¹·(σ_a|_{K_∞})` for `a ≠ O_K` prime to `6pf_χ`, with `σ_a ∈ G_χ` the Artin symbol, `ζ(χ) = s_a(χ)⁻¹·a ζ(χ)` in `H¹(O_K[1/p], Λ(χ)(1)) ⊗_{Λ_O} Q(Λ_O)`, and `J_χ = tw_χ(J)`, the image of the ideal `J` of §2.6, generated by the `s_a(χ)`. Then `J_χ(ζ(χ))` is the `Λ_O`-submodule generated by the classes `a ζ(χ)`, the module Johnson-Leung–Kings intend (JLK lines 1003–1007). Prove: `s_a(χ)` is a non-zero-divisor, because `Λ_O` is a finite product of domains and on each factor the augmentation `N(a) − χ(σ_a)⁻¹` of `s_a(χ)` is nonzero (`|χ(σ_a)| = 1 < N(a)`); `ζ(χ)` does not depend on `a`, by applying `x ↦ cor(x ⊗ t_p(χ))` to the relation `(N(b) − σ_b)·(a z) = (N(a) − σ_a)·(b z)` of §2.6, which gives `s_b(χ)·a ζ(χ) = s_a(χ)·b ζ(χ)`; and `Λ_O/J_χ ≅ O_p/(χ_cyc(h) − χ(h)⁻¹ : h ∈ Gal(K(p^∞f_χ)/K_∞))`, a quotient of `O_p`, is pseudo-null, so `(J_χ)_𝔮 = (Λ_O)_𝔮` at every height-one prime `𝔮`. For `χ = 1`, `s_a(1) = N(a) − σ_a|_{K_∞}` and `J_1` is the ideal `J_Λ` of Johnson-Leung–Kings. Their (17) (JLK lines 960–961 and 999–1002) divides by the untwisted `N(a) − σ_a|_{K_∞}` for every `χ` and names the module `J_Λ(ζ(χ))`; for nontrivial `χ` the quotient so defined depends on `a`, since `s_a(χ)/(N(a) − σ_a|_{K_∞})` is 1 when `χ(σ_a) = 1` and not otherwise (Checks).

In length form: `length (H¹/J_χζ(χ))_𝔮 = length H²_𝔮` at every height-one prime `𝔮`, integrally, `𝔮 ∋ p` included. There is no restriction on `p`: `p = 2`, `p = 3` and `p` dividing the degree of the field cut out by `χ` are included. The route has four steps. Twisting by continuous `ρ : Γ → O_p^×` reduces to characters of large level (Lemmas 4.7 and 6.1, Corollary 6.2). The twisting isomorphism, which sends `a ζ(χ)` to `a ζ(χρ)` for every `a` (§4.1), is semilinear for a ring automorphism of `Λ_O` of the form `γ ↦ ρ(γ)^{±1}γ`; applied to `s_b(χ)·a ζ(χ) = s_a(χ)·b ζ(χ)` for all `a`, `b` this forces it to send `s_a(χ)` to `s_a(χρ)`, hence `J_χ` to `J_{χρ}` and `ζ(χ)` to `ζ(χρ)`; it does not preserve the untwisted factors `N(a) − σ_a|_{K_∞}`. There §4.4 gives effectivity of `Div(κ_η ∘ τ_η)` and Lemma 6.6 that of `Div(τ_η)`, with `s_a(η)⁻¹Det(Λ_O·a ζ(η)) = Det(J_η ζ(η))`, both equal to `Λ_O·ζ(η)` because `Λ_O/J_η` is pseudo-null. The sum over the new characters of level `n` is tested after the augmentation, where `s_a(η)` becomes `N(a) − η(a)` and the sum becomes the equality of §4.3, in the normalization of §4.2; with the zeta elements `z_B` of the usual absolute value the two sides would differ by `2^m` for the `m` new characters, a nonunit at `p = 2`. An effective divisor whose sum vanishes is zero. *Needs:* §§4.1–4.4, 2.6; PadicMeasuresIwasawaAlgebras §§4.6, 5.1; SelmerIwasawaCohomology §3.7.

**Checks.**

- For `K = ℚ(i)`, `p = 2`, `χ = 1`, the equality holds integrally over `ℤ_2[[ℤ_2²]]`.
- Rubin's standing hypothesis `p ∤ #μ(H)` excludes `p = 2` for `ℚ(i)` and `p = 2, 3` for `ℚ(√−3)`; the statement here includes them.
- The trivial-character component: `J_1` is `J_Λ`; when it is proper it has height at least two and is not principal, and `J_1(ζ(1))` differs from `Λ_O·ζ(1)` only in codimension two, consistently with §2.6.
- The twisted factor. Take `K = ℚ(i)`, `p = 3`, `χ` the quadratic character of `Gal(K(3)/K) ≅ 𝔽_9^×/μ_4`, `a = (2 + i)` and `b = (7)`, both prime to `6pf_χ = (18)`. In `𝔽_9 = ℤ[i]/3` the squares are `μ_4 = {±1, ±i}`; `2 + i ≡ −1 + i` is not among them, so `χ(σ_a) = −1`, and `7 ≡ 1`, so `χ(σ_b) = 1`. The augmentations of `s_a(χ)`, `s_b(χ)` are `5 + 1 = 6` and `49 − 1 = 48`; those of the untwisted factors are `4` and `48`. By §2.5 the bottom-layer classes `a ζ_K(χ)` and `b ζ_K(χ)` have regulators `6·L*(χ, 0) = 2R` and `48·L*(χ, 0) = 16R`, with `R = log(2 + √3)`, `L*(χ, 0) = R/3`. Dividing by the twisted factors gives `R/3` twice; dividing by the untwisted ones gives `R/2` and `R/3`, two different elements.
- The ideals differ. In the same example `Gal(K(3^∞)/K_∞)` has order two and maps isomorphically onto `Gal(K(3)/K)`; its generator `h` acts on `μ_3` by inversion (`K(3) = K(√−3)`), so `χ_cyc(h) = −1 = χ(h)⁻¹`. Hence `Λ_O/J_χ ≅ ℤ_3` and `J_χ` is a proper ideal of height two, while `J_1 = Λ_O`, since it contains `N(a) − σ_a|_{K_∞}`, whose augmentation 4 is a unit of `ℤ_3`.

### 4.6 The main conjecture over `O_K[1/pf]` with Euler factors

Suppose `f_χ ∣ f` and put `ζ(χ, f) = ∏_{𝔩 ∣ f, 𝔩 ∤ p}(1 − χ(𝔩)Frob_𝔩⁻¹)·ζ(χ)`, its image in `H¹(O_K[1/pf], Λ(χ)(1))`. Prove that `J_χ(ζ(χ, f)) → RΓ(O_K[1/pf], Λ(χ)(1))[1]` is good and induces `Det(H¹(O_K[1/pf], Λ(χ)(1))/J_χ(ζ(χ, f))) ≅ Det H²(O_K[1/pf], Λ(χ)(1))`, with the twisted ideal `J_χ` and element `ζ(χ)` of §4.5 (Johnson-Leung–Kings, Corollary 5.3 and its proof, pp. 24–25, JLK line 1025, where the ideal is written `J_Λ`). The route combines §4.5 with the localization triangle: the supported complexes at `𝔩` have determinant `(1 − χ(𝔩)Frob_𝔩⁻¹)⁻¹` (§1.5), compensated by the Euler factors. *Needs:* §§4.5, 1.5.

**Checks.**

- If every prime of `f` divides `p`, then `ζ(χ, f) = ζ(χ)` and the statement is §4.5.
- If `χ` is ramified at `𝔩`, then `χ(𝔩) = 0` and the factor is 1.

### 4.7 Rubin's Iwasawa modules

Fix a prime `𝔭` of `K` above `p`, an abelian extension `K₀ ⊃ H` of `K` (with `H` the Hilbert class field) with `p ∤ [K₀ : K]`, and an abelian extension `K_∞ ⊃ K₀` of `K` with `Gal(K_∞/K₀) ≅ ℤ_p` or `ℤ_p²`. Assume Rubin's standing hypothesis `p ∤ #μ(H)`. Define `A_∞`, `ℰ̄_∞`, `𝒞̄_∞`, `U_∞` and `X_∞` as norm limits over finite `F ⊂ K_∞` of: the `p`-parts of class groups; the closures of the global units and of Rubin's elliptic units in the local principal units at the primes above `𝔭`; the local principal units themselves; and the Galois groups of the maximal abelian `p`-extensions unramified outside the primes above `𝔭`. They are modules over `Λ = ℤ_p[[Gal(K_∞/K)]] = ⊕_χ Λ^χ`, `Λ^χ ≅ R_χ[[Γ]]` (Rubin 1991, §1, pp. 27–29, Rubin91 lines 193–205, and §4, pp. 36–37, Rubin91 lines 500–541). *Needs:* §§1.2, 2.4; ClassFieldTheory Layers 11–13; IntegralIwasawaTheory §10.0; PadicMeasuresIwasawaAlgebras §4.6.

- Each module is the direct sum of its `χ`-components `e_χ Y` over the irreducible `ℤ_p`-representations `χ` of `Δ = Gal(K₀/K)`; the idempotents are integral since `p ∤ #Δ`.
- Class field theory gives the exact sequence `0 → ℰ̄_∞/𝒞̄_∞ → U_∞/𝒞̄_∞ → X_∞ → A_∞ → 0`, the limit of the finite-level sequences by exactness of compact inverse limits.
- `char(Y)` for a finitely generated torsion `Λ`-module is the product of the characteristic ideals of its components.
- For the two-variable ray tower `K(p^∞f)` with `p ∤ #Δ_f`, the `χ⁻¹`-projection of `E′_∞` is `H¹(O_K[1/p], Λ(χ)(1))` (Johnson-Leung–Kings, §5.4 and Lemma 5.8, pp. 26–27).

**Checks.**

- When `p` splits in `K`, `X_∞` and `U_∞/𝒞̄_∞` are torsion, and the two equalities of §4.8(i) are equivalent through the sequence (Rubin91 lines 565–566).
- When `p` is inert in `K` and `Gal(K_∞/K₀) ≅ ℤ_p²`, `U_∞/𝒞̄_∞` is not torsion (Rubin91 lines 566–567); a torsion characteristic ideal assigned to it is not defined.
- For `Δ` trivial (`K₀ = K = H`, class number one) there is one component and `Λ ≅ ℤ_p[[Γ]]`.

### 4.8 Rubin's main conjecture and its all-prime classical form

Under Rubin's hypotheses prove (Rubin 1991, Theorem 4.1 and Remarks (1)–(2), p. 37, Rubin91 lines 545–571):

- (i) If `p` splits in `K`, then `char(A_∞) = char(ℰ̄_∞/𝒞̄_∞)` and `char(X_∞) = char(U_∞/𝒞̄_∞)`.
- (ii) If `p` is inert or ramified, then `char(A_∞)` divides `char(ℰ̄_∞/𝒞̄_∞)`, with `char(A_∞)^χ = char(ℰ̄_∞/𝒞̄_∞)^χ` for every irreducible `χ` nontrivial on the decomposition group of `𝔭` in `Δ`.

For the two-variable ray tower `K(p^∞f)`, whose Galois group over `K` is `Δ_f × Γ` with `Γ ≅ ℤ_p²`, and `p ∤ #Δ_f`, prove also the classical form at every prime `p`, `2` and `3` included, with no condition on the splitting of `p` or on `χ`: `char(p_{χ⁻¹}A_∞) = char(p_{χ⁻¹}E_∞/I_χ J_χ(ζ(χ)))`, integrally, for the norm limits `A_∞`, `E_∞` over the `K(p^n f)`, with `J_χ` and `ζ(χ)` as in §4.5 and `I_χ = tw_χ(I)` the image of the augmentation ideal `I` of `R_O` under the map `g ↦ χ(g)⁻¹·(g|_{K_∞})` of §4.5, defined by the same formula on `R_O`; since `p ∤ #Δ_f`, `I_χ = Λ_O` for `χ ≠ 1` (it contains `χ(δ)⁻¹ − 1`, a unit for `δ ∈ Δ_f` with `χ(δ) ≠ 1`) and `I_1` is the augmentation ideal of `Λ_O` (Johnson-Leung–Kings, §5.4, pp. 26–27, JLK lines 1091–1129, where the module is written `I_Λ J_Λ(ζ(χ))`). It is a two-variable statement: no one-variable form is deduced from it here. For the classical form, decompose `Ω_O = ∏_χ Λ(χ)` and identify the `χ`-parts with the cohomology of §4.5. The decomposition-group modules at `p` in Lemma 5.8's sequence are pseudo-null, so `H²` and `A_∞` have the same characteristic ideal; apply §§4.5–4.6. For (i)–(ii) a proof can follow Rubin's Kolyvagin-system argument (Rubin 1991, §§8–10), which treats `ℤ_p`- and `ℤ_p²`-extensions alike. When `Gal(K_∞/K₀) ≅ ℤ_p²` and `K₀ ⊂ K(f)` with `p ∤ #Δ_f`, it can instead follow the classical form, passing from `K(p^∞f)` to `K_∞` through the quotient by `Gal(K(p^∞f)/K_∞)`, of order prime to `p`. A `ℤ_p`-extension is not reached from the two-variable statements without a control argument: for split `p` that argument is §5.3, whose correction terms are part of the one-variable statement there. For `E/ℚ` with `End(E) = O_K`, `p ≥ 5` of good ordinary reduction and `K_∞ = K(E[p^∞])`, the equalities of (i) are the Theorem of NoncommutativeAndEquivariantIwasawa §4.3, which the route does not reprove; the statement here differs by admitting any `K` of any class number, any abelian `K₀ ⊃ H` with `p ∤ [K₀ : K]`, the inert and ramified primes of (ii), and every prime in the classical form. *Needs:* §§4.5–4.7; PadicMeasuresIwasawaAlgebras §§4.1, 4.6; NoncommutativeAndEquivariantIwasawa §4.3.

**Checks.**

- For `K = ℚ(i)`, `p = 5` (split), `f = (1)`: `Δ ≅ ℤ/4` has order prime to 5 and both forms apply on all four components.
- For `p` inert, an equality `char(X_∞^χ) = char(U_∞^χ/𝒞̄_∞^χ)` is not a statement of (ii): the modules are not torsion (§4.7). What (ii) asserts at an inert prime is the `χ`-part equality `char(A_∞)^χ = char(ℰ̄_∞/𝒞̄_∞)^χ` for `χ` nontrivial on the decomposition group of `𝔭`.
- For `K = ℚ(i)`, `p = 5`, `E : y² = x³ − x` and `K_∞ = K(E[5^∞])`, (i) is the two-variable theorem of NoncommutativeAndEquivariantIwasawa §4.3 on each of the sixteen `χ`-components. Here `Δ = Gal(K(E[5])/K) ≅ (O_K/5)^× ≅ 𝔽_5^× × 𝔽_5^×` has order 16: by CM reciprocity and the Chinese remainder theorem a generator congruent to 1 modulo `(1 + i)³` can have any invertible residue modulo 5, and `K(E[5^∞]) = K((1 + i)³·5^∞)`. The four components of the first Check belong to the conductor-one tower `K(5^∞)`, where the diagonal `μ_4` is divided out: `16/4 = 4`. The same curve at `p = 3` (inert) is outside that theorem and inside (ii).

### Examples

For `K = ℚ(√−7)`, `p = 2` splits (`−7 ≡ 1 mod 8`) and `μ(H) = μ_2`, so Rubin's hypothesis excludes `p = 2`, while §4.5 and the classical form of §4.8 (with `p ∤ #Δ`) cover it.

### Dependencies

Layers 1–2; EulerSystemsAndKolyvaginSystems §§2.2, 2.5, 8.1, 8.2, 8.6, 8.7, 8.14, 8.25, 8.37; ArithmeticGaloisDuality §§R02.4.4, D7.5; PadicMeasuresIwasawaAlgebras §§4.1, 4.6, 5.1; PeriodsAndSpecialValues PS.5.2; SelmerIwasawaCohomology §3.7; ClassFieldTheory Layers 11–13; IntegralIwasawaTheory §10.0; NoncommutativeAndEquivariantIwasawa §4.3; Mathlib `NumberField.Units.regulator`, `NumberField.Units.regulator_ne_zero`.

## Layer 5: split primes, Coleman maps and Katz's measure

### 5.1 Coleman power series and the two-variable Coleman map at a split prime

Let `p = 𝔭𝔭̄` split in `K`, so that `O_{K,𝔭} = ℤ_p`, let `Ô` be the completion of the ring of integers of the maximal unramified extension of `ℚ_p`, with Frobenius `φ`, and let `F` be a one-dimensional formal group of height one over `Ô`, on which `O_K` acts through `O_{K,𝔭} = ℤ_p` by its formal `ℤ_p`-module structure; write `F[𝔭^n]` for its `p^n`-torsion. The case used below is the formal group of a CM curve. Let `E` be as in §2.2 over a number field `K′ ⊃ K`, and `𝔓` a place of `K′` above `𝔭`, unramified over `𝔭`, at which `E` has good reduction; fix an embedding `K′_𝔓 ⊂ Frac(Ô)`. Then `F` is the formal group of a Weierstrass model of `E` over the integers `O_{K′_𝔓}` of `K′_𝔓` with unit discriminant, base changed to `Ô`. `O_K` acts on it through `K ⊂ K′_𝔓`, that is through `O_{K,𝔭}`, and `F[𝔭^n]` is its `𝔭^n`-torsion. This `F` has height one: the reduction `Ẽ` of `E` at `𝔓` is ordinary because `p` splits in `K` (Deuring's criterion, ComplexMultiplicationAndExplicitReciprocity §5.1), and the formal group of `Ẽ` is the reduction of `F` (Yager, Yager lines 102–109, likewise assumes good reduction above the split prime). Good reduction cannot be dropped: at a place of additive reduction the formal group of a minimal Weierstrass model reduces to the formal additive group, of infinite height (Checks). Such curves exist for every `K` and every split `p`: the curve of the canonical pair of a modulus `f` prime to `p` with injective units has good reduction at every place above `p` by the reduction criterion of §2.3, and `K(f)` is unramified above `p`. Since `F` has height one, there is an isomorphism `θ : Ĝ_m ≅ F` of formal groups over `Ô`, unique up to precomposition with `[a]`, `a ∈ ℤ_p^×`; it is automatically `O_K`-linear, and `Ω_p = θ′(0) ∈ Ô^×` is the `p`-adic period it defines. The `𝔭`-power torsion of `F` generates the tower `Φ_n = Frac(Ô)(F[𝔭^{n+1}]) = Frac(Ô)(μ_{p^{n+1}})`, `n ≥ 0`, each step of degree `p`. Fix a basis `ξ = (ξ_n)` of the Tate module of `F`, with `ξ_n` a generator of `F[𝔭^{n+1}]` and `[p]ξ_{n+1} = ξ_n`, and put `ζ_{p^{n+1}} = 1 + θ⁻¹(ξ_n)`, a compatible system of roots of unity. Writing `h^φ` for `φ` applied to the coefficients of `h ∈ Ô[[X]]`, define the Frobenius of `Ô[[X]]` relative to `F` by `Φ(g) = ((g ∘ θ)^φ) ∘ θ⁻¹ = g^φ ∘ ε_F`, with `ε_F = θ^φ ∘ θ⁻¹ : F → F^φ`. It does not depend on `θ`, because `[a]` has coefficients in `ℤ_p`, and it is the coefficientwise `φ` exactly when `ε_F` is the identity, for instance for `F = Ĝ_m` or a Lubin–Tate group over `ℤ_p` for the uniformizer `p`; for a coordinate of `F` not of this kind the coefficientwise `φ` is the wrong operator (Checks). Prove that every norm-compatible system `u = (u_n)` of units `u_n ∈ O_{Φ_n}^×` has a unique *Coleman power series* `g_u ∈ Ô[[X]]^×` with `(Φ^{−n}g_u)(ξ_n) = u_n` for all `n ≥ 0`, namely `g_u = G_u ∘ θ⁻¹` for the cyclotomic Coleman series `G_u ∈ Ô[[T]]^×` of `u` with respect to `(ζ_{p^{n+1}})`, characterized by `G_u^{φ^{−n}}(ζ_{p^{n+1}} − 1) = u_n` (Coleman, Theorem A, Coleman79 lines 61–89, for the Lubin–Tate group `Ĝ_m` over the fixed base `ℤ_p` and the complete unramified extension `Frac(Ô)`; Yager, Chapter 3, Yager lines 466–479). Uniqueness: if `(Φ^{−n}h)(ξ_n) = 0` for all `n`, then `(h ∘ θ)^{φ^{−n}}(ζ_{p^{n+1}} − 1) = 0`; extending `φ` to `Frac(Ô)(μ_{p^∞})` trivially on the roots of unity gives `(h ∘ θ)(ζ_{p^{n+1}} − 1) = 0` for all `n`, so `h ∘ θ = 0` by the Weierstrass preparation theorem. Define the norm operator `N_F` on `Ô[[X]]` by `(N_F g)([p]_F X) = ∏_{η ∈ F[𝔭]} g(X ⊕_F η)`, the transport through `θ` of Coleman's operator for `Ĝ_m` (Coleman, Theorem 11 and Corollary 12, Coleman79 lines 513–530), and the logarithmic derivative `D_θ log g = Ω_p·λ_F′(X)⁻¹·(d/dX) log g`, with `λ_F` the formal logarithm normalized by `λ_F′(0) = 1`; then `(D_θ h) ∘ θ = (1 + T)(d/dT)(h ∘ θ)`, since `λ_F ∘ θ = Ω_p log(1 + T)`. Replacing `θ` by `θ ∘ [a]` multiplies `D_θ` by `a ∈ ℤ_p^×`. *Needs:* §§2.2, 2.3, 4.7; EllipticCurves Layer 1; ComplexMultiplicationAndExplicitReciprocity §5.1; IntegralIwasawaTheory §7.1 and ColemanPowerSeries Layer 1 (the cyclotomic series with unramified coefficients, which give `G_u`); NoncommutativeAndEquivariantIwasawa §4.3 (the case of a rational CM curve at `p ≥ 5`, which the route does not reprove).

- `u ↦ g_u` is multiplicative and continuous, and `N_F g_u = Φ(g_u)`: `Φ(g_u)([p]_F X) = ∏_{η ∈ F[𝔭]} g_u(X ⊕_F η)`. This is the transport through `θ` of `N G_u = G_u^φ` for `Ĝ_m` (Coleman79 lines 527–530; Yager, (7), Yager line 479, in the fixed-base coordinate).
- `Φ` commutes with composition by `[a]_F`, `a ∈ ℤ_p`, and `g_u` is equivariant for `Gal(Φ_∞/Frac(Ô)) ≅ ℤ_p^×`: `σ` sends `g_u` to `g_u ∘ [κ(σ)]`, with `κ` the character on the Tate module; replacing `ξ` by `[b]ξ` for `b ∈ ℤ_p^×` replaces `g_u` by `g_u ∘ [b⁻¹]`.
- `D_θ log g_u` satisfies `p·Φ(D_θ log g_u)([p]_F X) = Σ_{η ∈ F[𝔭]} (D_θ log g_u)(X ⊕_F η)`. Through `θ` this is the cyclotomic identity `p·(D log G_u)^φ((1 + T)^p − 1) = Σ_{ζ ∈ μ_p} (D log G_u)(ζ(1 + T) − 1)`, obtained from `N G_u = G_u^φ` because `D = (1 + T)(d/dT)` has coefficients in `ℤ_p` and is invariant under translation (Yager, Lemma 3 and (10), Yager lines 529–545). With the normalized `D_F = λ_F′(X)⁻¹(d/dX)` instead of `D_θ` the identity acquires the factor `ε_F′(0) = φ(Ω_p)/Ω_p` on the left.

**Checks.**

- The constant system `u_n = 1` has `g_u = 1`, `N_F 1 = 1` and `D_θ log 1 = 0`. For a Teichmüller representative `c ∈ Ô^×` of an element of `𝔽̄_p ∖ 𝔽_p`, the system `u_n = φ^{−n}(c)` is norm-compatible, since `N_{Φ_{n+1}/Φ_n}` raises constants to the `p`-th power and `c^p = φ(c)`, and its Coleman series is the constant `c`, since `Φ` acts on constants as `φ`. A convention without the twist would need a constant series taking the distinct values `φ^{−n}(c)` at the `ξ_n`: there is none.
- For `F = Ĝ_m`, `θ = id`, `ξ_n = ζ_{p^{n+1}} − 1` and coefficients in `ℤ_p`, `Φ` is the coefficientwise `φ`, and the statement is the cyclotomic Coleman interpolation of ColemanPowerSeries Layer 1 and IntegralIwasawaTheory §7.1, with `N g_u = g_u`.
- A coordinate change that `φ` moves. Take `p = 5`, `c ∈ Ô` with `c³ = 1 ≠ c`, so that `φ(c) = c⁵ = c²`, the formal group `F(X, Y) = X + Y + XY/c` and `θ(T) = cT`. Then `ε_F(X) = cX`, `Ω_p = c`, `ξ_n = c(ζ_{5^{n+1}} − 1)`, and the system `u_n = ζ_{5^{n+1}}` has `g_u = 1 + X/c`: `Φ(g_u) = g_u`, so `(Φ^{−n}g_u)(ξ_n) = ζ_{5^{n+1}}`, and `N_F g_u = g_u = Φ(g_u)`. The coefficientwise twist instead gives `g_u^{φ^{−1}}(ξ_1) = 1 + c²(ζ_25 − 1) ≠ ζ_25`, and no series at all satisfies `h^{φ^{−n}}(ξ_n) = ζ_{5^{n+1}}` for every `n`: the even `n` force `h(cT) = 1 + T` and the odd `n` force `h(c²T) = 1 + T`, incompatible since `c ≠ 1`. In the logarithmic-derivative law, `D_θ log g_u = 1` gives `5 = 5`, while the coefficientwise law with `D_F log g_u = c²` gives `5c` on the left and `5c²` on the right.
- For `p` inert in `K` and `E` with good reduction at a place above `p`, the formal group of `E` there is a formal `O_{K,p}`-module of height two over the integers of the completion, which contain `O_{K,p} = ℤ_{p²}` (the reduction is supersingular, ComplexMultiplicationAndExplicitReciprocity §5.1); the steps of its division tower have degree `p²`, and `F` is not isomorphic to `Ĝ_m` over `Ô`; its Coleman interpolation is the height-two theorem of AnticyclotomicLocalUnits §1.1. A construction assuming `F ≅ Ĝ_m` over `Ô` fails there.
- Good reduction is needed. `E : y² = x³ − 25x` has CM by `ℤ[i]` (it is the twist of `y² = x³ − x` by `ℚ(√5)`), and `5 = (2 + i)(2 − i)` splits in `ℚ(i)`. Its invariants `c₄ = 1200` and `Δ = 10^6` have `5`-adic valuations `2` and `6`, so the model is minimal at `5` (a change of model moves `v(Δ)` by multiples of `12`), and its reduction `y² = x³` is cuspidal, hence additive. The formal group of this model reduces to the formal additive group, on which `[5]` is `0`, while on `Ĝ_m` it reduces to `T⁵`: the height is infinite and no `θ` exists, also after unramified extension, which leaves additive reduction additive. The untwisted `E₀ : y² = x³ − x` has `Δ = 64`, a unit at `5`, and `#E₀(𝔽_5) = 8`, so `a_5 = −2 ≢ 0 mod 5`: its reduction at `5` is ordinary and its formal group has height one, as Deuring's criterion predicts for the split prime `5`.

Now let `K` satisfy Rubin's hypotheses with `p` split, `K₀` as in §4.7, `K_∞ ⊃ K₀` with `Gal(K_∞/K₀) ≅ ℤ_p²`, and `F` the formal group of a CM curve `E` over `K′` at a place `𝔓` above `𝔭` as above: unramified over `𝔭`, with good reduction there. First define the local Coleman map `col_θ : U_Φ → Ô[[ℤ_p^×]]`, from the group `U_Φ` of norm-compatible systems `u = (u_n)` of principal units `u_n ∈ 1 + 𝔪_{Φ_n}` to the `Ô`-valued measures on `ℤ_p^×`, identified with `Ô[[Gal(Φ_∞/Frac(Ô))]]` through `κ`. A measure is read through its Amice transform in the coordinate `T = θ⁻¹(X)` (PadicMeasuresIwasawaAlgebras §§2.1 and 2.8), so that `D_θ`, which satisfies `(D_θ h) ∘ θ = (1 + T)(d/dT)(h ∘ θ)`, is multiplication of the measure by `x`. Put `(φ_F h)(X) = Φ(h)([p]_F X)`, the transport through `θ` of `H ↦ H^φ((1 + T)^p − 1)`, and let `ψ_F` be its left inverse, `φ_F(ψ_F h)(X) = p⁻¹ Σ_{η ∈ F[𝔭]} h(X ⊕_F η)`, the transport of the operator `ψ` of PadicMeasuresIwasawaAlgebras §2.2 with `φ` acting on the coefficients in `Ô`; its kernel consists of the transforms of the measures supported on `ℤ_p^×` (§2.6 there). For `u ∈ U_Φ` the third bullet above says that `ψ_F` fixes `D_θ log g_u`, so the boundary `(1 − φ_F)D_θ log g_u` lies in the kernel of `ψ_F` and is the transform of an `Ô`-valued measure `μ_u` on `ℤ_p^×`. Define

```text
col_θ(u) = −x⁻¹·μ_u,
```

with `x⁻¹` the inverse of multiplication by `x` on measures supported on `ℤ_p^×` (PadicMeasuresIwasawaAlgebras §2.3). Equivalently, the transform of `col_θ(u)` is `−(1 − φ_F/p) log g_u`. That series is killed by `ψ_F`, since `N_F g_u = Φ(g_u)` gives `ψ_F(log g_u) = p⁻¹ log g_u`; `D_θ((1 − φ_F/p) log g_u) = (1 − φ_F)D_θ log g_u`, since `D_θ ∘ φ_F = p·φ_F ∘ D_θ`; and it has coefficients in `Ô`, since `g_u(0) ≡ 1` and `g_u^p ≡ φ_F(g_u)` modulo `p`, so that `(1 − φ_F/p) log g_u = p⁻¹ log(g_u^p/φ_F(g_u))` with `log(1 + pÔ[[X]]) ⊂ pÔ[[X]]`. For `F = Ĝ_m`, `θ = id` and the cyclotomic tower of `ℚ_p`, `col_θ` is the normalized Coleman map `Col = −Col₀` of ColemanPowerSeries §§2.37 and 2.39 on principal units, at every prime, and for odd `p` the map `arithmeticColeman = −Amice⁻¹(H((1 − Φ)δ f_u))` of IntegralIwasawaTheory §7.2, whose `H` is the division by `x`. Then define the two-variable Coleman map `Col : U_∞ ⊗̂_{ℤ_p} Ô → Λ_Ô = Ô[[Gal(K_∞/K)]]`: it applies `col_θ` to the norm-compatible families of local units at the places above `𝔭` of the `𝔭`-division towers over the layers of the `𝔭̄`-direction, whose measures live on `ℤ_p^×`, the orbit of the basis `ξ`, and descends them along the `𝔭̄`-direction of the tower (Yager, Chapters 3 and 8, Yager line 71, and Theorem 1, Yager line 201; Rubin 1991, Remark (1) after Theorem 4.1, Rubin91 lines 556–562). For a rational CM curve `E/ℚ` at `p ≥ 5` ordinary this is the map `Col_𝔣` of NoncommutativeAndEquivariantIwasawa §4.3 pushed forward along the division tower; the definition here admits any `K`, any class number and Rubin's `K₀`. *Needs:* the Coleman power series above; §4.7; PadicMeasuresIwasawaAlgebras Layer 1 and §§2.1–2.3, 2.6, 2.8, 4.1; ColemanPowerSeries §§2.37, 2.39 and 2.44; IntegralIwasawaTheory §7.2; EllipticCurves Layer 1; NoncommutativeAndEquivariantIwasawa §4.3.

- `Col` is `Λ`-linear. Locally, `σ ∈ Gal(Φ_∞/Frac(Ô))` sends `g_u` to `g_u ∘ [κ(σ)]`, `D_θ log(g ∘ [a]) = a·(D_θ log g) ∘ [a]` for `a ∈ ℤ_p^×`, and the factor `a` is cancelled by the division by `x`, since `x⁻¹·(a_*μ) = a⁻¹·a_*(x⁻¹μ)` for the pushforward `a_*` along `y ↦ ay`. So `col_θ(σu) = σ·col_θ(u)` with no residual twist (ColemanPowerSeries §2.44), whereas `μ_{σu} = κ(σ)·σ·μ_u`: the map `u ↦ μ_u` is linear only for the twisted action `Tw_κ`. Replacing `θ` by `θ ∘ [a]` multiplies `col_θ` by the group element `σ` with `κ(σ) = a`, and replacing `ξ` by `[b]ξ` multiplies it by the group element with `κ(σ) = b⁻¹`: units of `Λ_Ô` in both cases.
- `Col` is injective, and its cokernel is `(Λ/J_{μ,𝔭}) ⊗ Ô`, where `J_{μ,𝔭} = Ann_Λ μ_{p^∞}(K_∞ ⊗_K K_𝔭)`. Since that module is cyclic with annihilator `J_{μ,𝔭}Λ_Ô`, the image of `Col` is the ideal `J_{μ,𝔭}Λ_Ô`, not `Λ_Ô` in general. This realizes over `Ô` Rubin's exact sequence `0 → U_∞ → Λ → Λ/J_{μ,𝔭} → 0` for split `p` and `Gal(K_∞/K₀) ≅ ℤ_p²`, in which the `Λ`-torsion submodule of `U_∞` is zero (Rubin 1991, Theorem 5.1(ii), Rubin91 lines 638–648; for a rational CM curve, the image `J_𝔣` of NoncommutativeAndEquivariantIwasawa §4.3). The cokernel is a finitely generated `Ô`-module, hence pseudo-null on every component of the two-variable `Λ_Ô`, and multiplicativity of characteristic ideals gives `char(U_∞^χ/𝒞̄_∞^χ)·Λ_Ô^χ = char(Λ_Ô^χ/Col(𝒞̄_∞)^χ)`.
- No one-variable Coleman map is asserted to be injective. For a `ℤ_p`-extension `F′` of `K₀` inside `K_∞`, the norm map from the coinvariants of `U_∞` under `Gal(K_∞/F′)` to `U(F′)` has the kernel and cokernel of Rubin 1991, Theorem 5.1(i) (Rubin91 lines 633–637), finitely generated over `ℤ_p` and not pseudo-null over the one-variable algebra in general. The `Λ_{F′}`-torsion submodule of `U(F′)`, formed by the elements killed by a non-zero-divisor of `Λ_{F′}` (Rubin91 line 600), is `lim μ_{p^∞}(F′ ⊗_K K_𝔭)` when `μ_{p^∞}(F′ ⊗_K K_𝔭)` is infinite, and zero otherwise. In the first case it is a nonzero free `ℤ_p`-module of finite rank, induced from the Tate module `ℤ_p(1)` of the decomposition group of a place above `𝔭`: it has no `ℤ_p`-torsion, and it is `Λ_{F′}`-torsion because `σ − χ_cyc(σ)`, a non-zero-divisor for `σ` of infinite order, kills it for `σ` in that decomposition group. The quotient of `U(F′)` by its `Λ_{F′}`-torsion submodule maps injectively to `Λ_{F′}` with cokernel `Λ_{F′}/J_{μ,𝔭}(F′)`, which has codimension one in that case (Theorem 5.1(ii) for `F′`, Rubin91 lines 638–648). The one-variable main conjectures are deduced from the two-variable ones in §5.3, with their correction terms.

**Checks.**

- `Col` sends the constant norm-compatible system `(1)_n` to 0.
- The local ingredient `col_θ` with `F` replaced by `Ĝ_m`, `θ = id` and the cyclotomic tower of `ℚ_p` is, on principal units, the normalized Coleman map `Col` of ColemanPowerSeries §2.39 and, for odd `p`, `arithmeticColeman` of IntegralIwasawaTheory §7.2. There the kernel `ℤ_p(1)` and the cokernel `ℤ_p(1)` are both nonzero: this is the one-variable phenomenon that the unramified direction of the two-variable tower removes.
- Normalization of `col_θ`. Take `p = 5`, `F = Ĝ_m`, `θ = id`, `ω(2)` the Teichmüller lift of `2` in `ℤ_5`, and `u_n = (1 + ζ_{5^{n+1}})/ω(2)`. These are principal units, since `2/ω(2) ≡ 1 mod 5`, and norm-compatible, since `∏_{ζ ∈ μ_5}(1 + ζY) = 1 + Y^5` and `ω(2)^5 = ω(2)`. Then `g_u = (2 + T)/ω(2)`, and `h = D_θ log g_u = (1 + T)/(2 + T)` has `h(0) = 1/2` and `(Dh)(0) = 1/4`. The boundary `(1 − φ)h` has constant term `1/2 − 1/2 = 0`, is killed by `ψ`, and has first moment `(Dh)(0) − 5(Dh)(0) = −1`. Hence `col_θ(u)` has `∫ x d col_θ(u) = 0`, `∫ x² d col_θ(u) = 1`, and total mass `−(4/5) log 2 = −(1/5) log 16`, a unit of `ℤ_5` since `16 = 1 + 15`. The operator `(1 − φ/5)h` would instead have constant term `1/2 − 1/10 = 2/5 ∉ ℤ_5` and translate sum `Σ_{ζ ∈ μ_5} ((1 − φ/5)h)(ζ(1 + T) − 1) = 4φ(h)`, equal to `2` at `T = 0`: it is the transform of no measure on `ℤ_5^×`. For `σ` with `κ(σ) = 2`, the boundary of `σu` is `2·((1 − φ)h) ∘ [2]`, of first moment `−4`, while `σ·μ_u` has first moment `−2`; after division by `x`, `col_θ(σu)` and `σ·col_θ(u)` both have second moment `4`.
- One-variable negative control. Take `K = ℚ(i)`, `p = 5 = 𝔭𝔭̄`, `K₀ = K(μ_5)` and `F′ = K(μ_{5^∞})`: `H = K`, `[K₀ : K] = 4`, `5 ∤ #μ(H) = 4`, and `Gal(F′/K₀) ≅ ℤ_5`, so Rubin's hypotheses hold. The completion of `F′` at a prime above `𝔭` is `ℚ_5(μ_{5^∞})`, the norms satisfy `N(ζ_25) = ζ_25^{1+6+11+16+21} = ζ_25^{55} = ζ_5`, and `u = (ζ_{5^{n+1}})_n` is a nonzero element of `U(F′)` killed by `σ − χ_cyc(σ)` for the cyclotomic character `χ_cyc`, on the `χ`-component of the character by which `Δ` acts on `μ_5`. It is not `ℤ_5`-torsion: for every `m ≥ 0` the component of `u^{5^m}` at level `n = m` is `ζ_{5^{m+1}}^{5^m} = ζ_5 ≠ 1`. So `u` lies in the `Λ_{F′}`-torsion submodule of `U(F′)` described above, which a statement about `ℤ_p`-torsion would miss. Every `Λ`-linear map from `U(F′)` to the domain `Λ_{F′}^χ` kills it. In the two-variable tower the same roots of unity give no element (§1.2, Checks), consistent with the injectivity above.
- For `p` inert in `K` the local units have rank two over the two-variable algebra, so no injective `Λ`-linear map to `Λ` exists. The split hypothesis is necessary.

### 5.2 Elliptic units and Katz's measure

In the two-variable setting of §5.1, let `L_𝔭 ∈ Λ_Ô` be Katz's two-variable measure for the ordinary CM type determined by `𝔭` (AutomorphicPadicLFunctionsPartII §8.5), pushed forward to `Gal(K_∞/K)` and with the Euler factors at the primes of the conductor removed as in Rubin's definition of `𝒞`. Prove that on each `χ`-component the ideal `Col(𝒞̄_∞)^χ` and the principal ideal `(L_𝔭^χ)` of `Λ_Ô^χ` have the same localization at every height-one prime. Equivalently, `Col(𝒞̄_∞)^χ ⊂ (L_𝔭^χ)` with quotient supported in codimension at least two, `(L_𝔭^χ)` is the divisorial hull of `Col(𝒞̄_∞)^χ`, and `char(Λ_Ô^χ/Col(𝒞̄_∞)^χ) = (L_𝔭^χ)`. Consequently, by §5.1, `char(U_∞^χ/𝒞̄_∞^χ)·Λ_Ô^χ = (L_𝔭^χ)` (Yager, Theorem 1, Yager line 201, for class number one and `p ≥ 5` with good reduction above `p`; Rubin 1991, Remark (1) after Theorem 4.1, Rubin91 lines 556–562, which records it for the `ℤ_p²`-extension in Rubin's setting). The image itself is not principal in general. Rubin's elliptic units are generated by norm-compatible systems indexed by a level and an auxiliary ideal `𝔤` prime to `6` and the level, together with roots of unity (Rubin91 lines 193–205); `Col` sends the system with auxiliary ideal `𝔤` to `(N(𝔤) − σ_𝔤)` times the pushed-forward measure of its level, in the normalizations of the theta function and of the measure. The ideal generated by all the factors `N(𝔤) − σ_𝔤` lies in no height-one prime, because `Λ` modulo it is a quotient of `ℤ_p` on which `G` acts through scalars; a single factor can lie in one (Checks). In the rational case of NoncommutativeAndEquivariantIwasawa §4.3 the image is exactly `J_𝔣ν_𝔣`, with `J_𝔣` generated by the `σ_𝔞 − N𝔞`. The route evaluates `Col` on the elliptic-unit systems with the reciprocity law of §3.3. In the `𝔭`-variable, `∫ x^r d col_θ(u) = −(1 − p^{r−1}φ)((D_θ^r log g_u)(0))` for `r ≥ 1`, because `∫ x^r d col_θ(u)` is minus the value at `0` of `D_θ^{r−1}((1 − φ_F)D_θ log g_u) = D_θ^r log g_u − p^{r−1}φ_F(D_θ^r log g_u)` (§5.1), and the twists of these moments by finite-order characters of `p`-power conductor are determined by the values of `D_θ^r log g_u` and its Frobenius twists at the torsion points of `F`. The moment of index `r` thus involves the `r`-th logarithmic derivative, which is what §3.3 evaluates through `ω_r` (§3.2) at type `(−r, 0)`; so the moments of `Col` of the elliptic units at the characters of type `(−r, 0)`, `r ≥ 1`, are the values `L_{pf}(ψ̄, χ, r)` with periods and Euler factors. Without the division by `x` in §5.1 the moment of index `r` would involve the `(r + 1)`-st derivative and the comparison would be shifted by one. Katz's measure has the same moments on a Zariski-dense set of characters, and uniqueness of a bounded measure with given moments identifies the two up to the auxiliary factors. For `E/ℚ` with `End(E) = O_K` and `p ≥ 5` ordinary, the identity `char((U_∞/𝒞̄_∞)^χ)·Λ_Ô = (μ_χ)` is that of NoncommutativeAndEquivariantIwasawa §4.3, with its measure `ν_𝔣` in place of the measure of AutomorphicPadicLFunctionsPartII §8.5; the statement here admits any `K`, any class number and Rubin's `K₀`. *Needs:* §§5.1, 3.3, 2.6; AutomorphicPadicLFunctionsPartII §8.5; NoncommutativeAndEquivariantIwasawa §4.3.

**Checks.**

- `K = ℚ(i)`, `p = 5 = 𝔭𝔭̄` with `𝔭 = (2 + i)`, `E : y² = x³ − x`, `𝔣 = (1 + i)³`, `ψ` its Hecke character normalized by `ψ((π)) = π` for `π ≡ 1 mod (1 + i)³`. As an ideal character it has type `(1, 0)`; in the idelic convention of Conventions its archimedean component is `z ↦ z⁻¹`, since `ψ` is trivial on principal ideles, so its type there is `(−1, 0) = (1 − k, 0)` with `k = 2`. Counting points gives `#E(𝔽_5) = 8`, so `a_5 = −2` and `ψ(𝔭) = −1 + 2i`, `ψ(𝔭̄) = −1 − 2i`. At `ψ⁻¹`, of idelic type `(1, 0)` (in the ideal-character conventions of the suppliers, `(α, β) = (1, 0)`, that is type `β − α = −1`, in AutomorphicPadicLFunctionsPartII §8.5, and `ε = ψ` with `(k, j) = (1, 0)` in NoncommutativeAndEquivariantIwasawa §4.3, which interpolates at `ε⁻¹`) both interpolation formulas carry the Euler product `(1 − ψ(𝔭)/5)(1 − ψ̄(𝔭̄)/5) = ((6 − 2i)/5)² = (32 − 24i)/25` and the value `L(ψ⁻¹, 0) = L(ψ̄, 1)`; the remaining factors are the periods, `0! = 1`, the sign `ε(1, 0, 0) = +1` of §8.5 and the factor `i^k = i` of §4.3. Interchanging `𝔭` and `𝔭̄` gives `(32 + 24i)/25`, so the two formulas select the same ordinary place. The period and root-of-unity normalizations are each supplier's own; the identity of §5.2 is one of ideals on each `χ`-component, so a change of generator by a unit of `Λ_Ô` (a constant, or the translation by a group element that a rescaling of the `p`-adic period by `u ∈ ℤ_p^×` induces on the moments of the characters unramified at `𝔭`) does not affect it, while the Euler product and the `L`-value do.
- Image versus hull. On the component where `J^χ` is proper, write `Λ_Ô^χ = A = Ô[[S, T]]` and `J = (S − a, T − b)` for the cyclotomic character values `1 + a`, `1 + b` on the two generators, so that `A/J ≅ Ô` has codimension two. An image of the form `Jν` with `ν ≠ 0`, as in NoncommutativeAndEquivariantIwasawa §4.3, satisfies `Jν ≠ Aν`, since `Aν/Jν ≅ Ô ≠ 0`; but `J_q = A_q` at every height-one `q`, so `(Jν)_q = (Aν)_q`, the divisorial hull of `Jν` is `Aν`, and `Aν/Jν` has length 0 at every height-one prime. A statement that `Col(𝒞̄_∞)^χ` equals `(L_𝔭^χ)` as an ideal fails this test.
- A single auxiliary factor is not a unit at height one. On that component `N(𝔤) − σ_𝔤` lies in `J`, so it is a nonzero nonunit of the factorial ring `A` and lies in a height-one prime; on a component with `χ(σ_𝔤) ≢ N(𝔤)` modulo the maximal ideal it is a unit of `Λ_Ô^χ`. It is the ideal generated by all the factors that becomes the unit ideal at every height-one prime (§2.6).
- At `p` inert the left side is not torsion (§4.7) and Katz's measure of §8.5 is not defined: the Check above has no inert analogue.

### 5.3 The Katz form of the main conjecture

Let `p` split under Rubin's hypotheses and `Gal(K_∞/K₀) ≅ ℤ_p²`. Prove that `char(X_∞^χ) = (L_𝔭^χ)` in `Λ_Ô^χ` for every irreducible `χ` of `Δ`, with `L_𝔭` as in §5.2 (Rubin 1991, Theorem 4.1(i) and Remark (1), Rubin91 lines 545–562). The route is §4.8(i) with §5.2. For a rational CM curve at `p ≥ 5` ordinary and its division tower, this is the Theorem of NoncommutativeAndEquivariantIwasawa §4.3 composed with its ideal comparison; the statement here admits any `K`, any class number and Rubin's `K₀`.

For the one-variable towers, let `F′` be a `ℤ_p`-extension of `K₀` inside `K_∞`, `γ` a generator of `Gal(K_∞/F′)`, `Λ_{F′} = ℤ_p[[Gal(F′/K)]]`, `π_{F′} : Λ_Ô → Λ_{F′} ⊗̂ Ô` the projection, and `X(F′)` the Galois group of the maximal abelian `p`-extension of `F′` unramified outside the primes above `𝔭`. Let `D_𝔭̄` be the decomposition group of `𝔭̄` in `Gal(K_∞/K)` and `J(D_𝔭̄)` the ideal generated by the `d − 1`, `d ∈ D_𝔭̄`. Put `A_{F′} = Λ_{F′}/J(D_𝔭̄)Λ_{F′}` if `𝔭̄` ramifies in `K_∞/F′` and `A_{F′} = 0` otherwise, and let `ℤ_p(F′)` be `Gal(K_∞/F′) ≅ ℤ_p` with its trivial action. Prove that `X(F′)` is a torsion `Λ_{F′}`-module and that, for every irreducible `χ` of `Δ`, as fractional ideals of `Λ_{F′} ⊗̂ Ô` on the `χ`-component,

```text
char(X(F′)^χ) · char(A_{F′}^χ) = π_{F′}(L_𝔭^χ) · char(ℤ_p(F′)^χ).
```

In particular `char(X(F′)^χ) = (π_{F′}(L_𝔭^χ))` for every `χ ≠ 1` that is nontrivial on the image of `D_𝔭̄` in `Δ`, and for every `χ ≠ 1` when `𝔭̄` is unramified in `K_∞/F′`. On the remaining components the two correction terms are codimension-one factors and are kept (Rubin 1991, Theorem 5.3(ii)–(v), Rubin91 lines 671–678). The route has four steps.

1. `X_∞` has no nonzero pseudo-null submodule, and the coinvariants `X_∞/(γ − 1)X_∞` have `Λ_{F′}`-rank `[K_𝔭 : ℚ_p] − 1 = 0` (Theorem 5.3(iii)–(v)). Hence `γ − 1` divides no `char(X_∞^χ)`, and `X_∞[γ − 1]`, killed by `γ − 1` and by `char(X_∞^χ)`, is pseudo-null, hence zero.
2. Choose an injective pseudo-isomorphism `X_∞^χ → ⊕_i Λ^χ/(f_i)` with pseudo-null cokernel `Z`. As `γ − 1` divides no `f_i`, the snake lemma gives `0 → Z[γ − 1] → X_∞^χ/(γ − 1) → ⊕_i Λ_{F′}^χ/(f_i mod γ − 1) → Z/(γ − 1)Z → 0`. Over the one-variable algebra `Z[γ − 1]` and `Z/(γ − 1)Z` need not be pseudo-null, but they have the same characteristic ideal: the difference of their characteristic divisors is additive along a filtration of `Z` with quotients `Λ^χ/P`, `P` prime of height at least two, and vanishes on each quotient, which is killed by `γ − 1` when `γ − 1 ∈ P` (both terms equal) and otherwise has no `(γ − 1)`-torsion and a cokernel of `γ − 1` of finite length. Hence `char(X_∞^χ/(γ − 1)) = π_{F′}(char X_∞^χ)`.
3. Theorem 5.3(ii) gives the exact sequence `0 → ker → A_{F′} → ℤ_p(F′) → coker → 0` for the kernel and cokernel of the natural map `X_∞/(γ − 1)X_∞ → X(F′)`, and multiplicativity of characteristic ideals gives the display, with `char(X_∞^χ) = (L_𝔭^χ)`.
4. `ℤ_p(F′)^χ = 0` for `χ ≠ 1`. `Gal(F′/K) = Δ × Γ_{F′}` acts on `A_{F′}` through its finite quotient by the image of `D_𝔭̄`; a character of `Gal(F′/K)` trivial on that image has its `Δ`-part trivial on the image of `D_𝔭̄` in `Δ`, because `#Δ` is prime to `p` and `Γ_{F′}` is pro-`p`. So `A_{F′}^χ = 0` when `χ` is nontrivial there.

*Needs:* §§4.8, 5.2; PadicMeasuresIwasawaAlgebras §§4.1, 4.6; NoncommutativeAndEquivariantIwasawa §4.3.

**Checks.**

- For `K = ℚ(i)` and `p = 5`, the two-variable statement holds on all four components of `Δ ≅ ℤ/4`, the trivial one included.
- The statement concerns `X_∞` unramified outside `𝔭`, not outside both primes above `p`. The module unramified outside `p` has rank one in two variables and is not torsion.
- Specialization does not preserve pseudo-nullity. Over `A₂ = Ô[[S, T]]` with `T = γ − 1`, the module `Z = A₂/(S − s₀, T)`, `s₀ ∈ pÔ`, is pseudo-null, with length 0 at every height-one prime. Both `Z/TZ` and `Z[T]` equal `Ô[[S]]/(S − s₀)`, of length 1 at the height-one prime `(S − s₀)` of the one-variable algebra. They cancel in step 2; keeping only one of them would change the ideal by `(S − s₀)`. For `Z = A₂/(S − s₀, T − t₀)` with `t₀ ∈ pÔ` nonzero, `Z[T] = 0` and `Z/TZ ≅ Ô/t₀` has finite length, the other case of step 2.
- On the trivial component, `ℤ_p(F′)` is `ℤ_p[[Γ_{F′}]]/(γ_{F′} − 1)`, with characteristic ideal `(γ_{F′} − 1)`, a nonzero nonunit. The clean one-variable form is not asserted there.

### 5.4 Anticyclotomic `θ`-components

Let `p > 2` split in `K` as `v v̄`, `K_∞` the anticyclotomic `ℤ_p`-extension and `Λ = ℤ_p[[Gal(K_∞/K)]]` (scalars extended as needed). Let `θ : G_K → 𝔽_p^×` have conductor divisible only by primes split in `K`, Teichmüller-lifted, with `θ|_{G_v̄} ≠ 1, ω`. Let `K_θ` be its fixed field, `Δ_θ = Gal(K_θ/K)`, `M_θ = ℤ_p(θ) ⊗ Λ^∨`, and `𝔛_∞ = Gal(M_∞/K_∞K_θ)` for `M_∞` the maximal abelian pro-`p` extension unramified outside `v`. Prove that the Greenberg Selmer group `H¹_{F_Gr}(K, M_θ)` is `Hom_cts(𝔛_∞^θ, ℚ_p/ℤ_p)`. Its local conditions are: unramified away from `p`, relaxed at `v`, strict at `v̄`. Assume `p ∤ h_K`. Prove that `char_Λ(𝔛_∞^θ) = (L_θ)`, the `θ`-branch anticyclotomic projection of Katz's measure. In particular `𝔛_∞^θ` is torsion and `λ(𝔛_∞^θ) = λ(L_θ)` (Castella–Grossi–Lee–Skinner, Definition 1.2.1, Theorem 1.2.2 with proof and Remark 1.2.3, pp. 7–8, CGLS lines 380–420). For a branch tamely ramified at `p`, `L_θ` is the projection of Katz's measure on the ray tower of conductor `𝔠p^∞` along the branch character, keeping the `Δ_θ`-invariants in the comparison.

The route has three steps.

1. Restriction to `K_θ` is an isomorphism onto `Δ_θ`-invariants since `p ∤ #Δ_θ`. Shapiro identifies these with the dual of the `θ`-part of the `Σ`-ramified Galois group, and the Greenberg conditions cut out the quotient ramified only at `v`. This step uses the hypothesis `θ|_{G_v̄} ≠ 1, ω` through the local cofreeness and the away-`p` Euler factors of SelmerIwasawaCohomology §3.17.
2. Apply the one-variable form of §5.3 with `𝔭 = v`, `K₀ = K_θ·H`, `F′ = K_∞K₀` inside the `ℤ_p²`-extension of `K₀` abelian over `K`, on the `θ`-component, where `π_{F′}(L_v)` on the `θ`-branch is `L_θ`. Both correction terms vanish there: `θ ≠ 1`, and `θ|_{G_v̄} ≠ 1` makes `θ` nontrivial on the image of `D_v̄` in `Gal(K₀/K)`. Rubin's condition `p ∤ [K₀ : K]` holds when `p ∤ h_K`; for `p ∣ h_K` the statement is not asserted.
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
- Only λ is asserted, and the involution preserves it. `ι(T) = (1 + T)⁻¹ − 1 = −T·(1 + T)⁻¹` is `T` times a unit. A distinguished polynomial `P` of degree `d` is `T^d` modulo the uniformizer `ϖ`, so `P(ι(T)) ≡ (−1)^d T^d (1 + T)^{−d}` modulo `ϖ`: its first unit coefficient has index `d`, and `λ(P ∘ ι) = d`. For `d = 0, 1, 2` and `P = 1, T, T²` the reduced orders are `0, 1, 2`. For `P = T + ϖ` the constant coefficient `ϖ` survives, so `P ∘ ι` is not `T` times a unit, yet its first unit coefficient is still at index 1. Units go to units under `ι`, so Weierstrass preparation gives `λ(g ∘ ι) = λ(g)` for every nonzero `g`; in particular `λ(ι(T)) = λ(T) = 1`.

### Examples

For `K = ℚ(√−2)` and `p = 3` (split, since `−2 ≡ 1 mod 3`), the branch `θ = 1` is excluded by `θ|_{G_v̄} ≠ 1`, and `θ = ω` is excluded too, so §5.4 applies only to characters of nontrivial conductor at split primes or nontrivial restriction at `v̄`.

### Dependencies

Layer 4; Layer 3 (§3.3); Layer 2 (§§2.2, 2.3, 2.6); ComplexMultiplicationAndExplicitReciprocity §5.1; IntegralIwasawaTheory §§7.1, 7.2; ColemanPowerSeries Layer 1 and §§2.37, 2.39, 2.44; PadicMeasuresIwasawaAlgebras Layer 1 and §§2.1–2.3, 2.6, 2.8, 4.1; AutomorphicPadicLFunctionsPartII §8.5; NoncommutativeAndEquivariantIwasawa §4.3; SelmerIwasawaCohomology §§2.8, 3.17; EllipticCurves Layer 1.

## Layer 6: the rational equivariant main conjecture

### 6.1 Equality at regular height-one primes

For every prime `p` and nonzero `f`, prove that at every height-one prime `q` of `R` with `p ∉ q`:

```text
length_{R_q} (h¹/z)_q = length_{R_q} (H²_{pf})_q = length_{R_q} h²_q + Σ_{𝔩 ∣ f, 𝔩 ∤ p} length_{R_q} ℤ_p[[G/D_𝔩]]_q.
```

In particular `length h²_q = length (h¹/z)_q` whenever `q` lies on the `χ`-component of a character `χ` of `Δ` such that, for every such `𝔩`, either `χ|_{I_𝔩} ≠ 1` or `χ(δ_𝔩) ≢ 1` modulo the maximal ideal of `O` (§1.5) (Johnson-Leung–Kings, §§7.1–7.2, Lemmas 7.1, 7.2, 7.6, 7.7 and the argument after Lemma 7.7, pp. 34–36, JLK lines 1412–1487; Burungale–Tian, proof of Theorem 2.1, p. 4, BT lines 155–157). The route extends scalars to `O` containing the values of the characters of `Δ`. At regular `q`, `(R_O)_q` is the localization of one factor `O[[Γ]](χ)` (§0.2), and the projection of `a ζ(f)` to that factor is `∏(1 − χ(𝔩)Frob_𝔩⁻¹)·a ζ(χ)` (Lemma 7.7). The ring map from `R_O` to that factor is the map `g ↦ χ(g)⁻¹·(g|_{K_∞})` of §4.5 for the character `χ` whose cohomology `H¹(O_K[1/pf], Λ(χ)(1))` the factor carries; it sends `N(a) − σ_a` to the twisted factor `s_a(χ)` and `J` to `J_χ`, so `z_{p∞f}` maps to `ζ(χ, f)` and `z_q` to `J_χ(ζ(χ, f))_q`, which equals `(Λ_O·ζ(χ, f))_q`. Dividing the projected `a ζ(f)` by the untwisted `N(a) − σ_a|_{K_∞}` would not give an element independent of `a` (§4.5, Checks). §4.6 on that factor gives the first equality via §§1.3 and 2.6. §§1.4–1.5 give the second. *Needs:* §§4.5, 4.6, 1.3–1.5, 2.6, 0.2.

### 6.2 The rational equivariant main conjecture

For every prime `p` and nonzero `f`, prove the equality of ideals of `R[1/p] = ℤ_p[[G_{p∞f}]] ⊗ ℚ`:

```text
ξ((h¹/z)_ℚ) = ξ(h²_ℚ) · ∏_{𝔩 ∣ f, 𝔩 ∤ p} ξ(ℤ_p[[G/D_𝔩]]_ℚ),     equivalently     ξ((h¹/z)_ℚ) = ξ((H²_{pf})_ℚ).
```

This corrects Burungale–Tian, Theorem 2.1 (BT lines 152–153), which prints `ξ(h²_ℚ) = ξ((h¹/z)_ℚ)`. Kato's quotation of Rubin (Kato, Theorem 15.2(2) and 15.6, pp. 251 and 255) has the same imprecision. The printed form holds in the ranges of §6.3. The modules are torsion by §§1.6 and 2.7, so both sides are defined. After inverting `p` every height-one prime is regular, and §6.1 gives the lengths. *Needs:* §§6.1, 1.6, 2.7, 1.5, 0.2.

### 6.3 Where the printed form holds

Prove the following (Burungale–Tian, Theorem 2.1; Johnson-Leung–Kings, Lemma 4.3 and Corollary 5.3):

- (a) If every prime factor of `f` lies above `p`, then `ξ(h²_ℚ) = ξ((h¹/z)_ℚ)`.
- (b) For any `f`, at a height-one prime `q` of `R_O[1/p]` on the `χ`-component of a character `χ` of `Δ` such that every `𝔩 ∣ f` with `𝔩 ∤ p` has `χ|_{I_𝔩} ≠ 1` or `χ(δ_𝔩) ≢ 1` modulo the maximal ideal of `O`, `length h²_q = length (h¹/z)_q`. This covers every `χ` ramified at all such `𝔩`.
- (c) If `f` has a prime factor `𝔩 ∤ p`, then on the `χ`-component of a character `χ` of `Δ` with `χ|_{I_𝔩} = 1` and `χ(δ_𝔩) ≡ 1` modulo the maximal ideal of `O` (the trivial one, for instance), `ξ(h²_ℚ)` and `ξ((h¹/z)_ℚ)` differ by a nonunit factor divisible by `1 − χ(δ_𝔩)⁻¹γ_𝔩⁻¹`.

Parts (a) and (b) are immediate from §6.2 and §1.5. For (c), `γ_𝔩` has infinite order in `Γ` since `Frob_𝔩` has infinite order in `G/I_𝔩`, and `χ(δ_𝔩)⁻¹` is a `p`-power root of unity, so `1 − χ(δ_𝔩)⁻¹γ_𝔩⁻¹` vanishes at a finite-order character of `Γ` and is a nonzero nonunit of `O[[Γ]][1/p]`. Inertia-triviality alone is not enough: the second Check of §1.5 has a component trivial on `I_𝔩` with a unit factor. *Needs:* §§6.2, 1.5.

**Checks.**

- (a) applies to `K = ℚ(i)`, `p = 2`, `f = (1 + i)^3`.
- (c) applies to `K = ℚ(i)`, `p = 5`, `f = (3)`. On the trivial component the printed equality fails by the factor `1 − γ_{(3)}⁻¹`, of augmentation 0. On the component of `ω ∘ χ_cyc`, trivial on `I_{(3)}` with `χ(δ_{(3)}) = −1`, the factor `1 + γ_{(3)}⁻¹` has augmentation 2, is a unit, and (b) gives the printed equality there.
- On the `ψ`-components used in Layer 8, where `f` is the conductor of `ψ`, every `𝔩 ∣ f` is ramified for `ψ`, and (b) gives the printed equality there.

### Examples

For `K = ℚ(√−3)`, `p = 3`, `f = (3)`, every prime of `f` lies above `p`, so (a) gives the printed form. For `p = 2` and `f = (3)`, `(3) = (√−3)²` is a prime power not above 2, and (c) applies on the components of the characters trivial on the inertia at `(√−3)` whose value at `δ_{(√−3)}` has 2-power order, the trivial one among them; (b) applies on the others.

### Dependencies

Layers 0–2 and 4.

## Layer 7: CM newforms, induction and descent

### 7.1 CM newforms and Hecke characters

Let `f` be a normalized newform of weight `k ≥ 2` and level `N` (`HeckeRing.GL2.Newform`), and `π_f` its automorphic representation in the unitary normalization, so that `L(π_f, s) = L(f, s + (k − 1)/2)`. AutomorphicGaloisRepresentations works with `π` of infinity type `(k, w)`, `k ≡ w` mod 2, with central character `|·|^{−w}` times a finite-order character (its Conventions). The unitary `π_f` has `w = 0`, which is excluded for odd `k`; its twist `π_f^{(k−2)} = π_f ⊗ |det|^{−(k−2)/2}` has type `(k, k − 2)` for every `k ≥ 2`, `T_ℓ`-eigenvalue `a_ℓ` and geometric Frobenius polynomial `X² − a_ℓX + ε(ℓ)ℓ^{k−1}` at a good `ℓ`. The CM predicate `π = AI_K^ℚ(α)` of AutomorphicGaloisRepresentations §3.15, with its inducing field `K`, inducing character `α` and algebraic character `α′ = α|·|_K^{−1/2}`, is applied to `π_f^{(k−2)}`. Prove that the following are equivalent:

- (b) there are an imaginary quadratic `K` and a Hecke character `ψ` of `K` with `L(f, s) = L(ψ, s)`;
- (b′) `π_f^{(k−2)}` is CM in the sense of AutomorphicGaloisRepresentations §3.15;
- (c) `f` is the newform attached to an algebraic Hecke character `ψ` of an imaginary quadratic `K` of type `(1 − k, 0)`.

More precisely, for given `K` and `ψ`, `L(f, s) = L(ψ, s)` holds if and only if `π_f = AI_K^ℚ(α)` with `α = ψ·|·|_K^{(k−1)/2}`, the unitary normalization of `ψ`, and if and only if `π_f^{(k−2)} = AI_K^ℚ(α_{(k−2)})` with `α_{(k−2)} = α·|·|_K^{−(k−2)/2} = ψ·|·|_K^{1/2}`, because `AI_K^ℚ(β) ⊗ |det|^s = AI_K^ℚ(β·|·|_K^s)` (`|·|_ℚ ∘ N_{K/ℚ} = |·|_K`; the twist compatibility of AutomorphicGaloisRepresentations §3.15). The archimedean component of `α_{(k−2)}` is `z ↦ z^{3/2−k}z̄^{1/2}`, the conjugate of the component `z^{1/2}z̄^{3/2−k}` that §3.15 there prescribes for `(k, w) = (k, k − 2)`, and its algebraic character is `α′_{(k−2)} = α_{(k−2)}·|·|_K^{−1/2} = ψ`. Such an `f` is a *CM newform* (Kato, Remark 12.8, p. 223, Kato lines 4119–4129). Prove also that (b) implies:

- (a) `f` has a nontrivial self-twist in the sense of ModularForms Layer 9, namely by the quadratic character `ε_K` of `K`.

In that case `ψ` may be taken of type `(1 − k, 0)`, its conductor `f_ψ` satisfies `N = |d_K|·N(f_ψ)` (Schütt, Theorem 1.4, p. 3, Schutt09 lines 123–126, recording Hecke and Shimura), and the Hecke field lies in `K(ψ(K̂^×))` (Burungale–Tian, §2.2.5, p. 5, BT lines 199–206; Kato, 15.10, p. 260, Kato lines 5572–5576). (b) ⇔ (b′): `α` has archimedean component `z ↦ (z̄/|z|)^{k−1}`, of absolute value one, and ideal values `α(𝔮) = ψ(𝔮)N(𝔮)^{−(k−1)/2}`, so `L(AI_K^ℚ(α), s) = L(α, s) = L(ψ, s + (k − 1)/2)`. Thus (b) says that `π_f` and `AI_K^ℚ(α)` have the same local factor at every prime, and strong multiplicity one (ModularForms Layer 5) identifies them; twisting by `|det|^{−(k−2)/2}` gives (b′) with `α_{(k−2)}`, and conversely. (b) ⇒ (a) compares Euler factors: `a_ℓ(f) = 0` for `ℓ` inert in `K`, so `f ⊗ ε_K` and `f` have the same eigenvalues away from the level, and strong multiplicity one applies. *Needs:* AutomorphicGaloisRepresentations §3.15; ModularForms Layers 5, 7, 9; GlobalNumberFields Layers 9–10; ComplexMultiplicationAndExplicitReciprocity §4.2; AnalyticNumberTheoryPartI §2.3a.

**Checks.**

- The newform 32.2.a.a (`y² = x³ − x`) has CM by `ℚ(i)`, with `ψ` of conductor `(1 + i)^3` and `|d_K|·N(f_ψ) = 4·8 = 32`.
- The newform 27.2.a.a has CM by `ℚ(√−3)`, with `ψ` of conductor `(3) = (√−3)²` and `3·9 = 27`.
- 11.2.a.a has no CM. A CM form of level 11 would need `|d_K| ∣ 11`, so `K = ℚ(√−11)`, in which `2` is inert (`−11 ≡ 5 mod 8`); but `a_2 = −2 ≠ 0`.
- The normalization of `α`. For 32.2.a.a and `𝔮 = (2 + i)`, `ψ(𝔮) = −1 + 2i`, the generator congruent to `1` modulo `(1 + i)^3`, so `α(𝔮) = (−1 + 2i)/√5` has absolute value one, and `α·|·|_K^{−1/2}` takes the value `−1 + 2i` there. For `k = 2` the twist is trivial, `α_{(0)} = α`, and that is the value at a geometric Frobenius above 5 which a Check of AutomorphicGaloisRepresentations §3.15 records for its algebraic character `α′`. Taking `α = ψ` would give `|α(𝔮)| = √5`, which is not unitary.
- Weight three. In `K = ℚ(i)` take `ψ = ψ_E²`, of type `(−2, 0)`, `k = 3`, with `ψ_E` the character of `y² = x³ − x`; then `ψ((2 + i)) = (−1 + 2i)² = −3 − 4i`, of absolute value 5. The unitary `α` has value `(−3 − 4i)/5` there, `α_{(1)} = ψ·|·|_K^{1/2}` has value `(−3 − 4i)/√5`, and `α′_{(1)}` has value `−3 − 4i`, of absolute value 5, the eigenvalue of a geometric Frobenius on Kato's `V_{L_λ}(ψ)` (§7.2). Applying `α ↦ α|·|_K^{−1/2}` to the unitary `α` instead gives `(−3 − 4i)/√5`, of absolute value `√5`, the wrong Galois character; and the unitary `π_f` has `w = 0 ≢ 3` mod 2, so §3.15 does not apply to it.

### 7.2 Kato's realization as the inducing character, and its Galois normalization

Let `f` be a CM newform attached to `ψ` of type `(1 − k, 0)` (§7.1), `L = K(ψ(K̂^×))`, `r = k − 1` and `λ` a finite place of `L`. AutomorphicGaloisRepresentations §3.15, applied to `π_f^{(k−2)}` of §7.1, supplies the induction: the `λ`-adic representation of `π_f^{(k−2)}`, whose geometric Frobenius polynomial at a good `ℓ` is `X² − a_ℓX + ε(ℓ)ℓ^{k−1}`, is induced from `G_K` by the `λ`-adic character of its algebraic character `α′_{(k−2)} = ψ` (§7.1). Prove that, with `V_{L_λ}(f)` in Kato's normalization (Conventions), this character is `V_{L_λ}(ψ)` of §3.1 or its conjugate, so that `V_{L_λ}(f) ≅ Ind_{G_K}^{G_ℚ} V_{L_λ}(ψ)` as `G_ℚ`-representations (Kato, 15.10, p. 260). The route compares Frobenius traces. At a prime `𝔮` of `K` prime to `p` and to the conductor of `ψ`, a geometric Frobenius acts on `V_{L_λ}(ψ)` by `ψ(𝔮)` (§3.1). So `Ind V_{L_λ}(ψ)` has trace `ψ(𝔮) + ψ(𝔮̄) = a_ℓ` at a split `ℓ = 𝔮𝔮̄ ∤ Np`, and trace `0 = a_ℓ` at an inert `ℓ ∤ Np` (§7.1). Both representations are semisimple, so Chebotarev density and Brauer–Nesbitt give `V_{L_λ}(f) ≅ Ind V_{L_λ}(ψ)`. Frobenius reciprocity then gives a nonzero `G_K`-map from the `λ`-adic character of `α′_{(k−2)}` to `V_{L_λ}(ψ) ⊕ V_{L_λ}(ψ)^c`. The induction is irreducible over `L_λ`, because `V(ψ)` and its conjugate differ at the place `v` under `λ`. Fix an `L`-isomorphism `S(ψ) ≅ S(f) ⊗_F L` (Kato, (15.11.1)). Prove that there is a unique `G_ℚ`-isomorphism `V_{L_λ}(f) ≅ Ind V_{L_λ}(ψ)` whose induced map on `D^r_dR` is the fixed one (Kato, Lemma 15.11(1) with proof, pp. 260–261, and the paragraph after it, p. 263). This (15.11.2) is the only Galois identification used; the archimedean normalization of §8.1 is never used as one. *Needs:* §§3.1, 7.1; AutomorphicGaloisRepresentations §§1.5, 3.15, 7.3; AutomorphicGaloisRepresentationsPartII AG2.0; ComplexMultiplicationAndExplicitReciprocity §4.2; PadicHodgeRegulators §1.4.

**Checks.**

- For `k = 2` and `f` attached to a CM elliptic curve over `ℚ`, the isomorphism is the one induced by the curve (ComplexMultiplicationAndExplicitReciprocity §4.2, weight-two CM induction comparison).
- Uniqueness: an automorphism of the irreducible induction is a scalar `c ∈ L_λ^×`, and the de Rham condition forces `c = 1`. Without the de Rham normalization the isomorphism is defined only up to `L_λ^×`.
- Restricted to `G_K`, the induction is `V(ψ) ⊕ V(ψ ∘ c)`. Its two Hodge–Tate weights at the embedding over `λ` are `0` and `r = k − 1`, as for `V(f)`.
- The direction of Frobenius. For 32.2.a.a and `𝔮 = (2 + i)`, a geometric Frobenius acts on `V_{L_λ}(ψ)` by `−1 + 2i` and on its conjugate by `−1 − 2i`, of sum `a_5 = −2`. The opposite convention, `ψ(𝔮)⁻¹ = (−1 − 2i)/5`, gives the sum `−2/5`, which is not `a_5`.

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

### 7.8 Elliptic units generate CM Iwasawa cohomology at height zero

Let `f` be a CM newform attached to `ψ` of conductor `f` and type `(1 − k, 0)`, `L = K(ψ(K̂^×))`, `λ ∣ p` a finite place of `L`, `T ⊂ V_{L_λ}(ψ)` a stable lattice, `T̃` its induction (§7.2) and `Λ = O_λ[[G_∞]]`; when `K ⊂ ℚ(μ_{p^∞})`, read `G′_∞` and `H^q(T)` of §7.6 for `G_∞` and `H^q(T̃)`. Let `Z(ψ, T) ⊂ H¹(T̃)` be the `Λ`-submodule generated by the image of `z_{p∞f} ⊗ T(−1)` under §7.3, and `w = z_{p∞f} ⊗ γ ⊗ (ζ_{p^n})_n^{⊗(−1)} ∈ H¹_{p∞f}(V_{L_λ}(ψ))` for `γ ∈ V_L(ψ)` (§7.4). For every prime `p` prove (Kato, 15.15 and its proof, p. 265, Kato lines 5738–5753, with 15.13–15.14, p. 264, Kato lines 5704–5734):

1. At every height-zero prime `𝔭` of `Λ`, with `q` its inverse image in `O_λ[[G_{p∞f}]]`, the localization `A = O_λ[[G_{p∞f}]]_q` is a discrete valuation ring, `H¹_{p∞f}(V_{L_λ}(ψ))_q` is free of rank one over `A` and is generated by `w` for every nonzero `γ`, and `H²_{p∞f}(T)_q = 0`.
2. At every height-zero prime `𝔭` of `Λ`, `H¹(T̃)_𝔭` is spanned over the field `Λ_𝔭` by the image of `w`, for every nonzero `γ`, and `Z(ψ, T)_𝔭 = H¹(T̃)_𝔭 ≠ 0`; hence `H¹(T̃)/Z(ψ, T)` is a torsion `Λ`-module, killed by a non-zero-divisor.

The module structure of the cyclotomic cohomology is not restated here. For the Hecke field `F ⊂ L` and the place `λ₀` of `F` under `λ`, that `H²(V_{F_{λ₀}}(f))` is `Λ_ℚ`-torsion and `H¹(V_{F_{λ₀}}(f))` is free of rank one over `Λ_ℚ = O_{λ₀}[[G_∞]][1/p]`, with the torsion-freeness of `H¹` of a stable lattice, is the CM case of Kato's Theorem 12.4 (Burungale–Tian, Theorem 2.3, p. 4, BT lines 182–184), which is KatoEulerSystems §4.4. Extending coefficients along the finite free `O_{λ₀}[[G_∞]] → O_λ[[G_∞]]` gives the same over `O_λ[[G_∞]][1/p]` for `V_{L_λ}(f) ≅ T̃ ⊗ ℚ` (§7.2). (1) and (2) say which elements generate, which that structure does not: (1) gives the vanishing at the prime `aA` used by §§7.9 and 8.5, and (2) the torsion of `H¹(V)/Z(f)` used by §8.6.

The route. For (1), `A` is regular of dimension one by §7.5(1) (§7.6 in the contained case): the residue field of `𝔭` has characteristic zero and `A/aA = Λ_𝔭` is a field. `H¹_{p∞f}(T)_q` is free of rank one by §7.4, `p ∉ q` makes it `H¹_{p∞f}(V_{L_λ}(ψ))_q`, and `z_{p∞f} ∈ h¹_q` by §2.6. If `w ∈ aH¹_{p∞f}(T)_q`, then `s·w ∈ a·H¹_{p∞f}(T)` for some `s ∉ q` and some `a` in the kernel of `O_λ[[G_{p∞f}]] → Λ`. Specializing to the level `K(p^n f)` and projecting to the `χ`-part, for `χ = χ₀ ∘ N_{K/ℚ}` with `χ₀` a finite-order character of `G_∞` whose kernel contains `𝔭`, kills `a` and gives `χ(s)·(χ-part of w) = 0`; `χ(s) ≠ 0` for all but finitely many such `χ₀`, since the image of `s` in the component domain of `𝔭` is nonzero and has finitely many zeros. By §3.3 the `χ`-twisted period sum of the dual exponential of that `χ`-part is `L_{pf}(ψ̄, χ, k − 1)·γ`, and `L_{pf}(ψ̄, χ₀ ∘ N_{K/ℚ}, k − 1) = L_{{p}}(f*, χ₀, k − 1)`: `f*` is the newform of `ψ̄` (§7.1), twisting commutes with induction, and the Euler factors of `f*` at the primes of `f` are trivial because `ψ̄` is ramified there. KatoEulerSystems §4.2 gives infinitely many `χ₀` on every component with that value nonzero (for `k = 2`, ramified ones), a contradiction; so `w` generates. For `H²`: §6.1, with coefficients extended to `O_λ` (§0.2), gives `length h²_{q′} ≤ length (h¹/z)_{q′}` at every regular height-one prime `q′`; §1.4 identifies `h²` with `H²_{p∞f}(ℤ_p(1))` at height one, and the twist of §7.4 carries this to `length H²_{p∞f}(T)_q ≤ length (H¹_{p∞f}(T)_q/A·w) = 0`. For (2), §7.5(3) at `𝔭` (§7.6 in the contained case), with `H²_{p∞f}(T)_q = 0` by (1), gives `H¹(T̃)_𝔭 ≅ H¹_{p∞f}(T)_q/a ≅ A/aA = Λ_𝔭`, spanned by the image of `w`. Some `p^m·(γ ⊗ (ζ_{p^n})_n^{⊗(−1)})`, `m ≥ 0`, lies in `T(−1)`, and `p` is a unit in `Λ_𝔭`, so that image lies in `Z(ψ, T)_𝔭`, and `Z(ψ, T)_𝔭 = H¹(T̃)_𝔭`. Finally `H¹(T̃)/Z(ψ, T)` is a finitely generated module over the reduced noetherian ring `Λ` vanishing at every minimal prime; its annihilator lies in no minimal prime, so it contains a non-zero-divisor by prime avoidance. *Needs:* §§7.1–7.6, 6.1, 3.3, 2.6, 1.4, 0.2; KatoEulerSystems §4.2.

**Checks.**

- A zero map in place of §7.3 would make `Z(ψ, T) = 0`, and (2) then fails: `H¹(T̃)_𝔭 ≅ Λ_𝔭 ≠ 0` by (1) and §7.5(3). So (2) is not satisfied vacuously, and it excludes `H¹(T̃) = 0`.
- `f = 32.2.a.a`, `p = 2`: `K = ℚ(i) ⊂ ℚ(μ_{2^∞})`, so the statement passes through §7.6, with `Λ′ = ℤ_2[i][[G′_∞]]`, `G′_∞ ≅ 1 + 4ℤ_2`, a domain with the single height-zero prime `0`. (2) says that the elliptic-unit image spans `H¹(T) ⊗_{Λ′} Frac Λ′`, which is therefore a line over `Frac Λ′`, in agreement with the rank one of KatoEulerSystems §4.4. A route through §7.5 would need `K ⊄ ℚ(μ_{2^∞})`.
- At `k = 2` the trivial `χ₀` may give `L(f, 1) = 0`: the congruent-number curve `y² = x³ − 25x` has CM by `ℚ(i)` and rank one. The route uses ramified twists, of which infinitely many have nonzero value on every component.
- Generation in (1) is a property of `w`, not of every nonzero element. With `a` the generator of §7.5(1), a uniformizer of the discrete valuation ring `A`, `a·w` is nonzero in the free rank-one `A`-module `H¹_{p∞f}(V_{L_λ}(ψ))_q` but lies in `a·H¹`, so it does not generate, and its image in `H¹(T̃)_𝔭` is zero: every `χ = χ₀ ∘ N_{K/ℚ}` factoring through `Λ` kills `a`, so every `χ`-part of `a·w` vanishes. For `w` itself the nonzero values `L_{pf}(ψ̄, χ, k − 1)` of §3.3 exclude this.

### 7.9 Kato's lattice inequality for CM forms

Let `λ ∣ p` be a finite place of `L`, `𝔭` a height-one prime of `O_λ[[G_∞]]`, and assume either `p ∉ 𝔭`, or `p ∤ #μ(H)` and `p ∤ #Δ` (Rubin's condition (b)). For a stable lattice `T ⊂ V_{L_λ}(ψ)`, let `Z(ψ, T)_𝔭` be the localization of the submodule `Z(ψ, T)` of §7.8. Prove that `length H²(T̃)_𝔭 ≤ length (H¹(T̃)_𝔭/Z(ψ, T)_𝔭)` (Kato, Proposition 15.17 and proof, p. 265). This is Kato's form of the inequality of Theorem 12.5(3) for CM forms, for the lattice `Z(ψ, T)`, which §8.4 identifies rationally with `Z(f)`. It differs from the rational Euler-system bound of PadicFamilies §4.0.3, which includes CM forms, in two ways: it is stated for the elliptic-unit lattice `Z(ψ, T)`, and it holds at primes containing `p` under condition (b). The route applies §7.7 to `M₁ = H²_{p∞f}(T)_q` and `M₂ = H¹_{p∞f}(T)_q/A·(z_{p∞f} ⊗ T(−1))` over `A = O_λ[[G_{p∞f}]]_q`, with `a` the generator of §7.5(1): both vanish at the height-one prime `aA` of `A`, which lies over the height-zero prime of `O_λ[[G_∞]]` under `𝔭`, by §7.8(1), and their lengths at the other height-one primes of `A` are compared by the twisted §4.4; §§7.5–7.6 then descend. Kato's proof prints the reference as Lemma 14.12. *Needs:* §§7.3–7.8, 4.4.

### Examples

For `f = 32.2.a.a` and `p = 2`, `K = ℚ(i) ⊂ ℚ(μ_{2^∞})` and §7.6 applies with `G′_∞ = 1 + 4ℤ_2`. For `f = 27.2.a.a` and `p = 5`, `K = ℚ(√−3) ⊄ ℚ(μ_{5^∞})` and §7.5 applies at every `𝔭 ∌ 5`. Here `L = K`, and `5` is inert in `K` (`−3` is not a square modulo 5), so `O_λ = ℤ_25`; `ℤ_25[[ℤ_5^×]]` has four height-zero primes, one for each character of `μ_4 ⊂ ℤ_5^×`, and §7.8(2) says that at each of them the elliptic-unit image spans `H¹(T̃)_𝔭`. That `H²(V(f))` is torsion and `H¹(V(f))` free of rank one over each of the four components of `ℤ_5[[ℤ_5^×]][1/5]` is KatoEulerSystems §4.4.

### Dependencies

Layers 0–4 and 6; ModularForms Layers 5, 7, 9; GlobalNumberFields Layers 9–10; ComplexMultiplicationAndExplicitReciprocity §4.2; AutomorphicGaloisRepresentations §§1.5, 3.15, 7.3; AutomorphicGaloisRepresentationsPartII AG2.0; AnalyticNumberTheoryPartI §2.3a; PadicHodgeRegulators §1.4; KatoEulerSystems §4.2; SelmerIwasawaCohomology §§3.1–3.3; PadicMeasuresIwasawaAlgebras §4.1; Mathlib `IsCyclotomicExtension`, `Module.length`, `IsLocalization.AtPrime`, `Ideal.height`.

## Layer 8: Kato's main conjecture for CM newforms at every prime

### 8.1 The archimedean normalization of the induction

With (15.11.1) fixed, let `Ṽ_L(ψ) = V_L(ψ) ⊕ ιV_L(ψ)` be induced from `V_L(ψ)` to `Gal(ℂ/ℝ)`. Prove that there is a unique `Gal(ℂ/ℝ)`-isomorphism `Ṽ_L(ψ) ≅ V_L(f)` under which `per_f` corresponds to `per_ψ` (Kato, Lemma 15.11(2) with proof, pp. 261–262). It serves only to transport `γ ∈ V_L(ψ)` to `γ′ ∈ V_L(f)`. The route fixes a sign `±` and chooses `m ≥ 1` and `z ∈ S(ψ) ⊗ ℚ(ζ_m)`, `z′ ∈ S(f) ⊗ ℚ(ζ_m)` whose `χ`-twisted period sums are `L_S(ψ̄, χ, k − 1)γ` and `L_S(f*, χ, k − 1)γ′` for every `χ` of sign `±`, with some value nonzero. This uses §3.2, KatoEulerSystems §§4.2 and 5.3, and `L(f*, s) = L(ψ̄, s)`. The ratio of the images is fixed by `Gal(L(ζ_m)/L)`, hence lies in `L^×`. *Needs:* §§7.2, 3.1, 3.2; KatoEulerSystems §§4.2, 5.3.

### 8.2 The reciprocity law in `V(f)`-coefficients

Let `γ ∈ V_L(ψ)` with image `γ′ ∈ V_L(f)` under §8.1, `f` the conductor of `ψ` and `n ≥ 0`. Consider the composite of the Tate-twisted §7.3 with specialization at level `n`, localization at `p` and the dual exponential, extended to the localization at the non-zero-divisors invertible in `ℚ_p[Gal(ℚ(ζ_{p^n})/ℚ)]`. Prove that it sends `z_{p∞f} ⊗ γ` into `S(f) ⊗_F L ⊗ ℚ(ζ_{p^n})`, and that for every character `χ` of `Gal(ℚ(ζ_{p^n})/ℚ)` (Kato, (15.12.2), p. 263):

```text
Σ_σ χ(σ) per_f(σ(image)) = L_{{p}}(f*, χ, k − 1) · (γ′)^±,   ± = χ(−1).
```

Here `L_{{p}}` omits only the Euler factor at `p`. The route applies §3.3 and translates the periods by (15.11.1) and §8.1. It uses the identity `L_{pf}(ψ̄, χ ∘ N_{K/ℚ}, k − 1) = L_{{p}}(f*, χ, k − 1)` of §7.8, which holds because the Euler factors of `f*` at the primes of `f` are trivial: `ψ̄` is ramified there. *Needs:* §§3.3, 7.3, 7.2, 7.8, 8.1.

**Checks.**

- At `k = 2`, `r = 1` the shape agrees with KatoEulerSystems §5.3 at `r = k − 1 = 1`, where `(2πi)^{k−r−1} = 1`.
- With `f` strictly smaller than the conductor (a larger modulus), extra Euler factors at the added primes remain, and the value is not `L_{{p}}`. The statement requires `f` to be exactly the conductor.
- For `χ` even (`χ(−1) = 1`) only `(γ′)^+` occurs. For `γ` with `γ^+ = 0` every even twist has value zero.

### 8.3 The equivariant equality on `ψ`-components

Let `ψ` have conductor `f`, `T ⊂ V_{L_λ}(ψ)` a stable lattice and `A = O_λ[[G_{p∞f}]]`. Take a height-one prime `q′` of `A` with `p ∉ q′`, contained in the inverse image `q` of a prime `𝔭 ∌ p` of `O_λ[[G_∞]]` (of `O_λ[[G′_∞]]` when `K ⊂ ℚ(μ_{p^∞})`). Prove that `length H²_{p∞f}(T)_{q′} = length (H¹_{p∞f}(T)/A·(z_{p∞f} ⊗ T(−1)))_{q′}` (Kato, 15.15 and the proof of Proposition 15.17, p. 265; Burungale–Tian, proof of Theorem 2.6, p. 5, BT lines 213–218). The route twists by §7.4 to the regular prime `Tw_{χ_T}(q′)` and applies §6.1. It then kills the Euler terms. For `g ∈ I_𝔩`, `g` has finite order and maps to 1 in `G_∞`, so `g − 1 ∈ q`. A height-one `q′ ⊂ q` contains `g − ζ` for a root of unity `ζ` with `ζ − 1 ∈ q`, and `p ∉ q` forces `ζ = 1`. After the twist the Euler module is killed by `χ_T(g)⁻¹g − 1 ≡ χ_T(g)⁻¹ − 1` modulo `q′`, which is nonzero in characteristic zero because `χ_T|_{I_𝔩} = ψ|_{I_𝔩} ≠ 1`. Finally §1.4 replaces `h²` by `H²_{p∞f}(ℤ_p(1))`. *Needs:* §§6.1, 7.4, 1.4, 1.5, 2.6.

### 8.4 Elliptic units become Beilinson–Kato elements

Let `f` be a CM newform attached to `ψ`, with coefficients enlarged to `L ⊃ F`, and `γ ∈ V_L(ψ)` with image `γ′`. Prove that §7.3 sends `z_{p∞f} ⊗ γ ⊗ (ζ_{p^n})_n^{⊗(−1)}` to `z_{γ′}(f)`, the value at `γ′` of Kato's zeta morphism of KatoEulerSystems §5.1, extended `L`-linearly. Consequently the `Λ_ℚ`-span of the images of `z_{p∞f} ⊗ V_L(ψ)(−1)` is `Z(f) ⊗ L` (Kato, 15.16 and (15.16.1), p. 265; Burungale–Tian, proof of Theorem 2.6, BT lines 215–216). The route goes through `H¹(V(f))`, free of rank one over `Λ_ℚ` (KatoEulerSystems §4.4, with coefficients extended to `L_λ`), which contains both elements. Their dual-exponential images agree at every finite level and character, by §8.2 and KatoEulerSystems §5.3: both equal `L_{{p}}(f*, χ, k − 1)(γ′)^±`, since (15.11.1) and §8.1 were fixed compatibly. At the infinitely many characters with nonzero value (KatoEulerSystems §4.2), the dual exponential is injective on the specialized rank-one line. The difference therefore specializes to zero on a dense set and vanishes in the free rank-one module. *Needs:* §§8.2, 8.1, 7.3, 7.2, 2.6; KatoEulerSystems §§4.2, 4.4, 5.1, 5.3.

**Checks.**

- The comparison is rational. An integral identification of the lattices `Z(ψ, T)` and `Z(f, T)` is not claimed.
- The conjugation law `z_{ιγ} = −σ_{−1}z_γ` of KatoEulerSystems §5.1 holds for the elliptic side as well. The twist by `(ζ_{p^n})^{⊗(−1)}` interchanges the parity of `χ(−1)` with the sign of `γ′` as in §8.2. Without that twist the parities would not match.
- For `f = 32.2.a.a` and `p = 2` the statement identifies the elliptic units of the 2-power ray tower of `ℚ(i)` with the Beilinson–Kato element of the congruent-number curve, after the base change of §7.6.

### 8.5 From the equivariant equality to Kato's equality

In the setting of §7.5 (or §7.6), let `𝔭 ∌ p`, `q` its inverse image, and `A = O_λ[[G_{p∞f}]]_q`, a regular local ring of dimension two whose kernel to the cyclotomic localization is generated by a prime element `a`. Put `M₁ = H²_{p∞f}(T)_q` and `M₂ = H¹_{p∞f}(T)_q/A·(z_{p∞f} ⊗ T(−1))`. Suppose `length (M₁)_{q′} = length (M₂)_{q′}` at every height-one prime `q′` of `A`. Prove that then `length H²(T̃)_𝔭 = length (H¹(T̃)_𝔭/Z(ψ, T)_𝔭)` (Kato, proof of Proposition 15.17, p. 265, and Lemma 14.15, pp. 243–244). Kato's argument gives only the inequality; Burungale–Tian's appeal to Kato §15 (BT lines 213–218) needs this equality. The route:

1. `M₁` and `M₂` vanish at `aA`, the height-one prime of `A` over the height-zero prime of `O_λ[[G_∞]]` under `𝔭`: `H²` vanishes there and `z` generates `H¹` there, by §7.8(1).
2. §7.7 gives `[M₁/aM₁] − [M₁[a]] = [M₂/aM₂] − [M₂[a]]` as lengths.
3. By §7.5, `M₁/aM₁ = H²(T̃)_𝔭`, and `H¹(T̃)_𝔭/Z(ψ, T)_𝔭` is an extension of `M₁[a]` by `M₂/aM₂`.
4. `M₂[a] = 0`. The zeta generator embeds the torsion-free rank-one `H¹` as `A ⊂ H ⊂ Frac(A)` with `H_{(a)} = A_{(a)}`. If `ah ∈ A` with `h ∈ H`, then `h ∈ a⁻¹A ∩ A_{(a)} = A`, because `A` is factorial and `a` prime.
5. The `M₁[a]` terms cancel, giving the equality.

*Needs:* §§7.5–7.8, 7.4, 2.6.

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

Both modules are torsion: `H²(V)` by KatoEulerSystems §4.4 (at each height-zero `𝔭` this is also `H²(T̃)_𝔭 ≅ H²_{p∞f}(T)_q/a = 0`, by §7.5(2) or §7.6 with §7.8(1)), and `H¹(V)/Z(f)` because `Z(f) ⊗ L = Z(ψ, T) ⊗ ℚ` (§8.4) and `Z(ψ, T)` generates `H¹(T̃)` at every height-zero prime (§7.8(2)); so equal lengths at every height-one prime of `Λ_ℚ` give equal ideals. *Needs:* §§8.3–8.5, 7.1, 7.2, 7.5, 7.6, 7.8; KatoEulerSystems §§4.4, 5.1; ModularIwasawaMainConjectures §§0.1, 0.6, 0.7; PadicMeasuresIwasawaAlgebras §4.6.

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

For even `k`, the central specialization at the kernel of the character `σ_c ↦ c^{−k/2}` of `G_∞ ≅ ℤ_p^×` is at a prime of `Λ` not containing `p`, so the rational equality applies there (Burungale–Tian, Theorem 3.1 for even weight and its proof, pp. 5–6, BT lines 224 and 231–243). For odd `k` no such character exists, and this specialization is not made; the equality of §8.6 holds for every `k ≥ 2`. *Needs:* §8.6; ModularIwasawaMainConjectures §§0.6–0.7; SelmerIwasawaCohomology §§3.7, 3.15.

**Checks.**

- The torsion `Δ` of `G_∞` is `ℤ/(p − 1)` for odd `p` and `ℤ/2` for `p = 2`. A formulation over `O_λ[[Γ]]` alone would see only the trivial component.
- With extension by zero in place of `j_*`, `H²` at a prime `ℓ ∣ N` where `V` is ramified would acquire a local term and change `ξ(H²)`.
- For `k = 2` the character is `σ_c ↦ c⁻¹`. Its kernel is a height-one prime of `Λ` with quotient `O_λ`, of characteristic zero, so it does not contain `p`. For odd `p` its restriction to `Δ = μ_{p−1}` is `ω⁻¹`, so it lies on the `ω⁻¹`-component.
- For `k = 3` there is no central character: a character `h` of `ℤ_p^×` with `h(c)² = c^{−3}` would give `h(−1)² = −1`, while `(−1)² = 1` forces `h(−1)² = h(1) = 1`. The weight-three CM newforms are covered by §8.6 but not by the central specialization.

### Examples

For the congruent-number curve `y² = x³ − x` (32.2.a.a), `p = 2`, `f = (1 + i)^3`: every prime of `f` lies above 2, so Layer 6 has no Euler terms, `Δ` is trivial (§0.1) and Layer 7 uses the contained case. For 27.2.a.a at `p = 3`, `f = (3)` lies above 3, and again there are no Euler terms.

### Dependencies

Layers 0–4, 6 and 7; KatoEulerSystems §§4.2, 4.4, 5.1, 5.3; ModularIwasawaMainConjectures §§0.1, 0.6, 0.7; SelmerIwasawaCohomology §§3.7, 3.15; PadicMeasuresIwasawaAlgebras §4.6.

## Downstream consumers

The rank-zero `p`-converse for CM elliptic curves and CM newforms at every prime, and its congruent-number and cube-sum applications (CMRankZeroConverse), use the rational equivariant main conjecture of §6.2, the contained-case descent of §7.6, the elliptic-unit generation of §7.8 and Kato's main conjecture of §8.6 with the dictionary of §8.7. The Eisenstein-prime anticyclotomic arguments of Castella–Grossi–Lee–Skinner use §§5.4–5.5.

## Worked examples

- **The Gaussian field at `p = 2`.** `K = ℚ(i)`, `p = 2`, `f = (1)`: `Δ = 1`, `G ≅ ℤ_2²`, `R` is a domain, `h¹` is torsion-free of rank one, `z_{2∞} ≠ 0`, and §4.5 is an integral equality over `ℤ_2[[ℤ_2²]]`. Rubin's hypothesis excludes this case (`μ(K) = μ_4`); Johnson-Leung–Kings' theorem does not.
- **A tame Euler factor.** `K = ℚ(i)`, `p = 5`, `f = (3)`: `Δ` has order 32 and the inertia at `(3)` is cyclic of order 8. On the components of the trivial and the quadratic character of `Δ/I_{(3)} ≅ μ_4`, where `χ(δ_{(3)}) = 1`, `ξ((h¹/z)_ℚ) = ξ(h²_ℚ)·(1 − γ_{(3)}⁻¹)`, a nonunit factor. On the components of the two quartic characters of `Δ/I_{(3)}`, among them `ω ∘ χ_cyc`, `χ(δ_{(3)}) = −1` and the factor `1 + γ_{(3)}⁻¹` is a unit; on the 28 components ramified at `(3)` the Euler module is zero. Both kinds of unit components satisfy the printed equality.
- **A residue-characteristic obstruction in Lemma 15.13.** For `K = ℚ(i)`, `p = 2` and `f = (3)`, `Δ ≅ ℤ/8` (§0.1), so `#Δ` is not invertible in residue characteristic 2, and the hypothesis of §7.5 fails at primes whose residue field has characteristic 2. Only primes not containing `p` enter §8.6.

## References

- **BT.** Ashay A. Burungale and Ye Tian, *A rank zero p-converse to a theorem of Gross–Zagier, Kolyvagin and Rubin*, Annals of Mathematics 203 (2026); read as [arXiv:2506.03465v2](https://arxiv.org/abs/2506.03465v2), whose page numbers are used. §2.1.1, Theorems 2.1, 2.3, 2.4, 2.6, Remark 2.7, footnotes 3–4, pp. 3–5; proof of Theorem 3.1, p. 6.
- **Kato.** Kazuya Kato, *p-adic Hodge theory and values of zeta functions of modular forms*, Astérisque 295 (2004), 117–290, [Numdam](https://www.numdam.org/item/AST_2004__295__117_0.pdf). 3.8, 8.2–8.3, Theorems 12.4–12.5, Remark 12.8, Conjecture 12.10, Lemma 14.15, §15.
- **JLK.** Jennifer Johnson-Leung and Guido Kings, *On the equivariant and the non-equivariant main conjecture for imaginary quadratic fields*, J. reine angew. Math. 653 (2011), 75–114; read as [arXiv:0804.2828v2](https://arxiv.org/abs/0804.2828v2), whose numbering is used.
- **Rubin91.** Karl Rubin, *The "main conjectures" of Iwasawa theory for imaginary quadratic fields*, Inventiones Mathematicae 103 (1991), 25–68, [GDZ](https://gdz.sub.uni-goettingen.de/download/pdf/PPN356556735_0103/LOG_0009.pdf). §§1, 4, Theorem 4.1 and Remarks; §5, Theorems 5.1 and 5.3.
- **HuberKings.** Annette Huber and Guido Kings, *Bloch–Kato conjecture and main conjecture of Iwasawa theory for Dirichlet characters*, Duke Math. J. 119 (2003); [arXiv:math/0101071v2](https://arxiv.org/abs/math/0101071v2). Proposition 2.3.1.
- **CGLS.** Francesc Castella, Giada Grossi, Jaehoon Lee and Christopher Skinner, *On the anticyclotomic Iwasawa theory of rational elliptic curves at Eisenstein primes*, Inventiones Mathematicae 227 (2022), 517–580; read as [arXiv:2008.02571v2](https://arxiv.org/abs/2008.02571v2). Definition 1.2.1, Theorem 1.2.2, Remark 1.2.3, (2.11).
- **Kriz.** Daniel Kriz, *Generalized Heegner cycles at Eisenstein primes and the Katz p-adic L-function*, Algebra & Number Theory 10 (2016), 309–374; read as [arXiv:1512.05032v1](https://arxiv.org/abs/1512.05032v1). Theorem 27.
- **Schutt09.** Matthias Schütt, *CM newforms with rational coefficients*, Ramanujan Journal 19 (2009); read as [arXiv:math/0511228v5](https://arxiv.org/abs/math/0511228v5), whose numbering is used. Theorem 1.4 (Hecke, Shimura), p. 3.
- **Yager.** Rodney Ian Yager, *On two variable p-adic L-functions*, PhD thesis, Australian National University (1981), [ANU Open Research](https://openresearch-repository.anu.edu.au/items/7c4519f4-e0eb-49ce-a2d9-e5777fa9483d). Chapters 3–8 and Theorem 1.
- **Coleman79.** Robert F. Coleman, *Division values in local fields*, Inventiones Mathematicae 53 (1979), 91–116, [GDZ](https://gdz.sub.uni-goettingen.de/download/pdf/PPN356556735_0053/LOG_0011.pdf). Theorem A, p. 92; Theorem 11 and Corollary 12, p. 102.
- **BKO21.** Ashay A. Burungale, Shinichi Kobayashi and Kazuto Ota, *Rubin's conjecture on local units in the anticyclotomic tower at inert primes*, Annals of Mathematics 194 (2021), 943–966; read in the copy of the [NSF Public Access Repository](https://par.nsf.gov/servlets/purl/10336626), which carries the journal pagination. §6, Theorems 6.1–6.2; cited for the scope boundary only.
