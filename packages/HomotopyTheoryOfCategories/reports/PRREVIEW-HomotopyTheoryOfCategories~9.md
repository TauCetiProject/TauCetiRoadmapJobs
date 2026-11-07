# Review of HomotopyTheoryOfCategories (pull request #1521 at 7ac47f9)

**Verdict:** needs changes

Incremental re-review of the 33 lines changed since 22bd6b0: README supplier table, Mathlib contract list, the deleted BordismFormalGroups contract, 8.3 (including a new "Not a target" paragraph), Layer 8's Dependencies and the References; `Suggested.lean` line 291 and a re-wrap of the module docstring (lines 66–68). No file changed outside the folder (`git diff --stat origin/main...HEAD` excluding the folder is empty). The folder holds `README.md`, `Suggested.lean` and `metadata.toml`.

Both previous findings are repaired. The new paragraph in 8.3 drops the hypotheses of the theorem it cites (R01). Deleting the whole BordismFormalGroups row also removed the only named owner of the Reedy model structure, which the scope's boundary sentence still points to (R02).

## R01 (P2) — 8.3's cofibrant-generation remark claims the result for "any Reedy category"; both sources need small categories, and Riehl–Verity need `ℕ`-valued degrees

Location: `TauCetiRoadmap/HomotopyTheoryOfCategories/README.md` lines 1030–1033: "for a cofibrantly generated model category `M` and any Reedy category `C`, the Reedy model structure on `M^C` is cofibrantly generated … boundary inclusions `∂C^c ↪ C^c` … No model structure is built here."

Claim: the statement holds for every Reedy category in this roadmap's sense.

Witness: in this roadmap a Reedy category is a category of any size with a Mathlib `ReedyStructure` whose degree takes values in any well-founded order (Scope: "Layers 7–8, for arbitrary categories"; 7.2 allows ordinal degrees). Riehl–Verity's Definition 2.1 (TAC text line 411, p. 264) requires a small category with an `ℕ`-valued degree. The proof of their Proposition 7.7 (TAC lines 1816–1817, p. 291) uses that `B` is a set because `C` is small. Two counterexamples:

- A large discrete category gives a proper class of boundary inclusions, so no generating set.
- The poset `ω + 1` has no `ℕ`-valued degree (README 7.3), so Proposition 7.7 does not cover it.

There are two further problems in the same paragraph:

- `C^c` and `∂C^c` are defined nowhere in the README.
- "No model structure is built here" contradicts 5.4, which builds Thomason's model structure. In the scope's own wording "here" means this roadmap (line 70).

Repair: replace lines 1030–1033 by: "Not a target: for a cofibrantly generated model category `M` with generating sets `I`, `J`, and a small category `C` with an `ℕ`-valued Reedy structure, the Reedy model structure on `C ⥤ M` is cofibrantly generated. Its generating sets are the pushout-products of `I`, respectively `J`, with the inclusions `∂C(c, −) ↪ C(c, −)` for `c ∈ C`, where `∂C(c, −)` is the subfunctor of morphisms out of `c` that factor through an object of degree `< deg c` (Riehl–Verity, TAC 2014, Definition 2.1, Lemma 3.17, Corollary 6.7 and Proposition 7.7; Hirschhorn 2003, Theorem 15.6.27). No Reedy model structure is built in this roadmap."

- To keep ordinal degrees, first open Hirschhorn's definition of Reedy category and confirm that his 15.6.27 allows them, then cite it alone for that case.
- Checked on both counterexamples: the repaired text excludes the large discrete category (not small) and `ω + 1` (no `ℕ`-valued degree).
- Checked on `C = [1]` with `M = SSet`: it still gives the projective generators (table below).

## R02 (P3) — the boundary sentence assigns "the Reedy model structure" to an owner that the table no longer names

Location: `TauCetiRoadmap/HomotopyTheoryOfCategories/README.md` lines 71–73: "if it … is about simplicial sets or spaces alone, about the Reedy model structure, about topoi, or about stacks on schemes, it belongs to the owner named above."

Claim: the table above names an owner of the Reedy model structure.

Witness: the deleted row (at 22bd6b0, line 63) carried "latching and matching objects, the Reedy model structure, Bergner and Joyal model structures | BordismFormalGroups, F6.5". Only its first clause, the simplex Reedy structure, moved to Mathlib.

- The previous review's repair asked for the whole row to be deleted. That was too broad and is corrected here.
- No remaining row names an owner of Reedy model structures. The new 8.3 paragraph names none either.
- The owner on main is BordismFormalGroups F6.5 (README lines 1692–1694, on the Bergner model only). The open revisions #1807, #1808 and #1854 move that passage to GeneralizedCohomology G2, so citing F6.5 again would go stale.

Repair:

1. In the boundary sentence, delete "about the Reedy model structure,".
2. Append to **Out of scope**: "Reedy model structures on diagram categories, their latching and matching objects and their cofibrant generation (recalled in 8.3)".

