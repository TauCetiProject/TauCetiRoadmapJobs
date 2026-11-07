# NonabelianLevelStructures package report

Deliverables: `packages/NonabelianLevelStructures/README.md`, `packages/NonabelianLevelStructures/Suggested.lean`, `packages/NonabelianLevelStructures/metadata.toml` (`topic = "math.NT"`), `packages/NonabelianLevelStructures/sources.toml`, the top-level `gaps` list of `packages/NonabelianLevelStructures/design/plan.json` (a parsed comparison confirms that no other key of the plan changed), and this report.

The accepted design was written against an older atlas whose supplier labels (IG.5, R09.5, SF.4, CA.4, LP3, R01.4, R13.2, RP.4, C.0) were resolved to actual roadmap sections. The decisive finding of the duplication sweep is that **ArithmeticDynamicsPartII**, which is earlier in the merge order and whose package is under board review, took ownership in its §§6.0–6.6 of the elliptic level stacks, their compactification and coarse degrees, Chen's Theorem 3.5.1 and Corollary 4.12.5(a), the finite-field trace dictionary, the trace order, the SL₂ degree and orbit congruences, oriented Markoff divisibility and geometric connectedness; its §§1.4 and 2.1–2.4 own Martin's divisibility theorem, the prime-field rotation slices, the point count and the rotation-orbit count. Its review reports record that this roadmap must import those sections. Every design target whose statement those sections make has been deleted here and cited. The design's mathematics that is not stated there (ramification monodromy, Higman normalization, branch cycles, deformation and density, functoriality, absolute structures, cofinality, all of the cusp theory, cusp automorphisms and representability, the combinatorial congruence, the square-subgroup lemma, the simple-group congruence, integral trace coordinates, the SL₂ refinements at arbitrary level and the trace −2 Markoff modular geometry) is written out in full.

## Headline theorems

| Headline | Outcome at the pins |
| --- | --- |
| Chen's combinatorial congruence: |c|/gcd(|c|, m′_c d′_c) divides every Out⁺(F₂)-orbit on Epi^ext(F₂, G)/⟨γ₋ᵢ⟩ (Chen, Theorem 4.10.5) | **Stated**: `TauCetiRoadmap.NonabelianLevelStructures.combinatorial_congruence`, with the definitions `nielsenRight`, `nielsenLeft`, `positiveNielsenGroup`, `exteriorInversionGroup`, `coarseNielsenOrbit`, `cuspVerticalExponent`, `centralizerQuotientOrder` (real bodies on native carriers). |
| Simple-group congruence (Chen, Corollary 4.12.5(b)) | **Stated**: `TauCetiRoadmap.NonabelianLevelStructures.simple_group_congruence`. |
| Classification of cusps by I(G) and their vertical automorphism groups (Theorems 4.8.4, 4.10.3) | Not statable: the admissible-cover stack, its cusp fibre and automorphism groupoid are missing. |
| Representability criterion k_{u,h} = |u| for M̄(G) → M̄(1) (Theorem 4.10.3(a′)) | Not statable: stacks, rigidification and representable morphisms are missing. |
| Two geometric components of M(SL₂(𝔽_p))_{−2}, degree p(p ± 3), genus formula (Theorems 5.5.7(b), 5.6.3) | Not statable: the level stack, its coarse curve and genus are missing. The combinatorial cycle count on X*(𝔽_p) would be a stand-in and was not written. |
| Finiteness of j-invariants (Theorem 5.6.4, corrected) | Not statable: coarse level curve and its rational points are missing. |
| Large projective monodromy and noncongruence (Theorem 5.6.6, Corollary 5.6.8) | Not statable: the monodromy group of a cover of the j-line and Out⁺(F₂) ≅ SL₂(ℤ) are missing. |
| Cofinality (Theorem 2.5.2(7)) | Not statable: étale fundamental group of 𝓜(1) missing. |
| Integral trace coordinates R[x, y, z] ≅ 𝒪(SL₂²)^{GL₂} (Theorem 5.2.1) | Not statable: group-scheme coaction invariants missing. |

