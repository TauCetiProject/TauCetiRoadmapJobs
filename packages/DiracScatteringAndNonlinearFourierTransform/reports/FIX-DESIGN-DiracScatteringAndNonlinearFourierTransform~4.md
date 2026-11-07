# FIX-DESIGN-DiracScatteringAndNonlinearFourierTransform~4

This round settles the three findings of REV-DESIGN-DiracScatteringAndNonlinearFourierTransform~3.
They are F01 (P1), F02 (P2) and F03 (P3). The edits are in
`packages/DiracScatteringAndNonlinearFourierTransform/design/README.md`, `design/plan.json` and
`sources.toml`.

All three findings are right, and all three are applied. Every library name was checked at the pins
recorded in `lake-manifest.json`: Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`. These are the checked-out
package revisions and plan.json's `baseline`.

There is no `Suggested.lean` at the design stage. So there is no Lean statement to keep in step and
nothing to elaborate. No new target was added. plan.json still has 9 layers and 57 targets. API entries
went from 103 to 106 and tests from 188 to 193.

## F01 (P1) — applied

**Verified.** §2.6's only product bullet covers bounded multipliers, and §2.8 says nothing about
products. Yet §8.2 multiplies `e^{iz}fₙ ∈ H²` by the unbounded outer `G_{kₙ}`, and §8.4 multiplies
`e^{itz}Δ` by `G`, and both assert `H²` membership.

The sources assert this step without proof:
- poltoratski2024 line 685–687 and line 766;
- mauth2022 line 945 and line 1137.

Tau Ceti and Mathlib have no Hardy space or Smirnov class at the pins. Grepping for `Hardy`, `Smirnov`
and `outer function` turns up only unrelated files, and the radial-uniqueness file in Tau Ceti, which is
about the disc. `roadmaps grep` finds no other owner. The roadmap already owns `H²(ℂ₊)` (§2.6) and
outer functions (§2.8), so it owns this fact too.

**Change.** Old: §2.6 covered only bounded multipliers, and §8.2/§8.4 asserted `H²` membership of
products with the unbounded outer `G`. New, in the README and plan.json:
- §2.6 gains a logarithmic bound for `H²` (`log|F*| ∈ L¹(Π)`, `log|F| ≤ P[log|F*|]`).
- §2.8 gains an outer-multiplier bullet (`FG ∈ H²`, `|(FG)*| = |F*|e^h`, `‖FG‖ = ‖F*e^h‖`) and a
  boundary-values bullet.
- The routes of §8.2 and §8.4 name these bullets.

**Clauses that differ from the suggested repair:**
- I state `|(FG)*| = |F*| e^h`, not `(FG)* = F*G*`. §2.8 defines only the boundary *modulus* of an
  unbounded outer `G`, so `G*` is not available there.
- I added the bullet "if `e^{2h} dx` is Poisson-finite then `O_h/(z + i) ∈ H²(ℂ₊)`, so `O_h` has
  nontangential limits almost everywhere". §8.2 also uses, without a route, that `G` has a
  nontangential limit at `s`. This bullet supplies that from the outer-multiplier bullet with
  `F = 1/(z + i)`. It applies because `w dx ≤ μ` is Poisson-finite.

**Other new text:**
- The §8.2 route now states the rescaling `G_t(z) = G(s + z/t)`, which is outer with boundary modulus
  `√w(s + ·/t)`, by §2.1's covariance and §2.8's characterisation. The covariance was checked
  numerically (table).
- *Needs:* §2.8 gains §2.6, `ConvexOn.map_integral_le`, `convexOn_exp` and
  `MeasureTheory.lintegral_lintegral_swap`.
- *Needs:* §2.6 gains `MeasureTheory.lintegral_liminf_le`, `tendstoInMeasure_of_tendsto_eLpNorm` and
  `TendstoInMeasure.exists_seq_tendsto_ae`.
- *Needs:* §8.2 gains §2.1, and §8.4 gains §2.7 and §6.2. The route uses `Δ ∈ PW_t` and
  `e^{itz}Δ ∈ H²`.
- New Checks: in §2.6, the equality and strict cases of the log bound and the case `F ≡ 0`. In §2.8, the
  computed multiplier `1/(z+i)² · (−i)(z+i)`, the failing boundary condition, and the failing outerness
  (`e^{−iz}`).
- The Mathlib contracts and Layer 2's Dependencies are extended accordingly.
- `sources.toml`: poltoratski2024 `cited_for` gains `2.8`, and the garnett2007 locator names Ch. II §4
  for the two new bullets. garnett2007 is still uncertified and is cited by locator.

**Pattern sweep.** Every other `H²` product in the roadmap was checked:
- §6.2 (`F/E = e^{itz}F/(a + b)` and `(a + b)(F/E)`) multiplies by `a + b`, which is bounded by
  `2 cosh L`, and by its inverse, which is bounded by `2 cosh L` (§4.2–§4.3). Both are bounded
  multipliers.
- §6.3 uses only the product law.
- §4.4 and §5.4 use outerness, not products.

No other place needs the new bullet.

## F02 (P2) — applied

**Verified.** The Conventions fixed no norm on `ℂ²`. The matrix norm the README names is Mathlib's `L∞`
operator norm (`Matrix.linfty_opNNNorm_eq_opNNNorm`, `Analysis/Matrix/Normed.lean` line 461). For
`q = 1 + i` the coefficient `ΩQ_q = [[1, −1], [−1, −1]]` has row-sum norm `2 > √2`. `M(1, 0)` has
row-sum norm `4.9148 > e^{√2} = 4.1133`, and Euclidean norm `4.1133`, an equality (table).

**Change.**
- Old: no norm fixed on `ℂ²`, and the §1.6/§3.1 bounds were stated in an unnamed norm. New: a Conventions
  item "Norms on `ℂ²`" fixes `EuclideanSpace ℂ (Fin 2)`, `Matrix.toEuclideanCLM` and
  `Matrix.Norms.L2Operator`. It records `‖Ω‖ = 1` and `‖Q_q‖ = |q|`, with the row-sum witness.
- §3.1 is now taken on `EuclideanSpace ℂ (Fin 2)`. Its bound is stated in the Euclidean operator norm,
  with equality for constant `q` at `z = 0`. It gains a norm-convention Check.
- The §1.6 Check, the Layer 1 Example and §4.1 (where both norms agree) name the carrier.
- §1.4 is stated for `Fin n → 𝕜` or `EuclideanSpace 𝕜 (Fin n)`, with a transport along
  `EuclideanSpace.equiv`.
- New contract bullets: `Matrix.toEuclideanCLM` (`Analysis/CStarAlgebra/Matrix.lean` 101),
  `Matrix.l2_opNorm_toEuclideanCLM` (240) and `EuclideanSpace.equiv`
  (`Analysis/InnerProductSpace/PiL2.lean` 296).

**Pattern sweep.** Every other vector or matrix norm in the roadmap is Euclidean already. So the one
convention makes them all correct for the declared carrier:
- `|Θ|² = |A|² + |C|²` in §3.3 and §6.4;
- `|X|² ≥ 2|h|` in the §4.3 route;
- Hadamard's `1 ≤ |Θ||Φ|` in §6.4;
- `|tr P| ≤ n‖P‖` in §1.4, which holds in both norms.

The review's alternative, keeping `Fin 2 → ℂ` with a factor `√2`, would break the equality now
recorded in the §3.1 Check. So it was not taken.

## F03 (P3) — applied

**Verified.** `LipschitzWith.comp_absolutelyContinuousOnInterval` is at
`MeasureTheory/Function/AbsolutelyContinuous.lean` line 344. It holds for any pseudo-metric target and
was missing from §1.4.

**Change.** Old: "absolutely continuous entries", with no lemma named. New: the §1.4 route states that
each entry `N ↦ (N e_j)_i` is `1`-Lipschitz, because `|(N e_j)_i| ≤ ‖N e_j‖ ≤ ‖N‖`. This holds in both the
sup and the Euclidean norm, since `‖e_j‖ = 1`. So the entries are absolutely continuous by the named
lemma. The name was added to §1.4 *Needs:*, plan.json 1.4 `prerequisites` and the Mathlib contracts.

## Adversarial pass on every changed statement

Values were computed in pure Python, without numpy:
- `2 × 2` matrix exponentials as 60-term series, checked against the closed form;
- Euclidean operator norms from the eigenvalues of `A*A`;
- integrals over `ℝ` by the substitution `x = tan θ` and a 400000-point midpoint rule.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Conventions `‖Q_q‖ = \|q\|` | `q = 1 + i`, `0.3 − 2i`, `−0.5` | `1.414214 = 1.414214`, `2.022375 = 2.022375`, `0.5 = 0.5` | holds | new item |
| Conventions witness `ΩQ_q` | `q = 1 + i` | row-sum `2`, Euclidean `1.41421` | row-sum fails `≤ \|q\|` | recorded |
| Dirac coefficient form `[[f, −z − g], [z − g, −f]]` | `(f, g, z) = (1, 1, 0)`, `(0.3, −0.7, 1 + 2i)`, `(2, 0.5, −0.4i)`, `(−1.2, 0.9, 3 − i)` | entrywise equal; Euclidean `1.41421, 2.66517, 2.1, 4.60977` ≤ `\|z\| + \|q\|` `1.41421, 2.99765, 2.46155, 4.66228`; row-sum `2, 2.92488, 2.64031, 5.22616` ≤ `\|z\|+\|f\|+\|g\|` `2, 3.23607, 2.9, 5.26228` | holds | §1.6 Check, §3.1 |
| §1.6 Check, row-sum at `z = 0` | `ΩQ_q = [[f, −g], [−g, −f]]` | each row sums to `\|f\| + \|g\|`; `> \|q\|` iff `fg ≠ 0`; `q = 1 + i`: `2 > 1.41421` | holds | rewritten |
| §3.1 `‖M(t, z)‖ ≤ exp(t\|z\| + ∫\|q\|)` | `q = 1 + i`, `t = 1`, `z = 0` | `M(1, 0) = [[3.5465, −1.3683], [−1.3683, 0.8099]]` by series and by `cosh√2 · 1 + (sinh√2/√2)ΩQ`; Euclidean `4.1133 = e^{√2}`; row-sum `4.9148` | equality in the Euclidean norm, fails for row-sum | new Check |
| §3.1 equality for constant `q` at `z = 0` | `q = 0.3 + 1.1i`, `T = 0.8` | `‖M‖ = 2.489646`, `e^{T\|q\|} = 2.489646` | equality | stated |
| §4.1 scattering coefficient norm | `q = 0.7 + 0.4i`, `t = 1.3`, `z = 0.2 + 0.5i` | Euclidean `2.958282`, row-sum `2.958282`, `\|q\|e^{2t\|Im z\|} = 2.958282` | holds in both norms | carrier named |
| §1.4 entry Lipschitz bound | 2000 random complex `2 × 2` `N` | `max_{ij}\|N_ij\| / min(Euclidean, row-sum) ≤ 0.994055 ≤ 1` | holds | route, *Needs:* |
| §1.4 transport | `EuclideanSpace.equiv` | identity on coordinates, so the basis matrix, `det` and `tr` are unchanged; the conjugated coefficient has norm `≤ √n ‖P‖`, so it is integrable | holds | stated |
| §2.6 log bound, equality | `F = 1/(z + i)`, `z = i`, `0.5 + 2i` | `P[log\|x+i\|](i) = 0.693145` vs `log 2 = 0.693147`; at `0.5 + 2i`: `1.112308` vs `log\|z+i\| = 1.112312`; so `log\|F\| = P[log\|F*\|]` | equality (outer) | Check |
| §2.6 log bound, strict | `F = e^{iz}/(z + i)`, `z = i` | `log\|F(i)\| = −1.693147 < −0.693145 = P[log\|F*\|](i)` | strict | Check |
| §2.6 log bound, degenerate | `F ≡ 0` | `log\|F*\| ≡ −∞ ∉ L¹(Π)` | hypothesis `F ≢ 0` needed | Check |
| §2.6 route, `P(z, ·) ∈ L²` | `z = 0.3 + 0.7i` | `∫P² = 0.2273642` vs `1/(2πy) = 0.2273642` | holds | route |
| §2.6 route, `log⁺` Lipschitz and `log⁺a ≤ a²` | `a, b ≥ 0` | derivative of `log⁺` is `0` on `(0, 1)` and `1/a ≤ 1` on `(1, ∞)`; `log a ≤ a − 1 < a²` for `a ≥ 1` | holds | route |
| §2.8 outer multiplier, computed | `F = 1/(z+i)²`, `G = −i(z+i)` | `∫\|FG(x+iy)\|²dx`: `3.141279, 2.094395, 1.047198` at `y = 10⁻⁴, 0.5, 2`, equal to `π/(y+1)`; sup `π`; `‖F*e^h‖² = 3.141593` | holds, equality of norms | Check |
| §2.8 Jensen pointwise bound | `z = i`, `0.7 + 0.3i`, `−2 + 1.5i`; outer `F = 1/(z+i)²` and non-outer `e^{iz}/(z+i)²` | `\|FG\|²`: outer `0.25, 0.458716, 0.097561`, non-outer `0.033834, 0.251748, 0.004857` ≤ `P[\|F*\|²e^{2h}] = 0.5, 0.596330, 0.243902` (closed form `(y+1)/\|z+i\|²`) | holds | route |
| §2.8 boundary condition needed | `F = 1/(z+i)`, `G = −i(z+i)` | `\|F*\|e^h = 1 ∉ L²`; `FG = −i`, `∫\|FG\|² = ∞` | negative control | Check |
| §2.8 outerness needed | `F = 1/(z+i)`, `G = e^{−iz}` | `∫\|FG(x+iy)\|²dx = 3.141907, 5.693156, 57.175049` at `y = 10⁻⁴, 0.5, 2`, equal to `πe^{2y}/(y+1)`, unbounded | negative control | Check |
| §2.8 `h = 0` | `G = c` | `FG = cF`, `‖FG‖ = ‖F‖` | holds | Check extended |
| §2.8 boundary values of outer functions | `h = −log\|x+i\|` (`O_h = i/(z+i)`, `∫e^{2h}dΠ = ∫dx/(1+x²)² < ∞`); `h = log\|x+i\|` | `∫\|i/(x+i)²\|² = 1.570796 = π/2`, so `O_h/(z+i) ∈ H²`; for `h = log\|x+i\|`, `e^{2h}dx = (1+x²)dx` is not Poisson-finite and `O_h/(z+i) = −i ∉ H²` | hypothesis used exactly where needed | bullet |
| §8.2 rescaled outer function | `h = log\|x+i\|`, `s = 0.4`, `t = 3`, `z = 0.2 + 0.5i` | `log\|G(s + z/t)\| = 0.2283607` vs `P[h(s + ·/t)](z) = 0.2283598` | holds | route |
| §8.2 product norm | `fₙ ∈ PW_1`, `\|e^{ix}\| = 1` | `‖e^{iz}fₙG_{kₙ}‖² = ∫\|fₙ\|²w(s + ·/kₙ) ≤ 1` by the §2.8 bullet | holds | route |
| §8.4 product norm | `Δ ∈ PW_t`, `w dx ≤ μ`, `conj λ_t ∈ Q(s, C/t)` | `‖e^{itz}GΔ‖² = ∫\|Δ\|²w ≤ ∫\|Δ\|²dμ = o(t)` (§8.3 with `K(t, λ, ·) = K_t(conj λ, ·)`, `Sinc(t, λ, ·) = Sinc_t(conj λ, ·)`) | holds | route, *Needs:* |

## Checks run

- **Dependency check** (`gate --candidate … --only DiracScatteringAndNonlinearFourierTransform`), after the
  last edit:

  ```
  candidate: DiracScatteringAndNonlinearFourierTransform is not in the merge order yet; checked as if placed after AnalyticNumberTheoryPartI (the intake inserts it when its design is accepted)
  depcheck: 240 roadmaps, 2365 edges, 0 problem(s)
  ```

  There is no UPWARD or CYCLE line.
- **Citations** (`roadmaps resolve` on the README): no cross-roadmap citation and no Lean name was found
  missing.
  - The resolver did not check Lean names outside TauCetiRoadmap, because this host has no pinned Lake
    packages. So every library name added this round was opened at the pin, with its file and line, as
    listed in the sections above and in the README contracts.
  - The two names added to §2.6 *Needs:*, `tendstoInMeasure_of_tendsto_eLpNorm` and
    `TendstoInMeasure.exists_seq_tendsto_ae`, are at `MeasureTheory/Function/ConvergenceInMeasure.lean`
    lines 445 and 266.
- **README and plan.json agreement:** a script checked that every plan.json statement, API entry and test
  appears verbatim, up to whitespace, in the README. Result: 0 mismatches.
- **Mechanical `#check` of `Suggested.lean`:** not applicable, because the design stage has no Lean file.
- **Ownership against open pull requests:** checked with `roadmaps grep` for `Smirnov`, `outer function`,
  `H²(ℂ₊)` and half-plane Hardy space. No open roadmap owns the half-plane Smirnov fact.
  The overlaps listing for this roadmap shows no pull request that changes it and no dropped id.
- **Sources:** nothing new was fetched, and `needs-references.toml` was not written. garnett2007 is still
  `uncertified`, and the new bullets cite it by locator only. Their own routes do not depend on it.

## For the maintainer

- No section, target or name that another roadmap could cite was renamed or removed.
- The Conventions now fix `EuclideanSpace ℂ (Fin 2)` as the carrier of the Dirac and scattering
  propagators. The package-stage `Suggested.lean` should use this carrier, with `Matrix.toEuclideanCLM`
  and the scoped `Matrix.Norms.L2Operator` norm. That settles the open carrier question the review
  raised for the Lean file.
- The two new §2.8 bullets (outer multipliers, and boundary values of outer functions) are general
  half-plane Hardy-space facts. A later roadmap that needs the Smirnov property on `ℂ₊` can cite them.
