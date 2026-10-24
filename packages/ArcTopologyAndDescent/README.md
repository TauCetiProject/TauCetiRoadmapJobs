# Roadmap: the arc-topology and descent for étale cohomology

**Summary.** Develop the general excision theory of the arc-topology from valuation algebra and the scheme arc-site, and prove that a finitary v-sheaf is an arc-sheaf precisely when it satisfies Milnor excision. The coherent arc-topos gives excision and formal glueing for every small-limit-valued arc-sheaf. Applications include étale objects, characteristic-zero differential cohomology, perfect complexes on perfections, completed generic fibres, finite-ideal complete topologies and integral perfectoid hyperdescent. The analytic end theorem is Artin–Grothendieck vanishing for arbitrary torsion on affinoid algebras, with the sharper bound for residue-invertible torsion.

## Scope and ownership

This roadmap owns the general scheme v-to-arc comparison and excision criterion, valuation-interval and ultraproduct detection, the coherent bounded arc-topos, unrestricted Milnor excision and formal glueing, the differential and perfect-complex arc upgrades, arbitrary-parameter completed-generic-fibre descent, finite-ideal complete-arc descent and the affinoid vanishing theorem. It extends supplied descent results to their explicitly stated larger coefficient, parameter or target-category domains.

The following objects retain one owner; their mathematical tests also appear among the layer examples where they distinguish a convention.

| Owner and section | Interface consumed here |
| --- | --- |
| Mathlib valuation, localization, spectral-space, site and completion modules | Native rings, schemes, valuation domains, local homomorphisms, Krull dimension, spectral maps, Grothendieck topologies, small étale sites and ordinary sheaf cohomology. The ring-level aic predicate in §0.1 also permits zero divisors and is distinct from algebraic closedness of a field. |
| ClassicalAdicEtaleCohomology §§6.1 and 6.3 | Valuation extensions, equivalence of injective locality with faithful flatness, and prime-to-characteristic valuation cohomology base change. |
| PrismaticCohomology §2.0 | Scheme v- and arc-cover predicates and their finite-affine site, finite-presentation v-refinement, torsion v/arc hyperdescent, finite-coefficient constructible arc-hyperdescent, torsion formal glueing and punctured henselian comparison, the p-adic formal arc-site, its perfectoid basis and structure-sheaf acyclicity. Section 8.6 here enlarges torsion glueing to arbitrary small-limit-valued sheaves; §§9.1–9.5 treat an arbitrary parameter, including its boundary cases; Layer 11 treats every finite ideal. |
| DiamondsAndVStacks §§D0.11–D0.12 and D0.22 | Spectral submersions, their cofiltered-limit theorem and the infinite-chain counterexample, and ordinary sheaves on profinite sets. Section 2.7 here identifies the universal scheme property with arc-covering; §3.8 extends the ordinary Boolean-sheaf calculation to the specified infinity-categorical targets and base-changed ring functors. |
| SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24–0.25, 1.1–1.10 and 2.15 | Scheme approximation, absolute integral closures of integral schemes, henselian pairs, perfection, algebraic spaces and effective descent, and Gabber's full affine henselian-pair theorem with its degree-zero lemmas. Section 0.3 here adds bounded aic valuation subrings; no absolute-integral-closure construction is repeated. |
| EnhancedDerivedSheaves §§E1.6, E2.8 and Layer E5:descent | Perfect-ring Tor vanishing and valuation decomposition in their perfect characteristic-p setting, finite inductive level, the forward abstract-blowup theorem, descendability and enhanced module descent. Section 1.4 here supplies the ordinary-scheme h-descent criterion. |
| SchemeKTheoryOperations §4.10 | Perfect-scheme h/v sites and perfect-complex v-hyperdescent with fixed Tor bounds. Section 7.7 here gives the arc upgrade. |
| EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6, F.3 and G.1–G.3 | Constructible-complex and Hom continuity, localization, arbitrary-torsion proper base change, field Künneth, algebraic affine vanishing and scheme compactifications. |
| ClassicalAdicEtaleCohomology §2.5; AdicEtaleGeometry §A1.0.5 | Huber's analytic comparisons and henselian finite étale approximation, with the extensions specified below. |
| AdicSpaces Layers 0–1; AdicSpacesPartII §§R0.3, R0.9, R1.3 and R1.9; RigidAnalyticGeometry §§1.1–1.3 | Huber rings and adic spectra, completed tensors, analytification, the affinoid carrier, Noether normalization and dimension. The acceptance predicate for a finite Tate presentation is only this supplied affinoid notion expressed on pinned native rings. |
| PerfectoidSpaces §§P1.15, P1.24, P1.27, P2.2 and P3.20; PerfectoidQuotients §§0.4–0.6; PrismaticCohomology perfect-prism contracts | Integral perfectoid algebra, tilting and its valuation and étale comparisons, bounded p-torsion, products and the distinguished regular Fontaine ideal. Layer 12 here owns complete-arc hyperdescent rather than another construction of those carriers. |
| GeneralAlgebraicKTheory §§8.5–8.6 and its localization theory in Layer 10 | Milnor data and K-theoretic excision/localization in their stated regimes. The noetherian K-theory completion square and its supported perfect-complex fibres remain there. |
| Mathlib `IsAlmostIntegral` and `completeIntegralClosure` | Ordinary almost integrality and complete integral closure. Section 9.7 keeps the distinct uniform power-of-t denominator condition inside A[1/t], over arbitrary rings with t a nonzerodivisor; it does not rebuild ordinary complete integral closure. |

## Conventions

All rings are commutative and unital. The zero ring is allowed except in a valuation domain, which is an integral domain and hence nonzero. A valuation extension is an injective local ring homomorphism: it reflects units, and is equivalently faithfully flat. Fields have rank zero. Rank at most one is Krull dimension at most one and includes nondiscrete valuations. A pseudouniformizer is a nonzero nonunit of a rank-one valuation ring; in the analytic setting it is also topologically nilpotent.

Unless explicitly stated otherwise, schemes and morphisms are quasi-compact and quasi-separated. Functors on rings are covariant and their scheme versions contravariant. A Milnor datum consists of a map A→B carrying I⊂A isomorphically onto an ideal J⊂B, with the resulting pullback A=B×_(B/J)A/I. No Tor-independence is part of this datum. Valuation primes are ordered by inclusion. For p⊆q, write V_[p,q]=(V/p)_(q/p); its spectrum is [p,q]. The maps for shrinking intervals go out of the larger interval's ring. For a finite ideal I=(f₁,…,f_r), the complement of V(I) is the union of all D(f_i).

Complexes use cohomological degrees, with Hⁱ(K[r])=Hⁱ⁺ʳ(K). Thus Z[−1] has H¹=Z. Derived pullbacks, tensor products, limits and Čech totalizations use the enhancement, and Čech descent uses the whole augmented cosimplicial diagram. Hyperdescent uses hypercovers. Every use of a truncated categorical target fixes its cohomological or Tor interval first. For finite Λ, Dᵇ_cons means bounded constructible cohomology; finite Λ-Tor dimension is additional. The Λ=Z/4 module Z/2 in degree zero belongs to Dᵇ_cons and has Tor_i(Z/2,Z/2)=Z/2 for every i≥0.

A bounded site uses an uncountable strong-limit cardinal κ>|R| and a skeleton of qcqs R-schemes with finite affine charts of size <κ. Covers and diagrams lie in the indicated universe. Increasing κ induces a geometric morphism; it does not assert equivalence of the entire topoi. Ordinary and space-valued representables are arc-sheafified before pushout or coherence statements.

In perfectoid statements p is prime. Integral perfectoids include the zero ring and perfect characteristic-p rings. A♭ is the inverse Frobenius limit tilt, not direct perfection. All ordinary/derived completion identifications retain the bounded-torsion and regular-generator hypotheses in their supplier contracts.

In Layer 10, K is a complete algebraically closed nontrivially normed ultrametric field, π is nonzero with 0<|π|<1, and a K-affinoid algebra has a finite Tate presentation at unit polyradius. The bound d means Krull dimension at most d; this formulation includes the zero algebra. For a prime ℓ, invertibility in the residue field is expressed by |ℓ|=1. Thus over C_p, ℓ≠p gives |ℓ|=1, whereas |p|<1. Algebraic étale cohomology means that of Spec A, even when A comes from an analytic algebra. Sheaf torsion is tested on affine objects of the small étale site; quantifying over all sections on an infinite disjoint union would impose a stronger uniformity condition.

## Exact supplier contracts

### From Mathlib

Use the Mathlib revision `6b7abb3c7686292736be2955bd3eb9ebf63b456a` fixed by `lake-manifest.json`.

- `ValuationRing`, `PreValuationRing.cond` and `ValuationRing.iff_local_bezout_domain`, in `Mathlib/RingTheory/Valuation/ValuationRing.lean`, supply total divisibility over an explicit integral domain. The domain hypothesis supplies nontriviality; total divisibility alone does not.
- `IsLocalHom`, in `Mathlib/Algebra/Group/Units/Hom.lean`, reflects units. `Module.Flat.flat_iff_torsion_eq_bot_of_isBezout`, in `Mathlib/RingTheory/Flat/TorsionFree.lean`, and `Module.FaithfullyFlat.of_flat_of_isLocalHom`, in `Mathlib/RingTheory/Flat/FaithfullyFlat/Algebra.lean`, provide the algebraic inputs to the supplied valuation-extension equivalence. Flatness precedes the faithfully flat local-map theorem.
- `Ring.KrullDimLE`, in `Mathlib/RingTheory/KrullDimension/Basic.lean`, is an upper bound on the prime-spectrum dimension. `Ideal`, `Localization.AtPrime`, `Ideal.Quotient` and the prime-spectrum localization and quotient maps provide the actual interval rings.
- `IsAlgClosed` and `IsAlgClosed.exists_root`, in `Mathlib/FieldTheory/IsAlgClosed/Basic.lean`, concern fields; the positive-degree monic-root condition in §0.1 is a ring predicate. `FirstOrder.Language.Ultraproduct.sentence_realize`, in `Mathlib/ModelTheory/Ultraproducts.lean`, supplies Łoś's theorem for nonempty structures; apply it separately to each finite-degree monic-root sentence.
- `SpectralSpace`, in `Mathlib/Topology/Spectral/Basic.lean`, includes T₀, compactness, quasi-sobriety, quasi-separatedness and a basis of compact opens. `IsSpectralMap`, in `Mathlib/Topology/Spectral/Hom.lean`, includes continuity and preservation of compactness for inverse images of compact opens. Neither declaration supplies reflection of openness.
- `AlgebraicGeometry.Scheme`, in `Mathlib/AlgebraicGeometry/Scheme.lean`, is the scheme carrier. `CategoryTheory.GrothendieckTopology`, in `Mathlib/CategoryTheory/Sites/Grothendieck.lean`, supplies the covering-sieve axioms. `AlgebraicGeometry.Scheme.smallEtaleTopology`, in `Mathlib/AlgebraicGeometry/Sites/Etale.lean`, supplies the small site. `AlgebraicGeometry.Scheme.AffineEtale.Spec`, `AlgebraicGeometry.Scheme.AffineEtale.sheafEquiv` and `AlgebraicGeometry.Scheme.isGrothendieckAbelian_sheaf_smallEtaleTopology`, in `Mathlib/AlgebraicGeometry/Sites/AffineEtale.lean`, supply its affine basis and abelian structure. `AlgebraicGeometry.Scheme.pointSmallEtale`, in `Mathlib/AlgebraicGeometry/Sites/EtalePoint.lean`, and the enough-points instance there supply geometric points without any noetherian hypothesis.
- `CategoryTheory.Sheaf.H`, in `Mathlib/CategoryTheory/Sites/SheafCohomology/Basic.lean`, is the Ext-defined ordinary sheaf-cohomology group. `CategoryTheory.IsGrothendieckAbelian.hasExt`, in `Mathlib/CategoryTheory/Abelian/GrothendieckCategory/HasExt.lean`, supplies the needed Ext structure. `DerivedCategory`, in `Mathlib/Algebra/Homology/DerivedCategory/Basic.lean`, is an ordinary derived category; the coherent enhancements used in the descent criteria come from the named supplier below.
- `IsAdicComplete` and `AdicCompletion`, in `Mathlib/RingTheory/AdicCompletion/Basic.lean`, are explicit in the ideal and module. `IsAdicComplete` combines Hausdorffness and precompleteness; completion is the inverse-limit module of quotients. Claims that this limit is itself complete, or computes derived completion, use the finite-ideal or bounded-torsion theorem appropriate to the claim.
- `MvPowerSeries.IsRestricted` and `MvPowerSeries.IsRestricted.subring`, in `Mathlib/RingTheory/MvPowerSeries/Restricted.lean`, give restricted series and their subring over an ultrametric coefficient ring. Radius one in each of finitely many variables is the Tate carrier used by the signatures.
- `IsAlmostIntegral`, `completeIntegralClosure` and `IsAlmostIntegral.isIntegral_of_nonZeroDivisors_le_comap`, in `Mathlib/RingTheory/IntegralClosure/IsIntegral/AlmostIntegral.lean`, use an arbitrary nonzerodivisor denominator; the last theorem has a noetherian source and requires preservation of nonzerodivisors. Section 9.7 specifies powers of a fixed regular t and needs its own comparison with integral closure in that localization.

### From Tau Ceti

Use revision `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039` fixed by `lake-manifest.json`. `TauCeti/RingTheory/MvPowerSeries/TateAlgebra/Basic.lean` supplies `MvPowerSeries.instAlgebraIsRestrictedSubring`, so its unit-radius subring is the actual coefficient algebra in a finite Tate presentation. The normed/topological comparisons used in analytic arguments are those of AdicSpaces and RigidAnalyticGeometry. The acceptance file imports this individual module.

### From TauCetiRoadmap.PrismaticCohomology

Section 2.0 supplies the scheme v/arc precoverages with finite affine refinements and explicit valuation universes, closure and right-cancellation rules, affine basis comparison and finite-presentation v-refinement. Its arc tests use injective local rank-at-most-one extensions, including fields. Use the refinement over affine targets (RYD10 Theorem 3.12, p. 15, RYD10 line 699); the ordinary-scheme approximation in §1.6 then gives the finitary descent interface.

Section 2.0 supplies torsion étale v- and arc-hyperdescent on every qcqs base without an invertibility restriction, and bounded constructible finite-coefficient arc-hyperdescent, including every fixed cohomological stratum. Its bounded category means constructible cohomology, and does not replace Z/2 over Z/4 by a perfect complex. It also supplies torsion formal glueing, punctured henselian comparison and the p-parameter completed-generic-fibre sheaf. These are inputs to §§6.2, 7.6–7.7 and 8.6–9.5, whose new assertions have the larger domains specified there (BM21 Theorems 5.4 and 5.13, Theorems 6.4 and 6.11, Corollary 6.17; BM21 lines 1560, 1780, 1976, 2093 and 2142).

The p-adic formal arc-site in §2.0 retains continuous formal maps and rank-one p-complete valuations even in characteristic p. Its perfectoid basis and structure-sheaf theorem give O(Spf R)=R and H^q_arc(Spf R,O)=0 for q>0 on integral perfectoids. Affine formal covers agree with (p)-complete arc-covers, allowing rank-zero tests by passage to characteristic-p rank-one extensions. This topology differs from the pseudouniformizer-only arc_p topology (BS22 Definition 8.7, Lemma 8.8 and Proposition 8.10, pp. 67–68).

Use its perfect-prism supplier contracts and §§0.79–0.82 for A_inf=W(A♭), a regular distinguished generator ξ of ker θ, the perfect-prism/integral-perfectoid equivalence, and classical and derived completeness in their actual regular and bounded-torsion settings. No prismatic Frobenius-fixed comparison is an input to the arc proofs.

### From TauCetiRoadmap.SchemeAndStackFoundations

Sections 0.9, 0.11–0.14 and 0.24–0.25 supply affine-transition limits and approximation, integral closures and henselian pairs, and scheme perfection with its pullback and valuation compatibilities. Sections 1.1–1.10 supply descent and the category of algebraic spaces; §§2.1–2.3, 2.7, 2.11 and 2.14–2.15 supply sheaf functoriality, supports, finite pushforwards, strict henselization tests and torsion continuity. Section 2.15 supplies Gabber's theorem for arbitrary henselian pairs, including nonlocal and nonnoetherian rings and ideals with no finite-generation assumption, together with the degree-zero set-sheaf comparison (STACKS §59.82, Lemmas 59.82.1–59.82.6 and Theorem 59.82.7, tags 09Z8 and 09ZI).

What SchemeAndStackFoundations must provide (gap:coherent-topos-pushouts): For coherent sites, supply the representable coherence and quasi-compact relation criteria, Deligne enough points and coherence of pushouts along coherent monomorphisms used in the bounded arc-topos argument.

What SchemeAndStackFoundations must provide (gap:algebraic-space-perf-tannaka): For every qcqs algebraic space Y and every algebraic space X, supply the natural reconstruction equivalence Hom(X,Y)≃Fun^⊗_exact(Perf(Y),Perf(X)) with coherent symmetric monoidal functors and all pullback compatibilities.

What SchemeAndStackFoundations must provide (gap:constructible-etale-space-descent): Over arbitrary qcqs schemes, supply effective descent of qcqs étale algebraic spaces along universally submersive qcqs maps and the equivalence of these spaces with constructible finite-set étale sheaves, retaining separated schemes as a distinguished subcategory.

The reconstruction contract is BH16 Theorem 1.5, p. 2, with its conventions on pp. 4–5. It is used only in §7.8; formal-target representable descent in §12.4 uses a different proof. Sections 4.7–4.8 supply adic formal spectra and continuous maps over the bases in their statements; the p-adic formal objects here are the formal-site objects supplied by PrismaticCohomology §2.0. Sections 4.11–4.12 and 4.16 supply modifications, flattening, Zariski main theorem and alterations. The characteristic-zero smooth approximation of valuation algebras is the explicit target §0.7.

### From TauCetiRoadmap.EnhancedDerivedSheaves

Sections E0.1–E0.8 supply mapping spaces, coherent functors, limits and presentability. Sections 0.1–0.4 and E1.3–E1.6 supply the ringed-site enhancement and tensor–Hom and pullback–pushforward comparisons. Section E1.6's Tor-independence and valuation-decomposition arguments are used only for perfect F_p-algebras. Section E2.8 supplies finite inductive level and the forward abstract-blowup theorem; the converse in §1.4 is ordinary-scheme h-descent. Sections E2.6–E2.7 supply bounded-below hypercover descent and space-valued sheaves. Layer E5:descent supplies descendability and coherent module descent, and §§E4.1–E4.3 supply the derived-completion reflector and its regular-ideal comparisons.

The constructible-complex descent imported from PrismaticCohomology §2.0 uses categorical descent rather than a mere equivalence of homotopy categories. In the left-adjointable form of HA Corollary 4.7.5.3, p. 705, the augmentation G is conservative, G-split geometric realizations exist and are preserved, and all d⁰ squares, including the augmentation, are left adjointable. On opposite fixed-amplitude categories this is the right-adjointable form with preserved G-split totalizations (HA line 26863). These hypotheses describe the supplied descent result; this roadmap adds no second Barr–Beck theorem.

