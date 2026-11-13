# FIX-PKG-LevelOneAutomorphicFormsForClassicalGroups~7

Repair of the five findings of `REV-PKG-LevelOneAutomorphicFormsForClassicalGroups~6`. All five were
verified against CT20, the pinned Tau Ceti, the supplier text of ModularityAndLanglandsExtensions §3.8
and ModularForms on main. All five are correct and applied. No target was added or deleted, no
section was renumbered, and no Lean declaration changed its name or type.

## F01 (P2) — applied

Verified: CT20 §5.1 (lines 1658–1673, pp. 40–41) gets Arthur's `ε_ψ` from the all-pairs `ε(i)` only
because same-type pairs have `ε = +1` by [Art13, Thm 1.5.3]. The supplier's §3.8 keeps only symplectic
adjoint constituents. So §3.2 uses the conditional half of §1.8.

Changes:
- Conventions: `§§3.3–3.16` → `§§3.2–3.16 (§3.2 uses that same-type root number)`.
- Layer 3 intro: `from §3.3 on` → `from §3.2 on`.
- §3.2: "Prove, under the standing premises, …", plus one sentence on why the two characters agree.
- §3.2 *Needs:* → `§1.8 (its same-type root number, with the standing premises), §3.1;
  ModularityAndLanglandsExtensions §3.8 with its standing premises`.

Pattern: the other uses of §1.8 are in scope or need no premises. §§2.5, 2.7 and 2.9 use only the
level-one root-number formula, and §2.9 says so. The Layer 3 Examples, §5.7, §5.9 and the Layer 5
Dependencies lie inside the premise scope. §3.1 is unchanged, because its type condition is a hypothesis.

## F02 (P3) — applied

Verified: on main, ModularForms Layer 3 is "fixed-character old and new spaces" and Layer 4 is
"primitive associates". Its table of earlier labels sends the old Layers 3–4 to Tau Ceti. Pinned:
- `CuspForm.peterssonInnerCosets` (`Petersson/FiniteIndex.lean`)
- `HeckeRing.GL2.exists_peterssonOrthonormalBasis_eigenformAwayFromLevel` (`Petersson/Eigenbasis.lean`)
- `HeckeRing.GL2.Newform`
- `HeckeRing.GL2.Newform.basis`
- `TauCeti.cuspFormsNew_one`
- `TauCeti.Gamma1_one_map_eq_SL`

Changes:
- Scope: the ModularForms deferral is dropped.
- "Already in the pinned libraries" lists the six names.
- "From Tau Ceti": a new bullet with each file and what is assumed. The Hecke-ring eigenvalues are
  not compared with the classical `T_n` there.
- The ModularForms contract bullet and its heading are removed.
- The §2.20 route and *Needs:* use `Newform.basis` and `cuspFormsNew_one`, with `Gamma1_one_map_eq_SL`
  to reach Mathlib's `𝒮ℒ`.
- The Layer 2 Dependencies line is updated.

## F03 (P3) — applied

`Suggested.lean`: `public import TauCeti.LinearAlgebra.IntegralLattice.Isometry.Group` →
`public import TauCeti.LinearAlgebra.IntegralLattice.Isometry.Basic`. The structure
`TauCeti.IntegralLattice.Isometry` is declared in `Isometry/Basic.lean`, and nothing from `Group.lean`
is used. The file elaborates as before (see Checks). The README contract still names the group
structure, which the roadmap itself consumes.

## F04 (P3) — applied

Verified: CT20 lines 1430–1431 (after Proposition 4.1, p. 35) give only `14 ≤ dim U ≤ 42` for the 181
parameters. The one element of `V` the README names has dimension 16.

Change: "Its dimension `14` is the minimum attained on `V`" → "Its dimension `14` equals the lower end
of the range `14 ≤ dim U ≤ 42` recorded for the elements of `V` (CT20 §4.1, after Proposition 4.1,
p. 35); the source states this bound only, not that some element of `V` attains it." No other claim
about `V` asserts that a bound is attained.

## F05 (P3) — applied

Verified: §1.3 pairs `SO_{2n+1}` (type `B_n`) with `x₁x_{2n+1} + ⋯ + x_{n+1}²`, but the
ReductiveGroups contract listed the forms in crossed order.

Changes:
- README contract: the forms are reordered as `x₁x_{2n+1} + ⋯ + x_nx_{n+2} + x_{n+1}²` (rank `2n + 1`)
  and `x₁x_{2n} + ⋯ + x_nx_{n+1}` (rank `2n`), with "respectively".
- `design/plan.json`, top-level `gaps` entry `split-orthogonal-regular-form`: the same reordering in
  its `needs`. The brief allows edits to that list, so the plan no longer disagrees with the README.
  Slug, supplier and section are unchanged.

