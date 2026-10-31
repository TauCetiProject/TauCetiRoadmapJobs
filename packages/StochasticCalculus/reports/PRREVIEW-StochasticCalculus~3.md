# Review of StochasticCalculus (pull request #1030 at f3c21f5)

**Verdict:** accepted

Incremental re-review of the 73 lines changed since 0326f80: the two new Brownian path headlines in `Suggested.lean`, the §6.3 normalization paragraph, the Moore–Penrose ownership move in the Summary, the supplier contracts and §10.2, and the identified MATH5695 reference. Both blocking findings of the previous review are repaired; the four findings below are P3 notes the author may take or leave.

## R01 (P3) — Name the two new headlines in the README

**Location:** `TauCetiRoadmap/StochasticCalculus/README.md:2116` ("The two scalar path headlines are stated on native `IsBrownianReal` in `Suggested.lean`") and `TauCetiRoadmap/StochasticCalculus/Suggested.lean:557`, `:570`.

**Claim:** The README names `brownian_lil` for the LIL headline but never names `brownian_exact_uniform_modulus` or `brownian_simultaneous_nowhere_differentiable`, so the README-and-Lean agreement rule ("every Lean name appears in the README") fails for the two declarations the diff adds.

**Witness:** `grep -n brownian_exact_uniform_modulus README.md` and the same for the second name return nothing; `brownian_lil` is at README line 2086.

**Repair:** In §6.3 write "Prove `brownian_exact_uniform_modulus`: for every T>0 …" and "Prove `brownian_simultaneous_nowhere_differentiable`: …" at the two statements, as the LIL sentence already does.

## R02 (P3) — One namespace per file; auxiliary-file form unchanged

**Location:** `TauCetiRoadmap/StochasticCalculus/Suggested.lean:34` (`namespace StochasticCalculusSuggested`) and `:548` (`namespace TauCetiRoadmap.StochasticCalculus`).

**Claim:** The new declarations use the required namespace while the 49 retained declarations stay in `StochasticCalculusSuggested`, so the file now declares under two namespaces with two `variable` blocks and two `open` lines. The five auxiliary files are unchanged since the previous review: three `Mathlib.*` submodule imports in `AutonomousODE.lean:5`–`:7`, eight in `IndependentLaws.lean:5`–`:12`, a roadmap-module import at `PointProcessesAdapter.lean:1`, three `rfl` adapters at `:14`–`:24`, and the old namespace in every one.

**Witness:** `grep -n '^namespace' Suggested.lean` gives lines 34 and 548; `grep -n '^import' AutonomousODE.lean` gives three `Mathlib.Analysis.*` lines.

**Repair:** Rename the first namespace to `TauCetiRoadmap.StochasticCalculus` and delete the second header, keeping a single `variable {Ω : Type*} [mΩ : MeasurableSpace Ω]`; then apply the previous review's R03/R04 to the auxiliaries (delete the `rfl` adapters and the padding, single `import Mathlib`, `theorem` not `lemma`).

## R03 (P3) — The PolarDecomposition contract claims range-projection identities it does not state

**Location:** `TauCetiRoadmap/StochasticCalculus/README.md:91`–`:93` ("PD-C19–PD-C27 supplies the finite-dimensional Moore–Penrose inverse, its uniqueness and its range/orthogonal-projection identities") and `:3101` ("Use the supplied range/projection identities").

**Claim:** On main, `TauCetiRoadmap/OperatorTheory/PolarDecomposition/README.md:500`–`:515` state the four Penrose equations (PD-C19), existence from the singular system (PD-C20/C21), uniqueness and characterization (PD-C22/C23), adjoint compatibility (PD-C24) and the injective, surjective and invertible cases (PD-C25–C27). None of them says that `AA⁺` is the orthogonal projection onto `ran A` or that `A⁺A` is the orthogonal projection onto `(ker A)⊥`, which is what §10.2 consumes to split the noise space as `Id−σ⁺σ`.

**Witness:** For `A=diag(2,0)`: PD-C19 gives `(AA⁺)† = AA⁺ = diag(1,0)` as a self-adjoint idempotent; that its range is `ran A` uses `AA⁺A = A` (so `ran A ⊆ ran AA⁺`) and `ran AA⁺ ⊆ ran A`, a two-line consequence the supplier does not list.

