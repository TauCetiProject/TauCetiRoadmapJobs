# FIX-PKG-LieHighestWeightPartII~5

Round 5 repair of the LieHighestWeightPartII package against the review `REV-PKG-LieHighestWeightPartII~4` (three findings). All three were verified against the pinned Mathlib and Tau Ceti and applied.

## REV-PKG-LieHighestWeightPartII~4/F01 (P2) — applied

Old: the docstring of `Suggested.lean` exempted the half-integrality test as a "short coset argument" kept in the README. New: `forall_weight_halfIntegral_iff_highestWeight` (Layer 5, before the weight patterns), stated on native carriers: `TauCeti.IsHighestWeightVector`, `LieModule.genWeightSpace`, `LieModule.IsIrreducible`, a base of `LieAlgebra.IsKilling.rootSystem H`, an additive `ν : Dual K H →+ ℝ`, and `2ν(root i) ∈ ℤ` for simple roots only. README §5.2 names it. The docstring now records the algebraic-group form as not statable.

Verification. The README Summary names CH Lemma 6.30 as an end theorem of the second strand, and the brief's only exemption is "follows in one tactic from the library". This statement does not. A scratch file proves it in about twenty lines from `TauCeti.sub_mem_posRootCone_of_genWeightSpace_ne_bot_of_isHighestWeightVector_of_lieSpan_eq_top`, `TauCeti.lieSpan_singleton_eq_top_of_ne_zero` and `TauCeti.IsHighestWeightVector.genWeightSpace_ne_bot`, plus an induction over `TauCeti.posRootCone`, the additive closure of the simple roots. The proof elaborates with no `sorry`. So the statement is certified true, and it is a composite of several pinned results, not a one-step consequence.

Generality, chosen from that proof rather than from the reviewer's witness:
- `[IsAlgClosed K]` is dropped. The statement holds over every field of characteristic zero with a splitting Cartan subalgebra (`[IsTriangularizable K H L]`).
- `[FiniteDimensional K M]` is dropped. The weight-cone theorem needs only that `v` generates `M`, so irreducible infinite-dimensional highest-weight modules are covered too.
- Weights are taken as `genWeightSpace M μ ≠ ⊥`, Mathlib's `LieModule.Weight` notion, rather than `weightSpace`.

The README matches this generality: §5.2 and the Conventions now say the Lie-algebra statement needs only characteristic zero and a splitting Cartan subalgebra. §5.2 also explains why additive `ν` on `H^*` contains the source's real functionals on `X ⊗ ℝ`: they restrict to `X` and extend `ℚ`-linearly from its `ℚ`-span.

