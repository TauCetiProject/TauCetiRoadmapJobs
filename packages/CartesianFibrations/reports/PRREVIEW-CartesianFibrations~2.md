# Review of CartesianFibrations (pull request #2270 at 7e04598)
Folder: `TauCetiRoadmap/InfinityCategoryTheory/CartesianFibrations/`
**Verdict:** needs changes

Previous review (at 04df60e), finding by finding: R01 not repaired (R01 below); R02 repaired in `Suggested.lean` (`Edge.isCartesian_id` is gone) and in §1.3.1, with a build-order remainder (R05); R03 not repaired (R02); R04 not repaired (R03); R05 repaired in the statement and the signature, the docstring still reads "Over an ∞-category" (R08); R06 repaired for §4.1.1 (lines 281, 312, 850 now cite `SSet.slice.homEquiv`), not for the other lines (R06); R07 repaired for "manual" (line 632 now reads "not stated in the sources"), not for §3.2 or the docstring list (R07, R08).

## R01 (P1) — The gate still fails: `Suggested.lean` does not build at the pinned Tau Ceti

**Location** `Suggested.lean` lines 9, 11, 12 (imports) and 92, 141, 245, 317, 325, 367; `README.md` lines 49 and 178–192 (`### From Tau Ceti`).
**Claim** Every imported module and every cited Tau Ceti declaration exists at the pin (`lake-manifest.json`, Tau Ceti 2fd255d).
**Witness** Gate: `imports=3`, `build=7`. Absent at the pin: `SSet.Edge.opEquiv`, `SSet.RightFibration`, `SSet.LeftFibration`, `SSet.QCat.IsCategoricalEquivalence`, `TauCeti.MarkedSSet.ofEdges`, `markedAnodyneExtensions`, `SSet.Edge.isEquivalence_iff_hornFilling_zero`, `SSet.rightFibration_pullbackObjObjπ`.
**Repair** Replace the imports of lines 9, 11, 12 by `public import TauCeti.AlgebraicTopology.SimplicialSet.Marked.Basic` (needed by `markedCofibrations`). Delete `Edge.IsCocartesian`, `isCategoricalEquivalence_pullback_map_of_fiber`, `rightFibration_iff_cartesianFibration`, `isCategoricalEquivalence_iff_qcat`, `natural` and `cartesianFibration_iff_rlp_markedAnodyneExtensions`, and name each in the module docstring as not statable at the pin, with the missing carrier. In the README drop the backticked claims for these six, and in `### From Tau Ceti` and line 49 state the eight absent declarations as what the roadmap needs in prose, not as declarations at the pin. Tested: the file so changed elaborates at the pin, 27 theorems, `sorry` the only warning.

## R02 (P2) — Objects owned by BordismFormalGroups §F6.5 on main are planned again without a citation

**Location** `README.md` §1.1.1, §1.7.2, §2.5.1, §3.1.2, §5.2.1, §5.7.1–5.7.2, §5.8.1, §5.8.3, §5.8.5; `## Scope and ownership` (lines 37–64) names no roadmap outside the two families.
**Claim** This roadmap owns coCartesian edges and fibrations, the mapping-space and fiberwise criteria, slice invariance, the marked anodyne generators and the Cartesian and coCartesian marked model structures over S with their fibrant objects and simplicial enrichment.
**Witness** Main, `TauCetiRoadmap/BordismFormalGroups/README.md` lines 1905–1916 and 1944–1972 plan each of these; `TauCetiRoadmap/EnhancedDerivedSheaves/README.md` line 362 consumes them from there.
**Repair** In `## Scope and ownership` name BordismFormalGroups §F6.5, headings "Unmarked straightening and the categorical model" and "Marked fibrations and Kan extensions", as the owner of the listed objects; delete the targets it states and cite them by that roadmap and heading, keeping a variant only with one clause saying how it differs. A roadmap on main is earlier than this one; the transfer of ownership the pull request description proposes is under `## For the human reviewers`.

## R03 (P2) — The layers follow the table of contents of HTT §2.4–§3.3.1

