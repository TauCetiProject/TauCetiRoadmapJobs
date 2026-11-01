# Review of RootSystems (pull request #1196 at e39b394)
Folder: `TauCetiRoadmap/RepresentationTheory/RootSystems/`
**Verdict:** needs changes

AI review by Codex. The supplied gate fails. The main acceptance module elaborates, but a false lowering theorem, eight admitted data definitions, duplicated pinned constructions, and missing acceptance conditions prevent acceptance. No mathematical counterexample was found to the invariant-metric theorems with their actual elaborated hypotheses.

## R01 (P1) — The lowering theorem is false without finiteness

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:67`. The elaborated signature assumes `[P.IsCrystallographic]`, but has no `[Finite ι]`.

**Claim:** Every positive nonsimple root admits a height-decreasing simple reflection.

**Witness:** With pairing matrix H=[[2,−3],[−3,2]], take integral vectors v with H(v,v)=±2 as roots and coroot v∨=(H(v,v)/2)v. For β=(1,1), both simple-coroot pairings are −1; its reflected heights are 3,3, exceeding 2.

Here is the complete model, so that this is not merely an indefinite-matrix analogy. Work over ℚ with M=N=ℚ² and the perfect pairing H (determinant −5). The root indices are the integer vectors of norm ±2; roots are their inclusions and coroots are the signed vectors just specified. Reflection is x↦x−(H(v,v)/2)H(x,v)v. It is an integral involutive isometry, so it permutes that root set and satisfies both root/coroot reflection laws. All pairings are integers. Both embeddings are injective. Every such vector has coordinates of one sign: with nonzero opposite signs its norm is at least 10. The same is true of each coroot. Thus {e₁,e₂}, with their identical coroots, is a native `RootPairing.Base` (the two signed-expansion axioms are independent). β has norm −2 and positive height 2; s₁β=(2,1) and s₂β=(1,2), each of height 3. The root set is infinite: repeated s₁s₂ sends e₁ through (1,0),(8,3),(55,21),(377,144). This model even spans and is reduced; the missing finiteness is decisive.

**Repair:** Remove this duplicate local target and cite `TauCeti.exists_mem_support_height_reflectionPerm_lt`, `TauCeti/LinearAlgebra/RootSystem/Lowering.lean:92`, retaining its finite, characteristic-zero domain, crystallographic and reduced hypotheses. If a signature is retained temporarily, add `[Finite ι] [P.IsReduced]` to agree with the README and the supplier. The countermodel then fails finiteness, while A₂'s nonsimple root still lowers from height 2 to 1. Keep this infinite negative control in the README.

## R02 (P2) — Replace all eight admitted data definitions

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:113`, also lines 130, 201, 239, 354, 358, 507 and 548. Representative: `CoxeterMatrix b.support := sorry`.

**Claim:** The acceptance statements depend on a specified Coxeter matrix/system, longest element, standard Cartan matrices, integral datum/base, and actual subgroups.

**Witness:** The gate reports `sorry-data=8`. Six bodies are entirely admitted; `basedAut` and `latticePreserving` contain admitted subgroup closure proofs. Subsequent statements therefore do not test fully defined objects.

**Repair:** Consume the native Coxeter matrix, longest element and Dynkin family identified below. State the remaining Coxeter presentation as an existence theorem with generator compatibility, rather than admitted data. Give the two elementary subgroups real bodies and closure proofs, or formulate their headline results using native stabilizers. Delete dependent redundant declarations. Re-run the scanner on both Lean files: zero admitted data is the acceptance condition. For A₁ the native matrix is `[1]`, the longest element is −1, and the simply connected simple root/coroot coordinates are 2 and 1; these retain the intended objects without any admitted construction.

## R03 (P2) — Consume the pinned theory instead of planning it again

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:178`, especially the missing-work catalogue and Layers 1–6; `Suggested.lean:219` through the local Dynkin dictionary.

**Claim:** Positive-root/inversion theory, Coxeter combinatorics, chambers, longest elements, classification and a second local Dynkin enumeration remain construction targets.

**Witness:** `TauCeti/LinearAlgebra/RootSystem/FiniteType/Classification.lean:127` proves `TauCeti.existsUnique_dynkinType`; `TauCeti/GroupTheory/Coxeter/Matsumoto.lean:138` proves `TauCeti.matsumoto`. Native Dynkin data and the other duplicated objects are listed below with exact locations.

**Repair:** Delete the duplicate targets and local enumeration/dictionary; use `TauCeti.DynkinType`, `TauCeti.HasCartanType`, `TauCeti.IsFiniteType` and their native families directly. Put the supplied results in exact supplier contracts, retaining only genuinely additional conclusions. The Coxeter presentation's injectivity remains work: its pinned file proves only the homomorphism and surjectivity. Do not delete that remaining target. On A₁ this removes two enums each assigning rank 1 and root count 2; on B₂ it preserves the same oriented matrix `[[2,−2],[−1,2]]`. No mathematical generalization justifies the duplicate enum.

## R04 (P2) — Pin the simple generators in the Coxeter presentation

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:130`; `README.md:267`. The signature is only `CoxeterSystem (coxeterMatrixOfBase P b) P.weylGroup`.

**Claim:** This is the Coxeter system on the specified simple reflections.

**Witness:** In A₂, interchange its two Coxeter generators. The matrix and every word length are unchanged, but generator 0 now acts as s₂ instead of s₁. On α₁ these give α₁+α₂ and −α₁, respectively.

**Repair:** State existence of `cs` together with `∀ i : b.support, cs.simple i = RootPairing.weylGroup.ofIdx P i`. Use the native matrix and the native homomorphism's simple-generator equation. The swapped A₂ model then fails at i=0; the intended model passes. The length-equals-inversions statement alone does not exclude this wrong model.

