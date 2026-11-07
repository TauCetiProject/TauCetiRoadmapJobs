# FIX-DESIGN-ModularCharactersAndBlocksPartII~2

Repair of the review `REV-DESIGN-ModularCharactersAndBlocksPartII` (seven findings). Files edited:
`packages/ModularCharactersAndBlocksPartII/design/README.md`,
`packages/ModularCharactersAndBlocksPartII/design/plan.json`,
`packages/ModularCharactersAndBlocksPartII/sources.toml`.

## F01 (P1) — applied

Verified: reynolds line 542 (Theorem 9) is stated "as an immediate corollary" of Theorem 8 (line 531), and martinez lines 2346–2349 derive Theorem 9.8 from Corollary 8.12. For abelian `D`, §8.3's formula gives `h(χ) = ν(1) = 0`.

Old → new: gap `ito-abelian-normal-degree` (plan `gaps`, README scope paragraph, "Recorded gaps", §8.4 route/*Needs*, Layer 8 Dependencies) → deleted. The §8.4 route now gets both directions from §8.3. *Needs:* §§6.3, 8.3; `TauCeti.card_irreducibleCharacters`, `TauCeti.Representation.finrank_dvd_card`; CharacterTheory §2.1. isaacs Theorem 6.15 removed from the References and the manifest.

## F02 (P1) — applied

Verified: no roadmap on main or at any open head states `χ(1)/θ(1) ∣ |G : N|`. `roadmaps grep` for "11.29", "χ(1)/θ(1)", projective-degree divisibility and "Itô" found nothing relevant. InductionRestriction Layer 7 (main, README lines 721–830) owns projective representations, the tensor factorisation and representation-group lifting, but states no degree divisibility. InductionRestrictionPartII (#1154) covers fixed fibres and multipliers only.

Old → new: plan `supplier: "none"` → `"InductionRestriction"`, section `"Layer 7"`; `needs` now names the supplier. README "### Recorded gaps" → a "What InductionRestriction must provide (gap:clifford-multiplicity-dvd-index): …" line under that supplier's contract. The route no longer refers to the deleted gap; it now goes through Schur's projective-degree theorem (reynolds line 538) and isaacs Theorem 3.12.

## F03 (P3) — applied

Verified: ORDER.txt line 105 (FiniteGroupInvariants) comes after line 89 (ModularCharactersAndBlocks). FiniteGroupInvariants §6.2 at its head (#1708) is the Galois-orbit version only (`card_quot_galoisConj_eq_card_division`), and no *Needs* line consumes it.

Old → new: the bullet under "Planned by other roadmaps, and imported" → moved to the "Not owned" sentence, saying that §1.3 here is the version for a group automorphism. No supplier edge.

## F04 (P3) — applied

Old → new: "uncertified" deleted at README §1.3, §2.4, §4.5 (two places), §6.2 (two places) and §8.1. The same pattern was also removed from the plan locators of targets 1.3, 2.4, 4.5, 6.2 (two) and 8.1. The status stays in `sources.toml` only. The References' "(cited by locator: …)" wording is kept.

## F05 (P3) — applied differently

Verified: the base §6.2 defect-zero bullet (ModularCharactersAndBlocks at #1775) lists the matrix-algebra form, `|G|_p ∣ χ(1)`, `Irr(B) = {χ}` and `IBr(B) = {χ⁰}`, not the vanishing. Base §3.1 does give the vanishing of `Φ_φ` on `p`-singular elements.

Old → new: the base §6.2 contract now says the vanishing follows from §3.1 and the block-diagonality of §4.2 via `Φ_{χ⁰} = χ`. The §8.2 route now cites base §3.1 at its use; its *Needs* already list §§3.1, 4.2. The proposal to add base §3.1 to §6.4 was not applied: §6.4 never uses the vanishing.

## F06 (P3) — applied

Verified: `Representation.isIntegral_character` is Mathlib (`Mathlib/RepresentationTheory/Character.lean` line 102, `[Finite G]`, any field). `TauCeti.cliffordObstruction` (`Obstruction.lean` lines 240–304) needs `[IsAlgClosed k]`, `[Simple A]` and `G : Type`, so the old §2.1 claim "vanishes under these hypotheses" (any field) was too general.

Old → new: `isIntegral_character` moved to the Mathlib items (§2.3 *Needs*, scope list, Mathlib contract). `TauCeti.cliffordObstruction_eq_zero_iff` dropped from plan 2.1 and the scope list. The §2.1 remark is now restricted to algebraically closed fields.

## F07 (P3) — applied

Verified: `arrowAction` (`Mathlib/Algebra/Group/Action/Basic.lean` line 103), for `[DivisionMonoid G] [MulAction G A]`, gives `smul g F a := F (g⁻¹ • a)`; it is a `def`, not an instance.

Old → new: in §1.1 and Conventions, "define the action" → "take Mathlib's `arrowAction`". `arrowAction` was added to the §1.1 *Needs*, the scope list, the Mathlib contract and plan 1.1's prerequisites. The action-law API bullet (plan `charSMul_mul`) was deleted.

## Checks run

Dependency gate (`tauceti-roadmap … gate --candidate packages/ModularCharactersAndBlocksPartII/design/README.md --only ModularCharactersAndBlocksPartII …`), after the edits:

```
candidate: ModularCharactersAndBlocksPartII is not in the merge order yet; checked as if placed after ModularCharactersAndBlocks (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2354 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line.

Citation resolver (`roadmaps resolve` on the README): no cross-roadmap citations and no Lean names found nowhere. The tool did not check Lean names outside TauCetiRoadmap, so I opened every library name this round adds or moves at the pins (Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`, matching `lake-manifest.json`):
- `arrowAction`: Mathlib `Algebra/Group/Action/Basic.lean` line 103;
- `Representation.isIntegral_character`: Mathlib `RepresentationTheory/Character.lean` line 102;
- `TauCeti.Representation.finrank_dvd_card`: `CharacterTable/Degree.lean` line 117, namespace `TauCeti.Representation`, over an algebraically closed field of characteristic zero;
- `TauCeti.card_irreducibleCharacters`: `CharacterTable/Table.lean` line 181, `Nat.card (irreducibleCharacters k G) = Nat.card (ConjClasses G)`;
- `TauCeti.cliffordObstruction` and `TauCeti.cliffordObstruction_eq_zero_iff`: `Induction/Clifford/Obstruction.lean` lines 304 and 318.

Lean: the design stage has no `Suggested.lean`, so there was no elaboration and no `#check @name` comparison. No Lean name of this roadmap's own appears in backticks in the README.

`plan.json` parses as JSON (it round-trips byte-identically before the edit). `sources.toml` parses as TOML.

Gate failures listed in the brief: none.

## Adversarial pass on the changed statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §8.4, "heights 0 ⇒ `D` abelian" (via §8.3 bound) | `SL(2,3)`, `p = 2`, `D = Q₈` | `Irr(Q₈)` degrees `1,1,1,1,2`; `θ_{χ₂} = χ₂` lies under the three degree-2 characters, height `1 ≥ ν(2) = 1`; so heights are not all `0`, and `Q₈` is nonabelian | holds (contrapositive) | route rewritten |
| §8.4, "`D` abelian ⇒ heights 0" (via §8.3 formula) | `A₄`, `p = 2`, `D = V₄`; `S₃`, `p = 3`, `D = C₃`; `D = 1` | `A₄`: `a = d = 2`, degrees `1,1,1,3`, `ν = 0,0,0,0`; `χ₃` restricted to `V₄` is the sum of the three nontrivial linear characters, `ν(1) = 0`. `S₃`: `a = d = 1`, degrees `1,1,2`, `ν₃ = 0,0,0`; `std` restricted to `C₃` is `λ + λ̄`. `D = 1`: `Irr(D) = {1}` | holds | Itô route removed |
| §8.4 step "`ν(ξ(1)) = 0` ⇒ `ξ` linear" | `D = C₂`, `Q₈`, `1` | `ξ(1) ∣ |D|`, so `ξ(1) ∈ {1, 2, 4, …}`; `ν = 0` forces `1`; for `Q₈` `ν(2) = 1 ≠ 0`; for `D = 1`, `1 = 1` | holds; needs `finrank_dvd_card` | added to *Needs* |
| §8.4 step "abelian ⇒ all linear" | `V₄`; `C₃` | `V₄`: `4` classes, `4` characters, `Σ ξ(1)² = 4` forces all `1`; `C₃`: `3 = 1+1+1` | holds | none |
| Gap: `χ(1)/θ(1) ∣ |G : N|` | `N = G`; `N = 1`; `S₃ ⊵ C₃`; `Q₈ ⊵ Z`; `SL(2,3) ⊵ Q₈`; `S₄ ⊵ V₄` | `1 ∣ 1`; `χ(1) ∣ |G|`; `std/λ = 2 ∣ 2`; `2 ∣ 4`; `χ₃/λ = 3 ∣ 3` and `χ₂ω/χ₂ = 1 ∣ 3`; degree 3 over a nontrivial `λ`: `3 ∣ 6`, degree 2 over `1`: `2 ∣ 6` | holds | supplier named |
| Gap, negative control (normality) | `S₃`, `N = ⟨t⟩` not normal | `std` restricted to `⟨t⟩` is `1 + sgn`, ratio `2`, `|G : N| = 3`, `2 ∤ 3` | fails, so `N ⊴ G` is needed and stated | none |
| Gap, wrong models | "`χ(1) ∣ |G : N|`"; "`∣ |G : G_θ|`" | `Q₈`, `N = Q₈`: `2 ∤ 1`; `Q₈`, `N = Z`, `θ` faithful and invariant: `2 ∤ |Q₈ : Q₈| = 1` | both wrong models refuted; the index `|G : N|` is right | none |
| Gap route: §8.3 use on `N ⊴ T` | `SL(2,3)`, `T = G`, `N = Q₈` | `ψ(1)/θ_ξ(1)` is `1` (degree 2 over `χ₂`), `3` (degree 3 over `λ`) or `1` (linear over `1`), each dividing `|T : N| = 3`, prime to `2` | holds | wording only |
| §1.1 with `arrowAction` | `C₇ ⋊ C₃`, `r ↦ r²`; `S = 1` | `s⁻¹ • r = r⁴` (`2·4 ≡ 1 mod 7`), `(s·χ)(r) = ζ₇⁴`; wrong model `χ(s • r) = ζ₇²`; `S = 1`: `1·χ = χ` | matches `F(g⁻¹ • a)`; `S` a group gives `DivisionMonoid` | cite Mathlib |
| §2.1 remark (obstruction) | `Q₈`, `A = C₂` by conjugation by `i`, over `ℂ` | extension `inr a ↦ c ρ(i)` with `c² = −1` exists, so the obstruction vanishes; `det = c² · det ρ(i) = −1`, so no determinant-1 extension | remark (existence ⇒ vanishing, algebraically closed only) agrees with the §2.1 Check | scope stated |
| §2.3 integrality | `SL(2,3)` | `χ̂` values `2, −2, 0, −1, 1` all in `ℤ`; `isIntegral_character` needs `[Finite G]`, and `Γ ⋊ S` is finite | holds | attribution only |
| Base §6.2/§3.1 vanishing | `S₃`, `p = 2`, `{std}`; `SL(2,3)`, `p = 3`, `χ₃`; control `B₀` of `S₃` at `2` | `Φ_{std⁰} = std`, `std(t) = 0`, `Φ(1) = 2 = |G|₂`; `χ₃ = 0` at orders 3 and 6; `Φ₁ = 1 + sgn ≠ 1`, and `1(t) = 1 ≠ 0` | holds; positive defect does not vanish | attribution added |
| §8.2 route (central characters of dominated defect-zero blocks) | `C₂ × C₃`, `p = 2`, `P = C₂` | blocks of `G/P = C₃` have defect zero; `ω(𝒞⁺) = |𝒞| χ(x)/χ(1)` vanishes wherever `χ(x) = 0` | holds | attribution added |

## Ownership, overlaps and sources

- Ownership against open work: `roadmaps grep` (main and all 464 open heads) found no owner for the Clifford divisibility, Itô's theorem or Isaacs Theorem 3.12. The gap goes to InductionRestriction Layer 7 on main, the roadmap that owns projective representations. No notion moved down; no new supplier edge besides that gap.
- `scratch/overlaps.md`: no open pull request changes this roadmap; no cited id is dropped; no id is defined only by an open revision. FiniteGroupInvariants (#1708, closest in vocabulary) owns only the Galois version of the permutation lemma (F03).
- Sources: no new text fetched; no `needs-references.toml` written. reynolds' locator gains line 538, and its `cited_for` gains the gap contract. isaacs drops Theorem 6.15; its `cited_for` "recorded gaps" now reads "gap:clifford-multiplicity-dvd-index".
- Untrusted text: the review contains no instructions beyond its findings; nothing suspicious.

## For the maintainer

- The only supplier gap is now `gap:clifford-multiplicity-dvd-index`, supplier InductionRestriction (on main), Layer 7. The intake should announce it on that roadmap's issue. §8.3's height formula and the "abelian ⇒ height zero" direction of the headline Reynolds' theorem (§8.4) depend on it. The converse direction of §8.4 does not.
- The deleted slug `ito-abelian-normal-degree` is cited by no other roadmap or package. No section, layer or target id of this roadmap changed.
- LocalFiniteGroupTheory (#1634, another author's new roadmap folder) is still a supplier (L1, L3). It is not in `ORDER.txt`, and the gate places this roadmap after ModularCharactersAndBlocks. That is unchanged by this round.
