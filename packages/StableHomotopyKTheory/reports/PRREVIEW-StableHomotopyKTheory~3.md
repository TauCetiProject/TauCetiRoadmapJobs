# Review of StableHomotopyKTheory (pull request #1227 at 30f4891)

**Verdict:** needs changes

The gate passes. Six blocking findings remain: two false component/track claims, an absent supplier contract, an invalid unstable proof route, duplicated ownership, and a statable headline missing from the acceptance file. R07–R08 are P3 notes. No pull-request file was changed.

The six findings from the previous review were checked first:

| Previous finding | Passage at this head and assessment |
| --- | --- |
| R01, raw sphere multiplication | **Repaired.** README §7.2, line 2289: “define E/m as the derived multiplication cofiber”; §7.7 uses coherent powers on a common replacement. Raw sphere maps still induce only 0 or 1 on π₀; the derived degree-two cofiber has π₀=ℤ/2 as required. |
| R02, strict topological comparison | **Repaired.** §4.30 says “Insert the enriched category with objects r≥0”, using realized singular GL; transpose precedes the counit weak equivalence. §4.15 transposes the permutation matrices. The rank-one counit identifies two distinct points with value 5/4; the (2,3) shuffle and inverse are distinguished. |
| R03, HF₂ supplier overclaim | **Repaired.** Line 17: “Section 7.31 extends that MU case to the HF₂ site”; line 102 explicitly disclaims a supplied parameterized theorem. The HF₂ site admits S/2, whose MU homology MU*/2 is not projective. The site/localization/tensor extension is now owned locally. |
| R04, invented API/Check identifiers | **Repaired.** Planned API and Check labels have become prose, while the actual acceptance names remain. The gate reports `readme-ids-missing=0`. |
| R05, namespaces/form | **Repaired.** Suggested.lean:44 has `namespace TauCetiRoadmap.StableHomotopyKTheory`, with “target signatures” in the module heading and ordered layer comments. All 21 elaborated names are in that namespace. |
| R06, bare cover citation | **Repaired.** README §3.1 and the contract at line 96 now cite “Stage 0 items 3–4”, “Stage 1 item 5” and “Stage 2 items 7–8”. These are the actual action, deck and quotient-cover owners. |

No supplied repair disposition marks a finding “not actionable in this package”. The findings below are new defects, not re-raised settled findings.

## R01 (P1) — Restrict the telescope comparison to its base component

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:1663`, “The telescope maps acyclically to the unit component of each target”; line 1669 also identifies the finite-set telescope with BΣ∞.

Claim: the whole translation telescope X∞ has an acyclic map to a single component of the completion.

Witness: For X=ℕ and stabilization k↦k+1, the stage-r element k has invariant k−r. Thus π₀X∞=ℤ, whereas the unit component of ℤ is a point. The fibre has infinitely many components.

An acyclic map has nonempty connected homotopy fibres, so this map cannot be acyclic. This also contradicts the correctly stated ℕ→ℤ Check at line 1667. For finite sets the whole telescope has components indexed by ℤ, each of type BΣ∞.

Repair: keep the full telescope's acyclic comparison with the **whole** group completion, and restrict it to (X∞)₀ before comparing with the unit component and invoking plus uniqueness. Change the finite-set Check to (X∞)₀≃BΣ∞ and X∞≃ℤ×BΣ∞. Retest: for ℕ, the full comparison is bijective ℤ→ℤ on components, and its component-zero restriction has contractible source and target.

## R02 (P1) — Abelian conjugation does not erase the specified track

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:459`, “For abelian G conjugation is trivial and the homotopy has constant track edge(1).” The construction at line 453 specifies track edge(h).

Claim: the homotopy constructed from a conjugator has constant track whenever the group is abelian.

Witness: Take G=C₃, φ=ψ=id and conjugator h=a≠1. The specified track represents a in π₁BC₃=C₃; a constant track represents 1. The two are not homotopic relative endpoints.

Repair: say that h=1 gives the constant-track homotopy; for arbitrary h in an abelian target the **endpoint maps** agree, but the specified homotopy still has track h. An independently chosen constant homotopy is available. Retest h=1 and h=a: their tracks are respectively 1 and a, although both connect id to id.

## R03 (P1) — Own the relative fibre spectral sequence used in §3.6

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:1015`, “DGFloer Layer 1 item 2 (relative Serre spectral sequences)”.

Claim: that supplier provides the relative fibre comparison spectral sequence used in the preceding proof route.

Witness: `TauCetiRoadmap/DGFloer/README.md:522–543` supplies absolute Serre sequences and naturality. Its relative clauses at 547–593 concern filtration quotients, excision and products, not the spectral sequence of a map of fibres.

Item 3 at line 612 supplies filtered-complex machinery from which the missing construction can be made. H SS 1 line 1245 treats a relative **base** with fixed fibre in a different implication; line 1249 explicitly leaves the required base-and-total-to-fibre implication unproved. Neither citation supplies the asserted relative-fibre contract, and no gap is declared.

Repair: make the missing comparison a target here: after pullback to a common CW base, form the filtered mapping cone of the map of fibre-chain filtrations; identify its E₂ page with base homology in the transported relative fibre homology, and prove its convergence/naturality. Consume DGFloer items 2 **and 3** for the absolute filtration and filtered-complex machinery, then derive §3.6 by its first nonzero relative fibre degree. Alternatively give a complete route using only the actual supplied absolute sequences. Retest the cone of *→S¹ over a point: E₂ has ℤ in relative degree one and the abutment is the same ℤ; the identity comparison has zero cone throughout. These distinguish the missing relative construction from either absolute input.

## R04 (P2) — Replace the unstable product-difference fibration argument

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:1183`, “the long exact sequence of the fibration holim→∏Xₙ→∏Xₙ”, attributed to H AT Proposition 4.67's proof.

Claim: an arbitrary space tower has the product-difference fibre sequence used for spectra and abelian towers.

Witness: A difference map S²×S²→S² restricting to degrees +1 and −1 would pull the generator back to a−b. But (a−b)²=−2ab≠0, while the generator's square is zero.

