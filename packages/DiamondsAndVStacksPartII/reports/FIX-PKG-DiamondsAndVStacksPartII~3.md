# Repair report: diamonds and v-stacks, Part II

## F01 (P1) — applied

Earlier ShimuraVarieties consumer attribution → GeometricSatakeAndFusionPartII LM.0/scheme-local-model and LM.3/normalization-of-image consuming D10.12, and LM.6/pel-bdr-kernel consuming D10.14. Searched the whole README for ShimuraVarieties and Satake supply attributions; the scope paragraph and the base GeometricSatakeAndFusion supplier contract retain their correct directions. No theorem changed.

## F02 (P2) — applied

Request for a nonnoetherian formal-scheme carrier → import AdicSpacesPartIII F0.3's carrier and request only reduction, ideal independence, and the general pre-adic comparison. Repaired Scope and ownership, the supplier summary, the exact contract, D9.7's explanatory paragraph, and the matching plan gap. Added three contract Checks. D9.7, D11.1, D11.4 and D11.17 retain their generality.

## Evidence and ownership

The main checkout read was a8132fb2, detached at origin/main. The open-roadmap index reports its main snapshot as bbed953; the AdicSpacesPartIII evidence below was read directly from the supplied main checkout, not from an open revision. House-style comparisons were SchemeAndStackFoundations, AdicSpacesPartII and AdicSpacesPartIII on main.

- `TauCetiRoadmap/AdicSpacesPartIII/README.md`, F0.3, lines 1450–1491: finite-ideal formal schemes have no noetherianity restriction; `FormalScheme.IsLocallyNoetherian` is separate, and Spf O_C is an explicit nonnoetherian example. R2.3, lines 4617–4648, restricts its fully faithful adic-space functor to locally noetherian formal schemes. Its generic-fibre functor for other models does not supply the full pre-adic comparison. Thus the existing owner supplies the carrier, while the narrowed gap still has mathematical content.
- GLE line 1504 specifies finite defining ideals containing p; GLE line 1509 identifies the reduction on affine opens; GLE line 1514 gives the fully faithful comparison to pre-adic spaces. SW13 line 561 supplies the same comparison for finite defining ideals. SW13 lines 564–577 recover the formal spectrum and its structure sheaf, explaining why the comparison preserves morphisms rather than merely point sets. These are the legal cached texts already certified under their existing manifest keys.
- `packages/GeometricSatakeAndFusionPartII/design/README.md`, LM.0/scheme-local-model, lines 157–163, and LM.3/normalization-of-image, lines 497–503, explicitly consume D10/proper-scheme-full-faithfulness. LM.6/pel-bdr-kernel, lines 915–921, explicitly consumes D10/flat-closure-diamond. These are precisely D10.12 and D10.14 in this package.
- ShimuraVarieties' eligible new-roadmap head d377db7, Scope and ownership, places integral and bad-prime models downstream. The merge-order positions are ShimuraVarieties 115, GeometricSatakeAndFusion 147, this package 149, and GeometricSatakeAndFusionPartII 290. The deleted attribution was 149 → 115; the replacement is 149 → 290. The retained Satake input is 147 → 149. HeckeStacksAndLocalShtukas is at 243, also later.

Ownership was searched by object using `roadmaps list`, `roadmaps grep` and `roadmaps show`, including the indexed open heads and main. Board packages were searched for the same finite-ideal carrier, reduction and comparison, and for the two D10 consumer targets. No construction is added here: the general formal carrier remains owned by AdicSpacesPartIII F0.3; its missing interfaces remain gap:finite-ideal-formal-schemes with the same supplier and section. None of the named open work is used to duplicate that carrier. The later local-model design is cited as a consumer only.

All cross-roadmap references were compared with the corresponding main files or eligible new-roadmap heads. The supplier sections checked were DiamondsAndVStacks D0–D6; SchemeAndStackFoundations §§0.14, 0.21, 0.23–0.26, 4.9–4.10; AdicSpacesPartII R0, R1; AdicSpacesPartIII F0, R2; PerfectoidSpaces P1–P3; DiamondEtaleCohomology C4 and C8.24; AdicCoefficientsAndComparisons L1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.27; and GeometricSatakeAndFusion GS0. Existing gap contracts distinguish requested extensions from supplied statements. In particular, R2.3's noetherian restriction is now explicit in the supplier summary.

The resolver still reports one lead: ArcTopologyAndDescent §§1.2 is absent from its indexed main/open copies. This was already represented by five supplier gaps, with matching README contracts and plan entries: scheme-v-covers, perfect-scheme-v-subcanonicity, discrete-adic-v-cover-detection, perfect-valuation-product-covers, and perfect-scheme-representable-descent. No edit here can supply that external roadmap; this report does not reopen the prior disposition or assert that its requested results exist.

## Adversarial mathematics pass

The tables record direct computations, not proofs of the general theorems. O is the indicated mixed-characteristic complete DVR, π its uniformizer, and C a completed algebraic closure with its rank-one valuation. Counts of geometric sections are at compatible algebraically closed characteristic-p perfectoid tests. Connected-component counts include nonemptiness. Each target row covers its defining statement and the listed consequences; the more detailed API table follows. No changed mathematical target was narrowed.