The module docstring lists each non-statable headline with what it lacks. Chen's other headlines (Theorem 1.1.1(a)/Corollary 4.12.5(a), Theorem 1.2.5, Theorem 1.2.6, Theorem 1.2.7) are owned by ArithmeticDynamicsPartII (§§6.0, 6.3–6.5, 1.4, 3.7, 4.2) and are not restated.

## What the README could not support

- The simple-group congruence (§4.2) and the alternating containment used in §7.6 rest on theorems whose proofs use the classification of finite simple groups (Vdovin's Theorem A; Guralnick–Magaard via Meiri–Puder Theorem 1.4). CFSGStatement states the classification as a proposition; its proof is owned by no roadmap. The README routes Vdovin's bound as a gap on CFSGBasicProperties and transfers it with `ClassificationStatement`.
- ASADA2001 and VDOVIN1999 are paywalled; they are recorded as `uncertified` and cited by locator only.
- ArithmeticDynamicsPartII is a board package, not on main or in a roadmap pull request; `roadmaps resolve` therefore reports its citations as found nowhere (expected; it is at merge-order line 293, this roadmap at 295). Its sections were read from the package README at the head of its board pull request.

## Findings against suppliers (not edits)

- ArithmeticDynamicsPartII §6.0 states Chen's Corollary 4.12.5(a) for general j. Chen's proof of Lemma 4.12.2 does not support j > 0: it bounds |⟨z′⟩ ∩ ⟨u′⟩| by ℓ^j and then asserts that ⟨z′^j⟩ ∩ ⟨u′⟩ is trivial, which fails in general (an element of order ℓ² and one of order ℓ inside it satisfy the bound and generate a cyclic group). The README states the j = 0 lemma (§4.1) and records the issue there; the general-j statement in §6.0 needs a repaired proof or the restriction j = 0.
- Chen §4.11 prints d′ = 2 for odd dihedral groups; the correct value is 1 (README §2.5). No supplier repeats the error.
- MappingClassGroupsAndCanonicalRepresentations (design) does not state Nielsen's theorem or Asada's theorem; two gaps are declared.

## Notions moved down from later roadmaps

None. No supplier later than this roadmap in the merge order is cited.

## Ownership decisions

- Composition factors of SL₂(ℤ/n) (README §7.7): the design requested this from ModularCurves 9B, which treats Katz–Mazur quotient problems and does not state it; no roadmap on main or at the open heads states it (searched `composition factor`, `SL₂(ℤ/`, `congruence subgroup property`). It is owned here as a group-theoretic target used by §7.8.
- The alternating containment for p ≡ 3 (mod 4) is requested from ArithmeticDynamicsPartII (gap:markoff-alternating-three-mod-four), consistent with the accepted design's assignment of the Meiri–Puder inputs to that roadmap, although its scope paragraph currently places Meiri–Puder Theorem 1.4 outside; the human routing the gap decides.
- Ownership against open roadmap pull requests was checked with `roadmaps grep` over all 356 heads and main for Markoff, Nielsen, Higman, "Chen's theorem", "nonabelian level" and divisibility; InverseGaloisAndArithmeticFundamentalGroups §IG.3.2 records Chen's divisibility *question* as a proposition `ChenOrbitDivisibility` (|φ([a, b])| dividing orbit sizes for simple G), which is a different (open) statement and is not stated here; ClassicalArithmeticCompletion supplies carriers only. No declaration of `Suggested.lean` shares a fully qualified name with a declaration of a readable roadmap.

## Duplication removals

| Design target | Disposition |
| --- | --- |
| NL.0 elliptic admissible covers | Deleted: ArithmeticDynamicsPartII §6.0 (Adm(H)) and InverseGaloisAndArithmeticFundamentalGroups §IG.5.4. |
| NL.0 reduced ramification divisor (definition) | Definition deleted: it is the marking of IG §IG.5.4's stable marked G-curve; its properties are kept as theorems in §0.1. |
| NL.0 sheaf of G-structures; level moduli; compactified level stack | Deleted: ArithmeticDynamicsPartII §6.0 (Level(H), finite étaleness, coarse base change, center-rigidified compactification). |
| NL.0 monodromy dictionary | Component–orbit part deleted (ArithmeticDynamicsPartII §6.0); branch cycles kept as §0.3. |
| NL.3 section cotangent line; stack Hodge degree | Deleted: the cotangent line and its exponent m are ArithmeticDynamicsPartII §6.0's; deg λ = 1/24 and L^e ≅ f*λ enter only the proof of Theorem 3.5.1, which §6.0 owns. Requests Q-DUAL and Q-DEGREE dropped with them. |
| NL.3 degree obstructions d_X, m_X; local character bounds; main degree congruence | Deleted: ArithmeticDynamicsPartII §6.0 (d, m, Z(H) ∩ ⟨c⟩ at smooth points, 12-fold bound, Theorem 3.5.1). The bound d_X ∣ |C_G(⟨c⟩)/⟨c⟩| for general G stays in §0.1. |
| NL.4 prime-power component bound | Deleted: ArithmeticDynamicsPartII §6.0 (Corollary 4.12.5(a)); see the finding above. |
| NL.5 noncentral trace order | Deleted: ArithmeticDynamicsPartII §6.2 `traceOrder`. |
| NL.5 Fricke trace polynomial | Deleted: Tau Ceti `Matrix.SpecialLinearGroup.trace_commutatorElement_fin_two` (`TauCeti/LinearAlgebra/Matrix/Trace/FinTwo.lean:127`). |
| NL.5 finite-field trace bijection | Deleted: ArithmeticDynamicsPartII §6.1. Request Q-SKOLEM dropped. |
| NL.5 non-dihedral subgroup refinements | Deleted: ArithmeticDynamicsPartII §6.0 (center containment, normalizer-quotient bound). |
| NL.6 geometric trace subsets | Non-dihedral criterion deleted (ArithmeticDynamicsPartII §6.1); the epimorphic trace −2 statement kept as §6.1. |
| NL.6 trace and moduli correspondence | Dictionary deleted (ArithmeticDynamicsPartII §§6.0–6.1); branch permutations kept as §6.2. |
| NL.6 SL₂ character exponents; centralizer bounds; SL₂ degree congruence; trace orbit congruence | Deleted: ArithmeticDynamicsPartII §§6.0, 6.3, 6.4, 6.5 (and §1.4 for Vieta-stable sets). |
| NL.6 rotation conics; split and nonsplit conic fibres | Kept (§§6.3, 6.5) as stated variants: every level t ≠ 2 over every finite field, against ArithmeticDynamicsPartII §§2.1–2.2 at the prime-field zero level. |
| NL.7 Markoff components | Kept (§7.1) as the refinement of ArithmeticDynamicsPartII §6.6 to the two components before the D(p)-quotient. |
| NL.7 branch and cusp counts | Kept (§7.2); Φ, |X*| and the rotation count imported from ArithmeticDynamicsPartII §§2.3–2.4. |
| Requests Q-COARSE | Dropped: its consumers (level moduli, compactified stack) were deleted. |
| Requests Q-GRAPHS, Q-CURVE-DUALITY, Q-PRESTABLE, Q-FULL-LEVEL | Existing contracts: StableReduction Layers 1–3; ModularCurvesPartII §§3.1, 3.12. |
| Requests Q-GASCHUTZ, Q-DEFORMATION, Q-DM-COMPLETION, Q-INVARIANTS | Declared as gaps (gaschutz-generating-pairs, equivariant-node-smoothing, geometric-point-completion, integral-rank-two-invariants). |
| Q-DICKSON | Center and normalizer parts: ArithmeticDynamicsPartII §6.0; trace −2 generation of SL₂(𝔽_p): proved in §6.1 from ArithmeticGaloisRepresentations §4.4. |
| Q-CONGRUENCE | Owned here as §7.7. |
| G-MAPPING, G-DYNAMICS, G-VDOVIN, G-GENERAL-J | Replaced by gaps punctured-torus-nielsen, asada-cofinality, markoff-alternating-three-mod-four, vdovin-abelian-subgroups; G-GENERAL-J resolved by stating j = 0 in §4.1. |

## Corrections relative to the design

1. Simple-group congruence: the design required c to have ℓ-primary order and stated the result conditionally on the cube bound. Chen's Corollary 4.12.5(b) has r = v_ℓ(|c|) for arbitrary c, and the proof works so (⟨z, c⟩ still has order ≥ ℓ^{r+1}); the README and Lean state the unconditional theorem with Vdovin's bound as a supplier gap.
2. Combinatorial congruence: the design asserted divisibility of Out⁺(F₂)-orbits on Epi^ext(F₂, G); Chen states it on Epi^ext(F₂, G)/⟨γ₋ᵢ⟩, which is stronger. The stronger form is stated.
3. Convention witnesses added: the peripheral orientation over 𝔽₇ ([a, b] and [b, a] land in different trace −2 classes because −1 is a nonsquare mod 7), and an anti-action witness (r, t at (2, 3, 5): (2, 1, 3) against (2, 5, 7)); the design's pair r, s commutes on traces and does not pin the order.
4. Branch cycles: the design's check on the coarse factor two had no instance; C₃ (orbit 8, coarse degree 4) is added; for SL₂(𝔽_q) γ₋ᵢ is trivial on traces, so the 40-point orbit has coarse degree 40.
5. Coprime powers and traces: an explicit witness diag(3, 4) ∈ SL₂(𝔽₁₁) (traces 7 and 3) replaces the unsupported remark.
6. Noncongruence: the order argument is valid from d ≥ 6 (d! > d³), with A₅ ≅ PSL₂(𝔽₅) as the boundary.
7. Pins updated to those of the content checkout: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`; every library declaration cited was checked there (file and line in the supplier contracts).
8. Source corrections retained in the README at the claim: Remark 2.2.4 converse (E25), Lemma 4.4.4(g) flatness (E1/E21), Proposition 4.4.3(d) base point (E20), §4.11 d′ (E26), Lemma 4.12.2 j > 0 (E2), Proposition 5.2.5 anti-homomorphism (E3), Remark 5.2.21 sign (E5), Proposition 5.2.16(d) (E12, E28), Lemma 5.3.1 hypothesis and degenerate fibre (E4, E29), Proposition 5.4.2 characteristic two (E10, subsumed in ArithmeticDynamicsPartII §6.2), Proposition 5.6.1(a) count (E6), Theorem 5.6.4 conclusion (E7), Proposition 6.4.1 S₄ and N/(G·C) (E8, E9), Theorem 1.2.10 p ≥ 5 (E18), Proposition 3.2.2(b) properness (E27).

## Adversarial pass

Brute-force computations (scratch Python, not part of the deliverables) enumerated, for S₃, D₁₀, A₄, S₄, SL₂(𝔽₃), A₅, SL₂(𝔽₅), PSL₂(𝔽₇) (on P¹(𝔽₇)), all generating pairs, the Nielsen orbits under the two positive transvections, the quotient by conjugation and inversion, m′_c, d′_c and the moduli; the Markoff surfaces X*(𝔽_p) for 5 ≤ p ≤ 43 with γ₀, γ₁₇₂₈, γ∞, Γ-transitivity, the composite γ∞∘γ₁₇₂₈∘γ₀, the sign quotient and branch signs; the genus formula for the 337 primes 13 ≤ p < 2304; and |I(G)| for C₂, C₃, S₃, D₁₀.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 degree and reducedness of R_π | G = 1 over k[ε]/ε²; S₃ inertia 3 | degree 0 (not 1), R empty and reduced, S nonreduced; degree 6/3 = 2 | converse needs surjectivity | kept E25 correction and Check |
| §0.1 centralizer bound on d_X | D₂k, k odd, rotation c | C(⟨c⟩)/⟨c⟩ = 1, N(⟨c⟩)/⟨c⟩ = 2 | centralizer not normalizer | Check added |
| §0.2 Higman normalization | S₃ transpositions; SL₂(𝔽₇) trace −2 | class of 3-cycles, e = 3; inverse in other class (−1 nonsquare mod 7) | orientation matters | witness added |
| §0.3 coarse degree |O/⟨γ₋ᵢ⟩| | C₂; C₃; SL₂(𝔽₅) trace −2 | 3 → 3; 8 → 4; 40 → 40 | factor 2 exactly when γ₋ᵢ free | Check corrected |
| §0.3 branch words | trace formulas | γ∞: (x, z, xz − y); γ₁₇₂₈: (y, x, xy − z); γ₀: (xy − z, x, x²y − xz − y) via tr(u²v⁻¹) = x(xy − z) − y | agree with §6.2 | none |
| §0.4 generation obstruction | C₂³ | Epi(F₂, C₂³) = ∅ | empty stack | Check added |
| §0.5 nonsurjective maps | C₂ → C₂ × C₂ | image of a surjection F₂ → C₂ not onto | excluded | Check |
| §0.6 Higman orbit condition | SL₂(𝔽₇), nonsquare-determinant conjugation | swaps the two trace −2 classes | union required | Check made explicit |
| §1.1 gluing datum torsor condition | S₃ acting on (H∖G) × P¹ | 3 points with stabilizers, not 6 | non-example | kept |
| §1.4 graph connectivity | G = 1; C₂, u = 1 | one vertex, one loop, b₁ = 1; two vertices two edges | loops necessary | kept |
| §1.5 balance and generation | C₂ × C₂, u = 1, h order 2 | balanced, ⟨u, h⟩ ≠ G | disconnected | Check added |
| §1.6 I(G) | C₂, C₃, S₃, D₁₀ | 2, 4, 2, 4 classes | consistent | Example added |
| §1.7 standard cusp components | S₃, u = (123), h = (12); u = (12), h = (23) | M = C₃, 2 components; M = S₃, irreducible | consistent with Theorem 4.10.3(c) | Example |
| §1.8 Higman class of [[u, h]] | identity (uh)[u⁻¹, h⁻¹](uh)⁻¹ = [u, h] | expanded symbolically; S₃ both 3-cycles | holds | Check |
| §1.9 inversion | C₃, u = 1 | [[1, h⁻¹]] ≠ [[1, h]] | no lift | Check rewritten |
| §2.1–2.2 A(G, u, h) and |A| = |Z||u|/k | S₃; abelian; D₁₀; SL₂(𝔽₃) | 3; |G|; 5; {±1} with M = G | holds | Checks |
| §2.3 representability | S₃; abelian; SL₂(𝔽₅) | k = 1 ≠ 3 not representable; representable; k = |u|, stabilizer {±1} | criterion consistent | Checks |
| §2.4 abelian comparison | (ℤ/n)², n ≥ 3; n = 2 | φ(n) components of degree |SL₂(ℤ/n)|/2; −I trivial at n = 2 | n ≥ 3 needed | Checks |
| §2.5 odd dihedral | D₆, D₁₀, D₁₄ | |A| = 3, 5, 7; D₁₀: 2 orbits of size 3; d′ = 1 | Chen's d′ = 2 wrong | correction kept |
| §3.1 orbit encoding | C₂; C₃; S₃; D₁₀; A₅; SL₂(𝔽₅) | 3; 4 (8 without γ₋ᵢ); 3; 3, 3; 18, 10; 72, 40 | Out⁺ orbit sizes as Chen | Checks |
| §3.2 m′_c, d′_c | D₁₀ rotation; SL₂(𝔽₅) trace −2; A₄ order 2 | (5, 1); (2, 1); (2, 2) | lcm not product | Checks |
| §3.3 combinatorial congruence | eight groups above | moduli/sizes: S₃ 1/3; D₁₀ 1/3; A₄ 1/4; S₄ 3/9; SL₂(𝔽₃) 2/16; A₅ 3/18, 5/10; SL₂(𝔽₅) 3/72, 5/40; PSL₂(𝔽₇) 3/18, 4/16, 7/7 | 0 failures | none |
| §3.3 Lean encoding | elaborated type of `combinatorial_congruence` | binders [Group G] [Fintype G], hgen; conclusion on `coarseNielsenOrbit` ncard | matches README | none |
| §4.1 square subgroups (j = 0) | SL₂(𝔽₅), ℓ = 5; D₂k, ℓ = k; A₅, ℓ = 5 | v₅(m′) = 0 ≤ 0; hypothesis fails and v_k(m′) = 1 without C_k²; m′ = 1 | hypothesis necessary | Checks |
| §4.1 j > 0 claim | k = 2, j = 1: z′ order ℓ², u′ order ℓ in ⟨z′⟩ | |⟨z′⟩ ∩ ⟨u′⟩| = ℓ ≤ ℓ^j, group cyclic | Chen's step fails | stated j = 0 only; finding recorded |
| §4.2 simple-group congruence | r = 0; A₇, ℓ = 7; A₅; A₆; PSU₃(4) | 1; 7⁶ = 117649 ≥ 2520 → 7 ∣ orbit; excluded (abelian 5 ≥ 60^{1/3}); excluded; 5⁶ < 62400 not applicable | exclusions necessary | ℓ-primary hypothesis removed |
| §5.1 integral trace coordinates | (I, I); reduction to 𝔽₂; (I, I) vs (unipotent, I) | (2, 2, 2) both, nonconjugate | quotient does not classify orbits | kept |
| §5.2 outer action | r, t at (2, 3, 5); r²; γ₋ᵢ; single sign change at (1, 1, 1) | (2, 1, 3) vs (2, 5, 7); identity; tr(A⁻¹B⁻¹) = tr(BA); levels 2 vs 4 | anti-homomorphism pinned | witness changed |
| §5.3 matrix-algebra criterion | (I, I); unipotents; ([[1,2],[0,1]], [[1,0],[1,1]]); zero ring | 0; 1; 4 (index-4 lattice over ℤ, full over ℚ); trivial | ring dependence correct | Check added |
| §5.4 trace strata | −unipotent over odd p; char 2; diag(3, 4) over 𝔽₁₁ | trace −2 order 2p; 2 = −2; traces 7 and 3 | root convention needed | witness added |
| §5.5 admissible traces | q = 2, 3, 5, 7; 𝔽₅ example | {1}, {0}, {1, 3}, {3, 4, 5, 6}; traces (0, 2, 3), commutator 11 = 1 | matches Proposition 5.1.3 | none |
| §5.6 D(q, G) | q = 5; q = 4; p = 2, 3 | 2 vs 60 inner; 1; Out(S₃) = 1, Out(SL₂(𝔽₃)) = C₂ = gcd(2, q − 1) | N/(G·C) correct | none |
| §5.7 normalizers | diag(ω, 1) over 𝔽₄; scalars; n = 1 | conjugates unipotent to [[1, ω], [0, 1]] ∉ SL₂(𝔽₂) | rationality needed | Checks |
| §6.1 epimorphic trace −2 locus | p = 3, 5; q = 2 | X*(𝔽₃) = ∅; 40 points; X_{−2}°(2) = ∅, X_1°(2) ≠ ∅, X_1*(2) = ∅ | prime field only | Checks |
| §6.2 branch cycles | X*(𝔽₅); dihedral over 𝔽₇ | cycles 14, 20, 8; γ∞∘γ₁₇₂₈∘γ₀ = id for all p ≤ 43; (6, 0, 0) excluded | product convention σ∞σ₁σ₀ = 1 | Check added |
| §6.3 rotation slices | a = 2 odd q; a² = t + 2 nonsplit; 𝔽₄ | (y − z)² = t − 2; single point; L_a order 5 | as stated | none |
| §6.4 exact rotation order | p = 5, a = 0, ±2; 𝔽₄; char 2, a = 0 | periods 4; 5 and 10; 5; 2 with y ≠ z | equals `traceOrder` | none |
| §6.5 conic counts | 𝔽₅ (a, t) = (1, 4), (0, −2), (2, −2) | 1 point; 9 points (8 after origin); 10 points | match ArithmeticDynamicsPartII §2.4 example | Checks added |
| §6.6 vertical groups | SL₂(𝔽₅) trace −2; 𝔽₇ traces 3, 6; D₁₀ ≤ SL₂(𝔽₄) | order 2 (n = 10); n = 8 → 2, n = 3 → 1; A = C₅ ≠ 1 | non-dihedral needed | Checks |
| §7.1 components | p = 3, 5, 7, 13 | X* empty; D = 40, 28, 208 | p ≥ 5 needed | kept |
| §7.2 branch counts | p = 5..43 | c₀ = (D + 2)/3, c₁₇₂₈ = (D + f_p)/2, c∞ = C_p at all 12 primes; fixed (3, 3, 1) at 5, (3, 3, 6) else | (D − 3)/3 nonintegral at 5 | kept E6 |
| §7.3 genus | p = 5..43; 13 ≤ p < 2304; tail | formula = cycle genus (0, 0, 1, 5, 10, 9, 18, 35, 38, 76, 81, 91); min 5 at 13 over 337 primes, all integral; lower estimate at 2304 ≈ 332928 | ≥ 2 for p ≥ 13 | none |
| §7.4 j-finiteness | p = 5, 7, 11; quadratic twists | genus 0, 0, 1: no finiteness; twists share j | j-invariants only | Check rewritten |
| §7.5 sign quotient | p = 5, 7; origin; fixed-point equations | d = 10, 7; origin fixed by all; (−x, −y, z) fixed ⇒ 0 | free on X* | none |
| §7.6 monodromy parity | p = 5..43 | signs of projective (γ₀, γ₁₇₂₈, γ∞): odd present for p ≡ 5, 7, 9, 11 (mod 16) (5, 7, 11, 23, 37, 41, 43), all even for 1, 3, 13, 15 (13, 17, 19, 29, 31) | residue rule holds | none |
| §7.7 congruence quotients | n = 1, 6, 25 | none; solvable; one A₅, kernel order 125 | as stated | new target |
| §7.8 noncongruence | d = 5, 6, ≥ 10 | A₅ ≅ PSL₂(𝔽₅); 720 ∉ {6, 24, 120}; d! > d³ | d ≥ 6 suffices | bound sharpened |

Context check for Lean: `#check @name` for all nine declarations was elaborated in one scratch file. Every elaborated type matches its README statement: the definitions carry only `[Group G]` (and `[Fintype G]` for `cuspVerticalExponent`), `combinatorial_congruence` carries `[Group G] [Fintype G]` and the generation hypothesis, and `simple_group_congruence` carries `[Group G] [Fintype G] [IsSimpleGroup G]`, nonabelianness, the PSL₂ exclusion over every finite field, primality of ℓ, generation and `Nat.card G ≤ (ℓ^{r+1})³`. No section `variable` is used, so no hypothesis could be dropped; nothing changed after the check. A proved scratch `example` (`nielsenRight` fixes (1, 1)) elaborated; it is not in the deliverable.

## Elaboration

`lake env lean packages/NonabelianLevelStructures/Suggested.lean` from the content checkout: exit 0, exactly **2** warnings, both `declaration uses 'sorry'` (lines 104 and 118: `combinatorial_congruence`, `simple_group_congruence`); no other messages. Imports: `import Mathlib` only. No `set_option`, `lemma`, `#eval`, `#print` or sorry'd data.

## Dependency check

```
tauceti-roadmap --conf <conf> gate --depcheck packages/NonabelianLevelStructures/README.md --name NonabelianLevelStructures --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 652 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line.

## Sources

`sources.toml` records CHEN2024 (published author copy, sha256 9386db34…, matching the design's copy; arXiv v2 noted but not used for locators), CHEN2018 (arXiv v5), BBCL22 (arXiv v2), MP18 (arXiv v2), and ASADA2001, VDOVIN1999 as `uncertified`. `sources check`: 0 problems. No `needs-references.toml` request is needed. No suspicious instructions were found in fetched texts, supplier READMEs or reviews.
