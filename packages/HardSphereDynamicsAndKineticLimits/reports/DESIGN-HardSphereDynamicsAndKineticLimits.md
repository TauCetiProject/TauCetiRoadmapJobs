# DESIGN-HardSphereDynamicsAndKineticLimits: design report

Files: `packages/HardSphereDynamicsAndKineticLimits/design/README.md`, `packages/HardSphereDynamicsAndKineticLimits/design/plan.json`, `packages/HardSphereDynamicsAndKineticLimits/sources.toml` (cited_for and locators updated; no entry added or removed).

## What the design covers

Ten layers, 45 targets (22 definitions or constructions with at least three Checks each, 23 theorems), every one with a locator into GST2013, BGSS2023 or DengHaniMa2024 (certified texts read in the cache), plus the settled uncertified citations Alexander1976 and Lanford1975 for the original statements.

1. Flat position spaces: a class `FlatPositionSpace d X` (cover `π : E →+ X`, injectivity radius ρ, local isometry and local measure axioms) with instances Euclidean space (ρ = ∞) and `FlatTorus L = E ⧸ L` for a full lattice (ρ = half the shortest vector); shells and packing bounds. This is the uniform carrier the target asked for; both source settings are instances.
2. Scattering `σ_ν` (T1) and the pre/post-collisional change of variables with the total cross-section.
3. Hard-core sets, contacts, contact normals through the short lift, boundary pieces, contact scattering, reversal ℛ, free transport, conserved quantities.
4. The two-body problem: collision time, two-body map `B_s`, the collision map `C` with `det DC = 1` (block lower triangular after two shears), measure preservation of `B_s`, pair maps as skew products. This supplies the measure invariance that GST2013 line 883 uses without proof.
5. Trajectories (right-continuous velocities, matching contacts, outgoing condition), uniqueness and gluing (T2), symmetries including time reversal, the left-continuous convention of DengHaniMa2024, the good set `G`.
6. Alexander's theorem (T3): near-triple estimate (GST2013 Lemma 4.1.1 on a flat position space), short steps, iteration, `λ(𝒟̄ ∖ G) = 0`, Borel measurability.
7. The flow (T4) as an exact group action (identity off `G`), measure preservation, symmetries, the Koopman group as a Tau Ceti `StronglyContinuousGroup` on `Lp`, `1 ≤ p < ∞`, the grand canonical phase space.
8. Transported densities, the weak Liouville equation with specular reflection (T5), marginals (T6), symmetric expectations.
9. Maxwellians, invariant and canonical measures, the grand canonical measure, its invariance (T7), correlation functions with BGSS2023 (1.1.9)–(1.1.11), initial chaos and the Boltzmann–Grad scaling bound.
10. Empirical measure, the Boltzmann collision operator, mild solutions, `HardSphere.LanfordStatement` (T8, as a proposition), and the proved law of large numbers `HardSphere.tendsto_empirical_of_correlation`.

Intended `Suggested.lean` declarations (the only own names backticked in the README): `FlatPositionSpace`, `FlatTorus`, `HardSphere.scatter`, `HardSphere.scatter_involutive`, `HardSphere.scatter_conserves`, `HardSphere.measurePreserving_scatter`, `HardSphere.hardCoreSet`, `HardSphere.IsTrajectory`, `HardSphere.IsTrajectory.eqOn`, `HardSphere.goodSet`, `HardSphere.volume_hardCoreSet_diff_goodSet`, `HardSphere.flow`, `HardSphere.flow_add`, `HardSphere.measurePreserving_flow`, `HardSphere.flow_reversal`, `HardSphere.weak_liouville`, `HardSphere.grandCanonical`, `HardSphere.grandCanonical_flow_invariant`, `HardSphere.correlation`, `HardSphere.lintegral_sum_distinct_eq_correlation`, `HardSphere.boltzmannGrad_scaling`, `HardSphere.empirical`, `HardSphere.collisionOperator`, `HardSphere.IsMildBoltzmannSolution`, `HardSphere.LanfordStatement`, `HardSphere.tendsto_empirical_of_correlation`, `HardSphere.LanfordStatement.tendsto_empirical`. None of these names occurs on main, in any open roadmap pull request (`roadmaps grep`), or at the Mathlib and Tau Ceti pins.

