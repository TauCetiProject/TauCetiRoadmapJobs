# FIX-DESIGN-DimerModelsAndLozengeTilings~5

Repair of the design `DimerModelsAndLozengeTilings` against the one review of this round (one
finding). Files changed: `packages/DimerModelsAndLozengeTilings/design/README.md`,
`packages/DimerModelsAndLozengeTilings/design/plan.json`,
`packages/DimerModelsAndLozengeTilings/sources.toml`.

## F01 (P2) — applied

Verified at the Tau Ceti pin `2fd255d997f47c0b5d834ee416c7015d55444ce5` (equal to the plan
baseline and to `lake-manifest.json`):
`TauCeti/LinearAlgebra/Matrix/Determinant/ComplementaryMinor.lean:160`,
`Matrix.det_submatrix_comp_inr_eq_sign_mul_det_mul_det_submatrix_comp_inl_nonsing_inv`, over a
`CommRing`, with `IsUnit A.det`, a splitting `e : m ⊕ p ≃ n` and permutations `σ τ`. This is
Jacobi's complementary-minor identity in full generality. The old §3.3 duplicated it.

Old → new: §3.3 (generic cofactor identity, plan target `sum_perm_fixing_eq_det_mul_det_inv`)
deleted; §3.4 renumbered §3.3. Its route, and 8.4's, now reindex the restricted Leibniz sum
(defined once in Conventions) and apply the native theorem. The PadicMeasuresIwasawaAlgebras §6.4
supplier contract and plan supplier are deleted.

Every place the same construction appeared, and what changed:

- Summary: `(3.2, 3.4)` → `(3.2, 3.3)`.
- Scope and ownership: the compound-matrix/§6.4 bullet is replaced by a Tau Ceti bullet naming the
  native theorem. "Adjugates" is dropped from the Mathlib bullet, since nothing uses
  `Matrix.adjugate_apply` any more.
- Conventions: a new bullet, **Restricted Leibniz sums**. It covers the sign convention through
  the bijection `β`, the normal form as `sgn(σ₀)` times the complementary minor, the case `k = 0`,
  and a two-sided witness.
- Exact supplier contracts: the From Tau Ceti list gains the native theorem, with its hypotheses
  and how 3.3 and 8.4 instantiate it. It also records that the adjugate form
  `Matrix.det_mul_det_submatrix_adjugate` (`Jacobi.lean:54`) is not used. `Matrix.adjugate_apply`
  is dropped from the Mathlib list. The From Mathlib entry for `Matrix.inv` now notes that the
  inverse is `0` when the determinant is not a unit. The whole PadicMeasuresIwasawaAlgebras
  section is deleted.
- How to read the build: the formula now comes "from it and Tau Ceti's complementary-minor
  identity".
- §3.3 (formerly 3.4), route:
  - The event's weight is `ε ∏K(f_i,g_i) · Λ_K(f;g)`.
  - A repeated face gives an empty event and an equal row or column.
  - Otherwise the native theorem applies with the stated splitting, `τ = id` and `σ = β ∘ σ₀`.
  - *Needs:* `3.2, 3.3` → 3.2; Tau Ceti theorem; Mathlib `Matrix.det_apply`, `Matrix.inv`,
    `Equiv.Perm.sign`.
  - Locators now include kenyon2009 lines 564–565 (the Jacobi lemma remark) and kenyon1997
    lines 362–365 (the cofactor sentence), formerly cited by the old 3.3.
  - One normalisation Check is added.
- Layer 3 Dependencies: §6.4 → Tau Ceti's complementary-minor identity.
- 8.4:
  - "(sign as in 3.3)" → `c_{ab} = Λ_{K_{ab}}(u;v)`, with `σ` read as a permutation of the
    fundamental domain.
  - The route adds the application of the native theorem when `det K_{ab} ≠ 0`.
  - *Needs:* `3.3, 8.1, 8.3` → 8.1, 8.3; Tau Ceti theorem; Mathlib.
  - One Check is added: the singular twist on the 2 × 2 torus.
- Layer 8 Dependencies: "Layers 3 and 7" → "Layer 7; Tau Ceti's complementary-minor identity;
  Mathlib determinants and inverses". No 8.x target needs Layer 3 any more.