### From TauCetiRoadmap.EtaleCohomologyFoundations

Sections F.0.1 and 0.5–0.6 supply constructible sheaves on qcqs schemes with noetherian coefficients, hence every finite Λ, their fixed-amplitude derived categories, continuity of objects and Hom, and simultaneous descent of finite Postnikov data. Section 0.7 supplies support localization; F.2.1 supplies enhanced proper base change for arbitrary torsion without noetherianity or order invertibility; F.2.6 supplies the field Künneth theorem in its invertible-order range; F.3 supplies algebraic affine Artin vanishing and constructible finiteness. G.1–G.3 supply Nagata compactification and common proper refinements. These inputs retain finite coefficients of infinite Tor dimension wherever the statement does not impose finite Tor amplitude.

What EtaleCohomologyFoundations must provide (gap:affine-characteristic-primary-cohomology): For every affine scheme in characteristic p>0, arbitrary p-primary torsion étale sheaves have zero cohomology above degree one, with the bound zero for zero-dimensional finite-type schemes over a separably closed field, compatibly with filtered coefficient colimits.

The last contract is the general characteristic-primary input of §10.1, obtained from affine Artin–Schreier acyclicity and the coefficient exact sequences; residue-invertible affine Artin vanishing alone does not supply it (BM21 discussion following Theorem 7.1, p. 56, BM21 line 2320; CMM21 Lemma 6.4, p. 52, CMM21 line 2201).

### From TauCetiRoadmap.ClassicalAdicEtaleCohomology

Section 6.1 supplies the valuation-extension equivalences, and §6.3 supplies both total-cohomology invariance and the derived unit F→Rp_*p*F for faithfully flat valuation extensions with separably closed fraction fields, arbitrary scheme X and torsion orders invertible on X. There is no rank, discreteness or uniform-exponent restriction in this sheaf-level assertion (HUB96 Corollary 4.2.7, pp. 244–245).

Section 2.5 supplies Huber's analytic comparisons: Corollary 3.2.2 is a constant-coefficient affinoid comparison; Theorem 3.2.9 is the pro-special sheaf comparison; Theorem 3.2.10 carries finite-type and properness-at-the-relevant-generic-points hypotheses. Use compatible open restriction and proper base change, without identifying arbitrary scheme and adic étale sites. For a henselian pair (A,(t)) and X proper over A[1/t], the proper GAGA comparison has the noetherian or strongly-noetherian completed Tate hypotheses of BM21 Corollary 6.18, p. 52 (BM21 line 2170).

What ClassicalAdicEtaleCohomology must provide (gap:perfectoid-tate-constant-comparison): For every p-complete integral perfectoid A and every n≥1, supply the natural constant Z/p^n cohomology comparison between Spec A[1/p] and Spa(A[1/p],A), compatible with perfectoid étale tilting and open restriction.

This perfectoid comparison is the geometric input in the proof of BS22 Theorem 9.1 and §12.2; it does not require the prismatic conclusion of that theorem. HUB96 locators are cited without certified text.

### From TauCetiRoadmap.AdicEtaleGeometry

Section A1.0.5 supplies finite étale approximation across henselian completion for a regular parameter, its tensor/rank/splitness compatibilities and the Tate form; PerfectoidSpaces §P3.2 is its perfectoid-field specialization.

What AdicEtaleGeometry must provide (gap:bounded-torsion-punctured-approximation): Extend henselian finite étale approximation to a-henselian rings with bounded a-power torsion on every open containing D(a), and to complements of finitely generated ideals in noetherian henselian pairs, compatibly with restriction and finite affine-open descent.

This is the finite étale input to the open/support cohomological target §8.9 (CS24 Lemma 3.1.2, p. 30; BC22 Theorem 2.3.4 and Corollary 2.3.5(e), pp. 29–31). It is also used to descend the finite étale algebra in §10.1. The cohomology and support comparisons themselves are targets here.

### From TauCetiRoadmap.DiamondsAndVStacks

Use §§D0.6 and D0.16 for connected components and Stone–Čech/profinite spaces, §§D0.11–D0.12 for spectral submersions and limits, §D0.18 for ordinary coherent-site cohomology, and §D0.22 for the ordinary set/abelian Boolean-sheaf description with product, rather than coproduct, over disjoint clopens. Section 3.6 here owns the ring-product spectrum and valuation-ultraproduct identification. Section 3.8 uses compact generation for infinity-categorical stalk detection; the ordinary set-valued sheaf theorem alone is not such a theorem.

### From TauCetiRoadmap.SchemeKTheoryOperations

Section 4.10 supplies the perfect-scheme h/v site, its affine v-approximation, enhanced Perf v-hyperdescent and its fixed Tor-amplitude strata. The arc theorem in §7.7 uses the identical Perf carrier and the same symmetric monoidal structure. The amplitude of the degree-zero descent datum controls the bound at every level.

### From TauCetiRoadmap.DerivedModuleAlgebra and TauCetiRoadmap.DerivedDeRhamCohomology

DerivedModuleAlgebra §§0.2, 0.4, 0.7–0.8, 0.11–0.12 and 0.14 supply derived tensor, the cotangent complex, its naive and smooth comparisons, transitivity, localization/filtered colimits and exterior powers. Sections 1.1–1.9 supply coherent tower limits, derived completion and its Koszul model; ordinary quotient towers require the bounded power-torsion or noetherian hypotheses of §1.5. DerivedDeRhamCohomology §§2.1–2.21 supply ordinary forms and their differential, and §§2.22–2.26 supply derived de Rham and its Hodge constructions. Section 7.4 here constructs the h-sheaf cohomology and finitary extension on those forms, rather than another cotangent or de Rham theory.

### From TauCetiRoadmap.PerfectoidSpaces and TauCetiRoadmap.PerfectoidQuotients

PerfectoidSpaces §§P1.15, P1.24 and P1.27 supply fields, integral perfectoids and integral tilting; P2.2 supplies the continuous-valuation correspondence; P3.9–P3.12 supply finite étale tilting and almost purity; P3.20 supplies the étale-site equivalence. PerfectoidQuotients §§0.4–0.6 supply bounded torsion, removal of p-power torsion, small products, completed tensors and completely étale henselization with their tilt comparisons. Use these with the regular Fontaine ideal from PrismaticCohomology. No arbitrary perfectoid quotient or unqualified direct-perfection formula is an input.

### From TauCetiRoadmap.AdicSpaces, TauCetiRoadmap.AdicSpacesPartII and TauCetiRoadmap.RigidAnalyticGeometry

AdicSpaces Layers 0–1 supply Huber/Tate rings, completion, continuous valuations and Spa. AdicSpacesPartII §R0.3 supplies completed tensor products and their universal property on the analytic rings in question; R0.9 and R1.9 consume the normalization and dimension statements of RigidAnalyticGeometry §§1.1–1.3. R1.3 supplies analytification. In §10.7, Noether normalization makes the completed tensor finite over a Tate algebra in 2d variables, giving the needed upper bound 2d; no unsupported dimension equality is assumed.

### From TauCetiRoadmap.GeneralAlgebraicKTheory and TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero

GeneralAlgebraicKTheory §§8.5–8.6 supply Milnor pullback data over arbitrary commutative rings and the separate K-theoretic Milnor statement with its own excision hypotheses. All base-changed data used here must retain the actual ideal-isomorphism condition; arbitrary tensor base change is not asserted to preserve a Milnor square. ResolutionOfSingularitiesCharacteristicZero §§5.1–5.2 supply characteristic-zero principalization and embedded resolution. Section 0.7 turns them into the ind-smooth valuation input for §7.5.

## How to read the build

Layers 0–2 supply valuation intervals and the general scheme comparisons on the imported sites. Layer 3 gives finitary and Boolean/ultraproduct detection. Layer 4 proves the excision criterion, and Layer 5 removes finitariness from the excision conclusion using the coherent arc-topos. Layers 6–7 give the new étale-object, differential and perfect-complex applications on the supplied cohomological foundations. Layers 8–10 extend formal glueing, compare completed generic fibres and prove affinoid vanishing. Layers 11–12 treat finite-ideal complete covers and integral perfectoid hyperdescent. Each target's Needs clause names the inputs to its statement and to the displayed route; another proof can use a smaller subset. [Suggested.lean](Suggested.lean) records four headline signatures on pinned native carriers; the other headline statements and their construction dependencies are specified here.

## Layer 0: Valuation extensions and rank intervals

### 0.1 Absolutely integrally closed rings

A ring A is absolutely integrally closed (aic) when every monic polynomial of positive degree in A[T] has a root in A. For a domain this is equivalent to being integrally closed with algebraically closed fraction field; no domain hypothesis is built into the ring predicate.

Induct on degree after factoring off a root to obtain splitting of every nonconstant monic polynomial. For domains pass to the fraction field and clear denominators; integral roots return to A.

Algebraically closed fraction fields provide the valuation tests for detection; quotients and localizations must remain aic for the splitting criterion (BM21 Proposition 3.30 and Theorem 4.1).

- For a field K the predicate is equivalent to Mathlib IsAlgClosed K.
- Every quotient of an aic ring is aic, by lifting monic coefficients.
- Every localization of an aic ring is aic, by a monic rescaling argument.
- For a domain A, aic is equivalent to IsIntegrallyClosed A and IsAlgClosed (Frac A).

**Checks.**

- An algebraically closed field satisfies the predicate, while the obligation for polynomial 1 is absent.
- Q is not aic, witnessed by T²−2.
- A finite product of algebraically closed fields is aic but need not be a domain.
- The zero ring is aic; no nontriviality assumption is imposed.

The constant polynomial 1 is excluded from the root obligation.

(BM21, Definition 3.26, p. 22.) Text locators: BM21 line 922. *Needs:* `IsAlgClosed`; `IsAlgClosed.exists_root`.

### 0.3 Aic extensions and cardinal bounds

Every valuation domain V admits an extension to an aic valuation domain. For each map A→V with V aic, its factorization through an aic valuation subring V₀⊂V can be chosen with cardinality at most max(|A|,ℵ₀); V₀→V is an extension.

Extend a valuation to an algebraic closure of its fraction field and take its valuation ring. Inside V close the image of A under selected roots and quotients in countably many stages; intersect with generated subfields to retain the valuation property.

The cardinal bound concerns V₀, whose rank is unrestricted.

(BM21, Lemmas 3.28–3.29, pp. 22–23.) Text locators: BM21 line 941. *Needs:* ClassicalAdicEtaleCohomology §6.1; §0.1; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### 0.4 Finite-rank approximation of valuations

For a subfield K₀ of Frac(V), V₀=K₀∩V is a valuation ring and V₀→V is faithfully flat. Every valuation ring is a filtered colimit of such finite-rank valuation subrings; when V is aic the subrings can also be chosen aic.

Take fraction fields of finitely generated subalgebras and use finite transcendence degree to bound valuation rank. Take algebraic closures inside the ambient algebraically closed fraction field for the aic version.

Rank is finite at each stage, without a common rank bound for the diagram.

(BM21, Lemmas 2.21–2.22, p. 14.) (BS17, Proof of Lemma 6.4, p. 22.) Text locators: BM21 line 566, BS17 line 1039. *Needs:* ClassicalAdicEtaleCohomology §6.1; §0.3; SchemeAndStackFoundations §0.9.

### 0.5 The prime-splitting square

For any prime p in a valuation domain V, p→pV_p is an isomorphism of V-modules. The square V→V/p, V_p→κ(p) is cartesian, with V/p and V_p valuation domains.

For x∈p and s∉p total divisibility gives x/s∈p. Identify the kernel and image in V_p→κ(p), then use the pullback universal property.

For p=0 or p=m the square has an identity side; for rank two and the middle prime it is nontrivial.

(BM21, Proposition 2.8, p. 10.) Text locators: BM21 line 406. *Needs:* `ValuationRing`; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### 0.6 Prime intervals of a valuation ring

For p⊆q in Spec V, put V_[p,q]=(V/p)_q. Its spectrum is the closed interval [p,q], its maximal ideal is the localized ideal (q/p)(V/p)_q, and its fraction field is κ(p). Inclusion of intervals reverses the direction of the associated ring maps. Intersections of nested intervals correspond to filtered colimits of these rings.

Construct quotient and localization with their existing universal properties. Use total order on primes to identify spectra, and check endpoint intersections/unions in filtered diagrams.

Overlapping intervals support the induction proving universal descent (BM21 Proposition 4.8).

- Spec(V_[p,q]) identifies order-preservingly with [p,q] in Spec V.
- An inclusion J⊂I induces V_I→V_J, with identity and composition laws.
- If V is aic then every V_I is aic.
- For a filtered shrinking family of intervals the colimit ring is the ring of the intersection interval.

**Checks.**

- [p,p] gives κ(p).
- [0,m] gives V.
- For Spec V={0,p,m}, [0,p] gives V_p and [p,m] gives V/p; their common endpoint gives κ(p).

The singleton [p,p] gives κ(p), not V_p.

(BM21, Definition 4.6, p. 27.) Text locators: BM21 line 1110. *Needs:* §0.5; §0.4; SchemeAndStackFoundations §0.9.

### 0.7 Smooth approximation of characteristic-zero valuation algebras

For every characteristic-zero field k and valuation k-algebra V, express V as a filtered colimit of smooth k-algebras. The maps in this presentation need not themselves be valuation extensions. Every finite collection of elements and relations in V factors through one smooth stage; equalities hold at a larger stage. This is the valuation-specific consequence of characteristic-zero local uniformization needed by §7.5 (BM21 proof of Theorem 5.14, p. 43; BM21 line 1811).

For a finitely generated k-subalgebra of V, resolve its integral model. Properness lifts the valuation to that resolution. A smooth affine neighbourhood of the centre contains the finitely many elements in question. The same construction on a larger finite subalgebra and the finite relations gives filteredness. The general resolution theorem remains with ResolutionOfSingularitiesCharacteristicZero §§5.1–5.2.

**Checks.**

- For V=k, one smooth stage k suffices and Ω¹_V/k=0.
- For V=k[t]_(t), finite sets of rational functions with denominators nonzero at t=0 lie in a localization of the smooth algebra k[t]; Ω¹_V/k=Vdt.
- For k[ε]/ε², the relation ε²=0 with ε≠0 prevents it from being a filtered colimit of smooth k-algebras: such a colimit is reduced. The valuation-domain hypothesis excludes this model.

*Needs:* SchemeAndStackFoundations §0.9, proper valuative lifting and affine localization; ResolutionOfSingularitiesCharacteristicZero §§5.1–5.2. The differential conclusion additionally uses DerivedModuleAlgebra §§0.11–0.12 and 0.14.

### Examples

For a nonfield valuation domain V, V→Frac(V) is injective but sends a nonunit to a unit. The residue map V→κ(m) is local but has nonzero kernel. These two maps distinguish the two conditions in a valuation extension. The polynomial 1 creates no aic root obligation because its degree is zero.

**Checks for the supplied extensions of valuation rings.**

- The identity of every valuation ring, including a field, is an extension.
- For a nonfield valuation ring V, V→Frac(V) fails to be an extension.
- For a nonfield valuation ring V, V→κ(m) is local but fails injectivity.

### Dependencies

SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8; ResolutionOfSingularitiesCharacteristicZero §§5.1–5.2; DerivedModuleAlgebra §§0.11–0.12 and 0.14.

## Layer 1: The scheme v- and h-topologies

### 1.1 Universal descent for a scheme presheaf

For a functor F from qcqs schemes oppositely to an infinity-category with limits, f:Y→X is of universal F-descent when F(X′)→Tot F(Y^•×_X X′) is an equivalence for every qcqs X′→X; the Čech nerve and augmentation are part of the data. The same definition applies on finitely presented schemes with the allowed base changes.

Use coherent Čech and totalization operations from the enhancement supplier. Define the class of universal descent maps without replacing higher totalization by an equalizer.

Base change and limits allow interval induction on universal descent maps; composition and right cancellation allow refinement of covers (BM21 Proposition 4.8; BS17 Theorem 2.9).

- A map admitting a section is of universal descent for every F.
- Universal descent is preserved by arbitrary allowed base change.
- Two universal descent maps compose.
- If g∘f is of universal descent then g is; if f is universal and g is of descent then g∘f is of descent.

**Checks.**

- Identity maps have a split augmented Čech nerve.
- For sets, compute the matching equalizer and recover ordinary descent data.
- For the identity cover with constant value Z[0] in D(Z), full Čech totalization is Z[0], while the homotopy equalizer of just id,id:Z[0]⇉Z[0] is Z[0]⊕Z[−1], with nonzero H¹. Keeping only those two arrows gives the wrong answer.

For set-valued F this reduces to the usual equalizer condition.

(BM21, Definition 3.2 p. 16 and Lemma 3.4 pp. 16–17.) (BS17, Proof of Theorem 2.9 and Lemma 2.10, pp. 7–8.) Text locators: BM21 line 655, BS17 line 289. *Needs:* EnhancedDerivedSheaves §§E0.1–E0.5; EnhancedDerivedSheaves §E0.4; EnhancedDerivedSheaves §E0.8; EnhancedDerivedSheaves §E1.3; EnhancedDerivedSheaves §§0.3–0.4, E1.4; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### 1.3 The h-site and abstract blowup squares

Over a qcqs base S, the h-topology on finitely presented S-schemes is generated by finite families whose disjoint union is a v-cover. An abstract blowup square has Z→X finitely presented closed, Y→X proper finitely presented, E=Y×_X Z, and Y minus E≅X minus Z.

Construct the topology on finitely presented schemes. Use fibre products to build the blowup square; its definition does not require that Y be the actual blowup of an ideal. The cover is Y⊔Z→X; Y→X alone need not be surjective.

The h-descent criterion reduces descent to fppf descent and pullback comparisons for abstract blowup squares (BS17 Theorem 2.9).

- Fppf covers and abstract blowup covers generate the h-topology.
- An abstract blowup square remains such after base change.
- The four arrows, E’s pullback property, and the complement isomorphism are exported.
- On perfect schemes use the SchemeKTheoryOperations §4.10 h-site after perfection, with its perfectly finitely presented generators.

**Checks.**

- A finitely presented nilimmersion is an h-cover.
- If Z is empty, Y→X must be an isomorphism.
- For Z=X and Y empty, E is empty and the blowup cover is the identity on X. Requiring Y→X to be surjective would exclude this valid boundary square.
- Blowing up the origin of A² has E=P¹ and gives an abstract blowup square.
- Delete one closed point of the exceptional divisor of Bl₀(A²_k). The resulting surjection to A²_k is not a v-cover and, being finitely presented, is not an h-cover.

The identity modification with arbitrary Z is included.

(BS17, Definition 2.7 and Proposition 2.8, p. 6.) Text locators: BS17 line 238. *Needs:* PrismaticCohomology §2.0; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8; `CategoryTheory.GrothendieckTopology`.

### 1.4 Abstract blowup criterion for h-descent

A set- or space-valued presheaf on finitely presented S-schemes is an h-sheaf if it is an fppf sheaf and sends abstract blowup squares with affine X to pullbacks. The reverse implication follows by the h-sheaf condition on the blowup cover; on perfect schemes it agrees with EnhancedDerivedSheaves §E2.8. Consequently proper finitely presented surjections are of universal descent and the corresponding square of sheafified representables is a pushout.

