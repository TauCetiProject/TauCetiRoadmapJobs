# Review of HanfNumbers (pull request #1319 at 41959b5)
**Verdict:** needs changes

Independent AI review of the whole folder at the stated head. No pull-request file was changed.

## R01 (P1) — Clear the failing build gate

**Location:** `TauCetiRoadmap/HanfNumbers/Suggested.lean:1` and the supplied gate's `build` result.

**Claim:** This folder is ready for its acceptance build.

**Witness:** The supplied gate reports `build=2 FAIL`: module-system warnings from this file and `Completed/InfinitaryLogic/Suggested.lean`. Direct elaboration subsequently exits 0 with 32 admission warnings; this is a gate failure, not evidence of a type error.

**Repair:** Remove the prototype dependency as in R04 and use a module-system-compatible header for the retained native statements. Require the targeted build/gate to return `build=0`, with only admission warnings. A scratch file with `module`, `import Mathlib`, and the unchanged general first-order omitting-types signature elaborates against these pins. Do not edit the supplier prototype to repair this folder.

## R02 (P1) — Resolve the Scott-sentence route against the actual supplier

**Location:** `TauCetiRoadmap/HanfNumbers/README.md:129` and `:806`; the latter cites `TauCeti.bfEquiv_of_realize_scottSentence`.

**Claim:** The listed Tau Ceti implementations supply the syntax and the arbitrary-model Scott-sentence implications used by Layer 5.

**Witness:** At Tau Ceti `358314d4`, the cited infinitary/Scott modules and declarations are absent. On main, `Completed/InfinitaryLogic/README.md:596` instead supplies `isTupleBFSystem_of_realize_scottSentenceAt`; line 470 supplies the conversion to potential isomorphism.

**Repair:** State these as contracts from InfinitaryLogic, not implemented APIs at the pin. Repoint the proof to Layer 3's `scottSentenceAt`, self-realization, and arbitrary-model tuple-system theorem, then Layer 1's `potentialIso_iff_exists_isTupleBFSystem` and Karp theorem. Remove the nonexistent pinned declaration names from the supplier table. The repaired route still covers an uncountable pure set and its countable companion: their finite tuple types are exactly the same equality partitions. It also distinguishes empty structures with opposite nullary relations, as the supplier requires. No new owner or gap is needed.

## R03 (P2) — State the zero-colour convention instead of identifying it with the source's relation

**Location:** `TauCetiRoadmap/HanfNumbers/Suggested.lean:53` and `README.md:217`; “the classical statement about colourings of n-element subsets” at Lean line 60.

**Claim:** The unrestricted cardinal-valued relation is the classical partition relation of the cited source.

**Witness:** `PartitionRel 0 0 1 0` is true in this file: choose the empty homogeneous subset. Erdős–Rado's definition requires a colour index; with zero colours that existential is false (`erdos-rado line 117`, printed p. 429).

**Repair:** Keep the useful pairwise-constancy definition, but explicitly define its zero-colour extension and restrict the comparison with the source's colour-witness convention to positive colour bounds. Add separate Checks for `0 → (0)¹_0`, `0 → (0)⁰_0`, and an ordinary positive-colour instance. Do not claim an unconditional equivalence to the source's definition. The first value is true for the proposed extension and false for the source; the arity-zero value is true in both conventions because no zero-colour colouring exists. At `3 → (2)¹_2` both are true. The proposed relation and the impossibility of a colour witness in the first case were proved in the scratch Lean boundary probe.

## R04 (P2) — Make Suggested.lean an acceptance test against the pins

**Location:** `TauCetiRoadmap/HanfNumbers/Suggested.lean:2`, `:14`, `:195`, `:465`, `:471`.

**Claim:** The infinitary headlines are stated against available library carriers.

**Witness:** The file imports `Completed.InfinitaryLogic.Suggested` and defines three expressly identified stand-ins. Its elaborated signatures use `TauCetiRoadmap.InfinitaryLogic.BoundedFormulaω`, not a pinned Mathlib/Tau Ceti carrier.

**Repair:** Delete the roadmap import and copied supplier definitions. Keep native partition-calculus, ordered-field/order-existence, and first-order omitting-types headlines with only the simple native definitions they need. Name each unavailable infinitary headline in the module docstring, identifying its missing syntax/semantics or EM carrier; state nothing in its place. Rewrite the docstring as “target signatures” rather than an API prototype catalogue. The native omitting-types probe verifies that the general first-order theorem can remain without the forbidden import; the absent infinitary carrier was checked throughout both pinned libraries. This also repairs the gate's `imports=1`.

## R05 (P2) — Do not restrict EM sources to the bottom universe

**Location:** `TauCetiRoadmap/HanfNumbers/Suggested.lean:250` and `:263`, versus `README.md:65`, `:478`, `:499`.

**Claim:** Stretching accepts an EM source structure in the general model-universe convention.

**Witness:** Both elaborated stretching signatures have `N : Type`, whereas `IsEMSource` accepts `N : Type w`. The atomic-order source on `ULift.{1} ℚ` satisfies the same four source laws but cannot instantiate these signatures with that carrier.

**Repair:** Specify the general source universe independently of the target universe: `N : Type vN`, `J : Type w`. Keep the bottom-universe source produced by extraction as an instance, not the public stretching theorem's restriction. At the pins these infinitary statements belong in the unavailable-headline documentation under R04. Mathematically the repair gives the same atomic-order EM model `J` for both ℚ and its lifted copy; no source cardinality enters the bound.

## R06 (P3) — Delete the option override

**Location:** `TauCetiRoadmap/HanfNumbers/Suggested.lean:26`: `set_option autoImplicit false`.

**Claim:** The file follows the required Lean form.

**Witness:** The gate reports `set_option=1`. Removing this line in the scratch padding probe preserves successful elaboration.

**Repair:** Delete the line. No replacement option is needed.

## R07 (P3) — Delete the Check and elementary-API padding

