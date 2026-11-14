# Repair of DimerModelsAndLozengeTilings (design, round 4)

The review `REV-DESIGN-DimerModelsAndLozengeTilings~3` has one finding, R01 (P2). It is right, and it is applied. The files changed are `packages/DimerModelsAndLozengeTilings/design/README.md` and `packages/DimerModelsAndLozengeTilings/design/plan.json`. `sources.toml` is unchanged: no new work is cited.

## REV-DESIGN-DimerModelsAndLozengeTilings~3/R01 (P2) — applied

**Verification.** The Layer 4 standing hypothesis read "`S` is a measurable space (for 4.4–4.6 a finite set with the discrete topology)". That does not fix the σ-algebra. The reviewer's witness is correct:

- Take `Γ = I = ℤ` with the shift (a proper action: `{γ : (γ+F) ∩ F' ≠ ∅} ⊆ F' − F`, which is finite).
- Take `S = {0,1}` with the discrete topology and the σ-algebra `⊥`.
- Then `MeasurableSpace.pi = ⨆ᵢ comap (eval i) ⊥ = ⊥`. Its trace on `X = {0̄, 1̄}` has 2 sets.
- The Borel σ-algebra of the discrete two-point space `X` has 4 sets.

At the pin, each of these declarations needs a hypothesis that fails in the witness:

- `Pi.borelSpace` (`Mathlib/MeasureTheory/Constructions/BorelSpace/Basic.lean:645`) needs `[∀ i, BorelSpace (X i)]`.
- The weak-topology instance (`Mathlib/MeasureTheory/Measure/ProbabilityMeasure.lean:301–310`) sits under `[OpensMeasurableSpace Ω]`.
- The `CompactSpace (ProbabilityMeasure E)` instance (`Mathlib/MeasureTheory/Measure/Prokhorov.lean:65`, `:176`) needs `[T2Space E] [BorelSpace E]`.
- `ProbabilityMeasure.tendsto_measure_of_isClopen_of_tendsto` (`Portmanteau.lean:362`) needs `OpensMeasurableSpace` and `HasOuterApproxClosed`.

**Change (old → new).**

- **Layer 4 standing hypothesis.** Old: "a finite set with the discrete topology". New:
  - 4.1–4.3 keep an arbitrary measurable `S`.
  - For 4.4–4.6, `S` is finite with the discrete topology *and* the discrete σ-algebra (`DiscreteMeasurableSpace`), and `X ⊆ Ω` carries the subspace topology and the trace σ-algebra.
  - So `S`, `Ω` and `X` are Borel spaces, by `DiscreteMeasurableSpace.toBorelSpace`, `Pi.borelSpace` and `Subtype.borelSpace` respectively.
  - `Bool` carries both discrete structures natively.
- **Supplier contract.** The `Pi.borelSpace` bullet now states its Borel-factor hypothesis. It also adds `DiscreteMeasurableSpace`, `DiscreteMeasurableSpace.toBorelSpace`, `Subtype.borelSpace`, `Bool.instMeasurableSpace` and `Bool.borelSpace`, and the `OpensMeasurableSpace`/`HasOuterApproxClosed` hypotheses of the weak-topology and portmanteau declarations.
- **4.4 statement and Needs.**
  - The statement now names the discrete topology and σ-algebra on `S` and the subspace and trace structures on `X`.
  - It now says the traces of cylinder events on `X` are "clopen and measurable".
  - The Needs line adds `DiscreteMeasurableSpace.toBorelSpace` and `Subtype.borelSpace`.
- **4.4 Checks.** Added the two-point negative control (2 versus 4 sets, `{1̄}` not measurable, `δ_{0̄} = δ_{1̄}`) and its repaired form (4 = 4 sets, mass `1/2`).
- **Plan 4.4, 4.5, 4.6.**
  - The hypotheses carry the same convention.
  - In 4.6, "S finite for (c)" is subsumed by the standing hypotheses.
  - 4.4 gains the prerequisites `DiscreteMeasurableSpace.toBorelSpace` and `Subtype.borelSpace`, and the test `discrete_sigma_algebra_needed`.

