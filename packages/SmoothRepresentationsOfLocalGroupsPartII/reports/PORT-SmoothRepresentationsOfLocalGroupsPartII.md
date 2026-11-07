# PORT-SmoothRepresentationsOfLocalGroupsPartII

Branch `roadmap/smooth-representations-of-local-groups-part-ii`, head commit `d05d791` (one commit on top of `a0ad405`, message `SmoothRepresentationsOfLocalGroupsPartII: roadmap (README, Suggested.lean, metadata)`). Files: `TauCetiRoadmap/SmoothRepresentationsOfLocalGroupsPartII/README.md`, `TauCetiRoadmap/SmoothRepresentationsOfLocalGroupsPartII/Suggested.lean`, `TauCetiRoadmap/SmoothRepresentationsOfLocalGroupsPartII/metadata.toml`. Nothing outside the folder changed.

## Build

`lake build TauCetiRoadmap.SmoothRepresentationsOfLocalGroupsPartII.Suggested`:

```text
⚠ [8959/8959] Built TauCetiRoadmap.SmoothRepresentationsOfLocalGroupsPartII.Suggested (4.5s)
Build completed successfully (8959 jobs).
```

Warnings: 7, all `declaration uses `sorry`` (lines 78, 90, 129, 140, 153, 166, 182: the seven theorems). No other warning or error.

## Gate

```text
gate SmoothRepresentationsOfLocalGroupsPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

Dependency check (`gate --depcheck … --movable`):

```text
depcheck: 237 roadmaps, 2104 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line.

## Draft pull request body

Smooth representations of local groups, part II builds the unitary representation theory that sits on top of the smooth theory of SmoothRepresentationsOfLocalGroups: functions of positive type on an arbitrary topological group and their GNS translation action on Tau Ceti's Kolmogorov space, Hilbert sums, the unitary dual as a quotient of normalised positive-type functions, coefficient weak containment, Godement's integrated criterion, Raikov's theorem and the Fell topology, with the Fell-closure and isolated-summand theorems that Gan–Savin and Gan–Ichino use; then the comparison with the smooth category (unitary structures, Hilbert completion, admissibility of irreducible unitary representations, the smooth/unitary dual bijection), limits of distribution characters (Miličić, Tadić), the finite Steinberg representation, Howe–Moore over nonarchimedean local fields and the isolation of Steinberg and supercuspidal representations; and finally the split and unramified spherical unitary dual (real Satake parameters, the generic unitary region, its half-integral classification type by type, the generic temperedness test, nonsplit unramified transfer, Aubert duality, Kazhdan–Lusztig parameters and the spherical complementary series with their extraneous points). We want it because the Ramanujan–Arthur arguments over function fields, local–global comparisons for metaplectic groups and the G₂ local Langlands correspondence consume exactly these local unitary inputs, and because the analytic layers (positive type, GNS, Fell topology) are general locally-compact-group material that no roadmap owns. `Suggested.lean` states the seven headline theorems statable at the pins (GNS existence, pure-iff-irreducible, weak-star compactness of the subunit positive-type ball, Godement, Raikov and the single-coefficient approximation in single and family form) with the five simple definitions they need; the module docstring names the headlines that need the unitary-dual quotient, the reductive smooth categories or Springer parameters and are therefore not statable yet.

## Suppliers that are still pull requests

By name: SmoothRepresentationsOfLocalGroups, NoncompactQuantumSymmetry, CStarAlgebras, LieHighestWeightPartII, SpringerResolutionAndCharacteristicCycles, EndoscopicTransferAndUnitaryTraceComparison, ExcursionOperatorsAndSpectralActionPartII, AutomorphicLFunctionsAndLocalFactors, AutomorphicSpectralTheory. Scope-only mentions (no target consumed): HilbertModules, FactorRigidity, GeometryOfNumbersAndQuadraticArithmetic. Downstream consumers named, all pull requests: GlobalShtukasAndFunctionFieldLanglandsPartII, MetaplecticAutomorphicFormsPartII, LocalLanglandsCorrespondenceForG2. On main: ReductiveGroups, ReductiveGroupsPartII, OperatorTheory/PolarDecomposition, BanachSpaceTheory, OperatorAlgebraDynamics, RepresentationTheory/LieHighestWeight, RepresentationTheory/CompactGroups, RepresentationTheory/CharacterTheory (the pinned GL₂ Steinberg declarations). CStarAlgebras and HilbertModules are open pull requests adding new roadmap folders and are not in the merge order; the dependency check accepts them (0 problems). All merge-order suppliers precede this roadmap (line 274): AutomorphicLFunctionsAndLocalFactors 79, AutomorphicSpectralTheory 81, EndoscopicTransferAndUnitaryTraceComparison 137, NoncompactQuantumSymmetry 144, ExcursionOperatorsAndSpectralActionPartII 190, FactorRigidity 221, LieHighestWeightPartII 229, SpringerResolutionAndCharacteristicCycles 247, SmoothRepresentationsOfLocalGroups 22.

