# Design report: CountableStructureSpacesPartII

Deliverables: `packages/CountableStructureSpacesPartII/design/README.md`,
`packages/CountableStructureSpacesPartII/design/plan.json` (7 layers, 49 targets, no gaps),
`packages/CountableStructureSpacesPartII/sources.toml` (12 sources).

## What the design covers

Part II of CountableStructureSpaces (base: the open roadmap pull request of that name, read at its
head `113f171` with `roadmaps show`). Layers:

| Layer | Content | Targets |
| --- | --- | --- |
| 0 | `classIso K` (isomorphism restricted to a class), restriction/corestriction of reductions, `SetReducible`, Borel ⇒ set reducibility and the E₀ counterexample to the converse | 0.1–0.6 |
| 1 | carrier relabelling, `BorelComplete` with transfer/universe/renaming laws, the functional coding space for languages with function symbols and its graph-code comparison, first-order model classes Borel | 1.1–1.7 |
| 2 | incidence graph (bipartite, coloured), clique tags, `graphClass`, `borelComplete_graphClass` | 2.1–2.5 |
| 3 | dense colouring of ℚ, coloured Cantor theorem, unravelling lemma, `linearOrderClass`/`treeClass`, continuous reductions, both presentations of trees | 3.1–3.13 |
| 4 | Borel S∞-spaces, `universalLanguage`, the anchored embedding, the unpairing code, `exists_equivariant_measurableEmbedding_universal` | 4.1–4.5 |
| 5 | the characterisations (i)–(v) of Borel completeness | 5.1–5.4 |
| 6 | interval lemma, `bfEquiv_omega0_opow_mul`, non-Borelness, unbounded Scott height, E₀ coding, non-smoothness, obstruction lemma, lower part | 6.1–6.9 |

### Correspondence with the triaged target's final targets

1. Preorder on isomorphism relations — Layer 0 (restriction 0.2, quotient injection consumed from
   BorelEquivalenceRelations §5.1, `SetReducible` 0.4, ≤_B ⇒ ≤_R 0.5, converse fails 0.6).
2. Friedman–Stanley — Layers 2–3: graphs (2.5), linear orders (3.7, 3.8, with the continuous
   reduction from graphs), trees (3.11), the second presentation of trees (3.12, 3.13).
3. Characterisations — Layer 5 (all five, with (v) for Borel actions on standard Borel spaces, not
   only continuous ones), plus the function-symbol form (1.7).
4. Becker–Kechris for S∞ — Layer 4 (4.5), universal language with one symbol per arity as in
   becker-kechris-bams Corollary 2.2.
5. Consequences — (b) non-Borel (6.3), (c) not smooth and E₀ below (6.6, 6.7), (d) continuum many
   types (6.6), unbounded Scott height (6.4). **(a) complete analyticity is not planned** (see
   below).
6. Obstruction — (a) the general lemma (6.8). **(b) torsion abelian groups not planned.**
7. Further classes — **(a)–(d) not planned** here; the classes are statable through Layer 1.3
   (functional coding space and first-order model classes), and the closing README section states
   them as motivation for a future roadmap.
8. Lower part — 6.9 with 6.3/6.4.

### Why some target items are left to a future roadmap (proposed Part III)

- **Complete analyticity (target 5(a), paolini-shelah-tfab Fact 1.7).** The target's suggested
  route needs a Borel map from trees to pairs of structures that are isomorphic exactly when the
  tree is ill-founded. I could not find one in a legal source that avoids heavy theory, and my own
  attempts with saturated trees fail for a structural reason: isomorphism of saturated trees is
  bisimulation, whose recursive "∀∃ ∧ ∀∃" shape cannot express "some child" without an absorbing
  common part, and any construction comparing with a fixed structure is Borel (isomorphism
  classes are Borel, base `setOf_iso_eq_modelsOf_scottSentence`), while ill-foundedness is not.
  The two classical routes are reduced versus divisible abelian `p`-groups (Ulm theory) and the
  Harrison ordering of effective descriptive set theory (montalban-cst2 Lemma XI.2,
  lines 8946–8980, read). Both belong with the algebraic material, so complete analyticity moves
  there with the torsion group obstruction. Non-Borelness (5(b)), which the target derived from
  5(a), is instead proved through the explicit back-and-forth computation 6.2 and the base's
  `exists_uniform_bfSeparation`.
