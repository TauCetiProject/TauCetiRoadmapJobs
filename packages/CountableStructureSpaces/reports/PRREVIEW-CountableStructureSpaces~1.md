# Review of CountableStructureSpaces (pull request #1316 at bcfbb31)

**Verdict:** needs changes

Independent AI review of `TauCetiRoadmap/CountableStructureSpaces/README.md` and `TauCetiRoadmap/CountableStructureSpaces/Suggested.lean`. The worktree was not edited. Findings concern this folder only.

## R01 (P1) — Clear the supplied targeted-build gate failure

**Location:** `TauCetiRoadmap/CountableStructureSpaces/Suggested.lean:1–2`; the supplied head-specific gate's build results.

**Claim:** The target passes the build gate with `sorry` as its only warning.

**Witness:** The gate reports `build=2`: module-system warnings for both `Completed/InfinitaryLogic/Suggested.lean` and this file importing Mathlib. Direct `lake env lean` separately exits 0; this is not an elaboration error.

**Repair:** Remove the forbidden prototype import as in R03, use the supported module form for the retained acceptance file, and rerun the prescribed targeted gate until its build check passes without these warnings. Do not suppress them with options or edit the completed supplier. P1 follows the brief's severity for a failing build gate; the successful direct elaboration is recorded separately rather than misreported as a failure.

## R02 (P1) — Correct the nonexistent DLO supplier declaration

**Location:** `TauCetiRoadmap/CountableStructureSpaces/README.md:115`, 641: `Theory.dlo`.

**Claim:** Mathlib supplies the cited dense-linear-order theory under that name.

**Witness:** A pin-level probe rejects `FirstOrder.Language.Theory.dlo` as unknown, but accepts `FirstOrder.Language.order.dlo`. The definition is `FirstOrder.Language.dlo` in `Mathlib/ModelTheory/Order.lean:187`.

**Repair:** Cite `FirstOrder.Language.dlo` with its `[L.IsOrdered]` argument and specialize to `FirstOrder.Language.order.dlo` in the example. The corrected expression elaborates at the pin. Its models satisfy linearity, density and both no-endpoint axioms: ℚ satisfies these, whereas ℕ fails density and the no-bottom axiom. No new supplier work or gap is needed. This is supplier citation drift, assigned P1 under the brief's rule for a consumed declaration absent where cited.

## R03 (P2) — State acceptance targets against the actual pins

**Location:** `TauCetiRoadmap/CountableStructureSpaces/Suggested.lean:2`, 14–20, 606–641; `TauCetiRoadmap/CountableStructureSpaces/README.md:116`. The file imports `Completed.InfinitaryLogic.Suggested` and declares copies of `PCMem` and `pcSeparation`.

**Claim:** These signatures test the finished roadmap against the pinned libraries, and the cited infinitary APIs are implemented there.

**Witness:** At Tau Ceti `358314d4` and Mathlib `f6090c70`, searches for `BoundedFormulaInf`, `BFEquiv`, `SelfStabilizesCompletely` and `scottSentence` return no declarations. The elaborated signatures instead use `TauCetiRoadmap.InfinitaryLogic.Sentenceω`.

**Repair:** Remove the roadmap import and the copied supplier declarations. Retain the named README contracts with Completed/InfinitaryLogic Layers 0–3 and InfinitaryModelExistence §§7.1–7.2. Name the syntax-, BF- and Scott-dependent headlines in the module docstring as not statable at these pins, identifying their missing carriers. Keep statable topological/descriptive headlines on native carriers with the few necessary definitions. Do not recreate the missing infinitary library in this file. The pin search and 107 elaborated named signatures verify the distinction; deleting only the import would leave unresolved carriers, not a repaired acceptance test. This also resolves the gate's `imports` failure.

## R04 (P2) — Remove the admitted definition of a setoid

**Location:** `TauCetiRoadmap/CountableStructureSpaces/Suggested.lean:429–432`: `iseqv := by sorry`.

**Claim:** `bfEquivSetoid` is a completed definition available to later statements.

**Witness:** Its structure body contains an admitted proof field; the gate reports `sorry-data=1`. Subsequent Borelness and comparison targets refer to this definition.

**Repair:** Keep the equivalence-relation construction and its reflexivity, symmetry and transitivity API in the README. Under R03, remove this BF-dependent definition and its uses from the acceptance file. Once a native BF carrier is available, either use its existing setoid or give the equivalence proof in full if this definition is still needed. The relation must remain true on `(c,c)` and false on codes disagreeing on a nullary symbol at level zero.

## R05 (P2) — Preserve the arbitrary-cardinality constant-chain statement

**Location:** `TauCetiRoadmap/CountableStructureSpaces/README.md:419–430`; `TauCetiRoadmap/CountableStructureSpaces/Suggested.lean:454–458`, 481–486. The prose promises stabilization “against structures of any cardinality.”

**Claim:** `stabilizesCompletely_add_omega0` expresses that general statement.

**Witness:** Expanding its conclusion exposes `∀ (N : Type) ... [Countable N]`. For the empty language, `M = ℕ`, `N = ℝ`, and β = 0, the prose applies but the signature cannot be instantiated at N.

**Repair:** Keep the countable-comparison definition of Scott height, but give the constant-chain target an explicit arbitrary-universe N, arbitrary tuples, and the implication from BF at β + ω to every higher level under self-stabilization of M at β. Derive countable external stabilization from it. For the witness, infinite pure sets agree at every BF level, so the general implication is true; no countability of N is used in the witness-upgrade argument. At these pins, record this headline as unstatable as in R03. The reference proof's auxiliary statements carry `[Countable N]`; the README's stronger version is an adaptation, not its literal signature.

## R06 (P2) — Put countability on the cardinality claims in prose

**Location:** `TauCetiRoadmap/CountableStructureSpaces/README.md:240–241`, within a layer introduced for every language and carrier.

**Claim:** The coding space has at most continuum many points, with equality for an infinite carrier and a positive-arity symbol.

**Witness:** One unary predicate on α = ℝ gives `StructureSpaceOn L α = (ℝ → Bool)`, of cardinality 2^𝔠 > 𝔠. The Lean bound at line 149 explicitly requires both countabilities; this paragraph does not.

**Repair:** State both the bound and its equality case under countably many relation symbols and a countable carrier; the equality case additionally needs an infinite carrier and a positive-arity symbol. State the unrestricted cardinal formula as 2 raised to the cardinality of the query type if desired. Recheck: one unary predicate on ℕ gives 2^ℵ₀ = 𝔠; on ℝ it gives 2^𝔠, so the unrestricted instance is no longer claimed.

## R07 (P3) — Delete API corollaries and worked examples from the acceptance file

**Location:** `TauCetiRoadmap/CountableStructureSpaces/Suggested.lean:129`, 245, 303, 423, 434, 806, 820–828; also the trivial `inferInstance` examples at 83–86.

**Claim:** These are headline acceptance targets.

**Witness:** Six admitted declarations closed with one tactic in a scratch copy: the cylinder lemma, invariant-measurability equivalence, standard-Borel model-class corollary, specialized orbit-setoid equality, Borel BF-setoid corollary, and non-Borelness from non-analyticity. The final two theorems explicitly duplicate worked examples.

**Repair:** Delete them from `Suggested.lean`; keep the mathematical facts and pure-set controls in the README. Delete the trivial instance examples too. Retain a substantial representative headline for each endpoint, such as non-analyticity of the well-order class. Successful tactics and their native inputs are recorded below; this finding does not ask to prove the padding in place.

