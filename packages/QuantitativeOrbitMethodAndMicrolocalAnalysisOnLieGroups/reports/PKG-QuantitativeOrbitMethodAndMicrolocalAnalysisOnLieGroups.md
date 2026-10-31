# PKG-QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups

Package written: `packages/QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups/README.md` (1484 lines, 10 layers, 75 targets), `Suggested.lean` (5 theorems, 7 definitions), `metadata.toml` (`topic = "math.RT"`), `sources.toml` (7 works), and the `gaps` list of `design/plan.json` (9 supplier gaps; no other key changed, checked by diffing every key against HEAD).

Inputs. The accepted design is `design/README.md` and `design/plan.json`. There is no `design/review.json` and `reports/` was empty; the acceptance record is the `review` block of `plan.json` (status accepted, 2026-10-19), whose non-blocking notes (E10 narrowed, E36 added, G20 added, PBW ownership) are carried into the README. The design's own Suggested file and packet are not in the package and were not used; Suggested.lean is new.

## Headline theorems

| Headline theorem (Nelson–Venkatesh numbering) | README | Status |
| --- | --- | --- |
| Uniform boundedness of order-zero quantization, uniform in π and h, δ < 1/2 (Prop. 8.7, Thm. 5.8 for m = 0) | §1.9 | Stated: `exists_norm_quantize_le` |
| Stability criterion for GGP pairs, orthogonal case (Thm. 14.2) | §5.2 | Stated: `isStable_iff_isCoprime_orthogonal` |
| Stability criterion, unitary case (Thm. 14.2) | §5.2 | Stated: `isStable_iff_isCoprime_unitary` |
| Stable fibres are torsors, orthogonal case (Thm. 14.5, Lemma 14.6) | §5.3 | Stated: `stableFibre_isTorsor_orthogonal` |
| Stable fibres are torsors, unitary case (Thm. 14.5, Lemma 14.6) | §5.3 | Stated: `stableFibre_isTorsor_unitary` |
| Rescaled composition calculus (Thms. 5.6, 5.8, Cor. 5.9) and star-product expansion (Thms. 4.5, 7.4) | §§1.1–1.6, 1.12 | Not statable: the operator classes Ψ^m need the Sobolev scale of a representation (derived representation on smooth vectors, closed Nelson operator), absent at the pins; the BCH coefficients C_j need the Taylor coefficients of the BCH series, of which the pins have only the local logarithm (a long ad hoc encoding) |
| Rossmann character formula, Kirillov-type trace expansion and uniform trace-ideal bounds (Thms. 6.1, 6.3, 12.2) | §§3.3, 3.7, 3.9 | Not statable: no tempered irreducible unitary representations of real reductive groups, no Harish-Chandra characters, no Hilbert-space trace on trace-class operators, no KKS measure on coadjoint orbits at the pins |
| Regular orbit continuity (Thm. 11.1) | §3.5 | Not statable: no KKS measures on coadjoint orbits |
| Volume compatibility and stable disintegration (Thms. 16.7, 17.2) | §§5.6, 5.9 | Not statable: no fibral volume forms of morphisms of varieties, no real densities of algebraic forms |
| Stable relative character expansion (Thm. 19.3) | §6.4 | Not statable: no local relative characters, no tempered duals |
| Positive inverse branching and cuspidal allowability (Thms. 22.2, 24.5) | §§7.2, 7.8 | Not statable: no unitary duals of real or p-adic reductive groups, no Bernstein centre, no relative characters |
| Limit states, disintegration and equidistribution (Thms. 26.4, 26.5, 27.1) | §§8.2, 8.3, 8.8 | Not statable: no automorphic quotients of reductive groups over number fields with their automorphic representations |
| Smoothly weighted period asymptotic, the end theorem (Thm. 30.1) | §9.5 | Not statable: additionally no branching coefficients L(Π,Σ), Tamagawa numbers or Plancherel measures |

Considered and not classed as headlines: Nelson's essential self-adjointness theorem (owned by NoncompactQuantumSymmetry M0), the Cotlar–Stein lemma (owned by PseudodifferentialOperators P5), Cartan connectedness of real points of simply connected groups and regular nilpotent centralizer rigidity (supporting lemmas, §§8.4–8.5).

