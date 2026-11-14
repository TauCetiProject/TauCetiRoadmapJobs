# FIX-DESIGN-Varifolds~5: repair of the Varifolds design, round 5

There was one review, REV-DESIGN-Varifolds~4. It raised five findings, F01–F05: three P2 and two P3. I checked each one against the mathematics, the cited supplier text on main and the pinned libraries. All five are right. Four are applied as asked. F04 is applied differently, because the pinned name and the test class differ from what the review wrote.

Files changed:
- `packages/Varifolds/design/README.md`
- `packages/Varifolds/design/plan.json`

`packages/Varifolds/sources.toml` is unchanged. No source was fetched, no new work is cited, and `needs-references.toml` was not created.

## REV-DESIGN-Varifolds~4/F01 (P2) — applied

2.3, old: weight identity attributed to GeometricCurrents G2.

New: the identity is this roadmap's own, with a route through `TauCeti.eq_riemannianVolume_iff`, GMT G2's injective area formula, G2's chart comparison of Hᵏ, and `LinearMap.normDet_comp`. The G2 contract now names compact oriented smooth sources, cited only for agreement. New Check: the graph of |t|^{3/2}.

## REV-DESIGN-Varifolds~4/F02 (P2) — applied

5.1, old: "H_Σ = (1/k) tr B … (RiemannianGeometry R5a, R5a.2)" for C² Σ.

New: for C² Σ, B(X, Y) = (∇_X Y)^⊥ on C¹ tangent fields and H_Σ = (1/k) tr B. For smooth Σ these are R5a's and R5a.2's objects. Same change in the Conventions, Scope and R5a contract. New Check: the graph of |t|^{5/2}.

## REV-DESIGN-Varifolds~4/F03 (P3) — applied

1.1, old: "this subset is all of G(F, k) only when U is surjective".

New: "for k ≥ 1 … only when U is surjective, and for k = 0 both sides are {0}".

The inclusion Check gains the k = 0 case: U 0 U* = 0 and G(ℝ, 0) = G(ℝ², 0) = {0}; the plan matches.

## REV-DESIGN-Varifolds~4/F04 (P3) — applied differently

4.2 route, old: ‖L‖ built from the scalar Riesz components.

New: ‖L‖ is the chart image of `Distribution.massMeasure` of the frame functional. Added to "From Tau Ceti", 4.2's *Needs:* and Layer 4's dependencies.

Two differences from the review: the pinned namespace is `Distribution`, not `TauCeti.Distribution`; and C⁰ tests are admitted (n = 0), so no density step is needed.

## REV-DESIGN-Varifolds~4/F05 (P2) — applied

6.3, old: the geodesic-ball ratio bound held ‖V‖-a.e. on M.

New: in E the bound holds a.e., by Besicovitch. On M, Θ exists a.e. by the chart-ball route, and the geodesic bound holds a.e. where Θ > 0. The route now spells out the supremum and doubling steps. New Check: v(L, e^{−1/|t|}). 7.3 (iv) is reworded to match.

## Verification of each finding

- **F01.** `TauCetiRoadmap/GeometricCurrents/README.md` (main) lines 268–272: the mass identification is for "the current of a compact oriented smooth source P" under an isometric embedding. 2.3's Σ is only C¹, and may be non-compact, non-orientable and not closed.
  - `TauCeti.riemannianVolume` (`Volume.lean` lines 60–63, 82) needs `IsManifold I 1 M`, a continuous Riemannian bundle, Borel and Lindelöf. `TauCeti.eq_riemannianVolume_iff` (line 93) characterises the measure by its restrictions to the preferred chart sources.
  - GMT G2 (main, lines 158–167) states the area formula for Lipschitz maps ℝᵐ → ℝⁿ, with the injective case.
  - `LinearMap.normDet_comp` (`Mathlib/Analysis/InnerProductSpace/NormDet.lean` line 324) states normDet(g ∘ f) = normDet(g restricted to range f) · normDet(f).
