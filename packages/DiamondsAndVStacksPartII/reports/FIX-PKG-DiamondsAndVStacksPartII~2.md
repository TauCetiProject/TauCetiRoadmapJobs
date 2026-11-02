# Repair report: DiamondsAndVStacksPartII

## F01 (P1) — not actionable in this package: the general residue-field prerequisite belongs to AdicSpacesPartII

Ownerless obligation → matching gap:completed-residue-fields-general-universal-homeomorphisms contracts naming AdicSpacesPartII R0.18. D7.3 retains the unrestricted headline and the residue-preserving intermediate theorem; D7.1 retains the finite proof. D7.1–D7.3, Summary and Suggested.lean agree. The requested supplier theorem is not asserted to exist. SW20 line 3113 asserts it without the general separation argument; identity/quadratic geometric fibres have 1/2 points.

## F02 (P1) — applied

Ownerless research obligation → D11.14 explicitly owns GLE’s unrestricted component theorem and its componentwise connectedness proof obligation, retaining the conditional theorem and its proof. Summary, D11b and Suggested.lean agree. The former non-supplier gap leaves the supplier-only gaps list. GLE line 1885 does not justify its step generally; the punctured chain has 0 closed points and fails closed specialization.

## F03 (P1) — not actionable in this package: ArcTopologyAndDescent has no eligible supplying roadmap text

“Supplies” → five explicit matching contracts for §§1.2, 1.5, 1.7, 3.10 and 7.8. D7.6, D7.10 and D8’s site/space consumers cite their relevant gaps. GLE lines 1119, 1129 and 1144 support the requested interfaces. Empty-cover values are false/true on Spec 𝔽_p/∅. The surjective map Spec(K×κ) → Spec V fails the valuative cover condition.

## F04 (P1) — applied

“Every perfect field gives the terminal sheaf” → Spd k has nonempty reduction and is not a diamond, by D8.6–D8.7. D10.6 uses the residue-point monomorphism, including nonclosed points; D10.11’s nilpotent comparison deletes the terminal identification. Both sections test 2 sections for 𝔽_(p²), versus 1 for 𝔽_p, at p=2,3. Evidence: GLE lines 1262 and 1273.

## F05 (P2) — applied

“Quasiseparated diamonds are not v-formalizing” → “nonempty quasiseparated diamonds”. D9.2 explicitly contrasts ∅ (v-formalizing=true) and Spd ℚ_p (false), both with empty reduction. The former has 0 points and the latter 1. GLE Proposition 4.8(4), GLE line 1437, needs this exception; the nonempty-reduction implication does not apply to ∅.

## F06 (P2) — applied

Duplicate global recovery theorem → import FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.27, `deJongBoundedFormalFunctions`, in Scope, contracts, D10.10’s proof/Needs and D10 dependencies. D10.4 now owns complete-local connectedness (DJ95 line 2899); D11.15 and Suggested.lean follow that change. The supplier’s target includes restriction compatibility and the corrected de Jong route. Open/closed discs and the missing bounded function z=Y/π distinguish its hypotheses.

## F07 (P2) — applied

Locally noetherian restriction → general complete separated finite-ideal formal schemes in D9.7, D11.1 and D11.4, with noetherian classical comparison as a specialization. Added gap:finite-ideal-formal-schemes for AdicSpacesPartIII F0.3/R2.3; D11.17 explicitly uses these general results. O_C has reduction Spec k_C, analytic part Spd(C,O_C), specialization 1→1. GLE lines 1504, 1514, 1516, 1683 and AGLR line 799 give the hypotheses.

## F08 (P2) — applied

D10.1’s separated finite-type open comparison → separated locally finite-type comparison, in statement, proof and API. Its infinite disjoint-union Check has comparison ⨿id_(Spd O), open despite failure of quasicompactness. AGLR line 632 supplies precisely this generality. Finite-type hypotheses elsewhere are retained where used for distinct results.

## F09 (P2) — applied

Three compound gaps → six contracts, retaining original slugs and adding finite-geometric-fibre-radiciality, analytic-integral-stalks-mod-p and noetherian-definition-rational-flatness. D7.1/D7.2, D10.7 and D11.20 name the appropriate inputs. Contracts specify finite maps, selected valuation-ring localizations, residue characteristic, n≥1, completeness, Tate charts and noetherian defining rings. Pinned flat_toCompletionLoc supplies its strongly noetherian Tate case; the gap requests the remaining case. Checks distinguish residue/geometric degrees 1/2.

