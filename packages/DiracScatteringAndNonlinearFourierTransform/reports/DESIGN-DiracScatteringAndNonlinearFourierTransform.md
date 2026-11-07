# Design report: DiracScatteringAndNonlinearFourierTransform

## What the design covers

The design is `packages/DiracScatteringAndNonlinearFourierTransform/design/README.md`; the same plan as data is in `packages/DiracScatteringAndNonlinearFourierTransform/design/plan.json`. It has 9 layers, 57 targets (36 theorems, 14 definitions, 7 constructions) and 186 tests. There are no gaps and one roadmap supplier, AnalyticNumberTheoryPartI §0.23. The sources manifest `packages/DiracScatteringAndNonlinearFourierTransform/sources.toml` has 12 entries:

- 7 certified: poltoratski2024, mauth2022, denisov2006, romanov2014, taothiele2012, killipsimon2003, mnatsakanyan2022.
- 1 uncertified: garnett2007.
- 4 waived: krein1955, debranges1968, remling2018, coddingtonlevinson1955.

`sources check` reports 0 problems. No `needs-references.toml` was written.

- **Layer 1, Carathéodory linear systems (1.1–1.7).**
  - Integral Grönwall inequality with an integrable kernel.
  - Linear Carathéodory theorem with `‖P‖ ∈ L¹`, in a Banach space over ℝ or ℂ.
  - Two-parameter propagator with cocycle, Dyson expansion and variation of constants.
  - Liouville's formula and continuous dependence in `L¹`.
  - Holomorphic dependence on a parameter.
  - Nonlinear Carathéodory theorem with an integrable Lipschitz modulus, global and local.
  - These generalise the pinned Tau Ceti results `TauCeti.exists_continuousOn_eq_forall_mem_Icc_eq_picard` (essentially bounded coefficient) and `TauCeti.le_mul_exp_of_le_add_mul_integral` (constant kernel), which become Checks.
- **Layer 2, half-plane function theory (2.1–2.8), at the generality Layers 4–8 use.**
  - Poisson and Schwarz integrals of Poisson-finite measures.
  - Positive harmonic functions, via Tau Ceti's Nevanlinna representation and half-plane primitives.
  - Nontangential maximal bounds, via Tau Ceti's `maximalFunction`.
  - Fatou's theorem for Poisson integrals.
  - Boundary values and uniqueness for `H^∞(ℂ₊)`.
  - `H²(ℂ₊)` and the Paley–Wiener spaces `PW_t`.
  - Outer functions.
- **Layer 3 (3.1–3.3).**
  - Dirac system with a complex potential `q = f + ig` and `Q_q = [[g, f], [f, −g]]`.
  - Fundamental matrix, `E`, `Ẽ`, and the Hermite–Biehler property with its exact identity.
- **Layer 4 (4.1–4.5).**
  - Scattering matrix `G` and the dictionary with `E`, `Ẽ`.
  - Concatenation, translation, modulation and dilation laws.
  - Dyson bounds.
  - The half-plane inequality `|a|² − |b|² ≥ 1`, by a J-monotonicity argument without Hardy spaces.
  - Outerness and the finite non-linear Plancherel identity with constant π/2.
  - Riccati representation.
- **Layer 5 (5.1–5.6).**
  - `L²` scattering limit in ℂ₊, by the Riccati route with explicit bounds.
  - Non-linear Fourier transform `q⌃` and its boundary values.
  - Plancherel inequality and identity at ∞.
  - Outerness of `a(∞, ·)` with an explicit recovery formula from `q⌃`.
  - `L²(ℝ)` convergence of truncations with rate `4π‖q‖²_{L²(T,∞)}`, and convergence of `a`, `b` in Π-measure.
  - Elementary rules, including the first-order approximation with an explicit cubic error.
- **Layer 6 (6.1–6.8).**
  - de Branges spaces of a general Hermite–Biehler function.
  - `B(E(t,·)) = PW_t` with norm bounds `e^{±∫|q|}`.
  - The isometric chain, by a direct derivative computation and the `H²` product law.
  - Weyl discs, limit point and the Weyl function `m = lim −Ẽ/E`.
  - Neumann and Dirichlet spectral measures, with `w w̃ ≤ 1`.
  - Isometric embedding `PW_t → L²(μ)` and uniqueness of `μ`.
  - Relative entropy and its upper semicontinuity (Killip–Simon).
  - The Szegő condition, with the explicit bound `∫ log w dΠ ≥ −2π log 2 − π‖q‖²`.
