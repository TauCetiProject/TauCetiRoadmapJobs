# Repair report: SchattenClassesAndSchurMultipliers design, round 5

Review settled: `REV-DESIGN-SchattenClassesAndSchurMultipliers~4` (eight findings F01–F08: one P2, seven P3). I checked each one against the cached sources, the pinned Mathlib (`1b1ccf4b`), the supplier roadmaps on main and AutomorphicSpectralTheory at the head of its open pull request. All eight are correct, and all eight are applied. Where the same defect appeared elsewhere in the roadmap, those places were repaired too.

Files edited:

- `packages/SchattenClassesAndSchurMultipliers/design/README.md`;
- `packages/SchattenClassesAndSchurMultipliers/design/plan.json`, rewritten in its own format (`indent=1`, non-ASCII kept).

`sources.toml` is unchanged: the new locator, lafforgue-delasalle-2011 Conjecture 1.8, belongs to a key that already lists target 7.3.

## F01 (P2) — applied

Changed: §2.2's trace formula now has its own route here: `Tr(AC) = ⟨k_{A*}, k_C⟩_{L²(ν⊗μ)}` (polarised kernel isometry of §2.1 for `(A*, C)`), then the adjoint kernel and Cauchy–Schwarz. The disjoint-union argument is gone. AutomorphicSpectralTheory §0.10 is dropped from the gap (`section` is now `§0.8`), the contract, the supplier entry, Scope, the §2.2 Needs line and the Layer 2 Dependencies.

Verified: AutomorphicSpectralTheory §0.10 (open head, `kernel_trace_diagonal`) needs only its §0.8 and §0.9. Our §2.1 already had `⟨k_A, k_B⟩ = Tr(A*B)`, and §2.2 already had `k_{A*}(y, x) = conj k_A(x, y)`. The adjoint-kernel bullet uses only `kernel_apply` and Fubini, so the route is not circular.

Pattern repair: the polarised identity in §2.1 needed the trace, but §2.1 did not cite it. It now names its inputs: OperatorIdeals OI-B32–OI-B35 (`‖A‖₂² = Σ_j ‖Ae_j‖²`) and AutomorphicSpectralTheory §0.9 (`Tr(B C) = Σ_j ⟨B* e_j, C e_j⟩`). Both are on arbitrary Hilbert spaces, outside the gap. Plan 2.1 gains `roadmap:AutomorphicSpectralTheory §0.9`. Plan 2.2 replaces §0.10 by §0.8 (`kernel_apply`).

Worked example recomputed:

- `E₁₂`, `E₂₁`: `k_{E₁₂*} = 1_{(2,1)}` and `⟨k_{E₁₂*}, k_{E₂₁}⟩ = 1 = Tr(E₁₂E₂₁)`.
- `A = iE₁₂`: `k_{A*} = −i·1_{(2,1)}` and `⟨k_{A*}, k_{E₂₁}⟩ = conj(−i) = i = Tr(AE₂₁) = k_A(1,2)k_{E₂₁}(2,1)`. A conjugation-free adjoint kernel would give `−i`; this is added as the witness.
- The two-space reading `Ω = {1}`, `Ω' = {2}` gives `1 = 1`.

## F02 (P3) — applied

Changed: "How to read the build" and the Dependencies lines now list exactly the layers that the Needs lines cite:

- Layer 5: Layers 2 and 3.
- Layer 7: Layers 3 and 5.
- Layer 8: Layers 1, 3 and 5.
- Layer 9: Layers 1, 3, 4 and 8.

The same defect also appeared at Layer 2 (needs §1.1 and §1.4), Layer 4 (Layers 1–3), Layer 6 (Layer 1 through §6.3's §1.4) and Layer 11 (Layer 2 through §11.3's §2.1). Those are fixed too.

Verified: I parsed all 45 Needs lines and the plan's `target:` prerequisites with a script and compared the per-layer unions. The values are listed under Checks. Layer 9 includes Layer 1 because F08 adds §1.1 to §9.3.

## F03 (P3) — applied

