# FIX-DESIGN-FinitenessAndDualityOfGroups~3

Repair of the six findings of REV-DESIGN-FinitenessAndDualityOfGroups~2. Files changed:
`packages/FinitenessAndDualityOfGroups/design/README.md`, `packages/FinitenessAndDualityOfGroups/design/plan.json`,
`packages/FinitenessAndDualityOfGroups/sources.toml`. This is a design-stage package: there is no
`Suggested.lean`, so no `#check @name` comparison or elaboration was run. Every finding was verified
before it was applied; all six are correct.

## F01 (P1) — applied

Verified at the pin: `SSet.chainComplex` is a coproduct over all simplices (for `Δ[0]`, `ℤ` in every
degree, `d₁ = 0`, `d₂ = id`). The pin already specialises the suggested splitting: contracts, 5.4, 8.8
and 8.9 now use `SSet.normalizedChainComplex`, `SSet.homotopyEquivNormalizedChainComplex` and the
dimension-vanishing lemmas. 8.8 also proves the fixed-subcomplex and orbit compatibilities. Added a
`Δ[0]` Check; synced the plan.

## F02 (P2) — applied

Plan 8.8(b) "G a p-group ⇒ every X^H finite" → "G a finite p-group and Σ dim H_i(X; 𝔽_p) < ∞ ⇒ …".
The hypotheses list now gives each clause's assumptions. The README already had the hypothesis. Added
a README Check and a plan test: `ℤ/2` acting trivially on discrete `ℕ` (infinite `H₀`, excluded);
point 1/1; circle reflection 2/2.

## F03 (P2) — applied

Plan 2.2 "the largest k with Hᵏ(G, F) ≠ 0" → README (b): `cd < ⊤` and vanishing above `n` on free
`F` give `cd ≤ n`. `[Nontrivial R]` stays on (d). Plan tests 2.4 `Zn` and 2.6 `free2` now assume
`R ≠ 0`. Added a zero-ring Check (`R = 0`, `G = 1`) to README 2.2 and the plan.

## F04 (P2) — applied

Verified at the head: SpectralSequencesAndConvergence §3.4 states the Euler identity, and its §5.3
states it on the filtered-complex carrier that CohomologyOfGroups §6.2 uses. 8.6(a) is deleted. 8.6
(id kept) and 8.7 import §5.3/§3.4. Added scope, contract, Needs and plan supplier entries. Added the
`F₂ × F₃` `(1, 5, 6)` Check.

## F05 (P3) — applied

Plan 3.2 hypothesis `Monoid.IsTorsionFree G` (absent at the pin; it appears only in the docstring
`GroupTheory/Torsion.lean:23`) → `[IsMulTorsionFree G]` with `[Group G]`. A README Mathlib contract
now cites `IsMulTorsionFree` (`Algebra/Group/Monoid.lean:552`) and `isMulTorsionFree_iff_not_isOfFinOrder`.
3.2 now names the predicate. No other occurrence.

## F06 (P3) — applied

7.1: the locator "Brown1974 lines 81–86" is removed; BrownGTM87 §IX.2 remains. 8.3 defines `χ̃` as
the review asks, with the ranks of 7.1. Brown1974 calls `χ_ℚ` "naive" (lines 82–83, 386–387, 414),
so the roadmap drops "naive" for `χ̃` and retitles 8.3. Non-goals now read `χ − χ_ℚ`. Plan locators,
API names and `sources.toml` were updated to match.

## Where else each pattern was searched

