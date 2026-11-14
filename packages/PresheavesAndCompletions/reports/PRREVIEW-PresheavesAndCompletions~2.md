# Review of PresheavesAndCompletions (pull request #2270 at 7e04598)
Folder: `TauCetiRoadmap/InfinityCategoryTheory/PresheavesAndCompletions/`
**Verdict:** needs changes

## R01 (P1) — `Suggested.lean` still does not build at the pins (previous R01: not repaired)

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/PresheavesAndCompletions/Suggested.lean` lines 4–8, 10, 11; `README.md` lines 159–191 ("From Tau Ceti").
**Claim:** Seven imported `TauCeti.*` modules, and the files the README gives for `SSet.coslice.IsColimit`, `SSet.IsFullyFaithful`, `SSet.catInfty`, `SSet.QCat.IsCategoricalEquivalence`, `SSet.IsTerminalVertex`, `SSet.ihomOver`, `SSet.IsWeakHomotopyEquivalence`, `SSet.RightFibration`, are at the pinned Tau Ceti.
**Witness:** Gate at this head: `imports=7`, `build=15`, exit 1. Pin 2fd255d: `TauCeti/AlgebraicTopology/Quasicategory/` holds only `Cartesian`, `Core`, `FullSubcategory`, `LocallySmall`, `RightMappingSpace`; no `SimplicialSet/InternalHom.lean`, `WeakHomotopyEquivalence.lean`, `AnodyneExtensions/`.
**Repair:** Rebase once main's Tau Ceti pin contains the seven modules; or delete the seven imports and every declaration that uses them, list each under "Not statable at the pins" with its missing carrier, and mark those names in "From Tau Ceti" as not at the pin.

## R02 (P2) — objects owned here are owned by two roadmaps on main (previous R02: not repaired)

**Location:** `README.md` lines 34–54 (`## Scope and ownership`), which still names neither roadmap.
**Claim:** This Part owns the presheaf Yoneda lemma (§1.3.1), idempotent completions (§3.2.1, §3.3.2), sifted simplicial sets (§5.1.1, §5.3.1, §5.3.2), `Ind_κ` with its universal property (§6.1.2, §6.5.3) and the comparison with Mathlib's `Ind` (§6.4.5).
**Witness:** Main (8a42212): `TauCetiRoadmap/BordismFormalGroups/README.md` lines 2197–2204 (F6.5: presheaves, Yoneda, `Ind_κ`, universal property); `TauCetiRoadmap/EnhancedDerivedSheaves/README.md` lines 1544 (`idemCompletion`), 1613 (`indOrdinaryComparison`), 1902 (`IsSiftedInfinity`).
**Repair:** Add to `## Scope and ownership` a bullet citing BordismFormalGroups §F6.5 and EnhancedDerivedSheaves E5:abstract, E5:presentability.1, E5:animation.1 as owners and narrow the listed targets to what those sections do not state; or first land on main the revision of those two roadmaps that hands these targets over, with its old → new mapping.

