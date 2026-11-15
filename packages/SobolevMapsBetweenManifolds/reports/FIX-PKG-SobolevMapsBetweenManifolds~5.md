# Repair report: SobolevMapsBetweenManifolds

## F01 (P1) — applied

§6.4, before the change-of-variables identity: "Then `J_f` is locally bounded, since … so `μ_f^±` are defined" → "Then `J_f` is locally essentially bounded: … hence bounded on compact sets. Since `vol_M` is locally finite (`TauCeti.isLocallyFiniteMeasure_riemannianVolume`) and `J_f` is a.e.-strongly measurable (§6.2), `J_f ∈ L¹_loc(M, vol_M)` … `J_f` need not be locally bounded pointwise …". New §6.4 Check: the null-modified identity. The instance name is added to the Needs line.

## F02 (P3) — applied

§4.1 Checks: "Discontinuous members: `sign(x₁)` lies in every class on `ℝ² ∖ {x₁ = 0}` … and in none on `ℝ²`" → "`u(x) = log |x|` on `ℝ²`, `u(0) = 0`, lies in `W^{1,p}_loc(ℝ²; ℝ)` for `1 ≤ p < 2` …, at `p = 1` `∫|u| = π/2`, `∫|Du| = 2π`; no null-set modification is continuous, so a continuity requirement rejects it." The sign example stays in §1.3 and §4.5 as the gluing control.

## Verification and evidence

- **F01.** The finding is right.
  - §6.2 defines `J_f(x) = J(Df(x))` from the total choice `Df` of §4.3. That choice is "a weak differential when one exists". §4.3 says a field that agrees with a weak differential outside a null set is one. At the pin, `TauCeti.HasWeakFDerivOn.congr_ae_deriv` (`TauCeti/Analysis/Sobolev/WeakDeriv/Basic.lean:453`) gives exactly this.
  - So for `f = id` on flat oriented `ℝ`, the field `D(1/k) = k² · id` (`k ≥ 2`), `D = id` elsewhere, is admissible. Nothing in the definition of the choice excludes it. Its Jacobian has `sup_{(−ε,ε)} |j| = ∞` for every `ε > 0`, with essential supremum `1`. Pointwise local boundedness of `J_f` is therefore not provable.
  - What is true, and all the definition of `μ_f^±` needs, is this. `|J_f| ≤ ‖mfderiv f‖ⁿ` holds a.e. (§6.2 gives `J_f = J(mfderiv f)` a.e.; §6.1 gives Hadamard). `‖mfderiv f‖` is continuous, so it is bounded on each compact `K`. `vol_M(K) < ∞` because `TauCeti.isLocallyFiniteMeasure_riemannianVolume` is an instance at `TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Volume.lean:179`, inside `namespace TauCeti` (line 56); it was already listed in the supplier contracts. With the a.e.-strong measurability of §6.2, this gives `J_f ∈ L¹_loc`.
  - `jacobian_changeOfVariables` in `Suggested.lean` takes a scalar `j` characterised through `mfderiv`, not through the chosen `Df`. The finding does not touch it, and it is unchanged.
