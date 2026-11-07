# FIX-DESIGN-LorentzianGeometry~5: repair of the design review

Files edited: `packages/LorentzianGeometry/design/README.md` and `packages/LorentzianGeometry/design/plan.json`. `packages/LorentzianGeometry/sources.toml` is unchanged: no new work is cited, nothing was fetched, and no `needs-references.toml` was written. At the design stage there is no `Suggested.lean`, so no `#check` comparison applies.

All five findings are correct. F01–F04 are applied as asked. F05 is applied differently: the missing condition is added to the definition itself, not as a note. Every library claim was checked at the pins: Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`.

## REV-DESIGN-LorentzianGeometry~4/F01 (P2) — applied

**Change (§2.6).** Old: "restriction to a subinterval and concatenation of curves with matching endpoints preserve them". New: restriction to `[c, d]` with `c < d` preserves them. A new bullet says the concatenation at `b` is causal (timelike, null) if and only if the two velocities at `b` lie in the closure of one time cone. Future-directed concatenation (automatic) goes in §4.3. The refuting curve is now named as a concatenation in the §2.6 Check.

**Verification.** The witness is the §2.6 Check itself: `(1, 0)` then `(−1, 0)`, with `η = 1 > 0`, so the two velocities are in opposite cones.

The "if and only if" holds both ways. Suppose the concatenation is causal:
- if `b` is a break point of a witnessing partition, the break-point requirement is the junction condition;
- if not, the curve is `C¹` across `b`, so both one-sided velocities equal one causal vector, which lies in the closure of one cone (§1.5).

Conversely, adding `b` to the partition gives a witness, by partition independence.

**Same pattern elsewhere.**
- §4.3: added that two future-directed causal curves concatenate to a future-directed one. At the junction both velocities are future-directed, hence in the closure of the future cone. New §4.3 Check: `(1, 1)` then `(1, −1)` is a positive case (`η(e₀, ·) = −1` on both pieces); `(1, 0)` then `(−1, 0)` is a negative control (`η(e₀, (−1, 0)) = 1`, a past-directed piece).
- `plan.json`:
  - 2.6: `comp_reparam` now covers reparametrisation and restriction only, and a new api entry `IsCausalCurve.concat_iff` holds the concatenation statement; test `break_condition` updated.
  - 4.3: statement updated, and new test `concat_future_directed`.
- No other "concatenat…" anywhere in either file.

## REV-DESIGN-LorentzianGeometry~4/F02 (P3) — applied

**Change (§2.3, chart independence).** Old: "on `e.target`, a relatively open subset of `range I`". New: "on the target of the extended chart, `(e.extend I).target = I.symm ⁻¹' e.target ∩ range I` (`OpenPartialHomeomorph.extend_target`)". It now also names `De⁻¹_z` as the derivative within `range I` of `(e.extend I).symm` at `z`, and notes that `e.target ⊆ H` is outside the reach of §2.1.

**Verification.** At the pin, `OpenPartialHomeomorph.extend` is `f.toPartialEquiv ≫ I.toPartialEquiv` (`Mathlib/Geometry/Manifold/IsManifold/ExtChartAt.lean:75`). `extend_target` (line 91) is the displayed equality. `extChartAt` is at line 437, and its target equals `I.symm ⁻¹' (chartAt H x).target ∩ range I` (line 460).

**Same pattern elsewhere.**
- §3.3: three occurrences of "the chart target" become `(extChartAt I x₀).target ⊆ E`. In the transformation law, "the extended chart target of the chart of `Γ̃`". This matches Tau Ceti `IsLeviCivitaConnection.christoffelSymbol_eq_fderivWithin`, which takes `fderivWithin … (extChartAt I x₀).target` (`…/Nondegenerate/Christoffel.lean:195–206`).
- §3.6 proof sketch: same change.
- Mathlib contract: added `OpenPartialHomeomorph.extend`, `extend_target` and `extChartAt` with file and lines.
- §2.3 `*Needs:*` line: same additions.
- `plan.json`: 2.3, 2.3a (statement and prerequisites), 3.3 (statement), 3.6 (proof sketch).

**Recomputed.** §2.3 Check 3 uses the self model on `ℝ²`, where `I = id` and `range I = ℝ²`, so the two targets coincide. The coefficient `(1/9)y^{−4/3}` is still `1111.1` at `y = 0.001`.

## REV-DESIGN-LorentzianGeometry~4/F03 (P3) — applied

