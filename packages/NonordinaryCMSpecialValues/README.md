# Roadmap: nonordinary CM special values

**Summary.** Let `K` be an imaginary quadratic field, `p` an odd prime inert in `K`, and `φ` a conjugation-equivariant Hecke character of `K` of ideal infinity type `(1,0)`, realised by a CM elliptic curve over the Hilbert class field `H`. This roadmap builds the complex and `p`-adic special-value theory of the anticyclotomic twists `φ̄νχ` at such a nonordinary prime, where no ordinary `p`-adic period exists. From the native Hecke characters of Tau Ceti, the CM theory of ComplexMultiplicationAndExplicitReciprocity and the local factors of AutomorphicLFunctionsAndLocalFactors it constructs: Kato's elliptic zeta elements and his reciprocity law for CM characters; the integral class of Burungale–Kobayashi–Ota normalised by a Néron differential; the torsion and ring-class towers with their CM Lubin–Tate comparison at the parameter `π = −p`; the root numbers of the twists and the central zeros they force; Finis's divisibility theorem for weight-one anticyclotomic `L`-values; and Jia's nonvanishing theorem for arbitrary class number, with Rohrlich's Diophantine lattice count. The end theorems are the BKO unit theorem — for an auxiliary split prime `l`, almost every normalised value `Ω⁻¹ L_f(φ̄ν, 1)`, `ν` of `l`-power order, is a `p`-adic unit — and the parity dichotomy: in the `p`-anticyclotomic family, values of one conductor parity vanish and all but finitely many of the other parity do not.

## Scope and ownership

This roadmap owns:

- the carriers of the anticyclotomic family on Tau Ceti's `HeckeCharacter` (Layer 0): conjugation-equivariant characters of type `(1,0)`, anticyclotomic characters, the `p`-anticyclotomic family, primitive Euler factors and central values;
- the integral CM period of a good Néron differential, the auxiliary split prime and the auxiliary characters `X_l` (Layer 0);
- the root-number formulas of the twists and the forced central zeros (Layer 1);
- Kato's theta function on an elliptic curve and its CM refinement, standard elliptic units, the elliptic zeta element, Kato's realisation `V(ψ)`, `S(ψ)`, `per_ψ`, the height-one explicit reciprocity law in the form applied by Kato, Kato's reciprocity law for CM characters (Kato 2004, Proposition 15.9), the integral BKO class, its direct-character reciprocity, its twist comparison and period laws (Layer 2). No earlier roadmap constructs elliptic units of CM curves or this reciprocity law (KatoEulerSystems works with Siegel units on modular curves); the CM continuations of ModularIwasawaMainConjecturesPartII consume them from here;
- the torsion and ring-class composita, their disjointness, the semilocal splitting, the inert Frobenius and the CM application of the Honda–Lubin–Tate comparison (Layer 3);
- Finis's divisibility theorem in weight one, both for split and for nonsplit valuation primes, with its proof through primitive theta functions, Shintani operators, integral theta functions and the nonvanishing of theta functions in characteristic `ℓ` (Layer 4). No earlier roadmap states Finis's theorem; its higher-weight split case (Finis, Theorem 1.1(1) with `k > 1`) follows from weight one by Katz's two-variable measure, and belongs with that measure;
- the specialisation of Finis's theorem to the canonical family, the unit witness, the unramified coefficient field and the scalar/tensor kernel comparison (Layer 5);
- Rohrlich's lattice-point count, Jia's Galois-average limit, the Galois stability of central vanishing, central nonvanishing and the parity dichotomy (Layer 6).

It consumes, by section:

- ComplexMultiplicationAndExplicitReciprocity §1.2 (CM period and de Rham pairings, with the period-lattice comparison of the ideal twists `ℂ/aΛ`), §2.2 (Normalized idele and torsion dictionary), §3.2 (Exact ray-level field and generation criterion), §4.1 (The algebraic Hecke character of a CM abelian variety; One-dimensional CM components of the Tate module; Frobenius and infinity-type identities), §4.2 (Full elliptic CM L-factorization, including bad primes; CM induction and compatible-system comparison), §4.3 (`IsCanonicalGrossCharacter`, `canonicalGrossExistence`, Canonical Gross good reduction away from the discriminant). The existence of canonical characters and their curves is imported, never reconstructed.
- AutomorphicLFunctionsAndLocalFactors, Layer AL.1 (local epsilon factors and Gauss sums, completed Hecke functions, the Hecke functional equation) and Layer AL.5 (finite Euler corrections, central-sign vanishing).
- LubinTateFormalModulesAndQuasiCanonicalLifts LT.2 (division fields, Tate modules, the Lubin–Tate character) and LT.4 (unramified Honda–Lubin–Tate comparison, supersingular elliptic comparison). Lubin–Tate theory is applied, not rebuilt.
- SelmerIwasawaCohomology §§0.8–0.11 (Kummer identifications, cup products and Shapiro), §3.6 (semilocal cohomology), §3.7 (twisting Iwasawa cohomology).
- PadicHodgeRegulators §1.4 (Kato's dual exponential), §1.7 (twists, restriction, corestriction), §1.11 (semilocal Bloch–Kato maps).
- ModularSymbolsPadicLFunctions §1.2 (algebraicity of critical values) and §4.3 (coefficient embeddings); GL2AutomorphicRepresentationsAndTransfer R17.4.16 (quadratic automorphic induction and CM theta series).
- DiophantineApproximationAndTranscendence §2.1 (the `p`-adic subspace theorem) and §2.3 (`p`-adic approximation of algebraic numbers).
- GlobalNumberFields Layers 9–11, ClassFieldTheory Layer 13, Chebotarev Layer 10, LocalFieldsRamification Layers 2–3, EllipticCurves Layers 1–3, ArithmeticDirichletSeries Layer 5.

The ordinary CM `p`-adic period, the Katz and Rubin `p`-adic `L`-functions, the primitive elliptic-unit coordinate, the signed local decomposition, the `Δ`-projection of the elliptic class and its derivatives are outside this roadmap: AnticyclotomicLocalUnits owns the local projections and InertAnticyclotomicCMMainConjecture the Rubin function. The normalised values here define no Iwasawa function by interpolation.

## Conventions

**Fields and embeddings.** `K` is imaginary quadratic with ring of integers `O_K`, fundamental discriminant `−D`, quadratic character `κ_K`, class number `h_K`, unit order `w_K`, Hilbert class field `H` and complex conjugation `c`. Fix embeddings `ι_∞ : Q̄ → ℂ` and `ι_p : Q̄ → C_p` that agree on `K`; `ι : K → ℂ` is the restriction of `ι_∞`. The prime `p` is odd and inert in `K`, `Φ = K_p` is the unramified quadratic extension of `Q_p` with integers `O_Φ = W(F_{p²})`, and `π = −p`. In Layers 2–5, `p ≥ 5` and `p ∤ h_K` (the BKO setting).

**Characters.** Artin reciprocity sends uniformizers to arithmetic Frobenius. A Hecke character is a continuous character of the idele class group, Tau Ceti's `HeckeCharacter`. Its ideal character is `HeckeCharacter.idealCharacter`, defined on fractional ideals prime to `HeckeCharacter.finiteConductor`, and its local conductor exponents are `HeckeCharacter.conductorExponent`. Ideal infinity type `(1,0)` for `ι` means `φ((x)) = ι(x)` for `x ≡ 1` modulo the conductor; at the idele level the archimedean component is `z ↦ z⁻¹` (idelic type `(−1,0)`). Kato writes `ψ` of type `(−r,0)` for the same normalisation, and Finis writes type `(k,j)` for `λ_∞(x) = x^{−k} x̄^{−j}`; so our `φ` is Kato's `ψ` with `r = 1`, and `φ̄ν/N` has Finis type `(−1,0)`.

**L-functions.** `L(η, s) = Σ_a η(a) N(a)^{−s}`, the sum over integral ideals prime to the conductor of `η`: the primitive `L`-function. For a finite set `S` of primes, `L_S(η, s)` removes the Euler factors at `S` (only the support of a modulus matters for deletion). A character `η = φρ` with `ρ` of finite order has weight one, its Euler product converges for `Re s > 3/2`, its central point is `s = 1`, and after the unitary normalisation `η|·|^{1/2}` the centre is `1/2`. Root numbers `W(η)` are those of AutomorphicLFunctionsAndLocalFactors AL.1 for the standard additive character `ψ_K = ψ_Q ∘ Tr_{K/Q}`; changing `ψ_v` to `ψ_v(−·)` multiplies a local central epsilon factor by `η_v(−1)`, and the product of these changes over all places is `1`.

**Indices.** For an anticyclotomic character `ν` of exact order `l^r`, `r ≥ 1`, with `l` split, `l ∤ h_K`, `l ≥ 5`, the field layer is `L[r]` (degree `l^r`) and the conductor is `l^m O_K` with `m = r + 1`; for `ν = 1`, `r = m = 0`. For a `p`-anticyclotomic `χ` of exact order `p^n`, `n ≥ 1`, the conductor is `p^c O_K` with `c = n + 1`; the trivial character has `c = 0`. Order indices and conductor indices are never identified.

**Towers and periods.** `F_n = H(E[p^{n+1}])`, `Φ_n` its completion at the place above `p` fixed by `ι_p`, of degree `(p² − 1)p^{2n}` over `Φ`; `Φ_0 ≠ Φ`. Arithmetic Frobenius on the covariant Tate module of the reduction at a place above `p` is `[−p]`, and a compatible `π`-power basis differs from a `p`-power basis by the sign `(−1)^n` at level `n`. A period datum `(E, ω, Ω)` consists of a CM curve `E/H` with good reduction above `p`, a Néron differential `ω` at the place above `p`, and `Ω ∈ ℂ×` with period lattice of `ω` equal to `Ω O_K`; `Ω` is determined up to `O_K×`.

**Duals and twists.** `T_φ` is the rank-one `p`-adic realisation of `φ` over the integers `R` of a finite extension of `Φ` containing its values; `T_φ^∨(1) = Hom_R(T_φ, R)(1)`. Kato's `V(ψ)` carries the inverse action, so `V(ψ)(1) = T_φ^∨(1)[1/p]`, and its de Rham line is generated by `ω`. The normalised Betti vector is `γ = per_φ(ω)/Ω`. Group-algebra evaluation of a character `ν` sends `[g]` to `ν(g)` (Mathlib's `MonoidAlgebra.lift`), never to `ν(g)⁻¹`.

## Exact supplier contracts

### From Mathlib

- `NumberField.RingOfIntegers`, `NumberField.classNumber`, `NumberField.IsCMField` and `NumberField.IsCMField.complexConj`, `Algebra.IsQuadraticExtension`: the field, its integers, class number and conjugation. For a degree-two CM field the maximal real subfield is `ℚ`, so `IsCMField` with `IsQuadraticExtension ℚ K` is exactly an imaginary quadratic field.
- `FractionalIdeal`, `IsDedekindDomain.HeightOneSpectrum`, `Ideal.absNorm`: ideals, finite primes and norms.
- `MonoidAlgebra.lift` and `MonoidAlgebra.lift_single` (Mathlib/Algebra/MonoidAlgebra/Basic.lean): evaluation `[g] ↦ ν(g)`, without inversion.
- `Subalgebra.linearDisjoint_iff_injective` (Mathlib/RingTheory/LinearDisjoint.lean): linear disjointness is injectivity of the multiplication map.
- `DirichletCharacter.LFunction_apply_one_ne_zero` (Mathlib/NumberTheory/LSeries/Nonvanishing.lean): `L(1, κ) ≠ 0` for a nontrivial Dirichlet character of nonzero modulus.
- `PadicInt`, `Padic`, `IsAlgebraic`, `Set.ncard`, `HasProd`, `Differentiable`: the carriers of the Lean statements.

### From Tau Ceti

- `TauCeti.GlobalNumberFields.HeckeCharacter` (`ContinuousMonoidHom (IdeleClassGroup (𝓞 K) K) ℂˣ`), with `HeckeCharacter.IsFiniteOrder`, `HeckeCharacter.finiteConductor`, `HeckeCharacter.finiteConductor_ne_bot`, `HeckeCharacter.conductorExponent`, `HeckeCharacter.finiteComponent` and `HeckeCharacter.idealCharacter` (TauCeti/NumberTheory/NumberField/Global/HeckeCharacter/FiniteComponent.lean and Ideal.lean). `idealCharacter_apply_prime` identifies the ideal value at a prime with the local component at any uniformizer; `idealCharacter_apply_toPrincipalIdeal` identifies the value at `(x)`, `x ≡ 1`, with the inverse of the archimedean components. The carrier includes non-unitary characters; finite order is a separate predicate.
- `TauCeti.GlobalNumberFields.Modulus`, `idealsPrimeTo`, `IsCongrOne`, `IsCongrOne.toPrincipalIdeal_mem_idealsPrimeTo`, `toPrincipalIdeal`: moduli, ideals prime to a modulus and multiplicative congruence. `IsCongrOne` is a condition on `Kˣ`, so zero is excluded.

### From TauCetiRoadmap.ComplexMultiplicationAndExplicitReciprocity

- §4.3 `IsCanonicalGrossCharacter`: conjugation equivariance, principal values `±α`, conductor primes ramified in `K`; `canonicalGrossExistence`: existence exactly for `D ≠ 3` with `D` odd or `8 | D`, and the attached CM curve over `H`; Canonical Gross good reduction away from the discriminant: good reduction above every rational prime not dividing `D`. Assumed: the attached curve realises `φ ∘ N_{H/K}` and is an `H`-isogeny class of `Q`-curves.
- §4.1 The algebraic Hecke character of a CM abelian variety (Frobenius values at good primes, principal law), One-dimensional CM components of the Tate module (rank-one coefficient summands, arithmetic Frobenius value `j(ψ(v))`), Frobenius and infinity-type identities (`π_v π̄_v = q`; at an inert good prime the Frobenius is `−p` of norm `p²`).
- §4.2 Full elliptic CM L-factorization, including bad primes (all-prime factorisation `L(E/H, s)` through `ψ` and `ψ̄`, ramified factors `1`) and CM induction and compatible-system comparison (the weight-two theta-series realisation).
- §1.2 CM period and de Rham pairings, with its period-lattice comparison: the ideal-twist curve `ℂ/aΛ` of a CM curve, its `O_K`-action and the period pairing `ω_{E/ℂ} × H₁(E(ℂ), Z) → ℂ`.
- §2.2 Normalized idele and torsion dictionary and §3.2 Exact ray-level field and generation criterion: the action of `Aut(ℂ/K)` on CM torsion and the ray-class field generated by torsion values.