This removes the dangling reference without citing an id that is moving. Checked against the text: after the edit, every clause of the boundary sentence that sends material elsewhere has a row in the table or an Out of scope entry.

## Previous findings

- R01 — repaired: `Suggested.lean` line 291 reads "`p.IsHomLift g.asIso.hom φ →`". The file elaborates with exit 0 and 52 `declaration uses sorry` warnings and nothing else. `#check` prints the statement the README gives in 1.4.
- R02 — repaired, but the repair introduced a new problem (R02 above): 8.3 reads "`SimplexCategory.reedyStructure` is Mathlib's (`Mathlib/AlgebraicTopology/Reedy/SimplexCategory.lean`)". `*Needs:*` is "7.4; Mathlib `SimplexCategory.reedyStructure`". The Mathlib contract has the new bullet, and Dependencies reads "Mathlib `SimplexCategory.reedyStructure` for 8.3–8.4". No occurrence of BordismFormalGroups is left in the folder.

## Verified sound

**Gate and build.**

- The worker's gate at this head reports every check 0 and `OK`.
- My own run of the gate reports every text scanner 0. Its `depcheck=1` is "NOT IN ORDER: HomotopyTheoryOfCategories", read from the public merge order. That order does not list this roadmap yet, which is not a finding.
- The dependency check against the candidate order prints `depcheck: 240 roadmaps, 2371 edges, 0 problem(s)`, with no UPWARD, CYCLE or `moved:` line. In that order the roadmap is at 14, after StableHomotopyKTheory at 13.
- `lake env lean` on `TauCetiRoadmap/HomotopyTheoryOfCategories/Suggested.lean` exits 0, with 52 `sorry` warnings and no other message.
- Line 291 has 97 characters.

**Signatures.**

- `#check @IsGroupoidFibration.mem_range_mapAut_iff` (scratch file importing the built module) prints `∀ {E B} [Groupoid E] [Groupoid B] {p}, IsGroupoidFibration p → ∀ x (g : Aut (p.obj x)), g ∈ (Functor.mapAut x p).range ↔ ∀ y φ, p.IsHomLift g.asIso.hom φ → Quotient.mk'' y = Quotient.mk'' ⟨x, ⋯⟩`, as the README states.
- The worker's 41 "looks dropped" leads are renderings of the universe names. Spot-checked `idempotent_tfae`, `mem_range_mapAut_iff`, `IsCofibrationCategory` and `brown_factorization`: every instance binder is present.

**One-tactic probe on the changed theorem.** `mem_range_mapAut_iff` closed by `simp` leaves `(∃ x_1, mapAut x p x_1 = g) ↔ …`. `aesop` fails after exhaustive search and `rfl` fails, so it is not padding.

**Library declarations opened at the pins** (Mathlib `1b1ccf4b`):

- `SimplexCategory.reedyStructure` (`Mathlib/AlgebraicTopology/Reedy/SimplexCategory.lean` line 42, `deg := len`; `#print` shows type `ReedyStructure (epimorphisms SimplexCategory) (monomorphisms SimplexCategory) ℕ`).
- `HomotopicalAlgebra.ReedyStructure` (`Reedy/Basic.lean` line 45, on any `C : Type*`, degree in any well-founded `α`; no smallness), and `ReedyStructure.op` (line 64, `ReedyStructure W₂.op W₁.op α`).
- `Aut` as a structure with `asIso` (`CategoryTheory/Endomorphism.lean` lines 123–125) and `Functor.mapAut`.
- Grep of the pinned Mathlib and Tau Ceti: the only Reedy files are `Reedy/Basic.lean` and `Reedy/SimplexCategory.lean`. There is no Reedy model structure, no truncated or augmented Reedy structure, and no "cofibrantly generated" anywhere. 8.3's own targets and the "not a target" status of cofibrant generation therefore duplicate nothing.

**Sources read for the changed passages.** Riehl–Verity, both versions:

- arXiv v3 (cache): Proposition 7.7 at line 1598, p. 35; Corollary 6.7 (`B` = the boundary inclusions of the covariant representables) at line 1446; Observation 3.15 and Lemma 3.17 (the boundary as the `(deg c − 1)`-skeleton) at lines 729–760.
- TAC 29 (2014), fetched from the journal's open site for this review: Definition 2.1 at line 411, p. 264 (small, `ℕ`-valued); Proposition 7.7 at line 1806, p. 291; the smallness step at lines 1816–1817.
- The TAC numbering of 2.3–2.7 (lines 422–446) and of 7.7 agrees with the arXiv numbering the References note uses.
- The Hirschhorn bibliographic entry (Mathematical Surveys and Monographs 99, AMS, 2003) is correct.

**Cross-roadmap citations resolved this round.**

