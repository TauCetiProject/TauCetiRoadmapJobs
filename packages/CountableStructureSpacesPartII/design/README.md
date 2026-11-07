# Roadmap: countable structure spaces, Part II: Borel reducibility of isomorphism relations and Borel completeness

**Summary.** The CountableStructureSpaces roadmap builds the compact space `StructureSpace L` of
relational structures on ℕ, the Polish group S∞ = `Equiv.Perm ℕ` acting on it by relabelling, and
the isomorphism relation `structureIsoSetoid L` as the orbit relation of that action. This Part II
compares isomorphism relations of different classes of countable structures by Borel
reducibility, in the sense of `BorelReducible` from the BorelEquivalenceRelations roadmap. It
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

- the restriction `classIso K` of isomorphism to a class `K`, the restriction and corestriction
  laws for Borel reductions between classes, and set reducibility `SetReducible` with the
  implication from Borel reducibility (Layer 0);
- carrier relabelling of codes, the definition `BorelComplete` with its transfer laws, and the
  functional coding space of a language with function symbols with its comparison to the graph
  language (Layer 1);
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

- the general theory of Borel reducibility: `BorelReducible`, its reflexivity and transitivity,
  the injection on quotients, `IsSmooth`, Silver's theorem in reducibility form, `eZero` and its
  non-smoothness (BorelEquivalenceRelations §5.1–§5.4), and products of analytic sets
  (BorelEquivalenceRelations §0.3);
- the coding space, the logic action, model classes, isomorphism as the orbit relation, Scott
  height, uniform back-and-forth separation, López–Escobar and the well-order class
  (CountableStructureSpaces Layers 0–6);
- back-and-forth equivalence, tuple back-and-forth systems and the countable back-and-forth
  theorem (InfinitaryLogic, Layer 1);
- the small presentation of a countable language in universe 0 (InfinitaryModelExistence
  Layer 0.3), the graph language and the graph expansion of a structure with function symbols
  (InfinitaryModelExistence Layer 6), and the homeomorphism of code spaces induced by a language
  equivalence (CountableModelCounting Layer 0, transport between presentations);
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
   `[Countable (Σ l, L.Relations l)]` as separate instance arguments, as in the base. The source
   languages quantified over in the definition of Borel completeness live in
   `FirstOrder.Language.{0, 0}`; Layer 1.2 proves that any other universe gives the same notion.
2. **Classes and their isomorphism relations.** A class is a set `K : Set (StructureSpace L)`.
   It is *invariant Borel* when `MeasurableSet K` and the base's `IsomorphismInvariant K` hold
   (equivalently `ActionInvariant K`, base Layer 1). `classIso K` is the base's
   `structureIsoSetoid L` pulled back to the subtype `K`, written ≅_K; `K` carries the subtype
   σ-algebra. A Borel reduction between classes is `BorelReducible (classIso K') (classIso K)`.
3. **Continuity.** Every reduction constructed in Layers 2 and 3 is continuous on the whole coding
   space; the theorems state this strengthening where it holds.
4. **The logic action.** `(σ • c)⟨R, v⟩ = c⟨R, σ⁻¹ ∘ v⟩` (base `smul_apply`). Witness: in the
   language of one unary predicate, the 3-cycle `0 ↦ 1 ↦ 2 ↦ 0` sends the code of `P = {0}` to the
   code of `P = {1}` (base Layer 1.2 acceptance check); every equivariance computation below is
   checked against this convention.
5. **S∞ as a Borel space.** `Equiv.Perm ℕ` carries the base topology and the Borel σ-algebra of
   that topology (Layer 4.1). A *Borel S∞-space* is a standard Borel space with a `MulAction`
   whose action map is jointly measurable (Mathlib `MeasurableSMul₂`).
6. **Fixed languages.** Graphs are codes in Mathlib's `Language.graph` (one binary symbol `adj`).
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
    `Ordinal.omega0 ^ γ`. Back-and-forth levels are those of InfinitaryLogic's `BFEquiv`.

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

Mathlib has no Borel reducibility, no topology on `Equiv.Perm ℕ` and no space of structures.

### From Tau Ceti

Nothing. The pinned Tau Ceti has no descriptive set theory of countable structures and none of
the InfinitaryLogic modules; the InfinitaryLogic declarations below are consumed from that
completed roadmap.

### From TauCetiRoadmap.CountableStructureSpaces

All at its Layers 0–6; every name is the base's.

- Layer 0: `RelQueryOn`, `StructureSpaceOn`, `StructureSpace`, `StructureSpaceOn.toStructure`,
  `StructureSpaceOn.ofStructure`, `encodeVia` with `nonempty_equiv_encodeVia`, the product
  topology and σ-algebra with the Polish, standard Borel and compactness instances,
  `isClopen_setOf_apply`, `mk_structureSpaceOn_le_continuum`, `graphCode` with
  `measurableEmbedding_graphCode` (range: the closed set of symmetric irreflexive codes).
- Layer 1: `instTopologicalSpacePerm`, `hasBasis_nhds_one_fixingSubgroup`,
  `isTopologicalGroup_perm`, `polishSpace_perm`, the logic action with `smul_apply`,
  `continuousSMul_structureSpaceOn`, `orbitRel_iff_nonempty_equiv`, `ActionInvariant`,
  `IsomorphismInvariant`, `actionInvariant_iff_isomorphismInvariant`,
  `analyticSet_orbitRel_graph`.
- Layer 2: `modelsOf`, `measurableSet_modelsOf`, `standardBorelSpace_modelsOf`.
- Layer 3: `analytic_treeHeight_bounded` (an analytic family of well-founded trees with closed node
  sets has heights bounded below `ω₁`), used in a Check of Layer 6.4.
- Layer 4: `structureIsoSetoidOn`, `structureIsoSetoid`, `structureIsoSetoidOn_eq_orbitRel`,
  `structureIsoSetoid_eq_orbitRel`, `bfEquivSetoid`, `scottHeight`,
  `measurableSet_iso_inter_of_scottHeight_le` (bounded Scott height on a model class gives a
  Borel isomorphism relation there), `exists_uniform_bfSeparation` (an analytic set of
  non-isomorphic pairs of codes is separated at one level `β < ω₁`).