**Pattern search.** I searched the whole README and plan for "discrete", "Borel", "trace", "finite alphabet", "S finite" and "Bool". The same dependence on a discrete σ-algebra occurs in three other places, now repaired or covered:

- **4.5 Check `identity_spec_constants`.** It says the trace of `𝓕_{Λᶜ}` on `X₀` is the full σ-algebra. Under `⊥` that trace is `{∅, X₀}`. It now says "`{0,1}` with its discrete σ-algebra", in both the README and the plan.
- **4.6 Check `identity_face_constants`.** The midpoint gives `{1̄}` mass `1/2`. This needs `{1̄}` measurable, and the standing convention now covers it.
- **Layers 5–10 (`G.edgeSet → Bool`, `TriEdge → Bool`).** `Bool.instMeasurableSpace` is `⊤` (`Mathlib/MeasureTheory/MeasurableSpace/Instances.lean:26`), `Bool` has `DiscreteTopology` (`Mathlib/Topology/Order.lean:576`), and `Bool.borelSpace` is at `Basic.lean:697`. No dimer statement changes. The edge sets are countable, so `Pi.borelSpace` applies.

The Layer 4 Dependencies line now names the Borel structure of a discrete finite alphabet. In the same supplier bullet I also corrected the file attribution of `Pi.topologicalSpace`: it is in `Mathlib/Topology/Constructions.lean:65`, not `Compact.lean`.

## Adversarial pass on the new and changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Standing: finite discrete `S` with discrete σ-algebra is Borel | `S = {0,1}`; `S = ∅`; `|S| = 1` | `borel {0,1}` has 4 sets, equal to `⊤` (4 sets). `S = ∅`: `Ω = ℤ → ∅ = ∅`, `𝔓(∅) = ∅`, compact. `|S| = 1`: `Ω` is one point and `𝔓(X)` is one point. | Holds in all cases; the convention is added. |
| `Pi.borelSpace` applies to `Ω = I → S` | `I = ℤ`, `S = {0,1}`; `I = G.edgeSet` | Index countable: yes. Factor second-countable: yes (`DiscreteTopology.secondCountableTopology_of_countable`, `Mathlib/Topology/Instances/Discrete.lean:36`). Factor Borel: yes under the convention, no under `⊥`. | The hypothesis is now stated in the supplier contract. |
| `Subtype.borelSpace` for `X` | `X₀ = {0̄, 1̄}` | With the discrete σ-algebra, trace = `{∅, {0̄}, {1̄}, X₀}` (4 sets) = Borel (4 sets). Under `⊥` on `S`: trace has 2 sets, Borel has 4. | Correct; this is the negative control. |
| 4.4: traces of cylinder events are clopen and measurable | `{ω(0)=1} ∩ X₀`; `S = {a,b,c}`, `{ω(0)=a}` | `{1̄}` is clopen; it is measurable under the convention and not under `⊥`. `{ω(0)=a}` is the preimage of the measurable set `{a}`, and open and closed. | The statement is restated with "measurable". |
| 4.4: `𝔓(X)` compact | `X₀`; `X = Ω` for `S = Bool` | `X₀` is compact (finite), T2 and Borel, so the instance at `Prokhorov.lean:176` applies. `𝔓(X₀)` is the segment `{pδ_{1̄} + (1−p)δ_{0̄}}`. Under `⊥` it is the single point `δ_{0̄} = δ_{1̄}`. | Correct under the convention. |
| 4.4: clopen convergence `μ_n(C) → μ(C)` | `δ_{1_{[n,∞)}} → δ_0` on `Bool^ℤ` | `X` is metrisable, so `HasOuterApproxClosed` holds (instance at `HasOuterApproxClosed.lean:219`), and `OpensMeasurableSpace` holds because `X` is Borel. For `C = {ω(0)=1}`: `μ_n(C) = 0` for `n ≥ 1` and `μ(C) = 0`. | The hypotheses are now in scope; the existing Check is unchanged. |
| New negative Check (4.4) | Shift on `ℤ`, `S = {0,1}` with `⊥`, `X₀` | Product σ-algebra `{∅, Ω}`. Trace 2 sets, Borel 4. `{1̄}` not measurable. The only probability measure gives `X₀` mass 1. Repaired: 4 = 4 sets, `((δ_{0̄}+δ_{1̄})/2){1̄} = 1/2`. | Added. |
| 4.5 `identity_spec_constants` | `Λ = {0}`, `X₀` | Trace of `𝓕_{Λᶜ}` contains `X₀ ∩ {ω(1)=1} = {1̄}`: 4 sets, full. Kernel `δ_ω`: `ω ↦ δ_ω{1̄} = 1_{1̄}(ω)` is measurable. | Holds under the convention; the wording now names it. |
| 4.6 `identity_face_constants` | Midpoint of `δ_{0̄}`, `δ_{1̄}` | Invariant event `{1̄}`: mass `1/2`, neither 0 nor 1, so the midpoint is not ergodic. The endpoints give masses 0 and 1. | Unchanged; it relies on the convention, which is now stated. |
| 4.3, unchanged generality | `ν = Bern(1/2)` on `{0,1}` with arbitrary σ-algebra | `infinitePi` needs only probability factors. The zero-one law needs independent σ-algebras, not a topology. | 4.1–4.3 correctly keep an arbitrary measurable `S`; the convention is not widened to them. |

