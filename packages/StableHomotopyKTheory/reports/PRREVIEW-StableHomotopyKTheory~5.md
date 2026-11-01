# Review of StableHomotopyKTheory (pull request #1227 at 5f92355)

**Verdict:** accepted

No findings. This folder is ready for a human's final approval.

## Previous findings

- R01 — repaired: `TauCetiRoadmap/StableHomotopyKTheory/README.md:1957`, 2019, 2038 uses the same endpoint reversal for δ_F and h. The integral Check now computes −1=−i(1); the counit under j_F is explicitly loop-reversed.
- R02 — repaired: `TauCetiRoadmap/StableHomotopyKTheory/README.md:2730`, 2732, 2782 constructs in Ĉ, then descends operation spaces through C′. Quotients, units, finite tensor powers, algebra maps and coherences descend without a functor Ĉ→C.
- R03 — repaired: `TauCetiRoadmap/StableHomotopyKTheory/README.md:37`–50 gives the same-universe CW-type adapter three API facts and four Checks: empty space, circle, discrete rationals and usual-topology rationals. No Lean padding was added.

## Verified sound

This is an incremental re-review of 47 changed lines since bfc4b59. I reviewed the changed conventions, §§5.3, 5.7–5.8, 7.29–7.30 and 7.32, their immediate inputs and consumers, and the unchanged Lean acceptance file's elaboration and signatures. The untouched mathematical review is carried forward explicitly from [r4], not represented as a new full review. No PR file was edited, and the diff outside this roadmap folder is empty.

**Gate and elaboration.** The worker's head-specific gate records every check passing, including the targeted build. The independent gate rerun returned all scanner counts zero and OK (its output omitted the build field). Direct `lake env lean` on `TauCetiRoadmap/StableHomotopyKTheory/Suggested.lean` exited 0 with precisely 11 sorry warnings and no other warnings or errors. A second elaboration of a scratch copy with `#check @...` for all 24 declarations also exited 0. The printed types retain the CW-type, connectedness, perfect-normal-subgroup, asphericity, H-space, finite-projective, compactness and product-preservation hypotheses. No declaration or signature changed; the corrected spectral boundary is a separate README target and does not change `MappingPathFiber` or its unstable boundary.

The independent dependency command returned:

