# Repair report: SobolevMapsBetweenManifolds design, round 2

One review with five findings (F01 P2, F02–F05 P3). All five check out against the pinned libraries,
the cached sources and the sibling roadmaps. Four are applied as asked. F04 is applied with
different wording, because the suggested clause misstates how the global theorems relate to §2.2.
Files changed: `packages/SobolevMapsBetweenManifolds/design/README.md`,
`packages/SobolevMapsBetweenManifolds/design/plan.json` and
`packages/SobolevMapsBetweenManifolds/sources.toml`.

## F01 (P2) — applied

Verified. `TauCeti.IsNullSet` (`TauCeti/Geometry/Manifold/Measure.lean:36`) quantifies over the
preferred chart at every point. On `M' = ℝ × D` (`D = ℝ` discrete, slice charts), `s = {0} × D` meets
each chart source in one point, so `s` is null, but `f(x, d) = d` maps it onto `ℝ`. The old §3.3 (ii)
was false.

Change in §3.3 (ii): "`f(s)` null whenever `s` is" → "…whenever `s` is null **and contained in
countably many preferred chart sources** (every `s` qualifies under `[LindelofSpace M']`)". This is
the exact condition: a set is covered by countably many chart sources iff it is Lindelöf. The
route is now written out (countable cover, §2.1 per chart, `TauCeti.IsNullSet.iUnion`). The route
also says why (i) and (iii) need no countability.

Also added:
- the witness as a negative-control Check, with `D = ℤ` as the positive case;
- `TauCeti.IsNullSet.iUnion` on the *Needs:* line;
- §3.3 in the Conventions' list of where Lindelöf enters;
- in plan.json 3.3: statement, hypothesis, prerequisite and test `non_lindelof_source`.

Pattern search: no other §3.3 (ii) consumers in the roadmap. §4.1, §4.5 and §4.6(a) use only (i)
and (iii). QuasiregularMaps' `sobolev-maps-chain-rules` gap uses only preimages (its README lines
283–288). §6.4's images use Lindelöf `M`.

## F02 (P3) — applied

Verified: the variable block of `riemannianVolume` (`…/VolumeDensity/Volume.lean:58–63`) needs
`[MeasurableSpace M] [BorelSpace M] [LindelofSpace M]`. Change in §6.4: added "let `N` also be
Lindelöf with `[MeasurableSpace N] [BorelSpace N]`". `f(A)` is Borel by
`Topology.IsOpenEmbedding.measurableEmbedding` (`Mathlib/MeasureTheory/Constructions/BorelSpace/Basic.lean:687`),
which is now in the Mathlib contract and in the *Needs:* line. plan.json 6.4 gets the matching
hypothesis, statement, API and prerequisites.

Pattern search: `vol_N` appears elsewhere only as the volume *form* in §6.2. `riemannianVolumeForm`
(`…/Riemannian/VolumeForm.lean:48–55`) needs no measurable or Lindelöf structure, so §6.2 stays.

## F03 (P3) — applied

Verified:
- `Module.Basis.orientation_isEmpty` (`Mathlib/LinearAlgebra/Orientation.lean:186`) makes the empty
  basis positively oriented.
- `Orientation.finOrthonormalBasis` requires `0 < n`.

So for `n = 0` with `o_V` negative, the old basis formula had no basis to evaluate on.

Change in §6.1:
- `J(A)` is now *defined* by `A^*ω_W = J(A)·ω_V`. Existence and uniqueness come from
  `AlternatingMap.eq_smul_basis_det` and the fact that `ω_V = ±1` on orthonormal bases.
- New basis formula, valid for every `n`: `J(A) = ω_V(b)·ω_W(A∘b)` for **any** orthonormal `b`. It
  reduces to `ω_W(A∘b)` for positively oriented `b`, which exists for `n ≥ 1`.
- The matrix bullet and the Hadamard route are repaired the same way.
- The dimension-0 Check now also excludes the wrong model.
- plan.json 6.1 is updated, with a new API item `orientedJacobian_eq_volumeForm_basis`.

## F04 (P3) — applied differently

Verified:
- PseudoholomorphicCurveAnalysis §1.2 on main (lines 279–321) has composition with `C^ℓ` maps and
  invariance under `C^k` diffeomorphisms, for `kp > 2`.
- SobolevPolynomialApproximation §2.1 is a bounded operator on global `W^{k,p}(Ω)`, for scalar
  functions under diffeomorphisms with bounded derivatives.
