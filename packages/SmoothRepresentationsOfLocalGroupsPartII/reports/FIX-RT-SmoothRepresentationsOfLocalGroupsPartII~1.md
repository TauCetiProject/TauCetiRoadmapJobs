# FIX-RT-SmoothRepresentationsOfLocalGroupsPartII~1

Repair of red-team round 1 (passes a and b). Each review numbers its findings from F01: pass a has F01…F21 and pass b has F01…F09. The headings below use the review's own ids, pass a first, then pass b; each section's first line names its pass, and cross-references in the text write a-Fnn / b-Fnn. Overlapping findings are settled once and cross-referenced: a-F10 = b-F01 and a-F19 = b-F03.

## F01 (P1) — applied
Pass a, finding F01.
5.11: "type C …; types B, D …" → the letters now name the type of Φ^∨, the Hecke root system of BC1 line 784. The C formula is for G = SO(2n+1), the B formula for G = PSp(2n), and D is self-dual. Added the PSp₄, (0, ¾) example. In 5.29, "classical B and D" → "dual types B and D (G = PSp(2n), PSO(2n))". BC1 lines 782–791 confirm the convention.

## F02 (P1) — applied
Pass a, finding F02.
3.8: "differential is Σ s_α ϖ_α" → ν = ν_G + Σ_{α∈Δ∖S} s_α ϖ_α, where the central component ν_G ∈ a_G^* is kept separately. ν_G = 0 for unitary central character. Added the F^×, |·| witness. Route: the chamber constrains only the derived-group part.

## F03 (P2) — applied
Pass a, finding F03.
2.7: "square-integrable and unitary-induced representations define points" → the irreducible square-integrable representations and the irreducible constituents of unitarily induced admissible finite-length representations. Added the F^×, σ = 1 ⊕ 1 example. The route now uses the semisimplicity of SRU.2.3. Other uses of "unitarily induced" (5.1, 5.3, 5.8) concern irreducible X(s) and are correct.

## F04 (P2) — applied differently
Pass a, finding F04.
The only cycle was 5.11 ↔ 5.29. 5.29's Needs line no longer cites SRU.5.11; it now reads "SRU.5.28; …; BC1 §§3.3 and 7.2". The other edges point forward but are acyclic: each cited subsection does not depend back on its citer, which I checked for every edge the reviewer listed. They are now named in "How to read the build". 5.3's Needs line gains 5.4. I did not renumber or reorder subsections, because the brief forbids reorganised layers.

## F05 (P2) — applied
Pass a, finding F05.
New headline `isCompact_positiveTypeSubunit_integrals`: compactness of the image of P≤1(G) under φ ↦ (f ↦ ∫ f φ dμ) in the product topology on functions L¹ → ℂ. It is registered in README 1.4, and the docstring's claim that this headline is unstatable is removed. Trivial group: the image is a segment. Circle: χₙ ↦ 0 lies inside the image.

## F06 (P2) — applied
Pass a, finding F06.
6.1–6.3 (four occurrences): "split over an unramified extension k'/k of degree d" → "k'/k the unramified extension of least degree d splitting 𝐆". Added a 6.1 Check for PSU₃: least degree 2 = ord τ, whereas the degree-4 extension would give d = 4.

## F07 (P1) — applied
Pass a, finding F07.
Confirmed: SmoothRepresentationsOfLocalGroups SR.2.3 proves multiplicity one only for GL₂ (README of that roadmap, line 2210). Declared gap:whittaker-multiplicity-one on SR.2.3. 3.7 now asserts uniqueness of the generic constituent only when the dimension is 1: for P = B in all characteristics (U ∩ T = 1), and otherwise through the contract. Added the G₂ example.

## F08 (P1) — applied
Pass a, finding F08.
No roadmap states the Shahidi local coefficient for general quasi-split groups; I searched main and the open heads with `roadmaps grep` for "Shahidi" and "local coefficient". Declared gap:shahidi-local-coefficient and gap:heiermann-muic-implication on AutomorphicLFunctionsAndLocalFactors AL.4 (earlier in the merge order). 3.8's route and Needs line now cite both contracts. Added the torus example.

## F09 (P2) — applied
Pass a, finding F09.
4.3 is now stated for split connected reductive groups, possibly with noncompact centre. The route explains that the finite Hecke algebra and sign character of a Levi are tensor products over the simple factors. Added the (2,2) Levi of PGL₄ as an example. 4.7 uses the reductive statement for M.

## F10 (P3) — applied
Pass a, finding F10.
5.18/5.19/5.21: CH26 line 858/865/881, PDF p. 18 → line 1060 (p. 22), 1072 (p. 22), 1111 (p. 23). The PDF pages are recomputed from the page markers: page 22 starts at line 1053 and page 23 at line 1092. Pass b's "p. 21" for §6.7 is off by one.