Every cross-roadmap citation was re-resolved at this port: the 48 SmoothRepresentationsOfLocalGroups slugs cited (`corner-irreducibles`, `hecke-module-equivalence`, `unramified-characters`, `compact-induction`, `geometric-lemma`, `iwahori-components`, …) each occur as a target label at that roadmap's open head; SR.3a.1, SR.3.3, SR.3.4, SR.4.1–4.2, SR.5.3 exist as headings there; ReductiveGroupsPartII RG2.0, RG2.3–RG2.5 and the slugs `hyperspecial-vertices`, `iwasawa-decomposition`, `reductive-quotient-of-special-fibre` exist on main; OperatorTheory/PolarDecomposition PD-B24–PD-B36 and "Part B" exist on main; BanachSpaceTheory B5 and OperatorAlgebraDynamics D1–D2 exist on main; RepresentationTheory/LieHighestWeight Layers 0, 2, 4 exist on main; CStarAlgebras C2 exists at its open head; NoncompactQuantumSymmetry Layer 0 ("shared group C*-algebra and weak-support comparisons"), M0, M0a exist at its open head. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. The two `TauCeti.*` modules imported and the five Tau Ceti files named in the supplier contracts exist in the pinned Tau Ceti checkout of this worktree's manifest.

## What changed from the package

**Suggested.lean**: byte-identical to the accepted package (14 declarations: 7 definitions with real bodies, 7 sorry'd theorems). Nothing moved from the Lean to the README; nothing was added (the remaining headlines are not statable at the pins, as the docstring says, and Milman's converse is a theorem about free variables, not a headline). `metadata.toml` is identical (`topic = "math.RT"`).

**README** (shape and review notes):

- Source line locators (`BHV line 11667`, `CH26 lines 502, 514 and 534–556`, …), 152 in all, removed; every citation keeps its section, theorem and page. "Additional inputs for this route are located at …" became "Additional inputs for this route: …".
- The ten "The acceptance signatures are …" lines became prose naming the `Suggested.lean` form of the statement or definition; every one of the 14 Lean names still appears in the README once, and the gate's `readme-ids-missing` is 0.
- The fifteen "What X must provide (gap:slug): Supply …" lines became named contracts ("**The tempered-local-topology contract.** SmoothRepresentationsOfLocalGroups must supply …"), with the names the body already used (integrated-L¹ GNS, σ-finite duality, polynomial-identity, bounded-trace, finite-product Fell-dual, triple-centralizer, graded-open-orbit, orbit-tables, coherent equivariant K-theory, induced-character continuity, semisimple-parameter, Shahidi local-coefficient, Heiermann–Muić, Whittaker multiplicity-one). The three inline `gap:` references in 3.1 and 7.2 now name the contract. No `gap:` string remains.
- Supplier headings `From TauCetiRoadmap.RepresentationTheory.LieHighestWeight` and `From TauCetiRoadmap.OperatorTheory.PolarDecomposition` now carry the folder path of the roadmap they name.
- Review note F01: the 2.1 locator now reads "(Ber92, Definition 27, PDF p. 83, and Proposition 40, PDF p. 85)"; the 5.18, 5.19 and 5.21 locators already carried the repaired pages at the accepted head.
- Review note F02: seven references added under `## References` (Ber74, Mi73, Rodier73, Rodier81, KS71, Steinberg68, Borel79; BM94 was present), each cited by key at its use (2.6, 3.3, 3.7 and 5.5, 4.4, 5.8, 6.1). Rodier's heredity (3.7, 5.5) is the 1973 Whittaker-models paper and the principal-series decomposition (4.4) the 1981 paper, so two keys rather than one.
- Review note F03: the 4.8 route now covers the noncompact-centre clause (finitely many twists σ ⊗ ψ with ψ ∈ Ψ(G) trivial on Z(G), since Z(G)G° has finite index; a Hecke element f with σ(f) ≠ 0 and (σ ⊗ ψ)(f) = 0 on the other twists by the density theorem; {x ∈ Ĝ_ω : rep x (e ∗ f) ≠ 0} = {[σ]}), and the *Needs:* line gains SR.1 / corner-irreducibles and SR.1 / hecke-module-equivalence.
- Review note F04: the 0.4 Check reads "the off-diagonal coefficient of (−1, 1) is the constant −1"; sections 5.25–5.29 are renumbered 5.24–5.28 and every internal reference (How to read the build, the *Needs:* lines of 5.4, 5.5, 5.8–5.11, 5.26, 5.28, 6.2, 7.13 and the Layer 5 Dependencies) follows; the 7.10 weight symbol had already been replaced by the vector direction v_r at the accepted head.
- Scope: one clause added recording that GeometryOfNumbersAndQuadraticArithmetic §4.2.1 owns the Howe–Moore theorem for connected noncompact almost-simple real Lie groups with finite centre, so that SRU.4.5 (nonarchimedean) has a named sibling owner.