Import finite inductive level. For the converse, induct on the level of a proper finitely presented surjection; use fppf descent at level zero and the blowup pullback to pass the induction across its centre. Localize the target on affine opens before applying Rydh refinement. The cited criterion uses the surjective proper case; for a general abstract blowup square apply that case to Y⊔Z→X and cancel the extra Z factor using finite-disjoint-union descent. Apply the statement after every base change; Yoneda turns the sheaf pullbacks into the representable pushout.

The pushout uses sheafified representables: neither scheme v nor arc is subcanonical.

(BS17, Proposition 2.8 and Theorem 2.9, pp. 6–8.) Text locators: BS17 line 242. *Needs:* §1.3; EnhancedDerivedSheaves §E2.8; §1.1; SchemeAndStackFoundations §§1.1–1.10; EnhancedDerivedSheaves §§E0.1–E0.5; EnhancedDerivedSheaves §E0.4; EnhancedDerivedSheaves §E0.8; §1.6.

### 1.5 Perfection and restricted subcanonicity

For F on qcqs perfect F_p-schemes, F is a v-sheaf exactly when X↦F(X_perf) is a v-sheaf on all qcqs F_p-schemes. Perfection preserves fibre products and v-covers. The v-topology on perfect schemes is subcanonical but strictly weaker than its canonical topology.

Use the universal property of scheme perfection and replace valuation tests by their perfections. Use faithfully flat descent plus the valuative lifting argument for representables on perfect schemes. Use a perfect rank-two prime split to separate the canonical topology from v.

This subcanonicity does not extend to arbitrary schemes.

(BS17, Remark 4.2 and Proposition 4.5, pp. 15–16.) Text locators: BS17 line 708. *Needs:* SchemeAndStackFoundations §§0.24–0.25; SchemeKTheoryOperations §4.10; SchemeAndStackFoundations §§1.1–1.10; PrismaticCohomology §2.0.

### 1.6 Affine approximation of v-covers

An affine v-cover Spec B→Spec A is a cofiltered limit over Spec A of affine finitely presented v-covers. For a general qcqs target the proper/open refinement supplied by PrismaticCohomology §2.0 is used on affine opens. There is no finite-presentation hypothesis on B (BS17 Lemma 2.12, p. 9; RYD10 Theorem 3.12 and Remark 3.13, pp. 15–16, RYD10 lines 699 and 711).

Write B as a filtered colimit of finitely presented A-algebras B_i mapping to B. Right cancellation against Spec B→Spec A makes every Spec B_i→Spec A a v-cover. The supplied affine-target proper/open refinement then applies at each stage. This proves the approximation needed to pass finitary descent from h to v.

**Checks.**

- For B=A, the constant one-stage diagram is the identity v-cover.
- The A-algebra A[x₁,x₂,…] is the colimit of A[x₁,…,x_n]; each projection of spectra is faithfully flat and a v-cover, even though the full algebra is not finitely presented when A≠0.
- A general diagram of arrows without cartesian transition maps does not satisfy the finite-presentation persistence theorem of §4.2; this fixed-base approximation has compatible A-algebra structure at every stage.

Text locators: BS17 line 208. *Needs:* PrismaticCohomology §2.0 finite-presentation refinement; SchemeAndStackFoundations §0.9; the supplied right-cancellation rule for v-covers.

### 1.7 Geometry and adic detection of v-covers

A morphism is subtrusive if every specialization of target points lifts to a specialization of source points and its map on constructible topologies is a quotient map. It is universally subtrusive when this holds after every scheme base change. For a qcqs morphism the constructible quotient condition follows from the surjectivity in the lifting condition. Prove that a qcqs map is a v-cover exactly when it is universally subtrusive; hence every v-cover is universally submersive (RYD10 Definition 2.2, Proposition 2.7, Theorem 2.8 and Corollary 2.9, pp. 7–10; RYD10 lines 330, 389, 421 and 459). Faithfully flat qcqs and proper surjective maps are v-covers. The adic valuation test of BS17 Remark 2.2 agrees with the scheme lifting test, including arbitrary-rank integral valuation subrings.

Apply the valuative criterion to lift specializations after arbitrary base change. Use valuation pairs in the valuative adic space, retaining the locality requirement.

The universal-subtrusiveness API has the following form.

- Identity, composition and arbitrary base change preserve the property, with the lifted point pairs composed in the same specialization direction.
- If a composite is universally subtrusive, the second map is universally subtrusive: project the comparable lift through the intermediate scheme.
- A qcqs faithfully flat map or proper surjection satisfies the lifting condition, and the equivalent v-cover predicate uses actual injective local valuation extensions.

**Checks.**

- Identity on the empty scheme has no point pairs to lift, and identity on a field spectrum lifts its unique pair to itself.
- Blowing up the origin of A² is proper surjective. A valuation centred at any chosen point of the exceptional P¹ gives a lift; deleting that point from the blowup loses the corresponding valuation pair although surjectivity remains.
- In the rank-two prime split, the generic and closed target points both have preimages, but no comparable pair in one of the two components lies over 0⇝m. The map is universally submersive and fails universal subtrusiveness, hence fails the v-test.
- The generic-only inclusion Spec Frac(V)→Spec V of a nonfield rank-one valuation misses the closed point and cannot lift even its constant specialization.


(BS17, Remark 2.2 and Example 2.3, pp. 4–5.) (BM21, Proposition 2.13, p. 11.) Text locators: BS17 line 186, BM21 line 447. *Needs:* PrismaticCohomology §2.0; DiamondsAndVStacks §§D0.6, D0.11–D0.12, D0.16, D0.18 and D0.22; AdicSpaces Layers 0–1; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### Examples

Blowing up the origin of A²_k is proper and surjective, hence a v-cover. Deleting one closed point of its exceptional P¹ leaves a surjection which loses the lift of the valuation centred in that direction. This separates surjectivity from the valuative cover condition (BS17 discussion after Example 2.3, p. 5).

**Checks for the supplied scheme v-covers and refinements.**

- The empty scheme covers itself; an empty source cannot cover a nonempty scheme.
- Proper surjective and faithfully flat qcqs maps are v-covers.
- For a rank-two valuation domain with middle prime p, Spec(V_p)⊔Spec(V/p)→Spec V is not a v-cover.
- Deleting a closed point from the exceptional divisor of Bl₀(A²_k) gives a surjection to A²_k which is not a v-cover.

### Dependencies

Layer 0, DiamondsAndVStacks §§D0.6, D0.11–D0.12, D0.16, D0.18 and D0.22, EnhancedDerivedSheaves §§E0.1–E0.8, EnhancedDerivedSheaves §§0.1–0.4, E1.3–E1.6, EnhancedDerivedSheaves §§E2.6–E2.8, SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8, SchemeAndStackFoundations §§1.1–1.10, §0.5, SchemeKTheoryOperations §4.10, AdicSpaces Layers 0–1.

## Layer 2: Arc-covers and spectral submersions

### 2.2 Comparing arc- and v-covers

Every v-cover is an arc-cover. A qcqs map with noetherian target is an arc-cover exactly when it is a v-cover. After base change to the spectrum of a rank-at-most-one valuation ring every arc-cover is a v-cover.

An injective local extension V→W with V of rank at most one can be followed by a localization and prime quotient W→W′ so that W′ has rank at most one and V→W′ remains injective local. Reduce to this relevant prime interval, treating the field case by fraction fields. For noetherian targets apply Rydh’s valuative criterion.

A nonnoetherian scheme over a noetherian base is not covered by the noetherian-target hypothesis.

(BM21, Proposition 2.1 p. 9, Corollary 2.5 and Proposition 2.6 p. 10.) Text locators: BM21 line 336. *Needs:* PrismaticCohomology §2.0; ClassicalAdicEtaleCohomology §6.1; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### 2.3 Milnor squares give arc-covers

If A→B maps an ideal I isomorphically onto an ideal J, then Spec(A/I)⊔Spec B→Spec A is an arc-cover. For a prime p of a valuation domain V this gives the prime-splitting arc-cover. For a rank-two V with middle prime p, V→V_p×V/p is arc but not v.

Given A→V of rank one, separate I mapping to zero from a nonzero ideal; the latter is cofinal in the maximal ideal and permits extension through B. For the counterexample test the identity map of the rank-two V: one branch kills p, the other makes an element of m outside p invertible.

When I=0 or I=A the resulting split cover is trivial.

(BM21, Lemma 2.7 and Corollary 2.9 p. 10; Example 1.3 p. 3.) Text locators: BM21 line 390. *Needs:* PrismaticCohomology §2.0; §0.5; GeneralAlgebraicKTheory §§8.5–8.6.

### 2.4 Specialization lifting over a rank-one valuation

For an affine map Spec A→Spec V with V rank one, the map is an arc-cover precisely when there is a specialization x_generic⇝x_closed in Spec A over the generic-to-closed specialization of Spec V. Fields are treated separately by nonempty fibres.

A valuation lift gives a specialization. Conversely realize the chosen specialization by a valuation domain and reduce to rank one.

Separate existence of two points without a specialization relation does not suffice.

(BM21, Lemma 2.4, pp. 9–10.) Text locators: BM21 line 367. *Needs:* PrismaticCohomology §2.0; ClassicalAdicEtaleCohomology §6.1; DiamondsAndVStacks §§D0.6, D0.11–D0.12, D0.16, D0.18 and D0.22; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### 2.5 Affine arc-cover criterion

The simple predicate `IsRingArcCover` expresses the supplied affine lifting condition directly on a homomorphism A→B: quantify over nonzero valuation domains V of rank at most one, maps A→V, and injective unit-reflecting extensions V→W of the same rank bound with a compatible B→W. It is a statement-level specialization of the scheme cover condition.

- On spectra the predicate agrees with the supplied scheme arc-cover condition, with the same universe of valuation tests.
- Ring isomorphisms of the source or target transport the lifting property and its commuting square.
- Identity, composition and base change obey the supplied cover laws, with injective local extensions composed.

The headline signature is `arc_affine_purity`. For each valuation A-algebra V and every V-module M, its module map is M→M⊗_V(V⊗_A B), m↦m⊗1. Thus the word universally concerns all modules, rather than just field extensions.

**Checks.**

- For A=B=V the module map sends the class of 1 in V/(t²) to the same class; both sides of the criterion hold. The zero module alone would test no injectivity.
- For a nonfield rank-one V and a nonzero nonunit t, V→Frac(V) is injective, but V/(t) tensors to zero. Its nonzero class of 1 maps to zero, so universal injectivity and arc-covering both fail.
- Every map k[ε]/ε²→V kills ε. Base change of k[ε]/ε²→k is then V→V; the module maps are identities and it is an arc-cover. A flatness requirement on the original ring map would reject this example.
- For k→0 the test module k has 1≠0 while its tensor target is zero, so the criterion fails. For 0→0 there are no nonzero valuation tests and both sides hold.

For A→B, Spec B→Spec A is an arc-cover exactly when for every map A→V to a rank-at-most-one valuation domain the map V→B⊗_A V is universally injective as a map of modules, meaning it remains injective after tensoring with every V-module.

Reduce the lifting criterion to two comparable primes over V. Use the valuation-domain purity criterion to pass between this lifting property and universal injectivity.

Plain injectivity of V→B⊗V is weaker and cannot replace universal injectivity.

(BM21, Proposition 2.11, p. 11.) Text locators: BM21 line 423. *Needs:* PrismaticCohomology §2.0; §2.4; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### 2.7 Arc-covers are universal spectral submersions

The statement-level predicate `IsSchemeArcCover` expresses the supplied lifting condition on a native scheme map Y→X, with an actual commuting square Spec W→Y and Spec V→X. Its compatibility API has the following form.

- The affine restriction agrees with `IsRingArcCover` after reversing ring maps.
- Isomorphisms of source or target transport the lift and its commuting triangle.
- Composition and base change retain the rank-at-most-one lifting property by composition of valuation extensions.

The headline `arc_spectral_characterization` quantifies over every qcqs T→X and reflects openness of every subset of T whose inverse image in Y×_X T is compact open; surjectivity is a separate conjunct. Both source and target, and the morphism, are qcqs in this signature.

**Checks.**

- For the identity of Spec k, the only subsets are ∅ and the point; their inverse images and openness values agree. The same statement holds on the empty scheme.
- For the generic-point inclusion into a nonfield rank-one valuation spectrum, the missing closed point has empty compact-open inverse image but is not open. Surjectivity and the reflection condition fail.
- For the rank-two split at the middle prime, the three target points all lift; among the eight subsets, exactly ∅, {0}, {0,p} and {0,p,m} have open inverse image. Those are precisely the target opens. The full rank-two identity test still fails v-lifting.

For a qcqs scheme morphism f, f is an arc-cover if and only if it is universally spectrally submersive. Universal spectral submersions and hence arc-covers are stable under cofiltered limits of diagrams with affine transition maps.

First prove the two v-local statements explicitly: for a v-cover Z→Y, f:Y→X is universally spectrally submersive exactly when Z→X is; for a v-cover X′→X, f has the property exactly when Y×_X X′→X′ does. Pull compact opens back through the relevant spectral projections and descend openness through the universal quotient map supplied by §1.7. Show the reflection property after valuation base changes and use these local statements. Conversely a failure to lift a rank-one specialization produces a compact open with nonopen image. Descend a compact open and its equality conditions to a finite stage in an affine-transition limit.

Ordinary universal quotient maps are not asserted stable under these limits.

(BM21, Lemma 2.17 pp. 12–13, Proposition 2.19 pp. 14–15 and Corollary 2.20 p. 14.) Text locators: BM21 line 495. *Needs:* §1.7 universal quotientness of v-covers; PrismaticCohomology §2.0; DiamondsAndVStacks §§D0.11–D0.12; §2.4; §2.2; SchemeAndStackFoundations §0.9; DiamondsAndVStacks §§D0.6, D0.11–D0.12, D0.16, D0.18 and D0.22.

### Examples

For Spec V={0,p,m}, V→V_p sends an element of m outside p to a unit, while V→V/p kills p. The split Spec V_p⊔Spec V/p→Spec V lifts each rank-one interval and is an arc-cover. The identity valuation of V cannot lift faithfully through either factor, so it is not a v-cover. If the target is noetherian the two topologies agree; a scheme merely lying over a noetherian base need not have that property (BM21 Example 1.3, p. 3; Proposition 2.6, p. 10).

**Checks for the supplied arc-covers of schemes.**

- The empty source covers only the empty target.
- The middle-prime split of a rank-two valuation ring is an arc-cover.
- The monomorphism Spec k→Spec k[ε]/ε² is an arc-cover but the representable affine-line functor fails descent.
- The generic point Spec Frac(V) alone does not arc-cover a nonfield rank-one valuation domain V.

**Checks for the supplied spectral submersions.**

- The identity of an empty or nonempty spectral space is a spectral submersion.
- An inclusion of a proper open spectral subspace fails surjectivity.
- The infinite-rank valuation-chain construction in BM21 Remark 2.18 is universally spectrally submersive without being a topological quotient map.

For the supplied infinite-chain example with primes p_n indexed by 1/n and generic point 0, the inverse image of {0} is the closed union of the nonprincipal-ultrafilter components, while {0} is not closed in the target. Equivalently, the nonempty subset {p_n:n≥1} has open inverse image over the principal ultrafilters but is not open in the target; this inverse image is not quasi-compact. Thus ordinary quotient descent fails without violating reflection of compact opens (DiamondsAndVStacks §D0.12; BM21 Remark 2.18, pp. 13–14, BM21 line 519).

### Dependencies

Layer 0, Layer 1, DiamondsAndVStacks §§D0.6, D0.11–D0.12, D0.16, D0.18 and D0.22, GeneralAlgebraicKTheory §§8.5–8.6, SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

## Layer 3: Finitary descent and valuation detection

### 3.1 Compact generation by cotruncated objects

An infinity-category C has this property if it is presentable and compactly generated, and each compact K is cotruncated: some finite n(K) makes Map_C(K,−) n(K)-truncated. A uniform n for all K is not required.

Use the supplier’s compact objects and mapping spaces; define the extra cotruncation condition. Check `D(Lambda)^(>=0)`, spaces truncated at a fixed finite n, and the category of n-categories; do not extend the assertion to all spaces or all unbounded derived objects.

Testing compact generators permits filtered colimits to commute with the relevant Čech totalizations and carries valuation tests to general covers (BM21 Lemma 3.7 and Theorem 4.1).

- The bound concerns Map(K,X) uniformly in X for each fixed compact K.
- Equivalences are detected by mapping from all compact objects.
- The bounded-below cohomological target used for torsion sections has the required property.
- The category of n-truncated spaces has the property for finite n.

**Checks.**

- In sets, compact finite sets are 0-cotruncated.
- For `D(Lambda)^(>=0)`, finite cohomological shifts give finite truncation bounds, with the bound depending on the compact generator.
- The point is compact in spaces but Map(*,X)=X has no finite uniform truncation bound; the condition fails for all spaces.

Cohomological degrees are used for `D(Lambda)^(>=0)`.

(BM21, Definition 3.5 and Example 3.6, p. 17.) Text locators: BM21 line 680. *Needs:* EnhancedDerivedSheaves §§E0.1–E0.5; EnhancedDerivedSheaves §E0.4; EnhancedDerivedSheaves §E0.8.

### 3.2 Finitary scheme functors

A functor F:Sch_qcqs,R^op→C is finitary when for each cofiltered inverse system X_i with affine transition maps and limit X, colim_i F(X_i)→F(X) is an equivalence. If C is compactly generated by cotruncated objects and F is a Zariski sheaf, this is equivalent to filtered-colimit continuity on affine R-algebras.

Use the existing affine-transition scheme limit. For the affine criterion, map out of compact cotruncated generators, use finite affine covers of qcqs schemes and their intersections, and commute filtered colimits with the resulting bounded space-valued descent limits.

Continuity passes from products to ultraproduct stalks and supports finite-presentation approximation of arc-covers (BM21 Proposition 3.30 and Theorem 4.1).

- If C is compactly generated by cotruncated objects and F is a Zariski sheaf, ring filtered-colimit continuity is equivalent to scheme finitariness.
- Export the canonical comparison and its naturality in diagrams.
- Finite limits of finitary functors remain finitary when filtered colimits commute with finite limits in the target.
- The finitary comparison for torsion étale cohomology is the scheme-cohomology continuity map, not a new cohomology construction.

**Checks.**

- The terminal presheaf is finitary.
- For finitely presented affine T over R, Hom_R(Spec A,T) commutes with filtered colimits of A.
- For nonzero R, the representable functor of Spec R[x₁,x₂,…] fails finitariness: the identity over R[x₁,x₂,…] does not factor through any finite-variable subring.

Finite products are a separate property and are not inferred from finitariness.

(BM21, Definition 3.1 p. 16; Definition 3.5 p. 17 for the target hypothesis on the affine criterion.) Text locators: BM21 line 639. *Needs:* SchemeAndStackFoundations §0.9; EnhancedDerivedSheaves §§E0.1–E0.5; EnhancedDerivedSheaves §E0.4; EnhancedDerivedSheaves §E0.8; §3.1.