Changed: the cosine Check of §9.1 now reads `M_m = (M_{e_a} + M_{e_{−a}})/2`. Each part is a conjugation by a diagonal unitary (§3.1), so every norm and completely bounded norm is at most 1 (§3.3, §3.5). Equality comes from the test operator `u ⊗ u*`, a small-ball indicator: `S(u⊗u*) = (cu)⊗(cu)* + (su)⊗(su)*`, of norm at least `‖cu‖² → 1`. The §9.1 Needs line goes from §6.4 to §3.5; plan 9.1 matches.

Verified: §6.4 was cited only by this Check. `cos(α − β) = cos α cos β + sin α sin β` gives the rank-two kernel. For `n = 1`, `a = 1`, `‖cu‖²` is the ball average of `cos²(2πx)`: `0.8784` at `r = 0.1` and `0.99869` at `r = 0.01`. At `a = 0` the symbol is `1` and both sides are `1`. §3.5 was also missing from the Needs line, although the API states completely bounded norms; it is now listed. The factorisation through `ℂ²` remains a worked example of §6.4.

## F04 (P3) — applied

Changed: plan.json targets 5.2 and 5.3: `target:3.5` → `target:3.6`. The routes use the stabilisation on `Ω × ℕ`, and 3.6 already requires 3.5. A script comparison now finds no target whose README Needs line and plan prerequisites differ.

## F05 (P3) — applied

Changed: `### From Mathlib` gains bullets, each with its file and what is assumed, for `WithLp` (with `PiLp.innerProductSpace`), `MeasureTheory.integral_prod`, `MeasureTheory.Measure.withDensity`, `Matrix.toEuclideanCLM`, `Matrix.kroneckerMap`, `Matrix.transpose`, `geometric_hahn_banach_point_closed` and `ContDiffBump.ae_convolution_tendsto_right_of_locallyIntegrable`. A ninth name was missing the same way: `lp` (§6.2).

Each declaration was checked at the pin:

| Declaration | File and line | What the bullet assumes |
|---|---|---|
| `WithLp` | `Analysis/Normed/Lp/WithLp.lean:49` | the bare synonym carries no norm |
| `PiLp.innerProductSpace` | `InnerProductSpace/PiL2.lean:84` | inner product `Σ_i ⟨x_i, y_i⟩` |
| `MeasureTheory.integral_prod` | `MeasureTheory/Integral/Prod.lean:443` | `SFinite μ`, `SFinite ν`; the bullet states s-finiteness rather than σ-finiteness |
| `MeasureTheory.Measure.withDensity` | `Measure/WithDensity.lean:39` | as stated |
| `Matrix.toEuclideanCLM` | `Analysis/CStarAlgebra/Matrix.lean:101` | star-algebra equivalence |
| `Matrix.kroneckerMap` | `LinearAlgebra/Matrix/Kronecker.lean:55` | as stated |
| `Matrix.transpose` | `LinearAlgebra/Matrix/Defs.lean:153` | as stated |
| `geometric_hahn_banach_point_closed` | `Analysis/LocallyConvex/Separation.lean:223` | real locally convex spaces |
| `ContDiffBump.ae_convolution_tendsto_right_of_locallyIntegrable` | `Analysis/Calculus/BumpFunction/Convolution.lean:103` | finite-dimensional `G`, additive Haar measure, `rOut ≤ K·rIn` eventually, complete target |
| `lp` | `Analysis/Normed/Lp/lpSpace.lean:369` | inner product from `InnerProductSpace/l2Space.lean:116` |

A script check now finds no backticked library name in the README that is missing from the contract.

## F06 (P3) — applied

Changed: the §7.3 Check now says the proof does not apply to `M₂` (a two-point space cannot be refined). The source records that no Schur multiplier on `S_p^n` is known to have different norm and completely bounded norm, and conjectures one on `S_p(ℓ²)` (lafforgue-delasalle-2011 Conjecture 1.8, lines 281–285). The same overstatement was in Layer 7's Examples ("the source of the open question"); it now cites lines 283–285.

Verified: lafforgue-delasalle-2011 lines 281–285 state Conjecture 1.8 for `S_p(ℓ²)`, `1 < p < ∞`, `p ≠ 2`. They also say that no example on `S_p^n` with different norms is known. They say nothing about `n = 2` specifically.

