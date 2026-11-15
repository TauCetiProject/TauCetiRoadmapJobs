# Repair report: SobolevMapsBetweenManifolds

## F01 (P3) — applied

§1.4 "§1.2's second Check" → "third Check" (`log |x|`, `2π/(2 − p)`, infinite at `p = 2`). §2.4 "§2.3's third Check" → "fourth Check" (`e^{t²}`). Every other Check cross-reference was checked (§2.2 "second", §2.4 "second", §4.2 "§4.1's second", §4.4 "§1.3's first"), and each points at the right Check.

## F02 (P3) — applied

§7.1, first bullet: "for `volume`" → "for one, equivalently every, additive Haar measure `μ` on `E` (§1.2)", and the "Equivalently" clause is now relative to `μ`. New Check: on `(ℝ², sup norm)` (parallelogram law fails, `2 ≠ 4`) with the standard-basis Haar `μ`, `id_Ω` satisfies both sides for every `p`. No other "for `volume`" appears on a bare normed space.

## F03 (P3) — applied

`memManifoldW1pLoc_iff_norm`: deleted binder `(hf : MemManifoldW1pLoc I J 1 f)`. Docstring "Given W11 membership and any weak differential" → "Given any weak differential … already gives W11 membership". README §5.2 now explains why the Lean statement needs no membership hypothesis and the README statement does: `Df` is total. Pinned lemmas added to §5.2 *Needs:* and to the Tau Ceti contract.

## F04 (P3) — applied

§6.4 now states first, for any `C¹` open embedding with invertible differential, `μ_f^+(A) + μ_f^−(A) = ∫⁻_A |J_f| = vol_N(f(A))` with no orientation hypothesis; the two constant-orientation cases follow from it. Added the two-component witness Check (`1 + 1 = 2`, signed value `0`) and the reason `J_f` is locally bounded. *Needs:* adds §4.4, §6.1.

## F05 (P3) — applied

Added a blank line before §1.3's `*Needs:*`. Re-indented and reflowed the column-0 continuation lines inside bullets at Conventions/Totality, §4.1 API (*Existence and uniqueness*), §4.1 second Check, §8.4 last Check and Layer 8 Examples. A mechanical scan finds no column-0 continuation inside a bullet and no `*Needs:*` line without a blank line before it.

## Verification and evidence

- **F01.** §1.2's Checks, in order: `Ω = ∅`, identity of `E`, `log |x|`, Heaviside, Cantor, `E = ℂ`. §2.3's Checks: `W1p` agreement, linear `G`, cubic mollifier, `e^{t²}`. The finding is right.
- **F02.** `volume` on a normed space comes from `measureSpaceOfInnerProductSpace` (`Mathlib/MeasureTheory/Measure/Haar/OfBasis.lean:310`), which needs `InnerProductSpace`. A type variable `E` with only `[NormedSpace ℝ E]` has no `volume`, while `euclidean_compatibility` (`Suggested.lean:301`) quantifies over every additive Haar `μ`. The finding is right. One correction to its witness: in Mathlib the concrete type `ℝ × ℝ` does carry a product `volume` (`Prod.measureSpace`) although its norm is the sup norm. So the new Check does not claim that `ℝ²` with the sup norm lacks a `volume` instance. It says the sup norm comes from no inner product, so a statement phrased through an inner-product volume would not cover that `E`.
- **F03.** `TauCeti.HasWeakFDerivOn` unfolds to `∀ v, HasWeakLineDerivOn …`, which contains `LocallyIntegrableOn u Ω μ` (`TauCeti/Analysis/Sobolev/WeakDeriv/Basic.lean:213`, `:267`). `HasWeakFDerivOn.locallyIntegrableOn_deriv` (`:302`, needs `[FiniteDimensional ℝ E]`, which is in scope) gives `LocallyIntegrableOn U Ω μ`. `MeasureTheory.locallyIntegrableOn_iff` (`Mathlib/MeasureTheory/Function/LocallyIntegrable.lean:188`; open sets are locally closed, `E` is locally compact) gives `IntegrableOn` on every compact `K ⊆ Ω`, which is `MemLp · 1 (μ.restrict K)`. `HasWeakMDeriv` supplies `Continuous f` and an open overlap for every chart pair and every Haar `μ`. So `hD → MemManifoldW1pLoc I J 1 f` with no Lindelöf hypothesis, and `hf` was redundant.
- **F04.** The Lean conclusion `withDensity (ofReal |j|) A = vol_N(f '' A)` equals `μ_f^+(A) + μ_f^−(A)`, because `ofReal |t| = ofReal t⁺ + ofReal t⁻` and `withDensity` is additive in the density. Before this round the README covered only constant orientation behaviour. On the witness neither old case applied, while the Lean asserted `2 = 2`.
- **F05.** Layout only, no change to the mathematics.

