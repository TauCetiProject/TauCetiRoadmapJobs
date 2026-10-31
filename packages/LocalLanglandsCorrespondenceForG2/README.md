# Roadmap: the local Langlands correspondence for G₂

**Summary.** This roadmap constructs the local Langlands correspondence for the split exceptional group G₂ over a nonarchimedean local field F of characteristic zero, following Gan–Savin (GS), and the weak local Langlands correspondence for PGSp₆ that the same method produces. The inputs are the three exceptional theta correspondences of G₂ with PD× (D a cubic division algebra), with PGL₃ ⋊ ⟨duality⟩ and with PGSp₆ (owned by ExceptionalThetaCorrespondencesForG2), Arthur's correspondence for Sp₆ and SO₈ and Xu's packets for PGSp₆ (ModularityAndLanglandsExtensions), the correspondence for GL_n and its inner forms (EndoscopicTransferAndUnitaryTraceComparison), the classical similitude theta correspondences (MetaplecticAutomorphicForms), and the Galois representations attached to regular algebraic automorphic representations. From these the roadmap builds: the comparison of G₂-, Spin₇- and SO₇-valued parameters (standard injectivity, spin detection, quadratic rigidity, Chenevier's G₂-descent, and the unacceptability of Spin₇ that forces weak parameter classes); globalization theorems with quaternion periods and with Whittaker models; the spin transfer from generic representations of PGSp₆ to GL₈ through triality; the parameter map L : Irr(G₂(F)) → Φ(G₂) and its characterizations by the theta diagrams and by G₂ × GL_r gamma factors; the packets over the discrete parameters coming from PGL₃ and their enhancements by S₃ and μ₃; the Kret–Shin parameters of generic discrete series of PGSp₆ and the exceptional spin identity; the identification of every other discrete fibre with a distinguished one of Xu's packets. The end theorems are the Main Theorem of GS (a natural surjective finite-to-one map L with the discrete, tempered and Langlands-quotient properties, the two theta diagrams, both characterizations, the spin diagram with generic tempered intermediate codomain, global–local compatibility and the enhanced fibres, with the possible exception at residue characteristic three on the discrete PGL₃ image), the generic supercuspidal correspondence of Harris–Khare–Thorne recovered by theta and triality, the partial enhanced correspondence for PGSp₆ on diamond orbits, and the weak correspondence L_w : Irr(PGSp₆(F)) → Φ_w(PGSp₆), surjective, compatible with temperedness, discreteness and quadratic twists, whose fibres are unions of Xu packets.

## Scope and ownership

This roadmap owns: the comparisons of parameters through the dual-group maps SL₃ → G₂ → Spin₇ → SO₇ and Spin₇ → GL₈ (Layer 0), including Chenevier's G₂-descent theorems and the weak equivalence of Spin₇-valued parameters; the globalization theorems for G₂ and PGSp₆ that GS proves for this application (Layer 1) and the classical global theta step for discrete heart representations (Layer 8); the triality descent over F and the spin transfer (Layer 2); the G₂ parameter map, its explicit description, the rank-seven standard lift, the G₂ × GL_r gamma factors and both characterizations (Layer 3); the A₂ packets (Layer 4); the Kret–Shin parameters and the exceptional spin identity (Layer 5); the diamond fibres (Layer 6); the assembly of the G₂ correspondence and its enhanced theta applications (Layer 7); the extended spin transfer and the weak PGSp₆ correspondence (Layers 9–10).

It does not own, and imports by section:

- The complex dual groups of G₂, PGL₃ and PGSp₆, the inclusions SL₃(ℂ) → G₂(ℂ) → Spin₇(ℂ), the centralizers μ₃ of SL₃ and S₃ of SO₃ in G₂(ℂ), the complex local L-parameters W_F × SL₂(ℂ) → Ĝ up to Ĝ-conjugacy with their transport along dual-group homomorphisms, and the raw and fixed-split component groups: ExceptionalThetaCorrespondencesForG2, Layer 0 (*Exceptional inclusions of complex dual groups*, *Complex local parameters*, *Raw and fixed-split component groups*).
- The three exceptional theta correspondences, Howe duality, the theta dichotomy Irr(G₂) = Irr♠ ⊔ Irr♥, the inclusion of the PGL₃-domain Irr♣ in Irr♥, the explicit lift tables, the discrete-series trichotomy, the supercuspidal spin-pole criterion of Savin–Weissman, the quaternion relative models and the global exceptional theta lift with its nonvanishing and cuspidality criteria: ExceptionalThetaCorrespondencesForG2, Layers 5–10. In particular the nonvanishing and cuspidality of the global exceptional theta lift of a period-distinguished cusp form (GS Corollary 10.6) is ExceptionalThetaCorrespondencesForG2, Layer 10 (*A quaternion period forces global nonvanishing*; *Cuspidality from Steinberg or regular compact weight*) and is not restated here.
- Arthur's local packets and multiplicity formula for Sp₆ and SO₈, Xu's packets and multiplicity formula for GSp₂ₙ, and the Gan–Takeda correspondence for GSp₄: ModularityAndLanglandsExtensions, Layer 3 (§§3.5, 3.8, 3.15, 3.17, 3.19, 3.27).
- The local Langlands correspondence for GL_n, its inner forms and the Jacquet–Langlands correspondence: EndoscopicTransferAndUnitaryTraceComparison, §§4.7a, 4.8 and Layer 10 (§§10.1, 10.26, 10.30, 10.31).
- The similitude theta correspondences PGSp₆ × PGSO₈ and the PGSp₆ dichotomy between the two orthogonal towers, first occurrence, the Rallis inner product formula and the global nonvanishing criterion: MetaplecticAutomorphicForms, §§3.10, 3.34, 3.41, 3.42, 6.13, 6.14.
- Rankin–Selberg factors, isobaric sums and strong multiplicity one, boundary nonvanishing and unramified L-group factors: AutomorphicLFunctionsAndLocalFactors, Layers AL.3–AL.4.
- Normalized induction, Jacquet functors, Whittaker functionals, the tempered classification and the Langlands classification: SmoothRepresentationsOfLocalGroups, SR.2–SR.3. Weak containment, the Fell topology, the corrected isolated-summand theorem (GS Proposition 11.6 corrected), Heiermann–Opdam, and the isolation of discrete series, of Steinberg and of supercuspidals: SmoothRepresentationsOfLocalGroupsPartII, SRU.1, SRU.3, SRU.4.
- Automorphic forms, cusp forms and their Hilbert spaces: AutomorphicFormsOnReductiveGroups, Layers 0 and 4; the trace formula: AutomorphicSpectralTheory, Layer 6.
- Galois representations attached to regular algebraic polarized cuspidal representations of GL_n over totally real fields and their local–global compatibility at all places: AutomorphicGaloisRepresentationsPartII, Layers AG2.2, AG2.5, AG2.6.
- The pinned Chevalley–Demazure groups (Tau Ceti roadmap ReductiveGroups, Layer 9), the spin and half-spin representations, the fundamental representations of B₃ and D₄, Spin₆ ≅ SL₄ and triality for Spin₈ (RepresentationTheory/SpinRepresentations, Layers 4, 5, 6, 8), the local invariant of the Brauer group and the local Weil group (ClassFieldTheory, Layers 5 and 9).

The Kret–Shin GSpin-valued Galois representations, Shin's automorphic Plancherel density theorem, the Langlands–Shahidi spin factors of PGSp₆, the Poincaré-series weak-containment theorem, relative isolation for generic discrete series, the generic local converse theorem for GL_n, the explicit classical similitude theta tables, the similitude Rallis inner product formula and the global spin-pole converse are consumed from the suppliers named in the supplier contracts below, each stated there as what that supplier provides.

## Conventions

- F is a nonarchimedean local field of characteristic zero with residue field of order q and residue characteristic p; W_F is its Weil group, normalized by the geometric reciprocity of ClassFieldTheory, Layer 9, and |w| = q^(−deg w) with arithmetic Frobenius of degree one. ψ is a fixed nontrivial unitary additive character of F. Normalized induction and Jacquet functors use the positive square root of the modulus.
- WD_F = W_F × SL₂(ℂ). A parameter for a split group G is a homomorphism φ : WD_F → Ĝ(ℂ), continuous on W_F with semisimple Frobenius image and algebraic on SL₂(ℂ), taken up to Ĝ(ℂ)-conjugacy (ExceptionalThetaCorrespondencesForG2, Layer 0, *Complex local parameters*). A parameter class always means conjugacy by the named dual group; a GL_n-conjugacy class of a composite is never substituted for it. Φ(G) is the set of parameter classes. Bounded means bounded image of W_F; discrete means not contained in a proper Levi subgroup of Ĝ. Every comparison through the Weil–Deligne dictionary keeps the monodromy operator N.
- Dual-group maps: j : SL₃(ℂ) → G₂(ℂ), i : G₂(ℂ) → Spin₇(ℂ), q : Spin₇(ℂ) → SO₇(ℂ), the vector representation v = q ∘ i of dimension 7, the spin representation s : Spin₇(ℂ) → GL₈(ℂ), the inclusion h : Spin₆(ℂ) = SL₄(ℂ) → Spin₇(ℂ). The kernels are ker j = ker i = ker v = 1 and ker q = μ₂ = Z(Spin₇(ℂ)); s(−1) = −1 on all eight coordinates and q(−1) = 1.
- Component groups: S_φ = π₀ Z_(G₂(ℂ))(φ) for G₂ (the centre of G₂(ℂ) is trivial, so raw and fixed-split groups agree). For PGSp₆ the enhancements of the split form are characters of S_φ̃ / image Z(Spin₇) = S_φ̃ / image μ₂ (ExceptionalThetaCorrespondencesForG2, Layer 0, *Raw and fixed-split component groups*).
- The G₂ loci: Irr♠(G₂) lifts to PD×, Irr♥(G₂) lifts to PGSp₆, Irr♣ ⊂ Irr♥ lifts also to PGL₃ ⋊ ⟨duality⟩, and Irr♦ = Irr♥ ∖ Irr♣. On parameters, Φ♦_ds(G₂) is the set of discrete parameters not in j(Φ(PGL₃)); these are the diamond discrete parameters. For PGSp₆ in Layers 8–10 the same symbols name the classical loci of MetaplecticAutomorphicForms §3.42: Irr♥(PGSp₆) lifts to split PGSO₈, Irr♠(PGSp₆) lifts to the quaternionic tower PGO₅,₁, and Irr♣ consists of the representations already occurring at PGO₆ ≅ PGL₄ ⋊ ⟨±1⟩. The two families of symbols are different partitions of different sets.
- Quadratic twists: a quadratic character χ of F× twists a representation σ of PGSp₆(F) by χ ∘ sim, the similitude being read modulo squares; on parameters it multiplies a Spin₇-valued φ by the central character χ : W_F → μ₂ = Z(Spin₇(ℂ)). A homogeneous set for the quadratic characters may have nontrivial stabilizers.
- A Whittaker datum is fixed for each quasi-split group; for tempered parameters the trivial character labels the generic member.
- Cubic division algebras: inv : H¹(F, PGL₃) ≅ (1/3)ℤ/ℤ is the Brauer invariant of ClassFieldTheory, Layer 5; D₁ and D₂ have invariants 1/3 and 2/3.
- Global fields are number fields k; totally real fields are used wherever Galois representations or definite octonion algebras appear. An octonion algebra O over k is totally definite when its norm form is definite at every real place.

## Exact supplier contracts

### From Mathlib

- `spinGroup` (`Mathlib/LinearAlgebra/CliffordAlgebra/SpinGroup.lean`): for a quadratic form Q, the even elements of the Lipschitz group (`lipschitzGroup`, generated by the invertible vectors) with x · star x = 1, with its `Group` instance. With Q = `QuadraticMap.weightedSumSquares` ℂ (1, …, 1) on ℂ⁷ it is Spin₇(ℂ). It carries no representation-theoretic or topological structure; the spin representation and the map to SO₇ come from SpinRepresentations.
- `IsConj` for element conjugacy in a monoid.
- `Matrix.diagonal`, `Matrix.charpoly`, `Matrix.charpoly_diagonal`, `Matrix.det_diagonal`, `Matrix.charpoly_monic` and `Matrix.charpoly_natDegree_eq_dim` for the torus computations of §0.1, which are Checks, not definitions.

### From Tau Ceti

- `TauCeti.Octonion` (`TauCeti/Algebra/Octonion/Basic.lean`): the split Zorn octonions over a commutative ring, with `TauCeti.Octonion.norm_mul`, `TauCeti.Octonion.normQuadraticForm` and the trace-zero submodule `TauCeti.Octonion.imaginary` of rank seven (`TauCeti.Octonion.finrank_imaginary`). Used for the octonion model of G₂ through ExceptionalThetaCorrespondencesForG2, Layer 0.
- `TauCeti.D4Tripled.trialityAutomorphism` (`TauCeti/Algebra/Lie/D4/Tripled/Triality.lean`): an automorphism of the integral tripled D₄ group scheme with `TauCeti.D4Tripled.trialityAutomorphism_pow_three` and its action on root subgroups. §2.1 compares it with the split simply connected D₄ over F and descends it to the three central quotients.

### From TauCetiRoadmap.ExceptionalThetaCorrespondencesForG2

- Layer 0: the octonion model of G₂, the dual-group inclusions and centralizers, complex local parameters and component groups (as in Conventions).
- Layers 5–8: Howe duality for PD× × G₂, (PGL₃ ⋊ ⟨duality⟩) × G₂ and G₂ × PGSp₆; the dichotomy Irr(G₂) = Irr♠ ⊔ Irr♥ and Irr♣ ⊂ Irr♥ (*The exceptional theta dichotomy*, *Howe duality for all three exceptional pairs*); the explicit nontempered and tempered lift tables (*Explicit nontempered lifts*, *The E₆-to-E₇ tempered Siegel table*, *The remaining tempered non-supercuspidal lifts*, *The split-E₆ lift table*); division nonvanishing for p ≠ 3 and the opposite-algebra compatibility (Layer 5); the PGL₃ outer-extension labels τ± (Layer 5, *PGL₃ outer extensions and their signs*); the discrete-series trichotomy and genericity transfer (Layer 8); the supercuspidal spin-pole criterion (Layer 8); the generic depth-zero supercuspidals with supercuspidal PGSp₆ lifts (Layer 8, *A generic depth-zero lift example*).
- Layer 9: quaternion pointwise stabilizers G_D, the relative quotient and embedding theorems, the Steinberg relative summand and the SU₂-periods of compact real G₂.
- Layer 10: the global exceptional dual pair, the global theta lift with its local occurrence property, nonvanishing from a quaternion period, cuspidality from a Steinberg place or a regular real weight, generic global nonvanishing, and real infinitesimal-character matching.
- What ExceptionalThetaCorrespondencesForG2 must provide (gap:spin-pole-global-converse): for every totally real number field k, a cuspidal automorphic representation of PGSp₆(𝔸_k) whose partial spin L-function has a pole at s = 1 has nonzero global exceptional theta lift to Aut(O) for some octonion algebra O over k, compatibly with the local theta correspondences at every place (GS20 Theorem 1.1 states this only for k = ℚ).

### From TauCetiRoadmap.ModularityAndLanglandsExtensions

- §3.8 discrete global Arthur parameters and their component groups; §3.15 Arthur's local packets and the local correspondence for quasi-split classical groups (used for Sp₆ and split SO₈, with even-orthogonal outer orbits); §3.17 Arthur's multiplicity formula; §3.19 Xu's packets for GSp₂ₙ (used at n = 3 with trivial central character, that is PGSp₆), with their twist group, boundary map, restriction to Sp₆ and the equality of self-twist stabilizers; §3.27 Xu's multiplicity formula for generic global parameters of GSp₂ₙ; §3.5 the Gan–Takeda correspondence for GSp₄ (for the GL₁ × PGSp₄ Levi of PGSp₆). The supplier states these under its trace-formula inputs; every theorem here that uses them carries the same hypotheses.

### From TauCetiRoadmap.EndoscopicTransferAndUnitaryTraceComparison

- §§10.1, 10.26, 10.30: the local Langlands correspondence rec for GL_n(F) with its normalization, compatibility with normalized induction, contragredients, determinants, twists and Rankin–Selberg gamma factors, and the Weil–Deligne parameter with N; §10.31 the inner-form parameter; §4.7a the Jacquet–Langlands correspondence for essentially square-integrable representations of inner forms of GL_n (used for GL₁(D) with D of degree three and GL₂(D) with D quaternion, with the reduced-norm twist rule); §1.13 the Kottwitz sign of an inner form.
- What EndoscopicTransferAndUnitaryTraceComparison must provide (gap:gln-generic-local-converse): for generic irreducible representations π, π′ of GL_n(F), equality γ(s, π × τ, ψ) = γ(s, π′ × τ, ψ) for every irreducible τ of GL_r(F) and every r ≤ n implies π ≅ π′; equivalently, a bounded Weil–Deligne representation of dimension n is determined, with its monodromy, by the gamma factors of its twists.

### From TauCetiRoadmap.MetaplecticAutomorphicForms

- §3.10 first occurrence in a Witt tower; §3.34 the similitude theta correspondence and its Howe duality; §3.41 the PGSp₆–PGSO₈ similitude lift of generic σ, nonzero, with standard parameter φ_b ⊕ 1 and its unramified Satake comparison through Spin₇ → Spin₈; §3.42 the PGSp₆ dichotomy between the two orthogonal towers; §6.13 the Rallis inner product formula; §6.14 the global theta nonvanishing criterion.
- What MetaplecticAutomorphicForms must provide (gap:pgsp6-similitude-theta-tables): for the similitude pairs PGSp₆ × PGSO₈, PGSp₆ × PGO₆ and PGSp₆ × PGO₅,₁ over F, the parameters of the theta lift of every irreducible representation induced from each proper Levi of PGSp₆ (including the lower-tower Jacquet–Langlands identification with a duality orbit of PGL₄ or PGL₂(D)), the rule that a quadratic twist by χ ∘ sim pulls back along each similitude lift as χ ∘ sim (and along triality as the spinor-norm character), the lift of each generic constituent of a Siegel-induced representation I₃(τ) with τ discrete on PGL₃, and the matching at complex places (Adams–Barbasch).
- What MetaplecticAutomorphicForms must provide (gap:pgsp6-similitude-rallis): for a cuspidal representation Σ of PGSp₆(𝔸_k) with generic global Arthur parameter whose local similitude theta lifts to split PGSO₈ are nonzero at every place, the global similitude lift to PGSO₈ is nonzero when L^S(s, Σ, std) is nonzero at s = 1, and it is cuspidal when the lift to PGO₆ vanishes (the similitude form of §§6.13–6.14 in the second-term range).

### From TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactors

- Layer AL.3: the local Rankin–Selberg factors and functional equation, the induced-factor product, the global functional equation, the pole criterion, boundary nonvanishing, strong multiplicity one and its isobaric form. Layer AL.4: the unramified L-group factor and functorial operations on unramified factors.
- What AutomorphicLFunctionsAndLocalFactors must provide (gap:pgsp6-shahidi-spin-factor): the Langlands–Shahidi gamma, L- and epsilon factors γ(s, σ, spin, ψ) of generic irreducible representations σ of PGSp₆(F) for the eight-dimensional spin representation of Spin₇(ℂ), with their behaviour under quadratic twists, holomorphy of L(s, σ, spin) in Re s > 0 for tempered σ, and the global functional equation for globally generic cuspidal representations of PGSp₆ over a number field.

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups and SmoothRepresentationsOfLocalGroupsPartII

- SR.2.1–SR.2.3 induction, Jacquet functors and Whittaker functionals; SR.3.1 cuspidal support; SR.3.3 the tempered classification and the Langlands classification. SRU.1.1 weak containment; SRU.1.7–SRU.1.10 the Fell topology, Fell closure of sums, the corrected form of GS Proposition 11.6, and isolated representations weakly contained in a sum are summands; SRU.3.8 Heiermann–Opdam; SRU.3.10 discrete series are isolated in the tempered dual; SRU.4.7 Steinberg is isolated; SRU.4.8 supercuspidals are isolated.
- What SmoothRepresentationsOfLocalGroupsPartII must provide (gap:relative-generic-isolation): for a split group G over F of the types PGSp₆ and SO_N, a generic discrete series δ of G(F) is isolated in the set of irreducible unitary representations occurring as local components at a fixed place of the globally generic cuspidal spectrum with a fixed supercuspidal component at a second place (Ichino–Lapid–Mao, Proposition A.5 and Lemma A.2).

### From TauCetiRoadmap.AutomorphicFormsOnReductiveGroups

- Layer 0 automorphic forms and the adelic quotient; Layer 2 (§§2.4–2.5) real tempered and discrete-series representations and archimedean parameters; Layer 4 cusp forms, cuspidal realizations and Whittaker coefficients (§§4.2–4.3).
- What AutomorphicFormsOnReductiveGroups must provide (gap:poincare-weak-containment): for a reductive group G over a number field, a closed subgroup H that is either the pointwise stabilizer G_D of a quaternion subalgebra in Aut(O) or a maximal unipotent subgroup with a generic character, and prescribed local representations δ_v at a finite set S that are H_v-distinguished square-integrable summands of L²(H_v \ G_v), the product of the δ_v with a hyperspecial vector outside S and at most one further finite place is weakly contained in the restriction to ∏_(v ∈ S) G_v of the H-distinguished part of L²(G(k) \ G(𝔸_k)) (Sakellaridis–Venkatesh, Theorem 16.3.2 and Remark 16.4.1); and the real isolation statement that a unitary representation with discrete-series infinitesimal character sufficiently far from the walls is a discrete series, with an explicit bound.

### From TauCetiRoadmap.AutomorphicSpectralTheory

- Layer 6: the invariant trace formula (§6.16), pseudo-coefficients (§6.18) and Euler–Poincaré functions (§6.19).
- What AutomorphicSpectralTheory must provide (gap:automorphic-plancherel-density): Shin's automorphic Plancherel density theorem: for a totally real k and a connected reductive G over k with discrete series at infinity, trivial centre, A_(G×ℝ) = A_(G,ℝ), unramified outside a finite set S and infinity, and a relatively quasi-compact Plancherel-regular subset U of the unitary dual of G(k_S) of positive Plancherel measure, there are infinitely many cuspidal automorphic representations with S-component in U, unramified outside S and infinity, and discrete series at infinity; and the density limit along any sequence of weights satisfying Shin's Definition 3.5 (Shin, Theorem 5.8, Corollary 4.12, Definition 3.5).

### From TauCetiRoadmap.AutomorphicGaloisRepresentationsPartII

- AG2.2 Galois representations of regular algebraic polarized cuspidal representations over CM and totally real fields, including essentially self-dual descent to totally real fields and discrete sums; AG2.5 Caraiani's full away-prime compatibility with N; AG2.6 full polarized local–global compatibility at the coefficient prime and compatible systems.
- What AutomorphicGaloisRepresentationsPartII must provide (gap:kret-shin-gspin-galois): the Kret–Shin theorem: for a totally real k, n ≥ 2 and a cuspidal representation Σ of GSp₂ₙ(𝔸_k) with a finite place where Σ is a character twist of Steinberg and with Σ_∞|sim|^(−n(n+1)/4) cohomological for an irreducible algebraic representation of Res_(k/ℚ) GSp₂ₙ, a continuous GSpin₂ₙ₊₁(ℚ̄_ℓ)-valued representation of Gal(k̄/k) whose standard projection is the Galois representation of the Sp₂ₙ-restriction and whose similitude is the central character, unramified with matching Satake classes outside 2, ℓ and the ramification of k and Σ, de Rham at ℓ with the prescribed Hodge cocharacter (Kret–Shin, Theorem A); and its irreducibility in the spin representation when in addition n = 3 and the spin parameter is regular at every real place (Kret–Shin, Proposition 13.1(4)).

### From Tau Ceti roadmaps on main

- ReductiveGroups, Layer 9: pinned Chevalley–Demazure groups over ℤ, used for G₂, SL₃, PGSp₆ and the split D₄.
- RepresentationTheory/SpinRepresentations, Layer 2 (Spin and the double cover Spin₇ → SO₇), Layer 4 (spin and half-spin representations), Layer 5 (fundamental representations of B₃ and D₄), Layer 6 (Spin₆ ≅ SL₄ with V ≅ Λ²(ℂ⁴)) and Layer 8 (triality for Spin₈ and the pullback cycle of the three eight-dimensional representations).
- ClassFieldTheory, Layer 5 (the Brauer group of F and the local invariant) and Layer 9 (the local Weil group).
- OrthogonalSpinGroups, Layer 1 (the Lipschitz group and the spinor norm) and Layer 2 (local spinor norms), for the spinor-norm character in §2.1.

## How to read the build

Layer 0 is pure dual-group mathematics: branching, detection of the A₂ and Spin₇ images, standard injectivity, quadratic rigidity, weak equivalence and the unacceptability of Spin₇, and Chenevier's descent theorems. Layer 1 globalizes local representations of G₂ and PGSp₆ with prescribed periods, Whittaker models or spin-regular weights. Layer 2 builds the spin transfer from generic PGSp₆ to GL₈ through triality and compares its gamma factors. Layer 3 defines the G₂ parameter map from the theta dichotomy and proves its spectral properties and both characterizations. Layer 4 parametrizes the packets over the discrete A₂ parameters. Layer 5 constructs Kret–Shin parameters and proves the exceptional spin identity on all generic discrete series. Layer 6 identifies every diamond discrete fibre with a distinguished one of Xu's packets. Layer 7 assembles the Main Theorem and its enhanced applications. Layers 8–10 extend the spin method to all of PGSp₆: the classical global theta lift of a globalized discrete series, extended spin transfer, existence of joint Spin₇-lifts, and the weak correspondence with its fibres. Layer 1 does not use Layer 0, and Layer 2 uses only §0.1 and §1.6 from them; Layers 4–6 depend on Layer 3; Layers 8–9 depend on Layers 0–2 but not on Layers 3–7, and Layer 10 uses Layers 5 and 6 only for the diamond classes of §§10.1 and 10.9.

## Layer 0: Parameters of G₂ and Spin₇

### 0.1 Branching of the vector and spin representations

Prove that v ∘ j ≅ 1 ⊕ Std₃ ⊕ Std₃∨ as algebraic representations of SL₃(ℂ), that s ∘ i ≅ 1 ⊕ v as representations of G₂(ℂ), and that under Spin₇(ℂ) ⊂ Spin₈(ℂ) the eight-dimensional vector representation restricts to 1 ⊕ q while each half-spin representation restricts to s (GS, §2.2, pp. 9–10; §4.1, p. 17). Composing with a parameter, the same identities hold for Weil–Deligne representations with their monodromy: v ∘ j ∘ φ_τ ≅ 1 ⊕ φ_τ ⊕ φ_τ∨ and s ∘ i ∘ φ ≅ 1 ⊕ v ∘ φ. Prove also h-branching: q ∘ h ≅ 1 ⊕ Λ²(Std₄) and s ∘ h ≅ Std₄ ⊕ Std₄∨ for h : SL₄(ℂ) = Spin₆(ℂ) → Spin₇(ℂ) (GS, §12.3, pp. 35–36). *Route:* compare highest weights and dimensions with the B₃, D₄ and A₃ fundamental representations; the invariant line of s ∘ i is spanned by the nonisotropic spinor whose stabilizer is G₂(ℂ). *Needs:* ExceptionalThetaCorrespondencesForG2, Layer 0 (dual-group inclusions); SpinRepresentations, Layers 4, 5, 6.

**Checks.**

- On the A₂ torus diag(a, b, (ab)⁻¹) of SL₃(ℂ) the seven eigenvalues of v ∘ j are (1, a, b, (ab)⁻¹, a⁻¹, b⁻¹, ab); their product is 1, and the characteristic polynomial is `(X−1)(X−a)(X−b)(X−(ab)⁻¹)(X−a⁻¹)(X−b⁻¹)(X−ab)`, monic of degree seven (computed with `Matrix.charpoly_diagonal`).
- At a = b = 1 the polynomial is `(X−1)⁷`; at a = −1, b = 1 the eigenvalues are 1, −1, 1, −1, −1, 1, −1 and the polynomial is `(X−1)³(X+1)⁴`.
- At a = 2, b = 3 the spectrum is {1, 2, 3, 1/6, 1/2, 1/3, 6}; the wrong branching 1 ⊕ Std₃ ⊕ Std₃ would give {1, 2, 3, 1/6, 2, 3, 1/6}, so the dual summand is detected.
- The spin restriction adds one eigenvalue 1 even when v already has eigenvalue 1: at a = b = 1 the spin polynomial is `(X−1)⁸`, not `(X−1)⁷`.
- Dimensions: 7 = 1 + 3 + 3, 8 = 1 + 7, 7 = 1 + 6 and 8 = 4 + 4; a formula s ∘ h ≅ Std₄ ⊕ 1 ⊕ Std₄∨ would have dimension 9.
- The central element −1 of Spin₇(ℂ) acts by −1 in s and trivially in q, so two Spin₇-valued parameters differing by an unramified quadratic central character with Frobenius ↦ −1 have the same q-image and spin images with Frobenius eigenvalues all 1 versus all −1.

### 0.2 Detection of discrete A₂ parameters

Prove that j induces an injection Φ(PGL₃)/(φ_τ ∼ φ_τ∨) → Φ(G₂); that a discrete parameter φ of G₂ lies in its image exactly when L(s, v ∘ φ) has a pole at s = 0; and that for φ = j ∘ φ_τ with φ_τ discrete, S_φ ≅ μ₃ when φ_τ is not self-dual and S_φ ≅ S₃ when φ_τ is self-dual (GS, Lemma 2.4(i), pp. 9–10). *Route:* the normalizer of j(SL₃) in G₂(ℂ) is j(SL₃) ⋊ ⟨duality⟩ and acts on parameters by φ_τ ↦ φ_τ∨; a pole of L(s, v ∘ φ) at 0 is a nonzero φ-invariant vector of v; for discrete φ that vector is nonisotropic and its stabilizer is a conjugate of j(SL₃); the centralizers are computed from Z_G₂(SL₃) = μ₃ and Z_G₂(SO₃) = S₃. The conjugacy theorem for G₂ cited in GS Lemma 2.4 gives the injectivity modulo duality. *Needs:* §0.1; ExceptionalThetaCorrespondencesForG2, Layer 0 (dual-group inclusions and centralizers; component groups); EndoscopicTransferAndUnitaryTraceComparison §10.1 (L-factors of Weil–Deligne representations).

**Checks.**

- The principal SL₂ in SL₃ is self-dual and discrete in SL₃; its image is the subregular parameter of G₂, with S_φ ≅ S₃, not μ₃.
- For φ_τ = χ ⊗ Sym² with χ a nontrivial cubic character, φ_τ is discrete and not self-dual (φ_τ∨ = χ⁻¹ ⊗ Sym²) and S_φ ≅ μ₃.
- The principal SL₂ parameter of G₂ is discrete with v ∘ φ = Sym⁶ irreducible, so L(s, v ∘ φ) has no pole at 0 and φ is not in the A₂ image.
- A non-discrete parameter j(φ_τ) with φ_τ = 1 ⊕ 1 ⊕ 1 has L(s, v ∘ φ) with a pole of order seven at 0; the pole criterion is asserted only for discrete φ.

### 0.3 Spin detection of G₂ parameters

Prove that i induces an injection Φ(G₂) → Φ(PGSp₆); that for φ ∈ Φ♦_ds(G₂) the parameter i ∘ φ is discrete and L(s, s ∘ i ∘ φ) has a pole at s = 0; that conversely a discrete Spin₇-valued parameter φ̃ with a pole of L(s, s ∘ φ̃) at s = 0 is i ∘ φ for a unique diamond discrete φ; and that for such φ the inclusion induces S_φ ≅ S_(i∘φ)/image Z(Spin₇) (GS, Lemma 2.4(ii), p. 9; §8.3, p. 24). *Route:* a pole is a φ̃-invariant spinor; complete reducibility makes the invariant subspace nondegenerate for the spin quadratic form, so it contains a nonisotropic vector whose stabilizer is a conjugate of i(G₂); the conjugacy and centralizer comparison is Gross–Savin's. *Needs:* §0.1, §0.2; ExceptionalThetaCorrespondencesForG2, Layer 0.

**Checks.**

- For the principal SL₂ parameter φ of G₂, i ∘ φ restricted to SL₂ is Sym⁶ ⊕ Sym⁰ in s, and s ∘ i ∘ φ = 1 ⊕ Sym⁶ has exactly one invariant line.
- For the subregular parameter (in the A₂ image), s ∘ i ∘ φ = 1 ⊕ 1 ⊕ Sym² ⊕ Sym², the pole of L(s, s ∘ i ∘ φ) at 0 has order two, and i ∘ φ is not discrete (it factors through a proper Levi of Spin₇); the converse statement is asserted only for discrete φ̃.
- The quotient by image Z(Spin₇) is needed: for the principal SL₂ parameter of Spin₇ the raw component group is μ₂ = Z(Spin₇) while S_φ of the principal G₂ parameter is trivial.

### 0.4 Standard injectivity

Prove that v induces an injection Φ(G₂) → Φ(GL₇): two G₂-valued parameters whose seven-dimensional Weil–Deligne representations are isomorphic are G₂(ℂ)-conjugate (GS, Lemma 2.4(iii), p. 9; §3.4, p. 13). Prove that v carries Φ♦_ds(G₂) into discrete parameters of SO₇. *Route:* elements of G₂(ℂ) that are conjugate in GL₇(ℂ) are conjugate in G₂(ℂ) (the conjugacy theorem cited in GS Lemma 2.4(iii)), and acceptability of G₂ for the reductive Zariski closure of the image of W_F × SL₂(ℂ), keeping the algebraic SL₂ factor. *Needs:* ExceptionalThetaCorrespondencesForG2, Layer 0; §0.1.

**Checks.**

- On the A₂ image, v ∘ j ∘ φ_τ = 1 ⊕ φ_τ ⊕ φ_τ∨ is reducible of dimension seven, and the injectivity does not require irreducibility of v ∘ φ.
- j ∘ φ_τ and j ∘ φ_τ∨ have isomorphic v-images and are indeed G₂-conjugate, consistent with §0.2.
- The analogous statement fails for Spin₇ and its eight-dimensional spin representation alone: two parameters differing by a nontrivial quadratic central character χ with χ ⊗ (s ∘ φ) ≅ s ∘ φ have isomorphic spin images (§0.8).

### 0.5 Quadratic twist rigidity on the G₂ image

Let Γ be a group, ρ : Γ → G₂(ℂ) a homomorphism with completely reducible image and χ : Γ → {±1} a nontrivial character. Prove: if i ∘ ρ and χ · (i ∘ ρ) are not Spin₇(ℂ)-conjugate, then (v ∘ ρ) ⊗ χ has no nonzero invariant vector; in particular, if s ∘ (χ · i ∘ ρ) ≅ 1 ⊕ v ∘ ρ then χ · (i ∘ ρ) is conjugate to i ∘ ρ (HKT, Lemma 4.6). *Route:* a trivial summand of s ∘ (χ · i ∘ ρ) = χ ⊗ (1 ⊕ v ∘ ρ) is an invariant spinor; the invariant subspace is nondegenerate by complete reducibility, so it contains a nonisotropic vector, whose stabilizer is a conjugate of G₂(ℂ); then §0.4. *Needs:* §0.1, §0.4.

**Checks.**

- ρ trivial, χ nontrivial: χ · i ∘ ρ is the central character χ, not conjugate to the trivial homomorphism, and (v ∘ ρ) ⊗ χ = χ^⊕7 has no invariant vector: both sides of the implication hold.
- If (v ∘ ρ) ⊗ χ has an invariant vector the conclusion is conjugacy, not χ = 1: for ρ with image in j(SL₃) ⋊ ⟨duality⟩ acting on the line by the sign χ, χ is nontrivial and χ · i ∘ ρ is conjugate to i ∘ ρ.
- The nonisotropy step is necessary: nonzero isotropic spinors exist in the eight-dimensional spin representation and their stabilizers are not conjugates of G₂(ℂ).

### 0.6 Weak equivalence of Spin₇-valued parameters

Define two parameters φ, φ′ : WD_F → Spin₇(ℂ) to be weakly equivalent when q ∘ φ ≅ q ∘ φ′ as SO₇-valued parameters and s ∘ φ ≅ s ∘ φ′ as GL₈-valued parameters, and Φ_w(PGSp₆) as the quotient of Φ(PGSp₆) by this relation (GS, Definition 12.1, p. 34).

- Weak equivalence is an equivalence relation coarser than Spin₇-conjugacy, and every parameter class has a weak class.
- Two weak classes are equal exactly when both the SO₇-images and the GL₈-images agree; q ∘ φ and s ∘ φ depend only on the weak class.
- A function on Φ(PGSp₆) that is constant on pairs with equal q- and s-images factors uniquely through Φ_w(PGSp₆).
- Multiplication by a quadratic character χ : W_F → μ₂ = Z(Spin₇) descends to Φ_w, since q ∘ (χφ) = q ∘ φ and s ∘ (χφ) = χ ⊗ s ∘ φ.

**Checks.**

- A parameter and any Spin₇-conjugate of it have the same weak class.
- The trivial parameter and the unramified quadratic central parameter (Frobenius ↦ −1 ∈ Z(Spin₇)) have equal SO₇-images and unequal spin images (all eigenvalues 1 versus all −1), so they have different weak classes; equality of q-images alone does not define the relation.
- Twisting twice by the same χ returns the weak class, since χ² = 1.
- The two homomorphisms of §0.8 have the same weak class but different conjugacy classes, so the quotient map Φ(PGSp₆) → Φ_w(PGSp₆) is not injective.

### 0.7 Weak equivalence and elementwise conjugacy

Prove that two parameters φ, φ′ : WD_F → Spin₇(ℂ) are weakly equivalent exactly when φ(x) and φ′(x) are Spin₇(ℂ)-conjugate for every x ∈ WD_F (GS, Lemma 12.2, p. 34). *Route:* for semisimple elements of Spin₇, conjugacy is equivalent to conjugacy of the images in SO₇ together with equality of spin traces (CG, Lemma 3.10 and Proposition 3.12); characters on the reductive Zariski closure recover the representation isomorphisms; for elements of WD_F with nontrivial unipotent part, prove that conjugacy of the semisimple parts given by the standard and spin data extends to the commuting unipotent parts. *Needs:* §0.6; SpinRepresentations, Layers 2 and 4.

**Checks.**

- For a parameter trivial on W_F the relation is conjugacy of the restrictions to SL₂(ℂ); elementwise conjugacy of unipotent elements uses the unipotent class, not the semisimple part alone.
- The trivial parameter and the unramified quadratic central parameter are not elementwise conjugate (Frobenius maps to 1 and −1, central and distinct), matching §0.6.
- Elementwise conjugacy is strictly weaker than conjugacy by one element (§0.8).

### 0.8 Spin₇ is unacceptable

Prove that there are a finite group Γ and homomorphisms r, r′ : Γ → Spin₇(ℂ) that are conjugate element by element but not by a single element of Spin₇(ℂ) (CG, Example 1 and Corollary 4.8, PDF pp. 13–14). This is `spin7_not_acceptable`, stated with `spinGroup` `sumSquaresSeven`, where `sumSquaresSeven` is the form x₁² + ⋯ + x₇² on ℂ⁷. *Route:* take Γ = μ₄ × μ₄ with projections a, b and the four-dimensional representation V with characters a, ab², b, ba²; det V = 1 gives r : Γ → SU₄ = Spin₆ → Spin₇; put r′ = η · r with η = b² (central in Spin₇). The group Γ is the union of ker a², ker b² and ker (ab)², which gives elementwise conjugacy; neither η ⊗ V nor its dual is isomorphic to V, and CG Corollary 4.6 excludes global conjugacy. CG works in the compact Spin(7); element conjugacy passes to Spin₇(ℂ), and two homomorphisms into the compact form that are conjugate in the complexification are conjugate in the compact form. *Needs:* §0.6, §0.7; SpinRepresentations, Layer 6 (Spin₆ ≅ SL₄).

**Checks.**

- In coordinates a = (1,0), b = (0,1) of the character group (ℤ/4)², V has weights (1,0), (1,2), (0,1), (2,1), summing to (4,4) ≡ 0 (so det V = 1); η ⊗ V has weights (1,2), (1,0), (0,3), (2,3), which is neither the multiset of V nor that of V∨, namely (3,0), (3,2), (0,3), (2,3).
- Every (x, y) ∈ (ℤ/4)² has x even, y even or x + y even, so Γ = ker a² ∪ ker b² ∪ ker (ab)².
- On ker b² = {(x, y) : 2y ≡ 0} the character η is trivial, so r and r′ agree there.
- Any statement that identifies a weak class with a single conjugacy class of Spin₇-valued homomorphisms fails on (r, r′).

### 0.9 Chenevier's local factorization criterion

Let k be totally real and A a cuspidal automorphic representation of GL₇(𝔸_k), regular algebraic at every real place. Prove that the following are equivalent: for almost every place the Satake parameter of A lies in v(G₂(ℂ)); for every finite place u the Weil–Deligne parameter of A_u lifts to a G₂(ℂ)-valued parameter, unique up to G₂(ℂ)-conjugacy (C, Theorem E, p. 100; Corollary 6.8, pp. 149–150). Chenevier's statements use W_F × SU₂; translate them to W_F × SL₂(ℂ) keeping N. *Route:* Chenevier's group-theoretic classification of subgroups of SO₇ whose elements are conjugate into G₂, the Galois representation of A and local–global compatibility, then §0.4. *Needs:* §0.4; AutomorphicGaloisRepresentationsPartII, AG2.2 and AG2.5; Chebotarev density.

**Checks.**

- For a non-CM holomorphic newform f over ℚ with trivial character whose sixth symmetric power transfer A = Sym⁶ f is cuspidal, every Satake parameter of A is Sym⁶ of an element of SL₂(ℂ), which lies in v(G₂(ℂ)) because Sym⁶ restricted to the principal SL₂ of G₂ is v; both conditions hold and the local lift at a Steinberg place of f is the principal SL₂ parameter of G₂.
- The lift is unique up to G₂-conjugacy, not merely up to GL₇-conjugacy of the composite; by §0.4 these agree.
- For A the rank-seven transfer of a G₂ form with a Steinberg component, the local parameter at the Steinberg place is the principal SL₂ parameter, which lies in G₂ with v ∘ φ = Sym⁶.

### 0.10 Chenevier's G₂-valued Galois lift

For k and A as in §0.9 satisfying the almost-everywhere G₂ condition, a coefficient field E, a prime ℓ and λ | ℓ of E, prove that the semisimple Galois representation r_(A,λ) : Gal(k̄/k) → GL₇(Ē_λ) is v ∘ r̃ for a continuous semisimple r̃ : Gal(k̄/k) → G₂(Ē_λ), unique up to G₂(Ē_λ)-conjugacy (C, §§6.2–6.3, Theorem 6.4, pp. 147–148). Semisimple means that the identity component of the Zariski closure of the image is reductive. *Route:* Chenevier's condition (G) forces self-duality, the representation is attached by AG2.2, and Theorem 6.4 gives the lift. The local comparison of r̃ at ramified places and at places above ℓ is §3.15, not part of this statement. *Needs:* §0.4; AutomorphicGaloisRepresentationsPartII, AG2.2.

**Checks.**

- If r_(A,λ) = v ∘ r̃ = v ∘ r̃′ then r̃ and r̃′ are G₂-conjugate; uniqueness up to GL₇-conjugacy alone would allow outer twists that §0.4 excludes.
- For a reducible semisimple r_(A,λ) = 1 ⊕ ρ ⊕ ρ∨ with ρ three-dimensional the lift is j ∘ ρ, matching §0.1.
- The statement is global: it gives no comparison of r̃ restricted to a decomposition group with any local parameter.

### Examples

- The subregular parameter: trivial on W_F, SL₂ through the principal SL₂ of SL₃. Then v ∘ φ = 1 ⊕ Sym² ⊕ Sym², s ∘ i ∘ φ = 1 ⊕ 1 ⊕ Sym² ⊕ Sym² and S_φ ≅ S₃ (§§0.1–0.3).
- The Steinberg parameter of G₂: v ∘ φ = Sym⁶, s ∘ i ∘ φ = 1 ⊕ Sym⁶, S_φ = 1.
- The pair (r, r′) of §0.8 on μ₄ × μ₄.

### Dependencies

ExceptionalThetaCorrespondencesForG2, Layer 0; SpinRepresentations, Layers 2, 4, 5, 6; EndoscopicTransferAndUnitaryTraceComparison, §10.1; AutomorphicGaloisRepresentationsPartII, AG2.2 and AG2.5; Mathlib `spinGroup`, `Matrix.charpoly`.

## Layer 1: Globalization with periods and Whittaker models

### 1.1 The spectrum detected by a quaternion period

Let k be totally real, O a totally definite octonion algebra over k split at every finite place, G = Aut(O) and D ⊂ O a quaternion subalgebra, with pointwise stabilizer G_D (ExceptionalThetaCorrespondencesForG2, Layer 9, *Quaternion pointwise stabilizers*). Fix the quotient measure on G_D(k) \ G_D(𝔸_k). Define L²_D ⊂ L²(G(k) \ G(𝔸_k)) as the orthogonal complement of the closed span Z_D of all irreducible automorphic subrepresentations on whose smooth vectors the G_D-period vanishes identically (GS, §10.2, p. 28). Since G(k) \ G(𝔸_k) is compact, L² is a Hilbert direct sum of irreducibles with finite multiplicities and the periods are defined on smooth vectors.

- Orthogonal projection onto L²_D commutes with G(𝔸_k), its kernel is Z_D, and it identifies L²/Z_D with L²_D.
- Every irreducible automorphic subrepresentation contained in L²_D has a period not identically zero on its smooth vectors.
- Conjugating the embedding D ⊂ O by G(k) gives unitarily equivalent selected spectra.

**Checks.**

- The constant function has period equal to the volume of G_D(k) \ G_D(𝔸_k), which is nonzero, so the trivial representation lies in L²_D.
- Rescaling the quotient measure by a positive constant rescales every period and leaves Z_D and L²_D unchanged.
- In a multiplicity-two model V ⊕ V with period P(v₁, v₂) = P₀(v₁) + P₀(v₂) and P₀ ≠ 0, the zero-period copy is the antidiagonal and L²_D meets V ⊕ V in the diagonal copy; the first coordinate copy has nonzero period but is not contained in L²_D, so "nonzero period" does not characterize the copies contained in L²_D.

### 1.2 The fixed-supercuspidal generic spectrum

For a split simple group G over a number field k, a nondegenerate global Whittaker character ψ, a finite place w and a generic supercuspidal σ of G(k_w), define L²_(ψ,σ) as the orthogonal complement, inside the σ-isotypic part at w of the cuspidal spectrum, of the closed span of the irreducible cuspidal subrepresentations on which the global ψ-Whittaker functional vanishes (GS, §10.3, p. 29). No multiplicity-one theorem is assumed; the Hilbert sum keeps the automorphic multiplicity spaces.

- Every irreducible subrepresentation contained in L²_(ψ,σ) is cuspidal, has nonzero global ψ-Whittaker coefficient, and has local component σ at w.
- Projection onto L²_(ψ,σ) commutes with G(𝔸_k); its kernel in the σ-isotypic cuspidal part is the zero-Whittaker span.
- Conjugating ψ by the adjoint torus transports L²_(ψ,σ) and its constituent conditions.

**Checks.**

- A generic cuspidal representation whose component at w is not isomorphic to σ (for instance an unramified twist of σ by a nontrivial unramified character when that twist is inequivalent) is excluded: the selection is by isomorphism class, not inertial class.
- A nongeneric cuspidal representation with component σ at w is excluded.
- In a multiplicity-two model V ⊕ V with Whittaker functional W(v₁, v₂) = W₀(v₁) + W₀(v₂), W₀ ≠ 0, the selected copy is the diagonal; taking the whole σ-isotypic component would also include the antidiagonal copy with zero coefficient.

### 1.3 Poincaré series and weak containment

Prove: (a) in the setting of §1.1, for a finite set S of finite places and local representations δ_u (u ∈ S) that are summands of L²(G_D(k_u) \ G(k_u)), together with the unramified spherical vectors outside S, the representation ⊗_(u∈S) δ_u is weakly contained in the restriction of L²_D to ∏_(u∈S) G(k_u); (b) in the setting of §1.2, products of generic square-integrable local representations at a finite set S, with hyperspecial vectors outside S ∪ {w} and outside at most one further finite place, are weakly contained in L²_(ψ,σ) (GS, proofs of Propositions 10.5 and 10.7, pp. 28–30). *Route:* the Poincaré-series construction of Sakellaridis–Venkatesh. *Needs:* §§1.1–1.2; AutomorphicFormsOnReductiveGroups, Layers 0 and 4, together with the Poincaré-series weak-containment theorem of the AutomorphicFormsOnReductiveGroups contract; SmoothRepresentationsOfLocalGroupsPartII, SRU.1.1.

**Checks.**

- Weak containment alone does not produce a summand: the sum of one isolated Steinberg representation and infinitely many copies of the trivial representation weakly contains Steinberg, and no subsequence of the trivial summands converges to it; §1.4 applies isolation (SRU.1.10) to conclude.
- At S = ∅ statement (a) is the weak containment of the trivial representation, witnessed by the constant function.
- The extra place in (b) is genuine: the conclusion does not say that every place outside S ∪ {w} is spherical.

### 1.4 Globalization with a nonzero quaternion period

For a nonempty finite set S of finite places of a totally real k, prescribe for u ∈ S a representation π_u of split G₂(k_u) that is either supercuspidal with nonzero theta lift to PGSp₆ or the Steinberg representation, and for each real place u an irreducible representation of the compact G₂(k_u). Prove that there are a quaternion subalgebra D of the totally definite octonion algebra O over k and an automorphic representation Π of Aut(O) with Π_u ≅ π_u at every prescribed place, unramified outside S and infinity, and with nonzero G_D-period (GS, Proposition 10.5 and proof, pp. 28–29). *Route:* choose local quaternion algebras D_u with π_u a summand of L²(G_D_u \ G₂(k_u)) (ExceptionalThetaCorrespondencesForG2, Layer 9: supercuspidal relative embeddings, the Steinberg relative summand and the SU₂-periods of compact real G₂), globalize D inside O, apply §1.3(a) and the isolation of supercuspidals and of Steinberg (SRU.4.7–SRU.4.8) with the isolated-summand theorem (SRU.1.10). *Needs:* §1.3; ExceptionalThetaCorrespondencesForG2, Layer 9; SmoothRepresentationsOfLocalGroupsPartII, SRU.1.10, SRU.4.7, SRU.4.8; GlobalQuadraticForms (Hasse principle for quaternion and octonion algebras over k).

**Checks.**

- S must be nonempty: with S = ∅ the trivial representation already satisfies the conclusion and no prescribed finite component is obtained.
- The real components need not be regular here; regularity enters only in the cuspidality criterion of ExceptionalThetaCorrespondencesForG2, Layer 10.
- O is over k (definite at every real place, split at every finite place); a local octonion algebra over F has no real places to prescribe.

### 1.5 Relative isolation for generic G₂ discrete series

Let δ be a generic discrete series of G₂(F) whose PGSp₆ theta lift is a discrete series, and σ a generic supercuspidal of G₂ at a second place whose PGSp₆ lift is supercuspidal. Prove that δ is isolated among the irreducible representations of G₂(F) occurring as local components of the globally generic cuspidal spectrum with fixed component σ (GS, Lemma 10.8 and proof, p. 30). *Route:* a convergent family in that set consists of generic standard modules (SRU.3.8); the explicit lift tables transport the family and its limit to PGSp₆, where generic discrete series are isolated in the corresponding globally generic family (relative-generic-isolation contract), and Howe duality returns to G₂. *Needs:* §1.2; ExceptionalThetaCorrespondencesForG2, Layer 8 (explicit lift tables, three Howe theorems) and Layer 10 (generic global nonvanishing); SmoothRepresentationsOfLocalGroupsPartII, SRU.3.8, SRU.3.10, and the relative-generic-isolation contract; SmoothRepresentationsOfLocalGroups, SR.2.

**Checks.**

- The hypothesis that θ(δ) is discrete excludes π_gen[1], the generic member of the subregular fibre, whose PGSp₆ lift is a constituent of a Siegel-induced representation (§5.5).
- Isolation in the tempered dual (SRU.3.10) is not this statement: the relative family may contain nontempered unitary representations.
- For δ = St_G₂ the statement follows from SRU.4.7 directly, since Steinberg is isolated in the whole unitary dual.

### 1.6 Globalization of isolated generic discrete series

For a split simple group G over a number field k, a finite set S of finite places with prescribed generic discrete series δ_u (u ∈ S), each isolated in the sense of §1.5 for G₂ or of the relative-generic-isolation contract for classical G, a further finite place w ∉ S with a prescribed generic supercuspidal σ, and real components prescribed far from the walls, prove that there is a globally generic cuspidal Π with Π_u ≅ δ_u for u ∈ S, Π_w ≅ σ, and Π spherical outside S ∪ {w} and outside at most one further finite place (GS, Proposition 10.7 and proof, pp. 29–30). *Route:* §1.3(b) and isolation place by place, SRU.1.10. *Needs:* §1.3, §1.5; SmoothRepresentationsOfLocalGroupsPartII, SRU.1.10; the real-isolation statement of the AutomorphicFormsOnReductiveGroups contract.

**Checks.**

- The conclusion allows one uncontrolled finite place; any later use comparing functional equations (§2.4) handles that place explicitly.
- Taking δ_u = St at every u ∈ S, the conclusion holds with the weaker isolation of SRU.4.7.
- Without the fixed supercuspidal at w the selected family of §1.2 is not defined.

### 1.7 Globalization of PGSp₆ discrete series with spin-regular weights

Let σ be a discrete series of PGSp₆(F), k a totally real field with a finite place v₀ such that k_v₀ ≅ F, and v₁ ≠ v₀ a finite place. Prove that there is a cuspidal Σ of PGSp₆(𝔸_k) with Σ_v₀ ≅ σ, Σ_v₁ ≅ St, a generic cohomological discrete series with spin-regular parameter at every real place, and components at every other finite place that are unramified up to a quadratic twist (GS, Lemma 12.4 and proof, p. 37; Shin, Definition 3.5, author PDF p. 14; Corollary 4.12, author PDF p. 24; Theorem 5.8, author PDF pp. 26–27). *Route:* apply the Plancherel density theorem with positive-measure atoms {σ} and {St} at v₀ and v₁ along the weights λ_t = t(8, 4, 2), t ≥ 1, at every real place: the coordinate sum 14t is even, so λ_t is in the root lattice of PGSp₆; with ρ = (3, 2, 1) the infinitesimal character h = λ_t + ρ = (8t+3, 4t+2, 2t+1) satisfies h₁ > h₂ + h₃ and h₂ > h₃ > 0, so the eight spin weights (±h₁ ± h₂ ± h₃)/2 are distinct (in any signed difference the largest nonzero coordinate dominates the others); every positive-root pairing of λ_t tends to infinity, as Shin's Definition 3.5 requires. The Steinberg component makes the global Sp₆-parameter generic with trivial global component group; Xu's multiplicity formula changes the real components to generic members of their packets without changing the parameter; a global quadratic character corrects v₀ and v₁ simultaneously. *Needs:* §1.6; AutomorphicSpectralTheory, automorphic-plancherel-density contract; ModularityAndLanglandsExtensions §§3.17, 3.19, 3.27.

**Checks.**

- At t = 1, h = (11, 6, 3) and the spin weights are 10, 7, 4, 1, −1, −4, −7, −10, all distinct.
- At t = 0, h = ρ = (3, 2, 1) has h₁ = h₂ + h₃, and the spin weights (3 − 2 − 1)/2 and (−3 + 2 + 1)/2 coincide at 0: the weight ρ itself is not spin-regular, so t ≥ 1 is needed.
- The prescribed σ is a discrete series: Plancherel atoms of positive measure exist only for discrete series, so the statement does not globalize arbitrary irreducibles.
- Shin's Theorem 5.8 alone gives discrete series at infinity with no control of spin regularity; the explicit sequence λ_t is what provides it.

### Examples

- The constant function in L²_D (§1.1) and the multiplicity-two models of §§1.1–1.2.
- The globalization of St_G₂ at one place of ℚ with a compact real component (§1.4), whose global exceptional lift is cuspidal by the Steinberg criterion of ExceptionalThetaCorrespondencesForG2, Layer 10.

### Dependencies

AutomorphicFormsOnReductiveGroups, Layers 0 and 4; AutomorphicSpectralTheory, Layer 6; ModularityAndLanglandsExtensions §§3.17, 3.19, 3.27; SmoothRepresentationsOfLocalGroups, SR.2; SmoothRepresentationsOfLocalGroupsPartII, SRU.1, SRU.3, SRU.4; ExceptionalThetaCorrespondencesForG2, Layers 8–10; GlobalQuadraticForms.

## Layer 2: Triality and the generic spin transfer

### 2.1 The three triality maps over F

For split D₄ over F define f₁ : SO₈ → PGSO₈ as the natural central isogeny and f₂, f₃ as its two companions obtained by composing with the triality automorphism, so that the dual maps of f₁, f₂, f₃ identify the vector representation and the two half-spin representations of Spin₈(ℂ) (GS, §4.1, pp. 16–17). Construct them from `TauCeti.D4Tripled.trialityAutomorphism`, compared with the split simply connected D₄ over F, by descent to the three central quotients of order two.

- The triality automorphism cycles f₁, f₂, f₃; its cube is the identity.
- The dual of f₁ is the vector representation of Spin₈(ℂ) and the duals of f₂, f₃ are the two half-spin representations.
- The maps commute with extension of characteristic-zero fields.
- The similitude character of PGSO₈ modulo squares pulls back along f₁ to the trivial character of SO₈(F) and along f₂ or f₃ to the spinor-norm character of SO₈(F).

**Checks.**

- The three eight-dimensional representations of Spin₈(ℂ) have three distinct central kernels of order two in Z(Spin₈) ≅ μ₂ × μ₂.
- Restricted to Spin₇(ℂ), the dual of f₁ is 1 ⊕ q and the duals of f₂, f₃ are both s (§0.1); a construction giving 1 ⊕ q for f₂ is the vector map again.
- Applying the cycle three times returns each f_i, by `TauCeti.D4Tripled.trialityAutomorphism_pow_three`.
- A complex diagram automorphism alone does not define the f_i over F: the central quotients must be F-rational, which the integral automorphism provides.

*Needs:* Tau Ceti `TauCeti.D4Tripled.trialityAutomorphism`; ReductiveGroups, Layer 9; SpinRepresentations, Layer 8; OrthogonalSpinGroups, Layers 1–2 (spinor norm).

### 2.2 The local spin lift of generic PGSp₆ representations

For generic irreducible σ of PGSp₆(F), take its nonzero similitude theta lift to PGSO₈(F) (MetaplecticAutomorphicForms §3.41), pull it back along f₂, choose an irreducible constituent of the restriction to SO₈(F) modulo the even-orthogonal outer automorphism, and apply Arthur's local correspondence for split SO₈ followed by the inclusion into GL₈ and the correspondence for GL₈. Define SpinLift(σ) as the resulting irreducible representation of GL₈(F) (GS, §§4.2–4.3, p. 17). Prove that it is independent of the constituent and of the choice of f₂ or f₃.

- At an unramified generic σ the Satake class of SpinLift(σ) is s applied to the Spin₇ Satake class of σ.
- The lift of a generic tempered σ is tempered.
- The parameter of SpinLift(σ) is the standard parameter of the triality-transformed orthogonal parameter.

**Checks.**

- For the unramified tempered σ whose parameter is trivial on W_F and SL₂, the eight Satake eigenvalues of SpinLift(σ) are all 1.
- Multiplying an unramified Spin₇ parameter by the central −1 multiplies all eight spin eigenvalues by −1 and leaves the seven standard eigenvalues unchanged; SpinLift is not determined by the standard data of σ.
- SpinLift(σ) has rank eight, whereas the standard transfer of σ to GL₇ has rank seven.

*Needs:* §2.1, §0.1; MetaplecticAutomorphicForms §§3.34, 3.41; ModularityAndLanglandsExtensions §3.15; EndoscopicTransferAndUnitaryTraceComparison §10.30.

### 2.3 The global isobaric spin transfer

For a cuspidal Σ of PGSp₆(𝔸_k) with nonzero cuspidal similitude theta lift to PGSO₈, define SpinLift(Σ) as the isobaric automorphic representation of GL₈(𝔸_k) obtained by pulling back along f₂ and applying Arthur's global standard transfer of an automorphic constituent (GS, §4.3, pp. 17–18; §5.2, p. 21). Prove that it is independent of the constituent and that its local component at every finite place where Σ is generic is the local SpinLift.

- The unramified spin Satake classes determine SpinLift(Σ) (isobaric strong multiplicity one).
- The global Arthur parameter of SpinLift(Σ) is orthogonal with trivial determinant.
- Each local standard parameter of the triality transfer equals the local theta construction at that place; at complex places use the Adams–Barbasch matching of the pgsp6-similitude-theta-tables contract.

**Checks.**

- For Σ the cuspidal theta lift of a G₂ form, the spin Satake polynomial at each unramified place has a factor X − 1 (§0.1), and SpinLift(Σ) = 1 ⊞ A with A of rank seven, which is not cuspidal.
- The ranks of the isobaric summands add up to eight.
- A definition requiring SpinLift(Σ) to be cuspidal would reject the case 1 ⊞ A; cuspidality is proved separately under extra hypotheses (§8.2).

*Needs:* §2.2; ModularityAndLanglandsExtensions §§3.8, 3.17; AutomorphicLFunctionsAndLocalFactors, AL.3 (isobaric strong multiplicity one); MetaplecticAutomorphicForms §3.41.

### 2.4 Spin gamma factors of the local spin lift

For generic discrete series σ of PGSp₆(F), prove that γ(s, σ, spin, ψ) = γ(s, SpinLift(σ), ψ), the left side being the Langlands–Shahidi factor and the right the standard factor of GL₈, with the same ψ and compatible Haar measures (GS, Proposition 4.1(i) and proof, pp. 18–19). *Route:* globalize σ over a totally complex field at one or two places isomorphic to F, with a Steinberg place and a generic supercuspidal place (§1.6), compare the global functional equations of the spin L-function and of the standard L-function of SpinLift, cancel the unramified and complex places, and use one versus two copies of σ to remove a possible root of unity. The globalization of §1.6 allows one further finite place with uncontrolled component; the cancellation requires either a globalization in which that place is spherical, or an identity of the two gamma factors at that place obtained by the same induction on the depth of the auxiliary place. *Needs:* §1.6, §2.3; AutomorphicLFunctionsAndLocalFactors, AL.3 (global Rankin–Selberg functional equation) and the pgsp6-shahidi-spin-factor contract; EndoscopicTransferAndUnitaryTraceComparison §10.30.

**Checks.**

- For σ unramified (not discrete, so outside the statement) both sides equal the ratio of the unramified spin factors at 1 − s and s by construction, which fixes the normalization.
- For σ = St_PGSp₆ the parameter is the principal SL₂ of Spin₇, which lies in i(G₂(ℂ)); the semisimple element 2ρ∨ = (6,4,2) acts on the spin weights (±1/2,±1/2,±1/2) with eigenvalues 6, 4, 2, 0, 0, −2, −4, −6, so SpinLift(σ) has parameter 1 ⊕ Sym⁶ and is the tempered representation 1 × St₇ of GL₈, not St_GL₈ (whose parameter Sym⁷ is symplectic and cannot occur).
- Replacing ψ by ψ_a multiplies both sides by the same factor det(s ∘ φ)(a) |a|^(8(s−1/2)) = |a|^(8(s−1/2)), since the spin parameter has trivial determinant.

### 2.5 Quadratic twisting of the generic spin lift

For generic discrete series σ of PGSp₆(F) and quadratic χ, prove SpinLift(σ ⊗ χ ∘ sim) ≅ SpinLift(σ) ⊗ χ ∘ det (GS, Proposition 4.1(ii), pp. 18–19). *Route:* the spinor-norm pullback of §2.1 and the twisting rule of the classical lift, or §2.4 with the local converse of the gln-generic-local-converse contract. *Needs:* §2.1, §2.4; MetaplecticAutomorphicForms (pgsp6-similitude-theta-tables contract); EndoscopicTransferAndUnitaryTraceComparison §10.30.

**Checks.**

- The twist leaves the standard parameter of σ unchanged (χ ∘ sim is trivial on Sp₆(F)) and multiplies the spin parameter by χ: on the unramified quadratic χ with an unramified σ the eight eigenvalues change sign.
- Twisting twice by χ returns SpinLift(σ).
- Using the vector map f₁ instead of f₂ would make the twist invisible, contradicting the first Check.

### Examples

- St_PGSp₆: its theta lift to PGSO₈ is the Steinberg representation, whose SO₈-parameter is the principal SL₂ of SO₈ with standard representation Sym⁶ ⊕ 1; triality fixes the principal SL₂, so SpinLift(St) has parameter 1 ⊕ Sym⁶.
- For σ the theta lift of a generic G₂ discrete series in Irr♦, SpinLift(σ) has parameter 1 ⊕ v ∘ L(π) (§5.4).

### Dependencies

Tau Ceti `TauCeti.D4Tripled.trialityAutomorphism`; ReductiveGroups, Layer 9; SpinRepresentations, Layer 8; OrthogonalSpinGroups, Layers 1–2; MetaplecticAutomorphicForms §§3.34, 3.41; ModularityAndLanglandsExtensions §§3.8, 3.15, 3.17; EndoscopicTransferAndUnitaryTraceComparison §10.30; AutomorphicLFunctionsAndLocalFactors, AL.3; Layer 0 (§0.1); Layer 1 (§1.6).

## Layer 3: The G₂ parameter map and its characterizations

### 3.1 The classical theta parameter factors through G₂

If π ∈ Irr(G₂(F)) has nonzero theta lift θ(π) to PGSp₆(F), prove that the parameter assigned by Arthur to the PGSp₆(F)-orbit of irreducible constituents of the restriction of θ(π) to Sp₆(F) is v ∘ φ for a unique φ ∈ Φ(G₂) (GS, Proposition 3.1, p. 11; §3.3, pp. 11–12). *Route:* for non-supercuspidal π read the parameter from the explicit lift tables and the correspondence for the Levi subgroups; for supercuspidal π globalize on the totally definite octonion form with a Steinberg place (§1.4), take the cuspidal global lift Σ (ExceptionalThetaCorrespondencesForG2, Layer 10), observe that the rank-seven transfer of Σ is cuspidal and regular algebraic with Satake parameters in v(G₂), and apply §0.9 locally; uniqueness is §0.4. *Needs:* §0.4, §0.9, §1.4; ExceptionalThetaCorrespondencesForG2, Layers 8 and 10; ModularityAndLanglandsExtensions §§3.15, 3.17.

**Checks.**

- For π = St_G₂, θ(π) = St_PGSp₆ and the Sp₆ parameter is Sym⁶ on SL₂, which is v of the principal SL₂ of G₂.
- The restriction to Sp₆(F) is an orbit of constituents under PGSp₆(F); choosing one constituent without that orbit would make the statement depend on a choice, while Arthur's parameter is constant on the orbit.
- The octonion algebra of the route is global over k with split localization at the prescribed place; a local definite octonion algebra over F does not exist.

### 3.2 The G₂ parameter map

Using the dichotomy Irr(G₂) = Irr♠ ⊔ Irr♥, define L : Irr(G₂(F)) → Φ(G₂) by L(π) = j ∘ L_PD×(θ_D(π)) for π ∈ Irr♠, where θ_D(π) is the lift to PD× for the cubic division algebra D and L_PD× is the correspondence for PD× (the correspondence for GL₃ composed with Jacquet–Langlands), and by L(π) = the unique φ with v ∘ φ = the Arthur parameter of the restriction of θ(π) to Sp₆(F) for π ∈ Irr♥ (GS, §3.1, pp. 10–11).

- For π ∈ Irr♠, L(π) = j ∘ L_PD×(θ_D(π)); for π ∈ Irr♥, v ∘ L(π) is the Arthur parameter of the restriction of θ(π).
- L is constant on isomorphism classes.
- On Irr♥ the seven-dimensional parameter v ∘ L(π) determines L(π) (§0.4).

**Checks.**

- St_G₂ maps to the principal SL₂ parameter of G₂ with trivial Weil part.
- For an unramified irreducible π, L(π) is the Satake class together with the monodromy prescribed by the unramified correspondence; for the trivial representation, L(1) is trivial on SL₂(ℂ) and sends w ∈ W_F to the image under the principal SL₂ of diag(|w|^(1/2), |w|^(−1/2)), so v ∘ L(1) has arithmetic-Frobenius eigenvalues q^(−3), q^(−2), …, q^(3) and N = 0; confusing it with the Steinberg parameter (same semisimple Frobenius, N ≠ 0) is excluded by N.
- Replacing D by its opposite algebra and the PGL₃ parameter by its dual leaves L(π) unchanged, because j ∘ φ_τ and j ∘ φ_τ∨ are G₂-conjugate (§0.2).

*Needs:* §3.1, §0.2; ExceptionalThetaCorrespondencesForG2, Layers 5–6 (division Howe duality, dichotomy); EndoscopicTransferAndUnitaryTraceComparison §§4.7a, 10.30–10.31.

### 3.3 The split PGL₃ description

Decompose Irr♥ = Irr♣ ⊔ Irr♦ by whether the lift to PGL₃ ⋊ ⟨duality⟩ is nonzero. On Irr♣ define L_B(π) = j ∘ rec(τ), where τ is the irreducible PGL₃(F)-constituent of that lift, determined up to τ ↔ τ∨; on Irr♠ and Irr♦ set L_B = L (GS, §3.2, p. 11; HD, Theorems 8.2 and 8.5, PDF pp. 25–29).

- For π lifting to an extension τ± of τ, L_B(π) = j ∘ rec(τ).
- τ and τ∨ give the same value, so L_B is well defined on representation classes.
- The loci Irr♠, Irr♣, Irr♦ partition Irr(G₂).

**Checks.**

- The lifts of St_PGL₃⁺ and St_PGL₃⁻ are two different representations with the same value j ∘ (principal SL₂ of SL₃), the subregular parameter.
- For a non-self-dual τ, τ and τ∨ are distinct representations of PGL₃(F) with equal image under j ∘ rec.
- The sign ± of the extension τ± does not change L_B; an assignment depending on the sign would separate two members that §4.3 places in one fibre.

*Needs:* §3.2, §0.2; ExceptionalThetaCorrespondencesForG2, Layer 5 (*PGL₃ outer extensions and their signs*, *Howe duality for split E₆*); EndoscopicTransferAndUnitaryTraceComparison §10.30.

### 3.4 Agreement of the two descriptions

Prove L_B = L: if π = θ(τ±) then the Arthur parameter of the restriction of θ(π) is v ∘ j ∘ rec(τ), including when θ(π) is a reducible tempered Siegel induction's constituent or a nontempered Langlands quotient (GS, §3.2, p. 11; HD, Theorems 8.2, 8.5 and 15.2, PDF pp. 25–29, 52–53). *Route:* the explicit lift tables give θ(π) as a constituent of a Siegel induction from τ; compare Levi parameters through normalized induction and apply §0.4. *Needs:* §§3.2–3.3, §0.1, §0.4; ExceptionalThetaCorrespondencesForG2, Layer 8 (*The E₆-to-E₇ tempered Siegel table*); SmoothRepresentationsOfLocalGroups, SR.2; EndoscopicTransferAndUnitaryTraceComparison §10.30.

**Checks.**

- For τ = St_PGL₃, the PGSp₆ lift of the generic member is the generic constituent of the Siegel induction I₃(St_PGL₃), which is tempered and not a discrete series; its Sp₆ parameter is 1 ⊕ Sym² ⊕ Sym², equal to v ∘ j ∘ (principal SL₂).
- For τ unramified with Satake class diag(a, b, (ab)⁻¹) the two sides have the eigenvalues of §0.1.
- Only constituents with the same cuspidal support can be compared; the Langlands quotient, not an arbitrary constituent, is matched for nontempered τ.

### 3.5 Nontempered representations

For every nontempered π = J_P(τ), the Langlands quotient of a standard module from a proper parabolic P = MN with τ essentially tempered in the positive chamber, prove that L(π) is rec_M(τ) composed with M∨ → G₂(ℂ); hence L restricts to a bijection between nontempered representations and nontempered parameter classes (GS, §1.1(iii), p. 3; §3.4, p. 12; HD, Lemmas 13.4 and 13.8, PDF pp. 42, 47; Theorem 15.1(v), PDF p. 52). The proper Levi subgroups are the two GL₂'s (of the two maximal parabolics) and the split torus. *Route:* the nontempered lift tables of ExceptionalThetaCorrespondencesForG2, Layer 8, compared Levi by Levi, and the Langlands classification. *Needs:* §3.4; SmoothRepresentationsOfLocalGroups, SR.2–SR.3; EndoscopicTransferAndUnitaryTraceComparison §10.30; ExceptionalThetaCorrespondencesForG2, Layer 8 (*Explicit nontempered lifts*).

**Checks.**

- The trivial representation is the Langlands quotient of the Borel standard module with exponent ρ, and its parameter is the unramified parameter of §3.2 with v-eigenvalues q^(−3), …, q^(3) at arithmetic Frobenius; it is nontempered and the fibre is a singleton.
- The two embeddings of GL₂ as Levi subgroups (long and short root) have different dual embeddings into G₂(ℂ), and the statement is checked separately for each.
- An arbitrary constituent of a reducible standard module is not matched: only the Langlands quotient has the stated parameter.

### 3.6 Temperedness and tempered induction

Prove that π is tempered exactly when L(π)(W_F) is bounded, and that if π is a constituent of the normalized induction from a unitary discrete series τ of a proper Levi M then L(π) is rec_M(τ) composed with M∨ → G₂(ℂ) (GS, §1.1(ii), p. 3; §3.4, p. 12). *Needs:* §3.4, §3.5; SmoothRepresentationsOfLocalGroups, SR.2–SR.3; EndoscopicTransferAndUnitaryTraceComparison §10.30.

**Checks.**

- Boundedness is on W_F, not on SL₂: the Steinberg parameter has unbounded SL₂ image and St_G₂ is tempered.
- The trivial representation has unbounded Weil image (v-eigenvalues q^(±3), q^(±2), q^(±1), 1 at Frobenius) and is not tempered.
- Both constituents of a reducible tempered induction have the same parameter.

### 3.7 Discrete series

Prove that π is square-integrable exactly when L(π) does not factor through a proper Levi subgroup of G₂(ℂ), as a parameter of WD_F (GS, §1.1(i), p. 3; §3.4, p. 12). *Route:* the discrete-series trichotomy of ExceptionalThetaCorrespondencesForG2, Layer 8, with §§0.2–0.3. *Needs:* §3.6, §0.2, §0.3; ExceptionalThetaCorrespondencesForG2, Layer 8 (*The discrete-series trichotomy*).

**Checks.**

- The Steinberg parameter is discrete and nontrivial on SL₂.
- A discrete G₂ representation in Irr♣ may have a non-discrete PGSp₆ lift (π_gen[1], §5.5), so discreteness is not read from the PGSp₆ partner.
- The trivial parameter is not discrete: it factors through the torus.

### 3.8 Tempered non-discrete packets

Prove that for every bounded non-discrete φ, the fibre L⁻¹(φ) has |Irr(S_φ)| ∈ {1, 2} elements, with a unique generic member labelled by the trivial character; this holds for every p including p = 3 (GS, §3.4, p. 12). *Route:* rank-one R-groups for the two maximal Levis and the torus, with the explicit reducibility lists. *Needs:* §3.6, §3.7; SmoothRepresentationsOfLocalGroups, SR.2.

**Checks.**

- The unitary principal series from the trivial character of the torus is irreducible, S_φ = 1, and the fibre has one element.
- A two-element fibre contains both constituents of one reducible induction, exactly one generic.
- S_φ is abelian here, so |Irr(S_φ)| = |S_φ|; this coincidence fails for the subregular S₃ of §4.4.

### 3.9 The rank-seven standard lift

Define Lif(π) ∈ Irr(GL₇(F)) by: for π ∈ Irr♥, Arthur's standard transfer of the restriction of θ(π) to GL₇; for π ∈ Irr♠ with τ the Jacquet–Langlands transfer of θ_D(π) to PGL₃, the representation of GL₇(F) whose parameter is φ_τ ⊕ 1 ⊕ φ_τ∨ (GS, §3.4, p. 13).

- rec(Lif(π)) = v ∘ L(π) as Weil–Deligne representations with monodromy.
- On Irr♠ the parameter is φ_τ ⊕ 1 ⊕ φ_τ∨; on Irr♥ Lif is Arthur's standard transfer.
- Dualizing τ leaves Lif(π) unchanged.

**Checks.**

- Every value has rank seven; on Irr♠ the ranks are 3 + 1 + 3.
- The parameter of Lif(π) is orthogonal with determinant one.
- For diagonal A₂ Satake data (a, b, (ab)⁻¹) the characteristic polynomial of the Satake class of Lif(π) is the polynomial of §0.1.
- Lif(π) is the representation attached to the direct-sum parameter, which is irreducible by definition; it is not a written parabolic induction, which can be reducible.

*Needs:* §3.2, §0.1; ModularityAndLanglandsExtensions §3.15; EndoscopicTransferAndUnitaryTraceComparison §10.30.

### 3.10 Gamma factors of G₂ × GL_r

For π ∈ Irr(G₂(F)), τ ∈ Irr(GL_r(F)) and ψ, define γ(s, π × τ, ψ) = γ(s, Lif(π) × τ, ψ), the right side the Rankin–Selberg factor (GS, §3.4, p. 13; GF, Definition 2.1, p. 3).

- γ(s, π × τ, ψ) equals the Rankin–Selberg factor of Lif(π) × τ, a meromorphic function of s.
- Induction in the GL_r variable multiplies the factors of the cuspidal support.
- Replacing ψ by ψ_a(x) = ψ(ax) multiplies the factor by det(φ_τ)(a)⁷ · |a|^(7r(s−1/2)), because det(v ∘ L(π)) = 1.
- For unramified data and unramified ψ it is the ratio of the unramified tensor factors.

**Checks.**

- For toral A₂ data (χ₁, χ₂, χ₃) with χ₁χ₂χ₃ = 1 the factor is γ(s, τ) ∏_i γ(s, χ_i^(±1) × τ), seven factors.
- For a GL₁ twist τ = μ the change-of-character multiplier is μ(a)⁷ |a|^(7(s−1/2)), which detects a seventh power of μ.
- The exponent is 7r, not 8r: the tensor parameter has dimension 7r.

*Needs:* §3.9; AutomorphicLFunctionsAndLocalFactors, AL.3 (local Rankin–Selberg factor and functional equation).

### 3.11 The analytic characterization of the G₂ × GL_r factors

Prove Gan–Savin's theorem that the family γ(s, π × τ, ψ) of §3.10 is the unique family satisfying: multiplicativity along cuspidal support, with the rules 1 ⊕ ⨁_i χ_i^(±1) for the torus of G₂, φ_τ ⊕ φ_τ∨ ⊕ det φ_τ ⊕ det φ_τ⁻¹ ⊕ 1 for the Levi of P, φ_τ ⊕ φ_τ∨ ⊕ Ad φ_τ for the Levi of Q, and parabolic multiplicativity in GL_r; and a global functional equation L^S(1 − s, Π × T∨) = ∏_(u∈S) γ(s, Π_u × T_u, ψ_u) L^S(s, Π × T) for Π a cuspidal representation of Aut(O) over a totally real k, spherical at every split real place, with nonzero cuspidal theta lift to split PGSp₆ or to PD× for a degree-three central simple algebra (possibly split), and T cuspidal on GL_r (GF, Theorem 2.4 and §§2.6–2.8, pp. 5–8). *Route:* GF Proposition 2.3 transfers supercuspidal support; the two global theta routes give the functional equation; globalization of a supercuspidal pair (§1.4) gives uniqueness. *Needs:* §3.10, §1.4; AutomorphicLFunctionsAndLocalFactors, AL.3 (global Rankin–Selberg functional equation); ExceptionalThetaCorrespondencesForG2, Layer 10.

**Checks.**

- The P-Levi rule has dimension 2 + 2 + 1 + 1 + 1 = 7 and the Q-Levi rule 2 + 2 + 3 = 7.
- The theorem asserts a global functional equation only for the stated family Π, not for every cuspidal G₂ representation.
- At the torus with χ_i = 1 the rule gives seven factors γ(s, τ), matching §3.10 on the trivial character.

### 3.12 Preservation of G₂ × GL_r gamma factors

Prove γ(s, π × τ, ψ) = γ(s, (v ∘ L(π)) ⊗ rec(τ), ψ) for all π, τ, ψ, as meromorphic functions, with monodromy and matching reciprocity conventions (GS, Main Theorem (ix), p. 4, with the tensor product inside the argument; §3.4, p. 13). *Needs:* §3.9, §3.10, §3.11; EndoscopicTransferAndUnitaryTraceComparison §10.30.

**Checks.**

- The argument is the tensor product (v ∘ L(π)) ⊗ φ_τ of dimension 7r; a reading with the tensor product outside the gamma factor is not well typed.
- For π = St_G₂ and τ trivial on GL₁ the right side is γ(s, Sym⁶, ψ), the Steinberg factor of GL₇.
- For π ∈ Irr♠ the right side factors as γ(s, φ_τ′ ⊗ φ_τ) γ(s, φ_τ) γ(s, φ_τ′∨ ⊗ φ_τ) with τ′ the PGL₃ datum.

### 3.13 Characterization by gamma factors

Prove that L is the unique map Irr(G₂(F)) → Φ(G₂) satisfying §3.5, §3.6, §3.7 and §3.12 for all r (GS, Main Theorem (x), p. 4; §3.4, pp. 13–14). *Route:* for tempered π the parameter v ∘ L(π) is bounded and its twisted gamma factors determine it by the generic local converse theorem for GL₇; §0.4 recovers L(π); the nontempered case follows from §3.5. *Needs:* §§3.5–3.7, §3.11, §3.12, §0.4; EndoscopicTransferAndUnitaryTraceComparison, gln-generic-local-converse contract.

**Checks.**

- A converse theorem for irreducible Weil representations alone does not suffice: v ∘ L(π) is reducible on the A₂ image.
- The gamma factors do not distinguish members of one fibre (they depend only on L(π)), so the characterization is of the map, not of an enhancement.
- For nontempered π the gamma factors determine only the cuspidal support; the Langlands quotient rule §3.5 fixes the parameter.

### 3.14 Characterization by the theta diagrams

Prove that a map Irr(G₂(F)) → Φ(G₂) satisfying §§3.5–3.7 and the two diagrams of §3.2 equals L (GS, Main Theorem (v), p. 4; §3.4, p. 12). *Route:* the dichotomy places each π in one diagram; injectivity of j modulo duality (§0.2) and of v (§0.4) determines the value. *Needs:* §3.2, §0.2, §0.4.

**Checks.**

- The characterization uses no enhancement or labelling of fibres.
- On Irr♠ the diagram determines L(π) only up to j(φ_τ) ↔ j(φ_τ∨), which are conjugate.
- A map agreeing with L on Irr♥ and composing with the dual parameter on Irr♠ is still L.

### 3.15 Global–local compatibility at all places

Let k be totally real and Π a globally generic, regular algebraic cuspidal representation of split G₂ over k with a Steinberg component at a finite place. Prove that every semisimple ρ_Π : Gal(k̄/k) → GL₇(ℚ̄_ℓ) with ρ_Π(Frob_v)^ss conjugate to the Satake class of Π_v for almost all v factors as v ∘ ρ̃ with ρ̃ valued in G₂(ℚ̄_ℓ), unique up to G₂(ℚ̄_ℓ)-conjugacy, and that for every finite place u the Frobenius-semisimplified Weil–Deligne representation of ρ̃ at u, with monodromy, is L(Π_u); at u | ℓ the Weil–Deligne representation is the one attached by Fontaine's functor to the potentially semistable representation (GS, Main Theorem (viii), p. 4; §3.4, p. 12). *Route:* the global generic lift to PGSp₆ (ExceptionalThetaCorrespondencesForG2, Layer 10) and its rank-seven transfer, cuspidal because of the Steinberg place; §0.10 for the factorization; AG2.5 and AG2.6 for compatibility at u ∤ ℓ and u | ℓ; §0.4 and §3.9. *Needs:* §0.10, §3.2, §3.9; AutomorphicGaloisRepresentationsPartII, AG2.2, AG2.5, AG2.6; ExceptionalThetaCorrespondencesForG2, Layer 10 (*Generic global nonvanishing*).

**Checks.**

- At a Steinberg place u the Weil–Deligne representation is Sym⁶ with N ≠ 0; ordinary semisimplification would lose N and give the wrong parameter.
- At an unramified place u ∤ ℓ the statement reduces to the Satake condition.
- Uniqueness is up to G₂-conjugacy; by §0.4 GL₇-conjugacy of v ∘ ρ̃ gives the same answer.

### Examples

- The subregular fibre's split members: L(θ(St_PGL₃^±)) is the subregular parameter (§§3.3–3.4).
- Gamma factors of St_G₂ × 1 equal those of St_GL₇ (§3.12).

### Dependencies

Layers 0–2; ExceptionalThetaCorrespondencesForG2, Layers 5–10; ModularityAndLanglandsExtensions §§3.15, 3.17; EndoscopicTransferAndUnitaryTraceComparison §§4.7a, 10.30–10.31 and the gln-generic-local-converse contract; SmoothRepresentationsOfLocalGroups, SR.2–SR.3; AutomorphicLFunctionsAndLocalFactors, AL.3; AutomorphicGaloisRepresentationsPartII, AG2.2, AG2.5, AG2.6.

## Layer 4: A₂ packets and cubic inner forms

### 4.1 Cubic inner forms and their central characters

Define the labelling of the three degree-three central simple algebras M₃(F), D₁, D₂ by their invariants 0, 1/3, 2/3 ∈ (1/3)ℤ/ℤ (ClassFieldTheory, Layer 5), and, through the Kottwitz pairing H¹(F, PGL₃) × Z(SL₃(ℂ)) → ℚ/ℤ with Z(SL₃(ℂ)) = μ₃, by the characters 1, χ, χ⁻¹ of μ₃, with the convention χ(ζ₃) = ζ₃ for the generator ζ₃ = e^(2πi/3) (GS, §3.5, pp. 14–15). For a discrete parameter φ_τ of PGL₃, the representations of PD₁× and PD₂× with parameter φ_τ are the Jacquet–Langlands transfers.

- The three classes have invariants 0, 1/3, 2/3; taking the opposite algebra negates the invariant and inverts the character.
- The Jacquet–Langlands transfer of the contragredient corresponds to the dual parameter, with the opposite algebra.
- The split class pairs with the trivial character of μ₃.

**Checks.**

- M₃(F) has invariant 0 and trivial character.
- D₁ and D₂ are opposite to each other, with characters χ and χ⁻¹, which are distinct characters of μ₃.
- Taking the opposite twice returns D₁; reversing the sign convention of the invariant map exchanges the labels of D₁ and D₂ simultaneously in every statement of this layer.

*Needs:* ClassFieldTheory, Layer 5; EndoscopicTransferAndUnitaryTraceComparison §§1.13, 4.7a; §0.2; ExceptionalThetaCorrespondencesForG2, Layer 5 (*Opposite division algebras and contragredients*).

### 4.2 Non-self-dual A₂ packets

Let φ = j ∘ φ_τ be discrete with φ_τ not self-dual, so S_φ ≅ μ₃. Prove: the split theta lift gives the unique generic member of L⁻¹(φ), labelled 1, and the lifts from PD₁× and PD₂× give the members labelled χ and χ⁻¹; for p ≠ 3 this is a bijection L⁻¹(φ) ≅ Irr(μ₃), and for p = 3 it is an injection Irr(μ₃) → L⁻¹(φ) that is a bijection onto L⁻¹(φ) whenever both division lifts are nonzero (GS, Proposition 3.2, pp. 14–16). *Needs:* §4.1, §3.4; ExceptionalThetaCorrespondencesForG2, Layer 5 (*Howe duality for the cubic division pair*, *The residue-characteristic bound for division nonvanishing*) and Layer 8 (*Howe duality for all three exceptional pairs*).

**Checks.**

- The fibre has three elements for p ≠ 3, one generic.
- χ and χ⁻¹ are different characters of μ₃, so the two division lifts are different members.
- At p = 3 the conclusion is an injection: the division lift may vanish, and the statement does not assert that all three labels occur.

### 4.3 Self-dual A₂ packets

Let φ = j ∘ φ_τ be discrete with φ_τ self-dual, so S_φ ≅ S₃. Prove, for p ≠ 3, a bijection L⁻¹(φ) ≅ Irr(S₃) = {1, sgn, std₂} with the generic member labelled 1: the two lifts θ(τ⁺) and θ(τ⁻) of the extensions of τ to PGL₃ ⋊ ⟨duality⟩ are the members labelled by the two characters trivial on μ₃ (1 for the generic one and sgn), and the division lift (the same representation from D₁ and D₂, which are exchanged by duality) is the member labelled std₂, whose restriction to μ₃ is χ ⊕ χ⁻¹. For p = 3 prove the corresponding injection (GS, Proposition 3.2 and proof, pp. 14–16; HD, Theorems 8.2 and 8.5, PDF pp. 25–29). *Route:* the normalizer of μ₃ in S₃ acts by inversion; Clifford theory for the two extensions τ±; HD Theorem 8.5 separates the generic and nongeneric split lifts in every residue characteristic including 2; the central restriction of the division lift. The μ₃-centralizer construction used for §4.2 does not apply when S_φ = S₃, so this argument is separate. *Needs:* §4.1, §3.3, §0.2; ExceptionalThetaCorrespondencesForG2, Layer 5 (*PGL₃ outer extensions and their signs*, *Nonzero minus lift for selfdual supercuspidals*, *The split-E₆ lift table*).

**Checks.**

- |Irr(S₃)| = 3 while |S₃| = 6: the fibre has three elements, not six.
- std₂ restricted to μ₃ is χ ⊕ χ⁻¹, a sum of the two nontrivial characters; it is not a single Kottwitz character.
- sgn restricts trivially to μ₃, so the corresponding member comes from the split form, not from a division algebra.

### 4.4 The subregular fibre

For the parameter φ trivial on W_F and subregular on SL₂, prove S_φ ≅ S₃ and L⁻¹(φ) = {π_gen[1], π_sc[1], π_deg[1]} labelled 1, sgn, std₂, where π_gen[1] and π_sc[1] are the lifts of St_PGL₃⁺ and St_PGL₃⁻ and π_deg[1] is the lift of the trivial representation of PD×; this holds for every p including p = 3 (GS, Proposition 3.2, p. 14; HD, Theorem 8.5, PDF pp. 27–29). *Needs:* §4.3, §3.4; ExceptionalThetaCorrespondencesForG2, Layer 1 (*Unipotent depth-zero supercuspidals*), Layer 5 and Layer 8.

**Checks.**

- π_sc[1] is supercuspidal although its parameter is nontrivial on SL₂; it is not generic.
- The subregular fibre is complete at p = 3: the division lift of the trivial representation of PD× is nonzero in every residue characteristic.
- π_gen[1] is the only generic member, and its PGSp₆ lift is the generic constituent of I₃(St_PGL₃), a tempered non-discrete representation.

### 4.5 Enhanced compatibility with the PGL₃ and division theta lifts

Assume p ≠ 3. Prove that for τ ∈ Irr(PGL₃(F)) the irreducible lifts of τ and τ∨ to G₂ are exactly the members of L⁻¹(j ∘ φ_τ) whose labels are trivial on the image of π₀ Z_(SL₃(ℂ))(φ_τ), and that for discrete τ the lifts of its Jacquet–Langlands transfers to PD× are exactly the members whose labels are nontrivial on that image; in the self-dual discrete case these are {1, sgn} and {std₂} (GS, Theorem 9.1(i), p. 26). The criterion is the restriction of an irreducible character of S_φ to the image of μ₃. *Needs:* §§4.2–4.3, §3.5, §3.8.

**Checks.**

- For τ the trivial representation of PGL₃ (non-discrete), the lift is the single member of a singleton fibre and its label is trivial.
- For a non-self-dual discrete τ, the split lift has label 1 and the two division lifts have labels χ, χ⁻¹, nontrivial on μ₃.
- Evaluating a character at one element of the centralizer instead of restricting it would misclassify std₂ (its trace at a generator of μ₃ is −1, neither 2 nor a cube root of unity).

### Examples

- The subregular fibre {π_gen[1], π_sc[1], π_deg[1]} with labels {1, sgn, std₂}.
- A non-self-dual cubic-twisted Steinberg χ ⊗ St_PGL₃: three members, labels 1, χ, χ⁻¹ for p ≠ 3.

### Dependencies

Layers 0 and 3; ClassFieldTheory, Layer 5; EndoscopicTransferAndUnitaryTraceComparison §§1.13, 4.7a; ExceptionalThetaCorrespondencesForG2, Layers 1, 5 and 8.

## Layer 5: Kret–Shin parameters and the exceptional spin identity

### 5.1 Kret–Shin parameters of generic discrete series

For a generic discrete series σ of PGSp₆(F), define KS(σ) ⊂ Φ(PGSp₆) as the set of discrete parameter classes φ̃ : WD_F → Spin₇(ℂ) with q ∘ φ̃ equal to the Arthur parameter of the restriction of σ to Sp₆(F) and s ∘ φ̃ equal to the parameter of SpinLift(σ) (GS, §5.2, paragraph after Proposition 5.1, p. 20). Existence and uniqueness are separate theorems.

- Every member has q-image the Arthur parameter of the restriction of σ and s-image the parameter of SpinLift(σ); membership is exactly discreteness together with these two equalities.
- Any two members have the same weak class (§0.6).

**Checks.**

- For σ = St_PGSp₆ the principal SL₂ parameter of Spin₇ is a member: q of it is Sym⁶ and s of it is 1 ⊕ Sym⁶ (§2.2 Examples).
- If χ · φ̃ changes the spin parameter (χ ⊗ s ∘ φ̃ ≇ s ∘ φ̃), then χ · φ̃ is not a member although it has the same q-image.
- For σ = θ(π) with π generic discrete series in Irr♦, i ∘ L(π) is a member (§5.3).

*Needs:* §2.2, §0.6; ModularityAndLanglandsExtensions §3.15; EndoscopicTransferAndUnitaryTraceComparison §10.30.

### 5.2 Existence of Kret–Shin parameters

Prove that every generic discrete series σ of PGSp₆(F) has KS(σ) ≠ ∅, and that any two members are conjugate after multiplication by a quadratic character of W_F (GS, Proposition 5.1 and proof, p. 20). *Route:* globalize σ over a totally real field with a Steinberg place, a generic supercuspidal place and cohomological generic spin-regular discrete series at the real places (§1.6 and §1.7); apply the Kret–Shin theorem to the cuspidal Σ; compare s ∘ ρ_Σ with the Galois representations of the isobaric summands of SpinLift(Σ) by Chebotarev, after checking that each summand is regular algebraic with the correct shift; read off the local parameter at the place of σ from local–global compatibility with N at a place not above ℓ. Two Spin₇-lifts of one SO₇-parameter differ by a character W_F → μ₂. *Needs:* §5.1, §1.6, §1.7, §2.3; AutomorphicGaloisRepresentationsPartII, AG2.2 and AG2.5, and the kret-shin-gspin-galois contract; ModularityAndLanglandsExtensions §3.17.

**Checks.**

- Two members may differ by a nontrivial quadratic χ with χ ⊗ s ∘ φ̃ ≅ s ∘ φ̃; existence does not give a singleton.
- The globalization must keep a Steinberg place: the Kret–Shin theorem assumes it.
- Spin regularity at infinity is checked on the explicit weight h = (8t+3, 4t+2, 2t+1) of §1.7, whose eight spin weights (±h₁ ± h₂ ± h₃)/2 are distinct; at t = 1 they are ±10, ±7, ±4, ±1.

### 5.3 Uniqueness of Kret–Shin parameters on the diamond image

If π is a generic discrete series of G₂(F) in Irr♦ and σ = θ(π), prove that σ is a generic discrete series and KS(σ) = {i ∘ L(π)} (GS, Proposition 5.2 and proof, pp. 20–21). *Route:* globalize π with a Steinberg place (§1.6), take the cuspidal global lift Σ; almost everywhere s ∘ i = 1 ⊕ v gives SpinLift(Σ) = 1 ⊞ (standard transfer of Σ) by isobaric strong multiplicity one, so s ∘ i ∘ L(π) is the local spin parameter; any other member is a quadratic twist (§5.2) and §0.5 makes it conjugate. *Needs:* §5.2, §0.5, §1.6, §2.3, §3.2; AutomorphicLFunctionsAndLocalFactors, AL.3 (isobaric strong multiplicity one); ExceptionalThetaCorrespondencesForG2, Layer 8 (discrete-series trichotomy) and Layer 10 (generic global nonvanishing).

**Checks.**

- The hypothesis θ(π) discrete is necessary: π_gen[1] is generic discrete with non-discrete θ(π_gen[1]), and the statement is not applied to it.
- For π = St_G₂, KS(St_PGSp₆) is the single principal parameter.
- The conclusion is a single Spin₇-class, stronger than a single weak class.

### 5.4 The spin identity on the diamond locus

For generic discrete series π ∈ Irr♦(G₂), prove that the parameter of SpinLift(θ(π)) is s ∘ i ∘ L(π) = 1 ⊕ v ∘ L(π) (GS, Corollary 5.3, p. 21). *Needs:* §5.3, §0.1.

**Checks.**

- For π = St_G₂ both sides are 1 ⊕ Sym⁶.
- The trivial summand is present for every π in the statement; a spin parameter without an invariant line is not of the form s ∘ i ∘ φ.
- Dimensions: 8 = 1 + 7.

### 5.5 The spin identity for the Siegel-induced partners

Let π be a generic discrete series in Irr♣(G₂) coming from a discrete τ of PGL₃ with parameter φ_τ. By the tempered Siegel table, θ(π) = I₃(τ) when τ is not self-dual and θ(π) = I₃(τ)_gen, the generic constituent, when τ is self-dual (HD, Theorem 15.2, PDF pp. 52–53). Prove that the parameter of SpinLift(θ(π)) is φ_τ ⊕ φ_τ∨ ⊕ 1 ⊕ 1 = s ∘ i ∘ j ∘ φ_τ (GS, §1.1(vi), p. 4; §3.2, p. 11). *Route:* compute the similitude theta lift of the generic Siegel constituent to PGSO₈, apply f₂ and Arthur's correspondence for SO₈, keeping the full parameter of the constituent. This includes π_gen[1]. *Needs:* §3.4, §2.2, §0.1; MetaplecticAutomorphicForms, pgsp6-similitude-theta-tables contract; ExceptionalThetaCorrespondencesForG2, Layer 8 (*The E₆-to-E₇ tempered Siegel table*); EndoscopicTransferAndUnitaryTraceComparison §10.30.

**Checks.**

- For τ = St_PGL₃, φ_τ = Sym² and the spin parameter is Sym² ⊕ Sym² ⊕ 1 ⊕ 1, of dimensions 3 + 3 + 1 + 1; an irreducible eight-dimensional SL₂-module (Sym⁷) is excluded.
- θ(π) is tempered and not a discrete series, so §5.3 does not apply and this statement is separate.
- The parameter equals s ∘ i ∘ L(π) by §0.1 and §3.4: v ∘ j ∘ φ_τ = 1 ⊕ φ_τ ⊕ φ_τ∨.

### 5.6 The spin identity for every generic discrete series of G₂

Prove that for every generic discrete series π of G₂(F), θ(π) is a nonzero generic tempered representation of PGSp₆(F) and the parameter of SpinLift(θ(π)) is s ∘ i ∘ L(π); θ(π) is a discrete series on Irr♦ and a Siegel-induced tempered representation on Irr♣ (GS, Main Theorem (vi), p. 4, with generic tempered intermediate codomain). *Route:* generic π is not in Irr♠ (the PD× lifts are not generic), so §5.4 or §5.5 applies. *Needs:* §5.4, §5.5; ExceptionalThetaCorrespondencesForG2, Layer 8.

**Checks.**

- π_gen[1] ∈ Irr♣ is generic discrete with θ(π_gen[1]) tempered non-discrete: the intermediate codomain of the diagram is generic tempered, not generic discrete.
- π_deg[1] ∈ Irr♠ is not generic and is outside the statement.
- On Irr♦ the statement is §5.4.

### Examples

- St_G₂ ↦ St_PGSp₆ ↦ spin parameter 1 ⊕ Sym⁶.
- π_gen[1] ↦ I₃(St_PGL₃)_gen ↦ spin parameter Sym² ⊕ Sym² ⊕ 1 ⊕ 1.

### Dependencies

Layers 0–3; ModularityAndLanglandsExtensions §§3.15, 3.17; AutomorphicGaloisRepresentationsPartII, AG2.2, AG2.5 and the kret-shin-gspin-galois contract; AutomorphicLFunctionsAndLocalFactors, AL.3; MetaplecticAutomorphicForms §3.41 and the pgsp6-similitude-theta-tables contract; ExceptionalThetaCorrespondencesForG2, Layers 8 and 10.

## Layer 6: Diamond fibres and distinguished Xu packets

### 6.1 Surjectivity onto diamond discrete parameters

Prove that for every φ ∈ Φ♦_ds(G₂) there is a generic discrete series π with L(π) = φ, in every residue characteristic (GS, Proposition 6.1 and proof, pp. 21–22). *Route:* when φ is nontrivial on SL₂, read π from the explicit lift tables. When φ is trivial on SL₂, take the generic representation σ₀ of Sp₆(F) with parameter q ∘ i ∘ φ and a generic lift σ to PGSp₆; a member of KS(σ) (§5.2) differs from i ∘ φ by a quadratic character χ, so replacing σ by σ ⊗ χ ∘ sim (§2.5) gives KS(σ) ∋ i ∘ φ; then L(s, σ, spin) = L(s, SpinLift(σ)) (§2.4) has a pole at s = 0 by §0.3, and the supercuspidal spin-pole criterion gives a nonzero G₂ lift π. *Needs:* §0.3, §2.4, §2.5, §5.2; ExceptionalThetaCorrespondencesForG2, Layer 8 (*The supercuspidal spin-pole criterion*, explicit tables); ModularityAndLanglandsExtensions §§3.15, 3.19; AutomorphicLFunctionsAndLocalFactors, pgsp6-shahidi-spin-factor contract.

**Checks.**

- For φ the principal SL₂ parameter, π = St_G₂.
- The pole criterion uses the analytic spin L-factor of a generic σ; an eigenvalue 1 of a formal Satake parameter is not the hypothesis.
- The parameters in the A₂ image are excluded here; they are §§4.2–4.4.

### 6.2 The unique generic member of a diamond fibre

For φ ∈ Φ♦_ds(G₂) prove that L⁻¹(φ) has exactly one generic member; equivalently, among the generic representations of PGSp₆(F) whose Sp₆-restriction has parameter q ∘ i ∘ φ, exactly one has nonzero G₂ lift (GS, Proposition 8.1 and proof, pp. 23–24). *Route:* the generic lifts to PGSp₆ of the generic representation of Sp₆(F) with that parameter form a homogeneous set under quadratic twists; §5.3 makes their KS parameters i ∘ φ ⊗ χ; Xu's equality of the self-twist stabilizers of representations and of parameters identifies the one with KS parameter i ∘ φ; Howe duality returns to G₂. *Needs:* §5.3, §6.1; ModularityAndLanglandsExtensions §3.19; ExceptionalThetaCorrespondencesForG2, Layer 8.

**Checks.**

- For φ principal the generic member is St_G₂ and the unique PGSp₆ partner is St_PGSp₆; its twist by the unramified quadratic χ ∘ sim has zero G₂ lift.
- The quadratic action on the homogeneous set may have a nontrivial stabilizer; the argument does not assume it is free.
- Nongeneric members of L⁻¹(φ) are not counted here.

### 6.3 The distinguished member of Xu's packets

For φ ∈ Φ♦_ds(G₂) put φ♭ = q ∘ i ∘ φ and define X*(φ) as the unique one of Xu's packets of PGSp₆(F) over φ♭ containing θ(π_gen), where π_gen is the generic member of L⁻¹(φ) (GS, §8.2, p. 24).

- θ(π_gen) ∈ X*(φ).
- One of Xu's packets over φ♭ is X*(φ) exactly when its generic member has nonzero G₂ lift.
- Restriction to Sp₆ identifies X*(φ) with the set of PGSp₆(F)-orbits of representations of Sp₆(F) with parameter φ♭.

**Checks.**

- For φ principal, X*(φ) = {St_PGSp₆}.
- No other of Xu's packets over φ♭ can contain θ(π_gen), because Xu packets over φ♭ are disjoint.
- If a quadratic χ fixes i ∘ φ, then X*(φ) ⊗ χ = X*(φ) (equality of stabilizers), and no second distinguished member of Xu's packets arises.

*Needs:* §6.2; ModularityAndLanglandsExtensions §3.19.

### 6.4 Globalization with two identical local components

For π in L⁻¹(φ) with φ ∈ Φ♦_ds(G₂), prove that there are a totally real k with two finite places w₁, w₂, k_w₁ ≅ k_w₂ ≅ F, and a cuspidal Π with Π_w₁ ≅ Π_w₂ ≅ π and cuspidal nonzero PGSp₆ lift Σ whose Sp₆-restriction has a generic global parameter: for generic π on split G₂ with an auxiliary generic depth-zero supercuspidal place whose PGSp₆ lift is supercuspidal and discrete series far from the walls at the real places; for nongeneric π (supercuspidal here) on the totally definite octonion form with a Steinberg place (GS, proof of Lemma 8.3, pp. 24–25). *Needs:* §1.4, §1.6; ExceptionalThetaCorrespondencesForG2, Layer 8 (*A generic depth-zero lift example*) and Layer 10 (nonvanishing, cuspidality criteria, real infinitesimal-character matching).

**Checks.**

- The two places carry the same representation, so later substitutions at both places change the global sign by a square.
- In the nongeneric route the octonion algebra is over k, definite at the real places and split at the finite places.
- A nongeneric discrete π in a diamond fibre is supercuspidal, so the Steinberg route of §1.4 applies to it.

### 6.5 One in, all in

For one X of Xu's packets over φ♭ = q ∘ i ∘ φ with φ ∈ Φ♦_ds(G₂), prove that either every member of X has nonzero theta lift to split G₂ or none does (GS, Lemma 8.3 and proof, pp. 24–25). *Route:* start from σ = θ(π) ∈ X and σ′ ∈ X; globalize two copies of π (§6.4) to Σ; replace both components σ by σ′ — Xu's multiplicity formula allows it because the two equal local sign changes cancel — to get a cuspidal Σ′ nearly equivalent to Σ; then L^S(s, Σ′, spin) = ζ^S(s) L^S(s, Σ, std), which has a pole at s = 1 because L^S(s, Σ, std) is nonzero at 1 for a generic global parameter; the global spin-pole converse gives a nonzero lift of Σ′ to some form of G₂ over k, split at w₁, so σ′ lifts locally. *Needs:* §6.4; ModularityAndLanglandsExtensions §3.27; AutomorphicLFunctionsAndLocalFactors, AL.3 (isobaric strong multiplicity one, boundary nonvanishing); ExceptionalThetaCorrespondencesForG2, spin-pole-global-converse contract (GS20, Theorem 1.1).

**Checks.**

- One-place substitution changes the global sign by a local character value that need not be 1; with two identical places the product is a square and equals 1.
- The pole comes from ζ^S(s) at s = 1; L^S(s, Σ, std) nonvanishing at 1 is part of the argument and holds because the parameter is generic.
- GS20 Theorem 1.1 is stated over ℚ; the argument needs it over the totally real k of §6.4, which is the supplier contract.

### 6.6 A diamond fibre is one of Xu's packets

Prove that theta gives a bijection L⁻¹(φ) ≅ X*(φ) for each φ ∈ Φ♦_ds(G₂), and that no other of Xu's packets over φ♭ meets the image of theta (GS, Proposition 8.2, p. 24; §8.5, p. 25). *Route:* all of X*(φ) lifts by §6.5; their v-parameters recover φ by §0.4; the generic member of any other of these packets does not lift (§6.2), so none of it does (§6.5); Howe duality gives injectivity. *Needs:* §6.2, §6.3, §6.5, §0.4; ExceptionalThetaCorrespondencesForG2, Layer 8.

**Checks.**

- The bijection includes nongeneric members.
- For φ principal both sides are singletons {St}.
- The number of members equals the size of X*(φ), which is |Irr(S_φ)| (§6.7), not |S_φ| when S_φ is nonabelian.

### 6.7 Enhancements of diamond fibres

For φ ∈ Φ♦_ds(G₂) define the enhancement bijection L⁻¹(φ) ≅ Irr(S_φ) as the composite of theta L⁻¹(φ) ≅ X*(φ) (§6.6), Xu's Whittaker-normalized labelling X*(φ) ≅ Irr(S_(i∘φ)/image μ₂), and S_φ ≅ S_(i∘φ)/image μ₂ (§0.3) (GS, §8.3, p. 24).

- The assignment is a bijection with Irr(S_φ) in every residue characteristic.
- The generic member corresponds to the trivial character.
- The theta partner of the member labelled η has Xu label η pulled back through the central quotient.

**Checks.**

- For φ principal, S_φ = 1 and the fibre is {St_G₂}.
- A raw character of S_(i∘φ) nontrivial on the image of μ₂ is not a label of a PGSp₆ representation and has no G₂ counterpart.
- The fibre size is |Irr(S_φ)|, which differs from |S_φ| whenever S_φ is nonabelian (for S₃ the counts are 3 and 6); a labelling by elements of S_φ instead of irreducible characters is excluded.

*Needs:* §6.6, §0.3; ModularityAndLanglandsExtensions §3.19.

### Examples

- φ principal: L⁻¹(φ) = {St_G₂}, X*(φ) = {St_PGSp₆}, S_φ = 1.
- A diamond φ trivial on SL₂ with S_φ = 1: the fibre is a single generic supercuspidal representation, and X*(φ) is a single generic supercuspidal representation of PGSp₆(F) whose spin L-factor has a pole at 0.

### Dependencies

Layers 0–5; ModularityAndLanglandsExtensions §§3.15, 3.19, 3.27; AutomorphicLFunctionsAndLocalFactors, AL.3 and the pgsp6-shahidi-spin-factor contract; ExceptionalThetaCorrespondencesForG2, Layers 8 and 10 and the spin-pole-global-converse contract.

## Layer 7: The G₂ correspondence and its enhanced theta applications

### 7.1 The local Langlands correspondence for split G₂

Prove that L : Irr(G₂(F)) → Φ(G₂) is surjective with finite fibres and satisfies: discrete-series detection (§3.7); temperedness and tempered induction (§3.6); the Langlands-quotient property (§3.5); the two theta diagrams (§3.2); the characterizations by the diagrams (§3.14) and by gamma factors (§3.13); the spin diagram on generic discrete series with generic tempered intermediate codomain (§5.6); preservation of G₂ × GL_r gamma factors (§3.12); global–local compatibility under the hypotheses of §3.15; and for every φ a natural bijection L⁻¹(φ) ≅ Irr(S_φ) when p ≠ 3, and for p = 3 the same outside j(Φ_ds(PGL₃)), where there is a natural injection Irr(S_φ) → L⁻¹(φ) that is a bijection for the subregular parameter; for bounded φ the trivial character corresponds to the unique generic member (GS, Main Theorem, pp. 3–4). *Route:* the nontempered parameters (§3.5), the bounded non-discrete parameters (§3.8), the discrete A₂ parameters (§§4.2–4.4) and the diamond discrete parameters (§§6.1, 6.7) exhaust Φ(G₂). *Needs:* §§3.5–3.8, 3.12–3.15, §§4.2–4.4, §5.6, §§6.1, 6.7.

**Checks.**

- At p = 3 the A₂ statement is an injection: the conclusion is not promoted to a bijection on the discrete PGL₃ image, except for the subregular parameter (§4.4).
- The fibre over the subregular parameter has three elements and S_φ = S₃ has six elements.
- The fibre over the principal parameter is {St_G₂} and over the unramified parameter of the trivial representation is {1}.

### 7.2 The generic supercuspidal correspondence

Prove that L restricts to a bijection between generic supercuspidal representations of G₂(F) and discrete parameters trivial on SL₂(ℂ) (GS, §1.4, p. 6; HKT, main theorem). *Route:* each discrete parameter trivial on SL₂ has a unique generic member (§§4.2–4.3 on the A₂ image, §6.2 on the diamond locus), and it is supercuspidal by the explicit lift tables; a generic supercuspidal has a discrete parameter trivial on SL₂ by the same tables. *Needs:* §7.1, §6.2, §§4.2–4.3; ExceptionalThetaCorrespondencesForG2, Layer 8.

**Checks.**

- π_sc[1] is supercuspidal and nongeneric, with parameter nontrivial on SL₂: dropping genericity makes the restriction non-injective onto its image and the image larger.
- St_G₂ is generic and discrete but not supercuspidal; its parameter is nontrivial on SL₂.
- For a non-self-dual discrete φ_τ trivial on SL₂ with p ≠ 3 the fibre of j ∘ φ_τ has three members and only the split lift is generic; the bijection picks that one.

### 7.3 The partial PGSp₆ correspondence on diamond orbits

For φ ∈ Φ♦_ds(G₂) and φ♭ = q ∘ i ∘ φ, the Xu packets over φ♭ and the Spin₇-lifts of φ♭ are homogeneous sets for the quadratic characters of W_F. Define the bijection between them that sends X*(φ) to i ∘ φ and X*(φ) ⊗ χ ∘ sim to χ · (i ∘ φ), with each of these packets labelled by Irr(S_(φ̃)/image μ₂) (GS, §9, p. 26).

- The distinguished X*(φ) is assigned i ∘ φ.
- Twisting one of these packets by χ twists its assigned parameter by χ.
- Two characters χ, χ′ give equal twists X*(φ) ⊗ χ ∘ sim and X*(φ) ⊗ χ′ ∘ sim exactly when they give the same parameter (Xu's equality of stabilizers), so the assignment is well defined and bijective.
- Each matched member of Xu's packets carries Xu's labelling by characters of the central quotient.

**Checks.**

- χ = 1 recovers X*(φ) and i ∘ φ.
- A nontrivial χ fixing i ∘ φ also fixes X*(φ), and no duplicate member of Xu's packets is created.
- Labelling by Irr of the raw component group S_(φ̃) instead of its quotient by image μ₂ adds characters that label no representation of PGSp₆(F).

*Needs:* §6.3, §6.7; ModularityAndLanglandsExtensions §3.19.

### 7.4 Enhanced compatibility of G₂–PGSp₆ theta

For φ ∈ Φ♦_ds(G₂), prove that if π has enhanced parameter (φ, η), then θ(π) has assigned parameter i ∘ φ (§7.3) and Xu label η′ with η = η′ ∘ i_* through S_φ ≅ S_(i∘φ)/image μ₂ (GS, Theorem 9.1(ii), pp. 26–27, restricted to the diamond discrete range where the assignment of §7.3 is defined). *Needs:* §7.3, §6.7.

**Checks.**

- For π ∈ Irr♠, θ(π) to PGSp₆ is zero, so the statement is restricted to Φ♦_ds.
- For π_gen[1] ∈ Irr♣ the PGSp₆ partner is not discrete and §7.3 assigns it no enhanced parameter; the statement does not cover it.
- For φ principal, η and η′ are both trivial.

### Examples

- The three packets over the principal, subregular and a non-self-dual A₂ parameter, of sizes 1, 3 and 3 (p ≠ 3).

### Dependencies

Layers 3–6; ModularityAndLanglandsExtensions §3.19; ExceptionalThetaCorrespondencesForG2, Layer 8.

## Layer 8: Classical global theta and the discrete heart parameters

### 8.1 The classical theta lift of a heart globalization

If σ in §1.7 lies in Irr♥(PGSp₆) (the classical locus lifting to split PGSO₈), prove that the global similitude lift of Σ to split PGSO₈ is nonzero and cuspidal, with local components the nonzero local lifts (GS, Lemma 12.5 and proof, pp. 37–38). *Route:* at v₀ use the heart hypothesis; at the other places the components are generic or unramified up to a quadratic twist and their local lifts are nonzero; L^S(s, Σ, std) ≠ 0 at s = 1 for the generic global parameter (boundary nonvanishing of the isobaric transfer); the similitude Rallis inner product formula gives nonvanishing; the Steinberg place has zero lift to PGO₆, so the lift to PGSO₈ is the first occurrence and is cuspidal. *Needs:* §1.7; MetaplecticAutomorphicForms §§3.10, 3.41, 3.42 and the pgsp6-similitude-rallis contract; AutomorphicLFunctionsAndLocalFactors, AL.3 (boundary nonvanishing).

**Checks.**

- Without the heart hypothesis at v₀ the local lift to split PGSO₈ may vanish and the conclusion fails: a σ in the classical spade locus lifts only to the quaternionic tower.
- St_PGSp₆ has zero lift to PGO₆ (its parameter Sym⁶ does not factor through Spin₆), which is what makes PGSO₈ the first occurrence.
- Nonvanishing at s = 1 is a boundary statement (Re s = 1) for a generic parameter, not a central value.

### 8.2 Kret–Shin parameters of discrete heart representations

For every discrete series σ ∈ Irr♥(PGSp₆), prove that there is a discrete Spin₇-valued parameter φ̃ with q ∘ φ̃ the Arthur parameter of the restriction of σ and s ∘ φ̃ the parameter of the triality-theta GL₈-transfer of σ, and that its weak class is unique (GS, Theorem 12.3, p. 36; conclusion of §12.6, p. 38). *Route:* apply the Kret–Shin theorem to Σ of §1.7, whose Steinberg, cohomological and spin-regular hypotheses hold; Kret–Shin Proposition 13.1(4) gives irreducibility of the eight-dimensional spin Galois representation; the global transfer SpinLift(Σ) of §2.3 is isobaric with regular algebraic summands; comparing Galois representations by Chebotarev identifies their sum with s ∘ ρ_Σ, irreducibility forces a single cuspidal summand, and local–global compatibility with N at a place not above ℓ gives the local parameter. *Needs:* §1.7, §8.1, §2.3, §0.6; AutomorphicGaloisRepresentationsPartII, AG2.2, AG2.5 and the kret-shin-gspin-galois contract.

**Checks.**

- The conclusion is existence plus uniqueness of a weak class; two such φ̃ may be non-conjugate (§0.8).
- Irreducibility uses all three hypotheses: Steinberg, cohomological and spin-regular; spin regularity alone does not exclude G₂- or principal-PGL₂-valued monodromy, whose spin restrictions 1 ⊕ 7 and Sym⁶ ⊕ 1 have a repeated zero weight that regularity excludes only in the presence of the other two hypotheses.
- For σ = St_PGSp₆ the parameter is the principal parameter of Spin₇.

### Examples

- Σ with real weight λ₁ = (8, 4, 2) and h = (11, 6, 3) (§1.7), Steinberg at v₁.

### Dependencies

Layers 0–2 and §1.7; MetaplecticAutomorphicForms §§3.10, 3.41, 3.42 and the pgsp6-similitude-rallis contract; AutomorphicLFunctionsAndLocalFactors, AL.3; AutomorphicGaloisRepresentationsPartII, AG2.2, AG2.5 and the kret-shin-gspin-galois contract.

## Layer 9: The extended spin transfer and joint Spin₇-lifts

### 9.1 The spin transfer on every representation of PGSp₆

Using the classical partition Irr(PGSp₆) = Irr♥ ⊔ Irr♠ of MetaplecticAutomorphicForms §3.42, with Irr♣ ⊂ Irr♥ the representations already occurring for PGO₆, define SpinLift(σ) on Irr♥ as the f₂-transform of the lift to PGSO₈ followed by Arthur's transfer to GL₈ (as in §2.2), and on Irr♠ ∪ Irr♣ as the representation of GL₈(F) with parameter φ_τ ⊕ φ_τ∨, where τ is the lift to PGL₄ or PGL₂(D), transferred to PGL₄ by Jacquet–Langlands, determined up to τ ↔ τ∨ (GS, §§12.2–12.3, pp. 34–36). Prove that the two definitions agree on Irr♣.

- On Irr♥ SpinLift is the triality-theta transfer; on Irr♠ ∪ Irr♣ its parameter is φ_τ ⊕ φ_τ∨.
- On Irr♣ the two formulas agree.
- On generic σ it is the SpinLift of §2.2.

**Checks.**

- Replacing τ by τ∨ leaves φ_τ ⊕ φ_τ∨ unchanged.
- The lower-tower formula has dimension 4 + 4 = 8; a formula 4 + 1 + 4 would have dimension 9.
- For nontempered σ the value is the representation attached to the parameter, not the whole induced module.

*Needs:* §2.2; MetaplecticAutomorphicForms §§3.34, 3.42 and the pgsp6-similitude-theta-tables contract; ModularityAndLanglandsExtensions §3.15; EndoscopicTransferAndUnitaryTraceComparison §§4.7a, 10.30.

### 9.2 The lower-tower parameter formula

For σ ∈ Irr♠ ∪ Irr♣ with PGL₄-datum τ (up to duality) and φ_τ valued in SL₄(ℂ) = Spin₆(ℂ), prove that q ∘ h ∘ φ_τ ≅ 1 ⊕ Λ²φ_τ is the Arthur parameter of the restriction of σ, and s ∘ h ∘ φ_τ ≅ φ_τ ⊕ φ_τ∨ is the parameter of SpinLift(σ) (GS, §§12.3(b)–12.4, pp. 35–36). *Needs:* §9.1, §0.1; SpinRepresentations, Layer 6; MetaplecticAutomorphicForms, pgsp6-similitude-theta-tables contract; EndoscopicTransferAndUnitaryTraceComparison §10.30.

**Checks.**

- det φ_τ = 1, and Λ²φ_τ is six-dimensional and orthogonal, so 1 ⊕ Λ²φ_τ is a seven-dimensional orthogonal parameter.
- For φ_τ = Sym³ (principal SL₂ of SL₄), Λ² Sym³ = Sym⁴ ⊕ Sym⁰, so the standard parameter is 1 ⊕ 1 ⊕ Sym⁴, which is not discrete.
- Treat both the split tower and the quaternionic tower; in the quaternionic tower τ comes from PGL₂(D) through Jacquet–Langlands.

### 9.3 Parameters of non-discrete heart representations

For each non-discrete σ ∈ Irr♥(PGSp₆), construct a Spin₇-valued parameter from the correspondence for the Levi of its inducing data and prove simultaneously that its q-image is the Arthur parameter of the restriction of σ and its s-image is the parameter of SpinLift(σ) (GS, proof of Theorem 12.3, second bullet, p. 36). In the C₃ numbering α₁, α₂, α₃ (α₃ long) treat the seven proper standard Levis indexed by ∅, {α₁}, {α₂}, {α₃}, {α₁, α₂}, {α₁, α₃}, {α₂, α₃}, with their actual central quotients (the maximal ones of types GL₃, GL₂ × PGL₂ quotient, GL₁ × PGSp₄ quotient), normalized induction and Langlands quotients. *Route:* for tempered σ, R-group constituents and the lift of each to PGSO₈; for nontempered σ, positive standard-module exponents through theta; the vector and spin branching on each dual Levi, including the GSp₄ normalization of ModularityAndLanglandsExtensions §3.5. *Needs:* §9.1; SmoothRepresentationsOfLocalGroups, SR.2–SR.3; ModularityAndLanglandsExtensions §3.5; MetaplecticAutomorphicForms, pgsp6-similitude-theta-tables contract; EndoscopicTransferAndUnitaryTraceComparison §10.30.

**Checks.**

- There are 2³ − 1 = 7 proper standard Levis; checking only the Siegel Levi GL₃ does not cover the Klingen Levi GL₁ × PGSp₄.
- For the Borel Levi and the trivial representation of PGSp₆, the parameter is the image of diag(|w|^(1/2), |w|^(−1/2)) under the principal SL₂ of Spin₇, with q-image Sym⁶ evaluated there and s-image 1 ⊕ Sym⁶ evaluated there.
- The Levi of P₃ is GL₃ acting on Λ² of the Lagrangian, so its dual embedding into Spin₇ is not the block-diagonal GL₃ of SO₇ composed with the identity on lattices; the coordinate change of ExceptionalThetaCorrespondencesForG2, Layer 0 (*The 15-dimensional PGSp₆ Jordan model*) is used.

### 9.4 Existence and weak uniqueness for all of PGSp₆

Prove that for every σ ∈ Irr(PGSp₆(F)) there is a unique class in Φ_w(PGSp₆) whose q-image is the Arthur parameter of the restriction of σ and whose s-image is the parameter of SpinLift(σ) (GS, Theorem 12.3 and proof, p. 36). *Route:* §9.2 on Irr♠ ∪ Irr♣, §9.3 on the non-discrete heart, §8.2 on the discrete heart; uniqueness is the definition of Φ_w. *Needs:* §§9.2–9.3, §8.2, §0.6.

**Checks.**

- The statement is a weak class; it does not assert acceptability of Spin₇.
- For σ = St the class is that of the principal parameter.
- For σ and σ ⊗ χ ∘ sim the classes differ by χ (§§10.3–10.4), so the map is not constant on twist orbits.

### Examples

- σ = St_PGSp₆: heart, discrete, principal parameter.
- σ in the lower tower with τ = St_PGL₄: standard parameter 1 ⊕ 1 ⊕ Sym⁴, spin parameter Sym³ ⊕ Sym³.

### Dependencies

Layers 0, 2 and 8; SpinRepresentations, Layer 6; MetaplecticAutomorphicForms §§3.34, 3.42 and the pgsp6-similitude-theta-tables contract; ModularityAndLanglandsExtensions §§3.5, 3.15; SmoothRepresentationsOfLocalGroups, SR.2–SR.3; EndoscopicTransferAndUnitaryTraceComparison §§4.7a, 10.30.

## Layer 10: The weak PGSp₆ correspondence and its fibres

### 10.1 The weak correspondence

Define L_w : Irr(PGSp₆(F)) → Φ_w(PGSp₆) by L_w(σ) = the weak class of §9.4 (GS, Theorem 12.6, p. 38).

- q ∘ L_w(σ) is the Arthur parameter of the restriction of σ to Sp₆(F), and s ∘ L_w(σ) is the parameter of SpinLift(σ).
- These two identities characterize L_w.
- For π generic discrete series in Irr♦(G₂), L_w(θ(π)) is the weak class of i ∘ L(π) (§5.4).

**Checks.**

- L_w(St_PGSp₆) is the weak class of the principal parameter.
- A lower-tower σ maps to the weak class of h ∘ φ_τ (§9.2).
- An unramified quadratic twist that changes the spin parameter changes L_w(σ) although it leaves the standard parameter unchanged.

*Needs:* §9.4.

### 10.2 Temperedness and discreteness of the weak parameter

Prove that L_w carries tempered representations to weak classes of bounded parameters and discrete series to weak classes of discrete parameters, and that boundedness and discreteness are constant on weak classes (GS, Theorem 12.6, p. 38). *Route:* boundedness is detected by the faithful representation q ⊕ s; discreteness of a Spin₇-valued parameter is read from its centralizer and must be shown to depend only on the q- and s-images, by a centralizer comparison. *Needs:* §10.1, §§9.2–9.3, §8.2, §0.7.

**Checks.**

- The statement is the forward implication for representations; the converse is not asserted.
- The principal parameter is discrete; its weak class contains only discrete parameters.
- A parameter through h : Spin₆ → Spin₇ with φ_τ = Sym³ has q-image 1 ⊕ 1 ⊕ Sym⁴, which factors through a proper Levi, so it is not discrete.

### 10.3 Quadratic twists in the heart

For σ ∈ Irr♥ and quadratic χ, prove SpinLift(σ ⊗ χ ∘ sim) ≅ SpinLift(σ) ⊗ χ ∘ det, hence L_w(σ ⊗ χ ∘ sim) = χ · L_w(σ) (GS, proof of Theorem 12.6, pp. 38–39). *Route:* the similitude character of PGSO₈ modulo squares is trivial on f₁(SO₈(F)) and pulls back along f₂ to the spinor-norm character (§2.1); the twisting rule of the classical lift and of the SO₈ correspondence. *Needs:* §10.1, §2.1; MetaplecticAutomorphicForms, pgsp6-similitude-theta-tables contract; EndoscopicTransferAndUnitaryTraceComparison §10.30.

**Checks.**

- The standard parameter is unchanged because χ ∘ sim is trivial on Sp₆(F).
- Pulling back along f₁ instead of f₂ would give the trivial character and no spin twist, contradicting the eigenvalue sign change at an unramified χ.
- χ² = 1 gives an involution on the heart.

### 10.4 Quadratic twists in the lower towers

For σ ∈ Irr♠ ∪ Irr♣ and quadratic χ, prove that the PGL₄-datum of σ ⊗ χ ∘ sim is τ ⊗ χ ∘ det (with the reduced norm on GL₂(D) before Jacquet–Langlands), so that (φ_τ ⊗ χ) ⊕ (φ_τ ⊗ χ)∨ = (φ_τ ⊕ φ_τ∨) ⊗ χ and Λ²(φ_τ ⊗ χ) = Λ²φ_τ; hence L_w(σ ⊗ χ ∘ sim) = χ · L_w(σ) (GS, proof of Theorem 12.6, final paragraph, p. 39). *Needs:* §9.2, §10.1; MetaplecticAutomorphicForms, pgsp6-similitude-theta-tables contract; EndoscopicTransferAndUnitaryTraceComparison §4.7a.

**Checks.**

- Λ²(φ_τ ⊗ χ) = χ² Λ²φ_τ = Λ²φ_τ because χ² = 1; for a character μ with μ² ≠ 1 the standard parameter would change and the statement is not asserted.
- (φ_τ ⊗ χ)∨ = φ_τ∨ ⊗ χ⁻¹ = φ_τ∨ ⊗ χ.
- On Irr♣ the formula agrees with §10.3.

### 10.5 Surjectivity and restriction to classical packets

Prove that L_w is surjective and that for every weak class [φ̃], restriction gives a surjection L_w⁻¹([φ̃]) → Π_(q∘φ̃)(Sp₆)/PGSp₆(F) (GS, Theorem 12.7(i) and proof, p. 39). *Route:* a representation of Sp₆(F) with parameter q ∘ φ̃ has trivial central character (the parameter lifts to Spin₇), so it extends to PGSp₆; its weak class has the same q-image as φ̃; two Spin₇-lifts of q ∘ φ̃ differ by a quadratic character up to conjugacy; twist by it (§§10.3–10.4). *Needs:* §§10.1, 10.3, 10.4; ModularityAndLanglandsExtensions §3.19.

**Checks.**

- The target is the set of PGSp₆(F)-orbits, not individual Sp₆-constituents.
- For [φ̃] principal the fibre is {St_PGSp₆} and the restriction is the Steinberg of Sp₆.
- Surjectivity is onto weak classes; it does not give surjectivity onto Spin₇-conjugacy classes.

### 10.6 Constancy on discrete diamond Xu packets

Let σ be a discrete series whose parameter does not factor through Spin₆ (the classical diamond locus) and X the one of Xu's packets containing it. Prove that L_w is constant on X (GS, proof of Theorem 12.7(ii), pp. 39–40). *Route:* globalize σ with a Steinberg place (§1.7); the global component group is trivial, so any σ′ ∈ X can replace σ at v₀ by Xu's multiplicity formula; both global PGSO₈ lifts are nonzero (§8.1) and their GL₈-transfers are nearly equivalent, hence equal by strong multiplicity one; the standard parameters already agree. *Needs:* §1.7, §8.1, §10.1; ModularityAndLanglandsExtensions §3.27; AutomorphicLFunctionsAndLocalFactors, AL.3 (isobaric strong multiplicity one).

**Checks.**

- One-place substitution is valid here because the global component group is trivial (Steinberg place), unlike §6.5.
- For σ = St the set X is a singleton.
- Constancy of q ∘ L_w on X is automatic; the content is constancy of s ∘ L_w.

### 10.7 Constancy on lower-tower Xu packets

If a discrete parameter factors through Spin₆ and X is one of Xu's packets in the corresponding lower-tower locus, prove that all σ ∈ X have the same φ_τ ⊕ φ_τ∨ and hence the same L_w (GS, proof of Theorem 12.7(ii), p. 39), treating split and quaternionic lifts and the overlap with the heart separately, and including the case where the data of two members differ by the outer involution of the orthogonal group. *Needs:* §9.2, §10.1; ModularityAndLanglandsExtensions §3.19; MetaplecticAutomorphicForms, pgsp6-similitude-theta-tables contract; EndoscopicTransferAndUnitaryTraceComparison §§4.7a, 10.30.

**Checks.**

- Equality of the six-dimensional Λ²φ_τ does not determine φ_τ ⊕ φ_τ∨: for an unramified φ_τ with Frobenius eigenvalues a, b, c, (abc)⁻¹ in general position and χ the unramified quadratic character, φ_τ and φ_τ ⊗ χ have the same Λ² (χ² = 1) while the eight eigenvalues of φ_τ ⊕ φ_τ∨ change sign; the comparison of packets is therefore made on φ_τ itself.
- An outer involution exchanges φ_τ and φ_τ∨, which leaves φ_τ ⊕ φ_τ∨ unchanged.
- On the heart overlap the formula agrees with §9.1.

### 10.8 Reduction of constancy on packets to discrete data

For every proper Levi of PGSp₆ in the list of §9.3, prove that normalized induction of Xu packets and passage to Langlands quotients are compatible with the two transfers defining L_w, so that constancy on discrete packets of the Levi implies constancy on each of Xu's tempered induced packets and on each of Xu's nontempered Langlands-quotient packets (GS, opening of the proof of Theorem 12.7(ii), p. 39). *Needs:* §9.3, §10.6, §10.7; ModularityAndLanglandsExtensions §3.19; SmoothRepresentationsOfLocalGroups, SR.2.

**Checks.**

- The reduction covers nongeneric constituents of reducible inductions as well as generic ones.
- A reducible tempered induction from the Siegel Levi has all its constituents in one of Xu's packets, with one weak class.
- For the Borel Levi with unramified data each of these packets is a singleton and constancy is trivial.

### 10.9 The fibres of L_w

Prove that every fibre of L_w is a union of Xu packets, and that for φ ∈ Φ♦_ds(G₂) the fibre over the weak class of i ∘ φ is the single distinguished X*(φ) (GS, Theorem 12.7(ii) and final paragraph, pp. 39–40; §12.8, p. 40). *Route:* §§10.6–10.8 for unions; for i ∘ φ, quadratic rigidity (§0.5) shows its weak class contains one Spin₇-class, and §6.2 with §6.6 excludes other packets. *Needs:* §§10.6–10.8, §0.5, §5.3, §6.6.

**Checks.**

- A general fibre may contain several Xu packets; the singleton conclusion is only for the diamond G₂ classes.
- For φ principal the fibre is {St_PGSp₆}.
- No enhanced correspondence for PGSp₆ is asserted outside the diamond orbits of §7.3.

### Examples

- The fibre of L_w over the principal class is {St_PGSp₆}.
- A lower-tower class with τ = St_PGL₄: q-image 1 ⊕ 1 ⊕ Sym⁴, s-image Sym³ ⊕ Sym³.

### Dependencies

Layers 0, 1 (§1.7), 2, 5, 6, 8 and 9; ModularityAndLanglandsExtensions §§3.19, 3.27; MetaplecticAutomorphicForms, pgsp6-similitude-theta-tables contract; AutomorphicLFunctionsAndLocalFactors, AL.3; SmoothRepresentationsOfLocalGroups, SR.2; EndoscopicTransferAndUnitaryTraceComparison §§4.7a, 10.30.

## Downstream consumers

Roadmaps on automorphic forms on G₂ and on the arithmetic of PGSp₆ (Galois representations of Siegel modular forms of genus three, spin L-functions, exceptional theta lifts of automorphic forms) consume the G₂ correspondence of §7.1, the gamma-factor characterization of §3.13, the global–local compatibility of §3.15, the spin transfer of §§2.2–2.3 and §9.1, and the weak correspondence of §10.1 with its fibres.

## Worked examples

- **The Steinberg chain.** St_G₂ has the principal parameter φ with v ∘ φ = Sym⁶ and S_φ = 1; θ(St_G₂) = St_PGSp₆; KS(St_PGSp₆) = {i ∘ φ}; SpinLift(St_PGSp₆) has parameter 1 ⊕ Sym⁶; L_w(St_PGSp₆) is the weak class of i ∘ φ and its fibre is {St_PGSp₆}.
- **The subregular fibre.** φ trivial on W_F and subregular on SL₂: v ∘ φ = 1 ⊕ Sym² ⊕ Sym², S_φ = S₃, L⁻¹(φ) = {π_gen[1], π_sc[1], π_deg[1]} with labels 1, sgn, std₂; θ(π_gen[1]) = I₃(St_PGL₃)_gen is tempered and not discrete, and the spin parameter of its SpinLift is Sym² ⊕ Sym² ⊕ 1 ⊕ 1.
- **The unacceptable pair.** On Γ = μ₄ × μ₄, r through SU₄ with weights (1,0), (1,2), (0,1), (2,1) and r′ = b² · r are elementwise conjugate in Spin₇ and not conjugate; they have the same weak class.
- **A spin-regular weight.** λ₁ = (8, 4, 2), h = (11, 6, 3), spin weights ±10, ±7, ±4, ±1.

## Notes on the sources

The statements above differ from the printed sources in the following places; each statement in this roadmap is the corrected one.

- GS Main Theorem (vi), p. 4, places generic discrete series of PGSp₆ in the middle of the spin diagram; π_gen[1] has the tempered non-discrete partner I₃(St_PGL₃)_gen (HD, Theorems 8.5 and 15.2), so §5.6 uses generic tempered representations, and §5.5 treats the Siegel-induced partners separately from Proposition 5.2.
- GS Main Theorem (ix), p. 4, closes a parenthesis before the tensor product; §3.12 uses γ(s, (v ∘ L(π)) ⊗ φ_τ, ψ), as on GS p. 13.
- GS Proposition 3.2, pp. 14–16, constructs the enhancements from a centralizer of order three; for self-dual φ_τ the component group is S₃ and §4.3 gives the separate argument with the two extensions τ± and the two-dimensional character.
- GS Theorem 9.1(ii), p. 27, is worded for all G₂ representations; the assigned PGSp₆ enhancements exist only on the diamond discrete range, which is the range of §7.4.
- GS Proposition 11.6, p. 33, deduces convergence along a subsequence of an indexed sum from weak containment; the corrected statement (membership in the Fell closure of the set of summands, then isolation) is SmoothRepresentationsOfLocalGroupsPartII, SRU.1.9–SRU.1.10, used in §§1.4 and 1.6.
- The proof of GS Proposition 4.1(i), pp. 18–19, cancels all places other than the Steinberg, supercuspidal and repeated places after a globalization (Proposition 10.7) that allows one further uncontrolled finite place; §2.4 states the additional step.
- The proof of GS Lemma 12.4, p. 37, asks Shin's Theorem 5.8 for spin-regular real components, which that theorem does not provide; §1.7 uses Shin's Corollary 4.12 along the explicit weights t(8, 4, 2).
- The proof of GS Lemma 8.3, p. 25, applies GS20 Theorem 1.1 over a totally real field with two places isomorphic to F; GS20 states its Theorem 1.1 over ℚ, the restriction coming from the integral representation of the spin L-function used there (GS20, §1, p. 2). §6.5 uses the totally real version as a supplier statement of ExceptionalThetaCorrespondencesForG2.
- The proof of HKT Lemma 4.6 (arXiv v3, p. 21) treats every nonzero spinor as having stabilizer conjugate to G₂(ℂ); isotropic spinors do not, and §0.5 chooses a nonisotropic invariant spinor using complete reducibility.
- The proof of GS Lemma 10.1, p. 27, concludes rank exactly two where rank at most two follows; ranks zero and one are excluded by the same low-rank argument (ExceptionalThetaCorrespondencesForG2, Layer 9, *Tempered lifts have quaternion relative models*).
- Minor misprints: in GS §3.3, p. 11, the definite octonion algebra is over the global field k; in GS §4.4, p. 19, the local representations in the functional equation are those of PGSp₆; in GS §1.2, p. 5, the appendices are §10 and §11, and the author of the conjugacy theorem is spelled as in the bibliography; GS Theorem 2.1(ii), not (i), is the dichotomy (pp. 8, 10); in Shin's proof of Theorem 5.8 (author PDF p. 27) item 4.12 is a corollary.

## References

- [GS] W. T. Gan and G. Savin, *The local Langlands conjecture for G₂*, Forum of Mathematics, Pi 11 (2023), e28; doi:10.1017/fmp.2023.27. Main Theorem pp. 3–4; Lemma 2.4 pp. 9–10; §§3–9 pp. 10–27; Appendices A–C pp. 27–40.
- [HD] W. T. Gan and G. Savin, *Howe duality and dichotomy for exceptional theta correspondences*, Invent. Math. 232 (2023); arXiv:2102.00372 (v1 read; theorem numbers as cited). Theorems 8.2, 8.5, 15.1, 15.2; Lemmas 13.4, 13.8.
- [GF] W. T. Gan and G. Savin, *A theory of γ-factors for G₂ × GL_r*, arXiv:2308.12561 (v1). Definition 2.1, Proposition 2.3, Theorem 2.4.
- [GS20] W. T. Gan and G. Savin, *An exceptional Siegel–Weil formula and poles of the Spin L-function of PGSp₆*, Compositio Math. 156 (2020); arXiv:1904.06000 (v1 read). Theorem 1.1.
- [C] G. Chenevier, *Subgroups of Spin(7) or SO(7) with each element conjugate to some element of G₂ and applications to automorphic forms*, Doc. Math. 24 (2019), 95–161. Theorem E p. 100; Theorem 6.4 p. 148; Corollary 6.8 pp. 149–150.
- [CG] G. Chenevier and W. T. Gan, *Spin(7) is unacceptable*, arXiv:2303.15897 (v1); Peking Math. J. 8 (2025). Lemma 3.10, Proposition 3.12, Example 1, Corollaries 4.6 and 4.8.
- [HKT] M. Harris, C. Khare and J. Thorne, *A local Langlands parameterization for generic supercuspidal representations of p-adic G₂*, Ann. Sci. ENS 56 (2023); arXiv:1909.05933 (v3 read). Lemma 4.6.
- [KS] A. Kret and S. W. Shin, *Galois representations for general symplectic groups*, J. Eur. Math. Soc. 25 (2023), 75–152. Theorem A; Proposition 13.1.
- [Shin] S. W. Shin, *Automorphic Plancherel density theorem*, Israel J. Math. 192 (2012), 83–120 (author PDF). Definition 3.5, Corollary 4.12, Theorem 5.8.
- [SV] Y. Sakellaridis and A. Venkatesh, *Periods and harmonic analysis on spherical varieties*, Astérisque 396 (2017); arXiv:1203.0039. Theorem 16.3.2, Remark 16.4.1.
- [ILM] A. Ichino, E. Lapid and Z. Mao, *On the formal degrees of square-integrable representations of odd special orthogonal and metaplectic groups*, Duke Math. J. 166 (2017); arXiv:1404.2909. Lemma A.2, Proposition A.5.
