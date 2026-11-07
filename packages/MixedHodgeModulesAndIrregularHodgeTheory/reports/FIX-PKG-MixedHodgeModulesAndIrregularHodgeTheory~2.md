# FIX-PKG-MixedHodgeModulesAndIrregularHodgeTheory~2

Findings of `REV-PKG-MixedHodgeModulesAndIrregularHodgeTheory` (six findings, one P1, five P3). Files edited: `packages/MixedHodgeModulesAndIrregularHodgeTheory/README.md`, `Suggested.lean`, `sources.toml`, `design/plan.json` (top-level `gaps` only).

## F01 (P1) — applied differently

Verified: EtaleDualityAndPerverseSheaves §4.5 at the head of its pull request writes `E ≅ P(N_{Z/X})` "(imported)" and requires the geometry of the blow-up from SchemeAndStackFoundations; SchemeAndStackFoundations on main (§4.11 modifications, §5.5 normal bundles of regular immersions, and `chow_blowup_formula`, which uses `ξ = c₁(O_E(1))` and `j^*j_* = −ξ` without stating the identification), StableReduction Layer 4 and MotivesAndAlgebraicCycles (blow-up triangle) all use or assume it; no roadmap on main, on the board or at an open head states it (`roadmaps grep` for `O_E(1)`, `P(N_`, `projectivized normal`).

Repair chosen: the declared gap, not ownership in 12.2. The identification is foundational scheme geometry that EtaleDualityAndPerverseSheaves (earlier in the order) already requires from SchemeAndStackFoundations, and SchemeAndStackFoundations' own `chow_blowup_formula` depends on it; a Hodge-theory roadmap proving it would duplicate a foundations target and leave the other consumer's import unowned. Changes: scope bullet → requested from SchemeAndStackFoundations §5.5 (`gap:blowup-exceptional-divisor`); the `### From TauCetiRoadmap.EtaleDualityAndPerverseSheaves` subsection deleted; §5.5 added to the SchemeAndStackFoundations contract with a `What SchemeAndStackFoundations must provide (gap:blowup-exceptional-divisor)` line (smoothness of `X̃`, `E = P(N_{Z/X}) = Proj(Sym(I/I²))`, `O_X̃(−E)|_E = O_E(1)`, normal line `O_E(−1)`, for `c ≥ 2`); the same entry in `design/plan.json` `gaps`. 12.2's route now proves `Rπ_* O_E(−μ) = 0` for `0 < μ < c` from the gap and `projectiveSpace_cohomology` (over an affine open of `Ξ` trivializing the normal bundle, `E` is `P^{c−1}_A` and every `H^q(P^{c−1}_A, O(−μ))` vanishes), with a new convention Check (self-intersection `−1` of the exceptional `P¹`; the opposite convention gives `O_E(μ)` with direct image `Sym^μ(I/I²) ≠ 0`). 12.9's route cites 12.2 for the exceptional divisor; the citations of EtaleDualityAndPerverseSheaves §4.5 in 12.2, 12.9 and the Layer 12 Dependencies are replaced by 12.2 or by SchemeAndStackFoundations §5.5 (gap). Fulton was not added: no new source is needed, the vanishing comes from the already cited Stacks statement in SchemeAndStackFoundations §2.6. EtaleDualityAndPerverseSheaves is no longer cited anywhere in the package.

## F02 (P3) — applied

Verified: Sai90 line 2769 (Theorem 3.21, printed p. 303, page marker at line 2752) is the extension equivalence `MH_X(X, w)^p ≃ VHS_gen(X, w − n)^p`; Sai88 line 3395 (5.1.8), 3406 (5.1.9), 3422 (5.1.10) on printed pp. 957–958; 5.2.12 (line 3775, p. 968), 5.2.13 (line 3791, p. 969), 5.2.14 (lines 3794–3809, pp. 969–970, the inductive polarizability criterion with decomposition (5.1.4.3)); Proposition 5.1.14 (line 3478, p. 959) is abelianness with strictness of morphisms for `F`; (5.1.5.3) (line 3347, p. 955) the decomposition by strict support. Old locator → "(Sai90, Theorem 3.21, p. 303 … Sai88, Lemmas 5.1.8–5.1.10 … (5.1.5.3) and Proposition 5.1.14 … Lemma 5.2.12 and Corollary 5.2.13, pp. 968–969 … Proposition 5.2.14, pp. 969–970)". Sai90 `locator` gains "Theorem 3.21"; Sai88 `locator` gains the lemmas. No other target cites the 5.2.12–5.2.14 range.

## F03 (P3) — applied

Verified: AS line 395 (Theorem 4.1, p. 67) is the cone-algebra complex `K^•`; line 546 introduces the Laurent ring `R_0`; line 569 (Theorem 4.13, p. 73) and line 583 (Theorem 5.1, p. 74, "immediate consequence of Theorem 4.13") are the Laurent-ring statements; Theorem 1.4 (line 100) is the form with extra exponents. 12.6's locator, the References entry, both docstrings of `Suggested.lean` and the AS `locator` in `sources.toml` now cite Theorem 4.13 and Theorem 5.1 with `r = 0`, `a = 0`, naming Theorem 4.1 as the cone-algebra form (the input of 12.5). The Lean types did not change.

## F04 (P3) — applied