**Location** `README.md`, the seven `## Layer` headings and their `###` sections (unchanged since 04df60e).
**Claim** The organisation is the roadmap's own, worked back from its end theorems.
**Witness** Layer 1 ↔ §2.4.1; Layer 2 ↔ §2.4.2–2.4.4; Layer 3 ↔ §2.4.5–2.4.6; Layer 4 ↔ §2.4.7; Layer 5 ↔ §3.1 (5.2–5.3 ↔ 3.1.1, 5.4 ↔ 3.1.2, 5.5–5.7 ↔ 3.1.3, 5.8 ↔ 3.1.4, 5.9 ↔ 3.1.5); Layer 6 ↔ §3.2.2; Layer 7 ↔ §3.3.1.
**Repair** The `*Needs:*` lines force only: §2.2.1 after §1.2.1 and §1.4.1; Layer 5 after §1.2–1.4, §2.2 and §3.4; §6.2.1 after §5.3.1; §7.1.1 after §6.3.2. Nothing in Layers 5–7 needs Layer 4, §2.4, §2.6, §2.7 or §3.1. Reorganise by what the five headline theorems need: (a) edge and fibration criteria (§1.1–1.6, §2.1–2.3, §2.6); (b) mapping spaces and fiberwise equivalences (§1.7, §2.5, §2.7, §3.1); (c) the marked model structure, its sections cut by what Layers 6–7 consume; (d) mapping simplices and base change (Layer 6, §7.1–7.2); (e) categorical fibrations, fiberwise criteria and sections (§3.3–3.4, §7.3–7.5); (f) bifibrations, arrow ∞-categories and functor fibrations (Layer 4, §7.6). Cite further sources for the main results: Kerodon, §5.1.1 (Cartesian edges) and Def. 5.1.4.1 (tag 01UA, Cartesian and coCartesian fibrations), with the matching statements of its §5.1 for the criteria; Ayala–Francis, *Fibrations of ∞-categories*, arXiv:1702.02681, for correspondences (§4.1).

## R04 (P3) — A file in the folder that is not a roadmap file

**Location** `TauCetiRoadmap/InfinityCategoryTheory/CartesianFibrations/NOTES.md` (57 lines, added since 04df60e): "Notes on the CartesianFibrations draft (private)".
**Claim** The folder holds only `README.md`, `Suggested.lean` and `metadata.toml`.
**Witness** Gate: `stray-files=1`, "NOTES.md: not a roadmap file". The file is drafting narrative (plan labels, dates, word counts, a pin-bump list).
**Repair** Delete it; sources are the README's references. What a reader needs from its last section is R01's repair.

## R05 (P3) — §1.3.1 states a result that needs §2.3.2, and §5.3.1 uses it without a `*Needs:*` entry

**Location** `README.md` lines 290–291: "For a Cartesian fibration over any base the same holds: a degenerate edge is locally p-Cartesian (§1.6, second Check), and locally Cartesian edges of a Cartesian fibration are Cartesian (§2.3.2)."; line 810: "Degenerate edges are p-Cartesian (§1.3)".
**Claim** §1.3.1 needs only §1.2.1, `SSet.Edge.IsCartesian.comp` and InfinityCategoryFoundations §5.1, §2.3.1 (line 298); §5.3.1 needs only §2.2.1 beyond the library (line 822).
**Witness** The quoted sentence uses §1.6.1 and §2.3.2 (HTT, Prop. 2.4.2.8), which is later than §1.3 and itself needs §1.4.1, which needs §1.3.1.
**Repair** Move the sentence to §2.3.2 as a consequence of the composite criterion: "In particular every degenerate edge of X is p-Cartesian for a Cartesian fibration p over any base: it is locally p-Cartesian, being `(𝟙 x, ι)` in `X_{p x} × Δ[1]` (§1.6.1, §1.3.1 in the fiber)." Keep the counterexample for inner fibrations in §1.3.1 as a Check. In §5.3.1 write "(§2.3.2)" and add §1.6.1 and §2.3.2 to its `*Needs:*` line.

