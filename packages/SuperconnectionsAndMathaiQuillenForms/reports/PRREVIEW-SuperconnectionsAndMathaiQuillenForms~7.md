# Review of SuperconnectionsAndMathaiQuillenForms (pull request #2297 at ce8469c)

**Verdict:** needs changes

## R01 (P3) — 6.1 and 6.2 cite Quillen 1988 without a locator; 4.4 (b) has no statement number in §9.1

**Location:** TauCetiRoadmap/SuperconnectionsAndMathaiQuillenForms/README.md:1057–1058: “(Quillen 1988, the correspondence between subbundles and unitaries inverted by `ε`)”; :1108–1109: “(Quillen 1988, its forms `γ_(2k)` on `Gr(V)` and `γ_(2k−1)` on `U(V)`)”; :820: “Berline–Getzler–Vergne, §9.1, for (b)”.
**Claim:** Not repaired from the previous review (its R01). The change deletes the review identifier and the chapter page range, but adds no section, statement or page of Quillen 1988 and no statement number inside §9.1.
**Witness:** `git diff 5125255 ce8469c -- TauCetiRoadmap/SuperconnectionsAndMathaiQuillenForms` only deletes words inside these three parentheses. The manifest's locator for Quillen1988 is sections “1-5”.
**Repair:** At :1057 and :1108, give the section and page of Quillen 1988 where the correspondence, `γ_(2k)` and `γ_(2k−1)` are stated. At :820, give the statement number and page inside §9.1. Both texts stay uncertified and are not requested again, so this needs a reader who has them.

## R02 (P3) — The description names an earlier head

**Location:** pull request description, first paragraph: “This description is written for the head `ca0f42b7`.”
**Claim:** The folder at `ca0f42b7` differs from this head at README.md:820, :1057–1058 and :1108–1109. The description's Sources paragraph describes this head, not `ca0f42b7`.
**Witness:** The description says “the README cites the paper without locating them through it”. At `ca0f42b7`, README.md:1058 reads “as stated in its review Zbl 0671.57013”.
**Repair:** “This description is written for the head `ce8469c4`.” Use the head of the commit that repairs R01 once there is one.

## Previous findings

- R01 — not repaired: “(Quillen 1988, the correspondence between subbundles and unitaries inverted by `ε`)” (README.md:1057–1058); “(Quillen 1988, its forms `γ_(2k)` on `Gr(V)` and `γ_(2k−1)` on `U(V)`)” (:1108–1109); “Berline–Getzler–Vergne, §9.1, for (b)” (:820). Written again as R01.

## Verified sound

| Statement | Instances | Left side computed | Right side computed | Result | Change |
|---|---|---|---|---|---|
| 4.4 (b), touched by R01 | point, `E⁺ = ℂ²`, `E⁻ = ℂ`, `T = (1, 0)`, `t = 0.5, 2` | `str e^(−t²X²) = (e^(−t²) + 1) − e^(−t²) = 1.0` at both `t` | `rk ker T − rk ker T* = 1 − 0 = 1` | agrees, equality for every `t` | — |
| 4.4 (b) negative control (README Check) | `ℝ²`, `E^± = ℂ`, `∇ = d`, `T = z` | `ch(𝔸_t) = −(t²/π) e^(−t²|z|²) dx∧dy`, integral `−1` for every `t > 0` | the kernel jumps at `0`; the limit is the current `−δ₀`, not a form | rank hypothesis needed and present | — |
| 4.4 (a), same sentence | `ℝ²`, `E^± = ℂ`, `T = e^z` nowhere zero | degree 2: `−(t²/π) e^(2x) e^(−t² e^(2x)) dx∧dy`, which tends to `0` uniformly on `|x| ≤ R` | `K = 0`, the limit `0`; matches Wu2006 line 233 (exact where `L` is invertible) | agrees | — |
| 6.1 `cayley_mem_unitaryGroup`, `grading_mul_cayley_mul_grading`, `cayley_cayleyInv`, touched by R01 | `m = 2`, `n = 1`, `T = [1 1]`, `X = [[0,0,−1],[0,0,−1],[1,1,0]]` | `g = ⅓[[1,−2,−2],[−2,1,−2],[2,2,−1]]`, `gᵀg = 1`, `εgε = g⁻¹` (exact rationals) | `εg` fixes `(1,0,−1)` and `(0,1,−1)`, so `W` is the graph of `−T` with `dim W = 2 = m`; `cayleyInv g = X` | agrees | — |
| 6.2 identity, touched by R01 | `k = 1`, `F = 2P − 1` | `F(2dP)² = 8P(dP)² − 4(dP)²` | `2^(2k+1) = 8`, `2^(2k) = 4`; `tr((dP)²) = −tr((dP)²) = 0` | agrees | — |
| 6.2 class of `tr(F(dF)^(2k))`, touched by R01 | `Gr_1(ℂ²) = ℂP¹`, `k = 1`, `F = n·σ` with `n ∈ S²`, chart `w` orientation-preserving | `tr(F(dF)²) = 4i·(area form)`, integral `4i·4π = 16πi` | `2³·1!·(2π/i)·∫ch₁(O(−1)) = 8(2π/i)(−1) = 16πi` | agrees | — |

