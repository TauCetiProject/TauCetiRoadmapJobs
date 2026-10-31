# FIX-PKG-AutomorphyLiftingBeyondTaylorWiles~2

All thirteen findings are applied, five of them differently from the suggested repair (the reason is given in each); none is disputed and none is left as not actionable. The files edited are `packages/AutomorphyLiftingBeyondTaylorWiles/README.md`, `Suggested.lean` (module docstring only), `sources.toml` and `design/plan.json` (top-level `gaps` only).

## F01 (P2) — applied

Old: `gap:localized-orbifold-perfect-duality` (ALS.1.6 and ALS.5a.6), one slug for two contracts. New: `gap:localized-orbifold-range-duality` (ALS.5a.6; the degree bound and localized duality without B^van(a); cited by §2.8) and `gap:localized-orbifold-perfect-models` (ALS.1.6; perfect localized O[Δ]-complexes; cited by §4.1). The README lines and the plan's `needs` are identical.

## F02 (P3) — applied

Old `needs` ending: "identify its completed local factors with their compatible actions on all finite O-coefficient modules". New ending: "prove that this image acts compatibly on cohomology with every finite O-module coefficient". The section changes from 2.1–2.2 to 2.1. The IntegralHeckeAndGaloisDeterminants consume paragraph now names its §2.2 for the local factors.

## F03 (P3) — applied

Scope now says: ModularityAndLanglandsExtensions §2.7 is a GLₙ form of Conjecture B; Layer 2 is a kept Res PGLₙ variant (intermediate covers, diamond clause); §5.8 is a kept variant of its §2.8; Theorem 9.19 and its verification are owned here. That roadmap leaves the §5.8 Needs and the contracts. Evidence: CG18 line 4579.

## F04 (P3) — applied differently

All labels are replaced as suggested except two:
- §2.2 "Art_v normalized as in BT.0" now cites ClassFieldTheory Layer 7, which is where Art_v is normalized; §0.1 does not normalize it.
- The §1.4 Check now cites GlobalGaloisDeformations §5.5 (the inertia structure) with a computed witness. gap:big-image-rank-n-taylor-wiles concerns choosing primes, not this structure.

## F05 (P3) — applied differently

Downstream consumers now describes CGH20 Theorem 1.2 (adjoint Selmer vanishing, via §5.5 and §3.7) and positive-defect GL₂ lifting without roadmap names. Scope places CG18 §§2–5 and §7.2 outside this roadmap without naming GL2ModularityLiftingPartII. That package does own defect-one GL₂, but naming it made the depcheck treat it as a supplier (the line is quoted under Checks).

## F06 (P3) — applied

- §3.2 adds FreeGroupsAndLimitGroups §4.8 (structure theorem) and §4.5 (`Monoid.PushoutI`).
- §3.4 derives the sequence from the tree's exact chain complex (ReductiveGroupsPartII RG2.2.4) and `groupCohomology.coindIso`.
- ModularCurvesPartII §15.4 is cited only for its principal-level case over ℚ (N ≥ 3). PSL₂(ℤ[1/ℓ]) is outside that statement too.

## F07 (P3) — applied

Every bare reference the review listed now names its roadmap (IntegralHeckeAndGaloisDeterminants, AutomorphicFormsOnReductiveGroups, AutomorphicSpectralTheory, DeformationAndDerivedPatchingAlgebra, TauCetiRoadmap.Chebotarev). "by (5)" becomes §1.1(f). The doubled names and the duplicate §6.4 are removed, and the two lower-case sentence starts are capitalized.

## F08 (P3) — applied

The five locators now read:
- Lemma 5.9(1): §5.3.1, CG18 line 3235.
- Conjecture A(3): CG18 line 3156.
- Theorem 6.4(1): CG18 line 3728.
- Theorem 9.19: CG18 line 5166.
- The CGH20 Hecke algebra: CGH20 line 178.

Every CG18 line now cited was printed and checked.

## F09 (P3) — applied

KT17 `cited_for = ["Sections "]` → `["Sections 3.6, 3.7"]`. The same recount added 3.7 to CGH20 (§3.7 cites its Theorem 3.2).

## F10 (P3) — applied differently

Old: "It is not preserved by cyclic base change in general." New: unlike branch (8a), the predicate claims no stability under cyclic base change, and the source notes that such stability is not evident. "Not known to be preserved" was not used, because it is a claim about the literature that CG18 lines 3538–3539 ("not obviously preserved") do not make.

## F11 (P3) — applied differently

