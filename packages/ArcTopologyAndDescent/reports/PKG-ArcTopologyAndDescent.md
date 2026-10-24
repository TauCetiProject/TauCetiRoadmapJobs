# ArcTopologyAndDescent package report

The package consists of `packages/ArcTopologyAndDescent/README.md`, `packages/ArcTopologyAndDescent/Suggested.lean`, `packages/ArcTopologyAndDescent/metadata.toml` and `packages/ArcTopologyAndDescent/sources.toml`. The README has thirteen layers, an Examples and Dependencies subsection in every layer, and eighty-four numbered subsections. Of ninety-six design targets, eighty-two retain separately numbered target content here; fourteen primary constructions are consumed from exact existing owners. Retained parts of their APIs and other partial overlaps are itemized below. The added §§0.7 and 10.0 expose a proof input and the few native predicates needed by the acceptance signatures. All design Checks and layer examples are retained, with checks of supplied definitions moved into layer examples. No API catalogue was added to Lean.

The separate `design/review.json` and earlier reports were absent from the provided package. The accepted review is embedded in `design/plan.json`; its notes and all eight source issues were read. A skeleton was generated from all ninety-six nodes before prose editing, retaining statements, hypotheses, proof inputs, APIs, Checks, acceptance clauses, locators and uses. The only changed design field is the top-level `gaps` list; semantic equality of every other field was checked mechanically, and the bytes outside that list were preserved by a list-only replacement.

## Headline theorem selection and statability

The headline list was saved before writing the acceptance file. The four stated signatures use native carriers and five real-bodied simple predicates; every other headline is named in the module docstring with the missing carrier. Supplied torsion/constructible arc-descent and perfectoid basis/structure-sheaf results are not claimed as new headlines.

| Headline | Acceptance status | Carrier or missing input |
| --- | --- | --- |
| Affine arc-covering iff universal module injectivity after rank-at-most-one valuation base change | Stated: `TauCetiRoadmap.ArcTopologyAndDescent.arc_affine_purity` | Native ring homomorphisms, valuation domains, tensor products and modules; the simple lifting predicate `IsRingArcCover`. |
| Arc-covers of qcqs schemes iff universal spectral submersions | Stated: `TauCetiRoadmap.ArcTopologyAndDescent.arc_spectral_characterization` | Native schemes and pullbacks; the simple `IsSchemeArcCover` lifting predicate; surjectivity and compact-open reflection after every qcqs base change. |
| Finitary v-sheaf arc-descent iff Milnor excision iff aic valuation excision, with rank-one equivalence detection | Not statable at the pins | Coherent infinity-categories, cotruncated mapping spaces, the general scheme v/arc sheaf categories and coherent augmented totalizations. Ordinary categories with chosen limits would change the statement. |
| Unrestricted Milnor excision for all small-limit-valued arc-sheaves | Not statable at the pins | The coherent arc-topos and sheafified representable pushouts, with coherent space-valued and general-target sheaves. |
| Formal glueing for all small-limit-valued arc-sheaves | Not statable at the pins | The same coherent sheaf categories and actual formal-glueing comparison maps on their open complements. |
| Arc-descent of separated qcqs étale objects and constructible finite-set étale sheaves | Not statable at the pins | The general constructible finite-set category, qcqs étale algebraic-space carrier and coherent categorical descent functor. A finite-étale-only substitute was not stated. |
| Characteristic-zero h-differential and h-de Rham arc-descent | Not statable at the pins | The h-form cohomology functor, its coherent finitary extension and filtered enhancement; naive Kähler forms on singular rings would be false. |
| Perfect-complex arc-hyperdescent on perfections and universal effective epimorphisms | Not statable at the pins | Coherent symmetric monoidal Perf, scheme perfection and the algebraic-space reconstruction interface. Direct perfection of rings alone does not provide these carriers. |
| Arbitrary-parameter completed-generic-fibre hyperdescent and Künneth | Not statable at the pins | Complete sites, coherent derived étale section functors and compatible monoidal/completed-tensor totalizations. Degree-zero Hom or scalar tensor identities would be weaker substitutes. |
| Affinoid arbitrary-torsion vanishing above d+1 | Stated: `TauCetiRoadmap.ArcTopologyAndDescent.affinoid_artin_grothendieck` | Native finite Tate presentations, the affine-basis torsion predicate, small étale sheaves and `CategoryTheory.Sheaf.H`. |
| Affinoid residue-invertible prime-power torsion vanishing above d | Stated: `TauCetiRoadmap.ArcTopologyAndDescent.affinoid_artin_grothendieck_prime_to_residue` | The same carriers with explicit primality, prime-power torsion and the exact norm-one residue-invertibility hypothesis. |
| Completed, henselian and punctured étale finite-ideal complete-arc hyperdescent | Not statable at the pins | The finite-ideal complete-arc site and its completed/punctured derived-section and hypercover functors. |
| Integral perfectoid, tilt and A_inf complete-arc hyperdescent | Not statable at the pins | The integral perfectoid category with complete-arc hypercovers and the coherent derived section maps. Native Witt vectors or a tilt construction alone would not suffice. |

## Ownership and duplication sweep

The content checkout is main `72d2b66ff21616da10318efb2acda19311dae82a`. The manifest pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, rather than the older design snapshot. The two active reference shapes read were RestrictedPowerSeries and EtaleCohomologyFoundations; the completed reference was `Completed/AlgebraicCodingTheory/README.md`.

Object searches used `roadmaps list`, `roadmaps grep` and `roadmaps show`, against the initial indexed 331 open roadmap heads and main, with a final ownership sweep against the refreshed 332-head index. The final resolver uses index main 66576b6; the supplied content checkout remains the clean main snapshot recorded above. ArithmeticKTheory was reread at its refreshed head, and no supplier or ownership claim changed. All sixteen supplier texts reloaded for the final citation pass are byte-identical to those used in the mathematical audit. Existing-roadmap revisions were read on main; new roadmap folders were read at their indexed heads. The named open-roadmap set was included in these searches. Searches also covered the board package design/README files and both pinned library trees. Objects searched included valuation extensions and intervals, absolute integral closure, Milnor squares, spectral submersions and limits, Boolean/ultraproduct sheaves, h/arc/complete-arc sites, constructible and perfect complexes, henselian/punctured and analytic comparisons, almost integrality and affinoid cohomological dimension. The board index names SchemeAndStackFoundationsPartII but supplies no local target file for its proposed Tannaka extension; no unseen board pull-request head was treated as a supplier. Ownership against such unavailable board pull-request files was not checked.

The following primary constructions are assigned to their exact owners and do not remain as numbered construction targets in the README:

| Design section and object | Exact owner consumed |
| --- | --- |
| §0.2 Extensions of valuation rings | ClassicalAdicEtaleCohomology §6.1 |
| §1.2 Scheme v-covers and refinements | PrismaticCohomology §2.0 |
| §2.1 Arc-covers of schemes | PrismaticCohomology §2.0 |
| §2.6 Spectral submersions | DiamondsAndVStacks §§D0.11–D0.12 |
| §6.3 Torsion étale cohomology is a finitary v-sheaf | PrismaticCohomology §2.0 |
| §6.4 Arc-hyperdescent of torsion étale cohomology | PrismaticCohomology §2.0 |
| §7.1 Continuity of bounded constructible complexes | EtaleCohomologyFoundations §§0.5–0.6 |
| §7.2 v-hyperdescent of constructible complexes | PrismaticCohomology §2.0 |
| §8.2 Degree-zero comparison for arbitrary henselian pairs | SchemeAndStackFoundations §2.15 |
| §8.3 Gabber–Huber affine proper base change | SchemeAndStackFoundations §2.15 |
| §9.6 Proper rigid GAGA for torsion étale cohomology | ClassicalAdicEtaleCohomology §2.5 |
| §10.4 Prime-to-residue-characteristic valuation base change | ClassicalAdicEtaleCohomology §6.3 |
| §12.1 A perfectoid basis of the formal arc-site | PrismaticCohomology §2.0 |
| §12.3 Perfectoid structure-sheaf descent and acyclicity | PrismaticCohomology §2.0 |

Partial removals and retained differences:

- §1.6 imports proper/open finite-presentation refinement from PrismaticCohomology §2.0 and retains affine v-cover approximation. The source's directly used refinement has affine target.
- §2.6 imports the spectral-submersion construction and retains its universal v-locality API as explicit source- and target-local statements in §2.7, proved using §1.7 quotientness before the arc characterization.
- §2.2 imports basic v-to-arc inclusion and retains noetherian-target equality and the rank-one base-change comparison. The explicit rank-cutting operation from the former extension API is retained in its proof.
- §3.7 imports the infinite-chain/non-quotient existence theorem from DiamondsAndVStacks §D0.12 and retains the affine rank-one-component obstruction. Its explicit infinite-chain witness remains in Layer 2 Examples.
- §3.8 imports the ordinary Set/Ab Boolean-sheaf theorem from DiamondsAndVStacks §D0.22 and retains the compactly generated infinity-categorical, ring-functor and base-changed variants.
- §7.3 imports global constructible arc-hyperdescent from PrismaticCohomology §2.0 and retains the finite valuation-chain category, shared-vertex gluing and the finite-Tor distinction. Constructible continuity in former §7.1 is entirely supplied by EtaleCohomologyFoundations §§0.5–0.6.
- §8.6 retains unrestricted small-limit-valued formal glueing; the torsion specialization is supplied by PrismaticCohomology §2.0. Section 8.8 retains the generic rigid derived-functor version, beyond the supplied torsion comparison.
- §§9.1–9.5 retain arbitrary-parameter covers, equivalences and cohomology, extending the p-parameter input of PrismaticCohomology §2.0.
- §9.7 consumes ordinary `IsAlmostIntegral`, `completeIntegralClosure` and their noetherian criterion from Mathlib, and retains uniform powers of a fixed regular parameter in its localization. An arbitrary nonzerodivisor denominator is a different condition; no general complete-integral-closure API is duplicated.
- §11.3 imports the formal site itself from PrismaticCohomology §2.0 and retains the affine comparison with finite-ideal complete covers and the exact-rank-one/rank-zero boundary calculation.
- §12.7 uses the supplied A-valued structure-sheaf acyclicity and proves the complete-hypercover comparisons together with the tilt and A_inf compatibilities. It introduces no second integral perfectoid carrier or structure presheaf.

The noetherian support K-theory completion square, finite inductive level, perfect-ring Tor vanishing, perfect valuation decomposition and perfect-complex v-hyperdescent were already excluded from ownership in the accepted design. They remain supplier inputs and were not reintroduced. Neutral Tannakian duality in representation-theoretic roadmaps does not supply algebraic-space Perf reconstruction. This is why the exact SchemeAndStackFoundations gap remains necessary.

No later roadmap is consumed. No new object was moved from a later registered roadmap: the implicit characteristic-zero valuation smooth-approximation argument is now an explicit §0.7 theorem based on the earlier resolution supplier, while the unregistered proposed Tannaka Part II is replaced by a gap on the existing earlier SchemeAndStackFoundations §1.4. Downstream application prose creates no reverse dependency on this package.

## Supplier gaps and support limits

The six contracts below occur verbatim as mathematical Needs sentences under the appropriate supplier subsection of the README and as `slug`, `needs`, `supplier`, `section` entries in the plan's sole edited list. They are requirements on their existing owners, not sorry-valued stand-ins.