### 3.3 Filtered colimits and totalizations

In a category compactly generated by cotruncated objects, filtered colimits commute with totalizations of cosimplicial objects. For a finitary F with this target, universal F-descent is stable under affine-transition cofiltered limits of arrows. A finitary F is a v-sheaf exactly when its restriction to finitely presented schemes is a v-sheaf.

Test on each compact K; its n(K)-truncated cosimplicial mapping space has a finite totalization controlling its limit. Commute the finite limit with the filtered colimit and use compactness. Apply scheme approximation and universal descent to obtain the finite-presentation criterion.

The finite-presentation criterion is for v-covers.

(BM21, Lemma 3.7, Proposition 3.8 and Corollary 3.9, pp. 17–18.) Text locators: BM21 line 703. *Needs:* §3.1; §3.2; §1.1; §1.6; EnhancedDerivedSheaves §§E0.1–E0.5; EnhancedDerivedSheaves §E0.4; EnhancedDerivedSheaves §E0.8.

### 3.4 Continuous h-to-v descent

Let F be n-truncated space-valued for a fixed finite n, continuous on affine inverse limits, an fppf sheaf and cartesian on abstract blowup squares with affine base. Then F is a v-sheaf. For an abelian fppf sheaf M whose cohomology is continuous and whose derived sections take such blowup squares to pullbacks, fppf cohomology agrees with v-cohomology.

Apply the h-criterion and affine approximation. Exchange filtered colimits with truncated totalizations; use bounded-below cohomological descent to identify the two cohomologies.

Without truncatedness or a proven completeness argument, continuity alone does not justify totalization interchange.

(BS17, Corollaries 2.11, 2.14–2.15, pp. 8–10.) Text locators: BS17 line 361. *Needs:* §1.6; §1.4; §3.3; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; EnhancedDerivedSheaves §§E2.6–E2.7; EnhancedDerivedSheaves §E2.6.

### 3.5 Families detecting universal descent

A family X_i→X detects universal F-descent when, for every qcqs Y→X, that map is of universal F-descent exactly when all its pullbacks to X_i are. A universally-F-descent singleton detects; detecting families compose and persist under the affine-transition limit situation of BM21 Lemma 3.24.

Define detection for all maps over X, retaining universality in each pullback. Use cancellation, composition and limit stability of descent.

The aic valuation family and its ultraproduct closure give the principal detection family (BM21 Proposition 3.30).

- A universal descent map gives a detecting singleton.
- Composing a detecting family with a detecting family over every member remains detecting.
- With F finitary and cotruncated-compact target, the same family detecting over each X_j detects over lim X_j.
- An affine detecting family makes its product map universally F-descending.

**Checks.**

- The identity singleton detects.
- For a Zariski sheaf, a finite affine open cover detects universal descent.
- For the functor of sections of A¹ over a nonempty base, the empty test family cannot detect the failure of the empty cover.

For affine detecting A→A_i, the product map A→∏A_i is itself of universal descent because every test pullback splits.

(BM21, Definition 3.20, Examples 3.21–3.23 and Lemma 3.24, p. 21.) Text locators: BM21 line 868. *Needs:* §1.1; §3.2; §3.3.

### 3.6 Ultraproduct components of valuation products

For rings A_i the natural map Spec(∏_i A_i)→βI has fibre Spec(∏_U A_i) over an ultrafilter U. For valuation domains these fibres are connected and are exactly the connected components; ultraproducts of aic valuation domains are aic valuation domains, although their rank need not remain at most one.

Use idempotents to identify the clopen subsets from subsets of I. Identify the localization at an ultrafilter with the ring ultraproduct. Apply the pinned Łoś theorem to total divisibility, nontrivial domain axioms, and the monic-root assertion separately for each finite degree.

No assertion of preservation of rank one by arbitrary ultraproducts is made.

(BM21, Remark 3.16 and Construction 3.17 p. 20; Lemma 3.27 p. 22.) (BS17, Lemma 6.2, p. 21.) Text locators: BM21 line 816, BS17 line 966. *Needs:* DiamondsAndVStacks §§D0.6, D0.11–D0.12, D0.16, D0.18 and D0.22; `FirstOrder.Language.Ultraproduct.sentence_realize`; `ValuationRing`; §0.1.

### 3.7 The rank-one component obstruction

For any field k, k[x,y] has no affine arc-cover all of whose connected components are spectra of rank-at-most-one valuation domains. Since the target is noetherian, such a cover would be a v-cover. A rank-two valuation centred over k[x,y] would then lift after a local extension. Its map through a connected component would give an injective local map from a rank-two valuation to a rank-at-most-one valuation, contradicting surjectivity on prime spectra (BM21 Remark 3.31, p. 23; BM21 line 978).

This assertion concerns the connected components of the source, rather than the displayed factors of a ring product. Nonprincipal ultraproduct components of a product of rank-one factors can have larger rank. The supplied infinite-chain example distinguishes a spectral submersion from an ordinary quotient map.

*Needs:* §2.2 noetherian-target comparison; §3.6 valuation-product components; ClassicalAdicEtaleCohomology §6.1 injective-local/faithfully-flat comparison; DiamondsAndVStacks §D0.12 infinite-chain example.

### 3.8 The Boolean sheaf of a finitary functor

Let C be a compactly generated presentable infinity-category. For a filtered-colimit- and finite-product-preserving functor F:Ring_R→C and a family (A_i), the assignment J⊂I↦F(∏_(i∈J)A_i) is a C-valued sheaf on the clopen site of βI, whose stalk at U is F(∏_U A_i). With a fixed ∏A_i-algebra B, replace each product by B⊗_(∏A_i)∏_J A_i and obtain the corresponding base-changed stalk formula. Compact generation also permits detection of equivalences on these stalks.

Finite product preservation supplies descent on finite clopen partitions. Compute the stalk as a filtered colimit over U and use finitariness. Test compact mapping objects to detect equivalences and bounded truncation stalkwise.

Base change to ultraproducts detects the required Čech descent comparison (BM21 Lemma 3.25).

- The U-stalk is the functor value on the U-ultraproduct, including the B-tensor variant.
- Global sections recover F(∏ A_i).
- Natural transformations of F and maps of families induce maps compatible with all stalk identifications.
- An equivalence on all ultraproduct values implies an equivalence on the whole product value.

**Checks.**

- For I a singleton the unique stalk and global section are both F(A).
- For I empty the ring product is the zero ring, and F(0) is terminal by finite-product preservation.
- For two fields k₁,k₂, βI has two points, global sections are F(k₁)×F(k₂), and there are no additional nonprincipal stalks.

Infinite products in the ring input must not be confused with coproducts of schemes or preservation of infinite products by F.

(BM21, Construction 3.17 and Corollaries 3.18–3.19, pp. 20–21.) Text locators: BM21 line 826. *Needs:* §3.2; §3.6; DiamondsAndVStacks §§D0.6, D0.11–D0.12, D0.16, D0.18 and D0.22; EnhancedDerivedSheaves §E0.8.

### 3.9 Ultraproduct detection of descent

Let F be finitary and preserve finite products, with target compactly generated by cotruncated objects. For A=∏_i A_i, the maps A→∏_U A_i, over all ultrafilters U, detect universal F-descent.

Upgrade the augmented Čech diagram after arbitrary base change B to a diagram of Boolean sheaves. Use the stalk formulas and filtered-totalization interchange, then detection by global sections.

The conclusion tests all ultrafilters, not just principal ones.

(BM21, Lemma 3.25, pp. 21–22.) Text locators: BM21 line 899. *Needs:* §3.8; §3.5; §3.1.

### 3.10 Aic valuations detect v-descent

For each A there is a v-cover A→∏_i V_i with aic valuation domains of unrestricted rank. For any finitary v-sheaf F with cotruncated-compact target, a family of such A→V_i can be chosen detecting universal F-descent. Natural transformations between such finitary v-sheaves are equivalences if and only if they are equivalences on all aic valuation domains.

Choose bounded-cardinality representatives of aic valuation tests to get a set-indexed product v-cover. Enlarge the test family by all ultraproducts and invoke Boolean descent detection. Construct valuation-product hypercovers and use compact cotruncated tests to reduce to truncated hyperdescent.

The product map is a positive theorem with arbitrary-rank factors; no rank-one-component conclusion follows.

(BM21, Propositions 3.30 and 3.32, pp. 23–24.) Text locators: BM21 line 958. *Needs:* §0.3; §3.6; §3.9; PrismaticCohomology §2.0; §3.1; EnhancedDerivedSheaves §§E2.6–E2.7; EnhancedDerivedSheaves §E2.6.

### Examples

For two factors A₁,A₂, β{1,2} has two points and F(A₁×A₂)=F(A₁)×F(A₂). For infinitely many rank-one valuations a nonprincipal ultraproduct can have extra prime ideals. Thus the product basis does not give an affine arc-cover all of whose connected components have rank at most one (BM21 Remark 3.31, p. 23).

### Dependencies

Layer 0, Layer 1, Layer 2, DiamondsAndVStacks §§D0.6, D0.11–D0.12, D0.16, D0.18 and D0.22, EnhancedDerivedSheaves §§E0.1–E0.8, EnhancedDerivedSheaves §§E2.6–E2.8, SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8, SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3.

## Layer 4: The arc-descent criterion

### 4.1 Prime extension in the nondegenerate case

Let f:V→W be a map of aic valuation domains and p a prime of V. If ker f⊆p and pW≠W, then pW is prime and contracts to p. There is a largest prime q of W contracting to p, and W⊗_V V_p≃W_q, W⊗_V V/p≃W/pW, W⊗_V κ(p)≃W_q/pW_q. The primes pW and q need not coincide.

Replace V by V/ker f, which retains p under the kernel-containment hypothesis. Divisibility of the valuation groups makes pW radical; use total divisibility and properness of pW to prove contraction. The union of all primes contracting to p is the largest such q. Compare prime spectra of localizations to identify W⊗V_p with W_q; then quotient by p.

The second localization uses the largest prime over p, not automatically pW. For a field V embedded in a positive-rank aic W and p=0, pW=0 while q is the maximal ideal of W.

(BM21, Lemma 4.3, pp. 25–26, with the kernel-containment repair in the the kernel condition stated here.) Text locators: BM21 line 1040. *Needs:* §0.1; §0.5; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### 4.2 Finite-presentation persistence of a v-cover

Let A=colim A_i and B_i a compatible finitely presented A_i-algebra with cartesian transition maps. If Spec(B_i⊗A)→Spec A is a v-cover, some Spec B_j→Spec A_j is a v-cover.

Descend the proper-surjective/open refinement and its factorization to a finite stage. Use finite presentation and eventual surjectivity for the proper and open factors.

A general noncartesian diagram of maps does not meet the hypothesis.

(BM21, Lemma 4.5, p. 27.) Text locators: BM21 line 1099. *Needs:* §1.6; SchemeAndStackFoundations §0.9; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### 4.3 Excisive functors and aic-v-excision

Use the imported Milnor datum A→B, I≅J⊂B, so A=B×_(B/J)A/I. A ring functor F is excisive if F(A)→F(B)×_(F(B/J))F(A/I) is an equivalence for every such datum. It has aic-v-excision if it sends V→V/p, V_p→κ(p) to a pullback for every aic valuation domain V and prime p.

Define the predicates using the imported pullback-square and coherent-limit interfaces. Keep the common residue field κ(p) and arrow directions fixed.

Aic valuation splitting yields arc-descent and can be tested directly for the cohomological functors of Layers 6–7 (BM21 Theorem 4.1 and §5).

- Export the canonical Milnor-square comparison map.
- Excision implies aic-v-excision by the valuation prime square.
- For p=0 or p=m the required pullback has an identity edge.
- Pointwise limits of excisive functors remain excisive, with the analogous aic assertion.
- For every Milnor datum A=B×_(B/J)A/I and every homomorphism A→D to an integral domain, the square after ordinary tensor base change is a Milnor square (BM21 Lemma 4.13, p. 31; BM21 line 1288). This is the domain-specific base-change assertion used by §4.6; arbitrary base change is not asserted.

**Checks.**

- For a rank-two aic V and middle p the test is exactly F(V)=F(V_p)×_(F(κ(p)))F(V/p).
- The terminal functor satisfies both predicates.
- Take a perfect aic rank-two V with middle p. In the v-topos of perfect schemes, the sheaf image H of h_(Spec V_p)⊔h_(Spec V/p)→h_(Spec V) is proper because this split is not a v-cover. Its prime-square sections at the identity of V fail the excision comparison, although H is a v-sheaf.

For the last API statement, test the node ring A=k[x,y]/(xy)=k[x]×_k k[y]. Base change to the domain D=k[y] gives the square k[y]→k[y], k→k with an identity side; base change to k[x] gives k[x]→k, k[x]→k. Their pullbacks are respectively k[y] and k[x]. These distinguish the two branches without a Tor-independence assumption.

No Tor-independence is imposed on a general Milnor datum.

(BM21, Theorem 4.1 and Proposition 4.2, p. 25.) Text locators: BM21 line 1009. *Needs:* GeneralAlgebraicKTheory §§8.5–8.6; §0.5; §1.1; EnhancedDerivedSheaves §§E0.1–E0.5; EnhancedDerivedSheaves §E0.4; EnhancedDerivedSheaves §E0.8.

### 4.4 Induction on prime intervals

Let P be a class of closed intervals in Spec V containing intervals of length at most one, closed under subintervals and unions of overlapping intervals. Suppose each nonmaximal p extends upward to some [p,q]∈P and each nonzero q extends downward to some [p,q]∈P. Then every interval belongs to P.

For a chain of intervals take the infimum of lower endpoints and supremum of upper endpoints. The two extension properties and overlap closure place the limiting interval in P. Apply Zorn and rule out either endpoint of a maximal interval being internal.

The outward-extension assumptions cannot be replaced just by closure under finite unions.

(BM21, Lemma 4.7, pp. 27–28.) Text locators: BM21 line 1120. *Needs:* §0.6; `ValuationRing`.

### 4.5 Universal descent of the valuation split

If a finitary v-sheaf F has aic-v-excision and cotruncated-compact target, then Spec(V/p)⊔Spec(V_p)→Spec V is of universal F-descent for every aic V.

Reduce an arbitrary base change to a map V→W of aic valuation rings. If pW=W the square is trivial. If p⊊ker(V→W), choose s∈ker minus p: then pW=0, W⊗V_p=0 and W⊗κ(p)=0, leaving the identity square. When ker f⊆p and pW≠W, use the largest prime q over p to write the base-change square with W_q. Paste the prime-splitting squares for W at pW and for W_q at pW_q; their common localization is W_(pW).

All three cases, including p strictly below the kernel, must appear in the proof.

(BM21, Lemma 4.4, pp. 26–27.) Text locators: BM21 line 1073. *Needs:* §4.3; §4.1; §3.10; §2.3.

### 4.6 The arc-descent criterion

Let C be compactly generated by cotruncated objects and F:Sch_qcqs,R^op→C a finitary v-sheaf. The following are equivalent: F is an arc-sheaf; F is excisive for all Milnor squares; F satisfies aic-v-excision.

Arc-descent gives splitting descent; unwind the valuation-split Čech nerve to obtain aic-v-excision. For the converse reduce to affine finitely presented covers over aic V. Use interval induction: rank-one intervals give v-descent, outward extension uses finite-presentation persistence, overlap uses universal aic splitting. For all Milnor squares reduce by v-descent to domains; the domain base-change square remains Milnor. Surjective Milnor squares are already handled by v-descent.

Neither finitariness nor the target condition can be discarded in this proof; the unrestricted result comes from the coherent arc-topos.

(BM21, Theorem 4.1 and Proposition 4.2 p. 25; Proposition 4.8 pp. 28–29; Proposition 4.15 p. 32.) Text locators: BM21 line 1009. *Needs:* §4.3; §4.5; §4.2; §4.4; §3.10; §3.3; §2.2.

### 4.7 Rank-one detection of equivalences

For finitary arc-sheaves F,G with target compactly generated by cotruncated objects, a natural transformation is an equivalence if and only if it is an equivalence on aic valuation domains of rank at most one. It suffices that each such test admits an aic rank-at-most-one extension on which the map is an equivalence. For a finitary space-valued arc-sheaf whose values are all n-truncated for one fixed finite n, contractibility can be tested on these valuation domains; arbitrary unbounded spaces are not covered by this last assertion.

For a space-valued sheaf with a fixed finite truncation bound, use descending induction on that bound: its diagonal fibres have a smaller bound, and the discrete case follows by interval induction as in Lemmas 4.9–4.10. For C-valued equivalences, map out of compact cotruncated generators and apply the bounded space-valued result to fibres, followed by aic-valuation detection. For the extension variant, first descend the diagonal and its lower-truncated fibres; then use the resulting Čech descent along the faithful rank-one extension, as in Corollary 4.12.

This is a statement about sheaves, not a cover by a scheme all of whose components have rank one.

(BM21, Lemmas 4.9–4.10 and Corollaries 4.11–4.12, pp. 29–31.) Text locators: BM21 line 1209. *Needs:* §4.6; §4.4; §3.10; EnhancedDerivedSheaves §§E0.1–E0.5; EnhancedDerivedSheaves §E0.4; EnhancedDerivedSheaves §E0.8.

### Examples

For a field V inside an aic valuation ring W, take p=0. The extended prime pW is zero, whereas the largest prime contracting to p is m_W. Thus W⊗_V V=W localizes at m_W, not at zero. If p lies strictly below ker(V→W), both localized tensor terms vanish; this is the extra case in the corrected splitting proof (BM21 Lemmas 4.3–4.4, pp. 25–27).

### Dependencies

Layer 0, Layer 1, Layer 2, Layer 3, EnhancedDerivedSheaves §§E0.1–E0.8, GeneralAlgebraicKTheory §§8.5–8.6, SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

## Layer 5: The coherent arc-topos and unrestricted excision

### 5.1 A cardinal-bounded arc-site

Fix an uncountable strong-limit cardinal κ>|R|. On a skeleton of qcqs R-schemes admitting a finite affine cover by rings of cardinality <κ, a family covers if a finite subfamily has arc-covering disjoint union. This defines a Grothendieck topology; the test valuation extensions can be taken of size <κ.

Use strong-limit cardinal arithmetic to bound products of small valuation tests. Check identities, composition and base change using the arc-cover calculus.

The bounded site supports coherent-topos arguments and the formal-glueing pushout after arc-sheafification (BM21 §4.3; §8.6 here).

- Covering families have a finite arc-covering subfamily.
- Finite affine covers give a basis for the scheme arc-site.
- The bounded valuation lifting criterion agrees with the unrestricted one on objects of the site.
- A larger uncountable strong-limit cutoff induces the comparison geometric morphism.

**Checks.**

- The empty family covers precisely the empty scheme.
- Spec k→Spec k[ε]/ε² is a cover.
- Spec Q together with all Spec Z_(p) has the valuation lifting property over Spec Z but has no finite covering subfamily, so is not a cover.

The chosen skeleton is small relative to the next universe; arbitrary families are not treated as finite covers.

