# Repair of HardSphereDynamicsAndKineticLimits (design, round 5)

This round repairs the findings of `REV-DESIGN-HardSphereDynamicsAndKineticLimits~4`: four findings, F01–F04. Each was checked against the mathematics, the cached sources and the head of ClassicalErgodicTheory, and all four are right. F01 is applied with one placement changed (reason below). Files edited: `packages/HardSphereDynamicsAndKineticLimits/design/README.md`, `packages/HardSphereDynamicsAndKineticLimits/design/plan.json`, `packages/HardSphereDynamicsAndKineticLimits/sources.toml`.

## F01 (P2) — applied differently

Scope: new paragraph deferring conull flows to ClassicalErgodicTheory §3.5, and explaining why §7.4 is not a citation. Suppliers: "No roadmap section is consumed" → `From TauCetiRoadmap.ClassicalErgodicTheory — §3.5` (items 1, 3, 4). The conull-flow identification goes in §7.2, not §7.1, to avoid a §7.1↔§7.2 cycle. §7.5, §8.1 and §9.4 cite items 3 and 4. Plan mirrored.

## F02 (P3) — applied

§8.4: "symmetric probability density `W_N`" → "symmetric measurable `W_N ≥ 0`", with no normalisation and the §8.3 integral formula used without its support condition. Checks rescaled: `N ∫ W_N`, `6 ∫ W_3` / `9 ∫ W_3`. New Check: mass 0.27067 gives 0.27067 on both sides, and `W_8 = 0` gives 0 = 0. Plan 8.4 statement, hypotheses and tests now agree.

## F03 (P3) — applied

§4.3 locator: "GST2013 line 883; DengHaniMa2024 lines 186–187; BGSS2023 lines 133–137" → without BGSS2023. Same deletion in plan 4.3 `locator.where`. `sources.toml`: "4.3" removed from the `cited_for` of BGSS2023. The BGSS2023 citations in §4.2 (lines 133–136, the reflection) and §6.4/§7.1 (lines 132–139, existence) are correct and stay.

## F04 (P3) — applied

§9.4: the run-on "…componentwise The equilibrium…" becomes two sentences: "transported by §8.1 componentwise (BGSS2023 lines 267–268). The equilibrium … named in BGSS2023 lines 479–483 and the product identity … at BGSS2023 line 3539; the invariance is derived here from §9.2 applied in each component", plus the item 3 clause. Plan 9.4 locator reordered.

## Evidence for the findings

- **F01.** At the head of ClassicalErgodicTheory (open pull request adding a new roadmap folder; another author):
  - §3.5 items 1–4 state, in general form, the constructions this roadmap built for itself: identity extension of a conull flow, disjoint unions with the sum measure, `(Φ t)_* (μ.withDensity W) = μ.withDensity (W ∘ Φ (−t))`, and point realisation.
  - Its Downstream consumers name the hard-sphere flow as a consumer of §3.5, and its scope places the `N`-particle hard-sphere flow outside that roadmap.
  - Its Conventions define a *measurable flow* as a jointly measurable `AddAction ℝ X`.
  - §3.5 works on a standard Borel space with a σ-finite measure. The phase space `Fin N → X × E` meets this: `X` is proper, hence complete and second countable (`secondCountable_of_proper`, `Mathlib/Topology/MetricSpace/ProperSpace.lean:66`), hence Polish; and `standardBorel_of_polish`, `StandardBorelSpace.prod` and `StandardBorelSpace.pi_countable` are at `Mathlib/MeasureTheory/Constructions/Polish/Basic.lean`. These four are added to the Mathlib contracts.
  - ClassicalErgodicTheory cites nothing of this roadmap, so there is no cycle. Its own suppliers are all on main (MarkovChainsAndRenewal, AmenableGroups) or in the merge order, the latest being MathematicalBilliards.
