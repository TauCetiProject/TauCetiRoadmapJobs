# Review of PresentationsOfMonoidalCategories (pull request #2308 at 3e84811)

**Verdict:** needs changes

Incremental re-review of the 136 lines changed since `d41aee9`.

## R01 (P3) — Seven sampled results still carry no locator, and one new locator sits on the wrong target

**Location:** `TauCetiRoadmap/PresentationsOfMonoidalCategories/README.md:193` (0.3), `:232` (1.2), `:280` (2.3), `:331` (3.2), `:339` (3.3), `:375` (4.1), `:423` (5.2); `:220` “§E.7.2, (259)–(262), p. 99”; `:274` “Over a field this is [Kitaev] §E.1, (177)”.
**Claim:** Every result has a locator, or says it is the roadmap's own and names its route.
**Witness:** These seven subsections cite no source and make no ownership statement (5.3 does both). Kitaev2006 lines 5815–5849, (259)–(262), define the tensor product and associator, the content of 1.2, not of 1.1. Kitaev2006 line 3647 works with complex Hilbert spaces, not a field.
**Repair:** Add, each checked at the cached text:
- 0.3: “([Kitaev] §E.1, (177), p. 68, and §E.3, (207), p. 80, over `ℂ`: the two isomorphisms whose ranks are compared; over a ring the rank comparison is `Matrix.square_of_invertible`.)”
- 1.1: keep “Definition E.17, pp. 96–97” only; move “§E.7.2, (259)–(261), p. 99” to 1.2 (tensor product and associator).
- 2.2: replace “Over a field” by “Over `ℂ`” and add “p. 68”.
- 2.3 and 3.2: “([EGNO] §4.10, p. 78, over a field: categorifications of a based ring are the solutions modulo gauge; [Kitaev] §E.7.3, p. 100, over `ℂ`. The ring statements are this roadmap's own, by `HomOrthogonal.matrixDecomposition` and the bases of 2.1.)”
- 3.3: “([EGNO] Prop. 4.14.3, p. 84, over a field; [Kitaev] (242), p. 90, for the gauges `∂η`. The ring statement and the surjection are this roadmap's own.)”
- 4.1: “([Kitaev] §E.7.5, Definition E.29, p. 103, and §E.3, Fig. 20, p. 81, over `ℂ`.)”
- 5.2: “This statement is the roadmap's own: no source is cited for it.”

## R02 (P3) — `reindex` and `RSymbols` still have fewer than three Checks

**Location:** `TauCetiRoadmap/PresentationsOfMonoidalCategories/README.md:183`, 0.2 “**Checks.**”, and `:167`, 0.1 “**Checks.**”.
**Claim:** Each definition has three discriminating Checks.
**Witness:** Of the three Checks of 0.2, one concerns `reindex` (C₃ inversion) and two concern `map`. The three Checks of 0.1 all concern `FSymbols`; none tests `RSymbols` or a hexagon.
**Repair:** Add to 0.2:
- “On `ι = ℤ/2` the swap `0 ↔ 1` is not a relabeling: it would need `N_{11}^1 = N_{00}^0`, that is `0 = 1`.”
- “C₃ inversion applied twice returns the data: the pair `(2, 1/2)` goes to `(1/2, 2)` and back.”
- “No `FSymbols` over `ℤ` maps to the C₃ data with `F^{121}_1 = 2` under `ℤ → ℚ`: its `Finv` entry `1/2` is not an integer.”

Add to 0.1 for `RSymbols`:
- “`ι = ℤ/2`, `F = 1` over `ℚ`: `R^{11}_0 = 2` with unit entries `1` fails `hexagon_forward` at `a = b = c = 1`, whose sides are `1` and `4`.”
- “`F^{111}_1 = −1` over `ℤ`: the same hexagon reads `(R^{11}_0)² = −1`, so there is no `RSymbols`.”
- “`ι = S₃`, `a = (12)`, `b = (23)`, `c = ab`: `R^{ab}_c` would be an invertible `1 × 0` matrix, so no `RSymbols` exist over a nontrivial ring.”

## R03 (P3) — A docstring names the deleted `ext`

**Location:** `TauCetiRoadmap/PresentationsOfMonoidalCategories/Suggested.lean:66`: “The inverse is data because rows and columns are indexed by different types; it is unique, so `ext` compares `F` alone.”
**Claim:** The file declares an `ext` for `FSymbols`.
**Witness:** This head deleted `FSymbols.ext` (previous R06); the file's 9 declarations contain no `ext`, and `FSymbols` carries no `@[ext]` attribute.
**Repair:** Replace the last clause by “it is unique, so two F-symbols with equal `F` are equal (README 0.1).”

## Previous findings

- R01 — repaired: `existsUnique_rSymbols` now takes `_hS`, `_horth`, `_hdec`, `e`, `_hl`, `_hr` before `P` and `_hP`; 4.2 has the Koszul negative control.
- R02 — repaired: “The pivotal structures are indexed by `t_1 ∈ Rˣ` with `t_1² = 1`; each is spherical, with both dimensions `ω t_1`. Over `ℤ` these are `±1`; over `ℤ/8` they are `1, 3, 5, 7`.”
- R03 — repaired: “in the gauge over `ℚ(√5)` with `F^{τττ}_τ = [[a, a], [1, −a]]`, `a = φ⁻¹`, which is its own inverse”.
- R04 — partly repaired: 0.1, 0.2, 1.1, 3.1 and 4.2 gained Checks and 0.2 its API; `reindex` has one Check and `RSymbols` none (R02 above).
- R05 — partly repaired: gauge, hexagon, duality-scalar, 0.1, 1.1, 2.2, 3.1 and 6.2 locators added and correct; 0.3, 1.2, 2.3, 3.2, 3.3, 4.1, 5.2 remain bare (R01 above).
- R06 — repaired: `FSymbols.ext` and `FSymbols.map` are gone from `Suggested.lean`; the repair left a dangling docstring reference (R03 above).
- R07 — repaired: “Lean: `existsUnique_fSymbols`” in 2.2, “Lean: `existsUnique_rSymbols`” in 4.2; section comments for Layers 0, 2 and 4.
- R08 — repaired: “The proposed Ocneanu rigidity roadmap, Layers 5–8, consumes the F- and R-symbols, base change, the model, the gauge action of 3.1 and the rigidity criterion of 5.1.”

## Verified sound

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| `existsUnique_rSymbols` (changed signature) | Koszul `S_u = ℚ[1]⊕ℚ[2]`; super `ℤ/2` model over `ℤ` | Koszul: `End S_u = ℚ×ℚ`, `_hS` not surjective, excluded. Super: `R^{11}_0 = −1`, hexagon sides `ω²·1 = 1` and `r²ω = 1` | True on instances; counterexample excluded | none |
| 4.2 negative control | Same Koszul object | `Hom(S⊗S,S)` has degrees `{2,3,3,4}` against `{1,2}`: rank 1; triple products `0 = 0`; extraction `R = −1`; singleton hexagon `R = R²` gives `1` | Check correct | none |
| 4.2 Checks 2 and 3 | `ℤ/2`, `F = 1` over `ℤ` | Symmetric braiding: `φ = R·φ`, `R = 1`; super: `φ = R·(−φ)`, `R = −1`; unit block `1` | Agrees with Layer 4 Examples | none |
| C₂ pivotal Check (changed) | `R = ℤ`, `ℤ/8`, `ω = ±1` | Condition at `(1,1,0)`: `t_1²·1 = 1`; `leftDim = (t_1ω)⁻¹ = ωt_1 = rightDim`; `ℤ/8`: `1,9,25,49 ≡ 1` | Correct | none |
| Fibonacci gauge (changed) | `a = (√5−1)/2` | `a² + a = 1`; `F² = [[a²+a, 0],[0, a+a²]] = I`; `s_τ = F̄[(u),(u)] = a`; conjugate `−φ`; off-diagonal product `a·1 = b²` of the unitary gauge | Correct, in `ℚ(√5)` | none |
| 0.1 Checks | `ι = {u}`; `ℤ/2`, `F^{111}_1 = 2`; `F = −1`, `Finv = 1` | Triangle forces the `1×1` entry `1`; pentagon `(1,1,1,1)`: left `1·1`, right `2·1·2 = 4`; `(−1)(1) = −1 ≠ 1` | Correct, FSymbols only | R02 |
| 0.2 API and Checks | C₃ inversion; `ℤ → 𝔽₂`; `ℤ → ℤ[i]` | Entries `(2, 1/2) ↦ (1/2, 2)`, consistent with `s_1 = F̄^{121}_1 = 1/2 = F^{212}_2`; `−1 ↦ 1`; `r² = −1` solvable only in `ℤ[i]` | Correct; one `reindex` Check | R02 |
| 1.1 Checks | Two copies of one simple; zero ring; `a ≠ b` | `2×1` matrices: `R²`; all Homs `0`; cross-grade Hom `0` with `End = R ≠ 0` | Correct | none |
| 3.1 Checks | `∂η`; `ℤ/2`, `g^{11}_0 = −1` | `G_L = η_aη_bη_c/η_d = G_R`, `R' = R`; four blocks each have `G_L = G_R = −1` | Correct | none |
| Locators added | Kitaev2006, EGNO2015 | (177) line 3660 p. 68; (186) line 4051 p. 74; (207) line 4551 p. 80, Fig. 20 p. 81; (239)–(242) lines 5210–5228; E.17 line 5680; (259)–(262) lines 5819–5849; EGNO 4.7.1 line 3982 | All present where cited | R01 |
| Downstream citation (changed) | OcneanuRigidity at #2316 | Its Layer 5 uses criterion 5.1 and the gauge; 6 the model; 7 Layer 0; 8 Layers 2 and 3 | Agrees | none |
| `Suggested.lean` docstrings | 9 declarations | `ext` named once, declared `0` times | Dangling | R03 |

The rows of the previous review for untouched statements stand as in the previous review, of `d41aee9`.

- Sources: 9 added or changed locators checked against 2 cached texts, all found at the cited equation and page; 5 further passages read for the repair of R01 (Kitaev2006 lines 5871–5877, 6058; EGNO2015 lines 4212–4215, 4496).
- Cross-roadmap: PivotalSpherical 3.3 and 8.1 resolved at #2311 (`IsSplitSimpleFamily`, `VecTwisted R G ω`); OcneanuRigidity Layers 5–8 resolved at #2316; no id dropped by this head.
- Pins: `leftDim_biproduct` at `TauCeti/CategoryTheory/Monoidal/Pivotal/Biproduct.lean:85`, `PivotalCategory.instTorsor` at `TauCeti/CategoryTheory/Monoidal/Pivotal/Torsor.lean:120`.
- Gate: every check `0`, `OK`. Dependency check: `depcheck: 244 roadmaps, 2197 edges, 0 problem(s)`; no UPWARD or CYCLE line; no change outside the folder.
- Elaboration: `lake env lean` on `Suggested.lean` gives 2 `sorry` warnings (lines 125, 142) and nothing else. Both elaborated theorem types carry every section instance; the “looks dropped” lead of the signature list is a false positive.
- Probe: `first | rfl | simp | infer_instance` fails on both sorried theorems; no padding remains (9 declarations: 7 data, 2 headlines).
- Pull-request text: title and four paragraphs read against this head; no sentence contradicted (it names the #2311 dependency, the Layer 0 bodies and both extractions; it never named `ext` or `map`).
- Remark on untouched text: README line 143 writes the dual bases as `b.homDual`; PivotalSpherical 3.3 at #2311 names the result `IsSplitSimpleFamily.exists_homDual`.

Overlap check: read OcneanuRigidity (#2316), PivotalSpherical (main and #2311), CategoricalOperatorAlgebras, TemperleyLieb; PivotalSpherical owns split simple families and `Vec^ω_G`, this roadmap owns F/R-symbols, models, gauge and classification, OcneanuRigidity their deformations; nothing shared.

Source independence: changed passages only; 9 passages compared with 2 sources, none shared; largest share Kitaev2006, 10 of 18 locators; no layer added, removed or reordered, so the contents were not compared again (EGNO2015 in the previous review: independent).

## Not verifiable

- JoyalStreet1993, Kelly1964 and Bonderson2007 are settled uncertified entries; none is cited in a changed passage.
- The description's numerical runs on Rep(A4) and Rep(D(S3)) have no artifact in the pull request.

## Source issues

- none

## For the human reviewers

- **Licence.** EGNO2015 line 3985 marks the cached text as the authors' final version made available with the publisher's permission, with redistribution restrictions; the roadmap uses only statements and locators from it.