The suggested block hypothesis is used, quantified over every x ∈ Q and also every Q′ ⊆ Q∖{x}, at base level Y₀(Q′) localized at m_{Q′}. Reason: with Q = {x₁, x₂}, the inductive step at x₂ uses the tower over Y₀(x₁), which the Q′ = ∅ condition misses. The tower index is renamed t.

## F12 (P3) — applied

- §3.6: O/ϖ^n becomes O/ϖᵇ.
- §2.4: Q_x(V_x) becomes Q̃_x(V_x).
- §4.1(3), χ side: e_{Q_N} becomes E_{Q_N}.

The same slips elsewhere were repaired; they are listed under "Pattern repairs".

## F13 (P3) — applied

- §0.5(3) now states, in every degree, H^i_χ(O/ϖᵃ)^∨_m ≅ H_{i,χ⁻¹}(O/ϖᵃ)_{m*} without boundary vanishing. The route is universal coefficients and self-injectivity of O/ϖᵃ. Its Needs are now ALS.1.5 and ALS.5a.4.
- A level-one Eisenstein Check was added.
- §2.3 drops "Under (b)" for the duality and keeps it for H_c ≅ H.
- §4.1 cites the universal-coefficient duality.

## Pattern repairs (other occurrences)

**F03.** Elsewhere:
- In §§2.1–2.4 and "How to read the build", "the supplied Conjecture B / local clauses / range clauses / comparison" now reads "CG18's Conjecture B(…)".
- The `Suggested.lean` docstring no longer says the endpoint is "consumed from" ModularityAndLanglandsExtensions §§2.7–2.8.
- The Downstream sentence about that roadmap is dropped.

**F04.** Elsewhere:
- The design slugs "ALS.1 arithmetic-local-system" (§0.1) and "ALS.3 (hecke-operator-formula, hecke-composition)" (§0.2) become ALS.1.1/ALS.1.2 and ALS.3.5/ALS.3.8.
- "its rank-n / big-image / completed-product supplier contract" (§§1.3, 1.6) and "the big-subgroup condition in the supplier contract" (§§1.6, 5.6) are replaced by the gap slugs.
- §4.4 "the simultaneous-image contract" now names gap:simultaneous-orbifold-hecke-finiteness, which is also added to the §4.4 Needs.

**F06.** Updated to match the new route:
- Scope.
- The new "From TauCetiRoadmap.FreeGroupsAndLimitGroups" contract.
- The ModularCurvesPartII contract.
- "From Mathlib" (`Monoid.PushoutI`, `groupCohomology.coindIso`).
- The Layer 3 Dependencies line.

**F07.** Elsewhere:
- CG18 §9.5 in §0.3 and CG18 §9.4 in the §3.6 heading.
- IntegralHeckeAndGaloisDeterminants §§3a.1/3b.1 in §0.6 and §2.1.
- ArithmeticGaloisDuality R02.x in §§1.1, 1.5 and 1.6.
- AutomorphicSpectralTheory §4.14a is no longer called "requested".
- The duplicate Needs entries in §5.1 and §5.5 are removed.

**F08.** Locators that fell on a page break or a neighbouring section:
- 3600 becomes 3607/3773 (Theorem 6.3, Proposition 6.6).
- 4184 becomes 4197/4326.
- 4330 becomes 4339 (three places).
- 4534 becomes 4494/4521 (§1.5) and 4543 (§1.6).
- 5156/5190 become 5161, 5164, 5168, 5200 and 5211.
- 5090 becomes 5097.
- In References, 4534/5100 become 4543/5027.

**F12.** Elsewhere:
- The §0.4 Check's Q_x(V_x) and §3.6's Q(V) become lifts.
- The coefficient exponent m, which collided with the maximal ideal m, becomes a throughout: quantifiers, dévissage, `directSum_{k,a}`, §3.3 "a = 2".
- In Layer 4 the exponent, which collided with the rank n and with the §4.4 clause labels (a)/(b), becomes s.
- The §3.4 route's vertices a, b become v₀, v₁.

**F13.** §0.5's Needs drop ALS.5a.2–ALS.5a.6 and ALS.4.1, which the new route does not use. §0.5 is added to the §2.3 Needs.

**Cross-finding.** The §1.4 Check is restated with the computed n = 2 witness: b_x = −1, and the deck class of diag(u,1) is u⁻¹.

## Checks

**Elaboration.** `lake env lean packages/AutomorphyLiftingBeyondTaylorWiles/Suggested.lean`, run from the content checkout, exits 0 with no messages. No `TauCeti.*` import was needed.

**Mechanical `#check @name` comparison.** `Suggested.lean` declares nothing, so there is nothing to compare. Only its docstring changed.