## R06 (P3) — Supplier targets still cited for statements they do not make

**Location** `README.md` lines 495, 504, 514: "§2.1.6 (HTT, Def. 1.1.5.14; Def. 1.2.10.1, full faithfulness)"; lines 563–564: "§2.1.8 (HTT, Def. 1.2.10.1, full faithfulness, and HTT, §5.1.3, the opposite comparison)"; line 1028: "§5.6.1 (HTT, Defs. A.3.2.12, A.3.2.16)".
**Claim** InfinityCategoryFoundations §2.1.6 defines full faithfulness and §2.1.8 the opposite comparison; SimplicialCategories §5.6.1 defines excellent model categories.
**Witness** `TauCetiRoadmap/InfinityCategoryTheory/InfinityCategoryFoundations/README.md` line 729: full faithfulness is §2.1.8; line 639: the opposite comparison is §2.1.2. SimplicialCategories: HTT, Def. A.3.2.16 is §5.6.2.
**Repair** Lines 495, 504, 514: "§2.1.6 (HTT, Def. 1.1.5.14) and §2.1.8 (HTT, Def. 1.2.10.1, full faithfulness)". Lines 563–564: "§2.1.8 (HTT, Def. 1.2.10.1, full faithfulness) and §2.1.2 (HTT, §5.1.3, the opposite comparison)". Line 1028: "§5.6.1 (HTT, Def. A.3.2.12) and §5.6.2 (HTT, Def. A.3.2.16)".

## R07 (P3) — A section without a target, and a definition without its `*Needs:*` line and third Check

**Location** `README.md` §3.2 (lines 573–580): "this Part cites them there. No other section of this Part uses them."; §5.5.1 (lines 855–858).
**Claim** Every section holds a target; every definition has its dependencies and at least three discriminating Checks.
**Witness** §3.2 states nothing and carries a `*Needs:*` line for no target; its lemmas are InfinityCategoryFoundations §9.5.2, already deferred at line 52. §5.5.1 has no `*Needs:*` line; of the Checks after §5.5.2 only the second and fourth test it.
**Repair** Delete §3.2 (the deferral at line 52 stays), renumber §3.3–3.4 as §3.2–3.3, add under Conventions "The former §3.3 is now §3.2 and the former §3.4 is now §3.3", and update the citations of these two sections in the sibling Parts of this pull request. §5.5.1: add "*Needs:* Tau Ceti `TauCeti.MarkedSSet`, `TauCeti.MarkedSSet.sharp`; Mathlib `CategoryTheory.Over`." and the Check "Over S = Δ[1] there is no morphism from `{0}^♭` to `{1}^♭`, although there is exactly one map of the underlying marked simplicial sets: morphisms commute with the maps to S."

## R08 (P3) — Two docstrings disagree with the statements they head

**Location** `Suggested.lean` line 387: "**Lemma F.** Over an ∞-category, a categorical equivalence between categorical fibrations is a categorical equivalence on every fiber."; line 47: "statable but not stated here", a bullet of the list "Not statable at the pins".
**Claim** The docstring states the mathematics of its declaration; the list names what is not statable.
**Witness** `isCategoricalEquivalence_fiber_of_categoricalFibration` elaborates with `{X Y C : SSet}` and no `[C.Quasicategory]`, and `README.md` line 1260 reads "for a simplicial set C". The bullet of line 47 lists statable statements.
**Repair** Line 387: "**Lemma F.** Over any simplicial set, a categorical equivalence between categorical fibrations is a categorical equivalence on every fiber. (README §7.3.2; HTT, Prop. 3.3.1.5, (1) ⇒ (2), p. 225, proves it for Cartesian fibrations over an ∞-category.)" Move the bullet of lines 47–53 out of the list, under its own lead "Statable, not headline statements:".

