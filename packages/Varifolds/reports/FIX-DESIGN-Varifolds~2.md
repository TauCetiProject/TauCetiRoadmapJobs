# FIX-DESIGN-Varifolds~2: repair round on the design review

One review (`REV-DESIGN-Varifolds`, five findings, all P3). Every finding was checked against the
pinned Mathlib (`1b1ccf4b`) and Tau Ceti (`2fd255d9`) and the cited sources; all five are right and
all five are repaired. Files edited: `packages/Varifolds/design/README.md` and
`packages/Varifolds/design/plan.json`. `packages/Varifolds/sources.toml` is unchanged (no new source).

## F01 (P3) — applied

Checked: μ = H¹⌞L, k = 1, x ∈ L gives μ(x + λB_1(0)) = 2λ. So λ^{−1}·2λ = 2 = ω_1 (multiplicity 1),
λ^{−2}·2λ = 2/λ → ∞ (diverges), λ⁰·2λ → 0. The claim was false; the reviewer's exponent is right.
README 2.1 Check 1: "λ^{−k−1} … would give multiplicity 0" → "λ^{−k+1} gives λ⁰·2λ → 0, multiplicity 0;
λ^{−k−1} gives 2/λ → ∞, blow-ups that diverge". plan.json 2.1 test "line" changed to match.
Pattern: the other normalisation Checks (1.1 Frobenius √2, 3.2 "without λ^{−k} keeps mass 1",
4.3, 4.4 sign) were recomputed and are correct.

## F02 (P3) — applied

Checked at the pin: `TauCeti.Manifold.divergence` (`TauCeti/Geometry/Manifold/Riemannian/Laplacian.lean`
line 55) is `LinearMap.trace` of `CovariantDerivative.leviCivitaConnection I M X x`, under
`[IsManifold I 2 M]` and a C¹ metric. `TauCeti.Manifold.integral_divergence_eq_zero`
(`.../Riemannian/DivergenceTheorem.lean` line 225) requires `[I.Boundaryless]`, `[IsManifold I ∞ M]`,
`[T2Space M]`, `[SigmaCompactSpace M]`, a C¹ metric, a C¹ field and `HasCompactSupport`. The
Conventions (smooth, Hausdorff, second countable, boundaryless M with smooth g) satisfy all of them.
Changes: both names are added to "From Tau Ceti" with these hypotheses. The DifferentialGeometry
contract subsection is deleted. In Scope, the DifferentialGeometry clause now says these objects are
already in Tau Ceti. In 4.1, the degenerate dimension, Check 3 and *Needs:* now cite the Tau Ceti
names, as do 5.1 (route and *Needs:*) and the Layer 4 and 5 dependencies. In plan.json, the
4.1 and 5.1 prerequisites become `tauceti:` entries and DifferentialGeometry is dropped from the
suppliers. In the 5.1 route the divergence theorem is now applied to X^⊤ on Σ. That needs X^⊤ to be
C¹ with compact support in Σ, which holds because Σ is closed in W, and Hᵏ⌞Σ = riemannianVolume (2.3).
No mention of DifferentialGeometry remains.

Same pattern found elsewhere, and repaired: Tau Ceti has `TauCeti.CountablyRectifiable`
(`TauCeti/Geometry/MeasureTheory/Rectifiable/Basic.lean` line 44). It is defined on any extended
metric space, so on (M, d_g) too, with the closure lemmas `mono`, `congr`, `iUnion`, `union` and
`image` (lines 74–135). The README credited "Euclidean countable k-rectifiability … and the
normalised Hausdorff measure" and "the closure API of countably k-rectifiable sets" to
GeometricMeasureTheory G2.

- The Scope bullet now leaves approximate tangent planes, tangential differentiation and the area
  formula with GeometricMeasureTheory G2. Rectifiability is credited to Tau Ceti and the normalised
  Hausdorff measure to Mathlib, which agrees with the Conventions.
- The rectifiability definition and its closure lemmas are added to "From Tau Ceti".
- The GeometricMeasureTheory G2 contract no longer lists the closure API. The GeometricCurrents G2
  contract now names `TauCeti.CountablyRectifiable` for d_g as the notion whose chart comparison G2
  supplies.
- `TauCeti.CountablyRectifiable` is added to the *Needs:* of 2.1 and 2.2, to the Layer 2 dependencies
  and to the plan.json 2.1 and 2.2 prerequisites. The plan.json GeometricMeasureTheory supplier
  description and the Summary sentence are updated to match.

The definition agrees with Simon's §11 notion. For k = 0 it gives exactly the countable sets, as 2.2
says: the domain is a point and μHE[0] is counting measure. Nothing else was found at the pins:

- Approximate tangent planes and a general area formula were searched for and are not at the pins,
  so GeometricMeasureTheory G2 remains the supplier for them.
- Tau Ceti's `TauCeti.secondFundamentalForm` (`TauCeti/Analysis/InnerProductSpace/SecondFundamentalForm.lean`)
  covers only maps into a flat inner product space, so RiemannianGeometry R5a stays.