## Computed adversarial mathematics pass

Every statement added or changed in this round is listed, with the Checks that use a changed object recomputed.

| Statement | Instances tried | Values on each side | Result | Change |
| --- | --- | --- | --- | --- |
| §1.4 Check citing §1.2 | `V = B(0, 1/2)`, `p = 2`; §1.2's `B(0,1)`, `p < 2`, `p = 2` | `2π ∫_0^{1/2} r^{−1} dr = ∞`; `2π/(2 − p)` finite for `p < 2`, `∞` at `p = 2` | agree | citation fixed |
| §2.4 Check citing §2.3 | `u = log |x|`, `G = e^{t²}`; `L = log |x| < 0` | `L² ≥ −2L` iff `L ≤ −2` iff `|x| ≤ e^{−2}`; `2π ∫_0^{e^{−2}} dr/r = ∞` | agree | citation fixed |
| §7.1 membership for Haar `μ` | `(ℝ², sup)`, `μ` standard-basis Haar, `f = id_Ω`; `μ' = 3μ`; `Ω = ∅`; `E = 0`; `|t|^{1/2}` on `ℝ`; `sign(x₁)` on `ℝ²` | `‖id‖_op = 1`, both sides true for every `p`; `L^p` norms scale by `3^{1/p}`, weak identity by `3` on both sides, membership unchanged; `∅`: both true; `E = 0`: `U = 0`, both true; `∫_{−1}^{1} |t|^{−p/2} < ∞` iff `p < 2`, both sides iff `p < 2`; discontinuous, both sides false | true at the Lean generality | README fixed |
| §7.1 new Check | parallelogram law for sup norm at `e₁, e₂` | `1 + 1 = 2` against `2(1 + 1) = 4` | not an inner-product norm | Check added |
| `memManifoldW1pLoc_iff_norm` without `hf` | `|t|^{1/2}`, `D = sign(t)|t|^{−1/2}/2`; `t log |t|`; Cantor function; `M = ∅`; dimension `0` | `∫_{−1}^{1} |t|^{−1/2}/2 = 2` (W11 implied), both sides iff `p < 2`; `D = log |t| + 1`, both true for finite `p`, both false at `∞`; no weak differential, so `hD` fails and the statement is vacuous; `∅`: `hD`, LHS, RHS all true; `D = 0`, `‖D‖ = 0 ∈ L^p_loc`, every map in class | true | binder deleted |
| §5.2 explanatory paragraph | Cantor function against total `Df` | total `Df = 0`, `‖Df‖ = 0 ∈ L^p_loc` but not in class, so the README hypothesis is needed for total `Df` and not for supplied `D` | consistent with the third Check of §5.2 | text added |
| §6.4 absolute identity | `2x` on `[0,1]`; `−x` on `[0,1]`; two components; `id : (ℝ, dt²) → (ℝ, 4dt²)` on `[0,1]`; `z²` on annulus (not injective); dimension `0`; `A = ∅`; `x³` (differential not invertible at `0`) | `2 = vol[0,2] = 2`; `0 + 1 = vol[−1,0] = 1`; `1 + 1 = 2 = vol((0,1) ∪ (2,3))`; `|J| = 2`, `∫_0^1 2 = 2 = ∫_0^1 2 dt`; `30π` against `15π` (excluded by injectivity); `#A = #f(A)` (counting measures, `|J| = 1`); `0 = 0`; `∫_0^1 3x² = 1 = vol[0,1]`, outside the hypotheses but true | true | stated first |
| §6.4 orientation consequences | `2x` (preserving), `−x` (reversing) | `J_f = 2 > 0`, `μ^− = 0`, `μ^+[0,1] = 2`; `J_f = −1`, `μ^+ = 0`, `μ^−[0,1] = 1 = vol[−1,0]` | follow from the identity | restated as consequences |
| §6.4 local boundedness of `J_f` for `C¹` `f` | `2x`; dimension `0`; target metric `4dt²` | `|J| = 2 ≤ ‖Df‖¹ = 2`; `|J| = 1 ≤ 0⁰ = 1`; `|J| = 2 = ‖Df‖` | bounded on compacts | clause added |
| §6.4 new Check | `M = (0,1) ∪ (2,3)`, `f = x` / `5 − x` | images `(0,1)`, `(2,3)` disjoint, so injective; `J = ±1`; `μ^+(M) = 1`, `μ^−(M) = 1`, sum `2`, signed `0` | sum equals volume, signed value does not | Check added |
| §6.4 second Check (reworded) | `f = −x`, `A = [0,1]` | `μ^+ = 0`, `μ^−[0,1] = 1`, `vol[−1,0] = 1`; with `|J_f|` alone, `−x` and `id` both give Lebesgue measure | consistent | reworded |
| Tau Ceti contract addition | `locallyIntegrableOn_deriv` with `E` finite-dimensional | pinned at `Basic.lean:302` with `[FiniteDimensional ℝ E]` | holds as stated | contract line added |