## R08 (P3) — Add claim-level legal source locators

**Location:** `TauCetiRoadmap/CountableStructureSpaces/README.md:256–611`, 759–773.

**Claim:** The sampled targets have verifiable references supporting their hypotheses and conventions.

**Witness:** None of the 12 sampled subsections attaches a theorem/section-and-page locator to its claims. Marker, Gao and Keisler are cited only as whole books. The provenance table gives file names, not theorem locations for the adaptations.

**Repair:** Attach exact locators to each theorem and API claim. Distinguish the 2013 Marker notes actually available from the cited 2016 book. Identify the constant-chain proof by declaration and revision and spell out its generalization. Do not use Marker's internal-rank statements as locators for the external-height comparison without the extra argument: the notes contain rank errors listed under Source issues. Record inaccessible texts as uncertified, without guessing their theorem numbers. The source audit below supplies usable partial locators, and explicitly marks what it did not verify.

## R09 (P3) — Give each definition three discriminating Checks

**Location:** `TauCetiRoadmap/CountableStructureSpaces/README.md:213–249`, 298–300, 345–380, 454–477, 491–518.

**Claim:** Layer-wide acceptance examples test all the definitions and conventions.

**Witness:** Layer 1's sole permutation example uses a transposition, for which σ = σ⁻¹; both the correct action and the inverse-convention mistake send `{0}` to `{1}`. `KBLT`, `prefixTree`, and the witness vocabulary lack three definition-specific Checks.

**Repair:** Add a `**Checks.**` list to each definition, retaining its API. For the action use the 3-cycle 0→1→2→0: `{0}` must map to `{1}`, while the wrong convention gives `{2}`; add identity and noncommuting-product cases. For tree height use ∅→0, root-only→1, decreasing naturals→ω+1. For witness sentences test the standard model, a finite cycle, and a non-numeral extra component. The computed controls below show these repairs discriminate the intended objects.

## R10 (P3) — Supply the required roadmap structure and local dependencies

**Location:** `TauCetiRoadmap/CountableStructureSpaces/README.md:1–49`, 104–120, and the ends of Layers 0–6.

**Claim:** The overview layer table is a sufficient build specification.

**Witness:** There are no `*Needs:*` lines, no layer-ending `### Dependencies` or `### Examples`, no opening `**Summary.**`, and no `## Exact supplier contracts` or `## How to read the build` section.

**Repair:** Reshape the existing material into the required headings and give each target its actual statement/proof dependencies. In particular, §6.1's sentence separator needs López–Escobar while §6.2's boundedness argument does not. Preserve that distinction instead of assigning both all of Layers 1–5. The dependency check below passes at roadmap granularity; it does not supply these missing local edges.

## R11 (P3) — Remove the option override

**Location:** `TauCetiRoadmap/CountableStructureSpaces/Suggested.lean:23`: `set_option autoImplicit false`.

**Claim:** The acceptance file uses the required default Lean environment.

**Witness:** The gate reports `set_option=1`; this instruction is present in executable Lean code.

**Repair:** Delete the option and use explicit binders in retained declarations. Re-elaborate the resulting acceptance file at the pins. This is a form violation, not evidence of a false theorem.

## R12 (P3) — Remove process and pull-request references

**Location:** `TauCetiRoadmap/CountableStructureSpaces/README.md:45–49`, 119, 184–189, 711–745; `TauCetiRoadmap/CountableStructureSpaces/Suggested.lean:606–611`.

**Claim:** Ownership and provenance are expressed as timeless mathematical contracts.

**Witness:** The gate flags `prnum=1` and `residue=2`, including “checkpoint” at README lines 740 and 745. Other passages discuss copies, revisions, rechecking, current proposals and numbered pull requests.

**Repair:** Cite roadmap names and exact sections; replace process narrative with the ownership contracts. Preserve legitimate provenance using repository, immutable revision and file/declaration locators, without “checkpoint” narrative. Retain substantive Mathlib design provenance by the proposed API and stable source link, without making a numbered PR the mathematical supplier.

## R13 (P3) — Make the README's declaration claims agree with the acceptance file

**Location:** `TauCetiRoadmap/CountableStructureSpaces/README.md:349`, 414, 417, 594.

**Claim:** The backticked names identify declarations furnished by this acceptance file.

**Witness:** The gate finds four absent names: `body_mono`, `StabilizesCompletely.bfEquiv_of_le`, `stabilizesCompletely_iff_univ`, and `isomorphismInvariant_wellOrderClass`.

**Repair:** State these API facts in prose without claimed Lean identifiers. Do not add four padding declarations. Apply the same agreement check to helper definitions that appear only in Lean, such as `bfLeft`, `bfRight` and `prefixTree`, when deciding which definitions the reduced acceptance test still needs.

## Verified sound

The head is `bcfbb3128c7f76488f1cac41289e5dfb76f57545`. Git status was clean and the specified diff outside this roadmap folder was empty. No computational algorithm, route-specific shortcut, copied source passage, cyclic supply, or wholesale re-planning of a completed roadmap was identified. The scope extends the descriptive-set-theoretic material explicitly excluded by Completed/InfinitaryLogic; it does not replace that roadmap's internal rank.

The supplied gate is **FAIL**: `set_option=1`, `prnum=1`, `sorry-data=1`, `residue=2`, `imports=1`, `readme-ids-missing=4`, `build=2`; its other checks pass. Each failing category is covered above. The direct elaboration of the original `Suggested.lean` completed with exit 0 and only `sorry` warnings. This does not override the supplied gate, and it proves no admitted mathematics.

The requested dependency command produced exactly:

```text
depcheck: 205 roadmaps, 1477 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. There are no declared gaps. I read the overview dependency table and all supplier citations; there are zero `*Needs:*` lines to audit. The necessary local inputs are coding→action→satisfaction, tree boundedness→BF separation, syntax plus tree representations plus PC separation→López–Escobar, and descending-sequence trees→well-order boundedness. No reverse consumer edge is needed.

**Resolved ownership.** The content repository was main `fa41b374`. I read Completed/InfinitaryLogic and BorelEquivalenceRelations as the two main-branch shape/supplier examples, and the consumed portions of InfinitaryModelExistence and CountableModelCounting. Searches by objects used `roadmaps grep`, `roadmaps show`, the board packages, both pinned libraries, and the available roadmap files. Matches in revision PRs of existing roadmaps were not treated as new suppliers. No competing owner of the new coding space, external height, forced tree or descriptive tree boundedness was identified. The board-package README/Lean search produced no additional owner. This establishes ownership only against the available files/index, not inaccessible unlisted work.

- `Completed/InfinitaryLogic/README.md:291`, 403, 501, 566: syntax; BF/potential isomorphism; internal stabilization; Scott formulas/sentences/ranks. The parent explicitly excludes external height at lines 165–166. Its Scott-sentence characterization is named `realize_scottSentenceAt_iff` at line 600; the consumer's `realize_scottSentence_iff` should be resolved through that theorem and the definition of `scottSentence`, rather than asserted as an existing pinned declaration.
- `TauCetiRoadmap/BorelEquivalenceRelations/README.md:212`, 220, 409: the two Gδ subspace results, analytic products, and invariant separation. The respective Lean signatures were opened in that roadmap; their hypotheses agree with the consumed versions. `IsGδ.standardBorelSpace` is a roadmap target, not a missing Mathlib theorem.
- `TauCetiRoadmap/InfinitaryModelExistence/README.md:656`, 666–708 and `Suggested.lean:700`, 723: `PCMem` and `pcSeparation` are genuinely owned there; disjointness is tested on countable nonempty structures and the conclusion ranges over arbitrary nonempty structures. Equal auxiliary languages are allowed because the two expansions are separate.
- `TauCetiRoadmap/CountableModelCounting/README.md:70`, 209: space, external height and the separation interface are consumed from this roadmap; its relative counting results do not transfer ownership back. The graph translation is assigned to InfinitaryModelExistence Layer 6, not rebuilt here.

**Pinned declarations opened.** Paths below are relative to the named dependency repository. Mathlib is `f6090c7095e1e56b3464c1daba5f24631f1290d2`; Tau Ceti is `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`.

| Native input | File and line | What the inspected declaration supplies |
| --- | --- | --- |
| `Descriptive.tree`, `take_mem` | `Mathlib/SetTheory/Descriptive/Tree.lean:29`, 58 | Prefix-closed sets of lists, including the empty tree; no body/rank/KB theory is supplied there. |
| `arrowAction` | `Mathlib/Algebra/Group/Action/Basic.lean:100` | The inverse in precomposition; the roadmap's action convention agrees. |
| `Equiv.inducedStructure`, `inducedStructureEquiv` | `Mathlib/ModelTheory/Basic.lean:811`, 815 | Transport along a bijection, including its first-order isomorphism. |
| `sumStructure` | `Mathlib/ModelTheory/Basic.lean:734` | A sum-language structure from two structures on one carrier. The reduct reconstruction equality is an elementary additional bridge, not a theorem named `sumStructure_reducts` at the pin. |
| `MeasurableSpace.invariants`, `measurableSet_invariants` | `Mathlib/MeasureTheory/MeasurableSpace/Invariants.lean:33`, 41 | Ambient measurability AND equality with the inverse image; no measurability assumption on the self-map. |
| `MeasurableSpace.measurableSet_iInf` | `Mathlib/MeasureTheory/MeasurableSpace/Defs.lean:454` | Membership in every constituent σ-algebra. |
| `PolishSpace`, `IsClosedEmbedding.polishSpace` | `Mathlib/Topology/MetricSpace/Polish.lean:62`, 80 | Complete metrizability and second countability; no nonemptiness field. |
| `AnalyticSet`, `analyticSet_range_of_polishSpace` | `Mathlib/MeasureTheory/Constructions/Polish/Basic.lean:185`, 192 | Empty set OR continuous Baire-space image. The ambient target need not itself be Polish or Hausdorff. This validates Layer 3's general ambient X. |
| `AnalyticSet.image_of_continuous`, `iInter`, `iUnion` | same file:238, 243, 284 | Continuous images; countable intersections require nonempty index and Hausdorff target; countable unions. |
| `AnalyticSet.measurablySeparable`, `measurableSet_of_compl` | same file:511, 523 | Lusin separation and Suslin's theorem with their separation/measurability hypotheses. |
| `MeasurableSet.standardBorel` | same file:1109 | Standard-Borel measurable subspaces; it does not assert the original subspace topology is Polish. |
| `continuous_apply` | `Mathlib/Topology/Constructions.lean:776` | Coordinate evaluation for product topology. |
| `IsWellOrder` | `Mathlib/Order/RelClasses.lean:315` | Trichotomy plus well-foundedness; transitivity is derived. No arbitrary well-founded relation is being mistaken for a linear well-order. |


The remaining supplier-table objects were also opened at the pin: `IsClosed.polishSpace` and `IsOpen.polishSpace` at `Mathlib/Topology/MetricSpace/Polish.lean:97`, 245; `PolishSpace.IsClopenable` at 262 (a finer Polish topology, not a claim that the original subspace is Polish); `analyticSet_empty`, `MeasurableSet.isClopenable`, `MeasurableSet.analyticSet` and `MeasurableSet.image_of_continuousOn_injOn` at `Mathlib/MeasureTheory/Constructions/Polish/Basic.lean:188`, 307, 316, 821 (the last needs a Hausdorff target with measurable opens). `Structure`, `Language.Equiv` and `Language.sum` are at `Mathlib/ModelTheory/Basic.lean:155`, 212, 83; structure fields interpret all functions and relations and impose no nonemptiness. `BoundedFormula.IsQF`, `IsUniversal`, `IsExistential` are at `Mathlib/ModelTheory/Complexity.lean:72`, 331, 343; `alls` is at `Mathlib/ModelTheory/Syntax.lean:466`. Universal/existential mean quantifier-free matrices with only the indicated quantifiers.

For actions, the pinned inputs are `Equiv.Perm.applyMulAction`, `Mathlib/Algebra/Group/Action/End.lean:84`; `MulAction.orbitRel` and `stabilizer`, `Mathlib/GroupTheory/GroupAction/Defs.lean:287`, 515; `fixingSubgroup`, `Mathlib/GroupTheory/GroupAction/FixingSubgroup.lean:113`; `ContinuousSMul`, `Mathlib/Topology/Algebra/MulAction.lean:43`; `IsTopologicalGroup`, `Mathlib/Topology/Algebra/Group/Defs.lean:110`. The latter two demand continuity, not separation axioms. The graph σ-algebra is the comap of adjacency, `Mathlib/MeasureTheory/Constructions/SimpleGraph.lean:25`; `MeasurableSpace.pi` is the supremum of coordinate comaps, `Mathlib/MeasureTheory/MeasurableSpace/Constructions.lean:574`. `Language.graph` and `SimpleGraph.structure` are at `Mathlib/ModelTheory/Graph.lean:49`, 57; `Language.order` and `Language.dlo` are at `Mathlib/ModelTheory/Order.lean:75`, 187. In particular the order-language symbol represents ≤, while the freely chosen binary symbol in the well-order-class target represents a strict order; the diagonal T/F controls distinguish them. R02 corrects the DLO citation.

**Headline coverage.** The README endpoints are: Polish permutation groups and continuous logic action; Borel satisfaction and individual isomorphism classes; tree representation and analytic tree-height boundedness; external Scott-height comparisons and the isomorphism criterion; Borelness under bounded height, Borel internal strata and uniform BF separation; López–Escobar in sentence/action/σ-algebra forms; invariant analytic classes as PC classes; invariant Borel/sentence separation; and non-analyticity, non-Borelness and undefinability of the well-order class. The current file attempts all these. The defect is use of unavailable infinitary carriers, not wholesale absence of the headlines. The native topological, tree and well-order results remain statable; the docstring must name the missing-carrier headlines rather than importing another roadmap to force them through.

**Signature and padding probes.** A scratch copy with `#check @name` for all 107 named definitions/theorems elaborated successfully. I compared its output with the prose, including explicit structure instances, relational/countability binders, ordinal universes, and the order of the uniform existential β before the pair variables. No implicit disappearance of a needed standing binder was found. R05 is a narrower explicit quantifier, not Lean silently dropping a variable. R06 is a missing prose hypothesis. No file was changed as a result. A second successful scratch elaboration checked all 12 instance signatures, giving 119 signatures in total; scratch names were assigned to anonymous instances only for inspection. No necessary binder was lost.

Plain `simp` was tried on all 68 admitted theorems; none closed with that tactic alone. A second scratch copy successfully elaborated with these six one-tactic replacements (all other proofs unchanged):