## F10 (P1) — applied

Base GeometricSatakeAndFusion as consumer → GeometricSatakeAndFusionPartII LM.3 in Scope and Downstream consumers. The base remains the GS0 supplier to D10.15. Its Part II design’s local-model-kimberlite target names D11; `packages/GeometricSatakeAndFusionPartII/design/README.md:523`. The final dependency check has no move, UPWARD or CYCLE: base GS → this roadmap → GS Part II.

## F11 (P3) — applied

Absent titles → GS0 “Bounded admissible affine flag loci” and C4.16 “Images of proper maps in separated targets”; rational localization → PerfectoidSpaces P2.3. Updated every occurrence in Scope/contracts. Resolved supplier text: `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:946`, `TauCetiRoadmap/DiamondEtaleCohomology/README.md:1408`, `TauCetiRoadmap/PerfectoidSpaces/README.md:6235`. The GS0 morphism is explicitly in its functoriality API.

## F12 (P3) — applied

Unnormalized Tate notation → B⁺ defined as integral closure in B[1/π], used in D11.17 and Conventions without assuming B normal. Its Check computes B=O⟨z²,πz⟩, B⁺=O⟨z⟩; z²=X gives |z|²≤1, hence |z|≤1. Thus bounded valuations do not change. D10.7’s existing normalized notation agrees. Evidence: AGLR line 914; the source’s shorthand does not impose normality on B.

## F13 (P1) — applied

Supplied arbitrary-scheme analytic functor → D10.1 owns the extension from the supplier’s locally finite-type domain to all O-schemes, by marked-untilt section formulas and gluing. Compatibility on that domain is explicit in Scope/contracts/API. Infinite affine-space sections are sequences in R^♯ versus R^(♯+); (ϖ⁻¹,0,…) belongs only to the analytic set. Evidence: AGLR lines 598–632; supplier L1/mixed-characteristic-scheme-diamond assumes locally finite type.

## Verification and remaining obligations

The changes concern `packages/DiamondsAndVStacksPartII/README.md`, `packages/DiamondsAndVStacksPartII/Suggested.lean`, `packages/DiamondsAndVStacksPartII/sources.toml` and only the top-level gaps value of `packages/DiamondsAndVStacksPartII/design/plan.json`. Metadata is unchanged. The report is the separately requested artifact. No other repository file was edited; no commit or network write was made.

The unrestricted theorems are not claimed proved by this repair. D7.3 depends on its named general residue-field supplier gap. D11.14 owns the unrestricted theorem and the repair of GLE’s source proof; the closed-specialization intermediate argument is given in prose, and no inference from local noetherian topology alone is asserted. These are mathematical implementation obligations, not acceptance by the author. The finite theorem is not substituted for D7.3, nor the intermediate theorem for D11.14.

The initial eight legal cache entries were readable. No new external text was needed. The imported bounded-function theorem explicitly selects its owner’s corrected route; this report does not claim to have read de Jong’s 1998 erratum. No unsettled missing-source request was created. Manifest changes only remove obsolete D10.4 global-recovery associations and associate DJ95 with complete-local connectedness; all access evidence and keys are preserved.

Main shape comparisons used `TauCetiRoadmap/AdicSpacesPartIII/README.md` and `TauCetiRoadmap/PerfectoidSpaces/README.md`. Supplier checks used main for existing roadmaps, and the indexed new-roadmap heads for DiamondsAndVStacks, DiamondEtaleCohomology, AdicCoefficientsAndComparisons, GeometricSatakeAndFusion and FiniteFlatGroupsAndIntegralPadicHodgeTheory. The roadmaps service’s main/open-head object searches and the board-tree searches found the global bounded-function owner, but no separate complete-local connectedness owner. D10.4 retains that local theorem; D10.1 owns only the analytic extension beyond its supplier’s stated domain. Generic formal carriers remain AdicSpacesPartIII’s obligation. No declaration name is taken from another roadmap: Suggested.lean declares none.

Ownership against the provided main/open-head index was checked with the roadmaps service. The long list of sibling names gives no additional filesystem checkout paths; no additional unprovided head was fetched. The local board designs were used as ownership evidence only, never as eligible supplied mathematics. ArcTopologyAndDescent’s design does not discharge its contracts.

