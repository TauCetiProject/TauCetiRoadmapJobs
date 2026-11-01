# Review of StableHomotopyKTheory (pull request #1227 at bfc4b59)

**Verdict:** needs changes

## R01 (P1) — The fibre–cone sign contradicts its counit Check

**Location:** `TauCetiRoadmap/StableHomotopyKTheory/README.md:2019`, with the Check at line 2025: “h_*(S¹∧δ_F(y))=−i_*(y)” and “h:S¹∧ΩY→Y is the counit”.

**Claim:** These two normalizations are incompatible with §5.3's boundary, which is the loop inclusion followed by inverse loop shift.

**Witness:** Take f:0→Y with Y a Kan Ω-model of ΣHℤ and y=1∈π₁Y=ℤ. The counit sends the suspended boundary to +1; the displayed equation requires −1. These are different integers.

**Repair:** Keep the displayed negative boundary convention and identify h, under the loop/fibre identification used for δ_F, with the counit precomposed with loop reversal. Specify the endpoint adapter between §5.7's fibre and S's basepoint-to-f(x) fibre, and use it for both δ_F and h. Replace the first Check's “cone boundary” by the actual map h. Add the integer computation above as a Check: the repaired composite is −1=−i_*(1), while the ordinary counit gives +1 and is rejected. S I (2.16), Proposition 2.17, printed p. 29 explicitly reverses the loop in this map: S lines 1431–1468. The underlying stable-equivalence claim is unaffected.

## R02 (P2) — The Ind reduction needs a restricted descent, not a functor back to arbitrary C

**Location:** `TauCetiRoadmap/StableHomotopyKTheory/README.md:2711`: “This Ind(C′) is presentable and Eₘ-monoidal, and its functor to C is fully faithful on C′.”

**Claim:** Under the stated assumption that C is stable and stably Eₘ-monoidal, C need not admit filtered colimits. The exact monoidal comparison back to C used by the cited reduction is then unavailable. Section 7.32 inherits this proof-route defect.

**Witness:** Take C=Perf(ℚ), I=0, v=0. In Ind(C′), X=⊕ℕℚ satisfies X≅ℚ⊕X. Any exact comparison extending C′→C would force dim H⁰F(X)=1+dim H⁰F(X), impossible for a perfect complex.

**Repair:** Perform the presentable construction in Ind(C′), then restrict to its fully faithful monoidal subcategory C′ before descending to C. The underlying quotients 1/v^q and all their finite tensor powers lie in C′; use full faithfulness on their operation mapping spaces to transport the Eₙ structures and tower maps. Do not assert an exact functor from the whole Ind-completion to arbitrary C, and do not narrow the general quotient theorem to presentable categories. On the witness, each quotient is ℚ and descends with its ordinary unit/product, while the infinite sum X is never mapped back. Bu Remark 1.6, p. 2 (Bu lines 63–90), asserts a left adjoint without the needed cocompleteness; the stated definition of stably monoidal asks only for preservation of finite (co)limits.

## R03 (P3) — Give the CW-type definition its API and Checks

**Location:** `TauCetiRoadmap/StableHomotopyKTheory/README.md:37`: “Write `HasCWType X` when X is homotopy equivalent to a Hausdorff CW complex.” The corresponding definition is at `TauCetiRoadmap/StableHomotopyKTheory/Suggested.lean:144`.

**Claim:** This kept definition has neither an API list nor three discriminating Checks. Its distinction from weak CW approximation matters to the plus statements.

**Witness:** The displayed predicate contains homotopy equivalence and a separate T2 condition. Every space has a weak CW approximation; this does not imply CW type. ℚ with its usual topology is a counterexample.

**Repair:** Add homotopy-equivalence invariance and the Hausdorff-CW implication, with at least these Checks: the empty space has CW type; S¹ has CW type; usual-topology ℚ does not. For the last computation, a homotopy equivalence to a CW complex would make every singleton of ℚ open: homotopies in ℚ are constant and CW components are open. Thus the proposed negative control distinguishes homotopy equivalence from weak equivalence. Keep these in the README, without adding Lean padding.

## Previous findings, checked first

All eight findings from the review of 30f4891 are repaired. The quotations below are from this head, not inferred from the change summary.

| Previous finding | Current passage and status | Verification |
| --- | --- | --- |
| R01, telescope component | §4.17: “The full telescope maps acyclically to each whole target, inducing the group-completion bijection on components.” Repaired. | For the monoid ℕ, a stage-r element k has invariant k−r∈ℤ. The whole telescope has π₀=ℤ, and only its zero component targets the unit component. |
| R02, conjugator track | §1.31: “For h=a≠1 the same endpoint maps are joined by a homotopy whose track represents a, not 1”. Repaired. | In C₃, both endpoint homomorphisms are id, but tracks are 1 and a. |
| R03, relative Serre input | §3.6: “Construct the relative fibre Serre spectral sequence”. Repaired. | The mapping-cone construction is now local, supplied by the absolute filtrations and filtered-complex pages. Over a point, *→S¹ gives H₁(cone)=ℤ on both sides. The first-nonzero-row argument uses a nonzero trivial quotient, not falsely trivial relative monodromy. |
| R04, unstable subtraction | §3.18: “use the homotopy equalizer of shift and identity on P=∏Xₙ”. Repaired. | Constant S² tower: π₂ holim=ℤ, lim¹π₃=0. A putative difference map would give (a−b)²=−2ab≠0. |
| R05, abstract central-extension ownership | §3.29 imports “RepresentationTheory/InductionRestriction Layer 7”. Repaired. | That main-branch supplier, README line 741, owns the free-presentation universal extension. Local work is the H₂/superperfect/plus-fibre comparison. |
| R06, missing native headline | §5.17: “The theorem `cellularApproximation` states the generic approximation below on these native carriers”. Repaired. | `TauCetiRoadmap/StableHomotopyKTheory/Suggested.lean:268` states it with compactness, homologicality and product preservation. For G=ℤ[0], E=Hom(−,ℤ/2), evaluation at id on R=ℤ/2 is the identity of ℤ/2. |
| R07, self-braiding locator | §5.19 cites “JO Prop. 3.4 and Remark 3.5”. Repaired. | JO lines 397–438, arXiv v3 pp. 10–11, identify η-action with self-braiding. |
| R08, tree-presentation Checks | §1.22 now tests “[1]”, parallel arrows and “C₃”. Repaired. | Their presentations give 1, ℤ (reversing the edge sends 1 to −1), and C₃; omitting 2-simplex relations instead leaves a free group. |

## Verified sound

The review covered all 193 numbered targets, the standing conventions, supplier contracts, downstream interfaces, and all 24 Lean declarations (13 definitions and 11 theorems). The tables below record concrete tests, not proofs of the general targets. A passing row means the stated instance and its indicated negative control agree; R01 remains a contradiction and R02 identifies an unavailable comparison in the general proof route.

**Gate and elaboration.** The worker's gate at this head reports every scanner, dependency and targeted-build check zero/OK, including `stray-files`, `outside-folder`, `sorry-data`, `set_option` and `build`. An independent direct `lake env lean` run on `TauCetiRoadmap/StableHomotopyKTheory/Suggested.lean` exited 0, with only the 11 expected sorry warnings. The outside-folder diff is empty. No PR file was edited.

The required independent dependency command returned:

```text
depcheck: 205 roadmaps, 1466 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. No supplier gap is declared. Main-branch roadmaps were used at main; the new AlgebraicKTheory and TangentialBordism folders were checked at the permitted open heads. No later roadmap was treated as a supplier.

**Signatures and padding.** A scratch copy printed `#check @...` for all 24 declarations. Compared with their README statements, the elaborated types retain CW type, Hausdorffness where construction requires it, connectedness, normality, perfectness, asphericity, RCLike scalars, finite projectivity, compactness, and sums-to-products preservation. There was no lost section binder. Individual one-tactic attempts with `rfl`, `simp` and `infer_instance` left all 11 theorems admitted; object searches found no single pinned result giving any complete retained theorem. None is a boundary-value computation or a definition-restatement.