- Layer 5: `lopez_escobar` (an invariant Borel class of codes is `modelsOf φ` for a sentence `φ`).
- Layer 6.2: `wellOrderClass`, `exists_mem_wellOrderClass_type_eq`,
  `analyticSet_compl_wellOrderClass` and `not_measurableSet_wellOrderClass`, used in Checks.

### From TauCetiRoadmap.BorelEquivalenceRelations

- §0.3: `MeasureTheory.AnalyticSet.prod`.
- §5.1: `BorelReducible E F` for setoids on measurable spaces (a measurable `f` with
  `E x y ↔ F (f x) (f y)`), `BorelReducible.refl`, `BorelReducible.trans`, and the injection
  `Quotient E → Quotient F` induced by a reduction.
- §5.2: `IsSmooth`, `isSmooth_iff_countablySeparated`, `isSmooth_of_countable_quotient`, and the
  fact that a smooth equivalence relation is Borel.
- §5.3: `borelReducible_bot_cantor_iff`.
- §5.4: `eZero`, `measurableSet_eZero`, `not_isSmooth_eZero`, `borelReducible_bot_eZero`,
  `not_isSmooth_of_borelReducible_eZero`.
- §0.5 vocabulary: `HasCantorAntichainOn` and `HasCantorAntichainOn.continuum_le_mk_quotient`.

### From TauCetiRoadmap.InfinitaryLogic

Layer 1 of the completed roadmap: `BFEquiv`, `BFEquiv.monotone`, `SameAtomicType`,
`PotentialIso`, `potentialIso_of_equiv` (an isomorphism is a potential isomorphism),
`potentialIso_iff_BFEquiv_all` (potential isomorphism is `BFEquiv` at every level),
`IsTupleBFSystem`, `potentialIso_iff_exists_isTupleBFSystem` (for a relational language a tuple
back-and-forth system exists exactly when the structures are potentially isomorphic) and
`countable_potentialIso_iff_iso` (for countable structures, potential isomorphism is
isomorphism).

### From TauCetiRoadmap.InfinitaryModelExistence

- Layer 0.3: `smallPresentation L : FirstOrder.Language.{0, 0}` and
  `smallPresentationEquiv L : L ≃ᴸ smallPresentation L`, for countably many function and
  relation symbols.
- Layer 6: `GraphRelation`, `graphLanguage L` (relational, one `(n+1)`-ary symbol for the graph of
  each `n`-ary function symbol), `graphExpansion M`, and the graph axioms and reconstruction
  (`graphAxioms`, `reconstructStructure`) of its README. This roadmap does not build a second
  graph translation; it builds only the coding-space side of it.

### From TauCetiRoadmap.CountableModelCounting

Layer 0, transport between presentations: for a language equivalence `e : L ≃ᴸ L'` of relational
languages, the induced homeomorphism of code spaces on every carrier, preserving isomorphism and
sending model classes to model classes.

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
consequences; its back-and-forth computation for ordinal multiples (6.1) depends only on
InfinitaryLogic and can be built in parallel with Layers 1–5.

## Layer 0: Isomorphism relations of classes and two reducibilities

### 0.1 Isomorphism restricted to a class

Define `classIso K : Setoid K` for `K : Set (StructureSpace L)` as `Setoid.comap` of the base's
`structureIsoSetoid L` along the inclusion `K → StructureSpace L`, with `K` carrying the subtype
σ-algebra (paolini-shelah-tfab Definition 1.4, line 83; camerlo-gao-boolean lines 106–110).
API:

- Unfolding: for `x y : K`, `classIso K x y` holds exactly when the decoded structures of `x` and
  `y` are isomorphic, and exactly when `x` and `y` lie in one orbit of the logic action (base
  `structureIsoSetoid_eq_orbitRel`).
- Whole space: for `K = Set.univ` the inclusion is a measurable equivalence, so `classIso univ`
  and `structureIsoSetoid L` are Borel reducible to each other.
- Restriction: if `A ⊆ K` then `classIso A` is Borel reducible to `classIso K` by the inclusion
  (measurable for every `A`, by `measurable_subtype_coe` and `Measurable.subtype_mk`); hence, if
  `classIso K'` is Borel reducible to `classIso K` and `A ⊆ K'`, then `classIso A` is Borel
  reducible to `classIso K` (paolini-shelah-tfab Definition 1.6, lines 95–101).
- Corestriction: if `f : StructureSpace L' → StructureSpace L` is measurable, maps `K'` into `K`,
  and for all `x y ∈ K'` the codes `x, y` are isomorphic exactly when `f x, f y` are, then
  `classIso K'` is Borel reducible to `classIso K`. Every reduction constructed in this roadmap
  is produced this way.
- Quotients: a reduction of `classIso K'` to `classIso K` induces an injection of the set of
  isomorphism types of `K'` into that of `K` (BorelEquivalenceRelations §5.1, not restated); the
  reduction itself need not be injective on codes.

*Needs:* CountableStructureSpaces Layer 4.1 (`structureIsoSetoid`,
`structureIsoSetoid_eq_orbitRel`); BorelEquivalenceRelations §5.1 (`BorelReducible`,
`BorelReducible.trans`); Mathlib `Setoid.comap`, `measurable_subtype_coe`,
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
- From Borel to set reducibility: if `BorelReducible E F` for setoids `E` on `X` and `F` on `Y`,
  then the graph `{p | E p.1 p.2}` is set reducible to `{p | F p.1 p.2}` by `Prod.map f f`
  (paolini-shelah-tfab Remark 1.5, lines 88–91).

Prove the converse fails: the graph of `eZero` is set reducible to the diagonal of Cantor space
(every Borel subset of a measurable space is, by the measurable map with two values `(0, 0)` and
`(0, 1)`, where `0` and `1` are the constant sequences), whereas `eZero` is not Borel reducible to
equality on Cantor space, since that is `IsSmooth eZero` and BorelEquivalenceRelations proves
`not_isSmooth_eZero` (paolini-shelah-tfab Remark 1.5, line 91). *Needs:* BorelEquivalenceRelations
§5.2 (`IsSmooth`) and §5.4 (`eZero`, `measurableSet_eZero`, `not_isSmooth_eZero`); Mathlib
`Measurable.exists_continuous`, `MeasureTheory.AnalyticSet.preimage`.

**Checks.**

- `A = {0} ⊆ ℕ` and `B` the diagonal of `(ℕ → Bool) × (ℕ → Bool)`: the map `0 ↦ (0, 0)`,
  `n + 1 ↦ (0, 1)` has preimage of `B` equal to `{0}`.