The GGP statements use the standard models (dot product on `k^ι ⊕ k` with e the last basis vector; `GL(k^ι) ⊂ GL(k^ι ⊕ k)` through `diag(h,1)` for the unitary case after splitting). Over an algebraically closed field every GGP pair is isometric to these, and the README states §§5.2–5.3 on the same models, so README and Lean generality agree. The GIT-quotient condition `[x] = [y]` is encoded without the Pfaffian by `InvariantlyEquivalent` (all invariant polynomials agree), which is exactly equality of k-points of the quotient; Zariski closedness reuses Mathlib's `MvPolynomial.zeroLocus`.

## Elaboration

`lake env lean` on `Suggested.lean` from the content checkout: no errors; exactly **5** warnings, all `declaration uses 'sorry'` (lines 102, 164, 177, 192, 211); no other message. Imports: `Mathlib`, `TauCeti.Geometry.Lie.Exponential.Basic`, `TauCeti.RepresentationTheory.Continuous.Unitary.Basic` (both object files present at the pin). No `set_option`; one `attribute [local instance] LieGroup.minSmoothnessThree`, the Tau Ceti-sanctioned way to use `mulInvariantExp` on a smooth Lie group.

Binder check: a scratch file with `#check @name` for all 12 declarations was elaborated once. Every declaration carries its binders in its own signature (no section variables): `quantize` and `exists_norm_quantize_le` keep `[FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E] [LieGroup 𝓘(ℝ, E) ∞ G] [T2Space G]`, the theorem keeps unimodularity `∃ μ, μ.IsHaarMeasure ∧ μ.IsMulRightInvariant`, `CompleteSpace V`, unitarity and strong continuity; the GGP theorems keep `[IsAlgClosed k] [CharZero k]` and the skew-symmetry hypotheses. Each elaborated type matches its README statement. Two changes resulted from earlier test runs: `IsTopologicalGroup G` is not inferred from `LieGroup`, so unimodularity is expressed through a right-invariant Haar measure instead of `modularCharacter`; and `T2Space G` (automatic for Lie groups, needed by `mulInvariantExp`) is an explicit binder. The `let F := …` in the torsor theorems displays as `have`, a β-redex with the same meaning.

## Dependency check

```
depcheck: 56 roadmaps, 645 edges, 0 problem(s)
```

No UPWARD or CYCLE line. Suppliers earlier in the merge order: SmoothRepresentationsOfLocalGroups (25), ReductiveGroupsPartII (23), AdelicAlgebraicGroups (34), AutomorphicFormsOnReductiveGroups (75), GeometryOfNumbersAndQuadraticArithmetic (77), AutomorphicSpectralTheory (94), GanGrossPrasadUnitaryGroups (271), SmoothRepresentationsOfLocalGroupsPartII (303); this roadmap is at 308. Main-branch suppliers: RepresentationTheory/LieGroups, LieHighestWeight, CompactGroups, NilpotentOrbits, SymplecticGeometry (HamiltonianReduction, ConvexityToric), OperatorTheory/OperatorIdeals, DifferentialGeometry, GeometricMeasureTheory, OrthogonalSpinGroups. Other authors' new-roadmap pull requests (not in the merge order, allowed): NoncompactQuantumSymmetry, SmoothBanachRepresentations, UnboundedOperators, PseudodifferentialOperators. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. `sources check`: 0 problems.

## Duplication sweep: removals and imports

Removed design targets (79 → 75):

1. QO.0/nelson-laplacian (essential self-adjointness of `1 − Σ dπ(X)²`, ≥ 1, `‖Δ^{-1}‖ ≤ 1`): NoncompactQuantumSymmetry M0 item 1 owns the Nelson operator, its essential self-adjointness, power cores, enveloping Sobolev bounds and elliptic-regularity adapters. The identity `π^∞ = ⋂ D(Δ̄^n)` stays as an API fact of §0.2, proved from those adapters.
2. QO.1/cotlar-stein: PseudodifferentialOperators P5 supplies the almost-orthogonality lemma; the countable strong-convergence form needed here is gap:cotlar-stein-strong. The ℓ² projection counterexample stays in §1.9 and Worked examples.
3. QO.3/harish-chandra-character: stated by no roadmap; GanGrossPrasadUnitaryGroups already requests distribution characters from AutomorphicSpectralTheory, so this is gap:harish-chandra-characters on the same owner.
4. QO.4/padic-plancherel: SmoothRepresentationsOfLocalGroups explicitly excludes Plancherel theory and GanGrossPrasadUnitaryGroups requests it from AutomorphicSpectralTheory; gap:local-plancherel. The corollary `∫ dim π^U dμ = vol(U)^{-1}` stays in §4.2.

Imports replacing design constructions or obligations:

- KKS form on coadjoint orbits: HamiltonianReduction R2; Liouville measure: ConvexityToric T4. §3.1 keeps only the `(2π)^{-d}` normalization and multiorbits. Sign check: under ξ = iν the source's `[x,y]ξ/i` equals R2's `ν([x,y])`.
- Symplectic reduction for the first sequence of §5.6: HamiltonianReduction R3.
- Smooth vectors and their Fréchet topology: SmoothBanachRepresentations SB2–SB3, SB6.
- Unbounded functional calculus (powers of Δ): UnboundedOperators UO-A01–A03, UO-E01.
- Schwartz kernel theorem (design obligation G15): PseudodifferentialOperators P3.
- Coarea and densities (design obligation G11): GeometricMeasureTheory G2, DifferentialGeometry Layer 5.
- Good compact open subgroups (design obligation G13): ReductiveGroupsPartII RG2.3.6 (Moy–Prasad `G_{x,r}` normal in `G_{x,0}`, cofinal) and RG2.4.2 (Iwahori factorization for every parabolic containing the minimal Levi).
- Ergodic decomposition and Borel density (part of design obligation G18): GeometryOfNumbersAndQuadraticArithmetic §4.2.
- General p-adic Bernstein centre, tempered support, fixed-level finiteness (design obligation G14): SmoothRepresentationsOfLocalGroups SR.3.1–SR.3.3 and SR.3a.2 state these for every connected reductive group at the head read; the antiholomorphic involution of the Bernstein variety is a step of §7.7 built from SR.0.4 and SR.3.2.
- Witt extension and cancellation (part of G9): Tau Ceti `TauCeti/LinearAlgebra/QuadraticForm/Witt/`.
- Jacobson–Morozov and regular nilpotent orbits: NilpotentOrbits N2.1, N2.3 on main, in place of LieHighestWeightPartII N0 (design stage only); the real-form criterion and rigidity stay as §8.4.
- Trace, cyclicity and `‖BC‖₁ ≤ ‖B‖_HS‖C‖_HS`: AutomorphicSpectralTheory §0.9 (which consumes VonNeumannAlgebras V4).
- AF.1/g-continuous-norms (design input to the Sobolev scale) is replaced by NoncompactQuantumSymmetry M0; AutomorphicFormsOnReductiveGroups §2.7 is cited only for globalizations.

Design atlas identifiers were resolved to actual sections: AF.1 → AutomorphicFormsOnReductiveGroups §§2.1–2.4, 2.7; AS.0 → AutomorphicSpectralTheory §§0.9, 0.13, 0.14; AS.4 → §§4.5, 4.7; SR.1/2/3/3a → SR.1.1, SR.1.4, SR.2.2–2.3, SR.3.1–3.3, SR.3a.2; AA.2/3/4 → AdelicAlgebraicGroups §§2.2, 2.4, 3.4, 4.2; GN.4 → GeometryOfNumbersAndQuadraticArithmetic §4.2 (item 4.2.5, `ratner_measure_classification`).

