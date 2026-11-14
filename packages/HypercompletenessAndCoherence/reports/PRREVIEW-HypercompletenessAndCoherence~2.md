# Review of HypercompletenessAndCoherence (pull request #2270 at 7e04598)
Folder: `TauCetiRoadmap/InfinityCategoryTheory/HypercompletenessAndCoherence/`
**Verdict:** needs changes

Previous review (at 04df60e), finding by finding: its R01 not repaired (R01 here); R02 not repaired (R02); R03 not repaired (R03); R04 partly (R08); R05 not repaired (R04); R06 partly (R11); R07 partly (R09); R08 partly (R10). `Suggested.lean` is unchanged since 04df60e.

## R01 (P2) — Six Tau Ceti declarations of the supplier contracts are still not at the pin

**Location:** `README.md` lines 227–239 (`### From Tau Ceti`): "`SSet.catInfty` … `SSet.slice.IsLimit`, `SSet.coslice.IsColimit` … `SSet.IsTerminalVertex` … `TauCeti.MarkedSSet.markedAnodyneExtensions` … `SSet.RightFibration`", and the `*Needs:*` lines using them (§3.5.1, §4.1, §8.2.2, §9.3, §9.4.1, §11.1.1, §11.5).
**Claim:** The contracts cite these six names, with file paths, as Tau Ceti's. `lake-manifest.json` still pins Tau Ceti 2fd255d, where none exists; this head adds one more use (line 933).
**Witness:** At the pin `TauCeti/AlgebraicTopology/Quasicategory/` holds only `Cartesian.lean`, `Core.lean`, `FullSubcategory.lean`, `LocallySmall.lean`, `RightMappingSpace.lean`; no `SimplicialSet/AnodyneExtensions/`. The folder's own `NOTES.md` lines 50–54 says the six names are "not at the roadmap pin 2fd255d".
**Repair:** Rebase onto a main whose `lake-manifest.json` pins a Tau Ceti commit containing the six declarations and recheck each name and path of lines 227–239 there. `SSet.CartesianFibration` (`Cartesian.lean:110`) and `SSet.rlp_monomorphisms_iff` (`TrivialFibration.lean:171`) are at the pin.

## R02 (P2) — The hypercompletion of sheaves of spaces has an owner on main that the README does not name

**Location:** `README.md` lines 70–84 (`## Scope and ownership`, "Other roadmaps own the following"), which name no roadmap for hypercompletion or Postnikov convergence; §1.1.1, §1.2.1, §2.5.2, §3.4.1.
**Claim:** These sections state for an ∞-topos what `EnhancedDerivedSheaves` §E2.7, on main, states for sheaves of spaces on a small site. A roadmap on main is cited by an open one; the README does not cite it.
**Witness:** `TauCetiRoadmap/EnhancedDerivedSheaves/README.md` (main) §E2.7: "Provide `spaceSheaves`, `hypercompleteSpaceSheaves`, `spacePostnikovTower` and `spacePostnikov_convergence`"; a search of this README for "EnhancedDerivedSheaves" returns nothing.
**Repair:** Add under "Other roadmaps own the following": "EnhancedDerivedSheaves §E2.7 states the hypercomplete sheaves of spaces on a small site (*hypercompleteSpaceSheaves*) and the convergence of their Postnikov towers (*spacePostnikov_convergence*). §1.1, §1.2, §2.5 and §3.4 here are the statements for an arbitrary ∞-topos X, with the universal property of X^∧; the case X = Shv(C) is that section's." Cite §E2.7 at §1.1.1.

## R03 (P2) — Stone duality for spectral spaces is also owned by AnalyticStacks §2.10

