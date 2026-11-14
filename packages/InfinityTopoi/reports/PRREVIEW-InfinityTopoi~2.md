# Review of InfinityTopoi (pull request #2270 at 7e04598)
Folder: `TauCetiRoadmap/InfinityCategoryTheory/InfinityTopoi/`
**Verdict:** needs changes

## R01 (P1) — `Suggested.lean` still does not build at the pinned Tau Ceti

**Location** `TauCetiRoadmap/InfinityCategoryTheory/InfinityTopoi/Suggested.lean` lines 9–11: "public import TauCeti.AlgebraicTopology.Quasicategory.InitialVertex", "…Quasicategory.Limit", "…Quasicategory.TerminalVertex".
**Claim** The file is stated "against the pinned Mathlib and Tau Ceti" (lines 18–19). Previous R01: not repaired.
**Witness** Gate at this head: `imports=3`, `build=7`, "bad import" for the three modules. `lake-manifest.json` here and on `origin/main` pins Tau Ceti `2fd255d`; its `Quasicategory/` holds `Cartesian`, `Core`, `FullSubcategory`, `LocallySmall`, `RightMappingSpace` only.
**Repair** Main has not moved the pin, so delete lines 9–11 and every declaration (all fifteen reach `slice.IsLimit`, `coslice.IsColimit` or `IsInitialVertex`, or serve only those that do); keep the docstring and add: "HTT, Lemma 6.1.1.1 (§1.2.1), disjoint coproducts (§1.1.2) and left exactness at an object (§4.1.1): Tau Ceti has no limits, colimits or initial vertices of quasicategories at the pin."

## R02 (P1) — the Tau Ceti supplier contract cites six declarations absent at the pin

**Location** `README.md` lines 212–223: "`SSet.slice.IsLimit`, `SSet.coslice.IsColimit` (`AlgebraicTopology/Quasicategory/Limit.lean`), `SSet.IsTerminalVertex`, `SSet.IsInitialVertex` … `SSet.catInfty` (`Quasicategory/CatInfty.lean`) … `SSet.ihomOver` (`AlgebraicTopology/SimplicialSet/InternalHom.lean`)".
**Claim** Tau Ceti supplies these. Previous R02: not repaired.
**Witness** None of the six names and none of `Limit.lean`, `TerminalVertex.lean`, `InitialVertex.lean`, `CatInfty.lean`, `InternalHom.lean` exists in Tau Ceti `2fd255d`. `README.md` uses them at lines 83–84, 128, 356, 1835, 1985–2040, 3005, 3420.
**Repair** Replace the three bullets by the family's owners: Part InfinityCategoryFoundations §1.2.4 (limit and colimit diagrams, final and initial objects), Part Straightening for `Cat∞`, and a README target with its signature for the simplicial set of maps over a base in §11.3. Change Conventions 1 and 7 and the *Needs:* lines of §1.2.1, §10.3.1, §11.3.1, §11.3.2, §17.3.1, §20.1.1 to match.

## R03 (P2) — sheaves of spaces on a site have a second owner on main

**Location** `README.md` §8.2.1, line 1487: "Define, for a small ∞-category C with a Grothendieck topology, a presheaf F to be a **sheaf** when it is S-local"; Scope and ownership (lines 43–70) names no roadmap for it.
**Claim** This Part is the only owner of `Shv(C)`. Previous R04: not repaired (`EnhancedDerivedSheaves` occurs nowhere in the README).
**Witness** On main, `TauCetiRoadmap/EnhancedDerivedSheaves/README.md` line 2377 (§E2.7, `spaceSheaves`): sheaves of spaces on a small site are the accessible localization of presheaves of spaces at the covering-sieve inclusions.
**Repair** Add to Scope and ownership: "Sheaves of spaces on a small site are `spaceSheaves` of EnhancedDerivedSheaves §E2.7; §8.2.1 is the same localization for a topology on a small ∞-category, and on the nerve of a small site it is that object. This Part adds what §E2.7 does not state: left exactness, the topological-localization property (§8.3), the classification of §8.4 and the universal property of §9.1." Add EnhancedDerivedSheaves §E2.7 to the *Needs:* of §8.2.1.

## R04 (P2) — the covering topology of a frame is also defined by GrothendieckTopoi

