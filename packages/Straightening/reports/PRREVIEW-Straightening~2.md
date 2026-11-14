# Review of Straightening (pull request #2270 at 7e04598)
Folder: `TauCetiRoadmap/InfinityCategoryTheory/Straightening/`
**Verdict:** needs changes

## R01 (P1) — `Suggested.lean` does not build at the pinned Tau Ceti

**Location** `TauCetiRoadmap/InfinityCategoryTheory/Straightening/Suggested.lean` lines 5–7 and 108–127: imports of `TauCeti.AlgebraicTopology.Quasicategory.CatInfty`, `…Quasicategory.Limit`, `…SimplicialNerve.Basic`; `CatInfty.vertex`, `CatInfty.colimit_induction`. Unchanged since the previous review (its R01: not repaired).
**Claim** The file states its theorems against the pinned Tau Ceti; the gate's targeted build exits 1 with three `bad import` errors.
**Witness** Pin `2fd255d` of `lake-manifest.json`: `TauCeti/AlgebraicTopology/Quasicategory/` holds only `Cartesian`, `Core`, `FullSubcategory`, `LocallySmall`, `RightMappingSpace`; `SimplicialNerve/` holds `HornThickening`, `SimplicialThickening`, no `Basic`.
**Repair** Either the pin bump lands on main first and main is merged into the branch, or: delete lines 5–7 and the `## Layer 3` section, add to the docstring's not-statable list "the generation of `Cat∞` by `Δ[0]` and `Δ[1]` (§3.4, Nikolaus–Scholze, Lemma A.17): it needs `Cat∞` as a simplicial set and colimits in a quasicategory", and drop "`Suggested.lean` declaration `CatInfty.colimit_induction`" from README §3.4.2. Tested: that copy elaborates at the pin with four `sorry` warnings and nothing else.

## R02 (P2) — Objects owned by roadmaps on main are planned again without citation

**Location** `README.md` lines 43–57 (Scope and ownership names only this family, ModelCategoryTheory and the libraries); targets §1.5.2–§1.7.2, §1.8.5, §2.3.2, §3.2.2, §3.4.1, §3.4.2, §5.1.1, §5.1.3, §5.2.1, §5.3.1, §5.3.3, §5.3.4. Unchanged (previous R03: not repaired).
**Claim** Marked straightening as a Quillen equivalence, its `Fun(S, Cat∞)` form, the Joyal–marked comparison, descent, generators of `Cat∞`, colimits of localizations, limits as sections, coherent mates and left derivable families each have an owner on main.
**Witness** Main: `TauCetiRoadmap/BordismFormalGroups/README.md` lines 1975–2002, 2083–2100; `TauCetiRoadmap/EnhancedDerivedSheaves/README.md` lines 362–364 (E0.7), 1257 (E3.4, Liu–Zheng 2.2.4), 1498 (E5:abstract.3, Nikolaus–Scholze A.8, A.14–A.15).
**Repair** One owner per object, and main is earlier: cite `BordismFormalGroups` §F6.5 ("Marked fibrations and Kan extensions", "Coherent model diagrams and stable enhancements") and `EnhancedDerivedSheaves` E0.7, E3.4, E5:abstract.3 for what they state, keep here only what they do not, and say so in Scope and ownership; or first land the revision of those two roadmaps that hands these objects to this family, and name that order (with E3.4 and E5:abstract.3, which the description omits) in the description.

## R03 (P2) — "Already in the library" names nine Tau Ceti declarations absent at the pin