- **F01, the Koopman scope sentence.** ClassicalErgodicTheory §0.2 says "`μ` is a finite invariant measure", and `packages/MathematicalBilliards/design/README.md` §12.3 says "on a probability space", with its Check excluding infinite measure. `λ_N|𝒟̄` has mass `1 · ∞` at `N = d = 1` on the unit circle, so §7.4 stays a target.
- **F01, why "applied differently".** The review asks to state in §7.1 that (`G ∪ 𝒟̄ᶜ`, trajectory map) is a conull flow. But a conull flow requires the time-`t` maps to preserve `μ` restricted to the carrier (§3.5 item 1). That is §7.2's measure preservation, and §7.2 needs §7.1. So the statement sits in §7.2, which now proves that:
  - `G ∪ 𝒟̄ᶜ` (trajectory action on `G`, identity on `𝒟̄ᶜ`) is a conull flow for `λ_N`;
  - `G` alone is one for `λ_N|𝒟̄`;
  - `T_t` is the identity extension of both, and item 1 gives the preservation of `λ_N` off `G`.

  §7.1 keeps `HardSphere.flow` and the headline `HardSphere.flow_add`. Its group law off `G` needs only the invariance of `G`, not item 1, and a sentence points to §7.2. Plan prerequisites gain `roadmap:ClassicalErgodicTheory §3.5` at 7.2, 7.5, 8.1 and 9.4 (not 7.1), and 7.2 also gains `target:5.5`.
- **Same pattern elsewhere.** §9.4 uses item 3's "invariant iff each component restriction is", so it now cites item 3. §9.2's route (invariance of `Φ(H, P) 1_𝒟̄ λ_N` from §7.2 and the conservation laws) is a two-line consequence of measure preservation and does not restate item 4's general statement; it is unchanged. §7.4 uses Mathlib's `Lp.compMeasurePreserving`, not §3.5, and is unchanged apart from the scope sentence.
- **F02.** §9.5's *Needs:* lists §8.4, and §9.5 applies it to `W_N(t)` with `∫ W_N(t) = ∫ W⁰_N = N! P(𝒩 = N)` (§7.2, §9.3 API). At ε = 0, μ = 2, `∫ f⁰ = 1`, `W⁰_1 = 2 f⁰/e²` has mass `2e^{−2} = 0.27067`. The relabelling-plus-Tonelli proof never uses `∫ W_N = 1`.
- **F03.** BGSS2023 lines 132–139 assert only that the flow exists off a set of full measure (the claim is at line 137). Nothing there about invariance or a Jacobian. GST2013 line 883 (invariance of the measure under the flow, used in the proof) and DengHaniMa2024 lines 186–187 (Proposition 1.2(3), measure-preserving flow maps) do support it.
- **F04.** The old text was missing a full stop and the parentheses around the locator. The locators were re-read: BGSS2023 lines 267–268 (the density evolves by the Liouville equation with specular reflection), lines 479–483 (equilibrium `f0 = M`, invariant measure), line 3539 (`M(z′1)M(z′2) = M(z1)M(z2)`).

## Checks run

Dependency check (on the edited README):

```text
candidate: HardSphereDynamicsAndKineticLimits is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
depcheck: 206 roadmaps, 1896 edges, 0 problem(s)
```

No UPWARD or CYCLE line. **The check does not see the new ClassicalErgodicTheory edge.** ClassicalErgodicTheory is neither on main nor in `merge-order/ORDER.txt`, so the gate drops the edge silently: the count stays at 1896. In a scratch test, citing MathematicalBilliards §12.3 in a *Needs:* line instead raised the count to 1897. So the clean result says nothing about this edge; see "For the maintainer".

Citation resolver (`roadmaps resolve` on the edited README):
- Cross-roadmap citations found nowhere: "13: MathematicalBilliards §12.3: no roadmap MathematicalBilliards on main or in an open pull request". This is a lead, not a defect. MathematicalBilliards is a board package (last line of the merge order), and its §12.3 was read at `packages/MathematicalBilliards/design/README.md`. It is named only in the scope sentence explaining why §7.4 is not a citation, not as a supplier.
- ClassicalErgodicTheory §3.5 and §0.2 resolved.
- Lean names found nowhere: none.

