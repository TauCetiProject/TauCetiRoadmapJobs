# FIX-DESIGN-RiemannianManifoldsWithConvexBoundary~5

Repair of the four findings of the round-4 review of the design (one P2, three P3). Files
changed: `packages/RiemannianManifoldsWithConvexBoundary/design/README.md` and
`packages/RiemannianManifoldsWithConvexBoundary/design/plan.json`. `sources.toml` is unchanged
(no new source is cited). There is no `Suggested.lean` at the design stage.

## F01 (P2) — not actionable in this package: the facts are stated only by an open revision of RiemannianGeometry (its new R7.9), which this roadmap may not depend on; who owns them is a decision across the two pull requests

No edit. The overlap is real, but the requested repair (cite RiemannianGeometry R7.9) is not
allowed, and nothing on main or at the pins can replace that citation.

Evidence.

- R7.9 is not on main. `TauCetiRoadmap/RiemannianGeometry/README.md` at main (8970bf3) has R7.0
  (line 3942) and R7.1–R7.8 (line 3985) and no R7.9. R7.9 exists only at the head of the
  RiemannianGeometry revision "R7.9, separating and two-sided hypersurfaces" (pull request 2223 of
  the roadmap repository, by another author). That pull request revises a roadmap already on main.
  The brief allows an open pull request as a dependency only when it adds a new roadmap folder
  ("a pull request that revises … an existing roadmap is never a dependency: cite that roadmap as
  it is on main"). The exception for ids that a revision drops does not apply: R7.9 is new, not
  dropped. Citing it would make this design depend on an unmerged revision.
- The pins have neither fact. `TauCeti/Geometry/Manifold/RegularValue/Scalar/Sublevel.lean`
  declares the sublevel charted space, `isManifold_scalarRegularSublevel` (line 639),
  `boundary_scalarRegularSublevel` (line 652) and `interior_scalarRegularSublevel` (line 675). It
  has no lemma on the smoothness or differential of the inclusion and no outward criterion, and no
  other Tau Ceti file mentions `scalarRegularSublevel`. So on main and at the pins this roadmap is
  the only owner. The Scope already lists these facts under Layer 3 ("regular domains … as
  Riemannian manifolds with boundary").
- The mathematics agrees, so the two texts do not conflict. At the revision head (README lines
  3843–4000), R7.9 states three things. The inclusion of a regular sublevel `{φ ≤ a}` is smooth with
  invertible differential. A boundary vector `v` is outward iff `dφ(dι v) > 0`. DifferentialGeometry
  12.5's outward normal on `D₋ = {φ ≤ 0}` is the collar normal `ν` with `dφ(ν) = 1`. Take `φ = −ρ`,
  `a = 0`. The criterion becomes `dρ(v) < 0`. Since `grad ρ = |dρ| ν_in` (1.3), that means
  `⟨v, ν_in⟩ < 0`, which is outward by 1.2's sign test. The normal is
  `−grad ρ/|grad ρ| = −ν_in = ν_out`, as in 3.1. Unit sphere: `ρ = 1 − |x|²`, `ν_out = x`, and R7.9's
  `c_ν(x, t) = (1 + t)x` equals 4.3's `E(q, r) = (1 − r)q` at `r = −t`.
- The tube and `ρ̂` of 4.3 overlap only partly with R7.9's normal collar. R7.9 builds its collar for
  a compact, connected, two-sided hypersurface in a connected `M`, with a constant width, and
  extends `h∘t` by `±1` on the two components it separates. 4.3 starts from a regular level of any
  `f`. It allows a noncompact or disconnected `Σ` with a smooth variable radius, and it adds the
  Gauss lemma, `|grad r_Σ| = 1`, the distance identities and the bounds that sandwich `ρ̂` between
  `r_{∂M}` and `±1`, which 4.6 needs. Only the special case of a compact connected separating
  `Σ` is common to both.

What can settle it, outside this package. RiemannianGeometry is earlier in the merge order, so
once the revision with R7.9 is on main, a later round of this roadmap should cite R7.9 for these
facts:

- the smoothness of the sublevel inclusion with invertible differential;
- the outward criterion;
- the identification of DifferentialGeometry 12.5's normal.

That later round should also add one clause to 4.3 saying how its tube differs from R7.9's collar.
If the maintainers would rather have this roadmap own the sublevel-inclusion facts, R7.9 would
have to drop them. RiemannianGeometry cannot cite a later roadmap, so in that case R7.9 states them
for its own use and the duplication stays until one side narrows. Either choice is a maintainer
decision across two pull requests.

## F02 (P3) — applied

Old: cutoff `ψ` equal to 1 on the closed `ε₁`-tube and 0 off `W`. New: radii `ε₁ < ε₂ < ε`, both
closed tubes closed in `N`, `W₂ = E({|r| < ε₂})`, `ψ = 0` on `N ∖ W₂`. Then `supp ψ` lies in the
closed `ε₂`-tube inside `W`, so `ψ r_{∂M}` is smooth. A sphere Check was added (`ε = 1`,
`ψ = |x|²` near 0 fails). Plan 4.3.3 changed to match, with a new test `cutoff_frontier`.

The finding is correct. Unit ball, `ρ = 1 − |x|²`, `ε = 1`, `W = {0 < |x| < 2}`,
`r_{∂M} = 1 − |x|`. A cutoff equal to `|x|²` near `0` meets the old requirement, and then
`ψ r = |x|² − |x|³`, which is not `C³` at `0`. Mathlib's `exists_contMDiff_zero_iff_one_iff_of_isClosed`
(`Mathlib/Geometry/Manifold/PartitionOfUnity.lean:797`) gives a `ψ` whose zero set is exactly the
prescribed closed set, so with `N ∖ W` that set the support of `ψ` reaches the frontier of `W`.

Where the radii come from: the closed-tube theorem
`TauCeti.SmoothEmbedding.exists_isClosedEmbedding_normalExp_norm_le_subset`
(`TauCeti/Geometry/Manifold/TubularNeighborhood/Riemannian/Noncompact.lean:58`), applied inside
`W`, gives `ε₂`. That theorem makes the closed `ε₂`-disc bundle a closed embedding. So every smaller
positive continuous radius also has a closed tube: `ε₁ = ε₂/2`, or the minimum of `ε₂` when `∂M` is
compact.

The listed properties of `ρ̂` are unchanged, rechecked in the pass below. The same pattern was
searched elsewhere in the README:

- 3.3 (`φ₀·(χ∘t)`) and 1.3 use partitions of unity subordinate to the cover, so the closed support
  lies inside the chart domain and the route is sound.
- 3.4 glues metrics, where positivity is pointwise and the extended tensor is smooth on all of `N`.
- 4.4's `η` is a smooth minorant.

None of these has the defect.

## F03 (P3) — applied

Old: the Layer 4 standing sentence said "Hausdorff boundaryless … as in 3.1", and 6.4 said
"boundaryless Hausdorff `(N, g)`". New: the standing sentence adds that `N` is second countable
in 4.3, 4.4 and 4.6, which use the tube theorems and partitions of unity; 4.1, 4.2 and 4.5 are
local and do not assume it. 6.4 assumes a second-countable `N`, in README and plan.

Evidence:

- `[SecondCountableTopology N]` is in the variable block of the tube theorems
  (`TauCeti/Geometry/Manifold/TubularNeighborhood/Riemannian/Noncompact.lean:50`).
- SmoothBundlesConnections B6.0 (`TauCetiRoadmap/SmoothBundlesConnections/README.md`, lines
  1306–1320 at main) states its radii on "finite-dimensional Hausdorff second-countable manifolds
  with boundaryless model".
- Plan targets 4.3.1, 4.3.2, 4.3.3, 4.4 and 4.6 already listed "N second countable".

For 6.4 the hypothesis was chosen rather than the chart-domain route the review offers as an
alternative. 6.4 derives non-trapping from 5.5, and Layer 5's standing hypothesis is a
second-countable `N`. So the route needed the hypothesis in any case, not only for B6.0. This is
no narrower than the sources: Lee's manifolds are second countable by definition, and
Paternain–Salo–Uhlmann's are compact. Every Check of 6.4 (`S^{n+1}`, `S¹`, `ℝⁿ⁺¹`, hyperbolic
space, the flat torus) is second countable.

The same pattern was checked elsewhere:

- 3.4, 3.5, 3.3 and Layer 5 already state second countability.
- 1.3's global existence states it.
- 3.1 and 3.2 use no partition of unity.
- 6.1–6.3 and 6.5 are on `ℝⁿ⁺¹`, the round sphere and hyperbolic space.

## F04 (P3) — applied

Old: "If `M` is compact and `τ(x, v) < ∞`, … `μ(φ_τ(x, v)) ≤ 0`; … `(y, w) = φ_t(x, v)`". New: "If
`M` is compact, `(x, v) ∈ SM` (so `v` is a unit vector, as `μ` and `φ_t` require) and
`τ(x, v) < ∞`, …, with `(y, w) = φ_t(x, v) ∈ SM`". The plan's `exitTime_flow` now uses the same
wording; it already said "unit v".

Same pattern elsewhere: every other use of `μ` and `φ_t` is already on `SM` or `∂SM`:

- the Conventions (lines 152–153) and 5.1 (lines 1034, 1043);
- 5.4 ("for such `z ∈ SM ∖ ∂₀SM`");
- the route of 5.5 (`h ∘ φ_t` on `SM`);
- 5.6 (`α` and `P` on `∂SM`).

## Checks run

Dependency check, exact output:

```text
candidate: RiemannianManifoldsWithConvexBoundary is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
depcheck: 206 roadmaps, 1897 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. No supplier was added; R7.9 in particular is not cited.

`roadmaps resolve` on the README (main 8970bf3, 436 open heads): no cross-roadmap citation and no
Lean name found nowhere.

`Suggested.lean`: none exists at the design stage. The `#check` binder audit, the import and
`set_option` checks and elaboration therefore had nothing to inspect, and no Lean command was run.

Gate failures listed in the brief: none.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 4.3 `ρ̂` route, old cutoff | unit ball, `ε = 1`, `ψ = |x|²` near `0` | `ψ r = |x|² − |x|³`; on a line, `d³/dt³ |t|³ = 6 sign t` off `0`, no third derivative at `0` | route fails to give `C^∞` | replaced (F02) |
| 4.3 `ρ̂` route, new cutoff | unit ball, `ε = 1`, `ε₂ = 3/4`, `ε₁ = 1/2` | closed `ε₂`-tube `{1/4 ≤ |x| ≤ 7/4}` closed and inside `W = {0 < |x| < 2}`; `ψ = 0` on `|x| ≤ 1/4` and `|x| ≥ 7/4`; `ρ̂ = s = 1` near `0` (`0 ∈ M ∖ W₁`) | smooth, properties hold | Check added |
| 4.3 `ρ̂` properties | ball `ε = 1/2`, `ε₂ = 3/8`, `ε₁ = 1/4` | `W₂ = {5/8 < |x| < 11/8}` inside `W = {1/2 < |x| < 3/2}`; `ρ̂ = 1 − |x|` on `3/4 < |x| < 5/4`, `= 1` on `|x| ≤ 5/8 ⊇ {|x| ≤ 1/2}`, `= −1` on `|x| ≥ 11/8 ⊇ {|x| ≥ 3/2}` | plan test `ball` still true | `ε₂` named in the test |
| 4.3 sandwich, `W ∖ W₂` | point of `W ∖ M` with `ψ = 0` | `ρ̂ = s = −1`, between `r ∈ (−ε, 0)` and `−1`; `ρ̂ = −1 < −ε` for `ε < 1`, so not in `{ρ̂ ≥ −ε}` | holds | none |
| 4.3 sandwich, `W₂ ∖ W₁` outside `M` | `r = −0.3`, `ψ = 1/2` | `ρ̂ = −0.15 − 0.5 = −0.65`; with `ε = 0.7`, `ρ̂ ≥ −0.7` and `r = −0.3 ≥ −0.7` | holds | none |
| 4.3 zero set | `y ∈ (W ∩ M) ∖ W₁` | `ρ̂ = ψ r + (1 − ψ) ≥ min(r, 1) > 0`, since `r > 0` off `∂M ⊆ W₁` | `∂M = {ρ̂ = 0}` holds | none |
| 4.3, dimension one | `M = [0, 1] ⊆ ℝ`, `ρ = x(1 − x)`, `ε = 1/2`, `ε₂ = 3/8`, `ε₁ = 1/4` | `W = (−1/2, 1/2) ∪ (1/2, 3/2)`, frontier point `1/2` where `r` has a corner (`x` versus `1 − x`); old route `ψ = (x − 1/2)²` gives a `|x − 1/2|³` term; new `ψ = 0` on `[3/8, 5/8]` | old fails, new holds | none beyond F02 |
| 4.3, empty boundary | `∂M = ∅`, `M` open and closed | `W = W₂ = ∅`, `ψ ≡ 0`, `ρ̂ = s = ±1`, smooth | holds | none |
| Layer 4 standing / 4.3, 4.4, 4.6 | `N` an uncountable disjoint union of planes, `M` a disc in one | the pinned tube theorem (`Noncompact.lean:50`) does not apply to `N`; it applies to the component | hypothesis needed for the cited input | stated (F03) |
| 4.1, 4.2, 4.5 without second countability | the same `N` | the geodesic iff, `(ρ∘γ)'' = Hess ρ(γ', γ')` and `x̃ = −ρ − ε|z|²` are local; HopfRinow assumes only `[T2Space M]` (`Completed/HopfRinow/README.md` line 84) | hold | not assumed |
| 6.4 hypotheses | `S¹`, flat torus `ℝ²/ℤ²`, `S^{n+1}` | `d(p, ·)² = θ²` on `B(p, π)`; torus `r_p = 1/2`, `II = h/R`; caps `R < π/2`; all second countable | Checks unchanged; route through 5.5 needs Layer 5's hypothesis | stated (F03) |
| 5.2 exit-point bullet | unit ball, `x = 0`, `v = e₁`; `v = e₁/4` | `τ = 1`, exit `e₁`, `μ = ⟨e₁, −e₁⟩ = −1 ≤ 0`; `τ(e₁/2, e₁) = 1/2 = 1 − 1/2`; `τ(e₁/2, −e₁) = 3/2 = τ(0, −e₁) + 1/2`; for `e₁/4`, `τ = 4` but `φ_4(0, e₁/4) ∉ SN` | holds on `SM`; undefined off it | restricted (F04) |
| 5.2, `M = [a, b]` | `x ∈ (a, b)`, `v = +1` | `τ = b − x`, exit `b`, `μ(b, +1) = ⟨+1, −1⟩ = −1`; `τ(x + t, −1) = (x − a) + t` | holds | none |
| R7.9 against 3.1 (F01, no edit) | unit sphere, `φ = −ρ = |x|² − 1` | outward iff `dφ(v) > 0` iff `⟨v, x⟩ > 0`; 1.2's sign test gives `⟨v, ν_in⟩ = −⟨v, x⟩ < 0`, the same; normal `x = ν_out` both ways | consistent | none |

## Ownership against open work

Only the objects touched this round were searched again. The overlap with the RiemannianGeometry
revision is described under F01. The worker's overlap report lists no other pull request that
changes this roadmap, no dropped id and no id that only a revision defines; this round adds no
citation, so that is unchanged. No new construction was introduced. The radius `ε₂` and the cutoff
are a step inside 4.3's own route.

## Sources

No new source was cited and none was fetched. `needs-references.toml` was not created.

## For the maintainer

- F01 is an ownership decision between this design and the open RiemannianGeometry revision that
  adds R7.9 (pull request 2223 of the roadmap repository). Two outcomes are possible:
  - If that revision merges first, a later round here should cite R7.9 for three facts and add to
    4.3 the one-clause difference from R7.9's collar:
    - the smoothness of the sublevel inclusion with invertible differential;
    - the outward criterion `dφ(dι v) > 0`;
    - the identification of DifferentialGeometry 12.5's normal.
  - If the maintainers want this roadmap to own those facts, the change belongs in the revision.
  A re-raise of F01 is for a human.
- No name, section or id that other roadmaps could cite was renamed or renumbered. 4.3's
  normalised defining function now also names a radius `ε₂` and the set `W₂`. 4.6 still uses only
  `ε₁ < ε`, which remains true.