- `A` is set reducible to `∅` exactly when `A = ∅`, and to `Set.univ` exactly when `A = univ`; so
  the diagonal of a one-point space (which is everything) receives only full sets.
- The complement of the base's well-order class is analytic and not Borel, so it is not set
  reducible to the diagonal: Borelness would pull back.
- For an injective measurable `f : X → Y`, the graph of equality on `X` is the preimage of the
  diagonal of `Y` under `Prod.map f f`, the instance of the implication for `E = ⊥`, `F = ⊥`.

### Examples

The one-unary-predicate classes of 0.1; `eZero` against the diagonal in 0.2.

### Dependencies

CountableStructureSpaces Layers 0, 1, 4.1 and 6.2 (Checks only); BorelEquivalenceRelations §5.1,
§5.2, §5.4; Mathlib.

## Layer 1: Borel completeness

### 1.1 Carrier relabelling

For any language and a bijection `e : α ≃ β`, define the relabelling map from
`StructureSpaceOn L α` to `StructureSpaceOn L β`, sending `c` to the code whose value at
`⟨R, w⟩` is `c ⟨R, e.symm ∘ w⟩`. This continues the base's transport `encodeVia` from structures
to codes (own construction; the relabelling form of the logic action is becker-kechris-bams
lines 159–164). API:

- It is a homeomorphism and a measurable equivalence, with inverse the relabelling along
  `e.symm`; relabelling along `e.trans e'` is the composite, and along `Equiv.refl` is the
  identity.
- For `α = β = ℕ`, relabelling along `σ` is the logic action `σ • ·`.
- For relational `L`, the relabelled code is `encodeVia e` of the decoded structure of `c`, so `c`
  and its relabelling decode to isomorphic structures (base `nonempty_equiv_encodeVia`), and two
  codes on `α` are isomorphic exactly when their relabellings are.
- Relabelling maps invariant Borel classes to invariant Borel classes, and `classIso` of a class
  and of its image are Borel reducible to each other.

*Needs:* CountableStructureSpaces Layer 0 (`StructureSpaceOn`, `encodeVia`,
`nonempty_equiv_encodeVia`) and Layer 1.2 (`smul_apply`).

**Checks.**

- In the language of one unary predicate, relabelling the code of `P = {0}` along the
  transposition of `0` and `1` gives the code of `P = {1}`, the same as the logic action of that
  transposition.
- For `α = Fin 0`, the space of codes in a language with no nullary symbols is a single point and
  relabelling along `Fin 0 ≃ Fin 0` is the identity; with one nullary symbol it is two points,
  both fixed.
- Relabelling along `e` followed by relabelling along `e.symm` is the identity on codes;
  relabelling along `e` twice is not the identity when `e` is a 3-cycle of `ℕ` and the code is
  `P = {0}`.

### 1.2 The definition of Borel completeness

Define `BorelComplete K` for `K : Set (StructureSpace L)`: for every `L' : Language.{0, 0}` with
`[L'.IsRelational]` and `[Countable (Σ l, L'.Relations l)]`, and every invariant Borel
`K' : Set (StructureSpace L')`, `classIso K'` is Borel reducible to `classIso K`
(paolini-shelah-tfab Definition 1.6, lines 95–101; camerlo-gao-boolean lines 106–110). The
definition imposes nothing on `K`; theorems assume `K` invariant Borel where they need it. API:

- Transfer: if `BorelComplete K` and `classIso K` is Borel reducible to `classIso K₂`, then
  `BorelComplete K₂`; in particular `K ⊆ K₂` and `BorelComplete K` give `BorelComplete K₂`
  (Layer 0.1 restriction).
- Bireducibility: Borel completeness depends only on `classIso K` up to Borel bireducibility.
- Universes: if `BorelComplete K`, then for every countable relational `L'` in any universes and
  every invariant Borel `K'`, `classIso K'` is Borel reducible to `classIso K`. Proof: transport
  `K'` along `smallPresentationEquiv L'` (InfinitaryModelExistence Layer 0.3) with the code-space
  homeomorphism of CountableModelCounting Layer 0, which preserves isomorphism and invariant
  Borel classes.
- Renaming: for a language equivalence `e : L ≃ᴸ L₂`, `K` is Borel complete exactly when its image
  under the code-space homeomorphism of `e` is.

*Needs:* Layer 0.1; InfinitaryModelExistence Layer 0.3 (`smallPresentation`,
`smallPresentationEquiv`); CountableModelCounting Layer 0 (transport between presentations);
BorelEquivalenceRelations §5.1.

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

For a language `L` with `[Countable (Σ l, L.Functions l)]` and `[Countable (Σ l, L.Relations l)]`
(function symbols allowed), define the functional coding space: pairs of a function table, a map
from `Σ f : (Σ l, L.Functions l), (Fin f.1 → ℕ)` to `ℕ`, and a relation code in
`StructureSpace L`, with the product topology (ℕ discrete); decoding gives an `L.Structure ℕ`, and
`Equiv.Perm ℕ` acts by `(σ • F)⟨f, v⟩ = σ (F ⟨f, σ⁻¹ ∘ v⟩)` on tables and by the logic action on
relation codes. Define the graph-code map from this space to `StructureSpace (graphLanguage L)`:
the code of `graphExpansion` (InfinitaryModelExistence Layer 6) of the decoded structure, whose
value at a graph symbol `G_f` and a tuple `w : Fin (n+1) → ℕ` is whether `F ⟨f, Fin.init w⟩` equals
`w (Fin.last n)`. Prove:

- The functional coding space is Polish, the action is continuous, and its orbits are the
  isomorphism classes of the decoded structures.
- The graph-code map is continuous, injective and equivariant; its range is the set of codes in
  which every graph relation is the graph of a total function, a Gδ set (totality of each graph
  relation is a countable intersection of open conditions, functionality a closed one), which is
  not closed when `L` has at least one function symbol and is the whole coding space when `L` is
  relational; the map is a homeomorphism onto its range (the value `F ⟨f, v⟩` is locally constant
  on the range).
  On its range it agrees with InfinitaryModelExistence's reconstruction: decoding the inverse
  image gives `reconstructStructure` of the graph structure.
- Two points of the functional space decode to isomorphic structures exactly when their graph
  codes are isomorphic, so for every invariant Borel class `K` of the functional space, its image
  is an invariant Borel class of graph codes and the isomorphism relations of `K` and of its
  image are Borel reducible to each other.