## R05 (P2) — State the marked integral transport, not just an isomorphism

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:460`; promised equations at `README.md:503`.

**Claim:** `simplyConnectedRootDatum_native_equiv` identifies the specified root indices, simple nodes, lattice coordinates and rational base change.

**Witness:** Its conclusion is only `Nonempty (RootPairing.Equiv … …)`. In the native A₁ datum, reflection is an equivalence sending root 2 to −2 and coroot 1 to −1; it fails the prescribed identity index transport.

**Repair:** Prefer deleting this redundant local copy under R03. If a substantive coordinate comparison remains, existentially quantify its equivalence and require the stated index map, weight/coweight coordinate equations, simple-base transport and base-change square. Use the inverse coweight map for forward transport. In A₁, the identity satisfies those equations and reflection fails `e.indexEquiv 0 = 0`. Mere nonemptiness cannot certify the promised marking.

## R06 (P2) — Put the statable new headlines in the acceptance module

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:541`, `README.md:626`; `InvariantMetricTargets.lean:22`; `Suggested.lean:9`.

**Claim:** The roadmap includes unique positive scaling of irreducible invariant metrics, the squared-length restriction, and existence/uniqueness of the greatest positive root.

**Witness:** Both metric theorems elaborate in the companion file but are absent from `Suggested.lean`, which does not import that file. The greatest-root theorem is also absent. Native roots, bases, integral simple-root coordinates and order already exist.

**Repair:** State the two metric headlines directly in `Suggested.lean` and include the greatest-root theorem using the native base coordinates, with finite/reduced/crystallographic/spanning/irreducible hypotheses. Name any genuinely unstatable remaining headline and its missing carrier in the module docstring. Retain A₁³ with length set {1,2,5} as the irreducibility negative control; A₂'s positive coordinates (1,0),(0,1),(1,1) test the greatest-root conclusion. Neither requires an invented carrier or an algorithm.

## R07 (P3) — Remove the algorithm deliverables from the mathematical scope

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:614`: “Give a terminating finite-set algorithm”. Also lines 619–623 and 647–661.

**Claim:** The roadmap requires iteration, duplicate elimination, root reconstruction and enumeration-order invariance as computational deliverables.

**Witness:** These are explicit procedure/implementation targets, beyond the reflection identities and small worked examples allowed by the task's mathematics-only contract.

**Repair:** Delete the algorithm requirements. Retain the integral reflection involution, coefficient/evaluation compatibility, the equality of the simple-reflection orbit union with the root set, the highest-root theorems, and small computed Checks. The mathematical statement gives exactly four positive B₂ roots and sixteen positive C₄ roots without specifying an enumeration procedure; those counts were independently recomputed below.

## R08 (P3) — Delete the padding from Suggested.lean

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/Suggested.lean:62`, 74, 79, 88, 183, 190, 196, 394, 398, 402, 529 and 543.

**Claim:** These declarations belong in the acceptance test.

**Witness:** Scratch probes close the finiteness, faithful-action, exchange-count and chamber statements with one pinned lemma; the three dictionary equalities are constructor computations. `semidirectEquiv_apply` is already `rfl`; factorization is the inverse-equivalence law.

**Repair:** Delete them from `Suggested.lean`. Keep the mathematics in the README as supplier facts/API or Checks. The exact successful tactics and native locations are recorded below. Proving them in place is not the repair. Remove the associated generic wrapper API where it is unnecessary to state a remaining headline.

## R09 (P3) — Apply the Lean form rules to the companion and docstrings

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/InvariantMetricTargets.lean:1`, 8 and 13; `Suggested.lean:323`, and declarations at 513, 529, 539, 543, 562 and 565.

**Claim:** Both Lean files satisfy the specified acceptance-file form.

**Witness:** The companion has five `Mathlib.*` imports, no `import Mathlib`, and `set_option autoImplicit false`. The main docstring contains a pull-request URL; several declarations lack docstrings. The gate did not report these companion violations.

**Repair:** Consolidate the retained headlines as in R06, use `import Mathlib` plus only used individual Tau Ceti imports, remove every `set_option` and process/PR reference, and document each retained declaration. List unstatable headlines in the required module docstring. The companion already elaborates; the issue is form, not an alleged build failure.

## R10 (P3) — Supply claim-level locators, Checks and dependencies

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:43`, 220, 410 and 688.

**Claim:** The prose gives sufficiently precise definitions, source support and build contracts.

**Witness:** `IsFiniteType` has no three discriminating Checks; Layers 1–6 have no per-target `*Needs:*` lines. “Scope boundary” has no theorem/page locator. Most references give only a book or chapter, and no `sources.toml` exists.

**Repair:** Reshape the retained material into Summary, Scope and ownership, Conventions, Exact supplier contracts, and numbered layers with Examples and Dependencies. Add exact locators at claims and at least three discriminating Checks per retained definition. For finite type, `[2]` passes, the empty matrix passes, and `[[2,−2],[−2,2]]` fails because its quadratic value at (1,1) is 0. Record sources through the source service in the authoring repair; this review changes no manifest. Replace “currently unstated” and the “deferred” topological-chamber promise with timeless, definite ownership.

## R11 (P3) — Correct the ownership locators that do not resolve on main

**Location:** `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:404` and 664.

**Claim:** LieGroups Layer 8N owns the compact-normalizer application, and ZigzagPreprojective Layer 0 owns the general stuck-position/affine-graph classification.

**Witness:** `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:428` on main starts Layer 8 but has no 8N. `TauCetiRoadmap/ZigzagPreprojective/README.md:205` supplies affine diagrams, quivers and gradings, not a stuck-position theorem.

**Repair:** Cite actual main sections and restrict the ownership claims to their contents, or remove these unsupported deferrals. LieGroups' open revision has a normalizer extension, but revisions of an existing roadmap are not suppliers under this brief. These are deferral/consumer citations, not dependencies used in the proofs, so I do not classify them as an upward edge or an unowned proof premise. The affine A₁ matrix `[[2,−2],[−2,2]]` is genuinely a Layer 0 diagram example; that does not supply a game-classification theorem.

## Verified sound

### Gate, elaboration and signature evidence

The reviewed head is exactly `e39b394c8e1d0d20119966eaf52baab64743fbb3`. The worktree stayed clean. The requested outside-folder diff is empty; the only PR changes are the three files reviewed here. The family index was read and its RootSystems entry resolves.

The supplied gate reports `FAIL`, solely `sorry-data=8`; all its other counters, including build, dependency check, stray files and outside-folder changes, are zero. All eight occurrences are covered by R02. The additional manual companion-form findings are R09.