**Location** `README.md` Scope, line 64: "The covering topology of a locale is defined in §18.3 for this Part's own use"; §18.3.1, line 3128: "The **covering topology** on N(U), for a locale U, is the Grothendieck topology on the category U …".
**Claim** The topology is this Part's to define; the 1-categorical theory is left to unnamed "other roadmaps". Previous R05: not repaired (`GrothendieckTopoi` occurs nowhere in the README).
**Witness** Pull request #1520, `TauCetiRoadmap/GrothendieckTopoi/README.md` §7.1, line 1193: "Define `Frame.grothendieckTopology L` (Convention 8): a sieve `S` on `U` covers when `U` is the supremum …", compared there with `Opens.grothendieckTopology`.
**Repair** In §18.3.1 cite GrothendieckTopoi §7.1 for the topology on the category U and keep only its transport to N(U) through §8.1.1; drop the Checks that repeat §7.1's (the last two). In Scope, replace the sentence at line 64 and name GrothendieckTopoi (Layers 1, 4 and 7) as the roadmap that the classical Giraud theorem, subtopoi and localic 1-topoi are left to.

## R05 (P3) — the docstring and three section headers describe declarations the file no longer has

**Location** `Suggested.lean` lines 28–34 ("Stated below: … left exactness as preservation of final objects together with left exactness at every object (§4.1.1); equivalence relations of sets are effective … (§7.7.1); group objects in group objects … (§13.3.1); the order-theoretic core …(§18.2.1)"), line 58, lines 231–235.
**Claim** The file states these four results and has declarations under Layers 7, 13 and 18.
**Witness** The file's only theorems are `isCartesian_evalAt_iff_isPullbackSquare` and `cartesianFibration_evalAt_iff` (lines 198, 208). Gate: `empty-sections=3` (lines 231, 233, 235).
**Repair** Delete lines 30–34 and 231–235; cut lines 28–29 to "left exactness at an object (§4.1.1)"; in line 58 delete "; the order-theoretic core of §18.2.1 is stated below". After R01 the "Stated below" list goes entirely.

## R06 (P3) — definitions that no stated theorem uses

**Location** `Suggested.lean` lines 116 (`IsLeftExact`), 189 (`HasDisjointCoproducts`), 226 (`IsLeftExactAt`), and lines 100, 121, 128, 150, 168 (`IsColimitDiagram`, `spanCoord₁`, `spanCoord₂`, `coconeShape`, `IsPushoutSquare`).
**Claim** Each definition is needed to state a theorem of the file.
**Witness** The two theorems (lines 198–213) mention only `IsPullbackSquare`, `coneShape`, `cospanCoord₁`, `cospanCoord₂`, `IsLimitDiagram`. `IsLeftExact` lost its only use when `isLeftExact_iff_forall_isLeftExactAt` was deleted.
**Repair** Delete the eight declarations from `Suggested.lean`; §1.1.2 and §4.1.1 of the README keep the definitions, without the sentences "`Suggested.lean` declaration `HasDisjointCoproducts` …" (line 333) and "`Suggested.lean` declaration `IsLeftExactAt` …" (line 810).

## R07 (P3) — README and Lean names do not agree

**Location** `README.md` §1.1.2, line 334: "The `Suggested.lean` declaration is `isCartesian_evalAt_iff_isPullbackSquare`."; §1.2.1, lines 354–355: "The `Suggested.lean` declaration is `cartesianFibration_evalAt_iff`."
**Claim** Each Lean name appears in the README at its target. Previous R07: partly repaired.
**Witness** `isCartesian_evalAt_iff_isPullbackSquare` is HTT, Lemma 6.1.1.1 (§1.2.1) and is named under disjoint coproducts (§1.1.2). `grep -c` on `README.md` gives 0 for `IsPullbackSquare`, `IsLimitDiagram`, `coneShape`, `cospanCoord`, `IsColimitDiagram`, `IsPushoutSquare`, `coconeShape`, `spanCoord`.
**Repair** Delete the sentence at line 334. In §1.2.1 write: "The `Suggested.lean` declarations are `isCartesian_evalAt_iff_isPullbackSquare` (first statement) and `cartesianFibration_evalAt_iff` (second), on the repeated definitions `IsPullbackSquare`, `IsLimitDiagram`, `coneShape`, `cospanCoord₁`, `cospanCoord₂` of Part InfinityCategoryFoundations §1.2.4." Moot once R01 empties the file: then delete every "`Suggested.lean` declaration" sentence.