**Location:** `TauCetiRoadmap/HanfNumbers/Suggested.lean:479` and `:176`; further API-only targets at `:62`, `:72`, `:83`, `:136`, `:161`, `:356`, `:393`.

**Claim:** These are acceptance-test milestones rather than routine API or README Checks.

**Witness:** Countable smallness closes with `exact fun n => Set.countable_range (infinitaryType (L := L) M (n := n))`. The seed theorem is expressly the Layer 1 worked example and reappears in README lines 345 and 845.

**Repair:** Delete these API/Check declarations from `Suggested.lean`; retain their mathematics in the README. In particular, do not replace their admissions with proofs in the acceptance file. The one-lemma countability proof compiled, and the empty, singleton, and countably infinite structures give respectively 0, 1, and at most ℵ₀ realized positive-arity types. All 32 original admissions were also tried with the single tactic `simp`; none closed that unconfigured probe. Failure of `simp` does not turn elementary API into a headline.

## R08 (P3) — Give each target a usable source locator and record the sources

**Location:** `TauCetiRoadmap/HanfNumbers/README.md:209`, `:393`, `:566`, `:789`, and `:1006`.

**Claim:** The references allow verification of the individual targets and their generality.

**Witness:** None of the 15 seeded target subsections attaches an exact source theorem/page to its principal claim. Marker is cited only by a whole chapter; the accessible 2013 version has Chapter 5 on pp. 54 onward, not the cited 2016 pagination.

**Repair:** Add locators at the claims, distinguishing direct source statements from the roadmap's strengthened constructions and their named inputs. Use the version actually read. Examples of usable starting points are Marker 2013 Theorem 5.2, p. 54; Theorem 5.5, pp. 55–56; Exercise 5.3, p. 54; Theorem 5.11 and Corollary 5.13, p. 59; and Erdős–Rado Theorem 39's proof, pp. 469–470. The source sample below records which comparisons were actually established. Add the required `sources.toml` entries; the folder has none. Do not claim that the original first-order EM paper directly proves the stronger infinitary truth lemma without an exact derivation.

## R09 (P3) — Supply the missing Checks and per-target dependency structure

**Location:** `TauCetiRoadmap/HanfNumbers/README.md:209`, `:321`, `:393`, `:537`, `:759`.

**Claim:** Every definition has at least three discriminating Checks, and each target/layer states its dependencies.

**Witness:** There are zero `**Checks.**` blocks, zero `*Needs:*` lines, and no layer-ending Examples/Dependencies sections. For example, the three definitions in §0.1 have no local test list; the global worked examples do not test their zero-colour behaviour.

**Repair:** Preserve the API and add three actual positive/negative/boundary computations per definition. Add individual statement-and-route dependencies and the prescribed layer endings. Reorganize the introduction, ownership, supplier contracts, and build guide under the required headings, with a Summary paragraph and downstream-consumer section. The computations below provide concrete candidates: smaller-point versus larger-point pair colourings, finite-index template vacuity, false/finite/infinite Hanf spectra, and empty/one-/two-point orders. Do not migrate these Checks into Lean admissions.

## R10 (P3) — Remove the TeX and process narrative

**Location:** `TauCetiRoadmap/HanfNumbers/README.md:462`, `:505`, `:935`, `:957`, `:1038`; also `:33` and Lean `:190`.

**Claim:** The document follows the timeless Unicode/prose format.

**Witness:** The gate records two `tex` failures and three `residue` failures. The README and Lean docstrings also cite pull-request numbers and supplier-revision checking history.

**Repair:** Write the cardinal bounds in Unicode/inline code, remove the process wording and pull-request references, and cite suppliers by roadmap and section. Keep mathematical provenance as a secondary source citation, without migration instructions or review history. For the tested infinite countable-language case the rewritten bound is still `|EM(J, Φ)| ≤ max(ℵ₀, |J|, |L′fun|) = |J|`; no mathematical change is needed.

## R11 (P3) — Fix own-name claims without manufacturing extra Lean API

**Location:** `TauCetiRoadmap/HanfNumbers/README.md:541`, `:639`, `:685`, `:806` and the gate's ten `readme-ids-missing` entries.

**Claim:** Backticked names presented as this roadmap's own are declared in the acceptance file.

**Witness:** Six absent own-name claims are `hanfNumber_le_iff_isHanfBound`, `hanfNumber_le_of_isHanfBound`, `hasArbLargeModels_of_forall_beth`, `isCompleteSentence_scottSentence`, `isEMSource_em`, and `lomega1omegaHanfNumber_le_iff`.

**Repair:** State these API facts in prose, keeping genuine unavailable headlines in the module docstring under R04. Do not add six padding declarations. Four other scanner entries are attribution false positives: `onBoundedFormulaInf_substBounds` is supplied by IME §0.4; `morleySeed_indiscernibleOn`, `hasArbLargeModels_of_seed_realizability`, and `Lomega1omegaHanfNumber_eq_beth_omega1` are explicitly external provenance names. Preserve that distinction when making the gate's attribution unambiguous. For example, the finite two-element spectrum still gives “least bound ≤ κ iff κ is a bound”, with both sides false at κ = 2 and true at κ = 3.

## Verified sound

The whole 1,039-line README and 543-line Lean file were read. The examination includes all 57 top-level Lean declarations (25 definitions/structures and 32 admitted theorems), all six layers, the nine worked examples, all 15 seeded source targets, and the proof routes of the headline results. The checks below are finite or explicit cardinal computations and route audits, not proofs of the admitted theorems.

The unchanged file elaborated successfully with `lake env lean`, producing exactly 32 `sorry` warnings. A scratch copy with `#check @name` for every one of the 57 declarations also elaborated. No required typeclass binder silently disappeared. The source-universe restriction in R05 is an explicit restriction, not a dropped section variable. Removing the option override preserves elaboration. The countability padding and zero-colour probes also succeeded. No proof of a headline was claimed.