**Duplication sweep** (by object, main and the 458 open heads through `roadmaps grep`, plus the sibling checkouts): coefficient weak containment, the Fell topology on the group unitary dual, Raikov, Godement, the positive-type GNS action, Howe–Moore over nonarchimedean fields, the general Aubert involution, Kazhdan–Lusztig triples and the spherical unitary classification have no other owner. Overlaps found and already recorded in Scope: NoncompactQuantumSymmetry Layer 0 defines σ ≺ ρ by C*-kernel inclusion and owns the comparison with coefficient weak containment; HilbertModules H5 owns the pure-state unitary dual of a C*-algebra; FactorRigidity's Fell topology is on bimodules; AutomorphicSpectralTheory §7.0b owns the GLₙ unitary classification; the weak containment of the trivial representation in the regular one used by HeisenbergImprimitivity, CompactQuantumMetricSpaces and OperatorKTheory is consumed from OperatorAlgebraDynamics D2, not defined there. Nothing was removed; one Scope clause (Howe–Moore, real groups) was added. Ownership against open pull requests whose files the brief does not give was checked only through the `roadmaps grep` tool.

## Signature audit

A scratch file with `#check @name` for all 14 declarations (importing the built module) elaborated with exit 0 and no `sorry` in any printed type. Compared with the README: `IsStronglyContinuous`, `IsTopologicallyIrreducible`, `ptCoeff`, `WeaklyContainedIn`, `WeaklyContainedInFamily` carry only `[Group G] [TopologicalSpace G]` and the inner-product-space binders (0.1, 0.4, 1.1: no local compactness required); `IsPositiveType` and `positiveTypeOne` carry `[Group G]` resp. `[Group G] [TopologicalSpace G]` (0.3); `exists_gnsRep` and `mem_extremePoints_positiveTypeOne_iff` carry `[IsTopologicalGroup G]` (0.5, 0.7: topological group, no local compactness); `isCompact_positiveTypeSubunit_integrals` and `godement` carry `[T2Space G] [LocallyCompactSpace G] [SecondCountableTopology G] [MeasurableSpace G] [BorelSpace G] [μ.IsHaarMeasure]` (1.3, 1.4); `raikov` carries `[T2Space G] [LocallyCompactSpace G]` and the Haar binders without second countability (1.5); the two approximation theorems carry `[T2Space G] [LocallyCompactSpace G]` and `[CompleteSpace]` on every Hilbert space (1.6). Nothing changed.