## Checks run

**Dependency gate** (command from the brief). There is no UPWARD and no CYCLE line. The output was:

```text
candidate: DimerModelsAndLozengeTilings is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
depcheck: 229 roadmaps, 2056 edges, 0 problem(s)
```

**Citation resolution** (`roadmaps resolve` on the edited README). It found no cross-roadmap citation and no Lean name missing. It did not check pinned Lake names on its host, so I checked the newly cited Mathlib names by hand at the pinned revision `1b1ccf4b`:

- `DiscreteMeasurableSpace`: `Mathlib/MeasureTheory/MeasurableSpace/Defs.lean:562`
- `DiscreteMeasurableSpace.toBorelSpace`: `Mathlib/MeasureTheory/Constructions/BorelSpace/Basic.lean:673`
- `Subtype.borelSpace`: `Basic.lean:188`
- `Bool.borelSpace`: `Basic.lean:697`
- `OpensMeasurableSpace`: `Basic.lean:107`
- `Bool.instMeasurableSpace`: `Mathlib/MeasureTheory/MeasurableSpace/Instances.lean:26`
- `HasOuterApproxClosed`: `Mathlib/MeasureTheory/Measure/HasOuterApproxClosed.lean:162`

The pseudo-metrisable instance of `HasOuterApproxClosed` is anonymous at the pin, so the README describes it in prose rather than naming it.

The earlier leads (`Matrix.compound_mul`, `Matrix.higherAdjugate`, `Matrix.compound_mul_higherAdjugate`) still resolve on main in `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/Suggested.lean` (lines 1036, 1041 and 1048), README §6.4.

**`plan.json`.** It parses as JSON and round-trips in its original format (indent 1, UTF-8).

**Lean elaboration.** There is no `Suggested.lean` at this design stage, so no `#check @name` comparison was run and no Lean name changed.

## Gate failures

None were listed for this round.

## Notes for the maintainer

- **Ownership.** No new object, target or Lean name was introduced. The repair is a standing measurable convention plus supplier hypotheses at the Mathlib pin. Ownership against main and the open pull requests is therefore unchanged from the reviewed design: the overlaps report lists no shared roadmap and no dropped id.
- **Names other roadmaps cite.** None changed. No section or target id changed.
- **Downstream consumers.** A Part II, or an Ising-type spin-system roadmap consuming Layer 4, inherits the explicit requirement that the single-site space carry the discrete σ-algebra as well as the discrete topology.
- **Suspicious content.** None was found in the review or the other files read.