### From TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactors

- AL.1.3.1 the local epsilon factors `ε(s, ω, ψ)`; AL.1.3.5 Explicit local ε-factors (the unramified and ramified formulas); AL.1.3.4 The local Gauss sum; AL.1.1.1 Local quasi-characters, unramified characters and the conductor exponent; AL.1.5.2 Normalization of the supplied completed Hecke function; AL.1.6.2 Hecke continuation and functional equation, `Λ_H(ω, s) = W_H(ω) Λ_H(ω⁻¹, 1 − s)`, whose root number `W_H(ω)` is the product of the local constants (AL.1.6.2 takes it from ArithmeticGaloisRepresentations §2.7, Root-number product formula).
- AL.5.1.1 Finite Euler corrections at critical points (`L^S = E_S L`, orders add) and AL.5.3.2 The functional-equation sign at the centre (sign `−1` at the centre forces a zero).
- What AutomorphicLFunctionsAndLocalFactors must provide (gap:al-local-frohlich-queyrut): the local Fröhlich–Queyrut theorem in AL.1's local epsilon factors — for a quadratic extension `E/F` of local fields, a quasi-character `χ` of `E×` trivial on `F×` and `ψ_E = ψ_F ∘ Tr_{E/F}`, `ε(1/2, χ, ψ_E) = χ(Δ)` for every `Δ ∈ E×` with `Δ² ∈ F×` and `Δ ∉ F`.

### From LubinTateFormalModulesAndQuasiCanonicalLifts

- LT.2 `primitive-division` (the `π^m`-division field is totally ramified of degree `(q − 1)q^{m−1}` and generated by a primitive point), `tate-module-comparison`, `lt-character`.
- LT.4 `unramified-honda-comparison` (over `O = W(F_{p²})`, a formal group with `q`-Frobenius `[sp]`, `s = ±1`, is strictly isomorphic to the Lubin–Tate group for `sp`) and `elliptic-honda-comparison` (an elliptic curve over `O` with `a_{p²} = 2sp` has `q`-Frobenius `[sp]` and Lubin–Tate parameter `sp`). The sign convention `a_{p²} = −2p ↔ π = −p` is the one fixed there.

### From TauCetiRoadmap.SelmerIwasawaCohomology

- §0.8 and §0.9: the `p`-adic and `S`-unit Kummer identifications `H¹(G_{F,S}, Z_p(1)) ≅ Z_p ⊗ O_{F,S}×`, compatible with restriction and with corestriction against the norm. §0.11: cup products and Shapiro under Kummer. §3.6: semilocal cohomology and descent. §3.7: the cyclotomic twist isomorphism of Iwasawa cohomology.
- What SelmerIwasawaCohomology must provide (gap:sic-character-twist): the twist isomorphism of §3.7 for a finite free `O`-module `T` whose `G_K`-action factors through `Gal(F_∞/K)` for a `p`-adic Lie tower `F_∞/K` (here `F_∞ = K(fp^∞)` and `T = T_φ^∨`), identifying `lim_cor H¹(F_n, Z_p(1)) ⊗ T` with `lim_cor H¹(F_n, T(1))` equivariantly for the diagonal action, compatibly with localisation and corestriction, with the finite-`S` Kummer completion retained.

### From TauCetiRoadmap.PadicHodgeRegulators

- §1.4 Kato's dual exponential `exp* : H¹(K, V) → Fil⁰ D_dR(V)`, its kernel `H¹_g` and its adjunction with `exp`. §1.7 compatibility with twists, restriction and corestriction. §1.11 semilocal Bloch–Kato maps `exp*_{A,V}` on `A = F ⊗ Q_p`, componentwise and compatible with Shapiro.

### From TauCetiRoadmap.ModularSymbolsPadicLFunctions and GL2AutomorphicRepresentationsAndTransfer

- ModularSymbolsPadicLFunctions §1.2: twisted Mellin formula and algebraicity of normalised critical values of newforms; §4.3: a field embedding `σ` carries the algebraic normalised critical coordinates of `f` to those of `f^σ`. No transport of complex periods is assumed.
- GL2AutomorphicRepresentationsAndTransfer R17.4.16: quadratic automorphic induction of an algebraic Hecke character of `K`; for `η` of type `(1,0)` and finite-order twist it gives a weight-two newform `θ_η` with `L(θ_η, s) = L(η, s)`.

### From TauCetiRoadmap.DiophantineApproximationAndTranscendence

- §2.1: the subspace theorem with finitely many places (`S` containing `∞` and finitely many primes, independent algebraic forms at each place); in two variables, solutions of the product inequality lie on finitely many lines. §2.3: Ridout's `p`-adic approximation theorem for algebraic targets.

### From the Tau Ceti roadmaps on main

- GlobalNumberFields Layer 9 (Hecke and ray class characters, local components, finite conductor), Layer 10 (infinity types, norm twists), Layer 11 (orders, conductors, Picard groups).
- ClassFieldTheory Layer 13 (Hilbert and ray class fields, ring class fields of quadratic orders with `Gal ≅ Pic(O)`, and Artin symbols of principal ideals; the anticyclotomic `Z_l` and `Z_p` quotients of the ring-class towers are derived here in §§0.2 and 0.6).
- Chebotarev Layer 10 (Dirichlet-density Chebotarev, infinitely many primes in a Frobenius class after finite exclusions).
- LocalFieldsRamification Layer 2 (unramified extensions, unit-root extensions `X^d − u`, `p ∤ d`) and Layer 3 (ramification; a totally ramified and an unramified extension meet in the base).
- EllipticCurves Layer 1 (invariant differential, formal group), Layer 2 (torsion, Weil pairing, faithful Tate realisation of endomorphisms), Layer 3 (Frobenius polynomial over finite fields).
- ArithmeticDirichletSeries Layer 3 (local factors and Euler products) and Layer 5 (polynomial bounds for ideal counts and partial summation).

## How to read the build

Layer 0 fixes the carriers (anticyclotomic characters, the `p`-anticyclotomic family, Euler factors and central values) and the data (the integral period, the auxiliary prime and characters). Layer 1 computes root numbers and the zeros they force; it needs only Layer 0 and the local factors. Layer 2 constructs elliptic units and proves Kato's reciprocity law for CM characters, then the BKO integral class and its reciprocity. Layer 3 builds the torsion and ring-class towers and applies Lubin–Tate theory at `π = −p`. Layer 4 proves Finis's theorem in weight one, independently of Layers 1–3. Layer 5 specialises Finis to the canonical family to obtain the unit theorem and the coefficient descent; it uses Layers 0, 1, 2 and 4. Layer 6 proves Rohrlich's lattice count, Jia's average and the nonvanishing and parity theorems; it uses Layers 0 and 1. The Lean acceptance test states the parity dichotomy (Layer 6) and Rohrlich's two bounds (Layer 6).

## Layer 0: CM data, characters and central values

### 0.1 Conjugation-equivariant characters of type (1,0)

Define `IsEquivariantTypeOneZero ι φ`, for a Hecke character `φ` of an imaginary quadratic `K` and an embedding `ι : K → ℂ`, by two conditions on the ideal character modulo the finite conductor (`conductorModulus φ`, the conductor ideal with no real places): `φ((x)) = ι(x)` for every `x ∈ K×` with `x ≡ 1` modulo the conductor, and `φ(ā) = conj φ(a)` for every fractional ideal `a` prime to the conductor. The first condition fixes the archimedean component `z ↦ z⁻¹` (the elements `x ≡ 1` form a subgroup of finite index of `K×`, dense in `ℂ×`), so the character is algebraic of ideal type `(1,0)` for `ι`. Prove that such a `φ` satisfies `φ((n)) = κ_K(n) n` for every rational integer `n` prime to the conductor, and conversely that this rational-principal law together with type `(1,0)` gives equivariance (Jia, Property 1, pp.3–4; JIA24 line 126). Prove that the conductor `f` is stable under conjugation and that `φ φ̄ = N` on ideals prime to `f`. *Needs:* Tau Ceti `HeckeCharacter.idealCharacter`, `idealCharacter_apply_toPrincipalIdeal`; GlobalNumberFields Layers 9–10.

API:

- The rational-principal law: for `n ∈ Z` prime to `f`, `φ((n)) = κ_K(n) n`; in particular `φ((p)) = −p` for an inert `p ∤ f`.
- Norm relation: `φ(a) conj φ(a) = N(a)` for `a` prime to `f`, so `|φ(a)| = N(a)^{1/2}`.
- Conjugation stability: `f̄ = f`.
- Twists: if `ρ` is an anticyclotomic character of finite order, `φρ` satisfies the conjugation law `φρ(ā) = conj(φρ(a))` on ideals prime to its conductor, and `L(φ̄ρ, s) = L(φρ⁻¹, s)` by `a ↦ ā`.
- Canonical characters: an `IsCanonicalGrossCharacter` of ComplexMultiplicationAndExplicitReciprocity §4.3 satisfies the predicate.

**Checks.**

- For `y² = x³ − x` over `K = Q(i)`, the character with `φ((−1 + 2i)) = −1 + 2i` at the prime of norm `5` and `φ((7)) = −7` at the inert prime `7` satisfies the rational-principal law: `κ_K(7) = −1`, and `−7 = κ_K(7)·7`. The wrong sign `+7` is the law of the inverse quadratic character and fails.
- The inverse character `φ⁻¹` has archimedean component `z ↦ z` and fails the first condition: `φ⁻¹((x)) = ι(x)⁻¹`, not `ι(x)`.
- Agreement with Tau Ceti: at a prime `v ∤ f`, the ideal value equals `φ.finiteComponent v (ϖ_v)` for any uniformizer `ϖ_v`, by `idealCharacter_apply_prime`; a definition through `ϖ_v⁻¹` gives `φ(v)⁻¹`, of absolute value `N(v)^{−1/2}`.
- The norm character `N` itself has `N((x)) = x x̄`, not `ι(x)`; it is excluded.

### 0.2 Anticyclotomic characters and the p-anticyclotomic family

Define `IsAnticyclotomic χ` by `χ(ā) = χ(a)⁻¹` for every fractional ideal `a` prime to the conductor of `χ`. Define `IsPAnticyclotomic p v χ`, for the prime `v` of `K` above an inert `p`, by: `χ` has finite order, a power of `p`; `χ` is anticyclotomic; `χ` is unramified at every finite prime other than `v`. Prove that an anticyclotomic character of odd finite order is trivial on the ideles of `Q`, hence a ring class character, and that for `p` odd and inert, the characters of the family are exactly the characters of finite order of the maximal anticyclotomic pro-`p` extension of `K` unramified outside `p`; when `p ∤ h_K` this is the anticyclotomic `Z_p`-extension (ClassFieldTheory Layer 13; Jia, Introduction, p.1, JIA24 line 18). Prove the conductor formula: if `p ∤ h_K` and `χ` has exact order `p^n`, `n ≥ 1`, then `conductorExponent v χ = n + 1`; the trivial character has exponent `0`. *Needs:* Tau Ceti `HeckeCharacter.IsFiniteOrder`, `HeckeCharacter.conductorExponent`; ClassFieldTheory Layer 13; GlobalNumberFields Layer 11.

API:

- The family is closed under products and inverses, and `c(χ⁻¹) = c(χ)`.
- An anticyclotomic character of odd order is trivial on every conjugation-stable ideal prime to its conductor: `χ(b) = χ(b̄) = χ(b)⁻¹` and `χ(b)` has odd order.
- For `p ∤ h_K`, the `p`-part of `Gal(K[p^∞]/K)` is `Z_p` and the characters of exact order `p^n` have conductor `p^{n+1}`.
- An odd-order anticyclotomic character satisfies `χ((p)) = 1`.

**Checks.**

- For `K = Q(√−7)`, `p = 5`: the ring class group of conductor `5^{m}` has `5`-part of order `5^{m−1}`, so a character of order `5` first appears at conductor `25` (`c = 2`), and one of order `25` at conductor `125` (`c = 3`). Assigning `c = n` would give conductor `5` to an order-`5` character, but the ring class group of conductor `5` has order `(5 + 1)/1 = 6`, prime to `5`.
- A character of `5`-power order of the cyclotomic `Z_5`-extension (factoring through the norm to `Q`) satisfies `χ(ā) = χ(a)` and is not anticyclotomic unless trivial.
- A character ramified only at one of the two primes above a split `l` is not anticyclotomic: conjugation exchanges the primes and would force equal conductor exponents.
- The trivial character belongs to the family with `c = 0`; the formula `c = n + 1` is not applied to it.

### 0.3 Primitive Euler factors and central values

Define `conductorModulus η` as the finite conductor of `η` with no real places. Define `eulerFactor η ϖ v s`, for uniformizers `ϖ`, as `(1 − η(ϖ_v) N(v)^{−s})⁻¹` when `η` is unramified at `v` and `1` otherwise. Define `HasCentralValue η ϖ z` by: there is an entire function `F` with `HasProd (v ↦ eulerFactor η ϖ v s) (F s)` for `Re s > 3/2` and `F 1 = z`. Prove that for `η = φρ` with `φ` as in §0.1 and `ρ` of finite order, `HasCentralValue η ϖ z` holds for exactly one `z`, namely the value at `1` of the analytic continuation of `L(η, s)`, which is entire: the completed function is entire by the Hecke functional equation (AL.1.6.2 Hecke continuation and functional equation), `η` is not a norm power, and the archimedean factor has no zeros. Prove that for a finite set `S` of primes, `L_S(η, 1) = E_S(1) L(η, 1)` with `E_S(1) ≠ 0`: at an unramified prime the deleted polynomial is `1 − η(v)N(v)^{−1}`, of parameter of absolute value `N(v)^{−1/2} < 1` (AL.5.1.1 Finite Euler corrections at critical points). *Needs:* Tau Ceti `HeckeCharacter.finiteComponent`, `HeckeCharacter.conductorExponent`; AL.1.5.2 Normalization of the supplied completed Hecke function, AL.1.6.2 Hecke continuation and functional equation; AL.5.1.1 Finite Euler corrections at critical points; ArithmeticDirichletSeries Layer 3.