## Acceptance, signatures and dependency checks

- **Elaboration.** `lake env lean packages/SobolevMapsBetweenManifolds/Suggested.lean` from the content checkout: exit 0, 16 warnings, all "declaration uses `sorry`", no error. The six `TauCeti.*` imports had object files; nothing was built.
- **Binders.** I put a scratch copy of the file with `#check @name` for all 21 declarations through one elaboration (exit 0, no error) and compared the output with the elaborated signatures the worker recorded before this round. Only `memManifoldW1pLoc_iff_norm` changed: `MemManifoldW1pLoc I J 1 f →` is gone, and every instance binder (`[LindelofSpace M]`, both Riemannian bundles, both continuity instances, `[I.Boundaryless]`, `[J.Boundaryless]`, both `IsManifold … 1`) is still present. The other 20 declarations were not edited.
- **Dependency check**, exact command of the brief:

  ```text
  depcheck: 236 roadmaps, 2133 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or `moved:` line.
- **Citation resolve** of the README: no cross-roadmap citation and no Lean name found nowhere.

## Ownership, citations and maintainer notes

- No target, layer or section id changed. No supplier gap was needed, so `design/plan.json` is unchanged.
- No new cross-roadmap citation. The new library names (`TauCeti.HasWeakFDerivOn.locallyIntegrableOn`, `TauCeti.HasWeakFDerivOn.locallyIntegrableOn_deriv`, `MeasureTheory.locallyIntegrableOn_iff`, `Module.Basis.addHaar`) were opened at the pins; the last two were already in the Mathlib contract.
- **Changed signature.** `memManifoldW1pLoc_iff_norm` lost its `hf` argument. `roadmaps grep --fixed` finds no roadmap on main or in any open pull request that names it, and no board package cites it. QuasiregularMaps consumes this roadmap through declared gaps by object, not by this name, so it is unaffected.
- **Sources.** No new source. The §6.4 identity keeps its existing locator Lee2012 Ch. 16 (uncertified, settled), and `sources.toml` is unchanged. Ownership against open pull requests was not re-checked beyond the citation-resolve and name searches above, because no new object was introduced.
- No suspicious instructions were found in the review text.
