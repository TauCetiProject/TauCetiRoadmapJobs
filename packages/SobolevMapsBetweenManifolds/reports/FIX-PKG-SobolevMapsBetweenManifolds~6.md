# Repair report: SobolevMapsBetweenManifolds

## F01 (P3) — applied

Supplier contracts (From Mathlib bullet), §6.4 text and §6.4 `*Needs:*`: "`MeasureTheory.integral_withDensity_eq_integral_toReal_smul₀`" → "`integral_withDensity_eq_integral_toReal_smul₀`". The supplier bullet keeps its locator `Mathlib/MeasureTheory/Integral/Bochner/ContinuousLinearMap.lean:311` and now says "root namespace". `MeasureTheory.lintegral_withDensity_eq_lintegral_mul₀` is correctly namespaced and is unchanged.

## Verification and evidence

- **F01.** The finding is right.
  - At the pinned Mathlib, `Mathlib/MeasureTheory/Integral/Bochner/ContinuousLinearMap.lean` opens `namespace ContinuousLinearMap` (line 32), `LinearIsometry` (113), `ContinuousLinearEquiv` (122) and `section ContinuousMap` (135), and closes the last at line 156. No `namespace` opens between line 156 and line 311. The file only `open`s `MeasureTheory RCLike` (line 25). So the declaration at line 311 is `integral_withDensity_eq_integral_toReal_smul₀`, in the root namespace.
  - Mechanical witness, in a scratch file with `import Mathlib` and no `open`: `#check @MeasureTheory.integral_withDensity_eq_integral_toReal_smul₀` fails with "Unknown identifier". `#check @integral_withDensity_eq_integral_toReal_smul₀` elaborates. Its hypotheses are `AEMeasurable f μ` and `∀ᵐ x ∂μ, f x < ∞`, which is what the README states ("an a.e. measurable, a.e. finite density").
  - `MeasureTheory.lintegral_withDensity_eq_lintegral_mul₀` is at `Mathlib/MeasureTheory/Measure/WithDensity.lean:476`, inside `namespace MeasureTheory` (line 32), and it elaborates under that name.
- **Pattern search: every library name of the README.** I extracted every backticked identifier of the README and checked each one at the pins.
  - **96 names in Mathlib or in built Tau Ceti modules.** I put `#check @name` for each into a scratch file with `import Mathlib`, the six `TauCeti.*` imports of `Suggested.lean` and thirteen more built Tau Ceti modules. The file has no `open`, so that a root-cited name cannot resolve through an opened namespace, which is the confusion behind F01. It was elaborated once. All 96 elaborate under exactly the cited name, and the only error is the F01 negative control above. Among the 96, ten are cited in the root namespace: `ContDiffBump`, `ContMDiff`, `IsContinuousRiemannianBundle`, `IsLocalDiffeomorph`, `contDiffOn_ext_coord_change`, `exists_contDiff_support_eq_eq_one_iff`, `exists_embedding_euclidean_of_compact`, `isOpen_extChartAt_target`, `mfderiv_eq_fderiv` and the repaired name. Each of them resolves at the root.
  - **15 names in Tau Ceti modules without object files.** I read these in the pinned source. For each one, I computed the enclosing `namespace` stack at its declaration line, honouring `_root_.`:
    - `WeakDeriv/MeasurePreserving.lean:130`, `Mollification/Interior.lean:87` and `:110`, `WeakDeriv/Interval.lean:302`, `WeakDeriv/Local.lean:71`, `WeakDeriv/Limit.lean:89`;
    - `SmoothEmbedding/Extension.lean:64` and `:201`;
    - `W1p/ChangeOfVariables.lean:274`, `:302` and `:316`, and `W1p/ChainRule.lean:375`;
    - `TubularNeighborhood/LocalInverse.lean:46`, `SpecialFunctions/CantorFunction.lean:245`;
    - `Sard/LowDimension.lean:73`, which is `_root_.DifferentiableOn…` inside `namespace TauCeti`.

    Each fully qualified name equals the name the README cites.
  - **The 14 `file:line` locators** that the README gives for library declarations were opened at the pins. Each line is the declaration named next to it.
  - No other occurrence of the defect was found.

## Computed adversarial mathematics pass