- Downstream consumers: "3.4, 9.3 and 9.7" → "3.3, 9.3 and 9.7".
- plan.json:
  - Target 3.3 is deleted and 3.4 becomes 3.3. Its prerequisites are as in the README, its
    locator gains the proof lines, and it gains one test.
  - 8.4's statement wording, prerequisites (`target:3.3` → the Tau Ceti theorem plus Mathlib) and
    one test change.
  - `suppliers` becomes `[]`.
- sources.toml: three `cited_for` strings are renumbered (`3.4` → `3.3` for kenyon2009,
  `3.3-3.4` → `3.3` for kenyon1997, `3.1-3.4` → `3.1-3.3` for gorin2021). No key, URL, hash or
  status changed.

On the renumbering: deleting §3.3 and keeping the gap would leave a stub. No roadmap cites this
roadmap's numbering. `roadmaps grep 'DimerModels' --fixed` reports no match on main or in any open
roadmap pull request. The four board packages that mention it (HardSphereDynamicsAndKineticLimits,
DynamicalDegreesOfRationalMaps, MathematicalBilliards, ConstructiveFieldTheoryPhi4) do so by
roadmap name only, in reports and a target file, never by a section number. So no old → new
mapping is needed, and none is written into the timeless README.

## Adversarial pass (new and changed statements)

Exact rational arithmetic, run from scratch scripts in the job directory (not in the repository).

