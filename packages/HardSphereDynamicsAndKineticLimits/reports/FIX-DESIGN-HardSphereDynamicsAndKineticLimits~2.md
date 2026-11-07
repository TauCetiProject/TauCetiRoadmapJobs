# FIX-DESIGN-HardSphereDynamicsAndKineticLimits~2

Repair of the findings of `REV-DESIGN-HardSphereDynamicsAndKineticLimits` (review of the design, round 2). Files edited: `packages/HardSphereDynamicsAndKineticLimits/design/README.md` and `packages/HardSphereDynamicsAndKineticLimits/design/plan.json`. `sources.toml` is unchanged (no source was added or dropped; GST2013 remains the source of §2.2 for the involution, the Jacobians and the kernel). No `Suggested.lean` exists at the design stage, so no elaboration and no `#check` pass was possible; the headline list is the README's own list.

## REV-DESIGN-HardSphereDynamicsAndKineticLimits/F01 (P2) — applied

Verified: §4.5 defines `P^{ij}_s` only where `‖x_i − x_j‖ + 2Rs < ρ`; a near pair of §6.2 (distance up to `ε + 2Rδ`) needs `ε + 4Rδ < ρ`. The reviewer's witness (unit torus, ε = 0.3, R = 1, δ = 0.09, pair at 0.47) recomputed: `0.47 + 0.18 = 0.65 ≥ 0.5`.

Changed: §6.2 hypothesis `ε + 2Rδ < ρ` → `ε + 4Rδ < ρ`, with the near-pair threshold `ε + 2Rδ` named explicitly and the pair maps taken with `η = 4Rδ`; §6.3 now quantifies over `δ > 0` with `ε + 4Rδ < ρ` and says `C` is independent of δ; §6.4's "for every δ" → "for every δ with `ε + 4Rδ < ρ`"; the §6.2 head-on Check reads `ε + 4Rδ < ρ = ∞`; a new §6.2 Check records the witness (δ = 0.09 fails the chart domain, δ = 0.045 passes). Plan: 6.2 statement and hypotheses, 6.3 statement and hypotheses, one new test in 6.2. Same pattern elsewhere: §4.5 (`ε + η < ρ`, `2Rs ≤ η`) and §6.1 (`ε + η < ρ`, now instantiated with `η = 2Rδ < 4Rδ`) were rechecked and are consistent; §7.2 only takes δ → 0 and is unchanged.

## REV-DESIGN-HardSphereDynamicsAndKineticLimits/F02 (P3) — applied differently

Verified at the pin: `Mathlib/MeasureTheory/Measure/Haar/Quotient.lean` lines 75 (`measurePreserving_quotientGroup_mk_of_QuotientMeasureEqMeasurePreimage`, additive form used at `Periodic.lean` line 94), 222 (`QuotientMeasureEqMeasurePreimage.haarMeasure_quotient`), 262 (`IsFundamentalDomain.QuotientMeasureEqMeasurePreimage_HaarMeasure`); `Submodule.Quotient.normedAddCommGroup` at `Normed/Group/Quotient.lean` line 433 is `inferInstanceAs` of the `AddSubgroup` instance, and `Submodule.quotientRel` is `QuotientAddGroup.leftRel L.toAddSubgroup` (`LinearAlgebra/Quotient/Defs.lean` line 44), so the two carriers coincide by definition.

Differently in one detail: the reviewer's route to the typeclass (`…_HaarMeasure`, line 262) requires `[IsAddLeftInvariant μ]` of the quotient measure, which a pushforward definition does not have for free. Mathlib has the direct lemma `MeasureTheory.IsFundamentalDomain.quotientMeasureEqMeasurePreimage_quotientMeasure` (`Group/FundamentalDomain.lean` line 801, `to_additive`): the image of the upstairs measure restricted to one fundamental domain satisfies the typeclass, with no invariance hypothesis. The README cites that instead, then `MeasureTheory.IsAddFundamentalDomain.addProjection_respects_measure` for independence of the fundamental domain, line 75 for the measure preservation of the quotient map, and `haarMeasure_quotient` (additive form) for the Haar property, listing its hypotheses (Polish, locally compact, quotient Hausdorff and second countable, countable normal subgroup, Haar and right-invariant upstairs measure, finite quotient measure). The quotient is fixed as `E ⧸ L.toAddSubgroup`, so the `QuotientAddGroup.*` names apply as stated.