**Location** `README.md` lines 54–57 and 125–135: "`SSet.catInfty`", "`SSet.CatInftyΔ`", "`SSet.core_sHom_eq_top`", "`SSet.RightFibration`, `SSet.LeftFibration`", "`SSet.slice.IsLimit`, `SSet.coslice.IsColimit`", "`SSet.Edge.isEquivalence_iff_hornFilling_zero`", "`SSet.isWeaklyContractible_iff_isWeakHomotopyEquivalence`". Unchanged (previous R04: not repaired).
**Claim** The supplier contract cites these as existing at the pinned Tau Ceti.
**Witness** `grep -rn` of the nine names over `TauCeti/` at `2fd255d`: no hit; `CatInfty.lean`, `Limit.lean`, `OuterHorn.lean`, `WeakHomotopyEquivalence.lean` and `AnodyneExtensions/LeftRight/` are not there.
**Repair** With the pin bump of R01 on main, no change. Otherwise remove the nine names from "From Tau Ceti" and from "Already in the library", and in each `*Needs:*` line cite the Part that states the object (`Cat∞`, left and right fibrations, limits and colimits in an ∞-category) by section.

## R04 (P3) — Gate rule `imports`

**Location** `Suggested.lean` lines 5–7.
**Claim** Every `TauCeti.*` module imported exists at the pinned Tau Ceti.
**Witness** Gate at 7e04598: `imports=3`, lines 5, 6, 7, "does not exist at the pinned Tau Ceti".
**Repair** The repair of R01.

## R05 (P3) — Gate rule `stray-files`

**Location** `TauCetiRoadmap/InfinityCategoryTheory/Straightening/NOTES.md` (35 lines, added since the previous review).
**Claim** A roadmap folder holds only `README.md`, `Suggested.lean`, `metadata.toml` and other `*.lean` files.
**Witness** Gate at 7e04598: `stray-files=1`, "NOTES.md: not a roadmap file"; its text is process narrative ("Notes on the Straightening draft", "Needs Tau Ceti pin bump", dated entries).
**Repair** Delete it; sources are the README's references. The pin note belongs in the pull request's description, where it already is.

## R06 (P3) — Gate rule `tex`

**Location** `README.md` lines 549–550: the code span "`(Xᵒᵖ)_s = (X_s)ᵒᵖ`" is broken across the two lines.
**Claim** No TeX-only syntax outside code spans.
**Witness** Gate at 7e04598: `tex=1`, line 550, `×_{Sᵒᵖ}`: with the span opened on line 549 and closed on 550, the backticks of line 550 pair off wrongly and `_{` falls outside a span.
**Repair** Reflow the paragraph so that line 549 ends "for the values). The route:" and the next line begins "`(Xᵒᵖ)_s = (X_s)ᵒᵖ`, the Cartesian transport"; every code span of §1.8.5 on one line. Not rerun through the gate (the review edits no file).

## R07 (P3) — §1.1.1 `*Needs:*`: a citation lost its roadmap

**Location** `README.md` line 226: "Tau Ceti `TauCeti.MarkedSSet` (HTT, Def. 3.1.0.1) and §5.8.3;".
**Claim** "§5.8.3" is a section of this roadmap.
**Witness** This roadmap has no Layer 5 §5.8. The previous head read "Part CartesianFibrations §5.1.1 … and §5.8.3"; `CartesianFibrations/README.md` line 1015 is its §5.8.3 (the `Map^♯` enrichment §1.1.1 uses).
**Repair** "Tau Ceti `TauCeti.MarkedSSet` (HTT, Def. 3.1.0.1); Part CartesianFibrations §5.8.3 (the `Map^♯` enrichment);". In the `*Needs:*` of §2.5.1 (lines 843–844) the same replacement left `TauCeti.MarkedSSet` twice: drop the second.

## R08 (P3) — §1.1 first Check: the reason holds only for C the point; §1.2 new Check is not a bullet