(BM21, Definition 4.16 and Remark 4.17, pp. 32–33.) Text locators: BM21 line 1346. *Needs:* PrismaticCohomology §2.0; §0.3; `CategoryTheory.GrothendieckTopology`; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### 5.2 Coherence and enough points

The set-valued arc-topos on the bounded site is coherent and has enough points. Each sheafified representable h_X^# is coherent. A sheaf G is coherent exactly when some h_X^# surjects onto G and its relation h_X^#×_G h_X^# is quasi-compact. Pushouts B⊔_A C of coherent objects with A→B monic are coherent.

Apply the coherent-site theorem and Deligne completeness from the topos supplier. For the pushout compute its three relation terms on points; the B×_D B relation is covered by B and A×_C A.

Representables are sheafified before invoking coherence.

(BM21, Lemma 4.19 and Lemma 4.23, pp. 33–35.) Text locators: BM21 line 1381. *Needs:* §5.1; EnhancedDerivedSheaves §E1.3; EnhancedDerivedSheaves §§0.3–0.4, E1.4; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; EnhancedDerivedSheaves §§E2.6–E2.7; SchemeAndStackFoundations §2.3 coherent-topos contract (gap:coherent-topos-pushouts).

### 5.3 Valuation tests for coherent sheaves

For F→G of arc-sheaves of sets, with F quasi-compact and G coherent, surjectivity is equivalent to lifting sections after bounded rank-at-most-one valuation extensions. Between coherent objects, equivalence can be tested on a cofinal class of such valuation rings. For presheaves with coherent sheafifications it suffices to obtain surjectivity or bijectivity after such extensions on presheaf values.

Cover the target and the pulled-back source by sheafified representables and reduce to the definition of arc-cover. Apply the surjectivity test also to the diagonal. Lift a sheaf section locally to a presheaf section before using the assumed test.

The infinite Q and Z_(p) family from the site tests disproves the assertion without source quasi-compactness.

(BM21, Lemmas 4.21–4.22, pp. 33–34.) Text locators: BM21 line 1392. *Needs:* §5.2; PrismaticCohomology §2.0; §0.3; SchemeAndStackFoundations §2.3 coherent-topos contract (gap:coherent-topos-pushouts).

### 5.4 Comparison of cardinal cutoffs

For κ<κ′ uncountable strong limits greater than |R|, inclusion of bounded scheme categories preserves finite limits and covers and induces Sh_arc(κ′)→Sh_arc(κ). Its inverse-image functor takes the arc-sheafification of h_X on the smaller site to the arc-sheafification of h_X on the larger site, for every X of size <κ.

Use the common finite-limit and cover calculus. Compare the plus construction through bounded cover refinements.

No equivalence of the entire two topoi, or unrestricted size independence, is claimed.

(BM21, Remark 4.18, p. 33.) Text locators: BM21 line 1370. *Needs:* §5.1; EnhancedDerivedSheaves §E1.3; EnhancedDerivedSheaves §§0.3–0.4, E1.4; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; EnhancedDerivedSheaves §§E2.6–E2.7.

### 5.5 Milnor squares as arc-sheaf pushouts

For any Milnor datum A=B×_(B/J)A/I, the scheme square Spec(B/J)→Spec B, Spec(A/I)→Spec A becomes a pushout after arc-sheafification, both in sets and in spaces. Consequently every arc-sheaf with values in any infinity-category admitting small limits is excisive.

The closed immersion is monic, so the space pushout is set-valued after sheafification and coherent. Test its map to h_SpecA^# on rank-one valuations, where the Milnor square is locally degenerate. Use the sheafified Yoneda universal property and pointwise mapping-space tests to obtain the arbitrary small-limit-valued assertion.

This assertion needs neither finitariness nor cotruncated compact generation.

(BM21, Proposition 4.24 and Corollary 4.25, pp. 35–36.) Text locators: BM21 line 1471. *Needs:* §4.3; §5.2; §5.3; EnhancedDerivedSheaves §E1.3; EnhancedDerivedSheaves §§0.3–0.4, E1.4; GeneralAlgebraicKTheory §§8.5–8.6; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; EnhancedDerivedSheaves §§E2.6–E2.7; SchemeAndStackFoundations §2.3 coherent-topos contract (gap:coherent-topos-pushouts).

### 5.6 Failure of subcanonicity

For a field k the monomorphism Spec k→Spec k[ε]/ε² is a v-cover and an arc-cover. The representable functor h_A¹ fails descent along it, since its Čech nerve is constant at Spec k while k[ε]/ε²→k is not injective. Thus neither full scheme topology is subcanonical; the perfect-scheme restriction is a different assertion.

Compute all iterated fibre products of the quotient closed immersion. Evaluate h_A¹ to see the nonzero nilpotent disappears.

This counterexample accompanies all uses of sheafified representables.

(BM21, Warning 4.20, p. 33; the nilpotent affine-line counterexample is the direct sheaf-condition check below.) Text locators: BM21 line 1389. *Needs:* §2.2; §1.7; SchemeKTheoryOperations §4.10.

### Examples

For k[ε]/ε²→k, the associated monomorphism of schemes is already a v-cover. Its Čech nerve is constant at Spec k. Sections of the affine-line representable would require k[ε]/ε²≃k, which fails because ε is nonzero. The full scheme v- and arc-sites are therefore not subcanonical (BM21 Warning 4.20, p. 33; BM21 line 1389).

### Dependencies

Layer 0, Layer 1, Layer 2, Layer 4, EnhancedDerivedSheaves §§0.1–0.4, E1.3–E1.6, EnhancedDerivedSheaves §§E2.6–E2.8, GeneralAlgebraicKTheory §§8.5–8.6, SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8, SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3, SchemeKTheoryOperations §4.10.

## Layer 6: Étale cohomology and étale objects

### 6.1 Strictly henselian valuation calculations

An aic valuation domain, every quotient by a prime and every localization at a prime are strictly henselian. For any torsion étale sheaf F on such a spectrum V, RΓ(V,F) identifies with its closed-point stalk. Finite étale V-schemes form FinSet.

Use splitting of monic polynomials and lifting of coprime factors to obtain henselianity and separably closed residue fields. Apply exactness of sections on a strictly henselian local scheme.

The stalk at the closed point, not at an arbitrary point, computes sections.

(BM21, Lemma 5.1 p. 37, Proposition 5.2 pp. 37–38 and Lemma 5.3 p. 38.) Text locators: BM21 line 1519. *Needs:* §0.1; SchemeAndStackFoundations §§0.12–0.14; SchemeAndStackFoundations §0.14; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3.

### 6.2 Strict-henselization detection of descent

Let Λ be a ring and F:Sch_qcqs,R^op→`D(Lambda)^(>=0)` a finitary étale sheaf. If all base changes of f:Y→X to strict henselizations of X are of F-descent, then f is of F-descent. Applying this criterion after every base change detects universal F-descent.

Regard the two sides of the Čech comparison as sheaves on the small étale site of X. Filtered-totalization interchange makes their stalks equal to values on strict henselizations. The enough-points theorem for the étale topos makes the comparison an equivalence.

Ordinary F-descent alone is not asserted to be preserved by arbitrary base change.

(BM21, Lemma 5.1, p. 37.) Text locators: BM21 line 1519. *Needs:* §1.1; §3.3; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3.

### 6.5 Étale objects over aic valuations

Every qcqs separated étale scheme over an aic valuation domain V is a finite disjoint union of principal open subschemes Spec V[1/t]. For rank n, write the specialization chain as 0→1→⋯→n. The category is the full subcategory of Fun(chain^op,FinSet) whose transition maps are injective. Morphisms are all natural transformations. Constructible finite-set sheaves form the full Fun(chain^op,FinSet).

Apply Zariski main theorem and strict henselianity, remove the closed-point components, and induct over the remaining open interval. For arbitrary rank descend to finite-rank subrings by continuity. Classify objects by their stalks and generization maps; retain all sheaf morphisms.

A rank-n valuation has n+1 points; the fold map V⊔V→V is allowed.

(BM21, Proposition 5.7 and proof of Theorem 5.6, pp. 39–40, with the chain and morphisms specified here.) Text locators: BM21 line 1633. *Needs:* §0.4; §6.1; SchemeAndStackFoundations §§1.1–1.10; SchemeAndStackFoundations §§4.11–4.12, 4.16; EtaleCohomologyFoundations §§G.1–G.3; ResolutionOfSingularitiesCharacteristicZero §§5.1–5.2.

### 6.6 Rydh arc-descent for étale objects

The following Cat₁-valued functors are finitary arc-sheaves: separated qcqs étale X-schemes; finite étale X-schemes; and constructible finite-set étale sheaves on X. The last category is equivalently qcqs étale algebraic spaces over X, without a separatedness assumption.

Import effective étale-object descent for universal submersions, giving v-descent by finite-presentation approximation. Use the finite-chain descriptions and glue functors across the shared prime. Apply the criterion in Cat₁.

Object transitions are injections in the separated case, but maps between objects are unrestricted.

(BM21, Theorem 5.6, pp. 39–40.) Text locators: BM21 line 1624. *Needs:* §6.5; §4.6; SchemeAndStackFoundations §§1.1–1.10; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; SchemeAndStackFoundations §0.9; EnhancedDerivedSheaves §§E0.1–E0.5; EnhancedDerivedSheaves §E0.4; EnhancedDerivedSheaves §E0.8; SchemeAndStackFoundations §§1.2–1.10 étale-space contract (gap:constructible-etale-space-descent).

### Examples

At an algebraically closed field, separated qcqs étale schemes form FinSet, including the fold {1,2}→{*}. For a rank-n aic valuation ring there are n+1 chain vertices; injectivity constrains transition maps of objects, not all morphisms of their category (BM21 Theorem 5.6 and Proposition 5.7, pp. 39–40).

### Dependencies

Layer 0, Layer 1, Layer 3, Layer 4, Layer 5, EnhancedDerivedSheaves §§E0.1–E0.8, EnhancedDerivedSheaves §§E2.6–E2.8, SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8, SchemeAndStackFoundations §§1.1–1.10, SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3, §0.5.

## Layer 7: Constructible complexes, differentials and perfect schemes

### 7.3 Constructible complexes on a finite valuation chain

Let V be an aic valuation domain of finite rank n, and Λ any finite commutative ring. The enhanced category Dᵇ_cons(V_et,Λ) is naturally equivalent to Fun((0→⋯→n)^op,Dᵇ_fg(Λ)), where finitely generated cohomology is bounded but finite Tor dimension is not imposed. Splitting the chain at the vertex p identifies it with the pullback of the two interval categories over their common vertex. The same formula holds on fixed cohomological strata; finite Tor dimension is imposed separately on every stalk (BM21 Proposition 5.12 and Theorem 5.13, pp. 42–43; BM21 line 1766).

Use the étale-object description of §6.5 to identify the finite-chain sheaf category. Apply the enhanced derived comparison, then impose bounded finitely generated stalk cohomology. Gluing a pair of functors on the two chains that agree at p gives a unique coherent functor on their union. For arbitrary-rank applications use the constructible continuity supplied in the contracts.

**Checks.**

- At rank zero this is Dᵇ_fg(Λ) on a chain with one vertex, with no extra transition map.
- At rank one the two stalks and one generization map are retained. The skyscraper Λ at the closed point has generization Λ→0; replacing every diagram by a constant diagram loses this sheaf.
- For Λ=Z/4, the stalk complex Z/2 in degree zero is present and has Tor_i^Λ(Z/2,Z/2)=Z/2 for every i≥0. It is excluded only from the finite-Tor subcategory.

*Needs:* §6.5; EtaleCohomologyFoundations §§F.0.1, 0.5–0.6 for constructible categories and continuity; EnhancedDerivedSheaves §§0.1–0.4 and E0.3 for the enhanced functor category. The global arc-hyperdescent theorem itself is the supplied PrismaticCohomology §2.0 interface.

### 7.4 Finitary h-differentials

Fix a characteristic-zero field k and i≥0. On finite-type k-schemes take RΓ_h(X,Ω^i_h), the h-cohomology of the h-sheafification of ordinary Kähler i-forms; extend to qcqs schemes by the finitary left Kan extension along finite-type approximations. The analogous extension of h-sheafified de Rham cohomology is denoted F_dR.

Form sheafification and derived sections using the supplier interfaces. Use affine-transition approximation and cofinality of approximation categories to define the extension independently of the presentation.

Flat differential modules on aic valuations give prime-square splitting and the filtered de Rham arc-sheaf comparison (BM21 Theorem 5.14 and Corollary 5.15).

- Its value on lim X_j is colim RΓ_h(X_j,Ω^i_h).
- For smooth finite-type X, recover RΓ_Zar(X,Ω^i_X/k).
- For ind-smooth affine A, recover Ω^i_A/k concentrated in degree zero.
- The Hodge associated graded is the corresponding h-form functor shifted by −i, with the finite-dimensional approximations controlling the filtration.

**Checks.**

- F₀(Spec k)=k and F_i(Spec k)=0 for i>0.
- F₁(Spec k[t])=k[t]dt in degree zero.
- The reduction Spec k→Spec k[ε]/ε² is an h-cover, so F₀ is k, rather than the naive dual-number ring.

The construction is cohomological h-sheafification, not the naive module Ω^i_A on every singular affine.

(BM21, §5.3, Theorem 5.14 and Corollary 5.15, pp. 43–44.) (HJ14, Corollary 6.5 p. 465 and Proposition 6.10 p. 466.) Text locators: BM21 line 1811, HJ14 line 738. *Needs:* §3.2; §1.3; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; EnhancedDerivedSheaves §§E0.1–E0.5; EnhancedDerivedSheaves §E0.4; EnhancedDerivedSheaves §E0.8; EnhancedDerivedSheaves §E1.3; EnhancedDerivedSheaves §§0.3–0.4, E1.4; DerivedModuleAlgebra §0.7; DerivedModuleAlgebra §0.12; DerivedModuleAlgebra §0.14.

### 7.5 Smooth h/Zariski comparison for differential forms

Let k have characteristic zero, i≥0 and X be a smooth separated finite-type k-scheme. The natural comparison RΓ_Zar(X,Ω^i_X/k)→RΓ_h(X,Ω^i_h) is an equivalence. By Zariski descent the same comparison holds for smooth finite-type qcqs k-schemes. Consequently the finitary h-form functor on an ind-smooth affine k-algebra A is Ω^i_A/k in degree zero.

Use characteristic-zero resolution to refine h-covers by smooth covers and abstract blowup diagrams. Rational coefficients permit finite Galois descent, so comparison with the étale/abstract-blowup (eh) topology preserves cohomology, as in HJ14 Proposition 6.1. For smooth schemes, ordinary differential forms satisfy the eh comparison with Zariski cohomology; the resolution/blowup and étale descent argument gives HJ14 Corollary 6.5. Apply it to the natural comparison, then glue affine opens by Zariski descent. On smooth affines, quasi-coherence kills positive Zariski cohomology. Pass to filtered colimits using the defined finitary extension and the cotangent/exterior-power colimit interfaces.

For A=k[t], degree-one h-form cohomology is k[t]dt in degree zero. The smoothness hypothesis cannot be replaced by an assertion identifying naive Kähler forms on all singular rings.

(HJ14, Setting and Notation p. 452; Proposition 6.1 pp. 464–465 and Corollary 6.5 p. 465.) (BM21, §5.3 and proof of Theorem 5.14, p. 43.) Text locators: HJ14 line 693, BM21 line 1811. *Needs:* §7.4; SchemeAndStackFoundations §§4.11–4.12, 4.16; EtaleCohomologyFoundations §§G.1–G.3; ResolutionOfSingularitiesCharacteristicZero §§5.1–5.2; EnhancedDerivedSheaves §§0.3–0.4, E1.4; DerivedModuleAlgebra §0.11; DerivedModuleAlgebra §0.14; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; §0.7 smooth valuation approximation.

### 7.6 Arc-descent of characteristic-zero differential cohomology

The functors F_i and F_dR above are arc-sheaves on qcqs k-schemes. On an aic valuation k-algebra V, Ω^i_V/k is flat, p=p² for each prime p and Ω^i_(V/p)/k=Ω^i_V/k⊗V/p, so the differential prime square is a homotopy pullback.

Apply §7.5 and the smooth valuation approximation in §0.7 to identify valuation values with ordinary forms. Tensor the valuation square with the flat exterior-power module; use idempotence of p for quotient compatibility. For de Rham use the Hodge filtration on each finite-dimensional approximation; extend the resulting h-sheaf functor finitarily as in the forms construction.

Characteristic zero is retained; no assertion of naive Kähler arc-descent on arbitrary rings is made.

(BM21, Theorem 5.14 and Corollary 5.15, pp. 43–44.) Text locators: BM21 line 1811. *Needs:* §7.4; §7.5; §4.6; §0.5; SchemeAndStackFoundations §§4.11–4.12, 4.16; EtaleCohomologyFoundations §§G.1–G.3; ResolutionOfSingularitiesCharacteristicZero §§5.1–5.2; DerivedModuleAlgebra §0.7; DerivedModuleAlgebra §0.8; DerivedModuleAlgebra §0.11; DerivedModuleAlgebra §0.12; DerivedModuleAlgebra §0.14; §0.7 smooth valuation approximation.

### 7.7 Perfect complexes on perfections satisfy arc-hyperdescent

For p prime, X↦Perf(X^perf) on qcqs F_p-schemes is a hypercomplete arc-sheaf of symmetric monoidal stable infinity-categories. The same holds for every fixed Tor-amplitude stratum.

Reuse, rather than reprove, perfect-scheme v-hyperdescent and its bounded-stratum continuity. The prime-splitting map V→V_p×V/p is descendable because V is a finite homotopy limit of modules over this product. Use Tor-independence of tensor products of perfect F_p-algebras to identify the derived and ordinary Čech nerves; apply descendability and split the nerve. Recover the full category with a uniform Tor bound from level zero.

D_qc hyperdescent is not inferred; Tor-amplitude replaces cohomological amplitude here.

(BM21, Theorem 5.16, pp. 44–45.) (BS17, Lemma 3.16 p. 14; Theorem 11.2 p. 40 and Theorem 11.15 p. 43, with proof pp. 46–47.) Text locators: BM21 line 1843, BS17 line 601. *Needs:* SchemeKTheoryOperations §4.10; SchemeAndStackFoundations §§0.24–0.25; §4.6; §0.5; EnhancedDerivedSheaves §E1.3; EnhancedDerivedSheaves §§0.3–0.4, E1.4; EnhancedDerivedSheaves §E1.6; EnhancedDerivedSheaves Layer E5:descent.

### 7.8 Canonical covers of perfect schemes

For a qcqs algebraic space Y/F_p, the set-valued functor X↦Hom(X^perf,Y) is an arc-sheaf. A morphism of qcqs perfect F_p-schemes is an arc-cover if and only if it is a universally effective epimorphism in that category. The Hom functor is finitary when Y is finite type.

Use the algebraic-space Tannaka equivalence Hom(T,Y)=Fun^⊗_ex(Perf(Y),Perf(T)); use the exact SchemeAndStackFoundations reconstruction contract above. Symmetric monoidal limits are computed on the underlying categories, yielding representable descent. For the converse reduce to an aic rank-one target and a product of valuation sources; failure of the necessary endpoint lift contradicts the equalizer condition for maps to perfect affine schemes.

