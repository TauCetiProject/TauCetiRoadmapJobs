# Roadmap: countable structure spaces, Part II: Borel reducibility of isomorphism relations and Borel completeness

**Summary.** The CountableStructureSpaces roadmap, over Tau Ceti's coding space
`RelationalConfiguration L ℕ`, builds the compact Polish space of relational structures on ℕ, the
Polish group S∞ = `Equiv.Perm ℕ` acting on it by relabelling, and the isomorphism relation
`isoSetoid L ℕ` as the orbit relation of that action. This Part II compares isomorphism relations
of different classes of countable structures by Borel reducibility, in the sense of
`Setoid.BorelReducible`. It
defines Borel completeness of an invariant Borel class (every invariant Borel class of every
countable relational language reduces to it), extends the notion to languages with function
symbols, and proves the Friedman–Stanley theorem: countable graphs, countable trees and countable
linear orders are Borel complete, through explicit continuous codings. It proves the
Becker–Kechris universality theorem for S∞ (every Borel S∞-space embeds equivariantly into the
logic action of the language with one `n`-ary relation symbol for each `n`) and the five standard
characterisations of Borel completeness. It ends with the consequences of Borel completeness: the
isomorphism relation is not Borel (through an explicit back-and-forth computation on ordinal
multiples and the base's uniform separation theorem), lies above E₀, has continuum many classes
and is not smooth, the class has unbounded Scott height, and the Friedman–Stanley obstruction
shows that a class stratified into Borel pieces by a rank bounded on analytic sets is not Borel
complete.

## Scope and ownership

This roadmap continues CountableStructureSpaces, which stops at the isomorphism relation of a
single class (its Layers 4 and 6) and names Borel completeness of graphs and linear orders as
outside its scope. This Part II owns:

- the restriction `classIso K` of isomorphism to a set `K` of codes on any carrier (it differs
  from CountableModelCounting Layer 0's `isoSetoidOn α φ`, the restriction to the models of one
  sentence, in allowing arbitrary, possibly non-invariant, sets, as Layers 0.1 and 5 need), the
  restriction and corestriction laws for Borel reductions between classes, and set reducibility
  `SetReducible` with the implication from Borel reducibility (Layer 0);
- carrier relabelling of codes as a homeomorphism compatible with decoding (the underlying map is
  Tau Ceti's `RelationalConfiguration.restrict`), the definition `BorelComplete` with its transfer
  laws, and the functional coding space of a language with function symbols with its comparison
  to the graph language (Layer 1);
- the incidence-graph and clique-tag codings and the Borel completeness of graphs (Layer 2);
- the dense colouring of ℚ, the unravelling of a graph into a coloured tree and a coloured linear
  order on finite sequences of rationals, the colour-elimination codings, and the Borel
  completeness of linear orders and trees, with the two presentations of trees (Layer 3);
- Borel S∞-spaces and the universal embedding into the logic action of the universal language
  (Layer 4);
- the characterisations of Borel completeness (Layer 5);
- the interval lemma and the back-and-forth computation for ordinal multiples, the
  non-Borelness of Borel complete isomorphism relations, the reduction of E₀, the obstruction
  lemma and the comparison with the lower part of the reducibility order (Layer 6).

It leaves to named roadmaps, and does not restate:

- the general theory of Borel reducibility, smoothness and E₀ (BorelEquivalenceRelations
  §5.1–§5.4), implemented in Tau Ceti at the pin as `Setoid.BorelReducible`, `Setoid.IsSmooth` and
  `TauCeti.eZero` with the API listed under the supplier contracts;
- the coding space `RelationalConfiguration` with decoding, transport, topology and Polish
  structure, the topology on `Equiv.Perm ℕ`, the logic action, isomorphism as the orbit relation,
  isomorphism invariance, model classes and the graph coding (CountableStructureSpaces Layers 0–2
  and 4.1, implemented in Tau Ceti at the pin); and the targets of CountableStructureSpaces that
  the pin does not implement: joint continuity of the logic action (Layer 1.2), closedness of the
  set of simple-graph codes (Layer 0), the boundedness theorem for tree heights (Layer 3), Borel
  isomorphism under bounded Scott height (Layer 4.3), uniform back-and-forth separation
  (Layer 4.4), López–Escobar (Layer 5) and the well-order class (Layer 6.2);
- back-and-forth equivalence, tuple back-and-forth systems, the countable back-and-forth theorem
  (InfinitaryLogic, Layer 1) and the external Scott height (CountableStructureSpaces Layer 4.2),
  implemented in Tau Ceti at the pin as `TauCeti.BFEquiv`, `TauCeti.IsTupleBFSystem` and
  `TauCeti.scottHeight`;
- the small presentation of a countable language in universe 0 (InfinitaryModelExistence
  Layer 0.3), the graph language and the graph expansion of a structure with function symbols
  (InfinitaryModelExistence Layer 6), and the homeomorphism of coding spaces induced by a language
  equivalence (CountableModelCounting Layer 0, transport between presentations), all implemented
  in Tau Ceti at the pin (`FirstOrder.Language.smallPresentationEquiv`,
  `FirstOrder.Language.graphLanguage`, `FirstOrder.Language.LEquiv.onConfiguration`);
- the Polish realization of a Borel action of a Polish group, with the Vaught transforms and the
  Montgomery–Novikov theorem it is proved from (NoncompactQuantumSymmetry Layer 4,
  M1.BorelRealization).

Universal Borel G-spaces for Polish groups other than S∞, Polish group actions in general,
countable Borel equivalence relations, hyperfiniteness and the Glimm–Effros dichotomy are not
part of this roadmap. The Borel completeness of specific algebraic classes (Boolean algebras:
camerlo-gao-boolean Theorem 1, line 405, and the theorem at line 555, through separable Boolean
spaces and Stone duality; groups: the class-2 nilpotent groups of exponent `p` of mekler-1981 §2;
fields of a fixed characteristic: friedman-stanley-1989 §3; torsion-free abelian groups:
paolini-shelah-tfab Main Theorem, lines 169–171), the complete analyticity of Borel complete
isomorphism relations (paolini-shelah-tfab Fact 1.7, lines 103–106; the classical routes go
through reduced and divisible abelian `p`-groups or through the Harrison ordering,
montalban-cst2 Lemma XI.2, lines 8946–8980) and the torsion abelian group case of the obstruction
(friedman-stanley-1989 §4; hjorth-kechris-1996 §4–§5; it needs Ulm's theorem) belong to a
roadmap on the Borel completeness of algebraic classes, which consumes `BorelComplete`, Layer 1.3,
Layer 5 and Layer 6.4; nothing below depends on them.

## Conventions

1. **Languages.** `L : FirstOrder.Language.{u, v}` is relational, with `[L.IsRelational]` and
   `[∀ n, Countable (L.Relations n)]` as separate instance arguments, as in the base and in Tau
   Ceti; since ℕ is countable this is equivalent to countability of `Σ l, L.Relations l`, the form
   in which `smallPresentation` takes it. The source languages quantified over in the definition
   of Borel completeness live in `FirstOrder.Language.{0, 0}`; Layer 1.2 proves that any other
   universe gives the same notion.
2. **Classes and their isomorphism relations.** Codes on a carrier `α` are Tau Ceti's
   `RelationalConfiguration L α`, read by `c.eval (atom R v)`; codes on ℕ are written
   `RelationalConfiguration L ℕ`, with no abbreviation. A class is a set
   `K : Set (RelationalConfiguration L α)`; where no carrier is named, `α = ℕ`, and Borel
   completeness is defined for classes on ℕ only. A class is *invariant Borel* when
   `MeasurableSet K` and Tau Ceti's `RelationalConfiguration.IsomorphismInvariant K` hold
   (equivalently `MulAction.IsInvariantBlock (Equiv.Perm α) K`, Tau Ceti
   `isomorphismInvariant_iff_isInvariantBlock`). For relational `L` and every carrier `α`,
   `classIso K` is Tau Ceti's `isoSetoid L α` pulled back to the subtype `K`, written ≅_K; `K`
   carries the subtype σ-algebra. A Borel reduction between classes is
   `Setoid.BorelReducible (classIso K') (classIso K)`.
3. **Continuity.** The structure-to-graph coding of Layer 2.3 is continuous on the whole of
   `RelationalConfiguration L' ℕ`, and the graph-to-order and graph-to-tree codings of Layers 3.3
   and 3.4 are continuous on the whole of `RelationalConfiguration Language.graph ℕ`, simple graph
   or not; the theorems state this. The cover-graph reduction of Layer 3.5 is Borel and not
   continuous, even on `treeClass`, and is stated as Borel only. Outside Layers 2 and 3,
   continuity is claimed only where a section proves it (Layers 1.3, 4.2 step 3 and 6.3).
4. **The logic action.** Tau Ceti's relabelling action, `σ • c = c.restrict σ⁻¹`
   (`perm_smul_def`), so `(σ • c).eval (atom R v) = c.eval (atom R (σ⁻¹ ∘ v))` (`eval_perm_smul`;
   base Layer 1.2 `eval_smul_atom`). Witness: in the language of one unary predicate, the 3-cycle
   `0 ↦ 1 ↦ 2 ↦ 0` sends the code of `P = {0}` to the code of `P = {1}` (base Layer 1.2 acceptance
   check); every equivariance computation below is checked against this convention.
5. **S∞ as a Borel space.** `Equiv.Perm ℕ` carries Tau Ceti's topology
   `Equiv.Perm.instTopologicalSpace` and the Borel σ-algebra of that topology (Layer 4.1). A
   *Borel S∞-space* is a standard Borel space with a `MulAction` whose action map is jointly
   measurable (Mathlib `MeasurableSMul₂`).
6. **Fixed languages.** Graphs are codes in Mathlib's `Language.graph` (one binary symbol `adj`);
   the simple-graph codes are those satisfying Tau Ceti's `RelationalConfiguration.IsSimpleGraph`.
   Linear orders and trees are codes in Mathlib's `Language.order` (one binary symbol), read as a
   non-strict order, as Mathlib's `orderStructure` does.
7. **Trees** are order-theoretic: a partial order with a least element in which every principal
   down-set `{y | y ≤ x}` is finite and linearly ordered.
8. **Finite sequences of rationals.** `List ℚ` carries Mathlib's lexicographic linear order
   (`Mathlib/Data/List/Lex.lean`), in which a proper prefix comes first, and the prefix relation
   `<+:`. Witness: `[] < [0] < [0, 5] < [1/2] < [1]`.
9. **The dense colouring.** `ν(r) := padicValNat 2 r.den` for `r : ℚ`. Witness: `ν(3/4) = 2`,
   `ν(5) = 0`, `ν(-1/6) = 1`, `ν(1/8008) = 3`.
10. **Ordinals.** Ordinals are in `Ordinal.{0}`, ω₁ is `Ordinal.omega 1`, and `ω ^ γ` is
    `Ordinal.omega0 ^ γ`. Back-and-forth levels are Tau Ceti's `TauCeti.BFEquiv` (relational
    languages; at a successor the previous level is retained, `BFEquiv.add_one`).

## Exact supplier contracts

### From Mathlib

Read at the pinned commit.

- `FirstOrder.Language.graph`, `SimpleGraph.structure`, `FirstOrder.Language.Theory.simpleGraph`
  and `Theory.simpleGraph_model_iff` (`Mathlib/ModelTheory/Graph.lean`): the language with one
  binary symbol, and the theory of irreflexive symmetric relations.
- `FirstOrder.Language.order`, `FirstOrder.Language.orderStructure`,
  `FirstOrder.Language.linearOrderTheory` (`Mathlib/ModelTheory/Order.lean`): the language with
  one binary symbol, its interpretation as `≤`, and the theory of linear orders (reflexive,
  transitive, antisymmetric, total).
- `FirstOrder.Language.ring`, `FirstOrder.Language.Theory.field`,
  `FirstOrder.Language.Theory.fieldOfChar` (`Mathlib/ModelTheory/Algebra/`): used only in the
  Checks of Layer 1.3.
- `FirstOrder.Language.IsExtensionPair`, `FirstOrder.Language.equiv_between_cg`
  (`Mathlib/ModelTheory/PartialEquiv.lean`) and `FirstOrder.Language.Structure.cg_of_countable`
  (`Mathlib/ModelTheory/FinitelyGenerated.lean`): back-and-forth between countable structures in
  which every finite partial isomorphism extends; used for the coloured Cantor theorem. They
  quantify over all finitely generated partial isomorphisms, which is why InfinitaryLogic's
  tuple systems are used for the unravelling lemma instead. Mathlib's
  `Order.iso_of_countable_dense` (`Mathlib/Order/CountableDenseLinearOrder.lean`) is the
  uncoloured case and has no colours to preserve.
- `MeasurableSMul₂` (`Mathlib/MeasureTheory/Group/Arithmetic.lean`, joint measurability of the
  action map), `ContinuousSMul.measurableSMul₂` (`Mathlib/MeasureTheory/Constructions/BorelSpace/Basic.lean`,
  continuity gives joint measurability under second countability), `Prod.borelSpace`.
- `StandardBorelSpace`, `MeasureTheory.AnalyticSet`, `MeasureTheory.AnalyticSet.preimage`,
  `MeasurableSet.analyticSet_image`, `MeasurableSet.image_of_measurable_injOn` (Lusin–Souslin),
  `Measurable.exists_continuous`, `MeasureTheory.AnalyticSet.measurableSet_of_compl` (Suslin)
  (`Mathlib/MeasureTheory/Constructions/Polish/Basic.lean`).
- `Setoid.comap`, `measurable_subtype_coe`, `Measurable.subtype_mk`, `MulAction.orbitRel`,
  `Equiv.Perm.applyMulAction`, `borel`, `BorelSpace`, `SimpleGraph`.
- `padicValNat`, `Rat.den`, Mathlib's lexicographic `LinearOrder (List α)`, `List.IsPrefix`,
  `Descriptive.tree` (`Mathlib/SetTheory/Descriptive/Tree.lean`), `Nat.pair`, `Nat.unpair`,
  `Nat.right_le_pair`, `Nat.unpair_right_le`, `Encodable.ofCountable`, `Ordinal.type`,
  `Ordinal.ToType`, `Ordinal.omega0`, `Ordinal.omega`.

Mathlib has no Borel reducibility, no topology or σ-algebra on `Equiv.Perm ℕ` and no space of
structures.

### From Tau Ceti

Read at the pinned commit; every name is Tau Ceti's. These declarations implement the coding
space and the descriptive set theory of the base roadmap, the general Borel reducibility theory
of BorelEquivalenceRelations, the back-and-forth theory of InfinitaryLogic, and the small
presentation, graph translation and presentation transport of InfinitaryModelExistence and
CountableModelCounting; they are consumed here directly.

- `TauCeti/ModelTheory/RelationalConfiguration/Basic.lean`: `RelationalConfiguration L α`, a `def`
  for `Atom L α → Bool` with `Atom L α := Σ n, L.Relations n × (Fin n → α)`, defined for every
  language and carrier; `atom`, `eval`, `ext`, `measurable_iff`, `measurableSet_setOf_eval`;
  `restrict f c` (the atom `R(x)` of `α` takes the value of `R(f ∘ x)`) with `eval_restrict`,
  `restrict_id`, `restrict_comp` and `measurable_restrict`; `ofStructure`; the action of
  `Equiv.Perm α` (`instMulActionPerm`) with `perm_smul_def` (`σ • c = c.restrict σ⁻¹`) and
  `eval_perm_smul`.
- `TauCeti/ModelTheory/RelationalConfiguration/Topology.lean`: the product topology with
  `CompactSpace` and `T2Space` for every language and carrier; `continuous_eval`, `continuous_iff`
  (a map into codes is continuous exactly when every atom coordinate is), `continuous_restrict`,
  `continuous_uncurry_restrict`, `isClopen_setOf_eval`; under
  `[∀ n, Countable (L.Relations n)] [Countable α]` the `SecondCountableTopology`, `PolishSpace`
  and `BorelSpace` instances, and `mk_le_continuum`.
- `TauCeti/ModelTheory/RelationalConfiguration/Structure.lean`: `toStructure` (for relational `L`)
  with `toStructure_relMap`; `Equiv.encodeVia e`, the code of the structure transported along
  `e : M ≃ α`, with `eval_encodeVia`, `toStructure_encodeVia`, `nonempty_equiv_encodeVia` and
  `encodeVia_trans`.
- `TauCeti/ModelTheory/RelationalConfiguration/Isomorphism.lean` (relational `L`): `isoSetoid L α`
  (the decoded structures are isomorphic) with `isoSetoid_apply`, `perm_smul_eq_encodeVia`,
  `isoSetoid_iff_exists_perm_smul_eq`, `isoSetoid_eq_orbitRel`, `Equiv.isoSetoid_encodeVia_iff`
  (two structures transported to one carrier have isomorphic codes exactly when they are
  isomorphic) and, for countably many relation symbols and a countable carrier,
  `analyticSet_setOf_isoSetoid`; `IsomorphismInvariant` with
  `isomorphismInvariant_iff_isInvariantBlock` and its closure under complement, union and
  intersection.
- `TauCeti/ModelTheory/RelationalConfiguration/ModelsOf.lean`: `modelsOf φ` for infinitary
  sentences, the carrier of the base theorems consumed in Layer 6.2.
- `TauCeti/ModelTheory/RelationalConfiguration/LanguageMap.lean`: for a language equivalence
  `e : L ≃ᴸ L'`, `LEquiv.onConfiguration e`, a homeomorphism of coding spaces on every carrier,
  with `eval_onConfiguration`, `onConfiguration_symm`, `onConfiguration_trans`,
  `measurable_onConfiguration`, and, for relational `L` and `L'`, `isoSetoid_onConfiguration_iff`
  (isomorphism is preserved and reflected) and `image_onConfiguration_modelsOf`.
- `TauCeti/Combinatorics/SimpleGraph/RelationalConfiguration.lean`:
  `RelationalConfiguration.adjAtom`, `IsSimpleGraph c` (adjacency symmetric and false on the
  diagonal), `IsSimpleGraph.restrict`, `measurableSet_setOf_isSimpleGraph`;
  `SimpleGraph.toRelationalConfiguration` with
  `SimpleGraph.eval_toRelationalConfiguration_adjAtom` (the adjacency bit of the code of `G` at
  `(u, v)` is `G.Adj u v`), `SimpleGraph.relationalConfigurationEquiv`, a measurable equivalence
  between `SimpleGraph V` and the subtype `{c // IsSimpleGraph c}`,
  `SimpleGraph.range_toRelationalConfiguration` (the range is `{c | IsSimpleGraph c}`) and
  `SimpleGraph.measurableEmbedding_toRelationalConfiguration`.
- `TauCeti/Topology/Algebra/Group/Perm.lean`: `Equiv.Perm.instTopologicalSpace` (pointwise
  convergence of `σ` and `σ⁻¹` on a discrete space), `Equiv.Perm.instIsTopologicalGroup`,
  `Equiv.Perm.instPolishSpace` (countable carrier) and `Equiv.Perm.hasBasis_nhds_one_fixingSubgroup`
  (the pointwise stabilizers of finite sets form a neighbourhood basis of `1`).
- `TauCeti/SetTheory/Descriptive/BorelReducibility.lean`: `Setoid.BorelReducible E F` (a measurable
  `f` with `E x y ↔ F (f x) (f y)`), `Setoid.borelReducible_comap`,
  `Setoid.borelReducible_iff_exists_eq_comap`, `BorelReducible.refl`, `BorelReducible.trans`,
  `BorelReducible.exists_measurable_injective_quotient`, `BorelReducible.lift_mk_quotient_le`,
  `BorelReducible.measurableSet_setOf` (a Borel graph pulls back); `Setoid.IsSmooth E` (Borel
  reducible to equality on `ℕ → Bool`), `IsSmooth.measurableSet_setOf` (a smooth relation has
  Borel graph) and `Setoid.isSmooth_of_countable_quotient` (countably many classes, each
  measurable).
- `TauCeti/SetTheory/Descriptive/EZero.lean`: `TauCeti.eZero` (eventual equality on `ℕ → Bool`)
  with `eZero_iff_finite`, `measurableSet_eZero`, `not_isSmooth_eZero`,
  `not_isSmooth_of_borelReducible_eZero`, `mk_quotient_eZero` (continuum many classes) and
  `borelReducible_bot_eZero`.
- `TauCeti/ModelTheory/BackAndForth/` (relational `L`): `TauCeti.BFEquiv α n a b` with the level
  `α` in any ordinal universe, `BFEquiv.zero`, `BFEquiv.add_one`, `BFEquiv.limit`, `BFEquiv.mono`,
  `BFEquiv.symm`, `BFEquiv.trans`; `FirstOrder.Language.Equiv.bfEquiv` (an isomorphism carries
  every tuple to one back-and-forth equivalent to it at every level); `TauCeti.SameAtomicType` and
  `TauCeti.sameAtomicType_order_iff` (in `Language.order`, same equalities and same comparisons);
  `TauCeti.IsTupleBFSystem` (contains the empty pair, preserves atomic types, closed under forth
  and back), `TauCeti.potentialIso_iff_exists_isTupleBFSystem` and
  `TauCeti.countable_potentialIso_iff_iso`.
- `TauCeti/ModelTheory/Scott/Height.lean`: `TauCeti.scottHeight`.
- `TauCeti/ModelTheory/Infinitary/SmallPresentation.lean`: for countably many function and
  relation symbols, `FirstOrder.Language.smallPresentation L : Language.{0, 0}` and
  `smallPresentationEquiv : L ≃ᴸ L.smallPresentation`, with the instances
  `isRelational_smallPresentation` and `countable_relations_smallPresentation`.
- `TauCeti/ModelTheory/Infinitary/GraphTranslation/`: `FirstOrder.Language.GraphRelation`,
  `graphLanguage L` (relational, in the universes of `L`, one `(k + 1)`-ary symbol
  `GraphRelation.graph f` for each `k`-ary function symbol and `GraphRelation.base R` for each
  relation symbol), `graphExpansion L M`, `graphAxioms` with `model_graphAxioms_iff`,
  `reconstructStructure` and `reconstructStructure_graphExpansion`.

Neither pin puts a σ-algebra on `Equiv.Perm ℕ`; Layer 4.1 supplies it.

### From TauCetiRoadmap.CountableStructureSpaces

The targets of the base that the pin does not implement, by the base's names and sections:

- Layer 0: closedness of `{c | IsSimpleGraph c}`, the range of the graph coding (Checks of 1.2 and
  2.3).
- Layer 1.2: `continuousSMul_relationalConfiguration`, joint continuity of the logic action for
  every language.
- Layer 3: `analytic_treeHeight_bounded` (an analytic family of well-founded trees with closed node
  sets has heights bounded below `ω₁`), used in a Check of Layer 6.4.
- Layer 4.3: `measurableSet_iso_inter_of_scottHeight_le` (Scott height bounded by `β < ω₁` on
  `modelsOf φ` makes isomorphism restricted to `modelsOf φ` Borel in the square).
- Layer 4.4: `exists_uniform_bfSeparation` (an analytic set of non-isomorphic pairs of codes is
  separated at one level `β < ω₁`).
- Layer 5: `lopez_escobar` (an invariant Borel class of codes is `modelsOf φ` for a sentence `φ`).
- Layer 6.2: `wellOrderClass`, `exists_mem_wellOrderClass_type_eq`,
  `analyticSet_compl_wellOrderClass` and `not_measurableSet_wellOrderClass`, used in Checks.
- Worked example 2: the codes of one unary predicate have Scott height at most `ω` and countably
  many orbits, each Borel.

### From TauCetiRoadmap.NoncompactQuantumSymmetry

Layer 4, M1.BorelRealization: `exists_polishTopology_continuousSMul` — for a Polish group `G`
with its Borel σ-algebra and a standard Borel space `X` with a `MulAction G X` satisfying
`MeasurableSMul₂ G X`, there is a Polish topology on `X` whose Borel σ-algebra is the given one
and for which the action is continuous. That layer owns the Vaught transforms and the
Montgomery–Novikov theorem used in its proof.

No contract above is missing or partial.

## How to read the build

Layer 0 sets up the vocabulary for comparing classes: isomorphism restricted to a class and set
reducibility. Layer 1 defines Borel completeness, makes the definition independent of universes
and of the naming of symbols, and extends it to languages with function symbols. Layer 2 codes
every countable relational structure into a graph, so graphs are Borel complete. Layer 3 codes
graphs into coloured trees and coloured linear orders on `List ℚ` and removes the colours, so
trees and linear orders are Borel complete. Layer 4 embeds every Borel S∞-space into the logic
action of one fixed language, using the Polish realization of NoncompactQuantumSymmetry. Layer 5
assembles the characterisations of Borel completeness from Layers 0–4. Layer 6 draws the
consequences; its back-and-forth computation for ordinal multiples (6.1) depends only on Tau
Ceti's `BFEquiv` and Mathlib's ordinals and can be built in parallel with Layers 1–5.

## Layer 0: Isomorphism relations of classes and two reducibilities

### 0.1 Isomorphism restricted to a class

For a relational language `L` (`[L.IsRelational]`; no countability is needed) and any carrier
`α`, define `classIso K : Setoid K` for `K : Set (RelationalConfiguration L α)` as
`Setoid.comap Subtype.val (isoSetoid L α)`, the pullback of Tau Ceti's `isoSetoid L α` along the
inclusion `K → RelationalConfiguration L α`, with `K` carrying the subtype σ-algebra
(paolini-shelah-tfab Definition 1.4, line 83; camerlo-gao-boolean lines 106–110, where the
carrier is ℕ; the other carriers are used for relabelling in Layer 1.1). API:

- Unfolding: for `x y : K`, `classIso K x y` holds exactly when the decoded structures of `x` and
  `y` are isomorphic (`isoSetoid_apply`), and exactly when `x` and `y` lie in one orbit of the
  logic action of `Equiv.Perm α` (`isoSetoid_eq_orbitRel`).
- Whole space: for `K = Set.univ` the inclusion is a measurable equivalence, so `classIso univ`
  and `isoSetoid L α` are Borel reducible to each other.
- Restriction: if `A ⊆ K` are sets of codes on one carrier, then `classIso A` is `Setoid.comap`
  of `classIso K` along the inclusion `A → K`, which is measurable for every `A`
  (`measurable_subtype_coe`, `Measurable.subtype_mk`), so `classIso A` is Borel reducible to
  `classIso K` (`Setoid.borelReducible_comap`); hence, if `classIso K'` is Borel reducible to
  `classIso K` and `A ⊆ K'`, then `classIso A` is Borel reducible to `classIso K`
  (paolini-shelah-tfab Definition 1.6, lines 95–101).
- Corestriction: for relational `L'` and carriers `β`, `α`, if
  `f : RelationalConfiguration L' β → RelationalConfiguration L α` is measurable, maps
  `K' : Set (RelationalConfiguration L' β)` into `K : Set (RelationalConfiguration L α)`, and for
  all `x y ∈ K'` the codes `x, y` are isomorphic exactly when `f x, f y` are, then `classIso K'`
  is Borel reducible to `classIso K`, by the corestriction of `f`
  (`Setoid.borelReducible_iff_exists_eq_comap`). Every reduction constructed in this roadmap is
  produced this way.
- Quotients: a reduction of `classIso K'` to `classIso K` induces an injection of the set of
  isomorphism types of `K'` into that of `K` (`BorelReducible.exists_measurable_injective_quotient`,
  not restated); the reduction itself need not be injective on codes.

*Needs:* Tau Ceti `isoSetoid`, `isoSetoid_apply`, `isoSetoid_eq_orbitRel`,
`Setoid.BorelReducible`, `Setoid.borelReducible_comap`, `Setoid.borelReducible_iff_exists_eq_comap`,
`BorelReducible.trans`; Mathlib `Setoid.comap`, `measurable_subtype_coe`,
`Measurable.subtype_mk`.

**Checks.**

- In the language of one unary predicate, the class `K` of the two codes `P = ∅` and `P = ℕ` is
  invariant Borel; `classIso K` is equality on `K`, with exactly two classes, while the class of
  all codes with `P` finite has countably many classes (one for each size).
- For `K = ∅`, `classIso ∅` is Borel reducible to every `classIso K` (by the empty map), and
  `classIso K` is Borel reducible to `classIso ∅` exactly when `K = ∅`.
- Let `K'` be the class of codes with `P` infinite and coinfinite (one orbit, uncountably many
  codes) and `K` any nonempty class; the constant map to one code of `K` reduces `classIso K'` to
  `classIso K`, and is not injective on codes: reductions are not injective in general.
- With `A` the codes with `P = {0}` (not invariant) inside `K` the codes with `|P| = 1`, the
  inclusion reduces `classIso A` to `classIso K`; `classIso A` has one class, as `K` does.
- On the finite carrier `Fin 2`, with one unary predicate, `classIso univ` has three classes on
  the four codes (`|P| = 0, 1, 2`): the codes `P = {0}` and `P = {1}` are related, by the
  transposition, so `classIso univ` is not equality on codes, and `P = ∅`, `P = {0}` are not, so
  it is not the trivial relation.

### 0.2 Set reducibility and the comparison with Borel reducibility

Define `SetReducible A B` for `A : Set X`, `B : Set Y` on measurable spaces: some measurable
`f : X → Y` has `x ∈ A ↔ f x ∈ B` for every `x` (paolini-shelah-tfab Definition 1.2,
lines 70–73). API:

- Reflexivity and transitivity; `SetReducible A B ↔ SetReducible Aᶜ Bᶜ`.
- Borelness pulls back: `SetReducible A B` and `MeasurableSet B` give `MeasurableSet A`.
- Analyticity pulls back between Polish Borel spaces: for `X`, `Y` Polish with their Borel
  σ-algebras, `SetReducible A B` and `AnalyticSet B` give `AnalyticSet A` (refine the topology of
  `X` so that `f` is continuous, by `Measurable.exists_continuous`, then
  `MeasureTheory.AnalyticSet.preimage`).
- Empty and full targets: `SetReducible A (∅ : Set Y)` holds exactly when `A = ∅` and some map
  `X → Y` exists, that is `A = ∅ ∧ (IsEmpty X ∨ Nonempty Y)`, and
  `SetReducible A (Set.univ : Set Y)` exactly when `A = Set.univ ∧ (IsEmpty X ∨ Nonempty Y)` (the
  empty map and constant maps are measurable). For nonempty `Y` the existence clause is automatic.
- From Borel to set reducibility: if `Setoid.BorelReducible E F` for setoids `E` on `X` and `F` on
  `Y`, then the graph `{p | E p.1 p.2}` is set reducible to `{p | F p.1 p.2}` by `Prod.map f f`
  (paolini-shelah-tfab Remark 1.5, lines 88–91).

Prove the converse fails: the graph of `TauCeti.eZero` is set reducible to the diagonal of Cantor
space (every Borel subset of a measurable space is, by the measurable map with two values `(0, 0)`
and `(0, 1)`, where `0` and `1` are the constant sequences, and the graph of `eZero` is Borel by
`measurableSet_eZero`), whereas `eZero` is not Borel reducible to equality on Cantor space, since
that is `Setoid.IsSmooth eZero` and Tau Ceti proves `not_isSmooth_eZero` (paolini-shelah-tfab
Remark 1.5, line 91). *Needs:* Tau Ceti `Setoid.BorelReducible`, `Setoid.IsSmooth`, `eZero`,
`measurableSet_eZero`, `not_isSmooth_eZero`; Mathlib `Measurable.exists_continuous`,
`MeasureTheory.AnalyticSet.preimage`.

**Checks.**

- `A = {0} ⊆ ℕ` and `B` the diagonal of `(ℕ → Bool) × (ℕ → Bool)`: the map `0 ↦ (0, 0)`,
  `n + 1 ↦ (0, 1)` has preimage of `B` equal to `{0}`.
- Empty codomain, the negative control for the existence clause: for `X = Unit`, `Y = Empty` and
  `A = ∅` the condition `A = ∅` holds, yet no map `Unit → Empty` exists, so `A` is not set
  reducible to `∅ ⊆ Empty`, and `A = Set.univ ⊆ Unit` is not set reducible to `Set.univ ⊆ Empty`;
  for `X = Y = Empty` the empty map witnesses both. For a one-point `Y` the diagonal of `Y × Y`
  is everything, so (with `Y × Y` nonempty) it receives exactly the full sets.
- The complement of the base's well-order class is analytic and not Borel, so it is not set
  reducible to the diagonal: Borelness would pull back.
- For an injective measurable `f : X → Y`, the graph of equality on `X` is the preimage of the
  diagonal of `Y` under `Prod.map f f`, the instance of the implication for `E = ⊥`, `F = ⊥`.

### Examples

The one-unary-predicate classes of 0.1; `eZero` against the diagonal in 0.2.

### Dependencies

Tau Ceti (coding space, isomorphism, Borel reducibility, smoothness, E₀); CountableStructureSpaces
Layer 6.2 (Checks only); Mathlib.

## Layer 1: Borel completeness

### 1.1 Carrier relabelling

For any language and a bijection `e : α ≃ β`, relabelling along `e` is Tau Ceti's restriction
`restrict e.symm : RelationalConfiguration L α → RelationalConfiguration L β`, which sends `c` to
the code whose value at `atom R w` is `c.eval (atom R (e.symm ∘ w))` (`eval_restrict`); the
library supplies its functoriality (`restrict_id`, `restrict_comp`), measurability
(`measurable_restrict`) and continuity (`continuous_restrict`). Bundle it as a homeomorphism and
a measurable equivalence of coding spaces with inverse `restrict e`, and identify it with the
transport of decoded structures for an arbitrary bijection; the library has the unbundled map
and its laws, and proves the identification only for permutations (`perm_smul_eq_encodeVia`)
(own construction; the relabelling form of the logic action is becker-kechris-bams
lines 159–164). API:

- It is a homeomorphism and a measurable equivalence, with inverse the relabelling along
  `e.symm`; relabelling along `e.trans e'` is the composite, and along `Equiv.refl` is the
  identity (`restrict_comp`, `restrict_id`).
- For `α = β = ℕ`, relabelling along `σ` is the logic action `σ • ·` (`perm_smul_def`).
- For relational `L`, the relabelled code is `@Equiv.encodeVia L α β c.toStructure e`, the code of
  the decoded structure of `c` transported along `e` (both sides read `c.eval (atom R (e.symm ∘ w))`
  at `atom R w`, by `eval_restrict` and `eval_encodeVia`); so `c` and its relabelling decode to
  isomorphic structures (`Equiv.nonempty_equiv_encodeVia`), and two codes on `α` are isomorphic
  exactly when their relabellings are (`Equiv.isoSetoid_encodeVia_iff`).
- For relational `L` and any `K : Set (RelationalConfiguration L α)`, with image
  `K₂ : Set (RelationalConfiguration L β)` under relabelling along `e`: if `K` is invariant Borel
  then so is `K₂` (relabelling is a measurable equivalence that preserves and reflects
  isomorphism); and `classIso K` and `classIso K₂` (Layer 0.1, on the carriers `α` and `β`) are
  Borel reducible to each other, by the Layer 0.1 corestriction of relabelling along `e` and of
  relabelling along `e.symm`, which restrict to mutually inverse measurable bijections between
  `K` and `K₂`.

*Needs:* Layer 0.1 (`classIso` on arbitrary carriers and its corestriction law); Tau Ceti
`RelationalConfiguration`, `restrict`, `eval_restrict`, `restrict_id`, `restrict_comp`,
`measurable_restrict`, `continuous_restrict`, `perm_smul_def`, `Equiv.encodeVia`,
`eval_encodeVia`, `Equiv.nonempty_equiv_encodeVia`, `Equiv.isoSetoid_encodeVia_iff`,
`IsomorphismInvariant`.

**Checks.**

- In the language of one unary predicate, relabelling the code of `P = {0}` along the
  transposition of `0` and `1` gives the code of `P = {1}`, the same as the logic action of that
  transposition.
- For `α = Fin 0`, the space of codes in a language with no nullary symbols is a single point and
  relabelling along `Fin 0 ≃ Fin 0` is the identity; with one nullary symbol it is two points,
  both fixed. For `K` the whole coding space on `Fin 0`, `classIso K` has one class in the first
  case and two in the second (the nullary symbol holds in one code and fails in the other, so no
  isomorphism of the empty structures exists), and the identity reduces it to itself in both
  directions.
- In the language of one unary predicate on `Fin 3`, with `e` the 3-cycle `0 ↦ 1 ↦ 2 ↦ 0`, the
  one-code class `A` of `P = {0}` relabels to the one-code class of `P = {1}`, since the new
  predicate is `e(P)`; the reverse convention (relabelling by `restrict e`) would give
  `P = {2}`. Both classes have one `classIso` class. The class `K` of all eight codes is
  invariant and is its own image; `classIso K` has four classes (`|P| = 0, 1, 2, 3`), each mapped
  onto itself.
- Relabelling along `e` followed by relabelling along `e.symm` is the identity on codes;
  relabelling along `e` twice is not the identity when `e` is a 3-cycle of `ℕ` and the code is
  `P = {0}`.

### 1.2 The definition of Borel completeness

Define `BorelComplete K` for `K : Set (RelationalConfiguration L ℕ)`: for every
`L' : Language.{0, 0}` with `[L'.IsRelational]` and `[∀ n, Countable (L'.Relations n)]`, and every
invariant Borel `K' : Set (RelationalConfiguration L' ℕ)`, `classIso K'` is Borel reducible to
`classIso K`
(paolini-shelah-tfab Definition 1.6, lines 95–101; camerlo-gao-boolean lines 106–110). The
definition imposes nothing on `K`; theorems assume `K` invariant Borel where they need it. API:

- Transfer: if `BorelComplete K` and `classIso K` is Borel reducible to `classIso K₂`, then
  `BorelComplete K₂`; in particular `K ⊆ K₂` and `BorelComplete K` give `BorelComplete K₂`
  (Layer 0.1 restriction).
- Bireducibility: Borel completeness depends only on `classIso K` up to Borel bireducibility.
- Universes: if `BorelComplete K`, then for every countable relational `L'` in any universes and
  every invariant Borel `K'`, `classIso K'` is Borel reducible to `classIso K`. Proof: transport
  `K'` along `smallPresentationEquiv L'` with Tau Ceti's homeomorphism
  `LEquiv.onConfiguration`, which is measurable in both directions and preserves and reflects
  isomorphism (`isoSetoid_onConfiguration_iff`), hence maps invariant Borel classes onto invariant
  Borel classes of `L'.smallPresentation`, a relational language in `Language.{0, 0}` with
  countably many relation symbols (`isRelational_smallPresentation`,
  `countable_relations_smallPresentation`).
- Renaming: for a language equivalence `e : L ≃ᴸ L₂` of countable relational languages, `K` is
  Borel complete exactly when its image `e.onConfiguration '' K` is.

*Needs:* Layer 0.1; Tau Ceti `smallPresentation`, `smallPresentationEquiv`,
`isRelational_smallPresentation`, `countable_relations_smallPresentation`,
`LEquiv.onConfiguration`, `measurable_onConfiguration`, `onConfiguration_symm`,
`isoSetoid_onConfiguration_iff`, `Setoid.BorelReducible`, `BorelReducible.trans`.

**Checks.**

- `BorelComplete ∅` fails: for `L'` with one unary symbol and `K' = Set.univ` (nonempty) there is
  no map into the empty type.
- In the language with countably many unary symbols `P_i`, the class `K'` of codes in which each
  `P_i` is `∅` or `ℕ` is closed and invariant, and its isomorphism types are in bijection with
  `ℕ → Bool`; so a class with countably many isomorphism types, such as all codes of one unary
  predicate, is not Borel complete (an injection of quotients would inject `ℕ → Bool` into a
  countable set).
- If `K` is Borel complete then so is `K ∪ K₂` for every invariant Borel `K₂`, while `K ∩ K₂` need
  not be: with `K = graphClass` (Layer 2.3) and `K₂` the codes of the empty graph's orbit, the
  intersection is one orbit.
- Renaming the symbol `adj` of `Language.graph` to a fresh symbol gives an equivalent language,
  and the image of `graphClass` is Borel complete, as the renaming law requires.

### 1.3 Classes with function symbols

For a language `L` with `[∀ n, Countable (L.Functions n)]` and `[∀ n, Countable (L.Relations n)]`
(function symbols allowed), define the functional coding space: pairs of a function table, a map
from `Σ f : (Σ l, L.Functions l), (Fin f.1 → ℕ)` to `ℕ`, and a relation code in
`RelationalConfiguration L ℕ` (defined for every language: its atoms use only relation symbols),
with the product topology (ℕ discrete); decoding gives an `L.Structure ℕ` whose relations are read
from the relation code and whose functions from the table, and `Equiv.Perm ℕ` acts by
`(σ • F)⟨f, v⟩ = σ (F ⟨f, σ⁻¹ ∘ v⟩)` on tables and by the logic action on relation codes. Define the
graph-code map from this space to `RelationalConfiguration (graphLanguage L) ℕ`: the code
(`ofStructure`) of Tau Ceti's `graphExpansion L ℕ` of the decoded structure, whose value at the
graph symbol `GraphRelation.graph f` of a `k`-ary `f` and a tuple `w : Fin (k + 1) → ℕ` is whether
`F ⟨f, Fin.init w⟩` equals `w (Fin.last k)`. Prove:

- The functional coding space is Polish, the action is continuous, and its orbits are the
  isomorphism classes of the decoded structures.
- The graph-code map is continuous, injective and equivariant; its range is the set of codes in
  which every graph relation is the graph of a total function, a Gδ set (totality of each graph
  relation is a countable intersection of open conditions, functionality a closed one), which is
  not closed when `L` has at least one function symbol and is the whole coding space when `L` is
  relational; the map is a homeomorphism onto its range (the value `F ⟨f, v⟩` is locally constant
  on the range).
  On its range it agrees with the reconstruction: decoding the inverse image gives Tau Ceti's
  `reconstructStructure` of the decoded graph structure (`reconstructStructure_graphExpansion`),
  and the range is the set of codes whose decoded structure models `graphAxioms` of all function
  symbols (`model_graphAxioms_iff`).
- Two points of the functional space decode to isomorphic structures exactly when their graph
  codes are isomorphic, so for every invariant Borel class `K` of the functional space, its image
  is an invariant Borel class of graph codes and the isomorphism relations of `K` and of its
  image are Borel reducible to each other.
- The models on ℕ of a set `T` of first-order `L`-sentences form an invariant Borel class of the
  functional space: atomic formulas define clopen sets (term evaluation looks up finitely many
  table entries), connectives preserve Borelness, and quantifiers over ℕ are countable unions
  and intersections.
- Call an invariant Borel class `K` of the functional space Borel complete when its image under
  the graph-code map is (in the sense of 1.2). If `K₀ ⊆ RelationalConfiguration L₀ ℕ` is Borel
  complete,
  then for every countable `L'` with function symbols and every invariant Borel class `K'` of its
  functional space, the isomorphism relation of `K'` is Borel reducible to `classIso K₀`; so
  quantifying over relational languages in 1.2 loses nothing (camerlo-gao-boolean lines 87–93;
  paolini-shelah-tfab lines 60–64).

*Needs:* Tau Ceti `graphLanguage`, `GraphRelation`, `graphExpansion`, `graphAxioms`,
`model_graphAxioms_iff`, `reconstructStructure`, `reconstructStructure_graphExpansion`,
`RelationalConfiguration`, `ofStructure`, `continuous_iff`, `isoSetoid`, the Polish instances of
the coding space and `LEquiv.onConfiguration`; Layer 1.2; CountableStructureSpaces Layer 1.2
(`continuousSMul_relationalConfiguration`).

**Checks.**

- For `L` with one constant symbol `k` and nothing else, a function table is one number `F k`,
  and the graph code of the table with `F k = 3` has unary graph relation `{3}`.
- A graph code whose relation for a unary function symbol holds at `(0, 1)` and `(0, 2)` is not in
  the range (functionality fails), nor one where it holds at no `(0, y)` (totality fails); the
  codes with the value at `0` equal to `n` converge, as `n → ∞`, to a code with no value at `0`,
  so the range is not closed.
- For relational `L` the function table is the empty map, and the graph-code map is Tau Ceti's
  transport `LEquiv.onConfiguration` along the language equivalence `L ≃ᴸ graphLanguage L` sending
  `R` to `GraphRelation.base R` (an equivalence because `L` has no function symbols); its range is
  the whole coding space, which is closed.
- The models of Mathlib's `Theory.simpleGraph` in the functional space of `Language.graph` are
  exactly `graphClass`; the models of Mathlib's `Theory.fieldOfChar 2` form an invariant Borel
  class containing a code of the countable field `𝔽₂(t)` and no code of `ℚ`.

### Examples

The one-unary-predicate classes; renaming `adj`; constant symbols and fields in 1.3.

### Dependencies

Layer 0; Tau Ceti (coding space, relabelling, isomorphism, small presentation, graph
translation, transport along language equivalences, Borel reducibility); CountableStructureSpaces
Layer 1.2; Mathlib.

## Layer 2: Every countable structure codes into a graph

### 2.1 The incidence graph of a structure

Fix a countable relational `L'` and an injection `ι` of its relation symbols into ℕ
(`Encodable.ofCountable`). The base vertex set is the disjoint union of four countable sets:
points `p_a` for `a ∈ ℕ`; tuple vertices `t_q` for atoms `q = atom R v : Atom L' ℕ`; position
vertices `s_{q,j}` for `j < arity R`; truth vertices `u_q`. Colour them by `κ(p_a) = 0`,
`κ(u_q) = 1`, `κ(s_{q,j}) = 2 + 2j`, `κ(t_q) = 3 + 2ι(R)`. For a code `c`, the incidence graph `H_c`
has the edges `t_q — s_{q,j}` and `s_{q,j} — p_{v j}` for all `q`, `j`, and `t_q — u_q` exactly when
`c.eval q = true`. Prove (own construction; the coding of structures in graphs is classical,
montalban-cst1 Theorem VI.27, lines 4572–4659, which uses different gadgets):

- `H_c` is bipartite, with sides points and tuple vertices against position and truth vertices,
  hence triangle-free; only the tuple–truth edges depend on `c`, each on one coordinate.
- Two codes `c, d` are isomorphic exactly when some bijection of the base vertices preserves colours
  and maps `H_c` onto `H_d`. If `d = σ • c`, the bijection moves `p_a` to `p_{σ a}` and
  `q = atom R v` to `atom R (σ ∘ v)` in the three other sorts. Conversely a colour-preserving
  isomorphism restricts on points to some `σ`; it sends `t_q` to a tuple vertex of the same symbol,
  the unique neighbour of colour `2 + 2j` of `t_q` to that of the image, and the unique point
  neighbour of `s_{q,j}` to that of the image, so the image of `q` is `atom R (σ ∘ v)`; the truth
  edge at `t_q` is present exactly when it is at the image, so `d = σ • c` (`eval_perm_smul`), and
  `isoSetoid_iff_exists_perm_smul_eq` turns this into isomorphism.

*Needs:* Tau Ceti `Atom`, `atom`, `eval`, `eval_perm_smul`, `isoSetoid_iff_exists_perm_smul_eq`;
Mathlib `Encodable.ofCountable`.

**Checks.**

- With one binary symbol `R` and `c` the code of `R = {(0, 1)}`: the tuple vertex of
  `atom R ![0, 1]` has three neighbours (two positions and its truth vertex), the tuple vertex of
  `atom R ![1, 0]` has two.
- For `L'` with no relation symbols there are only points, `H_c` has no edges, and all codes (one
  code) give the same graph.
- A nullary symbol `R` gives a tuple vertex with no position neighbours, adjacent to its truth
  vertex exactly when `c.eval (atom R ![]) = true`; two codes differing only there have
  non-isomorphic coloured graphs.
- Forgetting the colours breaks the equivalence: with two unary symbols, the codes `P₁ = {0}` and
  `P₂ = {0}` (the other symbol empty) have isomorphic uncoloured incidence graphs.

### 2.2 Clique tags

For a triangle-free simple graph `H` on a set `V` with a colouring `κ : V → ℕ`, the tagged graph
has vertex set `V ⊕ Σ x : V, Fin (κ x + 3)`, the edges of `H`, a clique on the `κ x + 3` tag
vertices of each `x`, and one edge from `x` to its tag vertex `0`. Prove (own construction;
gadgets attached to vertices to distinguish the coded vertices, kept apart from the coded
relation by the lengths of the cycles they create: montalban-cst1 Theorem VI.27,
lines 4623–4654): a vertex of the tagged
graph lies in a triangle exactly when it is a tag vertex; the edges between non-tag vertices are
those of `H`; and for a non-tag vertex `x`, `κ x + 2` is the number of triangle vertices adjacent
to its unique triangle-vertex neighbour. Hence for triangle-free coloured graphs, the tagged
graphs are isomorphic exactly when there is a colour-preserving isomorphism of the coloured
graphs. *Needs:* Mathlib `SimpleGraph`.

**Checks.**

- `H` a single edge `{x, y}` with `κ = (0, 1)`: the tagged graph has `2 + 3 + 4 = 9` vertices and
  `1 + 2 + 3 + 6 = 12` edges.
- `V = ∅` gives the empty graph.
- Without triangle-freeness the recognition fails: in the tagged graph of a triangle the three
  original vertices lie in triangles, and the rule "non-tag means in no triangle" misclassifies
  them.
- For `κ x = 0` the tag of `x` is a triangle attached by one edge, and for `κ x = 1` a `K₄`: the two
  tagged one-vertex graphs are not isomorphic.

### 2.3 Graphs are Borel complete

Define `graphClass : Set (RelationalConfiguration Language.graph ℕ)` as `{c | IsSimpleGraph c}`,
Tau Ceti's simple-graph codes (adjacency symmetric and false on the diagonal); equivalently, the
decoded `adj` is irreflexive and symmetric, that is, the decoded structure models Mathlib's
`Theory.simpleGraph` (`Theory.simpleGraph_model_iff`). The headline theorems are stated for this
class, and its API is the library's and the base's:

- it is measurable (`measurableSet_setOf_isSimpleGraph`) and closed (CountableStructureSpaces
  Layer 0, closedness of the range of the graph coding);
- it is invariant: `σ • c = c.restrict σ⁻¹` (`perm_smul_def`) and `IsSimpleGraph.restrict`;
- it is the range of `SimpleGraph.toRelationalConfiguration`
  (`SimpleGraph.range_toRelationalConfiguration`), and `SimpleGraph.relationalConfigurationEquiv`
  is a measurable equivalence between Mathlib's `SimpleGraph ℕ` and the subtype `graphClass`;
- as a Borel subset of a Polish space it is standard Borel (Mathlib `MeasurableSet.standardBorel`).

**Checks.**

- The code of the empty graph is in `graphClass`; a code with `adj(0, 0)` is not; a code with
  `adj(0, 1)` and not `adj(1, 0)` is not.
- The codes of the one-edge graphs on `{0, 1}` and on `{5, 7}` are isomorphic; the code of the
  one-edge graph and that of the two-edge path are not.
- `graphClass` is the range of `SimpleGraph.toRelationalConfiguration`, and membership of a code
  depends only on its values at the atoms `adjAtom i i` and at the pairs `adjAtom i j`,
  `adjAtom j i`: it is an intersection of clopen sets (`isClopen_setOf_eval`).

Prove `borelComplete_graphClass : BorelComplete graphClass`: for every countable relational `L'`,
the map sending `c` to the relabelling, along a fixed bijection of the countably infinite vertex set
with ℕ, of the code (`SimpleGraph.toRelationalConfiguration`) of the tagged incidence graph of `c`
is continuous on `RelationalConfiguration L' ℕ` (by `continuous_iff`: each coordinate is constant or
one coordinate of `c`), lands in `graphClass` (`IsSimpleGraph.restrict`), and reflects and preserves
isomorphism (2.1, 2.2, 1.1); restrict it to `K'` (Layer 0.1). The reduction is the same continuous
map for every `K'` (friedman-stanley-1989 Theorem 1; camerlo-gao-boolean lines 111–112;
paolini-shelah-tfab line 125). *Needs:* 2.1, 2.2, Layer 1.1, Layer 1.2, Layer 0.1; Tau Ceti
`continuous_iff`, `SimpleGraph.toRelationalConfiguration`, `IsSimpleGraph`,
`IsSimpleGraph.restrict`.

### Examples

A structure with one binary relation and its tagged incidence graph; `L'` empty.

### Dependencies

Layers 0 and 1; Tau Ceti (coding space, logic action, isomorphism, simple-graph codes);
CountableStructureSpaces Layer 0 (closedness of `graphClass`); Mathlib `Language.graph`,
`SimpleGraph`.

## Layer 3: Trees and linear orders

### 3.1 A dense colouring of the rationals

With `ν` as in Convention 9, prove: the fibres `ν⁻¹(m)`, `m ∈ ℕ`, partition ℚ and each is dense
(between any two rationals lies a rational with denominator `2^m` times an odd number, written in
lowest terms with odd numerator). Prove the coloured Cantor theorem: for every bijection `σ` of ℕ
there is an order automorphism `π` of ℚ with `ν (π r) = σ (ν r)` for all `r`. Proof: apply
`FirstOrder.Language.equiv_between_cg` to ℚ with the order and the unary predicates `ν⁻¹(m)` and
to ℚ with the order and the predicates `ν⁻¹(σ m)`; both structures are countable
(`Structure.cg_of_countable`), and each is an extension pair for the other because every colour
class is dense and ℚ has no endpoints (montalban-cst1 lines 4258–4260 and 4273–4275). *Needs:*
Mathlib `padicValNat`, `Rat.den`, `FirstOrder.Language.equiv_between_cg`,
`FirstOrder.Language.IsExtensionPair`, `FirstOrder.Language.Structure.cg_of_countable`.

**Checks.**

- `ν(3/4) = 2`, `ν(5) = 0`, `ν(-1/6) = 1`, and `1/8008` (with `8008 = 8 · 1001`) is a rational of
  colour 3 in `(0, 1/1000)`.
- For `σ = id`, `π = id` works; for `σ` the transposition of `0` and `1`, `π` must send `1/2`
  (colour 1) to a rational of colour 0.
- Density is needed: for the two-colouring "negative or not", the colour-swapping bijection has no
  such `π`, since the negatives form an initial segment and their image under an order
  automorphism is again an initial segment, never the non-negatives.

### 3.2 Unravelling a graph

For every code `c : RelationalConfiguration Language.graph ℕ` (a binary relation on ℕ, not
necessarily symmetric or irreflexive) and `x : List ℚ`, let `a(x) := x.map ν` (a tuple of vertices)
and let the colour `χ_c(x)` be a fixed injective encoding in ℕ of the length of `x` together with
the atomic diagram of `a(x)` for `c`: for all ordered pairs `(i, j)` below the length, the diagonal
`i = j` included, whether `a_i = a_j` and the bit `c.eval (adjAtom a_i a_j)`. The colour of `x`
reads finitely many coordinates of `c`. Two colours `χ_c(x)` and `χ_d(y)` are equal exactly when
`x` and `y` have the same length and `a(x)`, `a(y)` have the same atomic type (`SameAtomicType`) in
the decoded structures of `c` and `d` (`toStructure_relMap`: the decoded relation at `(u, v)` is
the bit `c.eval (adjAtom u v)`). For `c ∈ graphClass`, the code of a simple graph `G`
(`SimpleGraph.range_toRelationalConfiguration`), the bit is whether `G.Adj a_i a_j`
(`SimpleGraph.eval_toRelationalConfiguration_adjAtom`) and the diagonal bits are false. Prove:

- `(List ℚ, <)` is a dense linear order whose least element is `[]`; the parent of a nonempty `x`
  (its prefix of length one less) is definable from the order and the lengths: it is the unique
  `p` of length `|x| - 1` with `p < x` such that every `z` with `p < z < x` has length at least `|x|`.
- Unravelling lemma: for `c, d ∈ graphClass`, the following are equivalent: (i) `c` and `d` are
  isomorphic; (ii) some order automorphism `Φ` of `List ℚ` satisfies `χ_d ∘ Φ = χ_c`; (iii) some
  bijection `Ψ` of `List ℚ` preserving the parent relation satisfies `χ_d ∘ Ψ = χ_c`. For (i) ⇒ (ii)
  and (iii), take `π` from 3.1 for the isomorphism `σ` and apply it entrywise. For (ii) ⇒ (iii) use
  definability of the parent. For (iii) ⇒ (i), the set of pairs `(a(x), a(Ψ x))` is a tuple
  back-and-forth system (`IsTupleBFSystem`): it contains the empty pair because `Ψ` fixes the
  root, atomic types agree because colours do, and forth and back hold because every node has,
  for every vertex `m`, a child ending in a rational of colour `m`, and `Ψ` maps children to
  children; then `potentialIso_iff_exists_isTupleBFSystem` and `countable_potentialIso_iff_iso`
  give an isomorphism (montalban-cst1 Lemma VI.18, lines 4205–4285, which proves the same
  steps with a category argument in place of back-and-forth systems).

*Needs:* 3.1; Tau Ceti `adjAtom`, `toStructure_relMap`,
`SimpleGraph.eval_toRelationalConfiguration_adjAtom`, `SimpleGraph.range_toRelationalConfiguration`,
`SameAtomicType`, `IsTupleBFSystem`, `potentialIso_iff_exists_isTupleBFSystem`,
`countable_potentialIso_iff_iso` and `isoSetoid_iff_exists_perm_smul_eq`; Mathlib lexicographic
`LinearOrder (List ℚ)`, `List.IsPrefix`.

**Checks.**

- For `G` the single edge `{0, 1}`: `a([1/2, 1]) = (1, 0)`, an adjacent pair of distinct vertices;
  `a([1, 2]) = (0, 0)`, equal and not adjacent.
- The root `[]` has the same colour for every code (length 0, empty diagram). On `graphClass`
  every node of length 1 also has one colour (one vertex, diagonal bit false): colours begin to
  distinguish simple graphs at length 2.
- Outside `graphClass` the colour is still defined and the length-1 nodes can differ: at `[1]`
  the constant-true code records length 1, the entry equal to itself and the diagonal bit true (a
  loop), while the empty graph records the same length and equality with the diagonal bit false.
  A colour defined only through the decoded simple graph would have no value at the first code.
- The colour records ordered bits: for the code whose only true atom is `adjAtom 0 1`, the node
  `[1/2, 1]` (`a = (1, 0)`) has the bit at the index pair `(1, 0)`, which reads
  `c.eval (adjAtom a_1 a_0) = c.eval (adjAtom 0 1)`, true and the bit at the index pair `(0, 1)`
  false, and the node `[1, 1/2]` (`a = (0, 1)`) the reverse, so the two colours differ; a colour
  recording only the unordered adjacency would identify them, and for the symmetric code of the
  edge `{0, 1}` the two colours agree.
- The identity is a colour-preserving automorphism from the order of `c` to that of `d` exactly
  when `c = d`; the one-edge graphs on `{0, 1}` and `{0, 2}` are isomorphic but differ at the node
  `[1, 1/2]`, so `Φ` must move nodes.
- The order is not a well-order and has no greatest element: `[1] < [2] < [3] < …` has no upper
  bound, and `[0] > [-1] > [-2] > …` descends.

### 3.3 Linear orders are Borel complete

Define `linearOrderClass : Set (RelationalConfiguration Language.order ℕ)` as the codes whose
decoded relation is a linear order, the models of Mathlib's `Language.order.linearOrderTheory`.
API: it is closed and invariant; the code of `(ℕ, ≤)` with `orderStructure` is in it.

**Checks.**

- The code of `(ℕ, ≤)` is in `linearOrderClass`; the code of `(ℕ, <)` is not (irreflexive).
- The code in which every pair is related fails antisymmetry; the code of divisibility on ℕ is a
  partial order that is not total.
- For each `ω ≤ β < ω₁`, adding the diagonal to the relation of a code given by the base's
  `exists_mem_wellOrderClass_type_eq` (a strict well-order of type `β`) gives a code in
  `linearOrderClass`; so `linearOrderClass` meets uncountably many isomorphism classes.

For every code `c : RelationalConfiguration Language.graph ℕ`, with the colour `χ_c` of 3.2 (defined
for every such code), order the set `List ℚ × ℕ` lexicographically, first by the `List ℚ` coordinate
and then, inside the block of `x`, by the order of type `ω + (χ_c(x) + 2)` on ℕ that puts the
indices `≥ χ_c(x) + 2` first in increasing order and then the indices `< χ_c(x) + 2` in increasing
order; relabel along a fixed bijection of `List ℚ × ℕ` with ℕ. Prove
`exists_continuous_reduction_graphClass_linearOrderClass`: this map is continuous from
`RelationalConfiguration Language.graph ℕ` to `RelationalConfiguration Language.order ℕ` (each
comparison depends on two colours, each a function of finitely many coordinates of `c`), lands in
`linearOrderClass` for every code (a lexicographic sum of linear orders is linear, whatever the
colours), and for `c, d ∈ graphClass` the images are isomorphic exactly when `c` and `d` are. Proof:
the condensation classes of the image (maximal sets any two of whose points bound a finite interval)
are the `ω`-parts of the blocks, which are infinite, and the final finite parts of the blocks, of
size `χ_c(x) + 2`, because the order of `List ℚ` is dense and each block begins with a copy of ω; so
the condensation classes that are finite are exactly the final finite parts of the blocks. An order
isomorphism preserves finite intervals, so it maps finite classes to finite classes of the same
size, in order, and induces a colour-preserving order automorphism of `List ℚ`, and 3.2 applies.
Conversely a colour-preserving automorphism from 3.2 extends block by block. Hence
`borelComplete_linearOrderClass : BorelComplete linearOrderClass` (friedman-stanley-1989 §2;
montalban-cst1 Lemma VI.18, lines 4246–4288, where each labelled point is replaced by a finite order
with label plus two elements). *Needs:* 3.2, Layer 2.3, Layer 1.1, Layer 1.2, Layer 0.1.

**Checks.**

- For any code of `Language.graph`, a point of the `ω`-part of a block and the first point of the
  finite part of the same block bound an infinite interval (ω has no maximum), as do two points of
  different blocks (density of `List ℚ`).
- The images of the empty graph and of the complete graph on ℕ are not isomorphic: the colour of
  the node `[1, 1/2]` for the empty graph (length 2, vertices `(0, 1)`, distinct and not adjacent)
  occurs at no node for the complete graph, in which distinct vertices are adjacent, so no
  colour-preserving automorphism exists (3.2 (ii)). The two colourings differ exactly at the nodes
  having two entries with distinct ν-values; distinct rationals do not suffice: at `[1, 2]` both
  entries have ν-value 0, both colourings record the vertices `(0, 0)`, equal and not adjacent,
  and the colours agree.
- The block of the root has finite part of size `χ_c([]) + 2`, the same for every code, matching
  the root Check of 3.2.
- A code outside `graphClass` has an image too: for the constant-true code the block of `[1]` has
  a finite part of size `χ + 2`, where `χ` encodes length 1 with a true diagonal bit; the sizes of
  the finite condensation classes are an isomorphism invariant of the image, and this size occurs
  for no simple graph (whose diagonal bits are false), so the image lies in `linearOrderClass` and
  is isomorphic to the image of no code in `graphClass`.

### 3.4 Trees are Borel complete

Define `treeClass : Set (RelationalConfiguration Language.order ℕ)` as the codes whose decoded
relation is a partial order with a least element in which every principal down-set `{y | y ≤ x}` is
finite and linearly ordered. API: it is Borel and invariant (finiteness of down-sets is a countable
union over bounds), and not closed.

**Checks.**

- The code of `(ℕ, ≤)` is in `treeClass` (one infinite branch); the code of the star, in which
  `0` lies below every element and other pairs are incomparable, is in it.
- The code of `(ℤ, ≤)` transported to ℕ is not (no least element); the code of `(ℕ, ≥)` is not
  (infinite down-sets).
- Not closed: the code `c_n` of the chain `n < n - 1 < … < 0 < n + 1 < n + 2 < …` is in `treeClass`,
  and the codes `c_n` converge to the code of `(ℕ, ≥)`, which is not.

For every code `c : RelationalConfiguration Language.graph ℕ`, with the colour `χ_c` of 3.2, define
the tagged tree on `List ℚ × Option ℕ`: original nodes `(x, none)`, ordered by the prefix relation;
for each `x`, tag nodes `(x, some m)` lying above `(x, none)` and above every original node below
it, with `(x, some 0)` below every other tag node of `x`, and `(x, some m) ≤ (x, some m')` for `0 <
m ≤ m' ≤ χ_c(x) + 1`; the tag nodes with `m > χ_c(x) + 1` are leaves directly above `(x, some 0)`.
Relabel to ℕ. Prove `borelComplete_treeClass`, that is `BorelComplete treeClass`: the map is
continuous on the whole of `RelationalConfiguration Language.graph ℕ` (a comparison of two tag nodes
of `x` depends on `χ_c(x)` alone, a comparison involving an original node on no coordinate of `c`)
and lands in `treeClass` for every code (every principal down-set is a finite chain of prefixes
followed by at most `χ_c(x) + 2` tag nodes); for `c, d ∈ graphClass` the images are isomorphic
exactly when `c` and `d` are. A node is original exactly when an infinite chain starts at it; `(x,
some 0)` is the unique child of `(x, none)` that is not original, and the subtree above it has
height `χ_c(x) + 2`; so a tree isomorphism restricts to a parent-preserving, colour-preserving
bijection of `List ℚ`, and 3.2 (iii) applies; conversely 3.2 (ii) extends to tags
(friedman-stanley-1989 §2; montalban-cst1 Lemma VI.18, lines 4205–4245). *Needs:* 3.2, Layer 2.3,
Layer 1.1, Layer 1.2, Layer 0.1.

**Checks.**

- For `χ_c(x) = 0` the subtree above `(x, some 0)` is the chain `(x, some 0) < (x, some 1)` with
  infinitely many leaves, of height 2; for `χ_c(x) = 1` it has height 3.
- Removing the surplus leaves would change the vertex set with `c`; keeping them changes no height.
- Without tags the original nodes alone form the same tree for every `c`, so tags carry all of the
  information.
- For the constant-true code, outside `graphClass`, the tagged tree is still in `treeClass`; above
  `([1], some 0)` it has height `χ + 2` with `χ` encoding length 1 and a true diagonal bit, a height
  above a tag root that no simple graph's tagged tree has, so the image is isomorphic to no image
  of `graphClass`.

### 3.5 The two presentations of trees

Prove: (a) for every `c ∈ treeClass` there is an infinite tree `T ∈ Descriptive.tree ℕ` such that
the decoded order of `c` is isomorphic to `T` with the prefix order, and conversely every infinite
`T ∈ Descriptive.tree ℕ` with the prefix order is isomorphic to the decoded order of some
`c ∈ treeClass` (send a node to the increasing list of the nodes above the root and below or equal
to it: an injective, order-preserving map onto a prefix-closed set of lists); (b) in the
relational language with one binary and one unary symbol, the class of codes of connected acyclic
graphs with exactly one marked vertex is invariant Borel and Borel complete, by the Borel
reduction from `treeClass` sending an order to its cover graph with the least element marked
(being a cover is a closed condition on codes, so each output coordinate is the indicator of a
closed set and the map is Borel; it is not continuous, even on `treeClass`; the order is
recovered as the relation of lying on the path from the marked vertex, so isomorphism is
reflected) (friedman-stanley-1989 §2; the binary case, rooted binary trees as partial orders and
as subtrees of `2^{<ℕ}`: camerlo-gao-boolean lines 257–263 and 276–281; `treeClass` and the
finitely or infinitely branching trees of `Descriptive.tree ℕ` are the roadmap's own reading).
*Needs:* 3.4, Layer 0.1; Mathlib `Descriptive.tree`.

**Checks.**

- The tree `{[], [0], [1], [0, 0]}` is finite and so has no code on ℕ; the full tree `List ℕ` gives
  the infinitely branching tree, whose code is in `treeClass`.
- The cover graph of the chain `(ℕ, ≤)` with `0` marked is a ray with its end marked; the same ray
  with vertex `1` marked is not isomorphic to it, as distinct roots give distinct orders.
- The cover graph of a star is a star with its centre marked.
- The cover-graph map is not continuous on `treeClass`: let `T` be the star on ℕ with root `0` and,
  for `n ≥ 2`, let `T_n` be the tree in which `n` is inserted between `0` and `1` (`0 < n < 1`, every
  other vertex a leaf above `0`). On the vertices other than `n` the orders of `T_n` and `T` agree,
  so every coordinate `(i, j)` of `T_n` equals that of `T` once `n > max(i, j)`, and `T_n → T`; but
  `0` and `1` are adjacent in the cover graph of `T` and in that of no `T_n`. The map is still Borel:
  the adjacency coordinate `(0, 1)` of the output is the indicator of the closed set of codes in
  which one of `0`, `1` lies strictly below the other with no vertex strictly between.

### Examples

The one-edge graph through 3.2–3.4; the chain and the star in 3.4–3.5.

### Dependencies

Layers 0–2; Tau Ceti (tuple back-and-forth systems and the countable back-and-forth theorem);
CountableStructureSpaces Layer 6.2 (a Check of 3.3); Mathlib.

## Layer 4: Borel S∞-spaces and the universal embedding

### 4.1 Borel S∞-spaces

Put on `Equiv.Perm ℕ` the Borel σ-algebra `borel` of Tau Ceti's topology
`Equiv.Perm.instTopologicalSpace`, with `BorelSpace`; it is a standard Borel space
(`Equiv.Perm.instPolishSpace`). A Borel S∞-space is a type `X` with
`[MeasurableSpace X] [StandardBorelSpace X]`, `[MulAction (Equiv.Perm ℕ) X]` and
`[MeasurableSMul₂ (Equiv.Perm ℕ) X]`; its orbit equivalence relation is `MulAction.orbitRel`
(becker-kechris-bams lines 126–131). API:

- The logic action on `RelationalConfiguration L ℕ` (countable relational `L`) is a Borel
  S∞-space: it is continuous (base `continuousSMul_relationalConfiguration`), both spaces are
  second countable and the coding space carries its Borel σ-algebra (Tau Ceti's `BorelSpace`
  instance), so `ContinuousSMul.measurableSMul₂` applies. Its orbit relation is `isoSetoid L ℕ`
  (`isoSetoid_eq_orbitRel`).
- An invariant Borel subset of a Borel S∞-space is one, with the restricted action.
- An equivariant measurable injection between Borel S∞-spaces has an invariant Borel image
  (Lusin–Souslin, `MeasurableSet.image_of_measurable_injOn`) and is a Borel reduction of the
  orbit relations.

*Needs:* Tau Ceti `Equiv.Perm.instTopologicalSpace`, `Equiv.Perm.instPolishSpace`, the Polish and
Borel instances of the coding space and `isoSetoid_eq_orbitRel`; CountableStructureSpaces
Layer 1.2 (`continuousSMul_relationalConfiguration`); Mathlib `MeasurableSMul₂`,
`ContinuousSMul.measurableSMul₂`, `MeasurableSet.image_of_measurable_injOn`.

**Checks.**

- `ℕ` with `Equiv.Perm.applyMulAction` is a Borel S∞-space with a single orbit.
- A standard Borel space with the trivial action is one, and its orbit relation is equality.
- For a language with uncountably many unary symbols the coding space is a product of uncountably
  many copies of `Bool` with the product σ-algebra `MeasurableSpace.pi` (Tau Ceti's σ-algebra on
  `RelationalConfiguration`); every set measurable for a product σ-algebra depends on countably many
  coordinates, so no singleton is measurable, whereas a standard Borel space has measurable
  singletons; so the space is not standard Borel and its logic action is not a Borel S∞-space.
  Cardinality alone does not decide this: `2 ^ ℵ₁ = 2 ^ ℵ₀` is consistent with ZFC.

### 4.2 The universal embedding

Define `universalLanguage : FirstOrder.Language.{0, 0}`, relational with exactly one relation
symbol of each arity `n` (becker-kechris-bams lines 172–173). Prove
`exists_equivariant_measurableEmbedding_universal`: for every Borel S∞-space `X` there is a
measurable, injective map `Φ : X → RelationalConfiguration universalLanguage ℕ` with
`Φ (g • x) = g • Φ x`;
its image is invariant Borel, and the orbit relation of `X` is Borel reducible to
`isoSetoid universalLanguage ℕ` (becker-kechris-bams Theorem 2.1, line 132, and
Corollary 2.2, lines 174–177; proof sketch lines 247–268; becker-kechris-1996 §2.6–§2.7). Proof:

1. Realize `X` as a Polish S∞-space by `exists_polishTopology_continuousSMul`
   (NoncompactQuantumSymmetry Layer 4) and fix a countable basis `(S_n)` of that topology.
2. In the language with countably many symbols of each arity, let the `(k, n)`-th symbol hold of
   `a : Fin k → ℕ` at `x` when some `g` with `g (a i) = i` for all `i` has `g • x ∈ S_n`. Each such
   set of `x` is open (a union of translates `g⁻¹ • S_n`), so the map is measurable. It is
   equivariant: substituting `g' = g h` turns the condition at `h • x` and `a` into the condition
   at `x` and `h⁻¹ ∘ a`, matching Convention 4. It is injective: if `x ≠ y`, choose `S_n ∋ x` whose
   closure misses `y`; the anchors `a = (0, …, k - 1)` give the pointwise stabilizers of
   `{0, …, k - 1}`, a neighbourhood basis of `1` (Tau Ceti
   `Equiv.Perm.hasBasis_nhds_one_fixingSubgroup` gives the stabilizers of all finite sets, and
   every finite set lies in some `{0, …, k - 1}`); if the
   codes of `x` and `y` agreed, permutations converging to `1` would move `y` into `S_n`, putting
   `y` in its closure by continuity.
3. Pass to `universalLanguage` by the coding that reads symbol `m` of arity `m` as the
   `(k, n)`-th symbol on the first `k` entries, where `(n, k) = Nat.unpair m` and `k ≤ m` by
   `Nat.unpair_right_le`; this map is continuous, injective and equivariant. Injectivity: the value
   of the `(k, n)`-th symbol at `a : Fin k → ℕ` is read at `m = Nat.pair n k`, which is at least
   `k` (`Nat.right_le_pair`), on any `b : Fin m → ℕ` whose first `k` entries are `a`.

*Needs:* 4.1; NoncompactQuantumSymmetry Layer 4 (`exists_polishTopology_continuousSMul`); Tau Ceti
`Equiv.Perm.hasBasis_nhds_one_fixingSubgroup`, `Equiv.Perm.instIsTopologicalGroup`,
`Equiv.Perm.instPolishSpace`, `continuous_iff`, `eval_perm_smul`; Mathlib `Nat.pair`, `Nat.unpair`,
`Nat.unpair_right_le`, `Nat.right_le_pair`, `MeasurableSet.image_of_measurable_injOn`.

**Checks.**

- `X = ℕ` with the evaluation action and `S_n = {n}`: the arity-1 symbol `(1, 0)` holds of `(a)` at
  `x` exactly when `x = a`, so `Φ x` marks `x`, and `Φ (g x)` marks `g x`; for the transposition
  `g` of `0` and `1`, `Φ 1` holds at `(1)` and not at `(0)`.
- A one-point `X` with `S_0 = X`: the `(k, 0)`-th symbol holds exactly of injective tuples, a code
  fixed by every permutation.
- Dropping the anchoring condition `g (a i) = i` gives a map constant on orbits, not injective as
  soon as an orbit has two points (as for `X = ℕ`).
- For `X = RelationalConfiguration L ℕ` with the logic action, `Φ` is a reduction of
  `isoSetoid L ℕ` to `isoSetoid universalLanguage ℕ`, as the orbit relations are the isomorphism
  relations (`isoSetoid_eq_orbitRel`).
- The packing map of step 3 at small arities: `Nat.unpair 0 = (0, 0)`, so the nullary symbol of
  `universalLanguage` reads the nullary symbol `(0, 0)` of the source code; and
  `Nat.unpair 1 = (0, 1)`, so the unary symbol reads the unary symbol `(1, 0)` on its single
  entry. Reading `Nat.unpair m` in the other order would make the unary symbol read the nullary
  symbol `(0, 1)` instead.
- Unused entries are ignored: `Nat.unpair 2 = (1, 0)` (as `Nat.pair 1 0 = 2`), so the binary symbol
  of `universalLanguage` reads the nullary symbol `(k, n) = (0, 1)` on no entries, and its value at
  every pair `(b₀, b₁)` is that one bit, whatever the entries.
- The packing map is not surjective: a code of `universalLanguage` whose binary relation holds at
  `(0, 0)` and fails at `(1, 0)` is not in its image, since the binary relation of every image code
  is constant.

### Examples

The evaluation action on ℕ and the logic action.

### Dependencies

Tau Ceti (coding space, topology of `Equiv.Perm ℕ`, logic action, isomorphism);
CountableStructureSpaces Layer 1.2; NoncompactQuantumSymmetry Layer 4; Mathlib.

## Layer 5: Characterisations of Borel completeness

For any `K : Set (RelationalConfiguration L ℕ)` (countable relational `L`), prove that the following
are equivalent (camerlo-gao-boolean lines 94–105; gao-idst §13.1; becker-kechris-1996 §2.7 and
§3.4):

1. `BorelComplete K`;
2. `classIso graphClass` is Borel reducible to `classIso K` (`borelComplete_iff_graphClass`);
3. for every countable relational `L' : Language.{0, 0}`, `isoSetoid L' ℕ` is Borel
   reducible to `classIso K` (`borelComplete_iff_forall_structureSpace`);
4. for every such `L'` and every Borel, not necessarily invariant,
   `B ⊆ RelationalConfiguration L' ℕ`, `classIso B` is Borel reducible to `classIso K`
   (`borelComplete_iff_forall_measurableSet`);
5. for every Borel S∞-space `X` in a fixed universe, the orbit relation of `X` is Borel reducible
   to `classIso K` (`borelComplete_iff_forall_permSpace`).

Proof: (1) ⇒ (3) with `K' = Set.univ` and Layer 0.1; (3) ⇒ (4) by restriction; (4) ⇒ (1) since an
invariant Borel class is Borel; (1) ⇒ (2) trivially and (2) ⇒ (1) by `borelComplete_graphClass`
and transitivity; (5) ⇒ (3) because the logic action is a Borel S∞-space with orbit relation
`isoSetoid L' ℕ` (4.1, lifting to the fixed universe by `ULift`); (3) ⇒ (5) by Layer 4.2
with `L' = universalLanguage`. With Layer 1.3, (3) may quantify over countable languages with
function symbols. *Needs:* Layers 0.1, 1.2, 1.3, 2.3, 4.1, 4.2.

**Checks.**

- For `K = graphClass` all five hold.
- For `K = ∅` all five fail: each quantifies over a nonempty instance.
- For `K` the codes of one unary predicate, (2) fails: `classIso graphClass` has continuum many
  classes (the Cantor family of the second Check of 1.2, coded into graphs by 2.3), `K` countably
  many.
- In (5), the logic action on `RelationalConfiguration L' ℕ` recovers (3), and the trivial action on
  Cantor space shows that (5) contains the reducibility of equality on Cantor space.

### Examples

`graphClass`, for which all five characterisations hold; the empty class and the class of codes
of one unary predicate, for which all five fail.

### Dependencies

Layers 0–4.

## Layer 6: Consequences of Borel completeness

### 6.1 Back-and-forth equivalence of ordinal multiples

For `Language.order`-structures `M`, `N` whose relation is a linear order (a linear order with
`orderStructure`, or the decoded structure of a code in `linearOrderClass`), and tuples
`a : Fin n → M`, `b : Fin n → N` of the same atomic type, prove the interval lemma: for every
ordinal `γ`, `BFEquiv γ n a b` holds exactly when, listing the distinct values of `a` and of `b` in
increasing order, each of the open intervals they cut out of `M` (including the two unbounded
ones) is `BFEquiv γ` (empty tuples, induced order) to the corresponding interval of `N`. Proof by
induction on `γ`: at a successor, a new element of `M` falls in one interval or equals an entry,
and the interval hypothesis at the higher level supplies the matching element; at `0` there is
nothing to compare, the language having no nullary symbols (montalban-cst2 Lemma II.37,
lines 2322–2331, stated there for the one-sided relations `≤_α`). Prove with it the sum form: if
`A` is `BFEquiv γ` to `A'` and `B` to `B'` (empty tuples), then the ordered sum `A + B` is
`BFEquiv γ` to `A' + B'`, by the same induction, placing a new element in the summand that contains
it. Isomorphic linear orders are `BFEquiv γ` at every level (`FirstOrder.Language.Equiv.bfEquiv`
applied to the empty tuple).

Prove `bfEquiv_omega0_opow_mul`: for every ordinal `γ` and `Language.order`-structures `M`, `N`
whose relations are well-orders of types `ω ^ γ · δ` and `ω ^ γ · ε` with `δ, ε ≠ 0`, `BFEquiv γ 0`
holds between the empty tuples. Proof by induction on `γ`. At `0` it is trivial; at a limit, every
multiple of `ω ^ γ` is a multiple of `ω ^ γ'` for `γ' < γ`. At `γ + 1`: the previous level holds by
the induction hypothesis; for forth, an element `m` of `M` has initial segment of type
`ω ^ γ · μ + ρ` with `ρ < ω ^ γ` and final segment a nonzero multiple of `ω ^ (γ + 1)` (a remainder
below `ω ^ (γ + 1)` is absorbed on the left); choose `m'` in `N` with initial segment
`ω ^ γ · μ' + ρ`, where `μ' = 1` if `μ ≠ 0` and `μ' = 0` otherwise, which exists because `N` has
type at least `ω ^ (γ + 1)`; the initial segments are `BFEquiv γ` by the induction hypothesis and
the sum form of the interval lemma, the final segments by the induction hypothesis, so
`BFEquiv γ 1 (m) (m')` by the interval lemma; back is symmetric (montalban-cst2 Lemma II.38 and
Corollary II.39, lines 2337–2425, which compute the sharper one-sided levels `≤_{2α+1}`). *Needs:*
Tau Ceti `BFEquiv`, `BFEquiv.zero`, `BFEquiv.add_one`, `BFEquiv.limit`, `BFEquiv.mono`,
`SameAtomicType`, `sameAtomicType_order_iff`, `FirstOrder.Language.Equiv.bfEquiv`; Mathlib
`orderStructure`, `Ordinal.type`, ordinal division and left subtraction.

**Checks.**

- `γ = 0`: any two linear orders are `BFEquiv 0` (no nullary symbols); `γ = 1`: any two nonempty
  ones are `BFEquiv 1`, and the empty order is not `BFEquiv 1` to a nonempty one, so `δ ≠ 0` is
  needed.
- `ω` and `ω · 2` are `BFEquiv 2` (stronger than the theorem at `γ = 1`), but `ω` and `ω + 1` are
  not: the maximum of `ω + 1` cuts an empty upper interval, which no element of `ω` does, and
  empty against nonempty fails at level 1.
- `ω ^ 2` and `ω ^ 2 · 2` are `BFEquiv 2` by the theorem and are not isomorphic.

### 6.2 Borel complete isomorphism relations are not Borel

Prove `not_measurableSet_classIso_of_borelComplete`: if `BorelComplete K`, the set of pairs in
`K × K` with isomorphic entries is not measurable for the product of the subtype σ-algebras
(paolini-shelah-tfab Fact 1.7, lines 103–106, of which this is the non-Borel part; gao-idst §13.1).
Proof: a reduction `f` of `classIso linearOrderClass` to `classIso K` would make isomorphism on
`linearOrderClass` measurable (preimage under `f × f`); its complement in the closed set
`linearOrderClass × linearOrderClass` would be Borel, hence analytic, so the base's
`exists_uniform_bfSeparation` gives `β < ω₁` at which no two non-isomorphic linear orders are
`BFEquiv β`. The codes on ℕ of well-orders of types `ω ^ (1 + β)` and `ω ^ (1 + β) · 2` (countable
and infinite, transported along bijections with ℕ by `Equiv.encodeVia`) are not isomorphic
(`Equiv.isoSetoid_encodeVia_iff`, the two ordinals being distinct), yet `BFEquiv (1 + β)` by 6.1,
moved to the codes by `FirstOrder.Language.Equiv.bfEquiv` and `BFEquiv.trans`, and so
`BFEquiv β` by `BFEquiv.mono`, a contradiction. Consequences, for invariant Borel `K` with
`BorelComplete K`:

- Unbounded Scott height: for every `β < ω₁` some code in `K` has `scottHeight` greater than `β`;
  otherwise `lopez_escobar` writes `K = modelsOf φ` and `measurableSet_iso_inter_of_scottHeight_le`
  makes isomorphism on `K` Borel.
- `classIso K` is Borel reducible to no equivalence relation with Borel graph on a measurable
  space, since Borelness pulls back along reductions (`BorelReducible.measurableSet_setOf`); in
  particular not to `eZero` (`measurableSet_eZero`).
- The set `{p ∈ K ×ˢ K | ¬ p.1 ≅ p.2}` of non-isomorphic pairs is not an analytic subset of
  `RelationalConfiguration L ℕ × RelationalConfiguration L ℕ`: otherwise its complement, the union
  of the analytic set `iso ∩ (K ×ˢ K)` (`analyticSet_setOf_isoSetoid`, with `K ×ˢ K` Borel) and the
  Borel set
  `(K ×ˢ K)ᶜ`, would be analytic too, so both would be Borel (Suslin,
  `MeasureTheory.AnalyticSet.measurableSet_of_compl`), and the preimage of the isomorphic pairs
  under the measurable inclusion `K × K → RelationalConfiguration L ℕ × RelationalConfiguration L ℕ`
  would be measurable for the product of the subtype σ-algebras, against the theorem.

*Needs:* 6.1, Layer 3.3, Layer 0.1; Tau Ceti `Equiv.encodeVia`, `Equiv.isoSetoid_encodeVia_iff`,
`analyticSet_setOf_isoSetoid`, `BFEquiv.mono`, `BFEquiv.trans`, `FirstOrder.Language.Equiv.bfEquiv`,
`scottHeight`, `modelsOf`, `BorelReducible.measurableSet_setOf`, `measurableSet_eZero`;
CountableStructureSpaces Layer 4.3 (`measurableSet_iso_inter_of_scottHeight_le`), Layer 4.4
(`exists_uniform_bfSeparation`) and Layer 5 (`lopez_escobar`); Mathlib
`MeasureTheory.AnalyticSet.measurableSet_of_compl`.

**Checks.**

- `graphClass`, `linearOrderClass` and `treeClass` all have non-Borel isomorphism relations.
- The class of codes of one unary predicate has Borel isomorphism relation (its Scott heights are
  at most `ω`, base worked example 2), consistent with its not being Borel complete (1.2).
- `K = ∅` has the empty, Borel, isomorphism relation and is not Borel complete.

### 6.3 E₀ and continuum many isomorphism types

In the relational language with one binary symbol `S` and unary symbols `Z` and `P`, let the code
of `x ∈ ℕ → Bool` live on `Finset ℕ × ℕ` (relabelled to ℕ): on each copy `{F} × ℕ`, `S` is the
successor relation, `Z` is `{(F, 0)}`, and `P` is the set of `(F, n)` with `x n ≠ (n ∈ F)` (that is,
`x` with the coordinates in `F` flipped). Prove that this continuous map reduces `TauCeti.eZero` to
isomorphism: every copy is rigid (an isomorphism fixes the `Z`-point and follows `S`), the copies
of `x` enumerate the `eZero`-class of `x` bijectively, and so two codes are isomorphic exactly when
the classes coincide (`eZero_iff_finite`; camerlo-gao-boolean lines 94–100, of which this is the
instance for E₀). Prove `borelReducible_eZero_of_borelComplete`: if `BorelComplete K`, then `eZero`
is Borel reducible to `classIso K` (Layer 5 (3)); hence equality on Cantor space is
(`borelReducible_bot_eZero`), `K` has continuum many isomorphism types (at least `𝔠` by
`BorelReducible.lift_mk_quotient_le` and `mk_quotient_eZero`, at most `𝔠` by `mk_le_continuum`),
and `not_isSmooth_of_borelComplete`: `¬ Setoid.IsSmooth (classIso K)`
(`not_isSmooth_of_borelReducible_eZero`). *Needs:* Layers 1.1, 5; Tau Ceti `eZero`,
`eZero_iff_finite`, `borelReducible_bot_eZero`, `mk_quotient_eZero`,
`BorelReducible.lift_mk_quotient_le`, `BorelReducible.trans`, `mk_le_continuum`, `Setoid.IsSmooth`,
`not_isSmooth_of_borelReducible_eZero`, `continuous_iff`.

**Checks.**

- `x = 0^ω` and `y = 1 0^ω` are `eZero`-related, and the bijection `F ↦ F ∆ {0}` of copies gives an
  isomorphism of their codes; `x = 0^ω` and `y = 1^ω` are not related, and every copy of `x` has
  finitely many `P`-points while every copy of `y` has cofinitely many, so the codes are not
  isomorphic.
- The only automorphism of one copy `(ℕ, S, Z, P)` is the identity, for every `P`.
- Using only the copy of `x` itself (`F = ∅`) reduces equality on Cantor space, not `eZero`: `x` and
  `y` that differ at one coordinate give non-isomorphic single copies.

### 6.4 The Friedman–Stanley obstruction

Prove `not_borelComplete_of_rank_bounded`: let `K ⊆ RelationalConfiguration L ℕ` be Borel and
`ρ : RelationalConfiguration L ℕ → Ordinal.{0}`; assume (a) for every `α < ω₁`, isomorphism
restricted to `K ∩ {c | ρ c ≤ α}` is measurable as a subset of the square; (b) every analytic subset
of `K` has `ρ` bounded by some `α < ω₁`. Then `¬ BorelComplete K` (friedman-stanley-1989 §4;
hjorth-kechris-1996 §4–§5). Proof: a reduction `f` of `classIso graphClass` to `classIso K` has
analytic image (`MeasurableSet.analyticSet_image`, `graphClass` being standard Borel), contained in
some `{ρ ≤ α}` by (b); then isomorphism on `graphClass` is the preimage of a measurable set by (a),
against 6.2. *Needs:* 6.2, Layer 2.3; Mathlib `MeasurableSet.analyticSet_image`.

**Checks.**

- With `ρ = 0`, hypothesis (a) says isomorphism on `K` is Borel, and the lemma is the
  contrapositive of 6.2.
- For the codes of one unary predicate and `ρ = 0`, (a) and (b) hold and the conclusion is the
  Check of 1.2.
- For `K = graphClass` no `ρ` satisfies both hypotheses; when `ρ` restricted to `K` is the height
  of a family of well-founded trees with closed node sets, (b) is the base's
  `analytic_treeHeight_bounded`, so in such a stratification of `graphClass` hypothesis (a) must
  fail at some `α`.

### 6.5 The lower part of the reducibility order

Prove, for invariant Borel `K` with `BorelComplete K`: `classIso K` is not smooth, `eZero` is Borel
reducible to it and it is not Borel reducible to `eZero` (6.2, 6.3); and for the class of codes of
one unary predicate, isomorphism is Borel with countably many classes, hence smooth
(`Setoid.isSmooth_of_countable_quotient`, each class being Borel), and its Scott heights are
bounded (base worked example 2). So
on these examples E₀ lies strictly between smooth isomorphism relations and Borel complete ones,
and a smooth relation is Borel (`IsSmooth.measurableSet_setOf`) while a Borel complete one is not
(gao-idst §5.2 and §13.1). *Needs:* 6.2, 6.3; Tau Ceti `Setoid.IsSmooth`,
`Setoid.isSmooth_of_countable_quotient`, `IsSmooth.measurableSet_setOf`, `eZero`,
`not_isSmooth_eZero`, `measurableSet_eZero`, `borelReducible_bot_eZero`, `mk_quotient_eZero`,
`BorelReducible.lift_mk_quotient_le`; CountableStructureSpaces worked example 2.

**Checks.**

- `eZero` is not smooth (`not_isSmooth_eZero`) but is Borel (`measurableSet_eZero`).
- Equality on Cantor space reduces to `eZero` (`borelReducible_bot_eZero`) and to
  `classIso graphClass` (6.3).
- For the codes of one unary predicate, `eZero` is not Borel reducible to their isomorphism
  relation: that relation has countably many classes and `eZero` has continuum many, and a
  reduction would inject the classes of `eZero` into those of the relation
  (`BorelReducible.lift_mk_quotient_le`). In the other direction the isomorphism relation of these
  codes is Borel reducible to `eZero`: it is smooth, so reducible to equality on Cantor space,
  which is reducible to `eZero` (`borelReducible_bot_eZero`, `BorelReducible.trans`).

### Examples

Ordinal multiples in 6.1; the three Borel complete classes in 6.2; the copies of a real in 6.3.

### Dependencies

Layers 0–5; Tau Ceti (back-and-forth relation, isomorphism and transport of codes, Borel
reducibility, smoothness, E₀, Scott height); CountableStructureSpaces Layers 3 (a Check of 6.4),
4.3, 4.4 and 5 and worked example 2; Mathlib.

## Downstream consumers

- A roadmap on the Borel completeness of algebraic classes consumes `BorelComplete`, the
  functional coding space of Layer 1.3, the characterisations of Layer 5 and the obstruction lemma
  of Layer 6.4.
- Any roadmap that needs a benchmark for the classification problem of a class of countable
  structures consumes `borelComplete_graphClass`, `borelComplete_linearOrderClass`,
  `borelComplete_treeClass` and Layer 6.
- A roadmap on universal G-spaces for closed subgroups of S∞ consumes the universal embedding of
  Layer 4.2.

## References

- paolini-shelah-tfab: G. Paolini and S. Shelah, *Torsion-free abelian groups are Borel
  complete*, Ann. of Math. 199 (2024); arXiv:2102.12371.
- becker-kechris-bams: H. Becker and A. S. Kechris, *Borel actions of Polish groups*, Bull. AMS 28
  (1993); arXiv:math/9304208.
- camerlo-gao-boolean: R. Camerlo and S. Gao, *The completeness of the isomorphism relation for
  countable Boolean algebras*, Trans. AMS 353 (2001).
- montalban-cst1: A. Montalbán, *Computable structure theory: within the arithmetic*, author's
  draft of Part 1 (2019).
- montalban-cst2: A. Montalbán, *Computable structure theory: beyond the arithmetic*, author's
  draft of Part 2 (2025).
- friedman-stanley-1989: H. Friedman and L. Stanley, *A Borel reducibility theory for classes of
  countable structures*, J. Symbolic Logic 54 (1989).
- gao-idst: S. Gao, *Invariant Descriptive Set Theory*, CRC Press, 2009.
- becker-kechris-1996: H. Becker and A. S. Kechris, *The Descriptive Set Theory of Polish Group
  Actions*, LMS Lecture Notes 232, 1996.
- kechris-cdst: A. S. Kechris, *Classical Descriptive Set Theory*, GTM 156, 1995.
- hjorth-2000: G. Hjorth, *Classification and Orbit Equivalence Relations*, AMS, 2000.
- hjorth-kechris-1996: G. Hjorth and A. S. Kechris, *Borel equivalence relations and
  classifications of countable models*, Ann. Pure Appl. Logic 82 (1996).
- mekler-1981: A. H. Mekler, *Stability of nilpotent groups of class 2 and prime exponent*,
  J. Symbolic Logic 46 (1981).
