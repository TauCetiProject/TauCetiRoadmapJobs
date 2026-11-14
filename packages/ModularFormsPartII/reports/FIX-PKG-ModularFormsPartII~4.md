# FIX-PKG-ModularFormsPartII~4

This round repairs the findings of `REV-PKG-ModularFormsPartII~3`, which has two P2 findings. I checked both against CDT25, against DiophantineApproximationAndTranscendencePartII §4.1 and QSeriesPartitionsAndMockModularForms §§8.1–8.4a at their open heads, and against this roadmap's own text. Both findings are right, and both are applied.

Files changed:

- `packages/ModularFormsPartII/README.md`.

`Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged. No new source was needed and no `needs-references.toml` was written. The review text contains no instruction aimed at the worker and nothing suspicious.

## REV-PKG-ModularFormsPartII~3/F01 (P2) — applied

§3.4 sketch: "its remaining finite singularities lie in `16^(−1/N)μ_N`, outside `U_N`" → points of `U_N ∖ {0}` keep a full holomorphic local basis, because `u ↦ 16u^N` is a local biholomorphism onto `ℂ ∖ {0, 1}`. Apparent singularities (Wronskian zeros) may lie in `U_N`; genuine ones lie in `16^(−1/N)μ_N`. This is DAT-PartII §4.1's membership condition. The witness is added as a negative control in Layer 3 Examples.

Verification. The witness is an allowed generator of `R₂`: `f = λ − 1/2` is a weak modular function on `Γ(2)` with rational coefficients and `D = 2`, and `L(Γ(2)) = 2` divides `2N = 2`. With `N = 1`, `λ = 16u` and `f = 16u − 1/2`. Its minimal monic operator is `∂ − 16/(16u − 1/2) = ∂ − 1/(u − 1/32)`, and `16 − (16u − 1/2)/(u − 1/32) = 0`. The coefficient has a pole with residue −1 at `u = 1/32`, which is the image of `τ = i`. That point lies in `U₁ = ℂ ∖ {1/16}`, so the old sentence is false. The new condition holds there, because the basis `{16u − 1/2}` is holomorphic. DAT-PartII §4.1 at its head asks for "a full meromorphic local solution basis at every singular point in U" and allows any annihilating operator, so `2f = 32u − 1 ∈ H(U₁, χ, ℤ)`. CDT25 lines 1434–1446 assert trivial local monodromy, not the absence of singular points. The membership conclusion of §3.4 is unchanged.

Pattern search. I checked every "singular" passage in the README and the Lean file:
- §2.5 (line 299) is a true conditional about operators whose singularities lie in `{0, 1/16, ∞}`. I left it unchanged.
- §7.1 (statement and sketch) already allows apparent singularities that carry a full meromorphic basis.
- §7.8 already places apparent singularities at points where all local solutions are holomorphic.
- §7.14 and the Δ example of Layer 7 are consistent: Δ has no zero on `ℍ`, so it has no apparent singularity.

No other occurrence of the overclaim remains.

## REV-PKG-ModularFormsPartII~3/F02 (P2) — applied

§7.4, which was an owned theorem with its own proof, is deleted. QSeries §8.4a is imported in Scope and ownership and in the QSeries supplier contract, specialised to `Γ = Mp₂(ℤ)`, `w = 1`, `M = ρ(T)` semisimple. The consumers now cite §8.4a: the §7.8 sketch and its Needs line, the §8.5 Needs line, and the Layer 7 and Layer 8 Dependencies. Three worked specialisations are added to Layer 7 Examples: η⁴ with `μ = 1/6`, eigenvalue `i` with `μ = 1/4`, and the eigenvalues of `σ(T)` with nonreal μ.

Verification at the QSeries head. §8.4a takes a finite-dimensional `V`, a finite-index `Γ ≤ Mp₂(ℤ)` and a cusp of width `w` with monodromy `M`. It chooses `A` with `exp(2πiA) = M` and eigenvalue real parts in `[0, 1)`, and states:
- for a holomorphic slash, `b_n = 0`, and polynomial τ-factors occur only on Jordan blocks;
- finite principal parts mean finitely many exponents with negative real part;
- no unitarity or semisimplicity hypothesis is imposed.

A form as in §7.3 meets its hypotheses:
- it is holomorphic, hence harmonic, because `Δ_k = −ξ_{2−k}ξ_k` (QSeries §8.2);
- its strip growth bound is uniform over a period;
- with our convention `F(τ + 1) = ρ(T)F(τ)`, so `w = 1` and `M = ρ(T)`.

When `ρ(T)` is semisimple, `A` is diagonalisable. In an eigenbasis every component is then `Q^μ Σ_{m≥m₀} a_m Q^m` with no logarithm, which is exactly the deleted statement. QSeries is earlier in the merge order than this roadmap (line 248 against line 280) and already supplies §§5.2 and 8.1.

Numbering. §§7.5–7.14 keep their numbers, for two reasons:
- The plan's Layer 7 nodes are in the same order, with `W7/generalized-expansion` fourth, and this job may not edit plan nodes.
- External citations use these positions. NoncongruenceModularForms on main cites ModularFormsPartII W1.2–W1.3, W1.5–W1.6, W1.8 and W6.3–W6.5.

No roadmap cites §7.4 or W7.4 (a `roadmaps grep ModularFormsPartII` over main and all open heads), so no former-numbering mapping is needed. The unneeded converse in the deleted §7.4 (expansions imply moderate growth) had no consumer and is not restated.

## Checks

- `lake env lean packages/ModularFormsPartII/Suggested.lean`, run from the content checkout: exit 0, with six warnings, all `declaration uses sorry`, at lines 71, 85, 104, 116, 147 and 162. There are no errors. The only import is `import Mathlib`, so no Tau Ceti module needed building.
- `#check @name` for all nine declarations, in one scratch file elaborated once: exit 0. All nine elaborated types are identical to the recorded `signatures.md` and agree with their README statements. No binder is lost; every declaration carries its binders in its own signature. `Suggested.lean` is unchanged this round, so no Lean statement changed.
- Dependency check:

```
depcheck: 236 roadmaps, 2143 edges, 0 problem(s)
```

  There is no UPWARD, CYCLE or `moved:` line. The extra edge, compared with 2142, is the new QSeries §8.4a citation.
- `roadmaps resolve packages/ModularFormsPartII/README.md`: no cross-roadmap citation and no Lean name found nowhere.
- There were no gate failures to repair this round.

## Adversarial pass on the changed statements

| Statement | Instances | Values computed | Result / change |
|---|---|---|---|
| §3.4 repaired sketch: apparent singularities in `U_N` allowed | N=1, f=λ−1/2 | `L = ∂ − 1/(u − 1/32)`; `L(16u − 1/2) = 16 − 16 = 0`; pole at `u = 1/32 ∈ U₁ = ℂ∖{1/16}`, residue −1; basis holomorphic | Old claim false; new condition holds; negative control added |
| §3.4, second apparent case | N=1, f=j, H₂=Γ(2) | `j = 256(1−λ+λ²)³/(λ²(1−λ)²)`; zeros at `λ = e^(±πi/3)`, i.e. `u = e^(±πi/3)/16`, with `|u| = 1/16` but `u ≠ 1/16`, so in `U₁`; `∂ − j′/j` is singular there; basis `{j}` holomorphic; pole at `u = 0` is meromorphic | Consistent with the repair |
| §3.4 at u = 0 | N=2, f=λ | `λ = 16u²`, `L = ∂ − 2/u`, basis `{16u²}` holomorphic at 0 | Full basis at 0, as the width hypothesis predicts |
| §3.4 logarithmic control | `K₀`, which is not in R₂N | Solutions `K₀`, `K₀ log x + g`; after `x = u^N` the monodromy is `I + NB ≠ I` for N=1,2 | Still excluded by the meromorphic-basis condition at 0 |
| §2.5 pullback conditional | Hypergeometric operator under `x = u^N`; `∂ − 1/(x − 1/32)` | Singular set `{0, 16^(−1/N)μ_N, ∞}` for the first; for the second the hypothesis fails and nothing is claimed | True as stated; unchanged |
| QSeries §8.4a import, scalar case | η⁴, k=2, ρ=ν_η⁴ | `ρ(−I) = 1` because `(−1)² = 1`; `ρ(T) = exp(πi/3)`, `ρ(T)⁶ = 1` (PSL₂(ℤ)^ab = ℤ/6); μ = 1/6; `∏(1−Qⁿ)⁴ = 1 − 4Q + 2Q² + 8Q³ − 5Q⁴ − 4Q⁵ + ⋯` | Matches the supplied expansion; Example added |
| §8.4a, finite-order eigenvalue i | Coset representation of Γ₀(4) | Index 6 = 1 + 4 + 1 (cusp widths); the 4-cycle gives eigenvalues 1, i, −1, −i; μ = 1/4 with Re μ ∈ [0, 1) | Example added |
| §8.4a, nonunit eigenvalue | σ(T) = [[2,1],[7,3]] | trace 5, det −1; `e₊ = 5.192582`, `e₋ = −0.192582 = −1/e₊`; `c = log(e₊)/(2π) = 0.262165`; `exp(2πc) = 5.192582`, `−exp(−2πc) = −0.192582`; μ₊ = −ic, μ₋ = 1/2 + ic | No finite-order or unitary hypothesis needed; Example added |
| §8.4a, Jordan control | ρ(T) = [[1,1],[0,1]] | Mode `exp(2πiAτ)e₂ = (τ, 1)`, which has a polynomial τ-factor | Excluded by the semisimplicity in §7.3; the existing Check agrees |
| §7.8 repaired sketch | F = 1 (W = span{1}); F = (1,0,0), ρ = 1 ⊕ σ | Expansion `Q⁰·1`; Wronskian 1; `L = ∂`; at cusps `g∞`, `F(gτ) = ρ(g)F(τ)` gives the same constant | Coefficients in ℂ(x); consistent with the Layer 7 Examples |
| §8.5 Needs change | ρ = 1 ⊕ σ, period 2N | `F(τ + 2N) = F(τ)` forces `ρ(T)^(2N)F = F`; σ(T) has no root-of-unity eigenvalue, so the σ-part is 0 | Consistent with §8.7 |

## For the maintainer

- `design/plan.json` still carries the owned node `ModularFormsPartII:W7/generalized-expansion`, and the nodes `W7/regular-singular-component` and `W8/deficient-places` list it as a prerequisite. This job may edit only the plan's `gaps`. A later design revision should turn that node into an import of QSeriesPartitionsAndMockModularForms §8.4a.
- The README's Layer 7 numbering now skips 7.4. This is deliberate: §§7.5–7.14 stay aligned with the plan's node positions, and nothing cites §7.4.
- New citation: QSeriesPartitionsAndMockModularForms §8.4a, cited from Scope, the supplier contract, §§7.8 and 8.5, and the Layer 7 and 8 Dependencies. That roadmap is still an open pull request that adds its folder. It is already a supplier and earlier in the merge order, so no merge-order change follows. If it renumbers §8.4a before it merges, these citations must follow.
- Ownership against open work: no new construction was added. The only ownership change hands the expansion theorem to its earlier owner. The overlap file lists no conflicting revision and no dropped id.
- No name that other roadmaps cite changed. The section labels cited by NoncongruenceModularForms on main (Layers 1 and 6) are untouched.
