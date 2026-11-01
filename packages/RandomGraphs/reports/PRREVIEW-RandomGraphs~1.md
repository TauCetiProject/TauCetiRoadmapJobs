# Review of RandomGraphs (pull request #1223 at 314f27c)

**Verdict:** needs changes

🤖 Independent AI review of the two files in `TauCetiRoadmap/RandomGraphs/`. No pull-request file was changed. There are 14 findings, including 6 P1/P2 findings. No counterexample to the substantive random-graph probability formulas was found. The gate fails, and the acceptance test and supplier contracts need repair.

## R01 (P1) — The finite atomic-diagram input is not supplied at the permitted pin

**Location:** `TauCetiRoadmap/RandomGraphs/README.md:107`, and lines 442–452. **Claim:** the finite first-order atomic-diagram declarations are existing Tau Ceti inputs to QE.

**Witness:** At Tau Ceti `358314d4`, `TauCeti/ModelTheory/Scott/AtomicDiagram.lean` is absent. `Completed/InfinitaryLogic/README.md:578` specifies a countable infinitary conjunction, not the claimed finite first-order declaration.

The linked newer source does contain the finite construction: `tauceti-atomicdiagram` lines 71–90. That establishes what the author means, but a newer library URL is not an available pinned import or an exact roadmap contract. There is no declared gap for this dependency.

**Repair:** make the finite first-order diagram and its realization equivalence an explicit target here, using native finite conjunctions, and cite the newer code as provenance; alternatively declare the precise supplier gap through the required plan/README contract. Do not leave it described as a pinned input. Test the supplied statement on a repeated pair `(a,a)` and on an adjacent distinct pair: the equality/adjacency values must be `(true,false)` and `(false,true)`, respectively. These distinguish the required finite diagram from an adjacency-only substitute.

## R02 (P1) — The build gate rejects an extra import warning

**Location:** `TauCetiRoadmap/RandomGraphs/Suggested.lean:1`. **Claim:** this module meets the gate's requirement that `sorry` be the only warning.

**Witness:** The targeted build emits a warning that the imported Mathlib package uses the module system. The supplied gate records `build=1 FAIL`; the build command itself exits 0.

**Repair:** migrate the file to the pinned module-system form, starting with `module`, and rerun the targeted build and gate. A scratch copy with `module` and without the option in R08 elaborated successfully with only admitted-declaration warnings. This is a gate/build-hygiene failure, not evidence of an elaboration error or a false theorem; P1 follows the job's build-failure classification.

## R03 (P2) — Four data definitions contain admissions

**Location:** `TauCetiRoadmap/RandomGraphs/Suggested.lean:164`, 231, 251, 513. **Claim:** the acceptance test has defined extension sentences, a QE function, a decision function, and the product graphon.

**Witness:** `extensionSentence`, `eliminateQuantifiers`, and `decideRado` have admitted bodies; `productGraphon` admits its measurability, boundedness and range proofs. Subsequent theorems depend on these admissions.

**Repair:** remove the algorithm declarations as in R04; express mathematical QE existentially. Give a real native-syntax body for any extension sentence retained solely to state a headline, or state the headline directly on the extension predicate. Supply all three elementary graphon field proofs. Retest extension requests `(0,0)` on carriers of sizes 0 and 1 (false/true), and the graphon at `(0,1)`, `(1,1)`, `(1/2,1/2)` (0, 1, 1/4). An admitted proof field is still an admission in a data definition under this review contract.

## R04 (P2) — Executable QE and decision procedures are outside roadmap scope

**Location:** `TauCetiRoadmap/RandomGraphs/README.md:448–461`; `TauCetiRoadmap/RandomGraphs/Suggested.lean:229–255`. **Claim:** the deliverable includes a consistency procedure, terminating syntax transformation, and executable decision procedure.

**Witness:** The file requires `eliminateQuantifiers` and `decideRado` to become computable algorithms. This exceeds mathematical quantifier elimination and decidability as theorems.

**Repair:** keep finite diagram theory, semantic QE, and the mathematical decidability result; remove requirements for executable procedures, implementations and termination machinery. State that every formula has an equivalent quantifier-free formula. That signature elaborates on the existing carriers in the scratch probe. For the adjacency atom take the atom itself; for a sentence asserting a triangle take truth, since `{0,1,3}` is a triangle in the displayed Rado graph. The semantic endpoint retains both cases without an algorithm target.

## R05 (P2) — Statable headline conclusions are missing from the acceptance test

**Location:** `TauCetiRoadmap/RandomGraphs/README.md:442`, 473, 813–818; `TauCetiRoadmap/RandomGraphs/Suggested.lean:6–26`, 475–485.

**Claim:** the Lean file tests the roadmap's deep endpoints. It omits a standalone semantic QE theorem, primeness via an elementary embedding, and the promised total-variation conclusion of the factorial-moment criterion. It also omits the unconditioned rooted-formula mixture limit and the all-rank varying-parameter/joint variants; its docstring does not classify unavailable headlines, including the infinitary sentences.

**Witness:** Native `BoundedFormula.IsQF`, `FirstOrder.Language.ElementaryEmbedding`, measures on ℕ and real `tsum` exist at the pins. Scratch signatures for semantic QE and the stated total-variation limit both elaborate.

**Repair:** state these statable endpoints directly with their exact hypotheses, using only necessary real definitions. Explain in the module docstring that the infinitary comparison endpoints lack the supplier syntax at this pin. Do not replace a missing endpoint by an API lemma. For total variation test the constant law δ₀ with rate 0: every positive factorial moment and the distance are 0, while the zeroth moment is 1. For the unconditioned adjacency formula on two named vertices, the limit must be `p`, not a zero–one value.

## R06 (P2) — A direct-limit target is already proved in Mathlib

**Location:** `TauCetiRoadmap/RandomGraphs/README.md:249–252`. **Claim:** prove that every finitely generated substructure of a direct limit lies in a stage image.

**Witness:** `Mathlib/ModelTheory/DirectLimit.lean:317`, `FirstOrder.Language.DirectLimit.exists_fg_substructure_in_Sigma`, already returns a stage substructure whose mapped image equals the given substructure.

**Repair:** delete that repeated target and cite this exact declaration in the supplier contract. Keep the separately specified embedding-factorization adapter with its literal composition equation. For the constant chain on the successor/predecessor structure ℤ, the existing theorem takes the whole, singly generated substructure to the whole stage: mapped image and target both equal ℤ. The adapter then has composition equal to the identity. No finite-carrier restriction should be added.

## R07 (P3) — Remove boundary checks and API padding from Suggested.lean

**Location:** `TauCetiRoadmap/RandomGraphs/Suggested.lean:151`, 159, 239, 520.

**Claim:** these are acceptance-test headlines. The zero-budget equivalence is a boundary case; monotonicity just composes inequalities; the second QE-output characterization follows from earlier statements; the product-graphon expectation mirrors the README's elementary check at line 904.

**Witness:** Monotonicity closes with `exact fun U Z hUZ hc => h U Z hUZ (hc.trans hed)`. The QE characterization closes with `exact (foRank_eq_zero_iff_isQF _).mp (eliminateQuantifiers_rank φ)`.

**Repair:** delete these declarations from `Suggested.lean`; retain their mathematics in the README's API/Checks. This is deletion, not a request to prove them in place. The boundary computations remain: EP₀ is false/true on 0/1 vertices; the graphon expectation is 1 at n=1 and 3/2 at n=2. All 53 sorried theorems received the basic one-tactic probe; these two exact closures were additionally verified without fallback admissions in their own bodies.