Pinned revisions: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, as recorded by the content manifest. Read native definitions at those pins: Scheme (`Mathlib/AlgebraicGeometry/Scheme.lean:40`) supplies affine charts without separatedness; PerfectRing (`Mathlib/FieldTheory/Perfect.lean:44`) supplies power-map bijectivity without characteristic; Valuation.ltIdeal (`Mathlib/RingTheory/Valuation/Integers.lean:386`) lives on the integer subring; ConnectedComponents (`Mathlib/Topology/Connected/Clopen.lean:510`) is the actual component quotient. Tau Ceti spa (`TauCeti/AlgebraicGeometry/AdicSpace/Spa/Basic.lean:101`) is bounded continuous valuations; IsAnalyticPoint (`TauCeti/AlgebraicGeometry/AdicSpace/Spa/Analytic.lean:72`) means non-open support; PreAdicSpace (`TauCeti/AlgebraicGeometry/AdicSpace/PreAdicSpace/Basic.lean:40`) does not include a perfectoid site. The pinned flat_toCompletionLoc (`TauCeti/RingTheory/Huber/LocalizationTopology/Laurent/Flat.lean:804`, standing binders at 722) requires complete separated strongly noetherian Tate data and HasDenominatorPower. These native objects do not make the missing headline carriers statable through a few simple definitions.

The declaration and hypothesis audit counted zero definitions, instances, theorems and examples in Suggested.lean. Thus there are zero elaborated `#check @name` comparisons and zero dropped section hypotheses; no declaration or binder changed. Its docstring now lists the corrected unrestricted headlines, general finite-ideal formal results and complete-local connectedness. No replacement theorem on bare scalars, free predicates, sorry’d data, padding or library lemma was introduced.

## Adversarial mathematics pass

The rows record computations of the stated objects, not Lean proofs. “Retained” means the displayed instances satisfy the target or violate its explicitly excluded hypothesis; it does not claim a proof of the unrestricted theorems. All fields/rings are nonzero where a point or connected space is required. The zero-ring and empty cases are included separately. No factorial, natural subtraction, polynomial degree, indexed matrix or scalar division operation is introduced by these repairs. π and ϖ are nonzero units in the ambient Tate field before their inverses are used; a unit ideal of definition forces the empty separated-complete ring. No prime is excluded.

