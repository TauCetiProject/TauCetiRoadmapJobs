# Review of PrestableInfinityCategories (pull request #2270 at 7e04598)
Folder: `TauCetiRoadmap/InfinityCategoryTheory/PrestableInfinityCategories/`
**Verdict:** needs changes

## R01 (P2) — The pinned Tau Ceti supplier claims remain false

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/PrestableInfinityCategories/README.md:98`–104 and `Suggested.lean:22`: “Tau Ceti has limits and colimits in quasicategories”.
**Claim:** Previous R01 remains: the unchanged pin lacks `SSet.slice.IsLimit`, `SSet.coslice.IsColimit`, `SSet.IsFullyFaithful`, `SSet.catInfty` and `CategoryTheory.NatTrans.fibration_whiskerRight_forget_addCommGrpCat_of_epi`; the Moore theorem's path is also wrong.
**Witness:** At Tau Ceti `2fd255d997`, none of those five names occurs. `SSet.kanComplex_of_addGroup` occurs at `TauCeti/AlgebraicTopology/SimplicialSet/KanComplex/SimplicialGroup.lean:214`, not `SimplicialGroup/Basic.lean`.
**Repair:** Before acceptance, make the pinned supplier contracts true: supply the missing results through named earlier roadmap targets, or land the separate pin update and verify all five declarations there. Correct the Moore theorem's path and align the Scope, Conventions and module docstring.

## R02 (P3) — The replacement Mathlib inputs are missing from the contracts

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/PrestableInfinityCategories/README.md:142`: “this is Mathlib's `ObjectProperty.prop_X₂_of_exact`”; line 160 cites inverse-image instances.
**Claim:** The repairs cite the library in the target prose but omit the consumed theorem and instances from “From Mathlib” and the corresponding `Needs` lines. Previous R02 and R03 are incomplete on this point.
**Witness:** `Mathlib/CategoryTheory/Abelian/SerreClass/Basic.lean:62` supplies the exact-sequence theorem; line 70 supplies inverse-image Serre closure. `Mathlib/CategoryTheory/ObjectProperty/ColimitsOfShape.lean:260` supplies inverse-image colimit closure. README lines 83–95, 146 and 162 omit these inputs.
**Repair:** Add `CategoryTheory.ObjectProperty.prop_X₂_of_exact` and the inverse-image Serre instance from `Mathlib/CategoryTheory/Abelian/SerreClass/Basic.lean`, and `CategoryTheory.ObjectProperty.IsClosedUnderColimitsOfShape.inverseImage` from `Mathlib/CategoryTheory/ObjectProperty/ColimitsOfShape.lean`, to “From Mathlib”; name the applicable inputs in §1.1.1 and §1.2.1's `Needs` lines.

## R03 (P3) — References to the deleted Lean declarations survive

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/PrestableInfinityCategories/README.md:157`: “this is the form of the `Suggested.lean` declaration `IsLocalizingSerreClass`”; `Suggested.lean:13`–18 describes the deleted interfaces.
**Claim:** The README still claims a deleted definition exists. The module docstring still promises two definitions, the middle-exact theorem and localizing-kernel declarations; the file now has one definition and five theorems.
**Witness:** `TauCetiRoadmap/InfinityCategoryTheory/PrestableInfinityCategories/Suggested.lean:64`–105 contains six declarations, with `IsLocallyNoetherian` the sole definition. None of `isNoetherianObject_of_exact`, `IsLocalizingSerreClass`, `isLocalizingSerreClass_kernel` remains.
**Repair:** Delete the final clause of README line 157 that claims a Lean declaration. Replace the docstring's inventory with: “The file states the Serre-class theorem, the three exhaustion conditions, the Ind-description and compact-generation results, using the single definition of local Noetherianity.”

## R04 (P3) — The tower-limit repair has not reached its dependency list

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/PrestableInfinityCategories/README.md:397`, the `Needs` line of §3.3.2.
**Claim:** Previous R06 is partly repaired: line 395 now supplies the missing argument, but its three added prerequisites are absent from the target's dependency list.
**Witness:** `TauCetiRoadmap/ModelCategoryTheory/SimplicialCategories/README.md:590`, §3.2.1, and line 716, §4.2.1, at #2269 supply derived limits and matching maps; `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/README.md:356` supplies §3.2.1. None appears at line 397.
**Repair:** Append to that `Needs` line: “ModelCategoryTheory, Part SimplicialCategories §4.2.1 (injective fibrancy of towers) and §3.2.1 (homotopy limits); Part LimitsAndKanExtensions §3.2.1 (HTT, Thm. 4.2.4.1, applied dually).”