The mathematics of the README did not change; the repair renames a citation. The pass checks the cited lemma against the use §6.4 makes of it, and recomputes the §6.4 Checks that rest on it. Write `w^± = ENNReal.ofReal(J_f^±)` and `μ_f^± = vol_M.withDensity w^±`.

| Statement | Instances tried | Values on each side | Result | Change |
| --- | --- | --- | --- | --- |
| Name of the Bochner density lemma | `#check` of the old and the new spelling, no `open` in scope | old: "Unknown identifier"; new: elaborates, hypotheses `AEMeasurable f μ`, `∀ᵐ x ∂μ, f x < ∞` | old spelling wrong, new right | renamed in 3 places |
| §6.4: the lemma's hypotheses hold for `w^±` | `J_f` real-valued, junk value `ENNReal.ofReal t = 0` for `t < 0`, `ENNReal.toReal ∞ = 0` | `ENNReal.ofReal t < ∞` for every real `t`, so `w^± < ∞` everywhere; the a.e. finiteness hypothesis holds without a null set. `(ENNReal.ofReal t).toReal = max(t, 0)`, so `(w^+).toReal = J_f^+` and `(w^−).toReal = J_f^−` with no loss at negative values. The `∞` junk value is never reached. | hypotheses met, formula gives `∫ g J_f^± dvol_M` | none |
| §6.4 Check, `f(x) = 2x` on flat `ℝ`, `g = 1_{[0,1]}` | lemma applied to `w^+ = 2`, `w^− = 0` | `∫ g dμ^+ = ∫_0^1 2 = 2`, `∫ g dμ^− = 0`, signed value `2 = vol([0,2])` | agrees with the change of variables | none |
| §6.4 Check, `f(x) = −x` | `J_f = −1` | `w^+ = ENNReal.ofReal 0 = 0`, `w^− = 1`; `μ^+([0,1]) = 0`, `μ^−([0,1]) = 1 = vol([−1,0])`, signed `−1` | agrees, sign carried by `μ^−` | none |
| §6.4 Check, null-modified identity `D(1/k) = k² id` | `k = 2, 10, 100` | `w^+(1/k) = k²`, finite at every point; `w^+ = 1` a.e.; `∫_{[0,1]} J_f = 1 = μ^+([0,1])`, `μ^−([0,1]) = 0` | lemma applies; pointwise unboundedness does not matter | none |
| §6.4, dimension `0` | `J_f = ±1` | `w^± ∈ {0, 1}`; `μ^+ + μ^−` is the counting measure on `M`, and `vol` of a point is `1` | agrees with §6.1's `n = 0` value `±1` | none |

## Checks

- **Elaboration.** `lake env lean packages/SobolevMapsBetweenManifolds/Suggested.lean` was run from the content checkout. It exits 0 with 16 warnings, all "declaration uses `sorry`", and no error. No `TauCeti.*` module needed building. `Suggested.lean` is not edited: it does not cite the renamed lemma, and no Lean name of this roadmap changed.
- **Binders.** I made a scratch copy of `Suggested.lean` with `#check @name` for all 21 declarations and elaborated it once (exit 0, no error). I compared each elaborated type, whitespace-normalised, with the type recorded before this round. All 21 are identical, so no section binder is lost and nothing changed.
- **Citations.** No cross-roadmap citation changed. The library-name check above covers every backticked library name of the README.
- **Dependency check**, exact command of the brief:

  ```text
  depcheck: 245 roadmaps, 2229 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or `moved:` line.
- **Gate failures.** None were listed for this round.

## Notes for the maintainer

- Files edited: `packages/SobolevMapsBetweenManifolds/README.md` only: the supplier-contract bullet, the §6.4 text and the §6.4 `*Needs:*` line, three lines in all. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged, and no supplier gap is added.
- No name that other roadmaps cite changed. The renamed item is a Mathlib declaration, not a target of this roadmap.
- Sources: no source was cited or fetched, and `needs-references.toml` is not written.
- Ownership: no construction was introduced, so no ownership question arises.
- The review's "Source issues" item (a misprint in HeikkilaPankka2025, Appendix B, line 1328) is not a finding. §8.2 already writes the composite in the type-correct order, so no edit follows.
- No passage of the review read as an instruction outside this job.