- The models on ℕ of a set `T` of first-order `L`-sentences form an invariant Borel class of the
  functional space: atomic formulas define clopen sets (term evaluation looks up finitely many
  table entries), connectives preserve Borelness, and quantifiers over ℕ are countable unions
  and intersections.
- Call an invariant Borel class `K` of the functional space Borel complete when its image under
  the graph-code map is (in the sense of 1.2). If `K₀ ⊆ StructureSpace L₀` is Borel complete,
  then for every countable `L'` with function symbols and every invariant Borel class `K'` of its
  functional space, the isomorphism relation of `K'` is Borel reducible to `classIso K₀`; so
  quantifying over relational languages in 1.2 loses nothing (camerlo-gao-boolean lines 87–93;
  paolini-shelah-tfab lines 60–64).

*Needs:* InfinitaryModelExistence Layer 6 (`graphLanguage`, `graphExpansion`,
`reconstructStructure`); Layer 1.2; CountableStructureSpaces Layer 0 and Layer 1.2.

**Checks.**

- For `L` with one constant symbol `k` and nothing else, a function table is one number `F k`,
  and the graph code of the table with `F k = 3` has unary graph relation `{3}`.
- A graph code whose relation for a unary function symbol holds at `(0, 1)` and `(0, 2)` is not in
  the range (functionality fails), nor one where it holds at no `(0, y)` (totality fails); the
  codes with the value at `0` equal to `n` converge, as `n → ∞`, to a code with no value at `0`,
  so the range is not closed.
- For relational `L` the function table is the empty map, and the graph-code map is the base's
  coding composed with the relabelling of symbols `R ↦ base R`, an equivalence of languages; its
  range is the whole coding space, which is closed.
- The models of Mathlib's `Theory.simpleGraph` in the functional space of `Language.graph` are
  exactly `graphClass`; the models of Mathlib's `Theory.fieldOfChar 2` form an invariant Borel
  class containing a code of the countable field `𝔽₂(t)` and no code of `ℚ`.

### Examples

The one-unary-predicate classes; renaming `adj`; constant symbols and fields in 1.3.

### Dependencies

Layer 0; CountableStructureSpaces Layers 0–2; InfinitaryModelExistence Layers 0.3 and 6;
CountableModelCounting Layer 0; BorelEquivalenceRelations §5.1.

## Layer 2: Every countable structure codes into a graph

### 2.1 The incidence graph of a structure

Fix a countable relational `L'` and an injection `ι` of its relation symbols into ℕ
(`Encodable.ofCountable`). The base vertex set is the disjoint union of four countable sets:
points `p_a` for `a ∈ ℕ`; tuple vertices `t_q` for `q = ⟨R, v⟩ : RelQueryOn L' ℕ`; position
vertices `s_{q,j}` for `j < arity R`; truth vertices `u_q`. Colour them by `κ(p_a) = 0`,
`κ(u_q) = 1`, `κ(s_{q,j}) = 2 + 2j`, `κ(t_q) = 3 + 2ι(R)`. For a code `c`, the incidence graph `H_c`
has the edges `t_q — s_{q,j}` and `s_{q,j} — p_{v j}` for all `q`, `j`, and `t_q — u_q` exactly when
`c q = true`. Prove (own construction; the coding of structures in graphs is classical,
montalban-cst1 Theorem VI.27, lines 4572–4659, which uses different gadgets):

- `H_c` is bipartite, with sides points and tuple vertices against position and truth vertices,
  hence triangle-free; only the tuple–truth edges depend on `c`, each on one coordinate.
- Two codes `c, d` are isomorphic exactly when some bijection of the base vertices preserves
  colours and maps `H_c` onto `H_d`. If `d = σ • c`, the bijection moves `p_a` to `p_{σ a}` and
  `q = ⟨R, v⟩` to `⟨R, σ ∘ v⟩` in the three other sorts. Conversely a colour-preserving isomorphism
  restricts on points to some `σ`; it sends `t_q` to a tuple vertex of the same symbol, the unique
  neighbour of colour `2 + 2j` of `t_q` to that of the image, and the unique point neighbour of
  `s_{q,j}` to that of the image, so the image of `q` is `⟨R, σ ∘ v⟩`; the truth edge at `t_q` is
  present exactly when it is at the image, so `d = σ • c`.

*Needs:* CountableStructureSpaces Layer 0 (`RelQueryOn`), Layer 1.2 (`smul_apply`) and Layer 4.1
(`structureIsoSetoid_eq_orbitRel`); Mathlib `Encodable.ofCountable`.

**Checks.**

- With one binary symbol `R` and `c` the code of `R = {(0, 1)}`: the tuple vertex of `⟨R, ![0, 1]⟩`
  has three neighbours (two positions and its truth vertex), the tuple vertex of `⟨R, ![1, 0]⟩` has
  two.
- For `L'` with no relation symbols there are only points, `H_c` has no edges, and all codes (one
  code) give the same graph.
- A nullary symbol `R` gives a tuple vertex with no position neighbours, adjacent to its truth
  vertex exactly when `c ⟨R, ![]⟩ = true`; two codes differing only there have non-isomorphic
  coloured graphs.
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

Define `graphClass : Set (StructureSpace Language.graph)` as the codes whose decoded `adj` is
irreflexive and symmetric, the models of Mathlib's `Theory.simpleGraph`. API: it is closed and
invariant, equals the range of the base's `graphCode`, and `graphCode` is a measurable equivalence
from Mathlib's `SimpleGraph ℕ` onto it; it carries `standardBorelSpace_modelsOf`.

**Checks.**

- The code of the empty graph is in `graphClass`; a code with `adj(0, 0)` is not; a code with
  `adj(0, 1)` and not `adj(1, 0)` is not.
- The codes of the one-edge graphs on `{0, 1}` and on `{5, 7}` are isomorphic; the code of the
  one-edge graph and that of the two-edge path are not.
- `graphClass` is the range of the base's `graphCode`, and membership of a code depends only on its
  values at the queries `adj(i, i)` and at the pairs `adj(i, j)`, `adj(j, i)`: it is an
  intersection of clopen sets.