After building the seven individually used Tau Ceti imports, I ran `lake env lean` on the main `Suggested.lean`: exit 0, only 43 `sorry` warnings. A scratch copy with `#check @name` for all **65 actual declarations** also elaborated successfully. A companion scratch copy checked both metric declarations and elaborated with its two intended admissions. The checks preserve `[P.IsRootSystem] [P.IsIrreducible]` in both metric signatures and all four finite/free integral-module assumptions in `full_datum_complement`. No standing typeclass silently disappeared in those checks; the lowering theorem instead explicitly lacks the README’s finiteness hypothesis (R01). No source file was changed. An initial scratch name extractor included a word from a comment; that extractor error was removed before the successful check.

The mechanical supplier-order output was:

```text
depcheck: 204 roadmaps, 1485 edges, 0 problem(s)
```

There are no `*Needs:*` lines to audit in this README. I therefore read its prose dependencies and cross-roadmap links individually. No UPWARD or CYCLE line occurred. No declared supplier gap exists. The lattice boundary is an ownership statement, not permission to consume a later supplier.

### Adversarial values

The following are finite computations and countermodel tests, not proofs of the general theorems. “Pass” means that the stated hypotheses survive these tests; “interface” means the numerical mathematics is correct but its Lean acceptance condition is deficient. The 92 rows identify declarations and separate prose targets. All matrices use root rows/coroot columns. Native and local values coincide only where the local body is real; values for admitted objects describe their intended model, not a computation through `sorry`.