- **Boolean algebras (7(a)).** camerlo-gao-boolean Theorem 1 is readable, but its proof needs
  Stone duality as a Borel correspondence, the hyperspace of compact sets, Cantor–Bendixson
  derivatives, and a topological characterisation of "good critical points" that the source
  asserts without proof (lines 417–425). Planning it would roughly double the roadmap and leave a
  proof obligation the source does not discharge.
- **Groups (7(b)), fields (7(c)).** The codings are in paywalled sources (mekler-1981,
  friedman-stanley-1989 §3, both uncertified); I cannot check a proof route against them.
- **Torsion-free abelian groups (7(d)) and torsion abelian groups (6(b)).** An Annals proof, and
  Ulm's theorem; the target already marked both as statements, which a roadmap target cannot be
  without a route.

The proposed roadmap: *CountableStructureSpaces, Part III: Borel completeness of algebraic classes*
— complete analyticity of Borel complete isomorphism (through abelian `p`-groups), torsion abelian
groups (complete analytic, not Borel complete, via 6.8 and Ulm length), Boolean algebras
(Camerlo–Gao), groups (Mekler), fields, torsion-free abelian groups (Paolini–Shelah). It would
consume `BorelComplete`, Layer 1.3, Layer 5 and 6.8.

## Ownership and suppliers

Checked by object with `roadmaps grep` over main and the 455 open roadmap pull requests at their
heads (patterns: `BorelComplete|Borel[- ]complete|Friedman.{0,3}Stanley|Becker.{0,3}Kechris|Vaught
transform|Montgomery|S∞-complete|universal Borel`, then `StructureSpace|structureIsoSetoid|universal
S∞|labell?ed (dense )?linear order|tree of tuples|Ehrenfeucht|Kleene.Brouwer|dense partition`).

- **NoncompactQuantumSymmetry** (open pull request, new folder, earlier in the merge order) owns,
  in its Layer 4 M1.BorelRealization, the Becker–Kechris Polish realization
  `exists_polishTopology_continuousSMul`, the Vaught transforms and the Montgomery–Novikov theorem.
  The design therefore consumes the realization and does **not** plan Montgomery–Novikov or Vaught
  transforms; the universal embedding of 4.3 is the continuous-action construction of the
  becker-kechris-bams sketch (open coordinate sets, injectivity from continuity and regularity).
  The statement was read at that pull request's head (`777a2fe`).
- No other roadmap, package or library owns Borel completeness, the Friedman–Stanley codings,
  universal S∞-spaces or the ordinal back-and-forth computation. BorelEquivalenceRelations
  explicitly places spaces of structures and Polish group actions outside itself; the base names
  Borel completeness as out of scope; CountableModelCounting's "Borel complete invariant" is a
  different (smoothness-type) notion.
- Consumed, by name and section: base Layers 0–6; BorelEquivalenceRelations §0.3, §0.5, §5.1–§5.4;
  InfinitaryLogic Layer 1 (completed roadmap on main); InfinitaryModelExistence §0.3 and Layer 6;
  CountableModelCounting Layer 0 (transport between presentations); NoncompactQuantumSymmetry
  Layer 4.
- Owned here although general: the restriction law and `SetReducible` (Layer 0). The target asked
  for them here; they are recorded as candidates for a BorelEquivalenceRelations Part II, not
  planned there. The carrier relabelling (1.1) extends the base's `encodeVia` in the base's own
  direction, which is this Part II's direction.

## Notions moved down from later roadmaps

None.

## Gaps

None. Every prerequisite is a pinned Mathlib declaration, a section of a roadmap on main
(BorelEquivalenceRelations, InfinitaryLogic, InfinitaryModelExistence, CountableModelCounting), the
base (an open new-folder pull request by another author, allowed by the brief), or
NoncompactQuantumSymmetry (earlier in the merge order). Contracts stated in prose by their owners
(BorelEquivalenceRelations §5.1 quotient injection and §5.2 "smooth relations are Borel";
CountableModelCounting Layer 0 code-space homeomorphism; InfinitaryModelExistence `graphAxioms`,
`reconstructStructure`) are cited by section.

## Suggested.lean contract (for packaging)

