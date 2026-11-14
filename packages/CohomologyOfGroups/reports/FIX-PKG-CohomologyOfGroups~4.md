# FIX-PKG-CohomologyOfGroups~4

This round settles the two findings of `REV-PKG-CohomologyOfGroups~3`. Both were right and both were
applied; none was disputed and none was marked not actionable.

- F01 added the headline forms the README promised but `Suggested.lean` did not state. These are
  the homological double coset formula and the stable element theorem in homology and in Tate
  cohomology. Each is now stated with `sorry` and elaborates at the pins.
- F02 named in 1.4 and 7.1 the two pinned constructions that those routes described only in words.

No existing statement or Lean name changed. The 12 old declarations have the same elaborated types
as before. Seven declarations were added: four definitions and three theorems. The review's
section for the human reviewers lists no finding, and nothing was changed because of it.

## F01 (P2) — applied

Changed: `Suggested.lean` gains `conjCores` (Layer 1), plus `doubleCosetTermHomology` and
`transfer_comp_cores_eq_finsum` (7.1). It also gains `IsHomologyStableClass` with
`bijOn_cores_sylow_isHomologyStableClass`, and `IsTateStableClass` with
`bijOn_tateRes_sylow_isTateStableClass` (7.2). The module docstring and the four imports were
updated to match. The README defines each name with its API and Checks.

Evidence and decisions:
- **Homological double coset formula.** It is the reviewer's tested signature, with the
  definitions renamed.
  - `conjPush` became `conjCores`, the homological counterpart of `conjRes`. It is the pair
    `(b ↦ g⁻¹β(b)g, m ↦ g⁻¹·m)`, which is `cor ∘ c_{g⁻¹}`.
  - `homDoubleCosetTerm` became `doubleCosetTermHomology`.
  - The theorem keeps `[CommRing k]`, any `G`, `[H.FiniteIndex]`, any `K`, `M`, `n`, and `r` with
    `hr`. That is the generality of README 7.1.
- **Homological stability (`IsHomologyStableClass`).** For every `g`, it asks that
  `tr^P_{P∩gPg⁻¹} z` equal `c_g(tr^P_{P∩g⁻¹Pg} z)`. Both intersections are subgroups of `P`. Both
  classes are read in `Hₙ(P ⊓ gPg⁻¹, M)` through `conjCores`, with the elements `1` and `g⁻¹`:
  - `conjCores` with `1` is an isomorphism, so nothing is lost by comparing there;
  - `conjCores` with `g⁻¹` from `P∩g⁻¹Pg` is `(y ↦ gyg⁻¹, m ↦ g·m)`, which is `c_g`.

  Transfer commutes with `c_g` (1.1 API), so this is the README's condition
  `tr^P_{P∩gPg⁻¹} z = tr^{gPg⁻¹}_{P∩gPg⁻¹}(c_g z)`.
- **Tate stability (`IsTateStableClass`).** It uses `TauCeti.TateCohomology.res` to `P∩gPg⁻¹` and
  to `P∩g⁻¹Pg`. They are compared by `TauCeti.TateCohomology.map`, for the inline `MulEquiv`
  `y ↦ gyg⁻¹` and `φ = ρ(g)`.
  - Through `map_comp_isoGroupCohomology_hom` and `map_comp_isoGroupHomology_hom`, this map is
    `c_g` of the Conventions in both ranges of degrees.
  - Subgroups carry `Subgroup.fintypeOfFinite`, the structure `TauCeti.TateCohomology.res` itself
    uses. It is installed by `attribute [local instance]` in a section around the two Tate
    declarations; this is not a `set_option`.
- **Degrees.** The homological theorem keeps `n ≠ 0`: in degree 0, all of `H₀(A₃, ℤ) = ℤ` is
  stable, but `H₀(S₃, ℤ)(3) = 0`. The Tate theorem holds for every `n : ℤ`.
- **No padding.** All three theorems are clauses of README 7.1–7.2. The README's opening lists 7.1
  and 7.2 among the end theorems.