The canonical-topology characterization concerns singleton qcqs maps, not a claim that its arbitrary families admit finite subcovers.

(BM21, Theorem 5.17 and Remark 5.18, pp. 45–46.) (BH16, Theorem 1.5, p. 2; conventions pp. 4–5.) Text locators: BM21 line 1875, BH16 line 86. *Needs:* §7.7; §5.3; §3.10; SchemeAndStackFoundations §§1.1–1.10; SchemeAndStackFoundations §1.4 reconstruction contract (gap:algebraic-space-perf-tannaka).

### Examples

With Λ=Z/4, the constant constructible sheaf Z/2 in degree zero belongs to Dᵇ_cons but has infinite Λ-Tor dimension. The alternating Z/4 resolution with maps multiplication by 2 witnesses its nonzero Tor in arbitrarily high degrees. For differentials, h-sheafification on k[ε]/ε² gives F₀=k, and on k[t] gives F₁=k[t]dt (BM21 §§5.2–5.3, pp. 40–44).

### Dependencies

Layer 0, Layer 1, Layer 3, Layer 4, Layer 5, Layer 6, DerivedModuleAlgebra §§0.4, 0.7–0.8, 0.11–0.12 and 0.14; DerivedDeRhamCohomology §§2.1–2.21, EnhancedDerivedSheaves §§E0.1–E0.8, EnhancedDerivedSheaves §§0.1–0.4, E1.3–E1.6, EnhancedDerivedSheaves §§E2.6–E2.8, EnhancedDerivedSheaves §E5:abstract.5 and Layer E5:descent, EtaleCohomologyFoundations §§F.0.1, 0.5–0.7, SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8, SchemeAndStackFoundations §§1.1–1.10, SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3, §0.5, SchemeKTheoryOperations §4.10.

## Layer 8: Formal glueing and henselian rigidity

### 8.1 Formal glueing data

A formal glueing datum is a ring map A→B and a finitely generated ideal I⊂A such that A/I^n→B/I^nB is an isomorphism for every n≥1. Its open pieces are U=Spec A minus V(I) and U_B=U×_A B. The completion map A→Â_I gives such a datum.

Package the ideal, quotient equivalences and their compatibility as a single datum. Use the finitely generated ideal completion theorem to identify all quotient rings.

The datum determines the sheaf-theoretic formal glueing square (BM21 Theorems 6.4 and 6.6). This theorem also enters the punctured tilting comparison through CS24’s proof of Theorem 2.2.7.

- Export each quotient isomorphism and compatibility with n→m.
- The I-adic completion map supplies the datum without a noetherian assumption.
- A→B base-changed along any A→C remains a formal datum for IC.
- U_B is the pullback of U and is qcqs because I is finitely generated.
- For I=0 the datum is equivalent to A→B being a ring isomorphism.
- For I=A every map A→B is a datum, since every required quotient is the zero ring.

**Checks.**

- The identity map gives a datum for every finitely generated I.
- Z→Z_p with I=(p) has quotient Z/p^n on both sides; the open pieces are Spec Z[1/p] and Spec Q_p.
- A rank-two valuation completion may kill a nonzero height-one prime; being a datum does not imply that A→B is injective.
- For k[x,y], I=(x,y) gives D(x)∪D(y), which strictly contains D(x).

For I=(f₁,…,f_r), U is the union of D(f_i), not the intersection and not one chosen principal open.

(BM21, Definition 1.14 p. 6 and §6.1 pp. 47–48.) Text locators: BM21 line 228. *Needs:* `AdicCompletion`; `IsAdicComplete`; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### 8.4 Completion of rank-one valuation domains

For a rank-one valuation domain V and nonzero nonunit t, the t-adic completion V̂ is again rank one and V→V̂ is a valuation extension. Completeness is independent of the chosen nonzero nonunit. If V is aic, V̂ is aic.

Realize rank one by a real-valued nonarchimedean absolute value and complete its fraction field. Identify the completion of the unit ball with V̂ and check locality and injectivity. Use preservation of algebraic closedness under completion for the aic assertion.

The statement excludes t=0 and units; the rank-two completion counterexample below prevents extrapolation.

(BM21, Proposition 6.2 p. 47; BS22 Remark 8.9 p. 68; CS24 proof of Lemma 2.2.3 p. 19.) Text locators: BM21 line 1946. *Needs:* ClassicalAdicEtaleCohomology §6.1; §0.1; AdicSpaces Layers 0–1.

### 8.5 Completion and the open complement form an arc-cover

For finitely generated I⊂A, Spec Â_I⊔(Spec A minus V(I))→Spec A is an arc-cover. There is a rank-two valuation domain V and principal I for which it is not a v-cover: choosing nonzero f in m minus the middle prime p makes p lie in every f^nV and hence in the completion kernel.

After faithfully flat completion of a rank-one test, its image ideal is either the unit ideal or is contained in the maximal ideal and the map extends to Â_I. For the negative example a faithful valuation extension cannot factor through the open or through a quotient killing p.

Finite generation is used to choose one pseudouniformizer controlling the image of all generators.

(BM21, Proposition 6.3 p. 47 and Example 6.8 pp. 49–50.) Text locators: BM21 line 1959. *Needs:* §8.1; §8.4; PrismaticCohomology §2.0; §0.5.

### 8.6 Formal glueing for arc-sheaves

For a formal datum (A→B,I), every arc-sheaf F valued in an infinity-category with small limits satisfies F(A)≃F(B)×_(F(U_B))F(U). Equivalently the square of sheafified representables is a pushout in both the ordinary and space-valued arc-topoi. The finitary cotruncated-compact version also follows directly from rank-one detection.

The pushout along U_B→Spec B is coherent because this is a quasi-compact open immersion. Test the map to h_SpecA^# on complete rank-one valuations. Outside V(I) it is already an isomorphism; in the remaining case the quotient identifications and completeness give a unique extension. Apply mapping-space Yoneda to obtain the small-limit-valued assertion.

The sheafified-pushout proof removes finitariness and target truncation conditions.

(BM21, Theorems 6.4, 6.6 and Corollary 6.7, pp. 48–49.) Text locators: BM21 line 1976. *Needs:* §8.1; §8.5; §5.2; §5.3; §4.7; EnhancedDerivedSheaves §E1.3; EnhancedDerivedSheaves §§0.3–0.4, E1.4; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; EnhancedDerivedSheaves §§E2.6–E2.7; SchemeAndStackFoundations §2.3 coherent-topos contract (gap:coherent-topos-pushouts).

### 8.7 Rigidity on henselian pairs

A ring functor F on R-algebras is rigid if F(A)→F(A/J) is an equivalence for every henselian pair (A,J). Henselian pair is the imported global pair notion, not merely a henselian local ring.

Define rigidity with the supplier’s henselian-pair predicate and functorial quotient map. Keep the quantification over all R-algebras and all henselian ideals.

Rigidity compares punctured henselian spectra with completions and combines with proper base change in Layer 12 (BM21 Corollary 6.10; CMM21 proof of Theorem 6.3).

- Supply the specified equivalence for each henselian pair.
- Pointwise limits of rigid functors are rigid.
- The equivalence is natural for maps of henselian pairs.
- Successive henselian quotients yield compatible composite equivalences.

**Checks.**

- Every constant functor is rigid.
- The finite étale category is rigid by SchemeAndStackFoundations §0.14.
- The underlying ring functor is not rigid: Z_p→F_p is a henselian quotient and not a ring isomorphism.

There is no finite-generation assumption in the rigidity predicate.

(BM21, Definition 6.9, p. 50.) Text locators: BM21 line 2076. *Needs:* SchemeAndStackFoundations §§0.12–0.14; EnhancedDerivedSheaves §§E0.1–E0.5; EnhancedDerivedSheaves §E0.4; EnhancedDerivedSheaves §E0.8.

### 8.8 Punctured completion for rigid arc-sheaves

Let (A,I) be henselian with I finitely generated and F:Sch_qcqs,A^op→`D(Lambda)^(>=0)` a finitary arc-sheaf rigid on A-algebras. Then F(Spec A minus V(I))→F(Spec Â_I minus V(IÂ_I)) is an equivalence. In particular this holds for every torsion étale sheaf G on the punctured spectrum, after pullback to the completion.

Use the formal pullback and rigidity to compare the two whole affine terms through A/I. In the ambient stable derived category, the homotopy fibres of the affine and open comparison maps agree, which yields the punctured conclusion. Extend G by zero to Spec A and apply torsion arc-descent and full Gabber rigidity.

This argument does not establish the analogous category-valued finite étale comparison; use its separate approximation input.

(BM21, Corollary 6.10 and Theorem 6.11, p. 50.) Text locators: BM21 line 2080. *Needs:* §8.7; §8.6; SchemeAndStackFoundations §2.15; PrismaticCohomology §2.0; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3.

### 8.9 Bounded-torsion and support refinements

If A is a-henselian with bounded a-power torsion, U is an open with D(a)⊂U⊂Spec A, and F is a torsion abelian étale sheaf on U, then RΓ(U,F)≃RΓ(U×_A Â_a,F). For every closed Z⊂Spec A/a and torsion F on Spec A, the analogous support complexes agree. For noetherian I-henselian A and arbitrary ideal I, the I-adic support comparison also holds.

Import the bounded-torsion henselian approximation for the open U, including the idempotent/finite étale comparison. Use the localization triangle with the whole affine Gabber comparison to obtain cohomology with supports. For noetherian A use finite generation of I and the multi-ideal approximation.

U need not equal D(a); the support Z can be any closed subset of the special fibre.

(CS24, Lemma 3.1.2 p. 30.) (BC22, Theorem 2.3.4 and Corollary 2.3.5(e), pp. 29–31.) Text locators: CS24 line 1207, BC22 line 1209. *Needs:* §8.8; SchemeAndStackFoundations §2.15; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; AdicEtaleGeometry §A1.0.5 and its finite-ideal approximation contract above; PerfectoidSpaces §P3.20; AdicEtaleGeometry §A1.0.5 and its finite-ideal approximation contract above; PerfectoidSpaces §§P3.9–P3.12.

### Examples

For I=(x,y) in k[x,y], the punctured spectrum is D(x)∪D(y). A formal glueing datum must keep this whole union. For Z→Z_p along (p), the generic open is Spec Z[1/p], and its pullback is Spec Q_p. Taking I=0 gives B=A; taking I=A makes both open pieces the whole spectrum, so the glueing square has identity horizontal maps (BM21 Definition 1.14, p. 6; Theorem 6.4, p. 48).

### Dependencies

Layer 0, Layer 2, Layer 4, Layer 5, Layer 6, EnhancedDerivedSheaves §§E0.1–E0.8, EnhancedDerivedSheaves §§0.1–0.4, E1.3–E1.6, EnhancedDerivedSheaves §§E2.6–E2.8, AdicEtaleGeometry §A1.0.5 and its finite-ideal approximation contract above; PerfectoidSpaces §§P3.9–P3.12 and P3.20, SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8, SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3, AdicSpaces Layers 0–1.

## Layer 9: The arc_t-topology and rigid generic fibres

### 9.1 The arc_t-topology

Fix t∈A. A map R→S of A-algebras is an arc_t-cover if every map R→V to a rank-one valuation domain where t is nonzero and noninvertible admits a lifting R→S→W after a valuation extension V→W of rank one. Finite families are tested by their product. It suffices to test complete aic V and permit complete aic W.

Use the same lifting and finite-family topology calculus as for arc-covers, restricting to pseudouniformizer tests. Complete and take aic extensions without losing rank one or the pseudouniformizer.

These covers govern completed-generic-fibre cohomological descent and the prismatic étale comparison on arc_p-local objects (BM21 Corollary 6.17; BS22 Theorem 9.1).

- Arc_t-covers compose and are stable under base change of A-algebras.
- Every arc-cover is an arc_t-cover.
- Complete aic rank-one pseudouniformizer tests suffice.
- If R→S is an arc_t-cover, then R→S×R/t×R[1/t] is an arc-cover.

**Checks.**

- The identity is a cover, including when the testing class is empty.
- R→R̂_t is an arc_t-cover.
- For R a rank-one valuation domain and t a nonzero nonunit, R→R[1/t] is not an arc_t-cover.
- If t is a unit in A, every map is an arc_t-cover, because there are no tests.

Tests where t=0 or t is a unit are excluded.

(BM21, Definition 6.14 p. 51 and Definition 6.19 p. 53.) Text locators: BM21 line 2126. *Needs:* PrismaticCohomology §2.0; §8.4; §0.3; `CategoryTheory.GrothendieckTopology`.

### 9.2 Arc_t-covers on Tate pairs

For a morphism of Tate (Z((t)),Z[[t]])-algebras (A,A⁺)→(B,B⁺), A⁺→B⁺ is an arc_t-cover exactly when Spa(B,B⁺)→Spa(A,A⁺) is surjective on generic rank-one points, equivalently on the associated Berkovich spectra.

Identify generic points with rank-one t-continuous valuation maps on the plus ring up to faithful refinement. Translate lifts and refinements into the definition of arc_t-cover.

Surjectivity on all higher-rank adic points is a stronger assertion and is not substituted for generic-point surjectivity.

(BM21, Example 6.15, p. 51.) Text locators: BM21 line 2130. *Needs:* §9.1; AdicSpaces Layers 0–1; AdicSpacesPartII §R0.3.

### 9.3 Arc_t-equivalences

A map f:R→R′ of A-algebras is an arc_t-equivalence when precomposition Hom_A(R′,V)→Hom_A(R,V) is bijective for every complete aic rank-one valuation domain V with t a pseudouniformizer.

Define the predicate using actual ring hom sets and the specified complete test class. Closure under composition follows from bijectivity; tensor-product base change follows from the universal property of the tensor product.

The equivalences preserve E_t under changes of model and identify the shrinking-tube colimit with a closed fibre (BM21 Propositions 6.21 and 7.7).

- These equivalences compose and are stable under base change.
- An arc_t-equivalence is an arc_t-cover and its diagonal is also a cover.
- R→R/(t-power torsion) is an arc_t-equivalence.
- R→R̂_t is an arc_t-equivalence.
- R→the integral closure of its image in R[1/t] is an arc_t-equivalence.

**Checks.**

- Every identity is an equivalence.
- Z_p[x]/(px)→Z_p kills p-power torsion and is an arc_p-equivalence.
- An algebraically closed field admitting t as nonzero scalar is not itself a test object: t must be a nonunit.
- V→V[1/t] fails the test on V for a complete aic rank-one V with pseudouniformizer t.

The direction of precomposition is from R′-maps to R-maps.

(BM21, Definition 6.19 and Example 6.20, p. 53.) Text locators: BM21 line 2203. *Needs:* §9.1; §0.1; §8.4.

### 9.4 Cohomology of the completed generic fibre

Fix a torsion abelian sheaf G on Spec A and t∈A. Define E_t(R)=RΓ((Spec R̂_t[1/t])_et,G) in `D(Z)^(>=0)` for A-algebras R. Punctured henselian comparison identifies this with the same expression using t-henselization, hence E_t commutes with filtered colimits.

Pull G back from A to the completed localized algebra. Use Fujiwara–Gabber and filtered-colimit compatibility of henselization and étale cohomology.

This is the algebraic functor in generic-fibre Künneth and in descent for RΓ(Spec S[1/p],Z/p^n) on p-complete S (BM21 Proposition 6.22; GR24 Theorem 6.1).

- Replace R̂_t[1/t] by R^h_t[1/t] for this cohomology functor.
- The canonical colimit comparison is an equivalence.
- E_t(R/t)=0 and E_t(R[1/t])=0.
- A-algebra maps induce pullback maps compatible with the henselian comparison.

**Checks.**

- For complete aic rank-one V with t pseudouniformizer and constant Λ, E_t(V)=Λ in degree zero.
- If t=0 in R, E_t(R)=0.
- If t is invertible in R, the t-adic completion is zero and E_t(R)=0.
- For an A-field K with t invertible, E_t(K)=0, even though RΓ(Spec K,Λ) may be nonzero.

Finitariness is not justified by commuting naive completion with filtered colimits.

(BM21, Construction 6.16 and Corollary 6.17, pp. 51–52.) Text locators: BM21 line 2138. *Needs:* §8.8; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; `AdicCompletion`; §3.2.

### 9.5 Arc_t-hyperdescent of the completed generic fibre

The functor E_t is a finitary hypercomplete arc_t-sheaf. In particular, for a hypercover by t-complete A-algebras R→S•, RΓ(Spec R[1/t],G)≃lim RΓ(Spec S•[1/t],G).

Use the formal square and Gabber to express E_t through three functors supplied to satisfy arc-descent. Adjoin R/t and R[1/t] to an arc_t-cover to make an arc-cover; E_t kills both added terms. Use uniform cohomological boundedness below for hyperdescent.

The rings in a formal hypercover are completed where required; the first assertion itself is on all A-algebras.

(BM21, Corollary 6.17, pp. 51–52.) Text locators: BM21 line 2142. *Needs:* §9.4; §9.1; PrismaticCohomology §2.0; §8.6; SchemeAndStackFoundations §2.15; EnhancedDerivedSheaves §§E2.6–E2.7; EnhancedDerivedSheaves §E2.6.

### 9.7 Total integral closure in a principal localization

For t a nonzerodivisor of A, let A^tic be the subring of A[1/t] consisting of x for which there exists c≥0 with t^c x^n∈A for every n≥0. This contains the integral closure of A; it equals it when A is noetherian. The map A→A^tic is an arc_t-equivalence.

Check closure under sum and product using the uniform denominator bound and binomial expansions. In the noetherian case use finite generation of the module generated by all powers of x. A rank-one valuation with nonzero t admits no negative-valuation element whose powers have a uniform t-denominator bound.

Two models with the same total integral closure satisfy the excision comparison of §9.10 (BM21 Theorem 6.25).

- Membership is exactly the single uniform denominator condition.
- An integral element has bounded denominators in all powers.
- For noetherian A, total integral closure agrees with ordinary integral closure in A[1/t].
- Restriction on complete aic rank-one t-tests is bijective.

**Checks.**

- A rank-one valuation domain V with t pseudouniformizer is totally integrally closed in Frac V.
- For a domain A and nonzero nonunit t, t^−1 is not totally integral over A: a uniform bound would make some negative power of t integral as an element of A, hence t a unit.
- In Z_p, each p^−n has a denominator bound depending on n, but p^−1 has no uniform bound for all its powers.
- If t is a unit, the localization and total integral closure both equal A.

The bound c is uniform in n; allowing c to depend on n would give the entire localization.

(BM21, Example 6.20(4), p. 53.) Text locators: BM21 line 2207. *Needs:* §9.3; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### 9.8 Invariance under arc_t-equivalences

Every E_t sends an arc_t-equivalence R→R′ to an equivalence. In particular it is invariant under removal of t-power torsion, completion, integral closure and, for t-torsion-free input, total integral closure.

Apply descent to R→R′. Use the uniqueness of maps to test valuations to see that the diagonal R′⊗_R R′→R′ and its iterates are covers and become equivalences after descent. Collapse the Čech nerve.

An arbitrary arc_t-cover need not induce an equivalence.