## F07 (P3) — applied

Changed: §5.2 "Let `(𝓑_α)` be a directed family" → "a nonempty directed family", with the empty family as a negative control in the worked example. Plan 5.2 statement and hypothesis match. The §7.3 route notes that its family of finite sub-σ-algebras is nonempty because it contains the trivial σ-algebra.

Verified: the empty family generates `{∅, Ω}`. With `μ(Ω) = 1` and `f = 1`, `L²(𝓑) = ℂ`, so the left side is `1` and the empty supremum is `0`. With the one-member family `𝓑₀ = 𝓑`, both sides are `1`. Mathlib's `Directed` does not include nonemptiness. I found no other supremum over a possibly empty family: §1.4, §3.5 and §9.2 take the supremum over `m, k ≥ 1`, and §10.1 over cubes.

## F08 (P3) — applied

Changed: §9.3's first bullet now holds for `g ∈ L² ∩ Lᵖ(ℝⁿ; S_p^k)` (`L² ∩ L^∞` at `p = ∞`). It is proved first on `L¹ ∩ L^∞`, then extended by the truncations `g_j = g·1_{‖g‖≤j}·1_{|ξ|≤j}`, Plancherel `‖Λ_F(h)‖₂ ≤ |F|^{1/2}‖h‖₂` and lower semicontinuity of the gauge (§1.1). The equality clause of the third bullet moves to the same class. §1.1 is added to §9.3's Needs; plan 9.3 matches.

Verified on the reviewer's witness (`n = 1`, `p = 4`, `g = (1+|ξ|)^{−0.6}`):

- `‖g‖₂² = 10`, `‖g‖₄ = 1.0933` and `‖g‖₁ = ∞`.
- `‖g − g_j‖₂² = 10(1+j)^{−0.2}`, which is `6.19` at `j = 10` and `0.631` at `j = 10⁶`, tending to `0`.
- The bound is `‖Λ_F(g)‖₄ ≤ 1.0933·|F|^{1/4}`.

The `p = 1` step (`g = uv`, two Hilbert–Schmidt factors) needs only `g ∈ L¹ ∩ L²`. At `p = ∞`, `‖T_g‖ ≤ ‖g‖_∞` needs only `g ∈ L² ∩ L^∞`, so the extension is consistent at both endpoints. The §9.5 route ("for `g ∈ L² ∩ Lᵖ`, §9.3 gives …") is now covered as written.

## Checks

Dependency check (command of the brief):

```
candidate: SchattenClassesAndSchurMultipliers is not in the merge order yet; checked as if placed after AutomorphicSpectralTheory (the intake inserts it when its design is accepted)
depcheck: 208 roadmaps, 1920 edges, 0 problem(s)
```

No UPWARD or CYCLE line.

`roadmaps resolve` on the README finds no cross-roadmap citation and no Lean name that resolves nowhere.

Mechanical comparisons, run after the edits:

- README Needs lines against the plan prerequisites: no differences among the 45 targets.
- Forward prerequisites in plan.json: 0.
- Per-layer internal dependencies:

| Layer | Needs layers |
|---|---|
| 1 | none |
| 2 | 1 |
| 3 | 1, 2 |
| 4 | 1–3 |
| 5 | 2, 3 |
| 6 | 1, 3, 4, 5 |
| 7 | 3, 5 |
| 8 | 1, 3, 5 |
| 9 | 1, 3, 4, 8 |
| 10 | 1, 3 |
| 11 | 2, 3, 4, 7, 10 |

These match the "How to read the build" paragraph and every Dependencies line.

Other checks:

- **No Lean file.** There is no `Suggested.lean` at the design stage, so there was no elaboration and no `#check` audit; no Lean command was run.
- **Ownership.** I searched (`roadmaps grep`) for the kernel trace formula `Tr(T₁T₂) = ∫∫ K₁(x, y)K₂(y, x)` by object, on main and at all open heads. The only hit is AutomorphicSpectralTheory §0.10, which is on one space at the generality of its standard Borel §0.8. Scope now says in one clause how §2.2 differs: two arbitrary σ-finite spaces. No other new object was introduced.
- **Sources.** No text was missing, so `needs-references.toml` was not written. The only source line newly cited is lafforgue-delasalle-2011 lines 281–285, which I read in the cache.
- **Style.** No LaTeX delimiters, machine paths or process words in the README. The lines over 102 characters are all in passages untouched this round.