**Location:** `README.md` line 1658: "2. **Lattices.** `Spec` induces an equivalence `Latᵒᵖ ≃ Top_coh` (SAG, Prop. A.1.5.10, p. 1749)", with lines 1663–1677 and the headline of lines 33–34.
**Claim:** The equivalence of bounded distributive lattices with spectral spaces and spectral maps is a target of AnalyticStacks, a new roadmap earlier in the merge order (line 337 against 411), so citable. It is stated here again with no citation.
**Witness:** AnalyticStacks (open, new roadmap), `TauCetiRoadmap/AnalyticStacks/README.md` line 683: "**2.10** … Define `SpectralSpaceCat`"; line 664: "Stone duality for spectral spaces"; target `spectralStoneDuality`. This README never names AnalyticStacks.
**Repair:** In `## Scope and ownership` add: "The equivalence of spectral spaces with bounded distributive lattices by compact opens is AnalyticStacks §2.10 (*spectralStoneDuality*); Layer 7 keeps the prime-ideal spectrum `Spec(Λ)`, its explicit quasi-inverse, the semilattice level and the Boolean level." Restate §7.4.1 (2) as: "Prove that `Λ ↦ Spec(Λ)` is quasi-inverse to the compact-opens functor of AnalyticStacks §2.10, through the isomorphism of Λ with the compact opens of `Spec(Λ)` (Prop. A.1.2.5 (5))", and add "AnalyticStacks §2.10" to the `*Needs:*` of (2). The `LatticeSpectrum` declarations stand.

## R04 (P2) — Each layer is still one section of HTT or SAG, in the books' order

**Location:** `README.md` lines 350–362 (`## How to read the build`) and lines 2856–2859: "Appendix A, pp. 1735–1829: Stone duality §A.1, coherent ∞-topoi §A.2, sheaves on finitary sites §A.3, Deligne completeness §A.4, semisimplicial objects and hypercoverings §A.5, ∞-pretopoi §A.6, Postnikov completeness §A.7.2".
**Claim:** The twelve layers are unchanged and map one to one, in order, onto source sections. The `*Needs:*` lines force the order 1 → 2, 1 → 3, 4 → 5 → 6, 8 → 9 → 10 → 11 and 7 → 10; they do not force each layer's scope.
**Witness:** Layers 1, 2, 3 ↔ HTT §6.5.2, §6.5.3, §7.2.1. Layers 4, 5, 6 ↔ SAG §1.3.1, §1.3.2, §1.3.3. Layers 7, 8, 9, 10, 11, 12 ↔ SAG §A.1, §A.2, §A.3 (with §20.4), §A.4, §A.5 (with §A.6.1–2), §A.7.2.
**Repair:** (a) Merge Layer 12 into Layer 3: §12.1.1 needs only §3.4.1 and Part PresentableInfinityCategories §6.4.1 (lines 2809–2814). (b) Move §10.2 to Layer 3: it needs only §3.1.1, §3.3.1, §3.5.1 and Part InfinityTopoi (lines 2259–2262). (c) §11.1 is used only by the definition §11.2.3 (line 2583): state §11.2.3 for ∞-topoi and cut §11.1, or add pretopos theorems as targets. (d) Order Layer 7 by what §10.4 uses (Thm. A.1.6.11), with level (2) cited as in R03. Add second sources for the main results: Johnstone, *Stone Spaces*, Ch. II, with section locators (Layer 7; now "background only", line 2879); Mac Lane–Moerdijk, *Sheaves in Geometry and Logic*, Ch. IX (§10.3–§10.5); SGA 4, Exp. VI, Appendix (§10.5.2).

