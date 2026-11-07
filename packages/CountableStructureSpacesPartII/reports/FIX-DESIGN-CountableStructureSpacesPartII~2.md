# Repair report: FIX-DESIGN-CountableStructureSpacesPartII~2

Review resolved: `REV-DESIGN-CountableStructureSpacesPartII` (one P2, nine P3). Files edited:
`packages/CountableStructureSpacesPartII/design/README.md`,
`packages/CountableStructureSpacesPartII/design/plan.json`,
`packages/CountableStructureSpacesPartII/sources.toml`. No `Suggested.lean` exists at the design
stage, so no Lean statement changed and no elaboration was run. No target was added, deleted or
renamed; no layer was reorganised.

## REV-DESIGN-CountableStructureSpacesPartII/F01 (P2) — applied

Verified: `graphLanguage L` (InfinitaryModelExistence Layer 6, README line 611) has one `base R`
symbol per relation symbol and one `graph f` symbol per function symbol, so for relational `L` the
graph-code map is the base coding composed with a symbol relabelling and its range is the whole
space, which is closed. README 1.3, second bullet: "a Gδ set that is not closed" → "a Gδ set
(totality a countable intersection of open conditions, functionality closed), not closed when `L`
has at least one function symbol and the whole coding space when `L` is relational". The third
Check of 1.3 now records the closed range of the relational case. plan.json 1.5 statement and its
`relational_case` test changed the same way.

## REV-DESIGN-CountableStructureSpacesPartII/F02 (P3) — applied

Verified: in the block of `[]` the indices `≥ χ_c([]) + 2` form a copy of `ω`, any two of its points
bound a finite interval, and no point outside it joins it (a point of the finite part is separated
by the tail of `ω`, a point of another block by infinitely many blocks); so the `ω`-parts are
condensation classes, infinite ones. README 3.3 proof: "the finite condensation classes ... are
exactly the final finite parts" → "the condensation classes are the `ω`-parts (infinite) and the
final finite parts of size `χ_c(x) + 2`; the finite classes are exactly the final finite parts; an
isomorphism maps finite classes to finite classes of the same size, in order". plan.json 3.6 was
already correct and is unchanged.

## REV-DESIGN-CountableStructureSpacesPartII/F03 (P3) — applied

Verified: `2 ^ ℵ₁ = 2 ^ ℵ₀` is consistent with ZFC, so the old sentence was not a theorem for
"uncountably many". The base's σ-algebra on `StructureSpaceOn L α` is `MeasurableSpace.pi`
(CountableStructureSpaces Suggested.lean line 59, no countability hypothesis), the product
σ-algebra; every set measurable for a product σ-algebra depends on countably many coordinates, so
singletons of an uncountable product are not measurable, while a standard Borel space has
measurable singletons (Polish T2 topology with `BorelSpace`, Mathlib
`OpensMeasurableSpace.toMeasurableSingletonClass`, `Mathlib/MeasureTheory/Constructions/BorelSpace/Basic.lean`
line 351). The reviewer's second option was taken, keeping "uncountably many": README 4.1 third
Check and plan.json 4.1 test `uncountable_language` now argue by non-measurability of singletons
and note that cardinality does not decide the question. (The first option would have been wrong
had the base used the Borel σ-algebra of the product topology, in which singletons are closed; it
is right for `MeasurableSpace.pi`.)

## REV-DESIGN-CountableStructureSpacesPartII/F04 (P3) — applied

README Layer 5: added `### Examples` before `### Dependencies`, naming `graphClass` (all five
characterisations hold), the empty class and the one-unary-predicate class (all five fail). All
seven layers now end with `### Examples` and `### Dependencies`.

## REV-DESIGN-CountableStructureSpacesPartII/F05 (P3) — applied