| Declaration | Successful one tactic |
| --- | --- |
| `StructureSpaceOn.isClopen_setOf_apply` | `exact (isClopen_discrete ({true} : Set Bool)).preimage (continuous_apply q)` |
| `measurableSet_iInf_invariants_iff` | `simp [MeasurableSpace.measurableSet_iInf, MeasurableSpace.measurableSet_invariants, ActionInvariant, forall_and]` |
| `standardBorelSpace_modelsOf` | `exact (measurableSet_modelsOf φ).standardBorel` |
| `structureIsoSetoid_eq_orbitRel` | `exact structureIsoSetoidOn_eq_orbitRel` |
| `measurableSet_bfEquivSetoid` | `exact measurableSet_bfEquivSet hβ 0 Fin.elim0 Fin.elim0` |
| `not_measurableSet_wellOrderClass` | `exact fun h => not_analyticSet_wellOrderClass lt h.analyticSet` |

These probes establish padding relative to the proposed earlier targets, not proofs of the entire roadmap. The encoding round-trip did not close with the attempted simplification and is not reported as a successful one-tactic probe.

**Adversarial computations (160 rows: 107 named declarations plus 53 instance, convention and prose checks).** The tables below distinguish instance checks from general proofs. T/F are truth values; `c_P` means the code of a unary predicate P. In pure sets let d be the number of distinct tuple entries and r,r′ the numbers of unused elements. A scratch recurrence computed 200 finite cases (sizes 0–4, d up to 2, BF levels 0–3): BF at k equaled `(r = r′) or (r ≥ k and r′ ≥ k)` in all 200 cases. For empty tuples, sizes (0,1), (1,2), (2,3) gave respectively `[T,F,F,F]`, `[T,T,F,F]`, `[T,T,T,F]`. This tests the successor convention, including empty carriers, rather than assuming the worked formula.

For the following rows, “pass” means the displayed computation agrees, not that arbitrary cases have been proved. The changes column points to an actual finding where relevant.

