# Étale homotopy types: repair findings

## F01 (P1) — applied

Unowned G1–G7 → deleted from the authorized top-level gaps list. G1’s premise is contradicted by IStr line 538; §§0.3, 2.3, 3.4, 3.5, 3.8 and 6.9 own the corresponding targets. ComplexComparisonPartII §C−1.1 supplies G6’s analytification. BK has one spectral-sequence contract and one distinct convergence contract, without the obsolete G2 record. All remaining gaps have supplier, section, slug and matching README text.

## F02 (P2) — applied

The input theorem `finiteAbelianHigherLimits` → deleted from `packages/EtaleHomotopyTypes/Suggested.lean` and its README headline references. §2.2 retains the full mathematical target. SS line 1573 identifies its role as Lemma A.7, preceding Theorem A.8 at SS line 1611. The Lean module now inventories the unavailable headline carriers and contains no declarations or substitute theorem.

## F03 (P2) — applied

An independent group-completion construction → the limit in native ProfiniteGrp of levelwise native completion. The contracts cite Mathlib’s completion adjunction and finite-quotient presentation, and Tau Ceti’s unbundled interfaces. §3.0a proves the additional pro-group universal property, including nonsurjective transitions. A new ℤ ←×2 ℤ Check distinguishes this construction from completion of the abstract limit. The Lean carrier description was corrected too.

## F04 (P2) — applied differently

Redundant Kan–Quillen, derived-limit, coefficient and analytic-smooth requests → existing suppliers plus precise remaining gaps. GeneralizedCohomology §G2.1 owns the model; Mathlib owns abelian derived functors; ComplexComparisonPartII §C−1.1 supplies smooth charts. Native twisted cochains are Hom-from-twisted-chains, so direct L-valued cochains are cited to AlgebraicTopology Stage 6.1 instead of equating these conventions. BK is requested only once per distinct theorem.

## F05 (P2) — applied

Bundled contracts → 24 precise supplier gaps, identically recorded in the README and plan. §3.1 owns geometric-point replacement; §5.3b owns analytic étale descent. The elementary-fibration request specifies a carrier, without existence. Generic rectification imports BordismFormalGroups §F6.5 rather than requesting it again. Finite-diagram level representation explicitly excludes nonidentity endomorphisms; all affected Needs lines and layer dependencies were updated.

## F06 (P3) — applied

Garbled section-number substitutions → “pro-covering” throughout §§1.1, 1.4–1.5 and 3.6–3.7. The defining sentence and pullback API now name their object. References in §3.4 and References use §§1–2.2 / §§1–2.3. The §3.6 base-change typo and §6.3 interface sentence were repaired. Scope now cites SchemeAndStackFoundations §§0.9–0.12, 2.10 and 2.15, without §2.5.

## F07 (P3) — applied

Incorrect extraction/declaration lines → verified locators throughout §§0.1–0.2, 1.1, 1.6, 3.1, 3.4–3.6, supplier contracts and References. IEt line 271 supports its mod-p invocation of Friedlander; IEt line 331 separately states the locally constant comparison. SS line 228 supports profiniteness, SS line 373 completion, and SS lines 237 and 269 base change. Native Mathlib lines were corrected as listed below.

## F08 (P3) — applied

A scheme-level criterion attributed directly to SS → explicit distinction between SS’s variety case and the roadmap’s noetherian-scheme extension. §3.9b retains the general statement and supplies its pro-universal-cover argument using §§1.2, 3.4–3.5 and AM Theorem 4.3. SS line 418 states the narrower case. The identity on a square-zero thickened separably closed point checks the nonreduced range.

## F09 (P3) — applied

One combined §3.9 dependency list → §§3.9a, 3.9b and 3.9c, each with its own statement, route, Checks and Needs. The finite-cover product formula has no raw-homotopy prerequisite. §4.7 now cites §3.9c for asphericity and §3.9a for the fundamental-group product; Scope, §1.9, §4.0b and layer dependencies use the exact new sections.

## F10 (P3) — applied

The Gₘ² product Check → §3.9a. §4.0b’s third Check now uses Spec ℚ(i) over ℚ: its arithmetic image is G_ℚ(i), an open subgroup of index 2, and is not surjective. This agrees with the finite-separable-extension and purely inseparable controls already in that subsection.

## F11 (P3) — applied

A requirement to reindex for compatible-family existence → direct citations of Mathlib’s finite and compact Hausdorff cofiltered-category theorems, alongside Tau Ceti’s preorder specializations. §2.2 uses the categorical results on finite fibers. §3.1 uses them for systems of finite étale lift fibers; general rigid neighborhoods retain the separate common-refinement argument and are not presumed to have finite fibers.

## F12 (P3) — applied

“Chosen injective-resolution structure” → “assume injective resolutions exist”; the native class is Prop-valued. §2.2’s Needs names Mathlib’s rightDerived, lim, additivity and compatible-family declarations and the nonabelian-lim1 gap. The ordinary simplicial-model prerequisite was deleted from this subsection. Its abelian statement retains arbitrary small cofiltered indexing, finiteness at every object and strictly positive degree.

## F13 (P3) — applied

“Degreewise finite-dimensional” in §§6.6 and 6.8 → H^m_et of the entire simplicial object, or each specified simplicial grade, finite-dimensional for every cohomological degree m. This matches §6.5 and DAG13 line 4150, rather than imposing a condition separately on each scheme X_n. No truncation or finite simplicial dimension was added.