## F11 (P3) — applied
Pass a, finding F11.
Replaced the law-restating Checks with computed ones: 0.1 (C₄, T(z) = iz), 0.4 (C₄: values i, −i, i), 0.6 (C₂: vectors 1 and i, versus sign), 1.1 (zero representation, error 1 on {e}), 1.7 (alternating versus constant C₂ sequences), 5.1 (diag(−2, −½) at q = 2) and two in 7.9 (Sp₆ central point; PGL₂ at ¼ω). The laws remain as API prose.

## F12 (P1) — applied
Pass a, finding F12.
Confirmed: BanachSpaceTheory B5 is scoped to finite measures (README of that roadmap, line 257). Declared gap:sigma-finite-l1-duality. 1.4, 1.5 and Scope cite the σ-finite contract. 1.6's route now avoids duality entirely: Tychonoff in the pairing space plus the integrated-L¹ GNS contract.

## F13 (P3) — applied
Pass a, finding F13.
0.2: BHV Exercise F.6.4, line 16976 → Definition A.1.6 and the Hilbert direct sum defined before it, printed p. 310, PDF p. 319, BHV line 11742. Verified at BHV lines 11742–11761. F.6.4 is kept for 1.8 and 1.9. The BHV manifest locator was updated.

## F14 (P2) — applied
Pass a, finding F14.
5.1 now consumes LieHighestWeightPartII N5 positive-real-part (r(s), u(s), uniqueness, Weyl equivariance; board design README lines 708–743). It defines only ν = log_q r(s) with q ≥ 2. The API and route are rewritten and N5 is added to the Needs line. Checks: diag(i, −i) gives ν = 0, and diag(−2, −½) at q = 2 has compact part −I.

## F15 (P2) — applied
Pass a, finding F15.
7.1 statement and API: "Ad(w_J) … J' = w_J(J)" → w is the longest element of {x : x⁻¹(J) ⊂ Φ⁺}, J' = w⁻¹(J), and Ad(w) carries L_{J'} to L_J (Ban02 Theorem 3.1(3), Ban02 line 254). Added the A₂ Check: J = {α₁}, w = s₂s₁, J' = {α₂}, whereas w(J) = {−α₁ − α₂}. The cases J = ∅ (w = w₀) and J = Δ (w = e) were recomputed and agree with the AZ(1) argument.

## F16 (P3) — applied differently
Pass a, finding F16.
7.3 and 7.4 concern adjoint G, so the centre is connected and Kazhdan–Lusztig suffices. Instead of adding Reeder's Theorem 2, I removed the "Reeder 2002 in general" clauses. The citation is now KL87, Theorem 7.12 (uncertified). The route already disclaims other isogenies. "Barbasch–Moy, Reeder" → "Barbasch–Moy (BM94)".

## F17 (P3) — applied
Pass a, finding F17.
`sources.toml` gains BM94, KS71, Mi73, Rodier81, Steinberg68, Borel79 and Ber74 (status waived); KL87, BM89 and HM07 (uncertified: the sources service found only paywalled pages); and BM93 (certified, AMS open archive, Theorem 8.1 at BM93 line 973). README 5.10 and 7.13 cite BM89, BM93 and BM94 by key, and the References section lists the new keys.

## F18 (P2) — applied
Pass a, finding F18.
Added `WeaklyContainedInFamily` (real body; weak containment in a family through finite sums of member coefficients) and the headline `exists_coeff_approx_of_weaklyContainedInFamily`, which concludes ∃ i, ∃ unit w in Hᵢ. Both are registered in README 1.1 and 1.6. Added the 1.6 example: σ = sgn with family {1, sgn} forces sgn when ε < 2.

## F19 (P1) — applied
Pass a, finding F19.
Scope and the Springer contract: the claim that Layer H supplies convolution is removed. Only Layer S is consumed; H (holonomic D-modules) is named as not consumed. 7.4's Needs line "S and H" → "S, coherent equivariant K-theory contract". The plan gap's section changes from "S and H" to "S".

## F20 (P3) — applied
Pass a, finding F20.
The module docstring now names Rodier heredity and the generic standard-module theorem (missing the Whittaker and parabolic functors and the Shahidi coefficient), and finite Steinberg, the Whittaker/sign comparison and Rodier's constituent theorem (missing the finite flag/Hecke and Jacquet carriers). Nothing was added in their place.

## F21 (P1) — applied
Pass a, finding F21.
Witness confirmed: for SL₂(ℚ₃) the K-spherical constituent is generic for some datum and has T_s = 3. 4.3 now states the three-way equivalence for the K-compatible datum ψ_K; other data are reached by adjoint-torus transport; and for adjoint G the datum does not matter. The fixed datum is carried through 3.9 and 4.7, and 5.5 notes adjointness. The SL₂ witness is an example in 4.3.