| Statement or definition | Instances | Computed values on both sides / object values | Result | Change |
| --- | --- | --- | --- | --- |
| RelQueryOn | Empty language; one nullary symbol on ∅; one unary on Fin 2 | Query cardinalities 0, 1, 2 respectively; the nullary tuple exists even on ∅ | pass | — |
| StructureSpaceOn | Same three inputs | Code cardinalities 1, 2, 4 = 2^0, 2^1, 2^2 | pass | R06 for unrestricted continuum bound |
| StructureSpace | Empty language; one unary on ℕ | Cardinalities 1 and 2^ℵ₀ | pass | — |
| StructureSpaceOn.toStructure | Unary c with c(0)=T,c(1)=F; nullary true on ∅ | Decoded predicates have values T,F; nullary value T, not lost on ∅ | pass | — |
| StructureSpaceOn.relMap_toStructure | Same unary queries | Both sides T at 0 and F at 1 | pass | API only |
| StructureSpaceOn.ofStructure | P={0} on Fin 2 | Code is [T,F]; P=∅ gives [F,F] | pass | — |
| StructureSpaceOn.ofStructure_toStructure | Codes [T,F], [F,F] | Encoded-decoded results [T,F], [F,F], equal to original | pass | — |
| StructureSpaceOn.toStructure_ofStructure | Unary relational structure; function-symbol negative control | Relational round trip preserves P; two functions on Fin 2 with identical relations collapse to the same code | pass | relational hypothesis necessary |
| StructureSpaceOn.encodeVia | Swap 0,1 and P={0} | Transported P={1}; identity transport P={0} | pass | — |
| StructureSpaceOn.nonempty_equiv_encodeVia | Same swap | Swap is a structure isomorphism, so Nonempty=T; identity would not preserve P | pass | — |
| StructureSpaceOn.isClopen_setOf_apply | Unary code space on Fin 2, query 0 | Cylinder has 2 of 4 codes; complement has other 2; both open | pass | R07 |
| queryCode | Decode n = none versus some q; two indices decoding q | Values F versus c(q); equal-query indices both c(q) | pass | — |
| isClosedEmbedding_queryCode | Empty query type; one nullary query | Image is {all-F}; respectively two sequences differing at successful query indices; both closed and map injective | pass | — |
| mk_structureSpaceOn_le_continuum | Unary Fin 2, ℕ, ℝ | 4≤𝔠; 2^ℵ₀=𝔠; 2^𝔠>𝔠, last excluded by Lean | prose mismatch | R06 |
| graphCode | Empty graph; graph with edge {0,1} | Adjacency codes F everywhere; T exactly at (0,1),(1,0); diagonal F | pass | — |
| measurableEmbedding_graphCode | Same graphs; asymmetric relation code | Two distinct graph images; asymmetric code outside image; inverse reads the same edge coordinates | pass | — |
| hasBasis_nhds_one_fixingSubgroup | α=∅, Fin 1, Fin 2; s=∅ or full | Perm group sizes 1,1,2; stabilizers at ∅ are full; at full carrier are {1} | pass | — |
| isTopologicalGroup_perm | S₃; σ=(012), τ=(01) | (στ)(0)=2; (τσ)(0)=0; inverse and multiplication continuous on finite discrete 6-point group | pass | R09 add noncommuting control |
| polishSpace_perm | α=∅, Fin 2, ℕ | First two groups have 1,2 discrete points; S∞ closed inverse-pair image; no empty-carrier obstruction | pass | — |
| smul_apply | σ=(012), P={0} | (σ•c)(1)=c(0)=T; (σ•c)(2)=c(1)=F; wrong forward precomposition reverses these | pass | R09 |
| continuousSMul_structureSpaceOn | Unary query at 1 and σ=(012) | Output determined by σ⁻¹(1)=0 and c(0); fixing these two data makes output constant T | pass | — |
| orbitRel_iff_nonempty_equiv | c_{0}, c_{1}, c_∅ on ℕ | Orbit/iso both T for first two, both F for c_{0},c_∅ | pass | — |
| mem_stabilizer_iff | P={0} on Fin 3; swap(12) versus swap(01) | Membership/predicate preservation T/T then F/F; stabilizer size 2 | pass | — |
| ActionInvariant | Unary B={c_{0}}; B=one-element-P orbit | For swap(01), preimage singleton {c_{1}}≠B; full orbit preimage=B | pass | — |
| IsomorphismInvariant | Same two classes | c_{0}≅c_{1} but singleton membership T/F; orbit membership T/T | pass | — |
| actionInvariant_iff_isomorphismInvariant | Singleton and whole orbit | F↔F; T↔T | pass | — |
| measurableSet_iInf_invariants_iff | Same B | Singleton: invariant σ-algebra membership F, ambient Borel∧invariant T∧F=F; orbit: T=T∧T | pass | R07 |
| analyticSet_iUnion_smul | A=∅; A={c_{0}} | Saturations ∅ and {c_{n}:n∈ℕ}; latter countable, hence analytic | pass | — |
| analyticSet_orbitRel_graph | Empty language; unary c_{0},c_∅ | Graph is singleton square; unary pair has graph value F and no action preimage | pass | — |
| modelsOfBounded | Formula P(x), assignments x=0 or 1 | c_{0} belongs for 0 and not for 1; equality x=x gives full space | pass | — |
| modelsOf | ⊥, ⊤; ∃x x=x on ∅ | Model sets ∅, univ; existential has ∅ model set on empty carrier | pass | — |
| measurableSet_modelsOfBounded | P(x), x=0; x=y with assignments 0,1 | One-coordinate cylinder; empty set; both measurable | pass | — |
| measurableSet_modelsOf | ⊥, ⊤, ∀x P(x) | ∅, univ, singleton {all-T}; all Borel | pass | — |
| isomorphismInvariant_modelsOf | ∀x P(x); transport by σ | Truth unchanged T for all-P, F for c_{0}; both sides same | pass | — |
| standardBorelSpace_modelsOf | ⊥ and finite-P sentence | Empty standard-Borel space; countable Borel finite subsets, not Gδ in Cantor space | pass | R07 |
| isGδ_modelsOf_toInf_alls | ∀x∃y R(x,y), R=< on ℕ versus R=∅ | Truth T/F; set = intersection_x union_y coordinate-cylinder, a Gδ | pass | — |
| measurableSet_setOf_realize_graph | Sentence “there is an edge”; empty graph and {0,1} edge | Truth F/T; event is countable union of edge-coordinate events | pass | — |
| initialSegment | x(n)=n, n=0,1,2 | [], [0], [0,1] | pass | — |
| body | Empty tree, root-only tree, full tree | ∅, ∅, ℕ→A (nonempty for A=ℕ) | pass | — |
| StrictExt | Nodes [],[0],[0,1] | StrictExt([0],[])=T; reversed=F; StrictExt([0],[0])=F | pass | — |
| wellFounded_strictExt_iff | Empty, root-only, full ℕ trees | WellFounded/body-empty values T/T, T/T, F/F | pass | — |
| treeHeight | Empty; root; chain [],[0] | Heights 0,1,2; terminal rank 0, predecessor rank 1 | pass | — |
| treeHeight_lt_omega_one | Decreasing-natural tree | Root rank ω; height ω+1<ω₁ | pass | — |
| analytic_treeHeight_bounded | Constant root-only family; empty A | Height 1 throughout, bound β=2; empty A permits β=0 | pass | — |
| exists_tree_of_analyticSet_cantor | A=∅ or all Cantor space | Empty tree projects to ∅; full Bool×ℕ tree projects to univ | pass | — |
| exists_tree_of_analyticSet | Empty-language singleton code; B=∅ or univ | Query sequence all-F; empty tree excludes it, full tree admits it | pass | — |
| KBLT | [0,1] vs [0]; [0,2] vs [1]; equal nodes | Values T,F in reverse extension direction; T for first differing 0<1; F on equality | pass | R09 |
| wellFounded_kbLT_iff | Root-only; full ℕ tree | T↔T; F↔F via []>[0]>[0,0]>… | pass | — |
| bfEquivSet | Nullary truth disagreement; unary ∅ versus {0} | First pair BF0=F; second BF0=T, BF1=F | pass | — |
| measurableSet_bfEquivSet | One nullary relation at β=0 | Equality of two Bool coordinates: 2 of 4 pairs; clopen, hence Borel | pass | — |
| structureIsoSetoidOn | Empty carrier, one nullary relation | Two codes; isomorphism matrix diagonal T, off-diagonal F | pass | — |
| structureIsoSetoid | Unary ∅, {0}, {1} on ℕ | ∅ not related to others; {0} related to {1}; reflexive values T | pass | — |
| structureIsoSetoidOn_eq_orbitRel | Empty carrier/nullary relation; Fin 3 unary | Perm(∅) trivial preserves each of 2 codes; unary orbits classified by sizes 0,1,2,3 | pass | — |
| structureIsoSetoid_eq_orbitRel | Unary ∅,{0},{1} on ℕ | Both equivalence relations give the same T/F matrix | pass | R07 |
| bfEquivSetoid | Nullary disagreement; c=c | BF0 off-diagonal F, diagonal T; transitivity T→T→T | mathematical relation passes | R04 admitted field |
| measurableSet_bfEquivSetoid | One nullary at β=0 | Diagonal of Bool space has two points and is clopen | pass | R07 |
| structureIsoSetoid_le_bfEquivSetoid | c_{0},c_{1}; c_∅,c_{0} | Isomorphic pair BFβ=T for all β; nonisomorphic pair BF0=T then BF1=F, so converse at 0 fails | pass | — |
| setOf_iso_eq_modelsOf_scottSentence | Empty language on ℕ; unary one-P structure | Both sides univ; respectively both sides {c_n:n∈ℕ} | pass | R03 missing native syntax |
| StabilizesCompletely | Pure Fin m, m=0,1,2; ℕ | Least stabilizing levels 1,2,3,ω; at preceding finite stage BF true then next false against size m+1 | pass | — |
| scottHeight | Same pure structures | sInf values 1,2,3,ω; stabilizing sets are corresponding final segments | pass | — |
| StabilizesCompletely.mono | Pure Fin 1, β=2,γ=3; ℕ,ω→ω+1 | Stabilization T→T; T→T | pass | — |
| stabilizesCompletely_scottHeight | Pure Fin 0,Fin 1,ℕ | Stabilization at 1,2,ω respectively=T | pass | — |
| scottHeight_congr | Two relabelings of pure Fin 2; ℕ identity | Heights 3=3, ω=ω | pass | — |
| stabilizesCompletely_add_omega0 | M=ℕ pure, β=0; N=ℝ pure | Self-stabilization T; BFω and BF(ω+1) both T; Lean quantifier excludes N | scope mismatch | R05 |
| scottHeight_lt_omega_one | Pure Fin 0,Fin 2,ℕ | 1<ω₁,3<ω₁,ω<ω₁ | pass | — |
| selfStabilizationOrdinal_le_scottHeight | Same cases | s=0 in each; 0≤1,0≤3,0≤ω | pass | — |
| scottHeight_le_selfStabilizationOrdinal_add_omega0 | Same cases | 1≤ω,3≤ω,ω≤ω | pass | — |
| internalScottRank_le_succ_scottHeight | Same cases, SR=1 | 1≤2,1≤4,1≤ω+1 | pass | — |
| scottHeight_le_internalScottRank_add_omega0 | Pure Fin 2,ℕ | 3≤1+ω=ω; ω≤1+ω=ω, equality for ℕ | pass | — |
| nonempty_equiv_of_bfEquiv_of_scottHeight_le | Pure Fin 1 vs Fin 2; same finite size | At β=1 BF=T but SH≤β=F; at β=2 BF=F. Same-size copies BF=T and iso=T | pass | — |
| measurableSet_iso_inter_of_scottHeight_le | Empty language φ=⊤, β=ω; φ=⊥ | Isomorphism graph singleton square=Borel; empty restriction=∅ | pass | — |
| measurableSet_setOf_selfStabilizationOrdinal_le | One unary predicate, β=0 | Every code homogeneous within its two colors, so s=0; stratum=univ | pass | — |
| prefixTree | P everywhere true; P([])=false; P length≤1 | Trees full, empty, and levels 0–1 respectively | pass | — |
| bfLeft | s=[1,1], [0,1] | Left tuples [0,1], [0,1] | pass | — |
| bfRight | Same s | Right tuples [1,0], [0,0]; second loses equality type | pass | — |
| bfTree | Pure identical codes; nullary disagreement | [1,1] belongs, [0,1] fails; nullary disagreement removes even root | pass | — |
| body_bfTree_nonempty_iff | Identical pure codes; unary ∅ vs {0} | Identity schedule gives branch and iso; second has neither, F↔F | pass | — |
| isClosed_setOf_mem_bfTree | Empty node, one nullary symbol; fixed finite node, infinitely many symbols | Empty-node membership is coordinate equality, closed; finite-node condition is intersection of closed equalities, still closed | pass | — |
| lt_treeHeight_bfTree | c_{0} vs c_∅; c_∅ vs c_{0} | Trees root-only (height1), root+level1 (height2); BF0=T, so 0<1 and 0<2 | pass | — |
| exists_uniform_bfSeparation | Singleton pair (c_∅,c_{0}); empty analytic family | β=1 makes BF false; empty family permits β=0 | pass | — |
| measurableSet_iso_inter_iff_exists_bfLevel | Empty language ⊤; unary language ⊤ | First graph Borel and β=0 works; second graph classified by two color cardinalities, Borel, β=ω works | pass | — |
| PCMem | Auxiliary sentence ⊤ or ⊥, relational expansion | Membership T for ⊤, F for ⊥; different auxiliary expansions may share the same reduct | pass | R03 supplier copy |
| pcSeparation | Θ₁=⊥,Θ₂=⊤; swapped | θ=⊥ separates first, θ=⊤ second; overlapping ⊤/⊤ violates disjointness | pass | R03 supplier copy |
| PCWitnessRel | Arity 0,1,2,3 | Numbers of symbols 0,1,2,0 | pass | — |
| pcWitnessLanguage | Same arities | No function symbols; one unary symbol zero and two binary symbols succ and branch; IsRelational=T | pass | — |
| standardWitnessRel | g(n)=0 | zero(0)=T,zero(1)=F; succ(0,1)=T,succ(1,0)=F; branch(2,0)=T,branch(2,1)=F | pass | — |
| standardWitness | g(n)=0 on ℕ | Numeral ν_k picks {k}; successor omits 0, branch is total constant 0 | pass | — |
| exists_pcSentence | Empty tree; full tree; finite cyclic successor | Empty tree has no branch/model; full tree admits standard ℕ witness; finite cycle fails missing-zero/injectivity axioms | pass | R03 unavailable syntax |
| lopez_escobar | Empty language B=∅,univ; unary B={c_0} | First two have θ=⊥,⊤; singleton has Borel=T,invariant=F and no defining sentence | pass | — |
| lopezEscobar_iff | Same cases | T↔T,T↔T,F↔F | pass | — |
| lopezEscobar_action_iff | Unary singleton versus one-P orbit | F↔F; T↔T, orbit defined by exactly one P-element | pass | — |
| measurableSet_iInf_invariants_iff_exists_modelsOf | Unary singleton versus one-P orbit | Invariant measurability F/T; sentence existence F/T | pass | — |
| analyticSet_iff_exists_pc | Invariant B=∅,univ,one-P orbit | Analytic=T in all three; PCs witnessed by ⊥,⊤,exactly-one-P sentence respectively | pass | — |
| saturated_iff_actionInvariant | B={c_0}; B=one-P orbit | Saturation of singleton is whole orbit≠B, both sides F; whole orbit both sides T | pass | — |
| invariant_analytic_separation | A={c_0}, B={c_∅}; swapped | C=one-P orbit or {c_∅}; inclusions T, intersections ∅, invariance T | pass | — |
| exists_sentence_separating | Same pair | θ=exactly-one-P gives A⊆Mod θ=T and B∩Mod θ=∅ | pass | — |
| codeRel | Usual < versus ≤ on ℕ | At (0,1) both T; at (0,0) < is F and ≤ is T | pass | — |
| wellOrderClass | Usual <; ≤; transported integer <; empty relation | Membership T,F,F,F; empty relation is well-founded but not total on ℕ | pass | — |
| exists_mem_wellOrderClass_type_eq | β=ω,ω+1; β=2 | First two have codes with those order types; β=2 violates ω≤β and cannot order all ℕ | pass | — |
| analyticSet_compl_wellOrderClass | ≤; transported integer <; usual natural < | Complement membership T,T,F; first fails strictness, second has descending branch | pass | — |
| descTree | Usual natural < | [] and [2,1,0] belong; [0,1] and [0,0] fail; branch set empty | pass | — |
| analytic_type_bounded | A={usual ω-order}; A=∅ | β=ω+1 gives type ω<β; empty A admits β=0 | pass | — |
| not_analyticSet_wellOrderClass | Assume full WO analytic; any proposed β<ω₁ | Choose type γ=max(ω,β); γ≥β contradicts required γ<β | pass by bound argument | — |
| not_measurableSet_wellOrderClass | Same full class | Borel would imply analytic=T, contradict previous F | pass | R07 corollary |
| not_exists_modelsOf_eq_wellOrderClass | Hypothetical defining sentence | Its model class has Borel=T; WO has Borel=F, so equality=F | pass | — |
| scottHeight_fin_pureSet | m=0,1,2 | Left heights 1,2,3; right m+1=1,2,3 | pass | R07 worked examples |
| scottHeight_nat_pureSet | ℕ pure versus each Fin k | Every finite k fails stabilization, ω stabilizes; left height ω=right ω | pass | R07 worked example |