## Adversarial pass

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `IsPositiveType` kernel convention vs BHV C.4.1 | x_a = c_a, M_{ab} = φ(a⁻¹b) | star x ⬝ᵥ M x = Σ conj(c_a) c_b φ(a⁻¹b) = Σ_{i,j} c_i conj(c_j) φ(g_j⁻¹ g_i) (a ↔ j, b ↔ i); for φ = c(π,v): = ‖Σ_b c_b π(b)v‖² ≥ 0 | matches BHV, second-linear inner product | none |
| `exists_gnsRep` translation action | a, b, g arbitrary; φ ≡ 0; G trivial | ⟪Φ(ga), Φ(gb)⟫ = φ((ga)⁻¹gb) = φ(a⁻¹b) (unitary); π(g)π(h)Φ(a) = Φ(gha); c(π,Φ(1))(g) = ⟪Φ(1),Φ(g)⟫ = K(1,g) = φ(g); φ = 0: Kolmogorov space 0, π = 0 is unitary on it | holds | none |
| `exists_gnsRep` strong continuity | ‖Φ(ga) − Φ(a)‖² | = 2φ(1) − 2 Re φ(a⁻¹ga) → 0 as g → 1 by continuity of φ and of conjugation (`IsTopologicalGroup`) | hypotheses sufficient | none |
| `mem_extremePoints_positiveTypeOne_iff` | G trivial; G = ℤ/2 | trivial: P₁ = {1}, extreme, GNS 1-dim irreducible; ℤ/2: φ = (1,t), kernel [[1,t],[t,1]] rank 2 for \|t\| < 1 ⇒ GNS 2-dim, reducible, t = ±1 extreme ⇒ 1-dim | both directions | none |
| `godement` integrand vs ⟨φ, f* ∗ f⟩ | f ∈ C_c, left Haar, f*(y) = Δ(y⁻¹) conj f(y⁻¹) | (f* ∗ f)(x) = ∫ conj f(y) f(yx) dy (substitution y ↦ y⁻¹ absorbs Δ); ⟨φ, f*∗f⟩ = ∫∫ φ(y⁻¹x) conj f(y) f(x) dx dy = Lean integrand f x · star(f y) · φ(y⁻¹x) | same as BHV C.5.3 | none |
| 1.3 Check, affine group | g = (c,d), E ⊆ G | right translation (a,b) ↦ (ac, b+ad) has Jacobian [[c,0],[d,1]], det c; da db/a² ↦ da db/(c a²), so ∫ f(xg⁻¹) dμ = c⁻¹ ∫ f, Δ(c,d) = c⁻¹; f*(2,0) = Δ(½,0)·f(½,0) = 2; other convention ½; Δ(g⁻¹)Δ(g) = 1 | as stated | none |
| `isCompact_positiveTypeSubunit_integrals` | G trivial, μ = c·δ | Lp ℂ 1 μ ≅ ℂ, image = {f ↦ c f t : t ∈ [0,1]}, compact; general: image ⊆ ∏_f closedBall(0,‖f‖₁) (Tychonoff), closed by Godement + σ-finite duality | holds | none |
| `raikov` filter form | l = ⊥; constant φ | ⊥: both sides true; constant: both sides hold iff φ = ψ pointwise, equal in C(G,ℂ) | equivalent to BHV C.5.6 net form | none |
| `exists_coeff_approx_of_weaklyContainedIn` with π = 0 | H' = 0, σ irreducible, v ≠ 0, Q = {1} | hweak needs \|c(σ,v)(1) − 0\| = ‖v‖² < ε for all ε, false ⇒ vacuous; conclusion would need a unit vector of 0 | consistent | none |
| 1.6 counterexample | ℤ/2, σ regular, δ₀; family 1, sgn | c(σ,δ₀) = (1,0); c(1,1) = (1,1); c(sgn,1) = (1,−1); (1,0) is the midpoint, not a member | reducible σ fails single-coefficient form | none |
| 1.1 Check, ℤ regular | v = (2N+1)^(−1/2) 1_{[−N,N]}, k = 1, N = 5 | ⟨v, λ(1)v⟩ = 2N/(2N+1) = 10/11 → 1; no invariant vector in ℓ²(ℤ) | weak containment, not containment | none |
| 0.1 Check 3 | ℤ_p on ℓ²(ℕ), g = p^m, n = m+1 | χ_{m+1}(p^m) = e^{2πi/p}; ‖π(p^m) − 1‖ ≥ \|e^{2πi/p} − 1\| = 2 sin(π/p) = 2 (p = 2), √3 (p = 3) | strongly but not norm continuous | none |
| 0.3 Check 6, S₃ | v on the axis fixed by (12); v on the axis of (13) | Gram at {e,(12)}: [[1,1],[1,1]], q(1,1) = 4, q(1,−1) = 0; other axis: ⟨v,(12)v⟩ = cos 120° = −½ | positive matrix, as stated | none |
| 0.4 convention witness | C₄ on ℂ by g ↦ i, v = 1 | c(π,1)(g) = ⟪1, i⟫ = i; opposite slot ⟪i, 1⟫ = −i; at g⁻¹: ⟪1, −i⟫ = −i for the opposite slot, i.e. matrixCoeff at g⁻¹ = conj of matrixCoeff at g = i | adapter g ↦ g⁻¹ correct | none |
| Conventions, PGL₂ | s = diag(t,t⁻¹), t = q^{1/2} | α^∨(s) = t² = q; χ_s(diag(ϖ,1)) = t = q^{1/2}; δ_B(diag(ϖ,1)) = \|ϖ\| = q⁻¹ so δ_B^{−1/2} = q^{1/2}; Ind_B 1 ∋ 1 | χ_s = δ_B^{−1/2} | none |
| 4.4 Check, A₂ | J(w) = {α : wα > 0} over S₃ | e: {α₁,α₂}; s₁: {α₂}; s₂: {α₁}; s₁s₂: {α₁}; s₂s₁: {α₂}; w₀: ∅; sizes 1,2,2,1; s₁ρ and s₂s₁ρ share {α₂} | matches | none |
| 4.6 A₂ ray | ρ = (1,0,−1), w = s₂s₁, ω₂^∨ = (⅓,⅓,−⅔), q = 2, m = 1 | s₁ρ = α₂, wρ = −α₂, ρ + wρ = α₁ = (1,−1,0); ⟨α₁, ω₂^∨⟩ = 0 ⇒ value 1; ⟨2ρ, ω₂^∨⟩ = 2 ⇒ St exponent q^{−2m} = ¼ | matches | none |
| 4.8 noncompact centre (new route) | GL₂(ℚ_p), ψ = (−1)^{v(det)}, σ with ω = 1 | ψ(a·1) = 1 so σ ⊗ ψ ∈ Ĝ_ω; (G/G°)/(ZG°/G°) = ℤ/2ℤ, two twists; f with σ(f) ≠ 0, (σ⊗ψ)(f) = 0 exists since σ^K ≇ (σ⊗ψ)^K are simple H(G,K)-modules; {x ∈ Ĝ_ω : x(e∗f) ≠ 0} = {[σ]} | clause now has a route | README 4.8 |
| 4.8 compact centre | PGL₂(ℚ_p), w = [[0,1],[p,0]] | w² = p·1 central ⇒ order 2 ⇒ w ∈ G°; χ(w) = (−1)^{v(−p)} = −1 ⇒ χ ∉ Ψ(G); Ψ(PGL₂) = 1 | negative control correct | none |
| 5.7 region counts | F₄ (2,6,8,12), E₈ (2,8,12,14,18,20,24,30), A₁, G₂ | ∏(dᵢ+h)/dᵢ = 105, 25080, 2, 8 | matches CH26 (6.6) | none |
| 5.1 convention | PGL₂, ν = ρ, ω^∨ = α^∨/2 | ⟨ω^∨, ρ⟩ = ½ ⇒ χ_{q^ρ}(diag(ϖ,1)) = q^{1/2} = δ_B^{−1/2}(diag(ϖ,1)) | trivial representation is L(ρ) | none |
| 5.15–5.17 pairings | B_n: γ^∨ = 2εₙ, ω₁ = ½Σε; C_n: γ^∨ = εₙ₋₁+εₙ; D_n | ⟨2εₙ, ½ω₁⟩ = ½; ⟨εₙ₋₁+εₙ, ½ωⱼ⟩ = 1 (j < n), ½ (j = n); D: ½ω₁, ½ω₂, ½ωₙ ↦ ½, ½ωⱼ (3 ≤ j < n) ↦ 1 | lists as stated | none |
| 5.18 and 5.26, G₂ | α₁^∨ short; s_c with (aα₁^∨+bα₂^∨)(s_c) = (−1)^a; ν = ½ω₂; q = 2 | highest coroot (α₁+2α₂)^∨ = 3α₁^∨+2α₂^∨ (α₁ long); values on (1,0),(0,1),(1,1),(2,1),(3,1),(3,2): −1, √2, −√2, √2, −√2, −2, none equal to 2 or ½; ⟨3α₁^∨+2α₂^∨, ½ω₂⟩ = 1 | witness irreducible and generic; real part on the wall | none |
| 5.21, E₇ | γ^∨ = −ε₇+ε₈, ω₇ = ε₆ + ½(ε₈−ε₇) | ⟨γ^∨, ½ω₇⟩ = ½(½+½) = ½ | ½ω₇ ∈ A₀ | none |
| 5.24, PGL₂ | standard representation, ν = ½ω₁ | ⟨ω₁^∨, ½ω₁⟩ = ¼ ∉ ½ℤ | separator works | none |
| 5.13 reduction | rank ≥ 2, adjacent simple coroots | ⟨α₁^∨+α₂^∨, ν⟩ ∈ 2ε+½ℤ and ∈ ε+½ℤ ⇒ ε ∈ ½ℤ ⇒ ε = 0; rank one: ⟨±α^∨, ν⟩ ∈ ±ε+½ℤ ⇒ 2ε ∈ ½ℤ ⇒ ε ∈ {0, ¼} | as stated | none |
| 7.1 sign convention | GL₂; cuspidal σ, rank 1 and 2 | D[1] = [i_B δ_B^{−1/2}] − [1] = ([1]+[St]) − [1] = [St]; D[σ] = (−1)^{\|Δ\|}[σ] = −[σ], +[σ] | as stated | none |
| 7.5 Iwahori–Matsumoto convention | (T_s+1)(T_s−q) = 0, q = 2 | T_s⁻¹ = (T_s−(q−1))/q; −qT_s⁻¹ has eigenvalues −q/q = −1 at q and −q/(−1) = q at −1 | trivial ↔ sign | none |
| 7.9 Checks, Sp(6) | (½,½,½) vs (0,½,1) | squared norms ¾ and 5/4, difference (−½,0,½) of squared norm ½ ⇒ not W-conjugate | extraneous | none |
| 7.11, F₄ B₃ point | (5/2,1,½,0) vs printed (4,3/2,1,½); reflection in (1,−1,−1,−1) of (2,1,3/2,½) | squared norms 15/2 and 39/2; stratum 7 + 2t² gives 15/2 at t = ½; reflection gives (5/2,½,1,0), a permutation of (5/2,1,½,0) | corrected point is on the stratum, printed one is not | none |
| 7.12, E₈ 4A₁ | brute force over νᵢ ∈ {k/2} and {¼+k/2}, 0 ≤ ν₁ ≤ ν₂ ≤ ν₃ ≤ ν₄ < 4 | no quadruple satisfies ν₁+ν₄ < 1, ν₂+ν₃ < 1, ν₂+ν₄ > 1, −ν₁+ν₃+ν₄ < 3/2 < ν₁+ν₃+ν₄ | extra region has no half-integral point | none |
| 2.1 Checks | ℚ_p^×, χ = (−1)^{v}; \|·\|_p; ℤ on ℂ² unipotent | \|χ\| = 1 unitarizable; ‖χ(p)v‖ = p⁻¹‖v‖ ≠ ‖v‖; (0,1) ↦ (n,1), unipotent non-diagonalisable | as stated | none |
| 3.2 | GL₂(ℚ_p) | Θ(i_B δ^{1/2}) = Θ_1 + Θ_St by additivity; 1 ≇ St ⇒ independent; i_B δ^{1/2} ≇ 1 ⊕ St | semisimplification only | none |
| 4.7 rank hypothesis | r = 1; r = 2 | 2^r = 2 constituents {1, St}, both unitarizable: no contradiction; 2^r = 4 > 2 | r ≥ 2 needed, stated | none |
| 4.9 rank 0, A₁ | W = 1; GL₂(𝔽_q) | sum over J ⊆ ∅ = trivial, degree q⁰ = 1; \|ℙ¹(𝔽_q)\| − 1 = q = finrank at the pin (`finrank_GL2Steinberg` = card F) | agrees with the library | none |
| Renumbering 5.24–5.28 | every `SRU.5.2x` reference | How to read the build: "5.26 use SRU.5.27" (G₂ witness uses the Hecke comparison), "SRU.5.28 depend on SRU.5.27"; 5.11 cites SRU.5.28 for the explicit regions; 5.26 Check cites SRU.5.26 for the witness values | all references point at the intended sections | README |

## Unresolved

- The `(*slug*)` labels in the subsection headings and the "SRU.k / slug" form of the internal *Needs:* references are kept from the package (the base roadmap at its head labels its targets the same way); roadmaps on main number their references instead. The gate's `target-ids` and `layer-ids` checks accept them.
- Ownership against open pull requests whose files the brief does not give was checked only with `roadmaps grep`.
- `roadmaps resolve` does not check Lean names outside `TauCetiRoadmap` on this host; the Tau Ceti modules and files cited were checked by hand in the worktree's pinned package.


Pull request: #1815 (roadmap/smooth-representations-of-local-groups-part-ii at d05d791)
