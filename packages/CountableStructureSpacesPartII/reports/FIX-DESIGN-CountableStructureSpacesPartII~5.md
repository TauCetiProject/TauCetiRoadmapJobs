# FIX-DESIGN-CountableStructureSpacesPartII~5

Repair of the design (`packages/CountableStructureSpacesPartII/design/README.md`, `design/plan.json`)
against the three findings of review REV-DESIGN-CountableStructureSpacesPartII~4. All three were
verified as correct and applied. `sources.toml` is unchanged (no new source is cited).

## F01 (P2) — applied

Old (Convention 3): "Every reduction constructed in Layers 2 and 3 is continuous on the whole coding
space". New: the §2.3 and §§3.3–3.4 codings are continuous on their whole coding spaces. The §3.5
cover-graph reduction is Borel and not continuous, even on `treeClass`. Elsewhere, continuity is
claimed only where it is proved (§§1.3, 4.2 step 3, 6.3). §3.5 gains the moving-vertex Check, and
plan 3.13 gains the test `not_continuous`.

Verification: `T` is the star with root 0. `T_n` (n ≥ 2) puts `n` between `0` and `1`. Off `n` the
two orders are equal, so `T_n → T` coordinatewise. The pair `(0,1)` is a cover in `T` but in no `T_n`.
I checked this on ℕ truncated to 40 points for n = 2, 5, 10, 20, and confirmed that `T_5`
satisfies the tree axioms. Borelness still holds: each output coordinate is the indicator of a
closed set. Pattern search: every other continuity claim in the README (Summary, §§1.3, 2.3,
3.3, 3.4, 4.2, 6.3) is about a map that is proved continuous. No other overclaim was found.

## F02 (P2) — applied

Old: `χ_c` was defined only for `c ∈ graphClass`. New (§3.2, plan 3.3): it is defined for every
`Language.graph` code from the length, equality bits and ordered bits `c.eval (adjAtom a_i a_j)`,
and agrees with the old colour on `graphClass`. §§3.3–3.4 and plan 3.6, 3.10 and 3.11 now hold
for all codes, with reflection kept on `graphClass`. Four Checks were added.

Verification:
- `SameAtomicType` (Tau Ceti `ModelTheory/BackAndForth/AtomicType.lean:82`) tests `RelMap r (a ∘ f)`
  for every `f : Fin 2 → Fin n`, so for `Language.graph` it is exactly the equality matrix plus
  the ordered relation matrix, diagonal included.
- `IsSimpleGraph` (`Combinatorics/SimpleGraph/RelationalConfiguration.lean:97`) and the guarded
  `toSimpleGraph` (:108) confirm the reviewer's witness. The constant-true code fails the diagonal
  clause.

## F03 (P3) — applied

Old: §4.2 had no Checks for the step-3 packing map. New: three prose Checks.
- `unpair 0 = (0,0)` and `unpair 1 = (0,1)`, which pins the reading order.
- `unpair 2 = (1,0)`: the binary output is a constant bit.
- A code that is true at `(0,0)` and false at `(1,0)` is outside the image.

The `Nat.pair n k` recovery sentence is added, and plan 4.4 is aligned.