The algebraic-group form is not statable at the pins. Tau Ceti has split maximal tori, Borel ideals, `TauCeti.Pinning` and group-like weight spaces of comodules (`TauCeti/Algebra/Coalgebra/Comodule/Weight/Space.lean`). It has no highest weight or Borel-stable weight line of an irreducible comodule; a search of `TauCeti/Algebra/AlgebraicGroup` and `TauCeti/Algebra/Coalgebra` finds only the `SL₂` binary-form files. Stating it would need a long ad hoc encoding, so the docstring names the missing carrier (ReductiveGroups Layer 10B's rational highest weights) and the README keeps it as a target.

Pattern repairs in the same change:
- The §5.2 proof route and *Needs* now cite the pinned Tau Ceti declarations instead of LieHighestWeight Layer 3. Layer 4 is kept for identifying finite-dimensional `M` with `L(λ)`.
- The LieHighestWeight Layer 3 contract line notes its pinned form.
- The Scope "already in the library" bullet adds the weight-cone theorem.
- The Tau Ceti contracts gain a "Highest weights" paragraph; the Mathlib contract adds `RootPairing.Base`, `LieModule.IsTriangularizable`, `LieModule.genWeightSpace` and `LieModule.IsIrreducible`.
- The Layer 5 Dependencies, the "How to read the build" sentence and the Lean Layer 5 section comment, now the README title "highest weights and weight patterns", are updated.
- §5.2 gains three Checks: irreducibility needed, the simple-root hypothesis needed, and the infinite-dimensional Verma cases.

## REV-PKG-LieHighestWeightPartII~4/F02 (P2) — applied

Old: "`TauCeti.exists_int_of_hasEigenvalue` (every eigenvalue … on a finite-dimensional module over a characteristic-zero domain is an integer)". New: the contract names its actual hypotheses, a Noetherian, torsion-free module over a characteristic-zero domain. It states the field case used here separately and gives the `ℚ[T]/(T)` counterexample, where `T` is a non-integer eigenvalue.

Verified at the pin: `TauCeti/Algebra/Lie/Sl2/Spectrum.lean` lines 89–92 (section `Raising`) bind `[CommRing K] [IsDomain K] [CharZero K]`, `[IsTorsionFree K M] [IsNoetherian K M]`, and the theorem is at line 151. The counterexample checks out: `ρ(h) = 0`, the eigenspace at `T` is `ker(−T) = A/(T) ≠ 0`, and `T` is no integer constant. The module is cyclic over a Noetherian ring, so Noetherian, but `T · 1̄ = 0`.

Pattern repair, the same hypothesis drift in the same contract block:
- `IsSl2Triple.disjoint_ker_toEnd_e_eigenspace` (`EigenspaceMap.lean` lines 81–90, section `Domain`) also binds Noetherian and torsion-free over a domain; its contract now says so. `map_toEnd_e_eigenspace` and `map_ad_e_eigenspace_zero` are in section `Field` and keep the field wording.
- `TauCeti.iSup_eigenspace_toEnd_intCast_eq_top` and `TauCeti.isInternal_eigenspace_toEnd_intCast` were described "over an algebraically closed field". At the pin both carry `omit [IsAlgClosed K] in` (`Spectrum.lean` lines 322, 338), so the contract now says "a field of characteristic zero, algebraically closed or not".
- §1.2's API bullet notes that both module hypotheses hold for a finite-dimensional space over `K`.

The counterexample is placed in the contract rather than as a §1.2 Check, because §1.2 works over a field. None of the Lean statements changes.

## REV-PKG-LieHighestWeightPartII~4/F03 (P3) — applied

Old: "`N` is the largest absolute value of an eigenvalue". New: "`N` is the largest element of `{0} ∪ {|j| : M_j ≠ 0}`, so `N = 0` for `M = 0`, whose eigenvalue set is empty". A §1.2 Check is added for the zero module (`N = 0`, every step `0 = M`) and for `V(1)`, `V(2)` and a nonzero trivial module (`N = 1, 2, 0`).

Pattern search: the other maxima in the README are taken over nonempty sets. The largest jump index on `L(ω_r)` in §2.3 is over a module of dimension `2^(r−1) ≥ 2`. `i_max` in §3.5 is over a nonzero adjoint module. The bound `B_T(a)` in §3.2 is a sum, not a maximum. None needs a change.

## Checks run

- **Elaboration.** `lake env lean packages/LieHighestWeightPartII/Suggested.lean`, run from the content checkout, exits 0. It gives exactly nine `declaration uses sorry` warnings, at lines 78, 95, 109, 126, 149, 176, 196, 215 (the new theorem) and 264, and no other message. No module build was needed: the `TauCeti.Algebra.Lie.HighestWeight.Basic` object file was present.
- **Signatures.** A scratch copy with `#check @name` for all 14 declarations elaborated, exit 0. Each type was compared with its README statement; no binder is lost. The new theorem keeps `CharZero`, `IsKilling`, `FiniteDimensional K L`, the Cartan and triangularizability instances, `b`, the `LieModule` and `IsIrreducible` instances, `hv`, `ν` and `hν`. The other 13 are unchanged from `signatures.md`.
- **Dependency check** (the brief's command with `--content`):

  ```
  depcheck: 236 roadmaps, 2140 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or moved line.
- **Scratch package gate** (copy under the job's scratch directory): every check is 0 except `git=1`, which only means the scratch copy is not a git repository.
- **Citation resolver** on the README: no cross-roadmap citation or Lean name is found nowhere.
- **Mathlib names checked by hand**, since the resolver does not inspect Mathlib: `LieModule.genWeightSpace` (`Mathlib/Algebra/Lie/Weights/Basic.lean:183`), `LieModule.Weight` (`:205`), `LieModule.IsTriangularizable` (`:701`), `LieModule.IsIrreducible` (`Mathlib/Algebra/Lie/Semisimple/Defs.lean:33`) and `RootPairing.Base` (`Mathlib/LinearAlgebra/RootSystem/Base.lean:68`).
- **Tau Ceti names checked**: `TauCeti/Algebra/Lie/HighestWeight/Basic.lean:122, 253, 368`, `Module.lean:309`, `TauCeti/LinearAlgebra/RootSystem/Positive.lean:319` and `TauCeti/Algebra/Lie/Submodule/Atom.lean:54`.

## Adversarial pass (changed and added statements)

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| `forall_weight_halfIntegral_iff_highestWeight` | `sl₂`, `V(1)`, `ν(α) = ½` | weights `±ω`: `2ν = ±½ ∉ ℤ` (left false); `2ν(ω) = ½` (right false) | iff holds | none |
| same | `sl₂`, `V(2)`, `ν(α) = ½` | weights `α, 0, −α`: `2ν = 1, 0, −1` (left true); `2ν(α) = 1` (right true) | holds | none |
| same, irreducibility | `sl₂`, `V(1) ⊕ V(0)`, `v` spanning `V(0)`, weight `0` | right `2ν(0) = 0` true; left fails at `±ω` (`±½`) | fails without `IsIrreducible` | Check added |
| same, simple-root hypothesis | `sl₂`, `ν(α) = ⅓`, `V(3)` | `2ν(3ω) = 1` true; `2ν(ω) = ⅓` false | fails without `hν` | Check added |
| same, infinite-dimensional | Verma, `λ(H) = −2`, raising coefficient `−k(k+1) ≠ 0` | weights `−(k+1)α`: `ν = −(k+1)/2 ∈ ½ℤ`; `ν(λ) = −½`; both true | holds | Check added |
| same, infinite-dimensional | Verma, `λ(H) = −1`, coefficient `−k² ≠ 0` | `ν(−ω − kα) = −¼ − k/2 ∉ ½ℤ`; `ν(−ω) = −¼`; both false | holds | Check added |
| same, degenerate | `L = 0`, `H = 0`, `b` with empty support, `M` one-dimensional | `Dual K H = 0`, `λ = 0`, only weight `0`: `2ν(0) = 0` on both sides | holds | none |
| same, `v = 0` | `TauCeti.IsHighestWeightVector` contains `v ≠ 0` (`Basic.lean:122`) | `v = 0` cannot satisfy `hv`, so no arbitrary `λ` | non-vacuous | none |
| same, truth overall | scratch proof from the pinned cone theorem | 0 errors, 0 `sorry` | proved | none |
| additive `ν` on `H^*` vs real functional on `X ⊗ ℝ` | fundamental weights a `K`-basis of `H^*`; `X` their `ℤ`-span | restriction to `X` and `ℚ`-linear extension from `X ⊗ ℚ` are mutually inverse on what the statement reads | equivalent | README sentence |
| §1.2 bound `N` | `M = 0`; `V(1)`; `V(2)`; nonzero trivial; zero triple on `K²` | `N = 0, 1, 2, 0, 0`; `W_(−N−1) = 0` and `W_N = M` in each case | holds | text and Check |
| F02 contract | `A = ℚ[T]`, `M = A/(T)`, trivial action | `ker(ρ(h) − T) = ker(−T) = M ≠ 0`; `T ∉ ℤ` | torsion-freeness needed | contract |
| F02 field case | `V(1)` over `K` | eigenvalues `±1 ∈ ℤ`; finite-dimensional is Noetherian and torsion-free | holds | none |
| Spectrum direct sum over non-closed `K` | `ℚ`, `V(1)` | eigenvalues `±1 ∈ ℚ`, eigenspaces span `ℚ²` | holds, matching `omit [IsAlgClosed K]` | contract |

## Sources

No new source is cited. CH Lemma 6.30 (CH line 1158) was already recorded in `sources.toml`, and the new citations are pinned library declarations. `sources.toml`, `metadata.toml` and `design/plan.json` are unchanged, and no supplier gap is needed.

## Ownership and overlaps

- The half-integrality test was already listed as owned in this roadmap's Scope. `roadmaps grep` for `half-integral|halfIntegral|Lemma 6.30` over main and the open heads finds no other owner; the hits are half-integral weight modular forms, spins and similar.
- The weight-cone input is Tau Ceti's at the pin and is cited, not restated.
- `scratch/overlaps.md` lists no conflicting open pull request and no dropped id. No id of this roadmap changed.

## For the maintainer

- New Lean name: `TauCetiRoadmap.LieHighestWeightPartII.forall_weight_halfIntegral_iff_highestWeight`. No name was removed or renamed.
- `Suggested.lean` now also imports `TauCeti.Algebra.Lie.HighestWeight.Basic`.
- The new headline can already be proved from the pinned Tau Ceti in about twenty lines (scratch proof above), so this target is close to done in the library. It is kept as a sorried headline because the Summary names it an end theorem and it is not a one-tactic consequence. A later reviewer who reads "headline" as "deep result" may question that; the README target is complete either way.
- No consequences for other roadmaps.
