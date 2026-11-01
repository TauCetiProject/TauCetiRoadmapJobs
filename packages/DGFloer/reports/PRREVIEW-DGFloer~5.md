# Review of DGFloer (pull request #963 at 42399cc)

**Verdict:** needs changes

Incremental re-review of the 104 lines changed since `6ee2897` (the head the previous review read); nothing outside the folder changed. The one commit since then repairs five of the previous ten findings in full (the Cayley plane now consumes LieHighestWeight Layer 8 and states its own ownership, Theorem G has its closed `Y`, the Hutchings page locators are gone, `totalGrading` is deleted and every Lean name now occurs in the README, the ResearchGate link is gone) and one in part (the Hutchings rows of the 7.C sources table now name the right works, but no section of them). Four findings are untouched: the supplier cycle through TangentialBordism, StringOrientation and HomotopySpheres, the ImplicitAtlases edge, the two supplier labels absent from main, the README shape and the manifest. The gate still fails (`depcheck = 4`, `build = 1`), so the folder cannot be accepted at this head. The build failure is Lake's module-system warning, which the previous review did not count; it is counted here. Two small new defects are in the changed lines: a malformed link and a negative-control Check missing one inequality.

## R01 (P1) — Supplier cycle DGFloer → TangentialBordism → StringOrientation → DGFloer, and through HomotopySpheres

*Carried: r4 R01, r3 R02, r2 R01, not repaired.* **Location:** `TauCetiRoadmap/DGFloer/README.md:53` ("HomotopySpheres Stage 4A–4B supplies stable real Bott periodicity only"), `:90` ("TangentialBordism B5/B6.3 supply Thom/PT/rational bordism inputs"), `:91`, `:286` ("HomotopySpheres Stage3A convenient internal hom"), `:1669`, `:1712` ("by HomotopySpheres Stage4A–4B's stable real Bott computation").

**Claim:** TangentialBordism and HomotopySpheres are suppliers of this roadmap.

**Witness:** The dependency check at this head prints `CYCLE among: DGFloer, HomotopySpheres, StringOrientation, TangentialBordism` (full output under Verified sound). At the open heads, `TangentialBordism/README.md:143` consumes DGFloer Layer 1 items 2–3 and `:142` consumes StringOrientation S1.3–S5.3; `StringOrientation/README.md:52`, `:214`, `:298`, `:317`, `:340` consume DGFloer Layer 1 item 2 and Layer 11 item 3; `HomotopySpheres/README.md:1203` consumes TangentialBordism B3.2. This README consumes TangentialBordism (`:90`) and HomotopySpheres (`:53`, `:91`, `:286`, `:1669`, `:1712`), closing both cycles. The new ownership paragraph at `:105–108` and the Cayley plane passage at `:1097–1099` name StringOrientation and TangentialBordism only as consumers, which is correct and produces no edge; the consuming lines above are unchanged since the previous round.

