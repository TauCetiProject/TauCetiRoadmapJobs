# FIX-DESIGN-Varifolds~4: repair of the Varifolds design, round 4

There was one review, REV-DESIGN-Varifolds~3. It raised ten findings (R01–R10): one P1, four P2 and five P3. I checked each one against the mathematics and the sources, and all ten are right.

Files changed:
- `packages/Varifolds/design/README.md`
- `packages/Varifolds/design/plan.json`
- `packages/Varifolds/sources.toml`, where only two `cited_for` lists changed, to follow the renumbering in R05.

No source was fetched or added, and `needs-references.toml` was not created.

## REV-DESIGN-Varifolds~3/R01 (P2) — applied

1.1, old: "A linear isometry U : E → F induces the homeomorphism P ↦ U P U⁻¹ of G(E, k) onto G(F, k)".

New:
- A *surjective* linear isometry gives this homeomorphism.
- Any linear isometry gives P ↦ U P U*, a homeomorphism onto the closed set of projections whose range lies in range U. This is the image-plane map for L = U.
- New Check: the inclusion ℝ → ℝ² misses diag(0, 1), while a rotation reaches every line.

The plan's API entry and a new test were updated to match.

## REV-DESIGN-Varifolds~3/R02 (P1) — applied

6.4 route, old: "the distributional derivatives of θ times the volume density vanish".

New: in a C² chart with w = √det(g_Σ), div_{T_xΣ} X = w⁻¹ Σ_i ∂_i(w X^i). Testing with X^i = φ/w gives ∫ θ̃ ∂_i φ dt = 0. The G1 constancy criterion is applied to θ̃ against dt (Simon1983 line 7720–7732).

New Check: g = e^{2t} dt² with V = [ℝ]. Here θ̃ = 1, while θ̃w = e^t is not constant. The plan has a matching test.

## REV-DESIGN-Varifolds~3/R03 (P2) — applied

Layer 7 standing setting, old: "…, and V_i → V there".

New:
- The standing setting is only g_i → g together with the regarding of each V_i on G_k^g(W).
- 7.1 now assumes V_i → V explicitly.
- 7.4 now takes an arbitrary sequence. It produces a subsequence V_{i_j} → V, and every such limit is rectifiable, with ‖δ_g V‖(U) ≤ lim inf_j ‖δV_{i_j}‖(U).
- 7.6: every subsequential limit is integral.
- New Check: the alternating lines y_2 = 0 and y_2 = 1.

The plan was updated to match.

## REV-DESIGN-Varifolds~3/R04 (P2) — applied

7.2 route, old: "the weighted identity 6.1 with h(y) = f(|y|)-type weights gives dilation invariance".

New: once P_{S^⊥}y = 0 holds C-a.e., the field X = h(y)y with h an arbitrary C¹_c function gives ∫(kh + y·∇h) d‖C‖ = 0. Hence λ^{−k}∫h(y/λ) d‖C‖ is constant in λ, and Mathlib extensionality finishes the argument (Simon1983 line 3461–3481).

New Check: the measure with density 1 + ½ sin(log r) cos ϑ in dr dϑ. The plan has a new test and the added Mathlib prerequisite.

## REV-DESIGN-Varifolds~3/R05 (P2) — applied

Sections 4.2 and 4.3 swap places:
- 4.2 is now "Riesz representation for vector fields".
- 4.3 is now "Stationary varifolds and locally bounded first variation".

Old → new numbering: old 4.2 → new 4.3, and old 4.3 → new 4.2.

Updated:
- the internal citation and *Needs:* lines in 4.2, 4.3, 4.4, 5.1, 6.4, 7.1, 7.3 and 9.4;
- the plan's ids, order and prerequisites (6.4, 7.1 and 9.4 now cite target:4.3);
- the `sources.toml` `cited_for` lists of Federer1969 (now 4.2) and AgnolettoCorreaHoyosDaSilvaNardulli2025 (now 4.3).

## REV-DESIGN-Varifolds~3/R06 (P3) — applied

4.5 Check, old: "|c^k − 1| |δ_g V(X)|, bounded by k|c^k − 1| sup|DX| ‖V‖(K)" for any g.

New:
- That bound is stated for the flat metric g = e only.
- A new control: g = e^{4t}dt², h = 4g, V = δ_{(0,1)}, X = (1 − t²)². The Christoffel symbol is 2, the left side is 2, and the derivative-only bound gives 8/(3√3) < 2.
- The general estimate is unchanged.