**Change (§2.3).**
- New definition: a function, a vector field, a one-form or a field of endomorphisms is of class `ℛ` by the same chart test:
  - `C^k`: `ContMDiff` of order `k` (for sections, equivalent to the coordinate form by `Bundle.contMDiffAt_section`);
  - `C^{k,α}`: `ContDiffLocallyHolderOn k α` of `f ∘ (extChartAt I x₀).symm`, or of the trivialisation coordinates of the section, on `(extChartAt I x₀).target`;
  - on an open `U`: the same test on the submanifold `U`.
- The old claim that `IsBilinFormOfClass` gives "the coefficient fields of §2.5" is deleted.
- Algebra bullet extended: sums; products of a class-`ℛ` function with a class-`ℛ` field; quotients by a nowhere-vanishing class-`ℛ` function; `F ∘ f` for `F` `C^∞` near `f(M)`; tensor products of one-forms; contractions `b(·, X)`; evaluations `θ(X)`.

**Verification.** `IsBilinFormOfClass` takes only `(x : M) → T_xM →L T_xM →L ℝ`, and §2.5 uses the class of `φ`, `c`, `v^i`, `Ω`, `γ_{AB}`, `θ^α` and `X`, so the finding is right.

The new rules cover every §2.5 construction:
- `e^{2φ} g`: postcomposition by `exp(2·)`;
- coframes: tensor products of one-forms;
- acoustical metric: products with the smooth one-forms `dt`, `dx^i`;
- double null metric: products of functions with smooth bilinear fields;
- `h − 2h(·, X)h(·, X)/h(X, X)`: contraction, evaluation, tensor product and quotient.

**Same pattern elsewhere.**
- §2.1 Algebra: added postcomposition `F ∘ f` with `F` `C^∞` on an open set containing `f(s)`. This covers inversion, `1/t` and `exp`; Faà di Bruno is given as the route. Without it, the conformal factor `e^{2φ}` for `φ ∈ C^{k,α}` had no supporting rule.
- §2.5 double null metric: "for `Ω > 0` and a family `γ` …, of class `ℛ`" becomes "for a function `Ω > 0` and a family `γ` …, both of class `ℛ` (for `γ`, its coefficient functions)". The old wording left the class of `Ω` open, and with only continuous `Ω` the metric is only `C^0`.
- New contract entry: `Bundle.contMDiffAt_section` (`Mathlib/Geometry/Manifold/VectorBundle/Basic.lean:204`, inside `namespace Bundle`).
- Two new §2.3 Checks:
  - `|x|^{3/2}` on `ℝ × ℝ²` is `C^{1,½}` and not `C²`, and so is the acoustical metric of the Layer 2 Examples;
  - `x∂_x` is tested through its coordinates, not through its length.
- `plan.json`: 2.1 `comp`; 2.3 statement, prerequisites, `add_mul_inv`, and tests `function_class_product_rule`, `vector_field_by_coordinates`; 2.5 statement and hypotheses.
- Uses already covered by the new definition: §3.3 ("`Y` of class `C^{j+1}`", "`∇Y` … of class `C^{min(j, k−1)}`"), §5.2 (`grad f` of class `C^{min(r−1, k)}`), §5.4 (`L` of class `C¹`).
- **Ownership.** `roadmaps grep` finds PseudodifferentialOperators §5.4 on main ("Hölder, Zygmund and little Hölder spaces", the normed `C^(k,α)` spaces of bundle sections over a compact base). No open pull request changes that roadmap. The Scope now defers those spaces to it and says how §2.3 differs: a local predicate, on manifolds with corners, compact or not, with no norm.

## REV-DESIGN-LorentzianGeometry~4/F04 (P3) — applied

**Change.** In §2.6, "*Needs:* §1.3, §2.2" becomes "*Needs:* §1.3, §1.4, §1.5, §2.2". `plan.json` 2.6 gets `target:1.4` (it already had `target:1.5`).

**Same pattern elsewhere.** A scan of every use of "time cone" against its `*Needs:*` line found two more direct uses missing:
- §1.6 (closure of a time cone) now needs §1.4, §1.5;
- §4.4 (the two time cones at a point) now needs §1.5.

The matching `plan.json` prerequisites are 1.6 `target:1.4` and 4.4 `target:1.5`. §4.1, §4.2 and §4.3 already list §1.5.

## REV-DESIGN-LorentzianGeometry~4/F05 (P3) — applied differently

**Change (§3.1).** `IsLeviCivitaFor cov b` now has a first clause: for every `x`, the pairings `y ↦ b_y(Y y, Z y)` of fields differentiable at `x` are differentiable at `x`. This is the Tau Ceti `hdiff` hypothesis. After it come `torsion = 0` and compatibility.

The Koszul bullet changes in both directions:
- the forward direction now needs only symmetry;
- the converse keeps symmetry, nondegeneracy and differentiable pairings.

