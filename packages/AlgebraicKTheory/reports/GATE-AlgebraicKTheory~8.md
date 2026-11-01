# GATE-AlgebraicKTheory~8: answers to human review

One comment (mycaule), split into four points: the 1.1 pointer, the 1.3 pointer, the perfectness pointer and the carrier remark. Each claim was checked against the file `lean/Quillen/Upstream/MatrixElementarySubgroup.lean` of `Commutator-IO/grothendieck-project` (main branch, read on the web; repository marked CC0; single `import Mathlib`; no `sorry`), and against the pinned Mathlib.

## H01 (mycaule) — applied

The file has `Matrix.transvectionUnit h a` with value `1 + single i j a` and inverse `1 + single i j (-a)`, `Matrix.elementarySubgroup n A` = closure of those units in `(Matrix n n A)ˣ` under `[Ring A]`, and `Matrix.commutator_transvectionUnit` (`⁅e_ik(a), e_kj(b)⁆ = e_ij(a*b)` for distinct i, k, j). It also has `Matrix.blockUpperUnit_mem_elementarySubgroup` and `Matrix.blockLowerUnit_mem_elementarySubgroup`. This is the same generating set and subgroup as `elementary` in `TauCetiRoadmap/AlgebraicKTheory/Suggested.lean`, because `Matrix.GeneralLinearGroup` is an `abbrev` for `(Matrix n n R)ˣ` (Mathlib `LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean:42`). README Conventions (end of the matrix paragraph) now cites the file and these declarations, says that its proofs port to this roadmap's names, and lists what it leaves out: the ring-map and reindexing formulas and the SL comparison of 1.1.

## H02 (mycaule) — applied

The statement of `Matrix.exists_mem_elementarySubgroup_fromBlocks_commutator` (θ η : `(Matrix n n A)ˣ`, `∃ g ∈ elementarySubgroup (n ⊕ n) A`, `g = fromBlocks (θηθ⁻¹η⁻¹) 0 0 1`) is the statement of `whitehead_commutator_elementary`, up to the order of the conjunction. `Matrix.exists_mem_elementarySubgroup_fromBlocks_inv` gives diag(T,T⁻¹) through the three-factor product of 1.3. Both are now cited in the same Conventions sentence, which maps each one to its 1.3 target.

## H03 (mycaule) — applied

`Matrix.isPerfect_elementarySubgroup (h3 : 3 ≤ Fintype.card n) : Group.IsPerfect (elementarySubgroup n A)` has the hypothesis of `elementary_le_commutator`, which follows from it because Eₙ ≤ [Eₙ,Eₙ] ≤ [GLₙ,GLₙ]. The repair goes further than the citation. The README described perfectness in prose without naming Mathlib's predicate, so `Group.IsPerfect` (`Mathlib.GroupTheory.IsPerfect`, `commutator G = ⊤`) has been added in three places:
- the Mathlib supplier contract;
- the 1.3 prose ("because Eₙ(R) is perfect for n≥3" → "… is perfect (`Group.IsPerfect`) for n≥3");
- the 1.3 *Needs:* line ("1.1, 1.2." → "1.1, 1.2; Mathlib `commutator`, `Group.IsPerfect`.").

## H04 (mycaule) — answered

The carrier remark is correct at the pin:
- `Matrix.transvection` sits under `variable [CommRing R]` (`Mathlib/LinearAlgebra/Matrix/Transvection.lean:70`).
- `Matrix.GeneralLinearGroup.transvection` sits under `[CommRing R]` (`Mathlib/LinearAlgebra/Matrix/ElementaryRowOperations.lean:57,97`).

The README already recorded both facts in its Mathlib contract. The new Conventions sentence also says that the file does not treat GL∞, E∞ (1.2) or the lifting statements (1.4). The citation tool flagged `Mathlib.LinearAlgebra.Matrix.ElementaryRowOperations` in the README as found nowhere. That is a false positive: the module exists at the pin, at the path above.

## Adversarial pass on changed statements

| statement | instances | values | result | change |
|---|---|---|---|---|
| external `elementarySubgroup` = `elementary` | generators | `1 + single i j a`, i≠j, in both; units type `GeneralLinearGroup n R = (Matrix n n R)ˣ` (abbrev) | equal | none |
| commutator formula | convention; R=M₂(k), a=E₁₂, b=E₂₁ | Mathlib `commutatorElement` = g₁g₂g₁⁻¹g₂⁻¹ = README's [x,y]; gives e₁₃(E₁₁) ≠ e₁₃(ba)=e₁₃(E₂₂) | consistent with 1.1 Check | none |
| perfectness ⇒ `elementary_le_commutator` | n=2, 𝔽₂ | E₂(𝔽₂)≅S₃, [S₃,S₃]=A₃≅ℤ/3 ≠ S₃, so not perfect; the hypothesis `3 ≤ card n` excludes it | consistent with 1.3 Check | none |
| fromBlocks_commutator vs `whitehead_commutator_elementary` | n empty | both sides are the 0×0 matrix; the identity matrix is in the subgroup | equal | none |
| `Group.IsPerfect` | trivial group; S₃ | commutator ⊤ = ⊤ holds; [S₃,S₃]=A₃ fails | the predicate means what the README claims | added to the contract |

Suggested.lean was not changed, so the elaborated signatures are unchanged; no new `#check` pass was needed. Ownership is not affected: the external file is not a roadmap and not a supplier, and it is cited only as a proof source.

## Build and gate

- `lake build TauCetiRoadmap.AlgebraicKTheory.Suggested`: Build completed successfully (8999 jobs). The only warnings are "declaration uses `sorry`".
- Gate: `gate AlgebraicKTheory: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`
- Depcheck: `depcheck: 204 roadmaps, 1481 edges, 0 problem(s)`. There is no UPWARD or CYCLE line.
- Commit: `ec223173 AlgebraicKTheory: review repairs (cite CC0 elementary-subgroup formalization, Group.IsPerfect for Whitehead perfectness)`. Not pushed.