- **Proof route.** The 7.2 route now covers homology through
  `TauCeti.groupHomology.transfer_comp_map_subtype_id` and 7.1's homological formula. For Tate
  cohomology:
  - degrees `≥ 1` and `≤ −2` reduce to the ordinary clauses;
  - degrees `0` and `−1` follow by dimension shifting (`Rep.dimensionShiftDown`,
    `Rep.dimensionShiftUp`), with `TauCeti.TateCohomology.δ_comp_res` and `δ_comp_map`.
- **Citations.** In 7.2's *Needs* and in the Layer 7 Dependencies, "ClassFieldTheory Layer 0 (Tate
  restriction and corestriction)" became the pinned `TauCeti.TateCohomology.res` / `cor` /
  `res_comp_cor`. ClassFieldTheory Layer 0 is still cited by Layer 8.

Other places changed for the same pattern:
- the 1.1 API bullet now says that `c_g` commutes with Tate restriction in every degree;
- 1.1's *Needs* adds `TauCeti.TateCohomology.res`;
- the Tau Ceti contracts gain `TauCeti.TateCohomology.res`, `cor`, `res_comp_cor`, `δ_comp_res`,
  `δ_comp_map`, `Subgroup.fintypeOfFinite` and `Rep.dimensionShiftDown`.

## F02 (P3) — applied

Changed:
- 1.4 route: "the projection formula for `Ind_H^G`" → `TauCeti.indProjection` with `X = k_χ`,
  `Y = M` (`TauCeti.indResProjection` is the trivial-character case).
- 7.1's homological route: "decomposes over `H\G/K`" → `Rep.mackeyDecomposition` with `H` and `K`
  interchanged, natural by `Rep.mackeyDecompositionNatIso`.

*Needs* lines, contracts, Scope and Dependencies were updated to match.

Evidence at the pin:
- `RepresentationTheory/Induction/Projection.lean:196`: `Rep.ind φ (X ⊗ Rep.res φ Y) ≅ Rep.ind φ X ⊗ Y`.
  The generator rule is `⟦h ⊗ (x ⊗ y)⟧ ↦ ⟦h ⊗ x⟧ ⊗ ρ(h⁻¹)y` (`:202`).
- `RepresentationTheory/Induction/Mackey/Decomposition.lean:392` and `:425`, for arbitrary
  subgroups with no finiteness hypothesis.

Other places changed for the same pattern:
- **7.1's cohomological route.** It also said only "the restriction to `K` of `Coind_H^G M`
  decomposes". It now uses Mathlib `Rep.indCoindIso` (`RepresentationTheory/FiniteIndex.lean`,
  which needs `[S.FiniteIndex]`) to pass to `Ind_H^G Res M`, then `Rep.mackeyDecomposition`. Each
  summand `Ind_{K∩gHg⁻¹}^K` is coinduced again, since `K∩gHg⁻¹` has finite index in `K`.
- **1.4's cohomological dual.** It named only `Hom_k(k[G⧸H], M) ≅ Coind_H^G M`, which is the
  trivial-character case. It now states, as a route step, the general form
  `Hom_k(Ind_H^G X, M) ≅ Coind_H^G Hom_k(X, Res M)`, `F ↦ (g ↦ (x ↦ g·F(⟦g ⊗ x⟧)))`, for every
  `H`. Neither library declares it: a grep of both for an induced/internal-hom isomorphism found
  none. Tau Ceti's `TauCeti.coindProjection` is the covariant form `Hom(Y, Coind X)` and does not
  give it.
  - I checked it against Mathlib's conventions: `x` acts on `Ind` by `⟦g ⊗ a⟧ ↦ ⟦gx⁻¹ ⊗ a⟧`, and
    `Coind` is `f(hg) = h·f(g)` with `(x·f)(g) = f(gx)`. Then `Φ(F)(hg) = h·Φ(F)(g)` and
    `Φ(x·F) = x·Φ(F)`.

## Checks

