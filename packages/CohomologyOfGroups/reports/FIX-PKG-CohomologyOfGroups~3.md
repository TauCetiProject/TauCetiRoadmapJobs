# FIX-PKG-CohomologyOfGroups~3

Three findings of `REV-PKG-CohomologyOfGroups~2` settled, all P3: all three applied, none
disputed. All three are right: Tau Ceti, at the pin of `content/lake-manifest.json`, already has
declarations the README used or rebuilt without naming them. Each was opened in the pinned source
and elaborated with `#check` against the pins (see Checks). No statement of the roadmap changed. No
target was added or deleted, and no Lean declaration was added, deleted or renamed.
`Suggested.lean` changed in its module docstring only. The review's section for the human reviewers
lists no finding, and nothing was changed for it.

## F01 (P3) — applied

Changed: in the 6.8 route, *Needs* and Check `R = 1`, "(3.6)" → "Tau Ceti
`TauCeti.isZero_groupHomology_freeGroup` (`k = ℤ`, `n = 2`)". Layer 6 Dependencies: "Layers 1–4 and
3.6" → "Layers 1, 2 and 4; Tau Ceti's vanishing …". A contract bullet, a 3.6 clause and a Scope
clause were added, and "using the free groups of Layer 3" was deleted.

Evidence: the pinned theorem is `AlgebraicTopology/ClassifyingSpace/WedgeCircles.lean:259`,
`(S k : Type) [CommRing k] {n} (2 ≤ n) : IsZero (groupHomology (Rep.trivial k (FreeGroup S) k) n)`.

Why not the suggested "Layers 1–4": no Layer 6 *Needs* line names Layer 3 any more. Their inputs
are 6.1 (none), 6.2 (1.2, 6.1), 6.3 (1.2, 2.3), 6.5 (4.1, 4.3) and 6.9 (1.5).

Other places: 5.4 keeps "3.6". It uses `H•(ℤ, k) = Λ(k)` for `A` in `Type u` and every `k`, which
the pin (`Type` only, trivial coefficients) does not cover.

## F02 (P3) — applied

Changed: 4.4's "Prove that the Alexander–Whitney map … is one" → it is
`CategoryTheory.SimplicialObject.alexanderWhitney` after the linearized diagonal; prove that it lifts
`k ≅ k ⊗ k`. 5.1: the shuffle map is `SSet.shuffle`, equivariant by `SSet.shuffle_naturality`, with
its sign checked. Also updated: *Needs*, three contract bullets, Scope, the Layer 4–5 Dependencies
and the `Suggested.lean` docstring.

Evidence, at the pin:
- `SimplicialObject/AlexanderWhitney.lean:172`, with `_f` (`:206`), `_naturality` (`:222`) and
  `_coassoc` (`:313`).
- `SimplicialSet/Shuffle.lean:689`, with `shuffle_naturality` (`:753`) and the degree-0 and `(1, 1)`
  lemmas (`:716`, `:731`).
- `SimplicialSet/EilenbergZilber.lean:761`.

`Rep k G` has the instances needed: Mathlib's `MonoidalPreadditive` (`Rep/Basic.lean:730`) and
`HasColimits` (`:577`). An `example` that elaborates confirms this.

Sign, computed:
- `shuffle_f_one_one` sends `(1, g) ⊗ (1, h)` to `((1,1),(g,1),(g,h)) − ((1,1),(1,h),(g,h))`.
- Under `(x₀, x₁, x₂) ↦ [x₀⁻¹x₁|x₁⁻¹x₂]` this is `[(g,1)|(1,h)] − [(1,h)|(g,1)]`, 5.1's
  normalisation.
- That passage reproduces Mathlib's `d[x|y] = [y] − [xy] + [x]` (`inhomogeneousChains.d_single`).

Refinement: 5.1 gets the `G × H` homotopy equivalence from the comparison theorem. The shuffle map
is an equivariant map of projective resolutions that is the identity on vertices, so the
Eilenberg–Zilber homotopies need not be equivariant. `SSet.eilenbergZilberHomotopyEquiv` is cited
for the `k`-linear inverse.

Other places: the `Suggested.lean` docstring said "defined through the Eilenberg–Zilber shuffle
map". It now says that Tau Ceti has `SSet.shuffle` but not its transport to the standard
resolutions and to coinvariants. Grep: neither library has a cross product of group (co)homology.

## F03 (P3) — applied

Changed:
- Tau Ceti contract bullet added for `groupHomology.exists_map_subtype_eq` and
  `TauCeti.groupHomology.isZero_groupHomology_of_directed`. It records `[Nonempty ι]`,
  directedness, supremum `⊤`, and that injectivity comes from SchemeKTheoryOperations §6.7.
- `Rep.ofHom` added to the Mathlib line.

Evidence: `RepresentationTheory/Homological/GroupHomology/DirectedUnion.lean:113`, `:132`; Mathlib
`RepresentationTheory/Rep/Basic.lean:92`.

Other places: I compared mechanically every backticked library name of the Conventions and the
layers with the contracts. That also found `Monoid.Coprod.inl`, `Monoid.Coprod.inr` and `Nat.Prime`,
now listed under Mathlib. The Layer 5 Dependencies now name SchemeKTheoryOperations §6.7 for 5.4,
whose *Needs* already cited it. Only notation (`c_g`, `M_H`, …) and `Bool` are left over.

## Checks

- **Elaboration.** `lake env lean packages/CohomologyOfGroups/Suggested.lean` from the content
  repository: exit 0, nine warnings `declaration uses 'sorry'` (lines 84, 92, 107, 116, 145, 169, 183,
  200, 214), no error. No `TauCeti.*` module needed building.
