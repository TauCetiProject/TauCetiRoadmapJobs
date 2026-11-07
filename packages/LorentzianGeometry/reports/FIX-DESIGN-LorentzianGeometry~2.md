# FIX-DESIGN-LorentzianGeometry~2: repair of the design review

Files edited: `packages/LorentzianGeometry/design/README.md`, `packages/LorentzianGeometry/design/plan.json`, `packages/LorentzianGeometry/sources.toml`. There is no `Suggested.lean` at the design stage. Every finding was checked against the pinned Mathlib (`1b1ccf4b`) and Tau Ceti (`2fd255d9`) and the cached source texts. Nine findings are correct as stated. F08 is also correct, but it cites the wrong line.

## REV-DESIGN-LorentzianGeometry/F01 (P2) — applied

§3.1 old: "symmetric, differentiable pairings: LC iff Koszul". New: LC ⇒ Koszul (`koszulBilinear_sub_two_mul_apply_eq_derivBilinearTensor`, `Basic.lean:325`, added to the contract); the converse also needs pointwise nondegeneracy (the pinned torsion lemma, `:195`, carries `hinjective`; `:174` does not). Check added (`b = 0`; `b = η` gives `−2`). Same pattern fixed in §3.2 and `plan.json` 3.1/3.2.

## REV-DESIGN-LorentzianGeometry/F02 (P2) — applied differently

§4.4: the canonical orientation, the section converse and the lifting now assume `M` Hausdorff and σ-compact; *Needs:* gains §4.2. §4.5: `IsExtendible` quantifies over the target, so `IsExtension` itself requires `[T2Space M̃] [SigmaCompactSpace M̃]` (`sbierski2018` line 255). `M` inherits both, so it needs no hypotheses. New Check: two Minkowski copies glued along `{t<0}`.

## REV-DESIGN-LorentzianGeometry/F03 (P2) — applied

§2.4's tautology → "timelike and nonzero-spacelike loci are disjoint and open; on preconnected `C` with `g(X,X) ≠ 0`, one causal character". Added constancy of `sign g(T,X)` (`T` timelike, `X` causal), which §4.3 and §5.3 use; their *Needs:* now list §2.4. Three Checks added (`∂_t + x∂_x`, `x∂_t`, time sense); `plan.json` 2.4 updated.

## REV-DESIGN-LorentzianGeometry/F04 (P3) — applied

§1.8: "the null vectors of `W` are its nonzero elements" → "the null vectors of `W` are exactly the nonzero elements of that radical line (§1.7), every other nonzero vector of `W` being spacelike". `plan.json` 1.8 statement is updated the same way. Witness recomputed: `W = ker(dt − dx¹) ⊆ ℝ³` contains `e₂` with `η(e₂, e₂) = 1`.

## REV-DESIGN-LorentzianGeometry/F05 (P3) — applied

§3.3: "for a chart transition `φ`" → `φ` is the transition from the chart of `Γ̃` to the chart of `Γ` (`x = φ(z)`), with `Γ` evaluated at `φ(z)`. Added a Check: for `x = z²`, `Γ̃ = 1/z`, which agrees with the geodesics, while the reverse transition gives `−½` at `z = 1`. `plan.json` 3.3 statement and tests updated.

## REV-DESIGN-LorentzianGeometry/F06 (P3) — applied

Verified: at the pin, `Hom.lean:72` is `contMDiffWithinAt_hom_bundle` and `:79` is `contMDiffAt_hom_bundle`. The citation now reads `79, 72`.

## REV-DESIGN-LorentzianGeometry/F07 (P3) — applied differently

`minguzzi2019` line 376 → lines 396–397, p. 9, plus `chrusciel2011` footnote 2, p. 6. The text now says chart independence follows from the `C^∞` transitions, proved here. `hawkingellis1973` §2.6 is uncertified and cannot be checked, so the chapter locator Ch. 2 (already in the manifest) replaces it. The manifest locator drops §2.6.