Verified: becker-kechris-bams lines 159–164 state the logic action as relabelling `g·x = y ⇔
y_i(s) = x_i(g⁻¹ s)`; montalban-cst1 lines 4623–4654 attach flags and connectors to coded vertices
and keep them apart from the coded relation by cycle lengths. README 1.1: added "(own
construction; the relabelling form of the logic action is becker-kechris-bams lines 159–164)".
README 2.2: "Prove:" → "Prove (own construction; gadgets attached to vertices to distinguish the
coded vertices, kept apart from the coded relation by the lengths of the cycles they create:
montalban-cst1 Theorem VI.27, lines 4623–4654):". plan.json 1.1 and 2.3 already carried these
locators.

## REV-DESIGN-CountableStructureSpacesPartII/F06 (P3) — applied

Verified: montalban-cst2 lines 9046–9054 argue Σ¹₁-completeness and unbounded Scott rank, not
smoothness. plan.json 6.7 locator: montalban-cst2 lines 9046–9054 → camerlo-gao-boolean lines
94–100 with BorelEquivalenceRelations §5.4 `not_isSmooth_of_borelReducible_eZero`, matching README
6.3. sources.toml: "6.7" moved from the `cited_for` of montalban-cst2 to that of camerlo-gao-boolean.
plan.json 6.9 keeps lines 9046–9054 (bounded Scott rank classes are not on top), which that
passage does support.

## REV-DESIGN-CountableStructureSpacesPartII/F07 (P3) — applied

Verified: camerlo-gao-boolean lines 257–263 define rooted binary trees (clause (iii): at most two
children), lines 276–281 identify them with subtrees of `2^{<ℕ}`. README 3.5: "rooted trees as
partial orders: camerlo-gao-boolean lines 257–263" → "the binary case, rooted binary trees as
partial orders and as subtrees of `2^{<ℕ}`: camerlo-gao-boolean lines 257–263 and 276–281;
`treeClass` and the trees of `Descriptive.tree ℕ` are the roadmap's own reading". plan.json 3.9
and 3.12 `where` fields say "rooted binary trees ... the binary case".

## REV-DESIGN-CountableStructureSpacesPartII/F08 (P3) — applied

Verified at the pin: `abbrev ToType (o : Ordinal.{u}) : Type u` at
`Mathlib/SetTheory/Ordinal/Basic.lean` line 632; no `Ordinal.toType`. README From Mathlib list:
`Ordinal.toType` → `Ordinal.ToType`. The name occurs nowhere else in the package.

## REV-DESIGN-CountableStructureSpacesPartII/F09 (P3) — applied

README: the section "Motivation for a future roadmap" (after Downstream consumers) is deleted;
its locators (camerlo-gao-boolean Theorem 1 line 405 and line 555; mekler-1981 §2;
friedman-stanley-1989 §3, §4; paolini-shelah-tfab lines 169–171 and 103–106; montalban-cst2
Lemma XI.2 lines 8946–8980; hjorth-kechris-1996 §4–§5) now sit in the last paragraph of Scope and
ownership, which names the owning roadmap (on the Borel completeness of algebraic classes) and
what it consumes. Downstream consumers no longer says "see the closing section". plan.json
`consumers`: "a future roadmap on ..." → "a roadmap on ..." (both entries). sources.toml:
`cited_for` tags "future-roadmap motivation: X" → "Scope and ownership: X" (six entries).

## REV-DESIGN-CountableStructureSpacesPartII/F10 (P3) — applied

Verified: Mathlib `AnalyticSet.measurableSet_of_compl` (`Polish/Basic.lean` line 523) needs the
set and its complement analytic in one T2 space; the subtype topology on a Borel `K` need not be
Polish. README 6.2 third consequence: "The set of non-isomorphic pairs in `K × K` is not analytic"
→ "the set `{p ∈ K ×ˢ K | ¬ p.1 ≅ p.2}` is not an analytic subset of
`StructureSpace L × StructureSpace L`", with the route: its complement is the union of the
analytic set `iso ∩ (K ×ˢ K)` and the Borel set `(K ×ˢ K)ᶜ`, Suslin makes both Borel, and the
preimage under the measurable inclusion `K × K → StructureSpace L × StructureSpace L` contradicts
the theorem. plan.json 6.4 statement changed the same way. The standing hypothesis of the
consequence list (`K` invariant Borel, `BorelComplete K`) is unchanged.