- **Elaboration.** `lake env lean packages/CohomologyOfGroups/Suggested.lean`, run from the content
  repository: exit 0. There are exactly 12 warnings `declaration uses 'sorry'` (lines 113, 121, 136,
  145, 174, 202, 226, 266, 325, 339, 356, 370) and no other warning or error. No `TauCeti.*` import
  of the file needed building.
  - For the citation check only, I ran `lake build TauCeti.RepresentationTheory.Induction.Mackey.Decomposition`.
    It succeeded; `Suggested.lean` does not import that module.
- **Signatures.** I put `#check @name` for all 19 declarations in one scratch file and elaborated it
  once.
  - Normalised textual comparison with the worker's `signatures.md`: all 12 old declarations are
    identical.
  - The 7 new ones carry their binders:
    - `conjCores`: `CommRing k`, `Group G`, `A`, `B`, `β`, `g`, `h`, `n`;
    - `doubleCosetTermHomology`: `[H.FiniteIndex]`;
    - `transfer_comp_cores_eq_finsum`: `H`, `K`, `[H.FiniteIndex]`, `M`, `n`, `r`, `hr`;
    - `IsHomologyStableClass`: `[Finite G]`;
    - `bijOn_cores_sylow_isHomologyStableClass`: `[Finite G]`, `[Fact p.Prime]`, `P : Sylow p G`,
      `n ≠ 0`;
    - `IsTateStableClass` and `bijOn_tateRes_sylow_isTateStableClass`: `[Fintype G]`, every
      `n : ℤ`.
  - Each new type matches its README statement.
- **New citations.** A scratch file `#check`s every newly cited pinned name, and all resolve:
  `Rep.indCoindIso`, `TauCeti.indProjection`, `Rep.mackeyDecomposition`,
  `Rep.mackeyDecompositionNatIso`, `TauCeti.TateCohomology.res` / `cor` / `res_comp_cor` /
  `δ_comp_res` / `δ_comp_map`, `Subgroup.fintypeOfFinite`, `Rep.dimensionShiftDown`,
  `TauCeti.groupHomology.map_comp_transfer`, `TauCeti.groupHomology.transfer_comp_map_subtype_id`,
  `TateCohomology.isoGroupCohomology` and `TateCohomology.isoGroupHomology`.
- **Dependency gate.** `gate --depcheck … --name CohomologyOfGroups --movable`:

      depcheck: 244 roadmaps, 2206 edges, 0 problem(s)

  There is no UPWARD, CYCLE or `moved:` line.
- **Citations.** `roadmaps resolve packages/CohomologyOfGroups/README.md`: no cross-roadmap citation
  and no Lean name was found nowhere.
- **README ↔ Lean.** Each of the 19 Lean names occurs backticked in the README. Each new backticked
  name of this roadmap's own is declared in `Suggested.lean`.
- **Shape.** The edited text has no process words, LaTeX delimiters, machine paths or pull-request
  numbers.
- **Unchanged files.** No source was added: Brown82, HS53, MilneCFT and Hutchinson13 are already in
  the manifest. `sources.toml`, `metadata.toml` and `design/plan.json` are unchanged, and no gap is
  new.

