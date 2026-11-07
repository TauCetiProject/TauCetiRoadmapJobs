# FIX-DESIGN-ComplexHessianEquations~2

Repair of the nine findings of `REV-DESIGN-ComplexHessianEquations` on the design of ComplexHessianEquations. Files edited: `packages/ComplexHessianEquations/design/README.md`, `packages/ComplexHessianEquations/design/plan.json`, `packages/ComplexHessianEquations/sources.toml`.

Because F01 and F02 remove §1.2 and empty most of §1.3, Layer 1 was renumbered without a gap: old §1.3 (Ky Fan sums, reduced) → §1.2; old §1.4 → §1.3; old §1.5 → §1.4; old §1.6 → §1.5. Plan ids follow: 1.3 → 1.2, 1.4.1 → 1.3.1, 1.4.2 → 1.3.2, 1.5 → 1.4, 1.6 → 1.5; target 1.2 is deleted; 7.1 is split into 7.1.1 and 7.1.2 (F09). Every cross-reference in Layers 2–8 and in `plan.json` prerequisites was remapped (listed under F01). The plan keeps 48 targets.

## REV-DESIGN-ComplexHessianEquations/F01 (P2) — applied

Verified on main (a5f988c): `TauCetiRoadmap/OperatorTheory/PolarDecomposition/README.md` line 55–56 (eigenvalue order, Loewner order over `𝕜 ∈ {ℝ, ℂ}`, line 29), PD-A51–A53 at line 252–261, Milestone A7 line 290; RandomMatrices on main already cites them the same way. lewis1996 line 193–195 states local Lipschitz continuity only. Old → new: the min–max target of §1.1 and the whole of §1.2 are deleted; §1.1 gains API bullets "monotone (PD-A52)" and "Lipschitz constant 1 (PD-A53)" and the three §1.2 Checks; new supplier contract `### From TauCetiRoadmap.OperatorTheory/PolarDecomposition`; `*Needs:*` lines of §§1.2–1.4, 3.1 and 4.1 now cite PD-A52/PD-A53; Scope moves the three statements to the deferral list; plan target 1.2 and the `eigenvalues_eq_minmax` API are deleted, `hasEigenvalue_iSup_of_finiteDimensional` dropped from the Mathlib contract, and `target:1.2` prerequisites (old 1.3, 1.4.1, 1.5, 4.1) repointed to `roadmap:OperatorTheory/PolarDecomposition PD-A52/PD-A53`. Remapped references: §2.2, §2.4 (three), §3.1, §3.3, §4.1 (three), §4.2 (two), §8.1 (two), §8.5, §8.7 (two), Downstream consumers, Layer 1 Dependencies.

## REV-DESIGN-ComplexHessianEquations/F02 (P2) — applied

Verified on main: PrincipalAngles PA-B31/B32 at line 270–273; Majorization MAJ-A18–A22 line 153–160 and MAJ-A27 line 176–178 (scalars `ℝ` or `ℂ`, line 23). Old → new: §1.3 becomes §1.2 "Ky Fan sums and their derivative": it records the two-sided trace inequality as PA-B32 at `(F, B)` and `(F, −B)` and Ky Fan's principle as MAJ-A27 on orthonormal bases of ranges, and proves only convexity, subadditivity, uniqueness of the maximizer under `λ_m > λ_{m+1}` (with the `c_j = ‖Pe_j‖²` argument written out) and differentiability with gradient `P_T` (lewis1996 Theorem 2.1). Two new contracts `### From TauCetiRoadmap.OperatorTheory/PrincipalAngles` and `### From TauCetiRoadmap.OperatorTheory/Majorization`; Birkhoff dropped from the Mathlib contract (the §1.4 half-space route uses the lower trace bound, not Birkhoff). Plan target 1.2 (`kyFan_differentiable`) restated with prerequisites PA-B32, MAJ-A27, PD-A53; suppliers list gains the three OperatorTheory entries. The Checks stay; the von Neumann Check now also records the `−B` evaluation (`−3 ≤ 2·0 + 1·(−3)`).

