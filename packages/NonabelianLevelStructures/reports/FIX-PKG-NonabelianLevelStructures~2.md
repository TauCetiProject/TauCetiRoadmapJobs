# FIX-PKG-NonabelianLevelStructures~2: repair report

Findings of `REV-PKG-NonabelianLevelStructures` (eleven, all P3). Files edited: `packages/NonabelianLevelStructures/README.md`, `packages/NonabelianLevelStructures/Suggested.lean`, the top-level `gaps` list of `packages/NonabelianLevelStructures/design/plan.json` (two entries, fields `section` and `detail` only). `metadata.toml` and `sources.toml` unchanged.

## F01 (P3) — applied

Verified at CHEN2024 line 3847 ("anti-homomorphism") and line 3848 (hooked arrow). §5.2 parenthetical: old "Chen's statement that the action is a homomorphism is corrected to an anti-homomorphism" → new "Chen displays the map with an injective arrow, but it is not injective, since γ₋ᵢ and every inner automorphism act trivially on triples." No other section repeats the old wording (grep for "corrected").

## F02 (P3) — applied

Verified at CHEN2024 line 4052 (dropped ≠; no "±2" in lines 4037–4071) and Lemma 5.2.9, line 3896–3899 (absolutely irreducible iff the Fricke value is a unit, so over a field iff commutator trace ≠ 2). §6.1: old "the trace is t ≠ 2 (not t ≠ ±2)" → new "absolute irreducibility is equivalent to commutator trace different from 2, not equal to 2". The added rotation-reflection case is kept unchanged.

## F03 (P3) — applied

Verified: the InverseGaloisAndArithmeticFundamentalGroups `Suggested.lean` at its open head (391 lines) contains no identifier matching "xterior"; the README target "Exterior epimorphisms and T-systems" (its line 2777) is prose. Supplier contract line: old "`ExteriorEpi`, the action of Out(F_r) …" → new "exterior epimorphisms as the classes of surjections F_r → G modulo inner automorphisms of G, the action of Out(F_r) …". Only occurrence.

## F04 (P3) — applied

Verified at the HeightsRationalPointsAndObstructions head: §4.6 "Mordell over number fields" names `mordell_finite` (README line 2051, `Suggested.lean` line 80); no `finite_rationalPoints`. Both occurrences (supplier contract, §7.4 *Needs:*) now read `mordell_finite`. The resolver's lead on this name is settled.

## F05 (P3) — applied

Verified at the LanglandsParameterStacks head: no "LP2" string; §2.1 "Coarse parameter quotients" (line 563) and §3.8 "Trace and excursion character comparison" (line 887, over an algebraically closed field of characteristic zero). Supplier contract paragraph rewritten with the two section numbers and titles; §5.1 *Needs:* and Layer 5 Dependencies: "LP2e.1" → "§2.1". `design/plan.json`, gap `integral-rank-two-invariants`: `section` "LP2c.7, Trace and excursion character comparison" → "§3.8, Trace and excursion character comparison", and the two labels in its `detail`. The README gap line itself carried no label and is unchanged.

## F06 (P3) — applied

