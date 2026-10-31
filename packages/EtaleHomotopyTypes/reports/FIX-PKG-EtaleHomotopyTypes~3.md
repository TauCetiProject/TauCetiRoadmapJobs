# Étale homotopy types: repair report

## F01 (P2) — applied

Duplicate simplicial-axiom request → BordismFormalGroups §F6.5’s Cartesian monoidal axiom plus GeneralizedCohomology §G2.1’s mapping objects. Deleted only that top-level gap; retained properness. Added the tensor–Hom lifting argument and mapping-fiber Check in §0.2; updated its Needs line, Layer 0 dependencies, §6.2 and Layer 6 dependencies. Evidence: TauCetiRoadmap/BordismFormalGroups/README.md:1571–1574 and TauCetiRoadmap/GeneralizedCohomology/README.md:213–242.

## F02 (P2) — applied

Arbitrary finite-type projective compactification → general reduced-scheme resolution from §5.5, principalization/boundary refinements from §§5.1–5.4, and correctly scoped quasi-projective compactifications. Added the full finite-type strong-desingularizability deduction in §3.9a and doubled-origin, boundary, empty and nonreduced Checks; updated the supplier contract and Layer 3 dependencies. Evidence: ResolutionOfSingularitiesCharacteristicZero §§5.1–5.5, 6.1–6.2; SGA1 line 12286. Neither product theorem was narrowed.

## F03 (P3) — applied

A.13(b), pp. 861–862 → pp. 860–861, retaining SS line 1743. Corrected the same A.13 page-range pattern in §§2.8–2.9. Statement and proof start at SS line 1736 and SS line 1755. The review’s witness has three homomorphisms C₃→S₃ total, two nontrivial; their orbit sizes are 1 and 2. The existing Layer 4 example already gives these values.

## Verification and scope

All three active findings were settled separately. The historical findings listed as repaired in the review were read as background. No supplier file, merge-order file, tooling, issue or pull-request text was edited. No commit or network write was made.

The scope correction is in the supplier paragraph, §3.9a’s statement/route/Needs/Checks, and Layer 3 dependencies. General strong desingularizability is now an explicit consequence to prove from the supplied resolution and boundary interfaces, rather than an inference from a nonexistent general projective compactification. The supplier retains ownership of resolution itself. Its §5.5 includes nonseparated reduced finite-type schemes; §6.1 requires a reduced quasi-projective input and a chosen immersion; §6.2 requires a smooth quasi-projective variety. No new supplier gap is needed for these existing inputs.

The F01 lifting argument uses the actual source and target of the induced map:

`Map(B,E) → Map(A,E) ×_(Map(A,F)) Map(B,F)`.

A lift against j corresponds under the Cartesian tensor–Hom adjunction to a lift of p against i□j. For horn j the pushout product is trivial; for boundary j it is a cofibration, trivial if i is trivial. Thus a fibration p gives the first lifting property, and triviality of i or p gives the second. This imports the existing fixed-base axiom without asking a second supplier to prove it.

SGA1 XIII Proposition 4.6(a), printed p. 310, was read at SGA1 line 12282 through SGA1 line 12294: its premise concerns all finite-type schemes over the algebraic closure up to the dimension of the first factor. The adapter in §3.9a states the stronger uniform finite-type input in characteristic zero. Reduction is applied before the supplied smooth resolution; it does not claim a birational smooth resolution preserving a dense open of a generically nonreduced scheme.

SS’s page markers were read at SS line 1711, SS line 1754 and SS line 1800. A.13(b) is on printed p. 860, its proof on p. 861, and p. 862 is classifying-space material. The conjugation convention of A.12 was read at SS line 1713 through SS line 1732 and recomputed below.

## Sources, suppliers and ownership

Main was verified as e98875dbbea872d0496e323bc880e2b7fd00beb9. The manifest pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Main’s AlgebraicTopology, GeneralizedCohomology and BordismFormalGroups roadmaps were read for the upstream shape. The existing layer order, target subdivision and definition API lists were retained.

The roadmap service was used for object-based searches over main and indexed open heads, including Cartesian pushout products, strong desingularizability, local-isomorphism-compatible resolution, pro-local systems, rigid hypercovers and materialization. Board packages and both pinned libraries were searched separately. The ownership result is to import the general monoidal and resolution constructions and own only their pro-space or finite-cover application here. No fully qualified Lean declaration was added.

The service does not expose EllAdicHomotopyTypesAndWeights or ArithmeticKTheoryPartII as roadmap folders; their readable board design READMEs were inspected instead. They are consumers. Completed/UniversalCovers was read directly on main after its qualified name was not accepted by the service. No missing-roadmap conclusion was drawn from these lookup failures. Ownership against external open-pull-request copies for which the brief supplies no readable files was not checked independently of the service’s indexed search.