Other checks: `plan.json` parses and keeps its original serialisation (one-space indentation, no trailing newline). A scan of the README found no process words, pull-request numbers, machine paths or LaTeX delimiters.

## Suggested.lean and elaboration

This is the design stage: the package has no `Suggested.lean`. So there was nothing to elaborate, and no `#check` comparison of elaborated types against the README could be run. No Lean command was run. No Lean name was added, renamed or deleted. The list of intended declarations at README line 78 is unchanged.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| §7.2 conull flow for `λ_N` with carrier `G ∪ 𝒟̄ᶜ` | `N = 0`; `N = 1`; `N = 2` on `E`, d = 2, ε = 1; unit torus d = 2, ε = 0.4, `N = 8` | `N = 0`: one point, `λ_0 = δ`, `𝒟̄ = G =` all, carrier all. `N = 1`: `G = 𝒟̄ =` all, `𝒟̄ᶜ = ∅`, action `S_t`, a shear of det 1. `N = 2`: complement of the carrier is `𝒟̄ ∖ G`, null by §6.4; `G` alone misses `𝒟̄ᶜ`, of measure ∞. `N = 8`: `8π(0.2)² = 1.00531 > 1`, so `𝒟̄ = G = ∅`, carrier all, trivial action, `T_t = id` | Sound; `G` alone is wrong for `λ_N` | Carrier `G ∪ 𝒟̄ᶜ`; non-example Check added |
| §7.2 conull flow for `λ_N\|𝒟̄` with carrier `G` | `N = 2` on `E` | `λ_N\|𝒟̄(Gᶜ) = λ_N(𝒟̄ ∖ G) = 0` | Sound | Stated |
| §7.2 measure preservation of the combined action on the carrier | Measurable `A ⊆ G ∪ 𝒟̄ᶜ` | `λ(T_t⁻¹A) = λ(T_t⁻¹(A ∩ G)) + λ(A ∩ 𝒟̄ᶜ) = λ(A ∩ G) + λ(A ∩ 𝒟̄ᶜ) = λ(A)`, since `G`, `𝒟̄ᶜ` are disjoint and invariant | Sound | None |
| §7.1 group law off `G` without item 1 | `Z ∉ G` | `T_s T_t Z = Z = T_{s+t} Z`; for `Z ∈ G`, `T_t Z ∈ G` (§5.5), so the action law applies | Sound; item 1 not needed, so there is no cycle | Pointer sentence only |
| §7.5 instance of item 3 | `N = 0`; `N = 1`; torus `N ≥ 8` | `μ_0 = (1/0!) δ = δ`, Λ-mass 1. `μ_1 = μ_X ⊗ vol`, weight 1. `μ_8 = 0`, carrier `∅` conull for the zero measure, component Λ-null | Sound; three Checks unchanged | Route rewritten |
| §8.1 duality via item 4 | `N = 1` on `E`, t = 1; signed `W⁰` | `(S_1)_*(W⁰ λ)` has density `W⁰(x − v, v)`, so at `((1,0),(1,0))` it is `W⁰(0,(1,0))`, the existing Check. Wrong sign gives `W⁰((2,0),(1,0))`. Signed: `W⁰ = W⁺ − W⁻`, `φ = φ⁺ − φ⁻`, four nonnegative instances, finite under integrability | Sound | Route added |
| §8.4 for `W_N ≥ 0` without normalisation | `N = s = 1`, `h = 1`, mass 0.27067; `W_8 = 0`; `s = 0`; `W_1 = 1` on `E`; `s = 2`, `N = 3`; `N = 1`, `s = 2` | 0.27067 = 1 · 0.27067. 0 = 0. `s = 0`: `c ∫ W_N = (N!/N!) · c ∫ W_N`. `W_1 = 1`: ∞ = 1 · ∞ (lower integrals). `s = 2`, `N = 3`: `6 ∫ W_3` both sides, `9 ∫ W_3` for all maps. `N = 1`, `s = 2`: `descFactorial 1 2 = 0`, truncated quotient 1 | Sound for every measurable `W_N ≥ 0` | Statement generalised; Checks rescaled; Check added |
| §8.4 consumer §9.5 | ε = 0, μ = 2, `∫ f⁰ = 1`, `N = 1` | `∫ W_1(t) = ∫ W⁰_1 = 2e^{−2} = 1! · P(𝒩 = 1)` | Now covered | None |
| §9.4 via item 3 | Unit torus, `f⁰ = M_{1,0}`; position profile `ρ(x) = 1 + 0.5cos 2πx` | Each component density `(μ^N/(N!Z)) Π M(v_i) 1_𝒟̄` is a function of `(H, P)` times `1_𝒟̄`, invariant by §9.2, hence the whole measure by item 3. `ρ`: component `N = 1` not invariant (1.5 → 1), so by item 3's "only if" the measure is not invariant, matching the Check | Sound | Clause added |
| Scope: Koopman claim | `N = d = 1`, unit circle | `λ_1\|𝒟̄_1 = μ_X ⊗ vol`, mass `1 · ∞ = ∞`; finite-measure hypotheses of ClassicalErgodicTheory §0.2 and MathematicalBilliards §12.3 fail | Sound | Sentence added |
| §4.3 locator | BGSS2023 lines 132–139 | Full-measure existence only | Locator was wrong | Deleted |