| Statement | Instances and computed values on both sides | Result / change |
|---|---|---|
| Scope boundary | A₁: root lattice 2ℤ, weight lattice ℤ, fundamental weight 1, ρ=1; LieHighestWeight's integral-weight convention also gives ℤ | Ownership agrees; add precise section locator, R10 |
| `posRoots` | A₁: {+α}; −α has height −1 and is excluded; empty root set gives ∅ | Pass; native duplicate |
| `negRoots` | A₁: {−α}; complement of {+α} in {±α} is {−α}; empty gives ∅ | Pass; native duplicate |
| `posRoots_finite` | A₁ cardinality 1; A₂ cardinality 3; empty cardinality 0 | Pass; padding |
| Simple-root lowering | A₂: height 2→1. Infinite H=[[2,−3],[−3,2]] model: β=(1,1) has height 2 and both reflected heights are 3; neither 3<2 holds | False signature; R01 |
| `weylGroupToPerm_injective` | A₁: 1 fixes both roots; s swaps them. A₂: six different permutations of six roots | Pass; one pinned lemma |
| `finite_weylGroup` | Empty spanning system: order 1; A₁: 2; A₂: 6 | Pass; one pinned lemma |
| `inversions` | A₂: inv(1)=∅, inv(s₁)={α₁}, inv(s₁s₂)={α₂,α₁+α₂}, inv(w₀)=Φ⁺ | Pass; tests right-action convention |
| `inversions_ncard_mul_ofIdx` | A₂ path 1,s₁,s₁s₂,s₁s₂s₁ has counts 0,1,2,3; s₁s₁ has count 0, so 0+1=1 on decreasing branch | Pass; native duplicate/padding |
| `coxeterMatrixOfBase` | A₁ diagonal 1; off-diagonal products 0,1,2,3 give orders 2,3,4,6 in A₁²,A₂,B₂,G₂ | Intended values pass; R02 |
| `weylGroup_eq_closure_simple` | A₁: closure {s}={1,s}; A₂: generators (12),(23) give all 6 permutations | Pass; native duplicate |
| `weylCoxeterSystem` | A₂ relabelled generators still give matrix [[1,3],[3,1]], but generator 0 maps α₁ to α₁+α₂ instead of −α₁ | Interface fails; R04 |
| `length_weylCoxeterSystem_eq` | A₂ elements 1,s₁,s₁s₂,w₀ give lengths 0,1,2,3 and inversion counts 0,1,2,3; diagram swap preserves both lists | Intended equality passes but does not repair R04 |
| `strongExchange` | In S₃, ω=(s₁,s₂,s₁), t=s₁: length 3→2 and deletion at 0 gives s₂s₁; empty word has no shortening reflection | Pass; supplied theorem |
| `matsumoto` | A₂: 121 and 212 evaluate to equal ABA=BAB under the braid hypothesis; empty words give 1=1; infinite edge m=0 requires only empty product 1=1 | Pass; supplied theorem |
| Dominant chamber | A₁ with α=2, α∨=1: chamber [0,∞), 0 and 1 in it, −1 out | Pass; native duplicate |
| Dominant-orbit existence | A₁ orbit of −1 is {−1,1}, representative 1; orbit of 0 is {0} | Pass; padding |
| Interior uniqueness | A₁: s·1=−1 is not dominant; 1·1=1. At 0, s·0=0 but strict interior hypothesis fails | Pass; padding |
| Interior stabilizer | A₁ at 1: stabilizer {1}; at 0: {1,s}; hypothesis correctly separates them | Pass; padding |
| `longestElement` | Empty W: w₀=1; A₁: w₀=s; A₂: w₀=(13) | Intended model passes; native object available |
| `longestElement_spec` | A₂ w₀ sends all 3 positive roots negative, length 3=card Φ⁺, square 1; empty gives length 0=0 and square 1 | Pass in intended model |
| `DynkinType` | A₁ versus B₁ are different constructors but same rank-one matrix; validity admits only A₁ | Pass as convention; duplicate enum |
| `DynkinType.rank` | A₀=0,A₁=1,B₂=2,E₆=6,E₇=7,E₈=8,F₄=4,G₂=2 | Pass; use native values |
| `DynkinType.Valid` | A₀ false; A₁ true; B₁ false; B₂ true; C₂ false; C₃ true; D₃ false; D₄ true | Pass; low-rank coincidences excluded |
| Standard Cartan matrix | B₂ [[2,−2],[−1,2]], C₂ its transpose; swapping nodes identifies these invalid/valid duplicate labels. B₃/C₃ remain distinct oriented types | Intended model passes; admitted local data |
| `IsFiniteType` | [2] has d=1 and q(1)=2>0; empty matrix passes vacuously; affine A₁ has q(1,1)=0 and fails | Pass; missing Checks, native duplicate |
| `HasCartanType` | A₁'s [2] matches A₁ via the unique node map; cannot match A₂ because 1≠2 nodes; B₂/C₂ match after swap but C₂ is invalid | Pass; duplicate predicate |
| `isFiniteType_cartanMatrix` | B₂ d=(1,2) gives [[2,−2],[−2,4]], leading minors 2,4>0; empty has no nonzero vector | Pass; native theorem |
| `existsUnique_dynkinType` | Rank one's admissible set {A₁}; B₂/C₂ coincidence leaves {B₂}; zero spanning system fails irreducibility because its space is trivial | Pass; native theorem with nonemptiness accounted for |
| `nonempty_equiv_of_hasCartanType` | Rank-one rational roots ±1 and ±2: weight map x↦2x, contravariant coweight map y↦2y; pairing 1·2=2·1=2 | Pass; native rigidity theorem |
| `DynkinType.numRoots` | A₀=0,A₁=2,A₂=6,B₂=8,C₃=18,D₀=0,D₁=0,D₄=24; exceptional 72,126,240,48,12 | Pass, including truncated subtraction at D₀ |
| `exists_rootPairing_of_dynkinType` | A₁: 2 root labels in dimension 1, roots ±2 and coroots ±1 give pairing 2; G₂: 12 labels in dimension 2 | Pass; native realization |
| `IsLongSimpleRoot` | B₃=(true,true,false), C₃=(false,false,true), F₄=(true,true,false,false), G₂=(false,true); invalid B₁ returns false | Pass at valid ranks; duplicate table |
| Simply connected datum | A₁ X=Y=ℤ, α=2, α∨=1: pairing 2, coroot span ℤ but root span 2ℤ | Intended simply connected form correct |
| Simply connected base | A₁ base uses root label 0; negative root label 1 excluded; support cardinality 1≠numRoots 2 | Intended indexing correct; R02/R05 |
| `hasCartanType_simplyConnectedRootDatum` | A₁ simple pairing 2=[2]₀₀; B₂ simple-root rows pair with e₁,e₂ to reproduce [[2,−2],[−1,2]] | Pass in intended model |
| `span_coroot_simplyConnectedRootDatum` | A₁ span{±1}=ℤ; B₂ coroot basis e₁,e₂ spans ℤ². Swapped adjoint A₁ has coroot span 2ℤ≠ℤ | Discriminates simply connected versus adjoint |
| `toNativeDynkinType` | Each of nine constructor families maps to the same constructor; A₁→A₁, B₂→B₂, G₂→G₂ | Pure duplicate dictionary |
| `toNative_rank` | All nine constructor cases: n=n,6=6,7=7,8=8,4=4,2=2 | Constructor computation; padding |
| `toNative_numRoots` | All nine cases: n(n+1)=n(n+1),2n²=2n²,2n(n−1)=2n(n−1), and equal exceptional constants | Constructor computation; padding |
| `toNative_valid` | All nine cases give the identical bound or True on both sides; in particular C₂ false↔false | Constructor computation; padding |
| `toNativeNode` | A₁: 0↦0; G₂: 0↦0,1↦1; A₀ has no Fin 0 input | Pass; no out-of-range value admitted |
| `toNativeRootIndex` | A₁: 0↦0,1↦1; root indices number 2 while node indices number 1 | Pass as intended cast |
| `toNative_cartanMatrix` | Intended G₂ entries (0,1)=−1, (1,0)=−3 on both sides; transposing gives −3,−1 and would fail | Correct intended orientation; local matrix admitted |
| `hasCartanType_iff_native` | Intended A₁ type true↔true, type A₂ false↔false; both directions need same oriented matrix | Pass in intended model; redundant |
| `toNative_isLongSimpleRoot` | G₂ node 0 false↔false, node 1 true↔true; B₃/C₃ terminal flags false/true on both sides | Pass; duplicate table |
| `nativeRationalRootSystem` | A₁ base change sends integer root 2 to rational 2 and coroot 1 to 1 | Actual native wrapper; redundant |
| Native crystallographic instance | A₁ pairings ±2 remain integers; B₂ off-diagonal pairings −2,−1 remain integral | Existing instance reused correctly |
| `nativeRationalBase` | A₁ support {0} before/after rationalization; support cardinality 1 | Existing base reused correctly |
| `nativeRationalRootSystem_has_local_type` | Intended A₁ matrix [2]=[2]; B₂'s unequal off-diagonal entries stay −2,−1 | Correct intended comparison; duplicate local type |
| `simplyConnectedRootDatum_native_equiv` | A₁ identity and reflection both satisfy unmarked equivalence; root-index images at 0 are respectively 0 and 1 | Interface fails R05 |
| `nativeSimplyConnectedDatum_has_local_type` | Intended B₂ simple rows (2,−2),(−1,2); pairing against coroot basis reproduces C rather than Cᵀ | Correct intended convention |
| `weylGroup_equiv_perm_of_typeA` | A₁: card(W)=2=2!; A₂: card(W)=6=3!; A₇: card(W)=40320=8! | Pass; positive counts 1,3,28 |
| `weylGroup_equiv_dihedral_of_isG2` | G₂: card(Φ)=12, card(Φ⁺)=6; two simple reflections have product order 6, card(W)=12=card(DihedralGroup 6) | Pass |
| `basedAut` | A₁ reflection sends {+α} to {−α}, hence excluded; A₂ diagram swap preserves the two simple roots as a set | Correct carrier; closure proofs admitted |
| `weyl_normal` | A₂ diagram swap δ gives δs₁δ⁻¹=s₂; hence conjugated reflection remains in W | Pass |
| `basedConjugation` | A₂ δ(s₁)=s₂, δ(s₂)=s₁; rank-zero semisimple case 1↦identity | Correct action |
| `semidirectEquiv` | A₂: orders 6·2=12; (s₁,δ)(s₁,1)=(s₁s₂,δ), both map to s₁s₂δ | Pass; actual native generic equivalence |
| `semidirectEquiv_apply` | (s₁,δ) maps to s₁δ on both sides by definition | Padding, already rfl |
| `weylFactor` | A₂ g=s₁δ gives W factor s₁; g=δ gives 1 | Correct inverse projection |
| `basedFactor` | A₂ g=s₁δ gives δ; g=s₁ gives 1 | Correct inverse projection |
| `factorization` | A₂ s₁δ=s₁·δ; identity=1·1 | Inverse-equivalence law; padding |
| `latticePreserving` | A₁ ±1 maps ℤ onto ℤ. D₄ triality cycles the three order-two classes in P/Q; stabilizer of one chosen class has order 2, not 6 | Correct carrier; closure proofs admitted |
| `weyl_based_complement` | A₁: W=C₂, based=1; A₂: W=S₃, based=C₂, intersection 1, product order 12; rank zero: 1·1=1 | Pass |
| `image_openDominantChamber` | A₁ g=s sends (0,∞) to (−∞,0), W factor s gives the same chamber; A₂ diagram swap fixes the open dominant chamber | Pass |
| `full_datum_complement` | Root-free rank 1: W=1 and based=Aut={±1}, so 1⋊C₂=C₂; root-free rank 2: 1⋊GL₂(ℤ)=GL₂(ℤ), infinite | Pass; correctly retains central automorphisms |
| `invariantForm_existsUnique_positiveScale` | A₁ B(x,y)=xy, C(x,y)=7xy yields c=7 uniquely; A₁² forms diag(1,1),diag(1,2) would force c=1 and c=2, but irreducibility excludes it | Pass; hypotheses retained |
| `squaredRootLengths_twoValued` | A₁ choose s=1,r=1; B₂ lengths {1,2}, s=1,r=2; G₂ {1,3}, s=1,r=3; A₁³ {1,2,5} is excluded by irreducibility | Pass; hypotheses retained |
| Positive/negative partition and vector-index comparison | A₂: 3 positive +3 negative=6 root labels; injective root map gives 3 vectors for 3 positive indices | Pass |
| Relational Matsumoto/deletion/Bruhat | S₃: 121↔212 is one braid move; word 11 deletes both letters to empty, both products 1; subword 1 lies below 121 | Pass; native Coxeter ownership |
| Poincaré polynomial | A₁: 1+q; A₂: 1+2q+2q²+q³; at q=1 gives 2 and 6, at q=0 gives 1 and 1 | Pass; no undefined qℓ operation intended |
| Chamber transitivity and closed walls | A₂ has six chambers and six W elements; A₁ wall orbit {0} has one dominant point despite stabilizer order 2 | Pass; native geometry |
| Irreducible oriented diagram automorphisms | A₁: order 1; A₂:2; D₄:6; D₅:2; E₆:2; B₂:1 because −2≠−1 | Pass; source SGA 3 matches |
| Coweight direction | D₄ triality 1→3→4→1 on roots: contravariant map sends coroot 3→1; inverse sends 1→3 | Pass; inverse is essential |
| Component decomposition | A₁³ graph has three isolated vertices; spans ℝe₁,ℝe₂,ℝe₃ sum to ℝ³, pairwise intersections 0; each ±eᵢ belongs to exactly one | Pass |
| Component orthogonality | A₁³: B(eᵢ,eⱼ)=0 for i≠j; reflection in i changes mixed entry a to −a, so invariance gives a=0 | Pass |
| Positive metrics ↔ component scales | A₁³ diag(1,2,5) corresponds to scales (1,2,5) relative to identity; reconstruction returns same diagonal; zero span has one form and one empty family | Pass |
| Cartan/metric normalization | B₂ α₁=e₁−e₂, α₂=e₂: 2B(α₁,α₂)=−2=C₁₂B(α₂,α₂)=−2·1; reversed equation −2=−1·2 | Pass; excludes transpose |
| Squared versus ordinary length | G₂ squared ratio 3, ordinary ratio √3; B₂ squared ratio 2, ordinary ratio √2; A₁³ length squares {1,2,5} | Pass |
| Coefficient reflection | B₂ C=[[2,−2],[−1,2]], c=(1,0): s₂c=(1,2). With 2I−Cᵀ, new coordinate is 2; wrong 2I−C gives 1 | Pass; discriminating normalization |
| Reflection involution/intertwining | B₂ s₂: (1,0)→(1,2)→(1,0); vectors e₁−e₂→e₁+e₂→e₁−e₂ | Pass |
| Simple-reflection root orbit union | A₂ closure has 6 roots, 3 nonnegative; B₂ closure has 8, 4 nonnegative; C₄ has 32,16; zero index set has 0 | Mathematical equality passes; algorithm scope removed by R07 |
| Greatest positive root and weighted maximum | A₂ θ=(1,1) dominates (1,0),(0,1); weights (2,1) give 3>2,1. B₂ θ=(1,2) dominates (1,1) | Pass; missing headline R06 |
| Simply-laced increasing reflections | A₂ (1,0)→(1,1), height 1→2, increment (0,1); the highest root has no increasing simple reflection | Pass |
| B₂ reflection versus unit-increment game | (1,1)=e₁: s₁ fixes it, s₂ sends it to (1,0), so no increasing reflection. Adding α₂ gives (1,2)=e₁+e₂, a root | Pass; terminal sets differ |
| Exceptional node transport | Computational node r attached to 3 maps to Bourbaki node 2 attached to 4; chain (1,2,…,r−1) maps to (1,3,…,r) | Pass for r=6,7,8 |
| E₆ count/highest | 72 roots; 36 positive; greatest coefficient vector (1,2,3,2,1,2), height 11 | Equals README values |
| E₇ count/highest | 126 roots; 63 positive; greatest (2,3,4,3,2,1,2), height 17 | Equals README values |
| E₈ count/highest | 240 roots; 120 positive; greatest (2,4,6,5,4,3,2,3), height 29 | Equals README values |
| A₇ count/highest | 56 roots; 28 positive; greatest (1,1,1,1,1,1,1), height 7 | Equals README values |
| Cₙ count/highest | C₄:16 positives, θ=(2,2,2,1); C₉:81, θ=(2,2,2,2,2,2,2,2,1); C₁₃:169, θ=(2×12,1) | Equals n² and stated coefficients |
| Root-free versus semisimple rank zero | Empty roots in zero space: Aut=1. Empty roots in ℤ²: shear [[1,1],[0,1]] has powers [[1,n],[0,1]], so Aut infinite | Pass; scope distinction meaningful |