## REV-DESIGN-ComplexHessianEquations/F03 (P2) — applied

Verified: `f = −σ_1` on `Γ_1 ⊂ ℝ²` is symmetric, `C¹`, concave; `S = diag(1,0) ≤ T = diag(2,0)` gives `F_f(S) = −1 > −2 = F_f(T)`; `f ≡ 0` gives equality with `S ≠ T`. Old → new (§1.4, plan 1.4): the inequality requires `∂_i f ≥ 0` on `Γ`, the strictness clause `∂_i f > 0`; the route is the mean value theorem along `[λ(S), λ(T)] ⊂ Γ` (PD-A52 for `λ(S) ≤ λ(T)`), and `λ(S) = λ(T)` with `S ≤ T` forces `S = T` since `T − S ≥ 0` has trace zero; `Γ + Γ_n ⊆ Γ` is shown to give `Γ + Γ̄_n ⊆ Γ` by the shift `μ − εe`. Negative-control Check added in both files. §4.1 now names the ellipticity `∂_j f > 0` of the admissible pair as the input; §3.3 and §8.7 use only the cone clause and are unaffected. While rewriting the concavity bullet without the old §1.3, the gradient-ordering step `∂_i f(μ) ≤ ∂_j f(μ)` for `μ_i > μ_j` (spruck2005 line 11095–11097) was made explicit with a Check at `σ_2^{1/2}`, `(4, 1)`.

## REV-DESIGN-ComplexHessianEquations/F04 (P3) — applied

Verified: gpt2023 line 407 asserts continuity; Lemma 2 (line 412–426) needs right-continuity; `s ↦ vol{φ_t ≤ −s}` is left-continuous only. Old → new: Layer 8 preamble defines `Ω_s^∘ = {φ_t < −s}`; §8.1 notes `A_s` is the integral over `Ω_s^∘`; §8.3 applies §8.2 to `Φ(s) = (c_t^n/V_t)∫_{Ω_s^∘} e^{nF_t}ω_X^n`, with right-continuity, the Hölder step on `Ω_s^∘`, the lower bound `A_s ≥ r·Φ(s + r)` from `−φ_t − s > r`, and the conclusion `Ω_{S_∞}^∘ = ∅`. Check added (`φ_t = −ε·ρ`, `ρ` a bump equal to `1` on a set with interior): the closed sublevel function jumps at `s = ε`, the strict one does not. Plan 8.3 statement and a test updated.

## REV-DESIGN-ComplexHessianEquations/F05 (P3) — applied

Verified at the pin: `Implicit.lean` line 448–466, `section FiniteDimensional` with `[FiniteDimensional 𝕜 F]`; `InverseFunctionTheorem/FDeriv.lean` line 111–117, `toOpenPartialHomeomorph` needs `[CompleteSpace E]` and `f' : E ≃L[𝕜] F`. Old → new: `HasStrictFDerivAt.implicitFunction` removed from the Mathlib contract, §6.6 `*Needs:*`, Layer 6 Dependencies and plan 6.6 prerequisites; the contract describes the inverse function theorem in Banach spaces and records why the implicit function theorem is not applicable; §6.6's route names the Banach spaces and the isomorphism of §5.2 as the strict derivative.

## REV-DESIGN-ComplexHessianEquations/F06 (P3) — applied differently

Verified: pss2012 line 163–164, `Ricci(ω_φ) = −(i/2)∂∂̄ log ω_φ^n`. The factor is recorded in the Dictionaries bullet, but not with the suggested clause "carry the same `λ`": the README's dictionary identifies pss2012's `ω_0` with our `ω` (that is what "its `φ` is twice ours" rests on), and for the same form `Ric_PSS = (1/2)·Ric`, so a Kähler–Einstein constant doubles: `Ric_PSS = λ·ω` there is `Ric = 2λ·ω` here. Witness computed on `ℂP¹` with `ω = i∂∂̄ log(1 + |z|²)`: `g_PSS = 2(1 + |z|²)^{−2}`, `Ric_PSS = i∂∂̄ log(1 + |z|²) = ω` while `Ric = 2ω` (the §6.1 Check). No target uses a Kähler–Einstein constant, so nothing else changes.