| Statement or convention | Instances tried | Values computed on the two sides | Result and change |
|---|---|---|---|
| Cutoffs, empty covers, terminal object | Point, empty target, two points; κ ≤ λ | Empty cover: false/true on point/empty; terminal sections 1; two-point sections 2 at both cutoffs | Empty and terminal remain distinct; unchanged |
| Formal versus analytic sections | Affine line, T = ϖ and ϖ⁻¹ | Formal membership true/false, analytic true/true; residues 0 and undefined for ϖ⁻¹ | Bounds retained; unchanged |
| Strict valuation and specialization direction | π and 1; Spec O | Values < 1 and 1; centre (π), generic-to-special arrow (0) → (π) | The non-strict convention would contain 1; unchanged |
| Plus-ring normalization | B = O⟨z²,πz⟩ | B misses z; integral closure is O⟨z⟩; v(z)² ≤ 1 iff v(z) ≤ 1 | Same bounded valuations with the normalized plus ring; unchanged |
| FS topology and relative generic fibre | O[[q]], O⟨T⟩, q ↦ π and q ↦ 1 | Generic inequalities q < 1, T ≤ 1; substitutions continuous true/false | Continuous structure maps need not be adic; unchanged |
| Connectedness and empty object | Point, empty space | Component counts 1 and 0; preconnectedness true/true, connectedness true/false | Empty tubes do not prove connectedness; unchanged |
| F02 reduction and independence | O_C, a² = p; ideals (p), (a), p = 2,3 | v(a) = v(p)^(1/2); p = a² belongs to both ideals; radicals both m_C; reduced quotients both k_C | Added contract Check; neither ideal imposes noetherianity |
| F02 noetherian restriction | Spf ℤ_p, Spf O_C | Locally noetherian true/false; reductions F_p/k_C; pre-adic affine formulas Spa(ℤ_p,ℤ_p)/Spa(O_C,O_C) | Import carrier; request extension only |
| F02 empty comparison | Zero ring | Reduced quotient 0; formal, reduced and pre-adic point counts 0/0/0 | Added contract Check; no nonemptiness imposed |
| F02 open gluing | Two disjoint copies of Spf O_C | Reduction is two copies of Spec k_C; pre-adic image is two copies of Spa(O_C,O_C); mixed intersections ∅/∅ | Gluing compatibility has the required affine values |
| F01 consumer directions | Base Satake, earlier Shimura, later Part II | Positions 147 < 149; 115 < 149; 149 < 290 | Deleted earlier consumer; three later targets checked |
| D7.1 completed residues | Identity, unramified quadratic, cusp normalization | Degrees 1,2,1; geometric fibre point counts 1,2,1 | Finite universally injective case gives degree 1; general case remains a supplier obligation |
| D7.2 integral stalks modulo pⁿ | ℚ_p point; n = 1,2; p = 2,3 | Both quotients have sizes 2,4 and 3,9; ramified quadratic mod p has size p² versus p | Residue hypothesis distinguishes the negative control; unchanged |
| D7.3 analytic invariance | Identity, cusp, quadratic cover | Inverse-image point counts 1,1,2; first two diamond comparisons invertible, third not | General separation contract is still needed; unchanged |
| D7.4 formal scheme functor | A¹, dual numbers, empty scheme | Sections R⁺; ε = 0; zero sections on nonempty tests | Correct formal convention; unchanged |
| D7.5 minimal point | Spec O, field, empty source | Largest image primes (π), (0), none | Nonempty hypothesis excludes the third; unchanged |
| D7.6 perfect full faithfulness | Spec F_(p²), two F_p-points | Endomorphism counts 2 = 2; maps from one point to two points 2 = 2 | Perfection needed for inverse Frobenius; unchanged |
| D7.7 olivine spectrum | Discrete F_p[[u]], Tate field, F_p | Spa/Spo counts 3/4, 1/1, 1/1; first projection fibres 1,1,2 | Discrete microbial doubling retained; unchanged |
| D7.8 comparison | Same discrete formal pair and Tate point; ℤ_p | Spd/Spo point counts 4/4, 1/1, 2/2 | Homeomorphism claims restricted to specified cases; unchanged |
| D7.9 schematic closed sets | F_p × F_p; ideals 0 and 1 | Zero loci have sizes 2 and 0; 0 is not prime | General open ideal, not open prime; unchanged |
| D7.10 scheme v-covers | Identity, empty family, Spec(K × κ) → Spec V for perfect rank-one V | Lift counts nonzero, 0 over point; last map hits 2 ordinary points but lifts no full generic-to-closed valuation chain | Ordinary surjectivity is insufficient; unchanged |
| D7.11 discrete-source full faithfulness | F_p, F_(p²), nonperfect polynomial source | Ring and sheaf Hom counts 1/1, 2/2; t^(1/p) lies outside F_p[t] | Perfection excludes exotic inverse Frobenius; unchanged |
| D8.1 scheme-theoretic site | Empty, point, perfected line | Representable point counts 0,1; t has a unique p-th root on the perfect line | Nonperfect line is outside the site; unchanged |
| D8.2 underlying space | Point, two points, empty sheaf | Field-point equivalence classes 1,2,0, equal to scheme counts | Quotient construction has intended values; unchanged |
| D8.3 extension of ⋄ | Product of two two-point schemes, swap quotient | Product sections 4 = 4; quotient orbit count 1 = 1 | Finite-limit and colimit directions agree; unchanged |
| D8.4 reduction adjunction | S = Spec F_p, F = Spd ℤ_p or Spd ℚ_p | Adjunction Hom counts 1/1 and 0/0; reductions point/empty | Right-adjoint direction correct; unchanged |
| D8.5 reduced objects | F_(p²), empty, two-point target | Unit preserves two embeddings; empty 0 → 0; Hom counts 2 = 2 | Counit for ℤ_p has point count 1 → 2 and is not invertible; unchanged |
| D8.6 reduction formula | ℤ_p, Tate ℚ_p, F_p[ε]/ε², O_C | Perfected quotient rings F_p, 0, F_p, k_C | Topologically nilpotent unit kills a Tate ring; unchanged |
| D8.7 diamonds' empty reduction | Spd ℚ_p, terminal Spd F_p | Reduction point counts 0 and 1 | Terminal is outside the diamond hypothesis; unchanged |
| D8.8 formal adicness | O⟨T⟩, O[[T]] with (π,T) | Special fibre equals reduction in first; second has π = 0,T ≠ 0 analytic points besides reduction | Pullback condition true/false; unchanged |
| D8.9 adic detection | Same two formal pairs over O | A·I_base contains a power of I_source true/false; formal adicness true/false | Both directions agree; unchanged |
| D8.10 formal closedness/separation | Special point, formal origin, empty sheaf | Closed reduction-square fibres point/point/empty; all required diagonals injective | Completion neighbourhood over discrete affine line has extra analytic points and fails formal adicness; unchanged |
| D8.11 diagonal | Spd ℤ_p; formal affine line | Reduction of each diagonal is identity on the corresponding diagonal locus; ℤ_p reduction fibre 1 point | Formal diagonal matches closed special locus; unchanged |
| D8.12 counit criterion | Spd O, Spd F, identity maps | Counit point counts 1 → 2 and 0 → 1, both injective; identity reduction squares are pullbacks | Does not require a surjective counit; unchanged |
| D8.13 formally closed reduction | A = ℤ_p⟨T⟩, J = (p,T), J = A | Reduced rings F_p and 0, point counts 1 and 0 | Open ideals give closed perfected subschemes; unchanged |
| D9.1 Tate specialization | C with O_C or rank-two C⁺; Gauss point | Source/target point counts 1/1 or 2/2; Gauss centre (0) in k_C[T], T = π centre (T) | Strict inequality and higher ranks retained; unchanged |
| D9.2 formalizing | Spd ℤ_p, Spd ℚ_p, empty | v-formalizing true,false,true; reduction counts 1,0,0 | Empty exception retained; unchanged |
| D9.3 unique formalization | Identity generic map to Spd O_C | Identity integral extension count 1; two extensions would have equalizer containing both generic and special points | Whole equalizer, not just generic equality; unchanged |
| D9.4 specializing | Spd O, Spd F, empty | Predicate true,false,true; reductions 1,0,0 | Formal separatedness alone insufficient; unchanged |
| D9.5 specialization | Spd O; disc T = π or 1 | Two source points both map to unique reduced point; disc coordinate residues 0,1 | Natural specialization agrees with centre; unchanged |
| D9.6 prekimberlite | Spd O, Spd F, empty | Predicate true,false,true; O total point count 2 = 1 analytic + 1 special | Representable reduction alone insufficient; unchanged |
| D9.7 formal-scheme construction | O_C, O[[T]] with (π,T), zero ring | Reduction rings k_C,k,0; O_C analytic/reduced counts 1/1; zero counts 0/0 | Generality preserved; carrier attribution repaired |
| D9.8 formal neighbourhood | Origin in O⟨T⟩; whole reduction; empty | Completions O[[T]], original O⟨T⟩,0; neighbourhoods formal disc,F,∅ | Whole-test-space condition retained; unchanged |
| D9.9 openness | Origin of discrete A¹, whole, empty | Origin neighbourhood has T topologically nilpotent; whole/empty give identity/empty open; origin reduction square misses T ≠ 0 analytic points | Open does not imply formally adic; unchanged |
| D9.10 Heuer sheaf | Perfect affine line at C, point, empty | Values k_C, singleton, empty; ϖ and 0 both map to 0 while 1 maps to 1 | Quotient convention excludes ordinary formal affine line; unchanged |
| D9.11 SP | O, disc T = π or 1, empty | Target of O is singleton; residues 0,1; empty has no sections | Fibre over disc origin is Spd O[[T]], not just one point; unchanged |
| D9.12 completed étale lifts | R⁺ and R⁺ × R⁺[1/ϖ] | Same reduction; completions both R⁺ because second completed factor is 0 | Ordinary lifts not unique; unchanged |
| D9.13 étale neighbourhood | Identity, empty, unramified quadratic | Reduced geometric sheets 1,0,2; lifted generic sheets 1,0,2 | Two-sheet map not an open immersion; unchanged |
| D9.14 equivalence | Same three objects | Reduction/lift sheet counts 1/1, 0/0, 2/2; quadratic automorphism counts 2/2 | Quasicompact separated étale scope retained; unchanged |
| D10.1 arbitrary scheme functors | Infinite affine space, infinite union of Spec O, P¹ | Tuple (ϖ⁻¹,0,…) analytic only; union comparison each identity; P¹ coordinates scale to integral with one unit | Arbitrary domain and locally finite-type openness kept distinct; unchanged |
| D10.2 relative generic fibres | O[[q]], O⟨T⟩ | Both constructions give q < 1, respectively T ≤ 1; π = 0,q ≠ 0 point absent from generic fibre | Whole analytic locus is larger; unchanged |
| D10.3 normal generic fibre | Formal disc, cusp | Disc normalization unchanged; cusp has integral t absent from O⟨t²,t³⟩ and from generic cusp ring | Normality hypothesis separates example; unchanged |
| D10.4 complete-local connectedness | O, O[[q]], O_L unramified degree d, two-branch model | Generic component counts 1,1,1,2; O_L after geometric extension has d | Nongeometric connectedness; unchanged |
| D10.5 classical specialization | T = π, T = 1 | Reduced coordinates 0 and 1 on both formal-scheme and v-sheaf sides | Closed specialization witness agrees; unchanged |
| D10.6 maximal diamond open | Spf O, finite fields F_4/F_9, empty | Maximal open Spd F; finite fields give two geometric sections and one reduced point; empty gives 0 | Residue field is not identified with terminal; unchanged |
| D10.7 generic density | Spf O, π-torsion disc, higher-rank valuation control | Generic point closure has 2 points; torsion generic fibre 0 points; v(π) = (1,0), v(t) = (0,1) makes t < 1 before generic rank-one coarsening and t = 1 after it | Flatness/noetherian scope retained; unchanged |
| D10.8 closed immersion criterion | Special point, identity, empty; rank-two closed point subset | Mono geometric fibres 1,1,0; isolated rank-two closed point has fibre 0 as a subsheaf | Topological closed subset alone insufficient; unchanged |
| D10.9 v-closure | ∅, full object, open disc in closed disc | Closures ∅, full; Gauss belongs to v-closure but not ordinary closure of open disc | Weak generalization essential; unchanged |
| D10.10 specialization triples | q ↦ π+q² and q ↦ 1 on O[[q]] | First sends q into (π,q); second sends it to unit; open-disc image lies inside/outside open disc | Continuity follows only with compatible specialization; unchanged |
| D10.11 formal full faithfulness | Normal disc, cusp, square-zero residue extension | Disc images q ∈ (π,q); cusp normalization iso on v-sheaves but t absent from cusp ring; F_(p²)[q]/q² has two embeddings with q = 0 | Flatness/normality controls retained; unchanged |
| D10.12 proper recovery | Spec O, projective line, projective cusp | Identity lifts uniquely; P¹ generic/special comparison is equality; cusp and its normalization differ as rings but have equal v-sheaves | Normality needed; unchanged |
| D10.13 absolute weak normality | Normal O, cusp, F_p dual numbers | O unchanged; cusp adjoins t with t²,t³ present; dual numbers perfect to F_p | Arbitrary root closure is excluded; unchanged |
| D10.14 flat closure | P = P¹, U = P_F, U = ∅; added vertical reduced point | Closure P,∅; added vertical component contributes special points with zero generic points | Flat closure, not arbitrary same-generic model; unchanged |
| D10.15 local-model application | GL_n, d = 0,n; n = 0 | Grassmannians each Spec O; comparison identity; n = 0 permits only d = 0 | No positive-dimensional cell at rank zero; unchanged |
| D11.1 valuativity | Spf O_C, Spf O, doubled-origin line | First two reduction point counts 1/1 and valuation extensions compatible; doubled-origin reduction has two closed centres for one punctured line | Separated general carrier retained; unchanged |
| D11.2 smelted pairs | Full closed disc, open disc, empty D | Full and open discs satisfy partial properness; empty inclusion does; punctured closed disc loses centre T = 0 under valuative extension | Arbitrary opens not sufficient; unchanged |
| D11.3 kimberlite | Spd O, formal O[[T]], empty | Analytic charts generated by π or by π,T: 1 or 2; empty has 0 nonempty charts | Finitely generated ideal ensures quasicompactness; unchanged |
| D11.4 formal-scheme kimberlite | O_C, O[[T]], zero ring | Analytic/reduced counts 1/1, two charts/one reduced point, 0/0 | Nonnoetherian O_C still included; unchanged |
| D11.5 tube | Disc origin, rank-two field closed point, whole/empty reduction | Origin tube open disc; rank-two fibre size 1 but interior size 0; whole/empty give D/∅ | Tube is interior of fibre; unchanged |
| D11.6 spectral/closed specialization | O, disc | Constant point map: preimage of point whole one-point generic fibre; disc residue map T = π,1 yields centres 0,1 and is surjective | Local spectral convention does not assert global quasicompactness; unchanged |
| D11.7 permanence | Special fibre, empty closed subobject, quadratic étale lift | Analytic locus empty/empty/two generic sheets; reduced point counts 1/0/two geometric sheets | Closed and étale cases give stated structures; unchanged |
| D11.8 cJ | Rank-one point, rank-two field pair, perfected ball, empty | Rank-one patch-density true,false,true,true; rank-two closed-point patch-open has 0 rank-one points | Zariski density cannot replace patch-density; unchanged |
| D11.9 tube density | Disc origin, rank-two field pair | Open disc dense in its full specialization fibre; rank-two closed-point fibre has size 1 and empty tube of size 0 | Second example fails cJ; unchanged |
| D11.10 facets | Point, disc, rank-two field pair | First two facet covers exist, third would force cJ despite patch-open with 0 rank-one points | Characteristic-p base retained; unchanged |
| D11.11 richness | O, empty pair, discrete F_p[T] with D empty | Surjectivity true,true,false; generic/reduced counts 1/1,0/0,0/nonempty | Empty is rich, nonempty reduction with empty D is not; unchanged |
| D11.12 topological normality | Disc, O, two-branch model | Closed tube component counts 1,1,2 | Two branches exclude normality; unchanged |
| D11.13 quotient | O, empty, two disjoint copies of O | Quotient base point counts 1,0,2; each preimage has precisely corresponding open/closed components | Surjectivity and quotient topology both computed; unchanged |
| D11.14 components | O, empty, two branches; punctured infinite valuation chain | Component maps 1 → 1, 0 → 0, 2 → 1; punctured chain has 0 closed points | Unrestricted theorem remains an owned proof obligation; conditional proof not passed off as general |
| D11.15 normal-formal application | O⟨T⟩; degree-d closed point; two branches | Base and generic component counts 1/1; closed-point tube connected over unramified degree-d extension; branch tube count 2 | Perfect residue field suffices here; unchanged |
| D11.16 π-adic structures | O, O[[T]] (π,T), discrete perfect k-algebra, empty | Generic/reduced counts 1/1, extra characteristic-p analytic points/1,0/nonempty,0/0 | Formal adicness fails for (π,T) disc; unchanged |
| D11.17 flatness | O, O_C, nonzero perfect discrete algebra, empty; nonnormal order B | Flat true,true,false,true; B⁺ = O⟨z⟩ and v(z)² ≤ 1 iff v(z) ≤ 1 | General kimberlite input and normalized plus ring retained; unchanged |
| D11.18 triples in 𝒦 | O, empty, two copies of O | Generic, reduced and base-changed specialization component counts (1,1,1),(0,0,0),(2,2,2) | Formalizations count one per prescribed generic section; unchanged |
| D11.19 proper criterion | O, empty, nonzero discrete residue point | Generic density true,true,false; specialization surjectivity true,true,false | Residue point excluded by density; unchanged |
| D11.20 normality from tubes | Normal disc; unramified order A = ℤ_p+pO_L | Disc closed tubes have 1 component; order has A ≠ O_L, one connected tube before base change and d after geometric extension | Algebraically closed residue hypothesis excludes the order; unchanged |

