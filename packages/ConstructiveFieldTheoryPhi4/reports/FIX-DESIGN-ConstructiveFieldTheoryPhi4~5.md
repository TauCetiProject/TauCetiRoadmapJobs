# ConstructiveFieldTheoryPhi4 design repairs

I checked all three findings of the review `REV-DESIGN-ConstructiveFieldTheoryPhi4~4` against the README, the plan, the cached sources and the pinned Mathlib. All three are correct and all three are applied. The edits are in `packages/ConstructiveFieldTheoryPhi4/design/README.md` and `packages/ConstructiveFieldTheoryPhi4/design/plan.json`. `sources.toml` is unchanged. No target, layer, supplier or dependency edge was added or removed.

## REV-DESIGN-ConstructiveFieldTheoryPhi4~4/F01 (P2) — applied

- §2.2 Check, plan `lebowitz_test`, Examples: "ε < 1/3" → "0 < ε < 1/3"; endpoints ε = 0 (δ₀, member) and ε = 1/3 (equality) recorded.
- Examples: "mixed-sign weights are not" → q = (1, −1) with K > (ln 2)/2.
- New Check: at K = 0 it is the q = (1, 1) block.

## REV-DESIGN-ConstructiveFieldTheoryPhi4~4/F02 (P2) — applied

- §0.1: "every function bounded by `C e^{cφ²}`" → "every ρ-a.e. measurable F with `|F| ≤ C e^{cφ²}` ρ-a.e. (C ≥ 0, c real)". Polynomials stay unrestricted.
- New Check, also in the plan: the uniform law on [0, 1], `1_{[0,1/2]}` against a Vitali indicator.
- Contract: `Integrable`, `Integrable.mono'`.

## REV-DESIGN-ConstructiveFieldTheoryPhi4~4/F03 (P3) — applied

- Conventions: "`−½ Σ_{x≠y}`, the sum over unordered pairs" → `−Σ_{{x,y}}` (Aizenman–Duminil-Copin (1.12), `aizenman-duminilcopin-2021 line 143`), equivalently `−½ Σ_{x≠y}`.
- Witness: tanh J. Omitting the ½ gives tanh 2J; halving the unordered sum gives tanh(J/2).
- Same wording in the §1.1 Check and plan 1.1.

## Pattern sweep

- **Endpoint ranges of the sparse law (F01).** Every occurrence of `(1 − ε)δ₀ + ½ε(…)` and of "1/3" was searched in both files.
  - The Newman Check in §3.7 said "ε/24 > ε²/8 for ε < 1/3", which fails at ε = 0 (0 > 0). It is now "0 < ε < 1/3".
  - §3.5 and the plan's Newman test use ε = ¼ only and need no change.
  - The other ε occurrences are unrelated: the random sign in 6.4 and the decay ε in 6.2.
- **Mixed signs (F01).** The §2.1 sentence "without which the class contains measures violating the Lebowitz inequality" is an existential claim and remains true. The witness is K > (ln 2)/2.
- **Domination without measurability (F02).** Every integrability claim over a function class was checked:
  - 1.2 (polynomials and exponentials) and 2.2 / 4.2 (continuous F) are continuous classes.
  - 1.3 already says "measurable F". 3.7 uses C¹ F. 5.2 uses bounded measurable f.
  - 3.3 FKG said "the same holds for non-decreasing F, G bounded by a polynomial". That clause now says "measurable non-decreasing F, G" in both the README and the plan statement.