What remains a target of §1.3: the `MeasureSpace` instance (pushforward of Lebesgue measure restricted to `ZSpan.fundamentalDomain` of a chosen basis, `ZLattice.isAddFundamentalDomain`); the one-line lemma that this set is a fundamental domain for the opposite subgroup `AddSubgroup.op L.toAddSubgroup` (the action Mathlib's quotient theorems use; on a commutative group it is the same maps), without which none of the cited theorems applies; the total mass `ZLattice.covolume L` via `ZLattice.covolume_eq_measure_fundamentalDomain` (`Covolume.lean` line 85, real-valued); the §1.1 instance, whose local measure axiom is derived by unfolding (translates of `A ⊆ B(0, ρ)` are disjoint). Changed: §1.3 definition paragraph, first API bullet (now the opposite-subgroup lemma and a non-example: `B(0, 1/2)` is not a fundamental domain of `ℤ^d` for `d ≥ 2`, density `ω_d/2^d < 1`), §1.3 Needs; "From Mathlib" bullets for ZLattice (adds `covolume_eq_measure_fundamentalDomain`), the fundamental-domain typeclass (adds the two lemmas and says §1.3 chooses the instance), and a new bullet for the two Haar/Quotient declarations. Plan 1.3: statement, prerequisites, first API entry.

## REV-DESIGN-HardSphereDynamicsAndKineticLimits/F03 (P3) — applied

Verified: `integral_eq_sub_of_hasDerivAt` (`FundThmCalculus.lean` line 1148) needs `HasDerivAt` on `uIcc a b`; `integral_eq_sub_of_hasDerivAt_of_le` (line 1140) needs `a ≤ b`, continuity on `Icc`, the derivative on `Ioo`, interval integrability. The reviewer's witness recomputed on the head-on trajectory: `x_1 − x_2 = (2 − t, 0)` before and `(t, 0)` after the collision, so `g(t) = χ(t)(2 − t)` / `χ(t) t`, one-sided derivatives `χ'(1) ∓ χ(1)`.

Changed: §8.2 route cites `_of_le` on each closed piece between consecutive collision times (old → new lemma name), "From Mathlib" bullet restated with the new hypotheses, §8.2 Needs, plan 8.2 prerequisite; a new §8.2 Check records the witness; plan 8.2 gets the matching test. No other section cites the fundamental theorem of calculus (grep).

## REV-DESIGN-HardSphereDynamicsAndKineticLimits/F04 (P3) — applied

Verified at GST2013: lines 394–400 are the involution and (2.1.3); 432–437 are (2.2.1) with the unit Jacobians; the hard-sphere kernel `b(w, ω) = (ω·w)_+` is at lines 674 and 1264–1268; the value `ω_{d−1}|k|` appears nowhere in GST2013, BGSS2023 or DengHaniMa2024 (grep for "cross-section" and the kernel).

Changed: §2.2 keeps 394–400 for the involution, 432–437 for the Jacobians, adds 674 and 1264–1268 for the kernel, and presents the value as this roadmap's elementary computation with the route written out (polar decomposition of `toSphere` for degree-1 homogeneous integrands, then Fubini over `e^⊥ × ℝ`: `∫_{B(0,1)} ⟨e, x⟩_+ = ½ ∫_{B^{d−1}} (1 − |y|²) = ω_{d−1}/(d + 1)`). Plan 2.2 locator and statement mirror this. One consequence beyond the locator: with the computation in hand the formula holds for every `d ≥ 1` (`ω_0 = 1`; in d = 1 the sphere measure is the counting measure on `{±1}`, as the reviewer's own table row computed), so the statement is now for `d ≥ 1`, the Conventions line no longer ties §2.2 to `d ≥ 2`, and a d = 1 Check was added (README and plan 2.2 hypotheses `d ≥ 1`). The restriction to `d ≥ 2` had rested only on the (absent) source locator.

## REV-DESIGN-HardSphereDynamicsAndKineticLimits/F05 (P3) — applied

Verified: `lake-manifest.json` pins Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e` and Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`. Changed: README lines "The baseline is Mathlib `f6090…`" / "Tau Ceti `358314…`" → "Every declaration below was read at the pinned Mathlib / Tau Ceti" (no hash); plan `baseline` set to the manifest's two hashes. Every declaration added in this round was opened at those pins (file and line in the sections above and in the table below).

## REV-DESIGN-HardSphereDynamicsAndKineticLimits/F06 (P3) — applied

Verified: the involution, the two conservation laws and `⟨v' − w', ν⟩ = −⟨v − w, ν⟩` are polynomial identities in `⟨v − w, ν⟩` with `|ν| = 1`; measure preservation is `Submodule.det_reflection` (`det = −1`) followed by `MeasureTheory.Measure.map_linearMap_addHaar_eq_smul_addHaar` (`EqHaar.lean` line 231, `map f μ = |det f|^{−1} • μ`). These mirror the §2.1 API and Checks and are not headline theorems.

Changed: the three names `HardSphere.measurePreserving_scatter`, `HardSphere.scatter_involutive`, `HardSphere.scatter_conserves` are removed from the §2.1 sentence and §2.1 is dropped from the headline list (README "How to read the build"); the sentence now says why they are API, and `map_linearMap_addHaar_eq_smul_addHaar` is added to "From Mathlib" and to §2.1 Needs. Plan 2.1: the three API entries keep their statements under the plain names `scatter_involutive`, `scatter_conserves`, `measurePreserving_scatter` (no `HardSphere.` prefix, so no claim of a `Suggested.lean` declaration); prerequisite added. `HardSphere.scatter` itself stays a `Suggested.lean` definition (the flow's statements need it). The headline list is now `IsTrajectory.eqOn`, `volume_hardCoreSet_diff_goodSet`, `flow_add`, `measurePreserving_flow`, `flow_reversal`, `weak_liouville`, `grandCanonical_flow_invariant`, `lintegral_sum_distinct_eq_correlation`, `boltzmannGrad_scaling`, `tendsto_empirical_of_correlation`, `LanfordStatement.tendsto_empirical`, as the reviewer listed.

## Checks

Dependency gate (run after the edits):

```
candidate: HardSphereDynamicsAndKineticLimits is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 242 roadmaps, 2362 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name found nowhere (the resolver reported that it had no pinned Lake packages on this host for library names; the library names added this round were opened by hand at the pin, see the table). No gate failures were listed in the brief. Ownership against open pull requests: the review's grep covers the objects touched here (flat torus, Haar quotient measure); nothing new was planned, only Mathlib citations, so no further ownership search was needed. Plan counts after the edits: 10 layers, 45 targets, 145 tests (three tests added: 2.2 `cross_section_d1`, 6.2 `chart_domain`, 8.2 `collision_time_derivative`).

## Adversarial pass on the changed text

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §6.2 domain of `P^{ij}_δ` under `ε + 4Rδ < ρ` | unit torus ρ = 1/2, ε = 0.3, R = 1; δ = 0.09 and δ = 0.045; `E` with δ = 3 | δ = 0.09: `ε + 2Rδ = 0.48 < 0.5` but near pair at 0.47 needs `0.47 + 0.18 = 0.65 ≥ 0.5`; δ = 0.045: `ε + 4Rδ = 0.48`, near pairs ≤ 0.39, `0.39 + 0.09 = 0.48 < 0.5`; `E`: ρ = ∞, any δ | hypothesis sufficient and needed | applied (Check added) |
| §6.2 near-pair threshold `ε + 2Rδ` | two particles at distance `ε + 2Rδ + η'`, `η' > 0`, speeds ≤ R | distance after time δ ≥ `ε + 2Rδ + η' − 2Rδ > ε`: no contact | threshold correct | none |
| §6.2 complement is `I` with `η = 2Rδ` | §6.1 needs `ε + η < ρ` | `ε + 2Rδ < ε + 4Rδ < ρ` | admissible | none |
| §6.3 constant independent of δ | GST sum | `δ² Σ_{j < t/δ} (1 + jRδ)^{d(N−2)} ≤ δ t (1 + Rt)^{d(N−2)}` | bound `C δ` with `C(N, ε, R, K, t)` | none |
| §1.3 opposite-subgroup fundamental domain | `E = ℝ`, `L = ℤ`, `𝓕 = [0, 1)`; `k ∈ L` | `op(k) +ᵥ x = x + k = k + x`: translates of `𝓕` by `L` and by `L.op` are the same sets `[k, k + 1)` | same action on a commutative group | none |
| §1.3 pushforward typeclass | `ℤ ⊂ ℝ`, `𝓕 = [0, 1)` versus `𝓕' = [−1/2, 1/2)` | both images are the Haar measure of mass 1 on `ℝ/ℤ`, as `Mathlib`'s `AddCircle` instance (`Periodic.lean` line 65) with `T = 1` | independence holds | none |
| §1.3 total mass | `2ℤ × ℤ`; `ℤ^d` | `vol([0,2) × [0,1)) = 2 = covolume`; `1` | agrees with §1.3 Checks | none |
| §1.3 non-example `B(0, 1/2)` | `ℤ^2`; `ℤ^1` | density `π/4 ≈ 0.785 < 1`: not a fundamental domain, image mass `π/4`; `d = 1`: `(−1/2, 1/2)` misses only `1/2 + ℤ`, null, so it is one | wording restricted to `d ≥ 2` after a first draft claimed `d ≥ 1` | corrected |
| §1.3 local measure axiom by unfolding | `A ⊆ B(0, ρ)`, ρ = 1/2, `ℤ^d` | translates `A + k` disjoint since π injective on `B(0, ρ)`; `Σ_k vol(A ∩ (𝓕 − k)) = vol(A)` as `{𝓕 − k}` tiles `E` | holds | none |
| §1.3 `haarMeasure_quotient` hypotheses | `E = ℝ^d`, `L` a lattice | Polish ✓, locally compact ✓, quotient metric (closed `L`) and second countable (`QuotientAddGroup.instSecondCountableTopology`, `Topology/Algebra/Group/Quotient.lean` line 140) ✓, `L` countable (`instCountable_of_discrete_submodule` (`ZLattice/Basic.lean` line 652)) and normal (commutative) ✓, `vol` Haar and right invariant ✓, finite mass `vol(𝓕) < ∞` (`ZSpan.fundamentalDomain_isBounded`) ✓ | all hypotheses listed in the README hold | none |
| §2.2 cross-section value | d = 3, 2, 1 | `∫_B ⟨e,x⟩_+ = ½ ω_{d−1}(1 − (d−1)/(d+1)) = ω_{d−1}/(d+1)`; times `(d+1)`: `ω_2 = π`, `ω_1 = 2`, `ω_0 = 1`; d = 1: σ_S total mass `1 · 2 = 2`, counting measure on `{±1}`, integral `|k|` | formula holds for all d ≥ 1 | statement widened to d ≥ 1, Check added |
| §2.2 polar identity for degree 1 | `g = 1` (degree 0) as control | `vol(B) = (1/d) σ_S(univ)` agrees with `toSphere_apply_univ` (`HaarToSphere.lean` line 88) | normalisation consistent | none |
| §8.2 one-sided derivatives at a collision | head-on witness, `φ = χ(t)ψ(⟨x_1 − x_2, e_1⟩)` | `x_1 − x_2 = (2 − t, 0)` for `t ≤ 1`, `(t, 0)` for `t ≥ 1`; `g(1−) = g(1+) = χ(1)`; derivatives `χ'(1) − χ(1)`, `χ'(1) + χ(1)` | derivative absent at the collision; `_of_le` applies on `[t_k, t_{k+1}]` | applied |
| §8.2 admissibility of the witness | `Lφ` | `χ'(t)ψ(·) + χ(t)ψ'(·)⟨v_1 − v_2, e_1⟩`, bounded for bounded ψ, ψ' | admissible | none |
| §2.1 measure preservation route | `det σ_ν = −1` | `map σ_ν vol = |(−1)^{−1}| • vol = vol` by `map_linearMap_addHaar_eq_smul_addHaar` | API lemma, two library steps | names removed from headlines |

## For the maintainer

- Names dropped from the intended `Suggested.lean`: `HardSphere.measurePreserving_scatter`, `HardSphere.scatter_involutive`, `HardSphere.scatter_conserves` (API of §2.1 now). No other roadmap cites them (the roadmap is at the design stage and has no consumers on main).
- The §2.2 cross-section formula is now stated for `d ≥ 1` instead of `d ≥ 2`; the Conventions line was adjusted accordingly. §10.4 keeps `d ≥ 2`.
- Library declarations added this round and where they were opened at the pin: `MeasureTheory.IsFundamentalDomain.quotientMeasureEqMeasurePreimage_quotientMeasure` and `MeasureTheory.IsAddFundamentalDomain.addProjection_respects_measure` (`Mathlib/MeasureTheory/Group/FundamentalDomain.lean` lines 801 and 755, inside `namespace MeasureTheory`), `measurePreserving_quotientAddGroup_mk_of_AddQuotientMeasureEqMeasurePreimage` and `MeasureTheory.QuotientMeasureEqMeasurePreimage.haarMeasure_quotient` (`Haar/Quotient.lean` lines 75, 222), `ZLattice.covolume_eq_measure_fundamentalDomain` (`ZLattice/Covolume.lean` line 85), `ZSpan.fundamentalDomain` (`ZLattice/Basic.lean` line 93), `MeasureTheory.Measure.map_linearMap_addHaar_eq_smul_addHaar` (`Lebesgue/EqHaar.lean` line 231), `intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le` (`FundThmCalculus.lean` line 1140). The two `to_additive` forms whose generated names could not be confirmed by a usage in Mathlib (`…quotientMeasureEqMeasurePreimage_quotientMeasure`, `…haarMeasure_quotient`) are cited by their multiplicative names with "additive form", as the review did; no Lean command was available to this job to print them.
- `sources.toml` unchanged; no `needs-references.toml` entry was needed.
