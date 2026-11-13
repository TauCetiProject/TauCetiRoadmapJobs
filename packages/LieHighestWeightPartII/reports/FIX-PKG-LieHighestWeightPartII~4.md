# Repair of LieHighestWeightPartII (package, round 4)

Findings settled: F01–F03 of the review `REV-PKG-LieHighestWeightPartII~3`. There is one review, so the ids are unqualified. Each finding was checked against the pinned Tau Ceti and Mathlib (lake manifest of the content checkout), the cached KIR and CH texts, and ReductiveGroups on main. All three findings are correct and all three are applied. Only `packages/LieHighestWeightPartII/README.md` is edited. `Suggested.lean`, `sources.toml` and `metadata.toml` are unchanged, and the plan's `gaps` list stays `[]`.

## F01 (P2) — applied

§1.2, API bullet on `ρ(e)`. Old: "a nonzero vector killed by `ρ(e)` has weight at least `0`". New: every nonzero `ρ(h)`-eigenvector killed by `ρ(e)` has a nonnegative integer eigenvalue. Also, `ker ρ(e)` is `ρ(h)`-stable (`ρ(e)ρ(h) = ρ(h)ρ(e) − 2ρ(e)`) and `ρ(h)` is diagonalizable, so `ker ρ(e) ⊆ ⨁_(j≥0) M_j`. New negative-control Check: `x = u + v₊` in `V(0) ⊕ V(1)`.

Pattern search: Scope (the native raising-map sentence, "kills no nonzero vector of negative integer weight") and the Tau Ceti contract (the kernel "meets the `μ`-eigenspace trivially") already speak of eigenvectors. Both are correct, and no other occurrence exists in the README or in `Suggested.lean`.

## F02 (P2) — applied

§5.4, the uniqueness clause of `IsPositiveRealPart`. Old: "a faithful comodule, whose matrix coefficients generate `H`". New: a faithful finitely generated `V` exists (ReductiveGroups Layer 1), and a point is fixed by its action on `V` (`TauCeti.Comodule.pointsAction_injective_of_isFaithful`). The coefficients generate `H` only together with their antipode images (`…isFaithful_iff_matrixCoefficientSubalgebra_sup_antipode_eq_top`). New `G_m` Check: `t` generates only `ℂ[t]`.

Both declarations were opened at the pin in `TauCeti/Algebra/AlgebraicGroup/Representation/Faithful/Basic.lean`, lines 311 and 321, and checked with `#check`. They are added to the Tau Ceti "Algebraic groups" contract, to §5.4 *Needs:* and to the Layer 5 Dependencies.

Pattern search: §5.3's last API bullet (subquotients of tensor powers of a faithful representation *and its dual*) already includes the dual. §0.2 uses a faithful representation only for nilpotence. The ReductiveGroups Layer 1 contract line ("faithful closed embeddings") makes no generation claim. None of these needed a change.

## F03 (P3) — applied

§2.1. Old: one paragraph combined the definition of `β_n`, four claims and their proofs. New: the definition paragraph now also gives the Gram matrix and the rescaling `w_0 ↦ c w_0` ⇒ `β_n ↦ c^(−2) β_n`. It is followed by an `API:` list with four bullets: invariance (with the `h/e/f` computations), nondegeneracy (determinant `1`), the transpose sign `(−1)^n` with its symmetric/alternating consequence, and proportionality consumed from `TauCeti.LieModule.exists_eq_smul_of_lieInvariant`. The four Checks are kept, and no Lean declaration was added. A scan of every subsection found that each one containing "Define" now has an `API:` list.

## Checks run