**Location** `README.md` lines 217–219: "For S = Δ[0] and `X = Δ[1]^♯` … since E holds only degenerate edges and `G^*` of a degenerate edge is degenerate"; line 241: "exactly when f is. - Marked edges of". Previous R02: the statement of §1.2.1 is repaired (lines 233–235), these two are not.
**Claim** For S = Δ[0] and any C, `G^*` of a degenerate edge is degenerate.
**Witness** S = Δ[0], `Cᵒᵖ = C[Δ[2]]`, φ picking 2, value at 0: `Map(0, 2) = Δ[1]`, and its nondegenerate edge G gives the nondegenerate `G^* s₀(c̃)`; the README's own §1.2.1 says "not in general".
**Repair** Line 217: "For S = Δ[0], C the point and `X = Δ[1]^♯`". Line 241: end the bullet at "exactly when f is." and start a new line "- Marked edges of `St⁺_φ(X^♭)` need not be degenerate: …".

## R09 (P3) — §1.8.2 has two Checks; the third Check of §1.8.5 sits inside the definition

**Location** `README.md` lines 472–477 (§1.8.2, two bullets) and line 538 (§1.8.5: "Check: over S = Δ[1], for `pr₂ : Δ[1] × Δ[1] ⟶ Δ[1]` …" inside the defining paragraph). Previous R06: partly repaired.
**Claim** Each definition has at least three discriminating Checks, as bullets under `**Checks.**`.
**Witness** §1.8.2 lists two bullets; §1.8.5 lists two bullets (lines 555–559) and one sentence in the definition.
**Repair** §1.8.5: move the sentence from "Check: over S = Δ[1]" to "would accept it." to a third bullet. §1.8.2, add: "`Tw(Δ[1])` has three vertices, two nondegenerate edges and no nondegenerate 2-simplex, while the arrow ∞-category `Fun(Δ[1], Δ[1]) = N(00 ⟶ 01 ⟶ 11)` has one; a definition by arrows and commuting squares would give the latter." (Computed: `Tw(Δ[1])` is the nerve of the poset `00 ⟵ 01 ⟶ 11`, which has no chain of length 2.)

## R10 (P3) — §1.1.1: the description of `Un⁺_φ` is not at the cited locator

**Location** `README.md` lines 211–212: "an edge is marked when its map extends over `St⁺_φ(Δ[1]^♯)` (HTT, Def. 3.2.1.2, p. 189)". Unchanged (previous R07: not repaired).
**Claim** The cited definition contains the explicit description of marked unstraightening.
**Witness** HTT lines 8194–8203: Def. 3.2.1.2 defines `St⁺_φ` only; `Un⁺_φ` appears in Cor. 3.2.1.5 (HTT lines 8233–8239), by the adjoint functor theorem, the direct construction left to the reader.
**Repair** "(HTT, Def. 3.2.1.2, p. 189, for `St⁺_φ`; `Un⁺_φ` is the right adjoint of HTT, Cor. 3.2.1.5, p. 190, which does not write it out; the description here is the adjunction evaluated on `Δ[n]^♭` and `Δ[1]^♯`)".

## Verified sound