- **Signatures.** I put `#check @name` for all 12 declarations in one scratch file and elaborated it
  once. A whitespace-normalised textual comparison with the worker's `signatures.md` finds all 12
  identical. Their binders are as in the README: `k G : Type u` in Layers 1–7, `Type` in 5.4, 6.8 and
  Layer 8, `2 ≤ n` in 3.6, `[H.FiniteIndex]` in 7.1 and `n ≠ 0` in 7.2. No binder was lost, and no
  signature changed.
- **New citations.** The same file `#check`s every newly cited pinned name, and all resolve. It
  also elaborates three examples:
  - `TauCeti.isZero_groupHomology_freeGroup S ℤ le_rfl` has the type 6.8 needs.
  - `SimplicialObject.alexanderWhitney` accepts `classifyingSpaceUniversalCover G ⋙ Rep.linearization k G`.
  - `SSet.shuffle` accepts the underlying simplicial sets with `ModuleCat.of k k`.
- **Dependency gate.** `gate --depcheck … --name CohomologyOfGroups --movable`:

      depcheck: 244 roadmaps, 2206 edges, 0 problem(s)

  No UPWARD, CYCLE or `moved:` line.
- **Citations.** `roadmaps resolve packages/CohomologyOfGroups/README.md`: no cross-roadmap
  citation and no Lean name found nowhere.
- **Shape.** No process words, machine paths or pull-request numbers in the edited text. No
  source was added, so `sources.toml`, `metadata.toml` and `design/plan.json` are unchanged and no
  gap is new.

## Adversarial pass (changed and added statements)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Contract, `isZero_groupHomology_freeGroup` | `S = ∅`; `S = Unit`; `n = 1`; `k = 0` | `H₂(1) = 0`; `H₂(ℤ, k) = 0`; `H₁(F_S, ℤ) = ℤ^{(S)} ≠ 0`, so `2 ≤ n` is needed; all `0` | true as stated | added |
| 6.8 route on the pin | LES `H₂(F) → H₂(G) → H₁(K) → H₁(F)` with `S : Type`, `k = ℤ` | `H₂(F, ℤ) = 0` makes `h` injective; image `ker(R/⁅F,R⁆ → F^ab) = (R ⊓ ⁅F,F⁆)/⁅F,R⁆` | same conclusion, universe matches `nonempty_groupHomology_two_addEquiv_hopf` (`S : Type`) | citation |
| 6.8 Check `R = 1` | `G = F` free on 2 letters | `H₂(F, ℤ) = 0`, `(1 ⊓ ⁅F,F⁆)/⁅F,1⁆ = 0` | agrees | citation |
| Layer 6 Dependencies | *Needs* of 6.1–6.9 | 1.2, 1.5, 2.3, 4.1, 4.3 and Layer 6; none in Layer 3 or 5 | "Layers 1, 2 and 4" | changed |
| Contract, directed unions | `ℚ = ⋃ (1/m!)ℤ`, `H₁`; `ι = ∅`, `G = 1`; `V₄ = ⟨a⟩ ∪ ⟨b⟩` (not directed) | the statement gives only surjectivity onto `H₁(ℚ, ℤ) = ℚ`, injectivity is not claimed; `H₀(1, A) = A ≠ 0` while the hypothesis is vacuous, so `Nonempty` is needed; `H₂(ℤ/2, ℤ) = 0` each, `H₂(V₄, ℤ) = ℤ/2`, so directedness is needed | hypotheses as recorded | added |
| Contract, AW of simplicial objects | `n = 0`; `n = 1` | `(g₀) ⊗ (g₀)`; `(g₀)⊗(g₀,g₁) + (g₀,g₁)⊗(g₁)`: front `subinterval 0 p`, back `subinterval p (n−p)` | same formula as 4.4 | added |
| 4.4 diagonal lifts `k ≅ k ⊗ k` | degree 0; equivariance; `G = 1` | `ε⊗ε((g₀)⊗(g₀)) = 1 = ε(g₀)`; `h(g)` maps to `(hg)⊗(hg) = h·((g)⊗(g))`; `k → k⊗k`, `1 ↦ 1⊗1` | a diagonal approximation; the 4.4 Check excludes `(g) ↦ (g)⊗(g)` in degree `2n` | route |
| 5.1 shuffle sign | `x = (1,g)`, `y = (1,h)`; opposite sign | `[(g,1)|(1,h)] − [(1,h)|(g,1)]`; the reverse gives `−([g]×[h])`, which pairs to `−1` in 5.3's `ℤ × ℤ` Check | agrees with 5.1, 5.3 and Conventions | route |
| 5.1 equivariance and augmentation | `(g,h)` acting on `EG × EH`; degree 0 | `shuffle_naturality` with `f = g·`, `g′ = h·`; `(x, y) ↦ (x, y)`, `ε = 1` on both | comparison theorem applies | route |
| `Suggested.lean` docstring | grep of `RepresentationTheory` in both libraries for cross product, Künneth, shuffle | none for group (co)homology; `SSet.shuffle` and the singular cross product only | claim accurate | docstring |

## Ownership, sources, supplier order

- **Ownership.** No new target was introduced. The new citations are pinned library declarations,
  so ownership against open pull requests is unchanged. The worker's overlap tools report nothing
  for this roadmap.
- **Sources.** No source was added, fetched or requested, and `needs-references.toml` was not
  written.
- **Supplier order.** No roadmap was added as a supplier. SchemeKTheoryOperations §6.7 was already
  cited in 5.4's *Needs*.

## For the maintainer

- No name that another roadmap cites changed. Every declaration of `Suggested.lean` keeps its name
  and type.
- Layer 6 no longer depends on Layer 3. 6.8 now rests on Tau Ceti's free-group vanishing instead of
  on 3.6.
- No text read during the job asked for anything outside the job.