Prove `borelComplete_graphClass : BorelComplete graphClass`: for every countable relational `L'`,
the map sending `c` to the relabelling, along a fixed bijection of the countably infinite vertex
set with ℕ, of the code of the tagged incidence graph of `c` is continuous on `StructureSpace L'`
(each coordinate is constant or one coordinate of `c`), lands in `graphClass`, and reflects and
preserves isomorphism (2.1, 2.2, 1.1); restrict it to `K'` (Layer 0.1). The reduction is the same
continuous map for every `K'` (friedman-stanley-1989 Theorem 1; camerlo-gao-boolean lines 111–112;
paolini-shelah-tfab line 125). *Needs:* 2.1, 2.2, Layer 1.1, Layer 1.2, Layer 0.1;
CountableStructureSpaces Layer 0 (`graphCode`, `isClopen_setOf_apply`).

### Examples

A structure with one binary relation and its tagged incidence graph; `L'` empty.

### Dependencies

Layers 0 and 1; CountableStructureSpaces Layers 0, 1.2 and 4.1; Mathlib `Language.graph`.

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

For a code `c ∈ graphClass` with decoded graph `G`, and `x : List ℚ`, let `a(x) := x.map ν` (a
tuple of vertices) and let the colour `χ_c(x)` be a fixed injective encoding in ℕ of the length of
`x` together with the atomic diagram of `a(x)` in `G` (for `i, j` below the length: whether
`a_i = a_j` and whether `G.Adj a_i a_j`). Prove:

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

*Needs:* 3.1; InfinitaryLogic Layer 1 (`SameAtomicType`, `IsTupleBFSystem`,
`potentialIso_iff_exists_isTupleBFSystem`, `countable_potentialIso_iff_iso`); Mathlib
lexicographic `LinearOrder (List ℚ)`, `List.IsPrefix`.

**Checks.**

- For `G` the single edge `{0, 1}`: `a([1/2, 1]) = (1, 0)`, an adjacent pair of distinct vertices;
  `a([1, 2]) = (0, 0)`, equal and not adjacent.
- The root `[]` has the same colour for every graph, and so does every node of length 1 (one
  vertex, irreflexive): colours begin to distinguish graphs at length 2.
- The identity is a colour-preserving automorphism from the order of `c` to that of `d` exactly
  when `c = d`; the one-edge graphs on `{0, 1}` and `{0, 2}` are isomorphic but differ at the node
  `[1, 1/2]`, so `Φ` must move nodes.
- The order is not a well-order and has no greatest element: `[1] < [2] < [3] < …` has no upper
  bound, and `[0] > [-1] > [-2] > …` descends.

### 3.3 Linear orders are Borel complete

Define `linearOrderClass : Set (StructureSpace Language.order)` as the codes whose decoded
relation is a linear order, the models of Mathlib's `Language.order.linearOrderTheory`. API: it is
closed and invariant; the code of `(ℕ, ≤)` with `orderStructure` is in it.

**Checks.**

- The code of `(ℕ, ≤)` is in `linearOrderClass`; the code of `(ℕ, <)` is not (irreflexive).
- The code in which every pair is related fails antisymmetry; the code of divisibility on ℕ is a
  partial order that is not total.
- For each `ω ≤ β < ω₁`, adding the diagonal to the relation of a code given by the base's
  `exists_mem_wellOrderClass_type_eq` (a strict well-order of type `β`) gives a code in
  `linearOrderClass`; so `linearOrderClass` meets uncountably many isomorphism classes.

For a graph code `c`, order the set `List ℚ × ℕ` lexicographically, first by the `List ℚ`
coordinate and then, inside the block of `x`, by the order of type `ω + (χ_c(x) + 2)` on ℕ that puts
the indices `≥ χ_c(x) + 2` first in increasing order and then the indices `< χ_c(x) + 2` in
increasing order; relabel along a fixed bijection of `List ℚ × ℕ` with ℕ. Prove
`exists_continuous_reduction_graphClass_linearOrderClass`: this map is continuous from
`StructureSpace Language.graph` to `StructureSpace Language.order` (each comparison depends on
two colours, each a function of finitely many coordinates of `c`), lands in `linearOrderClass`,
and for `c, d ∈ graphClass` the images are isomorphic exactly when `c` and `d` are. Proof: the
condensation classes of the image (maximal sets any two of whose points bound a finite interval)
are the `ω`-parts of the blocks, which are infinite, and the final finite parts of the blocks, of
size `χ_c(x) + 2`, because the order of `List ℚ` is dense and each block begins with a copy of ω;
so the condensation classes that are finite are exactly the final finite parts of the blocks. An
order isomorphism preserves finite intervals, so it maps finite classes to finite classes of the
same size, in order, and induces a colour-preserving order automorphism of `List ℚ`, and 3.2
applies. Conversely a colour-preserving automorphism from 3.2 extends block by block. Hence
`borelComplete_linearOrderClass : BorelComplete linearOrderClass` (friedman-stanley-1989 §2;
montalban-cst1 Lemma VI.18, lines 4246–4288, where each labelled point is replaced by a finite
order with label plus two elements). *Needs:* 3.2, Layer 2.3, Layer 1.1, Layer 1.2, Layer 0.1.

**Checks.**

- For any graph code, a point of the `ω`-part of a block and the first point of the finite part of
  the same block bound an infinite interval (ω has no maximum), as do two points of different
  blocks (density of `List ℚ`).
- The images of the empty graph and of the complete graph on ℕ are not isomorphic: their colours
  differ at every node of length 2 with distinct entries.
- The block of the root has finite part of size `χ_c([]) + 2`, the same for every graph, matching
  the root Check of 3.2.

### 3.4 Trees are Borel complete

Define `treeClass : Set (StructureSpace Language.order)` as the codes whose decoded relation is a
partial order with a least element in which every principal down-set `{y | y ≤ x}` is finite and
linearly ordered. API: it is Borel and invariant (finiteness of down-sets is a countable union
over bounds), and not closed.

**Checks.**

- The code of `(ℕ, ≤)` is in `treeClass` (one infinite branch); the code of the star, in which
  `0` lies below every element and other pairs are incomparable, is in it.
- The code of `(ℤ, ≤)` transported to ℕ is not (no least element); the code of `(ℕ, ≥)` is not
  (infinite down-sets).
- Not closed: the code `c_n` of the chain `n < n - 1 < … < 0 < n + 1 < n + 2 < …` is in `treeClass`,
  and the codes `c_n` converge to the code of `(ℕ, ≥)`, which is not.