## Checks

**Dependency check.** Output of the gate command on the edited README:

```
candidate: CountableStructureSpacesPartII is not in the merge order yet; checked as if placed after NoncompactQuantumSymmetry (the intake inserts it when its design is accepted)
depcheck: 236 roadmaps, 2181 edges, 0 problem(s)
```

No UPWARD or CYCLE line. No supplier was added or removed.

**Citations.** `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name
found nowhere. The two leads of the worker's `citations.md` were checked by hand and both exist:
`StructureSpaceOn.ofStructure` at the base's open head (`TauCetiRoadmap/CountableStructureSpaces/Suggested.lean`
line 104) and `HasCantorAntichainOn.continuum_le_mk_quotient` on main
(`TauCetiRoadmap/BorelEquivalenceRelations/Suggested.lean` line 177).

**Form.** plan.json parses; sources.toml parses; every layer ends with `### Examples` and
`### Dependencies` (7 and 7); no "future", "closing section", "deferred" or "optional" in the
three files. No new target, no new supplier, no gap: `gaps = []` stays.

**Gate failures listed in the brief.** None.

**Ownership against open work.** No new construction was introduced, so no new ownership search
was needed; the review's search over main and the 455 open heads stands.

## Adversarial pass on the changed statements

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 1.3 range of the graph-code map | `L` = one constant `k`; `L` = one unary `f`; `L = Language.graph` | constant: codes `c_n` with `G_k = {n}` have each coordinate eventually `false`, limit all-false, totality fails; unary: tables `F_n(v) = n` for all `v`, same limit; relational: table empty, range = whole space | not closed iff `L` has a function symbol; Gδ in all cases (totality `⋂_v ⋃_y`, functionality closed) | F01 applied |
| 3.3 condensation classes | block of `[]`; `x < y` in `List ℚ` | `ω`-part of `[]`: pairwise finite intervals, maximal (finite part separated by the tail of `ω`), infinite; finite part: size `χ_c([]) + 2`; between blocks `x`, `y` infinitely many blocks (density) | finite classes = final finite parts; infinite classes = `ω`-parts | F02 applied |
| 4.1 uncountable language | `κ = ℵ₁` unary symbols; `κ = 𝔠` | `MeasurableSpace.pi` on `RelQueryOn L ℕ → Bool`; `{x}` depends on all `κ` coordinates, not measurable; standard Borel ⇒ singletons measurable; `2 ^ ℵ₁` vs `𝔠` undecided, `2 ^ 𝔠 > 𝔠` | not standard Borel for every uncountable `κ`, by singletons | F03 applied |
| 6.2 non-analytic pairs | `K` Borel not Gδ (subtype not Polish); `K = Set.univ` | complement in the ambient square = `(iso ∩ K ×ˢ K) ∪ (K ×ˢ K)ᶜ`, analytic ∪ Borel; Suslin ⇒ Borel; preimage under `Prod.map coe coe` measurable for the product of subtype σ-algebras | contradicts the main statement; ambient space now named | F10 applied |
| 2.2 locator | montalban-cst1 4623–4654 | flags (4632–4640), connectors (4641–4650), cycle-length separation (4651–4654) | supports "gadgets distinguishing coded vertices"; the roadmap's clique tags differ, stated as own construction | F05 applied |
| 3.5 locator | camerlo-gao-boolean 257–263, 276–281 | clause (iii) line 263: at most two children; line 276: subtrees of `2^{<ℕ}` | binary only; cited as the binary case | F07 applied |

## For the maintainer

- No name another roadmap cites changed; no supplier contract changed; the merge-order placement
  is unaffected.
- The deleted README section's content now lives in Scope and ownership; the roadmap on the Borel
  completeness of algebraic classes it names does not exist yet and is not a supplier or a gap of
  this roadmap (nothing here depends on it).
- No source was fetched or requested; no `needs-references.toml` was written.