## R05 (P3) — `NOTES.md` is not a roadmap file (gate: `stray-files`)

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/HypercompletenessAndCoherence/NOTES.md` line 1: "# Notes on the HypercompletenessAndCoherence draft (private)".
**Claim:** A roadmap folder holds only `README.md`, `Suggested.lean`, `metadata.toml`, other `*.lean` files and nested roadmaps. The gate fails on this file, and its content is process narrative.
**Witness:** Gate at 7e04598: `stray-files=1 … FAIL`, "NOTES.md: not a roadmap file". Line 41: "Since the sim-firm review (R07) the README no longer prints these five names".
**Repair:** Delete it; sources are the README's references.

## R06 (P3) — §3.5.1 `*Needs:*` lost its Part: `§5.4.1`, `§5.5.3`, `§5.5.2` now point into this README

**Location:** `README.md` lines 933–934: "Tau Ceti `TauCeti.MarkedSSet.markedAnodyneExtensions` (HTT, Def. 3.1.1.1), §5.4.1 (HTT, Prop. 3.1.2.3), §5.5.3 (HTT, Prop. 3.1.2.1), §5.5.2 (HTT, Remark 3.1.3.1)".
**Claim:** Replacing "Part CartesianFibrations §5.2.1" by the Tau Ceti name removed the Part for the three sections that follow. By the Conventions (line 91) a bare `§5.4.1` is this Part's, the t-exactness of pullback; no §5.5 exists here. Line 937 repeats the Tau Ceti name.
**Witness:** `CartesianFibrations/README.md` line 838: "**5.4.1.** Prove that the pushout-product of a marked anodyne map with a cofibration …"; lines 860, 889 are §5.5.2, §5.5.3 with HTT, Rem. 3.1.3.1 and Prop. 3.1.2.1. This README line 1222: "**5.4.1.** … g^* … is t-exact".
**Repair:** Replace lines 933–934 and 937 by: "- Tau Ceti `TauCeti.MarkedSSet.markedAnodyneExtensions` (HTT, Def. 3.1.1.1), `SSet.CartesianFibration`; Part CartesianFibrations §5.4.1 (HTT, Prop. 3.1.2.3), §5.5.3 (HTT, Prop. 3.1.2.1), §5.5.2 (HTT, Remark 3.1.3.1)".

## R07 (P3) — §1.5.1 cites Part InfinityTopoi §6.2.2, which does not exist

**Location:** `README.md` line 547: "Part InfinityTopoi §6.1.1 (HTT, Prop. 6.2.1.3), §6.2.1 (HTT, Def. 6.2.1.4), §6.2.2 (HTT, Prop. 6.2.1.5)".
**Claim:** Part InfinityTopoi §6.2 has the single target §6.2.1, which contains both the definition and Prop. 6.2.1.5.
**Witness:** `InfinityTopoi/README.md` lines 1152–1160: "### 6.2 Topological localizations", "**6.2.1.** Define …", and inside it "(HTT, Prop. 6.2.1.5, p. 594)"; no line begins `**6.2.2.`.
**Repair:** "Part InfinityTopoi §6.1.1 (HTT, Prop. 6.2.1.3), §6.2.1 (HTT, Def. 6.2.1.4, Prop. 6.2.1.5)".

## R08 (P3) — §10.3.1 cites Part InfinityTopoi §6.1.1 and still defines `Sub(X)` again, with that section's Checks

**Location:** `README.md` lines 2266–2283: "Subobject posets `Sub(X)` are those of Part InfinityTopoi §6.1.1 … `Sub(X)` is the poset of equivalence classes of subobjects under `⊆`", three Checks, and a `*Needs:*` without §6.1.1.
**Claim:** The citation was added but the definition and the first and third Checks remain, both of which the supplier already has; the `*Needs:*` of §10.3.1 and §10.3.2 do not name the supplier.
**Witness:** `InfinityTopoi/README.md` §6.1.1 Checks: "In `S`, `Sub(X)` is the power set of `π₀ X` … `∗ → S¹` … not" and "`Sub(∅)` has one element"; this README lines 2273–2276 and 2279 compute the same two values.
**Repair:** Keep the first sentence of line 2266 and the second Check; delete the sentences "A subobject of `X` is … under `⊆`" and the first and third Checks. `*Needs:*` of §10.3.1: "Part InfinityTopoi §6.1.1, §18.4.1". In line 2302 replace "§10.3.1 (subobject posets)" by "Part InfinityTopoi §6.1.1 (subobject posets)".

## R09 (P3) — "geometric morphism `f^* : X → Y`" survives in Layers 9–11 against the Conventions

**Location:** `README.md` line 2285: "admits a surjective geometric morphism `f^* : X → Shv(Λ)`"; likewise lines 2163, 2287, 2307, 2309–2310, 2343–2344, 2358–2359, 2376–2377, 2406–2407, 2654.
**Claim:** The Conventions now say (lines 110–112) that a geometric morphism goes from Y to X and that the text writes "the pullback `f^* : X → Y` of a geometric morphism from Y to X". Only §10.1.1 was rewritten; these lines name the pullback as the morphism, with the opposite direction.
**Witness:** Line 2202 (repaired): "a family of geometric morphisms from ∞-topoi Xα to X, with pullbacks `fα^* : X → Xα`"; line 2376: "the stalk functors `t^* : Shv(T) → S` … composing a surjective geometric morphism `h^* : Y → Shv(T)`".
**Repair:** At each listed line use the form of line 2202, e.g. line 2285: "Prove that every 0-localic ∞-topos `X` admits a surjective geometric morphism from `Shv(Λ)` to `X`, with pullback `f^* : X → Shv(Λ)`, for some complete Boolean algebra `Λ`"; line 2406: "some point of `X`, with pullback `f^* : X → S`, has `f^*(α)` not an equivalence".

## R10 (P3) — 𝒳 was introduced in Layers 8–9 for some occurrences only

**Location:** `README.md` lines 1895–1900: "for an ∞-topos 𝒳 that is locally n-coherent … 1. `X^∧` is locally n-coherent … 2. … coherent in `X`; 3. `X ∈ 𝒳` is coherent exactly when `LX` is"; also lines 1771–1778, 1830–1831, 1905–1906, 1960, 2011–2018, 2142–2144.
**Claim:** The ∞-topos is 𝒳 where it is introduced and in slices, and `X` in the rest of the same statement, where `X` also names an object. The statements now use two letters for one ∞-topos.
**Witness:** Line 1778: "`𝒳_{/1} ≃ X`"; line 1960: "for an ∞-topos 𝒳, a small ∞-category `C` and `f : C → X`"; line 2142–2144: "for an ∞-topos 𝒳 … 1. `X` is locally coherent and hypercomplete".
**Repair:** In Layers 8–11 write 𝒳 at every occurrence that denotes the ∞-topos: `𝒳^∧`, "coherent in 𝒳", `𝒳_{/1} ≃ 𝒳`, `f : C → 𝒳`, `C ⊆ 𝒳`, "𝒳 is locally coherent", `f^* : 𝒳 → 𝒴` with `Y ∈ 𝒴`; keep `X`, `U`, `V` for objects.

## R11 (P3) — §11.5.2 still cites HTT Counterexample 6.5.4.2 as the statement that a sheaf on the Hilbert cube is not hypercomplete

**Location:** `README.md` lines 2724–2725: "For `C` the opens of the Hilbert cube with open covers and `D = S`, some sheaf is not hypercomplete (HTT, Counterexample 6.5.4.2, p. 700)".
**Claim:** §1.1 was repaired to say this is a deduction; this Check still gives the locator as the statement. The source builds a sheaf on Q × [0, 1] to refute base change for hypercompletions.
**Witness:** HTT line 31772: the sheaf is constructed "on X = Q × [0, 1]"; HTT lines 31766–31768 announce a counterexample to base change "if we work with hypercomplete ∞-topoi".
**Repair:** "… some sheaf is not hypercomplete (§1.1, third Check, a deduction from HTT, Counterexample 6.5.4.2, p. 700) …". Lines 2804–2805 already say "recorded in §1.1".

## R12 (P3) — Inserted "The `Suggested.lean` declaration is …" sentences split "Prove:" from its list

**Location:** `README.md` lines 1596–1597: "Prove (SAG, Prop. A.1.2.5, pp. 1740–1741): The `Suggested.lean` declaration is `exists_orderIso_opens`."; lines 1630–1631; lines 1649–1651; line 2198.
**Claim:** The sentence stands between "Prove …:" (or "For a distributive upper semilattice `Λ`:") and the list it introduces, and repeats, without namespace, names the items below already give. `## Layer 10` follows line 2197 with no blank line.
**Witness:** Line 1601 already has "the `Suggested.lean` declaration `LatticeSpectrum.exists_orderIso_opens`"; line 1639 has `LatticeSpectrum.t2Space_iff_complementedLattice`; lines 1667–1677 have the five names of lines 1649–1651.
**Repair:** Delete the three inserted sentences (lines 1596–1597 from "The `Suggested.lean`", line 1631, lines 1649–1651 from "The `Suggested.lean`"). Insert a blank line before `## Layer 10: Deligne completeness`.