## R08 (P3) — a file in the folder that is not a roadmap file

**Location** `TauCetiRoadmap/InfinityCategoryTheory/InfinityTopoi/NOTES.md` (30 lines).
**Claim** The folder holds only roadmap files.
**Witness** Gate: `stray-files=1`. The file is process text ("firm round 1, findings 2–3", "plans/linear-firm/FINAL-PLAN.md", "The PR description should name the dependency").
**Repair** Delete it; sources are the README's references.

## R09 (P3) — §4.2.2 has no locator and no *Needs:* line

**Location** `README.md` line 888: "**4.2.2.** Let `I ⊆ Δ₊` be the subcategory on `∅, [0], [1]` with the injective maps … A diagram `N(I)ᵒᵖ → 𝒳` is a **coequalizer diagram** when it is a colimit of its restriction to `N(I₀)ᵒᵖ`."
**Claim** Every target carries its locator and its dependencies.
**Witness** HTT line 26058 (§6.1.4, PDF p. 577, before Lemma 6.1.4.7) defines coequalizer diagrams in these terms; the target cites nothing and ends at its Checks.
**Repair** Add "(HTT, §6.1.4, the definitions before Lemma 6.1.4.7, pp. 576–577)" after the definition and, after the Checks, "*Needs:* Part InfinityCategoryFoundations §1.2.4 (HTT, Def. 1.2.13.4); Mathlib `AugmentedSimplexCategory`."

## R10 (P3) — a quantifier with nothing to bind in §14.5.2

**Location** `README.md` line 2602: "**14.5.2.** Prove that, for 0 ≤ n ≤ ∞, every equivalence of X is ∞-connective (HTT, Prop. 6.5.1.16 (2), p. 680)."
**Claim** The statement depends on n.
**Witness** HTT, Prop. 6.5.1.16 (2) (PDF p. 681, first lines) says that any equivalence is ∞-connective, with no n; the clause "for 0 ≤ n ≤ ∞" was added to all seven items of §14.5 alike.
**Repair** "**14.5.2.** Prove that every equivalence of X is ∞-connective (HTT, Prop. 6.5.1.16 (2), p. 680)."

## Verified sound