The plan's test was updated and a new test added.

## REV-DESIGN-Varifolds~3/R07 (P3) — applied

7.4 zigzag Check, old: "‖δV_i‖ is √2 times the number of corners".

New: atoms of mass √2 at the i − 1 interior corners and of mass 1 at the two endpoints, so ‖δV_i‖(ℝ²) = √2(i − 1) + 2. For i = 2 this is √2 + 2. The limit's fibre measure is ½δ_{P_+} + ½δ_{P_−}, so the limit is not rectifiable. The plan's test was updated.

## REV-DESIGN-Varifolds~3/R08 (P3) — applied

7.5, old: hypotheses "‖δ_h W‖ at most ε and ∫‖P_S − p‖dW at most ε", attributed to Simon 42.9.

New, following the review's second option:
- The hypotheses are ‖h − e‖_{C²} < ε², ‖δ_h W‖(B_3(0)) < ε² and tilt < ε², with slab half-width ε and |A| < δ.
- h = e is attributed to Simon1983 line 7991–8000.
- The case h ≠ e is marked as this roadmap's, with its own frozen-metric error argument at slab scale τ.
- New parameter-accounting Check.

The plan was updated to match.

## REV-DESIGN-Varifolds~3/R09 (P3) — applied

Riesz Check (now in 4.2), old: "L(X) = ⟨X(0), v⟩ gives ‖L‖ = |v| δ_0 and η(0) = v/|v|".

New:
- For v ≠ 0 the formula is unchanged; for example v = 2e_1 gives 2δ_0 and e_1.
- For v = 0, L = 0 and ‖L‖ = 0, η is undetermined on the null set, and v/|v| would be 0/0.

The plan's test was updated.

## REV-DESIGN-Varifolds~3/R10 (P3) — applied

9.4, Simon's theorem now carries Simon's standing convention Σ = reg^∞[Σ] (Simon2023 line 77–83), so that sing^∞[Σ] is the closure of Σ minus Σ.

Check, old: "with K = ∅, sing^∞[Σ] = ∅ and Σ is closed".

New: closedness is derived from the convention. A punctured-hyperplane control in ℝ⁹ (n = 3, m = 5, ℓ = 1, f = 1) shows the convention is needed. The plan's statement, test and locator were updated.

## Verification and same-pattern repairs

**R01.**
- *Verified.* For U(t) = (t, 0), the only element of G(ℝ, 1) is 1 and U 1 U* = diag(1, 0), so diag(0, 1) is missed.
- *Verified.* In general U*U = 1 and UU* is the projection onto range U. Then (UPU*)² = UPU* and UPU* is self-adjoint with range U(range P). Conversely Q ↦ U*QU inverts the map on {range Q ⊆ range U}.
- *Pattern, 1.2 isometry bullet:* now says f is a C¹ diffeomorphism with f*g' = g, so each df_x is surjective.
- *Pattern, 3.1:* "for an isometry f" now distinguishes an isometry onto W' from an isometric immersion, which push-forwards along df P df*. 5.2's inclusion ι uses the second case.
- *Pattern, 4.4 isometry law:* restricted to isometries onto open sets. Witness that it fails otherwise: the volume of M = S¹ has H = 0, while its image in ℝ² has H = −x.
- *Pattern, 9.2 and the plan's 1.2, 3.1, 4.4 and 9.2:* updated the same way.
- *No change needed:* the linear isometries of 9.4 (ℝ^{n+1} → ℝ^{n+1}) and the Conventions' E ≅ ℝ^N are surjective by dimension.

**R02.**
- *Verified.* With w = e^t and X = (1 − t²)², ∫(e^t X)' dt was computed as 0 (numerically 1.6·10⁻¹⁰).
- *Pattern, 5.1 route:* the flat divergence theorem is applied to the coordinate field w·Y. That is ∫ div_Σ Y · w dt = ∫ ∂_i(wY^i) dt, so it is correct as written.
- *Pattern, other uses of constancy:* 7.3 (inside a k-plane, w = 1) and 9.1 use only the 6.4 statement. No change.