| Statement | Instances tried | Values computed | Result and change |
|---|---|---|---|
| Conventions: characteristic and perfection | p=2,3; dual numbers | Frob on 𝔽₂ and 𝔽₃ is identity; ε^(p)=0 | Retained characteristic/primality and reduced perfection. |
| Conventions: valuation and specialization direction | DVR, 0 and 1 | v(π)<1, v(1)=1, v(0)=0; ideal=(π); (0) specializes to (π) | Strict inequality retained throughout D7/D9/D11. |
| Conventions: connectedness and empty data | ∅; point | component counts 0,1; preconnected=true,true; connected=false,true | Nonempty connectedness retained. |
| Conventions: plus normalization | B=O⟨z²,πz⟩ | z²=X; coefficient of z in B is divisible by π; B⁺=O⟨z⟩ | Added normalization, no normality restriction on B. |
| D7.1 finite residue theorem | identity; cusp; unramified quadratic at p=2,3 | residue degrees 1,1,2; geometric fibres 1,1,2 | Quadratic ordinary homeomorphism is excluded by universality. |
| D7.1 finite valuation-subring interface | K=𝔽_p(t)((u)), L=𝔽_p(s)((u)), t=s(s−1), p=2,3 | at t=0 the residue polynomial has distinct roots 0,1; integral closure has 2 maximal ideals, selected valuation ring is one localization | Corrected the integral-closure shorthand in D7.1 and its finite supplier contract. |
| D7.1 general residue prerequisite | K/K; unramified L/K | geometric fibre over C is C, respectively C×C; point counts 1,2 | Named general supplier gap; finite computation does not prove its transcendental case. |
| D7.2 integral stalk comparison | ℚ_p-point, n=2; ramified quadratic, n=1 | both identity stalks ℤ_p/p² have p² elements; ℤ_p/p has p elements versus p² in O_L/p | Split stalk contract; ordinary homeomorphism insufficient. |
| D7.3 invariant diamond | cusp normalization; quadratic extension | cusp has one lift of cusp and equal diamond; quadratic geometric fibre 2→1 fails isomorphism | Unrestricted headline retained through general contract. |
| D7.4 scheme formal diamond | 𝔽_p; affine line; dual numbers; ∅ | section sets {∗}, R⁺, {ε↦0}, ∅; ϖ⁻¹ excluded from R⁺ | Retained formal convention, not R. |
| D7.5 minimal image point | field; DVR identity; ∅; punctured ascending chain | largest image prime (0), (π), none, none | Nonemptiness and quasicompactness retained. |
| D7.7 olivine definition/API | perfectoid field; discrete 𝔽_p[[u]]; 𝔽_p | Spa/Spo point counts 1/1, 3/4, 1/1; exceptional fibre has 2 points | Retained second valuation and strict analytic comparison. |
| D7.8 Spd/olivine comparison | field; discrete 𝔽_p[[u]] | corresponding counts 1=1 and 4=4, versus Spa count 3 | Retained actual olivine carrier. |
| D7.9 schematic closed subsets | ideal (p); unit ideal; disconnected perfect ring | V(p) is special locus; V(1)=∅; V(1,0) selects one component | Open ideals, not just prime ideals, retained. |
| D7.10 cover detection | identity; ∅→Spec 𝔽_p; ∅→∅; Spec(K×κ)→Spec V | cover/surjection true/true, false/false, true/true; last map has 2 ordinary image points but misses valuation of V | Added empty and surjective non-cover Checks; contracts are explicit. |
| D7.6 perfect-scheme full faithfulness | perfect affine line; nonperfect line | t↦t^(1/p) exists on perfect ring and its sheaf; absent on 𝔽_p[t] | Perfection needed; no finite-type narrowing. |
| D7.11 discrete-source theorem | Spa 𝔽_p→Spa ℤ_p; nonperfect line | Hom cardinalities 1=1; inverse Frobenius has 0 nonperfect-source lifts | Perfect discrete source retained. |
| D8.1 scheme-theoretic site | Spec 𝔽_p; ∅; nonperfect line | terminal sections 1; initial sections 0 on nonempty test; nonperfect ring fails bijective Frobenius | Perfect representables and cutoff inclusions retained; gaps explicit. |
| D8.2 underlying space | field; perfect line; ∅ | 1 point; generic point plus closed points; 0 points | Quotient-space construction retained. |
| D8.3 extension of diamondification | terminal and initial sheaves | final maps to Spd 𝔽_p with 1 section; initial maps to ∅ with 0 | Finite-limit/colimit direction retained. |
| D8.4 reduction adjunction | Spd ℤ_p; Spd ℚ_p; formal dual numbers | reductions Spec 𝔽_p, ∅, Spec 𝔽_p | Reduction on right; nilpotents lost. |
| D8.5 reduced objects | perfect field; ∅; Spd ℤ_p counit | unit is identity on field and ∅; counit omits the generic point of Spd ℤ_p | Reducedness is not automatic for every v-sheaf. |
| D8.6 pair reduction | (C,O_C); (O_C,O_C); discrete 𝔽_p[t] | ambient nilpotent ideal C; reduced rings 0, k_C, 𝔽_p[t^(1/p∞)] | Quotient plus-ring convention retained. |
| D8.7 empty reduction of qs diamonds | Spd ℚ_p; ∅; Spd 𝔽_(p²) | reductions ∅, ∅, Spec 𝔽_(p²) | Last is not a diamond; supports repaired D10.6. |
| D8.8 formally adic definition/API | identity; (p,T)-adic ℤ_p[[T]] over ℤ_p | identity reduction square is Cartesian; p=0,T≠0 lies in special base change but not reduction | Formal adicness false in second case. |
| D8.9 adicness comparison | ℤ_p⟨T⟩; ℤ_p[[T]] with (p,T) | (p) matches defining topology in first; Tⁿ∉(p) for every n≥1 in second | Both predicates true/false respectively. |
| D8.10 formal closedness/separatedness | Spd 𝔽_p→Spd ℤ_p; formal completion of origin | special immersion has Cartesian reduction; completion has nonempty analytic locus but reduction one point | Closed special immersion true; completion not formally adic. |
| D8.11 diagonal formal adicness | Spd ℤ_p; p-adic formal disc | reduction diagonals Spec 𝔽_p→Spec 𝔽_p and affine-line diagonal | Diagonal identifies equal untilts; direction retained. |
| D8.12 counit criterion | Spd ℤ_p; affine Heuer sheaf | first counit injective; in second T=0 and T=ϖ have same reduction 0 | Noninjective model excludes automatic formal separatedness. |
| D8.13 formal closed subsheaves | special point; whole space; ∅ | quotient rings 𝔽_p, ℤ_p, 0; reduced spectra 1,1,0 points | Closed reduction and open-ideal cases retained. |
| D9.1 Tate specialization | DVR; disc T=ϖ,1; zero ring | images (π), origin, T=1; empty map for zero ring | Strict normalization agrees with Conventions. |
| D9.2 formalizations/API | Spd ℤ_p; Spd ℚ_p; ∅ | v-formalizing true,false,true; reductions 1,0,0 points | Added nonempty exception and contrasting Check. |
| D9.3 unique formalization | identity of Spa(C,O_C) into Spd O_C | extension is id_(Spd O_C); extension count 1, so two extensions coincide | Retained formal separatedness. |
| D9.4 specializing definition/API | Spd ℤ_p; Spd ℚ_p; ∅ | formally separated true for all; v-locally formal true,false,true | Specializing true,false,true. |
| D9.5 specialization descent/API | Spd O; disc; ∅ | generic and special O-points both map to (π); T=ϖ,1 reduce to 0,1; empty map | Source, target and direction agree. |
| D9.6 prekimberlite definition/API | Spd ℤ_p; Spd 𝔽_p; ∅ | analytic loci Spd ℚ_p, ∅, ∅; reductions Spec 𝔽_p, Spec 𝔽_p, ∅ | Nonanalytic counit is closed; empty allowed. |
| D9.7 general formal schemes | O_C; ℤ_p[[T]]; doubled origin; ∅ | O_C has defining ideal (p), reduction k_C and analytic field C; p=0,T≠0 occurs in second; doubled reduction nonseparated; ∅ has 0 points | Broadened generality with carrier gap and negative controls. |
| D9.8 formal neighbourhood/API | closed origin; whole reduction; ∅ | T=ϖ accepted, T=1 rejected; full neighbourhood F; empty neighbourhood ∅ | Whole-test-space condition retained. |
| D9.9 constructible neighbourhood openness | origin in affine line | neighbourhood is T-topologically-nilpotent locus; T=ϖ true, T=1 false | Open but not formally adic; no replacement of tube by full fibre. |
| D9.10 Heuer construction/API | affine line; terminal; ∅ | sections R⁺/R°°; ϖ↦0,1↦1; terminal 1 section, initial 0 | Distinguishes R⁺ from its reduction. |
| D9.11 Heuer specialization/API | formal disc | T=ϖ,1 give reductions 0,1; origin fibre is Spd ℤ_p[[T]] | Morphism fibre differs from mere set {0}. |
| D9.12 completed étale lifts | identity lift; extra generic factor | completion of R⁺ is R⁺; completion of R⁺×R⁺[1/ϖ] is R⁺×0 | Uncompleted uniqueness is excluded; completed contract retained. |
| D9.13 étale neighbourhood/API | degree-two residue extension; identity | Spec 𝔽_(p²) lifts to Spd W(𝔽_(p²)), geometric generic degree 2; identity degree 1 | Nontrivial finite étale lift is not an open immersion. |
| D9.14 reduction equivalence | Spd ℤ_p, residue degrees 0,1,2 | empty lift; ℤ_p; W(𝔽_(p²)); reductions ∅,𝔽_p,𝔽_(p²) | Components match; no ordinary-lift substitute. |
| D10.1 two functors/API | affine line; infinite affine space; infinite union; P⁰; ∅ | ϖ accepted twice, ϖ⁻¹ analytic only; tuple versions identical; union comparison ⨿id; P⁰ gives Spd O; ∅ twice | Own arbitrary-scheme extension; comparison open for locally finite type. |
| D10.2 relative generic comparison | formal open disc; restricted closed disc | generic inequalities q<1 versus T≤1; π=0,q≠0 is outside relative generic fibre | Relative fibre retained, not entire analytic locus. |
| D10.3 normal generic fibre | O[[q]]; cusp | open disc normal; cusp still fails square–cube normality after inverting π | Normality hypothesis retained. |
| D10.4 complete-local connectedness | O; O[[q]]; O_L; two-branch complete local ring | component counts 1,1,1,2; O_L becomes [L:E] points over algebraic closure | Retained local target; geometric connectedness is not asserted and the nonnormal case is excluded. |
| Imported bounded-function recovery | open/closed disc; O⟨z²,πz⟩; π-torsion | bounded rings O[[q]], O⟨T⟩, O⟨z⟩; last generic fibre empty | Earlier supplier owns global theorem; missing z excludes nonnormal ring. |
| D10.5 classical specialization | disc T=π and T=1 | residue coordinates 0 and 1; generic-to-special direction | Algebraically closed k and classical restriction retained. |
| D10.6 maximal diamond open | 𝔽₄,𝔽₉; generic residue-point map; Spf ℤ_p | field section counts 2,2 versus terminal count 1; generic point inclusion mono but not closed; maximal open Spd ℚ_p | Repaired field argument and nonclosed-point interface. |
| D10.7 generic density | O; O[[q]]/(π); higher-rank valuation example | generic closure has 2 O-points; torsion model has 0 generic points; higher-rank N_(t≪1) has no generic point | Noetherian route and split localization inputs retained. |
| D10.8 closed immersion criterion | special point; rank-two closed point | Spd 𝔽_p⊂Spd ℤ_p is closed mono qc; rank-two singleton omits its generization | Weak generalization condition excludes arbitrary closed point subsets. |
| D10.9 v-closure/API | generic O-point; ∅; whole F | generic closure is Spd O with 2 points; ∅-closure=∅; F-closure=F | Closure includes specializations, not merely analytic locus. |
| D10.10 specialization triples | disc map T↦T; formal-variable map q↦π | ring maps preserve bounded functions; q image π is topologically nilpotent; Iⁿ maps into (π)ⁿ | Imported bounded-function theorem; continuity retained. |
| D10.11 formal full faithfulness | endomorphism q↦π; cusp; nilpotent thickening | continuous map exists; cusp rings differ despite equal v-sheaves; thickening has 2=2 sections for k=𝔽_(p²) | Deleted false terminal equality; normality/flatness controls retained. |
| D10.12 proper recovery | P⁰; projective cusp and normalization | P⁰ endomorphism count 1=1; cusp/normalization have equal v-sheaves but different local rings | Proper flat normal hypotheses retained. |
| D10.13 absolute weak normalization | cusp; characteristic-p dual numbers | awn cusp gives O⟨t⟩; char-p awn kills ε and perfects coefficients | Scheme/formal extension contract, not duplicate ring construction. |
| D10.14 flat closure | generic point of P⁰; empty U; added vertical component | closures Spec O and ∅; extra special point adds a point outside the closure | Flatness excludes vertical components. |
| D10.15 local-model uniqueness | GL_n, d=0,n; n=0; identity representation | Grassmannian Spec O in all boundary cases; unique prescribed identity; d≤n required | Supplied GS0 objects, general linear comparison remains a hypothesis. |
| D11.1 valuativity/API | Spd O; O_C; identity; ∅ | bounded maps restrict to the pullback integral subring; point specializations 1→1; no points for ∅ | General finite-ideal formal case added. |
| D11.2 smelted definition/API | full disc; smaller closed disc; empty D | full disc partially proper in F; smaller disc has boundary and fails; D=∅ always allowed | Boundary condition retained. |
| D11.3 kimberlite definition/API | Spd ℤ_p; (p,T)-adic disc; ∅ | affine analytic part covered by 1 or 2 rational charts, respectively; empty by 0 | Finitely generated ideals give quasicompact specialization. |
| D11.4 general formal kimberlite | O_C; ℤ_p[[T]]; zero ring | 1 analytic point→1 reduction point; 2 analytic charts with extra char-p point; ∅→∅ | Added nonnoetherian target and explicit route into D11.17. |
| D11.5 tube construction/API | origin in disc; rank-two example | tube T<1, full fibre includes higher-rank boundary; rank-two fibre has 1 point, interior 0 | Tubes remain interiors, not set fibres. |
| D11.6 spectral/closed specialization | Spd O; ∅ | point→point inverse image compact; ∅→∅ compact; closed images {point},∅ | Spectral local convention retained. |
| D11.7 permanence | special locus; degree-two étale lift; ∅ | closed special locus has empty analytic part; étale lift has reduction 𝔽_(p²); ∅ stays ∅ | Formally closed condition retained. |
| D11.8 cJ definition/API | rank-one field; rank-two field pair; ∅ | rank-one density true; rank-two closed singleton has 0 rank-one points, hence false; ∅ density true | Constructible density, not Zariski density. |
| D11.9 tube density | formal disc; rank-two countercontrol | open disc closure inside fibre is full fibre; rank-two tube closure ∅ differs from singleton fibre | cJ hypothesis excludes rank-two countercontrol. |
| D11.10 enough facets/API | closed disc over char-p C; field; rank-two pair | 1 facet chart for each first example; last fails cJ, so no facets cover | Characteristic-p base and integral subrings retained. |
| D11.11 richness/API | Spd O; (Spd 𝔽_p[T],∅); empty pair | specialization surjective 1→1; ∅→nonempty fails; ∅→∅ passes | Richness does not imply nonemptiness. |
| D11.12 topological normality/API | O; smooth disc; x(x−π) | closed-point tube component counts 1,1,2 | Two-branch model fails topological normality. |
| D11.13 quotient theorem | Spd O; formal disc | point quotient topology has 2 opens; disc quotient reduction is affine-line Zariski topology | No Hausdorff assumption or inverse specialization. |
| D11.14 intermediate components | O; ∅; two-branch model | component maps 1→1,0→0,2→1 | Last lacks topological normality; conditional proof retained. |
| D11.14 unrestricted target | punctured valuation chain | each prime has a later strict specialization; closed points=0; closed-specialization predicate=false | Source proof step not certified; unrestricted target and its componentwise proof remain owned here. |
| D11.16 π-adic definition/API | Spd O; (π,T)-adic disc | special base change equals reduction for O; disc includes π=0,T≠0 beyond reduction | π-adic hypothesis excludes the latter structure map. |
| D11.17 flatness/API | O; O_C; nonzero perfect k; ∅; nonnormal B | specialization 1→1 for first two; ∅→one point fails for k; ∅→∅ passes; B⁺=O⟨z⟩ | General formal inputs and plus normalization repaired. |
| D11.15 normal formal components | O⟨T⟩; closed residue degree d; two-branch model | base and generic component counts 1=1; degree-d tube connected over E, d components geometrically; branches give 2→1 | Complete-local connectedness is not geometric connectedness. |
| D11.18 triple principle | X=Spd O; empty object | triples (Spd F,Spec k,constant) and (∅,∅,empty); identity Hom singleton in each | Completed unramified base change retained in compatibility. |
| D11.19 proper criterion | Spd O; nonzero special-only sheaf | O generic point closure=whole Spd O; special-only generic closure=∅ | Density hypothesis excludes the latter. |
| D11.20 connected-tube normality | O⟨T⟩; two-branch square example, p≠2; unramified order | first normal with 1 component per tube; square example has 2 discs above nonzero square; ℤ_p+pO_L has 1 ordinary tube but residue extension degree 2 | Algebraically closed residue field retained; finite geometric-fibre contract rejects the order. |