Additional rows cover anonymous instances, conventions, prose-only API and the sampled proof routes:

| Statement / convention | Instances | Computed values | Result / change |
| --- | --- | --- | --- |
| Countable query instance | Empty language; one unary on ℕ | Query cardinalities 0 and ℵ₀, both countable | pass |
| Product topology instance | Unary Fin 2 | Four codes; singleton cylinders fixing both coordinates are open | pass |
| Product measurable-space instance | Unary Fin 2 | All 16 subsets measurable | pass |
| Compact-space instance | Empty language; unary ℕ | Singleton compact; Cantor product compact | pass |
| Metrizable-space instance | Unary Fin 2 | Discrete distance is 0 on identical codes, 1 otherwise | pass |
| Second-countable instance | Unary ℕ | Finite Boolean cylinders form a countable basis, cardinality ℵ₀ | pass |
| Polish-space instance | Empty language | One point, complete discrete metric; nonempty not required of arbitrary Polish spaces | pass |
| Borel-space instance | Unary Fin 2 | Topological and product σ-algebras both contain 16 subsets | pass |
| Permutation topology instance | α=Fin 2 | Inverse-pair range has exactly (id,id),(swap,swap); induced topology discrete | pass |
| Action on queries | σ=(012), unary query at 0 | New query is at 1; inverse query at 2 | pass |
| Action on codes | σ=(012),τ=(01), P={0} | (στ)•P={2}; (τσ)•P={0}; σ•(τ•P)={2} | pass; R09 |
| Witness-language relational instance | Arity 0,1,2 | Function-symbol sets all empty; relational instance has no data to choose | pass |
| Closed inverse-pair embedding and pointwise topology | f=id on Fin 2, g=swap versus g=id | First pair fails inverse equation at 0 (1≠0), second satisfies both; evaluation cylinders separate bad pairs | pass |
| Finite point stabilizers open/closed | S₃ fixing {0} | Stabilizer {id,(12)} has 2 elements; complement has 4; both open | pass |
| Variable-index evaluation | I=Fin 2, e locally constant with e(x)=1, f(x)=(0,1) | Evaluated value 1 stays fixed locally; no arbitrary-index continuity assumption hidden | pass |
| Closure API for invariance | Unary one-P orbit O and its complement | O∩Oᶜ=∅, O∪Oᶜ=univ; all have constant membership along orbits | pass |
| Encoding composition / realization transport | P={0}, σ=(012), τ=(01) | Direct transport by στ and successive τ then σ give {2}; ∃P remains T | pass |
| Basic and finite cylinders | Unary Fin 2, demand P(0)=T,P(1)=F | Singleton code [T,F]; contradictory same-coordinate demand yields ∅ | pass |
| Cardinal equality and zero arity | Countable unary ℕ; only one nullary symbol | Cardinalities 𝔠 and 2; positive arity is necessary for equality | pass; R06 countability |
| Sentence constructor equations | Empty carrier; ∀x⊥ and ∃x⊤ | Universal model set=univ, existential=∅; empty intersection/union give the same | pass |
| Satisfaction locality and equivariance | P(x), assign x=0; swap 0,1 | At transported assignment 1, transported code has P=T; changing unused variable has no effect | pass |
| Quantifier-free/universal/Gδ hierarchy | Unary all-P; finitely-many-P | All-P set closed singleton; finite-P set countable dense meagre, hence not Gδ in Cantor space | pass |
| Body monotonicity | Root tree ⊆ full ℕ tree | Bodies ∅⊆ℕ^ℕ | pass |
| Closed-set tree representation | A={constant-0 sequence}; A=∅ | Prefix tree is {0^n}; body exactly A; empty prefix tree has empty body | pass |
| Height monotonicity under strict-extension homomorphisms | Root tree mapped to root of [],[0] tree | 1≤2; map reversing root/leaf is not a relation homomorphism | pass |
| KB height bound | Decreasing-natural tree | Tree height ω+1; KB order is well-ordered and contains root after nodes of unbounded finite rank, so type≥ω+1 | pass |
| Kunen attempts-tree route | Constant root-only family | Attempts tree has only level 0, height1; each input tree maps identically; uniform strict bound2 | pass |
| Fixed-M Scott-formula section | Nullary opposite codes; β=0 | Scott-formula realization F and BF0 F; same code both T | pass; requires missing native syntax |
| External propagation to all higher levels | Pure Fin 1 at β=2 | BF2 forces matching cardinality/equality pattern; BFγ=T for all γ≥2 | pass |
| Universe-independent countable comparisons | Fin 2 versus its lifted copy | BF and SH unchanged, SH=3 on both; “N in Type” does not exclude a countable isomorphism type | pass |
| Constant-chain witness upgrade | Infinite pure sets, d distinct tuple entries | A fresh element remains fresh at every finite extension level; BF0,BF1,…,BFω all T | pass; general quantifiers need R05 |
| Orbit-rank upper bound | Pure structures | Every tuple orbitRank=0≤SH (1,2,3,ω in tested sizes) | pass |
| Borel strata and comparison chain | Pure ℕ | s=0,SR=1,SH=ω; 0≤ω≤0+ω and 1≤ω+1≤1+ω+1 | pass |
| Forced-tree root / finite-symbol clopenness | Opposite nullary symbols; finitely many symbols | Root membership F, tree∅, height0; fixed-node test is finite Boolean conjunction | pass |
| Forced-tree rank bound, positive level | Unary structures with respectively one and two P-elements | BF1 of empty tuples=T, BF2=F; scheduling can support depth≥1 so tree height≥2>1 | pass |
| Uniform separation for two analytic classes | B={empty-P}, C=one-P orbit | Every pair fails BF1; uniform β=1, independent of pair | pass |
| PC numerals and query padding | Standard witness g=0; decode fails at i | ν₀={0},ν₁={1},ν₂={2}; χ_i=F exactly equals padded query bit F | pass |
| PC numeral axiom excludes wrong models | Successor on ℕ plus disjoint ℤ-chain; finite successor cycle | Extra ℤ elements satisfy no ν_k, axiom F; finite cycle violates zero omitted from successor range | pass |
| PC tree clause at n=0 | Empty tree versus tree containing root | Empty disjunction F versus empty conjunction T; empty tree cannot acquire spurious models | pass |
| PC soundness without invariance | Tree representing singleton {c_0}; enumerate using swap(01) | Reduct code can be c_1 rather than c_0; it belongs to saturation, not the original singleton | pass |
| Hard-direction disjointness | Same unary structure encoded with P={0} and P={1}; B=one-P orbit | Membership of both encodings T; cannot have second in Bᶜ; singleton B would give T/F | pass; invariance is essential |
| Sum-structure reduct reconstruction | Base P={0}; auxiliary g=0 | Reducts retain P and g separately; reassembly returns both coordinate interpretations unchanged | pass |
| Hard-direction packaging | Empty language ∅/univ | Trees empty/full produce separator ⊥/⊤; model class equals original on the single code | pass |
| Invariant separation needs invariant B | A={c_0}, B={c_1} | Disjoint=T but invariant B=F; every invariant C containing c_0 also contains c_1 | pass; missing hypothesis would be false |
| Well-order invariance | Relabel usual ℕ order by a transposition | Order type remains ω; diagonal stays F | pass |
| Descending-tree order-type bound | Natural order and finite order on Fin 2 | Types ω and 2; heights ω+1 and 3, so type≤height | pass |
| Non-linear well-founded relation control | Empty relation on ℕ | Descending tree height2, no infinite branch, but well-order class membership F | pass |
| No thinness for extra predicates | Fix ℕ order and vary P⊆ℕ | Order automorphism group trivial; P≠Q yields nonisomorphic expansions; 2^ℵ₀ distinct types | pass |
| Unary worked example | P=2ℕ and 3ℕ | Both color cardinal pairs (ℵ₀,ℵ₀); iso=T and BFβ=T for every β | pass |
| DLO worked example | ℚ order transported to ℕ; ℕ order | DLO truth T/F, natural order fails density/no-endpoints; countable DLO class one orbit | mathematical example passes; R02 citation |
| Rado-graph worked example | Rado extension property; empty graph | ∀finite disjoint U,V has witness in Rado=T; for empty graph U={0},V=∅ gives F | pass |
| Internal rank is not empty-tuple isolating level (source control) | Unary all-P and no-P structures on ℕ | Each s=0, SR=1; BF0=T but isomorphism=F | source error avoided by roadmap |
| One-step tuple stability is not orbit stability (source control) | Vertex in K₂ versus vertex in K₃ inside K₂⊔K₃ | BF0=T, BF1=T, BF2=F; one-step “rank”0 versus actual orbitRank2 | source error avoided by parent convention |