**R03.**
- *Verified.* The line y_2 = 1 has mass 2√(R² − 1) ≤ 2R in B_R(0). A test function supported in B_{1/2}(0) gives the alternating integrals 1, 0.
- *Pattern:* 7.1, 7.4 and 7.6 are the only users of the standing setting. 1.4, 7.2 and 6.3 already state convergence as an explicit hypothesis or produce subsequences.

**R04.**
- *Verified* from the page image of Simon 19.3: printed pp. 98–99, line 3461–3481. Simon uses arbitrary degree-zero homogeneous h.
- *Verified* the new step: div_S(h(y)y) = kh + ⟨∇h, P_S y⟩ = kh + y·∇h, using P_S y = y. The derivative of λ^{−k}∫h(y/λ) d‖C‖ is −λ^{−k−1}∫(kh_λ + y·∇h_λ) d‖C‖ = 0.
- *Pattern:* 8.1 uses 7.2's conclusion. 7.3's ball bound ‖C‖(B_ρ(y)) ≤ Θω_kρ^k uses monotonicity at y and the ball masses at 0, not invariance. No change.

**R05.**
- *Verified:* the forward edge 4.2 → 4.3 was the only one.
- *Checked after the swap:* the plan has 34 distinct ids and no target has a prerequisite at or after itself. A scan of every README *Needs:* line finds no forward reference.
- Remaining prose pointers to later sections (1.1 → 3.1, 1.2 → 1.4, 3.1 → 5.2, 4.4 → 5.2) name consumers, not inputs.
- `roadmaps grep Varifolds` finds no roadmap on main or in any open pull request that cites Varifolds. So the renumbering breaks no citation, and no mapping table is added to the README, which stays timeless.

**R06.**
- *Verified:* Γ = ½g⁻¹g' = 2 and div_g X(0) = 0 + 2·1 = 2. V^h = 2V, because J = c^k = 2. sup|X'| = 1.5396 = 8/(3√3).
- *Pattern:* 4.1's bound already uses the covariant |∇X|. 4.5's Dirac Check has X(0) = 0, so the Christoffel term vanishes there. The 7.5 route compares with the constant metric h(y). No other change.

**R07.**
- *Verified* by summing unit co-normals at every vertex, for i = 2, 3, 4 and 10: totals 3.4142, 4.8284, 6.2426 and 14.7279, which equal √2(i − 1) + 2. The total length is √2.
- *Pattern:* 7.1's i segments with ‖δV_i‖ = 2i, 6.5's segment with two unit atoms and 8.1's step atom of mass 1 already count every endpoint atom.

**R08.**
- *Verified* from the cached scan of Simon1983, printed p. 250 (PDF page 262). The hypotheses are μ_W(B_3) ≤ Λ, ‖δW‖(B_3) < ε² and tilt < ε², with ε ∈ (0, δ²), slab {|q| < ε} and Lⁿ(A) < δ. The proof, line 8014–8151 (pp. 251–254), has three steps (i)–(iii), as now cited.
- *Verified* the metric-error bound: ∫_τ^σ ρ^{−k−1}·Cε²ρ(1 + ρ/τ)·cρ^k dρ ≤ Cε²σ(1 + σ/τ), and ε²σ(1 + σ/τ) ≤ 2εσ/τ because ετ ≤ 1 and εσ ≤ 1. The grid test passed.
- *Pattern:* 7.6 consumes 7.5 only with all smallness quantities tending to 0, so it is unaffected.