The supplied gate remains failing:
`set_option=1; tex=2; residue=3; imports=1; readme-ids-missing=10; build=2`.
All other supplied counters are zero, including sorry-data, stray-files, outside-folder, and dependency failures. The diff outside this folder is empty; the worktree remained clean. The report does not turn a successful direct elaboration into a passing gate.

The requested dependency command returned:

```text
depcheck: 205 roadmaps, 1477 edges, 0 problem(s)
```

There was no UPWARD, CYCLE, or moved line. HanfNumbers is listed at merge-order line 368. The absence of per-target Needs lines is R09, not evidence of a mechanically detected cycle. The source/template definitions in Layer 2 can be ordered before their realization theorems; their prose forward references do not force a mathematical circular proof.

The headline inventory is:

| Headline | State at these pins |
| --- | --- |
| End-homogeneous extraction and finite-exponent Erdős–Rado (§§0.3–0.4) | Native cardinals/orders; statable and present. |
| Skolem-template truth lemma, generation, functoriality (§2.3) | EM carrier and infinitary syntax unavailable; README only. The docstring must name the individual unavailable results. |
| EM stretching, exact cardinality, source extraction (§§2.4, 3.4) | Present through the forbidden prototype; unavailable natively. |
| Morley–Hanf, exact-cardinality form, countable-theory corollary (§3.4) | Infinitary syntax/semantics unavailable. |
| General first-order omitting-types theorem (§3.4) | Native first-order formulas and satisfaction; statable and present. The standalone native probe passes. |
| Bounded beth-ladder spectra and global Hanf number (§§4.2–4.3) | Infinitary sentences/semantics unavailable. |
| Highly order-transitive ordered fields and orders of every infinite size (§5.1) | Native field/order carriers and a simple predicate; statable and present. |
| Small-model theorem, countable companions, complete-sentence characterization, categorical completions (§§5.3–5.5) | Infinitary syntax/types and potential-isomorphism/Scott interfaces unavailable natively. |

No additional absent, natively statable headline was identified. The defect is presenting unavailable ones through prototypes, not the mere shortness of a corrected acceptance file.

The source sample was checked as follows. “Derived route” means the roadmap's argument was examined independently; it does not certify an unprovided source locator. Source keys below identify the legally fetched texts, not files added to the pull request.

| Seeded target | Source text opened and outcome |
| --- | --- |
| 0.1 Vocabulary | `erdos-rado line 105` through line 125, §2, printed pp. 429–430. Positive-colour convention matches; zero-colour discrepancy is R03. |
| 0.3 End-homogeneous sets | `erdos-rado line 1533` through line 1577, proof of Theorem 39(i), pp. 469–470. The recursively chosen prefix and its colour-code counting support the stated route; this is a proof extraction, not a theorem with the README's name. |
| 1.1 Indiscernibility | Marker 2013 §5.2, p. 57, `marker line 1887` through line 1902, uses order indiscernibles; the original EM article was not retrieved. The individual API claims have no supplied locator. |
| 1.3 Morley seed | Direct equality/sentence computation below. No exact literature locator or readable external Lean source was supplied for this particular seed. |
| 2.2 Skolem templates | The three-law interface is the roadmap's construction. Marker Exercise 5.7, p. 57, `marker line 1889`, does not state this interface. The finite-satisfiability/ω-completeness distinction was tested below. |
| 2.3 EM term model | Reviewed quotient congruence and both quantifier directions using the stated witness assignment. Marker Exercise 5.7 gives background stretching, not this truth-lemma statement; exact source support is uncertified. |
| 2.4 EM sources and exact cardinality | Marker Exercise 5.7 and Theorem 5.2, pp. 57 and 54, `marker line 1889` and line 1803. The particular four-clause source interface and cardinal estimate were checked from the term description. |
| 3.1 Hanf bounds | Keisler–Knight §1.6, preprint pp. 9–10, `keisler-knight line 416` through line 436. Cofinal and single-model formulations are distinct; the README distinguishes them and uses the correct limit for the global conclusion. |
| 3.2 Countable Skolemized reduction | Marker §5.2, p. 57, `marker line 1892` through line 1898. The arbitrary-language support/dummy reduction is an additional route using the resolved IME contracts. |
| 3.3 Homogeneous approximation | Marker proof of Theorem 5.2, pp. 57–58, `marker line 1904` through line 1941. Inspected countable witness colours and the cofinal pigeonhole step. The README's unrestricted pos/neg version preserves existing truth values under restriction. |
| 4.1 Global bounds | Keisler–Knight Theorem 1.6.1, preprint p. 9, `keisler-knight line 422`; the README's existence at the specific bound uses Morley–Hanf, not an unjustified proper-class supremum. |
| 4.2 Beth ladder | Marker Exercise 5.3, p. 54, `marker line 1806` through line 1815. The six README clauses match its mathematics; monotonicity supplies the missing reverse implication at a nonzero limit. |
| 4.3 Sharpness | Marker Theorem 5.2/Exercise 5.3, p. 54; Keisler–Knight Theorem 1.6.2, preprint p. 10, `keisler-knight line 436`. Limit cofinality calculation checked below. |
| 5.2 Small structures | Marker Definition 6.11, p. 77, `marker line 2603`; tuple-type computations below. |
| 5.4 Companions and complete sentences | Marker Exercise 2.34, p. 22, `marker line 718`, and Corollary 5.13, p. 59, line 1977. The exercise as printed unnecessarily restricts M to be countable; it does not directly certify the arbitrary-M claim. The isolator/back-and-forth route using IME §4.1 and the parent's Scott theorem was checked independently. |

The 2013 Marker notes are an author-page version, not a verification of the cited 2016 edition's numbering. Keisler–Knight's precise §1.6/Theorem 1.6.2 attribution was verified in the linked author preprint. The exact 2016 Marker and Kanamori locators remain uncertified.

The adversarial record has 107 rows and follows. T/F mean computed truth values. All cardinals and structures mentioned are ordinary mathematical instances, not numerical approximations to uncountable sets. A dash in the change column means that the instance disclosed no repair; it is not a claim of a formal proof.