All cross-roadmap citations were re-resolved. These are the exact consumed locations checked in the supplier copies; API names in the analytification paragraph are future supplier names, not claims of pinned declarations.

| Supplier | Resolved consumption |
| --- | --- |
| AdicSpacesPartII | §R0.19.9: Ind-opposite carrier, Hom formula, stage representatives/naturality, finite limits and cofiltered flattening. |
| DiamondsAndVStacks; PerfectoidSpaces | §D0.13 and §P6.10: the same bounded-presentation carrier, counting all arrows. |
| AlgebraicTopology; Completed/UniversalCovers | Stages 6.1 and 8: direct local cochains, Kan/cubical comparison, obstruction and representability interfaces; Stages 2–4 of UniversalCovers: subgroup classification, lifting and higher homotopy. Additional simplicial requirements remain explicit gaps. |
| GeneralizedCohomology | §G2.1: unpointed Kan–Quillen, pointed undercategory, enrichment and realization–singular comparison. Properness remains a gap. |
| BordismFormalGroups | §F6.5, fixed Cartesian base, lines 1571–1574; coherent model diagrams block, lines 2005–2034, including Kan complexes and group-indexed naturality. |
| StableHomotopyKTheory | §§1.19–1.23, 1.28–1.34: simplicial coverings, translation categories, BG/EG and edge multiplication convention. |
| Orbifolds | O4 item 3/O4-N: numerable surjective-submersion Čech descent with actual local sections. |
| EnhancedDerivedSheaves | §§E0.2–E0.5, E0.8: coherent categorical/size inputs; §E2.6: augmented hypercovers and uniformly bounded-below cohomological descent. Topological realization descent remains a separate gap. |
| SchemeAndStackFoundations | §§0.9–0.12: limits, unibranchness, neighborhoods; §§2.10, 2.15: sites and qcqs affine-transition cohomology continuity with compatible sheaves. |
| EtaleCohomologyFoundations | §§F.0.2, F.0.4, F.0.A2, F.2.6: finite-cover Galois category, topological invariance, arithmetic exact sequence, finite-coefficient Künneth with Tor/invertibility conditions. |
| ComplexComparisonPartII | §C−1.1, especially lines 750–756: locally finite-type analytification, complexPoints, fibreProduct, reduction, etaleLocalIso and smooth; §§C5.1, C6.1–C6.3: sheaf/singular, finite-cover and finite-coefficient comparison. |
| ResolutionOfSingularitiesCharacteristicZero | §§5.1–5.5 and 6.1–6.2, especially lines 720, 760 and 772: general resolution versus the two quasi-projective compactification statements. |
| ProfiniteProPGroups | Layers 0, 3, 4: profinite interfaces and native generation/pro-p structure results. |
| Later consumers | AnabelianGeometryAndNonabelianChabauty Layer 1; InverseGaloisAndArithmeticFundamentalGroups’ raw/outer-map applications; MotivicEtaleKTheory’s completed realization. None is a supplier for the repairs. |

The source cache supplies SS, I01, IEt, IC, BHH, DAG13, IStr and SGA1. FGV, BK, AM and Fr retain their settled uncertified status and were not requested again. The new explicit strong-desingularizability locator is recorded under the single new key SGA5, Exposé I §3.1.5. A title lookup found no text; the subsequent DOI lookup resolved the publisher citation as uncertified. No text of that definition was obtained or reconstructed. Its citation is explicitly by locator without text. The unsuccessful lookup is therefore settled, not a pending reference request. There are thirteen unique source keys, each with the required bibliographic and locator fields.

The pin-level declaration audit opened the following native definitions and their binders. These are inputs, not new acceptance targets.