- **F02.** `TauCetiRoadmap/RiemannianGeometry/README.md` line 2842 opens R5a with "For a smooth isometric immersion f:M→N", and R5a.2 (line 2997) inherits that setting.
- **F03.** For k = 0, G(E, 0) = {0} and U 0 U* = 0, so the old sentence was false for every non-surjective U. For k ≥ 1 and dim F > dim E, a k-plane of F containing a vector outside range U is missed, so the corrected sentence holds.
- **F04.** `TauCeti/Analysis/Distribution/Mass/Measure.lean`:
  - `Distribution.massMeasure` (line 191);
  - `massMeasure_preimage_coe` (line 213): the value on Ω ∩ U is `localMass T U`, the supremum of ‖T φ‖ over tests with ‖φ x‖ ≤ 1 supported in U;
  - `enorm_apply_le_lintegral_massMeasure` (line 306).

  `HasLocallyFiniteMass` is in `Mass/Basic.lean` line 353. The tests are Mathlib's `TestFunction Ω F n` with `n : ℕ∞` (`Mathlib/Analysis/Distribution/TestFunction.lean` lines 66–76), so n = 0 gives compactly supported continuous maps. The norm is the norm of F, so the route uses `EuclideanSpace ℝ (Fin N)`: the sup norm of `Fin N → ℝ` would give the wrong value in 4.2's Check.
- **F05.** `Besicovitch.ae_tendsto_rnDeriv` (`Mathlib/MeasureTheory/Covering/Besicovitch.lean` line 1077) needs `HasBesicovitchCovering`, whose instance at the pin is for finite-dimensional normed spaces. The old route produced chart balls only. Comparing chart balls with geodesic balls uses ‖V‖(B̄_{c²r}) ≤ (c^{2k} + 1)‖V‖(B_r), which needs Θ(x) ∈ (0, ∞).
  - AgnolettoCorreaHoyosDaSilvaNardulli2025 line 1680 (Theorem 2.30) states a.e. existence of the density on M. It does not state the geodesic ratio bound, so the narrowed statement is not below what a source supports.
  - Consumers: 7.3 (iv) works where Θ > 0 a.e. 7.1 and 7.6 already run Besicovitch in charts, and 7.6 needs only an upper bound by ρ^k at points of finite density. 3.3 already restricts to points with Θ ∈ (0, ∞).

## Same-pattern search

- **F01 pattern (a supplier cited beyond its scope).** I re-read every citation of GeometricCurrents G2: 2.1, 2.2, 3.1, 5.2, 9.3 and the contract.
  - 2.1 and 3.1 use the chart comparison of rectifiable sets and Hᵏ, which the contract names.
  - 5.2's Hᵏ agreement for d_g against the Euclidean distance carries its own bi-Lipschitz argument. It goes through 3.1's push-forward by the isometric embedding, so no change is needed.
  - The Scope now says this roadmap owns the weight identification, and the Summary lists the Riemannian volume among its starting points.
- **F02 pattern (R5a or R5a.2 cited for a non-smooth object).**
  - Changed: the Conventions, the Scope ("Owned here" and "Owned elsewhere"), the R5a contract, and 5.1's statement, route, Checks and *Needs:*.
  - Unchanged, because these objects are smooth or the passage does not use B: 5.2 (smooth M ⊆ ℝ^L), 4.4's S¹ example, 6.4's route, 9.1's reg² bullet (it uses only 6.4) and 9.3's smooth curve.
- **F03 pattern (isometry statements in degenerate rank).** I checked 1.2 (df_x is onto), 3.1 (isometric immersions, no claim about the image) and 4.4 (k = 1 example). None makes a claim about the image that fails at k = 0.
- **F04 pattern (a measure built here that exists at the pin).** 4.3, 4.4, 7.1, 7.4 and 7.6 take ‖δV‖ from 4.2. 1.4 already uses Tau Ceti's Prokhorov theorem. The mass measures of currents in 9.3 belong to GeometricCurrents. No other construction duplicates the pinned mass measure.
- **F05 pattern (an a.e. claim on M whose route works only in charts).** 3.3 already restricts to points with Θ ∈ (0, ∞). 7.1's density argument works at points of density ≥ 1. 7.6 needs no doubling. 7.3 (iv) is changed. Layer 8 makes no such claim.