| Slug | Supplier section | Exact requirement |
| --- | --- | --- |
| coherent-topos-pushouts | SchemeAndStackFoundations §2.3 (coherent-site extension) | For coherent sites, supply the representable coherence and quasi-compact relation criteria, Deligne enough points and coherence of pushouts along coherent monomorphisms used in the bounded arc-topos argument. |
| algebraic-space-perf-tannaka | SchemeAndStackFoundations §1.4 (algebraic-space reconstruction extension) | For every qcqs algebraic space Y and every algebraic space X, supply the natural reconstruction equivalence Hom(X,Y)≃Fun^⊗_exact(Perf(Y),Perf(X)) with coherent symmetric monoidal functors and all pullback compatibilities. |
| constructible-etale-space-descent | SchemeAndStackFoundations §§1.2–1.10 | Over arbitrary qcqs schemes, supply effective descent of qcqs étale algebraic spaces along universally submersive qcqs maps and the equivalence of these spaces with constructible finite-set étale sheaves, retaining separated schemes as a distinguished subcategory. |
| affine-characteristic-primary-cohomology | EtaleCohomologyFoundations §F.3 | For every affine scheme in characteristic p>0, arbitrary p-primary torsion étale sheaves have zero cohomology above degree one, with the bound zero for zero-dimensional finite-type schemes over a separably closed field, compatibly with filtered coefficient colimits. |
| perfectoid-tate-constant-comparison | ClassicalAdicEtaleCohomology §§2.5–2.6 | For every p-complete integral perfectoid A and every n≥1, supply the natural constant Z/p^n cohomology comparison between Spec A[1/p] and Spa(A[1/p],A), compatible with perfectoid étale tilting and open restriction. |
| bounded-torsion-punctured-approximation | AdicEtaleGeometry §A1.0.5 | Extend henselian finite étale approximation to a-henselian rings with bounded a-power torsion on every open containing D(a), and to complements of finitely generated ideals in noetherian henselian pairs, compatibly with restriction and finite affine-open descent. |

The README does not claim implementations of these supplier extensions, a blanket equivalence of scheme and adic étale sites, arbitrary-ring ordinary/derived completion agreement, rank-one preservation of ultraproduct components, D_qc hyperdescent, arbitrary-space contractibility detection, or the stronger all-torsion bound d in mixed characteristic. Each unsupported stronger assertion is cut or explicitly separated by hypotheses. The characteristic-primary affine contract is stated in the general arbitrary-sheaf form, rather than restricted to the constant coefficients used in the rational-domain application.

## Mathematical and bibliographic corrections

The eight accepted source corrections are all retained, with the following computed controls:

| Correction and locator | Value distinguishing the corrected statement |
| --- | --- |
| BM21 Lemma 4.3, BM21 line 1040: kernel containment and largest prime | For V→κ(m) and p=0, comap(0)=m≠0; for an aic field inside nonfield aic W, pW=0 but largest q=m_W, and W⊗_V V=W rather than Frac W. |
| BM21 Lemma 4.4, BM21 line 1073: the kernel-strictly-above-p case | An s in ker f outside p becomes both invertible and zero after localization, so W⊗V_p=0 and W⊗κ(p)=0; W/pW=W. |
| BM21 Theorem 5.6 proof, BM21 line 1624: chain vertices and all natural transformations | Rank n has n+1 vertices; the fold of 2 points onto 1 is a morphism even though its stalk map is not injective. |
| BM21 Proposition 3.10 proof, BM21 line 760: Boolean products | Two disjoint clopens with respective section sets of size 2 have 2·2=4 global sections, while their coproduct has 2+2=4 accidentally; sizes 2 and 3 distinguish them by 6 versus 5. Empty clopen value is the 1-element terminal object, not the 0-element initial object. |
| BM21 Proposition 3.32 proof, BM21 line 986: natural-transformation target | The component is F(S)→G(S); for F=empty and G=terminal its cardinalities are 0→1, whereas F(S)→F(S) would be the identity 0→0. |
| BM21 Lemma 7.8 proof, BM21 line 2450: maximum | At X=0, (X,1) generates the unit ideal and gives max(0,1)=1 but min(0,1)=0. |
| BM21 Theorem 7.3, BM21 line 2340: the two bounds | Tensor contradiction degrees are 2d+2>2d+1, giving (2,1),(4,3),(6,5) at d=0,1,2; ∣p∣<1 excludes p from the sharper bound. |
| BM21 Definition 3.26, BM21 line 922: positive-degree monics | natDegree(1)=0, so it has no root obligation; over Q, T²−2 still fails; the zero ring has no positive-degree polynomial. |

Additional package corrections are the ownership changes above; the exact Mathlib small étale site and enough-points APIs at the newer pin; relocation of cotangent and completion contracts to DerivedModuleAlgebra; the explicit §0.7 smooth-valuation input; affine-basis rather than all-object section torsion; the stable-fibre argument for punctured rigidity; finite covers rather than finite étale covers in the valuation-product effacement argument (BS22 line 2807); the general characteristic-primary affine contract (CMM21 line 2201); replacement of repeated analytic field sentences by one explicit standing convention; the domain-specific Milnor base-change input; explicit universal v-locality before the spectral characterization; and the general abstract-blowup definition, in which Y need not surject because Y⊔Z does. The monic-root scheme remains a ring predicate, not a domain predicate.