## Ownership and duplication

- The objects of the repaired passages were compared with ClassicalErgodicTheory (at its open head, read through `roadmaps show`) and with MathematicalBilliards (board package).
- The general theory of flows defined almost everywhere is ClassicalErgodicTheory's, and is now cited.
- This roadmap keeps the hard-sphere instances: the carrier `G`, the trajectory action, the measure preservation on `G`, the grand canonical phase space and the transported density. These are what §3.5 takes as input.
- Strong continuity of the Koopman group for an infinite σ-finite measure has no other owner (finite measure in both other roadmaps) and stays in §7.4.
- No other construction was added. Ownership against the other open pull requests was not re-checked this round: no new object was introduced.

## Sources

- `sources.toml`: BGSS2023 `cited_for` loses "4.3". No source was fetched, and no entry was added or re-keyed.
- `needs-references.toml` was not created: every text needed this round was readable in the cache.
- No suspicious instructions were found in the review or in the roadmaps read.

## For the maintainer

- **New supplier not in the merge order.** This roadmap now consumes ClassicalErgodicTheory §3.5. That roadmap is an open draft pull request by another author, adds a new roadmap folder, and is not in `merge-order/ORDER.txt`. The dependency check cannot see the edge.
- **Order this forces.** ClassicalErgodicTheory must be placed before HardSphereDynamicsAndKineticLimits. Its own latest supplier is MathematicalBilliards, the last line of the order. So the natural order is MathematicalBilliards, ClassicalErgodicTheory, HardSphereDynamicsAndKineticLimits.
- **What the worker should say.** The merge-order paragraph of the pull request should name ClassicalErgodicTheory as a supplier that is not yet placed.
- **If that dependency is not wanted**, ClassicalErgodicTheory §3.5 items 1, 3 and 4 can be removed from the *Needs:* lines and the supplier contracts, leaving the scope sentence. The three uses are hard-sphere instances, each with a short direct proof from §7.1–§7.2: the identity case, sums of measure-preserving maps, and change of variables under a measure-preserving bijection. The review gave that fallback for an UPWARD line, and the gate printed none.
- **Cited names.** No section, target or declaration name that other roadmaps cite was changed or removed. ClassicalErgodicTheory's Downstream consumers already name the hard-sphere flow as a consumer of §3.5, so the two roadmaps agree on the direction.