## REV-DESIGN-ComplexHessianEquations/F07 (P3) — applied

Old → new: both `needs` sentences in `plan.json` are now the statements with hypotheses (weak Harnack: `r^{−m}‖u‖_{L¹(B_{2r})} ≤ C(inf_{B_r} u + r^{2−m/q}‖f‖_{L^q(B_{4r})})`, `q > m/2`, nonnegative weak supersolutions of divergence-form uniformly elliptic equations with bounded measurable coefficients; Aleksandrov–Bakelman–Pucci: `sup_Ω u ≤ sup_{∂Ω} u + C(m)·diam(Ω)·‖(Lu)^−/D^{1/m}‖_{L^m(Γ⁺)}` for `u ∈ C²(Ω) ∩ C⁰(Ω̄)`, `L = a^{ij}∂_i∂_j` with positive definite `a`). Slugs, suppliers, sections and the README contract paragraphs unchanged.

## REV-DESIGN-ComplexHessianEquations/F08 (P3) — applied

Verified: gpt2023 (3.2), line 450–451, `c_1^n = V⁻¹∫e^{nF} ≤ Ent_p(F) + e^n` for `p ≥ 1`; the splitting `|F| ≥ 1` / `|F| < 1` proves it for every `p > 0`. Old → new (§3.4, plan 3.4.2): the bullet is stated for every `F ∈ C⁰(X)` and `p > 0` with that proof and locator; the normalized-`F` comparison `Ent_q(F) ≤ 1 + Ent_p(F)` for `0 < q ≤ p` is the second bullet; a Check with `F = a` constant, `V = 1`, added in both files.

## REV-DESIGN-ComplexHessianEquations/F09 (P3) — applied differently

