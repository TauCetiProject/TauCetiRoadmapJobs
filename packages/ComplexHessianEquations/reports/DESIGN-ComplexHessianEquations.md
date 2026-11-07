# DESIGN-ComplexHessianEquations report

Deliverables: `packages/ComplexHessianEquations/design/README.md`, `packages/ComplexHessianEquations/design/plan.json` (8 layers, 48 targets) and `packages/ComplexHessianEquations/sources.toml` (18 entries). `Suggested.lean` is not a design-stage deliverable. The README therefore backticks only library and supplier declarations, and the resolver finds every one of them.

## What the design covers

The design covers the target's scope items 1–4 and final targets (T1)–(T4) in full on compact Kähler manifolds. Uniqueness (T2) and the whole pointwise and equation framework hold on compact Hermitian manifolds. Two pieces of the target are not in this roadmap. Both are stated in the README's Scope as the content of **ComplexHessianEquations Part II**, which is proposed below.

- **(T5), the Guo–Phong `L^∞` estimate on compact Hermitian manifolds.** The target allowed this move explicitly. guo-phong2024 line 46–56 shows the proof needs the Caffarelli–Kohn–Nirenberg–Spruck Dirichlet theorem (`ckns1985`, paywalled), weak Harnack inequalities for non-divergence supersolutions (Krylov–Safonov) and Kołodziej's Brezis–Merle-type estimate. No roadmap plans any of these.
- **The Hermitian half of (T3), Tosatti–Weinkove existence.** The target allowed a split ("may propose a split") without naming this one, so here is the reason. tosatti-weinkove2010 line 93–103 reduces the theorem to an `L^∞` bound by citing Cherrier's second- and third-order estimates with torsion (Cherrier 1987, not read) and Guan–Li/Zhang. Its `L^∞` argument (line 113–475) needs Gauduchon's theorem (line 413–416) and the Tosatti–Weinkove estimates of arXiv:0909.4496. Its existence corollary needs Cherrier's continuity argument (line 476–477) with a non-self-adjoint linearization. None of this is used by the Kähler theory. Planning it would add a torsion calculus, Gauduchon metrics and a second source set. The Kähler case, Yau's theorem, is stated in full, with no route restriction: every dimension `n ≥ 1` and every smooth `F`. It also includes the admissible-pair form with an arbitrary Kähler background `χ`.