- No distance-Hessian comparison was found, so R4 item 1 stays.
- HopfRinow is a completed roadmap on main and stays cited by its layers, as the brief allows.

## F03 (P3) — applied

Checked: `TauCeti.isCompleteVectorField_of_isCompact_of_eq_zero_off` is declared in
`TauCeti/Geometry/Manifold/Flow/Complete.lean` line 144. Its context is `[T2Space M]`,
`[BoundarylessManifold I M]` and `[IsManifold I 1 M]` (line 107), plus `[CompleteSpace E]`. Old →
new: `.../IntegralCurve/CompactSupport.lean` → `.../Flow/Complete.lean`, now with the hypotheses
"Hausdorff boundaryless C¹ manifold modelled on a complete space". Pattern: I checked mechanically
that all 22 cited Mathlib and Tau Ceti files exist at the pins. I also checked that every other Tau
Ceti declaration sits in its cited file: `globalFlow` 60, `contMDiff_globalFlow_uncurry` 147,
`globalFlowDiffeomorph` 190, `RealRMK.posPart` 160, `negPart` 205, the signed Riesz identity 262,
the Prokhorov closure 52, the flat `MeasureTheory.integral_divergence_eq_zero` 30 and
`riemannianVolume` 82. This was the only wrong file.

## F04 (P3) — applied

Checked the witness. ‖V‖ = |y_1|H¹⌞L + |y|⁻¹ dy on ℝ² with k = 1 gives ‖V‖(B_r(0)) = r² + 2πr, so
Θ(0) = π. On L ∖ {0} the density is |y_1|, and off L it is 0, so D = L. Then
(‖V‖⌞D)(B̄_{3r}(0)) = 9r² > 4r² = (3^k + 1)(‖V‖⌞D)(B̄_r(0)), which fails Mathlib's hypothesis
(`Vitali.vitaliFamily`, `Mathlib/MeasureTheory/Covering/Vitali.lean` line 460). With the weight
e^{−1/|y_1|} the ratio is at least e^{1/(2r)}: no C serves at all.

The 3.3 route now forms the Vitali family on a Borel D' ⊆ D with ‖V‖(D ∖ D') = 0, made of the
geodesic density points of D, with the distance min(d_g, 1) (d_g is only an extended metric) and the
measure ‖V‖⌞D'. ‖V‖-almost every point of D is such a density point:
`Besicovitch.ae_tendsto_measure_inter_div_of_measurableSet` (`Besicovitch.lean` line 1088), applied
in charts, gives density points for chart balls. Chart and geodesic balls nest up to c ≥ 1, and the
density in (0, ∞) gives ‖V‖(B̄_{c²r}) ≤ (c^{2k} + 1)‖V‖(B̄_r). On D' the doubling ratio tends to 3^k,
and the averages over D' differ from those over W by o(1). The witness is now in the route text, and
the new declaration is in the Mathlib contract, the 3.3 *Needs:* and the plan.json prerequisites.
The statement of 3.3 is unchanged. Pattern: 3.3 is the only place that uses `Vitali.vitaliFamily`.
The 7.3 route's reference to "the Vitali family of 3.3" stays correct, because D is ‖V‖-full there.
6.3, 7.1 and 7.6 already use Besicovitch in charts with the same nesting.

## F05 (P3) — applied