Design obligations G1–G20 disposition: G1 → NoncompactQuantumSymmetry M0; G2 → gap:cotlar-stein-strong; G3 → gap:unitary-exponents-minimal-ktypes; G4 → targets §§3.2, 3.3, 3.5 here with Rossmann/Ranga Rao routes and gap:harish-chandra-characters; G5 → target §3.6 here (Barbasch–Vogan, Rossmann, Kostant routes); G6 → gap:local-plancherel; G7 → gap:tempered-xi-bounds and gap:local-plancherel; G8 → GanGrossPrasadUnitaryGroups §§2.6, 2.7, 3.3, 4.2, 7.4 for unitary pairs plus gap:orthogonal-ggp-inputs and gap:relative-character-positivity; G9 → target §5.3 with Tau Ceti Witt and Galois descent; G10 → target §5.5 (Rossmann's Lemma C); G11 → GMT G2 and DG Layer 5; G12 → target §5.10, with a positive-sandwich completion of the source's sketch written into the route; G13 → ReductiveGroupsPartII; G14 → SR.3.x; G15 → PseudodifferentialOperators P3; G16 → target §8.4; G17 → target §8.5; G18 → GN §4.2 plus target §8.6; G19 → gap:global-spinor-image; G20 → gap:compact-quotient-spectral-estimates.

## Supplier gaps (plan.json `gaps`)

| slug | supplier | section | needed by |
| --- | --- | --- | --- |
| cotlar-stein-strong | PseudodifferentialOperators | P5 | 1.9 |
| local-plancherel | AutomorphicSpectralTheory | Layers 0–2 local spectral extension | 4.2, 4.4, 5.10, 7.7 |
| harish-chandra-characters | AutomorphicSpectralTheory | Layers 0–2 local spectral extension | 3.3 |
| tempered-xi-bounds | AutomorphicSpectralTheory | Layers 0–2 local estimates extension | 4.1, 4.3, 5.8 |
| compact-quotient-spectral-estimates | AutomorphicSpectralTheory | §4.7 | 9.2 |
| unitary-exponents-minimal-ktypes | AutomorphicFormsOnReductiveGroups | §2.4 | 2.3, 2.4 |
| orthogonal-ggp-inputs | GanGrossPrasadUnitaryGroups | scope, orthogonal endpoints of its Part II | 4.5, 6.3, 9.1 |
| relative-character-positivity | GanGrossPrasadUnitaryGroups | §§2.6, 3.3 | 4.5, 7.5, 7.7 |
| global-spinor-image | OrthogonalSpinGroups | Layer 3 | 8.7 |

Each `needs` field is the README's "What … must provide (gap:…)" sentence verbatim. The local-plancherel, harish-chandra-characters and tempered-xi-bounds gaps coincide in owner and section with the gaps GanGrossPrasadUnitaryGroups already filed (local-plancherel, local-tempered-bounds).

## What the README could not support, and scope decisions

- The normalized unweighted formula of the source's §31 (Theorem 31.11) has no owner on main, at the open heads or on the board (searched by object and by name). The design claimed an owner; none exists. The README assigns it to QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups, Part II, beginning at §9.5.
- Archimedean positivity of local relative characters is not assumed anywhere (the source only expects it); §7.2 keeps absolute values.
- §5.10 is restricted to complex groups, as in the source.
- No notion was moved down from a later roadmap.

## Ownership against open work

Checked by object with `roadmaps grep` over all 367 open roadmap pull requests at their heads and main, and in the board packages (orbit method, Kirillov, coadjoint orbit, Rossmann, Harish-Chandra character, Plancherel, Cotlar, Nelson, essentially self-adjoint, smooth vector, Gårding, Schatten, pseudodifferential, semiclassical, Weyl quantization, relative character, Ratner, Schwartz kernel, coarea). This roadmap is the owner of: the representation-theoretic symbol calculus with a semiclassical parameter uniform in the representation (PseudodifferentialOperators covers only the Euclidean Kohn–Nirenberg calculus without h); the orbit-method trace asymptotics and Rossmann's formula (no other match); GGP moment-map geometry, stability and torsors (GanGrossPrasadUnitaryGroups line 1407 states it does not supply moment-map geometry); local relative characters as Hermitian forms on smoothing operators with their stable asymptotics; inverse branching; limit states. No Suggested.lean declaration shares a fully qualified name with a declaration of a readable roadmap.

## Sources

`sources.toml`: nv21 (certified, publisher open access, Acta Math. 226; text extracted locally for locator checks, printed page numbers used throughout); rallis-schiffmann (certified, arXiv:0705.2168v1; Theorems 6.1 and 17.1 at rallis-schiffmann line 886 and line 3371); rossmann78, kostant78, barbasch-vogan80 (uncertified, paywalled, recorded by the service); rangarao72 and kostant63 (uncertified, JSTOR-paywalled; the service resolved their DOIs to JSTOR landing pages it does not classify, so they were recorded as uncertified by hand with DOI and locator rather than listed as missing). No text is missing; `needs-references.toml` is not left in scratch. The paywalled originals are cited only for proof routes, and every statement carries an nv21 locator. No suspicious instruction-like passage was found in any fetched or read text.

## Corrections to the source carried into the README

E1 (binary orthogonal self-twist exclusion in Theorems 27.1/30.1, checked: for dim V_H = 2 the spinor image of H is a norm subgroup of index 2 and the cokernel is detected by χ = η_{K/F}∘θ; for dim V_H ≥ 3 Kneser's global image with sign approximation repairs the printed local argument), E2, E4, E5, E6, E8, E9, E10 (δ = 0 included), E13, E16 (strong, not norm, convergence), E17, E18, E19, E20, E21, E22, E24 (κ a high power of 1 − Σx²), E25, E28, E29, E30, E32, E34, E35, E36 (Δ^N versus ⟨ξ⟩^{2N}), E3 (both complementary intervals). Each appears at its target as "the source prints …; corrected to …".

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Fourier convention (Conventions, §0.1) | ℝ, indicator of [0,1], η = 1/2; Gaussian | NV forward `∫₀¹e^{iπx} = 2i/π`; Mathlib forward `−2i/π`; `𝓕(e^{−πη²}) = e^{−πx²}` | holds | sign witness added as Check |
| Quantization on characters (§0.5, Worked examples) | `Π_t` on ℝ, 𝓕b supported where χ=1 | `quantize Π_t χ b = b(t/2π) = a(it)`; opposite sign gives `b(−t/2π)` | holds | Check added |
| Orbit normalization `σ^d/(d!(2π)^d)` (§3.1) | SO(3) sphere radius r; spin-l | KKS area 4πr, mass 2r; r = l+½ gives 2l+1 = dim π | holds | Check added |
| Real measure normalization (§5.7) | dx on ℝ; dx∧dy | `Leb/√(2π)`; `dx dy/(2π)` agreeing with §3.1 | holds | — |
| j(x) density (§0.1) | SU(2); ax+b | `j = (sin(|x|/2)/(|x|/2))²`, even; ax+b `j(−x) = e^{x₁}j(x)` | evenness ⇔ unimodular | ax+b Check rewritten; SU(2) Check added |
| Sobolev scale (§0.2) | trivial rep; `e^{itx}`; L²(ℝ) | Δ = 1; Δ = 1+t², `‖v‖_s = (1+t²)^{s/2}`; δ₀ ∈ H^{−1}(ℝ) as `∫(1+t²)^{−1} < ∞` | holds | sign non-example added |
| Operator classes (§0.3) | identity; ∂_x; multiplication by e^{ix²}; Heisenberg | [∂_x, e^{ix²}] = 2ix·e^{ix²} unbounded; θ_X(dπ(Y)) = dπ(Z) | holds | muddled family Check replaced |
| Symbol classes (§0.4) | 1; ⟨ξ⟩²; moving bump; 𝔤 = 0 | 1 ∈ S⁰∖S^{−1}; `h⟨hξ⟩^{−1} ≤ ⟨ξ⟩^{−1}` for h ≤ 1 | holds | rescaling API added |
| `IsQuantizationCutoff` (§0.5) | constant 1; χ(0)=½; off-centre bump; 𝔤 = 0 | 1 lacks compact support (dim ≥ 1); Op(1,χ) = ½·id if χ(0)=½ | holds | API and Checks added |
| `quantize` (§0.5) | Schwartz b; non-integrable b | Bochner integral; `𝓕b = 0` junk for non-integrable b | holds for Schwartz | Check distinguishes formula from distributional extension |
| Adjoint `Op(a)* = Op(ā)` (§0.5) | change x ↦ −x | `conj(a^∨(−x)) = (ā)^∨(x)` uses χ even, real; no unimodularity | holds | — |
| Operator algebra (§0.6) | π(f), f ∈ C_c^∞ | `‖Δ^Nπ(f)Δ^N‖ ≤ ‖Δ^N∗f∗Δ^N‖₁` independent of π | holds | — |
| Cutoff star product (§1.1) | zero input; ℝⁿ; rescaled vs unscaled | `a(it)b(iht)` vs `a(iht)b(iht)` | holds | Gaussian claim removed (inverse transform not compactly supported) |
| BCH coefficients (§1.2) | abelian; linear symbols; Heisenberg | `{x,y} = ½[x,y]`; `C₁(a,b) − C₁(b,a) = ξ([x₀,y₀])`; Heisenberg C_j ≠ 0 for all j (monomials x^k y^k ζ^k) | holds | a false Check ("C_j = 0 for j ≥ 2 on Heisenberg") corrected |
| Nonstationary phase (§1.3) | φ = ix; φ = ix² | rapid decay vs size t^{−1/2}; `L e^{tφ} = e^{tφ}` | hypothesis |∇φ| ≥ ε needed | — |
| Planck partition (§1.4) | δ = 0; ω = 0; a = 1 | radius ⟨ω⟩/2; width h^{1−δ}; S⁰-distance of partial sums from 1 ≥ 1 | holds | — |
| Localized remainders / mixed calculus (§§1.5–1.6) | g₁ = g, proper g₂, b = 1; δ₁=0, δ₂=0.9 | pull-back of 1 has no decay; gain h^{0.1J} | holds | Checks added |
| Fourier cutoff asymptotics (§1.7) | ℝ, ψ(x) = x | derivative of `h^{−1}a^∨(x/h)` is `h^{−2}(a^∨)′`; first term `+h∂a` | holds (E17, E19) | — |
| Order criterion (§1.8) | ∂_x on L²(ℝ); Δ^{−1} | `‖∂v‖² ≤ ⟨Δv,v⟩`; fails m = 0 | holds | — |
| `exists_norm_quantize_le` (§1.9) | dim 𝔤 = 0; a = 1 limit; signed Littlewood–Paley sums; δ = ½ | dim 0: `quantize = b(0)·id`, C = 1; L¹ norm grows with K while S⁰ seminorms bounded; δ = ½ gives gain h⁰ | holds; δ < ½ needed for the proof | "logarithm" claim replaced by "grows with K" |
| Cotlar–Stein (imported, gap) | coordinate projections on ℓ² | row sums 1; partial sums → id strongly; tails norm 1 | norm convergence false | strong form requested |
| Polynomial quantization (§1.10) | ℝ; Heisenberg [X,Y]=Z | `sym(⟨ξ⟩⁴) = Δ² − Z²` (pair (X,Y) gives `X²Y²+Y²X²−2sym(X²Y²) = Z²`) | holds (E36) | — |
| Cutoff independence, near covariance (§1.11) | two cutoffs; h-independent g | difference sees a^∨ only on |x| ≥ c/h, O(h^∞); hypothesis holds for ε < 1−δ | holds | unproved ε = 0 claim removed |
| Rescaled calculus (§1.12) | M=3, N=5, δ=¼; ⟨ξ⟩^{−2}; disjoint supports | J ≥ (N+M)/(1−2δ) = 16; `‖Δ_h^{−1}‖_{π^s→π^{s+2}} ≍ h^{−2}`; product O(h^∞) | holds | wrong value J = 10 corrected |
| Real quotient (§2.1) | ℝ; so(3); GL_n | λ = it; p ≤ 0 on i𝔤^*, points p > 0 not in image; quadratic invariant scales h² | holds | — |
| Dual characters (§2.2) | e^{itx}; SL₂ principal series I(ν) | −it, −it, it; without ρ-shift `ρ−ν` lies in neither class | holds | Check rewritten (trivial-rep version was not discriminating) |
| Temperedness criterion (§2.3) | SL₂ complementary series s ∈ (0,½); trivial rep | hλ → 0 (irregular); trivial rep counterexample when 0 ∈ Ω | holds | — |
| Laplacian bound, leading symbol (§2.4) | e^{itx}; Casimir | eigenvalue 1+t²; `γ(sym p) − p = −|ρ|²` | holds | — |
| Division (§2.5) | abelian; recursion | b₂ = −(C₂(q,b₀)+C₁(q,b₁))/q | holds (E28, E29) | — |
| Joint localization (§2.7) | G = H = ℝ characters | vanishing unless t = s | holds (E13) | unfounded Check removed |
| Orbital measure (§3.1) | point orbit; 𝔰𝔩₂ nilcone; SO(3) dilation | mass 1; two components of a²+bc=0 minus 0; `2tr = t·2r` | holds | garbled Check rewritten |
| Local finiteness (§3.2) | 𝔰𝔩₂ nilpotent orbit | dilation-invariant, infinite total mass, finite on compacts | holds | — |
| Rossmann formula (§3.3) | ℝ; SU(2) spin-l | `θ j^{1/2} = 2 sin(r|x|)/|x| = ∫_O e^{xξ}dω`, r = l+½ | holds; j^{1/2} needed | Check added |
| Weak topology, continuity (§§3.4–3.5) | point masses at in; alternating | vague limit 0; no full-sequence limit | holds | — |
| Orbital decay, nilpotent limits (§3.6) | point orbit; SU(2) fixed π; Sp₄(ℝ) holomorphic d.s. | bound ⟨t⟩^{−ε}; mass h(2l+1) → 0; GK dim 3 < 4 | holds | false SL₂ limit-of-discrete-series example replaced |
| Trace expansion (§3.7) | ℝ; SU(2), h = 1/(l+½) | `a(iht) + O(h^∞)`; limit mass `h(2l+1) → 2` | holds | — |
| Smooth trace ideals (§3.8) | rank one; identity; finite-dim trivial | tr = ⟨u,v⟩, ‖·‖₁ = ‖u‖‖v‖; identity ∉ T₁ | holds | — |
| Trace-ideal estimates (§3.9) | identity; Δ_h | ‖Δ_h^{−1}‖ ≤ 1 | holds | — |
| K-types (§4.1) | trivial type; SO(3); torus rank r | source κ = −cΣx² vanishes on trivial type; L=1 fails at l=1 (3 > √3), L=2 gives (1+l+l²)² ≥ (2l+1)²; torus needs 2L > r | holds with high power (E24) | wrong SO(3) Check corrected |
| Plancherel–Sobolev (§4.2) | finite group; Haar rescaling; trivial rep | `Σ dim π dim π^U = |G/U| = vol(U)^{−1}`; both sides scale c^{−1} | holds | — |
| Ξ test space (§4.3) | `(1+x²)^{−1}sin(x³)` | integrable, derivative not | holds | — |
| Relative character (§4.5) | compact H, σ of dim 2 once; trivial H; Hermitian non-example | `H_σ = ½` (Schur orthogonality); `tr T`; form value −2 at (1,−1) | holds | non-GGP example removed |
| Relative disintegration (§4.6) | compact H | `Σ dim σ·(dim σ)^{−1}tr(T|π[σ]) = tr T` | holds | — |
| Joint fibres (§5.1) | x² and x on ℝ; projections of ℝ²; SO(3)⊃SO(2) | fibres {2}, ∅, {(3,5)}; independent variables give dimension 2 not 1 | holds (E25) | Check made precise |
| `IsZariskiClosedMatrixSet` (§5.2) | `x₁₂x₂₁ = 1`; `x₁₂ ≠ 0`; ℤ ⊂ ℂ | closed; not closed; Euclidean-closed not Zariski-closed | holds | — |
| `specialOrthogonalMatrices` (§5.2) | `[[√2,i],[−i,√2]]`; `diag(i,−i)`; −1 | hᵀh = 1, det 1, h*h ≠ 1; hᵀh = −1; det(−1₃) = −1 | Mathlib star-based group is SU(n) over ℂ | reason for the definition recorded |
| `ggpBlock` (§5.2) | ι empty; ι = Unit | conjugate of `[[a,b],[c′,d]]` is `[[a,cb],[c′/c,d]]` | holds | — |
| `ggpSpectralPolynomial` (§5.2) | m = 0,1,2,3; singular x ∈ 𝔰𝔬₄ | 1, 1, X²+a², X²+a²+b²+c²; forced root of x_H must go | holds | — |
| `isStable_iff_isCoprime_orthogonal` (§5.2) | n = 0, 1, 2; x = 0 | n=0,1 always stable and coprime; SO(3)⊃SO(2) stable ⇔ b²+c² ≠ 0 (isotropic (b,c) gives non-closed G_m-orbit, (0,0) infinite stabilizer); x = 0: X², X² not coprime | holds | — |
| `isStable_iff_isCoprime_unitary` (§5.2) | n = 0, 1 | GL₁: stable ⇔ bc ≠ 0 ⇔ charpoly(x)(a) ≠ 0 | holds | — |
| `InvariantlyEquivalent` (§5.3) | 𝔰𝔬₂ under SO₂; `[[0,1],[0,0]]` vs 0 under GL₂; Γ = {1} | x ~ y ⇔ x = y on 𝔰𝔬₂ (x and −x not equivalent though same charpoly); nilpotent ~ 0; equality | encodes Pfaffian | — |
| `stableFibre_isTorsor_orthogonal` (§5.3) | n = 0, 1, 2 | n=1: F = {y}, trivial H; n=2: F = {a fixed, b²+c² = s ≠ 0}, SO(2)-torsor; charpoly-only fibre over 𝔰𝔬₂ would have 2 points | holds | — |
| `stableFibre_isTorsor_unitary` (§5.3) | n = 0, 1 | n=1: F = {[[z,b],[c,d]] : bc = −charpoly_y(z) ≠ 0}, G_m-torsor | holds | — |
| Real points of stable fibres (§5.3) | SO(3)⊃SO(2) definite | circle for s > 0, empty for s < 0 | holds | — |
| Fibral forms (§5.4) | projection k^{r+s} → k^s; base rescaling; zero-dim fibre | dx₁∧…∧dx_r; factor c^{−1}; scalar | holds | — |
| Normalized affine form (§5.5) | 𝔤𝔩₁; 𝔰𝔩₂ | γ = β; ⟨µ,α^∨⟩dH vanishing at 0 | holds | — |
| Stable properness (§5.8) | GL₂⊃GL₁, bc = p ≠ 0 | |h·(b,c)| ≍ max(|h|,|h|^{−1}), ε = 1 | holds | — |
| Complex Plancherel scaling (§5.10) | H = ℂ^×; SL₂(ℝ) | lattice ℤ×ℝ, Riemann-sum ratio → 1 (not 1 for fixed h) | holds for complex groups | false "ratio exactly 1" and "real case fails" Checks corrected |
| Diagonal reduction, small elements (§§6.1–6.2) | narrow symbol mass; b(0) = ½ | mass `h^{δ′dim S}·h^{(1−δ′)dim S} = h^{dim S}` cancels h^{−d_M}; halves main term | holds (E5, E6) | — |
| Relative expansion (§6.4) | SO(3)⊃SO(2), spin-l, character m | `hO_{π,σ}` = latitude mh circle on unit sphere | holds | vague compact-H Check removed |
| Orbit distinction (§7.1) | empty intersection; nontempered; weight 2 | weights 0, 0, 2 | holds | — |
| Archimedean inverse branching (§7.2) | σ near boundary of a₂-support | H_σ(Op_h(a)²) = O(h^N) ≠ 0 there | O(h^N) needed (E21) | — |
| Weyl-law tests (§7.3) | complementary series | k_h = 0, inequality is positivity of tr σ(f₁) | holds | vague Check replaced |
| Good-level criterion (§7.4) | GL₂(ℚ_p), J = ker(GL₂(ℤ_p)→GL₂(𝔽_p)) vs GL₂(ℤ_p) | trivial and Steinberg both have J-fixed vectors; Steinberg has no GL₂(ℤ_p)-fixed vector | holds; Iwahori factorization needed | Check corrected |
| l-components (§7.5) | F^×; SL₂ quadratic induction | circle, not ℂ^×; two constituents share a parameter | holds | — |
| Allowability (§7.6) | zero weight; scaling c | tolerance ε/c | holds | — |
| Central approximation (§7.7) | PGL₂ unramified | tempered circle plus both real intervals | holds (E3) | — |
| Operator states (§8.1) | rank one; trace c; scaling v | mass 1; c·tr T; `[2v⊗2v̄] = 4[v⊗v̄]` | holds | — |
| Limit states (§8.2) | empty O; h^{2d} normalization | all states 0; mass lost | holds (E35) | — |
| Disintegration (§8.3) | Ψ = 1 | δ_ξ mass 1 | holds (E34) | — |
| Regular nilpotent rigidity (§8.4) | principal SL₂ ⊂ SL₃; GL_n Jordan block | contains e, not e²; centralizer dim n | full centralizer needed | — |
| Cartan connectedness (§8.5) | SL₂(ℝ), PGL₂(ℝ), SO(2), SO(p,q) | connected/disconnected as stated; SO(2) torus outside hypothesis | holds | — |
| Measure classification (§8.6) | GL₃(ℝ) centralizer group | NV21 Example 27.6 | holds (E22) | — |
| Component comparison (§8.7) | definite V_H in indefinite V; binary anisotropic over ℚ_p | local image of H trivial vs {±1}; index-2 norm subgroup | printed local surjectivity false (E1) | corrected statement with gap |
| Equidistribution (§8.8) | Π ≅ Π⊗χ | χ-component `∫|φ|²χ` need not vanish | exclusion needed for SO(3)/SO(2) | — |
| Period functional (§9.1) | orthogonal restriction; cv; two copies | 0; |c|²; sum of projections | holds | — |
| Truncation (§9.3) | Cauchy–Schwarz | negligible factor tr(T₁*T₁) | holds (E32) | — |
| Weighted asymptotic (§9.5) | Haar rescaling of H_q by c | H_σ ×c, L ×c^{−1}, affine measure ×c^{−1}: both sides ×c^{−1} | holds | garbled Check rewritten; unfounded compact-H Check removed |

Context check (item 2): every Lean declaration carries its standing hypotheses in its own signature (verified by `#check @`). Generality (item 3): README §§1.9, 5.2, 5.3 state exactly the Lean generality (unimodular smooth Lie group modeled on its Lie algebra with an inner product; standard GGP models over algebraically closed fields of characteristic zero). Vacuity (item 6): the hypotheses of `exists_norm_quantize_le` are satisfiable (unimodular groups exist, cutoffs exist in every neighbourhood, Schwartz symbols satisfy the bounds with finite M); the coprimality hypotheses of the torsor theorems are satisfiable (computed instances above). Unused hypotheses (item 7, P3 notes): `T2Space G` follows from `LieGroup`; unimodularity is the source's standing hypothesis of Part I and may not be needed for §1.9 (the adjoint formula used in the proof needs only χ even and real).