## F14 (P3) — applied

An informal general-descent sentence → §5.3b’s explicit étale hypercover theorem with quasi-projective base and arbitrary locally finite-type pieces. §5.2 defines the singular diagonal on that full analytic domain, retaining the algebraic evaluation formula on the quasi-projective subcategory. §6.7 applies §5.3b degreewise and then diagonal comparison. Infinite Čech pieces, a singular node, nilpotents and missing degree-zero coverage are Checks.

## Verification and acceptance outcome

- Final elaboration: `lake env lean` on `packages/EtaleHomotopyTypes/Suggested.lean`, run from the content checkout with the absolute input required by the brief: exit 0, empty output, no warnings. There are no TauCeti imports, so no targeted object-file build was necessary. An earlier elaboration also exited 0. A preliminary prose-edit command used the wrong working directory and failed before writing; the edit was then made in the board and final elaboration rerun.
- Signature/binder audit: the original file contained one actual declaration. The supplied signature extraction’s two declarations named “lack” came from prose in its module docstring. The original actual theorem’s displayed signature retained I, SmallCategory, IsCofiltered, HasInjectiveResolutions, A, finite underlying groups, n and positivity; none was lost. After its deletion, the declaration list is empty, so there are no remaining own signatures to add `#check @name` for. A scratch copy of the final module plus 27 `#check @` commands for its cited Mathlib interfaces elaborated once: exit 0, all 27 types printed, no errors. Their existence and size/typeclass hypotheses were compared with the README.
- Dependency gate, using the prescribed `--depcheck`, `--name EtaleHomotopyTypes`, merge order and `--movable`: exit 0. Complete output:

    depcheck: 50 roadmaps, 584 edges, 0 problem(s)

- The dependency output contains no UPWARD, CYCLE or moved line. No merge-order file was changed.
- Citation resolver: exit 0; no unresolved cross-roadmap citations and no unresolved Lean names. Its output says external Lean names were not checked by that service; those were checked separately against the local pinned sources and the 27-name Lean audit.
- Structural checks: all 24 plan gaps have exactly matching README supplier/slug/needs lines and a section field; no G1–G7 records remain in that top-level list. Comparing parsed plan objects after deleting their gaps fields gives equality. All 58 numbered target subsections have one Needs line; every Checks list has at least three bullets. No own backticked Lean declaration name remains in the README. No obsolete substituted terms, forbidden options, machine paths or LaTeX delimiters were found in the edited deliverables.
- The final file-boundary audit initially found one preexisting trailing space in §4.0b; it was removed and the audit rerun successfully. `git diff --check`: exit 0. Only the authorized README, Suggested.lean, sources.toml, top-level plan gaps and this report were changed. Metadata was unchanged. No separate gate failures were supplied in the brief; the supplied citation lead for the filename sources.toml was not a mathematical declaration.
- Sources: 12 unique lifetime keys, no new work or duplicate key. AM’s cited_for now includes effacement/detection. FGV, BK, AM and Fr remain settled uncertified references; no source text was requested again and no missing-reference request was created. Source files were only read from the legal cache. No commit, push or external message was made; no Lean process remains running.

## Source and supplier evidence

The changed mathematical locators were opened and read: I01 lines 281, 305, 340, 412, 423, 637 and 1658; IStr lines 494–539; SS lines 228, 237, 269, 288, 373, 414–432, 438–478, 1457, 1475–1525, 1573–1638, 1675–1753, 1833, 1866, 1912 and 1953; IEt lines 271, 331, 594–641 and §§5–6; DAG13 lines 3708, 3736 and 4146–4150; BHH lines 2226, 2427–2438 and 2505–2512; IC lines 185, 198 and 233; SGA1 line 12282. These support the claims at the stated scopes; AM, BK, Fr and FGV were cited by their settled locators, not represented as read texts.

Native definitions were read at Mathlib 6b7abb3c and Tau Ceti a91d3aaf, the content manifest pins. Relevant corrected/new locations are:

| Interface | Pinned file and line | Actual mathematical scope |
| --- | --- | --- |
| SSet.KanComplex; hornFilling | Mathlib/AlgebraicTopology/SimplicialSet/KanComplex.lean:40,45 | Fibrancy and positive-dimensional horn extensions; no pro-category |
| Singular/simplex, realization, adjunction, constant comparison | Mathlib/AlgebraicTopology/SingularSet.lean:50,56,65,73,97 | Native universe lift; constant comparison assumes totally disconnectedness, without compactness or nonemptiness |
| rightDerived; lim; HasInjectiveResolutions | Mathlib/CategoryTheory/Abelian/RightDerived.lean:108; Mathlib/CategoryTheory/Limits/HasLimits.lean:555; Mathlib/CategoryTheory/Preadditive/Injective/Resolution.lean:70 | Additive functor, abelian categories and existence of injective resolutions; existence class has codomain Prop |
| Group completion and adjunction | Mathlib/Topology/Algebra/Category/ProfiniteGrp/Completion.lean:191,205,215 | Abstract source group, continuous profinite target morphisms |
| Finite-quotient presentation | Mathlib/Topology/Algebra/Category/ProfiniteGrp/Limits.lean:48,138 | Open normal subgroups and a continuous multiplicative equivalence to the limit |
| Unbundled completion | TauCeti/Topology/Algebra/Group/Profinite/Completion.lean:68,179 | Finite-group unit bijectivity; continuous-target universal property, including larger target universe |
| Compatible finite sections | Mathlib/CategoryTheory/CofilteredSystem.lean:79 | Arbitrary small cofiltered-or-empty category, finite nonempty fibers |
| Compatible compact families | Mathlib/Topology/Category/TopCat/Limits/Konig.lean:126 | Small cofiltered-or-empty category, nonempty compact Hausdorff objects, continuous diagram |
| Native twisted cochains | TauCeti/AlgebraicTopology/Cohomology/Twisted/Basic.lean:79,84 | Hom from L-twisted chains into M; direct L-valued cochains cannot be inferred without the appropriate dual comparison |
| Native coefficients and compactness specializations | TauCeti/AlgebraicTopology/LocalCoefficient.lean:43,75,102,136,252; TauCeti/Topology/Compactness/InverseSystem.lean:78,96 | Unrestricted module fibers and path transport; directed-index compactness versions |