## Adversarial pass (added and changed statements)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `conjCores`, coefficient direction | `S₃`, `A = ⟨(12)⟩`, `β` the inclusion of `⟨(23)⟩`, `g = (123)`, `x = (23)` | `g⁻¹xg = (12)`; the model `m ↦ g·m` needs `g²x = xg²`, but `g²x(1) = 3` and `xg²(1) = 2` | `m ↦ g⁻¹·m` is the only equivariant choice; Lean proves equivariance | added, with a Check |
| `conjCores`, degree 0 | `g = (13)`, `M = ℤ³` permutation | `[e₁] ↦ [e₃]`; forgetting the coefficient: `[e₂] = [e₃]` in `M_{⟨(23)⟩}` but `[e₂] = [e₁] ≠ [e₃]` in `M_{⟨(12)⟩}` | the coefficient map is needed even for well-definedness | Check |
| `conjCores`, inner triviality | `G = A = ℤ/2` acting by sign on `ℤ`, `g` the generator | `[m] ↦ [−m] = [m]` in `M_G = ℤ/2` | identity, as 1.1 says | Check |
| `conjCores`, trivial source | `g = 1`, `B = 1` | degree 0: `m ↦ [m]`; `n > 0`: `Hₙ(1, M) = 0` | homological corestriction | Check |
| `transfer_comp_cores_eq_finsum` | `S₃`, `H = K = ⟨(12)⟩`, `ℤ`, `n = 0` | LHS `3`; terms: `g = 1` gives `1`, `g = (13)` (`K∩gHg⁻¹ = 1`) gives `2`; `1 + 2 = 3` | holds | Check |
| same | `n > 0`, same groups | the nontrivial term factors through `Hₙ(1) = 0`; LHS `tr ∘ cor` is the identity | holds | Check |
| same | `H = G` | one double coset; term `c_{g⁻¹} ∘ cor^G_K = cor^G_K`; LHS `cor^G_K` | holds | Check |
| same | `K = 1`, `n = 0` | RHS `Σ_{gH} [g⁻¹m]`; LHS `Σ_{Ht ∈ H\G} [tm]` (Tau Ceti `transfer_zero_H0π`) | `g⁻¹` runs over `H\G`: equal | Check |
| same | `k = 0`; infinite `G` with `[G : H] < ∞` | everything is 0; `K\G/H` is a quotient of `G/H`, so finite and `∑ᶠ` is a finite sum | holds | — |
| `doubleCosetTermHomology` independent of the representative | `kgh` versus `g` | the term of `kgh` is `c_{h⁻¹} ∘ term(g) ∘ c_{k⁻¹}`, and both conjugations are the identity | independent | API |
| `bijOn_cores_sylow_isHomologyStableClass` | `S₃`, `p = 3`, `ℤ`, `n = 1` | `H₁(A₃) = ℤ/3`, `c_{(12)} = −1`, stable `= 0`; `H₁(S₃)(3) = 0` | holds | Check |
| same | `S₃`, `p = 2`, `n = 1` | `P = ⟨(12)⟩`; `P∩gPg⁻¹ = 1` for `g ∉ P`, so all of `ℤ/2` is stable; `cor` maps it onto `S₃^ab = ℤ/2` | holds | — |
| same | `(ℤ/3)² ⋊ ℤ/2`, `p = 3`, `n = 2` | stable `= H₂(P)^{ℤ/2} = Λ²P = ℤ/3`; `H₂(G)(3) = ℤ/3` | holds | existing Check |
| same | `A₄`, `p = 2`, `𝔽₂`, `n = 1` | `ℤ/3` acts on `V₄ ⊗ 𝔽₂ = 𝔽₂²` without fixed nonzero vectors, so stable `= 0`; `H₁(A₄, 𝔽₂) = 0` | holds | — |
| same | `G = 1`; `n = 0` | all groups 0: `{0} → {0}`; for `n = 0`, `ℤ` is stable but `H₀(S₃)(3) = 0` | `n ≠ 0` is needed | Check |
| `bijOn_tateRes_sylow_isTateStableClass` | `G = P = ℤ/2`, `ℤ`, `n = 0` | `Ĥ⁰ = ℤ/2`, all stable, `res` bijective; ordinary `H⁰(G, ℤ)(2) = 0` | holds | Check |
| same | `S₃`, `p = 2`, `ℤ`, `n = 0` | `ℤ/6 → ℤ/2` is reduction mod 2; `{0, 3} ↦ {0, 1}` | bijective | Check |
| same | `S₃`, `p = 3`, `ℤ_sgn`, `n = 0` | `Ĥ⁰(A₃, ℤ_sgn) = ℤ/3`, `c_{(12)} = −1`, stable `= 0`; `Ĥ⁰(S₃, ℤ_sgn) = 0/0 = 0` | holds; without `φ = ρ(g)` it would be `ℤ/3` | Check |
| same | `S₃`, `p = 3`, `ℤ`, `n = 0` and `n = 2` | `n = 0`: `c_{(12)} = +1`, `{0, 2, 4} ↦ {0, 2, 1}`; `n = 2`: `c_{(12)} = −1`, stable `= 0 = H²(S₃)(3)` | holds; the sign depends on degree | Check |
| same | `G = 1`; `k = ℚ` | all Tate groups are 0 (killed by `|G|`, uniquely divisible) | holds | — |
| `IsTateStableClass` ↔ the other two (API) | `n ≥ 1`; `n ≤ −2` | `res` is `posRes` or `negSuccRes` (`res_ofNat_succ`, `res_negSucc_succ`); `map` is `groupCohomology.map` / `groupHomology.map` | the predicates agree | API |
| 1.4 projection-formula route | `H = G = C₂`, `k = ℤ`, `X = M = sgn` | `Ind(sgn ⊗ sgn) = triv = Ind(sgn) ⊗ sgn`; 3-cycle `h`: `ρ(h⁻¹)e₁ = e₃` (pinned rule) | the contract quotes the pinned generator rule | route |
| 1.4 dual isomorphism | `H = 1`; `X = k` | `Hom(k[G] ⊗ X, M) = Coind_1^G Hom(X, M) = Map(G, Hom(X, M))`; `X = k` gives `Hom(k[G⧸H], M) = Coind M` | consistent | route |
| 7.1 Mackey route | `S₃`, `H = K = C₂`, `k[S₃/C₂] = ℤ³` | `Res_K` splits as orbit modules of ranks 1 and 2 (two double cosets); `H = G`: one summand | consistent | route |
| Contract, `Rep.indCoindIso` | `S` of infinite index | not applicable: the contract records `[S.FiniteIndex]`, and 7.1 uses it only for `H` and `K∩gHg⁻¹` of finite index | hypothesis kept | contract |