**Headlines.** The README's end/deep results are Quillen A/B; acyclicity via local coefficients; plus existence, factorization, recognition, π₂ and its universal-central-extension fibre; categorical homology; rational primitive Hurewicz; homotopy group completion and stable linear/orthogonal plus comparisons; simplex function-ring projective freeness and topological K-theory; generic and spectral cellular approximation; Picard/spectral and derived-category comparisons; Waldhausen delooping and BPQS; Moore UCT, completion, rational classification, fracture and filtered/tower convergence; and coherent quotient/Moore Eₙ structures. The statable native versions are the 11 theorems listed above, including both forms of Quillen B. The module docstring names the remaining families and the missing category-chain, fraction-category, primitive-Hurewicz, spectral, Waldhausen/S, operadic, deformation and synthetic carriers. No replacement proposition was substituted for these carriers.

**Pinned declarations opened.** Pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

| Declaration/object | File and line at the pin | What was checked |
| --- | --- | --- |
| `nerve`, `nerveMap`, `nerveFunctor` | `Mathlib/AlgebraicTopology/SimplicialSet/Nerve.lean:37`, 55, 74 | Native composable-arrow nerve; no new nerve carrier is necessary. |
| `SSet.toTop`, `sSetTopAdj` | `Mathlib/AlgebraicTopology/SingularSet.lean:65`, 73 | Realization and its singular adjunction; the vertex uses the unit. |
| `SSet.skeleton`, nondegenerate membership | `Mathlib/AlgebraicTopology/SimplicialSet/Skeleton.lean:48`, 76 | Cells have dimension strictly less than the index; n+1, not n, realizes to the topological n-skeleton. |
| `Topology.CWComplex` | `Mathlib/Topology/CWComplex/Classical/Basic.lean:135` | The class itself does not include a T2Space field. The Lean CW-type adapter adds it. |
| `PathConnectedSpace` | `Mathlib/Topology/Connected/PathConnected.lean:577` | Includes nonemptiness; the empty space is not acyclic. |
| `ContinuousMap.unitsLift` | `Mathlib/Topology/ContinuousMap/Units.lean:37` | Genuine continuous unit-valued functions, with both inverse equations. |
| `Module.Finite.exists_comp_eq_id_of_projective` | `Mathlib/RingTheory/Finiteness/Projective.lean:28` | Finite free splitting, not freeness over an arbitrary ring. |
| `Pretriangulated`, `IsTriangulated` | `Mathlib/CategoryTheory/Triangulated/Pretriangulated.lean:65`; `Triangulated.lean:299` | Native triangle and octahedral infrastructure for §5.17. |
| `Functor.IsHomological` | `Mathlib/CategoryTheory/Triangulated/HomologicalFunctor.lean:80` | Exactness and zero-map preservation; no infinite-product preservation is implicit. |
| `preadditiveCoyoneda` | `Mathlib/CategoryTheory/Preadditive/Yoneda/Basic.lean:84` | Additive represented functor into abelian groups. |
| `ofTensorProductEquivOfFiniteNoetherian` | `Mathlib/RingTheory/AdicCompletion/AsTensorProduct.lean:327` | Finite module and Noetherian ring assumptions retained. |
| `IsAspherical`, `IsEilenbergMacLaneSpaceOne` | `TauCeti/AlgebraicTopology/EilenbergMacLane/Basic.lean:59`, 123 | Path connectedness, vanishing higher groups, and an actual π₁ isomorphism. |
| `homotopyGroupEquivOfPath` | `TauCeti/Topology/Homotopy/HomotopyGroup/BasepointChange.lean:349` | Inverse uses the reversed path. |
| `homotopyGroupMulAction` | `TauCeti/Topology/Homotopy/HomotopyGroup/FundamentalGroupAction.lean:134` | Left action agrees with the reversed concatenation convention for fundamental-group multiplication. |
| `SplitK0.grothendieckAddGroupEquiv` | `TauCeti/CategoryTheory/GrothendieckGroup/Split.lean:446` | Algebraic group completion already exists and is cited. |

**Ownership and citation audit.** Object searches used the roadmap service across main/open heads, searches of the board packages, and the pinned libraries. Searches included category nerves, relative fibre Serre sequences, perfect radicals/plus, universal central extensions, group completion, semistability, cellular approximation, Waldhausen constructions, Moore spectra and synthetic filtrations. The own namespace/function-name search found no duplicate fully qualified declaration in another readable roadmap. The eight citation-scanner leads resolve: four are this file's declared theorems, and the four tower names belong to DerivedModuleAlgebra §1.T.1's planned API, not to an asserted pinned implementation.

| Resolved supplier | Repository-relative witness | Ownership boundary checked |
| --- | --- | --- |
| AlgebraicTopology | `TauCetiRoadmap/AlgebraicTopology/README.md:817`, 1819, 1870, 1911 | §4.7 CW realization, §8.8 group nerve classifier, §8.9 relative obstruction theory, §8.10 ordinary representability. Local skeleton/category-chain adapters remain distinct. |
| GeneralizedCohomology | `TauCetiRoadmap/GeneralizedCohomology/README.md:213`, 302, 405, 432, 533, 717, 773, 785, 878, 1559, 2212 | G2 spectra/models/Γ/HA/path fibres; G3 telescopes, truncations and completion; G5 Bott and rational Hurewicz. Local claims are specified comparisons/extensions. |
| UniversalCovers; ClassifyingSpaces | `Completed/UniversalCovers/README.md:80`, 91, 107; `TauCetiRoadmap/ClassifyingSpaces/README.md:141`, 179, 224 | Cover/deck conventions, classifier uniqueness and group-homology comparison. |
| DGFloer | `TauCetiRoadmap/DGFloer/README.md:453`, 461, 612, 650 | Absolute Serre filtrations, filtered complexes, Hurewicz/Serre classes. The relative fibre-cone construction is owned locally in §3.6. |
| RepresentationTheory/InductionRestriction | `TauCetiRoadmap/RepresentationTheory/InductionRestriction/README.md:741` | Abstract universal central extensions are imported; homological/plus refinements are local. |
| DerivedModuleAlgebra | `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1403`, 1450, 1510 | Integral tower adapters, difference-map normalization, lim¹ and six-term maps. |
| GrothendieckEulerForms | `TauCetiRoadmap/GrothendieckEulerForms/README.md:238` | Split K₀ universal invariant, distinct from its space realization. |
| IntegralLattices; OrthogonalSpinGroups | `TauCetiRoadmap/IntegralLattices/README.md:509`, 552, 785, 1643; `Completed/OrthogonalSpinGroups/README.md:368` | Integral orthogonal sums/signatures, indefinite classification and bilinear base change; J-stabilization/plus is local. |
| BordismFormalGroups | `TauCetiRoadmap/BordismFormalGroups/README.md:735`, 2068, 2135, 2556 | Little-2-cubes, Sp∞, symmetric coherence and arithmetic square. |
| EllipticCohomology | `TauCetiRoadmap/EllipticCohomology/README.md:1006` | MU synthetic site and reusable enriched localization/Day machinery; §7.31 proves the different HF₂-site hypotheses. |
| AlgebraicKTheory, permitted open head | `TauCetiRoadmap/AlgebraicKTheory/README.md:73`, 200 | A0 finite projectives and A1 stable matrix algebra, including zero rings and opposite-ring adapters. |
| TangentialBordism, permitted open head | `TauCetiRoadmap/TangentialBordism/README.md:726`, 775 | B4.1 squares and B4.2 stable HF₂ operations/Adams tower. |
| Later consumers, not suppliers | `TauCetiRoadmap/StableHomotopyKTheoryPartII/README.md:5`, 159; `TauCetiRoadmap/ChromaticHomotopyTheory/README.md:545`, 575 | Tate/Singer and generalized Serre/fibrewise E-homology are later extensions. Neither is needed to construct the local integral relative sequence. |

No re-planning of an existing main-branch StableHomotopyKTheory folder was found. The new comparisons are owned here; the similarly named Part II explicitly starts after Layers 5–7. No algorithmic milestone, copied source passage, sorry'd data or option override was found in the reviewed folder.

**Seeded source sample: 15/15 sampled targets checked against source text at the stated locators.** Sources were obtained through the sources service from legal author/institutional/arXiv copies. WIV's initial redirect classification failure was resolved by fetching the author's direct Rutgers URL with its licence class. No source manifest was edited. The README has no additional locator explicitly flagged unverified.