There is no subtraction map on arbitrary spaces realizing id−shift. The cited proof, H AT lines 17753–17787, instead adjusts compatible sphere maps and nullhomotopies; it contains no such product-difference fibration. This concerns the proof route, not the stated unstable Milnor theorem.

Repair: use the path-space homotopy equalizer of id and shift already described in §3.18, obtained by pulling back the endpoint fibration (∏Xₙ)^I→(∏Xₙ)×(∏Xₙ). Derive the lim¹ action and exact sequence from compatible nullhomotopies, following the cited proof. Reserve the literal difference fibre sequence for the stable/additive setting of §7.9. Retest the constant identity S² tower: holim≃S², lim π₂=ℤ and lim¹π₃=0, without requiring the impossible two-variable difference map.

## R05 (P2) — Import the existing abstract universal central extension foundation

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:1302`, “Build a universal central extension as a surjective homomorphism with central kernel and a unique lift”; line 1310 claims generic ownership.

Claim: this roadmap must construct the arbitrary-perfect-group free-presentation foundation before its plus-fibre theorem.

Witness: Main `TauCetiRoadmap/RepresentationTheory/InductionRestriction/README.md:741–755`, “Abstract universal central extensions”, already owns arbitrary groups, the same universal property, U=[F,F]/[F,R], existence for perfect groups, perfection and uniqueness of lifts.

This is an object-level duplication, not a collision of chosen Lean names. The plus-fibre comparison and its H₂/naturality refinement are additional work and can remain here.

Repair: import that Layer 7 subsection in Scope and Exact supplier contracts; remove the repeated free-presentation/existence/universal-property construction from §3.29 and its Needs prose. Retain the kernel–H₂, superperfect recognition and plus comparisons to the extent not supplied there. The simple acceptance predicate may express the imported universal property on native groups, explicitly as an adapter. Retest: the supplier's trivial-group extension is 1→1, and SL₂(𝔽₅)→A₅ has kernel C₂; the local theorem identifies the same extension through π₁ of the plus fibre, rather than constructing a competing generic owner.

## R06 (P2) — State the generic cellular approximation headline at the pins

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:2132`, “Construct R in the closure of C under sums and cofibres”; `TauCetiRoadmap/StableHomotopyKTheory/Suggested.lean:27–35` groups Layer 5 under unavailable spectral carriers.

Claim: the generic triangulated-category part of §5.17 is omitted along with its spectral specialization.

Witness: Pinned Mathlib has `Pretriangulated`, `IsTriangulated`, `Functor.IsHomological`, `preadditiveCoyoneda`, coproducts and preservation predicates. A scratch statement of §5.17 elaborated with only `import Mathlib`, two real predicates and one admitted theorem.

The two predicates are ordinary native-carrier definitions: compact G means its additive represented functor preserves small coproducts; cell closure is the intersection of replete classes containing the given small family and closed under coproducts and third objects of distinguished triangles. For E:Tᵒᵖ→AddCommGrpCat, the statement assumes `E.IsHomological` and preservation of small products, and concludes existence of R in that closure and u∈E(R) making f↦E(f)(u) bijective on every generator. No spectrum, free Prop field or opaque construction is needed. The elaborated signature retains all hypotheses and universes.

Repair: add these minimal real definitions and the full generic approximation theorem with `sorry`, name them in §5.17, and distinguish its statable general theorem from its unavailable spectral specialization in the docstring. Retest on T=D(ℤ), C={ℤ[0]}, E=Hom(−,(ℤ/2)[0]): take R=(ℤ/2)[0] and u=id; evaluation is the identity on ℤ/2, and R is the cone of ×2:ℤ→ℤ. For C empty take R=0. The statement must retain these two cases and the sums-to-products hypothesis.

## R07 (P3) — Give a locator for the Hopf-action refinement

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:2154`, “retaining transformations and self-braiding as the Hopf-map action”, with only BS after Proposition 12.15, p.59 cited.

Claim: the locator supports the stated η/self-braiding identification, in addition to the Picard-spectrum equivalence.

Witness: BS lines 2711–2716 gives the equivalence and points to Patel; it does not identify η. The accessible Patel author edition, §5.1, Theorem 5.1.3, likewise states the equivalence but supplies no located self-braiding formula.

Repair: add a precise legal source locator for this refinement, or state its proof as a separate comparison target with the required inputs and its own locator. Keep the mathematical claim: graded real lines have π₀=ℤ, π₁=ℝˣ and η(1)=−1; ordinary ungraded lines have self-swap +1. These distinguish the required refinement from an equivalence that only lists π₀ and π₁.

## R08 (P3) — Add discriminating Checks for the tree-path construction

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:329–332`, “The root-to-X path in T” and the tree-loop API. There is no Checks block in §1.22.

Claim: the defining tree paths and loops have an API but none of the required three discriminating Checks.

Witness: §1.22 runs directly from its four API bullets to the source and Needs lines. The endpoint direction and the two-simplex relation are therefore untested there.

Repair: add three prose Checks: [1] with its unique tree gives no generators and trivial π₁; two parallel arrows with one chosen as tree give π₁=ℤ, with reversed traversal negating the generator; SingleObj C₃ gives a³=1 and π₁=C₃, not free ℤ. Keep these in the README; add no padding to Suggested.lean.

## Verified sound

Read all 193 numbered targets, their API bullets, Checks, conventions, layer dependencies and downstream contracts, and all of Suggested.lean. The retained computations cover the seeded sample, headline theorems and every target touched by a finding; they are finite discriminating probes, not proofs of the proposed library. “Pass / none” means that the displayed values do not refute that target. The findings mark the exceptions and distinguish a false formula from an ownership or source defect.

The folder is new relative to main, so the repairable duplication in R05 does not reject its entire scope. No route-specific prime exclusion, computational algorithm, copied passage, sorry'd data or `set_option` was found. All seven layers end with Examples and Dependencies. R08 records a definition-level Check omission; not every prose block needs to become Lean.

**Gate, build and order.** The worker gate is **OK**, all counters zero, including build, dependency, source-material, stray-files, outside-folder and dirty checks. The outside-folder diff is empty. The required dependency command returned:

```text
depcheck: 205 roadmaps, 1465 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. Every Needs line was read. A passing graph does not establish the supplied content: R03 is a missing-contract defect. AlgebraicKTheory and TangentialBordism are earlier suppliers; later Part II/chromatic/trace work is consumed by no upward Needs edge here.

After building the missing pinned `TauCeti.Topology.Homotopy.HomotopyGroup.FundamentalGroupAction` object, direct `lake env lean` on the target exited 0. A scratch copy printed all **21/21** elaborated signatures: eleven real definitions and ten theorems. It also tried each theorem with solving `rfl`, `simp` and `infer_instance` branches: all ten still required `sorry`. Object searches found no single library lemma that closes a headline. No padding finding is raised. The imports are one Mathlib root and four used individual Tau Ceti modules. The CW/T2/connectedness, normal/perfect, asphericity, H-space, all-local-system, finite/projective and RCLike binders survive. No existing signature needs a binder repair. R06's separate native-carrier probe also exited 0, with only its one expected sorry warning.

**Seeded source audit.** All 15 sampled targets' cited texts were obtained legally and read at the listed locators; no additional README locator is marked unverified. “Text available” is distinct from “all clauses supported”: §5.19 has R07, and §3.6 needs R03's local construction. Source IDs below follow the README abbreviations; H SS 1 denotes Hatcher, not Hovey–Shipley–Smith.

| Target | Source locator and extraction | Hypotheses/content verified |
| --- | --- | --- |
| 1.7 | Q §1(3), p.91; Q line 278 | Opposite-category realization homeomorphism reverses arrow strings and simplex coordinates; involution verified. |
| 2.12 | H AT §4.K, p.479; H AT line 20605; May §1, pp.91–92, line 93 | Strict-to-homotopy-fibre weak equivalence, including π₀; no lifting property inferred. |
| 2.14 | H AT Lemma 4K.3(a), pp.480–481, line 20640; May Corollary 2.4, p.95, line 130 | May supplies the intersection-closed open-cover version without imposing connected fibres; Hatcher's displayed proof reduces to connected fibres. |
| 2.18 | Q §1, bisimplicial realization discussion, pp.94–95; Q line 397 | Diagonal/iterated homeomorphism via representables and simplex products; compactly generated topology retained. |
| 3.6 | H SS 1 Proposition 1.12, p.20; H SS 1 line 1194 | Trivial monodromy and PID coefficients; integral case is valid. Third implication's proof is omitted in the source; R03 identifies its missing local input. |
| 3.11 | H AT Proposition 4.40 and generalization, p.374; H AT line 16243 | Attaching loops kills the normal closure; normal P gives exactly π₁/P. |
| 3.16 | H AT Theorem 4.37 and Lemma 4.38, pp.371–373; H AT line 16111 | Relative Hurewicz is the action quotient; trivial action removes that quotient, including the degree-two issue. |
| 3.19 | H AT Theorem 4.57, pp.393–394; H AT line 17069 | Arbitrary CW sources, abelian coefficients, n≥1; pointed/reduced and degree-zero distinctions. Mapping K(A,n) into K(B,n) additionally uses Hurewicz/UCT. |
| 3.31 | W IV Exercise 1.8, pp.IV.14–15; W IV line 646 | BP⁺ universal cover. General H is the stated covering-classification extension; deck group is normalizer quotient, not G/H for nonnormal H. |
| 4.22 | W IV Functoriality 1.1.2, p.IV.3; W IV line 98 | Ring-map functoriality of plus; naturality of the comparison additionally uses the preceding group-completion/uniqueness targets. No strict natural choice of attachments is inferred. |
| 5.17 | S II Proposition 5.14, pp.260–261; S line 13781 | Compact generating family, closure by sums/right extensions, evaluation bijection. S Definition 5.4, p.257, line 13519 includes sums-to-products in “cohomological”; the README spells it out. |
| 5.19 | BS after Proposition 12.15, p.59; BS line 2711; Patel author edition §5.1, line 1675 | Picard/1-truncated connective-spectrum equivalence and homotopy groups; η refinement not supplied at that locator (R07). |
| 6.1 | S I Example 3.50, pp.55–57; S line 2754; W IV §8.3, pp.67–69, line 3138; Waldhausen §1.3 | Multisimplicial S, symmetric actions, zero level wC, exact functors and cofibrations using relative latching maps. The Kan/Ω replacement is separate from the raw spectrum. |
| 7.2 | W IV Definition 2.4, pp.IV.19–20; W IV line 862; S II Remark 6.51, p.288, line 15296 | Finite-coefficient spectrum and derived smash/cofiber comparison; coherent representatives are needed before point-set claims. |
| 7.24 | HA Proposition 1.2.2.14, pp.52–53; HA line 2048 | Sequential-colimit-compatible t-structure and filtration bounded below; exhaustive abutment and eventual outgoing-differential vanishing. Does not imply every whole page eventually stabilizes. |

**Adversarial values: 80 retained rows for the sample, headlines and findings.** Degree-zero sets are not silently treated as groups; zero rings retain rank labels in the based-free category. “Cₙ” denotes the cyclic group of order n.

| Statement | Instances tried | Values computed on the compared objects | Result / change |
| --- | --- | --- | --- |
| §1.7 | [1] and C₃ | interval reverses t↦1−t; twice gives t; oriented group edge is reversed | pass / none |
| §1.22 | [1]; parallel arrows with one tree edge; SingleObj C₃ | presentation groups 1, ℤ, C₃; reversing the non-tree loop gives −1 in ℤ | mathematics passes; add three Checks, R08 |
| §1.25 | same terminal diagram | colim=A is exact; L₀=A and Lₙ>0=0, agreeing with 1.24 | pass / none |
| §1.26 | [1], coefficient map u:A→B | cellular boundary a↦(−a,u(a)); cokernel=B, kernel=0 | pass / none |
| §1.27 | BC₂, trivial integral coefficients | H₀=ℤ,H₁=C₂,H₂=0 by both bar and local singular models | pass / none |
| §1.31 | id:C₃→C₃, conjugator a≠1; S₃ conjugation | abelian endpoint maps both id, but specified track a≠1; (12)(123)(12)=(132) | false abelian Check; R02 |
| §2.12 | product projection S¹×I→I | strict and homotopy fibres π₁=ℤ,πₙ>1=0; weak comparison holds | pass / none |
| §2.14 | trivial S¹-bundle over two overlapping intervals | local fibre π₁=ℤ and overlap maps id; global fibre comparison idℤ | pass / none |
| §2.18 | Δ[1] external product Δ[1]; empty input | diagonal gives square with two triangles; iterated product is the same square with its product cell structure; empty gives ∅ both ways | pass / none |
| §2.31 | {0}→[1]; discrete two objects→point | first costructured commas singletons and point→interval equivalence; second comma has two components and hypothesis fails | pass; Lean headline |
| §2.34 | S₃→C₂; {0}→[1] | group comma fibre BC₃; structured-comma base change ∅→point in second example fails hypothesis | pass; both Lean headlines |
| §3.6 | identity S¹-fibration; relative cone of *→S¹ over a point | identity fibre map id_ℤ in H₁; relative E₂ degree1=ℤ=relative abutment | statement passes; missing relative supplier, R03 |
| §3.7 | id:S¹→S¹; point→punctured homology sphere | all local homology maps id for first; second constant coefficients suffice but group-ring coefficient H₀ detects 120 fibre components | pass; Lean headline |
| §3.10 | P=1; P=A₅ in BA₅ | first attach no cells; second π₁ quotient1 and new π₂=C₂ | pass; Lean headline |
| §3.11 | same two cases | π₁ remains original group for P=1; A₅/A₅=1 | pass / none |
| §3.12 | BA₅ plus; relative 3-to-2 cellular differential | H₂=C₂ both before and after; relative differential identity has kernel and cokernel0 | pass / none |
| §3.13 | P=1 and arbitrary sign local system on S¹ | plus=id; differential −2 on both twisted complexes, H₀=C₂,H₁=0 | pass / none |
| §3.16 | (D²,S¹), n=2 | boundary π₂(D²,S¹)=ℤ→π₁S¹=ℤ is iso; relative H₂=ℤ; nontrivial action examples excluded | pass / none |
| §3.18 | constant identity S² tower; proposed two-variable difference | holim≃S², lim π₂=ℤ, lim¹π₃=0; (a−b)²=−2ab≠0 versus u²=0 | theorem values pass; replace route, R04 |
| §3.19 | S¹→K(C₂,1); degree0 on S⁰ | classes C₂=H¹(S¹;C₂); unbased degree0 A², reduced degree0 A | pass / none |
| §3.25 | plus at P=1, f=id:S¹→S¹ | factorization g=id, induced kernel1⊇P; degree2 map also factors as itself | pass; Lean headline |
| §3.28 | degree d:S¹→S¹, target H-space S¹ | integral homology iso iff d=±1; kernelπ₁=0 and plus condition then holds; d=2 excluded | pass; Lean headline |
| §3.29 | A₅; trivial perfect group; C₂→1 | π₂BA₅⁺=H₂(A₅)=C₂ and SL₂(𝔽₅)→A₅ has kernel C₂; trivial UCE=1→1; C₂→1 has two lifts to itself | mathematics passes; import existing owner, R05 |
| §3.31 | G=P=A₅; P=1,G=C₂; H=C₂⊂S₃ | first cover BA₅⁺ itself; universal cover of BC₂ contractible; last has3 sheets and deck group1, not3 | pass / none |
| §3.37 | S¹ and K(ℤ,2) | rational primitive classes are ℚ in degree1 or2; H_*(K(ℤ,2);ℚ) has extra decomposables, so primitives are necessary | pass / none |
| §4.9 | finite sets, integral degree zero | H₀ before ℤ[t], localization ℤ[t,t⁻¹]=H₀ of completed component group ℤ | pass / none |
| §4.16 | zero ring | stable GL=1, group completion of based ranks ℤ; RHS ℤ×point has same components | pass / none |
| §4.17 | X=ℕ with +1 stabilization; finite-set core | π₀tel=ℤ versus unit-component π₀=1; finite-set full tel≃ℤ×BΣ∞ versus connected BΣ∞ | fail; restrict component, R01 |
| §4.18 | cofinal ranks n and 2n | both localized rank monoids ℤ; even-step cofinal sequence still permits arbitrary starting ranks | pass / none |
| §4.19 | S=2ℕ⊂T=ℕ acting by translation | 2ℕ cofinal since n+(n mod2) even; localizations have integer differences | pass / none |
| §4.20 | based free modules⊂finite projectives | for projective P choose Q with P⊕Q free; over field both rank components ℕ, completionsℤ | pass / none |
| §4.21 | field k and zero ring | K₀(k)=ℤ, K₀(0)=0; BGL(0)⁺=point, so all-projective completion of0 is point | pass / none |
| §4.22 | unital field inclusion k→K | rank1 maps to rank1; π₀ map ℤ→ℤ is identity, unit preserved | pass / none |
| §4.27 | E₈, J=⟨1⟩⊥⟨−1⟩ | E₈⊥(−E₈)⊥J has signature(9,9), odd, hence J⁹; rank18 on both sides | pass / none |
| §4.29 | n=0; idempotents e,e′ close in a Banach matrix algebra | finite projectives over k free; ee′+(1−e)(1−e′)=1+(2e−1)(e′−e), invertible if product norm<1 | pass; Lean headline |
| §4.30 | real rank-one simplex; tensor ranks2,3 | interior and vertex both evaluate5/4 but are distinct; transpose inverts [0,2,4,1,3,5] to [0,3,1,4,2,5] | repaired intermediate category and transported matrices pass |
| §5.13 | zero algebra; sphere unit; arity0 | zero operations unique; sphere unit π₀ sends1↦1; omitting arity0 would admit nonunital zero multiplication | pass / none |
| §5.14 | R=ℤ and zero ring | π₀HR=R, otherπ0; zero ring gives zero spectrum; unit ℤ→ℤ identity | pass / none |
| §5.15 | complex ℤ --2→ ℤ in degrees1,0 | H(C) hasπ₀=C₂,π₁=0, detecting differential rather than graded groups | pass / none |
| §5.16 | cochain ℤ in degree2, then shift[1] | π₋₂=ℤ initially; shifted complex in degree1 givesπ₋₁=ℤ | pass / none |
| §5.17 | T=D(ℤ), G=ℤ[0], E=Hom(−,(ℤ/2)[0]); empty family | R=(ℤ/2)[0], u=id gives evaluation id on ℤ/2; cone(×2) supplies R; empty family permits R=0 | mathematics passes; statable headline missing, R06 |
| §5.18 | HZ and ΣHZ | zeroth infinite-loop spaces ℤ and K(ℤ,1); successive delooping shifts π₀ toπ₁ | pass / none |
| §5.19 | discrete Picard A; one-object Picard A; graded/ungraded real lines | (π₀,π₁)=(A,0),(0,A); odd-line η(1)=−1 versus ungraded self-swap+1 | values pass; refine locator, R07 |
| §6.1 | flags (0⊂0⊂k)→(0⊂k⊂k) | latching map k⊕k→k fold has kernelk, so not a cofibration although filtration-stage maps inject; quotient k→0 is not injective | pass / none |
| §6.2 | cofibration k→k² with quotientk | K₀ relation [k²]=[k]+[k]=2; additivity map (subobject,quotient) sends flag to(1,1) | pass / none |
| §6.3 | finite pointed sets; q=2 split flag over 𝔽₂ | K₀=ℤ, one non-basepoint gives1 and basepoint-only gives0; flag stabilizer2 versus diagonal stabilizer1 | pass / none |
| §7.1 | m=1,2,3,4 | π₀S/m=0,C₂,C₃,C₄; π₁S/m=0,C₂,0,C₂; m=2 lifting ambiguity C₂ | pass for derived Moore object |
| §7.2 | raw sphere versus derived multiplication2; E=HZ,m=1 | raw cone π₀=ℤ or0; derived cofiber π₀=C₂, and HZ/1=0; replacements now distinguish them | repaired / none |
| §7.3 | E=ΣH(C₂),m=2 | π₂(E/2)=C₂ maps isomorphically by boundary toπ₁E=C₂; degree drops one | pass for derived coefficients |
| §7.4 | E=S,m=2,k=2 | 0→C₂→C₄→C₂→0; no splitting at2 | pass / none |
| §7.5 | E=HZ,m=3; m=2 negative control | π₀ quotientC₃, torsion previousdegree0; split; S/2 exampleC₄ extension does not split | pass / none |
| §7.6 | q₁=2,q₂=3 | (1,0)↦3 mod6,(0,1)↦2 mod6, bijection; modulus1 summand0 | pass / none |
| §7.7 | p=2,r=1, coherent coefficient maps | inclusion1 mod2↦2 mod4; reduction1 mod4↦1 mod2; torsion reduction×2, quotient reduction usual | repaired common model / none |
| §7.8 | E=HZ and E=ΣH(C₂) | π₀(HZ;p∞)=ℚ_p/ℤ_p; for latter tensor C₂⊗ℚ_p/ℤ_p=0 but shifted Tor at p=2 isC₂ | pass / none |
| §7.9 | constant identity tower A; zero-transition tower A | lim=A or0; lim¹=0 in both; corresponding holim homotopy agrees | pass / none |
| §7.10 | ℤ --3→ ℤ tower | lim0; lim¹=ℤ₃/ℤ; class1/2 nonzero but doubled to0 | pass / none |
| §7.11 | HZ; H(ℚ_p/ℤ_p) | first completionπ₀=ℤ_p,Tate term0; second quotientlim0,Tate moduleℤ_p givesπ₁completion=ℤ_p | pass / none |
| §7.12 | A=C₂,X=S/2 | mapping-sequence kernel Ext(C₂,π₁S/2)=C₂, quotient Hom(C₂,C₂)=C₂; kernel cannot be omitted | pass / none |
| §7.13 | π_kE=ℤ⊕C_p⊕C_q, p≠q | completed groupℤ_p⊕C_p, tensor withℤ_p same; q-primary term0 | pass / none |
| §7.14 | HZ_p and HQ | F(S[1/p],HZ_p)=0; F(S[1/p],HQ)≃HQ≠0; completion unit iso only first | pass / none |
| §7.15 | product of copies HZ_p; shiftΣ⁻¹HZ_p | mapping spectra fromS[1/p] zero termwise, product0; shift remains0 | pass / none |
| §7.16 | 0→HQ versus id:HZ_p→HZ_p | first modp equivalence0→0 but target incomplete; second complete and ordinary equivalence | pass / none |
| §7.17 | H(C_p²), p=2,3 | multiplicationp²=0; tower inversion yields zero mapping spectrum; completion remains H(C_p²) | pass / none |
| §7.18 | S/2 and HQ/p | π₂S/2=C₄ killed by4, not2; HQ/p=0; both complete | pass / none |
| §7.19 | graded ℚ-vector space only in degree−2 | associated spectrumΣ⁻²HQ hasπ₋₂=ℚ and all otherπ0; degree0 alone would lose it | pass / none |
| §7.20 | E=HZ, rational/completed difference | (a,b) maps a−b: (2,1)↦1,(1,2)↦−1; integral diagonal maps to0 | pass / none |
| §7.21 | Whitehead filtration of HZ∨Σ⁻¹HZ | graded pieces at s=0,1 are HZ,Σ⁻¹HZ; differential totaldegree−1 | pass / none |
| §7.22 | D=E=ℤ², i(x,y)=(x,0),j(x,y)=(y,0),k(x,y)=(0,y) | images=successive kernels; d=jk sends(x,y)↦(y,0),d²0 buti²=i≠0 | pass / none |
| §7.23 | two-term filtered complex ℤ --2→ ℤ | E¹ hasℤ in adjacent totaldegrees1,0; d₁=×2; E² onlyC₂ in degree0 | pass / none |
| §7.24 | same finite two-step filtration | E∞ degree0=C₂, abutmentH₀=C₂, finite exhaustive separated filtration | pass / none |
| §7.25 | constant tower E with Y₋₁=0; (s,t)=(0,2) | F₀=E and F_s=0 for s>0; holim=E; d₁ target(1,2) has totaldegree1 versus source2 | pass / none |
| §7.26 | exact couple D=ℤ,i=id,E=0 | all pages0 but limD=colimD=ℤ; omitted completeness/exhaustiveness would falsely conclude zero | pass / none |
| §7.27 | X=S¹, E=HZ | E²_(0,0)=ℤ,E²_(1,0)=ℤ, others0; abutmentH₀=H₁=ℤ | pass / none |
| §7.28 | moduli2,3,4,5 | S/2 lacks unit product;3 admits product with associativity obstruction;5 supports associative commutative product; exclusions matter | pass / none |
| §7.29 | n=1,k=2; n=2,k=2; r=p:S→S | first obstruction exponent −3+4=1; second configuration space S¹ has cells0,1; π₁S/p=0 for odd p versus C₂ at2 | pass / none |
| §7.30 | v=p odd, v=2, v=4; q=1 | odd and4 give right-unital Moore quotients;2 does not; τ⁻¹(ν1/ṽ)=S/p atq=1, withπ₀=C_p | pass on hypotheses and quotient normalization |
| §7.31 | S/2; synthetic sphere classes 2̃ˢ; quotient exponent1 | HF₂-homology F₂ in0,1, MU*/2 nonprojective; τˢ2̃ˢ=2ˢ≠0; Moore stem2 survives in filtration2, on s=k/2+1 | repaired ownership; values pass |
| §7.32 | odd p,v=p,n=1 | quotient exponent n+1=2 gives S/p²; n=2 exponent3 gives S/p³ | pass on stated range |
| §7.33 | E=τ≤₁S and m=2 | positive evenπ vanish, yet2id_(E/2)=iηj≠0; η·1 hypothesis excludes it | pass; source correction required |
| §7.34 | n=1,2 at p=2; n=1 at p=3 | 2q≥6,9 gives q=3,5, hence S/8 E₁ and S/32 E₂; odd q≥2 gives S/9 E₁ | pass / none |

**Acceptance definitions and additional controls.** All eleven bodies use native carriers. In addition to the numbered rows:

| Definition/convention | Instances | Computed values / result |
| --- | --- | --- |
| HasCWType | point; Cantor set; indiscrete two-point space | Point has one cell. Cantor paths are constant and singleton components are not open, precluding a homotopy equivalence with a CW complex. Indiscrete two-point space contracts to a point and has CW type despite not being Hausdorff. T2 is imposed on the CW model, not on X. |
| IsUniversalCentralExtension | 1→1; C₂→1 | First has exactly one lift to every central extension. Second has two lifts to C₂→1 (zero and identity), so the same central-kernel condition does not suffice. |
| MappingPathFiber / weak equivalence | id_B; *→S¹; ∅→* | Identity fibres contract; loop fibre has π₀=ℤ; empty fibre has π₀=∅. The last comparison fails π₀ bijectivity although all positive groups based in the empty source are vacuous. |
| Row/column tensor conventions | ranks (2,3), distributor (2,1,2) | Shuffle [0,2,4,1,3,5] has inverse [0,3,1,4,2,5]; distributor [0,2,3,1,4,5] has inverse [0,3,1,2,4,5]. Transposing the chosen row matrices recovers both column permutations. |
| Relative Hurewicz action | (S¹∨Sⁿ,S¹), n≥2 | Relative πₙ is ℤ[t,t⁻¹]; relative Hₙ is ℤ, by augmentation. Translation t acts nontrivially, so §3.16's trivial-action hypothesis correctly excludes the false unrestricted isomorphism. |
| Cover normalizer | P=1, G=S₃, H=⟨(12)⟩ | Cover has 3 sheets; N_G(H)/H=1, while G/H has 3 elements and is not a quotient group. §3.31 preserves this distinction. |
| Source-issue control | E=τ≤₁S, modulus 2 | π₀E=ℤ, π₁E=C₂, other π=0; η survives and 2id_(E/2)=iηj≠0. Thus the README's η hypothesis excludes the counterexample to W IV's broader scholium. |

**Headlines and their status.** The README's explicit acceptance list is Quillen A (§2.31); Quillen B in both comma forms (§2.34); all-local-coefficient acyclicity (§3.7); plus existence (§§3.10–3.13); plus factorization (§3.25); π₂ and the universal central extension of an aspherical source's plus (§3.29); H-space recognition (§3.28); and freeness over simplex function rings (§4.29). These are the ten theorems at Suggested.lean lines 82, 91, 109, 162, 171, 178, 188, 199, 217 and 234, and have rows above.

Other deep/end results are category homology/derived colimits (§§1.25–1.27), Cartan–Serre (§3.37), categorical group completion and linear/orthogonal plus comparisons (§§4.9,4.16–4.22,4.27), topological K (§4.30), stable/chain/operad/delooping/Picard comparisons (§§5.13–5.19), Waldhausen additivity/delooping and Barratt–Priddy–Quillen–Segal (§§6.1–6.3), finite coefficients/products, completion/fracture (§§7.1–7.20), filtered convergence/AHSS (§§7.21–7.27), and quotient/Moore Eₙ structures (§§7.29–7.34). The docstring names the missing category-chain, fraction-category, spectrum, Waldhausen/S, operad, deformation and synthetic carriers. Generic §5.17 is the exception: R06's probe makes it statable without any missing spectral carrier. No weakened replacement theorem is proposed.

**Pinned APIs opened.** Paths are relative to the corresponding pinned library repositories. These 22 entries record inspected bodies/signatures:

| File and line | Content used |
| --- | --- |
| `Mathlib/AlgebraicTopology/SimplicialSet/Nerve.lean:37` | `nerve` uses composable arrows; `nerveMap` at 55, `nerveFunctor` at 74. |
| `Mathlib/AlgebraicTopology/SingularSet.lean:65` | `SSet.toTop` is the left Kan extension; `sSetTopAdj` at 73. Neither definition itself supplies a CW structure. |
| `Mathlib/Topology/Category/CompactlyGenerated.lean:32` | Carrier fields are TopCat and compact generation; no Hausdorff or weak-Hausdorff field. |
| `Mathlib/Topology/Connected/PathConnected.lean:577` | `PathConnectedSpace` includes `Nonempty` and `Joined`, excluding the empty acyclic-space model. |
| `Mathlib/CategoryTheory/Triangulated/Pretriangulated.lean:65` | Native distinguished triangles, with additive shifts. |
| `Mathlib/CategoryTheory/Triangulated/Triangulated.lean:299` | `IsTriangulated`, used in the R06 probe. |
| `Mathlib/CategoryTheory/Triangulated/HomologicalFunctor.lean:80` | `Functor.IsHomological` preserves zero maps and sends triangles to exact complexes; preservation of products is an additional assumption. |
| `Mathlib/CategoryTheory/Triangulated/Yoneda.lean:42` | Additive represented functors and their homological instances; opposite represented instance at 50. |
| `Mathlib/RingTheory/Finiteness/Projective.lean:28` | `Module.Finite.exists_comp_eq_id_of_projective` gives actual finite free splitting maps, with finite/projective hypotheses. |
| `Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean:132` | Inhomogeneous chain differential's inverse first-face action; numerical C₃ probe above. |
| `Mathlib/CategoryTheory/FiberedCategory/Fibered.lean:55` | Prefibred Cartesian lifts, with composition added for the fibred predicate. |
| `Mathlib/CategoryTheory/Monoidal/Skeleton.lean:60` | Iso-class monoid; commutative instance at 80, induced maps at 111 and 128. |
| `Mathlib/RingTheory/AdicCompletion/AsTensorProduct.lean:327` | `AdicCompletion.ofTensorProductEquivOfFiniteNoetherian`, with finiteness/Noetherian hypotheses retained. |
| `TauCeti/AlgebraicTopology/EilenbergMacLane/Basic.lean:59` | `IsAspherical` means path connected and π_(n+2) trivial; no CW/separation assumption. `IsEilenbergMacLaneSpaceOne` at 123 adds the π₁ identification. |
| `TauCeti/AlgebraicTopology/LocalCoefficient.lean:43` | Local systems are functors on the fundamental groupoid with ModuleCat values. |
| `TauCeti/AlgebraicTopology/Singular/Twisted/Basic.lean:600` | `twistedHomologyMap` has pulled-back source coefficients and is induced by the actual chain map. |
| `TauCeti/Topology/Homotopy/HomotopyGroup/Map.lean:120` | Based `map`, and `mapHom` at 222. |
| `TauCeti/Topology/Homotopy/HomotopyGroup/FundamentalGroupAction.lean:121` | Transport action; its degree-one conjugation formula at 200 and map equivariance at 286. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Split.lean:446` | `SplitK0.grothendieckAddGroupEquiv`, the existing algebraic component completion. |
| `TauCeti/Algebra/Module/Torsion/TateModule.lean:115` | Compatible torsion families with multiplication-p transitions, not quotient reduction. |
| `TauCeti/LinearAlgebra/BilinearForm/Isometry.lean:153` | Form-preserving linear-equivalence subgroup, without positivity or invertibility of 2. |
| `TauCeti/Topology/Homotopy/Extension/Basic.lean:201` | HEP cylinder retraction; cross-universe extension at 228. Closed-image restrictions in the realization targets are additional. |