- `lake env lean packages/LieHighestWeightPartII/Suggested.lean`, run from the content checkout: exit 0. There are exactly eight `declaration uses sorry` warnings, at lines 75, 92, 106, 123, 146, 173, 193 and 240, and no other output. The file is unchanged this round.
- Signature audit: a scratch copy of `Suggested.lean`, extended with three already-built Tau Ceti imports and `#check @name` for all 13 declarations plus the newly cited `TauCeti.Comodule.pointsAction_injective_of_isFaithful`, `TauCeti.Comodule.isFaithful_iff_matrixCoefficientSubalgebra_sup_antipode_eq_top`, `TauCeti.iSup_eigenspace_toEnd_intCast_eq_top` and `TauCeti.Sl2Std.isIrreducible`, elaborated with exit 0.
  - Every elaborated type matches its README statement and no section binder is lost: `[IsAlgClosed K] [CharZero K]`, the finite-dimensionality hypotheses, `[LieAlgebra ℚ L]`, `Invertible 2`, `hline`, the zero-eigenspace hypothesis, `Type (max u_1 u_2)`, reductivity, semisimplicity and geometricity are all present.
  - Nothing changed, because no Lean statement changed.
  - The two newly cited faithful-comodule theorems take `k`, `H` and `V` in one universe, which holds for `H : FiniteTypeCommHopfAlgCat.{0, 0} ℂ`.
- Dependency check (`gate --depcheck … --movable`), output verbatim:

```
depcheck: 236 roadmaps, 2139 edges, 0 problem(s)
```

  There is no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README found no unresolved cross-roadmap citations and no unresolved Lean names.
- A scan of the added lines found no LaTeX delimiters and no process vocabulary.

## Gate failures

None were listed for this round.

## Adversarial pass (statements added or changed)

