# FIX-PKG-ArakelovGeometryAndAbelianHeightsPartII~2

Repair round on the review REV-PKG-ArakelovGeometryAndAbelianHeightsPartII (eleven findings, F01–F11). Files changed: `packages/ArakelovGeometryAndAbelianHeightsPartII/README.md`, `design/plan.json` (top-level `gaps` only), `sources.toml`. `Suggested.lean` and `metadata.toml` are unchanged.

## F01 (P2) — applied

Verified at the heads given by the roadmaps service: TropicalAndBerkovichArithmetic states §§0.1, 0.12, 0.15, 0.22 (complete nonarchimedean fields, trivially valued included), 0.23, 2.7, 2.13, 3.1, 3.3, 6.1–6.4, 6.6, 6.7–6.8; GrossZagierAndArithmeticHeights states §§2.2–2.4, 2.8, 2.10, 2.12, 2.13. Deleted both gaps (plan and README); every TB/GZ label replaced by these section numbers. Analytification over (ℤ, |·|∞) stays §2.1 here.

## F02 (P2) — applied

Confirmed: SchemeAndStackFoundations Layer 5 (main) has no nef, big or volume. Removed the three slug citations; supplier paragraph now cites §§0.20–0.21, 3.5, 5.1–5.3, 5.5–5.6, 5.12 and says geometric nefness/volume/bigness are defined here. §0.3 now states (1′) geometric Hilbert–Samuel and (2′) Siu with route and locators yuan-zhang-2025 lines 5396–5414 and yuan-2008 lines 196–201, plus a ℙ¹ Check.

## F03 (P2) — applied differently

Added the comparison as target §4.9 (Layer 4), not §1.9 or part of §1.6: its statement needs §§2.3, 2.6, 3.1, 4.6 and 4.8. It identifies the ArithmeticDynamics §4.3a group with P̂ic(X/k), with tensor, pullback, cones, metrics, measures, intersections (÷a_K) and heights, plus three Checks (the suggested ℙ¹ one included). §5.3 needs it. §2.6 does not: it builds its measures from local model data, so a Layer 2→4 dependency would be backwards.

## F04 (P2) — applied

Confirmed in `merge-order/ORDER.txt`: GrossZagierAndArithmeticHeightsPartII is line 229 and ArithmeticDynamics line 268, both before this roadmap (269). I deleted both sentences from Downstream consumers. Only HeightsRationalPointsAndObstructionsPartII (291) is left, and its section list now uses the new numbers §§4.7–4.8 and 5.1–5.4.

## F05 (P2) — applied

Correct: yuan-2026 Theorem 1.4 (lines 477–478) has constants depending on g, and the function-field route gives c₃ = 4^(−4g²)/12, which tends to 0. The Summary now says the comparison is uniform over curves of a fixed genus g > 1 over all number fields and one-variable function fields, with constants depending only on g. The §13.10 Check now reads c₃(g) ≤ [ω_a²] ≤ c₄(g) for fixed g and records the non-uniformity in g.

## F06 (P2) — applied differently

The Check is false, confirmed with the witness D = ([2], 0), D′ = (0, c). The suggested replacement's general clause, "finite part at least |D| componentwise", is not well defined for Cartier divisors on nonfactorial models, so I left it out. The new Check gives D′ = ([2], c) as an upper bound (D′ − D = (0, c), D′ + D = (2[2], c), deg D′ = log 2 + c ≥ 0) and shows that (0, c) is not one. The target itself moved to §1.9 (see F09).

## F07 (P3) — applied

- §2.2 fragment → "(Yuan–Zhang §3.2, p. 72, yuan-zhang-2025 line 2632, prints e^(−g/2) …)".
- §8.3 → yuan-2026 line 1100, where (2g − 2)β₂ should read (2g − 2)π^*β₂.
- §13.9 → a complete route (b), with lines 3139–3250 and λ_K defined. I also replaced the truncated "≥ ...".
- Renumbered §§0.4–0.5 → 0.2–0.3 and §§5.2–5.5 → 5.1–5.4, with every internal reference updated.

## F08 (P3) — applied

- Replaced all 82 "One proof route uses …" openings with "*Route.* …".
- Removed the doubled roadmap names and added the missing verb in §6.4(1).
- Deleted the 15 listed duplicate Checks and, by the same pattern, 27 more in §§0.2, 1.1, 1.2 (×3), 2.1 (×2), 2.2, 4.1, 4.2, 5.1 (×2), 5.2, 5.4, 6.1, 8.1, 8.4, 9.2, 10.1, 10.11, 10.13, 12.1, 12.6, 13.4, 13.6, 13.8.
- Every definition still has ≥ 3 Checks; I checked this mechanically.