**Depcheck.** Final output:

    depcheck: 47 roadmaps, 523 edges, 0 problem(s)

There is no UPWARD, CYCLE or moved line.

An intermediate version named GL2ModularityLiftingPartII in Scope only as the owner of excluded material. It produced this line, which is a false positive, so the name was removed:

    moved: AutomorphyLiftingBeyondTaylorWiles moved in the merge order from #279 to #287, right after its last supplier GL2ModularityLiftingPartII; checked as moved (the worker moves it there when it submits)

**Citation resolution.** `roadmaps resolve` on the README reports no cross-roadmap citations and no Lean names found nowhere.

**Library names, checked at the pins.**
- `groupCohomology.coindIso`: `Mathlib/RepresentationTheory/Homological/GroupCohomology/Shapiro.lean` line 58. It gives Hⁿ(G, Coind_S^G A) ≅ Hⁿ(S, A) for S ≤ G and k commutative, with no finiteness or index hypothesis.
- `Monoid.PushoutI`: `Mathlib/GroupTheory/PushoutI.lean` line 60.

**Gate failures.** The worker's check flagged two README lines (tex=2), each with a brace subscript outside a code span. §0.5 Checks: `H₀(Y, k)_{m^*}` as plain text → `H_0(Y, k)_{m^*}`. §3.6 descent target: `m_{Q′}` as plain text → `m_{Q'}`. The README already writes these localized groups and ideals as code spans in the same form. Nothing else changed, and the mathematics is unchanged. After the edit, no brace subscript or superscript is left outside a code span. Depcheck was rerun after the edit and still reports `depcheck: 47 roadmaps, 523 edges, 0 problem(s)`. `Suggested.lean` was not touched, so the elaboration result above still holds.

## Adversarial pass on the statements added or changed

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| gap:localized-orbifold-range-duality | PSL₂(ℤ), p=3, unlocalized; neat level | H^{2j}(PSL₂ℤ,𝔽₃)=H^{2j}(C₃,𝔽₃)=𝔽₃ for all j≥1 > dim Y=2. Neat level: cd ≤ dim Y, so the bound holds unlocalized. | the bound needs localization at non-Eisenstein big-image m, as stated | stated with that m |
| gap:localized-orbifold-perfect-models | Δ=C_p, C=O[0] trivial; C=O[Δ][0] | trivial: C⊗^L k = H_*(C_p,k) = k in every degree, so not perfect; free: k in degree 0, perfect | the bounded-range hypothesis is what excludes the first | none |
| gap:simultaneous-orbifold-hecke-finiteness (trimmed) | T=O[x]/(x(x−1)) | IHG §2.2 gives T ≅ O×O and summands e·M | the local-factor clause is supplied | trimmed |
| §0.5(3) (no boundary hypothesis) | level one, ℚ, n=2, Eisenstein m, p>3 and p=3 | p>3: H⁰=k=H₀; H²_c(Y,k)_m=k but H²(Y,k)_m=0; ∂ cohomology ≠0 at m. p=3: H¹=Hom(ℤ/6,𝔽₃)=𝔽₃=ℤ/6⊗𝔽₃=H₁; H²=H²(C₃)=𝔽₃=H₂ | holds with p-torsion stabilizers; only H_c≅H needs (b) | hypothesis dropped; Check added |
| §0.5(3) twist | χ(g)=ζₚ | dual of O(χ⁻¹)/ϖᵃ is O(χ)/ϖᵃ; pairing ζₚ·ζₚ⁻¹=1 | homology uses χ⁻¹ | none |
| §2.3 interface | same as §0.5(3) | H^i ↔ H_i degreewise; H^i ↔ H^{d−i}_c only under (b) | consistent | "Under (b)" moved to H_c only |
| §3.2 structure theorem | F=ℚ, x=ℓ; SL₂(ℤ) | [PSL₂ℤ:Γ₀(ℓ)]=ℓ+1=valence; FreeGroups §4.8 recovers ℤ/4*_{ℤ/2}ℤ/6; PGL₂(ℤ[1/ℓ]) inverts an edge | holds, inversion excluded | Needs added |
| §3.4 tree route | q=7; trivial M | edge orbit G/Γ¹₀ → vertex orbit fibres of size q+1=8. ∂(edge sum) = A₂(v₁)+v₁−A₁(v₀)−qA₁(v₁)+qv₀ = F(v₁)−F(v₀); augmentations 8−7=1, 56−56+1=1. H⁰: (m,m)↦0 | exact; matches the stated sequence | route rewritten; vertex letters renamed |
| §3.6 coefficients | n=2, b=1 | statement uses b; tower index a; rank n untouched | no clash | renamed |
| §3.7 block condition | Q={x₁,x₂}; n=3, p=7, roots 1,2,4 | conditions (x₁,∅),(x₁,{x₂}),(x₂,∅),(x₂,{x₁}): 4. The Q′=∅ form gives 2 and misses base Y₀(x₁). 1·2·4=8≡1, so trivial central character is compatible. Q=∅: vacuous, conclusion is the identity | complete for the induction | Q′ added |
| §1.4 Check, n=2 | u ∈ p-part of k_x^× | b_x=(1−2)⁻¹=−1; deck class of diag(u,1) is u⁻¹ ↦ θ_x((u⁻¹)⁻¹)=θ_x(u); naive naming gives θ_x(u)⁻¹ (other line, det unramified) | agrees with GlobalGaloisDeformations §5.5 under u ↦ ⟨diag(u,1)⟩ | Check rewritten |
| §0.6 base-change Check | CG18 lines 3534–3539 | (8a) survives solvable base change unramified at p; (8b) is "not obviously preserved" | claim now matches the source | reworded |
| §0.4 Check, §2.4, §3.6 lifts | Q_x ∈ k[X] | Q_x(V_x) is undefined on O-modules; Q̃_x(V_x) is defined; the limit is independent of the lift (§0.4) | consistent | Q̃ |
| §4.1(3) χ side | V_x eigenvalue 1 line (§0.4 Check) | e_Q keeps the V=1 line; E_Q removes it | E needed on both sides | e→E |
| Exponent m→a, n→s | §2.6 "for fixed (Q,ψ,m) … O/ϖ^m (m ≥ 1) … m=1"; §4.4 clause "(b) … 1 ≤ b" | m means both ideal and exponent; b means both clause and exponent | collisions removed | renamed |
| Scope: Layer 2 vs ModularityAndLanglandsExtensions §2.7 | CG18 line 4579; MLE §2.7 | Res_{F/ℚ}PGLₙ vs GLₙ locally symmetric spaces | variant, not a strengthening | reworded |
| Downstream: CGH20 Thm 1.2 | CGH20 lines 71–85 | conclusion H¹_f(F, ad⁰r⊗K/O)=0 under Conj. B except (4) | description accurate | reworded |
| Locators | every CG18 line printed | e.g. 3235 Lemma 5.9; 3156 A(3); 3728 Thm 6.4; 5166 Thm 9.19; 4543 Prop 8.5; 5027 Thm 9.16 | all land on the cited statement | corrected |

## Ownership and sources

**Ownership.** A search by object (the Lyndon sequence for an amalgam, cohomology of amalgams) with `roadmaps grep` over main and the open heads found only ModularCurvesPartII §15.4, and that is principal-level over ℚ. So §3.4 stays a target here, as a kept variant. The structure theorem is FreeGroupsAndLimitGroups §§4.5/4.8, which is on main and cited.

**Sources.** No new source was fetched and none is missing, so no `needs-references.toml` was written. The review text contained no instructions beyond its claims.

## For the maintainer

- **Gap renamed and split.** `gap:localized-orbifold-perfect-duality` is replaced by `gap:localized-orbifold-range-duality` (ALS.5a.6) and `gap:localized-orbifold-perfect-models` (ALS.1.6). The section of `gap:simultaneous-orbifold-hecke-finiteness` is now "2.1".
- **ModularityAndLanglandsExtensions.** Its §2.8 still says of the Theorem 9.19 verification "These arithmetic verifications are owned here". This roadmap states Theorem 9.19 (§5.4) and the §9.5 verification as its own targets. Settling that sentence is for that roadmap, which is no longer a supplier here.
- **Stale `detail` text in plan.json.** The `res-pgl-distinct-eigenvalue-comparison` entry has no supplier; its object is this roadmap's own §3.7. Its `detail` still names the nonexistent AdjointSelmerGroupsFromModularityLifting and the design label BT.3. It is not a supplier gap, and the brief allows editing supplier gaps only, so it was left; deleting it is the maintainer's call.
- **Depcheck false positive.** The depcheck counts a roadmap named in Scope as owner of out-of-scope material as a supplier (the GL2ModularityLiftingPartII line above).
- **Names other roadmaps cite.** No Lean names changed. Layer and section numbers are unchanged. The supplier subsection "From TauCetiRoadmap.FreeGroupsAndLimitGroups" is new, and "From TauCetiRoadmap.ModularityAndLanglandsExtensions" is gone.