| Target | Source text and locator read | Hypotheses/support |
| --- | --- | --- |
| 1.3 | WIV lines 1053–1055, 1111–1115; Characterization 3.1(4)–(5), p. IV.24; Definition 3.1.4, p. IV.25 | One cell per nondegenerate simplex; Mathlib's separate indexing check supplies n+1. |
| 1.30 | WIV lines 1091–1094, 1246–1258; Example 3.1.3, p. IV.25; Applications 3.4.1–2, p. IV.28 | Group-nerve classifying space and coverings; the actual named-model comparison is supplied by AlgebraicTopology 8.8. |
| 1.31 | WIV lines 1122–1125; natural-transformation realization, p. IV.25 | The conjugator is the component of the transformation; abelian target does not make its track constant. |
| 2.31 | Q lines 350–353; Theorem A, p. 93 | Contractible comma categories, with the opposite-category argument for the other orientation. |
| 2.35 | WIV lines 1469–1476, Corollary 3.8.1, p. IV.32; Q lines 528–539, corollaries, p. 97 | Prefibred/base-change hypotheses, not arbitrary strict fibres. |
| 4.27 | HKIII lines 2533–2545; §3.2, pp. 54–55 | Symmetric unimodular integral forms, signature ℤ², stabilized orthogonal commutator and classical plus model. |
| 4.29 | Sch lines 4506–4513, 4611–4640; Lemma 10.1, p. 90 and proof pp. 92–93; Proposition 10.2, pp. 90–91 | The contractible-simplex argument treats finite projectives themselves, not merely their K₀ classes. GL comparison uses continuous functions and singular simplices. |
| 5.4 | S lines 1908–1950, 9387–9393; I Definition 3.14, Propositions 3.15–3.16, pp. 38–39; Example 8.30 | Semistability criterion and closures; free positive-level spectra provide the negative control. |
| 6.1 | S lines 2754–2843; I Example 3.50, pp. 55–57; WIV lines 3138–3156, 3236–3249, §8.3 and §8.5.5, pp. IV.67, IV.69 | Waldhausen cofibration cubes, symmetric iteration and positive delooping. The README separates raw level zero from Ω replacement. S's unfinished details are recorded below. |
| 6.3 | WIV lines 2043–2057; Theorem 4.9.3, p. IV.43; S lines 2842–2843, I Example 3.50, p. 57 | Finite-set group completion gives the sphere infinite-loop space. The README's finite-pointed-set wedge filtration supplies its Waldhausen comparison; it explicitly excludes the false degreewise additive-category comparison. |
| 7.12 | S lines 15093–15190; II Construction 6.39, Eq. (6.42), Theorem 6.43, pp. 285–286 | Arbitrary abelian A; Ext¹(A,π₁X), not π₀X, is the mapping kernel. Bounded p-primary torsion makes its torsion tower pro-zero; it does not annihilate each finite Ext group. |
| 7.14 | S lines 16144–16170; II Remark 9.8/Theorem 9.9, pp. 303–304 | Completion/function-spectrum model. The displayed tower criterion follows from the specified S[1/p] telescope and the supplied G3.9 criterion; Remark 9.8 alone is not that criterion. |
| 7.19 | S lines 16063–16090; II Theorem 9.6, p. 302 | All integer degrees and arbitrary source A into a rational generalized EM spectrum; no finite-type restriction. |
| 7.21 | HA lines 2019–2027; Definition 1.2.2.9, p. 52 | Coherent filtered objects and relative cofibres; coherence is not replaced by an SHC-valued diagram. |
| 7.24 | HA lines 2048–2089; Proposition 1.2.2.14 and proof, pp. 52–53 | Sequential-colimit-compatible t-structure and left-bounded filtration. These hold in spectra; no connective-spectrum assumption is needed. Eventual vanishing of exiting differentials is distinct from finite-page stabilization. |

Additional repaired/deep-source checks: JO Proposition 3.4/Remark 3.5 (v3, pp. 10–11, lines 397–438), S II Proposition 5.14 (pp. 260–261, lines 13781–13844), S I (2.16)/Proposition 2.17 (p. 29, lines 1431–1468), and Bu Remark 1.6 with its finite-colimit convention (p. 2, lines 63–90).

**Computed adversarial pass.** Entries use the README target numbers. Zero means a zero group/object as appropriate; ∅ means an empty space/set. “Pass; retain” is limited to the explicit computation and its hypotheses. Negative controls deliberately violate the indicated hypothesis. The two extra convention rows cover the CW-type and universal-extension adapters (195 rows total).