The rows of the untouched statements stand as in the previous review, of `5125255`.

- Folder diff since `5125255`: 6 lines of README.md, which delete words in three parentheses (:820, :1057–1058, :1108–1109) and rewrap them. No statement, heading, `*Needs:*` line or Lean declaration changed. Outside the folder, `git diff --stat origin/main...HEAD` with the folder excluded is empty.
- Gate: the worker's gate passes every check, with `build=0` and `OK`. My run with `--base origin/main` reports only `depcheck: NOT IN ORDER` against the public order file, which is not a finding before intake. The dependency check against the candidate order gives `depcheck: 244 roadmaps, 2200 edges, 0 problem(s)`, with no UPWARD or CYCLE line.
- Elaboration: `lake env lean` on Suggested.lean gives 16 `sorry` warnings and nothing else. The file is unchanged since `0c22c1ff`, so the earlier signature comparison and padding probe still apply.
- Source locators in the changed passages: Wu2006 lines 228–238 (equation (2.8) and the exactness formula after it, p. 2) support 4.4 (a). BGV1992 §9.1 and Quillen1988 are uncertified and were not read. The references at README.md:1220 still give Ch. 9, pp. 263–310 for §9.1, so the deletion at :820 loses no page. Seeded targets in the diff: 4.4 and 6.1.
- Cross-roadmap citations in the changed sections, resolved on main `8a42212`: GeneralizedCohomology G4.0b (its README.md:939, :958) and LieGroupoidsPoisson G0.1 (its README.md:299). The overlap lead “only an open revision defines it” for G4.0b is therefore false. No open pull request changes this roadmap or drops an id it cites.
- Description against the head: the pins `1b1ccf4` (Mathlib) and `2fd255d` (Tau Ceti) match `lake-manifest.json`. “Suggested.lean, unchanged since `0c22c1ff`” holds, with 16 sorried theorems. The Review section now says “Four points” and lists four.
- Remark on untouched text: README.md:313 still gives BGV as “§1.3, in Ch. 1, pp. 13–59”, while :820 now gives only the section.

Overlap check: read RationalHomotopyModels, SpinGeometry, CalibratedGeometry and IndexTheory. The diff adds no object, so ownership stands as recorded in the earlier reviews: Clifford modules belong to SpinGeometry; the real skew normal form to CalibratedGeometry §4.2; index formulas to IndexTheory; real Pfaffians to RandomMatrices §8.5. Nothing is shared with RationalHomotopyModels.

Source independence: changed passages only. The 3 changed passages delete words and add none, so there was no new wording to compare. The largest share is Wu2006, 23 of 55 locators; the diff removes no locator. No layer was added, removed or reordered, so the arrangement stands as compared before: independent. The texts of BGV1992 and Quillen1988 could not be read.

## Not verifiable

- BGV1992 §9.1, cited for 4.4 (b): settled uncertified; text not read.
- Quillen1988, cited for 6.1 and 6.2: settled uncertified; text not read. The zbMATH Open API returned HTTP 400 and then 502 for Zbl 0671.57013, so the review was not read either.

## Source issues

- none

## For the human reviewers

- **Not tested.** BGV1992 (15 of 55 locators) and Quillen1988 could not be read, so the wording and arrangement were not compared with them. The locators R01 asks for need someone with access to both texts.
- **Licence.** README.md:1245 and :1250 cite Knuth (arXiv:math/9503234) and Harvey–Lawson (arXiv:math/9407216), both read from arXiv. The package's `sources.toml` has no entry for either.
