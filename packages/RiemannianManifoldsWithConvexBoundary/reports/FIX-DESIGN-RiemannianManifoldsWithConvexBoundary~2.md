# FIX-DESIGN-RiemannianManifoldsWithConvexBoundary~2

Repair round for the findings of `REV-DESIGN-RiemannianManifoldsWithConvexBoundary` (one review,
six findings F01–F06). Files edited: `packages/RiemannianManifoldsWithConvexBoundary/design/README.md`,
`packages/RiemannianManifoldsWithConvexBoundary/design/plan.json`,
`packages/RiemannianManifoldsWithConvexBoundary/sources.toml`. Every library name below was opened
at the pins (Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`) and every source line in the cached
extractions.

## REV-DESIGN-RiemannianManifoldsWithConvexBoundary/F01 (P2) — applied

Verified: the review's witness is correct. For `ρ(x) = (1 − |x|²)e^{−|x|²}` on `ℝ²` the radial
derivative is `−2r(2 − r²)e^{−r²}`, equal to `−2/e` at `r = 1` (so `0` is regular), zero at
`r = √2` where `ρ = −e^{−2}`, and `ρ → 0⁻`; 4.3's route `ψ r + (1 − ψ)ρ` equals `ρ` off the tube,
so `{ρ̂ ≥ −ε}` is unbounded with a strictly concave outer circle for every `0 < ε < e^{−2}`.

Old → new. 4.3's boundary case now has a separate "normalised defining function" bullet:
`ρ̂ = r_{∂M}` on the inner tube `W₁`, `ρ̂ = 1` on `M ∖ W`, `ρ̂ = −1` off `M ∪ W`, and `ρ̂` a convex
combination of `r_{∂M}` and `±1` on `W`; route `ψ r_{∂M} + (1 − ψ)s` with both cutoffs from
`exists_contMDiff_zero_iff_one_iff_of_isClosed`, the closed inner tube from Tau Ceti's
`exists_isClosedEmbedding_normalExp_norm_le_subset` (closed sets `M ∖ W₁` and `N ∖ (M ∪ W₁)`, the
latter closed because `∂M ⊆ W₁`). 4.6 now takes `ε₀ < min(ε₁, 1)`, states
`M_ε = M ∪ E_{∂M}(∂M × [−ε, 0))`, and routes convexity through `II_{M_ε} = −Hess r_{∂M}` on the
compact tube; the witness is a negative-control Check of 4.6 and a compatibility Check of 4.3.3
in the plan. Pattern: `ρ̂` is used only in 4.3, 4.6 and (through 4.6) 5.5; 5.5's route is
unchanged and now valid. I used an inner tube radius `ε₁` from the closed-tube theorem instead of
the review's `W'' ⋐ W'`, because for non-compact `∂M` the review's uniform bound
`ρ̂ ≤ −ε₁` off `M ∪ W'` is not available; the sandwich property gives 4.6 the same conclusion
when `∂M` is compact.

## REV-DESIGN-RiemannianManifoldsWithConvexBoundary/F02 (P2) — applied

Verified at the pin: `TauCeti/Geometry/Manifold/Gluing/GlueData.lean` line 84
`TopCat.GlueData.chartedSpace`, line 103 `IsCompatible`, line 128 `isCompatible_iff`, line 155
`IsCompatible.isManifold`, line 179 `IsCompatible.partialDiffeomorphι`, line 207
`IsCompatible.isLocalDiffeomorph_ι`; `TauCeti/Topology/Category/TopCat/GlueData.lean` line 82
`t2Space_iff_isClosed_chartRel`, line 105 instance `secondCountableTopology`;
`TauCeti/Topology/Category/TopCat/GlueData/Double.lean` line 155 `TauCeti.t2Space_doubleGlueData_iff`;
Mathlib `Mathlib/Topology/Gluing.lean` line 90 `TopCat.GlueData`, line 279 `MkCore`. GeometricTopology
Layer 1 (main, lines 205–216) plans the collar and a corners-category gluing along faces; it does
not state the boundaryless conclusion or atlas compatibility, and nothing of it beyond the collar
is needed once the gluing is done on open pieces.

Old → new. The gap `gt-full-boundary-gluing` is deleted from `plan.json` and the README. 3.3 now
constructs `int M` as a boundaryless manifold over `𝓘(ℝ, ℝⁿ⁺¹)`, `M̃` as the compatible open gluing
of `int M` and the bicollar along `U ∩ int M ≅ ∂M × (0, 1)`, and `DM` as the three-piece open
gluing (two copies of `int M`, one bicollar, vacuous cocycle); Hausdorffness (closed gluing
relation, with the limit argument written out), second countability, `M` closed in `M̃`, the
closed embedding `M → M̃`, `ρ̃` by a two-set partition of unity, and the identity of `M` as a
diffeomorphism onto Tau Ceti's sublevel atlas are targets of 3.3 with routes. One claim was
weakened on the mathematics: `ρ̃ ∘ c̃ = t` holds on a neighbourhood of `∂M × {0}` (on
`∂M × (−1/2, 1/2)` when `∂M` is compact), not for all `|t| < 1/2` in general, because
`c̃(∂M × [−1/2, 1/2])` need not be closed in `M̃` for non-compact `∂M` (a collar whose image has a
frontier point approached at bounded collar depth with the boundary coordinate escaping to
infinity); the compact case, which 3.5 and the double use, keeps `|t| < 1/2`. Added a
discriminating Check: the double of `int M` along `U ∩ int M` alone is non-Hausdorff for
`M = [0, 1]`. Supplier contracts: the GeometricTopology paragraph now names only the collar; the
Tau Ceti and Mathlib paragraphs list the gluing names. Ownership: no roadmap on main or at the 460
open heads constructs the collar extension or the double of a manifold with boundary
(`roadmaps grep` for "collar extension", "double of a manifold with boundary", `M ∪_{∂M} M`: hits
are unrelated uses of the phrase); the open gluing itself is Tau Ceti's and is consumed, not
restated.

## REV-DESIGN-RiemannianManifoldsWithConvexBoundary/F03 (P3) — applied

The DifferentialGeometry contract is now the line "What DifferentialGeometry must provide
(gap:dg-outward-unit-normal): …" with the plan's `needs` sentence. The second gap no longer exists
(F02), so no line is written for it.

## REV-DESIGN-RiemannianManifoldsWithConvexBoundary/F04 (P3) — applied

Verified: `paternain-salo-uhlmann2023` lines 2766–2773 is Lemma 3.1.10 with `ρ = d(·, ∂M)` near
`∂M` and `∇ρ = ν`, the normalised function of 4.3; lines 307–310 list strictly convex Euclidean
domains, domains in nonpositively curved manifolds, subdomains of the hemisphere and perturbations
as simple manifolds, with no small geodesic balls; `uhlmann-vasy2016` lines 134–136 and 25–26 define
the weaker notion. Old → new: 1.3 cites Uhlmann–Vasy lines 134–136 and 25–26 and points to 4.3 for
Lemma 3.1.10; 6.4 cites Lee Ch. 6 and Example 3.1.4 (lines 2677–2678) for the cap instance. The
plan's 1.3 and 6.4 locators and the manifest's `cited_for` entries follow. 6.1's citation of lines
307–310 is kept: that passage does name strictly convex Euclidean domains.

## REV-DESIGN-RiemannianManifoldsWithConvexBoundary/F05 (P3) — applied

Verified: `roadmaps grep 'LorentzianGeometry'` matches nothing on main or at any open head, and no
board package has that name. Old → new: "**LorentzianGeometry** (domains with boundary)" → "A
future Lorentzian geometry roadmap (domains with boundary)", in the README and in the plan's
consumer list.

## REV-DESIGN-RiemannianManifoldsWithConvexBoundary/F06 (P3) — applied

Verified: `TauCetiRoadmap/ComplexKahlerGeometry/README.md` lines 863–868 state the half-space
Seeley extension inside K5a's paragraph on closure diffeomorphisms of bounded smooth domains.
Old → new: the contract reads "K5a (extension of smooth functions across a smooth boundary: the
half-space Seeley extension), a step of K5a's construction of diffeomorphisms of closures of
bounded smooth domains rather than a separately numbered item"; the Scope bullet, the `*Needs:*`
lines of 3.4 and 5.3 and the plan's supplier entry use the same phrase. No gap.