| Statement | Instances tried | Computed sides / wrong-model control | Result; change |
| --- | --- | --- | --- |
| CW-type convention | ∅, S¹, usual ℚ | True, true, false; weak CW approximation exists also for ℚ. | R03: add API/Checks. |
| Universal-extension adapter | 1→1; ℤ→1 | First has unique lifts. Second has both zero and id lifts into ℤ→1, so uniqueness fails. | Pass; retain. |
| 1.1 Category classifying space/maps/vertex | Empty category; terminal category; id | B∅=∅; B1=* with its unique vertex; B(id)=id. A constant point model fails the first value. | Pass; retain. |
| 1.2 Boundary inclusion | n=0,1,2 | ∂Δ⁰=∅→*; ∂Δ¹=2 points→I; ∂Δ²=S¹→D². | Pass; retain. |
| 1.3 CW realization | Δ², Δ⁰, BC₃ | Cell counts (3,3,1), (1,0,0,…), and two 1-cells. Skeleton 1 of Δ¹ has 2 vertices; skeleton 2 has the edge. | Pass; retain. |
| 1.4 Local contractibility | Vertex and interior of Δ¹ | Small relative intervals contract to the chosen point; two separate vertices cannot be contracted together inside their disjoint neighborhoods. | Pass; retain. |
| 1.5 Monomorphism realization | ∂Δ¹→Δ¹; fold 2→1 | First realizes to a closed 2-point subcomplex. Fold identifies 2 vertices, is not mono and is not an embedding. | Pass; retain. |
| 1.6 Compact containment | A finite edge; infinite discrete vertices | Edge lies in its 3-cell finite subcomplex; all infinitely many discrete vertices are not compact. | Pass; retain. |
| 1.7 Opposite | [1] | Reverse-arrow realization uses t↦1−t; applying twice gives t, endpoints 0↔1. | Pass; retain. |
| 1.8 Ordinary product comparison | [1]×[1] | Nerve realizes as the two-triangle square; product is I², with four vertices on both sides. | Pass; retain. |
| 1.9 Kelley product | Point×BC₃; empty×BC₃ | Both give BC₃, respectively ∅; k-ification preserves these values. | Pass; retain. |
| 1.10 Natural transformation | 0⇒1 in [1] | Realized homotopy traces I from vertex 0 to vertex 1, not a constant vertex. | Pass; retain. |
| 1.11 Adjunction | [1]→1 with terminal right adjoint | B[1]=I and B1=*; composite at [1] is constant at 1, homotopic to id_I. | Pass; retain. |
| 1.12 Initial/terminal | [1]; empty category | I contracts; empty has no initial/terminal object and B∅ remains empty. | Pass; retain. |
| 1.13 Filtered category colimit | Finite discrete subsets of ℕ | At every simplicial degree both sides have underlying set ℕ, with only degenerate higher simplices. | Pass; retain. |
| 1.14 Homotopy and filtered colimit | Increasing finite discrete categories | π₀ colimit=ℕ on both sides; every positive group at a chosen vertex=0. | Pass; retain. |
| 1.15 Equivalence-transition colimit | Constant identity system BC₃ | Colimit and each term have π₁=C₃, πₙ=0 for n≥2. | Pass; retain. |
| 1.16 Filtered categories | Directed poset ℕ; empty category | Bℕ has π₀={*}, higher π=0. Empty fails the nonempty part of filteredness and has π₀=∅. | Pass; retain. |
| 1.17 Homology colimit | Increasing finite discrete sets | H₀ colimit=⊕ℕℤ=colim ℤⁿ; positive H=0 on both sides. | Pass; retain. |
| 1.18 Components | [1]; discrete two objects | Zigzag quotient and π₀ give 1 and 2 elements respectively. | Pass; retain. |
| 1.19 Simplicial covering | Two disjoint copies of Δ¹→Δ¹ | Every point has two lifts; realization is 2×I→I, not a branched interval. | Pass; retain. |
| 1.20 Cover classification | BC₃ with regular C₃-set; singleton action | Fibres have 3 and 1 points; total spaces are contractible and BC₃ respectively. | Pass; retain. |
| 1.21 Groupoid localization | [1]; one-object S₃ | Automorphism group after inversion is 1 and S₃; π₁ gives the same, not S₃ abelianization C₂. | Pass; retain. |
| 1.22 Tree presentation | [1]; two parallel arrows; C₃ | π₁=1, ℤ, C₃. Reversed surviving edge gives −1; omitting 2-cells in C₃ gives F₂ instead. | Pass; retain. |
| 1.23 Local systems | Circle, transport −1 on ℤ | Going twice around gives +1; constant transport instead gives +1 after one circuit. | Pass; retain. |
| 1.24 Category chains | Terminal category with coefficient M; [1] with ℤ→0 | Normalized terminal complex is M in degree 0. Second complex is ℤ→ℤ with differential −id, hence zero homology. | Pass; retain. |
| 1.25 Derived colimit | [1] with ℤ→0; discrete two objects | H₀=0, higher=0 in first; H₀=M⊕N, higher=0 in second, matching derived colimit. | Pass; retain. |
| 1.26 Twisted cellular chains | Circle with transport −1 | Boundary on the positive generator is −1−1=−2; kernel=0, cokernel=ℤ/2. Constant transport gives boundary 0. | Pass; retain. |
| 1.27 Topological/category homology | Bℤ, trivial and sign coefficients | Trivial: H₀=H₁=ℤ. Sign: H₀=ℤ/2,H₁=0. Both models agree. | Pass; retain. |
| 1.28 Translation category | Regular S₃-set; singleton S₃-set | Stabilizers 1 and S₃ give contractible realization and BS₃; orbit sets each have one element. | Pass; retain. |
| 1.29 Nerve asphericity | G=1,C₃,S₃ | π₁=1,C₃,S₃ respectively; all πₙ, n≥2, vanish. | Pass; retain. |
| 1.30 Classifier comparison | G=C₃,S₃; trivial homomorphism | Both classifiers have π₁=G; comparison induces id_G, and trivial homomorphism induces the trivial π₁ map. | Pass; retain. |
| 1.31 Conjugate maps | C₃, h=1,a; S₃, h=(12) | C₃ endpoint maps both id but tracks 1,a. In S₃ conjugation sends (123) to (132). | Pass; retain. |
| 1.32 Nerve/bar convention | S₃, g=(12),h=(23) | Native composite is hg=(132); inverted entries multiply g⁻¹h⁻¹=(123)=(hg)⁻¹. Reversing the tuple would give the wrong cycle. | Pass; retain. |
| 1.33 Groupoid Kan | One-object C₃; [1] | Outer horns in C₃ fill using a⁻¹=a². The horn demanding an inverse to 0→1 in [1] has no filler. | Pass; retain. |
| 1.34 Groupoid 1-types | Disjoint union BC₂⊔BC₃ | π₀ has 2 elements, π₁ at them C₂,C₃, and π₂=0. It is not a connected K(G,1). | Pass; retain. |
| 2.1 Weak equivalence | id; ∅→*; degree-2 S¹ map | id passes; ∅→* fails π₀; degree 2 has π₁ map ℤ→ℤ, n↦2n, not surjective. | Pass; retain. |
| 2.2 Fibration relative groups | Path fibration PS²→S² | π₂(PS²,ΩS²)=π₁ΩS²=ℤ=π₂S²; boundary takes 1 to 1 under the chosen path convention. | Pass; retain. |
| 2.3 Strict/homotopy fibre | id of disconnected 2-point space; *→S¹ | First fibres are points. Second strict fibre=* but homotopy fibre has π₀=ℤ; the second map is not a fibration. | Pass; retain. |
| 2.4 Fibre boundary | *→S¹; id_S¹ | Loop class 1 goes to component 1 of ΩS¹; for id the target fibre is contractible and boundary=0. | Pass; retain. |
| 2.5 Fibre LES | Degree-2 cover S¹→S¹ | ℤ --×2→ℤ→π₀F=C₂ is exact, with residue map; π₁F=0. | Pass; retain. |
| 2.6 Pointed-set end/action | S₃/H cover, H=⟨(12)⟩ | Three cosets form a transitive S₃-set with stabilizer H. No quotient group S₃/H exists since H is not normal. | Pass; retain. |
| 2.7 Fibre transport | Reflection mapping torus of S¹ | One circuit acts by −1 on fibre H₁=ℤ; reverse circuit is also −1; composite=+1. | Pass; retain. |
| 2.8 Homotopy pullback | *→S¹←*; *→*←* | Pullbacks are ΩS¹ (π₀=ℤ) and *, whereas the first strict pullback is only *. | Pass; retain. |
| 2.9 Contractible base | X,Y over * | Homotopy pullback=X×Y; X=∅ gives ∅ and X=Y=* gives *. | Pass; retain. |
| 2.10 Pasting | Two successive identity squares | Each comparison and outer comparison is id; fibre at every point is *. | Pass; retain. |
| 2.11 Comma-to-fibre | Identity functor [1]→[1] | Each relevant comma category has terminal/initial object; classifying comma and homotopy fibre are contractible. | Pass; retain. |
| 2.12 Quasifibration | Product F×I→I; *→S¹ | Product strict/derived fibres both F. Second has * versus π₀ΩS¹=ℤ, so is not quasifibred. | Pass; retain. |
| 2.13 Excisive triad | Interval as overlapping subintervals | Both relative pairs contract, so every based relative group in the claimed range is 0→0. | Pass; retain. |
| 2.14 Open-cover criterion | Product F×S¹ covered by two arcs | Local and overlap fibres are F with identity transport; global strict/derived fibres both F. | Pass; retain. |
| 2.15 Exhaustion criterion | F×ℝ exhausted by F×[−n,n] | Each fibre comparison is id_F; every compact interval lies in a finite stage, giving the same global fibre F. | Pass; retain. |
| 2.16 Deformation criterion | F×I contracted over I to 0 | Transport F×{t}→F×{0} is id_F, so both π₀ and all πₙ maps are identities. | Pass; retain. |
| 2.17 Simplicial realization | Constant point; constant empty space | Realizations are * and ∅; degenerate simplices add no cells in either case. | Pass; retain. |
| 2.18 Diagonal/iterated realization | Δ¹ externally multiplied by Δ¹ | Diagonal realizes to the triangulated square; iterated realization to I², both with four vertices. | Pass; retain. |
| 2.19 Proper simplicial spaces | Constant discrete 2-point space | Degeneracies are identities, latching images closed; realization has exactly 2 points, not infinitely many simplicial copies. | Pass; retain. |
| 2.20 Finite limits | Constant finite spaces; two distinct maps *→2 | Products give 2×2=4 points; equalizer of the distinct maps is ∅ before and after realization. | Pass; retain. |
| 2.21 Gluing | Glue two intervals along one endpoint | Pushout is an interval; homotopy pushout is also contractible with π₀=1. Closed endpoint inclusions meet the hypothesis. | Pass; retain. |
| 2.22 Pushout product | ∂I→I with itself | Pushout product is ∂I²→I², a circle embedded as the square boundary, not the whole square. | Pass; retain. |
| 2.23 Level equivalence realization | Constant point→constant interval | Level maps and realized map *→I are weak equivalences; π₀=1, higher π=0 on both sides. | Pass; retain. |
| 2.24 Realized fibre sequence | Constant product fibration F×B→B | Realized fibre=F and fibre after realization=F; F=∅ preserves the empty case. | Pass; retain. |
| 2.25 π*-Kan square | Constant Kan groupoid BC₃ with identity square | Every comparison is id, π₁ map=id_C₃; [1] nerve fails the outer-horn hypothesis. | Pass; retain. |
| 2.26 Bousfield–Kan hocolim | Constant point over [1], discrete 2, empty index | Hocolimits I, 2 points, ∅; ordinary colimit would lose the I model but retains its homotopy type here. | Pass; retain. |
| 2.27 Proper realization/hocolim | Constant point simplicial diagram | Both realization and derived colimit are contractible; the simplex-indexing category has contractible nerve. | Pass; retain. |
| 2.28 Quasifibration over nerve | Constant discrete fibre 2 over [1] | Total realization=2×I; both strict and derived fibre have 2 components. | Pass; retain. |
| 2.29 Thomason comparison | Terminal-category diagram over C₃ | Grothendieck construction=C₃; hocolim of points=BC₃, π₁=C₃ on both sides. | Pass; retain. |
| 2.30 Functor homology SS | C→1; C=BC₃ as category | Only base column 0; E₂(0,q)=H_q(BC₃), so H₀=ℤ,H₁=C₃ on both sides. | Pass; retain. |
| 2.31 Quillen A | id_[1]; ∅→1 | Identity comma spaces contract and BI→BI is id. Empty comma for ∅→1 is not contractible; ∅→* is not an equivalence. | Pass; retain. |
| 2.32 Prefibred comparison | id_[1] | Fibre over each object is terminal; its comma inclusion has the expected adjoint with value that unique object. | Pass; retain. |
| 2.33 Prefibred A | Projection D×[1]→D | Each fibre=[1], B fibre=I; B(D×[1])→BD has contractible homotopy fibre. | Pass; retain. |
| 2.34 Quillen B, both orientations | 1→C₃; id_[1] | Comma spaces for 1→C₃ are discrete C₃; homotopy fibre ΩBC₃ also has 3 contractible components. Identity gives a point up to homotopy. | Pass; retain. |
| 2.35 Prefibred B | Grothendieck construction of constant C₃-category over [1] | Base change=id, strict fibre=BC₃, homotopy fibre=BC₃. A non-equivalent base change would violate the premise. | Pass; retain. |
| 2.36 Group extension | 1→C₃→S₃→C₂→1 | Fibre BC₃ has π₁=C₃; total/base π₁ sequence is precisely C₃↪S₃↠C₂, with π₂ base=0. | Pass; retain. |
| 3.1 Acyclic space | *, ∅, S¹ | Positive reduced H(*)=0 and π₀=1; ∅ fails nonemptiness; S¹ has H₁=ℤ≠0. | Pass; retain. |
| 3.2 Superperfect π₁ | Punctured Poincaré sphere | Reduced H=0, π₁=binary icosahedral group of order 120, H₁(group)=H₂(group)=0; acyclic does not mean simply connected. | Pass; retain. |
| 3.3 Acyclic maps | id; punctured Poincaré sphere→*; reverse inclusion *→that space | First two have acyclic fibres. Last has π₀ fibre of size 120, despite being an ordinary homology isomorphism. | Pass; retain. |
| 3.4 Perfect kernel | Acyclic punctured Poincaré sphere→* | π₁ map is 120-element perfect group→1, surjective with perfect kernel equal to the group. | Pass; retain. |
| 3.5 Regular-cover chains | Trivial principal C₃-cover of * | H₀ with regular coefficients=ℤ[C₃], rank 3, matching ℤ[G/H] for H=1; assuming connected total space would incorrectly give rank 1. | Pass; retain. |
| 3.6 Relative Serre construction/comparison | *→S¹ over *; identity; S¹×*→S¹×S¹ | Cone H₁=ℤ; identity cone H=0; product cone H₁=H₂=ℤ. E₂ entries (0,1),(1,1) are ℤ. Cone(id_ℤ) differential=+1, not 0. | Pass; retain. |
| 3.7 Local homology iff acyclic | id; *→punctured Poincaré sphere with regular coefficients | id induces isomorphisms. Negative control has H₀ source=ℤ¹²⁰, target=ℤ, so constant-coefficient equivalence is insufficient. | Pass; retain. |
| 3.8 Plus predicate | id_X at P=1; degree-2 S¹ map | First fibre is contractible, kernel 1. Second has kernel 1 but 2-point homotopy fibre, so fails acyclicity. | Pass; retain. |
| 3.9 Acyclic π₁-isomorphism | id_S¹; plus at P=1 | π₁=ℤ and higher π=0 on both ends; CW Whitehead gives homotopy equivalence. | Pass; retain. |
| 3.10 Plus existence | S¹,P=1; BA₅,P=A₅ | First plus can be id. Second gives π₁=1 and H₂=ℤ/2, so plus is not a contraction. | Pass; retain. |
| 3.11 Plus fundamental group | A₅ at all of A₅; C₃ at 1 | Quotients are 1 and C₃. Killing C₃ itself is inadmissible because C₃ is not perfect. | Pass; retain. |
| 3.12 Integral homology | BA₅→BA₅⁺ | H₀=ℤ,H₁=0,H₂=ℤ/2 before and after; collapsing to * would lose H₂. | Pass; retain. |
| 3.13 Pulled-back local coefficients | BC₃ plus at 1, regular module ℤ[C₃] | Identity comparison has H₀=ℤ and Hₙ=0 for n>0 on both sides, unlike constant coefficients with H₁=C₃. | Pass; retain. |
| 3.14 Abelian spaces | BC₃, BS₃, * | First/last have trivial π₁ action. In BS₃, (12) sends (123) to (132), so it fails the n=1 condition. | Pass; retain. |
| 3.15 Connected H-space | S¹, torus T² | π₁=ℤ,ℤ² respectively; conjugation is identity and higher groups vanish. A disconnected group fails the connectedness premise. | Pass; retain. |
| 3.16 Relative Hurewicz/covering | (D²,S¹); (S¹∨S²,*) | First π₂=H₂=ℤ with trivial action. Second relative π₂=ℤ[ℤ], action shifts basis e₀→e₁, so the trivial-action conclusion cannot be applied. | Pass; retain. |
| 3.17 Principal EM fibre | S¹×B→B; reflection mapping torus | Product is classified by zero k and has trivial action. Reflection acts −1 on fibre π₁=ℤ and fails the criterion. | Pass; retain. |
| 3.18 Postnikov/Milnor | Constant S²; discrete tails; Postnikov S² | Constant: π₂=ℤ,lim¹π₃=0. Tail holim=∅. P₁S² has π₂=0, P₂S² has π₂=ℤ. | Pass; retain. |
| 3.19 EM map classification | K(ℤ,1)→K(C₃,1) | Based homotopy classes and Hom(ℤ,C₃) each have 3 elements; composition with ×2 sends a to 2a. | Pass; retain. |
| 3.20 Principal Postnikov tower | S¹; S² | S¹ stabilizes at K(ℤ,1). For S² the P₂→P₁ fibre is K(ℤ,2), π₂=ℤ, with trivial π₁ action. | Pass; retain. |
| 3.21 Obstruction extension | Extend degree-d S¹→K(ℤ,1) across D² | Obstruction in H²(D²,S¹;ℤ)=ℤ is d; extension exists exactly at d=0. | Pass; retain. |
| 3.22 Maps into abelian spaces | BA₅→K(ℤ,2) versus BA₅⁺→K(ℤ,2) | Both H²=0 (H₁=0 and Hom(H₂,ℤ)=0); with C₂ coefficients both have H²=C₂. | Pass; retain. |
| 3.23 Abelian homology Whitehead | Degree-d S¹ self-map | Homology isomorphism exactly d=±1; these are homotopy equivalences. d=2 gives cokernel C₂ and is excluded. | Pass; retain. |
| 3.24 H-space homology equivalence | ×d on circle | H₁ map=×d=π₁ map; d=±1 passes, d=0 does not. | Pass; retain. |
| 3.25 Plus factorization | id_S¹ at P=1; BA₅ plus mapping to K(C₂,2) | First gives h=g. Second has 2 map classes both before/after plus, indexed by H²=C₂; factorization is not forced to be constant. | Pass; retain. |
| 3.26 Plus uniqueness under X | P=1 on S¹ | Any plus map is a homotopy equivalence; inverse comparison has composite class id, degree +1, not −1. | Pass; retain. |
| 3.27 Functorial plus | C₃, P=1, maps ×2 and ×2 | Induced composite is ×4=×1 on C₃, agreeing with the original composite. | Pass; retain. |
| 3.28 H-space recognition | S¹ --degree −1→S¹; plus=id | H₁ map=−1 is invertible; factor h has degree −1 and is a homotopy equivalence. Degree 2 fails the homology premise. | Pass; retain. |
| 3.29 π₂ and universal extension | G=A₅,P=A₅; G=C₃,P=1 | First π₂(BA₅⁺)=H₂(A₅)=C₂ and plus-fibre π₁=2·A₅→A₅ has central kernel C₂. Second gives 0 and 1→1. | Pass; retain. |
| 3.30 π₂ naturality | id_A₅; A₅→1 | Multiplier maps C₂→C₂ are id for identity; C₂→0 is zero for terminal map; same π₂ maps. | Pass; retain. |
| 3.31 Universal cover of plus | G=A₅×C₃,P=A₅ | Quotient π₁=C₃; BA₅⁺ is simply connected and the resulting cover has 3 sheets. | Pass; retain. |
| 3.32 Plus and fibre sequence | Product BA₅×BC₃→BC₃ | Fibre before=BA₅, after=BA₅⁺; π₂ total/fibre=C₂ and quotient π₁=C₃. | Pass; retain. |
| 3.33 Universal-extension fibration | 1→C₂→2·A₅→A₅→1 | π₂(B(2·A₅)⁺)=0; π₂(BA₅⁺)=C₂ maps isomorphically to π₁BC₂=C₂. | Pass; retain. |
| 3.34 Serre classes in fibrations | S¹×S¹→S¹, finite-generation class | Fibre/base positive H are finite rank; total H₁=ℤ²,H₂=ℤ also finite rank. | Pass; retain. |
| 3.35 EM homology class | K(C₂,1); K(ℤ,1) | First positive odd H=C₂ and even H=0; second H₁=ℤ, higher=0. Finite 2-primary versus finitely generated classes are distinguished. | Pass; retain. |
| 3.36 Serre-class iff | BC₃; S¹, finite 3-primary class | BC₃: π₁=C₃, other π=0 and positive homology C₃/0, so both sides true. S¹ has π₁=H₁=ℤ, so both false. | Pass; retain. |
| 3.37 Rational primitive Hurewicz | S¹×S¹ | π₁⊗ℚ=ℚ² equals primitive H₁. H₂=ℚ is nonprimitive: reduced coproduct of a∧b is a⊗b−b⊗a; π₂⊗ℚ=0. | Pass; retain. |
| 4.1 Tensor on core | Finite sets, sizes 0,1,2 | Disjoint sum gives 0+1=1 and 1+1=2; core retains permutations S₂, not all set maps. | Pass; retain. |
| 4.2 Classifying H-structure | Finite-set core | π₀=ℕ, multiplication sends (1,2) to 3 and zero is unit; it is not yet a group. | Pass; retain. |
| 4.3 S⁻¹S | Discrete cancellative monoid ℕ | Pair (a,b) has component b−a; (0,1) gives +1 and (1,0) gives −1, not two copies of ℕ. | Pass; retain. |
| 4.4 Actions/fraction category | ℕ acting on itself by addition | (s,x) stabilizes to (s+t,x+t); invariant x−s stays fixed, e.g. (1,3),(2,4) both give 2. | Pass; retain. |
| 4.5 Components and Grothendieck group | ℕ; zero monoid | π₀ completion=ℤ and 0 respectively, with generator 1↦1; inverse of 1 is −1. | Pass; retain. |
| 4.6 H-space group completion | Discrete ℕ | H₀=ℤ[t], localizing t gives ℤ[t,t⁻¹]=H₀(ℤ); higher homology=0. | Pass; retain. |
| 4.7 Cofibred projection | ℕ action, translation by 1 | Pushforward sends x to x+1 and composes by x↦x+2; it is a functorial transport, not an inverse before completion. | Pass; retain. |
| 4.8 Invertible actions | ℕ acts trivially on *; ℤ acts by translations on discrete ℤ | Each action map is a bijection; translating by a then −a gives id. | Pass; retain. |
| 4.9 Homological group completion | Finite sets; discrete ℕ | First localizes component class to yield ℤ×BΣ∞⁺; second gives H₀=ℤ[t,t⁻¹], Hₙ>0=0. | Pass; retain. |
| 4.10 Grouplike completion | Discrete C₃ | Every component is already invertible; completion has π₀=C₃ and no positive groups, just as the input. | Pass; retain. |
| 4.11 Phantom/Milnor | Constant exhaustion S¹ with target K(ℤ,1) | lim[S¹,K]=ℤ, lim¹[ΣS¹,K]=lim¹0=0; no phantom kernel. | Pass; retain. |
| 4.12 Action fibre sequence | Terminal groupoid acting on X | S⁻¹S=*, S⁻¹X=X and action category=X; fibre of id_X is *. | Pass; retain. |
| 4.13 Product plus | BA₅×BA₅ at A₅×A₅ | π₁ plus=1; H₂=C₂⊕C₂ equals H₂ of product of the two plus spaces. | Pass; retain. |
| 4.14 Stable linear plus | R=0; R=ℤ; GL₂(𝔽₂) before stabilization | GL∞(0)=1; π₁BGL∞(ℤ)⁺=C₂. Finite GL₂(𝔽₂)=S₃ has commutator C₃, which is not perfect. | Pass; retain. |
| 4.15 Free/projective adapter | Zero ring; matrix units in M₂(k) | Based free rank labels still form ℕ at R=0 though all actual modules are zero. E₁₂E₂₁=E₁₁≠E₂₂; transpose/opposite restores order. | Pass; retain. |
| 4.16 Based-free plus model | R=0 | BGL∞=*, but based-free rank labels complete to ℤ; result is discrete ℤ, not K₀(0)=0. | Pass; retain. |
| 4.17 Telescope acyclicity | Discrete ℕ; finite-set core | Telescope labels k−r range over all ℤ; map on π₀ is id_ℤ. Component 0 alone maps to BΣ∞⁺. | Pass; retain. |
| 4.18 Cofinal sequence | Finite sets stabilized by singleton | Every size k is a summand of stage k; component group ℤ and stable automorphism group Σ∞. | Pass; retain. |
| 4.19 Action cofinality | Even sizes 2ℕ inside ℕ | k has complement 0 or 1 to an even size; localization permits every integer difference. Both action localizations have π₀=ℤ. | Pass; retain. |
| 4.20 Groupoid cofinality | Even-rank finite sets | Map on K₀ is 2ℤ↪ℤ with cokernel C₂; higher groups agree after cofinal stabilization. It is not a π₀ isomorphism. | Pass; retain. |
| 4.21 Projective completion | R=0; R=field | Components 0 and ℤ respectively; BGL∞(0)⁺=* so the zero-ring projective completion is *. | Pass; retain. |
| 4.22 Naturality | ℤ→𝔽₂; identity field map | Rank class 1↦1 in K₀; determinant −1 maps to +1 in 𝔽₂×. Identity induces identity on both factors. | Pass; retain. |
| 4.23 Strictification | Empty word, singleton, two words | Evaluation gives unit, x, x⊗y; concatenation lengths add 0+n=n. For identical object words structural permutations remain actual isomorphisms. | Pass; retain. |
| 4.24 Segal summing functors | Finite-set core; based sets 0,1,2 | Value at 0 is contractible, at 1 has π₀=ℕ, at 2 has π₀=ℕ²; fold gives (a,b)↦a+b. | Pass; retain. |
| 4.25 Segal E∞ monoid | Discrete monoids ℕ and C₃ | π₀ are ℕ and C₃ with their actual additions; only second is grouplike. Constant two-point diagram has noncontractible value at 0. | Pass; retain. |
| 4.26 Picard criterion | Discrete ℕ, ℤ | Object 1 has no inverse in ℕ, has inverse −1 in ℤ; component monoids are correspondingly nongroup/group. | Pass; retain. |
| 4.27 GW plus | 0, ±1, E₈ | Signatures (0,0),(1,0),(0,1). E₈⊥−E₈⊥J is odd signature (9,9), hence J⁹; even hyperbolic stabilization cannot absorb an odd line. | Pass; retain. |
| 4.28 Simplicial function rings | n=0,1; constant function 2 | C(Δ⁰,k)=k; both endpoint restrictions send 2 to 2 and restriction along any degeneracy keeps 2. | Pass; retain. |
| 4.29 Projective freeness/GL | P=0; rank-one trivial module; n=0; outside simplex | Free ranks 0,1; C(Δ⁰,k)=k. A Möbius-line module over C(S¹,ℝ) is nonfree. Idempotent homotopy over a simplex has constant rank and close-idempotent conjugacy. | Pass; retain. |
| 4.30 Topological K comparison | k=ℝ,ℂ; rank 0,1 | π₀ku=π₀ko=ℤ, units rank 1. GL₁(ℝ) has 2 components; GL₁(ℂ) is connected. Singular interior and vertex both evaluate to 5/4, so the counit is not an isomorphism. | Pass; retain. |
| 5.1 Loop/suspension/shift | 0, S, Hℤ | All operations send 0 to 0; π₁ΣS=π₀S=ℤ; π₀ΩHℤ=π₁Hℤ=0. | Pass; retain. |
| 5.2 Naive cone LES | id_Hℤ; Hℤ→0 | First cone groups=0; second cone=ΣHℤ, with boundary π₁=ℤ→π₀Hℤ=ℤ an isomorphism. | Pass; retain. |
| 5.3 Naive fibre LES | 0→ΣHℤ | π₁Y=ℤ maps by inverse loop shift to π₀F=ℤ, taking generator 1 to 1 under that identification. | Pass; use same identification in R01. |
| 5.4 Semistability | S,0,F₁S¹ | S has π̂₀=π₀=ℤ, 0 has 0=0. F₁S¹ has π̂₀ free of countable rank versus true π₀=ℤ; λ misses a nonzero summand. | Pass; retain. |
| 5.5 Stable equivalence | F₁S¹→S; 0→S | First induces true π₀ ℤ→ℤ identity despite unequal naive groups. Second gives 0→ℤ and fails. | Pass; retain. |
| 5.6 Point-set true pairing | Units of S⁰,S¹; switch two degree-one spheres | Unit pairing 1·1=1; twist on S¹∧S¹ has degree −1=(−1)¹. | Pass; retain. |
| 5.7 Cone/fibre models | id; X→0; 0→Y | Cone(id)=0; cone(X→0)=ΣX versus strict quotient 0; fibre(0→Y)=ΩY for Kan levels. | Pass; retain. |
| 5.8 Fibre/cofibre comparison | 0→ΣHℤ, y=1 | Counit composite=+1 in ℤ; displayed negative boundary formula=−1. Loop-reversed counit gives −1 on both sides. | FAIL; R01. |
| 5.9 Finite biproduct | Hℤ∨Hℤ→Hℤ×Hℤ | π₀ map is matrix diag(1,1), giving ℤ²→ℤ². Infinite wedge has ⊕ℕℤ, infinite product ∏ℕℤ, so finiteness matters. | Pass; retain. |
| 5.10 Flat smash | 0,S; sphere with level 0 deleted | 0∧E=0, S∧ᴸE=E. Deleted-level sphere has noninjective degree-2 latching fold; it fails flatness. | Pass; retain. |
| 5.11 Derived pairing | Degree 1 and −1 sphere classes | Product degree=0; swapping gives (−1)^(−1)=−1. Degree 0 unit gives sign +1. | Pass; retain. |
| 5.12 Connectivity | ΣᵃS∧ᴸΣᵇS | Lowest nonzero group is π_(a+b)=ℤ on both sides; a=−1,b=1 gives π₀=ℤ, not a truncated natural degree. | Pass; retain. |
| 5.13 Operad algebras | Zero module; unit HR | Nullary unit sends 1 to 1 for HR and to 0 for the zero ring object; arbitrary nonunital multiplication lacks that operation. | Pass; retain. |
| 5.14 HR/modules | R=0,ℤ,𝔽₂ | π₀HR=0,ℤ,𝔽₂ respectively; other π vanish. Unit at R=0 is the unique map to 0. | Pass; retain. |
| 5.15 Complex EM functor | ℤ in cochain degree 2 | H²=ℤ corresponds to π₋₂=ℤ, all other groups 0; sign-reversed indexing would put it in π₂. | Pass; retain. |
| 5.16 Homology/homotopy | Complex ℤ --×2→ℤ in degrees −1,0 | H⁰=C₂,H⁻¹=0, hence π₀=C₂,π₁=0. Multiplication by 0 instead gives π₁=π₀=ℤ. | Pass; retain. |
| 5.17 Compactness/cell closure/approximation | D(ℤ), G=ℤ[0], E=Hom(−,C₂[0]); empty G | R=C₂[0], x=id gives evaluation C₂→C₂, 0↦0,1↦1. Empty family gives R=0. ℤ[−1] has H¹=ℤ and is outside the connective closure; ⊕ℕℤ fails compactness via its identity. | Pass; retain. |
| 5.18 Connective deloopings | Hℤ; Σ⁻¹Hℤ | Hℤ levels K(ℤ,i) have πⱼ=0 for j<i. Σ⁻¹Hℤ has π₋₁=ℤ and is excluded; the connective restriction is real. | Pass; retain. |
| 5.19 Picard/η | Ordinary lines; super lines over ℂ | Even line self-swap=+1; odd line self-swap=−1. On π₀=C₂, η sends odd class to −1 in ℂ×; forgetting braiding loses it. | Pass; retain. |
| 6.1 Waldhausen spectrum | Zero category; finite pointed sets | Zero gives all stable groups 0. Raw finite-set level 0 has components ℕ, while spectrum π₀=ℤ; raw level 0 cannot be declared Ω∞. | Pass; retain. |
| 6.2 Additivity/delooping | Split vector-space cofibration 𝔽₂→𝔽₂²→𝔽₂ | K₀ relation 2=1+1. Automorphism group of the flag has order 2, whereas product GL₁(𝔽₂)² has order 1; additivity is not degreewise groupoid equivalence. | Pass; retain. |
| 6.3 BPQS | Finite pointed sets; vector-space negative control | Two-point set represents 1∈π₀S=ℤ; stable π₁=C₂. A pointed-set filtration has product permutation automorphisms; the vector-space flag above instead has orders 2 versus 1. | Pass; retain. |
| 7.1 Moore S/m | m=1,2,3; degree-zero negative control | S/1=0; H₀(S/2)=C₂,H₀(S/3)=C₃. 2·id_(S/2)=iηj≠0. Cone(0:S→S)=S∨ΣS, outside m≥1. | Pass; retain. |
| 7.2 E/m | E=Hℤ,H(C₂), m=2 | First has π₀=C₂ only. Second has π₀=π₁=C₂, because ×2=0; a quotient-only model loses π₁. | Pass; retain. |
| 7.3 Bockstein LES | H(C₂)/2 | Boundary π₁(H(C₂)/2)→π₀H(C₂) is id_C₂; quotient map on π₀ is id_C₂. | Pass; retain. |
| 7.4 Coefficient UCT | Hℤ/2; H(C₂)/2 | Degree 0 quotient C₂; degree 1 torsion term 0 in first and C₂ in second. Exact sequences give those same values. | Pass; retain. |
| 7.5 Peterson splitting | m=3; excluded m=2 | At 3 the relevant 2-primary η obstruction is 0. At 2 the endomorphism extension of S/2 has middle group C₄, not C₂⊕C₂. | Pass; retain. |
| 7.6 Coprime Moore decomposition | m=2,n=3; noncoprime 2,2 | H₀S/6=C₆≅C₂⊕C₃. C₄ is not C₂⊕C₂ (element order 4 versus 2), so coprimality cannot be omitted. | Pass; retain. |
| 7.7 Prime-power maps | p=2,r=1; E=H(C₂) | Inclusion 1 mod2↦2 mod4; reduction 1 mod4↦1 mod2. On H(C₂)'s torsion term reduction is ×2=0, whereas its quotient term is id. | Pass; retain. |
| 7.8 Prüfer coefficients | E=Hℤ; E=H(C₂), p=2 | First π₀=ℚ₂/ℤ₂. Second tensor term=0 and π₁=C₂ from torsion. Inclusion, not reduction, gives the displayed direct limit. | Pass; retain. |
| 7.9 lim/lim¹ comparison | Identity tower A; zero-transition A | δ=1−shift gives kernel A,cokernel 0 in first; δ=id gives kernel=cokernel=0 in second. | Pass; retain. |
| 7.10 Nonzero lim¹ | ×2 tower ℤ; ×3 tower with map ×2 | lim=0,lim¹=ℤ₂/ℤ; [1/3]≠0. At p=3, [1/2]≠0 but 2[1/2]=[1]=0. Same values in π₋₁holim spheres. | Pass; retain. |
| 7.11 Tate-module extension | E=H(ℚ_p/ℤ_p), degree 1 | Quotient contribution π₁E/pʳ=0; torsion inverse limit T_pπ₀E=ℤ_p; completion π₁=ℤ_p. Tensor π₁E would give 0. | Pass; retain. |
| 7.12 General Moore mapping UCT | A=0,ℤ,C₂; X=S/2 in last | First map group 0; second [S,X]=π₀X. Last: Ext¹(C₂,π₁S/2)=C₂ and Hom(C₂,π₀S/2)=C₂, with [S/2,S/2]=C₄, not just Hom. | Pass; retain. |
| 7.13 Finite-generation completion | A=ℤ,C_p,C_ℓ with ℓ≠p | Completion/tensor values ℤ_p,C_p,0. Residue of completed 1 is 1 at every level. Prüfer example gives extra degree 1 as above. | Pass; retain. |
| 7.14 p-completeness criteria | Hℚ,H(C_p) | ×p tower on Hℚ is an equivalence tower, holim=Hℚ≠0; completion=0. On H(C_p), ×p=0, holim=0 and completion=H(C_p). | Pass; retain. |
| 7.15 Closure of complete objects | Product and suspension of H(C_p) | π₀ product=∏C_p still killed by p; suspension shifts its sole group to degree 1; both remain complete. | Pass; retain. |
| 7.16 Mod-p detection | 0→Hℚ; id_H(C_p) | First is mod-p equivalence 0→0 but not equivalence, and target is not complete. Second is an equivalence of complete spectra. | Pass; retain. |
| 7.17 Bounded exponent | H(C_pᵃ); H(ℚ_p/ℤ_p) | First completes to itself. Second has unbounded p-exponent and completion π₁=ℤ_p, so the premise distinguishes them. | Pass; retain. |
| 7.18 Coefficient completeness | Hℤ/p²; S/2 | First is H(C_p²) and complete. S/2 has 2·id≠0 but 4·id=0; completeness does not require 2·id=0. | Pass; retain. |
| 7.19 Rational classification | Hℚ⊕Σ⁻²Hℚ; Σ⁻²S→Σ⁻²Hℚ | Graded groups ℚ in degrees 0,−2. Mapping group in second is ℚ=Hom(ℤ,ℚ). Integer-sphere torsion groups map to 0. | Pass; retain. |
| 7.20 Arithmetic square | Hℚ; H(C_p) | Hℚ has zero prime completions and rational vertex Hℚ; pullback=Hℚ. H(C_p) has only its p-completion nonzero, rational vertices 0; pullback=H(C_p). | Pass; retain. |
| 7.21 Filtration/grading | Constant Hℤ; zero filtration of Hℤ; single-step Hℤ | Constant gr=0, hocolim=Hℤ, negative holim=Hℤ. Zero filtration has hocolim=0. Single-step has gr₀=Hℤ only. | Pass; retain. |
| 7.22 Exact couple | D=E=ℤ² with displayed i,j,k | ji=kj=ik=0; jk(0,1)=(1,0)≠0, (jk)²=0; i²(1,0)=(1,0)≠0. | Pass; retain. |
| 7.23 Filtered SS/indexing | Single-step Hℤ; constant Hℤ; d₂ at (3,0) | Single-step E₁(0,0)=ℤ=E∞. Constant E₁=0 but colimit π₀=ℤ. d₂ lands at (1,1), total 3→2. | Pass; retain. |
| 7.24 Left-bounded convergence | Single-step Σ⁻²Hℤ; finite two-step filtration | First E∞(0,−2)=ℤ=π₋₂; connectivity is unnecessary. Two columns have no d_r for r≥2; associated graded is the two image-quotients, without a splitting claim. | Pass; retain. |
| 7.25 Increasing-connectivity towers | Constant identity Hℤ tower; Postnikov tower | Constant F₀=Hℤ,F_s=0(s>0), L=Hℤ,lim¹=0. d₁(0,2)=(1,2) lowers stem 2→1. Eventual Postnikov π towers are constant, giving lim¹=0. | Pass; retain. |
| 7.26 Boardman obstructions | Zero couple; D=ℤ,i=id,E=0 | First A⁺=RA⁺=A⁻=RE∞=W=0. Second E_r=RE∞=W=0 but A⁺=A⁻=ℤ, so conditional convergence fails. | Pass; retain. |
| 7.27 AHSS | X=*, S¹ with E=Hℤ | Point: only H₀=ℤ; circle: entries (0,0),(1,0)=ℤ, giving H₀=H₁=ℤ and no differentials. | Pass; retain. |
| 7.28 Mod-coefficient products | S/2,S/3,S/8 | S/2 has nonzero 2·id and no unit; S/3 has unital multiplication but nonzero associator α₁; S/8 admits associative multiplication, not commutative Moore multiplication. | Pass; retain. |
| 7.29 Quotient obstruction tower | Zero obstruction group; primary Moore obstruction at 2 | Zero obstruction class permits extension; η gives 2·id_(S/2)=iηj≠0 and forbids a unital algebra. Thus an arbitrary multiplication field cannot replace the obstruction data. | Pass; retain. |
| 7.30 Deformation/Ind reduction | v=4 on sphere; C=Perf(ℚ), I=0 | τ-inverted quotients give H₀=C₄,C₁₆. For the claimed exact Ind comparison, X=⊕ℕℚ gives finite d=dim H⁰F(X) versus 1+d; these cannot agree. Restricting descent to C′ gives quotient ℚ on both sides. | FAIL in general reduction; R02. |
| 7.31 HF₂ synthetic coordinates | τ; 2̃; q=3 at n=1 | τ has bidegree (0,−1), 2̃ degree (0,1). τ inversion sends C(2̃³) to S/8 with H₀=C₈; inequality 2q≥3(n+1) is 6≥6. | Pass; retain. |
| 7.32 Quotient towers | v=4, n=1,2; q>n | Least q=2,3 give S/16 as E₁ and S/64 as E₂. Reduction on π₀ is C₆₄→C₁₆; this route alone does not give S/8. | Numerical range passes; apply R02 to descent. |
| 7.33 Browder products | Hℤ; τ≤1S; τ≤3S_(3) | Hℤ/2=H𝔽₂ is commutative. τ≤1S has η≠0 and 2·id_(E/2)≠0. At 3, reduced α₁ generates π₃(E/3)=C₃ and obstructs associativity. | Pass; retain. |
| 7.34 Moore Eₙ bounds | p=2,n=1,2; p=3,n=1 | Bounds give q≥3,5 at 2 (S/8,S/32), q≥2 at 3 (S/9). S/2 fails the unit test; S/3 fails associativity, consistent with exclusions. | Pass; retain. |