## Verified sound

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| §1.2.1 (HTT, Prop. 6.5.2.8, p. 686) | X = S; X = Δ[0] | S: class = weak equivalences; Δ[0]: identities; HTT line 31139 states "strongly saturated and of small generation" | holds | none |
| §1.5.1 (HTT, Prop. 6.5.2.19, p. 690) | X″ = X^∧; X″ = Δ[0]; X″ = X | X^∧: S = equivalences, X′ = X; Δ[0]: S ∋ ∅ → 1, X′ = Δ[0]; X: X′ = X | holds | none |
| §2.1.1, §2.1.2 (HTT, Not. 6.5.3.1, p. 693) | n = −1, 0; nerve of (ℕ, +) | cosk₋₁ constant final; (cosk₀U)₁ = U₀ × U₀; (cosk₁)₂ = ℕ³ against U₂ = ℕ²; source has n ≥ 0, README says so | holds | none |
| §3.3.1 (HTT, Def. 7.2.1.8, p. 738) | P(Bℤ); Δ[0]; S | slice over the representable ≃ S, dimension ≤ 0; ℤ free has no homotopy fixed point, global ≤ 0 fails; Δ[0]: ≤ −1 | holds | none |
| §3.5.1 (HTT, Cor. 7.2.1.12, p. 740) | P(C); Shv(Λ), Λ complete Boolean | P(C): hypercomplete objectwise and by §3.3; source hypothesis "≤ n for some integer n" equals README's | holds | R06 (its `*Needs:*`) |
| §4.3.1 (SAG, Rem. 1.3.2.8, p. 120) | 𝒴 = S × S over S; 𝒴 = Δ[0]; identity | g_*(U, V) = U × V sends (pt, ∅) ⊔ (∅, pt) to pt, not ∅; Δ[0]: pushforward 0, Map(g^*F, 0) ≃ ∗ | holds | none |
| §5.3.1 (SAG, Prop. 1.3.2.7, pp. 119–120) | 𝒳 = S; P(Bℤ), Hℤ trivial action | heart Ab; sections Hℤ ⊕ Hℤ[−1], π₋₁ = ℤ, in the heart yet not sectionwise connective; source's four parts = README's | holds | none |
| §6.1.1–§6.1.3 (SAG, Def. 1.3.3.1, Rem. 1.3.3.2) | Hℤ[−1] on S; 𝒳 hypercomplete | πₙ = 0 for n ≥ 0, π₋₁ = ℤ: "n ≥ 0 only" is weaker; f^* = id, only 0 is ∞-connective | holds | none |
| §9.1.1, §9.1.2 (SAG, Def. 20.4.2.1, Prop. 20.4.3.1) | C two points; C = (a → c ← b), constant Δ[0] | F(1, 1) = A ⊔ B ≃ pt forces (pt, ∅) or (∅, pt); pushout pt ← 4 points → pt = wedge of 3 circles ≠ S¹ × S¹ | holds | none |
| §9.3.1–§9.3.3 (SAG, Def. A.3.1.1, Props. A.3.2.1, A.3.1.3) | S = equivalences; empty family; opens of ℝ | covers = finite coproduct decompositions; ∅-family covers C iff ∅ → C ∈ S; bounded intervals have no finite subcover | holds | none |
| §10.5.1, §10.5.2 (SAG, Thm. A.4.0.5, p. 1774) | S; Shv(Λ), Λ atomless; one-point T | S: identity point; Shv(Λ): hypercomplete, no point, so not locally coherent; source has both hypotheses, "easy to see" on p. 1785 | holds | R09 (wording) |
| §11.1.1, §11.1.2 (SAG, Def. A.6.1.1, Prop. A.6.2.1) | finite sets; finite spaces; ∅ → Δ[0] | ℤ/2 on pt: quotient pt, ℤ/2 → pt × pt not invertible, (d) fails; ΩS² infinite, (a) fails; Čech nerve realizes to ∅ | holds | none |
| §11.2.1–§11.2.3 (SAG, Defs. A.5.2.1, A.5.2.3, A.6.5.1) | n = 0; Δ[0] → Δ[1] at 0; Δ[0] ⊔ Δ[0] | ∂Δ[0] = ∅: X₀ → Y₀ epi; 1 edge → 2 edges {00, 01}, not onto; Kan, but X₁ → X₀ × X₀ misses 2 of 4 pairs | holds | none |
| §11.3.1–§11.3.3 (SAG, Prop. A.5.3.4, Cor. A.5.3.5, Lemma A.5.3.7) | X = ∅; one vertex, no edge | ∅: Kan, underlies ∅; one vertex: Λ[1,0] unfilled, not Kan, underlies no simplicial set | holds | none |
| §11.4.1, §11.4.2 (SAG, Lemma A.5.3.8, Thm. A.5.3.1) | X′ = nondegenerate part of Δ[1], V₀ = V₁ = pt, two edges | trivial Kan fibration; realization S¹ → interval, not ∞-connective; X′ fails Kan at vertex 1, so (ii) is needed | holds with (i) or (ii) | none |
| §2.5.1, §2.5.2 hyperdescent | S, constant object on S¹ | n = 2: S¹ → free loop space, π₀ = ℤ, not onto; not a hypercovering, so colimit S¹ ≠ pt is no contradiction | holds | none |
| §3.4.1, §12.1.1 | P(C); Δ[0] | locally of dimension ≤ 0, towers converge objectwise; Δ[0]: constant towers | holds | R04 |
| §4.2.1 (SAG, Prop. 1.3.1.7, p. 117) | 𝒞 = Δ[0] ⊔ Δ[0], T = Δ[0]; T two points | no final object: 2 objects against the empty category, so "small limits" is needed; 𝒞 × 𝒞 both sides | holds | none |
| §6.2.1, §6.3.1 | F ∞-connective and hypercomplete; empty family; U = 1 | (3) on id_F gives F ≃ 0; ∅ → 1 no effective epimorphism unless 𝒳 trivial; 𝒳/1 ≃ 𝒳 | holds | none |
| §9.4.1, §11.5.3 | C finite sets, S surjections | F(n) = F(1)ⁿ, Čech nerves split, (2) automatic; Shv = S hypercomplete, both criteria agree | holds | none |
| §9.5.1 | S; S × ⋯ × S | S = Shv(finite sets)^∧; finite product coherent, its own hypercompletion | holds | none |
| `LatticeSpectrum.exists_orderIso_opens`, `spectralSpace`, `isOpen_and_isCompact_iff`, `basicOpen_subset_basicOpen_iff` | Λ trivial; {⊥ < ⊤}; {⊥ < a < ⊤}; four-element Boolean | ideals/opens: 1/1, 2/2, 3/3, 4/4; Spec = ∅, point, Sierpiński, two points; compact opens = basic opens in each | true on each | none |
| `isSpectralMap_iff_existsUnique_boundedLatticeHom`, `continuous_iff_existsUnique_boundedLatticeHom` | ℕ ∪ {∞} → Sierpiński; Λ trivial; Λ′ trivial, Λ not | left: preimage ℕ not compact; right: g(a) would be a finite set containing all n; f from ∅ ↔ unique Λ′ → 1; no f exists | holds | none |
| `t2Space_iff_complementedLattice`, `exists_homeomorph`, `exists_homeomorph_latticeSpectrum_of_isTopologicalBasis_isClopen` | Λ trivial; chain of 3; X = ∅ | ∅ is T2 and 1-element lattice complemented (⊥ ⊔ ⊥ = ⊤); Sierpiński not T2, a uncomplemented; ∅ ≃ Spec of the trivial algebra | holds | none |
| `SemisimplicialKan`, `SemisimplicialKanFibration`, `fibration_iff_…`, `exists_fibration_of_…`, `exists_sSet_of_semisimplicialKan` | n + 1 = 1, i = 0; Mathlib `J` | horn data = the single f with image {0}; Mathlib `J = ⨆ n, Λ[n + 1, i].ι` (`CategoryWithFibrations.lean:48`), same range n + 1 ≥ 1 | holds | none |
| Supplier contracts, Tau Ceti (lines 227–239) | pin 2fd255d | 2 of 8 names found, 6 absent | drift | R01 |
| §1.1.1 against EnhancedDerivedSheaves §E2.7 | X = Shv(C) | both: local objects for ∞-connective maps, Postnikov convergence | two owners | R02 |
| §7.4.1 (2) against AnalyticStacks §2.10 | Sierpiński; ∅ | both: three-element chain; one-element lattice | two owners | R03 |
| §10.3.1 against Part InfinityTopoi §6.1.1 | S¹ and ∅ in S | both: 2 elements; 1 element | restated | R08 |
| §11.5.2 Check, Hilbert cube | HTT, Counterexample 6.5.4.2 | source: sheaf on Q × [0, 1], base change; README: a sheaf on Q not hypercomplete | not at the locator | R11 |