API:

- The Euler factor is independent of the uniformizer at unramified primes and equals `(1 − η(v)N(v)^{−s})⁻¹` with the ideal value `η(v)`.
- Absolute convergence: for `|η(v)| = N(v)^{1/2}` the product converges absolutely and unconditionally for `Re s > 3/2`.
- Uniqueness: two entire functions agreeing with the product on `Re s > 3/2` agree everywhere, so `HasCentralValue η ϖ z` and `HasCentralValue η ϖ z'` give `z = z'`.
- Nonvanishing transfers between primitive and deleted values; vanishing transfers from primitive to deleted values for every `S`.

**Checks.**

- At a ramified prime the factor is `1`, not `(1 − 0)⁻¹` computed from an extended-by-zero value of a wrong modulus; for `η` ramified at both primes above `l`, the `l`-factors are `1` (§5.3).
- For `φ` of the curve `y² = x³ − x` at the inert prime `7`, `eulerFactor` at `s = 1` is `(1 − (−7)/49)⁻¹ = (1 + 1/7)⁻¹ = 7/8`; using `+7` gives `7/6`.
- The trivial `p`-character with the `p`-factor deleted: `E_{{p}}(1) = 1 − φ((p))/p² = 1 + 1/p`, which is nonzero but has `v_p = −1`; deletion at `p` is harmless for nonvanishing and changes valuations.
- Without the entire-function clause, `HasCentralValue η ϖ 0` would be satisfied vacuously by no `F`; the definition demands existence, so `HasCentralValue η ϖ z` with `z ≠ 0` asserts nonvanishing.

### 0.4 The integral CM period

Construct the period datum: for a CM curve `E/H` attached to `φ ∘ N_{H/K}` with good reduction at every place above the inert `p`, choose a smooth integral Weierstrass model at the place above `p` fixed by `ι_p` and its Néron differential `ω`. After replacing `E` by a conjugate in its ideal-class orbit, choose `Ω ∈ ℂ×` with period lattice of `(E, ω)` equal to `Ω O_K`. Define the normalised value `A_S(η; E, ω, Ω) = Ω⁻¹ L_S(η, 1) ∈ ℂ`. Its algebraicity for `η = φ̄χ`, `χ` of finite order, and hence its `p`-adic avatar under `ι_p`, is a consequence of Kato's reciprocity law (§2.6), not part of this construction; no map `ℂ → C_p` is used (BKO, §3.0.2, p.951). *Needs:* ComplexMultiplicationAndExplicitReciprocity §1.2 CM period and de Rham pairings (with its period-lattice comparison), §4.3 `canonicalGrossExistence` and Canonical Gross good reduction away from the discriminant; AL.1.5.2 Normalization of the supplied completed Hecke function.

API:

- The integration image of `H₁(E(ℂ), Z)` against `ω` is `Ω O_K`.
- Changing `Ω` to `εΩ`, `ε ∈ O_K×`, multiplies `A_S` by `ε⁻¹` and preserves every valuation.
- Changing `ω` to `vω` with `v ∈ H×` a unit at the place above `p` changes `Ω` to `vΩ` and `A_S` to `v⁻¹A_S`.
- `A_S(η) ≠ 0` if and only if `L_S(η, 1) ≠ 0`.
- Extending the algebraic coefficient field carries `A_S` to the same value under the extended embedding.

**Checks.**

- Scaling `ω` by `2` at `p ≥ 5` gives `A_S/2`, still a `p`-unit when `A_S` is.
- Scaling `ω` by `p` destroys Néron normalisation and lowers `v_p(A_S)` by one; it is not an allowed change.
- For `K = Q(√−5)` (`h_K = 2`) and the nonprincipal ideal `a = (2, 1 + √−5)`, the lattice `a` is not `Ω O_K` for any `Ω`, since `a` would be principal; the conjugate-curve step is required.
- If `L_S(η, 1) = 0` then `A_S = 0`; the nonzero period creates no unit.
- At an inert `p` the ordinary `p`-adic period of a CM curve does not exist (the formal group has height two), while `Ω` is defined.

### 0.5 The auxiliary split prime

Prove: for `K` imaginary quadratic, `p ≥ 5` inert in `K` and a finite set `S` of rational primes, there are infinitely many primes `l ∉ S` with `l ≥ 5`, `l` split in `K` and `l ≢ 1 mod p`; in particular `p ∤ (l − 1)` (BKO, §3.0.2, p.951, the hypotheses before (3.3)). Proof route: `p` is unramified in `K`, so `K` is not the quadratic subfield of `Q(μ_p)` and the two fields are linearly disjoint; take the Frobenius class `(1, a)` with `a ≢ 1 mod p` in `Gal(K(μ_p)/Q)` and apply Dirichlet-density Chebotarev. *Needs:* Chebotarev Layer 10; ClassFieldTheory Layer 13.

**Checks.**

- `K = Q(√−7)`, `p = 5`: `l = 23` splits (`−7 ≡ 16 = 4²` mod `23`) and `23 ≡ 3 mod 5`; `l = 11` splits (`−7 ≡ 4` mod `11`) but `11 ≡ 1 mod 5` is excluded.
- `l = 13`: `−7 ≡ 6 mod 13`, and the nonzero squares modulo `13` are `1, 3, 4, 9, 10, 12`, so `(−7/13) = −1` and `13` is inert in `Q(√−7)`; it is not an auxiliary prime although `13 ≢ 1 mod 5`.
- For `p = 3` the statement requires `l ≡ 2 mod 3`; the BKO setting `p ≥ 5` is kept.

### 0.6 The auxiliary anticyclotomic characters

Define `X_l`, for a prime `l ≥ 5` split in `K` with `l ∤ h_K N(f)` and `p ∤ (l − 1)`, as the set of characters of finite order of the anticyclotomic `Z_l`-extension `K_l^{ac}/K`, viewed as Hecke characters through the arithmetic Artin map, with values embedded by `ι_∞` and `ι_p`. For `ν ≠ 1` of exact order `l^r` write `L[r]` for its field layer and `l^m O_K`, `m = r + 1`, for its conductor; for `ν = 1`, `m = 0` (BKO, §3.0.2, pp.951–953; the published text uses one letter for order, layer and conductor). Prove that the depth-`m` anticyclotomic principal-unit quotient has order `l^{m−1}` since `l ∤ h_K` and `l ∤ #O_K×`. *Needs:* ClassFieldTheory Layer 13; GlobalNumberFields Layers 9–11; Mathlib `MonoidAlgebra.lift`.

API:

- `X_l` is an abelian group, the Pontryagin dual of `Gal(K_l^{ac}/K) ≅ Z_l`, isomorphic to `Q_l/Z_l`; `ν⁻¹ = ν ∘ c`.
- A character of exact order `l^r` factors through `L[r]` and no smaller layer, and its conductor is `l^{r+1} O_K` for `r ≥ 1`.
- Every element of `X_l` satisfies `IsAnticyclotomic`, has odd order and is unramified at `p`.
- Group-algebra evaluation is `MonoidAlgebra.lift` applied to `ν`: `[g] ↦ ν(g)`.
- Any embedding of the value field transports evaluation, order and conductor.

**Checks.**

- For `r = 1` the field layer has degree `l` and the conductor is `l²`.
- `ν = 1` has `m = 0`; the rule `m = r + 1` is not applied.
- For `ν(g) = ζ_l`, `[g]` evaluates to `ζ_l`, which differs from `ζ_l⁻¹` for `l ≥ 5`.
- A cyclotomic `l`-power character is not in `X_l` unless trivial.

### Examples

For `K = Q(√−7)`, `p = 5`, `l = 23`: `X_23` has characters of exact order `23` with conductor `23² O_K`; each is anticyclotomic, odd and unramified at `5`. The character of `y² = x³ − x` over `Q(i)` is equivariant of type `(1,0)` with `φ((7)) = −7`.

### Dependencies

Mathlib; Tau Ceti `HeckeCharacter` and the ray-class carriers; GlobalNumberFields Layers 9–11; ClassFieldTheory Layer 13; Chebotarev Layer 10; ArithmeticDirichletSeries Layer 3; AL.1, AL.5; ComplexMultiplicationAndExplicitReciprocity §§1.2, 4.3.

## Layer 1: Root numbers and forced central zeros

### 1.1 The canonical root number at a split dyadic prime

Prove: if `φ` is a canonical Gross character (`IsCanonicalGrossCharacter`) of `K` with fundamental discriminant `−D` and `2` split in `K`, then `W(φ) = W(φ̄) = (2/D) = +1`. The split condition forces `D ≡ 7 mod 8`. Proof route: at an odd ramified `q` the conductor and different have exponent one; in the standard additive character the archimedean factor is `−i` and the factor at `q` is `i^{δ_q}(2/q)∏_{r ≠ q}(q/r)`, `δ_q = 0` or `1` as `q ≡ 1` or `3 mod 4`; quadratic reciprocity collapses the product to `(2/D)` (Rohrlich, Root numbers, Proposition 1.5, p.14, and Lecture 2 §5.2, (2.44)–(2.49), pp.35–36; BKO, proof of Theorem 3.4, p.953). Conjugation reindexes the ideal series, so `φ̄` has the same sign. *Needs:* ComplexMultiplicationAndExplicitReciprocity §4.3; AL.1.3.5 Explicit local ε-factors, AL.1.6.2 Hecke continuation and functional equation with its root number `W_H(ω)`.

**Checks.**

- `K = Q(√−7)`: `(2/7) = +1`.
- `K = Q(√−11)`: `2` is inert and the canonical sign is `(2/11) = −1`; the split hypothesis is necessary.
- Converting from Rohrlich's additive character to AL.1's by `ψ_v ↦ ψ_v(−·)` changes local factors by `φ_v(−1)` whose product is `1`; changing only the archimedean factor to `+i` would give `−(2/D)`.

### 1.2 Auxiliary twists preserve the root number

Prove: for `φ` as in §0.1 with `p ∤ f`, and every `ν ∈ X_l`, `W(φν) = W(φ)` and `W(φ̄ν) = W(φ̄)`. Proof route: at the two primes over `l` the components of `ν` are inverse to each other under conjugation, with equal conductor exponents; pair their Gauss sums by `ε(ν_λ)ε(ν_λ⁻¹) = ν_λ(−1) = 1`, and the unitary values of `φ` at the two primes multiply to `φ((l))/l = κ_K(l) = 1`. At every other place `ν_v` is unramified and the ratio of local root numbers is `ν_v` at `ϖ_v^{a(φ_v) + n(ψ_v)}`; the product is `ν(f 𝔡_K)`, the conductor times the different, a conjugation-stable ideal, on which an odd-order anticyclotomic character is `1` (BKO, §3.0.2, p.951; Greenberg, §1, pp.246–247; Rohrlich, Root numbers, Lecture 2 §5.1, (2.39)–(2.43), pp.34–35; Finis, proof of Corollary 2.3, p.778). *Needs:* §§0.1, 0.6; AL.1.1.1 Local quasi-characters, unramified characters and the conductor exponent, AL.1.3.5 Explicit local ε-factors, the root number `W_H(ω)` of AL.1.6.2.

**Checks.**

- `ν = 1`: both sides agree trivially.
- A character ramified at only one prime over `l` is not in `X_l`; for it the pairing step fails.
- The odd-order hypothesis is used: a genus character of a field with even class number is anticyclotomic of order `2`, and can take the value `−1` on a ramified prime dividing `f𝔡_K`, so the ratio `ν(f𝔡_K)` can be `−1`.

### 1.3 The p-anticyclotomic conductor sign

Prove: let `p` be odd and inert, `φ` as in §0.1 with `p ∤ f`, `ν` anticyclotomic of odd finite order unramified at `p`, and `χ` in the `p`-anticyclotomic family with `c = conductorExponent v χ`. Then `W(φνχ) = (−1)^c W(φν)`, and the same with `φ̄`. For `χ ≠ 1` of exact order `p^n` and `p ∤ h_K`, `c = n + 1`. Proof route: at `p`, `φν` is unramified with unitary uniformizer value `φ((p))ν((p))/p = −1` (§0.1, §0.2) and `n(ψ_p) = 0`; the local root number of `χ_p` is `χ_p(Δ)` for `Δ ∈ Φ×` with `Δ² ∈ Q_p×` by the local Fröhlich–Queyrut theorem, and equals `1` because `χ_p` is trivial on `Q_p×` and of odd order; the unramified twist contributes `(−1)^c`. At every other place the ratio is `χ` on the conjugation-stable ideal `f(φν)𝔡_K`, hence `1` (Greenberg, p.247, where `w(Ψρ) = (−1)^{n+1} w(Ψ)` in the supersingular case and `w(ρ) = +1` is attributed to Fröhlich–Queyrut; Queyrut 1974, p.135, QUEYRUT74 line 86; BKO, proof of Proposition 3.3(3), p.953). *Needs:* §§0.1, 0.2, 1.2; AL.1.3.5 Explicit local ε-factors, AL.1.3.4 The local Gauss sum, the root number `W_H(ω)` of AL.1.6.2; the local Fröhlich–Queyrut theorem (gap:al-local-frohlich-queyrut).

**Checks.**

- `c = 2` (order `p`) preserves the sign; `c = 3` (order `p²`) reverses it.
- The trivial `χ` has `c = 0` and keeps `W(φν)`; the formula `c = n + 1` would assign it `c = 1` and reverse the sign.
- At `p` the unitary value is `−1` because `p` is inert; for a split prime the same twist has two ramified places and no parity factor.

### 1.4 Wrong-sign central values vanish