| Statement | Instances tried | Values computed | Result |
|---|---|---|---|
| §1.1 (sample) | S = Δ[1], X = `Δ[1]^♯`, `Δ[1]^♭`; constant functor | `(St X)(0) = Map_{C[Δ[2]]}(0,2) = Δ[1]`, edge marked for ♯ only; `Un⁺(const Δ[0]^♯) = S^♯` | agrees; locator R10 |
| §1.1 Check 1 | S = Δ[0], `Cᵒᵖ = C[Δ[2]]`, φ picks 2 | G nondegenerate in `Map(0,2) = Δ[1]`, `G^* s₀(c̃)` nondegenerate; README says degenerate | R08 |
| §1.2 (sample) | S = Δ[2], X = `{2}^♭`; S = Δ[0], `Δ[1]^♭` | value at 0 is `Δ[1]^♯ ≃ Δ[0]`, the fiber of `𝟙 Δ[2]`; `Q¹` has vertices {0} and {1} ~ {0,1}, ≅ Δ[1] | agrees |
| §1.5 (sample) | M = ∅; S′ = Δ[0] | both sides empty; 3.2.1.13 with S′ = Δ[0] and 3.2.1.14 give 3.2.1.15; HTT lines 8416–8497, pp. 194–196 | agrees |
| §1.6 (sample) | n = 0; i = n | T is a Quillen self-equivalence (3.2.3.1); ψ at i = n is an isomorphism (HTT line 9017); pp. 206, 206, 207, 209 | agrees |
| §1.7.1 (headline, sample) | S = Δ[0]; S = Δ[1], `pr₂` | Thm. 3.2.0.1 at HTT lines 8113–8125; maps into `(Δ[1]×Δ[1])^♮`: 2 from `Δ[1]^♯`, 3 from `Δ[1]^♭` | agrees |
| §1.8.2 | m = 1; K = Δ[1] | `A₁` = path `0'–0–1–1'`; `01 ⟶ 00` is `0→0→0→1`, `01 ⟶ 11` is `0→1→1→1`; no `00 ⟶ 11` | Kan hypothesis needed; R09 |
| §1.8.4, §1.8.5 | P = {a<b, a<c}; `Δ[2] ⟶ Δ[1]` | `N(P)ᵒᵖ` has no initial object; transport picks 1, initial in `Δ{1,2}`; without op, final | agrees; R06, R09 |
| §2.1 (sample) | g : Δ[0] ⟶ Δ[1] picking 1 | `Δ[2] ⟶ Δ[1]`: Cartesian edge `1 ⟶ 2`, transport 1; `N({0<1, 0<2})`: transport 0; same fibers | discriminates |
| §2.2.1 (headline, Lean) | j = 𝟙; X = ∅ | Y = X; Y = ∅; `simp` leaves the goal; HTT lines 9690, 9712 | elaborates at the pin |
| §2.3.1 (headline, Lean) | `simp`, `infer_instance`, unfolding | goal `(monomorphisms ⊓ categoricalEquivalences).rlp p` remains | elaborates; not padding |
| §2.3.2 (headline) | S = Δ[1] | `{1}^♭ ⊆ Δ[1]^♯` marked anodyne; `{1} ⊆ Δ[1]` not a categorical equivalence | Kan hypothesis needed |
| §2.4 (sample; Lean) | S = ∅; g = 𝟙; `simp`, `aesop` | both sides of the iff true; projection an isomorphism; probes fail; HTT lines 9725, 9768, 9798 | elaborates; route not circular |
| §2.5 (sample) | `Δ[1] ⟵ Δ[0]` picking 1; K = Δ[0] ⊔ Δ[0] | mapping simplex = `Λ[2,1]`; `U(K) = K` since `Qⁿ` is connected: 2 vertices, no edge; HTT lines 9999–10042 | agrees |
| §2.6 (sample) | C = ∅ | sections over ∅ = Δ[0] = homotopy limit of the empty diagram; HTT lines 10160–10202, pp. 232–233 | agrees |
| §3.1 (sample) | q = 𝟙; S′ = ∅ | identity; cofinal forces S = ∅; HTT line 10254, p. 235 | agrees |
| §3.2.1, §3.2.3 (headline) | K = ∅ | `C ⟶ Δ[0]` an equivalence iff C ≃ Δ[0] | agrees |
| §3.3 (headline, sample) | K = ∅; K = Δ[1]; T = ∅ | `∅ ⊆ X̄^♮` equivalence iff X̄ = ∅; colimit of `X₁ ⟶ X₀` is X₀; constant ∅ is a colimit diagram | agrees |
| §3.4 (headline, sample) | `Λ[2,0] ⊆ Δ[2]`; Kan complexes | pushout `Δ{0,1} ⊔ {2}`: 2 components against 1; contains Δ[0], closed under colimits, misses Δ[1] | matches A.16, A.17 (lines 6639–6676); Lean not elaborable (R01) |
| §4.1.2 (headline) | Y = S, δ = 𝟙 | equivalences detected pointwise; HTT line 13783, p. 308 | agrees |
| §5.1 (headline, sample) | C = [1], D = C′ = D′ = ∗; its transpose | γ = (0 ⟶ 1), right mate `𝟙₁`; transposed γ = identity; Liu–Zheng lines 3906–3918, I = {1,2}, J = {2} | agrees |
| §5.2 (sample) | K = ∅; poset `0 < 1 > 2` | ∅ ⟶ ∅; pushout of points along a point = Δ[0]; Nikolaus–Scholze lines 6798–6806, p. 143 | agrees |
| §5.3 (headline, sample) | Δ[2], fibers [1], `s_!` constant 1, `t_!` = 𝟙 | `Lt_! ∘ Ls_!` = 0, `Lu_!` = 1, comparison 0 ⟶ 1; A.8 lines 6414–6440, A.14 lines 6547–6566 | condition 3 independent |
| Conventions witnesses | C = Δ[1]; C = Δ[0] ⊔ Δ[0] | monotone maps: 4 from [2], 5 from {0<1, 0<2}; 2 and 4 objects | agrees |