| Pinned input | File and lines; scope verified |
| --- | --- |
| SSet; KanComplex; hornFilling | Mathlib/AlgebraicTopology/SimplicialSet/Basic.lean:33; KanComplex.lean:40–47. Simplicial presheaves and the native horn-fibrancy predicate. CategoryWithFibrations is not a full pro-space model. |
| ModelCategory | Mathlib/AlgebraicTopology/ModelCategory/Basic.lean:43–60. CM1–CM5, including factorization existence, without a chosen functorial factorization. |
| Singular/realization inputs | Mathlib/AlgebraicTopology/SingularSet.lean:50–76,97–101. Universe-lifted real simplices; constant comparison assumes total disconnectedness, not nonemptiness or compactness. |
| Ordinary diagonal and uncurrying | Mathlib/CategoryTheory/Products/Basic.lean:292; Mathlib/CategoryTheory/Functor/Currying.lean:37. These reindex diagrams; they do not prove diagonal homotopy invariance. |
| Sheaf.H; smallEtaleTopology | Mathlib/CategoryTheory/Sites/SheafCohomology/Basic.lean:52–57; Mathlib/AlgebraicGeometry/Sites/Etale.lean:50. H is Ext from the constant integral sheaf, retaining HasSheafify and HasExt. |
| Function-algebra maps | Mathlib/Topology/ContinuousMap/Algebra.lean:700–707,848–859. Precomposition and evaluation with the topological-algebra assumptions. |
| Ind | Mathlib/CategoryTheory/Limits/Indization/Category.lean:66–80. Size-controlled shrunk-hom category, not a homotopy-coherent Pro construction. |
| Derived limits | Mathlib/CategoryTheory/Abelian/RightDerived.lean:57–60,108; Preadditive/Injective/Resolution.lean:70–71; Limits/HasLimits.lean:550–557; Preadditive/AdditiveFunctor.lean:231–236. Abelian categories, injective-resolution existence, additive functor and limits are retained. |
| Ordinary completion and finite quotients | Mathlib/Topology/Algebra/Category/ProfiniteGrp/Completion.lean:191,205,215; Limits.lean:48,138. Continuous-target universal property and topological finite-quotient presentation. |
| Compatible sections | Mathlib/CategoryTheory/CofilteredSystem.lean:79–81; Mathlib/Topology/Category/TopCat/Limits/Konig.lean:126–129. Nonempty finite or compact Hausdorff fibers, cofiltered-or-empty index, no transition-surjectivity assumption. |
| LocalCoefficientSystem and transport | TauCeti/AlgebraicTopology/LocalCoefficient.lean:43–44,75–77,102,136–138,252–255. Fundamental-groupoid functors to ModuleCat; no rank, finiteness or reflexivity restriction. |
| Twisted cohomology | TauCeti/AlgebraicTopology/Cohomology/Twisted/Basic.lean:79–85. Hom from twisted chains, not an identification with arbitrary direct coefficients. |
| Directed compactness | TauCeti/Topology/Compactness/InverseSystem.lean:78–81,96–98. Directed presentations with nonempty fibers; no surjectivity assumption. |
| Unbundled completion | TauCeti/Topology/Algebra/Group/Profinite/Completion.lean:68,179–184. Finite-group unit bijective; continuous-target equivalence allows a different target universe. |
| Generation and abelian pro-p structure | TauCeti/Topology/Algebra/Group/Generation.lean:73–75; Profinite/ProP/StructureTheorem.lean:53–62. Dense finite generation; prime p, compact totally disconnected commutative topological group and pro-p hypotheses. |

## Computed adversarial pass

These calculations were recomputed for the numbered targets, conventions and supplier contracts. They test the stated mathematics and plausible wrong models; they are not formal proofs of the roadmap’s targets. Cₙ denotes a cyclic group of order n. A point has one component and zero positive homotopy groups. Constant and inverse-system objects are distinguished throughout.