## REV-DESIGN-LorentzianGeometry/F08 (P3) — applied

The Tau Ceti contract now names `TauCeti.HolderSpace` (`Normed.lean:60`), `TauCeti.C1HolderSpace` (`One.lean:71`) and `TauCeti.CkHolderSpace` (`Iterated.lean:98`; the finding's lines 219–224 are `iteratedFDeriv` and `iteratedFDerivHolder`). It says how §2.1 differs (local, unbounded, on relatively open sets), with a strict-inclusion witness `x²`. Scope and ownership gains one sentence.

## REV-DESIGN-LorentzianGeometry/F09 (P3) — applied

Verified at the pin: `curvatureTensor`, `ricciTensor` and `riemannCurvatureTensor` are declared under `[T2Space M]`. The comparison now says "for `M` Hausdorff" and cites `IsLeviCivitaConnection.contMDiffCovariantDerivative`. Same pattern: global `C²` extensions need bump functions, so the §3.4 definition now uses extensions that are `C²` near `x`. Locality holds without separation (`IsCovariantDerivativeOn.congr_of_eventuallyEq`).

## REV-DESIGN-LorentzianGeometry/F10 (P3) — applied

Every line locator of `minguzzi2019`, `chrusciel2011`, `sbierski2018` and `galloway2004` (README, `plan.json`, References, `sources.toml`) now carries its section or theorem and printed page. `chrusciel2011`: printed page = PDF page − 4. `minguzzi2019`: the article's own page numbers. `sbierski2018`: arXiv v2 pages, the version read. `galloway2004`: the author's copy.

## Checks run

- Dependency gate (exact output):

  ```
  candidate: LorentzianGeometry is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
  depcheck: 240 roadmaps, 2354 edges, 0 problem(s)
  ```

  No UPWARD or CYCLE line.
- `roadmaps resolve` after the edits: no cross-roadmap citation found nowhere. Lean names were not checked by the tool on this run ("no pinned Lake packages"). Instead, every Lean name added in this round was grepped at the pins:
  - `TauCeti.Manifold.koszulBilinear_sub_two_mul_apply_eq_derivBilinearTensor` (`LeviCivita/Basic.lean:325`, namespace `TauCeti.Manifold`);
  - `TauCeti.Manifold.ContMDiffNondegenerateMetric.IsLeviCivitaConnection.contMDiffCovariantDerivative` (`Nondegenerate/Regularity.lean:221`);
  - `IsCovariantDerivativeOn.congr_of_eventuallyEq` (Mathlib `CovariantDerivative/Basic.lean:188`, root namespace);
  - `TauCeti.HolderSpace`, `TauCeti.C1HolderSpace` and `TauCeti.CkHolderSpace` (lines above).

  The 14 leads the worker listed before the round are 13 names of this roadmap's own targets (planned, not yet at the pins) and DifferentialGeometry's planned `IsCoveringMap.inducedChartedSpace` (cited as DifferentialGeometry Layer 2.3). They are unchanged.
- `#check` of `Suggested.lean`: not applicable (design stage, no Lean file). No Lean command was run.
- Gate failures listed in the brief: none.
- Sources: no new work was cited and nothing was fetched, so no `needs-references.toml` was written.
- Ownership: no new carrier or construction was introduced. The F08 duplication audit was done against the pinned Tau Ceti. Ownership against open pull requests needed no new check: `overlaps.md` lists no change to this roadmap and no dropped id.

## Adversarial pass (new or changed statements)

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §3.1 LC ⇒ Koszul | `η` with constant fields; `diag(−1,e^{2t})` | `2η(DY(X),Z) = 0 = K`; trivial connection fails compatibility `2e^{2t} ≠ 0`, so the premise fails | holds with symmetry and differentiable pairings | stated as one direction |
| §3.1 Koszul ⇒ LC | `b = 0` with `∇ = D + v⁰J`; `b = η` with the same `∇` | `K = 0 = LHS`, torsion `e₀ ≠ 0`; `LHS = −2`, `K = 0` | false without nondegeneracy, true with it | hypothesis added, Check added |
| §2.4 causal-character constancy | `∂_t + x∂_x`; `x∂_t`; empty `C` | `g = −1, 0, 3` at `x = 0, 1, 2`; `g = −1, 0` at `x = 1, 0`; vacuous | needs nowhere null and nowhere zero | restated, 2 Checks |
| §2.4 time-sense constancy | `T = ∂_t`, `X = ∂_t + x∂_x` on `|x| ≤ 1`; `X = x∂_t` | `g(T,X) = −1`; `g(T,X) = −x = −1, +1` at `x = 1, −1` | needs `X` causal (nonzero) | new statement, Check |
| §1.8 null vectors of a null `W` | `ker(dt−dx¹)` in `ℝ³`; in `ℝ²` | `η(e₂,e₂) = 1`, `η(e₀+e₁,e₀+e₁) = 0`, `η(e₀+e₁+e₂, ·) = 1`; `W = ℝ(e₀+e₁)` | holds as restated | wording |
| §3.3 transformation law | `dx²`, `x = z²`; reverse `√x` | `Γ̃ = 1/z` from the law and from `z'' = −(z')²/z`; reverse gives `−1/(2x) = −½` at `z = 1` | holds in the stated direction | direction fixed, Check |
| §3.4 curvature definition | germ-level extensions; de Sitter | Mathlib locality by the indicator of a neighbourhood (no `T2Space`); `Scal = 2` unchanged | well posed without separation | extensions `C²` near `x` |
| §3.4 smooth comparison | Tau Ceti declarations | `[T2Space M]` at `Tensor.lean:45`, `Ricci.lean:55`, `Riemann.lean:56` | needs Hausdorff | hypothesis added |
| §4.4 canonical orientation, section ⇐ | Minkowski `ℝ²`; `∅`; Möbius band | 2 sheets, 2 sections; 1 section; cover `ℝ × ℝ/2ℤ`, deck `(t,y) ↦ (−t,y+1)` sends `∂_t ↦ −∂_t` | holds for `M` Hausdorff σ-compact | hypotheses, *Needs* §4.2 |
| §4.4 section ⇔ trivial ⇔ disconnected | two Möbius bands; `∅` | `M̂` disconnected, not orientable (`M` disconnected); `∅` not connected | holds as stated (no gluing) | none |
| §4.5 definition | glued Minkowski (non-Hausdorff); Sbierski `ℝ²`; cylinder | Minkowski would extend; `ℝ²` and `ℝ × ℝ/ℤ` are Hausdorff σ-compact | target must be Hausdorff | target hypotheses in the definition, Check |
| §4.5 time-oriented extension | `(0,½)×(0,1)` with `[∂_t]` into the flat Möbius band | injective (identifications shift `x` by `≥ 1`); lift into the cylinder `ℝ × ℝ/2ℤ`, image proper, `[∂_t]` pulls back to `[∂_t]` | holds | proof made explicit |
| §2.1 vs `CkHolderSpace` | `x²` on `ℝ`, `k = 0`, `α = 1` | Lipschitz constant `2R` on `B(0,R)`, `sup = ∞` | local strictly larger | contract sentence |

## For the maintainer

- `TauCeti.Manifold.LorentzianMetric.IsExtension`, and so `IsExtendible`, now requires the target to be Hausdorff and σ-compact. Consumers citing §4.5 (CompressibleEulerEquations, the proposed LorentzianGeometryPartII, the inextendibility roadmaps) inherit the standard convention.
- No target, section or name was renamed or dropped. §2.4 gains a statement (time-sense constancy). §2.4 and §3.3 gain `**Checks.**` blocks.
- No suspicious instructions were found in the review text.