## R03 (P3) — a file that is not a roadmap file

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/PresheavesAndCompletions/NOTES.md` (60 lines, new at this head).
**Claim:** The folder holds only roadmap files.
**Witness:** Gate: `stray-files=1`, "NOTES.md: not a roadmap file". Its text is process narrative ("Firm review round 1 confirmed this", "left to the plan owner", commit hashes).
**Repair:** Delete it; sources are the README's references.

## R04 (P3) — Lean names missing from the README, and five named at the wrong target (previous R03: partly repaired)

**Location:** `README.md` lines 780–781 (§2.1.1), 914 (§3.1.1), 1058–1060 (§4.1.1), 1231 (§5.1.1), 1564–1565 (§6.1.1); `Suggested.lean` lines 81–170, 193–230, 274, 480, 586.
**Claim:** Every Lean name appears in the README, at the target it states.
**Witness:** 19 of 67 names have no backticked occurrence, e.g. `IsCofinal`, `IsRelativeColimit`, `IsCardinalLeftExact`, `catInftyObj`, `toIdemMonoid`. §2.1.1 names `innerAnodyneExtensions_ret_ι`, whose docstring says "README §2.2.2"; likewise `IsIdempotentComplete.slice` (§3.1.2), `isCardinalFiltered_iff_of_isCategoricalEquivalence` (§4.2.1), `isRelativeColimit_of_two_variables` (§5.2.1), `isCardinalContinuous_limit_π` (§6.3.2).
**Repair:** Move those five sentences to §2.2.2, §3.1.2, §4.2.1, §5.2.1, §6.3.2. Name `IsCardinalLeftExact` at §4.5.4, `toIdemMonoid` at §2.4.1, `IdemMonoid`, `idemPlusX`, `idemPlusY`, `idemPlusI`, `idemPlusR` at §2.1.1, `catInftyObj` at §6.6.2, and the eleven restated supplier definitions once, in "From TauCetiRoadmap.InfinityCategoryTheory".

## R05 (P3) — three `*Needs:*` lines lost the Part of their section numbers

**Location:** `README.md` line 1189 (§4.5.3): "Tau Ceti `SSet.slice.homEquiv`, `SSet.coslice.homEquiv` (HTT, Prop. 1.2.9.2) and §4.3.1 (HTT, Cor. 2.1.2.2)"; line 1703 (§6.3.2); line 1492 (§5.5.2, "and §5.5.4").
**Claim:** A bare `§x.y.z` is a target of this Part (Conventions, line 60).
**Witness:** This Part's §4.3.1 is HTT Example 5.3.1.9; Cor. 2.1.2.2 is Part InfinityCategoryFoundations §4.3.1 (its README line 1111). Line 1703 cites "§7.6.1"; this Part has no Layer 7, and its §6.3.1 is Lemma 5.3.4.8, not §2.1.4.
**Repair:** Line 1189: "… (HTT, Prop. 1.2.9.2) and Part InfinityCategoryFoundations §4.3.1 (HTT, Cor. 2.1.2.2)". Line 1703: "…; Part InfinityCategoryFoundations §4.2.1, §4.3.2, §5.3.1, §6.2.2, §6.3.1 and §7.6.1 (…)". Line 1492: "… and Part InfinityCategoryFoundations §5.5.4 (…)".

## R06 (P3) — homotopy pullbacks cited at the target that defines homotopy pushouts (previous R07: not repaired)

**Location:** `README.md` lines 706, 1622, 1676: "ModelCategoryTheory, Part ModelCategories §3.5.1 (HTT, §A.2.4, homotopy pullbacks)".
**Claim:** Part ModelCategories §3.5.1 supplies homotopy pullback squares.
**Witness:** At the head of the ModelCategoryTheory pull request, ModelCategories §3.5.1 is "Define a cofibrant resolution of a span"; "Define homotopy pullback squares dually, through fibrant resolutions of cospans" is §3.5.3.
**Repair:** In §1.6.4, §6.2.1 and §6.3.1 cite "Part ModelCategories §3.5.3 (HTT, §A.2.4, homotopy pullbacks)"; §5.4.1 (line 1413) keeps §3.5.1 for homotopy pushouts.

## R07 (P3) — one Check of §1.4.1 still writes `Fun^L` for colimit-preserving functors (previous R06: partly repaired)

**Location:** `README.md` lines 418–420: "For `S = Δ[0]` and `C = S`, `Fun^L(S, S)` is equivalent to `S` by Thm. 5.1.5.6 … so it lies outside `Fun^L(S, S)`."
**Claim:** §1.4.1 defines `Fun^colim` and reserves `Fun^L` for left adjoints (lines 404–406).
**Witness:** The Check tests the definition of §1.4.1 and cites Thm. 5.1.5.6, which line 458 states for `Fun^colim(P(S), C)`; the other two Checks of the same list write `Fun^colim`.
**Repair:** Write `Fun^colim(P(Δ[0]), S)` in both places of that Check.

## R08 (P3) — two sentences of the module docstring are contradicted by the file

**Location:** `Suggested.lean` lines 54–57: "they need categorical equivalences out of simplicial sets that are not quasicategories, and Tau Ceti's are between quasicategories only"; lines 35–38: "restated with the same names and bodies … relative colimits … and retracts".
**Claim:** HTT 5.3.1.19, 5.4.5.10, 5.4.6.2, A.2.9.18 lack a carrier; `IsRelativeColimit` and `IsRetract` repeat sibling declarations.
**Witness:** Lines 81–83 of the same file define `IsCategoricalEquivalence` for arbitrary `f : A ⟶ B` in `SSet`. No other `Suggested.lean` of the family declares `IsRelativeColimit` or `IsRetract`.
**Repair:** Delete the bullet of lines 54–57 (none of the four is a headline theorem of the README). In lines 35–38 say that relative colimits and retracts are stated here after Part LimitsAndKanExtensions §7.1.1 and Part AdjunctionsAndLocalizations §2.1.2, whose files do not declare them.

## Verified sound

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| §1.2.1 three models (HTT 5.1.1.1, p. 334) | `S = Δ[0]` | `P = S`; `P'` (right fibrations over a point) and `P''` both `N(Kan)` | holds | none |
| §1.3.1 Yoneda (headline; 5.1.3.1, p. 338) | `K = Δ[1]` | `j(0) = (pt, ∅)`, `j(1) = (pt, pt)`; `Map(j1, j0) = ∅ = Map_K(1, 0)`, `Map(j0, j1) = pt` | holds; not statable, named | none |
| §1.4.1, §1.4.3 free cocompletion (headline; 5.1.5.1, 5.1.5.6, pp. 342, 345) | `S = ∅`, `C = N([1])` | left: initial objects, `{0}`; right: `Fun(∅, C) = Δ[0]` | holds; not statable, named | R07 |
| §1.5.1–§1.5.2 (5.2.6.1–2, p. 378) | `C = Δ[0]`, `D = N([1])` | `Fun^L = {0}`; `Fun^R(D, C) = {D ⟶ Δ[0]}`; `Map(0, d) = pt = Map(∗, ∗)` | holds | none |
| §1.5.5 (Cor. 5.2.6.5, p. 381) | `C = Δ[0]`, `D = S`, `F = id` | `G(d) = Map(∗, d) = d`, right adjoint to `id` | holds | none |
| §1.7.1 (5.1.6.10–11, pp. 350–351) | `S = Δ[0]`, `F = − × T`, `T = ∅` | `f` fully faithful (`Map(∅, ∅) = pt`), `∅` not completely compact, `F` constant: not fully faithful | hypothesis (2) needed, stated | none |
| §2.1.1 and Lean `idemPlus` (Def. 4.4.5.2, p. 322) | Karoubi envelope of `{1, 0}` | hom-sets `{1, 0}`, `{0}`, `{0}`, `{0}`: five morphisms; `i ∘ r = 0 = e`, `r ∘ i = 0 = id_Y` | agrees | none |
| §2.2.2 (4.4.5.6–7, p. 323) | horn `X ⟶ Y ⟶ X` | `Ret`: edges `i`, `r` and degenerate ones, no filler; `Idem⁺`: filler with long edge `e` | holds | none |
| §2.4.1 (4.4.5.17, p. 326) | `A = ∅`; `A = {0}` | `∅`: fiber empty, not contractible; `{0}`: colimit `X`, not the retract `Y` | Lean has `Nonempty`, `NoMaxOrder` | none |
| §3.3.1–§3.3.2 uniqueness (headline; 5.1.4.6, 5.1.4.9, p. 341) | `C = N(B{1,e})`, `D = N(R)`; `E = N(Set)`, `E = C` | `N(Set)`: `(X, e) ↦ (X, im e, i, r)` essentially bijective; `E = C`: `id_C` has no extension (one object, `e ≠ 1`) | holds; `hE` needed; stated | none |
| §4.2.1 (Remarks 5.3.1.11–12, p. 401); Lean κ unconstrained | κ = 0, κ = 1 | κ = 0: no `K`, both sides true; κ = 1: nonemptiness, invariant | holds | none |
| §4.2.2 (5.3.1.14, p. 401) and its third Check | `n = 0, 1`; `{a, b}` discrete; `a ≤ b ≤ a` | vertex; cone on a pair; discrete poset fails at `n = 1`; the preorder is filtered | previous R08 repaired | none |
| §4.3.2 filtered ⇒ weakly contractible (headline; 5.3.1.20, p. 406) | `∅`, `N(ℤ/2)` | `∅`: fails `K = ∅`, and `Fun(∅, Z) = Δ[0] ≄ Z`; `N(ℤ/2)`: `h = hσ` forces `σ = 1` | holds; stated | none |
| §4.5.1–§4.5.3 (5.3.2.1, 5.3.2.5, 5.3.2.9, pp. 407–410) | `Δ[0] ⟶ C` circle; `∂Δ[1] ⟶ Δ[0]` | fiber `Map(c, c) = ℤ` discrete, not filtered; second preserves existing finite colimits, pullback `∂Δ[1]` not filtered | converse needs `hA`; Lean has it | R05 |
| §5.1.1 (5.5.8.1, p. 524) | `∅`, `∂Δ[1]` | `∅`: diagonal iso, excluded by nonemptiness; `∂Δ[1]`: 2 components to 4 | holds | R04 |
| §5.2.1 (5.5.2.3, p. 481) | `X = Y = ∅` | hypothesis: `p(∞₀, ∞)` is `q`-initial; both conclusions: the same vertex is `q`-initial | holds | none |
| §5.3.4 sifted ⇒ weakly contractible (headline; 5.5.8.7, p. 525) | `∂Δ[1]`; parallel pair | `π₀`: 2 to 4; `π₁`: `ℤ ⟶ ℤ²` | neither sifted; stated | none |
| §5.3.5–§5.3.6 (headline; 5.5.8.11–12, p. 526) | parallel pair, constant point | colimit `S¹`; product of colimits `T²`; colimit of product `S¹` | fails off sifted shapes; not statable, named | none |
| §5.4.1 (5.4.5.10, p. 457) | `A = C = Δ[0]`; `B = Δ[0]`, `B = ∂Δ[1]` | `Λ[2,1] ⊆ Δ[2]`; two morphisms `a ⟶ c` against one | hypothesis on `B` needed | R08 |
| §5.4.2 (5.4.6.2, p. 462) | `A₀ = {0,1}` with `B = {1}`, `B = {0}`; `A₀ = ∅` | `Λ[2,1] ⊆ Δ[2]`; `Λ[2,0] ⊆ Δ[2]`, `B` not cofinal; `N({∞})` both sides | holds | R08 |
| §6.1.1, §6.1.2 (5.3.4.5, 5.3.5.1, pp. 414, 421) | `N(ℕ ∪ {∞})`; `C = Δ[0]`, `∅` | `colim_n Map(∞, n) = ∅`, `Map(∞, ∞) = pt`; `Ind(Δ[0])` contractible spaces; `Ind(∅) = ∅` | holds | R04 |
| §6.2.2 (headline; 5.3.3.3, p. 412) | `I = ∂Δ[1]`, binary product | `(X ⊔ Y) × (X' ⊔ Y')`: four summands; `colim(F × G)`: two | fails off filtered `I`; not statable, named | none |
| §6.4.2, §6.4.5 (5.3.5.4, Remark 5.3.5.6, pp. 422–423) | `C = Δ[0]`; `C = N(ℕ)` | (3): `F(∗)` final, i.e. contractible, equals (2); ideals of ℕ are `ℕ ∪ {∞}` | holds | none |
| §6.5.1 (5.3.5.7, p. 423) | `D = Δ[0] ⊔ Δ[0]`, empty cocone at `a` | `i(a) = (pt, ∅)`; initial object of `D'` is `(pt, pt)`: not a colimit on either side | holds | none |
| §6.5.3 universal property (headline; 5.3.5.10, p. 424) | `C = Δ[0]`; `C = ∅` | `Ind = Δ[0]`, continuous functors `= D = Fun(Δ[0], D)`; `Ind(∅) = ∅`, both sides `Δ[0]` | holds; not statable, named | none |
| §6.6.1–§6.6.2 (4.4.5.20–21, p. 328) | `C` a nerve; 3-skeleton of `Idem` | `E` discrete: `h` exists iff `e = e ∘ e`, coherence automatic; one nondegenerate simplex per dimension 0–3 | holds | R04 |
| §1.6.4, §6.2.1, §6.3.1 supplier | ModelCategories §3.5.1 against §3.5.3 | §3.5.1: resolutions of spans (pushouts); §3.5.3: homotopy pullbacks | wrong target | R06 |
| Restated supplier definitions | bodies against six sibling `Suggested.lean` files | `IsCategoricalEquivalence`, `categoricalFibrations`, `IsColimitDiagram`, `IsLimitDiagram`, `sectionsRestrict`, `IsCofinal`, `IsLeftKanExtension` identical up to `SSet.` qualification | agree | R08 |