## F09 (P3) — applied differently

- Each layer's Dependencies is now the union of its subsections' external *Needs*, checked mechanically.
- Supplier contracts gained ArithmeticDynamics §4.40, HeightsRationalPointsAndObstructions §0.11 and SchemeAndStackFoundations §§0.20–0.21 and §3.5.
- Domination moved to Layer 1 as §1.9 (needs §§1.2, 1.5, 1.6) instead of being reordered inside Layer 4. That puts it before §4.1 with only three renumberings (§§4.7–4.9 → 4.6–4.8).

## F10 (P3) — applied

(a) SchemeAndStackFoundations labels → §5.3 (first Chern classes), §5.1 (Chow groups), §5.2 (degree), §5.5 (exterior products; the external product is defined there, SSF README line 6815). (b) §7.4 locator → yuan-2026 line 3531. By the same pattern: §7.1 → line 3621 (§A.3 starts at 3617) and §7.2 → line 3640. (c) §6.2(5) now cites gao-habegger-2019 Proposition A.1(5), lines 2568–2578; Lang is not cited. (d) Covered by F01.

## F11 (P3) — applied

Correct: yuan-2026 Appendix A (lines 3505, 3532, 3640, 3874, 4012) and §§2.2–2.3 (lines 947, 1114, 1177) assume g > 0. §§7.2, 7.4–7.7, 8.1–8.7 and 9.1 now say g ≥ 1; §9.2 onward keeps g > 1, and Scope and Conventions are updated. The genus-one existence steps (§7.4, §8.3 routes) use a positive-degree admissible bundle. New g = 1 Checks are in §§7.4, 7.7, 8.3 and 9.1.

## Checks run