## Verified sound

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| §1.1 (HTT, Def. 2.4.2.1, p. 139) | HTT line 5944; `{0}`, `{1}`, `∂Δ[1]` in Δ[1] | `{1}`: no lift of 0→1 ending at 1, lift from source trivial: coCartesian only. `∂Δ[1]`: no lift from 0 | Agrees; `Edge.IsCocartesian` not at pin | R01 |
| §1.3 (HTT, Prop. 2.4.1.5, Cor. 2.4.1.6) | HTT lines 5731, 5743; X = image of 0→2 in Δ[2]/Δ^{1,2} | Pullback is `Λ[2, 2] ⊆ Δ[2]`, a nerve map; horn (0→2, s₀s) over the nondegenerate 2-simplex: no filler | Counterexample right; Cartesian-fibration clause misplaced | R05 |
| §1.5 (HTT, p. 136; Prop. 2.4.1.8) | HTT lines 5794, 5796; poset a < b > a′ over [1] | a→b: b only object over 1, coCartesian; a′→b needs a′→a, none: not Cartesian | Agrees | none |
| §2.1 (HTT, Rem. 2.4.2.2, p. 139) | HTT line 5959; E empty; `Functor.IsFibered` at pin | Empty E: both sides hold. Mathlib lifts are strict (`p.obj a = S`), as edges of nerves are | Agrees | none |
| §2.7 (HTT, Lemmas 2.4.4.7–8, Prop. 2.4.4.9, p. 151) | HTT lines 6492, 6505, 6523 | Source: Cartesian p, each fiber with initial object; trivial fibration on X′; sections initial iff through X′ | Agrees | none |
| §3.3 (HTT, Cor. 2.4.6.5, p. 155) | HTT line 6693; `{1} ⊆ Δ[1]`; `{0} ⟶ J` | Source lifts with prescribed source; README applies it to `pᵒᵖ`. `{1}`: only degenerate equivalences. J: 1→0 has no lift ending at 0 | Agrees | none |
| §4.1 (HTT, Def. 2.3.1.3, p. 115) | HTT line 4850; C ⊔ C′; `Λ[2, 1]`; Δ[1] ⋆ Δ[1] | C ⊔ C′: no edge into C′ from C, not Cartesian if C′ ≠ ∅. Join: Δ[3]; product: a square | Agrees | none |
| §4.3 (HTT, Prop. 2.4.7.6, p. 158) | HTT line 6851 | q and q∘p bifibrations, homotopy equivalence on fibers over vertices of S × T; conclusion categorical equivalence | Agrees | none |
| §4.4, `isBifibration_ihom_stdSimplex_one` | C = Δ[1]; target first against source first | Target first: (0,0)→(1,0) lifts to 00→01, (1,0)→(1,1) to 01→11. Source first: no arrow 1→0 | README order right | none |
| §5.1 (HTT, Defs. 3.1.0.1, 3.1.2.2, pp. 164, 170) | HTT lines 7079, 7323; fold map; `Δ[1]^♯ ⟶ Δ[0]` | Fold map: 2 vertices to 1, not monic. `Δ[1]^♭ ⟶ Δ[1]^♯`: identity underneath, a cofibration | Agrees | none |
| §5.2 (HTT, Def. 3.1.1.1, Rems. 3.1.1.3–4, Prop. 3.1.1.5, pp. 165–166) | HTT lines 7122, 7143, 7148, 7151–7168 | Four families as in README; (2′), (2″) generate one class containing (2), inside the class of (1) and (2) | Agrees; `markedAnodyneExtensions` not at pin | R01 |
| §5.7 (HTT, Prop. 3.1.3.7, Rems. 3.1.3.9, 3.1.4.6) | HTT lines 7572, 7698, 7801; S = Δ[1], Z = `{0}` | Marked sections of Z over Δ[1]: ∅; maps from `{0}^♯`: Δ[0]. Opposite exchanges the two vertices | Agrees | R02 |
| §7.1, headline 2 (inner anodyne half) | HTT line 9725; `{0 < 2} ⊔ {1}` over Δ[2] | Non-fibration: 3 points over `Λ[2, 1]` against 2 components. Simplices outside `M(φ)_{Λ[n,i]}` have `u(max J) = n` since i < n | Agrees | none |
| §7.2, headline 2 (HTT, Prop. 3.3.1.3) | HTT lines 9725, 6463 | Source: any S. README, Lean: `[S.Quasicategory]`; Cor. 2.4.4.5 used only between ∞-categories T₁, T₁′ | Agrees | none |
| §7.3, headline 3 (HTT, Prop. 3.3.1.5; Lemma F) | HTT line 9798; Lemma F over arbitrary C | X, Y fibrant over C, `X × J` a cylinder over C, homotopies restrict to fibers: no hypothesis on C used | Agrees; docstring stale | R08 |
| §7.4, headline 4 (HTT, Props. 3.3.1.7, 3.3.1.8) | HTT lines 9892, 9952; X = ∅; `{0}`, `{1}` in Δ[1] | ∅: all three hold. `{0}`: Cartesian, not coCartesian. `{1}`: categorical, not Cartesian | Agrees | none |
| §7.5, headline 5 | X = Δ[0]; N = `Λ[2, 1]` over Δ[0], `Λ[2, 1] ⊆ Δ[2]` | X = Δ[0]: Prop. 1.2.7.3 (3). Non-fibrant N: no map Δ[2] → `Λ[2, 1]` restricts to the identity | Agrees | none |
| §3.4, headline 1 (HTT, Prop. 1.2.7.3) | HTT line 2290; `∂Δ[1] ⊆ Δ[1]`, C = Δ[0] ⊔ Δ[0]; `Λ[2, 0] ⊆ Δ[2]`, C = Δ[1] | 2 objects against 4; posets with 4 and 5 elements | Agrees | none |
| §2.3 (HTT, Lemma 2.4.2.7, Prop. 2.4.2.8, Cor. 2.4.2.10) | HTT lines 6032, 6085, 6126; poset P over [2] | Local lifts x₁→x₂, y₀→x₂, x₀→x₁; composite x₀→x₂ not local (y₀ ≰ x₀); n ≤ 2 in source | Agrees | R05 |
| §5.5.1 (HTT, Notation 3.1.0.2, p. 164) | S = Δ[1]; `{0}^♭`, `{1}^♭` | One map of marked simplicial sets, none over S (0 ≠ 1) | Agrees; Check missing | R07 |
| `Suggested.lean` at the pin | Scratch copy as in R01's repair | 41 signatures printed, 27 `sorry` warnings, no error; with the head's imports: 3 bad imports | Fails at head | R01 |