## F01 (P3) — applied
Pass b, finding F01.
Settled with a-F10. Also 7.4: CH26 line 702, p. 27 → "§8.1, PDF p. 27; CH26 line 1307; proof of Corollary 5.7, PDF p. 15; CH26 line 702". And 1.10: GI18 "pp. 31–32; line 1289" → "pp. 29–31; GI18 line 1289 (statement) and line 1319 (proof)". The GI18 manifest locator was updated to match.

## F02 (P3) — applied
Pass b, finding F02.
7.11 route: the CiF4 comparison sentence is replaced by the orthogonal decomposition. Real parts are ω₁+ω₂+t(0,0,1,−1), of squared norm 7+2t². The README point is a Weyl conjugate of the t = ½ point; the printed CH26 point (squared norm 39/2) would need t = 5/2. The CiF4 B₃ row (line 584) is recorded as a misprint, to be read with 3/2 − ν. The example paragraph is rewritten with the α₁^∨ reflection. Recomputed: (2, 1, 3/2, ½) ↦ (5/2, ½, 1, 0).

## F03 (P2) — applied
Pass b, finding F03.
Settled with a-F19.

## F04 (P2) — applied
Pass b, finding F04.
gap:triple-centralizers-and-orbit-tables is split into gap:triple-centralizers (N0), gap:graded-open-orbit (N0–N1) and gap:orbit-tables (N3), in the README and the plan `gaps` list. Needs lines updated: 7.3, 7.4, 7.6, 7.8, 7.10, 7.11 and 7.12 (7.12 uses the C₄ data); 7.13 already named the graded-orbit contract.

## F05 (P3) — applied
Pass b, finding F05.
All 89 target headings now carry their slug label, as in `### 0.1 … (*strongly-continuous-unitary*)`. Slugs come from the plan nodes; 4.9, 5.28 and 5.29 got new labels (coxeter-contraction-inputs, signature-hecke-comparison, explicit-regions). A mechanical check finds no cited node slug without a heading. The dangling "half-integrality-highest-weight" in 5.25 now cites LieHighestWeightPartII N5.

## F06 (P3) — applied
Pass b, finding F06.
Replaced the Lean-style forms with prose: orbit continuity in 0.1 (now `IsStronglyContinuous`); cyclicity in 0.6; the class [π] API and its Check in 0.6; the SRU.0.4 estimate in 1.1 and 2.7; the Hilbert-sum criterion in 1.8; [π] = [ρ] iff π ≃ᵤ ρ in 1.10; openness of {x : rep x (f) ≠ 0} in 4.8; the twist ρ ⊗ χ in 2.1. Also fixed the same pattern in the 1.7 "isolation" and 7.9 "extraneousness" API bullets.

## F07 (P3) — applied
Pass b, finding F07.
`extremePoints_closure_convexHull_subset_closure` is deleted from `Suggested.lean`: its statement mentions no object of the roadmap. README 1.2 keeps it as a target, and its acceptance-signature line is removed.

## F08 (P3) — applied
Pass b, finding F08.
Dropped `[SecondCountableTopology G]` from `raikov` and `exists_coeff_approx_of_weaklyContainedIn`; the new family theorem also omits it. README 1.5, 1.6 and Conventions now say "locally compact Hausdorff". 1.5's route reduces to σ-compact open subgroups (inner regularity puts every L¹ function in one). 1.6's route uses no duality. Kept for `godement` and the new compactness headline.

## F09 (P3) — not actionable in this package: merge-order placement
Pass b, finding F09.
GlobalShtukasAndFunctionFieldLanglandsPartII is listed earlier in ORDER.txt yet consumes SRU targets. Fixing that means moving that consumer after this roadmap, or moving targets down inside that package. Both are outside this folder. The depcheck shows no problem from this side.

## Checks

- **Elaboration.** `lake env lean packages/SmoothRepresentationsOfLocalGroupsPartII/Suggested.lean` gives only the seven "declaration uses `sorry`" warnings, one per theorem, and no errors. No `TauCeti.*` build was needed.
- **Binder audit.** I put `#check @name` for all 14 declarations in one scratch file and elaborated it once. Every theorem carries its instance binders in its own signature. `raikov`, `exists_coeff_approx_of_weaklyContainedIn` and `exists_coeff_approx_of_weaklyContainedInFamily` no longer have `SecondCountableTopology G`, as intended. `isCompact_positiveTypeSubunit_integrals` and `godement` keep it. `WeaklyContainedInFamily` takes no completeness, as in the README.
- **Dependency check.** `gate --depcheck … --movable` printed `depcheck: 56 roadmaps, 648 edges, 0 problem(s)`, with no UPWARD, CYCLE or moved line.
- **Citations.** `roadmaps resolve`: no cross-roadmap citation and no Lean name found nowhere.
- **Plan.** `design/plan.json` changes only in its top-level `gaps` list, which now has 16 entries; the README declares exactly the same 16 slugs.