Cross-roadmap citations were re-read using the provided roadmaps show/grep service, with existing-roadmap revisions taken from main. Read-only main roadmaps used for form and ownership included AlgebraicTopology, GeneralizedCohomology, ProfiniteProPGroups, EnhancedDerivedSheaves and Completed/UniversalCovers. The relevant contracts are:

| Supplier | Verified section and consumption |
| --- | --- |
| AdicSpacesPartII | R0.19.9: Ind-opposite carrier, stagewise Hom formula, naturality, finite limits and flattening |
| PerfectoidSpaces; DiamondsAndVStacks | P6.10 and D0.13: bounded presentations on that same carrier; no second Pro definition |
| AlgebraicTopology | Stage 6.1: arbitrary direct L-valued cochains; Stage 8.2, 8.5, 8.8–8.10: homotopy comparisons, Whitehead, group bar models, obstruction and representability scopes |
| GeneralizedCohomology | G2.1: pointed substrate, enrichment, unpointed Kan–Quillen construction and realization–Sing comparison; properness and the simplicial model axiom are the explicit residual gaps |
| BordismFormalGroups | F6.5, “Coherent model diagrams and stable enhancements”: general diagram rectification, including Kan complexes and group diagrams; this replaces the redundant generic-rectification request |
| StableHomotopyKTheory | 1.19–1.23, 1.28–1.34 at its open head: coverings, nerves, EG/BG, π₁ and edge-order convention; no surjective-nerve fibration criterion was found in these targets |
| Orbifolds | O4-N under O4 item 3: numerable submersion Čech descent, on the actual manifold nerve |
| EnhancedDerivedSheaves | E0.2–E0.5, E0.8: coherent categories and size; E2.6: generic hypercovers and uniformly bounded-below cohomological descent; topological realization is a distinct gap |
| SchemeAndStackFoundations | 0.9–0.12, 2.10, 2.15: approximation, unibranch geometry, étale neighborhoods, site and cohomology comparisons, affine-transition continuity |
| EtaleCohomologyFoundations | F.0.2, F.0.4, F.0.A2, F.2.6: finite-cover category, topological invariance, arithmetic sequence and finite-coefficient Künneth, retaining its Tor/invertibility hypotheses |
| ComplexComparisonPartII | C−1.1 at its open head: locally finite-type analytification, infinite gluing, finite fiber products, smooth local products and étale local isomorphisms; C5.1, C6.1–C6.3: the stated topological and finite-coefficient comparisons |
| ResolutionOfSingularitiesCharacteristicZero | 5.1–5.2, 6.1–6.2 at its open head: embedded resolution, principalization, closure and SNC compactification in their stated characteristic-zero scopes |
| ProfiniteProPGroups | Layers 0, 3, 4: native group completion, quotient topology, pro-p groups and generation/structure interfaces |

Object searches used roadmaps grep across main and the provided index of open roadmap heads, plus rg in the board packages and pinned libraries. Searches covered pro-simplicial objects, rigid hypercovers, homotopy pro-local systems, pro-group completion, finite derived limits, cofinite presentations, Moore–Postnikov towers, Kan–Quillen models, coherent Pro, topological hypercovers and rectification. They found the imported group/model/coefficient/rectification owners above; no competing owner of the scheme-specific rigid indexing, raw comparisons or analytic étale descent was found. This package retains those existing targets and specializes generic constructions supplied elsewhere. No other roadmap’s fully qualified declaration was introduced here.

## Adversarial mathematics pass

Values below are direct computations, rather than consequences of successful sorry elaboration. The report distinguishes the raw pro-object, its profinite completion and its ordinary materialization. Rows for compound subsections separate the defining construction from additional substantive assertions where needed.