## Changes against the triaged target

Each of these was found by computing an instance; the README states the corrected form.

1. **`UnitAddTorus` is the wrong metric carrier.** At the pin `UnitAddTorus d := d → UnitAddCircle` (`Mathlib/Topology/Instances/AddCircle/Real.lean` line 52) carries the Pi supremum norm. At `(1/2, 1/2)` it gives 1/2, the Euclidean torus distance is `√2/2 ≈ 0.7071`; at `(0.1, 0.1)` it gives 0.1 against `0.1414`. Hard spheres on it would be hard cubes. The design builds `FlatTorus L = E ⧸ L` with the quotient norm and compares with `UnitAddTorus (Fin d)` only as a measured group (§1.3, Checks in §1.1 and §1.3).
2. **Invariance for velocity profiles depending only on `|v|` is false.** The target's T7 claims invariance when `f⁰` depends on `v` only through `|v|`. Witness (d = 2): `g = 1_{|v| ≤ 1}`, `v = (0, 0.9)`, `w = (0.9, 0)`, `ν = (1, 0)` is an incoming pair (`⟨v − w, ν⟩ = −0.9`); `σ_ν(v, w) = ((0.9, 0.9), 0)` with `|(0.9, 0.9)| ≈ 1.2728`, so `g(v)g(w) = 1` but `g(v')g(w') = 0`. Invariance holds for `f⁰ = c M_{β,u}` (Maxwellian, any mean velocity) and `x`-independent, on a position space of finite measure (§9.4); the counterexample is a Check there.
3. **No confinement is needed on ℝᵈ for the grand canonical measure.** The target says the normalisation on ℝᵈ needs a finite volume or a confining profile. For integrable `f⁰ ≥ 0`, `Z ≤ Σ_N μ^N (∫f⁰)^N/N! = exp(μ∫f⁰)` on every position space; DengHaniMa2024 (1.7)–(1.8), lines 211–223, uses exactly this on ℝᵈ. What needs finite volume is the canonical Maxwellian measure (infinite mass on ℝᵈ), §9.2. On tori `Z` is moreover a finite sum (§1.4 packing bound).
4. **"Almost everywhere group law" strengthened.** Defining the flow as the trajectory map on the invariant good set `G` and the identity off `G` gives an exact group action of ℝ on the whole space, which is measure preserving; the a.e. statements of the target follow (§7.1–7.2). This resolves the target's main risk (no library shape for a.e. flows) without a new structure.
5. **Time reversal needs the contact scattering.** With right-continuous velocities, `(t, X, V) ↦ (−t, X, −V)` turns a trajectory into one with left-continuous velocities (the outgoing contact state `x = ((1,0), 0)`, `V = ((1,0), 0)` becomes incoming). The design uses `ℛ(X, V) = (X, −σ_M V)` (§3.3, §5.3, §7.3).
6. **Lanford's theorem is stated as a `Prop`, not a sorry'd theorem.** `Suggested.lean` states what the finished roadmap proves; this roadmap does not prove Lanford's theorem. `HardSphere.LanfordStatement d : Prop` (like Mathlib's `FermatLastTheorem`) is a definition with a real body, proved by the BBGKY roadmap; the theorems proved here are its LLN consequence and its `t = 0` case (§9.6, §10.4 API).
7. **Uniqueness of weak Liouville solutions is not planned.** The duality argument needs test functions transported by a discontinuous flow; neither GST2013 nor BGSS2023 proves uniqueness. The transported density is characterised by the Lagrangian identity (§8.1), which every consumer uses. The weak equation itself is proved for a coordinate-free class of admissible test functions (material derivative along free transport plus the specular condition), with a Check showing the specular condition is necessary.
8. **"Inherits the specular boundary condition"** (target T6) is meaningless for `L¹` classes; the design states it for genuine functions satisfying the condition at all matching contact configurations (§8.3).
9. **Simultaneous disjoint collisions are allowed.** GST2013 lines 851–854 call only collisions of more than two particles pathological; the design's trajectories allow contact matchings, so the null-set theorem does not need the (true but unnecessary) nullity of simultaneous disjoint collisions.
10. **Dimension.** The dynamics is proved for every `d ≥ 1` (no step uses `d ≥ 2`); `d ≥ 2` is kept where the sources impose it (the cross-section formula and Lanford's proposition).
11. **Suppliers.** The target proposed HamiltonianSystems, IncompressibleFlows and PointProcesses (open pull requests of other authors). None is needed: free transport is a shear whose measure preservation is Fubini plus translation invariance; the hard-sphere flow's measure preservation comes from the two-body Jacobian (Layer 4), not from Liouville's theorem; the Koopman group uses Mathlib's `MeasureTheory.Lp.compMeasurePreserving` and Tau Ceti's `TauCeti.Semigroups.StronglyContinuousGroup`; the Poisson comparison uses Mathlib's `ProbabilityTheory.poissonMeasure`. StandardDistributions and OneParameterSemigroups (main) own the Gaussian density and C₀-groups and are cited through their pinned Tau Ceti declarations. The roadmap therefore has no roadmap supplier.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §1.1 class axioms | E (ρ = ∞); unit torus d = 2; `UnitAddTorus (Fin 2)` with coordinate cover | torus: `‖[(1/2,1/2)]‖ = 0.7071`, short lift of `[(0.9,0)]` = `(−0.1,0)`; sup torus: `‖[(0.1,0.1)]‖ = 0.1` vs lifts `≥ 0.1414` | sup-norm torus fails the lift axiom | Check added; carrier is `FlatTorus` |
| §1.1 local measure axiom, normalisation | `FlatTorus (2ℤ×ℤ)` with probability normalisation | ball r = 1/4: Lebesgue `π/16 = 0.19635`, normalised `π/32` | wrong normalisation excluded | Check |
| §1.3 ρ = λ₁/2 | unit lattice; `2ℤ × ℤ` | λ₁ = 1 in both, ρ = 1/2; covolumes 1, 2; `π(e₁/2) = π(−e₁/2)` with `|±e₁/2| = 1/2`, so injectivity fails for any ρ > 1/2 | radius maximal | none |
| §1.4 shell formula | E, d = 2, shell [1, 1.1]; unit torus d = 1, shell [0.4, 0.6] | `π(1.21 − 1) = 0.65973`; torus true 0.2 vs formula 0.4 | hypothesis `r₂ < ρ` needed | hypothesis stated, Check |
| §1.4 packing | unit torus d = 2, ε = 0.4 | `ω₂(0.2)² = 0.12566`, `1/0.12566 = 7.96` | N ≥ 8 empty | Check |
| §2.1 σ_ν algebra | oblique `v = (0,0.9)`, `w = (0.9,0)`, ν = e₁; head-on `(1,0),(−1,0)`; grazing `(0,1),0`; `v = w` | oblique → `((0.9,0.9),(0,0))`, energy 1.62 = 1.62, momentum (0.9,0.9) both; head-on → `((−1,0),(1,0))`; grazing fixed; `σσ = id` at oblique | true | none |
| §2.1 determinant | reflection in `(ν, −ν)^⊥` in `WithLp 2 (E×E)` | `σ(v,w) = (v,w) − ⟨(v,w),(ν,−ν)⟩(ν,−ν)` = reflection in unit vector `(ν,−ν)/√2`; det = −1 | true | API compares with `Submodule.reflection` |
| §2.1 non-example | separate reflection on `((1,0),0)` | gives `((−1,0),0)`, momentum (1,0) → (−1,0) | excluded by momentum law | Check |
| §2.2 Θ and cross-section | oblique witness; d = 2, 3; probability-normalised sphere | `(w−v)·ω = 0.9 = (w'−v')·(−ω)`; d = 3: `2π∫₀^{π/2} cosθ sinθ dθ = π`; d = 2: `∫(cosθ)_+ dθ = 2`; normalised d = 3: `π/4π = 1/4` | true; normalisation pinned | Checks |
| §3.1 hard-core set on torus | unit torus ε = 0.4, `π(0.05,0)`, `π(0.95,0)` | torus distance 0.1, representative distance 0.9 | wrap-around must use quotient norm | Check |
| §3.2 contact normal on torus | ε = 0.3, `π(0.1,0)`, `π(0.8,0)` | short lift of difference `(0.3,0)`, ν = (1,0); naive `(−0.7,0)` | short lift needed | Check |
| §3.2 boundary pieces | `x = ((1,0),0)`, `v_i ∈ {(1,0),(−1,0),(0,1)}` | normal relative velocity 1, −1, 0 | ∂⁺, ∂⁻, neither | Check |
| §3.3 reversal ℛ | outgoing contact `V = ((1,0),0)` | `σ_M V = (0,(1,0))`, `ℛ = (X,(0,(−1,0)))`, normal rel. velocity `0 − (−1) = 1 > 0` | outgoing preserved; `(X,−V)` gives −1 (incoming) | ℛ replaces naive reversal |
| §3.4 free flow | torus `S₁(π0, e₁)`; E head-on at t = 1.5 | `π(e₁) = 0`; distance `2 − 1.5 = 0.5 < 1` | periodic; leaves 𝒟̄ | Checks |
| §3.5 conservation | oblique witness | P = (0.9,0.9), H = 0.81 before/after | true | none |
| §4.1 collision time | head-on `a=(2,0), u=(−1,0)`; grazing `a=(1,3), u=(0,−1)`; miss `a=(2,3)`; contact `|a| = ε` | D = 1, τ = 1, `⟨q,u⟩ = −1`; D = 9 − 9 = 0; D = 9 − 12 = −3; at `|a| = ε`, `√D = |⟨a,u⟩|` so τ = 0 | true; larger root 3 is the exit time | Check on larger root |
| §4.2 two-body map | head-on s = 3; oblique `a=(3,0.6), u=(−1,0)` | `B₃ = ((3,0),(1,0))`; D = 9 − 8.36 = 0.64, τ = 2.2, q = (0.8,0.6), `R_q u = (0.28,0.96)`, norm 1 | true; `u ↦ −u` gives (1,0) | Checks |
| §4.2 reversal API | `B₃(b,−u')` with `(b,u') = ((3,0),(1,0))` | D = 1, τ = 2, q = (1,0), result `((2,0),(1,0)) = (a,−u)` | true | none |
| §4.3 det DC = 1 | random points of U in d = 2, 3, 4 (finite differences, 12 points); frozen-normal map | det DC = 1.000000 and det DB_{τ+0.7} = 1.000000 at all 12; frozen map det = det R = −1 | true | Check |
| §4.3 route (shears) | symbolic: `Y + τU' = q`, `d(Y+τU') = dq`, `dY + τdU' = dq − U'dτ = R_q w` | `w − (u − R_q u)(q·w)/(q·u) = w − 2q(q·w)/ε² = R_q w` | block lower triangular, det `(det R)² = 1` | route written |
| §4.4 measure preservation | grazing set for fixed u ≠ 0; inelastic rule | grazing set = cylinder `|a_⊥| = ε` (null for d ≥ 1); inelastic image has dimension 2d − 1 | true; inelastic not measure preserving | Check |
| §4.5 pair map | head-on as N = 2; torus pair | `x(3) = ((1,0),(−2,0))`; torus `a = (0.3,0)`, `⟨a,u⟩ = −0.3`, D = 0.09 > 0, τ = 0 | true | Checks |
| §5.1 trajectory definition | N = 1; head-on; pass-through; left-continuous version | pass-through distance `2 − t < 1` for t > 1; left-continuous `V(1) = ((−1,0),0)`, normal rel. velocity −1 | excluded paths fail stated conditions | Checks |
| §5.2 uniqueness | outgoing state at time 0; gluing [0,2] ∪ [1,3]; grazing two-body path | `x₂(2) = (−2,0)` for both; glued end `((1,0),(−2,0))` | true; outgoing condition not used in the proof | Check records that |
| §5.3 symmetries | reversal of head-on; boost c = (1,0); quarter-turn of velocities | reversal at time −3: `((1,0),(−2,0); 0,(1,0))`, collision at −1; boost collides at time 1; rotated `v₁ = (0,−1)` never meets particle 2 | true; rotation alone not a symmetry | Checks |
| §5.4 left-continuous convention | head-on at time 1 | left state `v₁ = (−1,0), v₂ = 0` | DengHaniMa2024 Def. 1.1 recovered | none |
| §5.5 / §6.4 N = 2 exceptional set | `u = 0` at contact; `D < 0`; `D = 0`; `D > 0` with `|a| > ε`; contact with `⟨a,u⟩ ∈ {<0, 0, >0}` | exceptional: `{u ≠ 0, D = 0} ∪ {|a| = ε, ⟨a,u⟩ ≤ 0}`; both null | true | Check |
| §5.5 triple contact | equilateral triangle of side ε, d = 2 | three contact pairs pairwise sharing a particle | not a matching, not in G | Check |
| §6.1 near-triple estimate | N = 2; single pair shell d = 2 | I = ∅; shell area `π(2η + η²)` | order η² needs three particles | Checks |
| §6.2 step map | head-on δ = 3, R = 1 | ε + 2Rδ = 7 < ∞; Φ₃ = B₃ in relative coordinates | true | Check |
| §6.3 iteration | torus vs E | torus factor `μ_X(X)^{N−2} = 1`; E factor `(r + jRδ)^{d(N−2)}`, sum over `j < t/δ` times δ² is `O(δ)` | true | Checks |
| §7.1 flow | head-on `T₃` and `T₋₃` | `T₃` → `((1,0),(−2,0); 0,(−1,0))`, `T₋₃` back | exact group law | none |
| §7.2 measure preservation | N = 2 on E; 1_𝒟̄ | relative + centre of mass; `1_𝒟̄ ∘ T_{−t} = 1_𝒟̄` since T preserves 𝒟̄ and fixes its complement | true | none |
| §7.3 reversal of flow | head-on | `ℛT₃Z = ((1,0),(−2,0); 0,(1,0))`; `T₋₃ℛZ` computed backwards: contact at −1, pre-collision velocities `(0,(1,0))`, positions at −3 `(1,0),(−2,0)` | equal | none |
| §7.4 Koopman group | p = ∞, N = 1, `f = 1_{B(0,1)} ⊗ 1_{|v−e₁|<1/2}` | `‖U_t f − f‖_∞ = 1` for every small t ≠ 0 | p = ∞ excluded | hypothesis `p < ∞` |
| §7.5 grand phase space | N = 0 component; torus d = 2 ε = 0.4 | `Measure.pi` over `Fin 0` = Dirac, weight 1/0! = 1; N ≥ 8 null | true | Checks |
| §8.1 transport sign | N = 1 on E | `W(1)((1,0),(1,0)) = W⁰(0,(1,0))`; wrong sign uses `x + tv` | pinned | Convention witness |
| §8.2 weak Liouville | `φ = χ(t)ψ(H)`; `φ = χ(t)⟨v₁,e₁⟩` on head-on data | first: `∫₀^∞χ' = −χ(0)`; second: left side `∫W⁰ χ(τ)(⟨v₁,e₁⟩ − ⟨v₁',e₁⟩)`, bracket `−1 − 0 = −1` | specular condition necessary; `W⁰ = 0` off 𝒟̄ needed since T is the identity there | hypotheses stated |
| §8.3 marginals | unit torus N = 2, `g = g̃(v)` | marginal `g(z₁)(1 − ω_d ε^d)∫g̃`; without indicator `g(z₁)∫g̃` | true | Checks |
| §8.4 symmetric expectations | s = 2, N = 3, h = 1 | injective maps 6 = 3!/1!; all maps 9 | factor is the falling factorial | Check |
| §9.1 Maxwellian | d = 1, β = 1; d = 3 Gaussian integral; Tau Ceti PDF with `S = β⁻¹I` | `M(0) = 0.39894`; `(2π)^{3/2} = 15.7496`; `(2π)^{−d/2}(β^{−d})^{−1/2} = (β/2π)^{d/2}`, `S⁻¹ = βI` | agrees with `multivariateGaussianPDFReal` | none |
| §9.2 canonical | N = 1 torus; N = 8, ε = 0.4, d = 2; E | `Z^can = 1`; `Z^can = 0`; infinite mass on E | canonical defined only for `Z^can > 0`, finite μ_X | hypotheses stated |
| §9.3 grand canonical | ε = 0, `∫f⁰ = 1`, μ = 2; ε > 0 on E; weights without `1/N!` | `Z = e² = 7.389`, `P(N=1) = 2e^{−2} = 0.27067`; `Z ≤ e^{μ}`; `Σ(μ∫f⁰)^N` diverges for `μ∫f⁰ ≥ 1` | target's confinement claim false | change 3 above |
| §9.4 invariance | Maxwellian with drift; radial indicator; position-dependent profile | `Σ|v_i − u|² = 2H − 2⟨u,P⟩ + N|u|²`; radial witness 1 → 0; free transport moves `ρ(x)` | target's radial claim false | change 2 above |
| §9.5 correlation identity | n = 1, h = 1; ε = 0 | `E[N] = μ∫F₁`; `F_n(0) = (f⁰)^{⊗n}` exactly | true; inversion formula needs a Gaussian bound and finite μ_X | hypotheses added |
| §9.6 initial chaos / scaling | unit torus `f⁰ = M_{1,0}`, d = 3, ε = 0.01; diagonal `x₁ = x₂` | `ω₃ε = 4.18879 × 0.01 = 0.0419`; `F₂(0) = 0` on the diagonal | bound `[1 − 0.0419, 1]`; convergence off diagonal only | Checks |
| §10.1 empirical measure | `N ≥ 1`; empty configuration | `π_t = (N/μ)·empiricalMeasureOfFintype`; empty gives 0, outside the range of a probability-valued map | true | Check |
| §10.2 collision operator | Maxwellian; d = 3 loss at v = 0; kernel sign; d = 1 | `Q(M,M) = 0`; loss `M(0)·π·√(8/π)` with `√(8/π) = 1.5958`; `σ_{−ω} = σ_ω` makes both kernels equal; d = 1: σ swaps, Q ≡ 0 | true | Checks |
| §10.3 mild solution | stationary Maxwellian; Q = 0 | `M + ∫Q(M,M) = M`; free solution `f⁰(x − π(tv), v)` vs wrong `x + π(tv)` | true | Checks |
| §10.4 Lanford proposition | t = 0; Maxwellian datum; a.e. along filter vs sequences | §9.6 gives all three conclusions at t = 0 with `f = f⁰`; Maxwellian admissible iff `C₀ ≥ (β₀/2π)^{d/2}` | consistent; sequences used for a.e. | quantifier order `∀C₀β₀ ∃T₀ ∀f⁰ ∃f` |
| §10.5 LLN | variance with `F₂ → 2f⊗f`; Poisson ε = 0 | limit variance `0 + 2m² − 2m² + m² = m²`; Poisson `Var(π(h)) = μ^{−1}∫f⁰h²` | both F₁ and F₂ hypotheses needed | Check |
| Convention: right-continuity | head-on | state at time 1 `(0,(−1,0))` | pinned | Conventions witness |
| Convention: diameter and normal direction | `x_i = (1,0)`, `x_j = 0`, ε = 1 | `ν_ij = (1,0)`, `v_i = (−1,0)` incoming (−1 < 0) | pinned | Conventions witness |
| Convention: μ_ε | d = 3, ε = 0.1 | `μ = 0.1^{−2} = 100` | pinned | Conventions witness |

Context checks: every dynamical statement carries `0 < ε < ρ` (the short lift and contact normals need it; at ε ≥ ρ on a torus the shortest representative of a contact is not unique). The weak Liouville equation and the transport identities carry `W⁰ = 0` off `𝒟̄`, without which the identity map off `G` would break the equation. Measures on `𝒟^ε` are on a type independent of ε, so the convergence statements of Layer 10 compare measures on one space.

Duplication by object: Mathlib at the pin has no hard-sphere, specular-reflection, billiard-flow, a.e.-flow or kinetic material; its quotient norm, lattice fundamental domains, Jacobian change of variables, `toSphere`, Gaussian and Poisson laws and `Lp` composition are cited, not restated. Tau Ceti at the pin has the Gaussian density, `StronglyContinuousGroup`, `empiricalMeasureOfFintype` and `flowOfLipschitz`, all cited. ComplexTori (main) owns complex tori as complex Lie groups, a different structure from the Euclidean flat torus; the open CotangentLagrangian roadmap's convex planar billiards (interior billiard map) and PointProcesses' finite point processes with Poisson density (unlabelled point measures) are different objects.

## Notions moved down

None. No notion used here is planned by a roadmap later in the merge order.

## Proposed Part IIs and future roadmaps

- A roadmap on the BBGKY hierarchy and Lanford's theorem proving `HardSphere.LanfordStatement` (GST2013 Chapters 5–7, Part IV).
- A Part II of this roadmap: the uniform bound on the number of collisions of N hard spheres (DengHaniMa2024 Proposition 1.2(2), lines 184–185; Burago–Ferleger–Kononenko), the image of the grand canonical measure as a finite point process with a hard-core density (bridging to PointProcesses, Layer 5), and uniqueness of weak solutions of the Liouville equation in a class to be fixed there.
- Roadmaps on fluctuations and large deviations (BGSS2023 Theorems 2–3), long-time derivations (DengHaniMa2024 Theorem 1), the Boltzmann equation (Cauchy problem, H theorem, characterisation of collision invariants), infinite hard-sphere systems (Alexander1976), short-range potentials (GST2013 Part III), and dispersing billiards.

## Gaps

None. Every prerequisite is a pinned Mathlib or Tau Ceti declaration (read at the pin) or an earlier target of this roadmap.

## Sources

Read in the cache: GST2013 (Chapters 1–4, Theorems 4 and 8; lines 175–230, 370–560, 640–720, 820–1240, 2040–2095), BGSS2023 (§1.1–1.3, lines 110–520; Theorem 4 lines 2270–2306; equilibrium remark line 3539), DengHaniMa2024 (§1.1, lines 125–300). Settled as uncertified and cited by locator only: Alexander1976, Lanford1975, CIP1994, Spohn1991, Uchiyama1988, AlexanderThesis1975 (the last four as background in References). No text the design needs is missing; `needs-references.toml` was not written. Numbering: the locators are line numbers of the arXiv versions recorded in the manifest (GST2013 v2, BGSS2023 v2, DengHaniMa2024 v3); theorem and equation numbers are those of these versions.

No fetched or read text contained instructions; nothing suspicious was found.

## Ownership against open pull requests

Checked by object with `roadmaps grep` over main and all 457 open roadmap pull requests at their heads (hard sphere, Boltzmann, billiard, specular, Maxwellian, BBGKY, Lanford, grand canonical, Gibbs measure, kinetic, Koopman, transport equation, Liouville equation, empirical measure, correlation function, flat torus, lattice quotients, `UnitAddTorus`, the proposed Lean names). Only unrelated uses were found (listed under Duplication by object). Board packages: `HamiltonianSystems`, `IncompressibleFlows` and `PointProcesses` hold review reports only; the four packages under review in the board index are unrelated.

## Dependency check

`tauceti-roadmap gate --candidate packages/HardSphereDynamicsAndKineticLimits/design/README.md --only HardSphereDynamicsAndKineticLimits`:

```
candidate: HardSphereDynamicsAndKineticLimits is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 241 roadmaps, 2309 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere; it did not check Mathlib and Tau Ceti names on this host, so every one of the 44 cited library names was checked against the pinned sources (all present; namespaces confirmed by reading the files).
