# Roadmap: the Fourier–Deligne transform

**Summary.** This roadmap builds the ℓ-adic Fourier transform of Deligne, Katz and Laumon on the étale cohomology of schemes in characteristic `p`. It starts from the finite Fourier transform of `Λ`-valued functions on finite vector spaces and from the six-operation, Frobenius and perverse foundations of EtaleCohomologyFoundations and EtaleDualityAndPerverseSheaves. It then constructs kernel transforms between compactifiable schemes with their composition law and trace functions, and the character sheaves `ℒ_χ` of smooth connected commutative groups over finite fields obtained from Lang torsors, in particular the Artin–Schreier sheaves `ℒ_ψ` and the Kummer sheaves. With these it defines the transform `FT_ψ` on a vector bundle over any `𝔽_p`-scheme. The end theorems are the equality `FT_! = FT_*` through local acyclicity at infinity; inversion `FT^{E^∨} ∘ FT^E ≅ [−1]^*(−r)` as explicit data; duality; functoriality in the base and in linear maps, with external products, convolution and Plancherel; the trace-function identity and the Frobenius exchange; and perverse `t`-exactness over a field. On the affine line it proves the exchange of the three types of simple perverse sheaves, the theory of Fourier sheaves, the Gauss-sum transform of Kummer sheaves, Laumon's description of the local monodromy of the transform, and the definition and tame values of the three local Fourier transforms.

## Scope and ownership

This roadmap owns:

- the finite Fourier transform of functions with values in a commutative ring carrying a nondegenerate additive character, and its inversion, Plancherel and convolution identities (Tau Ceti's orthogonality and Poisson summation over linear codes cover primitive characters of finite rings into domains on `R^ι` with the dot product; the version here allows any coefficient ring with a nondegenerate character and an abstract vector space with its dual);
- kernel transforms `Φ_𝒦` between separated finitely presented schemes over a qcqs base, their composition isomorphism with its associativity, unit and base-change coherence, and their trace functions;
- trace functions of bounded constructible complexes of finite Tor amplitude over finite fields, as functions on rational points with values in `Λ`;
- the Lang torsor of a smooth connected commutative group scheme of finite type over `𝔽_q`, the character sheaves `ℒ_χ`, the Artin–Schreier sheaves `ℒ_ψ(f)` and the Kummer sheaves `ℒ_χ(g)`, with their tensor, pullback, base-extension and trace laws, their vanishing cohomology and the local behaviour of `ℒ_ψ(f)` on the line, with the comparison of the Galois group, inertia and upper-numbering filtration of a henselian discrete valuation ring with those of its completion;
- the Fourier–Deligne transform on a vector bundle over an `𝔽_p`-scheme and every statement of Layers 3–5.

The following are used from their owners and are not stated again here. The six operations, Tate twists, local acyclicity, duality, the field perverse `t`-structure, adic realization and Frobenius belong to EtaleCohomologyFoundations; the rank-one lisse sheaf attached to a finite étale torsor and a character is that roadmap's construction, which Layer 2 applies to Lang torsors. Smooth-pullback exactness, perverse Artin vanishing for affine morphisms and the classification of simple perverse sheaves are EtaleDualityAndPerverseSheaves §§2.7 and 2.10; the Euler–Poincaré formula with Swan conductors is its §5.2. Nearby and vanishing cycles over henselian traits are LefschetzPencilsAndVanishingCycles §§0.3–0.8. Breaks, Swan conductors and the Artin–Schreier characters of local fields are ArithmeticGaloisRepresentations §§3.1 and 3.7, stated there for complete discretely valued fields, on the lower ramification groups, the absolute upper filtration and the open-subgroup identity `G_K^u ∩ G_L = G_L^{ψ_{L/K}(u)}` of RamificationOfCompleteDiscretelyValuedFields §§3a.1, 4a.1 and 4a.2, which §5.1 also uses directly; §2.7 transports them to every henselian discrete valuation ring with perfect residue field through the finite étale equivalence of AdicEtaleGeometry §A1.0.5, and RamificationOfCompleteDiscretelyValuedFields §4a.3 proves the same transport for the maximal unramified extension of a complete field. The finite and rational trace formulas are InverseGaloisAndArithmeticFundamentalGroups §§IG.0.T2–IG.0.T3. Lang's theorem is ReductiveGroupsPartII §RG2.3.7; the torsor statement of §2.1 is its consequence for commutative groups, proved here at the generality of group schemes that need not be affine. AutomorphicLFunctionsAndLocalFactors §§AL.3.10.2 and AL.3.10.4 construct the Lang isogenies of the Jacobian and of the generalized Jacobian `Pic⁰_D` of a curve over `𝔽_q` and read rank-one local systems on the open curve off their torsors: for a character `χ` of `Pic⁰_D(𝔽_q)` and a degree-one class `a`, their local system is the pullback of the character sheaf `ℒ_χ` of §2.2 for `G = Pic⁰_D` along the Abel map `x ↦ [x] − a`, with the same normalization, since in both the geometric Frobenius at a closed point `v` of degree `d` acts by `χ([v] − d·a)` (here as `χ(N x)`, there as `χ(ϖ_v) = ρ(Frob_{v,geom})` with the idele character trivial on `a`). §§2.1–2.2 state the construction for every smooth connected commutative group of finite type. Relative Spec, geometric vector bundles and duals are AlgebraicVectorBundles §L1A (Layer 4, relative Spec) and §L2B (Layer 7, geometric vector bundles).

Gauss, Jacobi and Kloosterman sums as numbers belong to CharacterSumsOverFiniteFields. Kloosterman sheaves and multiplicative convolution on `𝔾_m` belong to CongruenceSpectralGap §4.2b. Convolution of perverse sheaves on abelian varieties and the coherent Fourier–Mukai transform of D-modules (the setting of LAU96, §§3 and 7) belong to SheafConvolutionOnAbelianVarieties. Weights and purity, including Weil II (WII Théorème (3.2.3), WII line 2438) and the weight estimates for curves, belong to DeligneWeightsAndPurity; no statement here mentions a weight.

Not part of this roadmap: the stationary-phase theorem for local Fourier transforms on wild modules with its rank and slope formulas and the equivalences (LAU87 Théorème (2.4.3), LAU87 lines 1103–1139), which rests on the Gabber–Katz canonical extension (LAU87 Théorème (2.2.2.2), LAU87 lines 911–913); the product formula for local constants (LAU87 §3); relative perversity over a base (KL85 §1.2); and the weight statements of KL85 Théorème (2.2.1) and Scholie (2.3.1) (KL85 lines 413–437). They form the motivation for a future roadmap recorded at the end.

## Conventions

- `p` is a prime and `𝔽_p = ℤ/p`. A coefficient ring `Λ` is a nonzero finite commutative ring. An additive character is a group homomorphism `ψ : 𝔽_p → Λ^×` (Mathlib's `AddChar (ZMod p) Λ`). It is **nondegenerate** when `ψ(1) − 1` is a unit of `Λ`. Then `ψ(a) − 1` is a unit for every `a ≠ 0`, `p` is a unit of `Λ`, and the characteristic `N` of `Λ` is prime to `p`, so `N` is invertible on every `𝔽_p`-scheme (§0.1). For a finite local `Λ` of residue characteristic `ℓ ≠ p`, nondegenerate means nontrivial (KL85 lines 442–446).
- Adic coefficients are the ring of integers `O_E` of a finite extension `E/ℚ_ℓ`, `ℓ ≠ p`, containing a primitive `p`-th root of unity, with a nontrivial `ψ : 𝔽_p → O_E^×`; every reduction `ψ mod λ^n` is nondegenerate. `E`, `O_E` and `ℚ̄_ℓ` objects are those of EtaleCohomologyFoundations §§F.4.1–F.4.6, and every adic statement is the realization of the torsion statement at each level.
- `D⁺(X, Λ)` is the bounded-below derived category of étale `Λ`-module sheaves of EtaleCohomologyFoundations §F.1; `Rf_!` is the compact-support direct image of its §0.8 on separated finitely presented morphisms between qcqs schemes; `⊠_S` is `p_1^*(−) ⊗^L p_2^*(−)`. Complexes are cohomological, `Hⁱ(K[r]) = H^{i+r}(K)`; `Λ(1) = Λ ⊗_{ℤ/N} μ_N` (EtaleCohomologyFoundations §F.0.3), so `Λ(−r)[−2r]` sits in degree `2r`.
- Frobenius. Over `𝔽_q` the arithmetic Frobenius is `z ↦ z^q`; the geometric Frobenius `Frob` is its inverse and acts on `Λ(−1)` by `q` (EtaleCohomologyFoundations §§F.10.1–F.10.2). For `x ∈ X(𝔽_{qⁿ})`, `Frob_x` is the geometric `qⁿ`-Frobenius acting on the stalk at a geometric point over `x`.
- The trace function of `K` at `x ∈ X(𝔽_{qⁿ})` is the Lefschetz number of `Frob_x` on the perfect complex `K_x̄` (§1.4). Witness: `t_{Λ(−1)[−1]} = −qⁿ`.
- Lang torsor. For a commutative group `G` over `𝔽_q`, written additively, with `q`-Frobenius `F`, the Lang map is `L = F − id`. The character sheaf `ℒ_χ` of `χ : G(𝔽_q) → Λ^×` is the `χ`-isotypic part of `L_*Λ` for the translation action `(a·s)(t) = s(t + a)`; equivalently the push-out of the Lang torsor along `χ^{−1}` (LAU87 lines 306–312). With this choice `Frob_x` acts on `ℒ_χ` by `χ(N(x))`. Witness: for `G = 𝔾_a` over `𝔽_3` and `x = 1`, the trace is `ψ(1)`, a primitive cube root of unity; the Lang map `id − F` with the same isotypic part, or `F − id` with the `χ^{−1}`-isotypic part, gives `ψ(−1) = ψ(1)²`. The convention of KATZ01 lines 418–432 (Lang map `x ↦ x − x^q`, monodromy through `ψ`) defines the same sheaf, since `id − F = [−1] ∘ (F − id)`.
- Fourier–Deligne transform. For a finite locally free `E` of constant rank `r` on `S`, `V(E) = Spec_S Sym(E^∨)` (AlgebraicVectorBundles §L2B: Layer 7, geometric vector bundles), with projections `pr`, `pr'` from `V(E) ×_S V(E^∨)` and pairing `⟨ , ⟩`. Then `FT_ψ(K) = Rpr'_!(pr^*K ⊗ ⟨ , ⟩^*ℒ_ψ)[r]` (LAU87 Définition (1.2.1.1), LAU87 lines 378–382). Witness on `𝔸¹`: `FT_ψ(Λ_{𝔸¹}) ≅ σ'_*Λ(−1)[−1]`, with trace `−q` at `0'` and `0` elsewhere, matching `−Σ_{x ∈ 𝔽_q} ψ(Tr(x x'))`.
- `[−1]` is the inverse on `V(E)`; `σ`, `σ'` are zero sections. Inversion reads `FT^{E^∨}_ψ ∘ FT^E_ψ ≅ [−1]^*(−r)`, the double dual being identified with `E` by the negative of the canonical map (LAU87 lines 396–404).
- The finite Fourier transform of a function `t` on a finite vector space `W` over `𝔽_q` is `(𝔉_ψ t)(w') = Σ_{w ∈ W} t(w) ψ(Tr_{𝔽_q/𝔽_p} w'(w))`, without normalizing factor or sign. The sheaf transform has trace `(−1)^r 𝔉_ψ(t_K)` (§3.8).
- Henselian traits follow EtaleCohomologyFoundations §F.3a; local Galois groups `G_s`, inertia `I_s` and wild inertia `P_s` at a closed point `s` of a curve are those of the henselization at `s`, and their upper-numbering filtrations, breaks and Swan conductors are those of the completion at `s`, through the comparison of §2.7. On the line, `A = Spec k[x]` and `A' = Spec k[x']` with pairing `x x'`, compactified by `D ⊃ A` and `D' ⊃ A'` at `∞` and `∞'` (LAU87 lines 584–605).

## Exact supplier contracts

### From Mathlib

Pinned at `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`; each name was read at the pin.

- `AddChar` (`Mathlib/Algebra/Group/AddChar.lean`) for `ψ`; `AddChar.IsPrimitive` and `AddChar.IsPrimitive.of_ne_one` (`Mathlib/NumberTheory/LegendreSymbol/AddCharacter.lean`). The orthogonality `AddChar.sum_eq_zero_of_ne_one` there assumes the target is a domain; §0.1 proves orthogonality for nondegenerate characters into any commutative ring.
- `Algebra.trace` and `Algebra.norm` on finite fields, `FiniteField.trace_to_zmod_nondegenerate` and `FiniteField.algebraMap_trace_eq_sum_pow` (`Mathlib/FieldTheory/Finite/Trace.lean`), `FiniteField.norm_surjective` (`Mathlib/FieldTheory/Finite/GaloisField.lean`).
- `ZMod.dft` and `ZMod.stdAddChar` (`Mathlib/Analysis/Fourier/ZMod.lean`, `Mathlib/Analysis/SpecialFunctions/Complex/CircleAddChar.lean`): the complex discrete Fourier transform `𝓕 Φ k = Σ_j stdAddChar(−(j k)) Φ j`, used only as a comparison in §0.2.
- `IsKrasner.of_completeSpace` (`Mathlib/Analysis/Normed/Field/Krasner.lean`), Krasner's lemma over a complete nontrivially normed field, as one route to the completion comparison of §2.7.
- `gaussSum`, `mul_gaussSum_inv_eq_gaussSum` and `gaussSum_mul_gaussSum_eq_card` (`Mathlib/NumberTheory/GaussSum.lean`; the last assumes a domain target and a primitive `ψ`), used in a Check of §5.4.
- `continuousCohomology` and `ContinuousCohomology.zeroIso` (`Mathlib/RepresentationTheory/Homological/ContCohomology/Basic.lean`, `LowDegree.lean`): continuous cohomology of a topological representation and `H⁰` as its invariants; the long exact sequence and `H¹` with trivial coefficients are Tau Ceti's (below). Used in the Artin–Schreier identification of §5.1.
- `Module.Dual`, `DerivedCategory`, `CategoryTheory.Triangulated.TStructure` (`Mathlib/CategoryTheory/Triangulated/TStructure/Basic.lean`), `AlgebraicGeometry.Scheme`, and `CategoryTheory.GrpObj` in `Over S` for group schemes (`Mathlib/CategoryTheory/Monoidal/Grp.lean`).

### From Tau Ceti

Pinned at `2fd255d997f47c0b5d834ee416c7015d55444ce5`.

- `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf` with `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.dual`, `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.evalIso` and `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.pullbackDualIso` (`TauCeti/AlgebraicGeometry/VectorBundle/FiniteLocallyFree.lean` and `TauCeti/AlgebraicGeometry/VectorBundle/Dual/`): the sheaves `E`, `E^∨`, biduality and pullback of duals, used by the pairing of §3.1.
- The `q`-power Frobenius of `TauCeti/AlgebraicGeometry/Frobenius/FiniteField.lean`, with `AlgebraicGeometry.Scheme.Hom.qPowerFrobenius_baseChange`, used through SchemeAndStackFoundations §0.29.
- `Submodule.sum_addChar_dotProduct`, `Submodule.sum_sum_addChar_dotProduct_smul` and `AddChar.sum_apply_dotProduct` (`TauCeti/InformationTheory/Coding/CharacterSum.lean`): for a primitive additive character `ψ : R → S` of a finite commutative ring `R` into a domain `S` and a submodule `C ⊂ R^ι`, `Σ_{c ∈ C} ψ(c · y)` is `|C|` for `y` in the Euclidean dual `C^⊥` and `0` otherwise; Poisson summation `Σ_{c ∈ C} f̂(c) = |C| Σ_{y ∈ C^⊥} f(y)` for `f̂(x) = Σ_y ψ(x · y) f(y)` and `f` with values in an `S`-module; and the case `C = R^ι`. For `R = k`, `W = k^ι` with the dot-product pairing, `S = Λ` a domain and `ψ_k = ψ ∘ Tr` with `ψ` nondegenerate (which makes `ψ_k` primitive), these are §0.2's identities for the constant function and for the indicator of a subspace, the latter summed against a `Λ`-valued `f`, and §0.1's orthogonality for `ι = 1`; §§0.1–0.2 agree with them there. Neither form contains the other: §§0.1–0.2 allow any commutative `Λ` with a nondegenerate `ψ`, an abstract `W` and its dual, while the Tau Ceti statements allow a finite ring `R` and a primitive character into a domain that need not be nondegenerate (`ψ(1) = ζ_p` in `ℤ[ζ_p]`, where `ζ_p − 1` is not a unit).
- `TauCeti.additiveHilbert90` (`TauCeti/FieldTheory/GaloisCohomology/AdditiveHilbert90.lean`): `H¹(G_F, Fˢ) = 0` in Mathlib's continuous cohomology for every field `F`, with `Fˢ` discrete (`TauCeti.ForcedDiscrete`). It is one of four inputs of the Artin–Schreier identification of `F/℘(F)` with the continuous characters `G_F → 𝔽_p` in characteristic `p`, used in the slope-one twisting lemma of §5.1. The second is the long exact sequence of continuous cohomology of a short exact sequence of discrete modules over a compact group, all in the universe of the group: `TauCeti.ContCohomology.DiscreteShortExact` (`TauCeti/RepresentationTheory/Homological/ContCohomology/ShortExact.lean`) with `TauCeti.ContCohomology.DiscreteShortExact.longExact_exact₁` and `TauCeti.ContCohomology.DiscreteShortExact.longExact_exact₃` (`TauCeti/RepresentationTheory/Homological/ContCohomology/HomologySequence.lean`), applied in degree `0` to `0 → 𝔽_p → Fˢ → Fˢ → 0` (`x ↦ x^p − x`, onto because `x^p − x − a` is separable, `𝔽_p` lifted to the universe of `F`) over the profinite `G_F`. The third is Mathlib's `ContinuousCohomology.zeroIso` (`Mathlib/RepresentationTheory/Homological/ContCohomology/LowDegree.lean`), `H⁰` as invariants, with `(Fˢ)^{G_F} = F`. The fourth is `TauCeti.ContCohomology.H1EquivOfSmulEqSelf` (`TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean`) with `TauCeti.ContCohomology.explicitH1AddEquivContinuousCohomology` (`TauCeti/RepresentationTheory/Homological/ContCohomology/CohomologyComparison.lean`), `H¹` with trivial coefficients as continuous homomorphisms. Exactness at `H¹(G_F, 𝔽_p)` with `H¹(G_F, Fˢ) = 0` makes the connecting map `F → H¹(G_F, 𝔽_p)` onto, and exactness at `H⁰(G_F, Fˢ)` makes its kernel `℘(F)`.
- `TauCeti.Place` (`TauCeti/FieldTheory/FunctionField/Place/Basic.lean`): a place of `F/k`, a surjective `ℤᵐ⁰`-valued valuation of `F` trivial on `k`, with its order `ord_P` (junk value `ord_P 0 = 0`) and residue field. `TauCeti.Place.exists_reduced_artinSchreier_representative` (`TauCeti/FieldTheory/FunctionField/Place/ArtinSchreier.lean`): for a prime `p`, `F` of characteristic `p` and a place with perfect residue field, every `u ∈ F` has some `w ∈ F` with `u − (w^p − w)` integral or of negative order prime to `p`. `TauCeti.ord_reduced_artinSchreier_representative_eq` and `TauCeti.ne_pow_sub_self_of_exists_reduced_artinSchreier_pole` (`TauCeti/RingTheory/Valuation/Discrete/PowerSubSelf.lean`): for a `ℤᵐ⁰`-valued valuation of a commutative ring of exponential characteristic `p`, two representatives `u − (w^p − w)` and `u − (z^p − z)` of negative orders prime to `p` have the same order, and a `u` with one such representative is not of the form `w^p − w`. §5.1 applies them at the `ϖ_0`-adic place of `L_0 = k((ϖ_0))`, whose residue field `k` is algebraically closed, hence perfect; the termwise normal form of a representative and the coefficient `c(b)` there are this roadmap's own, since the pinned statements control only the leading pole.

### From TauCetiRoadmap.EtaleCohomologyFoundations

- §§G.1–G.3 and §0.8: compactifications and `ClassicalAlgebraic.properSupports`, the functor `Rf_!` on `D⁺` torsion for separated finitely presented maps of qcqs schemes, its composition and forget-supports maps and its base change through §F.2.1 `VanishingCycles.properBaseChange`. §0.7: extension by zero and the localization triangles.
- §F.0.1–F.0.2: constructible sheaves, finite étale torsors, deck maps and `VanishingCycles.lisseMonodromyEquiv`; §F.0.3 `VanishingCycles.etaleTateTwists`; §F.0.4 `VanishingCycles.universalHomeomorphismEtaleEquivalence`, including the absolute and `q`-power Frobenius.
- §F.1: `Dᵇ_c`, `Dᵇ_ctf`, Tor amplitude; §F.2.2 smooth base change; §F.2.3 `VanishingCycles.localAcyclicity`; §F.2.4 `VanishingCycles.etaleCompactSupports`; §§F.2.6–F.2.7 Künneth and the compact-support projection formula on Noetherian bases; §F.3 finiteness and `VanishingCycles.compactSupportFiniteness`; §F.3a henselian traits and the tame character.
- §§F.4.1–F.4.6: normalized adic systems, realization, rationalization and `VanishingCycles.adicFunctoriality`.
- §F.5 `VanishingCycles.etaleExceptionalInverseImage` and `VanishingCycles.etaleVerdierDuality`; §F.6 `VanishingCycles.smoothPurity`; §0.9 `ClassicalAlgebraic.cycleClasses` (projective-bundle formula); §F.8 `VanishingCycles.fieldPerverseTStructure` and `VanishingCycles.intermediateExtension`.
- §§F.10.1–F.10.3: `VanishingCycles.frobeniusFixedPoints`, `VanishingCycles.frobeniusCohomology`, `PerfectComplex.lefschetzNumber`.

What EtaleCohomologyFoundations must provide (gap:torsor-character-sheaf): for every scheme `X`, finite group `A`, finite étale `A`-torsor `P → X` and character `χ : A → Λ^×`, the rank-one lisse sheaf `P ×^A Λ(χ)` (sections: `A`-equivariant maps `P → Λ` twisted by `χ`), identified with an isotypic part of the pushforward of `Λ_P`; its monodromy through `VanishingCycles.lisseMonodromyEquiv`; tensor compatibility in `χ`; functoriality along homomorphisms `A → A'` with the pushed-out torsor; pullback; coefficient change; no invertibility of `|A|` assumed (section §F.0.3, rank-one lisse sheaves from torsors and characters).

What EtaleCohomologyFoundations must provide (gap:projection-formula-qcqs): for every separated finitely presented `f : X → Y` between qcqs schemes and torsion `Λ`, the projection isomorphisms `Rf_!(B ⊗^L f^*A) ≅ Rf_!B ⊗^L A` for `A ∈ D⁺(Y, Λ)`, `B ∈ D⁺(X, Λ)` with one of `A`, `B` of finite Tor amplitude, natural and compatible with composition and base change; §F.2.7 gives them on Noetherian bases for `Dᵇ_ctf` objects (section §0.8 and §F.5, the projection formula of the six-operation structure).

What EtaleCohomologyFoundations must provide (gap:smooth-exceptional-pullback): for a smooth separated finitely presented `f : X → Y` of relative dimension `d` between Noetherian schemes on which the characteristic of `Λ` is invertible, the natural isomorphism `f^!M ≅ f^*M(d)[2d]` for `M ∈ D⁺(Y, Λ)` and the smooth base change `f^* RHom(K, M) ≅ RHom(f^*K, f^*M)` for `K ∈ Dᵇ_c(Y, Λ)`; over separated finite-type schemes over a field these are EtaleDualityAndPerverseSheaves §2.7 (section §F.6).

### From TauCetiRoadmap.EnhancedDerivedSheaves

§§0.1–0.4: the enhanced derived categories, tensor–Hom and coherent derived functors, in which all composition and base-change isomorphisms of Layers 1 and 3 are constructed before passing to homotopy categories.

### From TauCetiRoadmap.SchemeAndStackFoundations

§0.29 scheme Frobenius: the absolute and relative Frobenius of a scheme of characteristic `p`, and the `q`-power Frobenius of a scheme over `𝔽_q` with its base change along extensions of finite fields; §2.9 the sheaves `𝔾_a`, `𝔾_m`, `μ_n`; §2.11 the Kummer and Artin–Schreier sequences and exactness and base change of finite pushforward.

### From TauCetiRoadmap.AlgebraicVectorBundles

§L1A (Layer 4, relative Spec): relative Spec; §L2B (Layer 7, geometric vector bundles): the total space `V(E) = Spec_S Sym(E^∨)` of a finite locally free `E`, that is the linear scheme of `E^∨`, with fibrewise addition, zero sections, duals and base change.

### From TauCetiRoadmap.ReductiveGroupsPartII

§RG2.3.7 *lang-theorem* (a): for a smooth geometrically connected group of finite type over `𝔽_q`, `g ↦ g^{−1}F(g)` is onto `H(𝔽̄_q)` (`Lang.lang_surjective` for affine groups); its Check *lang_not_connected* records failure for disconnected groups.

### From TauCetiRoadmap.AdicEtaleGeometry

§A1.0.5 (*henselian-finite-etale-approximation*) (a): for a ring `R`, a non-zero-divisor `t` and an ideal `I` with `(R, tI)` henselian, base change to the `(t, I)`-adic completion is an equivalence of the categories of finite étale `R[t⁻¹]`- and `R^∧[t⁻¹]`-algebras; §2.7 uses it for a henselian discrete valuation ring with `t = π` and `I = 𝔪`.

### From TauCetiRoadmap.RamificationOfCompleteDiscretelyValuedFields

§3a.1 the lower ramification groups `G_i` of a finite Galois extension of a complete discretely valued field, with `G_i/G_{i+1}` embedded in the additive residue field for `i ≥ 1`; §4a.1 the absolute upper filtration `G_K^u`, `G_K^{u+}` over a perfect residue field, with restriction onto `Gal(M/K)^u` for every finite Galois `M/K`; §4a.2 the transition function `ψ_{L/K}` of a finite separable `L/K` and the open-subgroup identity `G_K^u ∩ G_L = G_L^{ψ_{L/K}(u)}` for `u ≥ −1`. Used in the slope-one twisting lemma of §5.1.

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

§3.1 breaks, the break decomposition and Swan conductors of continuous representations of the Galois group of a complete discretely valued field with perfect residue field, with additivity and invariance under coefficient extension (transported to henselian traits by §2.7); §3.7 *Artin–Schreier characters*: for `v(u) = −m < 0`, `p ∤ m`, the extension `α^p − α = u` has the single break `m` and every nontrivial character has Swan conductor `m`; for `V` with breaks `< m`, `V ⊗ ψ` has all breaks `m`.

### From TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups

§IG.0.T2 `VanishingCycles.etaleTraceFormulaFinite` (finite coefficients, `Dᵇ_ctf`, every `r ≥ 1`, with its `Rf_!` Fubini identity for local terms) and §IG.0.T3 `VanishingCycles.etaleTraceFormula` (rational coefficients).

### From TauCetiRoadmap.LefschetzPencilsAndVanishingCycles

§0.3 `Ψ_η` and `Ψ` over a henselian trait for arbitrary schemes over it; §0.5 `RΨ`, `RΦ` and the specialization triangle; §0.6 functoriality, proper base change and the specialization sequence; §0.7 constructibility and change of trait; §0.8 adic and rational coefficients.

### From TauCetiRoadmap.EtaleDualityAndPerverseSheaves

§2.7 `smoothPullbackPerverseExactness` (for smooth `f` of relative dimension `d`, `f^![−d] ≅ f^*[d](d)` and `f^*[d]` is `t`-exact) and `perverseArtinVanishing` (for affine `f`, `Rf_*` is right and `Rf_!` left `t`-exact), over a field, for noetherian torsion coefficients and their `O_E`, `E` realizations; §2.10 `simplePerverseSheavesClassification` for field coefficients; §5.2 `curveEulerPoincareSwan` for lisse sheaves on curves over algebraically closed fields, with finite coefficient fields and `ℚ̄_ℓ`.

## How to read the build

Layer 0 is algebra: nondegenerate additive characters with values in a finite ring and the finite Fourier transform of functions, which is the trace-function shadow of everything later. Layer 1 builds kernel transforms on `D⁺` over a qcqs base, their composition coherence, constructibility and the function–sheaf dictionary through trace functions. Layer 2 constructs Lang torsors and character sheaves, proves their multiplicativity, traces and vanishing cohomology, and specializes to Artin–Schreier and Kummer sheaves and, after matching the ramification of a henselian trait with that of its completion, to the local behaviour of `ℒ_ψ(f)` on the line. Layer 3 defines the transform on a vector bundle as a kernel transform with kernel `⟨ , ⟩^*ℒ_ψ`, proves `FT_! = FT_*` by local acyclicity at infinity, inversion, duality, functoriality, coefficient change, the trace identity and Frobenius exchange. Layer 4 proves perverse `t`-exactness over a field and the induced equivalence of hearts. Layer 5 works on the affine line over a perfect field: types of simple perverse sheaves, Fourier sheaves, Kummer sheaves and Gauss sums, the local monodromy of the transform and the local Fourier transforms with their tame values.

## Layer 0: additive characters and the finite Fourier transform

### 0.1 Nondegenerate additive characters

Define a nondegenerate additive character of a commutative ring `Λ` as an additive character `ψ : 𝔽_p → Λ^×` such that `ψ(1) − 1` is a unit. Prove: `ψ(a) − 1` is a unit for every `a ∈ 𝔽_p^×`; `p` is a unit of `Λ` and `Φ_p(ψ(1)) = 0` for the `p`-th cyclotomic polynomial; for every finite field `k` of characteristic `p` and `y ∈ k`, `Σ_{x ∈ k} ψ(Tr_{k/𝔽_p}(x y))` equals `|k|` if `y = 0` and `0` otherwise (orthogonality, proved by multiplying by `ψ(Tr(x_0 y)) − 1` for an `x_0` with `Tr(x_0 y) = 1`, which exists by `FiniteField.trace_to_zmod_nondegenerate`). For nonzero `Λ`, a nondegenerate character is primitive in Mathlib's sense, `AddChar.IsPrimitive`: for `a ≠ 0` the value at `1` of `x ↦ ψ(a x)` is `ψ(a)`, and `ψ(a) − 1` is a unit, hence nonzero in a nonzero ring. (KL85 lines 442–446 for the local case.)
*Needs:* Mathlib `AddChar`, `AddChar.IsPrimitive`, `Algebra.trace`, `FiniteField.trace_to_zmod_nondegenerate`; Tau Ceti `Submodule.sum_addChar_dotProduct`, only as the domain-valued case the orthogonality must agree with.

API:
- The inverse character `ψ^{−1}` and the scaled characters `a ↦ ψ(c a)` for `c ∈ 𝔽_p^×` are nondegenerate.
- For a ring map `h : Λ → Λ'`, `h ∘ ψ` is nondegenerate (units map to units), so nondegeneracy survives reduction modulo every ideal, in particular modulo every maximal ideal.
- For finite `Λ`, `ψ` is nondegenerate if and only if its reduction modulo every maximal ideal is nontrivial; for local `Λ` this is nontriviality of `ψ`.
- For a finite field `k` of characteristic `p`, the composite `ψ_k = ψ ∘ Tr_{k/𝔽_p}` satisfies the orthogonality above, and when `Spec Λ` is connected (in particular nonempty, so `Λ ≠ 0`) every additive character of `k` with values in `Λ^×` is `x ↦ ψ_k(c x)` for a unique `c ∈ k` (LAU87 (0.2), LAU87 lines 148–149, for `ℚ̄_ℓ`-valued characters); for `Λ = Λ_1 × Λ_2` the pairs `(ψ_{1,k}(c_1 x), ψ_{2,k}(c_2 x))` with `c_1 ≠ c_2` are not of this form.
- The characteristic `N` of a finite `Λ` with a nondegenerate character is prime to `p`.

**Checks.**
- `Λ = ℤ/7`, `p = 3`, `ψ(1) = 2`: `2³ = 8 ≡ 1`, `ψ(1) − 1 = 1` is a unit and `ψ(1) + ψ(2) + ψ(0) = 2 + 4 + 1 = 7 ≡ 0`; a definition demanding only `ψ ≠ 1` agrees here because `ℤ/7` is local.
- `Λ = ℤ/7 × ℤ/7`, `ψ(1) = (2, 1)`: `ψ` is nontrivial but `ψ(1) − 1 = (1, 0)` is not a unit, and `Σ_a ψ(a) = (0, 3) ≠ 0`; nontriviality is the wrong condition for non-local rings.
- `Λ = ℤ/5`, `p = 3`: `3 ∤ 4`, so `(ℤ/5)^×` has no element of order `3` and no nondegenerate character exists; the degenerate case is an empty class, not a theorem about the trivial character.
- `Λ = ℤ/49`, `p = 3`, `ψ(1) = 18`: `18³ = 5832 = 119 · 49 + 1`, and `18 − 1 = 17` is a unit mod `49`; a nontrivial character into a non-reduced local ring is nondegenerate.
- `Λ = 0`: `ψ(1) − 1 = 0` is a unit of the zero ring, so the unique character is nondegenerate, but every character into the zero ring is trivial, so it is not primitive in Mathlib's sense and every `c ∈ k` gives the same character of `k`; the primitivity clause needs `Λ ≠ 0` and the classification needs `Spec Λ` connected, hence nonempty.

### 0.2 The finite Fourier transform

For a finite field `k` of characteristic `p`, a finite-dimensional `k`-vector space `W` with dual `W^∨ = Module.Dual k W`, a commutative ring `Λ` and a nondegenerate `ψ`, define `𝔉_ψ : (W → Λ) → (W^∨ → Λ)` by `(𝔉_ψ t)(w') = Σ_{w ∈ W} t(w) ψ_k(w'(w))`. Prove inversion `𝔉_ψ^{W^∨}(𝔉_ψ^W t)(w) = |W| · t(−w)`, identifying `W^{∨∨}` with `W` canonically; Plancherel `Σ_{w'} 𝔉_ψ t_1(w') 𝔉_ψ t_2(w') = |W| Σ_w t_1(w) t_2(−w)`; the convolution identity `𝔉_ψ(t_1 * t_2) = 𝔉_ψ t_1 · 𝔉_ψ t_2` for `(t_1 * t_2)(w) = Σ_{u + v = w} t_1(u) t_2(v)`; for a linear `f : W_1 → W_2` and `f_! t(w_2) = Σ_{f(w_1) = w_2} t(w_1)`, `𝔉_ψ(f_! t) = 𝔉_ψ(t) ∘ f^∨`; translation `𝔉_ψ(t(· − e)) = ψ_k(· (e)) · 𝔉_ψ t`; and `𝔉_{ψ^{−1}} t = (𝔉_ψ t) ∘ [−1]`. (LAU87 lines 383–391 for the definition; the identities are the function forms of LAU87 (1.2.2.1)–(1.2.2.8), LAU87 lines 401–471.)
*Needs:* §0.1; Mathlib `Module.Dual`, finite sums; Tau Ceti `Submodule.sum_addChar_dotProduct`, only as the domain-valued case the subspace identity must agree with.

API:
- `𝔉_ψ` is `Λ`-linear, and multiplication by `|W|` is invertible on functions because `p` is a unit, so `𝔉_ψ` is a linear equivalence with inverse `|W|^{−1} [−1]^* 𝔉_ψ^{W^∨}`.
- `𝔉_ψ` of the indicator of `0` is the constant `1`; `𝔉_ψ` of the constant `1` is `|W|` times the indicator of `0`; for a subspace `U ⊂ W`, `𝔉_ψ` of the indicator of `U` is `|U|` times the indicator of `U^⊥`.
- Compatibility with base change of finite fields: for `k ⊂ k'`, `𝔉_{ψ}` on `W ⊗ k'` uses `ψ_{k'} = ψ_k ∘ Tr_{k'/k}`.
- For `Λ = ℂ`, `k = 𝔽_p`, `W = ZMod p` and `ψ = ZMod.stdAddChar`, `𝔉_ψ Φ (k) = ZMod.dft Φ (−k)`.

**Checks.**
- `W = 𝔽_3`, `Λ = ℤ/7`, `ψ(1) = 2`, `t` the indicator of `{1}`: `𝔉_ψ t (w') = ψ(w')`, so `𝔉_ψ t = (1, 2, 4)` at `w' = 0, 1, 2`; applying `𝔉_ψ` again at `w = 2` gives `1 + 2 · 4 + 4 · 2 = 17 ≡ 3 = |W| · t(−2)`, while at `w = 1` it gives `1 + 2·2 + 4·4 = 21 ≡ 0`. A transform without the sign `t(−w)` would put the mass at `1`.
- `W = 0`: `𝔉_ψ` is the identity and `|W| = 1`; a normalization by `|W|^{−1/2}` would be undefined in `ℤ/7`.
- With the degenerate `ψ(1) = (2, 1)` into `ℤ/7 × ℤ/7`, the second component of `𝔉_ψ` is `t ↦ Σ t`, which is not injective for `|W| > 1`: inversion needs nondegeneracy.
- Comparison with Mathlib: for `N = p = 3` and `Φ` the indicator of `1`, `ZMod.dft Φ k = stdAddChar(−k)`, while `𝔉_ψ Φ (k) = stdAddChar(k)`; the two differ by `k ↦ −k`, which is the stated identity and not an equality of functions.
- Comparison with Tau Ceti's code orthogonality `Submodule.sum_addChar_dotProduct`: `W = 𝔽_3²` with its dual identified by the dot product, `Λ = ℤ/7`, `ψ(1) = 2`, `U` the line spanned by `(1, 1)`. Then `𝔉_ψ(1_U)(w') = Σ_{s ∈ 𝔽_3} ψ(s(w'_1 + w'_2))` is `3` on `U^⊥ = {(0, 0), (1, 2), (2, 1)}` and `1 + 2 + 4 = 7 ≡ 0` elsewhere, the value of the code sum for `C = U`. Since `(1, 1) · (1, 1) = 2 ≠ 0`, `U ≠ U^⊥`, and a formula with `1_U` in place of `1_{U^⊥}` would give `3` at `(1, 1)`, where the sum is `ψ(0) + ψ(2) + ψ(1) = 0`.

### Examples

For `k = 𝔽_5`, `W = k`, `Λ = ℤ/11`, `ψ(1) = 3` (order `5` in `(ℤ/11)^×`): the quadratic function `t(w) = ψ(w²)` has `𝔉_ψ t(0) = Σ_w ψ(w²) = 1 + 2·3 + 2·3⁴ = 1 + 6 + 162 = 169 ≡ 4`, and `4² = 16 ≡ 5 = |k|·(−1/5)`, the Legendre symbol `(−1/5) = 1`; this is the quadratic Gauss-sum identity reduced mod `11`.

### Dependencies

Mathlib; Tau Ceti `Submodule.sum_addChar_dotProduct` (`TauCeti/InformationTheory/Coding/CharacterSum.lean`), only as the domain-valued case that the orthogonality of §0.1 and the subspace identity of §0.2 agree with.

## Layer 1: kernel transforms and trace functions

### 1.1 Kernel transforms

Let `S` be a qcqs scheme, `Λ` a torsion ring, `X`, `Y` separated finitely presented `S`-schemes, `p_X`, `p_Y` the projections of `X ×_S Y`, `𝒦 ∈ D⁺(X ×_S Y, Λ)` of finite Tor amplitude and `a ∈ ℤ`. Define the kernel transform `Φ_𝒦 : D⁺(X, Λ) → D⁺(Y, Λ)`, `Φ_𝒦(K) = Rp_{Y!}(p_X^*K ⊗^L 𝒦)[a]`, a triangulated functor. Prove base change: for `g : S' → S` with base changes `g_X`, `g_Y`, the canonical map `g_Y^* Φ_𝒦(K) ≅ Φ_{𝒦'}(g_X^* K)` with `𝒦'` the pullback of `𝒦`, an isomorphism by proper base change on the compactified factor; and the relative Künneth isomorphism `R(f ×_S g)_!(K ⊠_S L) ≅ Rf_!K ⊠_S Rg_!L` for separated finitely presented `f`, `g` over `S` and `L` of finite Tor amplitude, from base change and the projection formula. (Base change: LAU87 Proposition (1.2.2.9), LAU87 lines 472–474, and BRY86 Proposition 9.4 1), BRY86 lines 3449–3450 and 3460, both for the Fourier kernel and proved by proper base change; BRY86 Définition 9.1, BRY86 line 3394, for the Fourier kernel as the motivating instance; Künneth: SGA 4 XVII 5.4.3 as recalled at LAU87 lines 459–461. Kernel transforms at this generality are this roadmap's own.)
*Needs:* EtaleCohomologyFoundations §§G.1–G.3, 0.7–0.8, F.1, F.2.1; EnhancedDerivedSheaves §§0.1–0.4; gap:projection-formula-qcqs (on Noetherian `S` with `Dᵇ_ctf` inputs, EtaleCohomologyFoundations §F.2.7 suffices).