Higher differentiability of spectral functions ("`C^k` when `f` is `C^k`" in the target's scope item 1) is also moved to Part II, because no target of this roadmap uses it. Uniqueness, Guo–Phong–Tong and the continuity method need only the first derivative, which Layer 1 owns with its continuity (Lewis).

Design choices the reviewer should weigh:

- **Yau's theorem by Calabi's third-order estimate, not Evans–Krylov.** pss2012 §7 (Theorem 9, line 1078–1081) gives the `C³` bound by the maximum principle. After it, the only analysis needed is linear Schauder theory: PDE Lane E item 22 for Hölder coefficients and PseudodifferentialOperators §6.2 for smooth coefficients. So the roadmap neither owns nor waits for a fully nonlinear Evans–Krylov theorem. That theorem has no supplier anywhere (PDE README line 127 and 339 on main), and the complex version (`twwy2015`) is left to Part II.
- **Hölder spaces and Schauder theory on the compact manifold are consumed, not built.** PseudodifferentialOperators (on main) §5.4 owns `C^{k,α}` sections over compact bases, and §6.2 owns Schauder regularity and Fredholm theory. The target suggested RicciFlow Layer 2.2 or Yamabe Y1.3 instead. RicciFlow 2.1 itself defers spatial Hölder spaces to PseudodifferentialOperators §5.4, and Yamabe Y1.3 is specific to the conformal Laplacian.
- **The C⁰ estimate starts from the Poincaré inequality, not the α-invariant** (pss2012 line 299–303). Yau's theorem therefore does not depend on Layer 7.
- **The α-invariant is owned here** (Layer 7). No roadmap plans the uniform exponential integrability of quasi-plurisubharmonic functions. ComplexKahlerGeometry K6.1's "Lelong estimates" concern analytic sets, and ComplexComparisonPartII C5.4 regularizes plurisubharmonic functions without integrability estimates. It is stated for `C²` functions on compact Hermitian manifolds with a continuous `ω̂`. That is wider than the Kähler statements of pss2012 Theorem 31 and gpt2023 line 283–289; the local proof needs no Kähler hypothesis.

## Corrections to the target brief

- **False claim: "the `k`-Hessian and quotient pairs satisfy the structural condition on `Γ_k` (gpt2023 line 90–93)".** The pure quotient fails. For `f = σ_2/σ_1` on `Γ_2 ⊂ ℝ²`, `∏_j ∂_j f = λ_1²λ_2²/(λ_1 + λ_2)⁴ ≈ ε²` at `(ε, 1)`. In `ℝ³` at `(M, 1, 1)` the product is `≈ 3/M²`. gpt2023 line 93 and line 772 state the example as `(σ_k/σ_l)^{1/(k−l)} + c·σ_p^{1/p}` with `c > 0`. The design states that pair, with constant `≥ (c·binom(n, p)^{1/p}/n)^n`, and records the pure quotient as a concave admissible pair with a negative-control Check (README §2.5, plan 2.5.2).
- **Connectedness was missing.** On `X_1 ⊔ X_2` uniqueness fails (`ψ = −1` on `X_2`), and existence with a single constant fails when the ratios `∫ e^F ω^n/∫ ω^n` differ. "Connected" is a standing hypothesis, with both counterexamples as Checks.
- **(T2) needs `Γ` convex**, or at least `Γ + Γ_n ⊆ Γ` plus convexity of the operator segment. The target stated it for all admissible pairs, but gpt2023 and guo-phong2024 do not assume convexity. The README's non-convex admissible cone `Γ_2 ∪ {μ_1 > 0, −μ_1/2 < μ_2 < −μ_1/3} ∪ mirror` breaks the segment argument. The `L^∞` theorems keep the sources' generality without convexity.
- **`f` need not be positive off `Γ_n`.** `σ_1 − ε|λ|` on `Γ_1` is an admissible pair that is negative near `∂Γ_1`. Admissible pairs are real-valued, as in gpt2023, and solutions force `f(λ) = c·e^F > 0`.
- The target cites ComplexKahlerGeometry K2 for "the local `∂∂̄`-lemma". K2 on main plans the Dolbeault–Grothendieck lemma but no `∂∂̄`-lemma. The design does not need one: Layer 7 uses `ω̂ ≤ A·i∂∂̄|z|²` on coordinate balls instead of local potentials.
- Normalization: the target's `ω_X = i g_{k̄j} dz^j ∧ dz̄^k` and the ComplexKahlerGeometry convention `ω = (i/2) Σ h dz ∧ dz̄` differ only in which form is called Euclidean. Relative eigenvalues depend only on `(α, ω)`. The design pins this with the witness `λ[i∂∂̄|z|²] = 2e` relative to `Σ dx ∧ dy` and `e` relative to `i Σ dz ∧ dz̄`, and pins `tr_ω i∂∂̄u = (1/2)·laplaceBeltrami u` on Kähler manifolds (`|z|²`: `2n` versus `4n`). pss2012's `(i/2)∂∂̄` convention is dictionaried as `φ_PSS = 2φ`.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 1.1 relative eigenvalues | `ℂ²`, Gram `diag(2,1)`, `a = diag(2,3)`; `a = 0`; `−a`; non-Hermitian `[[0,1],[−1,0]]` | `g⁻¹a = diag(1,3)`, `λ = (3,1)` (Euclidean would give `(3,2)`); `λ[0] = 0`; `λ[−a] = (−1,−3)`; eigenvalues `±i` | holds; non-Hermitian excluded | Checks added |
| 1.1 `det(Id + tA) = Σ σ_k t^k` | `A = diag(1,2,3)` | `1 + 6t + 11t² + 6t³`, `σ = (6,11,6)` | holds | Check |
| 1.2 Weyl monotonicity | `S = diag(3,0) ≤ T = diag(3,1)` | sorted `(3,0) ≤ (3,1)`; cross pairing `3 > 1` | equally indexed sorted pairing only | Check pins the indexing |
| 1.2 Lipschitz | `T = [[0,ε],[ε,0]]` | `λ = (ε,−ε)`, `‖T‖ = ε` | constant 1 sharp | Check |
| 1.3 von Neumann–Fan | `F = diag(2,1)`, `B = diag(0,3)` and `diag(3,0)` | `tr FB = 3` = lower bound 3; `6` = upper bound 6 | holds, both bounds attained | Check |
| 1.3 Ky Fan differentiability | `T = diag(3,1,1)`, `m = 1, 2` | gap at `m = 1`, gradient `diag(1,0,0)`; `m = 2`: `κ_2 = 4 + |t|` | gap hypothesis necessary | gap stated as hypothesis |
| 1.4 Lewis derivative | `f = σ_2`, `T = [[2,1],[1,2]]` | `∇F = [[2,−1],[−1,2]]`; wrong model `diag(1,3)` differs | formula is in the eigenbasis | Check |
| 1.4 "only if" | `f = max` at `(1,1)` | `λ_1(Id + t·diag(1,0)) = 1 + max(t,0)` | non-differentiable on both sides | negative control |
| 1.4 `C¹ ⟺ C¹` | source check | lewis1996 line 468–469 calls it an exercise | route by cluster projections written | proof route in README |
| 1.5 concavity | `det^{1/2}` at `diag(4,1)`, `diag(1,4)` | values `2, 2`, midpoint `5/2` | holds | Check |
| 1.5 convexity of `Sym_Γ` | non-convex symmetric cone in `ℝ²` | `diag(1,−0.4)`, `diag(1,0.1)` inside; midpoint `diag(1,−0.15)` outside | convexity of `Γ` necessary | hypothesis kept, Check |
| 1.5 `det` not concave | `t ↦ det(t·Id_2)` | `t²` | expected failure | Check |
| 1.6 det of gradient, Euler | `f = σ_2^{1/2}`, `T = diag(1,4)` | partials `1, 1/4`; `det = 1/4`; `tr(∇F·T) = 2 = F` | holds | Check |
| 1.6 Euler degree | `f = σ_2`, `diag(1,4)` | `tr(∇F·T) = 8 = 2F` | degree matters | Check |
| 1.6 trace AM–GM | `A = diag(1,4)`, `B = Id`, `B = A⁻¹` | `5 ≥ 4`; `2 = 2` | equality iff `B = cA⁻¹` | Check |
| 2.1 Newton | `λ = (1,2,3)`; `λ = (1,0,0)` | `12 ≤ 121/9`; `0 = 0` with unequal entries | spruck2005's equality clause is false off `Γ_n` | equality clause restricted to `Γ_n`, negative Check |
| 2.1 Maclaurin | `(1,2,3)`; `−e` | `2 ≥ 1.915 ≥ 1.817`; `−1 < 1` | needs `λ ∈ Γ_l` | Check |
| 2.1 shift expansion | `n = 3`, `k = 2`, `λ = e`, `t = 1` | `σ_2(2e) = 12 = 3 + 6 + 3` | holds | Check |
| 2.2 `Γ_k` description | `(3,3,−1)`, `(2,2,−1)`, `−e` | `σ = (5,3,−9)`; `σ_2 = 0`; `σ_2(−e) = 3`, `σ_1 = −3` | `{σ_2 > 0}` not convex, lower `σ_j` needed | Checks |
| 2.2 hyperbolicity | `x_1² + x_2²` in direction `(1,0)` at `x = (0,1)` | `t² + 1` has no real root | non-example | Check |
| 2.3 quotient concavity | `σ_2/σ_1` at `(4,1)`, `(1,4)`, midpoint | `0.8, 0.8, 1.25` | holds | Check |
| 2.3 tangent inequality | `σ_2^{1/2}`, `λ = (1,4)`, `μ = (4,1)` | `2 ≤ 4.25` | holds | Check |
| 2.4 positivity | `σ_1 − ε|λ|` at `(1,−1+δ)` | `δ − ε√(1+(1−δ)²) < 0` | `f > 0` only on `Γ_n` | statement and Check |
| 2.4 structural ⟺ det form | diagonal reduction | `det ∇F = ∏ ∂_j f` (1.6) | holds | target 2.4.4 |
| 2.4 combinations | superadditivity | `∏(x+y)^{1/n} ≥ ∏x^{1/n} + ∏y^{1/n}` | constant `(aγ_1^{1/n} + bγ_2^{1/n})^n` | API |
| 2.5 MA constant | `n = 2`, `(1,4)` | `1·1/4 = 1/4 = 2^{−2}` | identity | Check |
| 2.5 Hessian constant | `n = 3`, `k = 2`, at `e`; `k = 1`; `k = n` | `3^{−1/2}` per partial, `γ = 3^{−3/2}`; `1`; `n^{−n}` | sharp at `e` | Check |
| 2.5 pure quotient | `n = 2` at `(ε,1)`; `n = 3` at `(M,1,1)` | `≈ ε²`; `3/(M+2)² · ((M²+M+1)/(M+2)²)² ≈ 3/M²` | structural condition fails | target brief corrected; plan 2.5.2 |
| 2.5 quotient + `cσ_1` | `n = 3` | each partial `≥ c`, product `≥ c³` | holds | Check |
| 3.1 convention | `ℂⁿ`, `i∂∂̄|z|²`, `i∂∂̄|z_1|²`, `i∂∂̄x_1²`; metric `2ω` | `2e`; `(2,0,…,0)`; `dx_1 ∧ dy_1`, `Δ_ω = 1`; `e` | intrinsic in `(α, ω)` | Conventions witness |
| 3.1 `tr = (1/2)Δ_g` | `|z|²`, `x_1²` | `2n` vs `4n`; `1` vs `2` | holds on Kähler | Conventions witness |
| 3.1 local max lemma | `−|z|²`; saddle `x_1² − y_1²` | `H = −2h`; `H = 0` without maximum | no converse | Check |
| 3.2 form identity | `n = 2`, `k = 1, 2`, `α = ω` | `(λ_1+λ_2)/2`, `λ_1λ_2`, `ω ∧ ω = ω²` | holds | Check |
| 3.2 Maclaurin form | `λ[β] = (4,1)`, `k = 1` | `5/2 ≥ 2` | constant 1 in this normalization | Check |
| 3.2 Gårding mixed | `M_k(α,β,…,β) = (1/k)D_α(σ_k∘λ)(β)` with tangent inequality | `D_α p(β) ≥ k p(β)^{(k−1)/k} p(α)^{1/k}` | holds | proof route |
| 3.2 `∫ Δ_ω u ω^n` | double Stokes | `= n∫ u·i∂∂̄ω^{n−1}`; `0` on tori and for `n = 1` | Kähler needed for vanishing | Check |
| 3.3 trivial solutions | `χ = ω`, `F = 0`; `F = a`; `ℂP¹` with `χ = 2ω` | `c = 1, binom(n,k)^{1/k}, n`; `c = e^{−a}`; `c = 2` | holds | Checks |
| 3.3 Hessian normalization | `n = 2`, `k = 1`, `χ = ω` | `σ_1 = 2`; gpt2023 (5.4) form gives `1` | factor `binom(n,k)` | dictionary in Conventions |
| 3.4 volumes | `χ = 0`; `χ = ω_X` | `V_t = t^nV`; `V_t = (1+t)^nV`, `c_t^n = (1+t)^n` | `c_t^n/V_t = 1/V` | Checks |
| 3.4 entropy | `F = 0`; `F = a`, `V = 1` | `0`; `e^{na}|a|^p` | holds | tests |
| 4.1 comparison | disc, `ψ = −|z|²/4` | `λ[χ_ψ](0) = 1/2 ≤ 1` | holds | Check |
| 4.1 non-convex cone | `(1,−0.4) + (0,0.25)` | `(1,−0.15) ∉ Γ` | `Γ + Γ_n ⊆ Γ` needed | hypothesis |
| 4.2 uniqueness | two components; no `sup` normalization | `ψ = −1` on `X_2`; `φ, φ + 1` | connectedness and normalization needed | standing hypothesis |
| 5.1 Kähler Laplacian | `|z|²`; `cos 2πx` on the unit torus; `ω = e^{x_1}ω_0` on `ℂ²` | `4n`; `−2π² cos 2πx`; `2Δ_ω x_1 − Δ_g x_1 = −e^{−x_1}` | Kähler needed | Check |
| 5.2 isomorphism | torus `cos 2πx`; constant `1`; two components | inverse `−cos(2πx)/(2π²)`; `1` not in range; 2-dim kernel | `β` summand and connectedness needed | statement |
| 5.2 compactness | `j^{−α} sin(jx)` | Hölder quotient `≥ (2/π)^α`, sup `→ 0` | no compactness at equal exponent | Check |
| 5.3 Poincaré | circle, `sin`; two components `±1` | equality with `λ_1 = 1`; `du = 0` | connectedness needed | Check |
| 5.3 Sobolev exponent | `n = 2`, `m = 4` | `2n/(n−1) = 4 = 2m/(m−2)` | holds | Check |
| 5.4 quasi-psh `L¹` | `ψ_ε = log((|z|²+ε)/(1+|z|²))` on `ℂP¹` | `sup = 0` at `∞`; `∫(−ψ_ε)` bounded | holds | Check |
| 5.4 `Δ`-subsolution `L¹` | `φ = ε(cos 2πx − 1)` on the unit torus | `Δ_ω φ ≥ −2π²ε`, `∫(−φ) = ε` | holds | test |
| 6.2 `C⁰` | `ℂ²/ℤ⁴`, `φ = ε cos 2πx_1` | exact solution with `e^F = 1 − 2π²ε cos 2πx_1`, `osc = 2ε`, `sup F = log(1 + 2π²ε)` | holds | Check |
| 6.2 dimension | `n = 1` | no exponent `2n/(n−1)` | `n ≥ 2`, `n = 1` linear | hypothesis and 6.6 route |
| 6.3 `C²` | `λ = (4,1/4)`; `λ = e` | `tr h = 17/4`, `λ_2 = 1/4`; `4/17 ≤ 17/4`, `1/n ≤ n` | holds | Checks |
| 6.4 `C³` | torus solution | only `∂_{z_1}h_{11} = 2π³ε sin` nonzero, `S = O(ε²)` | holds | Check |
| 6.5 regularity | `F ∈ C^{0,α}` | `Δ_ω F` unbounded below is possible | needs smooth `F` | hypothesis |
| 6.6 constant `b` | `F = 0`; `F = a`; unit torus `F = ε cos 2πx` | `b = 0`; `b = −a`; `b = −log I_0(ε) = −ε²/4 + O(ε⁴)` | holds | Checks |
| 6.6 admissible form | `χ = 2ω` on `ℂP¹` | `c^n = ∫χ^n/V = 2` | holds | Check |
| 7.1 local estimate | `u = c log(|z|²/4)`; `−|x|^{−1}` on `ℝ⁴` | integrable iff `αc < n`, so `α ∼ 1/A`; `e^{α/|x|}` never integrable | `α` depends on `A`; plurisubharmonicity needed | statement and Checks |
| 7.2 global α | `ℂP¹`, `ω̂ = i∂∂̄ log(1+|z|²)`; scaling `2ω̂` | uniform `α < 1` needed; `α(2ω̂) = α(ω̂)/2` | `α` depends on `ω̂` | Checks |
| 8.1 comparison lemma | `A_s = 0` case | `{φ_t < −s}` open with zero measure, hence empty | `0/0` at `s ≥ −inf φ_t` | hypothesis `inf φ_t < −s` added |
| 8.1 `C²` right-hand side | source line 217 solves Yau with a `C²` right-hand side | 6.6 is for smooth data | uniform smooth approximation of `τ_k(−φ_t − s)` | proof route changed |
| 8.2 De Giorgi | `1_{[0,1)}`; `e^{−s}`; `δ_0 = 0` | vanishes from 1; hypothesis fails; `e^{−s}` satisfies it and never vanishes | `δ_0 > 0` needed | Checks |
| 8.3 exponent | `p = n` | `δ_0 = 0` | `p > n` needed | Check |
| 8.3 trivial solution | MA, `χ = ω_X`, `F_t = 0` | `c_t = 1 + t`, `φ_t = 0` | holds | Check |
| 8.5 energy | `p' < 1` | Jensen step needs `p' ≥ 1` | (c) only for `p' ≥ 1` | statement |
| 8.6 fixed background, `n = 1` | Hölder step `n/(n−1)` | undefined at `n = 1` | use 8.5(c) with `N = 1` | proof route changed |
| 8.7 Lemma 8 background | `φ_t` is `(ω_t, Γ_k)`-admissible, Lemma 8 is for `ω_X` | `a_0ω_X − ω_t ≥ 0` gives `(a_0ω_X, Γ_k)`-admissibility (1.5) | gpt2023 leaves this step implicit | step written |
| 8.7 exponents | `k = n`; `q' = n/(n−k)` | infinite; `q = n/k`; `n = 2`, `k = 1`: `|x|^{−2} ∈ L^{p'}(ℝ⁴)` iff `p' < 2` | holds | Checks |

Context, generality and imported lemmas:

- Every global statement carries `X` compact connected, and every Kähler use carries `dω = 0`: Layers 5–8, the integral identities of §3.2, the constants of §3.3 and §3.4.
- The α-invariant is stated more generally than its sources (Hermitian `X`, continuous `ω̂`). The local route uses no Kähler hypothesis, and the Check at `2ω̂` exercises the dependence on `ω̂`.
- Duplication by object was checked at the pins. Mathlib has eigenvalues, the spectral theorem, Birkhoff, `esymm`, Rolle for polynomials, AM–GM and the inverse and implicit function theorems. It has no min–max beyond the top eigenvalue, no Weyl inequality, no von Neumann–Fan inequality, no spectral-function calculus and no majorization criterion (the docstring of `Mathlib/Analysis/Convex/Birkhoff.lean` lists it as not done). Tau Ceti at the pin has the two-form predicates, the Riemannian volume, Euclidean De Giorgi local boundedness (`TauCeti/Analysis/PDE/Regularity/LocalBoundedness.lean`) and a strong maximum principle for harmonic functions only (`TauCeti/Analysis/PDE/Harnack/StrongPrinciple.lean`). It has no weak Harnack inequality, no non-divergence strong maximum principle and nothing Kähler.
- Proof steps taken from inside sources were checked at the stated generality. gpt2023 Lemma 4 (line 751–756) needs concavity on a convex `Γ`, as stated. gpt2023 line 249 uses the Euler identity, which holds by degree-one homogeneity. gpt2023 line 280–289 needs `χ ≤ (a_0 − 1)ω_X`, which is kept. dinew-kolodziej2014 line 165–172 is for vectors in `Γ_m`; the matrix version comes from hyperbolicity of `σ_k ∘ λ` on `Sym` (README §2.2). pss2012 uses `ω_0 + (i/2)∂∂̄φ` and the factor is converted.

## Ownership against open work

Searched by object with `roadmaps grep -i` over main and the open roadmap pull requests at their heads (index of 2026-11-05). Terms: Monge–Ampère; Hessian equation, Hessian quotient, Gårding, hyperbolic polynomial; spectral function, symmetric function of eigenvalues, Lewis; Evans–Krylov, Krylov–Safonov, fully nonlinear, concave elliptic; Calabi–Yau theorem, Calabi conjecture, Ricci-flat Kähler; Kähler–Einstein; plurisubharmonic, pluripotential; Skoda, Lelong, α-invariant, exponential integrability, Green's function. The board packages were grepped for the same terms. Findings:

- K3Surfaces (open pull request) §2.1 solves the two-dimensional Kähler Monge–Ampère equation with its own continuity method. It is a consumer and should import §6.6.
- ShimuraVarieties §7.0g (open pull request; merge order line 94) needs a negative Kähler–Einstein metric, a different equation with a `φ`-dependent right-hand side. It is earlier in the merge order, so it is neither a supplier nor a consumer of this roadmap, and no overlap of objects arises.
- ArakelovGeometryAndAbelianHeightsPartII (board package, design) §0.2 plans Monge–Ampère measures of integrable metrics. These are pluripotential, distinct from the classical PDE objects here, and not cited in the README because the package is neither on main nor an open pull request.
- ComplexComparisonPartII (open pull request) C5.4 has positive currents and plurisubharmonic regularization, with no integrability estimates. AffineMorseLefschetz (main) defines strict plurisubharmonicity through the Levi form; it is not consumed.
- OptimalTransport (main) Layer 6 owns the real Monge–Ampère equation of transport.
- PDE: the open revision of PDE plans Aleksandrov–Bakelman–Pucci and Krylov–Safonov (its §5.5). A revision is never a dependency, so the design cites PDE as on main and records the two inputs as gaps.
- Nothing else owns spectral functions, Gårding cones, admissible pairs, the α-invariant or the Kähler continuity method.

All suppliers are on main: ComplexKahlerGeometry, PseudodifferentialOperators, PDE, Yamabe, DifferentialGeometry, ComplexManifolds. No supplier comes from a later roadmap, so no notion moved down.

## Notions moved down from later roadmaps

None.

## Proposed Part IIs

- **ComplexHessianEquations Part II** (base: this roadmap). Tosatti–Weinkove existence on compact Hermitian manifolds: Chern torsion calculus, Cherrier's second- and third-order estimates, Gauduchon's theorem, the Tosatti–Weinkove `L^∞` argument, and the continuity method with a non-self-adjoint linearization. Also: the Guo–Phong Hermitian `L^∞` estimate with the Caffarelli–Kohn–Nirenberg–Spruck Dirichlet theorem on balls; the `C²` and `C^k` regularity of spectral functions; the complex Evans–Krylov estimate (`twwy2015`). Natural further directions: Székelyhidi's subsolution theory, Hessian-equation existence, and the Aubin–Yau Kähler–Einstein equation that ShimuraVarieties-type consumers need.
- **PDE Part II** (base: PDE). The Aleksandrov–Bakelman–Pucci maximum principle and the Krylov–Safonov theory for non-divergence equations. It is needed here for the energy estimate (§8.5) and by the Part II above.

## Gaps (supplier contracts not yet written)

| slug | supplier, section | needed by | what is missing |
| --- | --- | --- | --- |
| `weak-harnack-supersolutions` | PDE, Lane E item 23 | 5.4.2, 8.5, 8.6, 8.7 | the weak Harnack inequality for nonnegative divergence-form supersolutions (gilbarg-trudinger2001 Theorem 8.18); item 23 plans Harnack but does not state this half |
| `abp-maximum-principle` | PDE, proposed Part II (Lane C) | 8.5, 8.6 | the Aleksandrov–Bakelman–Pucci maximum principle for `C²` functions (gilbarg-trudinger2001 Lemma 9.2, Theorem 9.1) |

Every other target, including Yau's theorem, the degenerating-background theorem (§8.3), the Monge–Ampère corollary (§8.4) and the α-invariant (§7.2), is gap-free.

## Sources

- Read (certified): `gpt2023`, `guo-phong2024`, `szekelyhidi2018`, `tosatti-weinkove2010`, `dinew-kolodziej2014`, `pss2012`, `twwy2015`, `spruck2005` (OCR), and two added in this job. `lewis1996` is the published article as scanned on the author's Cornell page (licence class author-page; image-only scan read by OCR). The DOI landing page answered 403 first. `guedj-zeriahi2005` is arXiv:math/0401302v2, used for Proposition 1.7.
- Not read (paywalled, recorded `uncertified`, cited by locator): `yau1978`, `szekelyhidi2014`, `gilbarg-trudinger2001`, `ckns1985`, settled as before. New this job: `tian1987` (the service resolved its DOI to a paywalled page) and `hormander1990` (no legal copy found; added by hand as a paywalled book). Neither is the primary locator of any target. Targets 7.1 and 7.2 carry locators in the read `pss2012` and `gpt2023`, which attribute the estimates to these works. Their manifest locators name the attribution, not unverified theorem numbers.
- `cns1985` and `kolodziej1998` are settled `uncertified` in the manifest and are cited only for boundaries and for the bound that §8.4 recovers.
- The gpt2023 numbering is that of arXiv v1, which was read; the manifest says so.
- `needs-references.toml`: none. The service recorded `lewis1996` and `hormander1990` there during the job. `lewis1996` was then read from the author's page, and `hormander1990` is a paywalled publication cited by locator, which is settled. The file was removed, so no text is requested.

Nothing in any fetched text asked for a command, a credential or a change of procedure.

## Dependency check

```
$ tauceti-roadmap --conf <conf> gate --candidate packages/ComplexHessianEquations/design/README.md --only ComplexHessianEquations --order merge-order/ORDER.txt --content <content>
candidate: ComplexHessianEquations is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 235 roadmaps, 2165 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere.