For a graph code `c`, define the tagged tree on `List ℚ × Option ℕ`: original nodes `(x, none)`,
ordered by the prefix relation; for each `x`, tag nodes `(x, some m)` lying above `(x, none)` and
above every original node below it, with `(x, some 0)` below every other tag node of `x`, and
`(x, some m) ≤ (x, some m')` for `0 < m ≤ m' ≤ χ_c(x) + 1`; the tag nodes with `m > χ_c(x) + 1` are
leaves directly above `(x, some 0)`. Relabel to ℕ. Prove `borelComplete_treeClass`, that is
`BorelComplete treeClass`: the map is continuous and lands in `treeClass`; a node is original
exactly when an infinite chain starts at it; `(x, some 0)` is the unique child of `(x, none)` that is
not original, and the subtree above it has height `χ_c(x) + 2`; so a tree isomorphism restricts to
a parent-preserving, colour-preserving bijection of `List ℚ`, and 3.2 (iii) applies; conversely
3.2 (ii) extends to tags (friedman-stanley-1989 §2; montalban-cst1 Lemma VI.18, lines 4205–4245).
*Needs:* 3.2, Layer 2.3, Layer 1.1, Layer 1.2, Layer 0.1.

**Checks.**

- For `χ_c(x) = 0` the subtree above `(x, some 0)` is the chain `(x, some 0) < (x, some 1)` with
  infinitely many leaves, of height 2; for `χ_c(x) = 1` it has height 3.
- Removing the surplus leaves would change the vertex set with `c`; keeping them changes no height.
- Without tags the original nodes alone form the same tree for every `c`, so tags carry all of the
  information.

### 3.5 The two presentations of trees

