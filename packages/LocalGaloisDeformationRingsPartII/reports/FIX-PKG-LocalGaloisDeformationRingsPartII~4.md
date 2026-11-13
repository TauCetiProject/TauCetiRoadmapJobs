# FIX-PKG-LocalGaloisDeformationRingsPartII~4

Repair of the findings of `REV-PKG-LocalGaloisDeformationRingsPartII~3` (two findings). Both are applied. `Suggested.lean` is unchanged.

## REV-PKG-LocalGaloisDeformationRingsPartII~3/F01 (P2) — applied

Old → new: the supplier gap `regular-local-factorial` (requested of DeformationAndDerivedPatchingAlgebra §3.2) → a citation of `PurityForFlatCohomology` §7.4 (`isRegularLocalRing_uniqueFactorizationMonoid`). The 5.3 route now shows `A` is regular by induction (Mathlib local-PID instance, Tau Ceti `TauCeti.PowerSeries.isRegularLocalRing`, `MvPowerSeries.finSuccEquiv`, `IsRegularLocalRing.of_ringEquiv`). The gap entry is gone from `design/plan.json`.

Verification.

- PurityForFlatCohomology (a new-roadmap pull request, line 221 of the merge order; this roadmap is line 353) states at its head, README §7.4 and `Suggested.lean` line 269: `theorem isRegularLocalRing_uniqueFactorizationMonoid (R : Type u) [CommRing R] [IsRegularLocalRing R] : UniqueFactorizationMonoid R`. There is no dimension hypothesis, so it covers `𝒪⟦x₁,…,x_n⟧` for every `n`.
- DeformationAndDerivedPatchingAlgebra §3.2 at its head ("Regular local homological comparisons") states no factoriality theorem: Lescot's criterion, stable cohomology, and the prime-localization comparison. The gap asked for something that section does not plan.
- On main nothing owns the theorem. A grep of every main README and `Suggested.lean` for regular-local factoriality finds only PadicMeasuresIwasawaAlgebras README line 2345, which uses Auslander–Buchsbaum for normality without stating it. Among the open heads the only statement is PurityForFlatCohomology §7.4.
- The pinned libraries alone do not give the result. In a scratch file with `import Mathlib` and the two Tau Ceti modules, `#check` gives `TauCeti.PowerSeries.isRegularLocalRing : [IsRegularLocalRing R] → IsRegularLocalRing (PowerSeries R)` and `TauCeti.IsRegularLocalRing.uniqueFactorizationMonoid : [IsRegularLocalRing R] → ringKrullDim R ≤ 2 → UniqueFactorizationMonoid R`. `infer_instance` does not find `UniqueFactorizationMonoid (MvPowerSeries (Fin 3) O)` over a DVR `O`.
- The regularity step of the route compiles at the pins. `inferInstance : IsRegularLocalRing O` holds for a DVR through Mathlib's instance for local principal ideal domains (`Mathlib/RingTheory/RegularLocalRing/Defs.lean`). A three-line induction proves `∀ n, IsRegularLocalRing (MvPowerSeries (Fin n) O)` for regular local `O`: `IsRegularLocalRing.of_ringEquiv` along `(MvPowerSeries.isEmptyEquiv (Fin 0) O).symm` and `(MvPowerSeries.finSuccEquiv O n).symm`. It elaborates without `sorry`.

Edits in `packages/LocalGaloisDeformationRingsPartII/README.md`.

- Scope and ownership: new imported item "Factoriality of regular local rings in every dimension (Auslander–Buchsbaum): `PurityForFlatCohomology`, §7.4". The Mathlib item also names Tau Ceti for regularity of power series.
- From Mathlib: the note "the pin has no theorem that these rings are factorial in more than one variable" now says that neither pin proves it and that 5.3 takes factoriality from `PurityForFlatCohomology` §7.4. A new bullet names `MvPowerSeries.isEmptyEquiv`, `MvPowerSeries.finSuccEquiv`, `IsRegularLocalRing.of_ringEquiv` and the local-PID instance.
- From Tau Ceti: new bullet for `TauCeti.PowerSeries.isRegularLocalRing`. It explains why `TauCeti.IsRegularLocalRing.uniqueFactorizationMonoid` does not suffice: it needs dimension at most 2, and `dim 𝒪⟦x₁,…,x_n⟧ = n + 1`, so it covers only `n ≤ 1`.
- DeformationAndDerivedPatchingAlgebra contracts: the `gap:regular-local-factorial` line is deleted. A new section "From TauCetiRoadmap.PurityForFlatCohomology" with the §7.4 bullet sits after it.
- 5.3: the route and *Needs:* are rewritten as above.
- Layer 5 Dependencies: `regular-local-factorial` is replaced by `PurityForFlatCohomology` §7.4, Mathlib `MvPowerSeries.finSuccEquiv`, `IsRegularLocalRing`, and Tau Ceti `TauCeti.PowerSeries.isRegularLocalRing`.

