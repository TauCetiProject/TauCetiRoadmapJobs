# GATE-AlgebraicKTheory~7: answers to human review

One unanswered review (CBirkbeck, of head `4f51ae0`), with five numbered findings F01–F05, numbered H01–H05 here. Commit `637a3d8`, the head this job started from, already repairs most of them. This round checked each repair against the pins and fixed the two defects that were left (H04 and a module path found while repairing H01). The review text given to this job is cut off after its "Sources checked" table. Its "Source issues" section is not visible here, so any point in it is not numbered or answered below; the one point it is cross-referenced for (Weibel's "except n=2 when D=𝔽₂" parenthetical) is handled by the first Check of 2.3.

## H01 (CBirkbeck) — applied

`README.md` Conventions now says that Tau Ceti's `Basic` and `Unit` modules supply `mkQ`, `mk`, `tmul`, `induction_on`, `hom_ext`, `lift`, `liftEquiv`, `map`, `lid` and `rid`. It also names `Corner` (`spanSingletonBalancedTensorProductEquivCorner`) and `OuterFactors` (`outerFactors`, k-linear) as present at the pin but not consumed. The supplier contract "From Tau Ceti" and the `Suggested.lean` docstring say the same. All of these exist at Tau Ceti `358314d`, which is main's pin and the pin this roadmap is judged at (`Balanced/Basic.lean` lines 48–187, `Unit.lean` 45/82, `Corner.lean` 78, `OuterFactors.lean` 88). The witness is correct for the branch's own manifest, which still pins `a91d3aa`; the folder does not change `lake-manifest.json`, so merging main into the branch moves the pin. That merge is outside the folder and is the worker's to do. `Suggested.lean` does not import the balanced modules, so it builds at both pins.

## H02 (CBirkbeck) — applied

`README.md` now has `## Scope and ownership`, `## Conventions`, `## Exact supplier contracts` (one subsection per supplier), `## How to read the build` and `## Layer 0`–`## Layer 8`, each with `### k.n` subsections. There are 33 `**Checks.**` lists (each with at least three bullets) and 33 `*Needs:*` lines. Every layer ends with `### Examples` and `### Dependencies`. This includes the Checks the finding asked to move: the `(2,5)` row, `GL₂(𝔽₂)≅S₃` against `K₁(𝔽₂)=0`, `[−1]∈K₁(ℤ)`, `K₀(ℤ,5ℤ)≅ℤ/2`, and `K₁ᵃˡᵍ(ℂ)=ℂˣ` against `K₁ᵗᵒᵖ(ℂ)=0`.

## H03 (CBirkbeck) — answered

The README no longer links `MobiusSectionTargets.lean` or `SphereComplexificationTargets.lean` (`grep` finds no reference in `README.md` or `Suggested.lean`); their statements stay in 0.5–0.7 as targets and Checks. This job may edit only `README.md` and `Suggested.lean`, so the two files are still in the folder. The finding's first option (delete both files) is the right fix, since nothing headline-level about them can be stated without the A0 carriers. That deletion is left to the worker.

## H04 (CBirkbeck) — applied

`README.md` Scope and ownership, old text: "…so they are imports of 2.2, 3.2 and 3.3 there, and what remains GeneralAlgebraicKTheory's own is the exactness at K₁ᴮ(D) for summand-dense functors that are not full…". This spoke for GeneralAlgebraicKTheory, whose §§4.15–4.16 at its open head still define `ClassicalRelativeK0` and `ClassicalAdditiveK1` themselves. New text: "This roadmap owns them and supplies them to GeneralAlgebraicKTheory: 2.2's K₁ᴮ(C), 3.2's K₀(T) and 3.3's boundary δ, exactness at K₀(T) and K₀(C) for summand-dense T, and exactness at K₁ᴮ(D) for full summand-dense T. GeneralAlgebraicKTheory owns only the extension of exactness at K₁ᴮ(D) to summand-dense functors that are not full." Repointing GeneralAlgebraicKTheory §§4.15–4.17 to import these is a matter for that roadmap's own review.

## H05 (CBirkbeck) — applied

The locator is now "Vaserstein 1971, Theorems 5 and 7, p. 20", in 4.5 and in both `Suggested.lean` docstrings. The References entry gives Funktsional. Anal. i Prilozhen. 5:2, 17–27 and the English translation. 4.4 identifies Vaserstein's stable-value dimension d(X), and its essential-map variant d′(X), with covering dimension through the sphere-extension characterization for compact Hausdorff X, with ∞ allowed. The hypothesis `hX : ∃ d, HasCoveringDimensionLE X d` was removed from both `hasStableRangeLE_continuousMap_complex_iff` and `hasStableRangeLE_continuousMap_real_iff`. The Hilbert-cube Check in 4.5 records that both sides are false for every s.

## Other change

In the supplier contract, `Module.Finite.exists_comp_eq_id_of_projective` was located in `Mathlib.Algebra.Module.FinitePresentation`. That module only uses the lemma. It is declared in `Mathlib.RingTheory.Finiteness.Projective` (line 28 at Mathlib `f6090c7`, the same file at the branch's `6b7abb3`), and the README now says so. Every other module path in the Mathlib and Tau Ceti contracts was opened at the pins and exists. The `citations.md` lead "`ElementaryRowOperations` occurs nowhere" is a false positive: `Mathlib/LinearAlgebra/Matrix/ElementaryRowOperations.lean` exists, and `GeneralLinearGroup.transvection` is at line 97.

## Signature check

`#check @name` for all 15 declarations was appended to `Suggested.lean` temporarily, built once with `lake build TauCetiRoadmap.AlgebraicKTheory.Suggested`, and then reverted. Each elaborated type matches its README statement:

- `KZero R : Type u`.
- `elementary` keeps `[Ring R] [Fintype n] [DecidableEq n]`.
- Both stability theorems carry `HasStableRangeLE R s` and the bound on `Fintype.card n`.
- Both Vaserstein statements carry `[CompactSpace X] [T2Space X]` and `1 ≤ s`, and no finite-dimension hypothesis.
- `hasStableRangeLE_of_ringKrullDim_le` carries `[IsNoetherianRing A]`.

No binder was lost, and nothing changed as a result.

## Adversarial pass (statements touched or rechecked this round)

| Statement | Instances | Values | Result | Change |
|---|---|---|---|---|
| Vaserstein, ℂ: `sr ≤ s ↔ dim ≤ 2s−1`, s ≥ 1 | X = pt, [0,1], S², Hilbert cube, ∅; s = 0 | sr(C(X,ℂ)) = ⌊d/2⌋+1: pt 1, [0,1] 1, S² 2. S², s=1: 2 ≤ 1 false, dim 2 ≤ 1 false. S², s=2: true, 2 ≤ 3 true. Cube: ∞, both sides false. ∅: zero ring, both true. s=0, X=pt: LHS false (ℂ ≠ 0), RHS `2*0−1 = 0` in ℕ so dim 0 ≤ 0 true | holds for s ≥ 1; s = 0 is a counterexample, so `hs` is needed | none |
| Vaserstein, ℝ: `sr ≤ s ↔ dim ≤ s−1`, s ≥ 1 | X = [0,1], s = 1, 2 | sr = d+1 = 2. s=1: false, and 1 ≤ 0 false. s=2: true, and 1 ≤ 1 true | holds | none |
| Removing `hX` | X with no finite covering dimension | d(X) = ∞ (Vaserstein Thms 5, 7 allow it); LHS false for every s; RHS false for every d | equivalence holds without `hX` | none (already removed) |
| H04 supply sentence: exactness at K₁ᴮ(D) needs fullness in 3.3 | T: Proj(ℤ) → Proj(ℚ), summand-dense and not full | δ(2) = [(ℤ,2,ℤ)] ↦ det mod ±1 = 2 ≠ ±1; ker δ = {±1} = im K₁(ℤ); the equality criterion fails for (ℤ², diag(2,1/2), ℤ²), which is 0 in K₀(T) but not stably an identity triple | 3.3 proves only the full case, as the new sentence says | rephrased |
| 3.3 Check: K₀(ℤ,5ℤ) | T_I, I = 5ℤ | 𝔽₅ˣ ≅ ℤ/4, image of {±1} = {1,4}, K₀(ℤ) → K₀(𝔽₅) is an isomorphism, so K₀(ℤ,5ℤ) ≅ ℤ/2 | consistent with the 3.2 Check | none |
| `exists_comp_eq_id_of_projective` path | both Mathlib pins | declared at `RingTheory/Finiteness/Projective.lean:28`, `[Semiring R]`, gives `∃ n f g, Surjective f ∧ Injective g ∧ f ∘ₗ g = id` | the old path was wrong | path fixed |

## Ownership

Checked against main and the open heads through `roadmaps grep`. GeneralAlgebraicKTheory at its open head still defines `ClassicalRelativeK0` and `ClassicalAdditiveK1`. This roadmap is earlier in supply and owns them (H04). No new carrier was added this round.

## Build

`lake build TauCetiRoadmap.AlgebraicKTheory.Suggested`: `Build completed successfully (8999 jobs).` with 10 warnings, all `declaration uses 'sorry'` (lines 55, 74, 86, 97, 118, 131, 143, 150, 166, 174).

## Gate

`gate AlgebraicKTheory: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`

## Direction check

`depcheck: 204 roadmaps, 1444 edges, 0 problem(s)`: no UPWARD, CYCLE or `moved:` line for AlgebraicKTheory.

## Commit

`2e88b59` "AlgebraicKTheory: review repairs (GeneralAlgebraicKTheory supply sentence, splitting-lemma module path)". Not pushed.