## R08 (P3) — Remove the forbidden option

**Location:** `TauCetiRoadmap/RandomGraphs/Suggested.lean:29`. **Claim:** the acceptance test uses the defaults.

**Witness:** The line sets `autoImplicit` to false; the gate reports `set_option=1`.

**Repair:** delete it. The complete scratch copy without this line elaborates; the 81 checked signatures retain the needed binders. No replacement option is needed.

## R09 (P3) — Convert the mathematical notation to house style

**Location:** `TauCetiRoadmap/RandomGraphs/README.md:9`, 12–16, and throughout. **Claim:** the document meets the prescribed Unicode/code-span form.

**Witness:** The gate counts 476 LaTeX delimiter occurrences. The principal limit and the extension-error estimates also use TeX math fences.

**Repair:** use Unicode prose and plain inline code or indented formulas; remove dollar delimiters and TeX commands. Preserve the formulas exactly. In particular retain `0^0 = 1`, `n ≥ d`, and the exponent `−(n−d)δ^d`; the checked case `n=d=0` must still give `B₀=1`.

## R10 (P3) — Replace pull-request/process references with stable source citations

**Location:** `TauCetiRoadmap/RandomGraphs/README.md:944`, also 106, 147–155, 826, 941–977; `TauCetiRoadmap/RandomGraphs/Suggested.lean:144–147`.

**Claim:** the roadmap and docstrings are timeless. They identify suppliers and planned APIs by pull-request numbers and discuss coordination/merging as part of the content.

**Witness:** The gate flags the Fraïssé-existence pull-request reference at line 944. Additional numeric proposal references occur in the supplier table and Lean comments.

**Repair:** name mathematical suppliers by roadmap and section, and use stable authored source/declaration locators for provenance. Keep the instruction to follow Mathlib's design and never wait for it, expressed without process history. Recheck that the Fraïssé construction still explicitly allows finite and empty limits.

## R11 (P3) — Resolve the gate's two supplier-name mismatches

**Location:** `TauCetiRoadmap/RandomGraphs/README.md:106`, 381, 394.

**Claim:** backticked `HasExtensionProperty.nonempty_iso` and `hasExtensionProperty_radoGraph` are correctly classified declaration references.

**Witness:** The gate reports both as `readme-ids-missing`. The surrounding prose attributes them to a supplier; they are not declarations promised by this roadmap's namespace.

**Repair:** express these supplier conclusions in prose with the precise InfinitaryLogic worked-example citation, and distinguish them from this roadmap's own API names. Do not add local declarations to satisfy the scanner. This is a scanner false positive about ownership, recorded because every failing gate category must be accounted for; the separate pin/contract issue for finite diagrams is R01. Countable uniqueness and the Rado extension theorem remain supplier results, not new targets here.

## R12 (P3) — Add target-level dependencies and discriminating Checks

**Location:** `TauCetiRoadmap/RandomGraphs/README.md:27–47`, 215–238, 344–368, and the other milestone blocks.

**Claim:** each definition has its API and at least three discriminating Checks, and each target has precise dependencies.

**Witness:** There are zero `*Needs:*` lines and zero `**Checks.**` lists. The global milestone table does not specify the inputs of individual theorems; representative classes and strong amalgamation have no three-test lists.

**Repair:** use the required Summary, Scope and ownership, Exact supplier contracts, How to read the build, Layer/Examples/Dependencies, Downstream consumers and References structure. Retain the substantive APIs and add three discriminating Checks per definition. For strong AP use: finite graphs with free amalgam (intersection exactly the root), finite linear orders (same), and sets of size ≤1 over an empty root (ordinary AP true, strong AP false). Give separate Needs lines for construction, deterministic rank agreement, measure transport and almost-sure conclusions. The absence of edges from an incomplete dependency annotation is not proof that all prerequisites are owned.

## R13 (P3) — Attach exact source locators and record the cited works

**Location:** `TauCetiRoadmap/RandomGraphs/README.md:163–173`, 667–692, 711–759, 867–917, 979–1020.

**Claim:** each mathematical target has an exact locator. Most targets have none; the references give book-wide or work-wide descriptions, and no `sources.toml` exists in the folder.

**Witness:** Sections 0.1, 7.3, 8.2, 9.2, 9.3 and 11.3 have no attached theorem/page locator. The Cameron reference lacks section/theorem numbers; several Spencer and Bollobás references lack pages.

**Repair:** attach claim-level theorem/section/page or source-declaration locators and record each cited work once in `sources.toml`, including legal retrieval or uncertified status. Distinguish a new derivation from a verbatim source theorem: the fixed-rank bound is a refinement, and the graphon calculation is a derivation requiring its own inputs. Keep the source issues below out of the roadmap's statements. For example, its explicit witness exclusion correctly rules out taking the negatively named vertex itself.

## R14 (P3) — Bring the Lean file into acceptance-test form

**Location:** `TauCetiRoadmap/RandomGraphs/Suggested.lean:6–26`, 38, 44, 78, 87; README throughout.

**Claim:** the file documents the headline test and agrees with the README names. Its docstring instead describes selected prototype signatures, many declarations lack mathematical docstrings, and sections mix milestone order.

**Witness:** 78 of the 81 declared identifiers do not occur literally in the README, including `firstOrder_zero_one`, `rooted_firstOrder_limit`, and `productGraphon_noIsolated_limit`.

**Repair:** after removing padding and algorithms, name every retained headline/necessary definition in its README subsection, give it a mathematical docstring, use README-order Layer comments, and rewrite the module docstring to identify headline coverage and unavailable carriers. Retain the full stated parameter ranges: binomial identities include p=0,1, while Rado convergence has explicit interior hypotheses. Also widen README §9.4's singularity statement to distinct p,q∈[0,1], matching Lean line 437; endpoint separator masses are 1 and 0 as checked below.

## Verified sound

Read all 1,020 README and 549 Lean lines. Compared all 81 types (28 definitions, 53 theorems) with the prose and elaborated `#check @name` for each in scratch. No binder loss: probability, countability, finite-generation and conditional-division hypotheses remain. R03's admitted constructions are not certified.

Direct Lean and the targeted build exited 0; only the latter added R02's module warning. The scratch module without `set_option`, with two padding proofs and semantic-QE/Poisson-TV signatures, elaborated. All 53 theorem bodies were tried with `simp`, `rfl`, `infer_instance`: none closed; R07's two exact terms did. Failed probes do not establish non-padding.

The gate result at this head was:

```text
gate RandomGraphs: set_option=1 blob=0 latex=476 tex=0 prnum=1 sorry-data=4 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=2 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=1 FAIL
```

All failing categories are covered. No outside-folder edits, stray files, unauthorized imports or reviewer worktree changes. Rerun dependency output:

```text
depcheck: 205 roadmaps, 1450 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. Supplier tables and prose were read; Needs lines are absent. No route-specific shortcut, wholesale re-planning or copied source passage was found. Dense conclusions retain nondegeneracy; endpoint identities and Fraïssé existence retain their generality.

### Seeded source audit: all 15 targets

No README locator is labelled unverified. Missing locators and inaccessible books remain uncertified. All fetched content was treated as data.

| Seeded target | Text/locator inspected | What the text supports; remaining limit |
| --- | --- | --- |
| 0.1 Graph/language transport | `Mathlib/ModelTheory/Graph.lean:49–99`; `Mathlib/ModelTheory/ElementaryMaps.lean:295` | Native language/structure round trips and realization transport. The new graph-embedding adapters have no attached external locator. |
| 2.2 Construction | `cmt-fraisseexistence` lines 198–242, 283–310 | The representative sequence and native existence theorem have countable functions, not countable relations; finite/empty limits are allowed. Hodges 7.1.2/7.1.6, pp.326–329, was not readable. |
| 4.1 Combinatorial and syntactic extension | `cameron2013` lines 26–78, 342–354, printed pp.1–2,9 | Extension/back-and-forth and the sentence scheme. The source's missing witness exclusion requires the correction in Source issues; the README already imposes the stronger explicit condition. |
| 4.2 Existence and identification | `cameron2013` lines 110–114, 292–321, pp.3,7–8; `tauceti-rado-proposal` line 203 | Binary graph and Fraïssé characterization; proposal describes the canonical supplier. Proposal descriptions were not substituted for pinned declarations. |
| 5.1 Shared finite-logic foundations | Spencer Definition 2.3, Theorems 2.2.3 and 2.3.1–2.3.2 requested; native syntax read | Exact book text unavailable. Independently checked the q-round budget m+q−1, repetition case, and ranks 0–3 below. |
| 5.2 Complete theory and QE | `cameron2013` lines 342–375, pp.9; `fagin1976` lines 70–86, p.51; `tauceti-atomicdiagram` lines 45–90 | Categoricity/completeness route and finite diagram semantics; Fagin's ambient relations differ from simple graphs. These do not certify an executable algorithm. R01/R03/R04 apply. |
| 7.1 Finite laws | `fagin1976` lines 97–144, pp.52–53; `cameron2013` lines 395–417, p.10 | Extension-axiom bound and finite consequences; Cameron explicitly gives the graph specialization. The all-interior-p bound is a derived generalization, not the literal uniform-model theorem in Fagin. |
| 7.3 Joint almost-sure statements | Native Borel–Cantelli route; exact finite error calculation below | No source locator is attached. Summability, not independence across n, is the necessary input; quantifier order checked. |
| 8.2 Graph properties | `cameron2013` lines 230–245, pp.6; connectivity supplier §1.5 | Universality supports finite patterns; budget implications checked directly below. No precise locator is supplied for the entire graph-property list. |
| 9.1 Infinite binomial graphs | `cameron2013` Theorem 1, Facts 1–2, lines 13–78, pp.1–2 | Countable extension requests, independent candidates and fixed 0<p<1, including the explicit extension from p=1/2 at lines 51–53. |
| 9.2 Graphon sampling | Native sampling declarations listed below | Constant and finite-window laws verified at pin. Conditional witness proof independently checked, including AE exceptional sets; no external theorem/page locator for that new estimate. |
| 9.3 Invariant-event laws and mixtures | Native array ergodicity and graphon-mixture declarations below | Supports finite-permutation 0–1 and bind evaluation on measurable satisfaction events; it does not identify finite FO limits for arbitrary graphons. |
| 11.1 Discrete factorial-moment criterion | Bollobás Theorems 1.21–1.22 requested; native Poisson law read | Book text unavailable. Independently checked Bonferroni squeeze, rate-zero boundary, and discrete total-variation consequence. |
| 11.2 Sparse triangles | Bollobás Theorem 4.1/Corollary 4.9 requested; `erdosrenyi1960` lines 1138–1160, Theorem 3a | Erdős–Rényi uses fixed edge counts N∼cn and mean (2c)^k/(2k), not directly G(n,p). The roadmap's c³/6 normalization and overlap count were checked separately. |
| 11.3 Product graphon counterexample | Displayed integral and domination calculation in README 878–904 | No exact external locator is given. Independently verified the finite moment formula, scaling, dominator, expectation and limiting parameter 2 below. |

Fetched legally: Fagin, Cameron v1, Erdős–Rényi, all ten external formalization files, five Mathlib proposals, the Rado proposal and newer atomic-diagram source. CMT existence and rooted statements were read at their declarations; `cmt-rootedextension` lines 49–86 uses the native partial-equivalence theorems. No external code was run.

### Library and ownership audit

The actual checked pins are Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2` and Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`, read from the supplied worktree's manifest and verified in the package checkouts. The older hashes in the quoted pull-request description were not used.

| Object / exact declaration opened | File and line at the checked pin | Scope relevant to this review |
| --- | --- | --- |
| `SimpleGraph.binomialRandom`, `binomialRandom_eq_map`, `binomialRandom_apply`, probability instance | `Mathlib/Probability/Combinatorics/BinomialRandomGraph/Defs.lean:46`, 55, 67, 72 | Unordered non-diagonal pairs; probability/product identities carry countability. |
| `binomialRandom_zero`, `binomialRandom_one`, `binomialRandom_singleton` | Same file:79,82,87 | Endpoint Dirac laws; finite-carrier point masses. |
| `Language.graph`, `SimpleGraph.structure`, `Theory.simpleGraph`, both structure round trips | `Mathlib/ModelTheory/Graph.lean:49`,57,68,92,98 | Symmetric irreflexive relation; no nonemptiness is built into the graph carrier. |
| `SimpleGraph.fromRel`, `fromRel_adj` | `Mathlib/Combinatorics/SimpleGraph/Basic.lean:135`,139 | Removes diagonal and symmetrizes; it does not itself enforce the binary order formula. |
| `age`, `Hereditary`, `JointEmbedding`, `Amalgamation`, `IsFraisse` | `Mathlib/ModelTheory/Fraisse.lean:91`,99,104,110,117 | Age means finitely generated, not finite; IsFraisse includes nonempty class, FG, essential countability, HP/JEP/AP. |
| `age_directLimit`, `IsFraisseLimit`, `IsFraisseLimit.nonempty_equiv` | Same file:202,279,388 | Directed nonempty indexing and countable-function/countable-limit requirements checked. |
| `DirectLimit.exists_fg_substructure_in_Sigma`, `DirectLimit.lift` | `Mathlib/ModelTheory/DirectLimit.lean:317`,335 | Existing stage-image result and actual universal-property map; R06. |
| `embedding_from_cg`, `equiv_between_cg` | `Mathlib/ModelTheory/PartialEquiv.lean:476`,499 | Both preserve a given FG partial equivalence; root-to-range equation is a legitimate adapter, not a new back-and-forth construction. |
| `isFraisseLimit_of_countable_nonempty_dlo`, `isFraisse_finite_linear_order` | `Mathlib/ModelTheory/Order.lean:523`,531 | Nonempty DLO explicitly required. The roadmap uses ℚ, not an empty DLO. |
| `Theory.typesWith`, type-space topology and basis/clopen lemmas | `Mathlib/ModelTheory/Types.lean:68`; `Mathlib/ModelTheory/Topology/Types.lean:32`,35,47,50,53 | Basic opens use sentences in the constants expansion. Singleton isolation needs complete types, not just tuples in one graph. |
| `ElementaryEmbedding`, equivalence-to-elementary embedding | `Mathlib/ModelTheory/ElementaryMaps.lean:44`,295 | Native formula preservation; no missing carrier prevents the primeness headline. |
| `poissonMeasure`, `poissonMeasure_singleton`, `poissonMeasure_real_singleton` | `Mathlib/Probability/Distributions/Poisson/Basic.lean:40`,49,53 | Rate ℝ≥0, including zero. |
| `binomial_tendsto_poissonPMFReal_atTop` | `Mathlib/Probability/Distributions/Poisson/PoissonLimitThm.lean:94` | Binomial-specific limit, not the arbitrary-law factorial-moment criterion. |
| `Graphon` | `TauCeti/Combinatorics/DenseGraphLimits/Graphon/Basic.lean:79` | A symmetric measurable bounded real kernel with pointwise [0,1] range on an arbitrary probability space. No atomlessness/standard-Borel hypothesis is built in. |
| `sampleGraph_const` | `TauCeti/Combinatorics/DenseGraphLimits/Sampling/Finite.lean:372` | Any probability base; all p∈[0,1]. |
| `infiniteSampleLaw_map_restrictFin` | `TauCeti/Combinatorics/DenseGraphLimits/Sampling/Infinite.lean:287` | Actual finite marginals of a joint sample. |
| `tendsto_homDensityFin_infiniteSampleLaw_ae` | `TauCeti/Combinatorics/DenseGraphLimits/Sampling/AlmostSure/Basic.lean:62` | Finite test graph; converts K₂ density normalization before using the edge-density conclusion. |
| `graphonMixtureLawEquiv_law`, `InfiniteExchangeableGraphLaw.existsUnique_bind_infiniteSampleLawOnSpace` | `TauCeti/Combinatorics/DenseGraphLimits/ExchangeableGraphLaw/Infinite/Mixture.lean:82`,91 | Mixture over GraphonSpaceI; the identity evaluates on measurable graph events. |
| `isDissociated_iff_jointlyDissociated` | `TauCeti/Combinatorics/DenseGraphLimits/ExchangeableGraphLaw/ArrayLaw.lean:360` | Bridge from graph windows to the jointly indexed adjacency array. |
| `ergodicSMul_of_jointlyDissociated`, `jointlyDissociated_iff_ergodicSMul` | `TauCeti/Probability/Exchangeability/Arrays/Ergodic.lean:307`,342 | Diagonal finitary-permutation action, invariant probability law; suitable for the Bool adjacency array. |

Opened 21 object groups and over 40 named declarations/instances. Object searches found no general factorial-moment criterion or general Fraïssé existence theorem at the pins. The binomial Poisson limit is narrower; the rooted variants add a literal composition equation to native partial equivalences.

Resolved roadmap citations on main:

- `Completed/InfinitaryLogic/README.md:412–484` supplies finite/ordinal back-and-forth; lines 578–585 supply infinitary diagrams; lines 658–670 include finite-language and random-graph examples. The finite first-order atomic-diagram declaration is the narrower missing contract in R01. The completed roadmap is the owner of the canonical full extension/Rado development; this roadmap should own bounded extension and the new probability theory.
- `Completed/DenseGraphLimits/README.md:412`, 433 and 540 are Layers 9a, 9b and 9c: finite/joint sampling, graph-law representation/dissociation/mixtures, and sampling convergence. Its native implementations were checked above.
- `Completed/Exchangeability/README.md:931–995` is Layer 8; arrays are explicitly included at lines 994–995. The broad phrase “array layers” should be replaced by this section and the exact pinned declarations. It is not an unowned array prerequisite: the relevant implementation exists at the pin.
- `TauCetiRoadmap/GraphConnectivityAndFlows/README.md:331–346`, §1.5, supplies the deletion/connectivity interfaces and conventions. `TauCetiRoadmap/StandardDistributions/README.md`, Layer 1 and Layer 7, supplies elementary distribution theory; it does not by itself supply the general convergence criterion.

Shape examples: main's InfinitaryLogic and StandardDistributions. Ownership searches used `roadmaps grep`/`show`, board packages, main and provided siblings. No second owner for the new existence/Poisson criteria or RandomGraphs namespace collision was found. PointProcesses is limited to indexed excerpts: its full files were not supplied. No upward move is proposed.

### Headline coverage

| README endpoint | Acceptance-test status |
| --- | --- |
| General Fraïssé existence; root-preserving embedding and isomorphism | Stated, native carriers and full hypotheses retained. |
| Graph Fraïssé identification and rooted universality | Rooted universality stated; the explicit Fraïssé identification should be included among retained deep targets. |
| Finite-rank truth agreement, complete Rado theory, QE, atomicity, primeness | Rank agreement stated; QE uses admitted functions; completeness/atomicity/primeness endpoints are not independently stated. R03–R05. |
| Witness estimates, fixed-p FO zero–one, uniform rank error | Stated. |
| Varying-p fixed-rank and all-rank limits; arbitrary-coupling stabilization | Fixed-rank and fixed-p coupling stated; all-rank varying-p/coupling endpoints omitted. |
| Conditioned rooted limits and unconditioned finite-pattern mixture | Conditioned limit stated; mixture omitted. |
| Induced finite subgraphs, fixed degrees/cliques, diameter two, fixed vertex connectivity | README targets, absent from the acceptance test despite native graph carriers. |
| Infinite binomial Rado law; positive graphon Rado law; uniform graphon finite FO law | Stated. |
| Invariant-event 0–1, graphon-mixture evaluation, distinct labeled laws | Sentence 0–1 and density/singular separator stated; full event/mixture targets omitted. |
| Infinitary Rado and even-cardinality comparisons | Missing supplier syntax at pin; should be named as not statable, not silently omitted. |
| General factorial-moment Poisson convergence including total variation | Point-mass endpoint only; total variation omitted. |
| Sparse triangles and product-graphon Poisson/FO separation | Stated; product-graphon data admission must be removed. |

### Adversarial computations

All 81 declarations were checked. The retained rows cover headline theorems, sampled targets and findings; redundant helper rows are omitted. These are adversarial checks, not proofs. Values for admitted definitions test their intended specifications, not the admitted constants.

| Statement (Suggested.lean line) | Instances / values on both sides | Result / change |
| --- | --- | --- |
| `representativeClass` (44) | Empty family: membership false for every M. One representative Fin 1 in the empty language: Fin 1 belongs, Fin 2 does not; duplicating the representative changes neither value. | Sound; add explicit Checks. |
| `StrongAmalgamation` (49) | Sets of size ≤1: A=∅, B=C=1 force image intersection size 1, while root-image size is 0. Free graph amalgam over one vertex has intersection size 1=1. | Distinguishes AP from strong AP. |
| `StrongAmalgamation.amalgamation` (56) | Same ≤1 class has AP=true and strong AP=false. Free graph amalgam has both true; forgetting exact intersection preserves the square. | Sound API, not a deep headline. |
| `exists_isFraisseLimit_of_isFraisse` (61) | Empty-language classes of sizes ≤m for m=0,1,2 give limits of sizes 0,1,2; their ages have 1,2,3 isomorphism types. K=∅ is excluded by IsFraisse.is_nonempty. | Sound; no spurious Infinite/Nonempty carrier premise. |
| `exists_embedding_comp_eq_of_isExtensionPair` (72) | Empty language: root 0↦0 in Fin 2, 0↦7 in ℕ; choose e(0)=7,e(1)=8. Both root composites take the sole point to 7. | Sound literal equation; target need not be countable. |
| `exists_equiv_comp_eq_of_isExtensionPair` (78) | M=N=ℕ pure sets, root 0↦0 and 0↦1: swap 0 and 1 extends the root; both composites equal 1 on it. | Sound; arbitrary unrooted identity would fail 0=1. |
| `foRank` (102) | Falsum/atom=0, one existential=1, no-isolated sentence=2, triangle sentence=3; implication between ranks 1 and 3 has max=3. | Sound recursion and offset. |
| `measurableSet_satisfies` (116) | Fin 0 has one graph: nonempty-carrier event ∅ with mass 0. Fin 2 edge-existence event is singleton K₂, mass p. | Sound; countable quantifiers preserve measurability. |
| `satisfies_iso` (120) | Swap vertices of K₂: edge-existence=true on both sides; triangle=false on both sides. Raw embedding Fin 0→K₂ would instead change ∃x x=x from false to true. | Sound; isomorphism hypothesis matters. |
| `binomialRandom_map_comap` (129) | Injection Fin 2→Fin 3: the edge marginal is p on each side. Fin 0 restriction is Dirac on the unique graph on each side, mass 1. | Sound; noninjective map would collapse an edge to probability 0. |
| `IsExtensionWitness` (137) | In R, U={0}, Z={1}, x=5 works: bit₀(5)=1, bit₁(5)=0. x=0 fails exclusion; x=3 fails the negative adjacency test. | Sound; both witness exclusions enforced. |
| `HasExtensionUpTo` (140) | Fin 0: EP₀=false. K₁: EP₀=true, EP₁=false. C₄: EP₁=true, EP₂=false (opposite roots have identical neighborhoods, so a mixed request fails). | Sound discrimination. |
| `HasExtensionProperty` (148) | R: true; every finite graph: false using U=∅ and Z=all vertices. Empty and complete countably infinite graphs fail respectively a one-positive and a one-negative request. | Faithful real predicate; no free Prop stand-in. |
| `hasExtensionUpTo_zero_iff` (151) | Fin 0 gives false↔false; Fin 1 and Fin 2 give true↔true. | Sound boundary case; delete from Lean, R07. |
| `hasExtensionProperty_iff` (155) | K₁: full EP=false, and universal bounded EP=false at d=1. R: true on both sides; a request of total size t is tested by d=t. | Sound equivalence in both directions. |
| `HasExtensionUpTo.mono` (159) | C₄ satisfies d=1 and e=0; both predicates=true. A request with total size 0 obeys 0≤0≤1. | One exact term; delete, R07. |
| `extensionSentence` (164) | Intended E₀,₀: false on Fin 0, true on Fin 1. E₁,₀ and E₀,₁ both fail on K₁; E₀,₁ fails on K₂. | Intended values only: admitted data, R03. |
| `satisfies_extensionSentence` (167) | Intended E₂,₀ on Fin 1: antecedent has no injective two-tuple, so true; finite-set universal is also true. E₀,₀ on Fin 0 gives false on both sides. | Spec handles vacuity and empty requests; admission not evaluated. |
| `radoAxioms` (174) | K₁ satisfies the two graph axioms but fails E₁,₀; R satisfies graph axioms and every extension axiom. Model values false/true. | Intended theory, depends on admitted syntax. |
| `model_radoAxioms_iff` (177) | Fin 0 fails E₀,₀ and full EP. R has both properties; at each request use r=card U,s=card Z. | Intended equivalence; R03. |
| `radoGraph` (184) | Adj(0,1)=true, Adj(0,2)=false, Adj(1,2)=true; Adj(i,i)=false. The edge set on {0,1,3} has exactly 3 edges. | Sound real native-carrier definition. |
| `radoGraph_adj` (187) | Pairs (0,1),(1,0),(0,2),(1,1) give true,true,false,false on both the symmetrized relation and ordered-bit formula. | Sound convention; no hidden reversed bit index. |
| `radoGraph_extension` (193) | U={0},Z={1}, choose x=5; positive bit=1, negative bit=0, x outside root. Empty request has witness 0. | Sound test; full theorem has a binary-witness construction. |
| `nonempty_iso_rado` (196) | G=R: identity witnesses Nonempty=true. Fin 0 has EP=false and no isomorphism; finite graphs are excluded by hypothesis. | No finite or empty counterexample. |
| `exists_graphEmbedding_over_root` (201) | A=K₁, G=K₂ with first endpoint rooted, root in R at 0: e(0)=0,e(1)=1 gives an edge and root composite 0=0. | Sound; embedding reflects adjacency. |
| `satisfies_iff_of_extension` (209) | d=0, K₁ and K₂ agree on ∃x x=x (rank1,true). They disagree on ∃x∃y x≠y (rank2,false/true), outside the bound. | Confirms d+1, and excludes d+2. |
| `formula_iff_of_extension` (217) | Repeated roots (0,0) in C₄ and (0,0) in C₅, m=2,q=1,d=2: premise EP₂ fails, so not an allowed witness. In R vs R, same repeated root, ∃y Adj(x₀,y)=true=true; equality atoms true=true. | No dropped equality condition; conservative tuple-length budget. |
| `eliminateQuantifiers` (231) | Intended output for Adj(x₀,x₁) can be itself; for ∃y Adj(x₀,y), truth is true in all EP graphs and an equivalent output is verum. | Semantic specification consistent; function is admitted and algorithm is out of scope. |
| `eliminateQuantifiers_rank` (235) | Those intended outputs both have rank 0. An unchanged quantified input would have rank 1, so it would fail the required equation 0. | Admission-dependent output property; use existential QE instead. |
| `eliminateQuantifiers_isQF` (239) | Intended atom/verum outputs have IsQF=true and rank=0. Existing rank-zero equivalence maps the earlier output theorem to this one. | One exact term; delete, R07. |
| `realize_eliminateQuantifiers` (244) | For ∃y Adj(x,y) in R, truth=true and chosen QF verum=true. In K₁ the same input=false but verum=true; EP hypothesis excludes it. | Semantic QE needs the extension premise. |
| `decideRado` (251) | Intended triangle decision=true; intended sentence ∃x Adj(x,x) decision=false. A constant-true function fails the second case. | Admitted executable function; remove, R03/R04. |
| `decideRado_spec` (254) | Triangle in R has witness {0,1,3}, so true↔true. Loop existence is false↔false by irreflexivity. | Intended spec only; no admitted decision data retained. |
| `witnessProbability` (264) | p=1/2,r=s=1 gives 1/4; r=s=0 gives 1 at p=0 and p=1 by 0⁰=1; p=0,r=1,s=0 gives 0. | Sound endpoints. |
| `witnessCount_mass` (271) | q=1/4, card C=2: masses j=0,1,2 are 9/16,6/16,1/16, summing to 1. For j=3, choose(2,3)=0, hence both sides 0 despite truncated exponent. | Sound out-of-range totalization. |
| `no_witness_mass` (279) | Same request and two candidates: probability=9/16=(3/4)². C=∅ gives event probability 1 and RHS (1−q)⁰=1, including q=1. | Sound boundary. |
| `extensionError` (287) | p=1/2: B₀(0)=1, B₀(1)=0, B₁(4)=1, B₂(2)=6; empty-request term is 0⁰=1 at n=0. | Sound finite sum, may exceed 1. |
| `extension_failure_le` (292) | Exhaustive labeled-graph enumeration: (n,d)=(0,0):1≤1; (4,1):23/32≤1; (5,1):1/2≤5/8; (2,2):1≤6. | Sound finite checks; retain n≥d. |
| `extensionError_le_exp` (297) | p=1/2,(n,d)=(2,2):6≤48; (4,1):1≤3.5700826. For d=0,n=1:0≤e⁻¹. | Sound exponent δ^d and domain. |
| `summable_extensionError` (303) | p=1/2,d=0: sequence 1,0,0,… sums to 1. d=1: n≥2 term n·2^(2−n), plus initial values 1,2, gives sum 9. At p=0,d=1, n≥2 gives B=n, not summable. | Interior hypothesis excludes divergent endpoint. |
| `sentenceProbability_error` (308) | ∃x x=x, d=0,n=0: absolute error=1=B₀. For n=1 error=0=B₀. Edge-existence, p=1/2,d=1,n=4: error=1/64≤1. | Sound uniform bound independent of sentence count. |
| `firstOrder_zero_one` (313) | Nonempty-carrier sentence probabilities are 0,1,1,…→1. Edge-existence is 1−(1−p)^(n choose 2)→1 for interior p; at p=0 it is 0, so the excluded endpoint would contradict Rado truth 1. | Sound domain and limit. |
| `firstOrder_limit_varying_bounded_rank` (319) | For pₙ=1/2,d=1, growth=(n−1)/2−log(n+2)→∞. For pₙ≈1/n,d=1 it is ≈1−log n→−∞, so sparse triangle behavior is not covered. | Sound separation of regimes. |
| `ae_eventually_all_bounded_rank` (330) | For fixed d, summable failure bound gives probability of infinitely many failures=0. For d=0 the failure probabilities are exactly 1 at n=0 and 0 thereafter. | Sound arbitrary coupling; threshold depends on d and sample. |
| `rootedProbability` (354) | At p=1/2,H=K₂,φ=Adj(x₀,x₁): numerator=1/2, denominator=1/2, ratio=1. For empty H ratio=0. At p=0,H=K₂ both numerator and denominator=0, totalized ratio=0. | Interior hypotheses needed for conditional interpretation. |
| `rooted_firstOrder_limit` (371) | For the adjacency atom and fixed K₂ root, conditional probability is identically 1, matching rooted truth 1. Empty root graph gives identically 0, matching 0. | Sound tested limits; choice of copy immaterial. |
| `ae_isomorphic_rado` (384) | p=1/2 and a one-positive/one-negative request: failure among N candidates=(3/4)^N→0. p=0 gives empty graph, not Rado, with probability 1, excluded. | Sound countable intersection route. |
| `infiniteSampleLaw_const` (392) | Constant graphon p: any specified two-edge pattern (one edge, one nonedge) has mass p(1−p) under each law. At p=0 and p=1 the two laws are the same empty/complete Dirac law. | Sound finite-cylinder identification. |
| `infiniteSampleLaw_ae_rado` (396) | W=1/2: one positive and one negative root give conditional success 1/4. W(x,y)=xy: one positive root x gives success x/2>0 a.e.; root x=0 gives 0 on a null set. | Sound AE, not pointwise, premise. |
| `graphon_extension_failure_le` (401) | W=1/2, ε=1/2,n=4,d=1: actual failure=23/32; sum bound=1. d=0,n=0 gives 1≤1; n=1 gives 0≤0. | Sound root-conditional independence and finite union bound. |
| `graphon_firstOrder_limit` (410) | W=1/2 meets ε=1/2 and triangle limit=1. W=0 violates ε>0 and triangle probability=0 at every n. | No endpoint overclaim. |
| `infiniteSampleLaw_sentence_zero_one` (419) | W=0 and W=1: edge-existence probabilities 0 and 1. Half-mixture of those laws gives 1/2 and is not a fixed-graphon dissociated law. | Sound distinction from mixtures and finite limits. |
| `windowEdgeDensity` (428) | n=0,1: totalized denominator=0 and value=0. Single edge on n=2 gives 2/2=1. K₃ gives 6/6=1, whereas K₂ hom-density at n=3 is 6/9=2/3. | Sound n(n−1), not n², normalization. |
| `ae_windowEdgeDensity` (431) | p=0: density identically 0. p=1: density 1 for n≥2. For constant p, expected finite density=p for n≥2 and limiting hom-density normalization n/(n−1)→1. | Sound all-endpoint statement. |
| `binomialRandom_singular_separator` (437) | Choose S={density limit=p}. For p=1/3,q=2/3 the two masses are 1 and 0; at p=0,q=1 the empty/complete graphs give the same separation. | Sound; no all-permutation invariance claimed. |
| `triangleSentence` (445) | K₃ realizes it, K₂ does not. Repeated coordinates force one loop atom=false, so no explicit inequality conjunct is necessary. Rank=3. | Sound native bounded-variable syntax. |
| `noIsolatedSentence` (454) | Empty carrier: true; K₁: false; K₂: true. Native nested ex/all gives ∀x∃y Adj(x,y). | Sound quantifier order. |
| `triangleCount` (459) | K₂=0, K₃=1, K₄=4. Counting ordered injective triangle embeddings would instead give 0,6,24. | Sound unordered normalization. |
| `isolatedCount` (463) | Fin 0=0, K₁=1, K₂=0, empty graph on 2 vertices=2. | Sound finite count. |
| `satisfies_triangleSentence` (467) | K₂ gives false↔(0<0)=false; K₃ gives true↔(0<1)=true; empty graph gives false↔false. | Sound syntax/count bridge. |
| `satisfies_noIsolatedSentence` (471) | Fin 0: true↔(0=0); K₁:false↔(1=0); K₂:true↔(0=0). | Sound vacuous universal case. |
| `poisson_pointMass_limit_of_factorial_moments` (476) | νₙ=δ₀,r=0: moments k=0 equal 1, k≥1 equal 0; limiting masses j=0 equal 1, j≥1 equal 0. For the constant Poisson(2) law the first two factorial moments are 2,4 and mass 0=e⁻². | Sound criterion, no uniform exponential moment needed. |
| `triangle_factorialMoment_limit` (487) | First moment is (n choose 3)pₙ³→c³/6. For k=2 disjoint triangles on 6 vertices contribute 20p⁶; two triangles sharing an edge have e−v=5−4=1, so their contribution is O(1/n). k=0 gives 1=λ⁰. | Sound overlap normalization. |
| `triangle_poisson_mass_limit` (497) | c=0 gives masses 1 at j=0 and 0 otherwise. c=1 gives mass 0=e^(−1/6)≈0.8464817 and mass 1=e^(−1/6)/6≈0.1410803. | Sound endpoint and rate. |
| `sparse_triangle_sentence_limit` (506) | c=0: limit 0=1−e⁰. c=1: limit 1−e^(−1/6)≈0.1535183, strictly between 0 and 1. | Sound counterexample to unrestricted sparse zero–one. |
| `productGraphon` (513) | Intended values W(0,1)=0,W(1,1)=1,W(1/2,1/2)=1/4; symmetry gives W(1/4,1/2)=W(1/2,1/4)=1/8. | Function is explicit; field obligations are admitted, R03. |
| `productGraphon_isolated_expectation` (520) | n=1: E Z=1=2(1−1/2). n=2: edge chance=E[xy]=1/4, E Z=2·3/4=3/2=2(1−1/4). n=0 would also give 0=0. | Sound elementary Check; delete from Lean, R07. |
| `productGraphon_isolated_factorialMoment_limit` (525) | k=0: moment=1=2⁰. k=1: 2(1−2^(−n))→2. k=2: limiting orthant integral is (∫₀∞e^(−u/2)du)²=2²=4. | Sound limiting factor; admitted graphon construction remains. |
| `productGraphon_isolated_poisson_mass_limit` (532) | Limiting mass j=0 is e⁻²≈0.1353353; j=1 is 2e⁻²≈0.2706706; j=2 is also 2e⁻². | Sound Poisson(2) normalization. |
| `productGraphon_noIsolated_limit` (538) | Finite n=0,1,2 probabilities are 1,0,1/4; asymptotic mass Z=0 is e⁻²≈0.1353353. Infinite sample probability is 1. | Sound finite/infinite separation, not monotone truth. |
| `productGraphon_ae_isomorphic_rado` (545) | For root value x>0, one-positive success=x/2>0; for positive/negative roots x,z in (0,1), success=x(1/2−z/3)>0. Failure over infinitely many candidates has probability 0. | Sound AE strict-interior argument. |

The finite enumeration covered every labeled graph on n=0,…,5, at p=1/2, for d=0,1,2 (1,100 graphs across the six carrier sizes). It checked the finite-sum and exponential bounds only on their stated domains. For example, the out-of-domain exponential expression at n=0,d=1 is 0 while the error is 1, confirming why the lower bound on n must remain.

Additional prose-only statements and proof steps were checked separately:

| README statement | Instances and values computed | Result / change |
| --- | --- | --- |
| 0.1 composition/inverse/restriction/atomic pattern | On K₂, swap²=id gives 0↦0,1↦1; root tuple (0,0) has equality true and adjacency false; tuple (0,1) has the reverse. | Correct graph/language transport specifications; R01 pins the diagram input. |
| 0.2 finite edge patterns and independence | Two disjoint unordered coordinates at p=1/2 have four pattern masses 1/4. Sharing a vertex does not change independence; using the same edge twice gives intersection probability 1/2, not 1/4. | Correct coordinate, not arbitrary-request, independence. |
| 0.2 complement, prescribed graph, disjoint restrictions | A fixed labeled path on 3 vertices has mass p²(1−p); its complement has mass (1−p)²p at parameter 1−p, giving the same original mass after substitution. Empty pattern has mass 1. | Correct symmetry and no extra automorphism factor. |
| 0.3 joint satisfaction measurability and Boolean laws | On Fin 2, edge-event mass=p, negation mass=1−p, intersection of event with its negation=0; at p=1/2 these are 1/2,1/2,0. | Countable union/intersection plus discrete assignments is sufficient. |
| 1 representative reindexing and factorization | Family [Fin 1,Fin 1] and [Fin 1] both have one isomorphism type; empty family has zero. Tuple (a,a) has range size 1, not 2. | Correct quotient/duplicate and repeated-root distinctions. |
| 1 finite linear-order strong AP | Amalgamate two 2-chains over their least point: resulting 3-chain has two 2-point images intersecting in 1 root point. | Strong AP survives choosing an order between new points. |
| 2.1 stage containment and factorization | Constant ℤ successor/predecessor chain: closure{0}=ℤ (infinite), stage-image=ℤ and identity∘identity=identity. Empty constant chain gives image=∅. | Sound, but containment is already supplied; R06. |
| 2.1 served requests imply limit extension | Constant Fin 1 chain for the class of sets ≤1 serves its identity request with g∘f=id. The same chain fails a Fin 1→Fin 2 request: no injection back to Fin 1. | Coverage/serving conditions exclude the wrong constant chain. |
| 2.2 countability of outgoing embeddings | Successor/predecessor ℤ is generated by 0; an embedding is determined by its value at 0, giving at most countably many choices into a countable target. Uncountably many empty unary relations change this count by 0. | Relation-symbol countability is unnecessary. |
| 2.2 limit infinitude versus finite limits | Class of sets ≤2 gives limit size 2. Class of all finite sets gives sizes ≥m for every m and countably infinite limit; no equivalence Fin 2≃ℕ exists. | Correct separate infinitude/transport corollary. |
| 3 finite and rational-order rooted examples | On Fin 2 a prescribed swap sends 0 to 1 exactly. On ℚ, x↦x+1 sends root 0 to 1; composing the root map has value 1 on both sides. | Root equation tested; DLO nonemptiness supplied. |
| 3 incompatible constants | Two languages' structures assigning constants c₀=c₁ in one and c₀≠c₁ in the other admit no common generated-root embedding: equality values true/false. | Correct refusal to assume an empty partial equivalence automatically. |
| 4.1 extra avoidance and infinitely many witnesses | U={0}, Z={1} in binary R has witnesses 5 and 9: bit₀=1,bit₁=0 in each. Forbidding 5 leaves 9. A finite graph with Z=all vertices has 0 possible witnesses. | Correct outside-root/avoidance property. |
| 4.2 complement and finite patterns | R on {0,1,3} is K₃ (3 edges); on {0,2,8} it is empty (0 edges). Complement interchanges complete and empty patterns. | Correct concrete binary witnesses. |
| 5.1 arbitrary relational signature | Add any family of relations interpreted empty to the two-element pure set. Atomic relation truth remains false for each index; equality is preserved by the swap. Rank soundness needs no enumeration of symbols. | Correct unrestricted relational-language soundness. |
| 5.2 finite diagrams, orbits and type isolation | On two coordinates in R there are exactly three consistent patterns: equality, distinct edge, distinct nonedge. QE makes each basic diagram open contain one complete type, whereas adjacency-only false includes both equality and distinct nonedge. | Equality/disequality is essential; singleton type-space claim has the right strength. |
| 5.2 completeness and primeness | Triangle sentence true in R via {0,1,3}; loop-existence false. Any extension-property model realizes every one-point extension, and a root-preserving embedding retains e(a)=b. QE gives identical formula truth under that embedding. | Mathematical route sound; absent deep signatures R05. |
| 5.3 finite consequences | Rank-1 nonemptiness uses E₀,₀. Rank-2 existence of an edge uses EP₁; K₁ fails both this sentence and EP₁. | Finite axiom budget suffices; no universal finite model of full EP. |
| 6 expected witness count | q=1/4, two candidates: expectation 0·9/16+1·6/16+2·1/16=1/2=2q. | Exact binomial mean. |
| 6 tuple versus set coefficients | n=4,r=s=1 gives ordered coefficient (4)₂=12 and set coefficient C(4,2)C(2,1)=12; r=2,s=0 gives 12 versus 6. | Correct factorial convention and sharper coefficient. |
| 6 arbitrary overlapping requests are not independent | Reuse the same one-edge request twice at p=1/2: joint success=1/2, product of probabilities=1/4. Distinct outside candidates test disjoint root-edge coordinates. | README correctly forbids the false independence shortcut. |
| 7.1 finite satisfiability and cofinite spectrum | E₀,₀ has a model at every n≥1, none at n=0. A fixed finite set of extension axioms has failure bound tending to 0, so probability >0 eventually. | Correct positive-probability argument; not circular existence. |
| 7.2 all-rank growth | δₙ=1/log(n+2): n^aδₙ→∞ for every a>0; for fixed d, n/log(n)^d dominates log n. Alternating p=1/3,2/3 gives δ=1/3 at every n. | Correct nonconvergent-parameter example and summability route. |
| 7.2 weaker divergence does not imply summability of the displayed profile | d=1, δₙ=(log n+log log n)/n eventually: growth≈log log n→∞, but B₁ is asymptotic to 1/log n and its sum diverges. | Correct separation of the two hypotheses; no unsupported almost-sure conclusion. |
| 7.3 no threshold uniform over all sentences | For each finite Xₙ, the sentence “at least n+1 vertices” is false there and true in R. Thus at every n some sentence disagrees. | Quantifiers in Lean correctly put rank before eventual n. |
| 8.1 unconditioned rooted mixture | m=2, adjacency formula: K₂ contributes p·1, empty graph contributes (1−p)·0; total p. For equality x₀=x₁ with distinct named coordinates both terms contribute 0. | Correct finite polynomial, missing headline R05. |
| 8.2 induced patterns and fixed cliques | Greedy embedding of a k-vertex graph consumes at most k−1 earlier vertices per step; k=1 uses EP₀, k=2 uses EP₁. C₄ has clique number 2 and independence number 2. | Correct fixed-size, not growing-size, assertion. |
| 8.2 degree and nonneighbor lower bounds | EPₖ permits one fixed vertex plus at most k−1 previous choices. C₄ has degree 2 and one distinct nonneighbor, so EP₁ fits but does not force two nonneighbors. | Distinguishes the necessary budget. |
| 8.2 diameter, graph and complement | EP₂ gives a common neighbor for any distinct pair, so distance≤2. EP₁ supplies a distinct nonneighbor, whose distance then equals 2. K₂ has diameter 1 and fails EP₁. | Equality 2 needs both ingredients. |
| 8.2 fixed vertex connectivity | Delete s<k vertices; request U={u,v}, Z=deleted has size 2+s≤k+1. A fresh witness survives deletion. EP_(k+1) forces more than k+1 vertices by taking a full negative request otherwise. | Correct carrier-size and deletion mechanism; k=0 can be treated separately. |
| 9.2 root Fubini and independent candidates | W=xy, root x=1/2 gives neighbor probability 1/4. Conditioning only on graph edges does not make arbitrary overlapping events independent; conditioning on root latent values gives independent outside trials. | Correct conditioning level; null x=0 exception is harmless. |
| 9.3 invariant-event mixture evaluation | Half δ_empty + half δ_complete: edge-existence integral=(1/2)·0+(1/2)·1=1/2; each fixed component's value is 0 or 1. | Correct bind evaluation and non-ergodic mixture. |
| 9.4 finitary invariance of density event | A permutation moving s labels changes at most O(sn) pairs in an n-window; normalized change≤4s/(n−1)→0. Complete graph density is 1 for n≥2. | Finitary invariance tested; no all-permutation claim. |
| 10 infinitary full extension | On any n-vertex graph, E₀,ₙ fails, so Θ_R=false and finite probability=0; on R all axioms hold and probability=1. | Correct mismatch with infinite truth, not failure of finite convergence. |
| 10 even cardinality | n=0,1,2 gives probabilities 1,0,1 for every p; even and odd subsequences tend to 1 and 0. | Correct genuine nonconvergence; empty carrier included. |
| 11.1 Bonferroni bounds | For deterministic X=2,j=0, partial alternating sums of C(X,k) at cutoffs 0,1,2 are 1,−1,0, bounding true mass 0 from alternating sides. For Poisson mean λ the limit series is e^(−λ). | Correct squeeze without a uniform exponential moment assumption. |
| 11.1 distribution and total variation | Constant δ₀ at λ=0 has distance 0. Pointwise masses converging to a probability law give a finite truncation whose missing mass <ε; total L¹ error ≤ finite-part error+2ε eventually. | Correct discrete consequence, absent Lean endpoint R05. |
| 11.2 disjoint/overlap counts | k=2,n=6: (6)₆/6²=20 ordered vertex-disjoint pairs. Edge-sharing pair has (v,e)=(4,5); vertex-only-sharing pair has (5,6); both e−v=1. | Correct overlap decay O(1/n). |
| 11.2 failure of uniform exponential moments | pₙ≈c/n, a>1: log lower bound=C(n,3)log a+C(n,2)log pₙ=(log a)n³/6−n²log n/2+O(n²)→∞. | Correct distinction from a criterion requiring uniform exponential moments. |
| 11.2 everywhere-valid parameter | pₙ=min(1,c/(n+1)): at n=0 it lies in [0,1]; n pₙ→c. For c=0 it is identically 0. | No illegal c/n value at n=0. |
| 11.3 exact moment integral | n=k=2: 2∫∫(1−xy)dxdy=2·3/4=3/2=E[(Z₂)₂]. For k=0 all products and the moment are 1. | Correct internal-edge factor and empty product. |
| 11.3 first-moment integral | n∫₀¹(1−x/2)^(n−1)dx=2(1−2^(−n)); n=3 gives 7/4, n=2 gives 3/2. | Exact integration checked. |
| 11.3 scaling and domination | k=2,x₁=x₂=1: inner integral=1/3≤1−2/4=1/2. After x=u/n, n≥2k gives bound exp(−Σu/(4k)); orthant integral=(4k)^k<∞, while limiting integral=2^k. | Correct integrable dominator and prefactor (n)ₖ/nᵏ→1. |

## Not verifiable

- **Spencer (2001):** the source service resolved the Springer book DOI `10.1007/978-3-662-04538-1` to subscription content and returned uncertified. The author-page search found related expository papers/talks, not the cited monograph. I could not verify Definition 2.3, Theorems 0.1.2, 0.1.5, 2.2.3, 2.3.1–2.3.2 or 9.1.3–9.1.4 at their printed locators. They remain uncertified; no claim about their exact wording or numbering is made. [Publisher record](https://link.springer.com/book/10.1007/978-3-662-04538-1).
- **Bollobás (2001), second edition:** the source service first found an unrelated Cambridge chapter and then, on the exact DOI, the correct book landing page but no readable legal full text. The original unresolved request was retained with the correct DOI and the same source key. Theorems 1.21–1.22, 4.1 and Corollary 4.9 were not checked against the text. [Correct publisher record](https://www.cambridge.org/core/books/random-graphs/E21023008001CFA182CE666F5028489F).
- **Hodges (1993):** the source service reached the Cambridge landing page; institutional/author-page searches did not supply the cited pages. Theorem 7.1.2, Lemmas 7.1.3–7.1.4/7.1.6, construction (1.8), and Theorem 7.1.7, pp.326–329, remain unverified. The CMT proof statements support the stronger planned signatures but do not verify those book locators. [Publisher record](https://www.cambridge.org/core/books/model-theory/BB219FC37218A7CADE5906625E6B4BC1).
- **Unlocated targets:** the README gives no source theorem/page for several sampled targets, especially 7.3, 8.2, 9.2–9.3 and 11.3. Their independent mathematical calculations are recorded above; that does not certify a nonexistent locator.
- **PointProcesses overlap:** the brief names its proposal only through a citation, without its files. I did not fetch its full roadmap independently. Indexed search excerpts show the mentioned hypotheses but do not establish the complete ownership boundary. Ownership against the explicitly provided open checkouts was checked.
- **Proposal details:** proposal pages were fetched as provenance, not installed or treated as dependencies. The exact code and activity status of all five proposed Mathlib APIs were not audited; their absence at the pins was checked. No conclusion depends on assuming those proposals are merged.

Review complete; not parked. The missing-reference file retains both Cambridge requests. No PR manifest was edited.

## Source issues

- **Misprint** in cameron2013 at §1.1, property (*), printed p.1 (lines 26–29): the source says an adjacency/nonadjacency witness is automatically distinct from all named vertices; it should explicitly require the witness outside both named sets; affects the proof.
- **Error** in cameron2013 at Proposition 1, printed p.4 (lines 171–174): the source says the full prescribed-adjacency set induces R; it should exclude the named negative vertices, which can otherwise be isolated inside that set; affects a stated result.
- **Error** in cameron2013 at Theorem 3(a), printed p.8 (lines 309–315): the source says closure, countability and amalgamation suffice for a class to be an age; it should also require a nonempty class; affects a stated result.

Witnesses: with one negative root v, v belongs to the displayed set and is isolated in it. The empty class satisfies Theorem 3(a)'s listed conditions but is no age. The roadmap avoids both defects by explicit witness exclusion and `IsFraisse.is_nonempty`.