For completeness, the following rows audit the individual API bullets in their README order. T denotes the perfect two-point scheme Spec(F_p × F_p), U = Spd ℤ_p, η = Spd ℚ_p, and s = Spec F_p. A bullet number is its position in that target's property list, not a new target or Lean declaration. All rows retain the existing API; none adds a target.

| API statement | Instances tried | Computed values on both sides | Result / change |
|---|---|---|---|
| D7.4.1 functor | T, identity | Two sections, identity permutation (1,2) | Agree; none |
| D7.4.2 affine values | Affine line at C | Hom(F_p[t],O_C) = O_C | Agree; none |
| D7.4.3 perfection | Dual numbers | ε maps to 0 before and after perfection | Agree; none |
| D7.4.4 limits | T × T | 4 sections = 2 × 2 | Agree; none |
| D7.4.5 opens | t = 1,ϖ on D(t) | Unit test true,false on both sides | Agree; none |
| D7.4.6 closed immersions | Origin in line | t = 0 locus has one section | Agree; none |
| D7.4.7 parent comparison | Discrete F_p | Both give one section | Agree; none |
| D7.7.1 functorial space | Identity of discrete F_p[[u]] | Identity on 4 olivine points | Agree; none |
| D7.7.2 projection | Same ring | Fibre sizes 1,1,2 sum to 4 over 3 points | Surjective; none |
| D7.7.3 classical locus | b₁ = u,b₂ = 1 | Both projections impose v(u) ≤ 1; all four points satisfy it | Agree; none |
| D7.7.4 analytic locus | Tate C, b₁ = ϖ,b₂ = 1 | N is whole singleton; N_(1≪1) empty | Open in both cases; none |
| D7.7.5 fibres | Discrete F_p[[u]] | One doubled fibre and two singleton fibres | Agree; none |
| D7.7.6 Tate case | C,O_C | Point count 1 → 1 | Homeomorphism; none |
| D7.7.7 completion | Already complete Tate C | Completion C; both counts 1 | Agree; none |
| D7.7.8 bounded locus | Tate C,O_C | For b = ϖ⁻¹, N_(1≪b) whole singleton; bounded locus empty | Complement formula agrees; none |
| D8.1.1 category | T and s | Two maps s → T | Yoneda values agree; none |
| D8.1.2 subcanonicity | T and s | Scheme and representable Hom counts 2/2 | Agree; none |
| D8.1.3 cutoff extension | T at κ < λ | Both evaluations have two sections | Direction agrees; none |
| D8.1.4 sectionwise limits | T × T | 4 = 2 × 2 sections | Agree; none |
| D8.2.1 space functor | Swap of T | Both swap the two point classes | Agree; none |
| D8.2.2 scheme comparison | T, empty | Point counts 2/2,0/0 | Agree; none |
| D8.2.3 quotient | T → s | Relation has 4 pairs; quotient has one class | Agree; none |
| D8.2.4 surjections | T → s | 2 → 1 on both field classes and spaces | Surjective; none |
| D8.3.1 extension functor | T | Two sections before/after ⋄ | Agree; none |
| D8.3.2 representables | T | Both give Spd(F_p × F_p) | Two sections; none |
| D8.3.3 finite limits | T × T | 4 = 4 sections | Agree; none |
| D8.3.4 colimits | Two copies of s; swap quotient | Coproduct has 2 sections; quotient 1 orbit on both sides | Agree; none |
| D8.4.1 reduction functor | U,η | Reduction counts 1,0 | Matches formula; none |
| D8.4.2 adjunction | Maps from s to U^red and η^red | Hom counts 1/1 and 0/0 | Direction agrees; none |
| D8.4.3 section formula | U on Spec F_(p²) | Reduction maps and v-sheaf sections each singleton | Agree; none |
| D8.4.4 limits | U × U | Reduced product s × s = s | Point count 1/1; none |
| D8.4.5 counit | U | Special point maps to special point, 1 → 2 on spaces | Not generic point; none |
| D8.4.6 unit | T | Unit sends two points identically to two points | Invertible; none |
| D8.5.1 reduced predicate | T | Unit is identity on 2 sections | True; none |
| D8.5.2 perfect representables | Spec F_(p²) | Unit preserves two embeddings | True; none |
| D8.5.3 Hom equivalence | G = s,F = T | 2 maps = 2 maps | Agree; none |
| D8.5.4 finite limits | T × T | Unit identity on 4 sections | Reduced; none |
| D8.8.1 pullback predicate | U identity, formal two-parameter disc over U | Point reduction square pulls back identically; disc special fibre contains T ≠ 0 | True/false as expected; none |
| D8.8.2 composition | Special point → U → U | Composite reduction fibre s | Formally adic; none |
| D8.8.3 base change | Special point in U pulled back to η | Both source and reduced pullback empty | Agree; none |
| D8.8.4 isomorphisms | Identity U | Square identity on s | Formally adic; none |
| D8.8.5 subsheaf formula | Special point → U | U special pullback is s^⋄ | Equality, one special section; none |
| D8.8.6 naturality | U identity | Both counit composites select special point | Equal; none |
| D8.10.1 formally p-adic | U, Spd ℤ_p[[T]] (p,T) | Formal-adic truth values true,false | Predicate separates them; none |
| D8.10.2 formally closed | s^⋄ → U | Closed special singleton; reduction map identity s | Both clauses hold; none |
| D8.10.3 formal diagonal | U | Reduced diagonal is identity s → s | Formally closed; none |
| D8.10.4 composition | Empty → s^⋄ → U | Composite empty, reduced source empty | Formally closed; none |
| D8.10.5 base change | s^⋄ → U along η | Pullback empty | Formally closed; none |
| D8.10.6 separation | U | Diagonal geometric fibres 0 or 1 | Separated; none |
| D8.10.7 closed subobject | s^⋄ ⊂ U | Special diagonal identity on one section | Formally separated; none |
| D9.1.1 centre map | π,1 in O_C | Values < 1,1; centre m_C | Correct strict ideal; none |
| D9.1.2 prime centre | Same | π belongs,1 does not; O_C/m_C = k_C field | Prime and contains topologically nilpotent elements; none |
| D9.1.3 principal opens | a = 1,π | D(1) preimage whole; D(π) preimage empty | Equals value-one locus; none |
| D9.1.4 surjectivity | C,O_C | 1 point → 1 point | Surjective; none |
| D9.1.5 spectral closed map | Rank-two C⁺ | Two-point spaces mapped bijectively with same specialization order | Closed and spectral; none |
| D9.1.6 naturality | T ↦ π,1 from closed disc to C | Ring reduction and specialization each give T ↦ 0,1 | Equal; none |
| D9.1.7 disconnected perfectoid case | Two copies of C,O_C | Two isolated points → two isolated points | Homeomorphism; none |
| D9.2.1 formalization | Identity η → U | ℤ_p integral extension is identity | One extension; none |
| D9.2.2 v-local formalization | Same, identity cover | One cover and one extension | True; none |
| D9.2.3 formal presentation | U | Single formal pair ℤ_p gives identity surjection | True; none |
| D9.2.4 equivalence | U,η,empty | Both predicates true,false,true | Agree; none |
| D9.2.5 formal pair | ℤ_p,0 | Formalizing true,true; empty has no nonempty-source maps | Includes empty; none |
| D9.2.6 surjective images | U ⨿ U → U | Two formal copies give one covered object | Formalization descends v-locally; none |
| D9.2.7 reduction nonempty | U and empty | Reduction counts 1,0; nonempty hypothesis true,false | No false empty implication; none |
| D9.4.1 specializing predicate | U,η | Formal-separated/formalizing pairs (true,true),(true,false) | Predicate true,false; none |
| D9.4.2 fibre products | U ×_U U | Result U, reduction s | Specializing; none |
| D9.4.3 formal pairs | ℤ_p,0 | Specializing true,true | Includes empty; none |
| D9.4.4 uniqueness | η → U | One prescribed untilt extends to one integral untilt | At most one; none |
| D9.5.1 map | U | Both points go to one point | Constant continuous map; none |
| D9.5.2 analytic restriction | U analytic point | Centre (p), same as Tate specialization | Equal; none |
| D9.5.3 naturality | Identity U, T ↦ π on disc | Both composites give special point, respectively T = 0 | Equal; none |
| D9.5.4 continuity | U | Inverse images of ∅ and whole s are ∅ and whole U | Open; none |
| D9.5.5 special restriction | s^⋄ ⊂ U | Unique special point maps identically to s | Equal; none |
| D9.6.1 defining clauses | U | Reduction s, closed special inclusion, formalizing true | All clauses; none |
| D9.6.2 analytic locus | U | Complement of special point is η | Open singleton; none |
| D9.6.3 representing scheme | U | Scheme s, perfect Frobenius identity | Correct; none |
| D9.6.4 counit | U | s^⋄ → U reduction is identity s | Formally closed; none |
| D9.6.5 partition | U,empty | 2 = 1+1; 0 = 0+0 points | Agree; none |
| D9.8.1 subsheaf | Disc origin | Formal completion O[[T]] selects topologically nilpotent T | Excludes T = 1; none |
| D9.8.2 base change | Disc T ↦ π and T ↦ 1 from U | Pullback neighbourhood U and ∅ | Same as reduced preimages of origin; none |
| D9.8.3 factorization criterion | Same two prekimberlite maps | Factorization true,false; reduced factorization true,false | Both directions; none |
| D9.8.4 reduction | Origin formal neighbourhood | Reduced ring k | Point as specified; none |
| D9.8.5 completion formula | J = (π,T) in O⟨T⟩ | Completed ring O[[T]] on both sides | Agree; none |
| D9.8.6 whole reduction | S = A¹_k^perf | No new ideal condition; neighbourhood F | Identity; none |
| D9.10.1 sheaf | Affine perfect line at C | Value k_C | Correct quotient value; none |
| D9.10.2 affine formula | Same | Hom(k[t^1/p^∞],k_C) determined by element of k_C | Agree; none |
| D9.10.3 reduction | X = T | Reduction has two geometric sections | Equals T; none |
| D9.10.4 limits and opens | T × T; open component of T | Section counts 4 and 1 before/after functor | Agree; none |
| D9.10.5 transformation | Affine line, T = ϖ,1 | Images 0,1 in k_C | Quotient map; none |
| D9.10.6 formalization of values | Totally disconnected test Spa(C,O_C) | Analytic and integral test values both k_C | Agree; none |
| D9.11.1 transformation | Disc T = π,1 | Values 0,1 in residue line | Correct; none |
| D9.11.2 underlying map | U | Both maps send generic and special points to s | Equal; none |
| D9.11.3 neighbourhood pullback | Disc origin | SP condition T mod m_C = 0, completed formal neighbourhood O[[T]] | Same formalization condition; none |
| D9.11.4 separation | U → terminal | Diagonal is separated diagonal of U | Fibres 0 or 1; none |
| D9.11.5 naturality | Map q ↦ π into formal disc | Both reductions send q to 0 | Equal; none |
| D9.13.1 category | Identity U and quadratic unramified lift | Identity and composition preserve 1 or 2 sheets | Closed under composition; none |
| D9.13.2 pullback construction | V = Spec F_(p²) over s | Lift Spd W(F_(p²)), two geometric sheets | Expected unramified lift; none |
| D9.13.3 reduction | Same | Reduced ring F_(p²) | Equals V; none |
| D9.13.4 morphisms | Automorphism of quadratic lift | Frobenius permutes two sheets, reduction does same | Quasicompact, separated étale and formally adic; none |
| D9.13.5 open case | One component of T | Lift one component of two formal copies | Open formal neighbourhood; none |
| D10.1.1 functoriality/gluing | Infinite union of Spec O | Each component gives U; overlap of distinct components empty | Glues on both functors; none |
| D10.1.2 supplier restriction | A¹_O | Both analytic formulas Hom(O[T],R^♯) = R^♯ | Agree; none |
| D10.1.3 completion comparison | A¹_O | Formal sections R^♯⁺, completion O⟨T⟩ | Same continuous maps; none |
| D10.1.4 adic realization | A¹_O | Analytic coordinate in R^♯ on both sides | Agree; none |
| D10.1.5 natural comparison | A¹, T = ϖ,ϖ⁻¹ | Inclusion permits first and excludes second in domain | Correct direction; none |
| D10.1.6 mono | Same line | Each integral tuple has one image as analytic tuple | Injective; none |
| D10.1.7 open | Infinite union of Spec O | Union of identity opens U → U | No quasicompactness needed; none |
| D10.1.8 proper iso | P¹_O | A pair of field coordinates scales to integral pair with a unit | Same projective point; none |
| D10.9.1 closed closure | Special point in U | Closure special singleton | Closed subobject; none |
| D10.9.2 inclusion | Same | Singleton included identically in singleton | Agree; none |
| D10.9.3 minimality | ∅ and whole U | Least containing closed subsets ∅ and U | Correct extrema; none |
| D10.9.4 weak generalization | Rank-two field closed point subset | Closed point in subset, generic point absent | Predicate false; none |
| D10.9.5 images | Identity of rank-two field space | Both points included | Weakly generalizing true; none |
| D10.9.6 classification | U special singleton | Closed subsheaf special locus, matching singleton weakly generalizing set | Agree; none |
| D10.9.7 point formula | Y = η ⊂ U | Ordinary and weakly generalizing closure both whole U, two points | Agree; none |
| D10.9.8 base change | η ⊂ U pulled back along open partially proper η → U | Closure on pullback η; full-U closure restricted to η also η | Agree; none |
| D11.1.1 partial properness | U | Unique integral extension of a compatible untilt | Valuative value one; none |
| D11.1.2 general formal input | Spf O_C | Analytic/reduced counts 1/1; formal image has both points | Nonnoetherian example retained; none |
| D11.1.3 partially proper source | Special fibre s^⋄ → U | Source analytic empty, reduced singleton | Valuative; none |
| D11.1.4 neighbourhoods | Disc origin; unramified quadratic | Formal disc; two-sheet unramified lift | Each valuative, not inferred merely from arbitrary open inclusion; none |
| D11.1.5 specializing map | U | Both points specialize to the one reduced point | Every base specialization lifts; none |
| D11.2.1 pairs | (U,η),(U,∅) | Analytic counts 1,0 | Both smelted; none |
| D11.2.2 restriction | (U,η) | Restricted map 1 → 1 | Same constant map; none |
| D11.2.3 full analytic choice | U | U^an = η | One-point locally spatial analytic object; none |
| D11.2.4 relative generic choice | U over U | U ×_U η = η | Same pair; none |
| D11.2.5 naturality | Identity (U,η) | Both component maps 1 → 1 identity | Equal; none |
| D11.3.1 kimberlite clauses | U | Valuative true, smelted true, sp one-point quasicompact | True; none |
| D11.3.2 spatial preimages | U,empty | Preimage of affine reduction is η or ∅ | Spatial true,true; none |
| D11.3.3 full pair | U | (U,U^an) = (U,η) | Same object; none |
| D11.5.1 fibre product | Disc origin | Generic fibre of O[[T]] is open disc | Same tube; none |
| D11.5.2 smelted neighbourhood | Same | Pair formal open-disc model/open disc | Partial properness retained; none |
| D11.5.3 interior | Rank-two field closed point | Full fibre has 1 point; interior and tube 0 points | Agree; none |
| D11.5.4 open inclusion | Disc origin | Tube locus T topologically nilpotent; T = π in,T = 1 out | Open; none |
| D11.5.5 base change | Disc T ↦ π and T ↦ 1 from U | Generic tube pullbacks η and ∅ | Same as reduced-centre pullback; none |
| D11.8.1 patch density | Rank-one point, rank-two pair | Rank-one patch-open counts 1 versus 0 at closed point | True/false; none |
| D11.8.2 images | Two rank-one points → one | 2 → 1; rank-one target subset whole | Dense; none |
| D11.8.3 opens | One component of two rank-one points | One rank-one point remains | Dense; none |
| D11.8.4 étale permanence | Quadratic finite étale field extension | One rank-one point before geometric split; two rank-one points after | Dense in both; none |
| D11.8.5 profinite torsors | Trivial S₃- and C₂-torsors over a rank-one point | Total spaces 6 and 2 rank-one points; quotients each 1 | Nonabelian and cyclic controls agree; none |
| D11.8.6 finite-type adic source | Closed disc | Classical points T = π,1 give rank-one centres 0,1 | Distinct residue opens contain rank-one points; none |
| D11.8.7 nonempty patch-open | Singleton rank-one space; rank-two closed singleton | Rank-one counts 1 and 0 | Second fails cJ; none |
| D11.10.1 cover definition | C point and disc | Identity tft facet covers have 1 member each | Meets definition; none |
| D11.10.2 field extension | C → C' on point | C completed tensor C' = C' | Still one-point facet; none |
| D11.10.3 products | Point × point; disc × disc over C | C; C⟨T₁,T₂⟩ | Still tft; none |
| D11.10.4 cJ implication | Point, rank-two pair | Patch rank-one counts 1,0 at respective singleton opens | Second cannot have facets; none |
| D11.10.5 smooth untilt | Smooth point C^♯ | Diamond tilts to point over C | One C-facet suffices; none |
| D11.11.1 richness clauses | (U,η), discrete F_p[T] with D empty | Reduced nonempty; specialization surjectivity true,false | Rich/not rich; none |
| D11.11.2 full analytic pair | U | η = U^an, both richness predicates true | Agree; none |
| D11.11.3 surjectivity | (U,η),empty | Component maps 1 → 1 and 0 → 0 | Both surjective; none |
| D11.11.4 formal neighbourhood | Origin of formal disc | Open disc maps onto unique reduced origin | Rich; none |
| D11.11.5 étale neighbourhood | Quadratic unramified lift | Generic and reduced geometric sheet counts both 2 | Rich; none |
| D11.12.1 topological normality | O; two-branch model | Closed tube component counts 1 and 2 | True/false; none |
| D11.12.2 tube connectedness | Same | Nonempty preconnected true/false | Matches counts; none |
| D11.12.3 closed-point neighbourhood | Origin in normal formal disc | Tube remains same connected open disc | Component count 1/1; none |
| D11.16.1 π-adic prekimberlite | U; (p,T)-adic formal disc | Formal adicness true,false | Exact restriction; none |
| D11.16.2 kimberlite clauses | U | Generic η spatial; sp 1 → 1 quasicompact | True; none |
| D11.16.3 prekimberlite equivalence | U and formal two-parameter disc | Both sides true,false | Agree; none |
| D11.16.4 kimberlite equivalence | Same | Both sides true,false | Agree; none |
| D11.16.5 fibres | U; discrete perfect residue point | Analytic/generic η/η and ∅/∅; reduced diamond/special both s^⋄ | Equal; none |
| D11.16.6 triples functor | Identity U | Triple identity on η,s and constant specialization | Commuting square; none |
| D11.16.7 closed specialization | U,empty | Images singleton and empty, both closed | Closed; none |
| D11.17.1 flat cover | Spd O_C | Identity Spd of integral perfectoid ring | One-member v-cover; none |
| D11.17.2 integrally closed case | O_C | Integral closure in C is O_C | Flat cover as above; none |
| D11.17.3 finite-type case | O itself | π-adic completion O, generic/reduced counts 1/1 | Flat; none |
| D11.17.4 surjectivity | Spd O_C,empty | Maps 1 → 1,0 → 0 | Surjective; none |
| D11.17.5 proper converse | U, nonzero discrete residue point | Proper; specialization surjectivity true,false; flatness true,false | Controls agree; none |

