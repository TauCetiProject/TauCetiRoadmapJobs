# Repair of HardSphereDynamicsAndKineticLimits (design, round 4)

The findings repaired here are those of `packages/HardSphereDynamicsAndKineticLimits/reports/REV-DESIGN-HardSphereDynamicsAndKineticLimits~3.md`: seven findings, R01–R07. All seven were checked against the mathematics and the cached sources, and all seven are right. Files edited: `packages/HardSphereDynamicsAndKineticLimits/design/README.md`, `packages/HardSphereDynamicsAndKineticLimits/design/plan.json` and `packages/HardSphereDynamicsAndKineticLimits/sources.toml`. No other file was touched.

## R01 (P1) — applied

Layer 7: "infinite for `N ≥ 1` on every position space" → "mass `q_N · ∞`: 0 if `q_N = 0`, ∞ if `q_N > 0`, 1 for `N = 0`". Euclidean sublevel claim: `N ≥ 1`, `r > 0`. Added null-sector Checks (q₈ = 0; ε = 1/3, N = 3). Also: first §7.4 Check, plan 7.4, §9.2 Check.

## R02 (P2) — applied

§5.4: "equals `(X(t), V(t−))`" → "`σ_M V(t) = V(t−)` (left limit within J) at non-least t; `σ_M V(t₀)` defined at a least element; all t on ℝ". §5.1 continuity is now relative to J. Explicit converse. The DengHaniMa2024 comparison is limited to `X = E`, `d ≥ 2`, `J = [0, ∞)`/`[0, T]`. Two Checks added. Plan 5.1/5.4 mirrored.

## R03 (P2) — applied

Changed in plan 8.3: "inherits the specular condition" now reads "inherits it when W_N satisfies it at every matching contact configuration of 𝒟̄_N". The statement, hypotheses and `marginal_specular` were updated, and a test `specular_needs_parent` was added. The same counterexample is now a README §8.3 Check: e^{−1.62} = 0.19790 before scattering, 0 after.

## R04 (P2) — applied

§6.3: "is the measure of the complement…" → "`λ_N(F_j) = λ_N(A_j ∖ S_{δ,R})` ≤ bad-set measure in the jRδ-neighbourhood". F is defined by first failure. `⌈t/δ⌉ ≤ (t+1)/δ` steps for δ ≤ 1 with explicit C₁; trivial bound for δ > 1. Locator: lines 875–898. Negative-control Check added; plan 6.3 mirrored.

## R05 (P3) — applied

Changed in §8.2: "W⁰ concentrated … colliding once at time τ" (a null support) now reads "the pointwise jump `χ(τ(Z))θ(H)(⟨v_1,e_1⟩ − ⟨v_1',e_1⟩)` with τ varying, plus the explicit d = 1 box". On the box τ ∈ (0.9519, 1.0521), H ∈ (0.4802, 0.5204), and the residual is −1. Plan `non_specular` is mirrored.

## R06 (P3) — applied

Checks only:
- §6.3: "K = X", with a K = {0} control.
- §7.4 p = ∞: on `X = E`, with a circle control giving 0.
- §9.2: N ≥ 1.
- §9.4: ρ = 1 + 0.5cos(2πx) (1.5 → 1), with control ρ = 1 + 1_{x=0}.
- §9.6: Maxwellian, with a compact-support control.

Plan tests mirrored.

## R07 (P3) — applied

- §5.3/§7.3: exchangeability locators kept for relabelling only; reversal, translation, boost and conservation "derived here", with input GST2013 (4.1.1)–(4.1.2), lines 835–847.
- §8.4: GST2013 216–220 → BGSS2023 (1.1.9), lines 241–266, plus a counting route.
- §9.2/§9.4: labelled as formalism/equilibrium, invariance derived; §7.1 and §7.3 added to §9.2 Needs.
- Plan and manifest updated.

## Evidence for the findings

All seven findings were confirmed before repair:

- **R01.** The packing bound 8 · π · 0.2² = 1.00531 > 1 empties the N = 8 sector. On the unit circle with ε = 1/3 and N = 3, the admissible positions are exactly the equally spaced triples: the gaps sum to 1 and each is at least 1/3. That set is nonempty and null, so nonemptiness is not the criterion.
- **R02.** IsTrajectory constrains Z only on J, so the reviewer's path with V = e₁ on t < 0 is a trajectory on [0, 1], and its ambient left limit at 0 differs from σ_M V(0) = 0.
- **R03.** The reviewer's W is symmetric, nonnegative and supported in 𝒟̄_2. It takes e^{−1.62} at the incoming state and 0 at the scattered one.
- **R04.** With N = 3 on ℝ, K = {0}, j = 1, the first-failure set is empty, since no configuration of 𝒟̄_3 lies in {0}³. But the near-triple set in [−2, 2]³ near (−1.1, 0, 1.1) has positive measure. GST2013 line 876 assumes t/δ is an integer.
- **R05.** {a : |a + τu| = ε} is a sphere for each u, hence null, and Fubini makes the fixed-τ set null.
- **R06.** On the unit circle B(0, 1) = X, so the indicator is velocity-only. On E with N = 0 the mass is 1. ρ = 1 + 1_{x=0} equals 1 a.e.
- **R07.** GST2013 lines 211–215 and BGSS2023 lines 184–187 are exchangeability statements. GST2013 lines 216–220 define the first marginal only. BGSS2023 lines 158–160 name the fixed-N formalism only.

## Checks run

Dependency gate (after all edits):