## Ownership, sources, supplier order

- **Ownership.** The new Lean statements formalise clauses already planned in README 7.1–7.2;
  ownership is unchanged. `roadmaps grep -i 'stable[- ]element'` over main and the open heads finds
  only K3BlochGroups §5.2. That is the integral `ℤ_(r)` theorem, already a cited comparison in Scope.
  - The pins have no homological or Tate double coset formula and no stable-element theorem: a grep
    of `DoubleCoset` and `stable` under `RepresentationTheory/Homological` found only the continuous
    Mackey files and Sylow detection.
  - No new name is the fully qualified name of a declaration in a roadmap I can read; they live in
    `TauCetiRoadmap.CohomologyOfGroups`.
- **Sources.** No source was fetched or requested, and `needs-references.toml` was not written. The
  new docstrings cite only Brown82 Ch. III §§8–10 (uncertified, by locator), as 7.1–7.2 already do.
- **Supplier order.** No roadmap was added as a supplier. Every new input is a pinned Mathlib or
  Tau Ceti declaration.

## For the maintainer

- **New names.** Seven names that other roadmaps may cite are new: `conjCores`,
  `doubleCosetTermHomology`, `transfer_comp_cores_eq_finsum`, `IsHomologyStableClass`,
  `bijOn_cores_sylow_isHomologyStableClass`, `IsTateStableClass` and
  `bijOn_tateRes_sylow_isTateStableClass`. No existing name or signature changed.
- **ClassFieldTheory.** Layer 7 no longer cites ClassFieldTheory Layer 0; it uses Tau Ceti's Tate
  restriction and corestriction directly. Layer 8 still cites Layer 0.
- **Local instance.** `Suggested.lean` has one `attribute [local instance] Subgroup.fintypeOfFinite`,
  scoped to the section of the two Tate declarations. Without it the Tate restriction to a subgroup
  and the stable-class predicate would use different `Fintype` structures on that subgroup.
- **Untrusted text.** No text read during the job asked for anything outside the job.
