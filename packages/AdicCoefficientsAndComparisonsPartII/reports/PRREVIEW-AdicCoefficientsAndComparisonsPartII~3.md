# Review of AdicCoefficientsAndComparisonsPartII (pull request #1796 at 0ed113b)

**Verdict:** accepted

## Previous findings

- None: the review of d6d93fd accepted the folder without findings.

## Verified sound

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| PA.1.1 pointed modifications | Spec F₂ → Spec Z; generic point of A¹ and Gₘ → A¹ | Closed immersion: proper, tight, image {(2)} ≠ Spec Z; open immersion: generic degree 1, not proper | Distinguishes modification from dominance | None |
| PA.1.1 overview: PA.1.2–1.4 compactness and valuative comparison | X = Spec F₂; X = Spec Z_(3), K = Q | First: one point, stalk F₂; second: two points with stalks Q and Z_(3); valuation-ring sets have the same cardinalities | Compactness and comparison agree | None |
| PA.1.5 overview: restriction, openness and centres | F₄/F₂; Q(i)/Q above 5; doubled-origin line | F₄ ∩ F₂ = F₂, singleton open image; two rings above 5 map to Z_(5); k[t]_(t) has two centres | Direction and retained centre agree | None |
| PA.2.1 overview: loci and tower laws | K = Q₂, E/K unramified quadratic, L = E(√2) | Ramification indices: 1, 2, total 2; tame indicators: 1, 0, total 0 = 1∧0; unramified indicators identical | Both tower tests agree | None |
| PA.2.4 overview: distillation and separable variant | Q(i)/Q, all valuations; S empty | Wild primes {2}; K′ = L′ = Q(i), degrees 2 and 1, separable; empty S gives P = ∅ and K′ = Q | Required degree support and tameness hold | None |
| PA.3.1 overview: inertia and Galois coverings | S₃ acting freely on six F₂-points; trivial action; Frobenius on A¹_F₃ | Inertia orders 1 versus 6: tame versus wild; Frobenius degree 3, automorphism order 1: Galois alteration, not separable covering | Distinctions survive grouping | None |
| PA.3.3 overview: alteration distillation | Frobenius Y → X on A¹_F₃; separable identity alteration | Frobenius: P = {3}, Y′ = X′ = Y, covering degree 1, P-degree 3; identity: P = ∅, both degrees 1 | Factorization and separable boundary case agree | None |
| PA.5.1 multipointed curves and stability | xy = π; cusp y² = x³; identity on unmarked P¹ | Node: tangent cone xy, two branches; cusp: tangent cone y², double branch; identity: zero contracted components despite dualizing degree −2 | Semistability and relative stability distinguished | None |
| PA.5.2 projectivity criterion | Contracted rational component with three or two special points; identity on P¹ | Degrees −2+3 = 1, −2+2 = 0: ample/stable versus neither; identity fibres are points, so degree −2 permits relative ampleness | Both directions agree | None |
| PA.6.8 trait alteration and PA.4.8 local model | Spec Z₂[x,y]/(xy−2), ℓ = 3, Z = V(xy) | Identity degrees 1; Σ = {(2)}; gcd(2,1,1) = 1; horizontal boundary empty; reduced inverse image Z equals the two vertical branches | Degree, chart and boundary clauses agree | None |

The adversarial rows for untouched statements stand as in the previous review of d6d93fd.

- Changed passages: 10 prose paragraphs; 64 numeric target identifiers retained in order; 7 layer headings retained; no Lean declaration changed.
- Seeded targets within the changes: PA.1.5, PA.2.1 and PA.5.2 checked at temkin17 lines 686, 707, 772, 800 and temkin10 line 104; the dependent PA.4.8 chart agrees with ilo14 line 6985.
- Further source checks: temkin17 lines 645, 663, 667, 783, 803, 817, 858, 884, 903, 936, 939, 960; temkin10 line 57; ilo14 lines 6985, 7174; all 3 cached sources legally available.
- Pinned declarations reopened: Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:41; Mathlib/Topology/Spectral/ConstructibleTopology.lean:160; Mathlib/RingTheory/Etale/Basic.lean:205; TauCeti/AlgebraicGeometry/AdicSpace/ValuationSpectrum/Basic.lean:212.
- Affected supplier citations resolved in 5 roadmaps: SchemeAndStackFoundations §§0.9, 0.20, 1.17, 2.20, 4.11–4.20; StableReduction Layers 2–3; EtaleCohomologyFoundations F.0.A1; ClassicalAdicEtaleCohomology §2.4; LocalFieldsRamificationPartII GF.0–GF.2/GF.6, including its former-identifier table.
- Gate: every scanner returned 0; targeted build succeeded; direct Lean elaboration emitted only the 2 expected sorry warnings; no UPWARD or CYCLE line.
- Signature probe: all 6 declarations elaborated with #check @; 0 lost binders or README discrepancies; completeness, nontrivial constant-field norm and finite-degree hypotheses remain explicit.
- PR text: title, prose and roadmap-summary block agree with the addition of 3 files and 6 declarations; 0 removed targets or suppliers relative to the base; outside-folder diff empty.

Dependency-check output:

    depcheck: 244 roadmaps, 2210 edges, 0 problem(s)

Overlap check: read EtaleDualityAndPerverseSheavesPartII, LocalFieldsRamificationPartII, LefschetzPencilsAndVanishingCycles, SchemeAndStackFoundations (main and #1808), ClassicalAdicEtaleCohomology, ResolutionOfSingularitiesCharacteristicZero and AdicSpacesPartII; respective shared interfaces remain owned by this roadmap (pointed limits, distillation, non-proper stable modifications), LocalFieldsRamificationPartII (valued-field ramification), LefschetzPencilsAndVanishingCycles (separated Gabber modification), SchemeAndStackFoundations (scheme foundations), ClassicalAdicEtaleCohomology (affine model limits), ResolutionOfSingularitiesCharacteristicZero (characteristic-zero resolution), and AdicSpacesPartII (general spectral limits). No ownership change or conflicting open edit.

Source independence: changed passages only; 10 passages compared with 3 sources, no copied expression or reused material found; largest share ilo14, 70 of 184 explicit cache-locator groups. No layer was added, removed or reordered, so the arrangement comparison was not reopened.

## Not verifiable

- none

## Source issues

- **Misprint** in temkin17 at Lemma 3.3.7, printed page 120: the source says L is the composite of its conjugates and concludes tameness of L/K; it should name the Galois closure L′ in both places; affects the proof.

## For the human reviewers

- none