```text
candidate: HardSphereDynamicsAndKineticLimits is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
depcheck: 229 roadmaps, 2056 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The design is expected not to be in the merge order yet.

`roadmaps resolve` on the README: no cross-roadmap citation or Lean name found nowhere. (Lean names outside TauCetiRoadmap were not checked by the tool, because it has no pinned Lake packages on that host. The one Mathlib name newly added to a Needs line, `MeasureTheory.measurePreserving_piCongrLeft`, was checked by hand at `Mathlib/MeasureTheory/Constructions/Pi.lean:732`.)

plan.json parses as JSON. Every new prerequisite (2.1, 3.1, 3.2, 5.1, 5.2, 7.1, 7.3) points to an earlier target.

## Suggested.lean and elaboration

This is the design stage, and the package has no `Suggested.lean`. No Lean command was run, so the `#check @name` comparison could not be done. No Lean name was added, renamed or deleted. The only backticked library name added is `MeasureTheory.measurePreserving_piCongrLeft`, which was already in the supplier contracts.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Layer 7 phase mass `q_N · ∞` | Unit torus d=2, ε=.4, N=8; unit circle ε=1/3, N=3; circle N=1; E, N=0 and N≥1 | 8π(.2)²=1.00531>1 ⇒ q₈=0 ⇒ mass 0; equally spaced triples ⇒ q₃=0 ⇒ mass 0 (packing bound 3·2·(1/6)=1, tight); q₁=1 ⇒ ∞; N=0 ⇒ 1; E, N≥1 ⇒ ∞ | Criterion is q_N>0, not nonemptiness; stated |
| Energy sublevel on E and on the torus | E, N≥1, r=0 and r=.5; torus, any N | r=0: vol{V=0}=0 ⇒ ∞·0=0; r=.5, N=d=1: ∞·2=∞; torus: q_N·vol(B^{dN}(√(2r)))≤vol(B) | r>0 added for the infinite claim |
| §5.4 left limit within J | N=1, J=[0,1], V=e₁ on t<0; head-on on ℝ | t=0: σ_MV(0)=0 vs ambient V(0−)=e₁ (excluded); t∈(0,1]: 0=0; head-on t=1: σ_M(0,−e₁)=(−e₁,0)=V(1−) | Restricted to non-least t∈J |
| §5.4 converse | Inverse map Z=(X,σ_M V_Y) | Right limit of Z velocity = V_Y(t+) = σ_M V_Y(t) = V_Z(t); V_Z(t−)=V_Y(t) ⇒ σ_M V_Z(t−)=V_Z(t); 𝒟̄ membership added as a hypothesis | Hypotheses complete |
| §5.4 DHM datum | ε=1, outgoing state x₁=(1,0), v=(0,−e₁) | Incoming datum ((−1,0),0), ⟨v₁−v₂,ν⟩=−1<0; scattered at 0+ to (0,(−1,0)); outgoing datum scattered to ((−1,0),0) ⇒ distance 1−t, e.g. .9 at t=.1 | Check added |
| Plan 8.3 specular inheritance | R03 W at s=N=2; Gaussian control | e^{−1.62}=.197899 vs 0 (|(.9,.9)|=1.27279>1); Gaussian: energy 1.62 both sides ⇒ e^{−1.62}=e^{−1.62} | Parent hypothesis added |
| §6.3 first-failure bound | R04 witness; unit circle, d=1, N=3, ε=.1, R=1, t=.1, δ=.01 | Witness: λ(F₁)=0 ≤ positive bad mass (pair distances 1.1, 2.2, 1.1 ≥ ε; middle within 5 of both); per step 27·(.04)²·4π/3=.18096, ⌈t/δ⌉=10 ⇒ 1.8096=.576π ≤ (t+1)C₁δ=19.905 (C₁=1809.56) | Inequality and ceiling count correct; δ>1 bound μ_X(K)^N vol(B_R)δ |
| §8.2 non-specular box | d=1, N=2, ε=1 box | τ∈(.95192,1.05208), H∈(.4802,.5204); Monte Carlo (2·10⁵) residual −1.00005, exact −1; single collision (relative velocity after swap ∈(.96,1.04)>0) | Positive-measure witness; jump inside integral |
| §7.4 p=∞ | E, N=1; unit circle | E: boundary layer of B(0,1) moved ⇒ ‖U_tf−f‖∞=1; circle: B(0,1)=X ⇒ 0 | X=E specified |
| §9.2 canonical invariance | Maxwellian identity, random d=3, N=4, β=.7 | ΠM=1.3534129·10⁻¹¹ both sides of (β/2π)^{dN/2}exp(−β(2H−2⟨u,P⟩+N|u|²)/2); total mass q_N/Z^{can}=1 | Probability and invariance correct; N≥1 for E Check |
| §9.4 position-dependent | ρ=1+.5cos(2πx), t=1/4, x=0, v=1; ρ=1+1_{x=0} | 1.5→ρ(−1/4)=1.0; a.e.-modified ρ equals 1 a.e. ⇒ invariant law | Check fixed |
| §9.6 diagonal | M_{1,0}; compact-support datum | F₂=0<M(v₁)M(v₂); outside support 0=0 | Positive datum named |
| §8.4 counting route | (N,s)=(3,2),(0,0),(2,2) | 6, 1, 2 injections; each term ∫W_N h(z₁,…,z_s) by relabelling | Route sound; locator BGSS2023 (1.1.9) |

## Sources

No new source was fetched and no text was requested. Every new locator points into the three cached texts (GST2013 lines 211–215, 396–399, 835–847, 875–898; BGSS2023 lines 158–160, 184–187, 241–266, 249; DengHaniMa2024 lines 140–172). The six uncertified works stay settled and were not listed again. There is no `needs-references.toml`.

## For the maintainer

- No Lean name of this roadmap changed, and no section or target was renumbered, so no citing roadmap is affected.
- Ownership: the repairs add no new construction or carrier, only hypotheses, routes, Checks and locators. So ownership was not re-checked against open pull requests beyond the overlap file, which lists no shared or dropped ids.
- No supplier gap and no supplier edge was added.
- No suspicious instructions were found in the review text.