(BM21, Proposition 6.21, p. 53.) Text locators: BM21 line 2218. *Needs:* §9.5; §9.3; §9.7.

### 9.9 Universal homeomorphism invariance

Every small-limit-valued v-sheaf on qcqs schemes sends universal homeomorphisms to equivalences.

A universal homeomorphism and its diagonal are v-covers. Use descent twice; the diagonal immersion makes the second Čech diagram constant, collapsing the first.

This includes purely inseparable extensions and nilimmersions.

(BM21, Proposition 6.24, p. 54.) Text locators: BM21 line 2270. *Needs:* §1.7; §1.1; EnhancedDerivedSheaves §E1.3; EnhancedDerivedSheaves §§0.3–0.4, E1.4.

### 9.10 Excision for models with common total integral closure

Let A→B carry a nonzerodivisor t of A to a nonzerodivisor of B and induce A^tic≃B^tic. For every small-limit-valued arc-sheaf F, the square F(A)→F(A/t), F(B)→F(B/t) is cartesian. In particular this applies to integral maps of t-torsion-free rings inducing an isomorphism after inverting t.

Factor through A′=B×_(B/t) A/t; the second square is Milnor. Show A→A′ integral using the uniform denominator bound on powers of elements of B. On the generic fibre it is an isomorphism; on the special fibre A′/tA′→A′/tB has nil kernel, sufficient for a universal homeomorphism. Apply v-invariance and Milnor excision.

Only elementwise nilpotence of the special-fibre kernel is needed; do not assert a uniform nilpotence exponent in arbitrary nonnoetherian rings.

(BM21, Theorem 6.25, pp. 54–55.) Text locators: BM21 line 2283. *Needs:* §9.7; §5.5; §9.9; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

### Examples

For a complete aic rank-one V with t a pseudouniformizer, E_t(V,Λ)=Λ in degree zero. If t=0, localization by t gives the zero ring; if t is a unit, t-adic completion gives the zero ring. Both cases yield E_t=0. This accounts for the two boundary factors R/t and R[1/t] in the cover comparison (BM21 Corollary 6.17 and Example 6.20, pp. 52–53).

### Dependencies

ClassicalAdicEtaleCohomology §§2.5–2.6 and 6.3, AdicSpacesPartII §§R0.3, R0.9 and R0.19, Layer 0, Layer 1, Layer 2, Layer 3, Layer 5, Layer 6, Layer 8, EnhancedDerivedSheaves §§0.1–0.4, E1.3–E1.6, EnhancedDerivedSheaves §§E2.6–E2.8, SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8, SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3, §0.5, AdicSpaces Layers 0–1.

## Layer 10: Künneth and affinoid vanishing

### 10.0 Native affinoid and coefficient predicates

For nontrivially normed ultrametric K and a commutative K-algebra A, `HasAffinoidPresentation` means that for some n≥0 there is a surjective K-algebra homomorphism from the native unit-polyradius restricted-series subring in n variables to A. Completeness and algebraic closedness of K enter the vanishing theorems, not this bare presentation predicate. It is the finite-presentation description of the affinoid carrier supplied by RigidAnalyticGeometry §1.1 (BM21 Notation 7.2, p. 56; BM21 line 2326).

- Transport a presentation along a K-algebra isomorphism, with the chosen scalar embedding respected.
- A further quotient has a presentation by composition of the surjections.
- A Tate algebra has its identity presentation; no choice of norm on A is part of the predicate.

**Checks.**

- At n=0 the Tate algebra is K; its identity presents K, excluding a convention that requires a positive number of variables.
- The unit-ideal quotient has value 0 and gives the zero algebra a presentation; its spectrum and every cohomology group are empty/zero.
- The quotient K⟨T⟩/(T²) has the nonzero square-zero class of T. It remains an affinoid algebra; a definition imposing reducedness would discard it.

For an abelian sheaf F on the native small étale site of X, `IsTorsionEtaleSheaf` means that every section over every affine étale X-object is killed by some positive integer. The integer may depend on the section. Since affine étale objects are quasi-compact and form a basis, this is the usual torsion-sheaf condition. Its API is closure under subobjects, quotients and extensions; compatibility with étale restriction; and detection on any affine étale basis (EtaleCohomologyFoundations §F.0.1; BM21 Theorem 7.3, p. 56).

**Checks.**

- The zero sheaf satisfies the condition with exponent 1, and the constant Z/6 sheaf has 6x=0 on each affine test.
- Over an algebraically closed field, the constant Z sheaf has the section 1, for which n·1=n≠0 for every positive n; it fails the predicate.
- The direct sum of the constant Z/ℓ^r sheaves for r≥1 is torsion: each section on a quasi-compact test has finite support and is killed by ℓ raised to its largest occurring r. No one exponent works for all sections. This distinguishes sectionwise torsion from a common annihilator.

For an integer ℓ, `IsPrimePowerTorsionEtaleSheaf` requires each such section to be killed by ℓ^n for some n≥0. Primality and residue invertibility are imposed separately in the sharper theorem (BM21 Theorem 7.3(2), p. 56; BM21 line 2340).

- If ℓ is prime, ℓ-primary torsion implies the torsion predicate, since ℓ^n>0 for every n.
- Subobjects, quotients and extensions retain ℓ-primary torsion; for an extension the two required powers multiply to ℓ^(a+b).
- Étale restriction preserves ℓ-primary torsion, and it is detected on affine étale coverings.

**Checks.**

- The constant Z/ℓ² sheaf satisfies ℓ²x=0 and supplies sections not killed by ℓ.
- For distinct primes ℓ and r, multiplication by ℓ is invertible on the constant Z/r sheaf. Its section 1 is never killed by ℓ^n, so it is torsion but fails this ℓ-primary predicate.
- For ℓ=1 the condition is x=0; only the zero sheaf satisfies it. For ℓ=0 every sheaf passes using n=1, so the theorem explicitly requires ℓ prime.

*Needs:* Mathlib restricted series, small affine étale site and sheaf cohomology; Tau Ceti's coefficient algebra structure on restricted series; RigidAnalyticGeometry §1.1; EtaleCohomologyFoundations §F.0.1.

### 10.1 Vanishing on finite étale rational domains

Fix a complete algebraically closed nonarchimedean field K with nontrivial valuation. Let f₁,…,f_m,g generate the unit ideal of the n-variable Tate algebra T_n over K. If A is finite étale over T_n⟨f₁/g,…,f_m/g⟩, then for every constant torsion abelian group Λ, H^q(Spec A,Λ)=0 for q>n.

Use a positive uniform lower bound for max(|f₁|,…,|f_m|,|g|), approximate by polynomials, and include a power of π among the numerators. The algebraic model R₀ has generic fibre K[X₁,…,X_n,1/g] and bounded π-power torsion; descend A through henselization using the imported finite étale approximation. Apply Fujiwara–Gabber and express the descended algebra as a filtered colimit of n-dimensional finite-type K-algebras. Use affine Artin–Grothendieck vanishing, including its characteristic-primary Artin–Schreier case.

The regression pair (X,1) at X=0 makes min zero although the ideal is the unit ideal; max is the correct bound.

(BM21, Lemma 7.8, pp. 58–59, using the maximum estimate above.) Text locators: BM21 line 2450. *Needs:* AdicEtaleGeometry §A1.0.5 and its finite-ideal approximation contract above; §8.8; EtaleCohomologyFoundations §F.3; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; AdicSpacesPartII §R0.3; EtaleCohomologyFoundations §F.3 characteristic-primary contract (gap:affine-characteristic-primary-cohomology).

### 10.2 Rational Mayer–Vietoris

Fix a complete algebraically closed nonarchimedean field K with nontrivial valuation. For A topologically finite type over K, f,g∈A generating the unit ideal and any torsion étale sheaf F, the rational localizations A⟨f/g⟩, A⟨g/f⟩ and A⟨f/g,g/f⟩ give the corresponding homotopy-pullback square of algebraic étale cohomology.

Choose a common bounded model A₀ with f,g generating an open ideal. Use the arc_π-cover A₀→A₀[T]/(fT−g)×A₀[U]/(gU−f). The two self-intersection multiplications are arc_π-equivalences, reducing Čech descent to the four-term square.

The unit-ideal condition is on A, while the rescaled model generators need only generate an open ideal.

(BM21, Proposition 7.6, pp. 57–58.) Text locators: BM21 line 2382. *Needs:* §9.5; §9.8; AdicSpacesPartII §R0.3.

### 10.3 Cohomology of shrinking rational tubes

Fix a complete algebraically closed nonarchimedean field K with nontrivial valuation. Fix a nonzero topologically nilpotent π∈K. For R topologically finite type over K, f∈R and torsion étale F on Spec R, colim_r RΓ(Spec R⟨f/π^r⟩,F)≃RΓ(Spec R/f,F).

Rescale f into a bounded integral model R₀. Use S_r=R₀[U_r]/(π^rU_r−f), with U_r↦πU_(r+1). Every map colim S_r→a complete rank-one π-test kills f and U_r by π-adic separatedness; thus colim S_r→R₀/f is an arc_π-equivalence. Apply finitariness and invariance of E_π.

The shrinking direction is r increasing, so the bound |f|≤|π|^r tends to zero.

(BM21, Proposition 7.7, p. 58.) Text locators: BM21 line 2430. *Needs:* §9.4; §9.8; AdicSpacesPartII §R0.3.

### 10.5 Künneth over an aic rank-one valuation

Let V be aic rank one, π a pseudouniformizer and ℓ a prime invertible in its residue field. The functor E_π(−,F_ℓ) on V-algebras is symmetric monoidal: E_π(R)⊗_(F_ℓ)E_π(R′)≃E_π(R⊗_V R′).

Reduce each variable separately to aic rank-one valuation tests; use finite totalizations in each bounded cohomological range to justify tensor/descent interchange. In the nondegenerate pseudouniformizer case each factor has cohomology F_ℓ. Use the formal square for R⊗_V R′: ordinary field Künneth computes generic and special corners, while valuation base change computes the whole affine corner.

Invertibility only in the fraction field is insufficient in mixed characteristic; residue-characteristic p coefficients are excluded.

(BM21, Proposition 6.22 and Remark 6.23, pp. 53–54.) Text locators: BM21 line 2228. *Needs:* §9.5; §4.7; §8.6; ClassicalAdicEtaleCohomology §6.3; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; EnhancedDerivedSheaves §E1.3; EnhancedDerivedSheaves §§0.3–0.4, E1.4.

### 10.6 Künneth for affinoid algebras

Let K be complete algebraically closed nonarchimedean with nontrivial valuation, and ℓ prime to its residue characteristic. For topologically finite-type K-algebras A,B, RΓ(Spec A,F_ℓ)⊗RΓ(Spec B,F_ℓ)≃RΓ(Spec(A completed-tensor_K B),F_ℓ).

Choose open bounded integral models and identify completed tensor products through completion of their ordinary tensor product. Apply the generic-fibre Künneth formula over O_K.

The analytic completed tensor product is owned by the Huber-algebra supplier.

(BM21, Proposition 7.5, p. 57.) Text locators: BM21 line 2373. *Needs:* §10.5; AdicSpacesPartII §R0.3; AdicSpaces Layers 0–1.

### 10.7 Constant-coefficient affinoid vanishing

Fix a complete algebraically closed nonarchimedean field K with nontrivial valuation. For a d-dimensional topologically finite-type K-algebra A, constant torsion coefficients have no cohomology above d+1. For ℓ-power torsion with ℓ prime to the residue characteristic, they have no cohomology above d.

Induct on d using analytic Noether normalization; after a Frobenius twist and reduction in characteristic p, choose f so that A[1/f] is finite étale over a localized Tate algebra. Apply rational Mayer–Vietoris for the large and small tubes; the finite étale corners have the rational-domain bound and the shrinking-tube colimit reduces dimension. For F_ℓ, a nonzero H^(d+1) yields nonzero H^(2d+2) on A completed-tensor A by Künneth. Apply imported Noether normalisation to both factors: the completed tensor is finite over a Tate algebra in 2d variables, so its dimension is at most 2d by the imported Tate dimension and finite-algebra results. The general bound gives vanishing above 2d+1, a contradiction. Use torsion filtrations to pass from prime-order to arbitrary constant coefficients.

Analytic Noether normalisation and Tate dimension are exact imported nodes. The proof derives the needed upper bound dim(A completed-tensor A)≤2d by finiteness; it does not assume an unrecorded dimension equality.

(BM21, Proposition 7.9, pp. 59–60.) Text locators: BM21 line 2489. *Needs:* §10.1; §10.2; §10.3; §10.6; §9.9; AdicSpacesPartII §R0.3; SchemeAndStackFoundations §§4.11–4.12, 4.16; EtaleCohomologyFoundations §§G.1–G.3; ResolutionOfSingularitiesCharacteristicZero §§5.1–5.2; AdicSpacesPartII §R0.9; RigidAnalyticGeometry §1.2; AdicSpacesPartII §R1.9; RigidAnalyticGeometry §1.2; AdicSpacesPartII §§R0.9, R0.13; RigidAnalyticGeometry §§1.1–1.2.

### 10.8 Artin–Grothendieck vanishing for affinoids

The native signatures are `affinoid_artin_grothendieck` and `affinoid_artin_grothendieck_prime_to_residue`, using §10.0's actual finite Tate presentations, torsion predicates and Mathlib sheaf-cohomology groups. They assert vanishing as subsingleton cohomology groups in every natural degree q>d+1, respectively q>d, for every Krull-dimension upper bound d. All field hypotheses occur explicitly in each theorem. In the second signature, ℓ is prime and |ℓ|=1 is exactly the residue-invertibility condition.

For K complete algebraically closed nonarchimedean with nontrivial valuation and A topologically finite type of dimension d, every torsion abelian étale sheaf F on Spec A has H^q=0 for q>d+1. If F is ℓ-power torsion for a prime ℓ different from the residue characteristic, H^q=0 for q>d.

Reduce by filtered-colimit continuity to constructible prime-torsion sheaves. Choose a dense open where the sheaf is lisse; the complementary support has smaller dimension. Use a finite étale cover of degree prime to ℓ making the local system an iterated extension of constants, apply trace, and compactify the cover by Zariski main theorem. Reduce to constant cohomology on finite A-algebras and the lower-dimensional induction.

**Checks.**

- For A=K and d=0, the small étale topos has H⁰(K,F_ℓ)=F_ℓ and H^q=0 for q>0. For A=K×K, H⁰ has two copies; the zero algebra has every group zero.
- In a finite monodromy group S₃, an ℓ=2 Sylow subgroup has index 3 and pullback followed by trace is 3=1 on F₂. For ℓ=3 the Sylow subgroup has index 2, with inverse 2 in F₃ because 2·2=1. A degree divisible by ℓ would instead give trace composite 0 and cannot supply this reduction.
- For the cyclic group C_ℓ acting on an F_ℓ-vector space, (g−1)^ℓ=g^ℓ−1=0. Its finite-dimensional representations have a filtration with trivial simple quotients, supplying the constant-coefficient reduction. For the trivial group the cover degree and trace are both 1.
- For mixed-characteristic K=C₂ and C₃, |2|=1/2 and |3|=1/3 respectively. These coefficients do not satisfy the sharper theorem's |ℓ|=1 hypothesis; a different prime has norm 1.

The all-torsion mixed-characteristic bound is d+1; the bound d requires residue-invertible coefficients.

(BM21, Theorem 7.3 and proof, pp. 56–57, 60–61.) Text locators: BM21 line 2340. *Needs:* §10.7; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; SchemeAndStackFoundations §§4.11–4.12, 4.16; EtaleCohomologyFoundations §§G.1–G.3; ResolutionOfSingularitiesCharacteristicZero §§5.1–5.2; EtaleCohomologyFoundations §§F.0.1, 0.5–0.7.

### Examples

The unit-ideal generators (X,1) in K⟨X⟩ have max(|X|,1)≥1 everywhere but min(|X|,1)=0 at X=0. The rational-domain proof must use max. In dimension zero an affinoid over algebraically closed K is a finite product of artinian local K-algebras, so its étale cohomology agrees with that of finitely many algebraically closed residue fields; there is no higher cohomology (BM21 Lemma 7.8 and Proposition 7.9, pp. 58–60).

### Dependencies

AdicSpacesPartII §§R0.3, R0.9 and R0.19, AdicSpacesPartII §§R1.1, R1.3 and R1.9, Layer 0, Layer 4, Layer 8, Layer 9, EnhancedDerivedSheaves §§0.1–0.4, E1.3–E1.6, EtaleCohomologyFoundations §§F.0.1, 0.5–0.7, EtaleCohomologyFoundations §F.3, AdicEtaleGeometry §A1.0.5 and its finite-ideal approximation contract above; PerfectoidSpaces §§P3.9–P3.12 and P3.20, SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3, §0.5, AdicSpaces Layers 0–1.

## Layer 11: I-complete arc-covers and formal schemes

### 11.1 I-complete arc-covers

Fix a finitely generated ideal I in A. A map R→S of A-algebras is an I-complete arc-cover if every R→V with V an I-adically complete valuation domain of rank at most one lifts through S after a valuation extension V→W, with W also complete of rank at most one. One can require V,W aic without changing the predicate.

Use the image ideal IV and completeness as properties of the actual test ring. An arbitrary lifting valuation can first be replaced by its rank-one interval and then by an aic completion. Check composition and base change and use finite product maps to define covering families.

The finite-ideal topology governs completed and henselian étale hyperdescent and the integral perfectoid and A_inf comparisons (CS24 Theorem 2.2.5 and Lemma 4.2.6).

- The 0-complete predicate is exactly ordinary arc-cover.
- For I⊆J, an I-complete arc-cover is a J-complete arc-cover.
- Reduction modulo I of an I-complete arc-cover is an ordinary arc-cover.
- The predicate is stable under base change and composition.
- Faithful flatness modulo every I^n implies I-complete arc-cover.

**Checks.**

- With I=0, every valuation test is complete and the ordinary arc predicate is recovered.
- With I=A, there are no nontrivial complete valuation tests, so every map satisfies the predicate.
- R→R̂_I satisfies the lifting test by the universal property of completion.
- For R=Z_p and I=(p), R→Q_p fails because the complete test Z_p cannot lift through p-inversion.

Rank restriction remains on V throughout; only the initially chosen W may have unrestricted rank before reduction.

(CS24, §2.2.1 pp. 18–19.) Text locators: CS24 line 692. *Needs:* PrismaticCohomology §2.0; §8.4; §0.3; `IsAdicComplete`.

### 11.2 Products of complete aic valuation tests

Every A-algebra R admits an I-complete arc-cover R→∏_i V_i with each V_i an I-complete aic valuation domain of rank at most one. The product is I-complete. Any quasi-compact open of the spectrum of a product of aic valuations has no nonsplit étale covers; its connected components are the corresponding ultraproduct valuation spectra, possibly of higher rank.

Choose a set of representatives of all bounded complete valuation tests and take their product. For finite I the image in each valuation is principal; complete the factors for the I-adic topology and use finitely many generators to compare quotient products. Use the ultraproduct component calculation and strict henselianity, then the splitting of finite covers of the resulting spectral space.