There is also a new Check, and `plan.json` 3.1 is updated (statement, prerequisites, two api entries, test `nondifferentiable_pairing`).

**Why differently.** The suggested note leaves the predicate with a junk value. On a field with a non-differentiable pairing, `mfderiv` is `0`, so the compatibility clause says `0 = …`. Adding the clause makes the definition decide its object instead: no connection is Levi-Civita for `b = (1 + |t|)η`. Without the clause, the compatibility law for `Y = Z = e₀` and the trivial connection reads `0 = 0` at `t = 0`, although the one-sided derivatives are `∓1`. That case is now a Check.

**No consumer loses anything.** Every consumer (§3.2–§3.6, §5.4, §5.5) assumes `b` differentiable, or of class `C¹`, `C²` or `C^{1,1}`. For such `b` the clause follows from `MDifferentiableAt.clm_bundle_apply₂` (`Mathlib/Geometry/Manifold/VectorBundle/Hom.lean:476`). For smooth metrics it is `ContMDiffNondegenerateMetric.mdifferentiableAt_apply` (`TauCeti/…/NondegenerateMetric/Basic.lean:97`, whose proof is that lemma). So the smooth comparison with Tau Ceti `IsLeviCivitaConnection` (`…/Nondegenerate/Basic.lean:239`) still holds. Both names are added to the contracts and to the §3.1 `*Needs:*` line. §3.2 now says that its differentiability hypothesis gives the clause.

**Existing Checks still pass.** All four §3.1 Checks use fields whose pairings are differentiable: `η`, `diag(−1, e^{2t})` and `0`.

## Adversarial pass (new and changed statements)

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §2.6 restriction to `[c, d]` | `c` inside a piece; `c` a break point; `c = d` | velocity within `[c, τ_{i+1}]` at `c` equals the velocity, since `[τ_i, τ_{i+1}]` is a neighbourhood of `c`; break point: break condition kept; `c = d` excluded (`a < b` in the definition) | holds | scoped `c < d` |
| §2.6 concatenation iff | `(1,1)·(1,−1)`; `(1,0)·(−1,0)`; `(1,1)·(−1,−1)`; `(1,½)·(1,½)` | `η(e₀,·) = −1, −1` (same closed cone, null curve); `η((1,0),(−1,0)) = 1` (opposite, not causal); `η(e₀,·) = −1, +1` (closures meet only in `0`, not causal); equal velocities, `C¹` at `b`, timelike | both directions hold | F01 |
| §4.3 future-directed concatenation | `[∂_t]`; `(1,1)·(1,−1)`; `(1,0)·(−1,0)` | `−1, −1`: both future, null concatenation; `−1, +1`: hypothesis fails, not causal | holds; hypothesis needed | new Check |
| §2.3a extended target | self model `ℝ²`; quadrant model | `I = id`, so `(e.extend I).target = e.target`; quadrant: `I.symm ⁻¹' e.target ∩ Q`, open in `Q ⊆ ℝ²`, while `e.target` lies in the subtype `H` | wording was wrong, now right | F02 |
| §2.3 class of a function | `|x|^{3/2}` on `ℝ × ℝ²`, `a = 0.25` | `Df(±a, 0) = ±0.75`, difference `1.5 = 3√a`, `|x − x'|^{½} = 0.7071`, ratio `2.1213 = 3/√2`; radial `f'' = (3/4)r^{−½}` unbounded | `C^{1,½}`, not `C²` | new Check |
| §2.3 acoustical example (`c = 2`, `v = f e₁`) | coefficients | `g_tt = −4 + |x|³` (`C^{2,1}`), `g_{t1} = −f` (`C^{1,½}`, not `C²`), `g_ij = δ_ij` | `C^{1,½}`, not `C²`; matches Layer 2 Example | none |
| §2.3 vector field by coordinates | `x∂_x` on `ℝ` | coordinate `x` is `C^∞`; length `|x|` has one-sided derivatives `±1` at `0` | the "length" model is refuted | new Check |
| §2.3 quotient rule | `h = x` on `ℝ`; `h = 1 + |x|^{3/2}` | `1/x` undefined at `0`; `1/h ∈ C^{1,½}` since `h ≥ 1` | nowhere-vanishing hypothesis needed | none |
| §2.1 / §2.3 postcomposition | `F = √` with `f = 1 + |x|^{3/2} ≥ 1`; `F = √` with `f = x²` | first: `F` is `C^∞` on `(0, ∞) ⊇ [1, ∞)`, so `√f ∈ C^{1,½}`; second: `f(ℝ) ∋ 0` where `√` is not `C^∞`, and `√(x²) = |x|` is not `C¹` | hypothesis "C^∞ on an open set containing `f(s)`" needed | added |
| §2.1 postcomposition, `k = 0` | `f ∈ C^{0,α}`, `F` locally `L`-Lipschitz | `|F(f(x)) − F(f(y))| ≤ L C |x − y|^α` | holds | added |
| §2.5 double null, class of `Ω` | `Ω = e^{|u|^{½}}` (continuous only) | `g(∂_u, ∂_v) = −2Ω²` is only `C^{0,½}` | class of `Ω` needed | hypothesis made explicit |
| §2.5 Riemannian construction | `h = dt² + dx²`, `X = 2∂_t`; `X = ∂_t + ∂_x` | `h(X, X) = 4` (evaluation rule), `−dt² + dx²`; `h(X, X) = 2`, `g(X, X) = −2` | unchanged | none |
| §3.1 differentiable pairings | `b = (1 + |t|)η`, `Y = Z = e₀`, trivial connection at `t = 0` | pairing `−(1 + |t|)`, one-sided `∂_t` derivatives `−1` (right), `+1` (left); junk `mfderiv = 0`; right side `η(0, e₀) + η(e₀, 0) = 0` | old predicate reads `0 = 0`; new predicate is false | F05, new Check |
| §3.1 existing Checks | `η`; `diag(−1, e^{2t})`; `b = 0` | pairings of differentiable fields differentiable in all three (constant or smooth coefficients) | Checks 1–4 unchanged | none |
| §3.1 smooth comparison | smooth `g` | first clause is `ContMDiffNondegenerateMetric.mdifferentiableAt_apply` (proof: `clm_bundle_apply₂`) | equivalence with `IsLeviCivitaConnection` kept | none |
| §3.3 / §3.6 target | Tau Ceti `christoffelSymbol_eq_fderivWithin` | its `fderivWithin` is taken on `(extChartAt I x₀).target` | wording now matches the pin | F02 pattern |
| `*Needs:*` lines | §2.6, §1.6, §4.4 | each uses `timeCone` or its closure, and before the edit none had a path to §1.4/§1.5 through what it listed (§2.6), or not directly (§1.6, §4.4) | repaired | F04 |