- **Layer 7 (7.1–7.3), real potentials.**
  - Meromorphic inner functions.
  - Phase-derivative representation of Hermite–Biehler functions of order one, via AnalyticNumberTheoryPartI §0.23.
  - Poltoratski's Lemma 1.
  - Dirac inner functions, the Riccati equation and the motion of resonances.
- **Layer 8 (8.1–8.9).** Poltoratski's §§6–8:
  - boxes and resonance sets;
  - Lemmas 2–5 and Corollary 1 (universality, `L²` and uniform proximity of kernels, numerators);
  - Lemma 6 and Corollary 2 (near a resonance);
  - Corollary 3 (away from resonances);
  - Lemma 7 (joint approximation);
  - Lemma 8 (matching at the point).
- **Layer 9 (9.1–9.8).** Poltoratski's §9 in arXiv v14:
  - subinterval scattering data;
  - an exact trigonometric evaluation of `a_{t₁→t₂}(s)`, `b_{t₁→t₂}(s)`;
  - Lemma 9;
  - insertion of a zero interval, with an exact increment identity;
  - Lemma 10 in a robust form;
  - absence of resonances near almost every point;
  - asymptotics of `E`, `Ẽ`, `|a|`, `|b|`;
  - the non-linear Carleson theorem, its strong form and the boundedness of generalised eigenfunctions.

**Design decisions.**

1. **The half-plane Hardy layer is owned here.** The triage suggested either planning it here or carving out a supplier roadmap `HardySpacesOfTheHalfPlane`. No such roadmap exists, and this job cannot create one. The principle "a notion the library lacks is planned once, by the roadmap that should own it" therefore makes this roadmap the owner. Layer 2 is scoped to what Layers 4–8 use, and is about 14% of the README by line count (245 of 1,816 lines), under the triage's "quarter" threshold. Outer functions, `H^∞` boundary values and `H²` are planned in full.
   - The Smirnov class `N⁺` and the full inner–outer factorisation are not needed and not planned: the route of Layer 5 replaces Poltoratski's Smirnov-class argument (poltoratski2024 line 530–544) by an explicit concatenation and tail argument.
   - A later Hardy-space roadmap would consume Layer 2 (listed under Downstream consumers).
2. **No unbounded operators.** The triage suggested importing UnboundedOperators UO-D07 for a self-adjoint Dirac operator. That roadmap is not in the merge order, so it cannot be a supplier. The design does not need it anyway: spectral measures come from Weyl functions, Tau Ceti's Nevanlinna representation and truncation (Layer 6), and the isometric chain is proved directly (§6.3).
3. **Non-linear Plancherel constant π/2.** The sources print constant 1. Three independent computations give `π/2` in this normalisation (convention `G′ = [[0, e^{−2izt} q̄], [e^{2izt} q, 0]] G`):
   - the first-order Plancherel computation;
   - the asymptotics `y(a(t, iy) − 1) → ½∫|q|²`, numerically 0.4987 at `y = 100`;
   - direct numerical integration for `q = 1` on `[0, 1]`: 1.5707 against π/2.

   Denisov's constant π for Krein systems translates to π/2 through his dictionary `a(r) = 2 Re A(2r)`. The triage's "c = 1 in Poltoratski's normalisation" is therefore corrected.