The PC argument was checked beyond the toy cases: the numeral axioms force an injective, exhaustive ℕ-enumeration; length-zero is included in the tree clause; the two expansions in the hard direction supply two enumerations of the same reduct; invariance makes those memberships agree. No fragment Löwenheim–Skolem theorem or model-theoretic well-order boundedness is needed on this route. For tree boundedness, a branch of the attempts tree gives witnesses converging to its Baire coordinate; each closed node condition survives the limit. This is why closed node sets suffice, without asserting a continuous tree-valued map.

**Seeded source audit (12 of 12 targets examined; partial certification).** The README supplies no claim-level locators for these targets. I fetched the legal texts below through the sources service and read the indicated extracted lines. These are replacement locators for the versions actually read, not invented locators into unavailable books. The original López-Escobar and Vaught papers were OCR extractions of two-page spreads; the printed page numbers below differ from extraction page numbers.

| Sampled target | Text and locator inspected | Support and limits |
| --- | --- | --- |
| 1.1 Permutation group | `vaught1974` lines 389–404, §3, printed p.282 | Introduces the permutation group and product topology for ℕ. Does not literally state the roadmap's arbitrary discrete carrier construction; that extension was checked through the inverse-pair embedding and finite stabilizers. |
| 1.2 Logic action | `vaught1974` lines 389–404, §3, p.282; `marker2016` lines 995–998, 2013 notes p.30 | Countable-carrier action convention agrees with inverse transport. General carriers require the stated extension. Native `arrowAction` was checked independently. |
| 4.1 Borel BF and isomorphism | `marker2016` lines 1000–1008 and 1096–1107, 2013 notes Corollaries 3.3–3.4, pp.30,33 | Satisfaction and orbit Borelness are supported. The notes' empty-tuple internal-rank shortcut is false; see errata. |
| 4.2 External Scott height | `infinitary-logic` lines 63–125, 152, `Scott/RefinementCount.lean`, revision `518a366cba97b1ae8c4dc64a297a396939bc3e0b` | Read the constant-chain proof and countability binders. It supports the countable version; the arbitrary-cardinality claim needs the explicitly described adaptation, R05. No printed source locator for the entire comparison block was certified. |
| 4.3 Borel isomorphism and strata | `marker2016` lines 1106–1117, 2013 notes p.33; supplier internal stabilization contract | The bounded-rank Borelness discussion is relevant but its same-level identification is incorrect. The roadmap's external-height version and diagonal countable-intersection argument avoid that error; no exact source locator for both adapted targets was supplied. |
| 4.4 Forced trees and uniform separation | README's named BFTree/BFSeparation provenance; Kechris §31 citation | Mathematical construction and boundedness reduction checked, including nullary failure and rank direction. The cited source files were not all read, and the book text is unavailable: not source-certified. |
| 5.1 Easy direction | `marker2016` lines 956–998, 2013 notes Lemma 3.1, pp.29–30; `vaught1974` lines 416–421, §3, p.284 | Borel satisfaction and invariance support the implication. Countable language and carrier hypotheses match. |
| 5.2 PC sentence of a tree | `marker2016` lines 1679–1720, 2013 notes Lemma 4.24, pp.50–51 | Source uses functional witnesses and extra relations. The roadmap's finite relational vocabulary is an adaptation; its exhaustive numeral axiom and padding were checked directly. |
| 5.3 Hard direction | `marker2016` lines 1666–1674, 1724–1738, 2013 notes Corollary 4.23, Theorem 4.26 and footnote 8, pp.50–51 | PC separation supports the route. The footnote permits ensuring countability directly, matching the roadmap's alternative to a Löwenheim–Skolem step. |
| 5.4 Packaging | `vaught1974` lines 433–450, Theorem 3.2 and Corollary 3.3, p.285; `lopez1965` lines 451–495, §5, printed pp.268–269 | Vaught's invariant Borel characterization supports the endpoint. López-Escobar's Theorem 5.3 is phrased for invariant Borel functions in a particular coding, not literally this full signature. The σ-algebra equality also uses the checked native invariant σ-algebra definition. |
| 6.1 Invariant separation | `vaught1974` lines 328–354, (10), printed pp.280–281; `marker2016` lines 1721–1722, Corollary 4.25, p.51 | These passages require both analytic classes invariant. The roadmap allows arbitrary analytic A and invariant B: saturate A first, or invoke BorelEquivalenceRelations §2.2, whose stronger signature was read. |
| 6.2 Coded well-order class | `marker2016` lines 1732–1743, 2013 notes Theorem 4.27/Corollary 4.28, pp.51–52; Kechris §31 citation | Marker gives model-theoretic boundedness, whereas this roadmap uses descriptive tree boundedness. It is not a locator for the proposed proof. The descending-tree calculations were checked; the descriptive source remains uncertified. |