API:
- A morphism of kernels `𝒦_1 → 𝒦_2` induces a natural transformation `Φ_{𝒦_1} → Φ_{𝒦_2}`, functorially, and distinguished triangles of kernels give triangles of functors.
- For `f : X → Y` the graph kernel `(id, f)_!Λ` on `X ×_S Y` (shift `0`) gives `Φ ≅ Rf_!`; for `g : Y → X` the kernel `(g, id)_!Λ` on `X ×_S Y` gives `Φ ≅ g^*`; tensoring a kernel by `p_Y^*M` gives `Φ(−) ⊗^L M`.
- Base-change isomorphisms satisfy the identity and composition laws for `S'' → S' → S`.
- Finite Tor amplitude of `𝒦` is preserved by base change and by `Rp_!` along separated finitely presented maps.

**Checks.**
- `X = Y = S`, `𝒦 = Λ_S`, `a = 0`: `Φ_𝒦` is the identity of `D⁺(S, Λ)`; a definition with `Rp_{Y*}` agrees here but not for `S = Spec k̄`, `X = 𝔸¹_S`, `Y = S`, `𝒦 = Λ`, where `Φ(Λ) = Λ(−1)[−2]` (compact support) versus `Λ` (ordinary).
- `Λ = ℤ/4`, `X = Y = S = Spec k` with `k` separably closed and `𝒦 = ℤ/2` (infinite Tor amplitude over `ℤ/4`): `Φ_𝒦(ℤ/2) = ℤ/2 ⊗^L_{ℤ/4} ℤ/2` has cohomology `ℤ/2` in every degree `≤ 0` and leaves `D⁺`; the Tor hypothesis is needed.
- Graph kernels: for the closed immersion `i : {0} → 𝔸¹_k`, the graph kernel of `i` sends `Λ` to the skyscraper `i_*Λ`, and the transposed one sends `Λ_{𝔸¹}` to `Λ` on the point.

### 1.2 Composition of kernels