Own names the README backticks, each to be declared in `Suggested.lean` (Mathlib-only, so with
stand-ins, in this roadmap's namespace, for the base's coding space, logic action and
`structureIsoSetoid`, for BorelEquivalenceRelations' `BorelReducible`, `IsSmooth`, `eZero`, and for
InfinitaryLogic's `BFEquiv`):

- definitions: `classIso`, `SetReducible`, `BorelComplete`, `graphClass`, `linearOrderClass`,
  `treeClass`, `universalLanguage` (and the Borel `MeasurableSpace` instance on `Equiv.Perm ℕ`);
- theorems: `borelComplete_graphClass`, `exists_continuous_reduction_graphClass_linearOrderClass`,
  `borelComplete_linearOrderClass`, `borelComplete_treeClass`,
  `exists_equivariant_measurableEmbedding_universal`, `borelComplete_iff_graphClass`,
  `borelComplete_iff_forall_structureSpace`, `borelComplete_iff_forall_measurableSet`,
  `borelComplete_iff_forall_permSpace`, `bfEquiv_omega0_opow_mul`,
  `not_measurableSet_classIso_of_borelComplete`, `borelReducible_eZero_of_borelComplete`,
  `not_isSmooth_of_borelComplete`, `not_borelComplete_of_rank_bounded`.

`exists_equivariant_measurableEmbedding_universal` is statable with Mathlib's `MeasurableSMul₂`
and a `borel` instance on `Equiv.Perm ℕ` with the base topology restated.

## Adversarial mathematics pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Conv. 4 logic action `(σ•c)⟨R,v⟩ = c⟨R,σ⁻¹∘v⟩` | 3-cycle 0→1→2→0 on `P = {0}` | `(σ•c)⟨P,(x)⟩ = [σ⁻¹x = 0] = [x = 1]`, so `P = {1}` | consistent with base | none |
| Conv. 8 list order | `[]`, `[0]`, `[0,5]`, `[1/2]`, `[1]` | nil < cons; `[0] <+: [0,5]`; `0 < 1/2 < 1` at index 0 | increasing chain | none |
| Conv. 9 `ν` | `3/4`, `5`, `-1/6`, `1/8008` | dens 4, 1, 6, 8008 = 2³·1001 → 2, 0, 1, 3 | as stated | none |
| 0.1 `classIso` | `K = {P=∅, P=ℕ}`; `K = ∅`; one-orbit `K'` | 2 classes; empty map; constant map not injective | definition discriminates | added non-injective reduction Check |
| 0.2 restriction | `A ⊆ K` arbitrary, non-Borel `A` | inclusion measurable for subtype σ-algebra (comap) | needs no Borelness | Borelness hypothesis dropped |
| 0.3 corestriction | `f` measurable with `f '' K' ⊆ K` | `Measurable.subtype_mk` | holds | none |
| 0.4 `SetReducible` | `A={0}⊆ℕ`, `B = Δ`; `B = ∅`, `B = univ` | preimage of Δ under `0↦(0,0), n+1↦(0,1)` is `{0}`; only `∅ ≤ ∅`, only `univ ≤ univ` | as stated | none |
| 0.4 analytic pullback | `f` measurable, not continuous | needs topology refinement | added the `Measurable.exists_continuous` step | route made explicit |
| 0.5 ≤_B ⇒ ≤_R | `E = F = ⊥`, injective `f` | `graph ⊥_X = (f×f)⁻¹ Δ_Y` | holds | none |
| 0.6 converse fails | E₀ vs Δ of Cantor space | two-valued map; `IsSmooth eZero` false (BER) | holds | none |
| 1.1 relabelling | transposition (0 1) on `P={0}`; `Fin 0`; 3-cycle twice | `P={1}`; one point / two points; `P={2} ≠ {0}` | as stated | none |
| 1.2 `BorelComplete` | `K = ∅`; unary predicate; `K ∪ K₂`, `K ∩ K₂` | no map into empty type; `ℕ → Bool` types vs countable; intersection one orbit | definition discriminates | none |
| 1.2 definition hypotheses on `K` | non-invariant `K` | proofs of Layer 5 use no hypothesis on `K` | generality kept | Layer 5 stated for arbitrary `K` |
| 1.3 universes | `L'` in `Language.{1,1}` | `smallPresentation` relational and countable (IME instances) | transport applies | none |
| 1.4 functional space | one constant; empty language | table = one number; one point | as stated | none |
| 1.5 graph-code range | unary function, values escaping to ∞ | codes with value `n` at 0 → code with no value at 0 | range Gδ, not closed | Check added |
| 1.6 first-order classes | `Theory.simpleGraph`, `Theory.fieldOfChar 2` | equals `graphClass`; `𝔽₂(t)` in, `ℚ` out | as stated | replaced an ill-formed field example |
| 2.1 incidence graph | `R = {(0,1)}`; no symbols; nullary symbol; two unary symbols uncoloured | degrees 3 and 2; no edges; truth edge only; `P₁={0}` vs `P₂={0}` uncoloured iso | colours needed, bipartite ⇒ triangle-free | colours `0,1,2+2j,3+2ι` chosen disjoint |
| 2.2 recovery | colour-preserving iso | `t_q` ↦ same symbol; unique colour-`2+2j` neighbour; unique point neighbour of `s_{q,j}`; truth edge | gives `d = σ•c` with the base convention | none |
| 2.3 clique tags | one edge, `κ=(0,1)`; triangle; `κ = 0` vs `1` | 9 vertices, 12 edges; base vertices in triangles; 4 vs 5 vertices | needs triangle-freeness | hypothesis kept, negative Check added |
| 2.3 isolated vertices | original vertex of `H`-degree 0 | still adjacent to its tag vertex 0, in no triangle | recognised | tag joined by an edge, not containing `x` |
| 2.4 `graphClass` | empty graph; loop; one-way edge | in; out; out | as stated | none |
| 2.5 graphs Borel complete | `L'` empty | all codes give the same graph (one code) | consistent | none |
| 3.1 density of `ν⁻¹(m)` | `m = 3` in `(0, 1/1000)` | `1/8008`: den `8·1001`, `ν = 3` | dense | none |
| 3.2 coloured Cantor | `σ = id`; swap; non-dense two-colouring | `π = id`; `1/2 ↦` colour 0; negatives initial segment, image cannot be non-negatives | density necessary | negative Check added |
| 3.3 `χ_c` | edge `{0,1}`: `[1/2,1]`, `[1,2]` | `a = (1,0)` adjacent; `a = (0,0)` equal | as stated | none |
| 3.4 unravelling (ii)⇒(iii) parent definability | `x = [1/2,3]` | the unique length-1 `p < x` with nothing shorter between is `[1/2]` | holds; uniqueness checked for `p' < p` and `p < p'` | none |
| 3.4 (iii)⇒(i) | forth from `p = (a(x), a(Ψx))` | child `x⌢r`, `r ∈ ν⁻¹(m)`, maps to a child of `Ψx` | tuple system | none |
| 3.4 identity map | edges `{0,1}`, `{0,2}` | differ at `[1,1/2]` | iso but `Φ ≠ id` | Check added |
| 3.6 block order, fixed vertex set | blocks of variable size would change the carrier | type `ω + (χ+2)` on all of ℕ per block | carrier fixed, continuous | surplus put in an initial ω-part |
| 3.6 condensation | ω-point vs finite part; different blocks | intervals infinite (no max in ω; density of `List ℚ`) | finite classes = finite parts | none |
| 3.9 `treeClass` | `(ℕ,≤)`, star, `(ℤ,≤)`, `(ℕ,≥)`, chains `c_n` | in, in, out, out; `c_n →` code of `(ℕ,≥)` | Borel, not closed | non-closed Check added |
| 3.10 tag tree | `χ = 0, 1`; surplus | heights 2, 3; surplus leaves keep height | colour recoverable | none |
| 3.13 rooted cover graphs | continuity of the cover relation | "nothing strictly between" is a closed, not open, condition | map Borel, not continuous | wording corrected from "continuous" |
| 4.1 Borel S∞-space | evaluation on ℕ; trivial action; uncountable language | one orbit; equality; cardinality > 𝔠, not standard Borel | as stated | none |
| 4.3 anchored code equivariance | `h • x`, `g' = g h` | condition becomes `g'(h⁻¹ a_i) = i`, `g' x ∈ S_n` = value at `h⁻¹ ∘ a` = `(h • Φ x)⟨·, a⟩` | matches Conv. 4 | none |
| 4.3 injectivity | `X = ℕ`, `S_n = {n}`; one-point `X`; anchor dropped | `Φ x` marks `x`; injective tuples; constant on orbits | anchoring necessary | negative Check added |
| 4.3 non-injective tuples | `a_i = a_j`, `i ≠ j` | `g(a_i) = i` and `g(a_j) = j` contradict | false automatically | no injectivity clause needed |
| 4.4 unpairing | `m = 0` | `Nat.unpair 0 = (0,0)`, `k = 0 ≤ 0` | as stated | none |
| 4.5 universality | Borel (not continuous) action | NCQS realization gives continuity for the same σ-algebra | holds for Borel actions | Montgomery–Novikov not planned (NCQS owns it) |
| 5 characterisations | `K = graphClass`, `∅`, unary predicate; trivial action on Cantor space | all hold; all fail; (2) fails (𝔠 vs ℵ₀); (5) contains `⊥_Cantor` | consistent | Layer 5 stated with no hypothesis on `K` |
| 5 (5)⇒(3) universe | `X : Type u`, `u ≠ 0` | `ULift` of `StructureSpace L'` with lifted action | applies | `ULift` step stated |
| 6.1 interval lemma | level 0; `ω` vs `ω+1` at level 2 | always at 0; max of `ω+1` has empty upper interval | as stated | sum form and iso ⇒ BFEquiv added |
| 6.2 ordinal multiples | `γ = 0, 1, 2`; `δ = 0` | trivial; nonempty; `ω` vs `ω·2` even at level 2; empty vs nonempty fails at 1 | `δ, ε ≠ 0` necessary | hypothesis kept |
| 6.2 final segments | `δ = ω^{γ+1}·δ'`, `τ + 1 = ω^{γ+1}κ + r` | `κ < δ'`, `r + η = ω^{γ+1}(1+ζ)` ⇒ `η = ω^{γ+1}(1+ζ)` | nonzero multiple | none |
| 6.3 non-Borel | `graphClass`, unary predicate, `∅` | non-Borel; Borel (not Borel complete); Borel (not Borel complete) | consistent | no hypothesis on `K` needed |
| 6.4 Scott height | bounded height `β` on invariant Borel `K` | `lopez_escobar` + `measurableSet_iso_inter_of_scottHeight_le` ⇒ Borel | contradiction with 6.3 | invariance and Borelness hypotheses kept (needed for López–Escobar) |
| 6.5 E₀ code | `0^ω` vs `10^ω`; `0^ω` vs `1^ω`; single copy | `F ↦ F ∆ {0}` iso; finite vs cofinite `P` per copy; equality only | as stated | whole class of copies used |
| 6.7 not smooth | via 6.6 | BER `not_isSmooth_of_borelReducible_eZero` | holds | none |
| 6.8 obstruction | `ρ = 0`; unary predicate; `graphClass` | contrapositive of 6.3; hypotheses hold; must fail | consistent | `MeasurableSet K` is unused in the proof (P3 note; kept for the source's setting) |
| 6.9 lower part | unary predicate vs E₀ | ℵ₀ classes vs 𝔠 | E₀ not below it | none |

## Sources

- Fetched this round through the sources service, certified (author pages):
  `montalban-cst1` (Montalbán, CST Part 1 draft, 2019: Lemma VI.18, lines 4203–4288, the
  labelled-tree and labelled-dense-order route to linear orders; Theorem VI.27, lines 4572–4659)
  and `montalban-cst2` (CST Part 2 draft, 2025: Lemmas II.37–II.38 and Corollary II.39, lines
  2322–2425; Lemma XI.2 and Theorem XI.3, lines 8946–9012). The manifest records the draft
  versions; the published Part 1 may number differently.
- Already certified: `paolini-shelah-tfab` (arXiv v6, numbering read from the arXiv text),
  `becker-kechris-bams`, `camerlo-gao-boolean`.
- Settled as uncertified, cited by locator only: `friedman-stanley-1989`, `gao-idst`,
  `becker-kechris-1996`, `kechris-cdst`, `hjorth-2000`, `hjorth-kechris-1996`, `mekler-1981`. No
  proof route depends on their text; each is cited for a statement whose route is planned from
  readable sources or the design's own argument.
- No text is missing: no `needs-references.toml` was written.

## Dependency check

    candidate: CountableStructureSpacesPartII is not in the merge order yet; checked as if placed after NoncompactQuantumSymmetry (the intake inserts it when its design is accepted)
    depcheck: 236 roadmaps, 2181 edges, 0 problem(s)

No UPWARD or CYCLE line. The citation resolver (`roadmaps resolve`) reports no cross-roadmap
citation and no Lean name found nowhere; Mathlib names were checked by hand at the pin
(`f6090c70`), Tau Ceti at `358314d4` supplies nothing.

## Notes for the reviewer

- The base is an open pull request under review; every base name above was read at its head
  `113f171`. If the base renames `exists_uniform_bfSeparation`, `structureIsoSetoid_eq_orbitRel`
  or `graphCode`, the corresponding citations follow.
- `potentialIso_iff_BFEquiv_all` is spelled as in the InfinitaryLogic README (its Lean prototype
  does not declare it); `potentialIso_of_equiv` and `countable_potentialIso_iff_iso` are in its
  prototype.
- InfinitaryLogic's `PotentialIso` takes both structures in one universe; every use here is on ℕ.
- Ownership against open pull requests was checked with `roadmaps grep` at their heads; the
  NoncompactQuantumSymmetry overlap was found that way and resolved by consuming it.
- Nothing suspicious was found in any fetched text or roadmap file.