- Previous findings: R01 not repaired (R01); R02 repaired in §1.2.1, "they are all degenerate when the mapping objects of C are discrete … and not in general", two residues (R08); R03 not (R02); R04 not (R03); R05 not (R04); R06 partly (R09); R07 not (R10).
- Source locators checked against the text: 69 (HTT 54, Nikolaus–Scholze 9, HA 4, Liu–Zheng 2); every page given matches the PDF page of the edition in References.
- Library declarations opened at the pins: 21; 12 present (Tau Ceti `SSet.CartesianFibration` `Quasicategory/Cartesian.lean` line 110, with `comp` and `of_isPullback`, `SSet.Edge.CompStruct.isEquivalence₀₂` `Quasicategory/Core.lean` line 122, `TauCeti.MarkedSSet` `SimplicialSet/Marked/Basic.lean` line 49; Mathlib `QCat.bicategory` `Quasicategory/StrictBicategory.lean` line 66, `ModelCategory.over`, `CofibrantBrownFactorization` `BrownLemma.lean` line 48, `mateEquiv` `Adjunction/Mates.lean` line 84, `opFunctor`, `anodyneExtensions`, `innerAnodyneExtensions`), 9 absent (R03).
- Cross-roadmap citations resolved: 229 section ids against the four earlier Parts at this head and the four ModelCategoryTheory Parts at the head of their pull request; one unresolved (R07).
- Dependency check: `depcheck: 244 roadmaps, 2197 edges, 0 problem(s)`.
- Gate: fails on `build=7`, `imports=3`, `stray-files=1`, `tex=1`; every other check 0. No change outside the pull request's own folders.
- Elaboration: the full file cannot be elaborated at the pin. A copy without lines 5–7 and Layer 3 elaborates with `sorry` the only warning; `#check @name` of its seven declarations agrees with README §2.2.1, §2.3.1, §2.4.1, §2.4.3 (no binder lost, nothing changed); the three definitions have the bodies of `InfinityCategoryFoundations/Suggested.lean` lines 187–193, 721–722, in a different namespace. One-tactic probes close none of the four theorems.
- Description read against the head: no sentence contradicted for this folder (new roadmap, 22.3k words, pin stated); its overlap list omits two items (R02).

Overlap check: read EnrichedLocalization, KanQuillen, SimplicialCategories, ModelCategories (open, suppliers: none states straightening, twisted arrows, adjointable squares or derivable fibrations), BordismFormalGroups, EnhancedDerivedSheaves, StableHomotopyKTheory (main); marked straightening, its `Fun(S, Cat∞)` form, descent, generators of `Cat∞`, colimits of localizations: owner BordismFormalGroups §F6.5; limits as coCartesian sections, coherent mates, left derivable families: owner EnhancedDerivedSheaves E0.7, E3.4, E5:abstract.3; see R02. Nothing shared with StableHomotopyKTheory.