For `𝒦 ∈ D⁺(X ×_S Y)` and `𝒦' ∈ D⁺(Y ×_S Z)` of finite Tor amplitude with shifts `a`, `a'`, define `𝒦' ∘ 𝒦 = Rp_{XZ!}(p_{XY}^*𝒦 ⊗^L p_{YZ}^*𝒦')` with shift `a + a'`. Construct the composition isomorphism `c_{𝒦',𝒦} : Φ_{𝒦'} ∘ Φ_𝒦 ≅ Φ_{𝒦'∘𝒦}` from base change, composition of `Rf_!` and the projection formula, and prove: it is natural in `𝒦` and `𝒦'`; for three composable kernels the two composites `Φ_{𝒦''}Φ_{𝒦'}Φ_𝒦 ≅ Φ_{𝒦''∘𝒦'∘𝒦}` agree with the associator `(𝒦''∘𝒦')∘𝒦 ≅ 𝒦''∘(𝒦'∘𝒦)` of kernels; the diagonal kernel `Δ_!Λ` with shift `0` is a two-sided unit, with unitors compatible with `c`; and `c` is compatible with base change along every `S' → S`. (LAU87 lines 413–417 and 440–444 for the pattern of proof: the proofs of (1.2.2.1) and (1.2.2.4) compose a Fourier kernel with a Fourier or a graph kernel by proper base change and the projection formula; the coherence statements are this roadmap's own.)
*Needs:* §1.1; EtaleCohomologyFoundations §0.8 (composition and refinement coherence of `Rf_!`), §F.2.1; EnhancedDerivedSheaves §§0.3–0.4; gap:projection-formula-qcqs.

API:
- The composite kernel `𝒦' ∘ 𝒦` has finite Tor amplitude, is functorial in both kernels and commutes with base change along `S' → S`.
- Composition with graph kernels: `𝒦 ∘ Γ_g` and `Γ_h ∘ 𝒦` are the pullback of `𝒦` along `g × id` and the compact direct image along `id × h`.
- The associator of composite kernels satisfies the pentagon identity for four composable kernels.

**Checks.**
- Graph kernels compose to the graph kernel of the composite, and `c` becomes the composition isomorphism `Rg_! Rf_! ≅ R(gf)_!` of EtaleCohomologyFoundations §0.8; a construction with an arbitrary sign or choice would fail this on `f = g = id`.
- For `𝒦 = Δ_!Λ` the left unitor composed with `c` is the identity of `Φ_{𝒦'}` for every `𝒦'`.
- Shifts add: `Φ_{Λ[1]}` on `X = Y = S` composed with itself is `[2]`, and `c` carries the Koszul sign of exchanging the two shifts, so that associativity holds for three shifted kernels.

### 1.3 Constructibility

For Noetherian `S`, finite `Λ` with characteristic invertible on `S` and `𝒦 ∈ Dᵇ_ctf(X ×_S Y, Λ)`, prove that `Φ_𝒦` sends `Dᵇ_ctf(X, Λ)` to `Dᵇ_ctf(Y, Λ)`, and `𝒦' ∘ 𝒦 ∈ Dᵇ_ctf`. Under change of coefficients `Λ → Λ'`, `Φ_𝒦` commutes with derived scalar extension. (KL85 §2.1 with SGA 4½ [Th. finitude], as used at LAU87 lines 172–182.)
*Needs:* §1.1; EtaleCohomologyFoundations §§F.1, F.2.4, F.2.7, F.3 (`VanishingCycles.compactSupportFiniteness`).

### 1.4 Trace functions

Let `X` be separated of finite type over `𝔽_q`, `Λ` finite of characteristic prime to `p`, `K ∈ Dᵇ_ctf(X, Λ)`. Define the trace function `t_{K,n} : X(𝔽_{qⁿ}) → Λ` by `t_{K,n}(x) = L(Frob_x, K_x̄)`, the Lefschetz number of the geometric Frobenius on the perfect complex `K_x̄`. Prove: additivity in distinguished triangles and `t_{K[1]} = −t_K`; `t_{K ⊗^L L} = t_K · t_L`; `t_{f^*K} = t_K ∘ f`; the Fubini identity `t_{Rf_!K,n}(y) = Σ_{x ∈ X(𝔽_{qⁿ}), f(x) = y} t_{K,n}(x)` for separated `f` of finite type; compatibility with change of `Λ` and with realization in `O_E` and `E`. Deduce the function–sheaf dictionary for kernel transforms: `t_{Φ_𝒦 K, n}(y) = (−1)^a Σ_{x ∈ X(𝔽_{qⁿ})} t_{K,n}(x) t_{𝒦,n}(x, y)` for `K ∈ Dᵇ_ctf(X)`, `𝒦 ∈ Dᵇ_ctf(X ×_{𝔽_q} Y)`. (LAU87 (1.1.1.0)–(1.1.1.4), LAU87 lines 248–262; Grothendieck's trace formula as recalled at LAU87 lines 257–260.)
*Needs:* EtaleCohomologyFoundations §§F.10.1–F.10.3 (`VanishingCycles.frobeniusFixedPoints`, `VanishingCycles.frobeniusCohomology`, `PerfectComplex.lefschetzNumber`); InverseGaloisAndArithmeticFundamentalGroups §§IG.0.T2–IG.0.T3; §§1.1–1.3.

API:
- `t_{Λ_X, n} = 1`, `t_{Λ(m)} = q^{−nm}` for every `m ∈ ℤ`, and `t_{K(m)} = q^{−nm} t_K`.
- For a finite extension `𝔽_{q^m}` and `X ⊗ 𝔽_{q^m}`, the trace function at level `n` of the base change is `t_{K, mn}`.
- The rational trace function of an `E`-complex is the limit of the finite-level ones, computed on an integral model.

**Checks.**
- On `X = Spec 𝔽_q`, `K = Λ(−1)[−2]` (the class of `H²_c(𝔸¹)`) has `t_{K,1} = q`, `K = Λ[1]` has `t = −1`; a definition using arithmetic Frobenius gives `q^{−1}` for the first.
- For `i : {0} → 𝔸¹`, `t_{i_*Λ}` is the indicator of `0`; the Fubini identity for `𝔸¹ → Spec 𝔽_q` and `Λ_{𝔸¹}` gives `Σ_{x ∈ 𝔽_q} 1 = q = t_{RΓ_c}`, matching `RΓ_c(𝔸¹, Λ) = Λ(−1)[−2]`.
- `Λ = ℤ/4`, `K = [ℤ/4 —2→ ℤ/4]` on a point with trivial Frobenius: `t_K = 0` although `H⁰ = H¹ = ℤ/2`, where a "trace on cohomology" is undefined; the Lefschetz number of the perfect complex is the right notion.

### Examples

The kernel `𝒦 = Λ` on `𝔸¹ ×_{𝔽_q} 𝔸¹` with `a = 0` sends `i_*Λ` (a point `x_0`) to `Λ_{𝔸¹}` and `Λ_{𝔸¹}` to `Λ(−1)[−2]` pulled back to `𝔸¹`; the trace functions are `1` and `q`, matching `Σ_x t(x) · 1`.

### Dependencies

EtaleCohomologyFoundations §§G.1–G.3, 0.7–0.8, F.1–F.3, F.10.1–F.10.3; EnhancedDerivedSheaves §§0.1–0.4; InverseGaloisAndArithmeticFundamentalGroups §§IG.0.T2–IG.0.T3; gap:projection-formula-qcqs.

## Layer 2: character sheaves

Throughout this layer `G` is a smooth connected commutative group scheme of finite type over `𝔽_q`, written additively, `F` its `q`-Frobenius, `A = G(𝔽_q)`, and `Λ` a finite ring (or `O_E` by realization).

### 2.1 The Lang torsor

Prove that the Lang map `L = F − id : G → G` is a finite étale `A`-torsor for the translation action of `A ⊂ G` on the source: `L` is a homomorphism; its differential is `−id` because `F` kills invariant differentials, so `L` is étale; its image is an open subgroup, hence `G` by connectedness, so `L` is surjective (this is ReductiveGroupsPartII §RG2.3.7 (a) on `𝔽̄_q`-points); and its kernel is the constant group `A`, which gives `G ×_{L,G,L} G ≅ G × A`. For `x ∈ G(𝔽_{qⁿ})`, the geometric Frobenius `Frob_x` acts on the fibre `L^{−1}(x)(𝔽̄_q)` as translation by `−N(x)`, where `N = 1 + F + ⋯ + F^{n−1} : G(𝔽_{qⁿ}) → A` is the norm, because `Fⁿ(t) = t + N(x)` on that fibre. (LAU87 lines 299–309, recalling SGA45-ST.)
*Needs:* ReductiveGroupsPartII §RG2.3.7; SchemeAndStackFoundations §0.29; EtaleCohomologyFoundations §F.0.2; Mathlib `CategoryTheory.GrpObj`, `FiniteField.norm_surjective`.

API:
- For a homomorphism `φ : G → G'` of such groups, `L_{G'} ∘ φ = φ ∘ L_G`, so the Lang torsor of `G'` pulled back along `φ` is the push-out of that of `G` along `φ|_A`.
- `Fⁿ − id = (F − id) ∘ (1 + F + ⋯ + F^{n−1})`: the `qⁿ`-Lang torsor of `G ⊗ 𝔽_{qⁿ}` maps to the base change of the `q`-Lang torsor, inducing the norm `G(𝔽_{qⁿ}) → A` on groups.
- The norm `G(𝔽_{qⁿ}) → G(𝔽_q)` is surjective.
- `L` commutes with the `q`-Frobenius, which gives the Frobenius structure of §2.2.

**Checks.**
- `G = 𝔾_a`: `L(t) = t^q − t`, kernel `𝔽_q`, and for `x ∈ 𝔽_q` the fibre is `{t : t^q − t = x}`; with `q = 3`, `x = 1` the arithmetic Frobenius sends `t` to `t + 1`.
- `G = 𝔾_m`: `L(t) = t^{q−1}`, kernel `μ_{q−1} = 𝔽_q^×`; the Lang torsor is the Kummer cover of order `q − 1`.
- Disconnected non-example: for the constant group `ℤ/2` over `𝔽_q`, `F = id` and `L = 0` is not surjective (ReductiveGroupsPartII *lang_not_connected* for `μ_2`, `q` odd).
- `G = 0`: `L` is the identity of a point and `A` is trivial.

### 2.2 Character sheaves

For a character `χ : A → Λ^×`, define `ℒ_χ` on `G` as the torsor–character sheaf of the Lang torsor with `χ^{−1}` (gap:torsor-character-sheaf), which is the `χ`-isotypic part of `L_*Λ` for `(a·s)(t) = s(t + a)`. For an `𝔽_q`-scheme `X` and `f : X → G` put `ℒ_χ(f) = f^*ℒ_χ`. Prove: `ℒ_χ` is lisse of rank one with monodromy through `A`, hence finite; a rigidification `ℒ_χ|_{0} ≅ Λ`; the multiplicativity `m^*ℒ_χ ≅ pr_1^*ℒ_χ ⊗ pr_2^*ℒ_χ` compatible with the rigidification, associative and commutative; `ℒ_χ ⊗ ℒ_{χ'} ≅ ℒ_{χχ'}`; `ℒ_χ^∨ ≅ ℒ_{χ^{−1}}` and `[−1]^*ℒ_χ ≅ ℒ_{χ^{−1}}`; `ℒ_1 ≅ Λ`; `ℒ_χ|_{G ⊗ 𝔽_{qⁿ}} ≅ ℒ_{χ ∘ N}`; `φ^*ℒ_{χ'} ≅ ℒ_{χ' ∘ φ}` for homomorphisms `φ : G → G'`; `ℒ_χ(f + g) ≅ ℒ_χ(f) ⊗ ℒ_χ(g)` for `f, g : X → G`; and a canonical Frobenius isomorphism `F^*ℒ_χ ≅ ℒ_χ`. (LAU87 (1.1.3.1)–(1.1.3.3) and (1.1.3.6), LAU87 lines 313–339; KATZ01 lines 426–440.)
*Needs:* §2.1; gap:torsor-character-sheaf; EtaleCohomologyFoundations §§F.0.1–F.0.2, F.0.4.

API:
- Translation: for `a ∈ G(𝔽_q)`, `t_a^*ℒ_χ ≅ ℒ_χ ⊗ π^*(ℒ_χ|_a)`, where `ℒ_χ|_a` is the line on `Spec 𝔽_q` on which `Frob` acts by `χ(a)`.
- Coefficient change along `h : Λ → Λ'` carries `ℒ_χ` to `ℒ_{h ∘ χ}`.
- For an `O_E`-valued `χ`, the reductions form a normalized adic system (EtaleCohomologyFoundations §F.4.1).
- `ℒ_χ(0) ≅ Λ_X` and `ℒ_χ(−f) ≅ ℒ_χ(f)^∨`.

**Checks.**
- Convention witness: `G = 𝔾_a` over `𝔽_3`, `Λ = ℤ/7`, `χ = ψ` with `ψ(1) = 2`: `Frob_1` acts on `ℒ_ψ` at `x = 1` by `2`, not by `ψ(−1) = 4`; the opposite Lang map or the `χ^{−1}`-isotypic part gives `4`.
- `G = 𝔾_m` over `𝔽_5`, `Λ = ℤ/3`, `χ` the quadratic character: `ℒ_χ` is the sheaf of the cover `t² = x`, with trace `+1` at `x = 1, 4` and `−1` at `x = 2, 3`.
- `χ = 1`: `ℒ_1` is constant, whereas `L_*Λ` has rank `|A|`; the isotypic part, not the whole pushforward, is the character sheaf.

### 2.3 Traces of character sheaves

Prove that for `x ∈ G(𝔽_{qⁿ})`, `Frob_x` acts on `ℒ_χ` by `χ(N_{𝔽_{qⁿ}/𝔽_q}(x))`, so `t_{ℒ_χ, n} = χ ∘ N`, and `t_{ℒ_χ(f), n} = χ ∘ N ∘ f`. The proof is the fibre computation of §2.1. (LAU87 (1.1.3.3), LAU87 lines 328–330; LAU87 Remarque (1.1.3.5), LAU87 lines 332–335.)
*Needs:* §§2.1–2.2, §1.4.

**Checks.**
- For `G = 𝔾_a`, `n = 2`, `q = 3`, `x ∈ 𝔽_9` with `Tr_{𝔽_9/𝔽_3}(x) = x + x³`: at `x = i` (`i² = −1`) the trace is `ψ(i + i³) = ψ(0) = 1`, at `x = 1` it is `ψ(2)`; a formula `χ(x)` without the norm is meaningless on `𝔽_9 ∖ 𝔽_3`.
- For `G = 𝔾_m`, `q = 5`, `n = 2`, the norm `x ↦ x^6` sends a generator of `𝔽_25^×` to a generator of `𝔽_5^×`, so a nontrivial `χ` has nontrivial trace function at level `2`.
- The trivial group `G = 0` has the single trace value `1`.

### 2.4 Vanishing of cohomology

Prove that if the elements `χ(a) − 1`, `a ∈ A`, generate the unit ideal of `Λ`, then `RΓ_c(G_{𝔽̄_q}, ℒ_χ) = 0` and `RΓ(G_{𝔽̄_q}, ℒ_χ) = 0`. Route: by multiplicativity and the automorphism `(x, y) ↦ (x + y, y)` of `G × G`, `RΓ_c(G, ℒ_χ) ⊗ ℒ_χ ≅ RΓ_c(G, ℒ_χ) ⊗ Λ` as complexes on `G_{𝔽̄_q}`; the Lang torsor is connected, so its monodromy `π_1(G_{𝔽̄_q}) → A` is surjective, and comparing the two actions on cohomology gives `(χ(a) − 1) Hⁱ = 0` for all `a`; the same argument with `Rpr_{2*}` and ordinary Künneth handles `RΓ`. Deduce `Σ_{x ∈ G(𝔽_{qⁿ})} χ(N x) = 0` (orthogonality) by the trace formula. (LAU87 (1.1.3.4), LAU87 lines 330–331, recalling SGA45-ST.)
*Needs:* §§2.1–2.3; EtaleCohomologyFoundations §§F.2.4, F.2.6–F.2.7, F.3; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T2.

**Checks.**
- `G = 𝔾_a`, `ψ` nondegenerate: `RΓ_c(𝔸¹_{𝔽̄_p}, ℒ_ψ) = 0`; the trivial character instead has `H²_c = Λ(−1)`, so the hypothesis is needed.
- `Λ = ℤ/7 × ℤ/7`, `ψ(1) = (2, 1)`: the unit-ideal hypothesis fails and `RΓ_c(𝔸¹_{𝔽̄_3}, ℒ_ψ) = (0, (ℤ/7)(−1)[−2])`, nonzero; nontriviality of `χ` alone does not suffice.
- `G = 𝔾_m` over `𝔽_5`, quadratic `χ` into `ℤ/3`: `χ(2) − 1 = −2 = 1` is a unit, and `Σ_{x ∈ 𝔽_5^×} χ(x) = 1 − 1 − 1 + 1 = 0`.

### 2.5 Artin–Schreier sheaves

For a nondegenerate `ψ : 𝔽_p → Λ^×`, let `ℒ_ψ` be the character sheaf of `𝔾_{a,𝔽_p}` and, for any `𝔽_p`-scheme `X` and `f ∈ Γ(X, O_X)`, `ℒ_ψ(f) = f^*ℒ_ψ`. Prove: `ℒ_ψ(f + g) ≅ ℒ_ψ(f) ⊗ ℒ_ψ(g)`; `ℒ_ψ(c f) ≅ ℒ_{ψ(c ·)}(f)` for `c ∈ 𝔽_p`; `ℒ_ψ(f^p) ≅ ℒ_ψ(f)` and `ℒ_ψ(f^p − f) ≅ Λ_X` canonically; for `X` over `𝔽_q`, `ℒ_ψ` on `𝔾_{a,𝔽_q}` is the character sheaf of `ψ ∘ Tr_{𝔽_q/𝔽_p}`, through the map of Lang torsors `t ↦ t + t^p + ⋯ + t^{q/p}`; and `t_{ℒ_ψ(f), n}(x) = ψ(Tr_{𝔽_{qⁿ}/𝔽_p} f(x))`. (LAU87 lines 343–345 and 370–371; KATZ01 lines 430–440.)
*Needs:* §§2.2–2.4; SchemeAndStackFoundations §§2.9, 2.11.

API:
- `ℒ_ψ(f)` is lisse of rank one, functorial in `X`: `g^*ℒ_ψ(f) ≅ ℒ_ψ(f ∘ g)` for `g : X' → X`.
- `ℒ_ψ(f)^∨ ≅ ℒ_ψ(−f) ≅ ℒ_{ψ^{−1}}(f)`.
- For `c ∈ 𝔽_p^×`, `ℒ_{ψ(c·)}` is again an Artin–Schreier sheaf of a nondegenerate character, and every nondegenerate character of `𝔽_p` into a connected `Λ` is of this form for a fixed one.
- On `𝔾_{a,𝔽_q}`, `ℒ_ψ(c x)` for `c ∈ 𝔽_q` realizes the additive character `x ↦ ψ(Tr(c x))` of `𝔽_q`.

**Checks.**
- `ℒ_ψ(0) = Λ_X`, and `ℒ_ψ(x^p)` on `𝔸¹` is isomorphic to `ℒ_ψ(x)`, so its Swan conductor at `∞` is `1`, not `p`.
- Over `𝔽_9` with `p = 3`, `t_{ℒ_ψ(x)}(i) = ψ(0) = 1` while `t_{ℒ_ψ(x)}(1) = ψ(2)`: the trace uses `Tr_{𝔽_9/𝔽_3}`.
- `ℒ_ψ(x² − x)` and `ℒ_ψ(x² − x³)` agree on `𝔸¹_{𝔽_3}` up to `ℒ_ψ(x³ − x) ≅ Λ`, so their trace functions agree on all `𝔽_{3ⁿ}`-points.

### 2.6 Kummer sheaves

Over `𝔽_q`, the Kummer sheaves are the character sheaves of `𝔾_m` for `χ : 𝔽_q^× → Λ^×`. Over any field `k` and `N ≥ 1` invertible in `k` with `|μ_N(k)| = N`, the `N`-th power map `[N] : 𝔾_{m,k} → 𝔾_{m,k}` is a finite étale `μ_N(k)`-torsor, and for `χ : μ_N(k) → Λ^×` define `ℒ_χ` as its torsor–character sheaf with `χ^{−1}`, and `ℒ_χ(g) = g^*ℒ_χ` for `g ∈ Γ(X, O_X^×)`. Prove: multiplicativity and tensor laws as in §2.2; compatibility with `N | N'` through `μ_{N'}(k) → μ_N(k)`, `ζ ↦ ζ^{N'/N}`; for `k = 𝔽_q`, `N = q − 1` it is the character sheaf of `𝔾_m`; `ℒ_χ` is tamely ramified at `0` and `∞`, with inertia acting through the tame character of EtaleCohomologyFoundations §F.3a; if `χ(ζ) − 1` is a unit for a generator `ζ`, then `RΓ_c(𝔾_{m,k̄}, ℒ_χ) = 0` and, for `j : 𝔾_m → 𝔸¹`, `j_!ℒ_χ ≅ Rj_*ℒ_χ`. (LAU87 Remarque (1.1.3.7), LAU87 lines 349–367; LAU87 Lemme (1.4.3.1), LAU87 lines 651–655; SGA45-ST (4.20), by locator.)
*Needs:* §§2.2–2.4; SchemeAndStackFoundations §§2.9, 2.11; EtaleCohomologyFoundations §§0.7, F.3a; gap:torsor-character-sheaf.

API:
- `ℒ_χ(g h) ≅ ℒ_χ(g) ⊗ ℒ_χ(h)`, `ℒ_χ(g^{−1}) ≅ ℒ_{χ^{−1}}(g)`, `ℒ_χ ⊗ ℒ_{χ'} ≅ ℒ_{χχ'}`, `ℒ_1 ≅ Λ`.
- Base change along field extensions `k ⊂ k'` (with `μ_N(k) = μ_N(k')`) carries `ℒ_χ` to `ℒ_χ`.
- `[d]^*ℒ_χ ≅ ℒ_{χ^d}` for the `d`-th power map of `𝔾_m`.

**Checks.**
- `k = 𝔽_5`, `N = 4`: the Kummer cover of order `4` is the Lang torsor of `𝔾_m`, and the quadratic `χ` gives the sheaf of §2.2's Check.
- Trivial `χ`: `j_!Λ → Rj_*Λ` is not an isomorphism (the stalk of `Rj_*Λ` at `0` has `H⁰ = Λ` and `H¹ = Λ(−1)`), so the hypothesis on `χ` is needed.
- `k = ℂ`, `N = 2`, `Λ = ℤ/3`, `χ` the sign: `χ(−1) − 1 = −2 = 1` is a unit and `j_!ℒ_χ = Rj_*ℒ_χ`, matching EtaleCohomologyFoundations §F.3's Check on the quadratic Kummer sheaf.

### 2.7 Artin–Schreier sheaves on the line

The local Galois groups at the points of a curve are those of henselian traits, while the break theory of ArithmeticGaloisRepresentations §3.1 is stated over complete fields; the two are matched first. Let `R` be a henselian discrete valuation ring with fraction field `K`, uniformizer `π` and perfect residue field of characteristic `p`, let `R̂` and `K̂` be the completions, fix a separable closure `K̂^sep` of `K̂` and let `K^sep` be the separable closure of `K` in it. Prove that restriction `Gal(K̂^sep/K̂) → Gal(K^sep/K)` is an isomorphism of profinite groups which carries the inertia and the wild inertia of `K̂` onto those of the henselian trait `Spec R` (EtaleCohomologyFoundations §F.3a), and the upper-numbering subgroup `G_{K̂}^u` onto `G_K^u` for every `u ≥ 0`, where `G_K^u` is defined from the lower numbering `i(σ) = min_{x ∈ O_L} v_L(σ(x) − x)` on the finite Galois extensions `L/K` inside `K^sep`; so breaks, break decompositions and Swan conductors of continuous representations of `G_K` are those of ArithmeticGaloisRepresentations §3.1 through this isomorphism. No separability of `K̂` over `K` is assumed: it fails for non-excellent `R`, and the comparison holds there too. Route: base change `B ↦ B ⊗_K K̂` is an equivalence between finite étale algebras over `K` and over `K̂` (AdicEtaleGeometry §A1.0.5 (a) with `t = π`, `I = 𝔪_R`; equivalently Krasner's lemma, Mathlib `IsKrasner.of_completeSpace`, with the uniqueness of the extension of a henselian valuation), so for finite Galois `L/K` the algebra `L ⊗_K K̂` is the field `L̂ = L K̂`, with the same Galois group, valuation and residue field; `O_L` is dense in `O_{L̂}`, so `i(σ)` is the same computed on `O_L` or on `O_{L̂}`, the lower and hence the upper filtrations agree, and the absolute statement is the limit over `L`. (LAU87 (2.1.1), LAU87 lines 680–688, which places `R` between the henselization `k{π}` and the completion `k[[π]]` and takes the ramification theory of the completion.)
*Needs:* AdicEtaleGeometry §A1.0.5; EtaleCohomologyFoundations §F.3a; ArithmeticGaloisRepresentations §3.1.

Let `k` be a perfect field of characteristic `p`, `f ∈ k[x]` of degree `d ≥ 1` prime to `p`, and `ψ` nondegenerate. Prove: `ℒ_ψ(f)` is lisse on `𝔸¹_k`; at `∞` it is totally wild with the single break `d` and Swan conductor `d`; `H⁰_c = H²_c = 0` on `𝔸¹_{k̄}`, `H¹_c(𝔸¹_{k̄}, ℒ_ψ(f))` is free of rank `d − 1` over `Λ`, and the forget-supports map `H¹_c → H¹` is an isomorphism. More generally, for a lisse `F` on `𝔸¹_k` with all breaks at `∞` less than `d`, `F ⊗ ℒ_ψ(f)` has all breaks `d`, `H²_c = 0` and `H¹_c` of rank `(d − 1) rank F` for field coefficients. Route: the break is ArithmeticGaloisRepresentations §3.7 at `u = f(1/π)`, `v(u) = −d`, transported to the henselization at `∞` by the comparison above; `H²_c` vanishes because a totally wild representation has no coinvariants; the rank is the Euler–Poincaré formula for field coefficients and Nakayama for finite rings. (KATZ01 lines 441–460.)
*Needs:* §§2.4–2.5; the comparison above; ArithmeticGaloisRepresentations §§3.1, 3.7; EtaleDualityAndPerverseSheaves §5.2; EtaleCohomologyFoundations §F.3.

**Checks.**
- `d = 1`: rank `0`, consistent with §2.4's `RΓ_c(𝔸¹, ℒ_ψ(a x + b)) = 0`.
- `d = 2`, `p = 3`, `k = 𝔽_3`: `H¹_c` has rank `1` and trace `−Σ_{x ∈ 𝔽_3} ψ(x²) = −(1 + 2ψ(1))`, the negative of a quadratic Gauss sum.
- `f = x^p` violates `p ∤ d`; there the break is `1` by §2.5, and the formula `d − 1 = p − 1` would be wrong.
- Completion comparison for `R = k{π}`, the henselization of `k[π]` at `(π)`, with `R̂ = k[[π]]`: the Artin–Schreier extension `α^p − α = π^{−m}`, `p ∤ m`, is defined over `K`, its upper jump computed in `k((π))` is `m` (ArithmeticGaloisRepresentations §3.7), and the comparison gives the same break over `K`; this is the identification LAU87 (2.1.1) uses.
- Non-excellent trait: for `f ∈ k[[π]]` transcendental over `k(π)`, let `R` be the henselization of the valuation ring of `k(π, f^p) ⊂ k((π))`. Its completion is `k[[π]]`, which contains `f`, purely inseparable of degree `p` over `K`, so `K̂/K` is not separable; restriction is still an isomorphism, because `K^sep` and `K̂` generate `K̂^sep`. A version demanding `K̂/K` separable (excellent `R`) would exclude this trait, which LAU87 (2.1.1) admits.
- Henselianity is needed: for `R = k[π]_{(π)}` and `p` odd, `1 + π` is a square in `k[[π]]` but not in `k(π)`, so `K(√(1 + π))/K` is a nontrivial extension that splits over `K̂`, and restriction `Gal(K̂^sep/K̂) → Gal(K^sep/K)` is not onto.

### Examples

On `𝔸¹_{𝔽_5}` with `Λ = ℤ/11`, `ψ(1) = 3` and `f = x²`, the stalk traces of `ℒ_ψ(x²)` are `ψ(x²)` and `H¹_c` has rank one with trace `−169 ≡ −4 ≡ 7`.

### Dependencies

Layer 1; Mathlib `CategoryTheory.GrpObj` and `FiniteField.norm_surjective`, and `IsKrasner.of_completeSpace` as one route to the completion comparison of §2.7; ReductiveGroupsPartII §RG2.3.7; SchemeAndStackFoundations §§0.29, 2.9, 2.11; EtaleCohomologyFoundations §§0.7, F.0.1–F.0.4, F.2.4–F.3a, F.4.1; AdicEtaleGeometry §A1.0.5; ArithmeticGaloisRepresentations §§3.1, 3.7; EtaleDualityAndPerverseSheaves §5.2; InverseGaloisAndArithmeticFundamentalGroups §IG.0.T2; gap:torsor-character-sheaf.

## Layer 3: the Fourier–Deligne transform on a vector bundle

Throughout, `S` is a qcqs `𝔽_p`-scheme, `E` a finite locally free `O_S`-module of constant rank `r ≥ 0`, `π : V = V(E) → S`, `π' : V' = V(E^∨) → S`, `Λ` finite with `ψ` nondegenerate.

### 3.1 The pairing and the kernel

Define the pairing `⟨ , ⟩ : V ×_S V' → 𝔾_{a,S}` as the global function corresponding to the identity in `E ⊗ E^∨ = End(E)`, and the Fourier kernel `ℒ_ψ⟨ , ⟩ = ⟨ , ⟩^*ℒ_ψ` through `𝔾_{a,S} → 𝔾_{a,𝔽_p}`. Prove: bilinearity `⟨e_1 + e_2, e'⟩ = ⟨e_1, e'⟩ + ⟨e_2, e'⟩`, hence `(s × id)^*ℒ_ψ⟨ , ⟩ ≅ p_{13}^*ℒ_ψ⟨ , ⟩ ⊗ p_{23}^*ℒ_ψ⟨ , ⟩` for the addition `s`; `⟨f e_1, e_2'⟩ = ⟨e_1, f^∨ e_2'⟩` for a linear `f : E_1 → E_2`; compatibility with base change `S' → S`; and nondegeneracy on fibres. (LAU87 lines 372–377; KL85 lines 365–371.)
*Needs:* AlgebraicVectorBundles §L1A (Layer 4, relative Spec), §L2B (Layer 7, geometric vector bundles); Tau Ceti `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.dual` and `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.evalIso`; §2.5.

API:
- `(s × id)^*ℒ_ψ⟨ , ⟩ ≅ p_{13}^*ℒ_ψ⟨ , ⟩ ⊗ p_{23}^*ℒ_ψ⟨ , ⟩` and the symmetric statement in the second variable.
- `(f × id)^*ℒ_ψ⟨ , ⟩_2 ≅ (id × f^∨)^*ℒ_ψ⟨ , ⟩_1` on `V(E_1) ×_S V(E_2^∨)` for linear `f : E_1 → E_2`.
- The restriction of the kernel to `σ(S) ×_S V'` and to `V ×_S σ'(S)` is `Λ`.
- Under the biduality `E ≅ E^{∨∨}` of `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.evalIso`, the kernel of `E^∨` is the transpose of that of `E`.

**Checks.**
- `r = 1`, `E = O_S`: the pairing is `x x'` on `𝔸²_S`.
- `r = 0`: `V = V' = S` and the kernel is `Λ_S`.
- The pairing is not linear on `V ×_S V'` as a vector bundle: on `𝔸¹ × 𝔸¹` it is the quadratic function `x x'`, and `ℒ_ψ(x x')` is not a pullback from either factor.

### 3.2 The transform

Define `FT_ψ = FT_{ψ,!} : D⁺(V, Λ) → D⁺(V', Λ)` as the kernel transform with kernel `ℒ_ψ⟨ , ⟩` and shift `r`, and `FT_{ψ,*}(K) = Rpr'_*(pr^*K ⊗ ℒ_ψ⟨ , ⟩)[r]` with its forget-supports map `FT_{ψ,!} → FT_{ψ,*}`. Prove `FT_ψ(σ_*M) ≅ π'^*M[r]` for `M ∈ D⁺(S, Λ)`, and `FT_{ψ^{−1}} ≅ [−1]^* ∘ FT_ψ`. (LAU87 Définition (1.2.1.1), LAU87 lines 378–382; KL85 (2.1.1)–(2.1.2), KL85 lines 372–377.)
*Needs:* §§1.1, 3.1; EtaleCohomologyFoundations §0.8.

API:
- `FT_ψ` is triangulated and commutes with shifts and Tate twists.
- `FT_ψ(K ⊗ π^*M) ≅ FT_ψ(K) ⊗ π'^*M` for `M ∈ D⁺(S, Λ)` of finite Tor amplitude.
- `FT_{ψ(c·)} ≅ [c]^* ∘ FT_ψ` for `c ∈ 𝔽_p^×`, where `[c]` is multiplication by `c` on `V'`.
- `FT_ψ` is the kernel transform of §1.1 with kernel `ℒ_ψ⟨ , ⟩` on `V ×_S V'` and shift `r`.

**Checks.**
- `r = 0`: `FT_ψ` is the identity.
- On `𝔸¹_{𝔽_q}`: `FT_ψ(i_{0*}Λ) = Λ_{𝔸¹}[1]`, trace `−1` everywhere, equal to `−Σ_x δ_0(x) ψ(x x')`.
- With the trivial (degenerate) character, `FT(K) = π'^*Rπ_!K[r]`, which forgets everything but `Rπ_!K`.

### 3.3 Local acyclicity at infinity and `FT_! = FT_*`

Let `j × 1 : 𝔸¹ ×_{𝔽_p} 𝔸¹ → ℙ¹ ×_{𝔽_p} 𝔸¹` be the inclusion and `ℒ = (j × 1)_!ℒ_ψ(x y)`. Prove: the projection `ℙ¹ ×_{𝔽_p} 𝔸¹ → ℙ¹` is universally locally acyclic relative to `ℒ` in the sense of EtaleCohomologyFoundations §F.2.3, and its strict-local comparison maps remain isomorphisms after tensoring `ℒ` with any `Λ`-module (strong local acyclicity) (KL85 Théorème (2.4.4), KL85 lines 567–568; LAU87 Théorème (1.3.1.2), LAU87 lines 526–529). Deduce that for every qcqs `𝔽_p`-scheme `S`, every `E` and every `K ∈ D⁺(V, Λ)` the forget-supports map `FT_{ψ,!}(K) → FT_{ψ,*}(K)` is an isomorphism (KL85 Théorème (2.4.1), KL85 lines 447–449; LAU87 Théorème (1.3.1.1), LAU87 lines 521–525). Route (KL85 lines 450–554): Zariski-locally `E = O_S^r`; the map factors variable by variable, reducing to `r = 1`; it is enough to treat `j_!(pr_1^*(−) ⊗ ℒ_ψ(x y)) → Rj_*(…)` over `∞ × 𝔸¹`; translation `y ↦ y + a` reduces from `∞ × 0` to `∞ × 𝔾_m`; there the Artin–Schreier cover `T^p − T = x y`, finite Galois with group `𝔽_p`, totally ramified over `∞ × 𝔾_m`, with smooth total space, decomposes its pushforward of `Λ` as `Λ ⊕ ⊕_{ψ' ≠ 1} (j × 1)_!ℒ_{ψ'}(x y)` (KL85 Lemme (2.4.2), KL85 lines 514–521), and near `∞ × 𝔾_m` the composite of the cover with `pr_1` factors as a radicial surjection followed by a smooth map, so smooth base change and topological invariance apply.
*Needs:* §§2.5, 3.2; EtaleCohomologyFoundations §§0.7, F.0.4, F.2.2, F.2.3; SchemeAndStackFoundations §2.11.

**Checks.**
- `K = Λ_V` on `S = Spec k̄`, `r = 1`: `FT_!(Λ) = σ'_*Λ(−1)[−1]` by proper base change, and the theorem gives the same for `FT_*`, although the ordinary cohomology of the fibre of `pr'` over `0'` is `RΓ(𝔸¹, Λ)[1] = Λ[1]`; `Rpr'_*` is not computed on fibres, and a fibrewise definition of `FT_*` would put `Λ[1]` at `0'`.
- The constant kernel `Λ` (trivial `ψ`) fails: `Rpr'_!Λ = Λ(−1)[−2]` while `Rpr'_*Λ = Λ`; nondegeneracy is used.
- On the Artin–Schreier cover for `p = 2`, `T² − T = x y` has the single nontrivial `ψ'`, and the decomposition reads `f_*Λ = Λ ⊕ (j × 1)_!ℒ_ψ(x y)` when `2` is a unit of `Λ`.

### 3.4 Inversion

Prove: `Rpr_!ℒ_ψ⟨ , ⟩ ≅ σ_*Λ(−r)[−2r]` on `V` (fibres off the zero section vanish by §2.4 and Künneth, and over the zero section `Rπ_!Λ = Λ(−r)[−2r]` by the projective-bundle formula of EtaleCohomologyFoundations §0.9 for `ℙ¹`, localization and Künneth); `FT_ψ(π^*M[r]) ≅ σ'_*M(−r)` for `M ∈ D⁺(S, Λ)` (LAU87 Proposition (1.2.2.2), LAU87 lines 419–432); and construct the inversion isomorphism `ι_K : FT^{V'}_ψ(FT^V_ψ K) ≅ [−1]^*K(−r)`, natural in `K ∈ D⁺(V, Λ)` and compatible with base change, through the cartesian diagram of LAU87 lines 407–417. Hence `FT_ψ` is an equivalence of triangulated categories with quasi-inverse `[−1]^* FT^{V'}_ψ(−)(r)`, equivalently `FT_{ψ^{−1}} ∘ FT_ψ ≅ (−r)` (LAU87 Théorème (1.2.2.1) and Corollaire (1.2.2.3), LAU87 lines 401–434). Prove also `Rπ'_!FT_ψ(K) ≅ σ^*K(−r)[−r]` and `σ'^*FT_ψ(K) ≅ Rπ_!K[r]` (LAU87 Corollaire (1.2.2.5), LAU87 lines 445–449).
*Needs:* §§3.1–3.3; EtaleCohomologyFoundations §§0.7–0.9, F.2.1, F.2.7; gap:projection-formula-qcqs.

**Checks.**
- `r = 1`, `S = Spec 𝔽_q`: `FT(FT(i_{0*}Λ)) = FT(Λ[1]) = i_{0*}Λ(−1)`, trace `q` at `0`, matching `𝔉 𝔉 δ_0 = q δ_0` and the signs `(−1)^{2r}`.
- Degenerate non-example: for the trivial character, `FT(FT(i_{0*}Λ)) = Λ_{𝔸¹}(−1)`, not supported at `0`.
- Sign witness: for `r = 1` and the skyscraper at `a ∈ 𝔽_q^×`, `FT(FT(i_{a*}Λ)) ≅ i_{(−a)*}Λ(−1)`; without `[−1]^*` the support would be `a`, which differs from `−a` for `p` odd.

### 3.5 Duality

For `S` Noetherian, `K ∈ Dᵇ_ctf(V, Λ)` and `M ∈ D⁺(S, Λ)`, prove the bifunctorial isomorphism `RHom(FT_ψ K, π'^!M) ≅ FT_{ψ^{−1}}(RHom(K, π^!M))(r)`, from the sheafified Verdier adjunction for `pr'`, `pr^! = pr^*(r)[2r]`, smooth base change for `RHom`, `ℒ_ψ^∨ = ℒ_{ψ^{−1}}` and §3.3 (LAU87 Théorème (1.3.2.1), LAU87 lines 553–560). For `M = Λ_S` this is `D_{V'/S}(FT_ψ K) ≅ FT_{ψ^{−1}}(D_{V/S}K)(r)` (KL85 Corollaire (2.1.5)(ii), KL85 lines 390–391); over `S = Spec k` it is `D(FT_ψ K) ≅ FT_{ψ^{−1}}(DK)(r)` (LAU87 Corollaire (1.3.2.2), LAU87 lines 563–565).
*Needs:* §§3.3–3.4; EtaleCohomologyFoundations §§F.5–F.6; gap:smooth-exceptional-pullback (for `S` separated of finite type over a field, EtaleDualityAndPerverseSheaves §2.7).

**Checks.**
- `S = Spec 𝔽_q`, `r = 1`, `K = i_{a*}Λ` with `a ∈ 𝔽_q^×`: `D(FT_ψ K) = ℒ_ψ(a x')^∨(1)[1] = ℒ_{ψ^{−1}}(a x')(1)[1] = FT_{ψ^{−1}}(DK)(1)`; with `FT_ψ` on the right the traces would be `ψ(a x')` instead of `ψ(−a x')`, different at `x' = 1` for `p = 3`.
- `K = Λ_{𝔸¹}[1]`: `D(FT K) = D(σ'_*Λ(−1)) = σ'_*Λ(1)` and `FT_{ψ^{−1}}(Λ(1)[1])(1) = σ'_*Λ(1)`.
- `r = 0`: duality reduces to `D_S`, and the twist `(r)` is trivial.

### 3.6 Functoriality

Prove, for the data of this layer:

- base change: for `g : S' → S`, `g'^* FT_ψ(K) ≅ FT_ψ(g^*K)` (KL85 Corollaire (2.1.5)(i), KL85 lines 388–389; LAU87 Proposition (1.2.2.9), LAU87 lines 472–474), and for separated finitely presented `g`, `FT_ψ(Rg_{V!}K_1) ≅ Rg_{V'!}FT_ψ(K_1)` (LAU87 Proposition (1.2.3.5), LAU87 lines 508–518);
- linear maps: for `f : E_1 → E_2` of ranks `r_1`, `r_2` and `K_1 ∈ D⁺(V(E_1))`, `FT_ψ(Rf_!K_1) ≅ f^{∨*}FT_ψ(K_1)[r_2 − r_1]` (LAU87 Théorème (1.2.2.4), LAU87 lines 435–444);
- external products: `FT^{E_1 ⊕ E_2}_ψ(K_1 ⊠_S K_2) ≅ FT^{E_1}_ψ K_1 ⊠_S FT^{E_2}_ψ K_2` (LAU87 lines 459–461);
- convolution: `K_1 * K_2 = Rs_!(K_1 ⊠_S K_2)` and `FT_ψ(K_1 * K_2) ≅ FT_ψ K_1 ⊗^L FT_ψ K_2[−r]` (LAU87 Définition (1.2.2.6) and Proposition (1.2.2.7), LAU87 lines 452–463);
- Plancherel: `Rπ'_!(FT_ψ K_1 ⊗^L FT_ψ K_2) ≅ Rπ_!(K_1 ⊗^L [−1]^*K_2)(−r)` (LAU87 Proposition (1.2.2.8), LAU87 lines 464–471);
- sub-bundles: for a sub-bundle `F ⊂ E` of rank `s` with orthogonal `F^⊥ ⊂ E^∨`, `FT_ψ(Λ_{V(F)}[s]) ≅ Λ_{V(F^⊥)}(−s)[r − s]` (LAU87 Proposition (1.2.3.1), LAU87 lines 477–480);
- translation: for `e ∈ V(S)`, `FT_ψ(τ_{e*}K) ≅ FT_ψ(K) ⊗ ℒ_ψ⟨e, ·⟩` (LAU87 Proposition (1.2.3.2), LAU87 lines 483–487);
- quadratic forms, in every characteristic: for a symmetric isomorphism `a : E → E^∨` with `q(e) = ⟨e, a e⟩` and `q'(e') = ⟨a^{−1}e', e'⟩`, `[2]^* FT_ψ(ℒ_ψ(q)) ≅ ℒ_ψ(−q') ⊗ π'^*Rπ_!ℒ_ψ(q)[r]`, from the identity `q(e) + ⟨e, 2e'⟩ = q(e + a^{−1}e') − q'(e')`, valid for every symmetric `a`, and the automorphism `(e, e') ↦ (e + a^{−1}e', e')` of `V ×_S V'` over `V'` (LAU87 Proposition (1.2.3.3), LAU87 lines 488–494, which has no parity hypothesis);
- linear group actions: for an `S`-group `H` of finite type acting linearly on `E` by `m`, with contragredient action `m'`, an isomorphism `m^*K ≅ M ⊠_S L` induces `m'^*FT_ψ(K) ≅ M ⊠_S FT_ψ(L)` (LAU87 Proposition (1.2.3.4), LAU87 lines 495–507).

*Needs:* §§3.2–3.4; §1.2; EtaleCohomologyFoundations §§0.8, F.2.1, F.2.7; gap:projection-formula-qcqs.

**Checks.**
- Shift witness for linear maps: `E_1 = O_S` (`r_1 = 1`), `E_2 = 0`, `K_1 = i_{0*}Λ`: `Rf_!K_1 = Λ_S` and `f^∨ = σ'`, so `Λ_S = σ'^*(Λ[1])[s]` forces `s = −1 = r_2 − r_1`; the shift `r_1 − r_2` gives `Λ_S[2]`.
- Convolution of two skyscrapers `i_{a*}Λ * i_{b*}Λ = i_{(a+b)*}Λ` has transform `ℒ_ψ⟨a + b, ·⟩[r]`, equal to `ℒ_ψ⟨a, ·⟩[r] ⊗ ℒ_ψ⟨b, ·⟩[r] [−r]`.
- Quadratic forms for `p = 2`: `q` is additive and `[2] = 0`, so the left side is `π'^*Rπ_!ℒ_ψ(q)[r]` by §3.4. For `r = 1`, `a = 1`, `ℒ_ψ(x²) ≅ ℒ_ψ(x)` (§2.5) has `Rπ_! = 0` and both sides vanish; for `r = 2` and `a` the antidiagonal matrix, `q = 2x_1x_2 = 0` and `q' = 0`, and both sides are `π'^*Λ(−2)[−2]`. A version restricted to odd `p` would lose these cases, where the formula holds.

### 3.7 Coefficients and realization

Prove: for Noetherian `S` and finite `Λ`, `FT_ψ` preserves `Dᵇ_ctf`; for a ring map `h : Λ → Λ'`, `FT_{h∘ψ}(Λ' ⊗^L_Λ K) ≅ Λ' ⊗^L_Λ FT_ψ(K)`. For `O_E`-coefficients define the transform of a normalized constructible system levelwise and prove it is again normalized; define the `E`- and `ℚ̄_ℓ`-transforms by rationalization and colimit, and transport the isomorphisms of §§3.3–3.6 through realization. (KL85 lines 438–441: the `ℚ̄_ℓ` statements follow from the torsion ones by passage to the limit.)
*Needs:* §§1.3, 3.2–3.6; EtaleCohomologyFoundations §§F.4.1–F.4.6.

**Checks.**
- `Λ = ℤ/49 → ℤ/7` with `ψ(1) = 18 ↦ 4`: the reduction of `FT_ψ(K)` is `FT_{ψ mod 7}(K ⊗^L ℤ/7)`.
- For `O_E`, the system `(ℒ_{ψ mod λⁿ})_n` is normalized: each reduction map is an isomorphism `ℒ_{ψ mod λ^{n+1}} ⊗ O_E/λⁿ ≅ ℒ_{ψ mod λⁿ}`.
- The rational transform of the constant sheaf on `𝔸¹_{𝔽_q}` is `σ'_*E(−1)[−1]`, of trace `−q`.

### 3.8 Trace functions and Frobenius

Let `S` be separated of finite type over `𝔽_q` and `K ∈ Dᵇ_ctf(V, Λ)`. Prove: for every `n ≥ 1`, `s ∈ S(𝔽_{qⁿ})` and `e' ∈ V'_s(𝔽_{qⁿ})`, `t_{FT_ψ K, n}(e') = (−1)^r Σ_{e ∈ V_s(𝔽_{qⁿ})} t_{K,n}(e) ψ(Tr_{𝔽_{qⁿ}/𝔽_p}⟨e, e'⟩)`, that is `(−1)^r 𝔉_ψ(t_K)` fibrewise (LAU87 Théorème (1.2.1.2), LAU87 lines 389–391); and the trace forms of §§3.4–3.6, including Plancherel. For `S_0` over `𝔽_q`, `S = S_0 ⊗ 𝔽̄_q` and the Frobenius `F = F_{V_0} × id` of `V`, construct a canonical isomorphism `F^* FT_ψ(K) ≅ FT_ψ(F^*K)`, natural in `K`, compatible with composition of powers of `F` and with base change, as the composite of the base change of §3.6 along the automorphism `id × Spec(σ^{−1})` of `S` (`σ` the arithmetic Frobenius of `𝔽̄_q`), which lifts to `V` and `V'`, and the identification of absolute Frobenius pullback with the identity; so `FT_ψ` sends a pair `(K, φ : F^*K ≅ K)` to a pair of the same kind, and for `K` descended to `V_0` this is the descent datum of `FT_ψ(K_0)`.
*Needs:* §§1.4, 3.4–3.7, 0.2; InverseGaloisAndArithmeticFundamentalGroups §§IG.0.T2–IG.0.T3; EtaleCohomologyFoundations §§F.0.4, F.10.1–F.10.2b; SchemeAndStackFoundations §0.29; Tau Ceti `AlgebraicGeometry.Scheme.Hom.qPowerFrobenius_baseChange` for the Frobenius exchange.

**Checks.**
- `r = 1`, `K = Λ_{𝔸¹}`: `t_{FT K}(0') = −q` and `0` elsewhere (Conventions witness).
- Plancherel on traces for `K_1 = K_2 = i_{0*}Λ` on `𝔸¹`: the left side `Σ_{x'} 1 = q`, the right side `q · 1`, with the twist `(−1)` contributing `q`.
- On `Spec 𝔽_q` with `r = 0`, the Frobenius exchange is the identity; for `S_0 = 𝔸¹` it is not the identity on underlying complexes of `S`, since `F` moves points of `S`.

### Examples

`S = Spec 𝔽_q`, `r = 1`. The skyscraper at `a` goes to `ℒ_ψ(a x')[1]`, the constant sheaf `Λ[1]` to `δ_{0'}(−1)`, and `j_!ℒ_χ[1]` for a nontrivial Kummer `χ` to `j'_!ℒ_{χ^{−1}}[1] ⊗ G(χ, ψ)` (§5.4).

### Dependencies

Layers 0–2; Tau Ceti `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.dual`, `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.evalIso` and `AlgebraicGeometry.Scheme.Hom.qPowerFrobenius_baseChange`; EtaleCohomologyFoundations §§0.7–0.9, F.0.4, F.2.1–F.2.3, F.2.7, F.4.1–F.4.6, F.5–F.6, F.10.1–F.10.2b; AlgebraicVectorBundles §L1A (Layer 4, relative Spec), §L2B (Layer 7, geometric vector bundles); SchemeAndStackFoundations §§0.29, 2.11; InverseGaloisAndArithmeticFundamentalGroups §§IG.0.T2–IG.0.T3; EtaleDualityAndPerverseSheaves §2.7; gap:projection-formula-qcqs; gap:smooth-exceptional-pullback.

## Layer 4: perverse `t`-exactness

### 4.1 `t`-exactness over a field

Let `k` be a field of characteristic `p`, `S = Spec k`, `E` of dimension `r`. Coefficients are finite rings `Λ` with nondegenerate `ψ`, `O_E` with both integral perversities, `E`, or `ℚ̄_ℓ`. Prove that `FT_ψ : Dᵇ_c(V) → Dᵇ_c(V')` is `t`-exact for the middle perversity, and for `O_E` coefficients also for the perversity `p⁺`. Route: `pr^*[r]` is `t`-exact; tensoring with the lisse rank-one `ℒ_ψ⟨ , ⟩` preserves both aisles, since stalks and costalks `i_x^!(K ⊗ ℒ) ≅ i_x^!K ⊗ ℒ|_x` change by an invertible module; `pr'` is affine, so `Rpr'_!` is left and `Rpr'_*` right `t`-exact; and `FT_! = FT_*` (§3.3). For `p⁺`, duality (§3.5) exchanges `p` and `p⁺` and `FT_{ψ^{−1}}` is `t`-exact for `p`. (LAU87 Théorème (1.3.2.3), LAU87 lines 566–575; KL85 Corollaire (2.1.5)(iii), KL85 lines 392–393; KW01 Ch. III, by locator.)
*Needs:* §§3.3–3.5, 3.7; EtaleDualityAndPerverseSheaves §2.7; EtaleCohomologyFoundations §F.8.

**Checks.**
- `r = 1`: `i_{0*}Λ` (perverse) goes to `Λ[1]` (perverse), and `Λ_{𝔸¹}` (not perverse: it lies in `ᵖD^{≥1}`) goes to `σ'_*Λ(−1)[−1]` (also in `ᵖD^{≥1}`), consistent with exactness.
- `O_E = ℤ_ℓ`, the torsion skyscraper `(ℤ/ℓ)_0[−1]` is in the `p⁺` heart and goes to `(ℤ/ℓ)_{𝔸¹}`, which is in the `p⁺` heart and not in the `p` heart.
- Degenerate character: `FT(i_{a*}Λ) = Λ[1]` for every `a`, so `FT(Λ[1]) = Λ(−1)` constant, which is not perverse on `𝔸¹`; nondegeneracy is used.

### 4.2 The equivalence of hearts

Prove that `FT_ψ` restricts to an equivalence `Perv(V) → Perv(V')` with quasi-inverse `[−1]^* FT^{V'}_ψ(−)(r)`, for `O_E` on both hearts, compatible with duality on hearts, and that for field coefficients it sends simple objects to simple objects. (LAU87 Théorème (1.3.2.3) and Corollaire (1.3.2.4), LAU87 lines 566–577.)
*Needs:* §§3.4, 4.1.

**Checks.**
- `i_{0*}Λ` and `Λ[1]` are simple on `𝔸¹` with field coefficients and correspond.
- The exact sequence of perverse sheaves `0 → i_{0*}Λ → j_!Λ[1] → Λ_{𝔸¹}[1] → 0` (with `j : 𝔾_m → 𝔸¹`) goes to `0 → Λ_{𝔸¹'}[1] → FT(j_!Λ[1]) → i_{0'*}Λ(−1) → 0`, so `FT(j_!Λ[1])` is a perverse extension with generic sheaf `Λ`, not a direct sum of shifted objects.
- `Λ = ℤ/49`, `p = 3`, `ψ(1) = 18`: the skyscraper `(ℤ/49)_0` has the perverse subobject `(7ℤ/49)_0 ≅ (ℤ/7)_0`, and the equivalence sends it to `(ℤ/7)_{𝔸¹'}[1] ⊂ (ℤ/49)_{𝔸¹'}[1]`; for non-field coefficients simple objects are killed by the maximal ideal and the subobject lattice is preserved.

### Examples

On `𝔸²_k`, the constant perverse sheaf of a line `ℓ ⊂ 𝔸²` through `0` (`Λ_ℓ[1]`) goes to `Λ_{ℓ^⊥}(−1)[1]`, by §3.6 with `s = 1`, `r = 2`.

### Dependencies

Layer 3; EtaleDualityAndPerverseSheaves §2.7; EtaleCohomologyFoundations §F.8.

## Layer 5: the transform on the affine line

Throughout, `k` is a perfect field of characteristic `p`, `Λ` a coefficient field: a finite field of characteristic `ℓ ≠ p`, a finite `E/ℚ_ℓ`, or `ℚ̄_ℓ`, containing a primitive `p`-th root of unity, with `ψ` nontrivial. `FT = FT_ψ` goes from `A` to `A'`.

### 5.1 Local invariants of perverse sheaves on curves

For a perverse `K` on a smooth connected curve `X` over `k` (so `X` is irreducible) and a closed point `x`, define the generic rank `rk(K)` as the rank of `H^{−1}(K)` at the generic point of `X`, the rank `rk_x(K) = dim H^{−1}(K_x̄) − dim H⁰(K_x̄)`, the Swan conductor `sw_x(K)` as the Swan conductor of the local monodromy `H^{−1}(K_{η̄_x})` at `x`, and the total drop `a_x(K) = rk(K) + sw_x(K) − rk_x(K)`. These are the negatives of the integers LAU87 obtains by additivity from sheaves (LAU87 lines 842–855), so that they are nonnegative on perverse sheaves. Prove `a_x(K) ≥ rk(K) − rk_x(K) ≥ 0`, with `a_x(K) = 0` exactly when `H⁰(K)_x̄ = 0` and `H^{−1}(K)` is lisse at `x`, exactly when `rk_x(K) = rk(K)` (LAU87 Lemme (2.2.1.1), LAU87 lines 856–863); and, for `X` projective, the Euler–Poincaré formula `χ(X_{k̄}, K) = Σ_x deg(x) a_x(K) − χ(X_{k̄}) rk(K)` with `χ(X_{k̄}) = C(2 − 2g)`, where `C` is the number of connected components of `X_{k̄}` and `g` the genus of any one of them (LAU87 Théorème (2.2.1.2), LAU87 lines 868–875, with these signs, for the connected `X` of LAU87 (2.2.1), LAU87 line 839), from the lisse case by dévissage. For continuous representations `V` of the Galois group of a henselian trait of equal characteristic `p` with residue field `k`, with breaks and Swan conductors taken through the completion comparison of §2.7: the slope decomposition `V = ⊕_λ V_λ` and `s(V) = Σ_λ λ r(V_λ)` (LAU87 lines 735–754); for `L` of rank one and Swan conductor one, `s(V ⊗ L) = r(V_{[0,1[}) + s(V_1 ⊗ L) + s(V_{]1,∞[})` and `s(V_1 ⊗ L) ≤ r(V_1)` (LAU87 Proposition (2.1.2.7), LAU87 lines 772–794); `ℒ_ψ(a/π)` has slope one for `a ∈ k^×` (LAU87 Exemple (2.1.2.8), LAU87 lines 795–804); and the slope-one twisting lemma: for `k` algebraically closed and a nonzero `V` purely of slope one, some `a ∈ k` makes `(V ⊗ ℒ_ψ(a/π))` have a nonzero part of slope `< 1`. Route for the lemma, with `K = k((π))` the completed fraction field and `G^u`, `G^{u+}` the upper ramification subgroups of `G_K`: `G^{1+}` acts trivially on `V`, and `G^1` acts through `G^1/G^{1+}`, which is abelian of exponent `p` because its image in each finite quotient `Gal(M/K)` is trivial or a lower graded piece `G_i/G_{i+1}` with `i ≥ 1` (RamificationOfCompleteDiscretelyValuedFields §§3a.1, 4a.1). So `V` is the sum of its eigenspaces for nontrivial characters of `G^1/G^{1+}` (the image of `G^1` is a finite `p`-group by ArithmeticGaloisRepresentations §3.1, `Λ` contains `μ_p`, and `V^{G^1} = 0`), and it suffices that every such character `θ` is the restriction of `ℒ_ψ(b/π)` for some `b ∈ k`: then `a = −b` makes `G^1` fix a nonzero vector of `V ⊗ ℒ_ψ(a/π)`, and the `G^1`-invariants are its part of slope `< 1`. To see this, choose a finite Galois `L/K` with group `H` such that `H^{1+} = 1` and `θ` factors through the image `H^1` of `G^1` (the fixed field of `G_{L'} G^{1+}` for a finite Galois `L'/K` with `G^1 ∩ G_{L'} ⊂ ker θ`), and put `L_0 = L^{H^1}` and `m = ψ_{L_0/K}(1)`, with `ψ_{L_0/K}` the Herbrand transition function. Since `G^1 ⊂ G_{L_0}`, the open-subgroup identity `G^u ∩ G_{L_0} = G_{L_0}^{ψ_{L_0/K}(u)}` (RamificationOfCompleteDiscretelyValuedFields §4a.2) gives `G^1 = G_{L_0}^m` and `G^{1+} = G_{L_0}^{m+}`, so `θ`, read on `G_{L_0}` through `Gal(L/L_0) = H^1`, has break at most `m`. By Artin–Schreier theory (`TauCeti.additiveHilbert90` and the degree-zero exactness `TauCeti.ContCohomology.DiscreteShortExact.longExact_exact₁`, `TauCeti.ContCohomology.DiscreteShortExact.longExact_exact₃` for the sequence `0 → 𝔽_p → L_0ˢ → L_0ˢ → 0`, `x ↦ x^p − x`, of discrete modules over the compact `G_{L_0}`, onto because `x^p − x − a` is separable; `H⁰(G_{L_0}, L_0ˢ) = L_0`, and `H¹(G_{L_0}, 𝔽_p)` is the group of continuous homomorphisms `G_{L_0} → 𝔽_p`, as in the Tau Ceti contract), `u ↦ ℒ_ψ(u)` is a bijection from `L_0/℘(L_0)` onto the characters `G_{L_0} → μ_p(Λ)`, so `θ = ℒ_ψ(w)` for a class `w`. Write `L_0 = k((ϖ_0))`. At its `ϖ_0`-adic place, every class has a representative that is integral or has pole order prime to `p` (`TauCeti.Place.exists_reduced_artinSchreier_representative`), and two representatives with poles of order prime to `p` have the same pole order (`TauCeti.ord_reduced_artinSchreier_representative_eq`). Every class has moreover a reduced representative, with no term of nonnegative exponent and no term `ϖ_0^{−n}` with `p | n`, proved here termwise because the pinned statements control only the leading pole: `k = ℘(k)`, `f = g^p − g` for `f ∈ ϖ_0 k[[ϖ_0]]` and `g = −Σ_{n ≥ 0} f^{p^n}`, and `e ϖ_0^{−pn} ≡ e^{1/p} ϖ_0^{−n}` on each of the finitely many polar terms. The break of a class is the pole order of its reduced representative: a class with an integral representative is trivial by the first two reductions, and a class whose reduced representative has pole order `m' > 0` is nontrivial (`TauCeti.ne_pow_sub_self_of_exists_reduced_artinSchreier_pole`) with the single break `m'` (ArithmeticGaloisRepresentations §3.7). The coefficient of `ϖ_0^{−m}` in the reduced representative is well defined and additive on classes of break `≤ m`. For `b ≠ 0`, `ℒ_ψ(b/π)` has break `1`, so it is nontrivial on `G_{L_0}^m` and trivial on `G_{L_0}^{m+}`, and the class of `b/π` in `L_0/℘(L_0)` has break exactly `m` (so `m` is an integer prime to `p`). Hence its coefficient `c(b)` at `ϖ_0^{−m}` is an injective additive function of `b`, and `c(b)^{p^N}` is an additive polynomial in `b` for large `N`, since reduction moves a coefficient `e` of `ϖ_0^{−p^j n}` to the coefficient `e^{p^{−j}}` of `ϖ_0^{−n}`. An injective additive polynomial over the algebraically closed `k` is a monomial `β b^{p^i}`, so `c` maps onto `k`. Taking `b` with `c(b)` the coefficient of `w` (and `b = 0` when `w` has break `< m`), `w − [b/π]` has break `< m`, so `ℒ_ψ(w − b/π)` is trivial on `G_{L_0}^m = G^1` and `θ = ℒ_ψ(b/π)|_{G^1}`.
*Needs:* ArithmeticGaloisRepresentations §§3.1, 3.7; RamificationOfCompleteDiscretelyValuedFields §§3a.1, 4a.1–4a.2; Tau Ceti `TauCeti.additiveHilbert90`, `TauCeti.ContCohomology.DiscreteShortExact.longExact_exact₁`, `TauCeti.ContCohomology.DiscreteShortExact.longExact_exact₃`, `TauCeti.ContCohomology.H1EquivOfSmulEqSelf`, `TauCeti.ContCohomology.explicitH1AddEquivContinuousCohomology`, `TauCeti.Place.exists_reduced_artinSchreier_representative`, `TauCeti.ord_reduced_artinSchreier_representative_eq`, `TauCeti.ne_pow_sub_self_of_exists_reduced_artinSchreier_pole`; Mathlib `ContinuousCohomology.zeroIso`; EtaleDualityAndPerverseSheaves §§2.10, 5.2; EtaleCohomologyFoundations §F.3a; §2.7.

API:
- `rk`, `rk_x` and `sw_x` are additive on short exact sequences of perverse sheaves, hence so is `a_x`.
- For a finite extension `k'` of `k` inside `k̄` and a connected component `X'` of `X ⊗_k k'`, the pullback of `K` to `X'` has generic rank `rk(K)`, and at every closed point of `X'` over `x` it has the `rk_x`, `sw_x` and `a_x` of `K` at `x`; a closed point `x` has `deg(x)` geometric points.
- For `K = j_{!*}F[1]` with `F` lisse on `U ∋ x`, `a_x(K) = 0`; for `x ∉ U`, `rk_x(K) = dim F^{I_x}`.

**Checks.**
- `K = i_{x*}Λ` at a degree-one point of `ℙ¹`: `rk = 0`, `rk_x = −1`, `sw_x = 0`, `a_x = 1`, and `χ(ℙ¹_{k̄}, K) = 1 = 1 − 2·0`; the formula `χ(X_{k̄}) rk(K) − Σ deg(x) a_x(K)` written with these nonnegative invariants would give `−1`.
- `K = j_!ℒ_ψ(x)[1]` on `ℙ¹` with `j : 𝔸¹ → ℙ¹`: `rk = 1`, `rk_∞ = 0`, `sw_∞ = 1`, `a_∞ = 2`, and `χ = 2 − 2·1 = 0 = −χ_c(𝔸¹_{k̄}, ℒ_ψ(x))`, the shift `[1]` changing the sign of `χ_c(𝔸¹_{k̄}, ℒ_ψ(x)) = 0`.
- A nontrivial Kummer `K = j_!ℒ_χ[1]` at `0` has `sw_0 = 0`, `rk_0 = 0` and `a_0 = 1`; a lisse `K[−1]` at `x` has `a_x = 0`.
- Connectedness is needed: on `X = ℙ¹ ⊔ ℙ¹` with `K = Λ[1]` on the first component and `0` on the second, `χ(X_{k̄}, K) = −2`, every `a_x(K) = 0` and `χ(X_{k̄}) = 4`, so the right side is `−4` with generic rank `1` and `0` with generic rank `0`, never `−2`. The connected but not geometrically connected `X = ℙ¹_{𝔽_{q²}}` over `𝔽_q` has `C = 2`, `g = 0`, and `K = Λ[1]` gives `−4 = 0 − 4 · 1` on both sides.
- Slope-one twisting lemma: over `k = 𝔽̄_p`, for `W` of rank `2` purely of slope `1/2` and `b ≠ 0`, `V = W ⊗ ℒ_ψ(b/π)` is purely of slope one (ArithmeticGaloisRepresentations §3.7), and `a = −b` returns `W`, all of slope `1/2`. Over `k = 𝔽_p` the conclusion fails: for `c ∈ 𝔽_{p²} ∖ 𝔽_p`, the representation `V` induced from `ℒ_ψ(c/π)` on the unramified quadratic extension is purely of slope one, and for every `a ∈ 𝔽_p` the two characters `ℒ_ψ((c + a)/π)` and `ℒ_ψ((c^p + a)/π)` of `V ⊗ ℒ_ψ(a/π)` over that extension have slope one, since `c + a ≠ 0 ≠ c^p + a`.
- Reduced representative: over `k = 𝔽̄_3` and `L_0 = k((t))`, `u = t^{−6} + t^{−4} + t^{−2}` has pole order `6`, divisible by `3`. With `w = t^{−2}`, `u − (w³ − w) = t^{−4} + 2t^{−2}`, which is already reduced, of pole order `4` and coefficient `1` at `t^{−4}`. With `z = t^{−2} + t^{−1}`, `u − (z³ − z) = t^{−4} − t^{−3} + 2t^{−2} + t^{−1}` again has pole order `4`, and its termwise reduction `−t^{−3} ≡ −t^{−1}` returns `t^{−4} + 2t^{−2}`. So the class of `u` has break `4`; reading the break off the pole order of `u` itself would give `6`.

### 5.2 Types of simple perverse sheaves

Distinguish three types of simple perverse sheaves on `A`: (T1) `i_{s*}F` for a closed point `s` and an irreducible `F` on `s`; (T2) `(pr_A)_*(ℒ_ψ(x s') ⊗ pr_{s'}^*F')[1]` for a closed point `s'` of `A'` and an irreducible `F'` on `s'`, where `ℒ_ψ(x s')` is the restriction of `ℒ_ψ(x x')` to `A × s'`; (T3) `j_{!*}F[1]` for a dense open `j : U → A` and an irreducible lisse `F` on `U` with no subquotient of `F|_{U ⊗ k̄}` isomorphic to `ℒ_ψ(x a')|_{U ⊗ k̄}` for any `a' ∈ k̄`. Prove that every simple perverse sheaf is of exactly one type, and that `FT` exchanges (T1) with (T2') and (T3) with (T3'), with `FT(i_{s*}F) ≅ (pr_{A'})_*(ℒ_ψ(s x') ⊗ pr_s^*F)[1]` and `FT((pr_A)_*(ℒ_ψ(x s') ⊗ pr_{s'}^*F')[1]) ≅ [−1]^* i'_{s'*}F'(−1)`. (LAU87 (1.4.2) and Théorème (1.4.2.1), LAU87 lines 609–638.)
*Needs:* §§3.4, 4.2; EtaleDualityAndPerverseSheaves §2.10.

**Checks.**
- `s = 0`, `F = Λ`: `FT(i_{0*}Λ) = Λ[1]`, the (T2') object at `s' = 0'`.
- `s' = 0'`: the (T2) object is the geometrically constant `π^*F'[1]`, and its transform is `i'_{0'*}F'(−1)`, not `i'_{0'*}F'`.
- `ℒ_ψ(x)[1]` is of type (T2) at `s' = 1`, not (T3): the condition with `a' = 1` excludes it, and its transform is the skyscraper at `−1` twisted by `(−1)`.

### 5.3 Fourier sheaves

A constructible sheaf `ℱ` on `A` is elementary if `H⁰_c(A_{k̄}, ℱ) = 0` and `H²_c(A_{k̄}, ℱ ⊗ ℒ_ψ(t x)) = 0` for all `t ∈ k̄`; it is Fourier if it is a middle extension and `H⁰(A_{k̄}, ℱ ⊗ ℒ_ψ(t x)) = 0 = H²_c(A_{k̄}, ℱ ⊗ ℒ_ψ(t x))` for all `t`; an irreducible Fourier sheaf is a Fourier sheaf whose restriction to a dense open of lissity is geometrically irreducible. Define the naive transform `NFT_ψ(ℱ) = R¹pr'_!(pr^*ℱ ⊗ ℒ_ψ(x x'))`. Prove: for elementary `ℱ`, `FT(ℱ[1]) ≅ NFT_ψ(ℱ)[1]`, `NFT_ψ(ℱ)` is elementary and `NFT_ψ(NFT_ψ ℱ) ≅ [−1]^*ℱ(−1)`; for Fourier `ℱ`, `NFT_ψ(ℱ)` is Fourier and `D(NFT_ψ ℱ) ≅ NFT_ψ([−1]^* Dℱ)(1)` for the middle-extension dual; irreducible Fourier goes to irreducible Fourier; over `𝔽_q` the trace function of `NFT_ψ(ℱ)` is `−𝔉_ψ(t_ℱ)`. (ESDE (7.3.3)–(7.3.6) and Théorème (7.3.8), ESDE lines 7235–7310.)
*Needs:* §§3.4–3.5, 3.8, 5.2.

API:
- The middle-extension dual of a Fourier sheaf is Fourier, and so are its translates and its twists `ℱ ⊗ ℒ_ψ(a x)`.
- For a Fourier sheaf, `NFT_ψ(ℱ)` is the only nonzero cohomology sheaf of `FT(ℱ[1])[−1]`, and its stalk at `a ∈ A'(k̄)` is `H¹_c(A_{k̄}, ℱ ⊗ ℒ_ψ(a x))`.
- For an irreducible Fourier sheaf `ℱ`, `ℱ[1]` is simple perverse of type (T3) of §5.2; over algebraically closed `k` every object of type (T3) arises in this way.

**Checks.**
- `ℱ = Λ_{𝔸¹}` is not elementary: `H²_c(𝔸¹, Λ) ≠ 0` at `t = 0`; `ℱ = ℒ_ψ(x)` is neither elementary nor Fourier, since at `t = −1` the twist is `Λ` and `H²_c(𝔸¹_{k̄}, Λ) = Λ(−1) ≠ 0`; and for a nontrivial Kummer `χ` and `j : 𝔸¹ ∖ {0, 1} → 𝔸¹`, `ℱ = j_!(ℒ_χ|_{𝔸¹ ∖ {0, 1}})` is elementary (no punctual sections, and every twist `ℒ_χ ⊗ ℒ_ψ(t x)` has nontrivial tame monodromy at `0`, so `H²_c = 0`) but not Fourier, since `j_*j^*ℱ` has stalk `Λ` at `1` where `ℱ` has `0`.
- `ℱ = ℒ_ψ(x²)`, `p` odd: lisse with break `2 > 1` at `∞`, Fourier, and `NFT_ψ(ℱ) ≅ ℒ_ψ(−x'²/4) ⊗ (H¹_c line)` by §3.6's quadratic formula, again lisse with break `2`.
- `ℱ = j_!ℒ_χ` (nontrivial Kummer): Fourier, `NFT_ψ(ℱ) = j'_!ℒ_{χ^{−1}} ⊗ G(χ, ψ)` (§5.4), of generic rank one, as the rank formula `rk(K') = Σ_s deg(s) a_s(K) = a_0 = 1` of §5.5 predicts.

### 5.4 The Kummer transform and Gauss-sum lines

Let `χ` be a character of `μ_N(k)` with `χ(ζ) − 1` a unit, `ℒ_χ` its Kummer sheaf on `U = 𝔾_m ⊂ A` and `j : U → A`, `j' : U' → A'`. Define `G(χ, ψ) = H¹_c(U_{k̄}, ℒ_χ ⊗ ℒ_ψ(x))` with its `Gal(k̄/k)`-action. Prove: `H^i_c(U_{k̄}, ℒ_χ ⊗ ℒ_ψ(x)) = 0` for `i ≠ 1` and `G(χ, ψ)` has rank one; for `k = 𝔽_q` and `χ : 𝔽_q^× → Λ^×`, `Frob` acts on `G(χ, ψ)` by `−Σ_{x ∈ 𝔽_q^×} χ(x) ψ(Tr_{𝔽_q/𝔽_p} x)`; and `FT(j_!ℒ_χ[1]) ≅ j'_!ℒ_{χ^{−1}}[1] ⊗ G(χ, ψ)`, with `G(χ, ψ)` regarded as a geometrically constant sheaf. Route: `j_!ℒ_χ[1]` is of type (T3); the action of `𝔾_m` by homotheties and §3.6's group-action formula give `FT(j_!ℒ_χ[1]) ≅ j'_!ℒ_{χ^{−1}}[1] ⊗ (stalk at 1)`, and the stalk is `G(χ, ψ)` by proper base change. (LAU87 Lemme (1.4.3.1) and Proposition (1.4.3.2), LAU87 lines 651–678; SGA45-ST (4.3), by locator.)
*Needs:* §§2.6, 3.6, 3.8, 5.2; EtaleDualityAndPerverseSheaves §5.2.

API:
- `G(χ, ψ)` commutes with extension of `k` and is functorial in `Λ`.
- `G(χ, ψ(c·)) ≅ G(χ, ψ) ⊗ ℒ_χ(c)^{−1}` for `c ∈ 𝔽_p^×`, where `ℒ_χ(c)` is the stalk line at `c`.
- `G(χ, ψ)^∨ ≅ G(χ^{−1}, ψ^{−1})(1)`, from Poincaré duality on `U_{k̄}`.

**Checks.**
- Trace witness over `𝔽_q`: `t_{FT}(x') = Σ_x χ(x) ψ(Tr(x x')) = χ^{−1}(x') g(χ, ψ)` for `x' ≠ 0` and `0` at `x' = 0`, equal to the trace `(−χ^{−1}(x'))(−g(χ, ψ))` of the right side.
- Inversion: `G(χ, ψ) ⊗ G(χ^{−1}, ψ)` is the line on which `Frob` acts by `χ(−1) q`, matching Mathlib's `gaussSum_mul_gaussSum_eq_card` with `mul_gaussSum_inv_eq_gaussSum` (`g(χ, ψ) g(χ^{−1}, ψ) = χ(−1) q` for a domain target).
- `q = 5`, `Λ = ℤ/11` reduction field `𝔽_11`, `ψ(1) = 3`, `χ` quadratic: `g = Σ_{x ≠ 0} χ(x) ψ(x) = 3 − 9 − 27 + 81 ≡ 3 + 2 + 6 + 4 = 15 ≡ 4`, and `g² = 16 ≡ 5 = χ(−1)·5`.

### 5.5 Local monodromy of the transform

Let `K` be perverse on `A`, `K' = FT(K)`, `U`, `U'` the open sets of lissity of `K`, `K'` (where `a_x = 0`, §5.1), `S = A ∖ U`, `S' = A' ∖ U'`, `F = H^{−1}(K)|_U`, `F' = H^{−1}(K')|_{U'}`, `ā : A → D` the inclusion, and `F_∞ = F_{η̄_∞}` the local monodromy of `F` at `∞` with its slope parts `F_{∞,[0,1[}`, `F_{∞,1}`, `F_{∞,]1,∞[}`. Module invariants `r`, `s` of local representations are ranks and Swan conductors (§5.1). Prove, with the nonnegative invariants of §5.1 (LAU87 Proposition (2.3.1.1) and Corollaires (2.3.1.2)–(2.3.1.3), LAU87 lines 933–974, with the signs changed accordingly):

- the generic rank: `rk(K') = Σ_{s ∈ S} deg(s) a_s(K) + s(F_{∞,]1,∞[}) − r(F_{∞,]1,∞[})`, and the same with `K`, `K'` exchanged;
- the stalk ranks: for a closed point `s' ≠ 0'`, `rk_{s'}(K') = rk(K') − r(F_{∞,1}) + s(F_{∞,1} ⊗ ℒ_ψ(x s'))`, and `rk_{0'}(K') = rk(K') − r(F_{∞,[0,1[}) + s(F_{∞,[0,1[})`;
- the lisse locus: `s' ≠ 0'` lies in `U'` exactly when `s(F_{∞,1} ⊗ ℒ_ψ(x s')) = r(F_{∞,1})`, and `0' ∈ U'` exactly when `F_{∞,[0,1[} = 0`; in particular `U' = A' ∖ {0'}`, `rk(K') = Σ_s deg(s) a_s(K)` and `rk_{0'}(K') = rk(K') − r(F_∞) + s(F_∞)` when `F_∞` is nonzero with all slopes `< 1`, and `U' = A'` with `rk(K') = Σ_s deg(s) a_s(K) + s(F_∞) − r(F_∞)` when all slopes exceed `1`;
- vanishing cycles at a finite point `s'`: for `pr' : D ×_k A' → A'`, the vanishing cycles of `pr^*ā_!K ⊗ ℒ_ψ(x x')[1]` at `s'` vanish on `A × s'`, their stalk at `(∞, s')` is concentrated in degree `−1`, and `R^{−1}Φ_{s'}(K') ≅ R^{−1}Φ(pr^*ā_!K ⊗ ℒ_ψ(x x')[1])_{(∞, s')}` as `G_{s'}`-modules (LAU87 Proposition (2.3.2.1), LAU87 lines 988–1000), of rank `r(F_{∞,1}) − s(F_{∞,1} ⊗ ℒ_ψ(x s'))` for `s' ≠ 0'` and `r(F_{∞,[0,1[}) − s(F_{∞,[0,1[})` for `s' = 0'` (LAU87 Corollaire (2.3.2.3), LAU87 lines 1004–1007);
- the sequence at `0'`: `0 → H⁰_c(A_{k̄}, K) → F'_{η̄_{0'}} → R^{−1}Φ_{0'}(K') → H¹_c(A_{k̄}, K) → 0` is an exact sequence of `G_{0'}`-modules, its outer terms are the stalks `H^{−1}(K'_{0̄'})` and `H⁰(K'_{0̄'})` with `I_{0'}` acting trivially (LAU87 (2.3.2), LAU87 lines 975–987); §5.6 identifies the third term with a local Fourier transform of `F_∞`;
- vanishing cycles at `∞'`: for `pr' : D ×_k D' → D'`, the vanishing cycles at `∞'` vanish on `U × ∞'`, their stalks at `(s, ∞')` for `s ∈ S ∪ {∞}` are concentrated in degree `−1`, and `F'_{η̄_{∞'}} ≅ ⊕_{s ∈ S} Ind(R^{−1}Φ_{(s,∞')}) ⊕ R^{−1}Φ_{(∞,∞')}` as `G_{∞'}`-modules, the induction going from the Galois group of `∞' ⊗ k(s)` (LAU87 Proposition (2.3.3.1), LAU87 lines 1017–1034).

Route: proper base change gives `rk_{s'}(K') = −χ_c(A_{k̄}, K ⊗ ℒ_ψ(x s'))`, which §5.1's Euler–Poincaré formula and the twisting formula evaluate; the vanishing statements are the local acyclicity of §3.3, once for `D × A' → A'` and once with the roles of `A` and `A'` exchanged; the identification at `∞'` uses `RΨ = RΦ` there because the kernel vanishes on `D × ∞'`.
*Needs:* §§3.3, 3.4, 4.2, 5.1, 5.2; LefschetzPencilsAndVanishingCycles §§0.3–0.7; EtaleCohomologyFoundations §§F.2.1, F.3a.

Prove that the naive transform `NFT_ψ` of §5.3 restricts to an autoequivalence of the category of lisse sheaves on `A` all of whose breaks at `∞` exceed `1`, with quasi-inverse `[−1]^* NFT_ψ(−)(1)`. Route: such a sheaf `ℱ` is Fourier, so `FT(ℱ[1]) ≅ NFT_ψ(ℱ)[1]` (§5.3), and the lisse-locus criterion above with `S = ∅` and all slopes of `F_∞` above `1` shows that `G = NFT_ψ(ℱ)` is lisse on `A'`. After extending `k` to `k̄`, the criterion with the roles of `A` and `A'` exchanged, applied to `G[1]`, whose transform `[−1]^*ℱ(−1)[1]` is lisse on `A`, shows that `G` has no part of slope `< 1` at `∞'` and that its slope-one part `G_1` satisfies `s(G_1 ⊗ ℒ_ψ(x' s)) = r(G_1)` for every `s ≠ 0`; the slope-one twisting lemma of §5.1 then forces `G_1 = 0`. No stationary-phase formula is used. (ESDE §7.8 Class (1), ESDE lines 7877–7889, stated there over an algebraically closed field; KATZ01 lines 888–893.)
*Needs:* §§2.7, 5.1, 5.3; the lisse-locus criterion above.

**Checks.**
- `K = Λ[1]`: `S = ∅`, `F_∞` trivial, so `rk(K') = 0` and `rk_{0'}(K') = 0 − 1 + 0 = −1`, matching `K' = i_{0'*}Λ(−1)`; the sequence at `0'` reads `0 → 0 → 0 → Λ(−1) → H²_c(𝔸¹_{k̄}, Λ) = Λ(−1) → 0`.
- `K = i_{0*}Λ`: `a_0 = 1`, `F = 0`, so `rk(K') = 1` and `U' = A'`, matching `K' = Λ[1]`; a formula with `−Σ a_s` would give a negative rank.
- `K = ℒ_ψ(x²)[1]`, `p` odd: `S = ∅` and `F_∞` is purely of slope `2` with `r = 1`, `s = 2`, so `U' = A'` and `rk(K') = 2 − 1 = 1`, matching §5.3's second Check.
- `K = j_!ℒ_χ[1]`, `χ` nontrivial: `a_0 = 1`, `F_∞ = ℒ_{χ^{−1}}(π)` is tame, so `U' = A' ∖ {0'}`, `rk(K') = 1`, `rk_{0'}(K') = 0`, and since `H⁰_c = H¹_c = 0` the sequence gives `F'_{η̄_{0'}} ≅ R^{−1}Φ_{0'}(K')`, both being `V'_{χ^{−1}} ⊗ G(χ, ψ)`, the monodromy at `0'` of `ℒ_{χ^{−1}}(x') ⊗ G(χ, ψ)` from §5.4.

### 5.6 Local Fourier transforms

Let `T`, `T'` be henselian traits over `k` with residue field `k` (spectra of henselian discrete valuation rings `R ⊃ k` with `R/𝔪 = k`, so `k{π} ⊂ R ⊂ k[[π]]` as in LAU87 (2.1.1), LAU87 lines 684–688; `R` need not be excellent) and uniformizers `π`, `π'`, `𝒢`, `𝒢'` the categories of continuous finite-dimensional `Λ`-representations of their Galois groups, `V_!` the extension by zero to `T` of the sheaf on the generic point `η` defined by `V ∈ 𝒢`. Define the local Fourier transforms `𝔉^{(0,∞')}`, `𝔉^{(∞,0')}`, `𝔉^{(∞,∞')} : 𝒢 → 𝒢'` as the complexes of vanishing cycles, for the projection `pr' : T ×_k T' → T'`, of `pr^*(V_!) ⊗ ℒ_ψ(π/π')`, `pr^*(V_!) ⊗ ℒ_ψ(π'/π)` and `pr^*(V_!) ⊗ ℒ_ψ(1/(π π'))` at the point over `(t, η̄')`, each sheaf `ℒ_ψ(π/π')`, `ℒ_ψ(π'/π)`, `ℒ_ψ(1/(π π'))` living on `T ×_k η'`, `η ×_k T'`, `η ×_k η'` respectively and extended by zero, and `𝔉^{(·,·)}(V)` as the first cohomology module (LAU87 Définition (2.4.2.3), LAU87 lines 1091–1100). Prove: the comparison with global vanishing cycles (LAU87 Lemme (2.4.2.1), LAU87 lines 1063–1081): for a perverse `K` on `A` and an isomorphism of `K` near `0` (resp. `∞`) with `V_![1]` (resp. `V[1]`), the vanishing cycles of §5.5 at `(0, ∞')`, `(∞, 0')`, `(∞, ∞')` are identified with the local ones shifted by `2`; in particular the third term of the sequence at `0'` of §5.5 is `R^{−1}Φ_{0'}(K') ≅ 𝔉^{(∞,0')}(F_∞)` as `G_{0'}`-modules (LAU87 Lemme (2.4.2.1)(ii) with Proposition (2.3.2.1)(iii), LAU87 lines 993–995); for every `V` arising as the local monodromy at `0` or `∞` of a perverse sheaf on `A`, the complexes are concentrated in degree `1` and supported on the closed point over `η'` (LAU87 Proposition (2.4.2.2), LAU87 lines 1084–1090); compatibility with extension of `k` inside `k̄` (LAU87 (2.5.2), LAU87 lines 1157–1165); and the tame values (LAU87 Proposition (2.5.3.1), LAU87 lines 1170–1182): `𝔉^{(0,∞')}(Λ) = Λ`, `𝔉^{(∞,0')}(Λ) = Λ(−1)`, `𝔉^{(∞,∞')}(Λ) = 0`, and for a nontrivial Kummer module `V_χ = ℒ_χ(π)`, with `V'_χ = ℒ_χ(π')`, `𝔉^{(0,∞')}(V_χ) ≅ V'_χ ⊗ G(χ, ψ)`, `𝔉^{(∞,0')}(V_χ) ≅ V'_χ ⊗ G(χ^{−1}, ψ)` and `𝔉^{(∞,∞')}(V_χ) = 0`, with `G` unramified. Consequently, for `K = j_!F[1]` with `F` lisse on a dense open `U ⊂ A` and `F_∞` unramified, `𝔉^{(∞,0')}(F_∞) ≅ F_∞(−1)` and the sequence at `0'` of §5.5 reads `0 → H¹_c(A_{k̄}, j_!F) → F'_{η̄_{0'}} → F_∞(−1) → H²_c(A_{k̄}, j_!F) → 0` (LAU87 lines 2620–2628). When `k` is finite, every tamely ramified `V` is quasi-unipotent (LefschetzPencilsAndVanishingCycles §1.1), so after finite extensions of `k` and of `Λ` and the compatibility (2.5.2) it is a successive extension of unramified twists of Kummer modules and of the trivial module, each the local monodromy of a perverse sheaf on `A`; the complexes are therefore concentrated in degree `1` for every tame `V`.
*Needs:* §§3.6, 5.4–5.5; LefschetzPencilsAndVanishingCycles §§0.3–0.7, 1.1; EtaleCohomologyFoundations §F.3a.

API:
- Each `𝔉^{(·,·)}` is a triangulated functor on the level of complexes and commutes with tensoring by unramified modules.
- They commute with extension of `k` inside `k̄` and with change of the coefficient field.
- Replacing `ψ` by `ψ(c·)`, `c ∈ 𝔽_p^×`, composes `𝔉^{(0,∞')}` and `𝔉^{(∞,∞')}` with the substitution `π' ↦ c^{−1}π'` and `𝔉^{(∞,0')}` with `π' ↦ c π'`.

**Checks.**
- Trivial module at `(∞, 0')`: the global object `Λ_A[1]` has transform `i_{0'*}Λ(−1)`, whose vanishing cycles at `0'` are `Λ(−1)` (§5.5's first Check), so `𝔉^{(∞,0')}(Λ) = Λ(−1)`, not `Λ`.
- Kummer at `(0, ∞')`: from §5.4, the local monodromy of `j'_!ℒ_{χ^{−1}}(x')` at `∞'` is `ℒ_{χ^{−1}}(1/π') = ℒ_χ(π')`, so the value is `V'_χ ⊗ G(χ, ψ)`; the character `χ^{−1}` instead of `χ` would contradict §5.4's trace witness.
- `𝔉^{(∞,∞')}` vanishes on tame modules: slopes `≤ 1` contribute nothing at `∞'`, consistent with the first rank formula of §5.5 having only the `]1, ∞[` part.

### Examples

For `p = 5`, `k = 𝔽_5`, `Λ = 𝔽_11` and `K = j_!ℒ_χ[1]` with `χ` quadratic: `K' = j'_!ℒ_χ[1] ⊗ G(χ, ψ)` (`χ^{−1} = χ`), `U' = A' ∖ {0'}`, the generic rank is `1 = a_0(K)`, and `G(χ, ψ)` has Frobenius `−4 = 7` in `𝔽_11`.

### Dependencies

Layers 3–4; §§2.6–2.7; Mathlib `ContinuousCohomology.zeroIso`; Tau Ceti `TauCeti.additiveHilbert90`, `TauCeti.ContCohomology.DiscreteShortExact`, `TauCeti.ContCohomology.H1EquivOfSmulEqSelf`, `TauCeti.ContCohomology.explicitH1AddEquivContinuousCohomology`, `TauCeti.Place.exists_reduced_artinSchreier_representative`, `TauCeti.ord_reduced_artinSchreier_representative_eq` and `TauCeti.ne_pow_sub_self_of_exists_reduced_artinSchreier_pole`, for the slope-one twisting lemma of §5.1; ArithmeticGaloisRepresentations §§3.1, 3.7; RamificationOfCompleteDiscretelyValuedFields §§3a.1, 4a.1–4a.2; LefschetzPencilsAndVanishingCycles §§0.3–0.8; EtaleDualityAndPerverseSheaves §§2.10, 5.2; EtaleCohomologyFoundations §§F.2.1, F.3a.

## Downstream consumers

- CharacterSumsOverFiniteFields §3.6, background there and not a target, reads Gauss, Kummer and Artin–Schreier sums as Frobenius traces of `ℒ_ψ` and `ℒ_χ` with the normalization `ψ(Tr x)`, `χ(N x)` of the Conventions and the eigenvalue `−g(χ, ψ)` on the Gauss-sum line; it can import these sheaves from §§2.5–2.6, their traces from §2.3 and the Gauss-sum line from §5.4.
- SheafConvolutionOnAbelianVarieties builds its convolution `K * L = Ra_!(K ⊠ L)` and its coherence directly from EtaleCohomologyFoundations §0.8 and describes it as the transform with the difference kernel; it can import §§1.1–1.2 for that description and for the composition coherence of kernels.
- CongruenceSpectralGap §4.2b states its additive-character-sheaf input as a contract on DeligneWeightsAndPurity. The weight-free part of that contract (the rank-one sheaf, its trace `ψ ∘ Tr`, tensor, base-extension and duality laws and the trivial character) is what §§2.2–2.5 construct and can be imported from here; the weight-zero clause stays with DeligneWeightsAndPurity.
- The future roadmap described below.

## Motivation for a future roadmap

The stationary-phase theorem computes the local Fourier transforms of wild modules, with ranks `r(V) + s(V)`, `r(V) − s(V)`, `s(V) − r(V)` and the slope transformations of LAU87 Théorème (2.4.3), and makes them equivalences between slope ranges; it requires the Gabber–Katz canonical extension (LAU87 Théorème (2.2.2.2)). The product formula for local constants (LAU87 §3), relative perversity over a base (KL85 §1.2) and the weight theorem that the transform preserves purity (KL85 Théorème (2.2.1)), together with its consequences on the line (KL85 Scholie (2.3.1)), build on this roadmap and on DeligneWeightsAndPurity.

## References

- LAU87: G. Laumon, *Transformation de Fourier, constantes d'équations fonctionnelles et conjecture de Weil*, Publ. Math. IHÉS 65 (1987), 131–210; Numdam.
- KL85: N. M. Katz and G. Laumon, *Transformation de Fourier et majoration de sommes exponentielles*, Publ. Math. IHÉS 62 (1985), 145–202; Numdam.
- BRY86: J.-L. Brylinski, *Transformations canoniques, dualité projective, théorie de Lefschetz, transformations de Fourier et sommes trigonométriques*, Astérisque 140–141 (1986), Ch. IX; Numdam.
- ESDE: N. M. Katz, *Exponential Sums and Differential Equations*, Ann. of Math. Stud. 124 (1990), §§7.3 and 7.8; author's corrected manuscript.
- KATZ01: N. M. Katz, *L-functions and monodromy: four lectures on Weil II*, Adv. Math. 160 (2001), Lectures II and IV; author's page.
- WII: P. Deligne, *La conjecture de Weil. II*, Publ. Math. IHÉS 52 (1980), Théorème (3.2.3), for the scope boundary; Numdam.
- LAU96: G. Laumon, *Transformation de Fourier généralisée*, arXiv alg-geom/9603004, §§3 and 7, for the scope boundary.
- SGA45-ST: P. Deligne, *Applications de la formule des traces aux sommes trigonométriques*, SGA 4½, LNM 569, the Lang-torsor construction recalled in LAU87 Exemple (1.1.3), and (4.3), (4.20); cited by locator.
- KW01: R. Kiehl and R. Weissauer, *Weil Conjectures, Perverse Sheaves and l-adic Fourier Transform*, Ergebnisse 42 (2001), Ch. III; cited by locator.