## Adversarial pass on new or changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| `isCompact_positiveTypeSubunit_integrals` | trivial group, Haar mass a; S¹ | image = {f ↦ a·t·f(e) : t ∈ [0,1]}, a segment; χₙ pair to 0 → 0 = pairing of φ = 0 ∈ P≤1 | true; P≤1 rather than P₁ is needed |
| `WeaklyContainedInFamily` | empty ι; one-member ι | empty: false for unit v (error 1 at Q = {e}, ε = ½), true for H = 0 (n = 0); one member: same as `WeaklyContainedIn` | as intended |
| `exists_coeff_approx_of_weaklyContainedInFamily` | C₂, σ = sgn, family {1, sgn}; empty family | must pick sgn (error 2 for 1); empty family makes the hypothesis false | true; reducible σ = regular fails (indicator of 0) |
| `raikov` without second countability | uncountable discrete G | compact = finite; f ∈ ℓ¹ has countable support; a finite set carries all but ε, tail ≤ 2ε, so it works for nets | true |
| 3.7 uniqueness | GL₂, P = B, χ = δ^{1/2}; P = G = G₂ | dim Hom_{1}(χ, 1) = 1, so St is the unique generic constituent; G₂: heredity is the identity | P = B unconditional; general P needs the contract |
| 3.8 exponent | F^×, \|·\|; GL₂, \|·\|^{1/4} ⊗ \|·\|^{−1/4} | ν_G = exponent of \|·\|, ϖ ↦ q⁻¹, root sum empty; ν_G = 0, s_α > 0 | true |
| 4.3 | SL₂(ℚ₃) quadratic χ; PGL₂ trivial/St; torus | spherical constituent: T_s = 3, not ψ_K-generic; trivial: no sign, not generic; St: sign once; torus: sign = trivial, U = 1 | equivalence holds for ψ_K |
| 5.1 real part | diag(i, −i); diag(−2, −½) at q = 2 | ν = 0, compact part = the element; compact part −I, positive part diag(2, ½) | true |
| 5.11 dual types | PSp₄ (0, ¾); SO(3); SO(5) | ¾ < 1 − 0 and γ^∨ value ¾ < 1; C₁: 2ν₁ < 1 ⇔ ⟨α^∨, ν⟩ < 1; C₂: 2ν₂ < 1 = A₀, d = 0 | true |
| 6.1 least degree | PSU₃; ³D₄ | d = 2 = ord τ (not 4); d = 3 | true |
| 7.1 Weyl element | A₂ with J = {α₁}; J = ∅; J = Δ | w = s₂s₁, J' = {α₂}; w = w₀; w = e | true |
| 7.9 Checks | Sp₆ (2,2,2); PGL₂ ¼ω | squared norms ¾ vs 5/4; pairing ¼ ∉ ½ℤ, unitary since ¼ < 1 | both non-extraneous |
| 7.11 B₃ | (5/2, 1, ½, 0) | squared norm 15/2 = 7 + 2(½)²; Weyl conjugate of (5/2, ½, 1, 0) | true |
| 2.7 | F^×, 1 ⊕ 1 | one class, multiplicity 2 | true |
| gap:sigma-finite-l1-duality | ℤ with counting measure | infinite mass, σ-finite, ℓ¹* = ℓ∞ | the contract is needed |

## Maintainer notes

- **New supplier contracts.** These ask other roadmaps to state material: SmoothRepresentationsOfLocalGroups SR.2.3 (gap:whittaker-multiplicity-one), BanachSpaceTheory B5 (gap:sigma-finite-l1-duality), AutomorphicLFunctionsAndLocalFactors AL.4 (gap:shahidi-local-coefficient, gap:heiermann-muic-implication), and LieHighestWeightPartII (gap:triple-centralizers, gap:graded-open-orbit, gap:orbit-tables, which replace gap:triple-centralizers-and-orbit-tables).
- **Changed Lean names.** Removed `extremePoints_closure_convexHull_subset_closure`. Added `WeaklyContainedInFamily`, `isCompact_positiveTypeSubunit_integrals` and `exists_coeff_approx_of_weaklyContainedInFamily`. No other roadmap cites the removed name.
- **Sources.** `needs-references.toml` was created by the first, failed BM93 request; I deleted it once BM93 was fetched from the AMS open archive. Nothing is outstanding.
- **Ownership.** Checked against main, the board packages, the sibling checkouts and `roadmaps grep` over the open heads. No other owner exists for positive-type GNS, the coefficient Fell topology, the Aubert involution or the general Shahidi coefficient. The torus positive part is now imported from LieHighestWeightPartII N5.
- **Untrusted text.** Neither review contains instructions addressed to the worker.