## Checks

Dependency check (after all edits):

```
candidate: RiemannianManifoldsWithConvexBoundary is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 242 roadmaps, 2367 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean
name found nowhere (it does not check names outside TauCetiRoadmap; those were opened at the pins
by hand, as listed under F02). Gate failures listed in the brief: none. Plan after edits: 49
targets (unchanged), 114 tests, 1 gap. Design stage: no `Suggested.lean`, so no elaboration and no
`#check` pass.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 4.3 normalised `ρ̂` | unit ball, `ε = 1/2`, `ε₁ = 1/4`; half-space; `∂M = ∅`; `[0, 1] ⊆ ℝ`; the F01 witness | ball: `ρ̂ = 1 − |x|` on `3/4 < |x| < 5/4`, `= 1` on `|x| ≤ 1/2`, `= −1` on `|x| ≥ 3/2`, on `1/2 < |x| ≤ 3/4` between `1 − |x| ∈ [1/4, 1/2)` and `1`, on `5/4 ≤ |x| < 3/2` between `1 − |x| ∈ (−1/2, −1/4]` and `−1`; half-space: `ρ̂ = x⁰` for `|x⁰| < 1/2`, `±1` beyond `|x⁰| ≥ 1`; `∂M = ∅`: `W = ∅`, `ρ̂ = ±1` on the clopen sets `M`, `N ∖ M`; interval: tube `ε < 1/2`, `ρ̂ = x` near `0`, `1 − x` near `1`; witness: excluded, `ρ̂ = −1` for `|x| ≥ 3/2` | sound | new bullet |
| 4.3 closedness of `N ∖ (M ∪ W₁)` | limit `y` of points off `M ∪ W₁` | `y ∉ M` ⇒ `y ∉ W₁` (closed complement); `y ∈ M` ⇒ `ρ(y) = 0` ⇒ `y ∈ ∂M ⊆ W₁`, but `W₁` open misses the sequence: contradiction | sound | reason recorded |
| 4.6 enlargement | ball; cap `R < π/2`; half-space; `[0, 1]`; F01 witness | ball: `M_ε = B(1 + ε)` for `ε < 1/4`, `II = h/(1 + ε)`; cap: `II = cot(R + ε)h`, tube radius `< min(R, π − R)`; half-space: `II = 0`, hypothesis needed; interval: `M_ε = [−ε, 1 + ε]`, convexity vacuous; witness: `ρ(5/4) ≈ −0.118`, `min ρ = −e^{−2} ≈ −0.135` at `√2`, `{ρ ≥ −ε} ⊇ {|x| ≥ r₂}`, outer `II = −h/r₂` | sound with the normalisation; false without it | restated; Check added |
| 4.6 sandwich step | `y ∈ W ∖ M`, `ρ̂(y) ≥ −ε`, `ε < 1` | `ρ̂ ≤ max(r, −1)`, and `−1 < −ε` forces `r ≥ −ε`; `ε < ε₁` puts `y` in `W₁` where `ρ̂ = r` | sound | route written |
| 3.3 `M̃` Hausdorff | `[0, 1]`; half-space; limit pairs | `[0, 1]`: `(0, 1)` plus two bicollars gives `(−1, 2)`; half-space: `ℝⁿ × (−1, ∞)`; limit `(x, (q, t))` of relation points has `t ≥ 0`, `x = c(q, t)`, `t > 0` since `x ∈ int M` | sound | route written |
| 3.3 non-Hausdorff control | `M = [0, 1]`, `c(0, t) = t/2`, `c(1, t) = 1 − t/2` | `U ∩ int M = (0, 1/2) ∪ (1/2, 1)`, not closed in `(0, 1)`; double has two copies of `1/2`; `t2Space_doubleGlueData_iff` needs the set closed | sound | Check added |
| 3.3 `ρ̃` | `[0, 1]`; compact `∂M`; non-compact `∂M` with a pinched collar | `ρ̃ = φ₀χ(t) + φ₁s > 0` on `int M` since `χ > 0` on `(0, 1)` and `φ₀ + φ₁ = 1`; `< 0` on `c̃(∂M × (−1, 0))`; `= t` near `∂M` as `φ₁ = 0` there; compact `∂M`: `c̃(∂M × [−1/2, 1/2])` compact, so `ρ̃ = t` for `|t| ≤ 1/2`; non-compact: a collar whose image has a frontier point reached at depth `1/2` with the boundary coordinate escaping makes `c̃(∂M × [−1/2, 1/2])` non-closed, so the uniform claim fails | sound after weakening | claim weakened to a neighbourhood |
| 3.3 `DM` | `[0, 1]`; disc; `∂M = ∅`; annulus | circle; `S²`; `M ⊔ M` (empty bicollar); torus; compact as image of `M ⊔ M`; `{ρ_D ≥ 0}` = first copy since `s = ±1` on the two copies of `int M` | sound | restated as open gluing |
| 3.3 `int M` over `𝓘(ℝ, ℝⁿ⁺¹)` | `[0, 1]`; `∂M = ∅` | `(0, 1)` with charts into `ℝ`; `∂M = ∅`: the same charts read in `ℝⁿ⁺¹`, images in `{x⁰ > 0}`, so `M̃ = M` with the model changed | sound | target added |
| 1.3, 6.4 locators | the cited lines | 2766–2773 = Lemma 3.1.10 (normalised); 134–136 = weaker notion; 307–310 = simple-manifold examples; 2677–2678 = Example 3.1.4 | locators only | changed |

## For the maintainer

- The gap to GeometricTopology is gone; the roadmap now depends on GeometricTopology only for the
  smooth collar (Lee, Theorem 9.25). The remaining gap is `dg-outward-unit-normal` to
  DifferentialGeometry 12.5, declared in both files with its slug.
- Names consumed from Tau Ceti that are new in this roadmap: `TopCat.GlueData.chartedSpace`,
  `TopCat.GlueData.IsCompatible` (with `isManifold`, `isLocalDiffeomorph_ι`, `partialDiffeomorphι`,
  `contMDiff_iff`), `TopCat.GlueData.isCompatible_iff`, `TopCat.GlueData.t2Space_iff_isClosed_chartRel`,
  `TopCat.GlueData.secondCountableTopology`, `TauCeti.t2Space_doubleGlueData_iff`; from Mathlib
  `TopCat.GlueData`, `TopCat.GlueData.MkCore`.
- No name another roadmap cites changed; this roadmap is at the design stage and not yet in the
  merge order.
- Ownership against open pull requests was checked through `roadmaps grep` over the index of
  460 open heads; pull requests outside that index were not searched.
- Sources: no new text was needed; `needs-references.toml` was not created.