- Source locators checked against the text: 50 HTT statements opened at their lines and read for hypotheses, 33 of them checked against the cited page, all agreeing; Kerodon §5.1.1 and Def. 5.1.4.1 (tag 01UA) opened.
- Library declarations opened at the pin: `SSet.Edge.IsCartesian`, `SSet.CartesianFibration` (`TauCeti/AlgebraicTopology/Quasicategory/Cartesian.lean` lines 65, 110), `isCartesian_of_isIso` (line 82), `SSet.slice.homEquiv`, `SSet.coslice.homEquiv` (`SimplicialSet/Slice.lean`, `Coslice.lean`), `TauCeti.MarkedSSet.forget`, `toSharp` (`Marked/Basic.lean` lines 125, 218), `mapFlat` (`Marked/MappingSpace.lean` line 77), Mathlib `SSet.InnerFibration` (`Quasicategory/InnerFibration.lean` line 72).
- Cross-roadmap citations resolved at their heads: 45 target ids of InfinityCategoryFoundations, 11 of ModelCategories, 3 of KanQuillen, 6 of SimplicialCategories exist; 6 lines cite the wrong id (R06). The three repeated definitions have the bodies of InfinityCategoryFoundations `Suggested.lean` lines 187, 192, 721.
- Gate: `imports=3`, `build=7`, `stray-files=1`, every other check 0 (R01, R04). No change outside `TauCetiRoadmap/InfinityCategoryTheory/`.
- Dependency check: `depcheck: 244 roadmaps, 2197 edges, 0 problem(s)`; no UPWARD or CYCLE line.
- One-tactic probe (`rfl`, `simp`, `infer_instance`) on the 27 theorems that elaborate at the pin: none closes. `#check @name` for all 41 remaining declarations: binders equal the README statements; no section variable is lost (the file has none). The five headline theorems are stated; model structures, mapping simplices and §7.6 are named in the docstring.
- Pull request text against the head: 19.6k words (19,593 counted), a new family, no existing roadmap edited, suppliers ModelCategoryTheory and DGAInfinity, the pin statement: no sentence contradicted for this folder.
- Overlap check: read KanQuillen, SimplicialCategories, EnrichedLocalization, ModelCategories, BordismFormalGroups, StableHomotopyKTheory, EnhancedDerivedSheaves; coCartesian fibrations, the mapping-space and fiberwise criteria, marked anodyne maps and the Cartesian and coCartesian marked structures are shared with BordismFormalGroups §F6.5, the owner on main (R02); nothing shared with the others; no `Suggested.lean` at an open head declares these names.
- Source independence: 26 passages compared with 1 source (HTT; Kerodon's wording was not compared), none shared, longest common run 6 words (§6.1.1 against HTT line 8541); largest share HTT, 359 of 360 locators; contents compared with HTT: the layers follow §2.4.1–§3.3.1 (R03).

## Not verifiable

- `SSet.QCat.IsCategoricalEquivalence`, `SSet.RightFibration`, `TauCeti.MarkedSSet.ofEdges`, `markedAnodyneExtensions`, `SSet.Edge.opEquiv`: absent at the pin, so the six declarations that use them were read but not elaborated.
- The description's sentence that all files elaborate against Tau Ceti 8b9f13d993: that commit is not the pin and was not built.
- Kerodon, Def. 4.5.4.1, Prop. 4.5.4.8, Def. 4.4.1.4, Prop. 4.5.6.1, Def. 4.5.6.5 (References, lines 1548–1550): not opened.
- Ayala–Francis, arXiv:1702.02681, named in R03's repair: not opened; its locators are the author's to fix.
- Ownership against the open revision of GeneralizedCohomology named in the pull request description: its head was not among the files given.

## Source issues

- **Misprint** in HTT at Def. 2.4.7.2, second condition, PDF p. 158: the source says the S-projection sends the last edge to a degenerate edge of T; it should be a degenerate edge of S; affects nothing.
- **Error** in HTT at Prop. 2.4.7.10 and Cor. 2.4.7.11, PDF pp. 160–161: the source says the sections form a bifibration over C × D, source fiber first; it should be D × C, target first, as the case C = Δ[1] shows; affects a stated result.
- **Misprint** in HTT at the proof of Cor. 2.4.4.5, PDF p. 150: the source says full faithfulness of q gives the object, and names T′ and S; it should be essential surjectivity, with D′ and C′; affects nothing.
- **Misprint** in HTT at the proof of Prop. 3.3.1.8, PDF p. 228: the source says the edge lifts to an equivalence in S; it should be an equivalence in X; affects nothing.
- **Misprint** in HTT at Cor. 3.2.2.13 (2), PDF p. 205: the source says an edge of Z is r-coCartesian; it should be an edge of T; affects nothing.
- **Misprint** in HTT at §3.2.2, the definition of the mapping simplex, PDF p. 197: the source says restriction along p sends (f, σ) to (f∘p, e∘σ); it should be (f∘p, e∘σ∘p); affects nothing.

## For the human reviewers

- **Scope.** The pull request description proposes that this family become the owner of material BordismFormalGroups §F6.5 and EnhancedDerivedSheaves (both on main) plan, and says an open revision of GeneralizedCohomology conflicts; R02 records the facts.
- **Licence.** HTT was read from the author's page at math.ias.edu (the cached copy's header names that URL); Kerodon was read at kerodon.net.
- **Not tested.** The build needs a Tau Ceti pin the pull request does not set (description: Tau Ceti 8b9f13d993; `NOTES.md`: bb8823c); moving the pin is outside the folder.