## Not verifiable

- No seeded source text remained inaccessible. The 15 sampled locators and the additional repaired/sign locators above were read legally. This is a source sample, not certification of every bibliography entry or every omitted proof. The Barratt–Eccles approximation proof cited in §6.3 remains uncertified: the sources service's title/author lookup for Γ⁺-structures I resolved only to the paywalled Elsevier DOI route (10.1016). No paywall was bypassed. WIV's stated BPQS theorem and the explicit finite-set filtration comparison were checked; the unavailable separate proof is not claimed certified.
- The source S is an unfinished manuscript: its Example I.3.50 leaves the iteration isomorphism and spectrum structure maps unfinished. It supports the specified objects and theorem's intended statement, but cannot by itself certify all those construction details. The README explicitly makes those details construction targets and separates their Waldhausen inputs.
- No formal truth check is implied by the sorry build. The calculations above test signs, degenerate cases, hypotheses and ownership; they do not replace the eventual proofs.

## Source issues

- **Error** in WIV at Example 3.1.2, printed p. IV.25 (WIV line 1088): the source says all successive cellular degrees for BC₂ are two; it should be zero in odd dimensions and two in positive even dimensions; affects a stated result.
- **Gap** in S at Example I.3.50, printed pp. 56–57 (S lines 2806, 2823–2825): the source leaves iteration and spectrum structure maps unspecified; it should construct these maps and their equivariance before asserting the delooping result; affects the proof.
- **Misprint** in S at Proposition II.5.14 proof, printed p. 261 (S line 13837): the source says the evaluation codomain is R(G); it should be E(G); affects nothing.
- **Misprint** in S at the sentence preceding Eq. (6.42), printed p. 286 (S lines 15162–15163): the source says kernel and cokernel use π₀X for Hom(d,πₙX); it should use πₙX in both groups; affects nothing.
- **Misprint** in S at Theorem II.9.6 proof, printed p. 302 (S lines 16075–16077): the source says [S,HV*] vanishes according to an unbound n; it should simply identify [S,HV*] with V₀; affects nothing.
- **Error** in Bu at Remark 1.6, printed p. 2 (Bu lines 63–90): the source asserts an Ind-completion left adjoint back to an arbitrary stably monoidal category; it should restrict descent to the original finite-object subcategory unless the target has the required colimits; affects the proof.
- **Misprint** in WIV at Proposition 2.7, printed p. IV.21 (WIV lines 923–930): the source repeats q₁ in both Chinese-remainder factors; it should use q₁ and q₂; affects nothing.
- **Error** in WIV at Scholium 2.8.1, printed p. IV.21 (WIV lines 946–949): the source infers all exceptional associative commutative products from degree vanishing alone; it should impose additional η and associativity-obstruction hypotheses; affects a stated result.
