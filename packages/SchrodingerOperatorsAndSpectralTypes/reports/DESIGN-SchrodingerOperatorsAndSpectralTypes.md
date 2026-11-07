# Design report: DESIGN-SchrodingerOperatorsAndSpectralTypes

Deliverables: `packages/SchrodingerOperatorsAndSpectralTypes/design/README.md`,
`packages/SchrodingerOperatorsAndSpectralTypes/design/plan.json` (44 targets in 4 layers, no gaps),
`packages/SchrodingerOperatorsAndSpectralTypes/sources.toml` (20 entries, `sources check`: 0 problems).

## What the design covers

The eighteen final targets of `target.md` map to the layers as follows.

| Target item | Where | Status |
|---|---|---|
| 1 vector spectral measures | 1.1 | planned (restriction, bounded calculus, spectral orthogonality, unitary transport) |
| 2 projections realise Lebesgue decomposition | 1.2 | planned; the "Borel function χ_{M_xx}(H)" clause corrected (see table) and left to UO-C03 |
| 3 spectral parts, essential closure, no isolated points, unitary invariance | 1.3, 1.4 | planned, plus the reduced-restriction PVM (1.3) and existence of maximal spectral vectors on separable spaces |
| 4 interval criterion | 1.5 | planned with `a < b` |
| 5 wave operators, Kato–Rosenblum | 1.7, 1.8, 1.9 | planned with a proof route (Rosenblum's lemma, trace-class square roots, Kato/Pearson) |
| 6 minimal operator | 3.1, 3.2 | planned |
| 7 adjoint = maximal operator | 3.3 | planned, distributions from ComplexKahlerGeometry K5a |
| 8 energy form, Friedrichs | 3.4 | planned |
| 9 Gaffney–Chernoff–Strichartz | 3.5, 3.6 | planned (cutoffs from RiemannianGeometry R7.8, regularity from K5a) |
| 10 spectral vocabulary of `Δ_X` | 1.6, 2.1, 3.7 | planned; the general min–max principle is owned here |
| 11 compact case | 3.8 | planned as comparison with K5a; `λ_k → ∞` restricted to `dim X ≥ 1` |
| 12 finite-area hyperbolic surface | 3.10 and closing section | the lower inclusion `[1/4, ∞) ⊆ σ_ess` for any complete surface with a standard cusp end, and the kernel statement (3.7), are planned; the full Lax–Phillips description is recorded as motivation for a future roadmap (reason below) |
| 13 descriptions of `H²` | 4.1 | planned |
| 14 free Laplacian | 4.2 | planned here (moved down from QuantumFoundations §8.2) |
| 15 bounded perturbations | 2.2 | planned (cores, two-sided bottom bounds) |
| 16 Kato–Rellich lower bound | 2.3 | planned in Tau Ceti's lettering, Kato's form of the bound |
| 17 `−Δ + V` bounded | 4.3, 4.4 | planned |
| 18 quasi-periodic model | 4.5, Layer 4 Examples | planned, with the frequency-oddness hypothesis made explicit |

Bounded potentials on manifolds (target scope) are 3.9.

**Why item 12 is not planned in full.** The general statement for every connected complete
finite-area hyperbolic surface needs the thick–thin decomposition into a compact core and finitely
many cusp ends (Killing–Hopf from RiemannianGeometry R4 and the Fuchsian structure theory), the
decomposition principle for the essential spectrum, separation of variables in each cusp, and
Eisenstein series with meromorphic continuation; AutomorphicSpectralTheory §4 proves the congruence
case. That is a roadmap of its own; the README's closing section states exactly what it needs, and
this roadmap supplies its vocabulary (Layers 1, 3) and its lower inclusion (3.10). The readable
legal sources for the general case are thin (lp80 is a survey; lp76 and iwaniec02 are paywalled).

## Supplier decisions and ownership

- **Merge-order position.** The gate places the design right after HilbertModules (its last
  ordered supplier), before AutomorphicSpectralTheory (line 82) and CongruenceSpectralGap (line 146),
  so both can consume Layer 3. HilbertModules H6 is a genuine supplier: step (d) of 3.6 uses
  `(closure T)* = T*`, which is not at the pins (Mathlib's `LinearPMap` files have adjoint and closure
  but no comparison of the two).
- **Moved down: the free Laplacian on `H²(ℝ^d)`.** QuantumFoundations §8.2 plans `−Δ/(2m)` on
  `H²(ℝⁿ)`, and QuantumFoundations is at line 202 of the merge order, after this roadmap's position.
  Following the move-down rule, 4.2 states the free Laplacian here; QuantumFoundations §8.2 becomes a
  consumer (`−Δ/(2m) = (2m)⁻¹H₀`). UnboundedOperators UO-E06 is the `d = 3` case and is cited as a
  Check, as is PDE §6.3's real heat generator. The existing duplication between UO-E06 and
  QuantumFoundations §8.2 is reported here for the board.
- **Owned here because planned nowhere** (searched by object on main, at the open heads with
  `roadmaps grep`, and in the board packages): the Lebesgue-decomposition identification of the type
  projections; the spectral PVM of a reduced restriction (1.3); the local-mass characterisation of
  `σ_ac` and the interval criterion; the general min–max principle below the essential spectrum
  (VariationalMethods 4.4 and Tau Ceti `CourantFischer` cover the compact and finite-dimensional
  cases only); abstract wave operators and Kato–Rosenblum (the "Rosenblum theorem" of
  SpectralSubspacePerturbation is the Sylvester-equation theorem, a different object); the global
  `H¹(X)`, `H¹₀(X)`, energy form and Friedrichs Laplacian of a noncompact manifold; Gaffney cutoffs;
  the cusp threshold. AutomorphicSpectralTheory §1.16a and CongruenceSpectralGap §0.2 prove
  quotient-specific essential self-adjointness; they are consumers of 3.6, not owners of the general
  theorem.
- **Single direction.** ComplexKahlerGeometry K5a and VariationalMethods are suppliers (compact
  case, distributions, Courant–Fischer), so the target's suggestion to list them as consumers was
  dropped. Yamabe (on main) is not listed as a consumer.
- **UnboundedOperators and VariationalMethods** are other authors' pull requests adding new roadmap
  folders, consumable under the brief. The gate's note "supplier VariationalMethods ... is not in the
  merge order; it must be inserted before" is informational: that roadmap is another author's
  pull request.
- Ownership against the open pull requests was checked through the brief's `roadmaps grep` index
  (459 heads) for: spectral types, Kato–Rosenblum, wave operators, min–max, Gaffney, Laplace–Beltrami,
  Friedrichs on manifolds, Lipschitz smoothing, quasi-periodic, bounded potentials.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Target item 2: `μ_{P_ac f} = (μ_f).withDensity (μ_f.rnDeriv volume)` | `μ_f = 2·Leb|[0,1]` (`A = M_x`, `f = √2·1`) | Mathlib: `μ.singularPart ν + ν.withDensity (μ.rnDeriv ν) = μ`; `Leb.withDensity(2) = 2Leb`, `μ.withDensity(2) = 4Leb` | target formula wrong orientation | 1.2 uses `Leb.withDensity (μ_f.rnDeriv Leb)`; witness added to Conventions and as a Check |
| Target item 2: `P_xx = χ_{M_xx}(H)` for every `ℋ` | UO-C03's `ℓ²(ℝ) ⊕ L²(ℝ)` (diagonal ⊕ `M_x`) | `P_pp = P_A(B)` forces `B = ℝ`, which keeps the continuous summand | false without a finite control measure | clause left to UO-C03 (separable case); stated in 1.2 |
| 1.1 spectral orthogonality | `A = 0` on `ℂ²`, `f = h = (1,0)` | `μ_{f+h} = 4δ₀`, `μ_f + μ_h = 2δ₀`, `⟨f, P(ℝ)h⟩ = 1` | hypothesis needed | kept as hypothesis; Check |
| 1.1 bounded calculus `|g|²` | `diag(1,2)`, `f = (1,i)`, `g = 3·1_{\{2\}}` | `μ_{g(A)f} = 9δ₂`; `|g|` model gives `3δ₂` | holds | Check |
| 1.3 compression PVM | `diag(1,2,3)`, `U = span(e₁,e₃)`; `U = 0`; `U = ℋ` | `σ = {1,3}`; `∅`; `σ(A)` | holds | Checks |
| 1.4 single `f` for all `ε` (nonseparable) | coordinate operator on `ℓ²(ℝ)` ⊕ `M_x` | annulus construction: weights `2^{-m}` on disjoint annuli give `μ_f(I_ε) > 0` for all `ε` | holds without separability | route recorded |
| 1.4 essential closure via maximal spectral vector | coordinate operator on `ℓ²(ℝ)` | `μ_ψ` has countably many atoms; `μ_{e_t} = δ_t` not `≪ μ_ψ` | no maximal vector in general | (3) assumes a maximal vector; (4) assumes separability |
| 1.4 parts are disjoint? | `M_x ⊕ diag(q_n)` | `σ_ac = σ_pp = [0,1]` | overlap possible | Check |
| 1.4 wrong model `σ_ac = σ ∖ σ_p` | `diag(q_n)` | wrong model gives `[0,1] ∖ ℚ`, true value `∅` | refuted | Check |
| 1.4 no isolated points | `M_x on L²[0,1] ⊕ diag(2)` | `σ_ac = [0,1]`, `2 ∈ σ_pp` only | holds | Check in plan |
| 1.5 interval criterion, `a = b` | `A = 0`, `a = b = 0` | `(0,0) = ∅` makes right side vacuous; `{0} ⊄ σ_ac(0) = ∅` | false for `a = b` | hypothesis `a < b` |
| 1.5 density on fat Cantor `K` | `M_x` on `L²(K)` | `σ_ac = K^ess ⊆ K`, empty interior | density must be a.e. on all of `[a,b]` | Check |
| 1.6 min–max junk | `diag(1,3,5)`, `n = 4` | admissible set empty; `ℝ`-valued `sInf ∅ = 0`; extended value `+∞` | real junk wrong | values in `ℝ ∪ {+∞}` |
| 1.6 min–max no eigenvalues | `M_x` on `L²[0,1]` | `μ_n = 0 = inf σ_ess` for all `n` | holds | Check |
| 1.6 one bound state | `−1 ⊕ H₀` | `μ₁ = −1`, `μ_n = 0` (`n ≥ 2`) | holds | Check |
| 1.7 wave operators exist? | `H₁ = 0, H₂ = 1` on `ℂ`; `M_x` vs `M_x + c` | `e^{it}`, `e^{itc}` have no limit; `D = 0` | domain can be trivial; bounded non-trace-class fails | Checks; negative control for 1.9 |
| 1.8 Rosenblum constant `2π` | `M_λ`, `x = m·1_{[0,1]}`, rank-one `C` | integral `= 2π m²` (Plancherel `∫|∫f e^{−itλ}dλ|² dt = 2π∫|f|²`) | equality case | Check |
| 1.8 trace-class square root | `V = diag((−1)^{n+1}/n²)` | HS energy of `diag(1/n)` `= π²/6 =` nuclear gauge | holds | Check |
| 1.9 Kato–Rosenblum degenerate | `H₁ = diag(1/n²)`, `V = −diag(1/n²)`; `V = −diag(1/n)` | `H₂ = 0`, `ℋ_ac = 0` both; `Σ 1/n = ∞` not trace class | first holds; second excluded | the earlier draft `diag(1/n)` corrected to `diag(1/n²)` |
| 2.1 bottom of spectrum | zero space; `M_x` on `L²(ℝ)` | `σ = ∅`, `sInf ∅ = 0` junk; not bounded below | needs `ℋ ≠ 0`, semibounded | hypotheses stated |
| 2.2 bottom shift | `diag(0,1) + diag(1,−1)`; `V = c` | `λ₀ = 0 ∈ [−1,1]`; equality `λ₀ + c` | holds | Checks |
| 2.3 relative-bound lettering | target writes `‖Vu‖ ≤ a‖Au‖ + b‖u‖`; Tau Ceti `IsRelativelyBounded V A a b` is `a‖x‖ + b‖Ax‖` | `A = 2, V = 3`: pairs `(3,0)` and `(0,3/2)` in Tau Ceti lettering | letters swapped between sources | README pins Tau Ceti/SAST lettering; bound restated as `γ − max(a/(1−b), a + b|γ|)` |
| 2.3 Kato–Rellich bound, Teschl's printed `b/(a−1)` | `γ = 0`, relative `1/2`, ambient `1`; case analysis of `‖VR_A(μ)‖ < 1` | resolvent route gives `d* = max(a/(1−b), a + b|γ|)` (this lettering); printed denominator makes the max always `a|γ|+b` | printed form is not what the proof gives | Kato's form stated; noted in README and in the teschl manifest note |
| 2.3 scalar test | `A = λ ≥ γ`, `V = −(a + b|λ|)` | `A + V` minimum `γ − a − b|γ|` | consistent (bound not sharp) | Check |
| 2.3 relative bound `1` | `A = H₀`, `V = −H₀` | `A + V = 0` on `H²`, not closed | `b < 1` needed | Check |
| 3.1 sign convention | flat `‖x‖²`; `ℍ` with `yˢ`; circle `e^{inθ}` | `Δ‖x‖² = −2d` (library `+2d`); `Δyˢ = s(1−s)yˢ`, `Δy² = −2y²`; `Δe^{inθ} = n²e^{inθ}` | consistent with AST/CSG/MaassForms | Checks |
| 3.1 Green pairing conjugation | circle, `u = v = e^{inθ}` | with conjugation `2πn²`; without `0` | conjugation required | Check |
| 3.2 not essentially self-adjoint when incomplete | `(0,1)` | `(Δ_max + 1)e^{±x} = 0`, both `L²` | deficiency `(2,2)` | Check |
| 3.3 maximal domain | `e^{−|x|}` on `ℝ`; `χ/|x|` on `ℝ³` | `Δu = −u + 2δ₀`; `Δ(1/|x|) = 4πδ₀` (Mathlib sign `−4πδ₀`) | not in domain | Checks |
| 3.4 `H¹ ≠ H¹₀` | `(0,1)`, `u = 1` | Poincaré `‖u‖ ≤ π⁻¹‖u'‖` fails (`1 > 0`) | `1 ∉ H¹₀` | Check; Dirichlet `n²π²` (`n ≥ 1`) vs Neumann (`n ≥ 0`) |
| 3.5 cutoffs need completeness | `(0,1)` | `1 ≤ (4/k)(1/2)` false for `k > 2` | no cutoffs | Check |
| 3.5 disconnected `X` | countable union of circles | `χ_k = 1` on first `k` circles | handled componentwise | route enumerates components |
| 3.6 completeness not necessary | `ℝ⁴ ∖ {0}` | singular solutions `~|x|^{−2}`, `∫_{|x|<1}|x|^{−4} = ∞` | essentially self-adjoint though incomplete | Check (theorem is not an iff) |
| 3.6 dimension 0 | countable discrete `X` | `Δ₀ = 0`, closure `0` | holds trivially | Check |
| 3.7 `λ₁` notation clash | target used `λ₁` for both ordered eigenvalue and "first spectral value above 0" | `X = ℝ`: both `0`; circle: both `1` | two notions | renamed the second `λ₁⁺`; comparison theorem added |
| 3.7 kernel | `ℝ` (vol ∞); circle; point | `0 ∉ σ_p`; simple; `L² = ℂ` | holds | Checks |
| 3.8 `λ_k → ∞` | `dim X = 0`, `N` points | `L² = ℂ^N`, all `λ_k = 0` | false in dimension 0 | hypothesis `dim X ≥ 1`, `X ≠ ∅` |
| 3.8 multiplicity of `0` | two circles; round `S²` | `2`; `l(l+1)` with mult `2l+1` | holds | Checks |
| 3.9 bounded potential | circle, `V = 1_{[0,π)}`; `V = −x⁴` | Rayleigh of `1`: `π/2π = 1/2`; `−x⁴` limit circle | holds; unbounded excluded | Checks |
| 3.10 cusp threshold | `y^{1/2+it}` on `(a,∞)`; parabolic vs hyperbolic cylinder | `Δ = 1/4 + t²`; `∫|y^{1/2+it}|² dy/y² = ∞`; area `w/a = 1`; funnels infinite area | holds; no cusp, no claim | Checks; Weyl ratio `O(1/n)` computed via `y^{1/2}(1/4 − ∂_r²)` |
| 4.1 `2π` normalisation | Gaussian `e^{−πx²}` | `‖u''‖² = 3π²2^{−1/2}`, `‖ξ²𝓕u‖² = 3·2^{−1/2}/(16π²)`, ratio `(4π²)²` | holds | Check |
| 4.1 non-member | `1_{[−1,1]}` | `𝓕u = sin(2πξ)/(πξ)`, `ξ²𝓕u ∉ L²` | holds | Check |
| 4.2 purely ac | `d = 1` Gaussian; `d = 0` | density `e^{−λ/2π}/(2π√λ)`, mass `2^{−1/2} = ‖ψ‖²`; `ℝ⁰`: `H₀ = 0`, pure point | `d ≥ 1` needed | hypothesis `d ≥ 1` |
| 4.3 vanishing at infinity | `1_{⋃[n,n+n^{−2}]}`; `V = 1` | in `L¹ ∩ L^∞` but not vanishing; `(H₀+1)⁻¹` spectrum `[0,1]` uncountable | integrability insufficient; constant not compact | Checks |
| 4.4 lower bound | `V = c`; square well `−1_{[−1,1]}`; `1_{B_1}` (`d = 3`) | `σ = [c,∞)`; `k ≈ 0.739`, `κ ≈ 0.674`, `E ≈ −0.454 ∈ [−1,0)`; `σ = [0,∞)` | holds | Checks |
| 4.5 reality of quasi-periodic `V` | target allows arbitrary `θ_n` with `V_{−n} = conj V_n`; `θ_{e₁} = 1`, `θ_{−e₁} = 2` | `(e^{ix} + e^{2ix})/2` not real | false without `θ_{−n} = −θ_n` | frequencies defined as `θ_n = Σ n_jω_j` (kps26 (1.6)); Check |
| 4.5 conjugate symmetry | `V_{±e₁} = i` | `2i cos x` | needed | Check |
| 4.5 bound | `cos x + cos √2x` | `ess inf = −2` (not attained) | holds | Check |
| Context: Layer 1 without separability | all Layer 1 statements | only 1.4(3)–(4) use a maximal vector / separability | in scope | stated per item |
| Context: Layer 3 completeness | 3.1–3.4 (none), 3.5–3.10 (complete) | `(0,1)` checks | in scope | stated per item |
| Duplication by object at the pins | PVM, diag measures, Kato–Rellich, relative bounds, Laplace–Beltrami, Green, trace class, HS | found `TauCeti.ProjValMeasure`, `IsSelfAdjoint.add_of_isRelativelyBounded`, `LinearPMap.IsRelativelyBounded`, `TauCeti.Manifold.laplaceBeltrami`, `TauCeti.Manifold.integral_mul_laplaceBeltrami`, `ContinuousLinearMap.nuclearENorm`, `ContinuousLinearMap.hilbertSchmidtEnergy` | cited, not restated | supplier contracts |
| Consumers vs suppliers | K5a and VariationalMethods listed as consumers in the target | both are suppliers | would be a cycle | removed from consumers |

## Notions moved down from later roadmaps

- The free Laplacian on `H²(ℝ^d)` for every `d ≥ 1`, with cores and purely absolutely continuous
  spectrum (4.2), from QuantumFoundations §8.2 (merge-order line 202).

## Proposed Part IIs and future roadmaps

- A future roadmap on the spectral theory of finite-area hyperbolic surfaces (thick–thin
  decomposition, decomposition principle, Eisenstein series), consuming Layers 1 and 3.
- A future roadmap on scattering theory of Schrödinger operators (trace-class resolvent
  differences, Birman–Kato invariance, short-range existence and completeness), consuming 1.7–1.9 and
  Layer 4.

## Gaps

None. Every prerequisite is a pinned declaration, a section of a roadmap on main or earlier in the
merge order or another author's new-roadmap pull request, or a target here.

## Sources

Fetched in this job through the sources service: `kato57` (Proc. Japan Acad. 33, J-STAGE free
access, publisher-open) and `rosenblum57` (Pacific J. Math. 7, MSP world-readable archive,
publisher-open). An attempted fetch of Kato's 1957 finite-rank paper (J. Math. Soc. Japan 9) from
Project Euclid returned a bot-protection page rather than the paper; that entry was not kept and the
design does not depend on that paper (the general proof route of 1.9 cites rs3 Theorems XI.7–XI.8 by
locator and kato57 for the inequalities). Uncertified texts are cited by locator only, as settled.
`needs-references.toml` is not written: no text the design depends on is missing.

Manifest corrections: the `bms02` version note (which named theorems of a different paper) now
names §2, Theorem 2.3, Corollary 2.10 and Remark 2.12; the `kps26` note records that the
conjugation bar of (1.3) is lost in the OCR text (the reality of `V`, stated at kps26 line 29, fixes
it); page images could not be rendered on this host (no `pdftoppm`), so OCR locators were checked
against the surrounding text only.

## Dependency check (final run)

```
candidate: SchrodingerOperatorsAndSpectralTypes is not in the merge order yet; checked as if placed after HilbertModules (the intake inserts it when its design is accepted)
note: supplier VariationalMethods of SchrodingerOperatorsAndSpectralTypes is not in the merge order; it must be inserted before SchrodingerOperatorsAndSpectralTypes
depcheck: 242 roadmaps, 2371 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean
name found nowhere; Mathlib and Tau Ceti names were checked by hand at the pins (Mathlib
`1b1ccf4b`, Tau Ceti `2fd255d9`).

## Suspicious text

None found in fetched texts, roadmap files or the target.