**Ownership and suppliers.** Shape examples: main ClassifyingSpaces and GeneralizedCohomology. Object searches used `roadmaps grep`/`roadmaps show`, pins, main, board packages and supplied sibling heads. No acceptance-name collision was found. Category/comma comparisons, plus, fraction completion and ordinary Waldhausen S belong here; group classifiers, algebraic completion and general spectra retain their suppliers. R05 is the generic-group exception.

| Resolved owner and locator | Contract checked |
| --- | --- |
| `TauCetiRoadmap/AlgebraicTopology/README.md:817`, 1819, 1870, 1911 | 4.7 realization CW; 8.8 raw nerve/group classifier and normalized comparison; 8.9 relative twisted obstructions; 8.10 ordinary representability. Broader Stage 1–6 citations retain their chain/CW/fibration/cohomology scope. |
| `Completed/UniversalCovers/README.md:63`, 89, 98, 126, 139 | Stage 0 action/deck carriers, Stage 1 deck comparison with opposite convention, Stages 2–4 subgroup covers/normalizers, higher π and recognition. |
| `TauCetiRoadmap/ClassifyingSpaces/README.md:110`, 177, 222 | Join classifier, model uniqueness, free resolutions and bar-chain homotopy comparison; no literal equality of the join and one-vertex bar model. |
| `TauCetiRoadmap/DGFloer/README.md:461`, 481, 522, 612, 650 | CW/weak invariance, fibration LES, absolute Serre sequences, filtered complexes and EM/Serre-class inputs. The relative-fibre sequence is absent: R03. |
| `TauCetiRoadmap/GeneralizedCohomology/README.md:213`, 533, 717, 773, 785, 878, 913, 1559 | G2.1–G2.10 convenient categories, spectra/models, Γ-machine, HA and raw mapping paths; G3.4/G3.7–G3.10 limits, covers/completion and mapping Milnor; G5.4–G5.6 Bott and rational comparisons. Read the coefficient-power and lexicographic permutation clauses against §§7.2/7.7 and 4.15/4.30. |
| `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1403` | §1.T.1 owns `ModuleTower.limOne`, `Tower.toModuleFunctor`, `Tower.limComparison`, `Tower.limOneComparison` and boundary-normalized tower algebra. All four resolver leads exist literally here. |
| `TauCetiRoadmap/GrothendieckEulerForms/README.md:238` | Split K₀, additive universal invariant and algebraic group-completion comparison. |
| `TauCetiRoadmap/IntegralLattices/README.md:509`, 552, 785, 1643 | 0A forms/sums, 0E signatures, 2C orthogonal groups without definiteness except in the finiteness assertion, 6A indefinite unimodular classification. |
| `Completed/OrthogonalSpinGroups/README.md:368` (main) | 0C requires 2 invertible for the quadratic dictionary, but gives bilinear base change over a ring. No inverse of 2 over ℤ is inferred here. |
| `TauCetiRoadmap/BordismFormalGroups/README.md:735`, 2064, 2133, 2145 | F6.2 little-2-cubes; F6.5 Sp∞, infinity operads and monoidal localization. `spectraInfinityCategory` is explicitly notation, not a claimed pinned declaration. |
| `TauCetiRoadmap/EllipticCohomology/README.md:996` | MU-specific E4.A and reusable enriched-presheaf/localization machinery; §7.31 owns the HF₂ extension and tests S/2. |
| `TauCetiRoadmap/AlgebraicKTheory/README.md:73`, 200, 493 (supplied new-folder head) | A0 finite-projective/right-module algebra and complements; A1 stable GL/elementary algebra; A5 matrix-specific Steinberg extension. |
| `TauCetiRoadmap/TangentialBordism/README.md:726`, 775 (supplied new-folder head) | B4.1 squares; B4.2 HF₂ operations and Adams tower, with derived-completion versus tensor-completion distinction. |
| `TauCetiRoadmap/RepresentationTheory/InductionRestriction/README.md:741` | Existing main owner of arbitrary-perfect-group universal central extensions: R05. |