Prove: with the hypotheses of §1.3, if `(−1)^c W(φν) = −1` then `L(φνχ, 1) = 0` and `L_S(φνχ, 1) = 0` for every finite `S`; likewise for `φ̄νχ`. Proof route: `η = φνχ` satisfies `η η̄ = N`, so its dual is `η̄`, and `η̄(a) = η(ā)`, so `L(η̄, s) = L(η, s)` (Jia, p.2, JIA24 lines 42–61); the completed function satisfies `Λ(s) = W(η)Λ(2 − s)`, and sign `−1` gives `Λ(1) = 0`; the archimedean factor at the centre is finite and nonzero; the Euler deletion polynomial is entire (AL.5.3.2 The functional-equation sign at the centre, AL.5.1.1 Finite Euler corrections at critical points; BKO, Proposition 3.3(3) and its proof, p.953). No converse is asserted from sign `+1`. *Needs:* §1.3; AL.1.6.2 Hecke continuation and functional equation; AL.5.3.2 The functional-equation sign at the centre, AL.5.1.1 Finite Euler corrections at critical points.

**Checks.**

- `W(φν) = +1`, `c = 2`: no zero is supplied; `c = 3`: a zero is forced.
- `χ = 1` with `W(φν) = −1`: `L(φν, 1) = 0`.
- A deleted value at a prime where the polynomial vanishes at `s = 1` would also vanish; the argument never divides by it.

### Examples

For `K = Q(√−7)`, `p = 5`, `φ` canonical: `W(φ) = +1` (§1.1); for `ν ∈ X_23`, `W(φν) = +1` (§1.2); for `χ` of order `5`, `c = 2` and `W = +1`; for order `25`, `c = 3`, `W = −1` and `L(φνχ, 1) = 0`.

### Dependencies

Layer 0; ComplexMultiplicationAndExplicitReciprocity §4.3; AL.1, AL.5 and the local Fröhlich–Queyrut theorem in AL.1.

## Layer 2: Elliptic units and Kato's reciprocity law for CM characters

### 2.1 Kato's theta function and its CM refinement

Construct, for an elliptic curve `E` over a scheme `S` and an integer `c` prime to `6`, the unique `_cθ_E ∈ O(E ∖ E[c])×` with divisor `c²(0) − E[c]` and `N_a(_cθ_E) = _cθ_E` for every `a` prime to `c`, where `N_a` is the norm along multiplication by `a`; prove the distribution relation in `c` and `d`, and its analytic value on `ℂ/(Zτ + Z)` as a product formula (Kato 2004, Proposition 1.3, pp.121–122). For `End(E) ≅ O_K`, with the normalisation that `O_K` acts on `Lie(E)` through the inclusion, and an ideal `a` prime to `6`, construct the unique `_aθ_E ∈ O(E ∖ E[a])×` with divisor `N(a)(0) − E[a]` and `N_b(_aθ_E) = _aθ_E` for integers `b` prime to `a`; prove `_{(c)}θ_E = _cθ_E`, compatibility with norms along isogenies of CM curves, and the cocycle relation between `a` and `b` (Kato 2004, §15.4, (15.4.1)–(15.4.4), pp.252–253). *Needs:* EllipticCurves Layer 1; ComplexMultiplicationAndExplicitReciprocity §1.2 (the period-lattice comparison).

API:

- Uniqueness: two units with the same divisor and the norm invariance agree.
- Isogeny invariance: for an isogeny `E → E'` of curves with CM by `O_K`, the norm sends `_aθ_E` to `_aθ_{E'}`.
- Cocycle: `(_bθ_E)^{N(a)} · (pr_1^* {}_bθ_{E/aE})^{−1} = (_aθ_E)^{N(b)} · (pr_2^* {}_aθ_{E/bE})^{−1}`.

**Checks.**

- `a = (c)`: the CM refinement is Kato's `_cθ_E`; its divisor `c²(0) − E[c]` has degree `c² − c² = 0`.
- For `a` of norm `5` in `Z[i]`, `E[a]` has `5` points and the divisor `5(0) − E[a]` has degree `0`; a divisor `(0) − E[a]` has nonzero degree and is not principal.
- Without the norm invariance, `ζ·_aθ_E` for a root of unity `ζ` has the same divisor; the invariance `N_b(ζθ) = ζ^{b²}N_b(θ)` excludes `ζ ≠ 1` for suitable `b`.

### 2.2 Canonical CM pairs and standard elliptic units

Construct, for an ideal `f` with `O_K× → (O_K/f)×` injective, the canonical CM pair `(E, α)` of modulus `f` over the ray class field `K(f)`: a CM curve with the normalised `O_K`-action and a torsion point with annihilator `f`, isomorphic over `ℂ` to `(ℂ/f, 1 mod f)`; prove its uniqueness up to unique isomorphism, its universality, and that the Artin symbol of `a` carries `(E, α)` to `(E/E[a], α mod E[a])` (Kato 2004, §15.3, (15.3.1)–(15.3.3), pp.251–252). Define the standard elliptic unit `_az_f = _aθ_E(α) ∈ K(f)×` for `a` prime to `6f`; prove norm compatibility in the tower `K(p^n f)` and that `_az_f` is a `𝔭`-unit for primes `𝔭 ∤ f`, a unit when `f` has two prime divisors (Kato 2004, §15.5, pp.253). *Needs:* §2.1; ComplexMultiplicationAndExplicitReciprocity §2.2 Normalized idele and torsion dictionary, §3.2 Exact ray-level field and generation criterion; ClassFieldTheory Layer 13.

API:

- Base change: a CM pair over a field `K'` is the base change of the canonical pair along a unique `K(f) → K'`.
- Norm compatibility: the norm from `K(p^{n+1}f)` to `K(p^n f)` sends `_az_{p^{n+1}f}` to `_az_{p^n f}` for `n ≥ 1`.
- Kronecker's limit formula: `Σ_σ χ(σ) log|σ(_az_f)| = (N(a) − χ(a)⁻¹) · lim_{s→0} s⁻¹ L_{K,f}(χ, s)` for characters `χ` of `Gal(K(f)/K)` (Kato 2004, (15.5.1), p.253).

**Checks.**

- `K = Q(i)`, `f = (3)`: `O_K× = {±1, ±i}` injects into `(Z[i]/3)×` of order `8`, so the canonical pair exists over `K(3)`, of degree `2` over `K`. For `f = (2)` the units `1` and `−1` have the same image in `(Z[i]/2)×`, so the map is not injective and the hypothesis fails.
- The Artin symbol of a principal `a = (λ)`, `λ ≡ 1 mod f`, acts trivially and `(E/E[a], α mod E[a]) ≅ (E, α)` via multiplication by `λ⁻¹`.
- `f = (𝔮^k)` with a single prime divisor: `_az_f` need not be a unit at `𝔮`.

### 2.3 The elliptic zeta element and its smoothing

Define, for `G = Gal(K(p^∞f)/K)` and `Λ = Z_p[[G]]`, the element `z_{p^∞f} = (N(a) − σ_a)⁻¹ (_az_{p^n f})_n` of `H¹_{p^∞f}(Z_p(1)) ⊗_Λ Q(Λ)`, for any `a` prime to `6pf` with `a ≠ O_K`, where `σ_a` is the Artin symbol and `Q(Λ)` the total quotient ring; prove independence of `a` by the cocycle relation, and that `(N(a) − σ_a) z_{p^∞f}` lies in `H¹_{p^∞f}(Z_p(1)) = lim H¹(O_{K'}[1/p], Z_p(1))` for every `a` prime to `6pf` (Kato 2004, §15.6, (15.6.3), p.254). Prove that the ideal of `Λ` generated by all `N(a) − σ_a` is the unit ideal at every height-one prime, and that the image `z_{K'}` at a finite layer lies in `(O_{K'}[1/p]×) ⊗ Q` with the logarithmic Kronecker formula (Kato 2004, (15.6.4)–(15.6.5), pp.254–255). The unsmoothed element is not integral in general. *Needs:* §2.2; SelmerIwasawaCohomology §§0.8–0.9.

API:

- Integrality of smoothed elements: `(N(a) − σ_a) z_{p^∞f} ∈ H¹_{p^∞f}(Z_p(1))`.
- Independence of the smoothing ideal.
- Specialisation at a finite layer `K'` through the localisation at non-zero-divisors whose images in `Q_p[Gal(K'/K)]` are invertible.

**Checks.**

- If `N(a) − σ_a` maps to a nonunit on a component (for instance `σ_a` acting by `N(a)` there), the unsmoothed component cannot be read off integrally; the smoothed one can.
- Membership in `H¹ ⊗ Q(Λ)` or in `H¹[1/p]` does not imply membership in `H¹`.
- Changing `a` to `b` multiplies the smoothed element by `(N(b) − σ_b)/(N(a) − σ_a)` and leaves `z_{p^∞f}` unchanged.

### 2.4 Kato's realisation, de Rham line and period map

Construct, for a Hecke character `ψ` of type `(−r, 0)`, `r ≥ 1`, with value field `L = K(ψ(K×))`: the `L`-line `V_L(ψ) = H₁(E(ℂ), Q)^{⊗ r} ⊗ L` from the canonical CM pair over `K(f)`, the Galois action on `V_{L_λ}(ψ)` by which the Artin symbol of `a` acts as `ψ(a)⁻¹`, the `L`-line `S(ψ) ⊂ coLie(E)^{⊗ r} ⊗_K L` of `Gal(K(f)/K)`-invariants, the period map `per_ψ : S(ψ) → ℂ`, and the de Rham isomorphism `S(ψ) ⊗_L L_λ ≅ D^j_dR(K ⊗ Q_p, V_{L_λ}(ψ))`, `1 ≤ j ≤ r`, independent of `f` (Kato 2004, §15.7–15.8, pp.255–257). Prove the dictionary with this roadmap's conventions: for `ψ = φ` (`r = 1`), `V(φ)(1) = T_φ^∨(1)[1/p]`, the de Rham line at every prime above `p` is generated by `ω`, `γ = per_φ(ω)/Ω`, and the analytic character in §2.6 is `φ̄` times the direct finite character (Kato 2004, §15.8 and Proposition 15.9, pp.256–258; BKO, §3.0.2, p.951 and (3.4), p.952). *Needs:* §2.2; ComplexMultiplicationAndExplicitReciprocity §4.1 One-dimensional CM components of the Tate module and Frobenius and infinity-type identities; PadicHodgeRegulators §1.4.

API:

- The Artin symbol of `a` prime to `pf` acts on `V_{L_λ}(ψ)` as `ψ(a)⁻¹`; the idele `a ∈ K̂×` acts as `a_v ψ(a)⁻¹` at the place `v` under `λ`.
- `S(ψ)` is one-dimensional over `L` and `per_ψ` is injective.
- At a good prime `a`, arithmetic Frobenius on `T_φ^∨(1)` is `N(a)/φ(a)`.

**Checks.**

- Dual and twist: on `T_φ` arithmetic Frobenius at `a` is `φ(a)`; on the dual it is `φ(a)⁻¹`, and the Tate twist multiplies by `N(a)`: `N(a)/φ(a)`. Omitting the twist gives `φ(a)⁻¹`, of absolute value `N(a)^{−1/2}` instead of `N(a)^{1/2}`.
- The analytic character is `φ̄χ`, not `φχ`, `φ̄⁻¹χ` or `φ̄χ⁻¹`: for nonreal `χ` the four values `L_{pf}(·, 1)` differ.
- `r = 1`: `D⁰_dR` and `D¹_dR` coincide with `S(φ) ⊗ L_λ`; the index `j` matters only for `r ≥ 2`.

### 2.5 The height-one explicit reciprocity law