| Supplier contract | Instances tried | Computed values | Result |
|---|---|---|---|
| scheme-v-covers | empty family over point/∅; identity | cover false/true/true | Arbitrary-rank lifting and finite-subfamily rule retained. |
| perfect-scheme-v-subcanonicity | field; nonperfect line | identity descent gives 1 compatible identity; Frobenius on 𝔽_p[t] misses t | Perfectness is a real hypothesis. |
| discrete-adic-v-cover-detection | V; K×κ over V | Spec map hits both generic and closed points; Spa map omits original nontrivial valuation | Ordinary surjectivity is insufficient. |
| perfect-valuation-product-covers | perfect field; product of 2 fields | identity cover; 2 connected components preserved by product presentation | No rank-one restriction imposed on valuation rings. |
| perfect-scheme-representable-descent | identity cover; disjoint union of two opens | identity descends to itself; agreeing restrictions have 1 glued map | Requested arbitrary targets, not just affine targets. |
| completed-etale-lifts | R⁺ and R⁺×R⁺[1/ϖ] | two ordinary lifts, same completed lift R⁺ | Completed equivalence is one coherent contract. |
| mixed-characteristic-weak-normality | normal O; order ℤ_p+pO_L | normal modification degree 1; order normalization has separable residue degree 2 and is not a universal homeomorphism | Distinguishes weak normality from normality. |
| finite-geometric-fibre-radiciality | Spec k[ε]/ε²→Spec k; 𝔽_(p²)/𝔽_p | geometric fibre point counts 1 and 2 | Nilpotents allowed; separable quadratic fails singleton condition. |
| absolute-weak-normality-formal | cusp; dual numbers in characteristic p | cusp adds t; dual numbers kill ε | Scheme/formal compatibility requested beyond ring construction. |
| completed-residue-fields-general-universal-homeomorphisms | identity; unramified quadratic | geometric lifts 1 and 2 | Finite examples discriminate the obligation but do not settle general field separation. |
| finite-residue-and-integral-stalks | ℚ_p; unramified quadratic | completed residue degrees 1,2; integral rings ℤ_p,O_L | Finite contract permits degree 2; no residue equality is assumed. |
| analytic-integral-stalks-mod-p | ℚ_p-point; n=1,2 | stalk and completed integral quotients have p,p² elements respectively | n≥1 explicit; no finite-map condition. |
| pseudorigid-jacobson-flatness | O[[t]]⟨π/t⟩[1/t]; characteristic-p quotient | invertible t; quotient k((t)) nonzero, complete Tate field | Complete Tate/noetherian-definition hypotheses explicit. |
| noetherian-definition-rational-flatness | whole/empty rational domain; punctured formal chart | maps A→A and A→0 are flat; analytic chart inverts nonzero denominator | Existing complete strongly noetherian Tate case imported; remaining formal-source case requested. |
| finite-ideal-formal-schemes | O_C; zero ring; (p,T)-adic ℤ_p[[T]] | defining ideals have 1,0,2 generators; reductions k_C,0,𝔽_p | Nonnoetherian O_C fits; completeness and separatedness remain explicit. |