The citation resolver's other four leads are this file's actual `IsAcyclicMap.iff_homology` and `IsPlusConstruction` theorem names, so none is a missing declaration. They must not be turned into findings from resolver output alone.

The provided `TauCetiRoadmap/StableHomotopyKTheoryPartII/README.md:7,43` and `TauCetiRoadmap/ChromaticHomotopyTheory/README.md:99` consume the present base/postnikov/completion interfaces. Board `packages/RefinedTraceMethods/README.md:1825` constructs K-theory of stable infinity categories and compares it to Waldhausen models, a different extension from the ordinary Waldhausen construction here. Board `packages/K3BlochGroups/README.md:9` consumes the generic plus/UCE comparison and ring-specific Steinberg extension. The low-stem calculations also occur in later HomotopySpheres §9.1: because the coefficient theory here needs them before that consumer, their supplying ownership is placed here and the later calculation should consume it; this does not authorize an upward dependency. Ownership against unavailable open heads was not checked. The downstream-only GeneralAlgebraicKTheory and GeometryOfNumbersAndQuadraticArithmetic section claims cannot be certified from an absent main folder or an unprovided base head; see below.

## Not verifiable

- BF, Appendix B, B.3/B.3.1/B.4, pp.119–128 (§§2.24–2.25): the cited nLab host was not accepted by the sources service; the located Rochester institutional PDF timed out. No legal extracted text was obtained.
- Adams1966, Theorem 2.1 (§7.31): the Cambridge DOI landing page requires access; no legal full text was obtained. Readable BHS quotations do not certify the original proof or numbering.
- Thomason, Theorem 1.2 (§2.29): Cambridge DOI page, no legal full text obtained. The other available accounts do not certify the original locator.
- WaldhausenFreeProducts, Lemma 5.2 (§2.24): bibliographic lookup failed; the institutional Part II repository was found, but its fetch stalled and was stopped. The separate K-theory-of-spaces text was readable.
- RW, Theorem 1.1, Corollary 1.2, Proposition 3.1 (§§4.17–4.18): both author-page URLs failed certificate verification. No bypass was attempted. R01's component counterexample does not depend on reading this text.
- BarrattEccles: the service returned `uncertified` for a paywalled citation. It is not a new missing-text request.
- The η/self-braiding refinement at the cited §5.19 locator remains unsupported there (R07), although its graded-line value was computed. The Patel author edition obtained places the equivalence in §5.1, rather than BS's reference to §3; this is a version-numbering difference, not evidence of a mathematical error.
- S I Example 3.50 explicitly leaves structure maps and the positive-Ω argument as unfinished placeholders. Waldhausen §1.3, lines 478–516, supplies the structure-map construction and points to additivity; the unfinished book-project passage alone is not a complete proof of the symmetric-spectrum assembly.
- The downstream table's exact base-roadmap sections in GeneralAlgebraicKTheory and GeometryOfNumbersAndQuadraticArithmetic were not available on the supplied main checkout or as supplied base heads. Their Part II folders are not substitutes. These are consumer-side claims, not claimed missing suppliers of the present targets.