- GrothendieckInfinityGroupoids 0.1 at its open head (`roadmaps show`): line 169. Its downstream table (line 595) and its scope (lines 52–58) send direct and Reedy categories to this roadmap's Layers 7–8, and model structures to Mathlib and GeneralizedCohomology G2.
- BordismFormalGroups F6.5 on main (lines 1526–2569) holds the Reedy model structures on the Bergner model (1692–1694). At #1807 that passage sits in GeneralizedCohomology G2 (line 824), and BordismFormalGroups no longer mentions Reedy.
- The overlap report lists no pull request changing this roadmap, no dropped id and nothing only an open revision defines. The citation report finds every cross-roadmap citation. Its 32 Lean-name leads are this roadmap's own declarations in `Suggested.lean` and `Stack.stackification` (SchemeAndStackFoundations §1.18 on main), as in the previous rounds.

**Ownership.**

- HigherToposTheory (open, new roadmap) states the general Reedy model structure (its F1.8, README lines 734–766). After the repair this roadmap owns no Reedy model structure, so the object is not owned twice.
- Pull request description: it still lists "BordismFormalGroups F6.5 (the simplex Reedy structure)" among the consumed suppliers. The README no longer does; the description is not part of the folder.

**Adversarial table.**

- Rows for statements the diff leaves untouched are carried forward unchanged: the 49 rows of PRREVIEW-HomotopyTheoryOfCategories~7 (0.1–13.3) and the 1.4, 4.1, 4.6 and 12.6 rows of ~8.
- Below, every changed statement is recomputed.

| Statement | Instance | Computed | Result |
| --- | --- | --- | --- |
| 1.4 `mem_range_mapAut_iff` (`g.asIso.hom`) | `E` indiscrete on `{a, b}`, `B = SingleObj (ℤ/2)`, `p(a → b) = σ` | `p` is a fibration; `Aut(a) = 1`, range `{1}`; fibre over `★` is discrete `{a}, {b}`. `g = σ`: LHS false; the only lift out of `a` is `a → b`, `[b] ≠ [a]`, RHS false. `g = 1`: LHS true; the only lift is `𝟙_a`, RHS true | true both ways; signature as README |
| 1.4 same | `p = 𝟭 G`, `G` a group | range = `Aut ★`; fibre `{★}`, every lift ends at `★` | both sides true |
| 8.3 Check 1 on the pinned structure | `(0,1,2) ↦ (0,0,2)` | `[2] ↠ [1]` lowers `len` from 2 to 1 (`lt₁`), `[1] ↪ [2]` raises it from 1 to 2 (`lt₂`); middle degree `1` | agrees with the pin |
| 8.3 Check 3 | `Δᵒᵖ` | `reedyStructure.op : ReedyStructure (monomorphisms _).op (epimorphisms _).op ℕ`; lowering class = monomorphisms of `Δ` reversed | agrees |
| 8.3 Check 2 | augmented, `[−1] → [0]` | degrees `len + 1`: `0 → 1`, raising | agrees (unchanged) |
| 8.3 remark (R01) | `C = [1]` direct, degrees `0, 1`; `M = SSet` Kan–Quillen | `∂C(0, −) = ∅` (nothing below degree 0); `∂C(1, −) = ∅` (no map `1 → 0`); generators `C(c, −) ⊗ ∂Δ[n] → C(c, −) ⊗ Δ[n]`, the projective ones (Reedy = projective on a direct category) | repaired text gives the right set |
| 8.3 remark (R01) | `C = {a → b}`, `deg a = 1`, `deg b = 0` | `∂C(a, −) = C(b, −)` (`a → b` factors through `b`), `∂C(b, −) = ∅`; the generator at `a` is `(A → B) ⇒ (B = B)`; RLP ⇔ `X_a → Y_a ×_{Y_b} X_b` is a trivial fibration | matching condition; repaired text right |
| 8.3 remark (R01) | `C` large discrete, all degrees `0` (a Mathlib `ReedyStructure`) | the boundary inclusions form a proper class; Riehl–Verity's proof needs a set (TAC 1816–1817) | "any Reedy category" fails |
| 8.3 remark (R01) | `C = ω + 1`, direct, degree = rank | `ω` has infinitely many predecessors, so no `ℕ`-valued degree (7.3); Riehl–Verity Definition 2.1 excludes it | not covered by Proposition 7.7 |
| 8.4 from 8.3 | `⦋n⦌ₛ ⟶ ⦋m⦌ₛ` | non-identity monomorphisms raise `len` (`lt₂` at the pin) | `exists_reedyStructure_len` unchanged and statable |

## Not verifiable

- Hirschhorn 2003, Theorem 15.6.27 (cited in 8.3). The sources service found no legal copy: the DOI resolves to the AMS e-book page, which is paywalled. Its statement, and whether his Reedy categories allow ordinal degrees, were not checked. R01's repair rests on Riehl–Verity, which was read.
- Brown–Heath–Kamps 1983, Brown–Spencer 1976 and Joyal–Street 1993 are `uncertified` in the manifest and cited by locator. 1.4's change is a carrier repair, and its exactness is recomputed above from the pinned definitions.

## Source issues

- none