## Adversarial pass (changed and added statements)

| Statement | Instances tried | Values on each side | Result | Change |
|---|---|---|---|---|
| 1.1: the image of P ↦ UPU* is all of G(F, k) only for surjective U | U(t) = (t, 0), k = 0, 1; rotation R_φ | k = 0: {0} = {0}, not surjective; k = 1: {diag(1, 0)} ≠ G(ℝ², 1); rotation: P_{ℓ_θ} ↦ P_{ℓ_{θ+φ}}, onto | old false at k = 0; new true | restated, k = 0 Check added |
| 2.3: ‖[Σ]‖ = riemannianVolume of Σ pushed into W | graph of \|t\|^{3/2} on (−1, 1); unit circle; k = N (Σ = W) | (26√13 − 16)/27 = 2.87942 on both sides (numerical quadrature 2.87942) > 2√2 = 2.82843; circle 2π = 2π; Σ = W: chart density √det g on both sides | true, route closes | route and Check added, attribution changed |
| 2.3 route: normDet product | ψ(t) = (t, u(t)), g = e | Jψ = √(1 + u'²); J_g = 1; product √(1 + u'²) = √det(ψ*e) | true | — |
| Conventions and 5.1: B = (∇_X Y)^⊥ for C² Σ | graph of \|t\|^{5/2}; unit sphere | u'' = (15/4)\|t\|^{1/2}, B(τ, τ) = u''(1 + u'²)^{−3/2}ν = 0 at t = 0; sphere: B = −g·x | defined and continuous; agrees with R5a on S^k | statement rescoped |
| 5.1: δ[Σ](X) = −k∫⟨H_Σ, X⟩ for C² Σ | \|t\|^{5/2} graph, X = φ(y₁)χ(y₂)e₂ | LHS ∫φ'u'(1 + u'²)^{−1/2}dt; RHS −∫φu''(1 + u'²)^{−3/2}dt; equal by parts, since (u'(1 + u'²)^{−1/2})' = u''(1 + u'²)^{−3/2} | true | Check added |
| 5.1 route: C¹ frame for C² Σ | k = 1 graph | τ = (1, u')/√(1 + u'²), C¹ because u' is C¹ | true | route says so |
| 4.2: ‖L‖ from the mass measure | L(X) = ∫(X¹ + X²); ⟨X(0), 2e₁⟩; v = 0; cancelling pair | Euclidean-valued tests: √2 vol(U) (Cauchy–Schwarz bound attained in the limit), sup-norm tests: 2 vol(U); 2δ₀, η = e₁; 0; 0 | true with `EuclideanSpace` | route, contract, Check |
| 4.2: \|η\| = 1 a.e. | L = ⟨X(0), 2e₁⟩ | ‖L‖(U') = 2 = ∫_{U'}\|η\| d‖L‖ for 0 ∈ U' | true | — |
| 6.3: ratio bound a.e. in E | v(L, e^{−1/\|t\|}) at 0 | ‖δV‖(B_ρ) = 2e^{−1/ρ} (quadrature agrees to 10 digits at ρ = 0.5, 0.2, 0.1); ‖V‖(B_ρ) = 0.0375, 3.99e−4, 7.66e−7 ≤ 2ρ²e^{−1/ρ} = 0.0677, 5.39e−4, 9.08e−7; ratio 7.2, 33.8, 118.5 ≥ ρ^{−2} = 4, 25, 100 | fails at the null point 0, consistent with a.e.; Θ(0) = 0 exists | Check added |
| 6.3: doubling needs Θ > 0 | same V at 0 | ‖V‖(B_{2r})/‖V‖(B_r) = 7.9, 39.7, 520 ≥ (2r)^{−1}e^{1/(3r)} = 1.95, 13.2, 140 at r = 0.5, 0.2, 0.1 | unbounded at density 0 | Check added |
| 6.3 route: supremum bound | S = sup_{[σ,ρ]} f, A = sup_{[ρ,c²ρ]} f, Cρ ≤ ½ | S ≤ f(ρ) + ½ max(S, A) ≤ f(ρ) + (S + A)/2, so S ≤ 2f(ρ) + A | true | route spelled out |
| 6.3: geodesic bound at Θ(x) ∈ (0, ∞) | ratio of ball masses | ‖V‖(B̄_{c²r})/‖V‖(B_r) → c^{2k}, so it is ≤ c^{2k} + 1 for small r; ‖δV‖(B_r) ≤ Λ_x‖V‖(B̄_{c²r}) ≤ Λ_x(c^{2k} + 1)‖V‖(B_r) | true | statement narrowed |
| 6.3: stationary or bounded H, σ = 0 | Lebesgue measure with a constant line | ‖δV‖ = 0 ≤ Λ‖V‖ everywhere; Θ = 0 everywhere | every point, as stated | — |
| 7.3 (iv) | Θ > 0 ‖V‖-a.e. by hypothesis | 6.3's narrowed form applies at a.e. x | consistent | wording |