Prove, in the form applied by Kato: let `K'` be a finite extension of `K` inside `K(p^∞f)`, of the shape `K(g)` with `g = p^m f_0`, `m ≥ 1`, `f_0` the prime-to-`p` part, `(E, α)` the canonical CM pair over `K(g)`, `ξ = (ξ_n)` the `O_K ⊗ Z_p`-basis of `T_pE` coming from the Betti class of `1 ∈ K`, and `θ_n(z) = {}_aθ_E(z + ν_n)` for the torsion points `ν_n = ξ_n − α_n` killed by `f_0`. Then the image of `ξ^{⊗(−r)} ⊗ (θ_n(α_n))_n` under the cup product with `(T_pE)^{⊗(−r)}`, localisation at the places above `p` and the dual exponential is `p^{−mr} (r − 1)!⁻¹ (d/ω)^r log θ_m (α_m) · ω^{⊗ r}`, for a `K'`-basis `ω` of `coLie(E)` (Kato 2004, proof of Proposition 15.9, pp.258–259, applying the height `h = 1` case of Kato's generalised explicit reciprocity law to the `𝔭`-divisible groups of the Néron model, one for each place `v | p` of `K'` and prime `𝔭 | p` of `O_K`). The CM curve has good reduction at every place of `K(g)` (Serre–Tate), and each `𝔭`-divisible group is a height-one formal `O_𝔭`-module (relative Lubin–Tate). *Needs:* §§2.1–2.4; PadicHodgeRegulators §§1.4, 1.7, 1.11; SelmerIwasawaCohomology §0.11; LubinTateFormalModulesAndQuasiCanonicalLifts LT.2.

**Checks.**

- `r = 1`: the right side is `p^{−m}(d log θ_m/ω)(α_m)·ω`, the logarithmic derivative of the theta function at the torsion point.
- For an inert `p`, there is one prime `𝔭 = pO_K` and the formal group of `E` at `v` has height two over `Z_p` and height one over `O_𝔭`; the law is applied over `O_𝔭`.
- The factorial `(r − 1)!⁻¹` is `1` for `r = 1, 2` and `1/2` for `r = 3`.
- Changing `ω` to `uω`, `u ∈ K'×`, multiplies `(d/ω)^r log θ_m` by `u^{−r}` and `ω^{⊗ r}` by `u^r`; the right side is independent of `ω`, as the left side is.

### 2.6 Kato's reciprocity law for elliptic units

Prove: let `r ≥ 1`, `ψ` of type `(−r, 0)`, `f` contained in the conductor of `ψ`, `K'` a finite extension of `K` inside `K(p^∞f)` and `γ ∈ V_L(ψ)`. The image of `z_{p^∞f}` under `H¹_{p^∞f}(Z_p(1)) → H¹(O_{K'}[1/p], V_{L_λ}(ψ)(1))` (cup product with `γ`), the semilocal dual exponential and the de Rham isomorphism of §2.4 lies in `S(ψ) ⊗_K K'`, and for every character `χ : Gal(K'/K) → ℂ×`, `Σ_{σ ∈ Gal(K'/K)} χ(σ) per_ψ(σ(·)) = L_{pf}(ψ̄, χ, r) · γ`, with `L_{pf}(ψ̄, χ, s) = Σ_a ψ̄(a)χ(a)N(a)^{−s}` over ideals prime to `pf` (Kato 2004, Proposition 15.9, p.258). Proof route: by traces reduce to `K' = K(g)` and `γ = β^{⊗(−r)}`; apply §2.5; evaluate `(d/ω)^r log {}_aθ` at the torsion points by the analytic theory of Eisenstein series (Kato 2004, §3.8, (3.8.1)–(3.8.2), pp.138–140), obtaining `Σ_σ χ(σ) per(σ(z)) = (N(a) − ψ(a)χ(a)⁻¹) L_{pf}(ψ̄, χ, r) γ` for the smoothed element, (15.9.1)–(15.9.2), pp.259–260. *Needs:* §§2.3–2.5; PadicHodgeRegulators §§1.4, 1.11.

API:

- Algebraicity: `Ω⁻¹ L_{pf}(φ̄χ, 1)` for `χ` of finite order factoring through `K(p^∞f)` is algebraic and lies in the field generated by `L`, `K'` and the coefficients of the chosen model.
- Smoothed form: the smoothing factor becomes `N(a) − ψ(a)σ_a` after the twist by `V(ψ)`.
- Trace compatibility in `K'`.

**Checks.**

- `χ = 1`, `r = 1`: the deleted value `L_{pf}(φ̄, 1)` contains the `p`-factor `1 − φ̄((p))/p² = 1 + 1/p`, nonzero and of valuation `−1`.
- For nonreal `χ`, replacing `χ` by `χ⁻¹` in the weighted sum changes the right side to `L_{pf}(ψ̄, χ⁻¹, r)`, a different number.
- The smoothing factor for `a = (α)` with `α ≡ 1 mod f`: `N(a) − ψ(a) = α ᾱ − α^r`, which for `r = 1` is `α(ᾱ − 1)`.

### 2.7 The integral normalised class

Construct, for the period datum `(E, ω, Ω)` and `γ = per_φ(ω)/Ω`, the norm-compatible family `z_a ∈ H¹(K(a), T_φ^∨(1))` for admissible moduli `a` divisible by `f` and supported on `f`, `p` and the auxiliary `l`, whose rationalisation is Kato's class `z_a^{(p)}(γ)` of §2.6; the transition maps are corestriction, with the arithmetic-Frobenius Euler factors at newly introduced primes retained (BKO, §3.0.2, pp.951–952). Integrality is a theorem here, not a consequence of §2.6, which is a statement after inverting `p`. Proof route for the component used later (the `ν`-evaluation, the augmentation over `Gal(H/K)` and the `Δ`-invariant projection): under the twist the smoothing factor is `N(a) − φ(a)σ_a` (Kato 2004, (15.9.2), p.259); take `a = (α)` with `α ≡ 1 mod 6 f l^{m+1}` and `α ≡ 2 mod p`; on that component `σ_a` acts through `ν(a) = 1` and a pro-`p` element, so the factor is congruent to `N(a) − φ(a) = α(ᾱ − 1)`, a `p`-adic unit, hence invertible in the local Iwasawa algebra, and Kato's (15.6.3) gives integrality of the projected element. The full lattice statement needs the Betti lattice: `γ` generates `T_φ^∨` integrally, including the prime-to-`p` comparison between the curve over `H` and the canonical CM pair over `K(f)`. *Needs:* §§0.4, 2.3, 2.4, 2.6; SelmerIwasawaCohomology §§0.9, 0.11.

API:

- Rationalisation: `z_a ⊗ Q = z_a^{(p)}(γ)`.
- Corestriction: at fixed prime support, `cor(z_{ap}) = z_a`.
- A new good prime `q` introduces the Euler operator of arithmetic Frobenius at `q`.
- Flat coefficient extension `R → R'` carries `z_a` to the class of the same normalisation.
- For `ε ∈ O_K×`, replacing `Ω` by `εΩ` multiplies `γ` and `z_a` by `ε⁻¹`.

**Checks.**

- `α = 2` modulo `p` with `ᾱ ≡ 2`: `α(ᾱ − 1) ≡ 2` is a unit; a choice `α ≡ 1 mod p` gives `ᾱ − 1 ≡ 0` and a nonunit factor.
- Two successive `p`-levels after `p` divides the modulus: corestriction gives the previous class with no extra Euler factor.
- Changing `Ω` to `−Ω` negates `γ` and the class; changing `ω` and `Ω` together by `2` fixes both.

### 2.8 Direct-character reciprocity at an inert prime

Prove: for the integral class at level `K(gp^n)`, `g` divisible by `f`, and a character `χ` of finite order of `Gal(K(gp^n)/K)`, `Σ_σ χ(σ) exp*_p(loc_p(z^σ)) = Ω⁻¹ L_{pg}(φ̄χ, 1) · ω` in the common coefficient-tensor-de Rham line, the sum taken over the semilocal places with the trace of the native localisation (BKO, (3.4), p.952; Kato 2004, Proposition 15.9 and (15.9.1)–(15.9.2), pp.258–260). `L_{pg}` deletes the primes dividing `pg`; for `g = f` it is `L_{pf}`, and for auxiliary `ν` take `g = f l^m` with the actual conductor exponent `m`. Only `φ` is conjugated. Equality of integral classes is not inferred from this rational identity. *Needs:* §§2.4, 2.6, 2.7; PadicHodgeRegulators §§1.4, 1.11; AL.5.1.1 Finite Euler corrections at critical points.

**Checks.**

- `χ = 1`: the inert `p`-factor `1 + 1/p` is retained.
- Inverse characters: replacing `χ` by `χ⁻¹` changes the right side for nonreal `χ`.
- `g = f l^m` with `ν ≠ 1`: the `l`-factors of `L_{pg}` are `1` (§5.3), so `L_{pg}(φ̄ν, 1) = L_{pf}(φ̄ν, 1)`.

### 2.9 Twisting the norm-compatible Kummer tower

Prove: over `F_∞ = K(fp^∞)`, on which the action on `T_φ` factors, the Kummer identification gives an `R`-linear isomorphism `(lim_cor H¹(F_n, Z_p(1))) ⊗ T_φ^∨ ≅ lim_cor H¹(F_n, T_φ^∨(1))`, equivariant for the diagonal action of `Gal(F_∞/K)` (the coefficient factor transforms by `φ⁻¹`), compatible with localisation and corestriction, with the `p`-completed `S`-unit groups and the finite-`S` Kummer correction retained (BKO, (3.5), p.952). Proof route: work modulo `p^k` on cofinal levels where `T_φ/p^k` is trivial, apply the character twist of SelmerIwasawaCohomology §3.7 and pass to limits; finite freeness makes tensoring commute with the limits. *Needs:* §§2.4, 2.7; SelmerIwasawaCohomology §§0.8–0.11; the character twist of SelmerIwasawaCohomology §3.7 (gap:sic-character-twist).

**Checks.**

- Changing the basis of `T_φ` multiplies both sides by the same unit.
- Without triviality of the action on `F_∞`, the untwisted Kummer map gives no such identification.
- The comparison commutes with corestriction, so it may be applied before any semilocal projection.

### 2.10 Period changes

Prove: for fixed `ω`, replacing `Ω` by `uΩ` and `γ` by `u⁻¹γ`, `u` an allowed lattice unit, multiplies `z_a` and both sides of §2.8 by `u⁻¹`; replacing `ω` by `vω` and `Ω` by `vΩ`, with `v ∈ H×` a unit at the place above `p`, leaves `γ` and `z_a` unchanged, multiplies the normalised scalar by `v⁻¹`, and leaves its product with the generator `vω` unchanged (BKO, §3.0.2, p.951, and (3.4), p.952). The `p`-unit property of the normalised value is independent of the allowed choices. *Needs:* §§0.4, 2.7, 2.8.

**Checks.**

- `v = 2`: the class is fixed and the scalar halves.
- `u = −1`: class and scalar both change sign.
- `v = p` is not allowed: `pω` is not a Néron differential.

### Examples

For `K = Q(√−7)`, `p = 5`, `f` the canonical conductor, `a = (α)` with `α ≡ 1 mod 6f·23²` and `α ≡ 2 mod 5`: the twisted smoothing factor is congruent to `2(2 − 1) = 2`, a `5`-adic unit. For `χ = 1` the deleted factor at `5` is `6/5`.

### Dependencies

Layers 0–1; EllipticCurves Layer 1; ComplexMultiplicationAndExplicitReciprocity §§1.2, 2.2, 3.2, 4.1; ClassFieldTheory Layer 13; SelmerIwasawaCohomology §§0.8–0.11, 3.6, 3.7 and its character twist; PadicHodgeRegulators §§1.4, 1.7, 1.11; LubinTateFormalModulesAndQuasiCanonicalLifts LT.2; AL.5.

## Layer 3: Torsion towers and the CM Lubin–Tate comparison

### 3.1 The torsion and ring-class compositum

Construct, for `n ≥ 0`, `r ≥ 0`, the fields `F_n = H(E[p^{n+1}])` and `M_{n,r} = F_n L[r]` inside `Q̄`, the corestriction maps between their continuous Kummer cohomologies induced by the field inclusions, and `Φ_n`, the completion of `F_n` at the place fixed by `ι_p`. For `ν` of exact order `l^r`, `r ≥ 1`, prove `M_{n,r} ⊂ K(f l^{r+1} p^{n+1})`; for `ν = 1`, `M_{n,0} = F_n` (BKO, p.952 and the corestriction arrows on pp.952–953). *Needs:* §0.6; ComplexMultiplicationAndExplicitReciprocity §4.1 The algebraic Hecke character of a CM abelian variety, §3.2 Exact ray-level field and generation criterion; ClassFieldTheory Layer 13; SelmerIwasawaCohomology §0.11; LubinTateFormalModulesAndQuasiCanonicalLifts LT.2 `primitive-division`.

API:

- The `n` and `r` inclusions commute and induce transitive corestrictions.
- `Φ_n` is the Lubin–Tate `π^{n+1}`-division field after §3.5.
- `L[0] = K`, `M_{n,0} = F_n`.
- Localisation commutes with corestriction through the sum over places above the chosen prime.

**Checks.**

- `n = 0`: `[Φ_0 : Φ] = p² − 1`, so `Φ_0 ≠ Φ`.
- An order-`l` character uses `L[1]` and ray modulus `l²`.
- `l | (p + 1)` is allowed: no coprimality of degrees is assumed.

### 3.2 Ramification proves linear disjointness

Prove: `F_n` and `L[r]` are linearly disjoint over `K`, so `F_n ⊗_K L[r] → M_{n,r}` is an isomorphism, including when `l | p² − 1`. Proof route: the intersection is abelian of `l`-power degree, unramified above `l` (good reduction of `E` there) and unramified away from `l` (`L[r]/K` is ramified only above `l`); with no real places it lies in the Hilbert class field and is trivial since `l ∤ h_K` (BKO, p.953). *Needs:* §3.1; ClassFieldTheory Layer 13; LocalFieldsRamification Layers 2–3; ComplexMultiplicationAndExplicitReciprocity §4.1 One-dimensional CM components of the Tate module; Mathlib `Subalgebra.linearDisjoint_iff_injective`.

**Checks.**

- `K = Q(√−7)`, `p = 5`, `l = 3` would divide `p² − 1 = 24`; the argument still applies when `l ∤ h_K = 1` (the BKO hypotheses exclude `l = 3` for other reasons).
- If `l | h_K`, the Hilbert class field contains a cyclic `l`-extension that may lie in both fields; the hypothesis is used.
- The disjointness is of Galois extensions of `K`; a coprime-degree argument would fail for `l | (p² − 1)p^{2n}`.

### 3.3 Splitting and the semilocal character factors

Prove: `pO_K` splits completely in `H` and in every ring class field of conductor prime to `p`, including `L[r]`. After compatible choices of places, `F_n ⊗_K Φ ≅ ∏_{Gal(H/K)} Φ_n` and `M_{n,r} ⊗_K Φ ≅ ∏_{Gal(H/K) × Gal(L[r]/K)} Φ_n`; finite-level Kummer cohomology acquires the corresponding regular group-algebra factors, evaluation of the second factor sends `[g]` to `ν(g)`, and forgetting the `H`-factor is its augmentation; these identifications commute with the transition maps (BKO, pp.952–953). Proof route: `p` lies in every order of conductor prime to `p` and generates a principal proper ideal, whose Artin class is trivial; combine with §3.2 and the local torsion ramification. *Needs:* §§3.1–3.2; ClassFieldTheory Layer 13; LocalFieldsRamification Layer 2; SelmerIwasawaCohomology §§0.11, 3.6; LubinTateFormalModulesAndQuasiCanonicalLifts LT.2; Mathlib `MonoidAlgebra.lift_single`.

**Checks.**

- For nonreal `ν` the coefficient of `[g]` is `ν(g)`, not `ν(g)⁻¹`.
- Augmentation over `Gal(H/K)` differs from keeping one place without its conjugates: for `h_K = 2` the augmentation of `(x, y)` is `x + y`, the single place gives `x`.
- A ring class field of conductor divisible by `p` need not split `p`.

### 3.4 The inert Frobenius is multiplication by −p

Prove: for `φ` as in §0.1 and `p ∤ f` inert, `φ((p)) = −p`; at a place of `H` above `p` the residue field is `F_{p²}`, and the arithmetic Frobenius of the reduction of `E` is the endomorphism `[−p]`; its characteristic polynomial is `(X + p)²` and `a_{p²} = −2p` (Rubin 1987, Lemma 3.1 and its proof, p.409, RUBIN87 line 191; Jia, Property 1, pp.3–4). Proof route: `κ_K(p) = −1` and §0.1; `p` splits in `H/K`; identify Frobenius through the CM Hecke realisation and conclude equality of endomorphisms by faithfulness of the Tate realisation. *Needs:* §0.1; ComplexMultiplicationAndExplicitReciprocity §4.1 Frobenius and infinity-type identities, §4.2 Full elliptic CM L-factorization, including bad primes; §3.3; EllipticCurves Layers 2–3.

**Checks.**

- The sign is negative though the residue field has `p²` elements: `y² = x³ − x` at `7` has Frobenius `−7` over `Q(i)`, local factor `(1 + 7T)²`.
- Equal traces do not give equal endomorphisms; faithfulness of the Tate realisation is used.
- At a split rational prime no height-two conclusion is asserted.

### 3.5 Apply the Honda comparison at π = −p

Prove: the formal completion of the good model of `E` at the place above `p`, with the differential `ω`, is a height-two formal group over `O_Φ` and is strictly isomorphic over `O_Φ`, with the CM tangent embedding, to the Lubin–Tate `O_Φ`-module for `π = −p`; the isomorphism matches invariant differentials and compatible Tate bases; the completion of `H(E[p^{n+1}])` is the `π^{n+1}`-division field `Φ_n`, totally ramified of degree `(p² − 1)p^{2n}`; and `μ_{p^{n+1}} ⊂ Φ_n` by the Weil pairing on `E[p^{n+1}]` (BKO, §2, p.947 and §3.0.2, p.953; Rubin 1987, §3, pp.409–410). Compatible points with `[p]P_{n+1} = P_n` are converted to the `[−p]` convention by the sign `(−1)^n`. *Needs:* §§3.1, 3.4; LubinTateFormalModulesAndQuasiCanonicalLifts LT.4 `elliptic-honda-comparison`, `unramified-honda-comparison`, LT.2 `tate-module-comparison`, `primitive-division`, `lt-character`; EllipticCurves Layer 2.

**Checks.**

- The parameter is `−p`: `a_{p²} = −2p` corresponds to `s = −1` in LT.4; `s = +1` would require `a_{p²} = 2p`.
- `n = 0`: degree `p² − 1`; for `p = 5`, `24`.
- The Weil pairing puts `μ_{p^{n+1}}` in `Φ_n`; `[Φ_n : Φ]` is divisible by `[Φ(μ_{p^{n+1}}) : Φ] = (p − 1)p^n`, consistent with `(p² − 1)p^{2n}`.

### Examples

For `p = 5`: `Φ_0/Φ` has degree `24`, `Φ_1/Φ` degree `600`; the inert Frobenius is `[−5]` with polynomial `(X + 5)²`.

### Dependencies

Layers 0 and 2 (the class field `K(f)` and torsion fields); ComplexMultiplicationAndExplicitReciprocity §§3.2, 4.1, 4.2; ClassFieldTheory Layer 13; LocalFieldsRamification Layers 2–3; EllipticCurves Layers 2–3; SelmerIwasawaCohomology §§0.11, 3.6; LubinTateFormalModulesAndQuasiCanonicalLifts LT.2, LT.4.

## Layer 4: Finis's divisibility theorem in weight one

Throughout this layer, following Finis, the *tower prime* is a prime split in `K` and the *valuation prime* `ℓ` is an odd prime different from it. In the application of Layer 5 the tower prime is the auxiliary `l` and the valuation prime is the inert `p`.

### 4.1 Finis's local invariants

Define, for a Hecke character `λ` of `K` with Finis type `(k, j)` (`λ_∞(x) = x^{−k}x̄^{−j}`) and dual `λ*(x) = λ(x̄)⁻¹|x|_{A_K}`: `λ` is anticyclotomic in Finis's sense when `λ = λ*` (then `k + j = −1` and `λ|_{A_Q×} = ω_{K/Q}|·|`); the local Gauss sum `G(d_q, λ_q)` with respect to `e_K = e_Q ∘ Tr`; the local root numbers `W_q(λ) = N(q)^{−e(q)}G(−δ, λ_q)` at nonsplit `q` and `W_ℓ(λ)` at the valuation prime; the set `W` of sign systems `(w_q)` over nonsplit primes with almost all `w_q = 1` and `∏ w_q = 1`, and `w(λ) ∈ W` for `W(λ) = +1`; for an inert `q` and a character `χ_q` of `K_q×`, `μ_ℓ(χ_q) = 0` if `χ_q` is unramified and `min_{x ∈ O_{K_q}×} v_ℓ(χ_q(x) − 1)` otherwise; and `b_ℓ(χ_ℓ, w) ∈ Q` for `ℓ` inert or ramified, by Finis's equation (14) (Finis, §1, pp.768–769, FINIS06 lines 61–99; §3, Proposition 3.4, p.786, and equation (14) with the vanishing of `b_ℓ`, p.788, FINIS06 lines 902–917). Prove `W_q(λ) = ±1` for nonsplit `q`, `W_q(λ) = (−1)^{v_q(f_λ)}` for inert `q`, and `W(λ) = ∏_q W_q(λ)` for type `(−k, k − 1)`, `k ≥ 1` (Finis, p.769; proof of Corollary 2.3, p.778). Prove `b_ℓ(χ_ℓ, w) = 0` when `χ_ℓ` is unramified (`ℓ` inert) or of minimal conductor (`ℓ` ramified) (Finis, p.769 and Proposition 3.4, p.786). *Needs:* AL.1.3.4 The local Gauss sum, AL.1.3.5 Explicit local ε-factors; Tau Ceti `HeckeCharacter`.

API:

- `μ_ℓ` depends only on the restriction to local units, and `μ_ℓ(χ_q) = 0` when that restriction is trivial.
- `μ_ℓ(χ_q χ'_q) = μ_ℓ(χ_q)` when `χ'_q` is unramified.
- `λ ↦ λ/N` (`N` the norm character) carries ideal type `(1,0)` equivariant characters times anticyclotomic finite-order characters to Finis-anticyclotomic characters of type `(−1, 0)` (§5.1).

**Checks.**

- `χ_q` of conductor `q` with values `ζ_ℓ` on units: `μ_ℓ = v_ℓ(ζ_ℓ − 1) = 1/(ℓ − 1)` in the normalisation `v_ℓ(ℓ) = 1`; for values of order prime to `ℓ`, `μ_ℓ = 0`.
- Type `(−1, 0)` gives `k + j = −1`; type `(1, 0)` gives `k + j = 1` and is not Finis-anticyclotomic.
- For inert `q` with `v_q(f_λ) = 1`, `W_q = −1`; with `v_q(f_λ) = 0`, `W_q = 1`.

### 4.2 Primitive theta functions, Shintani operators and Yang's formula

Construct the spaces of primitive theta functions `V^{prim}_{d,C;ν}` on a CM elliptic curve, the Shintani operators `F*` and the Shintani representation, and prove: the characters appearing in `T^{prim}_{d_0 p^m}` are exactly those with restriction `ω_{K/Q}|·|` to `A_Q×`, type `(−1, 0)`, root number `+1` and conductor `d_0 p^m D d⁻¹` with `d` a squarefree product of ramified primes (Finis, §2, Proposition 2.2, and the description recalled on p.796). Prove Yang's formula: for a Shintani eigenfunction `ϑ` with character `λ`, `|l(ϑ)|²/⟨ϑ, ϑ⟩ = (w_K² √D / 4πh_K) ∏_{p|d}(1 − ω_{K/Q}(p)p⁻¹)⁻¹ L(0, λ)` (Finis, Proposition 2.4, p.780, FINIS06 line 564, reformulating Yang's theta-lifting formula). *Needs:* §4.1; ComplexMultiplicationAndExplicitReciprocity §1.2 (the period-lattice comparison); AL.1.5.2 Normalization of the supplied completed Hecke function.