Verification: the pinned definitions (Mathlib `Data/Nat/Pairing.lean:37, :42`) give
`unpair 0..5 = (0,0),(0,1),(1,0),(1,1),(0,2),(1,2)` and `pair 1 0 = 2`. Also
`unpair (pair n k) = (n,k)` and `k ≤ pair n k` for all n, k < 30. A random source code packed at
m = 2 takes a single value on all 16 pairs from `{0..3}²`.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result; change |
| --- | --- | --- | --- |
| Convention 3 / §3.5 cover map | Star `T`, `T_n` for n = 2, 5, 10, 20 (truncated to 40 vertices) | `T_n` agrees with `T` on `[0,n)²`: T; cover(0,1) in `T_n`: F; in `T`: T; `T_5` reflexive, antisymmetric, transitive, least 0, chain down-sets: T,T,T,T,T | Not continuous; Borel (closed coordinate sets). Convention narrowed; Check added |
| §3.2 colour on all codes | constant-true at `[1]`; empty graph at `[1]`; root `[]` | `(1, ((T)), ((T)))` vs `(1, ((T)), ((F)))`; `[]`: `(0,(),())` for both | Defined off `graphClass`; length-1 independence only on `graphClass` (restricted) |
| §3.2 ordered bits | code with only `adjAtom 0 1`; edge `{0,1}`; nodes `[1/2,1]`, `[1,1/2]` | asym: adj matrices `((F,F),(T,F))` vs `((F,T),(F,F))` (differ); edge: `((F,T),(T,F))` both (agree) | Colour is ordered; Check added |
| §3.2 colour on `graphClass` | empty, edge at `[1]`, `[1/2]`, `[3/4]` | all `(1, ((T)), ((F)))` | Coincides with the old colour; old Checks (edge pairs, `[1,2]` vs `[1,1/2]`) unchanged |
| §3.2 `unravelColour_eq_iff` on all codes | `n = 2`, `Language.graph` atomic tests | tests = 4 equality bits + 4 ordered `adj` bits, the encoded data exactly | Holds for every code (no hypothesis needed) |
| §3.3 block order on all codes | constant-true code; any colour function | lexicographic sum of linear orders is linear: T; finite condensation sizes `χ+2` invariant; size for `(1,T,T)` never occurs for simple graphs (diagonal F) | Lands in `linearOrderClass`; reflection kept on `graphClass`; Check added |
| §3.3 continuity | comparison of `(x,i)`, `(y,j)` | reads `χ_c(x)`, `χ_c(y)`, each `≤ 2|x|²` coordinates | Continuous on whole space |
| §3.4 tagged tree on all codes | down-set of `(x, some m)`, m ≤ χ+1; leaf m > χ+1 | `|x|+1` prefixes + `m+1 ≤ χ+2` tags; leaf: 2 tags | Lands in `treeClass` for every colour; continuity: tag comparison reads `χ_c(x)` only |
| §3.4 constant-true Check | height above `([1], some 0)` | `χ+2` with `χ` encoding `(1,T,T)`, absent for simple graphs | Image isomorphic to no image of `graphClass` |
| §4.2 packing, m = 0, 1, 2 | `unpair 0,1,2`; reversed reading | `(0,0)`, `(0,1)`, `(1,0)`; reversed at m = 1: nullary `(0,1)` | Convention pinned; arity-2 output constant (16/16 pairs) |
| §4.2 injectivity | n, k < 30 | `unpair (pair n k) = (n,k)`, `k ≤ pair n k`: all T | Recovery sentence correct |
| §4.2 non-surjectivity | universal code with `R₂(0,0)=T`, `R₂(1,0)=F` | image codes have constant `R₂` | Not in image |

## Checks run

- Dependency check (the gate command of the brief), output:

  ```text
  candidate: CountableStructureSpacesPartII is not in the merge order yet; checked as if placed after NoncompactQuantumSymmetry (the intake inserts it when its design is accepted)
  depcheck: 223 roadmaps, 1967 edges, 0 problem(s)
  ```

  There are no UPWARD or CYCLE lines.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. The
  service did not check names outside TauCetiRoadmap. I checked the new library names by hand at
  the pins:
  - `SimpleGraph.eval_toRelationalConfiguration_adjAtom` (Tau Ceti
    `Combinatorics/SimpleGraph/RelationalConfiguration.lean:210`);
  - `RelationalConfiguration.adjAtom` (:73) and `SimpleGraph.range_toRelationalConfiguration` (:267);
  - `RelationalConfiguration.toStructure_relMap` (`ModelTheory/RelationalConfiguration/Structure.lean:42`);
  - `TauCeti.SameAtomicType` (`ModelTheory/BackAndForth/AtomicType.lean:82`);
  - Mathlib `Nat.pair`, `Nat.unpair`, `Nat.right_le_pair` and `Nat.unpair_right_le`
    (`Data/Nat/Pairing.lean:37, :42, :103, :108`).
- `plan.json` parses as JSON. Its formatting (indent 1, UTF-8) is preserved.
- `Suggested.lean`: this is the design stage and the package has no `Suggested.lean`. No `#check`
  elaboration was possible or needed, and no Lean name changed.

There were no gate failures to repair.

## Notes for the maintainer

- Ownership: no new object was introduced. The repaired objects are the colour, the block order,
  the tagged tree, the cover-graph reduction and the packing map, and all were already this
  roadmap's own. `roadmaps grep` for "unravel", "Borel complete", "cover graph" and the packing
  formula found no other owner. CountableModelCounting's "Borel complete invariant" is a different
  notion. The 210 open pull requests listed in the brief were covered by that index search.
- No name that other roadmaps cite changed. No section, layer or target id moved.
- The overlaps file lists no conflicting heads and no dropped ids.
- The unravelling lemma would also hold for all codes with the extended colour. It is deliberately
  kept on `graphClass`, the generality its consumers need, so the scope does not widen.