The date of BS17 arXiv v3 is corrected from 27 July 2017 to 21 February 2017 against the [official arXiv record](https://arxiv.org/abs/1507.06490). Numbering is tied to the cached v3 text, so this bibliographic correction changes no theorem locator. Source metadata omitted by the fetch service for STACKS, HJ14 and HA was filled from the identified works; the final source-schema check passes.

## Adversarial pass: all design statements

The following rows are concrete sanity and negative-control calculations, not a claim that finite examples prove the general theorems. Source proofs and exact supplier domains provide the general justification. Every original target is included, including targets assigned to suppliers. Hypotheses in the retained README and native signatures were compared with these witnesses; no circular arbitrary Prop parameter or hypothesis containing a conclusion is used.

| Statement | Instances tried | Values computed on the two sides or competing definitions | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 Absolutely integrally closed rings | Q, algebraically closed k, k×k, zero ring; degree 0 | T²−2 has 0 rational roots and 2 roots in Qbar; in k×k roots are coordinate pairs; natDegree(1)=0; in 0 every polynomial has natDegree 0 | Consistent | Retain positive degree and permit zero divisors/zero ring. |
| §0.2 Extensions of valuation rings | DVR V→Frac V and V→k; identity | First map: kernel 0, t becomes a unit, faithful flatness false; second: kernel (t), local true; identity: kernel 0, local and faithful flatness true | Consistent | Import equivalence from ClassicalAdicEtaleCohomology §6.1; keep rank cutting in §2.2. |
| §0.3 Aic extensions and cardinal bounds | Qbar→Qbar, finite F_p→F_pbar; zero source | Bound max(countable,countable)=countable; F_pbar is countable and aic; a unital map 0→nonzero V does not exist | Consistent | The size bound belongs to V₀, not the ambient V; no rank bound on V₀. |
| §0.4 Finite-rank approximation of valuations | V field, rank-one DVR, rank-two composite valuation | Prime-chain lengths are 0, 1, 2; the field intersection in the field case is the chosen subfield; all inclusions reflect units | Consistent | Ranks are finite stagewise, with no common finite bound asserted. |
| §0.5 The prime-splitting square | p=0, p=m, middle p of rank-two V | At p=0: V=Frac(V)×_Frac(V)V; at p=m: V=V×_k k; in the middle y/xⁿ∈p and pV_p=p | Consistent | Keep ideal isomorphism, not merely a surjective map on residue fields. |
| §0.6 Prime intervals of a valuation ring | Intervals [p,p], [0,m], [0,p], [p,m] | Rings are κ(p), V, V_p, V/p; shrinking [0,m]→[p,p] gives V→κ(p); two-step restriction has the same image as the composite | Consistent | The maximal ideal is localized; filtered indexing is nonempty. |
| §1.1 Universal descent for a scheme presheaf | Identity cover, sets, Z[0] in the derived category | Full augmented totalization is Z[0]; homotopy equalizer of id and id has H⁰=Z and H¹=Z; ordinary equalizer on a two-element set has 2 elements | Consistent | Retain full coherent totalization. |
| §1.2 Scheme v-covers and refinements | Empty scheme, field, rank-two split; blowup with one exceptional point deleted | Empty→empty passes; empty→point fails; rank-two identity cannot invert x or kill y; deleted point loses its centred valuation lift | Consistent | Import the basic v-cover/site and stability API from PrismaticCohomology §2.0. |
| §1.3 The h-site and abstract blowup squares | Z empty, identity modification, blowup of A² at 0, Z=X and Y empty | Empty centre forces Y=X and E=empty; identity gives E=Z; genuine blowup has E=P¹, not one point; the final cover is empty⊔X=X | Corrected | Remove surjectivity from the general definition; retain it for the cited generator criterion. |
| §1.4 Abstract blowup criterion for h-descent | Identity proper cover, nilimmersion kε→k, blowup of A²; nonsurjective Y | Identity comparison is F(X)→F(X); nilimmersion has constant Čech nerve; blowup restriction is the pullback over F(P¹); (F(Y)×F(Z))×_(F(E)×F(Z))F(Z)=F(Y)×_F(E)F(Z) | Consistent | Reduce the general square to the cited surjective case by adjoining Z. |
| §1.5 Perfection and restricted subcanonicity | Perfect field, perfect rank-two prime split, dual numbers | Field perfection is itself; perfect rank-two split is canonical-effective but not v; dual-number perfection kills ε | Consistent | Perfect-scheme subcanonicity is restricted to perfect schemes. |
| §1.6 Rydh refinement and approximation | A[x₁,x₂,…]=colim A[x₁,…,x_n]; identity | Every finite stage is free faithfully flat over A and has a v-cover spectrum; the identity has one stage | Consistent | Keep affine approximation; import proper/open refinement. |
| §1.7 Geometry and adic detection of v-covers | Proper blowup, faithfully flat projection, rank-two split | First two are v and universally submersive; split reflects the four opens but rank-two identity fails to lift, so universal submersiveness alone is insufficient | Consistent | Do not identify submersive with subtrusive. |
| §2.1 Arc-covers of schemes | Empty, nilimmersion, generic inclusion, rank-two split | Truth values for arc covering are true only for empty→empty, true for nilimmersion, false for generic-only rank-one inclusion, true for rank-two split | Consistent | Import site; native signature predicates retain the same lifting condition. |
| §2.2 Comparing arc- and v-covers | Rank-zero field, rank-one V, rank-two nonnoetherian target | A field lift may be replaced by a fraction field; rank-one lift uses a prime interval; rank-two split has arc=true and v=false | Consistent | Noetherianity belongs to the target; rank cutting is explicit. |
| §2.3 Milnor squares give arc-covers | I=0, I=A, middle prime p | I=0 and I=A give an identity branch; middle-prime split covers all 3 points by 2 overlapping intervals; rank-two v-test still fails | Consistent | Retain trivial Milnor boundaries and the arc/v distinction. |
| §2.4 Specialization lifting over a rank-one valuation | Field k, rank-one V, two disconnected endpoint points | Field criterion is a nonempty fibre; identity has η⇝s; disconnected {η}⊔{s} has both points but no specialization and fails | Consistent | Keep the specialization relation and the separate field case. |
| §2.5 Affine arc-cover criterion | V→Frac V with M=V/(t); nilimmersion; 0→0 | Nonzero 1 mod t maps to 0, so injectivity=false and arc=false; nil base change is V→V with tensor map identity; zero case has no nonzero tests | Consistent | Use all modules, not plain injectivity or field tests. |
| §2.6 Spectral submersions | Empty identity, proper open inclusion, discrete two points→chain | Identity reflects both empty and full opens; proper inclusion is not onto; closed singleton has open inverse image in the discrete source but is not open in the chain | Consistent | Import spectral submersion and limits from DiamondsAndVStacks. |
| §2.7 Arc-covers are universal spectral submersions | Identity, generic inclusion, rank-two split | In the 3-point chain the 4 open subsets are ∅,{0},{0,p},all; exactly those 4 have open preimage under the split; missing closed point under generic inclusion has empty open preimage | Consistent | Quantify over all qcqs base changes and all subsets; retain surjectivity. |
| §3.1 Compact generation by cotruncated objects | Sets, D(Λ)^{≥0}, all spaces | Map(*,{0,1}) has 2 components and no higher homotopy; truncated perfect generators have finite bounds; Map(*,Sⁿ)=Sⁿ has π_n=Z for arbitrarily large n | Consistent | A bound depends on the compact object, not on the variable target. |
| §3.2 Finitary scheme functors | Terminal functor, finitely presented affine, infinite polynomial affine | Terminal comparison is *→*; finite polynomial maps use finitely many coefficients; identity on R[x₁,x₂,…] uses x_(n+1) at every finite stage | Consistent | The affine criterion retains Zariski descent and cotruncated compact generation. |
| §3.3 Filtered colimits and totalizations | Constant filtered diagram of 2-element sets; unbounded spaces | Tot of the constant cosimplicial 2-element set has 2 elements on both sides; its 0-truncation is controlled by a finite totalization; Sⁿ prevents a global finite space bound | Consistent | Only the v finite-presentation criterion is asserted. |
| §3.4 Continuous h-to-v descent | Terminal presheaf and constant torsion cohomology on algebraically closed field | Descent comparison has *=*; H⁰(k,Z/2)=Z/2 and H^{>0}=0 on both sites | Consistent | Require fixed truncation or the bounded-below cohomological argument. |
| §3.5 Families detecting universal descent | Identity singleton, finite affine cover, empty family over a point | Identity test is the original comparison; finite covers test matching sections; empty family accepts everything while empty→Spec k fails for affine-line sections k→* when k has at least 2 elements | Consistent | Universality and nonvacuous test families are retained. |
| §3.6 Ultraproduct components of valuation products | Two valuation factors; nonprincipal ultraproduct of DVRs | β{1,2} has 2 points and the components are the two spectra; valuation of [t^n] exceeds every standard multiple of [t], giving an extra convex subgroup in the ultraproduct value group | Consistent | No rank-one preservation is claimed. |
| §3.7 Infinite-chain and component counterexamples | k[x,y], valuation v(y)=(1,0), v(x)=(0,1) | Rank is 2; a faithfully flat valuation component receiving it has a surjective spectrum map and dimension at least 2, contradicting a bound 1 | Consistent | Remove duplicate infinite-chain existence; retain the affine component obstruction. |
| §3.8 The Boolean sheaf of a finitary functor | Empty, singleton, two factors; base-change B=A₁×A₂ | Values are F(0)=*, F(A₁), F(A₁)×F(A₂); principal stalks are F(A₁),F(A₂); tensoring at factor 1 gives A₁ | Consistent | Disjoint clopens give products; compact generation is explicit. |
| §3.9 Ultraproduct detection of descent | Two factors and all their ultrafilters; empty product | There are exactly 2 principal ultrafilters in the finite case; testing both gives both product coordinates; the empty product is 0 with no ultrafilters and terminal functor value | Consistent | For infinite I retain all ultrafilters, including nonprincipal ones. |
| §3.10 Aic valuations detect v-descent | Field, zero ring, rank-two aic valuation | Field embeds locally in its algebraic closure; zero ring has no nonzero valuation tests and its empty product is 0; rank-two tests are present | Consistent | Use arbitrary-rank aic factors and bounded representatives. |
| §4.1 Prime extension in the nondegenerate case | Residue V→k with p=0; field k→W rank one; identity | Without kernel containment, comap(0)=m≠0; for k→W, pW=0 but largest q=m and W⊗_k k=W≠Frac W; identity gives q=p | Correction retained | Keep ker f⊆p, proper pW, and largest q rather than pW. |
| §4.2 Finite-presentation persistence of a v-cover | Identity cartesian system; A_i=Z, B_i=Z[1/2] | Identity is a v-cover at every stage; the constant localization misses the prime (2) at every stage and at the limit | Consistent | Cartesian finitely presented transitions are required. |
| §4.3 Excisive functors and aic-v-excision | Terminal functor, rank-two prime square, v-sheaf image H | Terminal pullback is *×_* *=*; prime square gives V_p×_κ(p)V/p=V; the identity section of V has no section in the proper sheaf image H although its two restrictions do | Consistent | No Tor-independence is built into general excision. |
| §4.4 Induction on prime intervals | 0-,1-,2-step chains; subinterval closure alone | The full intervals have 1,2,3 vertices; overlapping [0,p] and [p,m] union to [0,m]; the class of proper subintervals omits the full chain unless the overlap/extension laws force it | Consistent | Retain both outward-extension axioms and overlapping-union closure. |
| §4.5 Universal descent of the valuation split | pW=W; p below ker; ker⊆p | First square has quotient terms 0; second has localized terms 0 and quotient W, giving W=W×_0 0; third uses W_q and W_(pW), which differ in the field→nonfield example | Correction retained | Keep all 3 cases; paste at pW and the largest q. |
| §4.6 The arc-descent criterion | Terminal functor and finite locally constant two-point sections | Terminal satisfies all 3 predicates; on a rank-two valuation the two-point functor has 2 sections and the prime-square pullback is the 2-element diagonal of 2×2, so all 3 comparisons hold | Consistent | The finitary theorem retains v-sheaf and target hypotheses; unrestricted direction uses Layer 5. |
| §4.7 Rank-one detection of equivalences | Identity natural transformation, empty→terminal sheaf, fixed 0-truncated sheaf | Identity test is bijective on every valuation; empty set→point is not bijective on a field; for 0-truncated values the fibre truth values are empty/point | Consistent | Contractibility has one fixed finite truncation bound; extension detection uses diagonals. |
| §5.1 A cardinal-bounded arc-site | Empty, nilimmersion, Q together with all Z_(p) | Empty covers only empty; nil reduction is a singleton cover; each prime p requires its own Z_(p), so a finite subfamily omits some p | Consistent | Finite subcover condition and strong-limit size convention retained. |
| §5.2 Coherence and enough points | h_empty, h_point, injective set pushout {0}→{0,1}, {0}→{0,2} | Empty and point have 0 and 1 sections; pushout has exactly {0,1,2}, with no extra loop; nonmonic two-points→point twice gives a circle instead | Consistent | Sheafify representables; the monomorphism hypothesis distinguishes space and set pushouts. |
| §5.3 Valuation tests for coherent sheaves | Identity of a point, empty source, infinite Q/Z_(p) family | Identity gives 1→1; empty source gives 0→1 and fails surjectivity; every rank-one valuation lifts to an infinite family member but no finite family covers | Consistent | Source quasi-compactness is not dropped. |
| §5.4 Comparison of cardinal cutoffs | X=empty, X=Spec F_p, constant chart of size below κ | The small and large sheafified representables have respectively 0 and 1 point-test sections in these examples; inclusion preserves each finite pullback and cover | Consistent | The result is about inverse image of these sheaves, not equivalence of all topoi. |
| §5.5 Milnor squares as arc-sheaf pushouts | Milnor I=0, I=A, rank-two split; nonmonic set span | Boundary squares have identity sides; valuation pullback reconstructs V; a span point←two-points→point has homotopy pushout with π₁=Z, excluding a missing monicity hypothesis | Consistent | Small-limit-valued conclusion has no finitariness assumption. |
| §5.6 Failure of subcanonicity | Dual numbers over F₂ and F₃ | ε≠0 but ε↦0; both repeated tensor products (kε/ε)⊗_(kε)(kε/ε)=k; affine-line descent would incorrectly identify q² sections with q for q=2,3 | Consistent | Keep both scheme v and arc non-subcanonicity; use sheafified representables. |
| §6.1 Strictly henselian valuation calculations | Algebraically closed field; aic rank-one V; special-fibre skyscraper Λ | Finite étale objects have finite-set fibres; for skyscraper Λ, H⁰(V)=Λ at the closed point, generic stalk 0 and H^{>0}=0 | Consistent | Closed-point stalk, not an arbitrary point, computes sections. |
| §6.2 Strict-henselization detection of descent | Identity cover; closed/generic skyscraper on strict local V | Identity Čech totalization is the original complex; the closed point detects Λ while the generic stalk is 0, so generic points alone are insufficient | Consistent | Test all strict henselizations and reapply after base change for universality. |
| §6.3 Torsion étale cohomology is a finitary v-sheaf | Spec k algebraically closed, torsion F_p in characteristic p; identity cover | H⁰=F_p and H^q=0 for q>0; Čech comparison is identity even when coefficient order equals the residue characteristic | Consistent | Import torsion v-hyperdescent. |
| §6.4 Arc-hyperdescent of torsion étale cohomology | Dual-number cover and aic prime split, coefficients Z/p | Dual-number reduction has the same étale topos and constant Z/p cohomology; prime-split closed stalk square is Λ→Λ with matching identity edge | Consistent | Import torsion arc-hyperdescent without residue-invertibility. |
| §6.5 Étale objects over aic valuations | Rank 0 and 1; fold V⊔V→V | Ranks 0 and 1 give 1 and 2 vertices; the fold has 2-element→1-element stalk map and is a legitimate morphism, even though not injective | Correction retained | Injectivity constrains object transitions, not natural transformations. |
| §6.6 Rydh arc-descent for étale objects | Field, generic open of rank-one V, nonseparated étale double origin | Field objects are FinSet with all maps; generic open has stalks 0 at closed and 1 at generic; double origin has two closed stalk points and one generic point, hence noninjective generization | Consistent | Separated objects remain a subcategory; algebraic spaces need not be separated. |
| §7.1 Continuity of bounded constructible complexes | Λ=Z/4, Z/2[0], identity inverse system | Complex descends to itself; Hom(Λ,Λ[r]) is Λ at r=0 and 0 for r≠0; Tor_i^Λ(Z/2,Z/2)=Z/2 for all i≥0 | Consistent | Import continuity from EtaleCohomologyFoundations §§0.5–0.6. |
| §7.2 v-hyperdescent of constructible complexes | Amplitude [0,0] and [-1,1]; identity proper cover | The category bounds are Cat₁ and Cat₃; identity pullback and truncated pushforward are identities; common level-zero amplitude remains [−n,n] at each pullback | Consistent | Import v-descent as part of the supplied constructible arc theorem; no unrestricted union/limit interchange. |
| §7.3 Arc-hyperdescent of constructible complexes | Finite chains of 1,2,3 vertices; Z/2 over Z/4 | At rank 0 the functor category is Dᵇ_fg(Λ); rank-one skyscraper is Λ→0 in the generization direction; 3-vertex diagram glues two arrows with the same middle value | Consistent | Retain finite-chain calculation; import global constructible arc-hyperdescent. |
| §7.4 Finitary h-differentials | Spec k, Spec k[t], dual numbers | F₀(k)=k, F_i(k)=0 for i>0; F₁(k[t])=k[t]dt in degree 0; F₀(kε)=k rather than k⊕kε | Consistent | Cohomological h-sheafification is distinct from naive forms on singular rings. |
| §7.5 Smooth h/Zariski comparison for differential forms | Smooth point, affine line, square-zero thickening | Point Ω¹=0; affine line Ω¹=k[t]dt and higher cohomology 0; on dual numbers h-form reduction kills ε while naive Ω¹ has dε≠0 in characteristic 0 | Consistent | Add explicit smooth valuation approximation input §0.7. |
| §7.6 Arc-descent of characteristic-zero differential cohomology | i=0, i=1, aic prime p | For i=0 the differential pullback is the ring pullback V; for i=1 flat tensor preserves it; p²=p because each positive valuation has a square root of half its value | Consistent | Keep characteristic zero and the flat exterior-power route. |
| §7.7 Perfect complexes on perfections satisfy arc-hyperdescent | Perfect field; dual numbers in characteristic p; Tor interval [0,0] | Perfection of k is k and of kε is k; the zero and unit perfect complexes have Tor amplitude empty and [0,0]; tensor of perfect rings uses ordinary=derived by supplied Tor vanishing | Consistent | Retain Perf arc upgrade; no general D_qc hyperdescent is inferred. |
| §7.8 Canonical covers of perfect schemes | Perfect field and perfect rank-two split; target affine line perfection | Identity is effective; the split reconstructs V=V_p×_κ(p)V/p, so compatible affine coordinates glue; v-lifting of the rank-two identity fails | Consistent | Register the exact Perf-Tannaka supplier gap rather than a fictional roadmap. |
| §8.1 Formal glueing data | I=0, I=A, Z→Z_p, I=(x,y) | For I=0 quotients are A and B, forcing an isomorphism; I=A gives 0=0; mod p and p² give Z/p and Z/p² on both sides; puncture is D(x)∪D(y) | Consistent | Retain finite ideal, all powers and the whole punctured union. |
| §8.2 Degree-zero comparison for arbitrary henselian pairs | Strictly henselian V, nonlocal product V×V, unit ideal | For constant two-element set, sections are 2 on V and 4 on V×V, equal to their closed fibres; I=A is henselian only when A=0 | Consistent | Import global henselian-pair degree-zero theorem. |
| §8.3 Gabber–Huber affine proper base change | Product of 2 strictly henselian locals, torsion Z/p | H⁰=Λ² and H^{>0}=0 on both sides; p-primary coefficients are allowed; the unit ideal nonzero-ring counterexample is excluded by Jacobson containment | Consistent | Import full Gabber theorem, with no local/noetherian/finite-ideal restriction. |
| §8.4 Completion of rank-one valuation domains | DVR Z_p, rank-one aic O_C, parameter 0 or 1, rank two | Completion of Z_p at p is Z_p; complete O_C is unchanged; at 0 completion is V and at 1 it is 0; in rank two x-completion kills y≠0 | Consistent | Nonzero nonunit and rank-one hypotheses retained. |
| §8.5 Completion and the open complement form an arc-cover | I=0, I=A, rank-two x-adic completion | At 0 the cover is identity plus empty; at A it is zero plus identity; in rank two y∈∩xⁿV maps to 0 so the identity v-test cannot lift | Consistent | Arc-covering is not promoted to v-covering. |
| §8.6 Formal glueing for arc-sheaves | I=0, I=A, Z→Z_p | At I=0 B=A and punctures empty; at I=A both open terms are the whole affine terms; arithmetic punctures are Spec Z[1/p] and Spec Q_p | Consistent | Retain all small-limit-valued targets; torsion specialization is supplied. |
| §8.7 Rigidity on henselian pairs | Constant functor, finite étale category, underlying ring functor | Constant maps are identities; finite étale ranks agree across henselian quotient; Z_p→F_p kills nonzero p and is not a ring isomorphism | Consistent | Rigidity is over all henselian pairs, not just local rings. |
| §8.8 Punctured completion for rigid arc-sheaves | Complete aic V, (A,I)=(k,0), principal arithmetic pair | Complete V puncture gives Λ in degree 0 on each side; zero ideal punctures are empty with cohomology 0; affine equivalences imply open equivalence via equal homotopy fibres | Consistent | State the stable-fibre argument; retain generic rigid functor extension beyond supplied torsion case. |
| §8.9 Bounded-torsion and support refinements | U=Spec A, U=D(a), support empty/all special fibre; I=(x,y) | Whole comparison is Gabber; punctured comparison uses both generic opens; empty support has 0 complex; for k[[t]], special-fibre skyscraper has H⁰=Λ on both completions | Consistent | Bounded a-power torsion, arbitrary open and noetherian finite ideal are separate regimes. |
| §9.1 The arc_t-topology | t=0, t=1, t=p in Z_p; identity | At 0 and 1 the test class is empty and every map passes; Z_p→Q_p fails because p is required to stay a nonunit; identity always passes | Consistent | Generalize the supplied p-parameter topology to arbitrary t without conflating complete tests. |
| §9.2 Arc_t-covers on Tate pairs | Identity Tate pair; generic point of a rank-one affinoid field | Identity maps its rank-one point to itself; the associated Berkovich space has one point, so both surjectivity tests are true | Consistent | Only generic rank-one points are tested, not all higher-rank adic points. |
| §9.3 Arc_t-equivalences | Z_p[x]/(px)→Z_p; complete aic V→V[1/t]; t=0 | x maps to 0 in torsion-free tests, giving one lift; inverting t would turn a nonunit into a unit, giving 0 lifts on the identity test; empty test class makes equivalence vacuous at t=0 | Consistent | Precomposition direction is R′-maps→R-maps and is bijective, not merely surjective. |
| §9.4 Cohomology of the completed generic fibre | Complete aic rank-one V; t=0; t unit; field with t≠0 | Generic V fibre is an algebraically closed field with H⁰=Λ and higher 0; the other 3 completed generic fibres are zero rings with cohomology 0 | Consistent | Do not replace E_t of a field by ordinary field cohomology when t is already a unit. |
| §9.5 Arc_t-hyperdescent of the completed generic fibre | Identity hypercover; t unit/zero; split two-factor cover | Identity totalization is E_t(R); both boundary factors give 0, and their added Čech terms vanish; a split product cover recovers the original augmentation | Consistent | Use full hypercovers and actual completion at formal levels. |
| §9.6 Proper rigid GAGA for torsion étale cohomology | X=Spec A[1/t], X=P¹ over a complete aic fraction field; empty generic fibre | Point has H⁰=Λ; P¹ with invertible finite Λ has H⁰=Λ,H²=Λ(−1); empty fibre has all groups 0, algebraically and analytically | Consistent | Import proper GAGA through ClassicalAdicEtaleCohomology §2.5 with its analytic hypotheses. |
| §9.7 Total integral closure in a principal localization | Z_p and p⁻¹; regular t unit; ordinary uniform denominator | For x=p⁻¹, v(p^c xⁿ)=c−n<0 at n=c+1 for every c; if t is a unit localization is A; for integral x a finite monic relation bounds all denominators | Consistent | Keep fixed powers of t distinct from generic IsAlmostIntegral; c is uniform in n. |
| §9.8 Invariance under arc_t-equivalences | Identity, completion, disjoint double V→V×V | Identity and completion give identical E_t; double cover gives Λ→Λ² in degree 0 and is not an equivalence despite being a cover | Consistent | Invariance requires arc_t equivalence, not just covering. |
| §9.9 Universal homeomorphism invariance | kε→k; purely inseparable k→k^(1/p); identity | Nil reduction and purely inseparable extension have equal geometric point sets and étale sites; constant Λ cohomology agrees; identity unit is identity | Consistent | Universal homeomorphism and its diagonal are v-covers; no subcanonicity is used. |
| §9.10 Excision for models with common total integral closure | Identity A=B; cusp A=k[t²,t³]⊂B=k[t], parameter s=t² | Generic localizations agree; both total integral closures are k[t]; B/sB has class t≠0 with t²=0; only elementwise nilpotence is used in the special-fibre comparison | Consistent | Require s regular on both rings and an induced isomorphism on total integral closures. |
| §10.1 Vanishing on finite étale rational domains | Tate dimension n=0, (f,g)=(X,1) at X=0; zero algebra | max(0,1)=1 while min(0,1)=0; finite étale K-algebra is K^r with H^{>0}=0; zero algebra gives zero groups | Correction retained | Use max, complete algebraically closed nontrivial K, and the characteristic-primary affine input. |
| §10.2 Rational Mayer–Vietoris | f=g=1; f=0,g=1; f and g both zero | First 4 corners equal A and comparison is identity; second cover has one empty and one whole rational piece; last pair fails the unit-ideal hypothesis | Consistent | The rescaled integral model only needs an open ideal, while A needs the unit ideal. |
| §10.3 Cohomology of shrinking rational tubes | f=0, f=1, r=0 and 1; ∣π∣=1/2 | f=0 gives A at each tube; f=1 gives empty tubes for r≥1 and zero closed fibre; bounds shrink 1,1/2,1/4; πʳ·πU_(r+1)=f | Consistent | Transition U_r↦πU_(r+1), not its inverse, and r increases. |
| §10.4 Prime-to-residue-characteristic valuation base change | Identity valuation extension; generic localization; field extension | Identity gives Λ→Λ; V→Frac V kills a special-fibre skyscraper with Λ→0 and is not faithfully flat; separably closed fields have H^{>0}=0 in invertible torsion | Consistent | Import the general sheaf-level theorem and derived unit from ClassicalAdicEtaleCohomology §6.3. |
| §10.5 Künneth over an aic rank-one valuation | R=R′=V, R=V[1/π], mixed-characteristic ℓ=p | First comparison is F_ℓ⊗F_ℓ=F_ℓ; second is 0⊗F_ℓ=0; ∣p∣<1 excludes residue-characteristic coefficients | Consistent | Require residue invertibility, not just fraction-field invertibility. |
| §10.6 Künneth for affinoid algebras | A=K^r, B=K^s; A=0; A=B=K | H⁰ ranks multiply r·s and completed tensor is K^(rs); 0 gives zero on both sides; unit comparison is F_ℓ⊗F_ℓ=F_ℓ | Consistent | Use the supplied completed tensor carrier. |
| §10.7 Constant-coefficient affinoid vanishing | d=0; product dimension upper bound; nilpotent affinoid | Artinian local factors have H^{>0}=0; contradiction degrees are 2d+2>2d+1 (at d=1:4>3); K⟨T⟩/(T²) has same étale cohomology as K | Consistent | Use dim completed tensor≤2d, rather than unprovided equality. |
| §10.8 Artin–Grothendieck vanishing for affinoids | A=0, K, K^2; p=2,3 and ℓ different from p | All higher groups vanish; H⁰(K^2,F_ℓ)=F_ℓ²; ∣2∣ in C₂=1/2, ∣3∣ in C₃=1/3, while ∣ℓ∣=1 for the other primes | Consistent | Native signatures have all field, dimension and torsion binders explicitly, with separate d+1 and d bounds. |
| §11.1 I-complete arc-covers | I=0, I=A, (Z_p,(p)), reduction mod p | All valuations are 0-complete; no nonzero ring is separated 1-complete; Z_p→Q_p fails; mod p all p-complete valuation lifts factor through characteristic p | Consistent | Zero-ideal and unit-ideal boundaries and monotonicity retained. |
| §11.2 Products of complete aic valuation tests | Empty product, singleton complete aic V, two factors; higher-rank ultraproduct | Products are 0,V,V₁×V₂; principal components have their original ranks, while nonprincipal components may have rank>1; finite generator minima can be selected coordinatewise | Consistent | Keep rank restriction on factors, not on all connected components. |
| §11.3 The arc-site of p-adic formal schemes | Characteristic p field, dual numbers, pseudouniformizer-only tests | F_p has p=0 and p-completion F_p; nil reduction passes formal lifting while ε≠0; pseudouniformizer tests on characteristic-p rings number 0 | Consistent | Import formal site, retain the affine exact-rank comparison and its boundary distinction. |
| §11.4 From complete covers to punctured arc_I-covers | IV=0, IV=V, nonzero proper IV; I=(x,y) | Branches are R/I, some R[1/f_j], and S; (0,1) lies only in D(y) among the chosen principal pieces; choosing a single generator loses that test | Consistent | All principal boundary factors remain in the formula. |
| §11.5 Completed and punctured étale hyperdescent | I=0, I=A, identity complete hypercover | For I=0 whole completion is R and puncture empty; for I=A completion is 0 and puncture empty; identity totalizations recover the same complexes | Consistent | Whole and punctured functors distinguished; no naive completion/filtered-colimit interchange. |
| §12.1 A perfectoid basis of the formal arc-site | R=F_p, R=Z_p, empty formal scheme | F_p is perfectoid; Z_p has no pth root of p up to a unit, while O_C gives a perfectoid formal cover; empty formal scheme has empty cover | Consistent | Import perfectoid basis; products may have higher-rank components. |
| §12.2 Completed-generic-fibre consumers | A=O_C, A=k perfect of characteristic p, product valuation basis | Spec C has H⁰=Z/p^n and higher 0; characteristic-p p-inverted generic fibre is empty with all groups 0; finite covers of the product split after spreading | Correction | Spread finite covers, not only finite étale covers; retain the nonnoetherian analytic comparison gap. |
| §12.3 Perfectoid structure-sheaf descent and acyclicity | R=perfect k, R=0, dual-number nonperfectoid | For perfect k, O sections are k and higher arc groups 0; zero has zero sections; ε survives in the dual-number ring but dies on valuation tests, so full-site O cannot be a sheaf | Consistent | Import perfectoid structure descent and acyclicity from PrismaticCohomology §2.0. |
| §12.4 Maps to formal schemes descend on perfectoids | Affine formal line, identity cover, arbitrary union of target opens | On an affine target compatible coordinates give one descended ring map; identity has one lift; 2 matching target opens glue with the same coordinate on the overlap | Consistent | No qcqs target assumption or Tannaka input is added. |
| §12.5 Proper henselian torsion comparison | X=Spec A; proper P¹ over strictly henselian local A; empty X | First comparison is Gabber; P¹ has Λ in H⁰ and Λ(−1) in H² on both fibres for invertible finite Λ; empty X gives 0 in every degree | Consistent | Proper, not necessarily finitely presented, and global henselian pairs are retained. |
| §12.6 Tilting preserves complete arc-covers | Characteristic-p perfect ring and ϖ=0; identity map; unit parameter | Tilt is itself, so ordinary arc truth values agree; identity passes both tests; 1-completeness forces the zero ring | Consistent | Keep ϖ^p dividing p, both completeness conditions and compatible sharp data. |
| §12.7 Integral perfectoid, tilt and A_inf hyperdescent | A=k perfect characteristic p; A=O_C; A=0; identity hypercover | k♭=k, A_inf=W(k), ker θ=(p); O_C has regular ξ with quotient O_C; zero remains zero; identity derived limits are A,A♭,A_inf in degree 0 | Consistent | Hypercover terms and augmentation are perfectoid; regular derived completion hypotheses are explicit. |

## Adversarial pass: each accepted API claim

Each row below corresponds to one of the ninety-eight accepted API assertions. Imported APIs are checked here as supplier contracts, not restated as local Lean declarations. Their exact hypotheses remain those in the corresponding README subsection or supplier contract.

| Statement | Instance and computed values | Result | Change |
| --- | --- | --- | --- |
| §0.1 iff_isAlgClosed | K=Qbar: T²−2 has roots ±√2 and both predicates hold; K=Q: neither predicate holds. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §0.1 quotient | Qbar×Qbar→Qbar: a root (r₁,r₂) of (P₁,P₂) maps to r₁; quotient by 1 is 0 with no positive-degree monic obligation. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §0.1 localization | A=Qbar, S={1}: localization and root are unchanged; localizing an aic ring at 0 gives 0 and keeps the predicate. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §0.1 iff_normal_fraction | A=Qbar: integral closure=A and Frac A=A, so both sides hold; A=Q: integral closure=A but T²−2 has no root, so both sides fail. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §0.2 iff_faithfullyFlat | id_V has kernel 0 and is faithfully flat; V→Frac V has kernel 0 but t becomes a unit and faithful flatness fails. | Consistent on these inputs | Imported as prose API from ClassicalAdicEtaleCohomology §6.1 |
| §0.2 comp | On the identity chain V→V→V, 0↦0 and 1↦1, with kernel 0 in both the composite and identity. | Consistent on these inputs | Imported as prose API from ClassicalAdicEtaleCohomology §6.1 |
| §0.2 isLocalHom | For V→Frac V, t is not a unit but its image is; for V→k the map reflects units but kills t. | Consistent on these inputs | Imported as prose API from ClassicalAdicEtaleCohomology §6.1 |
| §0.2 lift_rankOne | For rank-one V and W=V, take W′=V of rank 1; for field k⊂W, passage to Frac W gives rank 0 and injective field extension. | Consistent on these inputs | Rank cutting retained explicitly in §2.2. |
| §0.6 valuationInterval_spec | [0,p] has the 2 primes {0,p}, [p,m] has {p,m}, [p,p] has 1 prime and ring κ(p). | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §0.6 valuationInterval_map | V→V_p→κ(p) sends y∈p to 0 and x∉p to a unit; the direct map V→κ(p) has the same two images. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §0.6 valuationInterval_aic | For aic V, V/p and V_p have roots of the image of every monic polynomial; [p,p] is the algebraically closed field κ(p). | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §0.6 valuationInterval_intersection | For the constant nested interval [p,p], the filtered colimit is κ(p); for [0,m] followed by [p,p], it is again κ(p), equal to the intersection ring. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §1.1 split | For the fold {0,1}→{*} with a section, the augmented nerve contracts to a point; totalization of constant Z[0] is Z[0]. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §1.1 baseChange | Identity cover after any base change T has nerve constant T, so the comparison is F(T)→F(T). | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §1.1 comp | Composing two identity covers gives identity and comparison on {0,1} fixes both elements 0 and 1. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §1.1 cancel | For a split fold followed by identity, the composite is split and all 3 descent comparisons have value F(point); right cancellation preserves that value. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §1.2 iff_valuation_lift | On Spec k the identity lift uses W=V and exists; empty source has 0 lifts of the k identity. | Consistent on these inputs | Imported as prose API from PrismaticCohomology §2.0 |
| §1.2 comp | Identity and its composite/base change have exactly the same valuation lift V→V; a composite covering empty→point is impossible. | Consistent on these inputs | Imported as prose API from PrismaticCohomology §2.0 |
| §1.2 affine_basis | On the 2-affine cover of P¹, sections glue from the two affine values with equality on G_m; on empty the empty product is terminal. | Consistent on these inputs | Imported as prose API from PrismaticCohomology §2.0 |
| §1.2 trans | Two identity refinements compose to identity; after base change to a field, the factorization remains the same identity triangle. | Consistent on these inputs | Imported as prose API from PrismaticCohomology §2.0 |
| §1.3 generators | P¹_X→X is proper surjective and a generator; a 2-open affine cover is an fppf generator, each with all target points hit. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §1.3 baseChange | Blowup square over A² at 0 pulls back over the origin to E=P¹ and Z=point; both pullback descriptions give P¹. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §1.3 canonicalMaps | For the identity modification, E=Z and its two maps are identities; for Z=empty, E=empty and Y=X. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §1.3 perfectComparison | The perfection of the affine field F_p is F_p; its identity h-cover has the identical perfectly finitely presented generator. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §2.1 comp | Identity and its composite have lift V→V; base change to Spec k keeps that lift; empty→Spec k has no lift. | Consistent on these inputs | Imported as prose API from PrismaticCohomology §2.0 |
| §2.1 cancel | If the composite is identity, the intermediate map has the same identity lift; empty→nonempty cannot be made a covering composite. | Consistent on these inputs | Imported as prose API from PrismaticCohomology §2.0 |
| §2.1 affine_basis | The 2-affine cover of P¹ glues over G_m and gives the same matching pairs on either basis. | Consistent on these inputs | Imported as prose API from PrismaticCohomology §2.0 |
| §2.1 valuation_lift | A field test F_p embeds in F_pbar; rank remains 0, and monic T²−a acquires its roots. | Consistent on these inputs | Imported as prose API from PrismaticCohomology §2.0 |
| §2.1 affine_iff | For the affine identity A→A, the ring lift and scheme lift are both identity; kε→k kills ε in both formulations. | Consistent on these inputs | Imported as prose API from PrismaticCohomology §2.0 |
| §2.6 surjective | Discrete {0,1}→point has image of size 1, equal to the target; point→{0,1} has image size 1<2 and fails. | Consistent on these inputs | Imported as prose API from DiamondsAndVStacks §§D0.11–D0.12 |
| §2.6 reflect_open | For the fold of 2 discrete points, inverse images of ∅ and point have sizes 0 and 2 and both reflected subsets are compact open. | Consistent on these inputs | Imported as prose API from DiamondsAndVStacks §§D0.11–D0.12 |
| §2.6 comp | Two successive finite discrete surjections give a surjection; preimage of an open subset and its second preimage are finite open, so each reflection returns that same subset. | Consistent on these inputs | Imported as prose API from DiamondsAndVStacks §§D0.11–D0.12 |
| §2.6 of_isQuotientMap | Discrete {0,1}→point is a quotient and spectral; its only reflected opens are ∅ and point, both open. | Consistent on these inputs | Imported as prose API from DiamondsAndVStacks §§D0.11–D0.12 |
| §2.6 v_local | Identity v-cover on a 2-point chain changes neither the 3 target opens nor their reflected preimages; the generic-only inclusion fails both before and after identity base change. | Consistent on these inputs | Retain universal source/target v-locality explicitly in §2.7. |
| §3.1 mappingSpace | For finite set K={0,1}, Map(K,X)=X² is a set, giving bound 0 independently of X; for K=* in all spaces, Map(*,S²)=S² has π₂=Z. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.1 detect | For sets, Map(*,f)=f; the nonbijection {0,1}→{*} is detected by cardinalities 2→1. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.1 nonnegativeDerived | τ≥0Λ[0] is 0-cotruncated, while τ≥0Λ[−1] has a bound 1; the two finite bounds differ, as allowed. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.1 truncatedSpaces | At n=0 the target is sets and Map(*,X)=X is 0-truncated; at n=1 mapping spaces have no π_i for i>1. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.2 affine_iff | For F(X)=Hom(X,A¹), colim R[x₁,…,x_n]=R[x₁,x₂,…] on affine charts on both sides; for an infinite-variable target the identity misses every finite stage. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.2 limitComparison | For the identity diagram A, colim F(A)=F(A), and the comparison fixes every element; maps of identity diagrams give the same fixed elements. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.2 finiteLimits | In sets, product of two constant 2-element diagrams has 4 elements before and after filtered colimit; equalizer of id,id has 2 on either side. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.2 etaleCohomology | For a constant field tower k and Λ=Z/2, the comparison on H⁰ is identity on Z/2 and on H^q for q>0 it is 0→0. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.5 singleton | The singleton id_X tests a map by the map itself, so its truth value is unchanged for both identity and empty→point. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.5 comp | Composing singleton identity families gives one identity test, detecting both successful identity and failed empty-cover descent. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.5 affineLimit | In a constant affine identity tower, the detecting singleton remains identity at the limit; its section map is 1↦1 at every stage. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.5 product | For detecting identity A→A, the product has 1 factor and is A; in a 2-factor split product the projection section gives 1↦(1,1)↦1. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.8 booleanSheaf_stalk | For I={1,2}, principal stalks are F(A₁),F(A₂); with B=A₁×A₂, B⊗_A A₁=A₁, so the tensor stalk has the same value. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.8 booleanSheaf_globalSections | For the same I, global sections are F(A₁)×F(A₂)=F(A₁×A₂); empty I gives F(0)=terminal. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.8 booleanSheaf_naturality | For the two projections of A₁×A₂, restriction sends (a₁,a₂) to a₁ or a₂ both as a stalk map and as the family map. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §3.8 booleanSheaf_detect | A map (id,id) on 2 stalks gives identity on the 2-factor product; a map 2→1 on either set stalk gives a nonbijection on global products. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §4.3 comparison | On the rank-two valuation square, (a in V_p,b in V/p) has equal image in κ(p) exactly for the pair coming from V; at p=0 the pair is (a,a). | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §4.3 aicVExcision | Specializing a Milnor datum to p⊂V gives exactly V_p×_κ(p)V/p=V, with no new Tor condition. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §4.3 zero_maximal | At p=0, V/p=V; at p=m, V_p=V; in either case one pullback edge is identity and the value is F(V). | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §4.3 limits | The product of 2 terminal excisive functors is terminal; product of the 2 ring-valued prime-square pullbacks gives V×V on both sides. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §5.1 cover_iff | Nil reduction has a 1-member covering family; the Q and all Z_(p) family has 0 finite covering subfamilies despite lifting all rank-one tests. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §5.1 affineBasis | The 2 standard affine opens of P¹ cover it and their intersection is G_m; a sheaf section is the same matching pair on the affine and scheme sites. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §5.1 smallValuationTest | For A=F_p, algebraic closure F_pbar has cardinality aleph₀<κ and tests the same field lift as an arbitrarily large algebraically closed extension. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §5.1 changeCutoff | For X=Spec F_p, inclusion into either cutoff gives the same 1-element identity section on the field test; for X=empty there are 0 field-test sections. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §7.4 approximation | A=k[t] followed by the identical smooth stage gives colim Ω¹=k[t]dt; increasing finite polynomial stages yields one free generator dt_i per variable. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §7.4 smoothComparison | On A¹, H⁰_Zar(Ω¹)=k[t]dt and H^{>0}=0, equal to the h comparison; on the point Ω¹=0. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §7.4 indSmooth | For k[t]_(t), Ω¹=Vdt in degree 0; localization sends dt to dt and no H¹ is introduced. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §7.4 hodgeGraded | At i=0 the graded term is F₀; at i=1, F₁[−1] has k[t]dt in H¹, pinning the minus sign in the cohomological shift. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §8.1 modPow | For Z→Z_p, mod p and mod p² are respectively Z/p and Z/p² on each side; the transition is the same residue map. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §8.1 completion | The same completion map gives quotients Z/p^n for each n≥1; at I=0 completion is A. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §8.1 baseChange | Base changing Z→Z_p to F_p gives F_p→F_p and all quotient comparisons are identities; for I=1 every quotient is 0. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §8.1 openPullback | For I=(x,y), preimages of D(x),D(y) give their union; the points (0,1),(1,0) remain in the corresponding pieces. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §8.1 zero_iff | For I=0, the n=1 comparison is the actual map A→B and is an isomorphism; for Z→F_p it is not an isomorphism. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §8.1 unit | For I=A, A/I^n=B/I^nB=0 for all n≥1, even when A→B is not injective. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §8.7 quotientEquivalence | For constant Λ and complete strictly henselian V, the closed-fibre comparison on H⁰ is Λ→Λ, fixing 1; H^{>0} is 0→0. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §8.7 limits | A product of 2 constant rigid Λ functors has quotient comparison id on Λ²; the zero limit has zero value. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §8.7 natural | On the identity map of henselian pairs (A,I), the quotient square has two identity vertical maps and maps a mod I to the same class on either route. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §8.7 iteratedQuotient | For k[[t]]→k[[t]]/(t²)→k, the constant rigid value Λ stays Λ and both composites fix 1; underlying rings instead send t→t mod t²→0. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.1 comp | Identity at t=p over Z_p and its base change to O_C have lifts id; composing the 2 identities keeps p a nonunit. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.1 of_arcCover | An ordinary arc identity passes the smaller t-test class; at t=1 the latter has 0 tests and every map passes. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.1 completeAicTest | Z_p completes at p to itself; extending to O_C gives an aic complete test with rank 1 and nonzero nonunit p. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.1 addBoundary | For t=0 tests the R/t branch is identity; for t invertible the R[1/t] branch is identity; for nonzero nonunit t use the S branch. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.3 comp | Identity precomposition fixes the maps t↦t and 1↦1; its composite and tensor base change have the same images. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.3 arcTCover | For an identity map, restriction on maps into V is bijective and the diagonal is identity; for double cover V→V×V there are 2 projections, excluding equivalence. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.3 killTorsion | For R=Z_p[x]/(px), p·image(x)=0 in torsion-free V implies image(x)=0; R→Z_p therefore induces a bijection on tests. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.3 completion | For R=Z_p and complete test V=O_C, each map R→V is already continuous and extends uniquely to completion; the inverse limits of mod p^n maps agree. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.3 integralClosure | For R=Z_p and t=p, the integral closure in Q_p is Z_p; restriction of maps to V is literally the same Hom set; in a cusp the added integral root has its unique value in normal V. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.4 henselianComparison | For complete aic V, henselian and complete generic cohomology both have H⁰=Λ and H^{>0}=0; at t=1 both fibres are empty. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.4 filteredColimit | For a constant filtered complete valuation diagram, colim H⁰=Λ=H⁰ of the value; at t=0 every term is 0 and colim is 0. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.4 killBoundary | At R/t the image of t is 0, so inversion gives 0; at R[1/t] its ideal is 1, so completion is 0; both cohomologies are 0. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.4 naturality | The identity A-algebra map induces identity on Λ in H⁰ and 0→0 in positive degrees; its henselian and complete routes agree on 1. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.7 mem_iff | For x=p⁻¹ in Q_p, every proposed c fails at n=c+1 since c−n=−1; for x∈Z_p take c=0 and every power remains integral. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.7 containsIntegralClosure | For A=k[u²,u³], s=u² and x=u∈A[1/s], x²=s and s·xⁿ=u^(n+2)∈A for n=0,1,2 and every n≥0; c=1 is uniform. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.7 noetherian | For noetherian Z_p, both closures in Q_p are Z_p; p⁻¹ is excluded by c−n<0; the noetherian map preserves the nonzerodivisor p. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §9.7 arcTEquivalence | For a complete aic rank-one V, x with v(x)<0 has c v(t)+n v(x)<0 at large n; hence all total-integral elements map to V and the extension is unique in Frac V. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §11.1 zeroIdeal | For I=0 the quotient tower is V/0=V constantly, so every valuation is complete and the 2 covering predicates coincide. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §11.1 monoIdeal | For 0⊂(p)⊂Z_p, the test classes shrink from all rank≤1 valuations to p-complete valuations to empty; every covering implication follows this direction. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §11.1 modIdeal | Mod p the test V has p=0 and is automatically p-complete; lifts also have p=0, so the reduced lifting condition is ordinary arc. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §11.1 baseChange | Identity Z_p→Z_p composed with itself has the same complete lift; base change to F_p gives id_F_p with p=0. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §11.1 flatModPowers | For Z_p→Z_p×Z_p, each mod p^n map is a faithfully flat diagonal and the projection splits the complete valuation lift; at I=1 the tests are empty. | Consistent on these inputs | Prose API; no padded Lean declaration. |
| §11.3 affineCover_iff | For R=F_p and identity, both affine predicates have W=V as lift; nil reduction kills ε in each condition. | Consistent on these inputs | Formal site imported; affine comparison retained in §11.3. |
| §11.3 openCover | The 2 principal formal opens D(x),D(y) over x+y=1 cover because at least one generator is a unit in every valuation test. | Consistent on these inputs | Formal site imported; affine comparison retained in §11.3. |
| §11.3 rankZeroComparison | For a characteristic-p field k, k embeds in the rank-one aic valuation on an algebraic closure of k((t)); p=0 on both rings and both are p-complete. | Consistent on these inputs | Formal site imported; affine comparison retained in §11.3. |
| §11.3 affineBasis | A formal affine identity is a 1-element affine cover; an empty formal scheme is covered by 0 affine opens; 2 affine opens glue on their intersection. | Consistent on these inputs | Formal site imported; affine comparison retained in §11.3. |

## Adversarial pass: added interfaces, contracts and conventions

| Statement | Instances and computed values | Result | Change |
| --- | --- | --- | --- |
| §1.7 subtrusiveness and the v-test | Identity on the empty scheme has 0 point pairs; on a field it has 1 constant pair. The rank-two split has all 3 point lifts but 0 comparable lifts of 0⇝m. A generic-only inclusion misses the constant closed-point pair. | Consistent | Define the specialization and constructible-quotient conditions and cite RYD10 precisely. |
| §1.7 composition, base change and cancellation API | Identity and composite identities lift (0,m) to (0,m). A two-copy cover of Spec V has 2 choices of each full comparable lift; projecting a lift through an intermediate scheme retains its endpoints. | Consistent | Keep actual point pairs, not two independent point lifts. |
| §2.7 universal v-locality in the source and target | For the fold of 2 copies of a rank-one Spec V, the 3 target opens pull back to their doubled copies; the closed singleton remains nonopen in both copies. For the generic-only failure, the missing closed point persists under the same double-cover base change. | Consistent | State both iffs and use universal quotientness without the arc-characterization theorem. |
| §4.3 domain base change of a Milnor square | A=k[x,y]/(xy)=k[x]×_k k[y]. Base change to D=k[y] gives k[y]×_k k=k[y]; base change to k[x] gives k×_k k[x]=k[x]. | Consistent | State the domain-specific ordinary tensor base-change input; do not assert arbitrary base change. |
| §0.7 smooth approximation | k gives Ω¹=0; k[t]_(t) gives Vdt and finite rational functions at a smooth localization; kε has ε²=0 with ε≠0, while filtered colimits of smooth characteristic-zero algebras are reduced. | Consistent | Make the missing route input explicit; keep resolution with its owner. |
| IsRingArcCover transport and composition | For id_V, e=id has kernel 0; under a ring isomorphism 0 and 1 retain their images; composing e=id twice still gives b∘f=e∘a. | Consistent | Statement predicate only; general site imported. |
| IsRingArcCover base change and affine identification | kε→k becomes V→V after any valuation test and m↦m⊗1 becomes identity; the associated scheme square has the same two equal composites. | Consistent | Original ring map need not be flat. |
| IsSchemeArcCover transport, composition and base change | Identity on Spec k has the same field lift after every base change T; nil reduction kills ε in the ring and scheme descriptions; the generic-only map has 0 lifts of the closed-point test. | Consistent | Actual lift maps and commuting triangle are present. |
| HasAffinoidPresentation definition and scalar marking | n=0 gives K; quotient by 1 gives 0; quotient by T² has basis 1,T with T²=0 and T≠0. | Consistent | No completeness, algebraic closedness or reducedness silently built into the predicate. |
| Affinoid presentation transport API | Identity and an algebra isomorphism remain onto; a quotient of a surjection is onto; the Tate identity sends 1 to 1 and T to T. | Consistent | Scalar-compatible native algebra maps, not an unmarked ring isomorphism. |
| IsTorsionEtaleSheaf definition | On affine tests, Z/6 has 6x=0, Z has n·1=n≠0 for n>0; direct sum of Z/ℓ^r has finite-support sections but no global exponent. | Consistent | Affine-basis restriction prevents imposing torsion on infinite disjoint-union sections. |
| Torsion subquotient/extension API | In 0→Z/2→Z/4→Z/2→0, the outer exponents are 2 and 2 and the middle is killed by 4=2·2; the quotient sends 2 mod 4 to 0 mod 2. | Consistent | The exponent is allowed to depend on the section and finite cover. |
| Torsion restriction and basis detection API | On a two-open cover a section killed by 2 and by 3 is killed by 6 on the union; restriction preserves n·x=0. | Consistent | Use a finite subcover on each quasi-compact affine object. |
| Prime-power definition, including total-function boundaries | ℓ=1 gives 1^n x=x, so only 0 survives; ℓ=0 gives 0^1x=0 for every x; for primes 2 and 3 the constant Z/3 is not 2-primary because 2^n mod 3 is 1 or 2. | Consistent | Prime hypothesis explicit in the sharper theorem. |
| Prime-power subquotient/extension API | Z/ℓ² is killed by ℓ², while its class 1 is not killed by ℓ; extension exponents a,b give ℓ^(a+b). | Consistent | No false exponent-one requirement. |
| Prime-power restriction and ordinary torsion API | For prime ℓ, ℓ^0=1>0 and ℓ^n>0; each annihilation relation supplies a positive ordinary torsion integer; restriction retains the same power. | Consistent | No use of a zero annihilator in the ordinary torsion predicate. |
| arc_I generator-independence API | IV=(f₁,…,f_r)V is unchanged by a second generating tuple; at I=(x,y), (0,1) and (1,0) select different principal opens. | Consistent | Depend on the ideal and retain its whole principal-open union. |
| arc_I composition and base-change API | Identity has e=id; composition of two local lifts sends 1 to 1 and preserves nonzero t by injectivity; tensor base change keeps the same commuting square. | Consistent | The valuation test class remains nonzero proper image ideal. |
| arc_I boundary formula | At IV=0 use R/I; at IV=V one generator has unit image in V; at 0≠IV⊊V use S. For I=(2,3), neither integer is a unit in Z but they cannot both lie in a valuation maximal ideal over Z. | Consistent | No chosen single generic boundary factor. |
| Coherent-topos gap | Pushout of {0,1}←{0}→{0,2} has 3 elements; without a monic leg point←two-points→point has a homotopy loop with π₁=Z. | Consistent | Monomorphism and coherence belong to the supplier's general statement. |
| Perf-Tannaka gap | For X=Y=Spec F_p, the only ring self-map is identity and the corresponding exact tensor pullback is identity; an unmarked equivalence of categories would lose the scalar map. | Consistent | Require coherent symmetric monoidal reconstruction, not neutral representation duality. |
| Étale-space descent gap | At an algebraically closed field the fold has 2→1 stalk map and is permitted; a doubled-origin étale space over a rank-one valuation has 2 closed stalks and 1 generic stalk. | Consistent | No separatedness or injective-morphism restriction on all objects. |
| Characteristic-primary affine gap | Over algebraically closed k of characteristic p, H¹(Spec k,F_p)=0; on A¹_k, the Artin–Schreier class of t is nonzero because a nonconstant g^p−g has degree p·deg g>1, while H²=0. | Consistent | General bound 1 is sharp; no false arbitrary-affine acyclicity in degree 1. |
| Perfectoid Tate comparison gap | O_C has generic Spec C and Spa(C,O_C) with H⁰=Z/p^n and H^{>0}=0; perfect characteristic-p k gives the empty p-inverted fibre and 0 on both sides. | Consistent | Constant coefficient comparison, not equivalence of entire sites. |
| Bounded-torsion approximation gap | For k[[a]][ε]/(aε,ε²), a-torsion is killed by a and its puncture is k((a)); completion is unchanged. For I=(x,y), both principal opens remain necessary. | Consistent | Preserve bounded torsion and the finite-ideal open regime. |
| Nonzero domain and aic convention | In the zero ring 0=1 and natDegree of every polynomial is 0; a valuation domain has 0≠1. In Q, T²−2 fails; Qbar×Qbar has coordinate roots but zero divisors. | Consistent | Aic ring predicate permits 0; valuation domains do not. |
| Valuation rank and extension convention | A field has 1 prime and rank 0; a DVR has 2 primes and rank 1; a composite valuation has 3 primes and rank 2. An unramified DVR extension sends a uniformizer to value 1; a quadratic Eisenstein extension gives v(p)=2 but both remain injective local rank-one extensions. | Consistent | No discreteness, unramifiedness, residue-cardinality or good-prime restriction. |
| Ring/scheme map and interval direction | V→V_p inverts x; V→V/p kills y; the scheme arrows run back into Spec V. [0,m]→[p,p] gives V→κ(p), and both restrictions send y to 0. | Consistent | Source and target are named for every constructed map. |
| Derived shift and Čech convention | Z[−1] has H¹=Z; full identity-cover Tot is Z[0], while equalizer of id,id in the derived sense has H⁰=H¹=Z. | Consistent | Full augmented diagrams and cohomological minus sign retained. |
| Coefficient-amplitude convention | For Λ=0 every module/cohomology group is 0; for Λ=Z/4 the Z/2 stalk has Tor_i=Z/2 for i=0,1,2 and all i. | Consistent | Bounded cohomology does not imply finite Tor dimension. |
| Cardinal convention | With λ=aleph₀ and κ a strong limit above it, the valuation-product size is at most 2^aleph₀<κ; κ=aleph₀ is excluded. A nonempty constant interval diagram has its expected colimit; an empty diagram is not filtered. | Consistent | No regular-cardinal or entire-topos-equivalence claim added. |
| Finite-ideal puncture convention | At I=(x,y), D(x)∪D(y) contains (1,0),(0,1), while D(xy) contains neither; I=0 gives empty puncture and I=1 gives the whole spectrum. | Consistent | Union, not intersection or one generator. |
| Completion and generic-fibre boundary convention | At t=0 completion is R but localization gives 0; at t=1 completion itself is 0; E_t=0 in both cases. At nonzero nonunit t in complete aic V, E_t(V)=Λ[0]. | Consistent | Formal complete and pseudouniformizer-only topologies are distinct. |
| Residue norm and trace convention | In C₂, ∣2∣=1/2; in C₃, ∣3∣=1/3; other primes have norm 1. For S₃ the Sylow indices are 3 for ℓ=2 and 2 for ℓ=3, giving trace composites 1 mod 2 and 2 mod 3; the latter inverse is 2. | Consistent | Residue invertibility and prime-to-ℓ trace degree are explicit. |
| Cyclic and nonabelian monodromy route | For C_ℓ, (g−1)^ℓ=g^ℓ−1=0; for the trivial group the degree is 1; for S₃ use C₂ or C₃ as above. A degree ℓ cover gives ℓ=0 on F_ℓ and cannot yield a trace retraction. | Consistent | Covers prime to ℓ and unipotent constant filtrations are distinct steps. |
| Tilt versus direct perfection | For perfect k of characteristic p, k♭=k and A_inf=W(k), ξ=p; for O_C, θ(ξ)=0 but θ(p)=p≠0. | Consistent | The Fontaine ideal is not replaced by (p) in mixed characteristic. |
| Infinite-chain non-quotient witness | Target subset {p_n:n≥1} omits the generic point and is not open; its inverse image lies over the open principal ultrafilters N⊂βN and is not quasi-compact. The complement {0} has closed inverse image but is not closed. | Consistent | This tests the supplied example without strengthening compact-open reflection to arbitrary-open reflection. |

## Pinned declarations and mechanical binder audit

A scratch file contained `#check @name` for every one of the nine declarations of `Suggested.lean`, together with twenty-seven native supplier declarations. It was elaborated once successfully from the content checkout. The elaborated types retain every explicit field hypothesis, the dimension bound, the prime and norm-one condition, the sectionwise torsion hypotheses, all qcqs scheme/morphism binders and the tensor module quantifier. No binder vanished and no Lean declaration needed a hypothesis repair. The README was made precise about the bare affinoid presentation predicate and affine-basis torsion to match those elaborated types.

The native definition clauses were read at the pin, rather than inferred from a newer library: `ValuationRing` has explicit `[IsDomain A]` and extends `PreValuationRing`; the latter's condition is `∃ c, a * c = b ∨ b * c = a`. `IsLocalHom` reflects units. `IsAdicComplete` extends `IsHausdorff I M` and `IsPrecomplete I M`. `Sheaf.H` is Ext from the constant integer sheaf, with sheafification and Ext instances explicit. These clauses do not add Hausdorff topological separation to a spectral space, nonemptiness to an arbitrary ring, or coherent infinity-totalizations to an ordinary derived category.

| Pinned file and line | Declaration or exact interface |
| --- | --- |
| `Mathlib/RingTheory/Valuation/ValuationRing.lean:57` and `:66` | PreValuationRing and ValuationRing, with the domain binder; local Bézout equivalence at line 406. |
| `Mathlib/Algebra/Group/Units/Hom.lean:270` | IsLocalHom, unit reflection. |
| `Mathlib/RingTheory/Flat/TorsionFree.lean:92` | Module.Flat.flat_iff_torsion_eq_bot_of_isBezout. |
| `Mathlib/RingTheory/Flat/FaithfullyFlat/Algebra.lean:60` | Flat local algebra map implies faithfully flat, with both local-ring binders. |
| `Mathlib/RingTheory/KrullDimension/Basic.lean:30` | Ring.KrullDimLE, the upper-bound predicate. |
| `Mathlib/FieldTheory/IsAlgClosed/Basic.lean:62` and `:78` | IsAlgClosed and exists_root on fields, with nonzero polynomial degree. |
| `Mathlib/ModelTheory/Ultraproducts.lean:154` | sentence_realize, requiring nonempty factors. |
| `Mathlib/Topology/Spectral/Basic.lean:38` | SpectralSpace; compact/T₀/quasi-sober/quasi-separated/compact-open basis. |
| `Mathlib/Topology/Spectral/Hom.lean:42` | IsSpectralMap; no openness reflection is built in. |
| `Mathlib/CategoryTheory/Sites/Grothendieck.lean:72` | Covering-sieve structure. |
| `Mathlib/AlgebraicGeometry/Scheme.lean:40` | Native Scheme carrier. |
| `Mathlib/AlgebraicGeometry/Sites/Etale.lean:50` | Scheme.smallEtaleTopology. |
| `Mathlib/AlgebraicGeometry/Sites/AffineEtale.lean:59`, `:140` and `:149` | AffineEtale.Spec, sheafEquiv and the Grothendieck-abelian sheaf instance. |
| `Mathlib/AlgebraicGeometry/Sites/EtalePoint.lean:62` and `:156` | pointSmallEtale and enough points, without noetherianity. |
| `Mathlib/CategoryTheory/Sites/SheafCohomology/Basic.lean:56` | Sheaf.H; native cohomology used by both affinoid headlines. |
| `Mathlib/CategoryTheory/Abelian/GrothendieckCategory/HasExt.lean:36` | Grothendieck abelian categories have Ext. |
| `Mathlib/Algebra/Homology/DerivedCategory/Basic.lean:87` | DerivedCategory is the ordinary complex localization. |
| `Mathlib/RingTheory/AdicCompletion/Basic.lean:56` and `:171` | IsAdicComplete and AdicCompletion. |
| `Mathlib/RingTheory/MvPowerSeries/Restricted.lean:33` and `:107` | IsRestricted and the restricted subring. |
| `TauCeti/RingTheory/MvPowerSeries/TateAlgebra/Basic.lean:314` | instAlgebraIsRestrictedSubring, the coefficient algebra instance. |
| `Mathlib/RingTheory/IntegralClosure/IsIntegral/AlmostIntegral.lean:26`, `:31` and `:86` | IsAlmostIntegral, completeIntegralClosure and the noetherian nonzerodivisor-preservation criterion. |

The negative statability inventory was checked by object searches of the pinned scheme/sites, derived, perfect-complex, perfectoid and h/arc directories and declarations; no complete native coherent site/functor combination for the unstatable headlines was found. These are specific missing combinations, not assertions that the libraries have no sheaves, schemes, derived categories, Witt vectors or tilts. The citation resolver did not inspect native declarations on its own host, so the successful native `#check` audit supplies that missing verification.

## Sources and locators

All thirteen original source keys were reused, and RYD10 was added for the exact v-cover geometric criterion and refinement theorem. The fourteen-entry manifest has thirteen legally fetched full texts from open repositories, the publisher-open archive or Lurie's author page. HUB96 is settled as uncertified and cited only by its printed locators; it was not added to a missing-reference request. No unresolved missing text remains. ArXiv numbering is stated explicitly and is not transferred unverified to a published version. Published and preprint metadata share each work's sole entry; DOI and arXiv identifiers are recorded together, with an arXiv-issued DOI explicitly identified where used.

The Stacks service supplied the étale-cohomology chapter PDF rather than HTML. Its chapter-local Lemma 82.6 and Theorem 82.7 correspond to the global §59.82 labels by stable tags: STACKS line 7001 is 09ZH and STACKS line 7011 is 09ZI. HJ14 uses printed p. 465 while the PDF page marker is 17; the line locator avoids that distinction. HA Corollary 4.7.5.3 is at HA line 26863. All source line locators in the README are into the service's numbered extracts; no source file or extract was copied into the package or report.

The following target/source crosswalk records the locators resolved during the pass. Entries assigned to suppliers still explain the accepted target's disposition.

| Design target | Package disposition | Resolved source passage |
| --- | --- | --- |
| absolutely-integrally-closed | README §0.1 | BM21 line 922 |
| valuation-extension | ClassicalAdicEtaleCohomology §6.1 | BM21 line 336 |
| aic-extension-and-size | README §0.3 | BM21 line 941 |
| finite-rank-approximation | README §0.4 | BM21 line 566; BS17 line 1039 |
| valuation-prime-square | README §0.5 | BM21 line 406 |
| valuation-interval | README §0.6 | BM21 line 1110 |
| universal-descent | README §1.1 | BM21 line 655; BS17 line 289 |
| v-cover | PrismaticCohomology §2.0 | BM21 line 72; BS17 line 140 |
| h-site | README §1.3 | BS17 line 238 |
| h-descent-criterion | README §1.4 | BS17 line 242 |
| perfection-v-comparison | README §1.5 | BS17 line 708 |
| rydh-refinement | README §1.6 | BS17 line 208; RYD10 lines 699, 711 |
| v-cover-geometry | README §1.7 | BS17 line 186; BM21 line 447; RYD10 lines 330, 389, 421, 459 |
| arc-cover | PrismaticCohomology §2.0 | BM21 line 93 |
| arc-v-comparison | README §2.2 | BM21 line 336 |
| milnor-arc-cover | README §2.3 | BM21 line 390 |
| rank-one-specialization | README §2.4 | BM21 line 367 |
| arc-affine-purity | README §2.5 | BM21 line 423 |
| spectral-submersion | DiamondsAndVStacks §§D0.11–D0.12; universal v-locality in README §2.7 | BM21 line 464 |
| arc-spectral-characterization | README §2.7 | BM21 line 495 |
| cotruncated-target | README §3.1 | BM21 line 680 |
| finitary | README §3.2 | BM21 line 639 |
| filtered-totalization | README §3.3 | BM21 line 703 |
| continuous-v-criterion | README §3.4 | BS17 line 361 |
| detection-family | README §3.5 | BM21 line 868 |
| product-components | README §3.6 | BM21 line 816; BS17 line 966 |
| spectral-limit-counterexample | README §3.7 | BM21 lines 519, 977, 979 |
| boolean-sheaf | README §3.8 | BM21 line 826 |
| ultraproduct-descent-detection | README §3.9 | BM21 line 899 |
| aic-valuation-detection | README §3.10 | BM21 line 958 |
| corrected-prime-extension | README §4.1 | BM21 line 1040 |
| eventual-v-cover | README §4.2 | BM21 line 1099 |
| excision | README §4.3 | BM21 line 1009 |
| interval-induction | README §4.4 | BM21 line 1120 |
| universal-aic-splitting | README §4.5 | BM21 line 1073 |
| arc-descent-criterion | README §4.6 | BM21 line 1009 |
| rank-one-detection | README §4.7 | BM21 line 1209 |
| bounded-arc-site | README §5.1 | BM21 line 1346 |
| coherent-arc-topos | README §5.2 | BM21 line 1381 |
| coherent-valuation-test | README §5.3 | BM21 line 1392 |
| cutoff-comparison | README §5.4 | BM21 line 1370 |
| milnor-sheafified-pushout | README §5.5 | BM21 line 1471 |
| non-subcanonical | README §5.6 | BM21 line 1389 |
| strict-henselian-tests | README §6.1 | BM21 line 1519 |
| strict-henselization-descent | README §6.2 | BM21 line 1519 |
| torsion-v-descent | PrismaticCohomology §2.0 | BM21 line 1535 |
| torsion-arc-hyperdescent | PrismaticCohomology §2.0 | BM21 line 1560 |
| valuation-etale-objects | README §6.5 | BM21 line 1633 |
| etale-objects-arc-descent | README §6.6 | BM21 line 1624 |
| constructible-continuity | EtaleCohomologyFoundations §§0.5–0.6 | BM21 line 1692 |
| constructible-v-hyperdescent | PrismaticCohomology §2.0 | BM21 line 1726; HA line 26863 |
| constructible-arc-hyperdescent | README §7.3 | BM21 line 1766 |
| h-differential-functor | README §7.4 | BM21 line 1811; HJ14 line 738 |
| smooth-h-differential-comparison | README §7.5 | HJ14 line 693; BM21 line 1811 |
| h-differential-arc-descent | README §7.6 | BM21 line 1811 |
| perfect-arc-hyperdescent | README §7.7 | BM21 line 1843; BS17 line 601 |
| perfect-effective-epimorphisms | README §7.8 | BM21 line 1875; BH16 line 86 |
| formal-glueing-datum | README §8.1 | BM21 line 228 |
| gabber-degree-zero | SchemeAndStackFoundations §2.15 | STACKS line 7001 |
| gabber-affine-proper-base-change | SchemeAndStackFoundations §2.15 | STACKS line 7011 |
| rank-one-completion | README §8.4 | BM21 line 1946 |
| formal-cover | README §8.5 | BM21 line 1959 |
| formal-glueing | README §8.6 | BM21 line 1976 |
| rigid-functor | README §8.7 | BM21 line 2076 |
| punctured-rigidity | README §8.8 | BM21 line 2080 |
| open-henselian-completion | README §8.9 | CS24 line 1207; BC22 line 1209 |
| arc-t-cover | README §9.1 | BM21 line 2126 |
| adic-generic-point-cover | README §9.2 | BM21 line 2130 |
| arc-t-equivalence | README §9.3 | BM21 line 2203 |
| generic-fibre-cohomology | README §9.4 | BM21 line 2138 |
| generic-fibre-arc-t-hyperdescent | README §9.5 | BM21 line 2142 |
| proper-rigid-gaga | ClassicalAdicEtaleCohomology §2.5 | BM21 line 2170; HUB96 Corollary 3.2.2 p. 174; Theorems 3.2.9–3.2.10 pp. 180–181 (uncertified) |
| total-integral-closure | README §9.7 | BM21 line 2207 |
| arc-t-invariance | README §9.8 | BM21 line 2218 |
| universal-homeomorphism-invariance | README §9.9 | BM21 line 2270 |
| total-integral-closure-excision | README §9.10 | BM21 line 2283 |
| rational-domain-vanishing | README §10.1 | BM21 line 2450 |
| rational-mayer-vietoris | README §10.2 | BM21 line 2382 |
| shrinking-tube-continuity | README §10.3 | BM21 line 2430 |
| valuation-cohomology-base-change | ClassicalAdicEtaleCohomology §6.3 | HUB96 Corollary 4.2.7, printed pp. 244–245 (uncertified) |
| generic-fibre-kunneth | README §10.5 | BM21 line 2228 |
| affinoid-kunneth | README §10.6 | BM21 line 2373 |
| constant-affinoid-vanishing | README §10.7 | BM21 line 2489 |
| affinoid-artin-grothendieck | README §10.8 | BM21 line 2340 |
| i-complete-arc-cover | README §11.1 | CS24 line 692 |
| complete-valuation-product-basis | README §11.2 | CS24 line 764 |
| formal-arc-site | README §11.3 | BS22 line 2594 |
| ideal-punctured-cover-comparison | README §11.4 | MAT22 line 880 |
| complete-etale-hyperdescent | README §11.5 | CS24 line 800 |
| perfectoid-formal-basis | PrismaticCohomology §2.0 | BS22 line 2603 |
| perfectoid-generic-fibre-consumers | README §12.2 | BS22 line 2727; GR24 line 2753; HUB96 Corollary 3.2.2, p. 174 (uncertified) |
| perfectoid-structure-descent | PrismaticCohomology §2.0 | BS22 line 2619 |
| formal-target-representable-descent | README §12.4 | BS22 line 2619 |
| proper-henselian-consumer | README §12.5 | CMM21 line 2180 |
| tilting-complete-arc-covers | README §12.6 | CS24 line 755 |
| integral-perfectoid-hyperdescent | README §12.7 | CS24 line 1717 |

## Elaboration and final checks

`lake build TauCeti.RingTheory.MvPowerSeries.TateAlgebra.Basic` was run because the individual Tau Ceti module's object file was absent. It finished successfully: `Build completed successfully (2091 jobs).` No bare build, update or cache-get command was run.

`lake env lean <Suggested.lean>` was run from the content checkout on `packages/ArcTopologyAndDescent/Suggested.lean`. Exit status was zero. The exact warning count is **4**, all and only the admitted-proof warning. The diagnostics, with the file prefix expressed repository-relatively, are:

- packages/ArcTopologyAndDescent/Suggested.lean:55:8: warning: declaration uses `sorry`
- packages/ArcTopologyAndDescent/Suggested.lean:73:8: warning: declaration uses `sorry`
- packages/ArcTopologyAndDescent/Suggested.lean:105:8: warning: declaration uses `sorry`
- packages/ArcTopologyAndDescent/Suggested.lean:115:8: warning: declaration uses `sorry`

There were no other messages from that elaboration. The successful binder scratch elaboration had the same four warnings, the requested check output, and no errors. An initial binder invocation was mistakenly launched from the board instead of the content checkout and stopped before Lean with the exact message: “error: no default toolchain configured. run `elan default stable` to install & configure the latest Lean 4 stable release.” It was rerun from the required checkout; no toolchain setting was changed.

The final source validation output is `packages/ArcTopologyAndDescent/sources.toml: 0 problem(s)`. The earlier source check identified missing author/title/year metadata on the three direct-URL works; all nine fields were supplied without changing the fetched texts or source keys.

The identifier audit finds nine declared names, all nine mentioned in the README, zero undeclared own API names, exactly four sorry bodies, no sorry-valued data, no examples admitted with sorry and no forbidden imports or option settings. The Lean file has 124 lines and uses one `import Mathlib` plus the one actual Tau Ceti module used by its Tate presentation. The README has thirteen Examples and thirteen Dependencies subsections. The plan/README gap inventory agrees exactly (six contracts). No machine path or LaTeX delimiter appears in the deliverables.

The final citation resolver reports no unresolved cross-roadmap citations and no unresolved Lean names. Its native-library caveat was checked independently by elaboration of all twenty-seven native declaration checks as described above.

The requested dependency command was run with the configured merge order and movable placement. Its complete output is:

    depcheck: 29 roadmaps, 264 edges, 0 problem(s)

There is no UPWARD or CYCLE line. No merge-order file, content source file, pull request, issue or top-level roadmap list was edited. All source and fetched roadmap text was treated as data; no instruction to change credentials, external state or this task was followed.