Verified: neither input had an owner or a readable locator. Demailly's *Complex Analytic and Differential Geometry* was fetched through the sources service from the author's page (key `demailly2012`, certified, `licence_class = author-page`; the first attempt at the old `ujf-grenoble` host failed on a certificate mismatch and recorded nothing). Its Chapter III (5.8), line 7964–7979, p. 159, is Lelong's monotonicity; but working the route through showed that monotonicity is not needed: the standard proof picks `x_0 ∈ B(0, 1/4)` with `u(x_0) ≥ −A/vol(B(0,1/4))` and applies a one-variable estimate on every complex line through `x_0`, then integrates over directions in polar coordinates. So §7.1 now states two sub-statements with hypotheses: (i) the one-variable estimate for subharmonic `v ≤ 0` on a neighbourhood of `D̄(0, R)` with `v(0) ≥ −A`, `α_1 = log(R/R')/A`, `C_1 = 2π(2R')²(R/R')^{(R'+r)/(R'−r)}`, routed through demailly2012 Proposition 4.22 (line 1717–1731, Chapter I §4.B, p. 37: Green–Riesz representation and Harnack), Jensen's formula for the Riesz mass and Jensen's inequality (`ConvexOn.map_integral_le`, `Mathlib/Analysis/Convex/Integral.lean` line 196, added to the Mathlib contract); (ii) the local estimate with `α(n, A) = log(12/11)·vol(B(0,1/4))/A` and `C = C(n)`, with the slicing route. Three one-variable Checks added; the `ℝ⁴` Check now says where plurisubharmonicity enters. Plan 7.1 split into 7.1.1 and 7.1.2; 7.2's prerequisite repointed to 7.1.2. The Hörmander attribution and the uncertified `hormander1990` entry stay as attribution only. Demailly added to References.

## Dependency check

```
candidate: ComplexHessianEquations is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 226 roadmaps, 2131 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The edge count rose by one against the baseline (2130): the OperatorTheory supplier. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere (checked against main a5f988c and 443 open pull requests at their heads). The three OperatorTheory suppliers are on main; they are not in `merge-order/ORDER.txt` as separate lines, which the gate accepts for main roadmaps. Ownership of the new §7.1 one-variable estimate was searched by object (`roadmaps grep` was not re-run; the resolver's index covers the open pull requests, and no roadmap cites a uniform exponential estimate for subharmonic functions); this roadmap is its owner as a lemma of its own target. No `Suggested.lean` exists at the design stage, so no elaboration or `#check` pass applies.

## Adversarial pass on the changed statements

| Statement | Instances | Values | Result | Change |
| --- | --- | --- | --- | --- |
| §1.1 monotone, Lipschitz (PD-A52/53) | `diag(3,0) ≤ diag(3,1)`; `[[0,ε],[ε,0]]` | `(3,0) ≤ (3,1)`, cross pair `3 > 1`; `λ = (ε,−ε)`, `‖T‖ = ε` | holds, constant 1 attained | Checks moved |
| §1.2 two-sided trace bound via `−B` | `F = diag(2,1)`, `B = diag(0,3)`, `B' = diag(3,0)` | lower `2·0+1·3 = 3 = tr FB`, upper `6`; PA-B32 at `−B`: `−3 ≤ −3` | both directions from PA-B32 | Check extended |
| §1.2 maximum principle | `T = diag(3,1,1)`, `P` onto `e_2`; `P_T`, `m = 1` | `1 ≤ 3`; `3 = κ_1` | MAJ-A27 with equality at `P_T` | none |
| §1.2 uniqueness under gap | `T = diag(3,1,1)`, `m = 2` (no gap), `m = 1` | any `P ⊇ e_1` plus a unit vector of `span(e_2,e_3)` maximizes; only `e_1` for `m = 1` | gap needed, uniqueness holds with it | none |
| §1.2 derivative | `T = diag(3,1,1)`, `m = 1`, `H = t·diag(0,1,−1)` | `κ_1(T+H) = 3`, `tr(P_T H) = 0` | agrees | none |
| §1.3 openness | `λ` Lipschitz with constant 1 | preimage of open `Ω` open | PD-A53 suffices | citation |
| §1.4 half-space route | `y = (1,0)`, `T = diag(a,b)`, `a ≥ b` | `⟨y↑, λ(T)⟩ = b = min_u ⟨u,Tu⟩` | concave, lower bound of §1.2 | citation |
| §1.4 concavity route | `f = σ_2^{1/2}`, `S = diag(4,1)`, `T = diag(1,4)` | `∇F(S) = diag(1/4,1)`; `tr(∇F(S)T) = 4.25 ≥ 2`; `dF(S)(T−S) = 2.25 ≥ F(T)−F(S) = 0` | ordering `1/4 ≤ 1` needed and holds | step made explicit, Check |
| §1.4 monotonicity | `f = −σ_1`, `S = diag(1,0) ≤ T = diag(2,0)`; `f = σ_1`; `f ≡ 0` | `−1 > −2`; `1 < 2`; equal with `S ≠ T` | false without `∂f ≥ 0`; strict needs `∂f > 0` | F03 |
| §1.4 `Γ + Γ̄_n ⊆ Γ` | `μ = (1,−1/2) ∈ Γ_1`, `d = (0,1/2)` | `(1−ε, −1/2−ε) + (ε, 1/2+ε) = (1,0) ∈ Γ_1` | holds | shift argument added |
| §1.4 `λ(S) = λ(T)`, `S ≤ T` | `T − S ≥ 0`, `tr(T − S) = Σλ(T) − Σλ(S) = 0` | nonnegative eigenvalues summing to 0 | `S = T` | none |
| Dictionary, Ricci factor | `ℂP¹`, `ω = i∂∂̄ log(1+|z|²)` | `Ric = 2ω`; `g_PSS = 2(1+|z|²)^{−2}`, `Ric_PSS = ω` | factor `1/2`, constant doubles | F06, reviewer's clause corrected |
| §3.4 mass bound | `F = a`, `V = 1`, `|a| ≥ 1`; `|a| < 1`; normalized `F` | `e^{na} ≤ e^{na}|a|^p`; `e^{na} < e^n`; `1 ≤ Ent + e^n` | holds for `p > 0`; trivial when normalized | F08 |
| §3.4 `Ent_q ≤ 1 + Ent_p` | normalized `F`, `0 < q ≤ p` | `|F|^q ≤ 1` on `|F| < 1`, `≤ |F|^p` on `|F| ≥ 1` | holds | none |
| §6.6 openness | strict derivative at a smooth solution | `(u, β) ↦ Δ_{ω_φ}u − β`, §5.2's isomorphism | inverse function theorem applies, implicit one not needed | F05 |
| §7.1 one variable, point mass | `v = log(|t−w_0|/2R)`, `|w_0| = R/2` | `A = log 4`, `M = 2π ≤ 2π log4/log(R/R')`; `(2R/|t−w_0|)^α ∈ L¹` iff `α < 2`; `α_1 < 2` | holds, Jensen threshold `αM < 4π` sharp | Check |
| §7.1 one variable, harmonic | `v ≡ −A` | `M = 0`, integral `πr²e^{αA} ≤ C_1` since `C_H ≥ 1` | holds | Check |
| §7.1 one variable, constant | `α ≤ log(R/R')/A`, `β = αM/2π` | `β ≤ 1`, `∫_{D(0,r)}|t−w|^{−β} ≤ 2π(2R')^{2−β}`, `e^{αC_H A} ≤ (R/R')^{C_H}` | `C_1 = 2π(2R')²(R/R')^{C_H}` | constant corrected from `4π` |
| §7.1 slicing | `g = 1` in polar coordinates | `(1/2π)·|S^{2n−1}|·∫_0^ρ r^{2n−2}·2πr dr = |B(0,ρ)|` | formula correct | none |
| §7.1 radii | `x_0 ∈ B(0,1/4)`, `|t| < 7/4` | `|x_0 + tξ| < 2`; `D̄(0,3/2) ⊂ D(0,7/4)`; `B(x_0,5/4) ⊇ B(0,1)` | consistent | none |
| §7.1 `α(n,A)` | `u = c·log(|z|²/4)` | `A ∼ c`, `α ∼ 1/c`, integrable iff `αc < n` | consistent with Check | none |
| §7.1 slices subharmonic | `Δ_t u(x_0+tξ) = 4H_{i∂∂̄u}(ξ,ξ)`; `−|x|^{−1}` on `ℝ⁴` | `≥ 0` for psh `u`; fails for the subharmonic control | psh used exactly there | Check reworded |
| §8.3 strict sublevel function | `φ_t = −ε·ρ`, `ρ = 1` on `U` | `vol(Ω_ε) ≥ vol(U) > 0`, `vol(Ω_s) = 0` for `s > ε`; `vol(Ω_ε^∘) = 0` | closed version not right-continuous | F04 |
| §8.3 `A_s`, lower bound, Chebyshev | integrand on `{φ_t = −s}`; `Ω_{s+r}^∘` | `(−φ_t − s) = 0`; `−φ_t − s > r`; `Φ(s) ≤ E_t/s` | unchanged by the strict sets | none |

## For the maintainer

- Layer 1 section numbers and plan ids changed as listed at the top; no other roadmap cites ComplexHessianEquations by section (K3Surfaces cites §6.6, unchanged).
- Three new suppliers on main: OperatorTheory/PolarDecomposition (PD-A51–A53), OperatorTheory/PrincipalAngles (PA-B32), OperatorTheory/Majorization (MAJ-A27).
- The reviewer's F06 wording ("the same `λ`") would have been a false dictionary entry; the recorded one is the doubling, with its witness.
- The reviewer's F09 option (a) was taken; the Lelong input was found unnecessary and dropped rather than given a locator. `demailly2012` is a new certified manifest entry cited for §7.1; no `needs-references.toml` was produced.