| Statement | Instances and values computed | Result; change |
| --- | --- | --- |
| Universe and ordinary pro-Hom convention | Constant C₂→C₂ has 2 homomorphisms in either universe; replacing a tower C_(2ʳ) by constant ℤ₂ changes its discrete-source mapping problem. | Retain fully faithful enlargement and the limit-colimit order. |
| Connected versus path-connected | B(ℤ←×2ℤ) has level π₀=1, but materialized π₀=ℤ₂/ℤ, with [1/3]≠0. Empty space has 0 components. | Neither level connectivity nor emptiness supplies materialized paths. |
| Loop action convention | In S₃, (123)(12)(123)⁻¹=(23); conjugating again by (12) gives (13). The inverse convention first gives (13). | Direction and multiplication order agree with the supplier. |
| Coefficient convention | Circle with integral sign action has differential −2, H⁰=0,H¹=C₂; trivial action has differential 0, H⁰=H¹=ℤ. | Direct arbitrary coefficients and transport retained. |
| Prime and coproduct conventions | p=2,3 give fields F₂,F₃; 0,1 are not prime. For ℕ points, H⁰=∏ℕFₚ and H₀=⊕ℕFₚ. | No small-prime exclusion or sum/product reversal. |
| §0.1 pro-local systems | Constant point: positive π=0; circle: π₁=ℤ; two points: π₀ has size 2. Sign transport sends 1↦−1, unlike constant transport. | Definition, point evaluation and pullbacks distinguish these objects. |
| §0.2 Isaksen model | For K=∏ₙ≥1K(ℤ,n), cK→(P_mK) has eventually identical πᵢ=ℤ for each i; at stage m, π_(m+1) is ℤ→0. | Raw equivalence differs from strict equivalence. |
| §0.2 supplied mapping axiom | ∂Δ¹ gives fiber C₂ with 2 components for (BC₂)^Δ¹→(BC₂)²; endpoint inclusion gives a groupoid with 2 objects and exactly 1 arrow between any ordered pair, hence contractible fiber. | Added Check; fibration need not be trivial, endpoint evaluation is trivial. |
| §0.3 properness/strong fibrations | Pulling the degree-2 circle cover back over S¹×K(ℤ,2) yields π₁=2ℤ,π₂=ℤ, also the groups of its product model. | Corrected pro-presentation route retained; no simultaneous favorable presentation inferred. |
| §0.4 pointed detection | Circle identity gives id on ℤ; S²→* gives ℤ→0 on π₂; BC₂→BS₃ has π₁ image order 2 versus target order 6. | Criterion accepts identity and rejects both non-equivalences. |
| §0.5 local detection | S¹→* has integral H¹ ℤ→0; BC₃→* has mod-2 cohomology F₂ in degree 0 and 0 above on both sides, but π₁ C₃→1. | Full local coefficients and π₁ hypothesis matter. |
| §1.1 pro-coverings | Identity has fiber 1/deck group 1; double circle cover has fiber 2/deck C₂. Sing(S¹)→* has multiple lifts with the same initial vertex. | Unique vertex lifting excludes a general Kan fibration. |
| §1.2 subgroup representation | Subgroups ℤ,2ℤ,0 give degrees 1,2,∞. Degree-3 map has 3ℤ⊄2ℤ and no lift; degree-4 map has 4ℤ⊂2ℤ and one pointed lift. | Both directions of representability exercised. |
| §1.3 covering equivalence | Circle and its one-type have subgroup nℤ covers of degree n and deck Cₙ on each side; zero subgroup gives infinite degree on each. | Objects and morphisms agree. |
| §1.4 coverings are fibrations | Double circle covering has a unique simplex lift for each chosen vertex; its fiber has 2 discrete points. The circle-to-point fibration has nonconstant fiber simplices. | Forward implication holds; converse not asserted. |
| §1.5 base-change/cohomology | Identity over a circle pulled back to its double cover is identity there; induced H¹ map is +1 on ℤ, commuting with the deck rotation’s +1 action. | Existence and equivariance pass without a uniqueness claim. |
| §1.6 BG and fibrant replacement | B1 has π₀=1,π₁=1; BCₚ has π₁=Cₚ, higher 0; a finite predecessor product of n+1 copies has order p^(n+1). | Keeps the actual pro-system and diagonal injection. |
| §1.7 full faithfulness | Hom(C₂,S₃) has 4 elements, from 1 and the 3 transpositions, hence 4 pointed BG classes. | Nonabelian pointed count is correct. |
| §1.8 representability | S¹→BC₃ gives 3 pointed classes=Hom(ℤ,C₃); S²→BG gives 1=Hom(1,G). | Higher source cells do not add classes into a one-type. |
| §1.9 first classifying map | Point and circle have zero higher π and classifying equivalences; S² has π₂=ℤ while Bπ₁(S²)=* has π₂=0. | Both directions of recognition survive. |
| §2.1 materialization | Constant two-point set materializes to 2 points. In *→{0,1} with image 0, degree-zero choices number 2, but compatible totalization choices number 1. | Independent coordinates do not replace totalization. |
| §2.2 finite derived limits | Constant C₂ tower has lim=C₂; zero transitions have lim=0; positive derived limits are 0 in both finite cases. C₂^F over finite F⊂ℝ has lim=C₂^ℝ and higher lim=0. ℤ←×2ℤ has lim¹=ℤ₂/ℤ≠0. | Finiteness and positive degree, without countability/surjectivity, are discriminating. |
| §2.3 profinite materialization | B(C_(pʳ)) has materialized π₀=1,π₁=ℤₚ,higher 0 for p=2,3. The integer ×2 tower has π₀=ℤ₂/ℤ. | Profinite condition prevents the disconnected counterexample. |
| §2.4 relative cylinder | Two marked points give 2 points after quotient; adding an unmarked third gives 2 points plus Δ¹, whose edge lacks an inverse 2-horn filler. | Projection is a weak equivalence, not generally a fibration. |
| §2.5 monodromy | C₂→S₃ nonzero images are 3 transpositions permuted transitively; ℤ→C₃ has 3 images fixed by conjugation. Distinct discrete target points have 0 paths. | Action, composition and path domain retained. |
| §2.6 absolute orbits | BC₂→BS₃ has 4 pointed classes in orbits of sizes 1,3, hence 2 unpointed classes. | Quotient has the required size. |
| §2.7 isomorphism lifting | C₂ has 1 automorphism; C₃ has 2. Their inner conjugations are trivial, so pointed and unpointed automorphism counts are respectively 1 and 2. | Isomorphism lifts exist. |
| §2.8 relative surjection | BC₃→BS₃ over sign BS₃→BC₂ has 3 pointed relative classes and 2 unpointed classes. | Forgetful map is surjective, not injective; locator corrected. |
| §2.9 relative isomorphisms | The 6 inner automorphisms of S₃ commute with sign and become one unpointed identity class. | Pointed isomorphism lifts remain isomorphisms; locator corrected. |
| §2.10 stabilizer quotient | Trivial C₃→C₂ has stabilizer C₂; its preimage is S₃. Conjugation on 3 maps has orbits 1,2; A₃ alone fixes all 3. | Full preimage yields 2 classes; page range corrected. |
| §3.0a pro-group completion | Completions of 1,ℤ,S₃ are 1,ℤ̂,S₃. For ℤ←×2ℤ, abstract lim=0 but completed lim=∏_(ℓ odd)ℤ_ℓ; maps to C₃ number 1 from the former and 3 from the latter/pro-system. | Does not reconstruct completion of the abstract limit. |
| §3.1 rigid covers | Spec ℂ has one connected pointed neighborhood. Pulling its cover to 𝔸¹ keeps separate marked copies at 0 and 1; ordinary pullback has just one 𝔸¹ component. | Markings and infinite geometric-point families retained. |
| §3.2 rigid hypercovers | A quadratic Galois cover has degree-1 matching object Spec(L⊗L), two copies of Spec L. Empty U₀ has 0 points over a nonempty point base. | Degree-zero coverage and matching products are essential. |
| §3.3 rigid étale type | Spec ℂ, Spec F_q, simplicial BCₚ and the complex dual point have types *,Bℤ̂,BCₚ,* and π₁ 1,ℤ̂,Cₚ,1. | Diagonal and nilpotent invariance agree with Checks. |
| §3.4 coefficient comparison | Complex point has H⁰=A,higher 0 for arbitrary A. For Spec ℝ, integral H¹=0,H²=C₂; C₂-coefficients give C₂ in every degree. | Arbitrary constant coefficients are not reduced to finite ones. |
| §3.5 raw/finite π₁ | Fields ℂ,ℝ,F_q give profinite groups 1,C₂,ℤ̂ and no higher raw π. Complex square-zero thickening again gives group 1. | Completion, field BG and reduction are consistent. |
| §3.6 finite-cover base change | Spec ℂ→Spec ℝ is the degree-2 contractible cover of BC₂; its self-pullback has 2 components. Two points over ℂ remain a degree-2 cover. | Degrees, components and deck action agree. |
| §3.7 Galois transport | For Gₘ/ℝ with C₃ coefficients, geometric H¹=C₃; conjugation sends 1↦−1=2. Identity transport sends 1↦1, so both equivariance composites give 2. | Nontrivial sign witnesses the actual Galois action. |
| §3.8 elementary-fibration sequence | Gₘ and 𝔸¹ over ℂ have geometric kernels ℤ̂(1),0. Proper ℙ¹ with empty boundary has higher homotopy and is not affine. | Affine nonempty fibers and the π₂(base)=0 condition are retained. |
| §3.9a finite-cover product | Gₘ²/ℂ gives ℤ̂² with coordinate projections; product with Spec k returns π₁(Y) via g↦(g,p(g)); ℝ-point product gives diagonal C₂ of order 2, not C₂² of order 4. | General theorem unchanged. |
| §3.9a general resolution input | Doubled-origin line has 2 origins, 1 common generic branch and 2 DVR extensions; identity resolution has 0 exceptional components. A projective open embedding would force at most 1 extension. | Added negative control; false general compactification inference excluded. |
| §3.9a quasi-projective boundary input | Gₘ⊂ℙ¹ has 2 boundary points; 𝔸¹⊂ℙ¹ has 1; each boundary is reduced SNC. | Correct supplier scopes and examples retained. |
| §3.9a empty/nonreduced adapter | Empty reduction/resolution has 0 points. K[ε]/ε² reduces to K with 1 point, nilradical (ε), and 0 boundary components. | Added reduction Check; no smooth dense-open isomorphism to the dual point asserted. |
| §3.9b effacement/detection | Separably closed point and its dual point have higher constant cohomology 0. ℙ¹ has H²(C₂)=C₂ surviving all surjective finite étale covers; empty cover would falsely kill it. BC₃→* passes mod-2 constants but fails π₁. | Surjectivity and profinite/all-finite-local-coefficient range retained. |
| §3.9c raw products | Empty product is BG_k with higher π=0. Gₘ² has mod-p dimensions 1,2,1; power-p pullback multiplies degree-1 and degree-2 classes by p and p², both 0 mod p for p=2,3. | Nonzero pre-pullback H² is compatible with effacement. |
| §4.0a relative outer maps/center | S₃ has center 1 but open A₃ has center C₃. C₂→C₂² over second projection has exactly 2 sections, (0,t),(t,t); (t,0) fails the structural equation. | Strong center-freeness and actual base equation discriminate. |
| §4.0b arithmetic image | Separable degree d gives index d; purely inseparable extension gives index 1; ℚ(i)/ℚ gives index 2. | Openness does not imply surjectivity. |
| §4.1 pointed arithmetic lifting | Spec ℂ→Gₘ gives one class on each side, since Hom(1,ℤ̂)=1. | Structural maps and target connectivity agree. |
| §4.2 arithmetic isomorphisms | Identity of Gₘ/ℝ gives +1 on geometric ℤ̂(1) and id on C₂; forgetting still gives the identity. | Isomorphism assertion agrees with relative lifting. |
| §4.3 geometric orbit surjection | Sections of ℤ̂(1)⋊C₂→C₂ are indexed by a∈ℤ̂; geometric conjugation adds 2b, leaving ℤ̂/2ℤ̂ of size 2. | Geometric action retained without an injectivity assertion. |
| §4.4 arithmetic orbit bijection | G_ℂ=1 satisfies strong center-freeness. Abstract BC₃/BS₃ over BC₂ instead has geometric quotient size 3 and unpointed quotient size 2; C₂ fails the hypothesis. | Negative control fits the extra hypothesis. |
| §4.5 outer π₁ map | Maps z↦z² and z↦1 on Gₘ/ℂ give endomorphisms ×2 and 0 of ℤ̂. | Scheme-induced maps agree with their outer classes. |
| §4.6 open-image restriction | Powers 1,2,3 have image indices 1,2,3 in ℤ̂; the constant map has image 0 of infinite index. | Exactly the first three satisfy the open-image test. |
| §4.7 product mapping | z↦(z²,z³) has coordinates (2,3) in ℤ̂²; empty-source mapping sets have cardinalities 1=1×1. | Projection bijection and disconnected edge case agree. |
| §5.1 evaluation | Point/𝔸¹ yields ℂ; empty T yields singleton Hom sets via the zero ring. On [0,1], 1+t is a unit with inverse 1/(1+t), while t is not. Nilpotent ε maps to 0 in continuous functions. | Denominators, empty input and nonreduced target Checks hold. |
| §5.2 Betti/discrete realizations | Analytic 𝔸¹ is contractible, discrete points have π₀=ℂ; simplicial BCₚ has π₁=Cₚ, while its scheme level 0 is a point. | Both simplicial directions are needed. |
| §5.3a smooth Čech descent | Two-point cover has 2,4,8 points in degrees 0,1,2 and contractible diagonal; affine-line cover has ℂ^(n+1) terms; empty-to-point gives 0 versus 1 components. | Local-section/surjectivity premises are substantive. |
| §5.3b analytic hypercovers | Infinite-point Čech cover has ℕ^(n+1) terms and contractible diagonal. Node xy=0 has π₀=1,higher π=0,tangent dimension 2; dual point has one analytic point. | Infinite, singular and nonreduced pieces fit the stated domain. |
| §6.1 p-finite predicate | Empty/two points have component counts 0/2; BCₚ has π₁ order p; BC_q has order q≠p; ∏ₙK(Fₚ,n) has πₙ=Fₚ for every n. | First finite examples accepted; wrong prime and unbounded truncation rejected. |
| §6.2 completion universal property | Two points complete to two points; BC_q, q≠p, completes to *; Map(BC_q,BCₚ)≃BCₚ has one component and π₁=Cₚ, as does Map(*,BCₚ). | Mapping spaces, not only classes, are preserved. Updated supplier Needs. |
| §6.3 coherent model comparison | In the preceding mapping example, homotopy-category Hom has 1 element but the full mapping space has π₁=Cₚ. | Pro of the homotopy category loses required data. |
| §6.4 materialization | Spec ℂ has H⁰=Fₚ,higher 0; BCₚ has H¹=Fₚ. A function on βℕ supported at a free ultrafilter restricts to 0 on ℕ but is itself nonzero. | Continuous and ordinary materialized cohomology can differ. |
| §6.5 finite-type comparison | K(Cₚ,2) has H⁰=Fₚ,H¹=0,H²=Fₚ and unit 1↦1; BCₚ has H¹=Fₚ for p=2,3. | Sufficient conditions accept the former and do not claim necessity for the latter. |
| §6.6 specified grading | ℕ grades of points give ordinary discrete ℕ, H⁰=Fₚ^ℕ; no grades give ∅; one grade gives the original component. | Completion before an infinite coproduct would instead introduce βℕ. |
| §6.7 zigzag | Point comparison sends 1↦1 on Fₚ; two labeled points keep 2 labels; simplicial BCₚ keeps π₁=Cₚ at both endpoints. | Zero maps, lost labels and replacing X by X₀ fail. |
| §6.8 mod-p comparison | ℙ¹ has homology/cohomology dimensions 1,0,1 for p=2,3; BCₚ has H¹=Fₚ although X₀ is a point. | Conditions concern total cohomological degrees, not just scheme levels. |
| §6.9 automorphism naturality | Conjugation sends i↦−i and a positive Gₘ loop to degree −1, including in ℤ₂(1). Composition on discrete points is z↦σ(τ(z)); two constant labels remain fixed. | Sign, action order and equivariant comparison survive rectification. |

