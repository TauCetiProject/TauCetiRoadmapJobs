# FIX-DESIGN-LorentzianGeometry~4: repair of the design review

Files edited: `packages/LorentzianGeometry/design/README.md`, `packages/LorentzianGeometry/design/plan.json`. `packages/LorentzianGeometry/sources.toml` is unchanged: no new work is cited and nothing was fetched. There is no `Suggested.lean` at the design stage.

Both findings are correct. Both are applied as asked, and the same defect is repaired wherever else it occurs. Every claim was checked against the pinned Mathlib (`1b1ccf4b`) and Tau Ceti (`2fd255d9`).

## REV-DESIGN-LorentzianGeometry~3/F01 (P3) — applied

**Change.** In the §2.1 Lipschitz bullet, "for `s` relatively open in a convex set" becomes "for `s` relatively open in a convex set `K` with nonempty interior (such as `range I`)", with a one-line proof route. The `plan.json` 2.1 `mono_exponent` entry is changed to match.

**Verification.**

- At the pin, `fderivWithin` returns `0` when `0` is a derivative and otherwise a `Classical.choose` (`Mathlib/Analysis/Calculus/FDeriv/Defs.lean:151–156`).
- Take the segment `(0, 1) × {0}` and `f = x²`. At `(t, 0)`, every `2t dx + c dy` is a derivative within the segment, since the increment is `h²`. So `iteratedFDerivWithin ℝ 1 f s` is an uncontrolled choice.
- With nonempty interior, `uniqueDiffOn_convex` (`TangentCone/Real.lean:80`) and `UniqueDiffOn.inter` (`TangentCone/Basic.lean:136`) give unique differentiability. Locally, `s ∩ B(x, r) = K ∩ B(x, r)` is convex, and the mean-value inequality gives the Lipschitz bound.

**Same pattern elsewhere.**

- *§2.1 Algebra bullet.* At the pin, `iteratedFDerivWithin_add_apply` (`ContDiff/Operations.lean:212`) assumes `UniqueDiffOn`. Sums, compositions and inversion are now stated for `s`, and for the domain `t` of `f`, relatively open in a convex set with nonempty interior. `plan.json` 2.1 `comp` is changed to match.
- *§2.1 definition paragraph.* It now names `ModelWithCorners.nonempty_interior` (`IsManifold/Basic.lean:294`) and `UniqueDiffOn.inter`, and states the general convex case.
- *Supplier contract (Mathlib bullet on `ModelWithCorners`).* The three new names are added with their files and lines.
- *§2.1 `*Needs:*` line and `plan.json` prerequisites.* Both add the three new names, and the `plan.json` hypothesis of 2.1 states the scope.
- *New Check.* §2.1 gets the empty-interior Check: the segment as the non-example, and `(0, 1) × (−1, 1)` as the control, with Lipschitz constant `2`. `plan.json` 2.1 gets the matching test `empty_interior`.
- *Uses of the bullet.* §2.3 (chart transitions), §3.3 (Christoffel symbols on chart targets) and §3.6 (`C^{1,1}` uniqueness) apply it only on chart targets, which are relatively open in `range I`. They need no change.

## REV-DESIGN-LorentzianGeometry~3/F02 (P3) — applied

**Change.**

- §1.1 Check: "the polar form of `TauCeti.realCliffordForm 3 1` … `Q(e₃) = −1`" becomes "the associated bilinear form `QuadraticMap.associated Q` (half the polar form) has Gram matrix `diag(1, 1, 1, −1)`, value `−1` at `(e₃, e₃)`". The Check now also names `QuadraticMap.polar Q` as the wrong model: Gram matrix `diag(2, 2, 2, −2)`, value `−2` at `(e₃, e₃)`.
- §1.9 Minkowski bullet: "the polar form of" becomes "the associated bilinear form (`QuadraticMap.associated`, half the polar form) of", with value `TauCeti.realCliffordForm n 1 v` at `(v, v)`.
- `plan.json`: the 1.1 test `clifford_three_one` and the 1.9 statement are changed to match.

**Verification.** At the pin, `associatedHom` is `⅟2 • polarBilin Q` (`QuadraticForm/Basic.lean:851–860`), `associated` is declared at line 960, and `associated_eq_self_apply` at line 907.

**Same pattern elsewhere.**

- *Mathlib contract.* "`QuadraticMap.associated` … is the polar form" becomes "is the associated symmetric bilinear form `½(Q(x + y) − Q x − Q y)`, half of `QuadraticMap.polar`", citing `QuadraticMap.associated_eq_self_apply` (line 907).
- *Tau Ceti contract.* "`TauCeti.realCliffordForm n 1` is the Minkowski form" becomes "the associated bilinear form of `TauCeti.realCliffordForm n 1` is the Minkowski form".

No other occurrence of "polar" remains in either file, except where the polar form is named as the contrast.

## Checks run

**Dependency gate.** Command as in the brief. Output:

```
candidate: LorentzianGeometry is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2368 edges, 0 problem(s)
```

There is no UPWARD and no CYCLE line.

**`roadmaps resolve` on the edited README.** No cross-roadmap citations or Lean names were found nowhere. The tool notes that it did not check Lean names outside TauCetiRoadmap ("no pinned Lake packages on this host"), so I opened each newly cited library name at the pins:

| Name | Location at the pin |
|---|---|
| `ModelWithCorners.nonempty_interior` | `Geometry/Manifold/IsManifold/Basic.lean:294`, namespace `ModelWithCorners` opened at line 221 |
| `uniqueDiffOn_convex` | `Analysis/Calculus/TangentCone/Real.lean:80`, root namespace |
| `UniqueDiffOn.inter` | `Analysis/Calculus/TangentCone/Basic.lean:136` |
| `QuadraticMap.associated_eq_self_apply` | `LinearAlgebra/QuadraticForm/Basic.lean:907`, namespace `QuadraticMap` opened at line 807 |
| `QuadraticMap.polar` | same file, line 96, namespace opened at line 90 |

**Other checks.**

- `plan.json` parses, and its diff touches only the entries named above.
- Elaboration and the `#check` comparison do not apply: this is a design, with no `Suggested.lean`.

## Adversarial pass (new or changed statements)

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| Contract: `associated Q (x, y) = ½(Q(x + y) − Q x − Q y)` | `Q = realCliffordForm 1 1` (weights `1, −1`) | `(e₀, e₁)`: `½(0 − 1 + 1) = 0`; `(e₁, e₁)`: `½(Q(2e₁) − 2Q(e₁)) = ½(−4 + 2) = −1 = Q(e₁)`; polar at `(e₁, e₁)`: `−2` | holds; `associated` is the half | stated |
| §1.1 Clifford Check | `Q = realCliffordForm 3 1` | off-diagonal entries `0` (e.g. `Q(e₀ + e₃) = 0`, so `½(0 − 1 + 1) = 0`); diagonal `1, 1, 1, −1`; `sigNeg = 1`, `sigPos = 3`; polar diagonal `2, 2, 2, −2`, also `sigNeg = 1` | both are Lorentzian; only `associated` has value `Q(e₃) = −1` | stated |
| §1.9 Minkowski bullet | `n = 0`: weight `−1` on `Fin 1 → ℝ`; `n = 1`; `n = 3` | `n = 0`: `associated = −xy`, Lorentzian (the dimension-1 Check of §1.1), `ker dt = 0`, positive definite vacuously (as in §1.8, `W = 0`); `n = 1`: `Q(e₁) = −1`, `Q(e₀) = 1` (time-last Check unchanged); `n = 3`: as above | holds; time last | none further |
| §2.1 definition: `range I` convex with nonempty interior | half-line model `{x ≥ 0} ⊆ ℝ`; zero-dimensional `E` | interior `(0, ∞)`; `s = [0, 1)` has tangent cone `[0, ∞)` at `0`, spanning `ℝ`, and `K ∩ B(0, r) = [0, r)` is convex; in `E = 0`, `range I = {0} = univ` with interior `univ` | holds | stated |
| §2.1 Lipschitz bullet | segment `(0, 1) × {0}`, `f = x²`; `(0, 1) × (−1, 1)`; `ℝ² ∖ {0}`; corner `√(x + y)` on `[0, 1)²`; `x\|x\|` | at `t = 0.5`, `h = 0.1`: increment `0.36 − 0.25 − 0.1 = 0.01 = h²` for every `c`; control: `‖0.4dx − 1.4dx‖ = 1.0 = 2·0.5`; on the punctured plane, balls avoiding `0` are convex; corner: `f` is not `C¹` within `s` at `0`, so the hypothesis fails, consistent with the corner Check; `x\|x\|` is `C¹`, hence `C^{0,1}` | holds with the hypothesis; the segment is excluded | hypothesis added; Check added |
| §2.1 Algebra bullet (sums) | segment with `f = x²`, `g = −x²` | `fderivWithin (f + g) = 0` by the pinned definition (`0` is a derivative); `fderivWithin f + fderivWithin g = (c₁ + c₂) dy`, with `c₁, c₂` chosen and unconstrained | additivity not derivable without unique differentiability | hypothesis added |
| §2.1 Algebra bullet (composition) | `φ(x) = 2x` from `[0, 1)` to `t = [0, 2)`; `f = √` on `t` | `\|√(2x) − √(2y)\| ≤ √2 · \|x − y\|^{½}` | holds; `t` is relatively open in the convex set `[0, ∞)` with nonempty interior | `t` hypothesis added |
| §2.1 new Check | as in the Lipschitz row | as there | consistent with the Lipschitz and algebra facts | added |

**Recomputed Checks that use a changed object.** §1.9 "time coordinate last": `realCliffordWeight 1 1` gives `e₀ ↦ 1` and `e₁ ↦ −1` (`RealForm/Basic.lean:107`), so `associated Q e₁ e₁ = −1`; unchanged. §2.1 corner Check and `x\|x\|` Check: unchanged, consistent as recorded in the table.

## Ownership, overlaps, sources

- No construction was added, so ownership is unchanged. No supplier was added or moved, and no notion moved down from a later roadmap.
- The overlaps listing for this roadmap lists no open pull request that changes this roadmap and no dropped id. This round cites no new roadmap ids.
- Every library name above was opened at the pins. No source text was needed: both repairs are settled by the pinned library and by computation. No `needs-references.toml` was written.
- No text read this round contained instructions.

## For the maintainer

- No name that other roadmaps cite changed. Both findings were P3 text repairs.
- In §2.1, the scope of the Lipschitz and algebra facts is now explicit: `s`, and for compositions the domain of `f`, relatively open in a convex set with nonempty interior. Every use inside the roadmap is on chart targets, so no consumer changes.
- At the package stage, the `Suggested.lean` statement of `ContDiffLocallyHolderOn` must not narrow the predicate itself to such sets. The hypothesis belongs on the API facts only, as here.