- Previous findings: R04 (padding) repaired, `isCardinalFiltered_of_retraction` and `IsCardinalRightExact.id` are gone; R05 repaired (lines 817–819 now make the colimit a retract of `BG`); R08 repaired (line 1111, "partially ordered set with two distinct maximal elements"); R01, R02, R07 not repaired; R03, R06 partly.
- Source locators: 42 HTT labels of the fifteen sampled sections matched to their PDF pages, all as the README gives them; statements read at HTT lines 14405–14496, 14703–14725, 15050–15058, 15322–15364, 15381–15545, 15751–15792, 17080–17293, 18209–18240, 18490–18662, 18775–18790, 19080–19260, 20698, 20927, 23738–23834, and 5.3.1.19, 5.3.4.8, 5.3.4.12, 5.5.2.3, 5.3.3.3.
- Library declarations opened at the pins: `SSet.IsCardinalFiltered` (`CardinalFiltered.lean` 63), `nonempty` (99), `isCardinalFiltered_nerve_iff` (164), `SSet.IsWeaklyContractible` (`WeaklyContractible.lean` 99), `SSet.coslice.homEquiv` (`Coslice.lean` 119), `SSet.slice.homEquiv` (`Slice.lean` 271), `Ind.yonedaCompInclusion` (`Indization/Category.lean` 117), `isIndObject_iff` (`IndObject.lean` 185), `essentiallySmall_iff` (`EssentiallySmall.lean` 232).
- Cross-roadmap citations resolved mechanically: 359 section ids in sibling Parts (161 InfinityCategoryFoundations, 157 LimitsAndKanExtensions, 23 AdjunctionsAndLocalizations, 9 CartesianFibrations, 9 Straightening) and 56 in the ModelCategoryTheory pull request (30 KanQuillen, 20 ModelCategories, 6 SimplicialCategories); all exist; one wrong target (R06), three without their Part (R05).
- Dependency check: `depcheck: 244 roadmaps, 2197 edges, 0 problem(s)`; no UPWARD or CYCLE line. No change outside `TauCetiRoadmap/InfinityCategoryTheory/`.
- Gate: fails on `imports=7`, `build=15` (R01) and `stray-files=1` (R03); every other check is 0. Elaboration stops at the first missing object file, so the `#check` comparison and the one-tactic probe were done by reading: no remaining declaration follows from a lemma of `CardinalFiltered.lean` or `WeaklyContractible.lean` at the pin, and the 67 signatures match the README's generality.
- Pull request text: the description's sentences about this folder (25.1k words; supplier ModelCategoryTheory; pin 2fd255d; headlines not statable) agree with the head.
- Overlap check: read KanQuillen, EnrichedLocalization, SimplicialCategories, ModelCategories (ModelCategoryTheory pull request), EnhancedDerivedSheaves, BordismFormalGroups, StableHomotopyKTheory (main); Yoneda, `Ind_κ` and its universal property: BordismFormalGroups §F6.5; idempotent completion, sifted ∞-categories, the `Ind` comparison: EnhancedDerivedSheaves (R02); nothing shared with the others.
- Source independence: 24 passages compared with 1 source, none shared beyond statements the mathematics forces; largest share HTT, about 555 of 558 locators; contents compared with HTT: independent (Layers 1–6 draw on §5.1 with §5.2.6, §4.4.5, §5.1.4, §5.3.1–2, §5.5.8 with §5.5.2, §5.4.5–6 and §A.2.9, §5.3.3–5 with §4.4.5, not in the source's order).

## Not verifiable

- Elaboration of `Suggested.lean`, elaborated signatures and the one-tactic probe: seven imports are absent at the pinned Tau Ceti.
- The description's claim that the files elaborate against Tau Ceti 8b9f13d993: that commit is not the pin.
- Kerodon, Prop. 3.1.7.9 (cited in §5.3 through Part KanQuillen §3.6.1): not opened.
- Statements behind HTT locators outside the sampled sections and the five further ones listed: label only, text not read.
- Ownership against open pull requests other than the ModelCategoryTheory one and the closest-roadmap lists: not checked.

## Source issues

- **Misprint** in HTT at Definition 4.4.5.2, PDF p. 322: the source says `Idem⁺` is the nerve of a category `J` and `Idem` a full subcategory of `Idem`; it should be the nerve of `R` and a full subcategory of `Idem⁺`; affects nothing.
- **Gap** in HTT at Proposition 4.4.5.17, PDF p. 326: the source says the map from the nerve of any linearly ordered set without largest element is cofinal; it should assume the set nonempty, since the empty nerve is not weakly contractible; affects a stated result.
- **Misprint** in HTT at Counterexample 4.4.5.19, PDF p. 327: the source says the map from `BG` to the sequential colimit would have a left homotopy inverse; it should be a right homotopy inverse, which gives surjectivity on fundamental groups; affects nothing.
- **Error** in HTT at Lemma 5.3.2.6, PDF p. 410: the source says the fiber of a Cartesian fibration with filtered total space over an initial object is a contractible Kan complex; it should be weakly contractible, and Kan only for right fibrations; affects a stated result.

## For the human reviewers

- Ownership: the description asks maintainers to choose between this family and BordismFormalGroups §F6.5, EnhancedDerivedSheaves (both on main) and the GeneralizedCohomology revision of pull request #1807 as owner of presheaves, Yoneda, `Ind` and sifted colimits (R02).
- Licence: the only text read is HTT from the author's page (version of 9 April 2017), classified author-page; about 555 of 558 README locators point to it, and most proof routes are labelled "Lurie's".
- Pin: the build needs main's Tau Ceti pin moved from 2fd255d to a commit with the seven imported modules; that change lies outside this pull request.
