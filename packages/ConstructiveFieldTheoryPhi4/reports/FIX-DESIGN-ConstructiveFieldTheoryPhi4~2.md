# FIX-DESIGN-ConstructiveFieldTheoryPhi4~2

Repair round for the design of ConstructiveFieldTheoryPhi4 (round 2), resolving the three findings of REV-DESIGN-ConstructiveFieldTheoryPhi4. Files edited: `packages/ConstructiveFieldTheoryPhi4/design/README.md` and `packages/ConstructiveFieldTheoryPhi4/design/plan.json`. `sources.toml` is unchanged (no finding concerns a source). There is no `Suggested.lean` at the design stage, so no Lean statement changes and no elaboration was run.

## REV-DESIGN-ConstructiveFieldTheoryPhi4/F01 (P2) — applied

Verified: from `T_{f,L,Σ}(φ) = Σ^{−1/2} Σ_x f(x/L) φ_x`, the substitution `y = gx` (g linear, V g-invariant) gives `T_{f∘g}(φ) = T_f(φ ∘ g⁻¹)`, not `T_f(φ ∘ g)`. The reviewer's instance separates them (values below).

Changed in 7.1 (API): "`T_{f∘g,L,Σ}(φ) = T_{f,L,Σ}(φ ∘ g)`" → "`T_{f∘g,L,Σ}(φ) = T_{f,L,Σ}(φ ∘ g⁻¹)`; equivalently `T_{f,L,Σ}(φ ∘ g) = T_{f∘g⁻¹,L,Σ}(φ)`". Added a fourth Check to 7.1 with the d = 2 rotation instance (the same-g identity gives `φ_{e₂}` instead of `φ_{−e₂}`). plan.json: the `hyperoctahedral` API bullet of 7.1 restated the same way and a test `hyperoctahedral_direction` added.

Pattern search: every other use of the W_d action (1.2 "preserves μ under φ ↦ φ ∘ g", 4.1 and 4.2 invariance, 5.1 torus invariance, 6.1 transport "`f ↦ T_{f∘g}` is a random field", 7.3 "`(T_{f∘g}(Φ))_f` has the law of Φ") is a group-invariance statement in which g ranges over a group, so no direction is asserted and none needed a change. The 7.3 Check for d = 1 is unchanged (there g = g⁻¹).

## REV-DESIGN-ConstructiveFieldTheoryPhi4/F02 (P3) — applied

Verified: on two sites `2|b| I − J⁰ = [[2|b|, −J], [−J, 2|b|]]` has determinant `4b² − J²`, so the triple is stable iff `|J| < 2|b|`; `J = −3|b|` satisfies `J < 2|b|` but has determinant `−5b² < 0`. The covariance formulas were already correct on `|J| < 2|b|`.

Changed in 1.5 (Checks): "stable iff `J < 2|b|`" → "`J` of either sign: stable iff `|J| < 2|b|` (determinant `4b² − J²`, negative for `J = −3|b|` although `J < 2|b|`)". plan.json test `two_site_gaussian` restated the same way.

Pattern search: the stability criterion elsewhere (1.5 statement "positive definite", 7.2 "for `b ≤ −d·J_n` holds on every box" with `J_n ≥ 0`, 7.4 with `J_n = 1`) is stated through positive definiteness or for nonnegative couplings, so no other occurrence had the one-sided form.

## REV-DESIGN-ConstructiveFieldTheoryPhi4/F03 (P3) — applied

Verified: "ADC" occurred at README Conventions (test functions) and in a 5.4 Check, never introduced.

Changed: Conventions "ADC's `C_0(ℝ^d)`" → "Aizenman–Duminil-Copin's `C_0(ℝ^d)`"; 5.4 Check "ADC's printed constant `1/(4J)`" → "The constant `1/(4J)` printed in Aizenman–Duminil-Copin (5.9)". The three "ADC" occurrences in plan.json (tests of 0.1 and 5.4, API bullet of 2.2) were expanded the same way so the catalogue matches the README. No "ADC" remains in either file.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed (each side) | Result | Change |
|---|---|---|---|---|
| 7.1 bullet `T_{f∘g}(φ) = T_f(φ ∘ g⁻¹)` | d = 2, L = 1, Σ = 1, V = {0, ±e₁, ±e₂}, g : (x₁, x₂) ↦ (−x₂, x₁), f = 1_{e₁}, φ = 1_{e₂} | `g(−e₂) = e₁`, so `f∘g` is supported at `−e₂`: left `φ_{−e₂} = 0`; right `Σ_x f(x) φ_{g⁻¹x} = φ_{g⁻¹e₁} = φ_{−e₂} = 0`; the rejected same-g form gives `φ_{ge₁} = φ_{e₂} = 1` | equal; wrong model separated | bullet restated |
| 7.1 bullet, second form `T_f(φ ∘ g) = T_{f∘g⁻¹}(φ)` | same instance | left `φ_{ge₁} = φ_{e₂} = 1`; right: `f∘g⁻¹` supported where `g⁻¹x = e₁`, i.e. `x = ge₁ = e₂`, so `φ_{e₂} = 1` | equal | none |
| 7.1 bullet, d = 1 | g = −1, f = 1_{1}, V = {−1, 0, 1} | left `φ_{−1}`; right `φ_{(−1)⁻¹·1} = φ_{−1}`; same-g form also `φ_{−1}` | holds; d = 1 does not separate, as the new Check says | none |
| 7.1 bullet, g = id | any | both sides `T_f(φ)` | holds | none |
| 7.1 new Check versus 7.3 invariance | the d = 2 instance under a W_2-invariant law | `(T_{f∘g}(Φ))_f = (T_f(Φ ∘ g⁻¹))_f`; g⁻¹ ∈ W_2 and the lattice data are W_2-invariant, so the law is that of Φ | consistent | none |
| 1.5 Check `|J| < 2|b|` | b = −1: J = 1, J = −1, J = 2, J = −3 | determinants `3, 3, 0, −5`; J = ±1 stable with `⟨φ_xφ_y⟩ = ±1/3`, `⟨φ_x²⟩ = 2/3`; J = 2 not positive definite (Z = ∞); J = −3 not positive definite | criterion correct in both directions | Check restated |
| 1.5 Check, J = 0 | b = −1 | `⟨φ_xφ_y⟩ = 0`, `⟨φ_x²⟩ = 2/4 = 1/(2|b|)` | agrees with γ_b | none |
| Conventions / 5.4 Check, expanded abbreviation | the 5.4 numbers | `4(1 − tanh 0.75) = 4 × 0.3649 = 1.459`, `1/(4 × 0.375) = 0.667` | unchanged numbers | wording only |

## Checks

Dependency gate (`gate --candidate packages/ConstructiveFieldTheoryPhi4/design/README.md --only ConstructiveFieldTheoryPhi4`):

    candidate: ConstructiveFieldTheoryPhi4 is not in the merge order yet; checked as if placed after StochasticCalculus (the intake inserts it when its design is accepted)
    depcheck: 236 roadmaps, 2181 edges, 0 problem(s)

No UPWARD or CYCLE line. plan.json parses; it now has 38 target entries and 121 tests (one added). No gate failures were listed in the brief. Elaboration and `#check` comparison: not applicable, there is no `Suggested.lean` at the design stage.

## For the maintainer

- No cross-roadmap citation, supplier contract or Lean name changed; no consumer of this roadmap is affected.
- Ownership against open pull requests was not re-checked this round: the findings add no new object.
- The two source issues the review records (the constant in Aizenman–Duminil-Copin (5.9), the sign of the block weights in Definition 2.1) were already handled in the Conventions and 2.2 and are untouched.