Edit in `design/plan.json`: only the `regular-local-factorial` entry of the top-level `gaps` list is removed. A JSON diff of the plan without `gaps` against the previous version is empty.

Difference from the suggested repair: the reviewer's step 4 said "one variable at a time from `TauCeti.PowerSeries.isRegularLocalRing`". That instance is about `PowerSeries`, not `MvPowerSeries (Fin n)`. The route therefore also names the bridge (`MvPowerSeries.finSuccEquiv`, `MvPowerSeries.isEmptyEquiv`, `IsRegularLocalRing.of_ringEquiv`) and the base case, Mathlib's instance for a local principal ideal domain. All of these were checked at the pins.

Pattern search: `regular-local-factorial` occurred at README lines 86, 548 (twice) and 617, and in the plan's `gaps`. All are repaired, and `grep` now finds no occurrence in the README or the plan. The other "factorial" mention (Scope, the Böckle–Iyengar–Paškūnas continuation) is unrelated. `sources.toml` never cited the gap. The `Suggested.lean` docstring of `crossing_prime` ("primality uses that `A` is a regular local ring, hence factorial") already matches the new route and is unchanged.

## REV-PKG-LocalGaloisDeformationRingsPartII~3/F02 (P3) — applied

Old → new: in `gap:ghls-existence` (README "From TauCetiRoadmap.LocalGaloisDeformationRings" and the gap's `needs` in `design/plan.json`), "`K/ℚ_p` unramified, `p ∤ n`" → "`K/ℚ_p` unramified, `p ≠ n`".

Evidence:

- GHLS17 line 174 (Theorem D) and line 1041 (Theorem 3.1.5) print the hypothesis with the glyph that the extraction uses for "≠", as in "`⁄= 0`" at lines 448 and 481. Non-divisibility is printed `∤` (`p ∤ 2n`, lines 160, 925, 962).
- GHLS17 lines 1044–1047 derive `p > n` from `p ≠ n` and the extended FL weight.
- The two readings are equivalent under the theorem's other hypotheses. For `n ≥ 1`, `p ∤ n` implies `p ≠ n`. Conversely, `p ≠ n` with an extended FL weight gives `p > n` and hence `p ∤ n`. Instances: `n = 2` gives `p ≠ 2` in both readings; `n = 4, p = 2` satisfies `p ≠ n` but not `p ∤ n`, and an extended FL weight would force `p > 4`, so that case is empty either way.
- 5.6 uses `n = 2` with `p ≥ 29`, so nothing downstream changes.

Pattern search: no other `p ∤ n` in the README, `design/README.md`, `design/plan.json` or `sources.toml`.

## Checks run

- **Elaboration**: `lake env lean packages/LocalGaloisDeformationRingsPartII/Suggested.lean`, run from the content checkout. The only output is `Suggested.lean:47:8: warning: declaration uses 'sorry'`. The file is unchanged, with `import Mathlib` only; no Tau Ceti module was needed.
- **Binder check**: one scratch file with the module and `#check @TauCetiRoadmap.LocalGaloisDeformationRingsPartII.crossing_prime`, elaborated once. The type is `∀ {O} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O] {ϖ : O}, Irreducible ϖ → ∀ (n : ℕ) {d : ℕ}, 0 < d → ∀ (u : (MvPowerSeries (Fin (n + 2)) O)ˣ), Prime (X 0 * X 1 + C (ϖ ^ d) * ↑u)`. This matches README 5.3's first assertion: `n + 2 ≥ 2` variables, a complete DVR, `d > 0`, a unit `u`. Nothing changed.
- **Pinned declarations newly cited**, each checked with `#check` in a scratch file at the pins: `TauCeti.PowerSeries.isRegularLocalRing` (`TauCeti/RingTheory/RegularLocalRing/PowerSeries.lean:157`), `TauCeti.IsRegularLocalRing.uniqueFactorizationMonoid` (`TauCeti/RingTheory/RegularLocalRing/UniqueFactorization.lean:59`), `MvPowerSeries.finSuccEquiv` (`Mathlib/RingTheory/MvPowerSeries/Equiv.lean:169`), `MvPowerSeries.isEmptyEquiv` (same file, line 54), `IsRegularLocalRing.of_ringEquiv` (`Mathlib/RingTheory/RegularLocalRing/Defs.lean:69`), and the local-PID instance (same file, line 80).
- **Dependency check** (the brief's command):

  ```text
  depcheck: 236 roadmaps, 2140 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or `moved:` line. The new edge to PurityForFlatCohomology points downward (221 < 353).
- **Citations**: `roadmaps resolve` on the README lists no cross-roadmap citation and no Lean name found nowhere. PurityForFlatCohomology §7.4 and `isRegularLocalRing_uniqueFactorizationMonoid` were read at the head of its pull request in the index of 2026-11-11.
- **Gap agreement**: a script compares the README's `What <Supplier> must provide (gap:<slug>)` lines with the plan's `gaps`. It finds 9 slugs in both, and for every slug the supplier and the `needs` text are identical. No `gap:` reference lacks an entry.
- **Style**: the README has no LaTeX delimiter, machine path or process word.

## Adversarial pass on changed text

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Mathlib: a local PID is a regular local ring | field `k`; DVR `𝒪` | `k`: `spanFinrank 𝔪 = 0 = dim`; `𝒪`: `𝔪 = (ϖ)`, `1 = dim 𝒪 = 1`; `inferInstance` succeeds for a DVR at the pin | holds | none |
| Tau Ceti: `R` regular ⇒ `R⟦X⟧` regular | `R = k`; `R = 𝒪`; non-example `k[ε]/ε²` | `k⟦X⟧`: `𝔪 = (X)`, `1 = 1`; `𝒪⟦X⟧`: `𝔪 = (ϖ, X)`, `2 = 2`; `k[ε]/ε²⟦X⟧`: dimension 1 but `𝔪 = (ε, X)` needs 2 generators (outside the hypothesis) | holds; hypothesis needed | none |
| `dim 𝒪⟦x₁,…,x_n⟧ = n + 1`, regular | `n = 0, 1, 2` | `1, 2, 3`, by adding one per variable to `dim 𝒪 = 1`; `𝔪 = (ϖ, x₁, …, x_n)` has `n + 1` generators | holds; induction compiles at the pin | none |
| Tau Ceti factoriality reaches only `n ≤ 1` | `n = 1`; `n = 2` (crossing_prime's smallest case) | `dim 2 ≤ 2` is covered; `dim 3 > 2` is not; `infer_instance` fails for `Fin 3` | the citation of §7.4 is needed | none |
| §7.4: regular local ⇒ UFD | dim 0, 1, 2, 3 | field: every nonzero element is a unit; DVR: `ϖ` is the only prime; `𝒪⟦x⟧`: Tau Ceti dimension-two theorem; `𝒪⟦x₁,x₂⟧`: §7.4 only | holds in all dimensions | none |
| 5.3 route: irreducible ⇒ prime in factorial `A` | `A = 𝒪⟦x₁,x₂⟧`; non-factorial control `k⟦x,y,z⟧/(xz − y²)` | in a UFD irreducibles are prime; in the control `x` is irreducible, `x ∣ y²`, `x ∤ y`, so it is not prime | factoriality is needed and supplied | none |
| GHLS17 hypothesis `p ≠ n` | `n = 2`; `n = 4, p = 2`; `n = 1, p = 2`; `n = 3, p = 3` | `p ≠ 2` in both readings; `≠` holds but `∤` fails, and FL forces `p > 4`, so the case is empty; both hold; both fail | equivalent under the other hypotheses; transcription corrected | `p ∤ n → p ≠ n` |

## Notes for the maintainer

- New supplier edge: this roadmap now cites PurityForFlatCohomology §7.4 (an open new-roadmap pull request, earlier in the merge order). The pull request that carries this package should name PurityForFlatCohomology among its suppliers in its merge-order paragraph. If PurityForFlatCohomology renumbers §7.4 before merging, the citation in Scope, the supplier contracts, 5.3 and the Layer 5 Dependencies has to follow it.
- DeformationAndDerivedPatchingAlgebra loses the request for `regular-local-factorial`, so it no longer needs to plan factoriality in §3.2 for this consumer. The `power-invariance` gap on its §1.11 is unchanged.
- No name of this roadmap changed. `crossing_prime` is unchanged, and no other roadmap's citation of this one is affected.
- Ownership against open pull requests was checked through `roadmaps grep` and `roadmaps show` at the heads of the index of 2026-11-11, and against main at the content checkout. No new owner was introduced: §7.4 has a single owner, PurityForFlatCohomology.
- No new source was needed. All locators cited are in the cached GHLS17 text, and `needs-references.toml` was not written.
- No suspicious instruction was found in the review text.