**Repair:** As in the three previous rounds: move the consumers of TangentialBordism and HomotopySpheres (Layer 10 item 5's multiple realization, Layer 11 items 2–3's James ring and stable Bott input, Layer 1 item 5's extension of the Stage 5 collapse, the Stage 3A convenient-space comparison of the mapping-space convention) into a "DGFloer Part II" placed after TangentialBordism, StringOrientation and HomotopySpheres, so that the base roadmap names neither; what the base roadmap needs of them and nobody earlier owns (the Pontryagin–Thom collapse data, the James computation of `H_*(ΩSⁿ)`) is stated here as a target. Test: the dependency check prints no `CYCLE` line, and TangentialBordism B4.2's citation of Layer 1 items 2–3 still resolves.

## R02 (P2) — The gate's build check fails on Lake's module-system warning

*New as a finding (the condition held at the previous head too; the previous review recorded it under Verified sound instead of counting it).* **Location:** `TauCetiRoadmap/DGFloer/Suggested.lean:1–2` ("import Mathlib", "import TauCeti.Algebra.Homology.DG.Module.Right.Defs").

**Claim:** The module builds cleanly under the gate.

**Witness:** The worker's gate at this head: `build=1 FAIL` with the single entry "imports `Mathlib` from package `mathlib`, which is designed for use with the module system; consider adding `module`". The gate counts every warning other than `sorry` as a failure. `lake env lean TauCetiRoadmap/DGFloer/Suggested.lean` from the worktree prints only the five `sorry` warnings (lines 39, 48, 60, 72, 136) and exits 0, so the content elaborates: what fails is the form of the header at the pinned Mathlib `f6090c70`, which is a module-system package. For that reason the severity is P2, not the P1 of a failed elaboration; the gate rule still blocks acceptance.

**Repair:** Use the module-system header that Mathlib itself and the roadmaps `RootSystemsPartII` and `AnticyclotomicLocalUnits` use: line 1 `module`, a blank line, `public import Mathlib`, `public import TauCeti.Algebra.Homology.DG.Module.Right.Defs`, the module docstring, then `public section` before `namespace TauCetiRoadmap.DGFloer`. `module` alone is not enough: it silences the warning but makes every declaration private, so an importer reports the theorem names as unknown. Test: the gate prints `build=0`, and a scratch importer of the built module with `#check @TauCetiRoadmap.DGFloer.hurewiczOne` prints the signature.

## R03 (P2) — `UPWARD` line for ImplicitAtlases

*Carried: r4 R03, r3 R03, not repaired.* **Location:** `TauCetiRoadmap/DGFloer/README.md:1399` ("Apply ImplicitAtlases V0–V6 on these actual inputs"), `:1930`.

**Witness:** The check prints `UPWARD: DGFloer (on main) -> ImplicitAtlases (#199) at README lines [1930]`. ImplicitAtlases at its open head does not cite DGFloer (`ImplicitAtlases/README.md:25`, `:853` list DGFloer as a consumer of V0–V6), so there is no cycle; the line arises because DGFloer is a roadmap on main, which the check places before every open pull request, and DGFloer is not listed in the merge order (`ORDER.txt` has no `DGFloer` line; ImplicitAtlases is line 200). As in the two previous rounds I read it as a placement question for the board, and record it because the gate rule makes every `UPWARD` line a finding.

**Repair:** None in the text if the board confirms the placement reading (DGFloer is inserted after ImplicitAtlases); otherwise 7.C.5c's virtual application moves with R01's Part II.

## R04 (P2) — Supplier labels that do not exist on main: HeegaardFloer F2.6c1 and the GeometricTopology Layer 3 restriction bundle

*Carried: r4 R04, r3 R04, not repaired (the lines are unchanged).* **Location:** `TauCetiRoadmap/DGFloer/README.md:82` ("HeegaardFloer F2.6c1 owns the product J and native holomorphic projection, integral degree-one/area comparison and slice-image classification in [Σ]×[z₀]"), `:859` ("consume GT Layer3's … compact-embedding restriction bundle onto the actual Diff orbit").

**Witness:** `grep -c 'F2\.6c1'` on main's `HeegaardFloer/README.md` returns 0; the lane is F2.6c ("4.6c Energy and compactness", `:2461`), whose product-J statement (`:2702–2704`) identifies class-A curves in a torus-times-sphere setting, not the general closed source `Σ` with the slice classification attributed to it here. Main's `GeometricTopology/README.md:360–406` (Layer 3) has `Diff(M)` as a topological group, continuous families and `O(n+1) → Diff(Sⁿ)`, and no restriction map from embeddings onto a `Diff` orbit; Layer 1 item 6 of this README (`:859–870`) is where Palais's theorem is cited and built.

**Repair:** Cite F2.6c and state in one clause which part of the product-J classification it supplies; own the general-closed-`Σ` slice classification here, as a target of 7.C with its hypotheses. For the restriction bundle, drop the attribution to GT Layer 3 and state Palais's local-triviality theorem as the target of Layer 1 item 6 that it already is (`:870` and `:1908` cite Palais's paper). A declared gap (`What <Supplier> must provide (gap:<slug>)`) is not available here: that device belongs to design-stage packages and new-folder pull requests, and this pull request revises a roadmap on main; the previous round's suggestion of one is withdrawn. Test: every label cited at `:82` and `:859` resolves to a heading on main.