| Statement | Instances tried | Construction / left value | Comparison / right value | Result and repair |
| --- | --- | --- | --- | --- |
| Universe and index conventions | Constant two-point space; empty index; bounded presentation at κ=1 | Hom(2,2) has 4 elements; empty-index limit is a point; a nonempty cofiltered index has at least its identity arrow | Universe lifts retain 4 maps; strict arrow bound <1 fails | Sizes retained; no empty-index inference of an empty object |
| Connected versus path-connected | Tower B(ℤ ←×2 ℤ) | Each level has π₀=1; lim π₁=0 | π₀ holim=ℤ₂/ℤ, containing nonzero [1/3] | Distinction necessary in every materialization statement |
| Transport and loop order | α=(123), β=(12), γ=(12) in S₃ | αγα⁻¹=(23); β(23)β⁻¹=(13) | (βα)γ(βα)⁻¹=(13); α⁻¹γα=(13) already at the first step | Successive action and inverse convention distinguished |
| Raw coefficient and scheme conventions | Spec ℂ; Spec ℝ; Spec(k[ε]/ε²) | H⁰(Spec ℂ,A)=A; H²(Spec ℝ,ℤ)=ℤ/2 | Higher H of the separably closed point is 0; thickening has the point’s étale site | Arbitrary A and nilpotents retained |
| Complex/simplex/coefficient conventions | Δ¹; p=2,3; two points; empty grading | Endpoints are 0 and 1; H⁰(two points,𝔽ₚ)=𝔽ₚ²; empty cohomology is 0 | H₀(two points,𝔽ₚ)=𝔽ₚ²; both empty graded objects are empty | No denominator p=0 or p=1; coproduct/product conventions agree |
| Kummer normalization | Positive loop in ℂ* and n=3 | A chosen cube root returns multiplied by ζ₃ | ζ₃ corresponds to 1 in ℤ/3; inverse loop gives −1=2 | Supplier and target signs agree |
| §0.1 pro-local systems and homotopy | c Sing S¹; c{0,1}; sign system | π₁=cℤ, πₙ=0 for n≥2; π₀ has 2 elements; sign boundary is −2 | H⁰(sign)=0, H¹(sign)=ℤ/2; constant boundary 0 gives ℤ,ℤ | Correct carrier and nonconstant coefficients |
| §0.2 weak equivalences and model | S²→*; c∏K(ℤ,n)→(P_m K) | First map has π₂ ℤ→0; second has eventually constant π_n=ℤ at every fixed n | Every finite truncation omits π_(m+1)=ℤ | Homotopy and strict equivalences remain distinct |
| §0.3 properness | Degree-two circle cover pulled back along the Postnikov equivalence of S¹×K(ℤ,2); identity fibration | Pullback has π₁=2ℤ, π₂=ℤ; identity pullback is the original object | Same groups on both sides; identity comparison is identity | Consistent with the IStr repair, not strict weak equivalence substitution |
| §0.4 connected detection | Identity of cS¹; BC₂→BS₃ via a transposition | π₁ maps ℤ→ℤ identically; C₂ has 2 elements | Second target S₃ has 6 elements, so no π₁ isomorphism | Positive and negative detection controls |
| §0.5 all-local-coefficient detection | S¹→*; BC₃→* with 𝔽₂ | H¹(S¹,ℤ)=ℤ versus 0; H*(BC₃,𝔽₂)=(𝔽₂,0,…) | π₁(C₃)=C₃ versus 1, although that one coefficient agrees | Full local-system and π₁ tests retained |
| §1.1 pro-covering definition and API | Identity; degree-two circle cover; Sing S¹→* | Fiber cardinalities 1,2; deck groups 1,C₂ | The last map admits multiple lifts of paths from a fixed endpoint | Restored term; Kan fibration alone is insufficient |
| §1.2 subgroup representability | Circle U=ℤ,2ℤ,0; source maps of degrees 3,4 | Cover degrees 1,2,∞; degree-3 image 3ℤ is not contained in 2ℤ | Degree-4 image 4ℤ is contained in 2ℤ and has a unique pointed lift | All subgroups, not only finite index |
| §1.3 covering invariance | Identity circle; Postnikov equivalence of S¹×K(ℤ,2) | Subgroups of π₁ are nℤ before replacement | Same nℤ after replacement; degree-n covers correspond | Equivalence preserves the actual covering data |
| §1.4 coverings as fibrations | Identity; circle degree-two covering | Unique simplex lifts give one-point matching fibers or two sheets | Matching covering maps have no higher relative homotopy groups | Strong-fibration route consistent |
| §1.5 covering base change | Identity homotopy isomorphism over the circle and its double cover | Pulled-back map is identity; H¹=ℤ | Both deck rotations act as +1 on H¹ | Equivariance and existence, without a uniqueness claim |
| §1.6 B*G construction | G=1; constant C₂ at predecessor count n+1; (C_(p^r)) | G*_i has order 1 or 2^(n+1); B* has π₁=1 or C₂ | Higher groups vanish; tower π₁ remains (C_(p^r)), with limit ℤₚ | Point case, finite case and nonconstant pro-group distinguished |
| §1.7 full faithfulness | C₂→S₃ | Generator images are 1,(12),(13),(23): 4 homomorphisms | Four pointed nerve maps and four pointed homotopy classes | Nonabelian test excludes accidental conjugacy quotient |
| §1.8 maps into BG | S¹→BC₃; S²→BG | Hom(ℤ,C₃) has 3 elements; Hom(1,G) has 1 | Three pointed circle classes; one pointed sphere class | Correct first Postnikov input |
| §1.9 classifying map and raw K(π,1) | Point; circle; S² | Classifying π₁ map is identity in every case | Higher groups 0,0,π₂=ℤ respectively | Exactly the first two maps are equivalences |
| §2.1 materialization and adjunction | Constant two-point set; *→{0,1} with value 0 | Constant materialization has 2 components; cosimplicial degree 0 admits 2 tuples | Tot₁ admits only (*,0), hence 1 compatible tuple | Compatibility equations and diagonal order retained |
| §2.2 nonabelian finite lim¹ | Constant S₃; C_(p^r); finite C₂ tower with zero maps | Nonabelian lim¹ is a singleton in all three cases | For zero maps, the difference operator is identity, so its cokernel is 0 | No surjectivity of transitions imposed |
| §2.2 higher abelian limits | Constant C₂; C₂^F over finite subsets F of ℝ; ℤ ←×2 ℤ; s=0 | Positive derived limits of finite systems are 0; limit of the second is C₂^ℝ | Infinite-group tower has lim¹=ℤ₂/ℤ with [1/3]≠0; lim⁰ cC₂=C₂ | Finiteness and positive degree essential; no countability bound |
| §2.3 profinite homotopy-limit theorem | B(C_(p^r)) for p=2,3; B(ℤ ←×2 ℤ) | First materialization has π₀=1, π₁=ℤₚ and πₙ=0 for n≥2 | Second has π₀=ℤ₂/ℤ, despite lim π₁=0 | Convergence is a separate supplier input |
| §2.4 relative cylinder | Two marked vertices; two marked plus an unmarked vertex | Cylinder has 2 vertices in the first case; 4 vertices and one nondegenerate edge in the second | Projection preserves components; the lone directed edge has no inverse-horn filler | Projection is weak equivalence, not generally fibration |
| §2.5 transport | Transposition C₂→S₃; ℤ→C₃ | Conjugate orbit has 3 elements in S₃ | C₃ conjugation fixes each of the 3 homomorphisms | Same αφα⁻¹ convention as supplier |
| §2.6 absolute orbit bijection | BC₂→BS₃ | Four pointed classes, with orbit sizes 1 and 3 | Two unpointed classes | Bijection computed on a nonabelian target |
| §2.7 pointed isomorphism lifts | BC₂ and BC₃ self-equivalences | Pointed automorphism counts 1 and 2 | Same unpointed counts, since cyclic inner action is trivial | Every class has its stated pointed lift |
| §2.8 relative surjectivity | BC₃ with trivial map to BC₂; BS₃ with sign map | Three pointed relative maps C₃→A₃ | Two unpointed relative classes | Surjective; injectivity not asserted |
| §2.9 relative isomorphisms | BS₃ over BC₂, identity unpointed class | Six inner automorphisms preserve the sign map | One unpointed automorphism class since Out(S₃)=1 | Isomorphism has pointed isomorphism preimages |
| §2.10 stabilizer action | Same relative BC₃/BS₃ model | S_X=C₂; Δ_XY=S₃ acts with 2 orbits | Kernel A₃ fixes the 3 maps, giving 3 orbits | Full stabilizer preimage is necessary |
| §3.0a completion definition and universal property | 1; cℤ; cS₃; (C_(p^r)) | Completions 1,ℤ̂,S₃ and the same finite-group system | Maps ℤ̂→C₂ number 2; S₃ order stays 6; finite subgroup labels remain 3 | Group construction imported; pro extension retained |
| §3.0a finite-target factorization lemma | Constant C₂; C₂ with zero transitions; completed ℤ ←×2 ℤ | Hom_cont to C₂ has 2 or 1 elements in the first two cases | Corresponding filtered colimits have 2 or 1 elements; odd-adic limit has 3 maps to C₃ | Compactness argument includes nonsurjective transitions |
| §3.0a completion versus abstract limit | ℤ ←×2 ℤ | Abstract limit is 0, with one map to C₃ | Completed limit is ∏_(ℓ≠2)ℤ_ℓ, with 3 maps to C₃ | Added Check detects completing the wrong object |
| §3.1 rigid cover and pullback | Spec ℂ; A¹_ℂ→Spec ℂ | Connected point neighborhood is Spec ℂ; ordinary affine-line pullback has 1 component | Rigid pullback has at least distinct labeled copies at 0 and 1 | Repeated components and infinite indices retained |
| §3.1 replacement and finite-lift comparison | Two separable closures of 𝔽_q; finite double cover over a separably closed point | Finite lift fiber has 2 elements; identity transition system has 2 compatible sections | G_Fq=ℤ̂, so change by inner conjugation is identity | Comparison owned here; no finite-fiber claim for arbitrary étale neighborhoods |
| §3.2 rigid hypercover | Quadratic finite Galois cover; empty augmentation over a point | U₁=Spec L⊔Spec L, matching U₀×_k U₀ | Empty degree zero has 0 lifts over the point, so fails coverage | Matching degree zero retained |
| §3.3 Et and simplicial diagonal | Spec ℂ; Spec 𝔽_q; simplicial BCₚ | Types *,Bℤ̂,BCₚ | Fundamental groups 1,ℤ̂,Cₚ; using only X₀ gives 1 in the last case | All simplicial directions used |
| §3.4 arbitrary local coefficients | Spec ℂ with A; Spec ℝ with ℤ or C₂ | First H⁰=A, higher 0; integral C₂-group cohomology has H¹=0,H²=C₂ | Mod-2 group and étale cohomology are C₂ in every nonnegative degree | Non-torsion range distinct from finite comparison |
| §3.5 raw profiniteness and finite π₁ | Fields ℂ,ℝ,𝔽_q; square-zero thickening of ℂ | π₁=1,C₂,ℤ̂,1 respectively | Higher raw groups vanish; completion leaves these finite-quotient pro-groups unchanged | Field BG identification and thickening control agree |
| §3.6 finite étale base change | Two points over ℂ; Spec ℂ→Spec ℝ | First pullback has 2 components; second is the contractible C₂-cover | Component-set fiber product has 2 components; deck order is 2 | Pro-covering and projection comparison agree |
| §3.7 Galois-equivariant transport | Identity on Gₘ over ℝ, coefficients C₃ | Geometric H¹=C₃; conjugation acts by −1=2 | Identity sends 1↦1 and commutes with multiplication by 2 | Actual transport is equivariant, including its sign |
| §3.8 elementary-fibration sequence | Gₘ→Spec ℂ; A¹→Spec ℂ; P¹→Spec ℂ | Kernels ℤ̂(1),0; P¹ has nonzero higher étale homotopy | Short exact sequences split at 1 or 0; P¹ has no affine complement fiber when boundary is empty | Low-degree injectivity uses π₂(base)=0; no false elementary example |
| §3.9a finite-cover products | Gₘ²/ℂ; Y×Spec k; Spec ℝ×_ℝSpec ℝ | Fundamental groups ℤ̂²,π₁(Y),C₂ | Fiber products give the same values; C₂ diagonal has 2 elements versus 4 in direct product | Three independent product Checks; no raw prerequisite |
| §3.9b finite effacement | Separably closed point; P¹; dual point | Positive point cohomology is 0; H²(P¹,C₂)=C₂; dual-point cohomology agrees with point | Identity kills 0; no surjective finite cover kills the P¹ generator | Scheme generality retained; empty killing covers excluded |
| §3.9b finite profinite detection | Identities of BC₂ and BS₃; BC₃→* at 𝔽₂ only | Identity π₁ maps have orders 2 and 6 preserved; chosen BC₃ coefficient gives (𝔽₂,0,…) | BC₃ has π₁=C₃; at 𝔽₃ its H¹=𝔽₃, so the all-coefficient test fails | Negative Check states single-prime insufficiency, not a false counterexample to the full criterion |
| §3.9c raw products | No factors; Gₘ; Gₘ² and exponent-p product covering | Higher groups vanish for BG_k and Gₘ; torus Betti numbers 1,2,1 | Pullback on H¹ multiplies by p=0 mod p; on H² by p²=0 | Nonzero H² on the base is compatible with effacement, for p=2,3 |
| §4.0a strong center-freeness | 1; S₃; ℤ₂ | Centers 1,1,ℤ₂; open subgroup A₃ has center C₃ | Definition accepts 1, excludes S₃ and ℤ₂ | Center-free alone is insufficient |
| §4.0a relative outer Hom | Q=G=C₂; H=C₂×C₂→Q | Two over-Q sections t↦(0,t),(t,t) | Kernel conjugation is trivial, so quotient still has 2 classes | Over-Q and kernel action retained |
| §4.0b open image | Finite separable degree d; purely inseparable extension; ℚ(i)/ℚ | Arithmetic indices d,1,2 | Last image is proper but open; for 𝔽₄/𝔽₂ it is 2ℤ̂ | Replaced irrelevant product Check |
| §4.1 pointed arithmetic lifting | X=Spec ℂ, Y=Gₘ | Hom(1,ℤ̂) has 1 element | Target connectedness gives one unpointed class too | Structural maps and points match |
| §4.2 arithmetic isomorphism lift | Identity Gₘ/ℝ | Pointed identity induces +1 on geometric ℤ̂(1) and identity on C₂ | Forgetting gives the unpointed identity | Required relative isomorphism lifts |
| §4.3 geometric orbit surjection | Sections of ℤ̂(1)⋊C₂→C₂ for Gₘ/ℝ | Conjugation by b changes parameter a to a+2b | Two geometric conjugacy classes, ℤ̂/2ℤ̂=C₂ | Surjectivity does not require strong center-freeness |
| §4.4 arithmetic orbit bijection | k=ℂ, Gₘ self-maps; abstract BC₃/BS₃ over BC₂ | Parameters 0 and 1 give distinct classes for the first; kernel quotient has 3 elements for the second | First G_k=1 satisfies the hypothesis; second full quotient has 2 elements and C₂ fails it | Stabilizer/center hypothesis necessary in the abstract control |
| §4.5 outer π₁ map | z↦z²; constant 1 on Gₘ/ℂ | π₁ maps are ×2 and 0 | Hom_out(ℤ̂,ℤ̂)=ℤ̂ has parameters 2 and 0 | Scheme map and completion normalization agree |
| §4.6 open-image restriction | z↦z, z², z³, constant 1 | Indices 1,2,3,∞ in ℤ̂ | First three images open; zero subgroup not open | Predicate invariant under conjugation |
| §4.7 maps into product | X=Gₘ, Y₁=Y₂=Gₘ over ℂ; X=∅ | Map (z²,z³) gives parameter (2,3) in ℤ̂² | Projections give exactly 2 and 3; empty-source sets have size 1=1×1 | Uses distinct §§3.9a and 3.9c inputs |
| §5.1 algebraic evaluation | T=point,∅,[0,1]; X=A¹,Gₘ,dual point | A¹ evaluations give ℂ; empty T gives one map; 1+t has inverse 1/(1+t) | t itself has value 0 at 0, so is not a unit; ε maps to 0 in the reduced function algebra | Zero ring and nilpotents handled without division by 0 |
| §5.2 singular diagonal | A¹_ℂ; BCₚ; ∐_ℕ Spec ℂ | First type contractible; BCₚ has π₁=Cₚ; last type discrete ℕ | Discrete A¹ points have one component per complex number; X₀ of BCₚ is only a point | General analytic domain extended; evaluation identity kept at its own scope |
| §5.3a smooth Čech descent | Two points→point; A¹→point; id Gₘ; ∅→point | Čech sizes 2,4,8,…; affine terms ℂ^(n+1); identity nerve constant | First two diagonals contractible; identity gives π₁ map ℤ→ℤ; empty source gives 0 components versus 1 | Smooth charts supply sections; surjectivity essential |
| §5.3b analytic étale descent | ∐_ℕ points→point; node xy=0; dual point; empty augmented diagram | Terms ℕ^(n+1) give connected contractible nerve; node is union of two contractible lines meeting at 0 | Node πₙ=0 for n≥1; tangent dimension 2; dual-point singular set is point; empty augmentation has 0 components | Infinite pieces, singularity, nilpotents and degree zero tested |
| §6.1 p-finite definition and closure | ∅; 2 points; BCₚ; BC_q; ∏_(n≥1)K(𝔽ₚ,n) | Component counts 0,2; cyclic π₁ orders p,q; last has π_n=𝔽ₚ for all n≥1 | First three accepted; q≠p and absence of truncation exclude the last two | Finite components and common truncation required |
| §6.2 completion universal property | BC_q with q≠p; two points; discrete ℕ | Prime-to-p cyclic source has no nontrivial maps to finite p-groups and no positive mod-p cohomology | Completions are point, two points,βℕ respectively | Constant-object inclusion does not imply already completed |
| §6.3 localized-model comparison | Ordinary BC_q, q≠p; p-finite BCₚ | Completed source is point; Map(point,BCₚ)=BCₚ | Map(BC_q,BCₚ) has one component and π₁=Cₚ too | Mapping spaces and materialization, not only Hom sets |
| §6.4 materialized p-type | Spec ℂ; BCₚ; ∐_ℕ Spec ℂ | Point has H⁰=𝔽ₚ; BCₚ has H¹=𝔽ₚ; ungraded infinite completion has component set βℕ | A delta function at a free ultrafilter restricts to 0 on ℕ but is nonzero there; it is not a continuous extension of that zero function | Infinite H⁰ comparison is not claimed; avoids conflating all functions with continuous ones |
| §6.5 finite type | K(ℤ/p,2); BCₚ | First H⁰=𝔽ₚ,H¹=0,H²=𝔽ₚ; comparison sends 1↦1 | BCₚ has H¹=𝔽ₚ≠0 and fails the sufficient premise, although it materializes correctly | DAG13’s hypotheses used as stated |
| §6.6 graded realization | ℕ copies of Spec ℂ; one grade; no grades | Graded type is discrete ℕ; cohomology H⁰=∏_ℕ𝔽ₚ and H^m=0 for m>0 | One grade gives its raw type; no grades gives empty; a face merging two labels violates a fixed grading | Whole-simplicial-grade cohomology named explicitly |
| §6.7 comparison zigzag | Point; finite labeled points; BCₚ | H⁰(point) comparison is 1↦1; labels fixed individually; both BCₚ endpoints have π₁=Cₚ | Induced BCₚ H¹ map is identity, rather than 𝔽ₚ→0 from X₀ | Locally finite-type descent used in every simplicial degree |
| §6.8 mod-p comparison | P¹_ℂ; simplicial BCₚ | P¹ cohomology and homology have dimensions 1,0,1; BCₚ has H¹=𝔽ₚ | P¹ comparisons are identities in degrees 0,2; BCₚ fails the H¹=0 premise despite X₀ being a point | Cohomological degree is the degree of the full simplicial object |
| §6.9 semilinear naturality and strictification | Point; conjugation of Gₘ; σ∘τ on A¹ points | Point fixed; i↦−i; positive loop has degree −1; z↦σ(τ(z)) | Geometric π₁ action is −1 on ℤ̂(1), including nontrivial −1 on ℤ₂(1); composition has the same order | Coherent action is rectified with equivariant comparison; mod 2 alone would hide the sign |