The following rows check the surviving additional supplier contracts, separately from the local targets. All twenty-three needs sentences and suppliers match the top-level plan entries exactly.

| Contract | Instances and computed values | Result |
| --- | --- | --- |
| pro-universe-extension | Constant C₂ has 2 self-homomorphisms before and after enlargement. | Full faithfulness retains the Hom set. |
| pro-cofinal-invariance | Even powers in the tower C_(pʳ) still have limit ℤₚ and finite quotients C_(pʳ). | Cofinal restriction keeps the pro-object. |
| pro-cofinite-reindexing | The finite-subset poset of a set has 2^n predecessors below an n-element subset. | Finite predecessor products need no countability assumption. |
| pro-level-representations | Constant span C₂←1→C₃ has the same three groups and two maps over one index point. | Diagram, not only its individual arrows, is represented. |
| pro-monomorphism-presentations | Inclusion 2ℤ→ℤ is injective with quotient C₂; zero ℤ→ℤ has kernel ℤ. | The second does not satisfy the mono hypothesis. |
| simplicial-postnikov | P₀S¹=*, P₁S¹=Bℤ; π₁ changes 0→ℤ between these bounds. | Correct truncation degree matters. |
| simplicial-local-whitehead | S²→* has π₁ isomorphism but H² map 0→ℤ. | Coefficient condition rejects this map. |
| simplicial-moore-postnikov | Lifting id:S²→K(ℤ,2) to its contractible path space has obstruction 1∈H²(S²,ℤ); constant map has obstruction 0 and lifts. | Obstruction vanishing distinguishes the two. |
| simplicial-covering-classification | Circle subgroups ℤ,2ℤ,0 yield degrees 1,2,∞. | General subgroup range retained. |
| local-coefficient-representability | Circle sign ℤ gives H¹=C₂, matching the 2 section classes of its twisted K(ℤ,1) object; constant ℤ gives ℤ classes. | Twisting cannot be dropped. |
| reedy-homotopy-limits | *→{0,1} has 2 unrestricted degree-zero coordinates but 1 compatible tuple. | Compatibility in totalization is necessary. |
| nonabelian-lim1 | Constant inclusion C₃⊂S₃ gives lim(E/G) with 2 points and trivial lim¹ on both groups; S₃ acts transitively on the 2 cosets. | Pointed-set exactness at the quotient is consistent. |
| bk-homotopy-limit-spectral-sequence | For C_(pʳ), E₂^(0,1)=ℤₚ and positive derived terms vanish; for ×2 on ℤ, E₂^(1,1)=ℤ₂/ℤ. | Fringe term distinguishes connected materializations. |
| bk-tower-convergence | Finite cyclic tower gives π₀=1,π₁=ℤₚ; integer ×2 tower gives π₀=ℤ₂/ℤ, so its vanishing hypothesis fails. | No conclusion from a collapsed page without the stated convergence input. |
| multisimplicial-diagonal | Constant point rows give diagonal point; diagonal of the two-point Čech nerve has 1 component although its degree-zero row has 2 points. | Diagonal does not mean retaining degree zero. |
| kan-quillen-properness | Pull back double circle cover along identity: fiber degree remains 2 and total π₁=2ℤ; push out identity along a cofibration: map stays identity. | Properness remains a distinct requested input. |
| surjective-nerve-fibration | S₃→C₂ lifts both group elements and has fiber BC₃; 1→C₂ cannot lift the nonidentity edge. | Surjectivity is the discriminating hypothesis. |
| coherent-pro-category | For terminal C, its Pro category has 1 object up to equivalence and contractible self-mapping space. | Free completion does not add spurious objects here. |
| coherent-pro-mapping | Constant BC₂→BS₃ has 2 mapping-space components, with loop groups S₃ and C₂; pointed group Hom count is 4. | Mapping spaces cannot be substituted by pointed group Hom sets. |
| coherent-pro-universes | Constant finite two-point spaces have 4 self-maps in each universe. | Enlarging ambient sizes keeps the mapping space. |
| topological-hypercover-realization | Čech of ℕ→* has ℕ^(n+1) terms and contractible diagonal; ∅→* has 0 versus 1 components. | Infinite pieces allowed, degree-zero coverage required. |
| connected-etale-components | Two copies of Spec ℂ have 2 open connected components; choosing either point picks exactly 1. | Selected component stays étale and separated. |
| elementary-fibration-carrier | ℙ¹ minus {0,∞} is Gₘ, boundary degree 2; minus {∞} is 𝔸¹, degree 1; empty boundary leaves nonaffine ℙ¹. | Carrier includes the affine-complement condition. |