- **Lean.** `lake env lean packages/ArakelovGeometryAndAbelianHeightsPartII/Suggested.lean`, run from the content checkout: exit 0, no output, 4.5 s. The file is unchanged and declares nothing, so the `#check @name` comparison is vacuous: I wrote no scratch file because there is no declaration to compare, and nothing changed.
- **Direction check.** `gate --depcheck … --movable`: `depcheck: 48 roadmaps, 539 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line.
- **Citations.** `roadmaps resolve` gives one lead: "13: StableReductionPartII §§MC.4: no roadmap StableReductionPartII on main or in an open pull request". This is a false positive. StableReductionPartII is a board design at merge-order line 179, and its `design/plan.json` contains every cited id, including `arbitrary-field-hodge-positivity` and `finite-cover-hodge-descent`. No Lean names are unresolved.
- **Gate failures.** None were listed for this round.
- **Sources.** No new source. The new locators (yuan-zhang-2025 §5.2.1, p. 140; yuan-2008 §1.3, p. 6; gao-habegger-2019 Proposition A.1(5)) are recorded in the existing `sources.toml` entries. No `needs-references.toml` was written.

## Ownership

§4.9 is owned here: ArithmeticDynamics comes earlier in the merge order and cannot cite this later carrier. Its open head (§4.3a) states no comparison, and `roadmaps grep ArakelovGeometryAndAbelianHeightsPartII` finds no match on main or in any open pull request. Ownership was checked against the sibling checkouts the brief provides through the roadmaps service. No `Suggested.lean` declaration was added.

## Adversarial pass (changed or added statements)

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Summary / §13.10 Check: constants in g | c₃(g) = 4^(−4g²)/12 at g = 2, 3 | 1.94·10⁻¹¹; 1.77·10⁻²³ (→ 0) | "uniform in g" false | restated for fixed g |
| §0.3(1′) geometric Hilbert–Samuel | ℙ¹, O(a), a ≥ 0; O(−1); d = 0 point | h⁰(mO(a)) = am + 1, vol = a = deg; vol(O(−1)) = 0 ≠ −1; vol = 1 = empty product | holds; nefness needed | Check added |
| §0.3(2′) Siu | L = O(2), M = O(1); M = O(0); perturbation by εA | 2 − 1 = 1 = vol(O(1)); bound 2 = vol(O(2)); εA cancels in L − M | holds | none |
| §1.9 Checks (F06) | D = ([2],0) with D′ = ([2],c) or (0,c); D = (0,−1) with D′ = (0,1) or (0,½) | (0,c) ≥ 0, (2[2],c) ≥ 0, deg log 2 + c; (−[2],c) not effective; −1 ≤ −1 ≤ 1; −½ > −1 | holds | replaced false Check |
| §4.9(2)–(4) comparison | ℙ¹/ℚ max vs Fubini–Study; X = Spec K, [K:ℚ] = 2; k(t) | O(1)² = 0 / 0, FS 1/2; h([1:2]) = log 2 both; raw 2 vs 2/a_K = 1, heights 1 / 1; h(t) = 1, constant 0 | holds; dropping a_K gives a factor 2 | new target |
| §5.3 route via §4.9 | nef ⇒ h ≥ 0; constant A₀, torsion | e₁ ≥ 0 and generic small ⇒ e₁ = 0 ⇒ h(Y) = 0; h(A₀) = 0 | holds | route rewritten |
| §7.2 at g = 1 | θ_α for g = 1 | θ_α = image of C⁰ = one point; i_α^*θ_α = O(α), degree 1 = d/g | holds | g ≥ 1 |
| §7.4 uniqueness at g = 1 | φ-equation of Yuan p. 106 | (2g − 2)φ + c = −2φ − c′ ⇒ φ = −(c + c′)/2, constant | holds | g ≥ 1 |
| §7.4 existence at g = 1 | L̄ = ω vs L̄ of degree d > 0 | ∫g_x c₁(ω) = 0 (empty); ∫g_x c₁(L̄) = d∫g_x μ_a | needs positive degree | route amended |
| §7.4 Check (g = 1) | good reduction, ω-metric × e^c | (a)–(c) unchanged, residue norm e^c ≠ 1 | (d) excludes it | Check rewritten |
| §7.5 at g = 1 | Tate circle of n unit edges; good reduction | K_Γ = 0, μ = ds/n, g_μ(x,x) = n/12; ratio e⁰ = 1 | holds | g ≥ 1 |
| §7.7 at g = 1 | ω_C ≅ O_C with constant metrics | ω_a = π^*N̄, ⟨π^*N̄, π^*N̄⟩ = 0·N̄ = 0 | holds | Check added |
| §8.3 route (F07 display, g = 1) | p₁_*⟨(π,π)^*β₂, p₂^*ω′⟩ at g = 2, 1; L̄ of degree e | 2π^*β₂; 0 (β₂ not fixed); e·π^*β₂ | gap at g = 1 | route amended |
| §8.3 Check (g = 1) | circle, n = 12 and n = 0 | metric factor e_v¹ and 1 | holds | Check rewritten |
| §8.5, §8.7 at g = 1 | deg x^*w = a; torsion M | ⟨O(x)ₐ,O(x)ₐ⟩ = −a, ⟨O(x)ₐ,w⟩ = a; Θ-height 0 = ⟨M̄,M̄⟩ | holds | none |
| §9.1 at g = 1 | second identity of (2); (3) with d = 1 | 0 = d⁴·0 + d²·e^*Θ̄ = 0; 4x^*w = 0 + 4·1·x^*w | holds | Check added |
| §13.9 route (b) coefficient | g = 2 (c = 1/27, hyperelliptic); g = 3 (17/288); g = 4 (3/88); g = 5 (c ≥ 1/25) | 109.75; 100.44; 142; ≤ 112.38 — all < 144 ⇒ [ω²] ≥ h/12 + c₅′/144 | holds | route completed |
| §0.2 Needs (SSF §3.5 norm) | degree-2 cover, f^*O(1) | norm O(2), degree 2 | holds | citation fixed |
| TB contract μ_a (unit banana) | three edges, r_e = ½ | (1/2)·1/(1 + ½) = 1/3; total mass 1 | holds | none |
| F04 direction | merge-order lines | 229, 268 < 269 < 291 | holds after deletion | consumers trimmed |

## For the maintainer

- **Renumbered sections.**
  - §§0.4–0.5 → 0.2–0.3.
  - Old §4.6 → §1.9.
  - §§4.7–4.9 → 4.6–4.8.
  - New §4.9.
  - §§5.2–5.5 → 5.1–5.4.

  No roadmap on main or in an open pull request cites these numbers, and the board package HeightsRationalPointsAndObstructionsPartII cites none of them.
- **Stale board copy.** `packages/ArithmeticDynamics/README.md` (around line 10935) still uses "ArakelovGeometryAndAbelianHeightsPartII, AH.1–AH.4" as a supplier. That is a two-way supply on the ArithmeticDynamics side, which this package cannot edit; its open head no longer cites this roadmap.
- **Source issues, not recorded.** I could only edit the `gaps` list of `design/plan.json`, so these two are not in it.
  - yuan-2026 §2.2.3, p. 32, line 1100: the display adds (2g − 2)β₂ where (2g − 2)π^*β₂ is meant (misprint). At g = 1 this coefficient is 0, so "(2) determines β₂" (line 1103) fails there; this is the same genus-one gap as Theorem A.1, p. 113.
  - yuan-zhang-2025 p. 72 (line 2632), e^(−g/2): the README now states the correction inline.
- **Design files.** `design/README.md` still carries the old catalogue labels; the brief does not let me edit it.