The supplier-gap statements were also tested, because splitting a request creates mathematical assertions whose hypotheses need their own audit.

| Supplier gap | Instances tried | Computed construction | Computed comparison | Result |
| --- | --- | --- | --- | --- |
| pro-universe-extension | Constant 2-point simplicial set in two universes | Four self-maps before enlargement | Four self-maps afterwards | Full faithfulness means equality of these mapping sets, not equality of universe types |
| pro-cofinal-invariance | Tower C_(2^n), restriction to n≥3 | Limit ℤ₂; maps to C₂ have 2 choices | Same ℤ₂ and 2 maps on the tail | Inverse cofinal direction retained |
| pro-cofinite-reindexing | Finite subsets F of ℝ | F of size 0,1,2 has 1,2,4 predecessors | Limit of C₂^F is C₂^ℝ | Cofinite does not mean countable |
| pro-level-representations | Constant fork C₂→S₃ with images (12) and (23) | Each map has values 1 and its chosen transposition | One-stage level fork gives exactly the same two maps | Finite loopless shape explicit; arbitrary action diagrams not promised |
| pro-monomorphism-presentations | cC₂↪cS₃ | Kernel 1, image {1,(12)} of size 2 | Injective level map; index 3, without a normality assertion | Group-monomorphism specialization stated |
| simplicial-postnikov | S² at n=0,1,2; BC₂ at n=1 | P₀S²=P₁S²=*; π₂P₂S²=ℤ | P₁BC₂ has π₁=C₂, higher groups 0 | Low-degree and truncation rules explicit |
| simplicial-local-whitehead | Identity circle with sign coefficients; S²→* | H¹(sign)=ℤ/2 preserved by identity | S² and point have equal π₁=1 but H² values ℤ and 0 | Cohomological premise genuinely detects a missing higher group |
| simplicial-moore-postnikov | Path fibration of K(ℤ,2) pulled back to S² | Degree-one classifying map gives obstruction 1 in H²(S²,ℤ)=ℤ | Zero map gives obstruction 0 and a constant lift | Vanishing/adjustment statement has both outcomes |
| simplicial-covering-classification | Circle subgroups ℤ,2ℤ,0 | Fiber sizes 1,2,∞ | Corresponding covering indices 1,2,∞ | Infinite covers retained |
| local-coefficient-representability | Circle with trivial or sign ℤ, n=1 | H¹ values ℤ and ℤ/2 | Section classes have integer degrees or two twisted classes | Direct coefficient convention retained |
| reedy-homotopy-limits | Discrete *→{0,1}, chosen value 0 | Cosimplicial degree zero has 2 tuples | Tot₁ and the homotopy limit have the single compatible tuple | Totalization is not an independent product |
| nonabelian-lim1 | Constant C₂⊂S₃ | Limits have sizes 2,6; coset limit has 3 elements | Quotient map fibers have size 2; both lim¹ sets have 1 element | Pointed-set sequence works without normality |
| bk-homotopy-limit-spectral-sequence | Constant BC₂; B(ℤ ←×2 ℤ) | First E₂⁰,¹=C₂, E₂¹,¹=* | Second E₂¹,¹=ℤ₂/ℤ with nonzero [1/3] | Nonabelian/pointed-set fringe cannot be suppressed |
| bk-tower-convergence | Constant S¹; the same infinite-group tower | Constant E₂⁰,¹=ℤ and other positive-column terms 0 | Tot has π₁=ℤ, π₀=1; tower has nonzero diagonal term and disconnected Tot | Convergence hypothesis has a negative control |
| multisimplicial-diagonal | Rows Sing(ℂ^(n+1))→*; identity of BCₚ | Every row in the first map has π₀=1, positive π=0 | Diagonal is contractible; identity diagonal retains π₁=Cₚ | All simplicial directions and rowwise hypothesis retained |
| kan-quillen-properness | Add a whisker to S¹; pull back identity along double cover | Both whiskered spaces have π₁=ℤ | Pullback π₁=2ℤ on both sides | Left and right directions agree on explicit squares |
| kan-quillen-simplicial | i:∂Δ¹→Δ¹, K=BC₂; endpoint inclusion Δ⁰→Δ¹ | K^Δ¹→K² has loop fiber with 2 components | Evaluation at one endpoint has contractible fibers, πₙ=0 | Fibration and trivial case differentiated |
| surjective-nerve-fibration | C₄→C₂; transposition C₂→S₃ | Every C₂ edge has 2 lifts under the first | Edge (123) has 0 lifts under the second | Surjectivity is the required hypothesis |
| coherent-pro-category | Terminal category | One pro-object up to equivalence, mapping space point | Unique cofiltered-limit cone and unique map | Empty or extra component model excluded |
| coherent-pro-mapping | Constant BC₂ source and target | Mapping space has 2 components, each with π₁=C₂ | Limit-colimit formula gives the same; mere homotopy Hom set has only 2 discrete elements | Higher mapping data retained |
| coherent-pro-universes | Same BC₂ mapping space under a universe lift | π₀ has 2 elements, each π₁=C₂ | Exactly the same π₀ and π₁ after lifting | Universe comparison preserves spaces |
| topological-hypercover-realization | Two points→point; infinitely many points→point; empty degree zero | Finite Čech degrees have 2,4,8 points; both nonempty nerves contract to one component | Empty augmented diagram has 0 components, target 1 | Degree zero and infinite pieces explicit |
| connected-etale-components | Two copies of Spec ℂ; Spec(∏_ℕ𝔽₂) at a free ultrafilter | First components are open one-point schemes | Second Stone space has singleton connected components; the free-ultrafilter singleton is not open | Local noetherian hypothesis cannot be silently dropped |
| elementary-fibration-carrier | Gₘ⊂P¹; A¹⊂P¹; whole P¹ | Boundary cardinalities 2,1,0 | First complements are nonempty affine; whole P¹ is not affine | Definition only; no fibration-existence theorem requested |

## Maintainer consequences

No end theorem was narrowed, no prime was excluded, and no supplier implementation or merge order was edited. The residual 24 gaps are prerequisite requests, not assertions that those supplier roadmaps already state them. The new main-roadmap citations GeneralizedCohomology §G2.1 and BordismFormalGroups §F6.5 eliminate duplicated ownership rather than add an alternative foundation.

The removed acceptance name is `TauCetiRoadmap.EtaleHomotopyTypes.finiteAbelianHigherLimits`; no other accessible roadmap cited that fully qualified name in the ownership search. Consumers of prose §3.9 should choose §3.9a (finite-cover product), §3.9b (effacement/detection), or §3.9c (raw products). Consumers of §5.3 should choose §5.3a (smooth Čech descent) or §5.3b (analytic étale hypercovers). All consumers inside this package were updated. External roadmaps were left read-only. The frozen design target/proof annotations outside the editable gaps list still mention legacy G1–G7 labels; those annotations were preserved as required, while the README gives the authoritative targets and supplier contracts.