**Repair:** In the contract write that PD-C19–PD-C27 supply the inverse, the four equations and uniqueness, and that §10.2 derives from PD-C19 that `AA⁺` and `A⁺A` are the orthogonal projections onto `ran A` and `(ker A)⊥` (self-adjoint idempotents whose ranges are fixed by `AA⁺A = A` and `A⁺AA⁺ = A⁺`). No new owner is created; the derivation is a few lines inside the §10.2 reconstruction.

## R04 (P3) — Locators for the two new headlines; manifest still absent

**Location:** `TauCetiRoadmap/StochasticCalculus/README.md:2088`–`:2104` (the uniform modulus and the Paley–Wiener–Zygmund argument carry no theorem or page locator; the only locator in §6.3 is "Karatzas–Shreve, §2.9" at the LIL) and `README.md:3585`–`:3589` (the Dooley notes now have author, institution and years but no URL or edition, and the folder still has no `sources.toml`).

**Claim:** Both new headline statements are supported by readable legal texts and should cite them: Lévy's modulus is `morters-peres line 965` (Theorem 1.14, printed p.16, limsup form with increments of exact length h) together with Exercise 1.7 (`morters-peres line 1953`, printed p.31, the limit form); the Lean statement's sup over `|s−t| ≤ h` with a full limit is Karatzas–Shreve Theorem 2.9.25 (uncertified, paywalled). Simultaneous nowhere differentiability with the one-sided Dini conclusion at every t, including t=0, is `morters-peres line 1205` (Theorem 1.30, printed p.21); the three-dyadic-increment argument the README describes is `lalley line 921` (Proposition 9, printed p.25), whose proof restricts to t in (0,1).

**Witness:** `grep -n '2.9.25\|2.9.18\|Theorem 1.14\|Theorem 1.30\|Proposition 9' README.md` returns nothing.