- **F02.** The finding is right. `sign(x₁)` is locally constant on `ℝ² ∖ {x₁ = 0}`, hence continuous there. On `ℝ²` it is excluded from the class. A wrong definition that adds continuity therefore gives the same two answers, so the old Check did not discriminate. `log |x|` (with `u(0) = 0`) is essentially unbounded near `0`, so it has no continuous representative, and it lies in the class for `1 ≤ p < 2` (§1.2's third Check). The reviewer's suggestion asked for `p = 1`. I state the whole range `1 ≤ p < 2`, which is what §1.2 proves, and keep the `p = 1` integrals as the computed witness. This also gives a supporting Check for two passages that already cited §4.1 for this function: §4.2's second Check ("`log |x|` lies in `W^{1,1}_loc(ℝ²; ℝ)` (§4.1)") and §4.3's totality Check.
- **Pattern search.** I grepped the README for every pointwise property (bounded, continuous, finite) claimed of the chosen `Df`, `‖Df‖` or `J_f`. I checked these places:
  - §5.1 (comparison factors bounded on `K`): this is about chart derivatives and metrics, which are genuine functions.
  - §5.3's third Check (`‖id‖' = e^x`): this is the norm of the linear map `id` at each point.
  - Layer 5 Examples ("`‖Df‖` equals it almost everywhere"): this is already an a.e. claim.
  - §6.2's dimension-0 Check and §6.3's `n = 0` case: `|J(A)| = 1` holds for every linear `A`, so these hold everywhere.
  - §2.4 (`DG ∘ u` bounded on compacts): this is for continuous `u`, a genuine function.

  No other occurrence of the defect was found. The Conventions' "Totality" paragraph already says that values of `Df`, `‖Df‖` and `J_f` hold a.e., while linear-algebra identities hold everywhere. The repaired sentence now agrees with it.

## Computed adversarial mathematics pass

| Statement | Instances tried | Values on each side | Result | Change |
| --- | --- | --- | --- | --- |
| §6.4: `J_f` locally essentially bounded for a `C¹` open embedding, hence in `L¹_loc` | `id` on flat `ℝ` with `D(1/k) = k²`; `f = 2x`; `f = eˣ : ℝ → (0, ∞)`; target metric `4 dt²`; `n = 0`; `M = ∅` | null-modified `id`: `sup_{(−ε,ε)} |j| = ∞`, `ess sup = 1 = ‖mfderiv id‖`. `2x`: `|J_f| = 2` a.e., `∫_{[0,1]} = 2 = vol([0,2])`. `eˣ`: unbounded on `ℝ`, `≤ e^b` a.e. on `[a,b]`, `∫_a^b eˣ = e^b − e^a = vol(f([a,b]))`. `4 dt²`: `J_f = 2 = ‖mfderiv id‖`. `n = 0`: `|J_f| = 1 = ‖·‖⁰`, compact sets finite with finite volume. `∅`: vacuous. | the essential claim holds in every case; the pointwise claim fails on the first | sentence rewritten; local finiteness instance cited |
| §6.4 new Check (null-modified identity) | against §6.4's identity, its orientation-preserving corollary, §6.3 Hadamard (everywhere), §6.2 `|J_f| = normDet(Df)` | `j(1/2) = 4`, `j(1/10) = 100`, `j(1/100) = 10⁴`. `∫_{[0,1]} J_f = 1`, `μ⁺([0,1]) = 1`, `μ⁻([0,1]) = 0`, `μ⁺ + μ⁻ = 1 = vol([0,1])`. `J_f > 0` everywhere, so `μ⁻ = 0` as the corollary says. Hadamard at `1/k`: `k² ≤ ‖k² id‖¹ = k²`. `normDet(k² id) = k² = |j(1/k)|`. | consistent with every statement of §6.2–§6.4 and with the Conventions | Check added |
| §4.1 new Check (`log |x|`, `u(0) = 0`) | `p = 1, 3/2, 2, ∞`; wrong models "continuous" and "has a continuous representative"; the old `sign(x₁)` example; dimension `1` | `p = 1`: `∫_{B} |u| = 2π·(1/4) = π/2`, `∫_{B} |Du| = 2π`. `p = 3/2`: `∫_{B} |x|^{−3/2} = 2π/(1/2) = 4π`. `p = 2`: `2π ∫_0^1 dr/r = ∞`. `p = ∞`: `u ∉ L^∞_loc`. Both wrong models reject `u`, since `ess sup_{B(0,ε)} |u| = ∞`. `sign(x₁)` on the complement of the line is continuous, so the wrong models accept it there. On `ℝ`, `∫_{−1}^{1} dx/|x| = ∞`, so the plane is the right dimension. | discriminates; agrees with §1.2's third Check, §1.3's second Check, §4.2's second Check and §4.3's totality Check (`|Du| = 1/|x| ∈ [1/2, 1]` on `1 < |x| < 2`) | Check replaced |

## Checks

- **Elaboration.** `lake env lean packages/SobolevMapsBetweenManifolds/Suggested.lean`, run from the content checkout, exits 0. It prints 16 warnings, all "declaration uses `sorry`", and no error. No `TauCeti.*` module needed building. `Suggested.lean` is not edited: neither finding concerns it, and no Lean name of this roadmap changed.
- **Binders.** I made a scratch copy of `Suggested.lean` with `#check @name` for all 21 declarations and elaborated it once (exit 0, no error). I compared each elaborated type with the type recorded before this round, up to the namespace prefix and universe-variable numbering. All 21 match. No section binder is lost, and nothing changed.
- **Citations.** `roadmaps resolve` on the README finds no cross-roadmap citation and no Lean name that is missing everywhere. The one library name added (`TauCeti.isLocallyFiniteMeasure_riemannianVolume`) was opened at the pin, as above.
- **Dependency check**, exact command of the brief:

  ```text
  depcheck: 227 roadmaps, 2051 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or `moved:` line.
- **Gate failures.** None were listed for this round.

## Notes for the maintainer

- Files edited: `packages/SobolevMapsBetweenManifolds/README.md` only (§4.1 Checks, §6.4 text, Checks and Needs). `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged. No supplier gap is added.
- Sources: no new source was cited or fetched, and `needs-references.toml` is not written.
- Ownership: no new construction was introduced. The two edits refine statements this roadmap already owns. The only roadmap that consumes this one, QuasiregularMaps (open), asks in `gap:sobolev-maps-jacobian` for `J_f ∈ L¹_loc` when `p ≥ n`. This round does not change that, and no other roadmap cites the sentence or the Check that changed.
- The review's "Source issues" item (a misprint in HeikkilaPankka2025, Appendix B, line 1328: the source writes the composite as `p ∘ ι`) is not a finding. §8.2 cites lines 1328–1329 for the class through an embedding and writes the composite in the correct order, `ι ∘ f`, so no edit follows.
- No passage of the review read as an instruction outside this job.