## Check outcomes

- Required elaboration: `lake env lean` on `packages/DiamondsAndVStacksPartII/Suggested.lean`, run from the content checkout, exited 0 with no output or warnings. The module imports only Mathlib, so no Tau Ceti object build was needed. A first invocation mistakenly used the board directory and exited 1 before elaboration with “no default toolchain configured”; the corrected invocation used the existing pinned toolchain without installation or changes.
- The required per-declaration signature audit has zero instances. There are no section variables or named declarations whose elaborated binders could disagree with the README.
- Final dependency command: the requested `tauceti-roadmap gate --depcheck`, with this package name, order file and `--movable`, exited 0 and printed exactly:

```text
depcheck: 51 roadmaps, 590 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. An initial check parsed the downstream Part II mention inside an Exact supplier paragraph as a supplier and printed a move after that consumer; that mention was deleted from the supplier paragraph. The consumer remains in Scope and Downstream consumers, and the final graph has the intended direction. The merge-order file was not edited.

- `roadmaps resolve` exited 0. Its sole unresolved roadmap is ArcTopologyAndDescent, whose five obligations are explicitly matching gaps. There are no unresolved Lean names in this package. The resolver says it did not inspect pinned libraries itself; the pinned files were inspected directly as recorded above.
- All 15 plan supplier gaps have slug, supplier, section and one-sentence needs, and each has a matching “What … must provide” paragraph. A JSON comparison against the original plan confirms that every top-level value other than gaps is unchanged. The unrestricted component obligation is now an owned target in D11.14, not an ownerless gap.
- `git diff --check` exited 0. No forbidden import, set_option, sorry’d data or admitted example was added.
- The listed `tex=1` failure in the §R07.2.27 supplier contract was repaired by describing the bounded analytic functions in prose. The ring isomorphism, hypotheses, restriction compatibility and consumers are unchanged. The gate’s own scanners returned `tex=0, latex=0` (exit 0). Required Lean elaboration and dependency checks were rerun with the successful outcomes above; Suggested.lean was unchanged by this notation repair.

Maintainers should preserve the general residue-field and Arc/formal-carrier supplier gaps until their suppliers provide the specified mathematics. D10.4 now means complete-local connectedness, not global bounded-function recovery; consumers of the former global target must use FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.27. D11.15 uses the retained local theorem. D7.3 and D11.14’s unrestricted headlines are restored, with the general proof obligations explicitly located. No Lean declaration was renamed or deleted because this acceptance test has none. Fresh independent review remains necessary.