**Repair:** Attach the two locators at the two statements; add Mörters–Peres (author-page copy on Mörters's University of Cologne page) to the references; record the works in a `sources.toml` with one key per work, marking Karatzas–Shreve and the Dooley notes `uncertified` until a legal copy is named.

## Previous findings

- R01 — repaired: `Suggested.lean:557` states the exact uniform modulus on each horizon T>0 through positive mesh, and `:570` the common-null-set nondifferentiability at every t>0 plus the right derivative at 0; both elaborate at the pins with `sorry` only and no one-tactic probe closes them.
- R02 — repaired: the Summary (README:15–18), the supplier contracts (README:91–95) and §10.2 (README:3098–3106) now consume the PolarDecomposition inverse PD-C19–PD-C27 and keep here only Borel measurability via the regularized limit, the diag(2,0)/0/invertible checks and the noise reconstruction; the residual contract imprecision is R03 above.
- R03 — not repaired: `PointProcessesAdapter.lean:14`–`:24` still has the three `rfl` adapters, `IndependentLaws.lean:28` the native-alias theorems, `RawLocalization.lean:32` the countable-range alias, `AutonomousODE.lean:56` the one-`simp` initial-value theorem.
- R04 — partly repaired: the two new declarations use `TauCetiRoadmap.StochasticCalculus`; the 49 retained ones and all auxiliaries keep `StochasticCalculusSuggested`, the submodule imports and `lemma` (R02 above).
- R05 — not repaired: README:412 (L⁰ metric) and README:2423 (inverse clock) still have no `**Checks.**` list; Layer 3 still pools its dependencies in one `*Needs:*` line.
- R06 — partly repaired: the notes are identified as Dooley's Pure Mathematics IV outline (README:3585); §6.7 and §§10.1–10.3 still lack theorem/page locators, no `sources.toml` exists, and the Dooley text is still not locatable (R04 above).

## Verified sound

**Gate and build.** The gate rerun at f3c21f5 reports every scanner at 0 (`set_option=0 … source-material=0 OK`); the worker's recorded gate at this head adds `build=0`. Direct elaboration of `Suggested.lean` with `lake env lean` ends with exit 0 and exactly 33 `declaration uses 'sorry'` warnings (31 at 0326f80 plus the two new theorems), nothing else. The dependency check:

```text
depcheck: 204 roadmaps, 1416 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. OperatorTheory/PolarDecomposition is a roadmap on main (`TauCetiRoadmap/OperatorTheory/PolarDecomposition/README.md`, labels PD-C19–PD-C27 at lines 500–515, `Suggested.lean:275` `moorePenroseInverse`, `:284` the four equations, `:291` uniqueness); the open pull request #1027 revising OperatorTheory is not a dependency and is not cited. No file outside the folder changed.

**Elaborated signatures.** The worker's signature file was compared with the README for the two new declarations: `brownian_exact_uniform_modulus` carries `[MeasurableSpace Ω]`, `[IsProbabilityMeasure P]`, `IsBrownianReal B P`, `0 < T`; `brownian_simultaneous_nowhere_differentiable` carries the first three. No binder is lost. The one flagged declaration, `stochasticExponential`, needs no measurable-space binder, as the previous review found.

**Padding probes.** On a scratch copy, `simp` leaves both new goals open (it only rewrites `log (1/h)` to `−log h`) and `exact?` finds no library lemma; neither statement restates a definition or a Check.

**Pinned declarations opened.** `Mathlib/Probability/BrownianMotion/Basic.lean:75` `IsPreBrownianReal` (finite-dimensional laws equal the projective family) and `:302` `IsBrownianReal` (adds `∀ᵐ ω, Continuous (X · ω)`, almost-sure not everywhere continuity). The `BrownianMotion` directory at the pin has only `Basic.lean` and `GaussianProjectiveFamily.lean`, with no Hölder, modulus or differentiability lemma, so both headlines are new here. Mathlib at `6b7abb3c`, Tau Ceti at `a91d3aaf`.

**Ownership.** `roadmaps grep` for nowhere differentiability finds no other roadmap on main or in any open pull request; for the uniform modulus only unrelated hits (GlobalHolomorphicFunctions, AnalyticNumberTheoryPartI); for Moore–Penrose only PolarDecomposition on main and the OperatorTheory revision pull request. StochasticCalculus is the owner of the two path theorems and of the Borel-measurable pseudoinverse adapter. Ownership against open pull requests whose files the brief does not give was not checked beyond the index grep.

**Adversarial table.** Rows for statements the diff leaves untouched are the previous report's (95 rows, cited there and not recomputed); the rows below are for the changed statements.

| Statement | Instances tried | Computed sides | Result; change |
|---|---|---|---|
| `brownian_exact_uniform_modulus` | B versus 2B on T=1 | Ratio limit 1 versus 2 (Mörters–Peres Thm 1.14 with Ex 1.7 for the limit form; scaling by √T: sup over mesh h on [0,T] equals √T·sup over mesh h/T on [0,1], and log(T/h)/log(1/h)→1, so every T>0 gives 1) | Normalization and horizon generality correct; no change |
| same, degenerate h and T | T=0; h≥1; deterministic path x(t)=t | T=0: set is {0}, sSup 0, ratio 0 ≠ 1 (excluded by `0<T`); h≥1: √(2h log(1/h)) = 0 and the quotient is the junk value 0, outside the filter at 0⁺; line: sup = h, ratio √h/√(2 log(1/h)) → 0 | Hypotheses exclude the wrong models; no change |
| same, sSup convention | a.e. continuous path on [0,T], h∈(0,1) | Set contains 0 (s=t) and is bounded by the path's oscillation on the compact [0,T], so sSup is the true supremum; on the null set of discontinuous paths the value is junk but under ∀ᵐ | Statement well-formed; no change |
| `brownian_simultaneous_nowhere_differentiable` | quantifier order; line x(t)=t | ∀ᵐ outside ∀ t (simultaneous), stronger than Thm 1.27's fixed-t version and matching Thm 1.30; the line is differentiable with derivative 1 at every t and from the right at 0, and has variance 0 ≠ t so is not Brownian | Simultaneity stated correctly; no change |
| same, the toNNReal extension | t>0; t=0 within Ici 0; s<0 | For t>0 the extension agrees with B on (0,∞), so `DifferentiableAt` is about the path; at 0 within Ici 0 it is the right derivative, excluded since D*B(0)=+∞ or D_*B(0)=−∞ (Thm 1.30; Lalley's Prop 9 covers only (0,1)); on s<0 the extension is constant B 0 ω and is never quantified | Extension only fixes the domain; no change |
| §6.3 PWZ probability bound | mesh h=2⁻ⁿ, bound Mh on three increments | Each increment has sd √h, so P(|ΔB| ≤ Mh) ≤ 2Mh/√(2πh) and the triple product is (2M)³h^{3/2}/(2π)^{3/2} = C M³ h^{3/2}; times O(h⁻¹) positions gives O(h^{1/2}) = 2^{−n/2}, summable | Agrees with `lalley line 945`–`948`; no change |
| §10.2 regularized limit | A=diag(2,0), ε=1/(k+1) | AA*+εI = diag(4+ε, ε); A*(…)⁻¹ = diag(2/(4+ε), 0) → diag(1/2, 0) = A⁺; AA⁺ = A⁺A = diag(1,0); Id−A⁺A = diag(0,1) | Checks in the README correct; no change |
| §10.2 regularized limit | A=0; invertible A | 0·(εI)⁻¹ = 0 → 0; A*(AA*+εI)⁻¹ → A*(AA*)⁻¹ = A⁻¹ (PD-C27) | Pass; no change |
| §10.2 Borel measurability | rank-changing family A_ε = diag(1, ε) | A_ε⁺ = diag(1, 1/ε) for ε≠0 but A_0⁺ = diag(1,0): not continuous in A, so measurability must come from the pointwise limit of the continuous maps A ↦ A*(AA*+εI)⁻¹ as the README says | Route is sound; no change |
| §10.2 contract wording | PD-C19–PD-C27 text on main | Four equations, existence, uniqueness, adjoint, injective/surjective/invertible; no range-projection item | R03 |
| Summary/contract placement | PolarDecomposition in the merge order | On main (not in ORDER.txt as a consumer-blocking line); depcheck 0 problems | Direction correct; no change |

**Cross-roadmap citations resolved this round.** OperatorTheory/PolarDecomposition PD-C19–PD-C27 (main, README lines 500–515; relative link `../OperatorTheory/PolarDecomposition/README.md` resolves from the roadmap folder). The three resolver leads are the same as last round and resolve the same way (`toProcess` local, `IsAdaptedPoisson.isCompensator` in PointProcesses, `Real.besselI` a StandardDistributions target).

**Seeded sample.** The 15 seeded targets are untouched by the diff; their ledger is the previous report's. Of the two targets the diff touches, §6.3 is now certified against `morters-peres line 965`, `line 1205`, `line 1953` and `lalley line 921`; §10.2's pseudoinverse checks are computed above and its supplier text read on main.

## Not verifiable

- **Dooley, MATH5695 outline notes:** the sources service finds no legal copy by citation and a web search finds no copy or course page; UNSW lists only MATH3361/5361 outlines. Recorded as `math5695` in the missing-reference ledger with the identification the README now gives; its page citations (including §8.3's pp. 261–263) remain uncertified. An operator-held copy would resolve it.
- **Karatzas–Shreve Theorems 2.9.18 and 2.9.25:** paywalled; cited by locator only. The readable Mörters–Peres and Lalley texts certify the two statements instead.
- **Mörters–Peres:** read from Mörters's Cologne author page (author-page licence class); its numbering is the published Cambridge 2010 numbering (Theorems 1.14, 1.27, 1.30), printed page = PDF page − 10.

## Source issues

- **Misprint** in lalley at Proposition 9 proof, equation (49), printed p.25 (`lalley line 936`–`938`): the source says the series of P(B_m) is finite; it should be the series over k of P(B_k), the events just defined; affects nothing.
- **Gap** in lalley at Proposition 9, printed p.25 (`lalley line 924`): the source says it suffices to exclude differentiability at t in (0,1) and leaves the reduction as a question; the one-sided derivative at the endpoints needs the one-sided three-increment window the roadmap adds in §6.3; affects a stated result (nowhere differentiability on the closed interval).