The three added contract Checks are prose only. In the O_C computation, for every x with 0 < v(x) < 1, some power xⁿ has v(xⁿ) ≤ v(p), so √(p) = m_C; √(a) = m_C follows from a² = p. The two ideals define equivalent topologies because (a)² = (p). These calculations hold at p = 2 and p = 3 and do not assert that O_C is a DVR. In a nonzero rank-one perfect characteristic-p valuation ring the value group is p-divisible, so the valuation-ring controls do not silently use a nonfield perfect DVR.

## Pinned carriers and acceptance-file audit

The manifest pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Searches used those package sources, by object as well as by proposed names. Native facts used by the Checks include:

- `Mathlib/RingTheory/Valuation/Integers.lean`, lines 32, 386–412: the integer subring and strict-inequality ideal; bounded subrings use comap. The π/1 witness excludes a unit from the ideal.
- `Mathlib/FieldTheory/Perfect.lean`, line 44: `PerfectRing` asserts bijectivity of a power map; characteristic and primality are separate assumptions.
- `Mathlib/Topology/Defs/Induced.lean`, lines 166–168: quotient maps include surjectivity and the coinduced topology, without separation or compactness hypotheses.
- `TauCeti/AlgebraicGeometry/AdicSpace/Spa/Basic.lean`, line 101: the valuation spectrum imposes continuity and bounds on the selected subring. It does not itself assert Huber-ring or integral-element hypotheses.
- `TauCeti/AlgebraicGeometry/AdicSpace/Spa/Analytic.lean`, line 72: analytic means non-open support. This is why π = 0,T ≠ 0 can be analytic on the (π,T)-adic formal disc.
- `TauCeti/RingTheory/Huber/LocalizationTopology/Laurent/Flat.lean`, line 804: the flat localization theorem retains its ring hypotheses and denominator-power data; the noetherian-definition extension remains a supplier gap.