- SobolevDifferentialForms §4.1 is the pullback of forms under diffeomorphisms with `DΦ` and
  `DΦ⁻¹` bounded.

Applied:
- the Scope clause naming PH1.2 as the case `E = ℂ`, `p > 2` of §2.4 and §2.2;
- PH1.2 in the supplier contract and in plan.json suppliers;
- one agreement Check in each of §2.2 and §2.4 (plan tests `ph12_*`);
- a Scope bullet for the two global siblings.

The difference: the suggested clause "§2.2 contains them at order one" is inaccurate. A local
statement cannot contain global norm bounds. The bullet calls them global counterparts of §2.2,
with the same derivative, and says that §2.2 gives no norm bound.

## F05 (P3) — applied

Verified: Hajlasz2009 lines 129–130 state Theorem 2.1 for `p > n`. Lines 138–141 treat `p = n`
inside the proof. Change: "`p ≥ dim M` (Theorem 2.1, lines 129–137)" → "`p > dim M` (Theorem 2.1,
lines 129–130) and `p = dim M` (lines 138–141)". This is fixed in Scope, in Downstream consumers,
in References, and in `sources.toml` (`locator` and `cited_for` of Hajlasz2009).

## Checks run

**Dependency gate** (after all edits):

```
candidate: SobolevMapsBetweenManifolds is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2367 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The README before the edits gives the same edge count (2367),
so the new Scope mentions of the two open-pull-request roadmaps add no supply edge. Neither is on
a *Needs:* line or in a supplier table.

**Citation resolver** (`roadmaps resolve` on the README): no cross-roadmap citation and no Lean
name found nowhere. The resolver did not check names outside TauCetiRoadmap. I checked the four
new Mathlib names by hand at the pin:
- `AlternatingMap.eq_smul_basis_det` (`Mathlib/LinearAlgebra/Determinant.lean:647`);
- `Module.Basis.orientation_isEmpty` (`Mathlib/LinearAlgebra/Orientation.lean:186`, namespace
  `Module.Basis`);
- `Orientation.finOrthonormalBasis` (`Mathlib/Analysis/InnerProductSpace/Orientation.lean:148`);
- `Topology.IsOpenEmbedding.measurableEmbedding` (`…/BorelSpace/Basic.lean:687`, which needs
  Borel structures on both sides).

**Lean `#check` pass:** not applicable. The design stage has no `Suggested.lean`, so nothing was
elaborated.

**Sources:** no new source was fetched and no `needs-references.toml` was written. Every locator
used is in a certified cached text (Hajlasz2009) or is an uncertified entry already settled.