## Acceptance file, gate failure and checks

The headline inventory in the module docstring remains unchanged mathematically: raw model/detection, coverings/BG, materialization/relative orbits, étale comparisons/fibrations/products, arithmetic maps, scheme evaluation/descent, p-completion/model comparison, finite-type complex comparison and automorphism naturality. Their missing pro-homotopy, scheme-fundamental-group, analytic or coherent-completion carriers remain identified there. The new strong-desingularizability adapter is a proof input to the finite-cover product theorem, not a substitute acceptance headline. No auxiliary definition or theorem was inserted to inflate the file.

The supplied signature-extraction failure named `lack`. Three prose occurrences of “theorem lack” in the module docstring could be mistaken for a declaration by a text extractor. Reworded their nouns to “result” or “formula”, preserving every mathematical claim and missing-carrier explanation. No Lean declaration named `lack` exists, and no tool was changed. Removing Lean comments mechanically leaves an empty own-declaration inventory: zero definitions, instances or sorried theorems. Consequently the scratch signature module has zero `#check @name` probes and zero binders to compare or lose. It was elaborated once successfully from the pinned content checkout. The README has no added or deleted own Lean name.

| Check | Exact outcome |
| --- | --- |
| Required `lake env lean` on packages/EtaleHomotopyTypes/Suggested.lean, run from content | Exit 0, empty stdout/stderr. Repeated after the final docstring wording change: exit 0, empty stdout/stderr. No TauCeti import or missing object build. |
| Mechanical signature inventory and scratch elaboration | 0 own declarations after comment removal; 0 probes; 0 lost-binder candidates. Successful scratch elaboration: exit 0, empty output. An earlier scratch invocation from the board directory failed before elaboration with “no default toolchain configured”; rerun from the required content directory succeeded. No toolchain or dependency file was changed. |
| Required dependency command with the specified README/name/order and `--movable` | Exit 0; complete output below. No UPWARD, CYCLE or moved line. |
| Cross-roadmap resolver | Exit 0; no unresolved cross-roadmap citation and no unresolved Lean-name lead. The resolver did not check external Lean names on its host; the pin-level source audit above did. The four supplied earlier leads resolve to the actual ComplexComparisonPartII APIs or to the sources.toml filename. |
| Supplier-gap consistency | 23 needs/supplier/section records retained, each matching its README contract; kan-quillen-simplicial absent from both. |
| Authorized plan edit | Parsed comparison against the starting plan: every top-level field except gaps identical; surviving gap entries identical and in the same order. |
| Sources | TOML parses; 13 unique IDs; all required fields present; no new unresolved reference request. SGA5 remains explicitly uncertified. |
| Acceptance shape | Single import Mathlib, required namespace, one module docstring, no set_option, admitted data, examples or padding declarations. |

Complete dependency-check output:

    depcheck: 52 roadmaps, 591 edges, 0 problem(s)

## Maintainer consequences

No headline theorem, generality, coefficient range or Lean name changed. GeneralizedCohomology no longer receives the redundant simplicial-axiom request; its properness request remains. BordismFormalGroups §F6.5 is now explicitly consumed in Layers 0 and 6. ResolutionOfSingularitiesCharacteristicZero §5.5 and §§5.3–5.4 are explicit product-route inputs, alongside its correctly scoped compactifications. Downstream references to §§3.9a–3.9c and §§4.7, 6.2 retain their locators. The frozen design fields outside the top-level gaps list were left untouched as required. Independent review is still required; this report does not count as acceptance.