The other pairings (§1.3, §4.7 Checks, Conventions) were already correct.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| §3.2 `E_i` = Arthur's `ε_ψ` (now conditional) | `Sym²Δ₁₁[3] ⊕ Δ₁₁[8] ⊕ [3] ⊕ [1]` (`g = 14`); `Δ₁₇[8] ⊕ [9] ⊕ [7] ⊕ [1]`; `Δ_w[2] ⊕ [1]` | orth×orth `(Sym²Δ₁₁, 1)`: `L = I₂₂ + e`, `ε = i²³·i = 1`, exponents `3, 1`; `(1, 1)`: `ε(1) = 1`, exponents `7, 1, 1`; symp×symp pairs have even `min(d_i, d_j)`; `Δ_w × 1`: `i^{w+1}` | only orth×orth pairs carry an odd exponent with the same type; each gives `+1`, as the conditional half of §1.8 says; agrees with Arthur's character |
| §3.2 `C_ψ` | `[2g+1]`; three odd blocks | order `2^{0} = 1`; `2^{2} = 4`, `(s₁s₂)(s₂s₃) = s₁s₃` | unchanged, holds |
| §2.20 count via `Newform.basis` | `w = 11, 23, 53`; even `w`; `w + 1 < 12` | `dim S₁₂ = 1`, `S₂₄ = 2`, `S₅₄ = dim M₄₂ = 4`, the number of newforms; odd weight `w + 1`: `−I ∈ Γ₁(1)` gives `S = 0`, no newforms; `S_k = 0` for `k < 12` gives an empty index type | holds |
| "Hecke operators prime to `N`" at `N = 1` | every prime | `gcd(p, 1) = 1` for all `p` | all Hecke operators, as stated |
| `TauCeti.Gamma1_one_map_eq_SL` bridge | `Γ₁(1)` | `Γ₁(1) = ⊤`; `⊤.map f = f.range = 𝒮ℒ` (elaborated type above) | holds |
| F05 contract, `n = 1, 2` | `B₁, D₁, B₂, D₂` | `x₁x₃ + x₂²`: polar det `−2`, rank 3 (`SO₃`); `x₁x₂`: det `−1`, rank 2; `x₁x₅ + x₂x₄ + x₃²`: rank 5; `x₁x₄ + x₂x₃`: rank 4 | the pairing agrees with §1.3 |
| §5.4 Check (F04) | `U_exc`; `A` of §5.8 | `dim U_exc = 2·7 = 14`; `dim A = 16`; the source bound is `14 ≤ dim U ≤ 42` | the reworded Check makes no attainment claim |
| Conventions premise list | §§2.5, 2.7, 2.9, 3.1; Layer 3 Examples, §§5.7, 5.9 | the first three use only `ε(L(π∞)L(π′∞))`; §3.1 takes the type as a hypothesis; the rest lie in scope | no other section changes scope |

## Checks

- `lake env lean packages/LevelOneAutomorphicFormsForClassicalGroups/Suggested.lean`, run from the
  content checkout: exit 0. The only messages are four `declaration uses 'sorry'` warnings, at lines
  85, 129, 142 and 154. No Tau Ceti module had to be built (`Isometry/Basic.olean` is present).
- `#check @name` for all eight declarations, in one scratch file with the same header: exit 0. Every
  elaborated type is identical to the one in the supplied signature list and agrees with its README
  statement; no binder was lost and none changed.
- The six newly cited Tau Ceti names were checked with `#check` against the pinned modules: all
  resolve, with the types described in the README.
- Dependency gate (`gate --depcheck … --movable`):

```text
depcheck: 208 roadmaps, 1912 edges, 0 problem(s)
```

  There are no UPWARD, CYCLE or moved lines.
- `roadmaps resolve` on the README found no cross-roadmap citation and no Lean name missing. The tool
  did not check names outside the roadmap repository; those were checked by `#check`, as above.

## Notes for the maintainer

- ModularForms is no longer a supplier of this roadmap. What it was cited for is now cited from pinned
  Tau Ceti. Nothing in ModularForms needs to change.
- `design/plan.json` changed only in the `needs` string of the existing gap
  `split-orthogonal-regular-form` (the form order). Slug, supplier and section are unchanged.
- No section number, target or Lean name that other roadmaps cite was changed. SiegelModularForms
  still cites §§6.1–6.2, 6.4, 6.7, 7.3 and 7.9, all unchanged.
- Ownership: this round adds no construction or target. It replaces one supplier citation with the
  pinned Tau Ceti declarations, so no new ownership question arises.
- No source was fetched and `sources.toml` is unchanged. Every locator cited is in CT20, which the
  manifest already records.
- No suspicious instructions were found in the review text.