All 33 referenced works were attempted through the source service, with retries at legal author/institutional locations. The five unresolved text requests are collected in `needs-references.toml`; no roadmap manifest was changed. Access limits are recorded without parking this review or guessing the texts' contents.

## Source issues

- **Misprint** in H AT at §4.K, printed p.479: the source says the homotopy-fibre inclusion uses a constant path at the source point; it should be the constant path at its image b in the base; affects nothing.
- **Gap** in H SS 1 at Proposition 1.12, printed p.20: the source says two homology isomorphisms imply the third but explicitly omits the base-and-total-to-fibre proof; it should include that implication's comparison argument or cite its precise proof; affects the proof.
- **Misprint** in BS at Remark 12.11, printed p.58: the source says π₀ΩBX equals π₁X; it should be π₁BX, as discrete X=ℤ gives ℤ rather than zero; affects nothing.
- **Misprint** in S at II Proposition 5.14 proof, printed p.261: the source says evaluation has codomain R(G); it should be E(G); affects nothing.
- **Gap** in S at I Example 3.50, printed pp.56–57: the source says the iterated-S identifications, structure maps and positive-Ω assertion with unfinished placeholders; it should supply the identifications, structure-map construction and cited additivity argument; affects the proof.
- **Misprint** in W IV at Proposition 2.7, printed p.IV.21: the source says both coprime coefficient factors use q₁; it should use q₁ and q₂ respectively; affects nothing.
- **Misprint** in W IV at §2.9, printed p.IV.22: the source says the Tate module of K₁(ℂ) supplies K₁(ℂ;ℤ_ℓ); it should contribute in degree two because the Tate term uses the preceding homotopy group; affects a stated result.
- **Error** in W IV at Scholium 2.8.1, printed p.IV.21: the source says vanishing positive even and negative homotopy suffices for all exceptional coefficient products; it should impose the Hopf-action and low-modulus product obstructions; τ≤₁S already fails at modulus two; affects a stated result.