**Checks.**

- The constant `w_K²√D/(4πh_K)` for `K = Q(√−7)`: `w_K = 2`, `h_K = 1`, giving `4√7/(4π) = √7/π`.
- A character with `W(λ) = −1` does not appear, consistent with `L(0, λ) = 0` and `l(ϑ) = 0`.
- The correction factor at `p | d` with `ω_{K/Q}(p) = 0` (ramified) is `1`.

### 4.3 Integral theta functions and the valuation identity

Construct integral theta functions and prove the arithmetic form of Yang's formula: for `λ` anticyclotomic of type `(−1, 0)`, `W(λ) = +1`, conductor `dDd⁻¹`, `Ω⁻¹ L(0, λ) = 2^{ν(D)}√D ∏_{q|d}(1 − ω_{K/Q}(q)q⁻¹) b_a(ϑ_λ, ā, ϑ_λ, a)⁻¹ (l(ϑ_λ)/w_K)²` (Finis, Proposition 3.6, (13), p.787), and the valuation of the pairing term (Finis, Proposition 3.7, (15), p.789). Deduce, for `λ` of type `(−1, 0)` with `W(λ) = +1` and the normalised integral eigenfunction `ϑ_λ`, `v_ℓ(Ω⁻¹ W̃ D^{1/4} L(0, λ)) = Σ_{q ≠ ℓ inert} μ_ℓ(λ_q) + b_ℓ(λ_ℓ, w(λ)) + 2 v_ℓ(l(ϑ_λ)/w_K)` with `W̃ = 1` for nonsplit `ℓ` (Finis, proof of Theorem 1.1, p.794, FINIS06 lines 1130–1148). The period is that of a pair `(E, ω)` with good reduction at the `ℓ`-adic place and `ω` reducing to a nonvanishing differential (Finis, p.768). *Needs:* §§4.1–4.2; ComplexMultiplicationAndExplicitReciprocity §1.2 CM period and de Rham pairings (with its period-lattice comparison).

**Checks.**

- `v_ℓ(l(ϑ_λ)/w_K) ≥ 0` gives the lower bound `v_ℓ(Ω⁻¹ D^{1/4} L(0, λ)) ≥ Σ μ_ℓ + b_ℓ`, except possibly for `K = Q(√−3)`, `ℓ = 3`.
- Replacing `ω` by `ℓω` changes `Ω` by `ℓ` and the left side by `−1`; the good-reduction normalisation excludes it.
- `D^{1/4}` is an `ℓ`-adic unit for `ℓ ∤ D` and must be kept when `ℓ | D`.

### 4.4 Torsion points on subvarieties in characteristic ℓ