| Statement / convention | Instances tried | Values computed on the two sides | Result / change |
| --- | --- | --- | --- |
| First-order opening; countable-language hypothesis | Pure infinite sets; language with κ pairwise distinct constants | Pure sets: every infinite size; distinct constants: size ≥ κ | Correct with the stated language bound. |
| Increasing tuples versus subsets | J = {0,1,2}, n = 0,1,2 | Tuple and subset counts both 1,3,3 | Match. |
| Beth convention and ordinal direction | α = 0,1,ω; n = 0,1,2 | ℶ₀ = ℵ₀; ℶ₁ = 2^ℵ₀; ℶ₂ = 2^(2^ℵ₀); shift at ω is ω+1, not 1+ω = ω | Match; retain right addition. |
| Cofinal versus one-large-model hypothesis | Spectrum bounded by ℶ_(β+1) | Threshold α = β+2 fails; a model at ℶ_ω₁ would satisfy every smaller threshold | Correct implication and bounded negative control. |
| Nonempty Hanf convention | φ = ∀x ⊥; add one constant | Nonempty spectra empty in both; least bound 0 in both. Counting empty models would give 1 versus 0 | Nonempty restriction is necessary. |
| Complete/categorical conventions | Contradiction; exactly-two-element sentence at κ = 3 | Completeness T vacuously for contradiction; categoricity T vacuously when no κ-model exists | Definitions intentional; completion headline separately asserts existence. |
| Arbitrary language support | φ uses one unary relation; add κ unused constants | Used relation symbols 1; all constants can map to one dummy; reduct carrier stays λ even when λ < κ | No injective map of all symbols is assumed. |
| Homogeneous predicate | n = 0; H empty; unary parity on {0,1} | First two T; parity values 0 and 1 give F | Distinguishes constant/nonconstant. |
| End-homogeneous predicate | c(i,j)=i mod 2 on {0,1,2}; c(i,j)=j mod 2 | First: end-homogeneous T, homogeneous F (0 versus 1); second: same prefix 0 gives 1 versus 0, hence F | Correct direction; reverse implication fails. |
| Partition relation | (κ,λ,n,μ)=(3,2,1,2); (2,2,1,2) | First has fibre ≥2; second identity colouring has fibres 1 and 1 | T versus F. |
| Zero-colour partition/source comparison | (0,0,1,0), (0,0,0,0) | Proposed relation T,T; source relation F,T (the arity-zero colouring itself cannot exist) | R03; first case formally probed. |
| Order-free partition equivalence | Three-element order and its reverse, n=2 | Both have exactly 3 unordered pairs; the same 2-colouring has homogeneous pairs of size 2 | Both directions preserve values. |
| Partition monotonicity | 3→(2)¹₂ to 4→(1)¹₁ | Premise T; conclusion T, constant colour fibre 4 ≥1 | Correct variance in all three parameters. |
| Homogeneous restriction/transport | Even points {0,2,4} then {2,4}; relabel increasingly | Colour values all 0 before and after | Restriction preserves T. |
| Iterated power definition | κ=0; n=0,1,2 | 0,1,2; recursion gives same sequence | Junk/finite inputs accounted for. |
| Iterated power on beths | α=0, n=0,1,2 | Both sides ℵ₀,2^ℵ₀,2^(2^ℵ₀) | Match. |
| Successor pigeonhole | κ=ℵ₀; finite negative control κ=1 | Countably many countable fibres cannot cover ℵ₁; at κ=1 a one-colour source of size 2 still works | Infinite hypothesis sufficient, not a claimed finite characterization. |
| ω₁ pigeonhole | Constant map to ℕ; identity into ω₁ | Constant fibre size ℵ₁ and unbounded; identity fibres size 1 and bounded | Countability of colours excludes failure. |
| Downward-closed cofinal predicate | P(α)=(α≤ω); P identically T | First bounded, not cofinal; second holds at all α | Correct cofinal-to-all argument. |
| End-homogeneous extraction | λ=ℵ₀, n=0; source colour from smaller point | Any fixed-prefix pair colours agree; bound asks output ℵ₁ from source (2^ℵ₀)⁺ | Construction's target and example compatible. |
| Tree counting in extraction | Prefix size ≤λ; λ infinite; finite arity r | Number of colour codes ≤λ^(λ^r)≤2^λ; λ⁺·2^λ=2^λ < (2^λ)⁺ | Count bound supports long-prefix step. |
| Erdős–Rado | κ=ℵ₀; n=0,1,2 | Inputs ℵ₁,ℶ₁⁺,ℶ₂⁺; arities 1,2,3; output always ℵ₁ with ℵ₀ colours | Correct indexing. |
| Beth consumer form | α=0, n=1; α=ω, n=0 | ℶ₁⁺→(ℵ₁)²_ℵ₀; ℶ_ω⁺→(ℶ_ω⁺)¹_(ℶ_ω) | Agrees with induction and base case. |
| No simultaneous-all-arities inference | Finite n versus all n at once | Each step uses one finite arity; no output set satisfying countably many independent colourings is produced | No illicit infinite Ramsey input; large-cardinal assertion itself uncertified below. |
| Indiscernibility on Δ | Unary P=even, a(k)=2k versus a(k)=k | First P-truth always T; second P(0)=T, P(1)=F | T versus F. |
| Full indiscernibility | Pure equality, injective sequence | Equality xᵢ=xⱼ has value (i=j) on every increasing tuple | Pure equality sequence indiscernible. |
| Subsequence composition | a(k)=2k; e(k)=k+1 | P(a(e(k)))=T for every k, as before | Correct comp orientation. |
| Negation/implication/countable closure | Constant truth values p=T, q=F | ¬p=F; p→q=F; all-T conjunction T; disjunction with one T is T | Uniformity preserved componentwise. |
| Quantifier nonclosure | Γ contains only a binary relation false on a chosen sequence, with outside witnesses for only one sequence point | Atomic values F,F; existential projections T,F | Warning correct; no quantifier closure promised. |
| EMTemplate data | Arity-one equality and its negation both declared true | Bare template permits both; any actual realizing singleton would require T and F | Bare template is data; Skolem laws exclude this assignment. |
| templateOf | Singleton index, falsum at arities 1 and 2 | Membership F at arity 1; T at arity 2 because there are no pairs | Infinite-index condition is needed for the subsequent coherence assertion. |
| RealizesOn | Pure set, injective sequence, correct versus all-true template | Correct: equality and inequality agree; all-true: x₀=x₁ gives F↔T | Wrong template rejected. |
| Indiscernible iff realizes own template | Infinite pure set; empty index | Both T in each case; empty index has vacuous positive-arity requirements | Correct; infinity is unnecessary for this particular iff. |
| Template coherence and infinite subsequences | Pure equality with r:Fin 1↪Fin 2 | x₀=x₀ has T before and after; falsum F before and after | Correct on infinite indices; keep that scope explicit. |
| disEq | Tuples (0,0),(0,1) | F,T respectively | Correct negation convention. |
| Morley seed and seed indiscernibility | Injective sequence; φ true or false | Sentence value constant T or constant F; inequality always T | Indiscernibility T in both; model-of-φ unnecessary for this theorem alone. |
| Seed realization gives sentence/injectivity | True seed from a model; b constant on two indices | Arity 0 forces φ=T; constant pair has disEq=F, contradicting required T | Correct extraction of both consequences. |
| Height finite-character counterexample | Height h=max finite set of indices; all indices together | Every finite required Pᵢ true and conjunction over all i false; no height makes all Pᵢ true | Finite satisfiability does not imply ω-realizability. |
| Language-map action | Identity map; collapse two unused constants to a dummy | Identity preserves each constructor; both constants get the same chosen element; used φ retains its value | Semantic reduction valid, despite noninjectivity outside support. |
| Skolem tower | Existential x=x; nonempty singleton versus empty carrier | Singleton witness exists; empty carrier cannot interpret the new nullary witness symbol | Nonempty expansion hypothesis is essential and present. |
| Tower closure/countability | One countable formula family, countable terms, countably many stages | ℵ₀·ℵ₀=ℵ₀ at each stage and in the union | The tower stays countable; not all infinitary formulas are Skolemized. |
| Skolem hull elementarity/cardinality | Pure relational infinite source; empty generators after adding existential witness constants | Closure contains at least one witness and at most ℵ₀ elements; ∃x x=x remains T | Tarski–Vaught route and cardinal bound compatible. |
| Witness assignment | ψ(x,y)=¬(x<y) on ℚ; w(x)=x versus x+1 | Counterexample exists; at x the body T (bad); at x+1 body F (good) | Actual counterexample-witness law excludes the wrong term. |
| Skolem finite satisfiability | Assignment makes equality and its negation both true | A two-instance finite set requires T=F | Rejected already before ω-completeness. |
| Skolem ω-completeness | Height template declares all Pᵢ and ¬⋀Pᵢ | Each Pᵢ=T but conjunction=F; no false component | Rejected precisely by the iInf law. |
| Instance coherence | Variable term x₀ relabelled to x₁ in pure equality | Equality of a term with itself T before/after; two distinct skeleton positions unequal | Coherence does not identify distinct variables. |
| Template from EM source | Atomic-order source ℕ→ℚ | Equality patterns and < patterns depend only on variable indices, not chosen increasing tuple | All finite conditions realized in ℚ; no ω-connective obligation in atomic fragment. |
| EM quotient/congruence | Atomic-order source; supports {1},{1} and {1},{2} | Same variable at index 1: equal; indices 1,2: unequal | Equality quotient preserves skeleton distinctions. |
| EM functions/relations/skeleton | Atomic-order language, J={0,1} | Carrier has 2 elements; E(0,1)=T, E(1,0)=F, equality diagonal T | Agrees with J. |
| Truth lemma: atoms and booleans | Same two-point EM model | x₀=x₁ F; x₀<x₁ T; implication T→F F on both sides | Base and Boolean cases agree. |
| Truth lemma: countable connectives | All-T conjunction; disjunction with one T; all-F disjunction | Template/model values T,T,F respectively | ω-completeness supplies the required direction. |
| Truth lemma: universal quantifier | Pure set Γ contains ∀y(y=y); negated universal with a designated counterexample | Universal T/T; counterexample makes body F/F | Common-support and witness-term steps have correct directions. |
| EM sentences | Sentence at arity 0; empty J | Exactly one empty index tuple, so Φσ and model satisfaction must agree | No vacuous loss of sentences. |
| EM generation and cardinal bound | Pure equality J=∅, singleton, infinite κ; no functions | Carrier sizes 0,1,κ; bounds ℵ₀,ℵ₀,κ | Bound valid; exact equality claimed only when appropriate. |
| Countability for finite J | One free unary function, one generator | Terms x,f(x),f²(x),…: size ℵ₀, not necessarily finite | “Countable” is the correct finite-index conclusion. |
| EM functoriality | Atomic-order J={0,1} embedded into {0,1,2} by i↦i+1 | Skeleton images 1,2; order truth T stays T; identity and composition give identical index maps | Source/target and composition agree. |
| EMSource definition | Atomic-order ℚ source versus a sequence alternating two points | Increasing variable pairs all ordered in first; alternating source has both equal and unequal pairs | Atomic source qualifies; wrong sequence fails term indiscernibility. |
| Stretching without injectivity | Constant source in singleton pure set; J infinite | Stretched singleton size 1; skeleton constant; 1≤max(ℵ₀,\|J\|) | General bound valid; exact-size hypothesis must not be dropped. |
| Exact stretching | Injective atomic-order source; \|J\|=κ infinite | Lower bound κ, upper bound max(ℵ₀,κ,0)=κ | Both bounds κ. |
| Source universes | ℚ and ULift.{1}ℚ, identical transported order | Source laws T in both; present signature accepts only first carrier as written | R05. |
| Approximation definition | pos and neg both contain a unary tautology; H=∅ versus infinite H | At κ=0 both requirements vacuous; at κ=ℵ₀ require T and F, impossible | Cofinal definition removes finite-vacuity artifact. |
| Cofinal approximation | Empty condition with σ=“infinite pure set”; σ=false | Every beth threshold available in first; no witness in second | T versus F. |
| Approximation monotonicity | Same H with size ℶ₂, thresholds ℶ₁ and ℵ₀ | ℵ₀≤ℶ₁≤ℶ₂≤\|H\| | Restriction preserves every pos/neg condition, even infinite ones. |
| Start condition | Infinite pure-set sentence and disEq | Sentence T; each increasing pair unequal T | Start is approximated at every beth threshold. |
| Decision extension | ψ=false; ψ=true; n=0 | Only negative branch works for false, only positive for true; sentence has one empty tuple | At least one branch, not both, is required. |
| Disjunction witness extension | ψ₀=T, all later ψᵢ=F | Disjunction T; witness i=0 extends positively; i>0 fails | Correct witness sign. |
| Conjunction witness extension | ψ₀=F, all later ψᵢ=T | Conjunction F; witness i=0 extends negatively | Correct dual sign. |
| Arity shift in approximation | n=1 and n=2 | Required sources ℶ_(α+1)≥ℶ_α⁺ and ℶ_(α+2)≥ℶ_(α+1)⁺; outputs ≥ℶ_α | No natural-subtraction error at n=0, which is split off. |
| Total assignment enumeration | θ₃ was selected as a witness at stage 1 | θ₃∈p₂⊆p₃; its own witness is selected at stage 3 | Already-decided members still receive witnesses. |
| Approximated assignment becomes Skolem template | Finite instances over an infinite H | An increasing tuple exists at every finite arity; prescribed truth values realized simultaneously | Coherence and finite satisfiability follow; ω-completeness is separately assumed. |
| Hanf predicate/least bound | False sentence; exactly 2 elements; only countable models; infinite pure sets | Least bounds 0,3,ℵ₁,0 respectively | Correct total/empty/finite cases. |
| Hanf monotonicity and least-bound iff | Exactly-two-element sentence, κ=2,3 | IsBound: F,T; leastBound≤κ: 3≤2 F, 3≤3 T | Both directions agree. |
| Hanf invariance | Add unused relation or constant to a nonempty two-point model | Reduct and expansion spectra both {2}; least bounds both 3 | Nonemptiness handles constants. |
| EM source extraction | Infinite pure sets under cofinal hypothesis | Can choose countable source N=ℕ with injective a=id; all inequalities T | Countable source does not assert indiscernibles in each given model. |
| Exact Morley–Hanf | Infinite pure-set sentence, κ=ℵ₀ and ℵ₁ | Models have sizes ℵ₀ and ℵ₁ exactly; finite κ=1 fails and is excluded | Cardinal qualifier correct. |
| morley_hanf / upper bound | Exactly-two-element sentence; infinite pure sets | At ℶ_ω₁ first antecedent F, bound T; second arbitrarily-large conclusion T | Implication and upper bound agree. |
| Countable-theory corollary | T empty; T contains contradiction | Empty conjunction T, all infinite sizes; contradictory conjunction F, cofinal antecedent F | Conjunction reduction has correct empty value. |
| General omitting types | T empty, S empty; S contains empty arity-0 type | First omission vacuous T; second omission impossible, since unique 0-tuple realizes every member of empty type | No false existence from empty types. |
| Type-countability necessity | Constants indexed by I of size ℶ_ω₁; p={x≠cᵢ} | Omitting p gives \|M\|≤\|I\|; all nonzero sizes ≤\|I\| possible, none above | README negative control is correct. |
| Countable-language omission corollary | Countable symbols, finite variable sets | First-order formula set has size ≤ℵ₀, so T and each p are countable | Only family countability remains extra. |
| Global Hanf predicate and attained minimum | Finite bounded spectra versus all sentences | Two-point spectrum forces bound>2; Morley supplies bound ℶ_ω₁ | Class of bounds nonempty without taking a proper-class supremum. |
| Bounded-spectrum lower criterion | Maximal nonempty model κ=2 | IsBound(φ,2)=F, so universal bound cannot be ≤2 | Strict inequality has the right direction. |
| Ladder language/six clauses | α=0, all constants same, singleton carrier with E empty | U₀=U₁=singleton; extensionality T; all six clauses T | Small models allowed; constants need not be distinct. |
| Ladder upper bound | Levels 0,1,2 and ω | Bounds ℵ₀,2^ℵ₀,2^(2^ℵ₀),supₙℶₙ; countable union bound at ω is ℶ_ω | Successor/limit calculations agree. |
| Maximal von Neumann ladder | α=0,1; transitive V_ω base | \|V_(ω+1)\|=ℶ₁; \|V_(ω+2)\|=ℶ₂; all predecessors remain in carrier | Extensionality sees all relevant predecessors. |
| Explicit powerset ladder Check | α=0, y=∅,{0},{0,1} | Predecessor sets ∅,{{0}},{{0},{1}}; distinct y give distinct predecessor sets | All clauses satisfied; total size 2^ℵ₀. |
| Ladder sentence semantics | Same powerset model; collapse E to empty while retaining ≥2 elements | Six clauses T in first; extensionality F in second | Wrong E rejected. |
| Maximal spectrum theorem | α=0 and α=1 | Existence at ℶ₁,ℶ₂ respectively; upper bounds the same | Both halves compatible. |
| Sharpness and beth supremum | α<ω₁; successor α+1<ω₁ | Every ℶ_(α+1)<global H; supremum of these cardinals =ℶ_ω₁; H≤ℶ_ω₁ | Upper/lower bounds meet at ℶ_ω₁. |
| Highly order-transitive predicate | Empty, singleton, two-point chain | T,T,F: two-point order's only automorphism fixes both points | Finite negative control separates transitivity. |
| Density/no endpoints consequence | Two distinct points with a missing interval or an endpoint | Endpoint cannot map to a nonendpoint; adjacent pair cannot map to a pair with an interior point | Required pair/singleton transitivity excludes both. |
| Ordered-field transitivity | ℚ, tuples (0,1) and (2,4) | e(x)=2x+2 sends 0↦2,1↦4; slope 2>0; inverse (y−2)/2 | Direction and nonzero denominator verified. |
| Highly transitive order at κ | κ=ℵ₀; general infinite κ monomial generators | ℵ₀≤field size≤max(ℵ₀,ℵ₀)=ℵ₀; generally κ≤size≤κ | Cardinal bounds equal κ. |
| Complete tuple type | Pure set tuple (a,a) versus (a,b), a≠b | Equality formula belongs to first type, not second | Types distinguish repeated coordinates. |
| Realized-types carrier | Empty pure set and two-point pure set | Arity 0: 1 type in both; arity 1: 0 versus 1; arity 2: 0 versus 2 | Empty tuple convention correct. |
| Smallness / countable case | Infinite pure set; all reals coded by countably many unary predicates | Pure-set type counts at n=0,1,2,3: 1,1,2,5; real-coding has 2^ℵ₀ one-types | Positive and nonsmall models distinguished. |
| Smallness invariance/reduct | Same real-coding structure, erase unary predicates | One-type count drops from 2^ℵ₀ to 1 | Descent is correct; ascent would be false. |
| Potential-isomorphism transfer | Uncountable pure set and countable pure set | Realized n-types both equality partitions; at n=2 both have 2 | Correct transfer in the used relational setting. |
| Orbit criterion | Pure sets; DLO at arity 2 | Pure-set orbits/types: 2; DLO orbits/types: 3 (<,=,>) | Countably many orbits give countably many types. |
| Small EM models | Countable language and highly transitive index order of size κ | Number of term codes ≤ℵ₀; types ≤codes≤ℵ₀; model size κ | Distinct codes need not give distinct types; only surjective bound used. |
| Countable companion | Uncountable pure set; empty relational structure | Countable pure subset has same n-types; empty companion remains empty | Back-and-forth works in both cases. |
| Isolator witness step | Pure set, q=type of distinct pair | χ_q(x,y) is x≠y; ∃yχ_q true in both infinite companion and source | The existential closure in the supplier seed is needed and present. |
| Scott sentence completeness | Infinite pure sets; DLO | Any two models have finite equality/order back-and-forth; all sentences agree | Arbitrary target cardinality is essential; R02 changes citation, not result. |
| Small iff complete sentence | Pure sets versus unary real-coding structure | First: small T and complete sentence exists T; second: small F and complete-sentence witness F | Both directions supported by companion/isolator route. |
| Complete strengthening of a small model | Small pure infinite M, φ=“at least 2 elements” | Complete infinite-set sentence true in M and entails φ=T | Entailment direction correct. |
| Categorical completion | Infinite pure sets, any infinite κ; DLO at κ=ℵ₀ | σ=φ works, \|M\|=κ, categoricity T; DLO countable models unique | All required conclusions met; no existence inferred from vacuous categoricity. |
| Worked countable spectrum | Distinct constants cₙ exhausting domain | Sizes exactly ℵ₀; no finite or uncountable models; least single-sentence bound ℵ₁ | Correct strict global lower bound. |

