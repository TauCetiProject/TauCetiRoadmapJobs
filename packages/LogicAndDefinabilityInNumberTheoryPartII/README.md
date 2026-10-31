# Roadmap: logic and definability in number theory, Part II

**Summary.** This roadmap continues *Logic and definability in number theory* (LogicAndDefinabilityInNumberTheory), which stops at interpretations on definable quotients (its §§0.1–0.4) and never treats finitely generated fields as a class. Starting from Rumely's uniform arithmetic of global fields and Poonen's uniform definitions of constants and algebraic dependence, it builds Dittmann and Pop's uniform first-order definition of the geometric prime divisors of finitely generated fields: anisotropic "nice" Pfister forms, the cohomological local–global principles of Jannsen, Kerz–Saito and Kato that detect them at prime divisors, a patch-compactness argument in the valuation spectrum, anisotropy sets whose multiplicative stabilizers are valuation rings, and, in Kronecker dimension two, Pop's shifted-ring construction from cubic or quadratic symbols. With these formulas it defines finite normalizations, proves that every infinite finitely generated field is bi-interpretable with the ring ℤ, and ends with the theorem that every finitely generated field `K` is characterized among all finitely generated fields by one sentence in the language of rings. The end theorems are unconditional except for fields of characteristic two and Kronecker dimension above three, where resolution of singularities above 𝔽₂ is a hypothesis.

## Scope and ownership

This roadmap owns:

- the hypothesis `H_d`, the notion of a geometric prime divisor and the uniform definable families with empty failed fibres (Layer 0); the existence of Albanese varieties over an arbitrary field, which Poonen's twisting arguments need and which no other roadmap states beyond curves (0.8a);
- Rumely's uniform definitions in global fields, Pop's sentences fixing the Kronecker dimension, Poonen's diagonal-form lemmas, his elliptic constructions, the characteristic sentence, the uniform constant field, uniform algebraic dependence and the uniform family of relatively closed global subfields (Layer 0);
- the three cohomological local–global principles that no other roadmap states — Kerz–Saito's with `ℤ/2` coefficients over finite fields and henselian discrete valuation rings, Jannsen's in characteristic two, and Kato's two-dimensional principle with prime coefficients — and the reduced-norm test for cubic and quadratic symbols (Layer 1);
- nice Pfister presentations, test presentations and their abundance (Layer 2), prime-divisor detection and the compact limiting detector (Layer 3), anisotropy sets, discrete balls and stabilizers (Layer 4), the uniform divisor formulas in every Kronecker dimension (Layer 5);
- definable finite normalizations, full geometric flags with an arithmetic terminal place and the height-one intersection theorem for normal Noetherian domains (Layer 6);
- Aschenbrenner–Khélif–Naziazeno–Scanlon's arithmetic bi-interpretation of infinite finitely generated domains, the fraction-field transfer and the bi-interpretability of infinite finitely generated fields with ℤ (Layer 7);
- the passage from bi-interpretability to a single characterizing sentence, the finite-field sentences and the final theorem (Layer 8).

It leaves to named owners, and imports without restating:

- **LogicAndDefinabilityInNumberTheory** §0.1 (interpretations on definable quotients, including quotients by definable ideals), §0.2 (semantics and composition of interpretations), §0.3 (fraction fields as interpreted structures) and §0.4 (arithmetic semantics bridges). Definable homotopy of interpretations and parametric bi-interpretation are requested from its §0.2 as gap:biinterpretation-homotopy.
- **QuadraticFormInvariantsPartII** §1.1 (quadratic Pfister forms in every characteristic), §1.5 (isotropy equals hyperbolicity), §§3.1 and 3.7–3.9 (coefficient groups, the Pfister invariant, its naturality and the invariant-zero criterion), §§4.1–4.3 (unit reduction, principal-unit and independent-value criteria over henselian fields of arbitrary rank), §5.6 (Tsen–Lang), §5.7 (Kronecker dimension, constant field and its strict drop under nontrivial valuations), §6.3 (Jannsen's Hasse principle for `ℤ/2` coefficients away from characteristic two), §6.5 (Dittmann–Pop's dimension theorem for unit Pfister forms) and §7.2 (patch openness of henselian isotropy loci). The Lean definition `kroneckerDimension` of this roadmap restates the notion of its §5.7 on pinned carriers so that the headline theorems are statable.
- **LocalFieldsRamificationPartII** §GF.1 (henselization of a valued field, normalization and prolongations) and §GF.5 (composed valuations, coarsenings and the Abhyankar inequality).
- **AlgebraicModuliForArithmeticGeometry** §7.5 (finite normalization of reduced finite-type algebras with generic étaleness, `ArithmeticCoefficients.valuation_prolongation_integrality` and `ArithmeticCoefficients.root_coefficient_descent`).
- **AdicCoefficientsAndComparisonsPartII** §PA.6.8 and §PA.6.10 (Gabber's prime-to-ℓ alterations over a one-dimensional base and the odd-degree regular alteration of a projective flat model over a henselian non-dyadic discrete valuation ring).
- **ArithmeticGaloisDuality** §R02.4.4 (cohomological dimension of Galois groups of number fields with restricted ramification) and §R02.3.2 (class formation of a global function field). The cyclic Hasse norm theorem for global function fields is requested from its §R02.3.2 as gap:function-field-cyclic-hasse-norm.
- **FunctionFieldArithmetic** §5.8 (degree-sensitive Chebotarev for global function fields).
- **AbelianSchemesAndArithmeticModuli** §§A3.1, A6.5 (isogenies and Poincaré complete reducibility) and **NeronModelsAndSemistableAbelianVarieties** §5.1 (Néron–Ogg–Shafarevich, isogeny invariance of good reduction).
- **WeilConjectures** WC.5 (*The all-extension Weil estimate*; *Curve RH from the surface bound*).
- **LefschetzPencilsAndVanishingCycles** §§3.4–3.5 (existence of Lefschetz pencils and their descent to finite fields), **DeligneWeightsAndPurity** §§7.12 and 7.15, **MotivesAndAlgebraicCycles** §0.5b, **KTheoryFiniteLocalFields** §§3.0–3.0a and **SchemeAndStackFoundations** §§0.12, 0.20, 2.15, as inputs of the local–global principles of Layer 1.
- On main: **JacobianChallenge** Layer F (the Albanese property of a curve); **AlgebraicCurves** Layers 0, 2, 6 and 12; **Chebotarev** Layer 10; **GlobalNumberFields** Layers 1 and 6; **GlobalQuadraticForms** §5.5; **RealAlgebraicGeometry** Layer 1 (*Ordered real-closure existence*); **ClassFieldTheory** Layers 10 and 13; **EllipticCurves** Layers 1, 3, 4, 5 and 6.
- Mathlib and Tau Ceti at the pins, as listed in the supplier contracts.

Functional transcendence for Shimura varieties shares only general logic with this roadmap and is not part of it. The ring-theoretic quasi-finite axiomatizability of non-domains (fibre products, nilpotents) is not part of this roadmap; only integral domains and fields are treated.

## Conventions

- **Fields.** A *finitely generated field* is a field generated as a field by finitely many elements over its prime field, Mathlib's `Field.FG` (a finite set whose generated subfield is everything); it need not be finitely generated as a ring. The *constant field* `κ` of a field `K` is the relative algebraic closure of the prime field in `K`. The *Kronecker dimension* is `δ(K) = trdeg(K/prime field) + 1` in characteristic zero and `trdeg(K/prime field)` in positive characteristic (QuadraticFormInvariantsPartII §5.7; the Lean `kroneckerDimension`, valued in cardinals). Thus `δ(𝔽_q) = 0`, `δ(ℚ) = δ(𝔽_q(t)) = 1`, `δ(ℚ(s, t)) = δ(𝔽₂(s, t, u)) = 3`. A *global field* is a finitely generated field of Kronecker dimension one.
- **Resolution above 𝔽₂.** `RS(𝔽₂)` is the conjunction of two geometric statements (Jannsen, Definition 4.18 with `L = 𝔽₂`): every integral proper 𝔽₂-variety admits a proper birational morphism from a smooth 𝔽₂-variety, and every smooth affine 𝔽₂-variety `U` admits an open immersion into a smooth projective 𝔽₂-variety whose complement is a simple normal crossings divisor. It is never replaced by an uninterpreted flag.
- **The hypothesis `H_d`.** For an integer `d`, `H_d(K)` means: `K` is finitely generated, `δ(K) = d`, and `RS(𝔽₂)` holds if `char K = 2` and `d > 3`. No resolution hypothesis is ever imposed for `d ≤ 3` or for `char K ≠ 2`.
- **Valuations.** Valuations are compared through their rings (`ValuationSubring`) and are written additively with `w(0) = ∞` in prose. Tau Ceti's integer order `TauCeti.Place.ord` takes the junk value `0` at `0`; every translation to it carries a nonzero hypothesis or an explicit zero branch. A *prime divisor* of `K` with `δ(K)` finite is a discrete rank-one valuation `w` with `δ(Kw) = δ(K) − 1`; it is *geometric* if `char Kw = char K` and *arithmetic* otherwise (Dittmann–Pop, §1, p. 2). Henselizations, not completions, are used in all formulas; `K_w` denotes the henselization.
- **Pfister forms.** For nonzero slots `a = (a_d, …, a₀)` the form `q_a` is Dittmann–Pop's (§3, p. 6): in characteristic different from two `q_a = ⟨⟨a_d⟩⟩ ⊗ ⋯ ⊗ ⟨⟨a₀⟩⟩` with `⟨⟨a⟩⟩ = x² − a y²`; in characteristic two the outer factors `⟨⟨a_i⟩⟩_b = ⟨1, −a_i⟩_b`, `i ≥ 1`, are bilinear and the last factor is the quadratic `x² + xy + a₀ y²`. In the notation of QuadraticFormInvariantsPartII §1.1, `q_a ≅ ⟨⟨a_d, …, a₁⟩⟩_b ⊗ [1, c]` with `c = (1 − a₀)/4` when `2 ≠ 0` and `c = a₀` when `2 = 0`. The form has `2^{d+1}` variables. Pop 2002 and Poonen use the plus convention `⟨⟨a⟩⟩ = x² + a y²`; every statement below quantifies over all slots, so only witnesses change, and each witness names its convention.
- **Diagonal forms.** For `n ≥ 2`, `⟨a₁, …, a_m⟩_n = Σ a_i x_iⁿ` and `⟨⟨a⟩⟩_n = ⟨1, a, …, a^{n−1}⟩_n`, tensor products being diagonal (Poonen, Appendix A, p. 12). Write `n_K = 3` if `char K = 2` and `n_K = 2` otherwise.
- **Formulas and uniformity.** Formulas are first-order formulas of Mathlib's `FirstOrder.Language.ring` (symbols `+`, `·`, `−`, `0`, `1`; no inverse symbol), interpreted in a field through `FirstOrder.Ring.compatibleRingOfRing`. A *uniform family* on a class `C` of fields is one formula `Φ(x; y₁, …, y_m)` with a fixed natural number `m`; its fibres are `Φ(K; b) = {x ∈ K : K ⊨ Φ(x; b)}` for `b ∈ K^m`. A family *exhausts* a collection of subsets of each `K ∈ C` when each member is a fibre, and *has empty failed fibres* when every fibre is a member or empty. The intersection of an empty family of subsets of `K` is `K`, a union over an empty family is empty.
- **Interpretations.** Interpretations, their semantics and their composition are LogicAndDefinabilityInNumberTheory's (§§0.1–0.2), with parameters; *bi-interpretable* means parametrically bi-interpretable, with both comparison isomorphisms definable (the notion requested as gap:biinterpretation-homotopy). A *finitely generated structure* in a language is one generated by finitely many elements together with the constants.
- **Universes.** Fields quantified in one statement live in one universe; the class of finitely generated fields of a universe contains a copy of every finitely generated field.
- **Page numbers.** Dittmann–Pop pages are those of the author version of 27 April 2023 (arXiv v2); Poonen pages and numbering are those of arXiv v1 (in that version the relative dependence lemma is Lemma 5.2); Pop 2002 numbering is arXiv v1 (its Theorem 1.4 is the published theorem Poonen cites as Theorem 2.3's source); Jannsen's finite-field theorem is Theorem 0.6 of arXiv v2 and Theorem 0.10 of the published paper; AKNS and Kerz–Saito numbering is that of the arXiv versions listed in the references; Pop 2017 and Rumely pages are the published pages.

## Exact supplier contracts

### From Mathlib

- Logic: `FirstOrder.Language.ring`, `FirstOrder.Ring.compatibleRingOfRing`, `FirstOrder.Language.Sentence.Realize`, `FirstOrder.Language.Formula.Realize`, `Set.Definable`. Mathlib supplies syntax, semantics and definability with parameters; it has no interpretations, homotopies or bi-interpretations.
- Fields: `Field.FG` (finitely many generators of the field, not of the ring), `Algebra.trdeg`, `AlgebraicIndependent`, `IsAlgebraic`, `algebraicClosure` (relative algebraic closure as an intermediate field), `ringChar`, `FiniteField.ringEquivOfCardEq` (two finite fields of equal cardinality are isomorphic; it needs `Fintype` instances, which exact-cardinality witnesses supply).
- Valuations and rings: `ValuationSubring`, `ValuationSubring.ofPrime` (localization of a valuation ring at a prime, the coarsening), `IsDiscreteValuationRing`, `IsLocalRing.ResidueField`, `HenselianLocalRing`, `LocalSubring.exists_le_valuationSubring` (Chevalley extension), `integralClosure`, `IsIntegrallyClosed`, `IsFractionRing`, `Algebra.FiniteType`.
- Quadratic forms: `QuadraticMap.Anisotropic`; isotropic means not anisotropic.

### From Tau Ceti

- `TauCeti.ValuationSpectrum.patchTopology`, `TauCeti.ValuationSpectrum.compactSpace_patchTopology` and `TauCeti.ValuationSpectrum.isClopen_patchTopology_basicOpen`: for a commutative ring `A` the valuation spectrum `Spv A` with its patch topology is compact and every basic open `{v : v(f) ≤ v(s) ≠ 0}` is clopen. For a field this is the Riemann–Zariski space including the trivial valuation; no rank-one subspace replaces it.
- `TauCeti.Place`, `TauCeti.Place.integers`, `TauCeti.Place.ord`: a place of a function field `F/k` is a surjective `ℤᵐ⁰`-valued valuation trivial on `k`; its integers form a valuation subring and `ord` is the integer order with `ord 0 = 0`.
- `TauCeti.Place.exists_ne_zero_forall_mem_ord_eq`: for a finite set of places and integers `r_P` there is a nonzero `g` with `ord_P g = r_P` on that set.
- `TauCeti.Place.exists_ord_eq_neg_and_forall_ne_ord_nonneg`: for a function field `F/k` with `k` relatively integrally closed in `F`, a place `P` and `n ≥ 2g`, there is a nonzero `x` with `ord_P x = −n` and `ord_Q x ≥ 0` at every other place.
- `TauCeti.Place.exists_forall_mem_valuation_sub_le_and_forall_mem_integers`: for a set `S` of places other than the set of all places and a finite `s ⊆ S`, there is `x` approximating prescribed targets to prescribed orders on `s` and integral at every place of `S ∖ s` (strong approximation; same function-field hypotheses).

### From TauCetiRoadmap.LogicAndDefinabilityInNumberTheory

§0.1 supplies interpretations of a structure in another with a finite parameter tuple, a definable domain, a definable equivalence and definable invariant symbol graphs, with no definable choice of representatives; §0.2 the semantic equivalence of a formula with its translation, and composition; §0.3 the fraction field of a definable domain as pairs modulo cross multiplication; §0.4 the arithmetic semantics bridges. These are used for residue fields of definable valuation rings (quotient by a definable ideal), for finite extensions given by structure constants (0.4 of this roadmap) and for fraction fields.

What LogicAndDefinabilityInNumberTheory must provide (gap:biinterpretation-homotopy): for interpretations `f, g` of a structure in another, definable homotopy (a definable isomorphism between the two interpreted copies), and parametric bi-interpretability (interpretations both ways whose two composites are definably homotopic to the identity interpretations), with closure under composition.

### From TauCetiRoadmap.QuadraticFormInvariantsPartII

§1.1 `q_a` as a quadratic Pfister form with the characteristic-dependent last factor; §1.5 isotropic Pfister forms are hyperbolic; §3.1 the groups `H^{i+1}(F) = H^{i+1}(F, ℤ/2(i))`, Kato's group in characteristic two; §3.7 the invariant `e(q_a) ∈ H^{d+1}(F)`; §3.8 its naturality under every field extension (Dittmann–Pop Fact 3.1(2)); §3.9 `q_a` is isotropic exactly when `e(q_a) = 0` (Fact 3.1(1)); §4.1 unit reduction; §4.2 a unit form with a principal-unit outer slot is isotropic (Proposition 3.2(1)); §4.3 the independent-value criterion (Proposition 3.2(2)); §5.6 Tsen–Lang (`C_i` ascent; finite fields are `C₁`); §5.7 the Kronecker dimension, the constant field, invariance under algebraic extensions and the strict drop `δ(Fw) < δ(F)` for nontrivial `w`; §6.3 Jannsen's injectivity `H^{d+2}(F, ℤ/2) → ⊕_v H^{d+2}(F_v, ℤ/2)` for a function field `F` in `d` variables over a global field `k₁` of characteristic different from two that is separably closed in `F`; §6.5 the dimension theorem (Proposition 3.2(3)) with no finite-generation hypothesis; §7.2 for every quadratic form over `F` the set of valuations at whose henselization it is isotropic is patch open (Lemma 3.9(2)).

### From TauCetiRoadmap.LocalFieldsRamificationPartII

§GF.1: henselizations of valued fields and their embeddings under extension and coarsening; for a finite extension, the prolongations of a valuation ring correspond to the maximal ideals of the integral closure. §GF.5: the composed valuation `V ∘ R` as the inverse image of a residue valuation ring, its value-group sequence with convex kernel, recovery of a coarsening as a localization (`ValuationSubring.ofPrime`), and the Abhyankar inequality.

### From TauCetiRoadmap.AlgebraicModuliForArithmeticGeometry

§7.5: `arithmetic_normalization_genericallyEtale` (finite normalization of a reduced finite-type algebra over a field or an excellent base in every finite extension, generically étale for separable function-field extensions); `ArithmeticCoefficients.valuation_prolongation_integrality` (the integral closure of an intersection of valuation rings in a finite extension is the intersection of all their prolongations, with no assumption on the fraction field of the intersection); `ArithmeticCoefficients.root_coefficient_descent` (roots with multiplicities in a prolongation give coefficients in the base valuation ring).

### From TauCetiRoadmap.AdicCoefficientsAndComparisonsPartII

§PA.6.10: for an excellent henselian discrete valuation ring `R` of residue characteristic different from two and an integral projective flat `R`-scheme with nonempty generic fibre, an odd-degree finite extension of the fraction field and an odd-degree projective alteration by a regular integral scheme projective over the normalized base. §PA.6.8, Gabber's prime-to-ℓ theorem over a one-dimensional base, is its input and an input of 1.3.

### From TauCetiRoadmap.ArithmeticGaloisDuality

§R02.4.4: `cd_ℓ(G_{K,S}) ≤ 2` for a number field `K`, a set `S` of places and a prime `ℓ` invertible on `S` when `ℓ` is odd or `K` is totally imaginary; passing to the limit over `S`, a totally imaginary number field has `cd₂ ≤ 2`. §R02.3.2: the class formation of a global function field, reciprocity and norm groups.

What ArithmeticGaloisDuality must provide (gap:function-field-cyclic-hasse-norm): the cyclic Hasse norm theorem for a cyclic extension `L/K` of global function fields, that an element of `Kˣ` is a norm from `L` exactly when it is a local norm at every place of `K`, stated in §R02.3.2 next to the class formation.

### From the other earlier roadmaps

- FunctionFieldArithmetic §5.8, the degree-sensitive Chebotarev theorem: for a finite Galois extension of global function fields and a conjugacy class compatible with the constant-field Frobenius, places of every large compatible degree with that Frobenius exist; in particular infinitely many places split completely, outside any finite set.
- AbelianSchemesAndArithmeticModuli §A3.1 (isogenies) and §A6.5 (Poincaré complete reducibility). NeronModelsAndSemistableAbelianVarieties §5.1: the Néron–Ogg–Shafarevich criterion, so that good reduction at a place is invariant under isogeny.
- WeilConjectures WC.5: *The all-extension Weil estimate* (`#W(𝔽_{qⁿ}) = q^{n dim W}(1 + o(1))` for a geometrically integral variety) and *Curve RH from the surface bound* (the Weil bound for smooth projective curves).
- LefschetzPencilsAndVanishingCycles §3.4 (existence of Lefschetz pencils after a Veronese embedding) and §3.5 (descent of pencils to a finite field).
- DeligneWeightsAndPurity §§7.12 and 7.15, MotivesAndAlgebraicCycles §0.5b, KTheoryFiniteLocalFields §3.0 (Milnor symbols, residues, the Bloch–Gabber–Kato isomorphism) and §3.0a (norm residue isomorphism), SchemeAndStackFoundations §§0.12, 0.20 and 2.15: the inputs of Layer 1, used exactly as QuadraticFormInvariantsPartII §6.3 uses them.

### From the roadmaps on main

- AlgebraicCurves: Layer 0 (places of a function field in one variable are its valuation rings over the constants; weak approximation in the equality form; existence of places; `𝒪_P` is a discrete valuation ring); Layer 2 (affine models, the Dedekind bridge); Layer 6 (the fundamental identity `Σ e f = [F′ : F]` without perfectness, and every place has finitely many prolongations); Layer 12 (closed points of the normal proper curve correspond to places).
- Chebotarev Layer 10, `hasDirichletDensity_frobeniusPrimeSet`: in a finite extension of number fields infinitely many primes split completely, outside any finite set.
- GlobalNumberFields Layer 1, `GlobalNumberFields.weakApproximation_denseRange` (finite and archimedean weak approximation with signs), and Layer 6, `denseRange_algebraMap_finiteAdeleRing` (strong approximation with the archimedean places omitted).
- GlobalQuadraticForms §5.5: Hasse–Minkowski isotropy over number fields, with real places; hence a quadratic form of rank at least five over a totally imaginary number field is isotropic, and every sum of squares in a number field is a sum of four squares.
- RealAlgebraicGeometry Layer 1, *Ordered real-closure existence*: every proper field preordering lies in an ordering; real closures at orderings exist.
- ClassFieldTheory Layer 10 (the Brauer–Hasse–Noether sequence) and Layer 13 (`cyclicHasseNorm`, the cyclic Hasse norm theorem over number fields).
- EllipticCurves Layer 1 (the formal group and `Ê(𝔪) ≅ E₁(K)`), Layer 3 (the Hasse bound), Layer 4 (reduction and the filtration `E₁ ⊆ E₀ ⊆ E`), Layer 5 (quadratic twists) and Layer 6 (Mordell–Weil).

## How to read the build

Layer 0 makes the arithmetic of finitely generated fields first-order: global fields (Rumely), the Kronecker dimension, constants, algebraic dependence and the relatively closed global subfields, ending with the relative constant field over which a field becomes a function field in one variable. Layer 1 states the cohomological local–global principles. Layer 2 constructs nice Pfister presentations and shows that every geometric prime divisor has many anisotropic test forms. Layer 3 turns anisotropy into a prime divisor, first by the local–global principles and then by patch compactness and coarsening. Layer 4 converts anisotropy into finite unions of discrete balls whose stabilizers are valuation rings, and isolates each divisor. Layer 5 assembles the uniform divisor formula in every Kronecker dimension, Pop's construction supplying dimension two. Layer 6 defines finite normalizations by intersecting divisor rings and, in characteristic zero, composite valuations with an arithmetic terminal place. Layer 7 interprets ℤ and proves bi-interpretability, and Layer 8 converts it into a single sentence. The *Needs:* lines give the build order item by item. The README is the roadmap; [Suggested.lean](Suggested.lean) states the headline theorems that are statable at the pins.

## Layer 0: uniform arithmetic predicates in finitely generated fields

This layer makes the arithmetic of finitely generated fields first-order. It defines the class of fields on which the divisor formulas work, the notion of geometric prime divisor and of uniform families, and then proves the uniform definitions of Rumely, Pop and Poonen on which every later formula is built.

### 0.1 Kronecker dimension, constant field and the hypothesis `H_d`

Define `kroneckerDimension K = Algebra.trdeg (⊥ : Subfield K) K + (1 if ringChar K = 0 else 0)`, valued in cardinals; this restates on pinned carriers the Kronecker dimension of QuadraticFormInvariantsPartII §5.7 (Dittmann–Pop, §1, p. 1; Poonen, Definition 2.1, p. 3). The constant field `κ` of `K` is `algebraicClosure (⊥ : Subfield K) K`. For an integer `d`, define `H_d(K)` as in the Conventions: `Field.FG K`, `δ(K) = d`, and `RS(𝔽₂)` when `char K = 2` and `d > 3` (Dittmann–Pop, §1, hypothesis (H_d), p. 2; resolution above 𝔽₂ as in §2, p. 5).

API:

- For a finitely generated field the Kronecker dimension is a natural number; it is invariant under finite extensions and equals the Krull dimension of every finitely generated subring with fraction field `K` (AKNS, §3.1, p. 21).
- The constant field of a finitely generated field is a number field in characteristic zero and a finite field in positive characteristic; it is relatively algebraically closed in `K`, and `δ(κ) ∈ {0, 1}`.
- For `char K ≠ 2`, `H_d(K)` is equivalent to `Field.FG K ∧ δ(K) = d`; for `char K = 2` and `d ≤ 3` likewise.
- If `K ⊆ L` is a finite extension of finitely generated fields, `H_d(K)` and `H_d(L)` are equivalent.

**Checks.**

- `δ(ℚ(s, t)) = 3`, whereas `δ(ℚ(s)) = 2`, so `ℚ(s)` fails `H_3`; a definition without the characteristic-zero shift would give `ℚ(s, t)` dimension two.
- `δ(𝔽₂(s, t, u)) = 3` and `H_3(𝔽₂(s, t, u))` holds with no resolution premise; `H_4(𝔽₂(s, t, u, v))` requires both clauses of `RS(𝔽₂)`, and finite generation alone does not give it.
- `δ(𝔽₉) = 0` and `δ(ℚ̄) = 1`, although `ℚ̄` is not finitely generated: finite Kronecker dimension does not imply `Field.FG`.
- The constant field of `ℚ(√2, t)` is `ℚ(√2)`, not `ℚ`; that of `𝔽₉(t)` is `𝔽₉`.

*Needs:* Mathlib `Field.FG`, `Algebra.trdeg`, `algebraicClosure`, `ringChar`; QuadraticFormInvariantsPartII §5.7.

### 0.2 Prime divisors and geometric prime divisors

Define `IsGeometricPrimeDivisor O`, for a valuation subring `O` of a field `K`, to mean that `O` is a discrete valuation ring (`IsDiscreteValuationRing`), that its residue field has the characteristic of `K`, and that `δ(residue field) + 1 = δ(K)` (Dittmann–Pop, §1, p. 2). A *prime divisor* drops the characteristic condition; an *arithmetic* prime divisor is one whose residue characteristic differs from `char K`.

API:

- For a finitely generated field `K` and any valuation subring `O ≠ K`, `δ(residue field) ≤ δ(K) − 1`, with equality exactly when `O` is a prime divisor; in particular equality forces `O` to be a discrete valuation ring of rank one (Dittmann–Pop, §1, p. 2, by the Abhyankar inequality).
- A geometric prime divisor is trivial on the constant field `κ`, and conversely a prime divisor trivial on `κ` is geometric.
- If `K ⊆ L` is a finite extension of finitely generated fields and `w` is a prime divisor of `L`, then its restriction to `K` is a prime divisor of `K`, geometric when `w` is.
- If `K` is a function field in one variable over a relatively algebraically closed subfield `k` with `δ(K) = δ(k) + 1`, the prime divisors of `K` trivial on `k` are exactly the places of `K/k` (AlgebraicCurves Layer 0), and they are geometric.
- Field isomorphisms transport geometric prime divisors.

**Checks.**

- The `p`-adic valuation ring `ℤ_(p)` of `ℚ` is a prime divisor (residue field `𝔽_p`, `0 = 1 − 1`) but not geometric; `ℚ` has no geometric prime divisor at all.
- The `t`-adic valuation ring of `𝔽_q(t)` and of `ℚ(t)` is a geometric prime divisor: residue `𝔽_q`, respectively `ℚ` with `1 + 1 = 2 = δ(ℚ(t))`.
- On `ℚ(s, t)` the discrete valuation `f ↦ ord_s f(s, eˢ − 1)` has residue field `ℚ` with `δ = 1 ≠ 2`: it is a discrete rank-one valuation that is not a prime divisor, so the dimension clause is not implied by discreteness.
- The trivial valuation ring `K` is not a discrete valuation ring, so it is never a prime divisor.

*Needs:* 0.1; Mathlib `ValuationSubring`, `IsDiscreteValuationRing`, `IsLocalRing.ResidueField`; LocalFieldsRamificationPartII §GF.5 (the Abhyankar inequality); AlgebraicCurves Layer 0.

### 0.3 Uniform definable families with empty failed fibres

For a class `C` of fields and a natural number `m`, a ring formula `Φ(x; y₁, …, y_m)` defines on each `K ∈ C` the fibres `Φ(K; b)`. Define the *guard* of `Φ` by a parameter formula `G(y)` as `Φ ∧ G`, and say `Φ` *defines the family* `𝓕(K)` *with empty failed fibres on `C`* when for all `K ∈ C`, every member of `𝓕(K)` is a fibre and every fibre is a member or empty (Dittmann–Pop, Theorem 1.3, p. 2; Poonen, Definition 3.1, p. 4). Repetitions of a member at several parameters are allowed; `m` and `Φ` do not depend on `K`.

API:

- After the parameters `b` are named, a fibre is `Set.Definable` over `b` in the ring language.
- Guarding: the fibre of `Φ ∧ G` at `b` equals that of `Φ` if `K ⊨ G(b)` and is empty otherwise.
- Filtering: if a property of subsets of `K` (being a field of Kronecker dimension one, being a proper valuation ring, containing a given element) is expressed by a formula `P` in the fibre, the guarded family keeps exactly the members with the property and adds only the empty set.
- Intersections and unions over all fibres of a uniform family are uniformly definable; the intersection over an empty family is `K` and the union is empty.
- Field isomorphisms carry parameter tuples to parameter tuples and fibres to fibres.

**Checks.**

- A formula whose failed fibres are `K` does not define a family of proper valuation rings with empty failed fibres: the universal quantifier over fibres in Layer 6 would then see `K`.
- A false guard gives the empty set, which contains neither `0` nor `1`; the subring axioms therefore exclude it in later filters.
- Naming a fixed tuple recovers Mathlib's `Set.Definable`; a family whose arity grows with `K` is not uniform, even if each member is definable.

*Needs:* Mathlib `FirstOrder.Language.ring`, `FirstOrder.Language.Formula.Realize`, `Set.Definable`, `FirstOrder.Ring.compatibleRingOfRing`.

### 0.4 Bounded finite extensions as interpreted structures

For a field `K`, a natural number `N` and monic `h ∈ K[X]` of degree at most `N`, the field `K(α)` generated by a root `α` of `h` in an algebraic closure is interpreted in `K`, uniformly in the coefficients of `h`: quantify over a monic factor `g` of `h` of degree `e ≤ N` that has no factorization into monic factors of smaller degree (a finite disjunction over degrees with bounded quantifiers), and interpret `K[X]/(g)` on `K^e` with the structure constants of multiplication by `X` (LogicAndDefinabilityInNumberTheory §0.1, the quotient of a definable ring by a definable ideal; AKNS, Lemma 2.11, p. 13, for the uniform interpretability of finite algebras). Iterating gives the composita `K(α)(β)` of bounded degree. Every ring formula over `K(α)` with parameters from `K` and from `K(α)` translates into a ring formula over `K` in the coordinates.

API:

- The interpreted field is `K`-isomorphic to `K(α)`, for every choice of irreducible factor `g` with `g(α) = 0`; different choices of the root of the same irreducible factor give `K`-isomorphic fields.
- The degree of the interpreted field is at most `N`, and is `1` exactly when `h` has a root in `K` among the chosen factor's roots.
- Isotropy over `K(α)` of a quadratic or diagonal form with coefficients in `K(α)` is a ring formula over `K` in the coordinates of the coefficients.
- Composita of at most `r` such extensions have degree at most `N^r` and are interpreted uniformly.

**Checks.**

- For `h = X² − X`, the factor `X` gives `K(α) = K`; the unreduced quotient `K[X]/(X² − X) ≅ K × K` is not a field and is never the interpreted object.
- Over `ℚ`, `X² − X + 1/4 = (X − 1/2)²` gives `K(α) = ℚ`; over `𝔽₂(t)`, `X² + X + t` is irreducible and separable and gives a quadratic field.
- For `K = ℚ` and `h₁ = X² + 1`, `h₂ = X² + 2`, the compositum has degree four; for `h₂ = X² + 4` it has degree two, so composita are bounded by, not equal to, the product of degrees.

*Needs:* LogicAndDefinabilityInNumberTheory §§0.1–0.2, §0.4; 0.3.

### 0.5 Formal coordinates at smooth points

Let `k` be a field and `V` an integral `k`-variety, and let `x` be a closed point at which `V` is smooth with residue field `k_x` finite separable over `k`; let `t₁, …, t_r` be a regular system of parameters at `x`. Then `Ô_{V,x} ≅ k_x[[t₁, …, t_r]]` as `k`-algebras, and there are compatible `k(t)`-embeddings `k(V) ⊆ Frac(k_x[[t]]) ⊆ k_x((t_r))⋯((t₁))` (Stacks, Lemma 10.160.10, tag 0C0S, with the coefficient field chosen to contain `k` by Hensel lifting of the separable `k_x/k`; Poonen, proof of Lemma A.5, p. 14). In mixed characteristic, if `V` is smooth over the ring of integers `O_κ` of a number field at a closed point `x` over the prime `𝔭`, with regular parameters `π, t₁, …, t_r` where `π ∈ O_κ` is a uniformizer at `𝔭`, then `Ô_{V,x} ≅ O′[[t₁, …, t_r]]` for the unramified extension `O′` of the completion with residue field `k_x`, and `k(V)` embeds in `Frac(O′)((t_r))⋯((t₁))` (Stacks, Theorem 10.160.8, tag 032A; Pop 2002, proof of Fact 1.3, p. 8).

API:

- The iterated Laurent series field carries the lexicographic valuation with value group `ℤ^r` (or `ℤ^{r+1}` in the mixed case), `v(t_i)` the standard basis vectors, and residue field `k_x`.
- If `V → W` is étale at `x` and `t` are pulled back from `W`, the embedding of `k(W)` is the restriction of that of `k(V)`.

**Checks.**

- `V = 𝔸¹_ℚ`, `x = 0`, `t₁ = t`: the embedding is `ℚ(t) ⊆ ℚ((t))`, and `1/(1 − t)` maps to `Σ tⁿ`.
- For a singular point, such as the node of `y² = x²(x + 1)` at the origin, the completion is not a power series ring in one variable and the statement does not apply.
- An inseparable residue field is excluded: over `k = 𝔽₂(s)`, the point `t² = s` of `𝔸¹` has residue field `𝔽₂(√s)`, and no coefficient field of the completion contains `k`.

*Needs:* SchemeAndStackFoundations §0.12 (henselian lifting); Mathlib `HenselianLocalRing`.

### 0.6 Diagonal forms of degree `n`

Prove Poonen's appendix lemmas (Poonen, Appendix A, pp. 12–14):

- (a) *Odd and quadratic descent.* A quadratic form with a nontrivial zero over an odd-degree extension `L/K` has one over `K`, and a cubic form with a nontrivial zero over a quadratic extension has one over `K` (Proposition A.1).
- (b) *Inseparable descent.* With `n_K = 3` if `char K = 2` and `n_K = 2` otherwise, a form of degree `n_K` with a nontrivial zero over a purely inseparable extension has one over `K` (Corollary A.2).
- (c) *Isotropy above the dimension.* Let `k` be separably closed, finite, or a number field containing `√−1`, put `ε = 0, 1, 2` respectively, and let `K/k` be finitely generated of transcendence degree `r`. If `n ≥ r + ε` and `m ≥ 2`, then `⟨⟨a₁, …, a_n⟩⟩_{n_k} ⊗ ⟨b₁, …, b_m⟩_{n_k}` has a nontrivial zero over `K` for all nonzero slots (Proposition A.3).
- (d) *Anisotropy from a uniformizer.* If `v` is a discrete valuation with uniformizer `π` and `q` a diagonal form of degree `n ≥ 2` over the valuation ring whose reduction has no nontrivial zero, then `q ⊗ ⟨⟨π⟩⟩_n` has none over `K` (Lemma A.4).
- (e) *Anisotropy at a smooth point.* If `x` is a smooth closed point of an integral `k`-variety with function field `K`, `t₁, …, t_m` part of a regular system of parameters at `x`, and `q` a diagonal form of degree `n ≥ 2` over `k` with no nontrivial zero over the residue field `k_x`, then `q ⊗ ⟨⟨t₁, …, t_m⟩⟩_n` has no nontrivial zero over `K` (Lemma A.5).

For (a) in degree two use Springer's theorem (QuadraticFormInvariantsPartII §2.5); in degree three, a cubic form with a zero `P` over a quadratic extension and its conjugate `P̄` gives a `K`-rational point on the line `PP̄` (third intersection) or `P` itself is rational. For (c), in the separably closed and finite cases `K` is `C_{r+ε}` by Tsen–Lang (QuadraticFormInvariantsPartII §5.6), and the form has `n_k^n · m > n_k^{r+ε}` variables; in the number-field case, `cd₂(k) ≤ 2` (ArithmeticGaloisDuality §R02.4.4, `k` totally imaginary) and `cd₂(K) ≤ cd₂(k) + r` (ClassicalAdicEtaleCohomology §11.2), so every `(r + 3)`-fold Pfister form over `K` has zero invariant and is isotropic (QuadraticFormInvariantsPartII §3.9), and the form contains a multiple of such a Pfister form. For (d), the value of `q(x⃗_j)` is `0 mod n` for nonzero `x⃗_j`, so the summands `π^j q(x⃗_j)` have distinct values modulo `n`. For (e) use the embedding of 0.5 and (d) inductively in the Laurent variables.

**Checks.**

- (c) is sharp in the finite case: over `𝔽_q(t)` with `q` odd, `n = r = 1` slots give `⟨⟨t⟩⟩₂ ⊗ ⟨1, −c⟩₂`, anisotropic for `c` a nonsquare in `𝔽_q` by (d), so `n ≥ r + 1` cannot be lowered.
- (c) fails without `√−1` in the number-field case: over `ℚ`, `⟨⟨1, 1⟩⟩₂ ⊗ ⟨1, 1⟩₂ = 8⟨1⟩` (plus convention) is anisotropic although `n = 2 = r + ε`.
- (d) needs anisotropy of the reduction: over `ℚ₅`, `⟨1, 1⟩` reduces to an isotropic form (`2² + 1 ≡ 0`), and `⟨1, 1⟩ ⊗ ⟨⟨5⟩⟩₂ = ⟨1, 1, 5, 5⟩` is isotropic.
- In characteristic two degree three is essential in (b): the quadratic form `x² + t y²` over `𝔽₂(t)` acquires the zero `(√t, 1)` over `𝔽₂(√t)` but has none over `𝔽₂(t)`.

*Needs:* 0.5; QuadraticFormInvariantsPartII §§2.5, 3.9, 5.6; ArithmeticGaloisDuality §R02.4.4; ClassicalAdicEtaleCohomology §11.2.

### 0.7 Rumely's uniform arithmetic of global fields

Prove the following uniform definitions in the class of global fields (Rumely, Introduction I–III, pp. 195–196, and p. 211; Poonen, Theorem 2.2, p. 3):

- (1) one fixed-arity formula whose fibres, in every global field, are exactly the valuation rings of its nonarchimedean places, and empty otherwise;
- (2) a sentence true in number fields and false in global function fields;
- (3) in number fields, formulas defining the ring of integers, `ℤ` and `ℕ`;
- (4) in global function fields, a formula defining the constant field;
- (5) in global function fields, formulas with one parameter `x ∉ κ` defining `𝔽_p[x]`, `κ[x]` and the set of powers of `x`, the latter with formulas making it a model of `(ℕ, +, ·)`;
- (6) uniformly definable Gödel functions coding finite sequences in these models of `ℕ`, and, in global function fields, the definable bijection from the powers `x^m`, `m` ranging over the integers `∏ p_i^{n_i}` with `0 ≤ n_i < p` (`p_i` the `i`-th prime), onto `𝔽_p[x]`, sending `x^{∏ p_i^{n_i}}` to `Σ n_i x^{i−1}` (Rumely, p. 211; AKNS, proof of Lemma 3.8, p. 23).

The valuation predicates are built from norm forms of cyclic extensions and the Hasse principle for norms: for a finite prime `𝔭` a predicate `R(t, c)` with suitable parameters `c` defines `O_𝔭`, and a finite selector combines finitely many predicate shapes into one family (Rumely, §2, p. 198 onwards). The family with empty failed fibres is obtained from (1) by the guard of 0.3 that a fibre is a proper valuation ring. The polynomial ring in (5) is the ring generated by the distinguished transcendental parameter, not the ring of functions regular away from an arbitrary place.

**Checks.**

- The fibres of (1) in `ℚ` are the rings `ℤ_(p)`; the archimedean place is not among them, and `ℤ = ⋂_p ℤ_(p)` gives (3).
- In `𝔽₂(t)` with parameter `x = t`, (5) defines `𝔽₂[t]`; with `x = 1/t` it defines `𝔽₂[1/t]`, a different ring, so the parameter cannot be dropped.
- Sentence (2) is false in `𝔽_p(t)` for every `p`, including `p = 2`, where quadratic-form methods fail and norm forms are needed.

*Needs:* 0.3; ClassFieldTheory Layer 13 (`cyclicHasseNorm`, number fields); ArithmeticGaloisDuality §R02.3.2 and gap:function-field-cyclic-hasse-norm (function fields); Chebotarev Layer 10 and FunctionFieldArithmetic §5.8 (primes in prescribed classes); LogicAndDefinabilityInNumberTheory §0.4.

### 0.8 Fixed Kronecker dimension is first-order

State `exists_sentence_kroneckerDimension_eq`: for every natural number `n` there is a sentence `σ_n` of the ring language such that a finitely generated field satisfies `σ_n` exactly when its Kronecker dimension is `n` (Poonen, Theorem 2.3, p. 3, after Pop 2002; Pop 2002, Theorem 1.4 and Facts 1.1–1.3, pp. 4–11). No assertion is made that the class of finitely generated fields is elementary.

Route. Let `K′ = K(√−1, ζ₃)`, interpreted by 0.4, and let `n_K` be `3` when `2 = 0` and `2` otherwise (a case split on the sentence `1 + 1 = 0`). Then `δ(K)` is the largest `m` for which some form `⟨⟨a₁, …, a_m⟩⟩_{n_K} ⊗ ⟨1, −b⟩_{n_K}` with nonzero slots in `K′` is anisotropic over `K′`. Isotropy for `m = δ(K) + 1` is 0.6(c): in characteristic zero `K′` has transcendence degree `δ(K) − 1` over the number field `κ(√−1, ζ₃)` and `ε = 2`; in characteristic `p` it has transcendence degree `δ(K)` over a finite field and `ε = 1`. Anisotropy for `m = δ(K)`: in characteristic `p`, take a smooth closed point of a model of `K′` with a regular system of parameters `t₁, …, t_{δ}` and `b` a constant that is not an `n_K`-th power in the finite residue field (it contains `ζ₃`), and apply 0.6(e); in characteristic zero, take a smooth point of a model over the ring of integers with regular parameters `π, t₁, …, t_{δ−1}`, `π` arithmetic, and `b` a unit nonsquare residue, and apply 0.6(d) in the multi-local field of 0.5. The sentence says that some `δ`-slot form is anisotropic and every `(δ + 1)`-slot form is isotropic over `K′`.

**Checks.**

- `σ₀` holds in every finite field (`⟨1, −b⟩_{n_K}` is anisotropic for a non-`n_K`-th power `b`, and finite fields are `C₁`) and fails in `ℚ`, where `⟨⟨p⟩⟩₂ ⊗ ⟨1, −b⟩₂` is anisotropic over `ℚ(√−1, ζ₃)` at a suitable prime. Finite Kronecker dimension zero is not "finite cardinality" in general, but for finitely generated fields the two agree.
- `σ₁` holds in `ℚ` and in `𝔽_p(t)` and fails in `ℚ(t)`.
- In characteristic two the quadratic version would be wrong: every element of `𝔽₄` is a square, so `⟨1, −b⟩₂ = (x + √b y)²` is isotropic for every `b` and the quadratic test would not certify `δ(𝔽₄) = 0`; since `𝔽₄ˣ` is cyclic of order three, a non-cube `b` exists and `⟨1, −b⟩₃` is anisotropic.

*Needs:* 0.4, 0.5, 0.6.

### 0.8a Albanese varieties over a field

Prove: for a field `L` and a geometrically integral variety `V` over `L` there are an abelian variety `Alb_V` over `L` and, over an algebraic closure `L̄`, a morphism from a dense open subset of `V_{L̄}` to `Alb_{V,L̄}` through which every morphism to an abelian variety factors uniquely up to translation; consequently, if no `L`-simple isogeny factor of `Alb_V` is `L`-isogenous to an elliptic curve `E` over `L`, every `L`-rational map from `V` to `E` is constant (Serre, *Morphismes universels et variété d'Albanese*, Théorème 5, p. 10-10, over an algebraically closed field; Poonen, proof of Lemma 4.7, p. 9). Over `L̄` use Serre's construction; the universal property makes the Galois action on `Alb_{V,L̄}` effective, and Galois descent gives `Alb_V`. A nonconstant `L`-rational map `V ⇢ E` induces a surjective homomorphism `Alb_V → E` over `L`, and Poincaré reducibility makes `E` `L`-isogenous to an `L`-simple factor. The pointed universal property is Tau Ceti's `AbelianVariety.IsAlbanese` predicate; for curves the Albanese is the Jacobian (JacobianChallenge Layer F).

**Checks.**

- `V = ℙⁿ_L`: `Alb_V = 0`, and every rational map to an abelian variety is constant.
- `V` a smooth projective curve with a rational point: `Alb_V` is its Jacobian, and the universal morphism is the Abel–Jacobi map of JacobianChallenge Layer F.
- `V = E` an elliptic curve: `Alb_V = E`, and the identity is a nonconstant map, so the criterion correctly gives nothing.

*Needs:* JacobianChallenge Layer F; AbelianSchemesAndArithmeticModuli §§A3.1, A6.5 (isogenies and Poincaré complete reducibility); SchemeAndStackFoundations §2.15 (Galois descent along field extensions).

### 0.9 Elliptic inputs in characteristic zero

Prove:

- (a) for every finitely generated field `K` of characteristic zero with constant field `κ` there is an elliptic curve `E` over `ℚ` with `E(ℚ)` infinite and `E(K) = E(κ)` (Moret-Bailly, Lemma 11.1(i); Poonen, Lemma 3.2, p. 4);
- (b) for an elliptic curve `E` over `ℚ_p`, the closure of every infinite subgroup of `E(ℚ_p)` is an open neighbourhood of the identity (Poonen, Lemma 3.3, p. 4).

For (a), `E(K) = E(κ)` holds as soon as every `κ`-rational map from a model of `K/κ` to `E` is constant, which by 0.8a follows when `E` is not `κ`-isogenous to a simple factor of the Albanese variety of that model; Moret-Bailly's proof produces such an `E` of positive rank. For (b), `E(ℚ_p)` has a finite-index open subgroup isomorphic to `ℤ_p` through the formal group, and every infinite subgroup of `ℤ_p` has open closure.

**Checks.**

- For `K = ℚ(t)`, every `E` with `E(ℚ)` infinite works: a `ℚ`-rational map `ℙ¹ → E` is constant, so `E(ℚ(t)) = E(ℚ)`.
- (b) fails for finite subgroups: the torsion subgroup of `E(ℚ_p)` is finite and closed with empty interior.

*Needs:* 0.8a; EllipticCurves Layers 1, 4, 5 and 6 (Mordell–Weil); NeronModelsAndSemistableAbelianVarieties §5.1.

### 0.10 Constants in characteristic zero and the characteristic sentence

Prove (Poonen, Lemmas 3.4–3.7, pp. 4–5, and proof of Theorem 1.1, p. 10):

- (a) There is a uniform family `𝓕₁` of subsets of `K` such that in every finitely generated field of characteristic zero some member `S` lies in `κ` and `S ∩ ℚ` is `p`-adically dense in `ℚ_p` for every prime `p`: the members are the sets of ratios of nonzero values of `x/y` on the points of `y² = x³ + a x + b` with `y ≠ 0`, `a, b` the parameters, and `E` from 0.9(a) gives the required member (Lemma 3.4).
- (b) If `√−1 ∈ K` and `S` is as in (a), then `κ = {t ∈ K : ⟨⟨s₁, s₂, t − s₃⟩⟩₂ is isotropic over K for all s₁, s₂, s₃ ∈ S}` (plus convention; Lemma 3.5).
- (c) There is a uniform family `𝓕₂` one of whose members is `κ` in every finitely generated field of characteristic zero: test isotropy over `K(√−1)` (Lemma 3.6).
- (d) There is a formula `C₀(x)` defining `κ` in every finitely generated field of characteristic zero and the empty set in every finitely generated field of positive characteristic: keep the members of `𝓕₂` that are fields of Kronecker dimension one and of number-field type (by 0.8 with `n = 1` and 0.7(2)) and take their union (Lemma 3.7).
- (e) State `exists_sentence_charZero`: there is a sentence true in every finitely generated field of characteristic zero and false in every field of positive characteristic (Poonen, Theorem 1.1, p. 2). With `Z` the subset defined by 0.7(3) inside the field defined by `C₀`, the sentence says that `Z` is closed under addition, `Z ≠ 2Z` and `2 ≠ 0` (proof of Theorem 1.1, p. 10).

Route for (b): a constant `t` gives a form of rank eight over the totally imaginary number field `κ`, isotropic by GlobalQuadraticForms §5.5; for `t ∉ κ`, shrink a model so that `t` is smooth, choose a closed point where `t − s₃` vanishes with number-field residue `ℓ`, a prime `p` split completely in `ℓ`, an anisotropic `⟨⟨a, b⟩⟩₂` over `ℚ_p`, and approximations `s₁, s₂ ∈ S ∩ ℚ`; then 0.6(e) gives anisotropy over `K`.

**Checks.**

- For `K = ℚ(t)` the output of `C₀` is `ℚ`, not `ℚ(t)`; for `K = 𝔽₅(t)` it is empty.
- The sentence of (e) is false in every field of characteristic `p > 0`, finitely generated or not: for `p = 2` the clause `2 ≠ 0` fails, and for odd `p` an additively closed `Z` satisfies `s = 2 · ((p + 1)/2) s` with `((p + 1)/2) s ∈ Z`, so `Z = 2Z`; it holds in `ℚ`, where `Z = ℤ`.
- Without `√−1` (b) fails: in `ℚ` itself, `⟨⟨s₁, s₂, t − s₃⟩⟩₂` with all slots positive is anisotropic at the real place, so constants would be excluded.

*Needs:* 0.3, 0.4, 0.6, 0.7, 0.8, 0.9; GlobalQuadraticForms §5.5; Chebotarev Layer 10.

### 0.11 Elliptic inputs over finite fields

Let `E` be an ordinary elliptic curve over `𝔽_q`, `R = End_{𝔽_q}(E)` and `Ψ(n) = Σ_{p | n} 1/p`. Prove (Poonen, §§4.1–4.2, pp. 6–9):

- (a) `liminf_{ℓ → ∞} Ψ(#E(𝔽_{q^ℓ})/#E(𝔽_q)) = 0` over primes `ℓ` (Lemma 4.1);
- (b) `E(𝔽_{q^ℓ}) ≅ R/(F^ℓ − 1)R` as `R`-modules (Lenstra, Theorem 1(a)), and a random point generates `E(𝔽_{q^ℓ})/E(𝔽_q)` as an `R`-module with probability at least `1 − 2Ψ(n)`, `n = #E(𝔽_{q^ℓ})/#E(𝔽_q)` (Lemma 4.3);
- (c) every finite field has an ordinary elliptic curve, for instance one with trace of Frobenius `1` (Waterhouse, Theorem 4.1; Poonen, Lemma 4.4);
- (d) there is a universal `c > 0` such that for `E` in Weierstrass form, `z = y/x` and a subgroup `G ≤ E(𝔽_q)` of index `< c q^{1/2}`, every element of `𝔽_q` is `z(g₁) + z(g₂)` with `g_i ∈ G` away from the poles of `z` (Lemma 4.5);
- (e) for a geometrically integral `𝔽_q`-variety `W` with a smooth morphism `(π₁, π₂) : W → 𝔸¹ × E`, there are a prime `ℓ > 3` and `w ∈ W(𝔽_{q^ℓ})` with `π₁(w) = z(Q₁) + z(Q₂)` for some `Q₁, Q₂ ∈ R · π₂(w)` (Lemma 4.6).

For (a) use Mertens's estimate `Σ_{p ≤ x} 1/p = O(log log x)` and the coprimality of the ideals `(α^ℓ − 1)/(α − 1)` for distinct primes `ℓ`. For (d) apply the Weil bound to the curve `z(P₁) + z(P₂) = t` pulled back along an isogeny with kernel image `G`. For (e) compare `#π(W(𝔽_{q^ℓ}))` (Lang–Weil) with the set of pairs `(t, P)` satisfying the condition (by (a), (b), (d)).

**Checks.**

- For `E: y² + xy = x³ + 1` over `𝔽₂`, `#E(𝔽₂) = 4`, trace `−1`, odd, so `E` is ordinary; `y² + y = x³` over `𝔽₂` is supersingular (trace `0`) and is excluded from (b).
- (a) concerns primes `ℓ`; for composite exponents the quotients share factors (`#E(𝔽_q)` divides `#E(𝔽_{q^ℓ})` for every `ℓ`).

*Needs:* EllipticCurves Layers 1 and 3; WeilConjectures WC.5 (*The all-extension Weil estimate*, *Curve RH from the surface bound*); AnalyticNumberTheoryPartI §0.21 (Mertens's second theorem).

### 0.12 Relatively closed global function subfields

Let `K` be a finitely generated field of characteristic `p > 0` with constant field `κ`, and let `𝓛(K)` be the set of subfields `L ⊆ K` relatively algebraically closed in `K` with `trdeg(L/κ) = 1`, that is, the relatively closed global function subfields. Prove (Poonen, Lemmas 4.7–4.9 and Proposition 4.10, pp. 9–11):

- (a) for `L ∈ 𝓛(K)` and an elliptic curve `E` over `κ` there is `u ∈ L ∖ κ` such that the twist `E_u` of `E_L` by the degree-two étale algebra `L ⊗_{κ(u)} κ(E)` (`κ(u) → κ(E)` sending `u` to the Weierstrass coordinate `x`) is a twist by a field and satisfies `E_u(K) = E_u(L)`: choose a place `v` of `L` of good reduction for the `L`-simple factors of the Albanese of a model of `K/L` (0.8a) and `u` with `v(u) = −1`; then `E_u` has bad reduction at `v`, so it is isogenous to none of them (Lemma 4.7);
- (b) for `E` ordinary and `c ∈ κˣ ∖ κˣ^{n_K}`, with `U₁ = x(E_u(K)) ∖ {0}` and `U₂` the set of sums `z(Q₁) + z(Q₂)` with `Q_i ∈ E(K_u)` and `x(Q_i) ∈ U₁`, one has `t ∈ L` exactly when `⟨⟨t − u₂, u₁⁻¹⟩⟩_{n_K} ⊗ ⟨1, −c⟩_{n_K}` is isotropic over `K` for all `u₁ ∈ U₁`, `u₂ ∈ U₂` (Lemma 4.8);
- (c) there is a uniform family containing every member of `𝓛(K)` when `ζ₃ ∈ K` in characteristic two (Lemma 4.9), the Weierstrass coefficients ranging over tuples with nonzero discriminant;
- (d) there is a uniform family whose members, in every finitely generated field of positive characteristic, are exactly the members of `𝓛(K)`; for finite `K` it is empty (Proposition 4.10): apply (c) to `K(ζ₃)`, intersect with `K` and keep the fields of Kronecker dimension one (0.8).

In (b), constants pass by 0.6(c); a transcendental `t` fails at the point produced by 0.11(e), where `t − u₂` and `u₁⁻¹` are local parameters and `⟨1, −c⟩_{n_K}` is anisotropic over the residue field `𝔽_{q^ℓ}` because `ℓ` is prime to `n_K`; 0.6(e) and 0.6(b) carry anisotropy to `K`.

**Checks.**

- For `K = 𝔽₂(s, t)`, the relative closures of `𝔽₂(s)`, `𝔽₂(t)`, `𝔽₂(s + t)` and `𝔽₂(s t)` are members; `𝔽₂(s²)` is not (its relative closure contains `s`), and `K` itself is not (Kronecker dimension two).
- In characteristic two the quadratic forms are not usable: every element of a finite field of characteristic two is a square, so `⟨1, −c⟩₂` is isotropic for every constant `c` and no nonsquare `c` exists; with `ζ₃` adjoined a non-cube `c` exists and `⟨1, −c⟩₃` is anisotropic over the residue field, which is why `ζ₃` is adjoined.
- For finite `K` the family is empty, not `{K}`.

*Needs:* 0.3, 0.4, 0.6, 0.8, 0.8a, 0.11; NeronModelsAndSemistableAbelianVarieties §5.1 (Néron–Ogg–Shafarevich, isogeny invariance of good reduction); EllipticCurves Layer 5 (twists); AlgebraicCurves Layer 2.

### 0.13 The constant field of every finitely generated field

State `exists_formula_isAlgebraic_primeField`: there is one formula `ψ(x)` such that in every finitely generated field `K` (finite fields included) the set defined by `ψ` is the set of elements algebraic over the prime field, the constant field `κ` (Poonen, Theorem 1.3, p. 2, and its proof, p. 11). In characteristic zero use `C₀` of 0.10(d), selected by the sentence of 0.10(e); in positive characteristic take the intersection over all members of the family of 0.12(d) of their constant fields, defined inside each member by 0.7(4) relativized through LogicAndDefinabilityInNumberTheory §0.2. For finite `K` the family is empty and the intersection is `K = κ`.

**Checks.**

- For `K = 𝔽₉` the formula defines all of `𝔽₉`; for `K = 𝔽₉(t)`, exactly `𝔽₉`; for `ℚ(t)`, exactly `ℚ`.
- An intersection convention giving `∅` over an empty family would wrongly define the empty set in finite fields.

*Needs:* 0.7, 0.10, 0.12; LogicAndDefinabilityInNumberTheory §0.2.

### 0.14 Algebraic dependence

Prove (Poonen, Lemma 5.2, p. 11, and proof of Theorem 1.4, pp. 11–12):

- (a) For each `n` there is a formula `φ_n(t₁, …, t_n)` in the ring language with an added unary predicate such that, for every finitely generated extension `K` of a global field `L` relatively algebraically closed in `K`, `φ_n(t)` holds in `(K, L)` exactly when `t₁, …, t_n` are algebraically dependent over `L`: after adjoining `√−1` and `ζ₃`, dependence holds exactly when `⟨⟨t₁ − c₁, …, t_n − c_n, a⟩⟩_{n_K} ⊗ ⟨1, −b⟩_{n_K}` is isotropic for all `a, b, c_i ∈ L`.
- (b) State `exists_formula_not_algebraicIndependent`: for each `n` there is a formula `ψ_n(t₁, …, t_n)` defining, in every finitely generated field, the tuples that are algebraically dependent over the prime field (equivalently over `κ`) (Poonen, Theorem 1.4, p. 2). For `n = 0` the formula is false: the empty family is independent. In characteristic zero use (a) with `L = κ` from 0.13; in characteristic `p`, the tuple is dependent when `t₁ ∈ κ` or some member `L` of 0.12(d) contains `t₁` and `t₂, …, t_n` are dependent over `L`.

In (a), a dependent tuple gives an isotropic form by 0.6(c); for an independent tuple, extend to a transcendence basis, take the separable closure `M`, an étale map to `𝔸^N_L`, a closed point over an `L`-rational point `c`, a place `𝔭` of `L` split completely in its residue field, `b` a unit whose residue is not an `n_K`-th power and `a` a uniformizer; 0.6(d), 0.6(e) and 0.6(b) give anisotropy over `K`.

**Checks.**

- In `ℚ(s, t)`, `(s, s²)` is dependent and `(s, t)` is independent; in `𝔽₂(s, t)`, `t` alone is independent over `𝔽₂` while `s² + s` is dependent on `s`, and the cubic forms must detect it.
- For `n = 1`, (b) is the complement of 0.13 in `K`: a single element is dependent exactly when it is constant.
- Over a finite field every tuple of positive length is dependent and the empty tuple is independent.

*Needs:* 0.4, 0.6, 0.12, 0.13; Chebotarev Layer 10; FunctionFieldArithmetic §5.8; GlobalQuadraticForms §5.5.

### 0.15 Uniform maximal global subfields

Prove: there is a uniform family whose members, in every finitely generated field `K`, are exactly the global subfields relatively algebraically closed in `K`: in characteristic zero the single member `κ`, in positive characteristic the members of 0.12(d); for finite `K` the family is empty (Dittmann–Pop, §4, opening paragraph, p. 13; Poonen, Proposition 4.10, p. 11). The members are guarded to be fields of Kronecker dimension one; every other fibre is empty.

**Checks.**

- For `ℚ(s, t)` the only member is `ℚ`; `ℚ(√2)` is not a subfield, and the global field `ℚ(s)` is not a member (Kronecker dimension two).
- In `𝔽₂(s, t)` the global subfield `𝔽₂(s²)` is not relatively closed (its closure contains `s`) and is not a member, while `𝔽₂(s)` is.
- In `𝔽₉` there are no members.

*Needs:* 0.3, 0.8, 0.10, 0.12, 0.13.

### 0.16 The relative constant field `k_t`

Let `H_d(K)` hold with `d ≥ 3`, let `k₁` be a member of 0.15 and `u = (u₂, …, u_{d−1})` algebraically independent over `k₁`; put `t_i = u_i² − u_i` and let `k_t` be the relative algebraic closure of `k₁(t)` in `K`. Prove that `k_t = k_u`, that `K/k_t` is a function field in one variable with `k_t` relatively closed, and that `x ∈ k_t` exactly when `(u₂, …, u_{d−1}, x)` is algebraically dependent over `k₁`, so membership is uniformly definable at fixed `d` by 0.14(a) (Dittmann–Pop, Notations/Remarks 4.1(1)–(2), pp. 13–14).

API:

- `k₁(u)/k₁(t)` is finite separable: `u_i` is a root of `X² − X − t_i`, whose derivative `2u_i − 1` is a unit (in characteristic two it is `1`).
- Relative closure is unchanged by an algebraic base extension: `k_t = k_u`.
- A field isomorphism carrying `k₁` and `u` to `k₁′` and `u′` carries `k_t` to `k′_{t′}`.

**Checks.**

- In `ℚ(s, t)` with `u₂ = s`, `t₂ = s² − s` and `k_t = ℚ(s)`; `K` is a function field in `t` over `ℚ(s)`.
- If `K` contains an element algebraic over `k₁(u)` but outside `k₁(u)`, for example `√s` in `ℚ(√s, t)`, it lies in `k_t`; using `k₁(u)` itself would be wrong.
- In characteristic two `X² − X − t_i` stays separable, whereas `X² − t_i` would make `k₁(u)/k₁(t)` purely inseparable and break the separability of `Kw/k₁(t)` used in 4.8.

*Needs:* 0.1, 0.14, 0.15; AlgebraicCurves Layer 0.

### Examples

For `K = ℚ(s, t)`: `δ(K) = 3`, the constant field is `ℚ`, the only member of 0.15 is `ℚ`, and `u₂ = s` gives `t₂ = s² − s` and `k_t = ℚ(s)`; `K` is a function field in one variable over `ℚ(s)`. The same construction over `𝔽₂(s, t, u)` uses the separable `X² − X − (s² − s)`; replacing it by `X² − s²` would lose separability.

For `K = 𝔽₉`: 0.12(d) and 0.15 give empty families, 0.8 gives `δ = 0`, and 0.13 must still define `𝔽₉`; this is the empty-intersection convention, not an exception for finite fields.

For the characteristic sentence: in `ℚ(t)`, `C₀` defines `ℚ`, the formula of 0.7(3) inside it defines `ℤ`, and `ℤ ≠ 2ℤ`; in `𝔽₃(t)`, `C₀` defines `∅`, the sentence fails.

### Dependencies

LogicAndDefinabilityInNumberTheory §§0.1–0.2, 0.4; QuadraticFormInvariantsPartII §§2.5, 3.9, 5.6, 5.7; ArithmeticGaloisDuality §§R02.3.2, R02.4.4 and gap:function-field-cyclic-hasse-norm; ClassicalAdicEtaleCohomology §11.2; LocalFieldsRamificationPartII §GF.5; JacobianChallenge Layer F, AbelianSchemesAndArithmeticModuli §§A3.1, A6.5, NeronModelsAndSemistableAbelianVarieties §5.1; WeilConjectures WC.5; AnalyticNumberTheoryPartI §0.21; FunctionFieldArithmetic §5.8; SchemeAndStackFoundations §0.12; on main AlgebraicCurves Layers 0 and 2, Chebotarev Layer 10, ClassFieldTheory Layer 13, GlobalQuadraticForms §5.5, EllipticCurves Layers 1, 3, 4, 5, 6, JacobianChallenge Layer F; Mathlib `Field.FG`, `Algebra.trdeg`, `algebraicClosure`, `ValuationSubring`, `IsDiscreteValuationRing`, `FirstOrder.Language.ring`, `Set.Definable`.

## Layer 1: cohomological local–global principles

The definability of prime divisors rests on local–global principles for the groups `H^{d+1}(K, ℤ/n(d))` of fields of Kronecker dimension `d`, proposed by Kato as higher analogues of the Brauer–Hasse–Noether theorem. Away from characteristic two and relative to a global subfield the principle is Jannsen's, owned by QuadraticFormInvariantsPartII §6.3; this layer states the adapter used here and the three further principles, over a finite field or a henselian discrete valuation ring (Kerz–Saito), in characteristic two (Jannsen) and in Kronecker dimension two with prime coefficients (Kato), together with the reduced-norm test that makes cubic and quadratic symbols first-order.

### 1.1 Coefficients, residues and detection at codimension one

For a field `F`, `n = 2` and `i ≥ 0` write `H^{i+1}(F) = H^{i+1}(F, ℤ/2(i))`, the coefficient group of QuadraticFormInvariantsPartII §3.1 (Galois cohomology with `μ₂^{⊗i}` coefficients when `char F ≠ 2`, Kato's group of logarithmic forms when `char F = 2`); for a prime `n ≠ char F` write `H^{i+1}(F, ℤ/n(i)) = H^{i+1}(G_F, μ_n^{⊗i})`. For a discrete valuation `w` of `F` with residue field `Fw`, the residue `∂_w : H^{i+1}(F) → H^i(Fw)` factors through restriction to the henselization `F_w` (Dittmann–Pop, §2(b), p. 4; Kato, p. 149). For an excellent normal integral scheme `X` of dimension `d` with function field `K`, the first map of Kato's complex is `∂ = ⊕_{x ∈ X^{(1)}} ∂_{w_x} : H^{d+1}(K) → ⊕_{x ∈ X^{(1)}} H^d(κ(x))`, `w_x` the discrete valuation of the local ring at a codimension-one point. Say that `X` *detects in degree `d + 1`* if `∂` is injective; then a class `α ∈ H^{d+1}(K)` vanishes exactly when its restriction to `K_{w_x}` vanishes for every `x ∈ X^{(1)}` (Dittmann–Pop, (∗), p. 5).

API:

- Restriction to the henselization at a discrete valuation commutes with the residue: `∂_x(α) = ∂_{w_x}(α_{w_x})`.
- For a Pfister form `q_a` with `d + 1` slots, `q_a` is anisotropic over a field `F′ ⊇ F` exactly when the restriction of `e(q_a)` to `F′` is nonzero (QuadraticFormInvariantsPartII §§3.8–3.9).
- If `L/K` is a finite extension of odd degree, restriction `H^{d+1}(K) → H^{d+1}(L)` is injective (restriction followed by corestriction is multiplication by the degree, a unit modulo two).
- Detection in degree `d + 1` is the vanishing of the degree-`d` Kato homology `KH_d(X, ℤ/2)` in the indexing of Kerz–Saito (Kerz–Saito, (0.4), p. 2).

**Checks.**

- For `d = 1` and `X` the spectrum of the ring of integers of a number field with the real places adjoined, detection is the injectivity part of the Brauer–Hasse–Noether sequence for `Br(K)[2]` (ClassFieldTheory Layer 10); without the real places it fails for `K = ℚ`, since the quaternion algebra `(−1, −1)` ramifies only at `2` and `∞`.
- For `d = 1` and `X` a smooth proper curve over a finite field, detection is the Brauer–Hasse–Noether injectivity for the global function field.
- Odd degree is needed for injectivity: `(−1) ∪ (−1) ≠ 0` in `H²(ℚ)` restricts to `0` over `ℚ(i)`, of degree two.

*Needs:* QuadraticFormInvariantsPartII §§3.1, 3.8, 3.9; KTheoryFiniteLocalFields §3.0 (residues of Milnor symbols); MotivesAndAlgebraicCycles §0.5b (Gersten residues); ClassFieldTheory Layer 10.

### 1.2 Jannsen's principle relative to a global subfield

Prove: let `K` be finitely generated of characteristic different from two with `δ(K) = d ≥ 1`, and `k₁ ⊆ K` a global subfield relatively algebraically closed in `K`; for each place `v` of `k₁` let `k₁,v` be the henselization (finite `v`), the real closure (real `v`) or an algebraic closure (complex `v`), and `K_v = K k₁,v`, a field because `K ⊗_{k₁} k₁,v` is a domain integral over `K`. Then `α ∈ H^{d+1}(K)` vanishes exactly when every restriction `α_v ∈ H^{d+1}(K_v)` vanishes (Dittmann–Pop, Fact 2.1, p. 4; Jannsen, Theorem 0.4 and Corollary 0.8). Derive it from QuadraticFormInvariantsPartII §6.3, applied to `F = K` as a function field in `d − 1` variables over `k₁`, which is separably closed in `K`: restriction to the function field over the completion factors through `K_v`.

**Checks.**

- `d = 1`, `K = k₁ = ℚ`: the statement is the Brauer–Hasse–Noether injectivity for `Br(ℚ)[2]`.
- Real places cannot be dropped: for `K = ℚ(x)`, `d = 2`, `α = (−1) ∪ (−1) ∪ (−1) ≠ 0`; at every finite place `α_v` is restricted from `H³(ℚ_p^h) = 0` and vanishes, at the complex place it vanishes, and at the real place it is nonzero because `8⟨1⟩` is anisotropic over `ℝ(x)`.
- The degree is `d + 1`, not `2`: for `d = 2` the map on `Br(K)[2]` is not injective in general.

*Needs:* 1.1; QuadraticFormInvariantsPartII §6.3; LocalFieldsRamificationPartII §GF.1.

### 1.3 Kerz–Saito's principle with `ℤ/2` coefficients

Prove: let `R` be a finite field of odd characteristic, or a henselian discrete valuation ring with finite residue field of characteristic different from two (for instance the valuation ring of the henselization of a global field at a non-dyadic finite place); let `X` be a proper regular flat integral `R`-scheme with function field `K` and `d = dim X > 0`. Then `X` detects in degree `d + 1`: `α ∈ H^{d+1}(K)` vanishes exactly when `α_{w_x} = 0` for every `x ∈ X^{(1)}` (Kerz–Saito, Theorem 8.1 with `Λ = ℤ/2`, `a = d`, `ℓ = 2` invertible on `R`; Dittmann–Pop, Fact 2.2, p. 5). The route is Kerz–Saito's: vanishing of Kato homology with `ℚ₂/ℤ₂` coefficients by weight arguments for the Kato complex and Gabber's prime-to-ℓ alterations, then descent to `ℤ/2` through the norm residue isomorphism.

**Checks.**

- `R = 𝔽_q`, `q` odd, `X` a smooth proper curve: `d = 1` and the statement is the Brauer–Hasse–Noether injectivity for `Br(𝔽_q(X))[2]`.
- `d = 1` over a henselian `R`: `X` is the spectrum of a henselian discrete valuation ring `R′`, `X^{(1)}` is its closed point and `K_{w_x} = K`; the statement holds trivially.
- Residue characteristic two is excluded: Kerz–Saito's theorem needs `ℓ` invertible on `R`, and Dittmann–Pop only apply it at non-dyadic places (2.2 guarantees that).

*Needs:* 1.1; AdicCoefficientsAndComparisonsPartII §PA.6.8; DeligneWeightsAndPurity §§7.12, 7.15; MotivesAndAlgebraicCycles §0.5b; KTheoryFiniteLocalFields §3.0a; LefschetzPencilsAndVanishingCycles §3.4; SchemeAndStackFoundations §2.15.

### 1.4 Jannsen's principle in characteristic two

Prove: let `K` be finitely generated of characteristic two with `d = δ(K)`, and assume `RS(𝔽₂)` if `d > 3`. Then `K` has a smooth projective model `X` over `𝔽₂`, and every such `X` detects in degree `d + 1`: `α ∈ H^{d+1}(K)` (Kato's group) vanishes exactly when `α_{w_x} = 0` for every `x ∈ X^{(1)}` (Dittmann–Pop, Fact 2.3 and the discussion before it, p. 5; Jannsen, Theorem 0.6 of arXiv v2, Theorem 0.10 of the published version, with `a = d`, `n = 2`, and Definition 4.18). Under `RS(𝔽₂)` the model comes from the first clause applied to a projective closure of an affine model, followed by the second; for `d ≤ 3` resolution of surfaces and of threefolds supplies it. Jannsen's route compares Kato's complex with a complex of Gersten–Bloch–Ogus type and uses weights; for `d ≤ 4` and a given smooth projective `X`, the vanishing is also known unconditionally (Jannsen, p. 5, citing Jannsen–Saito).

**Checks.**

- `d = 1`: `X` is the smooth projective curve of a global function field of characteristic two and the statement is the Brauer–Hasse–Noether injectivity for `Br(K)[2]`.
- `d = 3`, `K = 𝔽₂(s, t, u)`: `X = ℙ³` works, and no resolution hypothesis is used.
- `d = 4`: the statement for `𝔽₂(s, t, u, v)` uses `X = ℙ⁴` and holds, but for a general `K` of dimension four the existence of a smooth projective model is exactly where `RS(𝔽₂)` enters.

*Needs:* 1.1; QuadraticFormInvariantsPartII §3.1 (Kato's group); KTheoryFiniteLocalFields §3.0 (logarithmic forms and the Bloch–Gabber–Kato isomorphism); MotivesAndAlgebraicCycles §0.5b; DeligneWeightsAndPurity §§7.12, 7.15; Stacks, chapter *Resolution of Surfaces* (for `d ≤ 2`).

### 1.5 Kato's two-dimensional principle

Prove: let `k` be a global field, `K/k` the function field of a smooth projective geometrically integral `k`-curve, `S` the spectrum of the ring of integers of `k` or the smooth projective curve over the constant field with function field `k`, and `𝒳 → S` a proper flat morphism with `𝒳` regular and generic fibre the given curve (it exists by resolution of arithmetic surfaces). Let `n` be a prime different from `char K` such that `K` has no orderings, for instance `μ_{2n} ⊆ K`. Then the sequence

```text
0 → H³(K, ℤ/n(2)) → ⊕_{x ∈ 𝒳₁} H²(κ(x), ℤ/n(1)) → ⊕_{x ∈ 𝒳₀} H¹(κ(x), ℤ/n) → ℤ/n → 0
```

of residue maps and the sum is exact, `𝒳_i` denoting the points of dimension `i` (Kato, Corollary, p. 145; Pop 2017, Theorem 2.1, p. 2097). In particular every nonzero `α ∈ H³(K, ℤ/n(2))` is nonzero over the completion, hence over the henselization, at some `x ∈ 𝒳₁`.

**Checks.**

- The prime `n = 3` is admissible in characteristic two and `n = 2` is not; in odd characteristic and characteristic zero `n = 2` with `μ₄ ⊆ K`.
- The hypothesis excludes orderings and the sequence has no archimedean terms: for `n = 2` it is applied only after adjoining `μ₄`, and orderings of `K` itself are handled by the real-place clause of niceness (2.1) and by 1.2, never by 1.5.
- For `x ∈ 𝒳₁` horizontal, `κ(x)` is a global field and `H²(κ(x), ℤ/n(1)) = Br(κ(x))[n]`; for `x` vertical, `κ(x)` is a global function field over a residue field of `k`.

*Needs:* 1.1; ClassFieldTheory Layer 10; KTheoryFiniteLocalFields §§3.0–3.0a; MotivesAndAlgebraicCycles §0.5b; Stacks, chapter *Resolution of Surfaces*.

### 1.6 Symbols, cyclic algebras and reduced norms

Let `n` be a prime, `L` a field with `n ≠ char L` and `μ_n ⊆ L`, so that `ℤ/n(q) ≅ ℤ/n` as Galois modules. For `a, b ∈ Lˣ` let `L_a = L(a^{1/n})` with norm `N_a`, and `A_{a,b}` the cyclic algebra of degree `n` with class `a ∪ b ∈ H²(L, ℤ/n(1))`. Prove (Pop 2017, §2C(1)–(3), pp. 2097–2098):

- (a) `a ∪ b = 0` exactly when `b ∈ N_a(L_aˣ)`;
- (b) if `A_{a,b}` is a division algebra, `c ∈ Lˣ` is a reduced norm of `A_{a,b}` exactly when `a ∪ b ∪ c = 0` in `H³(L, ℤ/n(3))` (Merkurjev–Suslin, Theorem 12.2, in prime degree);
- (c) the sets `Σ₂ = {(a, b) : a ∪ b ≠ 0}` and `Σ₃ = {(a, b, c) : a ∪ b ∪ c ≠ 0}` are defined by ring formulas, uniformly in the fields with `μ_n ⊆ L` and `n` invertible: `a ∪ b ≠ 0` says that `b` is not a norm from the interpreted `L_a` (0.4), and `a ∪ b ∪ c ≠ 0` says that `a ∪ b ≠ 0` and `c` is not a value of the reduced norm form of `A_{a,b}`, an explicit form of degree `n` in `n²` variables;
- (d) in the situation of 1.5 with `μ_{2n} ⊆ K`, `c ∈ Kˣ` is a reduced norm of a division algebra `A_{a,b}` over `K` exactly when it is one over the completion at every `x ∈ 𝒳₁`.

For (d) combine (b) with 1.5: a nonzero `a ∪ b ∪ c` is nonzero at some `x ∈ 𝒳₁`.

**Checks.**

- `n = 2`, `L = ℚ(i)`: `A_{a,b}` is the quaternion algebra `(a, b)`, its reduced norm form is the Pfister form `⟨1, −a, −b, ab⟩`, and (b) is the statement that `c` is represented by it exactly when `⟨⟨a, b, c⟩⟩` is hyperbolic, matching QuadraticFormInvariantsPartII §3.9.
- If `a ∪ b = 0` then `A_{a,b}` is split, every `c` is a reduced norm and `a ∪ b ∪ c = 0`; the formula of (c) therefore tests `a ∪ b ≠ 0` first.
- Over a field without `μ_n`, the identification of `ℤ/n(1)` with `ℤ/n` fails and cyclic algebras of degree `n` are not given by Kummer symbols; for `n = 3` over `ℚ`, `ζ₃ ∉ ℚ` and the construction is made over `ℚ(ζ₃)`.

*Needs:* 0.4, 1.5; KTheoryFiniteLocalFields §§3.0–3.0a; ClassFieldTheory Layer 10.

### Examples

Let `K = ℚ(x)` and `q = ⟨⟨−1, −1, −1⟩⟩` (Dittmann–Pop's minus convention, so `q = 8⟨1⟩`). It is anisotropic over `K`, `e(q) = (−1)³ ≠ 0`, and 1.2 with `k₁ = ℚ` detects it at the real place only. This is the reason Layer 2 imposes isotropy of the tail at the real places: a nice form cannot be detected at an ordering.

In characteristic two, `𝔽₂(s, t, u)` satisfies `H₃`, has the smooth projective model `ℙ³`, and 1.4 applies without `RS(𝔽₂)`. In dimension two of characteristic two Kato's principle is used with `n = 3`, `μ₆ = μ₃` adjoined, and the cubic symbols of 1.6 replace Pfister forms.

### Dependencies

QuadraticFormInvariantsPartII §§3.1, 3.8, 3.9, 6.3; LocalFieldsRamificationPartII §GF.1; AdicCoefficientsAndComparisonsPartII §PA.6.8; DeligneWeightsAndPurity §§7.12, 7.15; MotivesAndAlgebraicCycles §0.5b; KTheoryFiniteLocalFields §§3.0–3.0a; LefschetzPencilsAndVanishingCycles §3.4; SchemeAndStackFoundations §2.15; on main ClassFieldTheory Layer 10; Stacks, chapter *Resolution of Surfaces*; Layer 0 (0.4).

## Layer 2: nice presentations and anisotropic test forms

A Pfister form is useful for detecting prime divisors only if orderings and dyadic or bad places of a global subfield cannot see its anisotropy. This layer defines such *nice* presentations, constructs nice two-fold tails that stay anisotropic over a prescribed finite separable extension, and shows that at every geometric prime divisor many test forms built from such tails are anisotropic.

### 2.1 Nice Pfister presentations

Let `H_d(K)` hold, `k₁ ⊆ K` a global subfield and `a = (a_d, …, a₁, a₀)` nonzero elements of `K`. The presentation `q_a` is *`k₁`-nice* if `a₁, a₀ ∈ k₁` and the two-fold tail `q_{a₁, a₀}` is isotropic over `k₁,v` for every place `v` of `k₁` that is real, or dyadic, or has `v(a₀) ≠ 0`, or has `v(a₁) < 0`; here `k₁,v` is the real closure at a real place and the henselization at a finite place (Dittmann–Pop, Definition 3.3, p. 8). It is *nice* if it is `k₁`-nice for some global subfield `k₁`. Niceness is a property of the presentation, not of the isometry class.

API:

- A `k₁`-nice presentation records `a₀, a₁ ∈ k₁ˣ` and the four isotropy conditions on the tail.
- If `l₁ ⊆ K` is a global field finite over `k₁`, a `k₁`-nice presentation is `l₁`-nice: a place of `l₁` above a triggering place of `k₁` triggers only if the restriction does (ramification indices are positive), and isotropy over `k₁,v` persists over `l₁,w`.
- Forgetting niceness, `q_a` is the quadratic Pfister form of QuadraticFormInvariantsPartII §1.1 with the characteristic-dependent last factor of the Conventions, in the same slot order.
- In characteristic two there are no dyadic places (`2 = 0` lies in every maximal ideal and is excluded by the definition `2 ≠ 0`), and no real places.

**Checks.**

- Over `k₁ = ℚ`, a tail with `a₁ < 0` and `a₀ < 0` is `⟨1, −a₀, −a₁, a₀a₁⟩`, positive definite at the real place, and is never nice.
- `a₀ = 0` is excluded although QuadraticFormInvariantsPartII §1.1 allows a zero last slot in characteristic two.
- The tail with `a₁ = 1` is isotropic everywhere and is nice, but every form `q_a` containing it is isotropic and useless as a detector.
- Niceness is not an isometry invariant: over `ℚ` the tails with `(a₁, a₀) = (21, −1)` and `(7/3, −1)` are isometric (`21 = 9 · 7/3`). The first is nice: `21 > 0`, and `21 ≡ 1 mod 4` is a norm from `ℚ₂(i)`, and no other place triggers. The second is not: `v₃(7/3) = −1` triggers the place `3`, where `7/3`, of odd valuation, is not a norm from the unramified `ℚ₃(i)`.

*Needs:* 0.1, 0.15; QuadraticFormInvariantsPartII §1.1; LocalFieldsRamificationPartII §GF.1; RealAlgebraicGeometry Layer 1.

### 2.2 Isotropy of two-fold tails and norms

Prove: for a field `F` and `a₀, a₁ ∈ Fˣ`, let `E = F(α₀)` with `α₀` a root of `X² − a₀` (characteristic different from two) or of `X² − X − a₀` (characteristic two). Then `q_{a₁, a₀} ≅ N ⊥ −a₁ N` with `N` the norm form of `E/F`, and `q_{a₁, a₀}` is isotropic over `F` exactly when `α₀ ∈ F` or `a₁ ∈ N_{E/F}(Eˣ)` (Dittmann–Pop, proof of Lemma 3.5, pp. 9–10). The values of a norm form of a quadratic field extension form the group of norms, which is the roundness statement of QuadraticFormInvariantsPartII §1.2.

**Checks.**

- Over `ℚ₃` with `a₀ = −1` (so `E = ℚ₃(i)` unramified) and `a₁ = 3`, `3` is not a norm and `⟨1, 1, −3, −3⟩` is anisotropic; with `a₁ = 2 = 1 + 1` it is isotropic.
- If `α₀ ∈ F`, `N` is hyperbolic and the tail is isotropic for every `a₁`.
- Over `𝔽₂((t))` with `a₀ = 1`, `E` is the unramified quadratic extension, `t` is not a norm and `⟨⟨t⟩⟩_b ⊗ [1, 1]` is anisotropic.

*Needs:* QuadraticFormInvariantsPartII §§1.1, 1.2, 1.5.

### 2.3 Approximation for the selected tail

Let `l₁/k₁` be a finite separable extension of global fields and `Σ` a finite set of finite places of `k₁`; enlarge `Σ` by the dyadic places. Prove that one can choose (Dittmann–Pop, proof of Lemma 3.5, pp. 9–10):

- (a) a finite place `v₁ ∉ Σ` split completely in `l₁` (Chebotarev Layer 10 for number fields, FunctionFieldArithmetic §5.8 for function fields);
- (b) `a₀ ∈ k₁ˣ` with `v(a₀) = 0` for `v ∈ Σ ∪ {v₁}` and residue polynomial of `X² − a₀`, resp. `X² − X − a₀`, irreducible over the residue field at `v₁` (weak approximation; irreducibility is an open condition);
- (c) `a₁ ∈ k₁ˣ` with `v₁(a₁) = 1`, `v(a₁) = 0` for `v ∈ Σ`, `a₁` a local norm from `k₁,v(α₀)` at every real place, every dyadic place and every finite place with `v(a₀) ≠ 0`, and with controlled poles:
  - for a number field, `v(a₁) ≥ 0` at every finite place: choose `c ∈ k₁` by strong approximation with the archimedean places omitted (GlobalNumberFields Layer 6), close to a uniformizer at `v₁` and to `1` at the other constrained places and integral elsewhere, and put `a₁ = c + M` for a positive rational integer `M` divisible by a high power of every constrained prime and larger than every real conjugate of `|c|`, so that `a₁` is totally positive;
  - for a global function field, `v(a₁) ≥ 0` at every finite place `v ≠ v₀`, where `v₀ ∉ Σ ∪ {v₁}` splits completely in `k₁(α₀)` (FunctionFieldArithmetic §5.8): apply `TauCeti.Place.exists_forall_mem_valuation_sub_le_and_forall_mem_integers` with `S` the set of all places other than `v₀`.

Local norms from a quadratic extension form an open subgroup of finite index, so the norm conditions at the finitely many constrained places are neighbourhoods of `1`; at real places a totally positive element is a norm.

**Checks.**

- An approximation that allows poles of `a₁` at uncontrolled places does not prove niceness: at a pole `v` that does not split in `k₁(α₀)`, the tail may be anisotropic over `k₁,v`.
- For `k₁ = ℚ`, no pole is needed: a single global element with prescribed behaviour at finitely many primes and integral elsewhere exists by the Chinese remainder theorem, and adding a large multiple of the product of the constrained primes fixes the sign.
- For a global function field a pole is unavoidable when `a₁` must be integral at all other places and nonconstant (a nonconstant function has a pole), which is why `v₀` must split in `k₁(α₀)`.

*Needs:* Chebotarev Layer 10; FunctionFieldArithmetic §5.8; GlobalNumberFields Layers 1 and 6; `TauCeti.Place.exists_forall_mem_valuation_sub_le_and_forall_mem_integers`; AlgebraicCurves Layer 0 (weak approximation for function fields).

### 2.4 Nice tails anisotropic over a separable extension

Prove: for every finite separable extension `l₁/k₁` of global fields and every finite set `Σ` of finite places of `k₁` there are `a₁, a₀ ∈ k₁ˣ`, units at every place of `Σ`, such that `q_{a₁, a₀}` is `k₁`-nice and anisotropic over `l₁` (Dittmann–Pop, Lemma 3.5, pp. 9–10). With the choices of 2.3, the tail is anisotropic over `k₁,v₁` by the independent-value criterion (QuadraticFormInvariantsPartII §4.3: the residue form is anisotropic and `v₁(a₁) = 1` is odd), hence over `l₁ ⊆ k₁,v₁` (`v₁` splits completely). It is isotropic at real, dyadic and `a₀`-bad places by 2.2, and at the only possible pole `v₀` because `α₀ ∈ k₁,v₀`.

**Checks.**

- The tail stays anisotropic over the given `l₁` because `l₁` embeds in `k₁,v₁`; for an inseparable `l₁/k₁` no such embedding into a henselization exists, and no claim is made.
- Its slots are units at every place of `Σ`, which 2.8 uses to make shifts units.
- For `k₁ = ℚ`, `l₁ = ℚ(i)`, `Σ = {2}`: `v₁ = 5` splits in `ℚ(i)`; `a₀ = 3` is a unit at `2` and `5` and a nonsquare modulo `5`; `a₁ = 145 = 5 · 29` has `v₅(a₁) = 1` and `a₁ ≡ 1 mod 72`. The tail `⟨1, −3, −145, 435⟩` is anisotropic over `ℚ₅` (residue form `⟨1, −3⟩` anisotropic over `𝔽₅`, odd value of `a₁`), hence over `ℚ(i) ⊆ ℚ₅`. It is nice: at the real place `a₀ > 0`; at `2` and at `3` (where `v₃(a₀) ≠ 0`) `a₁` is a square, hence a norm; `a₁` has no poles; the prime `29` with `v₂₉(a₁) > 0` imposes nothing.

*Needs:* 2.1, 2.2, 2.3; QuadraticFormInvariantsPartII §4.3.

### 2.5 Parameters adapted to a geometric divisor

Prove: for every geometric prime divisor `w` of a field with `H_d(K)`, `d ≥ 3`, there are a global subfield `k₁ ⊆ K`, relatively algebraically closed, and `u = (u₂, …, u_{d−1})` algebraically independent over `k₁` such that `w` is trivial on `k₁(u)`, `Kw/k₁(u)` is finite separable, and for every `u_d` with `w(u_d) = 1`, `(u_d, u)` is a separating transcendence basis of `K/k₁` (Dittmann–Pop, Lemma 3.6, p. 10). In characteristic zero lift a transcendence basis of `Kw` by `w`-units and take `k₁ = κ`; in characteristic `p` lift a separating transcendence basis `(u₁, …, u_{d−1})` of `Kw` over `𝔽_p` and take `k₁` the relative closure of `𝔽_p(u₁)`. Separability of `K/k₁(u_d, u)` follows from the fundamental equality for the unique prolongation along the purely inseparable part (AlgebraicCurves Layer 6, no perfectness), which forces degree one.

**Checks.**

- The number of residue parameters is `d − 2` in both characteristics: in characteristic zero `Kw` has transcendence degree `d − 2` over the number field `κ`; in characteristic `p`, one of the `d − 1` lifted parameters is used up by `k₁`.
- A transcendence basis of `Kw` that is not separating is insufficient in characteristic `p`: in `K = 𝔽_p(s, t, r)` with `w` the `r`-adic valuation, lifting the non-separating basis `(s, t^p)` of `Kw = 𝔽_p(s, t)` gives `k₁ = 𝔽_p(s)`, `u₂ = t^p` and `Kw/k₁(u₂)` purely inseparable of degree `p`; the separating basis `(s, t)` works.
- For `d = 3` the tuple `u` has one element: in `ℚ(s, t)` with `w` the `t`-adic valuation, `k₁ = ℚ` and `u₂ = s`; in `𝔽_p(s, t, r)` with `w` the `r`-adic valuation, `k₁ = 𝔽_p(s)` and `u₂ = t`.

*Needs:* 0.2, 0.15; LocalFieldsRamificationPartII §§GF.1, GF.5; AlgebraicCurves Layer 6.

### 2.6 Test presentations over a global base

Let `H_d(K)` with `d ≥ 3`, `k₁ ⊆ K` a global subfield, `t = (t₂, …, t_{d−1})` algebraically independent over `k₁`, and `a_d ∈ Kˣ`. A *`k₁, t`-test presentation for `a_d`* is a `k₁`-nice presentation `q_a` with `a = (a_d, t₂ − ε₂, …, t_{d−1} − ε_{d−1}, a₁, a₀)`, where `ε_i ∈ k₁ˣ` are units at every finite place `v` of `k₁` with `v(a₁) > 0` (Dittmann–Pop, Definition 3.7, p. 10; Notations/Remarks 4.1(1)(c)–(d), p. 13).

API:

- The middle slots are `a_i = t_i − ε_i`, nonzero because `t_i` is transcendental over `k₁`.
- The full presentation is `k₁`-nice; the tail `(a₁, a₀)` carries the niceness.
- If `v(a₁) > 0` at a finite place `v` of `k₁`, then `v(ε_i) = 0` for every `i`.
- Permuting the middle coordinates permutes `t` and `ε` together and preserves the predicate.

**Checks.**

- If `v(a₁) = 1` and `v(ε₂) = 1` at some `v`, the tuple fails the condition although `ε₂ ≠ 0`.
- When `a₁` has no zero at a finite place the unit condition is vacuous, but niceness still has to hold.
- For `d = 3` there is exactly one shift `a₂ = t₂ − ε₂`, not an empty middle tuple.

*Needs:* 2.1, 0.14.

### 2.7 Specialization into iterated Laurent fields

Let `l/k₁(t₂, …, t_{d−1})` be finite separable with `k₁` global. Prove: the normalization of the torus `Spec k₁[t^{±1}]` in `l` is finite, and étale over a dense open `U`; for `ε ∈ U(k₁)` and a closed point `s_ε` above it, the residue field `k_ε` is finite separable over `k₁`, `π = (t_i − ε_i)` is a regular system of parameters at `s_ε`, and there are compatible `k₁(π)`-embeddings `l ⊆ Frac(k_ε[[π]]) ⊆ k_ε((π₂))⋯((π_{d−1}))` (Dittmann–Pop, proof of Proposition 3.8, pp. 10–11).

**Checks.**

- All `ε_i` are nonzero because the base is a torus; this is what makes `t_i − ε_i` a unit-shift in 2.6.
- A finite normalization need not be étale everywhere: for `l = k₁(√t₂)` it ramifies over `t₂ = 0`, which lies outside the torus.
- For `l = k₁(t)` itself, `k_ε = k₁` and the embedding is the Taylor expansion at `ε`.

*Needs:* AlgebraicModuliForArithmeticGeometry §7.5 (`arithmetic_normalization_genericallyEtale`); 0.5.

### 2.8 Abundance of anisotropic test forms

Prove: let `w` be a geometric prime divisor of a field with `H_d(K)`, `k₁ ⊆ K` a global subfield and `t = (t₂, …, t_{d−1})` algebraically independent over `k₁` with `w` trivial on `k₁(t)` and `Kw/k₁(t)` finite separable. Then there is a dense open `U ⊆ (𝔾_m^{d−2})_{k₁}` such that for every `ε ∈ U(k₁)` there is a `k₁`-nice tail `q_{a₁, a₀}` for which, for every `a_d ∈ Kˣ` with `w(a_d)` odd, `q_a` with `a = (a_d, t − ε, a₁, a₀)` is a `k₁, t`-test presentation anisotropic over `K_w` (Dittmann–Pop, Proposition 3.8, pp. 10–11). The tail is chosen before `a_d` and works for every odd-valued `a_d`, negative values included.

Route: apply 2.7 to `l = Kw` to get `k_ε`; let `Σ` contain the zeros and poles of all `ε_i` and the dyadic places, and take the tail of 2.4 for `l₁ = k_ε`, so every place with `v(a₁) > 0` lies outside `Σ` and every `ε_i` is a unit there. The tail is anisotropic over `k_ε`; the independent-value criterion over the iterated Laurent field (valuation `ℤ^{d−2}`) adds the slots `π`, so `q_{π, a₁, a₀}` is anisotropic over `Kw`; a second application over `K_w` with the odd value `w(a_d)` adds `a_d`.

**Checks.**

- Dittmann–Pop's subscript for the specialized form denotes the residue form over `Kw`, not the form over `K`; with the slots `π` all `w`-units this is the reduction of the unit part of `q_a`.
- An even `w(a_d)` is excluded: with `a_d` a square times a unit the form becomes a unit form of fold `d + 1` over `K_w`, isotropic by QuadraticFormInvariantsPartII §6.5 and the real-place clause of niceness.
- If `ε` lies outside `U`, the residue field at a point above it can be inseparable or the parameters fail to be regular; the statement makes no claim there.

*Needs:* 2.4, 2.6, 2.7; QuadraticFormInvariantsPartII §§4.3, 6.5.

### Examples

Suppose `ε₂ ∈ ℚˣ` has a zero or pole at the prime `3`. Put `3 ∈ Σ` before choosing the tail; 2.4 makes `a₁` a unit at `3`, so every prime with `v(a₁) > 0` avoids `3` and `ε₂` is a unit there, exactly as 2.6 requires.

At a good place `v₁` split in the residue extension, take `a₀` with nonsplit quadratic residue and `a₁` of order one; the tail is anisotropic there and stays so over the residue extension. For a global function field the one allowed pole `v₀` of `a₁` splits in `k₁(α₀)`, so it does not violate niceness; for a number field 2.3 avoids poles altogether.

### Dependencies

Layer 0 (0.1, 0.2, 0.5, 0.14, 0.15); QuadraticFormInvariantsPartII §§1.1, 1.2, 1.5, 4.3, 6.5; LocalFieldsRamificationPartII §§GF.1, GF.5; AlgebraicModuliForArithmeticGeometry §7.5; FunctionFieldArithmetic §5.8; Tau Ceti `TauCeti.Place.exists_forall_mem_valuation_sub_le_and_forall_mem_integers`; on main Chebotarev Layer 10, GlobalNumberFields Layers 1 and 6, AlgebraicCurves Layers 0 and 6, RealAlgebraicGeometry Layer 1.

## Layer 3: prime divisors from compact detecting valuations

Throughout this layer `d ≥ 3`, `H_d(K)` holds and `q_a` has slots `a = (a_d, …, a₁, a₀)`. The local–global principles of Layer 1 show that an anisotropic nice form stays anisotropic at the henselization of some prime divisor. To control *which* divisor, the layer passes to auxiliary quadratic extensions, collects the detecting valuations in the patch-compact valuation spectrum, takes a limit of possibly higher rank and coarsens it back to a divisor trivial on the relative constants.

### 3.1 Prime-divisor detection of nice forms

Prove: if `q_a` is anisotropic over `K` and `k₁`-nice for a global subfield `k₁ ⊆ K`, then there is a prime divisor `w` of `K` such that `q_a` is anisotropic over the henselization `K_w` (Dittmann–Pop, Proposition 3.4(1), pp. 8–9). Route: anisotropy means `e(q_a) ≠ 0` in `H^{d+1}(K)` (1.1).

- If `char K = 2`, choose a smooth projective model over `𝔽₂` and apply 1.4; the resolution hypothesis enters only for `d > 3`, through `H_d`.
- If `char K ≠ 2`, replace `k₁` by its relative algebraic closure (niceness persists, 2.1) and apply 1.2: some place `v` of `k₁` has `e(q_a)_v ≠ 0`, so the tail is anisotropic over `k₁,v ⊆ K_v`; by niceness `v` is finite and non-dyadic. Let `R` be the henselian valuation ring of `k₁,v` and `X_v` a projective flat `R`-model of `K_v`. AdicCoefficientsAndComparisonsPartII §PA.6.10 gives an odd-degree extension and an odd-degree regular projective alteration `Y → X_v`; restriction to `K̃ = k(Y)` stays nonzero (odd degree, 1.1), so 1.3 over the normalized henselian base gives `x̃ ∈ Y^{(1)}` with `q_a` anisotropic over `K̃_{w̃}`, `w̃ = w_{x̃}`. Its restriction `w` to `K` is discrete of rank one, `Kw ⊆ K̃w̃` is algebraic so `δ(Kw) = d − 1`, and `K_w ⊆ K̃_{w̃}`.

**Checks.**

- Finite mod-two cohomological dimension of a global field with real places is not available and is not used: the real places are excluded by niceness, not by a dimension bound.
- In characteristic two with `d = 3`, for instance `K = 𝔽₂(s, t, u)`, no resolution hypothesis is used.
- An alteration of even degree, such as a base change to a ramified quadratic extension of `k₁,v`, can kill `e(q_a)`; the odd degree is what keeps restriction injective.

*Needs:* 1.1, 1.2, 1.3, 1.4, 2.1; AdicCoefficientsAndComparisonsPartII §PA.6.10; LocalFieldsRamificationPartII §GF.1; QuadraticFormInvariantsPartII §5.7.

### 3.2 Parity and bad-place exclusion

Prove: if `q_a` is `k₁`-nice and `w` is a prime divisor of `K` with `q_a` anisotropic over `K_w`, then `w` is non-dyadic, `w(a₀) = 0`, `w(a₁) ≥ 0`, and `w(a_i)` is odd for some `1 ≤ i ≤ d` (Dittmann–Pop, Proposition 3.4(2), p. 9). The restriction `v` of `w` to `k₁` is trivial or a finite place at which the tail is anisotropic, so niceness excludes real, dyadic, `a₀`-bad and `a₁`-polar places. If all `w(a_i)`, `i ≥ 1`, were even, write `a_i = b_i c_i²` with `w(b_i) = 0`; then `q_a ≅ q_{b_d, …, b₁, a₀}`, a unit form of fold `d + 1 = δ(K) + 1` over `K_w`, isotropic by QuadraticFormInvariantsPartII §6.5, its real-place hypothesis coming from niceness of the tail.

**Checks.**

- The parity of `a_d` alone follows only after the other outer slots are units; in 3.8 this is arranged by the coarsening.
- `w(a₀) = 0` and `w(a₁) ≥ 0` are forced even when `w` is trivial on `k₁`, since then `w(a₀) = w(a₁) = 0`.
- In characteristic two every prime divisor is non-dyadic by the definition of the Conventions.

*Needs:* 2.1, 3.1; QuadraticFormInvariantsPartII §§4.1, 6.5.

### 3.3 Auxiliary root fields

For a field `K`, `a_d, θ ∈ Kˣ` and `τ ∈ K`, define `K_θ = K(α)`, `K_τ = K(β)` and `K_{θ,τ} = K(α, β)`, where `α² − α = a_d/θ²` and `β² − β = τ²/a_d`, the roots taken in an algebraic closure and the fields interpreted by 0.4 (Dittmann–Pop, Notations/Remarks 4.1(3), p. 14; Proposition 3.10, p. 12).

API:

- The generators satisfy exactly the two displayed equations; `1 − α` and `1 − β` are the other roots and generate the same fields.
- `K_θ` and `K_τ` have degree at most two over `K`, `K_{θ,τ}` at most four, and each is separable: the derivative `2X − 1` of `X² − X − c` is nonzero at a root in characteristic two (it is `1`), and in odd characteristic an irreducible quadratic is separable while a repeated root lies in `K`.
- If a defining polynomial has a root in `K`, the corresponding root field is `K`.
- Anisotropy of a form over `K` after extension to `K_θ`, `K_τ` or `K_{θ,τ}` does not depend on the choice of roots and is a ring formula over `K` in `a_d, θ, τ` and the slots (0.4).

**Checks.**

- For `τ = 0`, `X² − X` splits and `K_τ = K`, not `K × K`.
- Over `ℚ` with `a_d/θ² = −1/4`, `X² − X + 1/4 = (X − 1/2)²`, so `α = 1/2` and `K_θ = ℚ`; the nonreduced quotient is not the object.
- Over `𝔽₂(t)` with `a_d/θ² = t`, `X² + X + t` is separable and irreducible and `K_θ` is quadratic.
- Replacing `α` by `1 − α` leaves `K_{θ,τ}` unchanged.

*Needs:* 0.4.

### 3.4 Nonnegative lower slots in root-field detectors

In the setting of 3.8 fix `N > 0`, put `θ_N = (a_{d−1} ⋯ a₁)^N` and let `w̃` be a prime divisor of `L(α_N)`, `α_N² − α_N = a_d/θ_N²`, with `q_a` anisotropic over the henselization. Prove `w̃(a_i) ≥ 0` for all `i < d` and `w̃(a₀) = 0` (Dittmann–Pop, Proposition 3.10, Claim 1, p. 12). If `w̃` is nontrivial on `k₁`, the tail is anisotropic over the henselization of `k₁` there, so `w̃(a₁) > 0` by QuadraticFormInvariantsPartII §6.5 and 3.2; the test condition makes every `ε_i` a unit. If `w̃` is trivial on `k₁` the same conclusion is immediate. If `w̃(a_i) < 0` for some `1 < i < d`, then `w̃(u_i) < 0` and `a_i = u_i²(1 − 1/u_i − ε_i/u_i²)`, a square times a principal unit, and the outer slot `a_i` with the last factor gives an isotropic subform by QuadraticFormInvariantsPartII §4.2, a contradiction.

**Checks.**

- The principal-unit argument uses an outer slot together with the quadratic last factor; it never uses a tensor product of two quadratic factors in characteristic two, which is not a Pfister form.
- Without the shape `t_i = u_i² − u_i` the argument fails: for `t_i = u_i` a pole of `t_i` gives `a_i = u_i(1 − ε_i/u_i)`, not a square times a principal unit.

*Needs:* 2.6, 3.2, 3.3, 0.16; QuadraticFormInvariantsPartII §§4.2, 6.5.

### 3.5 Domination of the lower slots

In the setting of 3.4 prove `w̃(a_d) > 0` and `w̃(a_d) > N w̃(a_i)` for every `i < d`, and that the restriction of `w̃` to `L` satisfies the same inequalities with `q_a` anisotropic over its henselization (Dittmann–Pop, Proposition 3.10, Claim 2, p. 12). If `w̃(a_d) < 2w̃(θ_N)`, then `w̃(α_N) < 0` and `a_d = (α_N θ_N)²(1 − 1/α_N)` is a square times a principal unit, contradicting anisotropy as in 3.4; so `w̃(a_d) ≥ 2N Σ_{0<i<d} w̃(a_i) ≥ 0`. Not all slot values vanish (QuadraticFormInvariantsPartII §6.5 and niceness), so some `w̃(a_i) > 0` and the inequalities are strict. Restriction to `L` preserves the inequalities, and the smaller henselization embeds in the larger.

**Checks.**

- A compactness argument on one space cannot use valuations of the different fields `L(α_N)`; restriction to `L` is what places all of them in `Spv L`.
- For `N = 1` and `d = 3`, the inequalities say `w̃(a₃) > w̃(a₂)`, `w̃(a₃) > w̃(a₁)` and `w̃(a₃) > 0 = w̃(a₀)`.

*Needs:* 3.4; QuadraticFormInvariantsPartII §§4.2, 6.5; LocalFieldsRamificationPartII §GF.1.

### 3.6 A patch-compact limiting detector

Under the hypotheses of 3.8 prove: there is a valuation `w_a` on `L`, possibly of higher rank, with `q_a` anisotropic over the henselization `L_{w_a}`, `w_a(a_i) ≥ 0` and `w_a(a_d) > N w_a(a_i)` for every `N > 0` and every `i < d` (Dittmann–Pop, Proposition 3.10, compactness paragraph, pp. 12–13; Lemma 3.9, p. 11). For each `N` the set `V_N` of valuations on `L` with these inequalities for `N` and with `q_a` anisotropic over the henselization is nonempty by 3.1, 3.4 and 3.5, and closed in the patch topology: the inequalities `w(a_d/a_i^N) > 0` and `w(a_i) ≥ 0` are clopen (`TauCeti.ValuationSpectrum.isClopen_patchTopology_basicOpen`), and isotropy over the henselization is patch open (QuadraticFormInvariantsPartII §7.2). The sets decrease in `N`, and `TauCeti.ValuationSpectrum.compactSpace_patchTopology` gives a point in their intersection.

**Checks.**

- The limit is not asserted to be discrete or of rank one: on `ℚ(x, y)` the lexicographic valuation with `w(y) = (1, 0)`, `w(x) = (0, 1)` satisfies `w(y) > N w(x)` for all `N`, and no rank-one valuation does with `w(x) > 0`.
- Compactness is used in the ambient space `Spv L`; the subspace of discrete rank-one valuations is not patch compact.

*Needs:* 3.1, 3.4, 3.5; QuadraticFormInvariantsPartII §7.2; Tau Ceti `TauCeti.ValuationSpectrum.patchTopology`, `TauCeti.ValuationSpectrum.compactSpace_patchTopology`, `TauCeti.ValuationSpectrum.isClopen_patchTopology_basicOpen`; LocalFieldsRamificationPartII §GF.1.

### 3.7 Coarsening to a divisor trivial on the relative constants

Let `w_a` be as in 3.6 and `𝔭 = {x ∈ O_{w_a} : w_a(a_d) ≤ N w_a(x) for some N > 0}` (with `0 ∈ 𝔭`). Prove: `𝔭` is a prime ideal containing `a_d` and no `a_i`, `i < d`; the coarsening `w_L` with ring `(O_{w_a})_𝔭` (`ValuationSubring.ofPrime`) has `a_d` in its maximal ideal and every `a_i`, `i < d`, a unit; `q_a` is anisotropic over `L_{w_L}`; and `w_L` is trivial on `k₁(t)`, hence on its relative algebraic closure in `L`, so it is a prime divisor of `L` over that field (Dittmann–Pop, Proposition 3.10, Claim 3, p. 13). The coarser henselization embeds in the finer (LocalFieldsRamificationPartII §§GF.1, GF.5). A nontrivial restriction to `k₁` would be a non-dyadic henselian valuation at which the unit tail is anisotropic, contradicting QuadraticFormInvariantsPartII §6.5. A nontrivial restriction to `k₁(t)` would make the relative algebraic closure `F` of `k₁(t)` in `L_{w_L}` a henselian field of Kronecker dimension `d − 1` on which `q_{a_{d−1}, …, a₀}` is a unit form of fold `d`, isotropic over `F` by QuadraticFormInvariantsPartII §6.5 applied to the non-finitely-generated field `F`. A nontrivial valuation of a function field in one variable trivial on its constants is a place (AlgebraicCurves Layer 0).

**Checks.**

- The bounds of 3.6 are needed for all `N`: with a single `N` the set `𝔭` need not be an ideal avoiding the lower slots.
- The dimension theorem must apply to fields that are not finitely generated, such as `F` above; QuadraticFormInvariantsPartII §6.5 has no finite-generation hypothesis.
- For the lexicographic example of 3.6 with `a_d = y` and `a_i = x`, `𝔭` consists of the elements whose value has positive first coordinate, and the coarsening is the `y`-adic valuation, in which `x` is a unit.

*Needs:* 3.6; Mathlib `ValuationSubring.ofPrime`; LocalFieldsRamificationPartII §§GF.1, GF.5; QuadraticFormInvariantsPartII §6.5; AlgebraicCurves Layer 0.

### 3.8 Refined geometric prime-divisor detection

Prove: let `L/K` be finite separable, `k₁ ⊆ K` a global subfield, `u = (u₂, …, u_{d−1})` algebraically independent over `k₁`, `t_i = u_i² − u_i`, and `q_a` a `k₁, t`-test presentation for `a_d ∈ Kˣ` that is anisotropic over `L(α_N)` for every `N > 0`, `α_N² − α_N = a_d/(a_{d−1} ⋯ a₁)^{2N}`. Then there is a prime divisor `w_L` of `L`, trivial on `k₁(t)`, with `w_L(a_d)` positive and odd and `q_a` anisotropic over `L_{w_L}` (Dittmann–Pop, Proposition 3.10, pp. 12–13). Use 3.6 and 3.7; once the other outer slots are units, 3.2 makes `w_L(a_d)` odd; triviality on `k₁(t)` gives equal characteristic, so `w_L` is geometric.

**Checks.**

- The hypothesis for all `N > 0` cannot be replaced by one large `N`: the compactness argument needs the whole decreasing family.
- If `q_a` is already isotropic over `L`, the hypothesis fails and nothing is claimed.
- `L/K` is separable in every application (it is `K_τ`, of degree at most two, 3.3).

*Needs:* 3.2, 3.3, 3.6, 3.7.

### Examples

The auxiliary equation `X² − X = a_d/θ²` may have a root in `K`; the interpreted field is then `K` itself, never a reducible quotient. In odd characteristic a repeated root likewise gives degree one, and `K_{θ,τ}` has degree at most four, not necessarily four.

The compact detector need not have rank one. Its value on `a_d` dominates every multiple of each lower slot; localizing at the prime of 3.7 kills the lower values while keeping a positive value on `a_d`. Only after triviality on the relative constants is proved does the curve dictionary identify the coarsening with a discrete divisor.

### Dependencies

Layer 0 (0.4, 0.16); Layer 1 (1.1–1.4); Layer 2 (2.1, 2.6); AdicCoefficientsAndComparisonsPartII §PA.6.10; QuadraticFormInvariantsPartII §§4.1, 4.2, 5.7, 6.5, 7.2; LocalFieldsRamificationPartII §§GF.1, GF.5; Tau Ceti valuation spectrum (`TauCeti.ValuationSpectrum.patchTopology` and its compactness and clopen lemmas); Mathlib `ValuationSubring.ofPrime`; on main AlgebraicCurves Layer 0.

## Layer 4: anisotropy sets and singleton divisors

Throughout, `d ≥ 3`, `H_d(K)` holds, and the data of Notations/Remarks 4.1 of Dittmann–Pop are fixed: a member `k₁` of 0.15, `u = (u₂, …, u_{d−1})` algebraically independent over `k₁`, `t = u² − u`, the relative constant field `k_t` of 0.16, `a_d ∈ Kˣ` and a `k₁, t`-test presentation `q_a` for `a_d` (2.6). This layer shows that the set of `τ` for which `q_a` stays anisotropic over all auxiliary fields `K_{θ,τ}` is a finite union of discrete balls, that its multiplicative stabilizer is the intersection of the corresponding valuation rings, and that every geometric prime divisor arises alone.

### 4.1 The anisotropy set `b_a`

Define `b_a = {τ ∈ K : q_a is anisotropic over K_{θ,τ} for every θ ∈ k_tˣ}` (Dittmann–Pop, Notations/Remarks 4.1(4), p. 14). The quantifier excludes `θ = 0` and includes `τ = 0`.

API:

- `τ ∈ b_a` exactly when, for every nonzero `θ ∈ k_t`, `q_a` is anisotropic over `K_{θ,τ}`.
- `b_a` does not depend on the choice of roots in 3.3.
- At fixed `d`, `b_a` is a fibre of one ring formula in the parameters `(k₁-code, u, ε, a₁, a₀, a_d)`, using 0.15 for `k₁`, 0.16 for `k_t` and 0.4, 3.3 for the auxiliary fields.
- If `q_a` is isotropic over `K`, then `b_a = ∅`.

**Checks.**

- An isotropic `q_a` gives `b_a = ∅`, not `K`.
- No expression `a_d/0²` is evaluated: `θ = 0` is outside the quantifier, although field division in Lean is total.
- If the detecting family of 4.3 is `{w}` with `w(a_d) = 1`, then `b_a` is the maximal ideal of `O_w`, zero included.

*Needs:* 0.4, 0.15, 0.16, 2.6, 3.3.

### 4.2 Multiplicative stabilizers

For a subset `B` of a field `K` define `Stab(B) = {x ∈ K : x y ∈ B for all y ∈ B}`, and put `O_a = Stab(b_a)` (Dittmann–Pop, Notations/Remarks 4.1(4), p. 14). No ring structure is asserted before 4.7.

API:

- `x ∈ Stab(B)` exactly when multiplication by `x` maps `B` into `B`.
- `Stab(∅) = K` and `Stab(K) = K`.
- For a subring `R ⊆ K`, `Stab(R) = R`, since `1 ∈ R` and `R` is multiplicatively closed.
- A field isomorphism carries `Stab(B)` to the stabilizer of the image of `B`.
- `Stab(B)` is defined by a ring formula from a formula for `B`, with one universal quantifier.

**Checks.**

- `Stab(∅) = K`, zero included.
- `Stab({1}) = {1}`: it omits `0` and is not a subring.
- For `ℤ ⊆ ℚ`, `Stab(ℤ) = ℤ`; replacing the condition `x B ⊆ B` by `x B = B` would give the units `{±1}` instead.

*Needs:* 4.1.

### 4.3 The finite detecting-divisor family `V_a`

Let `D_{K/k_t}` be the set of places of the function field `K/k_t` (prime divisors of `K` trivial on `k_t`, 0.2). Define `V_a = {w ∈ D_{K/k_t} : w(a_d) > 0 and q_a is anisotropic over K_w}` (Dittmann–Pop, Notations/Remarks 4.1(5), p. 14). Prove that `V_a` is finite and that `w(a_d)` is odd for every `w ∈ V_a`.

API:

- `w ∈ V_a` exactly when `w` is a place of `K/k_t` with `w(a_d) > 0` and `q_a` anisotropic over `K_w`.
- `V_a` lies in the support of the zero divisor of `a_d`, which is finite (AlgebraicCurves Layer 0).
- For `w ∈ V_a`, `w(a_d)` is a positive odd integer: the lower slots lie in `k_tˣ` and have value zero, and 3.2 applies.
- If `a_d ∈ k_tˣ`, then `V_a = ∅`.
- Through AlgebraicCurves Layer 12, members of `V_a` are the closed points of the normal proper `k_t`-curve of `K` at which `a_d` vanishes and `q_a` stays anisotropic.

**Checks.**

- A nonzero constant `a_d` has no zero, so `V_a = ∅`.
- If `q_a` is isotropic over `K`, no henselization makes it anisotropic, and `V_a = ∅`.
- If `a_d` has a unique zero `w`, of odd order, and `q_a` is anisotropic over `K_w`, then `V_a = {w}`; poles of `a_d` never enter.

*Needs:* 0.2, 0.16, 3.2; AlgebraicCurves Layers 0 and 12.

### 4.4 Strict discrete balls

For a normalized discrete valuation `w` of `K` and `a ∈ Kˣ` with `w(a) = 2m + 1 > 0` define `B_w(a) = {τ ∈ K : τ = 0 or 2w(τ) > w(a)}` (Dittmann–Pop, Notations/Remarks 4.1(5), p. 14, the set `b_w`). Thus `B_w(a) = 𝔪_w^{m+1}`, zero included; the order of `0` is never read as a finite integer. A translation to `TauCeti.Place.ord` must keep the explicit branch `τ = 0`, since `TauCeti.Place.ord` assigns `0` to `0`.

API:

- In the positive odd case, `τ ∈ B_w(a)` exactly when `τ = 0` or `w(τ) ≥ m + 1`.
- `0 ∈ B_w(a)`.
- `B_w(a)` is the underlying set of the ideal `𝔪_w^{m+1}` of the discrete valuation ring `O_w` (`TauCeti.Place.integers` for a place).
- A uniformizer `π` gives `π^{m+1} ∈ B_w(a)`, of the least nonzero value `m + 1`.
- Multiplication by a `w`-unit is a bijection of `B_w(a)`.

**Checks.**

- At `w(a) = 1`, a unit of `O_w` lies outside the ball and a uniformizer inside.
- At `w(a) = 3`, an element of value `1` lies outside and one of value `2` inside; `B_w(a) = π² O_w`.
- `0` lies inside although `TauCeti.Place.ord 0 = 0` would place it outside a ball described by `2 ord(τ) > w(a)` alone.

*Needs:* 0.2; Tau Ceti `TauCeti.Place`, `TauCeti.Place.ord`, `TauCeti.Place.integers`.

### 4.5 The stabilizer of a discrete ball

Prove: if `w` is a normalized discrete valuation and `w(a)` is positive and odd, then `Stab(B_w(a)) = O_w` (Dittmann–Pop, Notations/Remarks 4.1(5), p. 14). Elements of nonnegative value preserve the threshold; if `w(x) < 0`, take `y = π^{m+1}` at the least value, and `xy` falls below the threshold.

**Checks.**

- For `w` the `t`-adic valuation of `κ(t)` and `a = t³`, multiplication by `t` preserves `B_w(a) = t² κ[t]_{(t)}`, while `1/t` sends `t²` to `t ∉ B_w(a)`.
- With the condition `x B = B` the stabilizer would be `O_wˣ`, not `O_w`.

*Needs:* 4.2, 4.4.

### 4.6 The union-of-balls identity

Prove: `b_a = ⋃_{w ∈ V_a} B_w(a_d)`, and in particular `b_a = ∅` when `V_a = ∅` (Dittmann–Pop, Theorem 4.2(1), p. 14).

- For `τ ∈ b_a` put `L = K_τ` (3.3). Since every `θ_N = (a_{d−1} ⋯ a₁)^N` lies in `k_tˣ`, 3.8 gives a prime divisor `w_L` of `L` trivial on `k₁(t)` with `w_L(a_d)` positive and odd and `q_a` anisotropic over `L_{w_L}`. If `2w_L(τ) ≤ w_L(a_d)`, oddness makes it strict, so `w_L(β) < 0` and `a_d = (a_d β/τ)²(1 − 1/β)` is a square times a principal unit, contradicting anisotropy (QuadraticFormInvariantsPartII §4.2); so the restriction `w` of `w_L` to `K` lies in `V_a` and `τ ∈ B_w(a_d)`. The contradiction case has `τ ≠ 0` automatically.
- Conversely, for `w ∈ V_a`, `τ ∈ B_w(a_d)` and `θ ∈ k_tˣ`, both right-hand sides `a_d/θ²` and `τ²/a_d` have positive value, so Hensel's lemma puts `α` and `β` in `K_w`; as `q_a` is anisotropic over `K_w ⊇ K_{θ,τ}`, it is anisotropic over `K_{θ,τ}`.

**Checks.**

- If `V_a = ∅` then `b_a = ∅`.
- `θ` must range over `k_tˣ`, on which every detecting valuation is trivial: with `θ` allowed outside `k_t`, the value of `a_d/θ²` could be negative and `K_θ ⊄ K_w`.
- For `V_a = {w}` with `w(a_d) = 3`, the identity reads `b_a = 𝔪_w²`.

*Needs:* 3.3, 3.8, 4.1, 4.3, 4.4; QuadraticFormInvariantsPartII §4.2; LocalFieldsRamificationPartII §GF.1.

### 4.7 The intersection-of-rings identity

Prove: `O_a = Stab(b_a) = ⋂_{w ∈ V_a} O_w`; it is a subring, equal to `K` when `V_a = ∅` (Dittmann–Pop, Theorem 4.2(1), pp. 14–15). Each `O_w` preserves its own ball, hence the union. If `w(x) < 0` for some `w ∈ V_a`, choose `y` of the least value in `B_w(a_d)` and, at every other `w′ ∈ V_a`, of value so low that `xy ∉ B_{w′}(a_d)`: the places of `V_a` are distinct and finitely many, so `TauCeti.Place.exists_ne_zero_forall_mem_ord_eq` provides `y`. Then `y ∈ b_a` and `xy ∉ b_a`.

**Checks.**

- For two distinct places `P, Q`, the union of their balls is not additively closed (an element in one ball plus one in the other can lie in neither), but its stabilizer is `O_P ∩ O_Q`.
- The stabilizer of the empty union is `K`.
- No identity for stabilizers of arbitrary unions is claimed: `Stab(ℤ ∪ ℤ√2)` in `ℚ(√2)` is not `Stab(ℤ) ∩ Stab(ℤ√2)`.

*Needs:* 4.5, 4.6; `TauCeti.Place.exists_ne_zero_forall_mem_ord_eq`; AlgebraicCurves Layer 12.

### 4.8 Isolation of each geometric divisor

Prove: every geometric prime divisor `w` of `K` is `V_a = {w}` for some admissible data, and then `O_w = Stab(b_a)` (Dittmann–Pop, Theorem 4.2(2), p. 15). Take `k₁, u` from 2.5; `t = u² − u` keeps `Kw/k₁(t)` finite separable and `k_t = k_u`. View `K` as a function field in one variable over `k_t` with relatively closed constants; by `TauCeti.Place.exists_ord_eq_neg_and_forall_ne_ord_nonneg` with an odd `m ≥ max(1, 2g)` there is `f` whose only pole is of order `m` at `w`, and `a_d = 1/f` has `w` as its only zero. Choose `ε` and the tail by 2.8; `w ∈ V_a`, and no other place can be.

**Checks.**

- The sole pole of `f` becomes the sole zero of `a_d = 1/f`; using `f` itself would put `w` among the poles, which never enter `V_a`.
- The choice of `k₁` and `u` depends on `w`, but the arity of the parameter tuple does not.
- No smoothness of the curve over the possibly imperfect constants `k_t` is used; the normal proper curve of AlgebraicCurves Layer 12 suffices.

*Needs:* 2.5, 2.8, 4.7, 0.16; `TauCeti.Place.exists_ord_eq_neg_and_forall_ne_ord_nonneg`; AlgebraicCurves Layer 12.

### Examples

Let `w` be the `t`-adic place of `κ(t)` and `a = t³`. The strict ball is `{0}` together with the elements of order at least two; `t` preserves it and `1/t` does not, since `t² ∈ B_w(a)` but `t ∉ B_w(a)`. Its stabilizer is `O_w`. The integer order with `ord(0) = 0` would wrongly exclude `0` from the ball.

For two distinct places `P, Q`, to exclude `x` with negative `P`-order choose `y` of least `P`-ball order and very negative `Q`-order: `y` lies in the union and `xy` in neither ball. If `V_a` is empty the union is empty and the stabilizer is `K`; if it has one element the stabilizer is that place's ring. These two cases explain the properness filter of 5.2 and the singleton construction of 4.8.

### Dependencies

Layer 0 (0.2, 0.4, 0.15, 0.16); Layer 2 (2.5, 2.6, 2.8); Layer 3 (3.2, 3.3, 3.8); QuadraticFormInvariantsPartII §4.2; LocalFieldsRamificationPartII §GF.1; Tau Ceti `TauCeti.Place`, `TauCeti.Place.ord`, `TauCeti.Place.integers`, `TauCeti.Place.exists_ne_zero_forall_mem_ord_eq`, `TauCeti.Place.exists_ord_eq_neg_and_forall_ne_ord_nonneg`; on main AlgebraicCurves Layers 0 and 12.

## Layer 5: uniform formulas for geometric prime divisors

This layer turns Layer 4 into one formula for each Kronecker dimension `d ≥ 3`, supplies dimensions one and two by Rumely's valuations and Pop's shifted-ring construction, and states the uniform definability of geometric prime divisors in every dimension.

### 5.1 First-order niceness and unit triggers

Prove: for each `d ≥ 3` there is a ring formula, in the code of a member `k₁` of 0.15 and the slots `(a₀, a₁, ε)`, expressing that `a₀, a₁ ∈ k₁ˣ`, that the tail is `k₁`-nice, and that every `ε_i` is a unit at each finite place `v` of `k₁` with `v(a₁) > 0` (Dittmann–Pop, Definition 3.3, p. 8; Recipe 4.3, p. 15). Quantify over the finite valuation rings `O_v` of `k₁` given by 0.7(1), relativized to `k₁`; express `v(a₀) ≠ 0`, `v(a₁) < 0`, `v(a₁) > 0` and `v(ε) = 0` by membership of `a` or `a⁻¹` in `O_v` and its maximal ideal, with explicit nonzero guards; express dyadic as `2 ≠ 0 ∧ 2 ∈ 𝔪_v`, false in characteristic two.

- *Henselian isotropy at a finite place.* After scaling to integral coefficients, the nonsingular tail is isotropic over `k₁,v` exactly when there are a primitive integral vector `x` and a partial derivative `D` with `q(x) = 0`, or `D(x) ≠ 0` and `v(q(x)) > 2v(D(x))`: Hensel's lemma in one coordinate gives a zero over the henselization, and conversely a nonsingular zero over the immediate extension `k₁,v` is approximated by `k₁`-points keeping the strict inequality. Strict inequalities are maximal-ideal memberships of quotients. A nonzero isotropic vector of a nonsingular form has nonzero gradient in every characteristic.
- *Real places.* In characteristic zero the tail `⟨1, −a₀, −a₁, a₀a₁⟩` is anisotropic at an ordering exactly when `a₀ < 0` and `a₁ < 0` there. No ordering of `k₁` makes both negative exactly when `−1` lies in the preordering generated by `−a₀, −a₁` (RealAlgebraicGeometry Layer 1, extension of preorderings to orderings); in a number field every sum of squares is a sum of four squares (GlobalQuadraticForms §5.5), so `−1 = σ₀ − σ₁a₀ − σ₂a₁ + σ₃a₀a₁` with each `σ_i` a sum of four squares is a fixed formula.

**Checks.**

- The tail `⟨1, −3, −5, 15⟩` (`a₀ = 3`, `a₁ = 5`) is isotropic over `ℚ₂` (the Hilbert symbol `(5, 3)₂` is `1`) and anisotropic over `ℚ` (it is anisotropic over `ℚ₃`, `5` being a nonsquare modulo `3`); the Hensel test must accept the dyadic place without any isotropic vector over `ℚ`.
- At a real ordering with `a₀ = a₁ = −1`, the tail `⟨1, 1, 1, 1⟩` is definite and the formula must reject niceness; the four-square certificate of `−1` does not exist over `ℚ`.
- In characteristic two `2 = 0` lies in every maximal ideal, so the guard `2 ≠ 0` is what makes the dyadic trigger false; without it every place would be dyadic.

*Needs:* 0.7, 0.15, 2.1, 2.6; RealAlgebraicGeometry Layer 1; GlobalQuadraticForms §5.5; Mathlib `HenselianLocalRing`; LogicAndDefinabilityInNumberTheory §0.2.

### 5.2 The guarded geometric-valuation formula

For `d ≥ 3` let `raw_b(x)` express `x · b_a ⊆ b_a` with `b_a` from 4.1 (all nonzero `θ` in `k_t`, root fields of degree at most four through 0.4 and 3.3). Let `G(b)` express all admissibility conditions on the parameter block `b` (membership of `k₁` in 0.15, independence of `u` over `k₁` by 0.14(a), nonzero slots, 5.1), and `V(b)` that the set `raw_b` contains `0` and `1`, is closed under `+`, `−`, `·`, satisfies `raw_b(x) ∨ raw_b(y)` whenever `xy = 1`, and omits some element. Define `val_d(x; b) = G(b) ∧ V(b) ∧ raw_b(x)` (Dittmann–Pop, Recipe 4.3, pp. 14–15). Prove that on every field with `H_d` each fibre of `val_d` is empty or the ring of a geometric prime divisor.

A failed guard gives the empty fibre. Under `G`, Layer 4 identifies `raw_b` with `⋂_{w ∈ V_a} O_w`. An intersection of two or more distinct place rings fails the valuation-ring alternative (choose `x` with `w(x) < 0` and `w′(x) > 0` by `TauCeti.Place.exists_ne_zero_forall_mem_ord_eq`), and the empty intersection `K` fails properness; so every nonempty fibre is `O_w` for a single place `w` of `K/k_t`, a geometric prime divisor (0.2).

API:

- The parameter length of `val_d` depends only on `d`; the global subfield is named by its fixed-length code from 0.15.
- A failed admissibility or valuation-ring guard gives the empty fibre.
- Under `H_d`, every nonempty fibre is the ring of a geometric prime divisor.
- The formula has empty failed fibres in the sense of 0.3.

**Checks.**

- A tuple with a zero slot fails `G` and has empty fibre.
- For distinct places `P, Q` of `K/k_t`, `O_P ∩ O_Q` fails `V`, since some `x` has `v_P(x) < 0 < v_Q(x)`.
- The empty detecting set gives `raw_b = K`, rejected by the omitted-element clause.

*Needs:* 0.3, 0.4, 0.14, 0.15, 0.16, 3.3, 4.1, 4.7, 5.1; `TauCeti.Place.exists_ne_zero_forall_mem_ord_eq`; LogicAndDefinabilityInNumberTheory §0.2.

### 5.3 Uniform geometric prime divisors in dimension at least three

Prove: for each `d ≥ 3` the formula `val_d` of 5.2 defines, on every field with `H_d`, a family whose members are exactly the rings of the geometric prime divisors, with empty failed fibres (Dittmann–Pop, Theorem 1.3, p. 2; Theorem 4.2 and Recipe 4.3, pp. 14–15). Every fibre is a member or empty by 5.2, and every geometric prime divisor occurs by 4.8, its parameters satisfying `G` and `V`.

**Checks.**

- No resolution hypothesis enters for `d = 3`, even in characteristic two.
- Neither the parameter length nor the formula depends on `K` or on the divisor.
- For `K = ℚ(s, t)` the `t`-adic ring and the ring of the exceptional divisor of the blow-up of `(s, t) = (0, 0)` both occur; the arc valuation of 0.2, discrete of rank one but not a prime divisor, does not.

*Needs:* 4.8, 5.2.

### 5.4 Adapted smooth fibrations in dimension two

Prove: for every geometric prime divisor `v` of a finitely generated field `K` with `δ(K) = 2` there is a member `k₁` of 0.15 on which `v` is trivial such that `K` is the function field of a smooth projective geometrically integral `k₁`-curve (Dittmann–Pop, Remark 4.4, p. 15; Pop 2017, §3A, p. 2098). In characteristic zero take `k₁ = κ`: `K/κ` is a regular function field over a perfect field and its regular projective model is smooth. In characteristic `p` choose a smooth projective surface over the finite constant field with function field `K` (resolution of surfaces), on which the centre of `v` is a curve `C`, and a fibration of a blow-up over a curve whose generic fibre is smooth and for which `C` is horizontal; `k₁` is the relative closure of the function field of the base. The existence of such a fibration is a Bertini-type statement for pencils over the finite constant field.

**Checks.**

- For `K = 𝔽_p(s, t)` and `v` the `t`-adic valuation, `k₁ = 𝔽_p(s)` works: `K = k₁(t)` is the function field of `ℙ¹_{k₁}`, smooth, and `v` is trivial on `k₁`.
- The base `k₁ = 𝔽_p(t)` does not work for the same `v`, since `v` is nontrivial on `t`.
- Over `𝔽₂(s)` the curve `y² = x³ + s` is regular (at the point `x = 0`, `y² = s` the maximal ideal is generated by `x`, since `y² + s = x³`) but not smooth there (over `𝔽₂(√s)` it becomes the cusp `(y + √s)² = x³`); smoothness is a genuine condition on the choice of `k₁`.

*Needs:* 0.2, 0.15, 2.5; LefschetzPencilsAndVanishingCycles §§3.4–3.5; Stacks, chapter *Resolution of Surfaces*; AlgebraicCurves Layer 12.

### 5.5 The low-dimensional shifted-ring construction

Let `k` be a global field, `K/k` the function field of a smooth projective geometrically integral `k`-curve `X`, and `n` a prime with `n ≠ char K`: `n = 2` if `char k ≠ 2` and `n = 3` if `char k = 2`. Work first in `K(μ_{2n})`, of degree at most two over `K`, and assume `μ_{2n} ⊆ K` (Pop 2017, Notation/Remarks 3.1, 3.5, 4.1, 4.4, pp. 2098–2106). Put `c_n = 2n` if `char k ≠ 2` and `c_n = n` if `char k = 2`, and define:

- for `δ ∈ kˣ`, `H_δ = {β ∈ kˣ : v_s(β − 1) > 2 v_s(c_n) at every finite place s of k with v_s(δ) ≠ 0}`;
- for `f ∈ Kˣ` and `α ∈ kˣ`, `H^f_{δα} = {f ∪ α ∪ β : β ∈ H_δ} ⊆ H³(K, ℤ/n(2))`;
- for `u ∈ K` and `c ∈ k`, `u_c = 1 + c(u − 1)` and `u_{α,c} = u_c + α cⁿ (1 − u)ⁿ`, and `K_{u,α,c} = K(u_c^{1/n}, u_{α,c}^{1/n})`, of degree `1`, `n` or `n²`;
- `U^f_α = {u ∈ Kˣ : H^f_{δ*α} is nonzero over K_{u,α,c} for all c ∈ k and δ* ∈ kˣ}`;
- with the shifted operations `x ∗ y = x + y − 1` and `x ∘ y = (x − 1)(y − 1) + 1`, the sets `X₀ = {u ∈ U^f_α : u ∗ U^f_α ⊆ U^f_α}` and `R^f_α = {u ∈ X₀ : u ∘ X₀ ⊆ X₀}`.

Prove that these are uniformly definable at fixed `n`: `H_δ` through Rumely's valuation rings of `k` (0.7(1)), the nonvanishing of `H^f_{δα}` over `K_{u,α,c}` through 1.6(c) (`f ∪ α ≠ 0` and some `β ∈ H_δ` is not a reduced norm of `A_{f,α}`), and the root fields through 0.4 with degrees `1, n, n²` (at most nine).

API:

- `x ∗ y` has neutral element `1`; `x ∘ y` has neutral element `2`, which is the element `0` when `2 = 0`.
- `X₀` requires `u ∈ U^f_α` as well as `u ∗ U^f_α ⊆ U^f_α`; `R^f_α` requires `u ∈ X₀` as well as `u ∘ X₀ ⊆ X₀`.
- `β ∈ H_δ` exactly when `β ≠ 0` and `v_s(β − 1) > 2v_s(c_n)` at each finite `s` with `v_s(δ) ≠ 0`; `H_δ` is a subgroup containing `1`, and every `β ∈ H_δ` is an `n`-th power in the completion at each such `s` (Hensel's lemma for `Xⁿ − β` at `1`, since `v_s(n) ≤ v_s(c_n)`).
- The predicates have fixed arity and use the reduced-norm test of 1.6.

**Checks.**

- For every `x`, `x ∗ 1 = x` and `x ∘ 2 = x`; using `0` and `1` as the shifted neutral elements fails.
- In characteristic two the shifted multiplicative unit `2` is the field element `0`, distinct from the shifted additive zero `1`.
- For `k = 𝔽₂(t)`, `n = 3` and `δ = t`, the condition at the `t`-adic place is `v_t(β − 1) > 0`; it accepts `β = 1` and `β = 1 + t`, both cubes in `𝔽₂((t))`. The printed threshold `2v_s(2n)` is `2v_t(6) = ∞` in characteristic two and would exclude even `β = 1`.
- The raw multiplicative stabilizer of `U^f_α` is not `R^f_α`: both membership in `X₀` and stability under `∗` are required.

*Needs:* 0.4, 0.7, 1.6.

### 5.6 The key shifted-ring identity and singleton isolation

In the setting of 5.5 let `𝒳 → S` be a proper regular model, `U_f ⊆ S` the open set of Pop 2017 Notation/Remarks 3.1(5), `D_f` the set of closed points `P` of `X` with `v_P(f)` not divisible by `n`, and `D_{fα} = {P ∈ D_f : α is not an n-th power in κ(P)}`. Prove (Pop 2017, Lemmas 3.3, 3.6, 4.2, 4.3, 4.6, Key Lemma 4.7, §5A and Conclusion 5.2, pp. 2100–2109):

- (a) if `V_δ = {s : v_s(δ) = 0} ⊆ U_f` and `H^f_{δα} ≠ 0`, then every nonzero element of `H^f_{δα}` is nonzero at the completion at some `P ∈ D_{fα}`, and `H^f_{δ*α}` is nonzero there for every `δ* ∈ kˣ` (Lemmas 3.3 and 3.6, through 1.5 and Chebotarev);
- (b) under the same hypotheses `R^f_α = 1 + ⋂_{P ∈ D_{fα}} 𝔪_P` (Key Lemma 4.7);
- (c) for every closed point `P` of `X` there are `f` with pole divisor `mP`, `m` prime to `n`, `g = f + 1`, and `α ∈ kˣ` with `D_{fα} ∩ D_{gα} = {P}`, and then `(R^f_α)·(R^g_α) − 1 = 𝔪_P` and `O_P = Stab(𝔪_P)` (§5A, p. 2108);
- (d) filtering the resulting formulas by the proper valuation-ring axioms and by containment of `k`, every fibre is a place ring of `K/k` or empty, and every place occurs (Conclusion 5.2, p. 2109);
- (e) the same holds without `μ_{2n} ⊆ K`: places of `K(μ_{2n})/k(μ_{2n})` contract to places of `K/k`, every place of `K/k` extends, and contraction is a formula through 0.4.

For (c), `TauCeti.Place.exists_ord_eq_neg_and_forall_ne_ord_nonneg` gives `f` with `(f)_∞ = mP` for large `m` prime to `n`, `f` and `f + 1` have disjoint zeros, `α` is chosen non-`n`-th power in `κ(P)` by Chebotarev, and `TauCeti.Place.exists_ne_zero_forall_mem_ord_eq` gives the product identity. The formula cannot assume that every parameter tuple satisfies the hypotheses of (b); the filters of (d) handle the others.

**Checks.**

- If `H^f_{δα} = 0` the set `U^f_α` is empty and the construction gives nothing; the filters make the fibre empty.
- For `n = 2` the hypothesis `μ₄ ⊆ K` is arranged by adjoining `√−1`: over `ℚ(t)` the construction runs in `ℚ(i)(t)` and the place rings are contracted back to `ℚ(t)` by (e).
- `m` must be prime to `n`: if `n | m` then `P ∉ D_f` and `P` is invisible to `R^f_α`.

*Needs:* 1.5, 1.6, 5.5, 4.5; `TauCeti.Place.exists_ord_eq_neg_and_forall_ne_ord_nonneg`; `TauCeti.Place.exists_ne_zero_forall_mem_ord_eq`; Chebotarev Layer 10; FunctionFieldArithmetic §5.8; AlgebraicCurves Layers 6 and 12; LocalFieldsRamificationPartII §GF.1.

### 5.7 Uniform geometric prime divisors in every Kronecker dimension

State `exists_formula_isGeometricPrimeDivisor`: for every natural number `d` there are a natural number `m` and a ring formula `φ(x; y₁, …, y_m)` such that, on every finitely generated field `K` with `δ(K) = d` and with `char K ≠ 2` or `d ≤ 3`, every fibre of `φ` is empty or the ring of a geometric prime divisor of `K`, and every geometric prime divisor ring is a fibre (Dittmann–Pop, Theorem 1.3, p. 2, for `d ≥ 3`, and Remark 4.4, p. 15, for `d = 1, 2`; Pop 2017, Theorem 1.2, p. 2093). The Lean statement records the unconditional cases; under `RS(𝔽₂)` the same formula of 5.3 works for every characteristic-two field of dimension `d > 3`.

- `d = 0`: finite fields have no nontrivial valuations; the false formula works.
- `d = 1`: in a number field there is no geometric prime divisor; in a global function field all prime divisors are geometric. Use Rumely's family 0.7(1), guarded by the negation of the number-field sentence 0.7(2).
- `d = 2`: quantify over the members `k₁` of 0.15, apply 5.6 over `k₁` (with 5.4 guaranteeing that every geometric divisor is a place of some smooth fibration), and guard by the field, dimension and proper valuation-ring conditions.
- `d ≥ 3`: 5.3.

**Checks.**

- For `ℚ` there are no nonempty fibres; for `𝔽_q(t)` all places, including the place at infinity, occur.
- Characteristic two and dimension two use cubic symbols and need no resolution hypothesis.
- For `d = 2` and `K = ℚ(t)`, the `t`-adic ring occurs, and so does the ring of the place at infinity; the arithmetic `p`-adic extension `ℤ_(p)[t]_{(p)}` (residue field `𝔽_p(t)`) is a prime divisor but not geometric, and must not occur.

*Needs:* 0.3, 0.7, 0.8, 0.15, 5.3, 5.4, 5.6; AlgebraicCurves Layer 12.

### Examples

In a number field the finite-place formula 0.7(1) has nonempty fibres, but the geometric formula of 5.7 has none; in `𝔽_q(t)` every place, the place at infinity included, is geometric and occurs. The number-field sentence of 0.7(2) separates the two cases.

In characteristic two and Kronecker dimension two, the construction of 5.5 uses `n = 3`, `μ₆ = μ₃` adjoined, and root fields of degrees `1`, `3` or `9`; the shifted operations still have neutral elements `1` and `2 = 0`, and treating `0` as the shifted additive zero would break the first stabilization. In every dimension a failed slot or a raw stabilizer equal to `K` gives an empty fibre.

### Dependencies

Layer 0 (0.3, 0.4, 0.7, 0.8, 0.14, 0.15, 0.16); Layer 1 (1.5, 1.6); Layer 2 (2.1, 2.5, 2.6); Layer 3 (3.3); Layer 4 (4.1, 4.5, 4.7, 4.8); LogicAndDefinabilityInNumberTheory §0.2; LefschetzPencilsAndVanishingCycles §§3.4–3.5; FunctionFieldArithmetic §5.8; LocalFieldsRamificationPartII §GF.1; Tau Ceti `TauCeti.Place.exists_ne_zero_forall_mem_ord_eq`, `TauCeti.Place.exists_ord_eq_neg_and_forall_ne_ord_nonneg`; Mathlib `HenselianLocalRing`; on main RealAlgebraicGeometry Layer 1, GlobalQuadraticForms §5.5, Chebotarev Layer 10, AlgebraicCurves Layers 6 and 12; Stacks, chapter *Resolution of Surfaces*.

## Layer 6: definable finite normalizations

Let `K` be finitely generated with constant field `κ` and `T = (t₁, …, t_e)` a transcendence basis of `K` over `κ`, `e = trdeg(K/κ)` (possibly `0`). This layer defines the integral closure of the ring generated by `T` by intersecting the divisor rings of Layer 5 and, in characteristic zero, composite valuations with an arithmetic terminal place, uniformly at fixed Kronecker dimension.

### 6.1 Arithmetic and geometric normalizations

Put `A = O_κ` (the ring of integers) in characteristic zero and `A = κ` in positive characteristic. Define `R_T` as the integral closure of `A[T]` in `K` and `S_T` as the integral closure of `κ[T]` in `K` (Dittmann–Pop, Proposition 5.1 and proof, pp. 15–16). Elements are tested by monic equations.

API:

- `R_T` is the integral closure in `K` of the subring generated by `T` and the prime ring (`A` is integral over the prime ring, and integrality is transitive).
- `R_T ⊆ S_T`, with equality in positive characteristic.
- A field isomorphism carrying `T` to `T′` carries `R_T` and `S_T` to `R_{T′}` and `S_{T′}`.
- In characteristic zero `A[T]` and `κ[T]` are distinct base rings and are never identified.

**Checks.**

- `K = ℚ`, `T = ()`: `R_T = ℤ` and `S_T = ℚ`.
- `K = 𝔽_q(t)`, `T = (t)`: `R_T = S_T = 𝔽_q[t]`, and `1/t ∉ R_T`.
- `K` finite, `T = ()`: both normalizations are `K`.
- In `ℚ(t)`, `1/2` is algebraic over `ℤ[t]` but not integral, so `1/2 ∉ R_T`.

*Needs:* Mathlib `integralClosure`, `IsIntegrallyClosed`; 0.1.

### 6.2 Finite normalizations with full fraction field

Prove: `R_T` is a normal domain, finite as an `A[T]`-module and finitely generated as a ring, with fraction field `K`; `S_T` is a normal domain, finite over `κ[T]`, finitely generated as a `κ`-algebra, with fraction field `K` (Dittmann–Pop, proof of Proposition 5.1, p. 16). Finiteness holds for every finite extension `K/κ(T)`, separable or not (AlgebraicModuliForArithmeticGeometry §7.5, `arithmetic_normalization_genericallyEtale`, over the excellent bases `A[T]` and `κ[T]`). For `x ∈ K`, clearing the denominators of a monic equation over `κ(T)` gives `b ∈ A[T] ∖ {0}` with `bx ∈ R_T`.

**Checks.**

- Inseparable extensions are included: for `K = 𝔽₂(t^{1/2}, s)`, `T = (t, s)`, `R_T = 𝔽₂[t^{1/2}, s]`, finite over `𝔽₂[t, s]`.
- For `K = ℚ(t)`, `R_T = ℤ[t]` is a finitely generated ring, while `S_T = ℚ[t]` is not finitely generated as a ring, only as a `ℚ`-algebra.
- `Frac(R_T) = K` uses that every element has a nonzero `A[T]`-multiple in `R_T`; for `K = ℚ(√2)`, `T = ()`, `R_T = ℤ[√2]` and `√2/3 = (1/3)·√2`.

*Needs:* 6.1; AlgebraicModuliForArithmeticGeometry §7.5; Mathlib `IsFractionRing`, `Algebra.FiniteType`.

### 6.3 The height-one intersection theorem

Prove: a Noetherian normal domain `S` with fraction field `F` is the intersection of its localizations at height-one primes; if `S` is a field the family is empty and the intersection is `F = S` (Stacks, Lemma 10.157.6, tag 031T; Dittmann–Pop, proof of Proposition 5.1, p. 16, citing Matsumura, Theorem 11.5). Each localization at a height-one prime is a discrete valuation ring.

**Checks.**

- `S = ℤ`: the localizations `ℤ_(p)` intersect to `ℤ`.
- `S = k[x, y]`: the height-one localizations at `(x)`, `(y)` and all irreducible polynomials intersect to `k[x, y]`, although `(x, y)` is not among them.
- Normality is needed for the localizations to be discrete valuation rings: for `S = k[t², t³]` the localization at `(t², t³)` is not one, and the discrete valuation rings among the height-one localizations intersect to `k[t, t⁻¹] ⊋ S`.

*Needs:* Mathlib `IsIntegrallyClosed`, `IsDiscreteValuationRing`.

### 6.4 Geometric height-one intersection

Let `W_T` be the set of geometric prime divisors `w` of `K` with `T ⊆ O_w`. Prove `S_T = ⋂_{w ∈ W_T} O_w`, the empty intersection being `K` when `e = 0` (Dittmann–Pop, proof of Proposition 5.1, p. 16). Every `O_w` containing `κ[T]` contains its integral closure; conversely the height-one localizations of `S_T` (6.3) are geometric prime divisors containing `T`, by the dimension count of 0.2. Consequently `S_T` is definable with parameters `T` from the family of 5.7: an element lies in `S_T` exactly when it lies in every nonempty fibre containing `T`.

**Checks.**

- In characteristic zero this gives `S_T`, not `R_T`: for `K = ℚ(t)`, `⋂_{W_T} O_w = ℚ[t]`.
- For `e = 0` in characteristic zero, `W_∅` is empty (a number field has no geometric prime divisor) and the intersection is `K`.
- A divisor ring not containing `t`, such as the place at infinity of `ℚ(t)`, is not in `W_T`; including it would give `ℚ`.

*Needs:* 0.2, 5.7, 6.2, 6.3; AlgebraicCurves Layer 2.

### 6.5 Full geometric flags with an arithmetic terminal place

In characteristic zero, a *geometric prime `e`-divisor* of `K` is a valuation `w` trivial on `κ` with value group `ℤ^e` in the lexicographic order; equivalently `w = w₁ ∘ ⋯ ∘ w_e` with `w_e` a geometric prime divisor of `K` and each `w_i` a geometric prime divisor of the residue field of `w_{i+1}` (LocalFieldsRamificationPartII §GF.5; Dittmann–Pop, proof of Proposition 5.1, Case 2, p. 16). Its residue field `κ_w` is a finite extension of `κ`. For a finite place `v` of `κ_w` write `v ∘ w` for the composite valuation. Define `V_T = {v ∘ w : w a geometric prime e-divisor, v a finite place of κ_w, (v ∘ w)(t_i) ≥ 0 for all i}` (Dittmann–Pop, p. 16, where the index set must be read as the geometric prime `e`-divisors, not the rank-one set `W_T`). For `e = 0` the only flag is the trivial valuation and `V_∅` is the set of finite places of `κ`.

API:

- The residue field of a full geometric flag is finite over `κ`.
- The composite ring is the inverse image of the terminal valuation ring under the residue map of the flag (LocalFieldsRamificationPartII §GF.5).
- `x ∈ O_{v∘w}` exactly when `x` is integral for the flag and its residue lies in `O_v`.
- At fixed `e`, the family of composite rings is a fibre family of one formula: residue fields of definable valuation rings are interpreted quotients (LogicAndDefinabilityInNumberTheory §0.1, Dittmann–Pop Fact 5.2), the divisor families of 5.7 are applied `e` times in Kronecker dimensions `e + 1, e, …, 2`, and Rumely's family 0.7(1) gives `v`.

**Checks.**

- `K = ℚ`, `e = 0`: `⋂_{v ∈ V_∅} O_v = ℤ`; omitting the empty flag would give `ℚ`.
- In `ℚ(s, t)`, the flag "`s = 1`, then `t = 1`" has residue `ℚ` and rank two; appending the `3`-adic place gives rank three.
- The rank-one place `s = 1` of `ℚ(s, t)` has residue `ℚ(t)`, not a number field, and is not a full flag.
- A flag containing `T` need not contain `T` after an arbitrary terminal place is appended; `V_T` tests the composite ring itself.

*Needs:* 0.2, 0.7, 5.7, 6.1; LocalFieldsRamificationPartII §GF.5; LogicAndDefinabilityInNumberTheory §0.1.

### 6.6 Full flags refine pole-detecting divisors

Prove: in characteristic zero with `e ≥ 1`, for every `w ∈ W_T` there are a full geometric flag whose coarsest member is `w` and a terminal finite place such that the composite still contains `T`; hence `⋂_{V_T} O_{v∘w} ⊆ S_T` (Dittmann–Pop, proof of Proposition 5.1 and Lemma 5.3, pp. 16–17). Take a separating transcendence basis of the residue field `L` of `w` over `κ` (of size `e − 1`), write the residues of `T` as fractions over a localized polynomial base, remove the discriminant and the denominators, and choose an étale point over a `κ`-rational point; 2.7 embeds the function field in `κ′((π₂))⋯((π_e))`, the successive parameter valuations give the remaining flag, and all residues of `T` stay integral. A terminal prime of `κ′` outside the finitely many denominators keeps `T` integral.

**Checks.**

- For `e = 1`, `L` is already a number field and the remaining flag is empty.
- Refinement must keep every element of `T` integral, not only the constants: for `w` the `s`-adic place of `ℚ(s, t)`, the flag through the point `t = 0` keeps `t` integral, while one through `t = ∞` does not.

*Needs:* 2.7, 6.4, 6.5; AlgebraicCurves Layer 2.

### 6.7 Arithmetic flags detect nonintegral coefficients

Prove: for a number field `κ`, `A = O_κ` and independent variables `T`, the intersection of the composite rings of `V_T` inside `κ(T)` is `A[T]`; for `e = 0` it is `A = ⋂_v O_v` (Dittmann–Pop, Lemma 5.3, Claim, p. 17). By 6.6 an element `f` of the intersection lies in `κ[T]`. For `f ≠ 0` and a finite place `v`, write `f = c g` with `g ∈ O_v[T]` of nonzero reduction; choose `ζ` in the torus over the algebraic closure of the residue field with `ḡ(ζ) ≠ 0` (coordinates roots of unity of order prime to the residue characteristic), lift `ζ`, pass to `κ′ = κ(ζ)`, take the flag of regular parameters at `T ↦ ζ` and a prolongation `v′` of `v`. Then `g` is a unit for the composite, which lies in `V_T`, so `v(c) ≥ 0`.

**Checks.**

- For `f = (s + 2)/3` in `ℚ(s)`, `s ↦ −1` (lifting `2 ∈ 𝔽₃ˣ` to the root of unity `−1`) gives `s + 2 ↦ 1`, a unit, and the `3`-adic terminal place gives `f` negative value.
- `f = 0` needs no factorization.
- `e = 0` is treated directly; there is no positive-length flag.

*Needs:* 6.5, 6.6; GlobalNumberFields Layer 1.

### 6.8 Arithmetic normalization as a composite-valuation intersection

Prove: in characteristic zero `R_T = ⋂_{v∘w ∈ V_T} O_{v∘w}` (Dittmann–Pop, Lemma 5.3, pp. 16–17). For `K₀ = κ(T)`, 6.7 identifies the intersection with `A[T]`. For `K/K₀` finite, every flag and terminal place prolongs, restriction gives a flag of the same length, the `T`-integrality condition is preserved, and the set `V_T` for `K` is the set of all prolongations of `V_T` for `K₀`. AlgebraicModuliForArithmeticGeometry §7.5 (`ArithmeticCoefficients.valuation_prolongation_integrality`, with `ArithmeticCoefficients.root_coefficient_descent`) identifies the intersection of all prolongations with the integral closure of `A[T]` in `K`, with no assumption on the fraction field of the intersection.

**Checks.**

- `K = ℚ`, `T = ()`: the intersection is `ℤ` and excludes `1/2`.
- `K = ℚ(√5)`, `T = ()`: the prolongations of the `p`-adic places give `ℤ[(1 + √5)/2]`, not `ℤ[√5]`.
- Using one chosen prolongation per place instead of all would give a larger ring: for `ℚ(i)` and the prime `5 = (2 + i)(2 − i)`, keeping only `2 + i` admits `1/(2 − i)`.

*Needs:* 6.2, 6.7; AlgebraicModuliForArithmeticGeometry §7.5; LocalFieldsRamificationPartII §GF.1.

### 6.9 A uniform definable finitely generated normalization

Prove: for each natural number `d` there is a ring formula `ν_d(x; T, c)`, with `T` of the length `trdeg(K/κ)` determined by `d` and the characteristic (a finite case split on the characteristic sentence 0.10(e)), and `c` the fixed-length codes of the definable families used, such that on every finitely generated field with `δ(K) = d` and with `char K ≠ 2`, or `d ≤ 3`, or `RS(𝔽₂)`, and for every transcendence basis `T` of `K` over `κ`, `ν_d` defines `R_T`; and `R_T` is a normal finitely generated ring with fraction field `K` (Dittmann–Pop, Proposition 5.1 and Remark 5.4, pp. 16–17). In positive characteristic `R_T = S_T` (6.4); in characteristic zero use 6.8, interpreting each residue flag and applying 0.7(1) in the terminal number field; for `e = 0` use 0.7(3) directly. The formula is uniform in `T`; it does not choose a transcendence basis, and it never quantifies over polynomials of unbounded degree.

**Checks.**

- In `ℚ(s)`, `ν₂` gives `ℤ[s]`; the geometric intersection alone would give `ℚ[s]`.
- In `𝔽_q(t)`, `ν₁` gives `𝔽_q[t]`, the place `t = 0` excluding `1/t`.
- In `ℚ` (`d = 1`, `T = ()`), `ν₁` gives `ℤ`.

*Needs:* 0.7, 0.10, 5.7, 6.2, 6.4, 6.5, 6.8; LogicAndDefinabilityInNumberTheory §§0.1–0.2.

### Examples

For `K = ℚ` and `T = ()`, the geometric normalization is `ℚ` and the arithmetic normalization is `ℤ`: the geometric flag is empty and the terminal places are the primes, so `ℤ = ⋂_p ℤ_(p)` and `1/2` is excluded at `2`. Omitting the empty flag would return `ℚ`.

For `K = ℚ(s)`, `T = (s)`, the geometric intersection is `ℚ[s]` and the arithmetic one is `ℤ[s]`. To exclude `(s + 2)/3`, reduce the numerator modulo `3`, choose `s ↦ 2 ∈ 𝔽₃ˣ`, lift `2` to the root of unity `−1`, use the place `s = −1` and the `3`-adic place: the numerator maps to `1` and the element gets value `−1`.

For `ℚ(s, t)`, the flag "`s = 1`, then `t = 1`" has residue `ℚ`; the rank-one place `s = 1` has residue `ℚ(t)` and cannot be terminal. In characteristic `p`, `R_T = S_T`; for `𝔽_q(t)` both are `𝔽_q[t]`. Finite inseparable extensions still need finite normalization, and no separability hypothesis enters.

### Dependencies

Layer 0 (0.1, 0.2, 0.7, 0.10); Layer 2 (2.7); Layer 5 (5.7); AlgebraicModuliForArithmeticGeometry §7.5; LocalFieldsRamificationPartII §§GF.1, GF.5; LogicAndDefinabilityInNumberTheory §§0.1–0.2; Mathlib `integralClosure`, `IsIntegrallyClosed`, `IsDiscreteValuationRing`, `IsFractionRing`, `Algebra.FiniteType`; on main AlgebraicCurves Layer 2, GlobalNumberFields Layer 1; Stacks, tag 031T.

## Layer 7: bi-interpretability with arithmetic

This layer interprets ℤ in every infinite finitely generated integral domain and every infinite finitely generated field, with definable comparison isomorphisms, following Aschenbrenner–Khélif–Naziazeno–Scanlon (AKNS) and Dittmann–Pop. Interpretations, their semantics and composition are LogicAndDefinabilityInNumberTheory §§0.1–0.2; homotopy and bi-interpretation are the notions requested as gap:biinterpretation-homotopy (AKNS, §2.3, p. 10).

### 7.1 Interpretation tools for finitely generated rings

Prove (AKNS, Lemmas 2.7, 2.10, 2.11, Corollaries 2.12, 2.14–2.16, 2.24 and Lemma 2.26, pp. 12–18):

- (a) every self-interpretation of ℤ is homotopic to the identity (Lemma 2.7);
- (b) for a finite-dimensional Noetherian Jacobson ring `A` and `c ∈ A`, the localization `A[c⁻¹]` is interpretable in `A`, the set of powers of `c` being definable up to the saturation given by Jacobson radicals (Lemma 2.10);
- (c) for `A` Noetherian of finite rank, the class of finite `A`-algebras generated by at most `n` elements as modules, with bounded presentations, is uniformly interpretable in `A`, and for a flat `A`-algebra `A′` so are the base changes (Lemma 2.11, Corollary 2.12);
- (d) every finitely generated ring and every localization of one at a definable multiplicative set is interpretable in ℤ (Corollary 2.14);
- (e) if `A` is bi-interpretable with ℤ, every self-interpretation of `A` is homotopic to the identity, and isomorphisms between interpreted copies are definable (Corollaries 2.15–2.16);
- (f) a finitely generated structure `A` in a finite language is bi-interpretable with ℤ exactly when there is an interpretation of `A` in ℤ and a definable injection of `A` into a power of ℤ compatible with it, any two interpretations of `A` in ℤ being homotopic (Proposition 2.23, Corollary 2.24 after Nies, Lemma 2.26).

Arithmetic codes of finite sequences are taken modulo equality of the decoded sequences; a Gödel code need not be unique.

**Checks.**

- `ℤ[1/2]` is interpreted in `ℤ` by pairs `(a, k)`, `k ≥ 0`, standing for `a/2^k` modulo `a·2^{k′} = a′·2^k`, and `x ↦ (2^{ν(x)} x, ν(x))` with `ν(x)` least is a definable injection into `ℤ²`, so (f) applies.
- For (a): the self-interpretation of `ℤ` on pairs of natural numbers modulo `(a, b) ∼ (c, d) ⟺ a + d = b + c` is homotopic to the identity, the comparison `(a, b) ↦ a − b` being definable.
- In (c) the bound on the number of module generators is essential; the class of all finite algebras over `ℤ` is not uniformly interpretable.

*Needs:* LogicAndDefinabilityInNumberTheory §§0.1–0.2 and gap:biinterpretation-homotopy; 0.4, 0.7.

### 7.2 Arithmetic coding in dimension-one domains

Prove: every infinite finitely generated integral domain `D` of Krull dimension one is bi-interpretable with ℤ (AKNS, Lemmas 3.7 and 3.8, pp. 22–23). In characteristic zero, `O_K` and ℤ are definable in `K = Frac(D)` (0.7(3)), `D ⊆ O_K[1/c]` for an integer `c > 0`, and `a ↦ (k₁(a), …, k_r(a), ν(a))` with `ν(a)` least such that `c^{ν(a)} a ∈ O_K` and `k_i` its coordinates in an integral basis is a definable injection into `ℤ^{r+1}`; 7.1(f) concludes. In characteristic `p`, choose `t` by Noether normalization with `D` finite free over `𝔽_p[t]`; Rumely's definability of `κ[t]` and of the bijection of 0.7(6) give a definable injection `𝔽_p[t] ↪ t^ℕ`, and `D ≅ 𝔽_p[t]^r` definably.

**Checks.**

- For `D = ℤ[1/6]` the least-denominator code is `a ↦ (6^{ν(a)} a, ν(a))`, definable and injective.
- `D = 𝔽₂[t, t⁻¹]` is not finite over `𝔽₂[t]`, but it is finite free of rank two over `𝔽₂[s]`, `s = t + t⁻¹`, since `t² − s t + 1 = 0`; Noether normalization chooses such an `s`.
- Normality is not needed here: `ℤ[√5]` is covered, with `ℤ[√5] ⊆ O_K = ℤ[(1 + √5)/2]` and `c = 1`.

*Needs:* 0.7, 7.1.

### 7.3 Finiteness of the arithmetic core

Let `B` be a finitely generated integral domain with fraction field `K`. In characteristic zero put `D = B ∩ κ`; in characteristic `p` choose `t ∈ B` transcendental over `𝔽_p` and put `D = B ∩ L`, `L` the relative algebraic closure of `𝔽_p(t)` in `K`. Prove: `D` is definable in `B` (by 0.14 and 0.13 applied in `K`, interpreted in `B` by LogicAndDefinabilityInNumberTheory §0.3), finitely generated, one-dimensional and Noetherian (AKNS, Lemma 3.6 with Corollary 1.9, pp. 7 and 22). `D` need not be integrally closed; its normalization `D̃` is finite over `D` (`D` is Japanese), the conductor of `D̃/D` contains a nonzero `c ∈ D`, and `D[c⁻¹]` is a Dedekind domain. If `B` is normal, `D` is already normal and Dedekind: an element of `Frac(D)` integral over `D` is integral over `B` and algebraic over the prime field (resp. over `𝔽_p(t)`).

**Checks.**

- For `B = ℤ[√5, t]` the core is `ℤ[√5]`, finitely generated and one-dimensional but not integrally closed; AKNS's assertion that the core is "therefore a Dedekind domain" needs the localization at the conductor element `c = 2`.
- In characteristic `p` the choice of `t` matters: for `B = 𝔽_p[s, t]` and the choice `t`, the core is `𝔽_p[t]`.
- Two-dimensional subrings need not be finitely generated, which is why the arithmetic dimension one is required (AKNS, remark before Lemma 3.6, p. 22).

*Needs:* 0.13, 0.14, 7.1; LogicAndDefinabilityInNumberTheory §0.3.

### 7.4 Arithmetic bi-interpretation of infinite finitely generated domains

Prove: every infinite finitely generated integral domain `B` is bi-interpretable with ℤ in the ring language (AKNS, Theorem 3.1 and proof, pp. 21–24). With the core `D` of 7.3, choose `c ∈ D ∖ {0}`, in the conductor of `D`, such that `B_c` is finite over `D_c[x₁, …, x_m]` and free as a `D_c`-module (AKNS, Propositions 3.3–3.4); let `y₁, …, y_n` generate `B_c` as a module over `D_c[x]` and `P₁, …, P_ℓ` generate the relation ideal. Every point `a ∈ D_c^m` lifts to `(a, b)` over a domain `D′ ⊇ D_c` generated by at most `n` elements as a module; ideals of the Dedekind domain `D_c` are two-generated, so these `D′` form a uniformly interpretable class (7.1(c)). The relation `E(a, D′, b, e, p)`, expressing `p(a, b) = e` by membership of `p − e` in the ideal generated by `x_i − a_i` and `y_j − b_j` in `B_c ⊗_{D_c} D′`, is definable, and `p = q` exactly when they have the same `E`-values. With `D_c` bi-interpretable with ℤ (7.2) and 7.1(d)–(e), the comparison isomorphism of the double interpretation is definable, giving the bi-interpretation.

**Checks.**

- Mutual interpretability alone is not bi-interpretability: the comparison isomorphisms must be definable, which is what the relation `E` provides.
- The number of module generators of `D′` is bounded by `n`, but the degree of `p` is not; ideal membership in the tensor algebra avoids an unbounded list of coefficients.
- Finite domains are excluded: a finite field is not bi-interpretable with ℤ (it interprets only finite structures).

*Needs:* 7.1, 7.2, 7.3.

### 7.5 A field and a definable fraction-domain presentation

Prove: if `R ⊆ K` is a subring definable with parameters and `Frac(R) = K`, then `K` and `R` are bi-interpretable (Dittmann–Pop, proof of the bi-interpretability theorem, p. 17; AKNS, Examples 2.9(4), p. 12). `K` is interpreted in `R` by LogicAndDefinabilityInNumberTheory §0.3 (pairs `(a, b)`, `b ≠ 0`, modulo `ad = bc`); the comparison from `x ∈ K` to its class is the definable total relation `x b = a`, total because `Frac(R) = K`; `R` is interpreted in `K` by its defining formula, and the comparison sends `r` to the class of `(r, 1)`.

**Checks.**

- For `R = ℤ ⊆ ℚ` the relation `xb = a` is the ordinary fraction presentation.
- Both comparison maps must be shown definable; interpretations in both directions alone do not suffice.
- The definition of `R` may use parameters from `K`; for `R_T` of 6.9 they are `T` and the codes.

*Needs:* LogicAndDefinabilityInNumberTheory §0.3 and gap:biinterpretation-homotopy; 6.9.

### 7.6 Bi-interpretability of infinite finitely generated fields

Prove: every infinite finitely generated field `K` is bi-interpretable with ℤ in the ring language, provided `RS(𝔽₂)` holds when `char K = 2` and `δ(K) > 3` (Dittmann–Pop, Theorem 1.2, p. 2, proof pp. 15–17; Remark 4.4, p. 15, for `δ(K) ≤ 2`). An infinite finitely generated field has `δ(K) ≥ 1`. Choose a transcendence basis `T` over `κ`; `R_T` is a definable normal finitely generated domain with fraction field `K` (6.9), infinite, hence bi-interpretable with ℤ (7.4); 7.5 transfers to `K`, and composition (LogicAndDefinabilityInNumberTheory §0.2) concludes. In Kronecker dimensions one and two the divisor formulas are those of 5.7, with no resolution hypothesis in any characteristic. No carrier for interpretations exists in Mathlib, so this theorem is not stated in Lean.

**Checks.**

- `ℚ`, `𝔽₂(t)` and `𝔽₂(s, t)` are covered without resolution.
- Finite fields are excluded.
- For `K = ℚ`, `R_∅ = ℤ` and the bi-interpretation is the fraction presentation of 7.5.

*Needs:* 5.7, 6.9, 7.4, 7.5; LogicAndDefinabilityInNumberTheory §0.2.

### Examples

For `ℚ`, the normalization is `ℤ` and the interpreted field is the set of pairs `(a, b)`, `b ≠ 0`, modulo `ad = bc`. The comparison graph from `x ∈ ℚ` is `xb = a`, and an integer `r` corresponds to `(r, 1)`; both graphs are definable, which is stronger than interpreting each structure in the other.

The ring `ℤ[√5, t]` has arithmetic core `ℤ[√5]`, one-dimensional and finitely generated but not integrally closed, so it is not Dedekind; inverting `2`, which lies in the conductor of `ℤ[(1 + √5)/2]`, makes it Dedekind, and the two-generator codes are then legitimate. For the normal rings `R_T` of Layer 6 the core is already Dedekind.

### Dependencies

LogicAndDefinabilityInNumberTheory §§0.1–0.3 and gap:biinterpretation-homotopy; Layer 0 (0.4, 0.7, 0.13, 0.14); Layer 5 (5.7); Layer 6 (6.9).

## Layer 8: single sentences for finitely generated fields

### 8.1 From arithmetic bi-interpretation to a characterizing sentence

Prove: if `M` is a finitely generated structure in a finite language and `M` is bi-interpretable with ℤ, then there is a sentence `σ` such that a finitely generated structure of that language satisfies `σ` exactly when it is isomorphic to `M` (AKNS, Proposition 2.28 and Lemma 2.29, p. 20, after Nies). Name the finitely many parameters of the bi-interpretation and a generating tuple; Lemma 2.29 packages the coded presentation and the comparison into one formula, which forces any finitely generated model to be generated by the corresponding tuple and to be the standard model coded in its interpreted copy of ℤ; existentially quantify the parameters.

**Checks.**

- The pure ring `ℚ` is not finitely generated as a ring, so the statement does not apply to it directly; 8.2 passes to a language with inverse.
- The conclusion concerns finitely generated models only; no sentence characterizes `ℤ` among all rings, by compactness.
- The finite-language hypothesis is essential for Lemma 2.29.

*Needs:* 7.1; gap:biinterpretation-homotopy.

### 8.2 Total inverse and finite generation

Expand the ring language by a unary symbol `inv` interpreted in a field by `inv(0) = 0` and `inv(x) = x⁻¹` for `x ≠ 0`. Prove: a field is finitely generated as a field (`Field.FG`) exactly when its expansion is finitely generated as a structure; the expansion is definitional on fields (the graph of `inv` is `(x = 0 ∧ y = 0) ∨ xy = 1`); bi-interpretability with ℤ transfers to the expansion; and every sentence of the expanded language is equivalent on fields to a ring sentence, by replacing each `inv`-term with an existentially quantified variable satisfying the graph (Dittmann–Pop, §1, p. 2, and final paragraph, p. 17). A substructure of the expansion is closed under the field operations and `inv`, hence a subfield.

**Checks.**

- The expansion of `ℚ` is generated by the empty tuple, while its ring reduct is not finitely generated as a ring.
- On a commutative ring that is not a field the graph `(x = 0 ∧ y = 0) ∨ xy = 1` is not total: in `ℤ/4` the element `2` has no partner, so the expansion and the elimination are made on the class of fields only.
- Elimination is uniform in the sentence and introduces no parameters.

*Needs:* Mathlib `Field.FG`, `FirstOrder.Language.ring`; 7.6.

### 8.3 Sentences for finite fields

For a prime power `q` let `θ_q` be the conjunction of the field axioms with the ring sentence saying that there are `q` pairwise distinct elements and every element equals one of them. Prove that a field satisfies `θ_q` exactly when it has `q` elements, hence exactly when it is isomorphic to `𝔽_q` (`FiniteField.ringEquivOfCardEq`, the witnesses supplying the finiteness instances; Dittmann–Pop, Theorem 1.1, finite case, p. 2).

API:

- A field realizes `θ_q` exactly when its cardinality is `q`.
- Every model of `θ_q` among commutative rings is a field isomorphic to `𝔽_q`.
- `θ_q` is a sentence: no free variables and no parameters.

**Checks.**

- `𝔽₂` realizes `θ₂` and `𝔽₃` does not.
- `𝔽₄` realizes `θ₄` and `𝔽₂` does not, although the characteristics agree.
- `ℤ/4` has four elements but fails `θ₄`, failing the field conjunct.
- `ℚ` fails every `θ_q`.

*Needs:* Mathlib `FirstOrder.Language.ring`, `FiniteField.ringEquivOfCardEq`.

### 8.4 One sentence for a finitely generated integral domain

State `exists_sentence_realize_iff_nonempty_ringEquiv_of_isDomain`: for every finitely generated integral domain `B` there is a ring sentence `σ` such that a finitely generated commutative ring satisfies `σ` exactly when it is isomorphic to `B` (AKNS, Corollary 3.2, p. 21). For finite `B`, a finite field, take `θ_q` (8.3); for infinite `B` combine 7.4 with 8.1 in the ring language, in which `B` is a finitely generated structure.

**Checks.**

- `B = ℤ`: the sentence holds in `ℤ` and fails in `ℤ[i]`, `ℤ[1/2]` and `ℤ × ℤ`, finitely generated rings not isomorphic to `ℤ`.
- `B = 𝔽₉`: the sentence is `θ₉`.
- The comparison class consists of finitely generated rings: `ℚ` is not finitely generated as a ring and the statement makes no claim about it, and the sentence of `ℤ` holds in rings elementarily equivalent to `ℤ` that are not finitely generated.

*Needs:* 7.4, 8.1, 8.3.

### 8.5 A single field axiom in every characteristic

State `exists_sentence_realize_iff_nonempty_ringEquiv`: for every finitely generated field `K` with `char K ≠ 2` or `δ(K) ≤ 3` there is a sentence `θ_K` of the ring language such that a finitely generated field `L` satisfies `θ_K` exactly when `L ≅ K` (Dittmann–Pop, Theorem 1.1, p. 2, and final paragraph, p. 17). Under `RS(𝔽₂)` the same holds for every finitely generated field of characteristic two; the comparison fields `L` carry no resolution hypothesis in any case. For finite `K` use 8.3. For infinite `K`, 7.6 gives bi-interpretability, 8.2 transfers it to the finitely generated expansion with `inv`, 8.1 gives a sentence there among finitely generated expansions, and eliminating `inv` gives the ring sentence; conjoining the field axioms makes every finitely generated field model an expansion of the right kind.

**Checks.**

- The sentence distinguishes `K` from every finitely generated field, not only from fields satisfying `H_d`.
- No claim is made about arbitrary fields: `θ_ℚ` has non-finitely-generated models by compactness (an elementary extension of `ℚ`).
- For `K = 𝔽₄`, `θ_K = θ₄`; for `K = ℚ`, `θ_K` holds in `ℚ` and fails in `ℚ(i)` and in `ℚ(t)`.

*Needs:* 7.6, 8.1, 8.2, 8.3; Mathlib `FirstOrder.Language.Sentence.Realize`.

### Examples

The total-inverse expansion of `ℚ` is generated by the empty tuple once `0` and `1` are present; its ring reduct is not a finitely generated ring. The transfer of 8.1 therefore runs in the expanded language and only then eliminates `inv`.

For `𝔽₄`, the exact-cardinality field sentence has four witnesses; it fails in `𝔽₂` despite equal characteristic and in `ℤ/4`, which is not a field. For infinite `K`, the sentence characterizes `K` among finitely generated fields `L`, and `L` itself has no resolution hypothesis.

### Dependencies

Layer 7 (7.1, 7.4, 7.6); gap:biinterpretation-homotopy; Mathlib `FirstOrder.Language.ring`, `FirstOrder.Language.Sentence.Realize`, `Field.FG`, `FiniteField.ringEquivOfCardEq`.

## Downstream consumers

The uniform divisor families of 5.7 are the interface for defining subrings of finitely generated fields by intersections; their empty failed fibres let later universal quantifiers range over parameters without meeting spurious subsets. The normalization formula of 6.9 exports a finitely generated normal domain with the original field as fraction field; 7.6 exports definable comparison isomorphisms, not merely a pair of interpretations; 8.5 is the end theorem. The uniform constant field and dependence formulas of Layer 0 are available to any roadmap that needs first-order control of transcendence degree in finitely generated fields, and the local–global principles of Layer 1 to any consumer of Kato's conjectures in the cases stated.

## Worked examples

**A dimension-three field in characteristic zero.** For `K = ℚ(s, t)`: `δ(K) = 3`, `κ = ℚ`, `k₁ = ℚ`, `u₂ = s`, `t₂ = s² − s`, `k_t = ℚ(s)`. For the `t`-adic divisor `w`, take `a₃ = t` (sole zero `w` of order one on the `ℚ(s)`-line), `ε₂ ∈ ℚˣ` generic, and a nice tail anisotropic over the residue field `ℚ(s)` at the specialization `s² − s = ε₂`; then `V_a = {w}`, `b_a = t ℚ(s)[t]_{(t)}`, and `Stab(b_a) = O_w`.

**Characteristic two, dimension three.** For `K = 𝔽₂(s, t, u)` no resolution hypothesis enters: 1.4 applies with the model `ℙ³`, the tails use the last factor `x² + xy + a₀ y²`, and the auxiliary polynomials `X² − X − c` are separable.

**The arithmetic normalization of `ℚ(s)`.** The geometric intersection gives `ℚ[s]`; the flags "place `s = ζ`, then a `p`-adic place of `ℚ(ζ)`" exclude every non-integral coefficient, as for `(s + 2)/3` at `ζ = −1`, `p = 3`.

**The single sentence of `ℚ`.** `R_∅ = ℤ` is defined by 0.7(3); the fraction presentation gives the bi-interpretation; in the inverse-expanded language `ℚ` is generated by the empty tuple, 8.1 gives a sentence, and eliminating `inv` gives a ring sentence true in `ℚ` and false in every other finitely generated field.

## References

- **dittmann_pop** — Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*, Annals of Mathematics 198 (2023), 1203–1227; arXiv:2012.01307v2 (author version of 27 April 2023, the pages cited): Theorems 1.1–1.3, Facts 2.1–2.3, Facts 3.1, Proposition 3.2, Definition 3.3, Propositions 3.4, 3.8, 3.10, Lemmas 3.5, 3.6, 3.9, Definition 3.7, Notations/Remarks 4.1, Theorem 4.2, Recipe 4.3, Remark 4.4, Proposition 5.1, Fact 5.2, Lemma 5.3, Remark 5.4.
- **poonen_uniform** — Bjorn Poonen, *Uniform first-order definitions in finitely generated fields*, Duke Mathematical Journal 138 (2007), 1–21; arXiv:math/0507486v1 (numbering cited): Theorems 1.1–1.4, 2.2, 2.3, Lemmas 3.2–3.7, 4.1, 4.3–4.9, Proposition 4.10, Lemma 5.2, Appendix A.
- **akns** — Matthias Aschenbrenner, Anatole Khélif, Eudes Naziazeno and Thomas Scanlon, *The logical complexity of finitely generated commutative rings*, International Mathematics Research Notices 2020, 112–166; arXiv:1610.04768v1 (numbering cited): §2.3, Lemmas 2.7, 2.10, 2.11, 2.26, 2.29, Corollaries 1.9, 2.12, 2.14–2.16, 2.24, Examples 2.9, Propositions 2.23, 2.28, 3.3, 3.4, Lemmas 3.6–3.8, Theorem 3.1, Corollary 3.2.
- **pop_eei2** — Florian Pop, *Elementary equivalence versus isomorphism, II*, Algebra & Number Theory 11 (2017), 2091–2111: Theorems 1.1, 1.2, 2.1, §2C, Notation/Remarks 3.1, 3.5, 4.1, 4.4, Lemmas 3.3, 3.6, 4.2, 4.3, 4.6, Key Lemma 4.7, Recipe 5.1, Conclusion 5.2.
- **pop_eei** — Florian Pop, *Elementary equivalence versus isomorphism*, Inventiones Mathematicae 150 (2002), 385–408; arXiv:math/0109144v1 (numbering cited): Facts 1.1–1.3, Theorem 1.4.
- **rumely** — Robert S. Rumely, *Undecidability and definability for the theory of global fields*, Transactions of the AMS 262 (1980), 195–217: Introduction I–III, pp. 195–196; §2; p. 211.
- **kerz_saito** — Moritz Kerz and Shuji Saito, *Cohomological Hasse principle and motivic cohomology for arithmetic schemes*, Publications Mathématiques de l'IHÉS 115 (2012), 123–183; arXiv:1010.5930v3: (0.4), Theorem 8.1.
- **jannsen_hasse** — Uwe Jannsen, *Hasse principles for higher-dimensional fields*, Annals of Mathematics 183 (2016), 1–71; arXiv:0910.2803v2: Theorems 0.4, 0.6 (0.10 in the published version), Corollary 0.8, Definition 4.18.
- **kato_hasse** — Kazuya Kato, *A Hasse principle for two dimensional global fields*, Journal für die reine und angewandte Mathematik 366 (1986), 142–180: Corollary, p. 145; p. 149.
- **merkurjev_suslin** — A. S. Merkurjev and A. A. Suslin, *K-cohomology of Severi–Brauer varieties and the norm residue homomorphism*, Izvestiya Akademii Nauk SSSR 46 (1982); Theorem 12.2.
- **moret_bailly** — Laurent Moret-Bailly, *Elliptic curves and Hilbert's tenth problem for algebraic function fields over real and p-adic fields*, Journal für die reine und angewandte Mathematik 587 (2005), 77–143: Lemma 11.1.
- **lenstra_cm** — Hendrik W. Lenstra Jr., *Complex multiplication structure of elliptic curves*, Journal of Number Theory 56 (1996), 227–241: Theorem 1(a).
- **serre_albanese** — Jean-Pierre Serre, *Morphismes universels et variété d'Albanese*, Séminaire Claude Chevalley 4 (1958–1959), exposé 10: Théorème 5, p. 10-10.
- **waterhouse** — William C. Waterhouse, *Abelian varieties over finite fields*, Annales scientifiques de l'École Normale Supérieure 2 (1969), 521–560: Theorem 4.1.
- **stacks** — The Stacks project, *Commutative Algebra*: Lemma 10.157.6 (tag 031T), Theorem 10.160.8 (tag 032A), Lemma 10.160.10 (tag 0C0S); chapter *Resolution of Surfaces*.