The sixteen positive C₄ vectors were independently obtained as
`0001, 0010, 0011, 0021, 0100, 0110, 0111, 0121, 0221, 1000, 1100, 1110, 1111, 1121, 1221, 2221`.
Each four-digit string is a tuple of simple-root coefficients. The README asks for a complete printed list but does not actually give one; this is a reproducible computed witness, not certification of an absent printout.

Zero-ring and positive-characteristic counterexamples do not satisfy the characteristic-zero-domain/real hypotheses of the geometric and classification statements. The abstract Coxeter statements allow infinite groups and monoid targets; the m=0 braid convention was tested. The full integral datum statement has no false integral-spanning assumption. No denominator or truncated natural subtraction produced a counterexample in the retained scopes.

### Pinned declarations and ownership audit

Pins read from `lake-manifest.json`: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Paths below are relative to the respective library repository. These are declarations whose definitions/signatures were opened, not recollections from a newer library.

| Object checked | Pinned declaration and location | Audit consequence |
|---|---|---|
| Native root carrier | `RootPairing`, `Mathlib/LinearAlgebra/RootSystem/Defs.lean:81`; `IsRootSystem`, line 120 | Perfect pairing, embeddings and reflection laws; **no finiteness or positivity axiom**. Spanning is a separate mixin. This permits R01's countermodel. |
| Native base | `RootPairing.Base`, `Mathlib/LinearAlgebra/RootSystem/Base.lean:68`; `toWeightBasisInt`, line 405; `height`, line 457; `IsPos`, line 536 | The root and coroot signed-expansion conditions are separate; no sign-coherence axiom excludes the indefinite countermodel. Coordinates make the greatest-root statement statable. |
| Invariant forms | `RootPairing.InvariantForm`, `Mathlib/LinearAlgebra/RootSystem/RootPositive.lean:50`; `two_mul_apply_root_root`, line 64 | Symmetric reflection-invariant form, nonzero on each root; positive definiteness must be added. |
| Irreducibility | `RootPairing.IsIrreducible`, `Mathlib/LinearAlgebra/RootSystem/Irreducible.lean:147` | Requires nontrivial modules, plus no proper nonzero reflection-invariant submodule; empty spanning zero space is excluded. |
| Arbitrary-vector normalization | `RootPairing.InvariantForm.two_mul_apply_root`, `TauCeti/LinearAlgebra/RootSystem/InvariantForm/Basic.lean:40` | Extends the root-pair normalization to every weight; this input is supplied. |
| Cartan rigidity | `RootPairing.Base.equivOfCartanMatrixEq`, `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean:355` | Finite crystallographic spanning reduced systems, matching Cartan matrices and specified base bijection. |
| Positive roots | `TauCeti.posRoots`, `negRoots`, `posRoots_finite`, `TauCeti/LinearAlgebra/RootSystem/Positive.lean:114`, 117, 167 | Direct duplicates. |
| Lowering | `TauCeti.exists_mem_support_pos_pairingIn`, `TauCeti/LinearAlgebra/RootSystem/Lowering.lean:77`; `exists_mem_support_height_reflectionPerm_lt`, line 92 | Finite indices are essential; the second additionally preserves positivity and assumes reducedness. |
| Faithful action and finiteness | `RootPairing.weylGroupToPerm_injective`, `TauCeti/LinearAlgebra/RootSystem/Weyl/Group.lean:153`; `finite_weylGroup`, line 337 | The proposed local theorems are immediate supplied results. |
| Inversions | `TauCeti.inversions`, `TauCeti/LinearAlgebra/RootSystem/Inversions/Basic.lean:50`; `ncard_inversions_mul_ofIdx`, `Inversions/Exchange.lean:138` | Same right-product convention; no new inversion-count theorem here. |
| Simple generation | `TauCeti.weylGroup_eq_closure_simple`, `TauCeti/LinearAlgebra/RootSystem/SimpleReflections.lean:124` | Already supplied. |
| Coxeter matrix | `TauCeti.coxeterMatrixOfBase`, `TauCeti/LinearAlgebra/RootSystem/Coxeter/Matrix.lean:278` | Real native data, not an admission. |
| Presented-group map | `TauCeti.weylCoxeterHom`, `TauCeti/LinearAlgebra/RootSystem/Coxeter/Presentation.lean:57`; generator equation, line 66; surjectivity, line 82 | The file ends after surjectivity. Injectivity/full generator-compatible Coxeter structure remains a legitimate target. |
| Abstract exchange | `CoxeterSystem.strongExchange`, `TauCeti/GroupTheory/Coxeter/StrongExchange.lean:413` | In fact does not need the input word reduced; delete duplicate weaker target. |
| Abstract Matsumoto | `TauCeti.braidEquivalent_of_isReduced_wordProd_eq`, `TauCeti/GroupTheory/Coxeter/Matsumoto.lean:79`; `TauCeti.matsumoto`, line 138 | Relational and monoid-valued forms supplied. |
| Closed chamber | `RootPairing.dominantChamber`, `TauCeti/LinearAlgebra/RootSystem/Chamber.lean:137`; `TauCeti.exists_mem_dominantChamber`, line 287 | Native cone and orbit existence supplied. |
| Interior and walls | `TauCeti.eq_one_of_smul_mem_dominantChamber`, `TauCeti/LinearAlgebra/RootSystem/Inversions/DominantChamber.lean:87`; interior stabilizer, line 92; `smul_eq_self_of_smul_mem_dominantChamber`, `FundamentalDomain.lean:198` | Interior uniqueness and closed-orbit uniqueness supplied; neither gives a trivial wall stabilizer. |
| Open chambers | `TauCeti.weylGroupEquivOpenWeylChambers`, `TauCeti/LinearAlgebra/RootSystem/Weyl/Chamber.lean:303`; `existsUnique_mem_openWeylChamber`, line 369 | Existing chamber transitivity/freeness, with the nonempty chamber conditions read in context. |
| Longest element | `TauCeti.longestElement`, `TauCeti/LinearAlgebra/RootSystem/LongestElement.lean:194`; inversions, line 200; square, line 235 | Native object and root-action properties supplied. Coxeter-length bridge remains distinct. |
| Dynkin type and oriented matrix | `TauCeti.DynkinType.Valid`, `TauCeti/LinearAlgebra/RootSystem/DynkinType.lean:156`; `cartanMatrix`, line 222; `TauCeti.HasCartanType`, line 416 | Local enum and matching predicate duplicate these. Native G₂ intentionally transposes Mathlib's G₂ table. |
| Finite type | `TauCeti.IsFiniteType`, `TauCeti/LinearAlgebra/RootSystem/FiniteType/Basic.lean:121`; `isFiniteType_cartanMatrix`, line 748 | Identical positive rational symmetrizer definition and root-system theorem. |
| Classification | `TauCeti.IsFiniteType.existsUnique_dynkinType`, `TauCeti/LinearAlgebra/RootSystem/FiniteType/Classification.lean:81`; `TauCeti.existsUnique_dynkinType`, line 127 | Matrix and root-system classification supplied. The latter explicitly carries nonempty root indices; spanning plus irreducibility in the roadmap gives nonemptiness. |
| Isomorphism from type | `TauCeti.nonempty_equiv_of_hasCartanType`, `TauCeti/LinearAlgebra/RootSystem/Isomorphism.lean:137` | Supplied unmarked rigidity, distinguished from R05's promised marked transport. |
| Root numbers and lengths | `TauCeti/LinearAlgebra/RootSystem/NumberOfRoots.lean:47` (`numRoots`); `RootLength.lean:123` (`rootLength`), 241 (`IsLongSimpleRoot`) | Same tables and valid-rank conventions. |
| Integral family | `TauCeti.DynkinType.simplyConnectedRootDatum`, `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/Assembly.lean:79`; base 94; `simpleIndex` 205; support equivalence 408; Cartan type 498; coroot span 513 | Native family and numbering already provided. |
| Rational family | `TauCeti.DynkinType.rationalRootSystem`, `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/Rational.lean:80`; base 87; Cartan type 191 | Correct separate root-count and rank carriers. |
| Diagram lifts | `TauCeti.DynkinType.rationalDiagramAut`, `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/DiagramAutomorphism.lean:107`; `diagramAut` 267; `eq_diagramAut` 298; `diagramAutHom` 363 | Supplies the constructed direction; identifying every based automorphism with one remains additional work. |
| Generic semidirect equivalence | `SemidirectProduct.mulEquivSubgroup`, `Mathlib/GroupTheory/SemidirectProduct.lean:236` | Existing generic equivalence is correctly used; acceptance padding should be deleted. |