No formal-scheme, perfectoid-v-site, small-v-sheaf, prekimberlite or kimberlite carrier was found at the pins. Native schemes and pre-adic carriers do not make the listed headlines statable. `Suggested.lean` retains its 23 headline entries and their precise missing carriers; it has exactly one import, `Mathlib`, and no declarations. The mechanical declaration scan returned an empty list. Consequently the requested `#check @name` binder comparison has zero names; the corresponding empty audit module, importing Mathlib, was elaborated once with exit status 0 and no output. There is no declaration type or silently dropped binder to repair. There are no added, renamed or deleted Lean names and no acceptance-file padding. The F02 distinction is between an existing roadmap carrier and a missing pinned-library carrier, so the acceptance docstring remains accurate.

## Check outcomes

- Required elaboration: ran `lake env lean` on `packages/DiamondsAndVStacksPartII/Suggested.lean` from the supplied content checkout, using the absolute argument required by the brief. Exit status 0, no output or warnings. No TauCeti imports occur, so no module build was needed. No Lean process remains running.
- Required dependency command: exit status 0 on both runs; initial and final exact outputs, respectively:

```text
depcheck: 55 roadmaps, 622 edges, 0 problem(s)
depcheck: 56 roadmaps, 640 edges, 0 problem(s)
```

  There is no UPWARD, CYCLE or moved line. The independent consumer-direction computation above also checks the edge that the parser does not extract from consumer prose.
- Citation resolver: exit status 0; one already-declared ArcTopologyAndDescent lead, no missing Lean names. Its warning that it did not check pins was addressed by direct inspection of the supplied pinned sources above.
- `git diff --check`: exit status 0, no output.
- JSON scope check: all plan data outside the top-level gaps list compare equal to HEAD. Exactly one gap changed, finite-ideal-formal-schemes; all 15 gap slugs agree with the 15 README contracts. Supplier and section are unchanged. The README still has 73 target subsections; the adversarial tables have 73 target rows and 166 individually computed API rows.
- Manifest audit: all eight existing sources are certified and present in the supplied cache. No new citation key, source fetch, missing-reference request, metadata change or gate-failure repair was needed. The brief listed no separate gate failures.

The maintainer need not update downstream declaration names: none changed. AdicSpacesPartIII's outstanding contract is smaller; no edit to its roadmap or the merge order is claimed. D10.12 and D10.14 keep their statements and are now attributed to the later design targets that explicitly consume them. The unrestricted D11.14 theorem and other previously declared supplier obligations remain part of the programme; an elaboration success does not discharge those mathematical obligations.