Prove, in the form used by Finis: let `E` be an elliptic curve over `F̄_ℓ` with CM by `O_K`, `p` a prime with `ℓ ≠ p`, `r ≥ 1`, and `B ⊂ E^r` an irreducible closed subvariety such that `B ∩ E^r[p^∞]` is Zariski dense in `B`. Then `B` is a translate of its stabiliser, an algebraic subgroup of `E^r` (Finis, proof of Lemma 4.5, p.803, FINIS06 line 1587, applying Boxall's theorem). Deduce Finis's Lemma 4.5: for `β_ν ∈ O_{K_p}` and an infinite subset `M ⊂ E[p^n p̄^∞]`, the Zariski closure of `(⟦β_ν⟧P)_ν` contains a translate of the abelian subvariety cut out by the `O_K`-relations among the `p̄`-components `α′_ν` of the `β_ν = (α_ν, α′_ν)` (Finis, Lemma 4.5, p.803, FINIS06 lines 1571–1584). *Needs:* EllipticCurves Layers 1–2; ComplexMultiplicationAndExplicitReciprocity §1.2 (the period-lattice comparison).

**Checks.**

- `r = 1`: an irreducible curve `B = E` is a translate of `E`; a finite `B` with dense torsion is a torsion point, a translate of the trivial subgroup.
- The diagonal in `E²` contains all `(P, P)` with `P ∈ E[p^∞]` and is a subgroup; the graph of `[2]` likewise.
- A curve in `E²` of genus at least two contains only finitely many `p`-power torsion points; it is not a translate of a subgroup and its torsion is not dense.

### 4.5 Nonvanishing of theta functions modulo ℓ

Prove: let `ℓ ≠ p` be primes, `p` odd and split in `K`, and `d_0` a positive integer prime to `p`. For `m` large enough, for every character `λ` appearing in the Shintani representation on `T^{prim}_{d_0 p^m}` there is an `ℓ`-integral representative `ϑ` of the `λ`-eigenspace with `v_ℓ(l(ϑ)/w_K) = 0` (Finis, Theorem 4.1, p.795, FINIS06 line 1221). Proof route: fix the restriction of `λ` to `Λ_{d_0D}` and write the eigenfunctions explicitly (Lemma 4.2); assuming infinitely many eigenspaces with `v_ℓ(l(ϑ)/w_K) > 0`, reduce modulo `ℓ` and apply Galois conjugation to place infinitely many `p`-power torsion points on a subvariety `D_{n_1} ⊂ E^r` in characteristic `ℓ` (Lemmas 4.3–4.4); §4.4 gives a translate of an explicit abelian subvariety inside `D_{n_1}`, contradicted for large `n_1` (Lemmas 4.6–4.7, pp.795–807). *Needs:* §§4.2–4.4.

**Checks.**

- The statement is for all `λ` at sufficiently large level `m`; at small level a single eigenspace may have `v_ℓ > 0`.
- `ℓ = p` is excluded: the reduction argument uses `p`-power torsion in characteristic `ℓ ≠ p`.
- The unit `w_K` is invertible at `ℓ` unless `ℓ | w_K`, which occurs only for `ℓ = 3`, `K = Q(√−3)` or `ℓ = 2`.

### 4.6 Finis's theorem in weight one

Prove: let `d` be a positive integer, `p` an odd prime split in `K` (the tower prime), `ℓ` an odd prime different from `p` (the valuation prime), and `Ω` the period of a pair `(E, ω)` as in §4.3. For all but finitely many anticyclotomic Hecke characters `λ` of `K` of conductor dividing `dDp^∞`, Finis type `(−1, 0)` and `W(λ) = +1`:

- if `ℓ` splits in `K`, `v_ℓ(Ω⁻¹ W_ℓ(λ) L(0, λ)) = Σ_{q inert} μ_ℓ(λ_q)`;
- if `ℓ` is inert or ramified in `K`, `v_ℓ(Ω⁻¹ D^{1/4} L(0, λ)) = Σ_{q ≠ ℓ inert} μ_ℓ(λ_q) + b_ℓ(λ_ℓ, w(λ))`;

and for every such `λ` (finite exception set or not) the left side is at least the right side, except possibly for `K = Q(√−3)`, `ℓ = 3`. The values `Ω⁻¹L(0, λ)` are algebraic in this normalisation (Finis, Theorem 1.1 with `k = 1`, p.769, FINIS06 lines 101–122; proof, pp.793–795). Proof route: §4.3's identity reduces the equality to `v_ℓ(l(ϑ_λ)/w_K) = 0` for almost all `λ`, which is §4.5. *Needs:* §§4.1–4.5.

**Checks.**

- `W(λ) = −1`: `L(0, λ) = 0` by the functional equation and the theorem says nothing.
- If `λ` is unramified at every inert prime, the right side of the split case is `0` and almost all normalised values are `ℓ`-units.
- The tower prime must be split: with `p` inert the family of conductor `dDp^∞` is not the one of Theorem 4.1.

### Examples

For `K = Q(√−7)` (`D = 7`), tower prime `23`, valuation prime `5`: `D^{1/4} = 7^{1/4}` is a `5`-adic unit; for `λ` unramified at every inert prime, the nonsplit identity reads `v_5(Ω⁻¹ 7^{1/4} L(0, λ)) = b_5(λ_5, w(λ))`, and `b_5 = 0` when `λ_5` is unramified.

### Dependencies

AL.1; ComplexMultiplicationAndExplicitReciprocity §1.2; EllipticCurves Layers 1–2; Tau Ceti `HeckeCharacter`.

## Layer 5: Unit values in the canonical family

From here on `φ` is a canonical Gross character (`IsCanonicalGrossCharacter`), `−D` is odd with `2` split in `K`, `p ≥ 5` is inert with `p ∤ h_K D`, and `l` is the auxiliary prime of §0.5.

### 5.1 The weight-one Finis family

Construct `λ_ν = φ̄ν/N` for `ν ∈ X_l`: on ideals prime to the conductor, `λ_ν(a) = φ̄(a)ν(a)/N(a) = φ(a)⁻¹ν(a)`; at the idele level, multiply `φ̄ν` by the norm absolute value, so the archimedean component is `z`. Prove: `λ_ν` has Finis type `(−1, 0)`, is anticyclotomic in Finis's sense (`λ = λ*`), has conductor dividing `dDl^∞` for a fixed `d`, `L(0, λ_ν) = L(φ̄ν, 1)`, and `W(λ_ν) = +1`; the family is injective in `ν` (Finis, §1, p.768; Theorem 1.1, p.769; proof of Corollary 2.3, p.778; BKO, p.954). The period is that of the same pair `(E, ω)` as §0.4, which has good reduction at the valuation prime `p`. *Needs:* §§0.4, 0.6, 1.1, 1.2, 4.1; ComplexMultiplicationAndExplicitReciprocity §4.3; AL.1.5.2 Normalization of the supplied completed Hecke function.

API:

- `λ_ν(a) = φ̄(a)ν(a)/N(a)` on prime-to-conductor ideals.
- Self-duality from `φφ̄ = N` and `ν^c = ν⁻¹`.
- `L(0, λ_ν) = L(φ̄ν, 1)`, with matching primitive Euler factors.
- `λ_ν = λ_{ν'}` if and only if `ν = ν'`.
- Algebraic embeddings of the value field transport the family and its normalised values.

**Checks.**

- On a prime of norm `Q`, `λ_ν(a) = φ̄(a)ν(a)/Q`; the opposite twist `Qφ̄(a)ν(a)` shifts the central point to `s = −1`.
- Euler denominators: `1 − φ̄(a)ν(a)Q^{−s}·Q^{−1}` at `s = 0` equals the `φ̄ν` denominator at `s = 1`.
- Finis's tower prime set to the inert `p` violates the split hypothesis of §4.6.
- `ν = 1` belongs to the family with sign `+1`; the almost-all theorem need not make its value a unit.

### 5.2 All inert correction terms vanish

Prove: for `λ_ν` in the canonical family, `μ_p((λ_ν)_q) = 0` for every inert `q ≠ p` and `b_p((λ_ν)_p, w(λ_ν)) = 0`: the canonical conductor is supported on ramified primes, `ν` is ramified only above the split `l`, the norm twist is unramified, and `p ∤ fl`, so `λ_ν` is unramified at every inert prime, including `p` (Finis, pp.768–769; BKO, p.954). *Needs:* §§4.1, 5.1; ComplexMultiplicationAndExplicitReciprocity §4.3 Canonical Gross good reduction away from the discriminant.

**Checks.**

- An extra inert prime in the conductor would contribute `μ_p ≥ 0` and is excluded by the canonical support condition.
- Changing the depth of `ν` at `l` changes no inert term.
- At `p` the character is unramified, the branch where `b_p = 0`.

### 5.3 The deleted auxiliary factors equal one

Prove: for `ν ≠ 1` of exact order `l^r` and conductor `l^m`, `m = r + 1`, the conductor of `φ̄ν` is `f l^m`; both primes above `l` are ramified for `φ̄ν`, so the local factors there are `1` and `L_{f l^m}(φ̄ν, 1) = L_f(φ̄ν, 1)`. This fails for `ν = 1`. Deleting the inert `p`-factor at the trivial `p`-character gives `1 + 1/p`, not a unit (BKO, (3.6)–(3.9), pp.953–954). *Needs:* §§0.3, 0.6, 3.4; AL.1.1.1 Local quasi-characters, unramified characters and the conductor exponent; AL.5.1.1 Finite Euler corrections at critical points.

**Checks.**

- `ν = 1`: the factors at `l` are `(1 − φ̄(λ)/l)` for the two primes `λ | l`, nontrivial in general.
- A ramified rank-one local representation has no inertia invariants, so its factor is `1`.
- `p` and `l` deletions are separate: `L_{p f l^m}(φ̄ν, 1) = (1 + 1/p)L_f(φ̄ν, 1)` for `ν ≠ 1`.

### 5.4 Almost all normalised auxiliary values are p-units

Prove: for the canonical `φ` and the auxiliary `l`, all but finitely many `ν ∈ X_l` satisfy `v_p(Ω⁻¹ L_f(φ̄ν, 1)) = 0`; the value is algebraic in the normalisation of §0.4, hence a unit in the integers of every finite extension of `Φ` containing it (BKO, (3.9), p.954). Proof route: apply §4.6 in the nonsplit case with tower prime `l` and valuation prime `p` to `λ_ν`; its right side is `0` by §5.2; `D^{1/4}` is a `p`-adic unit since `p ∤ D`; transport by §5.1 and §5.3; injectivity of `ν ↦ λ_ν` keeps the exceptional set finite. *Needs:* §§0.4, 4.6, 5.1–5.3.

**Checks.**

- The finite exceptional set may contain `ν = 1`.
- Positive root number alone gives no unit statement; Finis's theorem is the input.
- Dropping `D^{1/4}` before checking its valuation would be wrong if `p | D`; here `p ∤ D`.

### 5.5 A nontrivial unit-value witness

Prove: there is `ν ∈ X_l`, `ν ≠ 1`, with `Ω⁻¹L_f(φ̄ν, 1)` a `p`-adic unit, and such `ν` have arbitrarily large conductor (BKO, proof of Theorem 3.4, pp.953–954). Proof route: for each `r ≥ 1` choose a primitive character of order `l^r`, conductor `l^{r+1}`; remove the finite exceptional set of §5.4. *Needs:* §§0.6, 5.4.

**Checks.**

- No claim is made for `ν = 1`.
- The characters for distinct `r` are distinct since their conductors differ.
- The witness uses neither a signed decomposition nor a primitive Iwasawa coordinate.

### 5.6 Unramified coefficients for the canonical family

Prove: for canonical `φ` with `p ∤ h_K D` and `ν ∈ X_l`, the field `Φ(φ, ν)` generated over `Φ` by the values of `φ` on ideals prime to `f` and of `ν` is finite unramified; `T_φ` and the evaluation at `ν` are defined over its integers `W`; and `A_ν = Ω⁻¹L_f(φ̄ν, 1)` lies in a finite unramified extension of `Φ`, so valuation zero makes it a unit of the integers of any unramified coefficient field containing it. Proof route: for a class representative `a` of order `d | h_K`, `a^d = (α)` with `α` prime to `pf` and `φ(a)^d = ±α`; since `p ∤ d`, `X^d ∓ α` generates an unramified extension; the values of `ν` have `l`-power order; for the value, apply §2.8 at level `g = f l^m` with `ν` trivial on the `p`-part, so the weighted sum is invariant under `Gal(K(gp^n)/K(g))` and lies in `W[1/p] ⊗ coLie(E) ⊗_K K(g)`, with `K(g)/K` unramified above `p`; the `p`-factor `1 + 1/p` is rational and the `l`-factors are `1` for `ν ≠ 1` (BKO, p.954; Kato 2004, Proposition 15.9, p.258). *Needs:* §§0.6, 2.8, 3.3, 5.3; ComplexMultiplicationAndExplicitReciprocity §4.3; LocalFieldsRamification Layer 2; GlobalNumberFields Layer 10.

**Checks.**

- `p | h_K`: `X^p − u` can be ramified, and the proof fails.
- A rescaling of `Ω` by a ramified unit preserves valuations but leaves the unramified normalisation.
- `ν = 1` uses level `f` and keeps `1 + 1/p` separate.

### 5.7 Scalar and tensor character kernels

Prove: let `F = Φ_n` and `U = Frac(W)` as in §5.6. The multiplication map `F ⊗_Φ U → C_p` is injective; hence for `χ` of the finite anticyclotomic quotient with values in `F` and `x_σ ∈ F ⊗_Φ U`, `Σ_σ χ(σ)x_σ = 0` if and only if its image in `C_p` is `0`; the same holds for the integral tensor after its flat injection (BKO, §2, pp.948–949, and §3.0.2, pp.953–954). Proof route: a common subextension of the totally ramified `Φ_n` and the unramified `U` is `Φ`; linear disjointness follows and is equivalent to injectivity (`Subalgebra.linearDisjoint_iff_injective`). For a ramified coefficient field this fails, and no statement is made for it. *Needs:* §§3.5, 5.6; LocalFieldsRamification Layers 2–3; Mathlib `Subalgebra.linearDisjoint_iff_injective`.

**Checks.**

- `U = F` with `F ≠ Φ` ramified: `a ⊗ 1 − 1 ⊗ a` for `a ∉ Φ` is nonzero with image `0`.
- `n = 0`, `U = Φ(ζ_{l})` unramified: `Φ_0 ⊗_Φ U` is a field of degree `24·[U : Φ]` for `p = 5`.
- `χ` of order `p^n` takes values in `μ_{p^n} ⊂ Φ_n` by §3.5.

### Examples

For `K = Q(√−7)`, `p = 5`, `l = 23`: `D^{1/4} = 7^{1/4}` has `v_5 = 0`; for `ν` of order `23`, the factors at the two primes above `23` are `1`; almost all `Ω⁻¹L_f(φ̄ν, 1)` are `5`-adic units. These are hypothesis and normalisation checks; no particular value is asserted to lie outside the exceptional set.

### Dependencies

Layers 0, 1, 2, 3 and 4; ComplexMultiplicationAndExplicitReciprocity §4.3; AL.1, AL.5; LocalFieldsRamification Layers 2–3; GlobalNumberFields Layer 10.

## Layer 6: Nonvanishing of central values

### 6.1 Rohrlich's lattice-point count

Define `rohrlichCount P α β q t`, for a finite set `P` of primes, `α_p, β_p ∈ Z_p`, a positive integer `q` and `t > 0`, as the number of `(u, v) ∈ Z²` with `|u|, |v| ≤ t` such that for every `p ∈ P`, `uβ_p − vα_p` is nonzero and lies in `qZ_p` (Rohrlich 1984, §3, p.401, ROHRLICH84 line 763). Prove, for `α_p, β_p` algebraic over `Q` and not both `0`:

- `rohrlichCount_eq_zero`: for every `c < 1/2`, `M(q, q^c) = 0` for all sufficiently large `q` divisible only by primes of `P` (Rohrlich 1984, §3, Proposition 1, p.401–402);
- `rohrlichCount_lt`: for every `d` and `s` with `1/2 < d < 3/5` and `5d/2 − 1 < s < 1/2`, `M(q, q^d) < q^s` for all sufficiently large such `q` (Rohrlich 1984, §3, Proposition 2 and its proof, pp.402–407, ROHRLICH84 lines 896–900).

Proof route: Ridout's inequality `∏_{p ∈ P}|u − vγ_p|_p > k·max(|u|, |v|)^{−κ}` for algebraic `γ_p`, `κ > 2`, from DiophantineApproximationAndTranscendence §2.3 (or §2.1 in two variables), extended from coprime pairs to all pairs; part one with `γ_p = α_p(β_p + jα_p)⁻¹` and `c < 1/κ < 1/2`; part two by covering the box with squares of side `q^c`, part one, the rational-line case and a Dirichlet-principle subdivision along a line. Jia's restatement prints the modulus `Z_p` instead of `qZ_p` and the box bound `q⁻¹` instead of `q^c` (Jia, §4, pp.18–20); Rohrlich's text is the reference. *Needs:* DiophantineApproximationAndTranscendence §§2.1, 2.3; Mathlib `PadicInt`, `Set.ncard`.

API:

- Invariance under rescaling `(α_p, β_p) ↦ (γ_pα_p, γ_pβ_p)` with `γ_p ∈ Z_p×`.
- Monotonicity in `t` and in the divisibility of `q`.
- The set counted is finite (a bounded box).

**Checks.**

- `P = {p}`, rational direction `(a, b) ∈ Z²`: `|ub − va|` is a nonzero integer divisible by `q`, so it is at least `q`, while `|ub − va| ≤ (|a| + |b|)q^d`; hence `M(q, q^d) = 0` for any fixed `d < 1` and large `q`.
- With modulus `Z_p` in place of `qZ_p`, every pair in the box off the direction line counts, `M(q, q^c)` grows like `q^{2c}`, and part one fails.
- `c ≤ 0`: the box contains only `(0, 0)`, excluded by the nonvanishing condition, so `M = 0` for every `q`.
- `d = 11/20`, `s = 7/16`: `5d/2 − 1 = 3/8 < 7/16 < 1/2`, an admissible pair.

### 6.2 The Galois-average limit

Prove: let `K` be imaginary quadratic, `φ` as in §0.1, `P` a finite set of primes, `L_P` the union of the ring class fields of conductor divisible only by primes of `P`, and `ρ` ranging over the characters of finite order of `Gal(L_P/K)` with `W(φρ) = +1`. Partition by the rational support `R` of the conductor and write `η = φρ`, `f(η) = (N cond η)^{1/2}`, `κ_R` the quadratic character induced to a modulus containing `R`, extended by zero on `R`. As `f(η) → ∞` within a fixed support, the average of `L(1, η^σ)` over the `K`-embeddings `σ` of the value field tends to `2L(1, κ_R) ≠ 0`; there are finitely many supports (Jia, Theorem 1 p.2; §2, (2.20)–(2.29), pp.6–7; Propositions 1–2, pp.7–8; Main Lemma 2, pp.13–14; Lemma 3, pp.17–18; Proposition 5, pp.18–20; Rohrlich 1984, §1, pp.386–392, and §4, p.407). Proof route: the sign-positive approximate functional equation with `A = √|disc K|/(2π)`; the rational-ideal part tends to `2L(1, κ_R) = 2L(1, κ_K)∏_{q ∈ R}(1 − κ_K(q)/q)`; each `η^σ` has the same conductor and root number (Jia, (2.13)–(2.18), pp.5–6); the non-conjugation-stable ideals with nonzero averaged character are counted through the trace-of-roots-of-unity criterion, the class-group reduction with `a_0^h = (w_0)` and the retained `h`-th root, and §6.1, giving `N_η(f^a) = 0` for `a < 1` and `N_η(f^b) < f^r` for some `b > 1`, `r < 1/2`; choose `2r < a < 1`, bound the middle sum by `O(f^{r − a/2})` and the tail by ideal counting and the cutoff `exp(−N(a)/(Af))`. Jia's printed tail bound has the wrong sign in the exponent (Jia, (2.43), p.10) and the inverse `n⁻¹` in the rational-principal law before (2.1), p.4; the correct forms are used. *Needs:* §§0.1, 0.3, 6.1; AL.1.6.2 Hecke continuation and functional equation, AL.1.3.5 Explicit local ε-factors; ArithmeticDirichletSeries Layer 5; GlobalNumberFields Layers 9–10; ClassFieldTheory Layer 13; Mathlib `DirichletCharacter.LFunction_apply_one_ne_zero`.

**Checks.**

- `K = Q(√−7)`, support `{5}`: the rational term omits multiples of `5` and the limit is `2L(1, κ_K)(1 + 1/5)`; the unrestricted constant `2L(1, κ_K)` is wrong.
- For `h_K > 1` the `h`-th roots and the coset directions survive; no class-number-one hypothesis is used.
- The estimates are ineffective: no conductor bound for the exceptions is part of the statement.

### 6.3 Galois stability of central vanishing

Prove: for `η = φρ` as in §6.2 and `σ ∈ Aut(ℂ/K)`, `L(η, 1) = 0` implies `L(η^σ, 1) = 0`, where `η^σ(a) = σ(η(a))`. Proof route: let `θ_η` be the weight-two newform with `L(θ_η, s) = L(η, s)` (GL2AutomorphicRepresentationsAndTransfer R17.4.16; ComplexMultiplicationAndExplicitReciprocity §4.2 CM induction and compatible-system comparison); its coefficient conjugate is `θ_{η^σ}`; the algebraic normalised critical value `L(θ_η, 1)/Ω^+` is carried by `σ` to that of `θ_{η^σ}` (ModularSymbolsPadicLFunctions §§1.2, 4.3), so vanishing is preserved (Jia, p.3, JIA24 lines 96–100, citing Shimura). *Needs:* §0.1; ModularSymbolsPadicLFunctions §§1.2, 4.3; GL2AutomorphicRepresentationsAndTransfer R17.4.16.

**Checks.**

- `σ` is complex conjugation: `η^σ = η̄`, and `L(η̄, 1) = L(η, 1)` by §1.4, consistent with the statement.
- Nonvanishing is not transported by a transcendental period alone; the algebraic normalisation is essential.
- `η` and `η^σ` have the same conductor, so the family of §6.2 is stable under `σ`.

### 6.4 Correct-sign central values are almost always nonzero

Prove: for `φ` as in §0.1 and a fixed anticyclotomic `ν` of odd finite order, all but finitely many `χ` in the `p`-anticyclotomic family with `W(φνχ) = +1` satisfy `L(φνχ, 1) ≠ 0`, and then `L_S(φνχ, 1) ≠ 0` for every finite `S`; the same holds for `φ̄νχ` (Jia, Theorem 1, p.2, JIA24 line 66; BKO, §6.0.1, p.961). Proof route: `ρ = νχ` runs over characters of `Gal(L_P/K)` with `P = {p} ∪` the primes below the conductor of `ν`; if `L(η, 1) = 0` then by §6.3 every term of the Galois average vanishes, contradicting §6.2 for large conductor; finitely many `χ` have bounded conductor; §0.3 passes to deleted values; `L(φ̄νχ, s) = L(φν⁻¹χ⁻¹, s)` (§0.1). *Needs:* §§0.1, 0.3, 6.2, 6.3; AL.5.1.1 Finite Euler corrections at critical points.

**Checks.**

- Agboola–Howard, proof of Proposition 3.1 and Remark 3.2, p.4 (AH05 lines 141–152): for a CM curve over `Q` and a primitive `χ` of order `p^n`, `n > 0`, `W(χψ) = (−1)^{n+1}W(ψ)`, a forced zero for one parity and Rohrlich's almost-all nonvanishing for the other; the formula fails for the trivial character, which has `c = 0`.
- Wrong-sign characters have value `0` (§1.4); the quantifier ranges over the correct-sign family only.
- The theorem makes no assertion about derivatives.

### 6.5 The parity dichotomy

Prove `centralValue_parity_dichotomy`: let `K` be imaginary quadratic, `ι : K → ℂ`, `p` an odd prime with `pO_K` prime (inert), `v` the prime `pO_K`, `φ` with `IsEquivariantTypeOneZero ι φ` unramified at `v`, and `ν` an anticyclotomic character of odd finite order unramified at `v`; fix uniformizers `ϖ`. There is `ε ∈ {±1}` such that for every `χ` with `IsPAnticyclotomic p v χ` and `c = conductorExponent v χ`: if `(−1)^c = −ε` then `HasCentralValue (φνχ) ϖ 0`; and the set of `χ` with `(−1)^c = ε` for which no nonzero central value exists is finite. Here `ε = W(φν)`. Proof route: §1.3 gives `W(φνχ) = (−1)^c W(φν)`; §1.4 gives the zeros; §6.4 gives the nonvanishing; §0.3 identifies `HasCentralValue` with the continued value. The sign `ε` is determined, because the family contains infinitely many characters of each parity of `c` (§0.2). By `L(φ̄νχ, s) = L(φν⁻¹χ⁻¹, s)` the statement holds verbatim for the characters `φ̄νχ` used in BKO §§3 and 6. No hypothesis `p ∤ h_K` or `p ≥ 5` is needed. *Needs:* §§0.1–0.3, 1.3, 1.4, 6.4.

**Checks.**

- `K = Q(√−7)`, `p = 5`, `φ` canonical, `ν = 1`: `ε = +1`; `χ` of order `5` (`c = 2`) has almost always nonzero value; `χ` of order `25` (`c = 3`) has value `0`.
- `p = 3`, `K = Q(√−7)` (`3` inert since `(−7/3) = (2/3) = −1`): the statement applies; `p = 2` is excluded since the family would contain characters of even order.
- If `φ` were ramified at `p`, the unitary value at `p` is undefined and the parity factor can change; the hypothesis `φ` unramified at `v` is used.
- Taking `ε` of the wrong sign makes both clauses fail: all `χ` of parity `ε` would need nonzero values while they vanish.

### Examples

Worked parity table for `K = Q(√−7)`, `p = 5`, canonical `φ`, `ν ∈ X_{23}`: `W(φ) = W(φν) = +1`; orders `1, 5, 25, 125` of `χ` have `c = 0, 2, 3, 4` and signs `+1, +1, −1, +1`; the `c = 3` values vanish and almost all others do not.

### Dependencies

Layers 0 and 1; DiophantineApproximationAndTranscendence §§2.1, 2.3; ArithmeticDirichletSeries Layer 5; AL.1, AL.5; ModularSymbolsPadicLFunctions §§1.2, 4.3; GL2AutomorphicRepresentationsAndTransfer R17.4.16; ComplexMultiplicationAndExplicitReciprocity §4.2; GlobalNumberFields Layers 9–10; ClassFieldTheory Layer 13.

## Downstream consumers

AnticyclotomicLocalUnits consumes the integral class and its reciprocity (§§2.7–2.10), the towers, splitting and Lubin–Tate comparison (Layer 3), the forced zeros (§1.4), the unit theorem and witness (§§5.4–5.5) and the scalar/tensor comparison (§5.7); it owns the `ξ_ν` projection, the `Δ`-averaging, derivatives and signed kernels, and must compare its native derivative with the scalar value. InertAnticyclotomicCMMainConjecture consumes the central nonvanishing and parity dichotomy (§§6.4–6.5) and the period laws (§2.10). The CM continuations of ModularIwasawaMainConjecturesPartII consume Kato's theta function, elliptic units and the reciprocity law (§§2.1–2.6). The scalar/tensor comparison applies only with unramified coefficients (§5.7).

## Worked examples

Take `K = Q(√−7)`, `p = 5`, the canonical character with conductor supported at `7`, and `l = 23`. The prime `2` splits and `(−7/5) = −1`, so `5` is inert, `h_K = 1`. An auxiliary character of order `23` has field layer of degree `23` and conductor `23²`, ramified at both primes over `23`, so both local factors are `1`. The inert Frobenius at `5` is `[−5]`, and `Φ_0/Φ` has degree `24`. Finis's discriminant factor `7^{1/4}` has `5`-adic valuation `0`. A `p`-character of order `5` has `c = 2` and sign `+1`; of order `25`, `c = 3`, sign `−1` and central value `0`. Group-algebra evaluation sends `[g]` with `ν(g) = ζ_23` to `ζ_23`, not `ζ_23⁻¹`. Changing `ω` by `2` fixes the class and halves the scalar; `pω` is not allowed. The `p`-deleted trivial-character factor `6/5` has valuation `−1`. For scalar/tensor descent, `Φ_n` totally ramified and `U` unramified meet in `Φ`, so `Φ_n ⊗_Φ U` embeds in `C_5`; for `U = Φ_n` it does not.

## References

- **BKO21**: Ashay A. Burungale, Shinichi Kobayashi and Kazuto Ota, [Rubin’s conjecture on local units in the anticyclotomic tower at inert primes](https://authors.library.caltech.edu/records/8svwt-jn031/files/annals.2021.194.3.8.pdf?download=1), Annals of Mathematics 194 (2021), 943–966. §2, pp.947–949; §3.0.2, pp.951–953, (3.3)–(3.7); Proposition 3.3, p.953; §3.0.3, Theorem 3.4 and its proof, (3.8)–(3.9), pp.953–954; §6.0.1, p.961.
- **KATO04**: Kazuya Kato, [p-adic Hodge theory and values of zeta functions of modular forms](https://www.numdam.org/article/AST_2004__295__117_0.pdf), Astérisque 295 (2004), 117–290. Proposition 1.3, pp.121–122; §3.8, pp.138–140; §15.3–15.9, pp.251–260.
- **FINIS06**: Tobias Finis, [Divisibility of anticyclotomic L-functions and theta functions with complex multiplication](https://annals.math.princeton.edu/wp-content/uploads/annals-v163-n3-p02.pdf), Annals of Mathematics 163 (2006), 767–807. §1, pp.767–770; Proposition 2.4, p.780; Corollary 2.3, p.778; Propositions 3.4, 3.6, 3.7, pp.786–789; proof of Theorem 1.1, pp.793–795; Theorem 4.1 and Lemmas 4.2–4.7, pp.795–807.
- **JIA24**: Haijun Jia, [On L-functions of Hecke characters and anticyclotomic towers](https://arxiv.org/abs/2412.05867v1), arXiv:2412.05867v1 (2024); published in Acta Arithmetica 224 (2026), 99–116. Locators refer to arXiv v1.
- **ROHRLICH84**: David E. Rohrlich, [On L-functions of elliptic curves and anticyclotomic towers](https://gdz.sub.uni-goettingen.de/download/pdf/PPN356556735_0075/LOG_0028.pdf), Inventiones Mathematicae 75 (1984), 383–408. §1, pp.386–392; §3, pp.401–407; §4, p.407.
- **ROHRLICH-NOTES**: David E. Rohrlich, [Root numbers](https://math.bu.edu/people/rohrlich/pcmi.pdf), Park City lecture notes. Proposition 1.5, p.14; Lecture 2 §§5.1–5.2, pp.34–36.
- **GREENBERG83**: Ralph Greenberg, [On the Birch and Swinnerton-Dyer conjecture](https://gdz.sub.uni-goettingen.de/download/pdf/PPN356556735_0072/LOG_0016.pdf), Inventiones Mathematicae 72 (1983), 241–265. §1, pp.246–247.
- **QUEYRUT74**: Jacques Queyrut, [Sur l’équation fonctionnelle des séries L d’Artin pour des caractères réels](https://www.numdam.org/item/MSMF_1974__37__133_0.pdf), Mémoires de la SMF 37 (1974), 133–135. The theorem and local formula on p.135.
- **RUBIN87**: Karl Rubin, [Local units, elliptic units, Heegner points and elliptic curves](https://gdz.sub.uni-goettingen.de/download/pdf/PPN356556735_0088/LOG_0026.pdf), Inventiones Mathematicae 88 (1987), 405–422. Lemma 3.1, p.409; §3, pp.409–410.
- **AH05**: Adebisi Agboola and Benjamin Howard, [Anticyclotomic Iwasawa theory of CM elliptic curves II](https://arxiv.org/abs/math/0401124), Mathematical Research Letters 12 (2005), 611–621; arXiv:math/0401124. Proposition 3.1 and Remark 3.2, p.4 of the arXiv version.