4. **Position of `q` in the scattering system.** The triage proposed `[[0, e^{−2izt} q], [e^{2izt} q̄, 0]]`. For the Dirac system with `Q_q = [[g, f], [f, −g]]` and `q = f + ig` (Poltoratski's general potential, line 144–146), the correct system is `[[0, e^{−2izt} q̄], [e^{2izt} q, 0]]`, verified numerically against the Dirac solution. The first-order term of `q⌃` is therefore `∫ q e^{2izs}`, not `∫ q̄ e^{2izs}`. The Mathlib Fourier-transform witness is `𝓕(q 1_{[0,∞)})(−x/π)`, not the triage's "evaluated at −2x".
5. **Generality.**
   - Layers 1–6 are stated for complex potentials. The proofs use only that `Q_q` is real symmetric and trace-free, and this was checked numerically on a smooth complex potential: `det M = 1`, the dictionary, HB, the Riccati formula, `Im(−Ẽ/E) = 1/|E|²`.
   - Layers 7–9 stay with real `f`, as in the source. Poltoratski only remarks (line 144–148) that the method extends.
6. **Route of the headline theorem.** Mnatsakanyan, arXiv:2210.00309 v4 (abstract, mnatsakanyan2022 line 9–13 and 135–139), reports that the published proof contains an error in its Lemma 11 (the step charging each resonance a share of the `L²` norm). Poltoratski posted a revised "shorter version" of the final argument in arXiv v13 (Aug 2025) and v14 (Dec 2025).
   - Layer 9 follows v14 §9 (subinterval calculus, insertion of zero intervals, Lemma 10).
   - Layers 7–8 (v14 §§3–8, Mauth §§3.1–3.2) are unaffected by that report. Mnatsakanyan's §1 locates the error in the second half of the argument, and the first half is independently proved by Bessonov–Denisov according to the same text (mnatsakanyan2022 line 129–132).
   - Mauth's §§3.3–3.7, which follow the earlier version (Lemma 40 there corresponds to Lemma 11), are not used as a route for Layer 9.
   - This is the main mathematical risk of the roadmap (see Risks).

## Adversarial pass

Each row records the instances tried and the values computed. Where a value refuted a first formulation, the Change column records it.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Convention: sign of `Q` in `ΩX′ = zX − QX` | real `f = c`, `z = 0` | Neumann solution `(e^{ct}, 0)`; opposite sign gives `e^{−ct}` | pinned | sign witness added to Conventions |
| Convention: position of `q` in `G′ = PG` | smooth complex `q = (0.8 cos 3t + 0.3) + 0.5i sin 2t`, `t = 1.7`, `z = 0.6 + 0.25i` | dictionary `a ≈ 1.0632 + 0.1443i`, `b ≈ 0.0750 + 0.2463i` match `G`; `q̄` lower-left gives `a ≈ 1.2589 − 0.1142i`, `b ≈ 0.6221 − 0.2396i` | triage's placement refuted | convention fixed, Check in §4.1 |
| Convention: Tao–Thiele `a` vs ours | `q = 1` on `[0,1]`, `z = ±5i` | `|a(1,5i)| ≈ 1.093`, `|a(1,−5i)| ≈ 237.0` | ours bounded on ℂ₊ | witness in Conventions |
| Convention: Plancherel constant | `q = 1` on `[0,1]`; `q = 0.5 + 1.2i` on `[0, 0.7]`; `y → ∞` | 1.5707 vs π/2 = 1.5708; 1.8580 vs 1.8583; `y(a − 1)` = 0.4853 (y = 10), 0.4987 (y = 100) | constant is π/2, not 1 | constant changed everywhere |
| Convention: Fourier witness | `e^{2ixs} = e^{−2πisw}` | `w = −x/π` | triage's `−2x` wrong for Mathlib | Check in §5.6 |
| 1.1 Grönwall | `β = 1_{[0,1]}`, `α = 2`; `β = −1`, `u = 1/2`, `α = 1`; `β = 0` | equality `2e^{min(t,1)}`; `1/2 > e^{−1} = 0.368` violates without `β ≥ 0`; `u ≤ α` | holds, `β ≥ 0` needed | `α ∈ ℝ` allowed (no sign needed), proof checked |
| 1.2 linear Carathéodory | `P = t^{−1/2}`; `P = 1/t`; `P = 0` | `Y = y₀e^{2√t}`; non-integrable `1/t`: `Y = ct` all solve from `0`; `Y ≡ y₀` | integrability needed | non-example Check added |
| 1.3 propagator | `A = [[0,1],[0,0]]` then `B = [[0,0],[1,0]]` | `exp B exp A = [[1,1],[1,2]]`, `exp A exp B = [[2,1],[1,1]]`, `exp(A+B) = [[1.543,1.175],[1.175,1.543]]` | time ordering pinned | none |
| 1.4 Liouville | same example; diagonal; Dirac coefficient | `det = 1 = e⁰`; `tr(−Ω(z − Q_q)) = 0` | holds | none |
| 1.5 dependence | `p = 0`, `p′ = 1` on `[0,1]` | `|e − 1| = 1.718 ≤ e = 2.718` | holds | bound `‖P′−P‖₁ e^{‖P′‖₁+‖P‖₁}` derived |
| 1.6 holomorphy | `P = 1/(z − t)` on `[0,1]` | `N(t,0) = z/(z − t)`, pole at `z = t` | domination hypothesis needed | non-example Check |
| 1.7 nonlinear | `2√|x|`; `x²` with `r = 1`, `τ = 0.1` | solutions `0`, `t²`; `τe^{4τ} = 0.149 ≤ 1`, `1/(1−t) ≤ 1.12` on `[0,0.1]` | Lipschitz needed; local form consistent | Check recomputed (first draft had an inconsistent condition) |
| 2.1 Poisson | `dx`; `δ₀`; `1/(1+x²)` at `2i`; `|x|dx` | `P ≡ 1`; `1/π` at `i`; `1/3 = Re(i/3i)`; not Poisson-finite | normalisation pinned | dilation formula corrected to `P[ν^λ](z) = λP[ν](λz)` |
| 2.2 positive harmonic | `Im z`; `P[δ₀]`; `1`; `Re z` | `c = 1, ν = 0`; `πy u(iy) = 1 = ν(ℝ)`; `ν(ℝ) = ∞`; `Re z = −1` at `−1+i` | positivity needed | uniqueness route made independent of §2.4 |
| 2.3 maximal | `x = 0`, `z = 1+i`, `s = 1, 2`; `h = 1_{[0,1]}` at `x = 2` | ratio `P(1+i,s)/P(i,s)` = 2 and 2.5, supremum `φ² ≈ 2.618 ≤ 3`; `0.102 ≤ 3/4` | constant 3 valid | constant 2 of the first draft replaced by 3 with proof; aperture constant `max(2, 1+2α²)` |
| 2.4 Fatou | `1_{[0,1]}` at `0` along `iy` and `−y/2 + iy`; `δ₀` | limits `1/2` and `0.352`; `0` off `0` | no limit at jump (null set) | none |
| 2.5 `H^∞` | `e^{iz}`, `e^{−i/z}`, constant, `(z−i)/(z+i)` | `|F| = e^{−y}`; `|F| = e^{−y/|z|²} ≤ 1`; `log|F(i)| = −∞ ≤ 0` | consistent | none |
| 2.6 `H²` | `1/(z+i)`; `∫dx/(x+i)²`; `1`; Fourier support | `‖F‖² = π`, `|F(i)|² = 1/4 = π/(4π)` (bound sharp); `0`; not in `H²`; `𝓕g(w) = −2πie^{−2πw}` for `w > 0`, `0` for `w < 0` | support side was wrong in first draft | corrected to `𝓕g = 0` on `(−∞,0)`; point bound sharpened to `‖F‖²/(4π Im z)` |
| 2.7 Paley–Wiener | `φ = 1_{[−t,t]}`; `t = 0`; `e^{itz}`; kernel norm `t = 2` | `‖F‖² = 4πt`; `{0}`; not `L²`; `0.63657` vs `2/π = 0.63662` | consistent | `zF ∈ PW_t` characterised by `φ ∈ H¹₀` |
| 2.8 outer | `h = log|x+i|`; `e^{iz}`; Blaschke | `(1/π)∫log(1+x²)/(1+x²) = 2 log 2`, `O_h = −i(z+i)`, `O_h(iy) = y+1`; not outer; zero | normalisations pinned | `O⁰` (normalised at ∞) added |
| 3.1 fundamental matrix | free; `f = c`, `z = 0`; `q = ic`, `z = 0`; smooth complex | rotation; `diag(e^{ct}, e^{−ct})`; `cosh/−sinh`; `det = 1` to 12 digits | consistent | real-entire for complex `q` stated (Q real) |
| 3.2 `E`, `Ẽ` | free; `f = c` at `0`; `#`-less equation with `q = ic` | `EẼ# − ẼE# = 2i`; bound `e^{ct}` attained; `e^{ict}` vs `cosh + i sinh` | `#` needed | complex-potential modulus/argument equations derived |
| 3.3 HB | free; `t = 0`; `z ∓ i`; smooth complex | `2 sinh 2ty` both sides; equality at `t = 0`; `|E| = 1.841 > 0.573` | `t > 0` needed | none |
| 4.1 scattering | free; constant at `z = 0`; translation `t₀ = 0.6` | `a = cosh(|c|T) = 1.6014`, `b = 1.0860 + 0.6206i`; translated `b·e^{2izt₀}` matches to RK error | rules hold | translation/modulation/dilation rules derived |
| 4.2 Dyson | `q = 0.4 cos 5s + 0.3i`, `L = 0.4006` | `|b − lin|` = 0.0059, 0.0075, 0.0025 ≤ 0.0108; `|a − 1|` = 0.044, 0.057, 0.030 ≤ 0.081 | holds | Check corrected (first draft compared `ρ`-errors to the `b`-bound) |
| 4.3 half-plane inequality | constants `1, 0.3+2i, 3`, grid in closed ℂ₊; `z = −5i` | `min(|a|²−|b|²) = 1.0000`, `min|a| = 1.006`; `|a| = 237 < |b| = 2385` in ℂ₋ | holds on closed ℂ₊ only | proof by J-monotonicity derived (no outerness needed) |
| 4.4 Plancherel | as Convention row | π/2 | holds | constant fixed |
| 4.5 Riccati | smooth complex `q`; real `f` at `0` | `ρ` direct `0.10010 + 0.21808i` = integral formula; `r = tanh F`, `a = cosh F` | holds | none |
| 5.1 limit | `1_{[0,1]}` at `5i`; `1_{[0,T]}` at `0` | `log a = 0.0893 ≤ 0.2`; `log cosh T` unbounded at `y = 0` | bound degenerates at ℝ as stated | none |
| 5.2 NLFT | constant `c = 0.7+0.4i`, `T = 1.3`, `x = 0.9`; `q = 1_{[0,1]}` | closed form `0.09940 + 0.70062i` = numerical; `sup|ρ| = tanh 1` at `x = 0` | closed form verified | example formula corrected (spurious phase removed) |
| 5.3 boundary/concatenation | `ρ₁ = ρ₂ = 1/2`, `u = 1`; compact support | `4/5`, both sides `9/25`; `ρ₂ = 0` gives `ρ₁` | holds | Plancherel inequality moved into 5.3 to remove a 5.3↔5.4 cycle |
| 5.4 Plancherel at ∞ | `1_{[0,1]}`; dilation | `π/2`; `λπ‖q‖² = π‖q_λ‖²` | consistent | recovery formula with `O⁰` |
| 5.5 truncations | `q = (1+s)^{−1}` | bound `4π/(1+T)` | holds | `L²(ℝ)` rate replaces "in Π-measure"; `a`, `b` in Π-measure via `∫|1 − 1/a₂|²dΠ ≤ 2π Re(1 − 1/a₂(i))` |
| 5.6 rules | first-order at three points | errors 0.0084, 0.0096, 0.0011 ≤ 0.0434 | holds | explicit cubic constant `sinh L − L + L(cosh L − 1)` |
| 6.1 de Branges | `e^{−itz}`; `z + i`; `E = 1` | sinc kernel; `B = ℂ`, `‖1‖² = π`, `K = 1/π`; `0/0` | HB needed | none |
| 6.2 `B(E_t) = PW_t` | free; `f = c` at `0`; `t = 0` | `K(x,x) = t/π`; weight `e^{−2ct}` in bounds | `t > 0` needed | route via `|a + b| ≥ 1/(2cosh L)` |
| 6.3 isometric chain | `f = c` at `x = 0`, `s < t` | weights `e^{−2ct} ≠ e^{−2cs}` though norms agree | non-trivial | direct route: `∂ₜ|E|^{−2} = −2Re(q/E²)` and the `H²` product law |
| 6.4 Weyl | free; `x = 0.7` smooth complex; compact support | `m = i`, radius `1/sinh(2ty)`; `Im(−Ẽ/E) = 1/|E|² = 0.983136`, `Im(E/Ẽ) = 0.838119`; `m = −Ẽ(T)/E(T)` | holds | limit point via Weyl alternative and `det = 1` at `z = 0` |
| 6.5 spectral measures | free; `f = c 1_{[0,T]}` at `0`; `f ≡ c` | `μ = dx`; `m(0) = ie^{−2cT}`, `w w̃ = 1`; gap `(−c, c)` (no Neumann eigenvalue; Dirichlet atom at `0`) | `w w̃ ≤ 1` proved | none |
| 6.6 embedding | free; `2dx` | Plancherel; factor 2 fails | normalisation forced | uniqueness via `Measure.ext_of_charFun` on `|k_ε|²dμ` |
| 6.7 entropy | `ν = σ`, `2σ`, point mass; `(1 + sin nθ)dθ/2π` | `0`, `log 2`, `−∞`; `−log 2 < 0` | u.s.c. not continuous | locator corrected to Corollary 5.3 |
| 6.8 Szegő | free; `f = c 1_{[0,T]}` at `0`; `f ≡ c` | `0 ≥ −2π log 2`; `e^{cT} ≤ 2cosh cT`; `∫ log w = −∞` | `L²` needed | explicit lower bound derived |
| 7.1 MIF phase | `e^{−itz}`; `z + i`; `e^{−i/z}`, `e^{−iz}` | `c = 2t`, `φ′ = t`; `2/(1+x²)`; not MIF; unbounded | holds | none |
| 7.2 zero localisation | `b_i`, `x = 0`, `y = 1`; `e^{2itz}`; `b_{10i}`, `ε = 1/2` | ratio 2, disc radius `3/ε` ∋ `i`; hypothesis never holds; ratios 1.25 and 2, radius 60 ∋ `10i` | holds | none |
| 7.3 Riccati | free; `f = c` at `0`; complex | `θ(t,0) = 1`, `θ̃(t,0) = −1`, RHS 0 | consistent | complex form stated as Check |
| 8.1 sets | free; zeros at `s − i/(2t)`, `s − 2i/t`; `γ` | `T₀ = ∅`; membership as stated; `γ(1) = 0.7369`, `|γ(p) sin(a+ip)|² ∈ [tanh p, coth p]` | consistent | garbled API bullet replaced by the computed identity |
| 8.2 universality | free; real `λ`; `f ≡ c` at `s ∈ (−c,c)` | ratio 1; `t/π`; `w = 0` fails | a.e. and `L²` needed | none |
| 8.3 `L²` proximity | free; normalisation `Sinc/√w` | `0`; error `Sinc(λ,λ)(1/√w − 1)²` of order `t` | `1/w` forced | garbled Check replaced by computed one |
| 8.4 uniform proximity | free; diagonal | `0`; consistent with 8.2 | holds | none |
| 8.5 numerators | free; `λ = z` | `sin(t(λ − z))` exact; both `0` | holds | none |
| 8.6 near resonance | normalisation `|γ(p) sin|`; determinant | in `[γ sinh p, γ cosh p]` → 1; `2i` iff cosine relation | consistent | derivative relation moved from the pole `z(t)` to the zero `conj z(t)` of `θ` |
| 8.7 away from resonance | free; `ty → ∞` | `α = i` exact; `γ(p) sin(A + ip) = ie^{−iA}(1 + O(e^{2|Im A| − 2p}))` | consistent | garbled Check replaced |
| 8.8 joint | `w = 0.7`, `w̃ = 0.9`, `ũ = u` | determinant `2i cos Φ/√(ww̃)` = `2.52i ≠ 2i` | cosine relation forced | Check computed |
| 8.9 matching | exact data | `x′ = x` etc. | consistent | none |
| 9.1 subintervals | `t₁ = 0`; `t₁ = t₂`; free | reduces to (5.2); `a = 1`, `b = 0` | consistent | formulas derived from `M = U𝔈`, `U⁻¹ = [[1,−i],[1,i]]` |
| 9.2 trig evaluation | `w = 0.7`, `w̃ = 0.9`, `s = 0.3`, `(50, 0.31, 0.03)`, `(60, 0.305, 0.025)` | direct = closed form to `10⁻¹⁵`; `|a|² − |b|² = 1.0000000000`; `e = 0` gives `|a| = 1`, `b = 0` | exact identity | derived (the OCR is garbled at (9.2)–(9.4)) |
| 9.3 Lemma 9 | compact support; summability | `Iₙ = ∅` eventually; `Σ‖f‖²_{L²(2ⁿ,2ⁿ⁺¹)} = ‖f‖²_{L²(1,∞)}` | consistent | Borel–Cantelli named |
| 9.4 insertion | `β = 0`; `β` over length `π/|s|` | trivial; `e^{2iβs}` makes one turn | exact relation | (9.8) shown exact once matched forms exist at `t₂ + β` |
| 9.5 Lemma 10 | `υ = 0.5, 1, 2`, `Δ = 0.02, 0.01, 0.005` | ratio → `2cosh υ/sinh² υ` (2.2792 vs 2.2346 at `υ = 1`, `Δ = 0.005`); `Δ₁ = 0.010270` vs 0.010263 | holds | stated robustly with `Δ³` tolerances |
| 9.6 no resonances | compact support; free; `f ≡ c` | fixed zeros; none; growth `e^{√(c²−s²)t}` | `L²` needed | route follows v14 §9 |
| 9.7 asymptotics | free; compact support at `0` | `|a|² → 1`; `(e^{2cT} + e^{−2cT} + 2)/4 = cosh² cT` | consistent | `β` determined by `Im β = −√(ww̃)` |
| 9.8 Carleson | `f ∈ L¹`; compact support; `f ≡ c`; free | uniform; eventually constant; unbounded eigenfunctions; `0` | consistent | identification of the a.e. limit via §5.5 |

## Ownership and searches

Ownership was checked by object, against main, the board packages and the open roadmap pull requests the brief lists. The tool was `tauceti-roadmap roadmaps grep` over every open head and main.

**Searches with no relevant hit.** No roadmap plans any of the following, so this roadmap owns them:

- "Smirnov", "de Branges", "Hermite–Biehler", "Clark measure", "non-linear Fourier": no match anywhere.
- "outer function": only DiophantineApproximationAndTranscendencePartII, unrelated.
- "inner function": only TwistedAutomorphicDescents, unrelated.
- "Dirac system / canonical system": only algebraic-geometry canonical systems.

**Searches with hits, and how each was handled.**

- **Hardy spaces.**
  - OperatorTheory/ToeplitzOperators T1 on main: the disc `H²`, also pinned in Tau Ceti as `TauCeti.HardySpace`.
  - StochasticCalculus S6.5.1–S6.5.3 (open PR, in the merge order): harmonic Hardy spaces on Euclidean balls, and the circle maximal function of a finite measure with the disc estimate `N_σP[μ] ≤ C_σMμ`.
  - NoncommutativeIntegration §7.2: martingale Hardy spaces.
  - None of these plans the half-plane, nontangential Fatou limits, `H^∞` boundary values, outer functions or Paley–Wiener spaces.
  - Layer 2 does not consume StochasticCalculus: it uses Tau Ceti's maximal function of a density instead of a circle maximal function of a measure.
- **Maximal function.** PDE §2.1 on main consumes the pinned `TauCeti.maximalFunction`, and so does this roadmap.
- **Paley–Wiener.** The hits (AutomorphicSpectralTheory, EndoscopicTransfer and others) are the Paley–Wiener theorems for reductive groups, a different object. This roadmap owns the one-variable `PW_t`.
- **Carathéodory and Grönwall.** PDE, StochasticCalculus, RicciFlow and DifferentialGeometry consume Mathlib's continuous-time ODE theory, and the Carathéodory hits are the boundary correspondence of ConformalMapping. Tau Ceti pins the essentially bounded Carathéodory theorem and the constant-kernel Grönwall; Layer 1 generalises both, and the pinned forms are Checks.
- **Hadamard factorization.** Planned by AnalyticNumberTheoryPartI §0.23 (in the merge order, consumable), which is imported.
- **Board packages.** UnboundedOperators and SchrodingerOperatorsAndSpectralTypes are not in the merge order. They are listed as consumers, not suppliers.
- **Ownership against open pull requests.** Checked for every head the brief lists, through the `roadmaps grep` index of 459 open PRs (index of 2026-11-06T18:32Z).
- **Declaration names.** No `Suggested.lean` exists at the design stage. The plan's proposed names are new and are not fully qualified names of any roadmap declaration (`roadmaps resolve` reports nothing unresolved).

## Notions moved down from later roadmaps

None. The half-plane Hardy layer, Paley–Wiener spaces, de Branges spaces, Weyl functions and relative entropy are owned by no roadmap, on main or later in the order. They are planned here as notions the library lacks.

## Proposed Part IIs and boundary notes

- **DiracScatteringAndNonlinearFourierTransformPartII.** It would contain:
  - the non-linear Carleson theorem for complex potentials (Poltoratski line 144–148 remarks the method extends);
  - quantitative and maximal-operator bounds for the non-linear Carleson operator (the open question in Poltoratski line 69–75);
  - convergence of `arg a(t, s)` (Mauth §4, line 59–63);
  - the `ℓ²(ℤ)` and Cantor-group models of Tao–Thiele.
- **A half-plane Hardy-space roadmap** (`H^p` for `0 < p ≤ ∞`, the Smirnov and Nevanlinna classes, canonical factorisation, conjugate functions). It would extend Layer 2 in its own direction and consume it.
- **A canonical-systems and de Branges-spaces roadmap.** It would cover de Branges' ordering theorem, inverse spectral theory, Krein's exponential-type theorem for general canonical systems (romanov2014 §§4–9) and the self-adjoint realisation of the Dirac operator. It would consume Layers 3 and 6.

## Gaps

None. Every prerequisite is a pinned declaration, AnalyticNumberTheoryPartI §0.23, or an earlier target.

## Sources

- **Fetched through the service in this job.**
  - killipsimon2003: arXiv:math-ph/0112008 v2, certified; §5 (5.9), Lemma 5.1, Theorem 5.2, Corollary 5.3 read at line 1812–1964.
  - mnatsakanyan2022: arXiv:2210.00309 v4, certified; abstract and §1 read at line 9–13 and 120–147.
- **Already in the manifest and read.**
  - poltoratski2024 v14: OCR text, read in full (line 1–1738).
  - mauth2022: §§1–2 and the statements of §3.1–3.2 and 3.7, read at line 32–800, 1197–1424, 1765–1845, 3140–3290.
  - romanov2014: §0, §1, §3 and §8, read at line 180–300, 732–890, 1370–1470, 2197–2430.
  - denisov2006: §11 Theorem 11.1 and §13, read at line 3240–3330 and 4215–4262.
  - taothiele2012: Lemma 3 and Lemma 6, read at line 286–300 and 670–692.
- **Settled, cited by locator.** garnett2007 (uncertified, paywalled), coddingtonlevinson1955, debranges1968, remling2018 and krein1955 (waived).
- **Version notes.**
  - poltoratski2024: locators are to v14. The Annals numbering was not checked: the published text is not openly available. The version note records that v14 §9 differs from the published argument.
  - mauth2022: follows an earlier version of poltoratski2024, and its numbering dictionary (line 65–87) refers to that version.
- **Unread texts.** None blocks the design, and no request is made.

## Risks

- **Status of the headline proof.** The published proof was reported in error (mnatsakanyan2022 v4). The revised v14 §9 argument is recent and, as far as this design could establish, not independently checked; its OCR text is partly garbled. The design takes three precautions:
  - it states the exact algebraic content of §9 (§9.1, §9.2, §9.4, §9.5) separately, verified by computation;
  - it confines the analytic content to §9.3 and §9.6;
  - it records that the formalisation of §9.6 is where a remaining error would surface.

  Layers 1–8 do not depend on §9.
- **OCR.** Formulas of poltoratski2024 are garbled in §§5–9. Every displayed identity used was rederived:
  - (2.2), (2.5)–(2.7), (4.1), (5.1)–(5.4), (9.1)–(9.4), (9.9)–(9.10), and the limits of `|a|`, `|b|`;
  - or cross-checked against mauth2022, which has a clean text layer.
- **Size.** The README has about 1,820 lines. Layers 8–9 are the technical core of the proof. If reviewers prefer, Layers 7–9 could be split off as a Part II of this roadmap, with Layers 1–6 forming the library part; the design keeps one roadmap, so that the headline theorem lives with the objects it is about.

## Untrusted text

No fetched text asked for a command, a credential or a change of procedure. Mnatsakanyan's retraction statement is used as a claim about the literature, recorded with its locator, not as an instruction.

## Dependency check

```
candidate: DiracScatteringAndNonlinearFourierTransform is not in the merge order yet; checked as if placed after AnalyticNumberTheoryPartI (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2345 edges, 0 problem(s)
```

`roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. That tool did not check Mathlib and Tau Ceti names on this host, so every backticked library name was checked against the pinned sources by grep: 54 names, all present (for example `NormedSpace.exp` at `Mathlib/Analysis/Normed/Algebra/Exponential.lean` line 128, `TauCeti.exists_isFiniteMeasure_eq_nevanlinnaKernel_add` at `TauCeti/Analysis/Complex/Pick/Nevanlinna.lean` line 436).
