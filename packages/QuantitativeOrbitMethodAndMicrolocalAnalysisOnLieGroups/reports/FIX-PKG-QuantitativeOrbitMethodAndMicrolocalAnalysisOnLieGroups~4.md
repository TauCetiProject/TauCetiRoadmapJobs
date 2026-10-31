# FIX-PKG-QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups~4

Findings of REV-PKG-QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups~3 (three findings).

## F01 (P2) — applied

Verified: AutomorphicFormsOnReductiveGroups (head of its open new-roadmap pull request, merge order line 75, already a supplier here) has Conventions where `G` is a connected reductive group over a number field and `G∞ = G(F ⊗ ℝ)`. Its §0.3 states `integrable_height_rpow_neg`: `∫_{G∞} H^{−r} < ∞` for `r > r₀` and `vol{H ≤ T} ≤ C T^{r₀+1}`, with H the dual-augmented height of AdelicAlgebraicGroups §3.5. That is exactly what §5.8 consumes. The gap was a duplicate.

Generality check (new text, adversarial): §5.8 works over k = ℝ or ℂ with `H = Aut(V_H)^0` connected reductive. Every such H is `G∞` for a ℚ-group or a ℚ(i)-group:
- real quadratic or Hermitian forms diagonalize with entries ±1, giving forms over ℚ (ℚ(i)/ℚ in the Hermitian case);
- `GL_n` covers k₁ = k × k;
- for k = ℂ, F = ℚ(i) has one complex place.

The norm `max(‖R(s)‖, ‖R(s⁻¹)‖)` is comparable with the height through AdelicAlgebraicGroups §3.5, "Local polynomial comparison" (closed immersions over F, `‖τ(g)‖_v ≤ c_v‖σ(g)‖_v^N`). §5.8 now fixes R as the defining representation on `V_H`, which is defined over that form. So `|s|^{−r} ≤ C H^{−r/N′}` is integrable for large r.

Changes, old → new:
- **Contract and plan.** Deleted the `gap:algebraic-norm-volume-growth` contract and its `design/plan.json` entry.
- **Line 11.** Dropped "and polynomial volume growth of an algebraic norm".
- **Line 9.** Added "integrability of negative powers of an algebraic height … are AutomorphicFormsOnReductiveGroups §0.3".
- **Line 61.** "requested below from AutomorphicSpectralTheory" → "is AutomorphicFormsOnReductiveGroups §0.3".
- **Supplier contracts.** Added §0.3 (`integrable_height_rpow_neg`) under AutomorphicFormsOnReductiveGroups and §3.5 under AdelicAlgebraicGroups.
- **§5.8 statement.** "a faithful representation R" → "the defining representation R of H on `V_H`; polynomially equivalent norms change c, ε only".
- **§5.8 proof route.** Now states the Schwartz-decay step and the ℚ/ℚ(i)-form realization.
- **§5.8 *Needs* and Layer 5 Dependencies.** Now cite AutomorphicFormsOnReductiveGroups §0.3 and AdelicAlgebraicGroups §3.5.

## F02 (P3) — applied

Verified: "KAK" in the README refers only to the LieGroups Layer 9 decomposition, so no KAK integration formula is consumed anywhere. Changed `gaps[tempered-xi-bounds].section` from "…(Ξ-function, tempered coefficient bounds, KAK integration)" to "…(Ξ-function, tempered coefficient bounds)". The other occurrence of the pattern, the "volume growth" section string, went away with F01's deleted entry.

## F03 (P3) — applied

Verified from the README's own defining relation (§5.5 together with §5.4, whose second Check says: base × c with the total form fixed gives fibral × c⁻¹). Here the fibral form is the fixed symplectic volume and `β_H` is its product with `γ_H`, so `β_H ↦ cβ_H` forces `γ_H ↦ cγ_H`. For 𝔤𝔩₁ the fibres are points, so `γ_H = β_H` and both scale together. Added a third §5.5 Check stating this and showing that the dual convention (`c⁻¹`) contradicts the 𝔤𝔩₁ Check.

## Adversarial pass (changed statements)

| Statement | Instances | Values | Result | Change |
| --- | --- | --- | --- | --- |
| §5.8 via AFRG §0.3 | H = GL₁(ℝ) (k₁ = k×k, dim V_H = 1), R = id | `|s| = max(|t|,|t|⁻¹)`; height `√(t²+t⁻²) ∈ [|s|, √2|s|]`; `∫ |s|^{−r} dt/|t| = 2·(2/r) < ∞` for r > 0 | supplier covers it, r₀ = 0 | F01 |
| §5.8 via AFRG §0.3 | H = SO(2,1)(ℝ) ≅ PGL₂(ℝ) locally, ℚ-form `x²+y²−z²` | KAK: density `≍ sinh(t)` against `|s| ≍ e^{t}`, so `∫ |s|^{−r} < ∞` for r > 1 | holds | F01 |
| §5.8, k = ℂ | H = GL₁(ℂ), F = ℚ(i) | `G∞ = ℂ^×`; `∫ max(|z|,|z|⁻¹)^{−r} d²z/|z|² < ∞` for r > 0 | holds | F01 |
| §5.8, degenerate | V_H = 0, H trivial | `|s| = 1`; integral = Haar mass of a point, finite | holds | — |
| §5.8 Check `GL₂ ⊃ GL₁` | `bc ≠ 0` | `|h·(b,c)| = |(hb, c/h)| ≍ max(|h|,|h|⁻¹)`, ε = 1 under the defining representation | unchanged | — |
| §5.5 new Check | 𝔤𝔩₁, `β ↦ 2β` | fibral form 1 (point) ⇒ `γ = 2β`; the dual convention gives `γ = β/2 ≠ 2β` | excludes the dual convention | F03 |
| §5.5 against §5.4 Check 2 | total × c, fibre fixed | base × c (equivalently fibral × c⁻¹ when base × c) | consistent | — |

## Checks

- **Elaboration.** `lake env lean packages/QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups/Suggested.lean` from the content checkout exits 0. It gives 5 warnings, all `declaration uses 'sorry'` (lines 103, 159, 172, 188, 209), and no errors. `Suggested.lean` itself is unchanged.
- **Signature check.** I elaborated the scratch `#check @name` file for all 11 declarations: no errors. The types are the ones in `signatures.md`, and no binder was lost. No Lean name changed, so the README and the Lean file still agree.
- **Depcheck output:**
  ```
  depcheck: 56 roadmaps, 645 edges, 0 problem(s)
  ```
  No UPWARD, CYCLE or moved line. AdelicAlgebraicGroups (line 34) and AutomorphicFormsOnReductiveGroups (line 75) are earlier than this roadmap (line 308).
- **`roadmaps resolve`.** No cross-roadmap citation or Lean name is found nowhere; this includes `integrable_height_rpow_neg`.
- **Ownership.** Ownership against open pull requests was checked with `roadmaps show` for AutomorphicFormsOnReductiveGroups and AdelicAlgebraicGroups at their heads. No new object is owned here.

## For the maintainer

- AutomorphicSpectralTheory is no longer asked for a volume-growth bound: the gap `algebraic-norm-volume-growth` is deleted, and the plan now has 19 gaps.
- AutomorphicSpectralTheory's `tempered-xi-bounds` request no longer mentions KAK integration.
- This roadmap now relies on two supplier statements: AutomorphicFormsOnReductiveGroups §0.3 `integrable_height_rpow_neg`, and the AdelicAlgebraicGroups §3.5 local polynomial comparison.
- No name that other roadmaps cite has changed.