Prove: (a) for every `c ∈ treeClass` there is an infinite tree `T ∈ Descriptive.tree ℕ` such that
the decoded order of `c` is isomorphic to `T` with the prefix order, and conversely every infinite
`T ∈ Descriptive.tree ℕ` with the prefix order is isomorphic to the decoded order of some
`c ∈ treeClass` (send a node to the increasing list of the nodes above the root and below or equal
to it: an injective, order-preserving map onto a prefix-closed set of lists); (b) in the
relational language with one binary and one unary symbol, the class of codes of connected acyclic
graphs with exactly one marked vertex is invariant Borel and Borel complete, by the Borel
reduction from `treeClass` sending an order to its cover graph with the least element marked
(being a cover is a closed condition on codes, so the map is Borel and not continuous; the order is
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

### Examples

The one-edge graph through 3.2–3.4; the chain and the star in 3.4–3.5.

### Dependencies

Layers 0–2; InfinitaryLogic Layer 1; Mathlib.

## Layer 4: Borel S∞-spaces and the universal embedding

### 4.1 Borel S∞-spaces

Put on `Equiv.Perm ℕ` the Borel σ-algebra `borel` of the base topology, with `BorelSpace`; it is a
standard Borel space (base `polishSpace_perm`). A Borel S∞-space is a type `X` with
`[MeasurableSpace X] [StandardBorelSpace X]`, `[MulAction (Equiv.Perm ℕ) X]` and
`[MeasurableSMul₂ (Equiv.Perm ℕ) X]`; its orbit equivalence relation is `MulAction.orbitRel`
(becker-kechris-bams lines 126–131). API:

- The logic action on `StructureSpace L` (countable relational `L`) is a Borel S∞-space: it is
  continuous (base `continuousSMul_structureSpaceOn`) and both spaces are second countable
  (`ContinuousSMul.measurableSMul₂`). Its orbit relation is `structureIsoSetoid L`.
- An invariant Borel subset of a Borel S∞-space is one, with the restricted action.
- An equivariant measurable injection between Borel S∞-spaces has an invariant Borel image
  (Lusin–Souslin, `MeasurableSet.image_of_measurable_injOn`) and is a Borel reduction of the
  orbit relations.

*Needs:* CountableStructureSpaces Layer 1 (`instTopologicalSpacePerm`, `polishSpace_perm`,
`continuousSMul_structureSpaceOn`) and Layer 4.1 (`structureIsoSetoid_eq_orbitRel`); Mathlib
`MeasurableSMul₂`, `ContinuousSMul.measurableSMul₂`, `MeasurableSet.image_of_measurable_injOn`.

**Checks.**

- `ℕ` with `Equiv.Perm.applyMulAction` is a Borel S∞-space with a single orbit.
- A standard Borel space with the trivial action is one, and its orbit relation is equality.
- For a language with uncountably many unary symbols the coding space is a product of
  uncountably many copies of `Bool` with the product σ-algebra `MeasurableSpace.pi` (base
  Layer 0); every set measurable for a product σ-algebra depends on countably many coordinates,
  so no singleton is measurable, whereas a standard Borel space has measurable singletons; so the
  space is not standard Borel and its logic action is not a Borel S∞-space. Cardinality alone
  does not decide this: `2 ^ ℵ₁ = 2 ^ ℵ₀` is consistent with ZFC.

### 4.2 The universal embedding

Define `universalLanguage : FirstOrder.Language.{0, 0}`, relational with exactly one relation
symbol of each arity `n` (becker-kechris-bams lines 172–173). Prove
`exists_equivariant_measurableEmbedding_universal`: for every Borel S∞-space `X` there is a
measurable, injective map `Φ : X → StructureSpace universalLanguage` with `Φ (g • x) = g • Φ x`;
its image is invariant Borel, and the orbit relation of `X` is Borel reducible to
`structureIsoSetoid universalLanguage` (becker-kechris-bams Theorem 2.1, line 132, and
Corollary 2.2, lines 174–177; proof sketch lines 247–268; becker-kechris-1996 §2.6–§2.7). Proof:

1. Realize `X` as a Polish S∞-space by `exists_polishTopology_continuousSMul`
   (NoncompactQuantumSymmetry Layer 4) and fix a countable basis `(S_n)` of that topology.
2. In the language with countably many symbols of each arity, let the `(k, n)`-th symbol hold of
   `a : Fin k → ℕ` at `x` when some `g` with `g (a i) = i` for all `i` has `g • x ∈ S_n`. Each such
   set of `x` is open (a union of translates `g⁻¹ • S_n`), so the map is measurable. It is
   equivariant: substituting `g' = g h` turns the condition at `h • x` and `a` into the condition
   at `x` and `h⁻¹ ∘ a`, matching Convention 4. It is injective: if `x ≠ y`, choose `S_n ∋ x` whose
   closure misses `y`; the anchors `a = (0, …, k - 1)` give the pointwise stabilizers of
   `{0, …, k - 1}`, a neighbourhood basis of `1` (base `hasBasis_nhds_one_fixingSubgroup`); if the
   codes of `x` and `y` agreed, permutations converging to `1` would move `y` into `S_n`, putting
   `y` in its closure by continuity.
3. Pass to `universalLanguage` by the coding that reads symbol `m` of arity `m` as the
   `(k, n)`-th symbol on the first `k` entries, where `(n, k) = Nat.unpair m` and `k ≤ m` by
   `Nat.unpair_right_le`; this map is continuous, injective and equivariant.

*Needs:* 4.1; NoncompactQuantumSymmetry Layer 4 (`exists_polishTopology_continuousSMul`);
CountableStructureSpaces Layer 1 (`hasBasis_nhds_one_fixingSubgroup`, `isTopologicalGroup_perm`,
`polishSpace_perm`); Mathlib `Nat.unpair`, `Nat.unpair_right_le`,
`MeasurableSet.image_of_measurable_injOn`.

**Checks.**

- `X = ℕ` with the evaluation action and `S_n = {n}`: the arity-1 symbol `(1, 0)` holds of `(a)` at
  `x` exactly when `x = a`, so `Φ x` marks `x`, and `Φ (g x)` marks `g x`; for the transposition
  `g` of `0` and `1`, `Φ 1` holds at `(1)` and not at `(0)`.
- A one-point `X` with `S_0 = X`: the `(k, 0)`-th symbol holds exactly of injective tuples, a code
  fixed by every permutation.
- Dropping the anchoring condition `g (a i) = i` gives a map constant on orbits, not injective as
  soon as an orbit has two points (as for `X = ℕ`).
- For `X = StructureSpace L` with the logic action, composing `Φ` with the reduction of
  `structureIsoSetoid universalLanguage` gives back a reduction of `structureIsoSetoid L` to it.

### Examples

The evaluation action on ℕ and the logic action.

### Dependencies

CountableStructureSpaces Layers 0, 1 and 4.1; NoncompactQuantumSymmetry Layer 4; Mathlib.

## Layer 5: Characterisations of Borel completeness

For any `K : Set (StructureSpace L)` (countable relational `L`), prove that the following are
equivalent (camerlo-gao-boolean lines 94–105; gao-idst §13.1; becker-kechris-1996 §2.7 and §3.4):

1. `BorelComplete K`;
2. `classIso graphClass` is Borel reducible to `classIso K` (`borelComplete_iff_graphClass`);
3. for every countable relational `L' : Language.{0, 0}`, `structureIsoSetoid L'` is Borel
   reducible to `classIso K` (`borelComplete_iff_forall_structureSpace`);
4. for every such `L'` and every Borel, not necessarily invariant, `B ⊆ StructureSpace L'`,
   `classIso B` is Borel reducible to `classIso K` (`borelComplete_iff_forall_measurableSet`);
5. for every Borel S∞-space `X` in a fixed universe, the orbit relation of `X` is Borel reducible
   to `classIso K` (`borelComplete_iff_forall_permSpace`).

Proof: (1) ⇒ (3) with `K' = Set.univ` and Layer 0.1; (3) ⇒ (4) by restriction; (4) ⇒ (1) since an
invariant Borel class is Borel; (1) ⇒ (2) trivially and (2) ⇒ (1) by `borelComplete_graphClass`
and transitivity; (5) ⇒ (3) because the logic action is a Borel S∞-space with orbit relation
`structureIsoSetoid L'` (4.1, lifting to the fixed universe by `ULift`); (3) ⇒ (5) by Layer 4.2
with `L' = universalLanguage`. With Layer 1.3, (3) may quantify over countable languages with
function symbols. *Needs:* Layers 0.1, 1.2, 1.3, 2.3, 4.1, 4.2.

**Checks.**

- For `K = graphClass` all five hold.
- For `K = ∅` all five fail: each quantifies over a nonempty instance.
- For `K` the codes of one unary predicate, (2) fails: `classIso graphClass` has continuum many
  classes (the Cantor family of the second Check of 1.2, coded into graphs by 2.3), `K` countably
  many.
- In (5), the logic action on `StructureSpace L'` recovers (3), and the trivial action on Cantor
  space shows that (5) contains the reducibility of equality on Cantor space.

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
it. Isomorphic linear orders are `BFEquiv γ` at every level (`potentialIso_of_equiv` with
`potentialIso_iff_BFEquiv_all`).

Prove `bfEquiv_omega0_opow_mul`: for every ordinal `γ` and `Language.order`-structures `M`, `N`
whose relations are well-orders of types `ω ^ γ · δ` and `ω ^ γ · ε` with `δ, ε ≠ 0`, `BFEquiv γ 0`
holds between the empty tuples.
Proof by induction on `γ`. At `0` it is trivial; at a limit, every multiple of `ω ^ γ` is a
multiple of `ω ^ γ'` for `γ' < γ`. At `γ + 1`: the previous level holds by the induction hypothesis;
for forth, an element `m` of `M` has initial segment of type `ω ^ γ · μ + ρ` with `ρ < ω ^ γ` and final
segment a nonzero multiple of `ω ^ (γ + 1)` (a remainder below `ω ^ (γ + 1)` is absorbed on the
left); choose `m'` in `N` with initial segment `ω ^ γ · μ' + ρ`, where `μ' = 1` if `μ ≠ 0` and `μ' = 0`
otherwise, which exists because `N` has type at least `ω ^ (γ + 1)`; the initial segments are
`BFEquiv γ` by the induction hypothesis and the sum form of the interval lemma, the final segments
by the induction hypothesis, so `BFEquiv γ 1 (m) (m')` by the interval lemma; back is symmetric
(montalban-cst2 Lemma II.38 and Corollary II.39, lines 2337–2425, which compute the sharper
one-sided levels `≤_{2α+1}`). *Needs:* InfinitaryLogic Layer 1 (`BFEquiv`, `BFEquiv.monotone`,
`SameAtomicType`, `potentialIso_of_equiv`, `potentialIso_iff_BFEquiv_all`); Mathlib
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
and infinite, transported by `encodeVia`) are not isomorphic, yet `BFEquiv (1 + β)` by 6.1 and so
`BFEquiv β` by `BFEquiv.monotone`, a contradiction. Consequences, for invariant Borel `K` with
`BorelComplete K`:

- Unbounded Scott height: for every `β < ω₁` some code in `K` has `scottHeight` greater than `β`;
  otherwise `lopez_escobar` writes `K = modelsOf φ` and `measurableSet_iso_inter_of_scottHeight_le`
  makes isomorphism on `K` Borel.
- `classIso K` is Borel reducible to no equivalence relation with Borel graph on a measurable
  space, since Borelness pulls back along reductions; in particular not to `eZero`.
- The set `{p ∈ K ×ˢ K | ¬ p.1 ≅ p.2}` of non-isomorphic pairs is not an analytic subset of
  `StructureSpace L × StructureSpace L`: otherwise its complement, the union of the analytic set
  `iso ∩ (K ×ˢ K)` (base `analyticSet_orbitRel_graph`, with `K ×ˢ K` Borel) and the Borel set
  `(K ×ˢ K)ᶜ`, would be analytic too, so both would be Borel (Suslin,
  `MeasureTheory.AnalyticSet.measurableSet_of_compl`), and the preimage of the isomorphic pairs
  under the measurable inclusion `K × K → StructureSpace L × StructureSpace L` would be measurable
  for the product of the subtype σ-algebras, against the theorem.

*Needs:* 6.1, Layer 3.3, Layer 0.1; CountableStructureSpaces Layer 0 (`encodeVia`), Layer 1
(`analyticSet_orbitRel_graph`), Layer 4 (`exists_uniform_bfSeparation`, `scottHeight`,
`measurableSet_iso_inter_of_scottHeight_le`), Layer 5 (`lopez_escobar`); InfinitaryLogic Layer 1
(`BFEquiv.monotone`).

**Checks.**

- `graphClass`, `linearOrderClass` and `treeClass` all have non-Borel isomorphism relations.
- The class of codes of one unary predicate has Borel isomorphism relation (its Scott heights are
  at most `ω`, base worked example 2), consistent with its not being Borel complete (1.2).
- `K = ∅` has the empty, Borel, isomorphism relation and is not Borel complete.

### 6.3 E₀ and continuum many isomorphism types

In the relational language with one binary symbol `S` and unary symbols `Z` and `P`, let the code
of `x ∈ ℕ → Bool` live on `Finset ℕ × ℕ` (relabelled to ℕ): on each copy `{F} × ℕ`, `S` is the
successor relation, `Z` is `{(F, 0)}`, and `P` is the set of `(F, n)` with `x n ≠ (n ∈ F)` (that is,
`x` with the coordinates in `F` flipped). Prove that this continuous map reduces `eZero` to
isomorphism: every copy is rigid (an isomorphism fixes the `Z`-point and follows `S`), the copies
of `x` enumerate the `eZero`-class of `x` bijectively, and so two codes are isomorphic exactly when
the classes coincide (camerlo-gao-boolean lines 94–100, of which this is the instance for E₀;
BorelEquivalenceRelations §5.4). Prove `borelReducible_eZero_of_borelComplete`: if
`BorelComplete K`, then `eZero` is Borel reducible to `classIso K` (Layer 5 (3)); hence equality on
Cantor space is (`borelReducible_bot_eZero`), `K` has continuum many isomorphism types
(BorelEquivalenceRelations §5.1 injection), and `not_isSmooth_of_borelComplete`:
`¬ IsSmooth (classIso K)` (`not_isSmooth_of_borelReducible_eZero`). *Needs:* Layers 1.1, 5;
BorelEquivalenceRelations §5.1, §5.2, §5.4.

**Checks.**

- `x = 0^ω` and `y = 1 0^ω` are `eZero`-related, and the bijection `F ↦ F ∆ {0}` of copies gives an
  isomorphism of their codes; `x = 0^ω` and `y = 1^ω` are not related, and every copy of `x` has
  finitely many `P`-points while every copy of `y` has cofinitely many, so the codes are not
  isomorphic.
- The only automorphism of one copy `(ℕ, S, Z, P)` is the identity, for every `P`.
- Using only the copy of `x` itself (`F = ∅`) reduces equality on Cantor space, not `eZero`: `x` and
  `y` that differ at one coordinate give non-isomorphic single copies.

### 6.4 The Friedman–Stanley obstruction

Prove `not_borelComplete_of_rank_bounded`: let `K ⊆ StructureSpace L` be Borel and
`ρ : StructureSpace L → Ordinal.{0}`; assume (a) for every `α < ω₁`, isomorphism restricted to
`K ∩ {c | ρ c ≤ α}` is measurable as a subset of the square; (b) every analytic subset of `K` has
`ρ` bounded by some `α < ω₁`. Then `¬ BorelComplete K` (friedman-stanley-1989 §4; hjorth-kechris-1996
§4–§5). Proof: a reduction `f` of `classIso graphClass` to `classIso K` has analytic image
(`MeasurableSet.analyticSet_image`, `graphClass` being standard Borel), contained in some
`{ρ ≤ α}` by (b); then isomorphism on `graphClass` is the preimage of a measurable set by (a),
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
(`isSmooth_of_countable_quotient`), and its Scott heights are bounded (base worked example 2). So
on these examples E₀ lies strictly between smooth isomorphism relations and Borel complete ones,
and a smooth relation is Borel (BorelEquivalenceRelations §5.2) while a Borel complete one is not
(gao-idst §5.2 and §13.1). *Needs:* 6.2, 6.3; BorelEquivalenceRelations §5.2, §5.4;
CountableStructureSpaces Layer 4.3.

**Checks.**

- `eZero` is not smooth (`not_isSmooth_eZero`) but is Borel (`measurableSet_eZero`).
- Equality on Cantor space reduces to `eZero` (`borelReducible_bot_eZero`) and to
  `classIso graphClass` (6.3).
- The isomorphism relation of codes of one unary predicate does not reduce `eZero`: it has
  countably many classes and `eZero` has continuum many.

### Examples

Ordinal multiples in 6.1; the three Borel complete classes in 6.2; the copies of a real in 6.3.

### Dependencies

Layers 0–5; CountableStructureSpaces Layers 0, 1, 3, 4, 5; InfinitaryLogic Layer 1;
BorelEquivalenceRelations §5.1–§5.4.

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