Object ownership and suppliers were checked by object searches in both pins, main, the board packages, and the indexed open-roadmap READMEs/Lean files using the provided roadmap tools. Terms included indiscernibles, homogeneous tuple colourings, EM templates, Skolem towers, Hanf bounds, realized types, and highly transitive orders. No competing owner of the new EM/Hanf construction was found. The unrelated uses of “partition calculus” in operator algebra were not treated as mathematical duplication. No second readable roadmap declaration with a HanfNumbers fully qualified name was found. Existing ownership of infinitary syntax, language maps, fragments, and realized types is why R04 requires deleting the copies. The parent explicitly excludes EM/partition/Hanf in `Completed/InfinitaryLogic/README.md:688`; this is an extension into that excluded area, not a re-planning of its existing targets.

Resolved cross-roadmap contracts, against main rather than a revision of an existing roadmap in an open PR:

- `TauCetiRoadmap/InfinitaryModelExistence/README.md:171`, §0.1: language-map action, realization and injectivity.
- `:183`, §0.2: occurrence sets, countability and locality.
- `:200` and `:219`, §0.3: sublanguages, restriction/expansion and small presentation.
- `:226` and `:242`, §0.4: bound substitution and its commutation with language maps.
- `:253` and `:262`, §1.1: theories and countable conjunctions.
- `:275` and `:301`, §1.2: component-closed fragments and generated-countability.
- `:330` and `:354`, §§2.2–2.3: Tarski–Vaught and countable elementary substructures; the relational use removes the function-symbol size obstruction.
- `:487`, `:496`, `:502`, §4.1: complete realized types, isolators among realized types, and their countable existential-closure seed.
- `Completed/InfinitaryLogic/README.md:305`, `:319`, `:324`: syntax, finitary embedding and coded connectives; `:443`, `:470`: tuple systems and potential isomorphism; `:578` through `:605`: Scott formulas/sentences and arbitrary-model tuple systems.
- The exclusion-only references to BorelEquivalenceRelations and CountableModelCounting match their main scope sections. The roadmap tool resolves CountableStructureSpaces to its indexed new-roadmap head, whose scope is coding spaces and López–Escobar, not EM/Hanf; none is consumed by this roadmap.