## R05 (P3) — The 7.C sources table names works without locators

*Partial repair of r4 R06.* **Location:** `TauCetiRoadmap/DGFloer/README.md:1864–1868` ("Salamon, *Lectures on Floer homology*, and Floer–Hofer–Salamon: action, capped indices and variational equation", "… Hofer–Salamon, *Floer homology and Novikov rings*: cap/degree/monotone coefficient comparisons", "Piunikhin–Salamon–Schwarz and Hofer–Salamon: classical Floer, autonomous symmetry, PSS/Novikov and Arnold applications"), `:1207` ("Source: Salamon, *Lectures on Floer homology*; Audin--Damian, Chapters 6").

**Claim:** These five rows and item 6 locate the sources of the 7.C targets.

**Witness:** The false Hutchings page numbers are gone (the notes have 63 pages; `hutchings-2002` line 81–82 lists §7.5 at p. 52 and §7.6 at p. 55, and `:88`, `:1896` now cite exactly that), but the replacement rows cite three works by title only; the previous repair asked for locators "by section" and its test was that every locator name a section that exists in the cited text. A row that names a 50-page lecture course for "action, capped indices and variational equation" is a bibliography entry, not a locator. The three works could not be read legally this round (Salamon's author page returns HTTP 403 to the sources service; none is on arXiv or in the cache; listed under Not verifiable), so their section numbers are not supplied here.

**Repair:** Give each row and `:1207` a lecture-and-section locator (Salamon by lecture and section, Hofer–Salamon and Piunikhin–Salamon–Schwarz by section), read from the text; where a work is behind a paywall and cannot be read, cite the section from the published version's table of contents and mark the entry `uncertified` in the manifest of R07. Test: every row of the table names a section that exists in the cited text.

## R06 (P3) — README shape: no target subsections, `*Needs:*` lines, Checks, Examples or Dependencies

*Carried: r4 R07, r3 R08, r2 R11, r1 R14, not repaired.* `grep -c 'Needs:'` = 0, `grep -c 'Checks\.'` = 0, no `### Examples` or `### Dependencies` heading; the "Check:" clauses at `:1560`, `:1623`, `:1631`, `:1665`, `:1738` are the right content in the wrong form. `:49` ("**The finite-rank and compact-Lie applications of §§6.4.3–6.4.4 are in scope.**") is still a bullet of the list introduced at `:43` as "Out of scope". Repair as in r2 R11, and move the `:49` bullet to the in-scope paragraph.

## R07 (P3) — No `sources.toml`

*Carried: r4 R08, r3 R09, r2 R12, r1 R17, not repaired.* The folder holds `README.md`, `Suggested.lean`, `metadata.toml` and main's generated `PROGRESS.md`, `STATUS.md`. The roadmap now cites seventeen works (Hofer–Salamon was added at `:1916`) and records none. Repair as in r2 R12; the three works of R05 would be `uncertified` entries with their DOIs or publisher locators.

## R08 (P3) — Malformed link to Crowley–Schick–Steimle

*New at this head (the repair of r4 R10).* **Location:** `TauCetiRoadmap/DGFloer/README.md:1712` ("[Crowley–Schick–Steimle, proof of Lemma2.2](arXiv:2012.13634v1, [arxiv.org/abs/2012.13634](https://arxiv.org/abs/2012.13634))").

**Witness:** A Markdown link destination cannot contain a space or a nested link; the outer `[…](…)` does not parse, so the rendered text shows the literal brackets and "arXiv:2012.13634v1, " followed by the inner link. The citation itself is right: `css-2020` (arXiv 2012.13634v1) line 214 is the proof of Lemma 2.2, lines 221–223 state that the stabilisation `π₈SO₉ → π₈SO = ℤ/2` is split with kernel `ℤ/2`, and line 249 gives `π₈SO₈ = (ℤ/2)³`, exactly what the README builds on.

**Repair:** Write "as described in Crowley–Schick–Steimle, proof of Lemma 2.2 ([arXiv:2012.13634](https://arxiv.org/abs/2012.13634))". Test: the line renders as prose with one link.

## R09 (P3) — The negative-control Check of Theorem G omits `q′ ≠ q`

*New at this head (the repair of r4 R05).* **Location:** `TauCetiRoadmap/DGFloer/README.md:1738–1739` ("so is `Q = S²×S²`, `X = S²×{q}`, `Y = {p}×(S²∖{q′})`, where `Y` is not closed and has no fundamental class").

**Witness:** With `q′ = q` the sets `X` and `Y` are disjoint, so the instance does not meet the hypothesis "meeting `X` transversely in one point" and tests nothing; with `q′ ≠ q` they meet transversely in the single point `(p, q)`, `Y ≅ ℝ²` is `2`-connected (`ℓ = 2k−2 = 2` for `k = 2`) with trivial normal bundle, and only closedness fails, which is the point of the Check.

**Repair:** Write "`Y = {p}×(S²∖{q′})` with `q′ ≠ q`". Test: `X ∩ Y = {(p, q)}`.

## Previous findings

- R01 (cycle) — not repaired: `:53`, `:90`, `:91`, `:286`, `:1669`, `:1712` still consume HomotopySpheres and TangentialBordism; the check prints the same `CYCLE` line (R01 here).
- R02 (Cayley plane re-plans LieHighestWeight Layer 8) — repaired: `:1093–1097` "Consume LieHighestWeight Layer 8's compact real algebra suppliers: the division octonions `TauCeti.DivisionOctonionReal` …, the formally real Albert algebra `compactAlbertAlgebra` …, and the compact real `𝔣₄`"; `:105–108` states the ownership of the carrier; `grep -c "No roadmap owns"` = 0; the mathematics of the passage is unchanged (table).
- R03 (`UPWARD` ImplicitAtlases) — not repaired (R03 here).
- R04 (F2.6c1, GT Layer 3 restriction bundle) — not repaired: `:82`, `:859` unchanged (R04 here, with a corrected repair).
- R05 (Theorem G drops closedness of `Y`) — repaired: `:1734` "a closed orientable `(n−k)`-submanifold `Y`", with the two instances as Checks at `:1738–1740`; one inequality is missing from the negative control (R09 here).
- R06 (Hutchings locators into nonexistent pages) — partly repaired: the page numbers are gone, `:88` cites §§7.5–7.6 and `:1896` says what the notes contain, both correct against `hutchings-2002`; the replacement rows at `:1864–1868` carry no section locators (R05 here).
- R07 (README shape) — not repaired (R06 here).
- R08 (`sources.toml`) — not repaired (R07 here).
- R09 (`totalGrading`, Lean names absent from the README) — repaired: `totalGrading` is deleted; `hurewiczOne` (`:486`), `mod2Vanishing` (`:696`), `exists_eilenbergMacLane` (`:409`), `TwistingCocycle` (`:1001`), `gradingInvolution`, `twistedDifferential`, `twistedDifferential_sq` (`:1024–1025`), `aspherical_iff_homology_loopSpace_loopSpace` (`:1636`) each occur once at the statement they formalize; `readme-ids-missing = 0`.
- R10 (ResearchGate link) — repaired, with a malformed replacement (R08 here).

## Verified sound

**Gate.** My rerun of the plain gate at this head printed every scanner zero except `depcheck=4` (`set_option`, `blob`, `latex`, `tex`, `prnum`, `sorry-data`, `sorry-examples`, `residue`, `private-paths`, `imports`, `mathlib-subimports`, `stray-files`, `dirty`, `outside-folder`, `readme-ids-missing`, `target-ids`, `layer-ids` all 0; the plain call has no build field). The worker's gate adds `build=1` on the Lake warning (R02). `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/DGFloer'` is empty. The dependency check printed exactly:

```text
UPWARD: DGFloer (on main) -> HomotopySpheres (#63) at README lines [53, 91]
UPWARD: DGFloer (on main) -> ImplicitAtlases (#199) at README lines [1930]
UPWARD: DGFloer (on main) -> TangentialBordism (#8) at README lines [90]
CYCLE among: DGFloer, HomotopySpheres, StringOrientation, TangentialBordism
depcheck: 205 roadmaps, 1454 edges, 4 problem(s)
```

**Elaboration, signatures, padding.** `lake env lean TauCetiRoadmap/DGFloer/Suggested.lean` from the worktree: exit 0, five `sorry` warnings (lines 39, 48, 60, 72, 136), nothing else. A scratch copy with `#check @name` for all eight declarations elaborated; every type agrees with the worker's `signatures.md`. The "dropped" binders (`IsScalarTower R Aᵐᵒᵖ M` on `gradingInvolution` and `twistedDifferential`, `DecidableEq P` and the `GradedSMul` instance on `twistedDifferential`) are not mentioned by those types, whose bodies elaborate without them; `twistedDifferential_sq` keeps all of them. One-tactic probes on the same copy, rerun this round: `hurewiczOne` with `infer_instance` (failed to synthesize), `aspherical_iff_homology_loopSpace_loopSpace` with `simp` (no progress), `exists_eilenbergMacLane` with `simp` (unsolved goals), `twistedDifferential_sq` with `simp [twistedDifferential]` (unsolved goals), `mod2Vanishing` with `simp` (no progress). No declaration closes in one tactic. No `set_option`, no sorried data, no `lemma`, no admitted `example`; the imports are `import Mathlib` and one `TauCeti.*` module that exists at the pin (Tau Ceti `358314d4`, Mathlib `f6090c70`, the manifest of this branch).

**Lean names against README statements (the changed lines).** `gradingInvolution` is `(−1)^q` on the degree-`q` piece, which is the README's `(−1)^{|α|}` (`:1024`); `twistedDifferential` has `y`-component `∂(f y) + Σ_x op(m x y) • ε(f x)`, which on `α ⊗ x` gives `∂α ⊗ x + (−1)^{|α|} Σ_y α·m_{x,y} ⊗ y`, the README's formula (`:1022`); `twistedDifferential_sq` is `D² = 0` (`:1025`). `exists_eilenbergMacLane` states `K(A, n+1)` for every `n : ℕ`, which is the README's `K(A, n)` for `n ≥ 1` (`:408–409`); `K(A, 0)` is the discrete group, not path-connected, and is not claimed. `hurewiczOne`, `mod2Vanishing`, `aspherical_iff_homology_loopSpace_loopSpace` are placed at the statements they formalize (`:486`, `:696`, `:1636`), whose generality matches (path-connected, simply connected, path-connected).

**Source sample.** The six seeded targets (`README.md:1215`, `:1314`, `:1318`, `:1326`, `:1352`, `:1407`) are byte-identical to `6ee2897` (no diff hunk touches 1200–1420); their source attribution changed from Hutchings to Salamon, Floer–Hofer–Salamon, Hofer–Salamon and Piunikhin–Salamon–Schwarz (`:1864–1868`), none of which could be read legally this round, so the previous round's internal-consistency rows are carried below and the attribution is R05. Locators read this round: `hutchings-2002` lines 81–82 (contents: §7.5 p. 52, §7.6 p. 55), 1700 (page 52 marker), 1711 (§7.5 heading), 1795 (§7.6 heading), 1902 (page 58 marker, Chapter 8), 1926–1963 (§8.2 topic list), confirming `:88` and `:1896`; `css-2020` (arXiv 2012.13634v1) lines 104, 214–247, 249 for R08; main `RepresentationTheory/LieHighestWeight/README.md:1261` (`TauCeti.DivisionOctonionReal := TauCeti.CayleyDickson (Quaternion ℝ)`), `:1333–1334` (`compactAlbertAlgebra`), `:1351` (primitive idempotents are the trace-one idempotents), `:1385` (the derivation algebra of `compactAlbertAlgebra` as compact `𝔣₄`), `:1405–1407`. Hofer–Salamon's bibliographic data at `:1916` (Floer Memorial Volume, Progr. Math. 133, Birkhäuser 1995, pp. 483–524) are correct.

**Adversarial table.** Rows for statements the diff leaves untouched carry the previous report's values; rows for changed statements were recomputed.

| Statement / location | Instances | Values on the two sides | Result |
|---|---|---|---|
| Theorem G `:1731–1741` vs `bdho-floer` 5354–5372 | hypotheses | sphere `X^k`, `k ≥ 2`; `Y^{n−k}` **closed** orientable, trivial normal bundle, `X ⋔ Y = {p}`; `ℓ = 2k−2` (`k` even), `k−1` (`k` odd); `S` closed orientable, `φ : S → π⁻¹(Y)`, `deg(π∘φ) = d ≠ 0`; conclusion on every `Σ` bounding `U ⊇ φ(S)` | Agrees with the source (r4 R05 closed) |
| its negative control `:1738` | `Q = S²×S²`, `X = S²×{q}`, `Y = {p}×(S²∖{q′})` | `q′ ≠ q`: `X ∩ Y = {(p,q)}`, transverse; `Y ≅ ℝ²`, `π₁ = π₂ = 0` so `2`-connected as `ℓ = 2`; normal bundle trivial; `H₂(Y;ℤ) = 0`, no fundamental class, no degree. `q′ = q`: `X ∩ Y = ∅`, hypothesis fails for another reason | Right with `q′ ≠ q` (R09) |
| its positive control `:1739` | `Q = Q′ ♯ (S^k × Y)`, `Y` closed `(2k−2)`-connected | `2k−2 ≥ 2` for `k ≥ 2`, so `Y` is simply connected, hence orientable; `X = S^k × pt`, `Y = pt × Y` meet once transversely; normal bundle of `Y` trivial; `(2k−2)`-connected implies `(k−1)`-connected for odd `k` | Every hypothesis holds (source Example 7.4) |
| Cayley plane index `:1104–1106` | `k = 1, 2` | curvature `4` on the `7` directions tangent to the line (conjugate at `π/2 + jπ`), curvature `1` on the `8` normal directions (conjugate at `jπ`); all geodesics from `p` return at `π`, multiplicity `15`; `ind C_k = 7k + 15(k−1) = 22k − 15`: `7`, `29`; nullity `15 = dim S¹⁵` | Pass (unchanged mathematics) |
| Cayley plane homology `:1109–1111` | Morse–Bott cells | `C_k ≅ S¹⁵` gives degrees `22k−15` and `22k`; `{22k−15} = {22(k−1)+7}`; `ℤ` in degrees `22j`, `22j+7`: `H₇ = ℤ`, `H₁₄ = 0`, `H₂₂ = ℤ`; `S⁷ × ΩS²³` has the same | Pass |
| `𝕆P²` as trace-one idempotents `:1099` vs LieHighestWeight `:1351` | `diag(1,0,0)`; `diag(1,1,0)/…` | `diag(1,0,0)`: idempotent, trace 1, rank one; `diag(1,1,0)`: idempotent, trace 2, excluded; `½·diag(1,1,0)` has trace 1 but `x∘x = ¼·diag(1,1,0) ≠ x` | The two conditions pick the primitive idempotents |
| ownership `:105–108`, `:1097–1099` | merge order | DGFloer on main (not in `ORDER.txt`); StringOrientation line 6, TangentialBordism line 9, both consuming DGFloer (`TangentialBordism/README.md:143`, `StringOrientation/README.md:214`); LieHighestWeight on main | Consistent: the carrier can only live here or in R01's Part II |
| Hutchings locator `:88`, `:1896` | `hutchings-2002` | §7.5 at p. 52 (line 1711, after the page-52 marker 1700), §7.6 at p. 55 (line 1795), Chapter 8 at p. 58 (line 1902): §§7.5–7.6 occupy pp. 52–57; §8.2 lines 1926–1963 is a list of topics with references | Pass |
| Crowley–Schick–Steimle `:1712` | `css-2020` 221–223, 249 | stabilisation `π₈SO₉ → π₈SO = ℤ/2` split with kernel `ℤ/2`, so `π₈(SO(9)) = (ℤ/2)²`; `π₈SO₈ = (ℤ/2)³` | Pass (link form R08) |
| `exists_eilenbergMacLane` at `:409` | `n = 0`, `A = ℤ/2`; `A = 0` | `K(A,1) = ℝP^∞`; `pt`; `K(A,0)` not path-connected, outside both README (`n ≥ 1` reading) and Lean | Agree |
| Lemma 3.41, Lean `:60–68` | `ℂP^∞`; `T²`, `S¹`; `S²`, `S³` | as in the previous report (both sides false for `ℂP^∞`, `S²`, `S³`; both true for `T²`, `S¹`) | Pass (previous report) |
| Theorems L, M, H, 3.49 and their Checks `:1618–1665`, `:1553–1562` | as in the previous report | values as in the previous report's rows | Pass (previous report) |
| Convention and application checks `:1215` (seeded) | `ℂPⁿ`, `N_C = n+1` | `HF_i^cyc ≅ ⊕_{j ≡ i+n (2N_C)} H_j(ℂPⁿ)`; one copy of `R` exactly when `i+n ≡ 0, 2, …, 2n` | Pass (previous report) |
| Tame synthesis and staged selection `:1314` (seeded) | `D exp_A(B) = ∫₀¹ e^{(1−t)A} B e^{tA} dt` | anti-`J` `A` gives `J(A) = e^A J e^{−A}`, `J(A)² = −1`; tameness open in `C⁰` | Pass (previous report) |
| Tame raw sign realization `:1318` (seeded) | `(−1)^{i+j+ij}` at `j = 1` | `−1`; with `(−1)^n`: `(−1)^{n+1}`; Morse zero face `2k` even | Pass (previous report) |
| Separate finite counting budgets `:1326` (seeded) | `ω = κc₁` on `S_sph` | energy `E = κc₁(A)` bounded by the rigid index equation; `c₁ = 0` keeps the cutoff | Pass (previous report) |
| Regular true endpoint `:1352` (seeded) | constant two-marked core | kernel `TX` (`2n`), cokernel `0`; `W^u(p) ⋔ W^s(p)` of dimension `0` | Pass (previous report) |
| Positive-monotone finite Laurent matrices `:1407` (seeded) | `Γ ≅ N_Cℤ` | `deg t = 2N_C`, `ν(t) = −κN_C < 0`, one exponent per homogeneous entry | Pass (previous report) |
| `hurewiczOne`, `mod2Vanishing`, `twistedDifferential_sq` | `pt`, `S¹`, `BS₃`, `BQ₈`; `K(ℤ/3,2)`, `K(ℤ/4,2)`; `P = ∅`, `m = 0` | as in the previous report | Pass (previous report) |

**Pinned-library and cross-roadmap resolution this round** (main `fa41b374`; open heads as given):

| Citation | Found at | Note |
|---|---|---|
| LieHighestWeight Layer 8: `TauCeti.DivisionOctonionReal`, `compactAlbertAlgebra`, compact `𝔣₄` | main `RepresentationTheory/LieHighestWeight/README.md:1261`, `:1333–1334`, `:1385` | supplier targets, not pinned declarations (absent from Tau Ceti `358314d4`, as the citation tool reports); cited as targets, which is allowed |
| LieHighestWeight `:1405–1407` | same file | assigns "the fixed-carrier trace-one-idempotent geometry, its compact automorphism group and F4/Spin9 projective-plane comparison" to TangentialBordism B3: a pointer on main into an open pull request, now contradicted by this README's ownership statement and by `TangentialBordism/README.md:2055` (which says StringOrientation S1.5 owns it). Not this folder's defect; recorded for the board: LieHighestWeight's pointer and S1.5/B3.6 should cite DGFloer Layer 5 item 7 once this ownership lands. |
| StringOrientation S1.5; TangentialBordism B3.6 | `rev StringOrientation/README.md:435–455`; `rev TangentialBordism/README.md:2053–2064` | both still state the `F₄/Spin(9)` carrier; both later and consuming DGFloer |
| TangentialBordism, StringOrientation, HomotopySpheres edges | `rev TangentialBordism/README.md:142–143`; `rev StringOrientation/README.md:52`, `:214`, `:298`, `:317`, `:340`; `rev HomotopySpheres/README.md:1203` | the cycle of R01 |
| ImplicitAtlases V0–V6 | `rev ImplicitAtlases/README.md:25`, `:853` list DGFloer as consumer | no cycle (R03) |
| HeegaardFloer F2.6c; GeometricTopology Layer 3 | main `HeegaardFloer/README.md:2461`; `GeometricTopology/README.md:360–406` | F2.6c1 and the restriction bundle absent (R04) |
| `TauCeti.IsDGAlgebra`, `TauCeti.IsDGRightModule`, `TauCeti.InternalGrading.ofDecomposition` | `TauCeti/Algebra/Homology/DG/…` at `358314d4`, as in the previous report | the import elaborates |
| `tauceti-roadmap roadmaps resolve` | 0 cross-roadmap citations found nowhere; 4 Lean names (`serreFibrations`, `mem_serreFibrations_proj`, `hasHomotopyLiftingProperty_proj_cube`, `TauCeti.DivisionOctonionReal`) | AlgebraicTopology's and LieHighestWeight's targets, not this roadmap's |

Ownership against open work: the Cayley plane, octonions and Albert algebra were searched by object in the previous round (`roadmaps grep` for octonion, Cayley plane, Albert, `Spin(9)`); the owners are those above, and the index of 2026-11-01 has no new roadmap for them. HamiltonianSystems (`:1217`, `:1234`, `:1932`) is an open pull request without files in this brief and was not checked. Open pull requests not indexed by the tooling were not checked.

**Headline inventory.** Unchanged from the previous report: the five statable headlines (Hurewicz in degree one, mod-2 vanishing, Lemma 3.41, existence of `K(A, n)`, the twisted square-zero theorem) are in `Suggested.lean`; the Serre spectral sequences, the fibration theorem, Theorem 3.49, Theorems A–E, G–M, the 7.C Arnold bound and the 7.T torsion are named in the docstring as lacking carriers. `H_*(Ω𝕆P²)` (Layer 5 item 7) is statable neither at the pin (no compact octonions) and is not named in the docstring: add it to the docstring's list (P3, folded into R06's shape repair).

**Standing source issue.** The error in `bdho-floer` at the proof of Theorem 5.15 (the class `{G : G ⊗ ℤ/2 = 0}` is not a Serre class) recorded in the previous report stands and is handled by the README's mod-2 vanishing theorem (`:696`).

## Not verifiable

- **Salamon, *Lectures on Floer homology*; Hofer–Salamon, *Floer homology and Novikov rings*; Piunikhin–Salamon–Schwarz 1996** (the new sources of 7.C, `:1207`, `:1864–1868`): the sources service gets HTTP 403 from the author's ETH page for each, none is on arXiv, none is in the cache, and the published versions are not open; listed in `needs-references.toml` of this job. The six seeded targets were therefore checked for internal consistency only (table), as in the previous round.
- **Floer–Hofer–Salamon 1995**: paywalled (Duke), cited by its DOI at `:1913`.
- **HamiltonianSystems Layers 1–2 and 6**: open pull request without files in this brief.
- **HeegaardFloer F2.6c's general-`Σ` product-J classification**: the label F2.6c1 does not exist (R04).
- **Ziller's completing-manifold perfectness for `Ω𝕆P²`** (`:1107–1108`): Ziller 1977 is not in the cache; the index and homology values were recomputed independently (table).

## Source issues

- none