- F01: every "chains" in the README. The 5.4(b) Eilenberg–Zilber step concerns homology only and is
  correct with unnormalized chains. 8.9's `Hᵢ(Z/Γ'; ℤ) ≅ Hᵢ(Γ', ℤ)` now names the normalized
  resolution of 5.4(b). The 5.4 Check already said "normalized". CW cellular chains (8.2, 5.2) are
  not simplicial.
- F02: README 8.8 (a), (b) and the Smith-inequality API bullet all carry finite input homology.
- F03: every `cd_R`/`hd_R` equality in the plan and the README. Only plan 2.4 `Zn` and 2.6 `free2`
  lacked `R ≠ 0`. The README Checks (2.1, 2.2, 2.4, 2.6) were already guarded. Plan 6.3, 9.2 and
  9.4 hold over `R = 0`, where every term is zero.
- F04: 8.7 was the only consumer of 8.6(a) and is rerouted. No other generic spectral-sequence
  statement is planned here. The Scope line "this roadmap proves no spectral sequence" stays.
- F05: only the plan's 3.2 hypothesis used a Lean predicate for torsion-freeness. Elsewhere it is prose.
- F06: no other Brown1974 locator points at the introduction (lines 1–110). Uses of `χ̃` (8.3, 8.4(c))
  are consistent with the new definition. The Non-goals use of `χ̃` meant Brown's `χ_ℚ` and was fixed.

## Adversarial pass on new or changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Unnormalized vs normalized chains (contract, 8.8 Check) | `Δ[0]`; `∂Δ[2]` | `Δ[0]`: `C_n = ℤ`, `d_n = Σ_{i≤n}(−1)ⁱ` = `0, 1, 0, 1, …` for `n = 1, 2, 3, 4`, so `H₀ = ℤ`, `H_{>0} = 0`; `N₀ = ℤ`, `N_{>0} = 0`. `∂Δ[2]`: `N = (ℤ³ ← ℤ³ ← 0)`, `H = (ℤ, ℤ)`, while `C₂` contains the 9 degenerate 2-simplices | Normalized bounded; unnormalized not; same homology |
| 5.4(b) normalized chains of `Z` free over torsion-free `Γ'` | `G = ℤ/2 × ℤ`, `Γ = ⟨t⟩`, `Γ' = ⟨st⟩`; `Γ' = 1` | `st · (a, b) = (b + 1, a + 1)`; a fixed simplex would need `a = b + 1` and `b = a + 1`, impossible, so the action is free; length `2 ≤ [G : Γ] · max(3, 1) = 6`. The stabilizer `⟨s⟩` lies off `Γ'` | Holds |
| 8.8 compatibility (i): `N(X^H)` spanned by fixed nondegenerate simplices | circle reflection `v₁ ↔ v₃` | Fixed: `v₀, v₂` (and their degeneracies, degenerate in `X^G`); `N(X^G) = ℤ²` in degree 0, no fixed edge (`v₀→v₁ ↦ v₀→v₃`) | `X^G` = two points, `χ = 2` as in the Check |
| 8.8 compatibility (ii): `N(X/H) = ℤ ⊗_{ℤH} N(X)` | same reflection; free swap `v₀↔v₂, v₁↔v₃` | Reflection: vertex orbits `{v₀}, {v₂}, {v₁, v₃}`, edge orbits 2 ⇒ path, `χ = 3 − 2 = 1`. Free: 2 vertex and 2 edge orbits ⇒ circle, `χ = 0` | Matches Floyd `0 + 1·2 = 2·1` and `0 + 0 = 2·0` |
| 8.8(b) with finite input homology | `ℤ/2` trivial on discrete `ℕ`; point; reflection; free rotation | `ℕ`: `dim H₀(X) = ∞`, so excluded (without the hypothesis, `dim H₀(X^G) = ∞`). Point: 1 → 1. Reflection: 2 → 2. Free: 2 → 0 | Hypothesis needed and sufficient in examples |
| 2.2(b) implication | `R = 0, G = 1`; `R ≠ 0, G = ℤ²`; `G = ℤ/2` over `ℤ` | `R = 0`: hypotheses hold for every `n`, conclusion `0 ≤ n` true. `ℤ²`: `H²(ℤ², Rℤ²) = R ≠ 0` blocks `n = 1`, `n = 2` gives `cd ≤ 2 = cd`. `ℤ/2`: `Hᵏ(ℤ/2, F) = 0` for `k > 0`, free `F`, but `cd = ⊤`, so `cd < ⊤` is needed | Correct; old "largest k" has no value at `R = 0` |
| Plan 2.4 `Zn`, 2.6 `free2` guarded | `R = 0`; `R = ℤ` | `cd_0 ℤⁿ = 0 ≠ n` (n ≥ 1); `cd_ℤ ℤⁿ = n`, `cd_ℤ(ℤ∗ℤ) = 1` | Guard needed, added |
| 3.2 with `IsMulTorsionFree` | `ℤ`; `ℤ/2`; Klein group `K` | `ℤ`: holds. `ℤ/2`: `s² = 1²`, `s ≠ 1`, so it fails. `K`: holds; `(at)² = t²` with `at ≠ t`, but `at` and `t` do not commute, so commutation matters | Native predicate means torsion-free for groups |
| 8.6 via SpectralSequencesAndConvergence §5.3 | `F₂ × F₃`, `N = F₃`; `ℤ/2 × ℤ`, `N = ℤ/2`; Klein `K`, `N = ⟨a⟩`; `N = 1`; `N = G` | `F₂×F₃`: `E₂` dims `(0,0)=1, (1,0)=2, (0,1)=3, (1,1)=6`, totals `1, 5, 6`, `1 − 5 + 6 = 2 = (−1)(−2)`. `ℤ/2 × ℤ`: `Γ = ⟨t⟩`, `Γ ∩ N = 1`, `Q = ℤ`, `[G : Γ] = 2 = 1 · 2`, `χ = 0/2 = (1/2)·0`. `K`: `H^*(ℤ, ℚ_−) = 0`, totals `1, 1, 0`, `0 = 0·0`. `N = 1`, `N = G`: one row or one column | Holds; index identity `[G:Γ] = [G⧸N:Q]·[N:Γ∩N]` checked |
| 8.7 route via §§3.4/5.3 | `ℤ/4 ∗_{ℤ/2} ℤ/6`; `F_r` | `1/4 + 1/6 − 1/2 = −1/12`; `1 − r`. Statement unchanged; its `E¹` page has finitely many finite-dimensional terms (`p ≤ 1`, `q = 0` for the free kernel) | Unchanged values |
| 8.3 `χ̃` (identity-class rank) | `1`; `ℤ`; `ℤ/2` | `χ̃(1) = 1`; `χ̃(ℤ) = 1 − 1 = 0`; `ℤ/2` has no finite projective resolution over `ℤ`, so `χ̃` is undefined, while `χ_ℚ = 1` (Brown's naive value) and `χ = 1/2` | Consistent with 8.4(c) and Conventions |
| Non-goals `χ − χ_ℚ` | Brown1974 lines 82–83, 386–387, 414 | Brown's `χ̃` is `Σ(−1)ⁱ dim Hᵢ(Γ, ℚ)` (line 387, defined before `χ` at 416–419); (ii′) says `χ = χ̃` for torsion-free `Γ`, as `χ = χ_ℚ` here | Brown's `χ̃` is this roadmap's `χ_ℚ` |

## Checks run

Dependency gate (after all edits):

```text
candidate: FinitenessAndDualityOfGroups is not in the merge order yet; checked as if placed after CohomologyOfGroups (the intake inserts it when its design is accepted)
depcheck: 244 roadmaps, 2201 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The edge count rose by one, the new SpectralSequencesAndConvergence
edge. That roadmap is earlier in the merge order than CohomologyOfGroups.

Citation resolver (`roadmaps resolve`): it lists the same three leads as before and no unknown Lean
name.

- `CohomologyOfGroups §4.6` is a board package (`packages/CohomologyOfGroups/design/README.md`), and
  §4.6 exists there.
- `BieriEckmann1974, §3.3` and `BrownGTM87, §VIII.6` are source keys, not roadmaps.

The resolver could not check Mathlib or Tau Ceti names on this host. Every new library name was
checked by hand at the pinned Mathlib:

- `SSet.normalizedChainComplex` (`AlgebraicTopology/SimplicialSet/Homology/Nondegenerate.lean:43`)
- `SSet.homotopyEquivNormalizedChainComplex` (`:86`)
- `SSet.isColimitCofanNormalizedChainComplex` (`:167`)
- `SSet.isZero_normalizedChainComplex_X_of_hasDimensionLT` (`:182`)
- `SSet.normalizedChainComplexMap` (`:200`)
- `SSet.isZero_homology_of_hasDimensionLT` (`:252`)
- `SSet.splitting` (`SimplicialSet/Splitting.lean:35`)
- `SSet.HasDimensionLT` and `SSet.HasDimensionLE` (`SimplicialSet/Dimension.lean:32`, `:36`)
- `SSet.hasDimensionLE_prod` (`SimplicialSet/FiniteProd.lean:66`)
- `IsMulTorsionFree` (`Algebra/Group/Monoid.lean:552`)
- `isMulTorsionFree_iff_not_isOfFinOrder` (`GroupTheory/OrderOfElement.lean:911`)

Elaboration: not applicable. There is no `Suggested.lean` at the design stage.

Sources: no new fetch was needed.

- `sources.toml`: Brown1974 no longer lists 7.1 in `cited_for`. Its locator now records the
  introduction lines 82–83 and the normalized chain complex at line 302. BrownGTM87 now lists 8.3.
- No text is missing, and no `needs-references.toml` was written.

## Ownership

SpectralSequencesAndConvergence (§§3.4, 5.3) now owns the Euler identity. It is a new roadmap still
in an open pull request, and it is listed earlier in the merge order. The text was read at its head:

- §3.4: the general identity for weakly convergent spectral sequences with finite filtrations.
- §5.3: the identity for Tau Ceti's `CochainComplex.spectralSequence` of a filtration finite in each
  degree.

CohomologyOfGroups §§6.1–6.2 realises the Hochschild–Serre sequence on that carrier. Its §2.3 builds
the bicomplex sequences on Tau Ceti's `HomologicalComplex₂.rowFiltrationSpectralSequence`, which is
also a `CochainComplex.spectralSequence` of a filtration (`TauCeti/Algebra/Homology/SpectralSequence/Bicomplex.lean:497`).

No other owner of normalized simplicial chains exists. They are Mathlib's at the pin.

## For the maintainer

- New supplier edges: SpectralSequencesAndConvergence §§3.4 and 5.3, and CohomologyOfGroups §§2.3
  and 6.1. Both are in the plan's `suppliers` and in the README's Exact supplier contracts.
- 8.6 no longer has parts (a) and (b); its id is kept.
- The heading of 8.3 changed from "The rational and the naive Euler characteristic" to "The rational
  Euler characteristic and the identity-class rank". Two plan API names were renamed:
  `naiveEulerChar_finiteIndex` → `identityRankEulerChar_finiteIndex`, and
  `rationalEulerChar_eq_naive_of_FL` → `rationalEulerChar_eq_identityRank_of_FL`.
- `roadmaps grep` finds no roadmap on main or in an open pull request that cites this roadmap, so
  none of these changes breaks a citation.
- No suspicious instructions were found in the review or the material read.