| Statement | Instances tried | Values on each side | Result | Change |
|---|---|---|---|---|
| §1.3.1 (HTT, Prop. 6.1.1.4) | Δ[0]; N(Ab); ∅ | Δ[0]: slices Δ[0], `f^*` identity, both hold. Ab: `ℤ⊕ℤ → ℤ` pulled back along `0 → ℤ` is ℤ, `0 ⊔ 0 = 0`: both fail. ∅: no final object, excluded | holds; finite limits as HTT line 24881 | none |
| §2.2.1 (Lemma 6.1.3.5) | K = ∅, S empty; S = equivalences | S empty: fiber over ∅ is empty ≠ point, and (3) fails since `id_∅ ∉ S`. Equivalences: constant point functor, limit a point; (3) holds | (1), (3) agree; HTT line 25457 | none |
| §3.3.1 (Lemma 6.1.3.15) | S → Δ[0]; `P(C)` → N(Ab) | Δ[0]: universal. Ab is an accessible, not left exact, localization of a presheaf ∞-category: ℤ against 0 | left exactness needed | none |
| §5.1.1, §5.1.2 (Def. 6.1.6.1, Prop. 6.1.6.3) | `{1} → {0,1}`; `{1} → {0,1,2}`; all maps of S | `Map(X, {0,1})` = unions of components = `Sub(X)`. Three points: `∅ → ∗` from 2 maps. All maps: `S_{/∗}` not essentially small | first classifies, others do not | none |
| §5.2.1, §5.2.2 (Def. 6.1.6.4, Prop. 6.1.6.7) | `∗ → S¹`; degree 2 `S¹ → S¹`; `Y → ∗` | fibers ℤ (not ω-compact); two points; `Y × Y′` compact iff Y is | matches HTT line 26462 | none |
| §7.6.1, §7.6.2 (Lemma 6.2.3.13, Prop. 6.2.3.14) | Set, K any; K = ∅; monomorphisms of S | `⊔ p(x) → colim` surjective; K = ∅: `id_∅`. Monos: pullback along π₀-surjection is mono iff all fibers empty or contractible | holds | none |
| §8.4.1 (Prop. 6.2.2.17) | C = Δ[0]; C = Δ[1] | Δ[0]: 2 topologies, localizations S and Δ[0]. Δ[1]: 4 topologies (pullback of `{0→1}` is maximal; transitivity kills one combination), localizations `P`, `{F(1) ≃ F(0)}`, `{F(0) = ∗}`, Δ[0] | bijections 2 ↔ 2, 4 ↔ 4 | none |
| §10.6.1 (Remark 6.5.4.7) | S; S × S; Δ[0] | S × S: `(X, Y) ↦ X × f(a) ⊔ Y × f(b)` preserves ∗ iff `{f(a), f(b)} = {∗, ∅}`: 2 points. Δ[0]: `f^*` would send the object to ∅ and to ∗: 0 points | enough points in all three | none |
| §13.2.1, §13.2.2 (Lemmas 7.2.2.9, 7.2.2.10) | S; N(Ab); Δ[0] | S: `S_* → S` misses ∅, not an equivalence; group objects have `U₀` final, so pointing adds nothing. Ab: unique base points | finite products needed in 7.2.2.10, as stated | none |
| §13.3.1, §13.3.2 | A = Set, S₃, ℤ/2; one-object A | two unital operations, each a homomorphism for the other: equal and commutative; S₃ has none | holds | none |
| §14.8.1 (Lemma 7.2.1.13) | n = 0, U = S¹; U = ∂Δ[1] | S¹: Set → ℤ-sets fully faithful, misses the sign action on two points; subobjects `{∅, ∗} ↔ {∅, S¹}`. ∂Δ[1]: 4 subobjects against 2 | (n + 1)-connectivity needed | none |
| §14.9.1 | n = 0; `K ↦ (K, K)`; `K ↦ ∂Δ[1] × K` | `Δ[0] → ∂Δ[1]` in `EM_0`, not connected; pair of circles in `EM_1(S × S)`; Δ[0] ↦ ∂Δ[1] not final | bound n ≥ 1 and left exactness needed | none |
| §17.1.1 (Notation 6.4.4.2) | n = 0, 1; one square in S | `O^0_X ≃ X`; fiber of `O^1_S` over Δ[0] is `{∅, Δ[0]}`; pullback of `id` along `id` is Δ[0] ≠ ∅ | `O^(n)` not full | none |
| §17.2.1 (Thm. 6.4.4.5) | n = 0; n = ∞ | n = 0: every square of equivalences is Cartesian, constant point functor preserves limits. n = ∞: Thm. 6.1.3.9 | agrees with HTT line 30332 | none |
| §17.3.1 (Prop. 6.4.4.7) | Y = S: (n, k) = (1, 0), (2, 0), (0, −1) | (1, 0): monos of Set, classified by `{0, 1}`. (2, 0): all maps of Set; slices over `∗ ⊔_{∗⊔∗} ∗` glue to sets with an automorphism ≠ Set. (0, −1): equivalences | bound k ≥ n − 1 sharp | none |
| §19.1.1 (Prop. 6.4.3.4) | N(Set), n = 1; S, n = 1; n = 0 | Set: kernel pairs embed in `U₀ × U₀`. S: constant groupoid on S¹ has diagonal fiber ℤ. n = 0: diagonal an equivalence iff subterminal | holds with finite limits | none |
| §4.4.1 Giraud (Thm. 6.1.0.6) | Δ[0]; ∅; N(Set); N(Ab) | Δ[0]: `P(∅)`, all three. ∅: none. Set: ℤ/2 groupoid has colimit ∗, Čech nerve constant; `π₀(∗ ×_{S¹} ∗) = ℤ` against ∗. Ab: ℤ against 0 | three predicates agree | none |
| §5.3.1 Rezk (Thm. 6.1.6.8) | S; N(Set) | S: core of κ-compact spaces. Set: class of all maps not local (row §17.3.1), no classifier for large κ | holds | none |
| §8.3.1 (Prop. 6.2.2.7) | Δ[0], ∅ covering; trivial topology | `F†(∗)` = value at the empty sieve = point; trivial: `F† ≃ F` | one step sheafifies; `Shv = Δ[0]` | none |
| §9.1.1, §10.5.1 (Props. 6.2.3.20, 6.3.4.1) | C = Δ[0]; X = S × S | left exact `Δ[0] → X` = final objects, contractible; into S × S only `K ↦ (K, K)` | holds | none |
| §11.1.1 (Prop. 6.3.2.3) | empty product | Δ[0]: one functor `X → Δ[0]`, left exact and colimit-preserving; final in `LTop` | consistent with §10.3 | none |
| §14.1.1, §14.7.1 (Prop. 7.2.1.14, Ex. 5.2.8.16) | `∗ → S¹`; `∅ → ∗`; n = −2, −1 | `τ≤0`: `id_∗` (epi); `∅ → ∗` not epi. n = −2: all maps / equivalences; n = −1: effective epi / mono | indices right | none |
| §15.1.1, §15.2.1 (Lemma 7.2.2.11, Prop. 7.2.2.12) | S¹; `Δ[0] → ∂Δ[1]`; S₃; 𝒳 = Δ[0] | S¹ ↦ ℤ in `Grp(EM_0)`; non-connected point has constant Čech nerve; BS₃ non-abelian π₁; one group object in Δ[0] | holds; effective epi out of 1 in a 1-category is an isomorphism | none |
| §18.3.2 (Thm. 6.4.2.1) | Δ[1]; subspaces of ℝ² | Δ[1] = `P≤−1(Δ[0])`, all four. Lines: `a ∧ (b ∨ c) = a`, `(a ∧ b) ∨ (a ∧ c) = 0` | (3) ⇔ (4) | R04 (ownership only) |
| §19.4.1 (Thm. 6.4.1.5) | n = 0; N(Set), n = 1 | n = 0: 0-efficient groupoids constant (`U₁ = U₀`), (4)–(6) reduce to universality; `1 ⊔ 1 = 1` explains "disjoint if n > 0". Set = `P≤0(Δ[0])` | six conditions agree | none |
| §20.2.1, §20.3.1 (Prop. 6.4.5.7, Def. 6.4.5.8) | (m, n) = (0, ∞), Y = Δ[1]; S/S¹; `A ↦ A × A` | X = S, `τ≤−1 S = Δ[1]`, both `Fun_*` contractible. S/S¹: points S¹, locale a point. `2 × ∗` two points | S 0-localic, S/S¹ not | none |
| `isCartesian_evalAt_iff_isPullbackSquare`, `cartesianFibration_evalAt_iff` | X = Δ[0]; ∅; nerve of `{a, b < c}` | Δ[0], ∅: both sides true. `{a, b < c}`: cospan `a → c ← b` has no pullback, no Cartesian lift of `a → c` at `b → c`: both false. Corners: cone (0,0), cospan (1,0), (0,1), (1,1) | true by reading; not elaborated | R01 |
| `HasDisjointCoproducts`, `IsLeftExactAt` | Δ[0], N[1]; `X ↦ X ⊔ ∗` | [1]: square 0, 1, 1, 1 pushout, not pullback. `(A ⊔ ∗) ×_{Z ⊔ ∗} (B ⊔ ∗) = (A ×_Z B) ⊔ ∗`, ∗ ↦ 2 points | match §1.1.2, §4.1.1 | R06 |
| §4.2.2 coequalizer diagrams | `∗ ⇉ ∗`; `∅ ⇉ ∗`; nerve of ℕ | S¹, not ∗; kernel pair ∗ ≠ ∅; `(a, b) ↦ (b, a + b)` not onto `ℕ²` | Checks true | R09 |