Legal texts read: [Marker's 2013 author notes](https://homepages.math.uic.edu/~marker/math512-F13/inf.pdf), [López-Escobar in the ICM archive](https://matwbn.icm.edu.pl/ksiazki/fm/fm57/fm57119.pdf), [Vaught in the ICM archive](https://matwbn.icm.edu.pl/ksiazki/fm/fm82/fm82118.pdf), and the [immutable refinement proof](https://github.com/cameronfreer/infinitary-logic/blob/518a366cba97b1ae8c4dc64a297a396939bc3e0b/InfinitaryLogic/Scott/RefinementCount.lean). The `marker2016` key is retained for the same work's available notes, not a claim that their numbering equals the 2016 edition. No fetched source was executed or copied into the repository.

For the rank erratum, an additional finite recurrence checked all 326 injective tuples of K₂ ⊔ K₃, of lengths 0–5. It computed supremum of one-step tuple ranks = 1, but internal stabilization = 2; vertices in different components give BF₀ = T, BF₁ = T, BF₂ = F. Repeated coordinates reduce to these equality patterns. Adjoining countably many isolated vertices gives the same separation between 1 and 2 if an infinite carrier is required.

## Not verifiable

- **Kechris (1995):** the source service resolved the Springer DOI but classified the text as paywalled/uncertified. The cited §§2, 9, 14, 16 and 31 were not read. Their chapter descriptions, precise theorem numbers and Kunen proof locator are not certified. This settled uncertified citation is not requested again.
- **Gao (2009):** the Taylor & Francis DOI landing page did not expose a readable legal book. The institutional catalog result exposed bibliographic/front-matter information, not the required arguments. No theorem numbers were guessed. Retained in the missing-reference request.
- **Keisler (1971):** the source service and legal author/library bibliography searches did not yield the text. The PC/interpolation statements were instead compared with the readable Marker notes and named supplier. Retained in the missing-reference request.
- **Marker (2016) published numbering:** Cambridge's landing page did not provide the full book. The author's 2013 notes were read; agreement of their numbering and corrections with the 2016 publication is unknown. All Marker locators above and errata below explicitly refer to those notes.
- **Complete reference-formalization audit:** `RefinementCount.lean` was read, including its proof, not executed. The README's blanket assertion about the whole repository's absence of `sorry` and exact axiom set was not reproduced. The remaining named source modules were not certified declaration by declaration. This is distinct from the pin audit: none supplies a native pinned infinitary carrier.
- **Remaining exact locators:** especially the adapted external-height, forced-tree and descriptive well-order-boundedness results have not been matched to exact legal source passages at their stated generality. The report records direct mathematical checks, not source certification for these claims. Review is finished, with these limits explicit; no source manifest or roadmap file was edited.

## Source issues

- **Misprint** in marker2016 (2013 notes) at Lemma 2.17 proof, printed p.18 (`marker2016` line 582): the source says the comparison witness belongs to N, which is not defined there; it should be a witness in M; affects the proof.
- **Error** in marker2016 (2013 notes) at Definition 2.18, printed p.18 (`marker2016` lines 590–596): the source says internal rank is the supremum of first one-step tuple-stability levels; it should be the supremum of full tuple-stabilization levels, since the K₂ ⊔ K₃ test gives 1 versus 2; affects a stated result.
- **Misprint** in marker2016 (2013 notes) at Exercise 2.21(a), printed p.19 (`marker2016` lines 609–612): the source says its β-indexed formula in M compares level α with an unspecified N; it should compare both tuples in M at level β; affects a stated result.
- **Error** in marker2016 (2013 notes) at §3.2 bounded-rank discussion, printed p.33 (`marker2016` lines 1106–1117): the source says empty-tuple equivalence at the internal stabilization rank already implies isomorphism; it should use a sufficient external level, for example internal rank plus ω for countable structures; affects a stated result.
- **Misprint** in marker2016 (2013 notes) at end of the Interpolation Theorem proof, printed p.49 (`marker2016` line 1657): the source says the universal-to-existential implication uses φ; it should use ψ, the formula introduced immediately before it; affects the proof.
- **Misprint** in marker2016 (2013 notes) at Corollary 4.23 proof, printed p.50 (`marker2016` line 1669): the source says the two auxiliary languages intersect as τ₁ and τ₂; it should use τ₀ and τ₁, the languages actually introduced; affects the proof.
- **Misprint** in marker2016 (2013 notes) at Lemma 4.24 proof, printed p.51 (`marker2016` line 1719): the source says the reconstructed structure uses R*; it should use the reconstructed relation R-hat defined in that sentence; affects the proof.