Verified at the AlgebraicModuliForArithmeticGeometry head: §8.2 is "Formal effectivity, versality and algebraization" (line 9897); its node example is the fixed node with hull `k[[x,y]]/(xy)`, and lines 9789 and 10242 say the smoothing parameter belongs to a different functor; the smoothing hull is SchemeAndStackFoundations §4.6 `node_versal_deformation`, already cited. Deleted the "§8.2: the smoothing family x y = t" clause from the contract, "AlgebraicModuliForArithmeticGeometry §8.2" from §0.4 *Needs:*, and "§§5.1, 8.2" → "§§5.1, 8.3" in Layer 0 Dependencies (§8.3 is what §0.4's gap and the contract consume). Scope and ownership: "§§8.2–8.3 framed deformations and completed atlas presentations" → "§8.3 the comparison of framed deformations with completed local rings and atlas presentations".

## F07 (P3) — applied

Verified at the pin: `TauCeti.ClassificationStatement` is `def … : Prop` at `TauCeti/GroupTheory/SpecificGroups/CFSG/Classification.lean` line 54, with `classificationStatement_of_zero` at line 67; the CFSGStatement roadmap on main has Layers 1–6 and no "A0" (its Layer 6 defines a canonical proposition and proves it equivalent to the Tau Ceti one; nothing of it is consumed here). Deleted the "From TauCetiRoadmap.CFSGStatement" subsection; added the declaration to "From Tau Ceti" with its file, stating that it is a `Prop`-valued definition, not a theorem, that `TauCeti.classificationStatement_of_zero` transports it between universes, and that §4.2 uses its truth. §4.2 *Needs:*, Layer 4 Dependencies and Scope and ownership now cite Tau Ceti `TauCeti.ClassificationStatement`; the `detail` of the plan gap `vdovin-abelian-subgroups` likewise.

## F08 (P3) — applied

Verified at the InverseGaloisAndArithmeticFundamentalGroups head, line 2779: the action is `e ↦ e ∘ α⁻¹`. Added to Conventions: "InverseGaloisAndArithmeticFundamentalGroups §IG.3.2 writes the same action as the left action e ↦ e ∘ α⁻¹; the orbits, and hence every statement here, agree." Same pattern in the §3.1 API bullet on the anti-homomorphism: added that the orbits coincide with those of the supplier's left action. Reason the orbits agree: α ↦ α⁻¹ is a bijection of Aut(F₂) and of Aut⁺(F₂), so {e ∘ α} = {e ∘ α⁻¹}.

## F09 (P3) — applied

Verified on main: `TauCetiRoadmap/BelyiMaps/README.md` Layer 10 (line 3280) opens with an owner banner delegating it to `BelyiAlgebraicAndDescent`, which is not on main, not in `ORDER.txt` (zero matches) and not an open roadmap pull request; §10.4 exists at line 3418. Scope and ownership: "BelyiMaps Layer 10 owns Belyi's theorem" → "BelyiMaps Layer 10 §10.4 owns Belyi's theorem (that roadmap assigns the layer to a successor roadmap)"; the supplier contract says the statement is consumed as BelyiMaps states it. No gap added: the statement is on main.

## F10 (P3) — applied differently

Verified by brute force over all 9120 generating pairs of SL₂(𝔽₅): for both noncentral trace −2 classes (order 10, 2400 pairs each) every group A(G, u, h) ∩ ⟨[u⁻¹, h⁻¹]⟩ has order 2, so m′_c = 2 and d′_c = 1; no group of order 4 occurs. Deleted the false clause as asked, replacing it by "every pair in the family contributes the group {±1}". Differently: the clause's purpose, discriminating the least common multiple from a product, is restored by a new Check on the dihedral group of order 16 with c = ρ² of order 4, where the pairs (ρ, σ) and (σ, σρ) give groups ⟨ρ²⟩ of order 4 and {1, ρ⁴} of order 2, so m′_c = 4 (lcm), not 8 (product) and not 2 (a single pair); d′_c = 8/4 = 2. Computed by hand (A = ⟨ρ⟩ for the first pair since M = ⟨ρ⟩ and [ρⁱ, σ] = ρ²ⁱ; A = C(⟨σ, ρ²⟩) = {1, ρ⁴} for the second) and confirmed by the same brute force (group orders {2, 4}, m′ = 4, d′ = 2, 96 generating pairs). No Lean declaration added.

## F11 (P3) — applied

`Suggested.lean`: added `universe u` after the namespace line; `simple_group_congruence` now has `{G : Type u}` and `∀ (K : Type u) [Field K] [Finite K]`. Elaborates at the pin. Docstring and README statement unchanged (the README's §4.2 is universe-free; every finite field has a copy in every universe, so the `Type u` quantifier over K loses nothing).

## Checks

**Elaboration.** `lake env lean` on `packages/NonabelianLevelStructures/Suggested.lean` from the content checkout: two warnings, `declaration uses sorry` at lines 106 and 120, nothing else (6.3 s).

**Signatures.** A scratch copy of the file with `#check @name` for all nine declarations was elaborated once. Only `simple_group_congruence` changed: `{G : Type}` / `∀ (K : Type)` → `{G : Type u_1}` / `∀ (K : Type u_1)`; every other elaborated type is as in the previous signature record and matches its README statement (no section binder lost; `(r + 1) / 2` for ⌈r/2⌉ and `(ℓ ^ (r + 1)) ^ 3` for ℓ^{3(r+1)} as in §4.2).

**Dependency gate.** Output:

```
depcheck: 224 roadmaps, 2202 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line.

**Citations.** `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere (the two earlier leads, `vertical_kernel` and `finite_rationalPoints`, are gone: the first resolves at the AlgebraicModuliForArithmeticGeometry head, the second was F04).

**Gate failures listed in the brief.** None.

## Adversarial pass on added or changed statements

| Statement | Instances | Computed | Result | Change |
| --- | --- | --- | --- | --- |
| §5.2 non-injectivity (F01) | inner automorphism by w; γ₋ᵢ on (A, B) | conjugation by φ(w) fixes (tr A, tr B, tr AB); tr A⁻¹ = tr A, tr B⁻¹ = tr B, tr(A⁻¹B⁻¹) = tr((BA)⁻¹) = tr(BA) = tr(AB) | both act trivially on 𝔸³, map not injective | wording as reported |
| §6.1 irreducibility criterion (F02) | 𝔽₅, A = `[[0,1],[4,0]]`, B = `[[0,1],[4,2]]` (traces (0, 2, 3)) | Fricke value 0 + 4 + 9 − 0 − 2 = 11 ≡ 1 ≠ 2; group of order 120 (README §5.5 Check 4) | absolutely irreducible with commutator trace ≠ 2, consistent with Lemma 5.2.9 | wording as reported |
| Conventions / §3.1 orbit agreement (F08) | Aut(F₂), Aut⁺(F₂); C₂ pair (h, 1) | α ↦ α⁻¹ bijective on each group, so {e ∘ α} = {e ∘ α⁻¹}; C₂: both actions give the three nonzero pairs | orbits equal | sentence added |
| §3.2 Check, SL₂(𝔽₅) trace −2 (F10) | all 4800 generating pairs with [u, h] in the two trace −2 classes | A ∩ ⟨[u⁻¹, h⁻¹]⟩ = {±1} for every pair; m′ = 2; |C(c)| = 10, d′ = 1 | as now stated | clause replaced |
| §3.2 Check, dihedral group of order 16, c = ρ² (F10) | (ρ, σ); (σ, σρ) | [ρ, σ] = ρ², [ρ⁻¹, σ] = ρ⁻²; M = ⟨ρ⟩, A = ⟨ρ⟩, A ∩ ⟨ρ²⟩ of order 4; [σ, σρ] = ρ², h⁻¹σh = σρ², M = ⟨σ, ρ²⟩, C(M) = {1, ρ⁴} = A, [σ, ρ⁻¹σ] = ρ², A ∩ ⟨ρ²⟩ = {1, ρ⁴} of order 2; lcm of element orders {1, 2, 4} = 4; C(⟨ρ²⟩) = ⟨ρ⟩, d′ = 8/4 = 2; §3.3 modulus 4/gcd(4, 8) = 1 | matches `cuspVerticalExponent` (lcm of `orderOf` over the union of the groups) and the brute force | Check added |
| `simple_group_congruence` universe (F11) | G in `Type u`, K in `Type u` | elaborates; a finite field in any universe is isomorphic to one in `Type u` | README generality equals the Lean's | binders changed |
| Layer 0 Dependencies §8.3 (F06) | §0.4 *Needs:* | the only AlgebraicModuliForArithmeticGeometry items used in Layer 0 are §5.1, §8.3 (`schemeFramedCompletionEquiv`, `completedAtlasPresentation_equivalence`) and gap:geometric-point-completion | list agrees with the targets | §8.2 → §8.3 |

## Notes for the maintainer

- `TauCeti.ClassificationStatement` is a proposition with no proof at the pin, and the CFSGStatement roadmap's endpoint is a definition of CFSG, not its proof. The headline `simple_group_congruence` is stated unconditionally, as the source states it; its proof route uses the truth of the classification (through Vdovin's bound). The supplier contract now says this explicitly. The previous review judged this sound; no change was made beyond the citation.
- Names other roadmaps cite: none of this roadmap's Lean names changed. `simple_group_congruence` is now universe-polymorphic, which only widens what consumers may instantiate.
- Ownership against open pull requests was not re-examined beyond the resolver run and the supplier heads named in the findings; no new object was introduced (the dihedral Check is a worked example, not a target).
- No source was fetched and `sources.toml` is unchanged; no `needs-references.toml` entry was needed.