- Source locators checked against the text: HTT 12 read in full (lines 31114–31787, 33310–33530), pages agree; SAG 31 read in full and 11 more by page; all agree with the README.
- Library declarations opened at the pins: Mathlib 12 (among them `DistribLattice.prime_ideal_of_disjoint_filter_ideal`, `Order/PrimeSeparator.lean:46`; `PrespectralSpace.opensEquiv`, `Topology/Spectral/Prespectral.lean:111`; `SSet.rlp_monomorphisms`, `CategoryWithFibrations.lean:129`; `SemiSimplexCategory.homEquiv`, `SemiSimplexCategory.lean:54`; `SpectralSpace`, `Topology/Spectral/Basic.lean:38`); Tau Ceti 2 found, 6 absent (R01). No lattice spectrum, Stone duality or semisimplicial Kan condition at either pin.
- Cross-roadmap citations resolved: every labelled sibling citation looked up at this head; 337 with a paired locator found inside the cited target; 2 defects (R06, R07). 11 targets of ModelCategoryTheory (Parts ModelCategories, KanQuillen, SimplicialCategories) found at its open head.
- Gate at 7e04598: fails on `stray-files` only (R05); build passes. Dependency check: `depcheck: 244 roadmaps, 2197 edges, 0 problem(s)`, no UPWARD or CYCLE line. The pull request changes nothing outside the family folder.
- Elaboration: `lake env lean` on `Suggested.lean`, 12 `sorry` warnings, no error. The 17 elaborated types were compared with the README; only `LatticeSpectrum.exists_homeomorph` lacks the section binders, correctly, Λ being existential. Nothing changed.
- One-tactic probe on scratch copies (`rfl`, `infer_instance`, `simp`): none of the 12 theorems closes; no padding. Every headline not stated is named in the module docstring with its missing carrier.
- Pull request text against this folder: the word count (30.2k) and the account of §7.4.1 (2) agree with the head; no sentence about this folder is contradicted.
- Every definition has at least three Checks; every layer ends with Examples and Dependencies.