The *Needs:* line is added after the Checks of 9.4: Layer 1.4, Layer 2.2–2.3, Layer 3.1, Layer 4.2,
Layer 6.3, Layer 7.2, Layer 8.2, Layer 9.1. This is the reviewer's list plus 2.2 (the second
statement says "integral varifold") and 3.1 (it uses the push-forward R_#[C_{p,q}]). The plan.json
9.4 prerequisites get the same two entries. A mechanical scan confirms 9.4 was the only `### n.m`
section without *Needs:*. The opening of 9.4 now says the two statements are "neither targets nor
headline theorems of this roadmap". The other half of the repair applies at the package stage:
`Suggested.lean`'s docstring should say they are tests of the carrier, and they should not be stated
there with `sorry`. No `Suggested.lean` exists at the design stage, so there is nothing to edit now;
the README wording is what the package stage reads.

## Adversarial pass on changed and added statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| 2.1 Check: λ^{−k±1} normalisations | H¹⌞L and 2H¹⌞L, k = 1, x ∈ L | μ(x+λB_1) = 2λ, 4λ; λ^{−1}: 2, 4 (mult 1, 2); λ⁰: 2λ, 4λ → 0; λ^{−2}: 2/λ, 4/λ → ∞ | new text true | F01 |
| 3.3 doubling on D' | v(L,1), k = 1, x ∈ L; v(P,1), k = 2 | D = D' = L; ratio 6r/2r = 3 ≤ 4; plane 9πr²/πr² = 9 ≤ 10 | ok | F04 |
| 3.3 density points need D' | \|y_1\|H¹⌞L + \|y\|⁻¹dy | ‖V‖(B_r(0)) = r²+2πr, Θ(0) = π, (‖V‖⌞D)(B̄_{3r}) = 9r² vs (3+1)r²; 0 ∉ D' since ‖V‖(B̄_r∖D)/‖V‖(B̄_r) = 2π/(r+2π) → 1; ‖V‖({0}) = 0 | fails on D, holds on D' | F04 |
| 3.3 no uniform C on D | weight e^{−1/\|y_1\|} | ratio ≥ ∫_{2r}^{3r}e^{−1/t}dt / (r e^{−1/r}) ≥ e^{1/(2r)}; at r = 0.1 about 148 | no C works | F04 |
| 3.3 geodesic density from chart density | x ∈ D, nesting factor c | ‖V‖(B̄_r∖D) ≤ o(‖V‖(chart ball cr)) ≤ o(‖V‖(B̄_{c²r})) ≤ o((c^{2k}+1)‖V‖(B̄_r)) | ok | F04 |
| 3.3 averages on D' vs W | bounded F = ∫f dν^y | \|avg_{D'} − avg_W\| ≤ 2 sup\|F\| ε_r/(1−ε_r), ε_r → 0 | ok | F04 |
| 4.1 k = N divergence | ℝ², X = (y_1, 0); k = 0 | G(·,N) = {1}, tr(DX) = 1 = div X; k = 0: tr(0∘∇X) = 0 | ok | F02 |
| 4.1 Check 3 via Tau Ceti | M = ℝ, W = (0,1), X = ψ; M = S¹, X = ψ∂_θ | ∫ψ' = 0; ∫ψ' dθ = 0; hypotheses: smooth, T2, σ-compact (second countable + locally compact), boundaryless, C¹ metric | ok | F02 |
| 5.1 route on Σ | S^k ⊆ ℝ^{k+1}, X = ψx; half hyperplane, X = ψe_1 | X^⊤ = 0 on S^k, δ[S^k](X) = −∫⟨x, −kx⟩ = kHᵏ(S^k); half plane: X^⊤ = ψe_1 has non-compact support in Σ, ∫_Σ ∂_1ψ = −∫_{x_1=0}ψ ≠ 0 | closedness used exactly where stated | F02 |
| Flow contract hypotheses | Complete.lean context | T2, boundaryless, `IsManifold I 1`, `CompleteSpace E` (finite-dim E) | ok | F03 |
| `TauCeti.CountablyRectifiable` = README notion | k = 0; line in ℝ²; ℝ² with k = 1 | k = 0: countable sets (point domain, μHE[0] counting); line: one isometric patch; ℝ²: H¹ not σ-finite, so not covered up to an H¹-null set | ok | pattern of F02 |
| 9.4 *Needs:* completeness | notions in both statements | [Σ] for a metric 2.3, integral 2.2, stationary 4.2, Θ 6.3, convergence 1.4, VarTan 7.2/8.2, R_# 3.1, sing^∞ 9.1 | complete | F05 |

## Checks

Dependency gate (after all edits):

    candidate: Varifolds is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
    depcheck: 240 roadmaps, 2364 edges, 0 problem(s)

No UPWARD or CYCLE line.

`roadmaps resolve packages/Varifolds/design/README.md`: no cross-roadmap citation and no Lean name
found nowhere. The tool did not check names outside TauCetiRoadmap. I checked the new ones by hand at
the pins: `TauCeti.Manifold.divergence`, `TauCeti.Manifold.integral_divergence_eq_zero`,
`Besicovitch.ae_tendsto_measure_inter_div_of_measurableSet`, and `TauCeti.CountablyRectifiable` with
`.mono`, `.congr`, `.iUnion` and `.image`, all in namespace `TauCeti.CountablyRectifiable`
(lines 55–184).

`plan.json` parses as JSON. No `Suggested.lean` exists at the design stage, so no elaboration and no
`#check` comparison was run. No gate failures were listed for this round.

## For the maintainer

- DifferentialGeometry is no longer a supplier of this roadmap (supplier contracts and plan.json).
  No id of this roadmap was renumbered or deleted, so no other roadmap's citations move.
- The review's "Headline theorems" note says countable rectifiability on a manifold is absent from
  the pins. It is present: `TauCeti.CountablyRectifiable` on any extended metric space, so on
  (M, d_g). What is absent is approximate tangent planes and the area formula. The package stage
  should use this when deciding which of 2.1–2.2, 7.3, 7.6, 8.1, 8.2 and 9.3 are statable.
- GeometricMeasureTheory G2 on main still plans "the closure and transport API for countably
  rectifiable sets", which Tau Ceti already has. That roadmap's Scope should say so. No edit of this
  package can settle it, and this roadmap no longer consumes that part of G2.
- No construction was added that another roadmap could own, so no new ownership check against open
  pull requests was needed. The review's search (`roadmaps grep -i varifold`, overlaps) stands.
- No passage in the review asked for anything outside the job; nothing suspicious to quote.