**R09.**
- *Pattern:* the only other normalised vectors (H = (θ'/θ)e_1 with θ = 1 + y_1², and the co-normals η) have nonzero denominators.

**R10.**
- *Verified* Simon2023 line 77–83: reg M is defined inside the closure of M, and the paper always assumes reg M = M.
- *Pattern:* 9.4's v(C_{p,q}, 1) = [C_{p,q} ∖ {0}] and 2.3's [Σ] do not need Σ closed (2.3 says so), so no change.

## Adversarial pass (changed and added statements)

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| 1.1 surjective isometry action | rotation R_φ, ℓ_θ (θ, φ) = (0.3, 0.9), (1.0, −0.4) | R_φ P_{ℓ_θ} R_φ⁻¹ = P_{ℓ_{θ+φ}} (checked to 10⁻¹²) | onto G(ℝ², 1) | restated |
| 1.1 non-surjective isometry | U(t) = (t, 0), k = 1 | U*U = 1; U 1 U* = diag(1, 0); diag(0, 1) not in the image | onto the closed subset only | new bullet and Check |
| 1.1 isometry = image-plane map | L = U, P any | Q = UP, Q*Q = P, A = P + 1 − P = 1, QA⁻¹Q* = UPU* | agrees with 1.1's formula | — |
| 1.1, k = 0 | P = 0 | UPU* = 0 = P_{{0}} | ok | — |
| 4.4 isometry law, embedding | M = S¹ with its volume V, ι into ℝ² | H_V = 0 (k = N, closed); H_{ι_#V} = −x ≠ dι(0) | law fails off "onto" | scope added |
| 3.1 isometric immersion | ι of 5.2 | J = normDet(isometry on S) = 1; image plane dι P dι* | agrees with 5.2 | bullet extended |
| 6.4 route, nonflat density | W = Σ = ℝ, g = e^{2t}dt², θ̃ = 1, X = (1 − t²)² | δV(X) = ∫(e^t X)' dt = 0 (numeric 1.6·10⁻¹⁰); (θ̃w)' = e^t, (θ̃w)'(0) = 1 | coordinate θ̃ constant, θ̃w not | route and new Check |
| 6.4 route, flat case | Σ a k-plane, w = 1 | the two formulations coincide | consistent with 7.3's use | — |
| 6.4 route, k = N | Σ = W, θ̃ the density of V against dt | ∫ θ̃ ∂_iφ dt = 0 gives θ̃ constant; V = θ_0 Vol_g | matches the k = N Check | — |
| 7.4 without assumed convergence | lines y_2 = 0 (even i), y_2 = 1 (odd i) | δ = 0, Θ = 1, mass in B_R ≤ 2R (R = 0.5, 1, 2, 10); test integrals 1, 0, 1, 0 | hypotheses hold, full sequence diverges, two subsequential limits | statement and new Check |
| 7.4 lim inf along the subsequence | same; U = B_2(0) | all ‖δV_i‖(U) = 0, so lim inf_j = 0 = ‖δV‖(U) | ok | — |
| 7.6 every subsequential limit | v(L, 1) + v(L_i, 1) with L_i → L, and with L_i alternating between two limits | limits v(L, 2), or each subsequence's own integral limit | integral | wording |
| 7.2 dilation step | C = v(T, 1); C = two planes | P_S y = y on the support; λ^{−k}∫h(y/λ) = ∫h for h ∈ C¹_c by the area formula on planes | invariance | route |
| 7.2 radial-only control | μ = (1 + ½ sin(log r) cos ϑ) dr dϑ | μ(B_λ) = 2πλ; λ⁻¹ moment of cos ϑ: λ = 1: −0.78540 = −π/4; λ = e^π: +0.78540; λ = 2: −0.10232 (all equal to the formula) | radial tests pass, angular test fails | new Check |
| 7.2 density positivity of the control | same | density ≥ ½ > 0 on dr dϑ, locally finite | genuine measure | — |
| 4.2 (Riesz) Dirac, v ≠ 0 | v = 2e_1 | ‖L‖ = 2δ_0, η(0) = e_1 | ok | — |
| 4.2 Dirac, v = 0 | v = 0 | L = 0, ‖L‖ = 0, v/|v| = 0/0, η free on a null set | only a.e. uniqueness | Check restated |
| 4.3 ordering | target edges | 4.3 ← 4.1, 4.2; 4.4 ← 4.2, 4.3; no forward edge among 34 targets | ok | renumbered |
| 4.5 flat conformal bound | g = e, h = c²e | left = |c^k − 1||δ_eV(X)| ≤ k|c^k − 1| sup|DX| ‖V‖(K) | ok | scoped to e |
| 4.5 non-flat control | g = e^{4t}dt², h = 4g, δ_{(0,1)}, X = (1 − t²)² | Γ = 2; div_g X(0) = 2; δ_g = 2; δ_h V^h = 4; left = 2 > 1.5396 = 8/(3√3) | derivative-only bound fails; general estimate keeps ‖h − g‖_{C⁰} = 3e⁴ | new Check |
| 7.4 zigzag | i = 2, 3, 4, 10 | ‖δV_i‖ = 3.4142, 4.8284, 6.2426, 14.7279 = √2(i − 1) + 2; length √2 | → ∞ | Check corrected |
| 7.4 zigzag limit | fibre measure | ½δ_{P+} + ½δ_{P−}, weight √2 H¹⌞[0, 1] | not rectifiable | — |
| 7.5 plane, multiplicity m | h = e, Λ ≥ mω_k3^k | ‖W‖(B_2(x)) = mω_k2^k; m ≤ (1 + δ)m + δ | ok, A = ∅ | Λ condition added |
| 7.5 two sheets | ±ε/2, ε = 0.05, k = 1, 2, 3 | ratio 1.999844, 1.999688, 1.999531; fibre sum 2 ≤ (1 + δ)·ratio + δ when ε < δ² | ok | — |
| 7.5 tilted plane | k = 1, angle α | tilt = |sin α|·‖W‖(B_3) = 6|sin α|; the hypothesis needs < ε² | fails for large α | Check made exact |
| 7.5 squared thresholds | ε = 0.1 | bad set cε⁻¹(2ε²) = 0.2c, against 2c unsquared | squares needed | new Check |
| 7.5 metric error | ε ∈ {0.01, 0.1, 0.5, 0.99}, σ ∈ {0.01, 0.5, 0.99}, τ < σ | ε²σ(1 + σ/τ) ≤ 2εσ/τ on every grid point | absorbed into the cεσ/τ term | route |
| 7.5, h = e | the source case | thresholds ε², slab ε, Lᵏ(A) < δ, ε < δ² | equal to Simon 42.9 | attribution |
| 9.4 convention, K = ∅ | Simon's Σ | sing = closure ∖ Σ = ∅, so Σ is closed | ok | statement and Check |
| 9.4 punctured hyperplane | n = 3, m = 5, ℓ = 1, f = 1, Σ = ℝ⁸×{0} ∖ {0} | H⁸({0}) = 0, [Σ] = [ℝ⁸×{0}] stationary, sing = ∅, 0 ∈ reg^∞ ∖ Σ | violates the convention | new control |
| 9.2 isometry invariance | rotation of crossing lines; ι of 5.2 | Θ(0) = 2 is preserved; for ι, H changes by tr B_M | needs "onto" | scope added |

## Checks run

**Dependency gate** (after all edits):

    candidate: Varifolds is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
    depcheck: 223 roadmaps, 1966 edges, 0 problem(s)

There is no UPWARD or CYCLE line. No supplier was added or removed in this round.

**Citations.** `roadmaps resolve` on the README found no cross-roadmap citation and no Lean name that is missing everywhere. The tool says it could not check Lean names outside TauCetiRoadmap. The one Mathlib name added in this round, `MeasureTheory.Measure.ext_of_integral_eq_on_compactlySupported` (7.2's *Needs:* line, already in the supplier contracts), was checked at the pinned Mathlib: it is in `Mathlib/MeasureTheory/Integral/RieszMarkovKakutani/Real.lean` at line 408, for two regular measures.

**Other checks.**
- `plan.json` parses and has 34 distinct target ids, with the layer-4 order 4.1–4.5. Every target prerequisite is earlier, and `gaps` is empty.
- The README has 34 `**Checks.**` blocks, and its `###` headings match the plan's order.
- No LaTeX delimiters, machine paths, job ids or process wording were added.

**Suggested.lean.** Not applicable: this is the design stage, so there is no Lean file. Nothing was elaborated and no `#check` comparison was run.

**Gate failures.** None were listed for this round.

**Ownership.** No new object or construction was introduced. Every change restates, scopes or proves an existing target of this roadmap. Ownership against open pull requests is as in the earlier rounds:
- the overlap report reports no conflicting change and no dropped or revision-only id.
- `roadmaps grep Varifolds` finds no citer of this roadmap.

**Sources.**
- Simon1983 42.9 (printed p. 250) and the proof of 42.9 (pp. 251–253) were read from the page images of the cached scan, because the OCR drops their formulas.
- Simon1983 19.3 (line 3405–3481) and 41.2 (line 7700–7732) were read in the cached text.
- Simon2023 line 68–96 was read in the cached text.

## For the maintainer

- Two layer-4 targets swap numbers. `Varifolds.rieszRepresentation_vectorField` is now 4.2 (it was 4.3), and `Varifolds.Varifold.IsStationary` is now 4.3 (it was 4.2). Their names and contents are unchanged. No roadmap on main or in an open pull request cites Varifolds, so no citation breaks.
- 7.5 now uses Simon's squared smallness hypotheses. Its only internal consumer, 7.6, is unaffected.
- No untrusted text asked for anything outside the job.