I searched by objects in the pinned libraries, main roadmaps, board packages and the indexed open roadmaps, using `roadmaps grep`, `roadmaps show` and direct file reads. In particular:

- Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:65`, 120, 173, Layers 1–2 and 6, supports the sampled boundary: integral-weight/fundamental-weight/ρ and representation-theoretic lattice API belong there. Its root-system engine is explicitly imported from RootSystems.
- Main `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md` is a consumer of the finite classical root systems; it is not a supplier needed to construct them.
- Main `TauCetiRoadmap/ReductiveGroups/README.md:1230` resolves §9A.1a-L, the kernel-fixing ADE cover-lift group. It is a later application, not an input to the finite root complement theorem.
- Main `TauCetiRoadmap/CFSGStatement/README.md:215` and 216 resolve L0 and L1 and their numbered datum needs. The supplied CFSGStatement open revision uses a different layer organization; the citation was resolved on main because this is an existing roadmap.
- `TauCetiRoadmap/RootSystemsPartII/README.md` at the supplied open head, Scope and ownership and §§1–4, builds integral dominance and orbit-sum folding. It explicitly takes RootSystems' finite theory as input and retains the same root-row convention and inverse coweight convention. It is not a substitute owner for the unresolved Coxeter presentation or arbitrary invariant metrics.
- `TauCetiRoadmap/KacMoody/README.md` at its supplied open head, lines 61, 145–148 and §2.1, assigns abstract Coxeter combinatorics to RootSystems and consumes the pinned exchange/Matsumoto results. Its generalized Kac–Moody realization is a separate object; no reverse dependency is needed here.
- Main ZigzagPreprojective Layer 0 and the LieGroups main/open distinction were resolved as in R11. The resolver's lone missing-name lead, `TauCetiRoadmap.RepresentationTheory.RootSystems.DynkinType`, is a false positive for absence: the declaration is at `Suggested.lean:219`. Its defect is duplication, R03, not nonexistence.

No new independent roadmap owner for the remaining finite-root complement or metric uniqueness targets was established by these searches. Existing main RootSystems and other revisions of that same folder were treated as the base roadmap, not as competing new owners. No newly introduced fully qualified declaration collision with a different supplied roadmap was found. Missing supplied checkout paths were not taken as evidence of a missing citation; the roadmap service or main copy was used where applicable. Two main-roadmap format comparisons were read: ReflectionInvariantTheory and Completed/IntegralLattices.

### Headline coverage and one-tactic probes

The README's deep endpoints are: generator-compatible Coxeter presentation; Coxeter length equals root inversions; strong exchange and Matsumoto; chamber fundamental-domain/simple-transitivity results; longest-element characterization; finite-type Cartan classification and realization/rigidity; numbered integral datum and coordinate comparison; Weyl/based semidirect decomposition for real and full integral data; component decomposition and parametrization of positive invariant metrics; irreducible squared-length restriction; greatest-root/increasing-reflection results; and the type-A/G₂ Weyl-group identifications. The table covers each endpoint. Many are already supplied and should cease being targets (R03); the unstatable-headline inventory is absent, while the statable metric and greatest-root targets are missing from the tested module (R06).

All **35 sorried theorems** of `Suggested.lean` and both sorried metric theorems received scratch probes with `rfl`, `simp` and `infer_instance`, plus selected one-lemma tactics where a pinned match was found. Data definitions were not “proved” in this probe. The three dictionary identities were additionally checked by the nine constructor reductions. No claim is made that failure of these probes establishes depth.

Successful short proofs, to justify deletion rather than implementation:

| Local declaration | Successful tactic or definitional check |
|---|---|
| `posRoots_finite` | `exact Set.toFinite _` |
| `weylGroupToPerm_injective` | `exact RootPairing.weylGroupToPerm_injective P` |
| `finite_weylGroup` | `exact RootPairing.finite_weylGroup P` |
| `inversions_ncard_mul_ofIdx` | `exact TauCeti.ncard_inversions_mul_ofIdx P w b hi` |
| `exists_mem_dominantChamber` | `exact TauCeti.exists_mem_dominantChamber P b x` |
| `eq_of_mem_dominantChamber_interior` | `simpa only [TauCeti.eq_one_of_smul_mem_dominantChamber P b w hx hw, one_smul]` |
| `eq_one_of_smul_eq_self_of_interior` | `exact TauCeti.eq_one_of_smul_eq_self_of_mem_openDominantChamber P b w hx hw` |
| `toNative_rank`, `toNative_numRoots`, `toNative_valid` | `cases t <;> rfl`; these are nine literal constructor computations, not headlines |
| `semidirectEquiv_apply` | Its existing `rfl` proof |
| `factorization` | `exact ((semidirectEquiv P b hc).apply_symm_apply g).symm` |

The interior equality follows from the pinned theorem `TauCeti.eq_one_of_smul_mem_dominantChamber` by substituting w=1; it is another supplied special case. The two metric probes did not close, and their irreducibility hypotheses reject the reducible counterexamples in the table.

### Sources actually read

The seeded target **“Scope boundary”** is an ownership paragraph, not a cited mathematical theorem. It has no theorem number, page or source passage to certify. Its named owner's content was checked on main as described above; the absent locator is recorded under R10 and below. No README locator is explicitly labelled “unverified”.

Sources were fetched through the source service, with no repository manifest edit. Three texts were legally accessible and read:

- **sga3-iii:** the [editors' original 2011 Exposé XXI](https://webusers.imj-prg.fr/~patrick.polo/SGA3/origExpo21.pdf). Proposition 6.1.3, printed p.78, sga3-iii line 966, transports bases, positive systems and chambers, with the transpose/inverse convention. Lemma 6.7.1 and Proposition 6.7.2, p.86, lines 1280 and 1284, give conjugation and the Weyl/based semidirect decomposition. Corollaries 7.3.4 and 7.4.5, p.92, lines 1533 and 1559, require reduced simply connected or adjoint data for the full diagram-automorphism identification. Remark 7.4.6, p.93, lines 1565 and 1594, gives the stated connected diagram groups. All six named locators and their relevant hypotheses agree; this does not remove the need to construct the real and full-lattice interfaces.
- **milne-ag:** the [author's Algebraic Groups text](https://www.jmilne.org/math/Books/iAG2017.pdf), Appendix C. Its standing characteristic-zero, finite-dimensional convention is at milne-ag line 24910; reducedness after C.18 at line 25072. C.19–20, printed p.611, lines 25074–25083, supply invariant inner-product existence and the coroot normalization; C.23–24, p.612, lines 25102–25115, give component decomposition and the highest root. C.26–27, p.613, lines 25132–25141, distinguish the root lattice, weight lattice and intermediate lattice. The Appendix-wide citation is not an exact locator for every new metric API statement. The sign slip found in C.25 is recorded below.
- **humphreys-coxeter:** the [University of Washington course copy](https://sites.math.washington.edu/~billey/classes/reflection.groups/references/Humphreys.ReflectionGroupsAndCoxeterGroups.pdf), recognized by OCR. §1.5, printed p.11, humphreys-coxeter line 597, proves simple-reflection generation using height descent; §1.9, pp.16–17, line 809, gives the presentation for the chosen simple generators. §5.8, p.117, line 4540, states strong exchange for arbitrary expressions, with uniqueness for reduced expressions; Exercise 1 at line 4555 gives the left-multiplication variant. These support the finite lowering route and the marked-generator requirement, not R01's infinite generalization.

## Not verifiable

- The requested theorem number/page check for “Scope boundary” is impossible as written: none is cited there. Its ownership link was verified, not guessed.
- **bourbaki-lie**, Chapters IV–VI, including VI §4: the source service resolved only a paywalled Springer work and returned `uncertified`. The cited chapter was not read. No renewed request is made for a paywalled text.
- **humphreys-lie**, Chapter III: likewise returned `uncertified` from Springer; the precise supporting passages were not read.
- **bjorner-brenti**, *Combinatorics of Coxeter Groups*: the bibliographic lookup initially failed; the DOI `10.1007/3-540-27596-7` subsequently resolved as paywalled/`uncertified`. The README provides no precise theorem/page locator. No source contents are inferred from that lookup.
- **kac90**, Chapter 4: the source service reached the Cambridge landing page but found no legal full text. This is the remaining entry in the scratch missing-reference list. It does not suspend this review or weaken the concrete findings.
- The unnamed “printout” behind the C₄/C₉ examples and sorting weights has no bibliographic identity or locator in the README. The coefficient values were independently checked; agreement with that unspecified source cannot be certified.
- The metric component-parametrization theorem and several other targets cite only broad chapters or an appendix. I checked the mathematics on the displayed instances, but did not certify nonexistent claim-level locators or every proof in those books. No copied passage was detected in the accessible passages sampled; unavailable texts were not compared for copying.

## Source issues

- **Misprint** in milne-ag at Example C.25, printed p.612 (milne-ag line 25120): the source says positive type-A roots have indices i>j for its displayed decreasing-coordinate vector; it should be i<j, with the expansion inequalities reversed accordingly; affects a stated result.

For the last item, at n=1 the displayed vector is (1/2,−1/2): its inner products with e₁−e₂ and e₂−e₁ are 1 and −1. The roadmap uses the correct eᵢ−eⱼ/simple-root orientation. I found no published correction for this item in the author's linked errata.