- Previous findings: R01, R02, R04, R05 not repaired (R01–R04 here); R07 partly (R07 here); R03 and R06 repaired by deletion, leaving the residue of R05 and R06 here; R08 (now "Part ModelCategories §3.5.3", resolves), R09 (HA entry gone), R10 (§15.2.1 Check cites Part KanQuillen §5.4.1, §5.5.2; both resolve) repaired.
- Source locators checked against the text: 36 in HTT (statement, PDF page, hypotheses; all agree), among them lines 24881, 25457, 25729, 26422, 26551, 27279, 27540, 27568, 30068, 30296, 30332, 30382, 31885, 33531, 33648, 33720.
- Library declarations opened at the pins: 28 Mathlib names of the contract found (e.g. `strongEpi_of_strongEpi`, `Limits/Shapes/StrongEpi.lean:91`; `isRegularEpi_iff_effectiveEpi`, `Limits/Shapes/RegularMono.lean:519`; `Order.Frame.MinimalAxioms`, `Order/CompleteBooleanAlgebra.lean:63`); 9 Tau Ceti names found (`SSet.Edge.IsCartesian`, `Quasicategory/Cartesian.lean:65`; `SSet.evalAt`, `SimplicialSet/WeaklyContractible.lean:75`), 6 absent (R02). No Cartesian monoidal instance on `CommGrp`; no `EffectiveEpi ↔ Surjective` in `Type u`.
- Cross-roadmap citations resolved: 25 targets of the sibling Parts (those renumbered since the last head among them: Part LimitsAndKanExtensions §7.3.5, §7.4.6, §7.4.7, §7.5.2, Part InfinityCategoryFoundations §1.1) and 5 of ModelCategoryTheory at the head of #2269; the eleven repeated definitions have the same bodies as Part InfinityCategoryFoundations' `Suggested.lean`.
- Dependency check: `depcheck: 244 roadmaps, 2197 edges, 0 problem(s)`; no UPWARD or CYCLE line. No change outside the family folder. No supplier gap is declared.
- Gate: FAIL (`imports=3`, `build=7`, `empty-sections=3`, `stray-files=1`); every other check 0. No elaboration, `#check` or one-tactic probe was possible (R01); the two theorems were checked by reading (table).
- Overlap check: read KanQuillen, SimplicialCategories, EnrichedLocalization, ModelCategories, GrothendieckTopoi, EnhancedDerivedSheaves, BordismFormalGroups, StableHomotopyKTheory; sheaves of spaces on a site: EnhancedDerivedSheaves §E2.7 (R03); the covering topology of a frame: GrothendieckTopoi §7.1 (R04); `K(A, n)` for Kan complexes: Part KanQuillen §5.4.1, cited; nothing else shared.
- Source independence: 41 passages compared with 1 source (HTT), none shared beyond forced condition lists (longest run 19 words, the conditions of Thm. 6.4.1.5 at `README.md` line 3334; next 14); largest share HTT, 1017 of 1029 locators; contents compared with HTT §6.1–§6.5.1, §7.2: independent (Layer 7 on §6.2.3 precedes Layer 8 on §6.2.2; Layers 12–15 on §6.5.1 and §7.2 precede Layers 16–20 on §6.4, forced by §17.3.1 needing §14.8.1; Layer 18 on §6.4.2 follows Layer 17 on §6.4.4). SAG and Kerodon were not opened this round.