Fields with I=0 remain legitimate factors. The factors being rank at most one says nothing of that bound for nonprincipal ultraproduct components.

(CS24, Lemmas 2.2.3–2.2.4 pp. 19–20 (principal case); §2.2.1 for finite I.) Text locators: CS24 line 764. *Needs:* §11.1; §3.6; §6.1; §0.3.

### 11.3 Affine comparison with the formal arc-site

For a map of p-complete rings R→S, the associated map Spf S→Spf R is a cover in the supplied p-adic formal arc-site if and only if R→S is a (p)-complete arc-cover as in §11.1. Allowing rank-zero tests in the affine predicate gives the same topology as the formal site's exact-rank-one tests. A rank-zero p-complete valuation is a field in characteristic p; extending it to a characteristic-p rank-one valuation with algebraically closed fraction field tests the missing case, and composition with that field embedding supplies the original lift (BS22 Definition 8.7 and Remark 8.9, pp. 67–68; BS22 line 2594; CS24 §2.2.1, CS24 line 711).

**Checks.**

- For p=0 in R, every valuation test is p-complete, and the affine comparison gives ordinary arc-covering.
- F_p[ε]/ε²→F_p kills ε in every nonzero valuation test and defines a formal cover; the underlying rings still have different structure sections.
- Pseudouniformizer-only arc_p tests require p≠0. They see no characteristic-p test rings, so they cannot replace this formal topology.

*Needs:* §11.1; PrismaticCohomology §2.0 formal arc-site; §0.3 and §8.4 for rank-one aic extensions; SchemeAndStackFoundations §§4.7–4.8 for continuous affine formal maps.

### 11.4 From complete covers to punctured arc_I-covers

For I=(f₁,…,f_r), test arc_I-covers on rank-at-most-one valuation domains with IV a nonzero proper ideal. A map R→S is an arc_I-cover exactly when R→S×R/I×∏_j R[1/f_j] is an arc-cover. Every I-complete arc-cover is an arc_I-cover, by completing the nonzero proper valuation test.

Separate valuation tests into IV=0, IV=V and the nonzero proper case. Use finite generation to pick one nonzero generator controlling the last case and apply rank-one completion.

The arc_I condition has the following API.

- Changing a finite generating tuple for I leaves the property unchanged, because IV is tested as an ideal of V.
- Identity, composition and base change preserve the test class and the corresponding lifting condition.
- The displayed boundary-cover equivalence identifies the condition with ordinary arc-covering after adjoining the special and all principal generic pieces.

**Checks.**

- For I=0 the nonzero-proper test class is empty; every map passes and the boundary factor R/I=R is an identity cover.
- For I=R the proper-ideal test class is empty; the principal opens from any unit-ideal generating tuple cover the target. For (2,3) in Z no one chosen generator is a unit in Z, so the whole family must be retained.
- For (Z_p,(p)), p is nonzero and a nonunit on the identity complete test. The map Z_p→Q_p fails, agreeing with the failed lift in the complete topology.
- For I=(x,y), (0,1) is in D(y) but not D(x), while (1,0) is in D(x) but not D(y); both survive in their union. Replacing the union by D(xy) loses both points.


(MAT22, MAT22 Definition 5.17 and Remark 5.18, p. 20; CS24 proof of Theorem 2.2.5 p. 20.) Text locators: MAT22 line 880. *Needs:* §11.1; §8.4; PrismaticCohomology §2.0.

### 11.5 Completed and punctured étale hyperdescent

For torsion F on Spec A and finite I, each of R↦RΓ(Spec R̂_I,F), R↦RΓ(Spec R^h_I,F), R↦RΓ(Spec R̂_I minus V(I),F) and R↦RΓ(Spec R^h_I minus V(I),F) is a hypercomplete I-complete arc-sheaf. Ordinary R↦RΓ(Spec R,F) is the arc-hypersheaf supplied by PrismaticCohomology §2.0.

For whole completions and henselizations use Gabber to identify values with R/I and reduction of covers modulo I. For punctured spectra apply the arc_I comparison and formal glueing, extending the principal arc_t proof to the finite union of principal opens. Use punctured henselian comparison and uniform nonnegative cohomological degrees for hyperdescent.

Naive completion need not commute with filtered colimits; no such claim is used.

(CS24, Theorem 2.2.5 and Remark 2.2.6, pp. 20–21.) Text locators: CS24 line 800. *Needs:* §11.1; §11.4; §8.8; SchemeAndStackFoundations §2.15; PrismaticCohomology §2.0; EnhancedDerivedSheaves §§E2.6–E2.7; EnhancedDerivedSheaves §E2.6.

### Examples

For I=0, every rank-at-most-one valuation is complete and the complete topology is ordinary arc. For I=A, a separated I-complete nonzero valuation ring does not exist, so every map passes the empty test class. For (A,I)=(Z_p,(p)), Z_p→Q_p fails on the complete test Z_p. A characteristic-p valuation remains a genuine p-complete test because p=0 there (CS24 §2.2.1, pp. 18–19).

**Checks for the supplied the arc-site of p-adic formal schemes.**

- For p=0 rings the affine predicate agrees with ordinary arc-cover.
- Spf F_p→Spf F_p[ε]/ε² is a cover, so the full structure presheaf is not a sheaf.
- The pseudouniformizer-only tests would see no characteristic-p rings and thus do not define this topology.

### Dependencies

AdicSpacesPartII §§R0.3, R0.9 and R0.19, Layer 0, Layer 2, Layer 3, Layer 6, Layer 8, EnhancedDerivedSheaves §§E2.6–E2.8, SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8.

## Layer 12: Perfectoid bases and integral hyperdescent

### 12.2 Completed-generic-fibre consumers

For p-complete perfectoid A, constant Z/p^n cohomology of Spec A[1/p] agrees with that of Spa(A[1/p],A); under the tilting étale-site equivalence it agrees with the corresponding tilt generic-fibre cohomology. Products of complete aic valuation tests make these cohomologies locally degree zero. The arc_p hyperdescent comparison is the interface used in the BS22 Theorem 9.1 and GR24 Theorem 6.1 proofs.

Import the affinoid algebraic/adic étale-cohomology comparison for the perfectoid Tate generic fibre and the perfectoid étale-site tilting theorem. For a product valuation basis, spread each finitely presented finite cover of the punctured spectrum to a finitely presented finite cover of the integral product; that cover splits, as in BS22 line 2807. This kills higher cohomology. Apply the already established arc_p-hyperdescent; the prismatic Frobenius-fixed comparison itself stays in its prismatic owner.

The coefficient is constant Z/p^n here; no blanket equivalence between the scheme and adic étale sites is claimed.

(BS22, Proof of Theorem 9.1, pp. 71–73.) (GR24, Proof of Theorem 6.1, pp. 55–56.) (HUB96, Corollary 3.2.2, p. 174.) Text locators: BS22 line 2727, GR24 line 2753. *Needs:* §9.5; PrismaticCohomology §2.0; §11.2; AdicEtaleGeometry §A1.0.5 and its finite-ideal approximation contract above; PerfectoidSpaces §P3.20; ClassicalAdicEtaleCohomology §§2.5–2.6 and 6.3; PerfectoidSpaces §§P1.15 and P1.27; PerfectoidSpaces §P2.2; PrismaticCohomology §§0.79–0.82 and its perfect-prism supplier contracts; ClassicalAdicEtaleCohomology §§2.5–2.6 perfectoid comparison contract (gap:perfectoid-tate-constant-comparison).

### 12.4 Maps to formal schemes descend on perfectoids

For every p-adic formal scheme T, the set-valued functor X↦Hom(X,T) restricted to Perfd is an arc-sheaf. There is no qcqs assumption on T.

For affine T use structure-sheaf descent and continuity of the ring map. Reduce the topological factorization problem modulo p to perfect schemes. Locally reduce the target to qcqs and approximate it by finite-type F_p-schemes. At finite type arc-covers are h-covers and topological quotient maps; descend the continuous map and glue the affine maps.

This proof uses structure-sheaf descent and formal affine maps; it does not use algebraic-space reconstruction.

(BS22, Second assertion of Proposition 8.10 and its proof, pp. 67–68.) Text locators: BS22 line 2619. *Needs:* PrismaticCohomology §2.0; SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8; SchemeAndStackFoundations §§0.24–0.25; §2.2.

### 12.5 Proper henselian torsion comparison

Let (A,I) be a henselian pair, X proper over Spec A and F a torsion abelian étale sheaf on X. Then RΓ(X,F)≃RΓ(X×_A A/I,F|). For I=(p), this is the reduction used in the proof of CMM21 Theorem 6.3.

Apply enhanced proper base change to Rf_*F at the closed fibre. Use the affine henselian-pair theorem on its cohomology sheaves and the bounded-below spectral-sequence or truncation argument.

The output is this cohomological comparison, not the K-theoretic theorem of CMM21, whose owner is GeneralAlgebraicKTheory.

(CMM21, Proof of Theorem 6.3, p. 51.) Text locators: CMM21 line 2180. *Needs:* SchemeAndStackFoundations §2.15; SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3; EnhancedDerivedSheaves §E1.3; EnhancedDerivedSheaves §§0.3–0.4, E1.4.

### 12.6 Tilting preserves complete arc-covers

Let A→B be integral perfectoid rings, let ϖ∈A satisfy ϖ^p|p, assume both rings ϖ-adically complete, and choose ϖ♭∈A♭ whose sharp is a unit multiple of ϖ. Then A→B is a ϖ-complete arc-cover if and only if A♭→B♭ is a ϖ♭-complete arc-cover.

Use complete aic valuation tests, which are themselves perfectoid. Import tilting equivalence for these valuation rings, its rank preservation and its compatibility with the two completion parameters. Translate the lifting square in both directions.

An arbitrary element ϖ without ϖ^p|p or without compatible sharp data is not covered by this statement.

(CS24, Lemma 2.2.2, p. 19.) Text locators: CS24 line 755. *Needs:* §11.1; PerfectoidSpaces §§P1.15 and P1.27; PerfectoidSpaces §P2.2; PrismaticCohomology §§0.79–0.82 and its perfect-prism supplier contracts; PerfectoidQuotients §§0.4–0.6; §8.4.

### 12.7 Integral perfectoid, tilt and A_inf hyperdescent

For a p-complete arc-hypercover A→B• whose augmentation and all terms are perfectoid Z_p-algebras, the canonical maps A→Rlim B•, A♭→Rlim (B•)♭ and A_inf(A)→Rlim A_inf(B•) are equivalences in the derived category of abelian groups, compatibly with their multiplicative structures. Here A_inf(A)=W(A♭).

For the tilt use tilting of complete covers and arc-descent of perfect F_p-algebras; derived distinguished-ideal completion kills the inverted complement. For A_inf pass through the finite p-power Witt filtration and the derived complete inverse limit. Recover A by the distinguished regular quotient A_inf/(ξ), using derived (p,ξ)-completeness and the imported perfect-prism/regularity interface. Degree-zero-valuedness upgrades the sheaf statement to the stated hyperdescent comparisons.

The use of derived completion is justified by the perfectoid/prism hypotheses; ordinary quotient towers are not asserted to compute completion for arbitrary rings.

(CS24, Lemma 4.2.6 and proof, pp. 41–42.) Text locators: CS24 line 1717. *Needs:* PrismaticCohomology §2.0; §12.6; §7.7; PerfectoidQuotients §§0.4–0.6; PrismaticCohomology §§0.79–0.82 and its perfect-prism supplier contracts; DerivedModuleAlgebra §§1.1–1.9; EnhancedDerivedSheaves §§E4.1–E4.3; EnhancedDerivedSheaves §§E2.6–E2.7; EnhancedDerivedSheaves §E2.6.

### Examples

For an algebraically closed field k of characteristic p, its integral perfectoid structure has tilt k. The reduction Spf k→Spf k[ε]/ε² is a formal arc-cover, but k[ε]/ε² is not perfectoid. Its structure presheaf detects the nonzero ε, explaining the restriction of the acyclicity theorem to Perfd. The completed generic fibre at p is empty in this characteristic-p case (BS22 Definition 8.7 and Proposition 8.10, pp. 67–68).

### Dependencies

ClassicalAdicEtaleCohomology §§2.5–2.6 and 6.3, Layer 11, Layer 2, Layer 7, Layer 8, Layer 9, DerivedModuleAlgebra §§1.1–1.9; EnhancedDerivedSheaves §§E4.1–E4.3, EnhancedDerivedSheaves §§0.1–0.4, E1.3–E1.6, EnhancedDerivedSheaves §§E2.6–E2.8, PerfectoidQuotients §§0.4–0.6, PerfectoidSpaces §§P1.4–P1.8, P1.15, P1.24 and P1.27, AdicEtaleGeometry §A1.0.5 and its finite-ideal approximation contract above; PerfectoidSpaces §§P3.9–P3.12 and P3.20, PrismaticCohomology §§0.79–0.82 and its perfect-prism supplier contracts, SchemeAndStackFoundations §§0.9, 0.11–0.14, 0.24 and 4.7–4.8, SchemeAndStackFoundations §§2.1–2.3, 2.7, 2.14–2.15; EtaleCohomologyFoundations §§0.5–0.7, F.2.1–F.2.6 and F.3.

## Downstream consumers

The exported interfaces are the general finitary arc/excision criterion, unrestricted Milnor and formal glueing, rank-one equivalence detection, differential and perfect-complex arc-descent, arbitrary-parameter completed-generic-fibre descent, affinoid cohomological dimension and complete-arc hyperdescent on integral perfectoids. Further developments of prismatic comparisons, flat-cohomological purity, formal moduli and K-theoretic rigidity can use these general forms. The named supplier roadmaps supply their own stated applications independently; no reverse prerequisite on this roadmap is imposed on them.

## Worked examples

A rank-two valuation can be made explicit using the composite valuation on k((x))((y)), with v(y)=(1,0), v(x)=(0,1) in lexicographically ordered Z². Its middle prime p consists of elements whose first valuation coordinate is positive. Then x∈m∖p, y∈p, y/xⁿ∈p for every n≥0, and y lies in every xⁿV. The split V→V_p×V/p inverts x on its first branch and kills y on the second. It passes rank-one arc tests, fails the identity rank-two v-test, and x-adic completion kills the nonzero y. These are respectively the witnesses in §§0.5–0.6, 2.3, 4.3 and 8.5 (BM21 Example 1.3, Proposition 2.8 and Example 6.8; BM21 lines 100, 406 and 2052).

For the two-generator ideal I=(x,y) of k[x,y], the puncture contains (0,1) and (1,0): it is D(x)∪D(y). The intersection D(x)∩D(y)=D(xy) contains neither point, and choosing D(x) loses (0,1). This finite-ideal witness is used in the formal glueing datum, open/support comparison and the arc_I boundary-cover formula, with every principal open retained (§§8.1, 8.9 and 11.4; MAT22 Definition 5.17 and Remark 5.18, MAT22 line 880).

For the two tube algebras S_r=R₀[U_r]/(πʳU_r−f), the transition U_r↦πU_(r+1) preserves the relation because πʳ·πU_(r+1)=πʳ⁺¹U_(r+1)=f. At r=0 and r=1 the equations are U₀=f and πU₁=f, so increasing r shrinks |f|≤|π|ʳ. In every separated complete rank-one π-test, f belongs to every πʳV and hence equals zero; then U_r=0 since π is nonzero. This fixes the transition and shrinking direction in §10.3 (BM21 Proposition 7.7, BM21 line 2430).

## References

Numbering follows the version explicitly named for each work. Every mathematical statement above is paraphrased; the line locators refer to the legally fetched text recorded in `sources.toml`.

- **BM21.** Bhargav Bhatt and Akhil Mathew, *The arc-topology*. arXiv:1807.04725v4, 14 December 2020; Duke Math. J. 170 (2021). [Legal source](https://arxiv.org/abs/1807.04725v4).
- **BS17.** Bhargav Bhatt and Peter Scholze, *Projectivity of the Witt vector affine Grassmannian*. arXiv:1507.06490v3, 21 February 2017; Invent. Math. 209 (2017). [Legal source](https://arxiv.org/abs/1507.06490v3).
- **BS22.** Bhargav Bhatt and Peter Scholze, *Prisms and prismatic cohomology*. arXiv:1905.08229v4, 12 January 2022; Ann. Math. 196 (2022). [Legal source](https://arxiv.org/abs/1905.08229v4).
- **CS24.** Kęstutis Česnavičius and Peter Scholze, *Purity for flat cohomology*. arXiv:1912.10932v3, 2023; Ann. Math. 199 (2024). [Legal source](https://arxiv.org/abs/1912.10932v3).
- **GR24.** Haoyang Guo and Emanuel Reinecke, *A prismatic approach to crystalline local systems*. arXiv:2203.09490v3; Invent. Math. (2024). [Legal source](https://arxiv.org/abs/2203.09490v3).
- **CMM21.** Dustin Clausen, Akhil Mathew and Matthew Morrow, *K-theory and topological cyclic homology of henselian pairs*. arXiv:1803.10897v2; J. Amer. Math. Soc. 34 (2021). [Legal source](https://arxiv.org/abs/1803.10897v2).
- **MAT22.** Akhil Mathew, *Faithfully flat descent of almost perfect complexes in rigid geometry*. arXiv:1912.10968v3; J. Pure Appl. Algebra 226 (2022), 106938. [Legal source](https://arxiv.org/abs/1912.10968v3).
- **BC22.** Alexis Bouthier and Kęstutis Česnavičius, *Torsors on loop groups and the Hitchin fibration*. arXiv:1908.07480v4, 1 June 2022. [Legal source](https://arxiv.org/abs/1908.07480v4).
- **STACKS.** The Stacks Project Authors, *The Stacks Project: affine analogue of proper base change*. Online §59.82; cached chapter version uses Lemma 82.6 and Theorem 82.7; stable tags 09ZH and 09ZI. [Legal source](https://stacks.math.columbia.edu/tag/09Z8).
- **HUB96.** Roland Huber, *Étale Cohomology of Rigid Analytic Varieties and Adic Spaces*. Aspects of Mathematics E30, Vieweg, 1996. [Legal source](https://doi.org/10.1007/978-3-663-09991-8). HUB96 is uncertified and cited by its printed locators only.
- **BH16.** Bhargav Bhatt, *Algebraization and Tannaka duality*. arXiv:1404.7483v1, 29 April 2014; published Camb. J. Math. 4 (2016). [Legal source](https://arxiv.org/abs/1404.7483v1).
- **HJ14.** Annette Huber and Clemens Jörder, *Differential forms in the h-topology*. Algebraic Geometry 1 (4) (2014), 449–478; published open-access version. [Legal source](https://algebraicgeometry.nl/2014-4/2014-4-020.pdf).
- **HA.** Jacob Lurie, *Higher Algebra*. Online version dated 18 September 2017. [Legal source](https://www.math.ias.edu/~lurie/papers/HA.pdf).
- **RYD10.** David Rydh, *Submersions and effective descent of étale morphisms*. arXiv:0710.2488v3, 5 March 2010; published in Bulletin de la Société Mathématique de France 138 (2010), 181–230. [Legal source](https://arxiv.org/abs/0710.2488v3). Numbering and pages here refer to the preprint.