| Statement | Instances tried | Values on the two sides | Result / change |
|---|---|---|---|
| Conventions: `Λ_A` normal form, `Λ = sgn(σ₀)·det(complementary minor)` | `A = [[1,2,0],[0,1,3],[4,0,1]]`, all 82 ordered selections of sizes 0–3 | normal-form value = restricted sum in 82/82 cases; `(0,2)→(1,0)`: 3 = 3 | holds |
| Conventions: `k = 0` | same `A` | `Λ = 25`, `det A = 25` | holds |
| Conventions: change of `β` | unit hexagon `K`, swap columns `B(0)`, `B(−e₃)` | `det`: 2 → −2; `Λ_K(W(0);B(0))`: 1 → −1; `det K·K⁻¹(B(0),W(0))`: 1 → −1 | same sign on both, as stated |
| Native identity in the 3.3/8.4 form `Λ = det A·det[(A⁻¹)(j_l,i_m)]` | same 82 selections; full reversed `(0,1,2)→(2,1,0)` | 0 mismatches; reversed: −1 = 25·(−1/25) | holds; the two `sgn σ` factors cancel as the contract says |
| Same, characteristic 2 and 3 | `A` mod 2, mod 3 (`det ≡ 1`) | mod 2: both 1; mod 3: both 0 | native theorem is over any `CommRing`, so no field or characteristic restriction is needed |
| Same, repeated row (outside the identity's hypothesis) | `(0,0)→(1,2)` | restricted sum (convention) 0; `det` with two equal columns 0 | the 3.3 route treats repeated faces separately; consistent |
| Contract paraphrase, degenerate splittings | `p` empty (`k = n`), `m` empty (`k = 0`) | `1 = det A·det A⁻¹`; `sgn σ sgn τ det A = sgn σ sgn τ det A` | paraphrase matches the Lean statement and its docstring |
| 3.3 route and formula | unit hexagon: one pair, two pairs, shared `B(0)`; weights `(2,3,5)` | brute 1/2 vs formula 1/2; 1/2 vs 1/2; 0 vs 0; `det = 60 = 2abc`, `P = 1/2` | holds |
| 3.3 new normalisation Check | pairs `W(0)–B(0)`, `W(−e₁)–B(−e₃)` | `Λ_K = 1`, `det K·det[[1/2,1/2],[−1/2,1/2]] = 1`; without `det K`: 1/2 | discriminates the `det K` factor |
| 3.3 `k = 0` | any tileable `R` | probability 1; empty product times empty det = 1 | holds (the empty region is excluded by the simple-connectivity hypothesis, which includes nonemptiness) |
| 8.4 with `c_{ab} = Λ` | tori 1×1 (unit; `(1,1,2)` with `K₁₁` singular), 1×2, 2×2 (unit; `(2,3,5)` with `K₀₀` singular), 2×3, 3×2 (`(1,2,3)` with `K₁₀` singular); all sets of 1 or 2 distinct lozenges (6, 6, 21, 78, 78, 171, 171) | formula equals brute-force enumeration in every case; whenever `det K_{ab} ≠ 0` and faces are distinct, `Λ = det K·det[K⁻¹ minor]` (asserted per case) | holds; complementary-minor convention necessary at singular twists |
| 8.4 new Check | 2×2, type-3 at `W(0)`: unit; `(2,3,5)` | unit: `c = (−1,1,1,3)`, `Σε c/18 = 1/3`, brute 1/3. `(2,3,5)`: `det K₀₀ = 0`, `c₀₀ = 60`, `Z = 1444`, formula 25/38, brute 25/38. With Mathlib's zero inverse: 275/361 | discriminates the convention |
| 8.5 cross-check of the new Check's determinants | eigenvalue products at `(2,3,5)` | `(0,1)`: 68·8 = 544; `(1,0)`: 58·18 = 1044; `(1,1)`: 26·50 = 1300; `(0,0)`: factor `5−3−2 = 0` | agrees with 8.5 |
| Mathlib contract: inverse of a matrix whose determinant is not a unit | `Matrix.nonsing_inv_apply_not_isUnit`, `Mathlib/LinearAlgebra/Matrix/NonsingularInverse.lean:173` | `A⁻¹ = 0` | as stated |

## Checks run

Dependency check (after the final edit):

```text
candidate: DimerModelsAndLozengeTilings is not in the merge order yet; checked as if placed after MathematicalBilliards (the intake inserts it when its design is accepted)
depcheck: 223 roadmaps, 1966 edges, 0 problem(s)
```

There is no UPWARD and no CYCLE line. The roadmap now consumes Mathlib and Tau Ceti only; it names
no other roadmap as a supplier.

`roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name found
nowhere. The tool notes it could not check pinned Lake names on its host, so I checked them by
hand at the pins:

- Tau Ceti `2fd255d`: the native theorem at `ComplementaryMinor.lean:160`, and
  `Matrix.det_mul_det_submatrix_adjugate` at `Jacobi.lean:54`.
- Mathlib `1b1ccf4`: `Matrix.det_apply` at `Determinant/Basic.lean:66`, the `Matrix.inv` instance
  at `NonsingularInverse.lean:167`, and `Equiv.Perm.sign` at `GroupTheory/Perm/Sign.lean:358`.

The three leads of the worker's citation file (`Matrix.compound_mul`, `Matrix.higherAdjugate`,
`Matrix.compound_mul_higherAdjugate`) are gone with the supplier section.

plan.json:

- It parses and round-trips with the original formatting.
- It has 51 targets, and every `target:` prerequisite exists and comes earlier.
- 19 definitions, each with at least 3 API entries and 3 tests; 159 tests in all.
- `gaps` is `[]` and `suppliers` is `[]`.

`Suggested.lean`: the design folder has none, so no Lean was elaborated and no `#check @name`
comparison was possible. The deleted plan name `sum_perm_fixing_eq_det_mul_det_inv` was never
backticked in the README.

No gate failures were listed for this round.

## Ownership

- Jacobi's complementary-minor identity is owned by Tau Ceti and cited by name. This roadmap owns
  only its application to Kasteleyn matrices, in the proof routes of 3.3 and 8.4.
- `roadmaps grep -i 'complementary.minor'` finds no open roadmap that owns it. On main,
  DiophantineApproximationAndTranscendence uses Plücker coordinates, PadicMeasuresIwasawaAlgebras
  has higher adjugates, SchurWeyl applies the Tau Ceti identity to Toeplitz matrices, and
  StandardDistributions uses a minor in a measure argument.
- The open pull requests were checked through the board tools (`roadmaps grep` at their heads). The
  overlap file lists no conflicting head, no dropped cited id and no revision-only id.

## For the maintainer

- PadicMeasuresIwasawaAlgebras is no longer a supplier of this roadmap (README and plan).
- Ids changed: §3.4 → §3.3, and the plan target name `sum_perm_fixing_eq_det_mul_det_inv` is
  deleted. No other roadmap cites either.
- No new sources and no `needs-references.toml` entries. No suspicious instructions were found in
  the review text.