## Not verifiable

- `Suggested.lean` as a whole: its three Tau Ceti imports do not exist at the pin, so no elaboration, no elaborated signatures and no probe.
- The description's statement that the file elaborates against Tau Ceti `8b9f13d993`: that commit is not the pin.
- SAG, Def. 1.3.1.1 and Def. 1.5.4.1; Kerodon, Thm. 3.2.6.1, Thm. 3.2.7.1, Cor. 3.5.2.7, Def. 3.5.7.20, Def. 6.2.1.1; SGA 4, exposé IV, 1.2: outside the sample, not opened this round.

## Source issues

- **Gap** in HTT at Lemma 7.2.2.10, PDF p. 744: the source says the statement holds for an arbitrary ∞-category; it should be an ∞-category with finite products, since pointed objects need a final object and the proof uses products; affects a stated result.
- **Gap** in HTT at Prop. 6.4.3.4, PDF p. 663: the source says the equivalence holds for an arbitrary ∞-category; it should assume finite limits, which n-efficiency (`U₁ → U₀ × U₀`) and the diagonal criterion use; affects a stated result.

## For the human reviewers

- **Scope.** The description asks the maintainers to choose the owner of the generic ∞-categorical material against BordismFormalGroups §F6.5, EnhancedDerivedSheaves (§E2.7 for this Part) and pull request #1807; R03 assumes main's owner until that is decided.
- **Licence.** HTT was read from the author's page (`math.ias.edu/~lurie/papers/HTT.pdf`), classed by hand as an author-page copy; 1017 of the README's 1029 locators point into it.
- **Pin.** The description says the file elaborates against Tau Ceti `8b9f13d993`; `lake-manifest.json` on main and at this head pins `2fd255d`. Whether to bump the pin or empty the file (R01) is a maintainers' choice.