## Checks run

**Dependency gate.** Command as in the brief. Output:

```
candidate: LorentzianGeometry is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2372 edges, 0 problem(s)
```

No UPWARD or CYCLE line.

**Citation resolver** (`roadmaps resolve` on the edited README): no cross-roadmap citation and no Lean name found nowhere. The tool did not check Lean names outside TauCetiRoadmap on this host ("no pinned Lake packages"). Every library name added this round was opened by hand at the pins:

| Name | Location at the pin |
|---|---|
| `OpenPartialHomeomorph.extend` | `ExtChartAt.lean:75` |
| `OpenPartialHomeomorph.extend_target` | `ExtChartAt.lean:91` |
| `extChartAt` | `ExtChartAt.lean:437` |
| `Bundle.contMDiffAt_section` | `VectorBundle/Basic.lean:204` |
| `MDifferentiableAt.clm_bundle_apply₂` | `VectorBundle/Hom.lean:476`, root namespace |
| `TauCeti.Manifold.ContMDiffNondegenerateMetric.mdifferentiableAt_apply` | `NondegenerateMetric/Basic.lean:97` |

**Overlaps.** `roadmaps overlaps LorentzianGeometry`: no open pull request changes this roadmap, and no id is dropped. `roadmaps overlaps PseudodifferentialOperators`, for the new Scope citation of its §5.4: no open pull request changes it.

**Ownership.** The new objects are the class `ℛ` of functions and sections, and postcomposition in §2.1. They were checked against main and the 466 open pull requests (`roadmaps grep` for Hölder classes of sections on manifolds). The only related owner is PseudodifferentialOperators §5.4 (compact-base normed spaces), now cited in the Scope as a different object.

**plan.json.** Valid JSON, 34 targets, 98 tests (94 before), 0 gaps.

**Elaboration and the `#check` comparison** do not apply: this is the design stage and there is no `Suggested.lean`.

## For the maintainer

- No Lean name of this roadmap changed. `CovariantDerivative.IsLeviCivitaFor` gains a first clause (differentiable pairings). Every theorem using it here already assumed what makes that clause hold. No other roadmap cites this one yet; the planned consumer CompressibleEulerEquations is not on main or in an open pull request.
- The Scope now names PseudodifferentialOperators §5.4. This is a deferral, not a supply: there is no new `*Needs:*` line and no new supplier.
- No text read this round contained instructions.