Overlap check: read KanQuillen, AnalyticStacks, SimplicialCategories, EnrichedLocalization, GrothendieckTopoi, EnhancedDerivedSheaves, StableHomotopyKTheory, DiamondsAndVStacks; Stone duality for spectral spaces: owner AnalyticStacks §2.10 (R03); hypercomplete sheaves of spaces and their Postnikov towers: owner EnhancedDerivedSheaves §E2.7 (R02); the others share nothing with this folder.

Source independence: 19 passages compared with 2 sources, none copied (longest shared run 10 words, the conclusion of HTT, Prop. 6.5.2.19); largest share HTT, 515 of 673 locators; contents compared with HTT and with SAG: the layers follow their sections (R04).

## Not verifiable

- HA: not fetched; cited only through Part StableInfinityCategories and not in the sample.
- Kerodon, Theorem 3.2.7.1 (§1.1, §3.4): not opened; not in the sample.
- Jar87, RS71, SGA4, Joh82, DHI04, TV02: not opened; cited for attribution or background, without a statement resting on them.
- The six declarations of R01 on a newer Tau Ceti commit: no commit other than the pin is in the worktree.
- The deduction in §1.1, third Check (the restriction to Q × {0} is not final): it needs that sections over a compact subset are a colimit over neighbourhoods, which the README does not cite; not checked.
- Section locators in Johnstone, Mac Lane–Moerdijk and SGA 4 (repair of R04): the author supplies them from the texts.

## Source issues

- **Misprint** in SAG at Lemma A.5.3.6, p. 1792: the source says a k-simplex belongs to X• when it is an isomorphism or not surjective; it should be belongs to K•; affects nothing.
- **Misprint** in SAG at Rem. A.4.2.6, p. 1779: the source says "locally foherent"; it should be locally coherent; affects nothing.

## For the human reviewers

- **Scope.** SAG, the only source of the statements of Layers 4–12, is an author's manuscript (version of 3 February 2018, `README.md` line 2849), not a published book; HTT is published (Annals of Mathematics Studies 170).
- **Licence.** HTT and SAG were read from the author's page (math.ias.edu/~lurie), classed `author-page` for this review; the sources service recorded both in the package's `sources.toml`.
- **Ownership.** The description asks the maintainers to choose the owner of the material shared with EnhancedDerivedSheaves, and declines a dependency on AnalyticStacks §2.10 because it is not on main; R02 and R03 apply the stated ownership rules. A decision the other way changes their repairs.
- **Pin.** The description says the build needs a Tau Ceti pin bump; this folder's `Suggested.lean` builds at the pin, but its README cites declarations of the newer commit (R01).