## Checks run

Dependency check:

    candidate: Varifolds is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
    depcheck: 207 roadmaps, 1914 edges, 0 problem(s)

There is no UPWARD and no CYCLE line.

`roadmaps resolve packages/Varifolds/design/README.md`: no cross-roadmap citation and no Lean name was found missing. The tool does not check library names, so I grepped every library name added in this round at the pins (Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`, which equal `lake-manifest.json` and the plan's baseline):
- `TauCeti.eq_riemannianVolume_iff` (`Volume.lean`:93, namespace `TauCeti`);
- `LinearMap.normDet_comp` (`NormDet.lean`:324, namespace `LinearMap`);
- `Distribution.massMeasure`, `Distribution.massMeasure_preimage_coe` and `Distribution.enorm_apply_le_lintegral_massMeasure` (`Mass/Measure.lean`:191, 213, 306, namespace `Distribution`);
- `Distribution.HasLocallyFiniteMass` (`Mass/Basic.lean`:353);
- `EuclideanSpace` (`Mathlib/Analysis/InnerProductSpace/PiL2.lean`:114).

`plan.json` parses: 34 targets, 34 distinct ids. Its plan fields are updated for 1.1, 2.3, 4.2, 5.1 and 6.3, and three tests are added (C1 graph, C2 graph, null point of density zero).

`Suggested.lean`: there is none at the design stage. I declared no Lean name and did not run the `#check` binder comparison. No backticked name in the README claims to be this roadmap's own.

Ownership against open work: the brief gives the open roadmap pull requests through the `roadmaps` tools. I ran `roadmaps grep` over main and all open heads for a Hausdorff-measure versus Riemannian-volume comparison on submanifolds:
- the only hits were ComplexComparisonPartII, on integration currents of complex submanifolds;
- QuasiregularMaps 12.4, on the Riemannian volume form;
- DifferentialGeometry, on coordinate area of the Euclidean metric.

None of them owns Hᵏ⌞Σ = riemannianVolume for C¹ submanifolds, so 2.3 keeps it. The C² second fundamental form is a convention of 5.1; R5a owns the smooth one, and 5.1 cites it. The mass measure in 4.2 is Tau Ceti's, cited and not restated.

## For the maintainer

- No name that another roadmap cites changed. No target was renumbered and no section moved, so the 34 ids are unchanged.
- This roadmap now states the identification of Hᵏ⌞Σ with the Riemannian volume for C¹ embedded submanifolds (2.3). GeometricCurrents G2 is cited only for its compact oriented smooth case.
- 6.3 is narrower on M: the geodesic-ball ratio bound is asserted ‖V‖-a.e. only where Θ > 0, while a.e. existence of Θ is unchanged. Proving the bound at points of density 0 would need a Besicovitch covering theorem for Riemannian geodesic balls (Federer1969 2.8.9, uncertified). That theorem is not at the pin, and no consumer needs it.
- No passage in the review asked for anything outside this job.