## R05 (P3) — The new notes file fails the roadmap-file gate

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/PrestableInfinityCategories/NOTES.md:1`.
**Claim:** This added file is outside the allowed roadmap-file set.
**Witness:** Both the worker's gate and the rerun report `stray-files=1`: `TauCetiRoadmap/InfinityCategoryTheory/PrestableInfinityCategories/NOTES.md: not a roadmap file`.
**Repair:** Delete it; sources are the README's references.

## R06 (P3) — The description omits the removed acceptance declarations

**Location:** Pull request description, “What is in it” and “Not statable at the pins”.
**Claim:** The description does not disclose that the repair removed two target theorems and their localizing-class definition from this folder's acceptance file.
**Witness:** The diff from `04df60e` deletes `isNoetherianObject_of_exact`, `IsLocalizingSerreClass` and `isLocalizingSerreClass_kernel` from `TauCetiRoadmap/InfinityCategoryTheory/PrestableInfinityCategories/Suggested.lean`; its inventory is now five theorems and one definition.
**Repair:** Add: “PrestableInfinityCategories now states five abelian headline theorems using one definition. The middle-exact theorem and localizing-kernel theorem, with their localizing-class definition, were removed from Suggested.lean; their mathematics remains in the README with the Mathlib inputs cited.”

## Previous findings

- R01 — not repaired: README lines 98–104 and Suggested.lean lines 22–24 still claim the unavailable Tau Ceti declarations; the pin remains `2fd255d997` (this report R01).
- R02 — partly repaired: the theorem is deleted and README line 142 cites `ObjectProperty.prop_X₂_of_exact`; the supplier contract and `Needs` entry remain incomplete (this report R02).
- R03 — partly repaired: both declarations are deleted and line 160 cites inverse-image instances; line 157 and the docstring retain obsolete declaration claims, and the contracts omit those instances (this report R02–R03).
- R04 — repaired: Summary line 27 requires the essential image to be closed under finite colimits and extensions; an empty image fails closure under the empty colimit.
- R05 — repaired: lines 114 and 626 now cite “HTT, Def. 4.4.5.4”.
- R06 — partly repaired: line 395 cites injective fibrancy, homotopy limits and the nerve comparison; line 397 omits these new dependencies (this report R04).
- R07 — repaired: line 722 supplies the common member, the two exclusive members, and the excluded stable category with its completion.

## Verified sound

| Statement | Instances tried | Left side / input values | Right side / output values | Result / change |
|---|---|---|---|---|
| Summary, §2.3.2: stable-envelope criterion | ∅; Sp≥0 inside Sp | Prestability: false; true | Image finite-colimit closure: false (0 absent); true, with extension closure | Empty counterexample excluded |
| §1.1.1: middle-exact consequence | ℤ/2 → ℤ⊕ℤ/2 → ℤ; ℤ → ℤ⊕ℚ → ℚ | Outer Noetherian flags: (true,true); (true,false) | Middle Noetherian: true; false; images give the stated short exact sequences | Deleted padding stays deleted; R02 |
| §1.2.1: localizing class | Torsion groups; finite groups | Serre closure: true in both | ⊕ℕ ℤ/2 is torsion but infinite; coproduct closure: true; false | Definition discriminates; R03 is the stale Lean claim |
| §1.2.1: exact-functor kernel | F = −⊗ℚ; F = identity | F(ℤ/2)=0, F(ℤ)=ℚ; identity(X)=X | Kernels: torsion groups; {0}; both Serre and coproduct-closed | Native instances apply; R02 |
| §3.3.2: completeness and tower route | A = finite free ℤ-modules; X=ΣHℤ | τ≤0 X=0; τ≤n X=X for n≥1 | π₁ lim τ≤n X=ℤ=π₁X; all eventual lim¹ terms vanish | Argument repaired; dependency list R04 |
| §4.3.1–2: repaired accessibility citation | Localizations identity and zero on Mod_ℤ^cn | Kernels: {0}; all objects | Accessible localizing classes: {0}; C; corresponding localizations identity; zero | §7.1.4 resolves |
| §4.5.1: explicit heart-data hypotheses | C=Mod_ℤ^cn, A₀=torsion groups | Ext¹(ℤ/2,ℤ)=ℤ/2; Extⁿ(ℤ/2,ℚ)=0 for every n | Hℤ excluded from E; Hℚ included; L(Hℤ)=Hℚ | Hypotheses retained |
| §4.5.2: minimal localizing kernel | A₀=0; A₀=Ab, C=Mod_ℤ^cn | E=D(ℤ); E=0 | L=id; L=0; C₀=0; C₀=C; hearts 0; Ab | Both extreme cases agree |
| §4.6.1: repaired left-fibration citation | Hℤ → Hℤ → …, maps multiplication by 2 | Ω∞ colim=discrete ℤ[1/2] | colim Ω∞=discrete ℤ[1/2] | §7.3.5 supplies the cited result |
| §5.1.1: Groth∞ and its left exact subcategory | Sp≥0 ↪ Sp; map 0→Hℤ | Fiber in Sp≥0: 0 | Fiber in Sp: Σ⁻¹Hℤ≠0 | Colimit-preserving inclusion excluded from lex; size citation resolves |
| §5.2.2: repaired relative-Kan citation | A a singleton; fiber Mod_ℤ^cn | E=Ecart=Mod_ℤ^cn | Reflector=id; fib(0→ΣHℤ)=Hℤ on both sides | §7.4.6 resolves, applied dually |
| §6.1.2: repaired retract locator | C=0; C=N(finite-dimensional k-vector spaces) | Prestability: true; false (Σ=0) | Ind(C)=0; N(Vect_k), respectively prestable; not prestable (Σ=0) | Both directions consistent; Def. 4.4.5.4 verified |
| §7.3.2: completion equivalence and new Checks | Mod_ℤ^cn; Sp≥0; U=Ind(Sp^fb_≥0); Sp | (complete,anticomplete): (T,T); (T,F); (F,T); (F,F) | Completions: Mod_ℤ^cn; Sp≥0; Sp≥0; Δ[0] | Three discriminating Checks; U compact objects truncated, sphere compact in Sp≥0 untruncated |
| Pinned supplier and acceptance-file inventories | Tau Ceti pin; head Lean file | README promises five missing suppliers; docstring promises two definitions | Suppliers found: 0/5; retained Lean declarations: five theorems, one definition | R01, R03, R06 |

Untouched statement rows stand as in the previous review of `04df60e`.

- Sources: 12 locators read against SAG and HTT, including the changed seeded targets §1.1, §2.3 and §4.5; SAG lines 71173, 71539, 73408, 73464, 73608, 75248, 76231; HTT lines 12161, 13488, 14138, 14432. Accessibility's HTT 5.4.6.6 read at line 21086.
- Libraries: opened Serre-class theorem/instance at `Mathlib/CategoryTheory/Abelian/SerreClass/Basic.lean:62`, :70; colimit inverse image at `Mathlib/CategoryTheory/ObjectProperty/ColimitsOfShape.lean:260`; kernel at `Mathlib/CategoryTheory/ObjectProperty/ContainsZero.lean:114`; Moore theorem at `TauCeti/AlgebraicTopology/SimplicialSet/KanComplex/SimplicialGroup.lean:214`.
- Cross-roadmap repairs: 8 distinct section/target references resolved at their supplied heads; resolver reports no missing cross-roadmap citation. Dependency output: `depcheck: 244 roadmaps, 2197 edges, 0 problem(s)`.
- Gate: worker and rerun fail on `stray-files=1`. The raw rerun also reports `outside-folder=39` for this PR's explicitly authorized family files; these are scope false positives. The diff outside the authorized family is empty.
- Lean: targeted build and direct elaboration pass with five `sorry` warnings; all six `#check @name` signatures were compared with the README, with no lost binders. Retained one-tactic checks stand from the previous review; both flagged padding theorems are gone.
- PR text: new-folder status, unchanged section numbering and supplier set agree with the head; deleted declarations are omitted (R06). No roadmap-main copy or conflicting open-head overlap is reported.
- Overlap check: read EnrichedLocalization, KanQuillen, SimplicialCategories, ModelCategories (#2269), EnhancedDerivedSheaves (main and #1630), BordismFormalGroups and StableHomotopyKTheory; tower/model inputs belong to ModelCategoryTheory, prestable refinements here; no second owner of changed targets.
- Source independence: 8 changed passages only compared with 2 sources, no copied expression or reused material found; largest share SAG, 331 of 802 explicit source tags before References. No layer added, removed or reordered; the independent-arrangement check of `04df60e` stands.

## Not verifiable

- The newer Tau Ceti commit named in the PR description was not checked; the supplier verdict concerns the actual pin. No changed source passage was unavailable.

## Source issues

- **Misprint** in SAG at Proposition C.5.2.8, proof of (d), printed p. 2015: the source says the right-completeness criterion has an unresolved proposition number; it should be a resolved reference to the right-completeness criterion for accessible t-structures compatible with filtered colimits; affects nothing.

## For the human reviewers

- Scope: SAG and HA are author's PDFs, dated 3 February 2018 and 18 September 2017, rather than published books; HTT is published. Every prestable target uses SAG Appendix C as its source.
- Licence: SAG and HTT were read from the author's math.ias.edu page; no reuse licence is stated. The previous review reports the same for HA.
- The description requests a separate Tau Ceti pin bump. This folder's Lean file builds at the actual pin, but its README claims unavailable suppliers (R01).
- The description leaves ownership conflicts involving BordismFormalGroups §F6.5, EnhancedDerivedSheaves and #1807 to maintainers; no changed object of this folder duplicates their targets.