Source independence: 22 passages compared with 3 sources (HTT, Nikolaus–Scholze, Liu–Zheng), none shared beyond formulas and runs of at most 6 words; largest share HTT, 439 of 478 locators; contents compared with HTT: Layer 1 ↔ §3.2 and Layers 2–3 ↔ §3.3 in the same order, forced by the `*Needs:*` lines of §2.2.1 (§1.7.1) and §3.2.1 (§2.5.2, §2.6.1); sections are not one to one (§1.1–§1.5 ↔ §3.2.1, §2.1 and §2.5 ↔ §3.3.2 on both sides of §3.3.1, §2.3.2 ↔ §3.1.5; §1.8, §3.3.3, §3.4 and Layers 4–5 outside that run): independent.

## Not verifiable

- `CatInfty.vertex` and `CatInfty.colimit_induction`: their carriers are not at the pin, so their elaborated types (in particular the universe of `K : SSet.{u + 1}`) were not compared with README §3.4.2.
- The description's statement that all files elaborate against Tau Ceti `8b9f13d993`: that commit is not the pin and was not built.
- Ownership against the board's unpublished packages: only the board index was read (two packages, neither on this subject); main and the open pull requests were searched.

## Source issues

- **Misprint** in HTT at Cor. 3.2.1.15, proof, p. 196: the source says to combine Prop. 3.2.1.14 with Prop. 3.2.1.15, the corollary itself; it should be Prop. 3.2.1.13; affects nothing.
- **Misprint** in HTT at Lemma 3.2.3.2, proof, p. 206: the source says it suffices that the map from F(C) to F(D) is an equivalence, for s with ψ(s) = C; it should be F(C) to G(C), with φ(s) = C; affects nothing.
- **Misprint** in HTT at Prop. 3.3.3.1, p. 232, and Cor. 3.3.3.2, p. 234: the source says the diagram into the opposite of `Cat∞` is a diagram in the ∞-category of spaces; it should be of ∞-categories; affects nothing.
- **Misprint** in HTT at the proof of Prop. 3.3.3.1, p. 233: the source says the fibration may be taken to be the straightening of the diagram; it should be its unstraightening; affects nothing.
- **Misprint** in HTT at the proof of Prop. 3.3.4.2, p. 237: the source says the diagram is the nerve of a functor on the cone category; it should be on its opposite; affects nothing.
- **Misprint** in HTT at Remark 7.3.1.3, p. 769: the source says the map P induces a second functor named `q′_*` from D′ to D; it should be `p_*`; affects nothing.
- **Error** in HTT at Def. 3.3.2.2, p. 229: the source says a map to `Cat∞` classifies a coCartesian fibration when its opposite classifies the opposite fibration; it should compose with the opposite-category involution of `Cat∞`, as Prop. 3.2.5.21 (3) uses; affects a stated result.
- **Misprint** in Nikolaus–Scholze at Lemma A.16, proof of (2), p. 140: the source says the pullback of `F_j` along `S_i ⟶ S_j` is `F_j`; it should be `F_i`; affects nothing.
- **Misprint** in Nikolaus–Scholze at the proof of Prop. A.14, p. 143: the source says assumption (3) in Definition A.14; it should be Definition A.8; affects nothing.

## For the human reviewers

- **Scope.** The description asks the maintainers to choose the owner of marked straightening, `Cat∞` colimits and descent between `BordismFormalGroups` §F6.5 and `EnhancedDerivedSheaves` on main (README lines 1975–2100; 362, 1257, 1498) and this family; R02 depends on that choice.
- **Not tested.** `Suggested.lean` needs a Tau Ceti newer than the pin `2fd255d` (the description names `8b9f13d993`, the folder's `NOTES.md` names `bb8823c`); whether to bump the pin before this pull request is a decision outside the folder (R01, R03).