The ten citation-resolver leads were classified rather than accepted blindly: the two approximation-witness names are local declarations at Lean lines 315/323; generated-countability is in IME §1.2; the finitary `toOmega` is in the parent Layer 0; the five advertised Tau Ceti Scott/Karp names are unavailable at the pin (R02); the remaining `MarkerHenkinBody.branch_choice` is an external provenance claim, not a pinned-library claim.

Pinned declarations opened and used (paths are library-repository-relative; Mathlib pin `f6090c7095e1e56b3464c1daba5f24631f1290d2`, Tau Ceti pin `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`):

| File:line | Declaration / property inspected |
| --- | --- |
| `Mathlib/ModelTheory/Basic.lean:155` | `Language.Structure` supplies `funMap` and `RelMap`; it does not impose `Nonempty M`. |
| `Mathlib/ModelTheory/LanguageMap.lean:70` | `LHom.reduct` changes symbol interpretation and keeps the carrier. |
| `Mathlib/ModelTheory/Skolem.lean:45` | `Language.skolem₁` indexes n-ary witness symbols by formulas in n+1 bound positions; it is first-order, not the required infinitary tower. |
| `Mathlib/ModelTheory/Substructures.lean:231` | `Substructure.closure` is the existing hull carrier; it does not supply the infinitary Tarski–Vaught theorem. |
| `Mathlib/Data/Finset/Sort.lean:194` | `Finset.orderEmbOfFin` enumerates a finset of cardinal k increasingly. |
| `Mathlib/SetTheory/Cardinal/Pigeonhole.lean:44` | `infinite_pigeonhole_card`: threshold θ≥ℵ₀ and codomain cardinal strictly below cf(θ). |
| `Mathlib/SetTheory/Cardinal/Pigeonhole.lean:97` | `exists_uncountable_fiber`: uncountable domain and strictly smaller codomain. |
| `Mathlib/SetTheory/Cardinal/Regular.lean:78`, `:90` | `isRegular_succ` with infinite predecessor; `isRegular_aleph_one`. |
| `Mathlib/SetTheory/Cardinal/Aleph.lean:556` | `countable_toType_of_lt_omega_one`. |
| `Mathlib/SetTheory/Cardinal/Aleph.lean:704`, `:710`, `:739`, `:745`, `:751` | `beth` is `preBeth (ω+o)`; successor, nonzero-limit and lower-bound formulas. |
| `Mathlib/SetTheory/ZFC/VonNeumann.lean:50`, `:58`, `:76`, `:120`, `:127`, `:141` | Transitivity, monotonicity, membership/rank, powerset successor, limit union, and `card_vonNeumann = preBeth`. |
| `Mathlib/SetTheory/Cardinal/Subfield.lean:73` | `Subfield.cardinalMk_closure_le_max`: generated subfield size ≤max(generator size,ℵ₀). |
| `Mathlib/RingTheory/HahnSeries/Lex.lean:380` | Strict ordered-ring structure on lexicographically ordered Hahn series. |
| `Mathlib/Data/Set/Countable.lean:116` | `Set.countable_range`, used successfully in the one-lemma padding probe. |