```text
depcheck: 205 roadmaps, 1483 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line occurred. No supplier gap is declared. The repairs add neither suppliers nor reverse dependencies.

**Source checks in the changed passages.** Of this round's 15 seeded targets, only §5.8 is changed; it was checked afresh. The other 14 have unchanged computed rows below, carried from [r4]; their source locators were not resampled in this incremental review. There is no newly flagged unverified locator. Three source texts were read through the legal sources service; no manifest was edited.

| Passage | Source and exact locator read | Verification |
| --- | --- | --- |
| CW-type API and negative control | HAT lines 325–328, §0, p. 3; lines 22629–22642, Proposition A.4, p. 522 | Homotopy equivalence is an equivalence relation; CW complexes are locally contractible and locally path connected. Together with constant paths in ℚ, this proves the new negative control. HAT is H AT in the README. |
| §§5.3, 5.7–5.8 | S lines 1390–1430, I (2.14)–(2.15), pp. 28–29; lines 1431–1471, I (2.16), Proposition 2.17, p. 29; lines 1483–1500, proof p. 30 | S uses basepoint-to-f(x) paths and traverses them backwards in h₊. Therefore transporting both maps through r gives hΣδ_F=−i. The π̂-isomorphism is proved without semistability; simplicial reversal is handled by the supplied comparison, not a nonexistent order reversal of Δ[1]. |
| §§7.30, 7.32 | Bu lines 57–90, Theorem 1.5/Remark 1.6, p. 2; lines 323–406, Recollection 4.1–Lemma 4.8, pp. 8–10; lines 412–441, Definition 5.1/Theorem 5.2, pp. 10–11 | The v-compatible tower and q>n range are preserved. The repair avoids the unjustified global adjoint in Remark 1.6 by identifying the full colored operation spaces on the finite quotients. This includes arity zero and algebra-map coherences. The text read is arXiv v2, the cited 20-page version. |

In S's p. 30 proof, the displayed auxiliary homotopy contains a misprinted loop argument, confirmed on the rendered source page. The statement and the roadmap's repaired sign remain valid: directly reparameterize evaluation by ω(2x/(2−t)) for x≤1−t/2 and the basepoint otherwise. At t=0 this is ω(x); at t=1 it is ω(2x) on the first half and the basepoint on the second, exactly h after reflection of the suspension coordinate. The denominator lies in [1,2]. This supplies the pictured homotopy independently of the misprint. See [S, Proposition I.2.17 proof](https://www.math.uni-bonn.de/~schwede/SymSpec-v3.pdf#page=31).

**Pins and ownership.** Pins remain Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Object searches covered the pinned libraries, main, the roadmap-service open-head index and board packages for CW type, Ind-completion, operadic Kan extension and fibre–cone comparison. No competing owner for the local adapters or quotient-specific descent was found. No new Lean declaration was introduced. These reopened supplier passages were read at main, not at a progress PR; the Part II consumer was read at its supplied open head.

| Declaration or supplier | File and line | What the repair consumes |
| --- | --- | --- |
| `Topology.CWComplex` | `Mathlib/Topology/CWComplex/Classical/Basic.lean:135` | Native CW structure has no T2 field; the retained adapter supplies T2 separately. |
| `Homeomorph.toHomotopyEquiv`; `ContinuousMap.HomotopyEquiv.symm`, `.refl`, `.trans` | `Mathlib/Topology/Homotopy/Equiv.lean:75`, 93, 119, 130 | Native maps witnessing the three new CW-type API facts; no new general equivalence theory is planned. |
| `HasCWType` | `TauCetiRoadmap/StableHomotopyKTheory/Suggested.lean:144` | Real body: same-universe Hausdorff CW model plus actual homotopy equivalence. No finiteness or connectedness field. Pin search found no existing predicate with this body. |
| AlgebraicTopology conventions | `TauCetiRoadmap/AlgebraicTopology/README.md:137` | Actual Hausdorff CW models, with general and finite CW type distinguished. The adapter follows this existing owner. |
| GeneralizedCohomology G2.1, G2.5 | `TauCetiRoadmap/GeneralizedCohomology/README.md:213`, 302 | Realization/singular equivalence, pointed smash and quotient diagrams, topological/simplicial spectral transport and semistability/true-π comparison. |
| GeneralizedCohomology G2.4, G2.10 | `TauCetiRoadmap/GeneralizedCohomology/README.md:271`, 533, 555 | Derived spectral triangles and actual f(x)-to-basepoint mapping-path carriers. The repaired spectral sign adapter is additional local comparison data. |
| BordismFormalGroups F6.5 | `TauCetiRoadmap/BordismFormalGroups/README.md:2195`, 2225, 2267 | Space-valued Ind, Yoneda, stable finite-colimit comparison and operadic Kan extension. Its global colimit functor explicitly requires the target colimits; the repair no longer assumes those in C. |
| Local operadic and quotient inputs | `TauCetiRoadmap/StableHomotopyKTheory/README.md:2101`, 2712, 2730, 2782 | §5.13's Eₘ interfaces, §7.29's obstruction tower, §7.30's finite-object descent and §7.32's tower now use the same Ĉ. §§7.31 and 7.34 retain their separate HF₂ and Moore specializations. |
| StableHomotopyKTheoryPartII | `TauCetiRoadmap/StableHomotopyKTheoryPartII/README.md:7`, 43 | Remains a later consumer of Layers 5–7; it does not own the changed quotient descent or impose the old sign. |

AlgebraicTopology and GeneralizedCohomology were also read as main-branch shape references. Unchanged supplier/library citations and the broader ownership audit are inherited from [r4]; this round makes no claim of a fresh full audit of unrelated open work. The changes introduce no algorithm, shortcut, copied passage, sorry'd data, option override or re-planned roadmap.

**Headline and padding check.** The unchanged headlines are Quillen A/B; acyclicity through local coefficients; plus existence, factorization, recognition, π₂ and universal-central-extension fibre; categorical homology and rational primitive Hurewicz; monoidal group completion and linear/orthogonal plus comparisons; simplex function-ring freeness and topological K-theory; cellular approximation; Picard/spectral and derived-category comparisons; Waldhausen delooping and BPQS; Moore coefficients, completion, rational classification, arithmetic fracture and convergence; coherent quotient and Moore Eₙ structures. The same 11 native theorems and 13 supporting definitions remain. Their docstring still names the missing spectral, operadic, deformation, synthetic, fraction-category and other construction carriers. The repairs need no new stand-in theorem. The unchanged one-tactic padding results are carried from [r4]; no new sorried statement needs a new probe.

**New computations.** Each row below concerns a changed statement, API fact or Check. All 15 rows pass. They test the repairs, not the eventual general proofs.

| Statement | Instances tried | Computed values on both sides / negative control | Result; change |
| --- | --- | --- | --- |
| CW-type definition / identity API | ∅; S¹; discrete ℚ; usual ℚ | CW type = true, true, true, false. Identity models have respectively 0 cells, one 0-cell plus one 1-cell, and countably many 0-cells. | Pass; three positive models and a negative model. |
| CW-type homotopy-invariance API | I≃*; identity on usual ℚ | I and * both have CW type; I→*→I is constant at 0 and homotopic to id. Both sides for id_ℚ are false. Composition with an inverse gives both implications. | Pass; no connectedness or finite-cell assumption added. |
| CW-type homeomorphism API | (0,1)≅ℝ; id_∅ | Both intervals have the one-point homotopy type; ∅ has the empty CW model on both sides. Homeomorphisms give inverse homotopy equivalences. | Pass; uses native homeomorphism adapter. |
| CW-type noncontractibility / finite-type Checks | S¹; discrete ℚ | π₁(S¹)=ℤ≠0; π₀(discrete ℚ)=ℚ is infinite, whereas a finite CW complex has finitely many components. Both still have CW type. | Pass; excludes contractibility and finite-CW replacements. |
| CW-type weak-equivalence negative control | discrete ℚ→usual ℚ | π₀ map=id_ℚ and all πₙ>0 maps are 0→0. A CW homotopy inverse would force a⁻¹(component(a(q)))={q} open; q+1/n→q makes this false. | Pass; weak equivalence cannot replace homotopy equivalence. |
| 5.3 Spectral boundary and endpoint adapter | f:0→ΣHℤ; id; 0→ΣH𝔽₂ | Integral generator: α⁻¹(1)=1, j_F(1)=−1 in raw loops, r(−1)=1. Identity fibre gives 0; over 𝔽₂, −1=1. | Pass; repaired sign is explicit and integral Check discriminates. |
| 5.7 Cone/fibre comparison and reflection | id_X; X→0; 0→ΣHℤ | C(id)≃0; C(X→0)=ΣX, unlike strict quotient 0. Raw fibre π₀=ℤ, j_F acts by −1 and r² acts by +1. Interval reflection exchanges 0 and 1. | Pass; reflection is transported through realization/singular models. |
| 5.8 Fibre–cofibre map (seeded target) | f:0→ΣHℤ, y=1; id | δ_F(1)=−1 in raw coordinates; r sends −1 to 1; h₊ sends 1 to −1. Thus hΣδ_F(1)=−1=−i(1). For id, both groups are 0. | Pass; ordinary counit under j_F would instead give +1. |
| 7.29 Deformation-category notation | C=Perf(ℚ), I=0, v=0 | Ĉ=Ind(C′) contains X=⊕ℕℚ with dim H⁰X=ℵ₀; C contains only finite-dimensional H⁰. Def(Ĉ;𝒬) correctly uses the presentable category. | Pass; rename agrees with §7.30 and §7.32. |
| 7.30 Ind reduction / compact quotients | Perf(ℚ), I=0, v=0; v=id | For every q≥1, A_q=ℚ in the first example and A_q=0 in the second. Finite tensor powers remain ℚ or 0 (arity zero is the unit ℚ). | Pass; quotients and their operation inputs remain in C′. |
| 7.30 Operation-space descent, including units | A_q=ℚ; arities 0,1,2,3 | Both mapping spaces Map(ℚ^⊗r,ℚ) are discrete ℚ; unit 1↦1, product 2⊗3↦6, triple product (2·3)·5=2·(3·5)=30 on both sides. | Pass; full faithfulness identifies spaces and composition, hence all coherences. |
| 7.30 Zero quotient and arbitrary C | v=id_ℚ; X=⊕ℕℚ in Ind(Perf(ℚ)) | All Map(0^⊗r,0) are contractible, including Map(ℚ,0) at r=0; operations are zero. A global exact extension would require finite d=1+d, impossible. | Pass; zero quotient is retained and no global extension is used. |
| 7.30 Q-injectivity / vanishing under new category | Perf(ℚ), I=0, v=0, compact X=ℚ | A₁=ℚ, tensoring by A₁ is identity, Q-epis are split epis, X→A₁⊗X=id. Q-injectivity gives [Σ⁻ˢνX,νA₁]=0 for s≥1, matching q=1. | Pass; compact-object quantifier matches Bu Lemma 4.8. |
| 7.30 τ-inversion and v-compatibility | I=0,v=0; v=id | τ⁻¹(ṽ)=0 and τ⁻¹(ν1/ṽ^q)=ℚ in the first case; identity and zero quotient in the second. Operations return to the same ℚ and 0. | Pass; compatibility is now defined through Ĉ and finite-object descent. |
| 7.32 Quotient algebra tower after descent | v=4 on S, n=1,2; Perf(ℚ), I=0 | Least allowed q=2,3 gives H₀(S/16)=C₁₆ and H₀(S/64)=C₆₄. Reduction C₆₄→C₁₆ sends 1 to 1. In Perf(ℚ), all A_q=ℚ and reductions=id. | Pass; q>n and general nonpresentable C are both retained. |

**Unchanged computations carried forward.** The following 188 rows retain the computations from [r4], including the 14 untouched seeded targets and the unchanged headline theorems. Every row cites that report. “Pass” is restricted to its displayed instances and controls. The seven replaced rows are covered above; no failed old row is presented as passing without a new computation.

| Statement | Instances tried | Computed sides / wrong-model control | Result; change |
| --- | --- | --- | --- |
| Universal-extension adapter | 1→1; ℤ→1 | First has unique lifts. Second has both zero and id lifts into ℤ→1, so uniqueness fails. | Pass; retain.  [r4] |
| 1.1 Category classifying space/maps/vertex | Empty category; terminal category; id | B∅=∅; B1=* with its unique vertex; B(id)=id. A constant point model fails the first value. | Pass; retain.  [r4] |
| 1.2 Boundary inclusion | n=0,1,2 | ∂Δ⁰=∅→*; ∂Δ¹=2 points→I; ∂Δ²=S¹→D². | Pass; retain.  [r4] |
| 1.3 CW realization | Δ², Δ⁰, BC₃ | Cell counts (3,3,1), (1,0,0,…), and two 1-cells. Skeleton 1 of Δ¹ has 2 vertices; skeleton 2 has the edge. | Pass; retain.  [r4] |
| 1.4 Local contractibility | Vertex and interior of Δ¹ | Small relative intervals contract to the chosen point; two separate vertices cannot be contracted together inside their disjoint neighborhoods. | Pass; retain.  [r4] |
| 1.5 Monomorphism realization | ∂Δ¹→Δ¹; fold 2→1 | First realizes to a closed 2-point subcomplex. Fold identifies 2 vertices, is not mono and is not an embedding. | Pass; retain.  [r4] |
| 1.6 Compact containment | A finite edge; infinite discrete vertices | Edge lies in its 3-cell finite subcomplex; all infinitely many discrete vertices are not compact. | Pass; retain.  [r4] |
| 1.7 Opposite | [1] | Reverse-arrow realization uses t↦1−t; applying twice gives t, endpoints 0↔1. | Pass; retain.  [r4] |
| 1.8 Ordinary product comparison | [1]×[1] | Nerve realizes as the two-triangle square; product is I², with four vertices on both sides. | Pass; retain.  [r4] |
| 1.9 Kelley product | Point×BC₃; empty×BC₃ | Both give BC₃, respectively ∅; k-ification preserves these values. | Pass; retain.  [r4] |
| 1.10 Natural transformation | 0⇒1 in [1] | Realized homotopy traces I from vertex 0 to vertex 1, not a constant vertex. | Pass; retain.  [r4] |
| 1.11 Adjunction | [1]→1 with terminal right adjoint | B[1]=I and B1=*; composite at [1] is constant at 1, homotopic to id_I. | Pass; retain.  [r4] |
| 1.12 Initial/terminal | [1]; empty category | I contracts; empty has no initial/terminal object and B∅ remains empty. | Pass; retain.  [r4] |
| 1.13 Filtered category colimit | Finite discrete subsets of ℕ | At every simplicial degree both sides have underlying set ℕ, with only degenerate higher simplices. | Pass; retain.  [r4] |
| 1.14 Homotopy and filtered colimit | Increasing finite discrete categories | π₀ colimit=ℕ on both sides; every positive group at a chosen vertex=0. | Pass; retain.  [r4] |
| 1.15 Equivalence-transition colimit | Constant identity system BC₃ | Colimit and each term have π₁=C₃, πₙ=0 for n≥2. | Pass; retain.  [r4] |
| 1.16 Filtered categories | Directed poset ℕ; empty category | Bℕ has π₀={*}, higher π=0. Empty fails the nonempty part of filteredness and has π₀=∅. | Pass; retain.  [r4] |
| 1.17 Homology colimit | Increasing finite discrete sets | H₀ colimit=⊕ℕℤ=colim ℤⁿ; positive H=0 on both sides. | Pass; retain.  [r4] |
| 1.18 Components | [1]; discrete two objects | Zigzag quotient and π₀ give 1 and 2 elements respectively. | Pass; retain.  [r4] |
| 1.19 Simplicial covering | Two disjoint copies of Δ¹→Δ¹ | Every point has two lifts; realization is 2×I→I, not a branched interval. | Pass; retain.  [r4] |
| 1.20 Cover classification | BC₃ with regular C₃-set; singleton action | Fibres have 3 and 1 points; total spaces are contractible and BC₃ respectively. | Pass; retain.  [r4] |
| 1.21 Groupoid localization | [1]; one-object S₃ | Automorphism group after inversion is 1 and S₃; π₁ gives the same, not S₃ abelianization C₂. | Pass; retain.  [r4] |
| 1.22 Tree presentation | [1]; two parallel arrows; C₃ | π₁=1, ℤ, C₃. Reversed surviving edge gives −1; omitting 2-cells in C₃ gives F₂ instead. | Pass; retain.  [r4] |
| 1.23 Local systems | Circle, transport −1 on ℤ | Going twice around gives +1; constant transport instead gives +1 after one circuit. | Pass; retain.  [r4] |
| 1.24 Category chains | Terminal category with coefficient M; [1] with ℤ→0 | Normalized terminal complex is M in degree 0. Second complex is ℤ→ℤ with differential −id, hence zero homology. | Pass; retain.  [r4] |
| 1.25 Derived colimit | [1] with ℤ→0; discrete two objects | H₀=0, higher=0 in first; H₀=M⊕N, higher=0 in second, matching derived colimit. | Pass; retain.  [r4] |
| 1.26 Twisted cellular chains | Circle with transport −1 | Boundary on the positive generator is −1−1=−2; kernel=0, cokernel=ℤ/2. Constant transport gives boundary 0. | Pass; retain.  [r4] |
| 1.27 Topological/category homology | Bℤ, trivial and sign coefficients | Trivial: H₀=H₁=ℤ. Sign: H₀=ℤ/2,H₁=0. Both models agree. | Pass; retain.  [r4] |
| 1.28 Translation category | Regular S₃-set; singleton S₃-set | Stabilizers 1 and S₃ give contractible realization and BS₃; orbit sets each have one element. | Pass; retain.  [r4] |
| 1.29 Nerve asphericity | G=1,C₃,S₃ | π₁=1,C₃,S₃ respectively; all πₙ, n≥2, vanish. | Pass; retain.  [r4] |
| 1.30 Classifier comparison | G=C₃,S₃; trivial homomorphism | Both classifiers have π₁=G; comparison induces id_G, and trivial homomorphism induces the trivial π₁ map. | Pass; retain.  [r4] |
| 1.31 Conjugate maps | C₃, h=1,a; S₃, h=(12) | C₃ endpoint maps both id but tracks 1,a. In S₃ conjugation sends (123) to (132). | Pass; retain.  [r4] |
| 1.32 Nerve/bar convention | S₃, g=(12),h=(23) | Native composite is hg=(132); inverted entries multiply g⁻¹h⁻¹=(123)=(hg)⁻¹. Reversing the tuple would give the wrong cycle. | Pass; retain.  [r4] |
| 1.33 Groupoid Kan | One-object C₃; [1] | Outer horns in C₃ fill using a⁻¹=a². The horn demanding an inverse to 0→1 in [1] has no filler. | Pass; retain.  [r4] |
| 1.34 Groupoid 1-types | Disjoint union BC₂⊔BC₃ | π₀ has 2 elements, π₁ at them C₂,C₃, and π₂=0. It is not a connected K(G,1). | Pass; retain.  [r4] |
| 2.1 Weak equivalence | id; ∅→*; degree-2 S¹ map | id passes; ∅→* fails π₀; degree 2 has π₁ map ℤ→ℤ, n↦2n, not surjective. | Pass; retain.  [r4] |
| 2.2 Fibration relative groups | Path fibration PS²→S² | π₂(PS²,ΩS²)=π₁ΩS²=ℤ=π₂S²; boundary takes 1 to 1 under the chosen path convention. | Pass; retain.  [r4] |
| 2.3 Strict/homotopy fibre | id of disconnected 2-point space; *→S¹ | First fibres are points. Second strict fibre=* but homotopy fibre has π₀=ℤ; the second map is not a fibration. | Pass; retain.  [r4] |
| 2.4 Fibre boundary | *→S¹; id_S¹ | Loop class 1 goes to component 1 of ΩS¹; for id the target fibre is contractible and boundary=0. | Pass; retain.  [r4] |
| 2.5 Fibre LES | Degree-2 cover S¹→S¹ | ℤ --×2→ℤ→π₀F=C₂ is exact, with residue map; π₁F=0. | Pass; retain.  [r4] |
| 2.6 Pointed-set end/action | S₃/H cover, H=⟨(12)⟩ | Three cosets form a transitive S₃-set with stabilizer H. No quotient group S₃/H exists since H is not normal. | Pass; retain.  [r4] |
| 2.7 Fibre transport | Reflection mapping torus of S¹ | One circuit acts by −1 on fibre H₁=ℤ; reverse circuit is also −1; composite=+1. | Pass; retain.  [r4] |
| 2.8 Homotopy pullback | *→S¹←*; *→*←* | Pullbacks are ΩS¹ (π₀=ℤ) and *, whereas the first strict pullback is only *. | Pass; retain.  [r4] |
| 2.9 Contractible base | X,Y over * | Homotopy pullback=X×Y; X=∅ gives ∅ and X=Y=* gives *. | Pass; retain.  [r4] |
| 2.10 Pasting | Two successive identity squares | Each comparison and outer comparison is id; fibre at every point is *. | Pass; retain.  [r4] |
| 2.11 Comma-to-fibre | Identity functor [1]→[1] | Each relevant comma category has terminal/initial object; classifying comma and homotopy fibre are contractible. | Pass; retain.  [r4] |
| 2.12 Quasifibration | Product F×I→I; *→S¹ | Product strict/derived fibres both F. Second has * versus π₀ΩS¹=ℤ, so is not quasifibred. | Pass; retain.  [r4] |
| 2.13 Excisive triad | Interval as overlapping subintervals | Both relative pairs contract, so every based relative group in the claimed range is 0→0. | Pass; retain.  [r4] |
| 2.14 Open-cover criterion | Product F×S¹ covered by two arcs | Local and overlap fibres are F with identity transport; global strict/derived fibres both F. | Pass; retain.  [r4] |
| 2.15 Exhaustion criterion | F×ℝ exhausted by F×[−n,n] | Each fibre comparison is id_F; every compact interval lies in a finite stage, giving the same global fibre F. | Pass; retain.  [r4] |
| 2.16 Deformation criterion | F×I contracted over I to 0 | Transport F×{t}→F×{0} is id_F, so both π₀ and all πₙ maps are identities. | Pass; retain.  [r4] |
| 2.17 Simplicial realization | Constant point; constant empty space | Realizations are * and ∅; degenerate simplices add no cells in either case. | Pass; retain.  [r4] |
| 2.18 Diagonal/iterated realization | Δ¹ externally multiplied by Δ¹ | Diagonal realizes to the triangulated square; iterated realization to I², both with four vertices. | Pass; retain.  [r4] |
| 2.19 Proper simplicial spaces | Constant discrete 2-point space | Degeneracies are identities, latching images closed; realization has exactly 2 points, not infinitely many simplicial copies. | Pass; retain.  [r4] |
| 2.20 Finite limits | Constant finite spaces; two distinct maps *→2 | Products give 2×2=4 points; equalizer of the distinct maps is ∅ before and after realization. | Pass; retain.  [r4] |
| 2.21 Gluing | Glue two intervals along one endpoint | Pushout is an interval; homotopy pushout is also contractible with π₀=1. Closed endpoint inclusions meet the hypothesis. | Pass; retain.  [r4] |
| 2.22 Pushout product | ∂I→I with itself | Pushout product is ∂I²→I², a circle embedded as the square boundary, not the whole square. | Pass; retain.  [r4] |
| 2.23 Level equivalence realization | Constant point→constant interval | Level maps and realized map *→I are weak equivalences; π₀=1, higher π=0 on both sides. | Pass; retain.  [r4] |
| 2.24 Realized fibre sequence | Constant product fibration F×B→B | Realized fibre=F and fibre after realization=F; F=∅ preserves the empty case. | Pass; retain.  [r4] |
| 2.25 π*-Kan square | Constant Kan groupoid BC₃ with identity square | Every comparison is id, π₁ map=id_C₃; [1] nerve fails the outer-horn hypothesis. | Pass; retain.  [r4] |
| 2.26 Bousfield–Kan hocolim | Constant point over [1], discrete 2, empty index | Hocolimits I, 2 points, ∅; ordinary colimit would lose the I model but retains its homotopy type here. | Pass; retain.  [r4] |
| 2.27 Proper realization/hocolim | Constant point simplicial diagram | Both realization and derived colimit are contractible; the simplex-indexing category has contractible nerve. | Pass; retain.  [r4] |
| 2.28 Quasifibration over nerve | Constant discrete fibre 2 over [1] | Total realization=2×I; both strict and derived fibre have 2 components. | Pass; retain.  [r4] |
| 2.29 Thomason comparison | Terminal-category diagram over C₃ | Grothendieck construction=C₃; hocolim of points=BC₃, π₁=C₃ on both sides. | Pass; retain.  [r4] |
| 2.30 Functor homology SS | C→1; C=BC₃ as category | Only base column 0; E₂(0,q)=H_q(BC₃), so H₀=ℤ,H₁=C₃ on both sides. | Pass; retain.  [r4] |
| 2.31 Quillen A | id_[1]; ∅→1 | Identity comma spaces contract and BI→BI is id. Empty comma for ∅→1 is not contractible; ∅→* is not an equivalence. | Pass; retain.  [r4] |
| 2.32 Prefibred comparison | id_[1] | Fibre over each object is terminal; its comma inclusion has the expected adjoint with value that unique object. | Pass; retain.  [r4] |
| 2.33 Prefibred A | Projection D×[1]→D | Each fibre=[1], B fibre=I; B(D×[1])→BD has contractible homotopy fibre. | Pass; retain.  [r4] |
| 2.34 Quillen B, both orientations | 1→C₃; id_[1] | Comma spaces for 1→C₃ are discrete C₃; homotopy fibre ΩBC₃ also has 3 contractible components. Identity gives a point up to homotopy. | Pass; retain.  [r4] |
| 2.35 Prefibred B | Grothendieck construction of constant C₃-category over [1] | Base change=id, strict fibre=BC₃, homotopy fibre=BC₃. A non-equivalent base change would violate the premise. | Pass; retain.  [r4] |
| 2.36 Group extension | 1→C₃→S₃→C₂→1 | Fibre BC₃ has π₁=C₃; total/base π₁ sequence is precisely C₃↪S₃↠C₂, with π₂ base=0. | Pass; retain.  [r4] |
| 3.1 Acyclic space | *, ∅, S¹ | Positive reduced H(*)=0 and π₀=1; ∅ fails nonemptiness; S¹ has H₁=ℤ≠0. | Pass; retain.  [r4] |
| 3.2 Superperfect π₁ | Punctured Poincaré sphere | Reduced H=0, π₁=binary icosahedral group of order 120, H₁(group)=H₂(group)=0; acyclic does not mean simply connected. | Pass; retain.  [r4] |
| 3.3 Acyclic maps | id; punctured Poincaré sphere→*; reverse inclusion *→that space | First two have acyclic fibres. Last has π₀ fibre of size 120, despite being an ordinary homology isomorphism. | Pass; retain.  [r4] |
| 3.4 Perfect kernel | Acyclic punctured Poincaré sphere→* | π₁ map is 120-element perfect group→1, surjective with perfect kernel equal to the group. | Pass; retain.  [r4] |
| 3.5 Regular-cover chains | Trivial principal C₃-cover of * | H₀ with regular coefficients=ℤ[C₃], rank 3, matching ℤ[G/H] for H=1; assuming connected total space would incorrectly give rank 1. | Pass; retain.  [r4] |
| 3.6 Relative Serre construction/comparison | *→S¹ over *; identity; S¹×*→S¹×S¹ | Cone H₁=ℤ; identity cone H=0; product cone H₁=H₂=ℤ. E₂ entries (0,1),(1,1) are ℤ. Cone(id_ℤ) differential=+1, not 0. | Pass; retain.  [r4] |
| 3.7 Local homology iff acyclic | id; *→punctured Poincaré sphere with regular coefficients | id induces isomorphisms. Negative control has H₀ source=ℤ¹²⁰, target=ℤ, so constant-coefficient equivalence is insufficient. | Pass; retain.  [r4] |
| 3.8 Plus predicate | id_X at P=1; degree-2 S¹ map | First fibre is contractible, kernel 1. Second has kernel 1 but 2-point homotopy fibre, so fails acyclicity. | Pass; retain.  [r4] |
| 3.9 Acyclic π₁-isomorphism | id_S¹; plus at P=1 | π₁=ℤ and higher π=0 on both ends; CW Whitehead gives homotopy equivalence. | Pass; retain.  [r4] |
| 3.10 Plus existence | S¹,P=1; BA₅,P=A₅ | First plus can be id. Second gives π₁=1 and H₂=ℤ/2, so plus is not a contraction. | Pass; retain.  [r4] |
| 3.11 Plus fundamental group | A₅ at all of A₅; C₃ at 1 | Quotients are 1 and C₃. Killing C₃ itself is inadmissible because C₃ is not perfect. | Pass; retain.  [r4] |
| 3.12 Integral homology | BA₅→BA₅⁺ | H₀=ℤ,H₁=0,H₂=ℤ/2 before and after; collapsing to * would lose H₂. | Pass; retain.  [r4] |
| 3.13 Pulled-back local coefficients | BC₃ plus at 1, regular module ℤ[C₃] | Identity comparison has H₀=ℤ and Hₙ=0 for n>0 on both sides, unlike constant coefficients with H₁=C₃. | Pass; retain.  [r4] |
| 3.14 Abelian spaces | BC₃, BS₃, * | First/last have trivial π₁ action. In BS₃, (12) sends (123) to (132), so it fails the n=1 condition. | Pass; retain.  [r4] |
| 3.15 Connected H-space | S¹, torus T² | π₁=ℤ,ℤ² respectively; conjugation is identity and higher groups vanish. A disconnected group fails the connectedness premise. | Pass; retain.  [r4] |
| 3.16 Relative Hurewicz/covering | (D²,S¹); (S¹∨S²,*) | First π₂=H₂=ℤ with trivial action. Second relative π₂=ℤ[ℤ], action shifts basis e₀→e₁, so the trivial-action conclusion cannot be applied. | Pass; retain.  [r4] |
| 3.17 Principal EM fibre | S¹×B→B; reflection mapping torus | Product is classified by zero k and has trivial action. Reflection acts −1 on fibre π₁=ℤ and fails the criterion. | Pass; retain.  [r4] |
| 3.18 Postnikov/Milnor | Constant S²; discrete tails; Postnikov S² | Constant: π₂=ℤ,lim¹π₃=0. Tail holim=∅. P₁S² has π₂=0, P₂S² has π₂=ℤ. | Pass; retain.  [r4] |
| 3.19 EM map classification | K(ℤ,1)→K(C₃,1) | Based homotopy classes and Hom(ℤ,C₃) each have 3 elements; composition with ×2 sends a to 2a. | Pass; retain.  [r4] |
| 3.20 Principal Postnikov tower | S¹; S² | S¹ stabilizes at K(ℤ,1). For S² the P₂→P₁ fibre is K(ℤ,2), π₂=ℤ, with trivial π₁ action. | Pass; retain.  [r4] |
| 3.21 Obstruction extension | Extend degree-d S¹→K(ℤ,1) across D² | Obstruction in H²(D²,S¹;ℤ)=ℤ is d; extension exists exactly at d=0. | Pass; retain.  [r4] |
| 3.22 Maps into abelian spaces | BA₅→K(ℤ,2) versus BA₅⁺→K(ℤ,2) | Both H²=0 (H₁=0 and Hom(H₂,ℤ)=0); with C₂ coefficients both have H²=C₂. | Pass; retain.  [r4] |
| 3.23 Abelian homology Whitehead | Degree-d S¹ self-map | Homology isomorphism exactly d=±1; these are homotopy equivalences. d=2 gives cokernel C₂ and is excluded. | Pass; retain.  [r4] |
| 3.24 H-space homology equivalence | ×d on circle | H₁ map=×d=π₁ map; d=±1 passes, d=0 does not. | Pass; retain.  [r4] |
| 3.25 Plus factorization | id_S¹ at P=1; BA₅ plus mapping to K(C₂,2) | First gives h=g. Second has 2 map classes both before/after plus, indexed by H²=C₂; factorization is not forced to be constant. | Pass; retain.  [r4] |
| 3.26 Plus uniqueness under X | P=1 on S¹ | Any plus map is a homotopy equivalence; inverse comparison has composite class id, degree +1, not −1. | Pass; retain.  [r4] |
| 3.27 Functorial plus | C₃, P=1, maps ×2 and ×2 | Induced composite is ×4=×1 on C₃, agreeing with the original composite. | Pass; retain.  [r4] |
| 3.28 H-space recognition | S¹ --degree −1→S¹; plus=id | H₁ map=−1 is invertible; factor h has degree −1 and is a homotopy equivalence. Degree 2 fails the homology premise. | Pass; retain.  [r4] |
| 3.29 π₂ and universal extension | G=A₅,P=A₅; G=C₃,P=1 | First π₂(BA₅⁺)=H₂(A₅)=C₂ and plus-fibre π₁=2·A₅→A₅ has central kernel C₂. Second gives 0 and 1→1. | Pass; retain.  [r4] |
| 3.30 π₂ naturality | id_A₅; A₅→1 | Multiplier maps C₂→C₂ are id for identity; C₂→0 is zero for terminal map; same π₂ maps. | Pass; retain.  [r4] |
| 3.31 Universal cover of plus | G=A₅×C₃,P=A₅ | Quotient π₁=C₃; BA₅⁺ is simply connected and the resulting cover has 3 sheets. | Pass; retain.  [r4] |
| 3.32 Plus and fibre sequence | Product BA₅×BC₃→BC₃ | Fibre before=BA₅, after=BA₅⁺; π₂ total/fibre=C₂ and quotient π₁=C₃. | Pass; retain.  [r4] |
| 3.33 Universal-extension fibration | 1→C₂→2·A₅→A₅→1 | π₂(B(2·A₅)⁺)=0; π₂(BA₅⁺)=C₂ maps isomorphically to π₁BC₂=C₂. | Pass; retain.  [r4] |
| 3.34 Serre classes in fibrations | S¹×S¹→S¹, finite-generation class | Fibre/base positive H are finite rank; total H₁=ℤ²,H₂=ℤ also finite rank. | Pass; retain.  [r4] |
| 3.35 EM homology class | K(C₂,1); K(ℤ,1) | First positive odd H=C₂ and even H=0; second H₁=ℤ, higher=0. Finite 2-primary versus finitely generated classes are distinguished. | Pass; retain.  [r4] |
| 3.36 Serre-class iff | BC₃; S¹, finite 3-primary class | BC₃: π₁=C₃, other π=0 and positive homology C₃/0, so both sides true. S¹ has π₁=H₁=ℤ, so both false. | Pass; retain.  [r4] |
| 3.37 Rational primitive Hurewicz | S¹×S¹ | π₁⊗ℚ=ℚ² equals primitive H₁. H₂=ℚ is nonprimitive: reduced coproduct of a∧b is a⊗b−b⊗a; π₂⊗ℚ=0. | Pass; retain.  [r4] |
| 4.1 Tensor on core | Finite sets, sizes 0,1,2 | Disjoint sum gives 0+1=1 and 1+1=2; core retains permutations S₂, not all set maps. | Pass; retain.  [r4] |
| 4.2 Classifying H-structure | Finite-set core | π₀=ℕ, multiplication sends (1,2) to 3 and zero is unit; it is not yet a group. | Pass; retain.  [r4] |
| 4.3 S⁻¹S | Discrete cancellative monoid ℕ | Pair (a,b) has component b−a; (0,1) gives +1 and (1,0) gives −1, not two copies of ℕ. | Pass; retain.  [r4] |
| 4.4 Actions/fraction category | ℕ acting on itself by addition | (s,x) stabilizes to (s+t,x+t); invariant x−s stays fixed, e.g. (1,3),(2,4) both give 2. | Pass; retain.  [r4] |
| 4.5 Components and Grothendieck group | ℕ; zero monoid | π₀ completion=ℤ and 0 respectively, with generator 1↦1; inverse of 1 is −1. | Pass; retain.  [r4] |
| 4.6 H-space group completion | Discrete ℕ | H₀=ℤ[t], localizing t gives ℤ[t,t⁻¹]=H₀(ℤ); higher homology=0. | Pass; retain.  [r4] |
| 4.7 Cofibred projection | ℕ action, translation by 1 | Pushforward sends x to x+1 and composes by x↦x+2; it is a functorial transport, not an inverse before completion. | Pass; retain.  [r4] |
| 4.8 Invertible actions | ℕ acts trivially on *; ℤ acts by translations on discrete ℤ | Each action map is a bijection; translating by a then −a gives id. | Pass; retain.  [r4] |
| 4.9 Homological group completion | Finite sets; discrete ℕ | First localizes component class to yield ℤ×BΣ∞⁺; second gives H₀=ℤ[t,t⁻¹], Hₙ>0=0. | Pass; retain.  [r4] |
| 4.10 Grouplike completion | Discrete C₃ | Every component is already invertible; completion has π₀=C₃ and no positive groups, just as the input. | Pass; retain.  [r4] |
| 4.11 Phantom/Milnor | Constant exhaustion S¹ with target K(ℤ,1) | lim[S¹,K]=ℤ, lim¹[ΣS¹,K]=lim¹0=0; no phantom kernel. | Pass; retain.  [r4] |
| 4.12 Action fibre sequence | Terminal groupoid acting on X | S⁻¹S=*, S⁻¹X=X and action category=X; fibre of id_X is *. | Pass; retain.  [r4] |
| 4.13 Product plus | BA₅×BA₅ at A₅×A₅ | π₁ plus=1; H₂=C₂⊕C₂ equals H₂ of product of the two plus spaces. | Pass; retain.  [r4] |
| 4.14 Stable linear plus | R=0; R=ℤ; GL₂(𝔽₂) before stabilization | GL∞(0)=1; π₁BGL∞(ℤ)⁺=C₂. Finite GL₂(𝔽₂)=S₃ has commutator C₃, which is not perfect. | Pass; retain.  [r4] |
| 4.15 Free/projective adapter | Zero ring; matrix units in M₂(k) | Based free rank labels still form ℕ at R=0 though all actual modules are zero. E₁₂E₂₁=E₁₁≠E₂₂; transpose/opposite restores order. | Pass; retain.  [r4] |
| 4.16 Based-free plus model | R=0 | BGL∞=*, but based-free rank labels complete to ℤ; result is discrete ℤ, not K₀(0)=0. | Pass; retain.  [r4] |
| 4.17 Telescope acyclicity | Discrete ℕ; finite-set core | Telescope labels k−r range over all ℤ; map on π₀ is id_ℤ. Component 0 alone maps to BΣ∞⁺. | Pass; retain.  [r4] |
| 4.18 Cofinal sequence | Finite sets stabilized by singleton | Every size k is a summand of stage k; component group ℤ and stable automorphism group Σ∞. | Pass; retain.  [r4] |
| 4.19 Action cofinality | Even sizes 2ℕ inside ℕ | k has complement 0 or 1 to an even size; localization permits every integer difference. Both action localizations have π₀=ℤ. | Pass; retain.  [r4] |
| 4.20 Groupoid cofinality | Even-rank finite sets | Map on K₀ is 2ℤ↪ℤ with cokernel C₂; higher groups agree after cofinal stabilization. It is not a π₀ isomorphism. | Pass; retain.  [r4] |
| 4.21 Projective completion | R=0; R=field | Components 0 and ℤ respectively; BGL∞(0)⁺=* so the zero-ring projective completion is *. | Pass; retain.  [r4] |
| 4.22 Naturality | ℤ→𝔽₂; identity field map | Rank class 1↦1 in K₀; determinant −1 maps to +1 in 𝔽₂×. Identity induces identity on both factors. | Pass; retain.  [r4] |
| 4.23 Strictification | Empty word, singleton, two words | Evaluation gives unit, x, x⊗y; concatenation lengths add 0+n=n. For identical object words structural permutations remain actual isomorphisms. | Pass; retain.  [r4] |
| 4.24 Segal summing functors | Finite-set core; based sets 0,1,2 | Value at 0 is contractible, at 1 has π₀=ℕ, at 2 has π₀=ℕ²; fold gives (a,b)↦a+b. | Pass; retain.  [r4] |
| 4.25 Segal E∞ monoid | Discrete monoids ℕ and C₃ | π₀ are ℕ and C₃ with their actual additions; only second is grouplike. Constant two-point diagram has noncontractible value at 0. | Pass; retain.  [r4] |
| 4.26 Picard criterion | Discrete ℕ, ℤ | Object 1 has no inverse in ℕ, has inverse −1 in ℤ; component monoids are correspondingly nongroup/group. | Pass; retain.  [r4] |
| 4.27 GW plus | 0, ±1, E₈ | Signatures (0,0),(1,0),(0,1). E₈⊥−E₈⊥J is odd signature (9,9), hence J⁹; even hyperbolic stabilization cannot absorb an odd line. | Pass; retain.  [r4] |
| 4.28 Simplicial function rings | n=0,1; constant function 2 | C(Δ⁰,k)=k; both endpoint restrictions send 2 to 2 and restriction along any degeneracy keeps 2. | Pass; retain.  [r4] |
| 4.29 Projective freeness/GL | P=0; rank-one trivial module; n=0; outside simplex | Free ranks 0,1; C(Δ⁰,k)=k. A Möbius-line module over C(S¹,ℝ) is nonfree. Idempotent homotopy over a simplex has constant rank and close-idempotent conjugacy. | Pass; retain.  [r4] |
| 4.30 Topological K comparison | k=ℝ,ℂ; rank 0,1 | π₀ku=π₀ko=ℤ, units rank 1. GL₁(ℝ) has 2 components; GL₁(ℂ) is connected. Singular interior and vertex both evaluate to 5/4, so the counit is not an isomorphism. | Pass; retain.  [r4] |
| 5.1 Loop/suspension/shift | 0, S, Hℤ | All operations send 0 to 0; π₁ΣS=π₀S=ℤ; π₀ΩHℤ=π₁Hℤ=0. | Pass; retain.  [r4] |
| 5.2 Naive cone LES | id_Hℤ; Hℤ→0 | First cone groups=0; second cone=ΣHℤ, with boundary π₁=ℤ→π₀Hℤ=ℤ an isomorphism. | Pass; retain.  [r4] |
| 5.4 Semistability | S,0,F₁S¹ | S has π̂₀=π₀=ℤ, 0 has 0=0. F₁S¹ has π̂₀ free of countable rank versus true π₀=ℤ; λ misses a nonzero summand. | Pass; retain.  [r4] |
| 5.5 Stable equivalence | F₁S¹→S; 0→S | First induces true π₀ ℤ→ℤ identity despite unequal naive groups. Second gives 0→ℤ and fails. | Pass; retain.  [r4] |
| 5.6 Point-set true pairing | Units of S⁰,S¹; switch two degree-one spheres | Unit pairing 1·1=1; twist on S¹∧S¹ has degree −1=(−1)¹. | Pass; retain.  [r4] |
| 5.9 Finite biproduct | Hℤ∨Hℤ→Hℤ×Hℤ | π₀ map is matrix diag(1,1), giving ℤ²→ℤ². Infinite wedge has ⊕ℕℤ, infinite product ∏ℕℤ, so finiteness matters. | Pass; retain.  [r4] |
| 5.10 Flat smash | 0,S; sphere with level 0 deleted | 0∧E=0, S∧ᴸE=E. Deleted-level sphere has noninjective degree-2 latching fold; it fails flatness. | Pass; retain.  [r4] |
| 5.11 Derived pairing | Degree 1 and −1 sphere classes | Product degree=0; swapping gives (−1)^(−1)=−1. Degree 0 unit gives sign +1. | Pass; retain.  [r4] |
| 5.12 Connectivity | ΣᵃS∧ᴸΣᵇS | Lowest nonzero group is π_(a+b)=ℤ on both sides; a=−1,b=1 gives π₀=ℤ, not a truncated natural degree. | Pass; retain.  [r4] |
| 5.13 Operad algebras | Zero module; unit HR | Nullary unit sends 1 to 1 for HR and to 0 for the zero ring object; arbitrary nonunital multiplication lacks that operation. | Pass; retain.  [r4] |
| 5.14 HR/modules | R=0,ℤ,𝔽₂ | π₀HR=0,ℤ,𝔽₂ respectively; other π vanish. Unit at R=0 is the unique map to 0. | Pass; retain.  [r4] |
| 5.15 Complex EM functor | ℤ in cochain degree 2 | H²=ℤ corresponds to π₋₂=ℤ, all other groups 0; sign-reversed indexing would put it in π₂. | Pass; retain.  [r4] |
| 5.16 Homology/homotopy | Complex ℤ --×2→ℤ in degrees −1,0 | H⁰=C₂,H⁻¹=0, hence π₀=C₂,π₁=0. Multiplication by 0 instead gives π₁=π₀=ℤ. | Pass; retain.  [r4] |
| 5.17 Compactness/cell closure/approximation | D(ℤ), G=ℤ[0], E=Hom(−,C₂[0]); empty G | R=C₂[0], x=id gives evaluation C₂→C₂, 0↦0,1↦1. Empty family gives R=0. ℤ[−1] has H¹=ℤ and is outside the connective closure; ⊕ℕℤ fails compactness via its identity. | Pass; retain.  [r4] |
| 5.18 Connective deloopings | Hℤ; Σ⁻¹Hℤ | Hℤ levels K(ℤ,i) have πⱼ=0 for j<i. Σ⁻¹Hℤ has π₋₁=ℤ and is excluded; the connective restriction is real. | Pass; retain.  [r4] |
| 5.19 Picard/η | Ordinary lines; super lines over ℂ | Even line self-swap=+1; odd line self-swap=−1. On π₀=C₂, η sends odd class to −1 in ℂ×; forgetting braiding loses it. | Pass; retain.  [r4] |
| 6.1 Waldhausen spectrum | Zero category; finite pointed sets | Zero gives all stable groups 0. Raw finite-set level 0 has components ℕ, while spectrum π₀=ℤ; raw level 0 cannot be declared Ω∞. | Pass; retain.  [r4] |
| 6.2 Additivity/delooping | Split vector-space cofibration 𝔽₂→𝔽₂²→𝔽₂ | K₀ relation 2=1+1. Automorphism group of the flag has order 2, whereas product GL₁(𝔽₂)² has order 1; additivity is not degreewise groupoid equivalence. | Pass; retain.  [r4] |
| 6.3 BPQS | Finite pointed sets; vector-space negative control | Two-point set represents 1∈π₀S=ℤ; stable π₁=C₂. A pointed-set filtration has product permutation automorphisms; the vector-space flag above instead has orders 2 versus 1. | Pass; retain.  [r4] |
| 7.1 Moore S/m | m=1,2,3; degree-zero negative control | S/1=0; H₀(S/2)=C₂,H₀(S/3)=C₃. 2·id_(S/2)=iηj≠0. Cone(0:S→S)=S∨ΣS, outside m≥1. | Pass; retain.  [r4] |
| 7.2 E/m | E=Hℤ,H(C₂), m=2 | First has π₀=C₂ only. Second has π₀=π₁=C₂, because ×2=0; a quotient-only model loses π₁. | Pass; retain.  [r4] |
| 7.3 Bockstein LES | H(C₂)/2 | Boundary π₁(H(C₂)/2)→π₀H(C₂) is id_C₂; quotient map on π₀ is id_C₂. | Pass; retain.  [r4] |
| 7.4 Coefficient UCT | Hℤ/2; H(C₂)/2 | Degree 0 quotient C₂; degree 1 torsion term 0 in first and C₂ in second. Exact sequences give those same values. | Pass; retain.  [r4] |
| 7.5 Peterson splitting | m=3; excluded m=2 | At 3 the relevant 2-primary η obstruction is 0. At 2 the endomorphism extension of S/2 has middle group C₄, not C₂⊕C₂. | Pass; retain.  [r4] |
| 7.6 Coprime Moore decomposition | m=2,n=3; noncoprime 2,2 | H₀S/6=C₆≅C₂⊕C₃. C₄ is not C₂⊕C₂ (element order 4 versus 2), so coprimality cannot be omitted. | Pass; retain.  [r4] |
| 7.7 Prime-power maps | p=2,r=1; E=H(C₂) | Inclusion 1 mod2↦2 mod4; reduction 1 mod4↦1 mod2. On H(C₂)'s torsion term reduction is ×2=0, whereas its quotient term is id. | Pass; retain.  [r4] |
| 7.8 Prüfer coefficients | E=Hℤ; E=H(C₂), p=2 | First π₀=ℚ₂/ℤ₂. Second tensor term=0 and π₁=C₂ from torsion. Inclusion, not reduction, gives the displayed direct limit. | Pass; retain.  [r4] |
| 7.9 lim/lim¹ comparison | Identity tower A; zero-transition A | δ=1−shift gives kernel A,cokernel 0 in first; δ=id gives kernel=cokernel=0 in second. | Pass; retain.  [r4] |
| 7.10 Nonzero lim¹ | ×2 tower ℤ; ×3 tower with map ×2 | lim=0,lim¹=ℤ₂/ℤ; [1/3]≠0. At p=3, [1/2]≠0 but 2[1/2]=[1]=0. Same values in π₋₁holim spheres. | Pass; retain.  [r4] |
| 7.11 Tate-module extension | E=H(ℚ_p/ℤ_p), degree 1 | Quotient contribution π₁E/pʳ=0; torsion inverse limit T_pπ₀E=ℤ_p; completion π₁=ℤ_p. Tensor π₁E would give 0. | Pass; retain.  [r4] |
| 7.12 General Moore mapping UCT | A=0,ℤ,C₂; X=S/2 in last | First map group 0; second [S,X]=π₀X. Last: Ext¹(C₂,π₁S/2)=C₂ and Hom(C₂,π₀S/2)=C₂, with [S/2,S/2]=C₄, not just Hom. | Pass; retain.  [r4] |
| 7.13 Finite-generation completion | A=ℤ,C_p,C_ℓ with ℓ≠p | Completion/tensor values ℤ_p,C_p,0. Residue of completed 1 is 1 at every level. Prüfer example gives extra degree 1 as above. | Pass; retain.  [r4] |
| 7.14 p-completeness criteria | Hℚ,H(C_p) | ×p tower on Hℚ is an equivalence tower, holim=Hℚ≠0; completion=0. On H(C_p), ×p=0, holim=0 and completion=H(C_p). | Pass; retain.  [r4] |
| 7.15 Closure of complete objects | Product and suspension of H(C_p) | π₀ product=∏C_p still killed by p; suspension shifts its sole group to degree 1; both remain complete. | Pass; retain.  [r4] |
| 7.16 Mod-p detection | 0→Hℚ; id_H(C_p) | First is mod-p equivalence 0→0 but not equivalence, and target is not complete. Second is an equivalence of complete spectra. | Pass; retain.  [r4] |
| 7.17 Bounded exponent | H(C_pᵃ); H(ℚ_p/ℤ_p) | First completes to itself. Second has unbounded p-exponent and completion π₁=ℤ_p, so the premise distinguishes them. | Pass; retain.  [r4] |
| 7.18 Coefficient completeness | Hℤ/p²; S/2 | First is H(C_p²) and complete. S/2 has 2·id≠0 but 4·id=0; completeness does not require 2·id=0. | Pass; retain.  [r4] |
| 7.19 Rational classification | Hℚ⊕Σ⁻²Hℚ; Σ⁻²S→Σ⁻²Hℚ | Graded groups ℚ in degrees 0,−2. Mapping group in second is ℚ=Hom(ℤ,ℚ). Integer-sphere torsion groups map to 0. | Pass; retain.  [r4] |
| 7.20 Arithmetic square | Hℚ; H(C_p) | Hℚ has zero prime completions and rational vertex Hℚ; pullback=Hℚ. H(C_p) has only its p-completion nonzero, rational vertices 0; pullback=H(C_p). | Pass; retain.  [r4] |
| 7.21 Filtration/grading | Constant Hℤ; zero filtration of Hℤ; single-step Hℤ | Constant gr=0, hocolim=Hℤ, negative holim=Hℤ. Zero filtration has hocolim=0. Single-step has gr₀=Hℤ only. | Pass; retain.  [r4] |
| 7.22 Exact couple | D=E=ℤ² with displayed i,j,k | ji=kj=ik=0; jk(0,1)=(1,0)≠0, (jk)²=0; i²(1,0)=(1,0)≠0. | Pass; retain.  [r4] |
| 7.23 Filtered SS/indexing | Single-step Hℤ; constant Hℤ; d₂ at (3,0) | Single-step E₁(0,0)=ℤ=E∞. Constant E₁=0 but colimit π₀=ℤ. d₂ lands at (1,1), total 3→2. | Pass; retain.  [r4] |
| 7.24 Left-bounded convergence | Single-step Σ⁻²Hℤ; finite two-step filtration | First E∞(0,−2)=ℤ=π₋₂; connectivity is unnecessary. Two columns have no d_r for r≥2; associated graded is the two image-quotients, without a splitting claim. | Pass; retain.  [r4] |
| 7.25 Increasing-connectivity towers | Constant identity Hℤ tower; Postnikov tower | Constant F₀=Hℤ,F_s=0(s>0), L=Hℤ,lim¹=0. d₁(0,2)=(1,2) lowers stem 2→1. Eventual Postnikov π towers are constant, giving lim¹=0. | Pass; retain.  [r4] |
| 7.26 Boardman obstructions | Zero couple; D=ℤ,i=id,E=0 | First A⁺=RA⁺=A⁻=RE∞=W=0. Second E_r=RE∞=W=0 but A⁺=A⁻=ℤ, so conditional convergence fails. | Pass; retain.  [r4] |
| 7.27 AHSS | X=*, S¹ with E=Hℤ | Point: only H₀=ℤ; circle: entries (0,0),(1,0)=ℤ, giving H₀=H₁=ℤ and no differentials. | Pass; retain.  [r4] |
| 7.28 Mod-coefficient products | S/2,S/3,S/8 | S/2 has nonzero 2·id and no unit; S/3 has unital multiplication but nonzero associator α₁; S/8 admits associative multiplication, not commutative Moore multiplication. | Pass; retain.  [r4] |
| 7.31 HF₂ synthetic coordinates | τ; 2̃; q=3 at n=1 | τ has bidegree (0,−1), 2̃ degree (0,1). τ inversion sends C(2̃³) to S/8 with H₀=C₈; inequality 2q≥3(n+1) is 6≥6. | Pass; retain.  [r4] |
| 7.33 Browder products | Hℤ; τ≤1S; τ≤3S_(3) | Hℤ/2=H𝔽₂ is commutative. τ≤1S has η≠0 and 2·id_(E/2)≠0. At 3, reduced α₁ generates π₃(E/3)=C₃ and obstructs associativity. | Pass; retain.  [r4] |
| 7.34 Moore Eₙ bounds | p=2,n=1,2; p=3,n=1 | Bounds give q≥3,5 at 2 (S/8,S/32), q≥2 at 3 (S/9). S/2 fails the unit test; S/3 fails associativity, consistent with exclusions. | Pass; retain.  [r4] |

[r4]: packages/StableHomotopyKTheory/reports/PRREVIEW-StableHomotopyKTheory~4.md

## Not verifiable

- No source required by the changed passages was inaccessible. The other 14 seeded locators are outside this incremental source resampling; their computations are inherited above.
- The earlier report's limitation remains: the separate Barratt–Eccles Γ⁺-structures I approximation proof was unavailable through the legal source lookup, which reached the paywalled Elsevier route. Its source certification is not newly claimed. The previously checked WIV BPQS statement and explicit comparison are unchanged.
- S's unfinished Waldhausen iteration/structure-map details and all other unchanged source-certification limits in [r4] remain unchanged. The roadmap treats those construction details as targets. A successful sorry elaboration does not prove the statements.

## Source issues

The first eight entries are retained from [r4] (the Bu issue was also rechecked here); the last was found in the reopened sign proof.

- **Error** in WIV at Example 3.1.2, printed p. IV.25 (WIV line 1088): the source says all successive cellular degrees for BC₂ are two; it should be zero in odd dimensions and two in positive even dimensions; affects a stated result.
- **Gap** in S at Example I.3.50, printed pp. 56–57 (S lines 2806, 2823–2825): the source leaves iteration and spectrum structure maps unspecified; it should construct these maps and their equivariance before asserting the delooping result; affects the proof.
- **Misprint** in S at Proposition II.5.14 proof, printed p. 261 (S line 13837): the source says the evaluation codomain is R(G); it should be E(G); affects nothing.
- **Misprint** in S at the sentence preceding Eq. (6.42), printed p. 286 (S lines 15162–15163): the source says kernel and cokernel use π₀X for Hom(d,πₙX); it should use πₙX in both groups; affects nothing.
- **Misprint** in S at Theorem II.9.6 proof, printed p. 302 (S lines 16075–16077): the source says [S,HV*] vanishes according to an unbound n; it should simply identify [S,HV*] with V₀; affects nothing.
- **Error** in Bu at Remark 1.6, printed p. 2 (Bu lines 63–90): the source asserts an Ind-completion left adjoint back to an arbitrary stably monoidal category; it should restrict descent to the original finite-object subcategory unless the target has the required colimits; affects the proof.
- **Misprint** in WIV at Proposition 2.7, printed p. IV.21 (WIV lines 923–930): the source repeats q₁ in both Chinese-remainder factors; it should use q₁ and q₂; affects nothing.
- **Error** in WIV at Scholium 2.8.1, printed p. IV.21 (WIV lines 946–949): the source infers all exceptional associative commutative products from degree vanishing alone; it should impose additional η and associativity-obstruction hypotheses; affects a stated result.

- **Misprint** in S at Proposition I.2.17 proof, printed p. 30 (S line 1496): the source says the auxiliary loop argument uses an unbound s and omits x; it should be ω(2x/(2−t)) for x≤1−t/2, basepoint otherwise, interpolating evaluation and the reflected h composite; affects the proof.