Verified: 3.1, 3.3 and 12.4 had no `*Needs:*` line (61 of 64). Added, at the end of each definition paragraph as the other definition targets do: 3.1 (ShimuraData §§3.1–3.3; ComplexComparisonPartII §C6.1; the three Tau Ceti names); 3.3 (3.1, 3.2; LefschetzPencilsAndVanishingCycles §1.5; ComplexComparisonPartII §C5.6); 12.4 (the Mathlib carriers including `affineSpan` and `MeasureTheory.volume` used by the headline; AnalyticToricGeometry Layer 0 items 1, 2 and 6, checked at `Completed/AnalyticToricGeometry` lines 186–240; AnalyticToricGeometryPartII §0.3 with gap:toric-normal-fan; PadicDifferentialEquationsAndRigidCohomology §RD.6.53 for the first Check). Every one of the 64 targets now carries exactly one `*Needs:*` line (65 occurrences in the file: the other one is in the prose before the first target).

## F05 (P3) — applied

`Kou` title → "Polyèdres de Newton et nombres de Milnor". `cited_for` added to Sai88, Sai90, Kash86 and AS, with the layers recomputed from the README (Sai88 is cited in Layer 4 only, Sai90 in Layers 4 and 5, Kash86 in Layer 3, AS in Layer 12 and `Suggested.lean`); the reviewer's "Layers 4, 5" for Sai88 and "4, 5, 6" for Sai90 count citations that do not exist. The waived `Zucker` entry, the only other one without `cited_for`, received `["Layer 3"]`. The manifest parses (21 entries).

## F06 (P3) — applied

Verified on the board: `packages/SheafConvolutionOnAbelianVarieties/README.md` line 111 requests the regular holonomic Riemann–Hilbert equivalence as `gap:holonomic-riemann-hilbert-index` from ComplexComparisonPartII and uses it in §§0.4, 0.9, 1.5 and 4.3 (lines 115, 384, 498, 705); it never names this roadmap. Bullet → "needs, in its §§0.4, 0.9, 1.5 and 4.3, the equivalence … that equivalence is 1.5."

## Checks

- `lake env lean …/Suggested.lean` from the content checkout: `Suggested.lean:146:8: warning: declaration uses `sorry`` and nothing else.
- `#check @name` for all 13 declarations in a scratch copy, elaborated once: every type identical to the worker's `signatures.md` (only docstrings changed); the headline's type is README 12.6 verbatim; no section `variable`s exist.
- depcheck (`gate --depcheck … --movable`): `depcheck: 233 roadmaps, 2142 edges, 0 problem(s)`; no UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve`: "Lean names found nowhere: None."
- Grep for process words, pull-request numbers, LaTeX delimiters and machine paths in the README: none.

## Adversarial pass on the new or changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| gap `E = P(N) = Proj Sym(I/I²)`, `O_X̃(−E)|_E = O_E(1)` | blow-up of `A²` at `0`, `c = 2`; `A³` at a point, `c = 3`; `c = 1` | `E = P¹`, `E·E = −1`, `O(E)|_E = O(−1)`, `O(−E)|_E = O(1)`; `E = P²`, `O(−E)|_E = O(1)`, `p_*O_E(1) = I/I²` of rank `3`; `c = 1`: `π` an isomorphism, excluded by `c ≥ 2` | holds | none |
| `Rπ_* O_E(−μ) = 0`, `0 < μ < c` | `c = 2, μ = 1`; `c = 3, μ = 1, 2`; `μ = c = 2`; `μ = 0` | `H^q(P¹, O(−1)) = 0` all `q`; `H^q(P², O(−1)) = H^q(P², O(−2)) = 0` all `q` (`H⁰ = Sym^{−μ} = 0`, `H² = H⁰(O(μ−3))^∨ = 0`); `H¹(P¹, O(−2)) = ℂ`; `μ = 0`: `H⁰ = ℂ` | range `0 < μ < c` exact | none |
| new 12.2 Check (opposite convention) | `c = 2`, `μ = 1` | `p_* O_{P(N)}(1) = I/I²`, rank `2 ≠ 0` | wrong model excluded | added as Check |
| 4.4 locator (Sai90 3.21) | `Z` irreducible of dimension `d`, weight `w` | `MH_Z(Z, w)^p ≃ VHS_gen(Z, w − d)^p`: the README's weight `w − d` for `L` | agrees | locator only |
| 12.6 locator (AS 4.13, 5.1) | `φ = x` on `(G_m)²`; `φ = x` on `G_m` | Theorem 4.13 with `d(f) = 1`, `p = 2`: `dim H^l = C(1, l−1)`, so `H¹ = H² = ℂ` (the third Check of 12.6); `d(f) = p = 1`: `dim H¹ = 1!·1 = 1` | agrees | locator only |
| 12.4 Needs line | `n = 0` | `AddMonoidAlgebra ℂ (Fin 0 → ℤ) ≅ ℂ`, `volume` on `Fin 0 → ℝ` the Dirac mass, `affineSpan {0} = ⊤` | carriers as named | none |

## For the maintainer

- A new supplier gap `gap:blowup-exceptional-divisor` on SchemeAndStackFoundations §5.5 is declared (README and `design/plan.json`). EtaleDualityAndPerverseSheaves §4.5 (open pull request) requires the same statement from SchemeAndStackFoundations; the two requests should be served by one target there.
- EtaleDualityAndPerverseSheaves is no longer a supplier of this package.
- No Lean name changed; no name another roadmap cites changed.
- Ownership against open pull requests was checked through the `roadmaps` index at its heads only.
- No source was fetched and no text is missing; `needs-references.toml` was not created.