- **Pair counting (F03).** "ordered" occurs only in the Conventions witness, the §1.1 Check and plan 1.1. The current definition in 3.4 already uses unordered pairs. Ginibre's duplication identity `H(φ) + H(φ′) = −¼ Σ_{x≠y} J_{xy}(s_xs_y + t_xt_y)` was recomputed: `s_xs_y + t_xt_y = 2(φ_xφ_y + φ′_xφ′_y)`. It is consistent with the ½-ordered form and is unchanged.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Conventions, Hamiltonian, two forms | Two Ising sites, J = (log 3)/2; three readings | Unordered sum and ½-ordered sum: H(1,1) = −J, Z = cosh J = 1.1547 = 2/√3, ⟨σσ⟩ = 0.5. Ordered without ½: tanh 2J = 0.8. Half the unordered sum: tanh(J/2) = 0.26795 = 2 − √3 | The two stated forms agree; both negative controls are recorded |
| §1.1 Check `cosh 2J`, `tanh 2J` | H = −2Jσσ | Z = E[e^{2Jσσ}] = cosh 2J, correlation tanh 2J = 4/5 | Wording repaired |
| §0.1 dominated integrability | Uniform on [0,1], F = 1_{[0,1/2]}; Vitali indicator; C = 0; c < 0; δ_a | Integral of 1_{[0,1/2]} = ½. Vitali: bound 1, not a.e. measurable, not integrable. C = 0 gives F = 0 a.e. c < 0 gives a bound ≤ C. Under δ_a every F is a.e. constant, hence a.e. measurable | Measurability added; the bound alone does not suffice |
| `Integrable.mono'` as the route | Pinned Mathlib/MeasureTheory/Function/L1Space/Integrable.lean:58, 104 | `Integrable = AEStronglyMeasurable ∧ HasFiniteIntegral`; `mono'` takes `hf : AEStronglyMeasurable f μ` separately | The route needs exactly the added hypothesis |
| §2.2 sparse non-member | ε = 0, ¼, 1/3, 2/3, 1 | ∫φ⁴ against 3(∫φ²)²: 0 = 0; 0.25 > 0.1875; 0.3333 = 0.3333; 0.6667 ≤ 1.3333; 1 ≤ 3 | Excluded exactly for 0 < ε < 1/3. ε = 2/3 (uniform on {−1,0,1}) and ε = 1 (ρ_I) are members and are consistent |
| §2.1 mixed-sign law | K = 0, (ln 2)/2, (ln 3)/2 | ε = ½, 1/3, ¼. Then 16ε against 48ε²: 8 ≤ 12; 5.333 = 5.333; 4 > 3 | Violation only for K > (ln 2)/2. At K = 0 the law equals the q = (1,1) block (P(0) = ½, P(±2) = ¼) |
| Examples, Layer 2 | Members δ₀ and `½δ₀ + ¼(δ₂ + δ₋₂)`; non-member q = (1,−1), K > (ln 2)/2 | Both members are Ising blocks (constant sequence) with bounded support, so their exponential α-moments are finite. The non-member is the image under φ ↦ 2φ of the sparse law with ε < 1/3. The class is closed under scaling and the Lebowitz ratio is scale-invariant | Consistent with the §2.2 Checks |
| §3.7 Newman coefficient comparison | ε = 0, ¼, 1/3; a = 2 | a⁴ coefficients ε/24 against ε²/8: 0 = 0; 0.0104 > 0.0078; equality at 1/3. At a = 2, ε = ¼: 1.69055 > e^{1/2} = 1.64872 | Range "0 < ε < 1/3" repaired |
| §3.3 FKG, polynomially bounded clause | One Ising site, F = G = φ; independent distinct coordinates | ⟨φ²⟩ − ⟨φ⟩² = 1 ≥ 0; 0 ≥ 0 | "measurable" made explicit; no truth change |

## Checks run

**Dependency check, exact output:**

```text
candidate: ConstructiveFieldTheoryPhi4 is not in the merge order yet; checked as if placed after RelativisticQuantumFieldTheory (the intake inserts it when its design is accepted)
depcheck: 223 roadmaps, 1968 edges, 0 problem(s)
```

The exit status was 0, with no UPWARD or CYCLE line.

**Citation resolver** (`roadmaps resolve` on the README): no cross-roadmap citation and no Lean name was found nowhere. The resolver did not check Mathlib names. I read the two added names, `MeasureTheory.Integrable` (line 58) and `MeasureTheory.Integrable.mono'` (line 104), in the pinned Mathlib at 1b1ccf4b088b32fa3f23f2de1127433254a81e1e.

**plan.json** parses as JSON after the edits.

**Suggested.lean**: there is none at this design stage. Nothing was elaborated and no `#check` scratch file was run, because there is no Lean declaration to check.

## Sources, ownership and overlaps

- No new source was cited and `sources.toml` is unchanged. No `needs-references.toml` was written.
- No new construction was introduced, so ownership is unchanged. The overlap report lists no open pull request that changes this roadmap and no dropped or revision-only ids.

## For the maintainer

No name that other roadmaps cite was renamed or removed. The plan gains two test entries, `measurability_needed` (0.1) and `mixed_signs_K0` (2.1). Target 0.1 also gains the prerequisite `mathlib:MeasureTheory.Integrable.mono'`. The Hamiltonian itself, every weight and every downstream formula are unchanged.