**plan.json:** valid JSON, 29 targets, 103 tests (100 before; the three new tests are F01's in
3.3 and F04's in 2.2 and 2.4). The README Check counts of §2.2, §2.4, §3.3 and §6.1 match plan.json.
`sources.toml` parses.

### Adversarial pass (changed and added statements)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §3.3 (ii), repaired | `M' = ℝ × D`, `D = ℝ` discrete, `f(x,d) = d`, `s = {0} × D` | each chart source holds one point of `s`; there are uncountably many slices, so no countable cover; `f(s) = ℝ`, measure `∞` | hypothesis fails, conclusion not claimed | Check added |
| §3.3 (ii) | same with `D = ℤ` | `s` lies in `⋃_{k∈ℤ} ℝ × {k}`; `f(s) = ℤ`, Lebesgue measure `0` | holds | — |
| §3.3 (ii) | `f = id_ℝ`, `s` the Cantor set | `μ(C) = 0`, `f(C) = C` | holds | — |
| §3.3 (ii) | `M' = pt` (`E' = 0`) | Haar on `0` gives `{0}` mass `>0`, so the only null `s` is `∅`; `f(∅) = ∅` | holds | — |
| §3.3 (ii) | projection `ℝ² → ℝ` | `finrank 2 > 1` | excluded by the dimension hypothesis | — |
| §3.3 (i), no Lindelöf | `θ : ℝ × D → ℝ`, `(x,d) ↦ x`, a local diffeomorphism; `s = {0}` | `θ⁻¹(s) = {0} × D`; each chart source has one point, image `{0}` null | null, as (i) says without countability | — |
| §3.3 (iii) | `U = (0,1) ⊆ ℝ`, `s = {1/2}` | images `{1/2}` in both charts | null in both | — |
| §6.4 with `N` Lindelöf | `f(x) = 2x` on `ℝ` | `μ_f^+([0,1]) = 2`, `vol_N([0,2]) = 2` | equal | hypothesis added |
| §6.4 reversing | `f(x) = −x` | `J = −1`; `μ_f^−([0,1]) = 1 = vol_N([−1,0])`; `μ_f^+ = 0` | roles exchanged | — |
| §6.4, `N` not Lindelöf | `f(x) = (x, 0)` from `ℝ` into `ℝ × D` (open embedding) | `riemannianVolume` of `N` has no `LindelofSpace` instance | hypothesis needed to state it | — |
| §6.1 definition, `n = 0` | `(o_V, o_W) = (+,+), (+,−), (−,+), (−,−)` | `ω_V(∅)ω_W(∅) = 1, −1, −1, 1` | matches the Check; the old formula has no basis at `(−,·)` | redefined |
| §6.1 wrong model | `ω_W(A∘∅)` alone at `(−,+)` | `+1` against the true `−1` | excluded by the Check | Check extended |
| §6.1 basis formula, negative `b` | `A = diag(2,1)`, standard orientations, `b = (e₂, e₁)` | `ω_V(b) = −1`, `ω_W(Ab) = ω(e₂, 2e₁) = −2`, product `2` | `J = 2 = det A` | — |
| §6.1 matrix formula | `A = diag(2,1)`, `b = (e₁,e₂)`, `b' = (e₂,e₁)` | `[A] = [[0,1],[2,0]]`, `det = −2`; `ω_V(b)ω_W(b') = 1·(−1)`; product `2` | `J = 2` | rewritten |
| §6.1 sign | `R = diag(−1,1)`, std → −std | `ω_V(e) = 1`, `ω_W(−e₁,e₂) = +1` | `J = +1`, as the Check says | — |
| §6.1 Hadamard | `diag(2,1)`; `n = 0` | `2 ≤ 4`; `1 ≤ ‖A‖⁰ = 1` | holds | route reworded |
| §2.2 PH1.2 Check | `θ(z) = 2z`, `u = |w|^{1/2}`, `p = 3` | `|Du| ∼ |w|^{−1/2}/2`, in `L³_loc(ℂ)` since `∫ r^{−3/2} r dr < ∞`; `u∘θ = √2|z|^{1/2}` | both statements give membership | Check added |
| §2.2 outside PH1.2 | `θ(z) = z²`, `u = log|w|` | non-injective; `u ∈ W^{1,p}_loc` only for `p < 2` | outside PH1.2 on both counts | — |
| §2.4 PH1.2 Check | `G(s,t) = st`, `u₁, u₂ ∈ W^{1,3}_loc(ℂ)` | continuous by Morrey; `D(u₁u₂) = u₂Du₁ + u₁Du₂` | agree | Check added |
| §2.4 outside PH1.2 | `G = log` on `(0,∞)` | `G` not defined on all of `F = ℝ` | outside PH1.2 | — |
| Scope, global siblings | SobolevPolynomialApproximation §2.1 at `k = 1`: `Φ(x) = 2x`, `u = x²` on `(0,2)` | `D(u∘Φ)(x) = 8x = Du(2x)·2` | same derivative as §2.2 | bullet added |
| Hajlasz2009 locator | lines 129–130, 138 | "If p > n" for Theorem 2.1; "If p = n" in the proof | `p ≥ n` was wrong | fixed |

## For the maintainer

- **Names and ids:** no section, target or name of this roadmap was renamed, renumbered or
  deleted. plan.json gains the API item `orientedJacobian_eq_volumeForm_basis` (6.1) and three
  tests.
- **QuasiregularMaps** (board package) cites §3.3 only for preimages, through its
  `sobolev-maps-chain-rules` gap. It is unaffected.
- **Open pull requests:** ownership was checked for the two open-pull-request roadmaps closest in
  vocabulary, SobolevPolynomialApproximation and SobolevDifferentialForms. I read them at their
  heads with `roadmaps show`. Neither owns a local, vector-valued or manifold-valued class, so this
  roadmap stays the owner of T1.
  - The Scope now cites their §2.1 and §4.1. If either pull request renumbers those sections
    before merging, the Scope bullet must follow.
  - Both are cited only as siblings, not as suppliers, so they create no merge-order dependency.
  - Ownership against the other open pull requests was not re-checked this round beyond
    `roadmaps overlaps`, which reports none.
- **Untrusted text:** nothing suspicious in the review or in the fetched roadmaps.