| Statement | Instances tried | Values computed on each side | Result / change |
|---|---|---|---|
| §1.2: a nonzero `ρ(h)`-eigenvector in `ker ρ(e)` has an eigenvalue in `ℕ` | `V(1)`; `V(2)`; adjoint `sl₂`; zero triple on `K²`; zero module | `V(1)`: `ρ(e)v₊ = 0` (weight 1), `ρ(e)v₋ = v₊ ≠ 0` (weight −1). `V(2)`: `e w_1 = 2w_0`, `e w_2 = 2w_1`, so the kernel is `K w_0`, weight 2. Adjoint: `ker ad E = K E`, weight 2. Zero triple: `ρ(e) = 0`, kernel `K² = M_0`, weight 0. Zero module: no nonzero vector. | Holds. |
| §1.2: `ker ρ(e)` is `ρ(h)`-stable | `V(1)`, test vector `v₋` | `ρ(e)ρ(h)v₋ = ρ(e)(−v₋) = −v₊`; `ρ(h)ρ(e)v₋ − 2ρ(e)v₋ = v₊ − 2v₊ = −v₊`. | Identity holds. |
| §1.2: `ker ρ(e) ⊆ ⨁_(j≥0) M_j`, and the kernel need not consist of eigenvectors | `V(0) ⊕ V(1)` with `x = u + v₊`; `V(1) ⊕ V(1)` with `v₊ + v₊'` | First: `ρ(e)x = 0`, `ρ(h)x = v₊`. `v₊ = μ(u + v₊)` needs `μ = 0` (coefficient of `u`) and `μ = 1` (coefficient of `v₊`), so `x` is not an eigenvector; `x ∈ M_0 ⊕ M_1`. Second: an eigenvector of weight 1, in `M_1`. | Containment holds; the old arbitrary-vector reading fails at `x`. New Check added. |
| §1.2: diagonalizability input | nonzero triple on a finite module; zero triple | `TauCeti.iSup_eigenspace_toEnd_intCast_eq_top` was printed at the pin: `IsSl2Triple`, `FiniteDimensional`, `CharZero` give `⨆ z, eigenspace z = ⊤`. Zero triple: `ρ(h) = 0`. | Both cases are covered, and the hypotheses are in §1.2's scope. |
| §2.1: definition and rescaling `w_0 ↦ c w_0` | `n = 0`, `c = 2`; `n = 1`, `c = 3` | `n = 0`: the new form has `β'(2w_0, 2w_0) = 1`, so `β'(w_0, w_0) = 1/4 = 2^(−2)`. `n = 1`: `β'(3w_0, 3w_1) = 1`, so `β'(w_0, w_1) = 1/9`. | The factor is `c^(−2)`. The first draft said `c²`, and this computation corrected it before submission. |
| §2.1: invariance | `n = 1` and `n = 2`, all three generators | `n = 1`, `h` at `(w_0, w_1)`: `h w_0 = w_0`, `h w_1 = −w_1`, so `β(w_0,w_1) − β(w_0,w_1) = 1 − 1 = 0`. `f` at `(w_0, w_0)`: `β(w_1,w_0) + β(w_0,w_1) = −1 + 1 = 0`. `e` at `(w_1, w_1)`: `β(w_0,w_1) + β(w_1,w_0) = 1 − 1 = 0`. `n = 2`, `e` at `(w_1, w_2)`: `β(2w_0, w_2) + β(w_1, 2w_1) = 2 − 2 = 0`. | Holds. The general `e`-term coefficient `k(n−k+1)` with `k = n+1−j` equals `j(n−j+1)`, verified algebraically. |
| §2.1: nondegeneracy, determinant 1 | `n = 0, 1, 2, 3` | Reversal signs `+, −, −, +` = `(−1)^(n(n+1)/2)`; entry products `1, −1, −1, 1`; determinants `1, 1, 1, 1`. | Holds for all `n`, by the identity `sign · product = ((−1)^(n(n+1)/2))² = 1`. |
| §2.1: transpose sign and parity | `n = 0, 1, 2, 3` | `β(w_(n−j), w_j)/β(w_j, w_(n−j)) = (−1)^(n−j)/(−1)^j = (−1)^n`: `+, −, +, −`. For odd `n`, `2j = n` is impossible, so the diagonal entries are 0; with `2` invertible, skew implies alternating. | Holds. |
| §2.1: proportionality | `n = 0`; `n = 2` trace form; `V(1)` identity form | `n = 0`: every form on the trivial `V(0)` is invariant and is `c·β_0`. `n = 2`: trace form `(−2, 2, −2) = −2·(1, −1, 1)`. Identity form on `V(1)`: `h`-invariance at `(w_0, w_0)` gives `2 ≠ 0`, so it is not invariant. Native hypotheses: algebraically closed (Conventions), finite-dimensional, irreducible (`TauCeti.Sl2Std.isIrreducible`, which needs `CharZero`), `β_n ≠ 0`. | Holds. |
| §5.4: uniqueness of `r` via a faithful comodule | `G_m` at `s = 2i`; `SL₂` at `diag(i, −i)`; trivial group; unipotent `u` | `G_m`: the coefficient `t` generates `ℂ[t] ∌ t⁻¹`; `t` and `S(t) = t⁻¹` generate `ℂ[t, t⁻¹]`; the predicate gives `r(t) = 2`, and on the dual `s` acts by `−i/2`, of absolute value `1/2 = r(t⁻¹)`. `SL₂`: the eigenspaces `e₁`, `e₂` (values `i`, `−i`) span, `r` acts by `1` on both, so `r = 1`. Trivial `H = ℂ`: the trivial comodule is faithful, and there is one point. `u`: the only eigenspace is `K e₁`, which does not span `K²`, so `r` is not fixed (the existing Check). | The repaired justification holds. The old one fails for `G_m`. New Check added. |
| §5.4: new supplier contract entries | pinned statements | Printed: `IsFaithful → Function.Injective (pointsAction V)`, and `IsFaithful ↔ coeffs ⊔ S(coeffs) = ⊤` for a finite basis. | They match the prose. |
| §5.3 last API bullet (pattern check) | `G_m`, faithful character `z` | The representation `z ↦ z^(−1)` is not a subquotient of tensor powers of `z` alone. It is a subquotient of tensor powers of `z` and its dual, as the bullet states. | Already correct; no change. |

## Ownership and overlaps

The edits introduce no new object. They only repair justifications and add an API list and Checks. The two newly cited declarations are Tau Ceti's at the pin, and their transport to rational representations is ReductiveGroups Layer 1 on main (its "dictionary and faithful representations" item, with the same `G_m` Check). The overlap report lists no open pull request that changes this roadmap, no dropped id and no id defined only by an open revision. The plan's `gaps` list stays empty, because no supplier gap is needed.

## Notes for the maintainer

- No Lean name changed, and `Suggested.lean` is byte-identical to the reviewed version. Roadmaps citing this package are unaffected.
- No source was fetched and `sources.toml` is unchanged: the only locator touched (KIR Theorem 5.6, equation (5.4), KIR line 2369) was already recorded. `needs-references.toml` was not written.
- No suspicious instructions were found in the review text.