## Adversarial pass (new or changed statements)

| Statement | Instances | Values on each side | Result / change |
|---|---|---|---|
| §2.1 `⟨k_A, k_B⟩ = Tr(A*B)` | `A = E₁₂`, `B = iE₁₂`; `μ = 0` | `⟨1_{(1,2)}, i1_{(1,2)}⟩ = i`; `Tr(E₂₁·iE₁₂) = Tr(iE₂₂) = i`; basis sum `⟨Ae₂, Be₂⟩ = i`. Zero space: `0 = 0` | sound; inputs (OI-B32–B35, §0.9) named |
| §2.2 trace formula, new route | `E₁₂, E₂₁`; `iE₁₂, E₂₁`; two spaces `{1}`, `{2}`; `μ = 0` | `1 = 1`; `i = i`, conjugation-free variant `−i`; `1 = 1`; `0 = 0`. Bound: `|i| = 1 ≤ ‖A‖₂‖C‖₂ = 1` | sound; witness added |
| Gap `sigma-finite-hilbert-schmidt-kernels` | what §2.1–§2.4 consume | `kernel_apply`, `kernel_unique`, `kernel_norm` only; §0.9 is on arbitrary Hilbert spaces | narrowed to §0.8 |
| §5.2, nonempty family | empty; `{𝓑}`; dyadic `[0, 1]` | `1` against `0` (excluded); `1 = 1`; `1/2 ≤ 1 ≤ …` nondecreasing | hypothesis added |
| §7.3 Check (source claim) | lafforgue-delasalle-2011 lines 281–285 | conjecture on `S_p(ℓ²)`; no known `S_p^n` example; nothing about `n = 2` | rewritten |
| §9.1 cosine Check | `a = 0`; `n = 1`, `a = 1`, `r = 0.1, 0.01` | upper bound `(1+1)/2 = 1`; lower bound `‖cu‖² = 1`; `0.8784`, `0.99869` tending to `1` | sound; no §6.4 |
| §9.3 bound on `L² ∩ Lᵖ` | `g = (1+|ξ|)^{−0.6}`, `p = 4`; `p = 2`; `p = ∞` | `‖g‖₄ = 1.0933`, tail `10(1+j)^{−0.2} → 0`; `p = 2` reduces to Plancherel `|F|^{1/2}‖g‖₂`; `p = ∞` is `‖T_g‖ ≤ ‖g‖_∞` | sound |
| §9.3 third bullet (equality class) | `g ∈ L² ∩ Lᵖ` | liminf `≥ ‖g‖_p` (bullet 3) and every term `≤ ‖g‖_p` (bullet 1), so the limit exists and equals `‖g‖_p` | sound |
| §9.5 Fourier side (consumer) | `g ∈ L² ∩ Lᵖ` | needs bullet 1 for `g` and bullet 3 for `R T_m R g ∈ L²` | now covered |
| Contract `MeasureTheory.integral_prod` | pinned hypotheses | `SFinite μ`, `SFinite ν` (Prod.lean lines 100, 181, 347) | wording fixed (s-finite) |
| Layer dependencies | script over 45 targets | the table under Checks | paragraph and Dependencies repaired |

## Notes for the maintainer

- **AutomorphicSpectralTheory.** The gap `sigma-finite-hilbert-schmidt-kernels` now asks only for §0.8 at the generality of arbitrary σ-finite spaces. Its §0.10 is no longer consumed; its §0.9 still is, on arbitrary Hilbert spaces, as stated at its head. The plan's supplier entry is now `§0.8, §0.9`.
- **No renamed or removed ids.** No section, layer or target id of this roadmap changed, and no roadmap cites this one, so no citing roadmap is affected.
- **No notion moved.** No notion was moved down from a later roadmap, and no new supplier was added.
- **Text for the reviewer.** No passage in the review or in the fetched texts was suspicious.