## Not verifiable

- **Published-source numbering:** the 2016 Marker DOI landing page was reached through the sources service, but the published chapter text was not obtained. The legal [2013 author notes](https://homepages.math.uic.edu/~marker/math512-F13/inf.pdf) were read instead. Their numbering/pagination must not be represented as the 2016 edition's.
- **Kanamori:** the sources service classified the Springer citation as paywalled/uncertified. The chapter-level locator does not certify Convention 9's precise Erdős-cardinal assertion. No inaccessible text was guessed.
- **Keisler 1971 and Morley 1965:** bibliographic searches through the sources service did not produce a legal full text; the author's publication/book listing was also checked for Keisler. Their unspecified/book-wide or article-wide locators remain uncertified.
- **Ehrenfeucht–Mostowski 1956 and Hanf 1964:** the publisher DOI pages and the institutional ICM scans were tried. The institutional fetches produced no text after several minutes and were terminated. The advertised first-order EM paper cannot certify the README's infinitary extension merely by title.
- **López-Escobar 1966:** the publisher DOI page and EuDML record were tried; EuDML returned HTTP 500. No target-specific citation is given in the README.
- **Freer's external formalization:** the commit-specific GitHub citation was submitted to the sources service, which did not extract the repository text. The Apache-2.0 assertion, “no sorry” assertion, dependency-cone claims, exact external declaration names, and proposed porting/generalization comparison were not certified. No external code was downloaded and run.
- **Mathlib proposal history:** linked proposal status/design claims were not needed for the pinned object audit and are not certified here. The actual pinned sources, not claims about newer main branches, determine the acceptance test.
- **Exact source support for new interfaces:** the README supplies no exact locator for the Skolem-template laws, this particular infinitary term-model truth lemma, or the generalized source interface. Their proof routes and examples were examined, but this is not a locator certification.
- No headline theorem was proved during this review. The numerical/cardinal witnesses above rule out specific errors; they do not certify every admitted theorem.

All unresolved source requests are consolidated under their original keys in the scratch missing-reference record. Readable replacements are distinguished from unresolved published editions. No source text was copied into the repository or report.

## Source issues

- **Misprint** in marker at Exercise 2.34, 2013 notes, printed p. 22 (`marker line 718`): the source restricts M itself to be countable; it should allow arbitrary M while keeping the language countable; affects a stated result.
- **Error** in marker at Theorem 5.11, 2013 notes, printed p. 59 (`marker line 1959`): the source promises a model of every cardinality from arbitrarily large models; it should restrict the requested cardinality to infinite cardinals; affects a stated result.
- **Error** in marker at Exercise 5.12, 2013 notes, printed p. 59 (`marker line 1974`): the source asks for highly order-transitive orders of every cardinality; it should restrict to infinite cardinals, or separately allow zero and one; affects a stated result.
- **Error** in marker at Corollary 5.13, 2013 notes, printed p. 59 (`marker line 1977`): the source omits a size/existence restriction on the categorical cardinal; it should require an infinite cardinal, or separately require a model at that cardinal; affects a stated result.
